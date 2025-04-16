# 🤖 Installation de TestApp sur Android (.apk)

Ce guide vous explique comment installer et tester l’application **TestApp** sur un appareil Android à partir du fichier `.apk` généré automatiquement dans ce dépôt GitHub.

---

## ✅ Prérequis

- Un smartphone ou tablette Android (Android 5.0+)
- L’option **“Sources inconnues”** activée pour autoriser l’installation manuelle
- Le fichier `TestApp-debug.apk` généré par GitHub Actions (voir Releases)

---

## 📥 Étapes d'installation (sans Android Studio)

### 1. Télécharger l’APK

Allez dans l’onglet [**Releases**](../../releases) du dépôt GitHub :

> 📎 https://github.com/cyber-ribouldingue/test-beta/releases

Téléchargez le fichier suivant sur votre appareil :

TestApp-debug.apk

yaml
Copier
Modifier

---

### 2. Installer l’application

1. Ouvrez le fichier `.apk` sur votre téléphone
2. Confirmez l’installation (acceptez les autorisations)
3. Une fois installé, ouvrez **TestApp** depuis le menu des applications

---

## 🧪 Tester l'application

L'application se lance comme toute autre app Android.  
Elle a été compilée avec le SDK Android natif et s’ouvre sans permissions spéciales.

---

## 🔁 Mettre à jour l’application

1. Re-téléchargez le `.apk` depuis la dernière release
2. Ouvrez-le sur votre téléphone
3. Cliquez sur **“Mettre à jour”**

---

## 🧹 Désinstaller TestApp

1. Allez dans **Paramètres > Applications**
2. Sélectionnez **TestApp**
3. Cliquez sur **Désinstaller**

---

## 📁 Références techniques du dépôt

| Dossier/Fichier                                | Rôle                                  |
|------------------------------------------------|----------------------------------------|
| `platform/android/`                            | Projet Android complet (gradle, src)  |
| `.github/workflows/android-build.yml`          | Workflow de compilation automatique    |
| `TestApp-debug.apk` (dans Releases)            | Fichier installable sur téléphone      |

---

## 🛠 Pour les développeurs

Si vous souhaitez recompiler manuellement :

1. Ouvrez `platform/android/` dans Android Studio
2. Lancez `Build > Build APK`
3. Récupérez le `.apk` dans `app/build/outputs/apk/debug/`

---
