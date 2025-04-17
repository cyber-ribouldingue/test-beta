# tests/qt-tests/CMakeLists.txt – Tests Qt Widgets

cmake_minimum_required(VERSION 3.16)
project(QtWidgetTests LANGUAGES CXX)

enable_testing()

find_package(Qt6 REQUIRED COMPONENTS Widgets Test)

add_executable(QtTestApp
    tst_test1.cpp
)

target_link_libraries(QtTestApp PRIVATE Qt6::Widgets Qt6::Test)

add_test(NAME QtTestApp COMMAND QtTestApp)
