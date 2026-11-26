"use strict";

const fs = require("fs");
const path = require("path");

const ROOT = path.resolve(__dirname, "..");
const DEC = path.join(ROOT, "decoded");
const WWW = path.join(DEC, "assets", "www");
const BUILD = path.join(WWW, "build");

let failures = 0;
let applied = 0;
const log = [];

function read(p) {
  return fs.readFileSync(p, "utf8");
}
function write(p, s) {
  fs.writeFileSync(p, s, "utf8");
}
function patch(file, pairs) {
  let t = read(file);
  for (const [from, to, expect = 1] of pairs) {
    const n = t.split(from).length - 1;
    if (n !== expect) {
      failures++;
      log.push(`FALLO ${path.relative(ROOT, file)} :: esperaba ${expect}, encontró ${n} :: ${from.slice(0, 110)}`);
      continue;
    }
    t = t.split(from).join(to);
    applied++;
  }
  write(file, t);
}
function patchRegex(file, re, to, label) {
  let t = read(file);
  const m = t.match(re);
  if (!m) {
    failures++;
    log.push(`FALLO regex ${path.relative(ROOT, file)} :: ${label}`);
    return;
  }
  t = t.replace(re, to);
  applied++;
  write(file, t);
}

/* ------------------------------------------------------------------ */
/* 1. main.js                                                          */
/* ------------------------------------------------------------------ */
const mainJs = path.join(BUILD, "main.js");

patch(mainJs, [
  ['lang:"en-us"', 'lang:"es-sv"', 1],
  ['this.value.lang=navigator.language||"en-us"', 'this.value.lang="es-sv"', 1],
  ['this.value=structuredClone(t),b(this,x,structuredClone(t))', 'this.value=structuredClone(t),this.value.lang="es-sv",b(this,x,structuredClone(t))', 1],
  ['let e=this.value.lang;u.Ay.set(e)', 'u.Ay.set("es-sv")', 1],
  ['type:"header",text:"Acode"', 'type:"header",text:"ANK"', 1],
  ['LOG_FILE_NAME:"Acode.log"', 'LOG_FILE_NAME:"ANK.log"', 1],
  ['message:"Built into Acode and runs offline in a Web Worker."', 'message:"Integrado en ANK y funciona sin conexión en un Web Worker."', 1]
]);

