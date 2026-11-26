#!/usr/bin/env node
/* Código ANK — línea de comandos del bot.
   Uso: node bot/cli.js <comando> [argumentos] */

'use strict';

const path = require('path');
const acc = require('./lib/acciones');
const { leerToken, guardarToken, leerConfig, guardarConfig, leerEstado, guardarEstado } = require('./lib/estado');
const { pasada, escuchar, formatearPendientes } = require('./index');

function mostrar(titulo, datos) {
  if (titulo) process.stdout.write(titulo + '\n');
  if (datos !== undefined) process.stdout.write(JSON.stringify(datos, null, 2) + '\n');
}

function ayuda() {
  process.stdout.write([
    'Código ANK · bot del canal y del grupo',
    '',
    'Preparación',
    '  token <token>                 guarda el token del bot',
    '  revisar                       quién soy y cómo están canal y grupo',
    '  adoptar                       detecta canal y grupo y guarda sus ids',
    '  enlazar                       registra el canal enlazado al grupo',
    '  comandos                      instala /estado /pendientes /publicar /responder',
    '',
    'El propio bot',
    '  bot-nombre <texto>',
    '  bot-descripcion <texto>',
    '  bot-descripcion-corta <texto>',
    '  bot-foto <archivo>',
    '  bot-menu                      menú de comandos en el chat privado',
    '',
    'Canal y grupo',
    '  nombre <canal|grupo> <texto>  cambia el nombre',
    '  descripcion <canal|grupo> <texto>',
    '  foto <canal|grupo> <archivo>',
    '  permisos <grupo> <abierto|solo-admins|lectura>',
    '  admin <grupo> <userId> [si|no] ["cargo"]',
    '  restringir <grupo> <userId> [minutos]',
    '  liberar <grupo> <userId>',
    '  pin <canal|grupo> <mensajeId> [quitar]',
    '',
    'Contenido',
    '  publicar <texto>              publica en el canal',
    '  anuncio [version]             avisa en el canal que hay actualización',
    '  mensaje <canal|grupo|id> <texto>',
    '',
    'Trabajo por turnos',
    '  pasada                        lee lo nuevo y muestra pendientes',
    '  pendientes                    lista los mensajes sin responder',
    '  marcar <n>                    da por resuelto un pendiente',
    '  escuchar                      queda atento en tiempo real',
    ''
  ].join('\n'));
}

async function main() {
  const args = process.argv.slice(2);
  const cmd = (args[0] || '').toLowerCase();
  const resto = args.slice(1).filter(function (a) { return a !== undefined; });
  const texto = resto.join(' ').trim();

  if (!cmd || cmd === 'ayuda' || cmd === 'help') return ayuda();

  if (cmd === 'token') {
    if (!resto[0]) throw new Error('uso: token <token de BotFather>');
    guardarToken(resto[0]);
    const r = await acc.api().llamar('getMe').catch(function (e) { throw new Error('el token no responde: ' + e.message); });
    mostrar('Token guardado para @' + (r.username || r.first_name), { id: r.id, username: r.username });
    return;
  }

  if (cmd === 'estado') {
    const cfg = leerConfig();
    const st = leerEstado();
    mostrar('', {
      token: !!leerToken(),
      dueno: cfg.dueno || null,
      canal: cfg.canal,
      grupo: cfg.grupo,
      pendientes: st.pendientes.length,
      offset: st.offset,
      ultimaPasada: st.ultimaPasada || null
    });
    return;
  }

  if (!leerToken()) {
    throw new Error('falta el token del bot: node bot/cli.js token <token>');
  }

  switch (cmd) {
    case 'revisar':
      mostrar('', await acc.revisar());
      return;

    case 'adoptar':
      mostrar('', await acc.adoptar());
      return;

    case 'enlazar':
      mostrar('', await acc.enlazarCanal());
      return;

    case 'comandos':
      mostrar('Comandos instalados', await acc.instalarComandos());
      return;

    case 'bot-nombre':
      mostrar('', await acc.setMiNombre(texto));
      return;

    case 'bot-descripcion':
      mostrar('', await acc.setMiDescripcion(texto));
      return;

    case 'bot-descripcion-corta':
      mostrar('', await acc.setMiDescripcionCorta(texto));
      return;

    case 'bot-foto':
      mostrar('', await acc.setMiFoto(resto[0]));
      return;

    case 'bot-menu':
      mostrar('', await acc.setMenuComandos());
      return;

    case 'nombre':
      mostrar('', await acc.setNombre(resto[0], resto.slice(1).join(' ')));
      return;

    case 'descripcion':
      mostrar('', await acc.setDescripcion(resto[0], resto.slice(1).join(' ')));
      return;

    case 'foto':
      mostrar('', await acc.setFoto(resto[0], resto[1]));
      return;

    case 'permisos':
      mostrar('', await acc.setPermisos(resto[0], resto[1]));
      return;

    case 'admin': {
      const si = resto[2] ? String(resto[2]).toLowerCase() !== 'no' : true;
      mostrar('', await acc.admin(resto[0], resto[1], si, resto[3]));
      return;
    }

    case 'restringir':
      mostrar('', await acc.restringir(resto[0], resto[1], resto[2]));
      return;

    case 'liberar':
      mostrar('', await acc.liberar(resto[0], resto[1]));
      return;

    case 'pin':
      mostrar('', await acc.pin(resto[0], resto[1], String(resto[2] || '').toLowerCase() === 'quitar'));
      return;

    case 'publicar':
      mostrar('', await acc.publicar(texto));
      return;

    case 'anuncio': {
      const fs = require('fs');
      const ruta = path.join(__dirname, '..', 'update', 'version.json');
      let info = {};
      try { info = JSON.parse(fs.readFileSync(ruta, 'utf8')); } catch (e) {
        throw new Error('no encuentro update/version.json: publicá primero la actualización');
      }
      const v = resto[0] || info.web;
      if (!v) throw new Error('falta la versión');
      const escapar = function (s) {
        return String(s || '').replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
      };
      const lineas = [
        '<b>ANK · actualización ' + escapar(v) + '</b>',
        '',
        escapar(info.notas || 'Mejoras del panel del asistente.'),
        '',
        'Se instala sola desde la app: menú ⋮ → Actualizar ANK. No hace falta reinstalar nada.'
      ];
      mostrar('', await acc.publicar(lineas.join('\n')));
      return;
    }

    case 'mensaje':
      mostrar('', await acc.mensaje(resto[0], resto.slice(1).join(' ')));
      return;

    case 'pasada': {
      const r = await pasada({ imprimirPendientes: true });
      mostrar('', r);
      return;
    }

    case 'pendientes': {
      const st = leerEstado();
      process.stdout.write(formatearPendientes(st) + '\n');
      return;
    }

    case 'marcar': {
      const n = Number(resto[0]);
      const st = leerEstado();
      const antes = st.pendientes.length;
      st.pendientes = st.pendientes.filter(function (p) { return p.n !== n; });
      guardarEstado(st);
      process.stdout.write(antes === st.pendientes.length ? 'No existe #' + n + '\n' : 'Resuelto #' + n + '\n');
      return;
    }


    case 'escuchar':
      await escuchar();
      return;

    default:
      throw new Error('comando desconocido: ' + cmd + ' (probá «ayuda»)');
  }
}

main().catch(function (e) {
  process.stderr.write('Error: ' + (e && e.message ? e.message : e) + '\n');
  process.exit(1);
});
