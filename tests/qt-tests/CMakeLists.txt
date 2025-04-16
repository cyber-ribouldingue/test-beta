# CMakeLists.txt – tests/qt-tests

cmake_minimum_required(VERSION 3.16)
project(QtWidgetTests LANGUAGES CXX)

enable_testing()

# ✅ Vérification des modules requis
find_package(Qt6 REQUIRED COMPONENTS Widgets Test)
if (NOT Qt6::Test OR NOT Qt6::Widgets)
    message(FATAL_ERROR "❌ Qt6::Test et Qt6::Widgets sont requis pour les tests Qt Widgets")
else()
    message(STATUS "✅ Qt6::Test et Qt6::Widgets trouvés pour QtWidgetTests")
endif()

# 🎯 Création de l'exécutable de test
add_executable(QtTestApp
    tst_test1.cpp
)

target_link_libraries(QtTestApp PRIVATE Qt6::Widgets Qt6::Test)

# 🧪 Enregistrement du test
add_test(NAME QtTestApp COMMAND QtTestApp)
