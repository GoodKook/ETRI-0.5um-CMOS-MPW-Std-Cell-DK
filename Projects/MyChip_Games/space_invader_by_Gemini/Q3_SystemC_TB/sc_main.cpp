#include <systemc.h>
#include "tb_space_invaders.h"

// Co-Simulation 환경의 경우 아래와 같이 Verilog 모듈의 Wrapper 클래스를 선언합니다.
// (EDA 툴이 제공하는 외래 언어 인터페이스(FLI/DPI) 매크로를 연동하여 사용하게 됩니다)
extern "C" void space_invaders_engine_register_with_sc(); 

int sc_main(int argc, char* argv[]) {
    // 내부 상호 연결 채널(Signals) 생성
    sc_signal<bool>        clk_sig;
    sc_signal<bool>        rst_n_sig;
    sc_signal<bool>        btn_left_sig;
    sc_signal<bool>        btn_right_sig;
    sc_signal<bool>        btn_fire_sig;
    sc_signal<sc_uint<10>> vga_x_sig;
    sc_signal<sc_uint<10>> vga_y_sig;
    sc_signal<bool>        video_on_sig;
    sc_signal<sc_uint<3>>   rgb_sig;

    // 테스트벤치 인스턴스화 및 핀 맵핑
    tb_space_invaders tb("testbench");
    tb.clk(clk_sig);
    tb.rst_n(rst_n_sig);
    tb.btn_left(btn_left_sig);
    tb.btn_right(btn_right_sig);
    tb.btn_fire(btn_fire_sig);
    tb.vga_x(vga_x_sig);
    tb.vga_y(vga_y_sig);
    tb.video_on(video_on_sig);
    tb.rgb(rgb_sig);

    // 💡 참고: 실제 시뮬레이터(ModelSim 등)에서는 하단에 
    // Verilog UUT(Unit Under Test) 인스턴스를 추가하여 동일하게 바인딩합니다.

    // VCD 파형 드라이브 파일 생성 (GTKWave 또는 툴 내부 Waveform 뷰어용)
    sc_trace_file *tf = sc_create_vcd_trace_file("space_invaders_waveform");
    sc_trace(tf, clk_sig, "clk");
    sc_trace(tf, rst_n_sig, "rst_n");
    sc_trace(tf, btn_fire_sig, "btn_fire");
    sc_trace(tf, vga_x_sig, "vga_x");
    sc_trace(tf, vga_y_sig, "vga_y");
    sc_trace(tf, rgb_sig, "rgb_out");

    // 시뮬레이션 구동시작
    sc_start();

    sc_close_vcd_trace_file(tf);
    return 0;
}
