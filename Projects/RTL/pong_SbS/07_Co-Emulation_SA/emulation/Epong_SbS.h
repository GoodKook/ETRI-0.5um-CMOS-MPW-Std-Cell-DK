/**********************************************************************
Filename: Epong_SbS.h
Purpose : Wrapper for FPGA Emulated pong_SbS
Author  : goodkook@gmail.com
History : Mar. 2026, First release
***********************************************************************/

#ifndef _Epong_SbS_H_
#define _Epong_SbS_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Epong_SbS)
{
    sc_in<bool>         clk;
    sc_in<bool>         reset;
    sc_out<bool>        pixel;
    sc_out<sc_uint<7> > x_pos;
    sc_out<sc_uint<6> > y_pos;

    sc_out<bool>        p_tick;
    sc_in<bool>         busy;

    sc_in<bool>         up;
    sc_in<bool>         down;

#define N_TX    1
#define N_RX    1024

// Emulation Transactor --------------------------------------------------------
// DUT's input bitmap
//      +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|
//      +-----+-+-+-+-+-+
//             | | | | |
//             | | | | +----clk
//             | | | +---reset
//             | | +---busy
//             | +---up
//             +---down
// DUT's output bitmap
//      +-+-------------+
//  [0] |7|6 5 4 3 2 1 0|
//      +-+-------------+
//               |
//               +---x_pos[6:0]
//      +-+-+-------+-+-+
//  [1] |7|6|5 4 3 2 1 0|
//      +-+-+-----------+
//       | |      |
//       | |      +---y_pos[5:0]
//       | +---pixel
//       +---p_tick
//

    uint8_t _rxPacket_[N_RX];

    inline void _EMU_IO_(void)
    {
        static int nTrans = 0;
        uint8_t _Rx_, _Tx_, _txPacket_[N_TX];

        _txPacket_[0] = (uint8_t)clk.read()?   0x01:0x00;
        _txPacket_[0]|= (uint8_t)reset.read()? 0x02:0x00;
        _txPacket_[0]|= (uint8_t)busy.read()?  0x04:0x00;
        _txPacket_[0]|= (uint8_t)up.read()?    0x08:0x00;
        _txPacket_[0]|= (uint8_t)down.read()?  0x10:0x00;

        fprintf(stderr, "[%d]Sending Stimulus > ", nTrans++);
        // Send to Emulator
        for (int i=0; i<N_TX; i++)
        {
            _Tx_ = _txPacket_[i];
            while(write(fd, &_Tx_, 1)<=0)  usleep(1);
        }

        do {    // WELL... WELL... WELL...
            while(read(fd, &_Rx_, 1)<=0)   usleep(1);
        } while(_Rx_!=0xAA);    // Wait for Start of Transaction
        fprintf(stderr, "Start Transaction > ");

        // Receive from Emulator
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &_Rx_, 1)<=0)   usleep(1);
            _rxPacket_[i] = _Rx_;
        }
        fprintf(stderr, "End Transaction......\n");

        x_pos.write(0);
        y_pos.write(0);
        pixel.write(0);
        p_tick.write(true);
    }

    void pong_SbS_method(void)
    {
        _EMU_IO_();
    }

    void pong_SbS_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();

            wait(clk.negedge_event());
            p_tick.write(false);
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file

    SC_CTOR(Epong_SbS): clk("clk")
    {
        SC_THREAD(pong_SbS_thread);
        sensitive << clk;

//        SC_METHOD(pong_SbS_method);
//        sensitive << clk << reset << busy << up << down;

#ifdef VCD_TRACE_TEST_TB
        // WAVE ----------------------------------------------------------
        fp = sc_create_vcd_trace_file("Epong_SbS");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, reset, "reset");
        sc_trace(fp, pixel, "pixel");
        sc_trace(fp, x_pos, "x_pos");
        sc_trace(fp, y_pos, "y_pos");
        sc_trace(fp, p_tick,"p_tick");
        sc_trace(fp, busy,  "busy");
        sc_trace(fp, up,    "up");
        sc_trace(fp, down,  "down");
#endif
        // Connecting Arduino DUT -----------------------------------------
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
        fprintf(stderr, "Request emulator connection......\n");
        unsigned char _rx, _tx = 'A';
        while(write(fd, &_tx, 1)<=0)  usleep(10);
        while(read(fd, &_rx, 1)<=0)   usleep(10);
        if (_rx=='A')
            fprintf(stderr, "Connection established...\n");
        else
        {
            fprintf(stderr, "Connection failed...\n");
            sc_stop();
        }
    }
    
    ~Epong_SbS(void)
    {
    }
};

#endif

