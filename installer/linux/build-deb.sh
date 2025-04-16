#!/bin/bash

APP_NAME="TestApp"
VERSION="1.0.0"
ARCH="amd64"
BUILD_DIR="build"
PKG_DIR="installer/linux"
DEB_NAME="testapp_${VERSION}_${ARCH}.deb"

echo "🧱 Préparation de l’arborescence Debian…"
rm -rf "${PKG_DIR}/usr"
mkdir -p "${PKG_DIR}/usr/local/bin"
mkdir -p "${PKG_DIR}/usr/share/applications"
mkdir -p "${PKG_DIR}/usr/share/icons/hicolor/64x64/apps"

echo "📦 Copie des fichiers dans le paquet…"
cp "${BUILD_DIR}/${APP_NAME}" "${PKG_DIR}/usr/local/bin/"
cp "${PKG_DIR}/testapp.desktop" "${PKG_DIR}/usr/share/applications/"
cp "${PKG_DIR}/testapp.png" "${PKG_DIR}/usr/share/icons/hicolor/64x64/apps/"

# Vérifie présence de postinst/postrm
if [ -x "${PKG_DIR}/DEBIAN/postinst" ]; then
    echo "🔧 Script postinst détecté"
else
    echo "⚠️  postinst manquant ou non exécutable"
fi

if [ -x "${PKG_DIR}/DEBIAN/postrm" ]; then
    echo "🔧 Script postrm détecté"
else
    echo "⚠️  postrm manquant ou non exécutable"
fi

echo "📦 Création du paquet .deb…"
dpkg-deb --build "${PKG_DIR}" "${DEB_NAME}"

echo "✅ Paquet généré : ${DEB_NAME}"

🛠️ Avant de lancer le script
Assure-toi que :
chmod +x installer/linux/DEBIAN/postinst
chmod +x installer/linux/DEBIAN/postrm
chmod +x installer/linux/build-deb.sh
Puis lance :
cd installer/linux
./build-deb.sh
