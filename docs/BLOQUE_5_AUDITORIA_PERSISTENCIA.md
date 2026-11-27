# Bloque 5 · Auditoría de persistencia cifrada Android

**Fecha:** 27 de noviembre de 2026  
**Rama:** `ank/block-3-multiple-api`  
**Alcance:** inspección estática del vault Smali, puente Cordova, configuración de perfiles y reglas Android Backup. No equivale a una prueba en dispositivo físico.

## Resultado de la inspección

### Almacén nativo

- `ApiVault.smali` crea `MasterKey` con alias `ank_api_master_key_v1` y esquema AES-256-GCM.
- Crea `EncryptedSharedPreferences` con nombre `ank_api_secrets`, cifrado AES-256-SIV para claves y AES-256-GCM para valores.
- Las operaciones `put` y `remove` utilizan `Editor.commit()`; el puente no responde éxito si la escritura/eliminación no se confirma.
- `get` devuelve cadena vacía si la entrada no existe.
- Las excepciones de las operaciones de vault se devuelven al callback Cordova como error.

### Puente Cordova

- El panel llama a `window.system.secureGet`, `secureSet` y `secureRemove`.
- `plugin.js` traduce `secureSet` a la acción nativa `securePut`, manteniendo el orden `[key, value]`.
- `System.smali` intercepta `secureGet`, `securePut` y `secureRemove` antes del dispatcher antiguo y delega en `ApiVault.execute`.
- El guardado JS agrupa clave, prefijo, cabeceras y plantilla JSON en el vault. `provider.json` se guarda en el directorio privado, pero elimina esos campos antes de serializar perfiles.
- Las operaciones se serializan mediante una cola JS para evitar accesos simultáneos al inicializador de Tink/SharedPreferences.

### Copias de seguridad

- El manifiesto enlaza `@xml/ank_backup_rules` y `@xml/ank_data_extraction_rules`.
- Backup clásico excluye `sharedpref/ank_api_secrets.xml`.
- Las reglas Android 12+ excluyen ese mismo archivo tanto en cloud backup como en device transfer.
- El nombre del archivo excluido coincide con el nombre que pasa `ApiVault` a `EncryptedSharedPreferences.create`.

## Mejora de auditoría automatizada

Se reforzó `fuente-completa/tools/auditar-bloque-3.js` para verificar:
1. La traducción exacta de los tres métodos JS al servicio Cordova.
2. Que `secureSet` llame a la acción nativa `securePut` con clave y valor en el orden correcto.
3. Que el nombre real del archivo cifrado coincida con las reglas de backup.
4. Que el alias de Android Keystore siga versionado y presente.

Estas son comprobaciones estáticas de contrato. No prueban que el sistema operativo ejecute correctamente el vault, ni que el fabricante del teléfono respete todos los escenarios de restauración.

## Protocolo reproducible pendiente para Android físico

Usar una build de diagnóstico creada desde esta rama y un secreto desechable de prueba. Nunca introducir una clave de producción ni compartir el secreto en logs, capturas o chat.

1. Instalar la build y abrir ANK.
2. Crear un perfil de prueba con endpoint HTTPS de un servidor controlado, modelo de prueba y clave desechable.
3. Guardar; cerrar la pantalla de ajustes y volver a entrar. Confirmar que el perfil activo y los campos privados se restauran.
4. Forzar detención desde Ajustes de Android, volver a abrir y comprobar la restauración.
5. Reiniciar el dispositivo y repetir la comprobación.
6. Crear un segundo perfil, alternar entre ambos y verificar que nunca se muestra la clave del perfil anterior en el campo de contraseña.
7. Editar y guardar el primer perfil; comprobar que el segundo conserva sus valores.
8. Eliminar el segundo perfil y confirmar que se elimina su entrada del vault. Eliminar la clave del primer perfil y comprobar que el panel indica que falta autenticación.
9. Revisar `provider.json`: no debe contener `apiKey`, prefijos, cabeceras privadas ni plantillas con secretos.
10. Con herramientas Android autorizadas, comprobar que `ank_api_secrets.xml` contiene ciphertext y no el secreto en claro. No copiar ni publicar el archivo.
11. Repetir instalación/restauración en un dispositivo o perfil limpio. El vault no debe restaurarse sin la clave Keystore original; la app debe manejar la ausencia/invalidación con un error recuperable, no mostrar datos corruptos ni borrar perfiles silenciosamente.

### Matriz de escenarios

| Escenario | Resultado esperado |
|---|---|
| Guardar y volver a abrir ajustes | Perfil y secreto restaurados |
| Forzar detención | Secreto restaurado |
| Reiniciar Android | Secreto restaurado |
| Cambiar de perfil | No se filtra la clave entre perfiles |
| Editar un perfil | Los demás permanecen intactos |
| Eliminar perfil | Sus entradas privadas se eliminan |
| Backup clásico / cloud / transferencia | El archivo del vault queda excluido |
| Restaurar datos sin Keystore original | No se recupera ciphertext inutilizable; error controlado |
| Inspeccionar `provider.json` | Sin secretos ni campos privados |

**Bloqueo:** no se dispone de una sesión de Android físico/emulador conectada a esta ejecución. Por tanto, todos los puntos de la matriz permanecen pendientes de prueba práctica. No se declara validada la persistencia física ni se autoriza una APK release.

