/*
  Co-Emulation Modeling Interface
  Project: space_invaders_engine_glcd
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor ----------------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +---------+-+-+-+               +-------------+-+
//  [0] |7 6 5 4 3|2|1|0|           [0] |7 6 5 4 3 2 1|0|
//      +---------+-+-+-+               +-------------+-+
//                 | | |                               |
//                 | | +---in_valid                    +---out_valid
//                 | +---rst_n          +---------------+
//                 +---clk          [1] |7 6 5 4 3 2 1 0|
//       +---------------+              +-------+-------+
//   [1] |7 6 5 4 3 2 1 0|                      |
//       +-------+-------+                      +---y[7:0]
//               |
//               +---x[7:0]
//

#define N_RX            2   // Number of byte to DUT's inputs
#define N_TX            2   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x08  // Clock: METHOD emulation
#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200

  //attachInterrupt(digitalPinToInterrupt(PIN_IO_REQ), handlerIO_Req, FALLING);
}

void loop()
{
  psce.EMU_Blinker(0x10);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);

  handlerIO_Req();
}


//---------------------------------------------------------------------------
void handlerIO_Req(void)
{
  static uint8_t cnt = 0;
  static uint16_t x = 0,sum38 = 0, _sum38 = 0;

  if (!(psce.rxByte[0] & 0x02))  // if reset?
  {
    psce.u8g2->clearBuffer();
    psce.u8g2->setDrawColor(1);
    psce.disp_print(0,0,(char*)"Reset!");
    x = 0;
    cnt = 0;
    sum38 = 0;
    _sum38 = 0;
  }
  else if (psce.txByte[0] & 0x01)  // if data valid?
  {
    if (cnt>=38)
    {
      sum38 /= 38;
      sum38 /= 2;
      psce.u8g2->drawLine(x, _sum38-32, x+1, sum38-32);
      psce.u8g2->sendBuffer();
      cnt =0;
      _sum38 = sum38;
      sum38 = 0;
      x++;
    }
    else
    {
      sum38 += psce.txByte[1];
      cnt++;
    }
  }
}

//--------------------------------------------------------------------
//void setup1(void)
//{
//}
//
//void loop1()
//{
//}

