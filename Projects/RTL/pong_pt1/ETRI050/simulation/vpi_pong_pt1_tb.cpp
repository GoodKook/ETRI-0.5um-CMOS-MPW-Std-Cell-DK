//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_pong_pt1_tb.cpp
// Purpose: Instantiate SC Testbench,
//          Read HDL signal via VPI call-back & Write to SC signals
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#include <systemc.h>
#include "sc_pong_pt1_TB.h"

#include "vpi_pong_pt1_tb_ports.h"
#include "vpi_pong_pt1_tb_exports.h"

#define CLOCK_PERIOD    50
#define SC_TIME_UNIT    SC_NS

// Instantiate SystemC TB module
sc_pong_pt1_TB*  u_sc_pong_pt1_TB;

// Init. SystemC
void init_sc()
{
    // Instantiate SystemC TB
    u_sc_pong_pt1_TB = new sc_pong_pt1_TB("u_sc_pong_pt1_TB");

    // Initialize SC
    sc_start(0,SC_NS);
    cout<<"#"<<sc_time_stamp()<<" SystemC started"<<endl;
}

// Call-Back: Read from HDL & Drive SystemC TB
void sample_hdl(void *In_vector)
{
    IN_VECTOR *p = (IN_VECTOR *)In_vector;
    u_sc_pong_pt1_TB->p_tick.write(p->p_tick);
    u_sc_pong_pt1_TB->hsync.write(p->hsync);
    u_sc_pong_pt1_TB->vsync.write(p->vsync);
    u_sc_pong_pt1_TB->rgb.write(p->rgb);
}
// Call-Back: Read from SystemC TB & Drive HDL
void drive_hdl(void *Out_vector)
{
    OUT_VECTOR *p   = (OUT_VECTOR *)Out_vector;
    p->end_of_sim   = u_sc_pong_pt1_TB->sc_Stopped.read();
    p->clk          = u_sc_pong_pt1_TB->clk.read();
    p->reset        = u_sc_pong_pt1_TB->reset.read();
    p->enable       = u_sc_pong_pt1_TB->enable.read();
    p->up           = u_sc_pong_pt1_TB->up.read();
    p->down         = u_sc_pong_pt1_TB->down.read();
}
// Advance SystemC kernel
void exec_sc(void *invector, void *outvector)
{
    sample_hdl(invector);
    drive_hdl(outvector);
    if (!u_sc_pong_pt1_TB->sc_Stopped)
        sc_start(1,SC_TIME_UNIT);
}

void exit_sc()
{
    cout<<"#"<<sc_time_stamp()<<" SystemC stopped"<<endl;
    sc_stop();
}

