//
// Created by caleb on 2/06/2018.
//

#include "instructions.h"
#include "core/iron.h"
#include <stdio.h>
#include <stdint.h>


uint8_t read_byte(iron_module* unit){
    size_t address = unit->ip;
    unit->ip = unit->ip + 1;
    uint8_t byte = (uint8_t) unit->text[address];
    return byte;
}

uint32_t read_dword(iron_module* unit){
    size_t address = unit->ip;
    unit->ip = unit->ip + 4;
    uint32_t value = (uint32_t) ( unit->text[address+3] << 24) | ( unit->text[address+2] << 16) | ( unit->text[address+1] << 8) | ( unit->text[address]);
    return value;
}


uint8_t running = 1;

void execute(iron_module* unit){

    while (running) {
        exeInstruction(unit);
        if(unit->frames == 0){
            running = 0;
        }
    }

    for (int i = 0; i < 16;i++){
        printf("reg: %d = %d\n", i, unit->cpu.g_reg[i]);
    }
}

void exeInstruction(iron_module* unit){
    uint8_t instruction = read_byte(unit);
    if(1) printf("\t0x%X :0x%X\n", unit->ip-1, instruction);
    switch(instruction) {
        case NOP:
            break;
        case MOVR:
            unit->cpu.g_reg[read_byte(unit)] = unit->cpu.g_reg[read_byte(unit)];
            break;
        case MOVC:
            unit->cpu.g_reg[read_byte(unit)] = read_dword(unit);
            break;
        case STR:
            break;
        case LOD:
            break;
        case CMP:
            break;
        case ADD:
            break;
        case SUB:
            break;
        case MUL:
            break;
        case DIV:
            break;
        case DEC:
            break;
        case INC:
            break;
        case JMP:
            break;
        case JE:
            break;
        case JNE:
            break;
        case JG:
            break;
        case JGE:
            break;
        case JL:
            break;
        case JLE:
            break;
        case JZ:
            break;
        case CALL:
            break;
        case RET:
            running = 0;
            break;
        case SYSCALL:
            break;
        default:
            printf("Breaking Program, found unknown byte at 0x%X:0x%X\n", unit->ip - 1, instruction);
            running = 0;
            break;
    }
}
