/* Código ANK — arranque seguro del panel del asistente.
 *
 * El actualizador remoto está desactivado hasta contar con firmas Ed25519
 * verificadas. Por eso el arranque solo usa el panel incluido en el APK y
 * descarta cualquier copia web antigua que haya quedado en localStorage.
 */
(function () {
  'use strict';

  var K_AI = 'ank.web.ai.js';
  var K_CSS = 'ank.web.ai.css';

  function limpiarPaquetesNoVerificados() {
    try { localStorage.removeItem(K_AI); } catch (e) {}
    try { localStorage.removeItem(K_CSS); } catch (e) {}
  }

  function cargarIncluido() {
    var script = document.createElement('script');
    script.src = './ank/ai.js';
    script.async = false;
    script.onerror = function () {
      console.error('[ANK] No se pudo cargar el panel incluido ./ank/ai.js');
    };
    (document.head || document.documentElement).appendChild(script);
  }

  function arrancar() {
    limpiarPaquetesNoVerificados();
    cargarIncluido();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', arrancar, { once: true });
  } else {
    arrancar();
  }
})();
