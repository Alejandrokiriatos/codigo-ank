/* Foto para Casino ANK: ficha de casino con pica dorada.
   PNG escrito a mano, sin dependencias. */

'use strict';

const fs = require('fs');
const path = require('path');
const zlib = require('zlib');

const LADO = 512;
const ESCALA = 4;
const N = LADO * ESCALA;

const FONDO = [15, 22, 24];
const ORO = [224, 164, 88];
const ORO_TENUE = [38, 54, 58];

function dist(ax, ay, bx, by) {
  return Math.sqrt((ax - bx) * (ax - bx) + (ay - by) * (ay - by));
}

function enTriangulo(px, py, ax, ay, bx, by, cx, cy) {
  const d1 = (px - bx) * (ay - by) - (ax - bx) * (py - by);
  const d2 = (px - cx) * (by - cy) - (bx - cx) * (py - cy);
  const d3 = (px - ax) * (cy - ay) - (cx - ax) * (py - ay);
  const neg = d1 < 0 || d2 < 0 || d3 < 0;
  const pos = d1 > 0 || d2 > 0 || d3 > 0;
  return !(neg && pos);
}

/* Distancia de un punto al segmento (para trazos). */
function distSegmento(px, py, ax, ay, bx, by) {
  const vx = bx - ax;
  const vy = by - ay;
  const wx = px - ax;
  const wy = py - ay;
  const t = Math.max(0, Math.min(1, (wx * vx + wy * vy) / (vx * vx + vy * vy)));
  return dist(px, py, ax + t * vx, ay + t * vy);
}

/* La «A» de ANK, centrada y dentro del aro. */
function enA(px, py) {
  if (distSegmento(px, py, 256, 150, 186, 356) < 13) return true;
  if (distSegmento(px, py, 256, 150, 326, 356) < 13) return true;
  if (distSegmento(px, py, 205, 292, 307, 292) < 11) return true;
  return false;
}

function colorDe(px, py) {
  const x = px - 256;
  const y = py - 256;
  const r = Math.sqrt(x * x + y * y);

  /* aro exterior */
  if (r > 206 && r < 224) return ORO;

  /* muescas de la ficha */
  if (r > 178 && r < 200) {
    const ang = Math.atan2(y, x);
    const sector = Math.PI / 8; // 16 muescas
    const d = Math.abs(((ang % (sector * 2)) + sector * 2) % (sector * 2) - sector);
    if (d < 0.16) return ORO;
  }

  /* aro interior tenue */
  if (r > 150 && r < 158) return ORO_TENUE;

  /* la A de ANK */
  if (enA(px, py)) return ORO;

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
  const grande = Buffer.alloc(N * N * 3);
  for (let y = 0; y < N; y++) {
    const py = (y + 0.5) / ESCALA;
    for (let x = 0; x < N; x++) {
      const c = colorDe((x + 0.5) / ESCALA, py);
      const o = (y * N + x) * 3;
      grande[o] = c[0];
      grande[o + 1] = c[1];
      grande[o + 2] = c[2];
    }
  }

  const filas = [];
  for (let y = 0; y < LADO; y++) {
    const fila = Buffer.alloc(1 + LADO * 3);
    for (let x = 0; x < LADO; x++) {
      let r = 0, g = 0, b = 0;
      for (let sy = 0; sy < ESCALA; sy++) {
        for (let sx = 0; sx < ESCALA; sx++) {
          const o = ((y * ESCALA + sy) * N + (x * ESCALA + sx)) * 3;
          r += grande[o]; g += grande[o + 1]; b += grande[o + 2];
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
  ihdr[8] = 8; ihdr[9] = 2;

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
  const destino = process.argv[2] || path.join(__dirname, '..', 'assets', 'casino.png');
  process.stdout.write(JSON.stringify(generar(path.resolve(destino))) + '\n');
}

module.exports = { generar };
