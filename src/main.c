#include "iron/vm.h"
#include "iron/memory/ram.h"
//#include <stdio.h>

int main() {
    initRam(256);
    execute(0);
    return 0;
}