/* Prueba de extremo a extremo del bot contra la API falsa.
   Ejecuta las mismas órdenes que usará el asistente. */

'use strict';

const { execFile } = require('child_process');
const fs = require('fs');
const os = require('os');
const path = require('path');
const { crearApiFalsa } = require('./api-falsa');

const BOT = path.join(__dirname, '..');
const CLI = path.join(BOT, 'cli.js');
const PUERTO = 8799;

const out = [];
let fallos = 0;
function check(nombre, bien, extra) {
  out.push((bien ? 'OK   ' : 'FALLA') + '  ' + nombre + (extra ? '  [' + extra + ']' : ''));
  if (!bien) fallos++;
}

function correr(args, datos) {
  return new Promise(function (ok) {
    execFile(process.execPath, [CLI].concat(args), {
      env: Object.assign({}, process.env, {
        TELEGRAM_API_BASE: 'http://127.0.0.1:' + PUERTO,
        TELEGRAM_BOT_TOKEN: 'PRUEBA',
        ANK_BOT_DATA: datos
      }),
      cwd: BOT
    }, function (err, stdout, stderr) {
      ok({ codigo: err ? err.code : 0, salida: String(stdout || ''), error: String(stderr || '') });
    });
  });
}

(async function () {
  const datos = fs.mkdtempSync(path.join(os.tmpdir(), 'ank-bot-'));
  const api = await crearApiFalsa(PUERTO);
  const pedir = async function (ruta, metodo, cuerpo) {
    const r = await fetch('http://127.0.0.1:' + PUERTO + ruta, {
      method: metodo || 'GET',
      headers: { 'content-type': 'application/json' },
      body: cuerpo ? JSON.stringify(cuerpo) : undefined
    });
    return r.json();
  };
  const ultimo = function (metodo) {
    const todos = api.pedidos.filter(function (p) { return p.metodo === metodo; });
    return todos[todos.length - 1];
  };

  try {
    // 1. token
    let r = await correr(['token', 'PRUEBA'], datos);
    check('guarda el token y verifica con getMe', r.codigo === 0 && /ank_bot/.test(r.salida), r.salida.trim().split('\n')[0]);

    // 2. adoptar con canal, grupo y mensaje privado
    await pedir('/_cola', 'POST', [
      { update_id: 1, my_chat_member: { chat: { id: -100111, title: 'ANK', type: 'channel', username: 'ank_canal' }, new_chat_member: { status: 'administrator' } } },
      { update_id: 2, my_chat_member: { chat: { id: -100222, title: 'Código ANK', type: 'supergroup' }, new_chat_member: { status: 'administrator' } } },
      { update_id: 3, message: { message_id: 5, chat: { id: 777, type: 'private' }, from: { id: 777, first_name: 'Ale' }, text: '/start' } }
    ]);
    r = await correr(['adoptar'], datos);
    check('adoptar encuentra canal y grupo', r.codigo === 0 && /-100111/.test(r.salida) && /-100222/.test(r.salida), r.salida.replace(/\s+/g, ' ').slice(0, 80));
    const cfg = JSON.parse(fs.readFileSync(path.join(datos, 'config.json'), 'utf8'));
    check('guarda los ids en la configuración', cfg.canal.id === -100111 && cfg.grupo.id === -100222);
    check('reconoce al dueño', cfg.dueno === 777, String(cfg.dueno));

    // 3. información del canal y del grupo
    await pedir('/_reiniciar', 'POST');
    r = await correr(['revisar'], datos);
    check('revisar muestra canal y grupo', r.codigo === 0 && /ank_canal/.test(r.salida) && /"soyAdmin": true/.test(r.salida), r.salida.replace(/\s+/g, ' ').slice(0, 90));

    // 4. nombre y descripción
    await pedir('/_reiniciar', 'POST');
    r = await correr(['nombre', 'canal', 'ANK Oficial'], datos);
    const t = ultimo('setChatTitle');
    check('cambia el nombre del canal', r.codigo === 0 && t && t.datos.title === 'ANK Oficial', t && JSON.stringify(t.datos));

    r = await correr(['descripcion', 'grupo', 'Ayuda y novedades'], datos);
    const d = ultimo('setChatDescription');
    check('cambia la descripción del grupo', r.codigo === 0 && d && d.datos.description === 'Ayuda y novedades', d && JSON.stringify(d.datos));

    // 5. permisos y administración
    r = await correr(['permisos', 'grupo', 'solo-admins'], datos);
    const p = ultimo('setChatPermissions');
    check('aplica permisos de solo administradores', r.codigo === 0 && p && p.datos.permissions.can_send_messages === false, p && JSON.stringify(p.datos.permissions));

    r = await correr(['permisos', 'grupo', 'abierto'], datos);
    const p2 = ultimo('setChatPermissions');
    check('vuelve a permitir mensajes', p2 && p2.datos.permissions.can_send_messages === true);

    r = await correr(['admin', 'grupo', '900', 'si', 'Moderador'], datos);
    const a = ultimo('promoteChatMember');
    check('nombra administrador con cargo', r.codigo === 0 && a && a.datos.user_id === 900 && a.datos.can_delete_messages === true, a && JSON.stringify(a.datos).slice(0, 80));

    r = await correr(['restringir', 'grupo', '900', '30'], datos);
    const rr = ultimo('restrictChatMember');
    check('restringe a un usuario', r.codigo === 0 && rr && rr.datos.user_id === 900);

    r = await correr(['liberar', 'grupo', '900'], datos);
    const rl = ultimo('restrictChatMember');
    check('libera al usuario', r.codigo === 0 && rl && rl.datos.permissions.can_send_messages === true);

    // 6. fijar y publicar
    r = await correr(['pin', 'canal', '77'], datos);
    const pin = ultimo('pinChatMessage');
    check('fija un mensaje del canal', r.codigo === 0 && pin && pin.datos.message_id === 77);

    r = await correr(['publicar', 'Nueva versión', 'disponible'], datos);
    const pub = ultimo('sendMessage');
    check('publica en el canal', r.codigo === 0 && pub && pub.datos.chat_id === -100111 && pub.datos.text === 'Nueva versión disponible', pub && JSON.stringify(pub.datos));

    // 6b. anuncio de la última versión publicada del panel
    r = await correr(['anuncio'], datos);
    const an = ultimo('sendMessage');
    check('anuncia la actualización en el canal', r.codigo === 0 && an && /actualización 1\.5\.9/.test(an.datos.text || ''), an && (an.datos.text || '').slice(0, 60));

    // 7. comandos
    r = await correr(['comandos'], datos);
    const cm = ultimo('setMyCommands');
    check('instala los comandos del bot', r.codigo === 0 && cm && cm.datos.commands.length >= 4);

    // 8. pasada: comandos privados y mensajes del grupo
    await pedir('/_reiniciar', 'POST');
    await pedir('/_cola', 'POST', [
      { update_id: 10, message: { message_id: 20, date: Math.floor(Date.now() / 1000), chat: { id: 777, type: 'private' }, from: { id: 777, first_name: 'Ale' }, text: '/estado' } },
      { update_id: 11, message: { message_id: 21, date: Math.floor(Date.now() / 1000), chat: { id: -100222, type: 'supergroup', title: 'Código ANK' }, from: { id: 555, first_name: 'Ana', username: 'ana' }, text: '¿Cómo instalo el APK?' } },
      { update_id: 12, message: { message_id: 22, date: Math.floor(Date.now() / 1000), chat: { id: 777, type: 'private' }, from: { id: 777, first_name: 'Ale' }, text: '/publicar Aviso de prueba' } }
    ]);
    r = await correr(['pasada'], datos);
    const envios = api.pedidos.filter(function (x) { return x.metodo === 'sendMessage'; });
    check('la pasada atiende /estado', envios.some(function (e) { return /Canal:/.test(e.datos.text || ''); }), envios.length + ' envíos');
    check('la pasada atiende /publicar', envios.some(function (e) { return /Aviso de prueba/.test(e.datos.text || ''); }));
    check('la pasada anota el mensaje del grupo', /"pendientes": 1/.test(r.salida.replace(/\s+/g, ' ')), r.salida.replace(/\s+/g, ' ').slice(-70));

    // 9. responder y marcar
    await pedir('/_reiniciar', 'POST');
    r = await correr(['mensaje', 'grupo', 'Hola Ana, probá descargar', 'desde'], datos);
    const m = ultimo('sendMessage');
    check('responde en el grupo', r.codigo === 0 && m && m.datos.chat_id === -100222);

    r = await correr(['pendientes'], datos);
    check('lista pendientes', /ana/.test(r.salida), r.salida.replace(/\s+/g, ' ').slice(0, 60));

    r = await correr(['marcar', '1'], datos);
    check('marca un pendiente como resuelto', /Resuelto #1/.test(r.salida));

    // 10. errores claros
    r = await correr(['nombre', 'canal'], datos);
    check('avisa si falta el nombre', r.codigo !== 0 && /falta el nombre/.test(r.error));
    r = await correr(['inventado'], datos);
    check('avisa comando desconocido', r.codigo !== 0 && /desconocido/.test(r.error));
  } finally {
    api.cerrar();
  }

  console.log(out.join('\n'));
  console.log('\n' + (fallos ? fallos + ' fallas' : 'todo correcto'));
  process.exit(fallos ? 1 : 0);
})();
