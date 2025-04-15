cmake_minimum_required(VERSION 3.16)

project(votre_projet VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Widgets)

qt_standard_project_setup()

qt_add_executable(votre_projet
    main.cpp
)

target_link_libraries(votre_projet PRIVATE Qt6::Widgets)
