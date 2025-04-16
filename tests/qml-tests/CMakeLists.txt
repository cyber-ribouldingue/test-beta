# CMakeLists.txt – tests/qml-tests

cmake_minimum_required(VERSION 3.16)
project(QmlTests LANGUAGES CXX)

enable_testing()

# ✅ Vérification de Qt QuickTest
find_package(Qt6 REQUIRED COMPONENTS QuickTest Qml)
if (NOT Qt6::QuickTest)
    message(FATAL_ERROR "❌ Qt6::QuickTest est requis pour les tests QML")
else()
    message(STATUS "✅ Qt6::QuickTest trouvé pour QmlTests")
endif()

# 🎯 Test QML avec setup personnalisé
add_executable(QmlTest
    main.cpp
    setup.cpp
)

target_link_libraries(QmlTest PRIVATE Qt6::QuickTest Qt6::Qml)

add_test(NAME QmlTest COMMAND QmlTest)
