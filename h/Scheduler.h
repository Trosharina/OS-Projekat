#ifndef OSPROJ_SCHEDULER_H
#define OSPROJ_SCHEDULER_H

#include "Thread.h"

namespace kernel {
    class Scheduler {
    public:
        static void put(Thread*);
        static Thread* get();
        static Thread* getRunning();
        static void setRunning(Thread*);
        static void putToSleep(Thread*, uint64);
        static void onTick();
        static void setIdleThread(Thread*);
    private:
        static Thread* readyHead;
        static Thread* readyTail;
        static Thread* running;
        static Thread* sleepingHead;
        static Thread* idleThread;
    };
}



#endif
