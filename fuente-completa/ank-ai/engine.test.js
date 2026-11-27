'use strict';

const test = require('node:test');
const assert = require('node:assert/strict');
const Engine = require('../ank-ai/engine');

function nativeSuccess(response, capture) {
  return {
    sendRequest(url, options, success) {
      if (capture) Object.assign(capture, { url, options });
      success({ status: 200, data: JSON.stringify(response) });
      return 77;
    },
    abort() {}
  };
}

test('normaliza endpoint OpenAI compatible sin duplicar la ruta', () => {
  assert.equal(Engine.endpointUrl('https://api.example.com/v1'), 'https://api.example.com/v1/chat/completions');
  assert.equal(Engine.endpointUrl('https://api.example.com/v1/'), 'https://api.example.com/v1/chat/completions');
  assert.equal(Engine.endpointUrl('https://api.example.com/v1/chat/completions'), 'https://api.example.com/v1/chat/completions');
});

test('normaliza endpoint Anthropic Messages', () => {
  assert.equal(
    Engine.endpointUrl('https://api.anthropic.com/v1', 'anthropic-messages'),
    'https://api.anthropic.com/v1/messages'
  );
  assert.equal(
    Engine.endpointUrl('https://api.anthropic.com/v1/messages', 'anthropic'),
    'https://api.anthropic.com/v1/messages'
  );
  assert.equal(
    Engine.endpointUrl('https://gateway.example.com', 'anthropic'),
    'https://gateway.example.com/v1/messages'
  );
});

test('construye endpoint Gemini con el modelo exacto', () => {
  assert.equal(
    Engine.endpointUrl('https://generativelanguage.googleapis.com/v1beta', 'gemini', 'gemini-2.5-flash'),
    'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent'
  );
  assert.equal(
    Engine.endpointUrl('https://generativelanguage.googleapis.com/v1beta/models', 'gemini-generate-content', 'gemini-2.5-flash'),
    'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent'
  );
});

test('rechaza protocolos, URLs inválidas y credenciales dentro del endpoint', () => {
  assert.throws(() => Engine.endpointUrl('ftp://api.example.com/v1'), /HTTPS o HTTP/);
  assert.throws(() => Engine.endpointUrl('https://user:pass@api.example.com/v1'), /credenciales/);
  assert.throws(() => Engine.endpointUrl('not a URL'), /no es válida/);
  assert.throws(() => Engine.endpointUrl('https://api.example.com', 'proveedor-desconocido'), /no compatible/);
});

test('exige clave y modelo antes de hacer red', async () => {
  await assert.rejects(Engine.chat({ endpoint: 'https://api.example.com/v1', model: 'm' }), /Falta la clave/);
  await assert.rejects(Engine.chat({ endpoint: 'https://api.example.com/v1', apiKey: 'secret' }), /nombre del modelo/);
});

test('envía petición OpenAI compatible y consume eventos SSE', async (t) => {
  const originalFetch = global.fetch;
  t.after(() => { global.fetch = originalFetch; });
  let request;
  const encoder = new TextEncoder();
  const chunks = [
    'data: {"choices":[{"delta":{"content":"Hola "}}]}\n\n',
    'data: {"choices":[{"delta":{"content":"ANK"}}]}\n\n',
    'data: {"choices":[{"delta":{},"finish_reason":"stop"}]}\n\n',
    'data: [DONE]\n\n'
  ];
  global.fetch = async (url, options) => {
    request = { url, options };
    let index = 0;
    return {
      ok: true,
      status: 200,
      body: {
        getReader() {
          return {
            async read() {
              if (index >= chunks.length) return { done: true };
              return { done: false, value: encoder.encode(chunks[index++]) };
            },
            async cancel() {}
          };
        }
      }
    };
  };

  const deltas = [];
  const result = await Engine.chat({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'secret-key',
    model: 'sample-model',
    messages: [{ role: 'user', content: 'Hola' }],
    onDelta: (part) => deltas.push(part)
  });

  assert.equal(request.url, 'https://api.example.com/v1/chat/completions');
  assert.equal(request.options.method, 'POST');
  assert.equal(request.options.headers.Authorization, 'Bearer secret-key');
  assert.equal(JSON.parse(request.options.body).model, 'sample-model');
  assert.equal(JSON.parse(request.options.body).stream, true);
  assert.equal(result.content, 'Hola ANK');
  assert.deepEqual(deltas, ['Hola ', 'ANK']);
  assert.equal(result.finishReason, 'stop');
});

test('usa el transporte nativo para OpenAI compatible', async () => {
  const captured = {};
  const result = await Engine.chat({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'native-secret',
    model: 'native-model',
    messages: [{ role: 'user', content: 'Prueba' }],
    http: nativeSuccess({
      choices: [{ message: { content: 'Respuesta nativa ANK' }, finish_reason: 'stop' }],
      usage: { total_tokens: 12 }
    }, captured)
  });

  assert.equal(captured.url, 'https://api.example.com/v1/chat/completions');
  assert.equal(captured.options.method, 'post');
  assert.equal(captured.options.serializer, 'json');
  assert.equal(captured.options.responseType, 'text');
  assert.equal(captured.options.headers.Authorization, 'Bearer native-secret');
  assert.equal(captured.options.data.stream, false);
  assert.equal(result.content, 'Respuesta nativa ANK');
  assert.equal(result.usage.total_tokens, 12);
});

test('Anthropic envía x-api-key, versión, system y max_tokens', async () => {
  const captured = {};
  const result = await Engine.chat({
    protocol: 'anthropic-messages',
    endpoint: 'https://api.anthropic.com/v1',
    apiKey: 'anthropic-secret',
    model: 'claude-sonnet-example',
    maxTokens: 1200,
    messages: [
      { role: 'system', content: 'Eres ANK.' },
      { role: 'user', content: 'Hola' },
      { role: 'assistant', content: 'Hola, ¿en qué te ayudo?' },
      { role: 'user', content: 'Escribe una función.' }
    ],
    http: nativeSuccess({
      id: 'msg_1',
      content: [{ type: 'text', text: 'Respuesta Anthropic' }],
      stop_reason: 'end_turn',
      usage: { input_tokens: 10, output_tokens: 5 }
    }, captured)
  });

  assert.equal(captured.url, 'https://api.anthropic.com/v1/messages');
  assert.equal(captured.options.headers['x-api-key'], 'anthropic-secret');
  assert.equal(captured.options.headers['anthropic-version'], '2023-06-01');
  assert.equal(captured.options.data.model, 'claude-sonnet-example');
  assert.equal(captured.options.data.max_tokens, 1200);
  assert.equal(captured.options.data.system, 'Eres ANK.');
  assert.deepEqual(captured.options.data.messages.map((m) => m.role), ['user', 'assistant', 'user']);
  assert.equal(result.content, 'Respuesta Anthropic');
  assert.equal(result.finishReason, 'end_turn');
});

