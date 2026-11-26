/* Código ANK — identidad, atajos y mejoras de flujo sobre el motor de edición (MIT). */
(function () {
  'use strict';

  var AMBER = '#E0A458';

  var CSS = [
    ':root{',
    '--primary-color:#0F1618!important;',
    '--secondary-color:#16211F!important;',
    '--primary-text-color:#E7E0D2!important;',
    '--secondary-text-color:#8E8778!important;',
    '--border-color:#26363A!important;',
    '--active-color:#E0A458!important;',
    '--active-text-color:#0F1618!important;',
    '--active-icon-color:#E0A458!important;',
    '--link-text-color:#7FB3A7!important;',
    '--popup-background-color:#141E20!important;',
    '--popup-text-color:#E7E0D2!important;',
    '--popup-border-color:#2C3E41!important;',
    '--popup-active-color:#E0A458!important;',
    '--popup-icon-color:#8E8778!important;',
    '--popup-border-radius:2px!important;',
    '--box-shadow-color:rgba(0,0,0,.55)!important;',
    '--button-background-color:#1A282A!important;',
    '--button-active-color:#233638!important;',
    '--button-text-color:#E7E0D2!important;',
    '--danger-color:#C2624A!important;',
    '--danger-text-color:#F2DDD6!important;',
    '--error-color:#C2624A!important;',
    '--error-text-color:#EBA98F!important;',
    '--scrollbar-color:#33474A!important;',
    '--scrollbar-width:4px!important;',
    '--app-font-family:"Segoe UI",system-ui,-apple-system,Roboto,sans-serif!important;',
    '--file-tab-width:132px!important;',
    '}',

    'html,body{background:#0F1618!important;color:#E7E0D2!important;}',
    '::selection{background:rgba(224,164,88,.28)!important;}',

    /* Barra superior: plana, con línea ámbar y trama sutil */
    'header,header.tile,.header.tile{',
    'background:#111B1D!important;',
    'background-image:repeating-linear-gradient(135deg,rgba(255,255,255,.018) 0 1px,transparent 1px 7px)!important;',
    'border-bottom:1px solid #2C3E41!important;',
    'box-shadow:inset 0 2px 0 #E0A458!important;',
    '}',
    'header *,header.tile *,.header.tile *{color:#E7E0D2!important;}',

    /* Barra inferior */
    'footer,footer .button-container,.button-container{',
    'background:#111B1D!important;',
    'border-top:1px solid #2C3E41!important;',
    'box-shadow:none!important;',
    '}',
    'footer .icon,footer .button-container .icon{color:#B9B2A2!important;}',
    'footer .icon.active,footer .active .icon{color:#E0A458!important;}',

    /* Barra lateral y pestañas de archivos */
    '#sidebar{background:#101A1C!important;border-right:1px solid #2C3E41!important;}',
    '#sidebar + .mask{background:rgba(5,10,11,.58)!important;opacity:1!important;-webkit-backdrop-filter:none!important;backdrop-filter:none!important;}',
    '.open-file-list{background:#0D1517!important;border-bottom:1px solid #26363A!important;}',
    '.open-file-list .active,.open-file-list [active]{box-shadow:inset 0 -2px 0 #E0A458!important;}',

    /* Listas y filas */
    '.list-item,.tile{border-bottom:1px solid #1E2C2E!important;background:transparent!important;}',
    '.list-item:hover,.tile:hover{background:#16211F!important;}',
    '#sidebar .list-item,#sidebar .list-item *{-webkit-touch-callout:none;}',

    /* Diálogos y menús: cuadrados, borde fino, sin difuminados */
    '.dialog{background:#141E20!important;border:1px solid #2C3E41!important;border-radius:3px!important;',
    'box-shadow:0 16px 36px rgba(0,0,0,.55)!important;}',
    '.dialog-title{background:#111B1D!important;color:#E0A458!important;border-bottom:1px solid #2C3E41!important;',
    'text-transform:uppercase;letter-spacing:.09em;font-size:.82em!important;}',
    '.dialog-message{color:#CFC8B8!important;}',

    /* Botones y campos */
    '.button,button{background:#1A282A!important;color:#E7E0D2!important;border:1px solid #33474A!important;',
    'border-radius:2px!important;box-shadow:none!important;text-transform:uppercase;letter-spacing:.06em;font-size:.78em!important;}',
    '.button:active,button:active{background:#233638!important;border-color:#E0A458!important;}',
    'input,textarea,select{background:#0D1517!important;color:#E7E0D2!important;border:1px solid #2C3E41!important;',
    'border-radius:2px!important;box-shadow:none!important;}',
    'input:focus,textarea:focus{border-color:#E0A458!important;}',

    /* Editor CodeMirror 6 */
    '.cm-editor{background:#0F1618!important;color:#E7E0D2!important;}',
    '.cm-editor .cm-scroller{font-family:"Meslo LG S","Fira Code",monospace!important;}',
    '.cm-gutters{background:#0B1214!important;color:#5E6B69!important;border-right:1px solid #1E2C2E!important;}',
    '.cm-activeLineGutter{background:rgba(224,164,88,.08)!important;color:#E0A458!important;}',
    '.cm-activeLine{background:rgba(255,255,255,.028)!important;}',
    '.cm-selectionBackground,.cm-editor ::selection{background:rgba(224,164,88,.24)!important;}',
    '.cm-cursor,.cm-dropCursor{border-left-color:#E0A458!important;}',
    '.cm-tooltip{background:#141E20!important;border:1px solid #2C3E41!important;color:#E7E0D2!important;}',
    '.cm-panels{background:#111B1D!important;color:#E7E0D2!important;border-color:#2C3E41!important;}',
    '.cm-searchMatch{background:rgba(224,164,88,.22)!important;}',

    /* Compatibilidad con el editor heredado */
    '.ace_editor,.ace_editor *{font-family:"Meslo LG S","Fira Code",monospace!important;}',
    '.ace_editor{background:#0F1618!important;}',
    '.ace_gutter{background:#0B1214!important;color:#5E6B69!important;}',
    '.ace_gutter-active-line{background:rgba(224,164,88,.08)!important;color:#E0A458!important;}',
    '.ace_active-line{background:rgba(255,255,255,.028)!important;}',
    '.ace_selection,.ace_selected-word{background:rgba(224,164,88,.22)!important;}',
    '.ace_scrollbar-v,.ace_scrollbar-h{background:#0B1214!important;}',

    /* Scrollbars WebView */
    '::-webkit-scrollbar{width:6px;height:6px;}',
    '::-webkit-scrollbar-thumb{background:#33474A;border-radius:0;}',
    '::-webkit-scrollbar-track{background:#0B1214;}',

    /* Botones flotantes propios (dock). La cabecera de la app mide 100x30 px,
       es fija, se redibuja y queda debajo de otros elementos fijos de la
       esquina: los toques se perdían ahí. El dock es propio, no lo reconstruye
       nadie y va por encima de todo. */
    '#ank-dock{position:fixed;right:10px;bottom:84px;z-index:2147482500;display:flex;flex-direction:column;',
    'gap:10px;pointer-events:none;}',
    '#ank-dock .ank-dock-btn{pointer-events:auto;width:48px;height:48px;border-radius:26px!important;display:flex;',
    'align-items:center;justify-content:center;padding:0;background:#162326!important;border:1px solid #33474A!important;',
    'color:#E0A458!important;font:600 20px/1 "Meslo LG S","Fira Code",monospace!important;',
    'box-shadow:0 2px 12px rgba(0,0,0,.6)!important;letter-spacing:0!important;text-transform:none!important;',
    'cursor:pointer;touch-action:manipulation;user-select:none;-webkit-user-select:none;',
    '-webkit-tap-highlight-color:transparent;}',
    '#ank-dock .ank-dock-btn:active{background:#233638!important;border-color:#E0A458!important;}',

    /* Panel "Crear y abrir" */
    '.ank-panel{padding:0 0 16px;color:#E7E0D2!important;}',
    '.ank-panel-head{padding:15px 14px 12px;background:#111B1D;border-bottom:1px solid #2C3E41;',
    'box-shadow:inset 0 2px 0 #E0A458;}',
    '.ank-kicker{font:600 9.5px/1 "Segoe UI",system-ui,sans-serif;letter-spacing:.16em;',
    'text-transform:uppercase;color:#8E8778;}',
    '.ank-panel-title{margin-top:6px;font:600 15px/1.2 "Segoe UI",system-ui,sans-serif;letter-spacing:.01em;}',
    '.ank-section{padding:12px 14px 0;}',
    '.ank-actions{margin-top:10px;border-top:1px solid #1E2C2E;}',
    '.ank-action{display:flex;align-items:center;gap:10px;width:100%;padding:11px 14px;',
    'background:transparent!important;border:0!important;border-bottom:1px solid #1E2C2E!important;',
    'border-radius:0!important;box-shadow:none!important;text-align:left;color:#E7E0D2!important;',
    'font:400 13px/1.25 "Segoe UI",system-ui,sans-serif!important;letter-spacing:0!important;',
    'text-transform:none!important;cursor:pointer;}',
    '.ank-action:active{background:#16211F!important;}',
    '.ank-action b{display:block;font-weight:600;}',
    '.ank-action small{display:block;margin-top:2px;color:#8E8778;font:400 11px/1.35 "Segoe UI",system-ui,sans-serif;}',
    '.ank-action .ank-glyph{width:16px;text-align:center;color:#8E8778;font:400 14px/1 "Meslo LG S",monospace;}',
    '.ank-action.primary{box-shadow:inset 2px 0 0 #E0A458!important;}',
    '.ank-action.primary .ank-glyph,.ank-action.primary b{color:#E0A458;}',
    '.ank-dir{margin-top:7px;padding:8px 10px;background:#0D1517;border:1px solid #26363A;',
    'font:11.5px/1.45 "Meslo LG S","Fira Code",monospace;color:#B9B2A2;word-break:break-all;}',

    /* Diálogo de nuevo documento */
    '.ank-overlay{position:fixed;top:0;right:0;bottom:0;left:0;z-index:2147483000;',
    'background:rgba(4,9,10,.68);display:flex;align-items:center;justify-content:center;padding:18px;}',
    '.ank-sheet{width:100%;max-width:392px;background:#141E20;border:1px solid #2C3E41;border-radius:3px;',
    'box-shadow:0 24px 48px rgba(0,0,0,.62);overflow:hidden;}',
    '.ank-sheet-head{display:flex;align-items:flex-start;justify-content:space-between;gap:12px;',
    'padding:14px 16px 12px;background:#111B1D;border-bottom:1px solid #2C3E41;box-shadow:inset 0 2px 0 #E0A458;}',
    '.ank-sheet-title{margin-top:5px;font:600 16px/1.2 "Segoe UI",system-ui,sans-serif;}',
    '.ank-x{width:28px;height:28px;display:flex;align-items:center;justify-content:center;padding:0;',
    'background:transparent!important;border:1px solid transparent!important;border-radius:2px!important;',
    'color:#8E8778!important;font:400 13px/1 "Segoe UI",sans-serif!important;letter-spacing:0!important;',
    'text-transform:none!important;box-shadow:none!important;cursor:pointer;}',
    '.ank-x:active{border-color:#33474A!important;color:#E0A458!important;}',
    '.ank-body{padding:14px 16px 16px;}',
    '.ank-label{display:block;margin:0 0 6px;font:600 9.5px/1 "Segoe UI",system-ui,sans-serif;',
    'letter-spacing:.15em;text-transform:uppercase;color:#8E8778;}',
    '.ank-input{width:100%;box-sizing:border-box;padding:10px;background:#0D1517!important;border:1px solid #2C3E41!important;',
    'color:#E7E0D2!important;border-radius:2px!important;outline:none;box-shadow:none!important;',
    'font:13px/1.4 "Meslo LG S","Fira Code",monospace!important;}',
    '.ank-input:focus{border-color:#E0A458!important;}',
    '.ank-chips{display:flex;flex-wrap:wrap;gap:6px;margin:8px 0 15px;}',
    '.ank-chip{padding:5px 8px;background:#0D1517!important;border:1px solid #33474A!important;color:#B9B2A2!important;',
    'border-radius:2px!important;box-shadow:none!important;font:600 10px/1 "Meslo LG S",monospace!important;',
    'letter-spacing:.08em!important;text-transform:uppercase!important;cursor:pointer;}',
    '.ank-chip.on{background:rgba(224,164,88,.14)!important;border-color:#E0A458!important;color:#E0A458!important;}',
    '.ank-dirrow{display:flex;gap:8px;align-items:stretch;}',
    '.ank-dirrow .ank-dir{flex:1;margin:0;min-width:0;}',
    '.ank-dirrow .ank-mini{padding:0 10px;background:#1A282A!important;border:1px solid #33474A!important;',
    'color:#E7E0D2!important;border-radius:2px!important;box-shadow:none!important;',
    'font:600 9.5px/1 "Segoe UI",sans-serif!important;letter-spacing:.1em!important;',
    'text-transform:uppercase!important;cursor:pointer;}',
    '.ank-error{min-height:15px;margin-top:9px;color:#EBA98F;font:11.5px/1.35 "Segoe UI",sans-serif;}',
    '.ank-sheet-actions{display:flex;justify-content:flex-end;gap:8px;padding:12px 16px 14px;',
    'border-top:1px solid #26363A;background:#101A1C;}',
    '.ank-btn{padding:9px 14px;background:#1A282A!important;border:1px solid #33474A!important;color:#E7E0D2!important;',
    'border-radius:2px!important;box-shadow:none!important;font:600 10.5px/1 "Segoe UI",sans-serif!important;',
    'letter-spacing:.08em!important;text-transform:uppercase!important;cursor:pointer;}',
    '.ank-btn:active{background:#233638!important;}',
    '.ank-btn.primary{background:#E0A458!important;border-color:#E0A458!important;color:#0F1618!important;}',
    '.ank-btn[disabled]{opacity:.55;}',
    '@media (max-width:420px){.ank-overlay{align-items:flex-end;padding:0;}',
    '.ank-sheet{max-width:none;border-left:0;border-right:0;border-bottom:0;border-radius:3px 3px 0 0;}}',
    '@media (prefers-reduced-motion:no-preference){.ank-sheet{animation:ank-in .16s ease-out;}}',
    '@keyframes ank-in{from{opacity:0;transform:translateY(8px);}to{opacity:1;transform:none;}}'
  ].join('\n');

  /* ---------- utilidades ---------- */
  function q(sel, root) { return (root || document).querySelector(sel); }
  function qa(sel, root) { return Array.prototype.slice.call((root || document).querySelectorAll(sel)); }
  function on(el, ev, fn, cap) { if (el) el.addEventListener(ev, fn, !!cap); }

  /* Toque de los botones propios.
     Los manejadores se registran en `window` en fase de captura: corren antes
     que los de `document` que instala la app (los que cancelan toques y
     redibujan la cabecera). Cada botón guarda su acción y su marca de tiempo,
     así el pointerdown dispara y el `click` posterior se descarta. */
  function pulsar(el, fn) {
    if (!el) return;
    el.setAttribute('data-ank-tap', '');
    el.__ankAccion = fn;
  }

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
      try { el.__ankAccion(); } catch (err) { console.warn('[ANK] accion:', err); }
    }
    try {
      window.addEventListener('pointerdown', golpe, true);
      window.addEventListener('click', golpe, true);
      window.__ankTapHook = true;
    } catch (err) {}
  })();
  function api() { return window.acode || null; }
  function mod(name) {
    try { return api() && api().require(name); } catch (e) { return null; }
  }
  function exec(cmd) {
    try { return api() && api().exec(cmd); } catch (e) { return false; }
  }
  function toast(msg) {
    var t = mod('toast');
    if (t) { try { t(msg); return; } catch (e) {} }
    try { if (api() && api().pushNotification) api().pushNotification('Código ANK', msg, { type: 'info' }); } catch (e) {}
  }
  function extOf(name) {
    var s = String(name || '');
    var i = s.lastIndexOf('.');
    return (i > 0 && i < s.length - 1) ? s.slice(i + 1).toLowerCase() : '';
  }
  function stripExt(name) {
    var s = String(name || '');
    var i = s.lastIndexOf('.');
    return i > 0 ? s.slice(0, i) : s;
  }
  function baseName(path) {
    var s = String(path || '').replace(/[\\/]+$/, '');
    var i = s.lastIndexOf('/');
    if (i < 0) i = s.lastIndexOf('\\');
    return i >= 0 ? s.slice(i + 1) : s;
  }
  function dirName(path) {
    var s = String(path || '').replace(/[\\/]+$/, '');
    var i = s.lastIndexOf('/');
    return i > 0 ? s.slice(0, i) : '';
  }
  function joinPath(dir, name) {
    if (!dir) return name;
    return String(dir).replace(/[\\/]+$/, '') + '/' + String(name).replace(/^[\\/]+/, '');
  }
  function prettyPath(p) {
    var s = String(p || '');
    s = s.replace(/^file:\/\//, '');
    s = s.replace(/^content:\/\/[^/]+\/(tree|document)\//, '');
    try { s = decodeURIComponent(s); } catch (e) {}
    return s || '—';
  }
  function fsOf(url) {
    var fs = mod('fsOperation') || mod('fs');
    if (!fs) throw new Error('El sistema de archivos no está disponible.');
    return Promise.resolve(fs(url));
  }

  /* ---------- pintura del tema ---------- */
  function paint() {
    var el = document.getElementById('ank-paint');
    if (!el) {
      el = document.createElement('style');
      el.id = 'ank-paint';
      (document.head || document.documentElement).appendChild(el);
    }
    if (el.textContent !== CSS) el.textContent = CSS;
    if (el.parentNode !== document.head || el.nextSibling) {
      try { document.head.appendChild(el); } catch (e) {}
    }
  }

  function rename() {
    if (document.title !== 'Código ANK') document.title = 'Código ANK';
    var hosts = qa('.about, .about-dialog, .splash-message');
    for (var h = 0; h < hosts.length; h++) {
      var walker = document.createTreeWalker(hosts[h], NodeFilter.SHOW_TEXT, null, false);
      var n;
      while ((n = walker.nextNode())) {
        if (n.nodeValue && n.nodeValue.indexOf('Acode') !== -1) {
          n.nodeValue = n.nodeValue.replace(/Acode/g, 'ANK');
        }
      }
    }
  }

  /* ---------- barra lateral: cerrar al tocar fuera ---------- */
  function sidebarEl() { return document.getElementById('sidebar'); }
  function sidebarOpen() {
    var s = sidebarEl();
    return !!s && s.classList.contains('show');
  }
  function closeSidebar() {
    var s = sidebarEl();
    if (!s || !s.classList.contains('show')) return false;
    var mask = s.nextElementSibling;
    if (mask && mask.classList.contains('mask')) { mask.click(); return true; }
    var toggler = q('[action="toggle-sidebar"]');
    if (toggler) { toggler.click(); return true; }
    return false;
  }
  function keepOpenTarget(t) {
    if (!t || !t.closest) return false;
    return !!t.closest(
      '#sidebar, .mask, [action="toggle-sidebar"], .dialog, .prompt, .menu, .context-menu, ' +
      '#palette, .ank-overlay, .file-browser'
    );
  }

  on(document, 'click', function (e) {
    if (!sidebarOpen()) return;
    if (keepOpenTarget(e.target)) return;
    closeSidebar();
  }, false);

  on(document, 'keydown', function (e) {
    if (e.key !== 'Escape' && e.keyCode !== 27) return;
    var overlay = q('.ank-overlay');
    if (overlay) { closeNewDoc(); e.preventDefault(); return; }
    if (sidebarOpen()) { closeSidebar(); e.preventDefault(); }
  }, true);

  /* ---------- carpeta y archivo actuales ---------- */
  function currentDir() {
    var em = window.editorManager;
    var f = em && em.activeFile;
    if (f) {
      if (f.location && /\//.test(String(f.location))) return String(f.location);
      if (f.uri && /^(file|content|sftp|ftp|https?):/i.test(String(f.uri))) return dirName(String(f.uri));
    }
    var node = q('#sidebar .list-item.active[data-url], #sidebar .list-item.selected[data-url], #sidebar [data-url].active');
    if (node && node.dataset) {
      var t = node.dataset.type || '';
      var u = node.dataset.url || '';
      if (u && /folder|root|dir/i.test(t)) return u;
      if (u && /file/i.test(t)) return dirName(u);
    }
    try {
      var saved = localStorage.getItem('ank.dir');
      if (saved) return saved;
    } catch (e) {}
    var folders = mod('addedfolder');
    if (folders && folders.length) {
      var last = folders[folders.length - 1];
      return last.url || last.uri || '';
    }
    return '';
  }

  function updateDirLabels() {
    var dir = currentDir();
    var label = dir ? prettyPath(dir) : 'Abrí una carpeta para elegir destino';
    var nodes = qa('.ank-current-dir');
    for (var i = 0; i < nodes.length; i++) {
      if (nodes[i].textContent !== label) nodes[i].textContent = label;
      if (nodes[i].getAttribute('title') !== (dir || '')) nodes[i].setAttribute('title', dir || '');
    }
  }

  /* ---------- panel "Crear y abrir" ---------- */
  var createAppAdded = false;

  function buildCreatePanel(container) {
    container.innerHTML = [
      '<div class="ank-panel">',
      '  <div class="ank-panel-head">',
      '    <div class="ank-kicker">Código ANK</div>',
      '    <div class="ank-panel-title">Crear y abrir</div>',
      '  </div>',
      '  <div class="ank-actions">',
      '    <button class="ank-action primary" data-ank="new">',
      '      <span class="ank-glyph">+</span>',
      '      <span><b>Nuevo archivo</b><small>Tipo, nombre y carpeta</small></span>',
      '    </button>',
      '    <button class="ank-action" data-ank="folder">',
      '      <span class="ank-glyph">□</span>',
      '      <span><b>Nueva carpeta</b><small>En la carpeta actual</small></span>',
      '    </button>',
      '    <button class="ank-action" data-ank="open-file">',
      '      <span class="ank-glyph">▤</span>',
      '      <span><b>Abrir archivo</b><small>Explorador del sistema</small></span>',
      '    </button>',
      '    <button class="ank-action" data-ank="open-folder">',
      '      <span class="ank-glyph">⌂</span>',
      '      <span><b>Abrir carpeta</b><small>Sumar al espacio</small></span>',
      '    </button>',
      '    <button class="ank-action" data-ank="find">',
      '      <span class="ank-glyph">⌕</span>',
      '      <span><b>Buscar archivo</b><small>Salto por nombre</small></span>',
      '    </button>',
      '    <button class="ank-action" data-ank="save-all">',
      '      <span class="ank-glyph">⇩</span>',
      '      <span><b>Guardar todo</b><small>Todas las pestañas</small></span>',
      '    </button>',
      '  </div>',
      '  <div class="ank-section">',
      '    <div class="ank-kicker">Carpeta actual</div>',
      '    <div class="ank-dir ank-current-dir">—</div>',
      '  </div>',
      '</div>'
    ].join('');

    on(container, 'click', function (e) {
      var b = e.target.closest ? e.target.closest('[data-ank]') : null;
      if (!b) return;
      var act = b.getAttribute('data-ank');
      if (act === 'new') openNewDoc();
      else if (act === 'folder') newFolder();
      else if (act === 'open-file') exec('open-file');
      else if (act === 'open-folder') exec('open-folder');
      else if (act === 'find') { if (exec('find-file') === false) exec('command-palette'); }
      else if (act === 'save-all') exec('save-all-changes');
    });
    updateDirLabels();
  }

  function registerCreateApp() {
    if (createAppAdded) return;
    if (!q('#sidebar .app-icons-container')) return;
    var apps = mod('sidebarApps');
    if (!apps || typeof apps.add !== 'function') return;
    try {
      if (apps.get && apps.get('ank-create')) { createAppAdded = true; return; }
    } catch (e) {}
    try {
      apps.add('add', 'ank-create', 'Crear', function (container) {
        buildCreatePanel(container);
      }, true, function () { updateDirLabels(); });
      createAppAdded = true;
    } catch (e) {
      createAppAdded = false;
    }
  }

  var sidebarWatcher = null;

  function watchSidebar() {
    if (sidebarWatcher || !window.MutationObserver || !document.body) return;
    sidebarWatcher = new MutationObserver(function () {
      if (!createAppAdded) registerCreateApp();
      if (createAppAdded && sidebarWatcher) {
        sidebarWatcher.disconnect();
        sidebarWatcher = null;
      }
    });
    sidebarWatcher.observe(document.body, { childList: true, subtree: true });
  }

  /* ---------- dock de botones propios ---------- */
  function dock() {
    var d = q('#ank-dock');
    if (!d) {
      d = document.createElement('div');
      d.id = 'ank-dock';
      (document.body || document.documentElement).appendChild(d);
    }
    return d;
  }

  function montarNuevo() {
    if (!document.body) return;
    var d = dock();
    if (q('.ank-newdoc', d)) return;
    var btn = document.createElement('button');
    btn.type = 'button';
    btn.className = 'ank-dock-btn ank-newdoc';
    btn.textContent = '+';
    btn.setAttribute('aria-label', 'Nuevo archivo');
    btn.setAttribute('title', 'Nuevo archivo');
    pulsar(btn, openNewDoc);
    d.appendChild(btn);
  }

  /* ai.js agrega su botón al mismo dock. */
  window.__ankDockAdd = function (btn, primera) {
    var d = dock();
    if (primera && d.firstChild) d.insertBefore(btn, d.firstChild);
    else d.appendChild(btn);
  };

  /* ---------- nuevo documento ---------- */
  var TYPES = [
    { ext: 'txt', label: 'TXT' },
    { ext: 'md', label: 'MD' },
    { ext: 'html', label: 'HTML' },
    { ext: 'css', label: 'CSS' },
    { ext: 'js', label: 'JS' },
    { ext: 'json', label: 'JSON' },
    { ext: 'py', label: 'PY' },
    { ext: 'sh', label: 'SH' }
  ];
  var dest = '';
  var type = 'txt';
  var busy = false;
  var nativeExec = null;

  function template(ext) {
    switch (ext) {
      case 'html':
        return '<!doctype html>\n<html lang="es">\n<head>\n  <meta charset="utf-8">\n' +
          '  <meta name="viewport" content="width=device-width, initial-scale=1">\n' +
          '  <title>Documento</title>\n</head>\n<body>\n  <h1>Documento</h1>\n</body>\n</html>\n';
      case 'css': return ':root {\n  \n}\n';
      case 'js': return "'use strict';\n\n";
      case 'json': return '{\n  \n}\n';
      case 'md': return '# Título\n\n';
      case 'py': return 'def main():\n    pass\n\n\nif __name__ == "__main__":\n    main()\n';
      case 'sh': return '#!/bin/sh\n\n';
      default: return '';
    }
  }

  function setType(ext) {
    type = ext;
    try { localStorage.setItem('ank.type', ext); } catch (e) {}
    var chips = qa('.ank-chip');
    for (var i = 0; i < chips.length; i++) {
      chips[i].classList.toggle('on', chips[i].getAttribute('data-ext') === ext);
    }
    var input = q('#ank-name');
    if (input && input.value) {
      var base = stripExt(input.value.trim());
      if (base) input.value = base + '.' + ext;
    }
  }

  function setDest() {
    var el = q('#ank-dest');
    if (el) {
      el.textContent = dest ? prettyPath(dest) : 'Sin carpeta';
      el.setAttribute('title', dest || '');
    }
  }

  function showError(msg) {
    var el = q('#ank-err');
    if (el) el.textContent = msg || '';
  }

  function closeNewDoc() {
    var overlay = q('.ank-overlay');
    if (!overlay) return;
    if (overlay.parentNode) overlay.parentNode.removeChild(overlay);
    var stack = mod('actionStack');
    if (stack && stack.remove) { try { stack.remove('ank-newdoc'); } catch (e) {} }
  }

  function openNewDoc() {
    if (q('.ank-overlay')) return;
    dest = currentDir() || '';
    try { var savedType = localStorage.getItem('ank.type'); if (savedType) type = savedType; } catch (e) {}
    if (TYPES.map(function (t) { return t.ext; }).indexOf(type) < 0) type = 'txt';

    var overlay = document.createElement('div');
    overlay.className = 'ank-overlay';
    overlay.innerHTML = [
      '<div class="ank-sheet" role="dialog" aria-modal="true" aria-labelledby="ank-title">',
      '  <div class="ank-sheet-head">',
      '    <div>',
      '      <div class="ank-kicker">Nuevo documento</div>',
      '      <div class="ank-sheet-title" id="ank-title">Crear archivo</div>',
      '    </div>',
      '    <button type="button" class="ank-x" data-ank="close" aria-label="Cerrar">✕</button>',
      '  </div>',
      '  <div class="ank-body">',
      '    <label class="ank-label" for="ank-name">Nombre</label>',
      '    <input id="ank-name" class="ank-input" type="text" autocomplete="off" spellcheck="false" value="sin-titulo.' + type + '">',
      '    <div class="ank-chips">' + TYPES.map(function (t) {
        return '<button type="button" class="ank-chip' + (t.ext === type ? ' on' : '') +
          '" data-ext="' + t.ext + '">' + t.label + '</button>';
      }).join('') + '</div>',
      '    <div class="ank-label">Carpeta destino</div>',
      '    <div class="ank-dirrow">',
      '      <div class="ank-dir" id="ank-dest"></div>',
      '      <button type="button" class="ank-mini" data-ank="pick">Cambiar</button>',
      '    </div>',
      '    <div class="ank-error" id="ank-err"></div>',
      '  </div>',
      '  <div class="ank-sheet-actions">',
      '    <button type="button" class="ank-btn" data-ank="cancel">Cancelar</button>',
      '    <button type="button" class="ank-btn primary" data-ank="create">Crear y abrir</button>',
      '  </div>',
      '</div>'
    ].join('');
    document.body.appendChild(overlay);
    setDest();
    showError(dest ? '' : 'Elegí la carpeta destino con el botón Cambiar.');

    var stack = mod('actionStack');
    if (stack && stack.push) {
      try { stack.push({ id: 'ank-newdoc', action: closeNewDoc }); } catch (e) {}
    }

    var input = q('#ank-name');
    if (input) {
      setTimeout(function () {
        input.focus();
        try {
          var dot = input.value.lastIndexOf('.');
          input.setSelectionRange(0, dot > 0 ? dot : input.value.length);
        } catch (e) {}
      }, 80);
    }

    on(overlay, 'click', function (e) {
      var b = e.target.closest ? e.target.closest('[data-ank], .ank-chip') : null;
      if (e.target === overlay) { closeNewDoc(); return; }
      if (e.target.classList && e.target.classList.contains('ank-chip')) {
        setType(e.target.getAttribute('data-ext'));
        return;
      }
      if (!b) return;
      var act = b.getAttribute('data-ank');
      if (act === 'close' || act === 'cancel') closeNewDoc();
      else if (act === 'create') createDoc();
      else if (act === 'pick') pickFolder();
    });

    on(input, 'keydown', function (e) {
      if (e.key === 'Enter') { e.preventDefault(); createDoc(); }
    });

    on(input, 'input', function () {
      var ext = extOf(input.value);
      if (ext) {
        for (var i = 0; i < TYPES.length; i++) {
          if (TYPES[i].ext === ext) { setType(ext); break; }
        }
      }
    });
  }

  function pickFolder() {
    var fb = mod('fileBrowser');
    if (!fb) { toast('El selector de carpetas no está disponible.'); return; }
    var def = dest ? [{ name: baseName(dest), url: dest }] : [];
    Promise.resolve(fb('folder', 'Carpeta donde crear el archivo', true, def)).then(function (res) {
      if (res && res.url) { dest = res.url; setDest(); showError(''); }
    }).catch(function () {});
  }

  function normalizeName(raw, ext) {
    var s = String(raw || '').trim().replace(/^.*[\\/]/, '');
    s = s.replace(/[:*?"<>|]/g, '-');
    if (!s) return '';
    if (s.charAt(0) === '.' && s.lastIndexOf('.') === 0) return s;
    if (!extOf(s)) s += '.' + ext;
    return s;
  }

  function createDoc() {
    if (busy) return;
    var input = q('#ank-name');
    var err = q('#ank-err');
    if (err) err.textContent = '';
    var name = normalizeName(input && input.value, type);
    if (!name) { showError('Escribí un nombre de archivo.'); return; }
    if (!dest) { showError('Elegí una carpeta de destino.'); return; }

    var ext = extOf(name) || type;
    var url = joinPath(dest, name);
    var btn = q('.ank-btn.primary');
    busy = true;
    if (btn) btn.setAttribute('disabled', 'disabled');

    Promise.resolve().then(function () { return fsOf(dest); }).then(function (dirFs) {
      return Promise.resolve(dirFs.exists()).then(function (ok) {
        if (ok === false) throw new Error('La carpeta destino no existe o no es accesible.');
        return fsOf(url);
      }).then(function (fileFs) {
        return Promise.resolve(fileFs.exists());
      }).then(function (exists) {
        if (exists) throw new Error('Ya existe «' + name + '» en esa carpeta. Probá otro nombre.');
        return dirFs.createFile(name, template(ext));
      });
    }).then(function (created) {
      var finalUrl = created || url;
      try { localStorage.setItem('ank.dir', dest); } catch (e) {}
      refreshFolder(dest);
      return openCreated(finalUrl, name);
    }).then(function () {
      busy = false;
      if (btn) btn.removeAttribute('disabled');
      closeNewDoc();
      toast('Archivo creado: ' + name);
    }).catch(function (e) {
      busy = false;
      if (btn) btn.removeAttribute('disabled');
      showError((e && e.message) ? e.message : 'No se pudo crear el archivo.');
    });
  }

  function refreshFolder(url) {
    var of = mod('openfolder');
    if (!of) return;
    try {
      var folder = typeof of.find === 'function' ? of.find(url) : null;
      if (folder && typeof folder.reload === 'function') { folder.reload(); return; }
    } catch (e) {}
    try {
      if (typeof of.reload === 'function') of.reload();
    } catch (e) {}
  }

  function openCreated(url, name) {
    return new Promise(function (resolve) {
      var EF = mod('EditorFile') || mod('editorFile');
      if (!EF) { exec('open-file'); return resolve(); }
      try {
        var f = new EF(name, { uri: url, isUnsaved: false, render: true });
        if (f && typeof f.load === 'function' && !f.loaded) {
          var p = f.load();
          if (p && typeof p.then === 'function') {
            p.then(function () { resolve(); }, function () { resolve(); });
            return;
          }
        }
        resolve();
      } catch (e) { resolve(); }
    });
  }

  function newFolder() {
    var dir = currentDir();
    if (!dir) { toast('Abrí una carpeta primero.'); return; }
    var prompt = mod('prompt');
    var ask;
    if (prompt) {
      ask = Promise.resolve(prompt('Nombre de la carpeta', 'nueva-carpeta', 'text', { required: true }));
    } else {
      ask = Promise.resolve(window.prompt('Nombre de la carpeta', 'nueva-carpeta'));
    }
    ask.then(function (raw) {
      if (!raw) return;
      var name = String(raw).trim().replace(/[\\/:*?"<>|]/g, '-');
      if (!name) return;
      var url = joinPath(dir, name);
      return fsOf(url).then(function (f) { return f.exists(); }).then(function (exists) {
        if (exists) throw new Error('Ya existe «' + name + '».');
        return fsOf(dir);
      }).then(function (dirFs) {
        return dirFs.createDirectory(name);
      }).then(function (created) {
        refreshFolder(created || url);
        toast('Carpeta creada: ' + name);
      });
    }).catch(function (e) {
      toast((e && e.message) ? e.message : 'No se pudo crear la carpeta.');
    });
  }

  /* ---------- enganche con el editor ---------- */
  var editorHooked = false;
  var sidebarIntent = 0;

  on(document, 'touchstart', function (e) {
    if (e.target && e.target.closest && e.target.closest('#sidebar [data-url]')) sidebarIntent = Date.now();
  }, true);
  on(document, 'mousedown', function (e) {
    if (e.target && e.target.closest && e.target.closest('#sidebar [data-url]')) sidebarIntent = Date.now();
  }, true);

  function hookEditor() {
    var em = window.editorManager;
    if (!em || editorHooked) return;
    if (typeof em.on !== 'function') return;
    editorHooked = true;
    try {
      em.on('switch-file', function () {
        updateDirLabels();
        if (window.innerWidth <= 750 && Date.now() - sidebarIntent < 1500) {
          setTimeout(function () { if (sidebarOpen()) closeSidebar(); }, 80);
        }
      });
      em.on('add-folder', updateDirLabels);
      em.on('file-loaded', updateDirLabels);
    } catch (e) {}
  }

  function hookExec() {
    var a = api();
    if (!a || a.__ankExec || typeof a.exec !== 'function') return;
    nativeExec = a.exec.bind(a);
    a.__ankExec = true;
    a.exec = function (cmd, val) {
      if (cmd === 'new-file' && currentDir()) { openNewDoc(); return true; }
      return nativeExec(cmd, val);
    };
  }

  /* ---------- arranque ---------- */
  var ticks = 0;

  function boot() {
    paint();
    if (ticks < 18) rename();
    montarNuevo();
    if (!window.acode || !window.editorManager) return;
    hookEditor();
    hookExec();
    watchSidebar();
    registerCreateApp();
    updateDirLabels();
  }

  boot();
  document.addEventListener('DOMContentLoaded', boot);
  window.addEventListener('resize', updateDirLabels, false);
  setInterval(function () { ticks++; boot(); }, 600);
})();
