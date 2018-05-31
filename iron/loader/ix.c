#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include "ixHeaders.h"

#define TARGET 1

void loadIronExecutable(const char* fname){
    FILE* file = fopen(fname,"r");
    fseek(file, 0L, SEEK_END);
    uint32_t fileSize = ftell(file);
    char* prog = (char*)malloc(fileSize);
    fseek(file, 0L, SEEK_SET);
    fread(prog,1,fileSize,file);
    fclose(file);

    struct IXHeader* header = (struct IXHeader*) prog;
    if(strncmp(header->magic, "IX", 2) == 0){
        if(header->target <= TARGET){
        }else{
            printf("Unsupported Target: %u, current target %u\n", header->target, TARGET);
        }
    }else {
        puts("nay :(");
    }
}
