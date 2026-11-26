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

  function chatNativo(http, options, url, body, timeoutMs) {
    return new Promise(function (resolve, reject) {
      var finished = false;
      var requestId = null;
      var signal = options.signal;
      var timeout = Math.max(1, Math.ceil(timeoutMs / 1000));
      var headers = {
        'Authorization': 'Bearer ' + String(options.apiKey || ''),
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      };
      var nativeBody = Object.assign({}, body, { stream: false });
      var timer = setTimeout(function () {
        abort('La API superó el tiempo de espera.', 'ANK_AI_TIMEOUT');
      }, timeoutMs);

      function cleanup() {
        clearTimeout(timer);
        if (signal) signal.removeEventListener('abort', onAbort);
      }
      function settleError(err) {
        if (finished) return;
        finished = true;
        cleanup();
        reject(err);
      }
      function settleSuccess(result) {
        if (finished) return;
        finished = true;
        cleanup();
        resolve(result);
      }
      function abort(message, code) {
        if (requestId != null && typeof http.abort === 'function') {
          try { http.abort(requestId, function () {}, function () {}); } catch (_) {}
        }
        settleError(fail(message, code));
      }
      function onAbort() {
        abort('La solicitud fue cancelada.', 'ANK_AI_ABORTED');
      }
      if (signal && signal.aborted) {
        onAbort();
        return;
      }
      if (signal) signal.addEventListener('abort', onAbort, { once: true });

      function processResponse(response) {
        var raw = response && response.data != null ? response.data : response;
        var data = raw;
        if (typeof raw === 'string') {
          try { data = JSON.parse(raw); }
          catch (_) { return settleError(fail('La API devolvió una respuesta que no es JSON válido.', 'ANK_AI_INVALID_JSON')); }
        }
        var choice = data && data.choices && data.choices[0] || {};
        var content = textoContenido(choice.message && choice.message.content);
        if (content && options.onDelta) options.onDelta(content);
        settleSuccess({
          content: content,
          usage: data && data.usage || null,
          finishReason: choice.finish_reason || null,
          raw: data
        });
      }

      try {
        requestId = http.sendRequest(url, {
          method: 'post',
          data: nativeBody,
          serializer: 'json',
          headers: headers,
          responseType: 'text',
          connectTimeout: timeout,
          readTimeout: timeout,
          followRedirect: true
        }, processResponse, function (error) {
          var response = error && error.status != null ? error : (error && error.error && error.error.status != null ? error.error : null);
          var raw = error && error.error != null ? error.error : (error && error.data != null ? error.data : '');
          var status = response && response.status != null ? response.status : (error && error.status ? error.status : 0);
          var msg = '';
          if (typeof raw === 'string') {
            try {
              var parsed = JSON.parse(raw);
              msg = parsed && parsed.error && (parsed.error.message || parsed.error.type) || parsed.message || '';
            } catch (_) { msg = raw.slice(0, 500); }
          }
          settleError(fail(
            status ? 'API HTTP ' + status + ': ' + (msg || 'Error de proveedor') : 'Error de conexión nativa: ' + (msg || String(error && (error.message || error.error) || 'sin detalle')),
            status ? 'ANK_AI_HTTP_' + status : 'ANK_AI_NATIVE_HTTP'
          ));
        });
      } catch (error) {
        settleError(fail(error && error.message ? error.message : String(error), 'ANK_AI_NATIVE_HTTP'));
      }
    });
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

    var nativeHttp = options.http && typeof options.http.sendRequest === 'function' ? options.http : null;
    if (!nativeHttp && typeof fetch !== 'function') {
      return Promise.reject(fail('Este WebView no dispone de un transporte HTTP.', 'ANK_AI_FETCH_UNAVAILABLE'));
    }

    var timeoutMs = Number(options.timeoutMs) || DEFAULT_TIMEOUT;
    var control = crearControl(nativeHttp ? undefined : options.signal, nativeHttp ? 0 : timeoutMs);
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

    var request = nativeHttp
      ? chatNativo(nativeHttp, options, url, body, timeoutMs)
      : fetch(url, {
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
        });

    return request.then(function (result) {
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
