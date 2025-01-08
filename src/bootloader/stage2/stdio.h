#pragma once
#include <stdint.h>

#define attr __attribute__((cdecl))

void putc(char c);
void puts(const char* str);
void printf(const char* fmt, ...);
void print_buffer(const char* msg, const void* buffer, uint32_t count);
void clear_screen();