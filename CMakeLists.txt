# CMakeLists.txt — Fichier principal du projet
cmake_minimum_required(VERSION 3.21)

project(TestApp VERSION 0.1 LANGUAGES CXX)

# Configuration C++
include(config/cpp.cmake)

# Détection de la version Qt (centralisée)
include(config/qt-version.cmake)
include(config/qt-modules.cmake)
include(config/qt.cmake)

# Déclaration de l'application principale
qt_add_executable(TestApp
    src/main.cpp
)

qt_add_qml_module(TestApp
    URI TestApp
    VERSION 1.0
    QML_FILES
        qml/Main.qml
)

set_target_properties(TestApp PROPERTIES
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(TestApp PRIVATE ${QT_REQUIRED_MODULES})

# Installation
include(GNUInstallDirs)
install(TARGETS TestApp
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

# Modules secondaires
add_library(DummyIOS STATIC src/hello_ios.cpp)
add_library(CodeQLTarget STATIC src/dummy_codeql.cpp)

# Tests
enable_testing()
add_subdirectory(tests/cpp-tests)
add_subdirectory(tests/qt-tests)
add_subdirectory(tests/qml-tests)
