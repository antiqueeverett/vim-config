#!/usr/bin/env bash

# update : copies cmake.sh & cmakegen.sh helper
#          scripts to /usr/local/bin. Also copies
#          Findglog.cmake and main.cpp to templates
#          to /usr/local/bin
#
# author: Everett
# created: 2020-08-11 11:31
# Github: https://github.com/antiqueeverett/

sudo cp cmake.sh cmakegen.sh Findglog.cmake main.p /usr/local/bin/
