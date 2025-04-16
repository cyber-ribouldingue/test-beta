# 🧠 TestApp

![Tests](https://github.com/cyber-ribouldingue/test-beta/actions/workflows/tests.yaml/badge.svg)
![Coverage](https://img.shields.io/badge/coverage-100%25-brightgreen)
![License](https://img.shields.io/github/license/cyber-ribouldingue/test-beta)
[![GitHub Pages](https://img.shields.io/website?url=https%3A%2F%2Fcyber-ribouldingue.github.io%2Ftest-beta%2F)](https://cyber-ribouldingue.github.io/test-beta/)
[![Latest Release](https://img.shields.io/github/v/release/cyber-ribouldingue/test-beta)](https://github.com/cyber-ribouldingue/test-beta/releases)

---

## 📋 Présentation

**TestApp** est une application Qt/C++ moderne, modulaire et testable, conçue pour être **multiplateforme** (Linux, Windows, macOS, Android, iOS, WebAssembly) et **automatisée à 100 %** avec GitHub Actions.

Le projet inclut une architecture professionnelle avec :
- CI/CD complète
- Installateurs pour chaque plateforme
- Tests unitaires automatisés
- Documentation utilisateur et développeur
- Support packaging, couverture de code, QML, Web

---

## 📦 Guides d'installation par plateforme

🧊 [Linux (.deb)](docs/README-installation-linux.md)  
🪟 [Windows (.msi)](docs/README-installation-windows.md)  
🍎 [macOS (.dmg)](docs/README-installation-macos.md)  
🤖 [Android (.apk)](docs/README-installation-android.md)  
📱 [iOS (TestFlight/Xcode)](docs/README-installation-ios.md)  
🌐 [Web (WebAssembly)](docs/README-installation-web.md)

---

## 🧱 Structure du projet
├── src/ # Code C++ principal ├── qml/ # Interface QtQuick ├── tests/ # Tests unitaires et QML ├── installer/ # Scripts pour .deb, .msi, .dmg ├── platform/ # Android, iOS, WebAssembly ├── web-dist/ # Fichiers générés pour GitHub Pages ├── docs/ # Guides d’installation et documentation ├── .github/workflows/ # CI/CD multiplateforme


---

## 🧪 Tests

- Tests C++ (`CppTest`)
- Tests QML (`QuickTest`)
- Tests Qt Widgets (`QtTests`)
- Exécution en parallèle via `ctest --parallel`
- Couverture LLVM (`llvm-cov`)
- Analyse mémoire (`valgrind`)
- Intégration avec `clang-tidy`, `cppcheck`, `clazy`

---

## 🚀 Packaging & Déploiement

| Plateforme | Format     | Généré via        |
|------------|------------|-------------------|
| Linux      | `.deb`     | `dpkg-deb`        |
| Windows    | `.msi`     | WiX Toolset       |
| macOS      | `.dmg`     | `hdiutil`         |
| Android    | `.apk`     | Gradle            |
| iOS        | `.ipa/.app`| CMake + Xcode     |
| Web        | `.wasm`    | Emscripten + Pages|

---

## 🧠 Développeurs

📘 [Guide contribution (`CONTRIBUTING.md`)](CONTRIBUTING.md)  
🛠 [Guide hacking avancé (`HACKING.md`)](HACKING.md)  
📜 [Historique du projet (`CHANGELOG.md`)](CHANGELOG.md)

---



---

## 📝 Licence

Ce projet est sous licence MIT. Voir [LICENSE](LICENSE).

---