test('Gemini envía x-goog-api-key, systemInstruction y roles model/user', async () => {
  const captured = {};
  const result = await Engine.chat({
    protocol: 'gemini-generate-content',
    endpoint: 'https://generativelanguage.googleapis.com/v1beta',
    apiKey: 'gemini-secret',
    model: 'gemini-2.5-flash',
    temperature: 0.4,
    maxTokens: 900,
    messages: [
      { role: 'system', content: 'Eres ANK.' },
      { role: 'user', content: 'Hola' },
      { role: 'assistant', content: 'Hola.' },
      { role: 'user', content: 'Continúa.' }
    ],
    http: nativeSuccess({
      candidates: [{
        content: { parts: [{ text: 'Respuesta ' }, { text: 'Gemini' }] },
        finishReason: 'STOP'
      }],
      usageMetadata: { totalTokenCount: 18 }
    }, captured)
  });

  assert.equal(
    captured.url,
    'https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent'
  );
  assert.equal(captured.options.headers['x-goog-api-key'], 'gemini-secret');
  assert.equal(captured.options.data.systemInstruction.parts[0].text, 'Eres ANK.');
  assert.deepEqual(captured.options.data.contents.map((m) => m.role), ['user', 'model', 'user']);
  assert.equal(captured.options.data.generationConfig.maxOutputTokens, 900);
  assert.equal(result.content, 'Respuesta Gemini');
  assert.equal(result.finishReason, 'STOP');
});

test('convierte errores HTTP del transporte nativo en mensajes legibles', async () => {
  const http = {
    sendRequest(url, options, success, failure) {
      failure({ status: 401, error: JSON.stringify({ error: { message: 'Invalid API token' } }) });
      return 88;
    }
  };
  await assert.rejects(
    Engine.chat({
      endpoint: 'https://api.example.com/v1',
      apiKey: 'bad-token',
      model: 'model',
      messages: [],
      http
    }),
    /API HTTP 401: Invalid API token/
  );
});

test('cancela la petición HTTP nativa y llama abort con el ID de solicitud', async () => {
  const controller = new AbortController();
  let abortedId = null;
  const http = {
    sendRequest() { return 314; },
    abort(id, success) { abortedId = id; if (success) success(); }
  };
  const pending = Engine.chat({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'secret',
    model: 'x',
    messages: [{ role: 'user', content: 'espera' }],
    http,
    signal: controller.signal
  });
  controller.abort();
  await assert.rejects(pending, (error) => error.code === 'ANK_AI_ABORTED');
  assert.equal(abortedId, 314);
});

test('el timeout del transporte nativo termina y cancela la petición', async () => {
  let abortedId = null;
  const http = {
    sendRequest() { return 515; },
    abort(id, success) { abortedId = id; if (success) success(); }
  };
  await assert.rejects(
    Engine.chat({
      endpoint: 'https://api.example.com/v1',
      apiKey: 'secret',
      model: 'x',
      messages: [{ role: 'user', content: 'espera' }],
      http,
      timeoutMs: 10
    }),
    (error) => error.code === 'ANK_AI_TIMEOUT'
  );
  assert.equal(abortedId, 515);
});


test('API personalizada usa endpoint exacto, query no sensible, headers configurados y extrae respuesta por ruta', async () => {
  const captured = {};
  const result = await Engine.chat({
    protocol: 'custom-json',
    endpoint: 'https://gateway.example.com/v2/infer?tenant=ank',
    apiKey: 'custom-secret',
    model: 'modelo-propio',
    customAuthHeader: 'api-key',
    customAuthPrefix: '',
    customHeaders: JSON.stringify({
      'x-workspace': 'ank-lab',
      'x-model-hint': '{{MODEL}}',
      'x-key-copy': '{{API_KEY}}'
    }),
    customBodyTemplate: JSON.stringify({
      engine: '{{MODEL}}',
      input: '{{MESSAGES}}',
      instructions: '{{SYSTEM}}',
      temperature: '{{TEMPERATURE}}',
      limit: '{{MAX_TOKENS}}'
    }),
    customResponsePath: 'result.answer.text',
    messages: [
      { role: 'system', content: 'Eres ANK.' },
      { role: 'user', content: 'Crea un archivo.' }
    ],
    http: nativeSuccess({
      result: { answer: { text: 'Respuesta de API propia' } },
      usage: { total_tokens: 21 }
    }, captured)
  });

  assert.equal(captured.url, 'https://gateway.example.com/v2/infer?tenant=ank');
  assert.equal(captured.options.headers['api-key'], 'custom-secret');
  assert.equal(captured.options.headers['x-workspace'], 'ank-lab');
  assert.equal(captured.options.headers['x-model-hint'], 'modelo-propio');
  assert.equal(captured.options.headers['x-key-copy'], 'custom-secret');
  assert.equal(captured.options.data.engine, 'modelo-propio');
  assert.deepEqual(captured.options.data.input, [{ role: 'system', content: 'Eres ANK.' }, { role: 'user', content: 'Crea un archivo.' }]);
  assert.equal(captured.options.data.instructions, 'Eres ANK.');
  assert.equal(result.content, 'Respuesta de API propia');
  assert.equal(result.usage.total_tokens, 21);
});

test('API personalizada conserva la ruta y responde por fetch fuera de Cordova', async (t) => {
  const originalFetch = global.fetch;
  t.after(() => { global.fetch = originalFetch; });
  let request;
  global.fetch = async (url, options) => {
    request = { url, options };
    return {
      ok: true,
      status: 200,
      json: async () => ({ output: [{ content: [{ text: 'Respuesta web' }] }] })
    };
  };

  const result = await Engine.chat({
    protocol: 'custom-json',
    endpoint: 'https://api.example.com/custom/invoke',
    apiKey: 'secret',
    customAuthHeader: 'X-API-Key',
    customAuthPrefix: '',
    model: 'm',
    customBodyTemplate: '{"prompt":"{{MESSAGES}}","deployment":"{{MODEL}}"}',
    customResponsePath: 'output.0.content',
    messages: [{ role: 'user', content: 'Hola' }]
  });

  assert.equal(request.url, 'https://api.example.com/custom/invoke');
  assert.equal(request.options.headers['X-API-Key'], 'secret');
  assert.equal(JSON.parse(request.options.body).deployment, 'm');
  assert.equal(result.content, 'Respuesta web');
});

