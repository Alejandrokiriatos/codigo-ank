/* Código ANK — actualizaciones del panel desde GitHub.

   Solo se descarga la capa web (ai.js y ai.css), unos cientos de KB. El APK
   completo se comparte aparte y no hace falta reinstalarlo para recibir
   mejoras de la interfaz o del asistente.

   Cada paquete viene firmado con HMAC-SHA256 usando una clave que solo está
   dentro del APK. Si alguien con acceso al repositorio publicara un ai.js
   distinto, la firma no coincidiría y la app seguiría usando el incluido.

   Formato de version.json:

     {
       "web": "1.5.2",
       "ai": "ank/ai.js",
       "css": "ank/ai.css",
       "notas": "qué cambió",
       "sig": "hmac de web + ai.js + ai.css"
     } */

(function () {
  'use strict';

  var REPO = 'Alejandrokiriatos/codigo-ank';
  var CLAVE_HEX = 'c266026ba0fbe7d5938b21e9c7474cc9c14bf57fbfb7d8e5c3374dafcd43ac5f';

  /* Versión del panel incluida en este APK. Se sube junto con ai.js/ai.css. */
  var INCLUIDA = '2.0.0';

  var K_VER = 'ank.web.version';
  var K_AI = 'ank.web.ai.js';
  var K_CSS = 'ank.web.ai.css';
  var K_NOTAS = 'ank.web.notas';
  var K_NUEVO = 'ank.upd.novedades';

  /* ------------------------------------------------------------------ *
   * SHA-256 / HMAC (implementación mínima, sin depender de WebCrypto)
   * ------------------------------------------------------------------ */

  var K256 = [
    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
  ];

  function utf8(texto) {
    if (typeof TextEncoder !== 'undefined') return new TextEncoder().encode(texto);
    var s = unescape(encodeURIComponent(texto));
    var b = new Uint8Array(s.length);
    for (var i = 0; i < s.length; i++) b[i] = s.charCodeAt(i);
    return b;
  }

  function sha256(datos) {
    var H = [0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
             0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19];
    var largo = datos.length;
    var bitsAlto = Math.floor(largo / 0x20000000);
    var bitsBajo = (largo << 3) >>> 0;
    var conRelleno = new Uint8Array((((largo + 8) >> 6) + 1) * 64);
    conRelleno.set(datos);
    conRelleno[largo] = 0x80;
    var dv = new DataView(conRelleno.buffer);
    dv.setUint32(conRelleno.length - 8, bitsAlto);
    dv.setUint32(conRelleno.length - 4, bitsBajo);

    var w = new Int32Array(64);
    for (var off = 0; off < conRelleno.length; off += 64) {
      for (var t = 0; t < 16; t++) w[t] = dv.getInt32(off + t * 4);
      for (t = 16; t < 64; t++) {
        var s0 = (w[t - 15] >>> 7 | w[t - 15] << 25) ^ (w[t - 15] >>> 18 | w[t - 15] << 14) ^ (w[t - 15] >>> 3);
        var s1 = (w[t - 2] >>> 17 | w[t - 2] << 15) ^ (w[t - 2] >>> 19 | w[t - 2] << 13) ^ (w[t - 2] >>> 10);
        w[t] = (w[t - 16] + s0 + w[t - 7] + s1) | 0;
      }
      var a = H[0], b = H[1], c = H[2], d = H[3], e = H[4], f = H[5], g = H[6], h = H[7];
      for (t = 0; t < 64; t++) {
        var S1 = (e >>> 6 | e << 26) ^ (e >>> 11 | e << 21) ^ (e >>> 25 | e << 7);
        var ch = (e & f) ^ (~e & g);
        var temp1 = (h + S1 + ch + K256[t] + w[t]) | 0;
        var S0 = (a >>> 2 | a << 30) ^ (a >>> 13 | a << 19) ^ (a >>> 22 | a << 10);
        var maj = (a & b) ^ (a & c) ^ (b & c);
        var temp2 = (S0 + maj) | 0;
        h = g; g = f; f = e; e = (d + temp1) | 0;
        d = c; c = b; b = a; a = (temp1 + temp2) | 0;
      }
      H[0] = (H[0] + a) | 0; H[1] = (H[1] + b) | 0;
      H[2] = (H[2] + c) | 0; H[3] = (H[3] + d) | 0;
      H[4] = (H[4] + e) | 0; H[5] = (H[5] + f) | 0;
      H[6] = (H[6] + g) | 0; H[7] = (H[7] + h) | 0;
    }

    var salida = new Uint8Array(32);
    var out = new DataView(salida.buffer);
    for (var k = 0; k < 8; k++) out.setUint32(k * 4, H[k] >>> 0);
    return salida;
  }

  function hmac(clave, mensaje) {
    var k = clave.length > 64 ? sha256(clave) : clave;
    var bloque = new Uint8Array(64);
    bloque.set(k);
    var ipad = new Uint8Array(64 + mensaje.length);
    var opad = new Uint8Array(64 + 32);
    for (var i = 0; i < 64; i++) {
      ipad[i] = bloque[i] ^ 0x36;
      opad[i] = bloque[i] ^ 0x5c;
    }
    ipad.set(mensaje, 64);
    opad.set(sha256(ipad), 64);
    return sha256(opad);
  }

  function deHex(hex) {
    var b = new Uint8Array(hex.length / 2);
    for (var i = 0; i < b.length; i++) b[i] = parseInt(hex.substr(i * 2, 2), 16);
    return b;
  }

  function aHex(bytes) {
    var s = '';
    for (var i = 0; i < bytes.length; i++) s += ('0' + bytes[i].toString(16)).slice(-2);
    return s;
  }

  function firmar(version, ai, css) {
    return aHex(hmac(deHex(CLAVE_HEX), utf8(version + '\n' + ai + '\n' + css)));
  }

  /* ------------------------------------------------------------------ *
   * lectura y descarga
   * ------------------------------------------------------------------ */

  function leer(clave, def) {
    try {
      var v = localStorage.getItem(clave);
      return v == null ? def : v;
    } catch (e) { return def; }
  }

  function guardar(clave, valor) {
    try { localStorage.setItem(clave, valor); return true; } catch (e) { return false; }
  }

  function base() {
    return REPO ? 'https://raw.githubusercontent.com/' + REPO + '/main/' : '';
  }

  function bajar(ruta) {
    return fetch(base() + ruta + '?t=' + Date.now(), { cache: 'no-store' }).then(function (r) {
      if (!r.ok) throw new Error('HTTP ' + r.status);
      return r.text();
    });
  }

  function comparar(a, b) {
    var pa = String(a || '0').split('.').map(Number);
    var pb = String(b || '0').split('.').map(Number);
    for (var i = 0; i < Math.max(pa.length, pb.length); i++) {
      var x = pa[i] || 0;
      var y = pb[i] || 0;
      if (x > y) return 1;
      if (x < y) return -1;
    }
    return 0;
  }

  /* ¿Hay una versión descargada que todavía no está activa? (requiere reabrir) */
  function pendiente(actual) {
    var guardada = leer(K_VER, '');
    return !!guardada && comparar(guardada, actual || INCLUIDA) > 0;
  }

  function avisar(version) {
    try {
      document.dispatchEvent(new CustomEvent('ank-upd', { detail: { version: version } }));
    } catch (e) {}
  }

  var r = {
    activo: function () { return !!REPO; },
    version: function () { return leer(K_VER, '') || 'incluida'; },
    notas: function () { return leer(K_NOTAS, ''); },
    incluida: function () { return INCLUIDA; },
    pendiente: pendiente,
    buscar: buscar
  };

  /* Consulta la versión publicada sin descargar nada. */
  function consultar() {
    if (!REPO) {
      return Promise.resolve({ ok: false, motivo: 'sin repositorio configurado' });
    }
    return fetch(base() + 'version.json?t=' + Date.now(), { cache: 'no-store' })
      .then(function (resp) {
        if (!resp.ok) throw new Error('HTTP ' + resp.status);
        return resp.json();
      })
      .then(function (info) {
        if (!info || !info.web) throw new Error('respuesta inválida');
        var guardada = leer(K_VER, '');
        var local = comparar(guardada, INCLUIDA) > 0 ? guardada : INCLUIDA;
        var hay = comparar(info.web, local) > 0;
        return {
          ok: true,
          hay: hay,
          version: info.web,
          actual: local,
          notas: info.notas || '',
          info: info
        };
      })
      .catch(function (e) {
        return { ok: false, motivo: e && e.message ? e.message : String(e) };
      });
  }

  /* Descarga con progreso real (XHR informa bytes recibidos). */
  function bajarProgreso(ruta, avance) {
    var url = base() + ruta + '?t=' + Date.now();
    return new Promise(function (ok, mal) {
      try {
        var x = new XMLHttpRequest();
        x.open('GET', url, true);
        x.onprogress = function (e) {
          try {
            if (avance) avance(e.loaded || 0, e.lengthComputable ? e.total : 0);
          } catch (err) {}
        };
        x.onload = function () {
          if (x.status >= 200 && x.status < 300) ok(x.responseText);
          else mal(new Error('HTTP ' + x.status));
        };
        x.onerror = function () { mal(new Error('sin conexión')); };
        x.ontimeout = function () { mal(new Error('tiempo agotado')); };
        x.send();
      } catch (e) {
        mal(e);
      }
    });
  }

  /* Descarga, verifica la firma y deja el paquete guardado.
     `progreso(fraccion, texto)` se llama mientras baja. */
  function descargar(info, progreso) {
    if (!info || !info.web) {
      return Promise.resolve({ ok: false, motivo: 'paquete sin versión' });
    }
    var avisarProgreso = function (p, texto) {
      try { if (progreso) progreso(Math.max(0, Math.min(1, p)), texto); } catch (e) {}
    };

    avisarProgreso(0.01, 'Descargando…');
    return bajarProgreso(info.ai || 'ank/ai.js', function (l, t) {
      avisarProgreso(t ? 0.03 + 0.64 * (l / t) : 0.4, 'Descargando…');
    })
      .then(function (ai) {
        return bajarProgreso(info.css || 'ank/ai.css', function (l, t) {
          avisarProgreso(t ? 0.7 + 0.2 * (l / t) : 0.8, 'Descargando…');
        }).then(function (css) {
          return { ai: ai || '', css: css || '' };
        });
      })
      .then(function (t) {
        avisarProgreso(0.92, 'Verificando firma…');
        var ai = t.ai;
        var css = t.css;
        if (ai.length < 20000 || ai.indexOf('ankAIInstalled') === -1 ||
            ai.indexOf('ANK_AI_ENGINE_BUNDLE_BEGIN') === -1) {
          throw new Error('el paquete no parece válido');
        }
        if (!info.sig || firmar(info.web, ai, css) !== String(info.sig).toLowerCase()) {
          throw new Error('firma incorrecta');
        }
        if (!guardar(K_AI, ai)) throw new Error('sin espacio para guardar');
        if (css.indexOf('.ank-ai-sheet') !== -1) guardar(K_CSS, css);
        guardar(K_VER, info.web);
        guardar(K_NOTAS, info.notas || '');
        avisar(info.web);
        avisarProgreso(1, 'Listo');
        return { ok: true, version: info.web, notas: info.notas || '' };
      })
      .catch(function (e) {
        return { ok: false, motivo: e && e.message ? e.message : String(e) };
      });
  }

  /* Consulta + descarga, como antes. Se mantiene por compatibilidad. */
  function buscar(silencioso) {
    return consultar().then(function (c) {
      if (!c.ok) return c;
      if (!c.hay) return { ok: true, actualizado: true, version: c.version };
      return descargar(c.info).then(function (d) {
        if (!d.ok) return { ok: false, motivo: d.motivo };
        return { ok: true, actualizado: false, version: d.version };
      });
    });
  }

  /* Deja anotado qué se instaló, para mostrar el historial al volver. */
  function anotarNovedades(info) {
    if (!info || !info.web) return;
    guardar(K_NUEVO, JSON.stringify({
      version: info.web,
      notas: info.notas || leer(K_NOTAS, '')
    }));
  }

  /* Aplica lo descargado recargando la interfaz. */
  function aplicar(info) {
    anotarNovedades(info);
    try { location.reload(); } catch (e) {}
  }

  /* Historial pendiente de mostrar (lo consume ai.js al arrancar). */
  function novedades() {
    var crudo = leer(K_NUEVO, '');
    if (!crudo) return null;
    try {
      var d = JSON.parse(crudo);
      return d && d.version ? d : null;
    } catch (e) { return null; }
  }

  function olvidarNovedades() {
    try { localStorage.removeItem(K_NUEVO); } catch (e) {}
  }

  r.consultar = consultar;
  r.descargar = descargar;
  r.aplicar = aplicar;
  r.novedades = novedades;
  r.olvidarNovedades = olvidarNovedades;

  window.__ankUpd = r;

  /* La comprobación la dispara ai.js para poder preguntar antes de descargar. */
})();
