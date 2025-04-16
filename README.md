-![Coverage](https://img.shields.io/badge/coverage-100%25-brightgreen)

-![Statut des tests](https://github.com/cyber-ribouldingue/tests-beta/actions/workflows/tests.yml/badge.svg)
--![Build Status](https://github.com/<utilisateur>/TestApp/actions/workflows/ci.yml/badge.svg)![Coverage Status]-(https://github.com
::contentReference[oaicite:25]{index=25}
 

TestApp

​

 Présentation
TestApp est une application multiplateforme développée avec Qt 6.8.3, C++20 et QML. Elle est conçue pour être intuitive, simple à utiliser et compatible avec les plateformes desktop, mobile (Android/iOS) et Web (WASM).​

 -[Guide d'installation Linux (.deb) via GitHub](docs/README-installation-linux.md)
 -[Guide d'installation Windows (.msi)](docs/README-installation-windows.md)
 -[Guide d'installation Android (.apk)](docs/README-installation-android.md)

 Structure du projet
bash
Copier
Modifier
.
├── src/                    # Code source C++
├── qml/                    # Interface utilisateur QML
├── tests/                  # Tests unitaires et d'intégration
│   ├── cpp-tests/          # Tests C++ avec Qt Test
│   ├── qt-tests/           # Tests UI Qt Widgets
│   └── qml-tests/          # Tests QML avec QtQuickTest
├── platform/               # Configurations spécifiques aux plateformes
│   ├── android/
│   ├── ios/
│   └── wasm/
├── docs/                   # Documentation technique et utilisateur
├── CMakeLists.txt          # Configuration principale CMake
└── .gitignore              # Fichiers et répertoires à ignorer par Git
🚀 Fonctionnalités
Interface utilisateur réactive en QML avec Qt Quick Controls

Structure modulaire avec séparation claire du code source et de l'interface

Tests unitaires en C++, Qt et QML intégrés

Compatibilité avec les plateformes Android, iOS, WebAssembly, Windows, Linux et macOS

Intégration continue via GitHub Actions

Documentation générée automatiquement avec QDoc​

 Compilation
Prérequis
Qt 6.8.3 ou supérieur

CMake 3.16 ou supérieur

Compilateur C++20 compatible​

Instructions
bash
Copier
Modifier
cmake -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build
./build/TestApp
🧪 Tests
bash
Copier
Modifier
cmake --build build --target CppTest QtTests QmlTests
./build/tests/cpp-tests/CppTest
./build/tests/qt-tests/QtTests
./build/tests/qml-tests/QmlTests
 Packaging
bash
Copier
Modifier
cd build
cpack
 Documentation
La documentation technique est générée avec QDoc :​
Reddit
+8
GitHub
+8
GitHub
+8

bash
Copier
Modifier
qdoc docs/testapp.qdocconf
La documentation utilisateur est disponible dans docs/index.html.​

 Contribution
Les contributions sont les bienvenues !​

Forkez le dépôt

Créez une branche (git checkout -b feature/ma-fonctionnalite)

Commitez vos modifications (git commit -am 'Ajout de ma fonctionnalité')

Poussez la branche (git push origin feature/ma-fonctionnalite)

Ouvrez une Pull Request​

 Licence
Ce projet est sous licence MIT. Voir le fichier LICENSE pour plus d'informations.
***********************************************************************
[![Pages](https://github.com/GuillaumeBelz/cyber-ribouldingue-test-beta/actions/workflows/pages/pages-build-deployment/badge.svg)](https://guillaumebelz.github.io/cyber-ribouldingue-test-beta/)
[![clang-format](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format-check.yaml/badge.svg)](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format-check.yaml)
[![clang-format](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format-daily.yaml/badge.svg)](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format-daily.yaml)
[![clang-format](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format-pr.yaml/badge.svg)](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format-pr.yaml)

Les developpeurs C++/Qt peuvent facilement creer des projets avec QtCreator https://doc.qt.io/qtcreator/creator-project-creating.html et les executer sur Desktop https://doc.qt.io/qtcreator/creator-build-example-application.html et sur mobile https://doc.qt.io/qtcreator/qtcreator-accelbubble-example.html. Cet outil est tres bien pour les developpeurs, pour creer une application sur une machine locale, mais la création d'une application a destination du grand public nécessite d'autres types d'outils :

- pour ne pas avoir a installer les outls de developpeurs
- pour que l'application soit disponible via des installateurs ou les app stores des differentes plateformes
- pour automatiser certaines taches (compilation de l'application sur toutes les plateformes supportées, executer les tests pour verifier qu'il n'y a pas de bugs, generer la documentation, etc)

Le but de ce dépot GitHub est de founir un maximum d'outils pour la production d'applications grand public. Idealement, le developpeur duplique le dépot GitHub, modifie le code pour creer son application sur sa machine locale, puis lance les scripts qui automatisent tout le processus. Cela facilitera la creation d'application C++/Qt, en particulier pour les petites equipes de developpeurs et les projets open source.

Quelques exemples :

- https://github.com/slint-ui/slint/actions
- https://github.com/flameshot-org/flameshot/actions
- https://github.com/musescore/MuseScore/actions
- https://github.com/mltframework/shotcut/actions/workflows/check-code-format.yml

A chaque fois, les scripts peuvent etre lancé sur :

  - [ ] sur les GitHub Pull Request check
  - [ ] dans un build journalier
  - [ ] pour la release

-----

A faire :

- [ ] creer un script pour compiler l'application C++/Qt
  - [ ] linux
  - [ ] window
  - [ ] mac
  - [ ] ios
  - [ ] android
  - [ ] (version web de l'application ?)
  - [ ] afficher le resultat des compilations avec des icones ![example workflow](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format.yml/badge.svg) ![example workflow](https://github.com/GuillaumeBelz/test/actions/workflows/cmake.yml/badge.svg)
  - [ ] executer clang-format sur les GitHub Pull Request check
  - [ ] executer clang-tidy sur le code
  - [ ] executer cppcheck sur le code
  - [ ] executer clazy sur le code
  - [ ] script pour generer les differentes traductions
- [ ] creer un script pour compiler et executer les tests
  - [ ] tests
  - [ ] ui-tests
  - [ ] afficher le resultat des tests avec des icones
  - [ ] lancer llvm-cov sur les tests
  - [ ] executer clang sanitizers sur les tests
- [ ] generer la documentation
  - [ ] pour les developpeurs, avec qdoc
  - [ ] pour les utilisateurs (a voir pour l'outil)
- [ ] publication de l'application sur les differentes plateformes
  - [ ] generer un zip avec l'application
  - [ ] generer un installeur pour window (.msi ?)
  - [ ] generer un installer pour mac (.dmg ?)
  - [ ] generer un installer pour linux (.deb, .rpm ?)
  - [ ] generer le projet pour les app stores (a voir comment)
- [ ] ecrire la documentation pour utiliser ce depot, incluant un tuto sur comment gerer un projet, comment gerer les retours utilisateurs/issues, pour ameliorer l'UX, etc
- [ ] creer des vraies applications, pour tester ce depot

-----

Pour tester si un script fonctionne comme attendu, il suffit de se mettre a la place des utilisateurs. Par exemple, pour tester un script de compilation, il suffit de télécharger le zip ou l'installateur de l'application que le script a produit et l'installer sur la machine. L'application devrait demarer sans erreur et afficher une fentre contenat "hello world" sur un fond blanc.
