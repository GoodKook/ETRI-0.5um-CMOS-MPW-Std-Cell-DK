# Copyright (C) 2025  Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, the Altera Quartus Prime License Agreement,
# the Altera IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Altera and sold by Altera or its authorized distributors.  Please
# refer to the Altera Software License Subscription Agreements 
# on the Quartus Prime software download page.

# Quartus Prime: Generate Tcl File for Project
# File: fir_pe_wrapper.tcl
# Generated on: Thu Aug 21 21:06:20 2025

# Load Quartus Prime Tcl Project package
package require ::quartus::project
package require ::quartus::flow

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "fir_pe_wrapper"]} {
		puts "Project fir_pe_wrapper is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists fir_pe_wrapper]} {
		project_open -revision fir_pe_wrapper fir_pe_wrapper
	} else {
		project_new -revision fir_pe_wrapper fir_pe_wrapper
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE6E22C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 24.1STD.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "20:35:15  MAY 11, 2025"
	set_global_assignment -name LAST_QUARTUS_VERSION "24.1std.0 Standard Edition"
	set_global_assignment -name VERILOG_FILE "../../../../2-6_FIR_PE/source/fir_pe.v"
	set_global_assignment -name VERILOG_FILE ../../../fir_pe_wrapper.v
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PACKAGE TQFP
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 144
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 8
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_location_assignment PIN_132 -to Dout_emu[7]
	set_location_assignment PIN_135 -to Dout_emu[6]
	set_location_assignment PIN_137 -to Dout_emu[5]
	set_location_assignment PIN_141 -to Dout_emu[4]
	set_location_assignment PIN_133 -to Dout_emu[3]
	set_location_assignment PIN_136 -to Dout_emu[2]
	set_location_assignment PIN_138 -to Dout_emu[1]
	set_location_assignment PIN_142 -to Dout_emu[0]
	set_location_assignment PIN_120 -to Din_emu[7]
	set_location_assignment PIN_124 -to Din_emu[6]
	set_location_assignment PIN_126 -to Din_emu[5]
	set_location_assignment PIN_128 -to Din_emu[4]
	set_location_assignment PIN_121 -to Din_emu[3]
	set_location_assignment PIN_125 -to Din_emu[2]
	set_location_assignment PIN_127 -to Din_emu[1]
	set_location_assignment PIN_129 -to Din_emu[0]
	set_location_assignment PIN_119 -to get_emu
	set_location_assignment PIN_113 -to load_emu
	set_location_assignment PIN_24 -to clk_dut
	set_location_assignment PIN_23 -to clk_emu
	set_location_assignment PIN_111 -to Addr_emu[2]
	set_location_assignment PIN_114 -to Addr_emu[1]
	set_location_assignment PIN_115 -to Addr_emu[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Dout_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Din_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk_dut
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to get_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to load_emu
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to Addr_emu
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Including default assignments
	set_global_assignment -name TIMING_ANALYZER_MULTICORNER_ANALYSIS ON -family "Cyclone IV E"
	set_global_assignment -name TIMING_ANALYZER_REPORT_WORST_CASE_TIMING_PATHS ON -family "Cyclone IV E"
	set_global_assignment -name TIMING_ANALYZER_CCPP_TRADEOFF_TOLERANCE 0 -family "Cyclone IV E"
	set_global_assignment -name TDC_CCPP_TRADEOFF_TOLERANCE 0 -family "Cyclone IV E"
	set_global_assignment -name TIMING_ANALYZER_DO_CCPP_REMOVAL ON -family "Cyclone IV E"
	set_global_assignment -name DISABLE_LEGACY_TIMING_ANALYZER OFF -family "Cyclone IV E"
	set_global_assignment -name SYNTH_TIMING_DRIVEN_SYNTHESIS ON -family "Cyclone IV E"
	set_global_assignment -name SYNCHRONIZATION_REGISTER_CHAIN_LENGTH 2 -family "Cyclone IV E"
	set_global_assignment -name SYNTH_RESOURCE_AWARE_INFERENCE_FOR_BLOCK_RAM ON -family "Cyclone IV E"
	set_global_assignment -name OPTIMIZE_HOLD_TIMING "ALL PATHS" -family "Cyclone IV E"
	set_global_assignment -name OPTIMIZE_MULTI_CORNER_TIMING ON -family "Cyclone IV E"
	set_global_assignment -name AUTO_DELAY_CHAINS ON -family "Cyclone IV E"
	set_global_assignment -name CRC_ERROR_OPEN_DRAIN OFF -family "Cyclone IV E"
	set_global_assignment -name USE_CONFIGURATION_DEVICE OFF -family "Cyclone IV E"
	set_global_assignment -name ENABLE_OCT_DONE OFF -family "Cyclone IV E"

	# Commit assignments
	export_assignments

	execute_flow -compile

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
