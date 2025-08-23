//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PinMap_TANG_25K.h
// Purpose : Arduino DUE//Raspberry PI PICO
//           Pin-Map for PiSPEED's TANG-25K Board (GOWIN)
// Author  : GoodKook, goodkook@gmail.com

#ifndef _PINMAP_TANG_25K_
#define _PINMAP_TANG_25K_

#if defined(DUE_OVERCLOCK)	///////////////////////////////////////////////
//          Arduino DUE D#  // MI-Board |TANG25K
#define PIN_DOUT_EMU_7  53  // JA-7     |J4-12
#define PIN_DOUT_EMU_6  52  // JA-1     |J4-11
#define PIN_DOUT_EMU_5  51  // JA-8     |J4-10
#define PIN_DOUT_EMU_4  50  // JA-2     |J4-9 
#define PIN_DOUT_EMU_3  49  // JA-9     |J4-8 
#define PIN_DOUT_EMU_2  48  // JA-3     |J4-7 
#define PIN_DOUT_EMU_1  47  // JA-10    |J4-6
#define PIN_DOUT_EMU_0  46  // JA-4     |J4-5 

#define PIN_DIN_EMU_7   45  // JB-7     |J5-12
#define PIN_DIN_EMU_6   44  // JB-1     |J5-11
#define PIN_DIN_EMU_5   43  // JB-8     |J5-10
#define PIN_DIN_EMU_4   42  // JB-2     |J5-9 
#define PIN_DIN_EMU_3   41  // JB-9     |J5-8 
#define PIN_DIN_EMU_2   40  // JB-3     |J5-7 
#define PIN_DIN_EMU_1   39  // JB-10    |J5-6 
#define PIN_DIN_EMU_0   38  // JB-4     |J5-5 

#define PIN_IO_REQ      37  // JC-7     |J6-12 -- Direct IQ Request from FPGA/DUT
#define PIN_LOAD_EMU    36  // JC-1     |J6-11
#define PIN_GET_EMU     35  // JC-8     |J6-10
#define PIN_ADDR_EMU_2  34  // JC-2     |J6-9 
#define PIN_ADDR_EMU_1  33  // JC-9     |J6-8 
#define PIN_ADDR_EMU_0  32  // JC-3     |J6-7 
#define PIN_CLK_EMU     31  // JC-10    |J6-6 
#define PIN_CLK_DUT     30  // JC-4     |J6-5 

#elif defined(PI_PICO)	///////////////////////////////////////////////////////
//           RP2040 GPIO#   // MI_BOARD |TANG25K
#define PIN_DOUT_EMU_7  1   // JA-7     |J4-12
#define PIN_DOUT_EMU_6  0   // JA-1     |J4-11
#define PIN_DOUT_EMU_5  3   // JA-8     |J4-10
#define PIN_DOUT_EMU_4  2   // JA-2     |J4-9 
#define PIN_DOUT_EMU_3  5   // JA-9     |J4-8 
#define PIN_DOUT_EMU_2  4   // JA-3     |J4-7 
#define PIN_DOUT_EMU_1  7   // JA-10    |J4-6 
#define PIN_DOUT_EMU_0  6   // JA-4     |J4-5 

#define PIN_DIN_EMU_7   9   // JB-7     |J5-12
#define PIN_DIN_EMU_6   8   // JB-1     |J5-11
#define PIN_DIN_EMU_5   11  // JB-8     |J5-10
#define PIN_DIN_EMU_4   10  // JB-2     |J5-9 
#define PIN_DIN_EMU_3   13  // JB-9     |J5-8 
#define PIN_DIN_EMU_2   12  // JB-3     |J5-7 
#define PIN_DIN_EMU_1   15  // JB-10    |J5-6 
#define PIN_DIN_EMU_0   14  // JB-4     |J5-5 

#define PIN_IO_REQ      17  // JC-7     |J6-12 -- Direct IQ Request from FPGA/DUT
#define PIN_LOAD_EMU    16  // JC-1     |J6-11
#define PIN_GET_EMU     19  // JC-8     |J6-10
#define PIN_ADDR_EMU_2  18  // JC-2     |J6-9 
#define PIN_ADDR_EMU_1  21  // JC-9     |J6-8 
#define PIN_ADDR_EMU_0  20  // JC-3     |J6-7 
#define PIN_CLK_EMU     26  // JC-10    |J6-6 
#define PIN_CLK_DUT     22  // JC-4     |J6-5 

#elif defined(ESP32_S3)	///////////////////////////////////////////////////////
//          ESP32-S3 GPIO#  // MI_BOARD |TANG25K
#define PIN_DOUT_EMU_7  20  // JA-7     |J4-12
#define PIN_DOUT_EMU_6  19  // JA-1     |J4-11
#define PIN_DOUT_EMU_5  35  // JA-8     |J4-10
#define PIN_DOUT_EMU_4  21  // JA-2     |J4-9 
#define PIN_DOUT_EMU_3  37  // JA-9     |J4-8 
#define PIN_DOUT_EMU_2  36  // JA-3     |J4-7 
#define PIN_DOUT_EMU_1  39  // JA-10    |J4-6 
#define PIN_DOUT_EMU_0  38  // JA-4     |J4-5 

#define PIN_DIN_EMU_7   13  // JB-7     |J5-12
#define PIN_DIN_EMU_6   14  // JB-1     |J5-11
#define PIN_DIN_EMU_5   11  // JB-8     |J5-10
#define PIN_DIN_EMU_4   12  // JB-2     |J5-9 
#define PIN_DIN_EMU_3   9   // JB-9     |J5-8 
#define PIN_DIN_EMU_2   10  // JB-3     |J5-7 
#define PIN_DIN_EMU_1   18  // JB-10    |J5-6 
#define PIN_DIN_EMU_0   8   // JB-4     |J5-5 

#define PIN_IO_REQ      41  // JC-7     |J6-12 -- Direct IQ Request from FPGA/DUT
#define PIN_LOAD_EMU    40  // JC-1     |J6-11
#define PIN_GET_EMU     2   // JC-8     |J6-10
#define PIN_ADDR_EMU_2  42  // JC-2     |J6-9 
#define PIN_ADDR_EMU_1  17  // JC-9     |J6-8 
#define PIN_ADDR_EMU_0  1   // JC-3     |J6-7 
#define PIN_CLK_EMU     15  // JC-10    |J6-6 
#define PIN_CLK_DUT     16  // JC-4     |J6-5 

#else	/////////////////////////////////////////////////////////////////////////
#warning "PSCE-MI board NOT defined"
#endif

#endif

