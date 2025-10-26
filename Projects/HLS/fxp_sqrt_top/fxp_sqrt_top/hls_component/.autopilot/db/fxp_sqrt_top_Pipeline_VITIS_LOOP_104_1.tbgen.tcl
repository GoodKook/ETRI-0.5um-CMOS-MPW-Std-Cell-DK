set moduleName fxp_sqrt_top_Pipeline_VITIS_LOOP_104_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 3
set C_modelName {fxp_sqrt_top_Pipeline_VITIS_LOOP_104_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ zext_ln90 int 28 regular  }
	{ s_5_out int 31 regular {pointer 1}  }
	{ p_v_out int 28 regular {pointer 1}  }
	{ q_1_out int 29 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln90", "interface" : "wire", "bitwidth" : 28, "direction" : "READONLY"} , 
 	{ "Name" : "s_5_out", "interface" : "wire", "bitwidth" : 31, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_v_out", "interface" : "wire", "bitwidth" : 28, "direction" : "WRITEONLY"} , 
 	{ "Name" : "q_1_out", "interface" : "wire", "bitwidth" : 29, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln90 sc_in sc_lv 28 signal 0 } 
	{ s_5_out sc_out sc_lv 31 signal 1 } 
	{ s_5_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ p_v_out sc_out sc_lv 28 signal 2 } 
	{ p_v_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ q_1_out sc_out sc_lv 29 signal 3 } 
	{ q_1_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln90", "direction": "in", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "zext_ln90", "role": "default" }} , 
 	{ "name": "s_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "s_5_out", "role": "default" }} , 
 	{ "name": "s_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "s_5_out", "role": "ap_vld" }} , 
 	{ "name": "p_v_out", "direction": "out", "datatype": "sc_lv", "bitwidth":28, "type": "signal", "bundle":{"name": "p_v_out", "role": "default" }} , 
 	{ "name": "p_v_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_v_out", "role": "ap_vld" }} , 
 	{ "name": "q_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":29, "type": "signal", "bundle":{"name": "q_1_out", "role": "default" }} , 
 	{ "name": "q_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "q_1_out", "role": "ap_vld" }}  ]}

set ArgLastReadFirstWriteLatency {
	fxp_sqrt_top_Pipeline_VITIS_LOOP_104_1 {
		zext_ln90 {Type I LastRead 0 FirstWrite -1}
		s_5_out {Type O LastRead -1 FirstWrite 1}
		p_v_out {Type O LastRead -1 FirstWrite 1}
		q_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31", "Max" : "31"}
	, {"Name" : "Interval", "Min" : "31", "Max" : "31"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln90 { ap_none {  { zext_ln90 in_data 0 28 } } }
	s_5_out { ap_vld {  { s_5_out out_data 1 31 }  { s_5_out_ap_vld out_vld 1 1 } } }
	p_v_out { ap_vld {  { p_v_out out_data 1 28 }  { p_v_out_ap_vld out_vld 1 1 } } }
	q_1_out { ap_vld {  { q_1_out out_data 1 29 }  { q_1_out_ap_vld out_vld 1 1 } } }
}
