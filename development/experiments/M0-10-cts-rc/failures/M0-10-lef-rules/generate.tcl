read_lef technology.lef
bench_wires -met_cnt 3 -cnt 3 -len 10 -w_list {1} -s_list {1}
write_rules -file unqualified.rules -db
