'use strict';

const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const read = (relative) => fs.readFileSync(path.join(root, relative), 'utf8');

const engine = read('ank-ai/engine.js').trim();
const tests = read('ank-ai/engine.test.js');
const panel = read('decoded/assets/www/ank/ai.js');

const begin = '/* ANK_AI_ENGINE_BUNDLE_BEGIN */';
const end = '/* ANK_AI_ENGINE_BUNDLE_END */';
const start = panel.indexOf(begin);
const finish = panel.indexOf(end, start + begin.length);

assert.notEqual(start, -1, 'El panel Android no incluye el marcador inicial del motor API.');
assert.notEqual(finish, -1, 'El panel Android no incluye el marcador final del motor API.');
assert.equal(
  panel.slice(start + begin.length, finish).trim(),
  engine,
  'El motor embebido en Android no coincide con ank-ai/engine.js. Ejecuta node tools/build-ai.js.'
);

assert.match(panel, /function cargarConfigApi\(\)/, 'Falta la restauración de la configuración API.');
assert.match(panel, /function guardarCredencial\(\)/, 'Falta el guardado de la conexión API.');
assert.match(panel, /function probarAsistente\(\)/, 'Falta la prueba de conexión.');
assert.match(panel, /function rutaConfigApi\(\)\s*\{\s*return st\.prefix \+ '\/ank-ai\/provider\.json';?\s*\}/,
  'La configuración API debe guardarse bajo el directorio privado de la aplicación.');
assert.match(panel, /leerTexto\(rutaConfigApi\(\)\)/, 'No se restaura provider.json.');
assert.match(panel, /escribir\(rutaConfigApi\(\), JSON\.stringify\(data\)\)/, 'No se persiste provider.json.');
assert.match(panel, /window\.ANKAIEngine\.chat\(/, 'El chat no utiliza el motor multi-API.');
assert.match(panel, /window\.ANKAIEngine\.normalizarModelo/, 'La interfaz no usa el normalizador de modelos.');
assert.doesNotMatch(panel, /opencode/i, 'El panel activo aún contiene referencias al runtime OpenCode.');
assert.doesNotMatch(panel, /guardar\(['"]ank\.ai\.(?:apiKey|key|token)/i,
  'No deben guardarse claves API en localStorage.');

for (const protocol of [
  'openai-chat-completions',
  'anthropic-messages',
  'gemini-generate-content',
  'custom-json'
]) {
  assert.ok(panel.includes(protocol), 'Falta el protocolo en la interfaz: ' + protocol);
  assert.ok(engine.includes(protocol), 'Falta el protocolo en el motor: ' + protocol);
}

for (const capability of [
  'normaliza endpoint',
  'Anthropic envía',
  'Gemini envía',
  'API personalizada',
  'cancela la petición HTTP nativa',
  'timeout del transporte nativo',
  'conserva identificadores de modelo'
]) {
  assert.ok(tests.toLowerCase().includes(capability.toLowerCase()),
    'Falta una prueba importante: ' + capability);
}

console.log('Auditoría estática del bloque 3 superada.');
console.log('- Motor fuente y bundle Android idénticos.');
console.log('- Chat, configuración, persistencia privada y prueba de conexión integrados.');
console.log('- Cuatro formatos API presentes en motor e interfaz.');
console.log('- Sin referencias OpenCode en el panel activo.');
console.log('- Claves fuera de localStorage.');
