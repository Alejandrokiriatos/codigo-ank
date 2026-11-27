# Auditoría del Bloque 4 · Repositorio y motor multi-API

**Fecha:** 27 de noviembre de 2026  
**Rama auditada:** `ank/block-3-multiple-api`  
**Commit auditado:** `a573cfc305d021ad021c4dbfb0837c7f0c4c7770`  
**Alcance:** auditoría estática del repositorio y pruebas automatizadas del motor multi-API. No equivale a validación en Android físico ni a pruebas con credenciales reales.

## 1. Estado del repositorio

- Árbol Git inspeccionado: 17.899 entradas; no truncado por la API.
- El motor mantenible está en `fuente-completa/ank-ai/engine.js`.
- El conjunto de pruebas está en `fuente-completa/ank-ai/engine.test.js`.
- El bundle cargado por Android está en `fuente-completa/decoded/assets/www/ank/ai.js`.
- La generación/verificación del bundle está en `fuente-completa/tools/build-ai.js`.
- La auditoría de integración está en `fuente-completa/tools/auditar-bloque-3.js`.
- El motor expone cuatro formatos: OpenAI Chat Completions compatible, Anthropic Messages, Gemini generateContent y JSON personalizado.

## 2. Copias y rutas activas

Se compararon las cuatro copias publicadas de `ai.js`:

- `ank/ai.js`
- `fuente-completa/.repo-publicacion/ank/ai.js`
- `fuente-completa/update/ank/ai.js`
- `fuente-completa/decoded/assets/www/ank/ai.js`

Las cuatro tienen el mismo blob SHA: `0dc406d80c05185eca8e880e789ae205f90f5659`. Las cuatro copias de `ai.css` también coincidían en el estado auditado. El workflow `build-ai.js --check` confirma que el motor fuente y el motor embebido en Android son idénticos.

## 3. Defectos encontrados y corregidos

### 3.1 Mensaje system de Anthropic en fetch

**Problema:** el adaptador separaba el mensaje `system` del cuerpo y solo lo incorporaba en el transporte HTTP nativo de Cordova. En navegador/escritorio, el transporte `fetch` serializaba el cuerpo sin esa instrucción.

**Corrección:** el adaptador ahora añade `system` al cuerpo de Anthropic cuando existe, de modo que ambas rutas de transporte usan el mismo contrato.

**Regresión añadida:** prueba de Anthropic mediante `fetch` que comprueba la presencia del mensaje `system` y la respuesta normalizada.

### 3.2 Clasificación del timeout de fetch

**Problema:** cuando el `AbortController` cancelaba una petición por alcanzar el tiempo límite, el error se clasificaba igual que una cancelación manual.

**Corrección:** el control de petición conserva el estado de timeout y el manejador distingue `ANK_AI_TIMEOUT` de `ANK_AI_ABORTED`.

**Regresión añadida:** prueba que simula una petición `fetch` pendiente y verifica que el vencimiento se informa como timeout.

## 4. Verificación automatizada

Workflow: [Auditoría bloque 3 · ejecución sobre el commit a573cfc](https://github.com/Alejandrokiriatos/codigo-ank/actions/runs/45983599968)

Resultado: **SUCCESS**.

- Sintaxis del motor y del panel Android: correcta.
- Pruebas del motor: **30 correctas, 0 fallidas**.
- Bundle: motor fuente y bundle Android sincronizados.
- Auditoría estática: perfiles, almacenamiento, protocolos, arranque y copias sincronizadas.
- `git diff --check`: correcto.
- No se modificó `main`.

Durante la secuencia de commits intermedios, un workflow falló porque se ejecutó antes de que la última copia de publicación se sincronizara. Se actualizó la cuarta copia y el workflow sobre el commit final terminó correctamente. El fallo intermedio queda como antecedente de CI; no es el estado final de la rama.

## 5. Seguridad y límites verificados

- El arranque Android carga el panel incluido en el APK y elimina bundles web antiguos no verificados.
- El actualizador web sigue desactivado; no debe reactivarse hasta verificar firma Ed25519 en el arranque.
- El árbol contiene `ApiVault.smali`, el puente Cordova y reglas de backup que excluyen `ank_api_secrets.xml`. CI verifica estáticamente estas conexiones; no demuestra que Android Keystore funcione correctamente en un dispositivo real.
- La auditoría estática no prueba proveedores reales, cuotas, DNS/red, certificados TLS, comportamiento de WebView ni persistencia después de reiniciar el teléfono.
- El modo JSON personalizado cubre HTTP POST con JSON; no equivale a soporte genérico de WebSocket, gRPC, protocolos binarios o autenticaciones propietarias.
- Anthropic, Gemini y JSON personalizado usan respuestas JSON completas en esta entrega. El streaming SSE está implementado para OpenAI-compatible en `fetch`; el transporte Cordova nativo desactiva streaming.
- La ausencia de referencias OpenCode se comprueba en los paneles activos y copias de publicación. Las menciones históricas en documentación no son código activo.
- No se ha generado ni firmado una APK release. El APK de diagnóstico previo no es instalable/distribuible como versión final.

## 6. Relación entre ramas

En la comparación con `main`, la rama de trabajo aparece divergida: **236 commits por delante y 1 por detrás** en el momento de esta auditoría. El SHA observado de `main` es `7306c6ac6a607d4de3273904bec010263e636781`. No se hizo merge, cherry-pick ni escritura en `main`.

La lectura del endpoint de protección de rama fue denegada por permisos de la integración de GitHub (HTTP 403), y el endpoint de rulesets no devolvió reglas. Por tanto, este informe confirma que `main` no fue modificado, pero no certifica la configuración administrativa de protección de la rama.

## 7. Siguiente trabajo

1. Repetir el alta, edición, selección y eliminación de perfiles en Android físico.
2. Probar OpenAI-compatible, Anthropic y Gemini con endpoints y claves de prueba reales; probar también un endpoint JSON personalizado.
3. Verificar migración de perfiles antiguos, persistencia, cierre forzado, reinicio y ausencia de secretos en logs/exportaciones.
4. Probar errores 401/403/429/5xx, timeout, cancelación, respuesta JSON inválida, pérdida de red y reintento.
5. Añadir pruebas de contrato para streaming, contenido vacío, respuestas truncadas y diferencias entre transporte nativo y `fetch`.
6. Mantener el actualizador bloqueado hasta cerrar el diseño y la validación de firma Ed25519.

**Conclusión:** la auditoría estática y el motor multi-API superan la CI actual con 30 pruebas. El motor queda corregido en dos defectos de transporte. El bloque no autoriza todavía una release: faltan pruebas reales de proveedores y dispositivo Android físico.
