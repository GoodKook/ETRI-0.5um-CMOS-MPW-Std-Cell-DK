/*
  Co-Emulation Modeling Interface
  Project: space_invaders_engine_glcd
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor -------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +-----+-+-+-+-+-+               +-+-+-----------+
//  [0] |7 6 5|4|3|2|1|0|           [0] |7|6|5 4 3 2 1 0|
//      +-----+-+-+-+-+-+               +-+-+-----+-----+
//             | | | | |                 | |      |
//             | | | | +---btn_fire      | |      +---lcd_y[5:0]
//             | | | +---btn_right       | +---lcd_data
//             | | +---btn_left          +---lcd_write_en
//             | +---rst_n                    
//             +---clk                  +-+-------------+
//                                  [1] |7|6 5 4 3 2 1 0|
//                                      +-+-----+-------+
//                                              |
//                                              +---lcd_x[6:0]
//

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            2   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x10  // Clock: METHOD emulation
#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200

  attachInterrupt(digitalPinToInterrupt(PIN_IO_REQ), handlerIO_Req, RISING);
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

void handlerIO_Req(void)
{
  char szBuff[32];

  uint16_t  lcd_x = psce.txByte[1] & 0x7F;
  uint16_t  lcd_y = psce.txByte[0] & 0x3F;
  uint16_t  address = (lcd_y*SCREEN_W_BYTE)+lcd_x/8;

  if(!(lcd_x%8))  TableBMP[address] = 0x00;

  if (psce.txByte[0] & 0x40)  // Pixel On
    TableBMP[address] |= (uint8_t)(0x80>>(lcd_x%8));
  else                        // Pixel Off
    TableBMP[address] &= ~(0x80>>(lcd_x%8));

  if ((lcd_x==127) && (lcd_y==63))
    bUpdateBuffer = true;
}

//--------------------------------------------------------------------
void setup1(void)
{
}

void loop1()
{
  if (bUpdateBuffer)
  {
    psce.u8g2->firstPage();
    do {
      psce.u8g2->drawBitmap(0, 0, SCREEN_W_BYTE, SCREEN_HEIGHT, TableBMP);
    } while( psce.u8g2->nextPage() );

    bUpdateBuffer = false;
  }
}
