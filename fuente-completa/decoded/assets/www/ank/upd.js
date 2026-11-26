/* Código ANK — actualizador web desactivado temporalmente.
 * La antigua firma HMAC llevaba una clave incrustada en el APK y se considera
 * comprometida. No se aceptan paquetes remotos hasta desplegar Ed25519.
 * El APK y el panel incluidos siguen funcionando sin este canal.
 */
(function () {
  'use strict';
  var VERSION = '2.0.0';
  var disabled = function () {
    return Promise.resolve({ ok: false, motivo: 'Actualizaciones web desactivadas temporalmente por seguridad. Se reactivarán con firma Ed25519.' });
  };
  window.__ankUpd = {
    activo: function () { return false; },
    version: function () { return 'incluida'; },
    incluida: function () { return VERSION; },
    notas: function () { return ''; },
    pendiente: function () { return false; },
    consultar: disabled,
    descargar: disabled,
    buscar: disabled,
    aplicar: function () {},
    novedades: function () { return null; },
    olvidarNovedades: function () {}
  };
})();