test('API personalizada rechaza JSON inválido y encabezados peligrosos', async () => {
  const base = {
    protocol: 'custom-json',
    endpoint: 'https://api.example.com/infer',
    apiKey: 'secret',
    model: 'm',
    messages: [{ role: 'user', content: 'Hola' }],
    http: nativeSuccess({ answer: 'ok' })
  };
  await assert.rejects(
    Engine.chat(Object.assign({}, base, { customHeaders: '{bad json' })),
    (error) => error.code === 'ANK_AI_CUSTOM_JSON_INVALID'
  );
  await assert.rejects(
    Engine.chat(Object.assign({}, base, { customHeaders: JSON.stringify({ Host: 'evil.example' }) })),
    (error) => error.code === 'ANK_AI_CUSTOM_HEADER_INVALID'
  );
  await assert.rejects(
    Engine.chat(Object.assign({}, base, { customBodyTemplate: '{invalid' })),
    (error) => error.code === 'ANK_AI_CUSTOM_BODY_INVALID'
  );
  await assert.rejects(
    Engine.chat(Object.assign({}, base, { customHeaders: JSON.stringify({ 'x-test': 'ok\r\nInjected: yes' }) })),
    (error) => error.code === 'ANK_AI_CUSTOM_HEADER_INVALID'
  );
  await assert.rejects(
    Engine.chat(Object.assign({}, base, { customBodyTemplate: '{"__proto__":{"polluted":true}}' })),
    (error) => error.code === 'ANK_AI_CUSTOM_BODY_INVALID'
  );
});

test('rechaza credenciales en query string para evitar filtrarlas en historial de red', () => {
  assert.throws(
    () => Engine.endpointUrl('https://api.example.com/v1/infer?api_key=secret', 'custom-json'),
    (error) => error.code === 'ANK_AI_ENDPOINT_SECRET'
  );
});


test('permite HTTP solo para localhost y direcciones privadas', () => {
  assert.equal(Engine.endpointUrl('http://localhost:11434/api', 'custom-json'), 'http://localhost:11434/api');
  assert.equal(Engine.endpointUrl('http://192.168.1.30:11434/api', 'custom-json'), 'http://192.168.1.30:11434/api');
  assert.equal(Engine.endpointUrl('http://10.0.0.5:8080/infer', 'custom-json'), 'http://10.0.0.5:8080/infer');
  assert.throws(
    () => Engine.endpointUrl('http://api.example.com/v1/infer', 'custom-json'),
    (error) => error.code === 'ANK_AI_ENDPOINT_INSECURE'
  );
});

test('permite API personalizada sin clave cuando el encabezado de autenticación está vacío', async () => {
  const captured = {};
  const result = await Engine.chat({
    protocol: 'custom-json',
    endpoint: 'http://192.168.1.30:11434/api/generate',
    apiKey: '',
    customAuthHeader: '',
    customAuthPrefix: '',
    customHeaders: '{}',
    customBodyTemplate: '{"model":"{{MODEL}}","prompt":"{{MESSAGES}}"}',
    customResponsePath: 'response',
    model: 'llama-local',
    messages: [{ role: 'user', content: 'Hola' }],
    http: nativeSuccess({ response: 'Respuesta local sin clave' }, captured)
  });
  assert.equal(captured.url, 'http://192.168.1.30:11434/api/generate');
  assert.equal(captured.options.headers.Authorization, undefined);
  assert.equal(captured.options.data.model, 'llama-local');
  assert.equal(result.content, 'Respuesta local sin clave');
});


test('conserva identificadores de modelo usados por proveedores y gateways', () => {
  assert.equal(Engine.normalizarModelo(' meta-llama/llama-3.1-8b-instruct:free '), 'meta-llama/llama-3.1-8b-instruct:free');
  assert.equal(Engine.normalizarModelo('anthropic.claude-3-5-sonnet-20241022-v2:0'), 'anthropic.claude-3-5-sonnet-20241022-v2:0');
  assert.equal(Engine.normalizarModelo('org/model@2026+latest'), 'org/model@2026+latest');
  assert.equal(Engine.normalizarModelo('gemini-2.5-flash'), 'gemini-2.5-flash');
});

test('rechaza identificadores de modelo con controles o longitud excesiva', () => {
  assert.throws(
    () => Engine.normalizarModelo('modelo\nAuthorization: Bearer leaked'),
    (error) => error.code === 'ANK_AI_MODEL_INVALID'
  );
  assert.throws(
    () => Engine.normalizarModelo('x'.repeat(257)),
    (error) => error.code === 'ANK_AI_MODEL_TOO_LONG'
  );
});

test('Gemini codifica el ID completo del modelo sin eliminar variantes', () => {
  assert.equal(
    Engine.endpointUrl('https://generativelanguage.googleapis.com/v1beta', 'gemini', 'modelo:test+stable'),
    'https://generativelanguage.googleapis.com/v1beta/models/modelo%3Atest%2Bstable:generateContent'
  );
});

const PROFILE_DEFAULTS = {
  protocol: 'openai-chat-completions',
  endpoint: 'https://api.example.com/v1',
  customAuthHeader: 'Authorization',
  customAuthPrefix: 'Bearer',
  customHeaders: '{}',
  customBodyTemplate: '{"model":"{{MODEL}}","messages":"{{MESSAGES}}"}',
  customResponsePath: 'choices.0.message.content'
};

test('crea perfiles API con los valores por defecto y sobrescribe el nombre e ID', () => {
  const profile = Engine.crearPerfil(PROFILE_DEFAULTS, {
    id: 'my-openrouter',
    name: ' OpenRouter personal '
  });
  assert.equal(profile.id, 'my-openrouter');
  assert.equal(profile.name, 'OpenRouter personal');
  assert.equal(profile.protocol, 'openai-chat-completions');
  assert.equal(profile.endpoint, 'https://api.example.com/v1');
  assert.equal(profile.customAuthHeader, 'Authorization');
});

