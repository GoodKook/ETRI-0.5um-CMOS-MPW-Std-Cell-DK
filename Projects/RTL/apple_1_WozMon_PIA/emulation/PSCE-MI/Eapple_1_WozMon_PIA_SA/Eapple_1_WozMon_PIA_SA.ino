/*
  Co-Emulation Modeling Interface (SA-Mode)
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

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
#define rxByte_CPU_CTL  0
#define _CPU_RESET_     0x02
#define _CPU_IRQ_       0x04
#define _CPU_NMI_       0x08
#define _CPU_RDY_       0x10
#define _KBD_RDY_       0x20
#define _DSP_ACK_       0x40
//      +---------------+
//  [1] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +-----DI[7:0]
#define rxByte_CPU_DI   1
//
//      +-+-------------+
//  [2] | |6 5 4 3 2 1 0|
//      +-+-----+-------+
//              |
//              +---kbd_data[6:0]
#define rxByte_KBD_DATA 2

// Emulation Transactor --------------------------------------------------------
//  DUT's output bitmap
//      +---------+-+-+-+
//  [0] |         |2|1|0|
//      +---------+-+-+-+
//                 | | |
//                 | | +---WE
//                 | +---kbd_ack
//                 +---dsp_rdy
#define txByte_CPU_CTL  0
#define _CPU_WE_        0x01
#define _KBD_ACK_       0x02
#define _DSP_RDY_       0x04
//      +---------------+
//  [1] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +---DO[7:0]
#define txByte_CPU_DO   1
//      +---------------+
//  [2] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +---AB[7:0]
#define txByte_CPU_AB_L 2
//      +---------------+
//  [3] |7 6 5 4 3 2 1 0|
//      +-------+-------+
//              |
//              +---AB[15:8]
#define txByte_CPU_AB_H 3
//      +-+-------------+
//  [4] | |6 5 4 3 2 1 0|
//      +-+-----+-------+
//              |
//              +---dsp_data[6:0]
#define txByte_DSP_DATA 4

#define N_RX            3   // Number of byte to DUT's inputs
#define N_TX            5   // Number of byte from DUT's output

PSCE psce(DELAY_MICROS);

//uint8_t *mem;  // RAM 64K bytes
uint8_t mem[65536];  // RAM 64K bytes
uint16_t Address;
uint8_t  KBD_Buff = '\0', DSP_Buff = '\0';

//--------------------------------------------------------------
// Core #0: Clock Sync. Memory(RAM) Process
void setup()
{
  psce.init();  // BPS=115200
  for (int i=0; i<N_RX; i++)  psce.rxByte[i] = 0;
  for (int i=0; i<N_TX; i++)  psce.txByte[i] = 0;

  psce.rxByte[rxByte_CPU_CTL] = _CPU_RESET_|_CPU_RDY_;
  psce.DUT_SetInputs(N_RX);
  psce.disp_print(0, 0, (char*)"CPU RESET");
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();

  psce.rxByte[rxByte_CPU_CTL] = _CPU_RDY_;
  psce.DUT_SetInputs(N_RX);
  psce.disp_print(0, 0, (char*)"CPU READY");
}

void loop()
{
  psce.EMU_Blinker(1000);   // Blinker speed

  MEM_Pre_Process();
  psce.DUT_ClockCycle_Pos();
  MEM_Post_Process();
}

//---------------------------------------------------------------
#define BIN_DOWN  0xD018

void MEM_Pre_Process()
{
  static bool bDsp_Ack = false;

  psce.DUT_GetOutputs(N_TX);

  Address = ((uint16_t)psce.txByte[3]<<8) | psce.txByte[2];

  if (psce.txByte[txByte_CPU_CTL] & _CPU_WE_)
    mem[Address] = psce.txByte[txByte_CPU_DO];  // DUT Dout ---> Memory Din

  // Memory Mapped IO: Display -----------------------------------
  if (bDsp_Ack)
  {
//    psce.disp_print(0, 12, (char*)"DSP DONE");
    psce.rxByte[rxByte_CPU_CTL] &= ~(_DSP_ACK_);
    bDsp_Ack = false;
  }
  else if (psce.txByte[txByte_CPU_CTL] & _DSP_RDY_)
  {
//    psce.disp_print(0, 0, (char*)"DSP RDY");
    while (Serial.availableForWrite() < 1);
    Serial.write(psce.txByte[txByte_CPU_DO] & 0x7F);

//    psce.disp_print(0, 6, (char*)"DSP ACK");
    psce.rxByte[rxByte_CPU_CTL] |= _DSP_ACK_;
    bDsp_Ack = true;
  }
  // Memory Mapped IO: Keyboard -----------------------------------
  else if (Serial.available())
  {
    psce.rxByte[rxByte_KBD_DATA] = Serial.read();
    psce.rxByte[rxByte_CPU_CTL] |= _KBD_RDY_;
//    psce.disp_print(0, 0, (char*)"KBD RDY");
  }
  else if (psce.txByte[txByte_CPU_CTL] & _KBD_ACK_)
  {
//    psce.disp_print(0, 6, (char*)"KBD ACK");
    psce.rxByte[rxByte_CPU_CTL] &= ~(_KBD_RDY_);
  }
}

void MEM_Post_Process()
{
	if (Address == BIN_DOWN)	// CC65 Binary Download
    mem[Address] = RAM_Download();

  psce.rxByte[rxByte_CPU_CTL] |= _CPU_RDY_;
  psce.rxByte[rxByte_CPU_DI] = mem[Address];  // Memory Dout ---> DUT Din
  psce.DUT_SetInputs(N_RX);
}
// ------------------------------------------------------------------------
// Download RAM
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

  return 0xFF;
}
