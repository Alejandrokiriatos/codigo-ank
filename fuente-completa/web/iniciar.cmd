@echo off
cd /d "%~dp0"
set PORT=8788
echo.
echo   Codigo ANK - descarga local
echo   Abri en el telefono la direccion que aparece abajo.
echo.
node serve.js
pause
