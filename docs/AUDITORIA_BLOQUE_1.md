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

**Consecuencia:** el proyecto Android original de Gradle no está incluido, pero sí se pudo comprobar que la reconstrucción técnica de la capa descompilada es posible. No se puede garantizar una actualización encima de la instalación existente sin conservar la identidad de firma de la versión distribuida. El keystore y sus contraseñas nunca deben subirse a un repositorio público.

#### Resultado real de reconstrucción

El job de CI con Apktool 2.11.1 terminó correctamente y generó un APK sin firmar de **15.475.779 bytes**. Esto demuestra que Apktool recompone el Smali y los recursos de esta copia. No demuestra que ese APK sea funcional ni que corresponda al APK publicado de ~97 MB.

Encontré el motivo: `fuente-completa/.gitignore` excluye deliberadamente estos directorios:

- `decoded/assets/opencode/`
- `decoded/assets/alpine_assets/`
- `decoded/assets/dexopt/`

El README indica que el paquete de OpenCode ARM64 ocupa aproximadamente 77,7 MB y que Alpine/proot/addons también viajan dentro del APK. Esos directorios no aparecen en el árbol Git reconstruido. Por tanto, el APK de 15,5 MB generado por CI es solo un **cascarón reconstruido para diagnóstico**, sin el binario OpenCode ni los paquetes de Alpine descritos por el README. **No se debe instalar ni distribuir.**

Para cerrar la compilación hace falta recuperar los assets originales de forma controlada, verificar sus hashes/licencias y comprobar cómo se incorporan al APK. No se deben subir credenciales, claves privadas ni el keystore de firma al repositorio público.

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

Se incorporó `.github/workflows/auditoria-bloque-1.yml` y la ejecución más reciente terminó **en verde**:

| Prueba | Resultado |
|---|---:|
| Sintaxis Node.js de archivos JS/MJS | 330 correctos |
| Pruebas del bot con API simulada | 24 correctas, 0 fallidas |
| Manifiesto del actualizador | versión 1.8.3 y archivos presentes |
| Resultado general de CI | **SUCCESS** |

Se corrigió el test del anuncio del bot: antes esperaba fija la versión 1.5.9 y ahora toma la versión de `update/version.json`. Es una corrección de la prueba, no cambia el comportamiento del bot.

Hubo dos intentos fallidos por errores en el propio workflow (primero un escape Bash, después el descubrimiento de archivos). Ambos se corrigieron y la ejecución posterior validó el conjunto. La prueba del bot sigue siendo contra una API simulada; no equivale a probar Telegram real ni la aplicación Android.

## 9. Referencias externas estudiadas y decisiones de arquitectura

Se contrastó ANK con proyectos y documentación oficiales:

- **Acode upstream:** mantiene fuentes originales separadas en `src/`, web/plantillas en `www/`, herramientas de build en `utils/` y un submódulo dedicado a LSP. La copia de ANK carece de esa estructura fuente; solo conserva la salida compilada y Smali descompilado. Para mantenimiento a largo plazo conviene recuperar el upstream original y mantener un conjunto pequeño de parches propios versionados, en vez de seguir creciendo sobre chunks compilados. Referencia: https://github.com/Acode-Foundation/Acode
- **Spck Editor:** es una referencia para móvil por Git local, historial de commits, resolución de conflictos, credenciales por proveedor y flujo de pull requests. Su documentación también presenta agentes remotos conectados desde el móvil mediante ACP. Referencias: https://docs.spck.io/en/editor y https://docs.spck.io/en/git-support
- **Agent Client Protocol (ACP):** define una interfaz común editor-agente con mensajes JSON-RPC, eventos de sesión, actualizaciones de herramientas/terminal y solicitudes de permiso. Puede añadirse en una fase posterior como puente opcional para agentes externos; no sustituye los adaptadores API que ANK necesita para hablar directamente con cada proveedor. Referencia: https://github.com/agentclientprotocol/agent-client-protocol
- **APIs de proveedores:** OpenAI documenta tool/function calling en Responses; Anthropic devuelve bloques `tool_use` y recibe `tool_result`; Gemini también define llamadas de función que la aplicación ejecuta y devuelve al modelo. Los formatos y ciclos no son idénticos. Por tanto, ANK debe tener un contrato interno normalizado y un adaptador por proveedor/protocolo, no asumir que todas las APIs son OpenAI-compatible. Referencias: https://developers.openai.com/api/docs/guides/tools · https://platform.claude.com/docs/en/agents-and-tools/tool-use/overview · https://ai.google.dev/gemini-api/docs/get-started

### Arquitectura recomendada para el nuevo ANK IA

1. **Proveedor/adaptador:** endpoints, API keys, modelos, cabeceras, streaming, límites y capacidades del modelo.
2. **Contrato común de conversación:** roles, texto, imágenes/archivos si se admiten, errores, cancelación y uso de tokens.
3. **Bucle de agente propio:** gestiona ciclos de respuesta y llamadas a herramientas, límites de pasos, timeouts y cancelación.
4. **Herramientas controladas por ANK:** listar/leer/buscar/escribir archivos, generar diff, aplicar o rechazar cambios, y ejecutar comandos en el sandbox. La IA propone la acción; ANK la valida y la ejecuta.
5. **Permisos y recuperación:** aprobación para operaciones destructivas, alcance limitado al proyecto, registro, snapshots/rollback y control de comandos.
6. **ACP opcional:** puente adicional para agentes externos que hablen ese protocolo, sin convertir OpenCode en dependencia central.

El soporte universal nunca será literalmente cualquier endpoint arbitrario: cada proveedor debe implementar un protocolo compatible o disponer de un adaptador. Una API de solo texto podrá chatear, pero no programar el proyecto hasta que soporte tool/function calling o un formato de acciones que ANK pueda interpretar y validar.

## 10. Condiciones para cerrar el bloque 1

- [x] Inventario de la fuente y localización de módulos principales.
- [x] Rama de referencia intacta y rama de trabajo separada.
- [x] Auditoría estática del actualizador, panel IA, manifiesto, terminal y publicación.
- [x] Corrección del test de versión obsoleto en el bot.
- [x] Workflow de sintaxis y pruebas automatizadas preparado.
- [x] Workflow de CI en verde (330 archivos JS/MJS y 24 pruebas del bot).
- [x] Reconstrucción técnica de `decoded/` con Apktool 2.11.1 (APK diagnóstico sin firma generado).
- [ ] Recuperar y validar los assets excluidos de Alpine/OpenCode para una compilación funcional.
- [ ] Recuperar o documentar el proyecto Android original de Gradle y dejar un proceso de build mantenible.
- [ ] APK base original y huella del certificado de firma identificados para preservar instalación y datos.
- [ ] Prueba real de instalación/arranque en un dispositivo Android.

**No se inicia el bloque 2** hasta resolver los puntos pendientes o documentar explícitamente qué parte no se puede reconstruir con los artefactos disponibles.
