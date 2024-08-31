//=======================================================================
// Co-Simulation of Verilated+SystemC VPI+iVerilog'
// Filename: vpi_stub.cpp
// Pirpose: VPI stub, Define interface to Verilog, Register Call-Back
// Author: GoodKook, goodkook@gmail.com
// History: 2024, Aug., 31

#include <stdio.h>
#include <stdlib.h>
#include <vpi_user.h>
#include <veriuser.h>

#include "vpi_fir8_tb_ports.h"
#include "vpi_fir8_tb_exports.h"

#define CLK_HALF_CYCLE 5

// RTL-SystemC communitation data
typedef struct fir8_pe {
    vpiHandle  clk_sc;
    vpiHandle  clk;
    vpiHandle  eXin;
    vpiHandle  eYin;
    vpiHandle  eXout;
    vpiHandle  eYout;
    vpiHandle  eRdy;
    vpiHandle  eVld;
} t_if;

int sc_fir8_tb_tf(char *user_data);
int sc_clk_callback(p_cb_data cb_data);

static void my_task(void);

int sc_fir8_tb_tf(char *user_data)
{
    vpiHandle   inst_h, args;
    s_vpi_value value_s;
    s_vpi_time  time_s;
    s_cb_data   cb_data_s;
    s_cb_data   cb_data_as;
    t_if        *ip;

    ip = (t_if *)malloc(sizeof(t_if));
  
    // get arguments from RTL 
    inst_h = vpi_handle(vpiSysTfCall, 0);
    args = vpi_iterate(vpiArgument, inst_h);

    // set arguments (Positional!)
    ip->clk     = vpi_scan(args);
    ip->clk_sc  = vpi_scan(args);
    ip->eXin    = vpi_scan(args);
    ip->eYin    = vpi_scan(args);
    ip->eXout   = vpi_scan(args);
    ip->eYout   = vpi_scan(args);
    ip->eRdy    = vpi_scan(args);
    ip->eVld    = vpi_scan(args);

    vpi_free_object(args);
  
    // setup callback (clk Sync)
    cb_data_s.user_data = (char *)ip;
    cb_data_s.reason    = cbValueChange;
    cb_data_s.cb_rtn    = sc_clk_callback; // callback
    cb_data_s.time      = &time_s;
    cb_data_s.value     = &value_s;

    time_s.type         = vpiSimTime;
    value_s.format      = vpiIntVal;

    cb_data_s.obj       = ip->clk;
    vpi_register_cb(&cb_data_s);

    init_sc();  // Initialize SystemC

    return(0);
}

// Sync. callback at Value change
int sc_clk_callback(p_cb_data cb_data)
{
    t_if  *ip;
    s_vpi_value  value_s;

    // IO ports systemC testbench
    static IN_VECTOR   invector;
    static OUT_VECTOR  outvector;
  
    ip = (t_if *)cb_data->user_data;
  
    // Read current RTL value
    value_s.format = vpiIntVal;

    vpi_get_value(ip->clk, &value_s);
    invector.clk = value_s.value.integer;

    vpi_get_value(ip->eXout, &value_s);
    invector.eXout = value_s.value.integer;

    vpi_get_value(ip->eYout, &value_s);
    invector.eYout = value_s.value.integer;

    vpi_get_value(ip->eVld, &value_s);
    invector.eVld = value_s.value.integer;

    // SystemC Execution
    exec_sc(&invector, &outvector, (CLK_HALF_CYCLE));

    value_s.value.integer = outvector.clk_sc;
    vpi_put_value(ip->clk_sc, &value_s, NULL, vpiNoDelay);

    s_vpi_time delay = {vpiSimTime, 0, 1, 0.0};
///* DELAY MODES */
//#define vpiNoDelay            1
//#define vpiInertialDelay      2
//#define vpiTransportDelay     3
//#define vpiPureTransportDelay 4

    value_s.value.integer = outvector.eXin;
    vpi_put_value(ip->eXin, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.eYin;
    vpi_put_value(ip->eYin, &value_s, &delay, vpiTransportDelay);

    value_s.value.integer = outvector.eRdy;
    vpi_put_value(ip->eRdy, &value_s, &delay, vpiTransportDelay);

    return(0);
}

// my task
static void my_task()
{
      s_vpi_systf_data tf_data;

      tf_data.type      = vpiSysTask;
      tf_data.tfname    = "$sc_fir8_tb";
      tf_data.calltf    = sc_fir8_tb_tf;
      tf_data.compiletf = 0;
      tf_data.sizetf    = 0;
      vpi_register_systf(&tf_data);
}

// register my task
void (*vlog_startup_routines[])() = {
      my_task,
      0
};
