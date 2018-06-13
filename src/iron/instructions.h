//
// Created by caleb on 2/06/2018.
//

#ifndef IRONVM_INSTRUCTIONS_H
#define IRONVM_INSTRUCTIONS_H

#define NOP     0x00

#define MOVR   0x01
#define MOVC   0x02
#define STR    0x06
#define LOD    0x07
#define CMP    0x08

#define ADD    0x10
#define SUB    0x11
#define MUL    0x12
#define DIV    0x13
#define DEC    0x14
#define INC    0x15

#define JMP    0x18
#define JE     0x19
#define JNE    0x1A
#define JG     0x1B
#define JGE    0x1C
#define JL     0x1D
#define JLE    0x1E
#define JZ     0x1F

#define CALL   0x20
#define RET    0x21
#define SYSCALL 0x22




#endif //IRONVM_INSTRUCTIONS_H
