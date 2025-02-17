/*
  CPU_6502's PE SystemC Co-Emulation (FPGA)
  Stand-Alone mode
*/
#if defined(__GNUC__)
#pragma GCC optimize ("Ofast")
#pragma GCC optimize ("inline-functions")
#endif

inline void digitalWriteDirect(int pin, boolean val)
{
  if(val) g_APinDescription[pin].pPort -> PIO_SODR = g_APinDescription[pin].ulPin;
  else    g_APinDescription[pin].pPort -> PIO_CODR = g_APinDescription[pin].ulPin;
}

inline int digitalReadDirect(int pin)
{
  return !!(g_APinDescription[pin].pPort -> PIO_PDSR & g_APinDescription[pin].ulPin);
}

//#define ARTY_A7_100T_BOARD
#define SIPEED_TANG_25K_BOARD

//#define PRINT_MEMORY_RW
#define DELAY_MICROS    0

#ifdef ARTY_A7_100T_BOARD
//--------------------------------------------------------------------
// FPGA Emulator Pin-Map for Digilent's A7-100T(Xilinx)
//--------------------------------------------------------------------
#define PIN_GET_EMU     26
#define PIN_LOAD_EMU    28
#define PIN_CLK_EMU     29
#define PIN_CLK_DUT     24

#define PIN_ADDR_EMU_0  27
#define PIN_ADDR_EMU_1  25
#define PIN_ADDR_EMU_2  23

#define PIN_DIN_EMU_0   36
#define PIN_DIN_EMU_1   34
#define PIN_DIN_EMU_2   32
#define PIN_DIN_EMU_3   30
#define PIN_DIN_EMU_4   37
#define PIN_DIN_EMU_5   35
#define PIN_DIN_EMU_6   33
#define PIN_DIN_EMU_7   31

#define PIN_DOUT_EMU_0  44
#define PIN_DOUT_EMU_1  42
#define PIN_DOUT_EMU_2  40
#define PIN_DOUT_EMU_3  38
#define PIN_DOUT_EMU_4  45
#define PIN_DOUT_EMU_5  43
#define PIN_DOUT_EMU_6  41
#define PIN_DOUT_EMU_7  39

#endif // ARTY_A7_100T_BOARD

#ifdef SIPEED_TANG_25K_BOARD

//#define PIN_IO_REQ      37  // J6-12|JC-7
#define PIN_LOAD_EMU    36  // J6-11|JC-1
#define PIN_GET_EMU     35  // J6-10|JC-8
#define PIN_ADDR_EMU_2  34  // J6-9 |JC-2
#define PIN_ADDR_EMU_1  33  // J6-8 |JC-9
#define PIN_ADDR_EMU_0  32  // J6-7 |JC-3
#define PIN_CLK_EMU     31  // J6-6 |JC-10
#define PIN_CLK_DUT     30  // J6-5 |JC-4

#define PIN_DIN_EMU_7   45  // J5-12|JB-7
#define PIN_DIN_EMU_6   44  // J5-11|JB-1
#define PIN_DIN_EMU_5   43  // J5-10|JB-8
#define PIN_DIN_EMU_4   42  // J5-9 |JB-2
#define PIN_DIN_EMU_3   41  // J5-8 |JB-9
#define PIN_DIN_EMU_2   40  // J5-7 |JB-3
#define PIN_DIN_EMU_1   39  // J5-6 |JB-10
#define PIN_DIN_EMU_0   38  // J5-5 |JB-4

#define PIN_DOUT_EMU_7  53  // J4-12|JA-7
#define PIN_DOUT_EMU_6  52  // J4-11|JA-1
#define PIN_DOUT_EMU_5  51  // J4-10|JA-8
#define PIN_DOUT_EMU_4  50  // J4-9 |JA-2
#define PIN_DOUT_EMU_3  49  // J4-8 |JA-9
#define PIN_DOUT_EMU_2  48  // J4-7 |JA-3
#define PIN_DOUT_EMU_1  47  // J4-6 |JA-10
#define PIN_DOUT_EMU_0  46  // J4-5 |JA-4

