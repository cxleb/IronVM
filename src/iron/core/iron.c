//
// Created by caleb on 10/06/2018.
//

#include <malloc.h>
#include "iron.h"

iron_module* create_unit(){
    iron_module* unit = malloc(sizeof(iron_module));
    for (int i = 0; i < 16; i++) {
        unit->cpu.g_reg[i] = 0;
    }
    return unit;

}