#!/bin/bash

echo "Suppression du paquet testapp..."
sudo dpkg -r testapp

echo "Suppression des fichiers utilisateurs (optionnel)..."
sudo rm -f /usr/share/applications/testapp.desktop
sudo rm -f /usr/share/icons/hicolor/64x64/apps/testapp.png

echo "✅ TestApp désinstallé proprement."
