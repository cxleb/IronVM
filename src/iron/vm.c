//
// Created by caleb on 2/06/2018.
//

#include "instructions.h"
#include "core/iron.h"
#include "memory/gc.h"
#include <stdio.h>
#include <stdint.h>


uint8_t read_byte(iron_module* module){
    size_t address = module->ip;
    module->ip = module->ip + 1;
    uint8_t byte = (uint8_t) module->text[address];
    return byte;
}

uint32_t read_dword(iron_module* module){
    size_t address = module->ip;
    module->ip = module->ip + 4;
    uint32_t value = (uint32_t) ( module->text[address+3] << 24) | ( module->text[address+2] << 16) | ( module->text[address+1] << 8) | ( module->text[address]);
    return value;
}


uint8_t running = 1;

void execute(iron_module* module){

    while (running) {
        exeInstruction(module);
        if(module->frames == 0){
            running = 0;
        }
    }

    for (int i = 0; i < 16;i++){
        printf("reg: %d = %d\n", i, module->cpu.g_reg[i]);
    }
}

void exeInstruction(iron_module* module){
    uint8_t instruction = read_byte(module);
    uint8_t clazz = 0;
    if(1) printf("\t0x%X :0x%X\n", module->ip-1, instruction);
    switch(instruction) {
        case NOP:
            break;
        case MOVR:
            module->cpu.g_reg[read_byte(module)] = module->cpu.g_reg[read_byte(module)];
            break;
        case MOVC:
            module->cpu.g_reg[read_byte(module)] = read_dword(module);
            break;
        case STR:
            gc_alloc_int(module, read_dword(module), read_dword(module));
            break;
        case LOD:
            module->cpu.g_reg[read_byte(module)] = gc_get_int(module, read_dword(module));
            break;
        case CMP:
            break;
        case ADD:
            clazz = read_byte(module);
            module->cpu.g_reg[clazz] = module->cpu.g_reg[clazz] + module->cpu.g_reg[read_byte(module)];
            break;
        case SUB:
            clazz = read_byte(module);
            module->cpu.g_reg[clazz] = module->cpu.g_reg[clazz] - module->cpu.g_reg[read_byte(module)];
            break;
        case MUL:
            clazz = read_byte(module);
            module->cpu.g_reg[clazz] = module->cpu.g_reg[clazz] * module->cpu.g_reg[read_byte(module)];
            break;
        case DIV:
            clazz = read_byte(module);
            module->cpu.g_reg[clazz] = module->cpu.g_reg[clazz] / module->cpu.g_reg[read_byte(module)];
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
            printf("Breaking Program, found unknown byte at 0x%X:0x%X\n", module->ip - 1, instruction);
            running = 0;
            break;
    }
}