// SFTP warning dialog
patchRegex(
  mainJs,
  /\(0,et\.default\)\("Some SFTP connections were removed",`[^`]*`\)/,
  '(0,et.default)("Se eliminaron algunas conexiones SFTP",`ANK no pudo mover ${e.length} conexión${1===e.length?"":"es"} SFTP guardada${1===e.length?"":"s"} al almacenamiento cifrado. Se eliminaron los datos afectados y ${t} referencia${1===t?"":"s"} guardada${1===t?"":"s"} para que ANK pueda iniciarse de forma segura. Volvé a añadir la conexión${1===e.length?"":"es"}.<br><br>${r}${n}`)',
  "aviso SFTP"
);

// remove update-consent prompt + GitHub update check
{
  let t = read(mainJs);
  const startMark = 'yield aN(function*(){try{var e;if((0,aI.R)()){';
  const endMark = 'console.error("Failed to prompt for update check consent",e)}})(),';
  const s = t.indexOf(startMark);
  const e = t.indexOf(endMark);
  if (s < 0 || e < 0 || e < s) {
    failures++;
    log.push("FALLO main.js :: bloque de consentimiento de actualizaciones");
  } else {
    t = t.slice(0, s) + t.slice(e + endMark.length);
    applied++;
  }
  const uStart = '!(0,aI.R)()&&eh.default.value.checkForAppUpdates&&navigator.onLine';
  const uEnd = ',e=>{window.log("error","Failed to check for updates"),window.log("error",e)});';
  const us = t.indexOf(uStart);
  const ue = t.indexOf(uEnd, us);
  if (us < 0 || ue < 0) {
    failures++;
    log.push("FALLO main.js :: bloque de chequeo de actualizaciones");
  } else {
    t = t.slice(0, us) + t.slice(ue + uEnd.length);
    applied++;
  }
  write(mainJs, t);
}

/* ------------------------------------------------------------------ */
/* 2. mainSettings.chunk.js                                            */
/* ------------------------------------------------------------------ */
const settingsJs = path.join(BUILD, "mainSettings.chunk.js");

patch(settingsJs, [
  ['{key:"sponsors",text:strings.sponsor,icon:"favorite",info:strings["settings-info-main-sponsors"],category:a.aboutAcode,chevron:!0},{key:"changeLog",text:`${strings.changelog}`,icon:"update",info:strings["settings-info-main-changelog"],category:a.aboutAcode,chevron:!0},{key:"rateapp",text:strings["rate acode"],icon:"star_outline",info:strings["settings-info-main-rateapp"],category:a.aboutAcode,chevron:!0}', '', 1],
  ['if(!o.A.HAS_PRO){let e=m.findIndex(e=>"about"===e.key);m.splice(e,0,{key:"privacyChoices",text:strings["privacy choices"]||"Privacy choices",icon:"tune",info:strings["settings-info-main-privacy-choices"]||"Manage your advertising privacy choices.",category:a.aboutAcode,chevron:!0,hidden:!0})}', '', 1],
  ['o.A.HAS_PRO||(m.push({key:"adRewards",text:strings["earn ad-free time"],icon:"play_arrow",info:strings["settings-info-main-ad-rewards"],category:a.supportAcode,chevron:!0}),m.push({key:"removeads",text:strings["remove ads"],icon:"block",info:`${strings["settings-info-main-remove-ads"]}${!k.A.shouldAllowExternalPurchase()?` ${strings["iap-pro-purchase-warning"]}`:""}`,category:a.supportAcode,chevron:!0}))', '', 1],
  ['...i?[]:[{key:"checkForAppUpdates",text:strings["check for app updates"],checkbox:e.checkForAppUpdates,info:strings["info-checkForAppUpdates"],category:g.advanced}],', '', 1],
  ['{key:"lang",text:strings["change language"],value:e.lang,select:G.Ay.list,valueText:e=>G.Ay.getName(e),info:strings["settings-info-app-language"],category:g.interface},', '', 1],
  ['Acode_backup_', 'ANK_backup_', 1],
  ['subject=feedback - Acode editor', 'subject=Comentarios%20sobre%20ANK', 1],
  ['Scale text across the Acode interface.', 'Escala el texto de toda la interfaz de ANK.', 1],
  ['info:`Version ${BuildInfo.version}`', 'info:`Versión ${BuildInfo.version}`', 1]
]);

patchRegex(
  settingsJs,
  /let x=k\.A\.parseJSON\(localStorage\.getItem\("cached_promotions"\)\);[\s\S]*?category:a\.promotions\}\)\}\)\);/,
  '',
  "quitar promociones"
);

/* ------------------------------------------------------------------ */
/* 3. about.chunk.js + about.css                                       */
/* ------------------------------------------------------------------ */
const aboutJs = path.join(BUILD, "about.chunk.js");
{
  let t = read(aboutJs);
  const s = t.indexOf("function p(){");
  const e = t.indexOf("system.getWebviewInfo(", s);
  if (s < 0 || e < 0) {
    failures++;
    log.push("FALLO about.chunk.js :: no se encontró el render");
  } else {
    const head = 'function p(){let n=(0,l.A)(strings.about.capitalize()),t=c()("N/A");n.classList.add("about-us"),n.body=i()("main","main scroll","about-page",[i()(r.A),i()("div","version-info",null,[i()("h1","version-title",null,["ANK"]),i()("div","version-number",null,["Versión ",BuildInfo.version," (",BuildInfo.versionCode,")"])]),i()("div","info-section",null,[i()("div","info-item",null,[i()("div","info-item-icon",null,[i()("span","icon googlechrome",null)]),i()("div","info-item-text",null,["WebView",i()("div","info-item-subtext",null,[t])])]),i()("div","info-item",null,[i()("div","info-item-icon",null,[i()("span","icon code",null)]),i()("div","info-item-text",null,["Editor de código para Android",i()("div","info-item-subtext",null,["Hecho para editar en el teléfono"])])]),i()("div","info-item",null,[i()("div","info-item-icon",null,[i()("span","icon info",null)]),i()("div","info-item-text",null,["Licencia",i()("div","info-item-subtext",null,["Software libre bajo licencia MIT"])])])]),i()("div","about-note",null,["ANK reúne edición de código, terminal y vista previa en una sola app."])]),';
    t = t.slice(0, s) + head + t.slice(e);
    applied++;
  }
  t = t.replace(
    'system.getWebviewInfo(n=>{e.value=(null==n?void 0:n.packageName)||"N/A",t.value=(null==n?void 0:n.versionName)||"N/A"})',
    'system.getWebviewInfo(n=>{t.value=(null==n?void 0:n.versionName)||"N/A"})'
  );
  t = t.replace(',app.append(n),s.A.showAd()}', ',app.append(n)}');
  write(aboutJs, t);
}

const aboutCss = path.join(BUILD, "about.css");
{
  let t = read(aboutCss);
  t = t.replace("url(/build/logo.png)", "url(../logo.svg)");
  t = t.replace("background-size:80px", "background-size:contain");
  t = t.split("rgba(68,153,254,").join("rgba(224,164,88,");
  t += "#about-page .about-note{max-width:400px;text-align:center;color:color-mix(in srgb, var(--primary-text-color) 70%, transparent);font-size:13px;line-height:1.5}\n";
  write(aboutCss, t);
}

/* ------------------------------------------------------------------ */
/* 4. welcome.chunk.js                                                 */
/* ------------------------------------------------------------------ */
const welcomeJs = path.join(BUILD, "welcome.chunk.js");
{
  let t = read(welcomeJs);
  t = t.replace(/src:"data:image\/png;base64,[^"]+"/, 'src:"./logo.svg"');
  const pairs = [
    ['["Welcome to Acode"]', '["Bienvenido a ANK"]'],
    ['["Powerful code editor for Android"]', '["Editor de código para Android"]'],
    ['["GET STARTED"]', '["EMPEZAR"]'],
    ['["CONFIGURE"]', '["CONFIGURAR"]'],
    ['["LEARN"]', '["APRENDER"]'],
    ['new u.A("Welcome",{id:"welcome-tab",render:!0,type:"page",content:n,tabIcon:"icon acode",hideQuickTools:!0}).setCustomTitle(()=>"Get Started")', 'new u.A("Bienvenida",{id:"welcome-tab",render:!0,type:"page",content:n,hideQuickTools:!0}).setCustomTitle(()=>"Empezar")']
  ];
  for (const [a, b] of pairs) {
    if (!t.includes(a)) {
      failures++;
      log.push("FALLO welcome.chunk.js :: " + a.slice(0, 80));
      continue;
    }
    t = t.split(a).join(b);
    applied++;
  }
  const s = t.indexOf(',i()("section","welcome-section welcome-links"');
  const e = t.indexOf(']));new u.A(', s);
  if (s < 0 || e < 0) {
    failures++;
    log.push("FALLO welcome.chunk.js :: sección CONNECT");
  } else {
    t = t.slice(0, s) + t.slice(e);
    applied++;
  }
  write(welcomeJs, t);
}

/* ------------------------------------------------------------------ */
/* 5. Otros chunks visibles                                            */
/* ------------------------------------------------------------------ */
const small = {
  "plugins.chunk.js": [
    ['"Acode wants to install the following dependencies:"', '"ANK quiere instalar las siguientes dependencias:"'],
    ['"Acode wants to install the following dependency:"', '"ANK quiere instalar la siguiente dependencia:"'],
    ['"Installer Notice"', '"Aviso del instalador"'],
    ['`Built for older Acode versions powered by ${"ace"===e?"Ace":e||"the old editor"}. Install with caution; some features may behave unexpectedly in the current CodeMirror version.`', '`Creada para versiones anteriores de ANK con ${"ace"===e?"Ace":e||"el editor antiguo"}. Instalala con precaución; algunas funciones pueden comportarse de forma inesperada en la versión actual de CodeMirror.`']
  ],
  "3509.chunk.js": [
    ['"Acode wants to install the following dependencies:"', '"ANK quiere instalar las siguientes dependencias:"'],
    ['"Acode wants to install the following dependency:"', '"ANK quiere instalar la siguiente dependencia:"'],
    ['"Installer Notice"', '"Aviso del instalador"']
  ],
  "5890.chunk.js": [
    ['"Acode wants to install the following dependencies:"', '"ANK quiere instalar las siguientes dependencias:"'],
    ['"Acode wants to install the following dependency:"', '"ANK quiere instalar la siguiente dependencia:"'],
    ['"Installer Notice"', '"Aviso del instalador"']
  ],
  "8271.chunk.js": [
    ['"Acode wants to install the following dependencies:"', '"ANK quiere instalar las siguientes dependencias:"'],
    ['"Acode wants to install the following dependency:"', '"ANK quiere instalar la siguiente dependencia:"'],
    ['"Installer Notice"', '"Aviso del instalador"']
  ],
  "2307.chunk.js": [
    ['p("uptime","Uptime")', 'p("uptime","Tiempo activo")'],
    ['p("acode service","Acode Service")', 'p("acode service","Servicio de ANK")'],
    ['p("note","Note")', 'p("note","Nota")'],
    ['p("acode main process","Acode main process")', 'p("acode main process","Proceso principal de ANK")'],
    ['"Active Processes"', '"Procesos activos"'],
    ['p("total memory","Memory Usage")', 'p("total memory","Uso de memoria")'],
    ['"Running processes"', '"Procesos en ejecución"'],
    ['"Command"', '"Comando"'],
    ['"Managed"', '"Gestionado"'],
    ['p("unknown","Unknown")', 'p("unknown","Desconocido")'],
    ['p("just started","Just Started")', 'p("just started","Recién iniciado")'],
    ['p("ppid parent","PPID (Parent)")', 'p("ppid parent","PPID (padre)")'],
    ['p("diff days","{days}d {hr}h ago")', 'p("diff days","Hace {days} d {hr} h")'],
    ['p("diff hr","{hr}h {min}m ago")', 'p("diff hr","Hace {hr} h {min} min")'],
    ['p("diff min","{min}m {sec}s ago")', 'p("diff min","Hace {min} min {sec} s")'],
    ['p("diff sec","{sec}s ago")', 'p("diff sec","Hace {sec} s")']
  ],
  "themeSetting.chunk.js": [
    ['`// Acode is awesome!', '`// ¡ANK es genial!'],
    ['const message = "Welcome to Acode";', 'const message = "Bienvenido a ANK";'],
    ['["acode"]', '["ank"]', 2],
    ['"Hello, Acode!"', '"¡Hola, ANK!"', 2],
    ['"This editor theme is not compatible with Acode\'s CodeMirror runtime."', '"Este tema no es compatible con el motor CodeMirror de ANK."'],
    ['"Invalid theme"', '"Tema no válido"']
  ],
  "8002.chunk.js": [
    ['["Acode\'s Sponsors"]', '["Patrocinadores de ANK"]']
  ],
  "4715.chunk.js": [
    ['"Sponsor Acode"', '"Patrocinar ANK"'],
    ['"Support the future of mobile coding"', '"Apoyá el futuro de la programación en el móvil"'],
    ['"<br><p>Thank you for supporting Acode!</p>"', '"<br><p>¡Gracias por apoyar a ANK!</p>"'],
    ['" (Acode - code editor | FOSS)"', '" (ANK)"']
  ],
  "fileBrowser.chunk.js": [
    ['"Acode_Test_file"', '"ANK_Test_file"']
  ],
  "cssLspWorker.js": [['Acode built-in ', 'ANK integrado ']],
  "htmlLspWorker.js": [['Acode built-in ', 'ANK integrado ']],
  "jsonLspWorker.js": [['Acode built-in ', 'ANK integrado ']]
};

