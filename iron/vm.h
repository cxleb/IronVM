//
// Created by caleb on 13/02/2017.
//

#ifndef IRONVM_VM_H
#define IRONVM_VM_H

#include <stdlib.h>
#include <stdint.h>

size_t ip;
uint8_t ef;
uint8_t gf;
uint8_t lf;
uint8_t nf;
uint8_t zf;
unsigned char running;
unsigned char debug;

void execute(size_t jump);
void executeInstruction();

#endif //IRONVM_VM_H
