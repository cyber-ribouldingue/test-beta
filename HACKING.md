# 🧪 HACKING – Pour les développeurs avancés

Ce document décrit la structure technique du projet **TestApp**, les outils utilisés, et comment personnaliser ou étendre le projet sur toutes les plateformes.

---

## ⚙️ Arborescence technique

| Dossier                       | Rôle                                                        |
|------------------------------|-------------------------------------------------------------|
| `src/`                       | Code C++ principal                                          |
| `qml/`                       | Interface utilisateur en QML                                |
| `tests/`                     | Tests unitaires C++, Qt, QML                                |
| `installer/`                 | Scripts de packaging `.deb`, `.msi`, `.dmg`, `postinst`, etc |
| `platform/android/`          | Projet Android (Gradle)                                     |
| `platform/ios/`              | Projet iOS (CMake/Xcode)                                    |
| `platform/web/`              | Projet WebAssembly (CMake + Emscripten)                     |
| `.github/workflows/`         | Workflows CI GitHub Actions                                 |

---

## 🔧 Génération multiplateforme (CMake)

Le projet utilise un seul système CMake portable.  
Selon la cible, configurez avec les bons flags :

### Linux, Windows, macOS :


cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build

WebAssembly (avec emsdk) :

emcmake cmake -B build-web -S platform/web
cmake --build build-web
iOS (depuis macOS) :

cmake -B build-ios -GXcode -DCMAKE_SYSTEM_NAME=iOS
open build-ios/TestApp.xcodeproj
🧪 Tests unitaires
Les tests sont regroupés dans :

tests/cpp-tests/ : tests C++ (tst_calculator.cpp…)

tests/qt-tests/ : tests widgets Qt

tests/qml-tests/ : tests avec QML + QUICK_TEST_MAIN_WITH_SETUP

Les tests sont exécutés automatiquement dans GitHub Actions avec :

ctest --output-on-failure --parallel $(nproc)
📦 Packaging / Installateurs

Plateforme	Format	Dossier	Build
Linux	.deb	installer/linux/	build-deb.sh
Windows	.msi	installer/windows/	build-msi.bat
macOS	.dmg	installer/macos/	create-dmg.sh
Android	.apk	platform/android/	Gradle
iOS	.app/.ipa	platform/ios/	Xcode
Web	.wasm	platform/web/	emcmake
🧰 Outils utilisés
C++20 + Qt 6.8+

CMake 3.16+

clang-format, clang-tidy, cppcheck, clazy

llvm-cov pour couverture

Valgrind pour analyse mémoire

GitHub Actions pour CI/CD complète

🧪 GitHub Actions (CI/CD)
Les workflows sont dans .github/workflows/ :

tests.yaml, cmake.yaml, coverage.yaml, valgrind.yml, android-build.yml, etc.

Chaque plateforme a sa génération d’artefact .deb, .msi, .apk, etc.

🧩 Extensions possibles
Intégration de QtQuickControls2 avancés

Ajout de support Flatpak / Snap

Génération de .appimage pour Linux portable

Déploiement auto sur Google Play / TestFlight / GitHub Pages


