//
// Created by caleb on 10/06/2018.
//

#include <malloc.h>
#include "repr.h"
#include "instance.h"

iron_unit* create_unit(){
    iron_unit* unit = malloc(sizeof(iron_unit));
    return unit;

}