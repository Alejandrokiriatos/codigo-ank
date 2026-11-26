'use strict';

const { crearApi } = require('../lib/telegram');
const { leerToken, leerConfig } = require('../lib/estado');
const acc = require('../lib/acciones');

const t = crearApi(leerToken());
const cfg = leerConfig();
const dormir = function (ms) { return new Promise(function (r) { setTimeout(r, ms); }); };

(async function () {
  await t.llamar('unpinChatMessage', { chat_id: cfg.grupo.id }).catch(function () {});
  await dormir(1500);
  await t.llamar('pinChatMessage', { chat_id: cfg.grupo.id, message_id: 16949, disable_notification: true });
  await dormir(1500);

  await acc.setMiDescripcion('Bot de Código ANK. Publica las actualizaciones del editor en el canal y atiende las dudas de la comunidad en el grupo.');
  await acc.setMiDescripcionCorta('Código ANK · editor con IA');

  for (const k of ['canal', 'grupo']) {
    const c = await t.llamar('getChat', { chat_id: cfg[k].id });
    const p = c.pinned_message || {};
    console.log('=== ' + k.toUpperCase() + ' ===');
    console.log('titulo : ' + c.title + '  @' + (c.username || '-'));
    console.log('foto   : ' + (c.photo ? 'si' : 'no'));
    console.log('desc   : ' + (c.description || '(sin descripcion)'));
    console.log('fijado : ' + (p.message_id || '-') + ' -> ' + String(p.text || '').split('\n')[0]);
  }
})().catch(function (e) {
  console.error('Error: ' + e.message);
  process.exit(1);
});
