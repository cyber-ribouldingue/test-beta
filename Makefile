# Makefile – Projet TestApp multiplateforme

APP_NAME=TestApp
BUILD_DIR=build

.PHONY: all linux windows macos android ios web clean serve

all: linux windows macos android ios web

## ----- Linux -----

linux:
	@echo "🔧 Compilation Linux"
	cmake -B $(BUILD_DIR) -DCMAKE_BUILD_TYPE=Release
	cmake --build $(BUILD_DIR)
	@echo "📦 Packaging .deb"
	./installer/linux/build-deb.sh

## ----- Windows -----

windows:
	@echo "🪟 Création de l'installateur MSI (Windows)"
	cd installer/windows && ./build-msi.bat

## ----- macOS -----

macos:
	@echo "🍎 Création du .dmg (macOS)"
	cd installer/macos && ./create-dmg.sh

## ----- Android -----

android:
	@echo "🤖 Compilation Android (.apk)"
	cd platform/android && ./gradlew assembleDebug

## ----- iOS -----

ios:
	@echo "📱 Compilation iOS (Xcode)"
	cmake -S platform/ios -B build-ios -GXcode -DCMAKE_SYSTEM_NAME=iOS

## ----- WebAssembly -----

web:
	@echo "🌐 Compilation WebAssembly"
	emcmake cmake -S platform/web -B build-web
	cmake --build build-web
	mkdir -p web-dist
	cp platform/web/index.html web-dist/
	cp build-web/$(APP_NAME).js web-dist/
	cp build-web/$(APP_NAME).wasm web-dist/

serve:
	@echo "🌍 Serveur local sur http://localhost:8080"
	cd web-dist && python3 -m http.server 8080

## ----- Nettoyage -----

clean:
	rm -rf build build-ios build-web web-dist
	rm -f *.deb *.msi *.dmg *.apk *.ipa
