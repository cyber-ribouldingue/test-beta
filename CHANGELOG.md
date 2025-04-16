# 🗒️ CHANGELOG – TestApp

Ce fichier suit toutes les modifications notables apportées au projet **TestApp**.  
Ce projet suit les conventions de versionnage [SemVer](https://semver.org/lang/fr/).

---

## [1.0.0] – 2024-04-16

### 🚀 Première version stable multiplateforme

#### ✅ Général
- Structure de projet modulaire : `src/`, `qml/`, `tests/`, `installer/`, `platform/`
- CMake propre, portable, compatible Linux/Windows/macOS/iOS/Android/Web
- Utilisation de Qt 6.8+ et C++20
- Interface QML minimaliste prête à étendre

#### 🧪 Tests
- Tests C++ avec QtTest (`CppTest`)
- Tests UI Qt Widgets (`QtTests`)
- Tests QML interactifs (`QmlTests`)
- Couverture via LLVM + badge dans le README
- Analyse mémoire avec Valgrind

#### 🛠 CI/CD
- Workflows GitHub Actions :
  - `tests.yaml` (tests unitaires)
  - `build.yml` (multi-OS)
  - `coverage.yml`, `valgrind.yml`, `lint.yml`

#### 📦 Packaging multiplateforme
- `.deb` pour Linux (script + icône + .desktop + postinst)
- `.msi` pour Windows via WiX Toolset
- `.dmg` pour macOS avec `hdiutil`
- `.apk` pour Android via Gradle (CI + téléchargement)
- `.ipa` pour iOS (CMake + Xcode)
- `.wasm` pour Web via Emscripten (avec GitHub Pages)

#### 📚 Documentation
- `README.md` global avec badges et guides
- 6 guides d’installation : Linux, Windows, macOS, Android, iOS, Web
- `README-installation-<platform>.md` par plateforme
- Dossier `docs/` avec guides, scripts, et changelog

---

## [0.1.0] – Prototype initial (non publié)

- Base Qt/C++/QML testée localement
- Tests unitaires initiaux C++
- Expérimentation packaging Linux

---

## 🔖 Historique des tags

- `v1.0.0` – version stable multiplateforme
