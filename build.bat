@echo off
title Build

cmake --version >nul 2>&1 || (
    echo "Please install cmake first!"
    exit
)

set input=%1
set debug_build_dir=.\build\
set release_build_dir=.\releaseBuild\

set ex=1

if /i "%input%"=="-r" goto :release
if /i "%input%"=="-release" goto :release
if /i "%input%"=="release" goto :release

goto :debug

:debug
if not exist %debug_build_dir% (
	mkdir %debug_build_dir%
)
    cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -S . -B %debug_build_dir%
    cmake --build %debug_build_dir%
goto :end

:release
if not exist %release_build_dir% (
	mkdir %release_build_dir%
)
cmake -DCMAKE_BUILD_TYPE=Release -S . -B %release_build_dir%
cmake --build %release_build_dir%
goto :end 

:end
pause
