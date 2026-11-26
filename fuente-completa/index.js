/* Código ANK — atención del canal y del grupo.
   Dos modos:
     pasada()   lee lo pendiente una vez y sale (trabajo «por turnos»)
     escuchar() queda escuchando y responde en el momento
   Solo obedece al dueño configurado. */

'use strict';

const { leerConfig, guardarConfig, leerEstado, guardarEstado } = require('./lib/estado');
const acc = require('./lib/acciones');

const MAX_PENDIENTES = 200;

function recortar(texto, n) {
  const t = String(texto || '').replace(/\s+/g, ' ').trim();
  return t.length > n ? t.slice(0, n - 1) + '…' : t;
}

function esComando(texto) {
  return /^\/[a-zA-Z_]+/.test(String(texto || '').trim());
}

function partesComando(texto) {
  const limpio = String(texto || '').trim();
  const m = limpio.match(/^\/([a-zA-Z_]+)(?:@\w+)?\s*([\s\S]*)$/);
  if (!m) return { nombre: '', resto: '' };
  return { nombre: m[1].toLowerCase(), resto: m[2] || '' };
}

function anotarPendiente(estado, chat, msg) {
  if (!msg || !msg.text) return false;
  if (msg.from && msg.from.is_bot) return false;
  const clave = chat.id + ':' + msg.message_id;
  if (estado.vistos.indexOf(clave) !== -1) return false;
  estado.vistos.push(clave);
  if (estado.vistos.length > 500) estado.vistos = estado.vistos.slice(-400);
  const n = (estado.pendientes.reduce(function (a, p) { return Math.max(a, p.n); }, 0) || 0) + 1;
  estado.pendientes.push({
    n: n,
    chat: chat.id,
    chatTitulo: chat.title || chat.username || 'privado',
    autor: (msg.from && (msg.from.username ? '@' + msg.from.username : msg.from.first_name)) || 'desconocido',
    autorId: msg.from ? msg.from.id : 0,
    mensajeId: msg.message_id,
    texto: String(msg.text).slice(0, 2000),
    fecha: new Date((msg.date || Date.now() / 1000) * 1000).toISOString()
  });
  if (estado.pendientes.length > MAX_PENDIENTES) estado.pendientes = estado.pendientes.slice(-MAX_PENDIENTES);
  return true;
}

function formatearPendientes(estado) {
  if (!estado.pendientes.length) return 'No hay mensajes pendientes.';
  return estado.pendientes.map(function (p) {
    return '#' + p.n + ' · ' + p.chatTitulo + ' · ' + p.autor + ' (' + p.mensajeId + ')\n' + recortar(p.texto, 300);
  }).join('\n\n');
}

async function responderComando(nombre, resto, cfg, estado) {
  const t = acc.api();
  const dueno = cfg.dueno;

  if (nombre === 'ayuda' || nombre === 'start') {
    return [
      'Puedo manejar el canal y el grupo.',
      '',
      '/estado — cómo están canal y grupo',
      '/pendientes — mensajes sin responder',
      '/publicar <texto> — publica en el canal',
      '/responder <n> <texto> — responde al pendiente n',
      '/marcar <n> — da por resuelto un pendiente'
    ].join('\n');
  }

  if (nombre === 'estado') {
    const r = await acc.revisar();
    const linea = function (x) {
      if (!x || x.error) return 'sin datos' + (x && x.error ? ' (' + x.error + ')' : '');
      return (x.titulo || 's/t') + ' · ' + x.tipo + ' · ' + (x.miembros || '?') + ' miembros · ' +
        (x.soyAdmin ? 'soy admin' : 'NO soy admin');
    };
    return 'Canal: ' + linea(r.canal) + '\nGrupo: ' + linea(r.grupo) +
      '\nPendientes: ' + estado.pendientes.length;
  }

  if (nombre === 'pendientes') {
    return formatearPendientes(estado);
  }

  if (nombre === 'publicar') {
    if (!resto.trim()) return 'Uso: /publicar <texto>';
    const r = await acc.publicar(resto);
    return 'Publicado en el canal (mensaje ' + r.mensaje + ').';
  }

  if (nombre === 'responder') {
    const m = resto.match(/^(\d+)\s+([\s\S]+)$/);
    if (!m) return 'Uso: /responder <n> <texto>';
    const p = estado.pendientes.find(function (x) { return x.n === Number(m[1]); });
    if (!p) return 'No encuentro el pendiente #' + m[1] + '.';
    await acc.mensaje(String(p.chat), m[2], p.mensajeId);
    estado.pendientes = estado.pendientes.filter(function (x) { return x.n !== p.n; });
    return 'Respondido a ' + p.autor + '.';
  }

  if (nombre === 'marcar') {
    const n = Number(resto.trim());
    const antes = estado.pendientes.length;
    estado.pendientes = estado.pendientes.filter(function (x) { return x.n !== n; });
    return estado.pendientes.length < antes ? 'Pendiente #' + n + ' dado por resuelto.' : 'No existe el pendiente #' + n + '.';
  }

  return 'No conozco ese comando. Probá /ayuda.';
}

