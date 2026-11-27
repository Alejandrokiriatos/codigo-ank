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
assert.match(panel, /profileBusy:\s*false/, 'Falta el estado de transacción de conexiones.');
assert.ok(panel.includes('select.disabled = busy') && panel.includes('name.disabled = busy') &&
  panel.includes('if (field) field.disabled = busy'),
  'Los controles de configuración deben bloquearse durante una escritura del vault.');
for (const fnName of ['seleccionarPerfilApi', 'crearPerfilApi', 'eliminarPerfilApi']) {
  const start = panel.indexOf('function ' + fnName + '(');
  const next = panel.indexOf('\n  function ', start + 1);
  const body = panel.slice(start, next < 0 ? panel.length : next);
  const clearKey = body.indexOf("q('#ank-ai-key').value = '';");
  const repaint = body.indexOf('pintar();', clearKey);
  const persist = body.indexOf('persistirPerfilesApi()', repaint);
  assert.ok(clearKey >= 0 && repaint > clearKey && persist > repaint,
    fnName + ' debe limpiar la clave y actualizar la vista antes de iniciar la escritura asíncrona.');
  assert.ok(body.includes('st.profileBusy = true') && body.includes('st.profileBusy = false'),
    fnName + ' debe bloquear y liberar los controles durante la transacción.');
}
assert.ok(panel.includes("if (st.profileBusy) { aviso('Espera a que termine el guardado de la conexión API.'); return; }"),
  'No se deben iniciar mensajes mientras la configuración del proveedor está cambiando.');
assert.ok(panel.includes('version: 7') && panel.includes('profiles: profiles.map(function (perfil)'),
  'Los perfiles deben persistirse en el formato v7 con límite de 12 conexiones.');
assert.ok(panel.includes('delete safe.apiKey') && panel.includes('delete safe.customAuthPrefix') &&
  panel.includes('delete safe.customHeaders') && panel.includes('delete safe.customBodyTemplate') &&
  panel.includes('function guardarPerfilSeguro(perfil)'),
  'Las claves, prefijos de autenticación, cabeceras y plantillas JSON no deben escribirse dentro de provider.json.');
assert.ok(panel.includes('customAuthPrefix: String(perfil && perfil.customAuthPrefix == null ? \'Bearer\' : perfil.customAuthPrefix)') &&
  panel.includes('Object.prototype.hasOwnProperty.call(rawProfile, \'customAuthPrefix\')'),
  'El prefijo de autenticación debe cifrarse y migrarse de configuraciones anteriores.');

assert.match(panel, /ank\.api\.profile\.v2\./, 'El vault debe usar el esquema de secretos versionado v2.');
assert.match(panel, /function cargarPerfilSeguro\(perfil, rawProfile, necesitaMigracion\)/,
  'Falta la migración de configuraciones privadas antiguas al vault v2.');
assert.match(panel, /function procesarPerfilesEnSerie\(perfiles, procesar\)/,
  'Las lecturas y escrituras del vault deben ejecutarse en serie para evitar inicializaciones simultáneas de Tink.');
assert.match(panel, /var apiVaultQueue = Promise\.resolve\(\)/,
  'Las transacciones del vault deben serializarse también entre varios guardados de perfiles.');
assert.match(panel, /function encolarOperacionVault\(operacion\)/,
  'Falta la cola transaccional del almacén de perfiles.');
assert.match(panel, /function guardarPerfilSeguroNoEncolado\(perfil\)/,
  'Falta la escritura interna protegida del vault.');
