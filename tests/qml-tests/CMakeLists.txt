# tests/qml-tests/CMakeLists.txt – Tests QML

cmake_minimum_required(VERSION 3.16)
project(QmlTests LANGUAGES CXX)

enable_testing()

find_package(Qt6 REQUIRED COMPONENTS QuickTest Qml)

add_executable(QmlTest
    main.cpp
    setup.cpp
)

target_link_libraries(QmlTest PRIVATE Qt6::QuickTest Qt6::Qml)

add_test(NAME QmlTest COMMAND QmlTest)
