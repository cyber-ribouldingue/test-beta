#!/bin/bash

set -e

APP_NAME="TestApp"
VERSION="1.0.0"
VOLUME_NAME="${APP_NAME} Installer"
BUILD_DIR="build"
DMG_NAME="${APP_NAME}_${VERSION}.dmg"

# Vérifier que l'application est bien là
if [ ! -d "${BUILD_DIR}/${APP_NAME}.app" ]; then
  echo "❌ Erreur : ${BUILD_DIR}/${APP_NAME}.app introuvable."
  exit 1
fi

# Nettoyer les anciens fichiers DMG si présents
rm -f "${DMG_NAME}"

# Créer une copie temporaire
mkdir -p tmp-dmg
cp -R "${BUILD_DIR}/${APP_NAME}.app" tmp-dmg/

# Créer l'image disque compressée
hdiutil create -volname "${VOLUME_NAME}" -srcfolder "tmp-dmg" -ov -format UDZO "${DMG_NAME}"

# Nettoyage
rm -rf tmp-dmg

echo "✅ DMG généré : ${DMG_NAME}"
