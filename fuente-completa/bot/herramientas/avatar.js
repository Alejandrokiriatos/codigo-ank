/* Genera la foto del bot: fondo oscuro ANK con una «A» dorada.
   Sin dependencias: PNG escrito a mano (zlib incluido en Node). */

'use strict';

const fs = require('fs');
const path = require('path');
const zlib = require('zlib');

const LADO = 512;
const ESCALA = 4; // supermuestreo para bordes suaves
const N = LADO * ESCALA;

const FONDO = [15, 22, 24];      // #0f1618
const ORO = [224, 164, 88];      // #e0a458
const ORO_SUAVE = [38, 54, 58];  // #26363a

function distanciaSegmento(px, py, ax, ay, bx, by) {
  const vx = bx - ax;
  const vy = by - ay;
  const wx = px - ax;
  const wy = py - ay;
  const t = Math.max(0, Math.min(1, (wx * vx + wy * vy) / (vx * vx + vy * vy)));
  const dx = px - (ax + t * vx);
  const dy = py - (ay + t * vy);
  return Math.sqrt(dx * dx + dy * dy);
}

const puntos = [
  // patas de la A
  [256, 132, 158, 382, 30],
  [256, 132, 354, 382, 30],
  // travesaño
  [186, 300, 326, 300, 24]
];

function color(px, py) {
  // anillo tenue
  const dx = px - 256;
  const dy = py - 256;
  const r = Math.sqrt(dx * dx + dy * dy);
  if (r > 214 && r < 222) return ORO_SUAVE;

  for (let i = 0; i < puntos.length; i++) {
    const s = puntos[i];
    if (distanciaSegmento(px, py, s[0], s[1], s[2], s[3]) < s[4] / 2) return ORO;
  }
  return FONDO;
}

function crc32(buf) {
  let c;
  const tabla = crc32.tabla || (crc32.tabla = (function () {
    const t = new Int32Array(256);
    for (let n = 0; n < 256; n++) {
      c = n;
      for (let k = 0; k < 8; k++) c = c & 1 ? 0xedb88320 ^ (c >>> 1) : c >>> 1;
      t[n] = c;
    }
    return t;
  })());
  let crc = -1;
  for (let i = 0; i < buf.length; i++) crc = (crc >>> 8) ^ tabla[(crc ^ buf[i]) & 0xff];
  return (crc ^ -1) >>> 0;
}

function trozo(tipo, datos) {
  const largo = Buffer.alloc(4);
  largo.writeUInt32BE(datos.length, 0);
  const cuerpo = Buffer.concat([Buffer.from(tipo, 'ascii'), datos]);
  const crc = Buffer.alloc(4);
  crc.writeUInt32BE(crc32(cuerpo), 0);
  return Buffer.concat([largo, cuerpo, crc]);
}

function generar(destino) {
  // render a N x N
  const grande = Buffer.alloc(N * N * 3);
  for (let y = 0; y < N; y++) {
    const py = (y + 0.5) / ESCALA;
    for (let x = 0; x < N; x++) {
      const px = (x + 0.5) / ESCALA;
      const c = color(px, py);
      const o = (y * N + x) * 3;
      grande[o] = c[0];
      grande[o + 1] = c[1];
      grande[o + 2] = c[2];
    }
  }

  // promedio de bloques
  const filas = [];
  for (let y = 0; y < LADO; y++) {
    const fila = Buffer.alloc(1 + LADO * 3);
    fila[0] = 0;
    for (let x = 0; x < LADO; x++) {
      let r = 0, g = 0, b = 0;
      for (let sy = 0; sy < ESCALA; sy++) {
        for (let sx = 0; sx < ESCALA; sx++) {
          const o = ((y * ESCALA + sy) * N + (x * ESCALA + sx)) * 3;
          r += grande[o];
          g += grande[o + 1];
          b += grande[o + 2];
        }
      }
      const n = ESCALA * ESCALA;
      fila[1 + x * 3] = Math.round(r / n);
      fila[2 + x * 3] = Math.round(g / n);
      fila[3 + x * 3] = Math.round(b / n);
    }
    filas.push(fila);
  }

  const ihdr = Buffer.alloc(13);
  ihdr.writeUInt32BE(LADO, 0);
  ihdr.writeUInt32BE(LADO, 4);
  ihdr[8] = 8;   // bits por canal
  ihdr[9] = 2;   // RGB
  ihdr[10] = 0;
  ihdr[11] = 0;
  ihdr[12] = 0;

  const png = Buffer.concat([
    Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]),
    trozo('IHDR', ihdr),
    trozo('IDAT', zlib.deflateSync(Buffer.concat(filas), { level: 9 })),
    trozo('IEND', Buffer.alloc(0))
  ]);

  fs.mkdirSync(path.dirname(destino), { recursive: true });
  fs.writeFileSync(destino, png);
  return { archivo: destino, bytes: png.length, lado: LADO };
}

if (require.main === module) {
  const destino = process.argv[2] || path.join(__dirname, '..', 'assets', 'avatar.png');
  const r = generar(path.resolve(destino));
  process.stdout.write(JSON.stringify(r) + '\n');
}

module.exports = { generar };
