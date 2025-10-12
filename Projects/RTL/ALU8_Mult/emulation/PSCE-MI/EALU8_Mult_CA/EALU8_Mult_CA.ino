/*
  Co-Emulation Modeling Interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor ----------------------------------------
// ALU8_Mult
// DUT's input bitmap             DUT's output bitmap
//      +-----+-+-+-+-+-+             +-------------+-+
//  [0] |7 6 5|4|3|2|1|0|         [0] |7 6 5 4 3 2 1|0|
//      +-----+-+-+-+-+-+             +-------------+-+
//             | | | | |                             |
//             | | | | +---clk                       +---Done_o
//             | | | +---reset
//             | | +---LoadA_i
//             | +---LoadB_i
//             +---LoadCmd_i
//      +---------------+             +---------------+
//  [1] |7 6 5 4 3 2 1 0|         [1] |7 6 5 4 3 2 1 0|
//      +---------------+             +---------------+
//              |                             |
//              +---ABCmd_i[7:0]              +---ACC_o[7:0]
//
#define N_RX            2   // Number of byte to DUT's inputs
#define N_TX            2   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x01  // Clock: METHOD emulation
//#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200
}

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);
}
