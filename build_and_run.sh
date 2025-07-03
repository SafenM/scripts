#!/bin/bash

BUILD_DIR="build"
BINARY_PATH=""

mkdir -p ${BUILD_DIR}

cmake -S . -B ${BUILD_DIR} -DCMAKE_BUILD_TYPE=Debug
cmake --build ${BUILD_DIR}

${BUILD_DIR}/${BINARY_PATH}
