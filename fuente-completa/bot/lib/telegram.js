/* Código ANK — cliente mínimo de la API de Telegram.
   Sin dependencias: usa fetch y FormData nativos de Node. */

'use strict';

const fs = require('fs');
const path = require('path');

const BASE = process.env.TELEGRAM_API_BASE || 'https://api.telegram.org';

function dormir(ms) {
  return new Promise(function (r) { setTimeout(r, ms); });
}

function errorApi(metodo, descripcion, codigo) {
  const e = new Error(metodo + ': ' + (descripcion || 'error desconocido') + (codigo ? ' (' + codigo + ')' : ''));
  e.metodo = metodo;
  e.codigo = codigo;
  return e;
}

function crearApi(token) {
  if (!token) throw new Error('falta el token del bot');

  async function llamar(metodo, datos, intento) {
    const n = intento || 1;
    let resp;
    try {
      resp = await fetch(BASE + '/bot' + token + '/' + metodo, {
        method: 'POST',
        headers: { 'content-type': 'application/json' },
        body: JSON.stringify(datos || {})
      });
    } catch (e) {
      if (n < 3) { await dormir(600 * n); return llamar(metodo, datos, n + 1); }
      throw new Error(metodo + ': sin conexión con Telegram (' + (e && e.message ? e.message : e) + ')');
    }

    let cuerpo;
    try {
      cuerpo = await resp.json();
    } catch (e) {
      throw errorApi(metodo, 'respuesta no válida de Telegram', resp.status);
    }

    if (cuerpo && cuerpo.ok) return cuerpo.result;

    if (cuerpo && cuerpo.error_code === 429 && cuerpo.parameters && cuerpo.parameters.retry_after && n < 3) {
      await dormir((cuerpo.parameters.retry_after + 1) * 1000);
      return llamar(metodo, datos, n + 1);
    }
    if (cuerpo && cuerpo.error_code >= 500 && n < 3) {
      await dormir(700 * n);
      return llamar(metodo, datos, n + 1);
    }
    throw errorApi(metodo, cuerpo && cuerpo.description, cuerpo && cuerpo.error_code);
  }

  /* Sube un archivo (foto del canal, por ejemplo) por multipart. */
  async function llamarConArchivo(metodo, datos, campo, rutaArchivo) {
    const buf = fs.readFileSync(rutaArchivo);
    const forma = new FormData();
    Object.keys(datos || {}).forEach(function (k) {
      const v = datos[k];
      if (v == null) return;
      forma.append(k, typeof v === 'object' ? JSON.stringify(v) : String(v));
    });
    forma.append(campo, new Blob([buf]), path.basename(rutaArchivo));
    const resp = await fetch(BASE + '/bot' + token + '/' + metodo, { method: 'POST', body: forma });
    const cuerpo = await resp.json().catch(function () { return { ok: false, description: 'respuesta no válida' }; });
    if (!cuerpo.ok) throw errorApi(metodo, cuerpo.description, cuerpo.error_code);
    return cuerpo.result;
  }

  /* Sube un archivo enlazado desde un campo JSON (attach://), como pide
     setMyProfilePhoto. */
  async function llamarAdjunto(metodo, datos, campo, rutaArchivo, nombreAdjunto) {
    const buf = fs.readFileSync(rutaArchivo);
    const forma = new FormData();
    Object.keys(datos || {}).forEach(function (k) {
      const v = datos[k];
      if (v == null) return;
      forma.append(k, typeof v === 'object' ? JSON.stringify(v) : String(v));
    });
    forma.append(nombreAdjunto || 'archivo', new Blob([buf]), path.basename(rutaArchivo));
    const resp = await fetch(BASE + '/bot' + token + '/' + metodo, { method: 'POST', body: forma });
    const cuerpo = await resp.json().catch(function () { return { ok: false, description: 'respuesta no válida' }; });
    if (!cuerpo.ok) throw errorApi(metodo, cuerpo.description, cuerpo.error_code);
    return cuerpo.result;
  }

  return {
    llamar: llamar,
    llamarConArchivo: llamarConArchivo,
    llamarAdjunto: llamarAdjunto,
    token: token
  };
}

module.exports = { crearApi: crearApi, BASE: BASE };
