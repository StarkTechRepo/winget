# WinGet en Windows

Simplifica la administración de paquetes de aplicaciones en Windows con esta poderosa interfaz de línea de comandos diseñada para trabajar con WinGet. Gestiona tus aplicaciones de manera eficiente, desde la instalación hasta las actualizaciones y desinstalaciones, todo desde la comodidad de tu terminal.

## Características Destacadas

- **Instalación sin Esfuerzo:** Configura rápidamente WinGet con un solo clic, sin necesidad de descargas manuales.
  - Comando: `powershell -Command "Install-PackageProvider -Name winget -Force"`

- **Actualización de Aplicaciones:** Mantén todas tus aplicaciones actualizadas con facilidad. Simplemente ingresa el nombre de la aplicación y deja que esta herramienta se encargue del resto.
  - Comando de actualización de una aplicación específica: `winget upgrade <nombre-de-la-aplicación>`

- **Lista de Aplicaciones Pendientes de Actualización:** Descubre qué aplicaciones necesitan actualización de manera rápida y sencilla.
  - Comando para listar aplicaciones pendientes de actualización: `winget list --status=available`

- **Acceso Rápido a la Ayuda de WinGet:** Obtén información y ayuda de WinGet directamente desde la línea de comandos.
  - Comando para mostrar la ayuda de WinGet: `winget --help`

- **Desinstalación Eficiente:** Elimina aplicaciones de forma efectiva con solo proporcionar el nombre de la aplicación que deseas eliminar.
  - Comando para desinstalar una aplicación específica: `winget uninstall <nombre-de-la-aplicación>`

## Licencia

Este proyecto está bajo la licencia [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/). Puedes compartir, adaptar y utilizar estos archivos siempre que des el crédito correspondiente al autor original.

### Nota importante
Se recomienda encarecidamente hacer una copia de seguridad de los datos importantes antes de continuar. El autor no se hace responsable de ningún daño o problema causado por el uso de este script.
