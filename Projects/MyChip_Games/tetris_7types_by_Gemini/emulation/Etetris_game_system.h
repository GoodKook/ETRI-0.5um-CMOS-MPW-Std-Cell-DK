/**********************************************************************
Filename: Etetris_game_system.h
Purpose : Wrapper for FPGA Emulated "tetris_game_system"
Author  : goodkook@gmail.com
History : Aug. 2026, First release
***********************************************************************/

#ifndef _Etetris_game_system_H_
#define _Etetris_game_system_H_

#include <systemc.h>

// Includes for accessing Arduino via serial port
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>

SC_MODULE(Etetris_game_system)
{
    sc_in<bool>         clk;          // 픽셀 클럭 (매 클럭마다 1픽셀 데이터 출력)
    sc_in<bool>         rst_n;        // 전체 시스템 리셋 (Active Low)
    
    // 외부 제어 및 타이머 신호 (1클럭 폭의 동기화 펄스)
    sc_in<bool>        tick_i;       // 블록 자동 하강 틱 (외부 타이머 입력)
    sc_in<bool>        btn_up;       // 블록 회전 (Rotate)
    sc_in<bool>        btn_down;     // 빠른 하강 (Soft Drop)
    sc_in<bool>        btn_left;     // 왼쪽 이동 (Move Left)
    sc_in<bool>        btn_right;    // 오른쪽 이동 (Move Right)
    
    // 래스터 스캔 표준 비디오 인터페이스 출력
    sc_out<bool>        h_sync;       // 수평 동기 신호
    sc_out<bool>        v_sync;       // 수직 동기 신호
    sc_out<bool>        video_active; // 유효 화면 구간 플래그
    sc_out<bool>        pixel_data;   // 128x64 해상도 실시간 픽셀 데이터
    
    // 게임 상태 및 데이터 출력
    sc_out<bool>            game_over;
    sc_out<sc_uint<16> >    score;

#define N_TX    1
#define N_RX    3

// Emulation Transactor -------------------------------
// DUT's input bitmap                DUT's output bitmap
//      +-+-+-+-+-+-+-+-+                +-----+-+-+-+-+-+
//  [0] |7|6|5|4|3|2|1|0|            [0] |7 6 5|4|3|2|1|0|
//      +-+-+-+-+-+-+-+-+                +-----+-+-+-+-+-+
//         | | | | | | |                        | | | | |
//         | | | | | | +---btn_right            | | | | +---pixel_data
//         | | | | | +---btn_left               | | | +---video_active
//         | | | | +---btn_down                 | | +---v_sync
//         | | | +---btn_up                     | +---h_sync
//         | | +---tick_i                       +---game_over
//         | +---rst_n                   +---------------+
//         +---clk                   [1] |7 6 5 4 3 2 1 0|
//                                       +-------+-------+
//                                               |
//                                               +---score[7:0]
//                                       +---------------+
//                                   [2] |7 6 5 4 3 2 1 0|
//                                       +-------+-------+
//                                               |
//                                               +---score[15:8]
//

    inline void _EMU_IO_(void)
    {
        uint8_t _Rx_, _Tx_, _txPacket_[N_TX], _rxPacket_[N_RX];

        _txPacket_[0] = (uint8_t)(
                        (btn_right.read()?  0x01:0x00) |
                        (btn_left.read()?   0x02:0x00) |
                        (btn_down.read()?   0x04:0x00) |
                        (btn_up.read()?     0x08:0x00) |
                        (tick_i.read()?     0x10:0x00) |
                        (rst_n.read()?      0x20:0x00) |
                        (clk.read()?        0x40:0x00));

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

        pixel_data.write(   (_rxPacket_[0] & 0x01)? true:false);
        video_active.write( (_rxPacket_[0] & 0x02)? true:false);
        v_sync.write(       (_rxPacket_[0] & 0x04)? true:false);
        h_sync.write(       (_rxPacket_[0] & 0x08)? true:false);
        game_over.write(    (_rxPacket_[0] & 0x10)? true:false);

        score.write(((uint16_t)_rxPacket_[1]<<8)| ((uint16_t)_rxPacket_[0]));
    }

//
// Cycle-Accurate(CA) Output Monitor
//
#if defined(CA)
    void tetris_game_system_CA_thread(void)
    {
        while(true)
        {
            wait(clk.posedge_event());
            _EMU_IO_();
        }
    }
#else
    void tetris_game_system_method(void)
    {
        _EMU_IO_();
    }
#endif

    // Arduino Serial IF
    int fd;                 // Serial port file descriptor
    struct termios options; // Serial port setting

    sc_trace_file* fp;  // VCD file

    SC_CTOR(Etetris_game_system): clk("clk")
    {
#if defined(CA)
        SC_THREAD(tetris_game_system_CA_thread);
        sensitive << clk;
#else
        SC_METHOD(tetris_game_system_method);
        sensitive << clk << rst_n << btn_left << btn_right << btn_up << btn_down << tick_i;
#endif
        // WAVE ----------------------------------------------------------
        fp = sc_create_vcd_trace_file("Etetris_game_system");
        fp->set_time_unit(100, SC_PS);  // resolution (trace) ps
        sc_trace(fp, clk,           "clk");
        sc_trace(fp, rst_n,         "rst_n");
        sc_trace(fp, btn_left,      "btn_left");
        sc_trace(fp, btn_right,     "btn_right");
        sc_trace(fp, btn_up,        "btn_up");
        sc_trace(fp, btn_down,      "btn_down");
        sc_trace(fp, tick_i,        "tick_i");
        sc_trace(fp, pixel_data,    "pixel_data");
        sc_trace(fp, video_active,  "video_active");
        sc_trace(fp, v_sync,        "v_sync");
        sc_trace(fp, h_sync,        "h_sync");
        sc_trace(fp, game_over,     "game_over");
        sc_trace(fp, score,         "score");

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

    ~Etetris_game_system(void)
    {
    }
};

#endif

