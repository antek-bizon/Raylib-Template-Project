@echo off
title Run

cmake --version >nul 2>&1 || (
    echo "Please install cmake first!"
    exit
)

set project_name=Example

if %1 == "-r" || %1 == "release" || %1 == "--release" (
    set modeDir=.\buildRelease\
) else (
    set modeDir=.\build
)

if exist "%modeDir%%project_name%.exe" (
    %modeDir%%project_name%.exe
) else (
    echo "Build project first"
)