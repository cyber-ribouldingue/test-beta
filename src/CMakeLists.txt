# src/CMakeLists.txt

cmake_minimum_required(VERSION 3.16)

project(TestApp LANGUAGES CXX)

# 📦 Création de l'exécutable principal
qt_add_executable(TestApp
    main.cpp
    dummy_codeql.cpp
    hello_ios.cpp
)

# 📚 Liens aux modules Qt nécessaires
target_link_libraries(TestApp PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
    Qt6::QuickControls2
)

# 📦 Déclaration du module QML pour charger Main.qml
qt_add_qml_module(TestApp
    URI TestApp
    VERSION 1.0
    QML_FILES
        ../qml/Main.qml
)

# 🖥️ Propriétés spécifiques selon plateformes
set_target_properties(TestApp PROPERTIES
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

# 📦 Installation finale
install(TARGETS TestApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
