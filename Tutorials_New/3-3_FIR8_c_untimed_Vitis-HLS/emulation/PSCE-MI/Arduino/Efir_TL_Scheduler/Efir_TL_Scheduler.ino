/*
  'fir8' Co-Emulation interface
*/

#include <Scheduler.h>

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

void Advance_Clock()
{
    psce.DUT_SetInputs(N_RX);
    psce.DUT_ClockCycle_Pos();
    psce.DUT_GetOutputs(N_TX);
}

void setup()
{
  psce.init();  // Overclocking=114Mhz, BPS=115200

  digitalWrite(LED_BUILTIN, LOW);

  psce.rxByte[0] = AP_RESET;
  psce.DUT_SetInputs(N_RX);
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();
  psce.DUT_ClockCycle_Pos();

  digitalWrite(LED_BUILTIN, HIGH);

  do {
    psce.rxByte[0] = AP_START;
    Advance_Clock();
  } while(psce.txByte[2] & AP_IDLE);

  digitalWrite(LED_BUILTIN, LOW);

  Scheduler.startLoop(RxLoop);
  Scheduler.startLoop(TxLoop);
}

bool bRxProcessed = true;

void RxLoop()
{
  if (bRxProcessed)
  {
    // Receive Data
    if(Serial.available())
    {
      psce.rxByte[1] = Serial.read();
      Serial.write((uint8_t)psce.rxByte[1]);
      bRxProcessed = false;
    }
  }

  yield();
}

bool bTxDone = true;

void TxLoop()
{
  if (!bTxDone)
  {
    // Transmit Result
    if (Serial.availableForWrite()>=2)
    {
      Serial.write((uint8_t)psce.txByte[0]);
      Serial.write((uint8_t)psce.txByte[1]);
      bTxDone = true;
    }
  }

  yield();
}

void loop()
{
  psce.EMU_Blinker(0x40);

  // Process DUT: Input hand-shake
  while(!(psce.txByte[2] & AP_READY))
  {
    psce.rxByte[0] = AP_START;
    Advance_Clock();
  }

  // Receive Input
  while(bRxProcessed) yield();
  bRxProcessed = true;

  // Process DUT: Valid output hand-shake
  do
  {
    psce.rxByte[0] = AP_START;
    Advance_Clock();
  } while(!(psce.txByte[2] & Y_AP_VLD));

  // Transmit Result
  bTxDone = false;
  while(!bTxDone) yield();

  // Process DUT: DONE
  while(!(psce.txByte[2] & AP_DONE))
  {
    psce.rxByte[0] = AP_START;
    Advance_Clock();
  }
}

