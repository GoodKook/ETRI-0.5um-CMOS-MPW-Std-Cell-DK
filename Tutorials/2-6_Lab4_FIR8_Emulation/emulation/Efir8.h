/**********************************************************************
Filename: Efir8.h
Purpose : FPGA wrapper & Driver for Emulated Systolic FIR filter
Author  : goodkook@gmail.com
History : Feb. 2025, First release
***********************************************************************/

#ifndef _EFIR8_H_
#define _EFIR8_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Efir8)
{
    sc_in<bool>             clk;
    sc_in<sc_uint<8> >      Xin;
    sc_out<sc_uint<8> >     Xout;
    sc_in<sc_uint<16> >     Yin;
    sc_out<sc_uint<16> >    Yout;

#define N_TX    3
#define N_RX    3

    void Efir8_thread(void)
    {
        uint8_t     tx, rx, txPacket[N_TX], rxPacket[N_RX];

        while(true)
        {
            // Positive edge Clock
            wait(clk.posedge_event());
            txPacket[0] = (uint8_t)Xin.read();
            txPacket[1] = (uint8_t)(Yin.read());
            txPacket[2] = (uint8_t)(Yin.read()>>8);

            // Send to Emulator
            for (int i=0; i<N_TX; i++)
            {
                tx = txPacket[i];
                while(write(fd, &tx, 1)<=0)  usleep(1);
            }
            // Receive from Emulator
            for (int i=0; i<N_RX; i++)
            {
                while(read(fd, &rx, 1)<=0)   usleep(1);
                rxPacket[i] = rx;
            }

            Xout.write((sc_uint<8>)(rxPacket[0]));
            Yout.write((sc_uint<16>)rxPacket[1] | (sc_uint<16>)rxPacket[2]<<8);
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(Efir8):
        clk("clk"),
        Xin("Xin"), Xout("Xout"),
        Yin("Yin"), Yout("Yout")
    {
        SC_THREAD(Efir8_thread);
        sensitive << clk;

        // Arduino DUT
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
    
    ~Efir8(void)
    {
    }
};

#endif
