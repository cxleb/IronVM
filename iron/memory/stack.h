//
// Created by caleb on 13/02/2017.
//

#ifndef IRONVM_STACK_H
#define IRONVM_STACK_H

#include <stdlib.h>
#include <stdint.h>

void initStack(size_t size);

void pushByte(uint8_t byte);
void pushWord(uint16_t word);
void pushDword(uint32_t dword);

uint8_t popByte();
uint16_t popWord();
uint32_t popDword();

uint8_t peekByte(uint32_t count);
uint16_t peekWord(uint32_t count);
uint32_t peekDword(uint32_t count);


#endif //IRONVM_STACK_H