for (const [file, pairs] of Object.entries(small)) {
  patch(path.join(BUILD, file), pairs.map(([a, b, c]) => [a, b, c === undefined ? 1 : c]));
}

/* ------------------------------------------------------------------ */
/* 6. index.html                                                       */
/* ------------------------------------------------------------------ */
patch(path.join(WWW, "index.html"), [
  ['<html lang="en">', '<html lang="es">', 1],
  ['"Acode failed to start: storage is unavailable. Try restarting your device, or clearing the app data. "', '"ANK no pudo iniciar: el almacenamiento no está disponible. Reiniciá el dispositivo o borrá los datos de la app. "', 2],
  ['"Acode failed to start. Update Android System WebView or Chrome. "', '"ANK no pudo iniciar. Actualizá Android System WebView o Chrome. "', 2],
  ['"Startup error"', '"Error de inicio"', 1],
  ['"Startup promise failed"', '"Falló la promesa de inicio"', 1]
]);

/* ------------------------------------------------------------------ */
/* 7. config.xml + versiones                                           */
/* ------------------------------------------------------------------ */
patch(path.join(DEC, "res", "xml", "config.xml"), [
  ['<name>Acode</name>', '<name>ANK</name>', 1],
  ['<description> Light weight code editor and web IDE for android. </description>', '<description> Editor de código ligero con terminal y vista previa para Android. </description>', 1],
  ['android-versionCode="1008" id="com.foxdebug.acode" version="1.13.2"', 'android-versionCode="1011" id="com.foxdebug.acode" version="1.1.1"', 1]
]);

