/* Código ANK — arranque del panel del asistente.

   Carga el panel incluido en el APK o la versión previamente descargada y
   validada por el actualizador. La lógica mantenible del asistente vive en
   ai.js para que pueda actualizarse sin recompilar toda la app. */

(function () {
  'use strict';

  var K_AI = 'ank.web.ai.js';
  var K_CSS = 'ank.web.ai.css';

  function leer(clave) {
    try { return localStorage.getItem(clave) || ''; } catch (e) { return ''; }
  }

  function inyectarCss(texto) {
    if (!texto) return;
    var el = document.getElementById('ank-ai-css-upd');
    if (!el) {
      el = document.createElement('style');
      el.id = 'ank-ai-css-upd';
      (document.head || document.documentElement).appendChild(el);
    }
    el.textContent = texto;
  }

  function cargarIncluido() {
    var script = document.createElement('script');
    script.src = './ank/ai.js';
    script.async = false;
    (document.head || document.documentElement).appendChild(script);
  }

  function arrancar() {
    var css = leer(K_CSS);
    if (css && css.indexOf('.ank-ai-sheet') !== -1) inyectarCss(css);

    var ai = leer(K_AI);
    // La versión nueva debe llevar el motor ANK embebido. Así no se reutiliza
    // el panel antiguo que dependía del ejecutable retirado.
    var motorNuevo = ai && ai.indexOf('ANK_AI_ENGINE_BUNDLE_BEGIN') !== -1;
    if (motorNuevo && ai.length > 20000 && ai.indexOf('ankAIInstalled') !== -1) {
      try {
        (new Function(ai)).call(window);
        return;
      } catch (e) {
        try { localStorage.removeItem(K_AI); } catch (err) {}
        console.warn('[ANK] actualización descartada', e);
      }
    } else if (ai) {
      try { localStorage.removeItem(K_AI); } catch (err) {}
    }
    cargarIncluido();
  }

  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', arrancar);
  else arrancar();
})();
