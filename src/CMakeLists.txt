cmake_minimum_required(VERSION 3.6)
project(IronVM)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES main.c iron/instructions.h iron/thread/thread.c iron/thread/thread.h iron/vm.c iron/vm.h iron/memory/ram.c iron/memory/ram.h)
add_executable(IronVM ${SOURCE_FILES})