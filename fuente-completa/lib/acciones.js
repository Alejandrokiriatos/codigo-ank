/* Código ANK — operaciones sobre el canal y el grupo.
   Todo lo que la app y el asistente pueden tocar de Telegram pasa por acá. */

'use strict';

const fs = require('fs');
const path = require('path');
const { crearApi } = require('./telegram');
const { leerConfig, guardarConfig, leerEstado, guardarEstado, leerToken } = require('./estado');

const PERMISOS = {
  abierto: {
    can_send_messages: true,
    can_send_audios: true,
    can_send_documents: true,
    can_send_photos: true,
    can_send_videos: true,
    can_send_video_notes: true,
    can_send_voice_notes: true,
    can_send_polls: true,
    can_send_other_messages: true,
    can_add_web_page_previews: true,
    can_change_info: false,
    can_invite_users: true,
    can_pin_messages: false,
    can_manage_topics: false
  },
  'solo-admins': {
    can_send_messages: false,
    can_send_audios: false,
    can_send_documents: false,
    can_send_photos: false,
    can_send_videos: false,
    can_send_video_notes: false,
    can_send_voice_notes: false,
    can_send_polls: false,
    can_send_other_messages: false,
    can_add_web_page_previews: false,
    can_change_info: false,
    can_invite_users: true,
    can_pin_messages: false,
    can_manage_topics: false
  },
  lectura: {
    can_send_messages: false,
    can_send_audios: false,
    can_send_documents: false,
    can_send_photos: false,
    can_send_videos: false,
    can_send_video_notes: false,
    can_send_voice_notes: false,
    can_send_polls: false,
    can_send_other_messages: false,
    can_add_web_page_previews: false,
    can_change_info: false,
    can_invite_users: false,
    can_pin_messages: false,
    can_manage_topics: false
  }
};

const DERECHOS_ADMIN = {
  can_manage_chat: true,
  can_delete_messages: true,
  can_manage_video_chats: true,
  can_restrict_members: true,
  can_promote_members: false,
  can_change_info: true,
  can_invite_users: true,
  can_pin_messages: true,
  can_manage_topics: true,
  can_post_messages: true,
  can_edit_messages: true
};

const COMANDOS_BOT = [
  { command: 'estado', description: 'Cómo está el canal y el grupo' },
  { command: 'pendientes', description: 'Mensajes sin responder' },
  { command: 'publicar', description: 'Publicar un texto en el canal' },
  { command: 'responder', description: 'Responder a un mensaje del grupo' },
  { command: 'ayuda', description: 'Qué puedo hacer' }
];

function api() {
  const token = leerToken();
  if (!token) throw new Error('falta el token: guardalo en bot/token.txt o en TELEGRAM_BOT_TOKEN');
  return crearApi(token);
}

function nombrePalabra(p) {
  return String(p || '').trim().toLowerCase();
}

/* Acepta «canal», «grupo» o un id numérico / @usuario. */
function resolverChat(objetivo, cfg) {
  const p = nombrePalabra(objetivo);
  if (p === 'canal' || p === 'channel') {
    if (!cfg.canal.id && !cfg.canal.usuario) throw new Error('el canal no está configurado: corré «adoptar»');
    return cfg.canal.id || cfg.canal.usuario;
  }
  if (p === 'grupo' || p === 'group') {
    if (!cfg.grupo.id && !cfg.grupo.usuario) throw new Error('el grupo no está configurado: corré «adoptar»');
    return cfg.grupo.id || cfg.grupo.usuario;
  }
  if (!p) throw new Error('falta el destino (canal, grupo o id)');
  return objetivo;
}

