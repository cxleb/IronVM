#include "../vm.h"
#include "../memory/stack.h"
#include "interpreter.h"

void interpretBranch(){
    size_t address = (size_t) popDword();
    ip = address;
}

void interpretBranchEqual(){
    size_t address = (size_t) popDword();
    if(ef) {
        ip = address;
    }
}

void interpretBranchNotEqual(){
    size_t address = (size_t) popDword();
    if (nf) {
        ip = address;
    }
}

void interpretBranchGreaterThan(){
    size_t address = (size_t) popDword();
    if(gf){
        ip = address;
    }
}

void interpretBranchLessThan(){
    size_t address = (size_t) popDword();
    if(lf) {
        ip = address;
    }
}

void interpretBranchGreaterEqualThan(){
    size_t address = (size_t) popDword();
    if(gf){
        ip = address;
    }
    if(ef) {
        ip = address;
    }
}

void interpretBranchLessEqualThan(){
    size_t address = (size_t) popDword();
    if(lf) {
        ip = address;
    }
    if(ef) {
        ip = address;
    }
}

void interpretBranchZero(){
    size_t address = (size_t) popDword();
    if(zf){
        ip = address;
    }
}




