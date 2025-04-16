# 📱 Installation de TestApp sur iOS (TestFlight ou Xcode)

Ce guide explique comment compiler, tester et publier l'application **TestApp** pour iOS à l'aide d'Xcode, en utilisant le code source situé dans `platform/ios/`.

---

## ✅ Prérequis

- Un Mac avec **Xcode** installé
- Un compte **Apple Developer**
- Accès à **Xcode + Provisioning Profile**
- Qt compilé pour iOS (si Qt utilisé)
- Code source dans `platform/ios/`

---

## 🛠 Compilation via CMake (localement sur macOS)

1. Ouvrir un terminal
2. Positionner les variables pour CMake iOS

```bash
cd platform/ios
