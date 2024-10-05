/*
  'ALU_wrapper' Co-Emulation interface

  Emulator Pin Mapping:
    Arduino DUE & Arty A7-100 & Verilog RTL
  --------------- ----------  -----------
  SAM3X8E/Digital Pmod /FPGA  ALU_wrapper
  --------------- ----------  -----------
   PB26/22      JD-4 /F3    -
   PA14/23      JD-10/G2    -
   PA15/24      JD-3 /F4    -
   PD0 /25      JD-9 /H2    -
   PD1 /26      JD-2 /D3    -
   PD2 /27      JD-8 /D2    -
   PD3 /28      JD-1 /D4    -
   PD6 /29      JD-7 /E2    clk

   PD9 /30      JC-4 /V11   ACC_o[7]
   PA7 /31      JC-10/U13   -
   PD10/32      JC-3 /V10   ACC_o[6]
   PC1 /33      JC-9 /T13   -
   PC2 /34      JC-2 /V12   ACC_o[5]
   PC3 /35      JC-8 /V14   -
   PC4 /36      JC-1 /U12   ACC_o[4]
   PC5 /37      JC-7 /U14   Done_o

   PC6 /38      JB-4 /C15   ABCmd_i[7]
   PC7 /39      JB-10/J15   ACC_o[3]
   PC8 /40      JB-3 /D15   ABCmd_i[6]
   PC9 /41      JB-9 /K15   ACC_o[2]
   PA19/42      JB-2 /E16   ABCmd_i[5]
   PA20/43      JB-8 /J18   ACC_o[1]
   PC19/44      JB-1 /E15   ABCmd_i[4]
   PC18/45      JB-7 /J17   ACC_o[0]

   PC17/46      JA-4 /D12   LoadCmd_i
   PC16/47      JA-10/K16   ABCmd_i[3]
   PC15/48      JA-3 /A11   LoadB_i
   PC14/49      JA-9 /A18   ABCmd_i[2]
   PC13/50      JA-2 /B11   LoadA_i
   PC12/51      JA-8 /B18   ABCmd_i[1]
   PB21/52      JA-1 /G13   reset
   PB14/53      JA-7 /D13   ABCmd_i[0]
*/

#define DPIN_CLK         29
#define DPIN_RESET       52

#define DPIN_LoadCmd_i   46
#define DPIN_LoadB_i     48
#define DPIN_LoadA_i     50

#define DPIN_ABCmd_i_7   38
#define DPIN_ABCmd_i_6   40
#define DPIN_ABCmd_i_5   42
#define DPIN_ABCmd_i_4   44
#define DPIN_ABCmd_i_3   47
#define DPIN_ABCmd_i_2   49
#define DPIN_ABCmd_i_1   51
#define DPIN_ABCmd_i_0   53

