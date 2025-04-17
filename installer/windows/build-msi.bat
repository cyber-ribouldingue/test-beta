@echo off
setlocal

echo [*] Compilation de TestApp.exe

:: Configure la variable Qt
set "QT_PATH=%USERPROFILE%\Qt\6.8.3\msvc2019_64"

cmake -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=%QT_PATH%
cmake --build build --config Release

if not exist build\Release\TestApp.exe (
    echo [!] Erreur : build\Release\TestApp.exe introuvable.
    exit /b 1
)

echo [*] Création du fichier MSI avec WiX
candle installer\windows\installer.wxs
if errorlevel 1 exit /b 1

light installer.wixobj -o TestAppInstaller.msi
if errorlevel 1 exit /b 1

echo [✔] Fichier MSI généré : TestAppInstaller.msi
