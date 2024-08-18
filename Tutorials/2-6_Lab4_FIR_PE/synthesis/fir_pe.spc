*SPICE netlist created from verilog structural netlist module fir_pe by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp
* NGSPICE file created from khu_etri050_stdcells.ext - technology: scmos

.subckt AOI22X1 A B C D Y vdd gnd
M1000 Y D a_4_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1001 vdd A a_4_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1002 a_26_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1003 Y B a_26_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1004 a_4_166# C Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1005 a_4_166# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1006 a_56_14# D Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1007 gnd C a_56_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
.ends

.subckt CLKBUF3 A Y vdd gnd
M1000 a_102_14# a_62_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1001 a_62_14# a_22_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1002 gnd a_102_14# a_142_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 a_22_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1004 Y a_262_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1005 a_222_14# a_182_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1006 a_222_14# a_182_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1007 a_262_14# a_222_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1008 gnd a_222_14# a_262_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1009 gnd A a_22_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1010 a_102_14# a_62_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1011 gnd a_62_14# a_102_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1012 vdd a_142_14# a_182_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1013 vdd a_102_14# a_142_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1014 a_182_14# a_142_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1015 vdd a_62_14# a_102_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1016 gnd a_182_14# a_222_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1017 Y a_262_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1018 vdd a_22_14# a_62_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1019 vdd A a_22_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1020 vdd a_222_14# a_262_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1021 a_62_14# a_22_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1022 vdd a_182_14# a_222_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1023 a_142_14# a_102_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1024 gnd a_142_14# a_182_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1025 a_262_14# a_222_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1026 vdd a_262_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1027 gnd a_262_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1028 a_22_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1029 a_142_14# a_102_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1030 a_182_14# a_142_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1031 gnd a_22_14# a_62_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
.ends

.subckt INVX8 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1001 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1002 gnd A Y gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1004 vdd A Y vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1005 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1006 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1007 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
.ends

.subckt NOR3X1 A B C Y vdd gnd
M1000 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=7.200001p ps=10.8u
M1001 a_62_186# C Y vdd pfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=10.8p ps=11.400001u
M1002 vdd A a_4_186# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=18.900002p ps=22.2u
M1003 a_62_186# B a_4_186# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=10.8p ps=11.400001u
M1004 gnd B Y gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1005 Y C a_62_186# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=18.900002p ps=22.2u
M1006 a_4_186# B a_62_186# vdd pfet w=9u l=0.6u
+  ad=18.54p pd=22.2u as=10.8p ps=11.400001u
M1007 a_4_186# A vdd vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=10.8p ps=11.400001u
M1008 Y C gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
.ends

.subckt CLKBUF1 A Y vdd gnd
M1000 a_102_14# a_62_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1001 a_62_14# a_22_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1002 gnd a_102_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1003 a_22_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1004 gnd A a_22_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 a_102_14# a_62_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1006 gnd a_62_14# a_102_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1007 vdd a_102_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1008 vdd a_62_14# a_102_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1009 vdd a_22_14# a_62_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1010 vdd A a_22_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1011 a_62_14# a_22_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1012 Y a_102_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1013 a_22_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1014 Y a_102_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1015 gnd a_22_14# a_62_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
.ends

.subckt MUX2X1 A B S Y vdd gnd
M1000 a_42_22# B gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=6.750001p ps=8.400001u
M1001 Y S a_42_158# vdd pfet w=12u l=0.6u
+  ad=14.76p pd=15.6u as=5.4p ps=12.900001u
M1002 Y a_4_22# a_42_22# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1003 a_42_158# B vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=12.960001p ps=14.400001u
M1004 vdd A a_72_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1005 a_72_22# S Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1006 a_72_166# a_4_22# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.76p ps=15.6u
M1007 vdd S a_4_22# vdd pfet w=6u l=0.6u
+  ad=12.960001p pd=14.400001u as=12.600001p ps=16.2u
M1008 gnd S a_4_22# gnd nfet w=3u l=0.6u
+  ad=6.750001p pd=8.400001u as=6.300001p ps=10.200001u
M1009 gnd A a_72_22# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
.ends

.subckt NAND3X1 A B C Y vdd gnd
M1000 a_32_14# B a_22_14# gnd nfet w=9u l=0.6u
+  ad=6.750001p pd=10.500001u as=4.05p ps=9.900001u
M1001 vdd B Y vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 Y C vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1003 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1004 Y C a_32_14# gnd nfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=6.750001p ps=10.500001u
M1005 a_22_14# A gnd gnd nfet w=9u l=0.6u
+  ad=4.05p pd=9.900001u as=18.900002p ps=22.2u
.ends

.subckt XOR2X1 A B Y vdd gnd
M1000 a_26_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1001 vdd A a_4_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1002 a_42_14# a_26_58# gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1003 Y A a_42_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1004 a_26_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 Y a_4_14# a_42_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1006 vdd B a_72_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1007 a_42_166# a_26_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
M1008 a_72_14# A Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1009 a_72_166# a_4_14# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
M1010 gnd A a_4_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1011 gnd B a_72_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
.ends

.subckt BUFX4 A Y vdd gnd
M1000 vdd a_4_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1001 Y a_4_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=6.975p ps=8.400001u
M1002 vdd A a_4_14# vdd pfet w=9u l=0.6u
+  ad=13.950001p pd=14.400001u as=18.900002p ps=22.2u
M1003 Y a_4_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=13.950001p ps=14.400001u
M1004 gnd a_4_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 gnd A a_4_14# gnd nfet w=4.5u l=0.6u
+  ad=6.975p pd=8.400001u as=9.450001p ps=13.200001u
.ends

.subckt INVX4 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1002 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1003 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt OAI21X1 A B C Y vdd gnd
M1000 a_4_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 a_24_166# A vdd vdd pfet w=12u l=0.6u
+  ad=9p pd=13.500001u as=25.200003p ps=28.200003u
M1002 Y C a_4_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1003 Y B a_24_166# vdd pfet w=12u l=0.6u
+  ad=13.500002p pd=14.400001u as=9p ps=13.500001u
M1004 vdd C Y vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=13.500002p ps=14.400001u
M1005 gnd A a_4_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt DFFNEGX1 D CLK Q vdd gnd
M1000 vdd Q a_174_226# vdd pfet w=3u l=0.6u
+  ad=13.050001p pd=14.400001u as=1.35p ps=3.9u
M1001 a_144_14# a_78_10# gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.300001p ps=10.200001u
M1002 Q a_154_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.750001p ps=8.400001u
M1003 a_40_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.750001p ps=8.400001u
M1004 a_72_206# CLK a_52_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.200001p ps=8.400001u
M1005 a_154_14# a_2_14# a_144_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.35p ps=3.9u
M1006 a_174_226# a_2_14# a_154_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.750001p ps=8.400001u
M1007 vdd a_78_10# a_72_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1008 a_52_14# CLK a_40_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.8p ps=4.2u
M1009 a_78_10# a_52_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=4.05p ps=5.7u
M1010 a_154_14# CLK a_144_206# vdd pfet w=6u l=0.6u
+  ad=6.750001p pd=8.400001u as=2.7p ps=6.9u
M1011 a_174_14# CLK a_154_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1012 vdd CLK a_2_14# vdd pfet w=12u l=0.6u
+  ad=13.500002p pd=14.400001u as=25.200003p ps=28.200003u
M1013 a_40_206# D vdd vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=13.500002p ps=14.400001u
M1014 a_78_10# a_52_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1015 a_144_206# a_78_10# vdd vdd pfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1016 a_72_14# a_2_14# a_52_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1017 a_52_14# a_2_14# a_40_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1018 gnd Q a_174_14# gnd nfet w=3u l=0.6u
+  ad=6.750001p pd=8.400001u as=1.35p ps=3.9u
M1019 gnd CLK a_2_14# gnd nfet w=6u l=0.6u
+  ad=6.750001p pd=8.400001u as=12.600001p ps=16.2u
M1020 Q a_154_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=13.050001p ps=14.400001u
M1021 gnd a_78_10# a_72_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
.ends

.subckt TBUFX2 A EN Y vdd gnd
M1000 vdd A a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1001 Y a_22_14# a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1002 a_22_14# EN vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=25.200003p ps=28.200003u
M1003 gnd A a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1004 a_44_14# A gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 a_44_166# A vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1006 a_44_166# a_22_14# Y vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1007 Y EN a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1008 a_22_14# EN gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1009 a_44_14# EN Y gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
.ends

.subckt AOI21X1 A B C Y vdd gnd
M1000 Y C a_4_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1001 vdd A a_4_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1002 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1003 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=6.750001p pd=8.400001u as=2.7p ps=6.9u
M1004 a_4_166# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1005 gnd C Y gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.750001p ps=8.400001u
.ends

.subckt BUFX2 A Y vdd gnd
M1000 Y a_4_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.750001p ps=8.400001u
M1001 Y a_4_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=13.500002p ps=14.400001u
M1002 vdd A a_4_14# vdd pfet w=6u l=0.6u
+  ad=13.500002p pd=14.400001u as=12.600001p ps=16.2u
M1003 gnd A a_4_14# gnd nfet w=3u l=0.6u
+  ad=6.750001p pd=8.400001u as=6.300001p ps=10.200001u
.ends

.subckt INVX2 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=25.200003p ps=28.200003u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
.ends

.subckt FAX1 A B C YS YC vdd gnd
M1000 a_208_14# B a_198_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=2.7p ps=6.9u
M1001 a_86_166# B a_66_14# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
M1002 gnd A a_208_14# gnd nfet w=6u l=0.6u
+  ad=6.750001p pd=8.400001u as=2.7p ps=6.9u
M1003 a_8_166# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1004 gnd A a_8_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1005 a_116_14# C gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1006 YC a_66_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1007 a_116_166# C vdd vdd pfet w=10.8u l=0.6u
+  ad=12.960001p pd=13.200001u as=12.960001p ps=13.200001u
M1008 a_86_14# B a_66_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1009 a_116_166# A vdd vdd pfet w=12u l=0.6u
+  ad=14.220001p pd=14.400001u as=14.400002p ps=14.400001u
M1010 YC a_66_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1011 YS a_176_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=16.02p ps=16.800001u
M1012 gnd A a_86_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1013 a_116_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1014 YS a_176_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.750001p ps=8.400001u
M1015 a_8_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1016 a_176_14# a_66_14# a_116_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=7.200001p ps=8.400001u
M1017 vdd A a_208_150# vdd pfet w=14.400001u l=0.6u
+  ad=16.02p pd=16.800001u as=6.48p ps=15.3u
M1018 a_66_14# C a_8_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1019 vdd A a_8_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1020 a_176_14# a_66_14# a_116_166# vdd pfet w=10.8u l=0.6u
+  ad=18.900002p pd=17.1u as=12.960001p ps=13.200001u
M1021 vdd B a_116_166# vdd pfet w=10.8u l=0.6u
+  ad=12.960001p pd=13.200001u as=14.220001p ps=14.400001u
M1022 gnd B a_116_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1023 a_198_14# C a_176_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=8.1p ps=8.700001u
M1024 a_198_150# C a_176_14# vdd pfet w=14.400001u l=0.6u
+  ad=6.48p pd=15.3u as=18.900002p ps=17.1u
M1025 a_208_150# B a_198_150# vdd pfet w=14.400001u l=0.6u
+  ad=6.48p pd=15.3u as=6.48p ps=15.3u
M1026 vdd A a_86_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1027 a_66_14# C a_8_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
.ends

.subckt NOR2X1 A B Y vdd gnd
M1000 a_22_166# A vdd vdd pfet w=12u l=0.6u
+  ad=9p pd=13.500001u as=25.200003p ps=28.200003u
M1001 gnd B Y gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1002 Y B a_22_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=9p ps=13.500001u
M1003 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
.ends

.subckt AND2X1 A B Y vdd gnd
M1000 gnd B a_22_14# gnd nfet w=6u l=0.6u
+  ad=6.750001p pd=8.400001u as=2.7p ps=6.9u
M1001 vdd B a_4_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 Y a_4_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.750001p ps=8.400001u
M1003 Y a_4_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1004 a_4_14# A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1005 a_22_14# A a_4_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
.ends

.subckt DFFPOSX1 D CLK Q vdd gnd
M1000 a_163_14# CLK a_153_14# gnd nfet w=3u l=0.6u
+  ad=4.5p pd=6u as=1.35p ps=3.9u
M1001 a_87_10# a_59_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1002 a_157_206# a_87_10# vdd vdd pfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1003 a_59_14# CLK a_49_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=5.4p ps=7.8u
M1004 a_87_10# a_59_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=4.05p ps=5.7u
M1005 gnd CLK a_11_14# gnd nfet w=6u l=0.6u
+  ad=6.750001p pd=8.400001u as=12.600001p ps=16.2u
M1006 gnd a_87_10# a_81_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1007 Q a_163_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.650001p ps=8.700001u
M1008 vdd CLK a_11_14# vdd pfet w=12u l=0.6u
+  ad=13.500002p pd=14.400001u as=25.200003p ps=28.200003u
M1009 a_49_206# D vdd vdd pfet w=6u l=0.6u
+  ad=5.4p pd=7.8u as=13.500002p ps=14.400001u
M1010 vdd Q a_187_226# vdd pfet w=3u l=0.6u
+  ad=13.500002p pd=14.700001u as=1.35p ps=3.9u
M1011 a_49_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.750001p ps=8.400001u
M1012 a_85_206# a_11_14# a_59_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.200001p ps=8.400001u
M1013 Q a_163_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=13.500002p ps=14.700001u
M1014 a_187_226# CLK a_163_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.750001p ps=8.400001u
M1015 vdd a_87_10# a_85_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1016 a_59_14# a_11_14# a_49_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1017 a_163_14# a_11_14# a_157_206# vdd pfet w=6u l=0.6u
+  ad=6.750001p pd=8.400001u as=2.7p ps=6.9u
M1018 a_187_14# a_11_14# a_163_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.5p ps=6u
M1019 a_153_14# a_87_10# gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.300001p ps=10.200001u
M1020 gnd Q a_187_14# gnd nfet w=3u l=0.6u
+  ad=7.650001p pd=8.700001u as=1.35p ps=3.9u
M1021 a_81_14# CLK a_59_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.05p ps=5.7u
.ends

.subckt NAND2X1 A B Y vdd gnd
M1000 vdd B Y vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1001 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1002 Y B a_24_14# gnd nfet w=6u l=0.6u
+  ad=16.2p pd=17.400002u as=2.7p ps=6.9u
M1003 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt OR2X1 A B Y vdd gnd
M1000 a_22_166# A a_4_166# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1001 gnd B a_4_166# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1002 Y a_4_166# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=15.300001p ps=15.000001u
M1003 Y a_4_166# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1004 vdd B a_22_166# vdd pfet w=12u l=0.6u
+  ad=15.300001p pd=15.000001u as=5.4p ps=12.900001u
M1005 a_4_166# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
.ends

.subckt CLKBUF2 A Y vdd gnd
M1000 a_102_14# a_62_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1001 a_62_14# a_22_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1002 gnd a_102_14# a_142_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 a_22_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1004 Y a_182_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 Y a_182_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1006 gnd A a_22_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1007 a_102_14# a_62_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1008 gnd a_62_14# a_102_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1009 vdd a_142_14# a_182_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1010 vdd a_102_14# a_142_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1011 a_182_14# a_142_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1012 vdd a_62_14# a_102_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1013 gnd a_182_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1014 vdd a_22_14# a_62_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1015 vdd A a_22_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1016 a_62_14# a_22_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1017 vdd a_182_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1018 a_142_14# a_102_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1019 gnd a_142_14# a_182_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1020 a_22_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1021 a_142_14# a_102_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1022 a_182_14# a_142_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1023 gnd a_22_14# a_62_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
.ends

.subckt LATCH D CLK Q vdd gnd
M1000 a_48_206# D vdd vdd pfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=14.400002p ps=14.700001u
M1001 a_86_226# CLK a_58_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=9.225001p ps=9.6u
M1002 gnd CLK a_8_14# gnd nfet w=6u l=0.6u
+  ad=6.750001p pd=8.400001u as=12.600001p ps=16.2u
M1003 a_86_14# a_8_14# a_58_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.4p ps=6.6u
M1004 Q a_58_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.700001u
M1005 gnd Q a_86_14# gnd nfet w=3u l=0.6u
+  ad=7.200001p pd=8.700001u as=1.35p ps=3.9u
M1006 a_46_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.750001p ps=8.400001u
M1007 Q a_58_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=13.500002p ps=14.700001u
M1008 a_58_14# CLK a_46_14# gnd nfet w=3u l=0.6u
+  ad=5.4p pd=6.6u as=1.8p ps=4.2u
M1009 vdd CLK a_8_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.700001u as=25.200003p ps=28.200003u
M1010 a_58_14# a_8_14# a_48_206# vdd pfet w=6u l=0.6u
+  ad=9.225001p pd=9.6u as=2.7p ps=6.9u
M1011 vdd Q a_86_226# vdd pfet w=3u l=0.6u
+  ad=13.500002p pd=14.700001u as=1.35p ps=3.9u
.ends

.subckt DFFSR D S R CLK Q vdd gnd
M1000 a_64_14# a_60_10# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9p ps=9u
M1001 a_126_86# CLK vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1002 a_146_14# a_126_86# a_60_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1003 a_296_14# S a_380_14# gnd nfet w=6u l=0.6u
+  ad=14.400002p pd=16.800001u as=3.6p ps=7.2u
M1004 gnd a_326_14# Q gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1005 a_36_10# S a_64_14# gnd nfet w=6u l=0.6u
+  ad=14.400002p pd=16.800001u as=3.6p ps=7.2u
M1006 a_146_14# a_122_10# a_60_10# vdd pfet w=3u l=0.6u
+  ad=6.750001p pd=8.400001u as=3.6p ps=5.4u
M1007 a_28_14# R a_8_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.400002p ps=16.800001u
M1008 vdd S a_296_14# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1009 a_36_10# a_60_10# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1010 vdd R a_326_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1011 a_8_14# R vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1012 gnd a_36_10# a_28_14# gnd nfet w=6u l=0.6u
+  ad=9p pd=9u as=3.6p ps=7.2u
M1013 gnd a_126_86# a_122_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1014 vdd D a_146_14# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.750001p ps=8.400001u
M1015 a_276_14# a_122_10# a_36_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1016 a_276_14# a_126_86# a_36_10# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1017 gnd D a_146_14# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1018 vdd a_126_86# a_122_10# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1019 a_346_14# a_276_14# a_326_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.400002p ps=16.800001u
M1020 a_126_86# CLK gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1021 gnd R a_346_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=3.6p ps=7.2u
M1022 a_296_14# a_126_86# a_276_14# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1023 vdd S a_36_10# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1024 a_60_10# a_126_86# a_8_14# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1025 a_296_14# a_326_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1026 a_60_10# a_122_10# a_8_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1027 vdd a_36_10# a_8_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1028 a_326_14# a_276_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1029 vdd a_326_14# Q vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1030 a_296_14# a_122_10# a_276_14# vdd pfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1031 a_380_14# a_326_14# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=8.1p ps=8.700001u
.ends

.subckt HAX1 A B YS YC vdd gnd
M1000 vdd A a_127_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1001 gnd a_9_206# YC gnd nfet w=3u l=0.6u
+  ad=6.750001p pd=8.400001u as=6.210001p ps=10.200001u
M1002 a_27_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1003 a_127_166# B a_107_206# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=13.500002p ps=14.400001u
M1004 a_107_206# a_9_206# vdd vdd pfet w=6u l=0.6u
+  ad=13.500002p pd=14.400001u as=7.200001p ps=8.400001u
M1005 a_9_206# B a_27_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
M1006 vdd A a_9_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1007 a_97_14# a_9_206# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=6.750001p ps=8.400001u
M1008 YS a_107_206# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1009 a_107_206# B a_97_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1010 YS a_107_206# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1011 a_97_14# A a_107_206# gnd nfet w=6u l=0.6u
+  ad=11.880001p pd=16.2u as=7.200001p ps=8.400001u
M1012 vdd a_9_206# YC vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1013 a_9_206# B vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
.ends

.subckt AND2X2 A B Y vdd gnd
M1000 Y a_4_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=13.320002p ps=14.400001u
M1001 gnd B a_22_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1002 vdd B a_4_14# vdd pfet w=6u l=0.6u
+  ad=13.320002p pd=14.400001u as=7.200001p ps=8.400001u
M1003 Y a_4_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1004 a_4_14# A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1005 a_22_14# A a_4_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
.ends

.subckt INVX1 A Y vdd gnd
M1000 Y A vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1001 Y A gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
.ends

.subckt TBUFX1 A EN Y vdd gnd
M1000 a_68_166# a_26_14# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1001 gnd A a_68_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
M1002 a_26_14# EN gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1003 a_26_14# EN vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1004 vdd A a_68_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1005 a_68_14# EN Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
.ends

.subckt XNOR2X1 A B Y vdd gnd
M1000 a_28_56# B vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=16.2p ps=14.700001u
M1001 gnd B a_70_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=2.7p ps=6.9u
M1002 vdd A a_4_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1003 vdd B a_72_166# vdd pfet w=12u l=0.6u
+  ad=16.2p pd=14.700001u as=3.6p ps=12.6u
M1004 a_42_14# a_28_56# gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.200001p ps=8.400001u
M1005 Y a_4_14# a_42_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1006 a_28_56# B gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=8.1p ps=8.700001u
M1007 Y A a_42_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=1.8p ps=6.6u
M1008 a_42_166# a_28_56# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
M1009 a_72_166# A Y vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=14.400002p ps=14.400001u
M1010 a_70_14# a_4_14# Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1011 gnd A a_4_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt OAI22X1 A B C D Y vdd gnd
M1000 a_62_166# D Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=23.400002p ps=15.900001u
M1001 a_22_166# A vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1002 a_4_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 Y D a_4_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1004 vdd C a_62_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1005 Y B a_22_166# vdd pfet w=12u l=0.6u
+  ad=23.400002p pd=15.900001u as=5.4p ps=12.900001u
M1006 gnd A a_4_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1007 a_4_14# C Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
.ends

.subckt OR2X2 A B Y vdd gnd
M1000 a_22_166# A a_4_166# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1001 gnd B a_4_166# gnd nfet w=3u l=0.6u
+  ad=6.570001p pd=8.400001u as=3.6p ps=5.4u
M1002 Y a_4_166# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1003 Y a_4_166# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.570001p ps=8.400001u
M1004 vdd B a_22_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1005 a_4_166# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
.ends

.subckt khu_etri050_stdcells vdd gnd
XAOI22X1_0 AOI22X1_0/A AOI22X1_0/B AOI22X1_0/C AOI22X1_0/D AOI22X1_0/Y vdd gnd AOI22X1
XCLKBUF3_0 CLKBUF3_0/A CLKBUF3_0/Y vdd gnd CLKBUF3
XINVX8_0 INVX8_0/A INVX8_0/Y vdd gnd INVX8
XNOR3X1_0 NOR3X1_0/A NOR3X1_0/B NOR3X1_0/C NOR3X1_0/Y vdd gnd NOR3X1
XCLKBUF1_0 CLKBUF1_0/A CLKBUF1_0/Y vdd gnd CLKBUF1
XMUX2X1_0 MUX2X1_0/A MUX2X1_0/B MUX2X1_0/S MUX2X1_0/Y vdd gnd MUX2X1
XNAND3X1_0 NAND3X1_0/A NAND3X1_0/B NAND3X1_0/C NAND3X1_0/Y vdd gnd NAND3X1
XXOR2X1_0 XOR2X1_0/A XOR2X1_0/B XOR2X1_0/Y vdd gnd XOR2X1
XBUFX4_0 BUFX4_0/A BUFX4_0/Y vdd gnd BUFX4
XINVX4_0 INVX4_0/A INVX4_0/Y vdd gnd INVX4
XOAI21X1_0 OAI21X1_0/A OAI21X1_0/B OAI21X1_0/C OAI21X1_0/Y vdd gnd OAI21X1
XDFFNEGX1_0 DFFNEGX1_0/D DFFNEGX1_0/CLK DFFNEGX1_0/Q vdd gnd DFFNEGX1
XTBUFX2_0 TBUFX2_0/A TBUFX2_0/EN TBUFX2_0/Y vdd gnd TBUFX2
XAOI21X1_0 AOI21X1_0/A AOI21X1_0/B AOI21X1_0/C AOI21X1_0/Y vdd gnd AOI21X1
XBUFX2_0 BUFX2_0/A BUFX2_0/Y vdd gnd BUFX2
XINVX2_0 INVX2_0/A INVX2_0/Y vdd gnd INVX2
XFAX1_0 FAX1_0/A FAX1_0/B FAX1_0/C FAX1_0/YS FAX1_0/YC vdd gnd FAX1
XNOR2X1_0 NOR2X1_0/A NOR2X1_0/B NOR2X1_0/Y vdd gnd NOR2X1
XAND2X1_0 AND2X1_0/A AND2X1_0/B AND2X1_0/Y vdd gnd AND2X1
XDFFPOSX1_0 DFFPOSX1_0/D DFFPOSX1_0/CLK DFFPOSX1_0/Q vdd gnd DFFPOSX1
XNAND2X1_0 NAND2X1_0/A NAND2X1_0/B NAND2X1_0/Y vdd gnd NAND2X1
XOR2X1_0 OR2X1_0/A OR2X1_0/B OR2X1_0/Y vdd gnd OR2X1
XCLKBUF2_0 CLKBUF2_0/A CLKBUF2_0/Y vdd gnd CLKBUF2
XLATCH_0 LATCH_0/D LATCH_0/CLK LATCH_0/Q vdd gnd LATCH
XDFFSR_0 DFFSR_0/D DFFSR_0/S DFFSR_0/R DFFSR_0/CLK DFFSR_0/Q vdd gnd DFFSR
XHAX1_0 HAX1_0/A HAX1_0/B HAX1_0/YS HAX1_0/YC vdd gnd HAX1
XAND2X2_0 AND2X2_0/A AND2X2_0/B AND2X2_0/Y vdd gnd AND2X2
XINVX1_0 INVX1_0/A INVX1_0/Y vdd gnd INVX1
XTBUFX1_0 TBUFX1_0/A TBUFX1_0/EN TBUFX1_0/Y vdd gnd TBUFX1
XXNOR2X1_0 XNOR2X1_0/A XNOR2X1_0/B XNOR2X1_0/Y vdd gnd XNOR2X1
XOAI22X1_0 OAI22X1_0/A OAI22X1_0/B OAI22X1_0/C OAI22X1_0/D OAI22X1_0/Y vdd gnd OAI22X1
XOR2X2_0 OR2X2_0/A OR2X2_0/B OR2X2_0/Y vdd gnd OR2X2
.ends

** End of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp

.subckt fir_pe vdd gnd Cin[0] Cin[1] Cin[2] Cin[3] Cin[4]
+ Cin[5] Cin[6] Cin[7] Rdy Vld Xin[0] Xin[1] Xin[2]
+ Xin[3] Xout[0] Xout[1] Xout[2] Xout[3] Yin[0] Yin[1] Yin[2]
+ Yin[3] Yout[0] Yout[1] Yout[2] Yout[3] clk 

