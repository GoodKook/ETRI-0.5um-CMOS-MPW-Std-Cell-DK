//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_bricks_out_tb.cpp
// Purpose: Instantiate SC Testbench,
//          Read HDL signal via VPI call-back & Write to SC signals
// Author: GoodKook, goodkook@gmail.com
// History: 2026, Jul. 31
//

#include <systemc.h>
#include "sc_bricks_out_TB.h"

#include "vpi_bricks_out_tb_ports.h"
#include "vpi_bricks_out_tb_exports.h"

#define CLOCK_PERIOD    50
#define SC_TIME_UNIT    SC_NS

// Instantiate SystemC TB module
sc_bricks_out_TB*  u_sc_bricks_out_TB;

// Init. SystemC
void init_sc()
{
    // Instantiate SystemC TB
    u_sc_bricks_out_TB = new sc_bricks_out_TB("u_sc_bricks_out_TB");

    // Initialize SC
    sc_start(0,SC_NS);
    cout<<"#"<<sc_time_stamp()<<" SystemC started"<<endl;
}

// Call-Back: Read from HDL & Drive SystemC TB
void sample_hdl(void *In_vector)
{
    IN_VECTOR *p = (IN_VECTOR *)In_vector;
    u_sc_bricks_out_TB->v_sync.write(p->v_sync);
    u_sc_bricks_out_TB->pixel.write(p->pixel);
    u_sc_bricks_out_TB->p_tick.write(p->p_tick);
    u_sc_bricks_out_TB->game_over.write(p->game_over);
    u_sc_bricks_out_TB->game_complete.write(p->game_complete);
}
// Call-Back: Read from SystemC TB & Drive HDL
void drive_hdl(void *Out_vector)
{
    OUT_VECTOR *p   = (OUT_VECTOR *)Out_vector;
    p->end_of_sim   = u_sc_bricks_out_TB->sc_Stopped.read();
    p->clk          = u_sc_bricks_out_TB->clk.read();
    p->reset        = u_sc_bricks_out_TB->reset.read();
    p->btn_left     = u_sc_bricks_out_TB->btn_left.read();
    p->btn_right    = u_sc_bricks_out_TB->btn_right.read();
    p->game_new     = u_sc_bricks_out_TB->game_new.read();
}
// Advance SystemC kernel
void exec_sc(void *invector, void *outvector)
{
    sample_hdl(invector);
    drive_hdl(outvector);
    if (!u_sc_bricks_out_TB->sc_Stopped)
        sc_start(1,SC_TIME_UNIT);
}

void exit_sc()
{
    cout<<"#"<<sc_time_stamp()<<" SystemC stopped"<<endl;
    sc_stop();
}

