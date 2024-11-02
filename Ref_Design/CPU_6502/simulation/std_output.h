///////////////////////////////////////////////////////////////////
// Filename: std_output.h
// Purpose : fifo server for Display terminal
//              can be used with CPU Core Test as StdOUT
// Author: GoodKook, goodkook@gmail.com
// History: First release, Feb., 2024
// Compile: gcc -o std_output std_output.cpp
//
#ifndef _STD_OUTPUT_H_
#define _STD_OUTPUT_H_

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>

#define STD_OUTPUT  "std_output.fifo"

#endif

