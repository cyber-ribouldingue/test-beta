cmake_minimum_required(VERSION 3.16)

project(TestApp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(TestApp
    src/main.cpp
)

qt_add_qml_module(TestApp
    URI TestApp
    VERSION 1.0
    QML_FILES qml/Main.qml
)

set_target_properties(TestApp PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)


target_link_libraries(TestApp
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS TestApp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)

add_subdirectory(tests/cpp-tests)
add_subdirectory(tests/qt-tests)
add_subdirectory(tests/qml-tests)
add_library(DummyIOS STATIC src/hello_ios.cpp)
add_library(CodeQLTarget STATIC src/dummy_codeql.cpp)
