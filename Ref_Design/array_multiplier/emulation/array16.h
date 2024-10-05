//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
// Emulation Interface to "array16"/Cycle Accurate
//

#ifndef _ARRAY16_H_
#define _ARRAY16_H_

#include "systemc"

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(array16)
{
    // PORTS
    sc_in<sc_uint<16> >     a;
    sc_in<sc_uint<16> >     b;
    sc_out<sc_uint<32> >    c;

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

#define N_TX    4   // Number of Bytes to DUT's inputs
#define N_RX    4   // Number of Bytes from DUT's outputs

    // Thread: UART Driver for emulating DUT ----------------------------------
    void array16_method(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];

        // DUT input: Byte order and Bitmap must match with Verilog wrapper
        txPacket[0] = (uint8_t)(a.read());
        txPacket[1] = (uint8_t)(a.read()>>8);
        txPacket[2] = (uint8_t)(b.read());
        txPacket[3] = (uint8_t)(b.read()>>8);

        // Send to Emulator
        for (int i=0; i<N_TX; i++)
        {
            x = txPacket[i];
            while(write(fd, &x, 1)<=0)  usleep(1);
        }
        // Receive from Emulator
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &y, 1)<=0)   usleep(1);
            rxPacket[i] = y;
        }
        
        // DUT output: Byte order and Bitmap must match with Verilog wrapper
        c.write((uint32_t)rxPacket[3] <<24 |
                (uint32_t)rxPacket[2] <<16 |
                (uint32_t)rxPacket[1] <<8  |
                (uint32_t)rxPacket[0]);
    }

    SC_CTOR(array16) :   // Constructor
        a("a"), b("b"), c("c")
    {
        SC_METHOD(array16_method);  // UART Driver for emulating DUT
        sensitive << a << b;
        
        // Arduino DUE: initialize USB-UART
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            return;
        }
        // Set up serial port
        options.c_cflag = B115200 | CS8 | CLOCAL | CREAD;
        options.c_iflag = IGNPAR;
        options.c_oflag = 0;
        options.c_lflag = 0;
        // Apply the settings
        tcflush(fd, TCIFLUSH);
        tcsetattr(fd, TCSANOW, &options);

        // Establish Contact
        int len = 0;
        char rx;
        while(!len)
            len = read(fd, &rx, 1);
        if (rx=='A')
            write(fd, &rx, 1);
        printf("Connection established...\n");
    }

};

#endif

