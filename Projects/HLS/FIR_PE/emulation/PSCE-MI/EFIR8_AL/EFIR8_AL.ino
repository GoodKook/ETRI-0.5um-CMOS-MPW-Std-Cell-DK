/*
  Co-Emulation Modeling Interface
  (Algorithm Level)
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
#define DUT_CLK_BITMAP  0x04  // Clock

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

#include "FIR8.h"

// Inputs
#define C_AP_START  0x01
#define C_AP_RST    0x02
#define C_AP_CLK    0x04
bool    ap_start, ap_rst, ap_clk;
data_t  x;
// Outputs
#define C_Y_AP_VLD  0x01
#define C_AP_READY  0x02
#define C_AP_IDLE   0x04
#define C_AP_DONE   0x08
bool    y_ap_vld, ap_ready, ap_idle, ap_done; // Outputs
acc_t   y;

enum _cState {S_RESET, S_IDLE, S_READY, S_GET_INPUT, S_DONE, S_SET_OUTPUT} cState;

void setup()
{
  psce.init();  // BPS=115200

  psce.txByte[0] = 0x00;
  y_ap_vld = ap_ready = ap_idle = ap_done = false;
  cState = S_RESET;
//  TM1637_display.setBrightness(0x0f);
//  TM1637_display.setSegments(TM1637_data, N_DIGIT);
}

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxData(N_RX);

  y_ap_vld = ap_ready = ap_idle = ap_done = false;

  if (psce.rxByte[0] & C_AP_RST)
    cState = S_RESET;
  else
  {
    switch(cState)
    {
      case S_RESET:
        ap_idle = true;
        cState = S_IDLE;
        break;
      case S_IDLE:
        if (psce.rxByte[0] & C_AP_START)
          cState = S_READY;
        else
          ap_idle = true;
        break;
      case S_READY:
        ap_ready = true;
        cState = S_GET_INPUT;
        break;
      case S_GET_INPUT:
        x = psce.rxByte[1];
        cState = S_DONE;
        break;
      case S_DONE:
        y_ap_vld = ap_done = true;
        FIR8(&y, x);
        cState = S_SET_OUTPUT;
        break;
      case S_SET_OUTPUT:
        cState = S_IDLE;
        break;
    }
  }

  psce.txByte[0] = 0x00;
  if (y_ap_vld) psce.txByte[0] |= C_Y_AP_VLD;
  if (ap_ready) psce.txByte[0] |= C_AP_READY;
  if (ap_idle)  psce.txByte[0] |= C_AP_IDLE;
  if (ap_done)  psce.txByte[0] |= C_AP_DONE;
  psce.txByte[1] = y;
  psce.txByte[2] = (y>>8);
  psce.TxData(N_TX);

//  TM1637_data[1] = TM1637_display.encodeDigit(psce.txByte[0]%10); // hh
//  TM1637_data[2] = TM1637_display.encodeDigit(psce.txByte[0]/10); // hh
//  TM1637_data[5] = TM1637_display.encodeDigit(psce.txByte[1]%10); // mm
//  TM1637_data[0] = TM1637_display.encodeDigit(psce.txByte[1]/10); // mm
//  TM1637_data[3] = TM1637_display.encodeDigit(psce.txByte[2]%10); // ss
//  TM1637_data[4] = TM1637_display.encodeDigit(psce.txByte[2]/10); // ss
//  TM1637_display.setSegments(TM1637_data, N_DIGIT);
}
