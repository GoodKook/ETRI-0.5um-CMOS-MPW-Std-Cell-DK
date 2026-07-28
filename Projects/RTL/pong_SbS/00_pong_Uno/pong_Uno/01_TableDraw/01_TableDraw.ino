//
// pong_Uno v1.0 / ATmega328p
//    pong game in Arduino Uno(Pro or Pro Mini)+OLED128x64
//
//    01_TableDraw
//
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <DIYables_OLED_SSD1309.h>
#include <EEPROM.h>

#define BLINK_LED   13  // LED

// OLED Display
#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT  64
#define OLED_RESET     -1   // No reset pin (or set to actual pin#)
#define SCREEN_ADDRESS 0x3C // 0x3C for most modules

// Declaration for an SSD1309 display connected to I2C (SDA, SCL pins)
DIYables_OLED_SSD1309 oled(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

void setup()
{
  // Initialise the OLED
  oled.begin(SSD1309_SWITCHCAPVCC, SCREEN_ADDRESS);

  startScreen();                        // display start message
  drawWall();
}

void loop()
{
  static bool bLED = false;
  bLED = !bLED;
  digitalWrite(BLINK_LED, (bLED)? LOW:HIGH);  // flash LED

  oled.display();                       // send screen buffer to OLED (37ms)
}

void drawWall()
{
  oled.fillRect( 5, 0, 5, 64, WHITE);
}

void startScreen()            // Staru up screen
{
  oled.clearDisplay();
  oled.setTextSize(1);
  oled.setTextColor(WHITE);

  oled.setCursor(30, 28);
  oled.println(F("Pong_Uno v1.0"));

  oled.setCursor(30, 40);
  oled.println(F("01_TableDraw"));

  oled.display();                         
  delay(1500);
  oled.clearDisplay();
}

