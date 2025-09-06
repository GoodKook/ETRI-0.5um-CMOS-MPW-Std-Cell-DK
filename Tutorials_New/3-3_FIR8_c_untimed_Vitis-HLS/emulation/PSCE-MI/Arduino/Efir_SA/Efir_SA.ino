/*
  'fir8' Co-Emulation interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    10

#define N_RX            2   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x08  // Clock

PSCE psce(DELAY_MICROS);

//------------------------------------------------------------------------------
// DUT Specific: fir
// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +-------+-+-+-+-+                         +---------------+---------------+
//  [0] |7 6 5 4|3|2|1|0|(RX_CONTROL)       [1:0] |7 6 5 4 3 2 1 0|7 6 5 4 3 2 1 0|
//      +-------+-+-+-+-+                         +-------------------------------+
//               |   | |                                          |
//               |   | +---ap_rst                                 +---y[15:0]
//               |   +-----ap_start               +-----+-+-+-+---+
//               |                            [2] |     |4|3|2|1|0| (TX_CONTROL)
//               +---------(ap_clk)               +-----+-+-+-+-+-+
//                                                         | | | |
//      +---------------+                                  | | | +-----ap_done
//  [1] |7 6 5 4 3 2 1 0|                                  | | +-------ap_idle
//      +-------+-------+                                  | +---------ap_ready
//              |                                          +-----------y_ap_vld
//              +---------x[7:0]
//
#define RX_CONTROL  0
#define TX_CONTROL  2

#define AP_RESET  0x01
#define AP_START  0x02
#define AP_CLK    0x08

#define AP_DONE   0x01
#define AP_IDLE   0x02
#define AP_READY  0x04
#define Y_AP_VLD  0x08

void ClockCycle()
{
    psce.DUT_Negedge_Clk();
    psce.DUT_Posedge_Clk();
}

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200
}

bool bReady = false;

#define N_LATENCY 22

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);
  psce.TxPacket(N_TX);

  if (!(psce.rxByte[0] & AP_CLK) && bReady)
  {
    for (int i=0; i<N_LATENCY; i++)
      ClockCycle();
  }

  if (!(psce.rxByte[0] & AP_CLK))
    bReady = (psce.txByte[2] & AP_READY)? true:false;
}
