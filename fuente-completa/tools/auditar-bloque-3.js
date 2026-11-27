'use strict';

const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

const root = path.resolve(__dirname, '..');
const read = (relative) => fs.readFileSync(path.join(root, relative), 'utf8');

const engine = read('ank-ai/engine.js').trim();
const tests = read('ank-ai/engine.test.js');
const panel = read('decoded/assets/www/ank/ai.js');
const boot = read('decoded/assets/www/ank/boot-ai.js');
const panelMirror = read('update/ank/ai.js');
const css = read('decoded/assets/www/ank/ai.css');
const cssMirror = read('update/ank/ai.css');
const rootPanel = fs.readFileSync(path.join(root, '..', 'ank', 'ai.js'), 'utf8');
const rootCss = fs.readFileSync(path.join(root, '..', 'ank', 'ai.css'), 'utf8');
const publicationPanel = read('.repo-publicacion/ank/ai.js');
const publicationCss = read('.repo-publicacion/ank/ai.css');
const vault = read('decoded/smali/com/foxdebug/system/ApiVault.smali');
const systemSmali = read('decoded/smali/com/foxdebug/system/System.smali');
const systemPlugin = read('decoded/assets/www/plugins/cordova-plugin-system/www/plugin.js');
const manifest = read('decoded/AndroidManifest.xml');
const backupRules = read('decoded/res/xml/ank_backup_rules.xml');
const extractionRules = read('decoded/res/xml/ank_data_extraction_rules.xml');

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
assert.match(panel, /apiProfiles:\s*\[\]/, 'El panel no mantiene una lista de perfiles API.');
assert.match(panel, /function normalizarPerfilApi\(data, index\)/, 'Falta migración/normalización de perfiles API.');
assert.match(panel, /function crearPerfilApi\(\)/, 'Falta crear conexiones API adicionales.');
assert.match(panel, /function eliminarPerfilApi\(\)/, 'Falta eliminar conexiones API.');
assert.match(panel, /function seleccionarPerfilApi\(id\)/, 'Falta cambiar de conexión API.');
assert.match(engine, /function crearPerfil\(/, 'El motor no contiene las funciones reutilizables para crear perfiles.');
assert.match(engine, /function normalizarPerfiles\(/, 'El motor no contiene la migración/normalización del almacén de perfiles.');
assert.match(engine, /function upsertPerfil\(/, 'El motor no contiene la actualización del almacén de perfiles.');
assert.match(engine, /function eliminarPerfil\(/, 'El motor no contiene la eliminación del almacén de perfiles.');
assert.ok(panel.includes('window.ANKAIEngine.normalizarPerfiles(') &&
  panel.includes('window.ANKAIEngine.upsertPerfil(') &&
  panel.includes('window.ANKAIEngine.eliminarPerfil('),
  'La interfaz debe delegar el almacenamiento de perfiles en el motor probado.');
assert.ok(panel.includes("if (q('#ank-ai-key')) q('#ank-ai-key').value = '';") &&
  panel.includes("label.textContent = st.model ? st.activeProfileName + ' · ' + st.model : 'Sin modelo';"),
  'El cambio de perfil debe limpiar el campo secreto y mostrar la conexión activa.');
assert.ok(panel.includes('version: 6') && panel.includes('profiles: profiles.map(function (perfil)'),
  'Los perfiles deben persistirse en el formato v6 con límite de 12 conexiones.');
assert.ok(panel.includes('delete safe.apiKey') && panel.includes('delete safe.customHeaders') &&
  panel.includes('delete safe.customBodyTemplate') && panel.includes('function guardarPerfilSeguro(perfil)'),
  'Las claves, cabeceras personalizadas y plantillas JSON no deben escribirse dentro de provider.json.');
assert.match(panel, /ank\.api\.profile\.v2\./, 'El vault debe usar el esquema de secretos versionado v2.');
assert.match(panel, /function cargarPerfilSeguro\(perfil, rawProfile, necesitaMigracion\)/,
  'Falta la migración de configuraciones privadas antiguas al vault v2.');
assert.match(panel, /function procesarPerfilesEnSerie\(perfiles, procesar\)/,
  'Las lecturas y escrituras del vault deben ejecutarse en serie para evitar inicializaciones simultáneas de Tink.');
assert.ok(panel.includes('return procesarPerfilesEnSerie(profiles, guardarPerfilSeguro)'),
  'Los perfiles deben guardar su bloque privado completo dentro del almacén cifrado.');
assert.ok(panel.includes('customHeaders: String(perfil && perfil.customHeaders ||') &&
  panel.includes('customBodyTemplate: String(perfil && perfil.customBodyTemplate ||'),
  'El registro cifrado debe incluir cabeceras personalizadas y plantillas JSON.');
assert.ok(panel.includes("conSistema('secureSet'") && panel.includes("conSistema('secureGet'") && panel.includes("conSistema('secureRemove'"),
  'El panel debe escribir, leer y borrar secretos mediante el almacén nativo cifrado.');
assert.match(panel, /function eliminarClaveApi\(\)/, 'Falta la eliminación manual de la clave API cifrada.');
assert.ok(panel.includes('data-accion="eliminar-clave-api"'), 'Falta el control de usuario para borrar la clave API.');
assert.match(vault, /EncryptedSharedPreferences;->create/, 'El almacén nativo no cifra las preferencias.');
assert.match(vault, /AES256_GCM/, 'El almacén nativo no configura AES256-GCM.');
assert.match(vault, /AES256_SIV/, 'El almacén nativo no cifra los nombres de las claves.');
assert.ok(manifest.includes('android:fullBackupContent="@xml/ank_backup_rules"') &&
  manifest.includes('android:dataExtractionRules="@xml/ank_data_extraction_rules"'),
  'El manifiesto debe aplicar exclusiones de backup para el almacén Keystore.');
assert.ok(backupRules.includes('domain="sharedpref" path="ank_api_secrets.xml"'),
  'El backup clásico debe excluir las preferencias cifradas ligadas al dispositivo.');
assert.ok(extractionRules.includes('<cloud-backup>') && extractionRules.includes('<device-transfer>') &&
  (extractionRules.match(/domain="sharedpref" path="ank_api_secrets.xml"/g) || []).length === 2,
  'Android 12+ debe excluir el vault tanto del backup cloud como de la transferencia.');
for (const action of ['secureGet', 'securePut', 'secureRemove']) {
  assert.ok(systemPlugin.includes(action), 'Falta puente Cordova para ' + action + '.');
  assert.ok(systemSmali.includes('"' + action + '"'), 'System.smali no enruta ' + action + '.');
}

assert.ok(panel.includes('id="ank-ai-perfil"') && panel.includes('id="ank-ai-perfil-nombre"'),
  'Faltan controles para elegir y nombrar conexiones.');
assert.ok(panel.includes('data-accion="nuevo-perfil-api"') && panel.includes('data-accion="eliminar-perfil-api"'),
  'Faltan acciones visibles para crear y eliminar conexiones.');
assert.ok(panel.includes('window.ANKAIEngine.endpointUrl(st.endpoint'), 'La configuración restaurada debe validar el endpoint antes de declararse lista.');
assert.match(panel, /function probarAsistente\(\)/, 'Falta la prueba de conexión.');
assert.match(panel, /function rutaConfigApi\(\)\s*\{\s*return st\.prefix \+ '\/ank-ai\/provider\.json';?\s*\}/,
  'La configuración API debe guardarse bajo el directorio privado de la aplicación.');
assert.match(panel, /leerTexto\(rutaConfigApi\(\)\)/, 'No se restaura provider.json.');
assert.match(panel, /escribir\(rutaConfigApi\(\), JSON\.stringify\(data\)\)/, 'No se persiste provider.json.');
assert.match(panel, /window\.ANKAIEngine\.chat\(/, 'El chat no utiliza el motor multi-API.');
assert.match(panel, /window\.ANKAIEngine\.normalizarModelo/, 'La interfaz no usa el normalizador de modelos.');
assert.doesNotMatch(panel, /opencode/i, 'El panel activo aún contiene referencias al runtime OpenCode.');
assert.match(boot, /script\.src\s*=\s*['"]\.\/ank\/ai\.js['"]/, 'El arranque debe cargar el panel incluido en el APK.');
assert.doesNotMatch(boot, /new Function|localStorage\.getItem|eval\s*\(/,
  'El arranque no debe ejecutar paneles o estilos locales no verificados.');
assert.ok(boot.includes("localStorage.removeItem(K_AI)") && boot.includes("localStorage.removeItem(K_CSS)"),
  'El arranque debe descartar paquetes web antiguos no firmados.');
for (const [fileName, source] of [
  ['ank/ai.js', rootPanel],
  ['.repo-publicacion/ank/ai.js', publicationPanel],
  ['update/ank/ai.js', panelMirror]
]) {
  assert.doesNotMatch(source, /opencode/i, fileName + ' conserva restos del runtime OpenCode.');
}
assert.equal(panelMirror, panel, 'El panel del actualizador debe coincidir con el incluido en Android.');
assert.equal(cssMirror, css, 'Los estilos del actualizador deben coincidir con los estilos incluidos en Android.');
assert.equal(rootPanel, panel, 'ank/ai.js todavía no coincide con la versión multi-API incluida en Android.');
assert.equal(rootCss, css, 'ank/ai.css todavía no coincide con los estilos incluidos en Android.');
assert.equal(publicationPanel, panel, 'La carpeta .repo-publicacion todavía contiene un panel antiguo.');
assert.equal(publicationCss, css, 'La carpeta .repo-publicacion todavía contiene estilos antiguos.');
assert.equal(fs.readFileSync(path.join(root, 'update/ank/ai.js'), 'utf8'), panel, 'El panel del actualizador está desincronizado.');
assert.ok(css.includes('.ank-ai-profile-card') && css.includes('.ank-ai-profile-select select'),
  'Faltan estilos del administrador de perfiles API.');
assert.ok(css.includes('@media (min-width: 720px)') && css.includes('@media (max-width: 719px)'),
  'Faltan reglas de diseño responsive para escritorio y teléfono.');
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
