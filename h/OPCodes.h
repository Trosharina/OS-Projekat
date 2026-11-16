#ifndef OSPROJ_OPCODES_H
#define OSPROJ_OPCODES_H

#include "../lib//hw.h"

enum OpCodes {
    MEM_ALLOC = 0X01,
    MEM_FREE = 0x02,
    THREAD_CREATE = 0x11,
    THREAD_EXIT = 0x12,
    THREAD_DISPATCH = 0x13,
    GET_ID = 0X14,
    THREAD_SEND = 0x15,
    THREAD_RECIEVE = 0x16,
    SEM_OPEN = 0x21,
    SEM_CLOSE = 0x22,
    SEM_WAIT = 0x23,
    SEM_SIGNAL = 0x24,
    TIME_SLEEP = 0x31,
    GETC = 0x41,
    PUTC = 0x42
};

#endif