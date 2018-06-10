//
// Created by caleb on 2/06/2018.
//

#ifndef IRONVM_VM_H
#define IRONVM_VM_H

#include "core/repr.h"

void execute(iron_unit* unit);
void exeInstruction(iron_unit* unit);

#endif //IRONVM_VM_H
