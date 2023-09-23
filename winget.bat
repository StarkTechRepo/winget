@echo off
chcp 65001 > nul
color 0B
title https://github.com/OtaconEvil

:: Verificar si se está ejecutando como administrador
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if "%errorlevel%"=="0" (
    echo Ejecutando con privilegios de administrador...
    timeout /t 2 > nul
) else (
    echo Este script debe ejecutarse como administrador.
    pause
    exit
)

:menu
cls
echo.
echo.
echo             ------------------------------
echo             ^|        Menú WinGet        ^|
echo             ------------------------------
echo.
echo.
echo   [1] Instalar WinGet
echo   [2] Actualizar paquetes con WinGet
echo   [3] Ver programas para actualizar
echo   [4] Ayuda de WinGet
echo   [5] Desinstalar aplicación con WinGet
echo   [6] Salir
echo.
echo             ------------------------------
echo.
set /p option=Selecciona una opción ([1-6]):

if "%option%"=="1" (
    echo Instalando WinGet...
    powershell -Command "Install-PackageProvider -Name winget -Force"
    pause
) else if "%option%"=="2" (
    set /p package=Ingresa el nombre de la aplicación a actualizar:
    if "%package%"=="" (
        echo No se ha ingresado el nombre de la aplicación. Operación cancelada.
        pause
    ) else (
        echo Actualizando la aplicación %package% con WinGet...
        winget upgrade -n %package%
        pause
    )
) else if "%option%"=="3" (
    echo Mostrando programas disponibles para actualizar...
    winget upgrade
    pause
) else if "%option%"=="4" (
    echo Mostrando ayuda de WinGet...
    winget --help
    pause
) else if "%option%"=="5" (
    set /p appname=Ingresa el nombre de la aplicación a desinstalar:
    if "%appname%"=="" (
        echo No se ha ingresado el nombre de la aplicación. Operación cancelada.
        pause
    ) else (
        echo Desinstalando la aplicación %appname% con WinGet...
        winget uninstall -n %appname%
        pause
    )
) else if "%option%"=="6" (
    echo Saliendo...
    exit
) else (
    if "%option%"=="" (
        echo No se ha ingresado ninguna opción. Por favor, selecciona una opción válida.
        pause
    ) else (
        echo Opción inválida. Por favor, selecciona una opción válida.
        pause
    )
)

goto :menu
