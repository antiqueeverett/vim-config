#!/usr/bin/env bash

# cmake.sh: Run (build and execute) cmake project
#           from and project sub-directory.
# author: Everett
# Github: https://github.com/antiqueeverett/

# todo: make dynamic
# date: 2020-08-10 15:55
TRAGET=./bin/main
OPTIONS=--logtostderr=1

INFO='\e[033m\033[1m%-80s\e[0m\n'
PASS='\e[032m\033[1m%-80s\e[0m\n'
FAIL='\e[031m\033[1m%-80s\e[0m\n'

function runBinaryTarget() {
    $TRAGET $OPTIONS
}

function makeBinaryTarget() {
    printf $INFO "-- executing Make"
    if ! make; then
        print $FAIL "-- Failed to execute Make"
    else
        printf $PASS "-- Make successful"
        printf $INFO "-- Attempting to run target binary"
        runBinaryTarget
    fi
}

function generateBuild() {
    printf $INFO "-- Generating project build"
    mkdir "build" && cd "build" || return
    if ! cmake .. >/dev/null; then
        print $FAIL "-- cmake failed"
    else
        printf $PASS "-- Build successfully generated"
        makeBinaryTarget
    fi
}

function cleanBuild() {
    if [ -d "build" ]; then
        rm -Rf "build"
    fi
}

function runProject() {
    printf $INFO "-- Cleaning build path"
    if ! cleanBuild; then
        print $FAIL "-- Failed to clean build path!"
    else
        printf $PASS "-- Build path cleaned successfully"
        generateBuild
    fi
}

function isCMakeLists() {
    if grep -E -w 'project' "$1" && grep -E -w 'cmake_minimum_required' "$1"; then
        true
    fi
}

function main() {
    file="CMakeLists.txt"
    topmost=5

    printf $INFO "-- Finding project CMakeLists.txt"
    # walk up parent directories in search for CMakeLists.txt
    for ((maxwalk = topmost; maxwalk > 0; --maxwalk)); do
        if [ -e "$PWD/$file" ]; then
            if isCMakeLists "$PWD/$file" &>/dev/null; then
                printf $PASS "-- Found $PWD/$file"
                runProject
                return
            fi
        fi
        cd "../"
    done
    printf $FAIL "-- Unable to find project CMakeLists.txt file"
}

main
exit 0
