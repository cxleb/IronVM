//
// Created by caleb on 14/02/2017.
//

#include "interpreter.h"
#include "../memory/stack.h"
#include "../memory/ram.h"
#include "../vm.h"

void interpretLoadByte(){
    size_t address = (size_t) popDword();
    pushByte(readByte(address));
}

void interpretLoadWord(){
    size_t address = (size_t) popDword();
    pushWord(readWord(address));
}

void interpretLoadDword(){
    size_t address = (size_t) popDword();
    pushWord(readWord(address));
}

void interpretLoadStr(){
    //size_t address = (size_t) readDword(ip);
    //ip=ip+4;
    //size_t size = (size_t) readDword(ip);
    //ip=ip+4;
}

void interpretStoreByte(){
    size_t address = (size_t) popDword();
    writeByte(popByte(), address);
}

void interpretStoreWord(){
    size_t address = (size_t) popDword();
    writeByte(popByte(), address);
}

void interpretStoreDword(){
    size_t address = (size_t) popDword();
    writeByte(popByte(), address);
}

void interpretStoreStr(){
    //size_t address = (size_t) readDword(ip);
    //ip=ip+4;
    //size_t size = (size_t) readDword(ip);
    //ip=ip+4;
}
