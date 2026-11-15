read_lef technology.lef
read_lef cells.lef
read_def {/home/wbyoon/snu_ssc/ETRI-0.5um-CMOS-MPW-Std-Cell-DK/development/experiments/M0-09-qflow/results/layout/handoff.def}
define_process_corner -ext_model_index 0 estimated_LEF
extract_parasitics -lef_rc
write_spef rcx-probe.spef