#endif  // SIPEED_TANG_25K_BOARD

//--------------------------------------------------------------------
void establishContact()
{
  while (Serial.available() <= 0)
  {
    Serial.print('A');  // send a capital A
    delay(300);
    if (Serial.read()==(int)'A')
      break;
  }
}
//------------------------------------------------------------------------------
void setup()
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

  pinMode(PIN_DIN_EMU_0, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_0, LOW);
  pinMode(PIN_DIN_EMU_1, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_1, LOW);
  pinMode(PIN_DIN_EMU_2, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_2, LOW);
  pinMode(PIN_DIN_EMU_3, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_3, LOW);
  pinMode(PIN_DIN_EMU_4, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_4, LOW);
  pinMode(PIN_DIN_EMU_5, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_5, LOW);
  pinMode(PIN_DIN_EMU_6, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_6, LOW);
  pinMode(PIN_DIN_EMU_7, OUTPUT);   digitalWriteDirect(PIN_DIN_EMU_7, LOW);
  
  pinMode(PIN_ADDR_EMU_0, OUTPUT);      digitalWriteDirect(PIN_ADDR_EMU_0, LOW);
  pinMode(PIN_ADDR_EMU_1, OUTPUT);      digitalWriteDirect(PIN_ADDR_EMU_1, LOW);
  pinMode(PIN_ADDR_EMU_2, OUTPUT);      digitalWriteDirect(PIN_ADDR_EMU_2, LOW);

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

// Co-Emulation interface ------------------------------------------------------------
#define N_RX  2 // xxxx|RDY|NMI|IRQ|reset, DI
#define N_TX  4 // AB[15:8], AB[7:0], DO, xxxxxxx|WE

uint8_t rxBuf[N_RX], txBuf[N_TX];

// Write Address to Emulation wrapper
inline void Set_EMU_Address(uint8_t address)
{
  // Address
  digitalWriteDirect(PIN_ADDR_EMU_0, address & 0x01);
  digitalWriteDirect(PIN_ADDR_EMU_1, address & 0x02);
  digitalWriteDirect(PIN_ADDR_EMU_2, address & 0x04);
}
// Write Data to Emulation wrapper
inline void Set_EMU_Data(uint8_t data)
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
// Read Data from Emulation wrapper
inline uint8_t Get_EMU_Data()
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
// Clocking for Emulation wrapper
inline void Clk_EMU()
{
  // Set
  digitalWriteDirect(PIN_CLK_EMU, HIGH);
  delayMicroseconds(DELAY_MICROS);
  digitalWriteDirect(PIN_CLK_EMU, LOW);
  delayMicroseconds(DELAY_MICROS);
}
// Set Inputs for Emulator
inline void EMU_Input(uint8_t address, uint8_t data)
{
  Set_EMU_Address(address);
  Set_EMU_Data(data);
  Clk_EMU();
}
// Get output from Emulator
inline uint8_t EMU_Output(uint8_t address)
{
  uint8_t ret;
  
  Set_EMU_Address(address);
  Clk_EMU();
  ret = Get_EMU_Data();

  return ret;
}
// Set Inputs for DUT
inline void DUT_Input()
{
  digitalWriteDirect(PIN_LOAD_EMU, HIGH);
  Clk_EMU();
  digitalWriteDirect(PIN_LOAD_EMU, LOW);
  Clk_EMU();
}
// Get Outputs from DUT
inline void DUT_Output()
{
  digitalWriteDirect(PIN_GET_EMU, HIGH);
  Clk_EMU();
  digitalWriteDirect(PIN_GET_EMU, LOW);
  Clk_EMU();
}
// Clocking DUT
inline void DUT_Posedge_Clk()
{
  digitalWriteDirect(PIN_CLK_DUT, HIGH);
  delayMicroseconds(DELAY_MICROS);
}
inline void DUT_Negedge_Clk()
{
  digitalWriteDirect(PIN_CLK_DUT, LOW);
  delayMicroseconds(DELAY_MICROS);
}

