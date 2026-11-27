# Bloque 6 · Contrato de herramientas y permisos

**Fecha:** 27 de noviembre de 2026  
**Rama:** `ank/block-3-multiple-api`  
**Fase:** base de seguridad y contrato normalizado implementados; integración del ciclo de herramientas con los proveedores y la interfaz pendiente.

## Objetivo

Definir un catálogo único de acciones que el agente podrá solicitar, separar permisos por nivel de riesgo, validar los argumentos antes de llegar a un ejecutor y mantener una bitácora que no almacene contenido privado.

## Catálogo incorporado en el motor

La fuente canónica es `fuente-completa/ank-ai/engine.js`; sus funciones se exportan en `ANKAIEngine` y el builder las incorpora al bundle Android.

| Herramienta | Permiso | Riesgo | Confirmación por operación | Copia previa |
|---|---|---|---|---|
| `project.list_files` | read | lectura | no | no |
| `project.read_file` | read | lectura | no | no |
| `project.search_files` | read | lectura | no | no |
| `project.create_backup` | backup | respaldo | no | no |
| `project.write_file` | write | escritura | sí | sí |
| `project.delete_file` | destructive | destructivo | sí | sí |
| `project.restore_backup` | destructive | destructivo | sí | no |
| `terminal.run` | execute | ejecución | sí, siempre | no |

El catálogo incorpora esquemas de argumentos cerrados (`additionalProperties: false`). El validador aplica los mismos límites en tiempo de ejecución; no confía únicamente en que el proveedor respete el esquema.

## Protecciones de esta fase

- Rutas relativas al proyecto; se rechazan rutas absolutas, URI, rutas Windows, segmentos `..` y caracteres de control.
- Bloqueo de rutas de credenciales y datos privados como `.env`, `.ssh`, `.aws`, `.config`, `.local`, `.ank`, archivos de claves y el almacén `ank_api_secrets`.
- Límites de tamaño para argumentos, archivos, búsquedas, profundidad de listado y duración de comandos.
- Permisos separados: `read`, `write`, `execute`, `destructive` y `backup`.
- Una autorización general no omite la confirmación de cada escritura, borrado, restauración ni ejecución de terminal.
- Las operaciones de escritura y borrado quedan bloqueadas hasta que el ejecutor confirme que creó la copia previa.
- El registro de actividad conserva fecha, herramienta, riesgo, estado y ruta relativa permitida; no almacena argumentos, contenido, comandos, claves ni respuestas del proveedor.

## API interna

- `herramientasAgente()`: devuelve una copia del catálogo para que los consumidores no puedan modificar el registro interno.
- `normalizarRutaProyecto(path, allowRoot)`: normaliza y valida rutas del proyecto.
- `normalizarArgumentosHerramienta(name, args)`: valida argumentos contra el contrato de cada herramienta.
- `validarLlamadaHerramienta(name, args)`: devuelve la llamada normalizada y su nivel de riesgo.
- `evaluarPermisoHerramienta(name, args, grants, context)`: devuelve `permission_required`, `backup_required`, `confirmation_required` o `allowed`. La confirmación y el estado de backup llegan por un contexto de ejecución confiable separado de los argumentos del modelo.
- `crearRegistroActividad(options)`: crea una bitácora acotada que solo guarda metadatos.

## Adaptadores de llamadas a herramientas

El motor ya convierte el catálogo a los formatos de proveedor y normaliza las llamadas devueltas:

- OpenAI Chat Completions compatible: `tools`, `tool_choice: auto`; desactiva SSE en una petición que ofrece herramientas para recibir la decisión estructurada completa.
- Anthropic Messages: `tools` con `input_schema` y `tool_choice: auto`; procesa bloques `tool_use`.
- Gemini: `tools.functionDeclarations`; procesa bloques `functionCall`.
- Los nombres internos con punto se traducen a identificadores seguros para el proveedor y vuelven a sus nombres canónicos mediante un mapa explícito.
- Los argumentos devueltos por el proveedor se vuelven a validar contra el registro local; se rechazan herramientas desconocidas, JSON inválido, rutas privadas y traversal.
- El protocolo JSON personalizado queda excluido del tool calling nativo porque no define un contrato universal.

