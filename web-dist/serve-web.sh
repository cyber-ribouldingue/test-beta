#!/bin/bash

PORT=8080
DIR="web-dist"

echo "🌐 Lancement de TestApp WebAssembly sur http://localhost:$PORT"

# Vérifier que les fichiers essentiels existent
if [[ ! -f "$DIR/index.html" || ! -f "$DIR/TestApp.js" || ! -f "$DIR/TestApp.wasm" ]]; then
  echo "❌ Fichiers manquants dans $DIR/"
  echo "Assurez-vous que index.html, TestApp.js et TestApp.wasm sont présents."
  exit 1
fi

# Démarrer le serveur HTTP
cd "$DIR"
python3 -m http.server "$PORT"
