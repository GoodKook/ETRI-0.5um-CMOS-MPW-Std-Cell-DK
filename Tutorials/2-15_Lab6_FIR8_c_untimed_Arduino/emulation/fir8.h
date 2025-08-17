/* -----------------------------------------------------------
Filename : fir8.h
Purpose  : Emulation Wrapper for FIR Filter @ Arduino DUE (ARM Core)
Author   : goodkook@gmail.com
History  : Mar. 2024, First Release
-------------------------------------------------------------- */

#ifndef _FIR8_H_
#define _FIR8_H_

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#include <stdint.h>

#define F_SAMPLE    4800

typedef uint8_t	    data_t;
typedef uint16_t    acc_t;

bool fir(acc_t* Yout, data_t Xin);

#endif

