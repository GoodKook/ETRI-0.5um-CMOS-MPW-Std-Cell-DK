/*******************************************************************************
Poorman's Standard-Emulator
---------------------------
Vendor: GoodKook, goodkook@gmail.com
Associated Filename: DUT.h
Purpose: Emulation Wrapper, Modeling Interface for DUT
Revision History: Jun. 1, 2024
*******************************************************************************/
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
    // PORTS
    sc_in<bool>             CLK;
    sc_in<bool>             nCLR;
    sc_in<bool>             nLOAD;
    sc_in<sc_uint<2> >      Digit;
    sc_in<sc_uint<4> >      Din;
    sc_out<sc_uint<16> >    Dout;
    sc_out<bool>            RCO;

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

#define N_TX    2
#define N_RX    3

    void DUT_thread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];
        int nTx, nRx;
        
        
        while(true)
        {
            //-------------------------------------------------------
            wait(CLK.posedge_event());
            // Assemble bitmap for emulator input byte. Refer to Verilog wrapper
            //  stimIn[0] = {----|Din[3]|Din[2]|Din[1]|Din[0]}
            //  stimIn[1] = {----|nCLR|nLOAD|Digit[1]|Digit[0]}
            txPacket[0] = (uint8_t)(Din.read());
            txPacket[1] = (uint8_t)(nCLR.read()?   0x08:0x00) |
                          (uint8_t)(nLOAD.read()?  0x04:0x00) |
                          (uint8_t)(Digit.read() & 0x03);

            // Send to Emulator
            for (int i=0; i<N_TX; i++)
            {
                x = txPacket[i];
                while(write(fd, &x, 1)<=0)  usleep(100);
            }
            // Receive from Emulator
            for (int i=0; i<N_RX; i++)
            {
                while(read(fd, &y, 1)<=0)   usleep(100);
                rxPacket[i] = y;
            }

            // Dis-assemble emulator output byte to Verilog wrapper
            Dout.write((uint16_t)rxPacket[1]<<8 | (uint16_t)rxPacket[0]);
            RCO.write((rxPacket[2]&0x01)? true:false);
        }
    }

    SC_CTOR(DUT) :   // Constructor
        CLK("CLK")
    {
        SC_THREAD(DUT_thread);
        sensitive << CLK;

        //--------------------------------------------------------------
        // Set-up serial port communicating Arduino DUE USB-UART
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

