cmake_minimum_required(VERSION 3.15)
project(TestApp)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)

# Vérification des modules Qt requis
find_package(Qt6 REQUIRED COMPONENTS Core Gui Widgets Qml Quick QuickControls2 QuickTest)

# Déclaration de l'exécutable principal
add_executable(TestApp
    src/main.cpp
    src/mainwindow.cpp
    src/mainwindow.ui
    resources.qrc
)

# Lien avec les bibliothèques Qt
target_link_libraries(TestApp PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Widgets
    Qt6::Qml
    Qt6::Quick
    Qt6::QuickControls2
)

# Intégration des tests
include(CTest)
if(BUILD_TESTING)
    add_subdirectory(tests/cpp-tests)
    add_subdirectory(tests/qt-tests)
    add_subdirectory(tests/qml-tests)
endif()
