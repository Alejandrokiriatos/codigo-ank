/* Deja el canal y el grupo 100% dedicados a Código ANK (editor de código).
   Borra la presentación anterior, renombra, cambia foto y descripción, y
   publica los mensajes nuevos fijados. */

'use strict';

const acc = require('../lib/acciones');

const NOMBRE_CANAL = 'Código ANK';
const NOMBRE_GRUPO = 'Código ANK · Comunidad';

const DESC_CANAL = 'Canal oficial de Código ANK, el editor de código para Android con asistente de IA integrado. Acá se publica cada actualización del panel y las novedades de la app.';
const DESC_GRUPO = 'Comunidad de Código ANK. Dudas, errores y sugerencias sobre el editor y su asistente de IA. Antes de preguntar, mirá los mensajes fijados.';

const POST_CANAL = [
  '<b>Código ANK</b>',
  'Editor de código para Android, en español, con asistente de IA integrado que funciona sin internet.',
  '',
  '<b>Qué se publica acá</b>',
  '· Versiones nuevas del editor y del panel del asistente',
  '· Qué cambia en cada actualización, explicado',
  '· Avisos de mantenimiento y problemas conocidos',
  '',
  '<b>Cómo se actualiza</b>',
  'El panel del asistente se actualiza solo desde la app: menú ⋮ → Actualizar ANK. Cuando hay una versión nueva aparece un cartel, se descarga con barra de progreso, se verifica la firma y se aplica al instante. No hace falta reinstalar.',
  'Cuando el cambio toca la parte nativa (permisos, iconos, entorno Linux u OpenCode), lo aviso acá con un APK nuevo.',
  '',
  '<b>Comunidad</b>',
  'Dudas, errores y sugerencias: @Casinoanks'
].join('\n');

const POST_GRUPO = [
  '<b>Código ANK · reglas y cómo pedir ayuda</b>',
  '',
  '<b>Reglas</b>',
  '1. Respeto: sin insultos, discriminación ni acoso.',
  '2. Nada de spam ni publicidad sin permiso.',
  '3. Los errores se reportan con detalle: versión (menú ⋮ → Acerca de), qué hiciste y qué esperabas.',
  '4. No se comparten datos personales de otros miembros.',
  '',
  '<b>Antes de preguntar</b>',
  '· ¿La app está al día? Menú ⋮ → Actualizar ANK.',
  '· ¿Ya está respondido? Mirá los mensajes fijados y buscá en el grupo.',
  '',
  '<b>Anuncios y versiones</b>',
  'Solo en el canal: @Casinoank',
  '',
  'El que no cumpla recibe aviso, después silencio y por último expulsión.'
].join('\n');

/* Mensajes de la presentación anterior (casino), para borrarlos. */
const VIEJOS_CANAL = [2273];
const VIEJOS_GRUPO = [16943, 16945];

async function intentar(fn) {
  try { await fn(); return true; } catch (e) { return false; }
}

(async function () {
  const resumen = { borrados: { canal: [], grupo: [] }, nombres: {}, fotos: {} };

  for (const id of VIEJOS_CANAL) {
    if (await intentar(function () { return acc.api().llamar('deleteMessage', { chat_id: require('../lib/estado').leerConfig().canal.id, message_id: id }); })) {
      resumen.borrados.canal.push(id);
    }
  }
  for (const id of VIEJOS_GRUPO) {
    if (await intentar(function () { return acc.api().llamar('deleteMessage', { chat_id: require('../lib/estado').leerConfig().grupo.id, message_id: id }); })) {
      resumen.borrados.grupo.push(id);
    }
  }

  resumen.nombres.canal = (await acc.setNombre('canal', NOMBRE_CANAL)).nombre;
  resumen.nombres.grupo = (await acc.setNombre('grupo', NOMBRE_GRUPO)).nombre;

  await intentar(function () { return acc.setDescripcion('canal', DESC_CANAL); });
  await intentar(function () { return acc.setDescripcion('grupo', DESC_GRUPO); });

  resumen.fotos.canal = (await acc.setFoto('canal', 'bot/assets/avatar.png')).ok;
  resumen.fotos.grupo = (await acc.setFoto('grupo', 'bot/assets/avatar.png')).ok;

  const canal = await acc.publicar(POST_CANAL);
  await acc.pin('canal', canal.mensaje);

  const grupo = await acc.mensaje('grupo', POST_GRUPO);
  await acc.pin('grupo', grupo.mensaje);

  resumen.publicado = { canal: canal.mensaje, grupo: grupo.mensaje };
  process.stdout.write(JSON.stringify(resumen, null, 2) + '\n');
})().catch(function (e) {
  process.stderr.write('Error: ' + e.message + '\n');
  process.exit(1);
});
