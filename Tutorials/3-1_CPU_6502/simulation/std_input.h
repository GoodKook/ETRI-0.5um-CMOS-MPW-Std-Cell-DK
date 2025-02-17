///////////////////////////////////////////////////////////////////
// Filename: std_input.h
// Purpose : fifo server for Keyboard terminal
//              can be used with CPU Core Test as StdIN
// Author: GoodKook, goodkook@gmail.com
// History: First release, Feb., 2024
// Compile: gcc -o std_input std_input.cpp
//
#ifndef _STD_INPUT_H_
#define _STD_INPUT_H_

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>
#include <cstring>

#define MAX_BUF 128
#define STD_INPUT "std_input.fifo"

#endif
