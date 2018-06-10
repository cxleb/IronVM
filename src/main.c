#include <stdlib.h>
#include "iron/vm.h"
#include "iron/loader/ix_loader.h"
#include "iron/core/instance.h"
#include "iron/core/repr.h"
//#include <stdio.h>

int main() {

    //execute(0);
    iron_unit* unit = create_unit();
    load_ix(unit, "C:\\Programming\\IronVM\\compiler\\test.ix");

    execute(unit);

    free(unit);
    return 0;
}