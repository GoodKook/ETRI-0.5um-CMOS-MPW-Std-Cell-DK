/*
  Co-Emulation Modeling Interface(CA-Mode)
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

//#include "TM1637Display.h"  // 7-Seg. Display

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// PWM for Clock generator -----------------------
//#define _PWM_LOGLEVEL_    3
#include "RP2040_PWM.h"
RP2040_PWM* PWM_Instance; //creates pwm instance
float frequency = 10000; //  Freq(Hz)
float dutyCycle = 50;     //  Duty in %
#define PIN_CLK_OUT PIN_CLK_DUT  //  PWM out pin (#20)

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap
//      +-+-+-+-+-+-+-+-+
//  [0] | |6|5|4|3|2|1|0|
//      +-+-+-+-+-+-+-+-+
//         | | | | | | |
//         | | | | | | +---clk(Un-Used)
//         | | | | | +---reset
//         | | | | +---IRQ
//         | | | +---NMI
//         | | +---RDY
//         | +---kbd_rdy
//         +---dsp_ack
#define _rxByte_CPU_CTL_  0
#define _CPU_RESET_ 0x02
#define _CPU_IRQ_   0x04
#define _CPU_NMI_   0x08
#define _CPU_RDY_   0x10
#define _KBD_RDY_   0x20
#define _DSP_ACK_   0x40
//      +---------------+
//  [1] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +-----DI[7:0]
//
#define _rxByte_CPU_DI_   1
//      +-+-------------+
//  [2] | |6 5 4 3 2 1 0|
//      +-+-----+-------+
//              |
//              +---kbd_data[6:0]
#define _rxByte_KBD_DATA_ 2
//      +---------+-+-+-+
//  [3] |         |2|1|0|
//      +---------+-+-+-+
//                 | | |
//                 | | +---emu_en
//                 | +---emu_clk
//                 +---emu_we
#define _rxByte_EMU_CTL_  3
#define _EMU_EN_          0x01
#define _EMU_CLK_         0x01
#define _EMU_WE_          0x01
//      +---------------+
//  [4] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[7:0]
#define _rxByte_EMU_ADDRL_  4
//      +-+-------------+
//  [5] | |6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[14:8]
#define _rxByte_EMU_ADDRH_  5
//      +---------------+
//  [6] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_di
#define _rxByte_EMU_DI_     6
// Emulation Transactor --------------------------------------------------------
//  DUT's output bitmap
//      +---------+-+-+-+
//  [0] |         |2|1|0|
//      +---------+-+-+-+
//                 | | |
//                 | | +---WE
//                 | +---kbd_ack
//                 +---dsp_rdy
#define _txByte_CPU_CTL_    0
#define _CPU_WE_            0x01
#define _KBD_ACK_           0x02
#define _DSP_RDY_           0x04
//      +---------------+
//  [1] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +---DO[7:0]
#define _txByte_CPU_DO_     1
//      +---------------+
//  [2] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +---AB[7:0]
#define _txByte_CPU_ABL_    2
//      +---------------+
//  [3] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +---AB[15:8]
#define _txByte_CPU_ABH_    3
//      +-+-------------+
//  [4] | |6 5 4 3 2 1 0|
//      +-+-----+-------+
//              |
//              +---dsp_data[6:0]
#define _txByte_DSP_DATA_   4
//      +---------------+
//  [5] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +---emu_do[7:0]
#define _txByte_EMU_DO_     5

#define N_RX            7   // Number of byte to DUT's inputs
#define N_TX            6   // Number of byte from DUT's output

//#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x01  // Clock: METHOD emulation
//#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200
  for (int i=0; i<N_RX; i++)  psce.rxByte[i] = 0x00;
  for (int i=0; i<N_TX; i++)  psce.txByte[i] = 0x00;

  psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RESET_|_CPU_RDY_;
  psce.DUT_SetInputs(N_RX);

  // PWM for Clock generator----------------------------
  PWM_Instance = new RP2040_PWM(PIN_CLK_OUT, frequency, dutyCycle);
  delay(1000); // ms
}

void loop()
{
  PWM_Instance->setPWM(PIN_CLK_OUT, frequency, dutyCycle);

  psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RESET_|_CPU_RDY_;
  psce.DUT_SetInputs(N_RX);
  delay(100);
  psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RDY_;
  psce.DUT_SetInputs(N_RX);
  delay(100);

  char szBuff[16];

  while(true)
  {
    //psce.EMU_Blinker(16);   // Blinker speed
    psce.DUT_GetOutputs(N_TX);
    // PIA: Display -------------------------------------
    if (psce.txByte[_txByte_CPU_CTL_] & _DSP_RDY_)
    {
      psce.DUT_GetOutputs(N_TX);

//      sprintf(szBuff, "DSP RDY[%02X]", psce.txByte[_txByte_DSP_DATA_]);
//      psce.disp_print(0, 0, (char*)szBuff);

      while (Serial.availableForWrite() < 1);
      Serial.write(psce.txByte[_txByte_DSP_DATA_] & 0x7F);

//      sprintf(szBuff, "DSP ACK[%02X]", psce.txByte[_txByte_DSP_DATA_]);
//      psce.disp_print(0, 6, (char*)szBuff);

      psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RDY_|_DSP_ACK_;
      psce.DUT_SetInputs(N_RX);

      do {
        psce.DUT_GetOutputs(N_TX);
      } while(psce.txByte[_txByte_CPU_CTL_] & _DSP_RDY_);

//      sprintf(szBuff, "DSP DONE[%02X]", psce.txByte[_txByte_DSP_DATA_]);
//      psce.disp_print(0, 12, (char*)szBuff);

      psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RDY_;
      psce.DUT_SetInputs(N_RX);
    }
    // PIA: Keyboard ------------------------------------
    else if (Serial.available() > 0)
    {
      psce.rxByte[_rxByte_KBD_DATA_] = Serial.read();
      psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RDY_|_KBD_RDY_;
      psce.DUT_SetInputs(N_RX);

//      sprintf(szBuff, "KBD RDY[%02X]", psce.rxByte[_rxByte_KBD_DATA_]);
//      psce.disp_print(0, 18, (char*)szBuff);

      do {
        psce.DUT_GetOutputs(N_TX);
      } while(!(psce.txByte[_txByte_CPU_CTL_] & _KBD_ACK_));

//      sprintf(szBuff, "KBD ACK[%02X]", psce.rxByte[_rxByte_KBD_DATA_]);
//      psce.disp_print(0, 24, (char*)szBuff);

      psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RDY_;
      psce.DUT_SetInputs(N_RX);
      do {
        psce.DUT_GetOutputs(N_TX);
      } while(psce.txByte[_txByte_CPU_CTL_] & _KBD_ACK_);

//      sprintf(szBuff, "KBD DONE[%02X]", psce.rxByte[_rxByte_KBD_DATA_]);
//      psce.disp_print(0, 30, (char*)szBuff);
    }
  }
}
