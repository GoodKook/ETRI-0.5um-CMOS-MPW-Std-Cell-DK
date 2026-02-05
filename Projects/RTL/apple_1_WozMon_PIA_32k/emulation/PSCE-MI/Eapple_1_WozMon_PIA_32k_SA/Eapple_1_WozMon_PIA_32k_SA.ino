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
float frequency = 4000000; //  Freq(Hz)
float dutyCycle = 50;     //  Duty in %
#define PIN_CLK_OUT PIN_CLK_DUT  //  PWM out pin (#20)

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap
//      +-+-+-+-+-+-+-+-+
//  [0] |7|6|5|4|3|2|1|0|
//      +-+-+-+-+-+-+-+-+
//       | | | | | | | |
//       | | | | | | | +---reset
//       | | | | | | +---IRQ
//       | | | | | +---NMI
//       | | | | +---kbd_rdy
//       | | | +---dsp_ack
//       | | +---emu_en
//       | +---emu_clk
//       +---emu_we
#define _rxByte_CPU_CTL_  0
#define _CPU_RUN_   0x00
#define _CPU_RESET_ 0x01
#define _CPU_IRQ_   0x02
#define _CPU_NMI_   0x04
#define _KBD_RDY_   0x08
#define _DSP_ACK_   0x10
#define _EMU_EN_    0x20
#define _EMU_CLK_   0x40
#define _EMU_WE_    0x80
//      +-+-------------+
//  [1] |7|6 5 4 3 2 1 0|
//      +-+-----+-------+
//       |      |
//       |      +---kbd_data[6:0]
//       +---clk(Un-Used)
#define _rxByte_KBD_DATA_   1
//      +---------------+
//  [2] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[7:0]
#define _rxByte_EMU_ADDRL_  2
//      +-+-------------+
//  [3] | |6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_addr[14:8]
#define _rxByte_EMU_ADDRH_  3
//      +---------------+
//  [4] |7 6 5 4 3 2 1 0|
//      +---------------+
//              |
//              +---emu_di
#define _rxByte_EMU_DI_     4
// Emulation Transactor --------------------------------------------------------
//  DUT's output bitmap
//      +---------+-+-+-+
//  [0] |         |2|1|0|
//      +---------+-+-+-+
//                   | |
//                   | +---kbd_ack
//                   +---dsp_rdy
#define _txByte_CPU_CTL_    0
#define _KBD_ACK_           0x01
#define _DSP_RDY_           0x02
//      +-+-------------+
//  [1] | |6 5 4 3 2 1 0|
//      +-+-----+-------+
//              |
//              +---dsp_data[6:0]
#define _txByte_DSP_DATA_   1
//      +---------------+
//  [2] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +---emu_do[7:0]
#define _txByte_EMU_DO_     2

#define N_RX            5   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

//#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x01  // Clock: METHOD emulation
//#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200
  for (int i=0; i<N_RX; i++)  psce.rxByte[i] = 0x00;
  for (int i=0; i<N_TX; i++)  psce.txByte[i] = 0x00;

  psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RESET_;
  psce.DUT_SetInputs(N_RX);

  // PWM for Clock generator----------------------------
  PWM_Instance = new RP2040_PWM(PIN_CLK_OUT, frequency, dutyCycle);
  delay(1000); // ms
}

