//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog
// Filename: vpi_apple_1_tb.cpp
// Purpose: Instantiate SC Testbench,
//          Read HDL signal via VPI call-back & Write to SC signals
// Author: GoodKook, goodkook@gmail.com
// History: 2025, Aug. 31
//

#include <systemc.h>
#include "sc_apple_1_TB.h"

#include "vpi_apple_1_tb_ports.h"
#include "vpi_apple_1_tb_exports.h"

#define CLOCK_PERIOD    50
#define SC_TIME_UNIT    SC_NS

// Instantiate SystemC TB module
sc_apple_1_TB*  u_sc_apple_1_TB;

// Init. SystemC
void init_sc()
{
    // Instantiate SystemC TB
    u_sc_apple_1_TB = new sc_apple_1_TB("u_sc_apple_1_TB");

    // Initialize SC
    sc_start(0,SC_NS);
    cout<<"#"<<sc_time_stamp()<<" SystemC started"<<endl;
}

// Call-Back: Read from HDL & Drive SystemC TB
void sample_hdl(void *In_vector)
{
    IN_VECTOR *p = (IN_VECTOR *)In_vector;
    u_sc_apple_1_TB->AB.write(p->AB);
    u_sc_apple_1_TB->DO.write(p->DO);
    u_sc_apple_1_TB->WE.write(p->WE);
}
// Call-Back: Read from SystemC TB & Drive HDL
void drive_hdl(void *Out_vector)
{
    OUT_VECTOR *p   = (OUT_VECTOR *)Out_vector;
    p->end_of_sim   = u_sc_apple_1_TB->sc_Stopped.read();
    p->clk          = u_sc_apple_1_TB->clk.read();
    p->reset        = u_sc_apple_1_TB->reset.read();
    p->DI           = u_sc_apple_1_TB->DI.read();
    p->IRQ          = u_sc_apple_1_TB->IRQ.read();
    p->NMI          = u_sc_apple_1_TB->NMI.read();
    p->RDY          = u_sc_apple_1_TB->RDY.read();
    p->en_woz       = u_sc_apple_1_TB->en_woz.read();
}
// Advance SystemC kernel
void exec_sc(void *invector, void *outvector)
{
    sample_hdl(invector);
    drive_hdl(outvector);
    if (!u_sc_apple_1_TB->sc_Stopped)
        sc_start(1,SC_TIME_UNIT);
}

void exit_sc()
{
    cout<<"#"<<sc_time_stamp()<<" SystemC stopped"<<endl;
    sc_stop();
}

