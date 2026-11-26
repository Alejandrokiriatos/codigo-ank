/* Código ANK — arranque del panel del asistente.

   Carga la versión incluida en el APK o, si hay una actualización descargada
   desde GitHub, esa. Así las mejoras del panel llegan sin reinstalar la app
   completa (que pesa ~97 MB por el entorno Linux y OpenCode).

   Este archivo casi nunca cambia: por eso conviene que la lógica viva en
   ai.js, que sí se puede actualizar por red. */

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
    var s = document.createElement('script');
    s.src = './ank/ai.js';
    s.async = false;
    (document.head || document.documentElement).appendChild(s);
  }

  function arrancar() {
    var css = leer(K_CSS);
    if (css && css.indexOf('.ank-ai-sheet') !== -1) inyectarCss(css);

    var ai = leer(K_AI);
    if (ai && ai.length > 20000 && ai.indexOf('ankAIInstalled') !== -1) {
      try {
        // Ejecuta la versión descargada en el ámbito global, igual que un <script>.
        (new Function(ai)).call(window);
        return;
      } catch (e) {
        try { localStorage.removeItem(K_AI); } catch (err) {}
        console.warn('[ANK] actualización descartada', e);
      }
    }
    cargarIncluido();
  }

  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', arrancar);
  else arrancar();
})();
