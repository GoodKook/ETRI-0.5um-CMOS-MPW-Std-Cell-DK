/*

  Epong_pt1_U8G2_IRQ_dBuff.ino
  for SH1106(1.3")

  Using Universal 8bit Graphics Library (https://github.com/olikraus/u8g2/)
  Copyright (c) 2016, olikraus@gmail.com
  All rights reserved.

*/

#include <Arduino.h>
#include <U8g2lib.h>
#include <Wire.h> // Hardware I2C

U8G2_SH1106_128X64_NONAME_1_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);

#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 64
#define SCREEN_W_BYTE (SCREEN_WIDTH/8)  // 16
unsigned char *TableBMP;
unsigned char TableBMP_Even[SCREEN_W_BYTE*SCREEN_HEIGHT];
unsigned char TableBMP_Odd[SCREEN_W_BYTE*SCREEN_HEIGHT];
bool  bEven = true;

#define PIN_RGB     27
#define PIN_VSYNC   26
#define PIN_HSYNC   15
#define PIN_P_TICK  14

#define PIN_RESET   7
#define PIN_ENABLE  8

#define DRAW_BITMAP() { \
    u8g2.firstPage();  \
    do { \
      u8g2.drawBitmap(0, 0, SCREEN_W_BYTE, SCREEN_HEIGHT, bEven? TableBMP_Odd:TableBMP_Even); \
    } while( u8g2.nextPage() ); \
  }

// PWM for Clock generator -----------------------
#define _PWM_LOGLEVEL_    3
#include "RP2040_PWM.h"
RP2040_PWM* PWM_Instance; //creates pwm instance
float frequency = 600000; //  Freq
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
int xPos = 0, yPos = 0;
int Score = 0;

void setup(void)
{
  // Pin Mode setup --------------------------------------
  pinMode(PIN_ENABLE, OUTPUT);
  pinMode(PIN_RESET, OUTPUT);

  pinMode(PIN_P_TICK, INPUT_PULLDOWN);
  pinMode(PIN_HSYNC, INPUT_PULLDOWN);
  pinMode(PIN_VSYNC, INPUT_PULLDOWN);
  pinMode(PIN_RGB, INPUT_PULLDOWN);

  // Initial value -----------------------------------------
  digitalWrite(PIN_ENABLE, HIGH); // Always Enable
  digitalWrite(PIN_RESET, HIGH);  // Reset

  // OLED Driver -------------------------------------------
  u8g2.begin();
  delay(100);

  // Splash ------------------------------------------------
  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP_Odd[i] = 0xAA;
  bEven = true;
  DRAW_BITMAP();
  delay(500);

  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP_Even[i] = 0x55;
  bEven = false;
  DRAW_BITMAP();
  delay(500);

  bEven = true;
  TableBMP = TableBMP_Even;

  u8g2.firstPage();  
  do {
    u8g2_prepare();
    u8g2.drawStr(0, 0, "MyChip-on-MyDesk");
    u8g2.drawStr(0,12, "Pong Game/U8G2");
  } while( u8g2.nextPage() );
  delay(1000);

  // PWM for Clock generator----------------------------
  PWM_Instance = new RP2040_PWM(PIN_CLK_OUT, frequency, dutyCycle);

  // Attach the interrupt to the pin
  attachInterrupt(digitalPinToInterrupt(PIN_P_TICK), handlerP_TICK, RISING);
  attachInterrupt(digitalPinToInterrupt(PIN_HSYNC),  handlerHSYNC,  RISING);
  attachInterrupt(digitalPinToInterrupt(PIN_VSYNC),  handlerVSYNC,  RISING);

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
  char szBuffer[32];

  if (bUpdateBuffer)
  {
    for (int y=0; y<64; y++)
    {
      if(TableBMP[y*SCREEN_W_BYTE] & 0x40)
      {
        u8g2.firstPage();
        do {
          u8g2.drawBitmap(0, 0, SCREEN_W_BYTE, SCREEN_HEIGHT, bEven? TableBMP_Odd:TableBMP_Even);
          u8g2.drawStr(15,12, "Game Over");
          sprintf(szBuffer,"Your Score is %d", Score/64);
          u8g2.drawStr(15,24, szBuffer);
        } while( u8g2.nextPage());
        delay(2000);
        bUpdateBuffer = false;
        Score = 0;
        return;
      }
    }

    DRAW_BITMAP();
    bUpdateBuffer = false;
    Score++;
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
  int address = (yPos*SCREEN_W_BYTE)+xPos/8;
  if(!(xPos%8))  TableBMP[address] = 0x00;

  if (digitalRead(PIN_RGB))
    TableBMP[address] |= (uint8_t)(0x80>>(xPos%8));
  else
    TableBMP[address] &= ~(0x80>>(xPos%8));

  xPos++;
  if (xPos>=SCREEN_WIDTH) xPos = SCREEN_WIDTH-1;
}
void handlerHSYNC()
{
  xPos = 0;
  yPos++;
}
void handlerVSYNC()
{
  xPos = yPos = 0;
  if (bEven)
  {
    bEven = false;
    TableBMP = TableBMP_Odd;
  }
  else
  {
    bEven = true;
    TableBMP = TableBMP_Even;
  }
  bUpdateBuffer = true;
}

