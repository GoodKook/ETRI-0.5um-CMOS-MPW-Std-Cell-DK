/*
  Co-Emulation Modeling Interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap
//      +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|
//      +-----+-+-+-+-+-+
//             | | | | |
//             | | | | +----clk
//             | | | +---reset
//             | | +---busy
//             | +---up
//             +---down
// DUT's output bitmap
//      +-+-------------+
//  [0] |7|6 5 4 3 2 1 0|
//      +-+-------------+
//               |
//               +---x_pos[6:0]
//      +-+-+-------+-+-+
//  [1] |7|6|5 4 3 2 1 0|
//      +-+-+-----------+
//       | |      |
//       | |      +---y_pos[5:0]
//       | +---pixel
//       +---p_tick
//
#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            2   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x01  // Clock: METHOD emulation
#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200
}

void loop()
{
  psce.EMU_Blinker(0x80);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);
}
