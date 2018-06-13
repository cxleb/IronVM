//
// Created by caleb on 11/06/2018.
//

#include <stdint.h>
#include <malloc.h>

uint8_t* block;

void gc_init(){
    block = malloc(256);
}

void gc_alloc_int(uint32_t index, uint32_t value){

}

