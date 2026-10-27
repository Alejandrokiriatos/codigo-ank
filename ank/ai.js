/* Código ANK — asistente local sobre OpenCode (sandbox Alpine).
   Panel propio, sin dependencias externas: usa Terminal/Executor del plugin
   de terminal ya incluido en la app. */

(function () {
  'use strict';

  if (window.__ankAIInstalled) return;
  window.__ankAIInstalled = true;

  /* ------------------------------------------------------------------ *
   * constantes
   * ------------------------------------------------------------------ */

  var ASSET_TGZ = 'opencode/opencode-arm64.tar.gz';
  var MODEL_DEFAULT = 'opencode/deepseek-v4.1-flash-free';
  var MODELOS_SUGERIDOS = [
    'opencode/deepseek-v4.1-flash-free',
    'opencode/glm-5.3-flash-free',
    'opencode/mimo-v2.6-flash-free',
    'opencode/nemotron-3.5-lightning-free',
    'opencode/flint-40b-free',
    'opencode/big-pickle'
  ];
  var LOG_MAX = 400;
  var VARIANTES_BASE = ['low', 'medium', 'high', 'max'];
  /* Versión de este panel. Se sube en cada publicación del canal. */
  var PANEL_VERSION = '1.5.8';

  /* Fecha de esta publicación, visible en Entorno. */
  var PANEL_FECHA = '27/10/2026';

  var CHATS_KEY = 'ank.chats.v1';
  var CHAT_MAX = 40;      // chats guardados
  var MSG_MAX = 200;      // mensajes por chat
  var MEM_MAX = 40;       // líneas de bitácora por proyecto
  var ANSI = /\x1b\[[0-9;?]*[ -\/]*[@-~]|\x1b\][^\x07]*(\x07|\x1b\\)|\x1b[@-Z\\-_]/g;

  /* ------------------------------------------------------------------ *
   * estado
   * ------------------------------------------------------------------ */

  var st = {
    prefix: '',
    pub: '',
    work: '/public/proyectos',
    project: leer('ank.ai.project', 'ank'),
    model: leer('ank.ai.model', MODEL_DEFAULT),
    modo: leer('ank.ai.modo', 'build'),          // build | plan
    variant: leer('ank.ai.variant', ''),         // '' = automático
    variantes: {},                               // modelo -> [variantes]
    sandbox: 'desconocido', // desconocido | falta | listo | error
    binario: 'desconocido', // desconocido | falta | listo | error
    credencial: 'desconocido', // desconocido | falta | listo | error
    modelos: [],
    corriendo: false,
    proc: null,
    continuar: false,
    tab: 'chat',
    log: [],
    msgs: [],
    chats: [],
    chatId: '',
    memoria: '',
    memoriaProyecto: '',
    probando: false,
    probandoPrueba: false
  };

  var cur = null; // burbuja del bot en curso
  var panel = null; // nodo raíz del panel
  var mountTimer = null;

  /* ------------------------------------------------------------------ *
   * utilidades
   * ------------------------------------------------------------------ */

  function leer(clave, def) {
    try {
      var v = localStorage.getItem(clave);
      return v == null || v === '' ? def : v;
    } catch (e) {
      return def;
    }
  }

  function guardar(clave, valor) {
    try {
      localStorage.setItem(clave, valor);
    } catch (e) {}
  }

  function q(sel, raiz) {
    return (raiz || document).querySelector(sel);
  }

  /* Igual que en ank.js: la acción se dispara en `pointerdown` capturado en
     `window` (antes de los manejadores de `document` de la app) y el `click`
     posterior se descarta. Reusa el enganche de ank.js si ya existe. */
  function pulsar(el, fn) {
    if (!el) return;
    el.setAttribute('data-ank-tap', '');
    el.__ankAccion = fn;
  }

  if (!window.__ankTapHook) {
    (function () {
      function buscar(e) {
        var t = e.target;
        if (!t || !t.closest) return null;
        var el = t.closest('[data-ank-tap]');
        return el && typeof el.__ankAccion === 'function' ? el : null;
      }
      function golpe(e) {
        var el = buscar(e);
        if (!el) return;
        var ahora = Date.now();
        if (el.__ankUltimo && ahora - el.__ankUltimo < 500) {
          if (e.cancelable) e.preventDefault();
          e.stopPropagation();
          return;
        }
        el.__ankUltimo = ahora;
        if (e.cancelable) e.preventDefault();
        e.stopPropagation();
        try { el.__ankAccion(); } catch (err) {
          log('e', 'accion: ' + (err && err.message ? err.message : err));
        }
      }
      window.addEventListener('pointerdown', golpe, true);
      window.addEventListener('click', golpe, true);
      window.__ankTapHook = true;
    })();
  }

  function esc(s) {
    return String(s == null ? '' : s)
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;')
      .replace(/"/g, '&quot;');
  }

  function limpiar(s) {
    return String(s == null ? '' : s).replace(ANSI, '').replace(/\r/g, '');
  }

  function hora() {
    var d = new Date();
    return ('0' + d.getHours()).slice(-2) + ':' + ('0' + d.getMinutes()).slice(-2) + ':' + ('0' + d.getSeconds()).slice(-2);
  }

  function log(nivel, texto) {
    var linea = { t: hora(), n: nivel, m: String(texto == null ? '' : texto) };
    st.log.push(linea);
    if (st.log.length > LOG_MAX) st.log.shift();
    if (nivel === 'e') console.warn('[ANK IA]', linea.m);
    else console.log('[ANK IA]', linea.m);
    pintarLog();
  }

  /* Aviso breve en pantalla. Usa el de la app si existe; si no, uno propio. */
  function aviso(texto) {
    var msg = String(texto == null ? '' : texto);
    try {
      if (typeof window.toast === 'function') return window.toast(msg);
    } catch (e) {}
    try {
      var el = q('#ank-toast');
      if (!el) {
        el = document.createElement('div');
        el.id = 'ank-toast';
        (document.body || document.documentElement).appendChild(el);
      }
      el.textContent = msg;
      el.classList.add('on');
      clearTimeout(el.__ankT);
      el.__ankT = setTimeout(function () { el.classList.remove('on'); }, 2600);
    } catch (err) {
      log('w', msg);
    }
  }

  function shq(s) {
    return "'" + String(s).replace(/'/g, "'\\''") + "'";
  }

  function limpioRuta(s) {
    return String(s || '').replace(/[^A-Za-z0-9._\-\/]/g, '').replace(/^\/+/, '').replace(/\/{2,}/g, '/');
  }

  function limpioModelo(s) {
    return String(s || '').replace(/[^A-Za-z0-9._\-\/]/g, '');
  }

  function listo() {
    return st.sandbox === 'listo' && st.binario === 'listo' && st.credencial === 'listo';
  }

  function env() {
    return [
      'export HOME=/public',
      'export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin',
      'export TERM=xterm-256color',
      'export OPENCODE_DISABLE_AUTOUPDATE=1',
      'export OPENCODE_DISABLE_LSP_DOWNLOAD=1',
      'export OPENCODE_DISABLE_CLAUDE_CODE=1',
      'export OPENCODE_DISABLE_PRUNE=1'
    ].join('; ') + '; ';
  }

  /* ------------------------------------------------------------------ *
   * puente con la app
   * ------------------------------------------------------------------ */

  function Ex() {
    return window.Executor || null;
  }

  function Term() {
    return window.Terminal || null;
  }

  function conSistema(metodo) {
    var args = Array.prototype.slice.call(arguments, 1);
    return new Promise(function (resolve, reject) {
      var sys = window.system;
      if (!sys || typeof sys[metodo] !== 'function') return reject(new Error('system.' + metodo + ' no disponible'));
      sys[metodo].apply(sys, args.concat([resolve, reject]));
    });
  }

  function dirsIniciales() {
    return conSistema('getFilesDir').then(function (dir) {
      st.prefix = dir;
      st.pub = dir + '/public';
      st.work = '/public/proyectos';
      return Promise.all([
        conSistema('mkdirs', dir + '/public/.ank').catch(function () {}),
        conSistema('mkdirs', dir + '/public/.local/share/opencode').catch(function () {}),
        conSistema('mkdirs', dir + '/public/.config/opencode').catch(function () {}),
        conSistema('mkdirs', dir + '/public/proyectos').catch(function () {})
      ]);
    });
  }

  function escribir(ruta, contenido) {
    return conSistema('writeText', ruta, contenido);
  }

  function copiarPortapapeles(texto) {
    return new Promise(function (resolve, reject) {
      var cb = window.cordova && window.cordova.plugins && window.cordova.plugins.clipboard;
      if (!cb || typeof cb.copy !== 'function') return reject(new Error('portapapeles no disponible'));
      cb.copy(texto, resolve, reject);
    });
  }

  /* ------------------------------------------------------------------ *
   * ejecución en el sandbox
   * ------------------------------------------------------------------ */

  /* El plugin entrega el comando como argumentos sueltos a `source`, así que
     lo que empiece por un builtin (`export`, `set`, …) se interpreta como
     programa y falla. Envolver todo en `sh -c '<guion>'` lo manda entero al
     sandbox y evita ese problema. */
  function comilla(guion) {
    return "'" + String(guion).replace(/'/g, "'\\''") + "'";
  }

  function acotar(guion) {
    return 'sh -c ' + comilla(guion);
  }

  function ejecutar(comando, fondo) {
    var ex = Ex();
    if (!ex) return Promise.reject(new Error('terminal no disponible'));
    var runner = fondo && ex.BackgroundExecutor ? ex.BackgroundExecutor : ex;
    return Promise.resolve(runner.execute(acotar(env() + comando), true));
  }

  function shell(comando, fondo) {
    return ejecutar(comando + '; echo "__rc=$?"', fondo).then(function (salida) {
      salida = limpiar(salida);
      var m = /__rc=(\d+)\s*$/.exec(salida);
      var rc = m ? Number(m[1]) : null;
      return { salida: salida.replace(/__rc=\d+\s*$/, '').trim(), rc: rc };
    });
  }

  function esperarSandbox(intentos) {
    var n = intentos == null ? 40 : intentos;
    return conTimeout(ejecutar('echo "__ok"'), 8000)
      .then(function (r) {
        if (limpiar(r).indexOf('__ok') !== -1) return true;
        throw new Error('sin respuesta');
      })
      .catch(function () {
        if (n <= 0) throw new Error('El entorno no respondió');
        return new Promise(function (res) {
          setTimeout(res, 750);
        }).then(function () {
          return esperarSandbox(n - 1);
        });
      });
  }

  function conTimeout(promesa, ms) {
    return new Promise(function (resolve, reject) {
      var hecho = false;
      var t = setTimeout(function () {
        if (hecho) return;
        hecho = true;
        reject(new Error('tiempo de espera agotado'));
      }, ms);
      Promise.resolve(promesa).then(function (v) {
        if (hecho) return;
        hecho = true;
        clearTimeout(t);
        resolve(v);
      }, function (e) {
        if (hecho) return;
        hecho = true;
        clearTimeout(t);
        reject(e);
      });
    });
  }

  /* Los extras (bash, readline, libstdc++) pueden faltar cuando el entorno se
     instaló con una versión anterior del APK: se aplican al vuelo. */
  function asegurarExtras() {
    return shell('if [ -f /usr/lib/libstdc++.so.6 ] && [ -x /bin/bash ]; then echo "OK"; else echo "FALTA"; fi', true)
      .then(function (r) {
        if (r.salida.indexOf('OK') !== -1) return true;
        return conSistema('getArch').then(function (arch) {
          var dir = { 'arm64-v8a': 'arm64', 'armeabi-v7a': 'arm32', 'x86_64': 'x64' }[arch];
          if (!dir) return false;
          return conSistema('extractAsset', 'alpine_assets/' + dir + '/addons.tar.gz', st.prefix + '/addons.tar.gz')
            .then(function () {
              return shell('tar --no-same-owner -xf $PREFIX/addons.tar.gz -C $PREFIX/alpine && echo "OK"', true);
            })
            .then(function (x) {
              log('i', x.salida.indexOf('OK') !== -1 ? 'Extras del entorno aplicados.' : 'No se pudieron aplicar los extras.');
            });
        });
      })
      .catch(function (e) {
        log('w', 'Extras del entorno: ' + (e && e.message ? e.message : e));
      });
  }

  function asegurarSandbox() {
    var T = Term();
    if (!T) return Promise.reject(new Error('El plugin de terminal no está disponible'));
    return Promise.resolve(T.isInstalled())
      .then(function (ok) {
        if (!ok) throw new Error('El entorno Alpine no está instalado');
        return T.isAxsRunning();
      })
      .then(function (vivo) {
        if (vivo) return true;
        log('i', 'Iniciando el entorno…');
        return Promise.resolve(T.startAxs(false, function (l) { log('i', limpiar(l)); })).then(function () {
          return esperarSandbox();
        });
      })
      .then(function () {
        return asegurarExtras();
      })
      .then(function () {
        return true;
      })
      .catch(function (e) {
        st.sandbox = 'error';
        throw e;
      });
  }

  /* ------------------------------------------------------------------ *
   * comprobaciones
   * ------------------------------------------------------------------ */

  function chequearTodo(profundo) {
    if (st.probando) return Promise.resolve();
    st.probando = true;
    pintar();
    return dirsIniciales()
      .then(function () {
        return Term() ? Term().isInstalled() : false;
      })
      .then(function (ok) {
        st.sandbox = ok ? 'listo' : 'falta';
        log('i', ok ? 'Entorno Alpine disponible.' : 'Entorno Alpine no instalado.');
        if (!ok) {
          st.binario = 'falta';
          st.credencial = 'falta';
          return null;
        }
        if (!profundo) return null;
        return asegurarSandbox()
          .then(function () {
            return shell('command -v opencode >/dev/null 2>&1 && opencode --version 2>&1 || echo "NO_INSTALADO"', true);
          })
          .then(function (r) {
            var salida = (r.salida || '').trim();
            var primera = salida.split('\n')[0] || '';
            var roto = !salida || salida === 'NO_INSTALADO' || /error loading|no such file|not found|cannot/i.test(salida);
            st.binario = roto ? (primera === 'NO_INSTALADO' || !primera ? 'falta' : 'error') : 'listo';
            if (roto) {
              log('e', primera === 'NO_INSTALADO' ? 'Binario del asistente ausente.' : 'Asistente: ' + primera);
              st.credencial = 'falta';
              return null;
            }
            st.version = primera;
            log('i', 'Binario del asistente ' + primera + '.');
            return shell('opencode auth list 2>&1 < /dev/null', true).then(function (a) {
              var salida = a.salida || '';
              var tiene = /api key|oauth|opencode|anthropic|openai|openrouter|google|deepseek|groq/i.test(salida) &&
                !/no credentials|not authenticated|0 providers/i.test(salida);
              st.credencial = tiene ? 'listo' : 'falta';
              log('i', tiene ? 'Credenciales presentes.' : 'Sin credenciales configuradas.');
              if (!tiene) return null;
              return cargarModelos(true);
            });
          });
      })
      .catch(function (e) {
        log('w', e && e.message ? e.message : String(e));
        if (st.sandbox !== 'listo') st.sandbox = 'error';
      })
      .then(function () {
        st.probando = false;
        pintar();
      });
  }

  function parsearSalidaModelos(texto) {
    var lineas = String(texto || '').split('\n');
    var modelos = [];
    var variantes = {};
    var actual = null;
    var buffer = null;

    for (var i = 0; i < lineas.length; i++) {
      var l = lineas[i].replace(/\r/g, '');
      var t = l.trim();

      if (buffer !== null) {
        buffer.push(l);
        if (t === '}' || t === '},') {
          try {
            var info = JSON.parse(buffer.join('\n').replace(/,\s*$/, ''));
            var v = info && info.variants;
            var lista = [];
            if (Array.isArray(v)) {
              lista = v.map(function (x) {
                return typeof x === 'string' ? x : (x && (x.id || x.name)) || '';
              });
            } else if (v && typeof v === 'object') {
              lista = Object.keys(v);
            }
            if (actual && lista.length) variantes[actual] = lista.filter(Boolean);
          } catch (e) {}
          buffer = null;
        }
        continue;
      }

      if (/^[A-Za-z0-9._-]+\/[A-Za-z0-9._-]+$/.test(t)) {
        actual = t;
        if (modelos.indexOf(t) === -1) modelos.push(t);
        continue;
      }

      if (t === '{' && actual) buffer = [l];
    }

    return { modelos: modelos, variantes: variantes };
  }

  function cargarModelos(silencioso) {
    return shell('opencode models --verbose 2>/dev/null < /dev/null', true).then(function (r) {
      var datos = parsearSalidaModelos(r.salida);
      var lista = datos.modelos;
      if (lista.length) {
        st.modelos = lista;
        st.variantes = datos.variantes;
        if (lista.indexOf(st.model) === -1) {
          var libre = lista.filter(function (m) { return /free|pickle/i.test(m); })[0];
          if (libre) {
            st.model = libre;
            guardar('ank.ai.model', libre);
          }
        }
      } else if (!silencioso) {
        log('w', 'No se pudieron listar modelos; se usan los sugeridos.');
      }
      return lista;
    }).catch(function () {});
  }

  /* Variantes (esfuerzo) que acepta el modelo elegido. */
  function variantesDe(modelo) {
    return (st.variantes && st.variantes[modelo]) || VARIANTES_BASE;
  }

  function esGratis(modelo) {
    return /free|pickle/i.test(modelo);
  }

  function opcionesModelos(actual) {
    var lista = st.modelos.length ? st.modelos.slice() : MODELOS_SUGERIDOS.slice();
    if (lista.indexOf(actual) === -1) lista = [actual].concat(lista);

    var gratis = lista.filter(esGratis);
    var propias = lista.filter(function (m) { return !esGratis(m); });

    function opciones(arr) {
      return arr.map(function (m) {
        return '<option value="' + esc(m) + '"' + (m === actual ? ' selected' : '') + '>' + esc(m) + '</option>';
      }).join('');
    }

    var html = '';
    if (gratis.length) html += '<optgroup label="Gratis">' + opciones(gratis) + '</optgroup>';
    if (propias.length) html += '<optgroup label="Tu API">' + opciones(propias) + '</optgroup>';
    return html;
  }

  function opcionesEsfuerzo(modelo) {
    var vs = variantesDe(modelo);
    if (st.variant && vs.indexOf(st.variant) === -1) vs = [st.variant].concat(vs);
    var html = '<option value="">Auto</option>';
    html += vs.map(function (v) {
      return '<option value="' + esc(v) + '"' + (v === st.variant ? ' selected' : '') + '>' + esc(v) + '</option>';
    }).join('');
    return html;
  }

  /* ------------------------------------------------------------------ *
   * instalación
   * ------------------------------------------------------------------ */

  function instalarEntorno() {
    var T = Term();
    if (!T) return aviso('El terminal no está disponible.');
    if (st.sandbox === 'listo') return;
    st.sandbox = 'instalando';
    pintar();
    log('i', 'Instalando entorno Alpine. Puede tardar varios minutos.');
    abrirConsola();
    Promise.resolve()
      .then(function () {
        return T.install(
          function (l) { consolaEscribir(limpiar(l)); },
          function (l) { consolaEscribir(limpiar(l)); }
        );
      })
      .then(function (ok) {
        if (!ok) throw new Error('La instalación del entorno falló');
        st.sandbox = 'listo';
        consolaEscribir('Entorno listo.');
        return asegurarSandbox();
      })
      .then(function () {
        return shell('if [ ! -f /etc/ssl/certs/ca-certificates.crt ]; then apk update >/dev/null 2>&1; apk add --no-cache ca-certificates >/dev/null 2>&1; fi; echo OK', true);
      })
      .then(function () {
        log('i', 'Certificados listos.');
        return chequearTodo(true);
      })
      .catch(function (e) {
        st.sandbox = 'error';
        var m = e && e.message ? e.message : String(e);
        log('e', m);
        consolaEscribir('ERROR: ' + m);
      })
      .then(function () {
        st.sandbox = st.sandbox === 'instalando' ? 'error' : st.sandbox;
        pintar();
      });
  }

  function instalarAsistente() {
    if (st.binario === 'listo' || st.binario === 'instalando') return;
    if (st.sandbox !== 'listo') return aviso('Primero prepará el entorno.');
    st.binario = 'instalando';
    pintar();
    abrirConsola();
    var destino = st.prefix + '/public/.ank/opencode.tar.gz';
    var tick = null;
    var pararTick = function () {
      if (tick) { clearInterval(tick); tick = null; }
    };
    consolaEscribir('Comprobando espacio…');

    shell("df -k /public | tail -n 1 | awk '{print $4}'", true)
      .then(function (r) {
        var libre = parseInt((r.salida || '0').trim(), 10) || 0;
        consolaEscribir('Espacio libre: ' + Math.round(libre / 1024) + ' MB');
        if (libre < 320 * 1024) throw new Error('Espacio insuficiente: se necesitan ~320 MB libres en el almacenamiento de la app.');
        consolaEscribir('Copiando paquete…');
        return conSistema('extractAsset', ASSET_TGZ, destino);
      })
      .then(function () {
        consolaEscribir('Descomprimiendo (217 MB)…');
        tick = setInterval(function () {
          shell('du -sh /public/.ank/opencode 2>/dev/null | cut -f1', true).then(function (d) {
            if (d.salida) consolaEscribir('... ' + d.salida);
          }).catch(function () {});
        }, 5000);
        return shell(
          'mkdir -p /public/.ank/opencode && rm -rf /public/.ank/opencode/* && ' +
          'tar -xzf /public/.ank/opencode.tar.gz -C /public/.ank/opencode && ' +
          'chmod +x /public/.ank/opencode/package/bin/opencode && ' +
          'ln -sf /public/.ank/opencode/package/bin/opencode /usr/local/bin/opencode && echo OK',
          true
        );
      })
      .then(function (r) {
        pararTick();
        if ((r.salida || '').indexOf('OK') === -1) throw new Error('La extracción no terminó bien: ' + r.salida);
        consolaEscribir('Verificando binario…');
        return shell('opencode --version 2>&1', true);
      })
      .then(function (r) {
        var v = (r.salida || '').trim().split('\n').filter(Boolean)[0] || '';
        if (!/\d+\.\d+/.test(v) || /error loading|no such file|not found|cannot/i.test(v)) {
          throw new Error('El binario no arranca: ' + (v || 'sin salida'));
        }
        consolaEscribir('Versión: ' + v);
        log('i', 'OpenCode instalado: ' + v);
        st.binario = 'listo';
        st.version = v;
        return shell('rm -f /public/.ank/opencode.tar.gz', true);
      })
      .then(function () {
        return chequearTodo(true);
      })
      .catch(function (e) {
        pararTick();
        st.binario = 'error';
        var m = e && e.message ? e.message : String(e);
        consolaEscribir('ERROR: ' + m);
        log('e', m);
      })
      .then(function () {
        pintar();
      });
  }

  /* Prueba corta de punta a punta: sirve para saber si el asistente arranca,
     si ve el mensaje y si recibe respuesta del modelo. Todo con límite de
     tiempo para que nunca deje el panel colgado. */
  function probarAsistente() {
    if (st.probandoPrueba) return;
    st.probandoPrueba = true;
    abrirConsola();
    consolaEscribir('Probando el asistente, puede tardar hasta un minuto.');
    log('i', 'Prueba del asistente iniciada.');

    var proyecto = limpioRuta(st.project) || 'ank';
    var ws = st.work + '/' + proyecto;
    var modelo = limpioModelo(st.model) || MODEL_DEFAULT;

    function paso(titulo, comando, segundos) {
      var guion = 'timeout ' + segundos + ' sh -c ' + comilla(comando);
      consolaEscribir('$ ' + titulo);
      return shell(guion, true).then(function (r) {
        var texto = (r.salida || '').trim();
        consolaEscribir(texto ? texto : '(sin salida)');
        if (r.rc === 124 || /timed out/i.test(texto)) {
          log('w', titulo + ': sin respuesta en ' + segundos + ' s.');
        }
        return r;
      });
    }

    asegurarSandbox()
      .then(function () {
        return paso('version', 'opencode --version < /dev/null 2>&1', 30);
      })
      .then(function () {
        return paso('prompt', 'ls -l /public/.ank/prompt.txt 2>&1', 15);
      })
      .then(function () {
        return paso('red', 'wget -q -T 8 -O /dev/null https://models.dev/api.json && echo RED_OK || echo RED_FALLA', 20);
      })
      .then(function () {
        return paso(
          'respuesta',
          'cd ' + shq(ws) + ' && mkdir -p . && opencode run --auto --model ' + shq(modelo) +
            ' --title prueba "Responde solo OK" < /dev/null 2>&1',
          90
        );
      })
      .then(function () {
        consolaEscribir('Prueba terminada.');
        log('i', 'Prueba del asistente terminada.');
      })
      .catch(function (e) {
        var m = e && e.message ? e.message : String(e);
        consolaEscribir('ERROR: ' + m);
        log('e', 'Prueba: ' + m);
      })
      .then(function () {
        st.probandoPrueba = false;
      });
  }

  function guardarCredencial(proveedor, clave) {
    var p = String(proveedor || '').trim().toLowerCase().replace(/[^a-z0-9._-]/g, '');
    var k = String(clave || '').trim();
    if (!p) return aviso('Elegí un proveedor.');
    if (k.length < 8) return aviso('La clave parece incompleta.');
    var ruta = st.prefix + '/public/.local/share/opencode/auth.json';
    return conSistema('mkdirs', st.prefix + '/public/.local/share/opencode')
      .then(function () {
        return escribir(ruta, JSON.stringify(makeAuth(p, k), null, 2));
      })
      .then(function () {
        return shell('chmod 600 /public/.local/share/opencode/auth.json 2>/dev/null; echo OK', true);
      })
      .then(function () {
        log('i', 'Credencial guardada para ' + p);
        aviso('Credencial guardada.');
        return chequearTodo(true);
      })
      .catch(function (e) {
        log('e', 'No se pudo guardar la credencial: ' + (e && e.message ? e.message : e));
        aviso('No se pudo guardar la credencial.');
      });
  }

  function makeAuth(proveedor, clave) {
    var o = {};
    o[proveedor] = { type: 'api', key: clave };
    return o;
  }

  /* ------------------------------------------------------------------ *
   * consola de configuración
   * ------------------------------------------------------------------ */

  var consolaBuf = [];
  var consolaProc = null;

  function abrirConsola() {
    st.tab = 'entorno';
    pintar();
    setTimeout(function () {
      var c = q('.ank-ai-console');
      if (c) c.scrollTop = c.scrollHeight;
    }, 30);
  }

  function consolaEscribir(texto) {
    if (texto == null) return;
    var s = limpiar(texto);
    if (!s && s !== '') return;
    consolaBuf.push(s);
    if (consolaBuf.length > 300) consolaBuf.shift();
    var c = q('.ank-ai-console');
    if (c) {
      c.textContent = consolaBuf.join('\n');
      c.scrollTop = c.scrollHeight;
    }
  }

  function consolaComando(cmd) {
    var ex = Ex();
    if (!ex || !cmd) return;
    consolaEscribir('$ ' + cmd);
    if (consolaProc) {
      Promise.resolve(ex.write(consolaProc, cmd + '\n')).catch(function () {});
      return;
    }
    Promise.resolve(ex.start(cmd, function (tipo, datos) {
      consolaEscribir(String(datos == null ? '' : datos));
      if (tipo === 'exit') consolaEscribir('[fin]');
    }, true)).then(function (uuid) {
      consolaProc = uuid;
    }).catch(function (e) {
      consolaEscribir('ERROR: ' + (e && e.message ? e.message : e));
    });
  }

  /* ------------------------------------------------------------------ *
   * historial de chats
   * ------------------------------------------------------------------ */

  function cargarChats() {
    try {
      var raw = localStorage.getItem(CHATS_KEY);
      var arr = raw ? JSON.parse(raw) : [];
      st.chats = Array.isArray(arr) ? arr.filter(function (c) {
        return c && c.id && c.msgs && Array.isArray(c.msgs);
      }) : [];
    } catch (e) {
      st.chats = [];
    }
    var ultimo = chatActual();
    if (!ultimo) {
      var delProyecto = chatsDe(st.project);
      if (delProyecto.length) {
        st.chatId = delProyecto[0].id;
        st.msgs = delProyecto[0].msgs;
      }
    }
  }

  function guardarChats() {
    try {
      var recorte = st.chats.slice(0, CHAT_MAX).map(function (c) {
        return {
          id: c.id,
          proyecto: c.proyecto,
          titulo: c.titulo || '',
          creado: c.creado || 0,
          actualizado: c.actualizado || 0,
          sesion: c.sesion || '',
          msgs: (c.msgs || []).slice(-MSG_MAX).map(function (m) {
            return { rol: m.rol, texto: String(m.texto || '').slice(0, 12000), ts: m.ts || 0 };
          })
        };
      });
      localStorage.setItem(CHATS_KEY, JSON.stringify(recorte));
    } catch (e) {
      log('w', 'No se pudo guardar el historial: ' + (e && e.message ? e.message : e));
    }
  }

  function chatActual() {
    for (var i = 0; i < st.chats.length; i++) {
      if (st.chats[i].id === st.chatId) return st.chats[i];
    }
    return null;
  }

  function chatsDe(proyecto) {
    return st.chats.filter(function (c) { return c.proyecto === proyecto; });
  }

  function nuevoChat(proyecto) {
    var c = {
      id: 'c' + Date.now().toString(36) + Math.random().toString(36).slice(2, 6),
      proyecto: proyecto,
      titulo: '',
      creado: Date.now(),
      actualizado: Date.now(),
      sesion: '',
      msgs: []
    };
    st.chats.unshift(c);
    st.chats = st.chats.slice(0, CHAT_MAX);
    st.chatId = c.id;
    st.msgs = c.msgs;
    guardarChats();
    return c;
  }

  function tocarChat() {
    var c = chatActual();
    if (!c) return;
    c.msgs = st.msgs;
    c.actualizado = Date.now();
    guardarChats();
  }

  /* Devuelve el identificador de sesión de OpenCode de un chat. Se busca por
     título (ANK:<id>) la primera vez y se guarda para no repetir la consulta. */
  function resolverSesion(chat) {
    if (!chat) return Promise.resolve('');
    if (chat.sesion) return Promise.resolve(chat.sesion);
    return shell('opencode session list -n 100 --format json 2>/dev/null < /dev/null', true)
      .then(function (r) {
        var txt = String(r.salida || '');
        var ini = txt.indexOf('[');
        if (ini === -1) return '';
        var lista = JSON.parse(txt.slice(ini));
        var marca = 'ANK:' + chat.id;
        for (var i = 0; i < lista.length; i++) {
          if (lista[i] && lista[i].title === marca && lista[i].id) {
            chat.sesion = lista[i].id;
            guardarChats();
            return chat.sesion;
          }
        }
        return '';
      })
      .catch(function () { return ''; });
  }

  /* ------------------------------------------------------------------ *
   * memoria del proyecto
   * ------------------------------------------------------------------ */

  function rutaMemProyecto(proyecto) {
    return st.prefix + '/public/proyectos/' + (proyecto || 'ank') + '/AGENTS.md';
  }

  function rutaMemGlobal() {
    return st.prefix + '/public/.config/opencode/AGENTS.md';
  }

  function leerTexto(ruta) {
    return shell('cat ' + shq(ruta) + ' 2>/dev/null', true)
      .then(function (r) { return String(r.salida || ''); })
      .catch(function () { return ''; });
  }

  function hoy() {
    var d = new Date();
    function dos(n) { return ('0' + n).slice(-2); }
    return d.getFullYear() + '-' + dos(d.getMonth() + 1) + '-' + dos(d.getDate()) +
      ' ' + dos(d.getHours()) + ':' + dos(d.getMinutes());
  }

  function plantillaGlobal() {
    return [
      '# Memoria global de Código ANK',
      '',
      'La app lee este archivo en todos los proyectos. Mantenerlo corto.',
      '',
      '## Reglas',
      '- El detalle de cada proyecto vive en el AGENTS.md de su propia carpeta.',
      '- Este archivo es solo un índice: no mezclar decisiones de un proyecto con otro.',
      '- Si el pedido es sobre otro proyecto, no reutilizar código ni conclusiones de este.',
      '- Idioma de trabajo: español. Código y nombres técnicos en inglés.',
      '',
      '<!-- proyectos -->',
      '## Proyectos',
      '<!-- /proyectos -->',
      ''
    ].join('\n');
  }

  function plantillaProyecto(proyecto) {
    return [
      '# Proyecto: ' + proyecto,
      '',
      '> Ámbito: SOLO este proyecto. No aplicar aquí decisiones de otras carpetas.',
      '',
      '## Objetivo',
      '(completar)',
      '',
      '## Estado',
      '- Creado desde Código ANK el ' + hoy() + '.',
      '',
      '## Decisiones',
      '- (se anotan a medida que se trabaja)',
      '',
      '## Bitácora',
      ''
    ].join('\n');
  }

  /* Reescribe el índice de proyectos del archivo global. */
  function actualizarIndice(proyecto) {
    return leerTexto(rutaMemGlobal()).then(function (txt) {
      if (!txt) txt = plantillaGlobal();
      var lista = {};
      st.chats.forEach(function (c) {
        if (!c.proyecto) return;
        var prev = lista[c.proyecto];
        if (!prev || (c.actualizado || 0) > (prev.actualizado || 0)) lista[c.proyecto] = c;
      });
      var nombres = Object.keys(lista).sort();
      var lineas = ['## Proyectos', ''];
      if (!nombres.length) lineas.push('- (todavía ninguno)');
      nombres.forEach(function (n) {
        var c = lista[n];
        var u = c.titulo ? ' · ' + c.titulo : '';
        var fecha = c.actualizado ? new Date(c.actualizado).toISOString().slice(0, 10) : '';
        lineas.push('- **' + n + '** — ' + (chatsDe(n).length) + ' chat(s), ' + fecha + u);
      });
      var bloque = '<!-- proyectos -->\n' + lineas.join('\n') + '\n<!-- /proyectos -->';
      if (txt.indexOf('<!-- proyectos -->') !== -1 && txt.indexOf('<!-- /proyectos -->') !== -1) {
        txt = txt.replace(/<!-- proyectos -->[\s\S]*<!-- \/proyectos -->/, bloque);
      } else {
        txt += '\n' + bloque + '\n';
      }
      return escribir(rutaMemGlobal(), txt);
    });
  }

  function asegurarMemoria(proyecto) {
    if (!st.prefix) return Promise.resolve();
    var proy = proyecto || limpioRuta(st.project) || 'ank';
    return conSistema('mkdirs', st.prefix + '/public/proyectos/' + proy)
      .then(function () { return conSistema('mkdirs', st.prefix + '/public/.config/opencode'); })
      .then(function () { return leerTexto(rutaMemGlobal()); })
      .then(function (txt) {
        if (txt.trim()) return null;
        return escribir(rutaMemGlobal(), plantillaGlobal());
      })
      .then(function () { return leerTexto(rutaMemProyecto(proy)); })
      .then(function (txt) {
        if (txt.trim()) return null;
        return escribir(rutaMemProyecto(proy), plantillaProyecto(proy));
      })
      .then(function () { return actualizarIndice(proy); })
      .catch(function (e) {
        log('w', 'Memoria: ' + (e && e.message ? e.message : e));
      });
  }

  /* Añade una línea a la bitácora del proyecto. Determinista y barato: no
     gasta tokens, solo deja constancia de lo hablado. */
  function anotarMemoria(proyecto, pedido, respuesta) {
    var proy = proyecto || limpioRuta(st.project) || 'ank';
    function plano(s, n) {
      return String(s || '').replace(/\s+/g, ' ').trim().slice(0, n);
    }
    var linea = '- ' + hoy() + ' · ' + plano(pedido, 160) + ' → ' + plano(respuesta, 260);
    if (!plano(respuesta, 40)) linea = '- ' + hoy() + ' · ' + plano(pedido, 160);
    return leerTexto(rutaMemProyecto(proy)).then(function (txt) {
      if (!txt.trim()) txt = plantillaProyecto(proy);
      if (txt.indexOf('## Bitácora') === -1) txt += '\n## Bitácora\n';
      var partes = txt.split('## Bitácora');
      var cuerpo = (partes[1] || '').split('\n');
      cuerpo.push(linea);
      var lineas = cuerpo.filter(function (l) { return l.trim().indexOf('- ') === 0; });
      lineas = lineas.slice(-MEM_MAX);
      partes[1] = '\n' + lineas.join('\n') + '\n';
      return escribir(rutaMemProyecto(proy), partes.join('## Bitácora'));
    }).then(function () {
      return actualizarIndice(proy);
    }).catch(function (e) {
      log('w', 'No se pudo anotar la memoria: ' + (e && e.message ? e.message : e));
    });
  }

  /* ------------------------------------------------------------------ *
   * chat
   * ------------------------------------------------------------------ */

  function nuevoMensaje(rol, texto) {
    var m = { rol: rol, texto: texto || '', crudo: '', ts: Date.now(), nodo: null };
    st.msgs.push(m);
    var c = chatActual();
    if (c && rol === 'user' && !c.titulo) {
      c.titulo = String(texto || '').replace(/\s+/g, ' ').trim().slice(0, 48);
      guardarChats();
    }
    return m;
  }

  function burbuja(m) {
    var d = document.createElement('div');
    d.className = 'ank-ai-msg ' + (m.rol === 'user' ? 'user' : 'bot');
    if (m.rol === 'user') d.textContent = m.texto;
    else {
      var t = document.createElement('span');
      t.className = 'ank-ai-txt';
      d.appendChild(t);
    }
    var cont = q('.ank-ai-msgs');
    if (cont) {
      var vacio = q('.ank-ai-empty', cont);
      if (vacio) vacio.remove();
      cont.appendChild(d);
      cont.scrollTop = cont.scrollHeight;
    }
    m.nodo = d;
    return d;
  }

  /* Pinta un mensaje ya guardado (sin animación ni cursor). */
  function pintarBurbuja(m) {
    var d = burbuja(m);
    if (m.rol === 'user') {
      d.textContent = m.texto || '';
      return d;
    }
    d.innerHTML = '';
    var trozos = mdLite(m.texto || '');
    if (!String(m.texto || '').trim()) {
      d.innerHTML = '<span class="ank-ai-tool">Sin respuesta del modelo.</span>';
      return d;
    }
    trozos.forEach(function (t) {
      if (t.tipo === 'codigo') {
        var pre = document.createElement('pre');
        pre.className = 'ank-ai-pre';
        pre.textContent = t.texto;
        d.appendChild(pre);
      } else {
        var sp = document.createElement('span');
        sp.className = 'ank-ai-txt';
        sp.innerHTML = t.html;
        d.appendChild(sp);
      }
    });
    return d;
  }

  function pintarMensajes() {
    var cont = q('.ank-ai-msgs');
    if (!cont) return;
    cont.innerHTML = '';
    if (!st.msgs.length) {
      cont.innerHTML = '<div class="ank-ai-empty"><b>Asistente de ANK</b>' +
        'Trabaja sobre los archivos del proyecto y ejecuta comandos en el entorno de la app. ' +
        'No modifica nada fuera de la carpeta de trabajo.</div>';
      return;
    }
    st.msgs.forEach(function (m) {
      if (m.rol === 'bot' && !String(m.texto || '').trim()) return;
      pintarBurbuja(m);
    });
    cont.scrollTop = cont.scrollHeight;
  }

  function abrirTurno() {
    var m = nuevoMensaje('bot', '');
    burbuja(m);
    cur = {
      msg: m,
      el: m.nodo,
      txt: q('.ank-ai-txt', m.nodo),
      buf: '',
      bloque: '',
      cursor: document.createElement('span')
    };
    cur.cursor.className = 'ank-ai-cursor';
    cur.el.appendChild(cur.cursor);
    return cur;
  }

  function escribirBot(texto) {
    if (!cur) abrirTurno();
    if (!cur.txt) {
      cur.txt = document.createElement('span');
      cur.txt.className = 'ank-ai-txt';
      cur.el.insertBefore(cur.txt, cur.cursor);
    }
    cur.buf += texto;
    cur.bloque = (cur.bloque || '') + texto;
    cur.txt.textContent = cur.buf;
    cur.msg.texto = cur.buf;
    autoScroll();
  }

  function herramienta(nombre, detalle) {
    if (!cur) abrirTurno();
    cur.txt = null;
    cur.bloque = '';
    var d = document.createElement('span');
    d.className = 'ank-ai-tool';
    d.innerHTML = '<i>›</i> ' + esc(nombre) + (detalle ? ' ' + esc(detalle) : '');
    cur.el.insertBefore(d, cur.cursor);
    autoScroll();
  }

  function cerrarTurno(error) {
    if (!cur) return;
    if (cur.cursor && cur.cursor.parentNode) cur.cursor.remove();
    if (!cur.buf.trim() && !error && !cur.el.querySelector('.ank-ai-tool')) {
      cur.el.innerHTML = '<span class="ank-ai-tool">Sin respuesta del modelo.</span>';
    } else if (cur.txt) {
      var trozos = mdLite(cur.bloque || cur.buf);
      var frag = document.createDocumentFragment();
      trozos.forEach(function (t) {
        if (t.tipo === 'codigo') {
          var pre = document.createElement('pre');
          pre.className = 'ank-ai-pre';
          pre.textContent = t.texto;
          frag.appendChild(pre);
        } else {
          var sp = document.createElement('span');
          sp.className = 'ank-ai-txt';
          sp.innerHTML = t.html;
          frag.appendChild(sp);
        }
      });
      cur.txt.parentNode.replaceChild(frag, cur.txt);
      cur.txt = null;
    }
    if (error) cur.el.classList.add('err');
    cur = null;
    autoScroll();
  }

  /* markdown mínimo: bloques de código, código en línea, negrita */
  function mdLite(texto) {
    var partes = String(texto).split(/```/);
    var salida = [];
    for (var i = 0; i < partes.length; i++) {
      if (i % 2 === 1) {
        var cuerpo = partes[i].replace(/^[A-Za-z0-9+#-]*\n/, '');
        salida.push({ tipo: 'codigo', texto: cuerpo.replace(/\n$/, '') });
      } else {
        var html = esc(partes[i])
          .replace(/`([^`\n]+)`/g, '<code>$1</code>')
          .replace(/\*\*([^*\n]+)\*\*/g, '<b>$1</b>')
          .replace(/^#{1,6}\s+(.+)$/gm, '<b>$1</b>');
        salida.push({ tipo: 'texto', html: html });
      }
    }
    return salida;
  }

  function autoScroll() {
    var c = q('.ank-ai-msgs');
    if (!c) return;
    var cerca = c.scrollHeight - c.scrollTop - c.clientHeight < 90;
    if (cerca) c.scrollTop = c.scrollHeight;
  }

  var pendiente = '';

  function procesarSalida(tipo, datos) {
    var texto = String(datos == null ? '' : datos);
    st.crudo = (st.crudo || '') + texto + '\n';
    if (st.crudo.length > 400000) st.crudo = st.crudo.slice(-200000);
    if (tipo === 'stderr') {
      var l = limpiar(texto).trim();
      if (l) log('w', l);
      if (/error|not found|denied|failed|panic/i.test(l)) {
        escribirBot('\n' + l + '\n');
      }
      return;
    }
    if (tipo !== 'stdout') return;
    pendiente += limpiar(texto) + '\n';
    var partes = pendiente.split('\n');
    pendiente = partes.pop();
    for (var i = 0; i < partes.length; i++) clasificar(partes[i]);
  }

  function clasificar(linea) {
    var l = linea.replace(/\s+$/, '');
    if (!l) {
      escribirBot('\n');
      return;
    }
    if (/^\s*(\$|>|┃|\||\[[a-z-]+\]|●|○|◆|◇|■|□|✓|✗|→|←|↑|↓)/.test(l)) {
      var nombre = l.replace(/^\s*[$>┃|]\s*/, '').trim();
      var partes = nombre.split(/\s+/);
      herramienta(partes[0], partes.slice(1).join(' ').slice(0, 120));
      return;
    }
    escribirBot(l + '\n');
  }

  function enviar() {
    if (st.corriendo) return;
    var ta = q('.ank-ai-input');
    if (!ta) return;
    var texto = String(ta.value || '').trim();
    if (!texto) return;
    if (!listo()) {
      aviso('Falta preparar el entorno o conectar la cuenta.');
      st.tab = 'entorno';
      pintar();
      return;
    }

    var proyecto = limpioRuta(st.project) || 'ank';
    var ws = st.work + '/' + proyecto;
    var modelo = limpioModelo(st.model) || MODEL_DEFAULT;
    var chat = chatActual();
    if (!chat || chat.proyecto !== proyecto) chat = nuevoChat(proyecto);

    ta.value = '';
    ta.style.height = '';
    nuevoMensaje('user', texto);
    burbuja(st.msgs[st.msgs.length - 1]);
    abrirTurno();
    tocarChat();

    var rutaPrompt = st.prefix + '/public/.ank/prompt.txt';
    var runner = Ex().BackgroundExecutor || Ex();
    var variante = String(st.variant || '').trim();
    st.corriendo = true;
    st.crudo = '';
    pintar();

    function alSalir(codigo) {
      st.corriendo = false;
      st.proc = null;
      cerrarTurno(false);
      if (String(codigo).trim() !== '0') log('w', 'opencode terminó con código ' + codigo);
      tocarChat();
      var bot = st.msgs[st.msgs.length - 1];
      anotarMemoria(proyecto, texto, bot && bot.rol === 'bot' ? bot.texto : '');
      if (!chat.sesion) {
        resolverSesion(chat).then(function () { pintarChats(); });
      }
      pintar();
    }

    asegurarMemoria(proyecto)
      .then(function () { return resolverSesion(chat); })
      .then(function (sid) {
        var cmd = 'mkdir -p ' + shq(ws) + ' && cd ' + shq(ws) +
          ' && opencode run --auto --agent ' + shq(st.modo === 'plan' ? 'plan' : 'build') +
          ' --model ' + shq(modelo) +
          (variante ? ' --variant ' + shq(variante) : '') +
          (sid ? ' --session ' + shq(sid) : ' --title ' + shq('ANK:' + chat.id)) +
          ' "$(cat /public/.ank/prompt.txt)"' +
          /* Sin TTY, opencode lee stdin hasta EOF antes de arrancar: con el tubo
             del ejecutor abierto se queda esperando para siempre. */
          ' < /dev/null 2>&1';
        return escribir(rutaPrompt, texto).then(function () {
          log('i', 'Ejecutando opencode en ' + ws);
          return runner.start(acotar(env() + cmd), function (tipo, datos) {
            if (tipo === 'exit') {
              alSalir(datos);
              return;
            }
            try {
              procesarSalida(tipo, datos);
            } catch (e) {
              log('e', 'render: ' + e.message);
            }
          }, true);
        });
      })
      .then(function (uuid) {
        st.proc = uuid;
      })
      .catch(function (e) {
        st.corriendo = false;
        st.proc = null;
        var m = e && e.message ? e.message : String(e);
        log('e', m);
        escribirBot('No se pudo ejecutar el asistente: ' + m);
        cerrarTurno(true);
        tocarChat();
        pintar();
      });
  }

  function detener() {
    if (!st.proc) return;
    var runner = Ex().BackgroundExecutor || Ex();
    Promise.resolve(runner.stop(st.proc)).catch(function () {}).then(function () {
      st.corriendo = false;
      st.proc = null;
      cerrarTurno(false);
      pintar();
    });
  }

  /* ------------------------------------------------------------------ *
   * render
   * ------------------------------------------------------------------ */

  function pintarEstado() {
    var s = q('.ank-ai-status');
    if (!s) return;
    var txt;
    var detalle = st.model + (st.modo === 'plan' ? ' · plan' : '') + (st.variant ? ' · ' + st.variant : '');
    if (st.corriendo) txt = 'trabajando · ' + detalle;
    else if (!listo()) {
      if (st.sandbox === 'falta') txt = 'falta el entorno';
      else if (st.sandbox === 'instalando') txt = 'instalando entorno';
      else if (st.binario === 'falta') txt = 'falta el asistente';
      else if (st.binario === 'instalando') txt = 'instalando asistente';
      else if (st.credencial === 'falta') txt = 'falta la cuenta';
      else txt = 'revisar entorno';
    } else txt = 'listo · ' + detalle;
    s.innerHTML = '<span class="ank-ai-dot ' + (st.corriendo ? 'busy' : listo() ? 'ok' : st.sandbox === 'error' || st.binario === 'error' ? 'err' : '') + '"></span><span>' + esc(txt) + '</span>';
  }

  function pintarBotonEnviar() {
    var b = q('.ank-ai-send');
    if (!b) return;
    if (st.corriendo) {
      b.innerHTML = '&#9632;';
      b.classList.add('stop');
      b.disabled = false;
      b.setAttribute('data-accion', 'detener');
    } else {
      b.innerHTML = '&#8593;';
      b.classList.remove('stop');
      b.disabled = false;
      b.setAttribute('data-accion', 'enviar');
    }
  }

  function pintarModelos() {
    var sel = q('#ank-ai-modelo');
    if (sel) sel.innerHTML = opcionesModelos(st.model);

    var chat = q('#ank-ai-chat-modelo');
    if (chat) chat.innerHTML = opcionesModelos(st.model);

    var esf = q('#ank-ai-esfuerzo');
    if (esf) esf.innerHTML = opcionesEsfuerzo(st.model);

    var modo = q('.ank-ai-modo');
    if (modo) {
      var plan = st.modo === 'plan';
      modo.textContent = plan ? 'Plan' : 'Construir';
      modo.classList.toggle('plan', plan);
      modo.setAttribute('title', plan
        ? 'Modo Plan: solo lee y propone, no edita archivos'
        : 'Modo Construir: puede crear y editar archivos');
    }
  }

  function pintarPasos() {
    var cont = q('.ank-ai-steps');
    if (!cont) return;

    var pasos = [
      {
        n: '01',
        t: 'Entorno Linux',
        d: st.sandbox === 'listo'
          ? 'Alpine listo. Es el espacio donde corre el asistente.'
          : st.sandbox === 'instalando'
            ? 'Descomprimiendo el entorno incluido en la app…'
            : st.sandbox === 'error'
              ? '<b>Falló.</b> Revisá el registro y reintentá.'
              : 'Ya viene incluido: se descomprime la primera vez (~20 MB). No usa internet.',
        e: st.sandbox,
        a: st.sandbox === 'listo' ? null : { txt: st.sandbox === 'instalando' ? 'Instalando' : 'Preparar', fn: 'instalar-entorno', dis: st.sandbox === 'instalando' }
      },
      {
        n: '02',
        t: 'Asistente',
        d: st.binario === 'listo'
          ? 'OpenCode ' + esc(st.version || '') + ' instalado.'
          : st.binario === 'instalando'
            ? 'Descomprimiendo el binario…'
            : st.binario === 'error'
              ? '<b>Falló.</b> Revisá el registro.'
              : 'Ya viene incluido en la app: se descomprime la primera vez (~217 MB).',
        e: st.binario,
        a: st.binario === 'listo' ? null : { txt: st.binario === 'instalando' ? 'Instalando' : 'Instalar', fn: 'instalar-asistente', dis: st.binario === 'instalando' || st.sandbox !== 'listo' }
      },
      {
        n: '03',
        t: 'Cuenta',
        d: st.credencial === 'listo'
          ? 'Credencial guardada. Modelos disponibles: ' + (st.modelos.length || 0) + '.'
          : 'Pegá una clave de OpenCode (opencode.ai/auth) o de otro proveedor.',
        e: st.credencial,
        a: null
      },
      {
        n: '04',
        t: 'Proyecto',
        d: 'Carpeta de trabajo dentro de la app: <b>/public/proyectos/' + esc(limpioRuta(st.project) || 'ank') + '</b>',
        e: listo() ? 'listo' : 'falta',
        a: null
      }
    ];

    cont.innerHTML = pasos.map(function (p) {
      var cls = p.e === 'listo' ? 'done' : p.e === 'instalando' ? 'run' : p.e === 'error' ? 'fail' : '';
      var btn = p.a ? '<button class="ank-ai-btn' + (p.e === 'falta' ? ' primary' : '') + '" data-accion="' + p.a.fn + '"' + (p.a.dis ? ' disabled' : '') + '>' + esc(p.a.txt) + '</button>' : '';
      return '<div class="ank-ai-step ' + cls + '">' +
        '<div class="ank-ai-n">' + p.n + '</div>' +
        '<div><div class="ank-ai-sname">' + p.t + '</div><div class="ank-ai-sdesc">' + p.d + '</div></div>' +
        '<div class="ank-ai-sact">' + btn + '</div>' +
        '</div>';
    }).join('');
  }

  function pintarLog() {
    var pre = q('.ank-ai-log');
    if (!pre) return;
    pre.innerHTML = st.log.slice(-250).map(function (l) {
      return '<span class="t">' + esc(l.t) + '</span> <span class="' + (l.n === 'e' ? 'e' : l.n === 'w' ? 'w' : '') + '">' + esc(l.m) + '</span>';
    }).join('\n');
    pre.scrollTop = pre.scrollHeight;
  }

  function fechaCorta(ts) {
    if (!ts) return '';
    var d = new Date(ts);
    var hoyD = new Date();
    var mismoDia = d.toDateString() === hoyD.toDateString();
    function dos(n) { return ('0' + n).slice(-2); }
    return mismoDia
      ? dos(d.getHours()) + ':' + dos(d.getMinutes())
      : dos(d.getDate()) + '/' + dos(d.getMonth() + 1);
  }

  function pintarChats() {
    var cont = q('.ank-ai-chatlist');
    if (!cont) return;
    var proyecto = limpioRuta(st.project) || 'ank';
    var lista = chatsDe(proyecto);
    if (!lista.length) {
      cont.innerHTML = '<div class="ank-ai-empty">Todavía no hay chats en <b>' + esc(proyecto) +
        '</b>. Lo que hables queda guardado acá y en la memoria del proyecto.</div>';
      return;
    }
    cont.innerHTML = lista.map(function (c) {
      var ultimo = (c.msgs || []).filter(function (m) { return m.rol === 'user'; }).pop();
      var vista = ultimo ? String(ultimo.texto).replace(/\s+/g, ' ').slice(0, 90) : 'Sin mensajes';
      var activo = c.id === st.chatId ? ' active' : '';
      return '<div class="ank-ai-chat' + activo + '" data-accion="abrir-chat" data-valor="' + esc(c.id) + '">' +
        '<div class="ank-ai-chat-t">' + esc(c.titulo || 'Chat sin título') + '</div>' +
        '<div class="ank-ai-chat-p">' + esc(vista) + '</div>' +
        '<div class="ank-ai-chat-m"><span>' + esc(fechaCorta(c.actualizado)) + '</span>' +
        '<span>' + (c.msgs || []).length + ' mensajes</span>' +
        '<button class="ank-ai-chat-x" data-accion="borrar-chat" data-valor="' + esc(c.id) + '" aria-label="Borrar">×</button></div>' +
        '</div>';
    }).join('');
  }

  function pintarVersion() {
    var caja = q('.ank-ai-ver');
    if (!caja) return;
    var u = window.__ankUpd;
    if (!u) {
      caja.textContent = 'incluida en la app';
      return;
    }
    var v = u.version ? u.version() : 'incluida';
    var notas = u.notas ? u.notas() : '';
    var pend = u.pendiente && u.pendiente(PANEL_VERSION);
    caja.textContent = 'Panel ' + v + ' · ' + PANEL_FECHA + (notas ? ' · ' + notas : '') +
      (pend ? ' · actualización descargada, reiniciá la app' : '');
    caja.classList.toggle('upd', !!pend);
  }

  /* Punto dorado en el botón del asistente mientras haya una actualización
     descargada que todavía necesita reabrir la app. */
  function marcarActualizacion() {
    var btn = q('#ank-dock .ank-ia');
    if (!btn) return;
    var u = window.__ankUpd;
    var hay = !!(u && u.pendiente && u.pendiente(PANEL_VERSION));
    btn.classList.toggle('upd', hay);
    if (hay) {
      var v = u.version ? u.version() : '';
      btn.setAttribute('title', 'Actualización ' + v + ' lista · reiniciá la app');
      btn.setAttribute('aria-label', 'Asistente de ANK, actualización ' + v + ' lista');
    } else {
      btn.setAttribute('title', 'Asistente de ANK');
      btn.setAttribute('aria-label', 'Asistente de ANK');
    }
  }

  /* ------------------------------------------------------------------ *
   * actualizaciones de la app
   * ------------------------------------------------------------------ */

  var UPD_OMITIDA = 'ank.upd.omitida';

  function actualizador() {
    var u = window.__ankUpd;
    if (!u || !u.activo || !u.activo()) return null;
    return u;
  }

  function leerOmitida() {
    try { return localStorage.getItem(UPD_OMITIDA) || ''; } catch (e) { return ''; }
  }

  function omitirVersion(v) {
    try { localStorage.setItem(UPD_OMITIDA, String(v || '')); } catch (e) {}
  }

  function cerrarDialogo() {
    var el = q('#ank-upd');
    if (el) el.classList.remove('open');
  }

  /* Pide confirmación y aplica la actualización. */
  function dialogoActualizacion(vista) {
    var u = actualizador();
    if (!u) return;
    var el = q('#ank-upd');
    if (!el) {
      el = document.createElement('div');
      el.id = 'ank-upd';
      (document.body || document.documentElement).appendChild(el);
    }
    var notas = String(vista.notas || '').trim();
    el.innerHTML =
      '<div class="ank-upd-box">' +
        '<div class="ank-upd-head">Nueva actualización</div>' +
        '<div class="ank-upd-ver">ANK ' + esc(vista.version) + '</div>' +
        (notas ? '<div class="ank-upd-notas">' + esc(notas) + '</div>' :
          '<div class="ank-upd-notas">Mejoras de la interfaz y del asistente. No hace falta reinstalar la app.</div>') +
        '<div class="ank-upd-hint"></div>' +
        '<div class="ank-upd-actions">' +
          '<button type="button" class="ank-upd-btn ghost" data-upd="despues">Después</button>' +
          '<button type="button" class="ank-upd-btn" data-upd="ahora">Actualizar</button>' +
        '</div>' +
      '</div>';
    el.classList.add('open');

    var hint = q('.ank-upd-hint', el);
    function texto(t) { if (hint) hint.textContent = t || ''; }

    var bDespues = q('[data-upd="despues"]', el);
    var bAhora = q('[data-upd="ahora"]', el);

    pulsar(bDespues, function () {
      omitirVersion(vista.version);
      cerrarDialogo();
      marcarActualizacion();
    });

    pulsar(bAhora, function () {
      if (bAhora.disabled) return;
      bAhora.disabled = true;
      texto('Descargando…');
      var tarea = vista.info ? u.descargar(vista.info)
        : Promise.resolve({ ok: true, version: vista.version });
      tarea.then(function (r) {
        if (!r || !r.ok) {
          bAhora.disabled = false;
          texto('No se pudo actualizar: ' + (r && r.motivo ? r.motivo : 'error de red'));
          return;
        }
        texto('Aplicando…');
        setTimeout(function () { u.aplicar(); }, 350);
      });
    });
  }

  /* Busca novedades. `forzar` muestra el diálogo aunque el usuario haya dicho
     «después» antes; `silencioso` evita avisos cuando ya está al día. */
  function revisarActualizacion(silencioso, forzar) {
    var u = actualizador();
    if (!u) {
      if (!silencioso) aviso('Las actualizaciones todavía no están configuradas.');
      return Promise.resolve();
    }
    if (u.pendiente && u.pendiente(PANEL_VERSION)) {
      dialogoActualizacion({ version: u.version(), notas: u.notas(), info: null });
      return Promise.resolve();
    }
    if (!silencioso) aviso('Buscando actualización…');
    return u.consultar().then(function (c) {
      if (!c || !c.ok) {
        if (!silencioso) aviso('No se pudo comprobar: ' + (c && c.motivo ? c.motivo : 'sin conexión'));
        return;
      }
      if (!c.hay) {
        if (!silencioso) aviso('Ya tenés la última versión (' + c.version + ').');
        return;
      }
      if (!forzar && leerOmitida() === c.version) return;
      dialogoActualizacion(c);
    });
  }

  /* ------------------------------------------------------------------ *
   * entrada «Actualizar ANK» en el menú de tres puntos
   * ------------------------------------------------------------------ */

  var menuPedido = 0;

  function esMenu(n) {
    return !!(n && n.nodeType === 1 && n.classList && n.classList.contains('context-menu'));
  }

  /* Agrega el ítem a un menú abierto. Devuelve true si lo hizo. */
  function inyectarEn(m) {
    if (!m || m.querySelector('[data-ank-upd-item]')) return false;
    var u = actualizador();
    if (!u) return false;
    var pend = u.pendiente && u.pendiente(PANEL_VERSION);
    var li = document.createElement('li');
    li.setAttribute('data-ank-upd-item', '');
    li.innerHTML = '<span class="icon refresh"></span>' +
      '<span class="text">Actualizar ANK' +
      '<span class="value">' + esc(pend ? 'versión ' + u.version() + ' lista' : 'comprobar novedades') +
      '</span></span>';
    li.addEventListener('click', function (ev) {
      ev.preventDefault();
      ev.stopPropagation();
      var mask = q('.mask');
      if (mask) { try { mask.click(); } catch (e) {} }
      revisarActualizacion(false, true);
    }, true);
    m.appendChild(li);
    return true;
  }

  function inyectarMenu() {
    if (!menuPedido || Date.now() - menuPedido > 4000) return;
    var menus = document.querySelectorAll('.context-menu');
    for (var i = 0; i < menus.length; i++) inyectarEn(menus[i]);
    menuPedido = 0;
  }

  function engancharMenu() {
    /* Cualquier menú que la app agregue al documento: se completa al vuelo. */
    try {
      var obs = new MutationObserver(function (lista) {
        for (var i = 0; i < lista.length; i++) {
          var nuevos = lista[i].addedNodes;
          for (var j = 0; j < nuevos.length; j++) {
            var n = nuevos[j];
            if (esMenu(n)) inyectarEn(n);
            else if (n && n.querySelectorAll) {
              var dentro = n.querySelectorAll('.context-menu');
              for (var k = 0; k < dentro.length; k++) inyectarEn(dentro[k]);
            }
          }
        }
      });
      obs.observe(document.documentElement, { childList: true, subtree: true });
    } catch (e) {}

    document.addEventListener('click', function (e) {
      var t = e.target;
      if (!t || !t.closest) return;
      if (t.closest('[data-action="toggle-menu"], [action="toggle-menu"]')) {
        menuPedido = Date.now();
      }
    }, true);
  }

  function pintarPestanas() {
    var tabs = document.querySelectorAll('.ank-ai-tab');
    for (var i = 0; i < tabs.length; i++) {
      var on = tabs[i].getAttribute('data-tab') === st.tab;
      tabs[i].classList.toggle('active', on);
    }
    var vistas = document.querySelectorAll('.ank-ai-view');
    for (var j = 0; j < vistas.length; j++) {
      vistas[j].classList.toggle('active', vistas[j].getAttribute('data-view') === st.tab);
    }
  }

  function pintar() {
    if (!panel) return;
    pintarPestanas();
    pintarPasos();
    pintarEstado();
    pintarBotonEnviar();
    pintarModelos();
    pintarLog();
    pintarChats();
    pintarVersion();
    var enc = q('.ank-ai-hint-cred');
    if (enc) enc.style.display = st.credencial === 'listo' ? 'none' : 'block';
  }

  /* ------------------------------------------------------------------ *
   * construcción del panel
   * ------------------------------------------------------------------ */

  function construir() {
    if (panel) return panel;
    panel = document.createElement('div');
    panel.id = 'ank-ai';
    panel.innerHTML =
      '<div class="ank-ai-sheet">' +
        '<div class="ank-ai-head">' +
          '<div class="ank-ai-title">ANK <b>IA</b></div>' +
          '<button class="ank-ai-tab active" data-tab="chat" data-accion="tab" data-valor="chat">Chat</button>' +
          '<button class="ank-ai-tab" data-tab="chats" data-accion="tab" data-valor="chats">Chats</button>' +
          '<button class="ank-ai-tab" data-tab="entorno" data-accion="tab" data-valor="entorno">Entorno</button>' +
          '<button class="ank-ai-tab" data-tab="log" data-accion="tab" data-valor="log">Registro</button>' +
          '<div class="ank-ai-spacer"></div>' +
          '<button class="ank-ai-x" data-accion="cerrar" aria-label="Cerrar">×</button>' +
        '</div>' +

        '<div class="ank-ai-body">' +
          '<section class="ank-ai-view active" data-view="chat">' +
            '<div class="ank-ai-msgs">' +
              '<div class="ank-ai-empty">' +
                '<b>Asistente de ANK</b>' +
                'Trabaja sobre los archivos del proyecto y ejecuta comandos en el entorno de la app. ' +
                'No modifica nada fuera de la carpeta de trabajo.' +
              '</div>' +
            '</div>' +
            '<div class="ank-ai-opts">' +
              '<button type="button" class="ank-ai-chip ank-ai-modo" data-accion="modo" title="Modo de trabajo">Construir</button>' +
              '<select class="ank-ai-chip ank-ai-sel" id="ank-ai-chat-modelo" aria-label="Modelo"></select>' +
              '<select class="ank-ai-chip ank-ai-sel" id="ank-ai-esfuerzo" aria-label="Esfuerzo de razonamiento"></select>' +
            '</div>' +
            '<div class="ank-ai-compose">' +
              '<textarea class="ank-ai-input" rows="1" placeholder="Pedí algo: creá un archivo, explicá el código, refactorizá…"></textarea>' +
              '<button class="ank-ai-send" data-accion="enviar" aria-label="Enviar">&#8593;</button>' +
            '</div>' +
          '</section>' +

          '<section class="ank-ai-view" data-view="chats">' +
            '<div class="ank-ai-chatbar">' +
              '<button class="ank-ai-btn primary" data-accion="nuevo-chat">Nuevo chat</button>' +
              '<button class="ank-ai-btn" data-accion="memoria">Memoria del proyecto</button>' +
            '</div>' +
            '<div class="ank-ai-chatlist"></div>' +
          '</section>' +

          '<section class="ank-ai-view" data-view="entorno">' +
            '<div class="ank-ai-setup">' +
              '<p class="ank-ai-lead">Cuatro pasos, una sola vez. Todo queda dentro del almacenamiento de la app.</p>' +
              '<div class="ank-ai-steps"></div>' +

              '<div class="ank-ai-field ank-ai-hint-cred">' +
                '<label>Proveedor</label>' +
                '<select id="ank-ai-prov">' +
                  '<option value="opencode">OpenCode (modelos gratis)</option>' +
                  '<option value="openrouter">OpenRouter</option>' +
                  '<option value="anthropic">Anthropic</option>' +
                  '<option value="openai">OpenAI</option>' +
                  '<option value="deepseek">DeepSeek</option>' +
                  '<option value="groq">Groq</option>' +
                  '<option value="google">Google</option>' +
                '</select>' +
                '<div class="ank-ai-hint">La clave se guarda en el almacenamiento privado de la app, no en la tarjeta.</div>' +
              '</div>' +

              '<div class="ank-ai-field ank-ai-hint-cred">' +
                '<label>Clave</label>' +
                '<input id="ank-ai-key" type="password" autocomplete="off" spellcheck="false" placeholder="sk-…" />' +
                '<div class="ank-ai-hint">Para los modelos gratis: <a data-accion="abrir-auth">opencode.ai/auth</a> → crear clave → pegarla acá.</div>' +
              '</div>' +

              '<div class="ank-ai-field ank-ai-hint-cred">' +
                '<button class="ank-ai-btn primary" data-accion="guardar-clave" style="width:100%">Guardar credencial</button>' +
              '</div>' +

              '<div class="ank-ai-field">' +
                '<label>Modelo</label>' +
                '<select id="ank-ai-modelo" data-accion="modelo"></select>' +
                '<div class="ank-ai-hint">Los modelos «free» no tienen costo y pueden tener límites de uso.</div>' +
              '</div>' +

              '<div class="ank-ai-field">' +
                '<label>Carpeta de trabajo</label>' +
                '<input id="ank-ai-proj" type="text" spellcheck="false" value="' + esc(limpioRuta(st.project) || 'ank') + '" />' +
                '<div class="ank-ai-hint">Relativa a /public/proyectos. Se crea sola al primer mensaje.</div>' +
              '</div>' +

              '<div class="ank-ai-field">' +
                '<label>Consola del entorno</label>' +
                '<div class="ank-ai-console"></div>' +
                '<div class="ank-ai-consolei">' +
                  '<input class="ank-ai-input-console" placeholder="comando para el entorno (opcional)" spellcheck="false" />' +
                  '<button class="ank-ai-btn" data-accion="consola">Ejecutar</button>' +
                '</div>' +
              '</div>' +

              '<div class="ank-ai-field">' +
                '<label>Versión del panel</label>' +
                '<div class="ank-ai-hint ank-ai-ver"></div>' +
                '<div class="ank-ai-hint">Para actualizar, usá el menú de la app → Actualizar ANK.</div>' +
              '</div>' +

              '<div class="ank-ai-field">' +
                '<button class="ank-ai-btn" data-accion="revisar" style="width:100%">Revisar estado</button>' +
              '</div>' +
              '<div class="ank-ai-field">' +
                '<button class="ank-ai-btn" data-accion="probar" style="width:100%">Probar asistente</button>' +
                '<div class="ank-ai-hint">Ejecuta el asistente con un mensaje corto y muestra el resultado en la consola.</div>' +
              '</div>' +
            '</div>' +
          '</section>' +

          '<section class="ank-ai-view" data-view="log">' +
            '<div class="ank-ai-logbar">' +
              '<button class="ank-ai-btn" data-accion="copiar-log">Copiar</button>' +
              '<button class="ank-ai-btn" data-accion="limpiar-log">Limpiar</button>' +
              '<div class="ank-ai-spacer"></div>' +
              '<button class="ank-ai-btn" data-accion="revisar">Diagnóstico</button>' +
            '</div>' +
            '<pre class="ank-ai-log"></pre>' +
          '</section>' +
        '</div>' +

        '<div class="ank-ai-status"></div>' +
      '</div>' +

      '<div class="ank-ai-mem" id="ank-ai-mem">' +
        '<div class="ank-ai-mem-box">' +
          '<div class="ank-ai-mem-head">Memoria del proyecto<span class="ank-ai-mem-ruta"></span></div>' +
          '<textarea class="ank-ai-mem-text" spellcheck="false"></textarea>' +
          '<div class="ank-ai-mem-actions">' +
            '<button class="ank-ai-btn primary" data-accion="guardar-memoria">Guardar</button>' +
            '<button class="ank-ai-btn" data-accion="compactar-memoria">Resumir con IA</button>' +
            '<button class="ank-ai-btn" data-accion="cerrar-memoria">Cerrar</button>' +
          '</div>' +
        '</div>' +
      '</div>';

    document.body.appendChild(panel);

    panel.addEventListener('click', manejarClic);
    panel.addEventListener('change', manejarCambio);
    var ta = q('.ank-ai-input', panel);
    if (ta) {
      ta.addEventListener('input', function () {
        ta.style.height = 'auto';
        ta.style.height = Math.min(128, ta.scrollHeight) + 'px';
      });
      ta.addEventListener('keydown', function (e) {
        if (e.key === 'Enter' && !e.shiftKey && !e.ctrlKey) {
          e.preventDefault();
          enviar();
        }
      });
    }
    var ic = q('.ank-ai-input-console', panel);
    if (ic) {
      ic.addEventListener('keydown', function (e) {
        if (e.key === 'Enter') {
          e.preventDefault();
          consolaComando(ic.value);
          ic.value = '';
        }
      });
    }
    return panel;
  }

  function abrirChatUI(id) {
    for (var i = 0; i < st.chats.length; i++) {
      if (st.chats[i].id !== id) continue;
      var c = st.chats[i];
      st.chatId = c.id;
      st.msgs = c.msgs;
      st.project = c.proyecto || st.project;
      guardar('ank.ai.project', st.project);
      st.tab = 'chat';
      pintar();
      pintarMensajes();
      return;
    }
  }

  function borrarChatUI(id) {
    st.chats = st.chats.filter(function (c) { return c.id !== id; });
    if (st.chatId === id) {
      var lista = chatsDe(limpioRuta(st.project) || 'ank');
      st.chatId = lista.length ? lista[0].id : '';
      st.msgs = lista.length ? lista[0].msgs : [];
      pintarMensajes();
    }
    guardarChats();
    pintar();
  }

  function cerrarMemoria() {
    var el = q('#ank-ai-mem');
    if (el) el.classList.remove('open');
  }

  function abrirMemoria() {
    var proy = limpioRuta(st.project) || 'ank';
    var el = q('#ank-ai-mem');
    var ta = q('.ank-ai-mem-text');
    if (!el || !ta) return;
    el.classList.add('open');
    ta.value = 'Cargando…';
    var r = q('.ank-ai-mem-ruta', el);
    if (r) r.textContent = proy + '/AGENTS.md';
    var ruta = st.prefix + '/public/proyectos/' + proy + '/AGENTS.md';
    asegurarSandbox()
      .then(function () { return leerTexto(ruta); })
      .then(function (txt) { ta.value = txt && txt.trim() ? txt : plantillaProyecto(proy); })
      .catch(function () { ta.value = plantillaProyecto(proy); });
  }

  function guardarMemoria() {
    var proy = limpioRuta(st.project) || 'ank';
    var ta = q('.ank-ai-mem-text');
    if (!ta) return;
    var ruta = st.prefix + '/public/proyectos/' + proy + '/AGENTS.md';
    conSistema('mkdirs', st.prefix + '/public/proyectos/' + proy)
      .then(function () { return escribir(ruta, ta.value); })
      .then(function () { return actualizarIndice(proy); })
      .then(function () {
        aviso('Memoria guardada.');
        cerrarMemoria();
        log('i', 'Memoria del proyecto actualizada.');
      })
      .catch(function (e) {
        aviso('No se pudo guardar la memoria.');
        log('e', 'Memoria: ' + (e && e.message ? e.message : e));
      });
  }

  /* Pide al modelo que reescriba la memoria en pocas líneas. El resultado se
     muestra en el editor; el usuario decide si guardarlo. */
  function compactarMemoria() {
    if (st.probandoPrueba) return;
    var proy = limpioRuta(st.project) || 'ank';
    var ta = q('.ank-ai-mem-text');
    if (!ta) return;
    st.probandoPrueba = true;
    ta.value = 'Resumiendo con el asistente…';
    var ws = st.work + '/' + proy;
    var modelo = limpioModelo(st.model) || MODEL_DEFAULT;
    var pedido = 'Reescribí el archivo AGENTS.md de este proyecto en menos de 60 líneas. ' +
      'Conservá el objetivo, el estado actual, las decisiones y lo más reciente de la bitácora. ' +
      'No inventes datos que no estén en el archivo. Respondé solo con el contenido del archivo, ' +
      'sin explicaciones ni bloques de código.';
    var guion = 'cd ' + shq(ws) + ' && ' +
      'opencode run --auto --agent plan --model ' + shq(modelo) + ' ' + shq(pedido) +
      ' < /dev/null 2>/dev/null';
    shell('timeout 150 sh -c ' + comilla(guion), true)
      .then(function (r) {
        var txt = String(r.salida || '')
          .replace(/^```[a-z]*\s*/i, '')
          .replace(/```\s*$/, '')
          .trim();
        if (txt.length < 40 || txt.indexOf('#') === -1) {
          throw new Error('respuesta no utilizable');
        }
        ta.value = txt;
        aviso('Revisá el resumen y guardá.');
      })
      .catch(function (e) {
        leerTexto(st.prefix + '/public/proyectos/' + proy + '/AGENTS.md').then(function (txt) {
          ta.value = txt || plantillaProyecto(proy);
        });
        aviso('No se pudo resumir; se mantiene la memoria actual.');
        log('w', 'Resumen de memoria: ' + (e && e.message ? e.message : e));
      })
      .then(function () {
        st.probandoPrueba = false;
      });
  }

  function manejarClic(e) {
    var t = e.target.closest ? e.target.closest('[data-accion]') : null;
    if (!t) return;
    var accion = t.getAttribute('data-accion');
    if (accion !== 'tab' && accion !== 'cerrar') e.preventDefault();
    switch (accion) {
      case 'cerrar': cerrarPanel(); break;
      case 'tab':
        st.tab = t.getAttribute('data-valor') || 'chat';
        pintar();
        break;
      case 'enviar':
        if (st.corriendo) detener(); else enviar();
        break;
      case 'modo':
        st.modo = st.modo === 'plan' ? 'build' : 'plan';
        guardar('ank.ai.modo', st.modo);
        pintar();
        break;
      case 'detener': detener(); break;
      case 'instalar-entorno': instalarEntorno(); break;
      case 'instalar-asistente': instalarAsistente(); break;
      case 'guardar-clave':
        guardarCredencial(q('#ank-ai-prov') && q('#ank-ai-prov').value, q('#ank-ai-key') && q('#ank-ai-key').value);
        break;
      case 'revisar':
        chequearTodo(true);
        break;
      case 'probar':
        probarAsistente();
        break;
      case 'buscar-actualizacion':
        revisarActualizacion(false, true);
        break;
      case 'nuevo-chat':
        nuevoChat(limpioRuta(st.project) || 'ank');
        st.tab = 'chat';
        pintar();
        pintarMensajes();
        break;
      case 'abrir-chat':
        abrirChatUI(t.getAttribute('data-valor'));
        break;
      case 'borrar-chat':
        borrarChatUI(t.getAttribute('data-valor'));
        break;
      case 'memoria':
        abrirMemoria();
        break;
      case 'guardar-memoria':
        guardarMemoria();
        break;
      case 'cerrar-memoria':
        cerrarMemoria();
        break;
      case 'compactar-memoria':
        compactarMemoria();
        break;
      case 'consola':
        consolaComando(q('.ank-ai-input-console') && q('.ank-ai-input-console').value);
        if (q('.ank-ai-input-console')) q('.ank-ai-input-console').value = '';
        break;
      case 'copiar-log':
        copiarPortapapeles(st.log.map(function (l) { return l.t + ' ' + l.m; }).join('\n'))
          .then(function () { aviso('Registro copiado.'); })
          .catch(function () { aviso('No se pudo copiar.'); });
        break;
      case 'limpiar-log':
        st.log = [];
        pintarLog();
        break;
      case 'abrir-auth':
        abrirUrl('https://opencode.ai/auth');
        break;
      case 'abrir-carpeta':
        abrirCarpeta();
        break;
    }
  }

  function manejarCambio(e) {
    if (e.target.id === 'ank-ai-modelo' || e.target.id === 'ank-ai-chat-modelo') {
      st.model = limpioModelo(e.target.value) || MODEL_DEFAULT;
      guardar('ank.ai.model', st.model);
      if (st.variant && variantesDe(st.model).indexOf(st.variant) === -1) {
        st.variant = '';
        guardar('ank.ai.variant', '');
      }
      pintar();
    }
    if (e.target.id === 'ank-ai-esfuerzo') {
      st.variant = String(e.target.value || '').trim();
      guardar('ank.ai.variant', st.variant);
      pintar();
    }
    if (e.target.id === 'ank-ai-proj') {
      st.project = limpioRuta(e.target.value) || 'ank';
      guardar('ank.ai.project', st.project);
      var lista = chatsDe(st.project);
      st.chatId = lista.length ? lista[0].id : '';
      st.msgs = lista.length ? lista[0].msgs : [];
      guardarChats();
      asegurarMemoria(st.project);
      pintar();
      pintarMensajes();
    }
  }

  function abrirUrl(url) {
    try {
      if (window.cordova && window.cordova.InAppBrowser) {
        window.cordova.InAppBrowser.open(url, '_system');
        return;
      }
    } catch (e) {}
    try {
      if (window.acode && typeof window.acode.openUrl === 'function') {
        window.acode.openUrl(url);
        return;
      }
    } catch (e2) {}
    try {
      window.open(url, '_system');
      return;
    } catch (e3) {}
    aviso(url);
  }

  function abrirCarpeta() {
    try {
      if (window.acode && typeof window.acode.exec === 'function') {
        window.acode.exec('open-folder', '/public/proyectos/' + (limpioRuta(st.project) || 'ank'));
        return;
      }
    } catch (e) {}
    aviso('/public/proyectos/' + (limpioRuta(st.project) || 'ank'));
  }

  function abrirPanel() {
    try {
      construir();
      panel.classList.add('open');
      st.tab = st.tab || 'chat';
      pintar();
      pintarMensajes();
      asegurarMemoria(st.project);
      chequearTodo(true);
      setTimeout(function () {
        var ta = q('.ank-ai-input');
        if (ta && listo()) ta.focus();
      }, 200);
    } catch (e) {
      log('e', 'No se pudo abrir el panel: ' + (e && e.message ? e.message : e));
      aviso('No se pudo abrir el asistente.');
    }
  }

  function cerrarPanel() {
    if (panel) panel.classList.remove('open');
  }

  /* ------------------------------------------------------------------ *
   * montaje
   * ------------------------------------------------------------------ */

  /* Botón «IA» en el dock flotante, junto al «+». Antes vivía en la cabecera
     de la app, que es fija, se redibuja y queda tapada por otros elementos de
     la esquina: los toques no llegaban. */
  function botonIA() {
    if (!document.body) return;
    if (q('#ank-dock .ank-ia')) return;
    var btn = document.createElement('button');
    btn.type = 'button';
    btn.className = 'ank-dock-btn ank-ia';
    btn.textContent = 'IA';
    btn.setAttribute('aria-label', 'Asistente');
    btn.setAttribute('title', 'Asistente');
    pulsar(btn, abrirPanel);
    if (typeof window.__ankDockAdd === 'function') window.__ankDockAdd(btn, true);
    else {
      var d = q('#ank-dock');
      if (!d) {
        d = document.createElement('div');
        d.id = 'ank-dock';
        document.body.appendChild(d);
      }
      d.insertBefore(btn, d.firstChild || null);
    }
  }

  function ciclo() {
    if (!document.body) return;
    botonIA();
    marcarActualizacion();
    inyectarMenu();
  }

  function iniciar() {
    cargarChats();
    document.addEventListener('ank-upd', marcarActualizacion);
    engancharMenu();
    dirsIniciales()
      .then(function () { return asegurarMemoria(st.project); })
      .catch(function () {});
    mountTimer = setInterval(ciclo, 700);
    ciclo();
    /* Revisa novedades sola un rato después de arrancar, sin frenar la app. */
    setTimeout(function () { revisarActualizacion(true, false); }, 5000);
    if (window.cordova) {
      document.addEventListener('deviceready', function () {
        setTimeout(ciclo, 200);
        chequearTodo(false);
      }, false);
    }
    setTimeout(function () { chequearTodo(false); }, 4000);
  }

  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', iniciar);
  else iniciar();
})();
