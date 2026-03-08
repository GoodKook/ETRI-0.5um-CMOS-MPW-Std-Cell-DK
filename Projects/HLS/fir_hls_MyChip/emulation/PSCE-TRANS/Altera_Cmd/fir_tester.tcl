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
# File: fir_tester.tcl
# Generated on: Tue Aug 19 12:41:53 2025

# Load Quartus Prime Tcl Project package
package require ::quartus::project
package require ::quartus::flow

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "fir_tester"]} {
		puts "Project fir_tester is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists fir_tester]} {
		project_open -revision fir_tester fir_tester
	} else {
		project_new -revision fir_tester fir_tester
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone IV E"
	set_global_assignment -name DEVICE EP4CE6E22C8
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 24.1STD.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "17:09:03  APRIL 25, 2025"
	set_global_assignment -name LAST_QUARTUS_VERSION "24.1std.0 Standard Edition"
	set_global_assignment -name VERILOG_FILE ../../fir_tester.v
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
# Pad Limited MyChip
#                 +------\_/------+
#         ready---|1            28|<--x[1]
#           rst-->|2            27|<--x[6]
#           clk-->|3            26|<--x[0]
#          x[5]-->|4            25|<--x[4]
#          x[3]-->|5            24|<--x[7]
#          y[1]-->|6  fir_hls   23|<--x[2]
#          y[2]---|7            22|<--GND
#           VDD<--|8            21|---NC
#          y[5]<--|9            20|-->NC
#          y[3]<--|10           19|-->NC
#          y[0]<--|11           18|-->NC
#          y[4]-->|12           17|-->NC
#          y[6]-->|13           16|-->NC
#          y[7]-->|14           15|<--NC
#                 +---------------+
#                      SOP28
    set_location_assignment PIN_30 -to xready
    set_location_assignment PIN_28 -to xrst
	set_location_assignment PIN_32 -to xclk
    set_location_assignment PIN_31 -to xx[5]
	set_location_assignment PIN_34 -to xx[3]
	set_location_assignment PIN_33 -to xy[1]
	set_location_assignment PIN_39 -to xy[2]
    set_location_assignment PIN_38 -to xVDD
    set_location_assignment PIN_43 -to xy[5]
	set_location_assignment PIN_42 -to xy[3]
	set_location_assignment PIN_46 -to xy[0]
	set_location_assignment PIN_44 -to xy[4]
    set_location_assignment PIN_50 -to xy[6]
	set_location_assignment PIN_49 -to xy[7]
#	set_location_assignment PIN_52 -to
#   set_location_assignment PIN_51 -to
#	set_location_assignment PIN_54 -to
#	set_location_assignment PIN_53 -to
#	set_location_assignment PIN_58 -to
#	set_location_assignment PIN_55 -to
#	set_location_assignment PIN_60 -to
	set_location_assignment PIN_59 -to xGND
	set_location_assignment PIN_65 -to xx[2]
	set_location_assignment PIN_64 -to xx[7]
	set_location_assignment PIN_67 -to xx[4]
	set_location_assignment PIN_66 -to xx[0]
    set_location_assignment PIN_69 -to xx[6]
	set_location_assignment PIN_68 -to xx[1]

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

    set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xready
    set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xrst
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xclk
    set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xx[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xx[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xy[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xy[2]
    set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xVDD
    set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xy[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xy[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xy[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xy[4]
    set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xy[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xy[7]
#	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to 
#   set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to 
#	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to 
#	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to 
#	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to 
#	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to 
#	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to 
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xGND
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xx[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xx[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xx[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xx[0]
    set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xx[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to xx[1]

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

