@echo off
echo [*] Compilation de TestApp.exe
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release

echo [*] Création du fichier MSI avec WiX
candle installer\windows\installer.wxs
light installer.wixobj -o TestAppInstaller.msi

echo [✔] Fichier généré : TestAppInstaller.msi
