/*
  Co-Emulation Modeling Interface
  Project: bricks_out
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor -------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +-----+-+-+-+-+-+               +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|           [0] |7 6 5|4|3|2|1|0|
//      +-----+-+-+-+-+-+               +-----+-+-+-+-+-+
//             | | | | |                       | | | | |
//             | | | | +---game_new            | | | | +---v_sync
//             | | | +---btn_right             | | | +---pixel
//             | | +---btn_left                | | +---p_tick
//             | +---reset                     | +---game_over
//             +---clk                         +---game_complete
//

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            1   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x10  // Clock: METHOD emulation
#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200

  //attachInterrupt(digitalPinToInterrupt(PIN_IO_REQ), handlerIO_Req, RISING);
}

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);
  handlerIO_Req();
}

//---------------------------------------------------------------------------
#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 64
#define SCREEN_W_BYTE (SCREEN_WIDTH/8)  // 16
unsigned char TableBMP[SCREEN_W_BYTE*SCREEN_HEIGHT];

#define V_SYNC        0x01
#define PIXEL         0x02
#define P_TICK        0x04
#define GAME_OVER     0x08
#define GAME_COMPLETE 0x10

int cnt_p_tick = 0;
int nFrame = 0;
int nTry = 0;
bool bUpdateBuffer = false;

void handlerIO_Req(void)
{
  char szBuff[32];

  if (psce.txByte[0] & P_TICK)        handlerP_TICK();
  if (psce.txByte[0] & V_SYNC)        handlerV_SYNC();
  if (psce.txByte[0] & GAME_OVER)     handlerGame_Over();
  if (psce.txByte[0] & GAME_COMPLETE) handlerGame_Complete();
}
// Interrupt Handlers -----------------------------------------------------
void handlerP_TICK()
{
  //psce.disp_print(0,0,(char*)"handler P_Tick");

  int xPos = cnt_p_tick%SCREEN_WIDTH;
  int yPos = cnt_p_tick/SCREEN_WIDTH;
  int address = (yPos*SCREEN_W_BYTE)+xPos/8;

  if(!(xPos%8))  TableBMP[address] = 0x00;

  if (psce.txByte[0] & PIXEL)
    TableBMP[address] |= (uint8_t)(0x80>>(xPos%8));
  else
    TableBMP[address] &= ~(0x80>>(xPos%8));

  cnt_p_tick++;
}

void handlerGame_Over()
{
  char szBuff[32];

  nTry++;

  sprintf(szBuff,"Game Over\nFrame=%d Try=%d\nContinue?", nFrame, nTry);
  psce.u8g2->begin();
  psce.disp_print(0,0,(char*)szBuff);

  bUpdateBuffer = false;
  cnt_p_tick = 0;
}

void handlerGame_Complete()
{
  char szBuff[32];

  sprintf(szBuff,"Frame=%d Try=%d", nFrame, nTry);
  psce.u8g2->begin();
  psce.disp_print(0,0,(char*)szBuff);

  bUpdateBuffer = false;
  cnt_p_tick = 0;
}

void Render()
{
  bUpdateBuffer = true;
  cnt_p_tick = 0;
}

void handlerV_SYNC()
{
  //psce.disp_print(0, 12,(char*)"handler V_Sync");
  Render();
}

//--------------------------------------------------------------------
void setup1(void)
{
}

void loop1()
{
  if (bUpdateBuffer)
  {
    //psce.u8g2->begin();
    //psce.u8g2->clearBuffer();
    //psce.u8g2->setBitmapMode(false);  // Solid
    //psce.u8g2->drawBitmap(0, 0, SCREEN_WIDTH/8, SCREEN_HEIGHT, TableBMP); // 8-pixels per a byte
    //psce.u8g2->sendBuffer();

    psce.u8g2->firstPage();
    do {
      psce.u8g2->drawBitmap(0, 0, SCREEN_W_BYTE, SCREEN_HEIGHT, TableBMP);
    } while( psce.u8g2->nextPage() );

    bUpdateBuffer = false;
    nFrame++;
  }
}
