//
// Filename: tb_space_invaders.h
//
//-----------------------------------------------------------------------------
#ifndef TB_SPACE_INVADERS_H
#define TB_SPACE_INVADERS_H
#include <systemc.h>
SC_MODULE(tb_space_invaders) {
    // 1. 포트 선언 (UUT와 연결할 신호들의 드라이버 역할)
    sc_out<bool>        clk;
    sc_out<bool>        rst_n;
    sc_out<bool>        btn_left;
    sc_out<bool>        btn_right;
    sc_out<bool>        btn_fire;
    sc_out<sc_uint<10>> vga_x;
    sc_out<sc_uint<10>> vga_y;
    sc_out<bool>        video_on;
    sc_in<sc_uint<3>>   rgb;

    // 2. 프로세스 함수 선언
    void clock_process();
    void stimulus_process();
    void vga_scan_process();
    void monitor_process();

    SC_CTOR(tb_space_invaders) {
        SC_THREAD(clock_process);
        
        SC_THREAD(stimulus_process);
        
        SC_THREAD(vga_scan_process);
        
        SC_METHOD(monitor_process);
        sensitive << clk.pos();
    }
};
#endif
