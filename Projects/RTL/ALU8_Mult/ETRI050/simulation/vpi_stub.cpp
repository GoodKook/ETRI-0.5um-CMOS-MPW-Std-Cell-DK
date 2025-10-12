//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog'
// Filename: vpi_stub.cpp
// Pirpose: VPI stub, Define interface to Verilog, Register Call-Back
// Author: GoodKook, goodkook@gmail.com
// History: 2024, Aug., 31

#include <stdio.h>
#include <stdlib.h>
#include <vpi_user.h>
#include <veriuser.h>

#include "vpi_ALU8_Mult_tb_ports.h"
#include "vpi_ALU8_Mult_tb_exports.h"

// RTL-SystemC communitation data
typedef struct ALU8_Mult
{
    // Simulation control from SC-TB
    vpiHandle   sync_sc; // Trigger SystemC TB
    vpiHandle   end_of_sim;
    // from SystemC TB to DUT's input ports
    vpiHandle   clk;
    vpiHandle   reset;
    vpiHandle   ABCmd_i;
    vpiHandle   LoadA_i;
    vpiHandle   LoadB_i;
    vpiHandle   LoadCmd_i;
    // from DUT's output ports to SystemC TB
    vpiHandle   ACC_o;
    vpiHandle   Done_o;
} t_if;

int sc_ALU8_Mult_tb_tf(char *user_data);
int sc_sync_callback(p_cb_data cb_data);

static void my_task(void);

int sc_ALU8_Mult_tb_tf(char *user_data)
{
    vpiHandle   inst_h, args;
    s_vpi_value value_s;
    s_vpi_time  time_s;
    s_cb_data   cb_data_s;
    s_cb_data   cb_data_as;
    t_if        *ip;

    ip = (t_if *)malloc(sizeof(t_if));

    //---------------------------------------------------------------
    // get arguments from RTL 
    inst_h  = vpi_handle(vpiSysTfCall, 0);
    args    = vpi_iterate(vpiArgument, inst_h);

    //---------------------------------------------------------------
    // set arguments (Positional!)
    // Simulation control from SC-TB
    ip->sync_sc     = vpi_scan(args);    // Trigger SystemC TB
    ip->end_of_sim  = vpi_scan(args);
    // from SystemC TB to DUT's input ports
    ip->clk         = vpi_scan(args);
    ip->reset       = vpi_scan(args);
    ip->ABCmd_i     = vpi_scan(args);
    ip->LoadA_i     = vpi_scan(args);
    ip->LoadB_i     = vpi_scan(args);
    ip->LoadCmd_i   = vpi_scan(args);
    // from DUT's output ports to SystemC TB
    ip->ACC_o       = vpi_scan(args);
    ip->Done_o      = vpi_scan(args);

    vpi_free_object(args);
  
    //---------------------------------------------------------------
    // setup callback (Sync)
    cb_data_s.user_data = (char *)ip;
    cb_data_s.reason    = cbValueChange;
    cb_data_s.cb_rtn    = sc_sync_callback; // callback
    cb_data_s.time      = &time_s;
    cb_data_s.value     = &value_s;

    time_s.type         = vpiSimTime;
    value_s.format      = vpiIntVal;

    cb_data_s.obj       = ip->sync_sc;
    vpi_register_cb(&cb_data_s);

    init_sc();  // Initialize SystemC

    return(0);
}

// Sync. callback at Value change
int sc_sync_callback(p_cb_data cb_data)
{
    t_if  *ip;
    s_vpi_value  value_s;

    // IO ports systemC testbench
    static IN_VECTOR   invector;
    static OUT_VECTOR  outvector;
  
    ip = (t_if *)cb_data->user_data;
  
    //---------------------------------------------------------------
    // Read from Verilog TB(Sync. & DUT's output ports)
    value_s.format = vpiIntVal;

    vpi_get_value(ip->sync_sc, &value_s);   // Sync. Control
    invector.sync_sc = value_s.value.integer;
    if (!invector.sync_sc)  return(0);  // if NOT pos-edge,

    vpi_get_value(ip->ACC_o, &value_s);
    invector.ACC_o = value_s.value.integer;

    vpi_get_value(ip->Done_o, &value_s);
    invector.Done_o = value_s.value.integer;

    //---------------------------------------------------------------
    // SystemC Execution
    exec_sc(&invector, &outvector);

    //---------------------------------------------------------------
    // Write to Verilog TB(DUT's input ports)
    value_s.value.integer = outvector.clk;   // ALU8_Mult generator from SC
    vpi_put_value(ip->clk, &value_s, NULL, vpiNoDelay); // NO-Delay!!!

    s_vpi_time delay = {vpiSimTime, 0, 10, 0.0}; // Now all inputs to DUT have delay

    value_s.value.integer = outvector.reset;
    vpi_put_value(ip->reset, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.LoadA_i;
    vpi_put_value(ip->LoadA_i, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.LoadB_i;
    vpi_put_value(ip->LoadB_i, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.LoadCmd_i;
    vpi_put_value(ip->LoadCmd_i, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.ABCmd_i;
    vpi_put_value(ip->ABCmd_i, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.end_of_sim;   // Ends Simulation
    vpi_put_value(ip->end_of_sim, &value_s, NULL, vpiNoDelay);

    return(0);
}

// my task
static void my_task()
{
      s_vpi_systf_data tf_data;

      tf_data.type      = vpiSysTask;
      tf_data.tfname    = (PLI_BYTE8 *)"$sc_ALU8_Mult_tb";    // Verilog TB view
      tf_data.calltf    = sc_ALU8_Mult_tb_tf;
      tf_data.compiletf = 0;
      tf_data.sizetf    = 0;
      vpi_register_systf(&tf_data);
}

// register my task
void (*vlog_startup_routines[])() = {
      my_task,
      0
};
