//
// Created by caleb on 13/02/2017.
//

#ifndef IRONVM_RAM_H
#define IRONVM_RAM_H

#include <stdint.h>
#include <stdlib.h>

char* memory;

void initRam(size_t size);
void writeByte(uint8_t byte, size_t address);
void writeWord(uint16_t word, size_t address);
void writeDword(uint32_t dword, size_t address);
uint8_t readByte(size_t address);
uint16_t readWord(size_t address);
uint32_t readDword(size_t address);
void writeBlock(char* mem, size_t length, size_t address);
void readBlock(char* mem, size_t length, size_t address);

#endif //IRONVM_RAM_H
