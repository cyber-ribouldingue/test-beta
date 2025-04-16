![Tests](https://github.com/cyber-ribouldingue/test-beta/actions/workflows/tests.yaml/badge.svg)
![Coverage](https://img.shields.io/badge/coverage-100%25-brightgreen)
![License](https://img.shields.io/github/license/cyber-ribouldingue/test-beta)
[![GitHub Pages](https://img.shields.io/website?url=https%3A%2F%2Fcyber-ribouldingue.github.io%2Ftest-beta%2F)](https://cyber-ribouldingue.github.io/test-beta/)
[![Latest Release](https://img.shields.io/github/v/release/cyber-ribouldingue/test-beta)](https://github.com/cyber-ribouldingue/test-beta/releases)

# TestApp – Projet multiplateforme Qt/C++

Ce dépôt GitHub fournit un environnement complet pour développer, tester, compiler, packager et publier une application Qt/C++ sur toutes les plateformes majeures : Linux, Windows, macOS, Android, iOS et WebAssembly.

---

## Objectifs du projet

Ce modèle a été conçu pour permettre à un développeur ou une petite équipe :

- de créer facilement une application multiplateforme avec Qt/C++,
- de bénéficier d'une chaîne CI/CD complète prête à l'emploi,
- de générer automatiquement les installeurs pour toutes les plateformes,
- de publier son application, avec tests, packaging et documentation,
- sans avoir besoin d’installer manuellement tous les outils de développement.

---

## Fonctionnalités principales

- Compatible Qt 6.8+ (QML, Widgets, QuickControls2)
- Organisation modulaire du projet (`src/`, `qml/`, `tests/`, `installer/`, `platform/`)
- Workflows GitHub Actions :
  - Compilation Linux, Windows, macOS, Android, iOS, WebAssembly
  - Tests C++, QML, QtWidgets
  - Analyse statique : clang-tidy, cppcheck, clazy
  - Couverture de tests avec `llvm-cov`
  - Packaging automatique : `.deb`, `.msi`, `.dmg`, `.apk`, `.ipa`, `.wasm`
  - Publication GitHub Releases et GitHub Pages
- Documentation utilisateur (docs/) et développeur (`HACKING.md`, `CONTRIBUTING.md`)
- Prise en charge de QDoc pour générer la documentation développeur

---

## Guide de démarrage rapide

1. Duplique ce dépôt (bouton "Use this template")
2. Clone ton dépôt sur ta machine :

   git clone https://github.com/<ton-compte>/testapp.git
   cd testapp
   Compile l’application localement :

cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
Lance les tests :

ctest --test-dir build --output-on-failure
Guides d'installation par plateforme
Les instructions détaillées sont disponibles dans les fichiers suivants :

README-installation-linux.md

README-installation-windows.md

README-installation-macos.md

README-installation-android.md

README-installation-ios.md

README-installation-web.md

Structure du dépôt

.
├── src/ # Code source principal C++
├── qml/ # Interface QML
├── tests/ # Tests unitaires C++, QML, Qt
├── docs/ # Documentation utilisateur
├── platform/ # Spécificités Android, iOS, WebAssembly
├── installer/ # Scripts pour .deb, .msi, .dmg
├── web-dist/ # Fichiers HTML/WASM pour GitHub Pages
├── .github/workflows/ # CI/CD GitHub Actions
Documentation développeur
CONTRIBUTING.md : comment contribuer au projet

HACKING.md : architecture technique et bonnes pratiques

ROADMAP.md : évolutions prévues

CHANGELOG.md : historique des versions

Publication et packaging
Lorsqu'un tag Git (v1.0.0, etc.) est poussé, le workflow release.yaml génère automatiquement :

le zip Windows, .msi

le paquet .deb Linux

le .dmg macOS

l’APK Android, le binaire iOS

la version Web dans /docs ou gh-pages/

Tests automatisés
Tests unitaires avec QTest (C++)

Tests QML avec QUICK_TEST_MAIN_WITH_SETUP

Couverture de code via llvm-cov + rapport HTML

Analyse mémoire via valgrind

Analyse statique intégrée (.clang-tidy, clang-format, cppcheck, clazy)

Lint automatisé sur PR + commits

Contact
Auteur : Cyber Ribouldingue
Email : cyber@example.com

Licence
Ce projet est sous licence MIT. Voir le fichier LICENSE.
