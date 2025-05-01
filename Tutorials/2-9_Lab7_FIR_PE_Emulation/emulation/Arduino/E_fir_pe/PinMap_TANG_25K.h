//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PinMap_TANG_25K.h
// Purpose : Arduino DUE Pin-Map for PiSPEED's TANG-25K Board (GOWIN)
// Author  : GoodKook, goodkook@gmail.com

#ifndef _PINMAP_TANG_25K_
#define _PINMAP_TANG_25K_

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

#endif