async function revisar() {
  const t = api();
  const cfg = leerConfig();
  const yo = await t.llamar('getMe');
  const salida = { bot: yo, canal: null, grupo: null };

  for (const clave of ['canal', 'grupo']) {
    const ref = cfg[clave].id || cfg[clave].usuario;
    if (!ref) continue;
    try {
      const chat = await t.llamar('getChat', { chat_id: ref });
      const admins = await t.llamar('getChatAdministrators', { chat_id: ref }).catch(function () { return []; });
      const yoAdmin = admins.find(function (a) { return a.user && a.user.id === yo.id; });
      salida[clave] = {
        id: chat.id,
        titulo: chat.title,
        tipo: chat.type,
        usuario: chat.username || '',
        descripcion: chat.description || '',
        miembros: chat.member_count || (await t.llamar('getChatMemberCount', { chat_id: ref }).catch(function () { return null; })),
        soyAdmin: !!yoAdmin,
        derechos: yoAdmin ? yoAdmin : null
      };
    } catch (e) {
      salida[clave] = { error: e.message };
    }
  }
  return salida;
}

/* Descubre canales y grupos donde ya está el bot y los guarda. */
async function adoptar() {
  const t = api();
  const cfg = leerConfig();
  const upd = await t.llamar('getUpdates', { timeout: 0, limit: 100, allowed_updates: ['my_chat_member', 'message', 'channel_post'] });
  const candidatos = new Map();

  for (const u of upd) {
    const chat = (u.my_chat_member && u.my_chat_member.chat) ||
      (u.channel_post && u.channel_post.chat) ||
      (u.message && u.message.chat);
    if (!chat) continue;
    if (chat.type !== 'channel' && chat.type !== 'group' && chat.type !== 'supergroup') continue;
    candidatos.set(String(chat.id), chat);
  }

  if (!candidatos.size) {
    throw new Error('no encontré canales ni grupos: agregá el bot y volvé a intentar');
  }

  const encontrados = [];
  for (const chat of candidatos.values()) {
    const item = { id: chat.id, titulo: chat.title || '', tipo: chat.type, usuario: chat.username || '' };
    encontrados.push(item);
    if (chat.type === 'channel') {
      cfg.canal.id = chat.id;
      cfg.canal.titulo = item.titulo;
      cfg.canal.usuario = item.usuario;
    } else {
      cfg.grupo.id = chat.id;
      cfg.grupo.titulo = item.titulo;
      cfg.grupo.usuario = item.usuario;
    }
  }

  const cambios = { canal: !!cfg.canal.id, grupo: !!cfg.grupo.id };
  if (!cfg.dueno) {
    const privados = upd.filter(function (u) { return u.message && u.message.chat && u.message.chat.type === 'private'; });
    if (privados.length) cfg.dueno = privados[privados.length - 1].message.from.id;
  }
  guardarConfig(cfg);

  /* Descarta lo ya leído para que la próxima pasada empiece limpia. */
  if (upd.length) {
    const st = leerEstado();
    st.offset = upd[upd.length - 1].update_id + 1;
    guardarEstado(st);
  }

  return { encontrados: encontrados, configurado: cambios, dueno: cfg.dueno };
}

/* Registra el canal enlazado al grupo (el que aparece en «Discusión»). */
async function enlazarCanal() {
  const t = api();
  const cfg = leerConfig();
  if (!cfg.grupo.id) throw new Error('primero configurá el grupo con «adoptar»');
  const g = await t.llamar('getChat', { chat_id: cfg.grupo.id });
  if (!g.linked_chat_id) throw new Error('el grupo no tiene un canal enlazado');
  const c = await t.llamar('getChat', { chat_id: g.linked_chat_id });
  cfg.canal.id = c.id;
  cfg.canal.titulo = c.title || '';
  cfg.canal.usuario = c.username || '';
  guardarConfig(cfg);
  return { canal: { id: c.id, titulo: c.title, usuario: c.username || '' } };
}

async function setNombre(destino, texto) {
  const t = api();
  const cfg = leerConfig();
  const chat = resolverChat(destino, cfg);
  if (!texto || !texto.trim()) throw new Error('falta el nombre nuevo');
  if (String(texto).length > 128) throw new Error('el nombre no puede pasar de 128 caracteres');
  await t.llamar('setChatTitle', { chat_id: chat, title: String(texto).trim() });
  if (nombrePalabra(destino) === 'canal') cfg.canal.titulo = String(texto).trim();
  if (nombrePalabra(destino) === 'grupo') cfg.grupo.titulo = String(texto).trim();
  guardarConfig(cfg);
  return { chat: chat, nombre: String(texto).trim() };
}

