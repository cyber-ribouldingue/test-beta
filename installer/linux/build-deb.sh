#!/bin/bash

APP_NAME="TestApp"
VERSION="1.0.0"
ARCH="amd64"
BUILD_DIR="build"
INSTALL_DIR="installer/linux"
PACKAGE_NAME="testapp_${VERSION}_${ARCH}.deb"

# 1. Nettoyage
rm -rf "${INSTALL_DIR}/usr"
mkdir -p "${INSTALL_DIR}/usr/local/bin"

# 2. Copie de l'exécutable compilé
cp "${BUILD_DIR}/${APP_NAME}" "${INSTALL_DIR}/usr/local/bin/"

# 3. Génération du .deb
dpkg-deb --build "${INSTALL_DIR}" "${PACKAGE_NAME}"

echo "✅ Paquet généré : ${PACKAGE_NAME}"
