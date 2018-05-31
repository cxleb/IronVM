#include "stack.h"


unsigned int pointer = 0;
char* stack;

void initStack(size_t size){
    stack = malloc(size);
}

void pushByte(uint8_t byte){
    stack[pointer++] = byte;
}

void pushWord(uint16_t word){
    stack[pointer++] = word & 0xFF;
    stack[pointer++] = (word>>8) & 0xFF;
}

void pushDword(uint32_t dword){
    stack[pointer++] = dword & 0xFF;
    stack[pointer++] = (dword>>8) & 0xFF;
    stack[pointer++] = (dword>>16) & 0xFF;
    stack[pointer++] = (dword>>24) & 0xFF;
}

uint8_t popByte(){
    uint8_t byte = (uint8_t) stack[--pointer];
    return byte;
}

uint16_t popWord(){
    uint16_t value = (uint16_t) (stack[--pointer] << 8) | (stack[--pointer]);
    return value;
}

uint32_t popDword(){
    uint32_t value = (uint32_t) (stack[--pointer] << 24) | (stack[--pointer] << 16) | (stack[--pointer] << 8) | (stack[--pointer]);
    return value;
}

uint8_t peekByte(uint32_t count){
    uint8_t byte = (uint8_t) stack[pointer+count];
    return byte;
}

uint16_t peekWord(uint32_t count){
    uint16_t value = (uint16_t) (stack[pointer+count] << 8) | (stack[pointer+count+1]);
    return value;
}

uint32_t peekDword(uint32_t count){
    uint32_t value = (uint32_t) (stack[pointer+count] << 24) | (stack[pointer+count+1] << 16) | (stack[pointer+count+2] << 8) | (stack[pointer+count+3]);
    return value;
}





