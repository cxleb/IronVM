#include <stdio.h>
#include <stdlib.h>
#include "../memory/stack.h"
#include "../memory/ram.h"
#include "loader.h"
#include <unistd.h>

size_t fsize;

void loadBinaryFile(const char* fname, int stackSize){

    if( access(fname, F_OK) == -1){
        puts("File Doesnt Exist!");
        exit(0);
    }

    FILE* file;
    file = fopen(fname, "r");

    fseek(file, 0, SEEK_END);
    fsize = ftell(file);
    rewind(file);

    initStack(stackSize);
    initRam(fsize + stackSize);

    fsize = fsize + 1;

    char* buff = (char*) malloc(fsize);
    fgets(buff, fsize, file);
    writeBlock(buff, fsize, 0);

    fclose(file);
    free(buff);
}

