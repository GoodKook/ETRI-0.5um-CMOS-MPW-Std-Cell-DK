//=======================================================================
// Co-Simulation of Verilated+SystemC VPI+iVerilog
// Filename: vpi_fir8_tb.cpp
// Purpose: Instantiate SC Testbench,
//          Read HDL signal via VPI call-back & Write to SC signals
// Author: GoodKook, goodkook@gmail.com
// History: 2024, Aug. 31
//

#include "systemc.h"
#include "sc_fir8_tb.h"

#include "vpi_fir8_tb_ports.h"
#include "vpi_fir8_tb_exports.h"

#define CLOCK_PERIOD    50
#define SC_TIME_UNIT    SC_NS

// Instantiate SystemC TB module
sc_fir8_tb  u_sc_fir8_tb("u_sc_fir8_tb");

// Local SystemC Signals
sc_clock                clk("clk", CLOCK_PERIOD, SC_TIME_UNIT, 0.5, 0.0, SC_TIME_UNIT, true);
sc_signal<sc_uint<4> >  eXout;
sc_signal<sc_uint<4> >  eYout;
sc_signal<bool>         eVld;
sc_signal<sc_uint<4> >  eXin;
sc_signal<sc_uint<4> >  eYin;
sc_signal<bool>         eRdy;

// Init. SystemC
void init_sc()
{
    // Port mapping
    u_sc_fir8_tb.clk(clk);
    u_sc_fir8_tb.eXin(eXin);
    u_sc_fir8_tb.eYin(eYin);
    u_sc_fir8_tb.eRdy(eRdy);
    u_sc_fir8_tb.eXout(eXout);
    u_sc_fir8_tb.eYout(eYout);
    u_sc_fir8_tb.eVld(eVld);

    // Initialize SC
    sc_start(0,SC_NS);
    cout<<"#"<<sc_time_stamp()<<" SystemC started"<<endl;
}

// Read HDL by Call-Back
void sample_hdl(void *In_vector)
{
    IN_VECTOR *p = (IN_VECTOR *)In_vector;
    eXout.write(p->eXout);
    eYout.write(p->eYout);
    eVld.write(p->eVld);
}
// Write HDL by Call-Back
void drive_hdl(void *Out_vector)
{
    OUT_VECTOR *p = (OUT_VECTOR *)Out_vector;
    p->clk  = clk.read();
    p->eXin = eXin.read();
    p->eYin = eYin.read();
    p->eRdy = eRdy.read();
    p->end_of_sim = u_sc_fir8_tb.sc_Stopped;
}

void exec_sc(void *invector, void *outvector)
{
    sample_hdl(invector);
    drive_hdl(outvector);
    if (!u_sc_fir8_tb.sc_Stopped)
        sc_start(1,SC_TIME_UNIT);
}

void exit_sc()
{
    cout<<"#"<<sc_time_stamp()<<" SystemC stopped"<<endl;
    sc_stop();
}

