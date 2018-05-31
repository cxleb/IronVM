//
// Created by caleb on 13/02/2017.
//

#ifndef IRONVM_INSTRUCTIONS_H
#define IRONVM_INSTRUCTIONS_H

#define NOP         0x00

#define PUSH_BYTE   0x01
#define PUSH_WORD   0x02
#define PUSH_DWORD  0x03

#define POP_BYTE    0x04
#define POP_WORD    0x05
#define POP_DWORD   0x06

#define STORE_BYTE  0x07
#define STORE_WORD  0x08
#define STORE_DWORD 0x09
#define STORE_STR   0x0A

#define LOAD_BYTE   0x0B
#define LOAD_WORD   0x0C
#define LOAD_DWORD  0x0D
#define LOAD_STR    0x0E

#define BRANCH      0x10
#define BRANCH_E    0x11
#define BRANCH_N    0x12
#define BRANCH_G    0x13
#define BRANCH_GE   0x14
#define BRANCH_L    0x15
#define BRANCH_LE   0x16
#define BRANCH_Z    0x17

#define CMP_BYTE    0x20
#define CMP_WORD    0x21
#define CMP_DWORD   0x22
#define CMP_STR     0x23

#define CALL        0x2A
#define RET         0x2B

#define SYSCALL     0x2C

#define ADD_BYTE    0x30
#define ADD_WORD    0x31
#define ADD_DWORD   0x32
#define SUB_BYTE    0x33
#define SUB_WORD    0x34
#define SUB_DWORD   0x35
#define MUL_BYTE    0x36
#define MUL_WORD    0x37
#define MUL_DWORD   0x38
#define DIV_BYTE    0x39
#define DIV_WORD    0x3A
#define DIV_DWORD   0x3B
#define DEC_BYTE    0x3C
#define DEC_WORD    0x3D
#define DEC_DWORD   0x3E
#define INC_BYTE    0x3F
#define INC_WORD    0x40
#define INC_DWORD   0x41



#endif //IRONVM_INSTRUCTIONS_H
