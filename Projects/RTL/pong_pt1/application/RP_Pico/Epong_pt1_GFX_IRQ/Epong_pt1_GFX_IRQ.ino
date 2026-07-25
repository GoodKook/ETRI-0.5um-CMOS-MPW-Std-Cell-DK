/*

  Epong_pt1_GFX_IRQ.ino
  for SSD1306(0.96")

*/

#include <Arduino.h>
#include <Adafruit_GFX.h>
#include <DIYables_OLED_SSD1309.h>
#include <Wire.h> // Hardware I2C

#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 64
#define SCREEN_W_BYTE (SCREEN_WIDTH/8)  // 16
#define OLED_RESET     -1   // No reset pin (or set to actual pin#)
#define SCREEN_ADDRESS 0x3C // 0x3C for most modules
// Declaration for an SSD1309(2.4")/SSD1315(0.96")/SSD1306(0.96") display connected to I2C (SDA, SCL pins)
DIYables_OLED_SSD1309 oled(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

unsigned char TableBMP[SCREEN_W_BYTE*SCREEN_HEIGHT];

#define PIN_RGB     27
#define PIN_VSYNC   26
#define PIN_HSYNC   15
#define PIN_P_TICK  14

#define PIN_RESET   7
#define PIN_ENABLE  8

// PWM for Clock generator -----------------------
#define _PWM_LOGLEVEL_    3
#include "RP2040_PWM.h"
RP2040_PWM* PWM_Instance; //creates pwm instance
float frequency = 600000; //  Freq
float dutyCycle = 50;     //  Duty in %
#define PIN_CLK_OUT   29  //  PWM out pin

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
  oled.begin(SSD1309_SWITCHCAPVCC, SCREEN_ADDRESS);
  delay(100);

  // Staru up screen --------------------------------------------------
  oled.clearDisplay();
  oled.setTextSize(1);                    // at double size character
  oled.setTextColor(WHITE);
  oled.setCursor(0, 0);
  oled.println(F("MyChip-on-MyDesk"));
  oled.setCursor(0, 12);
  oled.println(F("Pong Game/GFX")); 
  oled.display();                         
  delay(1500);

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
  static bool bFirst = true;

  if (bUpdateBuffer)
  {
    for (int y=0; y<64; y++)
    {
      if (bFirst)
      {
        bFirst = false;
        break;
      }
      if (getDirectPixel(0, y))
      {
        detachInterrupt(digitalPinToInterrupt(PIN_P_TICK));
        detachInterrupt(digitalPinToInterrupt(PIN_HSYNC));
        detachInterrupt(digitalPinToInterrupt(PIN_VSYNC));

        oled.setCursor(30, 10);
        oled.println("Game Over");
        oled.setCursor(30, 26);
        oled.print("Score:");
        oled.println(Score/64);
        oled.display();
        delay(2000);
        bUpdateBuffer = false;
        Score = 0;

        while(true);
        return;
      }
    }

    oled.display();
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

void drawDirectPixel(uint8_t x, uint8_t y, uint8_t color) {
  if (x >= SCREEN_WIDTH || y >= SCREEN_HEIGHT) return;

  // The SSD1306 uses 1 byte to represent 8 vertical pixels
  uint8_t *buffer = oled.getBuffer();
  uint16_t byteIndex = (y / 8) * SCREEN_WIDTH + x;
  uint8_t bitMask = 1 << (y % 8);

  if (color) {
    buffer[byteIndex] |= bitMask;  // Turn pixel on
  } else {
    buffer[byteIndex] &= ~bitMask; // Turn pixel off
  }
}

bool getDirectPixel(uint8_t x, uint8_t y) {
  if (x >= SCREEN_WIDTH || y >= SCREEN_HEIGHT) return  false;

  // The SSD1306 uses 1 byte to represent 8 vertical pixels
  uint8_t *buffer = oled.getBuffer();
  uint16_t byteIndex = (y / 8) * SCREEN_WIDTH + x;
  uint8_t bitMask = 1 << (y % 8);

  if (buffer[byteIndex] & bitMask)
    return true;  // pixel on
  else
    return false; // pixel off
}

// Interrupt Handlers -----------------------------------------------------
void handlerP_TICK()
{
  if (digitalRead(PIN_RGB))
    //drawDirectPixel((uint8_t)xPos++, (uint8_t)yPos, (uint8_t)WHITE);
    oled.drawPixel((uint16_t)xPos++, (uint16_t)yPos, (uint16_t)WHITE);
  else
    //drawDirectPixel((uint8_t)xPos++, (uint8_t)yPos, (uint8_t)BLACK);
    oled.drawPixel((uint16_t)xPos++, (uint16_t)yPos, (uint16_t)BLACK);
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

