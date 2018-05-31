#include <stdint.h>
#include "../memory/stack.h"

void interpretAddByte(){
    uint8_t val2 = popByte();
    uint8_t val1 = popByte();
    pushByte((uint8_t) val1 + val2);
}

void interpretAddWord(){
    uint16_t val2 = popWord();
    uint16_t val1 = popWord();
    pushWord((uint16_t) val1 + val2);
}

void interpretAddDword(){
    uint32_t val2 = popDword();
    uint32_t val1 = popDword();
    pushDword((uint32_t) val1 - val2);
}

void interpretSubByte(){
    uint8_t val2 = popByte();
    uint8_t val1 = popByte();
    pushByte((uint8_t) val1 - val2);
}

void interpretSubWord(){
    uint16_t val2 = popWord();
    uint16_t val1 = popWord();
    pushWord((uint16_t) val1 - val2);
}

void interpretSubDword(){
    uint32_t val2 = popDword();
    uint32_t val1 = popDword();
    pushDword((uint32_t) val1 - val2);
}

void interpretMulByte(){
    uint8_t val2 = popByte();
    uint8_t val1 = popByte();
    pushByte((uint8_t) val1 * val2);
}

void interpretMulWord(){
    uint16_t val2 = popWord();
    uint16_t val1 = popWord();
    pushWord((uint16_t) val1 * val2);
}

void interpretMulDword(){
    uint32_t val2 = popDword();
    uint32_t val1 = popDword();
    pushDword((uint32_t) val1 * val2);
}

void interpretDivByte(){
    uint8_t val2 = popByte();
    uint8_t val1 = popByte();
    pushByte((uint8_t) val1 / val2);
}

void interpretDivWord(){
    uint16_t val2 = popWord();
    uint16_t val1 = popWord();
    pushWord((uint16_t) val1 / val2);
}

void interpretDivDword(){
    uint32_t val2 = popDword();
    uint32_t val1 = popDword();
    pushDword((uint32_t) val1 / val2);
}

void interpretIncrementByte(){
    uint8_t val = popByte();
    pushByte(val - 1);
}

void interpretIncrementWord(){
    uint16_t val = popByte();
    pushByte(val - 1);
}
void interpretIncrementDword(){
    uint32_t val = popByte();
    pushByte(val - 1);
}
void interpretDecrementByte(){
    uint8_t val = popByte();
    pushByte(val - 1);
}
void interpretDecrementWord(){
    uint16_t val = popByte();
    pushByte(val - 1);
}
void interpretDecrementDword(){
    uint32_t val = popByte();
    pushByte(val - 1);
}