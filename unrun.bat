@echo off
title oldfoye-has-already-paid Uninstall
cd /d "%~dp0"
set "JIAOBEN=%~dp0oldfoye-has-already-paid-data\scripts\uninstall.ps1"

if not exist "%JIAOBEN%" (
    echo [ERROR] Script not found: %JIAOBEN%
    pause
    exit /b 1
)

echo ========================================
echo   oldfoye-has-already-paid Uninstall
echo ========================================
echo.
echo Requesting administrator privileges...
echo.

powershell -Command "Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile -ExecutionPolicy Bypass -NoExit -File \"%JIAOBEN%\"'"

exit
