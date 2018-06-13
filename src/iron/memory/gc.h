//
// Created by caleb on 11/06/2018.
//

#ifndef IRONVM_GC_H
#define IRONVM_GC_H

#include <stdint.h>
#include "../core/iron.h"

typedef struct gc_item{
    uint8_t type;
    uint32_t frame_origin;
    uint32_t data;
}gc_item;

void gc_init(iron_module* module);


#endif //IRONVM_GC_H
