/*
  Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
  PSCE Model Interface: SystemC to/from DUT Emulator
*/

// Standard Emulator ------------------------------------------------
#include "PSCE_APIs.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    10

#define N_RX            6   // Number of byte to DUT's inputs
#define N_TX            4   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x00

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200

  // PWM Set-up on pin: DAC1
  REG_PMC_PCER1 |= PMC_PCER1_PID36;                     // Enable PWM 
  REG_PIOB_ABSR |= PIO_ABSR_P16;                        // Set PWM pin perhipheral type A or B, in this case B
  REG_PIOB_PDR |= PIO_PDR_P16;                          // Set PWM pin to an output
  REG_PWM_CLK = PWM_CLK_PREA(0) | PWM_CLK_DIVA(1);      // Set the PWM clock rate to 114MHz (Overclocked)
  REG_PWM_CMR0 = PWM_CMR_CPRE_CLKA;                     // Enable single slope PWM and set the clock source as CLKA
  REG_PWM_CPRD0 = 380;                                  // Set the PWM frequency 114MHz/380 = 300Khz 
  REG_PWM_CDTY0 = 190;                                  // Set the PWM duty cycle 50% (380/2=190)
  REG_PWM_ENA = PWM_ENA_CHID0;                          // Enable the PWM channel
}

void loop()
{
  uint8_t Dsp_Out, Kbd_In;

  CPU_Resetting();

  while(true)
  {
    psce.EMU_Blinker(0x40);   // Blinker speed

    Dsp_Out = CPU_ReadDisplay();
    if (Dsp_Out)
    {
      // Sent to Host
      if (Serial.availableForWrite() >= 1)
        Serial.write((int)(Dsp_Out));
    }

    if (Serial.available() >= 1)
    {
      Kbd_In = (uint8_t)Serial.read();
      if (Kbd_In=='d')
      {
        Download_CC65();
        CPU_Resetting();
        delay(100);
      }
      else if (Kbd_In=='i')
      {
        Download_iHEX();
        CPU_Resetting();
        delay(100);
      }
      else
        CPU_WriteKeyboard(Kbd_In);
    }
  }
}

//------------------------------------------------------------------------
// DUT interface,
//  See DUT's wrapper Verilog
//
// Inputs to DUT (6-Bytes)
//  [0] = {--|Dsp_Rd|Kbd_Wr|RDY|NMI|IRQ|reset}
//  [1] = Kbd_In
// Memory Emulation
//  [2] = {-----|Mem_Emu_Clk|Mem_Emu_Wen|Mem_Emu_Ena}
//  [3] = Mem_Emu_Adr[15:8]
//  [4] = Mem_Emu_Adr[ 7:0]
//  [5] = Mem_Emu_Din
// Outputs from DUT (5-bytes)
//  [0]  <= Dsp_Reg_Out;
//  [1]  <= Kbd_Reg_Out;
//  [2]  <= Kbd_Ctl_Out;
//  [3]  <= Mem_Emu_Dout

// Inputs to DUT (6-Bytes)
#define CPU_CONTROL_BYTE  0 // {--|Dsp_Rd|Kbd_Wr|RDY|NMI|IRQ|reset}
#define CPU_KEYBOARD_IN   1 // Kbd_In[7:0]
#define MEM_CONTROL_BYTE  2 // {-----|Mem_Emu_Clk|Mem_Emu_Wen|Mem_Emu_Ena}
#define MEM_EMU_ADR_H     3 // Mem_Emu_Adr[15:8]
#define MEM_EMU_ADR_L     4 // Mem_Emu_Adr[ 7:0]
#define MEM_EMU_DIN       5 // Mem_Emu_Din

// Outputs from DUT (5-bytes)
#define CPU_DSP_REG_OUT   0 // Dsp_Reg_Out;
#define CPU_KBD_REG_OUT   1 // Kbd_Reg_Out;
#define CPU_KBD_CTL_OUT   2 // Kbd_Ctl_Out;
#define MEM_EMU_DOUT      3 // Mem_Emu_Dout

// BITMAP of CPU Control Byte 
#define DSP_RD  0x20
#define KBD_WR  0x10
#define CPU_RDY 0x08
#define CPU_NMI 0x04
#define CPU_IRQ 0x02
#define CPU_RST 0x01
// BITMAP of MEM Control Byte
#define MEM_EMU_EN   0x01
#define MEM_EMU_WEN  0x02
#define MEM_EMU_CLK  0x04

void CPU_Resetting()
{
    psce.EMU_Input(CPU_CONTROL_BYTE, (CPU_RDY | CPU_RST));
    psce.EMU_Input(MEM_CONTROL_BYTE, 0x00);
    psce.DUT_Input();

    delay(100);

    psce.EMU_Input(CPU_CONTROL_BYTE, CPU_RDY);
    psce.DUT_Input();

    delay(100);
}

uint8_t CPU_ReadDisplay()
{
  uint8_t ret;

  // Read
  psce.DUT_Output();
  ret = psce.EMU_Output(CPU_DSP_REG_OUT);

  if (ret) // & 0x80) // Something to display ?
  {
    // Acknowledge Display
    psce.EMU_Input(CPU_CONTROL_BYTE, (CPU_RDY | DSP_RD));
    psce.DUT_Input();

    //delayMicroseconds(100);

    psce.EMU_Input(CPU_CONTROL_BYTE, CPU_RDY);
    psce.DUT_Input();

    return (ret & 0x7F);  // ASCII
  }

  return 0;
}

