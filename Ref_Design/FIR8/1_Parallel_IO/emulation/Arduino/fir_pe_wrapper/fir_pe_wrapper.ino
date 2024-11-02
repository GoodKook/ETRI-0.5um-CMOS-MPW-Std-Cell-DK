/*
  FIR8's PE SystemC Co-Emulation (FPGA)
*/

#include "PSCE_APIs.h"

#define DELAY_MICROS    100
#define N_RX  4 // Yin, Xin, Cin
#define N_TX  3 // Yout, Xout

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x00  // No Ext. Clock

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200
}

void loop()
{
  psce.EMU_Blinker(0x20);
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position: NON
  psce.DUT_Posedge_Clk();
  psce.TxPacket(N_TX);
  psce.DUT_Negedge_Clk();
}
