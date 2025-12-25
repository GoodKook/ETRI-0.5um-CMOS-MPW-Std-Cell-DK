#include <Arduino.h>
#line 1 "/home/goodkook/MyChip_Work/Projects/RTL/pong_pt1/emulation/PSCE-MI/Epong_pt1_CA/Epong_pt1_CA.ino"
/*
  Co-Emulation Modeling Interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

//#include "TM1637Display.h"  // 7-Seg. Display

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor -------------------------------
// DUT's input bitmap             DUT's output bitmap
//      +-----+-+-+-+-+-+             +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|         [0] |7 6 5 4|3|2|1|0|
//      +-----+-+-+-+-+-+             +-----+-+-+-+-+-+
//             | | | | |                       | | | |
//             | | | | +---down                | | | +---rgb
//             | | | +---up                    | | +---vsync
//             | | +---enable                  | +---hsync
//             | +---reset                     +---p_tick
//             +---clk
//

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            1   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x10  // Clock: METHOD emulation
#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

//-------------------------------------------------------------
//#if defined(DUE_NORMAL)
//#define TM1637_CLK  15
//#define TM1637_DIO  14
//#elif defined(PI_PICO)
//#define TM1637_CLK  28
//#define TM1637_DIO  27
//#endif
//#define N_DIGIT     6
//#define TEST_DELAY  2000
//
//uint8_t TM1637_data[] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
//
//TM1637Display TM1637_display(TM1637_CLK, TM1637_DIO);

#line 50 "/home/goodkook/MyChip_Work/Projects/RTL/pong_pt1/emulation/PSCE-MI/Epong_pt1_CA/Epong_pt1_CA.ino"
void setup();
#line 58 "/home/goodkook/MyChip_Work/Projects/RTL/pong_pt1/emulation/PSCE-MI/Epong_pt1_CA/Epong_pt1_CA.ino"
void loop();
#line 50 "/home/goodkook/MyChip_Work/Projects/RTL/pong_pt1/emulation/PSCE-MI/Epong_pt1_CA/Epong_pt1_CA.ino"
void setup()
{
  psce.init();  // BPS=115200

//  TM1637_display.setBrightness(0x0f);
//  TM1637_display.setSegments(TM1637_data, N_DIGIT);
}

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);

//  TM1637_data[1] = TM1637_display.encodeDigit(psce.txByte[0]%10); // hh
//  TM1637_data[2] = TM1637_display.encodeDigit(psce.txByte[0]/10); // hh
//  TM1637_data[5] = TM1637_display.encodeDigit(psce.txByte[1]%10); // mm
//  TM1637_data[0] = TM1637_display.encodeDigit(psce.txByte[1]/10); // mm
//  TM1637_data[3] = TM1637_display.encodeDigit(psce.txByte[2]%10); // ss
//  TM1637_data[4] = TM1637_display.encodeDigit(psce.txByte[2]/10); // ss
//  TM1637_display.setSegments(TM1637_data, N_DIGIT);
}

