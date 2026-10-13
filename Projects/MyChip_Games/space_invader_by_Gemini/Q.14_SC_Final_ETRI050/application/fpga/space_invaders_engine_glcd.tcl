# File: space_invaders_engine_glcd.tcl

# Load Quartus Prime Tcl Project package
package require ::quartus::project
package require ::quartus::flow

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "space_invaders_engine_glcd"]} {
		puts "Project space_invaders_engine_glcd is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists space_invaders_engine_glcd]} {
		project_open -revision space_invaders_engine_glcd space_invaders_engine_glcd
	} else {
		project_new -revision space_invaders_engine_glcd space_invaders_engine_glcd
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
	set_global_assignment -name SYSTEMVERILOG_FILE ../../space_invaders_engine_glcd/space_invaders_engine_glcd.v
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name DEVICE_FILTER_PACKAGE TQFP
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 144
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 8
	set_global_assignment -name RESERVE_ALL_UNUSED_PINS "AS INPUT TRI-STATED"
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top

    set_location_assignment PIN_135 -to clk
    set_location_assignment PIN_133 -to rst_n
    set_location_assignment PIN_132 -to v_sync
    set_location_assignment PIN_129 -to lcd_data
    set_location_assignment PIN_127 -to btn_left
    set_location_assignment PIN_126 -to btn_right
    set_location_assignment PIN_125 -to btn_fire
    set_location_assignment PIN_128 -to clk_o

	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to rst_n
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to v_sync
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to lcd_data
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to btn_left
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to btn_right
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to btn_fire
	set_instance_assignment -name IO_STANDARD "3.3-V LVCMOS" -to clk_o

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

