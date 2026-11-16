#include "../h/MemoryAllocator.h"

MemoryAllocator::MemPiece *MemoryAllocator::allocated = nullptr;
MemoryAllocator::MemPiece *MemoryAllocator::free = nullptr;

uint64 MemoryAllocator::allocd = 0;
uint64 MemoryAllocator::deallocd = 0;

void MemoryAllocator::insert(MemPiece **head, MemPiece *node, MemoryStatus status) {
    if (!node)
        return;

    node->status = status;
    if (!(*head)) {
        *head = node;
        return;
    }

    MemPiece *curr = *head;
    if (node < curr) {
        node->next = curr;
        *head = node;
        return;
    }

    MemPiece *prev = curr;
    for (MemPiece *c = curr->next; c; c = c->next) {
        if (node < c) {
            prev->next = node;
            node->next = c;
            return;
        }
        prev = c;
    }
    prev->next = node;
}

void MemoryAllocator::remove(MemPiece **head, MemPiece *node) {
    if (!head || !node || !(*head)) return;

    MemPiece *cur = *head;
    if (cur == node) {
        *head = cur->next;
        node->next = nullptr;
        return;
    }

    MemPiece *prev = cur;
    cur = cur->next;

    while (cur && cur != node) {
        prev = cur;
        cur = cur->next;
    }

    if (cur == node) {
        prev->next = node->next;
        node->next = nullptr;
    }
}

void MemoryAllocator::initialize_memory() {
    free = (MemPiece*)HEAP_START_ADDR;
    free->size = (size_t)((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR) / MEM_BLOCK_SIZE;
    free->next = nullptr;
    free->status = FREE;
}

void *MemoryAllocator::malloc(size_t size) {
    if (size == 0 || size * MEM_BLOCK_SIZE > (size_t)((uint64)HEAP_END_ADDR - (uint64)HEAP_START_ADDR))
        return nullptr;

    MemPiece *block = free;

    for (; block != nullptr; block = block->next) {
        if (block->size == size) {
            remove(&free,block);
            insert(&allocated, block, OCCUPIED);
            allocd+=size;
            return (void*)((char*)block + sizeof(MemPiece));
        }
        else if (block->size > size) {
            remove(&free, block);
            size_t originalSize = block->size;
            block->size = size;
            insert(&allocated, block, OCCUPIED);

            MemPiece* new_node = (MemPiece*)((char*)block + sizeof(MemPiece) + size * MEM_BLOCK_SIZE);
            new_node->next = nullptr;
            new_node->size = originalSize - size;

            insert(&free, new_node, FREE);

            char* ret_add = (char*)block + sizeof(MemPiece);
            allocd += size;
            return (void*)ret_add;
        }
    }
    return nullptr;
}

int MemoryAllocator::dealloc(void *ptr) {
    if (!ptr)
        return -1;

    MemPiece* mem = (MemPiece*)((char*)ptr - sizeof(MemPiece));

    if (mem->status != OCCUPIED)
        return -1;

    deallocd += mem->size;

    remove(&allocated, mem);
    insert(&free, mem, FREE);

    MemPiece *next = mem->next;
    if (next && (char*)mem + sizeof(MemPiece) + mem->size * MEM_BLOCK_SIZE == (char*)next) {
        mem->size += sizeof(MemPiece) / MEM_BLOCK_SIZE + next->size;
        remove(&free, next);
    }

    return 1;
}