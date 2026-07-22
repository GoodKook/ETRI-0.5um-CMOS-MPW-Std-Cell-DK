//
// pong_pt1_Test / ATmega328p(Arduino Super Mini V.3)
// Step 01: OLED/SSD1306
//

#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

// DUT(pong_pt1)
#define DUT_CLK     5   // PWM

#define BLINK_LED   13  // LED

// OLED Display
#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT 64
#define OLED_RESET    -1    // No reset pin (or set to actual pin#)
#define SCREEN_ADDRESS 0x3C // 0x3C for most modules

// Declaration for an SSD1306(0.96") display connected to I2C (SDA, SCL pins)
Adafruit_SSD1306 oled(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

void setup()
{
  Wire.begin();
  Wire.setClock(400000);  // Set I2C clock to 400 kHz (Fast Mode)

  pinMode(BLINK_LED, OUTPUT);

  //-------------------------------------------------------------------------
  // Modify Timer 0 control register TCCR0B
  //  Clock Select: CS[2:0]
  //  000   Stop Timer
  //  001   1/1     (System Clock=16Mhz)
  //  010   1/8     (2Mhz)
  //  011   1/64    (250kHz)
  //  100   1/256   (62.5kHz)
  //  101   1/1024  (15.625kHz)
  TCCR0B = TCCR0B & 0xF8 | 0x03;  // Timer Clock Freq=(16mHz/256)
  analogWrite(DUT_CLK, 128);      // PWM with 8-Bit Counter: Duty(50%)=256/2

  // Initialise the OLED ----------------------------------------------------
  oled.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS);

  startScreen();                        // display start message
}

void loop()
{
  digitalWrite(BLINK_LED, HIGH);
  delay(500);
  digitalWrite(BLINK_LED, LOW);
  delay(500);
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
