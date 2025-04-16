# config/qt.cmake

find_package(Qt6 REQUIRED COMPONENTS ${QT_REQUIRED_MODULES})

qt_standard_project_setup(REQUIRES
    ${QT_VERSION_MAJOR}.${QT_VERSION_MINOR})
