# All RC here is an explicitly unqualified LEF estimate. Never a signoff run.
read_lef technology.lef
read_lef cells.lef
read_liberty cells.lib
read_verilog input.v
link_design shift_reg_8bit
read_sdc constraints.sdc
initialize_floorplan -die_area {0 0 320 288} -core_area {16 36 304 252} -site core
make_tracks MET1 -x_offset 1.5 -x_pitch 3.0 -y_offset 1.5 -y_pitch 3.0
make_tracks MET2 -x_offset 1.6 -x_pitch 3.2 -y_offset 1.6 -y_pitch 3.2
make_tracks MET3 -x_offset 3.0 -x_pitch 3.0 -y_offset 3.0 -y_pitch 3.0
set_wire_rc -signal -layer MET2
set_wire_rc -clock -layer MET3
set_pin_length -hor_length 6 -ver_length 6
place_pins -hor_layers MET3 -ver_layers MET2
set_placement_padding -global -left 1 -right 1
global_placement -density 0.45
detailed_placement
check_placement -verbose
write_def placed.def
configure_cts_characterization -max_slew 2.2 -max_cap 1.2
clock_tree_synthesis -buf_list {CLKBUFX2 CLKBUFX4} -root_buf CLKBUFX2 -apply_ndr none \
    -sink_clustering_enable -sink_clustering_size 4 -sink_clustering_max_diameter 100
detailed_placement
check_placement -verbose
report_cts
write_def cts.def
write_verilog cts.v
add_global_connection -net VDD -pin_pattern VDD -power
add_global_connection -net VSS -pin_pattern VSS -ground
global_connect
set_voltage_domain -name CORE -power VDD -ground VSS
define_pdn_grid -name core -voltage_domains CORE -pins {MET2}
add_pdn_stripe -grid core -layer MET1 -width 2 -followpins
add_pdn_stripe -grid core -layer MET2 -width 2 -pitch 76.8 -offset 1.6
add_pdn_connect -grid core -layers {MET1 MET2}
pdngen
check_power_grid -net VDD
check_power_grid -net VSS
write_def preroute.def
write_db preroute.odb