assert.match(panel, /function guardarPerfilSeguro\(perfil\)\s*\{\s*return encolarOperacionVault/,
  'Toda escritura individual del vault debe pasar por la cola transaccional.');
assert.ok(panel.includes('procesarPerfilesEnSerie(profiles, guardarPerfilSeguroNoEncolado)'),
  'Los lotes de perfiles deben reutilizar la cola sin anidarla.');
assert.match(vault, /SharedPreferences\$Editor;->commit\(\)Z/,
  'El almacén cifrado debe confirmar la persistencia en disco antes de completar la operación.');
assert.doesNotMatch(vault, /SharedPreferences\$Editor;->apply\(\)V/,
  'El almacén cifrado no debe devolver éxito antes de confirmar la escritura.');
assert.ok(panel.includes('return procesarPerfilesEnSerie(profiles, guardarPerfilSeguroNoEncolado)'),
  'Los perfiles deben guardar su bloque privado completo dentro del almacén cifrado dentro de la cola externa, sin anidar operaciones que puedan bloquearse.');
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
assert.ok(backupRules.includes('domain="file" path="ank-ai/backups/"'),
  'El backup clásico no debe copiar los snapshots locales de código.');
assert.ok(extractionRules.includes('domain="file" path="ank-ai/backups/"'),
  'Android 12+ no debe transferir snapshots locales a otro dispositivo.');
assert.ok(extractionRules.includes('<cloud-backup>') && extractionRules.includes('<device-transfer>') &&
  (extractionRules.match(/domain="sharedpref" path="ank_api_secrets.xml"/g) || []).length === 2,
  'Android 12+ debe excluir el vault tanto del backup cloud como de la transferencia.');
for (const action of ['secureGet', 'securePut', 'secureRemove']) {
  assert.ok(systemPlugin.includes(action), 'Falta puente Cordova para ' + action + '.');
  assert.ok(systemSmali.includes('"' + action + '"'), 'System.smali no enruta ' + action + '.');
}

assert.match(systemPlugin,
  /secureGet:\s*function\s*\(key,\s*success,\s*error\)\s*\{\s*cordova\.exec\(success,\s*error,\s*'System',\s*'secureGet',\s*\[key\]\);/s,
  'secureGet debe enviar la clave al servicio nativo System sin alterar argumentos.');
assert.match(systemPlugin,
  /secureSet:\s*function\s*\(key,\s*value,\s*success,\s*error\)\s*\{\s*cordova\.exec\(success,\s*error,\s*'System',\s*'securePut',\s*\[key,\s*value\]\);/s,
  'secureSet debe traducirse exactamente a securePut con clave y valor.');
assert.match(systemPlugin,
  /secureRemove:\s*function\s*\(key,\s*success,\s*error\)\s*\{\s*cordova\.exec\(success,\s*error,\s*'System',\s*'secureRemove',\s*\[key\]\);/s,
  'secureRemove debe enviar únicamente la clave al servicio nativo.');
assert.match(vault, /const-string v3, "ank_api_secrets"/,
  'El nombre del archivo de preferencias cifradas cambió: revisar las reglas de backup.');
assert.ok(backupRules.includes('path="ank_api_secrets.xml"') &&
  (extractionRules.match(/path="ank_api_secrets\.xml"/g) || []).length === 2,
  'Las reglas de backup deben excluir exactamente el archivo de preferencias que crea ApiVault.');
assert.match(vault, /const-string v1, "ank_api_master_key_v1"/,
  'No se encuentra el alias versionado de Android Keystore; revisar migraciones de claves.');

/* Contrato nativo completo: no basta con que aparezcan los nombres de las acciones. */
assert.ok(systemSmali.includes(':cond_ank_secure_dispatch') &&
  systemSmali.includes('ApiVault;->execute(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z') &&
  systemSmali.includes('if-eqz v0, :cond_ank_secure_fallback') &&
  systemSmali.includes('return v11'),
  'System.smali debe delegar las acciones al vault y detener el dispatcher heredado cuando se procesan.');

for (const [method, savedMessage] of [
  ['put', 'Could not persist encrypted API secret'],
  ['remove', 'Could not remove encrypted API secret']
]) {
  const methodStart = vault.indexOf('.method public static ' + method + '(');
  const methodEnd = vault.indexOf('.end method', methodStart);
  const body = vault.slice(methodStart, methodEnd);
  assert.ok(body.includes('SharedPreferences$Editor;->commit()Z') &&
    body.includes('if-nez v1') && body.includes(savedMessage),
    method + ' debe confirmar commit y devolver error si falla.');
}
for (const [action, success, error] of [
  ['secureGet', 'Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V', 'Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V'],
  ['securePut', 'Lorg/apache/cordova/CallbackContext;->success()V', 'Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V'],
  ['secureRemove', 'Lorg/apache/cordova/CallbackContext;->success()V', 'Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V']
]) {
  const start = vault.indexOf('const-string v0, "' + action + '"');
  assert.ok(start >= 0, 'ApiVault.execute no reconoce ' + action + '.');
  const next = vault.indexOf('\n    :cond_secure_', start + 1);
  const block = vault.slice(start, next < 0 ? vault.length : next);
  assert.ok(block.includes(success), action + ' debe enviar callback de éxito tras completar la operación.');
  assert.ok(block.includes(error), action + ' debe propagar los errores al callback Cordova.');
}
const getStart = vault.indexOf('.method public static get(');
const getEnd = vault.indexOf('.end method', getStart);
assert.ok(vault.slice(getStart, getEnd).includes('SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;'),
  'get debe leer la cadena del almacén cifrado.');
assert.ok(!vault.includes('Log;->d(') && !vault.includes('Log;->i(') &&
  !vault.includes('Log;->w(') && !vault.includes('Log;->e('),
  'ApiVault no debe escribir datos del vault en Logcat.');

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
assert.match(panel, /window\.ANKAIEngine\.chat\(/, 'El transporte API del chat debe seguir disponible.');
assert.match(panel, /window\.ANKAIEngine\.runAgent\(/, 'El chat de protocolos compatibles debe utilizar el orquestador de herramientas.');
assert.match(engine, /function runAgent\(options\)/, 'El motor no contiene el orquestador multi-ronda.');
assert.match(engine, /function evaluarPermisoHerramienta\(/, 'Falta la política de autorización del motor.');
assert.match(panel, /function ejecutarHerramientaProyecto\(call\)/, 'Faltan ejecutores de archivos confinados al proyecto.');
assert.match(panel, /function permisoHerramientaPanel\(info\)/, 'Falta la solicitud explícita de permisos.');
assert.match(panel, /function confirmarHerramientaPanel\(info\)/, 'Falta la confirmación por operación sensible.');
assert.match(panel, /function backupAntesDeHerramienta\(call\)/, 'Falta el respaldo previo a las mutaciones.');
assert.match(panel, /tools\.filter\(function \(tool\) \{ return tool\.name !== 'terminal\.run'; \}\)/,
  'La terminal no debe exponerse como herramienta hasta contar con cancelación fiable.');
assert.match(panel, /function sanitizarContenidoHerramienta\(value\)/, 'Las lecturas del proyecto deben ocultar claves y tokens.');
assert.match(panel, /Math\.min\(24576, args\.maxBytes \|\| 24576\)/, 'La lectura del agente debe quedar por debajo del límite de resultado del motor.');
assert.match(panel, /current\.exists && !args\.expectedDigest/, 'El overwrite de un archivo existente debe exigir el digest de su última lectura.');
assert.match(panel, /if \(!args\.expectedDigest\) \{\s*throw new Error\('Léelo primero/, 'El borrado debe exigir el digest de su última lectura.');
assert.match(panel, /function restaurarSnapshotHerramienta\(id\)/, 'Falta restaurar desde copias locales.');
assert.ok(panel.includes('data-view="seguridad"') && panel.includes('data-tab="seguridad"'),
  'Falta la pestaña dedicada de seguridad y actividad.');
assert.ok(panel.includes('ank.ai.tool.activity.v1') && panel.includes('function registrarActividadHerramienta(event)'),
  'El historial debe persistir únicamente metadatos de las operaciones.');
assert.ok(panel.includes('function pintarSeguridad()') && panel.includes('clear-tool-activity'),
  'Falta la vista y limpieza del historial de herramientas.');
assert.ok(panel.includes('tool-approval-once') && panel.includes('tool-approval-run') &&
  panel.includes('tool-approval-confirm') && panel.includes('tool-approval-deny'),
  'El diálogo debe distinguir permiso puntual, permiso durante el trabajo, confirmación y denegación.');
const permissionStart = panel.indexOf('function permisoHerramientaPanel(info)');
const permissionEnd = panel.indexOf('function confirmarHerramientaPanel(info)', permissionStart);
const permissionBody = panel.slice(permissionStart, permissionEnd);
assert.ok(permissionBody.includes("mostrarSolicitudHerramienta('permission'") &&
  !permissionBody.includes('window.confirm'),
  'Los permisos de herramientas deben utilizar el diálogo integrado, no window.confirm.');
const confirmationStart = panel.indexOf('function confirmarHerramientaPanel(info)');
const confirmationEnd = panel.indexOf('function herramientasDisponiblesPanel()', confirmationStart);
const confirmationBody = panel.slice(confirmationStart, confirmationEnd);
assert.ok(confirmationBody.includes("mostrarSolicitudHerramienta(") &&
  !confirmationBody.includes('window.confirm'),
  'Las operaciones sensibles deben utilizar el diálogo integrado.');
assert.ok(panel.includes('remember: true') && panel.includes('remember: false'),
  'La UI debe limitar la concesión recordada a la ejecución actual.');
assert.ok(panel.includes('registrarActividadHerramienta(event);'),
  'Los eventos del motor deben alimentar el historial visible.');
assert.ok(css.includes('.ank-ai-security') && css.includes('.ank-ai-tool-overlay') &&
  css.includes('.ank-ai-tool-dialog'),
  'Faltan los estilos responsive de seguridad y confirmación.');
assert.match(panel, /function rutaRaizBackupsHerramienta\(\)/, 'Falta el directorio interno de copias de seguridad.');
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
  'conserva identificadores de modelo',
  'Bloque 6 · ejecuta rondas OpenAI',
  'deniega por defecto',
  'secuencia permiso, confirmación, backup y ejecución'
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
