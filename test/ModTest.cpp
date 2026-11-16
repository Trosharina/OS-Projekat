#include "ModTest.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"

void mod_test() {
    int c = getc();
    if (c == -1) {
        printString("Prepravljivanje ulaza");
        return;
    }

    printString("\n-------------\n");
    printString("TEST FINISHED");
    printString("\n-------------\n");
}
