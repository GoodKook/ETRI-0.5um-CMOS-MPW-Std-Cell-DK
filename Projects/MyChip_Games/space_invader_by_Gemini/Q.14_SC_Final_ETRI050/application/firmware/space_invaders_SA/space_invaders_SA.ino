/*
  space_invaders_engine_glcd_U8G2_IRQ.ino
  for SH1106(1.3")
    Using Universal 8bit Graphics Library (https://github.com/olikraus/u8g2/)

  MyChip-on-MyDesk
  https://groups.google.com/g/mychip-on-mydesk
*/

#include <Arduino.h>
#include <U8g2lib.h>
#include <Wire.h> // Hardware I2C

// IO with FPGA or MyChip
#define PIN_CLK           28  // PWM Out
#define PIN_RST_N         6
#define PIN_V_SYNC        7
#define PIN_LCD_DATA      8
#define PIN_CLK_O         9   // P_TICK
#define PIN_BTN_LEFT      10
#define PIN_BTN_RIGHT     11
#define PIN_BTN_FIRE      12

#ifdef PWM_PI_PICO
U8G2_SSD1306_128X64_NONAME_F_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
#else
U8G2_SSD1306_128X64_NONAME_1_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
//U8G2_SH1106_128X64_NONAME_1_HW_I2C u8g2(U8G2_R0, /* reset=*/ U8X8_PIN_NONE);
#endif

#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 64
#define SCREEN_W_BYTE (SCREEN_WIDTH/8)  // 16
unsigned char TableBMP[SCREEN_W_BYTE*SCREEN_HEIGHT];

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
float frequency = 100000; //  Freq
float dutyCycle = 50;     //  Duty in %

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
  pinMode(PIN_RST_N, OUTPUT);
  pinMode(PIN_BTN_LEFT, OUTPUT);
  pinMode(PIN_BTN_RIGHT, OUTPUT);
  pinMode(PIN_BTN_FIRE, OUTPUT);

  pinMode(PIN_LCD_DATA, INPUT_PULLDOWN);
  pinMode(PIN_V_SYNC, INPUT_PULLDOWN);
  pinMode(PIN_CLK_O, INPUT_PULLDOWN);

  // Initial value -----------------------------------------
  digitalWrite(PIN_RST_N, LOW);  // Reset
  digitalWrite(PIN_BTN_LEFT, LOW);
  digitalWrite(PIN_BTN_RIGHT, LOW);
  digitalWrite(PIN_BTN_FIRE, LOW);

  // OLED Driver -------------------------------------------
  u8g2.begin();

  u8g2.firstPage();  
  do {
    u8g2_prepare();
    u8g2.drawStr(0, 0, "MyChip-on-MyDesk");
    u8g2.drawStr(0,12, "MyChip Games");
    u8g2.drawStr(0,24, "Space Invaders");
    u8g2.drawStr(0,36, "     with Gemini");
    u8g2.drawStr(0,48, ">> Press Start Button");
  } while( u8g2.nextPage() );
  delay(2000);

  // Serial Port --------------------------------------------
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(UART_BPS);
  while (!Serial)
  {
    digitalWrite(LED_BUILTIN, HIGH);
    delay(1000);
    digitalWrite(LED_BUILTIN, LOW);
    delay(1000);
  }

  // PWM for Clock generator----------------------------
  PWM_Instance = new RP2040_PWM(PIN_CLK, frequency, dutyCycle);

  // Attach the interrupt to the pin
  attachInterrupt(digitalPinToInterrupt(PIN_CLK_O), handlerLCD_DATA, RISING);
  attachInterrupt(digitalPinToInterrupt(PIN_V_SYNC), handlerV_SYNC, RISING);

  digitalWrite(PIN_RST_N, HIGH); // Release Reset
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
  PWM_Instance->setPWM(PIN_CLK, frequency, dutyCycle);
  int rxData = 0;

  while(true)
  {
    if (Serial.available())
    {
      rxData = Serial.read();

      // DUT's input bitmap
      //      +-----+-+-+-+-+-+
      //  [0] |7 6 5|4|3|2|1|0|
      //      +-----+-+-+-+-+-+
      //               | | | |
      //               | | | +---btn_fire
      //               | | +---btn_right
      //               | +---btn_left
      //               +---rst_n
      digitalWrite(PIN_RST_N,     (rxData & 0x08)? HIGH : LOW);
      digitalWrite(PIN_BTN_LEFT,  (rxData & 0x04)? HIGH : LOW);
      digitalWrite(PIN_BTN_RIGHT, (rxData & 0x02)? HIGH : LOW);
      digitalWrite(PIN_BTN_FIRE,  (rxData & 0x01)? HIGH : LOW);
    }
  }
}

// Interrupt Handlers -----------------------------------------------------
void handlerLCD_DATA()
{
  int xPos = cnt_p_tick % SCREEN_WIDTH;
  int yPos = cnt_p_tick / SCREEN_WIDTH;
  int address = (yPos*SCREEN_W_BYTE) + (xPos/8);

  if(!(xPos%8))  TableBMP[address] = 0x00;

  if (digitalRead(PIN_LCD_DATA))
    TableBMP[address] |= (uint8_t)(0x80>>(xPos%8));
  else
    TableBMP[address] &= ~(0x80>>(xPos%8));

  cnt_p_tick++;
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

