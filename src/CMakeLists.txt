cmake_minimum_required(VERSION 3.6)
project(IronVM)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES main.c iron/instructions.h iron/vm.c iron/vm.h iron/core/loader.c iron/core/loader.h iron/core/iron.c iron/core/iron.h iron/memory/gc.c iron/memory/gc.h)
add_executable(IronVM ${SOURCE_FILES})