#define DPIN_ACC_o_7     30
#define DPIN_ACC_o_6     32
#define DPIN_ACC_o_5     34
#define DPIN_ACC_o_4     36
#define DPIN_ACC_o_3     39
#define DPIN_ACC_o_2     41
#define DPIN_ACC_o_1     43
#define DPIN_ACC_o_0     45
#define DPIN_Done_o      37

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
//---------------------------------------------------------------------
void setup()
{
  // start serial port at 9600 bps:
  Serial.begin(9600);
  while (!Serial)
  {
    ;  // wait for serial port to connect. Needed for native USB port only
  }
  establishContact();  // send a byte to establish contact until receiver responds

  // Set all Arduino's digital pins as INPUT mode
  for (uint32_t dPins = 22; dPins < 54; dPins++)
    pinMode( dPins, INPUT);

  // Set Arduino's digital pins to output mode
  //    for DUT's input ports
  pinMode(DPIN_CLK,       OUTPUT);
  pinMode(DPIN_RESET,     OUTPUT);
  pinMode(DPIN_LoadCmd_i, OUTPUT);
  pinMode(DPIN_LoadA_i,   OUTPUT);
  pinMode(DPIN_LoadB_i,   OUTPUT);
  pinMode(DPIN_ABCmd_i_0, OUTPUT);
  pinMode(DPIN_ABCmd_i_1, OUTPUT);
  pinMode(DPIN_ABCmd_i_2, OUTPUT);
  pinMode(DPIN_ABCmd_i_3, OUTPUT);
  pinMode(DPIN_ABCmd_i_4, OUTPUT);
  pinMode(DPIN_ABCmd_i_5, OUTPUT);
  pinMode(DPIN_ABCmd_i_6, OUTPUT);
  pinMode(DPIN_ABCmd_i_7, OUTPUT);

  // Preset for output pins
  digitalWrite(DPIN_CLK,       LOW);
  digitalWrite(DPIN_RESET,     LOW);
  digitalWrite(DPIN_LoadCmd_i, LOW);
  digitalWrite(DPIN_LoadA_i,   LOW);
  digitalWrite(DPIN_LoadB_i,   LOW);
  digitalWrite(DPIN_ABCmd_i_0, LOW);
  digitalWrite(DPIN_ABCmd_i_1, LOW);
  digitalWrite(DPIN_ABCmd_i_2, LOW);
  digitalWrite(DPIN_ABCmd_i_3, LOW);
  digitalWrite(DPIN_ABCmd_i_4, LOW);
  digitalWrite(DPIN_ABCmd_i_5, LOW);
  digitalWrite(DPIN_ABCmd_i_6, LOW);
  digitalWrite(DPIN_ABCmd_i_7, LOW);

  // Monitoring ......
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
}
//---------------------------------------------------------------------
#define N_RX  2
uint8_t rxBuf[N_RX];
// rxBuf[0]: x|x|x|LoadA_i|LoadB_i|LoadCmd_i|RESET|CLK
// rxBuf[1]: ABCmd_i
void RxPacket()
{
  int rxByte;

  while(true)
  {
    // Resceive test vector from SC testbench
    if (Serial.available() >= N_RX)
    {
      for(int i=0; i<N_RX; i++)
      {
        rxByte = Serial.read();
        rxBuf[i] = (uint8_t)rxByte;
      }
      // Apply received test vector to DUT's input ports
      // Set IO firstly
      digitalWrite(DPIN_RESET,    (rxBuf[0]&0x02)? HIGH:LOW);
      digitalWrite(DPIN_LoadCmd_i,(rxBuf[0]&0x04)? HIGH:LOW);
      digitalWrite(DPIN_LoadB_i,  (rxBuf[0]&0x08)? HIGH:LOW);
      digitalWrite(DPIN_LoadA_i,  (rxBuf[0]&0x10)? HIGH:LOW);
      digitalWrite(DPIN_ABCmd_i_0,(rxBuf[1]&0x01)? HIGH:LOW);
      digitalWrite(DPIN_ABCmd_i_1,(rxBuf[1]&0x02)? HIGH:LOW);
      digitalWrite(DPIN_ABCmd_i_2,(rxBuf[1]&0x04)? HIGH:LOW);
      digitalWrite(DPIN_ABCmd_i_3,(rxBuf[1]&0x08)? HIGH:LOW);
      digitalWrite(DPIN_ABCmd_i_4,(rxBuf[1]&0x10)? HIGH:LOW);
      digitalWrite(DPIN_ABCmd_i_5,(rxBuf[1]&0x20)? HIGH:LOW);
      digitalWrite(DPIN_ABCmd_i_6,(rxBuf[1]&0x40)? HIGH:LOW);
      digitalWrite(DPIN_ABCmd_i_7,(rxBuf[1]&0x80)? HIGH:LOW);
      // Then Clocking
      digitalWrite(DPIN_CLK,      (rxBuf[0]&0x01)? HIGH:LOW);

      return;
    }
  }
}
//---------------------------------------------------------------------
#define N_TX  2
uint8_t txBuf[N_RX];
// txBuf[0]: x|x|x|x|x|x|x|Done_o
// txBuf[1]: ACC_o
void TxPacket()
{
  int txByte;

  while(1)
  {
    // Capture DUT's output ports
    txBuf[0] = digitalRead(DPIN_Done_o);
    txBuf[1] = digitalRead(DPIN_ACC_o_0) << 0 |
               digitalRead(DPIN_ACC_o_1) << 1 |
               digitalRead(DPIN_ACC_o_2) << 2 |
               digitalRead(DPIN_ACC_o_3) << 3 |
               digitalRead(DPIN_ACC_o_4) << 4 |
               digitalRead(DPIN_ACC_o_5) << 5 |
               digitalRead(DPIN_ACC_o_6) << 6 |
               digitalRead(DPIN_ACC_o_7) << 7;
    // Send ports' captured value back to SC testbench
    if (Serial.availableForWrite() >= N_TX)
    {
      for(int i=0; i<N_TX; i++)
      {
        txByte = (int)txBuf[i];
        Serial.write(txByte);
      }

      return;
    }
  }
}
//----------------------------------------------------------------
void loop()
{
  RxPacket();
  TxPacket();
  digitalWrite(LED_BUILTIN, (txBuf[0]&0x01)? HIGH:LOW);
}
