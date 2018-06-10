//
// Created by caleb on 10/06/2018.
//

#ifndef IRONVM_MMAN_H
#define IRONVM_MMAN_H

#include <stdlib.h>
#include <stdint.h>
#include "../core/repr.h"

uint8_t read_prog_byte(iron_unit* unit, size_t address);
uint16_t read_prog_word(iron_unit* unit, size_t address);
uint32_t read_prog_dword(iron_unit* unit, size_t address);


#endif //IRONVM_MMAN_H
