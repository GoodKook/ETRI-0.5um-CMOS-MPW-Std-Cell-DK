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
//      +-----+-+-+-+-+-+               +---------+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|           [0] |7 6 5 4 3|2|1|0|
//      +-----+-+-+-+-+-+               +---------+-+-+-+
//             | | | | |                           | | |
//             | | | | +---btn_fire                | | +---clk_o
//             | | | +---btn_right                 | +---lcd_data
//             | | +---btn_left                    +---v_sync
//             | +---rst_n                    
//             +---clk
//

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            1   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x10  // Clock: METHOD emulation
//#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

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
#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 64
#define SCREEN_W_BYTE (SCREEN_WIDTH/8)  // 16
unsigned char TableBMP[SCREEN_W_BYTE*SCREEN_HEIGHT];
bool bUpdateBuffer = false;
uint16_t cnt = 0;

void handlerIO_Req(void)
{
  if (!(psce.txByte[0] & 0x01)) // clk_o
    return;

  uint16_t  lcd_x = cnt%128;
  uint16_t  lcd_y = cnt/128;
  uint16_t  address = (lcd_y*SCREEN_W_BYTE)+lcd_x/8;

  if(!(lcd_x%8))  TableBMP[address] = 0x00;

  if (psce.txByte[0] & 0x02)  // Pixel On
    TableBMP[address] |= (uint8_t)(0x80>>(lcd_x%8));
  else                        // Pixel Off
    TableBMP[address] &= ~(0x80>>(lcd_x%8));

  if (psce.txByte[0] & 0x04)  // v_sync
  {
    bUpdateBuffer = true;
    lcd_x = lcd_y = cnt = 0;
  }
  else
    cnt++;
}

//--------------------------------------------------------------------
void setup1(void)
{
}

void loop1()
{
  if (bUpdateBuffer)
  {
    //psce.disp_print(0, 1, "Update Buffer");

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

