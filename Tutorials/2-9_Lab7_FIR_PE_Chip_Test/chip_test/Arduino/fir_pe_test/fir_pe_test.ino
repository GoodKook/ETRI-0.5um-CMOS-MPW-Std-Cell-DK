/*
  FIR8 with SystemC Co-Emulation
  Chip Test at Cycle Accurate Level
  MyChip MPW 2024-2
*/


//----------------------// SOIC-28 Package
#define PIN_Xin_3   22  // 1
#define PIN_Xin_2   23  // 2
#define PIN_Xin_1   24  // 3
#define PIN_Xin_0   25  // 4
//            VDD       // 5
#define PIN_Yin_3   26  // 6
#define PIN_Yin_2   27  // 7
#define PIN_Yin_1   28  // 8
#define PIN_Yin_0   29  // 9
#define PIN_RDY_i   30  // 10
#define PIN_CLK_i   31  // 11
#define PIN_Cin_0   32  // 12
#define PIN_Cin_1   33  // 13
#define PIN_Cin_2   34  // 14
#define PIN_Cin_3   35  // 15
#define PIN_Cin_4   36  // 16
#define PIN_Cin_5   37  // 17
#define PIN_Cin_6   38  // 18
#define PIN_VLD_o   39  // 19
#define PIN_Yout_0  40  // 20
#define PIN_Yout_1  41  // 21
#define PIN_Yout_2  42  // 22
#define PIN_Yout_3  43  // 23
//            VSS       // 24
#define PIN_Xout_0  44  // 25
#define PIN_Xout_1  45  // 26
#define PIN_Xout_2  46  // 27
#define PIN_Xout_3  47  // 28

//------------------------------------------------------------------------------
class Port_Xin {
  uint8_t _val;

public:
  Port_Xin(uint8_t val)  // Constructor
  {
    // Set digital pins to output connecting DUT's INPUT
    pinMode(PIN_Xin_3, OUTPUT);
    pinMode(PIN_Xin_2, OUTPUT);
    pinMode(PIN_Xin_1, OUTPUT);
    pinMode(PIN_Xin_0, OUTPUT);
    write(val);
  }
  uint8_t read()
  {
    return _val;
  }
  void write(uint8_t val)
  {
    digitalWrite(PIN_Xin_3, val & 0x08);
    digitalWrite(PIN_Xin_2, val & 0x04);
    digitalWrite(PIN_Xin_1, val & 0x02);
    digitalWrite(PIN_Xin_0, val & 0x01);
    _val = val;
  }
};
//------------------------------------------------------------------------------
class Port_Yin {
  uint8_t _val;

public:
  Port_Yin(uint8_t val)
  {
    // Set digital pins to output connecting DUT's INPUT
    pinMode(PIN_Yin_3, OUTPUT);
    pinMode(PIN_Yin_2, OUTPUT);
    pinMode(PIN_Yin_1, OUTPUT);
    pinMode(PIN_Yin_0, OUTPUT);
    write(val);
  }
  uint8_t read()
  {
    return _val;
  }
  void write(uint8_t val)
  {
    digitalWrite(PIN_Yin_3, val & 0x08);
    digitalWrite(PIN_Yin_2, val & 0x04);
    digitalWrite(PIN_Yin_1, val & 0x02);
    digitalWrite(PIN_Yin_0, val & 0x01);
    _val = val;
  }
};
//------------------------------------------------------------------------------
class Port_Cin {
  uint8_t _val;

public:
  Port_Cin(uint8_t val)
  {
    // Set digital pins to output connecting DUT's INPUT
    pinMode(PIN_Cin_6, OUTPUT);
    pinMode(PIN_Cin_5, OUTPUT);
    pinMode(PIN_Cin_4, OUTPUT);
    pinMode(PIN_Cin_3, OUTPUT);
    pinMode(PIN_Cin_2, OUTPUT);
    pinMode(PIN_Cin_1, OUTPUT);
    pinMode(PIN_Cin_0, OUTPUT);
    write(val);
  }
  uint8_t read()
  {
    return _val;
  }
  void write(uint8_t val)
  {
    digitalWrite(PIN_Cin_6, val & 0x40);
    digitalWrite(PIN_Cin_5, val & 0x20);
    digitalWrite(PIN_Cin_4, val & 0x10);
    digitalWrite(PIN_Cin_3, val & 0x08);
    digitalWrite(PIN_Cin_2, val & 0x04);
    digitalWrite(PIN_Cin_1, val & 0x02);
    digitalWrite(PIN_Cin_0, val & 0x01);
    _val = val;
  }
};
//------------------------------------------------------------------------------
class Port_RDY_i {
  bool _val;

public:
  Port_RDY_i(bool val)
  {
    // Set digital pins to output connecting DUT's INPUT
    pinMode(PIN_RDY_i, OUTPUT);
    write(val);
  }
  bool read()
  {
    return _val;
  }
  void write(bool val)
  {
    digitalWrite(PIN_RDY_i, val);
    _val = val;
  }
};
//------------------------------------------------------------------------------
class Port_Xout {
  uint8_t _val;

public:
  Port_Xout(uint8_t val)  // Constructor
  {
    // Set digital pins to input connecting DUT's OUTPUT
    pinMode(PIN_Xout_3, INPUT);
    pinMode(PIN_Xout_2, INPUT);
    pinMode(PIN_Xout_1, INPUT);
    pinMode(PIN_Xout_0, INPUT);
    write(val);
  }
  uint8_t read()
  {
    _val = ((digitalRead(PIN_Xout_3)? 0x08:0x00) |
            (digitalRead(PIN_Xout_2)? 0x04:0x00) |
            (digitalRead(PIN_Xout_1)? 0x02:0x00) |
            (digitalRead(PIN_Xout_0)? 0x01:0x00));
    return _val;
  }
  void write(uint8_t val)
  {
    _val = val;
  }
};
//------------------------------------------------------------------------------
class Port_Yout {
  uint8_t _val;

public:
  Port_Yout(uint8_t val)  // Constructor
  {
    // Set digital pins to input connecting DUT's OUTPUT
    pinMode(PIN_Yout_3, INPUT);
    pinMode(PIN_Yout_2, INPUT);
    pinMode(PIN_Yout_1, INPUT);
    pinMode(PIN_Yout_0, INPUT);
    write(val);
  }
  uint8_t read()
  {
    _val = ((digitalRead(PIN_Yout_3)? 0x08:0x00) |
            (digitalRead(PIN_Yout_2)? 0x04:0x00) |
            (digitalRead(PIN_Yout_1)? 0x02:0x00) |
            (digitalRead(PIN_Yout_0)? 0x01:0x00));
    return _val;
  }
  void write(uint8_t val)
  {
    _val = val;
  }
};
//------------------------------------------------------------------------------
class Port_VLD_o {
  bool _val;

public:
  Port_VLD_o(bool val)  // Constructor
  {
    // Set digital pins to input connecting DUT's OUTPUT
    pinMode(PIN_VLD_o, INPUT);
    write(val);
  }
  bool read()
  {
    _val = digitalRead(PIN_VLD_o);
    return _val;
  }
  void write(uint8_t val)
  {
    _val = val;
  }
};
//------------------------------------------------------------------------------
class Port_CLK {
  bool _val;

public:
  Port_CLK(bool val)
  {
    pinMode(PIN_CLK_i, OUTPUT);
    write(val);
  }
  void write(bool val)
  {
    digitalWrite(PIN_CLK_i, val);
    _val = val;
  }
  bool read()
  {
    return _val;
  }
  void posedge()
  {
    digitalWrite(PIN_CLK_i, false);
    digitalWrite(PIN_CLK_i, true);
    _val = true;
  }
  void negedge()
  {
    digitalWrite(PIN_CLK_i, true);
    digitalWrite(PIN_CLK_i, false);
    _val = false;
  }
  bool cycle()
  {
    if (_val)
    {
      negedge();
      posedge();
    }
    else
    {
      posedge();
      negedge();
    }

    return _val;
  }
};

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
  // start serial port at 9600 bps:
  Serial.begin(9600);
  while (!Serial)
  {
    ;  // wait for serial port to connect. Needed for native USB port only
  }
  establishContact();  // send a byte to establish contact until receiver responds

  // Monitoring LED
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
}

