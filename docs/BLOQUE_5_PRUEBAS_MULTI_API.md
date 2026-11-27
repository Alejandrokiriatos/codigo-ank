# Bloque 5 · Pruebas de transporte y protección de credenciales

**Fecha:** 27 de noviembre de 2026  
**Rama:** `ank/block-3-multiple-api`  
**Commit de código validado:** `22d022fe8cc9f91db40598983582f24da602e314`  
**Alcance:** pruebas automatizadas con transportes simulados y reconstrucción diagnóstica. No se utilizaron claves reales ni se afirma conectividad real con proveedores.

## Cambios implementados

### 1. Evitar reenvío de credenciales por redirecciones Android

El transporte HTTP nativo de Cordova usaba `followRedirect: true`. Se cambió a `false` para que una respuesta de redirección no provoque que el plugin siga automáticamente una nueva ubicación reenviando encabezados de autenticación.

Se añadió una prueba que inspecciona la configuración efectiva de la solicitud nativa.

### 2. Redacción de claves en errores HTTP

Se añadió `limpiarSecreto` en el motor. La clave API activa se sustituye por `[CLAVE OCULTA]` antes de construir mensajes de error de respuestas HTTP, tanto en el transporte nativo como en `fetch`. También se aplica a errores de conexión nativa y errores propagados desde `fetch`.

Se añadieron pruebas para:
- HTTP 401 nativo cuyo cuerpo devuelve la clave.
- HTTP 429 mediante `fetch` cuyo cuerpo devuelve la clave.
- Respuesta nativa con JSON inválido.

En los tres casos, las pruebas verifican que el secreto original no aparece en el error final.

### 3. Bundle y copias

Se regeneró el bloque del motor embebido usando la fuente canónica `fuente-completa/ank-ai/engine.js` y se sincronizaron:
- `fuente-completa/decoded/assets/www/ank/ai.js`
- `ank/ai.js`
- `fuente-completa/update/ank/ai.js`
- `fuente-completa/.repo-publicacion/ank/ai.js`

Las cuatro copias contienen el mismo bloque de motor, comparado con la fuente canónica.

## Pruebas y CI

- Pruebas del motor: **34 aprobadas, 0 fallidas**.
- Verificación de bundle: correcta.
- Auditoría estática del bloque 3: correcta.
- `git diff --check`: correcto.
- Sintaxis JS y pruebas aisladas del bot: correctas.
- Reconstrucción Apktool: completada, APK diagnóstico sin firmar de **15.487.793 bytes**.

Ejecuciones finales sobre el commit sincronizado:
- [Auditoría multi-API](https://github.com/Alejandrokiriatos/codigo-ank/actions/runs/45984420086)
- [Auditoría general y reconstrucción diagnóstica](https://github.com/Alejandrokiriatos/codigo-ank/actions/runs/45984413973)

Algunos workflows de commits intermedios fallaron porque GitHub Actions comenzó mientras se sincronizaban secuencialmente las copias del bundle. El commit final, con las cuatro copias iguales, superó ambas auditorías. Los fallos intermedios no se ocultan: se conservan en el historial de Actions.

## Lo que esta entrega NO demuestra

- No se conectó con OpenAI, Anthropic, Gemini ni un gateway real: no se proporcionaron credenciales de prueba y no se usaron claves reales.
- Las pruebas verifican contratos de petición/respuesta mediante mocks; no prueban DNS, TLS, cuotas, permisos de red, CORS ni disponibilidad del proveedor.
- No se validó Android Keystore/EncryptedSharedPreferences en un teléfono físico.
- No se probó cierre forzado, reinicio, migración de una instalación anterior ni recuperación tras invalidar la clave maestra.
- El APK reconstruido sigue sin firma release y sin los assets opcionales Alpine/AXS/proot. No es una entrega instalable final.

## Siguiente paso operativo

Para cerrar el Bloque 5 hace falta una prueba de dispositivo real. Instalar una build de diagnóstico adecuada en un Android, configurar una clave de prueba creada específicamente para la prueba, crear/editar/seleccionar/eliminar perfiles, cerrar forzadamente y reiniciar, y comprobar que el secreto persiste cifrado y no aparece en logs, exportaciones ni archivos JSON. Después se ejecutarán pruebas controladas de 401, 403, 429, 5xx, timeout, cancelación, pérdida de red y respuesta malformada contra endpoints de prueba.

**Estado:** subfase automatizada de transporte y protección de credenciales superada. Validación real de proveedores y persistencia Android pendiente. No autoriza una release.
