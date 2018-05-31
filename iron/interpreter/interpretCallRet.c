#include "../vm.h"
#include "../memory/ram.h"
#include "../memory/stack.h"
#include "interpreter.h"

#include <stdio.h>

void interpretCall(){
    size_t address = (size_t) popDword();
    ip = ip + 4;
    pushDword(ip);
    ip = address;
}

void interpretReturn(){
    size_t address = popDword();
    ip = address;
}


