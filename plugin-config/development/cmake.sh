#!/usr/bin/env bash

# cmake.sh: Run (build and execute) cmake project
#           from and project sub-directory.
# author: Everett
# Github: https://github.com/antiqueeverett/

function executeTarget() {
    # todo: make dynamic
    # date: 2020-08-08 10:49
    printf '\e[033m\033[1m%-80s\e[0m\n' "-- executing Make"
    if ! make; then
        print '\e[031m\033[1m%-80s\e[0m\n' "-- Failed to execute Make"
    else
        printf '\e[032m\033[1m%-80s\e[0m\n' "-- Make execution successful"
        printf '\e[033m\033[1m%-80s\e[0m\n' "-- Running project binary"

        if [ -e "./bin/main" ]; then
            if ! ./bin/main; then
                print '\e[031m\033[1m%-80s\e[0m\n' "-- Failed to run project binary"
            fi
        else
            print '\e[031m\033[1m%-80s\e[0m\n' "-- Binary not found "
        fi
    fi
}

function generateBuild() {
    printf '\e[033m\033[1m%-80s\e[0m\n' "-- Generating project build"
    mkdir "build" && cd "build" || return
    if ! cmake .. >/dev/null; then
        print '\e[031m\033[1m%-80s\e[0m\n' "-- cmake failed"
    else
        printf '\e[032m\033[1m%-80s\e[0m\n' "-- Build successfully generated"
        executeTarget
    fi
}

function cleanBuild() {
    if [ -d "build" ]; then
        rm -Rf "build"
    fi
}

function runProject() {
    printf '\e[033m\033[1m%-80s\e[0m\n' "-- Cleaning build path"
    if ! cleanBuild; then
        print '\e[031m\033[1m%-80s\e[0m\n' "-- Failed to clean build path!"
    else
        printf '\e[032m\033[1m%-80s\e[0m\n' "-- Build path cleaned successfully"
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

    printf '\e[033m\033[1m%-80s\e[0m\n' "-- Finding project CMakeLists.txt"
    # walk up parent directories in search for CMakeLists.txt
    for ((maxwalk = topmost; maxwalk > 0; --maxwalk)); do
        if [ -e "$PWD/$file" ]; then
            if isCMakeLists "$PWD/$file" &>/dev/null; then
                printf '\e[032m\033[1m%-80s\e[0m\n' "-- Found $PWD/$file"
                runProject
                return
            fi
        fi
        cd "../"
    done
    printf '\e[031m\033[1m%-80s\e[0m\n' "-- Unable to find project CMakeLists.txt file"
}

main
exit 0
