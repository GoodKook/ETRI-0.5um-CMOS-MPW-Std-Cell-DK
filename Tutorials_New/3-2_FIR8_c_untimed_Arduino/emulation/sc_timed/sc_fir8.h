/********************************************************************
Filename : sc_fir8.c
Purpose  : Emulation Wrapper for FIR Filter @ Arduino DUE (ARM Core)
Author   : goodkook@gmail.com
History  : Aug. 2025, First Release
*********************************************************************/

 #ifndef _SC_FIR8_H_
 #define _SC_FIR8_H_

 #include <systemc.h>
 #include "fir8.h"

 SC_MODULE(sc_fir8)
 {
    sc_in<bool> clk;
    sc_in<sc_uint<8> >      Xin;
    sc_out<sc_uint<16> >    Yout;

    //----------------------------------------------------
    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    inline void _EMU_IO_(void)
    {
        uint8_t     _tx, _rx;
        uint16_t    _Yout;

        // Send 1-Byte to Emulator
        _tx = Xin.read();
        while(write(fd, &_tx, 1)<=0)  usleep(10);
        while(read(fd, &_rx, 1)<=0)   usleep(10);
        if (_tx != _rx) // Loop-Back Test
        {
            fprintf(stderr, "COMM Error......\n");
            sc_stop();
        }
        // Receive 2-Bytes from Emulator
        while(read(fd, &_rx, 1)<=0)   usleep(10);
        _Yout = (uint16_t)_rx;
        while(read(fd, &_rx, 1)<=0)   usleep(10);
        _Yout |= ((uint16_t)_rx<<8);

        Yout.write(_Yout);
    }

    void fir_thread()
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();
        }
    }

    sc_trace_file* fp;  // VCD file

    SC_CTOR(sc_fir8): clk("clk"), Xin("Xin"), Yout("Yout")
    {
        SC_THREAD(fir_thread);
        sensitive << clk;

        //-----------------------------------------------------------
        // Connect Arduino DUT via Serial Port
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            perror("Error opening serial port");
            return;
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

        //-----------------------------------------------------------
        // VCD Dump
        fp = sc_create_vcd_trace_file("sc_fir8");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk, "clk");
        sc_trace(fp, Xin,  "Xin");
        sc_trace(fp, Yout, "Yout");
    }
 };

 #endif
