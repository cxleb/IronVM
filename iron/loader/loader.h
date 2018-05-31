//
// Created by caleb on 15/02/2017.
//

#ifndef IRONVM_LOADER_H
#define IRONVM_LOADER_H

void loadBinaryFile(const char* fname, int stackSize);
void loadIronExecutable(const char* fname);

size_t fsize;

#endif //IRONVM_LOADER_H
