#ifndef OSPROJ_BUFFER_H
#define OSPROJ_BUFFER_H

#include "../lib/hw.h"

template<typename T, uint64 CAP>
class Buffer {
public:
    Buffer() : head(0), tail(0), count(0) {}
    bool isEmpty() {return count == 0;}
    bool isFull() { return count == CAP; }
    bool put(T x) {
        if (isFull()) return false;
        data[tail] = x;
        tail = (tail + 1) % CAP;
        count++;
        return true;
    }
    bool get(T& out) {
        if (isEmpty()) return false;
        out = data[head];
        head = (head + 1) % CAP;
        count--;
        return true;
    }
private:
    T data[CAP];
    uint64 head, tail, count;
};

#endif //OSPROJ_BUFFER_H
