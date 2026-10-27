#!/usr/bin/env node
/* Código ANK — arma stats.json con el conteo de usuarios.
 *
 * Lo ejecuta GitHub Actions una vez al día. No necesita claves: lee los
 * contadores públicos que incrementa la app y escribe un resumen versionado
 * en el repositorio. Si el servicio no responde, no toca el archivo anterior.
 */

import { readFile, writeFile } from 'node:fs/promises';

const NS = 'codigo-ank';
const BASE = 'https://abacus.jasoncameron.dev/get';
const RUTA = 'stats.json';
const HISTORIAL_MAX = 400;

function fechaUTC(d = new Date()) {
  return d.toISOString().slice(0, 10);
}

function claveDia(fecha) {
  return 'activos-d-' + fecha.replace(/-/g, '');
}

function claveMes(fecha) {
  return 'activos-m-' + fecha.slice(0, 7).replace(/-/g, '');
}

async function leerClave(clave) {
  let ultimo = null;
  for (let i = 0; i < 3; i++) {
    try {
      const r = await fetch(`${BASE}/${NS}/${clave}?t=${Date.now()}`, {
        headers: { 'User-Agent': 'codigo-ank-stats' }
      });
      if (r.status === 404) return 0;
      if (!r.ok) throw new Error('HTTP ' + r.status);
      const d = await r.json();
      const v = Number(d && d.value);
      return isFinite(v) ? v : 0;
    } catch (e) {
      ultimo = e;
      await new Promise((res) => setTimeout(res, 1500));
    }
  }
  throw ultimo || new Error('sin respuesta');
}

async function leerAnterior() {
  try {
    const txt = await readFile(RUTA, 'utf8');
    const d = JSON.parse(txt);
    return d && typeof d === 'object' ? d : {};
  } catch (e) {
    return {};
  }
}

async function main() {
  const hoy = fechaUTC();
  const ayer = fechaUTC(new Date(Date.now() - 24 * 60 * 60 * 1000));
  const mes = hoy.slice(0, 7);

  let instalaciones;
  let activosHoy;
  let activosMes;
  try {
    instalaciones = await leerClave('instalaciones');
    activosHoy = await leerClave(claveDia(hoy));
    if (!activosHoy) activosHoy = await leerClave(claveDia(ayer));
    activosMes = await leerClave(claveMes(hoy));
  } catch (e) {
    console.error('No se pudieron leer los contadores:', e.message);
    console.error('Se conserva stats.json sin cambios.');
    return;
  }

  const anterior = await leerAnterior();
  const historial = Array.isArray(anterior.historial) ? anterior.historial.slice() : [];

  const fila = { fecha: hoy, activos: activosHoy, instalaciones: instalaciones };
  const i = historial.findIndex((x) => x && x.fecha === hoy);
  if (i === -1) historial.push(fila);
  else historial[i] = fila;
  historial.sort((a, b) => String(a.fecha).localeCompare(String(b.fecha)));

  const ultimos = historial.slice(-7);
  const promedio7 = ultimos.length
    ? Math.round(ultimos.reduce((s, x) => s + (Number(x.activos) || 0), 0) / ultimos.length)
    : 0;

  const salida = {
    actualizado: new Date().toISOString().replace(/\.\d{3}Z$/, 'Z'),
    proyecto: 'Código ANK',
    repo: 'Alejandrokiriatos/codigo-ank',
    instalaciones,
    activosHoy,
    activosMes,
    mes,
    promedio7,
    diasConDatos: historial.length,
    historial: historial.slice(-HISTORIAL_MAX),
    notas:
      'Instalaciones = equipos que abrieron la app al menos una vez. ' +
      'Activos = avisos por día y por mes (un aviso por equipo y período). ' +
      'Sin datos personales; el equipo puede desactivarlo en Entorno → Usuarios.'
  };

  await writeFile(RUTA, JSON.stringify(salida, null, 2) + '\n', 'utf8');
  console.log('stats.json actualizado:', {
    instalaciones,
    activosHoy,
    activosMes,
    promedio7
  });
}

main().catch((e) => {
  console.error('Error inesperado:', e);
  process.exitCode = 1;
});
