/*

  Disp_SH1106.ino

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
#define SCREEN_W_BYTE (SCREEN_WIDTH/8)
unsigned char TableBMP[SCREEN_W_BYTE*SCREEN_HEIGHT];

#define PIN_RGB     27
#define PIN_VSYNC   26
#define PIN_HSYNC   15
#define PIN_P_TICK  14

#define PIN_RESET   7
#define PIN_ENABLE  8

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
float frequency = 600000; //  Freq
float dutyCycle = 50;     //  Duty in %
#define PIN_CLK_OUT   29  //  PWM out pin
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
  delay(1000);

  // Splash ------------------------------------------------
  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP[i] = 0xAA;
  DRAW_BITMAP();
  delay(500);

  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP[i] = 0x55;
  DRAW_BITMAP();
  delay(500);

  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
    TableBMP[i] = 0xFF;
  DRAW_BITMAP();
  delay(500);

  u8g2.firstPage();  
  do {
    u8g2_prepare();
    //u8g2->drawStr((u8g2_uint_t)x, (u8g2_uint_t)y, (const char*)(szMsg+nIdx));
    u8g2.drawStr(0, 0, "SH1106 Display");
    u8g2.drawStr(0,12, "    Controller");
  } while( u8g2.nextPage() );

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
  if (bUpdateBuffer)
  {
      DRAW_BITMAP();
      bUpdateBuffer = false;
  }
}

void loop(void)
{
  PWM_Instance->setPWM(PIN_CLK_OUT, frequency, dutyCycle);

  while(true);
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
  bUpdateBuffer = true;
}

