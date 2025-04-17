# platform/web/CMakeLists.txt

cmake_minimum_required(VERSION 3.16)

project(TestAppWeb LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 📦 Ajout de l'exécutable principal
qt_add_executable(TestApp
    ../../src/main.cpp
    ../../src/dummy_codeql.cpp
    ../../src/hello_ios.cpp
)

# 📚 Lien avec les modules Qt nécessaires
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

# 🌐 Emscripten spécifique : output en .html
set_target_properties(TestApp PROPERTIES
    SUFFIX ".html"
)

# 📦 Installation
install(TARGETS TestApp
    DESTINATION .
)