// Transaction between Emulator driver and FPGA wrapper ------------------------------
inline void RxPacket()
{
  EMU_Input(0, rxBuf[0]);   // xxx|clk|RDY|NMI|IRQ|reset
  EMU_Input(1, rxBuf[1]);   // DI[7:0]
  DUT_Input();              // Set input vectors to DUT

  if (rxBuf[0] & 0x10)  DUT_Posedge_Clk();  // DUT's Posedge-Clock
  else                  DUT_Negedge_Clk();  // DUT's Negedge-Clock

  return;
}

inline void TxPacket()
{
  DUT_Output(); // Capture DUT's output

  txBuf[0] = EMU_Output(0); // AB[15:8]
  txBuf[1] = EMU_Output(1); // AB[7:0]
  txBuf[2] = EMU_Output(2); // DO[7:0]
  txBuf[3] = EMU_Output(3); // xxxxxxx|WE

  return;
}

// DUT Specific defs. ----------------------------------------------
#define CLK_HI  0x10
#define CLK_LO  0x00
#define RDY_HI  0x08
#define MNI_HI  0x04
#define IRQ_HI  0x02
#define RESET   0x01

#define PIA_KBD_REG 0xD010
#define PIA_KBD_CTL 0xD011
#define PIA_DSP_REG 0xD012
#define PIA_DSP_CTL 0xD013

#define BIN_FILE_LOAD 0xD018

volatile uint8_t Memory[65536]; // Well, 6502 has 64Kbyte of memory space

uint16_t  Mem_Addr[2], memIn_Addr;
uint8_t   counter, memOut, memIn_Data, rxByte;
bool      bMemory_WE = false, bKeyboard = false;

void loop()
{
#include "wozmon.bin.h" // Apple-1 Wozniak's System Monitor

  Machine_Clock_Rise(RESET);
  Machine_Clock_Fall(RESET);
  Machine_Clock_Rise(RESET);
  Machine_Clock_Fall(RESET);
  Machine_Clock_Rise(RESET);
  Machine_Clock_Fall(RESET);

  while(true)
  {
    Machine_Clock_Rise(0);
    Machine_Clock_Fall(0);
  }
}

inline void Machine_Clock_Rise(uint8_t Ctrl)
{
  // Monitoring -------------------------------------------------
  counter += 1;
  digitalWriteDirect(LED_BUILTIN, (counter & 0x80)? HIGH:LOW);

  // Defered Write to Memory --------------------------------------
  if (bMemory_WE)
  {
    Memory[memIn_Addr] = memIn_Data;
    Print_Memory_RW(memIn_Addr, memIn_Data, false, false, true);
    if (memIn_Addr==PIA_DSP_REG)
    {
      while(true)
      {
        if (Serial.availableForWrite() >= 1)
        {
          Serial.write((int)(memIn_Data & 0x7F));
          Memory[PIA_DSP_REG] = memIn_Data & 0x7F;  // Clear Display
          break;
        }
      }
    }
    bMemory_WE = false;
  }

  // Check if keyboard input --------------------------------------
  if (Serial.available() >= 1)
  {
    rxByte = (uint8_t)Serial.read();
    bKeyboard = true;
  }

  // Read memory ----------------------------------------------------
  if (Mem_Addr[1]==PIA_KBD_REG) // CPU accessing Keyboard peripheral
  {
    Memory[PIA_KBD_REG] = (rxByte | 0x80);              // Valid input
    Memory[PIA_KBD_CTL] = (Memory[PIA_KBD_CTL] & 0x3F);	// Keyboard empty
    bKeyboard = false;
  }
  else if (Mem_Addr[1]==PIA_KBD_CTL)  // CPU accessing display peripheral
  {
    if (bKeyboard)
      Memory[PIA_KBD_CTL] = (Memory[PIA_KBD_CTL] | 0x80);	// Keyboard ready
  }
  else if (Mem_Addr[1]==BIN_FILE_LOAD)
  {
    Memory[BIN_FILE_LOAD] = Download_CC65_Bin();
  }

  memOut = Memory[Mem_Addr[1]];  // DI to CPU
  Print_Memory_RW(Mem_Addr[1], memOut, false, false, false);

  // Pose-edge DUT clock -----------------------------------------------
  rxBuf[0] = CLK_HI|RDY_HI|Ctrl;
  rxBuf[1] = memOut;  // DI to CPU

  RxPacket();
  TxPacket();

  Mem_Addr[1] = Mem_Addr[0];
  Mem_Addr[0] = (uint16_t)txBuf[0]<<8|(uint16_t)txBuf[1];
  Print_Memory_RW(Mem_Addr[0], txBuf[2], true, false, false);

  if (txBuf[3] & 0x01)  // Write Enable?
  {
    bMemory_WE = true;  // for deffered write
    memIn_Data = txBuf[2];
    memIn_Addr = Mem_Addr[0];
  }
}

