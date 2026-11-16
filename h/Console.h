#ifndef OSPROJ_CONSOLE_H
#define OSPROJ_CONSOLE_H

#include "../lib/hw.h"
#include "Buffer.h"
#include "Semaphore.h"

namespace kernel {
    class Console {
    public:
        static void initialize();
        static void handleInterrupt();

        static void putc(char);
        static char getc();

    private:
        static Buffer<char, 256> inBuf;
        static Buffer<char, 256> outBuf;

        static Semaphore* inItems;
        static Semaphore* outSpace;
        static Semaphore* outItems;

        static bool overflow;

        static void outputThreadBody(void*);
    };
}

#endif //OSPROJ_CONSOLE_H
