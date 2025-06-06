//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PinMap_TANG_25K.h
// Purpose : Arduino DUE//Raspberry PI PICO
//           Pin-Map for PiSPEED's TANG-25K Board (GOWIN)
// Author  : GoodKook, goodkook@gmail.com

#ifndef _PINMAP_TANG_25K_
#define _PINMAP_TANG_25K_

#if defined(DUE_OVERCLOCK)	///////////////////////////////////////////////
                           //TANG25K|MI_BOARD
#define PIN_IO_REQ      37  // J6-12|JC-7   -- Direct IQ Request from FPGA/DUT
#define PIN_LOAD_EMU    36  // J6-11|JC-1
#define PIN_GET_EMU     35  // J6-10|JC-8
#define PIN_ADDR_EMU_2  34  // J6-9 |JC-2
#define PIN_ADDR_EMU_1  33  // J6-8 |JC-9
#define PIN_ADDR_EMU_0  32  // J6-7 |JC-3
#define PIN_CLK_EMU     31  // J6-6 |JC-10
#define PIN_CLK_DUT     30  // J6-5 |JC-4

#define PIN_DIN_EMU_7   45  // J5-12|JB-7
#define PIN_DIN_EMU_6   44  // J5-11|JB-1
#define PIN_DIN_EMU_5   43  // J5-10|JB-8
#define PIN_DIN_EMU_4   42  // J5-9 |JB-2
#define PIN_DIN_EMU_3   41  // J5-8 |JB-9
#define PIN_DIN_EMU_2   40  // J5-7 |JB-3
#define PIN_DIN_EMU_1   39  // J5-6 |JB-10
#define PIN_DIN_EMU_0   38  // J5-5 |JB-4

#define PIN_DOUT_EMU_7  53  // J4-12|JA-7
#define PIN_DOUT_EMU_6  52  // J4-11|JA-1
#define PIN_DOUT_EMU_5  51  // J4-10|JA-8
#define PIN_DOUT_EMU_4  50  // J4-9 |JA-2
#define PIN_DOUT_EMU_3  49  // J4-8 |JA-9
#define PIN_DOUT_EMU_2  48  // J4-7 |JA-3
#define PIN_DOUT_EMU_1  47  // J4-6 |JA-10
#define PIN_DOUT_EMU_0  46  // J4-5 |JA-4
#elif defined(PI_PICO)	///////////////////////////////////////////////////////
                           //TANG25K|MI_BOARD
#define PIN_IO_REQ      17  // J6-12|JC-7   -- Direct IQ Request from FPGA/DUT
#define PIN_LOAD_EMU    16  // J6-11|JC-1
#define PIN_GET_EMU     19  // J6-10|JC-8
#define PIN_ADDR_EMU_2  18  // J6-9 |JC-2
#define PIN_ADDR_EMU_1  21  // J6-8 |JC-9
#define PIN_ADDR_EMU_0  20  // J6-7 |JC-3
#define PIN_CLK_EMU     26  // J6-6 |JC-10
#define PIN_CLK_DUT     22  // J6-5 |JC-4

#define PIN_DIN_EMU_7   9   // J5-12|JB-7
#define PIN_DIN_EMU_6   8   // J5-11|JB-1
#define PIN_DIN_EMU_5   11  // J5-10|JB-8
#define PIN_DIN_EMU_4   10  // J5-9 |JB-2
#define PIN_DIN_EMU_3   13  // J5-8 |JB-9
#define PIN_DIN_EMU_2   12  // J5-7 |JB-3
#define PIN_DIN_EMU_1   15  // J5-6 |JB-10
#define PIN_DIN_EMU_0   14  // J5-5 |JB-4

#define PIN_DOUT_EMU_7  1   // J4-12|JA-7
#define PIN_DOUT_EMU_6  0   // J4-11|JA-1
#define PIN_DOUT_EMU_5  3   // J4-10|JA-8
#define PIN_DOUT_EMU_4  2   // J4-9 |JA-2
#define PIN_DOUT_EMU_3  5   // J4-8 |JA-9
#define PIN_DOUT_EMU_2  4   // J4-7 |JA-3
#define PIN_DOUT_EMU_1  7   // J4-6 |JA-10
#define PIN_DOUT_EMU_0  6   // J4-5 |JA-4
#elif defined(ESP32_S3)	///////////////////////////////////////////////////////
                           //TANG25K|MI_BOARD
#define PIN_IO_REQ      41  // J6-2 |JC-7   -- Direct IQ Request from FPGA/DUT
#define PIN_LOAD_EMU    40  // J6-1 |JC-1
#define PIN_GET_EMU     2   // J6-4 |JC-8
#define PIN_ADDR_EMU_2  42  // J6-3 |JC-2
#define PIN_ADDR_EMU_1  17  // J6-6 |JC-9
#define PIN_ADDR_EMU_0  1   // J6-5 |JC-3
#define PIN_CLK_EMU     15  // J6-8 |JC-10
#define PIN_CLK_DUT     16  // J6-7 |JC-4

#define PIN_DIN_EMU_7   13  // J5-2 |JB-7
#define PIN_DIN_EMU_6   14  // J5-1 |JB-1
#define PIN_DIN_EMU_5   11  // J5-4 |JB-8
#define PIN_DIN_EMU_4   12  // J5-3 |JB-2
#define PIN_DIN_EMU_3   9   // J5-6 |JB-9
#define PIN_DIN_EMU_2   10  // J5-5 |JB-3
#define PIN_DIN_EMU_1   18  // J5-8 |JB-10
#define PIN_DIN_EMU_0   8   // J5-7 |JB-4

#define PIN_DOUT_EMU_7  20  // J4-2 |JA-7
#define PIN_DOUT_EMU_6  19  // J4-1 |JA-1
#define PIN_DOUT_EMU_5  35  // J4-4 |JA-8
#define PIN_DOUT_EMU_4  21  // J4-3 |JA-2
#define PIN_DOUT_EMU_3  37  // J4-6 |JA-9
#define PIN_DOUT_EMU_2  36  // J4-5 |JA-3
#define PIN_DOUT_EMU_1  39  // J4-8 |JA-10
#define PIN_DOUT_EMU_0  38  // J4-7 |JA-4
#else	/////////////////////////////////////////////////////////////////////////
#warning "PSCE-MI board NOT defined"
#endif

#endif

