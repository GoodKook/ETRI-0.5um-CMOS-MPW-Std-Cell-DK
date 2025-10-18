/*
  Co-Emulation Modeling Interface
  (Cycle Accurate)
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

//#include "TM1637Display.h"  // 7-Seg. Display

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap
//      +---------+-+-+-+       +-+-+-+-+-+-+-+-+
//  [0] |         |2|1|0|   [1] |     x[7:0]    |
//      +---------+-+-+-+       +-+-+-+-+-+-+-+-+
//                 | | |
//                 | | +---ap_start
//                 | +---ap_rst
//                 +---ap_clk
// DUT's output bitmap
//      +-------+-+-+-+-+       +-+-+-+-+-+-+-+-+       +-+-+-+-+-+-+-+-+
//  [0] |       |3|2|1|0|   [1] |     y[7:0]    |   [2] |    y[15:8]    |
//      +-------+-+-+-+-+       +-+-+-+-+-+-+-+-+       +-+-+-+-+-+-+-+-+
//               | | | |
//               | | | +---y_ap_vld
//               | | +---ap_ready
//               | +---ap_idle
//               +---ap_done
//
#define N_RX            2   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x04  // Clock/METHOD
#define DUT_CLK_BITMAP  0x00  // Clock/THREAD

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

//uint8_t TM1637_data[] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
//
//TM1637Display TM1637_display(TM1637_CLK, TM1637_DIO);

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
