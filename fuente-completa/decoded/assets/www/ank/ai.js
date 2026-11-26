/* ANK_AI_ENGINE_BUNDLE_BEGIN */
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
    gemini: 'gemini-generate-content',
    custom: 'custom-json'
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
    if (p === 'custom' || p === 'custom-json' || p === 'rest-json') return PROTOCOLS.custom;
    throw fail('Protocolo API no compatible: ' + p, 'ANK_AI_PROTOCOL_UNSUPPORTED');
  }

  function esHostLocal(host) {
    var value = String(host || '').toLowerCase().replace(/^\[|\]$/g, '');
    if (value === 'localhost' || value.endsWith('.localhost') || value.endsWith('.local') || value === '::1') return true;
    if (value.indexOf(':') !== -1) return /^(fc|fd|fe8|fe9|fea|feb)/i.test(value);
    var parts = value.split('.');
    if (parts.length !== 4 || parts.some(function (part) { return !/^\d{1,3}$/.test(part) || Number(part) > 255; })) return false;
    var a = Number(parts[0]), b = Number(parts[1]);
    return a === 10 || a === 127 || (a === 192 && b === 168) ||
      (a === 172 && b >= 16 && b <= 31) || (a === 169 && b === 254);
  }

  function validarUrl(raw) {
    var url;
    try { url = new URL(String(raw || '').trim()); }
    catch (_) { throw fail('La dirección de la API no es válida.', 'ANK_AI_ENDPOINT_INVALID'); }
    if (url.protocol !== 'https:' && url.protocol !== 'http:') {
      throw fail('La API debe utilizar HTTPS o HTTP para un servidor local.', 'ANK_AI_ENDPOINT_PROTOCOL');
    }
    if (url.protocol === 'http:' && !esHostLocal(url.hostname)) {
      throw fail('Las APIs públicas deben utilizar HTTPS. HTTP solo se permite para servicios locales o de red privada.', 'ANK_AI_ENDPOINT_INSECURE');
    }
    if (url.username || url.password) {
      throw fail('No incluyas credenciales dentro de la dirección de la API.', 'ANK_AI_ENDPOINT_CREDENTIALS');
    }
    if (!url.hostname) throw fail('La dirección de la API no tiene un servidor válido.', 'ANK_AI_ENDPOINT_INVALID');
    url.hash = '';
    // Se conservan parámetros no sensibles que algunos gateways requieren.
    // Las claves API no deben viajar en query strings.
    if (/(^|[?&])(key|api[_-]?key|token|access[_-]?token|authorization)=/i.test(url.search)) {
      throw fail('No pongas claves API ni tokens en la URL. Usa el encabezado de autenticación.', 'ANK_AI_ENDPOINT_SECRET');
    }
    return url;
  }

  function endpointUrl(endpoint, protocol, model) {
    var p = protocolName(protocol);
    var url = validarUrl(endpoint);
    var path = url.pathname.replace(/\/+$/, '');
    if (p === PROTOCOLS.custom) {
      // En modo personalizado el endpoint se usa exactamente como lo escribió el usuario.
      if (!path) path = '/';
    } else if (p === PROTOCOLS.openai) {
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

  function leerObjetoJSON(value, label) {
    if (value == null || value === '') return {};
    var parsed = value;
    if (typeof value === 'string') {
      try { parsed = JSON.parse(value); }
      catch (_) { throw fail(label + ' debe contener JSON válido.', 'ANK_AI_CUSTOM_JSON_INVALID'); }
    }
    if (!parsed || typeof parsed !== 'object' || Array.isArray(parsed)) {
      throw fail(label + ' debe ser un objeto JSON.', 'ANK_AI_CUSTOM_JSON_INVALID');
    }
    return parsed;
  }

  function sustituirPlantilla(value, variables) {
    if (Array.isArray(value)) return value.map(function (item) { return sustituirPlantilla(item, variables); });
    if (value && typeof value === 'object') {
      var output = {};
      Object.keys(value).forEach(function (key) {
        if (key === '__proto__' || key === 'prototype' || key === 'constructor') {
          throw fail('La plantilla contiene una propiedad JSON no permitida.', 'ANK_AI_CUSTOM_BODY_INVALID');
        }
        output[key] = sustituirPlantilla(value[key], variables);
      });
      return output;
    }
    if (typeof value !== 'string') return value;
    var exact = value.match(/^\{\{([A-Z_]+)\}\}$/);
    if (exact && Object.prototype.hasOwnProperty.call(variables, exact[1])) return variables[exact[1]];
    return value.replace(/\{\{([A-Z_]+)\}\}/g, function (match, name) {
      return Object.prototype.hasOwnProperty.call(variables, name) ? String(variables[name]) : match;
    });
  }

  function leerRuta(obj, path) {
    var parts = String(path || '').split('.').filter(Boolean);
    var value = obj;
    for (var i = 0; i < parts.length; i++) {
      var key = parts[i];
      if (key === '__proto__' || key === 'prototype' || key === 'constructor') return undefined;
      if (value == null) return undefined;
      value = value[key];
    }
    return value;
  }

  function headersPersonalizados(options) {
    var custom = leerObjetoJSON(options.customHeaders, 'Los encabezados adicionales');
    var headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };
    Object.keys(custom).forEach(function (name) {
      if (!/^[A-Za-z0-9!#$%&*+.^_~-]+$/.test(name) ||
          /^(host|content-length|connection|cookie|set-cookie|transfer-encoding)$/i.test(name)) {
        throw fail('Encabezado no permitido: ' + name, 'ANK_AI_CUSTOM_HEADER_INVALID');
      }
      var value = custom[name];
      if (value == null || (typeof value !== 'string' && typeof value !== 'number' && typeof value !== 'boolean')) {
        throw fail('El valor del encabezado ' + name + ' debe ser texto o número.', 'ANK_AI_CUSTOM_HEADER_INVALID');
      }
      var headerValue = String(value)
        .replace(/\{\{API_KEY\}\}/g, String(options.apiKey || ''))
        .replace(/\{\{MODEL\}\}/g, String(options.model || ''));
      if (/[\r\n]/.test(headerValue)) {
        throw fail('Los encabezados no pueden contener saltos de línea.', 'ANK_AI_CUSTOM_HEADER_INVALID');
      }
      headers[name] = headerValue;
    });
    var authName = String(options.customAuthHeader == null ? 'Authorization' : options.customAuthHeader).trim();
    if (authName) {
      if (!/^[A-Za-z0-9!#$%&*+.^_~-]+$/.test(authName) ||
          /^(host|content-length|connection|cookie|set-cookie|transfer-encoding)$/i.test(authName)) {
        throw fail('Nombre del encabezado de autenticación no válido.', 'ANK_AI_CUSTOM_HEADER_INVALID');
      }
      var prefix = String(options.customAuthPrefix == null ? 'Bearer' : options.customAuthPrefix).trim();
      if (/[\r\n]/.test(prefix)) {
        throw fail('El prefijo de autenticación no puede contener saltos de línea.', 'ANK_AI_CUSTOM_HEADER_INVALID');
      }
      headers[authName] = (prefix ? prefix + ' ' : '') + String(options.apiKey || '');
    }
    return headers;
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

    if (protocol === PROTOCOLS.custom) {
      var templateText = String(options.customBodyTemplate || '').trim();
      if (!templateText) {
        templateText = '{"model":"{{MODEL}}","messages":"{{MESSAGES}}","temperature":"{{TEMPERATURE}}","max_tokens":"{{MAX_TOKENS}}"}';
      }
      var template;
      try { template = JSON.parse(templateText); }
      catch (_) { throw fail('La plantilla del cuerpo debe ser JSON válido.', 'ANK_AI_CUSTOM_BODY_INVALID'); }
      var variables = {
        MODEL: String(options.model || ''),
        MESSAGES: messages,
        SYSTEM: system,
        API_KEY: String(options.apiKey || ''),
        TEMPERATURE: temperature,
        MAX_TOKENS: maxTokens || 4096
      };
      var customBody = sustituirPlantilla(template, variables);
      return {
        body: customBody,
        headers: headersPersonalizados(options),
        stream: false
      };
    }

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

  function respuestaNormalizada(data, protocol, options) {
    var content = '';
    var usage = null;
    var finishReason = null;
    if (protocol === PROTOCOLS.custom) {
      var responsePath = String(options && options.customResponsePath || 'choices.0.message.content').trim();
      var extracted = leerRuta(data, responsePath);
      if (typeof extracted === 'string' || Array.isArray(extracted)) content = textoContenido(extracted);
      else if (extracted != null && typeof extracted === 'object') {
        if (typeof extracted.text === 'string') content = extracted.text;
        else content = JSON.stringify(extracted);
      }
      usage = data && (data.usage || data.usageMetadata) || null;
      finishReason = data && (data.finish_reason || data.stop_reason) || null;
    } else if (protocol === PROTOCOLS.anthropic) {
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

  function parsearRespuestaNativa(response, protocol, options) {
    var raw = response && response.data != null ? response.data : response;
    var data = raw;
    if (typeof raw === 'string') {
      try { data = JSON.parse(raw); }
      catch (_) { throw fail('La API devolvió una respuesta que no es JSON válido.', 'ANK_AI_INVALID_JSON'); }
    }
    return respuestaNormalizada(data || {}, protocol, options);
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
            var result = parsearRespuestaNativa(response, protocol, options);
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

  function validarComando(command) {
    var raw = String(command == null ? '' : command).trim();
    function no(reason) { return { ok: false, command: raw, reason: reason }; }
    if (!raw) return no('El comando está vacío.');
    if (raw.length > 240) return no('El comando supera el límite de 240 caracteres.');
    if (/[\r\n\x00-\x1f\x7f]/.test(raw)) return no('Solo se permite un comando de una línea.');
    // Se excluyen operadores y expansiones del shell. ANK añade por separado
    // el directorio del proyecto y el marcador de código de salida.
    if (!/^[A-Za-z0-9_./:@=,+-]+(?:\s+[A-Za-z0-9_./:@=,+-]+)*$/.test(raw)) {
      return no('Usa un comando simple, sin tuberías, redirecciones, variables ni operadores de shell.');
    }
    var tokens = raw.split(/\s+/);
    if (tokens.some(function (token) {
      return token.charAt(0) === '/' || token.charAt(0) === '~' ||
        /(^|\/)\.\.(\/|$)/.test(token) || token.indexOf('://') !== -1 ||
        /^-(delete|exec|execdir)$/i.test(token);
    })) return no('No se permiten rutas absolutas, directorios superiores, direcciones de red ni opciones de ejecución/borrado.');
    var executable = tokens[0].split('/').pop().toLowerCase();
    var blocked = {
      rm: 1, rmdir: 1, del: 1, erase: 1, unlink: 1, shred: 1, truncate: 1,
      dd: 1, mkfs: 1, 'mkfs.ext4': 1, wipefs: 1, fdisk: 1, parted: 1,
      sudo: 1, su: 1, reboot: 1, shutdown: 1, poweroff: 1, halt: 1,
      kill: 1, killall: 1, pkill: 1, curl: 1, wget: 1, nc: 1, ncat: 1,
      ssh: 1, scp: 1, sftp: 1, chmod: 1, chown: 1, mount: 1, umount: 1,
      apk: 1, apt: 1, 'apt-get': 1, yum: 1, dnf: 1, pacman: 1,
      sh: 1, bash: 1, zsh: 1, fish: 1, busybox: 1, eval: 1, exec: 1,
      source: 1, env: 1
    };
    if (blocked[executable]) return no('El comando "' + executable + '" está bloqueado por seguridad.');
    if (executable === 'git' && (
      /^(reset|clean|checkout|restore|push|pull|fetch|submodule|worktree)$/i.test(tokens[1] || '') ||
      ((tokens[1] || '').toLowerCase() === 'branch' && tokens.some(function (token) { return token === '-D' || token === '-d' || token === '--delete'; }) ) ||
      ((tokens[1] || '').toLowerCase() === 'stash' && (tokens[2] || '').toLowerCase() === 'clear') ||
      ((tokens[1] || '').toLowerCase() === 'config' && tokens.indexOf('--global') !== -1)
    )) {
      return no('Esta operación Git puede borrar, reemplazar, cambiar ajustes globales o enviar cambios y está bloqueada en esta etapa.');
    }
    if ((executable === 'node' && /^(-e|--eval|--print|-p)$/.test(tokens[1] || '')) ||
        ((executable === 'python' || executable === 'python3') && /^(-c|-m?c)$/.test(tokens[1] || ''))) {
      return no('No se permite ejecutar código inline; usa un archivo del proyecto revisado.');
    }
    return { ok: true, command: raw, reason: '' };
  }

  function chat(options) {
    options = options || {};
    var apiKey = String(options.apiKey || '').trim();
    var model = String(options.model || '').trim();
    var protocol;
    var url;
    try {
      protocol = protocolName(options.protocol);
      url = endpointUrl(options.endpoint, protocol, model);
    } catch (err) { return Promise.reject(err); }
    var noAuthCustom = protocol === PROTOCOLS.custom &&
      !String(options.customAuthHeader == null ? 'Authorization' : options.customAuthHeader).trim();
    if (!apiKey && !noAuthCustom) return Promise.reject(fail('Falta la clave API.', 'ANK_AI_KEY_REQUIRED'));
    if (!model) return Promise.reject(fail('Indica el nombre del modelo.', 'ANK_AI_MODEL_REQUIRED'));

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
            var result = respuestaNormalizada(data, protocol, options);
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
    validateCommand: validarComando,
    chat: chat
  };
});
/* ANK_AI_ENGINE_BUNDLE_END */

/* Código ANK — asistente independiente conectado a proveedores API.
   Terminal/Executor permanece como herramienta opcional separada. */

(function () {
  'use strict';

  if (window.__ankAIInstalled) return;
  window.__ankAIInstalled = true;

  /* ------------------------------------------------------------------ *
   * constantes
   * ------------------------------------------------------------------ */

  var LOG_MAX = 400;
  var API_ENDPOINT_DEFAULT = 'https://api.openai.com/v1';
  var API_PROTOCOL_DEFAULT = 'openai-chat-completions';

  function endpointPredeterminado(protocol) {
    if (protocol === 'anthropic-messages') return 'https://api.anthropic.com/v1';
    if (protocol === 'gemini-generate-content') return 'https://generativelanguage.googleapis.com/v1beta';
    if (protocol === 'custom-json') return '';
    return API_ENDPOINT_DEFAULT;
  }

  var CUSTOM_BODY_DEFAULT = '{\n' +
    '  "model": "{{MODEL}}",\n' +
    '  "messages": "{{MESSAGES}}",\n' +
    '  "temperature": "{{TEMPERATURE}}",\n' +
    '  "max_tokens": "{{MAX_TOKENS}}"\n' +
    '}';
  /* Versión de este panel. Se sube en cada publicación del canal. */
  var PANEL_VERSION = '2.4.0';

  /* Fecha de esta publicación, visible en Entorno. */
  var PANEL_FECHA = '26/11/2026';

  var ERRORES_MAX = 12;

  var CHATS_KEY = 'ank.chats.v1';
  var CHAT_MAX = 40;      // chats guardados
  var MSG_MAX = 200;      // mensajes por chat
  var MEM_MAX = 40;       // líneas de bitácora por proyecto
  var ANSI = /\x1b\[[0-9;?]*[ -\/]*[@-~]|\x1b\][^\x07]*(\x07|\x1b\\)|\x1b[@-Z\\-_]/g;

  /* Se agrega al pedido para que el modelo proponga archivos en un formato
     que el panel pueda mostrar como diff. */
  var PROTOCOLO_ARCHIVO = '\n\n[Formato de ANK]\n' +
    'Cuando propongas crear o modificar un archivo, no lo escribas directamente: ' +
    'respondé con un bloque como este, con la ruta relativa al proyecto y el contenido completo:\n' +
    '```ank:archivo ruta/al/archivo.ext\n<contenido completo del archivo>\n```\n' +
    'El usuario verá el diff y decidirá si aplicarlo o descartarlo.\n';

  var PROTOCOLO_COMANDO = '\n\n[Comandos del proyecto con aprobación]\n' +
    'Si necesitas ejecutar una prueba, inspeccionar el proyecto o compilarlo, no afirmes que lo hiciste: propone un comando en este formato:\n' +
    '```ank:comando Ejecutar las pruebas\n' +
    'npm test\n' +
    '```\n' +
    '- Escribe un único comando simple en una sola línea, sin tuberías, redirecciones, variables ni operadores del shell.\n' +
    '- Usa rutas relativas dentro del proyecto y nunca uses rutas absolutas ni .. .\n' +
    '- No propongas borrar archivos, cambiar permisos, instalar paquetes del sistema, reiniciar servicios ni ejecutar descargas.\n' +
    '- ANK solo lo ejecutará si el usuario pulsa el botón de aprobación. El resultado volverá a la conversación.\n' +
    '- Si el usuario no ha aprobado, describe el comando como propuesta, nunca como una acción ya realizada.\n';

  /* Instrucciones que se suman al pedido para que la IA sepa cómo se arma
     una mini app de Código ANK y no invente una API distinta. */
  var PROTOCOLO_APP = '\n\n[Mini apps de Código ANK]\n' +
    'Si el pedido es crear o modificar una app para el teléfono, generá una mini app:\n' +
    '- Va en una carpeta propia dentro del proyecto, con ankapp.json, index.html, style.css y app.js.\n' +
    '- ankapp.json: {"id","nombre","version","descripcion","icono"(emoji),"tipo":"mini"|"completa","permisos":[...],"inicio":"index.html","archivos":["style.css","app.js"]}.\n' +
    '- Permisos válidos: almacenamiento, notificaciones, camara, archivos, compartir, portapapeles, vibrar.\n' +
    '- Dentro de la app usá solo window.ANK: ANK.storage.get/set/remove/clear, ANK.notify(titulo,texto), ' +
    'ANK.share(texto), ANK.copy(texto), ANK.vibrate(ms), ANK.fs.list/read/write, ANK.pickFile({aceptar}), ANK.camera(), ANK.request(permiso).\n' +
    '- Nunca uses localStorage, cookies ni rutas absolutas: el almacenamiento va por ANK.storage.\n' +
    '- La app se ejecuta aislada en un iframe sin internet implícito; evitá dependencias externas.\n' +
    '- Devolvé cada archivo en un bloque ank:archivo con la ruta relativa a la carpeta de la app.\n' +
    '\n[App completa]\n' +
    'Si el pedido dice "app completa" o pide una aplicación de verdad (no una prueba), usá "tipo":"completa" y entregá una app terminada:\n' +
    '- Varias pantallas con navegación propia: inicio, lista, detalle y ajustes (las que el pedido necesite).\n' +
    '- Datos reales guardados con ANK.storage: alta, edición, borrado, búsqueda y totales. Nada de datos de ejemplo fijos.\n' +
    '- Estados vacíos, confirmaciones, validaciones y mensajes de error claros.\n' +
    '- Diseño propio y coherente: encabezado, tarjetas, botones grandes, tema oscuro, buen contraste y áreas táctiles de 44 px.\n' +
    '- Sin marcadores de posición: nada de "TODO", "acá va tu código" ni "próximamente". Debe funcionar al aplicarla.\n' +
    '- Archivos separados (index.html, style.css, app.js) y, si hace falta, más módulos declarados en "archivos".\n';

  /* La memoria del proyecto y su bitácora son contexto interno: se leen, no
     se muestran. */
  var PROTOCOLO_CONTEXTO = '\n\n[Contexto y memoria]\n' +
    'El AGENTS.md de la carpeta, su bitácora y el índice global son contexto interno tuyo.\n' +
    '- Leelos si hace falta, en silencio, pero no copies ni resumas su contenido en la respuesta.\n' +
    '- No enumeres qué archivos leíste ni narres los pasos previos: respondé con el resultado.\n' +
    '- Si el usuario no preguntó por la memoria, no la menciones.\n';

  /* ------------------------------------------------------------------ *
   * estado
   * ------------------------------------------------------------------ */

  var st = {
    prefix: '',
    pub: '',
    work: '/public/proyectos',
    project: leer('ank.ai.project', 'ank'),
    model: '',
    endpoint: API_ENDPOINT_DEFAULT,
    protocol: API_PROTOCOL_DEFAULT,
    customAuthHeader: 'Authorization',
    customAuthPrefix: 'Bearer',
    customHeaders: '{}',
    customBodyTemplate: CUSTOM_BODY_DEFAULT,
    customResponsePath: 'choices.0.message.content',
    apiKey: '',
    apiConfigured: false,
    modo: leer('ank.ai.modo', 'build'),
    sandbox: 'desconocido',
    credencial: 'falta',
    corriendo: false,
    abortController: null,
    continuar: false,
    tab: 'chat',
    log: [],
    msgs: [],
    chats: [],
    chatId: '',
    memoria: '',
    memoriaProyecto: '',
    probando: false,
    probandoPrueba: false,
    ultimo: null,
    turnoError: null,
    archivos: {},
    archivosN: 0,
    comandos: {},
    comandosN: 0,
    busqueda: '',
    resumiendoAuto: false,
    errores: [],
    ultimaRevision: 0,
    apps: [],
    appsCargando: false,
    appActual: null,
    stats: null,
    statsError: ''
  };

  var cur = null; // burbuja del bot en curso
  var panel = null; // nodo raíz del panel
  var mountTimer = null;
  var newsCerrada = false;

  /* ------------------------------------------------------------------ *
   * utilidades
   * ------------------------------------------------------------------ */

  function leer(clave, def) {
    try {
      var v = localStorage.getItem(clave);
      return v == null || v === '' ? def : v;
    } catch (e) {
      return def;
    }
  }

  function guardar(clave, valor) {
    try {
      localStorage.setItem(clave, valor);
    } catch (e) {}
  }

  function q(sel, raiz) {
    return (raiz || document).querySelector(sel);
  }

  /* Igual que en ank.js: la acción se dispara en `pointerdown` capturado en
     `window` (antes de los manejadores de `document` de la app) y el `click`
     posterior se descarta. Reusa el enganche de ank.js si ya existe. */
  function pulsar(el, fn) {
    if (!el) return;
    el.setAttribute('data-ank-tap', '');
    el.__ankAccion = fn;
  }

  if (!window.__ankTapHook) {
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
        try { el.__ankAccion(); } catch (err) {
          log('e', 'accion: ' + (err && err.message ? err.message : err));
        }
      }
      window.addEventListener('pointerdown', golpe, true);
      window.addEventListener('click', golpe, true);
      window.__ankTapHook = true;
    })();
  }

  function esc(s) {
    return String(s == null ? '' : s)
      .replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;')
      .replace(/"/g, '&quot;');
  }

  function limpiar(s) {
    return String(s == null ? '' : s).replace(ANSI, '').replace(/\r/g, '');
  }

  function hora() {
    var d = new Date();
    return ('0' + d.getHours()).slice(-2) + ':' + ('0' + d.getMinutes()).slice(-2) + ':' + ('0' + d.getSeconds()).slice(-2);
  }

  function log(nivel, texto) {
    var linea = { t: hora(), n: nivel, m: String(texto == null ? '' : texto) };
    st.log.push(linea);
    if (st.log.length > LOG_MAX) st.log.shift();
    if (nivel === 'e') {
      capturarError(linea.m, 'panel');
      console.warn('[ANK IA]', linea.m);
    } else console.log('[ANK IA]', linea.m);
    pintarLog();
  }

  /* Guarda un resumen de los últimos errores. Sirve para compartir un
     diagnóstico útil sin depender del registro completo. */
  function capturarError(texto, origen) {
    var m = String(texto == null ? '' : texto).replace(/\s+/g, ' ').trim().slice(0, 240);
    if (!m) return;
    var ult = st.errores[st.errores.length - 1];
    if (ult && ult.m === m) return;
    st.errores.push({ t: hora(), m: m, o: origen || '' });
    if (st.errores.length > ERRORES_MAX) st.errores.shift();
  }

  function engancharErrores() {
    window.addEventListener('error', function (e) {
      var t = e && e.message ? e.message : 'error de la app';
      if (e && e.filename) t += ' (' + String(e.filename).split('/').pop() + ':' + (e.lineno || 0) + ')';
      capturarError(t, 'window');
    });
    window.addEventListener('unhandledrejection', function (e) {
      var r = e && e.reason;
      capturarError(r && r.message ? r.message : String(r || 'promesa rechazada'), 'promesa');
    });
  }

  /* Texto plano con lo necesario para entender un fallo en el teléfono. */
  function diagnostico() {
    var u = window.__ankUpd;
    var app = '';
    try {
      if (window.acode && typeof window.acode.getVersion === 'function') app = window.acode.getVersion();
    } catch (e) {}
    if (!app) {
      var m = /Version\/([\d.]+)/.exec(navigator.userAgent || '');
      app = m ? m[1] : '';
    }
    var lineas = [];
    lineas.push('Código ANK · diagnóstico');
    lineas.push('Fecha: ' + hoy());
    lineas.push('Panel: ' + PANEL_VERSION + ' (' + PANEL_FECHA + ')' + (u && u.version ? ' · publicado ' + u.version() : ''));
    if (app) lineas.push('App: ' + app);
    lineas.push('Equipo: ' + (navigator.userAgent || 'desconocido'));
    lineas.push('IA: API conectada=' + (st.apiConfigured ? 'sí' : 'no') + ', terminal=' + st.sandbox);
    lineas.push('Modelo: ' + (st.model || 'sin configurar') + (st.modo === 'plan' ? ' · plan' : ''));
    lineas.push('Endpoint: ' + st.endpoint);
    lineas.push('Proyecto: ' + (limpioProyecto(st.project) || 'ank') + ' · chats=' + st.chats.length);
    if (st.errores.length) {
      lineas.push('');
      lineas.push('Errores recientes:');
      st.errores.slice(-6).forEach(function (e) {
        lineas.push('· ' + e.t + ' ' + (e.o ? '[' + e.o + '] ' : '') + e.m);
      });
    }
    lineas.push('');
    lineas.push('Registro (últimas 40 líneas):');
    st.log.slice(-40).forEach(function (l) {
      lineas.push(l.t + ' ' + l.n + ' ' + l.m);
    });
    return lineas.join('\n');
  }

  /* Comparte el diagnóstico con el menú del sistema; si no hay, lo copia. */
  function compartirDiagnostico() {
    var texto = diagnostico();
    try {
      if (navigator.share) {
        navigator.share({ title: 'Diagnóstico de Código ANK', text: texto })
          .catch(function () {});
        return;
      }
    } catch (e) {}
    copiarPortapapeles(texto)
      .then(function () { aviso('Diagnóstico copiado. Pegalo en el grupo.'); })
      .catch(function () {
        st.tab = 'log';
        pintar();
        log('i', texto);
        aviso('Diagnóstico guardado en Registro.');
      });
  }

  /* Aviso breve en pantalla. Usa el de la app si existe; si no, uno propio. */
  function aviso(texto) {
    var msg = String(texto == null ? '' : texto);
    try {
      if (typeof window.toast === 'function') return window.toast(msg);
    } catch (e) {}
    try {
      var el = q('#ank-toast');
      if (!el) {
        el = document.createElement('div');
        el.id = 'ank-toast';
        (document.body || document.documentElement).appendChild(el);
      }
      el.textContent = msg;
      el.classList.add('on');
      clearTimeout(el.__ankT);
      el.__ankT = setTimeout(function () { el.classList.remove('on'); }, 2600);
    } catch (err) {
      log('w', msg);
    }
  }

  function shq(s) {
    return "'" + String(s).replace(/'/g, "'\\''") + "'";
  }

  function limpioRuta(s) {
    return String(s || '').replace(/[^A-Za-z0-9._\-\/]/g, '').replace(/^\/+/, '').replace(/\/{2,}/g, '/');
  }

  // Normaliza el nombre del proyecto separando los segmentos peligrosos.
  // Se mantiene limpioRuta para rutas de archivos, donde ../ debe rechazarse
  // explícitamente en vez de convertirse silenciosamente en otra ruta.
  function limpioProyecto(s) {
    if (window.ANKAIEngine && typeof window.ANKAIEngine.normalizeProjectPath === 'function') {
      return window.ANKAIEngine.normalizeProjectPath(s);
    }
    return limpioRuta(s).split('/').filter(function (segmento) {
      return segmento && segmento !== '.' && segmento !== '..';
    }).join('/');
  }

  function limpioModelo(s) {
    return String(s || '').trim().replace(/[^A-Za-z0-9._:\-\/]/g, '').slice(0, 180);
  }

  function listo() {
    return !!st.apiConfigured;
  }

  function env() {
    return [
      'export HOME=/public',
      'export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin',
      'export TERM=xterm-256color'
    ].join('; ') + '; ';
  }

  /* ------------------------------------------------------------------ *
   * puente con la app
   * ------------------------------------------------------------------ */

  function Ex() {
    return window.Executor || null;
  }

  function Term() {
    return window.Terminal || null;
  }

  function conSistema(metodo) {
    var args = Array.prototype.slice.call(arguments, 1);
    return new Promise(function (resolve, reject) {
      var sys = window.system;
      if (!sys || typeof sys[metodo] !== 'function') return reject(new Error('system.' + metodo + ' no disponible'));
      sys[metodo].apply(sys, args.concat([resolve, reject]));
    });
  }

  function dirsIniciales() {
    return conSistema('getFilesDir').then(function (dir) {
      st.prefix = dir;
      st.pub = dir + '/public';
      st.work = '/public/proyectos';
      return Promise.all([
        conSistema('mkdirs', dir + '/public/.ank').catch(function () {}),
        conSistema('mkdirs', dir + '/ank-ai').catch(function () {}),
        conSistema('mkdirs', dir + '/public/.config/ank').catch(function () {}),
        conSistema('mkdirs', dir + '/public/proyectos').catch(function () {})
      ]);
    });
  }

  function escribir(ruta, contenido) {
    return conSistema('writeText', ruta, contenido);
  }

  function copiarPortapapeles(texto) {
    return new Promise(function (resolve, reject) {
      var cb = window.cordova && window.cordova.plugins && window.cordova.plugins.clipboard;
      if (!cb || typeof cb.copy !== 'function') return reject(new Error('portapapeles no disponible'));
      cb.copy(texto, resolve, reject);
    });
  }

  /* ------------------------------------------------------------------ *
   * ejecución en el sandbox
   * ------------------------------------------------------------------ */

  /* El plugin entrega el comando como argumentos sueltos a `source`, así que
     lo que empiece por un builtin (`export`, `set`, …) se interpreta como
     programa y falla. Envolver todo en `sh -c '<guion>'` lo manda entero al
     sandbox y evita ese problema. */
  function comilla(guion) {
    return "'" + String(guion).replace(/'/g, "'\\''") + "'";
  }

  function acotar(guion) {
    return 'sh -c ' + comilla(guion);
  }

  function ejecutar(comando, fondo) {
    var ex = Ex();
    if (!ex) return Promise.reject(new Error('terminal no disponible'));
    var runner = fondo && ex.BackgroundExecutor ? ex.BackgroundExecutor : ex;
    return Promise.resolve(runner.execute(acotar(env() + comando), true));
  }

  function shell(comando, fondo) {
    return ejecutar(comando + '; echo "__rc=$?"', fondo).then(function (salida) {
      salida = limpiar(salida);
      var m = /__rc=(\d+)\s*$/.exec(salida);
      var rc = m ? Number(m[1]) : null;
      return { salida: salida.replace(/__rc=\d+\s*$/, '').trim(), rc: rc };
    });
  }

  function esperarSandbox(intentos) {
    var n = intentos == null ? 40 : intentos;
    return conTimeout(ejecutar('echo "__ok"'), 8000)
      .then(function (r) {
        if (limpiar(r).indexOf('__ok') !== -1) return true;
        throw new Error('sin respuesta');
      })
      .catch(function () {
        if (n <= 0) throw new Error('El entorno no respondió');
        return new Promise(function (res) {
          setTimeout(res, 750);
        }).then(function () {
          return esperarSandbox(n - 1);
        });
      });
  }

  function conTimeout(promesa, ms) {
    return new Promise(function (resolve, reject) {
      var hecho = false;
      var t = setTimeout(function () {
        if (hecho) return;
        hecho = true;
        reject(new Error('tiempo de espera agotado'));
      }, ms);
      Promise.resolve(promesa).then(function (v) {
        if (hecho) return;
        hecho = true;
        clearTimeout(t);
        resolve(v);
      }, function (e) {
        if (hecho) return;
        hecho = true;
        clearTimeout(t);
        reject(e);
      });
    });
  }

  /* Los extras (bash, readline, libstdc++) pueden faltar cuando el entorno se
     instaló con una versión anterior del APK: se aplican al vuelo. */
  function asegurarExtras() {
    return shell('if [ -f /usr/lib/libstdc++.so.6 ] && [ -x /bin/bash ]; then echo "OK"; else echo "FALTA"; fi', true)
      .then(function (r) {
        if (r.salida.indexOf('OK') !== -1) return true;
        return conSistema('getArch').then(function (arch) {
          var dir = { 'arm64-v8a': 'arm64', 'armeabi-v7a': 'arm32', 'x86_64': 'x64' }[arch];
          if (!dir) return false;
          return conSistema('extractAsset', 'alpine_assets/' + dir + '/addons.tar.gz', st.prefix + '/addons.tar.gz')
            .then(function () {
              return shell('tar --no-same-owner -xf $PREFIX/addons.tar.gz -C $PREFIX/alpine && echo "OK"', true);
            })
            .then(function (x) {
              log('i', x.salida.indexOf('OK') !== -1 ? 'Extras del entorno aplicados.' : 'No se pudieron aplicar los extras.');
            });
        });
      })
      .catch(function (e) {
        log('w', 'Extras del entorno: ' + (e && e.message ? e.message : e));
      });
  }

  function asegurarSandbox() {
    var T = Term();
    if (!T) return Promise.reject(new Error('El plugin de terminal no está disponible'));
    return Promise.resolve(T.isInstalled())
      .then(function (ok) {
        if (!ok) throw new Error('El entorno Alpine no está instalado');
        return T.isAxsRunning();
      })
      .then(function (vivo) {
        if (vivo) return true;
        log('i', 'Iniciando el entorno…');
        return Promise.resolve(T.startAxs(false, function (l) { log('i', limpiar(l)); })).then(function () {
          return esperarSandbox();
        });
      })
      .then(function () {
        return asegurarExtras();
      })
      .then(function () {
        return true;
      })
      .catch(function (e) {
        st.sandbox = 'error';
        throw e;
      });
  }

  /* ------------------------------------------------------------------ *
   * comprobaciones
   * ------------------------------------------------------------------ */

  function rutaConfigApi() { return st.prefix + '/ank-ai/provider.json'; }

  function clienteHttpNativo() {
    var c = window.cordova;
    if (!c) return null;
    if (c.plugin && c.plugin.http && typeof c.plugin.http.sendRequest === 'function') return c.plugin.http;
    if (c.plugins && c.plugins.http && typeof c.plugins.http.sendRequest === 'function') return c.plugins.http;
    return null;
  }

  function cargarConfigApi() {
    if (!st.prefix) return Promise.resolve(false);
    return leerTexto(rutaConfigApi()).then(function (raw) {
      if (!raw.trim()) throw new Error('sin configuración');
      var data = JSON.parse(raw);
      st.protocol = window.ANKAIEngine.protocolName(data.protocol || API_PROTOCOL_DEFAULT);
      st.endpoint = String(data.endpoint || endpointPredeterminado(st.protocol));
      st.model = String(data.model || '');
      st.apiKey = String(data.apiKey || '');
      st.customAuthHeader = String(data.customAuthHeader == null ? 'Authorization' : data.customAuthHeader);
      st.customAuthPrefix = String(data.customAuthPrefix == null ? 'Bearer' : data.customAuthPrefix);
      st.customHeaders = String(data.customHeaders || '{}');
      st.customBodyTemplate = String(data.customBodyTemplate || CUSTOM_BODY_DEFAULT);
      st.customResponsePath = String(data.customResponsePath || 'choices.0.message.content');
      st.apiConfigured = !!(st.endpoint && st.model && (st.apiKey || (st.protocol === 'custom-json' && !st.customAuthHeader.trim())));
      st.credencial = st.apiConfigured ? 'listo' : 'falta';
      return st.apiConfigured;
    }).catch(function () {
      st.apiKey = '';
      st.apiConfigured = false;
      st.credencial = 'falta';
      st.model = '';
      st.protocol = API_PROTOCOL_DEFAULT;
      st.endpoint = API_ENDPOINT_DEFAULT;
      st.customAuthHeader = 'Authorization';
      st.customAuthPrefix = 'Bearer';
      st.customHeaders = '{}';
      st.customBodyTemplate = CUSTOM_BODY_DEFAULT;
      st.customResponsePath = 'choices.0.message.content';
      return false;
    });
  }

  function guardarCredencial() {
    var protocolInput = q('#ank-ai-protocolo');
    var protocol;
    try {
      protocol = window.ANKAIEngine.protocolName((protocolInput && protocolInput.value) || st.protocol || API_PROTOCOL_DEFAULT);
    } catch (protocolError) {
      return aviso(protocolError.message || 'Selecciona un protocolo compatible.');
    }
    var endpoint = String((q('#ank-ai-endpoint') && q('#ank-ai-endpoint').value) || st.endpoint || endpointPredeterminado(protocol)).trim();
    var model = limpioModelo((q('#ank-ai-modelo') && q('#ank-ai-modelo').value) || st.model);
    var enteredKey = String((q('#ank-ai-key') && q('#ank-ai-key').value) || '').trim();
    var apiKey = enteredKey || st.apiKey;
    var customAuthHeaderEl = q('#ank-ai-custom-auth-header');
    var customAuthPrefixEl = q('#ank-ai-custom-auth-prefix');
    var customHeadersEl = q('#ank-ai-custom-headers');
    var customBodyEl = q('#ank-ai-custom-body');
    var customResponseEl = q('#ank-ai-custom-response');
    var customAuthHeader = String(customAuthHeaderEl ? customAuthHeaderEl.value : (st.customAuthHeader == null ? 'Authorization' : st.customAuthHeader)).trim();
    if (protocol === 'custom-json' && !customAuthHeader && !enteredKey) apiKey = '';
    var customAuthPrefix = String(customAuthPrefixEl ? customAuthPrefixEl.value : (st.customAuthPrefix == null ? 'Bearer' : st.customAuthPrefix));
    var customHeaders = String(customHeadersEl ? customHeadersEl.value : (st.customHeaders || '{}')).trim();
    var customBodyTemplate = String(customBodyEl ? customBodyEl.value : (st.customBodyTemplate || CUSTOM_BODY_DEFAULT)).trim();
    var customResponsePath = String(customResponseEl ? customResponseEl.value : (st.customResponsePath || 'choices.0.message.content')).trim();
    if (!endpoint) return aviso('Introduce la URL completa del endpoint API.');
    if (protocol === 'custom-json') {
      try {
        var headersObject = JSON.parse(customHeaders || '{}');
        if (!headersObject || typeof headersObject !== 'object' || Array.isArray(headersObject)) throw new Error();
      } catch (_) { return aviso('Los encabezados adicionales deben ser un objeto JSON válido.'); }
      try {
        var bodyObject = JSON.parse(customBodyTemplate);
        if (!bodyObject || typeof bodyObject !== 'object' || Array.isArray(bodyObject)) throw new Error();
      } catch (_) { return aviso('La plantilla del cuerpo debe ser un objeto JSON válido.'); }
    }
    if (!window.ANKAIEngine) return aviso('No se ha cargado el motor API de ANK.');
    var noAuthCustom = protocol === 'custom-json' && !customAuthHeader;
    if (!apiKey && !noAuthCustom) return aviso('Introduce la clave API o deja vacío el encabezado de autenticación para una API sin clave.');
    if (!model) return aviso('Introduce el identificador exacto del modelo.');
    try { window.ANKAIEngine.endpointUrl(endpoint, protocol, model); }
    catch (e) { return aviso(e.message || 'La dirección API no es válida.'); }
    var data = {
      version: 3,
      protocol: protocol,
      endpoint: endpoint,
      model: model,
      apiKey: apiKey,
      temperature: 0.2,
      customAuthHeader: customAuthHeader,
      customAuthPrefix: customAuthPrefix,
      customHeaders: customHeaders,
      customBodyTemplate: customBodyTemplate,
      customResponsePath: customResponsePath
    };
    return dirsIniciales().then(function () {
      return escribir(rutaConfigApi(), JSON.stringify(data));
    }).then(function () {
      st.endpoint = endpoint; st.protocol = protocol; st.model = model; st.apiKey = apiKey;
      st.customAuthHeader = customAuthHeader;
      st.customAuthPrefix = customAuthPrefix;
      st.customHeaders = customHeaders;
      st.customBodyTemplate = customBodyTemplate;
      st.customResponsePath = customResponsePath;
      st.apiConfigured = true; st.credencial = 'listo';
      if (q('#ank-ai-key')) q('#ank-ai-key').value = '';
      log('i', 'Configuración API guardada en el almacenamiento privado de ANK.');
      aviso('Conexión API configurada.');
      pintar();
      return true;
    }).catch(function (e) {
      log('e', 'No se pudo guardar la configuración API: ' + (e && e.message ? e.message : e));
      aviso('No se pudo guardar la configuración API.');
      return false;
    });
  }

  function probarAsistente() {
    if (!st.apiConfigured || !window.ANKAIEngine) return aviso('Guarda primero la conexión API.');
    if (st.probandoPrueba) return;
    st.probandoPrueba = true;
    log('i', 'Probando la conexión API…');
    aviso('Probando conexión…');
    window.ANKAIEngine.chat({
      protocol: st.protocol, endpoint: st.endpoint, apiKey: st.apiKey, model: st.model,
      customAuthHeader: st.customAuthHeader,
      customAuthPrefix: st.customAuthPrefix,
      customHeaders: st.customHeaders,
      customBodyTemplate: st.customBodyTemplate,
      customResponsePath: st.customResponsePath,
      messages: [
        { role: 'system', content: 'Responde únicamente OK.' },
        { role: 'user', content: 'Prueba de conexión de Código ANK. Responde OK.' }
      ],
      maxTokens: 24, timeoutMs: 45000, http: clienteHttpNativo()
    }).then(function (result) {
      log('i', 'API respondió correctamente: ' + recortar(result.content, 80));
      aviso('Conexión API correcta.');
    }).catch(function (e) {
      log('e', 'Prueba API: ' + (e && e.message ? e.message : e));
      aviso('La API no respondió correctamente. Revisa el registro.');
    }).then(function () { st.probandoPrueba = false; pintar(); });
  }

  function chequearTodo() {
    if (st.probando) return Promise.resolve();
    st.probando = true;
    pintar();
    return dirsIniciales()
      .then(function () { return cargarConfigApi(); })
      .then(function () {
        var T = Term();
        return T ? Promise.resolve(T.isInstalled()).catch(function () { return false; }) : false;
      })
      .then(function (installed) {
        st.sandbox = installed ? 'listo' : 'falta';
        log('i', st.apiConfigured ? 'Configuración API restaurada desde el almacenamiento privado.' : 'Falta configurar una API.');
        log('i', installed ? 'Terminal Linux disponible.' : 'Terminal Linux no instalada (opcional para chat API).');
      })
      .catch(function (e) { log('w', e && e.message ? e.message : String(e)); })
      .then(function () { st.probando = false; pintar(); });
  }

  function instalarEntorno() {
    var T = Term();
    if (!T) return aviso('El terminal no está disponible.');
    if (st.sandbox === 'listo') return;
    st.sandbox = 'instalando';
    pintar();
    log('i', 'Instalando entorno Alpine. Puede tardar varios minutos.');
    abrirConsola();
    Promise.resolve()
      .then(function () {
        return T.install(
          function (l) { consolaEscribir(limpiar(l)); },
          function (l) { consolaEscribir(limpiar(l)); }
        );
      })
      .then(function (ok) {
        if (!ok) throw new Error('La instalación del entorno falló');
        st.sandbox = 'listo';
        consolaEscribir('Entorno listo.');
        return asegurarSandbox();
      })
      .then(function () {
        return shell('if [ ! -f /etc/ssl/certs/ca-certificates.crt ]; then apk update >/dev/null 2>&1; apk add --no-cache ca-certificates >/dev/null 2>&1; fi; echo OK', true);
      })
      .then(function () {
        log('i', 'Certificados listos.');
        return chequearTodo(true);
      })
      .catch(function (e) {
        st.sandbox = 'error';
        var m = e && e.message ? e.message : String(e);
        log('e', m);
        consolaEscribir('ERROR: ' + m);
      })
      .then(function () {
        st.sandbox = st.sandbox === 'instalando' ? 'error' : st.sandbox;
        pintar();
      });
  }

  /* Se elimina la instalación del agente externo.
     El plugin Terminal/Executor y Alpine permanecen como módulo independiente. */

  /* ------------------------------------------------------------------ *
   * consola de configuración
   * ------------------------------------------------------------------ */

  var consolaBuf = [];
  var consolaProc = null;

  function abrirConsola() {
    st.tab = 'entorno';
    pintar();
    setTimeout(function () {
      var c = q('.ank-ai-console');
      if (c) c.scrollTop = c.scrollHeight;
    }, 30);
  }

  function consolaEscribir(texto) {
    if (texto == null) return;
    var s = limpiar(texto);
    if (!s && s !== '') return;
    consolaBuf.push(s);
    if (consolaBuf.length > 300) consolaBuf.shift();
    var c = q('.ank-ai-console');
    if (c) {
      c.textContent = consolaBuf.join('\n');
      c.scrollTop = c.scrollHeight;
    }
  }

  function consolaComando(cmd) {
    var ex = Ex();
    if (!ex || !cmd) return;
    consolaEscribir('$ ' + cmd);
    if (consolaProc) {
      Promise.resolve(ex.write(consolaProc, cmd + '\n')).catch(function () {});
      return;
    }
    Promise.resolve(ex.start(cmd, function (tipo, datos) {
      consolaEscribir(String(datos == null ? '' : datos));
      if (tipo === 'exit') consolaEscribir('[fin]');
    }, true)).then(function (uuid) {
      consolaProc = uuid;
    }).catch(function (e) {
      consolaEscribir('ERROR: ' + (e && e.message ? e.message : e));
    });
  }

  /* ------------------------------------------------------------------ *
   * historial de chats
   * ------------------------------------------------------------------ */

  function cargarChats() {
    try {
      var raw = localStorage.getItem(CHATS_KEY);
      var arr = raw ? JSON.parse(raw) : [];
      st.chats = Array.isArray(arr) ? arr.filter(function (c) {
        return c && c.id && c.msgs && Array.isArray(c.msgs);
      }) : [];
    } catch (e) {
      st.chats = [];
    }
    var ultimo = chatActual();
    if (!ultimo) {
      var delProyecto = chatsDe(st.project);
      if (delProyecto.length) {
        st.chatId = delProyecto[0].id;
        st.msgs = delProyecto[0].msgs;
      }
    }
  }

  function guardarChats() {
    try {
      var recorte = st.chats.slice(0, CHAT_MAX).map(function (c) {
        return {
          id: c.id,
          proyecto: c.proyecto,
          titulo: c.titulo || '',
          creado: c.creado || 0,
          actualizado: c.actualizado || 0,
          sesion: c.sesion || '',
          msgs: (c.msgs || []).slice(-MSG_MAX).map(function (m) {
            var g = { rol: m.rol, texto: String(m.texto || '').slice(0, 12000), ts: m.ts || 0 };
            if (m.acciones && m.acciones.length) {
              g.acciones = m.acciones.slice(-60).map(function (a) {
                return { n: recortar(a && a.n, 40), d: recortar(a && a.d, 160), err: !!(a && a.err) };
              });
            }
            return g;
          })
        };
      });
      localStorage.setItem(CHATS_KEY, JSON.stringify(recorte));
    } catch (e) {
      log('w', 'No se pudo guardar el historial: ' + (e && e.message ? e.message : e));
    }
  }

  function chatActual() {
    for (var i = 0; i < st.chats.length; i++) {
      if (st.chats[i].id === st.chatId) return st.chats[i];
    }
    return null;
  }

  function chatsDe(proyecto) {
    return st.chats.filter(function (c) { return c.proyecto === proyecto; });
  }

  function nuevoChat(proyecto) {
    var c = {
      id: 'c' + Date.now().toString(36) + Math.random().toString(36).slice(2, 6),
      proyecto: proyecto,
      titulo: '',
      creado: Date.now(),
      actualizado: Date.now(),
      sesion: '',
      msgs: []
    };
    st.chats.unshift(c);
    st.chats = st.chats.slice(0, CHAT_MAX);
    st.chatId = c.id;
    st.msgs = c.msgs;
    guardarChats();
    return c;
  }

  function tocarChat() {
    var c = chatActual();
    if (!c) return;
    c.msgs = st.msgs;
    c.actualizado = Date.now();
    guardarChats();
  }

  /* ANK mantiene el historial localmente; no utiliza sesiones de agentes externos. */

  /* ------------------------------------------------------------------ *
   * memoria del proyecto
   * ------------------------------------------------------------------ */

  function rutaMemProyecto(proyecto) {
    return st.prefix + '/public/proyectos/' + (proyecto || 'ank') + '/AGENTS.md';
  }

  function rutaMemGlobal() {
    return st.prefix + '/public/.config/ank/AGENTS.md';
  }

  function leerTexto(ruta) {
    return new Promise(function (resolve, reject) {
      var resolver = window.resolveLocalFileSystemURL || window.resolveLocalFileSystemURI;
      if (typeof resolver !== 'function') return reject(new Error('El lector de archivos de la app no está disponible.'));
      var uri = /^file:\/\//i.test(ruta) ? ruta : 'file://' + (String(ruta).charAt(0) === '/' ? '' : '/') + ruta;
      resolver(uri, function (entry) {
        entry.file(function (file) {
          if (!window.FileReader) return reject(new Error('FileReader no está disponible.'));
          var reader = new window.FileReader();
          reader.onload = function () { resolve(String(reader.result || '')); };
          reader.onerror = function () { reject(reader.error || new Error('No se pudo leer el archivo.')); };
          reader.readAsText(file);
        }, reject);
      }, reject);
    }).catch(function (e) {
      log('w', 'Lectura de archivo: ' + (e && e.message ? e.message : e));
      return '';
    });
  }

  function hoy() {
    var d = new Date();
    function dos(n) { return ('0' + n).slice(-2); }
    return d.getFullYear() + '-' + dos(d.getMonth() + 1) + '-' + dos(d.getDate()) +
      ' ' + dos(d.getHours()) + ':' + dos(d.getMinutes());
  }

  function plantillaGlobal() {
    return [
      '# Memoria global de Código ANK',
      '',
      'La app lee este archivo en todos los proyectos. Mantenerlo corto.',
      '',
      '## Reglas',
      '- El detalle de cada proyecto vive en el AGENTS.md de su propia carpeta.',
      '- Este archivo es solo un índice: no mezclar decisiones de un proyecto con otro.',
      '- Si el pedido es sobre otro proyecto, no reutilizar código ni conclusiones de este.',
      '- Idioma de trabajo: español. Código y nombres técnicos en inglés.',
      '',
      '<!-- proyectos -->',
      '## Proyectos',
      '<!-- /proyectos -->',
      ''
    ].join('\n');
  }

  function plantillaProyecto(proyecto) {
    return [
      '# Proyecto: ' + proyecto,
      '',
      '> Ámbito: SOLO este proyecto. No aplicar aquí decisiones de otras carpetas.',
      '',
      '## Objetivo',
      '(completar)',
      '',
      '## Estado',
      '- Creado desde Código ANK el ' + hoy() + '.',
      '',
      '## Decisiones',
      '- (se anotan a medida que se trabaja)',
      '',
      '## Bitácora',
      ''
    ].join('\n');
  }

  /* Reescribe el índice de proyectos del archivo global. */
  function actualizarIndice(proyecto) {
    return leerTexto(rutaMemGlobal()).then(function (txt) {
      if (!txt) txt = plantillaGlobal();
      var lista = {};
      st.chats.forEach(function (c) {
        if (!c.proyecto) return;
        var prev = lista[c.proyecto];
        if (!prev || (c.actualizado || 0) > (prev.actualizado || 0)) lista[c.proyecto] = c;
      });
      var nombres = Object.keys(lista).sort();
      var lineas = ['## Proyectos', ''];
      if (!nombres.length) lineas.push('- (todavía ninguno)');
      nombres.forEach(function (n) {
        var c = lista[n];
        var u = c.titulo ? ' · ' + c.titulo : '';
        var fecha = c.actualizado ? new Date(c.actualizado).toISOString().slice(0, 10) : '';
        lineas.push('- **' + n + '** — ' + (chatsDe(n).length) + ' chat(s), ' + fecha + u);
      });
      var bloque = '<!-- proyectos -->\n' + lineas.join('\n') + '\n<!-- /proyectos -->';
      if (txt.indexOf('<!-- proyectos -->') !== -1 && txt.indexOf('<!-- /proyectos -->') !== -1) {
        txt = txt.replace(/<!-- proyectos -->[\s\S]*<!-- \/proyectos -->/, bloque);
      } else {
        txt += '\n' + bloque + '\n';
      }
      return escribir(rutaMemGlobal(), txt);
    });
  }

  function asegurarMemoria(proyecto) {
    if (!st.prefix) return Promise.resolve();
    var proy = proyecto || limpioProyecto(st.project) || 'ank';
    return conSistema('mkdirs', st.prefix + '/public/proyectos/' + proy)
      .then(function () { return conSistema('mkdirs', st.prefix + '/public/.config/ank'); })
      .then(function () { return leerTexto(rutaMemGlobal()); })
      .then(function (txt) {
        if (txt.trim()) return null;
        return escribir(rutaMemGlobal(), plantillaGlobal());
      })
      .then(function () { return leerTexto(rutaMemProyecto(proy)); })
      .then(function (txt) {
        if (txt.trim()) return null;
        return escribir(rutaMemProyecto(proy), plantillaProyecto(proy));
      })
      .then(function () { return actualizarIndice(proy); })
      .catch(function (e) {
        log('w', 'Memoria: ' + (e && e.message ? e.message : e));
      });
  }

  /* Añade una línea a la bitácora del proyecto. Determinista y barato: no
     gasta tokens, solo deja constancia de lo hablado. */
  function anotarMemoria(proyecto, pedido, respuesta) {
    var proy = proyecto || limpioProyecto(st.project) || 'ank';
    function plano(s, n) {
      return String(s || '').replace(/\s+/g, ' ').trim().slice(0, n);
    }
    var linea = '- ' + hoy() + ' · ' + plano(pedido, 160) + ' → ' + plano(respuesta, 260);
    if (!plano(respuesta, 40)) linea = '- ' + hoy() + ' · ' + plano(pedido, 160);
    return leerTexto(rutaMemProyecto(proy)).then(function (txt) {
      if (!txt.trim()) txt = plantillaProyecto(proy);
      if (txt.indexOf('## Bitácora') === -1) txt += '\n## Bitácora\n';
      var partes = txt.split('## Bitácora');
      var cuerpo = (partes[1] || '').split('\n');
      cuerpo.push(linea);
      var lineas = cuerpo.filter(function (l) { return l.trim().indexOf('- ') === 0; });
      lineas = lineas.slice(-MEM_MAX);
      partes[1] = '\n' + lineas.join('\n') + '\n';
      return escribir(rutaMemProyecto(proy), partes.join('## Bitácora'));
    }).then(function () {
      return actualizarIndice(proy);
    }).catch(function (e) {
      log('w', 'No se pudo anotar la memoria: ' + (e && e.message ? e.message : e));
    });
  }

  /* ------------------------------------------------------------------ *
   * chat
   * ------------------------------------------------------------------ */

  /* ¿La línea es parte de la memoria interna (AGENTS.md o su bitácora)? Se lee
     para tener contexto, pero no se muestra en el hilo del chat. */
  function esContexto(linea) {
    var s = String(linea || '').trim();
    if (!s) return false;
    if (/^##\s*bit[áa]cora\b/i.test(s)) return true;
    if (/^#\s*(proyecto:|memoria global de c[óo]digo ank)/i.test(s)) return true;
    if (/^<!--\s*\/?\s*proyectos\s*-->$/i.test(s)) return true;
    if (/^>\s*[áa]mbito:\s*solo este proyecto/i.test(s)) return true;
    if (/^-\s*\d{4}-\d{2}-\d{2}\s+\d{2}:\d{2}\s+·/.test(s)) return true;
    if (/^-\s*\(se anotan a medida/i.test(s)) return true;
    return false;
  }

  function sinContexto(texto) {
    return String(texto || '').split('\n').filter(function (l) {
      return !esContexto(l);
    }).join('\n');
  }

  function nuevoMensaje(rol, texto) {
    var m = { rol: rol, texto: texto || '', crudo: '', ts: Date.now(), nodo: null };
    st.msgs.push(m);
    var c = chatActual();
    if (c && rol === 'user' && !c.titulo) {
      c.titulo = String(texto || '').replace(/\s+/g, ' ').trim().slice(0, 48);
      guardarChats();
    }
    return m;
  }

  function burbuja(m) {
    var d = document.createElement('div');
    d.className = 'ank-ai-msg ' + (m.rol === 'user' ? 'user' : 'bot');
    if (m.rol === 'user') d.textContent = m.texto;
    else {
      var t = document.createElement('span');
      t.className = 'ank-ai-txt';
      d.appendChild(t);
    }
    var cont = q('.ank-ai-msgs');
    if (cont) {
      var vacio = q('.ank-ai-empty', cont);
      if (vacio) vacio.remove();
      cont.appendChild(d);
      cont.scrollTop = cont.scrollHeight;
    }
    m.nodo = d;
    return d;
  }

  /* Un bloque de código largo no se vuelca entero en el chat: queda plegado
     con la cantidad de líneas, para que la conversación siga legible. */
  function nodoCodigo(texto) {
    var lineas = String(texto == null ? '' : texto).split('\n').length;
    var pre = document.createElement('pre');
    pre.className = 'ank-ai-pre';
    pre.textContent = texto;
    if (lineas <= 14) return pre;
    var det = document.createElement('details');
    det.className = 'ank-ai-code';
    var sum = document.createElement('summary');
    sum.textContent = 'Ver código (' + lineas + ' líneas)';
    det.appendChild(sum);
    det.appendChild(pre);
    return det;
  }

  /* Convierte los trozos de mdLite en nodos del mensaje. */
  function nodoTrozos(trozos) {
    var frag = document.createDocumentFragment();
    trozos.forEach(function (t) {
      if (t.tipo === 'codigo') {
        frag.appendChild(nodoCodigo(t.texto));
      } else if (t.tipo === 'archivo') {
        frag.appendChild(bloqueArchivo(t.ruta, t.texto));
      } else if (t.tipo === 'comando') {
        frag.appendChild(bloqueComando(t.titulo, t.comando));
      } else {
        var sp = document.createElement('span');
        sp.className = 'ank-ai-txt';
        sp.innerHTML = t.html;
        frag.appendChild(sp);
      }
    });
    return frag;
  }

  /* Pinta un mensaje ya guardado (sin animación ni cursor). */
  function pintarBurbuja(m) {
    var d = burbuja(m);
    if (m.rol === 'user') {
      d.textContent = m.texto || '';
      return d;
    }
    d.innerHTML = '';
    if (m.acciones && m.acciones.length) d.appendChild(bloqueTrabajo(m.acciones, false));
    var trozos = mdLite(sinContexto(m.texto || ''));
    if (!String(m.texto || '').trim()) {
      if (!(m.acciones && m.acciones.length)) {
        d.innerHTML = '<span class="ank-ai-tool">Sin respuesta del modelo.</span>';
      }
      return d;
    }
    trozos.forEach(function (t) {
      if (t.tipo === 'codigo') {
        d.appendChild(nodoCodigo(t.texto));
      } else if (t.tipo === 'archivo') {
        d.appendChild(bloqueArchivo(t.ruta, t.texto));
      } else if (t.tipo === 'comando') {
        d.appendChild(bloqueComando(t.titulo, t.comando));
      } else {
        var sp = document.createElement('span');
        sp.className = 'ank-ai-txt';
        sp.innerHTML = t.html;
        d.appendChild(sp);
      }
    });
    return d;
  }

  function pintarMensajes() {
    var cont = q('.ank-ai-msgs');
    if (!cont) return;
    cont.innerHTML = '';
    if (!st.msgs.length) {
      cont.innerHTML = '<div class="ank-ai-empty"><b>Asistente de ANK</b>' +
        'Trabaja sobre los archivos del proyecto y ejecuta comandos en el entorno de la app. ' +
        'No modifica nada fuera de la carpeta de trabajo.</div>';
      return;
    }
    st.msgs.forEach(function (m) {
      if (m.rol === 'bot' && !String(m.texto || '').trim() && !(m.acciones && m.acciones.length)) return;
      pintarBurbuja(m);
    });
    cont.scrollTop = cont.scrollHeight;
  }

  /* ------------------------------------------------------------------ *
   * trabajo del asistente (bloque plegable)
   *
   * Los pasos intermedios no llenan el chat: van dentro de un bloque
   * cerrado con una sola línea que dice qué está haciendo. La flecha lo
   * abre si el usuario quiere ver el detalle.
   * ------------------------------------------------------------------ */

  var VERBO_ACCION = {
    read: 'Leyendo', view: 'Leyendo', cat: 'Leyendo', open: 'Abriendo',
    write: 'Escribiendo', edit: 'Editando', patch: 'Editando', apply: 'Aplicando',
    bash: 'Ejecutando', sh: 'Ejecutando', exec: 'Ejecutando', run: 'Ejecutando',
    grep: 'Buscando', search: 'Buscando', glob: 'Buscando', find: 'Buscando',
    list: 'Revisando', ls: 'Revisando', tree: 'Revisando',
    fetch: 'Consultando', web: 'Consultando', curl: 'Consultando',
    test: 'Probando', check: 'Comprobando'
  };

  function recortar(t, n) {
    var s = String(t == null ? '' : t).replace(/\s+/g, ' ').trim();
    return s.length > n ? s.slice(0, n - 1) + '…' : s;
  }

  function fraseAccion(nombre, detalle) {
    var clave = String(nombre || '').toLowerCase().replace(/[^a-z]/g, '');
    var verbo = VERBO_ACCION[clave];
    /* Las opciones (`-la`, `--json`) no aportan a la frase. */
    var limpio = String(detalle || '').split(/\s+/).filter(function (x) {
      return x && x.charAt(0) !== '-';
    }).join(' ');
    if (/^[\w.\/-]+$/.test(limpio) && limpio.indexOf('/') !== -1) {
      limpio = limpio.slice(limpio.lastIndexOf('/') + 1);
    }
    var d = recortar(limpio, 58);
    if (!verbo) {
      /* A veces la primera palabra ya es una ruta o un comando. */
      var juntas = recortar((nombre || '') + ' ' + limpio, 58);
      return juntas ? 'Trabajando en ' + juntas : 'Trabajando…';
    }
    return verbo + (d ? ' ' + d : '…');
  }

  function resumenAcciones(lista, error) {
    var reales = (lista || []).filter(function (a) { return a && !a.ctx; });
    if (!reales.length) return error ? 'No se pudo completar' : 'Contexto leído';
    var n = reales.length;
    if (error) return 'No se pudo completar · ' + n + (n === 1 ? ' paso' : ' pasos');
    if (n === 1) return fraseAccion(reales[0].n, reales[0].d);
    var ult = reales[n - 1];
    return n + ' pasos · ' + fraseAccion(ult.n, ult.d);
  }

  /* Construye el bloque. `vivo` lo deja abierto y con la línea pulsando. */
  function bloqueTrabajo(acciones, vivo) {
    var caja = document.createElement('div');
    caja.className = 'ank-ai-work' + (vivo ? ' live' : '');
    var cabeza = document.createElement('button');
    cabeza.type = 'button';
    cabeza.className = 'ank-ai-work-head';
    cabeza.setAttribute('aria-expanded', vivo ? 'true' : 'false');
    cabeza.innerHTML = '<span class="ank-ai-work-arrow">›</span>' +
      '<span class="ank-ai-work-label"></span>';
    var cuerpo = document.createElement('div');
    cuerpo.className = 'ank-ai-work-body';
    (acciones || []).forEach(function (a) {
      cuerpo.appendChild(lineaTrabajo(a));
    });
    caja.appendChild(cabeza);
    caja.appendChild(cuerpo);
    caja.querySelector('.ank-ai-work-label').textContent = vivo ? 'Pensando…' : resumenAcciones(acciones || []);
    if (vivo) caja.classList.add('open');
    cabeza.addEventListener('click', function (ev) {
      ev.preventDefault();
      ev.stopPropagation();
      var abierto = caja.classList.toggle('open');
      cabeza.setAttribute('aria-expanded', abierto ? 'true' : 'false');
    });
    return caja;
  }

  function lineaTrabajo(a) {
    var l = document.createElement('div');
    l.className = 'ank-ai-work-line' + (a && a.err ? ' err' : '');
    l.textContent = String((a && a.n) || '') + (a && a.d ? ' ' + a.d : '');
    return l;
  }

  function abrirTurno() {
    var m = nuevoMensaje('bot', '');
    burbuja(m);
    cur = {
      msg: m,
      el: m.nodo,
      txt: null,
      buf: '',
      visible: '',
      bloque: '',
      enBloque: false,
      bloqueRuta: '',
      acciones: [],
      work: bloqueTrabajo([], true),
      cursor: document.createElement('span')
    };
    m.acciones = cur.acciones;
    cur.el.appendChild(cur.work);
    cur.txt = document.createElement('span');
    cur.txt.className = 'ank-ai-txt';
    cur.el.appendChild(cur.txt);
    cur.cursor.className = 'ank-ai-cursor';
    cur.el.appendChild(cur.cursor);
    return cur;
  }

  /* Actualiza la línea visible del bloque sin abrirlo. */
  function etiquetaTrabajo(texto, vivo) {
    if (!cur || !cur.work) return;
    var l = cur.work.querySelector('.ank-ai-work-label');
    if (l) l.textContent = texto;
    cur.work.classList.toggle('live', !!vivo);
    if (vivo) cur.work.classList.add('live');
  }

  function escribirBot(texto) {
    var bruto = String(texto == null ? '' : texto);
    if (!bruto) return;
    if (bruto.trim()) {
      var limpio = sinContexto(bruto);
      if (!limpio.trim()) {
        notaTrabajo(bruto.trim());
        return;
      }
      bruto = limpio;
    }
    if (!cur) abrirTurno();
    var i = 0;
    while (i < bruto.length) {
      var j = bruto.indexOf('\n', i);
      var linea = j === -1 ? bruto.slice(i) : bruto.slice(i, j + 1);
      i = j === -1 ? bruto.length : j + 1;
      escribirLineaBot(linea);
    }
  }

  /* Una línea del modelo. Mientras se está escribiendo un bloque de código no
     se pinta: el chat solo muestra texto y, al cerrar el turno, el bloque
     aparece plegado o como propuesta de archivo. */
  function escribirLineaBot(linea) {
    cur.buf += linea;
    cur.bloque = (cur.bloque || '') + linea;
    cur.msg.texto = cur.buf;

    if (/^\s*```/.test(linea)) {
      cur.enBloque = !cur.enBloque;
      if (cur.enBloque) {
        cur.bloqueRuta = '';
        etiquetaTrabajo('Escribiendo código…', true);
      } else {
        cur.enBloque = false;
        cur.bloqueRuta = '';
        if (!cur.acciones || !cur.acciones.length) etiquetaTrabajo('Pensando…', true);
      }
      autoScroll();
      return;
    }

    if (cur.enBloque) {
      var m = /^ank:archivo\s+(.+)$/i.exec(linea.trim());
      if (m) {
        cur.bloqueRuta = m[1].trim();
        etiquetaTrabajo('Preparando ' + recortar(cur.bloqueRuta, 40), true);
      }
      return;
    }

    cur.visible = (cur.visible || '') + linea;
    if (!cur.txt) {
      cur.txt = document.createElement('span');
      cur.txt.className = 'ank-ai-txt';
      cur.el.insertBefore(cur.txt, cur.cursor);
    }
    cur.txt.textContent = cur.visible;
    autoScroll();
  }

  /* Una línea de contexto leída en segundo plano: queda en el detalle del
     bloque de trabajo, nunca en el hilo del chat. */
  function notaTrabajo(texto) {
    if (!cur) return;
    var acc = { n: '·', d: recortar(texto, 200), ctx: true };
    cur.acciones.push(acc);
    var cuerpo = cur.work && cur.work.querySelector('.ank-ai-work-body');
    if (!cuerpo) return;
    cuerpo.appendChild(lineaTrabajo(acc));
    cuerpo.scrollTop = cuerpo.scrollHeight;
  }

  function herramienta(nombre, detalle) {
    if (!cur) abrirTurno();
    /* Lo ya escrito queda a la vista; lo que venga después va en un span
       nuevo, para que el bloque de código no se mezcle con el texto. */
    cur.txt = null;
    cur.visible = '';
    cur.bloque = '';
    cur.enBloque = false;
    var acc = { n: String(nombre || ''), d: recortar(detalle, 160) };
    cur.acciones.push(acc);
    var cuerpo = cur.work && cur.work.querySelector('.ank-ai-work-body');
    if (cuerpo) {
      cuerpo.appendChild(lineaTrabajo(acc));
      cuerpo.scrollTop = cuerpo.scrollHeight;
    }
    etiquetaTrabajo(fraseAccion(acc.n, acc.d), true);
    autoScroll();
  }

  function cerrarTurno(error) {
    if (!cur) return;
    if (cur.cursor && cur.cursor.parentNode) cur.cursor.remove();
    var pasos = cur.acciones ? cur.acciones.length : 0;
    if (cur.work) {
      if (!pasos) {        cur.work.remove();
      } else {
        cur.work.classList.remove('live');
        var l = cur.work.querySelector('.ank-ai-work-label');
        if (l) l.textContent = resumenAcciones(cur.acciones, !!error);
        var cabeza = cur.work.querySelector('.ank-ai-work-head');
        /* Si falló, el detalle queda a la vista sin obligar a abrirlo. */
        cur.work.classList.toggle('open', !!error);
        if (cabeza) cabeza.setAttribute('aria-expanded', error ? 'true' : 'false');
      }
    }
    if (!cur.buf.trim() && !error && !pasos) {
      cur.el.innerHTML = '<span class="ank-ai-tool">Sin respuesta del modelo.</span>';
    } else {
      var limpio = sinContexto(cur.bloque || cur.buf);
      cur.msg.texto = sinContexto(cur.buf);
      if (cur.txt) {
        cur.txt.parentNode.replaceChild(nodoTrozos(mdLite(limpio)), cur.txt);
        cur.txt = null;
      } else if (limpio.trim()) {
        /* La respuesta fue solo código: no hay span de texto donde
           reemplazar, así que se agrega al final de la burbuja. */
        cur.el.appendChild(nodoTrozos(mdLite(limpio)));
      }
    }
    if (error) {
      cur.el.classList.add('err');
      cur.el.appendChild(barraReintento());
      st.turnoError = cur.el;
      capturarError('Fallo del asistente: ' + (cur.buf ? cur.buf.replace(/\s+/g, ' ').slice(0, 160) : 'sin respuesta'), 'turno');
    }
    cur = null;
    autoScroll();
  }

  /* Botones de recuperación al pie de una respuesta fallida. */
  function barraReintento() {
    var d = document.createElement('div');
    d.className = 'ank-ai-retry';
    d.innerHTML =
      '<button type="button" class="ank-ai-act" data-accion="reintentar">Reintentar</button>' +
      '<button type="button" class="ank-ai-act" data-accion="otro-modelo">Probar otro modelo</button>' +
      '<button type="button" class="ank-ai-act ghost" data-accion="diag">Diagnóstico</button>';
    return d;
  }

  /* markdown mínimo: bloques de código, código en línea, negrita.
     Un bloque con el lenguaje `ank:archivo <ruta>` se convierte en una
     propuesta de archivo aplicable (con diff contra el archivo local). */
  function mdLite(texto) {
    var partes = String(texto).split(/```/);
    var salida = [];
    for (var i = 0; i < partes.length; i++) {
      if (i % 2 === 1) {
        var bruto = partes[i];
        var comando = /^ank:comando(?:[ \t]+([^\n]+))?\n?/i.exec(bruto);
        var propuesta = /^ank:archivo[ \t]+([^\n]+)\n?/i.exec(bruto);
        if (comando) {
          salida.push({
            tipo: 'comando',
            titulo: String(comando[1] || 'Comando solicitado').replace(/\r/g, '').trim(),
            comando: bruto.slice(comando[0].length).replace(/\n$/, '').trim()
          });
        } else if (propuesta) {
          salida.push({
            tipo: 'archivo',
            ruta: propuesta[1].replace(/\r/g, '').trim(),
            texto: bruto.slice(propuesta[0].length).replace(/\n$/, '')
          });
        } else {
          salida.push({ tipo: 'codigo', texto: bruto.replace(/^[A-Za-z0-9+#_-]*\n/, '').replace(/\n$/, '') });
        }
      } else {
        var html = esc(partes[i])
          .replace(/`([^`\n]+)`/g, '<code>$1</code>')
          .replace(/\*\*([^*\n]+)\*\*/g, '<b>$1</b>')
          .replace(/^#{1,6}\s+(.+)$/gm, '<b>$1</b>');
        salida.push({ tipo: 'texto', html: html });
      }
    }
    return salida;
  }

  /* ------------------------------------------------------------------ *
   * propuestas de archivo (bloques ank:archivo)
   * ------------------------------------------------------------------ */

  function rutaAbsolutaArchivo(rel) {
    var r = limpioRuta(rel).replace(/^\/+/, '');
    if (!r || /(^|\/)\.\.(\/|$)/.test(r)) return '';
    return st.prefix + '/public/proyectos/' + (limpioProyecto(st.project) || 'ank') + '/' + r;
  }

  /* Diff por líneas con LCS. Se acota el tamaño para no trabar el teléfono
     con archivos enormes. */
  function diffLineas(antes, despues) {
    var a = String(antes == null ? '' : antes).split('\n');
    var b = String(despues == null ? '' : despues).split('\n');
    var tope = 800;
    var recortado = false;
    if (a.length > tope) { a = a.slice(0, tope); recortado = true; }
    if (b.length > tope) { b = b.slice(0, tope); recortado = true; }
    var n = a.length, m = b.length;
    var dp = [];
    for (var i = 0; i <= n; i++) dp.push(new Uint32Array(m + 1));
    for (var x = n - 1; x >= 0; x--) {
      for (var y = m - 1; y >= 0; y--) {
        dp[x][y] = a[x] === b[y] ? dp[x + 1][y + 1] + 1 : Math.max(dp[x + 1][y], dp[x][y + 1]);
      }
    }
    var salida = [];
    var p = 0, r = 0;
    while (p < n && r < m) {
      if (a[p] === b[r]) { salida.push('  ' + a[p]); p++; r++; }
      else if (dp[p + 1][r] >= dp[p][r + 1]) { salida.push('- ' + a[p]); p++; }
      else { salida.push('+ ' + b[r]); r++; }
    }
    while (p < n) { salida.push('- ' + a[p]); p++; }
    while (r < m) { salida.push('+ ' + b[r]); r++; }
    if (recortado) salida.push('… diff recortado');
    return salida;
  }

  function bloqueComando(titulo, comando) {
    var id = 'c' + (++st.comandosN);
    var policy = window.ANKAIEngine && typeof window.ANKAIEngine.validateCommand === 'function'
      ? window.ANKAIEngine.validateCommand(comando)
      : { ok: false, reason: 'La política de comandos todavía no está cargada.' };
    st.comandos[id] = {
      titulo: String(titulo || 'Comando del proyecto'),
      comando: String(comando || '').trim(),
      estado: policy.ok ? 'pendiente' : 'bloqueado',
      motivo: policy.reason || '',
      salida: '',
      codigo: null,
      descartado: false
    };
    var caja = document.createElement('div');
    caja.className = 'ank-ai-command' + (policy.ok ? '' : ' blocked');
    caja.setAttribute('data-comando', id);
    caja.innerHTML =
      '<div class="ank-ai-command-head">' +
        '<b class="ank-ai-command-title"></b>' +
        '<span class="ank-ai-command-status"></span>' +
      '</div>' +
      '<pre class="ank-ai-command-code"></pre>' +
      '<pre class="ank-ai-command-output" hidden></pre>' +
      '<div class="ank-ai-command-actions">' +
        '<button type="button" class="ank-ai-act" data-accion="ejecutar-comando" data-valor="' + id + '"' + (policy.ok ? '' : ' disabled') + '>Ejecutar en terminal</button>' +
        '<button type="button" class="ank-ai-act ghost" data-accion="descartar-comando" data-valor="' + id + '">Descartar</button>' +
      '</div>';
    q('.ank-ai-command-title', caja).textContent = st.comandos[id].titulo;
    q('.ank-ai-command-code', caja).textContent = st.comandos[id].comando;
    q('.ank-ai-command-status', caja).textContent = policy.ok
      ? 'Requiere tu aprobación'
      : 'Bloqueado: ' + policy.reason;
    return caja;
  }

  function actualizarComandoUI(id) {
    var item = st.comandos[id];
    var caja = q('[data-comando="' + id + '"]');
    if (!item || !caja) return;
    var status = q('.ank-ai-command-status', caja);
    var output = q('.ank-ai-command-output', caja);
    var run = q('[data-accion="ejecutar-comando"]', caja);
    var discard = q('[data-accion="descartar-comando"]', caja);
    if (status) {
      if (item.estado === 'preparando') status.textContent = 'Preparando terminal…';
      else if (item.estado === 'ejecutando') status.textContent = 'Ejecutando en el proyecto…';
      else if (item.estado === 'completado') status.textContent = 'Completado · código ' + item.codigo;
      else if (item.estado === 'error') status.textContent = 'Terminó con error · código ' + item.codigo;
      else if (item.estado === 'descartado') status.textContent = 'Descartado';
      else if (item.estado === 'bloqueado') status.textContent = 'Bloqueado: ' + item.motivo;
      else status.textContent = 'Requiere tu aprobación';
    }
    if (run) {
      run.disabled = item.estado === 'preparando' || item.estado === 'ejecutando' ||
        item.estado === 'completado' || item.estado === 'descartado' || item.estado === 'bloqueado';
      run.textContent = item.estado === 'error' ? 'Reintentar' : 'Ejecutar en terminal';
    }
    if (discard) discard.disabled = item.estado === 'descartado' || item.estado === 'completado' ||
      item.estado === 'ejecutando' || item.estado === 'preparando';
    if (output) {
      output.hidden = !item.salida;
      output.textContent = item.salida;
    }
    caja.classList.toggle('blocked', item.estado === 'bloqueado');
    caja.classList.toggle('running', item.estado === 'ejecutando' || item.estado === 'preparando');
    caja.classList.toggle('done', item.estado === 'completado');
    caja.classList.toggle('failed', item.estado === 'error');
    caja.classList.toggle('discarded', item.estado === 'descartado');
  }

  function descartarComando(id) {
    var item = st.comandos[id];
    if (!item || item.estado === 'ejecutando' || item.estado === 'completado') return;
    item.descartado = true;
    item.estado = 'descartado';
    actualizarComandoUI(id);
    log('i', 'Propuesta de comando descartada: ' + recortar(item.comando, 100));
  }

  function ejecutarComandoPropuesto(id) {
    var item = st.comandos[id];
    if (!item || item.descartado || item.estado === 'ejecutando' || item.estado === 'preparando' ||
        item.estado === 'completado' || !window.ANKAIEngine) return;
    var policy = window.ANKAIEngine.validateCommand(item.comando);
    if (!policy.ok) {
      item.estado = 'bloqueado';
      item.motivo = policy.reason;
      actualizarComandoUI(id);
      aviso('Comando bloqueado por seguridad: ' + policy.reason);
      return;
    }
    var proyecto = limpioProyecto(st.project) || 'ank';
    // La terminal ve el árbol publicado como /public, no con la ruta privada
    // absoluta del plugin File. Mantener la misma ruta que st.work.
    var carpeta = '/public/proyectos/' + proyecto;
    item.estado = 'preparando';
    item.salida = '';
    actualizarComandoUI(id);
    log('i', 'Comando aprobado por el usuario: ' + item.comando);
    var preparar = st.prefix ? Promise.resolve() : dirsIniciales();
    preparar.then(function () {
      return asegurarSandbox();
    }).then(function () {
      item.estado = 'ejecutando';
      actualizarComandoUI(id);
      var guion = 'cd ' + comilla(carpeta) + ' && ' + policy.command;
      return shell(guion, false);
    }).then(function (result) {
      item.codigo = result.rc == null ? -1 : result.rc;
      item.salida = String(result.salida || '(sin salida)').slice(-12000);
      item.estado = result.rc === 0 ? 'completado' : 'error';
      actualizarComandoUI(id);
      log(result.rc === 0 ? 'i' : 'e', 'Comando finalizado con código ' + item.codigo + ': ' + item.comando);
    }).catch(function (error) {
      item.estado = 'error';
      item.codigo = -1;
      item.salida = String(error && error.message ? error.message : error).slice(0, 4000);
      actualizarComandoUI(id);
      log('e', 'No se pudo ejecutar el comando: ' + item.salida);
    });
  }

  function bloqueArchivo(ruta, contenido) {
    var id = 'a' + (++st.archivosN);
    st.archivos[id] = { ruta: ruta, contenido: contenido, existe: false, actual: '', aplicado: false, descartado: false };
    var caja = document.createElement('div');
    caja.className = 'ank-ai-file';
    caja.setAttribute('data-archivo', id);
    caja.innerHTML =
      '<div class="ank-ai-file-head">' +
        '<span class="ank-ai-file-ruta"></span>' +
        '<span class="ank-ai-file-est">leyendo…</span>' +
      '</div>' +
      '<pre class="ank-ai-file-diff" hidden></pre>' +
      '<div class="ank-ai-file-acc">' +
        '<button type="button" class="ank-ai-act" data-accion="aplicar-archivo" data-valor="' + id + '">Aplicar</button>' +
        '<button type="button" class="ank-ai-act ghost" data-accion="descartar-archivo" data-valor="' + id + '">Descartar</button>' +
      '</div>';
    q('.ank-ai-file-ruta', caja).textContent = ruta;
    leerParaDiff(id, caja);
    return caja;
  }

  function leerParaDiff(id, caja) {
    var a = st.archivos[id];
    if (!a) return;
    var ruta = rutaAbsolutaArchivo(a.ruta);
    if (!ruta) { pintarDiff(id, caja); return; }
    leerTexto(ruta)
      .then(function (txt) {
        a.actual = String(txt || '');
        a.existe = !!a.actual;
        pintarDiff(id, caja);
      })
      .catch(function () {
        a.actual = '';
        a.existe = false;
        pintarDiff(id, caja);
      });
  }

  function pintarDiff(id, caja) {
    var a = st.archivos[id];
    if (!a || !caja) return;
    var est = q('.ank-ai-file-est', caja);
    var pre = q('.ank-ai-file-diff', caja);
    if (!rutaAbsolutaArchivo(a.ruta)) {
      if (est) est.textContent = 'ruta no válida';
      caja.classList.add('mal');
      if (pre) { pre.hidden = false; pre.textContent = a.contenido; }
      return;
    }
    if (!a.existe) {
      if (est) est.textContent = 'archivo nuevo';
      caja.classList.add('nuevo');
      if (pre) { pre.hidden = false; pre.textContent = a.contenido; }
      return;
    }
    var lineas = diffLineas(a.actual, a.contenido);
    var sumas = 0, restas = 0;
    lineas.forEach(function (l) {
      if (l.charAt(0) === '+') sumas++;
      else if (l.charAt(0) === '-') restas++;
    });
    if (!sumas && !restas) {
      if (est) est.textContent = 'sin cambios';
      var b = q('[data-accion="aplicar-archivo"]', caja);
      if (b) b.disabled = true;
      return;
    }
    if (est) est.textContent = '+' + sumas + ' −' + restas;
    if (pre) {
      pre.hidden = false;
      var tope = 300;
      pre.textContent = lineas.slice(0, tope).join('\n') +
        (lineas.length > tope ? '\n… (' + (lineas.length - tope) + ' líneas más)' : '');
    }
  }

  function selloFecha() {
    var d = new Date();
    function dos(n) { return ('0' + n).slice(-2); }
    return d.getFullYear() + dos(d.getMonth() + 1) + dos(d.getDate()) + '-' +
      dos(d.getHours()) + dos(d.getMinutes()) + dos(d.getSeconds());
  }

  function aplicarArchivo(id) {
    var a = st.archivos[id];
    if (!a || a.aplicado || a.descartado) return;
    var ruta = rutaAbsolutaArchivo(a.ruta);
    var caja = q('[data-archivo="' + id + '"]');
    var est = caja ? q('.ank-ai-file-est', caja) : null;
    if (!ruta) {
      aviso('Ruta no válida: ' + a.ruta);
      return;
    }
    if (est) est.textContent = 'aplicando…';
    var carpeta = ruta.replace(/\/[^\/]+$/, '');
    conSistema('mkdirs', carpeta)
      .catch(function () {})
      .then(function () { return leerTexto(ruta); })
      .then(function (actual) {
        if (!actual) return null;
        return escribir(ruta + '.' + selloFecha() + '.bak', actual);
      })
      .then(function () { return escribir(ruta, a.contenido); })
      .then(function () {
        a.aplicado = true;
        if (caja) {
          caja.classList.add('aplicado');
          var b = q('[data-accion="aplicar-archivo"]', caja);
          var d = q('[data-accion="descartar-archivo"]', caja);
          if (b) b.disabled = true;
          if (d) d.disabled = true;
        }
        if (est) est.textContent = 'aplicado';
        aviso('Aplicado: ' + a.ruta);
        log('i', 'Archivo aplicado: ' + a.ruta);
      })
      .catch(function (e) {
        if (est) est.textContent = 'error';
        aviso('No se pudo aplicar el archivo.');
        log('e', 'Aplicar ' + a.ruta + ': ' + (e && e.message ? e.message : e));
      });
  }

  function descartarArchivo(id) {
    var a = st.archivos[id];
    if (!a || a.aplicado) return;
    a.descartado = true;
    var caja = q('[data-archivo="' + id + '"]');
    if (!caja) return;
    caja.classList.add('descartado');
    var b = q('[data-accion="aplicar-archivo"]', caja);
    var d = q('[data-accion="descartar-archivo"]', caja);
    if (b) b.disabled = true;
    if (d) d.disabled = true;
    var est = q('.ank-ai-file-est', caja);
    if (est) est.textContent = 'descartado';
  }

  /* ------------------------------------------------------------------ *
   * mini apps: apps creadas dentro de Código ANK
   * ------------------------------------------------------------------ */

  var MOTIVOS_PERMISO = {
    almacenamiento: 'guardar datos de la app',
    notificaciones: 'mostrar notificaciones',
    camara: 'usar la cámara',
    archivos: 'leer y guardar archivos',
    compartir: 'compartir contenido',
    portapapeles: 'usar el portapapeles',
    vibrar: 'vibrar el teléfono'
  };

  var AYUDA_SNIPPETS = {
    pedido: 'Creá una mini app de Código ANK llamada "Gastos".\n' +
      'Qué hace: anotar gastos por día, mostrar el total y guardar los datos en el teléfono.\n' +
      'Permisos: almacenamiento y notificaciones.\n' +
      'Usá ankapp.json, index.html, style.css y app.js. No uses localStorage directo: usá ANK.storage.\n' +
      'Devolvé cada archivo en un bloque ank:archivo con la ruta relativa.',
    manifiesto: '{\n' +
      '  "id": "gastos",\n' +
      '  "nombre": "Gastos",\n' +
      '  "version": "1.0.0",\n' +
      '  "descripcion": "Anota gastos por día y muestra el total",\n' +
      '  "icono": "💰",\n' +
      '  "tipo": "completa",\n' +
      '  "permisos": ["almacenamiento", "notificaciones"],\n' +
      '  "inicio": "index.html"\n' +
      '}',
    api: '// Guardar y leer datos (queda solo dentro de esta app)\n' +
      'await ANK.storage.set("gastos", [{ monto: 1500, texto: "almuerzo" }]);\n' +
      'const datos = await ANK.storage.get("gastos");\n\n' +
      '// Aviso dentro de ANK (y notificación del sistema si se permite)\n' +
      'await ANK.notify("Listo", "Se guardó el gasto");\n\n' +
      '// Cámara y archivos: devuelven un dataURL\n' +
      'const foto = await ANK.camera();\n' +
      'const archivo = await ANK.pickFile({ aceptar: "image/*" });\n\n' +
      '// Archivos dentro de la carpeta de la app\n' +
      'await ANK.fs.write("datos.json", JSON.stringify(datos));\n' +
      'const lista = await ANK.fs.list();\n\n' +
      '// Otros\n' +
      'await ANK.share("Texto para compartir");\n' +
      'await ANK.copy("Texto al portapapeles");\n' +
      'ANK.vibrate(120);'
  };

  function slugApp(texto) {
    return String(texto || 'app').toLowerCase()
      .normalize ? String(texto || 'app').toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, '')
        .replace(/[^a-z0-9]+/g, '-').replace(/^-+|-+$/g, '').slice(0, 40) || 'app'
      : String(texto || 'app').toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-+|-+$/g, '').slice(0, 40) || 'app';
  }

  function cargarApps() {
    return shell('find /public/proyectos -maxdepth 3 -name ankapp.json -print 2>/dev/null', true)
      .then(function (r) {
        var rutas = String(r.salida || '').split('\n').map(function (l) { return l.trim(); })
          .filter(function (l) { return l.indexOf('/public/proyectos/') === 0 && /ankapp\.json$/.test(l); });
        return Promise.all(rutas.map(function (ruta) {
          return leerTexto(st.prefix + ruta).then(function (txt) {
            var m = null;
            try { m = JSON.parse(txt); } catch (e) { return null; }
            if (!m || typeof m !== 'object') return null;
            var carpeta = ruta.replace('/public/proyectos/', '').replace(/\/ankapp\.json$/, '');
            var id = String(m.id || carpeta.split('/').pop()).replace(/[^A-Za-z0-9._-]/g, '') || carpeta;
            return {
              id: id,
              carpeta: carpeta,
              nombre: String(m.nombre || id),
              descripcion: String(m.descripcion || ''),
              version: String(m.version || '1.0'),
              icono: String(m.icono || '📦'),
              tipo: String(m.tipo || 'mini') === 'completa' ? 'completa' : 'mini',
              permisos: Array.isArray(m.permisos) ? m.permisos.map(String) : [],
              inicio: String(m.inicio || 'index.html'),
              archivos: Array.isArray(m.archivos) ? m.archivos.map(String) : []
            };
          }).catch(function () { return null; });
        }));
      })
      .then(function (lista) {
        st.apps = lista.filter(Boolean).sort(function (a, b) {
          return a.nombre.toLowerCase().localeCompare(b.nombre.toLowerCase());
        });
        pintarApps();
        return st.apps;
      })
      .catch(function (e) {
        st.apps = [];
        pintarApps();
        log('w', 'Apps: ' + (e && e.message ? e.message : e));
      });
  }

  function pintarApps() {
    var cont = q('.ank-ai-applist');
    if (!cont) return;
    if (!st.apps.length) {
      cont.innerHTML = '<div class="ank-ai-empty">' +
        'Todavía no hay apps. Tocá <b>Crear app</b> y contale a la IA qué querés; ' +
        'ella arma los archivos y vos los aplicás con el diff.' +
        '</div>';
      return;
    }
    cont.innerHTML = st.apps.map(function (a) {
      var permisos = a.permisos.length
        ? a.permisos.map(function (p) { return '<span class="ank-app-tag">' + esc(p) + '</span>'; }).join('')
        : '<span class="ank-app-tag">sin permisos</span>';
      if (a.tipo === 'completa') permisos = '<span class="ank-app-tag full">completa</span>' + permisos;
      return '<div class="ank-app-card" data-app="' + esc(a.id) + '">' +
        '<div class="ank-app-icon">' + esc(a.icono) + '</div>' +
        '<div class="ank-app-info">' +
          '<div class="ank-app-name">' + esc(a.nombre) + '</div>' +
          '<div class="ank-app-desc">' + esc(a.descripcion || a.carpeta) + '</div>' +
          '<div class="ank-app-tags">' + permisos + '</div>' +
        '</div>' +
        '<div class="ank-app-acc">' +
          '<button type="button" class="ank-ai-act" data-accion="abrir-app" data-valor="' + esc(a.id) + '">Abrir</button>' +
          '<button type="button" class="ank-ai-act ghost" data-accion="editar-app" data-valor="' + esc(a.id) + '">Editar</button>' +
          '<button type="button" class="ank-ai-act ghost" data-accion="exportar-app" data-valor="' + esc(a.id) + '" title="Generar una PWA instalable en el teléfono">Exportar</button>' +
        '</div>' +
      '</div>';
    }).join('');
  }

  function buscarApp(id) {
    for (var i = 0; i < st.apps.length; i++) {
      if (st.apps[i].id === id) return st.apps[i];
    }
    return null;
  }

  function inyectarBloque(html, etiqueta, bloque) {
    var cierre = '</' + etiqueta + '>';
    var pos = String(html).toLowerCase().lastIndexOf(cierre);
    if (pos === -1) return bloque + html;
    return html.slice(0, pos) + bloque + html.slice(pos);
  }

  function scriptCliente(app) {
    var info = JSON.stringify({ id: app.id, nombre: app.nombre, version: app.version });
    return '<script>(function(){' +
      'var seq=0,esperas={};' +
      'function llamar(fn,args){return new Promise(function(ok,mal){var id=++seq;esperas[id]={ok:ok,mal:mal};' +
      'parent.postMessage({__ank:"call",id:id,fn:fn,args:args||[]},"*");});}' +
      'window.addEventListener("message",function(e){var d=e.data;if(!d||d.__ank!=="res")return;' +
      'var w=esperas[d.id];if(!w)return;delete esperas[d.id];if(d.ok)w.ok(d.valor);else w.mal(new Error(d.error||"error"));});' +
      'window.ANK={version:"1.0",app:' + info + ',' +
      'storage:{get:function(k){return llamar("storage.get",[k]);},set:function(k,v){return llamar("storage.set",[k,v]);},' +
      'remove:function(k){return llamar("storage.remove",[k]);},clear:function(){return llamar("storage.clear",[]);}},' +
      'notify:function(t,x){return llamar("notify",[t,x]);},share:function(t){return llamar("share",[t]);},' +
      'copy:function(t){return llamar("copy",[t]);},vibrate:function(ms){return llamar("vibrate",[ms]);},' +
      'fs:{list:function(){return llamar("fs.list",[]);},read:function(r){return llamar("fs.read",[r]);},' +
      'write:function(r,c){return llamar("fs.write",[r,c]);}},' +
      'pickFile:function(o){return llamar("pickFile",[o||{}]);},camera:function(){return llamar("camera",[]);},' +
      'request:function(p){return llamar("permiso",[p]);}};' +
      '})();<\/script>';
  }

  /* Lee el inicio y todos los archivos declarados de la app. */
  function fuentesApp(app) {
    var base = st.prefix + '/public/proyectos/' + app.carpeta + '/';
    var nombres = (app.archivos || []).slice();
    if (nombres.indexOf('style.css') === -1) nombres.push('style.css');
    if (nombres.indexOf('app.js') === -1) nombres.push('app.js');
    nombres = nombres.filter(function (n) { return n && n !== app.inicio; });
    var todos = [app.inicio].concat(nombres);
    return Promise.all(todos.map(function (n) {
      return leerTexto(base + n).catch(function () { return ''; });
    })).then(function (t) {
      var mapa = {};
      todos.forEach(function (n, i) { mapa[n] = t[i] || ''; });
      return mapa;
    });
  }

  /* Arma un único HTML con el CSS y los JS incrustados en orden. */
  function armarHtml(app, mapa) {
    var html = mapa[app.inicio] || '';
    Object.keys(mapa).forEach(function (n) {
      if (n === app.inicio) return;
      var c = mapa[n];
      if (!c || !String(c).trim()) return;
      if (/\.css$/i.test(n)) {
        html = inyectarBloque(html, 'head', '<style>' + c.replace(/<\/style>/gi, '<\\/style>') + '</style>');
      } else if (/\.js$/i.test(n)) {
        html = inyectarBloque(html, 'body', '<script>' + c.replace(/<\/script>/gi, '<\\/script>') + '<\/script>');
      }
    });
    return html;
  }

  function abrirApp(id) {
    var app = buscarApp(id);
    if (!app) return aviso('No encontré esa app. Tocá Actualizar.');
    fuentesApp(app).then(function (mapa) {
      var html = armarHtml(app, mapa);
      if (!html.trim()) return aviso('La app no tiene ' + app.inicio + '.');
      html += scriptCliente(app);
      montarApp(app, html);
    }).catch(function (e) {
      aviso('No se pudo abrir la app.');
      log('e', 'Abrir app ' + app.id + ': ' + (e && e.message ? e.message : e));
    });
  }

  function montarApp(app, html) {
    st.appActual = app;
    var el = q('#ank-app-run');
    if (!el) {
      el = document.createElement('div');
      el.id = 'ank-app-run';
      document.body.appendChild(el);
      el.addEventListener('click', manejarClic);
    }
    el.innerHTML =
      '<div class="ank-app-runbar">' +
        '<span class="ank-app-runname"></span>' +
        '<button type="button" class="ank-ai-act ghost" data-accion="cerrar-app">Cerrar</button>' +
      '</div>' +
      '<iframe class="ank-app-frame" title="App" sandbox="allow-scripts allow-forms allow-modals allow-popups allow-downloads allow-pointer-lock"></iframe>';
    q('.ank-app-runname', el).textContent = app.icono + '  ' + app.nombre;
    q('iframe', el).srcdoc = html;
    el.classList.add('open');
  }

  function cerrarApp() {
    var el = q('#ank-app-run');
    if (el) {
      var f = q('iframe', el);
      if (f) f.srcdoc = '';
      el.classList.remove('open');
    }
    st.appActual = null;
  }

  /* ------------------------------------------------------------------ *
   * exportar una app como PWA (instalable en el teléfono)
   * ------------------------------------------------------------------ */

  /* Dentro de ANK la app habla con el panel por postMessage. Exportada corre
     sola en el navegador, así que se le da la misma API apoyada en
     localStorage, sin depender de ANK. */
  function scriptIndependiente(app) {
    var id = JSON.stringify('ank.app.' + app.id + '.');
    return '<script>(function(){' +
      'var P=' + id + ';' +
      'function get(k){try{var v=localStorage.getItem(P+k);return v==null?null:JSON.parse(v);}catch(e){return null;}}' +
      'function set(k,v){try{localStorage.setItem(P+k,JSON.stringify(v));return true;}catch(e){return false;}}' +
      'function no(t){return Promise.reject(new Error(t));}' +
      'function entrada(aceptar,captura){return new Promise(function(ok,mal){' +
        'var i=document.createElement("input");i.type="file";if(aceptar)i.accept=aceptar;' +
        'if(captura)i.setAttribute("capture","environment");' +
        'i.onchange=function(){var f=i.files&&i.files[0];if(!f)return mal(new Error("sin archivo"));' +
        'if(/^(image|text|application\/json)/.test(f.type)){var r=new FileReader();' +
        'r.onload=function(){ok(captura?String(r.result):String(r.result));};' +
        'r.onerror=function(){mal(new Error("no se pudo leer"));};' +
        'if(captura)r.readAsDataURL(f);else r.readAsText(f);}else ok(f);};' +
        'i.click();});}' +
      'window.ANK={version:"1.0",app:' + JSON.stringify({ id: app.id, nombre: app.nombre, version: app.version }) + ',' +
      'storage:{get:function(k){return Promise.resolve(get(k));},set:function(k,v){return Promise.resolve(set(k,v));},' +
      'remove:function(k){try{localStorage.removeItem(P+k);}catch(e){}return Promise.resolve(true);},' +
      'clear:function(){try{Object.keys(localStorage).forEach(function(k){if(k.indexOf(P)===0)localStorage.removeItem(k);});}catch(e){}return Promise.resolve(true);}},' +
      'notify:function(t,x){try{if(window.Notification&&Notification.permission==="granted")new Notification(String(t||""),{body:String(x||"")});else window.alert(String(t||"")+(x?"\\n"+x:""));}catch(e){}return Promise.resolve(true);},' +
      'share:function(t){if(navigator.share)return navigator.share({text:String(t||"")});return no("compartir no disponible");},' +
      'copy:function(t){if(navigator.clipboard)return navigator.clipboard.writeText(String(t||""));return no("portapapeles no disponible");},' +
      'vibrate:function(ms){if(navigator.vibrate)navigator.vibrate(Number(ms)||100);return Promise.resolve(true);},' +
      'fs:{list:function(){return Promise.resolve([]);},read:function(){return no("solo dentro de ANK");},write:function(){return no("solo dentro de ANK");}},' +
      'pickFile:function(o){return entrada(o&&o.aceptar,false);},' +
      'camera:function(){return entrada("image/*",true);},' +
      'request:function(){return Promise.resolve(true);}};' +
      '})();<\/script>';
  }

  function utf8Bytes(texto) {
    var s = String(texto == null ? '' : texto);
    if (typeof TextEncoder !== 'undefined') return new TextEncoder().encode(s);
    var esc = unescape(encodeURIComponent(s));
    var u = new Uint8Array(esc.length);
    for (var i = 0; i < esc.length; i++) u[i] = esc.charCodeAt(i);
    return u;
  }

  var CRC_TABLA = null;
  function crc32(u8) {
    if (!CRC_TABLA) {
      CRC_TABLA = new Uint32Array(256);
      for (var n = 0; n < 256; n++) {
        var c = n;
        for (var k = 0; k < 8; k++) c = c & 1 ? 0xEDB88320 ^ (c >>> 1) : c >>> 1;
        CRC_TABLA[n] = c >>> 0;
      }
    }
    var crc = 0xFFFFFFFF;
    for (var i = 0; i < u8.length; i++) crc = CRC_TABLA[(crc ^ u8[i]) & 0xFF] ^ (crc >>> 8);
    return (crc ^ 0xFFFFFFFF) >>> 0;
  }

  /* ZIP sin compresión (método 0): alcanza para HTML, CSS y JS. */
  function zipBytes(archivos) {
    var partes = [];
    var central = [];
    var offset = 0;
    archivos.forEach(function (a) {
      var nombre = utf8Bytes(a.nombre);
      var datos = a.datos;
      var crc = crc32(datos);
      var cab = new Uint8Array(30 + nombre.length);
      var v = new DataView(cab.buffer);
      v.setUint32(0, 0x04034b50, true);
      v.setUint16(4, 20, true);
      v.setUint16(6, 0x0800, true);
      v.setUint16(8, 0, true);
      v.setUint16(10, 0, true);
      v.setUint16(12, 0x21, true);
      v.setUint32(14, crc, true);
      v.setUint32(18, datos.length, true);
      v.setUint32(22, datos.length, true);
      v.setUint16(26, nombre.length, true);
      v.setUint16(28, 0, true);
      cab.set(nombre, 30);
      partes.push(cab, datos);

      var cen = new Uint8Array(46 + nombre.length);
      var w = new DataView(cen.buffer);
      w.setUint32(0, 0x02014b50, true);
      w.setUint16(4, 20, true);
      w.setUint16(6, 20, true);
      w.setUint16(8, 0x0800, true);
      w.setUint16(10, 0, true);
      w.setUint16(12, 0, true);
      w.setUint16(14, 0x21, true);
      w.setUint32(16, crc, true);
      w.setUint32(20, datos.length, true);
      w.setUint32(24, datos.length, true);
      w.setUint16(28, nombre.length, true);
      w.setUint32(42, offset, true);
      cen.set(nombre, 46);
      central.push(cen);
      offset += cab.length + datos.length;
    });

    var tamCentral = 0;
    central.forEach(function (c) { tamCentral += c.length; });
    var fin = new Uint8Array(22);
    var f = new DataView(fin.buffer);
    f.setUint32(0, 0x06054b50, true);
    f.setUint16(8, archivos.length, true);
    f.setUint16(10, archivos.length, true);
    f.setUint32(12, tamCentral, true);
    f.setUint32(16, offset, true);

    var total = offset + tamCentral + 22;
    var salida = new Uint8Array(total);
    var pos = 0;
    partes.concat(central, [fin]).forEach(function (b) {
      salida.set(b, pos);
      pos += b.length;
    });
    return salida;
  }

  function base64Bytes(u8) {
    var s = '';
    for (var i = 0; i < u8.length; i++) s += String.fromCharCode(u8[i]);
    return btoa(s);
  }

  function manifiestoApp(app) {
    return JSON.stringify({
      name: app.nombre,
      short_name: app.nombre.slice(0, 12),
      description: app.descripcion || 'App creada con Código ANK',
      start_url: './',
      scope: './',
      display: 'standalone',
      orientation: 'any',
      background_color: '#0f1618',
      theme_color: '#0f1618',
      lang: 'es',
      icons: [
        { src: 'icon.svg', sizes: 'any', type: 'image/svg+xml', purpose: 'any' },
        { src: 'icon.svg', sizes: 'any', type: 'image/svg+xml', purpose: 'maskable' }
      ]
    }, null, 2) + '\n';
  }

  function iconoApp(app) {
    var letra = String(app.nombre || 'A').trim().charAt(0).toUpperCase();
    return '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">' +
      '<rect width="512" height="512" rx="96" fill="#0f1618"/>' +
      '<text x="256" y="332" font-family="system-ui,sans-serif" font-size="260" font-weight="700" ' +
      'text-anchor="middle" fill="#e0a458">' + esc(letra) + '</text></svg>\n';
  }

  function trabajadorApp(app) {
    var v = String(app.version || '1');
    return "var CACHE = 'ank-" + app.id + "-" + v + "';\n" +
      "self.addEventListener('install', function (e) {\n" +
      "  e.waitUntil(caches.open(CACHE).then(function (c) {\n" +
      "    return c.addAll(['./', 'index.html', 'manifest.webmanifest', 'icon.svg']).catch(function () {});\n" +
      "  }).then(function () { return self.skipWaiting(); }));\n" +
      "});\n" +
      "self.addEventListener('activate', function (e) {\n" +
      "  e.waitUntil(caches.keys().then(function (ks) {\n" +
      "    return Promise.all(ks.filter(function (k) { return k !== CACHE; }).map(function (k) { return caches.delete(k); }));\n" +
      "  }).then(function () { return self.clients.claim(); }));\n" +
      "});\n" +
      "self.addEventListener('fetch', function (e) {\n" +
      "  if (e.request.method !== 'GET') return;\n" +
      "  e.respondWith(caches.match(e.request).then(function (r) {\n" +
      "    return r || fetch(e.request).then(function (res) {\n" +
      "      var copia = res.clone();\n" +
      "      caches.open(CACHE).then(function (c) { c.put(e.request, copia); });\n" +
      "      return res;\n" +
      "    }).catch(function () { return caches.match('index.html'); });\n" +
      "  }));\n" +
      "});\n";
  }

  function leemeApp(app) {
    return '# ' + app.nombre + '\n\n' +
      'App creada con Código ANK y exportada como PWA (aplicación web instalable).\n\n' +
      '## Probarla en el teléfono\n\n' +
      '1. Copiá esta carpeta a un servidor con HTTPS o a GitHub Pages.\n' +
      '2. Abrí la dirección en Chrome.\n' +
      '3. Menú ⋮ → «Instalar aplicación» / «Agregar a pantalla principal».\n\n' +
      '## Publicarla con GitHub Pages\n\n' +
      '1. Creá un repositorio y subí el contenido de esta carpeta a la raíz.\n' +
      '2. En el repositorio: Settings → Pages → Branch: main / carpeta raíz.\n' +
      '3. Esperá un minuto y abrí la dirección `https://USUARIO.github.io/REPO/`.\n' +
      '4. En Chrome, instalá la app. Queda con su ícono y abre sin ANK.\n\n' +
      '## Qué incluye\n\n' +
      '- `index.html`: toda la app en un archivo (HTML, CSS y JS incrustados).\n' +
      '- `manifest.webmanifest`: nombre, colores e ícono para instalarla.\n' +
      '- `sw.js`: copia local para que abra sin internet.\n' +
      '- `icon.svg`: ícono generado a partir del nombre.\n\n' +
      'Los datos se guardan en el navegador de la app instalada (`localStorage`).\n' +
      'Si borrás los datos del sitio, se borran; no se sincronizan con ANK.\n';
  }

  /* Escribe export/ dentro de la app con todo lo necesario y arma el ZIP. */
  function exportarApp(id) {
    var app = buscarApp(id);
    if (!app) return aviso('No encontré esa app. Tocá Actualizar.');
    var carpeta = '/public/proyectos/' + app.carpeta;
    var base = st.prefix + carpeta;
    aviso('Preparando la exportación…');
    return fuentesApp(app).then(function (mapa) {
      var html = armarHtml(app, mapa);
      if (!html.trim()) throw new Error('la app no tiene ' + app.inicio);
      var manifiesto = manifiestoApp(app);
      var trabajo = trabajadorApp(app);
      var icono = iconoApp(app);
      var leeme = leemeApp(app);
      var cabecera = '<link rel="manifest" href="manifest.webmanifest" />' +
        '<meta name="theme-color" content="#0f1618" />' +
        '<meta name="mobile-web-app-capable" content="yes" />' +
        '<meta name="apple-mobile-web-app-capable" content="yes" />' +
        '<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />' +
        '<link rel="icon" href="icon.svg" type="image/svg+xml" />';
      html = inyectarBloque(html, 'head', cabecera);
      html = inyectarBloque(html, 'body',
        '<script>if("serviceWorker" in navigator){window.addEventListener("load",function(){' +
        'navigator.serviceWorker.register("sw.js").catch(function(){});});}<\/script>');
      html += scriptIndependiente(app);

      var archivos = [
        { nombre: 'index.html', texto: html },
        { nombre: 'manifest.webmanifest', texto: manifiesto },
        { nombre: 'sw.js', texto: trabajo },
        { nombre: 'icon.svg', texto: icono },
        { nombre: 'LEEME.md', texto: leeme }
      ];
      return archivos.reduce(function (p, a) {
        return p.then(function () { return escribir(base + '/export/' + a.nombre, a.texto); });
      }, conSistema('mkdirs', base + '/export').catch(function () {})).then(function () {
        var zip = zipBytes(archivos.map(function (a) {
          return { nombre: a.nombre, datos: utf8Bytes(a.texto) };
        }));
        return escribir(base + '/export/app.zip.b64', base64Bytes(zip));
      }).then(function () {
        return shell('cd ' + shq(carpeta + '/export') + ' && base64 -d app.zip.b64 > app.zip && rm -f app.zip.b64', true);
      }).then(function () {
        aviso('App exportada en ' + carpeta + '/export (index.html, manifest, sw.js, icono y app.zip).');
        log('i', 'Exportada ' + app.nombre + ' en ' + carpeta + '/export');
        return true;
      });
    }).catch(function (e) {
      aviso('No se pudo exportar: ' + (e && e.message ? e.message : e));
      log('e', 'Exportar app ' + app.id + ': ' + (e && e.message ? e.message : e));
      return false;
    });
  }

  function datosApp(app) {
    var crudo = leer('ank.app.data.' + app.id, '');
    if (!crudo) return {};
    try {
      var d = JSON.parse(crudo);
      return d && typeof d === 'object' ? d : {};
    } catch (e) { return {}; }
  }

  function guardarDatosApp(app, datos) {
    guardar('ank.app.data.' + app.id, JSON.stringify(datos || {}));
  }

  function rutaDeApp(app, rel) {
    var r = limpioRuta(rel || '').replace(/^\/+/, '');
    if (/(^|\/)\.\.(\/|$)/.test(r)) throw new Error('ruta no permitida');
    return st.prefix + '/public/proyectos/' + app.carpeta + (r ? '/' + r : '');
  }

  function pedirPermiso(app, permiso, motivo) {
    var p = String(permiso || '');
    if (!p) return Promise.resolve(true);
    if (p === 'almacenamiento') return Promise.resolve(true);
    if (app.permisos.indexOf(p) === -1) {
      return Promise.resolve(false);
    }
    var clave = 'ank.app.perm.' + app.id + '.' + p;
    var guardado = leer(clave, '');
    if (guardado === 'si') return Promise.resolve(true);
    if (guardado === 'no') return Promise.resolve(false);
    return new Promise(function (res) {
      var el = q('#ank-app-perm');
      if (!el) {
        el = document.createElement('div');
        el.id = 'ank-app-perm';
        document.body.appendChild(el);
        el.addEventListener('click', manejarClic);
      }
      el.innerHTML =
        '<div class="ank-app-perm-box">' +
          '<div class="ank-app-perm-head">Permiso de la app</div>' +
          '<div class="ank-app-perm-txt"></div>' +
          '<div class="ank-app-perm-acc">' +
            '<button type="button" class="ank-ai-act ghost" data-accion="permiso-no" data-valor="' + esc(clave) + '">Denegar</button>' +
            '<button type="button" class="ank-ai-act" data-accion="permiso-si" data-valor="' + esc(clave) + '">Permitir</button>' +
          '</div>' +
        '</div>';
      q('.ank-app-perm-txt', el).textContent = '«' + app.nombre + '» quiere ' +
        (motivo || MOTIVOS_PERMISO[p] || p) + '.';
      el.classList.add('open');
      el.__ankRes = res;
      el.__ankClave = clave;
    });
  }

  function responderPermiso(clave, permitido) {
    var el = q('#ank-app-perm');
    if (!el) return;
    var actual = el.__ankClave || '';
    var res = el.__ankRes;
    el.__ankRes = null;
    el.__ankClave = '';
    el.classList.remove('open');
    if (clave && actual && clave !== actual) return;
    if (actual) guardar(actual, permitido ? 'si' : 'no');
    if (typeof res === 'function') res(!!permitido);
  }

  function elegirArchivo(op) {    return new Promise(function (res) {
      var input = document.createElement('input');
      input.type = 'file';
      input.style.display = 'none';
      if (op && op.aceptar) input.accept = String(op.aceptar);
      if (op && op.camara) input.setAttribute('capture', 'environment');
      document.body.appendChild(input);
      input.addEventListener('change', function () {
        var f = input.files && input.files[0];
        if (!f) { input.remove(); res(null); return; }
        if (f.size > 8 * 1024 * 1024) {
          aviso('El archivo supera 8 MB.');
          input.remove();
          res(null);
          return;
        }
        var fr = new FileReader();
        fr.onload = function () {
          input.remove();
          res({ nombre: f.name, tipo: f.type, tamano: f.size, data: String(fr.result || '') });
        };
        fr.onerror = function () { input.remove(); res(null); };
        fr.readAsDataURL(f);
      });
      input.click();
    });
  }

  function notificarApp(titulo, texto) {
    var t = String(titulo || 'App de ANK');
    var x = String(texto || '');
    aviso(x ? t + ' · ' + x : t);
    try {
      var n = window.cordova && window.cordova.plugins && window.cordova.plugins.notification &&
        window.cordova.plugins.notification.local;
      if (n && typeof n.schedule === 'function') {
        n.schedule({ id: Date.now() % 2147483647, title: t, text: x, foreground: true });
      }
    } catch (e) {}
    return true;
  }

  function compartirTexto(texto) {
    try {
      if (navigator.share) {
        return navigator.share({ text: String(texto || '') }).then(function () { return true; });
      }
    } catch (e) {}
    return copiarPortapapeles(String(texto || '')).then(function () {
      aviso('Copiado para compartir.');
      return true;
    });
  }

  function ejecutarLlamada(app, fn, args) {
    if (fn === 'permiso') return pedirPermiso(app, String(args[0] || ''), '');
    if (fn.indexOf('storage.') === 0) {
      var datos = datosApp(app);
      var clave = String(args[0] || '');
      if (fn === 'storage.get') return datos[clave] == null ? null : datos[clave];
      if (fn === 'storage.set') {
        if (!clave) throw new Error('falta la clave');
        datos[clave] = args[1];
        guardarDatosApp(app, datos);
        return true;
      }
      if (fn === 'storage.remove') { delete datos[clave]; guardarDatosApp(app, datos); return true; }
      if (fn === 'storage.clear') { guardarDatosApp(app, {}); return true; }
      throw new Error('operación de almacenamiento no válida');
    }
    if (fn === 'notify') {
      return pedirPermiso(app, 'notificaciones', MOTIVOS_PERMISO.notificaciones).then(function (ok) {
        if (!ok) throw new Error('permiso de notificaciones denegado');
        return notificarApp(args[0], args[1]);
      });
    }
    if (fn === 'share') {
      return pedirPermiso(app, 'compartir', MOTIVOS_PERMISO.compartir).then(function (ok) {
        if (!ok) throw new Error('permiso para compartir denegado');
        return compartirTexto(args[0]);
      });
    }
    if (fn === 'copy') {
      return pedirPermiso(app, 'portapapeles', MOTIVOS_PERMISO.portapapeles).then(function (ok) {
        if (!ok) throw new Error('permiso de portapapeles denegado');
        return copiarPortapapeles(String(args[0] || '')).then(function () { return true; });
      });
    }
    if (fn === 'vibrate') {
      return pedirPermiso(app, 'vibrar', MOTIVOS_PERMISO.vibrar).then(function (ok) {
        if (!ok) throw new Error('permiso para vibrar denegado');
        try { if (navigator.vibrate) navigator.vibrate(Number(args[0]) || 120); } catch (e) {}
        return true;
      });
    }
    if (fn === 'camera') {
      return pedirPermiso(app, 'camara', MOTIVOS_PERMISO.camara).then(function (ok) {
        if (!ok) throw new Error('permiso de cámara denegado');
        return elegirArchivo({ aceptar: 'image/*', camara: true });
      });
    }
    if (fn === 'pickFile') {
      return pedirPermiso(app, 'archivos', MOTIVOS_PERMISO.archivos).then(function (ok) {
        if (!ok) throw new Error('permiso de archivos denegado');
        return elegirArchivo(args[0] || {});
      });
    }
    if (fn.indexOf('fs.') === 0) {
      return pedirPermiso(app, 'archivos', MOTIVOS_PERMISO.archivos).then(function (ok) {
        if (!ok) throw new Error('permiso de archivos denegado');
        if (fn === 'fs.list') {
          var dir = '/public/proyectos/' + app.carpeta + '/';
          return shell('ls -1p ' + shq(dir) + ' 2>/dev/null', true).then(function (r) {
            return String(r.salida || '').split('\n').map(function (l) { return l.trim(); }).filter(Boolean);
          });
        }
        var ruta = rutaDeApp(app, args[0]);
        if (fn === 'fs.read') return leerTexto(ruta);
        if (fn === 'fs.write') {
          var carpeta = ruta.replace(/\/[^\/]+$/, '');
          return conSistema('mkdirs', carpeta).catch(function () {}).then(function () {
            return escribir(ruta, String(args[1] == null ? '' : args[1])).then(function () { return true; });
          });
        }
        throw new Error('operación de archivos no válida');
      });
    }
    throw new Error('función no disponible: ' + fn);
  }

  function atenderApp(ev) {
    var d = ev && ev.data;
    if (!d || d.__ank !== 'call' || !st.appActual) return;
    var iframe = q('#ank-app-run iframe');
    if (!iframe || ev.source !== iframe.contentWindow) return;
    var app = st.appActual;
    var id = d.id;
    function responder(ok, valor) {
      try {
        iframe.contentWindow.postMessage({
          __ank: 'res',
          id: id,
          ok: ok,
          valor: ok ? valor : null,
          error: ok ? '' : String(valor && valor.message ? valor.message : valor)
        }, '*');
      } catch (e) {}
    }
    var tarea;
    try {
      tarea = ejecutarLlamada(app, String(d.fn || ''), Array.isArray(d.args) ? d.args : []);
    } catch (e) {
      responder(false, e);
      return;
    }
    Promise.resolve(tarea).then(function (v) { responder(true, v); }, function (e) { responder(false, e); });
  }

  /* ------------------------------------------------------------------ *
   * ayuda de mini apps
   * ------------------------------------------------------------------ */

  function contenidoAyuda() {
    function bloque(id, titulo, cuerpo) {
      return '<details class="ank-help-sec">' +
        '<summary>' + esc(titulo) + '</summary>' +
        '<div class="ank-help-body">' + cuerpo + '</div>' +
      '</details>';
    }
    return [
      '<p class="ank-help-lead">Una <b>app</b> vive dentro de Código ANK: se guarda en una carpeta del proyecto ' +
        'y se ejecuta aislada, con acceso solo a sus propios archivos. Hay dos tamaños: <b>mini app</b> ' +
        '(una pantalla, para algo rápido) y <b>app completa</b> (varias pantallas, datos guardados y lista ' +
        'para exportarse e instalarse en el teléfono).</p>',

      bloque('completa', '0. App completa o mini app',
        '<p><b>App completa</b> es la opción que viene marcada al crear: la IA arma navegación entre pantallas, ' +
        'alta/edición/borrado de datos, estados vacíos y diseño propio. Está pensada para usarse de verdad.</p>' +
        '<p><b>Mini app</b> es una sola pantalla: sirve para una calculadora, un contador o una nota rápida.</p>' +
        '<p>En los dos casos podés <b>Exportar</b> la app desde la pestaña Apps. Se genera una carpeta ' +
        '<code>export/</code> con la app entera en un HTML, el manifiesto, el ícono y un <code>app.zip</code>. ' +
        'Subida a GitHub Pages (o cualquier servidor con HTTPS) se instala en Chrome con ' +
        '«Agregar a pantalla principal» y abre con su propio ícono, sin ANK.</p>'),

      bloque('pedir', '1. Cómo pedírsela a la IA',
        '<p>Describí qué hace, para quién y qué datos guarda. Una idea por pedido.</p>' +
        '<p><b>Bien:</b> «una app para anotar gastos por día, ver el total y guardar los datos en el teléfono».</p>' +
        '<p><b>Mal:</b> «hacé una app» (sin decir qué hace ni qué necesita).</p>' +
        '<p>La IA crea los archivos y el panel te muestra el <b>diff</b>: recién cuando tocás <b>Aplicar</b> se escriben.</p>' +
        '<p>Mientras trabaja, esperá a que termine (o tocá <b>Detener</b>): no pidas otra app en el medio, ' +
        'porque se mezclarían las dos.</p>' +
        '<button type="button" class="ank-ai-btn" data-accion="copiar-ayuda" data-valor="pedido">Copiar pedido de ejemplo</button>'),

      bloque('estructura', '2. Estructura de la app',
        '<p>Todo va en <code>proyectos/&lt;carpeta&gt;/</code>:</p>' +
        '<pre class="ank-help-pre">ankapp.json\nindex.html\nstyle.css\napp.js</pre>' +
        '<p><code>index.html</code> es el inicio. Si existen, <code>style.css</code> y <code>app.js</code> se cargan solos. ' +
        'También podés poner todo dentro del HTML.</p>' +
        '<button type="button" class="ank-ai-btn" data-accion="copiar-ayuda" data-valor="manifiesto">Copiar ankapp.json</button>'),

      bloque('permisos', '3. Permisos y privacidad',
        '<p>La app declara en <code>ankapp.json</code> qué necesita. La primera vez, ANK te pregunta si lo permitís y lo recuerda.</p>' +
        '<ul class="ank-help-list">' +
          '<li><b>almacenamiento</b>: datos propios de la app (siempre aislados).</li>' +
          '<li><b>notificaciones</b>: avisos dentro de ANK y del sistema si el teléfono lo permite.</li>' +
          '<li><b>camara</b>: abrir la cámara y devolver una foto.</li>' +
          '<li><b>archivos</b>: leer y guardar dentro de la carpeta de la app, y elegir archivos.</li>' +
          '<li><b>compartir</b>: enviar texto al menú de compartir de Android.</li>' +
          '<li><b>portapapeles</b> y <b>vibrar</b>: lo que dicen.</li>' +
        '</ul>' +
        '<p>Una app <b>no</b> puede leer otros proyectos, ni tus chats, ni la memoria de ANK.</p>'),

      bloque('api', '4. La API ANK',
        '<p>Dentro de la app usá <code>ANK.*</code>. No uses <code>localStorage</code> directo: en el entorno aislado no existe.</p>' +
        '<pre class="ank-help-pre">' + esc(AYUDA_SNIPPETS.api) + '</pre>' +
        '<button type="button" class="ank-ai-btn" data-accion="copiar-ayuda" data-valor="api">Copiar la API</button>'),

      bloque('probar', '5. Probar, exportar y editar',
        '<p>En <b>Apps</b> tocá <b>Abrir</b> para ejecutarla en pantalla completa. <b>Editar</b> abre el chat de esa carpeta ' +
        'con el pedido listo para cambiar lo que quieras.</p>' +
        '<p><b>Exportar</b> deja en <code>proyectos/&lt;carpeta&gt;/export/</code> la app como PWA instalable: ' +
        '<code>index.html</code>, <code>manifest.webmanifest</code>, <code>sw.js</code>, <code>icon.svg</code>, ' +
        '<code>LEEME.md</code> y <code>app.zip</code>.</p>' +
        '<p>Toda carpeta con un <code>ankapp.json</code> válido aparece sola en la lista. No hay que instalar nada aparte.</p>'),

      bloque('limites', '6. Límites que conviene saber',
        '<ul class="ank-help-list">' +
          '<li>No corre en segundo plano ni con la app cerrada (salvo una notificación ya programada).</li>' +
          '<li>Dentro de ANK no se instala como app aparte; para eso usá <b>Exportar</b> y publicala con HTTPS.</li>' +
          '<li>Las imágenes deben ser emoji, dataURL o archivos de su propia carpeta.</li>' +
          '<li>Sin internet, la app funciona solo con lo que tenga guardado.</li>' +
          '<li>Si borrás la carpeta, se borra la app y sus datos.</li>' +
        '</ul>'),

      bloque('errores', '7. Si algo falla',
        '<ul class="ank-help-list">' +
          '<li>¿Existe <code>ankapp.json</code> y tiene <code>nombre</code> e <code>inicio</code>?</li>' +
          '<li>¿El HTML tiene errores? Abrí <b>Registro</b> y luego <b>Diagnóstico</b>.</li>' +
          '<li>¿Pidió un permiso que no declaró? Agregalo en <code>ankapp.json</code> y volvé a abrir.</li>' +
          '<li>Los cambios se ven al cerrar y volver a abrir la app.</li>' +
        '</ul>')
    ].join('');
  }

  function abrirAyudaApps() {
    var el = q('#ank-app-help');
    if (!el) {
      el = document.createElement('div');
      el.id = 'ank-app-help';
      document.body.appendChild(el);
      el.addEventListener('click', manejarClic);
    }
    el.innerHTML =
      '<div class="ank-help-box">' +
        '<div class="ank-help-head">' +
          '<span>Ayuda para crear apps</span>' +
          '<button type="button" class="ank-ai-act ghost" data-accion="cerrar-ayuda-apps">Cerrar</button>' +
        '</div>' +
        '<div class="ank-help-scroll">' + contenidoAyuda() + '</div>' +
      '</div>';
    el.classList.add('open');
  }

  function cerrarAyudaApps() {
    var el = q('#ank-app-help');
    if (el) el.classList.remove('open');
  }

  function copiarAyuda(cual) {
    var t = AYUDA_SNIPPETS[cual] || '';
    if (!t) return;
    copiarPortapapeles(t)
      .then(function () { aviso('Copiado. Pegalo en el chat o en un archivo.'); })
      .catch(function () { aviso('No se pudo copiar.'); });
  }

  /* ------------------------------------------------------------------ *
   * crear app desde el panel
   * ------------------------------------------------------------------ */

  function abrirNuevaApp() {
    var el = q('#ank-app-new');
    if (!el) {
      el = document.createElement('div');
      el.id = 'ank-app-new';
      document.body.appendChild(el);
      el.addEventListener('click', manejarClic);
    }
    var permisos = ['almacenamiento', 'archivos', 'camara', 'notificaciones', 'compartir', 'portapapeles', 'vibrar'];
    el.innerHTML =
      '<div class="ank-app-new-box">' +
        '<div class="ank-app-new-head">Crear una app</div>' +
        '<label class="ank-app-new-lbl">Nombre</label>' +
        '<input class="ank-app-new-nombre" type="text" placeholder="Gastos" autocomplete="off" />' +
        '<label class="ank-app-new-lbl">¿Qué hace?</label>' +
        '<textarea class="ank-app-new-idea" rows="4" placeholder="Anotar gastos por día, ver el total del mes y guardar todo en el teléfono"></textarea>' +
        '<label class="ank-app-new-type">' +
          '<input type="checkbox" id="ank-app-new-completa" checked /> ' +
          '<span>App completa<em>Varias pantallas, datos guardados y lista para instalarse en el teléfono.</em></span>' +
        '</label>' +
        '<label class="ank-app-new-lbl">Permisos</label>' +
        '<div class="ank-app-new-perms">' + permisos.map(function (p) {
          return '<label><input type="checkbox" data-perm="' + p + '"' +
            (p === 'almacenamiento' ? ' checked' : '') + ' /> ' + esc(p) + '</label>';
        }).join('') + '</div>' +
        '<div class="ank-app-new-hint">Se creará una carpeta nueva y el pedido quedará escrito en el chat. ' +
          'Revisalo y tocá enviar.</div>' +
        '<div class="ank-app-new-acc">' +
          '<button type="button" class="ank-ai-act ghost" data-accion="cerrar-nueva-app">Cancelar</button>' +
          '<button type="button" class="ank-ai-act" data-accion="preparar-app">Preparar pedido</button>' +
        '</div>' +
      '</div>';
    el.classList.add('open');
  }

  function cerrarNuevaApp() {
    var el = q('#ank-app-new');
    if (el) el.classList.remove('open');
  }

  function prepararPedidoApp() {
    if (st.corriendo) {
      aviso('Todavía está trabajando. Esperá o tocá Detener.');
      return;
    }
    var nombre = String((q('.ank-app-new-nombre') || {}).value || '').trim();
    var idea = String((q('.ank-app-new-idea') || {}).value || '').trim();
    if (!nombre || !idea) {
      aviso('Completá el nombre y qué hace la app.');
      return;
    }
    var casilla = q('#ank-app-new-completa');
    var completa = !casilla || casilla.checked;
    var carpeta = slugApp(nombre);
    var marcados = document.querySelectorAll('#ank-app-new [data-perm]');
    var permisos = [];
    for (var i = 0; i < marcados.length; i++) {
      if (marcados[i].checked) permisos.push(marcados[i].getAttribute('data-perm'));
    }
    st.project = carpeta;
    guardar('ank.ai.project', carpeta);
    st.chatId = '';
    st.msgs = [];
    st.tab = 'chat';
    asegurarMemoria(carpeta);
    var pedido;
    if (completa) {
      pedido = 'Creá una app completa de Código ANK llamada "' + nombre + '".\n' +
        'Qué hace: ' + idea + '\n' +
        'Carpeta del proyecto: ' + carpeta + '\n' +
        'Permisos: ' + (permisos.length ? permisos.join(', ') : 'ninguno') + '\n\n' +
        'Quiero una app terminada, no una maqueta:\n' +
        '- Varias pantallas con navegación propia (por ejemplo inicio, lista, detalle y ajustes), ' +
        'con botón para volver y estado de la sección actual.\n' +
        '- Datos reales guardados con ANK.storage: crear, editar, borrar, buscar y totales. ' +
        'Que se conserven al cerrar y reabrir.\n' +
        '- Estados vacíos con un texto que explique qué hacer, validaciones y confirmaciones antes de borrar.\n' +
        '- Diseño propio y coherente, tema oscuro, botones grandes (44 px), buen contraste y nada de texto de relleno.\n' +
        '- Sin "TODO", sin "próximamente" y sin datos de ejemplo fijos: que funcione apenas se aplique.\n' +
        '- Archivos: ankapp.json (con "tipo":"completa"), index.html, style.css y app.js. ' +
        'Si necesitás más archivos, declaralos en "archivos".\n\n' +
        'Usá la API window.ANK (ANK.storage, ANK.notify, ANK.camera, ANK.pickFile, ANK.fs, ' +
        'ANK.share, ANK.copy, ANK.vibrate). No uses localStorage directo.\n' +
        'Devolvé cada archivo en un bloque ank:archivo con la ruta relativa.';
    } else {
      pedido = 'Creá una mini app de Código ANK llamada "' + nombre + '".\n' +
        'Qué hace: ' + idea + '\n' +
        'Carpeta del proyecto: ' + carpeta + '\n' +
        'Permisos: ' + (permisos.length ? permisos.join(', ') : 'ninguno') + '\n' +
        'Archivos: ankapp.json, index.html, style.css y app.js (podés usar todo inline).\n' +
        'Usá la API window.ANK (ANK.storage, ANK.notify, ANK.camera, ANK.pickFile, ANK.fs, ' +
        'ANK.share, ANK.copy, ANK.vibrate). No uses localStorage directo.\n' +
        'Devolvé cada archivo en un bloque ank:archivo con la ruta relativa.';
    }
    cerrarNuevaApp();
    pintar();
    pintarMensajes();
    var ta = q('.ank-ai-input');
    if (ta) {
      ta.value = pedido;
      ta.style.height = 'auto';
      ta.style.height = Math.min(128, ta.scrollHeight) + 'px';
      ta.focus();
    }
    aviso('Pedido listo. Revisalo y tocá enviar.');
  }

  function editarApp(id) {
    if (st.corriendo) {
      aviso('Todavía está trabajando. Esperá o tocá Detener.');
      return;
    }
    var app = buscarApp(id);
    if (!app) return;
    st.project = app.carpeta;
    guardar('ank.ai.project', st.project);
    var lista = chatsDe(st.project);
    st.chatId = lista.length ? lista[0].id : '';
    st.msgs = lista.length ? lista[0].msgs : [];
    st.tab = 'chat';
    pintar();
    pintarMensajes();
    var ta = q('.ank-ai-input');
    if (ta) {
      ta.value = 'Modificá la ' + (app.tipo === 'completa' ? 'app completa' : 'mini app') +
        ' "' + app.nombre + '" (carpeta ' + app.carpeta + '). ' +
        'Mantené ankapp.json, el tipo "' + app.tipo + '" y la API ANK. ' +
        'Devolvé los archivos cambiados en bloques ank:archivo.';
      ta.focus();
    }
  }

  function autoScroll() {
    var c = q('.ank-ai-msgs');
    if (!c) return;
    var cerca = c.scrollHeight - c.scrollTop - c.clientHeight < 90;
    if (cerca) c.scrollTop = c.scrollHeight;
  }

  var pendiente = '';

  function procesarSalida(tipo, datos) {
    var texto = String(datos == null ? '' : datos);
    st.crudo = (st.crudo || '') + texto + '\n';
    if (st.crudo.length > 400000) st.crudo = st.crudo.slice(-200000);
    if (tipo === 'stderr') {
      var l = limpiar(texto).trim();
      if (l) log('w', l);
      if (/error|not found|denied|failed|panic/i.test(l)) {
        /* Los avisos van al bloque de trabajo, no al hilo del chat. */
        if (cur && cur.work) {
          var cuerpo = cur.work.querySelector('.ank-ai-work-body');
          if (cuerpo) {
            cuerpo.appendChild(lineaTrabajo({ n: '!', d: recortar(l, 200), err: true }));
            cuerpo.scrollTop = cuerpo.scrollHeight;
          }
        } else {
          escribirBot('\n' + l + '\n');
        }
      }
      return;
    }
    if (tipo !== 'stdout') return;
    pendiente += limpiar(texto) + '\n';
    var partes = pendiente.split('\n');
    pendiente = partes.pop();
    for (var i = 0; i < partes.length; i++) clasificar(partes[i]);
  }

  function clasificar(linea) {
    var l = linea.replace(/\s+$/, '');
    if (!l) {
      escribirBot('\n');
      return;
    }
    /* La memoria y su bitácora se leen en segundo plano. */
    if (esContexto(l)) {
      notaTrabajo(l);
      return;
    }
    if (/^\s*(\$|>|┃|\||\[[a-z-]+\]|●|○|◆|◇|■|□|✓|✗|→|←|↑|↓)/.test(l)) {
      var nombre = l.replace(/^\s*[$>┃|]\s*/, '').trim();
      var partes = nombre.split(/\s+/);
      herramienta(partes[0], partes.slice(1).join(' ').slice(0, 120));
      return;
    }
    escribirBot(l + '\n');
  }

  function enviar(forzado) {
    if (st.corriendo) { aviso('Todavía está trabajando. Esperá o tocá Detener.'); return; }
    var ta = q('.ank-ai-input');
    var pedido = forzado && forzado.texto != null ? String(forzado.texto) : (ta ? String(ta.value || '') : '');
    var texto = pedido.trim();
    if (!texto) return;
    if (!listo() || !window.ANKAIEngine) {
      aviso('Configura una API compatible desde la pestaña Entorno.');
      st.tab = 'entorno'; pintar(); return;
    }
    var proyecto = limpioProyecto(st.project) || 'ank';
    var chat = chatActual();
    if (!chat || chat.proyecto !== proyecto) chat = nuevoChat(proyecto);
    if (ta && !(forzado && forzado.texto != null)) { ta.value = ''; ta.style.height = ''; }
    if (!(forzado && forzado.sinBurbuja)) { nuevoMensaje('user', texto); burbuja(st.msgs[st.msgs.length - 1]); }
    abrirTurno(); tocarChat();
    st.ultimo = { texto: texto, proyecto: proyecto, chatId: chat.id, modelo: st.model, modo: st.modo };
    st.corriendo = true;
    st.abortController = typeof AbortController !== 'undefined' ? new AbortController() : null;
    pintar();

    asegurarMemoria(proyecto).then(function () {
      return leerTexto(rutaMemProyecto(proyecto));
    }).then(function (memory) {
      var systemPrompt = [
        'Eres el asistente de programación integrado en Código ANK.',
        'Responde en español, sé preciso y nunca inventes resultados de ejecución.',
        st.modo === 'plan'
          ? 'Modo Plan: analiza y propone; no afirmes que has aplicado cambios.'
          : 'Modo Construir: propone archivos completos; el usuario decide cuándo aplicarlos.',
        PROTOCOLO_ARCHIVO, PROTOCOLO_COMANDO, PROTOCOLO_APP, PROTOCOLO_CONTEXTO,
        memory ? '\n\n[Memoria del proyecto]\n' + memory : ''
      ].join('\n');
      var history = st.msgs.filter(function (m) {
        return m && m !== (cur && cur.msg) && String(m.texto || '').trim();
      }).slice(-40).map(function (m) {
        return { role: m.rol === 'user' ? 'user' : 'assistant', content: String(m.texto || '').slice(0, 30000) };
      });
      log('i', 'Enviando solicitud a la API: ' + st.model);
      return window.ANKAIEngine.chat({
        protocol: st.protocol, endpoint: st.endpoint, apiKey: st.apiKey, model: st.model,
      customAuthHeader: st.customAuthHeader,
      customAuthPrefix: st.customAuthPrefix,
      customHeaders: st.customHeaders,
      customBodyTemplate: st.customBodyTemplate,
      customResponsePath: st.customResponsePath,
        messages: [{ role: 'system', content: systemPrompt }].concat(history),
        temperature: 0.2, timeoutMs: 120000,
        signal: st.abortController ? st.abortController.signal : undefined,
        http: clienteHttpNativo(),
        onDelta: function (part) {
          try { escribirBot(part); } catch (e) { log('e', 'Render: ' + (e.message || e)); }
        }
      });
    }).then(function (result) {
      st.corriendo = false; st.abortController = null;
      cerrarTurno(false); tocarChat();
      var bot = st.msgs[st.msgs.length - 1];
      anotarMemoria(proyecto, texto, bot && bot.rol === 'bot' ? bot.texto : result.content);
      quizasResumir(proyecto, chat);
      log('i', 'Respuesta recibida de la API.'); pintar();
    }).catch(function (e) {
      st.corriendo = false; st.abortController = null;
      if (e && e.code === 'ANK_AI_ABORTED') {
        cerrarTurno(false); log('i', 'Solicitud cancelada.');
      } else {
        var message = e && e.message ? e.message : String(e);
        log('e', message); escribirBot('\n\nError de API: ' + message); cerrarTurno(true);
      }
      tocarChat(); pintar();
    });
  }

  function detener() {
    if (!st.corriendo) return;
    if (st.abortController) {
      try { st.abortController.abort(); } catch (e) {}
    } else {
      st.corriendo = false; cerrarTurno(false); tocarChat(); pintar();
    }
  }

  function reintentar(otro) {
    if (st.corriendo) return;
    var last = st.ultimo;
    if (!last || !last.texto) return aviso('No hay un pedido reciente para reintentar.');
    if (otro) { aviso('Cambia el modelo en Entorno y vuelve a intentarlo.'); st.tab = 'entorno'; pintar(); return; }
    st.project = last.proyecto || st.project;
    guardar('ank.ai.project', st.project);
    for (var i = 0; i < st.chats.length; i++) {
      if (st.chats[i].id === last.chatId) { st.chatId = last.chatId; st.msgs = st.chats[i].msgs; break; }
    }
    if (st.turnoError) {
      var retry = q('.ank-ai-retry', st.turnoError);
      if (retry && retry.parentNode) retry.parentNode.removeChild(retry);
      st.turnoError = null;
    }
    st.tab = 'chat'; pintar(); enviar({ texto: last.texto, sinBurbuja: true });
  }

  /* ------------------------------------------------------------------ *
   * exportar el chat a Markdown
   * ------------------------------------------------------------------ */

  function exportarChat() {
    var c = chatActual();
    if (!c || !c.msgs || !c.msgs.length) {
      aviso('Este chat todavía no tiene mensajes.');
      return;
    }
    var proy = limpioProyecto(st.project) || 'ank';
    var d = new Date();
    function dos(n) { return ('0' + n).slice(-2); }
    var marca = d.getFullYear() + dos(d.getMonth() + 1) + dos(d.getDate()) + '-' + dos(d.getHours()) + dos(d.getMinutes());
    var nombre = 'chat-' + marca + '.md';
    var lineas = [
      '# ' + (c.titulo || 'Chat de Código ANK'),
      '',
      '- Proyecto: ' + proy,
      '- Fecha: ' + hoy(),
      '- Modelo: ' + st.model,
      '',
      '---',
      ''
    ];
    c.msgs.forEach(function (m) {
      lineas.push('## ' + (m.rol === 'user' ? 'Vos' : 'Asistente') +
        (m.ts ? ' · ' + new Date(m.ts).toLocaleString() : ''));
      lineas.push('');
      lineas.push(String(m.texto || '').trim());
      lineas.push('');
    });
    var ruta = st.prefix + '/public/proyectos/' + proy + '/' + nombre;
    conSistema('mkdirs', st.prefix + '/public/proyectos/' + proy)
      .catch(function () {})
      .then(function () { return escribir(ruta, lineas.join('\n')); })
      .then(function () {
        aviso('Chat exportado a ' + proy + '/' + nombre);
        log('i', 'Chat exportado: ' + ruta);
      })
      .catch(function (e) {
        aviso('No se pudo exportar el chat.');
        log('e', 'Exportar: ' + (e && e.message ? e.message : e));
      });
  }

  /* ------------------------------------------------------------------ *
   * resumen automático de la memoria
   * ------------------------------------------------------------------ */

  /* Cada ocho pedidos, pide un resumen corto de la conversación y lo suma a
     la bitácora del proyecto. Es la única llamada automática al asistente. */
  function quizasResumir(proyecto, chat) {
    if (!chat || st.resumiendoAuto) return;
    var usuarios = (chat.msgs || []).filter(function (m) { return m.rol === 'user'; }).length;
    if (usuarios < 8 || usuarios % 8 !== 0) return;
    resumenAutomatico(proyecto, chat);
  }

  function resumenAutomatico(proyecto, chat) {
    if (!st.apiConfigured || !window.ANKAIEngine) { st.resumiendoAuto = false; return; }
    var proy = proyecto || limpioProyecto(st.project) || 'ank';
    var history = (chat.msgs || []).slice(-24).map(function (m) {
      return (m.rol === 'user' ? 'Usuario: ' : 'Asistente: ') + String(m.texto || '').replace(/\s+/g, ' ').slice(0, 400);
    }).join('\n');
    window.ANKAIEngine.chat({
      protocol: st.protocol, endpoint: st.endpoint, apiKey: st.apiKey, model: st.model,
      customAuthHeader: st.customAuthHeader,
      customAuthPrefix: st.customAuthPrefix,
      customHeaders: st.customHeaders,
      customBodyTemplate: st.customBodyTemplate,
      customResponsePath: st.customResponsePath,
      messages: [
        { role: 'system', content: 'Resume solo hechos técnicos confirmados, sin inventar.' },
        { role: 'user', content: 'Resume esta conversación en 1 a 3 viñetas, en español.\n\n' + history }
      ],
      maxTokens: 500, timeoutMs: 60000, http: clienteHttpNativo()
    }).then(function (result) {
      var points = String(result.content || '').split('\n')
        .map(function (line) { return line.replace(/^[-*]\s*/, '').replace(/\s+/g, ' ').trim(); })
        .filter(function (line) { return line.length > 3; }).slice(0, 3);
      if (!points.length) throw new Error('resumen vacío');
      return leerTexto(rutaMemProyecto(proy)).then(function (mem) {
        if (!mem.trim()) mem = plantillaProyecto(proy);
        if (mem.indexOf('## Bitácora') === -1) mem += '\n## Bitácora\n';
        var parts = mem.split('## Bitácora');
        var lines = (parts[1] || '').split('\n');
        points.forEach(function (line) { lines.push('- ' + hoy() + ' · resumen · ' + line.slice(0, 200)); });
        parts[1] = '\n' + lines.filter(function (line) { return line.trim().indexOf('- ') === 0; }).slice(-MEM_MAX).join('\n') + '\n';
        return escribir(rutaMemProyecto(proy), parts.join('## Bitácora'));
      });
    }).then(function () { log('i', 'Memoria resumida con API (' + proy + ').'); })
      .catch(function (e) { log('w', 'Resumen automático: ' + (e && e.message ? e.message : e)); })
      .then(function () { st.resumiendoAuto = false; });
  }

  /* ------------------------------------------------------------------ *
   * render
   * ------------------------------------------------------------------ */

  function pintarCamposPersonalizados() {
    var box = q('.ank-ai-custom');
    if (box) box.style.display = st.protocol === 'custom-json' ? 'block' : 'none';
    var values = [
      ['#ank-ai-custom-auth-header', st.customAuthHeader],
      ['#ank-ai-custom-auth-prefix', st.customAuthPrefix],
      ['#ank-ai-custom-headers', st.customHeaders],
      ['#ank-ai-custom-body', st.customBodyTemplate],
      ['#ank-ai-custom-response', st.customResponsePath]
    ];
    values.forEach(function (item) {
      var el = q(item[0]);
      if (el && el.value !== item[1]) el.value = item[1] == null ? '' : item[1];
    });
  }

  function pintarEstado() {
    var status = q('.ank-ai-status');
    if (!status) return;
    var detail = st.model || 'sin modelo';
    var label = st.corriendo ? 'conectando · ' + detail : st.apiConfigured ? 'API lista · ' + detail : 'configura tu API';
    status.innerHTML = '<span class="ank-ai-dot ' + (st.corriendo ? 'busy' : st.apiConfigured ? 'ok' : '') + '"></span><span>' + esc(label) + '</span>';
  }

  function pintarBotonEnviar() {
    var b = q('.ank-ai-send');
    if (!b) return;
    if (st.corriendo) {
      b.innerHTML = '&#9632;';
      b.classList.add('stop');
      b.disabled = false;
      b.setAttribute('data-accion', 'detener');
    } else {
      b.innerHTML = '&#8593;';
      b.classList.remove('stop');
      b.disabled = false;
      b.setAttribute('data-accion', 'enviar');
    }
  }

  function pintarModelos() {
    var model = q('#ank-ai-modelo');
    if (model && model.value !== st.model) model.value = st.model;
    var endpoint = q('#ank-ai-endpoint');
    if (endpoint && endpoint.value !== st.endpoint) endpoint.value = st.endpoint;
    var protocol = q('#ank-ai-protocolo');
    if (protocol && protocol.value !== st.protocol) protocol.value = st.protocol;
    pintarCamposPersonalizados();
    var label = q('#ank-ai-chat-modelo');
    if (label) label.textContent = st.model || 'Sin modelo';
    var mode = q('.ank-ai-modo');
    if (mode) {
      var plan = st.modo === 'plan';
      mode.textContent = plan ? 'Plan' : 'Construir';
      mode.classList.toggle('plan', plan);
      mode.setAttribute('title', plan ? 'Analiza y propone' : 'Propone archivos para revisar');
    }
  }

  function pintarPasos() {
    var cont = q('.ank-ai-steps');
    if (!cont) return;
    var steps = [
      { n: '01', t: 'Conexión API',
        d: st.apiConfigured ? 'API conectada. Modelo: <b>' + esc(st.model) + '</b>.' : 'Configura endpoint, clave y modelo. No se instala ningún agente externo.',
        e: st.apiConfigured ? 'listo' : 'falta', a: null },
      { n: '02', t: 'Terminal (opcional)',
        d: st.sandbox === 'listo' ? 'Alpine instalado. La terminal sigue disponible para comandos.' : 'El chat API funciona sin Linux. Instálalo solo para usar la terminal.',
        e: st.sandbox, a: st.sandbox === 'listo' ? null : { txt: st.sandbox === 'instalando' ? 'Instalando' : 'Preparar terminal', fn: 'instalar-entorno', dis: st.sandbox === 'instalando' } },
      { n: '03', t: 'Proyecto',
        d: 'Carpeta de trabajo: <b>/public/proyectos/' + esc(limpioProyecto(st.project) || 'ank') + '</b>', e: 'listo', a: null }
    ];
    cont.innerHTML = steps.map(function (p) {
      var cls = p.e === 'listo' ? 'done' : p.e === 'instalando' ? 'run' : p.e === 'error' ? 'fail' : '';
      var btn = p.a ? '<button class="ank-ai-btn primary" data-accion="' + p.a.fn + '"' + (p.a.dis ? ' disabled' : '') + '>' + esc(p.a.txt) + '</button>' : '';
      return '<div class="ank-ai-step ' + cls + '"><div class="ank-ai-n">' + p.n + '</div>' +
        '<div><div class="ank-ai-sname">' + p.t + '</div><div class="ank-ai-sdesc">' + p.d + '</div></div>' +
        '<div class="ank-ai-sact">' + btn + '</div></div>';
    }).join('');
  }

  function pintarLog() {
    var pre = q('.ank-ai-log');
    if (!pre) return;
    pre.innerHTML = st.log.slice(-250).map(function (l) {
      return '<span class="t">' + esc(l.t) + '</span> <span class="' + (l.n === 'e' ? 'e' : l.n === 'w' ? 'w' : '') + '">' + esc(l.m) + '</span>';
    }).join('\n');
    pre.scrollTop = pre.scrollHeight;
  }

  function fechaCorta(ts) {
    if (!ts) return '';
    var d = new Date(ts);
    var hoyD = new Date();
    var mismoDia = d.toDateString() === hoyD.toDateString();
    function dos(n) { return ('0' + n).slice(-2); }
    return mismoDia
      ? dos(d.getHours()) + ':' + dos(d.getMinutes())
      : dos(d.getDate()) + '/' + dos(d.getMonth() + 1);
  }

  function pintarChats() {
    var cont = q('.ank-ai-chatlist');
    if (!cont) return;
    var proyecto = limpioProyecto(st.project) || 'ank';
    var todos = chatsDe(proyecto);
    var filtro = String(st.busqueda || '').trim().toLowerCase();
    var lista = todos.filter(function (c) {
      if (!filtro) return true;
      var txt = (c.titulo || '') + '\n' + (c.msgs || []).map(function (m) {
        return String(m.texto || '');
      }).join('\n');
      return txt.toLowerCase().indexOf(filtro) !== -1;
    });
    if (!todos.length) {
      cont.innerHTML = '<div class="ank-ai-empty">Todavía no hay chats en <b>' + esc(proyecto) +
        '</b>. Lo que hables queda guardado acá y en la memoria del proyecto.</div>';
      return;
    }
    if (!lista.length) {
      cont.innerHTML = '<div class="ank-ai-empty">Ningún chat coincide con «' + esc(st.busqueda) + '».</div>';
      return;
    }
    cont.innerHTML = lista.map(function (c) {
      var vista = '';
      if (filtro) {
        var hit = (c.msgs || []).filter(function (m) {
          return String(m.texto || '').toLowerCase().indexOf(filtro) !== -1;
        }).pop();
        if (hit) {
          var plano = String(hit.texto || '').replace(/\s+/g, ' ');
          var pos = plano.toLowerCase().indexOf(filtro);
          var ini = Math.max(0, pos - 30);
          vista = (ini ? '…' : '') + plano.slice(ini, ini + 100);
        }
      }
      if (!vista) {
        var ultimo = (c.msgs || []).filter(function (m) { return m.rol === 'user'; }).pop();
        vista = ultimo ? String(ultimo.texto).replace(/\s+/g, ' ').slice(0, 90) : 'Sin mensajes';
      }
      var activo = c.id === st.chatId ? ' active' : '';
      return '<div class="ank-ai-chat' + activo + '" data-accion="abrir-chat" data-valor="' + esc(c.id) + '">' +
        '<div class="ank-ai-chat-t">' + esc(c.titulo || 'Chat sin título') + '</div>' +
        '<div class="ank-ai-chat-p">' + esc(vista) + '</div>' +
        '<div class="ank-ai-chat-m"><span>' + esc(fechaCorta(c.actualizado)) + '</span>' +
        '<span>' + (c.msgs || []).length + ' mensajes</span>' +
        '<button class="ank-ai-chat-x" data-accion="borrar-chat" data-valor="' + esc(c.id) + '" aria-label="Borrar">×</button></div>' +
        '</div>';
    }).join('');
  }

  function pintarVersion() {
    var caja = q('.ank-ai-ver');
    if (!caja) return;
    var u = window.__ankUpd;
    if (!u) {
      caja.textContent = 'incluida en la app';
      return;
    }
    var v = u.version ? u.version() : 'incluida';
    var notas = u.notas ? u.notas() : '';
    var pend = u.pendiente && u.pendiente(PANEL_VERSION);
    caja.textContent = 'Panel ' + v + ' · ' + PANEL_FECHA + (notas ? ' · ' + notas : '') +
      (pend ? ' · actualización descargada, reiniciá la app' : '');
    caja.classList.toggle('upd', !!pend);
  }

  /* Punto dorado en el botón del asistente mientras haya una actualización
     descargada que todavía necesita reabrir la app. */
  function marcarActualizacion() {
    var btn = q('#ank-dock .ank-ia');
    if (!btn) return;
    var u = window.__ankUpd;
    var hay = !!(u && u.pendiente && u.pendiente(PANEL_VERSION));
    btn.classList.toggle('upd', hay);
    if (hay) {
      var v = u.version ? u.version() : '';
      btn.setAttribute('title', 'Actualización ' + v + ' lista · reiniciá la app');
      btn.setAttribute('aria-label', 'Asistente de ANK, actualización ' + v + ' lista');
    } else {
      btn.setAttribute('title', 'Asistente de ANK');
      btn.setAttribute('aria-label', 'Asistente de ANK');
    }
  }

  /* ------------------------------------------------------------------ *
   * actualizaciones de la app
   * ------------------------------------------------------------------ */

  var UPD_OMITIDA = 'ank.upd.omitida';

  function actualizador() {
    var u = window.__ankUpd;
    if (!u || !u.activo || !u.activo()) return null;
    return u;
  }

  function leerOmitida() {
    try { return localStorage.getItem(UPD_OMITIDA) || ''; } catch (e) { return ''; }
  }

  function omitirVersion(v) {
    try { localStorage.setItem(UPD_OMITIDA, String(v || '')); } catch (e) {}
  }

  function cerrarDialogo() {
    var el = q('#ank-upd');
    if (el) el.classList.remove('open');
  }

  /* Pide confirmación y aplica la actualización. */
  function dialogoActualizacion(vista) {
    var u = actualizador();
    if (!u) return;
    var el = q('#ank-upd');
    if (!el) {
      el = document.createElement('div');
      el.id = 'ank-upd';
      (document.body || document.documentElement).appendChild(el);
    }
    var notas = String(vista.notas || '').trim();
    el.innerHTML =
      '<div class="ank-upd-box">' +
        '<div class="ank-upd-head">Nueva actualización disponible</div>' +
        '<div class="ank-upd-ver">ANK ' + esc(vista.version) + '</div>' +
        (notas ? '<div class="ank-upd-notas">' + esc(notas) + '</div>' :
          '<div class="ank-upd-notas">Mejoras de la interfaz y del asistente. No hace falta reinstalar la app.</div>') +
        '<div class="ank-upd-prog" hidden><div class="ank-upd-prog-bar"><i></i></div>' +
          '<div class="ank-upd-prog-txt">Preparando…</div></div>' +
        '<div class="ank-upd-hint"></div>' +
        '<div class="ank-upd-actions">' +
          '<button type="button" class="ank-upd-btn ghost" data-upd="despues">Después</button>' +
          '<button type="button" class="ank-upd-btn" data-upd="ahora">Actualizar</button>' +
        '</div>' +
      '</div>';
    el.classList.add('open');

    var hint = q('.ank-upd-hint', el);
    var cajaProg = q('.ank-upd-prog', el);
    var barra = q('.ank-upd-prog-bar i', el);
    var txtProg = q('.ank-upd-prog-txt', el);

    function texto(t) { if (hint) hint.textContent = t || ''; }

    function progreso(frac, txt) {
      if (cajaProg) cajaProg.hidden = false;
      if (barra) barra.style.width = Math.round(Math.max(0.02, frac || 0) * 100) + '%';
      if (txtProg) {
        txtProg.textContent = (txt || 'Descargando…') +
          (frac > 0 && frac < 1 ? ' ' + Math.round(frac * 100) + '%' : '');
      }
    }

    var bDespues = q('[data-upd="despues"]', el);
    var bAhora = q('[data-upd="ahora"]', el);

    pulsar(bDespues, function () {
      omitirVersion(vista.version);
      cerrarDialogo();
      marcarActualizacion();
    });

    pulsar(bAhora, function () {
      if (bAhora.disabled) return;
      bAhora.disabled = true;
      bDespues.disabled = true;
      texto('');
      progreso(0, 'Descargando…');
      var tarea = vista.info ? u.descargar(vista.info, progreso)
        : Promise.resolve({ ok: true, version: vista.version, notas: vista.notas });
      tarea.then(function (r) {
        if (!r || !r.ok) {
          bAhora.disabled = false;
          bDespues.disabled = false;
          if (cajaProg) cajaProg.hidden = true;
          texto('No se pudo actualizar: ' + (r && r.motivo ? r.motivo : 'error de red'));
          return;
        }
        progreso(1, 'Aplicando…');
        setTimeout(function () {
          u.aplicar({ version: r.version || vista.version, notas: r.notas != null ? r.notas : vista.notas });
        }, 500);
      });
    });
  }

  /* Cartel con el historial de lo que se acaba de instalar. Se queda hasta
     que el usuario lo cierra. */
  function mostrarNovedades(forzado) {
    var u = actualizador();
    if (!u || !u.novedades) return;
    if (!forzado && newsCerrada) return;
    var d = forzado || u.novedades();
    if (!d) return;
    var el = q('#ank-news');
    if (!forzado && el && el.classList.contains('open')) return;
    if (!el) {
      el = document.createElement('div');
      el.id = 'ank-news';
      (document.body || document.documentElement).appendChild(el);
    }
    var notas = String(d.notas || '').trim();
    var puntos = notas ? notas.split(/\n|;|\u00b7/).map(function (t) { return t.trim(); }).filter(Boolean) : [];
    el.innerHTML =
      '<div class="ank-news-box">' +
        '<div class="ank-news-head">Actualización aplicada</div>' +
        '<div class="ank-news-ver">ANK ' + esc(d.version) + '</div>' +
        (puntos.length
          ? '<ul class="ank-news-list">' + puntos.map(function (t) {
              return '<li>' + esc(t) + '</li>';
            }).join('') + '</ul>'
          : '<div class="ank-news-notas">Ya estás usando la última versión del panel.</div>') +
        '<button type="button" class="ank-upd-btn" data-news="cerrar">Cerrar</button>' +
      '</div>';
    el.classList.add('open');

    pulsar(q('[data-news="cerrar"]', el), function () {
      el.classList.remove('open');
      newsCerrada = true;
      if (!forzado) {
        try { u.olvidarNovedades(); } catch (e) {}
      }
    });
  }

  /* Muestra el historial de la versión instalada aunque ya se haya cerrado
     el cartel automático. */
  function verNovedades() {
    var u = actualizador();
    if (!u || !u.version) {
      aviso('No hay novedades para mostrar.');
      return;
    }
    mostrarNovedades({ version: u.version(), notas: u.notas ? u.notas() : '' });
  }

  /* Busca novedades. `forzar` muestra el diálogo aunque el usuario haya dicho
     «después» antes; `silencioso` evita avisos cuando ya está al día. */
  function revisarActualizacion(silencioso, forzar) {
    var u = actualizador();
    if (!u) {
      if (!silencioso) aviso('Las actualizaciones todavía no están configuradas.');
      return Promise.resolve();
    }
    st.ultimaRevision = Date.now();
    if (u.pendiente && u.pendiente(PANEL_VERSION)) {
      dialogoActualizacion({ version: u.version(), notas: u.notas(), info: null });
      return Promise.resolve();
    }
    if (!silencioso) aviso('Buscando actualización…');
    return u.consultar().then(function (c) {
      if (!c || !c.ok) {
        if (!silencioso) aviso('No se pudo comprobar: ' + (c && c.motivo ? c.motivo : 'sin conexión'));
        return;
      }
      if (!c.hay) {
        if (!silencioso) aviso('Ya tenés la última versión (' + c.version + ').');
        return;
      }
      if (!forzar && leerOmitida() === c.version) return;
      dialogoActualizacion(c);
    });
  }

  /* ------------------------------------------------------------------ *
   * entrada «Actualizar ANK» en el menú de tres puntos
   * ------------------------------------------------------------------ */

  var menuPedido = 0;

  function esMenu(n) {
    return !!(n && n.nodeType === 1 && n.classList && n.classList.contains('context-menu'));
  }

  /* Agrega el ítem a un menú abierto. Devuelve true si lo hizo. */
  function inyectarEn(m) {
    if (!m || m.querySelector('[data-ank-upd-item]')) return false;
    var u = actualizador();
    if (!u) return false;
    var pend = u.pendiente && u.pendiente(PANEL_VERSION);
    var li = document.createElement('li');
    li.setAttribute('data-ank-upd-item', '');
    li.innerHTML = '<span class="icon refresh"></span>' +
      '<span class="text">Actualizar ANK' +
      '<span class="value">' + esc(pend ? 'versión ' + u.version() + ' lista' : 'comprobar novedades') +
      '</span></span>';
    li.addEventListener('click', function (ev) {
      ev.preventDefault();
      ev.stopPropagation();
      var mask = q('.mask');
      if (mask) { try { mask.click(); } catch (e) {} }
      revisarActualizacion(false, true);
    }, true);
    m.appendChild(li);
    return true;
  }

  function inyectarMenu() {
    if (!menuPedido || Date.now() - menuPedido > 4000) return;
    var menus = document.querySelectorAll('.context-menu');
    for (var i = 0; i < menus.length; i++) inyectarEn(menus[i]);
    menuPedido = 0;
  }

  /* ------------------------------------------------------------------ *
   * comunidad y datos del proyecto dentro de la página «Acerca de»
   * ------------------------------------------------------------------ */

  /* La página Acerca de la arma la app y la vuelve a crear cada vez que se
     abre, así que el bloque se inyecta de nuevo cuando falta. */
  function inyectarAcerca() {
    var pagina = q('main.about-page');
    if (!pagina) return;
    if (pagina.querySelector('[data-ank-about]')) return;
    var nota = q('.about-note', pagina);
    var caja = document.createElement('div');
    caja.className = 'info-section ank-about-extra';
    caja.setAttribute('data-ank-about', '');
    caja.innerHTML =
      '<div class="ank-about-title">Comunidad</div>' +
      '<button class="ank-about-item" data-ank="canal">' +
        '<span class="ank-about-ico">▶</span>' +
        '<span class="ank-about-txt">Canal de Telegram' +
          '<span class="ank-about-sub">Novedades y versiones nuevas</span>' +
        '</span>' +
      '</button>' +
      '<button class="ank-about-item" data-ank="grupo">' +
        '<span class="ank-about-ico">💬</span>' +
        '<span class="ank-about-txt">Grupo de Telegram' +
          '<span class="ank-about-sub">Dudas, errores y sugerencias</span>' +
        '</span>' +
      '</button>' +
      '<div class="ank-about-title">Usuarios</div>' +
      '<div class="ank-ai-stats"></div>' +
      '<div class="ank-about-actions">' +
        '<button class="ank-about-mini" data-ank="stats-refrescar">Actualizar</button>' +
        '<button class="ank-about-mini" data-ank="stats-compartir">Compartir</button>' +
      '</div>' +
      '<label class="ank-about-off"><input type="checkbox" id="ank-ai-stats-off" /> No enviar estadística anónima</label>' +
      '<div class="ank-about-title">Versión</div>' +
      '<div class="ank-about-ver ank-ai-ver"></div>' +
      '<button class="ank-about-item" data-ank="actualizar">' +
        '<span class="ank-about-ico">↓</span>' +
        '<span class="ank-about-txt">Actualizar ANK' +
          '<span class="ank-about-sub">Buscar una versión nueva del panel</span>' +
        '</span>' +
      '</button>';
    if (nota && nota.parentNode) nota.parentNode.insertBefore(caja, nota);
    else pagina.appendChild(caja);

    caja.addEventListener('click', function (ev) {
      var t = ev.target.closest ? ev.target.closest('[data-ank]') : null;
      if (!t) return;
      ev.preventDefault();
      ev.stopPropagation();
      var que = t.getAttribute('data-ank');
      if (que === 'canal') abrirUrl('https://t.me/codigoank');
      else if (que === 'grupo') abrirUrl('https://t.me/Codigoank1');
      else if (que === 'stats-refrescar') leerEstadisticas(true);
      else if (que === 'stats-compartir') compartirEstadisticas();
      else if (que === 'actualizar') revisarActualizacion(false, true);
    }, true);

    var casilla = q('#ank-ai-stats-off', caja);
    if (casilla) {
      casilla.addEventListener('change', function () {
        alternarEstadistica(!casilla.checked);
      });
    }

    pintarVersion();
    pintarEstadisticas();
    leerEstadisticas(false);
  }

  function engancharMenu() {    /* Cualquier menú que la app agregue al documento: se completa al vuelo. */
    try {
      var obs = new MutationObserver(function (lista) {
        for (var i = 0; i < lista.length; i++) {
          var nuevos = lista[i].addedNodes;
          for (var j = 0; j < nuevos.length; j++) {
            var n = nuevos[j];
            if (esMenu(n)) inyectarEn(n);
            else if (n && n.querySelectorAll) {
              var dentro = n.querySelectorAll('.context-menu');
              for (var k = 0; k < dentro.length; k++) inyectarEn(dentro[k]);
            }
          }
        }
      });
      obs.observe(document.documentElement, { childList: true, subtree: true });
    } catch (e) {}

    document.addEventListener('click', function (e) {
      var t = e.target;
      if (!t || !t.closest) return;
      if (t.closest('[data-action="toggle-menu"], [action="toggle-menu"]')) {
        menuPedido = Date.now();
      }
    }, true);
  }

  function pintarPestanas() {
    var tabs = document.querySelectorAll('.ank-ai-tab');
    for (var i = 0; i < tabs.length; i++) {
      var on = tabs[i].getAttribute('data-tab') === st.tab;
      tabs[i].classList.toggle('active', on);
    }
    var vistas = document.querySelectorAll('.ank-ai-view');
    for (var j = 0; j < vistas.length; j++) {
      vistas[j].classList.toggle('active', vistas[j].getAttribute('data-view') === st.tab);
    }
  }

  function pintar() {
    if (!panel) return;
    pintarPestanas();
    pintarPasos();
    pintarEstado();
    pintarBotonEnviar();
    pintarModelos();
    pintarLog();
    pintarChats();
    pintarVersion();
    pintarApps();
    pintarEstadisticas();
    var enc = q('.ank-ai-hint-cred');
    if (enc) enc.style.display = st.credencial === 'listo' ? 'none' : 'block';
  }

  /* ------------------------------------------------------------------ *
   * usuarios: conteo anónimo y lectura del resumen del repositorio
   * ------------------------------------------------------------------ */

  /* No hay servidor propio. El conteo se hace con un contador público y
     gratuito: la app manda un aviso (una imagen de 1 píxel) la primera vez
     que se abre, una vez por día y una vez por mes. El repositorio guarda el
     resumen que arma GitHub Actions una vez al día. */
  var STATS_NS = 'codigo-ank';
  var STATS_BASE = 'https://abacus.jasoncameron.dev';
  var STATS_REPO = 'Alejandrokiriatos/codigo-ank';
  var STATS_URL = 'https://api.github.com/repos/' + STATS_REPO + '/contents/stats.json';
  var K_STATS = 'ank.stats.v1';

  function statsConfig() {
    var crudo = leer(K_STATS, '');
    var d = null;
    if (crudo) {
      try { d = JSON.parse(crudo); } catch (e) {}
    }
    if (!d || typeof d !== 'object') d = {};
    if (!d.id) {
      d.id = '';
    }
    return d;
  }

  function statsGuardar(d) {
    guardar(K_STATS, JSON.stringify(d || {}));
  }

  function fechaISO(d) {
    var x = d || new Date();
    function dos(n) { return ('0' + n).slice(-2); }
    return x.getFullYear() + '-' + dos(x.getMonth() + 1) + '-' + dos(x.getDate());
  }

  /* Un aviso que no necesita leer la respuesta ni CORS: el pedido llega y el
     contador suma. Se usa una imagen porque un fetch bloqueado por CORS
     puede no completarse en algunos WebView. */
  function avisarContador(llave) {
    try {
      var img = new Image();
      img.referrerPolicy = 'no-referrer';
      img.src = STATS_BASE + '/hit/' + STATS_NS + '/' + llave + '?t=' + Date.now();
    } catch (e) {}
  }

  /* Cuenta el equipo una vez, y el uso diario y mensual una sola vez por
     período. No manda identificadores personales: solo el nombre de la llave. */
  function enviarEstadistica() {
    var s = statsConfig();
    if (s.off) return Promise.resolve(false);
    var hoy = fechaISO();
    var mes = hoy.slice(0, 7);
    var llaves = [];
    if (!s.inst) { s.inst = hoy; llaves.push('instalaciones'); }
    if (s.dia !== hoy) { s.dia = hoy; llaves.push('activos-d-' + hoy.replace(/-/g, '')); }
    if (s.mes !== mes) { s.mes = mes; llaves.push('activos-m-' + mes.replace(/-/g, '')); }
    if (!llaves.length) return Promise.resolve(false);
    statsGuardar(s);
    llaves.forEach(function (k, i) {
      setTimeout(function () { avisarContador(k); }, 300 + i * 500);
    });
    return Promise.resolve(true);
  }

  /* Lee stats.json del repositorio. La API de GitHub responde con CORS, así
     que se puede consultar desde la app sin servidor propio. */
  function leerEstadisticas(forzar) {
    if (st.stats && !forzar) return Promise.resolve(st.stats);
    return fetch(STATS_URL + '?t=' + Date.now(), {
      headers: { Accept: 'application/vnd.github.raw', 'Cache-Control': 'no-cache' }
    })
      .then(function (r) {
        if (!r.ok) throw new Error('HTTP ' + r.status);
        return r.text();
      })
      .then(function (t) {
        var d = JSON.parse(t);
        st.stats = d && typeof d === 'object' ? d : null;
        st.statsError = '';
        pintarEstadisticas();
        return st.stats;
      })
      .catch(function (e) {
        st.statsError = e && e.message ? e.message : String(e);
        pintarEstadisticas();
        return null;
      });
  }

  function numero(n) {
    var v = Number(n);
    if (!isFinite(v)) return '—';
    return v.toLocaleString('es');
  }

  function pintarEstadisticas() {
    var caja = q('.ank-ai-stats');
    var casilla = q('#ank-ai-stats-off');
    if (casilla) casilla.checked = !!statsConfig().off;
    if (!caja) return;
    if (!st.stats) {
      caja.innerHTML = '<div class="ank-ai-stats-empty">' +
        (st.statsError
          ? 'No se pudo leer el resumen (' + esc(st.statsError) + ').'
          : 'Todavía no hay un resumen publicado. Se actualiza una vez al día.') +
        '</div>';
      return;
    }
    var d = st.stats;
    var hoy = d.activosHoy != null ? d.activosHoy : null;
    var mes = d.activosMes != null ? d.activosMes : null;
    var inst = d.instalaciones != null ? d.instalaciones : null;
    function dato(rotulo, valor) {
      return '<div class="ank-ai-stat">' +
        '<div class="ank-ai-stat-n">' + (valor == null ? '—' : numero(valor)) + '</div>' +
        '<div class="ank-ai-stat-l">' + esc(rotulo) + '</div>' +
      '</div>';
    }
    caja.innerHTML =
      dato('Instalaciones', inst) +
      dato('Activos hoy', hoy) +
      dato('Activos este mes', mes) +
      '<div class="ank-ai-stats-fecha">Actualizado: ' + esc(d.actualizado ? String(d.actualizado).replace('T', ' ').slice(0, 16) : 'sin fecha') + '</div>';
  }

  function compartirEstadisticas() {
    leerEstadisticas(true).then(function (d) {
      if (!d) return aviso('No se pudieron leer las estadísticas.');
      var lineas = [
        'Código ANK · usuarios',
        'Instalaciones: ' + numero(d.instalaciones),
        'Activos hoy: ' + numero(d.activosHoy),
        'Activos este mes: ' + numero(d.activosMes),
        'Actualizado: ' + (d.actualizado || 'sin fecha')
      ];
      var texto = lineas.join('\n');
      return compartirTexto(texto);
    }).catch(function () {
      aviso('No se pudieron leer las estadísticas.');
    });
  }

  function alternarEstadistica(activa) {
    var s = statsConfig();
    s.off = !activa;
    statsGuardar(s);
    if (activa) enviarEstadistica();
    aviso(activa ? 'Estadística anónima activada.' : 'No se enviará más estadística.');
  }

  /* ------------------------------------------------------------------ *
   * construcción del panel
   * ------------------------------------------------------------------ */

  function construir() {
    if (panel) return panel;
    panel = document.createElement('div');
    panel.id = 'ank-ai';
    panel.innerHTML =
      '<div class="ank-ai-sheet">' +
        '<div class="ank-ai-head">' +
          '<div class="ank-ai-title">ANK <b>IA</b></div>' +
          '<button class="ank-ai-tab active" data-tab="chat" data-accion="tab" data-valor="chat">Chat</button>' +
          '<button class="ank-ai-tab" data-tab="chats" data-accion="tab" data-valor="chats">Chats</button>' +
          '<button class="ank-ai-tab" data-tab="apps" data-accion="tab" data-valor="apps">Apps</button>' +
          '<button class="ank-ai-tab" data-tab="entorno" data-accion="tab" data-valor="entorno">Entorno</button>' +
          '<button class="ank-ai-tab" data-tab="log" data-accion="tab" data-valor="log">Registro</button>' +
          '<div class="ank-ai-spacer"></div>' +
          '<button class="ank-ai-x" data-accion="cerrar" aria-label="Cerrar">×</button>' +
        '</div>' +

        '<div class="ank-ai-body">' +
          '<section class="ank-ai-view active" data-view="chat">' +
            '<div class="ank-ai-msgs">' +
              '<div class="ank-ai-empty">' +
                '<b>Asistente de ANK</b>' +
                'Trabaja sobre los archivos del proyecto y ejecuta comandos en el entorno de la app. ' +
                'No modifica nada fuera de la carpeta de trabajo.' +
              '</div>' +
            '</div>' +
            '<div class="ank-ai-opts">' +
              '<button type="button" class="ank-ai-chip ank-ai-modo" data-accion="modo" title="Modo de trabajo">Construir</button>' +
              '<span class="ank-ai-chip" id="ank-ai-chat-modelo" aria-label="Modelo">Sin modelo</span>' +
            '</div>' +
            '<div class="ank-ai-compose">' +
              '<textarea class="ank-ai-input" rows="1" placeholder="Pedí algo: creá un archivo, explicá el código, refactorizá…"></textarea>' +
              '<button class="ank-ai-send" data-accion="enviar" aria-label="Enviar">&#8593;</button>' +
            '</div>' +
          '</section>' +

          '<section class="ank-ai-view" data-view="chats">' +
            '<div class="ank-ai-search">' +
              '<input class="ank-ai-searchin" type="search" placeholder="Buscar en los chats…" spellcheck="false" autocomplete="off" />' +
            '</div>' +
            '<div class="ank-ai-chatbar">' +
              '<button class="ank-ai-btn primary" data-accion="nuevo-chat">Nuevo chat</button>' +
              '<button class="ank-ai-btn" data-accion="memoria" title="Editar la memoria del proyecto">Memoria</button>' +
              '<button class="ank-ai-btn" data-accion="exportar" title="Exportar este chat a Markdown">Exportar</button>' +
            '</div>' +
            '<div class="ank-ai-chatlist"></div>' +
          '</section>' +

          '<section class="ank-ai-view" data-view="apps">' +
            '<div class="ank-ai-appbar">' +
              '<button class="ank-ai-btn primary" data-accion="nueva-app">Crear app</button>' +
              '<button class="ank-ai-btn" data-accion="refrescar-apps" title="Volver a buscar ankapp.json en los proyectos">Actualizar</button>' +
              '<button class="ank-ai-btn" data-accion="ayuda-apps" title="Cómo se crean y qué pueden hacer las mini apps">Ayuda</button>' +
            '</div>' +
            '<div class="ank-ai-applist"></div>' +
          '</section>' +

          '<section class="ank-ai-view" data-view="entorno">' +
            '<div class="ank-ai-setup">' +
              '<p class="ank-ai-lead">Conecta ANK directamente con tu proveedor. Admite OpenAI compatible, Anthropic Messages, Google Gemini y APIs JSON personalizadas. El terminal Linux es independiente y opcional.</p>' +
              '<div class="ank-ai-steps"></div>' +
              '<div class="ank-ai-field"><label>Formato de API</label><select id="ank-ai-protocolo">' +
                '<option value="openai-chat-completions">OpenAI compatible (OpenAI, OpenRouter, DeepSeek, Groq, Mistral y otros)</option>' +
                '<option value="anthropic-messages">Anthropic Messages</option>' +
                '<option value="gemini-generate-content">Google Gemini</option>' +
                '<option value="custom-json">API personalizada (JSON/REST)</option>' +
              '</select><div class="ank-ai-hint">Elige el protocolo oficial o configura una API JSON propia mediante su endpoint, encabezados, cuerpo de la petición y ruta de respuesta.</div></div>' +
              '<div class="ank-ai-field"><label>URL base o endpoint del proveedor</label><input id="ank-ai-endpoint" type="url" spellcheck="false" placeholder="https://api.openai.com/v1" /></div>' +
              '<div class="ank-ai-field"><label>ID exacto del modelo</label><input id="ank-ai-modelo" type="text" spellcheck="false" autocomplete="off" placeholder="identificador-exacto-del-modelo" /></div>' +
              '<div class="ank-ai-custom" style="display:none">' +
                '<div class="ank-ai-field"><label>Encabezado de autenticación</label><input id="ank-ai-custom-auth-header" type="text" spellcheck="false" placeholder="Authorization, api-key, x-api-key..." />' +
        '<div class="ank-ai-hint">Déjalo vacío junto con la clave API para servicios locales o públicos que no requieren autenticación.</div></div>' +
                '<div class="ank-ai-field"><label>Prefijo de autenticación</label><input id="ank-ai-custom-auth-prefix" type="text" spellcheck="false" placeholder="Bearer (vacío = clave directa)" /></div>' +
                '<div class="ank-ai-field"><label>Encabezados adicionales (JSON)</label><textarea id="ank-ai-custom-headers" spellcheck="false" rows="3" placeholder="{}"></textarea>' +
                  '<div class="ank-ai-hint">Puedes usar {{API_KEY}} y {{MODEL}} en valores de encabezado. No pongas secretos en la URL.</div></div>' +
                '<div class="ank-ai-field"><label>Plantilla del cuerpo JSON</label><textarea id="ank-ai-custom-body" spellcheck="false" rows="7"></textarea>' +
                  '<div class="ank-ai-hint">Variables disponibles: {{MODEL}}, {{MESSAGES}}, {{SYSTEM}}, {{API_KEY}}, {{TEMPERATURE}} y {{MAX_TOKENS}}. Escribe {{MESSAGES}} entre comillas para insertar el historial como valor JSON.</div></div>' +
                '<div class="ank-ai-field"><label>Ruta del texto de respuesta</label><input id="ank-ai-custom-response" type="text" spellcheck="false" placeholder="choices.0.message.content" />' +
                  '<div class="ank-ai-hint">Ruta JSON con puntos e índices de array. Ejemplo: data.response.text o output.0.content.</div></div>' +
              '</div>' +
              '<div class="ank-ai-field"><label>Clave API</label><input id="ank-ai-key" type="password" autocomplete="off" spellcheck="false" placeholder="Pega tu clave API" />' +
                '<div class="ank-ai-hint">Se guarda en el almacenamiento privado de la app. El cifrado con Android Keystore se incorpora en el bloque de seguridad.</div></div>' +
              '<div class="ank-ai-field ank-ai-appbar"><button class="ank-ai-btn primary" data-accion="guardar-clave">Guardar conexión</button>' +
                '<button class="ank-ai-btn" data-accion="probar">Probar conexión</button></div>' +
              '<div class="ank-ai-field"><label>Carpeta de trabajo</label><input id="ank-ai-proj" type="text" spellcheck="false" value="' + esc(limpioProyecto(st.project) || 'ank') + '" />' +
                '<div class="ank-ai-hint">Relativa a /public/proyectos. Se crea al primer mensaje.</div></div>' +
            '</div></section>' +
          '<section class="ank-ai-view" data-view="log">' +
            '<div class="ank-ai-logbar">' +
              '<button class="ank-ai-btn" data-accion="diag" title="Compartir versiones, entorno y errores recientes">Diagnóstico</button>' +
              '<button class="ank-ai-btn" data-accion="novedades" title="Ver qué cambió en la última actualización">Novedades</button>' +
              '<button class="ank-ai-btn" data-accion="copiar-log">Copiar</button>' +
              '<button class="ank-ai-btn" data-accion="limpiar-log">Limpiar</button>' +
              '<div class="ank-ai-spacer"></div>' +
              '<button class="ank-ai-btn" data-accion="revisar">Revisar estado</button>' +
            '</div>' +
            '<div class="ank-ai-logtools">' +
              '<div class="ank-ai-console"></div>' +
              '<div class="ank-ai-consolei">' +
                '<input class="ank-ai-input-console" placeholder="comando para el entorno (opcional)" spellcheck="false" />' +
                '<button class="ank-ai-btn" data-accion="consola">Ejecutar</button>' +
              '</div>' +
              '<button class="ank-ai-btn" data-accion="probar" style="width:100%;margin-top:6px">Probar asistente</button>' +
            '</div>' +
            '<pre class="ank-ai-log"></pre>' +
          '</section>' +
        '</div>' +

        '<div class="ank-ai-status"></div>' +
      '</div>' +

      '<div class="ank-ai-mem" id="ank-ai-mem">' +
        '<div class="ank-ai-mem-box">' +
          '<div class="ank-ai-mem-head">Memoria del proyecto<span class="ank-ai-mem-ruta"></span></div>' +
          '<textarea class="ank-ai-mem-text" spellcheck="false"></textarea>' +
          '<div class="ank-ai-mem-actions">' +
            '<button class="ank-ai-btn primary" data-accion="guardar-memoria">Guardar</button>' +
            '<button class="ank-ai-btn" data-accion="compactar-memoria">Resumir con IA</button>' +
            '<button class="ank-ai-btn" data-accion="cerrar-memoria">Cerrar</button>' +
          '</div>' +
        '</div>' +
      '</div>';

    document.body.appendChild(panel);

    panel.addEventListener('click', manejarClic);
    // Red de seguridad: ningún clic sobre un enlace del panel debe llegar al
    // listener global de Acode con un href vacío.
    panel.addEventListener('click', function (e) {
      var a = e.target.closest ? e.target.closest('a') : null;
      if (!a) return;
      if (!a.getAttribute('href')) {
        e.preventDefault();
        e.stopPropagation();
      }
    }, true);
    panel.addEventListener('change', manejarCambio);
    var ta = q('.ank-ai-input', panel);
    if (ta) {
      ta.addEventListener('input', function () {
        ta.style.height = 'auto';
        ta.style.height = Math.min(128, ta.scrollHeight) + 'px';
      });
      ta.addEventListener('keydown', function (e) {
        if (e.key === 'Enter' && !e.shiftKey && !e.ctrlKey) {
          e.preventDefault();
          enviar();
        }
      });
    }
    var ic = q('.ank-ai-input-console', panel);
    if (ic) {
      ic.addEventListener('keydown', function (e) {
        if (e.key === 'Enter') {
          e.preventDefault();
          consolaComando(ic.value);
          ic.value = '';
        }
      });
    }
    var sb = q('.ank-ai-searchin', panel);
    if (sb) {
      sb.value = st.busqueda || '';
      sb.addEventListener('input', function () {
        st.busqueda = sb.value;
        pintarChats();
      });
    }
    return panel;
  }

  function abrirChatUI(id) {
    for (var i = 0; i < st.chats.length; i++) {
      if (st.chats[i].id !== id) continue;
      var c = st.chats[i];
      st.chatId = c.id;
      st.msgs = c.msgs;
      st.project = c.proyecto || st.project;
      guardar('ank.ai.project', st.project);
      st.tab = 'chat';
      pintar();
      pintarMensajes();
      return;
    }
  }

  function borrarChatUI(id) {
    st.chats = st.chats.filter(function (c) { return c.id !== id; });
    if (st.chatId === id) {
      var lista = chatsDe(limpioProyecto(st.project) || 'ank');
      st.chatId = lista.length ? lista[0].id : '';
      st.msgs = lista.length ? lista[0].msgs : [];
      pintarMensajes();
    }
    guardarChats();
    pintar();
  }

  function cerrarMemoria() {
    var el = q('#ank-ai-mem');
    if (el) el.classList.remove('open');
  }

  function abrirMemoria() {
    var proy = limpioProyecto(st.project) || 'ank';
    var el = q('#ank-ai-mem');
    var ta = q('.ank-ai-mem-text');
    if (!el || !ta) return;
    el.classList.add('open');
    ta.value = 'Cargando…';
    var r = q('.ank-ai-mem-ruta', el);
    if (r) r.textContent = proy + '/AGENTS.md';
    var ruta = st.prefix + '/public/proyectos/' + proy + '/AGENTS.md';
    leerTexto(ruta)
      .then(function (txt) { ta.value = txt && txt.trim() ? txt : plantillaProyecto(proy); })
      .catch(function () { ta.value = plantillaProyecto(proy); });
  }

  function guardarMemoria() {
    var proy = limpioProyecto(st.project) || 'ank';
    var ta = q('.ank-ai-mem-text');
    if (!ta) return;
    var ruta = st.prefix + '/public/proyectos/' + proy + '/AGENTS.md';
    conSistema('mkdirs', st.prefix + '/public/proyectos/' + proy)
      .then(function () { return escribir(ruta, ta.value); })
      .then(function () { return actualizarIndice(proy); })
      .then(function () {
        aviso('Memoria guardada.');
        cerrarMemoria();
        log('i', 'Memoria del proyecto actualizada.');
      })
      .catch(function (e) {
        aviso('No se pudo guardar la memoria.');
        log('e', 'Memoria: ' + (e && e.message ? e.message : e));
      });
  }

  /* Pide al modelo que reescriba la memoria en pocas líneas. El resultado se
     muestra en el editor; el usuario decide si guardarlo. */
  function compactarMemoria() {
    if (st.probandoPrueba) return;
    if (!st.apiConfigured || !window.ANKAIEngine) return aviso('Conecta una API antes de resumir la memoria.');
    var project = limpioProyecto(st.project) || 'ank';
    var textarea = q('.ank-ai-mem-text');
    if (!textarea) return;
    st.probandoPrueba = true;
    textarea.value = 'Resumiendo con IA…';
    leerTexto(rutaMemProyecto(project)).then(function (memory) {
      var prompt = 'Reescribe este AGENTS.md en menos de 60 líneas. Conserva objetivo, estado, decisiones y bitácora reciente. No inventes datos. Devuelve solo Markdown.\n\n' + (memory || plantillaProyecto(project));
      return window.ANKAIEngine.chat({
        protocol: st.protocol, endpoint: st.endpoint, apiKey: st.apiKey, model: st.model,
      customAuthHeader: st.customAuthHeader,
      customAuthPrefix: st.customAuthPrefix,
      customHeaders: st.customHeaders,
      customBodyTemplate: st.customBodyTemplate,
      customResponsePath: st.customResponsePath,
        messages: [
          { role: 'system', content: 'Editas memorias técnicas. Conserva decisiones y hechos, no inventes.' },
          { role: 'user', content: prompt }
        ],
        maxTokens: 1800, timeoutMs: 90000, http: clienteHttpNativo()
      });
    }).then(function (result) {
      var txt = String(result.content || '').replace(/^\x60\x60\x60[a-z]*\s*/i, '').replace(/\x60\x60\x60\s*$/, '').trim();
      if (txt.length < 40 || txt.indexOf('#') === -1) throw new Error('respuesta no utilizable');
      textarea.value = txt;
      aviso('Revisa el resumen y guarda.');
    }).catch(function (e) {
      aviso('No se pudo resumir; se conserva la memoria actual.');
      log('w', 'Resumen de memoria: ' + (e && e.message ? e.message : e));
      leerTexto(rutaMemProyecto(project)).then(function (txt) { textarea.value = txt || plantillaProyecto(project); });
    }).then(function () { st.probandoPrueba = false; });
  }

  function manejarClic(e) {
    var t = e.target.closest ? e.target.closest('[data-accion]') : null;
    if (!t) return;
    // El panel vive en document.body, donde Acode tiene un listener global que
    // abre cualquier <a> con system.openInBrowser(href). Un enlace sin href
    // llega ahí como "" y el intent VIEW vacío tumba la app (ActivityNotFound).
    e.stopPropagation();
    var accion = t.getAttribute('data-accion');
    if (accion !== 'tab' && accion !== 'cerrar') e.preventDefault();
    switch (accion) {
      case 'cerrar': cerrarPanel(); break;
      case 'tab':
        st.tab = t.getAttribute('data-valor') || 'chat';
        pintar();
        if (st.tab === 'apps') cargarApps();
        if (st.tab === 'entorno') leerEstadisticas(false);
        break;
      case 'enviar':
        if (st.corriendo) detener(); else enviar();
        break;
      case 'modo':
        st.modo = st.modo === 'plan' ? 'build' : 'plan';
        guardar('ank.ai.modo', st.modo);
        pintar();
        break;
      case 'detener': detener(); break;
      case 'reintentar': reintentar(false); break;
      case 'otro-modelo': reintentar(true); break;
      case 'aplicar-archivo': aplicarArchivo(t.getAttribute('data-valor')); break;
      case 'descartar-archivo': descartarArchivo(t.getAttribute('data-valor')); break;
      case 'ejecutar-comando': ejecutarComandoPropuesto(t.getAttribute('data-valor')); break;
      case 'descartar-comando': descartarComando(t.getAttribute('data-valor')); break;
      case 'exportar': exportarChat(); break;
      case 'diag': compartirDiagnostico(); break;
      case 'novedades': verNovedades(); break;
      case 'instalar-entorno': instalarEntorno(); break;
      case 'guardar-clave':
        guardarCredencial();
        break;
      case 'revisar':
        chequearTodo();
        break;
      case 'probar':
        probarAsistente();
        break;
      case 'nuevo-chat':
        nuevoChat(limpioProyecto(st.project) || 'ank');
        st.tab = 'chat';
        pintar();
        pintarMensajes();
        break;
      case 'abrir-chat':
        abrirChatUI(t.getAttribute('data-valor'));
        break;
      case 'borrar-chat':
        borrarChatUI(t.getAttribute('data-valor'));
        break;
      case 'memoria':
        abrirMemoria();
        break;
      case 'guardar-memoria':
        guardarMemoria();
        break;
      case 'cerrar-memoria':
        cerrarMemoria();
        break;
      case 'compactar-memoria':
        compactarMemoria();
        break;
      case 'consola':
        consolaComando(q('.ank-ai-input-console') && q('.ank-ai-input-console').value);
        if (q('.ank-ai-input-console')) q('.ank-ai-input-console').value = '';
        break;
      case 'copiar-log':
        copiarPortapapeles(st.log.map(function (l) { return l.t + ' ' + l.m; }).join('\n'))
          .then(function () { aviso('Registro copiado.'); })
          .catch(function () { aviso('No se pudo copiar.'); });
        break;
      case 'limpiar-log':
        st.log = [];
        pintarLog();
        break;
      case 'abrir-carpeta':
        abrirCarpeta();
        break;
      case 'abrir-app': abrirApp(t.getAttribute('data-valor')); break;
      case 'editar-app': editarApp(t.getAttribute('data-valor')); break;
      case 'exportar-app': exportarApp(t.getAttribute('data-valor')); break;
      case 'stats-refrescar': leerEstadisticas(true); break;
      case 'stats-compartir': compartirEstadisticas(); break;
      case 'abrir-canal': abrirUrl('https://t.me/codigoank'); break;
      case 'abrir-grupo': abrirUrl('https://t.me/Codigoank1'); break;
      case 'cerrar-app': cerrarApp(); break;
      case 'ayuda-apps': abrirAyudaApps(); break;
      case 'cerrar-ayuda-apps': cerrarAyudaApps(); break;
      case 'copiar-ayuda': copiarAyuda(t.getAttribute('data-valor')); break;
      case 'nueva-app': abrirNuevaApp(); break;
      case 'cerrar-nueva-app': cerrarNuevaApp(); break;
      case 'preparar-app': prepararPedidoApp(); break;
      case 'refrescar-apps': cargarApps(); break;
      case 'permiso-si': case 'permiso-no':
        responderPermiso(t.getAttribute('data-valor'), accion === 'permiso-si');
        break;
    }
  }

  function manejarCambio(e) {
    if (e.target.id === 'ank-ai-stats-off') {
      alternarEstadistica(!e.target.checked);
      return;
    }
    if (e.target.id === 'ank-ai-modelo') {
      st.model = limpioModelo(e.target.value);
      guardar('ank.ai.model', st.model);
      var label = q('#ank-ai-chat-modelo');
      if (label) label.textContent = st.model || 'Sin modelo';
      return;
    }
    if (e.target.id === 'ank-ai-protocolo') {
      var siguiente;
      try { siguiente = window.ANKAIEngine.protocolName(e.target.value); }
      catch (error) { aviso(error.message || 'Protocolo no compatible.'); return; }
      var endpointActual = q('#ank-ai-endpoint');
      var anteriorDefault = endpointPredeterminado(st.protocol || API_PROTOCOL_DEFAULT);
      var nuevoDefault = endpointPredeterminado(siguiente);
      if (!st.endpoint || st.endpoint === anteriorDefault) st.endpoint = nuevoDefault;
      st.protocol = siguiente;
      if (endpointActual && (!endpointActual.value || endpointActual.value === anteriorDefault)) endpointActual.value = nuevoDefault;
      pintarCamposPersonalizados();
      return;
    }
    if (e.target.id === 'ank-ai-endpoint') { st.endpoint = String(e.target.value || '').trim(); return; }
    if (e.target.id === 'ank-ai-proj') {
      st.project = limpioProyecto(e.target.value) || 'ank';
      guardar('ank.ai.project', st.project);
      var chats = chatsDe(st.project);
      st.chatId = chats.length ? chats[0].id : '';
      st.msgs = chats.length ? chats[0].msgs : [];
      guardarChats(); asegurarMemoria(st.project); pintar(); pintarMensajes();
    }
  }

  /* Abre un enlace fuera de la app. Nunca lanza un intent con datos vacíos:
     eso provoca ActivityNotFoundException y cierra la app. Si no hay con qué
     abrirlo, copia el enlace para que el usuario lo pegue en el navegador. */
  function abrirUrl(url) {
    url = String(url == null ? '' : url).trim();
    if (!/^https?:\/\//i.test(url)) {
      log('e', 'abrirUrl: enlace descartado (' + url + ')');
      return;
    }
    function copiar() {
      copiarPortapapeles(url).then(function () {
        aviso('No se pudo abrir el navegador. Enlace copiado.');
      }, function () {
        aviso(url);
      });
    }
    function nativo() {
      try {
        if (window.system && typeof window.system.openInBrowser === 'function') {
          window.system.openInBrowser(url);
          return true;
        }
      } catch (e) {}
      return false;
    }
    try {
      if (window.CustomTabs && typeof window.CustomTabs.open === 'function') {
        window.CustomTabs.open(url, {}, function () {}, function () {
          if (!nativo()) copiar();
        });
        return;
      }
    } catch (e1) {}
    if (nativo()) return;
    try {
      var v = window.open(url, '_blank');
      if (v) return;
    } catch (e2) {}
    copiar();
  }

  function abrirCarpeta() {
    try {
      if (window.acode && typeof window.acode.exec === 'function') {
        window.acode.exec('open-folder', '/public/proyectos/' + (limpioProyecto(st.project) || 'ank'));
        return;
      }
    } catch (e) {}
    aviso('/public/proyectos/' + (limpioProyecto(st.project) || 'ank'));
  }

  function abrirPanel() {
    try {
      construir();
      panel.classList.add('open');
      st.tab = st.tab || 'chat';
      pintar();
      pintarMensajes();
      asegurarMemoria(st.project);
      chequearTodo(true);
      setTimeout(function () {
        var ta = q('.ank-ai-input');
        if (ta && listo()) ta.focus();
      }, 200);
    } catch (e) {
      log('e', 'No se pudo abrir el panel: ' + (e && e.message ? e.message : e));
      aviso('No se pudo abrir el asistente.');
    }
  }

  function cerrarPanel() {
    if (panel) panel.classList.remove('open');
  }

  /* ------------------------------------------------------------------ *
   * montaje
   * ------------------------------------------------------------------ */

  /* Botón «IA» en el dock flotante, junto al «+». Antes vivía en la cabecera
     de la app, que es fija, se redibuja y queda tapada por otros elementos de
     la esquina: los toques no llegaban. */
  function botonIA() {
    if (!document.body) return;
    if (q('#ank-dock .ank-ia')) return;
    var btn = document.createElement('button');
    btn.type = 'button';
    btn.className = 'ank-dock-btn ank-ia';
    btn.textContent = 'IA';
    btn.setAttribute('aria-label', 'Asistente');
    btn.setAttribute('title', 'Asistente');
    pulsar(btn, abrirPanel);
    if (typeof window.__ankDockAdd === 'function') window.__ankDockAdd(btn, true);
    else {
      var d = q('#ank-dock');
      if (!d) {
        d = document.createElement('div');
        d.id = 'ank-dock';
        document.body.appendChild(d);
      }
      d.insertBefore(btn, d.firstChild || null);
    }
  }

  function ciclo() {
    if (!document.body) return;
    botonIA();
    marcarActualizacion();
    inyectarMenu();
    inyectarAcerca();
    /* Si la app redibuja el cuerpo, el cartel de novedades se vuelve a montar
       mientras siga pendiente y el usuario no lo haya cerrado. */
    mostrarNovedades();
  }

  function iniciar() {
    cargarChats();
    engancharErrores();
    document.addEventListener('ank-upd', marcarActualizacion);
    window.addEventListener('message', atenderApp);
    /* Descubre las mini apps existentes sin esperar a que se abra la pestaña. */
    setTimeout(function () { cargarApps(); }, 2500);
    /* Cuenta el uso (una instalación, un día y un mes por equipo) y lee el
       resumen que publica el repositorio. */
    setTimeout(function () { enviarEstadistica(); }, 6000);
    setTimeout(function () { leerEstadisticas(false); }, 9000);
    engancharMenu();
    // La configuración API se restaura en chequearTodo(), después de deviceready.
    mountTimer = setInterval(ciclo, 700);
    ciclo();
    /* Si recién se aplicó una actualización, muestra qué cambió. */
    setTimeout(mostrarNovedades, 1200);
    /* Revisa novedades sola un rato después de arrancar, sin frenar la app. */
    setTimeout(function () { revisarActualizacion(true, false); }, 5000);
    /* Y sigue revisando mientras la app quede abierta. */
    setInterval(function () {
      if (document.hidden) return;
      revisarActualizacion(true, false);
    }, 30 * 60 * 1000);
    document.addEventListener('visibilitychange', function () {
      if (document.hidden) return;
      if (!st.ultimaRevision || Date.now() - st.ultimaRevision > 10 * 60 * 1000) {
        revisarActualizacion(true, false);
      }
    });
    if (window.cordova) {
      document.addEventListener('deviceready', function () {
        setTimeout(ciclo, 200);
        chequearTodo();
      }, false);
    }
    setTimeout(function () { chequearTodo(); }, 4000);
  }

  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', iniciar);
  else iniciar();
})();
