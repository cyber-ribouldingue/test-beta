# Guide Utilisateur – TestApp

Bienvenue dans TestApp, une application Qt/C++ multiplateforme.  
Ce guide explique comment l’installer, l’utiliser, exécuter les tests et générer des installeurs.

## Prérequis

Aucun outil de développement n’est requis si vous utilisez les installeurs générés automatiquement.

Pour compiler l'application vous-même, il faut :

- CMake 3.16 ou plus
- Qt 6.8.x
- Un compilateur C++20 (GCC, Clang, MSVC, etc.)
- Git (optionnel)
- Ninja (recommandé)
- QDoc (pour la documentation développeur)

## Installation de l'application

Les installeurs sont générés automatiquement à chaque mise à jour du projet.

| Plateforme | Fichier                            | Instructions |
|------------|-------------------------------------|--------------|
| Windows    | TestApp-x.y.z.msi ou .zip          | Double-cliquez pour installer ou extraire |
| macOS      | TestApp-x.y.z.dmg                  | Ouvrez, glissez dans /Applications |
| Linux      | TestApp-x.y.z.deb ou .rpm          | sudo dpkg -i ou sudo rpm -i |
| Android    | TestApp-debug.apk                  | Installer via câble USB ou ADB |
| Web        | index.html (dans build-wasm)       | Ouvrir dans un navigateur compatible WebAssembly |

## Lancement de l'application

### Desktop (Windows, Linux, macOS)

Après installation, lancez TestApp depuis le menu ou manuellement :

    ./TestApp

Vous verrez une fenêtre affichant "Hello World" sur fond blanc.

### Android

1. Activez le mode développeur et le débogage USB sur votre appareil.
2. Installez le fichier APK avec la commande suivante :

    adb install -r TestApp-debug.apk

## Exécution des tests

Le projet contient trois types de tests automatisés.

### Tests unitaires C++

    ./CppTest

### Tests Qt (QTest/QGuiApplication)

    ./QtTests

### Tests QML (QtQuickTest)

    ./QmlTests

Chaque exécutable doit afficher uniquement des résultats "passed" (aucune erreur ni échec).

## Compilation manuelle (pour les développeurs)

1. Clonez le dépôt :

    git clone https://github.com/votre-utilisateur/cyber-ribouldingue-test-beta.git
    cd cyber-ribouldingue-test-beta

2. Compilez avec CMake :

    cmake -B build -DCMAKE_BUILD_TYPE=Release
    cmake --build build

## Création d’un installeur avec CPack

Après compilation, dans le dossier `build` :

    cpack

Cela génère automatiquement les fichiers suivants selon votre système :

- .zip, .msi pour Windows
- .dmg pour macOS
- .deb, .rpm, .tar.gz pour Linux

## Générer la documentation développeur

Lancer la commande suivante :

    qdoc docs/testapp.qdocconf

Les fichiers HTML seront générés dans `docs/build/`.

## Structure du projet

    ├── src/           # Code C++ principal
    ├── qml/           # Interface utilisateur (QML)
    ├── tests/         # Tests unitaires, UI et QML
    ├── config/        # Configuration Qt, Android, Gradle
    ├── docs/          # Documentation (utilisateur + développeur)
    ├── .github/       # Workflows GitHub Actions

## Support

En cas de problème ou de question :

- Créez une issue sur GitHub
- Contactez le mainteneur : dev@example.com

## Licence

Ce projet est distribué sous licence MIT.  
Copyright (c) 2022–2025 Guillaume Belz
