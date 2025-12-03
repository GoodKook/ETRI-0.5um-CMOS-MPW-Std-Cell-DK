/*
  Co-Emulation Modeling Interface (SA-Mode)
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap(rxByte[])             DUT's output bitmap(txByte[])
//      +---+-+-+-+-+-+-+                       +-------------+-+
//  [0] |   |5|4|3|2|1|0|                   [0] |             |0|
//      +---+-+-+-+-+-+-+                       +-------------+-+
//           | | | | | |                                       |
//           | | | | | +---clk                                 +---WE
//           | | | | +---reset                  +---------------+
//           | | | +---IRQ                  [1] |7 6 5 4 3 2 1 0|
//           | | +---NMI                        +-------+-------+
//           | +---RDY                                  |
//           +---en_woz                                 +---DO[7:0]
//      +---------------+
//  [1] |7 6 5 4 3 2 1 0|                       +---------------+
//      +-------+-------+                   [2] |7 6 5 4 3 2 1 0|
//              |                               +-------+-------+
//              +-----DI[7:0]                           |
//                                                      +---AB[7:0]
//                                              +---------------+
//                                          [3] |7 6 5 4 3 2 1 0|
//                                              +-------+-------+
//                                                      |
//                                                      +---AB[15:8]
//
#define N_RX            2   // Number of byte to DUT's inputs
#define N_TX            4   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x01  // Clock: METHOD emulation
//#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

//-------------------------------------------------------------
#define _RESET_   0x02
#define _IRQ_     0x04
#define _NMI_     0x08
#define _RDY_     0x10
#define _EN_WOZ_  0x20

#define _WE_      0x01

PSCE psce(DELAY_MICROS);

void Resetting()
{
  // Booting 6502
  psce.DUT_GetOutputs(N_TX);
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.rxByte[1] = 0x00;
  psce.rxByte[0] = _EN_WOZ_|_RESET_;
  psce.DUT_SetInputs(N_RX);

  psce.DUT_GetOutputs(N_TX);
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.rxByte[0] = _EN_WOZ_|_RESET_|_RDY_;
  psce.DUT_SetInputs(N_RX);

  psce.DUT_GetOutputs(N_TX);
  psce.rxByte[0] = _EN_WOZ_|_RDY_;
  psce.DUT_SetInputs(N_RX);
}

void setup()
{
  psce.init();  // BPS=115200

  // Resetting 6502
  Resetting();
}

void loop()
{
  psce.EMU_Blinker(0x80);   // Blinker speed
  //psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position
  //psce.TxPacket(N_TX);

  MEM_Pre_Process();
  psce.DUT_ClockCycle_Pos();
  MEM_Post_Process();
}

//---------------------------------------------------------------
//
// txByte[]: Outputs from DUT(AB,DO,WE)
// rxByte[]: Inputs to DUT(DI)
//
//  +-Mem----+          +-DUT---+
//  |        |          |       |
//  | ...... |<=Address=| 6502  |
//  |        |<=DO======|  CPU  |
//  |--------|<-WE------|       |
//  | I/O    |======DI=>|       |
//  |--------|          +-------+
//  | WozMon |
//  +--------+
//-------------------------------------------------------------
#define KBD_REG   0xD010
#define KBD_CTL   0xD011
#define DSP_REG   0xD012
#define DSP_CTL   0xD013

#define BIN_DOWN  0xD018

uint8_t mem[65536];  // RAM 64K bytes
uint16_t Address;
uint8_t  KBD_Buff = '\0', DSP_Buff = '\0';

void MEM_Pre_Process()
{
  psce.DUT_GetOutputs(N_TX);

  Address = ((uint16_t)psce.txByte[3]<<8) | psce.txByte[2];

  if (psce.txByte[0] & _WE_)  // Memory Write --------------------------------
  {
    mem[Address] = psce.txByte[1];  // DUT Dout ---> Memory Din

    // Memory Mapped I/O (Display)--------------------------
    if (Address == DSP_REG)	// PIA.B display register
		{
      DSP_Buff = (mem[Address] & 0x07F);
      while (Serial.availableForWrite() < 1);
      Serial.write(DSP_Buff);
      mem[Address] = DSP_Buff;	// Clear B7 (Character out to screen)
		}
  }
}

void MEM_Post_Process()
{
   // Memory Mapped I/O (Keyboard)--------------------------
	if (Address == KBD_REG)         // PIA.A keyboard input
	{
     if (KBD_Buff=='\0')
     {
       mem[Address] = 0x00;
       mem[KBD_CTL] = (mem[KBD_CTL] & 0x3F);	// Keyboard empty
     }
     else if (KBD_Buff=='\n'||KBD_Buff==0x0A)
     {
       mem[Address] = 0x8D;                  // Valid input: CR
       mem[KBD_CTL] = (mem[KBD_CTL] & 0x3F);	// Keyboard empty
       KBD_Buff = '\0';
     }
     else
     {
       mem[Address] = (KBD_Buff | 0x80);     // Valid input
       mem[KBD_CTL] = (mem[KBD_CTL] & 0x3F);	// Keyboard empty
       KBD_Buff = '\0';
     }
   }
	else if (Address == KBD_CTL)	// PIA.A keyboard Control Register
	{
     if (KBD_Buff=='\0')
     {
       while (Serial.available() < 1);
       KBD_Buff = Serial.read();
       mem[Address] = (mem[Address] | 0x80);	// Keyboard ready
     }
	}
	else if (Address == BIN_DOWN)	// CC65 Binary Download
  {
    mem[Address] = RAM_Download();
  }

  psce.rxByte[0] = _EN_WOZ_|_RDY_;
  psce.rxByte[1] = mem[Address];  // Memory Dout ---> DUT Din
  psce.DUT_SetInputs(N_RX);
}

uint8_t Serial_LoopBack()
{
  uint8_t Rx;

  while (Serial.available() < 1);
  Rx = Serial.read();
  while (Serial.availableForWrite() < 1);
  Serial.write(Rx);

  return Rx;
}

uint8_t RAM_Download()
{
	uint16_t nAddress = 0, nLength = 0;

  // Parse cc65 binary ---------------------------------
  // First 2 Bytes for Address
  nAddress  = (uint16_t)Serial_LoopBack();
  nAddress += (uint16_t)Serial_LoopBack()*256;
  // Next 2 Bytes for Length
  nLength   = (uint16_t)Serial_LoopBack();
  nLength  += (uint16_t)Serial_LoopBack()*256;

  if (nLength<4)  return 0x00;

  // Binaries
  for (uint16_t i=0; i<nLength; i++)
    mem[nAddress+i] = Serial_LoopBack();

  // Set Reset vector
  mem[0] = 0x20;                  // JSR  $StartUp
  mem[1] = (uint8_t)nAddress;     //  Little-Endian
  mem[2] = (uint8_t)(nAddress>>8);
  mem[3] = 0x20;                  // JSR  $FF00
  mem[4] = 0x00;
  mem[5] = 0xFF;

  Resetting();
  return 0xFF;
}
