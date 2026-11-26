# Publica la capa web del panel en GitHub.
#
#   powershell -ExecutionPolicy Bypass -File tools\publicar-github.ps1 1.5.2 "notas del cambio"
#
# Genera el paquete (tools\publicar-actualizacion.py), lo copia al clon de
# .repo-publicacion y hace commit + push a la rama main. La app lo detecta al
# abrir y lo aplica en el siguiente arranque.

param(
    [Parameter(Mandatory = $true)][string]$Version,
    [string]$Notas = ""
)

$ErrorActionPreference = 'Stop'
$raiz = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$clon = Join-Path $raiz '.repo-publicacion'
$remoto = 'https://github.com/Alejandrokiriatos/codigo-ank.git'
$env:GIT_TERMINAL_PROMPT = '0'

Write-Host "1/4 generando paquete $Version"
python (Join-Path $raiz 'tools\publicar-actualizacion.py') $Version $Notas
if ($LASTEXITCODE -ne 0) { throw "fallo al generar el paquete" }

Write-Host "2/4 preparando clon"
if (-not (Test-Path (Join-Path $clon '.git'))) {
    git clone $remoto $clon
    if ($LASTEXITCODE -ne 0) { throw "fallo el clonado" }
} else {
    git -C $clon pull --ff-only
}

Write-Host "3/4 copiando archivos"
$origen = Join-Path $raiz 'update'
New-Item -ItemType Directory -Force -Path (Join-Path $clon 'ank') | Out-Null
Copy-Item (Join-Path $origen 'version.json') $clon -Force
Copy-Item (Join-Path $origen 'ank\ai.js') (Join-Path $clon 'ank\ai.js') -Force
Copy-Item (Join-Path $origen 'ank\ai.css') (Join-Path $clon 'ank\ai.css') -Force

Write-Host "4/4 subiendo"
git -C $clon add -A
$estado = git -C $clon status --porcelain
if (-not $estado) {
    Write-Host "sin cambios que publicar ($Version)"
    return
}
git -C $clon -c user.name="ANK" -c user.email="ank@codigoank.app" commit -m "panel $Version"
if ($LASTEXITCODE -ne 0) { throw "fallo el commit" }
git -C $clon push origin HEAD:main
if ($LASTEXITCODE -ne 0) { throw "fallo el push" }

Write-Host "publicado $Version en https://github.com/Alejandrokiriatos/codigo-ank"
