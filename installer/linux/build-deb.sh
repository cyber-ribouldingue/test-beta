#!/bin/bash

set -e

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

if [ ! -f "${BUILD_DIR}/${APP_NAME}" ]; then
  echo "❌ Erreur : binaire ${BUILD_DIR}/${APP_NAME} introuvable."
  exit 1
fi

cp "${BUILD_DIR}/${APP_NAME}" "${PKG_DIR}/usr/local/bin/"

if [ ! -f "${PKG_DIR}/../testapp.desktop" ]; then
  echo "❌ Erreur : fichier testapp.desktop introuvable."
  exit 1
fi

cp "${PKG_DIR}/../testapp.desktop" "${PKG_DIR}/usr/share/applications/"

if [ ! -f "${PKG_DIR}/../testapp.png" ]; then
  echo "❌ Erreur : icône testapp.png introuvable."
  exit 1
fi

cp "${PKG_DIR}/../testapp.png" "${PKG_DIR}/usr/share/icons/hicolor/64x64/apps/"

echo "📦 Création du paquet .deb…"
dpkg-deb --build "${PKG_DIR}" "${DEB_NAME}"

echo "✅ Paquet généré : ${DEB_NAME}"
