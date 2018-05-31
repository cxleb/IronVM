#include "../vm.h"
#include "../memory/stack.h"
#include "../memory/ram.h"
#include "stdio.h"


void interpretCompareByte(){
    uint8_t v2 = peekByte(1);
    uint8_t v1 = peekByte(2);

    ef = 0;
    gf = 0;
    lf = 0;
    nf = 0;
    zf = 0;

    if(v1 == v2){
        ef = 1;
    }

    if(v1 > v2){
        gf = 1;
    }

    if(v1 < v2){
        lf = 1;
    }

    if(v1 != v2){
        nf = 1;
    }

    if(v1 == 0){
        zf = 1;
    }
}

void interpretCompareWord(){
    uint16_t v2 = peekWord(2);
    uint16_t v1 = peekWord(4);

    ef = 0;
    gf = 0;
    lf = 0;
    nf = 0;
    zf = 0;

    if(v1 == v2){
        ef = 1;
    }

    if(v1 > v2){
        gf = 1;
    }

    if(v1 < v2){
        lf = 1;
    }

    if(v1 != v2){
        nf = 1;
    }

    if(v1 == 0){
        zf = 1;
    }
}

void interpretCompareDword(){
    uint32_t v2 = peekDword(4);
    uint32_t v1 = peekDword(8);

    ef = 0;
    gf = 0;
    lf = 0;
    nf = 0;
    zf = 0;

    if(v1 == v2){
        ef = 1;
    }

    if(v1 > v2){
        gf = 1;
    }

    if(v1 < v2){
        lf = 1;
    }

    if(v1 != v2){
        nf = 1;
    }

    if(v1 == 0){
        zf = 1;
    }
}

void interpretCompareString(){

    size_t v2 = (size_t) popDword();
    size_t v1 = (size_t) popDword();

    uint8_t b1 = readByte(v1);
    uint8_t b2 = readByte(v2);

    ef = 0;
    gf = 0;
    lf = 0;
    nf = 0;
    zf = 0;

    while(b1 != 0 & b2 != 0){

        if (b1 == b2){
            ef = 1;
        }else{
            ef = 0;
            nf = 1;
            break;
        }
        v2++;
        v1++;
        b1 = readByte(v1);
        b2 = readByte(v2);
    }
    if (ef == 0 && nf == 0){
        zf = 1;
    }

}