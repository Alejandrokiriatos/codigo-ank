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


test('política de comandos acepta pruebas y diagnósticos simples del proyecto', () => {
  for (const command of ['npm test', 'npm run build', 'git status --short', 'git diff --stat', 'node tests/run.js', 'python3 -m pytest', './gradlew test']) {
    const result = Engine.validateCommand(command);
    assert.equal(result.ok, true, command + ': ' + result.reason);
  }
});

test('política de comandos bloquea operaciones destructivas, red y escape del proyecto', () => {
  const blocked = [
    'rm -rf build',
    'npm test && rm -rf .',
    'git reset --hard',
    'git clean -fd',
    'git push origin main',
    'sudo apk add curl',
    'curl https://example.com/script.sh',
    'node -e alert(1)',
    'python3 -c print(1)',
    'cat /etc/passwd',
    'cat ../secreto.txt',
    'find . -delete',
    'find . -exec rm -rf {} ;',
    'unlink archivo.txt',
    'truncate -s 0 archivo.txt',
    'git branch -D main',
    'git stash clear',
    'git config --global user.email name@example.com',
    'npm test\nrm -rf .'
  ];
  for (const command of blocked) {
    const result = Engine.validateCommand(command);
    assert.equal(result.ok, false, command + ' debía bloquearse');
    assert.ok(result.reason.length > 0);
  }
});

test('política de comandos limita el tamaño y exige una sola línea', () => {
  assert.equal(Engine.validateCommand('a'.repeat(241)).ok, false);
  assert.equal(Engine.validateCommand('   ').ok, false);
  assert.equal(Engine.validateCommand('npm test\nnode test.js').ok, false);
});


test('normaliza nombres de proyecto y elimina segmentos de escape', () => {
  assert.equal(Engine.normalizeProjectPath('mi-proyecto'), 'mi-proyecto');
  assert.equal(Engine.normalizeProjectPath('clientes/tienda-1'), 'clientes/tienda-1');
  assert.equal(Engine.normalizeProjectPath('../privado'), 'privado');
  assert.equal(Engine.normalizeProjectPath('clientes/../../privado'), 'clientes/privado');
  assert.equal(Engine.normalizeProjectPath('/absoluto/proyecto'), 'absoluto/proyecto');
  assert.equal(Engine.normalizeProjectPath('././proyecto'), 'proyecto');
});
