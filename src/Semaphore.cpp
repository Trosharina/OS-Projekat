#include "../h/Semaphore.h"

namespace kernel {
    Semaphore::Semaphore(unsigned init)
    : val((int)init), blockedHead(nullptr), blockedTail(nullptr){ }

    extern "C" void yield(Thread*, Thread*);

    Semaphore *Semaphore::createSemaphore(unsigned init) {
        uint64 semSize = (sizeof(Semaphore) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
        void* mem = MemoryAllocator::malloc(semSize);
        if (!mem) return nullptr;
        return new(mem) Semaphore(init);
    }

    int Semaphore::deallocSemaphore(Semaphore *s) {
        if (!s) return -1;
        Thread* t;
        while ((t = s->getBlocked())) {
            t->semStatus = CLOSED;
            Scheduler::put(t);
        }
        MemoryAllocator::dealloc(s);
        return 0;
    }

    Thread *Semaphore::getBlocked() {
        if (!blockedHead) return nullptr;
        Thread* t = blockedHead;
        blockedHead = blockedHead->semNext;
        if (!blockedHead) blockedTail = nullptr;
        t->semNext = nullptr;
        return t;
    }

    void Semaphore::block(Thread* t) {
        t->semNext = nullptr;
        if (!blockedHead) blockedHead = blockedTail = t;
        else {
            blockedTail->semNext = t;
            blockedTail = blockedTail->semNext;
        }
        t->setState(BLOCKED);
        Thread* next = Scheduler::get();
        Scheduler::setRunning(next);
        yield(t, next);
    }

    int Semaphore::wait() {
        if (val > 0) {val--; return 0;}
        Thread* curr = Scheduler::getRunning();
        curr->semStatus = SIGNALED;
        block(curr);
        return curr->semStatus;
    }

    int Semaphore::signal() {
        Thread* t = getBlocked();
        if (t) {
            t->semStatus = SIGNALED;
            Scheduler::put(t);
            return 0;
        }
        val++;
        return 0;
    }
}