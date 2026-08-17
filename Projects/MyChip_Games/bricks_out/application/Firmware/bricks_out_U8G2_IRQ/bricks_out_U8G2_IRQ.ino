/*
  bricks_out_U8G2_IRQ.ino
  for SH1106(1.3")
    Using Universal 8bit Graphics Library (https://github.com/olikraus/u8g2/)

  MyChip-on-MyDesk
  https://groups.google.com/g/mychip-on-mydesk
*/

#include <Arduino.h>
#include <U8g2lib.h>
#include <Wire.h> // Hardware I2C

#ifdef PWM_PI_PICO
U8G2_SSD1306_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
#else
U8G2_SH1106_128X64_NONAME_1_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
#endif

#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 64
#define SCREEN_W_BYTE (SCREEN_WIDTH/8)  // 16
unsigned char TableBMP[SCREEN_W_BYTE*SCREEN_HEIGHT];

#define PIN_RESET         7
#define PIN_PIXEL         27
#define PIN_V_SYNC        26
#define PIN_P_TICK        14
#define PIN_GAME_COMPLETE 12
#define PIN_GAME_OVER     15

#define DRAW_BITMAP() { \
    u8g2.firstPage();  \
    do { \
      u8g2.drawBitmap(0, 0, SCREEN_W_BYTE, SCREEN_HEIGHT, TableBMP); \
    } while( u8g2.nextPage() ); \
  }

// PWM for Clock generator -----------------------
#define _PWM_LOGLEVEL_    3
#include "RP2040_PWM.h"
RP2040_PWM* PWM_Instance; //creates pwm instance
float frequency = 400000; //  Freq
float dutyCycle = 50;     //  Duty in %
#ifdef PWM_PI_PICO
#define PIN_CLK_OUT   28  //  PWM out pin for Pi Pico
#else
#define PIN_CLK_OUT   29  //  PWM out pin for RP2040-Zero Board
#endif
//------------------------------------------------

void u8g2_prepare(void)
{
    u8g2.setFont(u8g2_font_6x10_tf);
    u8g2.setFontRefHeightExtendedText();
    u8g2.setDrawColor(1);
    u8g2.setFontPosTop();
    u8g2.setFontDirection(0);
}

//---------------------------------------------------------------
int cnt_p_tick = 0;
int nFrame = 0;
int nTry = 0;

void setup(void)
{
  // Pin Mode setup --------------------------------------
  pinMode(PIN_RESET, OUTPUT);

  pinMode(PIN_P_TICK, INPUT_PULLDOWN);
  pinMode(PIN_V_SYNC, INPUT_PULLDOWN);
  pinMode(PIN_PIXEL, INPUT_PULLDOWN);
  pinMode(PIN_GAME_OVER, INPUT_PULLDOWN);
  pinMode(PIN_GAME_COMPLETE, INPUT_PULLDOWN);

  // Initial value -----------------------------------------
  digitalWrite(PIN_RESET, HIGH);  // Reset

  // OLED Driver -------------------------------------------
  u8g2.begin();
  //delay(100);

  // Splash ------------------------------------------------
  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP[i] = 0xAA;
  DRAW_BITMAP();
  //delay(500);

  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP[i] = 0x55;
  DRAW_BITMAP();
  //delay(500);

  u8g2.firstPage();  
  do {
    u8g2_prepare();
    u8g2.drawStr(0, 0, "MyChip-on-MyDesk");
    u8g2.drawStr(0,12, "MyChip Games");
    u8g2.drawStr(0,24, "Bricks Out/U8G2");
  } while( u8g2.nextPage() );
  //delay(2000);

  // PWM for Clock generator----------------------------
  PWM_Instance = new RP2040_PWM(PIN_CLK_OUT, frequency, dutyCycle);

  // Attach the interrupt to the pin
  attachInterrupt(digitalPinToInterrupt(PIN_P_TICK), handlerP_TICK, RISING);
  attachInterrupt(digitalPinToInterrupt(PIN_V_SYNC), handlerV_SYNC, RISING);
  attachInterrupt(digitalPinToInterrupt(PIN_GAME_OVER), handlerGame_Over, RISING);
  attachInterrupt(digitalPinToInterrupt(PIN_GAME_COMPLETE), handlerGame_Complete, RISING);

  digitalWrite(PIN_RESET, LOW); // Release Reset
}

//-------------------------------------------------------------------
// Multi-Core:
bool bUpdateBuffer = false;
void setup1(void)
{
}

void loop1()
{
  if (bUpdateBuffer)
  {
    DRAW_BITMAP();
    bUpdateBuffer = false;
    nFrame++;
  }
}

void loop(void)
{
  PWM_Instance->setPWM(PIN_CLK_OUT, frequency, dutyCycle);

  while(true)
  {}
}

// Interrupt Handlers -----------------------------------------------------
void handlerP_TICK()
{
  int xPos = cnt_p_tick%SCREEN_WIDTH;
  int yPos = cnt_p_tick/SCREEN_WIDTH;
  int address = (yPos*SCREEN_W_BYTE)+xPos/8;

  if(!(xPos%8))  TableBMP[address] = 0x00;

  if (digitalRead(PIN_PIXEL))
    TableBMP[address] |= (uint8_t)(0x80>>(xPos%8));
  else
    TableBMP[address] &= ~(0x80>>(xPos%8));

  cnt_p_tick++;
}

void handlerGame_Over()
{
  char szBuffer[32];

  nTry++;

  u8g2.begin();
  u8g2.firstPage();
  do {
    u8g2.drawStr(15,12, "Game Over");
    sprintf(szBuffer,"Frame=%d Try=%d", nFrame, nTry);
    u8g2.drawStr(15,24, szBuffer);
    u8g2.drawStr(15,36, "Continue?");
  } while( u8g2.nextPage());

  bUpdateBuffer = false;
  cnt_p_tick = 0;
}

void handlerGame_Complete()
{
  char szBuffer[32];

  //digitalWrite(PIN_RESET, HIGH);

  u8g2.begin();
  u8g2.firstPage();
  do {
    u8g2.drawStr(15,12, "Game Finish");
    sprintf(szBuffer,"Frame=%d Try=%d", nFrame, nTry);
    u8g2.drawStr(15,24, szBuffer);
  } while( u8g2.nextPage());

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
  Render();
}

