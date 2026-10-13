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
#define PIN_CLK_O         16
#define PIN_RST_N         21
#define PIN_LCD_DATA      14
#define PIN_BTN_LEFT      22
#define PIN_BTN_RIGHT     20
#define PIN_BTN_FIRE      26

#define PIN_LCD_X_0       0
#define PIN_LCD_X_1       1
#define PIN_LCD_X_2       2
#define PIN_LCD_X_3       3
#define PIN_LCD_X_4       27
#define PIN_LCD_X_5       6
#define PIN_LCD_X_6       7

#define PIN_LCD_Y_0       8
#define PIN_LCD_Y_1       9
#define PIN_LCD_Y_2       10
#define PIN_LCD_Y_3       11
#define PIN_LCD_Y_4       12
#define PIN_LCD_Y_5       13

#define PIN_LCD_DATA      14
#define PIN_LCD_WEN       15

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
void setup(void)
{
  // Pin Mode setup --------------------------------------
  pinMode(PIN_RST_N, OUTPUT);
  pinMode(PIN_BTN_LEFT, OUTPUT);
  pinMode(PIN_BTN_RIGHT, OUTPUT);
  pinMode(PIN_BTN_FIRE, OUTPUT);

  pinMode(PIN_LCD_X_0, INPUT_PULLDOWN);
  pinMode(PIN_LCD_X_1, INPUT_PULLDOWN);
  pinMode(PIN_LCD_X_2, INPUT_PULLDOWN);
  pinMode(PIN_LCD_X_3, INPUT_PULLDOWN);
  pinMode(PIN_LCD_X_4, INPUT_PULLDOWN);
  pinMode(PIN_LCD_X_5, INPUT_PULLDOWN);
  pinMode(PIN_LCD_X_6, INPUT_PULLDOWN);

  pinMode(PIN_LCD_Y_0, INPUT_PULLDOWN);
  pinMode(PIN_LCD_Y_1, INPUT_PULLDOWN);
  pinMode(PIN_LCD_Y_2, INPUT_PULLDOWN);
  pinMode(PIN_LCD_Y_3, INPUT_PULLDOWN);
  pinMode(PIN_LCD_Y_4, INPUT_PULLDOWN);
  pinMode(PIN_LCD_Y_5, INPUT_PULLDOWN);

  pinMode(PIN_LCD_DATA, INPUT_PULLDOWN);
  pinMode(PIN_LCD_WEN, INPUT_PULLDOWN);

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
  int xPos =  digitalRead(PIN_LCD_X_6) << 6 |
              digitalRead(PIN_LCD_X_5) << 5 |
              digitalRead(PIN_LCD_X_4) << 4 |
              digitalRead(PIN_LCD_X_3) << 3 |
              digitalRead(PIN_LCD_X_2) << 2 |
              digitalRead(PIN_LCD_X_1) << 1 |
              digitalRead(PIN_LCD_X_0) << 0;
  int yPos =  digitalRead(PIN_LCD_Y_5) << 5 |
              digitalRead(PIN_LCD_Y_4) << 4 |
              digitalRead(PIN_LCD_Y_3) << 3 |
              digitalRead(PIN_LCD_Y_2) << 2 |
              digitalRead(PIN_LCD_Y_1) << 1 |
              digitalRead(PIN_LCD_Y_0) << 0;
  int address = (yPos*SCREEN_W_BYTE) + (xPos/8);

  if(!(xPos%8))  TableBMP[address] = 0x00;

  if (digitalRead(PIN_LCD_DATA))
    TableBMP[address] |= (uint8_t)(0x80>>(xPos%8));
  else
    TableBMP[address] &= ~(0x80>>(xPos%8));

  if (xPos==127 && yPos==63)
    bUpdateBuffer = true;
}

