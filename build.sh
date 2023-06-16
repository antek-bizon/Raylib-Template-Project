#!/bin/bash
debug_build_dir=./build
release_build_dir=./releaseBuild

if [[ $1 == "-r" || $1 == "release" || $1 == "--release" ]]; then
    if ! [[ -d "$release_build_dir" ]]; then
        mkdir  $release_build_dir
    fi
    cmake -DCMAKE_BUILD_TYPE=Release -S . -B $release_build_dir
    cmake --build $release_build_dir
else
if ! [[ -d "$debug_build_dir" ]]; then
        mkdir  $debug_build_dir
    fi
    cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -S . -B $debug_build_dir
    cmake --build $debug_build_dir
fi