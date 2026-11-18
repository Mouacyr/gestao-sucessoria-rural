@echo off
setlocal
cd /d "%~dp0"
title RAIZ - Gestao e Continuidade Rural
echo ==========================================
echo   RAIZ - Gestao e Continuidade Rural
echo ==========================================
echo.
where py >nul 2>nul
if %errorlevel%==0 (
  echo Abrindo RAIZ em http://localhost:8080
  start "" "http://localhost:8080"
  py -m http.server 8080
  goto :fim
)
where python >nul 2>nul
if %errorlevel%==0 (
  echo Abrindo RAIZ em http://localhost:8080
  start "" "http://localhost:8080"
  python -m http.server 8080
  goto :fim
)
echo Python nao encontrado. Abrindo diretamente no navegador.
start "" "%~dp0index.html"
echo.
echo Se os dados nao permanecerem salvos, use o Live Server do VS Code.
pause
:fim
endlocal
