#ifndef OSPROJ_SEMAPHORE_H
#define OSPROJ_SEMAPHORE_H

#include "../lib/hw.h"
#include "Thread.h"
#include "MemoryAllocator.h"
#include "Scheduler.h"

namespace kernel {
    class Semaphore {
    public:
        static Semaphore* createSemaphore(unsigned);
        static int deallocSemaphore(Semaphore*);

        int wait();
        int signal();
    private:
        Semaphore(unsigned);

        int val;
        Thread* blockedHead;
        Thread* blockedTail;

        void block(Thread*);
        Thread* getBlocked();
    };
}

#endif //OSPROJ_SEMAPHORE_H
