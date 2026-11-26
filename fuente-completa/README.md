# Bot de Código ANK (canal y grupo)

Sin dependencias: solo Node 18 o superior. Todo lo privado vive en esta
carpeta y no se publica (`token.txt`, `config.json`, `estado.json`).

## Puesta en marcha (5 minutos, una sola vez)

1. En Telegram, hablale a **@BotFather** → `/newbot` → elegí nombre y usuario.
   Copiá el token que te devuelve.
2. Guardalo y verificá:
   ```
   node bot/cli.js token 123456:ABC-DEF...
   ```
   Si responde con el @usuario del bot, el token sirve.
3. Agregá el bot al **canal** como administrador (con permiso para publicar y
   editar) y al **grupo** como administrador.
4. Detectá los ids automáticamente:
   ```
   node bot/cli.js adoptar
   ```
5. Comprobá que todo esté en orden:
   ```
   node bot/cli.js revisar
   ```
   Debe decir «soy admin» en canal y grupo. Si dice «NO soy admin», falta
   ascenderlo en Telegram.
6. Opcional: instalá los comandos del chat privado.
   ```
   node bot/cli.js comandos
   ```

## Lo que puede hacer

| Orden | Efecto |
| --- | --- |
| `nombre canal "ANK Oficial"` | cambia el nombre del canal |
| `nombre grupo "Código ANK"` | cambia el nombre del grupo |
| `descripcion canal "..."` | cambia la descripción (hasta 255 caracteres) |
| `foto canal ruta/foto.png` | cambia la imagen |
| `permisos grupo abierto` | todos pueden escribir |
| `permisos grupo solo-admins` | solo administradores escriben |
| `permisos grupo lectura` | nadie escribe, solo lectura |
| `admin grupo <id> si "Moderador"` | asciende con cargo visible |
| `admin grupo <id> no` | le quita los permisos de administrador |
| `restringir grupo <id> 30` | silencia 30 minutos (sin minutos = indefinido) |
| `liberar grupo <id>` | devuelve la palabra |
| `pin canal <mensajeId>` / `pin canal <id> quitar` | fija o suelta un mensaje |
| `publicar "texto"` | publica en el canal |
| `anuncio` | avisa de la última versión publicada del panel |
| `mensaje grupo "texto"` | escribe en el grupo |
| `pasada` | lee lo nuevo y devuelve los pendientes en JSON |
| `pendientes` | lista los mensajes sin responder |
| `marcar 3` | da por resuelto el pendiente 3 |
| `escuchar` | queda atento en tiempo real (PC encendida) |

`canal` y `grupo` también aceptan `@usuario` o el id numérico.

## Trabajo por turnos

El modo normal no deja nada corriendo: cuando haga falta, se ejecuta

```
node bot/cli.js pasada
```

y devuelve en JSON los comandos atendidos y los mensajes nuevos del grupo.
Después se responde con `mensaje grupo "..."` o desde el chat privado con
`/responder <n> <texto>`. `estado.json` guarda el cursor de lectura, así que
no se repiten mensajes entre pasadas.

## Comandos desde Telegram

Solo el dueño (el primer chat privado que le escriba al bot, o `dueno` en
`config.json`) puede usarlos:

- `/estado` — canal, grupo, miembros y si el bot es administrador
- `/pendientes` — mensajes sin responder
- `/publicar <texto>` — publica en el canal
- `/responder <n> <texto>` — responde al pendiente n
- `/marcar <n>` — lo da por resuelto

Cualquier otro usuario recibe «Este bot es privado.»

## Pruebas

```
node bot/pruebas/prueba.js
```

Levanta una API de Telegram simulada en `127.0.0.1:8799` y verifica 25
comportamientos (token, adopción de canal/grupo, nombres, descripción,
permisos, ascensos, restricciones, fijados, publicaciones, pasada y comandos).
No necesita token ni internet.

## Pendiente cuando llegue el token

- `token`, `adoptar` y `revisar` con los datos reales.
- Definir el estilo de las respuestas del grupo (`voz` en `config.json`).
- Decidir si el bot queda en modo `escuchar` o solo por turnos.
- Mensaje fijado de bienvenida con las reglas del grupo.
