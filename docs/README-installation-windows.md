# 🪟 Installation de TestApp sous Windows (.msi)

Ce guide explique comment installer et désinstaller l’application **TestApp** sous Windows à partir de l’installeur `.msi` fourni dans les Releases GitHub.

---

## ✅ Prérequis

- Windows 10 ou supérieur
- Aucune ligne de commande requise
- Accès au fichier `TestAppInstaller.msi` depuis GitHub

---

## 📥 Étapes d’installation

### 1. Télécharger l’installeur `.msi`

Rendez-vous dans l’onglet [**Releases**](../../releases) de ce dépôt :

> 📦 https://github.com/cyber-ribouldingue/test-beta/releases

Téléchargez le fichier : -TestAppInstaller.msi

### 2. Lancer l’installation

1. Double-cliquez sur `TestAppInstaller.msi`
2. Suivez les étapes de l’assistant d’installation
3. À la fin, l’application est installée dans : C:\Program Files\TestApp\

   
---

## 🚀 Lancer TestApp

- Depuis le menu **Démarrer**, cherchez “TestApp”
- Ou double-cliquez sur le raccourci sur le bureau si créé
- L’application se lance avec interface graphique Qt

---

## 🧹 Désinstaller TestApp

### Méthode 1 : via les Paramètres

1. Ouvrir les **Paramètres Windows**
2. Allez dans **Applications > Applications installées**
3. Cherchez **TestApp**
4. Cliquez sur **Désinstaller**

### Méthode 2 : via le Panneau de configuration

1. Ouvrir le **Panneau de configuration**
2. Allez dans **Programmes > Programmes et fonctionnalités**
3. Sélectionner **TestApp**
4. Cliquez sur **Désinstaller**

---

## 🔄 Mise à jour

À chaque nouvelle version de TestApp :

- Téléchargez le nouveau `.msi` dans les Releases
- Lancez-le : il remplace automatiquement l’ancienne version

---

## 📁 Références du projet

Ce dépôt contient :

| Fichier/Dossier                       | Utilité                            |
|--------------------------------------|------------------------------------|
| `installer/windows/installer.wxs`    | Définition de l’installeur MSI     |
| `installer/windows/build-msi.bat`    | Script de création manuelle du MSI |
| `.github/workflows/windows-installer.yml` | Création automatique du `.msi`    |

---



