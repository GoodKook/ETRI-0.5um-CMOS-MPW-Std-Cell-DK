/*
  SSD1306 OLED Display Controller
  Board: Arduino DUE
  Author: GoodKook Lab. goodkook@gmail.com
  History: Mar. 2 2025, First Release
*/

// DUT specific Pin Assignment
#define PIN_P_TICK      22
#define PIN_HSYNC       24
#define PIN_VSYNC       26
#define PIN_PIXEL       28

// Display Dimension
#define SCREEN_WIDTH    128
#define SCREEN_W_BYTE   SCREEN_WIDTH/8
#define SCREEN_HEIGHT   64

// Display Option: Skip one VSync for enough back-porch
#define SKIP_ONE_VSYNC

// Blinking Built-In LED
#define BLINK_VSYNC
//#define BLINK_HSYNC
//#define BLINK_P_TICK

// DUE Over Clocking
#include "DUE_OverClocking.h"
DUE_OC Due;

// Used Graphic Library
#include "U8glib.h"

//U8GLIB_SSD1306_128X64 u8g(U8G_I2C_OPT_NONE|U8G_I2C_OPT_DEV_0);	// I2C / TWI 
U8GLIB_SSD1306_128X64 u8g(U8G_I2C_OPT_DEV_0|U8G_I2C_OPT_NO_ACK|U8G_I2C_OPT_FAST);	// Fast I2C / TWI 
//U8GLIB_SSD1306_128X64 u8g(U8G_I2C_OPT_NO_ACK);	// Display which does not send AC
//U8GLIB_SSD1306_128X64 u8g(U8G_I2C_OPT_NONE);

void u8g_prepare(void)
{
  u8g.setFont(u8g_font_6x10);
  u8g.setFontRefHeightExtendedText();
  u8g.setDefaultForegroundColor();
  u8g.setFontPosTop();
}

uint8_t TableBMP[SCREEN_W_BYTE*SCREEN_HEIGHT];

void draw(void)
{
  //u8g_prepare();
  u8g.drawBitmapP(0, 0, SCREEN_W_BYTE, SCREEN_HEIGHT, (const unsigned char*)TableBMP);
}

//---------------------------------------------------------------
int xPos = 0, yPos = 0;

void setup(void)
{
  pinMode(PIN_P_TICK, INPUT);
  pinMode(PIN_HSYNC, INPUT);
  pinMode(PIN_VSYNC, INPUT);
  pinMode(PIN_PIXEL, INPUT);

  Due.digitalWriteDirect(LED_BUILTIN, HIGH);

  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP[i] = 0xAA;
  u8g.firstPage();
  do{draw();} while(u8g.nextPage());

  Sleep(1000);

  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP[i] = 0x55;
  u8g.firstPage();
  do{draw();} while(u8g.nextPage());

  Sleep(1000);

  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP[i] = 0xFF;
  u8g.firstPage();
  do{draw();} while(u8g.nextPage());

  Sleep(1000);

  u8g_prepare();
  u8g.firstPage();
  do{
    u8g.drawStr(0,0, "SSD1306 Display");
    u8g.drawStr(0,12, "    Controller");
#ifdef BLINK_VSYNC
    u8g.drawStr(0,24, "Blink on VSync");
#endif
#ifdef SKIP_ONE_VSYNC
    u8g.drawStr(0,36, "Skip One VSync");
#endif
  } while(u8g.nextPage());
  
  pinMode(LED_BUILTIN, OUTPUT);
  Due.digitalWriteDirect(LED_BUILTIN, LOW);
}

void loop(void)
{
  if (Due.digitalReadDirect(PIN_VSYNC))
  {
#ifdef BLINK_VSYNC
    Due.digitalWriteDirect(LED_BUILTIN, HIGH);
#endif
    xPos = yPos = 0;

    u8g.firstPage();
    do{draw();} while(u8g.nextPage());

    while(Due.digitalReadDirect(PIN_VSYNC));  // Wait for End of VSYNC

#ifdef SKIP_ONE_VSYNC
    // Following Two lines for Skip a frame
    while(!Due.digitalReadDirect(PIN_VSYNC));  // Wait for Start of VSYNC
    while(Due.digitalReadDirect(PIN_VSYNC));  // Wait for End of VSYNC
#endif

#ifdef BLINK_VSYNC
    Due.digitalWriteDirect(LED_BUILTIN, LOW);
#endif
  }

  if (Due.digitalReadDirect(PIN_HSYNC))
  {
#ifdef BLINK_HSYNC
    Due.digitalWriteDirect(LED_BUILTIN, HIGH);
#endif

    xPos = 0;
    yPos++;
    if (yPos>=SCREEN_HEIGHT) yPos = SCREEN_HEIGHT-1;

    while(Due.digitalReadDirect(PIN_HSYNC));  // Wait for End of HSYNC

#ifdef BLINK_HSYNC
    Due.digitalWriteDirect(LED_BUILTIN, LOW);
#endif
  }

  if (Due.digitalReadDirect(PIN_P_TICK))
  {
#ifdef BLINK_P_TICK
    //Due.digitalWriteDirect(LED_BUILTIN, HIGH);
#endif
    int address = (yPos*SCREEN_W_BYTE)+xPos/8;
    if(!(xPos%8))  TableBMP[address] = 0x00;

    if (Due.digitalReadDirect(PIN_PIXEL))
      TableBMP[address] |= (uint8_t)(0x80>>(xPos%8));
    else
      TableBMP[address] &= ~(0x80>>(xPos%8));

    xPos++;
    if (xPos>=SCREEN_WIDTH) xPos = SCREEN_WIDTH-1;

    while(Due.digitalReadDirect(PIN_P_TICK));  // Wait for End of P_TICK
#ifdef BLINK_P_TICK
    Due.digitalWriteDirect(LED_BUILTIN, LOW);
#endif
  }
}