void CPU_WriteKeyboard(uint8_t byte)
{
  uint8_t kbd_ctl;

  do {
    psce.DUT_Output();
    kbd_ctl = psce.EMU_Output(CPU_KBD_CTL_OUT);
  }while (kbd_ctl & 0x80);

  psce.EMU_Input(CPU_CONTROL_BYTE, (CPU_RDY | KBD_WR)); // Single-Shot
  psce.EMU_Input(CPU_KEYBOARD_IN, (byte | 0x80));
  psce.DUT_Input();

  delayMicroseconds(1);

  psce.EMU_Input(CPU_CONTROL_BYTE, CPU_RDY);
  psce.DUT_Input();
}
//--------------------------------------------------------------
void Download_CC65()
{
  uint8_t Address[2], Length[2], byte;
  uint16_t nAddress, nLength;

  for(uint16_t i=0; i<2; i++)
  {
    while(Serial.available() < 1) delayMicroseconds(1);
    Address[i] = (uint8_t)Serial.read();
  }
  nAddress = ((uint16_t)Address[1]<<8)|(uint16_t)Address[0];

  for(uint16_t i=0; i<2; i++)
  {
    while(Serial.available() < 1) delayMicroseconds(1);
    Length[i] = (uint8_t)Serial.read();
  }
  nLength = ((uint16_t)Length[1]<<8)|(uint16_t)Length[0];

  for(uint16_t i=0; i<nLength; i++)
  {
    while(Serial.available() < 1) delayMicroseconds(1);
    byte = (uint8_t)Serial.read();
    byte = CPU_MemoryWrite(nAddress, byte);

    while (Serial.availableForWrite() < 1) delayMicroseconds(1);
    Serial.write((int)(byte));

    nAddress++;
  }

  // Start up
  CPU_MemoryWrite(0, 0x20); // JSR
  CPU_MemoryWrite(1, Address[0]);
  CPU_MemoryWrite(2, Address[1]);
  CPU_MemoryWrite(3, 0x20); // JSR
  CPU_MemoryWrite(4, 0x00);
  CPU_MemoryWrite(5, 0xFF);
}

uint8_t CPU_MemoryRead(uint16_t Address)
{
  psce.EMU_Input(CPU_CONTROL_BYTE, 0x00); // Hold CPU
  psce.EMU_Input(MEM_CONTROL_BYTE, MEM_EMU_EN);
  psce.EMU_Input(MEM_EMU_ADR_H, (uint8_t)(Address >> 8));
  psce.EMU_Input(MEM_EMU_ADR_L, (uint8_t)(Address & 0x00FF));
  psce.DUT_Input();

  psce.EMU_Input(MEM_CONTROL_BYTE, (MEM_EMU_EN | MEM_EMU_CLK)); // Memory emulation, Read Clock
  psce.DUT_Input();
  delayMicroseconds(1);
  psce.EMU_Input(MEM_CONTROL_BYTE, MEM_EMU_EN);
  psce.DUT_Input();

  psce.DUT_Output();
  return(psce.EMU_Output(MEM_EMU_DOUT));
}

uint8_t CPU_MemoryWrite(uint16_t Address, uint8_t byte)
{

  psce.EMU_Input(CPU_CONTROL_BYTE,  0x00); // Hold CPU
  psce.EMU_Input(MEM_CONTROL_BYTE,  (uint8_t)(MEM_EMU_EN));
  psce.EMU_Input(MEM_EMU_ADR_H,     (uint8_t)(Address >> 8));
  psce.EMU_Input(MEM_EMU_ADR_L,     (uint8_t)(Address & 0x00FF));
  psce.EMU_Input(MEM_EMU_DIN,       byte);
  psce.DUT_Input();

  psce.EMU_Input(MEM_CONTROL_BYTE,  (uint8_t)(MEM_EMU_EN | MEM_EMU_WEN)); // Memory emulation, Write enable
  psce.DUT_Input();

  psce.EMU_Input(MEM_CONTROL_BYTE, (uint8_t)(MEM_EMU_EN | MEM_EMU_WEN | MEM_EMU_CLK)); // Memory emulation, Write Clock
  psce.DUT_Input();
  delayMicroseconds(1);
  psce.EMU_Input(MEM_CONTROL_BYTE, (uint8_t)(MEM_EMU_EN)); // Memory emulation
  psce.DUT_Input();
  
  return CPU_MemoryRead(Address);
}

//------------------------------------------------------------------------
void Download_iHEX()
{
  char      szBuff[128], szTemp[6];
  uint16_t  nAddress;
  uint8_t   byte;
  int       i = 0;

  while (true)
  {
    // Read line
    i = 0;
    while(true)
    {
      while(Serial.available() < 1) delayMicroseconds(1);
      szBuff[i] = (uint8_t)Serial.read();
      if (szBuff[i]==0x00)  break;
      i++;
    }

    // HEX format
    // :00 0000 00 12345678
    // Start symbol ':'
    if (szBuff[0] != ':') return;

    // Number of Bytes
    szTemp[0] = szBuff[1];
    szTemp[1] = szBuff[2];
    szTemp[2] = '\0';

    int nByte = (int)strtol(szTemp, NULL, 16);
    if (nByte < 1)  continue;

    // Address
    szTemp[0] = szBuff[3];
    szTemp[1] = szBuff[4];
    szTemp[2] = szBuff[5];
    szTemp[3] = szBuff[6];
    szTemp[4] = '\0';
    nAddress = (uint16_t)strtol(szTemp, NULL, 16);

    // Init. Memory
    for (i = 0; i < nByte; i++)
    {
    	szTemp[0] = szBuff[i * 2 + 9];
    	szTemp[1] = szBuff[i * 2 + 10];
    	szTemp[2] = '\0';

      byte = CPU_MemoryWrite(nAddress, (uint8_t)strtol(szTemp, NULL, 16));
      while (Serial.availableForWrite() < 1) delayMicroseconds(1);
      Serial.write((int)(byte));

    	nAddress++;
    }
  }
}