void loop()
{
  PWM_Instance->setPWM(PIN_CLK_OUT, frequency, dutyCycle);

  psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RESET_;
  psce.DUT_SetInputs(N_RX);
  delay(100);
  psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RUN_;
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
#ifdef DEBUG_DSP
      sprintf(szBuff, "DSP RDY[%02X]", psce.txByte[_txByte_DSP_DATA_]);
      psce.disp_print(0, 0, (char*)szBuff);
#endif
      while (Serial.availableForWrite() < 1);
      Serial.write(psce.txByte[_txByte_DSP_DATA_] & 0x7F);
#ifdef DEBUG_DSP
      sprintf(szBuff, "DSP ACK[%02X]", psce.txByte[_txByte_DSP_DATA_]);
      psce.disp_print(0, 6, (char*)szBuff);
#endif
      psce.rxByte[_rxByte_CPU_CTL_] = _DSP_ACK_;
      psce.DUT_SetInputs(N_RX);

      do {
        psce.DUT_GetOutputs(N_TX);
      } while(psce.txByte[_txByte_CPU_CTL_] & _DSP_RDY_);
#ifdef DEBUG_DSP
      sprintf(szBuff, "DSP DONE[%02X]", psce.txByte[_txByte_DSP_DATA_]);
      psce.disp_print(0, 12, (char*)szBuff);
#endif
      psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RUN_;
      psce.DUT_SetInputs(N_RX);
    }
    // PIA: Keyboard ------------------------------------
    else if (Serial.available() > 1)  // 2-Byte ready ?
    {
      // Always read 2-Byte: _rxByte_CPU_CTL_ & _rxByte_KBD_DATA_
      unsigned char _rxByte_[2];
      _rxByte_[0] = Serial.read(); // _CPU_CTL_
      _rxByte_[1] = Serial.read(); // _KBD_DATA_
#ifdef DEBUG_KBD
      sprintf(szBuff, "KBD Received[%02X][%02X]", _rxByte_[0], _rxByte_[1]);
      psce.disp_print(0, 0, (char*)szBuff);
#endif
      if (_rxByte_[0] & _EMU_EN_)  // Is it RAM emulation?
      {
        DownloadBIN();

        psce.disp_print(0, 0, (char*)"Download DONE");
        continue;
      }
      else if (_rxByte_[0] & _CPU_RESET_)  // Is it RESET?
      {
        psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RESET_;
        psce.DUT_SetInputs(N_RX);
        delay(100);

        psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RUN_;
        psce.DUT_SetInputs(N_RX);
        delay(100);

        psce.disp_print(0, 0, (char*)"CPU RESET");
        continue;
      }
      else if (!_rxByte_[1])  // NIL
      {
        psce.disp_print(0, 0, (char*)"Command NIL");
        continue;
      }

      psce.rxByte[_rxByte_KBD_DATA_] = _rxByte_[1];
      psce.rxByte[_rxByte_CPU_CTL_] = _KBD_RDY_;
      psce.DUT_SetInputs(N_RX);
#ifdef DEBUG_KBD
      sprintf(szBuff, "KBD RDY[%02X]", psce.rxByte[_rxByte_KBD_DATA_]);
      psce.disp_print(0, 18, (char*)szBuff);
#endif
      do {
        psce.DUT_GetOutputs(N_TX);
      } while(!(psce.txByte[_txByte_CPU_CTL_] & _KBD_ACK_));
#ifdef DEBUG_KBD
      sprintf(szBuff, "KBD ACK[%02X]", psce.rxByte[_rxByte_KBD_DATA_]);
      psce.disp_print(0, 24, (char*)szBuff);
#endif
      psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RUN_;
      psce.DUT_SetInputs(N_RX);
      do {
        psce.DUT_GetOutputs(N_TX);
      } while(psce.txByte[_txByte_CPU_CTL_] & _KBD_ACK_);
#ifdef DEBUG_KBD
      sprintf(szBuff, "KBD DONE[%02X]", psce.rxByte[_rxByte_KBD_DATA_]);
      psce.disp_print(0, 30, (char*)szBuff);
#endif
    }
  }
}

//--------------------------------------------------------------------------
// Download CC65 binary

