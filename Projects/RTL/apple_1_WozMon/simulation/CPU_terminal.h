///////////////////////////////////////////////////////////////////
// Filename: CPU_Terminal.h
// Purpose : fifo server for Keyboard & Display terminal
//              can be used with CPU Core Test as StdIO
// Author: GoodKook, goodkook@gmail.com
// History: First release, Feb., 2024
// Compile: gcc -o CPU_terminal -pthread CPU_terminal.cpp
//
#ifndef _CPU_TERMINAL_H_
#define _CPU_TERMINAL_H_

#define STD_OUTPUT  "std_output.fifo"   // Standard output FIFO for Screen
#define STD_INPUT   "std_input.fifo"    // Standard input FIFO for Keyboard

#endif
