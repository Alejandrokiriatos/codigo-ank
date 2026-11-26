# Auditoría técnica — Bloque 1 de Código ANK

**Fecha:** 26 de noviembre de 2026  
**Rama de trabajo:** `ank/block-1-audit`  
**Rama de referencia sin cambios:** `ank/baseline-2026-11-26`  
**Rama principal:** `main` (no modificada por este bloque)

## 1. Resultado ejecutivo

La importación completa está disponible en `fuente-completa/`. El árbol contiene **16.986 archivos**, aproximadamente **164,2 MB** de datos y **17.870 entradas Git** contando archivos y directorios. El contenido dominante es Smali descompilado; por tanto, esto es principalmente una reconstrucción de un APK, no el proyecto Android original listo para compilar y mantener.

La aplicación tiene un editor real, una terminal Alpine real y un panel de IA implementado. Sin embargo, el panel de IA depende de OpenCode en todos los pasos importantes: instalación del binario, autenticación, consulta de modelos, sesiones, memoria y ejecución del agente. No basta con cambiar el selector de proveedor para convertirlo en un cliente API independiente.

**Estado del bloque 1: auditoría estática avanzada realizada; preparación de compilación Android todavía bloqueada por falta del proyecto nativo original y del APK base. No se inicia el bloque 2 hasta cerrar esa carencia.**

## 2. Inventario de la fuente

| Área | Contenido encontrado | Uso |
|---|---|---|
| `decoded/` | Manifest, recursos, assets, 15.990 archivos Smali y código web compilado | Reconstrucción descompilada del APK |
| `decoded/assets/www/ank/` | `ai.js`, `ai.css`, `ank.js`, `boot-ai.js`, `upd.js` | Panel de ANK y actualizador |
| `decoded/assets/www/build/` | Chunks JS/CSS y workers LSP | Editor Acode compilado |
| `decoded/assets/www/plugins/...terminal/` | `Terminal.js`, `Executor.js` | Puente real con terminal y procesos |
| `bot/` | Bot de Telegram, estado, comandos y pruebas | Servicio separado del APK |
| `tools/` | Parcheador y publicación | Preparación de paquetes |
| `update/` | `version.json`, `ai.js`, `ai.css` | Actualización web del panel |
| `preview/` | Harness y vistas de prueba | Previsualización, no la aplicación completa |
| `web/` | Servidor HTTP para APK en red local | Herramienta auxiliar |
| `.repo-publicacion/` | Copia de una publicación de GitHub | Duplicado auxiliar, no fuente canónica |
| `repo-extra/` | Copias de workflow/documentación/herramientas | Duplicado auxiliar |

### Formatos principales contados en el árbol

| Extensión | Cantidad |
|---|---:|
| `.smali` | 15.990 |
| `.js` | 326 |
| `.xml` | 311 |
| `.png` | 227 |
| `.ttf` | 26 |
| `.css` | 25 |
| `.woff` | 20 |
| `.woff2` | 20 |

## 3. Hallazgos críticos confirmados

### 3.1 El actualizador del panel no actualiza el APK

Archivos principales:

- `decoded/assets/www/ank/upd.js`
- `decoded/assets/www/ank/boot-ai.js`
- `decoded/assets/www/ank/ai.js`
- `update/version.json`

El mecanismo descarga `version.json`, `ank/ai.js` y `ank/ai.css` desde la rama `main`, los guarda en `localStorage` y vuelve a cargar el panel. No instala un APK nuevo ni cambia componentes nativos, permisos, plugins, terminal o binarios.

### 3.2 La firma HMAC está comprometida por diseño

`upd.js` contiene la clave HMAC completa en `CLAVE_HEX`. El secreto incluido en el cliente se puede extraer del APK o del repositorio. Por tanto, cualquiera que lo obtenga puede generar un paquete con una firma aceptada. No es una protección real frente a un atacante que conoce la aplicación.