test('migra una configuración antigua de una conexión a provider.json v4', () => {
  const result = Engine.normalizarPerfiles({
    protocol: 'anthropic-messages',
    endpoint: 'https://api.anthropic.com/v1',
    model: 'claude-3-7-sonnet-latest',
    apiKey: 'secret-old-key',
    name: 'Anthropic de siempre',
    customAuthHeader: 'x-api-key'
  }, PROFILE_DEFAULTS, 12);
  assert.equal(result.migrated, true);
  assert.equal(result.profiles.length, 1);
  assert.equal(result.activeProfileId, 'legacy-default');
  assert.equal(result.profiles[0].name, 'Anthropic de siempre');
  assert.equal(result.profiles[0].protocol, 'anthropic-messages');
  assert.equal(result.profiles[0].apiKey, 'secret-old-key');
  assert.equal(result.profiles[0].customAuthHeader, 'x-api-key');
});

test('normaliza varios perfiles v4 y restaura el proveedor activo', () => {
  const result = Engine.normalizarPerfiles({
    version: 4,
    activeProfileId: 'gemini-work',
    profiles: [
      { id: 'openrouter', name: 'OpenRouter', protocol: 'openai', endpoint: 'https://openrouter.ai/api/v1', model: 'meta-llama/llama-3.1:free', apiKey: 'key-1' },
      { id: 'gemini-work', name: 'Gemini trabajo', protocol: 'gemini', endpoint: 'https://generativelanguage.googleapis.com/v1beta', model: 'gemini-2.5-flash', apiKey: 'key-2' }
    ]
  }, PROFILE_DEFAULTS, 12);
  assert.equal(result.migrated, false);
  assert.equal(result.profiles.length, 2);
  assert.equal(result.activeProfileId, 'gemini-work');
  assert.equal(result.profiles[0].model, 'meta-llama/llama-3.1:free');
  assert.equal(result.profiles[1].protocol, 'gemini-generate-content');
  assert.equal(result.profiles[1].apiKey, 'key-2');
});

test('normaliza IDs inválidos y duplicados y limita la lista de perfiles', () => {
  const result = Engine.normalizarPerfiles({
    activeProfileId: 'duplicate',
    profiles: [
      { id: 'duplicate', name: 'Uno', model: 'm1' },
      { id: 'duplicate', name: 'Dos', model: 'm2' },
      { id: '///', name: 'Tres', model: 'm3' }
    ]
  }, PROFILE_DEFAULTS, 2);
  assert.equal(result.profiles.length, 2);
  assert.notEqual(result.profiles[0].id, result.profiles[1].id);
  assert.ok(result.profiles.every(profile => !!profile.id));
  assert.equal(result.activeProfileId, result.profiles[0].id);
});

test('el almacén permite actualizar y añadir un perfil sin perder los demás', () => {
  const first = Engine.crearPerfil(PROFILE_DEFAULTS, { id: 'first', name: 'Primero' });
  const second = Engine.crearPerfil(PROFILE_DEFAULTS, { id: 'second', name: 'Segundo' });
  const updated = Object.assign({}, first, { model: 'gpt-test' });
  let profiles = Engine.upsertPerfil([first, second], updated, 12);
  assert.equal(profiles.length, 2);
  assert.equal(profiles[0].model, 'gpt-test');
  const third = Engine.crearPerfil(PROFILE_DEFAULTS, { id: 'third', name: 'Tercero' });
  profiles = Engine.upsertPerfil(profiles, third, 12);
  assert.deepEqual(profiles.map(profile => profile.id), ['first', 'second', 'third']);
});

test('el almacén limita perfiles y crea un perfil vacío al borrar el último', () => {
  let profiles = [];
  for (let i = 0; i < 13; i++) {
    profiles = Engine.upsertPerfil(profiles, Engine.crearPerfil(PROFILE_DEFAULTS, {
      id: 'profile-' + i,
      name: 'Perfil ' + i
    }), 12);
  }
  assert.equal(profiles.length, 12);
  assert.equal(profiles[0].id, 'profile-1');
  const removed = Engine.eliminarPerfil(profiles, 'profile-12', PROFILE_DEFAULTS);
  assert.equal(removed.profiles.length, 11);
  assert.equal(removed.activeProfileId, 'profile-1');
  const last = Engine.eliminarPerfil([profiles[0]], profiles[0].id, PROFILE_DEFAULTS);
  assert.equal(last.profiles.length, 1);
  assert.equal(last.activeProfileId, 'default');
  assert.equal(last.profiles[0].apiKey, '');
});

test('la normalización de perfiles descarta modelos con caracteres de control', () => {
  const result = Engine.normalizarPerfil({
    id: 'bad-model',
    name: 'Modelo inválido',
    model: 'model\nBearer secret'
  }, 0, PROFILE_DEFAULTS);
  assert.equal(result.model, '');
});



test('Anthropic conserva el mensaje system en transporte fetch', async (t) => {
  const originalFetch = global.fetch;
  t.after(() => { global.fetch = originalFetch; });
  let request;
  global.fetch = async (url, options) => {
    request = { url, options };
    return {
      ok: true,
      status: 200,
      json: async () => ({ content: [{ type: 'text', text: 'Respuesta web Anthropic' }], stop_reason: 'end_turn' })
    };
  };
  const result = await Engine.chat({
    protocol: 'anthropic-messages',
    endpoint: 'https://api.anthropic.com/v1',
    apiKey: 'anthropic-secret',
    model: 'claude-example',
    messages: [
      { role: 'system', content: 'Instrucción del sistema.' },
      { role: 'user', content: 'Hola' }
    ]
  });
  assert.equal(request.url, 'https://api.anthropic.com/v1/messages');
  assert.equal(JSON.parse(request.options.body).system, 'Instrucción del sistema.');
  assert.equal(result.content, 'Respuesta web Anthropic');
});

test('el timeout de fetch se informa como timeout y no como cancelación manual', async (t) => {
  const originalFetch = global.fetch;
  t.after(() => { global.fetch = originalFetch; });
  global.fetch = (_url, options) => new Promise((_resolve, reject) => {
    options.signal.addEventListener('abort', () => {
      const error = new Error('aborted');
      error.name = 'AbortError';
      reject(error);
    }, { once: true });
  });
  await assert.rejects(
    Engine.chat({
      endpoint: 'https://api.example.com/v1',
      apiKey: 'secret',
      model: 'm',
      messages: [{ role: 'user', content: 'espera' }],
      timeoutMs: 10
    }),
    (error) => error.code === 'ANK_AI_TIMEOUT'
  );
});


