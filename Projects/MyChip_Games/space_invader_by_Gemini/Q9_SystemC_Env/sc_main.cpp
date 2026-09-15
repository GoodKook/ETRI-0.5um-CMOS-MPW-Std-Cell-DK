#include <systemc.h>
#include <verilated.h>            
#include "Vspace_invaders_engine_glcd.h" 
#include "sc_glcd128x64_TLM.h"
#include "sc_invaders_TB.h"

int sc_main(int argc, char* argv[]) {
    Verilated::commandArgs(argc, argv);

    sc_signal<bool>        sig_clk;
    sc_signal<bool>        sig_rst_n;
    sc_signal<bool>        sig_btn_left;
    sc_signal<bool>        sig_btn_right;
    sc_signal<bool>        sig_btn_fire;

    sc_signal<bool>        sig_lcd_write_en;
    sc_signal<sc_uint<7> >  sig_lcd_x;
    sc_signal<sc_uint<6> >  sig_lcd_y;
    sc_signal<bool>        sig_lcd_data;

    sc_invaders_TB u_tb("u_invaders_TB");
    Vspace_invaders_engine_glcd* u_engine = new Vspace_invaders_engine_glcd("u_space_invaders_engine");
    sc_glcd128x64_TLM u_glcd("u_glcd_display");

    u_tb.clk(sig_clk);
    u_tb.rst_n(sig_rst_n);
    u_tb.btn_left(sig_btn_left);
    u_tb.btn_right(sig_btn_right);
    u_tb.btn_fire(sig_btn_fire);

    u_engine->clk(sig_clk);
    u_engine->rst_n(sig_rst_n);
    u_engine->btn_left(sig_btn_left);
    u_engine->btn_right(sig_btn_right);
    u_engine->btn_fire(sig_btn_fire);
    u_engine->lcd_write_en(sig_lcd_write_en);
    u_engine->lcd_x(sig_lcd_x);
    u_engine->lcd_y(sig_lcd_y);
    u_engine->lcd_data(sig_lcd_data);

    u_glcd.clk(sig_clk);
    u_glcd.rst_n(sig_rst_n);
    u_glcd.lcd_write_en(sig_lcd_write_en);
    u_glcd.lcd_x(sig_lcd_x);
    u_glcd.lcd_y(sig_lcd_y);
    u_glcd.lcd_data(sig_lcd_data);

    while (!Verilated::gotFinish()) {
        sc_start(10, SC_NS); 
    }

    delete u_engine;
    return 0;
}
