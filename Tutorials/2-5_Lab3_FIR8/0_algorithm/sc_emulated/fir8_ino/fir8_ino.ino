/*
  FIR8 SystemC Co-Emulation
*/

//--------------------------------------------------------------------
// FIR8
//--------------------------------------------------------------------
#define FILTER_TAP_NUM  8

static uint8_t filter_taps[FILTER_TAP_NUM] = {
  4,
  12,
  25,
  34,
  34,
  25,
  12,
  4
};

typedef uint8_t   coef_t;
typedef uint8_t   data_t;
typedef uint16_t  acc_t;

data_t   shift_reg[FILTER_TAP_NUM];

void fir ( uint16_t *y, uint8_t x)
{    
    acc_t           acc;
    data_t          data;
    coef_t          c;

    int     i;

    acc=0;

    for (i=FILTER_TAP_NUM-1;i>=0;i--)
    {
	    if (i==0)
        {
            shift_reg[0]=x;
     	    data = x;
        }
        else
        {
            shift_reg[i] = shift_reg[i-1];
            data = shift_reg[i];
        }

        c = filter_taps[i];
        acc += data*c;
  }
  *y=acc;
}
//--------------------------------------------------------------------
int incomingByte = 0; // for incoming serial data
int outingByte = 0;   // for out-going serial data

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

void setup()
{
  // start serial port at 9600 bps:
  Serial.begin(9600);
  while (!Serial)
  {
    ;  // wait for serial port to connect. Needed for native USB port only
  }
  establishContact();  // send a byte to establish contact until receiver responds

  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
}

uint8_t   x;
uint16_t  y;

bool bLED = false;

void loop()
{
  if (Serial.available() > 0)
  {
    if (bLED)
    {
      digitalWrite(LED_BUILTIN, HIGH);
      bLED = false;
    }
    else
    {
      digitalWrite(LED_BUILTIN, LOW);
      bLED = true;
    }

    incomingByte = Serial.read();
    x = (uint8_t)incomingByte;
    fir(&y, x);

    for (int i=0; i<FILTER_TAP_NUM; i++)
    {
      outingByte = (int)(shift_reg[i]);
      Serial.write(outingByte); // Send shift register X
    }

    outingByte = (int)(y & 0x00FF);
    Serial.write(outingByte); // LSB of y
    outingByte = (int)((y>>8) & 0x00FF);
    Serial.write(outingByte); // MSB of y
  }
}