#define N_RX  3 // [0]={Xin[7:4]|Yin[3:0]}
                // [1]={-|Cin[6:0]};
                // [2]={-[7:2]|Clk|RDY};
#define N_TX  2 // [0]={Xout[7:4]|Yout[3:0]}
                // [1]={-[7:1]|VLD[0]}

uint8_t rxBuf[N_RX], txBuf[N_TX];

// Instantiate DUT Ports
Port_Xin    Xin(0x00);
Port_Yin    Yin(0x00);
Port_Cin    Cin(0x00);
Port_Xout   Xout(0);
Port_Yout   Yout(0);
Port_RDY_i  RDY_i(false);
Port_VLD_o  VLD_o(false);
Port_CLK    CLK(false);

void RxPacket()
{
  int rxByte;

  while(true)
  {
    if (Serial.available() >= N_RX)
    {
      for(int i=0; i<N_RX; i++)
      {
        rxByte = Serial.read();
        rxBuf[i] = (uint8_t)rxByte;
      }

      //rxBuf[0]={Xin[7:4]|Yin[3:0]}
      Xin.write((rxBuf[0] & 0xF0) >> 4);
      Yin.write((rxBuf[0] & 0x0F));
      //rxBuf[1]={-|Cin[6:0]};
      Cin.write((rxBuf[1] & 0x7F));
      //rxBuf[2]={-[7:2]|Clk|RDY};
      RDY_i.write((rxBuf[2] & 0x01));
      CLK.write((rxBuf[2] & 0x02));
      return;
    }
  }
}

void TxPacket()
{
  int txByte;

  while(1)
  {
    if (Serial.availableForWrite() >= N_TX)
    {
      // [0]={Xout[7:4]|Yout[3:0]}
      txBuf[0] = (((uint8_t)Xout.read() << 4) | ((uint8_t)Yout.read() & 0x0F));
      // [1]={-[7:1]|VLD[0]}
      txBuf[1] = ((uint8_t)VLD_o.read() & 0x01);

      for(int i=0; i<N_TX; i++)
      {
        txByte = (int)txBuf[i];
        Serial.write(txByte);
      }
      return;
    }
  }
}

uint8_t counter;

void loop()
{
  counter += 1;
  digitalWrite(LED_BUILTIN, (counter & 0x10)? HIGH:LOW);

  RxPacket();
  TxPacket();

}

