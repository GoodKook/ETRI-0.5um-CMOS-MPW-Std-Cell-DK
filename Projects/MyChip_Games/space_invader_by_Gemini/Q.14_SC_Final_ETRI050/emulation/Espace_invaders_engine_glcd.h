/**********************************************************************
Filename: Espace_invaders_engine_glcd.h
Purpose : Wrapper for FPGA Emulated "space_invaders_engine_glcd"
Author  : goodkook@gmail.com
History : Aug. 2026, First release
***********************************************************************/

#ifndef _Espace_invaders_engine_glcd_H_
#define _Espace_invaders_engine_glcd_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Espace_invaders_engine_glcd)
{
    sc_in<bool>         clk;
    sc_out<bool>        clk_o;  // Inverted Output
    sc_in<bool>         rst_n;

    sc_in<bool>         btn_left;
    sc_in<bool>         btn_right;
    sc_in<bool>         btn_fire;

    sc_out<bool>        lcd_data;
    sc_out<bool>        v_sync;

#define N_TX    1
#define N_RX    1

// Emulation Transactor -------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +-----+-+-+-+-+-+               +---------+-+-+-+
//  [0] |7 6 5|4|3|2|1|0|           [0] |7 6 5 4 3|2|1|0|
//      +-----+-+-+-+-+-+               +---------+-+-+-+
//             | | | | |                           | | |
//             | | | | +---btn_fire                | | +---clk_o
//             | | | +---btn_right                 | +---lcd_data
//             | | +---btn_left                    +---v_sync
//             | +---rst_n                    
//             +---clk
//

    inline void _EMU_IO_(void)
    {
        uint8_t _Rx_, _Tx_, _txPacket_[N_TX], _rxPacket_[N_RX];

        _txPacket_[0] = (uint8_t)(
                        (btn_fire.read()?   0x01:0x00) |
                        (btn_right.read()?  0x02:0x00) |
                        (btn_left.read()?   0x04:0x00) |
                        (rst_n.read()?      0x08:0x00) |
                        (clk.read()?        0x10:0x00));

        // Send to Emulator
        for (int i=0; i<N_TX; i++)
        {
            _Tx_ = _txPacket_[i];
            while(write(fd, &_Tx_, 1)<=0)  usleep(1);
        }
        // Receive from Emulator
        for (int i=0; i<N_RX; i++)
        {
            while(read(fd, &_Rx_, 1)<=0)   usleep(1);
            _rxPacket_[i] = _Rx_;
        }

        clk_o.write(    (_rxPacket_[0] & 0x01)? true:false);
        lcd_data.write( (_rxPacket_[0] & 0x02)? true:false);
        v_sync.write(   (_rxPacket_[0] & 0x04)? true:false);
    }

//
// Cycle-Accurate(CA) Output Monitor
//
#if defined(CA)
    void space_invaders_engine_glcd_CA_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();
            wait(clk.negedge_event());
            _EMU_IO_();
        }
    }
#else
    void space_invaders_engine_glcd_method(void)
    {
        _EMU_IO_();
    }
#endif

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file

    SC_CTOR(Espace_invaders_engine_glcd): clk("clk")
    {
#if defined(CA)
        SC_THREAD(space_invaders_engine_glcd_CA_thread);
        sensitive << clk;
#else
        SC_METHOD(space_invaders_engine_glcd_method);
        sensitive << clk << rst_n << btn_left << btn_right << btn_fire;
#endif
        // WAVE ----------------------------------------------------------
        fp = sc_create_vcd_trace_file("Espace_invaders_engine_glcd");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,           "clk");
        sc_trace(fp, rst_n,         "rst_n");
        sc_trace(fp, btn_left,      "btn_left");
        sc_trace(fp, btn_right,     "btn_right");
        sc_trace(fp, btn_fire,      "btn_fire");
        sc_trace(fp, lcd_data,      "lcd_data");
        sc_trace(fp, v_sync,        "v_sync");
        sc_trace(fp, clk_o,         "clk_o");

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
    
    ~Espace_invaders_engine_glcd(void)
    {
    }
};

#endif

