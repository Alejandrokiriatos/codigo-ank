/* Código ANK — servidor de descarga para la red local.
   Sin dependencias. Sirve la página y el APK en la LAN. */

const http = require('http');
const fs = require('fs');
const path = require('path');
const crypto = require('crypto');
const os = require('os');

const PORT = Number(process.env.PORT || 8787);
const ROOT = __dirname;
const APK = path.join(ROOT, '..', 'CodigoANK.apk');
const PAGE = path.join(ROOT, 'index.html');

const MIME = {
  '.html': 'text/html; charset=utf-8',
  '.apk': 'application/vnd.android.package-archive',
  '.css': 'text/css; charset=utf-8',
  '.js': 'text/javascript; charset=utf-8',
  '.png': 'image/png',
  '.svg': 'image/svg+xml'
};

let infoCache = null;

function info() {
  if (infoCache) return infoCache;
  const st = fs.statSync(APK);
  const sha = crypto.createHash('sha256').update(fs.readFileSync(APK)).digest('hex').toUpperCase();
  infoCache = {
    file: path.basename(APK),
    bytes: st.size,
    sha256: sha,
    updated: st.mtime.toISOString()
  };
  return infoCache;
}

function send(res, code, headers, body) {
  res.writeHead(code, Object.assign({ 'Cache-Control': 'no-store' }, headers));
  if (body == null) res.end();
  else res.end(body);
}

function serveApk(req, res) {
  let st;
  try {
    st = fs.statSync(APK);
  } catch (e) {
    return send(res, 404, { 'Content-Type': 'text/plain; charset=utf-8' }, 'No se encontró CodigoANK.apk');
  }

  const total = st.size;
  const range = req.headers.range;
  const name = 'CodigoANK.apk';

  const base = {
    'Content-Type': MIME['.apk'],
    'Accept-Ranges': 'bytes',
    'Content-Disposition': 'attachment; filename="' + name + '"',
    'Last-Modified': st.mtime.toUTCString()
  };

  if (range) {
    const m = /^bytes=(\d*)-(\d*)$/.exec(range);
    if (m) {
      let start = m[1] === '' ? null : Number(m[1]);
      let end = m[2] === '' ? null : Number(m[2]);
      if (start === null && end !== null) {
        start = Math.max(0, total - end);
        end = total - 1;
      } else {
        if (start === null) start = 0;
        if (end === null || end >= total) end = total - 1;
      }
      if (start > end || start >= total) {
        return send(res, 416, { 'Content-Range': 'bytes */' + total }, null);
      }
      rejilla('206', start, end);
      res.writeHead(206, Object.assign({}, base, {
        'Content-Range': 'bytes ' + start + '-' + end + '/' + total,
        'Content-Length': end - start + 1
      }));
      if (req.method === 'HEAD') return res.end();
      return fs.createReadStream(APK, { start, end }).pipe(res);
    }
  }

  res.writeHead(200, Object.assign({}, base, { 'Content-Length': total }));
  if (req.method === 'HEAD') return res.end();
  fs.createReadStream(APK).pipe(res);
}

function rejilla(codigo, start, end) {
  console.log('  → envio ' + codigo + ' bytes ' + start + '-' + end);
}

function servePage(req, res) {
  fs.readFile(PAGE, (err, buf) => {
    if (err) return send(res, 500, { 'Content-Type': 'text/plain; charset=utf-8' }, 'Falta index.html');
    send(res, 200, { 'Content-Type': MIME['.html'] }, buf);
  });
}

function ips() {
  const out = [];
  const ifaces = os.networkInterfaces();
  for (const name of Object.keys(ifaces)) {
    for (const it of ifaces[name] || []) {
      if (it.family === 'IPv4' && !it.internal) {
        out.push({ name, address: it.address });
      }
    }
  }
  return out;
}

const server = http.createServer((req, res) => {
  const url = (req.url || '/').split('?')[0];
  const ip = (req.socket.remoteAddress || '').replace('::ffff:', '');
  const when = new Date().toLocaleTimeString('es-ES');

  if (url === '/' || url === '/index.html') {
    console.log(when + '  ' + ip + '  página');
    return servePage(req, res);
  }
  if (url === '/CodigoANK.apk' || url === '/ank.apk') {
    console.log(when + '  ' + ip + '  descarga');
    return serveApk(req, res);
  }
  if (url === '/api/info') {
    try {
      return send(res, 200, { 'Content-Type': 'application/json; charset=utf-8' }, JSON.stringify(info()));
    } catch (e) {
      return send(res, 500, { 'Content-Type': 'application/json' }, JSON.stringify({ error: e.message }));
    }
  }
  if (url === '/favicon.ico') return send(res, 204, {}, null);

  send(res, 404, { 'Content-Type': 'text/plain; charset=utf-8' }, 'No encontrado');
});

if (!fs.existsSync(APK)) {
  console.error('ERROR: no existe ' + APK);
  process.exit(1);
}

server.listen(PORT, '0.0.0.0', () => {
  let st;
  try {
    st = info();
    console.log('');
    console.log('  Código ANK · descarga local');
    console.log('  ' + (st.bytes / 1048576).toFixed(2) + ' MB · SHA-256 ' + st.sha256);
    console.log('');
    console.log('  Abrí esta dirección en el teléfono:');
    const list = ips();
    if (!list.length) console.log('    (sin interfaces de red)');
    for (const it of list) {
      console.log('    http://' + it.address + ':' + PORT + '/     (' + it.name + ')');
    }
    console.log('');
    console.log('  En esta PC: http://localhost:' + PORT + '/');
    console.log('  Ctrl+C para detener.');
    console.log('');
  } catch (e) {
    console.error('ERROR leyendo el APK: ' + e.message);
  }
});

server.on('error', (e) => {
  if (e.code === 'EADDRINUSE') {
    console.error('El puerto ' + PORT + ' está ocupado. Probá con otro: $env:PORT=8790; node serve.js');
  } else {
    console.error(e.message);
  }
  process.exit(1);
});
