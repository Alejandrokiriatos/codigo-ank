# Bloque 2 · Retirada de OpenCode

**Rama:** `ank/block-2-no-opencode`  
**Fecha:** 26 de noviembre de 2026  
**Estado:** implementación de código completada y CI superada; cierre de distribución pendiente de prueba física y recuperación de recursos nativos.

## Objetivo

Eliminar del asistente de Código ANK la dependencia del ejecutable OpenCode y su sistema de autenticación, conservando el terminal Linux de la app como módulo independiente. El nuevo motor debe conectarse directamente a una API, sin necesitar el proceso OpenCode ni sus archivos de configuración.

## Cambios efectuados

### 1. Retirada del runtime OpenCode

Se sustituyó el flujo activo del panel en `decoded/assets/www/ank/ai.js`. Se retiraron las operaciones que comprobaban, instalaban y ejecutaban el binario, consultaban proveedores/modelos/sesiones de OpenCode y guardaban credenciales en `.local/share/opencode/auth.json`.

También se retiraron las rutas de configuración `.config/opencode` y el requisito de que el binario y el sandbox estuvieran instalados para poder abrir el chat. La configuración de IA ya no depende de `opencode --version`, `opencode auth list`, `opencode models` ni `opencode run`.

En el árbol fuente se eliminó la regla de `.gitignore` que reservaba el antiguo directorio de assets del binario. No se encontraron rutas de archivos con nombre OpenCode en el árbol de la rama.

### 2. Motor API independiente

Se añadieron:

- `ank-ai/engine.js`: motor reutilizable y separado de la interfaz.
- `ank-ai/engine.test.js`: pruebas automatizadas del motor.
- `tools/build-ai.js`: integra el motor fuente en el bundle que carga Android y comprueba que ambos estén sincronizados.

El primer adaptador implementado utiliza el protocolo **OpenAI Chat Completions compatible**. Acepta endpoint, identificador de modelo y clave API configurables. Incluye normalización de endpoint, envío de mensajes, lectura de respuestas SSE cuando el entorno permite streaming, manejo de errores y cancelación. Se corrigió además la propagación de `AbortSignal` hasta `cordova.plugin.http.abort()`, para que cancelar desde la interfaz detenga también la petición nativa.

En Android se usa el transporte HTTP nativo del plugin Cordova `cordova-plugin-advanced-http`, evitando depender de CORS del WebView. Cuando el motor se ejecuta fuera de Cordova, utiliza `fetch`.

La configuración se almacena en un archivo dentro del directorio privado de la aplicación y se carga al iniciar. **En esta fase la clave todavía no está cifrada con Android Keystore**; no debe tratarse como una versión final segura. Ese endurecimiento corresponde al bloque 7.

### 3. Terminal Linux conservada

No se eliminó el plugin Terminal/Executor ni el soporte Alpine, AXS, proot y Bash. La terminal ahora es opcional para el chat de IA: el chat API no necesita instalar ni iniciar Alpine.

La consola manual, la lista de archivos y las tareas auxiliares que pertenecen al terminal y al sistema de mini apps continúan usando el ejecutor existente. El motor conversacional de API no lanza comandos de shell ni tiene todavía un bucle autónomo de herramientas.

### 4. Memoria, chats y archivos

Se conservaron el historial de chats, las memorias por proyecto, la bitácora, la exportación Markdown, la pestaña Apps y el flujo de propuestas de archivos con diff y confirmación del usuario.

La lectura de archivos de memoria se movió al plugin de archivos de Cordova en vez de depender de un comando `cat` ejecutado por OpenCode. La ruta de memoria global nueva es `/public/.config/ank/AGENTS.md`.

Los bloques de archivos que genera el modelo siguen siendo propuestas revisables: el usuario debe pulsar **Aplicar**. El agente con acceso controlado a archivos y comandos, permisos, snapshots y rollback se implementará en el bloque 4.

### 5. Arranque y actualizador protegidos contra código anterior

Se actualizó `boot-ai.js` para no ejecutar un panel almacenado en caché que no contenga el marcador del motor nuevo. Si encuentra una copia antigua, la descarta y carga el panel incluido en el APK.

Se actualizó `upd.js` para reconocer la versión incluida **2.0.0**, validar que cualquier paquete contenga el motor nuevo y comparar la versión remota frente a la versión incluida y la versión guardada. Esto evita que una instalación nueva o una caché antigua vuelva a descargar y activar el panel legado 1.8.3.

El manifiesto remoto `update/version.json` permanece intencionalmente en 1.8.3 y no se ha vuelto a firmar ni publicar para esta rama. El esquema HMAC anterior está retirado porque su clave de verificación estaba embebida en el cliente. No se debe publicar el nuevo panel por ese mecanismo. El canal debe permanecer cerrado hasta sustituirlo por firmas Ed25519 en el bloque 7.

## Verificación automatizada

Ejecución de GitHub Actions:

- **Run:** [45852147511](https://github.com/Alejandrokiriatos/codigo-ank/actions/runs/45825747987)
- **Resultado:** ambos trabajos completados correctamente.
- Sintaxis JavaScript/MJS: **333 archivos correctos**.
- Pruebas del motor API: **9 correctas, 0 fallidas**, incluida la cancelación del transporte HTTP nativo.
- Pruebas aisladas del bot: correctas.
- `tools/build-ai.js --check`: motor fuente y bundle Android sincronizados.
- `cmp`: copia de publicación `update/ank/ai.js` idéntica al panel incluido.
- Búsqueda automatizada: sin referencias OpenCode en el panel activo ni en su copia de publicación.
- Comprobación: el registro Cordova declara `cordova.plugin.http`, su interfaz pública expone `sendRequest` y `abort`, y el panel usa ese transporte en Android.
- Comprobación: Terminal.js y Executor.js siguen presentes.
- Manifiesto remoto: 1.8.3 < versión incluida 2.0.0; el workflow confirma el bloqueo del canal antiguo.
- Apktool: reconstrucción diagnóstica completada.

## Límites que impiden declarar un APK listo para instalar

La reconstrucción diagnóstica generó un APK sin firma release de **15.475.779 bytes**. No debe instalarse ni distribuirse. La auditoría detectó que el repositorio no contiene los recursos nativos excluidos que esperaba el APK histórico, incluidos los paquetes de Alpine/AXS/proot. Tampoco están disponibles en este árbol el APK original completo ni el keystore de distribución.

Además, todavía falta probar en un teléfono Android real:

1. Lectura y escritura de la configuración mediante el almacenamiento interno privado.
2. Envío de una petición real mediante el plugin HTTP nativo.
3. Cancelación, timeout y manejo de errores en WebView Android.
4. Persistencia de chats y memoria después de cerrar y abrir la app.
5. Verificar que terminal y herramientas manuales siguen funcionando en el dispositivo.

El protocolo que existe hoy es solo el compatible con OpenAI Chat Completions. Los adaptadores nativos de Anthropic, Gemini y otros proveedores quedan para el bloque 3.

## Criterio de cierre del bloque 2

El código activo de OpenCode está retirado, el motor API inicial está conectado y el terminal se conserva. La verificación estática y de CI pasó. **El bloque 2 queda implementado a nivel de fuente, pero no se declara cerrado para distribución** hasta recuperar los recursos necesarios, generar una compilación completa y firmada con el método legítimo de la app, y superar la prueba Android física. No se pasa al bloque 3 antes de ese cierre.
