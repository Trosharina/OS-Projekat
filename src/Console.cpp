#include "../h/Console.h"
#include "../h/Thread.h"
#include "../h/Scheduler.h"

namespace kernel {
    Buffer<char, 256> Console::inBuf;
    Buffer<char, 256> Console::outBuf;
    Semaphore* Console::inItems = nullptr;
    Semaphore* Console::outSpace = nullptr;
    Semaphore* Console::outItems = nullptr;
    bool Console::overflow = false;

    void Console::initialize() {
        inItems = Semaphore::createSemaphore(0);
        outSpace = Semaphore::createSemaphore(256);
        outItems = Semaphore::createSemaphore(0);

        Thread* out = Thread::createKernelThread(outputThreadBody, nullptr);
        Scheduler::put(out);
    }

    static inline uint64 readReg(uint64 addr) {
        return *(volatile uint8*)addr;
    }

    static inline void writeReg(uint64 addr, char c) {
        *(volatile uint8*)addr = (uint8)c;
    }

    void Console::putc(char c) {
        outSpace->wait();
        outBuf.put(c);
        outItems->signal();
    }

    char Console::getc() {
        if (overflow) {
            return (char)-1;
        }
        inItems->wait();
        char c = 0;
        inBuf.get(c);
        return c;
    }

    void Console::outputThreadBody(void *) {
        while (true) {
            outItems->wait();
            char c = 0;
            outBuf.get(c);
            while ((readReg(CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) == 0) {
                thread_dispatch();
            }
            writeReg(CONSOLE_TX_DATA, c);
            outSpace->signal();
        }
    }

    void Console::handleInterrupt() {
        while (readReg(CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT) {
            char c = (char)readReg(CONSOLE_RX_DATA);
            if (!inBuf.put(c)) {
                overflow = true;
                inItems->signal();
            }else {
                inItems->signal();
            }
        }
    }

}