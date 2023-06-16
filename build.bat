@echo off
title Build

cmake --version >nul 2>&1 || (
    echo "Please install cmake first!"
    exit
)

set debug_build_dir=.\build\
set release_build_dir=.\releaseBuild\

if %1 == "-r" || %1 == "-release" || %1 == "release" (
    if not exist %release_build_dir% (
        mkdir %release_build_dir%
    )
    cmake -DCMAKE_BUILD_TYPE=Release -S . -B %release_build_dir%
    cmake --build %release_build_dir%
) else (
    if not exist %debug_build_dir% (
        mkdir %debug_build_dir%
    )
    cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -S . -B %debug_build_dir%
    cmake --build %debug_build_dir%
)
