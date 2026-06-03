@echo off
title oldfoye-has-already-paid
cd /d "%~dp0"
set "JIAOBEN=%~dp0oldfoye-has-already-paid-data\scripts\install.ps1"

echo ========================================
echo   oldfoye-has-already-paid
echo ========================================
echo.
echo Requesting administrator privileges...
echo.

powershell -Command "Start-Process powershell -Verb RunAs -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%JIAOBEN%\"'"

exit
