cmake_minimum_required(VERSION 3.6)
project(IronVM)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES main.c iron/instructions.h iron/vm.c iron/vm.h iron/loader/ix_loader.c iron/loader/ix_loader.h iron/core/repr.h iron/core/instance.c iron/core/instance.h iron/memory/mman.c iron/memory/mman.h)
add_executable(IronVM ${SOURCE_FILES})