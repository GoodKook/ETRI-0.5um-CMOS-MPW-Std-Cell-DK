/**********************************************************************
Filename: space_invaders.h
Purpose : Wrapper for SA-Mode "space_invaders_engine_glcd"
Author  : goodkook@gmail.com
History : Aug. 2026, First release
***********************************************************************/

#ifndef _space_invaders_H_
#define _space_invaders_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(space_invaders)
{
    sc_in<bool>     clk;    // Virtual Clock
    sc_in<bool>     rst_n;
    sc_in<bool>     btn_left;
    sc_in<bool>     btn_right;
    sc_in<bool>     btn_fire;

#define N_TX    1
//#define N_RX    1 // Nothing Receive

// Emulation Transactor -------------------------------
// DUT's input bitmap
//      +-----+-+-+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|
//      +-----+-+-+-+-+-+
//               | | | |
//               | | | +---btn_fire
//               | | +---btn_right
//               | +---btn_left
//               +---rst_n
//

    inline void _EMU_IO_(void)
    {
        uint8_t _Rx_, _Tx_, _txPacket_[N_TX];

        _txPacket_[0] = (uint8_t)(
                        (btn_fire.read()?   0x01:0x00) |
                        (btn_right.read()?  0x02:0x00) |
                        (btn_left.read()?   0x04:0x00) |
                        (rst_n.read()?      0x08:0x00));

        // Send to Emulator
        for (int i=0; i<N_TX; i++)
        {
            _Tx_ = _txPacket_[i];
            while(write(fd, &_Tx_, 1)<=0)  usleep(1);
        }
    }

    void space_invaders_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();
        }
    }

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file

    SC_CTOR(space_invaders): clk("clk")
    {
        SC_THREAD(space_invaders_thread);
        sensitive << clk;

        // Establish Contact
        fprintf(stderr, "Opening Serial Port ......");
        // Connecting Arduino DUT -----------------------------------------
        //fd = open("/dev/ttyACM0", O_RDWR | O_NDELAY | O_NOCTTY);
        fd = open("/dev/ttyACM0", O_RDWR | O_NOCTTY);
        if (fd < 0)
        {
            fprintf(stderr, "Fail\n");
            sc_stop();
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

        fprintf(stderr, "Ok\n");
    }
    
    ~space_invaders(void)
    {
    }
};

#endif