inline void Machine_Clock_Fall(uint8_t Ctrl)
{
  // Read memory ----------------------------------------------------
  memOut = Memory[Mem_Addr[1]];  // DI to CPU

  // Neg-edge DUT clock -----------------------------------------------
  rxBuf[0] = CLK_LO|RDY_HI|Ctrl;
  rxBuf[1] = memOut;  // DI to CPU

  RxPacket();
  TxPacket();

  Mem_Addr[0] = (uint16_t)txBuf[0]<<8|(uint16_t)txBuf[1];
  memIn_Data = txBuf[2];
  memIn_Addr = Mem_Addr[0];
  Print_Memory_RW(Mem_Addr[0], txBuf[2], false, true, false);
}

// Monitor Memory access for Debugging purpose -----------------------------------------
void Print_Memory_RW(uint16_t Address, uint8_t Data, bool bRise, bool bFall, bool bWr)
{
#ifndef PRINT_MEMORY_RW
  return;
#endif

  int txByte;
  char szBuff[16];

  if (bRise)
    sprintf(szBuff, "^%04X]%02X ", Address, Data);
  else if (bFall)
    sprintf(szBuff, "v%04X]%02X ", Address, Data);
  else
    sprintf(szBuff, "*%04X]%02X ", Address, Data);
  if (bWr)
    szBuff[5] = '<';
  else
    szBuff[5] = '>';

  while(true)
  {
    if (Serial.availableForWrite() >= strlen(szBuff))
    {
      for(int i=0; i<strlen(szBuff); i++)
      {
        txByte = (int)szBuff[i];
        Serial.write(txByte);
      }
      break;
    }
  }
}
//--------------------------------------------------------------------
uint8_t Download_CC65_Bin()
{
  uint16_t nAddress = 0, nLength = 0;
  uint8_t binBuff[4];

  // Read first 4 bytes for Start Address & Length
  binBuff[0] = GetEchoByte();
  binBuff[1] = GetEchoByte();
  binBuff[2] = GetEchoByte();
  binBuff[3] = GetEchoByte();

  nAddress = (unsigned int)binBuff[1] * 256 + (unsigned int)binBuff[0];
  nLength  = (unsigned int)binBuff[3] * 256 + (unsigned int)binBuff[2];

  for (int i=4; i<nLength; i++)
  {
    Memory[nAddress] = GetEchoByte();
    nAddress++;
  }

  // Set Reset vector
  Memory[0] = 0x20;  // JSR  $StartUp
  Memory[1] = binBuff[0];
  Memory[2] = binBuff[1];
  Memory[3] = 0x20;  // JSR  $FF00
  Memory[4] = 0x00;
  Memory[5] = 0xFF;

  return 1;
}

uint8_t GetEchoByte()
{
  uint8_t rxByte;

  // Wait for something arrived on serial port
  while(Serial.available() <= 0)          delay(1);
  rxByte = (uint8_t)Serial.read();  // Read
  // Wait for something to send via serial port
  while(Serial.availableForWrite() <= 0)  delay(1);
  Serial.write((int)rxByte);        // Echo

  return rxByte;
}
