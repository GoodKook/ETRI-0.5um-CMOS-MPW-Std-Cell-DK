/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: DUT_wrapper.ino
Purpose: Bridge between SystemC TB wrapper to FPGA Emulator
Revision History: Jun. 1, 2024
*******************************************************************************/
// Standard Emulator ------------------------------------------------
#include "PSCE_APIs.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    10
#define N_RX            2 // Number of assembled byte for DUT inputs
#define N_TX            2 // Number of byte to be dis-assembled
#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x00  // No clocking from SystemC TB

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200
}

void loop()
{
  psce.EMU_Blinker(0x40);
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);
  psce.TxPacket(N_TX);
}
