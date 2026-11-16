#include "../h/Scheduler.h"

namespace kernel {
    Thread* Scheduler::readyHead = nullptr;
    Thread* Scheduler::readyTail = nullptr;
    Thread* Scheduler::running = nullptr;
    Thread* Scheduler::sleepingHead = nullptr;
    Thread* Scheduler::idleThread = nullptr;

    void Scheduler::put(Thread* t) {
        if (!t || t == idleThread)
            return;
        t->readyNext = nullptr;
        t->state = READY;
        if (!readyHead) {
            readyHead = readyTail = t;
        } else {
            readyTail->readyNext = t;
            readyTail = readyTail->readyNext;
        }
    }

    Thread *Scheduler::get() {
        if (!readyHead) return idleThread;
        Thread* t = readyHead;
        readyHead = readyHead->readyNext;
        if (!readyHead) readyTail = nullptr;
        t->readyNext = nullptr;
        return t;
    }

    Thread* Scheduler::getRunning() {
        return running;
    }

    void Scheduler::setRunning(Thread *t) {
        running = t;
        if (t) t->state = RUNNING;
    }


    void Scheduler::setIdleThread(Thread *t) {
        idleThread = t;
    }

    void Scheduler::putToSleep(Thread *t, uint64 ticks) {
        t->state = BLOCKED;
        t->sleepNext = nullptr;

        if (ticks == 0) {
            put(t);
            return;
        }

        Thread** curr = &sleepingHead;
        while (*curr && (*curr)->timeToWake <= ticks) {
            ticks -= (*curr)->timeToWake;
            curr = &(*curr)->sleepNext;
        }

        t->timeToWake = ticks;
        t->sleepNext = *curr;
        if (*curr) {
            (*curr)->timeToWake -= ticks;
        }
        (*curr) = t;
    }

    void Scheduler::onTick() {
        if (!sleepingHead) return;
        sleepingHead->timeToWake--;
        while (sleepingHead && sleepingHead->timeToWake == 0) {
            Thread* t = sleepingHead;
            sleepingHead = sleepingHead->sleepNext;
            t->sleepNext = nullptr;
            put(t);
        }
    }
}
