//
// Created by caleb on 3/06/2018.
//

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "ram.h"

char* memory;

void initRam(size_t size){
    memory = malloc(size);
}

void writeByte(uint8_t byte, size_t address){
    memory[address] = byte;
}

void writeWord(uint16_t word, size_t address){
    memory[address] = word & 0xFF;
    memory[address + 1] = (word>>8) & 0xFF;
}

void writeDword(uint32_t dword, size_t address){
    memory[address] = dword & 0xFF;
    memory[address + 1] = (dword>>8) & 0xFF;
    memory[address + 2] = (dword>>16) & 0xFF;
    memory[address + 3] = (dword>>24) & 0xFF;
}

uint8_t readByte(size_t address){
    uint8_t byte = (uint8_t) memory[address];
    return byte;
}

uint16_t readWord(size_t address){
    uint16_t value = (uint16_t) (memory[address+1] << 8) | (memory[address]);
    return value;
}

uint32_t readDword(size_t address){
    uint32_t value = (uint32_t) (memory[address+3] << 24) | (memory[address+2] << 16) | (memory[address+1] << 8) | (memory[address]);
    return value;
}

void writeBlock(char* mem, size_t length, size_t address){
    memcpy(memory+address, mem, length);
}

void readBlock(char* mem, size_t length, size_t address){
    memcpy(mem, memory+address, length);
}

