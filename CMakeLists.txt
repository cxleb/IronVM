cmake_minimum_required(VERSION 3.6)
project(IronVM)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES main.c iron/memory/stack.c iron/vm.c iron/memory/ram.c iron/interpreter/interpretStack.c iron/interpreter/interpretMemory.c iron/interpreter/interpretBranch.c iron/loader/binary.c iron/interpreter/interpretCompare.c iron/interpreter/interpretCallRet.c iron/interpreter/interpretMath.c iron/interpreter/interpretSyscall.c iron/loader/ix.c iron/loader/ixHeaders.h)
add_executable(IronVM ${SOURCE_FILES})