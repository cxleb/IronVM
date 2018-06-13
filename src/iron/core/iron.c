//
// Created by caleb on 10/06/2018.
//

#include <malloc.h>
#include "iron.h"

iron_module* create_module(){
    iron_module* module = malloc(sizeof(iron_module));
    for (int i = 0; i < 16; i++) {
        module->cpu.g_reg[i] = 0;
    }
    return module;

}