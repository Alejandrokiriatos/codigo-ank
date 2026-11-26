/* Código ANK — configuración y estado del bot.
   Todo lo que contiene datos privados vive en bot/token.txt, bot/config.json
   y bot/estado.json, que no se publican en el repositorio. */

'use strict';

const fs = require('fs');
const path = require('path');

/* ANK_BOT_DATA permite apuntar los datos a otra carpeta (pruebas). */
const RAIZ = process.env.ANK_BOT_DATA ? path.resolve(process.env.ANK_BOT_DATA) : path.join(__dirname, '..');
const RUTA_TOKEN = path.join(RAIZ, 'token.txt');
const RUTA_CONFIG = path.join(RAIZ, 'config.json');
const RUTA_ESTADO = path.join(RAIZ, 'estado.json');

function leerJson(ruta, porDefecto) {
  try {
    return JSON.parse(fs.readFileSync(ruta, 'utf8'));
  } catch (e) {
    return porDefecto;
  }
}

function escribirJson(ruta, datos) {
  const tmp = ruta + '.tmp';
  fs.writeFileSync(tmp, JSON.stringify(datos, null, 2) + '\n', 'utf8');
  fs.renameSync(tmp, ruta);
}

function leerToken() {
  const delEntorno = process.env.TELEGRAM_BOT_TOKEN;
  if (delEntorno && delEntorno.trim()) return delEntorno.trim();
  try {
    const t = fs.readFileSync(RUTA_TOKEN, 'utf8').trim();
    return t || '';
  } catch (e) {
    return '';
  }
}

function guardarToken(token) {
  fs.writeFileSync(RUTA_TOKEN, String(token).trim() + '\n', 'utf8');
}

const CONFIG_BASE = {
  dueno: 0,
  canal: { id: '', titulo: 'ANK', usuario: '' },
  grupo: { id: '', titulo: 'Código ANK', usuario: '' },
  marca: 'ANK',
  voz: 'cercano, técnico y breve; español rioplatense; sin emojis de más',
  automatico: false
};

function leerConfig() {
  const c = leerJson(RUTA_CONFIG, {});
  return Object.assign({}, CONFIG_BASE, c, {
    canal: Object.assign({}, CONFIG_BASE.canal, c.canal || {}),
    grupo: Object.assign({}, CONFIG_BASE.grupo, c.grupo || {})
  });
}

function guardarConfig(cfg) {
  escribirJson(RUTA_CONFIG, cfg);
}

const ESTADO_BASE = {
  offset: 0,
  pendientes: [],
  vistos: [],
  ultimaPasada: '',
  ultimoError: ''
};

function leerEstado() {
  const e = leerJson(RUTA_ESTADO, {});
  return Object.assign({}, ESTADO_BASE, e, {
    pendientes: Array.isArray(e.pendientes) ? e.pendientes : [],
    vistos: Array.isArray(e.vistos) ? e.vistos : []
  });
}

function guardarEstado(estado) {
  escribirJson(RUTA_ESTADO, estado);
}

module.exports = {
  RAIZ,
  RUTA_TOKEN,
  RUTA_CONFIG,
  RUTA_ESTADO,
  leerToken,
  guardarToken,
  leerConfig,
  guardarConfig,
  leerEstado,
  guardarEstado
};
