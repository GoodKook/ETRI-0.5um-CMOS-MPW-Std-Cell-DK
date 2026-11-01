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
//      +-------+-+-+-+-+               +---+-----------+
//  [0] |7 6 5 4|3|2|1|0|           [0] |7 6|5 4 3 2 1 0|
//      +-------+-+-+-+-+               +-+-+-----+-----+
//               | | | |                          |
//               | | | +---start                  +---ss[5:0]
//               | | +---clear          +---+-----------+
//               | +---rst_n        [1] |7 6|5 4 3 2 1 0|
//               +---clk                +-+-+-----+-----+
//                                                |
//                                                +---mm[5:0]
//                                      +-----+---------+
//                                  [2] |7 6 5|4 3 2 1 0|
//                                      +-----+---+-----+
//                                                |
//                                                +---hh[4:0]

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

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
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);

  handlerIO_Req();
}


//---------------------------------------------------------------------------
void handlerIO_Req(void)
{
  uint8_t  ss = psce.txByte[0] & 0x3F;
  uint8_t  mm = psce.txByte[1] & 0x3F;
  uint8_t  hh = psce.txByte[2] & 0x1F;

  char szMsg[32];
  sprintf(szMsg, "hh:mm:ss = %02d:%02d:%02d", hh, mm, ss);
  psce.disp_print(0, 20, (char*)szMsg);
}

//--------------------------------------------------------------------
void setup1(void)
{
}

void loop1()
{
}

