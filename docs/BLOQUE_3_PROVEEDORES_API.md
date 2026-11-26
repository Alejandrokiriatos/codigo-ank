# Bloque 3 · Conexión multi-proveedor de IA

**Rama:** `ank/block-3-multiple-api`  
**Base:** bloque 2, commit `ca27820463950bcd455e1349b49e47a43a1d16a6`  
**Estado:** adaptadores y panel de configuración implementados; pendientes las comprobaciones de CI y la validación en Android físico.

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

## Panel y persistencia

- La pestaña Entorno permite elegir el formato de API.
- El endpoint de ejemplo cambia al cambiar de protocolo, pero conserva un endpoint personalizado que el usuario haya escrito.
- La configuración se guarda en `provider.json` en el directorio privado de la aplicación.
- Se guarda el identificador de protocolo junto con endpoint, modelo y clave.
- Las configuraciones antiguas que no incluyen `protocol` siguen tratándose como OpenAI Chat Completions.
- El protocolo elegido se aplica tanto al chat principal como a la prueba de conexión y el resumen automático de memoria.
- No se realiza descubrimiento automático de modelos: se escribe el ID exacto que el proveedor muestra en su documentación o consola.

## Transporte, cancelación y errores

- Android usa el plugin HTTP nativo de Cordova, por lo que no depende de CORS del WebView.
- Fuera de Cordova se usa `fetch`; el navegador puede exigir CORS habilitado por el proveedor.
- Las peticiones nativas admiten timeout y cancelación mediante el ID que devuelve `sendRequest`.
- Las respuestas no JSON, errores HTTP y respuestas vacías se convierten en errores legibles.
- OpenAI compatible conserva streaming SSE en `fetch`; Anthropic y Gemini usan JSON completo en esta entrega.

## Límites conocidos

“Cualquier API” no significa cualquier URL de inferencia: los proveedores deben exponer uno de los tres contratos implementados. Una API propia con un protocolo, firma o mecanismo de autenticación distinto requiere un adaptador adicional. Los servicios OpenAI-compatible que usan `api-key` en vez de `Authorization: Bearer` (por ejemplo, ciertos despliegues Azure) todavía necesitan ajuste específico.

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

La ejecución de GitHub Actions es la comprobación de referencia del bloque. No sustituye la prueba real con las claves y endpoints de los proveedores, ni la prueba en un teléfono Android con el plugin Cordova instalado.
