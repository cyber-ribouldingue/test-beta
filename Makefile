# Makefile – Projet TestApp multiplateforme

APP_NAME=TestApp
BUILD_DIR=build

.PHONY: all linux windows macos android ios web clean serve

all: linux windows macos android ios web

# ----- Linux -----

linux:
	cmake -B $(BUILD_DIR) -DCMAKE_BUILD_TYPE=Release
	cmake --build $(BUILD_DIR)
	./installer/linux/build-deb.sh

# ----- Windows -----

windows:
	cd installer/windows && ./build-msi.bat

# ----- macOS -----

macos:
	cd installer/macos && ./create-dmg.sh

# ----- Android -----

android:
	cd platform/android && ./gradlew assembleDebug

# ----- iOS -----

ios:
	cmake -S platform/ios -B build-ios -GXcode -DCMAKE_SYSTEM_NAME=iOS

# ----- WebAssembly -----

web:
	source ./emsdk/emsdk_env.sh || true
	emcmake cmake -S platform/web -B build-web
	cmake --build build-web
	mkdir -p web-dist
	cp build-web/TestApp.html web-dist/index.html
	cp build-web/TestApp.js web-dist/
	cp build-web/TestApp.wasm web-dist/

# ----- Serveur local WebAssembly -----

serve:
	cd web-dist && python3 -m http.server 8080

# ----- Nettoyage -----

clean:
	rm -rf build build-ios build-web web-dist
	rm -f *.deb *.msi *.dmg *.apk *.ipa
