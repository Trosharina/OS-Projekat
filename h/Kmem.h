#ifndef OSPROJ_KMEM_H
#define OSPROJ_KMEM_H

#include "../lib/hw.h"

inline void* operator new(size_t, void* ptr) noexcept { return ptr; }
inline void* operator new[](size_t, void* ptr) noexcept { return ptr; }

#endif //OSPROJ_KMEM_H
