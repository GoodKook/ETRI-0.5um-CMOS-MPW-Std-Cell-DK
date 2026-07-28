//
// pong_Uno v1.0 / ATmega328p
//    pong game in Arduino Uno(Pro or Pro Mini)+OLED128x64
//
//    03_Table_Ball
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

#define TABLE_X 5
#define TABLE_Y 0
#define TABLE_W 10
#define TABLE_H 64

// A 8x8 pixel monochrome ball (1 bit per pixel)
// Stored in PROGMEM to save precious SRAM memory
const unsigned char ball_bitmap[] PROGMEM = {
  0x18, 0x7E, 0x7E, 0xFF, 0xFF, 0x7E, 0x7E, 0x18
};
uint8_t xPos = TABLE_X+TABLE_W, yPos = TABLE_Y;
bool    dx = true, dy = true;

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

  drawBall(xPos, yPos, false);

  if (xPos==(SCREEN_WIDTH-8))       dx = false;
  else if (xPos==(TABLE_X+TABLE_W)) dx = true;
  xPos = (dx)? ++xPos:--xPos;

  if (yPos==(SCREEN_HEIGHT-8))      dy = false;
  else if (yPos==(TABLE_Y))         dy = true;
  yPos = (dy)? ++yPos:--yPos;

  drawBall(xPos, yPos, true);

  oled.display(); // send screen buffer to OLED
}

void drawWall()
{
  oled.fillRect( TABLE_X, TABLE_Y, TABLE_W, TABLE_H, WHITE);
}

void drawBall(int16_t x, int16_t y, bool bDraw)
{
  // Equivalent to BitBlt:
  // Arguments: (Target X, Target Y, Source Pointer, Width, Height, Foreground Color)
  if (bDraw)
    oled.drawBitmap(x, y, ball_bitmap, 8, 8, WHITE);
  else
    oled.drawBitmap(x, y, ball_bitmap, 8, 8, BLACK);
}
void startScreen()            // Staru up screen
{
  oled.clearDisplay();
  oled.setTextSize(1);
  oled.setTextColor(WHITE);

  oled.setCursor(30, 28);
  oled.println(F("Pong_Uno v1.0"));

  oled.setCursor(30, 40);
  oled.println(F("03_Table_Ball"));

  oled.display();                         
  delay(1500);
  oled.clearDisplay();
}

