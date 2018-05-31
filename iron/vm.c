#include "memory/ram.h"
#include "instructions.h"
#include "interpreter/interpreter.h"
#include "stdio.h"
#include "loader/loader.h"

size_t ip = 0; // instruction pointer
uint8_t ef = 0; // equal
uint8_t gf = 0; // greater
uint8_t lf = 0; // less
uint8_t nf = 0; // not equal
uint8_t zf = 0; // zero
unsigned char running = 1;
unsigned char debug = 0;


void execute(size_t jump){
    ip = jump;
    while(running) {executeInstruction();}

    if(debug) {
        printf("ef: %u\n", ef);
        printf("gf: %u\n", gf);
        printf("lf: %u\n", lf);
        printf("nf: %u\n", nf);
    }
}

void executeInstruction(){
    uint8_t instruction = readByte(ip++);
    if(debug) printf("\t0x%X :0x%X\n", ip-1, instruction);
    switch(instruction){
        case NOP:
            break;
        case PUSH_BYTE:
            interpretPushByte();
            break;
        case PUSH_WORD:
            interpretPushWord();
            break;
        case PUSH_DWORD:
            interpretPushDword();
            break;
        case POP_BYTE:
            interpretPopByte();
            break;
        case POP_WORD:
            interpretPopWord();
            break;
        case POP_DWORD:
            interpretPopDword();
            break;
        case STORE_BYTE:
            interpretStoreByte();
            break;
        case STORE_WORD:
            interpretStoreWord();
            break;
        case STORE_DWORD:
            interpretStoreDword();
            break;
        case STORE_STR:
            interpretStoreStr();
            break;
        case LOAD_BYTE:
            interpretLoadByte();
            break;
        case LOAD_WORD:
            interpretLoadWord();
            break;
        case LOAD_DWORD:
            interpretLoadDword();
            break;
        case LOAD_STR:
            interpretLoadStr();
            break;
        case BRANCH:
            interpretBranch();
            break;
        case BRANCH_E:
            interpretBranchEqual();
            break;
        case BRANCH_N:
            interpretBranchNotEqual();
            break;
        case BRANCH_G:
            interpretBranchGreaterThan();
            break;
        case BRANCH_GE:
            interpretBranchGreaterEqualThan();
            break;
        case BRANCH_L:
            interpretBranchLessThan();
            break;
        case BRANCH_LE:
            interpretBranchLessEqualThan();
            break;
        case BRANCH_Z:
            interpretBranchZero();
            break;
        case CMP_BYTE:
            interpretCompareByte();
            break;
        case CMP_WORD:
            interpretCompareWord();
            break;
        case CMP_DWORD:
            interpretCompareDword();
            break;
        case CMP_STR:
            interpretCompareString();
            break;
        case CALL:
            interpretCall();
            break;
        case RET:
            interpretReturn();
            break;
        case SYSCALL:
            interpretSyscall();
            break;
        case ADD_BYTE:
            interpretAddByte();
            break;
        case ADD_WORD:
            interpretAddWord();
            break;
        case ADD_DWORD:
            interpretAddDword();
            break;
        case SUB_BYTE:
            interpretSubByte();
            break;
        case SUB_WORD:
            interpretSubWord();
            break;
        case SUB_DWORD:
            interpretSubDword();
            break;
        case MUL_BYTE:
            interpretMulByte();
            break;
        case MUL_WORD:
            interpretMulWord();
            break;
        case MUL_DWORD:
            interpretMulDword();
            break;
        case DIV_BYTE:
            interpretDivByte();
            break;
        case DIV_WORD:
            interpretDivWord();
            break;
        case DIV_DWORD:
            interpretDivDword();
            break;
        case DEC_BYTE:
            interpretDecrementByte();
            break;
        case DEC_WORD:
            interpretDecrementWord();
            break;
        case DEC_DWORD:
            interpretDecrementDword();
            break;
        case INC_BYTE:
            interpretIncrementByte();
            break;
        case INC_WORD:
            interpretIncrementWord();
            break;
        case INC_DWORD:
            interpretIncrementDword();
            break;
        default:
            printf("Breaking Program, found unknown byte at 0x%X:0x%X\n", ip-1, instruction);
            running = 0;
            break;
    }
}