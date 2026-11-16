#include "../lib/hw.h"
#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"
#include "../h/Scheduler.h"
#include "../h/OPCodes.h"
#include "../h/Semaphore.h"
#include "../h/Console.h"

using namespace kernel;

extern "C" void yield(Thread*, Thread*);

static Thread* toDelete = nullptr;

static void cleanupFinished() {
    if (toDelete) {
        MemoryAllocator::dealloc(toDelete->getSystemStackBase());
        MemoryAllocator::dealloc(toDelete);
        toDelete = nullptr;
    }
}

extern "C" void TrapHandler(uint64* context) {
    cleanupFinished();
    uint64 scause;
    asm volatile("csrr %0, scause" : "=r"(scause));

    if (scause == 0x08 || scause == 0x09) {
        context[31] += 4;

        uint64 syscallCode = context[13];
        uint64 arg1 = context[14];

        switch (syscallCode) {
            case MEM_ALLOC: {
                void* adr = MemoryAllocator::malloc((size_t)arg1);
                context[13] = (uint64)adr;
                break;
            }
            case MEM_FREE: {
                int status = MemoryAllocator::dealloc((void*)arg1);
                context[13] = (uint64)status;
                break;
            }
            case THREAD_EXIT: {
                Thread* old = Scheduler::getRunning();
                old->setState(FINISHED);
                toDelete = old;
                Thread* next = Scheduler::get();
                Scheduler::setRunning(next);
                yield(old, next);
                break;
            }
            case THREAD_DISPATCH: {
                Thread* old = Scheduler::getRunning();
                Scheduler::put(old);
                Thread* next = Scheduler::get();
                Scheduler::setRunning(next);
                yield(old, next);
                break;
            }
            case THREAD_CREATE: {
                thread_t* handle = (thread_t*)context[14];
                void(*routine)(void*) = (void(*)(void*))context[15];
                void* arg = (void*)context[16];
                Thread* t = Thread::createThread(routine, arg);
                if (!t) {context[13] = (uint64)-1; break;};
                *handle = (thread_t)t;
                Scheduler::put(t);
                context[13] = (uint64)0;
                break;
            }
            case GET_ID: {
                context[13] = (uint64)Scheduler::getRunning()->getId();
                break;
            }
            case THREAD_SEND: {
                Scheduler::getRunning()->send((Thread*)context[14], (char*)context[15]);
                context[13] = 0;
                break;
            }
            case THREAD_RECIEVE: {
                char* msg = Scheduler::getRunning()->recieve();
                context[13] = (uint64)msg;
                break;
            }
            case SEM_OPEN: {
                sem_t* handle = (sem_t*)context[14];
                unsigned init = (unsigned)context[15];
                Semaphore* s = Semaphore::createSemaphore(init);
                if (!s) {context[13] = (uint64)-1; break;};
                *handle = (sem_t)s;
                context[13] = (uint64)0;
                break;
            }
            case SEM_CLOSE: {
                context[13] = (uint64)Semaphore::deallocSemaphore((Semaphore*)context[14]);
                break;
            }
            case SEM_WAIT: {
                context[13] = (uint64)((Semaphore*)context[14])->wait();
                break;
            }
            case SEM_SIGNAL: {
                context[13] = (uint64)((Semaphore*)context[14])->signal();
                break;
            }
            case TIME_SLEEP: {
                uint64 ticks = context[14];
                Thread* old = Scheduler::getRunning();
                Scheduler::putToSleep(old, ticks);
                Thread* next = Scheduler::get();
                Scheduler::setRunning(next);
                yield(old, next);
                context[13] = (uint64)0;
                break;
            }
            case GETC: {
                context[13] = (uint64)Console::getc();
                break;
            }
            case PUTC: {
                Console::putc((char)context[14]);
                context[13] = (uint64)0;
                break;
            }
            default:
                context[13] = (uint64)-1;
                break;
        }
    }
    else if (scause == 0x8000000000000001ULL) {
        uint64 sip;
        __asm__ volatile("csrr %0, sip" : "=r"(sip));
        sip &= ~(1ULL << 1);
        __asm__ volatile("csrw sip, %0" : : "r"(sip));

        Scheduler::onTick();

        Thread* old = Scheduler::getRunning();
        Scheduler::put(old);
        Thread* next = Scheduler::get();
        Scheduler::setRunning(next);
        yield(old, next);
    }

    else if (scause == 0x8000000000000009ULL) {
        int irq = plic_claim();
        if (irq == CONSOLE_IRQ){
            Console::handleInterrupt();
        }
        plic_complete(irq);
    }
}