//
// Created by caleb on 11/06/2018.
//

#include <stdint.h>
#include <stdio.h>
#include "gc.h"

void gc_init(iron_module* module) {
    gc_item *gc_dump = malloc(sizeof(gc_item) * 20);
    module->gc_dump = gc_dump;
}

void gc_alloc_int(iron_module* module, uint32_t index, uint32_t value){
    module->gc_dump[index].type = 1;
    module->gc_dump[index].frame_origin = module->frame_counter;
    module->gc_dump[index].data = value;
}

uint32_t gc_get_int(iron_module* module, uint32_t index){
    if (module->gc_dump[index].type != 1){
        puts("Failure to produce type int.");
        exit(0);
    }
    return module->gc_dump[index].data;
}

