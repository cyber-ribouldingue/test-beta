cmake_minimum_required(VERSION 3.16)
project(CppTests LANGUAGES CXX)

enable_testing()

find_package(Qt6 REQUIRED COMPONENTS Test)
if (NOT Qt6::Test)
    message(FATAL_ERROR "❌ Qt6::Test est requis pour les tests C++")
else()
    message(STATUS "✅ Qt6::Test trouvé pour CppTests")
endif()

add_executable(CppTest
    tst_cpptest.cpp
    tst_calculator.cpp
)

target_link_libraries(CppTest PRIVATE Qt6::Test)

add_test(NAME CppTest COMMAND CppTest)
