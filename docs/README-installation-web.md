# 🌐 Installation et exécution de TestApp en WebAssembly

Ce guide explique comment utiliser l'application **TestApp** dans un navigateur web via WebAssembly (WASM).  
Le projet est compilé avec **Emscripten** et s'exécute en local ou sur GitHub Pages.

---

## ✅ Prérequis (développeurs)

- Navigateur web moderne (Chrome, Firefox, Safari…)
- Pas besoin d’installation locale pour exécuter l’app
- Compilation automatique via GitHub Actions (build `.wasm`, `.js`, `.html`)

---

## 🔧 Structure Web du projet

| Fichier                             | Rôle                                 |
|------------------------------------|--------------------------------------|
| `main.cpp`                         | Code source principal (C++)          |
| `index.html`                       | Point d’entrée de l’application Web  |
| `TestApp.wasm / TestApp.js`        | Générés automatiquement via Emscripten |
| `CMakeLists.txt`                   | Compilation avec emcmake             |

---

## 📥 Où récupérer l'application

### 📦 Build Web via GitHub Actions

1. Allez dans l’onglet [Actions](../../actions)
2. Sélectionnez le workflow **Build WebAssembly (WASM)**
3. Téléchargez l'artifact nommé :

testapp-web

yaml
Copier
Modifier

Il contient :
- `TestApp.js`
- `TestApp.wasm`
- `index.html`

---

## 🚀 Exécution en local

1. Décompressez `testapp-web.zip`
2. Ouvrez `index.html` dans un navigateur **avec un serveur local** :

Exemple rapide avec Python :


cd testapp-web
python3 -m http.server 8080
Puis ouvrez http://localhost:8080

⚠️ Ouvrir index.html directement avec “double clic” ne fonctionnera pas dans certains navigateurs à cause des restrictions CORS.

🌍 Déploiement sur GitHub Pages
Copiez le contenu du dossier build-web/ dans un dossier gh-pages/

Activez GitHub Pages dans Settings > Pages

Sélectionnez la branche main ou gh-pages, dossier / (root) ou /gh-pages/

Le site Web sera accessible à :

php-template
Copier
Modifier
https://<utilisateur>.github.io/<nom-du-repo>/
