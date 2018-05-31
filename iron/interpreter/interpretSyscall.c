#include <stdint.h>
#include "../memory/stack.h"
#include "../memory/ram.h"
#include "../vm.h"
#include <stdio.h>

void* syscalls [255];

void sys_cout(){
    char* ptr = (char*)popDword();
    ptr = (char*) ((uint32_t) memory + (uint32_t) ptr);
    puts(ptr);
}

void sys_exit(){
    running = 0;
}

void setupSyscallInterface(){
    syscalls[0] = sys_cout;
    syscalls[0xFF] = sys_exit;
}

void interpretSyscall() {
    uint8_t call = popByte();
    ((void (*)(void))syscalls[call])();
}