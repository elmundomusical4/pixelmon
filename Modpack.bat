@echo off




set CarpetaDescargas="%userprofile%\downloads\Pixelmon.zip"
set CarpetaSolo="%userprofile%\downloads\"
ECHO Descargando mods...
bitsadmin /transfer mydownloadjob /download "https://github.com/elmundomusical4/pixelmon/releases/latest/download/Pixelmon.zip" %CarpetaDescargas%

del /s /q "%AppData%\.minecraft\mods"

powershell Expand-Archive $HOME\Downloads\Pixelmon.zip -DestinationPath $HOME\Downloads\mods
move %userprofile%\downloads\mods\*.* %AppData%\.minecraft\mods
mkdir %AppData%\.minecraft\mods
xcopy %USERPROFILE%\downloads\mods %AppData%\.minecraft\mods /e /r /y

::sleep 5
del "%CarpetaDescargas%"
del /s /q "%userprofile%\downloads\mods"
cls


echo x=msgbox("Modpack instalado correctamente" ,64, "MODPACK PIXELMON") >> msgbox.vbs

start msgbox.vbs
timeout 5
del msgbox.vbs