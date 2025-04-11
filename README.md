
![clang-format](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format-check.yaml/badge.svg)
![clang-format](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format-daily.yaml/badge.svg)
![clang-format](https://github.com/GuillaumeBelz/test/actions/workflows/clang-format-pr.yaml/badge.svg)

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

Pour tester si un script fonctionne comme attendu, il suffit de se mettre a la place des utilisateurs. Par exemple, pour tester un script de compilation, il suffit de télécharger le zip ou l'installateur de l'application que le script a produit et l'installer sur la machine. L'application devrait demarer sans erreur et afficher une fentre contenat "hello world" sur un fond blanc. Par exemple sur Mac (les messages affichés peuvent changer) :

![Screenshot 2025-03-31 at 8 45 07 PM](https://github.com/user-attachments/assets/9354298a-8d4e-4e8e-9bb1-79859ff423c3)

La compilation de l'application produit plusieurs messages indiquant la progression et le resultat. Il ne doit pas y avoir de message d'erreur (mais c'est possible d'avoir des averstissements "warning"). Par exemple sur Mac :

![Screenshot 2025-03-31 at 8 44 36 PM](https://github.com/user-attachments/assets/88b032f9-81a9-407c-afbd-2ca3ee071997)

Pour les tests du code C++ ("Test1"), cela doit afficher que tous les tests passent ("passed") et aucun échec ("failed"). Par exemple sur Mac :

![Screenshot 2025-03-31 at 8 45 24 PM](https://github.com/user-attachments/assets/0595cd7b-7bc8-4174-8bee-e21fc0dffab6)

Pareil pour les tests graphiques ("UiTest1"), cela doit affiher que des tests qui passent, pas d'erreur. Par exemple sur Mac :

![Screenshot 2025-03-31 at 8 45 39 PM](https://github.com/user-attachments/assets/2e5b163c-d28c-41ca-bc33-9860e5fe3b52)

