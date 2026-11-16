#ifndef OSPROJ_THREAD_H
#define OSPROJ_THREAD_H

#include "../lib/hw.h"
#include "MemoryAllocator.h"
#include "Kmem.h"
#include "../h/syscall_c.h"
#include "SemStatus.h"
#include "ThreadState.h"

namespace kernel {
    struct Context {
        uint64 sp;
    };

    class Thread {
    public:
        Context context;
        Thread(void (*func)(void*), void*);
        ~Thread();

        static Thread* createThread(void (*func)(void*), void*);
        static Thread* createMainThread();
        static Thread* createKernelThread(void (*func)(void*), void*);

        void start();
        int exit();

        ThreadState getState() const { return state; }
        void* getSystemStackBase() const { return systemstackSpace; }
        void (*getFunc())(void*) const {return func;}
        void* getArg() const { return arg; }

        void setState(ThreadState state) { this->state = state; }
        int getId() const { return id; }

        void send(Thread* t, char* message);
        char* recieve();
    private:
        void (*func)(void*);
        void* arg;

        void* userstackSpace;
        void* systemstackSpace;
        uint64 stackSize;

        ThreadState state;
        bool kernelThread;

        uint64 timeToWake;
        Thread* sleepNext;

        Thread* readyNext;

        uint64 remainingTime;

        Thread* semNext;
        SemStatus semStatus;
        unsigned semNeeded;

        int id;
        static int nextId;

        char* mail;
        Thread* sendersWaiting;
        bool recvWaiting;

        friend class Scheduler;
        friend class Semaphore;
    };

}


#endif
