cmake_minimum_required(VERSION 3.16)

project(votre_projet VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Ajoutez le chemin d'installation de Qt6 à CMAKE_PREFIX_PATH
# Remplacez le chemin par l'emplacement réel de votre installation Qt6
set(CMAKE_PREFIX_PATH "/Users/runner/Qt/6.6.3/macos")

find_package(Qt6 REQUIRED COMPONENTS Widgets)

qt_standard_project_setup()

qt_add_executable(votre_projet
    main.cpp
)

target_link_libraries(votre_projet PRIVATE Qt6::Widgets)