**Corrección prevista:** firma asimétrica Ed25519. La clave privada queda fuera del repositorio y del APK; la aplicación incorpora solo la clave pública.

### 3.3 El arranque no vuelve a verificar el paquete guardado

`boot-ai.js` recupera el código guardado en `localStorage` y lo ejecuta mediante `new Function(ai)`. La comprobación HMAC está en el flujo de descarga, pero no se repite antes de ejecutar el contenido persistido en cada inicio. El arranque debe validar firma, versión y hash antes de ejecutar un paquete descargado; si no pasa, debe volver a la copia incluida.

### 3.4 Las versiones incluidas están desincronizadas

En la misma entrega se observa:

- `ai.js`: `PANEL_VERSION = 1.8.3`.
- `update/version.json`: `web = 1.8.3`.
- `upd.js`: `INCLUIDA = 1.5.8`.

Además, la consulta compara la versión publicada contra la versión guardada. Cuando no existe versión guardada, compara contra `0`, no contra `INCLUIDA`. Una instalación limpia puede presentar la versión publicada como actualización aunque el panel incluido ya sea 1.8.3. Hay que definir una única fuente de verdad y probar instalación limpia, actualización y rollback.

### 3.5 El flujo de publicación no está listo en una máquina limpia

- `publicar-actualizacion.py` requiere `tools/update-key.txt`; ese archivo no viene en la fuente versionada y está excluido por `.gitignore`. Sin el secreto externo, la publicación falla.
- `publicar-github.ps1` clona dentro de `.repo-publicacion` cuando no encuentra `.git`. Esa carpeta ya está incluida con archivos y no contiene metadata Git; clonar dentro de un directorio no vacío no es un procedimiento fiable. Se debe clonar en una ruta temporal limpia o usar un checkout Git real.
- La clave HMAC actual está expuesta en el cliente y debe considerarse retirada. No se debe reutilizar para firmar futuras entregas.

## 4. Arquitectura actual del asistente

El panel `ai.js` usa el plugin real de terminal (`Executor`, `BackgroundExecutor`, `Terminal`) para ejecutar comandos dentro del sandbox Alpine.

El flujo central llama a:

- `opencode --version` y `opencode auth list` para diagnosticar binario y credenciales.
- `opencode models --verbose` para leer el catálogo de modelos.
- `opencode run --auto --agent build|plan --model ...` para ejecutar el agente en la carpeta del proyecto.
- `opencode session list` para recuperar sesiones.
- Rutas `.config/opencode` y `.local/share/opencode` para memoria y autenticación.

El selector muestra OpenCode, OpenRouter, Anthropic, OpenAI, DeepSeek, Groq y Google, pero las credenciales y las solicitudes siguen pasando por OpenCode. No existe todavía una capa propia de adaptadores API independientes.

### Lo que debe conservarse al retirar OpenCode

No se debe borrar Alpine, proot, AXS, Bash, `Terminal.js`, `Executor.js` ni el servicio Android de terminal. La terminal es un subsistema separado y también se usa para ejecutar comandos. Primero hay que desacoplar el asistente y demostrar que terminal, procesos en primer plano y segundo plano siguen funcionando sin el binario OpenCode.

## 5. Preparación Android: bloqueo de compilación

El árbol importado contiene `decoded/AndroidManifest.xml`, `apktool.yml`, recursos y Smali. No se encontró dentro de la fuente:

- `gradlew`, `settings.gradle`, `build.gradle` ni un proyecto Gradle equivalente.
- Código original Java/Kotlin de la aplicación.
- Un APK base versionado dentro de `fuente-completa/`.
- Un keystore de firma versionado (los archivos `*.keystore` están excluidos).

El manifiesto reconstruido indica paquete final `com.ank.codigoank`, `versionCode 1027`, `versionName 1.7.0`, `minSdk 26`, `targetSdk 28` y `compileSdkVersion 36` reflejado por Apktool. El nombre `acode.apk` en `apktool.yml` es metadata, no demuestra que el APK original esté incluido.

