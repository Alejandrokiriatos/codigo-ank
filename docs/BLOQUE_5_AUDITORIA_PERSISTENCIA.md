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
