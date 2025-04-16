# config/cpp.cmake
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Options de build sécurisées
add_compile_options(-Wall -Wextra -Wpedantic)
