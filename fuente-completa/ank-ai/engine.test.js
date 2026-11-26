'use strict';

const test = require('node:test');
const assert = require('node:assert/strict');
const Engine = require('../ank-ai/engine');

test('normaliza URL base y conserva ruta completa', () => {
  assert.equal(Engine.endpointUrl('https://api.example.com/v1'), 'https://api.example.com/v1/chat/completions');
  assert.equal(Engine.endpointUrl('https://api.example.com/v1/'), 'https://api.example.com/v1/chat/completions');
  assert.equal(Engine.endpointUrl('https://api.example.com/v1/chat/completions'), 'https://api.example.com/v1/chat/completions');
});

test('rechaza protocolos y URLs con credenciales', () => {
  assert.throws(() => Engine.endpointUrl('ftp://api.example.com/v1'), /HTTPS o HTTP/);
  assert.throws(() => Engine.endpointUrl('https://user:pass@api.example.com/v1'), /credenciales/);
  assert.throws(() => Engine.endpointUrl('not a URL'), /no es válida/);
});

test('exige clave y modelo antes de hacer red', async () => {
  await assert.rejects(Engine.chat({ endpoint: 'https://api.example.com/v1', model: 'm' }), /Falta la clave/);
  await assert.rejects(Engine.chat({ endpoint: 'https://api.example.com/v1', apiKey: 'secret' }), /nombre del modelo/);
});

test('envía petición compatible y consume eventos SSE', async (t) => {
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

test('muestra errores HTTP del proveedor sin ocultar el mensaje', async (t) => {
  const originalFetch = global.fetch;
  t.after(() => { global.fetch = originalFetch; });
  global.fetch = async () => ({
    ok: false,
    status: 401,
    statusText: 'Unauthorized',
    text: async () => JSON.stringify({ error: { message: 'Invalid API key' } })
  });
  await assert.rejects(
    Engine.chat({ endpoint: 'https://api.example.com/v1', apiKey: 'bad-key', model: 'x', messages: [] }),
    /API HTTP 401: Invalid API key/
  );
});

test('acepta respuesta JSON sin streaming cuando el servidor no ofrece SSE', async (t) => {
  const originalFetch = global.fetch;
  t.after(() => { global.fetch = originalFetch; });
  global.fetch = async () => ({
    ok: true,
    status: 200,
    body: null,
    json: async () => ({ choices: [{ message: { content: 'Respuesta normal' }, finish_reason: 'stop' }] })
  });
  const result = await Engine.chat({
    endpoint: 'https://api.example.com/v1',
    apiKey: 'secret',
    model: 'x',
    messages: [],
    onDelta: () => {}
  });
  assert.equal(result.content, 'Respuesta normal');
});
