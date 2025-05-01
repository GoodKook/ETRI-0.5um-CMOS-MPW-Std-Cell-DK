#!/bin/tcsh -f
#------------------------------------------------------------
# project variables for project ~/ETRI050_DesignKit/devel/Tutorials/2-6_Lab5_FIR8_rtl_ETRI050
#------------------------------------------------------------

# Flow options:
# -------------------------------------------
set synthesis_tool = yosys
set placement_tool = graywolf
set sta_tool = vesta
set router_tool = qrouter
set migrate_tool = magic_db
set lvs_tool = netgen_lvs
set drc_tool = magic_drc
set gds_tool = magic_gds
set display_tool = magic_view

# Synthesis command options:
# -------------------------------------------
# set hard_macros =
# set yosys_options =
# set yosys_script =
# set yosys_debug =
# set abc_script =
# set nobuffers =
# set inbuffers =
# set postproc_options =
# set xspice_options =
# set fill_ratios =
# set nofanout =
# set fanout_options = "-l 300 -c 75"
# set source_file_list =
# set is_system_verilog =

# Placement command options:
# -------------------------------------------
set initial_density = 0.6
# set graywolf_options =
set addspacers_power = "-stripe 8.0 225.0 PG"

# Router command options:
# -------------------------------------------
set route_show = 1
# set route_layers =
# set via_use =
# set via_stacks =
# set qrouter_options =
# set qrouter_nocleanup =

# STA command options:
# -------------------------------------------

# Minimum period of the clock use "--period value" (value in ps)
set vesta_options = "--long"

# Other options:
# -------------------------------------------
# set migrate_gdsview =
# set migrate_options =
# set lef_options =
# set drc_gdsview =
# set drc_options =
# set gds_options =

#------------------------------------------------------------

