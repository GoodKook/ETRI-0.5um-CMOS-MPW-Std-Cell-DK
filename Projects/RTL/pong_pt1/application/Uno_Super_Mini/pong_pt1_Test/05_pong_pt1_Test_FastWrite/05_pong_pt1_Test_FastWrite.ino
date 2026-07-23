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

  pinMode(BLINK_LED, OUTPUT);
  pinMode(TEST_OUT, OUTPUT);

  digitalWriteFast(BLINK_LED, LOW);

  pinMode(DUT_CLK, OUTPUT);
  pinMode(DUT_P_TICK, INPUT);
  pinMode(DUT_HSYNC, INPUT);
  pinMode(DUT_VSYNC, INPUT);
  pinMode(DUT_RGB, INPUT);

  //-------------------------------------------------------------------------
  // Set the timer to tick every N-microseconds
  Timer1.initialize(25);  // 25us=40Khz
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
  oled.setCursor(55, 10);
  oled.println(F("Test"));  
  oled.setCursor(40, 20);
  oled.println(F("pong_pt1")); 
  oled.setCursor(15, 35);
  oled.println(F("05_pong_pt1_Test"));
  oled.setCursor(20, 45);
  oled.println(F("(FastWrite)")); 
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
    oled.drawPixel((uint16_t)X_pos++, (uint16_t)Y_pos, (uint16_t)WHITE);
  else
    oled.drawPixel((uint16_t)X_pos++, (uint16_t)Y_pos, (uint16_t)BLACK);
}
