# tests/CMakeLists.txt – CMake principal pour les tests

cmake_minimum_required(VERSION 3.16)
project(AllTests LANGUAGES CXX)

enable_testing()

# Ajout conditionnel des sous-tests
if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/cpp-tests/CMakeLists.txt")
    add_subdirectory(cpp-tests)
endif()

if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/qt-tests/CMakeLists.txt")
    add_subdirectory(qt-tests)
endif()

if (EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/qml-tests/CMakeLists.txt")
    add_subdirectory(qml-tests)
endif()

