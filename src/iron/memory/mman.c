//
// Created by caleb on 10/06/2018.
//

#include <stdlib.h>
#include <stdint.h>
#include "../core/repr.h"

uint8_t read_prog_byte(iron_unit* unit, size_t address){
    uint8_t byte = (uint8_t) unit->text[address];
    return byte;
}

uint16_t read_prog_word(iron_unit* unit, size_t address){
    uint16_t value = (uint16_t) ( unit->text[address+1] << 8) | ( unit->text[address]);
    return value;
}

uint32_t read_prog_dword(iron_unit* unit, size_t address){
    uint32_t value = (uint32_t) ( unit->text[address+3] << 24) | ( unit->text[address+2] << 16) | ( unit->text[address+1] << 8) | ( unit->text[address]);
    return value;
}

