# Bloque 3 · Conexión multi-proveedor de IA

**Rama:** `ank/block-3-multiple-api`  
**Base:** bloque 2, commit `ca27820463950bcd455e1349b49e47a43a1d16a6`  
**Estado:** cuatro formatos API, perfiles múltiples y rediseño responsive implementados; auditoría estática y 21 pruebas automatizadas superadas; sigue pendiente la validación en Android físico y el endurecimiento del almacenamiento de claves.

## Objetivo

Permitir que cada instalación de Código ANK configure su propio proveedor, endpoint, modelo y clave API, sin depender de OpenCode ni de un catálogo remoto centralizado. Se conserva el terminal como módulo separado.

## Formatos implementados

### OpenAI Chat Completions compatible

- POST a `<endpoint-base>/chat/completions`.
- Autenticación `Authorization: Bearer <clave>`.
- Admite SSE cuando el servidor responde en streaming y el transporte lo permite.
- Cubre proveedores que exponen explícitamente el mismo contrato, como OpenAI, OpenRouter, DeepSeek, Groq, Mistral y otros servicios compatibles.
- Para gateways que usan una ruta personalizada, el endpoint introducido debe ser la base del contrato Chat Completions.

### Anthropic Messages

- POST a `<endpoint-base>/messages` (añade `/messages` cuando el endpoint termina en `/v1`, o `/v1/messages` si se introduce solo el host).
- Usa `x-api-key` y `anthropic-version: 2023-06-01`.
- Mueve los mensajes `system` al campo superior `system`.
- Envía `max_tokens` obligatorio y convierte el historial de roles.
- Extrae los bloques de texto de `content` y `stop_reason`.

### Google Gemini

- POST a `<endpoint-base>/models/<modelo>:generateContent`.
- Envía la clave mediante `x-goog-api-key`, no en la URL.
- Convierte `assistant` a `model`, separa `systemInstruction` y traduce `maxTokens` a `maxOutputTokens`.
- Extrae texto desde los bloques de `candidates[0].content.parts` y registra el motivo de finalización.


### API JSON personalizada

Pensada para proveedores HTTP que no implementan los tres protocolos anteriores, pero aceptan POST y devuelven JSON.

- El endpoint se usa exactamente como se introduce; no se le añade ninguna ruta automática.
- El encabezado de autenticación y su prefijo son configurables. Si el prefijo queda vacío, ANK envía la clave directamente en el encabezado seleccionado.
- Se aceptan encabezados adicionales como un objeto JSON. Los valores pueden incluir `{{API_KEY}}` y `{{MODEL}}`.
- La plantilla del cuerpo se define como JSON y admite `{{MODEL}}`, `{{MESSAGES}}`, `{{SYSTEM}}`, `{{API_KEY}}`, `{{TEMPERATURE}}` y `{{MAX_TOKENS}}`.
- `{{MESSAGES}}` debe escribirse entre comillas en la plantilla; ANK la sustituye por el array de mensajes, no por texto JSON escapado.
- La respuesta se extrae mediante una ruta con puntos e índices, por ejemplo `data.answer.text`, `choices.0.message.content` o `output.0.content`.
- El endpoint puede incluir parámetros de consulta no sensibles; las claves y tokens en la URL se rechazan.
- Se bloquean encabezados de transporte, saltos de línea y propiedades JSON peligrosas para reducir riesgos de inyección.
- Las APIs públicas deben usar HTTPS; HTTP queda permitido para localhost y direcciones privadas de LAN.
- Se permite una API local sin clave cuando el encabezado de autenticación se deja vacío.

Este modo cubre JSON sobre HTTP POST, no cualquier protocolo imaginable. WebSocket, gRPC, protocolos binarios, autenticación de firma compleja o streaming propietario siguen necesitando un adaptador específico.


## Panel y persistencia

### Perfiles de conexión (provider.json v4)

- Se pueden guardar hasta **12 conexiones** con nombre propio.
- Cada perfil mantiene protocolo, endpoint, modelo, clave, cabeceras y plantilla JSON de forma independiente.
- El selector cambia entre perfiles sin volver a pegar las claves. Las ediciones del perfil anterior se capturan antes de cambiar o crear uno nuevo.
- Se puede crear una conexión nueva y eliminar la conexión activa; al borrar la última se genera una ficha vacía para no dejar los ajustes inutilizables.
- Los perfiles v3 de una sola conexión se migran automáticamente a v4 como «Conexión principal», sin descartar los valores anteriores.
- La selección activa se restaura al abrir el panel.
- Se limita la lista a 12 perfiles y se normalizan identificadores duplicados o inválidos.

Las claves continúan en el archivo privado de la aplicación **sin cifrado Android Keystore**. El perfil múltiple organiza la configuración, pero no cambia ese límite de seguridad. No se debe compartir `provider.json` ni incluirlo en un repositorio.

### Diseño del panel 2.4.0