patch(path.join(DEC, "apktool.yml"), [
  ['versionCode: 1010', 'versionCode: 1011', 1],
  ['versionName: 1.1.0', 'versionName: 1.1.1', 1]
]);

/* ------------------------------------------------------------------ */
/* 8. Pack de idioma español (1189.chunk.js)                           */
/* ------------------------------------------------------------------ */
{
  const file = path.join(BUILD, "1189.chunk.js");
  const src = read(file);
  const m = src.match(/JSON\.parse\('([\s\S]*)'\)/);
  if (!m) {
    failures++;
    log.push("FALLO 1189.chunk.js :: no se encontró JSON.parse");
  } else {
    const data = JSON.parse(eval("'" + m[1] + "'"));
    const extra = JSON.parse(read(path.join(ROOT, "tools", "es-extra-a.json")));
    let added = 0;
    for (const [k, v] of Object.entries(extra)) {
      if (!(k in data)) {
        failures++;
        log.push("FALLO locale :: clave inexistente " + k);
        continue;
      }
      data[k] = v;
      added++;
    }
    for (const k of Object.keys(data)) {
      if (typeof data[k] === "string") data[k] = data[k].split("Acode").join("ANK");
    }
    data.lang = "Español";
    data.about = "Acerca de";
    data.recent = "Archivos recientes";

    const json = JSON.stringify(data);
    const payload = json
      .replace(/\\/g, "\\\\")
      .replace(/'/g, "\\'")
      .replace(/[\u007f-\uffff]/g, (c) => "\\u" + c.charCodeAt(0).toString(16).padStart(4, "0"));
    const out = src.slice(0, m.index) + "JSON.parse('" + payload + "')" + src.slice(m.index + m[0].length);
    write(file, out);
    applied += added;
    // sanity: reparse
    const m2 = out.match(/JSON\.parse\('([\s\S]*)'\)/);
    const check = JSON.parse(eval("'" + m2[1] + "'"));
    if (check.lang !== "Español" || check["settings-category-about-acode"] !== "Acerca de ANK") {
      failures++;
      log.push("FALLO locale :: verificación posterior");
    }
  }
}

/* ------------------------------------------------------------------ */
/* 9. Red de seguridad de marca en ank.js                              */
/* ------------------------------------------------------------------ */
patch(path.join(WWW, "ank", "ank.js"), [
  ["n.nodeValue.replace(/Acode/g, 'Código ANK')", "n.nodeValue.replace(/Acode/g, 'ANK')", 1]
]);

/* ------------------------------------------------------------------ */
console.log(`Aplicados: ${applied}`);
if (log.length) {
  console.log(`Fallos: ${failures}`);
  for (const l of log) console.log(" - " + l);
  process.exit(1);
}
console.log("Sin fallos.");
