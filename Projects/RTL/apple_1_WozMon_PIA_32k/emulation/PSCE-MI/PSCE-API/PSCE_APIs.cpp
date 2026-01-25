//-------------------------------------------------------------------
// Project : Poorman's Standard Co-Emulator(PSCE)
// Filename: PSCE_APIs.cpp
// Purpose : Arduino DUE/Raspberry PI PICO PSCE-APIs
// Author  : GoodKook, goodkook@gmail.com
// History

#include "PSCE_Config.h"
#include "PSCE_APIs.h"

#ifdef DUE_OVERCLOCK
// Direct access to port: Non-Arduino Std. R/W --------------------------
void PSCE::digitalWriteDirect(int pin, boolean val)
{
  if(val) g_APinDescription[pin].pPort -> PIO_SODR = g_APinDescription[pin].ulPin;
  else    g_APinDescription[pin].pPort -> PIO_CODR = g_APinDescription[pin].ulPin;
}

int PSCE::digitalReadDirect(int pin)
{
  return !!(g_APinDescription[pin].pPort -> PIO_PDSR & g_APinDescription[pin].ulPin);
}
#endif  // DUE_OVERCLOCK
//-------------------------------------------------------------------
void PSCE::establishContact()
{
  unsigned char Req = 0, Ack = 0;
  
  while (Serial.available() > 0)   Serial.read();   // Clear RX Buffer

  while (Serial.available() <= 0)   delay(100);     // Wait for Host request
  Req = (unsigned char)Serial.read();

  while(Serial.availableForWrite() <= 0)    delay(100);
  Ack = Req;
  Serial.write(Ack); // Ack
}
//-------------------------------------------------------------------
void PSCE::init()
{
  // Monitoring LED: Starting Init
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWriteDirect(LED_BUILTIN, HIGH);

#ifdef OLED_DISPLAY
  // OLED Display for Debugging --------------------
  disp_init();
  disp_print(0,0,(char*)"PSCE-Model Interface\nBridge the Gap between\n SystemC/C++ TB &\n Hardware/RTL DUT\n\nREADY!");
  delay(5000);
#endif

#ifdef DUE_OVERCLOCK
  // Over-clocking DUE
  // MULA: 18UL for 114MHz, 15UL for 96MHz, 84MHz for 13UL (as in system_sam3xa.c):
  // ex) Initialize PLLA to (18+1)*6=114MHz

//#define SYS_BOARD_PLLAR (CKGR_PLLAR_ONE | CKGR_PLLAR_MULA(13UL) | CKGR_PLLAR_PLLACOUNT(0x3fUL) | CKGR_PLLAR_DIVA(1UL))
//#define SYS_BOARD_PLLAR (CKGR_PLLAR_ONE | CKGR_PLLAR_MULA(15UL) | CKGR_PLLAR_PLLACOUNT(0x3fUL) | CKGR_PLLAR_DIVA(1UL))
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
#endif // DUE_OVERCLOCK

  // Monitoring LED: Wait for Host request
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWriteDirect(LED_BUILTIN, LOW);

  // start serial port at 38400/115200 bps: 
  Serial.begin(UART_BPS);
  while (!Serial)
  {
    // wait for serial port to connect. Needed for native USB port only
    // Monitoring LED: Opening UART Failed
    pinMode(LED_BUILTIN, OUTPUT);
    digitalWriteDirect(LED_BUILTIN, HIGH);
  }
  establishContact();

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
  digitalWriteDirect(LED_BUILTIN, LOW);
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
  //noInterrupts();
  Set_EMU_Address(address);
  Set_EMU_Data(data);
  Clk_EMU();
  //interrupts();
}
// Get output from Emulator -----------------------------------------
uint8_t PSCE::EMU_Output(uint8_t address)
{
  uint8_t ret;
  
  //noInterrupts();
  Set_EMU_Address(address);
  Clk_EMU();
  ret = Get_EMU_Data();
  //interrupts();

  return ret;
}
// Set Inputs for DUT -----------------------------------------------
void PSCE::DUT_Input()
{
  //noInterrupts();
  digitalWriteDirect(PIN_LOAD_EMU, HIGH);
  Clk_EMU();
  digitalWriteDirect(PIN_LOAD_EMU, LOW);
  //Clk_EMU();
  //interrupts();
}
// Get Outputs from DUT ---------------------------------------------
void PSCE::DUT_Output()
{
  //noInterrupts();
  digitalWriteDirect(PIN_GET_EMU, HIGH);
  Clk_EMU();
  digitalWriteDirect(PIN_GET_EMU, LOW);
  //Clk_EMU();
  //interrupts();
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
void PSCE::DUT_ClockCycle_Pos()
{
    DUT_Posedge_Clk();
    DUT_Negedge_Clk();
}
void PSCE::DUT_ClockCycle_Neg()
{
    DUT_Negedge_Clk();
    DUT_Posedge_Clk();
}
void PSCE::DUT_SetInputs(uint8_t nRX)
{
    for(int addr_emu=0; addr_emu<nRX; addr_emu++)
      EMU_Input(addr_emu, rxByte[addr_emu]);
    DUT_Input();
}
void PSCE::DUT_GetOutputs(uint8_t nTX)
{
    DUT_Output();
    for(int addr_emu=0; addr_emu<nTX; addr_emu++)
      txByte[addr_emu] = (uint)EMU_Output((uint8_t)addr_emu);
}

// Receive Emulator/DUT in-vector from HOST ------------------------------
bool PSCE::RxPacket_nb(uint8_t nRX)
{
  if (Serial.available() >= nRX)
  {
    for(int addr_emu=0; addr_emu<nRX; addr_emu++)
    {
      rxByte[addr_emu] = Serial.read();
      EMU_Input(addr_emu, rxByte[addr_emu]);
    }
    DUT_Input();

    return true;
  }
  
  return false;
}
void PSCE::RxPacket(uint8_t nRX, uint8_t CLK_Byte, uint8_t CLK_Bitmap)
{
//  int rxByte[MAX_RX_BYTE];

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
bool PSCE::TxPacket_nb(uint8_t nTX)
{
  if (Serial.availableForWrite() >= nTX)
  {
    DUT_Output();
    for(int addr_emu=0; addr_emu<nTX; addr_emu++)
    {
      txByte[addr_emu] = (uint)EMU_Output((uint8_t)addr_emu);
      //Serial.write(EMU_Output((uint8_t)txByte[addr_emu]));
      Serial.write(EMU_Output((uint8_t)addr_emu));
    }

    return true;
  }

  return false;
}
void PSCE::TxPacket(uint8_t nTX)
{
  while(true)
  {
    if (Serial.availableForWrite() >= nTX)
    {
      DUT_Output();
      for(int addr_emu=0; addr_emu<nTX; addr_emu++)
      {
        txByte[addr_emu] = (uint)EMU_Output((uint8_t)addr_emu);
        //Serial.write(EMU_Output((uint8_t)txByte[addr_emu]));
        Serial.write(EMU_Output((uint8_t)addr_emu));
      }

      return;
    }
  }
}

// Emulation LED Blink ------------------------------------------------
void PSCE::EMU_Blinker(uint16_t Speed)
{
  static bool bOnOff = true;
  static uint16_t counter = 0;
  counter += 1;
  if (counter==Speed)
  {
    counter = 0;
    bOnOff = (bOnOff)? false:true;
    digitalWriteDirect(LED_BUILTIN, bOnOff);
  }
}

#ifdef OLED_DISPLAY
// Display for Debuging ------------------------------------------------
// Define display object: 0.96" OLED Display Controller SSD1306
void PSCE::disp_prepare(void)
{
    u8g2->setFont(u8g2_font_6x10_tf);
    u8g2->setFontRefHeightExtendedText();
    u8g2->setDrawColor(1);
    u8g2->setFontPosTop();
    u8g2->setFontDirection(0);
}

bool PSCE::disp_init()
{
#if defined(ESP32_S3)
  u8g2 = new U8G2_SSD1306_128X64_NONAME_F_HW_I2C(U8G2_R0, U8X8_PIN_NONE, 0, 45);  // Display Reset Pine: NONE, SLK=0, SDA=45
#elif defined(DUE_OVERCLOCK) || defined(DUE_NORMAL)
  u8g2 = new U8G2_SSD1306_128X64_NONAME_F_HW_I2C(U8G2_R0, U8X8_PIN_NONE);   // Display Reset Pine: NONE
  //u8g2 = new U8G2_SH1106_128X64_NONAME_F_HW_I2C(U8G2_R0, U8X8_PIN_NONE);  // Display Reset Pine: NONE
#elif defined(PI_PICO)
  // PICO Software I2C: Rotation(R0), SDA(GPIO28/#34), SCL(GPIO27/#32), Address(0x3C)
  u8g2 = new U8G2_SSD1306_128X64_NONAME_F_SW_I2C(U8G2_R0, /* clock=*/ 27, /* data=*/ 28, /* reset=*/ U8X8_PIN_NONE);
#endif

    u8g2->begin();

    u8g2->clearBuffer();
    u8g2->setBitmapMode(false);  // Solid
    u8g2->drawBitmap(0, 0, SCREEN_WIDTH/8, SCREEN_HEIGHT, noexpn_bmp); // 8-pixels per a byte
    u8g2->sendBuffer();
    delay(2000);

    u8g2->clearBuffer();
    u8g2->setBitmapMode(false);  // Solid
    u8g2->drawBitmap(0, 0, SCREEN_WIDTH/8, SCREEN_HEIGHT, goodkook_bmp); // 8-pixels per a byte
    u8g2->sendBuffer();
    delay(2000);

    disp_prepare();

    return true;
}

void PSCE::disp_print(int16_t x, int16_t y, char* szMsg)
{
    int nIdx = 0;

    u8g2->clearBuffer();

    for (int i=0; i<strlen(szMsg); i++)
    {
        if (szMsg[i]=='\n')
        {
            szMsg[i] = '\0';
            u8g2->drawStr((u8g2_uint_t)x, (u8g2_uint_t)y, (const char*)(szMsg+nIdx));
            nIdx = (i+1);
            y += 10;
        }
    }
    u8g2->drawStr((u8g2_uint_t)x, (u8g2_uint_t)y, (const char*)(szMsg+nIdx));

    u8g2->sendBuffer();
}
#endif  // OLED_DISPLAY
