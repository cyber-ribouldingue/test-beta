cmake_minimum_required(VERSION 3.16)

project(TestApp VERSION 1.0 LANGUAGES CXX)

# Configuration du standard C++
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Activation des fonctionnalités automatiques de Qt
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

# Recherche des modules Qt requis
find_package(Qt6 REQUIRED COMPONENTS Core Gui Quick)

# Recherche des modules Qt optionnels
find_package(Qt6 OPTIONAL_COMPONENTS QuickControls2 QuickTest Qml)

# Définition de l'exécutable principal
add_executable(TestApp
    src/main.cpp
    # Ajoutez ici d'autres fichiers sources si nécessaire
)

# Lien avec les bibliothèques Qt requises
target_link_libraries(TestApp
    PRIVATE
        Qt6::Core
        Qt6::Gui
        Qt6::Quick
)

# Inclusion des répertoires d'en-têtes
target_include_directories(TestApp
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/src
)

# Définition des répertoires pour les fichiers QML
set(QML_DIR ${CMAKE_CURRENT_SOURCE_DIR}/qml)
set(QML_OUTPUT_DIR ${CMAKE_CURRENT_BINARY_DIR}/qml)

# Copie des fichiers QML dans le répertoire de build
file(GLOB_RECURSE QML_FILES "${QML_DIR}/*.qml")
foreach(qml_file ${QML_FILES})
    file(RELATIVE_PATH rel_path "${QML_DIR}" "${qml_file}")
    set(dest "${QML_OUTPUT_DIR}/${rel_path}")
    add_custom_command(
        OUTPUT "${dest}"
        COMMAND ${CMAKE_COMMAND} -E copy_if_different "${qml_file}" "${dest}"
        DEPENDS "${qml_file}"
    )
    list(APPEND QML_OUTPUTS "${dest}")
endforeach()

add_custom_target(copy_qml ALL DEPENDS ${QML_OUTPUTS})
add_dependencies(TestApp copy_qml)

# Définition de la variable d'environnement pour les fichiers QML
target_compile_definitions(TestApp
    PRIVATE
        QML_IMPORT_PATH="${QML_OUTPUT_DIR}"
)

# Configuration des tests unitaires si QuickTest est disponible
if(TARGET Qt6::QuickTest AND TARGET Qt6::Qml)
    enable_testing()


# Ajout des tests C++
add_subdirectory(tests/cpp-tests)

# Ajout des tests QML
add_subdirectory(tests/qml-tests)

    # Test C++ avec Qt Test
    add_executable(CppTest
        tests/cpp-tests/test_main.cpp
        # Ajoutez ici d'autres fichiers de test C++ si nécessaire
    )
    target_link_libraries(CppTest
        PRIVATE
            Qt6::Core
            Qt6::Test
    )
    add_test(NAME CppTest COMMAND CppTest)

    # Test QML avec Qt Quick Test
    add_executable(QmlTest
        tests/qml-tests/tst_qml.cpp
    )
    target_link_libraries(QmlTest
        PRIVATE
            Qt6::QuickTest
            Qt6::Qml
    )
    add_test(NAME QmlTest COMMAND QmlTest)
endif()
