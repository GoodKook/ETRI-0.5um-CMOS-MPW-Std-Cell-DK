#line 1 "/home/goodkook/MyChip_Work/Projects/RTL/pong_pt1/emulation/PSCE-MI/Epong_pt1_CA/PSCE_Config.h"
//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PSCE_Config.h
// Purpose : PSCE Configuration
// Author  : GoodKook, goodkook@gmail.com

#ifndef _PSCE_CONFIG_H_
#define _PSCE_CONFIG_H_

//-------------------------------------------------------------------
// !!! IMPOTANCE: PSCE-MI Board Selection
// Board & UART_BPS & Target FPGA by CLI -D macro
// Ex) --build-property compiler.cpp.extra_flags="-DOLED_DISPLAY -DDUE_NORMAL -DUART_BPS=115200 -DCYCLONE_IV"\
//#define DUE_OVERCLOCK // Warning: DUE Overclocking causes UART un-stable
//#define DUE_NORMAL
//#define PI_PICO
//#define ESP32_S3
//-------------------------------------------------------------------
//#define UART_BPS 115200
// OLED Display -----------------------------------------------------
// !!! IMPORTANCE: Slow emulation when debug message on OLED Display
//#define OLED_DISPLAY
//-------------------------------------------------------------------
// !!! IMPORTANCE: PSCE FPGA Board Selection
#if TANG_25K
    #include "PinMap_TANG_25K.h"
#elif defined(A7_100T) || defined(CYCLONE_IV)
    #include "PinMap_A7_100T.h"
#else
    #perror "FPGA Board not specified [CYCLONE_IV|TANG_25K|A7_100T]"
#endif

#include "PSCE_APIs.h"

#endif
