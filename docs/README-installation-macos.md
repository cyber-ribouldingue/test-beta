# 🍎 Installation de TestApp sous macOS (.dmg)

Ce guide vous explique comment installer TestApp sur un Mac via l’image disque `.dmg` fournie automatiquement dans les Releases GitHub.

---

## ✅ Prérequis

- macOS 10.14 ou supérieur
- Aucun outil de développement requis
- Fichier `.dmg` généré dans GitHub Actions

---

## 📥 Étapes d’installation

### 1. Télécharger le fichier `.dmg`

Accédez à l’onglet [Releases](../../releases) du dépôt :

> https://github.com/cyber-ribouldingue/test-beta/releases

Téléchargez le fichier :

TestApp_1.0.0.dmg

yaml
Copier
Modifier

---

### 2. Monter l’image disque

- Double-cliquez sur `TestApp_1.0.0.dmg`
- Une fenêtre s’ouvre avec l’application

---

### 3. Installer l’application

- Glissez-déposez **TestApp.app** dans **/Applications**

---

## 🚀 Lancer TestApp

- Depuis le dossier **Applications**
- Ou via Spotlight (`⌘ + espace`, taper “TestApp”)

---

## 🧹 Désinstaller TestApp

1. Ouvrez le dossier **Applications**
2. Supprimez **TestApp.app**

---

## 🔄 Mise à jour

Téléchargez une nouvelle version du `.dmg` dans les releases, ouvrez-le et remplacez l’ancienne app dans `/Applications`.

---

## 📁 Contenu du dépôt associé

| Fichier/Dossier                        | Utilité                          |
|---------------------------------------|----------------------------------|
| `installer/macos/create-dmg.sh`       | Génère le fichier `.dmg`         |
| `.github/workflows/macos-installer.yml` | Automatisation de la génération |

---

