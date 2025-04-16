cmake_minimum_required(VERSION 3.16)
project(QmlTests LANGUAGES CXX)

enable_testing()

find_package(Qt6 REQUIRED COMPONENTS QuickTest Qml)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_definitions(-DQUICK_TEST_SOURCE_DIR="${CMAKE_CURRENT_SOURCE_DIR}")

file(GLOB_RECURSE QML_FILES *.qml)
add_custom_target(qmlfiles SOURCES ${QML_FILES})

add_executable(QmlTest
    main.cpp
    setup.cpp
    setup.h
)

target_link_libraries(QmlTest
    PRIVATE
        Qt6::QuickTest
        Qt6::Qml
        Qt6::Quick
)

add_test(NAME QmlTest COMMAND QmlTest)

add_executable(QmlTests main.cpp setup.cpp)
add_test(NAME QmlTests COMMAND QmlTests)

target_link_libraries(QmlTests
    PRIVATE Qt6::QuickTest
    PRIVATE Qt6::Qml
)
