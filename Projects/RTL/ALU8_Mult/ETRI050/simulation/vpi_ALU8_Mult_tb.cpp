//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_ALU8_Mult_tb.cpp
// Purpose: Instantiate SC Testbench,
//          Read HDL signal via VPI call-back & Write to SC signals
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#include <systemc.h>
#include "sc_ALU8_Mult_TB.h"

#include "vpi_ALU8_Mult_tb_ports.h"
#include "vpi_ALU8_Mult_tb_exports.h"

#define CLOCK_PERIOD    50
#define SC_TIME_UNIT    SC_NS

// Instantiate SystemC TB module
sc_ALU8_Mult_TB*  u_sc_ALU8_Mult_TB;

// Init. SystemC
void init_sc()
{
    // Instantiate SystemC TB
    u_sc_ALU8_Mult_TB = new sc_ALU8_Mult_TB("u_sc_ALU8_Mult_TB");

    // Initialize SC
    sc_start(0,SC_NS);
    cout<<"#"<<sc_time_stamp()<<" SystemC started"<<endl;
}

// Call-Back: Read from HDL & Drive SystemC TB
void sample_hdl(void *In_vector)
{
    IN_VECTOR *p = (IN_VECTOR *)In_vector;
    u_sc_ALU8_Mult_TB->ACC_o.write(p->ACC_o);
    u_sc_ALU8_Mult_TB->Done_o.write(p->Done_o);
}
// Call-Back: Read from SystemC TB & Drive HDL
void drive_hdl(void *Out_vector)
{
    OUT_VECTOR *p   = (OUT_VECTOR *)Out_vector;
    p->end_of_sim   = u_sc_ALU8_Mult_TB->sc_Stopped.read();
    p->clk          = u_sc_ALU8_Mult_TB->clk.read();
    p->reset        = u_sc_ALU8_Mult_TB->reset.read();
    p->LoadA_i      = u_sc_ALU8_Mult_TB->LoadA_i.read();
    p->LoadB_i      = u_sc_ALU8_Mult_TB->LoadB_i.read();
    p->LoadCmd_i    = u_sc_ALU8_Mult_TB->LoadCmd_i.read();
    p->ABCmd_i      = u_sc_ALU8_Mult_TB->ABCmd_i.read();
}
// Advance SystemC kernel
void exec_sc(void *invector, void *outvector)
{
    sample_hdl(invector);
    drive_hdl(outvector);
    if (!u_sc_ALU8_Mult_TB->sc_Stopped)
        sc_start(1,SC_TIME_UNIT);
}

void exit_sc()
{
    cout<<"#"<<sc_time_stamp()<<" SystemC stopped"<<endl;
    sc_stop();
}

