/* API de Telegram simulada para probar el bot sin token ni internet. */

'use strict';

const http = require('http');

const CANAL = { id: -100111, title: 'ANK', type: 'channel', username: 'ank_canal', description: 'Novedades de Código ANK' };
const GRUPO = { id: -100222, title: 'Código ANK', type: 'supergroup', username: 'ank_grupo', description: 'Ayuda y consultas' };

function crearApiFalsa(puerto) {
  const pedidos = [];
  let cola = [];
  let tokenEsperado = 'PRUEBA';

  function responder(res, cuerpo, codigo) {
    const texto = JSON.stringify(cuerpo);
    res.writeHead(codigo || 200, { 'content-type': 'application/json' });
    res.end(texto);
  }

  function ejecutar(metodo, datos) {
    switch (metodo) {
      case 'getMe':
        return { id: 42, is_bot: true, first_name: 'ANK', username: 'ank_bot' };
      case 'getChat':
        return Number(datos.chat_id) === CANAL.id ? CANAL : GRUPO;
      case 'getChatMemberCount':
        return 12;
      case 'getChatAdministrators':
        return [{ user: { id: 42, is_bot: true }, status: 'administrator', can_change_info: true, can_delete_messages: true }];
      case 'setChatTitle':
        if (Number(datos.chat_id) === CANAL.id) CANAL.title = datos.title;
        else GRUPO.title = datos.title;
        return true;
      case 'setChatDescription':
        if (Number(datos.chat_id) === CANAL.id) CANAL.description = datos.description;
        else GRUPO.description = datos.description;
        return true;
      case 'setChatPhoto':
        return true;
      case 'setChatPermissions':
        return true;
      case 'restrictChatMember':
        return true;
      case 'promoteChatMember':
        return true;
      case 'setChatAdministratorCustomTitle':
        return true;
      case 'pinChatMessage':
      case 'unpinChatMessage':
        return true;
      case 'sendMessage':
        return { message_id: 900 + pedidos.length, date: Math.floor(Date.now() / 1000), text: datos.text, chat: { id: datos.chat_id, type: 'channel' } };
      case 'setMyCommands':
        return true;
      case 'getUpdates': {
        const lote = cola;
        cola = [];
        return lote;
      }
      default:
        return true;
    }
  }

  const servidor = http.createServer(function (req, res) {
    if (req.url === '/_pedidos' && req.method === 'GET') return responder(res, pedidos);
    if (req.url === '/_cola' && req.method === 'POST') {
      let cuerpo = '';
      req.on('data', function (c) { cuerpo += c; });
      req.on('end', function () {
        try { cola = JSON.parse(cuerpo || '[]'); } catch (e) { cola = []; }
        responder(res, { ok: true });
      });
      return;
    }
    if (req.url === '/_reiniciar' && req.method === 'POST') {
      pedidos.length = 0;
      cola = [];
      return responder(res, { ok: true });
    }

    const m = req.url.match(/^\/bot([^/]+)\/([a-zA-Z]+)$/);
    if (!m) return responder(res, { ok: false, description: 'ruta desconocida' }, 404);
    if (m[1] !== tokenEsperado) return responder(res, { ok: false, error_code: 401, description: 'Unauthorized' }, 401);

    const metodo = m[2];
    let cuerpo = '';
    req.on('data', function (c) { cuerpo += c; });
    req.on('end', function () {
      let datos = {};
      if ((req.headers['content-type'] || '').indexOf('application/json') !== -1) {
        try { datos = JSON.parse(cuerpo || '{}'); } catch (e) { datos = {}; }
      } else {
        datos = { __multipart: cuerpo.indexOf('setChatPhoto') !== -1 || cuerpo.length > 0, crudo: cuerpo.slice(0, 200) };
      }
      pedidos.push({ metodo: metodo, datos: datos });
      try {
        responder(res, { ok: true, result: ejecutar(metodo, datos) });
      } catch (e) {
        responder(res, { ok: false, error_code: 400, description: e.message });
      }
    });
  });

  return new Promise(function (ok) {
    servidor.listen(puerto, '127.0.0.1', function () {
      ok({
        servidor: servidor,
        pedidos: pedidos,
        puerto: puerto,
        encolar: function (updates) { cola = updates; },
        cerrar: function () { servidor.close(); },
        fijarToken: function (t) { tokenEsperado = t; }
      });
    });
  });
}

module.exports = { crearApiFalsa };

if (require.main === module) {
  crearApiFalsa(Number(process.argv[2] || 8799)).then(function (a) {
    process.stdout.write('API falsa en http://127.0.0.1:' + a.puerto + '\n');
  });
}
