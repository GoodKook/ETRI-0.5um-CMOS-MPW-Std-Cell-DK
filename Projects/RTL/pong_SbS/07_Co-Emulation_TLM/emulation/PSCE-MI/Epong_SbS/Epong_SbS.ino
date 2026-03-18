/*
  Co-Emulation Modeling Interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// PWM for Clock generator -----------------------
#define _PWM_LOGLEVEL_    3
#include "RP2040_PWM.h"
RP2040_PWM* PWM_Instance; //creates pwm instance
float frequency = 1000000; //  Freq (Hz)
float dutyCycle = 50;     //  Duty in %

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap
//      +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|
//      +-----+-+-+-+-+-+
//             | | | | |
//             | | | | +----clk
//             | | | +---reset
//             | | +---busy
//             | +---up
//             +---down
#define IN_RESET  0x02
#define IN_BUSY   0x04
#define IN_UP     0x08
#define IN_DOWN   0x10
// DUT's output bitmap
//      +-+-------------+
//  [0] |7|6 5 4 3 2 1 0|
//      +-+-------------+
//               |
//               +---x_pos[6:0]
//      +-+-+-------+-+-+
//  [1] |7|6|5 4 3 2 1 0|
//      +-+-+-----------+
//       | |      |
//       | |      +---y_pos[5:0]
//       | +---pixel
//       +---p_tick
//
#define OUT_PIXEL   0x40
#define OUT_P_TICK  0x80

//---------------------------------------------------------------------------
#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            2   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x01  // Clock: METHOD emulation
#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200

  // PWM for Clock generator----------------------------
  PWM_Instance = new RP2040_PWM(PIN_CLK_DUT, frequency, dutyCycle);
}

uint8_t x_pos, y_pos, pixel;
uint8_t GBuff[1024];

void loop()
{
  // Run PWM
  PWM_Instance->setPWM(PIN_CLK_DUT, frequency, dutyCycle);

  // Reset DUT
  psce.rxByte[0] = IN_RESET;
  psce.DUT_SetInputs(N_RX);
  delay(10);

  while(true)
  {
    psce.EMU_Blinker(0x80);   // Blinker speed

    if (Serial.available())
      psce.rxByte[0] = Serial.read();

    // Set BUSY(L)
    psce.rxByte[0] &= (~IN_RESET) & (~IN_BUSY);
    psce.DUT_SetInputs(N_RX);

    // Wait for P_TICK Rising
#ifdef OLED_DEBUG
    psce.disp_print(0,0,(char*)"Wait for P_TICK Rise");
#endif
    do {  psce.DUT_GetOutputs(N_TX);
    } while(!(psce.txByte[1] & OUT_P_TICK));

    // Set BUSY(H)
    psce.rxByte[0] |= IN_BUSY;
    psce.DUT_SetInputs(N_RX);

    // Wait for P_TICK Falling
#ifdef OLED_DEBUG
    psce.disp_print(0,0,(char*)"Wait for P_TICK Fall");
#endif
    do {  psce.DUT_GetOutputs(N_TX);
    } while(psce.txByte[1] & OUT_P_TICK);

    psce.DUT_GetOutputs(N_TX);
    x_pos = psce.txByte[0] & 0x7F;
    y_pos = psce.txByte[1] & 0x3F;
    pixel = (psce.txByte[1] & OUT_PIXEL)? 0x01 : 0x00;
    if (x_pos%8)  GBuff[(y_pos*16)+(x_pos/8)] |= pixel << (x_pos%8);
    else          GBuff[(y_pos*16)+(x_pos/8)]  = pixel;

    if (y_pos==63 && x_pos==127)
    {
      while(!Serial.availableForWrite());
      Serial.write(0xAA); // Start of Transaction

#ifdef OLED_DEBUG
      psce.disp_print(0,0,(char*)"Sending Image");
#endif
      for(int i=0; i<1024; i++)
      {
        while(!Serial.availableForWrite());
        Serial.write(GBuff[i]);
      }
    }
  }
}
