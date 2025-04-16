cmake_minimum_required(VERSION 3.16)

project(TestApp VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 📦 Liste des modules Qt requis
set(REQUIRED_QT_MODULES
    Core
    Gui
    Widgets
    Qml
    Quick
    QuickControls2
    QuickTest
)

# ✅ Chargement de chaque module un par un avec vérification
foreach(module IN LISTS REQUIRED_QT_MODULES)
    find_package(Qt6 COMPONENTS ${module} REQUIRED)
    if (NOT Qt6::${module})
        message(FATAL_ERROR "❌ Qt6::${module} est requis mais introuvable")
    else()
        message(STATUS "✅ Qt6::${module} trouvé")
    endif()
endforeach()

# 📁 Répertoire source principal
add_subdirectory(src)

# 📁 Interface QML si séparée
if(EXISTS "${CMAKE_SOURCE_DIR}/qml")
    file(GLOB QML_FILES qml/*.qml)
    file(COPY ${QML_FILES} DESTINATION ${CMAKE_BINARY_DIR}/qml)
endif()

# 🧪 Tests conditionnels
include(CTest)
enable_testing()

if(BUILD_TESTING)
    add_subdirectory(tests/cpp-tests)
    add_subdirectory(tests/qt-tests)
    add_subdirectory(tests/qml-tests)
endif()
