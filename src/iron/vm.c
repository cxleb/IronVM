//
// Created by caleb on 2/06/2018.
//

#include "instructions.h"
#include "memory/mman.h"

uint8_t running = 1;

void execute(iron_unit* unit){

    while (running) {
        //for (int i = 0; i < cpuCount; i++){
        //    if(!cpus[i].finished) {
        //        printf("running %d: %d\n", i, cpus[i].running);
                exeInstruction(unit);
        //    }
        //}
        if(unit->main_thread.frames == 0){
            running = 0;
        }
    }
}

void exeInstruction(iron_unit* unit){
    uint8_t instruction = read_prog_byte(unit, unit->main_thread.ip++);
    if(1) printf("\t0x%X :0x%X\n", unit->main_thread.ip-1, instruction);
    switch(instruction) {
        case NOP:
            break;
        case MOVR:
            break;
        case MOVC:
            break;
        case MOVS1:
            break;
        case MOVS2:
            break;
        case MOVB:
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
            printf("Breaking Program, found unknown byte at 0x%X:0x%X\n", unit->main_thread.ip - 1, instruction);
            running = 0;
            break;
    }
}
