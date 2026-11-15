read_lef technology.lef
read_lef cells.lef
read_liberty cells.lib
read_db preroute.odb
read_sdc constraints.sdc
set_wire_rc -signal -layer MET2
set_wire_rc -clock -layer MET3
set_routing_layers -signal MET1-MET3 -clock MET1-MET3
global_route
detailed_route -output_drc direct-drc.rpt -verbose 0
write_def direct-final.def
