//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PSCE_APIs.cpp
// Purpose : Arduino DUE PSCE-APIs
// Author  : GoodKook, goodkook@gmail.com

#include "PinMap_TANG_25K.h"
//#include "PinMap_A7_100T.h"
#include "PSCE_APIs.h"

void PSCE::digitalWriteDirect(int pin, boolean val)
{
  if(val) g_APinDescription[pin].pPort -> PIO_SODR = g_APinDescription[pin].ulPin;
  else    g_APinDescription[pin].pPort -> PIO_CODR = g_APinDescription[pin].ulPin;
}

int PSCE::digitalReadDirect(int pin)
{
  return !!(g_APinDescription[pin].pPort -> PIO_PDSR & g_APinDescription[pin].ulPin);
}

//-------------------------------------------------------------------
void PSCE::establishContact()
{
  while (Serial.available() <= 0)
  {
    Serial.print('A');  // send a capital A
    delay(300);
    if (Serial.read()==(int)'A')
      break;
  }
}
//-------------------------------------------------------------------
void PSCE::init()
{
  // Over-clocking DUE
  // MULA: 18UL for 114MHz, 15UL for 96MHz, 84MHz for 13UL (as in system_sam3xa.c):
  // ex) Initialize PLLA to (18+1)*6=114MHz

#define SYS_BOARD_PLLAR (CKGR_PLLAR_ONE | CKGR_PLLAR_MULA(18UL) | CKGR_PLLAR_PLLACOUNT(0x3fUL) | CKGR_PLLAR_DIVA(1UL))
#define SYS_BOARD_MCKR  (PMC_MCKR_PRES_CLK_2 | PMC_MCKR_CSS_PLLA_CLK)

  //Set FWS according to SYS_BOARD_MCKR configuration 
  EFC0->EEFC_FMR = EEFC_FMR_FWS(4); //4 waitstate flash access
  EFC1->EEFC_FMR = EEFC_FMR_FWS(4);

  // Initialize PLLA to 114MHz
  PMC->CKGR_PLLAR = SYS_BOARD_PLLAR;
  while (!(PMC->PMC_SR & PMC_SR_LOCKA)) {}
  PMC->PMC_MCKR = SYS_BOARD_MCKR;
  while (!(PMC->PMC_SR & PMC_SR_MCKRDY)) {} 

  SystemCoreClockUpdate();  // !!!!! for UART !!!!!

  // start serial port at 38400/115200 bps:
  Serial.begin(115200);
  while (!Serial)
  {
    ;  // wait for serial port to connect. Needed for native USB port only
  }
  establishContact();  // send a byte to establish contact until receiver responds

  // Set digital pins to output connecting FPGA's INPUT
  pinMode(PIN_GET_EMU  , OUTPUT);   digitalWriteDirect(PIN_GET_EMU  , LOW);
  pinMode(PIN_LOAD_EMU , OUTPUT);   digitalWriteDirect(PIN_LOAD_EMU , LOW);
  pinMode(PIN_CLK_EMU  , OUTPUT);   digitalWriteDirect(PIN_CLK_EMU  , LOW);
  pinMode(PIN_CLK_DUT  , OUTPUT);   digitalWriteDirect(PIN_CLK_DUT  , LOW);
  pinMode(PIN_IO_REQ   , INPUT);

  pinMode(PIN_DIN_EMU_0, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_0, LOW);
  pinMode(PIN_DIN_EMU_1, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_1, LOW);
  pinMode(PIN_DIN_EMU_2, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_2, LOW);
  pinMode(PIN_DIN_EMU_3, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_3, LOW);
  pinMode(PIN_DIN_EMU_4, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_4, LOW);
  pinMode(PIN_DIN_EMU_5, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_5, LOW);
  pinMode(PIN_DIN_EMU_6, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_6, LOW);
  pinMode(PIN_DIN_EMU_7, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_7, LOW);
  
  pinMode(PIN_ADDR_EMU_0, OUTPUT);  digitalWriteDirect(PIN_ADDR_EMU_0, LOW);
  pinMode(PIN_ADDR_EMU_1, OUTPUT);  digitalWriteDirect(PIN_ADDR_EMU_1, LOW);
  pinMode(PIN_ADDR_EMU_2, OUTPUT);  digitalWriteDirect(PIN_ADDR_EMU_2, LOW);

  // Set digital pins to input connecting FPGA's OUTPUT
  pinMode(PIN_DOUT_EMU_0, INPUT);
  pinMode(PIN_DOUT_EMU_1, INPUT);
  pinMode(PIN_DOUT_EMU_2, INPUT);
  pinMode(PIN_DOUT_EMU_3, INPUT);
  pinMode(PIN_DOUT_EMU_4, INPUT);
  pinMode(PIN_DOUT_EMU_5, INPUT);
  pinMode(PIN_DOUT_EMU_6, INPUT);
  pinMode(PIN_DOUT_EMU_7, INPUT);

  // Monitoring LED
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWriteDirect(LED_BUILTIN, HIGH);
}

