cmake_minimum_required(VERSION 3.16)
project(QtGuiTests LANGUAGES CXX)

enable_testing()

find_package(Qt6 REQUIRED COMPONENTS Gui Test Widgets)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(QtTests tst_test1.cpp)
add_test(NAME QtTests COMMAND QtTests)

target_link_libraries(QtTests PRIVATE Qt6::Gui Qt6::Test Qt6::Widgets)
