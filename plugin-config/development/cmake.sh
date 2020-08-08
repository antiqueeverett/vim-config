#!/usr/bin/env bash

# cmake.sh: Run (build and execute) cmake project
#           from and project sub-directory.
# author: Everett
# Github: https://github.com/antiqueeverett/

pass='\e[032m\033[1m%-80s\e[0m\n'
fail='\e[031m\033[1m%-80s\e[0m\n'
info='\e[033m\033[1m%-80s\e[0m\n'


function executeTarget() {
    # todo: make dynamic
    # date: 2020-08-08 10:49
    printf $info "-- executing Make"
    if ! make; then
        print $fail "-- Failed to execute Make"
    else
        printf $pass "-- Make execution successful"
        printf $info "-- Running project binary"
        if ! ./bin/main > /dev/null; then
            print $fail "-- Failed to run project binary"
        fi
    fi
}

function generateBuild() {
    printf $info "-- Generating project build"
    mkdir "build" && cd "build" || return
    if ! cmake .. > /dev/null ; then
        print $fail "-- cmake failed"
    else
        printf $pass "-- Build successfully generated"
        executeTarget
    fi
}

function cleanBuild() {
    if [ -d "build" ]; then
        rm -Rf "build"
    fi
}

function runProject() {
    printf $info "-- Cleaning build path"
    if ! cleanBuild; then
        print $fail "-- Failed to clean build path!"
    else
        printf $pass "-- Build path cleaned successfully"
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

    printf $info "-- Finding project CMakeLists.txt"
    # walk up parent directories in search for CMakeLists.txt
    for ((maxwalk = topmost; maxwalk > 0; --maxwalk)); do
        if [ -e "$PWD/$file" ]; then
            if isCMakeLists "$PWD/$file" &>/dev/null; then
                printf $pass "-- Found $PWD/$file"
                runProject
                return
            fi
        fi
        cd "../"
    done
    printf $fail "-- Unable to find project CMakeLists.txt file"
}

main
