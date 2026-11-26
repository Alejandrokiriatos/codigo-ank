# Usuarios de Código ANK

Cómo se cuenta y cómo consultarlo, para que el asistente del teléfono pueda
responder «¿cuántos usuarios tiene Código ANK?» sin inventar nada.

## Dónde está el dato

Resumen publicado en el repositorio (se rearma solo, una vez al día):

```
https://raw.githubusercontent.com/Alejandrokiriatos/codigo-ank/main/stats.json
```

Si el raw devuelve una copia vieja por caché, pedirlo por la API:

```bash
curl -s -H "Accept: application/vnd.github.raw" \
  https://api.github.com/repos/Alejandrokiriatos/codigo-ank/contents/stats.json
```

Contadores en vivo (sin CORS, solo para curl/terminal):

```bash
curl -s https://abacus.jasoncameron.dev/get/codigo-ank/instalaciones
curl -s https://abacus.jasoncameron.dev/get/codigo-ank/activos-d-AAAAMMDD
curl -s https://abacus.jasoncameron.dev/get/codigo-ank/activos-m-AAAAMM
```

`AAAAMMDD` y `AAAAMM` van en UTC, sin guiones. Ejemplo: `activos-d-20261027`.

## Campos de stats.json

| Campo | Significado |
| --- | --- |
| `actualizado` | fecha y hora UTC del último resumen |
| `instalaciones` | equipos que abrieron la app al menos una vez |
| `activosHoy` | equipos que abrieron la app hoy |
| `activosMes` | equipos que abrieron la app este mes |
| `promedio7` | promedio diario de los últimos siete días |
| `historial` | una fila por día: `{fecha, activos, instalaciones}` |
| `diasConDatos` | días registrados desde que existe el conteo |

## Cómo se cuenta

- La app manda tres avisos anónimos: uno la primera vez que se abre
  (`instalaciones`), uno por día (`activos-d-…`) y uno por mes (`activos-m-…`).
- No viaja ningún dato personal: ni nombre, ni correo, ni archivos, ni el
  contenido de los chats. Solo se incrementa un contador público.
- Cada equipo manda como máximo un aviso por período, aunque abra la app
  cien veces.
- El usuario puede desactivarlo en **Entorno → Usuarios → No enviar
  estadística anónima**. Si lo desactiva, ese equipo deja de contar.
- Reinstalar la app puede volver a contar una instalación (el flag vive en el
  almacenamiento de la app).
- Los valores son aproximados: sirven para tendencia y orden de magnitud, no
  para facturación.

## Interpretación rápida

- `instalaciones` siempre sube, nunca baja.
- `activosHoy` mide uso real del día; si es mucho menor que `instalaciones`,
  la mayoría instaló y no volvió.
- `activosMes` es el número más útil para decir «usuarios activos».
- `promedio7` suaviza los picos de fin de semana.
