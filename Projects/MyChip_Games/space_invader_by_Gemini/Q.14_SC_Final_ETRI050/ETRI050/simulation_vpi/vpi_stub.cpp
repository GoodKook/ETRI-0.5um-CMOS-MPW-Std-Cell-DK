//=======================================================================
// Co-Simulation of SystemC VPI+iVerilog'
// Filename: vpi_stub.cpp
// Pirpose: VPI stub, Define interface to Verilog, Register Call-Back
// Author: GoodKook, goodkook@gmail.com
// History: 2026, Jul., 31

#include <stdio.h>
#include <stdlib.h>
#include <vpi_user.h>
#include <veriuser.h>

#include "vpi_space_invaders_engine_glcd_tb_ports.h"
#include "vpi_space_invaders_engine_glcd_tb_exports.h"

// RTL-SystemC communitation data
typedef struct space_invaders_engine_glcd
{
    // Simulation control from SC-TB
    vpiHandle   sync_sc; // Trigger SystemC TB
    vpiHandle   end_of_sim;
    // from SystemC TB to DUT's input ports
    vpiHandle   clk;
    vpiHandle   rst_n;
    vpiHandle   btn_left;
    vpiHandle   btn_right;
    vpiHandle   btn_fire;
    // from DUT's output ports to SystemC TB
    vpiHandle   v_sync;
    vpiHandle   lcd_data;
    vpiHandle   clk_o;
} t_if;

int sc_space_invaders_engine_glcd_tb_tf(char *user_data);
int sc_sync_callback(p_cb_data cb_data);

static void my_task(void);

int sc_space_invaders_engine_glcd_tb_tf(char *user_data)
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
    inst_h = vpi_handle(vpiSysTfCall, 0);
    args = vpi_iterate(vpiArgument, inst_h);

    //---------------------------------------------------------------
    // set arguments (Positional!)
    // Simulation control from SC-TB
    ip->sync_sc     = vpi_scan(args);    // Trigger SystemC TB
    ip->end_of_sim  = vpi_scan(args);
    // from SystemC TB to DUT's input ports
    ip->clk         = vpi_scan(args);
    ip->rst_n       = vpi_scan(args);
    ip->btn_left    = vpi_scan(args);
    ip->btn_right   = vpi_scan(args);
    ip->btn_fire    = vpi_scan(args);
    // from DUT's output ports to SystemC TB
    ip->v_sync      = vpi_scan(args);
    ip->lcd_data    = vpi_scan(args);
    ip->clk_o       = vpi_scan(args);

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

    vpi_get_value(ip->v_sync, &value_s);
    invector.v_sync = value_s.value.integer;

    vpi_get_value(ip->lcd_data, &value_s);
    invector.lcd_data = value_s.value.integer;

    vpi_get_value(ip->clk_o, &value_s);
    invector.clk_o = value_s.value.integer;

    //---------------------------------------------------------------
    // SystemC Execution
    exec_sc(&invector, &outvector);

    //---------------------------------------------------------------
    // Write to Verilog TB(DUT's input ports)
    value_s.value.integer = outvector.clk;   // space_invaders_engine_glcd generator from SC
    vpi_put_value(ip->clk, &value_s, NULL, vpiNoDelay); // NO-Delay!!!

    s_vpi_time delay = {vpiSimTime, 0, 10, 0.0}; // Now all inputs to DUT have delay

    value_s.value.integer = outvector.rst_n;
    vpi_put_value(ip->rst_n, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.btn_left;
    vpi_put_value(ip->btn_left, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.btn_right;
    vpi_put_value(ip->btn_right, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.btn_fire;
    vpi_put_value(ip->btn_fire, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.end_of_sim;   // Ends Simulation
    vpi_put_value(ip->end_of_sim, &value_s, NULL, vpiNoDelay);

    return(0);
}

// my task
static void my_task()
{
      s_vpi_systf_data tf_data;

      tf_data.type      = vpiSysTask;
      tf_data.tfname    = (PLI_BYTE8 *)"$sc_space_invaders_engine_glcd_tb";    // Verilog TB view
      tf_data.calltf    = sc_space_invaders_engine_glcd_tb_tf;
      tf_data.compiletf = 0;
      tf_data.sizetf    = 0;
      vpi_register_systf(&tf_data);
}

// register my task
void (*vlog_startup_routines[])() = {
      my_task,
      0
};
