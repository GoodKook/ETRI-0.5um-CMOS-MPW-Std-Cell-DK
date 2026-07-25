//
// pong_pt1_Test / ATmega328p(Arduino Super Mini V.3)
// Step 04: Test 'pong_pt1'
//

#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <TimerOne.h> // for high-freq. PWM

#include <PinChangeInterrupt.h>

//#define DISPLAY_AT_VSYNC

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
bool bDisplay = false;

void setup()
{
  Wire.begin();
  Wire.setClock(400000);  // Set I2C clock to 400 kHz (Fast Mode)

  pinMode(BLINK_LED, OUTPUT);
  pinMode(TEST_OUT, OUTPUT);

  digitalWrite(BLINK_LED, LOW);

  pinMode(DUT_CLK, OUTPUT);
  pinMode(DUT_P_TICK, INPUT);
  pinMode(DUT_HSYNC, INPUT);
  pinMode(DUT_VSYNC, INPUT);
  pinMode(DUT_RGB, INPUT);

  pinMode(DUT_RESET, OUTPUT);
  digitalWrite(DUT_RESET, HIGH);
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

  attachPCINT(digitalPinToPCINT(DUT_HSYNC), hsyncIRQ, RISING);  // activate PCINT for HSYNC
  attachPCINT(digitalPinToPCINT(DUT_VSYNC), vsyncIRQ, RISING);  // activate PCINT for VSYNC

  digitalWrite(DUT_RESET, LOW);
}

void loop()
{
  digitalWrite(BLINK_LED, HIGH);
  if (bDisplay)
  {
    oled.display(); // send screen buffer to OLED (37ms)
    bDisplay = false;
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
  oled.setCursor(0, 35);
  oled.println(F("04_pong_pt1_Test_PCINT")); 
  oled.display();
  delay(1500);
  oled.clearDisplay();
  oled.setTextSize(1);                    // After this, standard font size
}

//- TimerOne Interrupt handler ----------------------------------------------
void triggerClock()
{
  // Flip the state of the pin
  digitalWrite(DUT_CLK, !digitalRead(DUT_CLK)); 
}
//- Capture pixel output ----------------------------------------------------
void PixelIRQ() // IRQ pin interrupr handler
{
  // Flip the state of the pin
  //digitalWrite(TEST_OUT, !digitalRead(TEST_OUT)); 

  //delayMicroseconds(50);
  if (digitalRead(DUT_RGB))
    oled.drawPixel((uint16_t)X_pos++, (uint16_t)Y_pos, (uint16_t)WHITE);
  else
    oled.drawPixel((uint16_t)X_pos++, (uint16_t)Y_pos, (uint16_t)BLACK);
}
//- Capture hsync output ----------------------------------------------------
void hsyncIRQ() // PCINT pin interrupr handler
{
  X_pos = 0;
  Y_pos++;
}
//- Capture vsync output ----------------------------------------------------
void vsyncIRQ() // PCINT pin interrupr handler
{
  char szBuff[8];

  oled.setCursor(100, 0);
  sprintf(szBuff, "%03d", Y_pos);
  oled.print(szBuff);

#ifdef DISPLAY_AT_VSYNC
  // Enable nested inperrupt for I2C display
  sei();
  oled.display(); // send screen buffer to OLED (37ms)
#else
  //-- OR -------------------------------------
  bDisplay = true;
#endif
  X_pos = 0;
  Y_pos = 0;
}
