open_project fir_pe
set_top fir_pe

add_files ./source/fir_pe.cpp
open_solution "hls_component" -flow_target vivado
set_part {xa7a100tcsg324-2I}
create_clock -period 1000 -name default
csynth_design
write_ini ./fir_pe.cfg
exit

