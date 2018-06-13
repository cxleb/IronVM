#include <stdlib.h>
#include "iron/vm.h"
#include "iron/core/loader.h"
#include "iron/core/iron.h"
//#include <stdio.h>

int main() {

    //execute(0);
    iron_module* unit = create_unit();
    load_ix(unit, "C:\\Programming\\IronVM\\compiler\\test.ix");

    execute(unit);

    free(unit);
    return 0;
}