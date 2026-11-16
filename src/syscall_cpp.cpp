#include "../h/syscall_cpp.hpp"

void* operator new(size_t size) { return mem_alloc(size);}
void operator delete(void* ptr) { mem_free(ptr); }

Thread::Thread(void (*func)(void*), void* arg)
    : myHandle(nullptr), func(func), arg(arg){}

Thread::Thread()
    : myHandle(nullptr), func(nullptr), arg(nullptr){}

Thread::~Thread() {}

int Thread::start() {
    if (func) {
        return thread_create(&myHandle, func, arg);
    } else {
        return thread_create(&myHandle, &Thread::runWrapper, this);
    }
}

void Thread::runWrapper(void* arg) {
    Thread* t = (Thread*)arg;
    t->run();
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

int Thread::getId() {
    return get_thread_id();
}

void Thread::send(char *msg) {
    thread_send(this->myHandle, msg);
}

char* Thread::recieve() {
    return thread_recieve();
}

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period)
    : Thread(), period(period){}

void PeriodicThread::run() {
    while (period != 0) {
        periodicActivation();
        if (period != 0) time_sleep(period);
    }
}

void PeriodicThread::terminate() {
    period = 0;
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}