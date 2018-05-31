//
// Created by caleb on 13/02/2017.
//

#include "../memory/stack.h"
#include "../memory/ram.h"
#include "../vm.h"
#include <stdio.h>

void interpretPushByte(){
    pushByte(readByte(ip));
    ip = ip + 1;
}

void interpretPushWord(){
    pushWord(readWord(ip));
    ip = ip + 2;
}

void interpretPushDword(){
    pushDword(readDword(ip));
    ip = ip + 4;
}

void interpretPopByte(){
    popByte();
}

void interpretPopWord(){
    popWord();
}

void interpretPopDword(){
    popDword();
}

void interpretPrintB(){
    uint8_t value = popByte();
    printf("%u\n", value);
}

void interpretPrintW(){
    uint16_t value = popWord();
    printf("%u\n", value);
}

void interpretPrintD(){
    uint32_t value = popDword();
    printf("%u\n", value);
}


