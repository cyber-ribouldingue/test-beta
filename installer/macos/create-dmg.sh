#!/bin/bash

APP_NAME="TestApp"
VERSION="1.0.0"
VOLUME_NAME="${APP_NAME} Installer"
BUILD_DIR="build"
DMG_NAME="${APP_NAME}_${VERSION}.dmg"

# Vérifier que l'application est là
if [ ! -d "${BUILD_DIR}/${APP_NAME}.app" ]; then
  echo "Erreur : ${APP_NAME}.app introuvable dans ${BUILD_DIR}/"
  exit 1
fi

# Créer le .dmg
hdiutil create -volname "${VOLUME_NAME}" -srcfolder "${BUILD_DIR}/${APP_NAME}.app" -ov -format UDZO "${DMG_NAME}"
echo "✅ Fichier .dmg généré : ${DMG_NAME}"
