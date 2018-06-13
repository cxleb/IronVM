#include <stdlib.h>
#include "iron/vm.h"
#include "iron/core/loader.h"
#include "iron/memory/gc.h"
#include "iron/core/iron.h"
//#include <stdio.h>

int main() {

    //execute(0);
    iron_module* module = create_module();
    load_ix(module, "C:\\Programming\\IronVM\\compiler\\test.ix");

    gc_init(module);

    //execute(module);

    free(module);
    return 0;
}