async function procesar(updates, cfg, estado, opciones) {
  const registro = { comandos: [], mensajes: 0, errores: [] };
  const t = acc.api();

  for (const u of updates) {
    estado.offset = Math.max(estado.offset, (u.update_id || 0) + 1);

    const msg = u.message || u.channel_post || u.edited_message;
    const delBot = msg && msg.from && msg.from.is_bot && !u.channel_post;

    if (msg && msg.chat && msg.chat.type === 'private' && !delBot) {
      const { nombre, resto } = partesComando(msg.text);
      if (nombre) {
        if (cfg.dueno && msg.from.id !== cfg.dueno) {
          await t.llamar('sendMessage', { chat_id: msg.chat.id, text: 'Este bot es privado.' }).catch(function () {});
          continue;
        }
        if (!cfg.dueno) {
          cfg.dueno = msg.from.id;
          guardarConfig(cfg);
        }
        try {
          const texto = await responderComando(nombre, resto, cfg, estado);
          registro.comandos.push({ comando: nombre, respuesta: recortar(texto, 200) });
          await t.llamar('sendMessage', { chat_id: msg.chat.id, text: texto });
        } catch (e) {
          registro.errores.push(nombre + ': ' + e.message);
          await t.llamar('sendMessage', { chat_id: msg.chat.id, text: 'Error: ' + e.message }).catch(function () {});
        }
      }
      continue;
    }

    if (msg && msg.chat && (msg.chat.type === 'group' || msg.chat.type === 'supergroup') && !delBot) {
      if (anotarPendiente(estado, msg.chat, msg)) registro.mensajes++;
    }
  }

  guardarEstado(estado);
  registro.pendientes = estado.pendientes.length;
  if (opciones && opciones.imprimirPendientes) registro.lista = estado.pendientes;
  return registro;
}

/* Una pasada: lee lo nuevo, atiende comandos y anota mensajes del grupo. */
async function pasada(opciones) {
  const cfg = leerConfig();
  const estado = leerEstado();
  const t = acc.api();
  const updates = await t.llamar('getUpdates', {
    offset: estado.offset || 0,
    timeout: 0,
    limit: 100,
    allowed_updates: ['message', 'channel_post', 'my_chat_member']
  });
  const registro = await procesar(updates, cfg, estado, opciones);
  registro.leidos = updates.length;
  estado.ultimaPasada = new Date().toISOString();
  guardarEstado(estado);
  return registro;
}

/* Queda escuchando: útil con la PC encendida. */
async function escuchar(cicloMs) {
  const cfg = leerConfig();
  let estado = leerEstado();
  const t = acc.api();
  const espera = cicloMs || 25000;
  process.stdout.write('Bot escuchando. Ctrl+C para cortar.\n');

  for (;;) {
    let updates = [];
    try {
      updates = await t.llamar('getUpdates', {
        offset: estado.offset || 0,
        timeout: 25,
        limit: 50,
        allowed_updates: ['message', 'channel_post', 'my_chat_member']
      });
    } catch (e) {
      process.stderr.write('error de red: ' + e.message + '\n');
      await new Promise(function (r) { setTimeout(r, 4000); });
      continue;
    }
    if (updates.length) {
      estado = leerEstado();
      const r = await procesar(updates, cfg, estado, {});
      process.stdout.write(JSON.stringify({ cuando: new Date().toISOString(), leidos: updates.length, comandos: r.comandos.length, mensajes: r.mensajes, pendientes: r.pendientes }) + '\n');
    }
    await new Promise(function (r) { setTimeout(r, espera); });
  }
}

module.exports = { pasada, escuchar, procesar, formatearPendientes, partesComando };
