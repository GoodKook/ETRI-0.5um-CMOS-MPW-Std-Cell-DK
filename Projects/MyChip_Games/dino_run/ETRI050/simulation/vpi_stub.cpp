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

#include "vpi_dino_run_tb_ports.h"
#include "vpi_dino_run_tb_exports.h"

// RTL-SystemC communitation data
typedef struct dino_run
{
    // Simulation control from SC-TB
    vpiHandle   sync_sc; // Trigger SystemC TB
    vpiHandle   end_of_sim;
    // from SystemC TB to DUT's input ports
    vpiHandle   clk;
    vpiHandle   reset;
    vpiHandle   option;
    vpiHandle   jump;
    // from DUT's output ports to SystemC TB
    vpiHandle   v_sync;
    vpiHandle   pixel;
    vpiHandle   p_tick;
    vpiHandle   game_over;
} t_if;

int sc_dino_run_tb_tf(char *user_data);
int sc_sync_callback(p_cb_data cb_data);

static void my_task(void);

int sc_dino_run_tb_tf(char *user_data)
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
    ip->reset       = vpi_scan(args);
    ip->option      = vpi_scan(args);
    ip->jump        = vpi_scan(args);
    // from DUT's output ports to SystemC TB
    ip->v_sync      = vpi_scan(args);
    ip->pixel       = vpi_scan(args);
    ip->p_tick      = vpi_scan(args);
    ip->game_over   = vpi_scan(args);

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

    vpi_get_value(ip->pixel, &value_s);
    invector.pixel = value_s.value.integer;

    vpi_get_value(ip->p_tick, &value_s);
    invector.p_tick = value_s.value.integer;

    vpi_get_value(ip->game_over, &value_s);
    invector.game_over = value_s.value.integer;

    //---------------------------------------------------------------
    // SystemC Execution
    exec_sc(&invector, &outvector);

    //---------------------------------------------------------------
    // Write to Verilog TB(DUT's input ports)
    value_s.value.integer = outvector.clk;   // dino_run generator from SC
    vpi_put_value(ip->clk, &value_s, NULL, vpiNoDelay); // NO-Delay!!!

    s_vpi_time delay = {vpiSimTime, 0, 10, 0.0}; // Now all inputs to DUT have delay

    value_s.value.integer = outvector.reset;
    vpi_put_value(ip->reset, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.option;
    vpi_put_value(ip->option, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.jump;
    vpi_put_value(ip->jump, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.end_of_sim;   // Ends Simulation
    vpi_put_value(ip->end_of_sim, &value_s, NULL, vpiNoDelay);

    return(0);
}

// my task
static void my_task()
{
      s_vpi_systf_data tf_data;

      tf_data.type      = vpiSysTask;
      tf_data.tfname    = (PLI_BYTE8 *)"$sc_dino_run_tb";    // Verilog TB view
      tf_data.calltf    = sc_dino_run_tb_tf;
      tf_data.compiletf = 0;
      tf_data.sizetf    = 0;
      vpi_register_systf(&tf_data);
}

// register my task
void (*vlog_startup_routines[])() = {
      my_task,
      0
};
