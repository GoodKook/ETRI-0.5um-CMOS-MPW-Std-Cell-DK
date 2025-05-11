//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PSCE_APIs.h
// Purpose : Arduino DUE PSCE-APIs
// Author  : GoodKook, goodkook@gmail.com

#ifndef PSCE_APIS_H_
#define PSCE_APIS_H_

#include <Arduino.h>

#if defined(__GNUC__)
#pragma GCC optimize ("Ofast")
#pragma GCC optimize ("inline-functions")
#endif

#define MAX_RX_BYTE 8 // rxByte[]

class PSCE
{
public:
  PSCE(uint32_t clk_delay)
  {
    clk_dut_delay = clk_delay;
    clk_emu_delay = clk_delay;
  }; // Constructor
  // Arduino DUE
  void    establishContact();
  void    init();   // Overclocked to 114Mhz, UART Baudrate to 115200
  void    digitalWriteDirect(int pin, boolean val);
  int     digitalReadDirect(int pin);

  // Test-vectors to/from Emulator: Arduino DUE Interface
  void    Set_EMU_Address(uint8_t address);
  void    Set_EMU_Data(uint8_t data);
  uint8_t Get_EMU_Data();
  void    Clk_EMU();
  void    EMU_Input(uint8_t address, uint8_t data);
  uint8_t EMU_Output(uint8_t address);
  // Transact between DUT and Emulation wrapper
  void    DUT_Input();
  void    DUT_Output();
  void    DUT_Posedge_Clk();
  void    DUT_Negedge_Clk();

  void    RxPacket(uint8_t nRX, uint8_t CLK_Byte, uint8_t CLK_Bitmap);
  void    TxPacket(uint8_t nTX);
  void    EMU_Blinker(uint8_t Speed);
  
private:
  uint32_t  clk_dut_delay;
  uint32_t  clk_emu_delay;
};

#endif