test('el transporte Android no sigue redirecciones que podrían reenviar credenciales', async () => {
  const captured = {};
  await Engine.chat({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'redirect-secret',
    model: 'm',
    messages: [{ role: 'user', content: 'Hola' }],
    http: nativeSuccess({
      choices: [{ message: { content: 'ok' }, finish_reason: 'stop' }]
    }, captured)
  });
  assert.equal(captured.options.followRedirect, false);
});

test('oculta la clave API si un servidor la devuelve en un error HTTP nativo', async () => {
  const secret = 'native-secret-should-not-leak';
  const http = {
    sendRequest(_url, _options, _success, failure) {
      failure({
        status: 401,
        error: JSON.stringify({ error: { message: 'Invalid key: ' + secret } })
      });
      return 901;
    }
  };
  await assert.rejects(
    Engine.chat({
      endpoint: 'https://api.example.com/v1',
      apiKey: secret,
      model: 'm',
      messages: [{ role: 'user', content: 'Hola' }],
      http
    }),
    (error) => error.code === 'ANK_AI_HTTP_401' &&
      !error.message.includes(secret) &&
      error.message.includes('[CLAVE OCULTA]')
  );
});

test('oculta la clave API si un servidor la devuelve en un error HTTP fetch', async (t) => {
  const originalFetch = global.fetch;
  t.after(() => { global.fetch = originalFetch; });
  const secret = 'fetch-secret-should-not-leak';
  global.fetch = async () => ({
    ok: false,
    status: 429,
    statusText: 'Too Many Requests',
    text: async () => JSON.stringify({ error: { message: 'Quota rejected token ' + secret } })
  });
  await assert.rejects(
    Engine.chat({
      endpoint: 'https://api.example.com/v1',
      apiKey: secret,
      model: 'm',
      messages: [{ role: 'user', content: 'Hola' }]
    }),
    (error) => error.code === 'ANK_AI_HTTP_429' &&
      !error.message.includes(secret) &&
      error.message.includes('[CLAVE OCULTA]')
  );
});

test('rechaza respuestas nativas que no contienen JSON válido sin revelar credenciales', async () => {
  const secret = 'invalid-json-secret';
  const http = {
    sendRequest(_url, _options, success) {
      success({ status: 200, data: '<html>gateway error</html>' });
      return 902;
    }
  };
  await assert.rejects(
    Engine.chat({
      endpoint: 'https://api.example.com/v1',
      apiKey: secret,
      model: 'm',
      messages: [{ role: 'user', content: 'Hola' }],
      http
    }),
    (error) => error.code === 'ANK_AI_INVALID_JSON' && !error.message.includes(secret)
  );
});

test('Bloque 6 · registra herramientas con permisos y riesgos separados', () => {
  const catalog = Engine.herramientasAgente();
  const byName = Object.fromEntries(catalog.map((item) => [item.name, item]));
  assert.deepEqual(Object.keys(byName).sort(), [
    'project.create_backup',
    'project.delete_file',
    'project.list_files',
    'project.read_file',
    'project.restore_backup',
    'project.search_files',
    'project.write_file',
    'terminal.run'
  ]);
  assert.equal(byName['project.read_file'].permission, 'read');
  assert.equal(byName['project.write_file'].permission, 'write');
  assert.equal(byName['terminal.run'].permission, 'execute');
  assert.equal(byName['project.delete_file'].permission, 'destructive');
  assert.equal(byName['project.write_file'].requiresBackup, true);
  assert.equal(byName['project.delete_file'].requiresConfirmation, true);
  catalog[0].name = 'tool.injected';
  assert.equal(Engine.herramientasAgente()[0].name, 'project.list_files');
});

test('normaliza rutas seguras y rechaza traversal, rutas absolutas y rutas privadas', () => {
  assert.equal(Engine.normalizarRutaProyecto('./src//main.js'), 'src/main.js');
  assert.equal(Engine.normalizarRutaProyecto('', true), '.');
  for (const path of [
    '../outside.txt',
    'src/../../outside.txt',
    '/etc/passwd',
    'C:\\Users\\user\\secret.txt',
    'file:///data/data/app/private.txt',
    '.env',
    '.env.local',
    '.ssh/id_ed25519',
    'config/credentials.json',
    'keys/release.keystore',
    'ank_api_secrets.xml'
  ]) {
    assert.throws(() => Engine.normalizarRutaProyecto(path, false), undefined, path);
  }
});

test('valida estrictamente argumentos de lectura y escritura', () => {
  assert.deepEqual(
    Engine.normalizarArgumentosHerramienta('project.list_files', {}),
    { path: '.', maxDepth: 2 }
  );
  assert.deepEqual(
    Engine.normalizarArgumentosHerramienta('project.read_file', { path: 'src/main.js' }),
    { path: 'src/main.js', maxBytes: 65536 }
  );
  assert.throws(() => Engine.normalizarArgumentosHerramienta('project.read_file', { path: 'src/main.js', extra: true }), /Argumento no reconocido/);
  assert.throws(() => Engine.normalizarArgumentosHerramienta('project.search_files', { query: { text: 'x' } }), /consulta debe ser texto/);
  assert.throws(() => Engine.normalizarArgumentosHerramienta('project.write_file', { path: 'src/a.js', content: 42 }), /contenido debe ser texto/);
  assert.throws(() => Engine.normalizarArgumentosHerramienta('project.write_file', { path: 'src/a.js', content: 'x', confirmed: true }), /Argumento no reconocido/);
  assert.throws(() => Engine.normalizarArgumentosHerramienta('project.read_file', { path: 'src/a.js', maxBytes: '65536' }), /maxBytes debe ser un entero/);
});

test('requiere permiso explícito incluso para herramientas de lectura', () => {
  const args = { path: 'src/main.js' };
  const denied = Engine.evaluarPermisoHerramienta('project.read_file', args, {}, {});
  assert.equal(denied.allowed, false);
  assert.equal(denied.status, 'permission_required');
  const allowed = Engine.evaluarPermisoHerramienta('project.read_file', args, { read: true }, {});
  assert.equal(allowed.allowed, true);
  assert.equal(allowed.status, 'allowed');
});

