#ifndef OSPROJ_SYSCALL_C_H
#define OSPROJ_SYSCALL_C_H

#include "../lib//hw.h"

typedef struct _thread* thread_t;
typedef struct _sem* sem_t;
typedef unsigned long time_t;
const int EOF = -1;

void* mem_alloc(size_t);
int mem_free(void*);
int thread_exit();
void thread_dispatch();
int thread_create(thread_t* ,void (*func)(void*), void*);
int get_thread_id();
int thread_send(thread_t, char*);
char* thread_recieve();
int sem_open(sem_t*, unsigned);
int sem_close(sem_t);
int sem_wait(sem_t);
int sem_signal(sem_t);
int time_sleep(time_t);
char getc();
void putc(char);

#endif //OSPROJ_SYSCALL_C_H
