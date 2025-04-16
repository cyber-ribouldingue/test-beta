#!/bin/bash

APP_NAME="TestApp"
VERSION="1.0.0"
ARCH="amd64"
BUILD_DIR="build"
PKG_DIR="installer/linux"
DEB_NAME="testapp_${VERSION}_${ARCH}.deb"

# 1. Nettoyage
rm -rf "${PKG_DIR}/usr"
mkdir -p "${PKG_DIR}/usr/local/bin"
mkdir -p "${PKG_DIR}/usr/share/applications"
mkdir -p "${PKG_DIR}/usr/share/icons/hicolor/64x64/apps"

# 2. Copier l'exécutable
cp "${BUILD_DIR}/${APP_NAME}" "${PKG_DIR}/usr/local/bin/"

# 3. Copier le fichier .desktop
cp "${PKG_DIR}/testapp.desktop" "${PKG_DIR}/usr/share/applications/"

# 4. Copier l'icône
cp "${PKG_DIR}/testapp.png" "${PKG_DIR}/usr/share/icons/hicolor/64x64/apps/"

# 5. Créer le paquet .deb
dpkg-deb --build "${PKG_DIR}" "${DEB_NAME}"

echo "✅ Paquet généré : ${DEB_NAME}"
