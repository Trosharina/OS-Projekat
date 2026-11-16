#ifndef OSPROJ_MEMORYALLOCATOR_H
#define OSPROJ_MEMORYALLOCATOR_H

#include "../lib/hw.h"

enum MemoryStatus {
    FREE,
    OCCUPIED
};

class MemoryAllocator {
public:
    static void initialize_memory();

    static void *malloc(size_t size);
    static int dealloc(void*);

private:
    MemoryAllocator() = delete;

    struct MemPiece {
        size_t size;
        MemPiece* next;
        MemoryStatus status;
    };

    static void insert(MemPiece **head, MemPiece *node, MemoryStatus status);
    static void remove(MemPiece **head, MemPiece *node);

    static MemPiece *allocated, *free;

    static uint64 allocd;
    static uint64 deallocd;
};

#endif