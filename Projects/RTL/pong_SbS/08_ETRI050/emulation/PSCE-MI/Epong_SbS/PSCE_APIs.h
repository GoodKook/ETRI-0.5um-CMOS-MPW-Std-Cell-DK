//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PSCE_APIs.h
// Purpose : Arduino DUE/Raspberry PI PICO PSCE-APIs
// Author  : GoodKook, goodkook@gmail.com

#ifndef _PSCE_APIS_H_
#define _PSCE_APIS_H_

//--------------------------------------------------------------------
// DUE Board: Overclocking & Non-Arduino Std Port R/W
#ifndef DUE_OVERCLOCK
#define digitalWriteDirect  digitalWrite
#define digitalReadDirect   digitalRead
#endif
//--------------------------------------------------------------------

#include <Arduino.h>
#ifdef OLED_DISPLAY
#include <Wire.h>
#include <U8g2lib.h>        // OLED Display Libraries
#define SCREEN_WIDTH 128    // OLED display width, in pixels
#define SCREEN_HEIGHT 64    // OLED display height, in pixels
#include "PSCE_Splash.h"    // PSCE-MI Splash image
#endif

#if defined(__GNUC__)
#pragma GCC optimize ("Ofast")
#pragma GCC optimize ("inline-functions")
#endif

#define MAX_RX_BYTE 8 // rxByte[]
#define MAX_TX_BYTE 8 // txByte[]

class PSCE
{
public:
  PSCE(uint32_t clk_delay)
  {
    clk_dut_delay = clk_delay;
    clk_emu_delay = clk_delay;
  }; // Constructor

  void    establishContact(); // with SystemC TB
  void    init();   // Overclocked to 114Mhz, UART Baudrate to 115200

#ifdef DUE_OVERCLOCK
  void    digitalWriteDirect(int pin, boolean val);
  int     digitalReadDirect(int pin);
#endif

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
  void    DUT_ClockCycle_Pos();
  void    DUT_ClockCycle_Neg();
  void    DUT_SetInputs(uint8_t nRX);
  void    DUT_GetOutputs(uint8_t nTX);

  void    RxPacket(uint8_t nRX, uint8_t CLK_Byte, uint8_t CLK_Bitmap);
  bool    RxPacket_nb(uint8_t nRX);
  void    TxPacket(uint8_t nTX);
  bool    TxPacket_nb(uint8_t nTX);
  
  void    EMU_Blinker(uint8_t Speed);

  uint rxByte[MAX_RX_BYTE];
  uint txByte[MAX_TX_BYTE];

//private:
  uint32_t  clk_dut_delay;
  uint32_t  clk_emu_delay;

#ifdef OLED_DISPLAY
  /// Display for Debuging ------------------------------------------------
  // Define display object: 0.96" OLED Display Controller SSD1306
#if defined(ESP32_S3)
  U8G2_SSD1306_128X64_NONAME_F_HW_I2C* u8g2;
#elif defined(DUE_OVERCLOCK) || defined(DUE_NORMAL)
  // DUE Default I2C: Rotation(R0), SDA(20), SCL(21), Address(0x3C)
  U8G2_SSD1306_128X64_NONAME_F_HW_I2C*  u8g2;
  //U8G2_SH1106_128X64_NONAME_F_HW_I2C* u8g2;
#elif defined(PI_PICO)
  // PICO Software I2C: Rotation(R0), SDA(GPIO28/#34), SCL(GPIO27/#32), Address(0x3C)
  U8G2_SSD1306_128X64_NONAME_F_SW_I2C*  u8g2;
#endif

  void disp_prepare(void);
  bool disp_init();
  void disp_print(int16_t x, int16_t y, char* szMsg);
#endif  // OLED_DIAPLAY
};

#endif