XFILL_2__1259_ gnd vdd FILL
XFILL_0__1241_ gnd vdd FILL
XFILL_2__770_ gnd vdd FILL
XFILL_1__1402_ gnd vdd FILL
X_1257_ _549_ _555_ _553_ _563_ vdd gnd AOI21X1
XFILL86250x39150 gnd vdd FILL
XFILL_1__792_ gnd vdd FILL
XFILL_2__826_ gnd vdd FILL
XFILL_2__1068_ gnd vdd FILL
XFILL_0__1050_ gnd vdd FILL
X_800_ LoadCtl_4_bF$buf3 Yin2[3] _124_ vdd gnd NAND2X1
XFILL_1__1211_ gnd vdd FILL
X_1486_ _34_ clk_bF$buf6 y[0] vdd gnd DFFPOSX1
X_1066_ _303_ _377_ _311_ _378_ vdd gnd OAI21X1
XFILL_1__848_ gnd vdd FILL
XFILL_0__1106_ gnd vdd FILL
XFILL_2__1297_ gnd vdd FILL
XFILL_3__750_ gnd vdd FILL
XFILL_1__1440_ gnd vdd FILL
XFILL_1__1020_ gnd vdd FILL
X_1295_ _595_ _596_ vdd gnd INVX1
XFILL_0__1335_ gnd vdd FILL
XFILL_2__864_ gnd vdd FILL
XFILL_1__886_ gnd vdd FILL
XFILL_0__1144_ gnd vdd FILL
XFILL_1__1305_ gnd vdd FILL
XFILL_0_BUFX2_insert20 gnd vdd FILL
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_0_BUFX2_insert22 gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert24 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_0_BUFX2_insert26 gnd vdd FILL
XFILL_0_BUFX2_insert27 gnd vdd FILL
XFILL_0_BUFX2_insert28 gnd vdd FILL
XFILL_0_BUFX2_insert29 gnd vdd FILL
XFILL_2__729_ gnd vdd FILL
XFILL_0__1373_ gnd vdd FILL
XFILL_1__1534_ gnd vdd FILL
XFILL_1__1114_ gnd vdd FILL
X_1389_ _676_ _680_ _681_ vdd gnd OR2X2
XFILL_0__1429_ gnd vdd FILL
XFILL_0__1009_ gnd vdd FILL
XFILL_2__958_ gnd vdd FILL
XFILL_0__1182_ gnd vdd FILL
X_932_ _245_ _241_ _246_ vdd gnd NAND2X1
XFILL_1__1343_ gnd vdd FILL
X_1198_ XinH[3] Cin[4] _507_ vdd gnd NAND2X1
XFILL_2__1412_ gnd vdd FILL
XFILL_0__1238_ gnd vdd FILL
XFILL_2__767_ gnd vdd FILL
X_1410_ Yin3[1] _695_ _698_ vdd gnd NAND2X1
X_741_ _77_ _84_ _85_ _722_[2] vdd gnd OAI21X1
XFILL_1__1152_ gnd vdd FILL
XBUFX2_insert30 Cin[1] Cin_1_bF$buf3 vdd gnd BUFX2
XBUFX2_insert31 Cin[1] Cin_1_bF$buf2 vdd gnd BUFX2
XBUFX2_insert32 Cin[1] Cin_1_bF$buf1 vdd gnd BUFX2
XBUFX2_insert33 Cin[1] Cin_1_bF$buf0 vdd gnd BUFX2
XFILL_1__789_ gnd vdd FILL
XFILL_2__1221_ gnd vdd FILL
XFILL_0__1047_ gnd vdd FILL
XFILL_2__996_ gnd vdd FILL
XFILL_1__1208_ gnd vdd FILL
X_970_ _263_ _267_ _269_ _283_ vdd gnd AOI21X1
XFILL_1__1381_ gnd vdd FILL
XFILL_2__1450_ gnd vdd FILL
XFILL_2__1030_ gnd vdd FILL
XFILL_0__1276_ gnd vdd FILL
XFILL_1__1437_ gnd vdd FILL
XFILL_1__1017_ gnd vdd FILL
XFILL_1__810_ gnd vdd FILL
XFILL_1__1190_ gnd vdd FILL
XFILL_3_CLKBUF1_insert11 gnd vdd FILL
XFILL_0__1085_ gnd vdd FILL
X_1504_ _52_ clk_bF$buf3 Yin3[2] vdd gnd DFFPOSX1
XFILL_0__832_ gnd vdd FILL
X_835_ XinHL[2] Cin_0_bF$buf3 _152_ vdd gnd NAND2X1
XFILL_1__1246_ gnd vdd FILL
XFILL_2__1315_ gnd vdd FILL
X_1313_ _611_ _610_ _612_ vdd gnd NOR2X1
XFILL_1__1055_ gnd vdd FILL
XFILL_2__1124_ gnd vdd FILL
XFILL_2__899_ gnd vdd FILL
X_1122_ _431_ _432_ _433_ vdd gnd NOR2X1
XFILL_0__870_ gnd vdd FILL
XFILL_1__904_ gnd vdd FILL
X_873_ _184_ _188_ _156_ _189_ vdd gnd AOI21X1
XFILL_1__1284_ gnd vdd FILL
XFILL86550x66450 gnd vdd FILL
XFILL_2__1353_ gnd vdd FILL
XFILL_0__1179_ gnd vdd FILL
XFILL_0__926_ gnd vdd FILL
X_929_ _232_ _237_ _243_ vdd gnd NAND2X1
X_1351_ y[10] _135__bF$buf5 _646_ vdd gnd NAND2X1
XFILL_1__1093_ gnd vdd FILL
XFILL_2__1409_ gnd vdd FILL
XFILL_2__920_ gnd vdd FILL
XFILL_2__1162_ gnd vdd FILL
X_1407_ Yin3[0] _695_ _696_ vdd gnd NAND2X1
XFILL_0__735_ gnd vdd FILL
X_738_ _71_ _82_ _83_ vdd gnd NAND2X1
XFILL_1__1149_ gnd vdd FILL
X_1160_ XinH[2] Cin[4] _470_ vdd gnd NAND2X1
XFILL_1__942_ gnd vdd FILL
XFILL_0__1200_ gnd vdd FILL
XFILL_2__1218_ gnd vdd FILL
XFILL_2__1391_ gnd vdd FILL
X_1216_ _519_ _525_ vdd gnd INVX1
XFILL_0__964_ gnd vdd FILL
X_967_ _135__bF$buf4 _279_ _280_ _25_ vdd gnd OAI21X1
XFILL_1__1378_ gnd vdd FILL
XFILL_1__751_ gnd vdd FILL
XFILL_2__1447_ gnd vdd FILL
XFILL_2__1027_ gnd vdd FILL
X_1445_ LoadCtl_0_bF$buf2 _213_ _717_ _66_ vdd gnd OAI21X1
X_1025_ _334_ _331_ _284_ _338_ vdd gnd NAND3X1
XFILL_0__773_ gnd vdd FILL
XFILL_1__807_ gnd vdd FILL
X_776_ LoadCtl_4_bF$buf4 Yin0[3] _108_ vdd gnd NAND2X1
XFILL_1__1187_ gnd vdd FILL
XFILL_1__980_ gnd vdd FILL
XFILL_2__1256_ gnd vdd FILL
XFILL_0__829_ gnd vdd FILL
X_1254_ _560_ _559_ LoadCtl_4_bF$buf5 _561_ vdd gnd OAI21X1
XFILL_2__823_ gnd vdd FILL
XFILL_2__1065_ gnd vdd FILL
X_1483_ _31_ clk_bF$buf4 mul[11] vdd gnd DFFPOSX1
X_1063_ _371_ _374_ _373_ _375_ vdd gnd NAND3X1
XFILL_1__845_ gnd vdd FILL
XFILL86250x15750 gnd vdd FILL
XFILL_0__1103_ gnd vdd FILL
XFILL_2__1294_ gnd vdd FILL
X_1119_ _429_ _424_ _430_ vdd gnd NOR2X1
XFILL_0__867_ gnd vdd FILL
X_1292_ _592_ _593_ vdd gnd INVX1
XFILL_0__1332_ gnd vdd FILL
XFILL_2__861_ gnd vdd FILL
XFILL_3__803_ gnd vdd FILL
X_1348_ _638_ _643_ _644_ vdd gnd XOR2X1
XFILL_1__883_ gnd vdd FILL
XFILL_2__917_ gnd vdd FILL
XFILL_2__1159_ gnd vdd FILL
XFILL_0__1141_ gnd vdd FILL
XFILL_1__1302_ gnd vdd FILL
X_1157_ _93_ _239_ _464_ _467_ vdd gnd OAI21X1
XFILL_1__939_ gnd vdd FILL
XFILL_2__726_ gnd vdd FILL
XFILL_0__1370_ gnd vdd FILL
XFILL_2__1388_ gnd vdd FILL
XFILL_3__841_ gnd vdd FILL
XFILL_1__1531_ gnd vdd FILL
XFILL_1__1111_ gnd vdd FILL
X_1386_ _127_ _562_ _678_ vdd gnd NOR2X1
XFILL_1__748_ gnd vdd FILL
XFILL_0__1426_ gnd vdd FILL
XFILL_0__1006_ gnd vdd FILL
XFILL_2__955_ gnd vdd FILL
XFILL_2__1197_ gnd vdd FILL
XFILL_1__1340_ gnd vdd FILL
X_1195_ _367_ _427_ _504_ vdd gnd OR2X2
XFILL_1__977_ gnd vdd FILL
XFILL_0__1235_ gnd vdd FILL
XFILL_2__764_ gnd vdd FILL
XFILL_0__999_ gnd vdd FILL
XFILL_1__786_ gnd vdd FILL
XFILL_0__1044_ gnd vdd FILL
XFILL_2__993_ gnd vdd FILL
XFILL_1__1205_ gnd vdd FILL
XFILL_0__1273_ gnd vdd FILL
XFILL_1__1434_ gnd vdd FILL
XFILL_1__1014_ gnd vdd FILL
X_1289_ _109_ _192_ _590_ vdd gnd NAND2X1
XFILL_0__1329_ gnd vdd FILL
XFILL_2__858_ gnd vdd FILL
XFILL_0__1082_ gnd vdd FILL
X_1501_ _49_ clk_bF$buf2 y[15] vdd gnd DFFPOSX1
X_832_ _147_ _148_ _149_ vdd gnd NAND2X1
XFILL_1__1243_ gnd vdd FILL
X_1098_ _404_ _338_ _409_ vdd gnd NAND2X1
XFILL_2__1312_ gnd vdd FILL
XFILL_0__1138_ gnd vdd FILL
X_1310_ y[6] _135__bF$buf3 _609_ vdd gnd NAND2X1
XFILL_1__1052_ gnd vdd FILL
XFILL_2__1121_ gnd vdd FILL
XFILL_0__1367_ gnd vdd FILL
XFILL_2__896_ gnd vdd FILL
XFILL_1__1528_ gnd vdd FILL
XFILL_1__1108_ gnd vdd FILL
XFILL_1__901_ gnd vdd FILL
X_870_ _175_ _173_ _168_ _186_ vdd gnd NAND3X1
XFILL_1__1281_ gnd vdd FILL
XFILL_2__1350_ gnd vdd FILL
XFILL_0__1176_ gnd vdd FILL
XFILL_0__923_ gnd vdd FILL
X_926_ _177_ _239_ _232_ _240_ vdd gnd OAI21X1
XFILL_1__1337_ gnd vdd FILL
XFILL_1__1090_ gnd vdd FILL
XFILL_2__1406_ gnd vdd FILL
X_1404_ _135__bF$buf0 _693_ _690_ _49_ vdd gnd OAI21X1
XFILL_0__732_ gnd vdd FILL
X_735_ LoadCtl_0_bF$buf1 y[1] _75_ y[5] _81_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1146_ gnd vdd FILL
XFILL_2__1215_ gnd vdd FILL
X_1213_ _282_ _521_ _336_ _522_ vdd gnd NAND3X1
XFILL_0__961_ gnd vdd FILL
X_964_ _223_ _230_ _278_ vdd gnd NAND2X1
XFILL_1__1375_ gnd vdd FILL
XFILL_2__1444_ gnd vdd FILL
XFILL_2__1024_ gnd vdd FILL
XFILL_2__799_ gnd vdd FILL
X_1442_ LoadCtl_0_bF$buf3 Yin0[3] _716_ vdd gnd NOR2X1
X_1022_ _334_ _331_ _335_ vdd gnd NAND2X1
XFILL_0__770_ gnd vdd FILL
XFILL_1__804_ gnd vdd FILL
X_773_ LoadCtl_4_bF$buf1 Yin0[2] _106_ vdd gnd NAND2X1
XFILL_1__1184_ gnd vdd FILL
XFILL_2__1253_ gnd vdd FILL
XFILL_0__1079_ gnd vdd FILL
XFILL_0__826_ gnd vdd FILL
X_829_ _141_ _146_ vdd gnd INVX1
X_1251_ _498_ _548_ _547_ _558_ vdd gnd OAI21X1
XFILL_2__1309_ gnd vdd FILL
XFILL_2__820_ gnd vdd FILL
XFILL_2__1062_ gnd vdd FILL
X_1307_ _604_ _607_ vdd gnd INVX1
XFILL_1__1049_ gnd vdd FILL
X_1480_ _28_ clk_bF$buf1 mul[8] vdd gnd DFFPOSX1
X_1060_ XinH[3] Cin_0_bF$buf2 _372_ vdd gnd AND2X2
XFILL_1__842_ gnd vdd FILL
XFILL86550x19650 gnd vdd FILL
XFILL_0__1100_ gnd vdd FILL
XFILL_2__1118_ gnd vdd FILL
XFILL_2__1291_ gnd vdd FILL
X_1116_ XinH[2] Cin[2] _427_ vdd gnd NAND2X1
XFILL_0__864_ gnd vdd FILL
X_867_ _176_ _182_ _175_ _183_ vdd gnd OAI21X1
XFILL_1__1278_ gnd vdd FILL
XFILL_2__1347_ gnd vdd FILL
X_1345_ _640_ _641_ vdd gnd INVX1
XFILL_1__1087_ gnd vdd FILL
XFILL_1__880_ gnd vdd FILL
XFILL_2__914_ gnd vdd FILL
XFILL_2__1156_ gnd vdd FILL
XFILL_0__729_ gnd vdd FILL
X_1154_ XinH[1] Cin[4] _464_ vdd gnd NAND2X1
XFILL_1__936_ gnd vdd FILL
XFILL_2__723_ gnd vdd FILL
XFILL_2__1385_ gnd vdd FILL
XFILL_0__958_ gnd vdd FILL
XFILL_3__1034_ gnd vdd FILL
X_1383_ _672_ _675_ _664_ _46_ vdd gnd OAI21X1
XFILL_1__745_ gnd vdd FILL
XFILL_0__1423_ gnd vdd FILL
XFILL_0__1003_ gnd vdd FILL
XFILL_2__952_ gnd vdd FILL
XFILL_2__1194_ gnd vdd FILL
X_1439_ LoadCtl_0_bF$buf1 _697_ _714_ _63_ vdd gnd AOI21X1
X_1019_ _320_ _327_ _324_ _332_ vdd gnd NAND3X1
XFILL_0__767_ gnd vdd FILL
X_1192_ _477_ _482_ _501_ vdd gnd NAND2X1
XFILL_1__974_ gnd vdd FILL
XFILL_0__1232_ gnd vdd FILL
XFILL_2__761_ gnd vdd FILL
X_1248_ _552_ _554_ _555_ vdd gnd AND2X2
XFILL_0__996_ gnd vdd FILL
X_999_ _93_ _180_ _304_ _312_ vdd gnd OAI21X1
XFILL_1__783_ gnd vdd FILL
XFILL_2__817_ gnd vdd FILL
XFILL_0__1041_ gnd vdd FILL
XFILL_2__1059_ gnd vdd FILL
XFILL_2__990_ gnd vdd FILL
XFILL_1__1202_ gnd vdd FILL
X_1477_ _25_ clk_bF$buf0 mul[5] vdd gnd DFFPOSX1
X_1057_ XinH[2] Cin_1_bF$buf3 XinH[3] Cin_0_bF$buf2 _369_ vdd 
+ gnd
+ AOI22X1
XFILL_1__839_ gnd vdd FILL
XFILL_0__1270_ gnd vdd FILL
XFILL_2__1288_ gnd vdd FILL
XFILL_1__1431_ gnd vdd FILL
XFILL_1__1011_ gnd vdd FILL
X_1286_ y[3] _135__bF$buf4 _588_ vdd gnd NAND2X1
XFILL_0__1326_ gnd vdd FILL
XFILL_1_BUFX2_insert30 gnd vdd FILL
XFILL_1_BUFX2_insert31 gnd vdd FILL
XFILL_1_BUFX2_insert32 gnd vdd FILL
XFILL_1_BUFX2_insert33 gnd vdd FILL
XFILL_2__855_ gnd vdd FILL
XFILL_0_CLKBUF1_insert10 gnd vdd FILL
XFILL_0_CLKBUF1_insert11 gnd vdd FILL
XFILL_0_CLKBUF1_insert12 gnd vdd FILL
XFILL_0_CLKBUF1_insert13 gnd vdd FILL
XFILL_0_CLKBUF1_insert14 gnd vdd FILL
XFILL_2__1097_ gnd vdd FILL
XFILL_1__1240_ gnd vdd FILL
X_1095_ mul[7] _135__bF$buf2 _407_ vdd gnd NAND2X1
XFILL_1__877_ gnd vdd FILL
XFILL_0__1135_ gnd vdd FILL
XFILL_0__899_ gnd vdd FILL
XFILL_0__1364_ gnd vdd FILL
XFILL_2__893_ gnd vdd FILL
XFILL_1__1105_ gnd vdd FILL
XFILL_2__949_ gnd vdd FILL
XFILL_0__1173_ gnd vdd FILL
XFILL_0__920_ gnd vdd FILL
X_923_ XinHL[2] Cin[3] _237_ vdd gnd AND2X2
XFILL_1__1334_ gnd vdd FILL
XFILL86850x46950 gnd vdd FILL
X_1189_ _487_ _497_ _498_ vdd gnd NAND2X1
XFILL_2__1403_ gnd vdd FILL
XFILL_0__1229_ gnd vdd FILL
XFILL_2__758_ gnd vdd FILL
X_1401_ rYin[14] rYin[15] _687_ _691_ vdd gnd NAND3X1
X_732_ y[13] _78_ vdd gnd INVX1
XFILL_1__1143_ gnd vdd FILL
XFILL_2__1212_ gnd vdd FILL
XFILL_0__1038_ gnd vdd FILL
XFILL_2__987_ gnd vdd FILL
X_1210_ _517_ _518_ _519_ vdd gnd NAND2X1
X_961_ _270_ _271_ _235_ _275_ vdd gnd OAI21X1
XFILL_1__1372_ gnd vdd FILL
XFILL_2__1441_ gnd vdd FILL
XFILL_2__1021_ gnd vdd FILL
XFILL_0__1267_ gnd vdd FILL
XFILL_2__796_ gnd vdd FILL
XFILL_1__1428_ gnd vdd FILL
XFILL_1__1008_ gnd vdd FILL
XFILL_1__801_ gnd vdd FILL
X_770_ LoadCtl_4_bF$buf1 Yin0[1] _104_ vdd gnd NAND2X1
XFILL_1__1181_ gnd vdd FILL
XFILL_2__1250_ gnd vdd FILL
XFILL_0__1076_ gnd vdd FILL
XFILL_0__823_ gnd vdd FILL
XFILL_1_BUFX2_insert0 gnd vdd FILL
XFILL_1_BUFX2_insert1 gnd vdd FILL
XFILL_1_BUFX2_insert2 gnd vdd FILL
XFILL_1_BUFX2_insert3 gnd vdd FILL
XFILL_1_BUFX2_insert4 gnd vdd FILL
XFILL_1_BUFX2_insert5 gnd vdd FILL
XFILL_1_BUFX2_insert6 gnd vdd FILL
X_826_ _137_ _142_ _143_ vdd gnd NOR2X1
XFILL_1__1237_ gnd vdd FILL
XFILL87150x78150 gnd vdd FILL
XFILL_2__1306_ gnd vdd FILL
X_1304_ _602_ _603_ _604_ vdd gnd AND2X2
XFILL_1__1046_ gnd vdd FILL
XFILL_2__1535_ gnd vdd FILL
XFILL_2__1115_ gnd vdd FILL
X_1533_ _722_[1] Yout[1] vdd gnd BUFX2
X_1113_ _371_ _374_ _368_ _424_ vdd gnd AOI21X1
XFILL_0__861_ gnd vdd FILL
X_864_ Cin_0_bF$buf0 _180_ vdd gnd INVX1
XFILL_1__1275_ gnd vdd FILL
XFILL_2__1344_ gnd vdd FILL
XFILL_0__917_ gnd vdd FILL
X_1342_ _636_ _635_ _632_ _638_ vdd gnd OAI21X1
XFILL_1__1084_ gnd vdd FILL
XFILL_2__911_ gnd vdd FILL
XFILL_2__1153_ gnd vdd FILL
XFILL_0__1399_ gnd vdd FILL
XFILL_0__726_ gnd vdd FILL
X_729_ LoadCtl_0_bF$buf1 y[0] _75_ y[4] _76_ vdd 
+ gnd
+ AOI22X1
XFILL_3_BUFX2_insert3 gnd vdd FILL
X_1151_ _460_ _461_ vdd gnd INVX1
XFILL_1__933_ gnd vdd FILL
XFILL_2__1209_ gnd vdd FILL
XFILL_2__1382_ gnd vdd FILL
X_1207_ _513_ _515_ _516_ vdd gnd AND2X2
XFILL_0__955_ gnd vdd FILL
X_958_ _270_ _271_ _269_ _272_ vdd gnd OAI21X1
XFILL_1__1369_ gnd vdd FILL
X_1380_ _667_ _673_ vdd gnd INVX1
XFILL_1__742_ gnd vdd FILL
XFILL_2__1438_ gnd vdd FILL
XFILL_0__1420_ gnd vdd FILL
XFILL_2__1018_ gnd vdd FILL
XFILL_0__1000_ gnd vdd FILL
XFILL_2__1191_ gnd vdd FILL
X_1436_ LoadCtl_0_bF$buf3 Yin0[0] _713_ vdd gnd NOR2X1
X_1016_ _319_ _314_ _300_ _329_ vdd gnd AOI21X1
XFILL_0__764_ gnd vdd FILL
X_767_ Yin0[0] LoadCtl_4_bF$buf4 _102_ vdd gnd NAND2X1
XFILL_1__1178_ gnd vdd FILL
XFILL_1__971_ gnd vdd FILL
XFILL_2__1247_ gnd vdd FILL
X_1245_ _550_ _551_ _552_ vdd gnd OR2X2
XFILL_0__993_ gnd vdd FILL
X_996_ _303_ _309_ vdd gnd INVX1
XFILL_1__780_ gnd vdd FILL
XFILL_2__814_ gnd vdd FILL
XFILL_2__1056_ gnd vdd FILL
X_1474_ _22_ clk_bF$buf5 mul[2] vdd gnd DFFPOSX1
X_1054_ XinH[1] Cin[2] _366_ vdd gnd NAND2X1
XFILL_1__836_ gnd vdd FILL
XFILL_2__1285_ gnd vdd FILL
XFILL_0__858_ gnd vdd FILL
XFILL87150x66450 gnd vdd FILL
X_1283_ _107_ _161_ _585_ vdd gnd NOR2X1
XFILL_0__1323_ gnd vdd FILL
XFILL_2__852_ gnd vdd FILL
XFILL_2__1094_ gnd vdd FILL
X_1339_ _633_ _636_ vdd gnd INVX1
X_1092_ _401_ _402_ _403_ _404_ vdd gnd NAND3X1
XFILL_1__874_ gnd vdd FILL
XFILL_2__908_ gnd vdd FILL
XFILL_0__1132_ gnd vdd FILL
X_1148_ _451_ _458_ vdd gnd INVX1
XFILL_0__896_ gnd vdd FILL
X_899_ Cin[4] _214_ vdd gnd INVX2
XFILL_0__1361_ gnd vdd FILL
XFILL_2__1379_ gnd vdd FILL
XFILL_2__890_ gnd vdd FILL
XFILL_1__1102_ gnd vdd FILL
X_1377_ _669_ _670_ vdd gnd INVX1
XFILL_1__739_ gnd vdd FILL
XFILL_0__1417_ gnd vdd FILL
XFILL_2__946_ gnd vdd FILL
XFILL_2__1188_ gnd vdd FILL
XFILL_0__1170_ gnd vdd FILL
X_920_ _233_ _234_ vdd gnd INVX1
XFILL_1__1331_ gnd vdd FILL
X_1186_ _490_ _487_ _495_ vdd gnd NAND2X1
XFILL_1__968_ gnd vdd FILL
XFILL_2__1400_ gnd vdd FILL
XFILL_0__1226_ gnd vdd FILL
XFILL_2__755_ gnd vdd FILL
XFILL_1__1140_ gnd vdd FILL
XFILL_1__777_ gnd vdd FILL
XFILL_0__1035_ gnd vdd FILL
XFILL_2__984_ gnd vdd FILL
XFILL_0__799_ gnd vdd FILL
XFILL_0__1264_ gnd vdd FILL
XFILL_2__793_ gnd vdd FILL
XFILL_3__735_ gnd vdd FILL
XFILL_1__1425_ gnd vdd FILL
XFILL_1__1005_ gnd vdd FILL
XFILL_2__849_ gnd vdd FILL
XFILL_0__1073_ gnd vdd FILL
XFILL_0__820_ gnd vdd FILL
X_823_ _136_ _137_ _140_ vdd gnd NOR2X1
XFILL_1__1234_ gnd vdd FILL
X_1089_ _287_ _400_ _332_ _401_ vdd gnd OAI21X1
XFILL_2__1303_ gnd vdd FILL
XFILL_0__1129_ gnd vdd FILL
X_1301_ _109_ _192_ _598_ _601_ vdd gnd OAI21X1
XFILL87150x54750 gnd vdd FILL
XFILL_1__1043_ gnd vdd FILL
XFILL_3__1389_ gnd vdd FILL
XFILL_2__1532_ gnd vdd FILL
XFILL_2__1112_ gnd vdd FILL
XFILL_0__1358_ gnd vdd FILL
XFILL_2__887_ gnd vdd FILL
X_1530_ _721_[2] Xout[2] vdd gnd BUFX2
X_1110_ XinH[0] Cin[4] XinH[1] Cin[3] _421_ vdd 
+ gnd
+ AOI22X1
X_861_ XinHL[2] _177_ vdd gnd INVX2
XFILL_1__1272_ gnd vdd FILL
XFILL_2__1341_ gnd vdd FILL
XFILL_0__1167_ gnd vdd FILL
XFILL_0__914_ gnd vdd FILL
X_917_ _192_ LoadCtl_4_bF$buf6 _229_ _231_ _24_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1328_ gnd vdd FILL
XFILL_1__1081_ gnd vdd FILL
XFILL_2__1150_ gnd vdd FILL
XFILL_0__1396_ gnd vdd FILL
XFILL_0__723_ gnd vdd FILL
X_726_ _71_ y[8] _72_ _73_ vdd gnd OAI21X1
XFILL_1__1137_ gnd vdd FILL
XFILL_1__930_ gnd vdd FILL
XFILL_2__1206_ gnd vdd FILL
X_1204_ _510_ _512_ _503_ _513_ vdd gnd OAI21X1
XFILL_0__952_ gnd vdd FILL
X_955_ _217_ _207_ _220_ _269_ vdd gnd OAI21X1
XFILL_1__1366_ gnd vdd FILL
XFILL_2__1435_ gnd vdd FILL
XFILL_2__1015_ gnd vdd FILL
X_1433_ _699_ _708_ _711_ _60_ vdd gnd OAI21X1
X_1013_ _258_ _253_ _247_ _326_ vdd gnd AOI21X1
XFILL_0__761_ gnd vdd FILL
X_764_ Xin[3] _75_ _100_ vdd gnd NAND2X1
XFILL_1__1175_ gnd vdd FILL
XFILL_2__1244_ gnd vdd FILL
XFILL_0__817_ gnd vdd FILL
X_1242_ _548_ _500_ _547_ _549_ vdd gnd OAI21X1
XFILL_0__990_ gnd vdd FILL
X_993_ XinH[2] Cin_0_bF$buf2 _306_ vdd gnd NAND2X1
XFILL_2__811_ gnd vdd FILL
XFILL_2__1053_ gnd vdd FILL
XFILL_0__1299_ gnd vdd FILL
X_1471_ _19_ clk_bF$buf4 rYin[15] vdd gnd DFFPOSX1
X_1051_ _362_ _359_ _360_ _363_ vdd gnd NAND3X1
XFILL_1__833_ gnd vdd FILL
XFILL_2__1529_ gnd vdd FILL
XFILL_2__1109_ gnd vdd FILL
XFILL_2__1282_ gnd vdd FILL
X_1527_ LoadCtl_4_bF$buf0 Vld vdd gnd BUFX2
X_1107_ Cin[5] _418_ vdd gnd INVX2
XFILL_0__855_ gnd vdd FILL
XFILL_3__999_ gnd vdd FILL
X_858_ _173_ _168_ _163_ _174_ vdd gnd NAND3X1
XFILL_1__1269_ gnd vdd FILL
X_1280_ _105_ _159_ _582_ vdd gnd NOR2X1
XFILL_0__1320_ gnd vdd FILL
XFILL_2__1338_ gnd vdd FILL
XFILL_2__1091_ gnd vdd FILL
X_1336_ _631_ _632_ _633_ vdd gnd AND2X2
XFILL_1__1078_ gnd vdd FILL
XFILL_1__871_ gnd vdd FILL
XFILL_2__905_ gnd vdd FILL
XFILL_2__1147_ gnd vdd FILL
X_1145_ _451_ _455_ _456_ vdd gnd NAND2X1
XFILL_0__893_ gnd vdd FILL
XFILL_1__927_ gnd vdd FILL
X_896_ _210_ _209_ _208_ _211_ vdd gnd AOI21X1
XFILL_2__1376_ gnd vdd FILL
XFILL_0__949_ gnd vdd FILL
XFILL_2_BUFX2_insert20 gnd vdd FILL
XFILL_2_BUFX2_insert21 gnd vdd FILL
XFILL_2_BUFX2_insert22 gnd vdd FILL
XFILL_2_BUFX2_insert23 gnd vdd FILL
XFILL_2_BUFX2_insert24 gnd vdd FILL
XFILL_2_BUFX2_insert25 gnd vdd FILL
XFILL_2_BUFX2_insert26 gnd vdd FILL
XFILL_2_BUFX2_insert27 gnd vdd FILL
XFILL_2_BUFX2_insert28 gnd vdd FILL
XFILL_2_BUFX2_insert29 gnd vdd FILL
X_1374_ _666_ _649_ _665_ _667_ vdd gnd OAI21X1
XFILL_1__736_ gnd vdd FILL
XFILL_0__1414_ gnd vdd FILL
XFILL_2__943_ gnd vdd FILL
XFILL_2__1185_ gnd vdd FILL
XFILL_0__758_ gnd vdd FILL
X_1183_ mul[9] _135__bF$buf2 _493_ vdd gnd NAND2X1
XFILL_1__965_ gnd vdd FILL
XFILL_0__1223_ gnd vdd FILL
XFILL_2__752_ gnd vdd FILL
X_1239_ _529_ _537_ _517_ _546_ vdd gnd AOI21X1
XFILL_0__987_ gnd vdd FILL
XFILL_1__774_ gnd vdd FILL
XFILL_2__808_ gnd vdd FILL
XFILL_0__1032_ gnd vdd FILL
XFILL_2__981_ gnd vdd FILL
XFILL87150x19650 gnd vdd FILL
X_1468_ _16_ clk_bF$buf4 rYin[12] vdd gnd DFFPOSX1
X_1048_ _356_ _354_ _360_ vdd gnd NAND2X1
XFILL_0__796_ gnd vdd FILL
X_799_ rYin[11] _123_ vdd gnd INVX1
XFILL_2__1279_ gnd vdd FILL
XFILL_0__1261_ gnd vdd FILL
XFILL_2__790_ gnd vdd FILL
XFILL_1__1422_ gnd vdd FILL
XFILL_1__1002_ gnd vdd FILL
X_1277_ _578_ _579_ _580_ vdd gnd XNOR2X1
XFILL_0__1317_ gnd vdd FILL
XFILL_2__846_ gnd vdd FILL
XFILL_2__1088_ gnd vdd FILL
XFILL_0__1070_ gnd vdd FILL
X_820_ _136_ _137_ _138_ vdd gnd XNOR2X1
XFILL_1__1231_ gnd vdd FILL
X_1086_ _397_ _396_ _349_ _398_ vdd gnd AOI21X1
XFILL_1__868_ gnd vdd FILL
XFILL_2__1300_ gnd vdd FILL
XFILL_0__1126_ gnd vdd FILL
XFILL_1__1040_ gnd vdd FILL
XFILL_0__1355_ gnd vdd FILL
XFILL_2__884_ gnd vdd FILL
XFILL_0__1164_ gnd vdd FILL
XFILL_0__911_ gnd vdd FILL
X_914_ _223_ _228_ _193_ _229_ vdd gnd AOI21X1
XFILL_1__1325_ gnd vdd FILL
XFILL_2__749_ gnd vdd FILL
XFILL_0__1393_ gnd vdd FILL
X_723_ LoadCtl[2] y[12] _70_ vdd gnd NOR2X1
XFILL_1__1134_ gnd vdd FILL
XFILL_2__1203_ gnd vdd FILL
XFILL_0__1449_ gnd vdd FILL
XFILL_0__1029_ gnd vdd FILL
XFILL_2__978_ gnd vdd FILL
X_1201_ _504_ _476_ _509_ _510_ vdd gnd AOI21X1
X_952_ _261_ _260_ _248_ _266_ vdd gnd OAI21X1
XFILL_1__1363_ gnd vdd FILL
XFILL_2__1432_ gnd vdd FILL
XFILL_2__1012_ gnd vdd FILL
XFILL_0__1258_ gnd vdd FILL
XFILL_2__787_ gnd vdd FILL
XFILL_1__1419_ gnd vdd FILL
X_1430_ LoadCtl_0_bF$buf0 _74_ Yin1[1] _710_ vdd gnd OAI21X1
X_1010_ _318_ _317_ _302_ _323_ vdd gnd OAI21X1
X_761_ _91_ _75_ _98_ _1_ vdd gnd OAI21X1
XFILL_1__1172_ gnd vdd FILL
XFILL_2__1241_ gnd vdd FILL
XFILL_0__1067_ gnd vdd FILL
XFILL_0__814_ gnd vdd FILL
X_817_ LoadCtl_4_bF$buf6 _135_ vdd gnd INVX8
XFILL_1__1228_ gnd vdd FILL
X_990_ XinH[0] Cin[2] _303_ vdd gnd NAND2X1
XFILL_2__1050_ gnd vdd FILL
XFILL_0__1296_ gnd vdd FILL
XFILL_1__1037_ gnd vdd FILL
XFILL_1__830_ gnd vdd FILL
XFILL_2__1106_ gnd vdd FILL
X_1524_ LoadCtl[1] clk_bF$buf7 LoadCtl[2] vdd gnd DFFPOSX1
X_1104_ _414_ _415_ vdd gnd INVX1
XFILL_0__852_ gnd vdd FILL
X_855_ _148_ _170_ _171_ vdd gnd NAND2X1
XFILL_1__1266_ gnd vdd FILL
XFILL_2__1335_ gnd vdd FILL
XFILL_0__908_ gnd vdd FILL
XFILL_3__1404_ gnd vdd FILL
X_1333_ _627_ _629_ _630_ vdd gnd NAND2X1
XFILL_1__1075_ gnd vdd FILL
XFILL_2__902_ gnd vdd FILL
XFILL_2__1144_ gnd vdd FILL
X_1142_ _449_ _448_ _414_ _453_ vdd gnd AOI21X1
XFILL_0__890_ gnd vdd FILL
XFILL_1__924_ gnd vdd FILL
X_893_ _169_ _172_ _166_ _208_ vdd gnd AOI21X1
XFILL_2__1373_ gnd vdd FILL
XFILL_0__1199_ gnd vdd FILL
XFILL_0__946_ gnd vdd FILL
XFILL_3__1442_ gnd vdd FILL
X_949_ _246_ _259_ _262_ _263_ vdd gnd NAND3X1
X_1371_ y[12] _135__bF$buf5 _664_ vdd gnd NAND2X1
XFILL_1__733_ gnd vdd FILL
XFILL_2__1429_ gnd vdd FILL
XFILL_0__1411_ gnd vdd FILL
XFILL_2__1009_ gnd vdd FILL
XFILL_2__940_ gnd vdd FILL
XFILL_2__1182_ gnd vdd FILL
X_1427_ _75_ _708_ vdd gnd INVX1
X_1007_ _300_ _314_ _319_ _320_ vdd gnd NAND3X1
XFILL_0__755_ gnd vdd FILL
X_758_ Xin[0] _75_ _97_ vdd gnd NAND2X1
XFILL_1__1169_ gnd vdd FILL
X_1180_ _482_ _485_ _489_ _490_ vdd gnd NAND3X1
XFILL_1__962_ gnd vdd FILL
XFILL_2__1238_ gnd vdd FILL
XFILL_0__1220_ gnd vdd FILL
X_1236_ _528_ _543_ _31_ vdd gnd NAND2X1
XFILL_0__984_ gnd vdd FILL
X_987_ _299_ _295_ _300_ vdd gnd NAND2X1
XFILL_1__1398_ gnd vdd FILL
XFILL_1__771_ gnd vdd FILL
XFILL_2__805_ gnd vdd FILL
XFILL_2__1047_ gnd vdd FILL
X_1465_ _13_ clk_bF$buf7 rYin[9] vdd gnd DFFPOSX1
X_1045_ _89_ _239_ _356_ _357_ vdd gnd OAI21X1
XFILL_0__793_ gnd vdd FILL
XFILL_1__827_ gnd vdd FILL
X_796_ rYin[10] _121_ vdd gnd INVX1
XFILL_2__1276_ gnd vdd FILL
XFILL_0__849_ gnd vdd FILL
X_1274_ _135__bF$buf3 _576_ _577_ _35_ vdd gnd OAI21X1
XFILL_0__1314_ gnd vdd FILL
XFILL_2__843_ gnd vdd FILL
XFILL_2__1085_ gnd vdd FILL
X_1083_ _389_ _394_ _350_ _395_ vdd gnd AOI21X1
XFILL_1__865_ gnd vdd FILL
XFILL_0__1123_ gnd vdd FILL
X_1139_ _414_ _448_ _449_ _450_ vdd gnd NAND3X1
XFILL_0__887_ gnd vdd FILL
XFILL_0__1352_ gnd vdd FILL
XFILL_2__881_ gnd vdd FILL
X_1368_ _657_ _661_ _662_ vdd gnd XOR2X1
XFILL_0__1408_ gnd vdd FILL
XFILL_2__937_ gnd vdd FILL
XFILL_0__1161_ gnd vdd FILL
XFILL_2__1179_ gnd vdd FILL
X_911_ _219_ _220_ _221_ _226_ vdd gnd AOI21X1
XFILL_1__1322_ gnd vdd FILL
X_1177_ _448_ _450_ _486_ _487_ vdd gnd NAND3X1
XFILL_1__959_ gnd vdd FILL
XFILL_0__1217_ gnd vdd FILL
XFILL_2__746_ gnd vdd FILL
XFILL_0__1390_ gnd vdd FILL
XFILL_1__1131_ gnd vdd FILL
XFILL_1__768_ gnd vdd FILL
XFILL_2__1200_ gnd vdd FILL
XFILL_0__1446_ gnd vdd FILL
XFILL_0__1026_ gnd vdd FILL
XFILL_2__975_ gnd vdd FILL
XFILL_1__1360_ gnd vdd FILL
XFILL_1__997_ gnd vdd FILL
XFILL_0__1255_ gnd vdd FILL
XFILL_2__784_ gnd vdd FILL
XFILL_1__1416_ gnd vdd FILL
XFILL_0__1064_ gnd vdd FILL
XFILL_0__811_ gnd vdd FILL
X_814_ mul[0] _133_ vdd gnd INVX1
XFILL_1__1225_ gnd vdd FILL
XFILL_0__1293_ gnd vdd FILL
XFILL_1__1034_ gnd vdd FILL
XFILL_2__1103_ gnd vdd FILL
XFILL85650x19650 gnd vdd FILL
XFILL_0__1349_ gnd vdd FILL
XFILL_2__878_ gnd vdd FILL
X_1521_ _69_ clk_bF$buf1 XinHL[3] vdd gnd DFFPOSX1
X_1101_ _388_ _384_ _391_ _412_ vdd gnd AOI21X1
X_852_ _167_ _166_ _164_ _168_ vdd gnd OAI21X1
XFILL_1__1263_ gnd vdd FILL
XFILL_2__1332_ gnd vdd FILL
XFILL_0__1158_ gnd vdd FILL
XFILL_0__905_ gnd vdd FILL
X_908_ _222_ _195_ _218_ _223_ vdd gnd NAND3X1
XFILL_1__1319_ gnd vdd FILL
X_1330_ _623_ _626_ _625_ _627_ vdd gnd AOI21X1
XFILL_1__1072_ gnd vdd FILL
XFILL_2__1141_ gnd vdd FILL
XFILL_0__1387_ gnd vdd FILL
XFILL_1__1128_ gnd vdd FILL
XFILL_1__921_ gnd vdd FILL
X_890_ _165_ _204_ _205_ vdd gnd NOR2X1
XFILL_2__1370_ gnd vdd FILL
XFILL_0__1196_ gnd vdd FILL
XFILL_0__943_ gnd vdd FILL
X_946_ _256_ _257_ _254_ _260_ vdd gnd AOI21X1
XFILL_1__1357_ gnd vdd FILL
XFILL_1__730_ gnd vdd FILL
XFILL_2__1426_ gnd vdd FILL
XFILL_2__1006_ gnd vdd FILL
X_1424_ _699_ _703_ _706_ _56_ vdd gnd AOI21X1
X_1004_ XinH[0] Cin[2] _311_ _312_ _317_ vdd 
+ gnd
+ AOI22X1
XFILL_0__752_ gnd vdd FILL
X_755_ XinH[3] _95_ vdd gnd INVX2
XFILL_1__1166_ gnd vdd FILL
XFILL_2__1235_ gnd vdd FILL
XFILL_0__808_ gnd vdd FILL
X_1233_ _519_ _500_ _517_ _541_ vdd gnd OAI21X1
XFILL_0__981_ gnd vdd FILL
X_984_ _293_ _291_ _297_ vdd gnd NAND2X1
XFILL_1__1395_ gnd vdd FILL
XFILL_2__802_ gnd vdd FILL
XFILL_2__1044_ gnd vdd FILL
X_1462_ _10_ clk_bF$buf5 rYin[6] vdd gnd DFFPOSX1
X_1042_ XinH[0] Cin[3] _354_ vdd gnd AND2X2
XFILL_0__790_ gnd vdd FILL
XFILL_1__824_ gnd vdd FILL
X_793_ rYin[9] _119_ vdd gnd INVX1
XFILL_2__1273_ gnd vdd FILL
XFILL_0__1099_ gnd vdd FILL
X_1518_ _66_ clk_bF$buf6 XinHL[0] vdd gnd DFFPOSX1
XFILL_0__846_ gnd vdd FILL
X_849_ XinHL[3] Cin_0_bF$buf1 _165_ vdd gnd NAND2X1
X_1271_ _571_ _572_ _566_ _575_ vdd gnd OAI21X1
XFILL_0__1311_ gnd vdd FILL
XFILL_2__1329_ gnd vdd FILL
XFILL_2__840_ gnd vdd FILL
XFILL_2__1082_ gnd vdd FILL
X_1327_ rYin[6] mul[6] _624_ vdd gnd NAND2X1
XFILL_1__1069_ gnd vdd FILL
X_1080_ _387_ _386_ _385_ _392_ vdd gnd AOI21X1
XFILL_1__862_ gnd vdd FILL
XFILL_0__1120_ gnd vdd FILL
XFILL_2__1138_ gnd vdd FILL
XFILL_3_BUFX2_insert33 gnd vdd FILL
X_1136_ _415_ _446_ _439_ _447_ vdd gnd NAND3X1
XFILL_0__884_ gnd vdd FILL
XFILL_1__918_ gnd vdd FILL
X_887_ _201_ _202_ vdd gnd INVX1
XFILL_1__1298_ gnd vdd FILL
XFILL_2__1367_ gnd vdd FILL
XFILL86550x43050 gnd vdd FILL
X_1365_ rYin[11] mul[11] _659_ vdd gnd NAND2X1
XFILL_1__727_ gnd vdd FILL
XFILL_0__1405_ gnd vdd FILL
XFILL_2__934_ gnd vdd FILL
XFILL_2__1176_ gnd vdd FILL
XFILL_0__749_ gnd vdd FILL
X_1174_ _479_ _480_ _462_ _484_ vdd gnd OAI21X1
XFILL_1__956_ gnd vdd FILL
XFILL_0__1214_ gnd vdd FILL
XFILL_2__743_ gnd vdd FILL
XFILL_0__978_ gnd vdd FILL
XFILL_1__765_ gnd vdd FILL
XFILL_0__1443_ gnd vdd FILL
XFILL_0__1023_ gnd vdd FILL
XFILL_2__972_ gnd vdd FILL
X_1459_ _7_ clk_bF$buf5 rYin[3] vdd gnd DFFPOSX1
X_1039_ _322_ _351_ vdd gnd INVX1
XFILL_0__787_ gnd vdd FILL
XFILL_3__1283_ gnd vdd FILL
XFILL_1__994_ gnd vdd FILL
XFILL_0__1252_ gnd vdd FILL
XFILL_2__781_ gnd vdd FILL
XFILL_1__1413_ gnd vdd FILL
X_1268_ rYin[1] mul[1] _572_ vdd gnd NOR2X1
XFILL_0__1308_ gnd vdd FILL
XFILL_2__837_ gnd vdd FILL
XFILL_2__1079_ gnd vdd FILL
XFILL_0__1061_ gnd vdd FILL
X_811_ rYin[15] _131_ vdd gnd INVX1
XFILL_1__1222_ gnd vdd FILL
X_1497_ _45_ clk_bF$buf2 y[11] vdd gnd DFFPOSX1
X_1077_ _384_ _388_ _352_ _389_ vdd gnd NAND3X1
XFILL_1__859_ gnd vdd FILL
XFILL_0__1117_ gnd vdd FILL
XFILL_0__1290_ gnd vdd FILL
XFILL_1__1451_ gnd vdd FILL
XFILL_1__1031_ gnd vdd FILL
XFILL_2__1100_ gnd vdd FILL
XFILL_0__1346_ gnd vdd FILL
XFILL_2__875_ gnd vdd FILL
XFILL_1__1260_ gnd vdd FILL
XFILL_1__897_ gnd vdd FILL
XFILL_0__1155_ gnd vdd FILL
XFILL_0__902_ gnd vdd FILL
X_905_ _196_ _203_ _206_ _220_ vdd gnd NAND3X1
XFILL_1__1316_ gnd vdd FILL
XFILL_0__1384_ gnd vdd FILL
XFILL_1__1125_ gnd vdd FILL
XFILL_2__969_ gnd vdd FILL
XFILL_0__1193_ gnd vdd FILL
XFILL_0__940_ gnd vdd FILL
X_943_ _91_ _180_ _204_ _257_ vdd gnd OAI21X1
XFILL_1__1354_ gnd vdd FILL
XFILL_2__1423_ gnd vdd FILL
XFILL_2__1003_ gnd vdd FILL
XFILL_0__1249_ gnd vdd FILL
XFILL_2__778_ gnd vdd FILL
X_1421_ Yin2[1] _703_ _705_ vdd gnd NOR2X1
X_1001_ _308_ _313_ _302_ _314_ vdd gnd NAND3X1
X_752_ XinH[2] _93_ vdd gnd INVX2
XFILL_1__1163_ gnd vdd FILL
XFILL_2__1232_ gnd vdd FILL
XFILL_0__1058_ gnd vdd FILL
XFILL86850x70350 gnd vdd FILL
XFILL_0__805_ gnd vdd FILL
X_808_ rYin[14] _129_ vdd gnd INVX1
XFILL_1__1219_ gnd vdd FILL
X_1230_ _537_ _529_ _538_ vdd gnd XOR2X1
X_981_ _179_ _239_ _293_ _294_ vdd gnd OAI21X1
XFILL_1__1392_ gnd vdd FILL
XFILL_2__1041_ gnd vdd FILL
XFILL_0__1287_ gnd vdd FILL
XFILL_1__1448_ gnd vdd FILL
XFILL_1__1028_ gnd vdd FILL
XFILL_1__821_ gnd vdd FILL
X_790_ rYin[8] _117_ vdd gnd INVX1
XFILL_2__1270_ gnd vdd FILL
XFILL_0__1096_ gnd vdd FILL
X_1515_ _63_ clk_bF$buf5 Yin0[1] vdd gnd DFFPOSX1
XFILL_0__843_ gnd vdd FILL
X_846_ XinHL[0] Cin[3] _162_ vdd gnd NAND2X1
XFILL_1__1257_ gnd vdd FILL
XFILL86250x66450 gnd vdd FILL
XFILL_2__1326_ gnd vdd FILL
X_1324_ _135__bF$buf1 _620_ _621_ _41_ vdd gnd OAI21X1
XFILL_1__1066_ gnd vdd FILL
XFILL_2__1135_ gnd vdd FILL
X_1133_ _368_ _382_ _429_ _444_ vdd gnd OAI21X1
XFILL_0__881_ gnd vdd FILL
XFILL_1__915_ gnd vdd FILL
X_884_ XinH[0] Cin_0_bF$buf1 XinHL[3] Cin_1_bF$buf0 _199_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1295_ gnd vdd FILL
XFILL_2__1364_ gnd vdd FILL
XFILL_1_CLKBUF1_insert7 gnd vdd FILL
XFILL_1_CLKBUF1_insert8 gnd vdd FILL
XFILL_1_CLKBUF1_insert9 gnd vdd FILL
XFILL_0__937_ gnd vdd FILL
X_1362_ _653_ _649_ _656_ vdd gnd NOR2X1
XFILL_1__724_ gnd vdd FILL
XFILL_0__1402_ gnd vdd FILL
XFILL_2__931_ gnd vdd FILL
XFILL_2__1173_ gnd vdd FILL
X_1418_ _71_ _77_ _703_ vdd gnd NOR2X1
XFILL_0__746_ gnd vdd FILL
X_749_ XinH[1] _91_ vdd gnd INVX1
X_1171_ _479_ _480_ _478_ _481_ vdd gnd OAI21X1
XFILL_1__953_ gnd vdd FILL
XFILL_2__1229_ gnd vdd FILL
XFILL_0__1211_ gnd vdd FILL
XFILL_2__740_ gnd vdd FILL
X_1227_ _534_ _470_ _535_ vdd gnd OR2X2
XFILL_0__975_ gnd vdd FILL
X_978_ XinHL[3] Cin[3] _291_ vdd gnd AND2X2
XFILL_1__1389_ gnd vdd FILL
XFILL_1__762_ gnd vdd FILL
XFILL_0__1440_ gnd vdd FILL
XFILL_0__1020_ gnd vdd FILL
XFILL_2__1038_ gnd vdd FILL
X_1456_ _4_ clk_bF$buf6 rYin[0] vdd gnd DFFPOSX1
X_1036_ _286_ _333_ _347_ _348_ vdd gnd AOI21X1
XFILL_0__784_ gnd vdd FILL
XFILL_1__818_ gnd vdd FILL
X_787_ rYin[7] _115_ vdd gnd INVX1
XFILL_1__1198_ gnd vdd FILL
XFILL_1__991_ gnd vdd FILL
XFILL_2__1267_ gnd vdd FILL
XFILL_1__1410_ gnd vdd FILL
XFILL_3__1336_ gnd vdd FILL
X_1265_ _135__bF$buf1 _568_ _569_ _34_ vdd gnd OAI21X1
XFILL_0__1305_ gnd vdd FILL
XFILL_2__834_ gnd vdd FILL
XFILL_2__1076_ gnd vdd FILL
X_1494_ _42_ clk_bF$buf2 y[8] vdd gnd DFFPOSX1
X_1074_ _378_ _375_ _370_ _386_ vdd gnd NAND3X1
XFILL_1__856_ gnd vdd FILL
XFILL_0__1534_ gnd vdd FILL
XFILL_0__1114_ gnd vdd FILL
XFILL_0__878_ gnd vdd FILL
XFILL_3__1374_ gnd vdd FILL
XBUFX2_insert0 LoadCtl[4] LoadCtl_4_bF$buf6 vdd gnd BUFX2
XBUFX2_insert1 LoadCtl[4] LoadCtl_4_bF$buf5 vdd gnd BUFX2
XBUFX2_insert2 LoadCtl[4] LoadCtl_4_bF$buf4 vdd gnd BUFX2
XBUFX2_insert3 LoadCtl[4] LoadCtl_4_bF$buf3 vdd gnd BUFX2
XBUFX2_insert4 LoadCtl[4] LoadCtl_4_bF$buf2 vdd gnd BUFX2
XBUFX2_insert5 LoadCtl[4] LoadCtl_4_bF$buf1 vdd gnd BUFX2
XBUFX2_insert6 LoadCtl[4] LoadCtl_4_bF$buf0 vdd gnd BUFX2
XFILL_0__1343_ gnd vdd FILL
XFILL_2__872_ gnd vdd FILL
X_1359_ _649_ _653_ _654_ vdd gnd AND2X2
XFILL_1__894_ gnd vdd FILL
XFILL_2__928_ gnd vdd FILL
XFILL_0__1152_ gnd vdd FILL
X_902_ _162_ _212_ _216_ _217_ vdd gnd OAI21X1
XFILL_1__1313_ gnd vdd FILL
X_1168_ _435_ _437_ _430_ _478_ vdd gnd AOI21X1
XFILL_0__1208_ gnd vdd FILL
XFILL_2__737_ gnd vdd FILL
XFILL_2__1399_ gnd vdd FILL
XFILL_0__1381_ gnd vdd FILL
XFILL86850x35250 gnd vdd FILL
XFILL_1__1122_ gnd vdd FILL
X_1397_ rYin[14] _687_ _688_ vdd gnd NOR2X1
XFILL_1__759_ gnd vdd FILL
XFILL_0__1437_ gnd vdd FILL
XFILL_0__1017_ gnd vdd FILL
XFILL_2__966_ gnd vdd FILL
XFILL_0__1190_ gnd vdd FILL
X_940_ _249_ _254_ vdd gnd INVX1
XFILL_1__1351_ gnd vdd FILL
XFILL_1__988_ gnd vdd FILL
XFILL_2__1420_ gnd vdd FILL
XFILL_2__1000_ gnd vdd FILL
XFILL_0__1246_ gnd vdd FILL
XFILL_2__775_ gnd vdd FILL
XFILL_1__1407_ gnd vdd FILL
XFILL_1__1160_ gnd vdd FILL
XFILL_1__797_ gnd vdd FILL
XFILL_0__1055_ gnd vdd FILL
XFILL_0__802_ gnd vdd FILL
X_805_ rYin[13] _127_ vdd gnd INVX1
XFILL_1__1216_ gnd vdd FILL
XFILL_0__1284_ gnd vdd FILL
XFILL_1__1445_ gnd vdd FILL
XFILL_1__1025_ gnd vdd FILL
XFILL_2__869_ gnd vdd FILL
XFILL_0__1093_ gnd vdd FILL
X_1512_ _60_ clk_bF$buf6 Yin1[2] vdd gnd DFFPOSX1
XFILL_0__840_ gnd vdd FILL
XFILL_3__984_ gnd vdd FILL
X_843_ _159_ _135__bF$buf4 _160_ vdd gnd NAND2X1
XFILL_1__1254_ gnd vdd FILL
XFILL_2__1323_ gnd vdd FILL
XFILL_0__1149_ gnd vdd FILL
X_1321_ _616_ _618_ _619_ vdd gnd NOR2X1
XFILL_1__1063_ gnd vdd FILL
XFILL_2__1132_ gnd vdd FILL
XFILL_0__1378_ gnd vdd FILL
XFILL_1__1119_ gnd vdd FILL
X_1130_ _364_ _440_ _386_ _441_ vdd gnd OAI21X1
XFILL_1__912_ gnd vdd FILL
X_881_ _164_ _167_ _171_ _196_ vdd gnd OAI21X1
XFILL_1__1292_ gnd vdd FILL
XFILL_2__1361_ gnd vdd FILL
XFILL_0__1187_ gnd vdd FILL
XFILL_0__934_ gnd vdd FILL
X_937_ XinH[1] Cin_0_bF$buf0 _251_ vdd gnd NAND2X1
XFILL_1__1348_ gnd vdd FILL
XFILL_2__1417_ gnd vdd FILL
XFILL86850x23550 gnd vdd FILL
XFILL_2__1170_ gnd vdd FILL
X_1415_ Yin[3] _701_ vdd gnd INVX1
XFILL_0__743_ gnd vdd FILL
X_746_ XinH[0] _89_ vdd gnd INVX2
XFILL_1__1157_ gnd vdd FILL
XFILL_1__950_ gnd vdd FILL
XFILL_2__1226_ gnd vdd FILL
X_1224_ _93_ _418_ _507_ _532_ vdd gnd OAI21X1
XFILL_0__972_ gnd vdd FILL
X_975_ _265_ _288_ vdd gnd INVX1
XFILL_1__1386_ gnd vdd FILL
XFILL_2__1035_ gnd vdd FILL
X_1453_ _1_ clk_bF$buf1 XinH[1] vdd gnd DFFPOSX1
X_1033_ _281_ LoadCtl_4_bF$buf2 _345_ _337_ _26_ vdd 
+ gnd
+ OAI22X1
XFILL_0__781_ gnd vdd FILL
XFILL_1__815_ gnd vdd FILL
XFILL86250x19650 gnd vdd FILL
X_784_ rYin[6] _113_ vdd gnd INVX1
XFILL_1__1195_ gnd vdd FILL
XFILL_2__1264_ gnd vdd FILL
X_1509_ _57_ clk_bF$buf3 Yin2[3] vdd gnd DFFPOSX1
XFILL_0__837_ gnd vdd FILL
X_1262_ _101_ _133_ _567_ vdd gnd NAND2X1
XFILL_0__1302_ gnd vdd FILL
XFILL_2__831_ gnd vdd FILL
XFILL_2__1073_ gnd vdd FILL
X_1318_ rYin[7] mul[7] _616_ vdd gnd NOR2X1
X_1491_ _39_ clk_bF$buf0 y[5] vdd gnd DFFPOSX1
X_1071_ _379_ _382_ _378_ _383_ vdd gnd OAI21X1
XFILL_1__853_ gnd vdd FILL
XFILL_0__1531_ gnd vdd FILL
XFILL_2__1129_ gnd vdd FILL
XFILL_0__1111_ gnd vdd FILL
X_1127_ _437_ _435_ _436_ _438_ vdd gnd NAND3X1
XFILL_0__875_ gnd vdd FILL
XFILL_1__909_ gnd vdd FILL
X_878_ _190_ _193_ vdd gnd INVX1
XFILL_1__1289_ gnd vdd FILL
XFILL_0__1340_ gnd vdd FILL
XFILL_2__1358_ gnd vdd FILL
XFILL_3__1427_ gnd vdd FILL
X_1356_ _121_ _494_ _651_ vdd gnd NOR2X1
XFILL_1__1098_ gnd vdd FILL
XFILL_1__891_ gnd vdd FILL
XFILL_2__925_ gnd vdd FILL
XFILL_2__1167_ gnd vdd FILL
XFILL_1__1310_ gnd vdd FILL
X_1165_ _426_ _310_ _475_ vdd gnd NOR2X1
XFILL_1__947_ gnd vdd FILL
XFILL_0__1205_ gnd vdd FILL
XFILL_2__734_ gnd vdd FILL
XFILL_2__1396_ gnd vdd FILL
XFILL_0__969_ gnd vdd FILL
X_1394_ _680_ _674_ _685_ vdd gnd NOR2X1
XFILL_1__756_ gnd vdd FILL
XFILL_0__1434_ gnd vdd FILL
XFILL_0__1014_ gnd vdd FILL
XFILL86850x11850 gnd vdd FILL
XFILL_2__963_ gnd vdd FILL
XFILL_0__778_ gnd vdd FILL
XFILL_1__985_ gnd vdd FILL
XFILL_0__1243_ gnd vdd FILL
XFILL_2__772_ gnd vdd FILL
XFILL_1__1404_ gnd vdd FILL
X_1259_ _562_ _135__bF$buf5 _563_ _564_ _33_ vdd 
+ gnd
+ AOI22X1
XFILL_1__794_ gnd vdd FILL
XFILL_2__828_ gnd vdd FILL
XFILL_0__1052_ gnd vdd FILL
X_802_ rYin[12] _125_ vdd gnd INVX1
XFILL_1__1213_ gnd vdd FILL
X_1488_ _36_ clk_bF$buf0 y[2] vdd gnd DFFPOSX1
X_1068_ _93_ _151_ _372_ _380_ vdd gnd OAI21X1
XFILL_0__1528_ gnd vdd FILL
XFILL_0__1108_ gnd vdd FILL
XFILL_0__1281_ gnd vdd FILL
XFILL_2__1299_ gnd vdd FILL
XFILL_1__1442_ gnd vdd FILL
XFILL_1__1022_ gnd vdd FILL
X_1297_ _592_ _595_ _598_ vdd gnd NAND2X1
XFILL_0__1337_ gnd vdd FILL
XFILL87150x43050 gnd vdd FILL
XFILL_2__866_ gnd vdd FILL
XFILL_0__1090_ gnd vdd FILL
X_840_ _145_ _154_ _140_ _157_ vdd gnd AOI21X1
XFILL_1__1251_ gnd vdd FILL
XFILL_3__1177_ gnd vdd FILL
XFILL_1__888_ gnd vdd FILL
XFILL_2__1320_ gnd vdd FILL
XFILL_0__1146_ gnd vdd FILL
XFILL_1__1307_ gnd vdd FILL
XFILL86550x46950 gnd vdd FILL
XFILL_1__1060_ gnd vdd FILL
XFILL_0__1375_ gnd vdd FILL
XFILL_1__1116_ gnd vdd FILL
XFILL_0__1184_ gnd vdd FILL
XFILL_0__931_ gnd vdd FILL
X_934_ _247_ _248_ vdd gnd INVX1
XFILL_1__1345_ gnd vdd FILL
XFILL_2__1414_ gnd vdd FILL
XFILL_2__769_ gnd vdd FILL
X_1412_ Yin[2] _699_ vdd gnd INVX1
XFILL_0__740_ gnd vdd FILL
X_743_ _71_ y[11] _72_ _87_ vdd gnd OAI21X1
XFILL_1__1154_ gnd vdd FILL
XFILL_2__1223_ gnd vdd FILL
XFILL_0__1049_ gnd vdd FILL
XFILL_2__998_ gnd vdd FILL
X_1221_ _502_ _511_ _510_ _529_ vdd gnd AOI21X1
X_972_ XinHL[2] Cin[4] _285_ vdd gnd NAND2X1
XFILL_1__1383_ gnd vdd FILL
XFILL_2__1032_ gnd vdd FILL
XFILL_0__1278_ gnd vdd FILL
XFILL_1__1439_ gnd vdd FILL
XFILL_1__1019_ gnd vdd FILL
X_1450_ LoadCtl_0_bF$buf4 Xin[3] _720_ vdd gnd NAND2X1
X_1030_ _341_ _342_ _340_ _343_ vdd gnd OAI21X1
XFILL_1__812_ gnd vdd FILL
X_781_ rYin[5] _111_ vdd gnd INVX1
XFILL_1__1192_ gnd vdd FILL
XFILL_2__1261_ gnd vdd FILL
XFILL_0__1087_ gnd vdd FILL
X_1506_ _54_ clk_bF$buf3 Yin2[0] vdd gnd DFFPOSX1
XFILL_0__834_ gnd vdd FILL
X_837_ _153_ _146_ _149_ _154_ vdd gnd NAND3X1
XFILL_1__1248_ gnd vdd FILL
XFILL_2__1317_ gnd vdd FILL
XFILL_2__1070_ gnd vdd FILL
X_1315_ LoadCtl_4_bF$buf1 _613_ _614_ vdd gnd NAND2X1
XFILL_1__1057_ gnd vdd FILL
XFILL_1__850_ gnd vdd FILL
XFILL87150x31350 gnd vdd FILL
XFILL_2__1126_ gnd vdd FILL
X_1124_ _422_ _419_ _435_ vdd gnd XOR2X1
XFILL_0__872_ gnd vdd FILL
XFILL_1__906_ gnd vdd FILL
X_875_ LoadCtl_4_bF$buf6 _190_ _191_ vdd gnd NAND2X1
XFILL_1__1286_ gnd vdd FILL
XFILL_2__1355_ gnd vdd FILL
XFILL_0__928_ gnd vdd FILL
X_1353_ _632_ _639_ _640_ _648_ vdd gnd OAI21X1
XFILL_1__1095_ gnd vdd FILL
XFILL_2__922_ gnd vdd FILL
XFILL_2__1164_ gnd vdd FILL
X_1409_ Yin[1] _697_ vdd gnd INVX1
XFILL_0__737_ gnd vdd FILL
X_1162_ _89_ _418_ _471_ _472_ vdd gnd OAI21X1
XFILL_1__944_ gnd vdd FILL
XFILL_0__1202_ gnd vdd FILL
XFILL_2__731_ gnd vdd FILL
XFILL_2__1393_ gnd vdd FILL
X_1218_ LoadCtl_4_bF$buf5 _520_ _526_ _527_ vdd gnd NAND3X1
XFILL_0__966_ gnd vdd FILL
X_969_ _273_ _276_ _230_ _223_ _282_ vdd 
+ gnd
+ AOI22X1
X_1391_ _78_ _135__bF$buf5 _681_ _682_ _47_ vdd 
+ gnd
+ AOI22X1
XFILL_1__753_ gnd vdd FILL
XFILL_0__1431_ gnd vdd FILL
XFILL_2__1449_ gnd vdd FILL
XFILL_0__1011_ gnd vdd FILL
XFILL_2__1029_ gnd vdd FILL
XFILL_2__960_ gnd vdd FILL
X_1447_ LoadCtl_0_bF$buf2 _150_ _718_ _67_ vdd gnd OAI21X1
X_1027_ _234_ _275_ _339_ _340_ vdd gnd AOI21X1
XFILL_0__775_ gnd vdd FILL
XFILL_1__809_ gnd vdd FILL
X_778_ rYin[4] _109_ vdd gnd INVX1
XFILL_1__1189_ gnd vdd FILL
XFILL_1__982_ gnd vdd FILL
XFILL_2__1258_ gnd vdd FILL
XFILL_0__1240_ gnd vdd FILL
XFILL_1__1401_ gnd vdd FILL
X_1256_ mul[13] _562_ vdd gnd INVX1
XFILL_1__791_ gnd vdd FILL
XFILL_2__825_ gnd vdd FILL
XFILL_2__1067_ gnd vdd FILL
XFILL_1__1210_ gnd vdd FILL
X_1485_ _33_ clk_bF$buf3 mul[13] vdd gnd DFFPOSX1
X_1065_ XinH[1] Cin_1_bF$buf1 XinH[2] Cin_0_bF$buf2 _377_ vdd 
+ gnd
+ AOI22X1
XFILL_1__847_ gnd vdd FILL
XFILL_0__1105_ gnd vdd FILL
XFILL_2__1296_ gnd vdd FILL
XFILL_0__869_ gnd vdd FILL
X_1294_ _584_ _583_ _594_ _595_ vdd gnd OAI21X1
XFILL_0__1334_ gnd vdd FILL
XFILL_2__863_ gnd vdd FILL
XFILL_1__885_ gnd vdd FILL
XFILL_2__919_ gnd vdd FILL
XFILL_0__1143_ gnd vdd FILL
XFILL_1__1304_ gnd vdd FILL
XFILL_0_BUFX2_insert15 gnd vdd FILL
X_1159_ XinH[1] Cin[3] _469_ vdd gnd NAND2X1
XFILL_0_BUFX2_insert16 gnd vdd FILL
XFILL_0_BUFX2_insert17 gnd vdd FILL
XFILL_0_BUFX2_insert18 gnd vdd FILL
XFILL_0_BUFX2_insert19 gnd vdd FILL
XFILL_2__728_ gnd vdd FILL
XFILL_0__1372_ gnd vdd FILL
XFILL_1__1533_ gnd vdd FILL
XFILL_1__1113_ gnd vdd FILL
X_1388_ _679_ _680_ vdd gnd INVX1
XFILL_0__1428_ gnd vdd FILL
XFILL_0__1008_ gnd vdd FILL
XFILL_2__957_ gnd vdd FILL
XFILL_2__1199_ gnd vdd FILL
XFILL_0__1181_ gnd vdd FILL
X_931_ _244_ _242_ _243_ _245_ vdd gnd NAND3X1
XFILL_1__1342_ gnd vdd FILL
XFILL_3__1268_ gnd vdd FILL
X_1197_ _95_ _239_ _470_ _506_ vdd gnd OAI21X1
XFILL_1__979_ gnd vdd FILL
XFILL_2__1411_ gnd vdd FILL
XFILL_0__1237_ gnd vdd FILL
XFILL_2__766_ gnd vdd FILL
X_740_ LoadCtl_0_bF$buf1 y[2] _75_ y[6] _85_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1151_ gnd vdd FILL
XBUFX2_insert20 _135_ _135__bF$buf4 vdd gnd BUFX2
XBUFX2_insert21 _135_ _135__bF$buf3 vdd gnd BUFX2
XBUFX2_insert22 _135_ _135__bF$buf2 vdd gnd BUFX2
XBUFX2_insert23 _135_ _135__bF$buf1 vdd gnd BUFX2
XBUFX2_insert24 _135_ _135__bF$buf0 vdd gnd BUFX2
XBUFX2_insert25 LoadCtl[0] LoadCtl_0_bF$buf4 vdd gnd BUFX2
XBUFX2_insert26 LoadCtl[0] LoadCtl_0_bF$buf3 vdd gnd BUFX2
XBUFX2_insert27 LoadCtl[0] LoadCtl_0_bF$buf2 vdd gnd BUFX2
XBUFX2_insert28 LoadCtl[0] LoadCtl_0_bF$buf1 vdd gnd BUFX2
XBUFX2_insert29 LoadCtl[0] LoadCtl_0_bF$buf0 vdd gnd BUFX2
XFILL_1__788_ gnd vdd FILL
XFILL_2__1220_ gnd vdd FILL
XFILL_0__1046_ gnd vdd FILL
XFILL_2__995_ gnd vdd FILL
XFILL_1__1207_ gnd vdd FILL
XFILL_1__1380_ gnd vdd FILL
XFILL_0__1275_ gnd vdd FILL
XFILL_1__1436_ gnd vdd FILL
XFILL_1__1016_ gnd vdd FILL
XFILL_0__1084_ gnd vdd FILL
X_1503_ _51_ clk_bF$buf4 Yin3[1] vdd gnd DFFPOSX1
XFILL_0__831_ gnd vdd FILL
X_834_ Cin_1_bF$buf0 _151_ vdd gnd INVX1
XFILL_1__1245_ gnd vdd FILL
XFILL_2__1314_ gnd vdd FILL
X_1312_ rYin[6] mul[6] _611_ vdd gnd XOR2X1
XFILL_1__1054_ gnd vdd FILL
XFILL_2__1123_ gnd vdd FILL
XFILL_0__1369_ gnd vdd FILL
XFILL_2__898_ gnd vdd FILL
X_1121_ _367_ _427_ _432_ vdd gnd XOR2X1
XFILL_1__903_ gnd vdd FILL
X_872_ _185_ _186_ _187_ _188_ vdd gnd NAND3X1
XFILL_1__1283_ gnd vdd FILL
XFILL_2__1352_ gnd vdd FILL
XFILL_0__1178_ gnd vdd FILL
XFILL_0__925_ gnd vdd FILL
X_928_ _236_ _242_ vdd gnd INVX1
XFILL_1__1339_ gnd vdd FILL
X_1350_ _135__bF$buf0 _644_ _645_ _43_ vdd gnd OAI21X1
XFILL_1__1092_ gnd vdd FILL
XFILL_2__1408_ gnd vdd FILL
XFILL_2__1161_ gnd vdd FILL
X_1406_ LoadCtl[3] _71_ _72_ _695_ vdd gnd NAND3X1
XFILL_0__734_ gnd vdd FILL
XFILL_3__878_ gnd vdd FILL
XFILL_3__1230_ gnd vdd FILL
X_737_ y[14] _82_ vdd gnd INVX1
XFILL_1__1148_ gnd vdd FILL
XFILL_1__941_ gnd vdd FILL
XFILL_2__1217_ gnd vdd FILL
XFILL_2__1390_ gnd vdd FILL
X_1215_ _522_ _410_ _523_ _524_ vdd gnd AOI21X1
XFILL_0__963_ gnd vdd FILL
XFILL_2_CLKBUF1_insert10 gnd vdd FILL
X_966_ mul[5] _135__bF$buf4 _280_ vdd gnd NAND2X1
XFILL_2_CLKBUF1_insert11 gnd vdd FILL
XFILL_2_CLKBUF1_insert12 gnd vdd FILL
XFILL_2_CLKBUF1_insert13 gnd vdd FILL
XFILL_2_CLKBUF1_insert14 gnd vdd FILL
XFILL_1__1377_ gnd vdd FILL
XFILL_1__750_ gnd vdd FILL
XFILL_2__1446_ gnd vdd FILL
XFILL_2__1026_ gnd vdd FILL
X_1444_ LoadCtl_0_bF$buf4 Xin[0] _717_ vdd gnd NAND2X1
X_1024_ _282_ _336_ _337_ vdd gnd NOR2X1
XFILL_0__772_ gnd vdd FILL
XFILL_1__806_ gnd vdd FILL
X_775_ rYin[3] _107_ vdd gnd INVX1
XFILL_1__1186_ gnd vdd FILL
XFILL_2__1255_ gnd vdd FILL
XFILL_0__828_ gnd vdd FILL
X_1253_ _555_ _560_ vdd gnd INVX1
XFILL_2__822_ gnd vdd FILL
XFILL_2__1064_ gnd vdd FILL
X_1309_ _605_ _608_ _600_ _39_ vdd gnd OAI21X1
X_1482_ _30_ clk_bF$buf4 mul[10] vdd gnd DFFPOSX1
X_1062_ _369_ _374_ vdd gnd INVX1
XFILL_1__844_ gnd vdd FILL
XFILL_0__1102_ gnd vdd FILL
XFILL_2__1293_ gnd vdd FILL
X_1118_ _425_ _426_ _428_ _429_ vdd gnd OAI21X1
XFILL_0__866_ gnd vdd FILL
X_869_ _162_ _185_ vdd gnd INVX1
X_1291_ _590_ _591_ _592_ vdd gnd AND2X2
XFILL_0__1331_ gnd vdd FILL
XFILL_2__1349_ gnd vdd FILL
XFILL_2__860_ gnd vdd FILL
X_1347_ _642_ _643_ vdd gnd INVX1
XFILL_1__1089_ gnd vdd FILL
XFILL_1__882_ gnd vdd FILL
XFILL_2__916_ gnd vdd FILL
XFILL_2__1158_ gnd vdd FILL
XFILL_0__1140_ gnd vdd FILL
XFILL_1__1301_ gnd vdd FILL
X_1156_ _464_ _465_ _466_ vdd gnd OR2X2
XFILL_1__938_ gnd vdd FILL
XFILL_2__725_ gnd vdd FILL
XFILL_2__1387_ gnd vdd FILL
XFILL_1__1530_ gnd vdd FILL
XFILL_1__1110_ gnd vdd FILL
X_1385_ rYin[13] mul[13] _677_ vdd gnd NOR2X1
XFILL_1__747_ gnd vdd FILL
XFILL_0__1425_ gnd vdd FILL
XFILL_0__1005_ gnd vdd FILL
XFILL_2__954_ gnd vdd FILL
XFILL_2__1196_ gnd vdd FILL
XFILL_0__769_ gnd vdd FILL
X_1194_ _502_ _503_ vdd gnd INVX1
XFILL_1__976_ gnd vdd FILL
XFILL_0__1234_ gnd vdd FILL
XFILL_2__763_ gnd vdd FILL
XFILL_0__998_ gnd vdd FILL
XFILL_1__785_ gnd vdd FILL
XFILL_2__819_ gnd vdd FILL
XFILL_0__1043_ gnd vdd FILL
XFILL_2__992_ gnd vdd FILL
XFILL_1__1204_ gnd vdd FILL
XFILL85950x70350 gnd vdd FILL
X_1479_ _27_ clk_bF$buf6 mul[7] vdd gnd DFFPOSX1
X_1059_ _366_ _371_ vdd gnd INVX1
XFILL_0__1272_ gnd vdd FILL
XFILL_1__1433_ gnd vdd FILL
XFILL_1__1013_ gnd vdd FILL
XFILL_3__1359_ gnd vdd FILL
X_1288_ y[4] _135__bF$buf3 _589_ vdd gnd NAND2X1
XFILL_0__1328_ gnd vdd FILL
XFILL_2__857_ gnd vdd FILL
XFILL_2__1099_ gnd vdd FILL
XFILL_0__1081_ gnd vdd FILL
X_1500_ _48_ clk_bF$buf4 y[14] vdd gnd DFFPOSX1
X_831_ XinHL[2] Cin_1_bF$buf2 _148_ vdd gnd AND2X2
XFILL_1__1242_ gnd vdd FILL
X_1097_ mul[8] _135__bF$buf2 _408_ vdd gnd NAND2X1
XFILL_1__879_ gnd vdd FILL
XFILL_2__1311_ gnd vdd FILL
XFILL_0__1137_ gnd vdd FILL
XFILL_1__1051_ gnd vdd FILL
XFILL_3__1397_ gnd vdd FILL
XFILL_2__1120_ gnd vdd FILL
XFILL_0__1366_ gnd vdd FILL
XFILL_2__895_ gnd vdd FILL
XFILL_1__1527_ gnd vdd FILL
XFILL_1__1107_ gnd vdd FILL
XFILL_1__900_ gnd vdd FILL
XFILL_1__1280_ gnd vdd FILL
XFILL_0__1175_ gnd vdd FILL
XFILL_0__922_ gnd vdd FILL
X_925_ Cin[3] _239_ vdd gnd INVX2
XFILL_1__1336_ gnd vdd FILL
XFILL_2__1405_ gnd vdd FILL
X_1403_ _692_ _691_ _693_ vdd gnd NAND2X1
XFILL_0__731_ gnd vdd FILL
X_734_ _71_ y[9] _79_ _80_ vdd gnd OAI21X1
XFILL_1__1145_ gnd vdd FILL
XFILL_2__1214_ gnd vdd FILL
XFILL_2__989_ gnd vdd FILL
X_1212_ _399_ _404_ _521_ vdd gnd AND2X2
XFILL_0__960_ gnd vdd FILL
X_963_ _273_ _276_ _277_ vdd gnd NAND2X1
XFILL_1__1374_ gnd vdd FILL
XFILL_2__1443_ gnd vdd FILL
XFILL_2__1023_ gnd vdd FILL
XFILL_0__1269_ gnd vdd FILL
XFILL_2__798_ gnd vdd FILL
X_1441_ LoadCtl_0_bF$buf0 _699_ _715_ _64_ vdd gnd AOI21X1
X_1021_ _286_ _332_ _333_ _334_ vdd gnd NAND3X1
XFILL_1__803_ gnd vdd FILL
X_772_ rYin[2] _105_ vdd gnd INVX1
XFILL_1__1183_ gnd vdd FILL
XFILL_2__1252_ gnd vdd FILL
XFILL_0__1078_ gnd vdd FILL
XFILL_0__825_ gnd vdd FILL
XFILL_3__969_ gnd vdd FILL
XFILL_3__1321_ gnd vdd FILL
X_828_ _144_ _143_ _141_ _145_ vdd gnd OAI21X1
XFILL_1__1239_ gnd vdd FILL
X_1250_ _548_ _557_ vdd gnd INVX1
XFILL_2__1308_ gnd vdd FILL
XFILL_2__1061_ gnd vdd FILL
XFILL87150x46950 gnd vdd FILL
X_1306_ _601_ _606_ vdd gnd INVX1
XFILL_1__1048_ gnd vdd FILL
XFILL_1__841_ gnd vdd FILL
XFILL_2__1117_ gnd vdd FILL
XFILL_2__1290_ gnd vdd FILL
X_1535_ _722_[3] Yout[3] vdd gnd BUFX2
X_1115_ XinH[3] Cin[2] _426_ vdd gnd NAND2X1
XFILL_0__863_ gnd vdd FILL
X_866_ _178_ _181_ _164_ _182_ vdd gnd AOI21X1
XFILL_1__1277_ gnd vdd FILL
XFILL_2__1346_ gnd vdd FILL
XFILL_0__919_ gnd vdd FILL
X_1344_ rYin[9] mul[9] _640_ vdd gnd NAND2X1
XFILL_1__1086_ gnd vdd FILL
XFILL_2__913_ gnd vdd FILL
XFILL_2__1155_ gnd vdd FILL
XFILL_0__728_ gnd vdd FILL
X_1153_ _89_ _418_ _463_ vdd gnd NOR2X1
XFILL_1__935_ gnd vdd FILL
XFILL_2__1384_ gnd vdd FILL
X_1209_ _516_ _501_ _518_ vdd gnd OR2X2
XFILL_0__957_ gnd vdd FILL
XFILL85950x35250 gnd vdd FILL
X_1382_ _674_ _673_ LoadCtl_4_bF$buf0 _675_ vdd gnd OAI21X1
XFILL_1__744_ gnd vdd FILL
XFILL_0__1422_ gnd vdd FILL
XFILL_0__1002_ gnd vdd FILL
XFILL_2__951_ gnd vdd FILL
XFILL_2__1193_ gnd vdd FILL
X_1438_ LoadCtl_0_bF$buf1 Yin0[1] _714_ vdd gnd NOR2X1
X_1018_ _287_ _330_ _325_ _331_ vdd gnd NAND3X1
XFILL_0__766_ gnd vdd FILL
X_769_ rYin[1] _103_ vdd gnd INVX1
X_1191_ _411_ _496_ _499_ _500_ vdd gnd AOI21X1
XFILL_1__973_ gnd vdd FILL
XFILL_2__1249_ gnd vdd FILL
XFILL_0__1231_ gnd vdd FILL
XFILL_2__760_ gnd vdd FILL
X_1247_ _534_ _553_ _550_ _554_ vdd gnd OAI21X1
XFILL_0__995_ gnd vdd FILL
XFILL_3__1071_ gnd vdd FILL
X_998_ _255_ _310_ _311_ vdd gnd NAND2X1
XFILL_1__782_ gnd vdd FILL
XFILL_2__816_ gnd vdd FILL
XFILL_0__1040_ gnd vdd FILL
XFILL_2__1058_ gnd vdd FILL
XFILL_3__931_ gnd vdd FILL
XFILL_1__1201_ gnd vdd FILL
X_1476_ _24_ clk_bF$buf0 mul[4] vdd gnd DFFPOSX1
X_1056_ _306_ _367_ _368_ vdd gnd NOR2X1
XFILL_1__838_ gnd vdd FILL
XFILL_2__1287_ gnd vdd FILL
XFILL_1__1430_ gnd vdd FILL
XFILL_1__1010_ gnd vdd FILL
X_1285_ _583_ _586_ _587_ vdd gnd XOR2X1
XFILL_0__1325_ gnd vdd FILL
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert22 gnd vdd FILL
XFILL_1_BUFX2_insert23 gnd vdd FILL
XFILL_1_BUFX2_insert24 gnd vdd FILL
XFILL_1_BUFX2_insert25 gnd vdd FILL
XFILL_2__854_ gnd vdd FILL
XFILL_1_BUFX2_insert26 gnd vdd FILL
XFILL_1_BUFX2_insert27 gnd vdd FILL
XFILL_1_BUFX2_insert28 gnd vdd FILL
XFILL_1_BUFX2_insert29 gnd vdd FILL
XFILL_2__1096_ gnd vdd FILL
X_1094_ _346_ _405_ _406_ vdd gnd XOR2X1
XFILL_1__876_ gnd vdd FILL
XFILL_0__1134_ gnd vdd FILL
XFILL_0__898_ gnd vdd FILL
XFILL_0__1363_ gnd vdd FILL
XFILL_2__892_ gnd vdd FILL
XFILL_1__1104_ gnd vdd FILL
X_1379_ _671_ _667_ _672_ vdd gnd NOR2X1
XFILL_0__1419_ gnd vdd FILL
XFILL_2__948_ gnd vdd FILL
XFILL_0__1172_ gnd vdd FILL
X_922_ XinHL[0] Cin[5] _236_ vdd gnd NAND2X1
XFILL_1__1333_ gnd vdd FILL
X_1188_ _490_ _451_ _497_ vdd gnd NAND2X1
XFILL_2__1402_ gnd vdd FILL
XFILL_0__1228_ gnd vdd FILL
XFILL_2__757_ gnd vdd FILL
X_1400_ y[15] _135__bF$buf0 _690_ vdd gnd NAND2X1
X_731_ _72_ _77_ vdd gnd INVX1
XFILL_1__1142_ gnd vdd FILL
XFILL_1__779_ gnd vdd FILL
XFILL_2__1211_ gnd vdd FILL
XFILL_0__1037_ gnd vdd FILL
XFILL_2__986_ gnd vdd FILL
X_960_ _263_ _267_ _269_ _274_ vdd gnd NAND3X1
XFILL_1__1371_ gnd vdd FILL
XFILL_2__1440_ gnd vdd FILL
XFILL_2__1020_ gnd vdd FILL
XFILL_0__1266_ gnd vdd FILL
XFILL_2__795_ gnd vdd FILL
XFILL_1__1427_ gnd vdd FILL
XFILL_1__1007_ gnd vdd FILL
XFILL_1__800_ gnd vdd FILL
XFILL_1__1180_ gnd vdd FILL
XFILL85350x19650 gnd vdd FILL
XFILL_0__1075_ gnd vdd FILL
XFILL_0__822_ gnd vdd FILL
X_825_ XinHL[2] Cin_1_bF$buf2 _142_ vdd gnd NAND2X1
XFILL_1__1236_ gnd vdd FILL
XFILL_2__1305_ gnd vdd FILL
X_1303_ rYin[5] mul[5] _603_ vdd gnd NAND2X1
XFILL_1__1045_ gnd vdd FILL
XFILL_2__1534_ gnd vdd FILL
XFILL_2__1114_ gnd vdd FILL
XFILL_2__889_ gnd vdd FILL
X_1532_ _722_[0] Yout[0] vdd gnd BUFX2
X_1112_ _422_ _419_ _423_ vdd gnd XNOR2X1
XFILL_0__860_ gnd vdd FILL
X_863_ XinHL[3] _179_ vdd gnd INVX2
XFILL_1__1274_ gnd vdd FILL
XFILL_2__1343_ gnd vdd FILL
XFILL_0__1169_ gnd vdd FILL
XFILL_0__916_ gnd vdd FILL
XFILL_3__1412_ gnd vdd FILL
X_919_ _232_ _185_ _233_ vdd gnd NAND2X1
X_1341_ _634_ _637_ _622_ _42_ vdd gnd OAI21X1
XFILL_1__1083_ gnd vdd FILL
XFILL_2__910_ gnd vdd FILL
XFILL_2__1152_ gnd vdd FILL
XFILL_0__1398_ gnd vdd FILL
XFILL_0__725_ gnd vdd FILL
X_728_ LoadCtl_0_bF$buf0 _74_ _75_ vdd gnd NOR2X1
XFILL_1__1139_ gnd vdd FILL
X_1150_ _354_ _420_ _422_ _419_ _460_ vdd 
+ gnd
+ AOI22X1
XFILL_1__932_ gnd vdd FILL
XFILL_2__1208_ gnd vdd FILL
XFILL_2__1381_ gnd vdd FILL
X_1206_ _502_ _511_ _514_ _515_ vdd gnd NAND3X1
XFILL_0__954_ gnd vdd FILL
XFILL_3__1450_ gnd vdd FILL
X_957_ _262_ _259_ _246_ _271_ vdd gnd AOI21X1
XFILL_1__1368_ gnd vdd FILL
XFILL_1__741_ gnd vdd FILL
XFILL_2__1437_ gnd vdd FILL
XFILL_2__1017_ gnd vdd FILL
XFILL_2__1190_ gnd vdd FILL
XFILL85950x11850 gnd vdd FILL
X_1435_ _701_ _708_ _712_ _61_ vdd gnd OAI21X1
X_1015_ _323_ _322_ _321_ _328_ vdd gnd AOI21X1
XFILL_0__763_ gnd vdd FILL
X_766_ rYin[0] _101_ vdd gnd INVX1
XFILL_1__1177_ gnd vdd FILL
XFILL_1__970_ gnd vdd FILL
XFILL_2__1246_ gnd vdd FILL
XFILL_0__819_ gnd vdd FILL
X_1244_ _93_ _214_ _533_ _551_ vdd gnd OAI21X1
XFILL_0__992_ gnd vdd FILL
X_995_ _303_ _305_ _307_ _308_ vdd gnd NAND3X1
XFILL_2__813_ gnd vdd FILL
XFILL_2__1055_ gnd vdd FILL
XFILL_3__1124_ gnd vdd FILL
X_1473_ _21_ clk_bF$buf6 mul[1] vdd gnd DFFPOSX1
X_1053_ _255_ _310_ _312_ _309_ _365_ vdd 
+ gnd
+ AOI22X1
XFILL_1__835_ gnd vdd FILL
XFILL_2__1284_ gnd vdd FILL
X_1529_ _721_[1] Xout[1] vdd gnd BUFX2
X_1109_ XinH[1] Cin[4] _420_ vdd gnd AND2X2
XFILL_0__857_ gnd vdd FILL
X_1282_ rYin[3] mul[3] _584_ vdd gnd NOR2X1
XFILL_0__1322_ gnd vdd FILL
XFILL_2__851_ gnd vdd FILL
XFILL86250x43050 gnd vdd FILL
XFILL_2__1093_ gnd vdd FILL
X_1338_ _630_ _635_ vdd gnd INVX1
XFILL_3__1162_ gnd vdd FILL
X_1091_ _350_ _394_ _389_ _403_ vdd gnd NAND3X1
XFILL_1__873_ gnd vdd FILL
XFILL_2__907_ gnd vdd FILL
XFILL_2__1149_ gnd vdd FILL
XFILL_0__1131_ gnd vdd FILL
X_1147_ _135__bF$buf2 _457_ _408_ _28_ vdd gnd OAI21X1
XFILL_0__895_ gnd vdd FILL
XFILL_1__929_ gnd vdd FILL
X_898_ XinHL[0] _213_ vdd gnd INVX1
XFILL_0__1360_ gnd vdd FILL
XFILL_2__1378_ gnd vdd FILL
XFILL_1__1101_ gnd vdd FILL
X_1376_ _125_ _544_ _669_ vdd gnd NOR2X1
XFILL_1__738_ gnd vdd FILL
XFILL_0__1416_ gnd vdd FILL
XFILL_2__945_ gnd vdd FILL
XFILL_2__1187_ gnd vdd FILL
XFILL_1__1330_ gnd vdd FILL
X_1185_ mul[10] _494_ vdd gnd INVX1
XFILL_1__967_ gnd vdd FILL
XFILL_0__1225_ gnd vdd FILL
XFILL_2__754_ gnd vdd FILL
XFILL_0__989_ gnd vdd FILL
XFILL_1__776_ gnd vdd FILL
XFILL_0__1034_ gnd vdd FILL
XFILL_2__983_ gnd vdd FILL
XFILL_0__798_ gnd vdd FILL
XFILL_0__1263_ gnd vdd FILL
XFILL_2__792_ gnd vdd FILL
XFILL_1__1424_ gnd vdd FILL
XFILL_1__1004_ gnd vdd FILL
X_1279_ _135__bF$buf4 _580_ _581_ _36_ vdd gnd OAI21X1
XFILL_0__1319_ gnd vdd FILL
XFILL_2__848_ gnd vdd FILL
XFILL_0__1072_ gnd vdd FILL
X_822_ _135__bF$buf1 _138_ _139_ _21_ vdd gnd OAI21X1
XFILL_1__1233_ gnd vdd FILL
X_1088_ _324_ _320_ _327_ _400_ vdd gnd AOI21X1
XFILL_2__1302_ gnd vdd FILL
XFILL_0__1128_ gnd vdd FILL
X_1300_ y[5] _135__bF$buf3 _600_ vdd gnd NAND2X1
XFILL_3__772_ gnd vdd FILL
XFILL_1__1042_ gnd vdd FILL
XFILL_2__1531_ gnd vdd FILL
XFILL_2__1111_ gnd vdd FILL
XFILL_0__1357_ gnd vdd FILL
XFILL_2__886_ gnd vdd FILL
X_860_ _171_ _172_ _169_ _176_ vdd gnd AOI21X1
XFILL_1__1271_ gnd vdd FILL
XFILL_2__1340_ gnd vdd FILL
XFILL_0__1166_ gnd vdd FILL
XFILL_0__913_ gnd vdd FILL
X_916_ LoadCtl_4_bF$buf6 _230_ _231_ vdd gnd NAND2X1
XFILL_1__1327_ gnd vdd FILL
XFILL_1__1080_ gnd vdd FILL
XFILL_0__1395_ gnd vdd FILL
X_725_ LoadCtl[1] LoadCtl_0_bF$buf1 _72_ vdd gnd NOR2X1
XFILL_1__1136_ gnd vdd FILL
XFILL_2__1205_ gnd vdd FILL
XFILL86550x70350 gnd vdd FILL
X_1203_ _511_ _512_ vdd gnd INVX1
XFILL_0__951_ gnd vdd FILL
X_954_ _263_ _267_ _235_ _268_ vdd gnd NAND3X1
XFILL_1__1365_ gnd vdd FILL
XFILL_2__1434_ gnd vdd FILL
XFILL_2__1014_ gnd vdd FILL
XFILL_2__789_ gnd vdd FILL
X_1432_ LoadCtl_0_bF$buf0 _74_ Yin1[2] _711_ vdd gnd OAI21X1
X_1012_ _320_ _324_ _289_ _325_ vdd gnd NAND3X1
XFILL_0__760_ gnd vdd FILL
X_763_ _93_ _75_ _99_ _2_ vdd gnd OAI21X1
XFILL_1__1174_ gnd vdd FILL
XFILL_2__1243_ gnd vdd FILL
XFILL_0__1069_ gnd vdd FILL
XFILL_0__816_ gnd vdd FILL
X_819_ XinHL[1] Cin_0_bF$buf3 _137_ vdd gnd NAND2X1
X_1241_ _517_ _538_ _518_ _548_ vdd gnd NAND3X1
X_992_ XinH[2] Cin_0_bF$buf2 _304_ _305_ vdd gnd NAND3X1
XFILL_2__810_ gnd vdd FILL
XFILL_2__1052_ gnd vdd FILL
XFILL_0__1298_ gnd vdd FILL
XFILL_1__1039_ gnd vdd FILL
X_1470_ _18_ clk_bF$buf3 rYin[14] vdd gnd DFFPOSX1
X_1050_ _179_ _214_ _361_ _362_ vdd gnd OAI21X1
XFILL_1__832_ gnd vdd FILL
XFILL_2__1528_ gnd vdd FILL
XFILL_2__1108_ gnd vdd FILL
XFILL_2__1281_ gnd vdd FILL
X_1526_ LoadCtl[3] clk_bF$buf7 LoadCtl[4] vdd gnd DFFPOSX1
X_1106_ _385_ _387_ _416_ _417_ vdd gnd AOI21X1
XFILL_0__854_ gnd vdd FILL
X_857_ _169_ _172_ _171_ _173_ vdd gnd NAND3X1
XFILL_1__1268_ gnd vdd FILL
XFILL_2__1337_ gnd vdd FILL
XFILL_2__1090_ gnd vdd FILL
X_1335_ rYin[8] mul[8] _632_ vdd gnd NAND2X1
XFILL_1__1077_ gnd vdd FILL
XFILL_1__870_ gnd vdd FILL
XFILL_2__904_ gnd vdd FILL
XFILL_2__1146_ gnd vdd FILL
XFILL_3__1215_ gnd vdd FILL
X_1144_ _453_ _454_ _452_ _455_ vdd gnd OAI21X1
XFILL_0__892_ gnd vdd FILL
XFILL_1__926_ gnd vdd FILL
X_895_ _199_ _205_ _202_ _210_ vdd gnd OAI21X1
XFILL_2__1375_ gnd vdd FILL
XFILL_0__948_ gnd vdd FILL
XFILL_2_BUFX2_insert15 gnd vdd FILL
XFILL_2_BUFX2_insert16 gnd vdd FILL
XFILL_2_BUFX2_insert17 gnd vdd FILL
XFILL_2_BUFX2_insert18 gnd vdd FILL
XFILL_2_BUFX2_insert19 gnd vdd FILL
X_1373_ _661_ _652_ _666_ vdd gnd NAND2X1
XFILL_1__735_ gnd vdd FILL
XFILL_0__1413_ gnd vdd FILL
XFILL_2__942_ gnd vdd FILL
XFILL_2__1184_ gnd vdd FILL
X_1429_ _694_ _708_ _709_ _58_ vdd gnd OAI21X1
X_1009_ _308_ _316_ _313_ _322_ vdd gnd NAND3X1
XFILL_0__757_ gnd vdd FILL
XFILL_3__1253_ gnd vdd FILL
X_1182_ _459_ _491_ _492_ vdd gnd XOR2X1
XFILL_1__964_ gnd vdd FILL
XFILL_0__1222_ gnd vdd FILL
XFILL_2__751_ gnd vdd FILL
X_1238_ _529_ _537_ _545_ vdd gnd NOR2X1
XFILL_0__986_ gnd vdd FILL
X_989_ _254_ _257_ _301_ _302_ vdd gnd AOI21X1
XFILL_1__773_ gnd vdd FILL
XFILL_2__807_ gnd vdd FILL
XFILL_0__1451_ gnd vdd FILL
XFILL_0__1031_ gnd vdd FILL
XFILL_2__1049_ gnd vdd FILL
XFILL_2__980_ gnd vdd FILL
X_1467_ _15_ clk_bF$buf2 rYin[11] vdd gnd DFFPOSX1
X_1047_ _353_ _359_ vdd gnd INVX1
XFILL_0__795_ gnd vdd FILL
XFILL_1__829_ gnd vdd FILL
XFILL_3__1291_ gnd vdd FILL
X_798_ LoadCtl_4_bF$buf0 _121_ _122_ _14_ vdd gnd OAI21X1
XFILL_2__1278_ gnd vdd FILL
XFILL_0__1260_ gnd vdd FILL
XFILL_1__1421_ gnd vdd FILL
XFILL_1__1001_ gnd vdd FILL
X_1276_ rYin[2] mul[2] _579_ vdd gnd XOR2X1
XFILL_0__1316_ gnd vdd FILL
XFILL_2__845_ gnd vdd FILL
XFILL_2__1087_ gnd vdd FILL
XFILL_1__1230_ gnd vdd FILL
X_1085_ _392_ _393_ _352_ _397_ vdd gnd OAI21X1
XFILL_1__867_ gnd vdd FILL
XFILL_0__1125_ gnd vdd FILL
XFILL_0__889_ gnd vdd FILL
XFILL_0__1354_ gnd vdd FILL
XFILL86550x35250 gnd vdd FILL
XFILL_2__883_ gnd vdd FILL
XFILL_3__825_ gnd vdd FILL
XFILL_2__939_ gnd vdd FILL
XFILL_0__1163_ gnd vdd FILL
XFILL_0__910_ gnd vdd FILL
X_913_ _226_ _227_ _225_ _228_ vdd gnd OAI21X1
XFILL_1__1324_ gnd vdd FILL
X_1179_ _415_ _488_ _448_ _489_ vdd gnd OAI21X1
XFILL_0__1219_ gnd vdd FILL
XFILL_2__748_ gnd vdd FILL
XFILL_0__1392_ gnd vdd FILL
XFILL_3__863_ gnd vdd FILL
XFILL_1__1133_ gnd vdd FILL
XFILL_2__1202_ gnd vdd FILL
XFILL_0__1448_ gnd vdd FILL
XFILL_0__1028_ gnd vdd FILL
XFILL86850x74250 gnd vdd FILL
XFILL_2__977_ gnd vdd FILL
X_1200_ _508_ _505_ _509_ vdd gnd XOR2X1
X_951_ _247_ _253_ _258_ _265_ vdd gnd NAND3X1
XFILL_1__1362_ gnd vdd FILL
XFILL_1__999_ gnd vdd FILL
XFILL_2__1431_ gnd vdd FILL
XFILL_2__1011_ gnd vdd FILL
XFILL_0__1257_ gnd vdd FILL
XFILL_2__786_ gnd vdd FILL
XFILL_1__1418_ gnd vdd FILL
X_760_ Xin[1] _75_ _98_ vdd gnd NAND2X1
XFILL_1__1171_ gnd vdd FILL
XFILL_2__1240_ gnd vdd FILL
XFILL_0__1066_ gnd vdd FILL
XFILL_0__813_ gnd vdd FILL
X_816_ _133_ LoadCtl_4_bF$buf2 _134_ _20_ vdd gnd OAI21X1
XFILL_1__1227_ gnd vdd FILL
XFILL_0__1295_ gnd vdd FILL
XFILL_1__1036_ gnd vdd FILL
XFILL_2__1105_ gnd vdd FILL
X_1523_ LoadCtl_0_bF$buf0 clk_bF$buf7 LoadCtl[1] vdd gnd DFFPOSX1
X_1103_ _360_ _363_ _414_ vdd gnd NAND2X1
XFILL_0__851_ gnd vdd FILL
X_854_ XinHL[3] Cin_0_bF$buf1 _170_ vdd gnd AND2X2
XFILL_1__1265_ gnd vdd FILL
XFILL_2__1334_ gnd vdd FILL
XFILL_0__907_ gnd vdd FILL
X_1332_ _628_ _626_ _595_ _629_ vdd gnd NAND3X1
XFILL_1__1074_ gnd vdd FILL
XFILL_2__901_ gnd vdd FILL
XFILL_2__1143_ gnd vdd FILL
XFILL_0__1389_ gnd vdd FILL
X_1141_ _413_ _452_ vdd gnd INVX1
XFILL_1__923_ gnd vdd FILL
X_892_ _206_ _203_ _196_ _207_ vdd gnd AOI21X1
XFILL_2__1372_ gnd vdd FILL
XFILL_0__1198_ gnd vdd FILL
XFILL_0__945_ gnd vdd FILL
X_948_ _261_ _260_ _247_ _262_ vdd gnd OAI21X1
XFILL_1__1359_ gnd vdd FILL
X_1370_ _135__bF$buf5 _662_ _663_ _45_ vdd gnd OAI21X1
XFILL_1__732_ gnd vdd FILL
XFILL_2__1428_ gnd vdd FILL
XFILL_0__1410_ gnd vdd FILL
XFILL_2__1008_ gnd vdd FILL
XFILL_2__1181_ gnd vdd FILL
X_1426_ _701_ _703_ _707_ _57_ vdd gnd AOI21X1
X_1006_ _318_ _317_ _316_ _319_ vdd gnd OAI21X1
XFILL_0__754_ gnd vdd FILL
X_757_ LoadCtl_0_bF$buf4 _95_ _96_ _721_[3] vdd gnd OAI21X1
XFILL_1__1168_ gnd vdd FILL
XFILL_1__961_ gnd vdd FILL
XFILL_2__1237_ gnd vdd FILL
XFILL86850x62550 gnd vdd FILL
XFILL_3__1306_ gnd vdd FILL
X_1235_ LoadCtl_4_bF$buf5 _542_ _540_ _543_ vdd gnd NAND3X1
XFILL_0__983_ gnd vdd FILL
X_986_ _298_ _296_ _297_ _299_ vdd gnd NAND3X1
XFILL_1__1397_ gnd vdd FILL
XFILL_1__770_ gnd vdd FILL
XFILL_2__804_ gnd vdd FILL
XFILL_2__1046_ gnd vdd FILL
X_1464_ _12_ clk_bF$buf3 rYin[8] vdd gnd DFFPOSX1
X_1044_ XinHL[3] Cin[4] _356_ vdd gnd AND2X2
XFILL_0__792_ gnd vdd FILL
XFILL_1__826_ gnd vdd FILL
X_795_ LoadCtl_4_bF$buf3 _119_ _120_ _13_ vdd gnd OAI21X1
XFILL_2__1275_ gnd vdd FILL
XFILL_0__848_ gnd vdd FILL
XFILL_3__1344_ gnd vdd FILL
X_1273_ y[1] _135__bF$buf3 _577_ vdd gnd NAND2X1
XFILL_0__1313_ gnd vdd FILL
XFILL_2__842_ gnd vdd FILL
XFILL_2__1084_ gnd vdd FILL
X_1329_ _619_ _611_ _626_ vdd gnd AND2X2
X_1082_ _392_ _393_ _391_ _394_ vdd gnd OAI21X1
XFILL_1__864_ gnd vdd FILL
XFILL_0__1122_ gnd vdd FILL
X_1138_ _442_ _445_ _417_ _449_ vdd gnd OAI21X1
XFILL_0__886_ gnd vdd FILL
XFILL_3__1382_ gnd vdd FILL
X_889_ XinH[0] Cin_1_bF$buf0 _204_ vdd gnd NAND2X1
XFILL_2__1369_ gnd vdd FILL
XFILL_0__1351_ gnd vdd FILL
XFILL86850x39150 gnd vdd FILL
XFILL_2__880_ gnd vdd FILL
XFILL_3__1018_ gnd vdd FILL
X_1367_ _658_ _660_ _661_ vdd gnd NOR2X1
XFILL_1__729_ gnd vdd FILL
XFILL_0__1407_ gnd vdd FILL
XFILL86550x11850 gnd vdd FILL
XFILL_2__936_ gnd vdd FILL
XFILL_0__1160_ gnd vdd FILL
XFILL_2__1178_ gnd vdd FILL
X_910_ _185_ _187_ _224_ _225_ vdd gnd AOI21X1
XFILL_1__1321_ gnd vdd FILL
X_1176_ _482_ _485_ _486_ vdd gnd NAND2X1
XFILL_1__958_ gnd vdd FILL
XFILL_0__1216_ gnd vdd FILL
XFILL_2__745_ gnd vdd FILL
XFILL_1__1130_ gnd vdd FILL
XFILL_3__1056_ gnd vdd FILL
XFILL_1__767_ gnd vdd FILL
XFILL_0__1445_ gnd vdd FILL
XFILL_0__1025_ gnd vdd FILL
XFILL_2__974_ gnd vdd FILL
XFILL_3__916_ gnd vdd FILL
XFILL_0__789_ gnd vdd FILL
XFILL_1__996_ gnd vdd FILL
XFILL86850x50850 gnd vdd FILL
XFILL_0__1254_ gnd vdd FILL
XFILL_2__783_ gnd vdd FILL
XFILL_1__1415_ gnd vdd FILL
XFILL_3__1094_ gnd vdd FILL
XFILL_2__839_ gnd vdd FILL
XFILL_0__1063_ gnd vdd FILL
XFILL_0__810_ gnd vdd FILL
XFILL_3__954_ gnd vdd FILL
X_813_ LoadCtl_4_bF$buf0 _131_ _132_ _19_ vdd gnd OAI21X1
XFILL_1__1224_ gnd vdd FILL
X_1499_ _47_ clk_bF$buf2 y[13] vdd gnd DFFPOSX1
X_1079_ _300_ _390_ _322_ _391_ vdd gnd OAI21X1
XFILL_0__1119_ gnd vdd FILL
XFILL_0__1292_ gnd vdd FILL
XFILL_1__1033_ gnd vdd FILL
XFILL_2__1102_ gnd vdd FILL
XFILL_0__1348_ gnd vdd FILL
XFILL_2__877_ gnd vdd FILL
X_1520_ _68_ clk_bF$buf1 XinHL[2] vdd gnd DFFPOSX1
X_1100_ _405_ _344_ _410_ _411_ vdd gnd OAI21X1
XFILL_3__992_ gnd vdd FILL
X_851_ XinHL[2] Cin_1_bF$buf2 XinHL[3] Cin_0_bF$buf1 _167_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1262_ gnd vdd FILL
XFILL_1__899_ gnd vdd FILL
XFILL_2__1331_ gnd vdd FILL
XFILL_0__1157_ gnd vdd FILL
XFILL_0__904_ gnd vdd FILL
X_907_ _221_ _220_ _219_ _222_ vdd gnd NAND3X1
XFILL_1__1318_ gnd vdd FILL
XFILL_1__1071_ gnd vdd FILL
XFILL86850x27450 gnd vdd FILL
XFILL_2__1140_ gnd vdd FILL
XFILL_0__1386_ gnd vdd FILL
XFILL_1__1127_ gnd vdd FILL
XFILL_1__920_ gnd vdd FILL
XFILL_0__1195_ gnd vdd FILL
XFILL_0__942_ gnd vdd FILL
X_945_ _253_ _258_ _248_ _259_ vdd gnd NAND3X1
XFILL_1__1356_ gnd vdd FILL
XFILL_2__1425_ gnd vdd FILL
XFILL_2__1005_ gnd vdd FILL
X_1423_ Yin2[2] _703_ _706_ vdd gnd NOR2X1
X_1003_ _249_ _315_ _256_ _316_ vdd gnd OAI21X1
XFILL_0__751_ gnd vdd FILL
X_754_ LoadCtl_0_bF$buf4 _93_ _94_ _721_[2] vdd gnd OAI21X1
XFILL_1__1165_ gnd vdd FILL
XFILL_2__1234_ gnd vdd FILL
XFILL_0__807_ gnd vdd FILL
X_1232_ _517_ _539_ _526_ _540_ vdd gnd NAND3X1
XFILL_0__980_ gnd vdd FILL
X_983_ _290_ _296_ vdd gnd INVX1
XFILL_1__1394_ gnd vdd FILL
XFILL_2__801_ gnd vdd FILL
XFILL_2__1043_ gnd vdd FILL
XFILL_0__1289_ gnd vdd FILL
XFILL_3__1532_ gnd vdd FILL
X_1461_ _9_ clk_bF$buf0 rYin[5] vdd gnd DFFPOSX1
X_1041_ XinHL[2] Cin[5] _353_ vdd gnd NAND2X1
XFILL_1__823_ gnd vdd FILL
X_792_ LoadCtl_4_bF$buf4 _117_ _118_ _12_ vdd gnd OAI21X1
XFILL_2__1272_ gnd vdd FILL
XFILL_0__1098_ gnd vdd FILL
X_1517_ _65_ clk_bF$buf1 Yin0[3] vdd gnd DFFPOSX1
XFILL_0__845_ gnd vdd FILL
X_848_ XinHL[1] Cin[2] _164_ vdd gnd NAND2X1
XFILL_1__1259_ gnd vdd FILL
X_1270_ _565_ _573_ _574_ vdd gnd NAND2X1
XFILL_2__1328_ gnd vdd FILL
XFILL_0__1310_ gnd vdd FILL
XFILL_2__1081_ gnd vdd FILL
X_1326_ _591_ _607_ _603_ _623_ vdd gnd OAI21X1
XFILL_1__1068_ gnd vdd FILL
XFILL_1__861_ gnd vdd FILL
XFILL_2__1137_ gnd vdd FILL
XFILL_3_BUFX2_insert26 gnd vdd FILL
X_1135_ _442_ _445_ _441_ _446_ vdd gnd OAI21X1
XFILL_0__883_ gnd vdd FILL
XFILL_1__917_ gnd vdd FILL
X_886_ XinHL[2] Cin[2] _201_ vdd gnd NAND2X1
XFILL_1__1297_ gnd vdd FILL
XFILL_2_CLKBUF1_insert7 gnd vdd FILL
XFILL_2_CLKBUF1_insert8 gnd vdd FILL
XFILL_2_CLKBUF1_insert9 gnd vdd FILL
XFILL87150x70350 gnd vdd FILL
XFILL_2__1366_ gnd vdd FILL
XFILL_0__939_ gnd vdd FILL
XFILL_3__1435_ gnd vdd FILL
X_1364_ rYin[11] mul[11] _658_ vdd gnd NOR2X1
XFILL_1__726_ gnd vdd FILL
XFILL_0__1404_ gnd vdd FILL
XFILL86850x15750 gnd vdd FILL
XFILL_2__933_ gnd vdd FILL
XFILL_2__1175_ gnd vdd FILL
XFILL_0__748_ gnd vdd FILL
X_1173_ _476_ _474_ _478_ _483_ vdd gnd NAND3X1
XFILL_1__955_ gnd vdd FILL
XFILL_0__1213_ gnd vdd FILL
XFILL_2__742_ gnd vdd FILL
X_1229_ _536_ _531_ _537_ vdd gnd XNOR2X1
XFILL_0__977_ gnd vdd FILL
XFILL_1__764_ gnd vdd FILL
XFILL_0__1442_ gnd vdd FILL
XFILL_0__1022_ gnd vdd FILL
XFILL_2__971_ gnd vdd FILL
XFILL_3__1109_ gnd vdd FILL
X_1458_ _6_ clk_bF$buf5 rYin[2] vdd gnd DFFPOSX1
X_1038_ _349_ _350_ vdd gnd INVX1
XFILL_0__786_ gnd vdd FILL
X_789_ LoadCtl_4_bF$buf4 _115_ _116_ _11_ vdd gnd OAI21X1
XFILL_1__993_ gnd vdd FILL
XFILL_2__1269_ gnd vdd FILL
XFILL_0__1251_ gnd vdd FILL
XFILL_2__780_ gnd vdd FILL
XFILL_1__1412_ gnd vdd FILL
X_1267_ _103_ _570_ _571_ vdd gnd NOR2X1
XFILL_0__1307_ gnd vdd FILL
XFILL_2__836_ gnd vdd FILL
XFILL_2__1078_ gnd vdd FILL
XFILL_0__1060_ gnd vdd FILL
X_810_ LoadCtl_4_bF$buf4 _129_ _130_ _18_ vdd gnd OAI21X1
XFILL_1__1221_ gnd vdd FILL
XFILL_3__1147_ gnd vdd FILL
X_1496_ _44_ clk_bF$buf2 y[10] vdd gnd DFFPOSX1
X_1076_ _386_ _385_ _387_ _388_ vdd gnd NAND3X1
XFILL_1__858_ gnd vdd FILL
XFILL_0__1116_ gnd vdd FILL
XFILL_1__1450_ gnd vdd FILL
XFILL_1__1030_ gnd vdd FILL
XFILL_0__1345_ gnd vdd FILL
XFILL_2__874_ gnd vdd FILL
XFILL_3__1185_ gnd vdd FILL
XFILL_1__896_ gnd vdd FILL
XFILL_0__1154_ gnd vdd FILL
XFILL_0__901_ gnd vdd FILL
X_904_ _209_ _210_ _208_ _219_ vdd gnd NAND3X1
XFILL_1__1315_ gnd vdd FILL
XFILL_2__739_ gnd vdd FILL
XFILL_0__1383_ gnd vdd FILL
XFILL_1__1124_ gnd vdd FILL
X_1399_ _82_ LoadCtl_4_bF$buf3 _689_ _688_ _48_ vdd 
+ gnd
+ OAI22X1
XFILL_0__1439_ gnd vdd FILL
XFILL_0__1019_ gnd vdd FILL
XFILL_2__968_ gnd vdd FILL
XFILL_0__1192_ gnd vdd FILL
X_942_ _197_ _255_ _256_ vdd gnd NAND2X1
XFILL_1__1353_ gnd vdd FILL
XFILL_2__1422_ gnd vdd FILL
XFILL_2__1002_ gnd vdd FILL
XFILL_0__1248_ gnd vdd FILL
XFILL_2__777_ gnd vdd FILL
XCLKBUF1_insert10 clk clk_bF$buf4 vdd gnd CLKBUF1
XFILL_1__1409_ gnd vdd FILL
XCLKBUF1_insert11 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert12 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert13 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert14 clk clk_bF$buf0 vdd gnd CLKBUF1
X_1420_ _694_ _703_ _704_ _54_ vdd gnd AOI21X1
X_1000_ _312_ _309_ _311_ _313_ vdd gnd NAND3X1
X_751_ LoadCtl_0_bF$buf2 _91_ _92_ _721_[1] vdd gnd OAI21X1
XFILL_1__1162_ gnd vdd FILL
XFILL_1__799_ gnd vdd FILL
XFILL_2__1231_ gnd vdd FILL
XFILL_0__1057_ gnd vdd FILL
XFILL_0__804_ gnd vdd FILL
X_807_ LoadCtl_4_bF$buf0 _127_ _128_ _17_ vdd gnd OAI21X1
XFILL_1__1218_ gnd vdd FILL
X_980_ XinHL[2] Cin[4] _293_ vdd gnd AND2X2
XFILL_1__1391_ gnd vdd FILL
XFILL_2__1040_ gnd vdd FILL
XFILL_0__1286_ gnd vdd FILL
XFILL_3__757_ gnd vdd FILL
XFILL_1__1447_ gnd vdd FILL
XFILL_1__1027_ gnd vdd FILL
XFILL_1__820_ gnd vdd FILL
XFILL87150x35250 gnd vdd FILL
XFILL_0__1095_ gnd vdd FILL
X_1514_ _62_ clk_bF$buf1 Yin0[0] vdd gnd DFFPOSX1
XFILL_0__842_ gnd vdd FILL
X_845_ mul[3] _161_ vdd gnd INVX1
XFILL_1__1256_ gnd vdd FILL
XFILL_2__1325_ gnd vdd FILL
X_1323_ y[7] _135__bF$buf1 _621_ vdd gnd NAND2X1
XFILL_3__795_ gnd vdd FILL
XFILL_1__1065_ gnd vdd FILL
XFILL_2__1134_ gnd vdd FILL
X_1132_ _432_ _424_ _443_ vdd gnd NAND2X1
XFILL_0__880_ gnd vdd FILL
XFILL_1__914_ gnd vdd FILL
X_883_ _170_ _197_ _198_ vdd gnd NAND2X1
XFILL_1__1294_ gnd vdd FILL
XFILL_2__1363_ gnd vdd FILL
XFILL_0__1189_ gnd vdd FILL
XFILL_0__936_ gnd vdd FILL
X_939_ _249_ _250_ _252_ _253_ vdd gnd NAND3X1
X_1361_ _655_ _654_ _646_ _44_ vdd gnd OAI21X1
XFILL_1__723_ gnd vdd FILL
XFILL_2__1419_ gnd vdd FILL
XFILL_0__1401_ gnd vdd FILL
XFILL_2__930_ gnd vdd FILL
XFILL_2__1172_ gnd vdd FILL
X_1417_ _701_ _695_ _702_ _53_ vdd gnd OAI21X1
XFILL_0__745_ gnd vdd FILL
X_748_ LoadCtl_0_bF$buf2 _89_ _90_ _721_[0] vdd gnd OAI21X1
XFILL_1__1159_ gnd vdd FILL
X_1170_ _476_ _480_ vdd gnd INVX1
XFILL_1__952_ gnd vdd FILL
XFILL_2__1228_ gnd vdd FILL
XFILL_0__1210_ gnd vdd FILL
X_1226_ _533_ _534_ vdd gnd INVX1
XFILL_0__974_ gnd vdd FILL
X_977_ XinHL[1] Cin[5] _290_ vdd gnd NAND2X1
XFILL_1__1388_ gnd vdd FILL
XFILL_1__761_ gnd vdd FILL
XFILL_2__1037_ gnd vdd FILL
X_1455_ _3_ clk_bF$buf1 XinH[3] vdd gnd DFFPOSX1
X_1035_ _332_ _347_ vdd gnd INVX1
XFILL_0__783_ gnd vdd FILL
XFILL_1__817_ gnd vdd FILL
X_786_ LoadCtl_4_bF$buf2 _113_ _114_ _10_ vdd gnd OAI21X1
XFILL_1__1197_ gnd vdd FILL
XFILL_1__990_ gnd vdd FILL
XFILL_2__1266_ gnd vdd FILL
XFILL_0__839_ gnd vdd FILL
X_1264_ y[0] _135__bF$buf1 _569_ vdd gnd NAND2X1
XFILL_0__1304_ gnd vdd FILL
XFILL_2__833_ gnd vdd FILL
XFILL_2__1075_ gnd vdd FILL
X_1493_ _41_ clk_bF$buf5 y[7] vdd gnd DFFPOSX1
X_1073_ _358_ _363_ _385_ vdd gnd AND2X2
XFILL87150x23550 gnd vdd FILL
XFILL_1__855_ gnd vdd FILL
XFILL_0__1533_ gnd vdd FILL
XFILL_0__1113_ gnd vdd FILL
X_1129_ _370_ _375_ _378_ _440_ vdd gnd AOI21X1
XFILL_0__877_ gnd vdd FILL
XFILL_0__1342_ gnd vdd FILL
XFILL_2__871_ gnd vdd FILL
X_1358_ _652_ _653_ vdd gnd INVX1
XFILL_1__893_ gnd vdd FILL
XFILL_2__927_ gnd vdd FILL
XFILL_2__1169_ gnd vdd FILL
XFILL_0__1151_ gnd vdd FILL
X_901_ _213_ _214_ _215_ _216_ vdd gnd OAI21X1
XFILL_1__1312_ gnd vdd FILL
XFILL_3__1238_ gnd vdd FILL
X_1167_ _476_ _474_ _462_ _477_ vdd gnd NAND3X1
XFILL_1__949_ gnd vdd FILL
XFILL_0__1207_ gnd vdd FILL
XFILL_2__736_ gnd vdd FILL
XFILL_2__1398_ gnd vdd FILL
XFILL_0__1380_ gnd vdd FILL
XFILL_1__1121_ gnd vdd FILL
X_1396_ _686_ _687_ vdd gnd INVX1
XFILL_1__758_ gnd vdd FILL
XFILL_0__1436_ gnd vdd FILL
XFILL_0__1016_ gnd vdd FILL
XFILL_2__965_ gnd vdd FILL
XFILL85650x70350 gnd vdd FILL
XFILL_1__1350_ gnd vdd FILL
XFILL_3__1276_ gnd vdd FILL
XFILL_1__987_ gnd vdd FILL
XFILL_0__1245_ gnd vdd FILL
XFILL_2__774_ gnd vdd FILL
XFILL_1__1406_ gnd vdd FILL
XFILL_1__796_ gnd vdd FILL
XFILL_0__1054_ gnd vdd FILL
XFILL_0__801_ gnd vdd FILL
X_804_ LoadCtl_4_bF$buf5 _125_ _126_ _16_ vdd gnd OAI21X1
XFILL_1__1215_ gnd vdd FILL
XFILL_0__1283_ gnd vdd FILL
XFILL_1__1444_ gnd vdd FILL
XFILL_1__1024_ gnd vdd FILL
X_1299_ _135__bF$buf3 _599_ _589_ _38_ vdd gnd OAI21X1
XFILL_0__1339_ gnd vdd FILL
XFILL_2__868_ gnd vdd FILL
XFILL_0__1092_ gnd vdd FILL
X_1511_ _59_ clk_bF$buf7 Yin1[1] vdd gnd DFFPOSX1
X_842_ mul[2] _159_ vdd gnd INVX1
XFILL_1__1253_ gnd vdd FILL
XFILL87150x11850 gnd vdd FILL
XFILL_2__1322_ gnd vdd FILL
XFILL_0__1148_ gnd vdd FILL
XFILL_1__1309_ gnd vdd FILL
X_1320_ _617_ _618_ vdd gnd INVX1
XFILL_1__1062_ gnd vdd FILL
XFILL_2__1131_ gnd vdd FILL
XFILL_0__1377_ gnd vdd FILL
XFILL_3__848_ gnd vdd FILL
XFILL_3__1200_ gnd vdd FILL
XFILL_1__1118_ gnd vdd FILL
XFILL_1__911_ gnd vdd FILL
X_880_ _162_ _194_ _186_ _195_ vdd gnd OAI21X1
XFILL_1__1291_ gnd vdd FILL
XFILL_2__1360_ gnd vdd FILL
XFILL_0__1186_ gnd vdd FILL
XFILL_0__933_ gnd vdd FILL
X_936_ XinH[1] Cin_0_bF$buf1 _204_ _250_ vdd gnd NAND3X1
XFILL_1__1347_ gnd vdd FILL
XFILL_2__1416_ gnd vdd FILL
X_1414_ _699_ _695_ _700_ _52_ vdd gnd OAI21X1
XFILL_0__742_ gnd vdd FILL
XFILL_3__886_ gnd vdd FILL
X_745_ _86_ _87_ _88_ _722_[3] vdd gnd OAI21X1
XFILL_1__1156_ gnd vdd FILL
XFILL_2__1225_ gnd vdd FILL
X_1223_ _465_ _507_ _530_ _508_ _531_ vdd 
+ gnd
+ OAI22X1
XFILL_0__971_ gnd vdd FILL
X_974_ _286_ _287_ vdd gnd INVX1
XFILL_1__1385_ gnd vdd FILL
XFILL_2__1034_ gnd vdd FILL
X_1452_ _0_ clk_bF$buf1 XinH[0] vdd gnd DFFPOSX1
X_1032_ LoadCtl_4_bF$buf2 _344_ _345_ vdd gnd NAND2X1
XFILL_0__780_ gnd vdd FILL
XFILL_1__814_ gnd vdd FILL
XFILL_0_CLKBUF1_insert7 gnd vdd FILL
XFILL_0_CLKBUF1_insert8 gnd vdd FILL
XFILL_0_CLKBUF1_insert9 gnd vdd FILL
X_783_ LoadCtl_4_bF$buf1 _111_ _112_ _9_ vdd gnd OAI21X1
XFILL_1__1194_ gnd vdd FILL
XFILL_2__1263_ gnd vdd FILL
XFILL_0__1089_ gnd vdd FILL
X_1508_ _56_ clk_bF$buf2 Yin2[2] vdd gnd DFFPOSX1
XFILL_0__836_ gnd vdd FILL
X_839_ _155_ _156_ vdd gnd INVX1
X_1261_ _565_ _566_ vdd gnd INVX1
XFILL_0__1301_ gnd vdd FILL
XFILL_2__1319_ gnd vdd FILL
XFILL_2__830_ gnd vdd FILL
XFILL_2__1072_ gnd vdd FILL
X_1317_ _113_ _281_ _613_ _615_ vdd gnd OAI21X1
XFILL_1__1059_ gnd vdd FILL
X_1490_ _38_ clk_bF$buf0 y[4] vdd gnd DFFPOSX1
X_1070_ _380_ _381_ _366_ _382_ vdd gnd AOI21X1
XFILL_1__852_ gnd vdd FILL
XFILL_0__1530_ gnd vdd FILL
XFILL_0__1110_ gnd vdd FILL
XFILL_2__1128_ gnd vdd FILL
X_1126_ _429_ _424_ _437_ vdd gnd NAND2X1
XFILL_0__874_ gnd vdd FILL
XFILL_1__908_ gnd vdd FILL
X_877_ mul[4] _192_ vdd gnd INVX1
XFILL_1__1288_ gnd vdd FILL
XFILL_2__1357_ gnd vdd FILL
XFILL_3__810_ gnd vdd FILL
XFILL85650x35250 gnd vdd FILL
X_1355_ rYin[10] mul[10] _650_ vdd gnd NOR2X1
XFILL_1__1097_ gnd vdd FILL
XFILL_1__890_ gnd vdd FILL
XFILL_2__924_ gnd vdd FILL
XFILL_2__1166_ gnd vdd FILL
XFILL_0__739_ gnd vdd FILL
X_1164_ _310_ _426_ _473_ _474_ vdd gnd OAI21X1
XFILL_1__946_ gnd vdd FILL
XFILL_0__1204_ gnd vdd FILL
XFILL_2__733_ gnd vdd FILL
XFILL_2__1395_ gnd vdd FILL
XFILL_0__968_ gnd vdd FILL
X_1393_ _683_ _684_ vdd gnd INVX1
XFILL_1__755_ gnd vdd FILL
XFILL_0__1433_ gnd vdd FILL
XFILL_0__1013_ gnd vdd FILL
XFILL_2__962_ gnd vdd FILL
XFILL85950x74250 gnd vdd FILL
X_1449_ LoadCtl_0_bF$buf3 _177_ _719_ _68_ vdd gnd OAI21X1
X_1029_ _325_ _330_ _287_ _342_ vdd gnd AOI21X1
XFILL_0__777_ gnd vdd FILL
XFILL_1__984_ gnd vdd FILL
XFILL_0__1242_ gnd vdd FILL
XFILL_2__771_ gnd vdd FILL
XFILL_1__1403_ gnd vdd FILL
XFILL_3__1329_ gnd vdd FILL
X_1258_ _552_ LoadCtl_4_bF$buf5 _564_ vdd gnd AND2X2
XFILL_1__793_ gnd vdd FILL
XFILL_2__827_ gnd vdd FILL
XFILL_2__1069_ gnd vdd FILL
XFILL_0__1051_ gnd vdd FILL
X_801_ LoadCtl_4_bF$buf3 _123_ _124_ _15_ vdd gnd OAI21X1
XFILL_1__1212_ gnd vdd FILL
X_1487_ _35_ clk_bF$buf5 y[1] vdd gnd DFFPOSX1
X_1067_ _373_ _374_ _371_ _379_ vdd gnd AOI21X1
XFILL_1__849_ gnd vdd FILL
XFILL_0__1527_ gnd vdd FILL
XFILL_0__1107_ gnd vdd FILL
XFILL_0__1280_ gnd vdd FILL
XFILL_2__1298_ gnd vdd FILL
XFILL_1__1441_ gnd vdd FILL
XFILL_1__1021_ gnd vdd FILL
XFILL_3__1367_ gnd vdd FILL
X_1296_ _593_ _596_ _597_ vdd gnd NAND2X1
XFILL_0__1336_ gnd vdd FILL
XFILL_2__865_ gnd vdd FILL
XFILL_1__1250_ gnd vdd FILL
XFILL_1__887_ gnd vdd FILL
XFILL_0__1145_ gnd vdd FILL
XFILL_1__1306_ gnd vdd FILL
XFILL_0_BUFX2_insert30 gnd vdd FILL
XFILL_0_BUFX2_insert31 gnd vdd FILL
XFILL_0_BUFX2_insert32 gnd vdd FILL
XFILL_0_BUFX2_insert33 gnd vdd FILL
XFILL_0__1374_ gnd vdd FILL
XFILL_1__1535_ gnd vdd FILL
XFILL_1__1115_ gnd vdd FILL
XFILL_2__959_ gnd vdd FILL
XFILL_0__1183_ gnd vdd FILL
XFILL_0__930_ gnd vdd FILL
X_933_ _165_ _204_ _201_ _199_ _247_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1344_ gnd vdd FILL
X_1199_ _465_ _507_ _506_ _508_ vdd gnd OAI21X1
XFILL_2__1413_ gnd vdd FILL
XFILL_0__1239_ gnd vdd FILL
XFILL_2__768_ gnd vdd FILL
X_1411_ _697_ _695_ _698_ _51_ vdd gnd OAI21X1
X_742_ LoadCtl[2] y[15] _86_ vdd gnd NOR2X1
XFILL_1__1153_ gnd vdd FILL
XFILL_3__1079_ gnd vdd FILL
XFILL_2__1222_ gnd vdd FILL
XFILL_0__1048_ gnd vdd FILL
XFILL_2__997_ gnd vdd FILL
XFILL_3__939_ gnd vdd FILL
XFILL_1__1209_ gnd vdd FILL
X_1220_ mul[11] _135__bF$buf5 _528_ vdd gnd NAND2X1
X_971_ _233_ _283_ _274_ _284_ vdd gnd OAI21X1
XFILL_1__1382_ gnd vdd FILL
XFILL_2__1451_ gnd vdd FILL
XFILL_2__1031_ gnd vdd FILL
XFILL_0__1277_ gnd vdd FILL
XFILL_1__1438_ gnd vdd FILL
XFILL_1__1018_ gnd vdd FILL
XFILL_1__811_ gnd vdd FILL
X_780_ LoadCtl_4_bF$buf1 _109_ _110_ _8_ vdd gnd OAI21X1
XFILL_1__1191_ gnd vdd FILL
XFILL_2__1260_ gnd vdd FILL
XFILL_0__1086_ gnd vdd FILL
X_1505_ _53_ clk_bF$buf3 Yin3[3] vdd gnd DFFPOSX1
XFILL_0__833_ gnd vdd FILL
XFILL_3__977_ gnd vdd FILL
X_836_ _150_ _151_ _152_ _153_ vdd gnd OAI21X1
XFILL_1__1247_ gnd vdd FILL
XFILL_2__1316_ gnd vdd FILL
X_1314_ _611_ _610_ _613_ vdd gnd NAND2X1
XFILL_1__1056_ gnd vdd FILL
XFILL_2__1125_ gnd vdd FILL
X_1123_ _433_ _430_ _423_ _434_ vdd gnd OAI21X1
XFILL_0__871_ gnd vdd FILL
XFILL_1__905_ gnd vdd FILL
X_874_ _156_ _184_ _188_ _190_ vdd gnd NAND3X1
XFILL_1__1285_ gnd vdd FILL
XFILL_2__1354_ gnd vdd FILL
XFILL_0__927_ gnd vdd FILL
XFILL85950x39150 gnd vdd FILL
XFILL_3__1003_ gnd vdd FILL
X_1352_ _643_ _636_ _647_ vdd gnd NOR2X1
XFILL_1__1094_ gnd vdd FILL
XFILL_2__921_ gnd vdd FILL
XFILL_2__1163_ gnd vdd FILL
X_1408_ _694_ _695_ _696_ _50_ vdd gnd OAI21X1
XFILL_0__736_ gnd vdd FILL
X_739_ _71_ y[10] _83_ _84_ vdd gnd OAI21X1
X_1161_ _469_ _470_ _467_ _471_ vdd gnd OAI21X1
XFILL_1__943_ gnd vdd FILL
XFILL_0__1201_ gnd vdd FILL
XFILL_2__1219_ gnd vdd FILL
XFILL_2__730_ gnd vdd FILL
XFILL_2__1392_ gnd vdd FILL
X_1217_ _499_ _524_ _525_ _526_ vdd gnd OAI21X1
XFILL_0__965_ gnd vdd FILL
XFILL_3__1041_ gnd vdd FILL
X_968_ mul[6] _281_ vdd gnd INVX1
XFILL_1__1379_ gnd vdd FILL
X_1390_ _676_ _680_ _135__bF$buf5 _682_ vdd gnd AOI21X1
XFILL_1__752_ gnd vdd FILL
XFILL_0__1430_ gnd vdd FILL
XFILL_2__1448_ gnd vdd FILL
XFILL_2__1028_ gnd vdd FILL
XFILL_0__1010_ gnd vdd FILL
XFILL_3__901_ gnd vdd FILL
X_1446_ LoadCtl_0_bF$buf2 Xin[1] _718_ vdd gnd NAND2X1
X_1026_ _274_ _339_ vdd gnd INVX1
XFILL_0__774_ gnd vdd FILL
XFILL_1__808_ gnd vdd FILL
X_777_ LoadCtl_4_bF$buf6 _107_ _108_ _7_ vdd gnd OAI21X1
XFILL_1__1188_ gnd vdd FILL
XFILL_1__981_ gnd vdd FILL
XFILL_2__1257_ gnd vdd FILL
XFILL_1__1400_ gnd vdd FILL
X_1255_ _544_ LoadCtl_4_bF$buf5 _556_ _561_ _32_ vdd 
+ gnd
+ OAI22X1
XFILL_1__790_ gnd vdd FILL
XFILL_2__824_ gnd vdd FILL
XFILL_2__1066_ gnd vdd FILL
X_1484_ _32_ clk_bF$buf4 mul[12] vdd gnd DFFPOSX1
X_1064_ _375_ _365_ _370_ _376_ vdd gnd NAND3X1
XFILL_1__846_ gnd vdd FILL
XFILL_0__1104_ gnd vdd FILL
XFILL_2__1295_ gnd vdd FILL
XFILL_0__868_ gnd vdd FILL
X_1293_ _585_ _594_ vdd gnd INVX1
XFILL_0__1333_ gnd vdd FILL
XFILL_2__862_ gnd vdd FILL
X_1349_ y[9] _135__bF$buf0 _645_ vdd gnd NAND2X1
XFILL_1__884_ gnd vdd FILL
XFILL_2__918_ gnd vdd FILL
XFILL_0__1142_ gnd vdd FILL
XFILL_1__1303_ gnd vdd FILL
X_1158_ _463_ _467_ _466_ _468_ vdd gnd NAND3X1
XFILL_2__727_ gnd vdd FILL
XFILL_0__1371_ gnd vdd FILL
XFILL_2__1389_ gnd vdd FILL
XFILL_1__1532_ gnd vdd FILL
XFILL_1__1112_ gnd vdd FILL
X_1387_ _677_ _678_ _679_ vdd gnd NOR2X1
XFILL_1__749_ gnd vdd FILL
XFILL_0__1427_ gnd vdd FILL
XFILL_0__1007_ gnd vdd FILL
XFILL_2__956_ gnd vdd FILL
XFILL_2__1198_ gnd vdd FILL
XFILL_0__1180_ gnd vdd FILL
X_930_ _177_ _239_ _212_ _244_ vdd gnd OAI21X1
XFILL_1__1341_ gnd vdd FILL
X_1196_ _91_ _418_ _505_ vdd gnd NOR2X1
XFILL_1__978_ gnd vdd FILL
XFILL_2__1410_ gnd vdd FILL
XFILL_0__1236_ gnd vdd FILL
XFILL_2__765_ gnd vdd FILL
XFILL_1__1150_ gnd vdd FILL
XBUFX2_insert15 Cin[0] Cin_0_bF$buf3 vdd gnd BUFX2
XBUFX2_insert16 Cin[0] Cin_0_bF$buf2 vdd gnd BUFX2
XBUFX2_insert17 Cin[0] Cin_0_bF$buf1 vdd gnd BUFX2
XBUFX2_insert18 Cin[0] Cin_0_bF$buf0 vdd gnd BUFX2
XBUFX2_insert19 _135_ _135__bF$buf5 vdd gnd BUFX2
XFILL_1__787_ gnd vdd FILL
XFILL_0__1045_ gnd vdd FILL
XFILL_2__994_ gnd vdd FILL
XFILL_1__1206_ gnd vdd FILL
XFILL_0__1274_ gnd vdd FILL
XFILL_1__1435_ gnd vdd FILL
XFILL_1__1015_ gnd vdd FILL
XFILL_2__859_ gnd vdd FILL
XFILL_0__1083_ gnd vdd FILL
X_1502_ _50_ clk_bF$buf3 Yin3[0] vdd gnd DFFPOSX1
XFILL_0__830_ gnd vdd FILL
X_833_ XinHL[1] _150_ vdd gnd INVX1
XFILL_1__1244_ gnd vdd FILL
X_1099_ _399_ _409_ _410_ vdd gnd NAND2X1
XFILL_2__1313_ gnd vdd FILL
XFILL_0__1139_ gnd vdd FILL
X_1311_ _607_ _606_ _603_ _610_ vdd gnd OAI21X1
XFILL_1__1053_ gnd vdd FILL
XFILL_2__1122_ gnd vdd FILL
XFILL_0__1368_ gnd vdd FILL
XFILL_2__897_ gnd vdd FILL
XFILL_1__1529_ gnd vdd FILL
XFILL_1__1109_ gnd vdd FILL
X_1120_ _366_ _369_ _373_ _431_ vdd gnd OAI21X1
XFILL_1__902_ gnd vdd FILL
X_871_ _176_ _182_ _163_ _187_ vdd gnd OAI21X1
XFILL_1__1282_ gnd vdd FILL
XFILL_2__1351_ gnd vdd FILL
XFILL86250x70350 gnd vdd FILL
XFILL_0__1177_ gnd vdd FILL
XFILL_0__924_ gnd vdd FILL
XFILL_3__1420_ gnd vdd FILL
X_927_ _236_ _238_ _240_ _241_ vdd gnd NAND3X1
XFILL_1__1338_ gnd vdd FILL
XFILL_1__1091_ gnd vdd FILL
XFILL_2__1407_ gnd vdd FILL
XFILL_2__1160_ gnd vdd FILL
XFILL85950x15750 gnd vdd FILL
X_1405_ Yin[0] _694_ vdd gnd INVX1
XFILL_0__733_ gnd vdd FILL
X_736_ _77_ _80_ _81_ _722_[1] vdd gnd OAI21X1
XFILL_1__1147_ gnd vdd FILL
XFILL_1__940_ gnd vdd FILL
XFILL_2__1216_ gnd vdd FILL
X_1214_ _451_ _455_ _491_ _523_ vdd gnd NAND3X1
XFILL_0__962_ gnd vdd FILL
X_965_ _278_ _277_ _279_ vdd gnd XNOR2X1
XFILL_1__1376_ gnd vdd FILL
XFILL_2__1445_ gnd vdd FILL
XFILL_2__1025_ gnd vdd FILL
X_1443_ LoadCtl_0_bF$buf3 _701_ _716_ _65_ vdd gnd AOI21X1
X_1023_ _335_ _284_ _336_ vdd gnd XNOR2X1
XFILL_0__771_ gnd vdd FILL
XFILL_1__805_ gnd vdd FILL
X_774_ LoadCtl_4_bF$buf6 _105_ _106_ _6_ vdd gnd OAI21X1
XFILL_1__1185_ gnd vdd FILL
XFILL_2__1254_ gnd vdd FILL
XFILL_0__827_ gnd vdd FILL
X_1252_ _524_ _557_ _558_ _559_ vdd gnd AOI21X1
XFILL_2__821_ gnd vdd FILL
XFILL_2__1063_ gnd vdd FILL
X_1308_ _607_ _606_ LoadCtl_4_bF$buf1 _608_ vdd gnd OAI21X1
XFILL_3__1132_ gnd vdd FILL
X_1481_ _29_ clk_bF$buf3 mul[9] vdd gnd DFFPOSX1
X_1061_ _310_ _372_ _373_ vdd gnd NAND2X1
XFILL_1__843_ gnd vdd FILL
XFILL_0__1101_ gnd vdd FILL
XFILL_2__1119_ gnd vdd FILL
XFILL_2__1292_ gnd vdd FILL
X_1117_ _95_ _151_ _427_ _428_ vdd gnd OAI21X1
XFILL_0__865_ gnd vdd FILL
X_868_ _162_ _174_ _183_ _184_ vdd gnd NAND3X1
XFILL_1__1279_ gnd vdd FILL
X_1290_ rYin[4] mul[4] _591_ vdd gnd NAND2X1
XFILL_0__1330_ gnd vdd FILL
XFILL_2__1348_ gnd vdd FILL
X_1346_ _639_ _641_ _642_ vdd gnd NOR2X1
XFILL_3__1170_ gnd vdd FILL
XFILL_1__1088_ gnd vdd FILL
XFILL_1__881_ gnd vdd FILL
XFILL_2__915_ gnd vdd FILL
XFILL_2__1157_ gnd vdd FILL
XFILL_1_CLKBUF1_insert10 gnd vdd FILL
XFILL_1_CLKBUF1_insert11 gnd vdd FILL
XFILL_1__1300_ gnd vdd FILL
XFILL_1_CLKBUF1_insert12 gnd vdd FILL
XFILL_1_CLKBUF1_insert13 gnd vdd FILL
XFILL_1_CLKBUF1_insert14 gnd vdd FILL
X_1155_ XinH[2] Cin[3] _465_ vdd gnd NAND2X1
XFILL_1__937_ gnd vdd FILL
XFILL_2__724_ gnd vdd FILL
XFILL_2__1386_ gnd vdd FILL
XFILL_0__959_ gnd vdd FILL
X_1384_ _674_ _673_ _670_ _676_ vdd gnd OAI21X1
XFILL_1__746_ gnd vdd FILL
XFILL_0__1424_ gnd vdd FILL
XFILL_0__1004_ gnd vdd FILL
XFILL_2__953_ gnd vdd FILL
XFILL_2__1195_ gnd vdd FILL
XFILL_0__768_ gnd vdd FILL
X_1193_ _469_ _470_ _468_ _502_ vdd gnd OAI21X1
XFILL_1__975_ gnd vdd FILL
XFILL_0__1233_ gnd vdd FILL
XFILL_2__762_ gnd vdd FILL
X_1249_ _555_ _549_ _556_ vdd gnd NOR2X1
XFILL_0__997_ gnd vdd FILL
XFILL_1__784_ gnd vdd FILL
XFILL_2__818_ gnd vdd FILL
XFILL_0__1042_ gnd vdd FILL
XFILL_2__991_ gnd vdd FILL
XFILL_1__1203_ gnd vdd FILL
X_1478_ _26_ clk_bF$buf5 mul[6] vdd gnd DFFPOSX1
X_1058_ _369_ _368_ _366_ _370_ vdd gnd OAI21X1
XFILL_2__1289_ gnd vdd FILL
XFILL_0__1271_ gnd vdd FILL
XFILL_3__742_ gnd vdd FILL
XFILL_1__1432_ gnd vdd FILL
XFILL_1__1012_ gnd vdd FILL
X_1287_ _135__bF$buf4 _587_ _588_ _37_ vdd gnd OAI21X1
XFILL_0__1327_ gnd vdd FILL
XFILL86250x35250 gnd vdd FILL
XFILL_2__856_ gnd vdd FILL
XFILL_2__1098_ gnd vdd FILL
XFILL_0__1080_ gnd vdd FILL
X_830_ XinHL[1] Cin_0_bF$buf3 _147_ vdd gnd AND2X2
XFILL_1__1241_ gnd vdd FILL
X_1096_ _135__bF$buf2 _406_ _407_ _27_ vdd gnd OAI21X1
XFILL_1__878_ gnd vdd FILL
XFILL_2__1310_ gnd vdd FILL
XFILL_0__1136_ gnd vdd FILL
XFILL_3__780_ gnd vdd FILL
XFILL_1__1050_ gnd vdd FILL
XFILL_0__1365_ gnd vdd FILL
XFILL_2__894_ gnd vdd FILL
XFILL_1__1106_ gnd vdd FILL
XFILL86550x74250 gnd vdd FILL
XFILL_0__1174_ gnd vdd FILL
XFILL_0__921_ gnd vdd FILL
X_924_ _150_ _214_ _237_ _238_ vdd gnd OAI21X1
XFILL_1__1335_ gnd vdd FILL
XFILL_2__1404_ gnd vdd FILL
XFILL_2__759_ gnd vdd FILL
X_1402_ _129_ _686_ _131_ _692_ vdd gnd OAI21X1
XFILL_0__730_ gnd vdd FILL
X_733_ _71_ _78_ _79_ vdd gnd NAND2X1
XFILL_1__1144_ gnd vdd FILL
XFILL_2__1213_ gnd vdd FILL
XFILL_0__1039_ gnd vdd FILL
XFILL_2__988_ gnd vdd FILL
X_1211_ _519_ _500_ _520_ vdd gnd NAND2X1
X_962_ _233_ _274_ _275_ _276_ vdd gnd NAND3X1
XFILL_1__1373_ gnd vdd FILL
XFILL_3__1299_ gnd vdd FILL
XFILL_2__1442_ gnd vdd FILL
XFILL_2__1022_ gnd vdd FILL
XFILL_0__1268_ gnd vdd FILL
XFILL_2__797_ gnd vdd FILL
XFILL_1__1429_ gnd vdd FILL
XFILL_1__1009_ gnd vdd FILL
X_1440_ LoadCtl_0_bF$buf0 Yin0[2] _715_ vdd gnd NOR2X1
X_1020_ _328_ _329_ _289_ _333_ vdd gnd OAI21X1
XFILL_1__802_ gnd vdd FILL
X_771_ LoadCtl_4_bF$buf2 _103_ _104_ _5_ vdd gnd OAI21X1
XFILL_1__1182_ gnd vdd FILL
XFILL_2__1251_ gnd vdd FILL
XFILL_0__1077_ gnd vdd FILL
XFILL_0__824_ gnd vdd FILL
X_827_ XinHL[1] Cin_1_bF$buf2 XinHL[2] Cin_0_bF$buf3 _144_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1238_ gnd vdd FILL
XFILL_2__1307_ gnd vdd FILL
XFILL_2__1060_ gnd vdd FILL
X_1305_ _604_ _601_ _605_ vdd gnd NOR2X1
XFILL_1__1047_ gnd vdd FILL
XFILL_1__840_ gnd vdd FILL
XFILL_2__1116_ gnd vdd FILL
X_1534_ _722_[2] Yout[2] vdd gnd BUFX2
X_1114_ XinH[2] Cin_1_bF$buf3 _425_ vdd gnd NAND2X1
XFILL_0__862_ gnd vdd FILL
X_865_ _179_ _180_ _148_ _181_ vdd gnd OAI21X1
XFILL_1__1276_ gnd vdd FILL
XFILL_2__1345_ gnd vdd FILL
XFILL_0__918_ gnd vdd FILL
X_1343_ rYin[9] mul[9] _639_ vdd gnd NOR2X1
XFILL_1__1085_ gnd vdd FILL
XFILL_2__912_ gnd vdd FILL
XFILL_2__1154_ gnd vdd FILL
XFILL_0__727_ gnd vdd FILL
XFILL_3__1223_ gnd vdd FILL
X_1152_ _433_ _423_ _436_ _462_ vdd gnd OAI21X1
XFILL_1__934_ gnd vdd FILL
XFILL_2__1383_ gnd vdd FILL
X_1208_ _501_ _516_ _517_ vdd gnd NAND2X1
XFILL_0__956_ gnd vdd FILL
X_959_ _234_ _268_ _272_ _273_ vdd gnd NAND3X1
X_1381_ _671_ _674_ vdd gnd INVX1
XFILL_1__743_ gnd vdd FILL
XFILL_2__1439_ gnd vdd FILL
XFILL_0__1421_ gnd vdd FILL
XFILL_2__1019_ gnd vdd FILL
XFILL_0__1001_ gnd vdd FILL
XFILL_2__950_ gnd vdd FILL
XFILL_2__1192_ gnd vdd FILL
X_1437_ LoadCtl_0_bF$buf3 _694_ _713_ _62_ vdd gnd AOI21X1
X_1017_ _328_ _329_ _327_ _330_ vdd gnd OAI21X1
XFILL_0__765_ gnd vdd FILL
XFILL_3__1261_ gnd vdd FILL
X_768_ LoadCtl_4_bF$buf2 _101_ _102_ _4_ vdd gnd OAI21X1
XFILL_1__1179_ gnd vdd FILL
X_1190_ _498_ _499_ vdd gnd INVX1
XFILL_1__972_ gnd vdd FILL
XFILL_2__1248_ gnd vdd FILL
XFILL_0__1230_ gnd vdd FILL
X_1246_ _535_ _553_ vdd gnd INVX1
XFILL_0__994_ gnd vdd FILL
X_997_ XinH[2] Cin_1_bF$buf3 _310_ vdd gnd AND2X2
XFILL_1__781_ gnd vdd FILL
XFILL_2__815_ gnd vdd FILL
XFILL_2__1057_ gnd vdd FILL
XFILL_1__1200_ gnd vdd FILL
X_1475_ _23_ clk_bF$buf5 mul[3] vdd gnd DFFPOSX1
X_1055_ XinH[3] Cin_1_bF$buf3 _367_ vdd gnd NAND2X1
XFILL_1__837_ gnd vdd FILL
XFILL_2__1286_ gnd vdd FILL
XFILL_0__859_ gnd vdd FILL
X_1284_ _584_ _585_ _586_ vdd gnd NOR2X1
XFILL_0__1324_ gnd vdd FILL
XFILL86550x39150 gnd vdd FILL
XFILL_1_BUFX2_insert15 gnd vdd FILL
XFILL_2__853_ gnd vdd FILL
XFILL_1_BUFX2_insert16 gnd vdd FILL
XFILL_1_BUFX2_insert17 gnd vdd FILL
XFILL_1_BUFX2_insert18 gnd vdd FILL
XFILL_1_BUFX2_insert19 gnd vdd FILL
XFILL_2__1095_ gnd vdd FILL
X_1093_ _404_ _399_ _405_ vdd gnd NAND2X1
XFILL_1__875_ gnd vdd FILL
XFILL_2__909_ gnd vdd FILL
XFILL86250x11850 gnd vdd FILL
XFILL_0__1133_ gnd vdd FILL
X_1149_ _411_ _455_ _458_ _459_ vdd gnd AOI21X1
XFILL_0__897_ gnd vdd FILL
XFILL_0__1362_ gnd vdd FILL
XFILL_2__891_ gnd vdd FILL
XFILL_3__833_ gnd vdd FILL
XFILL_1__1103_ gnd vdd FILL
X_1378_ _670_ _668_ _671_ vdd gnd AND2X2
XFILL_0__1418_ gnd vdd FILL
XFILL_2__947_ gnd vdd FILL
XFILL_2__1189_ gnd vdd FILL
XFILL_0__1171_ gnd vdd FILL
X_921_ _219_ _221_ _211_ _235_ vdd gnd AOI21X1
XFILL_1__1332_ gnd vdd FILL
X_1187_ _495_ _456_ _496_ vdd gnd NOR2X1
XFILL_1__969_ gnd vdd FILL
XFILL_2__1401_ gnd vdd FILL
XFILL_0__1227_ gnd vdd FILL
XFILL_2__756_ gnd vdd FILL
XFILL_3__871_ gnd vdd FILL
X_730_ _70_ _73_ _76_ _722_[0] vdd gnd OAI21X1
XFILL_1__1141_ gnd vdd FILL
XFILL_1__778_ gnd vdd FILL
XFILL_2__1210_ gnd vdd FILL
XFILL_0__1036_ gnd vdd FILL
XFILL_2__985_ gnd vdd FILL
XFILL_1__1370_ gnd vdd FILL
XFILL_0__1265_ gnd vdd FILL
XFILL_2__794_ gnd vdd FILL
XFILL_1__1426_ gnd vdd FILL
XFILL_1__1006_ gnd vdd FILL
XFILL_0__1074_ gnd vdd FILL
XFILL_0__821_ gnd vdd FILL
X_824_ XinHL[0] Cin[2] _141_ vdd gnd NAND2X1
XFILL_1__1235_ gnd vdd FILL
XFILL_2__1304_ gnd vdd FILL
X_1302_ rYin[5] mul[5] _602_ vdd gnd OR2X2
XFILL_1__1044_ gnd vdd FILL
XFILL_2__1533_ gnd vdd FILL
XFILL86550x27450 gnd vdd FILL
XFILL_2__1113_ gnd vdd FILL
XFILL_0__1359_ gnd vdd FILL
XFILL_2__888_ gnd vdd FILL
X_1531_ _721_[3] Xout[3] vdd gnd BUFX2
X_1111_ _354_ _420_ _421_ _422_ vdd gnd AOI21X1
X_862_ _177_ _151_ _170_ _178_ vdd gnd OAI21X1
XFILL_1__1273_ gnd vdd FILL
XFILL_2__1342_ gnd vdd FILL
XFILL_0__1168_ gnd vdd FILL
XFILL_0__915_ gnd vdd FILL
X_918_ XinHL[1] Cin[4] _232_ vdd gnd AND2X2
XFILL_1__1329_ gnd vdd FILL
X_1340_ _636_ _635_ LoadCtl_4_bF$buf3 _637_ vdd gnd OAI21X1
XFILL_1__1082_ gnd vdd FILL
XFILL_2__1151_ gnd vdd FILL
XFILL_0__1397_ gnd vdd FILL
XFILL_0__724_ gnd vdd FILL
X_727_ LoadCtl[1] _74_ vdd gnd INVX2
XFILL_1__1138_ gnd vdd FILL
XFILL_1__931_ gnd vdd FILL
XFILL_2__1207_ gnd vdd FILL
XFILL86850x66450 gnd vdd FILL
XFILL_2__1380_ gnd vdd FILL
X_1205_ _510_ _514_ vdd gnd INVX1
XFILL_0__953_ gnd vdd FILL
X_956_ _266_ _265_ _264_ _270_ vdd gnd AOI21X1
XFILL_1__1367_ gnd vdd FILL
XFILL_1__740_ gnd vdd FILL
XFILL_2__1436_ gnd vdd FILL
XFILL_2__1016_ gnd vdd FILL
X_1434_ LoadCtl_0_bF$buf3 _74_ Yin1[3] _712_ vdd gnd OAI21X1
X_1014_ _246_ _326_ _265_ _327_ vdd gnd OAI21X1
XFILL_0__762_ gnd vdd FILL
X_765_ _95_ _75_ _100_ _3_ vdd gnd OAI21X1
XFILL_1__1176_ gnd vdd FILL
XFILL_2__1245_ gnd vdd FILL
XFILL_0__818_ gnd vdd FILL
XFILL_3__1314_ gnd vdd FILL
X_1243_ _531_ _536_ _550_ vdd gnd NAND2X1
XFILL_0__991_ gnd vdd FILL
X_994_ XinH[1] Cin_1_bF$buf3 _306_ _307_ vdd gnd NAND3X1
XFILL_2__812_ gnd vdd FILL
XFILL_2__1054_ gnd vdd FILL
X_1472_ _20_ clk_bF$buf6 mul[0] vdd gnd DFFPOSX1
X_1052_ _363_ _358_ _364_ vdd gnd NAND2X1
XFILL_1__834_ gnd vdd FILL
XFILL_2__1283_ gnd vdd FILL
X_1528_ _721_[0] Xout[0] vdd gnd BUFX2
X_1108_ _179_ _418_ _419_ vdd gnd NOR2X1
XFILL_0__856_ gnd vdd FILL
XFILL_3__1352_ gnd vdd FILL
X_859_ _141_ _144_ _149_ _175_ vdd gnd OAI21X1
X_1281_ _578_ _579_ _582_ _583_ vdd gnd AOI21X1
XFILL_0__1321_ gnd vdd FILL
XFILL_2__1339_ gnd vdd FILL
XFILL_2__850_ gnd vdd FILL
XFILL_2__1092_ gnd vdd FILL
X_1337_ _633_ _630_ _634_ vdd gnd NOR2X1
XFILL_1__1079_ gnd vdd FILL
X_1090_ _349_ _396_ _397_ _402_ vdd gnd NAND3X1
XFILL_1__872_ gnd vdd FILL
XFILL86550x15750 gnd vdd FILL
XFILL_2__906_ gnd vdd FILL
XFILL_0__1130_ gnd vdd FILL
XFILL_2__1148_ gnd vdd FILL
X_1146_ _411_ _456_ _457_ vdd gnd XOR2X1
XFILL_0__894_ gnd vdd FILL
XFILL_1__928_ gnd vdd FILL
X_897_ XinHL[1] Cin[4] _212_ vdd gnd NAND2X1
XFILL_2__1377_ gnd vdd FILL
XFILL87150x7950 gnd vdd FILL
XFILL_1__1100_ gnd vdd FILL
XFILL_3__1026_ gnd vdd FILL
XFILL_2_BUFX2_insert30 gnd vdd FILL
XFILL_2_BUFX2_insert31 gnd vdd FILL
XFILL_2_BUFX2_insert32 gnd vdd FILL
XFILL_2_BUFX2_insert33 gnd vdd FILL
X_1375_ _125_ _544_ _668_ vdd gnd NAND2X1
XFILL_1__737_ gnd vdd FILL
XFILL_0__1415_ gnd vdd FILL
XFILL_2__944_ gnd vdd FILL
XFILL_2__1186_ gnd vdd FILL
XFILL_0__759_ gnd vdd FILL
X_1184_ _135__bF$buf2 _492_ _493_ _29_ vdd gnd OAI21X1
XFILL_1__966_ gnd vdd FILL
XFILL_0__1224_ gnd vdd FILL
XFILL_2__753_ gnd vdd FILL
XFILL_0__988_ gnd vdd FILL
XFILL_3__1064_ gnd vdd FILL
XFILL_1__775_ gnd vdd FILL
XFILL_2__809_ gnd vdd FILL
XFILL_0__1033_ gnd vdd FILL
XFILL_2__982_ gnd vdd FILL
XFILL_3__924_ gnd vdd FILL
X_1469_ _17_ clk_bF$buf4 rYin[13] vdd gnd DFFPOSX1
X_1049_ XinH[0] Cin[3] _361_ vdd gnd NAND2X1
XFILL_0__797_ gnd vdd FILL
XFILL_0__1262_ gnd vdd FILL
XFILL_2__791_ gnd vdd FILL
XFILL_1__1423_ gnd vdd FILL
XFILL_1__1003_ gnd vdd FILL
X_1278_ y[2] _135__bF$buf4 _581_ vdd gnd NAND2X1
XFILL_0__1318_ gnd vdd FILL
XFILL_2__847_ gnd vdd FILL
XFILL_2__1089_ gnd vdd FILL
XFILL_0__1071_ gnd vdd FILL
XFILL_3__962_ gnd vdd FILL
X_821_ mul[1] _135__bF$buf1 _139_ vdd gnd NAND2X1
XFILL_1__1232_ gnd vdd FILL
X_1087_ _398_ _395_ _348_ _399_ vdd gnd OAI21X1
XFILL_1__869_ gnd vdd FILL
XFILL_2__1301_ gnd vdd FILL
XFILL_0__1127_ gnd vdd FILL
XFILL_1__1041_ gnd vdd FILL
XFILL_2__1530_ gnd vdd FILL
XFILL_2__1110_ gnd vdd FILL
XFILL_0__1356_ gnd vdd FILL
XFILL_2__885_ gnd vdd FILL
XFILL_1__1270_ gnd vdd FILL
XFILL_0__1165_ gnd vdd FILL
XFILL_0__912_ gnd vdd FILL
X_915_ _223_ _228_ _193_ _230_ vdd gnd NAND3X1
XFILL_1__1326_ gnd vdd FILL
XFILL_0__1394_ gnd vdd FILL
X_724_ LoadCtl[2] _71_ vdd gnd INVX2
XFILL_1__1135_ gnd vdd FILL
XFILL_2__1204_ gnd vdd FILL
XFILL_2__979_ gnd vdd FILL
X_1202_ _504_ _476_ _509_ _511_ vdd gnd NAND3X1
XFILL_0__950_ gnd vdd FILL
X_953_ _265_ _264_ _266_ _267_ vdd gnd NAND3X1
XFILL_1__1364_ gnd vdd FILL
XFILL_2__1433_ gnd vdd FILL
XFILL_2__1013_ gnd vdd FILL
XFILL_0__1259_ gnd vdd FILL
XFILL_2__788_ gnd vdd FILL
X_1431_ _697_ _708_ _710_ _59_ vdd gnd OAI21X1
X_1011_ _322_ _323_ _321_ _324_ vdd gnd NAND3X1
X_762_ Xin[2] _75_ _99_ vdd gnd NAND2X1
XFILL_1__1173_ gnd vdd FILL
XFILL_2__1242_ gnd vdd FILL
XFILL_0__1068_ gnd vdd FILL
XFILL_0__815_ gnd vdd FILL
X_818_ XinHL[0] Cin_1_bF$buf2 _136_ vdd gnd NAND2X1
XFILL_1__1229_ gnd vdd FILL
X_1240_ _545_ _546_ _547_ vdd gnd NOR2X1
X_991_ XinH[1] Cin_1_bF$buf1 _304_ vdd gnd NAND2X1
XFILL_2__1051_ gnd vdd FILL
XFILL_0__1297_ gnd vdd FILL
XFILL_1__1038_ gnd vdd FILL
XFILL_1__831_ gnd vdd FILL
XFILL_2__1527_ gnd vdd FILL
XFILL_2__1107_ gnd vdd FILL
XFILL_2__1280_ gnd vdd FILL
X_1525_ LoadCtl[2] clk_bF$buf7 LoadCtl[3] vdd gnd DFFPOSX1
X_1105_ _386_ _416_ vdd gnd INVX1
XFILL_0__853_ gnd vdd FILL
X_856_ _167_ _172_ vdd gnd INVX1
XFILL_1__1267_ gnd vdd FILL
XFILL87150x74250 gnd vdd FILL
XFILL_2__1336_ gnd vdd FILL
XFILL_0__909_ gnd vdd FILL
X_1334_ rYin[8] mul[8] _631_ vdd gnd OR2X2
XFILL_1__1076_ gnd vdd FILL
XFILL86850x19650 gnd vdd FILL
XFILL_2__903_ gnd vdd FILL
XFILL_2__1145_ gnd vdd FILL
X_1143_ _439_ _446_ _415_ _454_ vdd gnd AOI21X1
XFILL_0__891_ gnd vdd FILL
XFILL_1__925_ gnd vdd FILL
X_894_ _201_ _200_ _198_ _209_ vdd gnd NAND3X1
XFILL_2__1374_ gnd vdd FILL
XFILL_0__947_ gnd vdd FILL
X_1372_ _661_ _651_ _660_ _665_ vdd gnd AOI21X1
XFILL_1__734_ gnd vdd FILL
XFILL_0__1412_ gnd vdd FILL
XFILL_2__941_ gnd vdd FILL
XFILL_2__1183_ gnd vdd FILL
X_1428_ LoadCtl_0_bF$buf0 _74_ Yin1[0] _709_ vdd gnd OAI21X1
X_1008_ _295_ _299_ _321_ vdd gnd AND2X2
XFILL_0__756_ gnd vdd FILL
X_759_ _89_ _75_ _97_ _0_ vdd gnd OAI21X1
X_1181_ _487_ _490_ _491_ vdd gnd AND2X2
XFILL_1__963_ gnd vdd FILL
XFILL_0__1221_ gnd vdd FILL
XFILL_2__1239_ gnd vdd FILL
XFILL_2__750_ gnd vdd FILL
X_1237_ mul[12] _544_ vdd gnd INVX1
XFILL_0__985_ gnd vdd FILL
X_988_ _204_ _251_ _301_ vdd gnd NOR2X1
XFILL_1__1399_ gnd vdd FILL
XFILL_1__772_ gnd vdd FILL
XFILL_2__806_ gnd vdd FILL
XFILL_0__1450_ gnd vdd FILL
XFILL_0__1030_ gnd vdd FILL
XFILL_2__1048_ gnd vdd FILL
XFILL_3__1117_ gnd vdd FILL
X_1466_ _14_ clk_bF$buf4 rYin[10] vdd gnd DFFPOSX1
X_1046_ _353_ _355_ _357_ _358_ vdd gnd NAND3X1
XFILL_0__794_ gnd vdd FILL
XFILL_1__828_ gnd vdd FILL
X_797_ LoadCtl_4_bF$buf0 Yin2[2] _122_ vdd gnd NAND2X1
XFILL_2__1277_ gnd vdd FILL
XFILL_1__1420_ gnd vdd FILL
XFILL_1__1000_ gnd vdd FILL
X_1275_ _103_ _570_ _574_ _578_ vdd gnd OAI21X1
XFILL_0__1315_ gnd vdd FILL
XFILL_2__844_ gnd vdd FILL
XFILL_2__1086_ gnd vdd FILL
XFILL_3__1155_ gnd vdd FILL
X_1084_ _391_ _384_ _388_ _396_ vdd gnd NAND3X1
XFILL_1__866_ gnd vdd FILL
XFILL_0__1124_ gnd vdd FILL
XFILL_0__888_ gnd vdd FILL
XFILL87150x62550 gnd vdd FILL
XFILL_0__1353_ gnd vdd FILL
XFILL_2__882_ gnd vdd FILL
X_1369_ y[11] _135__bF$buf0 _663_ vdd gnd NAND2X1
XFILL_3__1193_ gnd vdd FILL
XFILL_0__1409_ gnd vdd FILL
XFILL_2__938_ gnd vdd FILL
XFILL_0__1162_ gnd vdd FILL
X_912_ _222_ _227_ vdd gnd INVX1
XFILL_1__1323_ gnd vdd FILL
X_1178_ _434_ _438_ _441_ _488_ vdd gnd AOI21X1
XFILL_0__1218_ gnd vdd FILL
XFILL_2__747_ gnd vdd FILL
XFILL_0__1391_ gnd vdd FILL
XFILL_1__1132_ gnd vdd FILL
XFILL_1__769_ gnd vdd FILL
XFILL_2__1201_ gnd vdd FILL
XFILL_0__1447_ gnd vdd FILL
XFILL_0__1027_ gnd vdd FILL
XFILL_2__976_ gnd vdd FILL
X_950_ _241_ _245_ _264_ vdd gnd AND2X2
XFILL_1__1361_ gnd vdd FILL
XFILL_1__998_ gnd vdd FILL
XFILL_2__1430_ gnd vdd FILL
XFILL_2__1010_ gnd vdd FILL
XFILL_0__1256_ gnd vdd FILL
XFILL_2__785_ gnd vdd FILL
XFILL_3__727_ gnd vdd FILL
XFILL_1__1417_ gnd vdd FILL
XFILL87150x39150 gnd vdd FILL
XFILL_1__1170_ gnd vdd FILL
XFILL_0__1065_ gnd vdd FILL
XFILL_0__812_ gnd vdd FILL
X_815_ XinHL[0] Cin_0_bF$buf3 LoadCtl_4_bF$buf2 _134_ vdd gnd NAND3X1
XFILL_1__1226_ gnd vdd FILL
XFILL_0__1294_ gnd vdd FILL
XFILL_3__765_ gnd vdd FILL
XFILL_1__1035_ gnd vdd FILL
XFILL_2__1104_ gnd vdd FILL
XFILL_2__879_ gnd vdd FILL
X_1522_ Rdy clk_bF$buf7 LoadCtl[0] vdd gnd DFFPOSX1
X_1102_ _350_ _412_ _396_ _413_ vdd gnd OAI21X1
XFILL_0__850_ gnd vdd FILL
X_853_ _164_ _169_ vdd gnd INVX1
XFILL_1__1264_ gnd vdd FILL
XFILL_2__1333_ gnd vdd FILL
XFILL_0__1159_ gnd vdd FILL
XFILL_0__906_ gnd vdd FILL
X_909_ _186_ _224_ vdd gnd INVX1
X_1331_ _607_ _593_ _628_ vdd gnd NOR2X1
XFILL87150x50850 gnd vdd FILL
XFILL_1__1073_ gnd vdd FILL
XFILL_2__900_ gnd vdd FILL
XFILL_2__1142_ gnd vdd FILL
XFILL_0__1388_ gnd vdd FILL
XFILL_1__1129_ gnd vdd FILL
X_1140_ _413_ _450_ _447_ _451_ vdd gnd NAND3X1
XFILL_1__922_ gnd vdd FILL
X_891_ _199_ _205_ _201_ _206_ vdd gnd OAI21X1
XFILL_2__1371_ gnd vdd FILL
XFILL_0__1197_ gnd vdd FILL
XFILL_0__944_ gnd vdd FILL
X_947_ _250_ _252_ _249_ _261_ vdd gnd AOI21X1
XFILL_1__1358_ gnd vdd FILL
XFILL_1__731_ gnd vdd FILL
XFILL_2__1427_ gnd vdd FILL
XFILL_2__1007_ gnd vdd FILL
XFILL_2__1180_ gnd vdd FILL
X_1425_ Yin2[3] _703_ _707_ vdd gnd NOR2X1
X_1005_ _305_ _307_ _303_ _318_ vdd gnd AOI21X1
XFILL_0__753_ gnd vdd FILL
X_756_ LoadCtl_0_bF$buf4 XinHL[3] _96_ vdd gnd NAND2X1
XFILL_1__1167_ gnd vdd FILL
XFILL_1__960_ gnd vdd FILL
XFILL_2__1236_ gnd vdd FILL
XFILL_0__809_ gnd vdd FILL
X_1234_ _538_ _541_ _542_ vdd gnd NAND2X1
XFILL_0__982_ gnd vdd FILL
X_985_ _179_ _239_ _285_ _298_ vdd gnd OAI21X1
XFILL_1__1396_ gnd vdd FILL
XFILL_2__803_ gnd vdd FILL
XFILL_2__1045_ gnd vdd FILL
X_1463_ _11_ clk_bF$buf6 rYin[7] vdd gnd DFFPOSX1
X_1043_ _179_ _214_ _354_ _355_ vdd gnd OAI21X1
XFILL87150x27450 gnd vdd FILL
XFILL_0__791_ gnd vdd FILL
XFILL_1__825_ gnd vdd FILL
X_794_ LoadCtl_4_bF$buf3 Yin2[1] _120_ vdd gnd NAND2X1
XFILL_2__1274_ gnd vdd FILL
X_1519_ _67_ clk_bF$buf6 XinHL[1] vdd gnd DFFPOSX1
XFILL_0__847_ gnd vdd FILL
X_1272_ _575_ _574_ _576_ vdd gnd NAND2X1
XFILL_0__1312_ gnd vdd FILL
XFILL_2__841_ gnd vdd FILL
XFILL_2__1083_ gnd vdd FILL
X_1328_ _624_ _616_ _617_ _625_ vdd gnd OAI21X1
X_1081_ _383_ _376_ _364_ _393_ vdd gnd AOI21X1
XFILL_1__863_ gnd vdd FILL
XFILL_2__1139_ gnd vdd FILL
XFILL_0__1121_ gnd vdd FILL
XFILL_3__1208_ gnd vdd FILL
X_1137_ _438_ _434_ _441_ _448_ vdd gnd NAND3X1
XFILL_0__885_ gnd vdd FILL
XFILL_1__919_ gnd vdd FILL
X_888_ _202_ _200_ _198_ _203_ vdd gnd NAND3X1
XFILL_1__1299_ gnd vdd FILL
XFILL_0__1350_ gnd vdd FILL
XFILL_2__1368_ gnd vdd FILL
X_1366_ _659_ _660_ vdd gnd INVX1
XFILL_1__728_ gnd vdd FILL
XFILL_0__1406_ gnd vdd FILL
XFILL_2__935_ gnd vdd FILL
XFILL_2__1177_ gnd vdd FILL
XFILL85650x74250 gnd vdd FILL
XFILL_1__1320_ gnd vdd FILL
XFILL_3__1246_ gnd vdd FILL
X_1175_ _460_ _483_ _484_ _485_ vdd gnd NAND3X1
XFILL_1__957_ gnd vdd FILL
XFILL_0__1215_ gnd vdd FILL
XFILL_2__744_ gnd vdd FILL
XFILL_0__979_ gnd vdd FILL
XFILL_1__766_ gnd vdd FILL
XFILL_0__1444_ gnd vdd FILL
XFILL_0__1024_ gnd vdd FILL
XFILL_2__973_ gnd vdd FILL
XFILL_0__788_ gnd vdd FILL
XFILL_1__995_ gnd vdd FILL
XFILL_0__1253_ gnd vdd FILL
XFILL_2__782_ gnd vdd FILL
XFILL_1__1414_ gnd vdd FILL
X_1269_ _572_ _571_ _573_ vdd gnd NOR2X1
XFILL_0__1309_ gnd vdd FILL
XFILL_2__838_ gnd vdd FILL
XFILL_0__1062_ gnd vdd FILL
X_812_ LoadCtl_4_bF$buf5 Yin3[3] _132_ vdd gnd NAND2X1
XFILL_1__1223_ gnd vdd FILL
XFILL87150x15750 gnd vdd FILL
X_1498_ _46_ clk_bF$buf2 y[12] vdd gnd DFFPOSX1
X_1078_ _313_ _308_ _316_ _390_ vdd gnd AOI21X1
XFILL_0__1118_ gnd vdd FILL
XFILL_0__1291_ gnd vdd FILL
XFILL_1__1032_ gnd vdd FILL
XFILL_2__1101_ gnd vdd FILL
XFILL_0__1347_ gnd vdd FILL
XFILL_2__876_ gnd vdd FILL
XFILL_3__818_ gnd vdd FILL
X_850_ _142_ _165_ _166_ vdd gnd NOR2X1
XFILL_1__1261_ gnd vdd FILL
XFILL_1__898_ gnd vdd FILL
XFILL_2__1330_ gnd vdd FILL
XFILL_0__1156_ gnd vdd FILL
XFILL_0__903_ gnd vdd FILL
X_906_ _217_ _221_ vdd gnd INVX1
XFILL_1__1317_ gnd vdd FILL
XFILL_1__1070_ gnd vdd FILL
XFILL_0__1385_ gnd vdd FILL
XFILL_3__856_ gnd vdd FILL
XFILL_1__1126_ gnd vdd FILL
XFILL_0__1194_ gnd vdd FILL
XFILL_0__941_ gnd vdd FILL
X_944_ _254_ _257_ _256_ _258_ vdd gnd NAND3X1
XFILL_1__1355_ gnd vdd FILL
XFILL_2__1424_ gnd vdd FILL
XFILL_2__1004_ gnd vdd FILL
XFILL_2__779_ gnd vdd FILL
X_1422_ _697_ _703_ _705_ _55_ vdd gnd AOI21X1
X_1002_ XinH[0] Cin_1_bF$buf1 XinH[1] Cin_0_bF$buf0 _315_ vdd 
+ gnd
+ AOI22X1
XFILL_0__750_ gnd vdd FILL
XFILL_3__894_ gnd vdd FILL
X_753_ LoadCtl_0_bF$buf4 XinHL[2] _94_ vdd gnd NAND2X1
XFILL_1__1164_ gnd vdd FILL
XFILL_2__1233_ gnd vdd FILL
XFILL_0__1059_ gnd vdd FILL
XFILL_0__806_ gnd vdd FILL
X_809_ LoadCtl_4_bF$buf4 Yin3[2] _130_ vdd gnd NAND2X1
X_1231_ _538_ _539_ vdd gnd INVX1
X_982_ _290_ _292_ _294_ _295_ vdd gnd NAND3X1
XFILL_1__1393_ gnd vdd FILL
XFILL_2__800_ gnd vdd FILL
XFILL_2__1042_ gnd vdd FILL
XFILL_0__1288_ gnd vdd FILL
XFILL_1__1449_ gnd vdd FILL
XFILL_1__1029_ gnd vdd FILL
X_1460_ _8_ clk_bF$buf0 rYin[4] vdd gnd DFFPOSX1
X_1040_ _321_ _323_ _351_ _352_ vdd gnd AOI21X1
XFILL_1__822_ gnd vdd FILL
X_791_ LoadCtl_4_bF$buf4 Yin2[0] _118_ vdd gnd NAND2X1
XFILL_2__1271_ gnd vdd FILL
XFILL_0__1097_ gnd vdd FILL
X_1516_ _64_ clk_bF$buf7 Yin0[2] vdd gnd DFFPOSX1
XFILL_0__844_ gnd vdd FILL
X_847_ _146_ _153_ _143_ _163_ vdd gnd AOI21X1
XFILL_1__1258_ gnd vdd FILL
XFILL_2__1327_ gnd vdd FILL
XFILL_2__1080_ gnd vdd FILL
X_1325_ y[8] _135__bF$buf0 _622_ vdd gnd NAND2X1
XFILL_1__1067_ gnd vdd FILL
XFILL_1__860_ gnd vdd FILL
XFILL_2__1136_ gnd vdd FILL
XFILL_3_BUFX2_insert18 gnd vdd FILL
X_1134_ _444_ _443_ _423_ _445_ vdd gnd AOI21X1
XFILL_0__882_ gnd vdd FILL
XFILL_1__916_ gnd vdd FILL
X_885_ _199_ _200_ vdd gnd INVX1
XFILL_1__1296_ gnd vdd FILL
XFILL_2__1365_ gnd vdd FILL
XFILL_0__938_ gnd vdd FILL
X_1363_ _651_ _656_ _657_ vdd gnd NOR2X1
XFILL_1__725_ gnd vdd FILL
XFILL_0__1403_ gnd vdd FILL
XFILL_2__932_ gnd vdd FILL
XFILL_2__1174_ gnd vdd FILL
X_1419_ Yin2[0] _703_ _704_ vdd gnd NOR2X1
XFILL_0__747_ gnd vdd FILL
X_1172_ _461_ _477_ _481_ _482_ vdd gnd NAND3X1
XFILL_1__954_ gnd vdd FILL
XFILL_0__1212_ gnd vdd FILL
XFILL_2__741_ gnd vdd FILL
X_1228_ _535_ _532_ _536_ vdd gnd AND2X2
XFILL_0__976_ gnd vdd FILL
X_979_ _177_ _214_ _291_ _292_ vdd gnd OAI21X1
XFILL_1__763_ gnd vdd FILL
XFILL_0__1441_ gnd vdd FILL
XFILL_0__1021_ gnd vdd FILL
XFILL_2__1039_ gnd vdd FILL
XFILL_2__970_ gnd vdd FILL
X_1457_ _5_ clk_bF$buf5 rYin[1] vdd gnd DFFPOSX1
X_1037_ _297_ _299_ _349_ vdd gnd NAND2X1
XFILL_0__785_ gnd vdd FILL
XFILL_1__819_ gnd vdd FILL
X_788_ LoadCtl_4_bF$buf4 Yin1[3] _116_ vdd gnd NAND2X1
XFILL_1__1199_ gnd vdd FILL
XFILL_1__992_ gnd vdd FILL
XFILL_2__1268_ gnd vdd FILL
XFILL_0__1250_ gnd vdd FILL
XFILL_1__1411_ gnd vdd FILL
X_1266_ mul[1] _570_ vdd gnd INVX1
XFILL_0__1306_ gnd vdd FILL
XFILL_2__835_ gnd vdd FILL
XFILL_2__1077_ gnd vdd FILL
XFILL_1__1220_ gnd vdd FILL
X_1495_ _43_ clk_bF$buf2 y[9] vdd gnd DFFPOSX1
X_1075_ _379_ _382_ _365_ _387_ vdd gnd OAI21X1
XFILL_1__857_ gnd vdd FILL
XFILL_0__1535_ gnd vdd FILL
XFILL_0__1115_ gnd vdd FILL
XFILL_0__879_ gnd vdd FILL
XFILL_0__1344_ gnd vdd FILL
XFILL_2__873_ gnd vdd FILL
XFILL_1__895_ gnd vdd FILL
XFILL_2__929_ gnd vdd FILL
XFILL_0__1153_ gnd vdd FILL
XFILL_0__900_ gnd vdd FILL
X_903_ _207_ _211_ _217_ _218_ vdd gnd OAI21X1
XFILL_1__1314_ gnd vdd FILL
X_1169_ _472_ _468_ _475_ _479_ vdd gnd AOI21X1
XFILL_0__1209_ gnd vdd FILL
XFILL_2__738_ gnd vdd FILL
XFILL_0__1382_ gnd vdd FILL
XFILL_1__1123_ gnd vdd FILL
XFILL_3__1049_ gnd vdd FILL
X_1398_ _129_ _686_ LoadCtl_4_bF$buf3 _689_ vdd gnd OAI21X1
XFILL_0__1438_ gnd vdd FILL
XFILL_0__1018_ gnd vdd FILL
XFILL_2__967_ gnd vdd FILL
XFILL_3__909_ gnd vdd FILL
XFILL_0__1191_ gnd vdd FILL
X_941_ XinH[1] Cin_0_bF$buf0 _255_ vdd gnd AND2X2
XFILL_1__1352_ gnd vdd FILL
XFILL_1__989_ gnd vdd FILL
XFILL_2__1421_ gnd vdd FILL
XFILL_2__1001_ gnd vdd FILL
XFILL_0__1247_ gnd vdd FILL
XFILL_2__776_ gnd vdd FILL
XFILL_1__1408_ gnd vdd FILL
X_750_ LoadCtl_0_bF$buf2 XinHL[1] _92_ vdd gnd NAND2X1
XFILL_1__1161_ gnd vdd FILL
XFILL_3__1087_ gnd vdd FILL
XFILL_1__798_ gnd vdd FILL
XFILL_2__1230_ gnd vdd FILL
XFILL_0__1056_ gnd vdd FILL
XFILL_0__803_ gnd vdd FILL
XFILL_3__947_ gnd vdd FILL
X_806_ LoadCtl_4_bF$buf0 Yin3[1] _128_ vdd gnd NAND2X1
XFILL_1__1217_ gnd vdd FILL
XFILL_1__1390_ gnd vdd FILL
XFILL_0_BUFX2_insert0 gnd vdd FILL
XFILL_0_BUFX2_insert1 gnd vdd FILL
XFILL_0_BUFX2_insert2 gnd vdd FILL
XFILL_0_BUFX2_insert3 gnd vdd FILL
XFILL_0_BUFX2_insert4 gnd vdd FILL
XFILL_0_BUFX2_insert5 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0__1285_ gnd vdd FILL
XFILL_1__1446_ gnd vdd FILL
XFILL_1__1026_ gnd vdd FILL
XFILL_0__1094_ gnd vdd FILL
X_1513_ _61_ clk_bF$buf6 Yin1[3] vdd gnd DFFPOSX1
XFILL_0__841_ gnd vdd FILL
X_844_ _158_ _160_ _22_ vdd gnd AND2X2
XFILL_1__1255_ gnd vdd FILL
XFILL_2__1324_ gnd vdd FILL
X_1322_ _615_ _619_ _620_ vdd gnd XNOR2X1
XFILL_1__1064_ gnd vdd FILL
XFILL_2__1133_ gnd vdd FILL
XFILL85650x15750 gnd vdd FILL
XFILL_0__1379_ gnd vdd FILL
X_1131_ _436_ _437_ _435_ _442_ vdd gnd AOI21X1
XFILL_1__913_ gnd vdd FILL
X_882_ XinH[0] Cin_1_bF$buf0 _197_ vdd gnd AND2X2
XFILL_1__1293_ gnd vdd FILL
XFILL_2_BUFX2_insert0 gnd vdd FILL
XFILL_2_BUFX2_insert1 gnd vdd FILL
XFILL_2_BUFX2_insert2 gnd vdd FILL
XFILL_2_BUFX2_insert3 gnd vdd FILL
XFILL_2_BUFX2_insert4 gnd vdd FILL
XFILL_2_BUFX2_insert5 gnd vdd FILL
XFILL_2_BUFX2_insert6 gnd vdd FILL
XFILL_2__1362_ gnd vdd FILL
XFILL_0__1188_ gnd vdd FILL
XFILL_0__935_ gnd vdd FILL
XFILL_3__1011_ gnd vdd FILL
X_938_ XinH[0] Cin_1_bF$buf1 _251_ _252_ vdd gnd NAND3X1
XFILL_1__1349_ gnd vdd FILL
X_1360_ _653_ _649_ LoadCtl_4_bF$buf3 _655_ vdd gnd OAI21X1
XFILL_2__1418_ gnd vdd FILL
XFILL_0__1400_ gnd vdd FILL
XFILL_2__1171_ gnd vdd FILL
X_1416_ Yin3[3] _695_ _702_ vdd gnd NAND2X1
XFILL_0__744_ gnd vdd FILL
X_747_ LoadCtl_0_bF$buf2 XinHL[0] _90_ vdd gnd NAND2X1
XFILL_1__1158_ gnd vdd FILL
XFILL_1__951_ gnd vdd FILL
XFILL_2__1227_ gnd vdd FILL
X_1225_ _95_ _418_ _533_ vdd gnd NOR2X1
XFILL_0__973_ gnd vdd FILL
X_976_ _264_ _266_ _288_ _289_ vdd gnd AOI21X1
XFILL_1__1387_ gnd vdd FILL
XFILL_1__760_ gnd vdd FILL
XFILL_2__1036_ gnd vdd FILL
X_1454_ _2_ clk_bF$buf1 XinH[2] vdd gnd DFFPOSX1
X_1034_ _340_ _335_ _344_ _346_ vdd gnd OAI21X1
XFILL_0__782_ gnd vdd FILL
XFILL_1__816_ gnd vdd FILL
X_785_ LoadCtl_4_bF$buf2 Yin1[2] _114_ vdd gnd NAND2X1
XFILL_1__1196_ gnd vdd FILL
XFILL_2__1265_ gnd vdd FILL
XFILL_0__838_ gnd vdd FILL
X_1263_ _567_ _566_ _568_ vdd gnd NAND2X1
XFILL_0__1303_ gnd vdd FILL
XFILL_2__832_ gnd vdd FILL
XFILL_2__1074_ gnd vdd FILL
X_1319_ rYin[7] mul[7] _617_ vdd gnd NAND2X1
X_1492_ _40_ clk_bF$buf0 y[6] vdd gnd DFFPOSX1
X_1072_ _364_ _376_ _383_ _384_ vdd gnd NAND3X1
XFILL_1__854_ gnd vdd FILL
XFILL_0__1532_ gnd vdd FILL
XFILL_0__1112_ gnd vdd FILL
X_1128_ _434_ _438_ _417_ _439_ vdd gnd NAND3X1
XFILL_0__876_ gnd vdd FILL
X_879_ _168_ _173_ _175_ _194_ vdd gnd AOI21X1
XFILL_0__1341_ gnd vdd FILL
XFILL_2__1359_ gnd vdd FILL
XFILL_2__870_ gnd vdd FILL
X_1357_ _650_ _651_ _652_ vdd gnd NOR2X1
XFILL_1__1099_ gnd vdd FILL
XFILL_1__892_ gnd vdd FILL
XFILL_2__926_ gnd vdd FILL
XFILL_0__1150_ gnd vdd FILL
XFILL_2__1168_ gnd vdd FILL
X_900_ XinHL[1] Cin[3] _215_ vdd gnd NAND2X1
XFILL_1__1311_ gnd vdd FILL
X_1166_ _468_ _475_ _472_ _476_ vdd gnd NAND3X1
XFILL_1__948_ gnd vdd FILL
XFILL_0__1206_ gnd vdd FILL
XFILL_2__735_ gnd vdd FILL
XFILL_2__1397_ gnd vdd FILL
XFILL_1__1120_ gnd vdd FILL
XCLKBUF1_insert7 clk clk_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert8 clk clk_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert9 clk clk_bF$buf5 vdd gnd CLKBUF1
X_1395_ _667_ _685_ _684_ _686_ vdd gnd AOI21X1
XFILL_1__757_ gnd vdd FILL
XFILL_0__1435_ gnd vdd FILL
XFILL_0__1015_ gnd vdd FILL
XFILL_2__964_ gnd vdd FILL
XFILL_0__779_ gnd vdd FILL
XFILL_1__986_ gnd vdd FILL
XFILL_0__1244_ gnd vdd FILL
XFILL_2__773_ gnd vdd FILL
XFILL_1__1405_ gnd vdd FILL
XFILL_1__795_ gnd vdd FILL
XFILL_2__829_ gnd vdd FILL
XFILL_0__1053_ gnd vdd FILL
XFILL_0__800_ gnd vdd FILL
X_803_ LoadCtl_4_bF$buf5 Yin3[0] _126_ vdd gnd NAND2X1
XFILL_1__1214_ gnd vdd FILL
X_1489_ _37_ clk_bF$buf0 y[3] vdd gnd DFFPOSX1
X_1069_ _95_ _180_ _310_ _381_ vdd gnd OAI21X1
XFILL_0__1529_ gnd vdd FILL
XFILL_0__1109_ gnd vdd FILL
XFILL_0__1282_ gnd vdd FILL
XFILL_1__1443_ gnd vdd FILL
XFILL_1__1023_ gnd vdd FILL
X_1298_ _598_ _597_ _599_ vdd gnd NAND2X1
XFILL_0__1338_ gnd vdd FILL
XFILL_2__867_ gnd vdd FILL
XFILL_0__1091_ gnd vdd FILL
X_1510_ _58_ clk_bF$buf7 Yin1[0] vdd gnd DFFPOSX1
X_841_ _157_ _156_ LoadCtl_4_bF$buf6 _158_ vdd gnd OAI21X1
XFILL_1__1252_ gnd vdd FILL
XFILL_1__889_ gnd vdd FILL
XFILL_2__1321_ gnd vdd FILL
XFILL86250x74250 gnd vdd FILL
XFILL_0__1147_ gnd vdd FILL
XFILL_1__1308_ gnd vdd FILL
XFILL_1__1061_ gnd vdd FILL
XFILL_2__1130_ gnd vdd FILL
XFILL85950x19650 gnd vdd FILL
XFILL_0__1376_ gnd vdd FILL
XFILL_1__1117_ gnd vdd FILL
XFILL_1__910_ gnd vdd FILL
XFILL_1__1290_ gnd vdd FILL
XFILL_0__1185_ gnd vdd FILL
XFILL_0__932_ gnd vdd FILL
X_935_ XinHL[3] Cin[2] _249_ vdd gnd NAND2X1
XFILL_1__1346_ gnd vdd FILL
XFILL_2__1415_ gnd vdd FILL
X_1413_ Yin3[2] _695_ _700_ vdd gnd NAND2X1
XFILL_0__741_ gnd vdd FILL
X_744_ LoadCtl_0_bF$buf1 y[3] _75_ y[7] _88_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1155_ gnd vdd FILL
XFILL_2__1224_ gnd vdd FILL
XFILL_2__999_ gnd vdd FILL
X_1222_ _505_ _530_ vdd gnd INVX1
XFILL_0__970_ gnd vdd FILL
X_973_ _215_ _285_ _245_ _286_ vdd gnd OAI21X1
XFILL_1__1384_ gnd vdd FILL
XFILL_2__1033_ gnd vdd FILL
XFILL_0__1279_ gnd vdd FILL
XFILL_3__1102_ gnd vdd FILL
X_1451_ LoadCtl_0_bF$buf4 _179_ _720_ _69_ vdd gnd OAI21X1
X_1031_ _338_ _282_ _343_ _344_ vdd gnd NAND3X1
XFILL_1__813_ gnd vdd FILL
X_782_ LoadCtl_4_bF$buf1 Yin1[1] _112_ vdd gnd NAND2X1
XFILL_1__1193_ gnd vdd FILL
XFILL_2__1262_ gnd vdd FILL
XFILL_0__1088_ gnd vdd FILL
X_1507_ _55_ clk_bF$buf7 Yin2[1] vdd gnd DFFPOSX1
XFILL_0__835_ gnd vdd FILL
X_838_ _140_ _154_ _145_ _155_ vdd gnd NAND3X1
XFILL_1__1249_ gnd vdd FILL
X_1260_ _101_ _133_ _565_ vdd gnd NOR2X1
XFILL_0__1300_ gnd vdd FILL
XFILL_2__1318_ gnd vdd FILL
XFILL_2__1071_ gnd vdd FILL
X_1316_ _612_ _614_ _609_ _40_ vdd gnd OAI21X1
XFILL_3__788_ gnd vdd FILL
XFILL_3__1140_ gnd vdd FILL
XFILL_1__1058_ gnd vdd FILL
XFILL_1__851_ gnd vdd FILL
XFILL_2__1127_ gnd vdd FILL
X_1125_ _368_ _382_ _432_ _436_ vdd gnd OAI21X1
XFILL_0__873_ gnd vdd FILL
XFILL_1__907_ gnd vdd FILL
X_876_ _161_ LoadCtl_4_bF$buf6 _189_ _191_ _23_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1287_ gnd vdd FILL
XFILL_2__1356_ gnd vdd FILL
XFILL_0__929_ gnd vdd FILL
X_1354_ _630_ _647_ _648_ _649_ vdd gnd AOI21X1
XFILL_1__1096_ gnd vdd FILL
XFILL_2__923_ gnd vdd FILL
XFILL_2__1165_ gnd vdd FILL
XFILL_0__738_ gnd vdd FILL
X_1163_ _468_ _472_ _473_ vdd gnd NAND2X1
XFILL_1__945_ gnd vdd FILL
XFILL_0__1203_ gnd vdd FILL
XFILL_2__732_ gnd vdd FILL
XFILL_2__1394_ gnd vdd FILL
XFILL86850x43050 gnd vdd FILL
X_1219_ _494_ LoadCtl_4_bF$buf0 _527_ _30_ vdd gnd OAI21X1
XFILL_0__967_ gnd vdd FILL
X_1392_ _679_ _669_ _678_ _683_ vdd gnd AOI21X1
XFILL_1__754_ gnd vdd FILL
XFILL_0__1432_ gnd vdd FILL
XFILL_0__1012_ gnd vdd FILL
XFILL_2__961_ gnd vdd FILL
X_1448_ LoadCtl_0_bF$buf3 Xin[2] _719_ vdd gnd NAND2X1
X_1028_ _333_ _332_ _286_ _341_ vdd gnd AOI21X1
XFILL_0__776_ gnd vdd FILL
X_779_ LoadCtl_4_bF$buf1 Yin1[0] _110_ vdd gnd NAND2X1
XFILL_1__983_ gnd vdd FILL

.ends
.end
