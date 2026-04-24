@echo off
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

cd /d "%~dp0"
title br2img
color 0A
cls

echo ========================================
echo           br2img - BR to IMG
echo ========================================
echo.

if not exist "brotli.exe" (
    echo [ERROR] brotli.exe not found!
    pause
    exit /b 1
)

if not exist "sdat2img.py" (
    echo [ERROR] sdat2img.py not found!
    pause
    exit /b 1
)

:: Convert system
if exist "system.new.dat.br" (
    if exist "system.transfer.list" (
        echo Converting system...
        brotli.exe -d system.new.dat.br -o system.new.dat
        python sdat2img.py system.transfer.list system.new.dat system.img
        echo [OK] system.img
    ) else echo Missing system.transfer.list
) else echo Missing system.new.dat.br

echo.

:: Convert vendor
if exist "vendor.new.dat.br" (
    if exist "vendor.transfer.list" (
        echo Converting vendor...
        brotli.exe -d vendor.new.dat.br -o vendor.new.dat
        python sdat2img.py vendor.transfer.list vendor.new.dat vendor.img
        echo [OK] vendor.img
    ) else echo Missing vendor.transfer.list
) else echo Missing vendor.new.dat.br

echo.
echo Done.
pause