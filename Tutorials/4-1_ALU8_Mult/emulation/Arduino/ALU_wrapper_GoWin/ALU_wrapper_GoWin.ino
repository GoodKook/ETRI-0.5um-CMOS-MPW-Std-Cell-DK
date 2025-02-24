/*
  'ALU_wrapper' Co-Emulation interface

  Emulator Pin Mapping:
    Arduino DUE & GoWin/Tang-25K & Verilog RTL
  --------------- ----------  -----------
  SAM3X8E/Digital Pmod /FPGA  ALU_wrapper
  --------------- ----------  -----------
   PD9 /30        J6-5 /H5    clk
   PA7 /31        J6-6 /J5    LoadCmd_i
   PD10/32        J6-7 /H8    reset
   PC1 /33        J6-8 /H7    Done_o
   PC2 /34        J6-9 /G7    LoadA_i
   PC3 /35        J6-10/G8    -
   PC4 /36        J6-11/F5    LoadB_i
   PC5 /37        J6-12/G5    -

   PC6 /38        J5-5 /L5    ACC_o[1]
   PC7 /39        J5-6 /K5    ACC_o[0]
   PC8 /40        J5-7 /K11   ACC_o[3]
   PC9 /41        J5-8 /L11   ACC_o[2]
   PA19/42        J5-9 /E11   ACC_o[5]
   PA20/43        J5-10/E10   ACC_o[4]
   PC19/44        J5-11/A11   ACC_o[7]
   PC18/45        J5-12/A10   ACC_o[6]

   PC17/46        J4-5 /C11   ABCmd_i[1]
   PC16/47        J4-6 /C10   ABCmd_i[0]
   PC15/48        J4-7 /B11   ABCmd_i[3]
   PC14/49        J4-8 /B10   ABCmd_i[2]
   PC13/50        J4-9 /D11   ABCmd_i[5]
   PC12/51        J4-10/D10   ABCmd_i[4]
   PB21/52        J4-11/G11   ABCmd_i[7]
   PB14/53        J4-12/G10   ABCmd_i[6]
*/

#define DPIN_CLK         30
#define DPIN_RESET       32

#define DPIN_LoadCmd_i   31
#define DPIN_LoadB_i     36
#define DPIN_LoadA_i     34

#define DPIN_ABCmd_i_7   52
#define DPIN_ABCmd_i_6   53
#define DPIN_ABCmd_i_5   50
#define DPIN_ABCmd_i_4   51
#define DPIN_ABCmd_i_3   48
#define DPIN_ABCmd_i_2   49
#define DPIN_ABCmd_i_1   46
#define DPIN_ABCmd_i_0   47

#define DPIN_ACC_o_7     44
#define DPIN_ACC_o_6     45
#define DPIN_ACC_o_5     42
#define DPIN_ACC_o_4     43
#define DPIN_ACC_o_3     40
#define DPIN_ACC_o_2     41
#define DPIN_ACC_o_1     38
#define DPIN_ACC_o_0     39

#define DPIN_Done_o      33

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
