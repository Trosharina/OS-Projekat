#include "../h/syscall_c.h"
#include "../h/OPCodes.h"

inline uint64 sys_call0(uint64 opCode) {
    register uint64 a0 __asm__("a0") = opCode;
    __asm__ volatile (
        "ecall"
        :  "+r" (a0)
        );
    return a0;
}

inline uint64 sys_call1(uint64 opCode, uint64 arg1) {
    register uint64 a0 __asm__("a0") = opCode;
    register uint64 a1 __asm__("a1") = arg1;
    __asm__ volatile (
        "ecall"
        :  "+r" (a0)
        : "r" (a1)
        );
    return a0;

}

inline uint64 sys_call2(uint64 opCode, uint64 arg1, uint64 arg2) {
    register uint64 a0 __asm__("a0") = opCode;
    register uint64 a1 __asm__("a1") = arg1;
    register uint64 a2 __asm__("a2") = arg2;
    __asm__ volatile (
        "ecall"
        :  "+r" (a0)
        : "r"(a1), "r"(a2)
        );
    return a0;
}

inline uint64 sys_call3(uint64 opCode, uint64 arg1, uint64 arg2, uint64 arg3) {
    register uint64 a0 __asm__("a0") = opCode;
    register uint64 a1 __asm__("a1") = arg1;
    register uint64 a2 __asm__("a2") = arg2;
    register uint64 a3 __asm__("a3") = arg3;
    __asm__ volatile (
        "ecall"
        :  "+r" (a0)
        : "r" (a1), "r" (a2), "r" (a3)
        );
    return a0;
}

void *mem_alloc(size_t size) {
    size_t block = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    return (void*)sys_call1(MEM_ALLOC, (uint64)block);
}

int mem_free(void * ptr) {
    if (!ptr)
        return 0;
    return (int)sys_call1(MEM_FREE, (uint64)ptr);
}

int thread_exit() {
    return (int)sys_call0(THREAD_EXIT);
}

void thread_dispatch() {
    sys_call0(THREAD_DISPATCH);
}

int thread_create(thread_t* handle, void(start_routine)(void*), void* arg) {
    return (int)sys_call3(THREAD_CREATE, (uint64)handle, (uint64)start_routine, (uint64)arg);
}

int get_thread_id() {
    return (int)sys_call0(GET_ID);
}

int thread_send(thread_t t, char *msg) {
    return (int)sys_call2(THREAD_SEND, (uint64)t, (uint64)msg);
}

char* thread_recieve() {
    return (char*)sys_call0(THREAD_RECIEVE);
}

int sem_open(sem_t *handle, unsigned init) {
    return (int)sys_call2(SEM_OPEN, (uint64)handle, (uint64)init);
}

int sem_close(sem_t handle) {
    return (int)sys_call1(SEM_CLOSE, (uint64)handle);
}

int sem_wait(sem_t id) {
    return (int)sys_call1(SEM_WAIT, (uint64)id);
}

int sem_signal(sem_t id) {
    return (int)sys_call1(SEM_SIGNAL, (uint64)id);
}

int time_sleep(time_t t) {
    return (int)sys_call1(TIME_SLEEP, (uint64)t);
}

char getc() {
    return (char)sys_call0(GETC);
}

void putc(char c) {
    sys_call1(PUTC, (uint64)c);
}
