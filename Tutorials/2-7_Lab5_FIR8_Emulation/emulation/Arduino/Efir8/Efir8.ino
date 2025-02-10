/*
  'fir8' Co-Emulation interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_APIs.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    10

#define N_RX            3   // Number of byte to DUT's inputs
                            //  Bitmap must match with SystemC TB and Verilog wrapper
                            //  [0]=Xin
                            //  [1]=Yin[7:0]
                            //  [2]=Yin[15:8]
#define N_TX            3   // Number of byte from DUT's output
                            //  Bitmap must match with SystemC TB and Verilog wrapper
                            //  [0]=Xout[7:0]
                            //  [1]=Yout[7:0]
                            //  [2]=Yout[15:8]
#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x00    // No Clock from SystemC TB

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

