//
// Filename: defs.h
//
#ifndef _DEFS_H_
#define _DEFS_H_

#include <stdint.h>

#define A1_DISPLAY  "display.fifo"
#define A1_KEYBOARD "keyboard.fifo"

#define DISPLAY_PORT    0x00000010
#define KEYBOARD_PORT   0x00000014

#define MAX_BUF 128

#if defined(CR_LF_CR)
#define CR_LF  '\r'
#elif defined(CR_LF_LF)
#define CR_LF  '\n'
#else
#define CR_LF  '\0'
#endif

union Data32_in_Byte
{
    struct
    {
        uint8_t byte0;
        uint8_t byte1;
        uint8_t byte2;
        uint8_t byte3;
    };
    uint32_t    data32;
};

#endif
