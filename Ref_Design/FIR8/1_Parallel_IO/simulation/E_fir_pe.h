/**********************************************************************
Filename: E_fir_pe.h
Purpose : Emulated PE of Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _E_FIR_PE_H_
#define _E_FIR_PE_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(E_fir_pe)
{
    sc_in<bool>             clk;
    sc_in<sc_uint<8> >      Cin;
    sc_in<sc_uint<8> >      Xin;
    sc_out<sc_uint<8> >     Xout;
    sc_in<sc_uint<16> >     Yin;
    sc_out<sc_uint<16> >    Yout;

#define N_TX    4
#define N_RX    3

    void pe_thread(void)
    {
        uint8_t     x, y, txPacket[N_TX], rxPacket[N_RX];

        while(true)
        {
            wait(clk.posedge_event());
            txPacket[3] = (uint8_t)(Yin.read());    // LSB of Yin
            txPacket[2] = (uint8_t)(Yin.read()>>8); // MSB of Yin
            txPacket[1] = (uint8_t)Xin.read();      // Xin
            txPacket[0] = (uint8_t)Cin.read();      // Cin

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

            Xout.write( (uint8_t)rxPacket[0]);
            Yout.write((uint16_t)rxPacket[1]<<8 | (uint16_t)rxPacket[2]);
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    SC_CTOR(E_fir_pe):
        clk("clk"),
        Cin("Cin"), Xin("Xin"), Xout("Xout"),
        Yin("Yin"), Yout("Yout")
    {
        SC_THREAD(pe_thread);
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
    
    ~E_fir_pe(void)
    {
    }
};

#endif
