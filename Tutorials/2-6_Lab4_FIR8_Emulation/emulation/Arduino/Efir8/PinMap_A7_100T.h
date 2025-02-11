//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PinMap_A7_100T.h
// Purpose : Arduino DUE Pin-Map for Digilent's A7-100T (Xilinx)
// Author  : GoodKook, goodkook@gmail.com

#ifndef _PINMAP_A7_100T_
#define _PINMAP_A7_100T_

#define PIN_IO_REQ      22  // JD-4   -- Direct IQ Request from FPGA/DUT
#define PIN_GET_EMU     26  // JD-1
#define PIN_LOAD_EMU    28  // JD-2
#define PIN_CLK_EMU     29  // JD-7
#define PIN_CLK_DUT     24  // JD-3
#define PIN_ADDR_EMU_0  27  // JD-8
#define PIN_ADDR_EMU_1  25  // JD-9
#define PIN_ADDR_EMU_2  23  // JD-10

#define PIN_DIN_EMU_0   36  // JC-1
#define PIN_DIN_EMU_1   34  // JC-2
#define PIN_DIN_EMU_2   32  // JC-3
#define PIN_DIN_EMU_3   30  // JC-4
#define PIN_DIN_EMU_4   37  // JC-7
#define PIN_DIN_EMU_5   35  // JC-8
#define PIN_DIN_EMU_6   33  // JC-9
#define PIN_DIN_EMU_7   31  // JC-10

#define PIN_DOUT_EMU_0  44  // JB-1 
#define PIN_DOUT_EMU_1  42  // JB-2
#define PIN_DOUT_EMU_2  40  // JB-3
#define PIN_DOUT_EMU_3  38  // JB-4
#define PIN_DOUT_EMU_4  45  // JB-7
#define PIN_DOUT_EMU_5  43  // JB-8
#define PIN_DOUT_EMU_6  41  // JB-9
#define PIN_DOUT_EMU_7  39  // JB-10

#endif

