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

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <cstring>

#include <sys/ioctl.h> // For FIONREAD
#include <termios.h>
#include <stdbool.h>
#include <pthread.h>

#define MAX_BUF     128
#define STD_OUTPUT  "std_output.fifo"   // Standard output
#define STD_INPUT   "std_input.fifo"    // Standard input

#endif
