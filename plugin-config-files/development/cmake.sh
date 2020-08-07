#!/usr/bin/bash

# run.sh
# Conveniently cmake from any project sub-directory
# Everett <https://github.com/antiqueeverett/>
# Version: 0.1
#
#    NAIVE SEARCH STRATEGY:
# 1. Find top level CMakeLists.txt
#    for each CMakeLists.txt file encountered, grep the 'project' and 'cmake_minimum_required'
#    string patterns. Iff both patterns exist, assume current directory is project root directory.
# 2. Clean build files (default behaviour)
# 3. Run cmake

function eval-cmakelists-file() {
	if grep -E -w 'project' "$1" && grep -E -w 'cmake_minimum_required' "$1"; then
		true
	else
		false
	fi
}

function build-clean() {
	if [ -d "build" ]; then
		echo "-- Cleaning previous build files"
		rm -Rf "build"
	fi
}

function build-generate() {
	mkdir "build" && cd "build" || return
	# if ! cmake .. -GNinja; then
	# 	echo "-- Something went wrong"
	# else
	# 	ninja
	# fi
	if ! cmake .. ; then
		echo "-- Something went wrong"
	else
		if ! make ; then
		  echo "-- Failed to run make"
		  else
		    if ! ./bin/main
		    echo "-- Failed to run main"
	fi
}

function build-run() {
	if [ -d "bin" ]; then
		cd "bin" || return
		ls -la
	else
		ls -la
	fi
	echo "-- TODO"
}

function build() {
	if ! build-clean; then
		echo " -- Unable to clean previous build files"
	else
		if ! build-generate; then
			echo "-- Unable to cmake project"
		fi
	fi
}

function walk() {
	file="CMakeLists.txt"
	topmost=5

	for ((maxwalk = topmost; maxwalk > 0; --maxwalk)); do
		if [ -e "$PWD/$file" ]; then
			if eval-cmakelists-file "$PWD/$file" &>/dev/null ; then
				echo "-- Using $PWD/$file to build CXX project"
				build
				return
			fi
		fi
		cd "../"
	done
	echo "-- Unable to find project CMakeLists.txt file"
}

walk
