#include "../h/Thread.h"
#include "../h/Console.h"
#include "../h/Scheduler.h"

namespace kernel {
    extern "C" void threadWrapper() {
        kernel::Thread* running = kernel::Scheduler::getRunning();
        running->getFunc()(running->getArg());
        thread_exit();
    }

    extern "C" void yield(Thread*, Thread*);

    extern "C" void kernelThreadStart();

    extern "C" void userThreadStart();

    int Thread::nextId = 0;

    Thread::Thread(void (*func)(void*), void* arg)
        : func(func), arg(arg)
        , userstackSpace(nullptr), systemstackSpace(nullptr), stackSize(0)
        , state(READY), kernelThread(false)
        , timeToWake(0), sleepNext(nullptr), readyNext(nullptr), remainingTime(0)
        , semNext(nullptr), semStatus(SIGNALED), semNeeded(0) , id(nextId++)
        , mail(nullptr), sendersWaiting(nullptr), recvWaiting(false){
        context.sp = 0;
    }

    Thread *Thread::createMainThread() {
        uint64 threadBlock = (sizeof(Thread) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        void* mem = MemoryAllocator::malloc(threadBlock);
        if (!mem) return nullptr;

        Thread* t = new(mem) Thread(nullptr, nullptr);

        uint64 sysStackSize = (DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        t->systemstackSpace = MemoryAllocator::malloc(sysStackSize);
        if (!t->systemstackSpace) return nullptr;
        t->stackSize = DEFAULT_STACK_SIZE;

        t->userstackSpace = nullptr;

        t->state = RUNNING;
        t->kernelThread = false;

        return t;
    }

    Thread *Thread::createThread(void (*func)(void *), void *arg) {
        uint64 threadBlock = (sizeof(Thread) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        void* mem = MemoryAllocator::malloc(threadBlock);
        if (!mem) return nullptr;

        Thread* t = new(mem) Thread(func, arg);

        uint64 stackBlock = (DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        t->systemstackSpace = MemoryAllocator::malloc(stackBlock);
        if (!t->systemstackSpace) return nullptr;
        t->userstackSpace = MemoryAllocator::malloc(stackBlock);
        if (!t->userstackSpace) return nullptr;
        t->stackSize = DEFAULT_STACK_SIZE;

        uint64* sysTop = (uint64*)((char*)t->systemstackSpace + DEFAULT_STACK_SIZE);
        uint64* userTop = (uint64*)((char*)t->userstackSpace + DEFAULT_STACK_SIZE);

        uint64* frame = (uint64*)sysTop;
        frame -= 13;
        frame[0] = (uint64)&userThreadStart;
        for (int i = 1; i < 13; frame[i++] = 0);
        frame[2] = (uint64)userTop;
        frame[3] = (uint64)&threadWrapper;
        frame[4] = (uint64)sysTop;

        t->context.sp = (uint64)frame;
        t->state = READY;
        t->kernelThread = false;
        return t;
    }

    Thread *Thread::createKernelThread(void (*func)(void *), void *arg) {
        uint64 threadBlock = (sizeof(Thread) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        void* mem = MemoryAllocator::malloc(threadBlock);
        if (!mem) return nullptr;
        Thread* t = new(mem) Thread(func, arg);

        uint64 stackBlock = (DEFAULT_STACK_SIZE + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        t->systemstackSpace = MemoryAllocator::malloc(stackBlock);
        if (!t->systemstackSpace) return nullptr;
        t->userstackSpace = nullptr;
        t->stackSize = DEFAULT_STACK_SIZE;
        t->kernelThread = true;

        uint64* sysTop = (uint64*)((char*)t->systemstackSpace + DEFAULT_STACK_SIZE);

        uint64* frame = (uint64*)sysTop;
        frame -= 13;
        frame[0] = (uint64)&kernelThreadStart;
        for (int i = 1; i < 13; frame[i++] = 0);
        frame[2] = (uint64)sysTop;
        frame[3] = (uint64)&threadWrapper;
        frame[4] = (uint64)sysTop;

        t->context.sp = (uint64)frame;
        t->state = READY;
        return t;
    }

    void Thread::send(Thread* t, char* message){
        Thread* cur = Scheduler::getRunning();

        if (t->mail) {
            t->sendersWaiting = cur;
            cur->state = BLOCKED;
            Thread* next = Scheduler::get();
            Scheduler::setRunning(next);
            yield(cur, next);
        }

        t->mail = message;

        if (t->recvWaiting) {
            t->recvWaiting = false;
            Scheduler::put(t);
        }
    }

    char *Thread::recieve() {
        Thread* cur = Scheduler::getRunning();

        if (!cur->mail) {
            cur->recvWaiting = true;
            cur->state = BLOCKED;
            Thread* next = Scheduler::get();
            Scheduler::setRunning(next);
            yield(cur, next);
        }

        char* msg = cur->mail;
        cur->mail = nullptr;

        if (cur->sendersWaiting) {
            Thread* s = cur->sendersWaiting;
            cur->sendersWaiting = nullptr;
            Scheduler::put(s);
        }
        return msg;
    }
}
