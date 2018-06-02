//
// Created by caleb on 2/06/2018.
//

#include "thread.h"

iron_cpu cpus[256];
uint8_t cpuCount = 0;

void create_cpu(size_t entry, uint8_t index){
    iron_cpu cpu;
    cpu.br = 0; // gp byte register
    cpu.ef = 0; // equals flag
    cpu.gf = 0; // greater then flag
    cpu.lf = 0; // less then flag
    cpu.nf = 0; // not equal flag
    cpu.zf = 0; // zero flag
    cpu.g0 = 0; // gp 0
    cpu.g1 = 0; // gp 1
    cpu.g2 = 0; // gp 2
    cpu.g3 = 0; // gp 3
    cpu.g4 = 0; // gp 4
    cpu.g5 = 0; // gp 5
    cpu.g6 = 0; // gp 6
    cpu.g7 = 0; // gp 7
    cpu.g8 = 0; // gp 8
    cpu.g9 = 0; // gp 9
    cpu.g10 = 0; // gp 10
    cpu.g11 = 0; // gp 11
    cpu.g12 = 0; // gp 12
    cpu.g13 = 0; // gp 13
    cpu.g14 = 0; // gp 14
    cpu.g15 = 0; // gp 15
    cpu.sa1 = 0; // string address 1
    cpu.sa2 = 0; // string adress 2
    cpu.fp = 0; // function pointer
    cpu.ip = entry; // instruction pointer

    cpu.running = 1;
    cpu.finished = 0;

    cpus[index] = cpu;

    cpuCount++;
}

void end_cpu(uint8_t index){
    cpus[index].finished = 1;
}

