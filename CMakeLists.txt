cmake_minimum_required(VERSION 3.16)
project(test_beta LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Définir le chemin d'installation de Qt6
set(CMAKE_PREFIX_PATH "$ENV{HOME}/Qt/6.6.3/macos")

find_package(Qt6 REQUIRED COMPONENTS Widgets Quick Gui QuickTest)

qt_standard_project_setup()

# Application principale
add_executable(app_main src/main.cpp)
target_link_libraries(app_main PRIVATE Qt6::Widgets Qt6::Quick Qt6::Gui)

# Tests QML
add_executable(qml_tests tests/qml-tests/main.cpp)
target_link_libraries(qml_tests PRIVATE Qt6::Widgets Qt6::Quick Qt6::Gui Qt6::QuickTest)
