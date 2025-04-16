cmake_minimum_required(VERSION 3.16)
project(TestAppIOS)

set(CMAKE_OSX_SYSROOT iphoneos)
set(CMAKE_OSX_ARCHITECTURES arm64)
set(CMAKE_XCODE_ATTRIBUTE_CODE_SIGNING_ALLOWED "NO")

add_executable(TestApp main.mm)
