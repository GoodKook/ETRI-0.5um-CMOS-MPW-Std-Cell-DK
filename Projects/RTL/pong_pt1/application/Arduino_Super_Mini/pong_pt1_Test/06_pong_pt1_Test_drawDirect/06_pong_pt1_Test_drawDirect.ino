//
// pong_pt1_Test / ATmega328p(Arduino Super Mini V.3)
// Step 05: Test 'pong_pt1' with digitalFastWrite Lib.
//

#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <TimerOne.h> // for high-freq. PWM
#include <digitalWriteFast.h>

// DUT(pong_pt1)
#define DUT_CLK     5   // PWM
#define DUT_P_TICK  3   // IRQ1
#define DUT_HSYNC   10
#define DUT_VSYNC   9
#define DUT_RGB     8

#define DUT_RESET   A1

#define BLINK_LED   13  // LED
#define TEST_OUT    4

// OLED Display
#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 64
#define OLED_RESET    -1    // No reset pin (or set to actual pin#)
#define SCREEN_ADDRESS 0x3C // 0x3C for most modules

// Declaration for an SSD1306(0.96") display connected to I2C (SDA, SCL pins)
Adafruit_SSD1306 oled(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

unsigned int X_pos = 0, Y_pos = 0;

void setup()
{
  Wire.begin();
  Wire.setClock(400000);  // Set I2C clock to 400 kHz (Fast Mode)

  pinModeFast(BLINK_LED, OUTPUT);
  pinModeFast(TEST_OUT, OUTPUT);

  digitalWriteFast(BLINK_LED, LOW);

  pinModeFast(DUT_CLK, OUTPUT);
  pinModeFast(DUT_P_TICK, INPUT);
  pinModeFast(DUT_HSYNC, INPUT);
  pinModeFast(DUT_VSYNC, INPUT);
  pinModeFast(DUT_RGB, INPUT);

  pinModeFast(DUT_RESET, OUTPUT);
  digitalWriteFast(DUT_RESET, HIGH);

  digitalWriteFast(BLINK_LED, LOW);

  //-------------------------------------------------------------------------
  // Set the timer to tick every N-microseconds
  Timer1.initialize(20);  // 20us=50Khz
  // Tell the timer to run the 'triggerClock' function every tick
  Timer1.attachInterrupt(triggerClock);

  // Initialise the OLED ----------------------------------------------------
  oled.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS);

  startScreen();                        // display start message

  X_pos = Y_pos = 0;
  attachInterrupt(1, PixelIRQ, RISING);   // activate IRQ1(D3), P_TICK at rising edge mode
}

void loop()
{
  digitalWriteFast(BLINK_LED, HIGH);

  digitalWriteFast(DUT_RESET, LOW);

  while(!digitalReadFast(DUT_VSYNC));
  while(digitalReadFast(DUT_VSYNC));

  char szBuff[8];

  while(true)
  {
    if (digitalReadFast(DUT_HSYNC))
    {
      X_pos = 0;
      Y_pos++;
      while(digitalReadFast(DUT_HSYNC));
    }
    if (digitalReadFast(DUT_VSYNC))
    {
      oled.setCursor(100, 0);
      sprintf(szBuff, "%03d", Y_pos);
      oled.print(szBuff);

      oled.display(); // send screen buffer to OLED (37ms)
      X_pos = 0;
      Y_pos = 0;
      while(digitalReadFast(DUT_VSYNC));
    }
  }
}

void startScreen()
{                      // Staru up screen
  oled.clearDisplay();
  oled.setTextSize(1);                    // at double size character
  oled.setTextColor(WHITE);
  oled.setCursor(55, 0);
  oled.println(F("Test"));  
  oled.setCursor(40, 20);
  oled.println(F("pong_pt1")); 
  oled.setCursor(55, 42);            
  oled.println(F("v1.0"));                
  oled.display();                         
  delay(1500);
  oled.clearDisplay();
  oled.setTextSize(1);                    // After this, standard font size
}

//- TimerOne Interrupt handler ----------------------------------------------
void triggerClock()
{
  // Flip the state of the pin
  //digitalWriteFast(DUT_CLK, !digitalReadFast(DUT_CLK));
  digitalToggleFast(DUT_CLK);
}
//- Capture pixel output ----------------------------------------------------
void PixelIRQ() // IRQ pin interrupr handler
{
  // Flip the state of the pin
  //digitalWrite(TEST_OUT, !digitalRead(TEST_OUT)); 

  //delayMicroseconds(50);
  if (digitalReadFast(DUT_RGB))
    drawDirectPixel((uint8_t)X_pos++, (uint8_t)Y_pos, (uint8_t)WHITE);
  else
    drawDirectPixel((uint8_t)X_pos++, (uint8_t)Y_pos, (uint8_t)BLACK);
}

// Example direct buffer modification for a 128x64 display
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

