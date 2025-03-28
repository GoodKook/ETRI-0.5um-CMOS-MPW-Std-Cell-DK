/*
  Co-Emulation Modeling Interface
*/
// Standard Emulator -------------------------------------------------
#include "PSCE_Config.h"  // PSCE-MI, PSCE-TRANS selection

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    2

#define N_RX            2   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x04    // Clock from SystemC TB

// Instantiate PSCE object
PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200 & OLED Display
}

char szMsg[16];

#define AP_DONE   (psce.txByte[0] & 0x01)
#define AP_RETURN ((uint16_t)psce.txByte[2]<<8 | (uint16_t)psce.txByte[1])

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);
#ifdef OLED_DISPLAY
  if (AP_DONE)
  {
    //sprintf(szMsg, "Rx:0x%02X 0x%02X\nTx:0x%02X 0x%02X 0x%02X",
    //            psce.rxByte[0], psce.rxByte[1],
    //            psce.txByte[0], psce.txByte[1], psce.txByte[2]);
    sprintf(szMsg, "AP_Return = %4d", (int16_t)((psce.txByte[2] & 0x10)? AP_RETURN|0xE000: AP_RETURN));
    psce.disp_print(0,10, szMsg);
  }
#endif
}