async function setDescripcion(destino, texto) {
  const t = api();
  const cfg = leerConfig();
  const chat = resolverChat(destino, cfg);
  await t.llamar('setChatDescription', { chat_id: chat, description: String(texto || '').slice(0, 255) });
  return { chat: chat, descripcion: String(texto || '') };
}

async function setFoto(destino, rutaFoto) {
  const t = api();
  const cfg = leerConfig();
  const chat = resolverChat(destino, cfg);
  if (!rutaFoto || !fs.existsSync(rutaFoto)) throw new Error('no encuentro la imagen: ' + (rutaFoto || '(vacía)'));
  const r = await t.llamarConArchivo('setChatPhoto', { chat_id: chat }, 'photo', path.resolve(rutaFoto));
  return { chat: chat, ok: r === true, archivo: path.resolve(rutaFoto) };
}

async function setPermisos(destino, preset) {
  const t = api();
  const cfg = leerConfig();
  const chat = resolverChat(destino, cfg);
  const clave = nombrePalabra(preset);
  const permisos = PERMISOS[clave];
  if (!permisos) throw new Error('permisos válidos: ' + Object.keys(PERMISOS).join(', '));
  await t.llamar('setChatPermissions', { chat_id: chat, permissions: permisos, use_independent_chat_permissions: true });
  return { chat: chat, preset: clave };
}

async function restringir(destino, usuario, minutos) {
  const t = api();
  const cfg = leerConfig();
  const chat = resolverChat(destino, cfg);
  const id = Number(usuario);
  if (!id) throw new Error('falta el id del usuario');
  const segundos = minutos ? Number(minutos) * 60 : 0;
  await t.llamar('restrictChatMember', {
    chat_id: chat,
    user_id: id,
    permissions: PERMISOS.lectura,
    until_date: segundos ? Math.floor(Date.now() / 1000) + segundos : 0,
    use_independent_chat_permissions: true
  });
  return { chat: chat, usuario: id, minutos: minutos ? Number(minutos) : 'indefinido' };
}

async function liberar(destino, usuario) {
  const t = api();
  const cfg = leerConfig();
  const chat = resolverChat(destino, cfg);
  const id = Number(usuario);
  if (!id) throw new Error('falta el id del usuario');
  await t.llamar('restrictChatMember', {
    chat_id: chat,
    user_id: id,
    permissions: PERMISOS.abierto,
    until_date: 0,
    use_independent_chat_permissions: true
  });
  return { chat: chat, usuario: id };
}

async function admin(destino, usuario, si, cargo) {
  const t = api();
  const cfg = leerConfig();
  const chat = resolverChat(destino, cfg);
  const id = Number(usuario);
  if (!id) throw new Error('falta el id del usuario');
  const derechos = si === false
    ? { can_manage_chat: false, can_delete_messages: false, can_manage_video_chats: false, can_restrict_members: false, can_promote_members: false, can_change_info: false, can_invite_users: false, can_pin_messages: false, can_manage_topics: false, can_post_messages: false, can_edit_messages: false }
    : DERECHOS_ADMIN;
  await t.llamar('promoteChatMember', Object.assign({ chat_id: chat, user_id: id }, derechos));
  if (si !== false && cargo) {
    await t.llamar('setChatAdministratorCustomTitle', { chat_id: chat, user_id: id, custom_title: String(cargo).slice(0, 16) })
      .catch(function () {});
  }
  return { chat: chat, usuario: id, admin: si !== false, cargo: cargo || '' };
}

