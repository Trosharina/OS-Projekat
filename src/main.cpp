#include "../h/MemoryAllocator.h"
#include "../h/Thread.h"
#include "../h/Scheduler.h"
#include "../h/Console.h"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../lib/hw.h"

extern "C" void trap();
void userMain();

static void set_trap_vector() {
    uint64 trapAddr = (uint64) &trap;
    asm volatile("csrw stvec, %0" : : "r"(trapAddr));
}

void idleBody(void*) {
    while (true)
        thread_dispatch();
}

static sem_t userMainDone;

void userMainWrapper(void*) {
    userMain();
    sem_signal(userMainDone);
}

int main() {
    MemoryAllocator::initialize_memory();
    set_trap_vector();

    kernel::Thread* mainThread = kernel::Thread::createMainThread();
    kernel::Scheduler::setRunning(mainThread);
    uint64 sysStackTop = (uint64)mainThread->getSystemStackBase() + DEFAULT_STACK_SIZE;
    asm volatile("csrw sscratch, %0" : : "r"(sysStackTop));

    kernel::Thread* idleT = kernel::Thread::createThread(idleBody, nullptr);
    kernel::Scheduler::setIdleThread(idleT);

    kernel::Console::initialize();

    uint64 sie;
    asm volatile("csrr %0, sie" : "=r"(sie));
    sie |= (1UL << 1);
    sie |= (1UL << 9);
    asm volatile("csrw sie, %0" : : "r"(sie));

    uint64 sstatus;
    asm volatile("csrr %0, sstatus" : "=r"(sstatus));
    sstatus |= (1UL << 1);
    sstatus |= (1UL << 5);
    asm volatile("csrw sstatus, %0" : : "r"(sstatus));

    sem_open(&userMainDone, 0);

    thread_t um;
    thread_create(&um, userMainWrapper, nullptr);

    sem_wait(userMainDone);

    *((volatile unsigned*)0x100000) = 0x5555;
    return 0;
}