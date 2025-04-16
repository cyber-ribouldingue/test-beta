# Guide de développement - TestApp

Bienvenue dans le guide officiel de développement du projet **TestApp**.

## 🧱 Structure du projet

- `src/` : code source C++
- `qml/` : interface utilisateur QML
- `tests/` : tests unitaires (C++, Qt, QML)
- `platform/` : configurations spécifiques Android, iOS, WebAssembly
- `docs/` : documentation développeur et utilisateur

## 🚀 Étapes de compilation (local)

```bash
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
./build/TestApp
