@echo off
title Run

cmake --version >nul 2>&1 || (
    echo "Please install cmake first!"
    exit
)

set project_name=Example

set modeDir=.\build
if /i "%input%"=="-r" set modeDir=.\buildRelease\
if /i "%input%"=="-release" set modeDir=.\buildRelease\
if /i "%input%"=="release" set modeDir=.\buildRelease\

if exist "%modeDir%%project_name%.exe" (
    %modeDir%%project_name%.exe
) else (
    echo "Build project first"
)