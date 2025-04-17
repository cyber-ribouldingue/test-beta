# tests/cpp-tests/CMakeLists.txt – Tests unitaires C++

cmake_minimum_required(VERSION 3.16)
project(CppTests LANGUAGES CXX)

enable_testing()

find_package(Qt6 REQUIRED COMPONENTS Test)

add_executable(CppTest
    tst_cpptest.cpp
    tst_calculator.cpp
)

target_link_libraries(CppTest PRIVATE Qt6::Test)

add_test(NAME CppTest COMMAND CppTest)

