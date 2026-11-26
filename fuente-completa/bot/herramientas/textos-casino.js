/* Ajusta las descripciones con acentos correctos (Windows no siempre los pasa
   bien por la línea de comandos). */

'use strict';

const acc = require('../lib/acciones');

const CANAL = 'Casino ANK · canal oficial. Anuncios, novedades y reglas de la comunidad. El bot es gratuito y todo el dinero es ficticio: acá no se juega con dinero real.';
const GRUPO = 'Comunidad de Casino ANK. Dudas, soporte y charla. Dinero ficticio, sin apuestas con dinero real.';

(async function () {
  const a = await acc.setDescripcion('canal', CANAL);
  const b = await acc.setDescripcion('grupo', GRUPO);
  process.stdout.write(JSON.stringify({ canal: a.descripcion, grupo: b.descripcion }, null, 2) + '\n');
})().catch(function (e) {
  process.stderr.write('Error: ' + e.message + '\n');
  process.exit(1);
});
