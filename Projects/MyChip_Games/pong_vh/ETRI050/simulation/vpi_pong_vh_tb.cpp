//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_pong_vh_tb.cpp
// Purpose: Instantiate SC Testbench,
//          Read HDL signal via VPI call-back & Write to SC signals
// Author: GoodKook, goodkook@gmail.com
// History: 2026, Jul. 31
//

#include <systemc.h>
#include "sc_pong_vh_TB.h"

#include "vpi_pong_vh_tb_ports.h"
#include "vpi_pong_vh_tb_exports.h"

#define CLOCK_PERIOD    50
#define SC_TIME_UNIT    SC_NS

// Instantiate SystemC TB module
sc_pong_vh_TB*  u_sc_pong_vh_TB;

// Init. SystemC
void init_sc()
{
    // Instantiate SystemC TB
    u_sc_pong_vh_TB = new sc_pong_vh_TB("u_sc_pong_vh_TB");

    // Initialize SC
    sc_start(0,SC_NS);
    cout<<"#"<<sc_time_stamp()<<" SystemC started"<<endl;
}

// Call-Back: Read from HDL & Drive SystemC TB
void sample_hdl(void *In_vector)
{
    IN_VECTOR *p = (IN_VECTOR *)In_vector;
    u_sc_pong_vh_TB->v_sync.write(p->v_sync);
    u_sc_pong_vh_TB->pixel.write(p->pixel);
    u_sc_pong_vh_TB->p_tick.write(p->p_tick);
    u_sc_pong_vh_TB->game_over.write(p->game_over);
}
// Call-Back: Read from SystemC TB & Drive HDL
void drive_hdl(void *Out_vector)
{
    OUT_VECTOR *p   = (OUT_VECTOR *)Out_vector;
    p->end_of_sim   = u_sc_pong_vh_TB->sc_Stopped.read();
    p->clk          = u_sc_pong_vh_TB->clk.read();
    p->reset        = u_sc_pong_vh_TB->reset.read();
    p->option       = u_sc_pong_vh_TB->option.read();
    p->btn_up       = u_sc_pong_vh_TB->btn_up.read();
    p->btn_down     = u_sc_pong_vh_TB->btn_down.read();
    p->btn_left     = u_sc_pong_vh_TB->btn_left.read();
    p->btn_right    = u_sc_pong_vh_TB->btn_right.read();
}
// Advance SystemC kernel
void exec_sc(void *invector, void *outvector)
{
    sample_hdl(invector);
    drive_hdl(outvector);
    if (!u_sc_pong_vh_TB->sc_Stopped)
        sc_start(1,SC_TIME_UNIT);
}

void exit_sc()
{
    cout<<"#"<<sc_time_stamp()<<" SystemC stopped"<<endl;
    sc_stop();
}

