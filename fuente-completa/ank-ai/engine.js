/* Código ANK · Motor multi-API
 * Protocolos: OpenAI Chat Completions compatible, Anthropic Messages y Gemini.
 * No instala binarios, no ejecuta shell y no almacena credenciales.
 * Las claves y la configuración pertenecen a la capa privada de ANK.
 */
(function (root, factory) {
  'use strict';
  var api = factory();
  if (typeof module !== 'undefined' && module.exports) module.exports = api;
  if (root) root.ANKAIEngine = api;
})(typeof window !== 'undefined' ? window : (typeof globalThis !== 'undefined' ? globalThis : this), function () {
  'use strict';

  var VERSION = '2.1.0';
  var DEFAULT_TIMEOUT = 120000;
  var MAX_ERROR_LENGTH = 1200;
  var PROTOCOLS = {
    openai: 'openai-chat-completions',
    anthropic: 'anthropic-messages',
    gemini: 'gemini-generate-content'
  };

  function fail(message, code) {
    var err = new Error(message);
    err.code = code || 'ANK_AI_ERROR';
    return err;
  }

  function protocolName(value) {
    var p = String(value || PROTOCOLS.openai).trim().toLowerCase();
    if (p === 'openai' || p === 'openai-compatible' || p === 'openai-chat-completions') return PROTOCOLS.openai;
    if (p === 'anthropic' || p === 'anthropic-messages') return PROTOCOLS.anthropic;
    if (p === 'gemini' || p === 'google' || p === 'gemini-generate-content') return PROTOCOLS.gemini;
    throw fail('Protocolo API no compatible: ' + p, 'ANK_AI_PROTOCOL_UNSUPPORTED');
  }

  function validarUrl(raw) {
    var url;
    try { url = new URL(String(raw || '').trim()); }
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
    return url;
  }

  function endpointUrl(endpoint, protocol, model) {
    var p = protocolName(protocol);
    var url = validarUrl(endpoint);
    var path = url.pathname.replace(/\/+$/, '');
    if (p === PROTOCOLS.openai) {
      if (!/\/chat\/completions$/i.test(path)) path += '/chat/completions';
    } else if (p === PROTOCOLS.anthropic) {
      if (!/\/messages$/i.test(path)) {
        if (/\/v1$/i.test(path)) path += '/messages';
        else path += '/v1/messages';
      }
    } else {
      if (!/:generateContent$/i.test(path)) {
        var modelName = String(model || '').trim();
        if (!modelName) throw fail('Indica el modelo Gemini para construir el endpoint.', 'ANK_AI_MODEL_REQUIRED');
        if (!/\/models$/i.test(path)) path += '/models';
        path += '/' + encodeURIComponent(modelName) + ':generateContent';
      }
    }
    url.pathname = path || '/';
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

  function errorDesdeCuerpo(status, statusText, body) {
    var message = '';
    try {
      var parsed = typeof body === 'string' ? JSON.parse(body || '{}') : body || {};
      if (parsed && parsed.error) {
        message = parsed.error.message || parsed.error.status || parsed.error.type || '';
      } else {
        message = parsed && (parsed.message || parsed.detail) || '';
      }
    } catch (_) {}
    if (!message && typeof body === 'string') message = body.trim().slice(0, 500);
    if (!message) message = statusText || 'Error de conexión';
    message = String(message).slice(0, MAX_ERROR_LENGTH);
    return fail('API HTTP ' + status + ': ' + message, 'ANK_AI_HTTP_' + status);
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
    if (timeoutMs > 0) timer = setTimeout(function () { controller.abort(); }, timeoutMs);
    return {
      controller: controller,
      signal: controller.signal,
      dispose: function () {
        if (timer) clearTimeout(timer);
        if (signal && externalAbort) signal.removeEventListener('abort', externalAbort);
      }
    };
  }

  function normalizarMensajes(messages) {
    return (Array.isArray(messages) ? messages : []).filter(function (m) {
      return m && typeof m.content === 'string' && String(m.content).trim();
    }).map(function (m) {
      var role = String(m.role || 'user').toLowerCase();
      if (role !== 'system' && role !== 'assistant' && role !== 'user') role = 'user';
      return { role: role, content: String(m.content) };
    });
  }

  function crearSolicitud(options, protocol) {
    var messages = normalizarMensajes(options.messages);
    var system = messages.filter(function (m) { return m.role === 'system'; })
      .map(function (m) { return m.content; }).join('\n\n');
    var chatMessages = messages.filter(function (m) { return m.role !== 'system'; });
    var temperature = options.temperature != null && isFinite(Number(options.temperature))
      ? Math.max(0, Math.min(2, Number(options.temperature))) : 0.2;
    var maxTokens = options.maxTokens != null && isFinite(Number(options.maxTokens))
      ? Math.max(1, Math.min(32768, Math.floor(Number(options.maxTokens)))) : null;

    if (protocol === PROTOCOLS.anthropic) {
      return {
        body: {
          model: String(options.model).trim(),
          max_tokens: maxTokens || 4096,
          messages: chatMessages.map(function (m) {
            return { role: m.role === 'assistant' ? 'assistant' : 'user', content: m.content };
          }),
          temperature: temperature
        },
        headers: {
          'x-api-key': String(options.apiKey),
          'anthropic-version': '2023-06-01',
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        stream: false,
        system: system
      };
    }

    if (protocol === PROTOCOLS.gemini) {
      var contents = chatMessages.map(function (m) {
        return {
          role: m.role === 'assistant' ? 'model' : 'user',
          parts: [{ text: m.content }]
        };
      });
      var generationConfig = { temperature: temperature };
      if (maxTokens) generationConfig.maxOutputTokens = maxTokens;
      var body = { contents: contents, generationConfig: generationConfig };
      if (system) body.systemInstruction = { parts: [{ text: system }] };
      return {
        body: body,
        headers: {
          'x-goog-api-key': String(options.apiKey),
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        stream: false
      };
    }

    var openBody = {
      model: String(options.model).trim(),
      messages: messages,
      stream: true
    };
    if (options.temperature != null && isFinite(Number(options.temperature))) openBody.temperature = temperature;
    if (maxTokens) openBody.max_tokens = maxTokens;
    return {
      body: openBody,
      headers: {
        'Authorization': 'Bearer ' + String(options.apiKey),
        'Content-Type': 'application/json',
        'Accept': 'text/event-stream, application/json'
      },
      stream: true
    };
  }

  function respuestaNormalizada(data, protocol) {
    var content = '';
    var usage = null;
    var finishReason = null;
    if (protocol === PROTOCOLS.anthropic) {
      content = textoContenido(data && data.content);
      usage = data && data.usage || null;
      finishReason = data && data.stop_reason || null;
    } else if (protocol === PROTOCOLS.gemini) {
      var candidate = data && data.candidates && data.candidates[0] || {};
      var parts = candidate.content && candidate.content.parts || [];
      content = textoContenido(parts);
      usage = data && data.usageMetadata || null;
      finishReason = candidate.finishReason || null;
      if (!content && data && data.promptFeedback && data.promptFeedback.blockReason) {
        throw fail('Gemini bloqueó la respuesta: ' + data.promptFeedback.blockReason, 'ANK_AI_PROVIDER_BLOCKED');
      }
    } else {
      var choice = data && data.choices && data.choices[0] || {};
      content = textoContenido(choice.message && choice.message.content);
      usage = data && data.usage || null;
      finishReason = choice.finish_reason || null;
    }
    return { content: content, usage: usage, finishReason: finishReason, raw: data };
  }

  function parsearSSE(response, onDelta, signal) {
    if (!response.body || typeof response.body.getReader !== 'function') {
      return response.json().then(function (data) {
        var result = respuestaNormalizada(data, PROTOCOLS.openai);
        if (result.content && onDelta) onDelta(result.content);
        return result;
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
      try { data = JSON.parse(payload); } catch (_) { return; }
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
        buffer += decoder ? decoder.decode(item.value, { stream: true }) : String.fromCharCode.apply(null, item.value);
        var lines = buffer.split(/\r?\n/);
        buffer = lines.pop() || '';
        lines.forEach(consumirLinea);
        return leer();
      });
    }
    return leer();
  }

  function parsearRespuestaNativa(response, protocol) {
    var raw = response && response.data != null ? response.data : response;
    var data = raw;
    if (typeof raw === 'string') {
      try { data = JSON.parse(raw); }
      catch (_) { throw fail('La API devolvió una respuesta que no es JSON válido.', 'ANK_AI_INVALID_JSON'); }
    }
    return respuestaNormalizada(data || {}, protocol);
  }

  function chatNativo(http, options, url, request, timeoutMs, protocol) {
    return new Promise(function (resolve, reject) {
      var finished = false;
      var requestId = null;
      var signal = options.signal;
      var timeout = Math.max(1, Math.ceil(timeoutMs / 1000));
      var headers = request.headers;
      var nativeBody = Object.assign({}, request.body);
      if (request.system && protocol === PROTOCOLS.anthropic) nativeBody.system = request.system;
      if (request.stream) nativeBody.stream = false;
      var timer = setTimeout(function () { abort('La API superó el tiempo de espera.', 'ANK_AI_TIMEOUT'); }, timeoutMs);

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
      function onAbort() { abort('La solicitud fue cancelada.', 'ANK_AI_ABORTED'); }
      if (signal && signal.aborted) { onAbort(); return; }
      if (signal) signal.addEventListener('abort', onAbort, { once: true });

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
        }, function (response) {
          var status = response && response.status != null ? response.status : 200;
          if (status < 200 || status >= 300) {
            var body = response && response.data != null ? response.data : '';
            settleError(errorDesdeCuerpo(status, response.statusText, body));
            return;
          }
          try {
            var result = parsearRespuestaNativa(response, protocol);
            if (result.content && options.onDelta) options.onDelta(result.content);
            settleSuccess(result);
          } catch (error) { settleError(error); }
        }, function (error) {
          var response = error && error.status != null ? error : (error && error.error && error.error.status != null ? error.error : null);
          var raw = error && error.error != null ? error.error : (error && error.data != null ? error.data : '');
          var status = response && response.status != null ? response.status : (error && error.status ? error.status : 0);
          if (status) settleError(errorDesdeCuerpo(status, response && response.statusText, raw));
          else settleError(fail(
            'Error de conexión nativa: ' + String(error && (error.message || error.error) || 'sin detalle').slice(0, 500),
            'ANK_AI_NATIVE_HTTP'
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

    var protocol;
    var url;
    try {
      protocol = protocolName(options.protocol);
      url = endpointUrl(options.endpoint, protocol, model);
    } catch (err) { return Promise.reject(err); }

    var nativeHttp = options.http && typeof options.http.sendRequest === 'function' ? options.http : null;
    if (!nativeHttp && typeof fetch !== 'function') {
      return Promise.reject(fail('Este WebView no dispone de un transporte HTTP.', 'ANK_AI_FETCH_UNAVAILABLE'));
    }

    var timeoutMs = Number(options.timeoutMs) || DEFAULT_TIMEOUT;
    var control = crearControl(options.signal, nativeHttp ? 0 : timeoutMs);
    var request;
    try { request = crearSolicitud(Object.assign({}, options, { apiKey: apiKey, model: model }), protocol); }
    catch (error) { control.dispose(); return Promise.reject(error); }

    var pending = nativeHttp
      ? chatNativo(nativeHttp, Object.assign({}, options, { apiKey: apiKey }), url, request, timeoutMs, protocol)
      : fetch(url, {
          method: 'POST',
          headers: request.headers,
          body: JSON.stringify(request.body),
          signal: control.signal
        }).then(function (response) {
          if (!response.ok) {
            return response.text().then(function (txt) { throw errorDesdeCuerpo(response.status, response.statusText, txt); });
          }
          if (protocol === PROTOCOLS.openai && request.stream) return parsearSSE(response, options.onDelta, control.signal);
          return response.json().then(function (data) {
            var result = respuestaNormalizada(data, protocol);
            if (result.content && options.onDelta) options.onDelta(result.content);
            return result;
          });
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

    return pending.then(function (result) {
      control.dispose();
      if (!result || !String(result.content || '').trim()) {
        throw fail('La API respondió, pero no devolvió texto.', 'ANK_AI_EMPTY_RESPONSE');
      }
      return result;
    }, function (err) {
      control.dispose();
      throw err;
    });
  }

  return {
    version: VERSION,
    protocols: PROTOCOLS,
    protocolName: protocolName,
    endpointUrl: endpointUrl,
    chat: chat
  };
});
