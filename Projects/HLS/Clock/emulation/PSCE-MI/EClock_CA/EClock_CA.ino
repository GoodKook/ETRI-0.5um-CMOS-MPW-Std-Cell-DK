/*
  Co-Emulation Modeling Interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x08  // Clock

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

#ifdef OLED_DISPLAY
  char szBuff[32];
  sprintf(szBuff, "%02d:%02d:%02d", psce.txByte[0], psce.txByte[1], psce.txByte[2]);
  psce.disp_print(0,0,(char*)szBuff);
#endif
}
