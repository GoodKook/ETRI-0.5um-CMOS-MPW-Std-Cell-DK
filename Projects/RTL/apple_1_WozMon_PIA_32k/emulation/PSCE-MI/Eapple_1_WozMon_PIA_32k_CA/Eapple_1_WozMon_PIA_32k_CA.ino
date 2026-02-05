/*
  Co-Emulation Modeling Interface(CA-Mode)
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

//#include "TM1637Display.h"  // 7-Seg. Display

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +-+-+-+-+-+-+-+-+                       +-----------+-+-+
//  [0] |7|6|5|4|3|2|1|0|                   [0] |           |1|0|
//      +-+-+-+-+-+-+-+-+                       +-----------+-+-+
//       | | | | | | | |                                     | |
//       | | | | | | | +---reset                             | +---kbd_ack
//       | | | | | | +---IRQ                                 +---dsp_rdy
//       | | | | | +---NMI                      +-+-------------+
//       | | | | +---kbd_rdy                [1] | |6 5 4 3 2 1 0|
//       | | | +---dsp_ack                      +-+-----+-------+
//       | | +---emu_en                                 |
//       | +---emu_clk                                  +---dsp_data[6:0]
//       +---emu_we
//      +-+-------------+                       +---------------+
//  [1] |7|6 5 4 3 2 1 0|                   [2] |7 6 5 4 3 2 1 0|
//      +-+-----+-------+                       +-------+-------+
//       |      |                                       |
//       |      +---kbd_data[6:0]                       +---emu_do[7:0]
//       +---clk(DUT_CLK_BITMAP)
//      +---------+-+-+-+
//  [2] |7|6|5|4|3|2|1|0|
//      +-------+-+-+-+-+
//              |
//              +---emu_addr[7:0]
//      +-+-------------+
//  [3] | |6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[14:8]
//      +---------------+
//  [4] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_di
//

#define N_RX            5   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

#define DUT_CLK_BYTE    1
#define DUT_CLK_BITMAP  0x80  // Clock: METHOD emulation
//#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

//-------------------------------------------------------------

void setup()
{
  psce.init();  // BPS=115200
}

void loop()
{
  psce.EMU_Blinker(16);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);
}
