//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PinMap_A7_100T.h
// Purpose : Arduino DUE Pin-Map for Digilent's A7-100T (Xilinx)
// Author  : GoodKook, goodkook@gmail.com

#ifndef _PINMAP_A7_100T_
#define _PINMAP_A7_100T_

#if defined(DUE_OVERCLOCK)	///////////////////////////////////////////////
//          Arduino DUE D#  // MI_BOARD |A7-100T
#define PIN_DOUT_EMU_0  44  // JB-1     |JB-1
#define PIN_DOUT_EMU_1  42  // JB-2     |JB-2
#define PIN_DOUT_EMU_2  40  // JB-3     |JB-3
#define PIN_DOUT_EMU_3  38  // JB-4     |JB-4
#define PIN_DOUT_EMU_4  45  // JB-7     |JB-7
#define PIN_DOUT_EMU_5  43  // JB-8     |JB-8
#define PIN_DOUT_EMU_6  41  // JB-9     |JB-9
#define PIN_DOUT_EMU_7  39  // JB-10    |JB-10

#define PIN_DIN_EMU_0   36  // JC-1     |JC-1
#define PIN_DIN_EMU_1   34  // JC-2     |JC-2
#define PIN_DIN_EMU_2   32  // JC-3     |JC-3
#define PIN_DIN_EMU_3   30  // JC-4     |JC-4
#define PIN_DIN_EMU_4   37  // JC-7     |JC-5
#define PIN_DIN_EMU_5   35  // JC-8     |JC-8
#define PIN_DIN_EMU_6   33  // JC-9     |JC-9
#define PIN_DIN_EMU_7   31  // JC-10    |JC-10

#define PIN_GET_EMU     26  // JD-1     |JD-1
#define PIN_LOAD_EMU    28  // JD-2     |JD-2
#define PIN_CLK_DUT     24  // JD-3     |JD-3
#define PIN_IO_REQ      22  // JD-4     |JD-4  -- Direct IQ Request from FPGA/DUT
#define PIN_CLK_EMU     29  // JD-7     |JD-7
#define PIN_ADDR_EMU_0  27  // JD-8     |JD-8
#define PIN_ADDR_EMU_1  25  // JD-9     |JD-9
#define PIN_ADDR_EMU_2  23  // JD-10    |JD-10

#elif defined(PI_PICO)	///////////////////////////////////////////////////////
//           RP2040 GPIO#   //          |A7-100T

#elif defined(ESP32_S3)	///////////////////////////////////////////////////////
//          ESP32-S3 GPIO#  // MI-Board |A7-100T
#define PIN_DOUT_EMU_0  19  // JA-1     |JB-1
#define PIN_DOUT_EMU_1  21  // JA-2     |JB-2
#define PIN_DOUT_EMU_2  36  // JA-3     |JB-3
#define PIN_DOUT_EMU_3  38  // JA-4     |JB-4
#define PIN_DOUT_EMU_4  20  // JA-7     |JB-7
#define PIN_DOUT_EMU_5  35  // JA-8     |JB-8
#define PIN_DOUT_EMU_6  37  // JA-9     |JB-9
#define PIN_DOUT_EMU_7  39  // JA-10    |JB-10

#define PIN_DIN_EMU_0   14  // JB-1     |JC-1
#define PIN_DIN_EMU_1   12  // JB-2     |JC-2
#define PIN_DIN_EMU_2   10  // JB-3     |JC-3
#define PIN_DIN_EMU_3   8   // JB-4     |JC-4
#define PIN_DIN_EMU_4   13  // JB-7     |JC-7
#define PIN_DIN_EMU_5   11  // JB-8     |JC-8
#define PIN_DIN_EMU_6   9   // JB-9     |JC-9
#define PIN_DIN_EMU_7   18  // JB-10    |JC-10

//#define PIN_GET_EMU     42  // JC-2     |JD-1 CAREFUL!
//#define PIN_LOAD_EMU    40  // JC-1     |JD-2 CAREFUL!
#define PIN_LOAD_EMU    40  // JC-1     |JD-1
#define PIN_GET_EMU     42  // JC-2     |JD-2
#define PIN_CLK_DUT     1   // JC-3     |JD-3
#define PIN_IO_REQ      16  // JC-4     |JD-4 -- Direct IQ Request from FPGA/DUT
#define PIN_CLK_EMU     41  // JC-7     |JD-7
#define PIN_ADDR_EMU_0  2   // JC-8     |JD-8
#define PIN_ADDR_EMU_1  17  // JC-9     |JD-9
#define PIN_ADDR_EMU_2  15  // JC-10    |JD-10

#else	/////////////////////////////////////////////////////////////////////////
#warning "PSCE-MI board NOT defined"
#endif

#endif

