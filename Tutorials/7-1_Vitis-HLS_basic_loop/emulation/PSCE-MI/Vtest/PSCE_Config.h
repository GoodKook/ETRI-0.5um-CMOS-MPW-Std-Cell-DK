//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PSCE_Config.h
// Purpose : PSCE Configuration
// Author  : GoodKook, goodkook@gmail.com

#ifndef _PSCE_CONFIG_H_
#define _PSCE_CONFIG_H_

//-------------------------------------------------------------------
// !!! IMPOTANCE: PSCE-MI Board Selection
#define DUE_OVERCLOCK
//#define PI_PICO
//#define ESP32_S3
//-------------------------------------------------------------------
// !!! IMPORTANCE: PSCE FPGA Board Selection
#include "PinMap_TANG_25K.h"
//#include "PinMap_A7_100T.h"
// OLED Display -----------------------------------------------------
// !!! IMPOTANCE: Slow emulation when debug message on OLED Display
//#define OLED_DISPLAY

#include "PSCE_APIs.h"

#endif
