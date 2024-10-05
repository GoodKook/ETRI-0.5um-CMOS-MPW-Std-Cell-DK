/*
  Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
  PSCE Model Interface: SystemC to/from DUT Emulator
*/

// Standard Emulator ------------------------------------------------
#include "PSCE_APIs.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    10

#define N_RX            4   // Number of byte to DUT's inputs
                            //  Bitmap must match with SystemC TB and Verilog wrapper
#define N_TX            4   // Number of byte from DUT's output
                            //  Bitmap must match with SystemC TB and Verilog wrapper
#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x00

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200
}

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  //delay(10);
  psce.TxPacket(N_TX);
  //delay(10);
}
