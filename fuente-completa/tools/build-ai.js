'use strict';

/*
 * Genera la copia autocontenida que carga Android y que distribuye el
 * actualizador web. El código mantenible del motor vive en ank-ai/engine.js.
 */
const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');
const sourcePath = path.join(root, 'ank-ai', 'engine.js');
const targetPath = path.join(root, 'decoded', 'assets', 'www', 'ank', 'ai.js');
const begin = '/* ANK_AI_ENGINE_BUNDLE_BEGIN */';
const end = '/* ANK_AI_ENGINE_BUNDLE_END */';
const source = fs.readFileSync(sourcePath, 'utf8').trim();
const current = fs.readFileSync(targetPath, 'utf8');
const block = begin + '\n' + source + '\n' + end;

const pattern = new RegExp(escapeRegExp(begin) + '[\\s\\S]*?' + escapeRegExp(end) + '\\s*', 'g');
const clean = current.replace(pattern, '').replace(/^\\s+/, '');
const expected = block + '\n\n' + clean;

if (process.argv.includes('--check')) {
  if (current === expected) {
    process.stdout.write('Motor integrado y sincronizado.\\n');
    process.exit(0);
  }
  process.stderr.write('ai.js no contiene la última versión de ank-ai/engine.js. Ejecuta: node tools/build-ai.js\\n');
  process.exit(1);
}

fs.writeFileSync(targetPath, expected, 'utf8');
process.stdout.write('Motor ANK integrado en decoded/assets/www/ank/ai.js\\n');

function escapeRegExp(value) {
  return value.replace(/[.*+?^${}()|[\\]\\\\]/g, '\\$&');
}
