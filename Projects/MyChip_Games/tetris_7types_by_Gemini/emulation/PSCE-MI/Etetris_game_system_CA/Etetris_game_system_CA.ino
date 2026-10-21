/*
  Co-Emulation Modeling Interface
  Project: tetris_game_system
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor -------------------------------
// DUT's input bitmap                DUT's output bitmap
//      +-+-+-+-+-+-+-+-+                +-----+-+-+-+-+-+
//  [0] |7|6|5|4|3|2|1|0|            [0] |7 6 5|4|3|2|1|0|
//      +-+-+-+-+-+-+-+-+                +-----+-+-+-+-+-+
//         | | | | | | |                        | | | | |
//         | | | | | | +---btn_right            | | | | +---pixel_data
//         | | | | | +---btn_left               | | | +---video_active
//         | | | | +---btn_down                 | | +---v_sync
//         | | | +---btn_up                     | +---h_sync
//         | | +---tick_i                       +---game_over
//         | +---rst_n                   +---------------+
//         +---clk                   [1] |7 6 5 4 3 2 1 0|
//                                       +-------+-------+
//                                               |
//                                               +---score[7:0]
//                                       +---------------+
//                                   [2] |7 6 5 4 3 2 1 0|
//                                       +-------+-------+
//                                               |
//                                               +---score[15:8]
//

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x10  // Clock: METHOD emulation
#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200

  attachInterrupt(digitalPinToInterrupt(PIN_IO_REQ), handlerIO_Req, FALLING);
}

void loop()
{
  psce.EMU_Blinker(0x40);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  psce.TxPacket(N_TX);

  //handlerIO_Req();
}


//---------------------------------------------------------------------------
#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 64
#define SCREEN_W_BYTE (SCREEN_WIDTH/8)  // 16
unsigned char TableBMP[SCREEN_W_BYTE*SCREEN_HEIGHT];
bool bUpdateBuffer = false;

uint16_t x = 0, y = 0;
bool _v_sync = false, _h_sync = false, bValid_Frame = false;

void handlerIO_Req(void)
{
  bool pixel_data   = psce.txByte[0] & 0x01;
  bool video_active = psce.txByte[0] & 0x02;
  bool v_sync       = psce.txByte[0] & 0x04;
  bool h_sync       = psce.txByte[0] & 0x08;
  bool game_over    = psce.txByte[0] & 0x10;
  int16_t score    = (uint16_t)psce.txByte[2] << 8 | (uint16_t)psce.txByte[1];

  if (_v_sync && !v_sync)  // v_sync
  {
    x = 0;
    y = 0;
    if (bValid_Frame)
      bUpdateBuffer = true;
    else
      bValid_Frame = true;
  }
  else if (_h_sync && !h_sync)  // h_sync
  {
    x = 0;
    y++;
  }
  else if (video_active && bValid_Frame)
  {
    if (y<SCREEN_WIDTH && x<SCREEN_HEIGHT)
    {
      uint16_t lcd_x = y;
      uint16_t lcd_y = x;
      uint16_t  address = (lcd_y*SCREEN_W_BYTE)+lcd_x/8;

      if(!(lcd_x%8))  TableBMP[address] = 0x00;

      if (pixel_data) // Pixel On
        TableBMP[address] |= (uint8_t)(0x80>>(lcd_x%8));
      else            // Pixel Off
        TableBMP[address] &= ~(0x80>>(lcd_x%8));
      x++;
    }
  }

  _h_sync = h_sync;
  _v_sync = v_sync;
}

//--------------------------------------------------------------------
void setup1(void)
{
}

void loop1()
{
  //static uint16_t nLine = 0;

  if (bUpdateBuffer)
  {
    //psce.disp_print(0, nLine, (char*)"Draw BMP");
    //nLine += 8;

    psce.u8g2->clearBuffer();
    psce.u8g2->setBitmapMode(false);  // Solid
    psce.u8g2->drawBitmap(0, 0, SCREEN_WIDTH/8, SCREEN_HEIGHT, TableBMP); // 8-pixels per a byte
    psce.u8g2->sendBuffer();
    delay(2000);

    //psce.u8g2->firstPage();
    //do {
    //  psce.u8g2->drawBitmap(0, 0, SCREEN_W_BYTE, SCREEN_HEIGHT, TableBMP);
    //} while( psce.u8g2->nextPage() );

    bUpdateBuffer = false;
  }
}
