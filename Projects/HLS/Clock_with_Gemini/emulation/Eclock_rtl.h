/**********************************************************************
Filename: Eclock_rtl.h
Purpose : Wrapper for FPGA Emulated "clock_rtl" module 
Author  : goodkook@gmail.com
History : Aug. 2026, First release
***********************************************************************/

#ifndef _Eclock_rtl_H_
#define _Eclock_rtl_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Eclock_rtl)
{
    sc_in<bool>         clk;    // 시스템 클락
    sc_in<bool>         rst_n;  // 비동기 액티브 로우 리셋 (하드웨어 초기화)
    sc_in<bool>         clear;  // 시계 초기화 신호 (00:00:00)
    sc_in<bool>         start;  // 시계 가동 신호 (1 = 매 클락마다 1초씩 증가)
    sc_out<sc_uint<5> > hh;     // 시간 출력 (0 ~ 23 표현을 위해 5비트)
    sc_out<sc_uint<6> > mm;     // 분 출력 (0 ~ 59 표현을 위해 6비트)
    sc_out<sc_uint<6> > ss;     // 초 출력 (0 ~ 59 표현을 위해 6비트)

#define N_TX    1
#define N_RX    3

// Emulation Transactor ----------------------------------------
// DUT's input bitmap               DUT's output bitmap
//      +-------+-+-+-+-+               +---+-----------+
//  [0] |7 6 5 4|3|2|1|0|           [0] |7 6|5 4 3 2 1 0|
//      +-------+-+-+-+-+               +-+-+-----+-----+
//               | | | |                          |
//               | | | +---start                  +---ss[5:0]
//               | | +---clear          +---+-----------+
//               | +---rst_n        [1] |7 6|5 4 3 2 1 0|
//               +---clk                +-+-+-----+-----+
//                                                |
//                                                +---mm[5:0]
//                                      +-----+---------+
//                                  [2] |7 6 5|4 3 2 1 0|
//                                      +-----+---+-----+
//                                                |
//                                                +---hh[4:0]

    inline void _EMU_IO_(void)
    {
        uint8_t _Rx_, _Tx_, _txPacket_[N_TX], _rxPacket_[N_RX];

        _txPacket_[0] = (uint8_t)(
                        (start.read()?  0x01:0x00) |
                        (clear.read()?  0x02:0x00) |
                        (rst_n.read()?  0x04:0x00) |
                        (clk.read()?    0x08:0x00));

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

        ss.write(_rxPacket_[0] & 0x3F);
        mm.write(_rxPacket_[1] & 0x3F);
        hh.write(_rxPacket_[2] & 0x1F);
    }

//
// Cycle-Accurate(CA) Output Monitor
//
#if defined(CA)
    void Eclock_rtl_CA_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();
            //wait(clk.negedge_event());
            //_EMU_IO_();
        }
    }
#else
    void Eclock_rtl_method(void)
    {
        _EMU_IO_();
    }
#endif

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file

    SC_CTOR(Eclock_rtl): clk("clk")
    {
#if defined(CA)
        SC_THREAD(Eclock_rtl_CA_thread);
        sensitive << clk;
#else
        SC_METHOD(Eclock_rtl_method);
        sensitive << clk << rst_n << clear << start;
#endif
        // WAVE ----------------------------------------------------------
        fp = sc_create_vcd_trace_file("Eclock_rtl");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,   "clk");
        sc_trace(fp, rst_n, "rst_n");
        sc_trace(fp, clear, "clear");
        sc_trace(fp, start, "start");
        sc_trace(fp, ss,    "ss");
        sc_trace(fp, mm,    "mm");
        sc_trace(fp, hh,    "hh");

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
    
    ~Eclock_rtl(void)
    {
    }
};

#endif

