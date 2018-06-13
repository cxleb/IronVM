//
// Created by caleb on 11/06/2018.
//

#ifndef IRONVM_GC_H
#define IRONVM_GC_H

#include <stdint.h>
#include "../core/iron.h"

void gc_init(iron_module* module);
void gc_alloc_int(iron_module* module, uint32_t index, uint32_t value);
uint32_t gc_get_int(iron_module* module, uint32_t index);


#endif //IRONVM_GC_H