test('una escritura exige permiso, copia de seguridad y confirmación separada', () => {
  const args = { path: 'src/main.js', content: 'nuevo contenido' };
  assert.equal(
    Engine.evaluarPermisoHerramienta('project.write_file', args, {}, {}).status,
    'permission_required'
  );
  assert.equal(
    Engine.evaluarPermisoHerramienta('project.write_file', args, { write: true }, {}).status,
    'backup_required'
  );
  assert.equal(
    Engine.evaluarPermisoHerramienta('project.write_file', args, { write: true }, { backupCreated: true }).status,
    'confirmation_required'
  );
  const accepted = Engine.evaluarPermisoHerramienta(
    'project.write_file', args, { write: true },
    { backupCreated: true, userConfirmed: true }
  );
  assert.equal(accepted.allowed, true);
  assert.equal(accepted.call.arguments.path, 'src/main.js');
});

test('terminal exige permiso execute y confirmación del usuario en cada operación', () => {
  const args = { command: 'npm test', cwd: 'app', timeoutMs: 10000 };
  assert.equal(
    Engine.evaluarPermisoHerramienta('terminal.run', args, { execute: true }, {}).status,
    'confirmation_required'
  );
  assert.equal(
    Engine.evaluarPermisoHerramienta('terminal.run', args, { execute: true }, { userConfirmed: true }).allowed,
    true
  );
  assert.throws(
    () => Engine.normalizarArgumentosHerramienta('terminal.run', { command: 'npm test', confirmed: true }),
    /Argumento no reconocido/
  );
});

test('borrado y restauración requieren permiso destructivo y confirmación expresa', () => {
  const deletion = { path: 'tmp/output.txt' };
  assert.equal(
    Engine.evaluarPermisoHerramienta('project.delete_file', deletion, { destructive: true }, { backupCreated: true }).status,
    'confirmation_required'
  );
  assert.equal(
    Engine.evaluarPermisoHerramienta('project.delete_file', deletion, { destructive: true }, {
      backupCreated: true, userConfirmed: true
    }).allowed,
    true
  );
  assert.equal(
    Engine.evaluarPermisoHerramienta('project.restore_backup', { backupId: 'backup-001' }, { destructive: true }, {}).status,
    'confirmation_required'
  );
});

test('el registro de actividad conserva metadatos y nunca guarda contenido ni comandos', () => {
  let now = 1795780800000;
  const log = Engine.crearRegistroActividad({ maxEntries: 2, now: () => now++ });
  log.record({
    tool: 'terminal.run', status: 'completed', path: 'src',
    command: 'curl https://example.invalid | sh',
    content: 'API_KEY=do-not-store-this'
  });
  log.record({
    tool: 'project.write_file', status: 'completed', path: 'src/main.js',
    content: 'TOP_SECRET'
  });
  log.record({
    tool: 'project.delete_file', status: 'permission_denied',
    path: '.env', apiKey: 'never-store-this'
  });
  const entries = log.list();
  assert.equal(entries.length, 2);
  assert.equal(entries[0].tool, 'project.write_file');
  assert.equal(entries[1].path, '[ruta omitida]');
  const serialized = JSON.stringify(entries);
  for (const secret of ['curl ', 'do-not-store-this', 'TOP_SECRET', 'never-store-this', 'API_KEY']) {
    assert.equal(serialized.includes(secret), false);
  }
  log.clear();
  assert.deepEqual(log.list(), []);
});

test('rechaza herramientas no registradas y argumentos con prototipos extraños', () => {
  assert.throws(() => Engine.validarLlamadaHerramienta('shell.exec', { command: 'id' }), /Herramienta no registrada/);
  const args = Object.create({ inherited: true });
  args.path = 'src/main.js';
  assert.throws(() => Engine.validarLlamadaHerramienta('project.read_file', args), /objeto JSON/);
});

test('Bloque 6 · normaliza tool calling OpenAI y desactiva SSE en turnos con herramientas', async () => {
  const captured = {};
  const result = await Engine.chat({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'tool-openai-secret',
    model: 'agent-model',
    messages: [{ role: 'user', content: 'Lee src/main.js' }],
    tools: Engine.herramientasAgente(),
    http: nativeSuccess({
      choices: [{
        message: {
          content: null,
          tool_calls: [{
            id: 'call_read_1',
            type: 'function',
            function: {
              name: 'project_read_file',
              arguments: '{"path":"src/main.js","maxBytes":4096}'
            }
          }]
        },
        finish_reason: 'tool_calls'
      }],
      usage: { total_tokens: 20 }
    }, captured)
  });
  assert.equal(captured.options.data.stream, false);
  assert.equal(captured.options.data.tool_choice, 'auto');
  assert.ok(captured.options.data.tools.some((tool) => tool.function.name === 'project_read_file'));
  assert.equal(result.content, '');
  assert.deepEqual(result.toolCalls, [{
    id: 'call_read_1',
    name: 'project.read_file',
    arguments: { path: 'src/main.js', maxBytes: 4096 }
  }]);
});

test('Bloque 6 · normaliza tool_use de Anthropic', async () => {
  const captured = {};
  const result = await Engine.chat({
    protocol: 'anthropic-messages',
    endpoint: 'https://api.anthropic.com/v1',
    apiKey: 'tool-anthropic-secret',
    model: 'claude-agent-model',
    messages: [{ role: 'user', content: 'Enumera el proyecto' }],
    tools: Engine.herramientasAgente(),
    http: nativeSuccess({
      id: 'msg_tool_1',
      content: [{
        type: 'tool_use',
        id: 'toolu_read_1',
        name: 'project_list_files',
        input: { path: 'src', maxDepth: 3 }
      }],
      stop_reason: 'tool_use'
    }, captured)
  });
  assert.equal(captured.options.data.tool_choice.type, 'auto');
  assert.ok(captured.options.data.tools.some((tool) => tool.name === 'project_list_files' && tool.input_schema.type === 'object'));
  assert.deepEqual(result.toolCalls, [{
    id: 'toolu_read_1',
    name: 'project.list_files',
    arguments: { path: 'src', maxDepth: 3 }
  }]);
});

