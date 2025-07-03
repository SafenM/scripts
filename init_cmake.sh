#!/bin/bash

PROJECT_NAME=$1

mkdir -p ${PROJECT_NAME}/src
cat > ${PROJECT_NAME}/CMakeLists.txt <<EOF
cmake_minimum_required(VERSION 3.15)
project(${PROJECT_NAME} VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_subdirectory(src)
EOF

cat > ${PROJECT_NAME}/src/CMakeLists.txt <<EOF
add_executable(\${PROJECT_NAME} main.cpp)
EOF

cat > ${PROJECT_NAME}/src/main.cpp <<EOF
#include <iostream>

int main() {
    std::cout << "Hello, ${PROJECT_NAME}!\\n";
    return 0;
}
EOF

echo "Created C++ project \"${PROJECT_NAME}\" with CMake."
