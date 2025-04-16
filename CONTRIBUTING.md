# 🤝 Contribuer au projet TestApp

## 👋 Bienvenue aux nouveaux contributeurs

Ce projet accueille avec plaisir les nouveaux développeurs, étudiants ou curieux.  
Aucune contribution n’est trop petite : corriger une faute, améliorer un test, documenter une ligne…

Voici comment démarrer :

1. Lisez le [README.md](README.md) pour comprendre la structure du projet.
2. Consultez les guides dans `docs/` pour installer localement TestApp.
3. Proposez une amélioration en ouvrant une **Issue** ou en forkant le dépôt.
4. Consultez `HACKING.md` pour mieux comprendre le fonctionnement interne.


## 🧱 Structure du dépôt

- `src/` : code source principal (C++)
- `qml/` : interface graphique en QML
- `tests/` : tests unitaires (C++, Qt, QML)
- `installer/` : scripts de packaging (.deb, .msi, .dmg)
- `platform/` : builds spécifiques (android, ios, web)
- `.github/workflows/` : CI/CD GitHub Actions

---

## 🛠 Préparer votre environnement

1. Clonez le dépôt :

git clone https://github.com/cyber-ribouldingue/test-beta.git
cd test-beta
Installez Qt 6.2+ et CMake ≥ 3.16

Compilation :


cmake -B build -DCMAKE_BUILD_TYPE=Debug
cmake --build build
🧪 Lancer les tests

cd build
ctest --output-on-failure --parallel $(nproc)
Les tests se trouvent dans tests/.

💡 Proposer une contribution
Créez une branche :


git checkout -b feature/nom-de-votre-fonction
Ajoutez vos commits :


git commit -am "✨ ajout de la fonctionnalité"
Poussez et ouvrez une Pull Request depuis GitHub

✅ Bonnes pratiques
Respectez le formatage (clang-format)

Ajoutez des tests si vous modifiez des fonctionnalités

Documentez clairement vos modifications dans la Pull Request

Utilisez des commits clairs et lisibles