// Write Address to Emulation wrapper -------------------------------
void PSCE::Set_EMU_Address(uint8_t address)
{
  // Address
  digitalWriteDirect(PIN_ADDR_EMU_0, address & 0x01);
  digitalWriteDirect(PIN_ADDR_EMU_1, address & 0x02);
  digitalWriteDirect(PIN_ADDR_EMU_2, address & 0x04);
}
// Write Data to Emulation wrapper ----------------------------------
void PSCE::Set_EMU_Data(uint8_t data)
{
  // Data
  digitalWriteDirect(PIN_DIN_EMU_0, data & 0x01);
  digitalWriteDirect(PIN_DIN_EMU_1, data & 0x02);
  digitalWriteDirect(PIN_DIN_EMU_2, data & 0x04);
  digitalWriteDirect(PIN_DIN_EMU_3, data & 0x08);
  digitalWriteDirect(PIN_DIN_EMU_4, data & 0x10);
  digitalWriteDirect(PIN_DIN_EMU_5, data & 0x20);
  digitalWriteDirect(PIN_DIN_EMU_6, data & 0x40);
  digitalWriteDirect(PIN_DIN_EMU_7, data & 0x80);
}
// Read Data from Emulation wrapper ---------------------------------
uint8_t PSCE::Get_EMU_Data()
{
  uint8_t ret;
  ret = (digitalReadDirect(PIN_DOUT_EMU_0)? 0x01 : 0x00) |
        (digitalReadDirect(PIN_DOUT_EMU_1)? 0x02 : 0x00) |
        (digitalReadDirect(PIN_DOUT_EMU_2)? 0x04 : 0x00) |
        (digitalReadDirect(PIN_DOUT_EMU_3)? 0x08 : 0x00) |
        (digitalReadDirect(PIN_DOUT_EMU_4)? 0x10 : 0x00) |
        (digitalReadDirect(PIN_DOUT_EMU_5)? 0x20 : 0x00) |
        (digitalReadDirect(PIN_DOUT_EMU_6)? 0x40 : 0x00) |
        (digitalReadDirect(PIN_DOUT_EMU_7)? 0x80 : 0x00);
  return ret;
}
// Clocking for Emulation wrapper -----------------------------------
void PSCE::Clk_EMU()
{
  // Set
  digitalWriteDirect(PIN_CLK_EMU, HIGH);
  delayMicroseconds(clk_emu_delay);
  digitalWriteDirect(PIN_CLK_EMU, LOW);
  delayMicroseconds(clk_emu_delay);
}
// Set Inputs for Emulator ------------------------------------------
void PSCE::EMU_Input(uint8_t address, uint8_t data)
{
  Set_EMU_Address(address);
  Set_EMU_Data(data);
  Clk_EMU();
}
// Get output from Emulator -----------------------------------------
uint8_t PSCE::EMU_Output(uint8_t address)
{
  uint8_t ret;
  
  Set_EMU_Address(address);
  Clk_EMU();
  ret = Get_EMU_Data();

  return ret;
}
// Set Inputs for DUT -----------------------------------------------
void PSCE::DUT_Input()
{
  digitalWriteDirect(PIN_LOAD_EMU, HIGH);
  Clk_EMU();
  digitalWriteDirect(PIN_LOAD_EMU, LOW);
  //Clk_EMU();
}
// Get Outputs from DUT ---------------------------------------------
void PSCE::DUT_Output()
{
  digitalWriteDirect(PIN_GET_EMU, HIGH);
  Clk_EMU();
  digitalWriteDirect(PIN_GET_EMU, LOW);
  //Clk_EMU();
}
// Clocking DUT -----------------------------------------------------
void PSCE::DUT_Posedge_Clk()
{
  digitalWriteDirect(PIN_CLK_DUT, HIGH);
  delayMicroseconds(clk_dut_delay);
}
void PSCE::DUT_Negedge_Clk()
{
  digitalWriteDirect(PIN_CLK_DUT, LOW);
  delayMicroseconds(clk_dut_delay);
}

// Receive Emulator/DUT in-vector from HOST ------------------------------
void PSCE::RxPacket(uint8_t nRX, uint8_t CLK_Byte, uint8_t CLK_Bitmap)
{
  int rxByte[MAX_RX_BYTE];

  while(true)
  {
    if (Serial.available() >= nRX)
    {
      for(int addr_emu=0; addr_emu<nRX; addr_emu++)
      {
        rxByte[addr_emu] = Serial.read();
        EMU_Input(addr_emu, rxByte[addr_emu]);
      }
      DUT_Input();

      if (!CLK_Bitmap)      // Internal Clock
      {
        DUT_Posedge_Clk();
        DUT_Negedge_Clk();
      }
      else                  // Ext. CLK's bit-pos
      {
        if (rxByte[CLK_Byte] & CLK_Bitmap)
          DUT_Posedge_Clk();
        else
          DUT_Negedge_Clk();
      }

      return;
    }
  }
}

// Send Emulator/DUT out-vector to HOST ------------------------------
void PSCE::TxPacket(uint8_t nTX)
{
  while(true)
  {
    if (Serial.availableForWrite() >= nTX)
    {
      DUT_Output();
      for(int addr_emu=0; addr_emu<nTX; addr_emu++)
        Serial.write(EMU_Output((uint8_t)addr_emu));

      return;
    }
  }
}

// Emulation LED Blink ------------------------------------------------
void PSCE::EMU_Blinker(uint8_t Speed)
{
  static uint8_t counter;
  counter += 1;
  digitalWriteDirect(LED_BUILTIN, (counter & Speed)? HIGH:LOW);
}
