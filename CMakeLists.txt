cmake_minimum_required(VERSION 3.16)

project(demos VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(TestApp
    src/main.cpp
)

qt_add_qml_module(TestApp
    URI testapp
    VERSION 1.0
    QML_FILES
        qml/Main.qml
        RESOURCES
            config/android/AndroidManifest.xml
            config/android/build.gradle
            config/android/res/values/libs.xml
            config/android/res/xml/qtprovider_paths.xml
            config/android/gradle/wrapper/gradle-wrapper.jar
            config/android/gradle/wrapper/gradle-wrapper.properties
            config/android/gradle.properties
            config/android/gradlew
            config/android/gradlew.bat
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

# --- Packaging avec CPack ---
include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_NAME "TestApp")
set(CPACK_PACKAGE_VENDOR "Guillaume Belz")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Application Qt multiplateforme d'exemple")
set(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})
set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH 0)
set(CPACK_PACKAGE_CONTACT "dev@example.com")

# Formats selon l'OS
if(WIN32)
    set(CPACK_GENERATOR "ZIP;NSIS")
elseif(APPLE)
    set(CPACK_GENERATOR "DragNDrop;ZIP")
elseif(UNIX)
    set(CPACK_GENERATOR "DEB;RPM;TGZ")
endif()

# Définir des fichiers README ou LICENSE si désiré
set(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")

include(CPack)
