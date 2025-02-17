/*
  CPU_6502's PE SystemC Co-Emulation (FPGA)
*/

// Standard Emulator ------------------------------------------------
#include "PSCE_APIs.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    10

#define N_RX  2 // xxx|clk|RDY|NMI|IRQ|reset, DI
#define N_TX  4 // AB[15:8], AB[7:0], DO, xxxxxxx|WE

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x10

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200
}

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);
}
