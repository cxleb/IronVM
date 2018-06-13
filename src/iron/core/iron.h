//
// Created by caleb on 10/06/2018.
//

#ifndef IRONVM_INSTANCE_H
#define IRONVM_INSTANCE_H

#include <stdint.h>
#include <stdlib.h>

//#include "../memory/gc.h"

typedef struct gc_item{
    uint8_t type;
    uint32_t frame_origin;
    uint32_t data;
}gc_item;

typedef struct iron_cpu{
    uint8_t br; // gp byte register
    uint8_t ef; // equals flag
    uint8_t gf; // greater then flag
    uint8_t lf; // less then flag
    uint8_t nf; // not equal flag
    uint8_t zf; // zero flag
    uint32_t g_reg[16];
} iron_cpu;

typedef struct iron_module{
    uint8_t* text; // this is program itself
    iron_cpu cpu; //
    size_t ip; // instruction pointer
    uint8_t frames;
    uint32_t frame_counter;
    gc_item *gc_dump;
}iron_module;

iron_module* create_module();



#endif //IRONVM_INSTANCE_H
