# Bloque 4 · Herramientas de proyecto con aprobación

**Rama:** `ank/block-4-approved-tools`  
**Base:** `ank/block-3-multiple-api`  
**Objetivo de esta entrega:** permitir que cualquier proveedor conectado solicite lecturas del proyecto en un formato ANK común, sin ejecutar acciones silenciosas.

## Protocolo común

El proveedor no necesita implementar el mecanismo propietario de herramientas de OpenAI, Anthropic o Gemini. El motor de chat recibe texto normal y el panel interpreta un bloque de código etiquetado `ank:tool` que contiene un objeto JSON.

Formato:

```ank:tool
{"name":"project.list","arguments":{"path":"."}}
```

La primera versión reconoce dos nombres: `project.list` y `project.read`. El panel no ejecuta nombres arbitrarios ni permite que el modelo elija una función JavaScript.

## Operaciones disponibles

### `project.list`

Lee los nombres de los elementos de una carpeta del proyecto actual. La ruta es relativa a la carpeta activa; `.` representa la raíz. Devuelve un máximo de 100 nombres por consulta.

### `project.read`

Lee un archivo de texto dentro del proyecto activo. El límite de entrada es 64 KiB y el texto que se devuelve al modelo se recorta a 12.000 caracteres. Los archivos que contienen caracteres NUL se rechazan como probablemente binarios.

## Flujo de aprobación

1. El modelo produce una solicitud `ank:tool`.
2. El panel valida el JSON y el nombre de la herramienta contra una lista permitida.
3. Aparece una tarjeta con la operación, los argumentos y su alcance.
4. El usuario pulsa **Aprobar lectura** o **Rechazar**.
5. Tras aprobar, ANK ejecuta la lectura en la carpeta del proyecto y muestra el resultado.
6. El resultado se guarda como un mensaje interno del historial y se envía al modelo para que continúe.

Se permiten hasta cuatro acciones aprobadas en una cadena de respuesta iniciada por un mensaje del usuario. La continuación automática solo ocurre después de que el usuario haya aprobado una lectura.

## Controles de seguridad

- La lista de herramientas es cerrada: solo `project.list` y `project.read`.
- Solo se acepta el argumento `path`; cualquier otro argumento provoca rechazo.
- Las rutas absolutas, los segmentos vacíos, `.` intermedios, `..`, barras inversas y caracteres de control se rechazan.
- Las rutas se resuelven debajo de `/public/proyectos/<proyecto actual>`.
- Las lecturas tienen límites de bytes y de caracteres.
- El contenido de solicitudes y resultados se representa con `textContent`, no como HTML ejecutable.
- No hay escritura, borrado, instalación de paquetes ni ejecución de terminal mediante `ank:tool`.
- Las modificaciones siguen el flujo `ank:archivo`: diff visible, botones Aplicar/Descartar y aprobación separada.

## Persistencia

Los resultados aprobados se guardan en el historial con el rol interno `tool`, oculto como burbuja normal. Al construir el contexto de la API se pasan como información de usuario marcada explícitamente como resultado de una herramienta aprobada. Así se conservan para las siguientes preguntas sin fingir que el usuario los escribió.

## Límites conocidos

- La implementación actual no proporciona herramientas de shell, Git, búsquedas recursivas ni operaciones de escritura.
- La lista de carpetas muestra nombres, no metadata completa de tipo, tamaño o fecha.
- La comprobación de rutas bloquea traversal textual, pero esta fase no añade un resolvedor nativo de rutas canónicas para detectar enlaces simbólicos previamente creados dentro del proyecto. Por eso las operaciones se mantienen en solo lectura y no se autoriza el acceso fuera del proyecto por diseño.
- El proceso de aprobación se realiza por cada tarjeta; no hay permisos persistentes ni “confiar siempre”.
- El sistema no publica un APK release ni reactiva el canal remoto. El APK diagnóstico sigue sin estar destinado a instalación.

## Verificación

La auditoría de GitHub Actions debe comprobar sintaxis, rutas de publicación sincronizadas, presencia del parser `ank:tool`, lista de herramientas permitidas, botones de aprobación/rechazo, límite por solicitud y estilos de tarjetas. La aprobación CI no sustituye pruebas manuales en Android físico.
