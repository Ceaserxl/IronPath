@echo off
setlocal enabledelayedexpansion

:: Get folder name and parent path
for %%I in ("%cd%") do (
    set "FOLDERNAME=%%~nxI"
    set "PARENTPATH=%%~dpI"
)

set "ZIPFILE=%PARENTPATH%!FOLDERNAME!.zip"
set "TEMP=%TEMP%\__IronPathZipTemp__"
set "FINALZIP=%cd%\!FOLDERNAME!.zip"

:: Cleanup old files
if exist "!ZIPFILE!" del "!ZIPFILE!"
if exist "!FINALZIP!" del "!FINALZIP!"
rd /s /q "!TEMP!" >nul 2>nul
mkdir "!TEMP!\!FOLDERNAME!"

:: Copy everything except .git and build.bat
robocopy . "!TEMP!\!FOLDERNAME!" /E /XD ".git" /XF "build.bat" >nul

:: Create zip
powershell -nologo -noprofile -command ^
  "Compress-Archive -Path '!TEMP!\!FOLDERNAME!' -DestinationPath '!ZIPFILE!'"

:: Move zip into current folder
move /Y "!ZIPFILE!" "!FINALZIP!" >nul

:: Cleanup
rd /s /q "!TEMP!" >nul

echo Created: !FINALZIP!
pause