async function pin(destino, mensaje, quitar) {
  const t = api();
  const cfg = leerConfig();
  const chat = resolverChat(destino, cfg);
  const id = Number(mensaje);
  if (!id) throw new Error('falta el id del mensaje');
  if (quitar) {
    await t.llamar('unpinChatMessage', { chat_id: chat, message_id: id });
    return { chat: chat, mensaje: id, fijado: false };
  }
  await t.llamar('pinChatMessage', { chat_id: chat, message_id: id, disable_notification: false });
  return { chat: chat, mensaje: id, fijado: true };
}

async function publicar(texto, destino) {
  const t = api();
  const cfg = leerConfig();
  const chat = destino ? resolverChat(destino, cfg) : (cfg.canal.id || cfg.canal.usuario);
  if (!chat) throw new Error('el canal no está configurado: corré «adoptar»');
  const cuerpo = String(texto || '').trim();
  if (!cuerpo) throw new Error('falta el texto a publicar');
  const r = await t.llamar('sendMessage', {
    chat_id: chat,
    text: cuerpo,
    parse_mode: 'HTML',
    link_preview_options: { is_disabled: false }
  });
  return { chat: chat, mensaje: r.message_id, texto: cuerpo };
}

async function mensaje(chat, texto, responderA) {
  const t = api();
  const cfg = leerConfig();
  const destino = /^-?\d+$/.test(String(chat)) ? chat : resolverChat(chat, cfg);
  const datos = { chat_id: destino, text: String(texto || '').trim(), parse_mode: 'HTML' };
  if (!datos.text) throw new Error('falta el texto');
  if (responderA) datos.reply_parameters = { message_id: Number(responderA), allow_sending_without_reply: true };
  const r = await t.llamar('sendMessage', datos);
  return { chat: destino, mensaje: r.message_id };
}

/* Datos del propio bot (nombre y descripciones visibles en Telegram). */
async function setMiNombre(texto) {
  const t = api();
  const nombre = String(texto || '').trim();
  if (!nombre) throw new Error('falta el nombre');
  if (nombre.length > 64) throw new Error('el nombre del bot no puede pasar de 64 caracteres');
  await t.llamar('setMyName', { name: nombre });
  return { nombre: nombre };
}

async function setMiDescripcion(texto) {
  const t = api();
  const desc = String(texto || '').trim();
  if (desc.length > 512) throw new Error('la descripción no puede pasar de 512 caracteres');
  await t.llamar('setMyDescription', { description: desc });
  return { descripcion: desc };
}

async function setMiDescripcionCorta(texto) {
  const t = api();
  const desc = String(texto || '').trim();
  if (desc.length > 120) throw new Error('la descripción corta no puede pasar de 120 caracteres');
  await t.llamar('setMyShortDescription', { short_description: desc });
  return { descripcionCorta: desc };
}

/* Foto del propio bot. */
async function setMiFoto(rutaFoto) {
  const t = api();
  if (!rutaFoto || !fs.existsSync(rutaFoto)) throw new Error('no encuentro la imagen: ' + (rutaFoto || '(vacía)'));
  await t.llamarAdjunto(
    'setMyProfilePhoto',
    { photo: { type: 'static', photo: 'attach://perfil' } },
    'perfil',
    path.resolve(rutaFoto),
    'perfil'
  );
  return { archivo: path.resolve(rutaFoto) };
}

/* Menú de comandos en el chat privado. */
async function setMenuComandos() {
  const t = api();
  await t.llamar('setChatMenuButton', { menu_button: { type: 'commands' } });
  return { menu: 'comandos' };
}

async function instalarComandos() {
  const t = api();
  await t.llamar('setMyCommands', { commands: COMANDOS_BOT });
  return COMANDOS_BOT;
}

module.exports = {
  PERMISOS,
  COMANDOS_BOT,
  api,
  revisar,
  adoptar,
  enlazarCanal,
  setNombre,
  setDescripcion,
  setFoto,
  setPermisos,
  restringir,
  liberar,
  admin,
  pin,
  publicar,
  mensaje,
  instalarComandos,
  setMiNombre,
  setMiDescripcion,
  setMiDescripcionCorta,
  setMiFoto,
  setMenuComandos,
  resolverChat
};