## Orquestador de rondas y autorización

Se incorporó `ANKAIEngine.runAgent(options)` como orquestador reutilizable. El ciclo implementado es:

1. Envía conversación y catálogo de herramientas al proveedor.
2. Recibe y vuelve a validar las llamadas normalizadas.
3. Solicita permiso a través de `requestPermission` cuando no existe un permiso concedido por el host.
4. Solicita confirmación individual a través de `confirmTool` para escritura, borrado, restauración y terminal.
5. Para escritura y borrado exige que `createBackup` devuelva una copia creada explícitamente.
6. Solo entonces llama a `executeTool`, inyectado por la aplicación anfitriona.
7. Agrega el resultado como mensaje de herramienta en el formato de OpenAI, Anthropic o Gemini y permite otra ronda.
8. Devuelve respuesta final, rondas, cantidad realmente ejecutada y bitácora de metadatos.

Controles del orquestador:
- Denegación predeterminada: si no hay concesión ni callback de permiso, no ejecuta.
- La confirmación no se puede suministrar desde los argumentos del modelo.
- La escritura/borrado no llegan al ejecutor si el respaldo no está confirmado.
- Límite de 8 rondas, 20 llamadas por ejecución y 32 KiB por resultado de herramienta.
- Cancela entre rondas y antes de entrar en una operación.
- Distingue llamadas solicitadas de operaciones realmente ejecutadas.
- La bitácora no guarda argumentos, contenido, comandos, claves ni respuestas del proveedor.

## Lo que todavía no se declara terminado

El orquestador ya realiza el ciclo modelo → herramienta → resultado → modelo mediante callbacks de confianza, pero la interfaz ANK todavía no invoca `runAgent` ni aporta esos callbacks. Tampoco están conectados los ejecutores reales de listado, búsqueda, backup/restore, lectura/escritura y terminal. Por ello el panel de usuario sigue usando propuestas de archivo con aplicación manual y no ofrece todavía acciones autónomas desde el chat. La siguiente subfase debe implementar esos ejecutores en la aplicación anfitriona y la pantalla de permisos, sin entregar al modelo acceso directo al sistema de archivos ni al shell.

Siguientes subfases:
1. Adaptar las respuestas de tool/function calling de OpenAI-compatible, Anthropic y Gemini a una estructura común, con límites de rondas y cancelación.
2. Crear una interfaz de permisos por categoría y por herramienta, con denegación predeterminada.
3. Conectar lectura/listado/búsqueda al directorio del proyecto, con exclusión de secretos y cuotas.
4. Conectar escritura/borrado mediante diff, hash esperado, backup y confirmación explícita.
5. Implementar snapshots y restauración con identificadores comprobables.
6. Conectar terminal con confirmación para cada comando, directorio de trabajo limitado, timeout y cancelación.
7. Mostrar el registro de actividad sin comandos ni contenidos privados.

## Pruebas

La ejecución CI `45995437656` terminó correctamente: 55 tests, 55 aprobados, 0 fallidos; sintaxis del motor y del panel, comprobación del bundle y auditoría estática también terminaron correctamente. Incluye catálogo, rutas/argumentos, política de permisos, adaptadores OpenAI/Anthropic/Gemini, rondas multi-API, denegación predeterminada, confirmación, respaldo obligatorio, contador de operaciones, límites y privacidad de la bitácora. Esta validación es del motor JavaScript y bundle; no prueba todavía los ejecutores de herramientas conectados a Android.

## Restricciones de distribución

No se modifica `main`. El harness de emulador Android sigue siendo una build temporal de CI y no una APK release. El cierre de firma original y la prueba física permanecen pendientes.
