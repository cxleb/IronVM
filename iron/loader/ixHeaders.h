//
// Created by caleb on 18/02/2017.
//

#ifndef IRONVM_IXHEADERS_H
#define IRONVM_IXHEADERS_H

#include <stdint.h>

typedef struct IXHeader{
    char magic[2];
    char target;
    char unused;
    uint32_t entry;
    uint32_t size;
    uint32_t sections;
    uint32_t extrasize;

}__attribute__((packed));

typedef struct IXSection{
    char name[8];
    uint32_t ptr;
    uint32_t size;
};

#endif //IRONVM_IXHEADERS_H
