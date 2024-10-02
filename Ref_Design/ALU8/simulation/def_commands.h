/*******************************************************************************
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: def_commands.h
Purpose: I/O Constants for 8-bit ALU_wrapper
Revision History: Dec 15 2023,
        Feb. 2024, Multiplier, FSM for I/O
*******************************************************************************/
#ifndef _SC_DEF_COMMANDS_H_
#define _SC_DEF_COMMANDS_H_

#define FUNC_MUL    0x80
#define FUNC_BCD    0x40
#define FUNC_SHR    0x20
#define FUNC_CI     0x10

#define FUNC_ADD    0x03    // 0011   AI + BI
#define FUNC_SUB    0x07    // 0111   AI - BI
#define FUNC_ADD2   0x0B    // 1011   AI + AI
#define FUNC_OR     0x0C    // 1100   AI | BI
#define FUNC_AND    0x0D    // 1101   AI & BI
#define FUNC_XOR    0x0E    // 1110   AI ^ BI
#define FUNC_NON    0x0F    // 1111   AI

#endif
