//
// pong_Uno v1.0 / ATmega328p
//    pong game in Arduino Uno(Pro or Pro Mini)+OLED128x64
//
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <DIYables_OLED_SSD1309.h>
#include <EEPROM.h>

// Menu Buttons
#define BTN_IRQ     3   // button pushed interrupt (int.1 IRQ)

#define PIN_PWM     5

#define BTN_UP      6   // Up
#define BTN_DOWN    7   // Down
#define BTN_SELECT  8   // Select button
#define BTN_HOLD    9   // Hold

#define BLINK_LED   13  // LED

// OLED Display
#define SCREEN_WIDTH  128
#define SCREEN_HEIGHT  64
#define OLED_RESET     -1   // No reset pin (or set to actual pin#)
#define SCREEN_ADDRESS 0x3C // 0x3C for most modules

// Declaration for an SSD1309 display connected to I2C (SDA, SCL pins)
DIYables_OLED_SSD1309 oled(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

volatile boolean hold = false; // hold flag
volatile int ball_x=0, ball_y=20;
volatile int ball_dx=1, ball_dy=1;
volatile int paddle_y = 0;

void setup()
{
  pinMode(BTN_IRQ, INPUT_PULLUP);     // button pushed interrupt (int.1 IRQ)
  pinMode(BTN_SELECT, INPUT_PULLUP);  // Select button
  pinMode(BTN_UP, INPUT_PULLUP);      // Up
  pinMode(BTN_DOWN, INPUT_PULLUP);    // Down
  pinMode(BTN_HOLD, INPUT_PULLUP);    // Hold
  pinMode(BLINK_LED, OUTPUT);         // LED

  // Modify Timer 0 control register TCCR0B to set prescaler to 256
  // This changes the frequency of Pins 5 and 6 to 1KHz
  TCCR0B = TCCR0B & 0xF8 | 0x03;
  analogWrite(PIN_PWM, 128);          // PWM write

  // Initialise the OLED
  oled.begin(SSD1309_SWITCHCAPVCC, SCREEN_ADDRESS);

  //attachInterrupt(0, pin2IRQ, FALLING); // activate IRQ at falling edge mode
  //attachInterrupt(1, BtnIRQ, FALLING); // activate IRQ at falling edge mode
  startScreen();                        // display start message
  drawWall();
  drawPaddle(true);
}

void loop()
{
  static bool bLED = false;
  bLED = !bLED;
  digitalWrite(BLINK_LED, (bLED)? LOW:HIGH);  // flash LED

  drawBall(false);  // Erase Ball
  drawBall(true);   // Draw Ball
//  drawWall();
//  drawPaddle(false);  // Erase
//  drawPaddle(true);   // Draw

  BtnIRQ();

  oled.display();                       // send screen buffer to OLED (37ms)
  //saveEEPROM();                         // save settings to EEPROM if necessary
  while (hold == true)                 // wait if Hold flag ON
  {
    delay(10);
  }                                     // loop cycle speed = 60-470ms (buffer size = 200)
}

void drawWall()
{
  oled.fillRect( 5, 0, 5, 64, WHITE);
}

void drawPaddle(bool bDraw)
{
  static int _y = paddle_y;

  if (bDraw)
  {
    oled.fillRect( SCREEN_WIDTH-5, paddle_y, 5, 20, WHITE);
  }
  else
  {
    oled.fillRect( SCREEN_WIDTH-5, _y, 5, 20, BLACK);
  }
  _y = paddle_y;
}

void drawBall(bool bDraw)
{
  if (bDraw)
  {
    // Font size: 5x7
    if (ball_x>(SCREEN_WIDTH-7))  ball_dx = -1;
    else if (ball_x<=10)          ball_dx = 1;

    if (ball_y>(SCREEN_HEIGHT-7)) ball_dy = -1;
    else if (ball_y<=0)           ball_dy = 1;

    ball_x = ball_x + ball_dx;
    ball_y = ball_y + ball_dy;

    oled.setTextColor(WHITE);
    oled.setCursor(ball_x, ball_y);
    oled.write(0x02);
  }
  else
  {
    oled.setTextColor(BLACK);
    oled.setCursor(ball_x, ball_y);
    oled.write(0x02);
    //oled.print(" ");
  }
}

void startScreen()            // Staru up screen
{
  oled.clearDisplay();
  oled.setTextSize(1);
  oled.setTextColor(WHITE);

  oled.setCursor(32, 28);
  oled.println(F("Pong_Uno v1.0"));

  oled.display();                         
  delay(1500);
  oled.clearDisplay();

  // screen-fill test
  screenFill(true, 0);
  delay(1000);
  screenFill(false, 1);
  delay(1000);

  for (int n=9; n>-1; n--)
  {
    screenFill(true, n);
    screenFill(false, n);
  }
}

void screenFill(bool bDraw, int n)
{
  for (int y=0; y<SCREEN_HEIGHT; y++)
    for (int x=0; x<SCREEN_WIDTH; x++)
      oled.drawPixel(x, y, (bDraw)? WHITE:BLACK);
  oled.setTextColor((bDraw)? BLACK:WHITE);
  oled.setCursor(60, 28);
  oled.print(n);

  oled.display(); // 37ms?
  oled.clearDisplay();

  digitalWrite(BLINK_LED, (bDraw)? HIGH:LOW);  // flash LED
}

void BtnIRQ() { // IRQ pin interrupr handler
  // BTN_UP/DOWN/HOLD/SELECT buttons are bundled with diodes and connected to the IRQ_Pin.
  // So, if any button is pressed, this routine will start.

  //delayMicroseconds(100);

  bool bSelect = digitalRead(BTN_SELECT);
  bool bUp = digitalRead(BTN_UP);
  bool bDown = digitalRead(BTN_DOWN);
  bool bHold = digitalRead(BTN_HOLD);

  if (bSelect && bUp && bDown && bHold) return;

  // if Any of 3-Button Pressed?
  if (!bUp)
  {
    paddle_y++;
    drawPaddle(false);  // Erase
    drawPaddle(true);   // Draw
  }
  if (!bDown)
  {
    paddle_y--;
    drawPaddle(false);  // Erase
    drawPaddle(true);   // Draw
  }

  if (!bHold) {
    hold = ! hold;                    // revers the flag
  }
}
