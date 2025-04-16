cmake_minimum_required(VERSION 3.16)
project(CppTests LANGUAGES CXX)

enable_testing()

find_package(Qt6 REQUIRED COMPONENTS Test)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(CppTest
    tst_calculator.cpp
)

target_link_libraries(CppTest
    PRIVATE
        Qt6::Test
        Qt6::Core
)

add_test(NAME CppTest COMMAND CppTest)

add_executable(CppTest tst_cpptest.cpp)
add_test(NAME CppTest COMMAND CppTest)

target_link_libraries(CppTest PRIVATE Qt6::Test)
