#!/usr/bin/env bash

# cmakegen.sh: a CPP skeleton generator
# author: Everett
# created: 2020-08-11 11:37
# Github: https://github.com/antiqueeverett/

mkdir lib ext src inc cmake
touch CMakeLists.txt
cp /usr/local/bin/Findglog.cmake cmake/
cp /usr/local/bin/main.cpp src/
