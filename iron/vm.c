//
// Created by caleb on 2/06/2018.
//

#include "thread/thread.h"
#include "instructions.h"
#include "memory/ram.h"

uint8_t running = 1;

void execute(size_t entry){
    create_cpu(entry, 0);

    while (running) {
        for (int i = 0; i < cpuCount; i++){
            if(!cpus[i].finished) {
                printf("running %d: %d\n", i, cpus[i].running);
                exeInstruction(i);
            }
        }
    }

    end_cpu(0);
}

void exeInstruction(uint8_t cpuid){
    uint8_t instruction = readByte(cpus[cpuid].ip++);
    //if(debug) printf("\t0x%X :0x%X\n", ip-1, instruction);
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
            break;
        case SYSCALL:
            break;
        default:
            printf("Breaking Program, found unknown byte at 0x%X:0x%X\n", cpus[cpuid].ip - 1, instruction);
            running = 0;
            break;
    }
}