**Consecuencia:** hoy no se puede afirmar que exista una compilación Android reproducible desde esta copia. Tampoco se puede garantizar una actualización encima de la instalación existente sin conservar la identidad de firma de la versión distribuida. El keystore y sus contraseñas nunca deben subirse a un repositorio público.

## 6. Seguridad Android a revisar

En `AndroidManifest.xml` aparecen:

- `android:usesCleartextTraffic="true"` a nivel de aplicación.
- `android:requestLegacyExternalStorage="true"`.
- Permisos heredados de lectura/escritura externa y `WRITE_MEDIA_STORAGE`.
- `targetSdkVersion 28` aunque el metadata de compilación refleja SDK 36.

No se cambiarán de forma aislada: hay que verificar compatibilidad con el proveedor de documentos, la terminal y los flujos de importación/exportación. La meta será retirar HTTP global y permisos obsoletos cuando exista una alternativa verificada.

## 7. Otros defectos de mantenimiento

| Hallazgo | Riesgo / consecuencia | Acción propuesta |
|---|---|---|
| `tools/patch.js` escribe el archivo tras procesar parches aunque haya coincidencias fallidas | Una ejecución parcial puede dejar un archivo parcialmente modificado | Hacer prevalidación total, copia temporal, escritura atómica y rollback |
| `web/serve.js` termina si no existe `CodigoANK.apk` | La herramienta auxiliar no arranca con la fuente sola | Aceptar una ruta APK configurable y permitir modo solo página |
| `preview/serve.js` es un servidor de harness | No es prueba integral de la APK ni del WebView Android | Mantenerlo como prueba visual aislada y no confundirlo con validación real |
| `.repo-publicacion/` y `repo-extra/` duplican archivos | Puede haber versiones distintas y publicar desde la copia equivocada | Definir una sola ubicación canónica y generar copias automáticamente |
| Bot de Telegram | Las pruebas usan API simulada; no prueban Telegram real | Mantenerlo separado y hacer prueba real controlada solo con credenciales privadas |
| Ajustes distribuidos entre múltiples claves de `localStorage` | Migraciones, respaldo y restauración difíciles | Diseñar un esquema versionado de ajustes con migraciones |

## 8. Pruebas automatizadas incorporadas en esta rama

Se incorporó `.github/workflows/auditoria-bloque-1.yml` para comprobar:

1. Sintaxis de los JavaScript propios del panel, bot, herramientas, preview y servidor auxiliar.
2. Pruebas del bot contra su API simulada.
3. Existencia y estructura del paquete de actualización.

Se corrigió el test del anuncio del bot: antes esperaba fija la versión 1.5.9 y ahora toma la versión de `update/version.json`. Es una corrección de la prueba, no cambia el comportamiento del bot.

**El primer intento del workflow falló por un error de sintaxis en el propio script Bash de CI, antes de ejecutar las comprobaciones.** Ya se corrigió en la rama de trabajo; la nueva ejecución debe confirmar si el código pasa. No se marcará como validado hasta ver el resultado en verde.

## 9. Condiciones para cerrar el bloque 1

- [x] Inventario de la fuente y localización de módulos principales.
- [x] Rama de referencia intacta y rama de trabajo separada.
- [x] Auditoría estática del actualizador, panel IA, manifiesto, terminal y publicación.
- [x] Corrección del test de versión obsoleto en el bot.
- [x] Workflow de sintaxis y pruebas automatizadas preparado.
- [ ] Workflow de CI en verde.
- [ ] Proyecto Android original o procedimiento Apktool reproducible verificado.
- [ ] APK base y huella del certificado de firma identificados para preservar instalación y datos.
- [ ] Prueba real de instalación/arranque en un dispositivo Android.

**No se inicia el bloque 2** hasta resolver los puntos pendientes o documentar explícitamente qué parte no se puede reconstruir con los artefactos disponibles.
