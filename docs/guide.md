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
cd build
cpack
cmake --build build --target CppTest QtTests QmlTests
./build/tests/cpp-tests/CppTest
./build/tests/qt-tests/QtTests
./build/tests/qml-tests/QmlTests
cmake --preset android
cmake --preset ios
cmake --preset wasm


---

## 📁 Fichier 2 : `docs/testabilite.md`  
**📍Chemin** : `./docs/testabilite.md`  
**🛠️ Statut** : **Modifié**

```markdown
# Testabilité du projet TestApp

## Pourquoi tester ?

- Fiabilité du code
- Meilleure maintenabilité
- Déploiement continu sans régression

## 🧪 Types de tests utilisés

| Type         | Outil         | Répertoire       |
|--------------|---------------|------------------|
| Unitaire C++ | Qt Test       | `tests/cpp-tests/` |
| UI Qt        | Qt Widgets    | `tests/qt-tests/` |
| QML          | QtQuickTest   | `tests/qml-tests/` |

## 📊 Couverture

La couverture est mesurée avec `llvm-cov` dans GitHub Actions.

## 🧱 TDD

Le projet encourage une approche TDD :

1. Écrire un test qui échoue
2. Implémenter la fonctionnalité
3. Vérifier que le test passe
4. Refactoriser


