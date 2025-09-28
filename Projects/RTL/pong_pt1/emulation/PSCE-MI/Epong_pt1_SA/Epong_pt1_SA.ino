/*
  Co-Emulation Modeling Interface
*/
// Standard Emulator ------------------------------------------------
#include "PSCE_Config.h"

//#include "TM1637Display.h"  // 7-Seg. Display

// Co-Emulation interface -------------------------------------------
// Followings are DUT specific defs
#define DELAY_MICROS    1

// Emulation Transactor -------------------------------
// DUT's input bitmap             DUT's output bitmap
//      +-----+-+-+-+-+-+             +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|         [0] |7 6 5 4|3|2|1|0|
//      +-----+-+-+-+-+-+             +-----+-+-+-+-+-+
//             | | | | |                       | | | |
//             | | | | +---down                | | | +---rgb
//             | | | +---up                    | | +---vsync
//             | | +---enable                  | +---hsync
//             | +---reset                     +---p_tick
//             +---clk
//

#define N_RX            1   // Number of byte to DUT's inputs
#define N_TX            1   // Number of byte from DUT's output

#define DUT_CLK_BYTE    0
//#define DUT_CLK_BITMAP  0x10  // Clock: METHOD emulation
#define DUT_CLK_BITMAP  0x00  // Clock: THREAD emulation

#define C_RESET   0x08
#define C_ENABLE  0x04

#define C_P_TICK  0x08
#define C_HSYNC   0x04
#define C_VSYNC   0x02
#define C_RGB     0x01

PSCE psce(DELAY_MICROS);

void setup()
{
  psce.init();  // BPS=115200

  // Resetting DUT
  psce.rxByte[0] = C_RESET | C_ENABLE;
  psce.DUT_SetInputs(1);
  for (int i=0; i<10; i++)
    psce.DUT_ClockCycle_Pos();

  // Start DUT
  psce.rxByte[0] = C_ENABLE;
  psce.DUT_SetInputs(1);
  for (int i=0; i<10; i++)
    psce.DUT_ClockCycle_Pos();
}

uint8_t PixelBuffer[2048];

void loop()
{
  uint8_t   _rgb;
  int       addrBuff = 0;
  
  psce.EMU_Blinker(0x01);   // Blinker speed
  psce.RxPacket(N_RX, DUT_CLK_BYTE, DUT_CLK_BITMAP);  // CLK position

  // Skip VSYNC
  psce.txByte[0] = 0;
  do
  {
    psce.DUT_ClockCycle_Pos();
    psce.DUT_GetOutputs(1);
  } while(psce.txByte[0] & C_VSYNC);

  while (true)
  {
    PixelBuffer[addrBuff] = 0;

    for (int n_pack=0; n_pack<8; n_pack++)
    {
      // Wait for P_TICK (H)
      while (!(psce.txByte[0] & C_P_TICK))
      {
        psce.DUT_ClockCycle_Pos();
        psce.DUT_GetOutputs(1);

        if (psce.txByte[0] & C_HSYNC) // Check for HSYNC
        {
          do
          {
            psce.DUT_ClockCycle_Pos();
            psce.DUT_GetOutputs(1);
          }while (psce.txByte[0] & C_HSYNC);  // Skip HSYNC
          n_pack = 0;
          PixelBuffer[addrBuff] = 0;
        }
        else if (psce.txByte[0] & C_VSYNC)  // Check for VSYNC
        {
          TransmitPixelBuffer();  // Send Pixel Buffer to SA-Host
          return;
        }
      }
      // Wait for P_TICK (L)
      while (psce.txByte[0] & C_P_TICK)
      {
        psce.DUT_ClockCycle_Pos();
        psce.DUT_GetOutputs(1);
      }
      // Get Pixel
      _rgb = (psce.txByte[0] & C_RGB)? 0x01:0x00;
      PixelBuffer[addrBuff] |= (_rgb<<n_pack);
    }
    addrBuff++;
  }
}

// Send Pixel Buffer to SA-Host
void TransmitPixelBuffer()
{
  int addrBuff = 0;
  while(addrBuff<1024)
  {
    if (Serial.availableForWrite() >= 1)
    Serial.write(PixelBuffer[addrBuff++]);
  }
}
