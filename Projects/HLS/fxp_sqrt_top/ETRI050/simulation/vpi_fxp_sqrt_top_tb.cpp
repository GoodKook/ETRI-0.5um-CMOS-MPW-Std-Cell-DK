//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_fxp_sqrt_top_tb.cpp
// Purpose: Instantiate SC Testbench,
//          Read HDL signal via VPI call-back & Write to SC signals
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#include <systemc.h>
#include "sc_fxp_sqrt_top_TB.h"

#include "vpi_fxp_sqrt_top_tb_ports.h"
#include "vpi_fxp_sqrt_top_tb_exports.h"

#define CLOCK_PERIOD    50
#define SC_TIME_UNIT    SC_NS

// Instantiate SystemC TB module
sc_fxp_sqrt_top_TB*  u_sc_fxp_sqrt_top_TB;

// Init. SystemC
void init_sc()
{
    // Instantiate SystemC TB
    u_sc_fxp_sqrt_top_TB = new sc_fxp_sqrt_top_TB("u_sc_fxp_sqrt_top_TB");

    // Initialize SC
    sc_start(0,SC_NS);
    cout<<"#"<<sc_time_stamp()<<" SystemC started"<<endl;
}

// Call-Back: Read from HDL & Drive SystemC TB
void sample_hdl(void *In_vector)
{
    IN_VECTOR *p = (IN_VECTOR *)In_vector;
    u_sc_fxp_sqrt_top_TB->ap_done.write(p->ap_done);
    u_sc_fxp_sqrt_top_TB->ap_idle.write(p->ap_idle);
    u_sc_fxp_sqrt_top_TB->ap_ready.write(p->ap_ready);
    u_sc_fxp_sqrt_top_TB->ap_return.write(p->ap_return);
}
// Call-Back: Read from SystemC TB & Drive HDL
void drive_hdl(void *Out_vector)
{
    OUT_VECTOR *p   = (OUT_VECTOR *)Out_vector;
    p->end_of_sim   = u_sc_fxp_sqrt_top_TB->sc_Stopped.read();
    p->ap_clk       = u_sc_fxp_sqrt_top_TB->ap_clk.read();
    p->ap_rst       = u_sc_fxp_sqrt_top_TB->ap_rst.read();
    p->ap_start     = u_sc_fxp_sqrt_top_TB->ap_start.read();
    p->in_val       = u_sc_fxp_sqrt_top_TB->in_val.read();
}
// Advance SystemC kernel
void exec_sc(void *invector, void *outvector)
{
    sample_hdl(invector);
    drive_hdl(outvector);
    if (!u_sc_fxp_sqrt_top_TB->sc_Stopped)
        sc_start(1,SC_TIME_UNIT);
}

void exit_sc()
{
    cout<<"#"<<sc_time_stamp()<<" SystemC stopped"<<endl;
    sc_stop();
}

