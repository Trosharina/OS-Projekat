#ifndef OSPROJ_SYSCALL_CPP_H
#define OSPROJ_SYSCALL_CPP_H

#include "syscall_c.h"

void* operator new(size_t);
void operator delete(void*);

class Thread {
public:
    Thread(void (*func)(void*), void*);
    virtual ~Thread();
    int start();
    static void dispatch();
    static int sleep(time_t);
    int getId();

    void send(char* msg);
    char* recieve();
protected:
    Thread();
    virtual void run() {}
private:
    static void runWrapper(void*);
    thread_t myHandle;
    void (*func)(void*);
    void* arg;
};

class Semaphore {
public:
    Semaphore(unsigned init = 1);
    virtual ~Semaphore();
    int wait();
    int signal();
private:
    sem_t myHandle;
};

class PeriodicThread: public Thread {
public:
    void terminate();
protected:
    PeriodicThread(time_t);
    virtual void periodicActivation() {}
    void run() override;
private:
    time_t period;
};

class Console{
public:
    static char getc();
    static void putc(char);
};

#endif //OSPROJ_SYSCALL_CPP_H
