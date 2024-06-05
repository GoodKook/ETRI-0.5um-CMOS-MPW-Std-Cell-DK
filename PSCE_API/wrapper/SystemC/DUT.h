//
// Poorman's Standard-Emulator by GoodKook, goodkook@gmail.com
// Emulation Interface to "DUT"/Cycle Accurate
//

#ifndef _DUT_H_
#define _DUT_H_

#include "systemc"

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(DUT)
{
    // PORTS (Example)
    sc_in<bool>             CLK;
    sc_in<bool>             nCLR;
    sc_in<bool>             nLOAD;
    sc_in<sc_uint<4> >      Din;
    sc_out<sc_uint<16> >    Dout;
    sc_out<bool>            RCO;

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

#define N_TX    1   // Number of Bytes to DUT's inputs
#define N_RX    3   // Number of Bytes from DUT's outputs

    // Thread: UART Driver for emulating DUT ----------------------------------
    void DUT_thread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];

        while(true)
        {
            // ----------------------------------------------------------------
            wait(CLK.posedge_event());   //Posedge of Clock
            // DUT input: Byte order and Bitmap must match with Verilog wrapper
            txPacket[0] = (uint8_t)(CLK.read()?     0x40:0x00) |
                          (uint8_t)(nCLR.read()?    0x20:0x00) |
                          (uint8_t)(nLOAD.read()?   0x10:0x00) |
                          (uint8_t)(Din.read() &    0x0F);

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
            Dout.write((uint16_t)rxPacket[1]<<8 | (uint16_t)rxPacket[0]);
            RCO.write((rxPacket[2]&0x01)? true:false);
            
            // ----------------------------------------------------------------
            wait(CLK.negedge_event());  //Negedge of Clock
            // DUT input: Byte order and Bitmap must match with Verilog wrapper
            txPacket[0] = (uint8_t)(CLK.read()?     0x40:0x00) |
                          (uint8_t)(nCLR.read()?    0x20:0x00) |
                          (uint8_t)(nLOAD.read()?   0x10:0x00) |
                          (uint8_t)(Din.read() &    0x0F);

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
            Dout.write((uint16_t)rxPacket[1]<<8 | (uint16_t)rxPacket[0]);
            RCO.write((rxPacket[2]&0x01)? true:false);
        }
    }

    SC_CTOR(DUT) :   // Constructor
        CLK("CLK")
    {
        SC_THREAD(DUT_thread);  // UART Driver for emulating DUT
        sensitive << CLK;
        
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

