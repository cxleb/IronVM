#include <stdio.h>
#include "iron/memory/stack.h"
#include "iron/memory/ram.h"
#include "iron/vm.h"
#include "iron/instructions.h"
#include "iron/loader/loader.h"
#include "iron/interpreter/interpreter.h"

int main(int argc, char *argv[]) {

    int i;
    if( argc >= 2 )
    {
        setupSyscallInterface();

        //loadIronExecutable("test.ix");

        loadBinaryFile(argv[1], 0xff);

        execute(0);
    }
    else
    {
        printf("No specified program to run!\nPlease use IronVM program_name.ix!");
    }




    return 0;
}