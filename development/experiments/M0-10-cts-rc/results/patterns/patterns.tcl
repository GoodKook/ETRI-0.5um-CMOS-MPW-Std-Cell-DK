# Geometry generation only. No reference extraction or rule fitting here.
read_lef ../technology.lef
bench_wires -v1 -all -met_cnt 3 -cnt 3 -len 10 -w_list {1} -s_list {1 2}
bench_verilog patterns.v
write_def patterns.def
write_db patterns.odb
