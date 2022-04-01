#pragma once

#include <stddef.h>

#include <libucontext/libucontext.h>

#define ucontext_t libucontext_ucontext_t
#define getcontext libucontext_getcontext
#define setcontext libucontext_setcontext
#define swapcontext libucontext_swapcontext
#define makecontext libucontext_makecontext