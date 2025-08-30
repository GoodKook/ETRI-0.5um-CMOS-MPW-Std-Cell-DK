/*
  Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
  PSCE Model Interface: SystemC to/from DUT Emulator
*/
#include <Arduino.h>
#include "fir8.h"

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            2   // Number of byte from DUT's output

void establishContact() //-----------------------------------------------
{
  unsigned char Req = 0, Ack = 0;
  
  while (Serial.available() > 0)   Serial.read();   // Clear RX Buffer

  while (Serial.available() <= 0)   delay(100);     // Wait for Host request
  Req = (unsigned char)Serial.read();

  while(Serial.availableForWrite() <= 0)    delay(100);
  Ack = Req;
  Serial.write(Ack); // Ack
}

void setup() //----------------------------------------------------------
{
#if defined(PI_PICO)
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
#endif
// start serial port
  Serial.begin(9600);
  while (!Serial)
  {
    ;  // wait for serial port to connect. Needed for native USB port only
  }
#if defined(DUE_NORMAL)
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
#endif
  establishContact(); // send a byte to establish contact until receiver responds
}

void loop() //-----------------------------------------------------------
{
  static uint16_t Count = 0;

	data_t  x;  // unsigned 8-bit
	acc_t   y;  // unsigned 16-bit

  Count++;
  if (Count & 0x0400)
    digitalWrite(LED_BUILTIN, HIGH);
  else
    digitalWrite(LED_BUILTIN, LOW);

  // Receive Emulator/DUT in-vector from HOST
  if (Serial.available() >= N_RX)
  {
    x = Serial.read();
    if (Serial.availableForWrite() >= N_RX)
      Serial.write((data_t)x); // Loop-Back
  }
  else
    return;

	fir( &y, x);  // FIR8 Filter

  if (Serial.availableForWrite() >= N_TX)
  {
    Serial.write((data_t)(y>>0) & 0x0FF); // LSB
    Serial.write((data_t)(y>>8) & 0x0FF); // MSB
  }
}