void DownloadBIN()
{
  unsigned char   cByte, addr_L, addr_H, Len_L, Len_H;
  unsigned short  address, length;

  // Read first 4-bytes
  while(Serial.available() < 1);  addr_L  = Serial.read();  Serial.write((int)addr_L);
  while(Serial.available() < 1);  addr_H  = Serial.read();  Serial.write(addr_H);

  address = (unsigned short)addr_H*256 + (unsigned short)addr_L;

  while(Serial.available() < 1);  Len_L   = Serial.read();  Serial.write(Len_L);
  while(Serial.available() < 1);  Len_H   = Serial.read();  Serial.write(Len_H);

  length = (unsigned short)Len_H*256 + (unsigned short)Len_L;

  for (;length>0; length--, address++)
  {
    while(Serial.available() < 1);
    cByte = Serial.read();

    psce.rxByte[_rxByte_EMU_ADDRL_] = (unsigned char)address;
    psce.rxByte[_rxByte_EMU_ADDRH_] = (unsigned char)(address>>8);
    psce.rxByte[_rxByte_CPU_CTL_]   = _CPU_RESET_|_EMU_EN_|_EMU_WE_;
    psce.rxByte[_rxByte_EMU_DI_]    = (unsigned char)cByte;
    psce.DUT_SetInputs(N_RX);
    psce.rxByte[_rxByte_CPU_CTL_]  |= _EMU_CLK_;    psce.DUT_SetInputs(N_RX);
    psce.rxByte[_rxByte_CPU_CTL_]  &= ~(_EMU_CLK_); psce.DUT_SetInputs(N_RX);

    psce.rxByte[_rxByte_CPU_CTL_]   = _CPU_RESET_|_EMU_EN_;
    psce.DUT_SetInputs(N_RX);
    psce.rxByte[_rxByte_CPU_CTL_]  |= _EMU_CLK_;    psce.DUT_SetInputs(N_RX);
    psce.rxByte[_rxByte_CPU_CTL_]  &= ~(_EMU_CLK_); psce.DUT_SetInputs(N_RX);
    psce.DUT_GetOutputs(N_TX);
    cByte = psce.txByte[_txByte_EMU_DO_];

    Serial.write(cByte);
  }

  psce.rxByte[_rxByte_CPU_CTL_]   = _CPU_RESET_|_EMU_EN_|_EMU_WE_;
  psce.rxByte[_rxByte_EMU_ADDRL_] = 0x00;
  psce.rxByte[_rxByte_EMU_ADDRH_] = 0x00;
  psce.rxByte[_rxByte_EMU_DI_]    = 0x20;
  psce.rxByte[_rxByte_CPU_CTL_]  |= _EMU_CLK_;      psce.DUT_SetInputs(N_RX);
  psce.rxByte[_rxByte_CPU_CTL_]  &= ~(_EMU_CLK_);   psce.DUT_SetInputs(N_RX);

  psce.rxByte[_rxByte_EMU_ADDRL_] = 0x01;
  psce.rxByte[_rxByte_EMU_ADDRH_] = 0x00;
  psce.rxByte[_rxByte_EMU_DI_]    = addr_L;
  psce.rxByte[_rxByte_CPU_CTL_]  |= _EMU_CLK_;      psce.DUT_SetInputs(N_RX);
  psce.rxByte[_rxByte_CPU_CTL_]  &= ~(_EMU_CLK_);   psce.DUT_SetInputs(N_RX);

  psce.rxByte[_rxByte_EMU_ADDRL_] = 0x02;
  psce.rxByte[_rxByte_EMU_ADDRH_] = 0x00;
  psce.rxByte[_rxByte_EMU_DI_]    = addr_H;
  psce.rxByte[_rxByte_CPU_CTL_]  |= _EMU_CLK_;      psce.DUT_SetInputs(N_RX);
  psce.rxByte[_rxByte_CPU_CTL_]  &= ~(_EMU_CLK_);   psce.DUT_SetInputs(N_RX);

  psce.rxByte[_rxByte_EMU_ADDRL_] = 0x03;
  psce.rxByte[_rxByte_EMU_ADDRH_] = 0x00;
  psce.rxByte[_rxByte_EMU_DI_]    = 0x20;
  psce.rxByte[_rxByte_CPU_CTL_]  |= _EMU_CLK_;      psce.DUT_SetInputs(N_RX);
  psce.rxByte[_rxByte_CPU_CTL_]  &= ~(_EMU_CLK_);   psce.DUT_SetInputs(N_RX);

  psce.rxByte[_rxByte_EMU_ADDRL_] = 0x04;
  psce.rxByte[_rxByte_EMU_ADDRH_] = 0x00;
  psce.rxByte[_rxByte_EMU_DI_]    = 0x00;
  psce.rxByte[_rxByte_CPU_CTL_]  |= _EMU_CLK_;      psce.DUT_SetInputs(N_RX);
  psce.rxByte[_rxByte_CPU_CTL_]  &= ~(_EMU_CLK_);   psce.DUT_SetInputs(N_RX);

  psce.rxByte[_rxByte_EMU_ADDRL_] = 0x05;
  psce.rxByte[_rxByte_EMU_ADDRH_] = 0x00;
  psce.rxByte[_rxByte_EMU_DI_]    = 0xFF;
  psce.rxByte[_rxByte_CPU_CTL_]  |= _EMU_CLK_;      psce.DUT_SetInputs(N_RX);
  psce.rxByte[_rxByte_CPU_CTL_]  &= ~(_EMU_CLK_);   psce.DUT_SetInputs(N_RX);

  psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RESET_;
  psce.DUT_SetInputs(N_RX);
  delay(100);

  psce.rxByte[_rxByte_CPU_CTL_] = _CPU_RUN_;
  psce.DUT_SetInputs(N_RX);
  delay(100);
}
