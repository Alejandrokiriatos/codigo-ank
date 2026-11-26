#!/usr/bin/env python3
"""Prepara y firma el paquete de actualización del panel (solo capa web).

Uso:
    python tools/publicar-actualizacion.py 1.5.2 "historial de chats y memoria"

Genera en ./update:
    version.json   (incluye la firma HMAC del paquete)
    ank/ai.js
    ank/ai.css

La clave de firma vive en tools/update-key.txt y NUNCA se publica: la copia
va compilada dentro del APK, así que un tercero con acceso al repositorio no
puede publicar un panel distinto sin que la app lo rechace.
"""

import hashlib
import hmac
import json
import os
import shutil
import sys

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
ORIGEN = os.path.join(RAIZ, 'decoded', 'assets', 'www', 'ank')
DESTINO = os.path.join(RAIZ, 'update')
CLAVE = os.path.join(RAIZ, 'tools', 'update-key.txt')


def leer_clave():
    with open(CLAVE, 'r', encoding='utf-8') as f:
        return bytes.fromhex(f.read().strip())


def normalizar(texto):
    return texto.replace('\r\n', '\n')


def firmar(clave, version, ai, css):
    mensaje = (version + '\n' + ai + '\n' + css).encode('utf-8')
    return hmac.new(clave, mensaje, hashlib.sha256).hexdigest()


def main():
    version = sys.argv[1] if len(sys.argv) > 1 else '1.5.2'
    notas = sys.argv[2] if len(sys.argv) > 2 else ''

    ai = normalizar(open(os.path.join(ORIGEN, 'ai.js'), encoding='utf-8').read())
    css = normalizar(open(os.path.join(ORIGEN, 'ai.css'), encoding='utf-8').read())

    os.makedirs(os.path.join(DESTINO, 'ank'), exist_ok=True)
    for nombre, contenido in (('ai.js', ai), ('ai.css', css)):
        with open(os.path.join(DESTINO, 'ank', nombre), 'w', encoding='utf-8', newline='\n') as f:
            f.write(contenido)

    info = {
        'web': version,
        'ai': 'ank/ai.js',
        'css': 'ank/ai.css',
        'notas': notas,
        'sig': firmar(leer_clave(), version, ai, css),
    }
    with open(os.path.join(DESTINO, 'version.json'), 'w', encoding='utf-8', newline='\n') as f:
        json.dump(info, f, ensure_ascii=False, indent=2)
        f.write('\n')

    print('paquete firmado en', DESTINO)
    print(json.dumps(info, ensure_ascii=False))


if __name__ == '__main__':
    main()
