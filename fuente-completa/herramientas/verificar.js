'use strict';

const { crearApi } = require('../lib/telegram');
const { leerToken, leerConfig } = require('../lib/estado');

const t = crearApi(leerToken());
const cfg = leerConfig();

(async function () {
  for (const k of ['canal', 'grupo']) {
    const c = await t.llamar('getChat', { chat_id: cfg[k].id });
    console.log(k.toUpperCase() + ': titulo="' + c.title + '" | @' + (c.username || '-') + ' | foto:' + !!c.photo);
    console.log('   descripcion: ' + (c.description || '(sin descripcion)'));
  }

  const r = await t.llamar('setChatUsername', { chat_id: cfg.canal.id, username: 'Casinoank' })
    .then(function (x) { return 'OK ' + JSON.stringify(x); })
    .catch(function (e) { return 'ERROR: ' + e.message; });
  console.log('setChatUsername -> ' + r);
})().catch(function (e) {
  console.log('error: ' + e.message);
});
