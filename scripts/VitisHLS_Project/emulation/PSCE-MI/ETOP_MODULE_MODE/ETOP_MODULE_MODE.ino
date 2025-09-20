/*
  'fir8' Co-Emulation interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

#include "TM1637Display.h"  // 7-Seg. Display

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x08  // Clock

PSCE psce(DELAY_MICROS);

//-------------------------------------------------------------
#if defined(DUE_NORMAL)
#define TM1637_CLK  15
#define TM1637_DIO  14
#elif defined(PI_PICO)
#define TM1637_CLK  28
#define TM1637_DIO  27
#endif
#define N_DIGIT     6
#define TEST_DELAY  2000

uint8_t TM1637_data[] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff};

TM1637Display TM1637_display(TM1637_CLK, TM1637_DIO);

void setup()
{
  psce.init();  // BPS=115200

  TM1637_display.setBrightness(0x0f);
  TM1637_display.setSegments(TM1637_data, N_DIGIT);
}

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);

  TM1637_data[1] = TM1637_display.encodeDigit(psce.txByte[0]%10); // hh
  TM1637_data[2] = TM1637_display.encodeDigit(psce.txByte[0]/10); // hh
  TM1637_data[5] = TM1637_display.encodeDigit(psce.txByte[1]%10); // mm
  TM1637_data[0] = TM1637_display.encodeDigit(psce.txByte[1]/10); // mm
  TM1637_data[3] = TM1637_display.encodeDigit(psce.txByte[2]%10); // ss
  TM1637_data[4] = TM1637_display.encodeDigit(psce.txByte[2]/10); // ss
  TM1637_display.setSegments(TM1637_data, N_DIGIT);
}
