#!/bin/bash

project_name=Example

if [[ $1 == "-r" || $1 == "release" || $1 == "--release" ]]; then
    mode="/release"
else
    mode="/"
fi

if [[ -f "./build$mode$project_name" ]]; then
    ./build/$project_name
else
    echo "Build project first"
fi