/*
  'fir8' Co-Emulation interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    10

#define N_RX            2   // Number of byte to DUT's inputs
#define N_TX            3   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
#define DUT_CLK_BITMAP  0x08  // Clock

PSCE psce(DELAY_MICROS);

//------------------------------------------------------------------------------
// DUT Specific: fir
// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap                       DUT's output bitmap
//      +-------+-+-+-+-+                         +---------------+---------------+
//  [0] |7 6 5 4|3|2|1|0|                   [1:0] |7 6 5 4 3 2 1 0|7 6 5 4 3 2 1 0|
//      +-------+-+-+-+-+                         +-------------------------------+
//               |   | |                                          |
//               |   | +---ap_rst                                 +---y[15:0]
//               |   +-----ap_start               +-----+-+-+-+---+
//               |                            [2] |     |4|3|2|1|0|
//               +---------(ap_clk)               +-----+-+-+-+-+-+
//                                                         | | | |
//      +---------------+                                  | | | +-----ap_done
//  [1] |7 6 5 4 3 2 1 0|                                  | | +-------ap_idle
//      +-------+-------+                                  | +---------ap_ready
//              |                                          +-----------y_ap_vld
//              +---------x[7:0]
//

#define AP_RESET  0x01
#define AP_START  0x02
#define AP_CLK    0x08

#define AP_DONE   0x01
#define AP_IDLE   0x02
#define AP_READY  0x04
#define Y_AP_VLD  0x08

void SetInputs()
{
    for(int addr_emu=0; addr_emu<N_RX; addr_emu++)
      psce.EMU_Input(addr_emu, psce.rxByte[addr_emu]);
    psce.DUT_Input();
}

void GetOutputs()
{
    psce.DUT_Output();
    for(int addr_emu=0; addr_emu<N_TX; addr_emu++)
      psce.txByte[addr_emu] = (uint)psce.EMU_Output((uint8_t)addr_emu);
}

void ClockCycle()
{
    psce.DUT_Posedge_Clk();
    psce.DUT_Negedge_Clk();
}

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200

  digitalWrite(LED_BUILTIN, LOW);

  psce.rxByte[0] = AP_RESET;
  SetInputs();
  ClockCycle();
  ClockCycle();
  ClockCycle();

  digitalWrite(LED_BUILTIN, HIGH);

  do {
    psce.rxByte[0] = AP_START;
    SetInputs();
    ClockCycle();
    GetOutputs();
  } while(psce.txByte[2] & AP_IDLE);

  digitalWrite(LED_BUILTIN, LOW);
}
#define F_SAMPLE  4800
int nSample = 0;
uint8_t rxByte[F_SAMPLE];
uint8_t txByte[F_SAMPLE*2];

void loop()
{
  // Receive Data from Host
  nSample = 0;
  while(nSample < F_SAMPLE)
  {
    int N_Rx = Serial.available();
    while(N_Rx)
    {
      rxByte[nSample] = Serial.read();
      Serial.write(rxByte[nSample]);
      nSample++;
      N_Rx--;
      //psce.EMU_Blinker(0x80);
    }
  }

  // Transact with FPGA
  digitalWrite(LED_BUILTIN, LOW);
  nSample = 0;
  while(nSample < F_SAMPLE)
  {
    while(!(psce.txByte[2] & AP_READY))
    {
      psce.rxByte[0] = AP_START;
      psce.rxByte[1] = rxByte[nSample];
      SetInputs();
      ClockCycle();
      GetOutputs();
    }

    do
    {
      psce.rxByte[0] = AP_START;
      psce.rxByte[1] = rxByte[nSample];
      SetInputs();
      ClockCycle();
      GetOutputs();
    } while(!(psce.txByte[2] & Y_AP_VLD));

    txByte[nSample*2]     = psce.txByte[0];
    txByte[(nSample*2)+1] = psce.txByte[1];

    while(!(psce.txByte[2] & AP_DONE))
    {
      psce.rxByte[0] = AP_START;
      psce.rxByte[1] = rxByte[nSample];
      SetInputs();
      ClockCycle();
      GetOutputs();
    }

    nSample++;
  }

  // Transmit Data to Host
  digitalWrite(LED_BUILTIN, HIGH);
  nSample = 0;
  while(nSample < F_SAMPLE)
  {
    int N_Tx = Serial.availableForWrite();
    while(N_Tx)
    {
      Serial.write((uint8_t)txByte[nSample*2]);
      Serial.write((uint8_t)txByte[(nSample*2)+1]);
      nSample++;
      //psce.EMU_Blinker(0x80);
      N_Tx--;
    }
  }
}