- Panel adaptable: pantalla completa en teléfono y ventana centrada en escritorio.
- Cabecera y pestañas con navegación táctil, botones de al menos 42–46 px, campos con foco visible y contraste reforzado.
- La pestaña Entorno agrupa perfiles, estado del entorno y campos de conexión; la terminal aparece como componente opcional independiente.
- El chat, los bloques de código, las propuestas de archivos, el registro y las tarjetas de Apps comparten el nuevo lenguaje visual oscuro con acento cobre.
- Se respetan las preferencias del sistema para reducir animaciones.

- La pestaña Entorno permite elegir el formato de API.
- El endpoint de ejemplo cambia al cambiar de protocolo, pero conserva un endpoint personalizado que el usuario haya escrito.
- La configuración se guarda en `provider.json` en el directorio privado de la aplicación.
- Se guarda el identificador de protocolo junto con endpoint, modelo y clave.
- Las configuraciones antiguas que no incluyen `protocol` siguen tratándose como OpenAI Chat Completions.
- El protocolo y los ajustes personalizados se aplican al chat principal, la prueba de conexión y el resumen automático de memoria.
- No se realiza descubrimiento automático de modelos: se escribe el ID exacto que el proveedor muestra en su documentación o consola.
- La normalización conserva sufijos y símbolos válidos del ID (por ejemplo `:free`, `@` y `+`), y rechaza caracteres de control o nombres de más de 256 caracteres.

## Transporte, cancelación y errores

- Android usa el plugin HTTP nativo de Cordova, por lo que no depende de CORS del WebView.
- Fuera de Cordova se usa `fetch`; el navegador puede exigir CORS habilitado por el proveedor.
- Las peticiones nativas admiten timeout y cancelación mediante el ID que devuelve `sendRequest`.
- Las respuestas no JSON, errores HTTP y respuestas vacías se convierten en errores legibles.
- OpenAI compatible conserva streaming SSE en `fetch`; Anthropic, Gemini y API personalizada usan JSON completo en esta entrega.

## Límites conocidos

“Cualquier API” no significa cualquier URL de inferencia: los proveedores deben exponer uno de los tres protocolos nativos o usar el modo HTTP POST JSON configurable. Una API propia con WebSocket, gRPC, protocolo binario, firma compleja o respuestas no JSON requiere un adaptador adicional.

Las claves siguen guardándose en el directorio privado sin cifrado Android Keystore. No se debe presentar esta rama como una versión endurecida. El cifrado seguro y la gestión de secretos se mantienen para el bloque de seguridad.

El actualizador web permanece desactivado porque la verificación HMAC anterior fue retirada. No publicar este panel por el canal antiguo. La actualización firmada debe reabrirse con verificación asimétrica Ed25519.

## Pruebas automatizadas añadidas

- Normalización de endpoint para los tres protocolos.
- Rechazo de protocolos, URLs inválidas y credenciales incrustadas en la URL.
- Requisitos de clave y modelo.
- Solicitud OpenAI-compatible con SSE y transporte HTTP nativo.
- Autenticación, headers, cuerpo y extracción de respuesta de Anthropic.
- Autenticación, conversión de roles, cuerpo y extracción de respuesta de Gemini.
- Error HTTP 401 del transporte nativo.
- Cancelación y timeout del transporte nativo.
- Plantilla JSON, autenticación personalizable, variables, ruta de extracción y conservación de parámetros de consulta seguros.
- Identificadores de modelo con `:`, `@` y `+`, rechazo de caracteres de control y límite de longitud.

### Resultado CI del 27/11/2026

La ejecución [45969127377](https://github.com/Alejandrokiriatos/codigo-ank/actions/runs/45969127377) terminó correctamente:

- 21 pruebas del motor: 21 correctas, 0 fallidas.
- Integración del motor embebido en Android comprobada con `tools/build-ai.js --check`.
- Auditoría estática de los perfiles: migración v3, formato v4, creación, selección y eliminación.
- Integridad: el panel y el CSS del APK coinciden byte a byte con sus copias del actualizador interno.
- Diseño responsive: reglas verificadas para teléfono y escritorio.
- Sin referencias de OpenCode en el panel activo; las claves no se guardan en `localStorage`.

### Resultado CI del 26/11/2026

La ejecución [45892806329](https://github.com/Alejandrokiriatos/codigo-ank/actions/runs/45892806329) terminó correctamente:

- 21 pruebas del motor: 21 correctas, 0 fallidas.
- `node tools/build-ai.js --check`: motor fuente y bundle Android idénticos.
- `tools/auditar-bloque-3.js`: configuración, persistencia privada, cuatro protocolos y ausencia de OpenCode en el panel activo verificados.
- La copia interna `update/ank/ai.js` quedó sincronizada con el bundle Android. Esto no reactiva el canal remoto: `upd.js` continúa inerte y el manifiesto antiguo no se publica.

La CI valida el comportamiento simulado y la integración estática. No sustituye la prueba real con claves y endpoints de los proveedores, ni la prueba en un teléfono Android con el plugin Cordova instalado.
