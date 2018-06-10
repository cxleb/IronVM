//
// Created by caleb on 10/06/2018.
//

#ifndef IRONVM_REPR_H
#define IRONVM_REPR_H

#include <stdint.h>
#include <stdio.h>

typedef struct iron_cpu{
    uint8_t br; // gp byte register
    uint8_t ef; // equals flag
    uint8_t gf; // greater then flag
    uint8_t lf; // less then flag
    uint8_t nf; // not equal flag
    uint8_t zf; // zero flag
    uint32_t g0; // gp 0
    uint32_t g1; // gp 1
    uint32_t g2; // gp 2
    uint32_t g3; // gp 3
    uint32_t g4; // gp 4
    uint32_t g5; // gp 5
    uint32_t g6; // gp 6
    uint32_t g7; // gp 7
    uint32_t g8; // gp 8
    uint32_t g9; // gp 9
    uint32_t g10; // gp 10
    uint32_t g11; // gp 11
    uint32_t g12; // gp 12
    uint32_t g13; // gp 13
    uint32_t g14; // gp 14
    uint32_t g15; // gp 15
} iron_cpu;

typedef struct iron_thread{
    iron_cpu cpu; //
    size_t ip; // instruction pointer
    uint8_t frames;
} iron_thread;

typedef struct iron_unit{
    uint8_t* text; // this is program itself
    iron_thread main_thread;
}iron_unit;

#endif //IRONVM_REPR_H
