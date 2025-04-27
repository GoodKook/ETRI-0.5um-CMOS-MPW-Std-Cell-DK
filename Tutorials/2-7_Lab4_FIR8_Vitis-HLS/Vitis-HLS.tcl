open_project fir
set_top fir

add_files ../2-5_Lab3_FIR8/c_untimed/fir8.cpp
open_solution "hls_component" -flow_target vivado
set_part {xa7a100tcsg324-2I}
create_clock -period 1000 -name default
csynth_design
write_ini ./fir.cfg
exit