## Segunda capa de auditoría estática

En el commit `5d8dbb605c5f2fb92db0a83845e154413e91636f` se amplió el auditor para comprobar además:

- Que `System.smali` delegue las acciones reconocidas a `ApiVault.execute` y no continúe por el dispatcher heredado.
- Que `put` y `remove` comprueben el resultado booleano de `commit()` y conviertan un fallo en error.
- Que `secureGet`, `securePut` y `secureRemove` tengan callback de éxito y callback de error.
- Que `get` lea mediante `SharedPreferences.getString` del almacén devuelto por `getPreferences`.
- Que `ApiVault` no escriba contenido del vault en Logcat.

Esto reduce el riesgo de regresiones en el puente Smali, pero sigue siendo análisis estático; no sustituye la prueba de cifrado/descifrado en Android.

## CI del refuerzo

La auditoría reforzada quedó validada en la ejecución final:
- [CI multi-API y contrato nativo](https://github.com/Alejandrokiriatos/codigo-ank/actions/runs/45986522981)
- Resultado: 34 pruebas del motor aprobadas, 0 fallidas; bundle Android verificado; auditoría estática del bloque 3 superada.

Durante el desarrollo, la CI detectó dos defectos en las nuevas aserciones (firmas exactas de callbacks y delimitación de etiquetas Smali). Se corrigieron y se volvió a ejecutar el flujo completo hasta obtener éxito. Esos fallos correspondieron al test nuevo, no a una regresión de las 34 pruebas del motor.

**Límite sin cambios:** el resultado CI es estático y no sustituye la prueba de escritura/lectura real con Android Keystore en dispositivo o emulador.


## Harness automatizado de Android · ciclo Cordova real

Se añadió el workflow `.github/workflows/android-vault-emulator.yml`. En CI:
- Reconstruye temporalmente el APK diagnosticado con Apktool.
- Inyecta en `assets/www/index.html` un pequeño harness efímero, que no se guarda en la rama ni forma parte de APKs normales.
- El harness espera `deviceready` y ejecuta `securePut`, `secureGet` y `secureRemove` mediante `cordova.exec(..., "System", ...)`; por tanto atraviesa el servicio Cordova y el dispatcher Smali hasta `ApiVault`.
- Usa un valor aleatorio y desechable generado dentro del runner. El valor no se imprime, no se publica como artifact y no se guarda en el repositorio.
- En la primera apertura escribe y lee el secreto; CI fuerza la detención del proceso y vuelve a abrir la app; en la segunda apertura verifica la lectura persistente, elimina la entrada y confirma que la lectura queda vacía.
- Solo emite marcadores PASS/FAIL sin el secreto ni el texto de errores.

La prueba de emulador cubre persistencia tras muerte del proceso, no reinicio completo del sistema operativo, migración desde una versión instalada ni interacción completa de la pantalla de perfiles. Esas pruebas siguen en la matriz manual. La APK de CI está firmada con una clave efímera de debug y nunca se distribuye como release.

Resultado de CI: consultar la ejecución del workflow **Prueba Android real · ApiVault Cordova** en Actions. No se declarará superada hasta que el job del emulador termine en `success`; la auditoría estática por sí sola no cuenta como ejecución del vault.


## Identidad de paquete y continuidad de firma (regla obligatoria)

El manifiesto y la configuración de Apktool muestran:
- `apktool.yml`: `renameManifestPackage: com.ank.codigoank`, `versionCode: 1027`, `versionName: 1.7.0`.
- `AndroidManifest.xml` decodificado conserva el package de origen `com.foxdebug.acode`; Apktool aplica el nombre renombrado al reconstruir. El identificador final esperado se verifica sobre el APK compilado, no se deduce únicamente del XML decodificado.

El workflow de emulador ahora comprueba con `aapt dump badging` que el APK reconstruido tenga exactamente el application ID `com.ank.codigoank`. La clave efímera creada en CI es exclusivamente para instalar la build de prueba desde cero en un emulador limpio; nunca sirve para actualizar una instalación existente ni para distribución.

**Regla para cualquier APK actualizable:** conservar el certificado de firma original de la aplicación instalada. El application ID debe seguir siendo idéntico y el certificado debe coincidir con el de la versión instalada (o formar parte de una rotación de certificados compatible y deliberada). Cambiar el keystore/certificado impedirá que Android instale la actualización sobre la aplicación existente.

En el árbol inspeccionado de esta rama no se encontró un APK original, keystore ni certificado de firma que permita verificar la huella SHA-256 del certificado de distribución. Por tanto, la identidad criptográfica de la firma original aún no está demostrada y no se puede generar una APK release actualizable hasta disponer del mecanismo original de firma y verificar su huella. No subir el keystore, contraseña ni claves privadas al repositorio ni al chat; si ya existe un secreto protegido en GitHub Actions, la futura tarea release deberá consumirlo como secreto y validar la huella antes de firmar. Si el original está en Google Play App Signing, se debe usar la clave de carga correspondiente y respetar la cadena de firma administrada por Play.

No se debe confundir el éxito del APK de emulador firmado temporalmente con una compilación release. No distribuir ese artefacto.
