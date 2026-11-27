# Bloque 6 · Herramientas, permisos y ejecución controlada

**Fecha:** 27 de noviembre de 2026  
**Rama:** `ank/block-3-multiple-api`  
**Estado:** motor, adaptadores, orquestador y primera integración Cordova de archivos implementados; pruebas de runtime de estas herramientas en Android pendientes.

## Objetivo

Permitir que el asistente consulte y modifique el proyecto activo mediante herramientas limitadas. El modelo nunca obtiene acceso directo al sistema de archivos ni a la shell: solicita una operación, ANK valida sus argumentos, pide permisos y confirmaciones y llama a un ejecutor propio.

## Catálogo interno del motor

La fuente canónica es `fuente-completa/ank-ai/engine.js`. Los esquemas usan propiedades cerradas y se vuelven a validar en tiempo de ejecución.

| Herramienta | Permiso | Confirmación | Respaldo previo |
|---|---|---|---|
| `project.list_files` | read | no | no |
| `project.read_file` | read | no | no |
| `project.search_files` | read | no | no |
| `project.create_backup` | backup | no | crea el snapshot solicitado |
| `project.write_file` | write | sí | sí |
| `project.delete_file` | destructive | sí | sí |
| `project.restore_backup` | destructive | sí | sí, del estado actual antes de restaurar |
| `terminal.run` | execute | sí, siempre | no |

El catálogo del motor define `terminal.run`, pero el panel no lo incluye en las herramientas ofrecidas al modelo. La ejecución de terminal queda deshabilitada hasta disponer de un ejecutor con cancelación real y control fiable del proceso.

## Adaptadores de proveedores

- OpenAI Chat Completions compatible: `tools`, `tool_choice: auto`; desactiva SSE para una solicitud con herramientas.
- Anthropic Messages: `tools/input_schema` y bloques `tool_use`/ `tool_result`.
- Gemini: `functionDeclarations` y bloques `functionCall`/`functionResponse`.
- Los nombres de proveedor se traducen a nombres canónicos y los argumentos se vuelven a validar.
- El protocolo JSON personalizado no anuncia herramientas, porque no hay un contrato de tool calling universal para ese modo.

## Orquestador del motor

`ANKAIEngine.runAgent(options)` realiza varias rondas modelo → herramienta → resultado → modelo. Recibe del host los siguientes callbacks de confianza:

- `requestPermission`: permiso por categoría/herramienta.
- `confirmTool`: confirmación por operación sensible.
- `createBackup`: snapshot confirmado antes de mutaciones.
- `executeTool`: ejecutor real implementado por la aplicación.

La autorización es denegada por defecto. Si falta un callback necesario, la operación no se ejecuta. Los argumentos del modelo no pueden marcarse a sí mismos como autorizados.

Límites: máximo 8 rondas, 20 llamadas por ejecución y 32 KiB de resultado por herramienta. La cancelación se comprueba entre rondas y antes de cada ejecución. El contador distingue llamadas solicitadas de ejecutores realmente invocados. El registro conserva solo hora, nombre, riesgo, estado y ruta; no guarda argumentos, comandos, contenido ni credenciales.

## Integración Cordova en el panel

El panel activo ya utiliza `runAgent` para OpenAI, Anthropic y Gemini. El protocolo JSON personalizado conserva el chat sin herramientas. El modo Plan solo expone lectura, listado y búsqueda; el modo Construir expone también respaldo, escritura, borrado y restauración. No se ofrece terminal al modelo.

Ejecutores actualmente conectados:

- **Listado:** recorre el directorio del proyecto; limita el resultado a 400 entradas y omite archivos/directorios ocultos y dependencias grandes como `node_modules`.
- **Lectura:** solo rutas relativas permitidas; máximo 256 KiB; los valores con aspecto de API key, token, contraseña, secret o Bearer se ocultan antes de enviarlos al modelo. Si se ocultan valores no se ofrece digest para evitar una comparación falsa.
- **Búsqueda:** busca en archivos de hasta 256 KiB y devuelve como máximo 50 coincidencias con texto sanitizado.
- **Escritura:** utiliza el servicio Cordova `System.writeText`, crea carpetas necesarias y comprueba `expectedDigest` cuando el modelo lo proporciona.
- **Borrado:** solo elimina archivos y verifica digest si se proporcionó.
- **Respaldo/restauración:** snapshots individuales de archivos, limitados a 256 KiB, almacenados bajo `files/ank-ai/backups/<proyecto>/` dentro del almacenamiento privado de la aplicación. Al restaurar se toma primero un snapshot del estado actual para permitir revertir la propia restauración.

Antes de escribir, borrar o restaurar, ANK presenta un diálogo de confirmación de Android/WebView. Además, solicita permiso separado para la categoría de la operación. Los permisos no se guardan como concesiones permanentes: se vuelven a solicitar durante futuras operaciones. La interfaz dedicada para administrar concesiones todavía no está incorporada.

### Restricciones del almacenamiento y respaldo

- No se permiten rutas absolutas, URI, rutas Windows ni segmentos `..`.
- Se bloquean rutas comunes de credenciales, vault, claves privadas y directorios de configuración.
- Los snapshots son por archivo; no hay respaldo de proyecto completo.
- Si el archivo supera el límite o no se puede crear el snapshot, la mutación se rechaza.
- `ank-ai/backups/` se excluye del backup clásico, cloud backup y device transfer de Android. Los snapshots se mantienen en el dispositivo.
- La búsqueda y lectura son best-effort para archivos de texto; los archivos demasiado grandes o no legibles no se entregan al modelo.

## Validación

La ejecución [45996503802](https://github.com/Alejandrokiriatos/codigo-ank/actions/runs/45996503802) terminó correctamente:

- **56 pruebas, 56 aprobadas, 0 fallidas.**
- Sintaxis del motor y panel Android.
- `tools/build-ai.js --check`: motor fuente y bundle idénticos.
- Auditoría estática del contrato de perfiles, vault, adaptadores, permisos, ejecutores Cordova y exclusiones de backup.
- Cuatro copias de `ai.js` sincronizadas.

La prueba [45994302632](https://github.com/Alejandrokiriatos/codigo-ank/actions/runs/45994302632) validó en emulador Android el ciclo independiente de ApiVault (securePut, secureGet, cierre forzado, lectura persistida, secureRemove y lectura vacía). No ejercitó los ejecutores de archivos que se acaban de conectar.

**Pendiente:** probar los ejecutores Cordova de listar/leer/buscar/escribir/borrar/backup/restore en un emulador o teléfono; validar rollback ante fallo de escritura; diseñar pantalla de permisos y actividad; implementar terminal segura solo después de garantizar cancelación de procesos. La CI de motor y la prueba ApiVault no certifican todavía esas acciones en Android.

## Distribución

No se modifica `main`. El APK reconstruido en CI es diagnóstico, carece de assets completos de Alpine/AXS/proot y no es una release. No se puede generar una actualización instalable hasta verificar el certificado de firma original y la continuidad del application ID/certificado.
