/*
  'fir_pe' Co-Emulation interface
*/

//#define EMULATION_CA
#define EMULATION_SA

// Standard Emulator ------------------------------------------------
#include "PSCE_APIs.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    2

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            1   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x00    // No Clock from SystemC TB

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200
}

#ifdef EMULATION_CA
void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);
}
#elif defined(EMULATION_SA)
void loop(void)
{
  psce.EMU_Input(0, 0x0C);  // Reset on Bit3, Enable on Bit2
  psce.DUT_Input();

  psce.DUT_Posedge_Clk();
  psce.DUT_Negedge_Clk();

  psce.DUT_Posedge_Clk();
  psce.DUT_Negedge_Clk();

  psce.DUT_Posedge_Clk();
  psce.DUT_Negedge_Clk();

  psce.EMU_Input(0, 0x04);  // Enable on Bit2
  psce.DUT_Input();

  while(1)
  {
    psce.RxPacket_nb(N_RX); // Receive key input, if available

    psce.DUT_Posedge_Clk();
    psce.DUT_Negedge_Clk();
  }
}
#endif

