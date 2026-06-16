@echo off
title Sara Pasteleria - Servidor Local
cd /d "%~dp0"

echo ============================================
echo   Sara Pasteleria - Sistema de Gestion
echo ============================================
echo.
echo [1/2] Iniciando servidor en puerto 8080...
start /b python -m http.server 8080

echo [2/2] Esperando que el servidor arranque...
timeout /t 2 /nobreak > nul

echo Abriendo el navegador...
start "" "http://localhost:8080"

echo.
echo ============================================
echo   App corriendo en: http://localhost:8080
echo   NO cierres esta ventana.
echo   Para apagar: presiona cualquier tecla.
echo ============================================
echo.
pause > nul

:: Al cerrar, mata el servidor
taskkill /f /im python.exe > nul 2>&1
echo Servidor apagado.
