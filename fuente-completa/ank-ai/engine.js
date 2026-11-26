/* Código ANK · Motor API desacoplado
 * Contrato inicial: Chat Completions compatible con OpenAI.
 * No instala binarios, no ejecuta shell y no guarda credenciales.
 * Las credenciales y la configuración las administra la capa privada de ANK.
 */
(function (root, factory) {
  'use strict';
  var api = factory();
  if (typeof module !== 'undefined' && module.exports) module.exports = api;
  if (root) root.ANKAIEngine = api;
})(typeof window !== 'undefined' ? window : (typeof globalThis !== 'undefined' ? globalThis : this), function () {
  'use strict';

  var VERSION = '2.0.0';
  var DEFAULT_TIMEOUT = 120000;
  var MAX_ERROR_LENGTH = 1200;

  function fail(message, code) {
    var err = new Error(message);
    err.code = code || 'ANK_AI_ERROR';
    return err;
  }

  function endpointUrl(endpoint) {
    var raw = String(endpoint || '').trim();
    if (!raw) throw fail('Falta la dirección de la API.', 'ANK_AI_ENDPOINT_REQUIRED');

    var url;
    try { url = new URL(raw); }
    catch (_) { throw fail('La dirección de la API no es válida.', 'ANK_AI_ENDPOINT_INVALID'); }

    if (url.protocol !== 'https:' && url.protocol !== 'http:') {
      throw fail('La API debe utilizar HTTPS o HTTP para un servidor local.', 'ANK_AI_ENDPOINT_PROTOCOL');
    }
    if (url.username || url.password) {
      throw fail('No incluyas credenciales dentro de la dirección de la API.', 'ANK_AI_ENDPOINT_CREDENTIALS');
    }
    if (!url.hostname) throw fail('La dirección de la API no tiene un servidor válido.', 'ANK_AI_ENDPOINT_INVALID');

    url.hash = '';
    url.search = '';
    var path = url.pathname.replace(/\/+$/, '');
    if (!/\/chat\/completions$/i.test(path)) path += '/chat/completions';
    url.pathname = path || '/chat/completions';
    return url.toString();
  }

  function textoContenido(value) {
    if (typeof value === 'string') return value;
    if (Array.isArray(value)) {
      return value.map(function (part) {
        if (typeof part === 'string') return part;
        return part && typeof part.text === 'string' ? part.text : '';
      }).join('');
    }
    return '';
  }

  function mensajeError(response, body) {
    var message = '';
    try {
      var parsed = JSON.parse(body || '{}');
      message = parsed && parsed.error
        ? (parsed.error.message || parsed.error.type || '')
        : (parsed && (parsed.message || parsed.detail)) || '';
    } catch (_) {}
    if (!message) message = String(body || '').trim().slice(0, 500);
    if (!message) message = response.statusText || 'Error de conexión';
    message = message.slice(0, MAX_ERROR_LENGTH);
    return fail('API HTTP ' + response.status + ': ' + message, 'ANK_AI_HTTP_' + response.status);
  }

  function crearControl(signal, timeoutMs) {
    if (typeof AbortController === 'undefined') {
      return { controller: null, signal: signal || undefined, dispose: function () {} };
    }
    var controller = new AbortController();
    var timer = null;
    var externalAbort = null;
    if (signal) {
      if (signal.aborted) controller.abort();
      else {
        externalAbort = function () { controller.abort(); };
        signal.addEventListener('abort', externalAbort, { once: true });
      }
    }
    if (timeoutMs > 0) {
      timer = setTimeout(function () { controller.abort(); }, timeoutMs);
    }
    return {
      controller: controller,
      signal: controller.signal,
      dispose: function () {
        if (timer) clearTimeout(timer);
        if (signal && externalAbort) signal.removeEventListener('abort', externalAbort);
      }
    };
  }

  function parsearSSE(response, onDelta, signal) {
    if (!response.body || typeof response.body.getReader !== 'function') {
      return response.json().then(function (data) {
        var choice = data && data.choices && data.choices[0] || {};
        var content = textoContenido(choice.message && choice.message.content);
        if (content && onDelta) onDelta(content);
        return {
          content: content,
          usage: data && data.usage || null,
          finishReason: choice.finish_reason || null,
          raw: data
        };
      });
    }

    var reader = response.body.getReader();
    var decoder = typeof TextDecoder !== 'undefined' ? new TextDecoder('utf-8') : null;
    var buffer = '';
    var content = '';
    var usage = null;
    var finishReason = null;

    function consumirLinea(line) {
      var value = String(line || '').trim();
      if (!value || value.indexOf('data:') !== 0) return;
      var payload = value.slice(5).trim();
      if (!payload || payload === '[DONE]') return;
      var data;
      try { data = JSON.parse(payload); }
      catch (_) { return; }

      if (data.usage) usage = data.usage;
      var choice = data.choices && data.choices[0];
      if (!choice) return;
      if (choice.finish_reason) finishReason = choice.finish_reason;
      var delta = choice.delta || {};
      var part = textoContenido(delta.content);
      if (part) {
        content += part;
        if (onDelta) onDelta(part);
      }
    }

    function leer() {
      if (signal && signal.aborted) {
        try { reader.cancel(); } catch (_) {}
        throw fail('La solicitud fue cancelada.', 'ANK_AI_ABORTED');
      }
      return reader.read().then(function (item) {
        if (item.done) {
          if (buffer) consumirLinea(buffer);
          return { content: content, usage: usage, finishReason: finishReason };
        }
        buffer += decoder
          ? decoder.decode(item.value, { stream: true })
          : String.fromCharCode.apply(null, item.value);
        var lines = buffer.split(/\r?\n/);
        buffer = lines.pop() || '';
        lines.forEach(consumirLinea);
        return leer();
      });
    }

    return leer();
  }

  function chat(options) {
    options = options || {};
    var apiKey = String(options.apiKey || '').trim();
    var model = String(options.model || '').trim();
    if (!apiKey) return Promise.reject(fail('Falta la clave API.', 'ANK_AI_KEY_REQUIRED'));
    if (!model) return Promise.reject(fail('Indica el nombre del modelo.', 'ANK_AI_MODEL_REQUIRED'));

    var url;
    try { url = endpointUrl(options.endpoint); }
    catch (err) { return Promise.reject(err); }

    if (typeof fetch !== 'function') {
      return Promise.reject(fail('Este WebView no dispone de fetch.', 'ANK_AI_FETCH_UNAVAILABLE'));
    }

    var control = crearControl(options.signal, Number(options.timeoutMs) || DEFAULT_TIMEOUT);
    var messages = Array.isArray(options.messages) ? options.messages : [];
    var body = {
      model: model,
      messages: messages,
      stream: true
    };
    if (options.temperature != null && isFinite(Number(options.temperature))) {
      body.temperature = Math.max(0, Math.min(2, Number(options.temperature)));
    }
    if (options.maxTokens != null && isFinite(Number(options.maxTokens))) {
      body.max_tokens = Math.max(1, Math.min(32768, Math.floor(Number(options.maxTokens))));
    }

    return fetch(url, {
      method: 'POST',
      headers: {
        'Authorization': 'Bearer ' + apiKey,
        'Content-Type': 'application/json',
        'Accept': 'text/event-stream, application/json'
      },
      body: JSON.stringify(body),
      signal: control.signal
    }).then(function (response) {
      if (!response.ok) {
        return response.text().then(function (txt) { throw mensajeError(response, txt); });
      }
      return parsearSSE(response, options.onDelta, control.signal);
    }).catch(function (err) {
      if (err && err.code) throw err;
      if (err && err.name === 'AbortError') {
        throw fail('La solicitud se canceló o superó el tiempo de espera.', 'ANK_AI_ABORTED');
      }
      var message = err && err.message ? err.message : String(err || 'Error de red');
      if (/failed to fetch|networkerror|load failed/i.test(message)) {
        message = 'No se pudo conectar con la API. Comprueba la dirección, la conexión y los permisos de red.';
      }
      throw fail(message.slice(0, MAX_ERROR_LENGTH), 'ANK_AI_NETWORK');
    }).then(function (result) {
      control.dispose();
      if (!result.content.trim()) throw fail('La API respondió, pero no devolvió texto.', 'ANK_AI_EMPTY_RESPONSE');
      return result;
    }, function (err) {
      control.dispose();
      throw err;
    });
  }

  return {
    version: VERSION,
    endpointUrl: endpointUrl,
    chat: chat
  };
});
