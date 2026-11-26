# Bloque 4 · Acciones controladas del asistente

**Rama:** `ank/block-4-agent-tools`  
**Base:** `ank/block-3-multiple-api`  
**Estado:** primer ciclo de propuestas de comandos implementado en fuente. GitHub Actions superó la verificación estática y 22 pruebas automatizadas; falta la prueba funcional en Android.

## Objetivo

Permitir que el asistente sugiera pruebas, diagnósticos y tareas de compilación en el proyecto, sin ejecutar comandos de manera autónoma. La ejecución requiere una acción explícita del usuario.

## Flujo de una propuesta

1. El modelo devuelve un bloque `ank:comando` dentro de su respuesta.
2. El panel lo convierte en una tarjeta con título, comando y estado.
3. ANK pasa el comando por `ANKAIEngine.validateCommand`.
4. Si no supera la política, queda bloqueado y no muestra botón habilitado de ejecución.
5. Si supera la política, el usuario puede pulsar **Ejecutar en terminal** o **Descartar**.
6. Después de aprobar, ANK inicia el entorno Alpine que ya debe estar instalado, cambia a la carpeta del proyecto y ejecuta la línea validada.
7. La tarjeta muestra salida, código de salida y un estado completado/error. No se considera éxito un código distinto de cero.

La propuesta puede repetirse en el historial al volver a abrir un chat, pero nunca se reejecuta automáticamente. Cada tarjeta nueva requiere otra aprobación.

## Política de comandos de esta etapa

Se limita a una línea de máximo 240 caracteres. No admite saltos de línea, caracteres de control, tuberías, redirecciones, variables o expansión del shell. Se rechazan rutas absolutas, directorios superiores (`..`) y direcciones de red. Los nombres de proyecto también se normalizan para retirar segmentos `.` y `..` antes de construir las rutas de trabajo.

Se bloquean, entre otros:

- Borrado/formateo, apagado/reinicio, gestión de procesos y cambio de permisos.
- Descargas, conexión remota, herramientas de red e instalación de paquetes del sistema.
- Intérpretes de shell y ejecución de código inline.
- Operaciones Git que pueden descartar o enviar cambios, como reset, clean, checkout, restore, push o pull.
- Opciones de `find` que ejecutan o borran (`-exec`, `-execdir`, `-delete`).

Se permiten comandos de prueba/diagnóstico habituales, como `npm test`, `npm run build`, `git status --short`, `git diff --stat`, `node tests/run.js`, `python3 -m pytest` y `./gradlew test`, sujetos a la validación y aprobación manual.

## Límites de seguridad

La política es una barrera inicial, no una garantía de sandbox frente a código de proyecto malicioso. Por ejemplo, un script configurado por el propio proyecto puede realizar operaciones adicionales al ejecutarse mediante `npm test`. Por eso se muestra la línea exacta y el usuario debe revisar qué está aprobando.

La terminal Alpine debe estar instalada. Esta fase no instala herramientas ni paquetes, no ejecuta comandos en segundo plano y no realiza acciones sobre otros proyectos. Los archivos que proponga la IA continúan sujetos al diff y al botón **Aplicar** independiente.

Snapshots, rollback automático, permisos por herramienta, allowlists por proyecto y ejecución aislada más estricta son trabajo de fases posteriores. Esta rama no debe distribuirse como APK: los recursos nativos de la reconstrucción y la firma original siguen sin estar disponibles; tampoco hay prueba física Android.

## Verificación automatizada

La CI de la rama debe comprobar:

- Sintaxis de JavaScript y las pruebas unitarias del validador.
- Rechazo de comandos destructivos, de red, multilinea y de escape de proyecto.
- Presencia del protocolo `ank:comando`, tarjetas y acciones de aprobación/descarte.
- Sincronización del motor integrado con el archivo fuente y copia de publicación.
- Conservación del plugin Terminal/Executor y del transporte API.