test('Bloque 6 · normaliza functionCall de Gemini', async () => {
  const captured = {};
  const result = await Engine.chat({
    protocol: 'gemini-generate-content',
    endpoint: 'https://generativelanguage.googleapis.com/v1beta',
    apiKey: 'tool-gemini-secret',
    model: 'gemini-agent-model',
    messages: [{ role: 'user', content: 'Busca TODO' }],
    tools: Engine.herramientasAgente(),
    http: nativeSuccess({
      candidates: [{
        content: {
          parts: [{
            functionCall: {
              name: 'project_search_files',
              args: { query: 'TODO', path: '.', maxResults: 10 }
            }
          }]
        },
        finishReason: 'STOP'
      }]
    }, captured)
  });
  const declarations = captured.options.data.tools[0].functionDeclarations;
  assert.ok(declarations.some((tool) => tool.name === 'project_search_files'));
  assert.deepEqual(result.toolCalls, [{
    id: 'gemini-call-0',
    name: 'project.search_files',
    arguments: { query: 'TODO', path: '.', maxResults: 10 }
  }]);
});

test('Bloque 6 · rechaza llamadas de herramientas desconocidas o con argumentos inválidos', async () => {
  const base = {
    endpoint: 'https://api.example.com/v1',
    apiKey: 'tool-invalid-secret',
    model: 'agent-model',
    messages: [{ role: 'user', content: 'Haz algo' }],
    tools: Engine.herramientasAgente()
  };
  const unknown = {
    choices: [{
      message: {
        tool_calls: [{
          id: 'unknown-call',
          function: { name: 'admin_root', arguments: '{"command":"id"}' }
        }]
      }
    }]
  };
  await assert.rejects(
    Engine.chat(Object.assign({}, base, { http: nativeSuccess(unknown) })),
    (error) => error.code === 'ANK_TOOL_UNKNOWN'
  );
  const invalidArgs = {
    choices: [{
      message: {
        tool_calls: [{
          id: 'bad-path-call',
          function: { name: 'project_read_file', arguments: '{"path":"../../private.txt"}' }
        }]
      }
    }]
  };
  await assert.rejects(
    Engine.chat(Object.assign({}, base, { http: nativeSuccess(invalidArgs) })),
    (error) => error.code === 'ANK_TOOL_PATH_TRAVERSAL'
  );
  const invalidJSON = {
    choices: [{
      message: {
        tool_calls: [{
          id: 'bad-json-call',
          function: { name: 'project_read_file', arguments: '{not-json' }
        }]
      }
    }]
  };
  await assert.rejects(
    Engine.chat(Object.assign({}, base, { http: nativeSuccess(invalidJSON) })),
    (error) => error.code === 'ANK_TOOL_CALL_INVALID'
  );
});

test('Bloque 6 · rechaza herramientas en el protocolo JSON personalizado sin contrato de tool calling', async () => {
  await assert.rejects(
    Engine.chat({
      protocol: 'custom-json',
      endpoint: 'https://api.example.com/infer',
      apiKey: 'custom-secret',
      model: 'custom-model',
      messages: [{ role: 'user', content: 'Prueba' }],
      tools: Engine.herramientasAgente(),
      http: nativeSuccess({ answer: 'ok' })
    }),
    (error) => error.code === 'ANK_TOOL_PROTOCOL_UNSUPPORTED'
  );
});

test('Bloque 6 · ejecuta rondas OpenAI, valida permiso y devuelve resultado al modelo', async () => {
  const requests = [];
  let callCount = 0;
  const http = {
    sendRequest(_url, options, success) {
      requests.push(JSON.parse(JSON.stringify(options.data)));
      callCount += 1;
      if (callCount === 1) {
        success({ status: 200, data: JSON.stringify({
          choices: [{
            message: {
              content: null,
              tool_calls: [{
                id: 'call_roundtrip_1',
                type: 'function',
                function: { name: 'project_read_file', arguments: '{"path":"src/main.js"}' }
              }]
            },
            finish_reason: 'tool_calls'
          }]
        }) });
      } else {
        success({ status: 200, data: JSON.stringify({
          choices: [{ message: { content: 'El archivo contiene const x = 1;' }, finish_reason: 'stop' }]
        }) });
      }
      return callCount;
    },
    abort() {}
  };
  const executed = [];
  const result = await Engine.runAgent({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'agent-secret',
    model: 'agent-model',
    http,
    messages: [{ role: 'user', content: 'Lee src/main.js' }],
    permissions: { read: true },
    executeTool: async (call) => {
      executed.push(call.name);
      return 'const x = 1;';
    }
  });
  assert.deepEqual(executed, ['project.read_file']);
  assert.equal(result.content, 'El archivo contiene const x = 1;');
  assert.equal(result.rounds, 2);
  assert.equal(result.toolCallsExecuted, 1);
  assert.equal(result.activity.length, 2);
  assert.equal(result.activity[1].status, 'completed');
  assert.ok(requests[1].messages.some((m) =>
    m.role === 'assistant' && m.tool_calls && m.tool_calls[0].id === 'call_roundtrip_1'
  ));
  assert.ok(requests[1].messages.some((m) =>
    m.role === 'tool' && m.tool_call_id === 'call_roundtrip_1' && m.content === 'const x = 1;'
  ));
});

test('Bloque 6 · deniega por defecto cuando falta permiso y no ejecuta la herramienta', async () => {
  let request = 0;
  let executed = false;
  const http = {
    sendRequest(_url, options, success) {
      request += 1;
      if (request === 1) {
        success({ status: 200, data: JSON.stringify({
          choices: [{
            message: {
              tool_calls: [{
                id: 'call_denied_1',
                function: { name: 'project_read_file', arguments: '{"path":"src/main.js"}' }
              }]
            }
          }]
        }) });
      } else {
        assert.ok(options.data.messages.some((m) =>
          m.role === 'tool' && /Permiso denegado/.test(m.content)
        ));
        success({ status: 200, data: JSON.stringify({
          choices: [{ message: { content: 'No tengo permiso para leerlo.' } }]
        }) });
      }
      return request;
    },
    abort() {}
  };
  const result = await Engine.runAgent({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'secret',
    model: 'm',
    http,
    messages: [{ role: 'user', content: 'Lee src/main.js' }],
    executeTool: async () => { executed = true; return 'no debe ocurrir'; }
  });
  assert.equal(executed, false);
  assert.equal(result.toolCallsExecuted, 0);
  assert.equal(result.activity[1].status, 'permission_denied');
});

