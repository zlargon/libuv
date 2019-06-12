#!/bin/bash
set -e

# check platform
if [ "$(uname)" != "Linux" ] || [ "$(uname -i)" != "i686" ]; then
    echo "[hisi] the cross-compile toolchain only works on Linux 32-bit"
    exit 1
fi

# create build folder
rm -rf build
mkdir -p build
cd build

# build
cmake ../.. -DBUILD_TESTING=ON -DCMAKE_TOOLCHAIN_FILE=../toolchain.cmake
cmake --build .
