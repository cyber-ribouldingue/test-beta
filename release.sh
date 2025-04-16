#!/bin/bash

# 🔖 Script de release GitHub
# Crée un tag git à partir du fichier VERSION et le pousse

set -e

if [ ! -f VERSION ]; then
  echo "❌ Fichier VERSION introuvable"
  exit 1
fi

VERSION=$(cat VERSION)

TAG="v$VERSION"

echo "📦 Création du tag $TAG..."

# Vérifie si le tag existe déjà
if git rev-parse "$TAG" >/dev/null 2>&1; then
  echo "⚠️ Le tag $TAG existe déjà."
  read -p "Voulez-vous forcer un nouveau tag ? (y/N) " confirm
  if [[ "$confirm" != "y" ]]; then
    echo "⛔ Abandon."
    exit 1
  fi
  git tag -d "$TAG"
fi

# Créer et pousser le tag
git tag "$TAG"
git push origin "$TAG"

echo "✅ Tag $TAG poussé avec succès."
echo "👉 La release GitHub sera générée automatiquement par release.yaml."
