/*
  dino_run_U8G2_IRQ.ino
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

#define PIN_RESET     7
#define PIN_PIXEL     27
#define PIN_V_SYNC    26
#define PIN_GAME_OVER 15
#define PIN_P_TICK    14

#define PIN_OPTION7   0
#define PIN_OPTION6   1
#define PIN_OPTION5   2
#define PIN_OPTION4   3
#define PIN_OPTION3   6
#define PIN_OPTION2   9
#define PIN_OPTION1   10
#define PIN_OPTION0   11

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
int Score = 0;

void setup(void)
{
  // Pin Mode setup --------------------------------------
  pinMode(PIN_RESET, OUTPUT);

  pinMode(PIN_P_TICK, INPUT_PULLDOWN);
  pinMode(PIN_V_SYNC, INPUT_PULLDOWN);
  pinMode(PIN_PIXEL, INPUT_PULLDOWN);
  pinMode(PIN_GAME_OVER, INPUT_PULLDOWN);

  pinMode(PIN_OPTION7, OUTPUT);
  pinMode(PIN_OPTION6, OUTPUT);
  pinMode(PIN_OPTION5, OUTPUT);
  pinMode(PIN_OPTION4, OUTPUT);
  pinMode(PIN_OPTION3, OUTPUT);
  pinMode(PIN_OPTION2, OUTPUT);
  pinMode(PIN_OPTION1, OUTPUT);
  pinMode(PIN_OPTION0, OUTPUT);

  digitalWrite(PIN_OPTION7, 0);
  digitalWrite(PIN_OPTION6, 0);
  digitalWrite(PIN_OPTION5, 0);
  digitalWrite(PIN_OPTION4, 0);
  digitalWrite(PIN_OPTION3, 0);
  digitalWrite(PIN_OPTION2, 0);
  digitalWrite(PIN_OPTION1, 0);
  digitalWrite(PIN_OPTION0, 0);

  // Initial value -----------------------------------------
  digitalWrite(PIN_RESET, HIGH);  // Reset

  // OLED Driver -------------------------------------------
  u8g2.begin();

  // Splash ------------------------------------------------
//  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
//    TableBMP[i] = 0xAA;
//  DRAW_BITMAP();

//  for (int i=0; i<SCREEN_W_BYTE*SCREEN_HEIGHT; i++)
//    TableBMP[i] = 0x55;
//  DRAW_BITMAP();

  u8g2.firstPage();  
  do {
    u8g2_prepare();
    u8g2.drawStr(0, 0, "MyChip-on-MyDesk");
    u8g2.drawStr(0,12, "MyChip Games");
    u8g2.drawStr(0,24, "Dino Run");
    u8g2.drawStr(0,36, ">> Press Start Button");
  } while( u8g2.nextPage() );

  // PWM for Clock generator----------------------------
  PWM_Instance = new RP2040_PWM(PIN_CLK_OUT, frequency, dutyCycle);

  // Attach the interrupt to the pin
  attachInterrupt(digitalPinToInterrupt(PIN_P_TICK),    handlerP_TICK,    RISING);
  attachInterrupt(digitalPinToInterrupt(PIN_GAME_OVER), handlerGame_Over, RISING);
  attachInterrupt(digitalPinToInterrupt(PIN_V_SYNC),    handlerV_SYNC,    RISING);

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
  uint8_t option = rand()%50;

  digitalWrite(PIN_RESET, HIGH);  // Reset

  u8g2.begin();
  u8g2.firstPage();
  do {
    u8g2.drawStr(15,12, "Game Over");
    sprintf(szBuffer,"Your Score is %d", Score);
    u8g2.drawStr(15,24, szBuffer);
    u8g2.drawStr(0,36, ">> Press Start Button");
  } while( u8g2.nextPage());

  bUpdateBuffer = false;
  Score = 0;
  cnt_p_tick = 0;

  digitalWrite(PIN_RESET, LOW);
}

void Render()
{
  bUpdateBuffer = true;
  cnt_p_tick = 0;
}

void WriteOption(uint8_t option)
{
  digitalWrite(PIN_OPTION7, option & 0x80);
  digitalWrite(PIN_OPTION6, option & 0x40);
  digitalWrite(PIN_OPTION5, option & 0x20);
  digitalWrite(PIN_OPTION4, option & 0x10);
  digitalWrite(PIN_OPTION3, option & 0x08);
  digitalWrite(PIN_OPTION2, option & 0x04);
  digitalWrite(PIN_OPTION1, option & 0x02);
  digitalWrite(PIN_OPTION0, option & 0x01);
}

void handlerV_SYNC()
{
  Render();

  if (Score < 500)
    WriteOption(0x00);
  else if (!(Score % 64))
      WriteOption(rand()%256);
}

