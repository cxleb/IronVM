//
// Created by caleb on 11/06/2018.
//

#include <stdint.h>
#include "gc.h"
#include "../core/iron.h"
#include <malloc.h>
#include <stdio.h>

void gc_init(iron_module* module) {
    gc_item *gc_dump = malloc(sizeof(gc_item) * 20);
    module->gc_dump = gc_dump;
}

void gc_alloc_int(uint32_t index, uint32_t value){

}