test('Bloque 6 · escritura exige confirmación y copia previa real antes del ejecutor', async () => {
  let n = 0;
  const order = [];
  const http = {
    sendRequest(_url, options, success) {
      n += 1;
      if (n === 1) {
        success({ status: 200, data: JSON.stringify({
          choices: [{
            message: {
              tool_calls: [{
                id: 'call_write_1',
                function: {
                  name: 'project_write_file',
                  arguments: JSON.stringify({ path: 'src/main.js', content: 'updated' })
                }
              }]
            }
          }]
        }) });
      } else {
        assert.ok(options.data.messages.some((m) =>
          m.role === 'tool' && /copia previa/.test(m.content)
        ));
        success({ status: 200, data: JSON.stringify({
          choices: [{ message: { content: 'No se modificó el archivo.' } }]
        }) });
      }
      return n;
    },
    abort() {}
  };
  let executed = false;
  const result = await Engine.runAgent({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'secret',
    model: 'm',
    http,
    messages: [{ role: 'user', content: 'Actualiza src/main.js' }],
    permissions: { write: true },
    confirmTool: async () => { order.push('confirm'); return true; },
    createBackup: async () => { order.push('backup'); return { created: false }; },
    executeTool: async () => { executed = true; return true; }
  });
  assert.deepEqual(order, ['confirm', 'backup']);
  assert.equal(executed, false);
  assert.equal(result.toolCallsExecuted, 0);
});

test('Bloque 6 · secuencia permiso, confirmación, backup y ejecución para escritura', async () => {
  let n = 0;
  const order = [];
  const http = {
    sendRequest(_url, options, success) {
      n += 1;
      if (n === 1) {
        success({ status: 200, data: JSON.stringify({
          choices: [{
            message: {
              tool_calls: [{
                id: 'call_write_2',
                function: {
                  name: 'project_write_file',
                  arguments: '{"path":"src/app.js","content":"safe"}'
                }
              }]
            }
          }]
        }) });
      } else {
        success({ status: 200, data: JSON.stringify({
          choices: [{ message: { content: 'Archivo modificado con respaldo.' } }]
        }) });
      }
      return n;
    },
    abort() {}
  };
  const result = await Engine.runAgent({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'secret',
    model: 'm',
    http,
    messages: [{ role: 'user', content: 'Actualiza src/app.js' }],
    permissions: { write: true },
    confirmTool: async () => { order.push('confirm'); return true; },
    createBackup: async () => { order.push('backup'); return { created: true, id: 'backup-1' }; },
    executeTool: async (call, context) => {
      order.push('execute');
      assert.equal(call.arguments.content, 'safe');
      assert.equal(context.backupId, 'backup-1');
      return { written: true };
    }
  });
  assert.deepEqual(order, ['confirm', 'backup', 'execute']);
  assert.equal(result.toolCallsExecuted, 1);
  assert.equal(result.activity[1].status, 'completed');
});

test('Bloque 6 · limita rondas y no permite ejecución ilimitada del agente', async () => {
  let n = 0;
  const http = {
    sendRequest(_url, _options, success) {
      n += 1;
      success({ status: 200, data: JSON.stringify({
        choices: [{
          message: {
            tool_calls: [{
              id: 'loop-' + n,
              function: { name: 'project_list_files', arguments: '{}' }
            }]
          }
        }]
      }) });
      return n;
    },
    abort() {}
  };
  await assert.rejects(
    Engine.runAgent({
      endpoint: 'https://api.example.com/v1',
      apiKey: 'secret',
      model: 'm',
      http,
      messages: [{ role: 'user', content: 'Continúa' }],
      permissions: { read: true },
      maxToolRounds: 2,
      executeTool: async () => ['file.txt']
    }),
    (error) => error.code === 'ANK_TOOL_ROUND_LIMIT'
  );
  assert.equal(n, 2);
});

test('Bloque 6 · transporta tool_use y tool_result en Anthropic', async () => {
  const captured = {};
  await Engine.chat({
    protocol: 'anthropic-messages',
    endpoint: 'https://api.anthropic.com/v1',
    apiKey: 'anthropic-secret',
    model: 'claude-agent-model',
    tools: Engine.herramientasAgente(),
    messages: [
      { role: 'user', content: 'Lee un archivo' },
      { role: 'assistant', content: '', toolCalls: [{
        id: 'toolu_1', name: 'project.read_file', arguments: { path: 'src/a.js' }
      }] },
      { role: 'tool', toolCallId: 'toolu_1', name: 'project.read_file', content: 'contenido' }
    ],
    http: nativeSuccess({ content: [{ type: 'text', text: 'Siguiente paso' }] }, captured)
  });
  const assistant = captured.options.data.messages[1];
  const toolResult = captured.options.data.messages[2];
  assert.equal(assistant.role, 'assistant');
  assert.equal(assistant.content[0].type, 'tool_use');
  assert.equal(assistant.content[0].name, 'project_read_file');
  assert.equal(toolResult.role, 'user');
  assert.equal(toolResult.content[0].type, 'tool_result');
  assert.equal(toolResult.content[0].tool_use_id, 'toolu_1');
});

test('Bloque 6 · transporta functionCall y functionResponse en Gemini', async () => {
  const captured = {};
  await Engine.chat({
    protocol: 'gemini-generate-content',
    endpoint: 'https://generativelanguage.googleapis.com/v1beta',
    apiKey: 'gemini-secret',
    model: 'gemini-agent-model',
    tools: Engine.herramientasAgente(),
    messages: [
      { role: 'user', content: 'Lee un archivo' },
      { role: 'assistant', content: '', toolCalls: [{
        id: 'gemini-call-1', name: 'project.read_file', arguments: { path: 'src/a.js' }
      }] },
      { role: 'tool', toolCallId: 'gemini-call-1', name: 'project.read_file', content: 'contenido' }
    ],
    http: nativeSuccess({ candidates: [{ content: { parts: [{ text: 'Siguiente paso' }] } }] }, captured)
  });
  const modelParts = captured.options.data.contents[1].parts;
  const resultParts = captured.options.data.contents[2].parts;
  assert.equal(modelParts[0].functionCall.name, 'project_read_file');
  assert.equal(modelParts[0].functionCall.args.path, 'src/a.js');
  assert.equal(resultParts[0].functionResponse.name, 'project_read_file');
  assert.equal(resultParts[0].functionResponse.response.result, 'contenido');
});

