/**********************************************************************
Filename: sc_fir8.h
Purpose : Core of 8-Tab Systolic FIR filter
Author  : goodkook@gmail.com
History : Mar. 2024, First release
***********************************************************************/

#ifndef _SC_FIR8_H_
#define  _SC_FIR8_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

#include "../c_untimed/fir8.h"

SC_MODULE(sc_fir8)
{
    sc_in<bool>             clk;
    sc_in<sc_uint<8> >      Xin;
    sc_out<sc_uint<8> >     Xout;
    sc_in<sc_uint<16> >     Yin;
    sc_out<sc_uint<16> >    Yout;

    sc_signal<sc_uint<8> >  X[FILTER_TAP_NUM];  // Shift Register X

    void fir8_thread(void)
    {
        uint8_t     x;
        uint8_t     yL, yH;
        uint16_t    y;

        while(true)
        {
            wait(clk.posedge_event());
            x = (uint8_t)Xin.read();
            while(write(fd, &x, 1)<=0)  // Send Byte
                usleep(100);

            for (int i=0; i<FILTER_TAP_NUM; i++)
            {
                while(read(fd, &x, 1)<=0)  // Receive Byte: Shift Register of X
                    usleep(100);
                X[i].write(sc_uint<8>(x));
            }
            while(read(fd, &yL, 1)<=0)  // Receive Byte:LSB of y
                usleep(100);
            while(read(fd, &yH, 1)<=0)  // Receive Byte:MSB of y
                usleep(100);
            y = (uint16_t)(yH<<8) | (uint16_t)(yL);
            Yout.write(y);
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting
    
#ifdef  VCD_TRACE_FIR8
    sc_trace_file* fp;  // VCD file
#endif

    SC_CTOR(sc_fir8):
        clk("clk"),
        Xin("Xin"),
        Xout("Xout"),
        Yin("Yin"),
        Yout("Yout")
    {
        SC_THREAD(fir8_thread);
        sensitive << clk;

        // Arduino DUT
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            //return -1;
        }
        // Set up serial port
        options.c_cflag = B9600 | CS8 | CLOCAL | CREAD;
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

#ifdef VCD_TRACE_FIR8
        // WAVE
        fp = sc_create_vcd_trace_file("sc_fir8");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk, "clk");
        sc_trace(fp, Xin,  "Xin");
        sc_trace(fp, Xout, "Xout");
        sc_trace(fp, Yin,  "Yin");
        sc_trace(fp, Yout, "Yout");
        char szTrace[8];
        for (int i=0; i<FILTER_TAP_NUM; i++)
        {
            sprintf(szTrace, "X_%d", i);
            sc_trace(fp, X[i], szTrace);
        }
#endif
    }

    ~sc_fir8(void)
    {
        close(fd);
    }
};

#endif
