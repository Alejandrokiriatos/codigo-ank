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

## Lo que todavía no se declara terminado

Aunque el motor ya puede describir herramientas a los tres proveedores y normalizar sus llamadas, todavía no ejecuta el bucle autónomo modelo → herramienta → resultado → modelo. Tampoco presenta la pantalla para administrar permisos ni contiene ejecutores completos para listado, búsqueda, backup/restore y terminal. Por eso una llamada recibida todavía no dispara una operación del teléfono. La aplicación conserva el flujo existente de propuestas de archivo con aplicación manual.

Siguientes subfases:
1. Adaptar las respuestas de tool/function calling de OpenAI-compatible, Anthropic y Gemini a una estructura común, con límites de rondas y cancelación.
2. Crear una interfaz de permisos por categoría y por herramienta, con denegación predeterminada.
3. Conectar lectura/listado/búsqueda al directorio del proyecto, con exclusión de secretos y cuotas.
4. Conectar escritura/borrado mediante diff, hash esperado, backup y confirmación explícita.
5. Implementar snapshots y restauración con identificadores comprobables.
6. Conectar terminal con confirmación para cada comando, directorio de trabajo limitado, timeout y cancelación.
7. Mostrar el registro de actividad sin comandos ni contenidos privados.

## Pruebas

Se añadieron pruebas para catálogo, rutas, argumentos, permisos de lectura, secuencia permiso/backup/confirmación, terminal, operaciones destructivas y privacidad de la bitácora. El resultado de CI se añadirá cuando la ejecución de la rama termine; no se considera validado únicamente por haber añadido los tests.

## Restricciones de distribución

No se modifica `main`. El harness de emulador Android sigue siendo una build temporal de CI y no una APK release. El cierre de firma original y la prueba física permanecen pendientes.
