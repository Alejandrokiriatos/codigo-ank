/* Publica y fija el mensaje de presentación del canal y las reglas del grupo. */

'use strict';

const acc = require('../lib/acciones');

const CANAL = [
  '<b>Casino ANK</b>',
  '',
  'Este es el canal oficial de Casino ANK. Acá se publican las novedades, los anuncios y el estado del bot.',
  '',
  '<b>Qué vas a encontrar</b>',
  '· Anuncios y actualizaciones del bot',
  '· Juegos nuevos y cambios de la comunidad',
  '· Avisos de mantenimiento y estado del servicio',
  '',
  '<b>Cómo funciona</b>',
  'El bot es gratuito y <b>todo el dinero es ficticio</b>. No se juega con dinero real ni se aceptan apuestas con dinero real: es un espacio de práctica y diversión.',
  '',
  '<b>Reglas</b>',
  '· Respeto: sin insultos, discriminación ni acoso.',
  '· Sin spam, estafas ni enlaces sospechosos.',
  '· No se permite pedir, prestar ni enviar dinero real.',
  '· Las decisiones de la moderación se respetan.',
  '',
  '<b>Comunidad</b>',
  'Dudas, soporte y charla: @Casinoanks'
].join('\n');

const GRUPO = [
  '<b>Casino ANK · reglas del grupo</b>',
  '',
  '1. Respeto ante todo: sin insultos, discriminación ni acoso.',
  '2. Nada de spam, publicidad no autorizada ni enlaces sospechosos.',
  '3. El dinero del bot es ficticio. No se permite pedir, prestar ni enviar dinero real.',
  '4. No se comparten datos personales de otros miembros.',
  '5. Las dudas van al grupo; los anuncios, al canal @Casinoank.',
  '',
  'El que no cumpla recibe aviso, luego silencio y después expulsión.',
  '',
  'Novedades y estado del bot: @Casinoank'
].join('\n');

(async function () {
  const canal = await acc.publicar(CANAL);
  await acc.pin('canal', canal.mensaje);

  const grupo = await acc.mensaje('grupo', GRUPO);
  await acc.pin('grupo', grupo.mensaje);

  process.stdout.write(JSON.stringify({
    canal: { mensaje: canal.mensaje, fijado: true },
    grupo: { mensaje: grupo.mensaje, fijado: true }
  }, null, 2) + '\n');
})().catch(function (e) {
  process.stderr.write('Error: ' + e.message + '\n');
  process.exit(1);
});
