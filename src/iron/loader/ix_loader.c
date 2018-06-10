//
// Created by caleb on 10/06/2018.
//

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "../core/repr.h"

void load_ix(iron_unit* unit, char* file_path){
    // make sure file exists
    if( access(file_path, F_OK) == -1){
        puts("File Doesnt Exist!");
        exit(0);
    }

    FILE* file;
    size_t fsize;

    // get file object and size of file
    file = fopen(file_path, "r");
    fseek(file, 0, SEEK_END);
    fsize = ftell(file);
    rewind(file);

    // get contents of file into a buffer
    fsize = fsize + 1;
    char* buff = (char*) malloc(fsize);
    fgets(buff, fsize, file);
    fclose(file);

    // check file
    if (buff[0] == 'I' && buff[1] == 'X' && buff[2] == 'E'){
    }else{
        puts("Wrong file type has been loaded, please use an iron executable!");
        exit(0);
    }

    if (buff[3] == 1){
    }else{
        puts("Wrong file version has been used, make sure your the version of the iron executable matches the current virtual machine version");
        exit(0);
    }
    uint32_t entry = (uint32_t) (buff[7] << 24) | (buff[6] << 16) | (buff[5] << 8) | (buff[4]);
    uint32_t position = (uint32_t) (buff[11] << 24) | (buff[10] << 16) | (buff[9] << 8) | (buff[8]);
    uint32_t size = (uint32_t) (buff[15] << 24) | (buff[14] << 16) | (buff[13] << 8) | (buff[12]);
    //printf("entry: %d, pos: %d, size: %d\n", entry, position, size);

    unit->text = (uint8_t*)(buff + entry);
    unit->main_thread.ip = position;
    unit->main_thread.frames = 1;

    // write data
    free(buff);
}

