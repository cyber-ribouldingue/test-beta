# Tests du projet TestApp

## Structure

- `cpp-tests/` : Tests unitaires C++
- `qt-tests/` : Tests UI Qt Widgets
- `qml-tests/` : Tests QML avec QtQuickTest

## Exécution en local

```bash
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --target CppTest QtTests QmlTests
./build/tests/cpp-tests/CppTest
./build/tests/qt-tests/QtTests
./build/tests/qml-tests/QmlTests
