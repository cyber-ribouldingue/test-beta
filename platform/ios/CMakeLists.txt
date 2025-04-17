# platform/ios/CMakeLists.txt

cmake_minimum_required(VERSION 3.16)

project(TestAppIOS LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_OSX_SYSROOT iphoneos)
set(CMAKE_OSX_ARCHITECTURES arm64)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_ALLOWED "NO")

# 📦 Création de l'exécutable iOS
qt_add_executable(TestApp
    ../../src/main.cpp
    ../../src/hello_ios.cpp
    ../../src/dummy_codeql.cpp
)

# 📚 Modules Qt requis
target_link_libraries(TestApp PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
    Qt6::QuickControls2
)

# 📦 Déclaration du module QML
qt_add_qml_module(TestApp
    URI TestApp
    VERSION 1.0
    QML_FILES
        ../../qml/Main.qml
)

# 📦 Propriétés spécifiques iOS
set_target_properties(TestApp PROPERTIES
    MACOSX_BUNDLE TRUE
    XCODE_ATTRIBUTE_CODE_SIGN_STYLE "Manual"
    XCODE_ATTRIBUTE_DEVELOPMENT_TEAM ""  # À remplir si besoin
)

# 📦 Installation
install(TARGETS TestApp
    BUNDLE DESTINATION .
)
