*SPICE netlist created from verilog structural netlist module array16 by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp
* NGSPICE file created from khu_etri050_stdcells.ext - technology: scmos

.subckt AOI22X1 A B C D Y vdd gnd
M1000 gnd C a_56_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=1.8p ps=6.6u
M1001 vdd A a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1002 Y D a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1003 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1004 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=1.8p ps=6.6u
M1005 a_7_146# C Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1006 a_7_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1007 a_56_14# D Y gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.200001p ps=8.400001u
.ends

.subckt CLKBUF3 A Y vdd gnd
M1000 a_145_14# a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1003 a_145_14# a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1004 gnd a_145_14# a_185_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1006 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1007 a_265_14# a_225_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1008 a_265_14# a_225_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1009 a_225_14# a_185_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1010 gnd a_265_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1011 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1012 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1013 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1014 Y a_265_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1015 gnd a_105_14# a_145_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1016 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1017 vdd a_105_14# a_145_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1018 a_225_14# a_185_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1019 gnd a_225_14# a_265_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1020 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1021 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1022 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1023 vdd a_185_14# a_225_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1024 vdd a_225_14# a_265_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1025 vdd a_145_14# a_185_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1026 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1027 a_185_14# a_145_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1028 gnd a_185_14# a_225_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1029 Y a_265_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1030 vdd a_265_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1031 a_185_14# a_145_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt INVX8 A Y vdd gnd
M1000 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1002 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1003 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1004 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1006 gnd A Y gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1007 vdd A Y vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt NOR3X1 A B C Y vdd gnd
M1000 gnd B Y gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1001 a_7_166# A vdd vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=10.8p ps=11.400001u
M1002 a_7_166# B a_65_166# vdd pfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=10.8p ps=11.400001u
M1003 a_65_166# C Y vdd pfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=10.8p ps=11.400001u
M1004 Y C gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1005 a_65_166# B a_7_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=10.8p ps=11.400001u
M1006 vdd A a_7_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=18.900002p ps=22.2u
M1007 Y C a_65_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=18.900002p ps=22.2u
M1008 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=7.200001p ps=10.8u
.ends

.subckt CLKBUF1 A Y vdd gnd
M1000 Y a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1003 Y a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1004 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1005 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1006 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1007 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1008 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1009 gnd a_105_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1010 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1011 vdd a_105_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1012 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1013 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1014 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1015 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
.ends

.subckt MUX2X1 A B S Y vdd gnd
M1000 a_75_22# S Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1001 gnd S a_7_22# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=8.400001u as=6.300001p ps=10.200001u
M1002 Y S a_45_138# vdd pfet w=12u l=0.6u
+  ad=14.490002p pd=15.6u as=5.4p ps=12.900001u
M1003 gnd A a_75_22# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
M1004 vdd A a_75_146# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1005 a_45_138# B vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=11.700001p ps=14.400001u
M1006 a_45_22# B gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=6.300001p ps=8.400001u
M1007 Y a_7_22# a_45_22# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1008 a_75_146# a_7_22# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.490002p ps=15.6u
M1009 vdd S a_7_22# vdd pfet w=6u l=0.6u
+  ad=11.700001p pd=14.400001u as=12.600001p ps=16.2u
.ends

.subckt NAND3X1 A B C Y vdd gnd
M1000 Y C a_34_14# gnd nfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=2.7p ps=9.6u
M1001 a_26_14# A gnd gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=18.900002p ps=22.2u
M1002 vdd B Y vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 a_34_14# B a_26_14# gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=2.7p ps=9.6u
M1004 Y C vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt XOR2X1 A B Y vdd gnd
M1000 a_74_166# a_6_14# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
M1001 a_28_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1002 a_74_14# A Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1003 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1004 vdd A a_6_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1005 gnd B a_74_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1006 a_28_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1007 Y A a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1008 a_44_14# a_28_58# gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1009 vdd B a_74_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1010 Y a_6_14# a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1011 a_44_166# a_28_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
.ends

.subckt BUFX4 A Y vdd gnd
M1000 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=15.300001p ps=14.700001u
M1001 gnd A a_7_14# gnd nfet w=4.5u l=0.6u
+  ad=7.650001p pd=8.700001u as=9.450001p ps=13.200001u
M1002 vdd a_7_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1003 vdd A a_7_14# vdd pfet w=9u l=0.6u
+  ad=15.300001p pd=14.700001u as=18.900002p ps=22.2u
M1004 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.650001p ps=8.700001u
M1005 gnd a_7_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
.ends

.subckt INVX4 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1002 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1003 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
.ends

.subckt OAI21X1 A B C Y vdd gnd
M1000 Y C a_7_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1001 a_30_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.200003p ps=28.200003u
M1002 vdd C Y vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=14.400002p ps=14.700001u
M1003 gnd A a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1004 Y B a_30_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.700001u as=3.6p ps=12.6u
M1005 a_7_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
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

.subckt DFFNEGX1 D CLK Q vdd gnd
M1000 a_163_14# a_7_14# a_153_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.35p ps=3.9u
M1001 a_77_186# CLK a_57_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.200001p ps=8.400001u
M1002 a_77_14# a_7_14# a_57_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1003 vdd a_83_10# a_77_186# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1004 vdd CLK a_7_14# vdd pfet w=12u l=0.6u
+  ad=12.150001p pd=14.400001u as=25.200003p ps=28.200003u
M1005 Q a_163_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=11.025002p ps=14.400001u
M1006 a_83_10# a_57_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=4.05p ps=5.7u
M1007 gnd CLK a_7_14# gnd nfet w=6u l=0.6u
+  ad=6.075p pd=8.400001u as=12.600001p ps=16.2u
M1008 gnd a_83_10# a_77_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1009 vdd Q a_183_206# vdd pfet w=3u l=0.6u
+  ad=11.025002p pd=14.400001u as=1.35p ps=3.9u
M1010 a_154_186# a_83_10# vdd vdd pfet w=6u l=0.6u
+  ad=2.25p pd=6.75u as=12.600001p ps=16.2u
M1011 a_183_14# CLK a_163_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1012 a_45_186# D vdd vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=12.150001p ps=14.400001u
M1013 a_83_10# a_57_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1014 a_57_14# a_7_14# a_45_186# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1015 gnd Q a_183_14# gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.400001u as=1.35p ps=3.9u
M1016 a_183_206# a_7_14# a_163_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.400001u
M1017 a_45_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.075p ps=8.400001u
M1018 a_57_14# CLK a_45_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.8p ps=4.2u
M1019 a_153_14# a_83_10# gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.300001p ps=10.200001u
M1020 Q a_163_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.075p ps=8.400001u
M1021 a_163_14# CLK a_154_186# vdd pfet w=6u l=0.6u
+  ad=5.85p pd=8.400001u as=2.25p ps=6.75u
.ends

.subckt AOI21X1 A B C Y vdd gnd
M1000 vdd A a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 Y C a_7_146# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1002 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1003 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.700001u as=1.8p ps=6.6u
M1004 a_7_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1005 gnd C Y gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=7.200001p ps=8.700001u
.ends

.subckt BUFX2 A Y vdd gnd
M1000 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.700001u
M1001 gnd A a_7_14# gnd nfet w=3u l=0.6u
+  ad=7.200001p pd=8.700001u as=6.300001p ps=10.200001u
M1002 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.700001u
M1003 vdd A a_7_14# vdd pfet w=6u l=0.6u
+  ad=14.400002p pd=14.700001u as=12.600001p ps=16.2u
.ends

.subckt INVX2 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=25.200003p ps=28.200003u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
.ends

.subckt FAX1 A B C YS YC vdd gnd
M1000 a_64_14# C a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 YS a_174_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=14.130001p ps=16.800001u
M1002 a_206_14# B a_196_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=2.7p ps=6.9u
M1003 gnd a_64_14# YC gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1004 gnd A a_206_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.400001u as=2.7p ps=6.9u
M1005 vdd A a_206_150# vdd pfet w=14.400001u l=0.6u
+  ad=14.130001p pd=16.800001u as=6.48p ps=15.3u
M1006 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1007 a_114_14# C gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1008 a_64_14# C a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1009 vdd A a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1010 a_84_14# B a_64_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1011 a_174_14# a_64_14# a_114_166# vdd pfet w=10.8u l=0.6u
+  ad=17.820002p pd=17.1u as=12.960001p ps=13.200001u
M1012 vdd B a_114_166# vdd pfet w=10.8u l=0.6u
+  ad=12.960001p pd=13.200001u as=13.860001p ps=14.400001u
M1013 a_196_150# C a_174_14# vdd pfet w=14.400001u l=0.6u
+  ad=6.48p pd=15.3u as=17.820002p ps=17.1u
M1014 a_206_150# B a_196_150# vdd pfet w=14.400001u l=0.6u
+  ad=6.48p pd=15.3u as=6.48p ps=15.3u
M1015 gnd A a_84_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1016 vdd A a_84_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1017 a_114_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1018 YS a_174_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=5.85p ps=8.400001u
M1019 a_174_14# a_64_14# a_114_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=7.200001p ps=8.400001u
M1020 a_6_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1021 YC a_64_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1022 a_84_166# B a_64_14# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
M1023 a_6_166# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1024 a_114_166# A vdd vdd pfet w=12u l=0.6u
+  ad=13.860001p pd=14.400001u as=14.400002p ps=14.400001u
M1025 a_114_166# C vdd vdd pfet w=10.8u l=0.6u
+  ad=12.960001p pd=13.200001u as=12.960001p ps=13.200001u
M1026 gnd B a_114_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1027 a_196_14# C a_174_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=8.1p ps=8.700001u
.ends

.subckt NOR2X1 A B Y vdd gnd
M1000 a_25_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.200003p ps=28.200003u
M1001 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1002 Y B a_25_146# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=3.6p ps=12.6u
M1003 gnd B Y gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
.ends

.subckt AND2X1 A B Y vdd gnd
M1000 gnd B a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.700001u as=1.8p ps=6.6u
M1001 a_25_14# A a_7_14# gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1002 vdd B a_7_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 Y a_7_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=7.200001p ps=8.700001u
M1004 Y a_7_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 a_7_14# A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt DFFPOSX1 D CLK Q vdd gnd
M1000 vdd Q a_189_206# vdd pfet w=3u l=0.6u
+  ad=10.125001p pd=14.700001u as=0.9p ps=3.6u
M1001 a_83_186# a_11_14# a_59_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.200001p ps=8.400001u
M1002 a_87_10# a_59_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=4.05p ps=5.7u
M1003 gnd CLK a_11_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.400001u as=12.600001p ps=16.2u
M1004 gnd a_87_10# a_81_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1005 a_159_14# a_87_10# gnd gnd nfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.300001p ps=10.200001u
M1006 a_49_186# D vdd vdd pfet w=6u l=0.6u
+  ad=4.5p pd=7.5u as=11.250001p ps=14.400001u
M1007 vdd a_87_10# a_83_186# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1008 Q a_167_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.975p ps=8.700001u
M1009 Q a_167_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=10.125001p ps=14.700001u
M1010 a_167_14# CLK a_159_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=0.9p ps=3.6u
M1011 a_49_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.400001u
M1012 a_87_10# a_59_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1013 a_59_14# CLK a_49_186# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=4.5p ps=7.5u
M1014 a_161_186# a_87_10# vdd vdd pfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1015 a_189_206# CLK a_167_14# vdd pfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.075p ps=8.400001u
M1016 a_59_14# a_11_14# a_49_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1017 a_187_14# a_11_14# a_167_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1018 vdd CLK a_11_14# vdd pfet w=12u l=0.6u
+  ad=11.250001p pd=14.400001u as=25.200003p ps=28.200003u
M1019 gnd Q a_187_14# gnd nfet w=3u l=0.6u
+  ad=6.975p pd=8.700001u as=1.35p ps=3.9u
M1020 a_167_14# a_11_14# a_161_186# vdd pfet w=6u l=0.6u
+  ad=6.075p pd=8.400001u as=1.8p ps=6.6u
M1021 a_81_14# CLK a_59_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.05p ps=5.7u
.ends

.subckt NAND2X1 A B Y vdd gnd
M1000 a_27_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1001 Y B a_27_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
M1002 vdd B Y vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1003 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt OR2X1 A B Y vdd gnd
M1000 Y a_7_146# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1001 a_25_146# A a_7_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1002 a_7_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1003 Y a_7_146# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=14.400002p ps=14.700001u
M1004 gnd B a_7_146# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1005 vdd B a_25_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.700001u as=5.4p ps=12.900001u
.ends

.subckt CLKBUF2 A Y vdd gnd
M1000 a_145_14# a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1003 a_145_14# a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1004 gnd a_145_14# a_185_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1006 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1007 Y a_185_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1008 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1009 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1010 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1011 gnd a_105_14# a_145_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1012 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1013 vdd a_105_14# a_145_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1014 Y a_185_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1015 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1016 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1017 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1018 vdd a_185_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1019 vdd a_145_14# a_185_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1020 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1021 a_185_14# a_145_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1022 gnd a_185_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1023 a_185_14# a_145_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt LATCH D CLK Q vdd gnd
M1000 a_48_206# D vdd vdd pfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=14.400002p ps=14.700001u
M1001 a_86_226# CLK a_58_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=9.225001p ps=9.6u
M1002 gnd CLK a_8_14# gnd nfet w=6u l=0.6u
+  ad=6.300001p pd=8.400001u as=12.600001p ps=16.2u
M1003 a_86_14# a_8_14# a_58_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.4p ps=6.6u
M1004 Q a_58_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.700001u
M1005 gnd Q a_86_14# gnd nfet w=3u l=0.6u
+  ad=7.200001p pd=8.700001u as=1.35p ps=3.9u
M1006 a_46_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.300001p ps=8.400001u
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

.subckt HAX1 A B YS YC vdd gnd
M1000 a_6_206# B a_24_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=1.8p ps=6.6u
M1001 vdd a_6_206# YC vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1002 gnd a_6_206# YC gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.400001u as=6.210001p ps=10.200001u
M1003 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1004 a_6_206# B vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 a_128_166# B a_108_206# vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=13.500002p ps=14.400001u
M1006 a_108_206# a_6_206# vdd vdd pfet w=6u l=0.6u
+  ad=13.500002p pd=14.400001u as=7.200001p ps=8.400001u
M1007 YS a_108_206# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1008 a_96_14# a_6_206# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=6.075p ps=8.400001u
M1009 a_108_206# B a_96_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1010 vdd A a_128_166# vdd pfet w=12u l=0.6u
+  ad=11.250001p pd=14.400001u as=3.6p ps=12.6u
M1011 YS a_108_206# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=11.250001p ps=14.400001u
M1012 a_96_14# A a_108_206# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1013 vdd A a_6_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt DFFSR R S D CLK Q vdd gnd
M1000 a_146_14# a_122_10# a_60_10# vdd pfet w=3u l=0.6u
+  ad=6.300001p pd=8.400001u as=3.6p ps=5.4u
M1001 a_64_14# a_60_10# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9p ps=9u
M1002 vdd S a_301_14# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1003 a_146_14# a_115_95# a_60_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1004 a_36_10# a_60_10# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 a_391_14# a_334_14# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9.450001p ps=9.150001u
M1006 a_8_14# R vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1007 a_36_10# S a_64_14# gnd nfet w=6u l=0.6u
+  ad=14.400002p pd=16.800001u as=3.6p ps=7.2u
M1008 gnd a_334_14# Q gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1009 a_281_14# a_122_10# a_36_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1010 a_28_14# R a_8_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.400002p ps=16.800001u
M1011 a_301_14# S a_391_14# gnd nfet w=6u l=0.6u
+  ad=14.400002p pd=16.800001u as=3.6p ps=7.2u
M1012 gnd a_36_10# a_28_14# gnd nfet w=6u l=0.6u
+  ad=9p pd=9u as=3.6p ps=7.2u
M1013 gnd a_115_95# a_122_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1014 a_301_14# a_334_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1015 vdd D a_146_14# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.300001p ps=8.400001u
M1016 a_334_14# a_281_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1017 vdd a_115_95# a_122_10# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1018 a_301_14# a_122_10# a_281_14# vdd pfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1019 gnd D a_146_14# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1020 a_60_10# a_115_95# a_8_14# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1021 a_301_14# a_115_95# a_281_14# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1022 vdd S a_36_10# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1023 vdd a_36_10# a_8_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1024 a_115_95# CLK gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1025 a_60_10# a_122_10# a_8_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1026 a_354_14# a_281_14# a_334_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.400002p ps=16.800001u
M1027 vdd R a_334_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1028 a_115_95# CLK vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1029 a_281_14# a_115_95# a_36_10# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1030 gnd R a_354_14# gnd nfet w=6u l=0.6u
+  ad=9.450001p pd=9.150001u as=3.6p ps=7.2u
M1031 vdd a_334_14# Q vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
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
M1000 a_74_166# A Y vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=14.400002p ps=14.400001u
M1001 a_29_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=16.2p ps=14.700001u
M1002 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1003 vdd A a_6_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1004 Y A a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=1.8p ps=6.6u
M1005 a_29_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=8.1p ps=8.700001u
M1006 vdd B a_74_166# vdd pfet w=12u l=0.6u
+  ad=16.2p pd=14.700001u as=3.6p ps=12.6u
M1007 Y a_6_14# a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1008 a_44_14# a_29_58# gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.200001p ps=8.400001u
M1009 a_72_14# a_6_14# Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1010 a_44_166# a_29_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
M1011 gnd B a_72_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=2.7p ps=6.9u
.ends

.subckt AND2X2 A B Y vdd gnd
M1000 a_25_14# A a_7_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1001 gnd B a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1002 vdd B a_7_14# vdd pfet w=6u l=0.6u
+  ad=14.400002p pd=14.700001u as=8.1p ps=8.700001u
M1003 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1004 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.700001u
M1005 a_7_14# A vdd vdd pfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=12.600001p ps=16.2u
.ends

.subckt INVX1 A Y vdd gnd
M1000 Y A gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1001 Y A vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
.ends

.subckt OAI22X1 A B C D Y vdd gnd
M1000 Y D a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 a_25_146# A vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1002 a_65_146# D Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=23.400002p ps=15.900001u
M1003 gnd A a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1004 a_7_14# C Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 a_7_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1006 Y B a_25_146# vdd pfet w=12u l=0.6u
+  ad=23.400002p pd=15.900001u as=5.4p ps=12.900001u
M1007 vdd C a_65_146# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
.ends

.subckt OR2X2 A B Y vdd gnd
M1000 Y a_7_146# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.300001p ps=8.400001u
M1001 a_25_146# A a_7_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1002 a_7_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1003 Y a_7_146# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1004 gnd B a_7_146# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=8.400001u as=3.6p ps=5.4u
M1005 vdd B a_25_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
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
XTBUFX2_0 TBUFX2_0/A TBUFX2_0/EN TBUFX2_0/Y vdd gnd TBUFX2
XDFFNEGX1_0 DFFNEGX1_0/D DFFNEGX1_0/CLK DFFNEGX1_0/Q vdd gnd DFFNEGX1
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
XHAX1_0 HAX1_0/A HAX1_0/B HAX1_0/YS HAX1_0/YC vdd gnd HAX1
XDFFSR_0 DFFSR_0/R DFFSR_0/S DFFSR_0/D DFFSR_0/CLK DFFSR_0/Q vdd gnd DFFSR
XTBUFX1_0 TBUFX1_0/A TBUFX1_0/EN TBUFX1_0/Y vdd gnd TBUFX1
XXNOR2X1_0 XNOR2X1_0/A XNOR2X1_0/B XNOR2X1_0/Y vdd gnd XNOR2X1
XAND2X2_0 AND2X2_0/A AND2X2_0/B AND2X2_0/Y vdd gnd AND2X2
XINVX1_0 INVX1_0/A INVX1_0/Y vdd gnd INVX1
XOAI22X1_0 OAI22X1_0/A OAI22X1_0/B OAI22X1_0/C OAI22X1_0/D OAI22X1_0/Y vdd gnd OAI22X1
XOR2X2_0 OR2X2_0/A OR2X2_0/B OR2X2_0/Y vdd gnd OR2X2
.ends

** End of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp

.subckt array16 vdd gnd a[0] a[1] a[2] a[3] a[4]
+ a[5] a[6] a[7] a[8] a[9] a[10] a[11] a[12]
+ a[13] a[14] a[15] b[0] b[1] b[2] b[3] b[4]
+ b[5] b[6] b[7] b[8] b[9] b[10] b[11] b[12]
+ b[13] b[14] b[15] c[0] c[1] c[2] c[3] c[4]
+ c[5] c[6] c[7] c[8] c[9] c[10] c[11] c[12]
+ c[13] c[14] c[15] c[16] c[17] c[18] c[19] c[20]
+ c[21] c[22] c[23] c[24] c[25] c[26] c[27] c[28]
+ c[29] c[30] c[31] 

X_3054_ q1[0] q0[8] _415_ vdd gnd NOR2X1
X_3055_ q1[0] q0[8] _416_ vdd gnd NAND2X1
X_3056_ _416_ _417_ vdd gnd INVX1
X_3057_ _417_ _415_ _418_ vdd gnd OR2X2
X_3058_ _418_ _419_ vdd gnd INVX1
X_3059_ _419_ q2[0] _420_ vdd gnd AND2X2
X_3060_ q2[0] _419_ _421_ vdd gnd NOR2X1
X_3061_ _421_ _420_ _3053_[8] vdd gnd NOR2X1
X_3062_ \z2.z1.z1.z1.s\ q0[9] _422_ vdd gnd NAND2X1
X_3063_ \z2.z1.z1.z1.s\ q0[9] _423_ vdd gnd OR2X2
X_3064_ _422_ _423_ _424_ vdd gnd NAND2X1
X_3065_ _416_ _424_ _425_ vdd gnd NOR2X1
X_3066_ _422_ _423_ _417_ _426_ vdd gnd AOI21X1
X_3067_ _426_ _425_ _427_ vdd gnd NOR2X1
X_3068_ \z3.z1.z1.z1.s\ _427_ _428_ vdd gnd NAND2X1
X_3069_ _427_ \z3.z1.z1.z1.s\ _429_ vdd gnd OR2X2
X_3070_ _420_ _428_ _429_ _430_ vdd gnd NAND3X1
X_3071_ _430_ _431_ vdd gnd INVX1
X_3072_ _428_ _432_ vdd gnd INVX1
X_3073_ \z2.z1.z1.z1.s\ q0[9] _0_ vdd gnd NOR2X1
X_3074_ _416_ _0_ _422_ _1_ vdd gnd OAI21X1
X_3075_ q1[2] q0[10] _2_ vdd gnd NOR2X1
X_3076_ q1[2] q0[10] _3_ vdd gnd AND2X2
X_3077_ _2_ _3_ _4_ vdd gnd NOR2X1
X_3078_ _1_ _4_ _5_ vdd gnd NAND2X1
X_3079_ _4_ _1_ _6_ vdd gnd OR2X2
X_3080_ q2[2] _5_ _6_ _7_ vdd gnd NAND3X1
X_3081_ q2[2] _8_ vdd gnd INVX1
X_3082_ _5_ _6_ _9_ vdd gnd NAND2X1
X_3083_ _8_ _9_ _10_ vdd gnd NAND2X1
X_3084_ _7_ _10_ _432_ _11_ vdd gnd AOI21X1
X_3085_ _7_ _10_ _432_ _12_ vdd gnd NAND3X1
X_3086_ _12_ _13_ vdd gnd INVX1
X_3087_ _11_ _13_ _14_ vdd gnd NOR2X1
X_3088_ _431_ _14_ _15_ vdd gnd NAND2X1
X_3089_ _15_ _16_ vdd gnd INVX1
X_3090_ _431_ _14_ _17_ vdd gnd NOR2X1
X_3091_ _17_ _16_ _3053_[10] vdd gnd NOR2X1
X_3092_ q1[2] q0[10] _18_ vdd gnd NAND2X1
X_3093_ q1[3] _19_ vdd gnd INVX1
X_3094_ q0[11] _19_ _20_ vdd gnd NAND2X1
X_3095_ q0[11] _21_ vdd gnd INVX1
X_3096_ q1[3] _21_ _22_ vdd gnd NAND2X1
X_3097_ _20_ _22_ _23_ vdd gnd NAND2X1
X_3098_ _18_ _23_ _5_ _24_ vdd gnd NAND3X1
X_3099_ _18_ _5_ _25_ vdd gnd NAND2X1
X_3100_ _20_ _22_ _25_ _26_ vdd gnd NAND3X1
X_3101_ _24_ _26_ _27_ vdd gnd NAND2X1
X_3102_ q2[3] _27_ _28_ vdd gnd NAND2X1
X_3103_ q2[3] _29_ vdd gnd INVX1
X_3104_ _29_ _24_ _26_ _30_ vdd gnd NAND3X1
X_3105_ _30_ _28_ _31_ vdd gnd NAND2X1
X_3106_ _8_ _9_ _31_ _32_ vdd gnd OAI21X1
X_3107_ _7_ _33_ vdd gnd INVX1
X_3108_ _33_ _30_ _28_ _34_ vdd gnd NAND3X1
X_3109_ _34_ _32_ _35_ vdd gnd NAND2X1
X_3110_ _13_ _16_ _35_ _36_ vdd gnd OAI21X1
X_3111_ _430_ _11_ _12_ _37_ vdd gnd OAI21X1
X_3112_ _35_ _37_ _38_ vdd gnd OR2X2
X_3113_ _38_ _36_ _3053_[11] vdd gnd NAND2X1
X_3114_ _34_ _39_ vdd gnd INVX1
X_3115_ _37_ _32_ _39_ _40_ vdd gnd AOI21X1
X_3116_ _28_ _41_ vdd gnd INVX1
X_3117_ q2[4] _42_ vdd gnd INVX1
X_3118_ _1_ _23_ _4_ _43_ vdd gnd NAND3X1
X_3119_ _19_ _21_ _18_ _44_ vdd gnd AOI21X1
X_3120_ q1[3] q0[11] _44_ _45_ vdd gnd AOI21X1
X_3121_ q1[4] _46_ vdd gnd INVX1
X_3122_ q0[12] _47_ vdd gnd INVX1
X_3123_ _46_ _47_ _48_ vdd gnd NAND2X1
X_3124_ q1[4] q0[12] _49_ vdd gnd NAND2X1
X_3125_ _49_ _48_ _50_ vdd gnd NAND2X1
X_3126_ _43_ _45_ _50_ _51_ vdd gnd AOI21X1
X_3127_ _51_ _52_ vdd gnd INVX1
X_3128_ _43_ _45_ _53_ vdd gnd AND2X2
X_3129_ q1[4] q0[12] _54_ vdd gnd NOR2X1
X_3130_ q1[4] q0[12] _55_ vdd gnd AND2X2
X_3131_ _54_ _55_ _53_ _56_ vdd gnd OAI21X1
X_3132_ _52_ _56_ _57_ vdd gnd NAND2X1
X_3133_ _57_ _42_ _58_ vdd gnd OR2X2
X_3134_ _56_ _52_ q2[4] _59_ vdd gnd AOI21X1
X_3135_ _59_ _60_ vdd gnd INVX1
X_3136_ _41_ _60_ _58_ _61_ vdd gnd NAND3X1
X_3137_ _42_ _57_ _62_ vdd gnd NOR2X1
X_3138_ _59_ _62_ _28_ _63_ vdd gnd OAI21X1
X_3139_ _63_ _61_ _64_ vdd gnd NAND2X1
X_3140_ _64_ _40_ _65_ vdd gnd NOR2X1
X_3141_ _40_ _64_ _66_ vdd gnd AND2X2
X_3142_ _65_ _66_ _3053_[12] vdd gnd NOR2X1
X_3143_ _64_ _40_ _61_ _67_ vdd gnd OAI21X1
X_3144_ q2[5] _68_ vdd gnd INVX1
X_3145_ q1[5] q0[13] _69_ vdd gnd NAND2X1
X_3146_ q1[5] _70_ vdd gnd INVX1
X_3147_ q0[13] _71_ vdd gnd INVX1
X_3148_ _70_ _71_ _72_ vdd gnd NAND2X1
X_3149_ _69_ _72_ _73_ vdd gnd NAND2X1
X_3150_ _46_ _47_ _73_ _74_ vdd gnd OAI21X1
X_3151_ q0[13] _70_ _75_ vdd gnd NAND2X1
X_3152_ q1[5] _71_ _76_ vdd gnd NAND2X1
X_3153_ _75_ _76_ _77_ vdd gnd NAND2X1
X_3154_ _55_ _51_ _77_ _78_ vdd gnd OAI21X1
X_3155_ _51_ _74_ _78_ _79_ vdd gnd OAI21X1
X_3156_ _68_ _79_ _80_ vdd gnd NOR2X1
X_3157_ _79_ _68_ _81_ vdd gnd AND2X2
X_3158_ _80_ _81_ _58_ _82_ vdd gnd OAI21X1
X_3159_ _79_ _68_ _83_ vdd gnd OR2X2
X_3160_ _68_ _79_ _84_ vdd gnd NAND2X1
X_3161_ _62_ _84_ _83_ _85_ vdd gnd NAND3X1
X_3162_ _82_ _85_ _86_ vdd gnd NAND2X1
X_3163_ _86_ _67_ _87_ vdd gnd NAND2X1
X_3164_ _67_ _86_ _88_ vdd gnd OR2X2
X_3165_ _87_ _88_ _3053_[13] vdd gnd NAND2X1
X_3166_ _64_ _40_ _86_ _89_ vdd gnd NOR3X1
X_3167_ _61_ _86_ _85_ _90_ vdd gnd OAI21X1
X_3168_ _54_ _55_ _91_ vdd gnd NOR2X1
X_3169_ _77_ _91_ _92_ vdd gnd NAND2X1
X_3170_ _43_ _45_ _92_ _93_ vdd gnd AOI21X1
X_3171_ q1[5] q0[13] _94_ vdd gnd NOR2X1
X_3172_ _49_ _94_ _69_ _95_ vdd gnd OAI21X1
X_3173_ q1[6] q0[14] _96_ vdd gnd NOR2X1
X_3174_ q1[6] q0[14] _97_ vdd gnd AND2X2
X_3175_ _96_ _97_ _98_ vdd gnd NOR2X1
X_3176_ _95_ _93_ _98_ _99_ vdd gnd OAI21X1
X_3177_ q1[6] _100_ vdd gnd INVX1
X_3178_ q0[14] _101_ vdd gnd INVX1
X_3179_ _100_ _101_ _102_ vdd gnd NAND2X1
X_3180_ q1[6] q0[14] _103_ vdd gnd NAND2X1
X_3181_ _103_ _102_ _104_ vdd gnd NAND2X1
X_3182_ _69_ _104_ _78_ _105_ vdd gnd NAND3X1
X_3183_ q2[6] _99_ _105_ _106_ vdd gnd NAND3X1
X_3184_ q2[6] _107_ vdd gnd INVX1
X_3185_ _99_ _105_ _108_ vdd gnd NAND2X1
X_3186_ _107_ _108_ _109_ vdd gnd NAND2X1
X_3187_ _106_ _109_ _110_ vdd gnd NAND2X1
X_3188_ _110_ _83_ _111_ vdd gnd OR2X2
X_3189_ _68_ _79_ _110_ _112_ vdd gnd OAI21X1
X_3190_ _111_ _112_ _113_ vdd gnd AND2X2
X_3191_ _90_ _89_ _113_ _114_ vdd gnd OAI21X1
X_3192_ _85_ _115_ vdd gnd INVX1
X_3193_ _67_ _82_ _115_ _116_ vdd gnd AOI21X1
X_3194_ _112_ _111_ _117_ vdd gnd NAND2X1
X_3195_ _117_ _116_ _118_ vdd gnd NAND2X1
X_3196_ _118_ _114_ _3053_[14] vdd gnd AND2X2
X_3197_ _117_ _116_ _111_ _119_ vdd gnd OAI21X1
X_3198_ _100_ _101_ _99_ _120_ vdd gnd OAI21X1
X_3199_ q1[7] _121_ vdd gnd INVX1
X_3200_ q0[15] _121_ _122_ vdd gnd NAND2X1
X_3201_ q0[15] _123_ vdd gnd INVX1
X_3202_ q1[7] _123_ _124_ vdd gnd NAND2X1
X_3203_ _122_ _124_ _125_ vdd gnd NAND2X1
X_3204_ _125_ _120_ _126_ vdd gnd NAND2X1
X_3205_ _120_ _125_ _127_ vdd gnd OR2X2
X_3206_ q2[7] _126_ _127_ _128_ vdd gnd NAND3X1
X_3207_ q2[7] _129_ vdd gnd INVX1
X_3208_ q1[7] q0[15] _130_ vdd gnd NAND2X1
X_3209_ _121_ _123_ _131_ vdd gnd NAND2X1
X_3210_ _130_ _131_ _132_ vdd gnd NAND2X1
X_3211_ _132_ _120_ _133_ vdd gnd NAND2X1
X_3212_ _120_ _132_ _134_ vdd gnd OR2X2
X_3213_ _129_ _133_ _134_ _135_ vdd gnd NAND3X1
X_3214_ _128_ _135_ _136_ vdd gnd NAND2X1
X_3215_ _107_ _108_ _136_ _137_ vdd gnd OAI21X1
X_3216_ _106_ _138_ vdd gnd INVX1
X_3217_ _138_ _128_ _135_ _139_ vdd gnd NAND3X1
X_3218_ _139_ _137_ _140_ vdd gnd NAND2X1
X_3219_ _119_ _140_ _141_ vdd gnd OR2X2
X_3220_ _140_ _119_ _142_ vdd gnd NAND2X1
X_3221_ _142_ _141_ _3053_[15] vdd gnd NAND2X1
X_3222_ _134_ _133_ _129_ _143_ vdd gnd AOI21X1
X_3223_ _50_ _73_ _144_ vdd gnd NOR2X1
X_3224_ _104_ _132_ _145_ vdd gnd NOR2X1
X_3225_ _144_ _145_ _146_ vdd gnd NAND2X1
X_3226_ q1[7] q0[15] _97_ _147_ vdd gnd OAI21X1
X_3227_ _121_ _123_ _147_ _148_ vdd gnd OAI21X1
X_3228_ _145_ _95_ _148_ _149_ vdd gnd AOI21X1
X_3229_ _146_ _53_ _149_ _150_ vdd gnd OAI21X1
X_3230_ q1[8] _150_ _151_ vdd gnd NAND2X1
X_3231_ q1[8] _152_ vdd gnd INVX1
X_3232_ _45_ _43_ _153_ vdd gnd NAND2X1
X_3233_ _125_ _98_ _154_ vdd gnd NAND2X1
X_3234_ _92_ _154_ _155_ vdd gnd NOR2X1
X_3235_ _95_ _125_ _98_ _156_ vdd gnd NAND3X1
X_3236_ _130_ _147_ _156_ _157_ vdd gnd NAND3X1
X_3237_ _155_ _153_ _157_ _158_ vdd gnd AOI21X1
X_3238_ _152_ _158_ _159_ vdd gnd NAND2X1
X_3239_ q3[0] q2[8] _160_ vdd gnd NAND2X1
X_3240_ q3[0] _161_ vdd gnd INVX1
X_3241_ q2[8] _162_ vdd gnd INVX1
X_3242_ _161_ _162_ _163_ vdd gnd NAND2X1
X_3243_ _160_ _163_ _164_ vdd gnd NAND2X1
X_3244_ _164_ _165_ vdd gnd INVX1
X_3245_ _165_ _159_ _151_ _166_ vdd gnd NAND3X1
X_3246_ _144_ _145_ _153_ _167_ vdd gnd NAND3X1
X_3247_ _167_ _149_ _152_ _168_ vdd gnd AOI21X1
X_3248_ _159_ _169_ vdd gnd INVX1
X_3249_ _168_ _169_ _164_ _170_ vdd gnd OAI21X1
X_3250_ _166_ _170_ _143_ _171_ vdd gnd NAND3X1
X_3251_ _166_ _170_ _172_ vdd gnd NAND2X1
X_3252_ _128_ _172_ _173_ vdd gnd NAND2X1
X_3253_ _171_ _173_ _174_ vdd gnd AND2X2
X_3254_ _111_ _139_ _175_ vdd gnd AND2X2
X_3255_ _117_ _116_ _175_ _176_ vdd gnd OAI21X1
X_3256_ _137_ _176_ _177_ vdd gnd NAND2X1
X_3257_ _174_ _177_ _178_ vdd gnd NAND2X1
X_3258_ _174_ _179_ vdd gnd INVX1
X_3259_ _106_ _136_ _114_ _175_ _180_ vdd 
+ gnd
+ AOI22X1
X_3260_ _179_ _180_ _181_ vdd gnd NAND2X1
X_3261_ _181_ _178_ _3053_[16] vdd gnd NAND2X1
X_3262_ _179_ _177_ _171_ _182_ vdd gnd OAI21X1
X_3263_ _161_ _162_ _166_ _183_ vdd gnd OAI21X1
X_3264_ q1[8] q1[9] _150_ _184_ vdd gnd NAND3X1
X_3265_ q1[9] _185_ vdd gnd INVX1
X_3266_ _152_ _158_ _185_ _186_ vdd gnd OAI21X1
X_3267_ \z4.z1.z1.z1.s\ _187_ vdd gnd INVX1
X_3268_ q2[9] _188_ vdd gnd INVX1
X_3269_ _187_ _188_ _189_ vdd gnd NAND2X1
X_3270_ \z4.z1.z1.z1.s\ q2[9] _190_ vdd gnd NAND2X1
X_3271_ _190_ _189_ _191_ vdd gnd NAND2X1
X_3272_ _191_ _192_ vdd gnd INVX1
X_3273_ _192_ _184_ _186_ _193_ vdd gnd NAND3X1
X_3274_ _184_ _186_ _194_ vdd gnd NAND2X1
X_3275_ _191_ _194_ _195_ vdd gnd NAND2X1
X_3276_ _193_ _183_ _195_ _196_ vdd gnd NAND3X1
X_3277_ _196_ _197_ vdd gnd INVX1
X_3278_ _195_ _193_ _183_ _198_ vdd gnd AOI21X1
X_3279_ _198_ _197_ _199_ vdd gnd NOR2X1
X_3280_ _182_ _199_ _200_ vdd gnd OR2X2
X_3281_ _199_ _182_ _201_ vdd gnd NAND2X1
X_3282_ _200_ _201_ _3053_[17] vdd gnd AND2X2
X_3283_ _171_ _196_ _198_ _202_ vdd gnd AOI21X1
X_3284_ _202_ _203_ vdd gnd INVX1
X_3285_ _199_ _174_ _204_ vdd gnd NAND2X1
X_3286_ _204_ _177_ _203_ _205_ vdd gnd OAI21X1
X_3287_ _187_ _188_ _193_ _206_ vdd gnd OAI21X1
X_3288_ q1[9] q1[10] _168_ _207_ vdd gnd NAND3X1
X_3289_ q1[10] _208_ vdd gnd INVX1
X_3290_ _208_ _184_ _209_ vdd gnd NAND2X1
X_3291_ q3[2] _210_ vdd gnd INVX1
X_3292_ q2[10] _211_ vdd gnd INVX1
X_3293_ _210_ _211_ _212_ vdd gnd NAND2X1
X_3294_ q3[2] q2[10] _213_ vdd gnd NAND2X1
X_3295_ _213_ _212_ _214_ vdd gnd NAND2X1
X_3296_ _214_ _215_ vdd gnd INVX1
X_3297_ _207_ _215_ _209_ _216_ vdd gnd NAND3X1
X_3298_ _209_ _207_ _215_ _217_ vdd gnd AOI21X1
X_3299_ _217_ _218_ vdd gnd INVX1
X_3300_ _206_ _216_ _218_ _219_ vdd gnd NAND3X1
X_3301_ _206_ _220_ vdd gnd INVX1
X_3302_ _216_ _221_ vdd gnd INVX1
X_3303_ _217_ _221_ _220_ _222_ vdd gnd OAI21X1
X_3304_ _219_ _222_ _223_ vdd gnd AND2X2
X_3305_ _223_ _205_ _224_ vdd gnd NAND2X1
X_3306_ _205_ _223_ _225_ vdd gnd OR2X2
X_3307_ _225_ _224_ _3053_[18] vdd gnd AND2X2
X_3308_ _219_ _224_ _226_ vdd gnd NAND2X1
X_3309_ _210_ _211_ _216_ _227_ vdd gnd OAI21X1
X_3310_ _152_ _185_ _158_ _228_ vdd gnd NOR3X1
X_3311_ q1[10] q1[11] _228_ _229_ vdd gnd NAND3X1
X_3312_ q1[11] _230_ vdd gnd INVX1
X_3313_ _208_ _184_ _230_ _231_ vdd gnd OAI21X1
X_3314_ q3[3] q2[11] _232_ vdd gnd NOR2X1
X_3315_ q3[3] _233_ vdd gnd INVX1
X_3316_ q2[11] _234_ vdd gnd INVX1
X_3317_ _233_ _234_ _235_ vdd gnd NOR2X1
X_3318_ _232_ _235_ _236_ vdd gnd NOR2X1
X_3319_ _231_ _236_ _229_ _237_ vdd gnd NAND3X1
X_3320_ _231_ _229_ _238_ vdd gnd NAND2X1
X_3321_ _232_ _235_ _238_ _239_ vdd gnd OAI21X1
X_3322_ _227_ _237_ _239_ _240_ vdd gnd NAND3X1
X_3323_ _216_ _213_ _241_ vdd gnd AND2X2
X_3324_ _236_ _242_ vdd gnd INVX1
X_3325_ _231_ _242_ _229_ _243_ vdd gnd NAND3X1
X_3326_ _236_ _238_ _244_ vdd gnd NAND2X1
X_3327_ _243_ _241_ _244_ _245_ vdd gnd NAND3X1
X_3328_ _245_ _240_ _246_ vdd gnd NAND2X1
X_3329_ _226_ _246_ _247_ vdd gnd OR2X2
X_3330_ _246_ _226_ _248_ vdd gnd NAND2X1
X_3331_ _248_ _247_ _3053_[19] vdd gnd NAND2X1
X_3332_ _222_ _219_ _249_ vdd gnd NAND2X1
X_3333_ _249_ _246_ _204_ _250_ vdd gnd NOR3X1
X_3334_ _240_ _245_ _251_ vdd gnd AND2X2
X_3335_ _202_ _223_ _251_ _252_ vdd gnd NAND3X1
X_3336_ _219_ _253_ vdd gnd INVX1
X_3337_ _253_ _251_ _254_ vdd gnd NAND2X1
X_3338_ _240_ _254_ _252_ _255_ vdd gnd NAND3X1
X_3339_ _180_ _250_ _255_ _256_ vdd gnd AOI21X1
X_3340_ _233_ _234_ _237_ _257_ vdd gnd OAI21X1
X_3341_ _208_ _184_ _258_ vdd gnd NOR2X1
X_3342_ q1[11] q1[12] _258_ _259_ vdd gnd NAND3X1
X_3343_ q1[12] _260_ vdd gnd INVX1
X_3344_ _230_ _207_ _260_ _261_ vdd gnd OAI21X1
X_3345_ q3[4] _262_ vdd gnd INVX1
X_3346_ q2[12] _263_ vdd gnd INVX1
X_3347_ _262_ _263_ _264_ vdd gnd NAND2X1
X_3348_ q3[4] q2[12] _265_ vdd gnd NAND2X1
X_3349_ _265_ _264_ _266_ vdd gnd NAND2X1
X_3350_ _266_ _267_ vdd gnd INVX1
X_3351_ _261_ _267_ _259_ _268_ vdd gnd NAND3X1
X_3352_ _259_ _261_ _267_ _269_ vdd gnd AOI21X1
X_3353_ _269_ _270_ vdd gnd INVX1
X_3354_ _257_ _268_ _270_ _271_ vdd gnd NAND3X1
X_3355_ _257_ _272_ vdd gnd INVX1
X_3356_ _268_ _273_ vdd gnd INVX1
X_3357_ _269_ _273_ _272_ _274_ vdd gnd OAI21X1
X_3358_ _274_ _271_ _275_ vdd gnd NAND2X1
X_3359_ _275_ _256_ _276_ vdd gnd NOR2X1
X_3360_ _256_ _275_ _277_ vdd gnd AND2X2
X_3361_ _276_ _277_ _3053_[20] vdd gnd NOR2X1
X_3362_ _275_ _256_ _271_ _278_ vdd gnd OAI21X1
X_3363_ _262_ _263_ _268_ _279_ vdd gnd OAI21X1
X_3364_ _230_ _207_ _280_ vdd gnd NOR2X1
X_3365_ q1[12] q1[13] _280_ _281_ vdd gnd NAND3X1
X_3366_ q1[13] _282_ vdd gnd INVX1
X_3367_ _260_ _229_ _282_ _283_ vdd gnd OAI21X1
X_3368_ q3[5] q2[13] _284_ vdd gnd NOR2X1
X_3369_ q3[5] _285_ vdd gnd INVX1
X_3370_ q2[13] _286_ vdd gnd INVX1
X_3371_ _285_ _286_ _287_ vdd gnd NOR2X1
X_3372_ _284_ _287_ _288_ vdd gnd NOR2X1
X_3373_ _288_ _283_ _281_ _289_ vdd gnd NAND3X1
X_3374_ _260_ _282_ _229_ _290_ vdd gnd NOR3X1
X_3375_ _280_ q1[12] q1[13] _291_ vdd gnd AOI21X1
X_3376_ _288_ _292_ vdd gnd INVX1
X_3377_ _291_ _290_ _292_ _293_ vdd gnd OAI21X1
X_3378_ _279_ _289_ _293_ _294_ vdd gnd NAND3X1
X_3379_ _268_ _265_ _295_ vdd gnd AND2X2
X_3380_ _292_ _283_ _281_ _296_ vdd gnd NAND3X1
X_3381_ _291_ _290_ _288_ _297_ vdd gnd OAI21X1
X_3382_ _296_ _297_ _295_ _298_ vdd gnd NAND3X1
X_3383_ _294_ _298_ _299_ vdd gnd NAND2X1
X_3384_ _278_ _299_ _300_ vdd gnd OR2X2
X_3385_ _299_ _278_ _301_ vdd gnd NAND2X1
X_3386_ _301_ _300_ _3053_[21] vdd gnd NAND2X1
X_3387_ _249_ _246_ _302_ vdd gnd NOR2X1
X_3388_ _174_ _199_ _302_ _303_ vdd gnd NAND3X1
X_3389_ _219_ _246_ _240_ _304_ vdd gnd OAI21X1
X_3390_ _302_ _202_ _304_ _305_ vdd gnd AOI21X1
X_3391_ _303_ _177_ _305_ _306_ vdd gnd OAI21X1
X_3392_ _271_ _299_ _294_ _307_ vdd gnd OAI21X1
X_3393_ _275_ _299_ _308_ vdd gnd NOR2X1
X_3394_ _306_ _308_ _307_ _309_ vdd gnd AOI21X1
X_3395_ _285_ _286_ _289_ _310_ vdd gnd OAI21X1
X_3396_ _230_ _260_ _207_ _311_ vdd gnd NOR3X1
X_3397_ q1[13] q1[14] _311_ _312_ vdd gnd NAND3X1
X_3398_ q1[14] _313_ vdd gnd INVX1
X_3399_ _282_ _259_ _313_ _314_ vdd gnd OAI21X1
X_3400_ q3[6] _315_ vdd gnd INVX1
X_3401_ q2[14] _316_ vdd gnd INVX1
X_3402_ _315_ _316_ _317_ vdd gnd NAND2X1
X_3403_ q3[6] q2[14] _318_ vdd gnd NAND2X1
X_3404_ _318_ _317_ _319_ vdd gnd NAND2X1
X_3405_ _319_ _320_ vdd gnd INVX1
X_3406_ _312_ _320_ _314_ _321_ vdd gnd NAND3X1
X_3407_ _314_ _312_ _320_ _322_ vdd gnd AOI21X1
X_3408_ _322_ _323_ vdd gnd INVX1
X_3409_ _310_ _321_ _323_ _324_ vdd gnd NAND3X1
X_3410_ _310_ _325_ vdd gnd INVX1
X_3411_ _321_ _326_ vdd gnd INVX1
X_3412_ _322_ _326_ _325_ _327_ vdd gnd OAI21X1
X_3413_ _324_ _327_ _328_ vdd gnd NAND2X1
X_3414_ _328_ _309_ _329_ vdd gnd NOR2X1
X_3415_ _309_ _328_ _330_ vdd gnd AND2X2
X_3416_ _329_ _330_ _3053_[22] vdd gnd NOR2X1
X_3417_ _324_ _331_ vdd gnd INVX1
X_3418_ _331_ _329_ _332_ vdd gnd NOR2X1
X_3419_ _315_ _316_ _321_ _333_ vdd gnd OAI21X1
X_3420_ q3[7] _334_ vdd gnd INVX1
X_3421_ q2[15] _335_ vdd gnd INVX1
X_3422_ _334_ _335_ _336_ vdd gnd NAND2X1
X_3423_ q3[7] q2[15] _337_ vdd gnd NAND2X1
X_3424_ _337_ _336_ _338_ vdd gnd NAND2X1
X_3425_ _338_ _339_ vdd gnd INVX1
X_3426_ q1[15] _340_ vdd gnd INVX1
X_3427_ _313_ _281_ _340_ _341_ vdd gnd OAI21X1
X_3428_ q1[14] q1[15] _290_ _342_ vdd gnd NAND3X1
X_3429_ _339_ _341_ _342_ _343_ vdd gnd NAND3X1
X_3430_ _313_ _281_ q1[15] _344_ vdd gnd OAI21X1
X_3431_ q1[14] _340_ _290_ _345_ vdd gnd NAND3X1
X_3432_ _338_ _344_ _345_ _346_ vdd gnd NAND3X1
X_3433_ _343_ _346_ _333_ _347_ vdd gnd NAND3X1
X_3434_ _321_ _318_ _348_ vdd gnd AND2X2
X_3435_ _345_ _344_ _338_ _349_ vdd gnd AOI21X1
X_3436_ _342_ _341_ _339_ _350_ vdd gnd AOI21X1
X_3437_ _349_ _350_ _348_ _351_ vdd gnd OAI21X1
X_3438_ _351_ _347_ _352_ vdd gnd AND2X2
X_3439_ _352_ _332_ _353_ vdd gnd NAND2X1
X_3440_ _347_ _351_ _354_ vdd gnd NAND2X1
X_3441_ _331_ _329_ _354_ _355_ vdd gnd OAI21X1
X_3442_ _355_ _353_ _3053_[23] vdd gnd NAND2X1
X_3443_ _327_ _324_ _356_ vdd gnd AND2X2
X_3444_ _307_ _356_ _352_ _357_ vdd gnd NAND3X1
X_3445_ _331_ _352_ _358_ vdd gnd NAND2X1
X_3446_ _347_ _358_ _357_ _359_ vdd gnd NAND3X1
X_3447_ _308_ _356_ _352_ _360_ vdd gnd NAND3X1
X_3448_ _256_ _360_ _361_ vdd gnd NOR2X1
X_3449_ _334_ _335_ _343_ _362_ vdd gnd OAI21X1
X_3450_ q3[8] _362_ _363_ vdd gnd NAND2X1
X_3451_ _362_ q3[8] _364_ vdd gnd OR2X2
X_3452_ _364_ _363_ _365_ vdd gnd AND2X2
X_3453_ _359_ _361_ _365_ _366_ vdd gnd OAI21X1
X_3454_ _328_ _354_ _367_ vdd gnd NOR2X1
X_3455_ _324_ _354_ _347_ _368_ vdd gnd OAI21X1
X_3456_ _367_ _307_ _368_ _369_ vdd gnd AOI21X1
X_3457_ _256_ _360_ _369_ _370_ vdd gnd OAI21X1
X_3458_ _370_ _365_ _371_ vdd gnd OR2X2
X_3459_ _371_ _366_ _3053_[24] vdd gnd AND2X2
X_3460_ q3[9] _372_ vdd gnd INVX1
X_3461_ _363_ _366_ _373_ vdd gnd NAND2X1
X_3462_ _372_ _373_ _374_ vdd gnd NAND2X1
X_3463_ q3[9] _363_ _366_ _375_ vdd gnd NAND3X1
X_3464_ _375_ _374_ _3053_[25] vdd gnd NAND2X1
X_3465_ q3[10] _376_ vdd gnd INVX1
X_3466_ _372_ _376_ _377_ vdd gnd NOR2X1
X_3467_ _377_ _373_ _378_ vdd gnd NAND2X1
X_3468_ _372_ _363_ _379_ vdd gnd NOR2X1
X_3469_ q3[9] _363_ _364_ _380_ vdd gnd NAND3X1
X_3470_ _380_ _381_ vdd gnd INVX1
X_3471_ _370_ _381_ _379_ _382_ vdd gnd AOI21X1
X_3472_ _376_ _382_ _383_ vdd gnd NAND2X1
X_3473_ _378_ _383_ _3053_[26] vdd gnd AND2X2
X_3474_ _376_ _382_ q3[11] _384_ vdd gnd OAI21X1
X_3475_ q3[11] _385_ vdd gnd INVX1
X_3476_ _385_ _377_ _373_ _386_ vdd gnd NAND3X1
X_3477_ _386_ _384_ _3053_[27] vdd gnd NAND2X1
X_3478_ q3[12] _387_ vdd gnd INVX1
X_3479_ _376_ _385_ _388_ vdd gnd NOR2X1
X_3480_ _388_ _379_ _389_ vdd gnd NAND2X1
X_3481_ _389_ _390_ vdd gnd INVX1
X_3482_ _308_ _367_ _306_ _391_ vdd gnd NAND3X1
X_3483_ q3[9] _388_ _365_ _392_ vdd gnd NAND3X1
X_3484_ _369_ _391_ _392_ _393_ vdd gnd AOI21X1
X_3485_ _390_ _393_ _387_ _394_ vdd gnd OAI21X1
X_3486_ _388_ _395_ vdd gnd INVX1
X_3487_ _395_ _380_ _396_ vdd gnd NOR2X1
X_3488_ _370_ _396_ _390_ _397_ vdd gnd AOI21X1
X_3489_ q3[12] _397_ _398_ vdd gnd NAND2X1
X_3490_ _394_ _398_ _3053_[28] vdd gnd NAND2X1
X_3491_ _387_ _397_ q3[13] _399_ vdd gnd OAI21X1
X_3492_ q3[13] _400_ vdd gnd INVX1
X_3493_ _359_ _361_ _396_ _401_ vdd gnd OAI21X1
X_3494_ _389_ _401_ _402_ vdd gnd NAND2X1
X_3495_ q3[12] _400_ _402_ _403_ vdd gnd NAND3X1
X_3496_ _403_ _399_ _3053_[29] vdd gnd NAND2X1
X_3497_ q3[14] _404_ vdd gnd INVX1
X_3498_ _387_ _400_ _405_ vdd gnd NOR2X1
X_3499_ _405_ _406_ vdd gnd INVX1
X_3500_ _401_ _389_ _406_ _407_ vdd gnd AOI21X1
X_3501_ _404_ _407_ _408_ vdd gnd NAND2X1
X_3502_ _406_ _397_ q3[14] _409_ vdd gnd OAI21X1
X_3503_ _409_ _408_ _3053_[30] vdd gnd NAND2X1
X_3504_ _390_ _393_ _405_ _410_ vdd gnd OAI21X1
X_3505_ _404_ _410_ q3[15] _411_ vdd gnd OAI21X1
X_3506_ q3[15] _412_ vdd gnd INVX1
X_3507_ q3[14] _412_ _407_ _413_ vdd gnd NAND3X1
X_3508_ _413_ _411_ _3053_[31] vdd gnd NAND2X1
X_3509_ _429_ _428_ _420_ _414_ vdd gnd AOI21X1
X_3510_ _414_ _431_ _3053_[9] vdd gnd NOR2X1
X_3511_ \z1.q1\[0] \z1.q0\[4] _575_ vdd gnd OR2X2
X_3512_ \z1.q1\[0] \z1.q0\[4] _576_ vdd gnd NAND2X1
X_3513_ _576_ _575_ _577_ vdd gnd NAND2X1
X_3514_ _577_ _578_ vdd gnd INVX1
X_3515_ _578_ \z1.q2\[0] _579_ vdd gnd AND2X2
X_3516_ \z1.q2\[0] _578_ _580_ vdd gnd NOR2X1
X_3517_ _580_ _579_ q0[4] vdd gnd NOR2X1
X_3518_ \z1.z3.z1.z1.s\ _581_ vdd gnd INVX1
X_3519_ _576_ _582_ vdd gnd INVX1
X_3520_ \z1.z2.z1.z1.s\ \z1.q0\[5] _583_ vdd gnd NAND2X1
X_3521_ \z1.z2.z1.z1.s\ \z1.q0\[5] _584_ vdd gnd OR2X2
X_3522_ _583_ _584_ _582_ _585_ vdd gnd NAND3X1
X_3523_ \z1.z2.z1.z1.s\ \z1.q0\[5] _586_ vdd gnd AND2X2
X_3524_ \z1.z2.z1.z1.s\ \z1.q0\[5] _587_ vdd gnd NOR2X1
X_3525_ _587_ _586_ _576_ _588_ vdd gnd OAI21X1
X_3526_ _588_ _585_ _589_ vdd gnd NAND2X1
X_3527_ _589_ _581_ _590_ vdd gnd OR2X2
X_3528_ _581_ _589_ _591_ vdd gnd NAND2X1
X_3529_ _590_ _591_ _592_ vdd gnd AND2X2
X_3530_ _579_ _592_ _593_ vdd gnd NAND2X1
X_3531_ _590_ _594_ vdd gnd INVX1
X_3532_ _576_ _587_ _583_ _595_ vdd gnd OAI21X1
X_3533_ \z1.q0\[6] _596_ vdd gnd INVX1
X_3534_ \z1.q1\[2] _596_ _597_ vdd gnd NOR2X1
X_3535_ \z1.q1\[2] _598_ vdd gnd INVX1
X_3536_ \z1.q0\[6] _598_ _599_ vdd gnd NOR2X1
X_3537_ _597_ _599_ _595_ _600_ vdd gnd OAI21X1
X_3538_ \z1.q0\[6] _598_ _601_ vdd gnd NAND2X1
X_3539_ \z1.q1\[2] _596_ _602_ vdd gnd NAND2X1
X_3540_ _601_ _602_ _603_ vdd gnd NAND2X1
X_3541_ _603_ _595_ _604_ vdd gnd OR2X2
X_3542_ \z1.q2\[2] _600_ _604_ _605_ vdd gnd NAND3X1
X_3543_ \z1.q2\[2] _606_ vdd gnd INVX1
X_3544_ _600_ _604_ _607_ vdd gnd NAND2X1
X_3545_ _606_ _607_ _608_ vdd gnd NAND2X1
X_3546_ _608_ _605_ _594_ _609_ vdd gnd AOI21X1
X_3547_ _609_ _610_ vdd gnd INVX1
X_3548_ _605_ _608_ _594_ _611_ vdd gnd NAND3X1
X_3549_ _593_ _611_ _610_ _612_ vdd gnd NAND3X1
X_3550_ _593_ _613_ vdd gnd INVX1
X_3551_ _611_ _614_ vdd gnd INVX1
X_3552_ _609_ _614_ _613_ _615_ vdd gnd OAI21X1
X_3553_ _612_ _615_ q0[6] vdd gnd NAND2X1
X_3554_ _609_ _593_ _611_ _616_ vdd gnd OAI21X1
X_3555_ _605_ _617_ vdd gnd INVX1
X_3556_ \z1.q2\[3] _618_ vdd gnd INVX1
X_3557_ \z1.q0\[7] _619_ vdd gnd INVX1
X_3558_ \z1.q1\[3] _619_ _620_ vdd gnd NOR2X1
X_3559_ \z1.q1\[3] _621_ vdd gnd INVX1
X_3560_ \z1.q0\[7] _621_ _622_ vdd gnd NOR2X1
X_3561_ \z1.q1\[2] \z1.q0\[6] _623_ vdd gnd NAND2X1
X_3562_ _623_ _624_ vdd gnd INVX1
X_3563_ _603_ _595_ _624_ _625_ vdd gnd AOI21X1
X_3564_ _620_ _622_ _625_ _626_ vdd gnd OAI21X1
X_3565_ \z1.q1\[3] \z1.q0\[7] _627_ vdd gnd NAND2X1
X_3566_ _627_ _628_ vdd gnd INVX1
X_3567_ \z1.q1\[3] \z1.q0\[7] _629_ vdd gnd NOR2X1
X_3568_ _625_ _630_ vdd gnd INVX1
X_3569_ _628_ _629_ _630_ _631_ vdd gnd OAI21X1
X_3570_ _631_ _626_ _618_ _433_ vdd gnd AOI21X1
X_3571_ _433_ _434_ vdd gnd INVX1
X_3572_ _618_ _626_ _631_ _435_ vdd gnd NAND3X1
X_3573_ _434_ _435_ _617_ _436_ vdd gnd AOI21X1
X_3574_ _617_ _435_ _434_ _437_ vdd gnd NAND3X1
X_3575_ _437_ _438_ vdd gnd INVX1
X_3576_ _436_ _438_ _616_ _439_ vdd gnd OAI21X1
X_3577_ _616_ _440_ vdd gnd INVX1
X_3578_ _435_ _434_ _441_ vdd gnd NAND2X1
X_3579_ _606_ _607_ _441_ _442_ vdd gnd OAI21X1
X_3580_ _437_ _440_ _442_ _443_ vdd gnd NAND3X1
X_3581_ _443_ _439_ q0[7] vdd gnd NAND2X1
X_3582_ _442_ _616_ _438_ _444_ vdd gnd AOI21X1
X_3583_ _582_ _584_ _586_ _445_ vdd gnd AOI21X1
X_3584_ _597_ _599_ _620_ _622_ _446_ vdd 
+ gnd
+ OAI22X1
X_3585_ _623_ _629_ _627_ _447_ vdd gnd OAI21X1
X_3586_ _447_ _448_ vdd gnd INVX1
X_3587_ _445_ _446_ _448_ _449_ vdd gnd OAI21X1
X_3588_ \z1.q1\[4] _449_ _450_ vdd gnd NAND2X1
X_3589_ \z1.q1\[4] _451_ vdd gnd INVX1
X_3590_ \z1.q0\[7] _621_ _452_ vdd gnd NAND2X1
X_3591_ \z1.q1\[3] _619_ _453_ vdd gnd NAND2X1
X_3592_ _452_ _453_ _454_ vdd gnd NAND2X1
X_3593_ _595_ _603_ _454_ _455_ vdd gnd NAND3X1
X_3594_ _451_ _448_ _455_ _456_ vdd gnd NAND3X1
X_3595_ \z1.q3\[0] \z1.q2\[4] _457_ vdd gnd NAND2X1
X_3596_ \z1.q3\[0] _458_ vdd gnd INVX1
X_3597_ \z1.q2\[4] _459_ vdd gnd INVX1
X_3598_ _458_ _459_ _460_ vdd gnd NAND2X1
X_3599_ _457_ _460_ _461_ vdd gnd NAND2X1
X_3600_ _461_ _462_ vdd gnd INVX1
X_3601_ _456_ _462_ _450_ _463_ vdd gnd NAND3X1
X_3602_ _455_ _448_ _451_ _464_ vdd gnd AOI21X1
X_3603_ _456_ _465_ vdd gnd INVX1
X_3604_ _464_ _465_ _461_ _466_ vdd gnd OAI21X1
X_3605_ _463_ _466_ _433_ _467_ vdd gnd NAND3X1
X_3606_ _463_ _466_ _468_ vdd gnd NAND2X1
X_3607_ _468_ _434_ _469_ vdd gnd NAND2X1
X_3608_ _469_ _467_ _470_ vdd gnd AND2X2
X_3609_ _470_ _444_ _471_ vdd gnd NAND2X1
X_3610_ _436_ _440_ _437_ _472_ vdd gnd OAI21X1
X_3611_ _467_ _469_ _473_ vdd gnd NAND2X1
X_3612_ _473_ _472_ _474_ vdd gnd NAND2X1
X_3613_ _471_ _474_ q0[8] vdd gnd NAND2X1
X_3614_ _473_ _444_ _467_ _475_ vdd gnd OAI21X1
X_3615_ _458_ _459_ _463_ _476_ vdd gnd OAI21X1
X_3616_ \z1.q1\[4] \z1.q1\[5] _449_ _477_ vdd gnd NAND3X1
X_3617_ \z1.q1\[5] _478_ vdd gnd INVX1
X_3618_ _601_ _602_ _452_ _453_ _479_ vdd 
+ gnd
+ AOI22X1
X_3619_ _479_ _595_ _447_ _480_ vdd gnd AOI21X1
X_3620_ _451_ _480_ _478_ _481_ vdd gnd OAI21X1
X_3621_ \z1.z4.z1.z1.s\ _482_ vdd gnd INVX1
X_3622_ \z1.q2\[5] _483_ vdd gnd INVX1
X_3623_ _482_ _483_ _484_ vdd gnd NAND2X1
X_3624_ \z1.z4.z1.z1.s\ \z1.q2\[5] _485_ vdd gnd NAND2X1
X_3625_ _484_ _485_ _486_ vdd gnd AND2X2
X_3626_ _486_ _481_ _477_ _487_ vdd gnd NAND3X1
X_3627_ _477_ _481_ _486_ _488_ vdd gnd AOI21X1
X_3628_ _488_ _489_ vdd gnd INVX1
X_3629_ _487_ _476_ _489_ _490_ vdd gnd NAND3X1
X_3630_ _463_ _457_ _491_ vdd gnd AND2X2
X_3631_ _487_ _492_ vdd gnd INVX1
X_3632_ _492_ _488_ _491_ _493_ vdd gnd OAI21X1
X_3633_ _490_ _493_ _494_ vdd gnd NAND2X1
X_3634_ _475_ _494_ _495_ vdd gnd OR2X2
X_3635_ _494_ _475_ _496_ vdd gnd NAND2X1
X_3636_ _496_ _495_ q0[9] vdd gnd NAND2X1
X_3637_ _490_ _493_ _470_ _497_ vdd gnd NAND3X1
X_3638_ _434_ _468_ _490_ _498_ vdd gnd OAI21X1
X_3639_ _493_ _498_ _499_ vdd gnd NAND2X1
X_3640_ _444_ _497_ _499_ _500_ vdd gnd OAI21X1
X_3641_ _482_ _483_ _487_ _501_ vdd gnd OAI21X1
X_3642_ \z1.q1\[5] \z1.q1\[6] _464_ _502_ vdd gnd NAND3X1
X_3643_ \z1.q1\[6] _503_ vdd gnd INVX1
X_3644_ _503_ _477_ _504_ vdd gnd NAND2X1
X_3645_ \z1.q3\[2] _505_ vdd gnd INVX1
X_3646_ \z1.q2\[6] _506_ vdd gnd INVX1
X_3647_ _505_ _506_ _507_ vdd gnd NAND2X1
X_3648_ \z1.q3\[2] \z1.q2\[6] _508_ vdd gnd NAND2X1
X_3649_ _508_ _507_ _509_ vdd gnd NAND2X1
X_3650_ _509_ _510_ vdd gnd INVX1
X_3651_ _502_ _510_ _504_ _511_ vdd gnd NAND3X1
X_3652_ _504_ _502_ _510_ _512_ vdd gnd AOI21X1
X_3653_ _512_ _513_ vdd gnd INVX1
X_3654_ _501_ _511_ _513_ _514_ vdd gnd NAND3X1
X_3655_ _501_ _515_ vdd gnd INVX1
X_3656_ _511_ _516_ vdd gnd INVX1
X_3657_ _512_ _516_ _515_ _517_ vdd gnd OAI21X1
X_3658_ _517_ _514_ _518_ vdd gnd NAND2X1
X_3659_ _518_ _500_ _519_ vdd gnd NAND2X1
X_3660_ _473_ _494_ _520_ vdd gnd NOR2X1
X_3661_ _493_ _498_ _520_ _472_ _521_ vdd 
+ gnd
+ AOI22X1
X_3662_ _514_ _517_ _522_ vdd gnd AND2X2
X_3663_ _522_ _521_ _523_ vdd gnd NAND2X1
X_3664_ _519_ _523_ q0[10] vdd gnd NAND2X1
X_3665_ _518_ _521_ _514_ _524_ vdd gnd OAI21X1
X_3666_ _505_ _506_ _511_ _525_ vdd gnd OAI21X1
X_3667_ \z1.q3\[3] \z1.q2\[7] _526_ vdd gnd NOR2X1
X_3668_ \z1.q3\[3] _527_ vdd gnd INVX1
X_3669_ \z1.q2\[7] _528_ vdd gnd INVX1
X_3670_ _527_ _528_ _529_ vdd gnd NOR2X1
X_3671_ _526_ _529_ _530_ vdd gnd NOR2X1
X_3672_ \z1.q1\[7] _531_ vdd gnd INVX1
X_3673_ _503_ _477_ _531_ _532_ vdd gnd OAI21X1
X_3674_ _464_ \z1.q1\[5] _533_ vdd gnd AND2X2
X_3675_ \z1.q1\[6] \z1.q1\[7] _533_ _534_ vdd gnd NAND3X1
X_3676_ _530_ _532_ _534_ _535_ vdd gnd NAND3X1
X_3677_ _530_ _536_ vdd gnd INVX1
X_3678_ _503_ _477_ \z1.q1\[7] _537_ vdd gnd OAI21X1
X_3679_ \z1.q1\[6] _531_ _533_ _538_ vdd gnd NAND3X1
X_3680_ _536_ _537_ _538_ _539_ vdd gnd NAND3X1
X_3681_ _535_ _539_ _525_ _540_ vdd gnd NAND3X1
X_3682_ _511_ _508_ _541_ vdd gnd AND2X2
X_3683_ _535_ _539_ _542_ vdd gnd NAND2X1
X_3684_ _541_ _542_ _543_ vdd gnd NAND2X1
X_3685_ _540_ _543_ _544_ vdd gnd NAND2X1
X_3686_ _524_ _544_ _545_ vdd gnd OR2X2
X_3687_ _544_ _524_ _546_ vdd gnd NAND2X1
X_3688_ _546_ _545_ q0[11] vdd gnd NAND2X1
X_3689_ _541_ _542_ _514_ _547_ vdd gnd OAI21X1
X_3690_ _543_ _547_ _548_ vdd gnd NAND2X1
X_3691_ _540_ _543_ _522_ _549_ vdd gnd NAND3X1
X_3692_ _549_ _521_ _548_ _550_ vdd gnd OAI21X1
X_3693_ _527_ _528_ _535_ _551_ vdd gnd OAI21X1
X_3694_ \z1.q3\[4] _551_ _552_ vdd gnd NAND2X1
X_3695_ _551_ \z1.q3\[4] _553_ vdd gnd OR2X2
X_3696_ _552_ _553_ _550_ _554_ vdd gnd NAND3X1
X_3697_ _518_ _544_ _555_ vdd gnd NOR2X1
X_3698_ _543_ _547_ _555_ _500_ _556_ vdd 
+ gnd
+ AOI22X1
X_3699_ _552_ _553_ _557_ vdd gnd NAND2X1
X_3700_ _557_ _556_ _558_ vdd gnd NAND2X1
X_3701_ _554_ _558_ q0[12] vdd gnd AND2X2
X_3702_ \z1.q3\[5] _559_ vdd gnd INVX1
X_3703_ _557_ _556_ _552_ _560_ vdd gnd OAI21X1
X_3704_ _559_ _560_ _561_ vdd gnd NAND2X1
X_3705_ \z1.q3\[5] _552_ _554_ _562_ vdd gnd NAND3X1
X_3706_ _562_ _561_ q0[13] vdd gnd NAND2X1
X_3707_ \z1.q3\[6] _563_ vdd gnd INVX1
X_3708_ \z1.q3\[5] _552_ _553_ _564_ vdd gnd NAND3X1
X_3709_ _559_ _552_ _564_ _556_ _565_ vdd 
+ gnd
+ OAI22X1
X_3710_ _563_ _565_ _566_ vdd gnd NAND2X1
X_3711_ _552_ _567_ vdd gnd INVX1
X_3712_ _564_ _568_ vdd gnd INVX1
X_3713_ \z1.q3\[5] _567_ _550_ _568_ _569_ vdd 
+ gnd
+ AOI22X1
X_3714_ \z1.q3\[6] _569_ _570_ vdd gnd NAND2X1
X_3715_ _570_ _566_ q0[14] vdd gnd NAND2X1
X_3716_ _563_ _569_ \z1.q3\[7] _571_ vdd gnd OAI21X1
X_3717_ \z1.q3\[7] _572_ vdd gnd INVX1
X_3718_ \z1.q3\[6] _572_ _565_ _573_ vdd gnd NAND3X1
X_3719_ _573_ _571_ q0[15] vdd gnd NAND2X1
X_3720_ _579_ _592_ _574_ vdd gnd NOR2X1
X_3721_ _574_ _613_ q0[5] vdd gnd NOR2X1
X_3722_ \z1.z1.q1\[0] \z1.z1.z1.z2.s\ _639_ vdd gnd NOR2X1
X_3723_ \z1.z1.q1\[0] \z1.z1.z1.z2.s\ _640_ vdd gnd AND2X2
X_3724_ _639_ _640_ _641_ vdd gnd NOR2X1
X_3725_ \z1.z1.q2\[0] _641_ _642_ vdd gnd NAND2X1
X_3726_ _642_ _643_ vdd gnd INVX1
X_3727_ \z1.z1.q2\[0] _641_ _644_ vdd gnd NOR2X1
X_3728_ _644_ _643_ q0[2] vdd gnd NOR2X1
X_3729_ \z1.z1.q1\[0] \z1.z1.z1.z2.s\ _645_ vdd gnd NAND2X1
X_3730_ \z1.z1.z2.z1.s\ \z1.z1.z1.z2.c\ _646_ vdd gnd NOR2X1
X_3731_ \z1.z1.z2.z1.s\ \z1.z1.z1.z2.c\ _647_ vdd gnd NAND2X1
X_3732_ _647_ _648_ vdd gnd INVX1
X_3733_ _646_ _648_ _645_ _649_ vdd gnd OAI21X1
X_3734_ \z1.z1.z2.z1.s\ _650_ vdd gnd INVX1
X_3735_ \z1.z1.z1.z2.c\ _651_ vdd gnd INVX1
X_3736_ _650_ _651_ _652_ vdd gnd NAND2X1
X_3737_ _640_ _647_ _652_ _653_ vdd gnd NAND3X1
X_3738_ \z1.z1.z3.z1.s\ _653_ _649_ _654_ vdd gnd NAND3X1
X_3739_ \z1.z1.z3.z1.s\ _655_ vdd gnd INVX1
X_3740_ _653_ _649_ _656_ vdd gnd NAND2X1
X_3741_ _655_ _656_ _657_ vdd gnd NAND2X1
X_3742_ _643_ _654_ _657_ _658_ vdd gnd NAND3X1
X_3743_ _658_ _659_ vdd gnd INVX1
X_3744_ _654_ _660_ vdd gnd INVX1
X_3745_ _645_ _646_ _647_ _661_ vdd gnd OAI21X1
X_3746_ \z1.z1.z2.z2.s\ _661_ _662_ vdd gnd NAND2X1
X_3747_ \z1.z1.z2.z2.s\ _663_ vdd gnd INVX1
X_3748_ _663_ _647_ _653_ _664_ vdd gnd NAND3X1
X_3749_ \z1.z1.q3\[0] \z1.z1.z3.z2.s\ _665_ vdd gnd NAND2X1
X_3750_ \z1.z1.q3\[0] _666_ vdd gnd INVX1
X_3751_ \z1.z1.z3.z2.s\ _667_ vdd gnd INVX1
X_3752_ _666_ _667_ _668_ vdd gnd NAND2X1
X_3753_ _665_ _668_ _669_ vdd gnd NAND2X1
X_3754_ _669_ _670_ vdd gnd INVX1
X_3755_ _662_ _670_ _664_ _671_ vdd gnd NAND3X1
X_3756_ _661_ \z1.z1.z2.z2.s\ _672_ vdd gnd AND2X2
X_3757_ \z1.z1.z2.z2.s\ _661_ _673_ vdd gnd NOR2X1
X_3758_ _673_ _672_ _669_ _674_ vdd gnd OAI21X1
X_3759_ _660_ _671_ _674_ _675_ vdd gnd NAND3X1
X_3760_ _671_ _676_ vdd gnd INVX1
X_3761_ _664_ _662_ _670_ _677_ vdd gnd AOI21X1
X_3762_ _677_ _676_ _654_ _678_ vdd gnd OAI21X1
X_3763_ _659_ _675_ _678_ _679_ vdd gnd NAND3X1
X_3764_ _675_ _680_ vdd gnd INVX1
X_3765_ _656_ _681_ vdd gnd INVX1
X_3766_ \z1.z1.z3.z1.s\ _681_ _674_ _671_ _682_ vdd 
+ gnd
+ AOI22X1
X_3767_ _682_ _680_ _658_ _683_ vdd gnd OAI21X1
X_3768_ _683_ _679_ \z1.q0\[4] vdd gnd AND2X2
X_3769_ _658_ _682_ _675_ _684_ vdd gnd OAI21X1
X_3770_ _666_ _667_ _671_ _685_ vdd gnd OAI21X1
X_3771_ \z1.z1.z4.z1.s\ \z1.z1.z3.z2.c\ _686_ vdd gnd NAND2X1
X_3772_ \z1.z1.z4.z1.s\ \z1.z1.z3.z2.c\ _687_ vdd gnd OR2X2
X_3773_ _686_ _687_ _688_ vdd gnd NAND2X1
X_3774_ _688_ _689_ vdd gnd INVX1
X_3775_ \z1.z1.z2.z2.c\ _672_ _690_ vdd gnd NAND2X1
X_3776_ \z1.z1.z2.z2.c\ _691_ vdd gnd INVX1
X_3777_ _691_ _662_ _692_ vdd gnd NAND2X1
X_3778_ _689_ _692_ _690_ _693_ vdd gnd NAND3X1
X_3779_ \z1.z1.z2.z2.c\ _662_ _694_ vdd gnd NAND2X1
X_3780_ _691_ _672_ _695_ vdd gnd NAND2X1
X_3781_ _688_ _694_ _695_ _696_ vdd gnd NAND3X1
X_3782_ _685_ _693_ _696_ _697_ vdd gnd NAND3X1
X_3783_ _685_ _698_ vdd gnd INVX1
X_3784_ _695_ _694_ _688_ _699_ vdd gnd AOI21X1
X_3785_ _690_ _692_ _689_ _700_ vdd gnd AOI21X1
X_3786_ _699_ _700_ _698_ _701_ vdd gnd OAI21X1
X_3787_ _697_ _701_ _702_ vdd gnd NAND2X1
X_3788_ _684_ _702_ _703_ vdd gnd NAND2X1
X_3789_ _702_ _684_ _704_ vdd gnd OR2X2
X_3790_ _703_ _704_ \z1.q0\[5] vdd gnd NAND2X1
X_3791_ \z1.z1.z4.z2.s\ _705_ vdd gnd INVX1
X_3792_ _686_ _706_ vdd gnd INVX1
X_3793_ _706_ _699_ _705_ _707_ vdd gnd OAI21X1
X_3794_ \z1.z1.z4.z2.s\ _686_ _693_ _708_ vdd gnd NAND3X1
X_3795_ _701_ _684_ _709_ vdd gnd NAND2X1
X_3796_ _707_ _708_ _709_ _697_ _710_ vdd 
+ gnd
+ AOI22X1
X_3797_ _708_ _707_ _711_ vdd gnd NAND2X1
X_3798_ _675_ _697_ _679_ _712_ vdd gnd NAND3X1
X_3799_ _712_ _701_ _711_ _713_ vdd gnd AOI21X1
X_3800_ _710_ _713_ \z1.q0\[6] vdd gnd NOR2X1
X_3801_ _706_ _699_ \z1.z1.z4.z2.s\ _632_ vdd gnd OAI21X1
X_3802_ _701_ _711_ _712_ _633_ vdd gnd NAND3X1
X_3803_ \z1.z1.z4.z2.c\ _632_ _633_ _634_ vdd gnd NAND3X1
X_3804_ \z1.z1.z4.z2.c\ _635_ vdd gnd INVX1
X_3805_ _632_ _636_ vdd gnd INVX1
X_3806_ _636_ _710_ _635_ _637_ vdd gnd OAI21X1
X_3807_ _634_ _637_ \z1.q0\[7] vdd gnd NAND2X1
X_3808_ _657_ _654_ _643_ _638_ vdd gnd AOI21X1
X_3809_ _638_ _659_ q0[3] vdd gnd NOR2X1
X_3810_ b[0] a[0] q0[0] vdd gnd AND2X2
X_3811_ b[0] a[1] \z1.z1.z1.z1.a\ vdd gnd AND2X2
X_3812_ a[0] b[1] \z1.z1.z1.z1.b\ vdd gnd AND2X2
X_3813_ a[1] b[1] \z1.z1.z1.z2.a\ vdd gnd AND2X2
X_3814_ \z1.z1.z1.z1.b\ _714_ vdd gnd INVX1
X_3815_ \z1.z1.z1.z1.a\ _714_ _715_ vdd gnd NAND2X1
X_3816_ \z1.z1.z1.z1.a\ _716_ vdd gnd INVX1
X_3817_ \z1.z1.z1.z1.b\ _716_ _717_ vdd gnd NAND2X1
X_3818_ _715_ _717_ \z1.z1.z1.z1.s\ vdd gnd NAND2X1
X_3819_ _714_ _716_ \z1.z1.z1.z1.c\ vdd gnd NOR2X1
X_3820_ \z1.z1.z1.z1.c\ _718_ vdd gnd INVX1
X_3821_ \z1.z1.z1.z2.a\ _718_ _719_ vdd gnd NAND2X1
X_3822_ \z1.z1.z1.z2.a\ _720_ vdd gnd INVX1
X_3823_ \z1.z1.z1.z1.c\ _720_ _721_ vdd gnd NAND2X1
X_3824_ _719_ _721_ \z1.z1.z1.z2.s\ vdd gnd NAND2X1
X_3825_ _718_ _720_ \z1.z1.z1.z2.c\ vdd gnd NOR2X1
X_3826_ b[0] a[2] \z1.z1.q1\[0] vdd gnd AND2X2
X_3827_ b[0] a[3] \z1.z1.z2.z1.a\ vdd gnd AND2X2
X_3828_ a[2] b[1] \z1.z1.z2.z1.b\ vdd gnd AND2X2
X_3829_ a[3] b[1] \z1.z1.z2.z2.a\ vdd gnd AND2X2
X_3830_ \z1.z1.z2.z1.b\ _722_ vdd gnd INVX1
X_3831_ \z1.z1.z2.z1.a\ _722_ _723_ vdd gnd NAND2X1
X_3832_ \z1.z1.z2.z1.a\ _724_ vdd gnd INVX1
X_3833_ \z1.z1.z2.z1.b\ _724_ _725_ vdd gnd NAND2X1
X_3834_ _723_ _725_ \z1.z1.z2.z1.s\ vdd gnd NAND2X1
X_3835_ _722_ _724_ \z1.z1.z2.z1.c\ vdd gnd NOR2X1
X_3836_ \z1.z1.z2.z1.c\ _726_ vdd gnd INVX1
X_3837_ \z1.z1.z2.z2.a\ _726_ _727_ vdd gnd NAND2X1
X_3838_ \z1.z1.z2.z2.a\ _728_ vdd gnd INVX1
X_3839_ \z1.z1.z2.z1.c\ _728_ _729_ vdd gnd NAND2X1
X_3840_ _727_ _729_ \z1.z1.z2.z2.s\ vdd gnd NAND2X1
X_3841_ _726_ _728_ \z1.z1.z2.z2.c\ vdd gnd NOR2X1
X_3842_ b[2] a[0] \z1.z1.q2\[0] vdd gnd AND2X2
X_3843_ b[2] a[1] \z1.z1.z3.z1.a\ vdd gnd AND2X2
X_3844_ a[0] b[3] \z1.z1.z3.z1.b\ vdd gnd AND2X2
X_3845_ a[1] b[3] \z1.z1.z3.z2.a\ vdd gnd AND2X2
X_3846_ \z1.z1.z3.z1.b\ _730_ vdd gnd INVX1
X_3847_ \z1.z1.z3.z1.a\ _730_ _731_ vdd gnd NAND2X1
X_3848_ \z1.z1.z3.z1.a\ _732_ vdd gnd INVX1
X_3849_ \z1.z1.z3.z1.b\ _732_ _733_ vdd gnd NAND2X1
X_3850_ _731_ _733_ \z1.z1.z3.z1.s\ vdd gnd NAND2X1
X_3851_ _730_ _732_ \z1.z1.z3.z1.c\ vdd gnd NOR2X1
X_3852_ \z1.z1.z3.z1.c\ _734_ vdd gnd INVX1
X_3853_ \z1.z1.z3.z2.a\ _734_ _735_ vdd gnd NAND2X1
X_3854_ \z1.z1.z3.z2.a\ _736_ vdd gnd INVX1
X_3855_ \z1.z1.z3.z1.c\ _736_ _737_ vdd gnd NAND2X1
X_3856_ _735_ _737_ \z1.z1.z3.z2.s\ vdd gnd NAND2X1
X_3857_ _734_ _736_ \z1.z1.z3.z2.c\ vdd gnd NOR2X1
X_3858_ b[2] a[2] \z1.z1.q3\[0] vdd gnd AND2X2
X_3859_ b[2] a[3] \z1.z1.z4.z1.a\ vdd gnd AND2X2
X_3860_ a[2] b[3] \z1.z1.z4.z1.b\ vdd gnd AND2X2
X_3861_ a[3] b[3] \z1.z1.z4.z2.a\ vdd gnd AND2X2
X_3862_ \z1.z1.z4.z1.b\ _738_ vdd gnd INVX1
X_3863_ \z1.z1.z4.z1.a\ _738_ _739_ vdd gnd NAND2X1
X_3864_ \z1.z1.z4.z1.a\ _740_ vdd gnd INVX1
X_3865_ \z1.z1.z4.z1.b\ _740_ _741_ vdd gnd NAND2X1
X_3866_ _739_ _741_ \z1.z1.z4.z1.s\ vdd gnd NAND2X1
X_3867_ _738_ _740_ \z1.z1.z4.z1.c\ vdd gnd NOR2X1
X_3868_ \z1.z1.z4.z1.c\ _742_ vdd gnd INVX1
X_3869_ \z1.z1.z4.z2.a\ _742_ _743_ vdd gnd NAND2X1
X_3870_ \z1.z1.z4.z2.a\ _744_ vdd gnd INVX1
X_3871_ \z1.z1.z4.z1.c\ _744_ _745_ vdd gnd NAND2X1
X_3872_ _743_ _745_ \z1.z1.z4.z2.s\ vdd gnd NAND2X1
X_3873_ _742_ _744_ \z1.z1.z4.z2.c\ vdd gnd NOR2X1
X_3874_ \z1.z2.q1\[0] \z1.z2.z1.z2.s\ _753_ vdd gnd NOR2X1
X_3875_ \z1.z2.q1\[0] \z1.z2.z1.z2.s\ _754_ vdd gnd AND2X2
X_3876_ _753_ _754_ _755_ vdd gnd NOR2X1
X_3877_ \z1.z2.q2\[0] _755_ _756_ vdd gnd NAND2X1
X_3878_ _756_ _757_ vdd gnd INVX1
X_3879_ \z1.z2.q2\[0] _755_ _758_ vdd gnd NOR2X1
X_3880_ _758_ _757_ \z1.q1\[2] vdd gnd NOR2X1
X_3881_ \z1.z2.q1\[0] \z1.z2.z1.z2.s\ _759_ vdd gnd NAND2X1
X_3882_ \z1.z2.z2.z1.s\ \z1.z2.z1.z2.c\ _760_ vdd gnd NOR2X1
X_3883_ \z1.z2.z2.z1.s\ \z1.z2.z1.z2.c\ _761_ vdd gnd NAND2X1
X_3884_ _761_ _762_ vdd gnd INVX1
X_3885_ _760_ _762_ _759_ _763_ vdd gnd OAI21X1
X_3886_ \z1.z2.z2.z1.s\ _764_ vdd gnd INVX1
X_3887_ \z1.z2.z1.z2.c\ _765_ vdd gnd INVX1
X_3888_ _764_ _765_ _766_ vdd gnd NAND2X1
X_3889_ _754_ _761_ _766_ _767_ vdd gnd NAND3X1
X_3890_ \z1.z2.z3.z1.s\ _767_ _763_ _768_ vdd gnd NAND3X1
X_3891_ \z1.z2.z3.z1.s\ _769_ vdd gnd INVX1
X_3892_ _767_ _763_ _770_ vdd gnd NAND2X1
X_3893_ _769_ _770_ _771_ vdd gnd NAND2X1
X_3894_ _757_ _768_ _771_ _772_ vdd gnd NAND3X1
X_3895_ _772_ _773_ vdd gnd INVX1
X_3896_ _768_ _774_ vdd gnd INVX1
X_3897_ _759_ _760_ _761_ _775_ vdd gnd OAI21X1
X_3898_ \z1.z2.z2.z2.s\ _775_ _776_ vdd gnd NAND2X1
X_3899_ \z1.z2.z2.z2.s\ _777_ vdd gnd INVX1
X_3900_ _777_ _761_ _767_ _778_ vdd gnd NAND3X1
X_3901_ \z1.z2.q3\[0] \z1.z2.z3.z2.s\ _779_ vdd gnd NAND2X1
X_3902_ \z1.z2.q3\[0] _780_ vdd gnd INVX1
X_3903_ \z1.z2.z3.z2.s\ _781_ vdd gnd INVX1
X_3904_ _780_ _781_ _782_ vdd gnd NAND2X1
X_3905_ _779_ _782_ _783_ vdd gnd NAND2X1
X_3906_ _783_ _784_ vdd gnd INVX1
X_3907_ _776_ _784_ _778_ _785_ vdd gnd NAND3X1
X_3908_ _775_ \z1.z2.z2.z2.s\ _786_ vdd gnd AND2X2
X_3909_ \z1.z2.z2.z2.s\ _775_ _787_ vdd gnd NOR2X1
X_3910_ _787_ _786_ _783_ _788_ vdd gnd OAI21X1
X_3911_ _774_ _785_ _788_ _789_ vdd gnd NAND3X1
X_3912_ _785_ _790_ vdd gnd INVX1
X_3913_ _778_ _776_ _784_ _791_ vdd gnd AOI21X1
X_3914_ _791_ _790_ _768_ _792_ vdd gnd OAI21X1
X_3915_ _773_ _789_ _792_ _793_ vdd gnd NAND3X1
X_3916_ _789_ _794_ vdd gnd INVX1
X_3917_ _770_ _795_ vdd gnd INVX1
X_3918_ \z1.z2.z3.z1.s\ _795_ _788_ _785_ _796_ vdd 
+ gnd
+ AOI22X1
X_3919_ _796_ _794_ _772_ _797_ vdd gnd OAI21X1
X_3920_ _797_ _793_ \z1.q1\[4] vdd gnd AND2X2
X_3921_ _772_ _796_ _789_ _798_ vdd gnd OAI21X1
X_3922_ _780_ _781_ _785_ _799_ vdd gnd OAI21X1
X_3923_ \z1.z2.z4.z1.s\ \z1.z2.z3.z2.c\ _800_ vdd gnd NAND2X1
X_3924_ \z1.z2.z4.z1.s\ \z1.z2.z3.z2.c\ _801_ vdd gnd OR2X2
X_3925_ _800_ _801_ _802_ vdd gnd NAND2X1
X_3926_ _802_ _803_ vdd gnd INVX1
X_3927_ \z1.z2.z2.z2.c\ _786_ _804_ vdd gnd NAND2X1
X_3928_ \z1.z2.z2.z2.c\ _805_ vdd gnd INVX1
X_3929_ _805_ _776_ _806_ vdd gnd NAND2X1
X_3930_ _803_ _806_ _804_ _807_ vdd gnd NAND3X1
X_3931_ \z1.z2.z2.z2.c\ _776_ _808_ vdd gnd NAND2X1
X_3932_ _805_ _786_ _809_ vdd gnd NAND2X1
X_3933_ _802_ _808_ _809_ _810_ vdd gnd NAND3X1
X_3934_ _799_ _807_ _810_ _811_ vdd gnd NAND3X1
X_3935_ _799_ _812_ vdd gnd INVX1
X_3936_ _809_ _808_ _802_ _813_ vdd gnd AOI21X1
X_3937_ _804_ _806_ _803_ _814_ vdd gnd AOI21X1
X_3938_ _813_ _814_ _812_ _815_ vdd gnd OAI21X1
X_3939_ _811_ _815_ _816_ vdd gnd NAND2X1
X_3940_ _798_ _816_ _817_ vdd gnd NAND2X1
X_3941_ _816_ _798_ _818_ vdd gnd OR2X2
X_3942_ _817_ _818_ \z1.q1\[5] vdd gnd NAND2X1
X_3943_ \z1.z2.z4.z2.s\ _819_ vdd gnd INVX1
X_3944_ _800_ _820_ vdd gnd INVX1
X_3945_ _820_ _813_ _819_ _821_ vdd gnd OAI21X1
X_3946_ \z1.z2.z4.z2.s\ _800_ _807_ _822_ vdd gnd NAND3X1
X_3947_ _815_ _798_ _823_ vdd gnd NAND2X1
X_3948_ _821_ _822_ _823_ _811_ _824_ vdd 
+ gnd
+ AOI22X1
X_3949_ _822_ _821_ _825_ vdd gnd NAND2X1
X_3950_ _789_ _811_ _793_ _826_ vdd gnd NAND3X1
X_3951_ _826_ _815_ _825_ _827_ vdd gnd AOI21X1
X_3952_ _824_ _827_ \z1.q1\[6] vdd gnd NOR2X1
X_3953_ _820_ _813_ \z1.z2.z4.z2.s\ _746_ vdd gnd OAI21X1
X_3954_ _815_ _825_ _826_ _747_ vdd gnd NAND3X1
X_3955_ \z1.z2.z4.z2.c\ _746_ _747_ _748_ vdd gnd NAND3X1
X_3956_ \z1.z2.z4.z2.c\ _749_ vdd gnd INVX1
X_3957_ _746_ _750_ vdd gnd INVX1
X_3958_ _750_ _824_ _749_ _751_ vdd gnd OAI21X1
X_3959_ _748_ _751_ \z1.q1\[7] vdd gnd NAND2X1
X_3960_ _771_ _768_ _757_ _752_ vdd gnd AOI21X1
X_3961_ _752_ _773_ \z1.q1\[3] vdd gnd NOR2X1
X_3962_ b[0] a[4] \z1.q1\[0] vdd gnd AND2X2
X_3963_ b[0] a[5] \z1.z2.z1.z1.a\ vdd gnd AND2X2
X_3964_ a[4] b[1] \z1.z2.z1.z1.b\ vdd gnd AND2X2
X_3965_ a[5] b[1] \z1.z2.z1.z2.a\ vdd gnd AND2X2
X_3966_ \z1.z2.z1.z1.b\ _828_ vdd gnd INVX1
X_3967_ \z1.z2.z1.z1.a\ _828_ _829_ vdd gnd NAND2X1
X_3968_ \z1.z2.z1.z1.a\ _830_ vdd gnd INVX1
X_3969_ \z1.z2.z1.z1.b\ _830_ _831_ vdd gnd NAND2X1
X_3970_ _829_ _831_ \z1.z2.z1.z1.s\ vdd gnd NAND2X1
X_3971_ _828_ _830_ \z1.z2.z1.z1.c\ vdd gnd NOR2X1
X_3972_ \z1.z2.z1.z1.c\ _832_ vdd gnd INVX1
X_3973_ \z1.z2.z1.z2.a\ _832_ _833_ vdd gnd NAND2X1
X_3974_ \z1.z2.z1.z2.a\ _834_ vdd gnd INVX1
X_3975_ \z1.z2.z1.z1.c\ _834_ _835_ vdd gnd NAND2X1
X_3976_ _833_ _835_ \z1.z2.z1.z2.s\ vdd gnd NAND2X1
X_3977_ _832_ _834_ \z1.z2.z1.z2.c\ vdd gnd NOR2X1
X_3978_ b[0] a[6] \z1.z2.q1\[0] vdd gnd AND2X2
X_3979_ b[0] a[7] \z1.z2.z2.z1.a\ vdd gnd AND2X2
X_3980_ a[6] b[1] \z1.z2.z2.z1.b\ vdd gnd AND2X2
X_3981_ a[7] b[1] \z1.z2.z2.z2.a\ vdd gnd AND2X2
X_3982_ \z1.z2.z2.z1.b\ _836_ vdd gnd INVX1
X_3983_ \z1.z2.z2.z1.a\ _836_ _837_ vdd gnd NAND2X1
X_3984_ \z1.z2.z2.z1.a\ _838_ vdd gnd INVX1
X_3985_ \z1.z2.z2.z1.b\ _838_ _839_ vdd gnd NAND2X1
X_3986_ _837_ _839_ \z1.z2.z2.z1.s\ vdd gnd NAND2X1
X_3987_ _836_ _838_ \z1.z2.z2.z1.c\ vdd gnd NOR2X1
X_3988_ \z1.z2.z2.z1.c\ _840_ vdd gnd INVX1
X_3989_ \z1.z2.z2.z2.a\ _840_ _841_ vdd gnd NAND2X1
X_3990_ \z1.z2.z2.z2.a\ _842_ vdd gnd INVX1
X_3991_ \z1.z2.z2.z1.c\ _842_ _843_ vdd gnd NAND2X1
X_3992_ _841_ _843_ \z1.z2.z2.z2.s\ vdd gnd NAND2X1
X_3993_ _840_ _842_ \z1.z2.z2.z2.c\ vdd gnd NOR2X1
X_3994_ b[2] a[4] \z1.z2.q2\[0] vdd gnd AND2X2
X_3995_ b[2] a[5] \z1.z2.z3.z1.a\ vdd gnd AND2X2
X_3996_ a[4] b[3] \z1.z2.z3.z1.b\ vdd gnd AND2X2
X_3997_ a[5] b[3] \z1.z2.z3.z2.a\ vdd gnd AND2X2
X_3998_ \z1.z2.z3.z1.b\ _844_ vdd gnd INVX1
X_3999_ \z1.z2.z3.z1.a\ _844_ _845_ vdd gnd NAND2X1
X_4000_ \z1.z2.z3.z1.a\ _846_ vdd gnd INVX1
X_4001_ \z1.z2.z3.z1.b\ _846_ _847_ vdd gnd NAND2X1
X_4002_ _845_ _847_ \z1.z2.z3.z1.s\ vdd gnd NAND2X1
X_4003_ _844_ _846_ \z1.z2.z3.z1.c\ vdd gnd NOR2X1
X_4004_ \z1.z2.z3.z1.c\ _848_ vdd gnd INVX1
X_4005_ \z1.z2.z3.z2.a\ _848_ _849_ vdd gnd NAND2X1
X_4006_ \z1.z2.z3.z2.a\ _850_ vdd gnd INVX1
X_4007_ \z1.z2.z3.z1.c\ _850_ _851_ vdd gnd NAND2X1
X_4008_ _849_ _851_ \z1.z2.z3.z2.s\ vdd gnd NAND2X1
X_4009_ _848_ _850_ \z1.z2.z3.z2.c\ vdd gnd NOR2X1
X_4010_ b[2] a[6] \z1.z2.q3\[0] vdd gnd AND2X2
X_4011_ b[2] a[7] \z1.z2.z4.z1.a\ vdd gnd AND2X2
X_4012_ a[6] b[3] \z1.z2.z4.z1.b\ vdd gnd AND2X2
X_4013_ a[7] b[3] \z1.z2.z4.z2.a\ vdd gnd AND2X2
X_4014_ \z1.z2.z4.z1.b\ _852_ vdd gnd INVX1
X_4015_ \z1.z2.z4.z1.a\ _852_ _853_ vdd gnd NAND2X1
X_4016_ \z1.z2.z4.z1.a\ _854_ vdd gnd INVX1
X_4017_ \z1.z2.z4.z1.b\ _854_ _855_ vdd gnd NAND2X1
X_4018_ _853_ _855_ \z1.z2.z4.z1.s\ vdd gnd NAND2X1
X_4019_ _852_ _854_ \z1.z2.z4.z1.c\ vdd gnd NOR2X1
X_4020_ \z1.z2.z4.z1.c\ _856_ vdd gnd INVX1
X_4021_ \z1.z2.z4.z2.a\ _856_ _857_ vdd gnd NAND2X1
X_4022_ \z1.z2.z4.z2.a\ _858_ vdd gnd INVX1
X_4023_ \z1.z2.z4.z1.c\ _858_ _859_ vdd gnd NAND2X1
X_4024_ _857_ _859_ \z1.z2.z4.z2.s\ vdd gnd NAND2X1
X_4025_ _856_ _858_ \z1.z2.z4.z2.c\ vdd gnd NOR2X1
X_4026_ \z1.z3.q1\[0] \z1.z3.z1.z2.s\ _867_ vdd gnd NOR2X1
X_4027_ \z1.z3.q1\[0] \z1.z3.z1.z2.s\ _868_ vdd gnd AND2X2
X_4028_ _867_ _868_ _869_ vdd gnd NOR2X1
X_4029_ \z1.z3.q2\[0] _869_ _870_ vdd gnd NAND2X1
X_4030_ _870_ _871_ vdd gnd INVX1
X_4031_ \z1.z3.q2\[0] _869_ _872_ vdd gnd NOR2X1
X_4032_ _872_ _871_ \z1.q2\[2] vdd gnd NOR2X1
X_4033_ \z1.z3.q1\[0] \z1.z3.z1.z2.s\ _873_ vdd gnd NAND2X1
X_4034_ \z1.z3.z2.z1.s\ \z1.z3.z1.z2.c\ _874_ vdd gnd NOR2X1
X_4035_ \z1.z3.z2.z1.s\ \z1.z3.z1.z2.c\ _875_ vdd gnd NAND2X1
X_4036_ _875_ _876_ vdd gnd INVX1
X_4037_ _874_ _876_ _873_ _877_ vdd gnd OAI21X1
X_4038_ \z1.z3.z2.z1.s\ _878_ vdd gnd INVX1
X_4039_ \z1.z3.z1.z2.c\ _879_ vdd gnd INVX1
X_4040_ _878_ _879_ _880_ vdd gnd NAND2X1
X_4041_ _868_ _875_ _880_ _881_ vdd gnd NAND3X1
X_4042_ \z1.z3.z3.z1.s\ _881_ _877_ _882_ vdd gnd NAND3X1
X_4043_ \z1.z3.z3.z1.s\ _883_ vdd gnd INVX1
X_4044_ _881_ _877_ _884_ vdd gnd NAND2X1
X_4045_ _883_ _884_ _885_ vdd gnd NAND2X1
X_4046_ _871_ _882_ _885_ _886_ vdd gnd NAND3X1
X_4047_ _886_ _887_ vdd gnd INVX1
X_4048_ _882_ _888_ vdd gnd INVX1
X_4049_ _873_ _874_ _875_ _889_ vdd gnd OAI21X1
X_4050_ \z1.z3.z2.z2.s\ _889_ _890_ vdd gnd NAND2X1
X_4051_ \z1.z3.z2.z2.s\ _891_ vdd gnd INVX1
X_4052_ _891_ _875_ _881_ _892_ vdd gnd NAND3X1
X_4053_ \z1.z3.q3\[0] \z1.z3.z3.z2.s\ _893_ vdd gnd NAND2X1
X_4054_ \z1.z3.q3\[0] _894_ vdd gnd INVX1
X_4055_ \z1.z3.z3.z2.s\ _895_ vdd gnd INVX1
X_4056_ _894_ _895_ _896_ vdd gnd NAND2X1
X_4057_ _893_ _896_ _897_ vdd gnd NAND2X1
X_4058_ _897_ _898_ vdd gnd INVX1
X_4059_ _890_ _898_ _892_ _899_ vdd gnd NAND3X1
X_4060_ _889_ \z1.z3.z2.z2.s\ _900_ vdd gnd AND2X2
X_4061_ \z1.z3.z2.z2.s\ _889_ _901_ vdd gnd NOR2X1
X_4062_ _901_ _900_ _897_ _902_ vdd gnd OAI21X1
X_4063_ _888_ _899_ _902_ _903_ vdd gnd NAND3X1
X_4064_ _899_ _904_ vdd gnd INVX1
X_4065_ _892_ _890_ _898_ _905_ vdd gnd AOI21X1
X_4066_ _905_ _904_ _882_ _906_ vdd gnd OAI21X1
X_4067_ _887_ _903_ _906_ _907_ vdd gnd NAND3X1
X_4068_ _903_ _908_ vdd gnd INVX1
X_4069_ _884_ _909_ vdd gnd INVX1
X_4070_ \z1.z3.z3.z1.s\ _909_ _902_ _899_ _910_ vdd 
+ gnd
+ AOI22X1
X_4071_ _910_ _908_ _886_ _911_ vdd gnd OAI21X1
X_4072_ _911_ _907_ \z1.q2\[4] vdd gnd AND2X2
X_4073_ _886_ _910_ _903_ _912_ vdd gnd OAI21X1
X_4074_ _894_ _895_ _899_ _913_ vdd gnd OAI21X1
X_4075_ \z1.z3.z4.z1.s\ \z1.z3.z3.z2.c\ _914_ vdd gnd NAND2X1
X_4076_ \z1.z3.z4.z1.s\ \z1.z3.z3.z2.c\ _915_ vdd gnd OR2X2
X_4077_ _914_ _915_ _916_ vdd gnd NAND2X1
X_4078_ _916_ _917_ vdd gnd INVX1
X_4079_ \z1.z3.z2.z2.c\ _900_ _918_ vdd gnd NAND2X1
X_4080_ \z1.z3.z2.z2.c\ _919_ vdd gnd INVX1
X_4081_ _919_ _890_ _920_ vdd gnd NAND2X1
X_4082_ _917_ _920_ _918_ _921_ vdd gnd NAND3X1
X_4083_ \z1.z3.z2.z2.c\ _890_ _922_ vdd gnd NAND2X1
X_4084_ _919_ _900_ _923_ vdd gnd NAND2X1
X_4085_ _916_ _922_ _923_ _924_ vdd gnd NAND3X1
X_4086_ _913_ _921_ _924_ _925_ vdd gnd NAND3X1
X_4087_ _913_ _926_ vdd gnd INVX1
X_4088_ _923_ _922_ _916_ _927_ vdd gnd AOI21X1
X_4089_ _918_ _920_ _917_ _928_ vdd gnd AOI21X1
X_4090_ _927_ _928_ _926_ _929_ vdd gnd OAI21X1
X_4091_ _925_ _929_ _930_ vdd gnd NAND2X1
X_4092_ _912_ _930_ _931_ vdd gnd NAND2X1
X_4093_ _930_ _912_ _932_ vdd gnd OR2X2
X_4094_ _931_ _932_ \z1.q2\[5] vdd gnd NAND2X1
X_4095_ \z1.z3.z4.z2.s\ _933_ vdd gnd INVX1
X_4096_ _914_ _934_ vdd gnd INVX1
X_4097_ _934_ _927_ _933_ _935_ vdd gnd OAI21X1
X_4098_ \z1.z3.z4.z2.s\ _914_ _921_ _936_ vdd gnd NAND3X1
X_4099_ _929_ _912_ _937_ vdd gnd NAND2X1
X_4100_ _935_ _936_ _937_ _925_ _938_ vdd 
+ gnd
+ AOI22X1
X_4101_ _936_ _935_ _939_ vdd gnd NAND2X1
X_4102_ _903_ _925_ _907_ _940_ vdd gnd NAND3X1
X_4103_ _940_ _929_ _939_ _941_ vdd gnd AOI21X1
X_4104_ _938_ _941_ \z1.q2\[6] vdd gnd NOR2X1
X_4105_ _934_ _927_ \z1.z3.z4.z2.s\ _860_ vdd gnd OAI21X1
X_4106_ _929_ _939_ _940_ _861_ vdd gnd NAND3X1
X_4107_ \z1.z3.z4.z2.c\ _860_ _861_ _862_ vdd gnd NAND3X1
X_4108_ \z1.z3.z4.z2.c\ _863_ vdd gnd INVX1
X_4109_ _860_ _864_ vdd gnd INVX1
X_4110_ _864_ _938_ _863_ _865_ vdd gnd OAI21X1
X_4111_ _862_ _865_ \z1.q2\[7] vdd gnd NAND2X1
X_4112_ _885_ _882_ _871_ _866_ vdd gnd AOI21X1
X_4113_ _866_ _887_ \z1.q2\[3] vdd gnd NOR2X1
X_4114_ b[4] a[0] \z1.q2\[0] vdd gnd AND2X2
X_4115_ b[4] a[1] \z1.z3.z1.z1.a\ vdd gnd AND2X2
X_4116_ a[0] b[5] \z1.z3.z1.z1.b\ vdd gnd AND2X2
X_4117_ a[1] b[5] \z1.z3.z1.z2.a\ vdd gnd AND2X2
X_4118_ \z1.z3.z1.z1.b\ _942_ vdd gnd INVX1
X_4119_ \z1.z3.z1.z1.a\ _942_ _943_ vdd gnd NAND2X1
X_4120_ \z1.z3.z1.z1.a\ _944_ vdd gnd INVX1
X_4121_ \z1.z3.z1.z1.b\ _944_ _945_ vdd gnd NAND2X1
X_4122_ _943_ _945_ \z1.z3.z1.z1.s\ vdd gnd NAND2X1
X_4123_ _942_ _944_ \z1.z3.z1.z1.c\ vdd gnd NOR2X1
X_4124_ \z1.z3.z1.z1.c\ _946_ vdd gnd INVX1
X_4125_ \z1.z3.z1.z2.a\ _946_ _947_ vdd gnd NAND2X1
X_4126_ \z1.z3.z1.z2.a\ _948_ vdd gnd INVX1
X_4127_ \z1.z3.z1.z1.c\ _948_ _949_ vdd gnd NAND2X1
X_4128_ _947_ _949_ \z1.z3.z1.z2.s\ vdd gnd NAND2X1
X_4129_ _946_ _948_ \z1.z3.z1.z2.c\ vdd gnd NOR2X1
X_4130_ b[4] a[2] \z1.z3.q1\[0] vdd gnd AND2X2
X_4131_ b[4] a[3] \z1.z3.z2.z1.a\ vdd gnd AND2X2
X_4132_ a[2] b[5] \z1.z3.z2.z1.b\ vdd gnd AND2X2
X_4133_ a[3] b[5] \z1.z3.z2.z2.a\ vdd gnd AND2X2
X_4134_ \z1.z3.z2.z1.b\ _950_ vdd gnd INVX1
X_4135_ \z1.z3.z2.z1.a\ _950_ _951_ vdd gnd NAND2X1
X_4136_ \z1.z3.z2.z1.a\ _952_ vdd gnd INVX1
X_4137_ \z1.z3.z2.z1.b\ _952_ _953_ vdd gnd NAND2X1
X_4138_ _951_ _953_ \z1.z3.z2.z1.s\ vdd gnd NAND2X1
X_4139_ _950_ _952_ \z1.z3.z2.z1.c\ vdd gnd NOR2X1
X_4140_ \z1.z3.z2.z1.c\ _954_ vdd gnd INVX1
X_4141_ \z1.z3.z2.z2.a\ _954_ _955_ vdd gnd NAND2X1
X_4142_ \z1.z3.z2.z2.a\ _956_ vdd gnd INVX1
X_4143_ \z1.z3.z2.z1.c\ _956_ _957_ vdd gnd NAND2X1
X_4144_ _955_ _957_ \z1.z3.z2.z2.s\ vdd gnd NAND2X1
X_4145_ _954_ _956_ \z1.z3.z2.z2.c\ vdd gnd NOR2X1
X_4146_ b[6] a[0] \z1.z3.q2\[0] vdd gnd AND2X2
X_4147_ b[6] a[1] \z1.z3.z3.z1.a\ vdd gnd AND2X2
X_4148_ a[0] b[7] \z1.z3.z3.z1.b\ vdd gnd AND2X2
X_4149_ a[1] b[7] \z1.z3.z3.z2.a\ vdd gnd AND2X2
X_4150_ \z1.z3.z3.z1.b\ _958_ vdd gnd INVX1
X_4151_ \z1.z3.z3.z1.a\ _958_ _959_ vdd gnd NAND2X1
X_4152_ \z1.z3.z3.z1.a\ _960_ vdd gnd INVX1
X_4153_ \z1.z3.z3.z1.b\ _960_ _961_ vdd gnd NAND2X1
X_4154_ _959_ _961_ \z1.z3.z3.z1.s\ vdd gnd NAND2X1
X_4155_ _958_ _960_ \z1.z3.z3.z1.c\ vdd gnd NOR2X1
X_4156_ \z1.z3.z3.z1.c\ _962_ vdd gnd INVX1
X_4157_ \z1.z3.z3.z2.a\ _962_ _963_ vdd gnd NAND2X1
X_4158_ \z1.z3.z3.z2.a\ _964_ vdd gnd INVX1
X_4159_ \z1.z3.z3.z1.c\ _964_ _965_ vdd gnd NAND2X1
X_4160_ _963_ _965_ \z1.z3.z3.z2.s\ vdd gnd NAND2X1
X_4161_ _962_ _964_ \z1.z3.z3.z2.c\ vdd gnd NOR2X1
X_4162_ b[6] a[2] \z1.z3.q3\[0] vdd gnd AND2X2
X_4163_ b[6] a[3] \z1.z3.z4.z1.a\ vdd gnd AND2X2
X_4164_ a[2] b[7] \z1.z3.z4.z1.b\ vdd gnd AND2X2
X_4165_ a[3] b[7] \z1.z3.z4.z2.a\ vdd gnd AND2X2
X_4166_ \z1.z3.z4.z1.b\ _966_ vdd gnd INVX1
X_4167_ \z1.z3.z4.z1.a\ _966_ _967_ vdd gnd NAND2X1
X_4168_ \z1.z3.z4.z1.a\ _968_ vdd gnd INVX1
X_4169_ \z1.z3.z4.z1.b\ _968_ _969_ vdd gnd NAND2X1
X_4170_ _967_ _969_ \z1.z3.z4.z1.s\ vdd gnd NAND2X1
X_4171_ _966_ _968_ \z1.z3.z4.z1.c\ vdd gnd NOR2X1
X_4172_ \z1.z3.z4.z1.c\ _970_ vdd gnd INVX1
X_4173_ \z1.z3.z4.z2.a\ _970_ _971_ vdd gnd NAND2X1
X_4174_ \z1.z3.z4.z2.a\ _972_ vdd gnd INVX1
X_4175_ \z1.z3.z4.z1.c\ _972_ _973_ vdd gnd NAND2X1
X_4176_ _971_ _973_ \z1.z3.z4.z2.s\ vdd gnd NAND2X1
X_4177_ _970_ _972_ \z1.z3.z4.z2.c\ vdd gnd NOR2X1
X_4178_ \z1.z4.q1\[0] \z1.z4.z1.z2.s\ _981_ vdd gnd NOR2X1
X_4179_ \z1.z4.q1\[0] \z1.z4.z1.z2.s\ _982_ vdd gnd AND2X2
X_4180_ _981_ _982_ _983_ vdd gnd NOR2X1
X_4181_ \z1.z4.q2\[0] _983_ _984_ vdd gnd NAND2X1
X_4182_ _984_ _985_ vdd gnd INVX1
X_4183_ \z1.z4.q2\[0] _983_ _986_ vdd gnd NOR2X1
X_4184_ _986_ _985_ \z1.q3\[2] vdd gnd NOR2X1
X_4185_ \z1.z4.q1\[0] \z1.z4.z1.z2.s\ _987_ vdd gnd NAND2X1
X_4186_ \z1.z4.z2.z1.s\ \z1.z4.z1.z2.c\ _988_ vdd gnd NOR2X1
X_4187_ \z1.z4.z2.z1.s\ \z1.z4.z1.z2.c\ _989_ vdd gnd NAND2X1
X_4188_ _989_ _990_ vdd gnd INVX1
X_4189_ _988_ _990_ _987_ _991_ vdd gnd OAI21X1
X_4190_ \z1.z4.z2.z1.s\ _992_ vdd gnd INVX1
X_4191_ \z1.z4.z1.z2.c\ _993_ vdd gnd INVX1
X_4192_ _992_ _993_ _994_ vdd gnd NAND2X1
X_4193_ _982_ _989_ _994_ _995_ vdd gnd NAND3X1
X_4194_ \z1.z4.z3.z1.s\ _995_ _991_ _996_ vdd gnd NAND3X1
X_4195_ \z1.z4.z3.z1.s\ _997_ vdd gnd INVX1
X_4196_ _995_ _991_ _998_ vdd gnd NAND2X1
X_4197_ _997_ _998_ _999_ vdd gnd NAND2X1
X_4198_ _985_ _996_ _999_ _1000_ vdd gnd NAND3X1
X_4199_ _1000_ _1001_ vdd gnd INVX1
X_4200_ _996_ _1002_ vdd gnd INVX1
X_4201_ _987_ _988_ _989_ _1003_ vdd gnd OAI21X1
X_4202_ \z1.z4.z2.z2.s\ _1003_ _1004_ vdd gnd NAND2X1
X_4203_ \z1.z4.z2.z2.s\ _1005_ vdd gnd INVX1
X_4204_ _1005_ _989_ _995_ _1006_ vdd gnd NAND3X1
X_4205_ \z1.z4.q3\[0] \z1.z4.z3.z2.s\ _1007_ vdd gnd NAND2X1
X_4206_ \z1.z4.q3\[0] _1008_ vdd gnd INVX1
X_4207_ \z1.z4.z3.z2.s\ _1009_ vdd gnd INVX1
X_4208_ _1008_ _1009_ _1010_ vdd gnd NAND2X1
X_4209_ _1007_ _1010_ _1011_ vdd gnd NAND2X1
X_4210_ _1011_ _1012_ vdd gnd INVX1
X_4211_ _1004_ _1012_ _1006_ _1013_ vdd gnd NAND3X1
X_4212_ _1003_ \z1.z4.z2.z2.s\ _1014_ vdd gnd AND2X2
X_4213_ \z1.z4.z2.z2.s\ _1003_ _1015_ vdd gnd NOR2X1
X_4214_ _1015_ _1014_ _1011_ _1016_ vdd gnd OAI21X1
X_4215_ _1002_ _1013_ _1016_ _1017_ vdd gnd NAND3X1
X_4216_ _1013_ _1018_ vdd gnd INVX1
X_4217_ _1006_ _1004_ _1012_ _1019_ vdd gnd AOI21X1
X_4218_ _1019_ _1018_ _996_ _1020_ vdd gnd OAI21X1
X_4219_ _1001_ _1017_ _1020_ _1021_ vdd gnd NAND3X1
X_4220_ _1017_ _1022_ vdd gnd INVX1
X_4221_ _998_ _1023_ vdd gnd INVX1
X_4222_ \z1.z4.z3.z1.s\ _1023_ _1016_ _1013_ _1024_ vdd 
+ gnd
+ AOI22X1
X_4223_ _1024_ _1022_ _1000_ _1025_ vdd gnd OAI21X1
X_4224_ _1025_ _1021_ \z1.q3\[4] vdd gnd AND2X2
X_4225_ _1000_ _1024_ _1017_ _1026_ vdd gnd OAI21X1
X_4226_ _1008_ _1009_ _1013_ _1027_ vdd gnd OAI21X1
X_4227_ \z1.z4.z4.z1.s\ \z1.z4.z3.z2.c\ _1028_ vdd gnd NAND2X1
X_4228_ \z1.z4.z4.z1.s\ \z1.z4.z3.z2.c\ _1029_ vdd gnd OR2X2
X_4229_ _1028_ _1029_ _1030_ vdd gnd NAND2X1
X_4230_ _1030_ _1031_ vdd gnd INVX1
X_4231_ \z1.z4.z2.z2.c\ _1014_ _1032_ vdd gnd NAND2X1
X_4232_ \z1.z4.z2.z2.c\ _1033_ vdd gnd INVX1
X_4233_ _1033_ _1004_ _1034_ vdd gnd NAND2X1
X_4234_ _1031_ _1034_ _1032_ _1035_ vdd gnd NAND3X1
X_4235_ \z1.z4.z2.z2.c\ _1004_ _1036_ vdd gnd NAND2X1
X_4236_ _1033_ _1014_ _1037_ vdd gnd NAND2X1
X_4237_ _1030_ _1036_ _1037_ _1038_ vdd gnd NAND3X1
X_4238_ _1027_ _1035_ _1038_ _1039_ vdd gnd NAND3X1
X_4239_ _1027_ _1040_ vdd gnd INVX1
X_4240_ _1037_ _1036_ _1030_ _1041_ vdd gnd AOI21X1
X_4241_ _1032_ _1034_ _1031_ _1042_ vdd gnd AOI21X1
X_4242_ _1041_ _1042_ _1040_ _1043_ vdd gnd OAI21X1
X_4243_ _1039_ _1043_ _1044_ vdd gnd NAND2X1
X_4244_ _1026_ _1044_ _1045_ vdd gnd NAND2X1
X_4245_ _1044_ _1026_ _1046_ vdd gnd OR2X2
X_4246_ _1045_ _1046_ \z1.q3\[5] vdd gnd NAND2X1
X_4247_ \z1.z4.z4.z2.s\ _1047_ vdd gnd INVX1
X_4248_ _1028_ _1048_ vdd gnd INVX1
X_4249_ _1048_ _1041_ _1047_ _1049_ vdd gnd OAI21X1
X_4250_ \z1.z4.z4.z2.s\ _1028_ _1035_ _1050_ vdd gnd NAND3X1
X_4251_ _1043_ _1026_ _1051_ vdd gnd NAND2X1
X_4252_ _1049_ _1050_ _1051_ _1039_ _1052_ vdd 
+ gnd
+ AOI22X1
X_4253_ _1050_ _1049_ _1053_ vdd gnd NAND2X1
X_4254_ _1017_ _1039_ _1021_ _1054_ vdd gnd NAND3X1
X_4255_ _1054_ _1043_ _1053_ _1055_ vdd gnd AOI21X1
X_4256_ _1052_ _1055_ \z1.q3\[6] vdd gnd NOR2X1
X_4257_ _1048_ _1041_ \z1.z4.z4.z2.s\ _974_ vdd gnd OAI21X1
X_4258_ _1043_ _1053_ _1054_ _975_ vdd gnd NAND3X1
X_4259_ \z1.z4.z4.z2.c\ _974_ _975_ _976_ vdd gnd NAND3X1
X_4260_ \z1.z4.z4.z2.c\ _977_ vdd gnd INVX1
X_4261_ _974_ _978_ vdd gnd INVX1
X_4262_ _978_ _1052_ _977_ _979_ vdd gnd OAI21X1
X_4263_ _976_ _979_ \z1.q3\[7] vdd gnd NAND2X1
X_4264_ _999_ _996_ _985_ _980_ vdd gnd AOI21X1
X_4265_ _980_ _1001_ \z1.q3\[3] vdd gnd NOR2X1
X_4266_ b[4] a[4] \z1.q3\[0] vdd gnd AND2X2
X_4267_ b[4] a[5] \z1.z4.z1.z1.a\ vdd gnd AND2X2
X_4268_ a[4] b[5] \z1.z4.z1.z1.b\ vdd gnd AND2X2
X_4269_ a[5] b[5] \z1.z4.z1.z2.a\ vdd gnd AND2X2
X_4270_ \z1.z4.z1.z1.b\ _1056_ vdd gnd INVX1
X_4271_ \z1.z4.z1.z1.a\ _1056_ _1057_ vdd gnd NAND2X1
X_4272_ \z1.z4.z1.z1.a\ _1058_ vdd gnd INVX1
X_4273_ \z1.z4.z1.z1.b\ _1058_ _1059_ vdd gnd NAND2X1
X_4274_ _1057_ _1059_ \z1.z4.z1.z1.s\ vdd gnd NAND2X1
X_4275_ _1056_ _1058_ \z1.z4.z1.z1.c\ vdd gnd NOR2X1
X_4276_ \z1.z4.z1.z1.c\ _1060_ vdd gnd INVX1
X_4277_ \z1.z4.z1.z2.a\ _1060_ _1061_ vdd gnd NAND2X1
X_4278_ \z1.z4.z1.z2.a\ _1062_ vdd gnd INVX1
X_4279_ \z1.z4.z1.z1.c\ _1062_ _1063_ vdd gnd NAND2X1
X_4280_ _1061_ _1063_ \z1.z4.z1.z2.s\ vdd gnd NAND2X1
X_4281_ _1060_ _1062_ \z1.z4.z1.z2.c\ vdd gnd NOR2X1
X_4282_ b[4] a[6] \z1.z4.q1\[0] vdd gnd AND2X2
X_4283_ b[4] a[7] \z1.z4.z2.z1.a\ vdd gnd AND2X2
X_4284_ a[6] b[5] \z1.z4.z2.z1.b\ vdd gnd AND2X2
X_4285_ a[7] b[5] \z1.z4.z2.z2.a\ vdd gnd AND2X2
X_4286_ \z1.z4.z2.z1.b\ _1064_ vdd gnd INVX1
X_4287_ \z1.z4.z2.z1.a\ _1064_ _1065_ vdd gnd NAND2X1
X_4288_ \z1.z4.z2.z1.a\ _1066_ vdd gnd INVX1
X_4289_ \z1.z4.z2.z1.b\ _1066_ _1067_ vdd gnd NAND2X1
X_4290_ _1065_ _1067_ \z1.z4.z2.z1.s\ vdd gnd NAND2X1
X_4291_ _1064_ _1066_ \z1.z4.z2.z1.c\ vdd gnd NOR2X1
X_4292_ \z1.z4.z2.z1.c\ _1068_ vdd gnd INVX1
X_4293_ \z1.z4.z2.z2.a\ _1068_ _1069_ vdd gnd NAND2X1
X_4294_ \z1.z4.z2.z2.a\ _1070_ vdd gnd INVX1
X_4295_ \z1.z4.z2.z1.c\ _1070_ _1071_ vdd gnd NAND2X1
X_4296_ _1069_ _1071_ \z1.z4.z2.z2.s\ vdd gnd NAND2X1
X_4297_ _1068_ _1070_ \z1.z4.z2.z2.c\ vdd gnd NOR2X1
X_4298_ b[6] a[4] \z1.z4.q2\[0] vdd gnd AND2X2
X_4299_ b[6] a[5] \z1.z4.z3.z1.a\ vdd gnd AND2X2
X_4300_ a[4] b[7] \z1.z4.z3.z1.b\ vdd gnd AND2X2
X_4301_ a[5] b[7] \z1.z4.z3.z2.a\ vdd gnd AND2X2
X_4302_ \z1.z4.z3.z1.b\ _1072_ vdd gnd INVX1
X_4303_ \z1.z4.z3.z1.a\ _1072_ _1073_ vdd gnd NAND2X1
X_4304_ \z1.z4.z3.z1.a\ _1074_ vdd gnd INVX1
X_4305_ \z1.z4.z3.z1.b\ _1074_ _1075_ vdd gnd NAND2X1
X_4306_ _1073_ _1075_ \z1.z4.z3.z1.s\ vdd gnd NAND2X1
X_4307_ _1072_ _1074_ \z1.z4.z3.z1.c\ vdd gnd NOR2X1
X_4308_ \z1.z4.z3.z1.c\ _1076_ vdd gnd INVX1
X_4309_ \z1.z4.z3.z2.a\ _1076_ _1077_ vdd gnd NAND2X1
X_4310_ \z1.z4.z3.z2.a\ _1078_ vdd gnd INVX1
X_4311_ \z1.z4.z3.z1.c\ _1078_ _1079_ vdd gnd NAND2X1
X_4312_ _1077_ _1079_ \z1.z4.z3.z2.s\ vdd gnd NAND2X1
X_4313_ _1076_ _1078_ \z1.z4.z3.z2.c\ vdd gnd NOR2X1
X_4314_ b[6] a[6] \z1.z4.q3\[0] vdd gnd AND2X2
X_4315_ b[6] a[7] \z1.z4.z4.z1.a\ vdd gnd AND2X2
X_4316_ a[6] b[7] \z1.z4.z4.z1.b\ vdd gnd AND2X2
X_4317_ a[7] b[7] \z1.z4.z4.z2.a\ vdd gnd AND2X2
X_4318_ \z1.z4.z4.z1.b\ _1080_ vdd gnd INVX1
X_4319_ \z1.z4.z4.z1.a\ _1080_ _1081_ vdd gnd NAND2X1
X_4320_ \z1.z4.z4.z1.a\ _1082_ vdd gnd INVX1
X_4321_ \z1.z4.z4.z1.b\ _1082_ _1083_ vdd gnd NAND2X1
X_4322_ _1081_ _1083_ \z1.z4.z4.z1.s\ vdd gnd NAND2X1
X_4323_ _1080_ _1082_ \z1.z4.z4.z1.c\ vdd gnd NOR2X1
X_4324_ \z1.z4.z4.z1.c\ _1084_ vdd gnd INVX1
X_4325_ \z1.z4.z4.z2.a\ _1084_ _1085_ vdd gnd NAND2X1
X_4326_ \z1.z4.z4.z2.a\ _1086_ vdd gnd INVX1
X_4327_ \z1.z4.z4.z1.c\ _1086_ _1087_ vdd gnd NAND2X1
X_4328_ _1085_ _1087_ \z1.z4.z4.z2.s\ vdd gnd NAND2X1
X_4329_ _1084_ _1086_ \z1.z4.z4.z2.c\ vdd gnd NOR2X1
X_4330_ \z2.q1\[0] \z2.q0\[4] _1230_ vdd gnd OR2X2
X_4331_ \z2.q1\[0] \z2.q0\[4] _1231_ vdd gnd NAND2X1
X_4332_ _1231_ _1230_ _1232_ vdd gnd NAND2X1
X_4333_ _1232_ _1233_ vdd gnd INVX1
X_4334_ _1233_ \z2.q2\[0] _1234_ vdd gnd AND2X2
X_4335_ \z2.q2\[0] _1233_ _1235_ vdd gnd NOR2X1
X_4336_ _1235_ _1234_ q1[4] vdd gnd NOR2X1
X_4337_ \z2.z3.z1.z1.s\ _1236_ vdd gnd INVX1
X_4338_ _1231_ _1237_ vdd gnd INVX1
X_4339_ \z2.z2.z1.z1.s\ \z2.q0\[5] _1238_ vdd gnd NAND2X1
X_4340_ \z2.z2.z1.z1.s\ \z2.q0\[5] _1239_ vdd gnd OR2X2
X_4341_ _1238_ _1239_ _1237_ _1240_ vdd gnd NAND3X1
X_4342_ \z2.z2.z1.z1.s\ \z2.q0\[5] _1241_ vdd gnd AND2X2
X_4343_ \z2.z2.z1.z1.s\ \z2.q0\[5] _1242_ vdd gnd NOR2X1
X_4344_ _1242_ _1241_ _1231_ _1243_ vdd gnd OAI21X1
X_4345_ _1243_ _1240_ _1244_ vdd gnd NAND2X1
X_4346_ _1244_ _1236_ _1245_ vdd gnd OR2X2
X_4347_ _1236_ _1244_ _1246_ vdd gnd NAND2X1
X_4348_ _1245_ _1246_ _1247_ vdd gnd AND2X2
X_4349_ _1234_ _1247_ _1248_ vdd gnd NAND2X1
X_4350_ _1245_ _1249_ vdd gnd INVX1
X_4351_ _1231_ _1242_ _1238_ _1250_ vdd gnd OAI21X1
X_4352_ \z2.q0\[6] _1251_ vdd gnd INVX1
X_4353_ \z2.q1\[2] _1251_ _1252_ vdd gnd NOR2X1
X_4354_ \z2.q1\[2] _1253_ vdd gnd INVX1
X_4355_ \z2.q0\[6] _1253_ _1254_ vdd gnd NOR2X1
X_4356_ _1252_ _1254_ _1250_ _1255_ vdd gnd OAI21X1
X_4357_ \z2.q0\[6] _1253_ _1256_ vdd gnd NAND2X1
X_4358_ \z2.q1\[2] _1251_ _1257_ vdd gnd NAND2X1
X_4359_ _1256_ _1257_ _1258_ vdd gnd NAND2X1
X_4360_ _1258_ _1250_ _1259_ vdd gnd OR2X2
X_4361_ \z2.q2\[2] _1255_ _1259_ _1260_ vdd gnd NAND3X1
X_4362_ \z2.q2\[2] _1261_ vdd gnd INVX1
X_4363_ _1255_ _1259_ _1262_ vdd gnd NAND2X1
X_4364_ _1261_ _1262_ _1263_ vdd gnd NAND2X1
X_4365_ _1263_ _1260_ _1249_ _1264_ vdd gnd AOI21X1
X_4366_ _1264_ _1265_ vdd gnd INVX1
X_4367_ _1260_ _1263_ _1249_ _1266_ vdd gnd NAND3X1
X_4368_ _1248_ _1266_ _1265_ _1267_ vdd gnd NAND3X1
X_4369_ _1248_ _1268_ vdd gnd INVX1
X_4370_ _1266_ _1269_ vdd gnd INVX1
X_4371_ _1264_ _1269_ _1268_ _1270_ vdd gnd OAI21X1
X_4372_ _1267_ _1270_ q1[6] vdd gnd NAND2X1
X_4373_ _1264_ _1248_ _1266_ _1271_ vdd gnd OAI21X1
X_4374_ _1260_ _1272_ vdd gnd INVX1
X_4375_ \z2.q2\[3] _1273_ vdd gnd INVX1
X_4376_ \z2.q0\[7] _1274_ vdd gnd INVX1
X_4377_ \z2.q1\[3] _1274_ _1275_ vdd gnd NOR2X1
X_4378_ \z2.q1\[3] _1276_ vdd gnd INVX1
X_4379_ \z2.q0\[7] _1276_ _1277_ vdd gnd NOR2X1
X_4380_ \z2.q1\[2] \z2.q0\[6] _1278_ vdd gnd NAND2X1
X_4381_ _1278_ _1279_ vdd gnd INVX1
X_4382_ _1258_ _1250_ _1279_ _1280_ vdd gnd AOI21X1
X_4383_ _1275_ _1277_ _1280_ _1281_ vdd gnd OAI21X1
X_4384_ \z2.q1\[3] \z2.q0\[7] _1282_ vdd gnd NAND2X1
X_4385_ _1282_ _1283_ vdd gnd INVX1
X_4386_ \z2.q1\[3] \z2.q0\[7] _1284_ vdd gnd NOR2X1
X_4387_ _1280_ _1285_ vdd gnd INVX1
X_4388_ _1283_ _1284_ _1285_ _1286_ vdd gnd OAI21X1
X_4389_ _1286_ _1281_ _1273_ _1088_ vdd gnd AOI21X1
X_4390_ _1088_ _1089_ vdd gnd INVX1
X_4391_ _1273_ _1281_ _1286_ _1090_ vdd gnd NAND3X1
X_4392_ _1089_ _1090_ _1272_ _1091_ vdd gnd AOI21X1
X_4393_ _1272_ _1090_ _1089_ _1092_ vdd gnd NAND3X1
X_4394_ _1092_ _1093_ vdd gnd INVX1
X_4395_ _1091_ _1093_ _1271_ _1094_ vdd gnd OAI21X1
X_4396_ _1271_ _1095_ vdd gnd INVX1
X_4397_ _1090_ _1089_ _1096_ vdd gnd NAND2X1
X_4398_ _1261_ _1262_ _1096_ _1097_ vdd gnd OAI21X1
X_4399_ _1092_ _1095_ _1097_ _1098_ vdd gnd NAND3X1
X_4400_ _1098_ _1094_ q1[7] vdd gnd NAND2X1
X_4401_ _1097_ _1271_ _1093_ _1099_ vdd gnd AOI21X1
X_4402_ _1237_ _1239_ _1241_ _1100_ vdd gnd AOI21X1
X_4403_ _1252_ _1254_ _1275_ _1277_ _1101_ vdd 
+ gnd
+ OAI22X1
X_4404_ _1278_ _1284_ _1282_ _1102_ vdd gnd OAI21X1
X_4405_ _1102_ _1103_ vdd gnd INVX1
X_4406_ _1100_ _1101_ _1103_ _1104_ vdd gnd OAI21X1
X_4407_ \z2.q1\[4] _1104_ _1105_ vdd gnd NAND2X1
X_4408_ \z2.q1\[4] _1106_ vdd gnd INVX1
X_4409_ \z2.q0\[7] _1276_ _1107_ vdd gnd NAND2X1
X_4410_ \z2.q1\[3] _1274_ _1108_ vdd gnd NAND2X1
X_4411_ _1107_ _1108_ _1109_ vdd gnd NAND2X1
X_4412_ _1250_ _1258_ _1109_ _1110_ vdd gnd NAND3X1
X_4413_ _1106_ _1103_ _1110_ _1111_ vdd gnd NAND3X1
X_4414_ \z2.q3\[0] \z2.q2\[4] _1112_ vdd gnd NAND2X1
X_4415_ \z2.q3\[0] _1113_ vdd gnd INVX1
X_4416_ \z2.q2\[4] _1114_ vdd gnd INVX1
X_4417_ _1113_ _1114_ _1115_ vdd gnd NAND2X1
X_4418_ _1112_ _1115_ _1116_ vdd gnd NAND2X1
X_4419_ _1116_ _1117_ vdd gnd INVX1
X_4420_ _1111_ _1117_ _1105_ _1118_ vdd gnd NAND3X1
X_4421_ _1110_ _1103_ _1106_ _1119_ vdd gnd AOI21X1
X_4422_ _1111_ _1120_ vdd gnd INVX1
X_4423_ _1119_ _1120_ _1116_ _1121_ vdd gnd OAI21X1
X_4424_ _1118_ _1121_ _1088_ _1122_ vdd gnd NAND3X1
X_4425_ _1118_ _1121_ _1123_ vdd gnd NAND2X1
X_4426_ _1123_ _1089_ _1124_ vdd gnd NAND2X1
X_4427_ _1124_ _1122_ _1125_ vdd gnd AND2X2
X_4428_ _1125_ _1099_ _1126_ vdd gnd NAND2X1
X_4429_ _1091_ _1095_ _1092_ _1127_ vdd gnd OAI21X1
X_4430_ _1122_ _1124_ _1128_ vdd gnd NAND2X1
X_4431_ _1128_ _1127_ _1129_ vdd gnd NAND2X1
X_4432_ _1126_ _1129_ q1[8] vdd gnd NAND2X1
X_4433_ _1128_ _1099_ _1122_ _1130_ vdd gnd OAI21X1
X_4434_ _1113_ _1114_ _1118_ _1131_ vdd gnd OAI21X1
X_4435_ \z2.q1\[4] \z2.q1\[5] _1104_ _1132_ vdd gnd NAND3X1
X_4436_ \z2.q1\[5] _1133_ vdd gnd INVX1
X_4437_ _1256_ _1257_ _1107_ _1108_ _1134_ vdd 
+ gnd
+ AOI22X1
X_4438_ _1134_ _1250_ _1102_ _1135_ vdd gnd AOI21X1
X_4439_ _1106_ _1135_ _1133_ _1136_ vdd gnd OAI21X1
X_4440_ \z2.z4.z1.z1.s\ _1137_ vdd gnd INVX1
X_4441_ \z2.q2\[5] _1138_ vdd gnd INVX1
X_4442_ _1137_ _1138_ _1139_ vdd gnd NAND2X1
X_4443_ \z2.z4.z1.z1.s\ \z2.q2\[5] _1140_ vdd gnd NAND2X1
X_4444_ _1139_ _1140_ _1141_ vdd gnd AND2X2
X_4445_ _1141_ _1136_ _1132_ _1142_ vdd gnd NAND3X1
X_4446_ _1132_ _1136_ _1141_ _1143_ vdd gnd AOI21X1
X_4447_ _1143_ _1144_ vdd gnd INVX1
X_4448_ _1142_ _1131_ _1144_ _1145_ vdd gnd NAND3X1
X_4449_ _1118_ _1112_ _1146_ vdd gnd AND2X2
X_4450_ _1142_ _1147_ vdd gnd INVX1
X_4451_ _1147_ _1143_ _1146_ _1148_ vdd gnd OAI21X1
X_4452_ _1145_ _1148_ _1149_ vdd gnd NAND2X1
X_4453_ _1130_ _1149_ _1150_ vdd gnd OR2X2
X_4454_ _1149_ _1130_ _1151_ vdd gnd NAND2X1
X_4455_ _1151_ _1150_ q1[9] vdd gnd NAND2X1
X_4456_ _1145_ _1148_ _1125_ _1152_ vdd gnd NAND3X1
X_4457_ _1089_ _1123_ _1145_ _1153_ vdd gnd OAI21X1
X_4458_ _1148_ _1153_ _1154_ vdd gnd NAND2X1
X_4459_ _1099_ _1152_ _1154_ _1155_ vdd gnd OAI21X1
X_4460_ _1137_ _1138_ _1142_ _1156_ vdd gnd OAI21X1
X_4461_ \z2.q1\[5] \z2.q1\[6] _1119_ _1157_ vdd gnd NAND3X1
X_4462_ \z2.q1\[6] _1158_ vdd gnd INVX1
X_4463_ _1158_ _1132_ _1159_ vdd gnd NAND2X1
X_4464_ \z2.q3\[2] _1160_ vdd gnd INVX1
X_4465_ \z2.q2\[6] _1161_ vdd gnd INVX1
X_4466_ _1160_ _1161_ _1162_ vdd gnd NAND2X1
X_4467_ \z2.q3\[2] \z2.q2\[6] _1163_ vdd gnd NAND2X1
X_4468_ _1163_ _1162_ _1164_ vdd gnd NAND2X1
X_4469_ _1164_ _1165_ vdd gnd INVX1
X_4470_ _1157_ _1165_ _1159_ _1166_ vdd gnd NAND3X1
X_4471_ _1159_ _1157_ _1165_ _1167_ vdd gnd AOI21X1
X_4472_ _1167_ _1168_ vdd gnd INVX1
X_4473_ _1156_ _1166_ _1168_ _1169_ vdd gnd NAND3X1
X_4474_ _1156_ _1170_ vdd gnd INVX1
X_4475_ _1166_ _1171_ vdd gnd INVX1
X_4476_ _1167_ _1171_ _1170_ _1172_ vdd gnd OAI21X1
X_4477_ _1172_ _1169_ _1173_ vdd gnd NAND2X1
X_4478_ _1173_ _1155_ _1174_ vdd gnd NAND2X1
X_4479_ _1128_ _1149_ _1175_ vdd gnd NOR2X1
X_4480_ _1148_ _1153_ _1175_ _1127_ _1176_ vdd 
+ gnd
+ AOI22X1
X_4481_ _1169_ _1172_ _1177_ vdd gnd AND2X2
X_4482_ _1177_ _1176_ _1178_ vdd gnd NAND2X1
X_4483_ _1174_ _1178_ q1[10] vdd gnd NAND2X1
X_4484_ _1173_ _1176_ _1169_ _1179_ vdd gnd OAI21X1
X_4485_ _1160_ _1161_ _1166_ _1180_ vdd gnd OAI21X1
X_4486_ \z2.q3\[3] \z2.q2\[7] _1181_ vdd gnd NOR2X1
X_4487_ \z2.q3\[3] _1182_ vdd gnd INVX1
X_4488_ \z2.q2\[7] _1183_ vdd gnd INVX1
X_4489_ _1182_ _1183_ _1184_ vdd gnd NOR2X1
X_4490_ _1181_ _1184_ _1185_ vdd gnd NOR2X1
X_4491_ \z2.q1\[7] _1186_ vdd gnd INVX1
X_4492_ _1158_ _1132_ _1186_ _1187_ vdd gnd OAI21X1
X_4493_ _1119_ \z2.q1\[5] _1188_ vdd gnd AND2X2
X_4494_ \z2.q1\[6] \z2.q1\[7] _1188_ _1189_ vdd gnd NAND3X1
X_4495_ _1185_ _1187_ _1189_ _1190_ vdd gnd NAND3X1
X_4496_ _1185_ _1191_ vdd gnd INVX1
X_4497_ _1158_ _1132_ \z2.q1\[7] _1192_ vdd gnd OAI21X1
X_4498_ \z2.q1\[6] _1186_ _1188_ _1193_ vdd gnd NAND3X1
X_4499_ _1191_ _1192_ _1193_ _1194_ vdd gnd NAND3X1
X_4500_ _1190_ _1194_ _1180_ _1195_ vdd gnd NAND3X1
X_4501_ _1166_ _1163_ _1196_ vdd gnd AND2X2
X_4502_ _1190_ _1194_ _1197_ vdd gnd NAND2X1
X_4503_ _1196_ _1197_ _1198_ vdd gnd NAND2X1
X_4504_ _1195_ _1198_ _1199_ vdd gnd NAND2X1
X_4505_ _1179_ _1199_ _1200_ vdd gnd OR2X2
X_4506_ _1199_ _1179_ _1201_ vdd gnd NAND2X1
X_4507_ _1201_ _1200_ q1[11] vdd gnd NAND2X1
X_4508_ _1196_ _1197_ _1169_ _1202_ vdd gnd OAI21X1
X_4509_ _1198_ _1202_ _1203_ vdd gnd NAND2X1
X_4510_ _1195_ _1198_ _1177_ _1204_ vdd gnd NAND3X1
X_4511_ _1204_ _1176_ _1203_ _1205_ vdd gnd OAI21X1
X_4512_ _1182_ _1183_ _1190_ _1206_ vdd gnd OAI21X1
X_4513_ \z2.q3\[4] _1206_ _1207_ vdd gnd NAND2X1
X_4514_ _1206_ \z2.q3\[4] _1208_ vdd gnd OR2X2
X_4515_ _1207_ _1208_ _1205_ _1209_ vdd gnd NAND3X1
X_4516_ _1173_ _1199_ _1210_ vdd gnd NOR2X1
X_4517_ _1198_ _1202_ _1210_ _1155_ _1211_ vdd 
+ gnd
+ AOI22X1
X_4518_ _1207_ _1208_ _1212_ vdd gnd NAND2X1
X_4519_ _1212_ _1211_ _1213_ vdd gnd NAND2X1
X_4520_ _1209_ _1213_ q1[12] vdd gnd AND2X2
X_4521_ \z2.q3\[5] _1214_ vdd gnd INVX1
X_4522_ _1212_ _1211_ _1207_ _1215_ vdd gnd OAI21X1
X_4523_ _1214_ _1215_ _1216_ vdd gnd NAND2X1
X_4524_ \z2.q3\[5] _1207_ _1209_ _1217_ vdd gnd NAND3X1
X_4525_ _1217_ _1216_ q1[13] vdd gnd NAND2X1
X_4526_ \z2.q3\[6] _1218_ vdd gnd INVX1
X_4527_ \z2.q3\[5] _1207_ _1208_ _1219_ vdd gnd NAND3X1
X_4528_ _1214_ _1207_ _1219_ _1211_ _1220_ vdd 
+ gnd
+ OAI22X1
X_4529_ _1218_ _1220_ _1221_ vdd gnd NAND2X1
X_4530_ _1207_ _1222_ vdd gnd INVX1
X_4531_ _1219_ _1223_ vdd gnd INVX1
X_4532_ \z2.q3\[5] _1222_ _1205_ _1223_ _1224_ vdd 
+ gnd
+ AOI22X1
X_4533_ \z2.q3\[6] _1224_ _1225_ vdd gnd NAND2X1
X_4534_ _1225_ _1221_ q1[14] vdd gnd NAND2X1
X_4535_ _1218_ _1224_ \z2.q3\[7] _1226_ vdd gnd OAI21X1
X_4536_ \z2.q3\[7] _1227_ vdd gnd INVX1
X_4537_ \z2.q3\[6] _1227_ _1220_ _1228_ vdd gnd NAND3X1
X_4538_ _1228_ _1226_ q1[15] vdd gnd NAND2X1
X_4539_ _1234_ _1247_ _1229_ vdd gnd NOR2X1
X_4540_ _1229_ _1268_ q1[5] vdd gnd NOR2X1
X_4541_ \z2.z1.q1\[0] \z2.z1.z1.z2.s\ _1294_ vdd gnd NOR2X1
X_4542_ \z2.z1.q1\[0] \z2.z1.z1.z2.s\ _1295_ vdd gnd AND2X2
X_4543_ _1294_ _1295_ _1296_ vdd gnd NOR2X1
X_4544_ \z2.z1.q2\[0] _1296_ _1297_ vdd gnd NAND2X1
X_4545_ _1297_ _1298_ vdd gnd INVX1
X_4546_ \z2.z1.q2\[0] _1296_ _1299_ vdd gnd NOR2X1
X_4547_ _1299_ _1298_ q1[2] vdd gnd NOR2X1
X_4548_ \z2.z1.q1\[0] \z2.z1.z1.z2.s\ _1300_ vdd gnd NAND2X1
X_4549_ \z2.z1.z2.z1.s\ \z2.z1.z1.z2.c\ _1301_ vdd gnd NOR2X1
X_4550_ \z2.z1.z2.z1.s\ \z2.z1.z1.z2.c\ _1302_ vdd gnd NAND2X1
X_4551_ _1302_ _1303_ vdd gnd INVX1
X_4552_ _1301_ _1303_ _1300_ _1304_ vdd gnd OAI21X1
X_4553_ \z2.z1.z2.z1.s\ _1305_ vdd gnd INVX1
X_4554_ \z2.z1.z1.z2.c\ _1306_ vdd gnd INVX1
X_4555_ _1305_ _1306_ _1307_ vdd gnd NAND2X1
X_4556_ _1295_ _1302_ _1307_ _1308_ vdd gnd NAND3X1
X_4557_ \z2.z1.z3.z1.s\ _1308_ _1304_ _1309_ vdd gnd NAND3X1
X_4558_ \z2.z1.z3.z1.s\ _1310_ vdd gnd INVX1
X_4559_ _1308_ _1304_ _1311_ vdd gnd NAND2X1
X_4560_ _1310_ _1311_ _1312_ vdd gnd NAND2X1
X_4561_ _1298_ _1309_ _1312_ _1313_ vdd gnd NAND3X1
X_4562_ _1313_ _1314_ vdd gnd INVX1
X_4563_ _1309_ _1315_ vdd gnd INVX1
X_4564_ _1300_ _1301_ _1302_ _1316_ vdd gnd OAI21X1
X_4565_ \z2.z1.z2.z2.s\ _1316_ _1317_ vdd gnd NAND2X1
X_4566_ \z2.z1.z2.z2.s\ _1318_ vdd gnd INVX1
X_4567_ _1318_ _1302_ _1308_ _1319_ vdd gnd NAND3X1
X_4568_ \z2.z1.q3\[0] \z2.z1.z3.z2.s\ _1320_ vdd gnd NAND2X1
X_4569_ \z2.z1.q3\[0] _1321_ vdd gnd INVX1
X_4570_ \z2.z1.z3.z2.s\ _1322_ vdd gnd INVX1
X_4571_ _1321_ _1322_ _1323_ vdd gnd NAND2X1
X_4572_ _1320_ _1323_ _1324_ vdd gnd NAND2X1
X_4573_ _1324_ _1325_ vdd gnd INVX1
X_4574_ _1317_ _1325_ _1319_ _1326_ vdd gnd NAND3X1
X_4575_ _1316_ \z2.z1.z2.z2.s\ _1327_ vdd gnd AND2X2
X_4576_ \z2.z1.z2.z2.s\ _1316_ _1328_ vdd gnd NOR2X1
X_4577_ _1328_ _1327_ _1324_ _1329_ vdd gnd OAI21X1
X_4578_ _1315_ _1326_ _1329_ _1330_ vdd gnd NAND3X1
X_4579_ _1326_ _1331_ vdd gnd INVX1
X_4580_ _1319_ _1317_ _1325_ _1332_ vdd gnd AOI21X1
X_4581_ _1332_ _1331_ _1309_ _1333_ vdd gnd OAI21X1
X_4582_ _1314_ _1330_ _1333_ _1334_ vdd gnd NAND3X1
X_4583_ _1330_ _1335_ vdd gnd INVX1
X_4584_ _1311_ _1336_ vdd gnd INVX1
X_4585_ \z2.z1.z3.z1.s\ _1336_ _1329_ _1326_ _1337_ vdd 
+ gnd
+ AOI22X1
X_4586_ _1337_ _1335_ _1313_ _1338_ vdd gnd OAI21X1
X_4587_ _1338_ _1334_ \z2.q0\[4] vdd gnd AND2X2
X_4588_ _1313_ _1337_ _1330_ _1339_ vdd gnd OAI21X1
X_4589_ _1321_ _1322_ _1326_ _1340_ vdd gnd OAI21X1
X_4590_ \z2.z1.z4.z1.s\ \z2.z1.z3.z2.c\ _1341_ vdd gnd NAND2X1
X_4591_ \z2.z1.z4.z1.s\ \z2.z1.z3.z2.c\ _1342_ vdd gnd OR2X2
X_4592_ _1341_ _1342_ _1343_ vdd gnd NAND2X1
X_4593_ _1343_ _1344_ vdd gnd INVX1
X_4594_ \z2.z1.z2.z2.c\ _1327_ _1345_ vdd gnd NAND2X1
X_4595_ \z2.z1.z2.z2.c\ _1346_ vdd gnd INVX1
X_4596_ _1346_ _1317_ _1347_ vdd gnd NAND2X1
X_4597_ _1344_ _1347_ _1345_ _1348_ vdd gnd NAND3X1
X_4598_ \z2.z1.z2.z2.c\ _1317_ _1349_ vdd gnd NAND2X1
X_4599_ _1346_ _1327_ _1350_ vdd gnd NAND2X1
X_4600_ _1343_ _1349_ _1350_ _1351_ vdd gnd NAND3X1
X_4601_ _1340_ _1348_ _1351_ _1352_ vdd gnd NAND3X1
X_4602_ _1340_ _1353_ vdd gnd INVX1
X_4603_ _1350_ _1349_ _1343_ _1354_ vdd gnd AOI21X1
X_4604_ _1345_ _1347_ _1344_ _1355_ vdd gnd AOI21X1
X_4605_ _1354_ _1355_ _1353_ _1356_ vdd gnd OAI21X1
X_4606_ _1352_ _1356_ _1357_ vdd gnd NAND2X1
X_4607_ _1339_ _1357_ _1358_ vdd gnd NAND2X1
X_4608_ _1357_ _1339_ _1359_ vdd gnd OR2X2
X_4609_ _1358_ _1359_ \z2.q0\[5] vdd gnd NAND2X1
X_4610_ \z2.z1.z4.z2.s\ _1360_ vdd gnd INVX1
X_4611_ _1341_ _1361_ vdd gnd INVX1
X_4612_ _1361_ _1354_ _1360_ _1362_ vdd gnd OAI21X1
X_4613_ \z2.z1.z4.z2.s\ _1341_ _1348_ _1363_ vdd gnd NAND3X1
X_4614_ _1356_ _1339_ _1364_ vdd gnd NAND2X1
X_4615_ _1362_ _1363_ _1364_ _1352_ _1365_ vdd 
+ gnd
+ AOI22X1
X_4616_ _1363_ _1362_ _1366_ vdd gnd NAND2X1
X_4617_ _1330_ _1352_ _1334_ _1367_ vdd gnd NAND3X1
X_4618_ _1367_ _1356_ _1366_ _1368_ vdd gnd AOI21X1
X_4619_ _1365_ _1368_ \z2.q0\[6] vdd gnd NOR2X1
X_4620_ _1361_ _1354_ \z2.z1.z4.z2.s\ _1287_ vdd gnd OAI21X1
X_4621_ _1356_ _1366_ _1367_ _1288_ vdd gnd NAND3X1
X_4622_ \z2.z1.z4.z2.c\ _1287_ _1288_ _1289_ vdd gnd NAND3X1
X_4623_ \z2.z1.z4.z2.c\ _1290_ vdd gnd INVX1
X_4624_ _1287_ _1291_ vdd gnd INVX1
X_4625_ _1291_ _1365_ _1290_ _1292_ vdd gnd OAI21X1
X_4626_ _1289_ _1292_ \z2.q0\[7] vdd gnd NAND2X1
X_4627_ _1312_ _1309_ _1298_ _1293_ vdd gnd AOI21X1
X_4628_ _1293_ _1314_ q1[3] vdd gnd NOR2X1
X_4629_ b[0] a[8] q1[0] vdd gnd AND2X2
X_4630_ b[0] a[9] \z2.z1.z1.z1.a\ vdd gnd AND2X2
X_4631_ a[8] b[1] \z2.z1.z1.z1.b\ vdd gnd AND2X2
X_4632_ a[9] b[1] \z2.z1.z1.z2.a\ vdd gnd AND2X2
X_4633_ \z2.z1.z1.z1.b\ _1369_ vdd gnd INVX1
X_4634_ \z2.z1.z1.z1.a\ _1369_ _1370_ vdd gnd NAND2X1
X_4635_ \z2.z1.z1.z1.a\ _1371_ vdd gnd INVX1
X_4636_ \z2.z1.z1.z1.b\ _1371_ _1372_ vdd gnd NAND2X1
X_4637_ _1370_ _1372_ \z2.z1.z1.z1.s\ vdd gnd NAND2X1
X_4638_ _1369_ _1371_ \z2.z1.z1.z1.c\ vdd gnd NOR2X1
X_4639_ \z2.z1.z1.z1.c\ _1373_ vdd gnd INVX1
X_4640_ \z2.z1.z1.z2.a\ _1373_ _1374_ vdd gnd NAND2X1
X_4641_ \z2.z1.z1.z2.a\ _1375_ vdd gnd INVX1
X_4642_ \z2.z1.z1.z1.c\ _1375_ _1376_ vdd gnd NAND2X1
X_4643_ _1374_ _1376_ \z2.z1.z1.z2.s\ vdd gnd NAND2X1
X_4644_ _1373_ _1375_ \z2.z1.z1.z2.c\ vdd gnd NOR2X1
X_4645_ b[0] a[10] \z2.z1.q1\[0] vdd gnd AND2X2
X_4646_ b[0] a[11] \z2.z1.z2.z1.a\ vdd gnd AND2X2
X_4647_ a[10] b[1] \z2.z1.z2.z1.b\ vdd gnd AND2X2
X_4648_ a[11] b[1] \z2.z1.z2.z2.a\ vdd gnd AND2X2
X_4649_ \z2.z1.z2.z1.b\ _1377_ vdd gnd INVX1
X_4650_ \z2.z1.z2.z1.a\ _1377_ _1378_ vdd gnd NAND2X1
X_4651_ \z2.z1.z2.z1.a\ _1379_ vdd gnd INVX1
X_4652_ \z2.z1.z2.z1.b\ _1379_ _1380_ vdd gnd NAND2X1
X_4653_ _1378_ _1380_ \z2.z1.z2.z1.s\ vdd gnd NAND2X1
X_4654_ _1377_ _1379_ \z2.z1.z2.z1.c\ vdd gnd NOR2X1
X_4655_ \z2.z1.z2.z1.c\ _1381_ vdd gnd INVX1
X_4656_ \z2.z1.z2.z2.a\ _1381_ _1382_ vdd gnd NAND2X1
X_4657_ \z2.z1.z2.z2.a\ _1383_ vdd gnd INVX1
X_4658_ \z2.z1.z2.z1.c\ _1383_ _1384_ vdd gnd NAND2X1
X_4659_ _1382_ _1384_ \z2.z1.z2.z2.s\ vdd gnd NAND2X1
X_4660_ _1381_ _1383_ \z2.z1.z2.z2.c\ vdd gnd NOR2X1
X_4661_ b[2] a[8] \z2.z1.q2\[0] vdd gnd AND2X2
X_4662_ b[2] a[9] \z2.z1.z3.z1.a\ vdd gnd AND2X2
X_4663_ a[8] b[3] \z2.z1.z3.z1.b\ vdd gnd AND2X2
X_4664_ a[9] b[3] \z2.z1.z3.z2.a\ vdd gnd AND2X2
X_4665_ \z2.z1.z3.z1.b\ _1385_ vdd gnd INVX1
X_4666_ \z2.z1.z3.z1.a\ _1385_ _1386_ vdd gnd NAND2X1
X_4667_ \z2.z1.z3.z1.a\ _1387_ vdd gnd INVX1
X_4668_ \z2.z1.z3.z1.b\ _1387_ _1388_ vdd gnd NAND2X1
X_4669_ _1386_ _1388_ \z2.z1.z3.z1.s\ vdd gnd NAND2X1
X_4670_ _1385_ _1387_ \z2.z1.z3.z1.c\ vdd gnd NOR2X1
X_4671_ \z2.z1.z3.z1.c\ _1389_ vdd gnd INVX1
X_4672_ \z2.z1.z3.z2.a\ _1389_ _1390_ vdd gnd NAND2X1
X_4673_ \z2.z1.z3.z2.a\ _1391_ vdd gnd INVX1
X_4674_ \z2.z1.z3.z1.c\ _1391_ _1392_ vdd gnd NAND2X1
X_4675_ _1390_ _1392_ \z2.z1.z3.z2.s\ vdd gnd NAND2X1
X_4676_ _1389_ _1391_ \z2.z1.z3.z2.c\ vdd gnd NOR2X1
X_4677_ b[2] a[10] \z2.z1.q3\[0] vdd gnd AND2X2
X_4678_ b[2] a[11] \z2.z1.z4.z1.a\ vdd gnd AND2X2
X_4679_ a[10] b[3] \z2.z1.z4.z1.b\ vdd gnd AND2X2
X_4680_ a[11] b[3] \z2.z1.z4.z2.a\ vdd gnd AND2X2
X_4681_ \z2.z1.z4.z1.b\ _1393_ vdd gnd INVX1
X_4682_ \z2.z1.z4.z1.a\ _1393_ _1394_ vdd gnd NAND2X1
X_4683_ \z2.z1.z4.z1.a\ _1395_ vdd gnd INVX1
X_4684_ \z2.z1.z4.z1.b\ _1395_ _1396_ vdd gnd NAND2X1
X_4685_ _1394_ _1396_ \z2.z1.z4.z1.s\ vdd gnd NAND2X1
X_4686_ _1393_ _1395_ \z2.z1.z4.z1.c\ vdd gnd NOR2X1
X_4687_ \z2.z1.z4.z1.c\ _1397_ vdd gnd INVX1
X_4688_ \z2.z1.z4.z2.a\ _1397_ _1398_ vdd gnd NAND2X1
X_4689_ \z2.z1.z4.z2.a\ _1399_ vdd gnd INVX1
X_4690_ \z2.z1.z4.z1.c\ _1399_ _1400_ vdd gnd NAND2X1
X_4691_ _1398_ _1400_ \z2.z1.z4.z2.s\ vdd gnd NAND2X1
X_4692_ _1397_ _1399_ \z2.z1.z4.z2.c\ vdd gnd NOR2X1
X_4693_ \z2.z2.q1\[0] \z2.z2.z1.z2.s\ _1408_ vdd gnd NOR2X1
X_4694_ \z2.z2.q1\[0] \z2.z2.z1.z2.s\ _1409_ vdd gnd AND2X2
X_4695_ _1408_ _1409_ _1410_ vdd gnd NOR2X1
X_4696_ \z2.z2.q2\[0] _1410_ _1411_ vdd gnd NAND2X1
X_4697_ _1411_ _1412_ vdd gnd INVX1
X_4698_ \z2.z2.q2\[0] _1410_ _1413_ vdd gnd NOR2X1
X_4699_ _1413_ _1412_ \z2.q1\[2] vdd gnd NOR2X1
X_4700_ \z2.z2.q1\[0] \z2.z2.z1.z2.s\ _1414_ vdd gnd NAND2X1
X_4701_ \z2.z2.z2.z1.s\ \z2.z2.z1.z2.c\ _1415_ vdd gnd NOR2X1
X_4702_ \z2.z2.z2.z1.s\ \z2.z2.z1.z2.c\ _1416_ vdd gnd NAND2X1
X_4703_ _1416_ _1417_ vdd gnd INVX1
X_4704_ _1415_ _1417_ _1414_ _1418_ vdd gnd OAI21X1
X_4705_ \z2.z2.z2.z1.s\ _1419_ vdd gnd INVX1
X_4706_ \z2.z2.z1.z2.c\ _1420_ vdd gnd INVX1
X_4707_ _1419_ _1420_ _1421_ vdd gnd NAND2X1
X_4708_ _1409_ _1416_ _1421_ _1422_ vdd gnd NAND3X1
X_4709_ \z2.z2.z3.z1.s\ _1422_ _1418_ _1423_ vdd gnd NAND3X1
X_4710_ \z2.z2.z3.z1.s\ _1424_ vdd gnd INVX1
X_4711_ _1422_ _1418_ _1425_ vdd gnd NAND2X1
X_4712_ _1424_ _1425_ _1426_ vdd gnd NAND2X1
X_4713_ _1412_ _1423_ _1426_ _1427_ vdd gnd NAND3X1
X_4714_ _1427_ _1428_ vdd gnd INVX1
X_4715_ _1423_ _1429_ vdd gnd INVX1
X_4716_ _1414_ _1415_ _1416_ _1430_ vdd gnd OAI21X1
X_4717_ \z2.z2.z2.z2.s\ _1430_ _1431_ vdd gnd NAND2X1
X_4718_ \z2.z2.z2.z2.s\ _1432_ vdd gnd INVX1
X_4719_ _1432_ _1416_ _1422_ _1433_ vdd gnd NAND3X1
X_4720_ \z2.z2.q3\[0] \z2.z2.z3.z2.s\ _1434_ vdd gnd NAND2X1
X_4721_ \z2.z2.q3\[0] _1435_ vdd gnd INVX1
X_4722_ \z2.z2.z3.z2.s\ _1436_ vdd gnd INVX1
X_4723_ _1435_ _1436_ _1437_ vdd gnd NAND2X1
X_4724_ _1434_ _1437_ _1438_ vdd gnd NAND2X1
X_4725_ _1438_ _1439_ vdd gnd INVX1
X_4726_ _1431_ _1439_ _1433_ _1440_ vdd gnd NAND3X1
X_4727_ _1430_ \z2.z2.z2.z2.s\ _1441_ vdd gnd AND2X2
X_4728_ \z2.z2.z2.z2.s\ _1430_ _1442_ vdd gnd NOR2X1
X_4729_ _1442_ _1441_ _1438_ _1443_ vdd gnd OAI21X1
X_4730_ _1429_ _1440_ _1443_ _1444_ vdd gnd NAND3X1
X_4731_ _1440_ _1445_ vdd gnd INVX1
X_4732_ _1433_ _1431_ _1439_ _1446_ vdd gnd AOI21X1
X_4733_ _1446_ _1445_ _1423_ _1447_ vdd gnd OAI21X1
X_4734_ _1428_ _1444_ _1447_ _1448_ vdd gnd NAND3X1
X_4735_ _1444_ _1449_ vdd gnd INVX1
X_4736_ _1425_ _1450_ vdd gnd INVX1
X_4737_ \z2.z2.z3.z1.s\ _1450_ _1443_ _1440_ _1451_ vdd 
+ gnd
+ AOI22X1
X_4738_ _1451_ _1449_ _1427_ _1452_ vdd gnd OAI21X1
X_4739_ _1452_ _1448_ \z2.q1\[4] vdd gnd AND2X2
X_4740_ _1427_ _1451_ _1444_ _1453_ vdd gnd OAI21X1
X_4741_ _1435_ _1436_ _1440_ _1454_ vdd gnd OAI21X1
X_4742_ \z2.z2.z4.z1.s\ \z2.z2.z3.z2.c\ _1455_ vdd gnd NAND2X1
X_4743_ \z2.z2.z4.z1.s\ \z2.z2.z3.z2.c\ _1456_ vdd gnd OR2X2
X_4744_ _1455_ _1456_ _1457_ vdd gnd NAND2X1
X_4745_ _1457_ _1458_ vdd gnd INVX1
X_4746_ \z2.z2.z2.z2.c\ _1441_ _1459_ vdd gnd NAND2X1
X_4747_ \z2.z2.z2.z2.c\ _1460_ vdd gnd INVX1
X_4748_ _1460_ _1431_ _1461_ vdd gnd NAND2X1
X_4749_ _1458_ _1461_ _1459_ _1462_ vdd gnd NAND3X1
X_4750_ \z2.z2.z2.z2.c\ _1431_ _1463_ vdd gnd NAND2X1
X_4751_ _1460_ _1441_ _1464_ vdd gnd NAND2X1
X_4752_ _1457_ _1463_ _1464_ _1465_ vdd gnd NAND3X1
X_4753_ _1454_ _1462_ _1465_ _1466_ vdd gnd NAND3X1
X_4754_ _1454_ _1467_ vdd gnd INVX1
X_4755_ _1464_ _1463_ _1457_ _1468_ vdd gnd AOI21X1
X_4756_ _1459_ _1461_ _1458_ _1469_ vdd gnd AOI21X1
X_4757_ _1468_ _1469_ _1467_ _1470_ vdd gnd OAI21X1
X_4758_ _1466_ _1470_ _1471_ vdd gnd NAND2X1
X_4759_ _1453_ _1471_ _1472_ vdd gnd NAND2X1
X_4760_ _1471_ _1453_ _1473_ vdd gnd OR2X2
X_4761_ _1472_ _1473_ \z2.q1\[5] vdd gnd NAND2X1
X_4762_ \z2.z2.z4.z2.s\ _1474_ vdd gnd INVX1
X_4763_ _1455_ _1475_ vdd gnd INVX1
X_4764_ _1475_ _1468_ _1474_ _1476_ vdd gnd OAI21X1
X_4765_ \z2.z2.z4.z2.s\ _1455_ _1462_ _1477_ vdd gnd NAND3X1
X_4766_ _1470_ _1453_ _1478_ vdd gnd NAND2X1
X_4767_ _1476_ _1477_ _1478_ _1466_ _1479_ vdd 
+ gnd
+ AOI22X1
X_4768_ _1477_ _1476_ _1480_ vdd gnd NAND2X1
X_4769_ _1444_ _1466_ _1448_ _1481_ vdd gnd NAND3X1
X_4770_ _1481_ _1470_ _1480_ _1482_ vdd gnd AOI21X1
X_4771_ _1479_ _1482_ \z2.q1\[6] vdd gnd NOR2X1
X_4772_ _1475_ _1468_ \z2.z2.z4.z2.s\ _1401_ vdd gnd OAI21X1
X_4773_ _1470_ _1480_ _1481_ _1402_ vdd gnd NAND3X1
X_4774_ \z2.z2.z4.z2.c\ _1401_ _1402_ _1403_ vdd gnd NAND3X1
X_4775_ \z2.z2.z4.z2.c\ _1404_ vdd gnd INVX1
X_4776_ _1401_ _1405_ vdd gnd INVX1
X_4777_ _1405_ _1479_ _1404_ _1406_ vdd gnd OAI21X1
X_4778_ _1403_ _1406_ \z2.q1\[7] vdd gnd NAND2X1
X_4779_ _1426_ _1423_ _1412_ _1407_ vdd gnd AOI21X1
X_4780_ _1407_ _1428_ \z2.q1\[3] vdd gnd NOR2X1
X_4781_ b[0] a[12] \z2.q1\[0] vdd gnd AND2X2
X_4782_ b[0] a[13] \z2.z2.z1.z1.a\ vdd gnd AND2X2
X_4783_ a[12] b[1] \z2.z2.z1.z1.b\ vdd gnd AND2X2
X_4784_ a[13] b[1] \z2.z2.z1.z2.a\ vdd gnd AND2X2
X_4785_ \z2.z2.z1.z1.b\ _1483_ vdd gnd INVX1
X_4786_ \z2.z2.z1.z1.a\ _1483_ _1484_ vdd gnd NAND2X1
X_4787_ \z2.z2.z1.z1.a\ _1485_ vdd gnd INVX1
X_4788_ \z2.z2.z1.z1.b\ _1485_ _1486_ vdd gnd NAND2X1
X_4789_ _1484_ _1486_ \z2.z2.z1.z1.s\ vdd gnd NAND2X1
X_4790_ _1483_ _1485_ \z2.z2.z1.z1.c\ vdd gnd NOR2X1
X_4791_ \z2.z2.z1.z1.c\ _1487_ vdd gnd INVX1
X_4792_ \z2.z2.z1.z2.a\ _1487_ _1488_ vdd gnd NAND2X1
X_4793_ \z2.z2.z1.z2.a\ _1489_ vdd gnd INVX1
X_4794_ \z2.z2.z1.z1.c\ _1489_ _1490_ vdd gnd NAND2X1
X_4795_ _1488_ _1490_ \z2.z2.z1.z2.s\ vdd gnd NAND2X1
X_4796_ _1487_ _1489_ \z2.z2.z1.z2.c\ vdd gnd NOR2X1
X_4797_ b[0] a[14] \z2.z2.q1\[0] vdd gnd AND2X2
X_4798_ b[0] a[15] \z2.z2.z2.z1.a\ vdd gnd AND2X2
X_4799_ a[14] b[1] \z2.z2.z2.z1.b\ vdd gnd AND2X2
X_4800_ a[15] b[1] \z2.z2.z2.z2.a\ vdd gnd AND2X2
X_4801_ \z2.z2.z2.z1.b\ _1491_ vdd gnd INVX1
X_4802_ \z2.z2.z2.z1.a\ _1491_ _1492_ vdd gnd NAND2X1
X_4803_ \z2.z2.z2.z1.a\ _1493_ vdd gnd INVX1
X_4804_ \z2.z2.z2.z1.b\ _1493_ _1494_ vdd gnd NAND2X1
X_4805_ _1492_ _1494_ \z2.z2.z2.z1.s\ vdd gnd NAND2X1
X_4806_ _1491_ _1493_ \z2.z2.z2.z1.c\ vdd gnd NOR2X1
X_4807_ \z2.z2.z2.z1.c\ _1495_ vdd gnd INVX1
X_4808_ \z2.z2.z2.z2.a\ _1495_ _1496_ vdd gnd NAND2X1
X_4809_ \z2.z2.z2.z2.a\ _1497_ vdd gnd INVX1
X_4810_ \z2.z2.z2.z1.c\ _1497_ _1498_ vdd gnd NAND2X1
X_4811_ _1496_ _1498_ \z2.z2.z2.z2.s\ vdd gnd NAND2X1
X_4812_ _1495_ _1497_ \z2.z2.z2.z2.c\ vdd gnd NOR2X1
X_4813_ b[2] a[12] \z2.z2.q2\[0] vdd gnd AND2X2
X_4814_ b[2] a[13] \z2.z2.z3.z1.a\ vdd gnd AND2X2
X_4815_ a[12] b[3] \z2.z2.z3.z1.b\ vdd gnd AND2X2
X_4816_ a[13] b[3] \z2.z2.z3.z2.a\ vdd gnd AND2X2
X_4817_ \z2.z2.z3.z1.b\ _1499_ vdd gnd INVX1
X_4818_ \z2.z2.z3.z1.a\ _1499_ _1500_ vdd gnd NAND2X1
X_4819_ \z2.z2.z3.z1.a\ _1501_ vdd gnd INVX1
X_4820_ \z2.z2.z3.z1.b\ _1501_ _1502_ vdd gnd NAND2X1
X_4821_ _1500_ _1502_ \z2.z2.z3.z1.s\ vdd gnd NAND2X1
X_4822_ _1499_ _1501_ \z2.z2.z3.z1.c\ vdd gnd NOR2X1
X_4823_ \z2.z2.z3.z1.c\ _1503_ vdd gnd INVX1
X_4824_ \z2.z2.z3.z2.a\ _1503_ _1504_ vdd gnd NAND2X1
X_4825_ \z2.z2.z3.z2.a\ _1505_ vdd gnd INVX1
X_4826_ \z2.z2.z3.z1.c\ _1505_ _1506_ vdd gnd NAND2X1
X_4827_ _1504_ _1506_ \z2.z2.z3.z2.s\ vdd gnd NAND2X1
X_4828_ _1503_ _1505_ \z2.z2.z3.z2.c\ vdd gnd NOR2X1
X_4829_ b[2] a[14] \z2.z2.q3\[0] vdd gnd AND2X2
X_4830_ b[2] a[15] \z2.z2.z4.z1.a\ vdd gnd AND2X2
X_4831_ a[14] b[3] \z2.z2.z4.z1.b\ vdd gnd AND2X2
X_4832_ a[15] b[3] \z2.z2.z4.z2.a\ vdd gnd AND2X2
X_4833_ \z2.z2.z4.z1.b\ _1507_ vdd gnd INVX1
X_4834_ \z2.z2.z4.z1.a\ _1507_ _1508_ vdd gnd NAND2X1
X_4835_ \z2.z2.z4.z1.a\ _1509_ vdd gnd INVX1
X_4836_ \z2.z2.z4.z1.b\ _1509_ _1510_ vdd gnd NAND2X1
X_4837_ _1508_ _1510_ \z2.z2.z4.z1.s\ vdd gnd NAND2X1
X_4838_ _1507_ _1509_ \z2.z2.z4.z1.c\ vdd gnd NOR2X1
X_4839_ \z2.z2.z4.z1.c\ _1511_ vdd gnd INVX1
X_4840_ \z2.z2.z4.z2.a\ _1511_ _1512_ vdd gnd NAND2X1
X_4841_ \z2.z2.z4.z2.a\ _1513_ vdd gnd INVX1
X_4842_ \z2.z2.z4.z1.c\ _1513_ _1514_ vdd gnd NAND2X1
X_4843_ _1512_ _1514_ \z2.z2.z4.z2.s\ vdd gnd NAND2X1
X_4844_ _1511_ _1513_ \z2.z2.z4.z2.c\ vdd gnd NOR2X1
X_4845_ \z2.z3.q1\[0] \z2.z3.z1.z2.s\ _1522_ vdd gnd NOR2X1
X_4846_ \z2.z3.q1\[0] \z2.z3.z1.z2.s\ _1523_ vdd gnd AND2X2
X_4847_ _1522_ _1523_ _1524_ vdd gnd NOR2X1
X_4848_ \z2.z3.q2\[0] _1524_ _1525_ vdd gnd NAND2X1
X_4849_ _1525_ _1526_ vdd gnd INVX1
X_4850_ \z2.z3.q2\[0] _1524_ _1527_ vdd gnd NOR2X1
X_4851_ _1527_ _1526_ \z2.q2\[2] vdd gnd NOR2X1
X_4852_ \z2.z3.q1\[0] \z2.z3.z1.z2.s\ _1528_ vdd gnd NAND2X1
X_4853_ \z2.z3.z2.z1.s\ \z2.z3.z1.z2.c\ _1529_ vdd gnd NOR2X1
X_4854_ \z2.z3.z2.z1.s\ \z2.z3.z1.z2.c\ _1530_ vdd gnd NAND2X1
X_4855_ _1530_ _1531_ vdd gnd INVX1
X_4856_ _1529_ _1531_ _1528_ _1532_ vdd gnd OAI21X1
X_4857_ \z2.z3.z2.z1.s\ _1533_ vdd gnd INVX1
X_4858_ \z2.z3.z1.z2.c\ _1534_ vdd gnd INVX1
X_4859_ _1533_ _1534_ _1535_ vdd gnd NAND2X1
X_4860_ _1523_ _1530_ _1535_ _1536_ vdd gnd NAND3X1
X_4861_ \z2.z3.z3.z1.s\ _1536_ _1532_ _1537_ vdd gnd NAND3X1
X_4862_ \z2.z3.z3.z1.s\ _1538_ vdd gnd INVX1
X_4863_ _1536_ _1532_ _1539_ vdd gnd NAND2X1
X_4864_ _1538_ _1539_ _1540_ vdd gnd NAND2X1
X_4865_ _1526_ _1537_ _1540_ _1541_ vdd gnd NAND3X1
X_4866_ _1541_ _1542_ vdd gnd INVX1
X_4867_ _1537_ _1543_ vdd gnd INVX1
X_4868_ _1528_ _1529_ _1530_ _1544_ vdd gnd OAI21X1
X_4869_ \z2.z3.z2.z2.s\ _1544_ _1545_ vdd gnd NAND2X1
X_4870_ \z2.z3.z2.z2.s\ _1546_ vdd gnd INVX1
X_4871_ _1546_ _1530_ _1536_ _1547_ vdd gnd NAND3X1
X_4872_ \z2.z3.q3\[0] \z2.z3.z3.z2.s\ _1548_ vdd gnd NAND2X1
X_4873_ \z2.z3.q3\[0] _1549_ vdd gnd INVX1
X_4874_ \z2.z3.z3.z2.s\ _1550_ vdd gnd INVX1
X_4875_ _1549_ _1550_ _1551_ vdd gnd NAND2X1
X_4876_ _1548_ _1551_ _1552_ vdd gnd NAND2X1
X_4877_ _1552_ _1553_ vdd gnd INVX1
X_4878_ _1545_ _1553_ _1547_ _1554_ vdd gnd NAND3X1
X_4879_ _1544_ \z2.z3.z2.z2.s\ _1555_ vdd gnd AND2X2
X_4880_ \z2.z3.z2.z2.s\ _1544_ _1556_ vdd gnd NOR2X1
X_4881_ _1556_ _1555_ _1552_ _1557_ vdd gnd OAI21X1
X_4882_ _1543_ _1554_ _1557_ _1558_ vdd gnd NAND3X1
X_4883_ _1554_ _1559_ vdd gnd INVX1
X_4884_ _1547_ _1545_ _1553_ _1560_ vdd gnd AOI21X1
X_4885_ _1560_ _1559_ _1537_ _1561_ vdd gnd OAI21X1
X_4886_ _1542_ _1558_ _1561_ _1562_ vdd gnd NAND3X1
X_4887_ _1558_ _1563_ vdd gnd INVX1
X_4888_ _1539_ _1564_ vdd gnd INVX1
X_4889_ \z2.z3.z3.z1.s\ _1564_ _1557_ _1554_ _1565_ vdd 
+ gnd
+ AOI22X1
X_4890_ _1565_ _1563_ _1541_ _1566_ vdd gnd OAI21X1
X_4891_ _1566_ _1562_ \z2.q2\[4] vdd gnd AND2X2
X_4892_ _1541_ _1565_ _1558_ _1567_ vdd gnd OAI21X1
X_4893_ _1549_ _1550_ _1554_ _1568_ vdd gnd OAI21X1
X_4894_ \z2.z3.z4.z1.s\ \z2.z3.z3.z2.c\ _1569_ vdd gnd NAND2X1
X_4895_ \z2.z3.z4.z1.s\ \z2.z3.z3.z2.c\ _1570_ vdd gnd OR2X2
X_4896_ _1569_ _1570_ _1571_ vdd gnd NAND2X1
X_4897_ _1571_ _1572_ vdd gnd INVX1
X_4898_ \z2.z3.z2.z2.c\ _1555_ _1573_ vdd gnd NAND2X1
X_4899_ \z2.z3.z2.z2.c\ _1574_ vdd gnd INVX1
X_4900_ _1574_ _1545_ _1575_ vdd gnd NAND2X1
X_4901_ _1572_ _1575_ _1573_ _1576_ vdd gnd NAND3X1
X_4902_ \z2.z3.z2.z2.c\ _1545_ _1577_ vdd gnd NAND2X1
X_4903_ _1574_ _1555_ _1578_ vdd gnd NAND2X1
X_4904_ _1571_ _1577_ _1578_ _1579_ vdd gnd NAND3X1
X_4905_ _1568_ _1576_ _1579_ _1580_ vdd gnd NAND3X1
X_4906_ _1568_ _1581_ vdd gnd INVX1
X_4907_ _1578_ _1577_ _1571_ _1582_ vdd gnd AOI21X1
X_4908_ _1573_ _1575_ _1572_ _1583_ vdd gnd AOI21X1
X_4909_ _1582_ _1583_ _1581_ _1584_ vdd gnd OAI21X1
X_4910_ _1580_ _1584_ _1585_ vdd gnd NAND2X1
X_4911_ _1567_ _1585_ _1586_ vdd gnd NAND2X1
X_4912_ _1585_ _1567_ _1587_ vdd gnd OR2X2
X_4913_ _1586_ _1587_ \z2.q2\[5] vdd gnd NAND2X1
X_4914_ \z2.z3.z4.z2.s\ _1588_ vdd gnd INVX1
X_4915_ _1569_ _1589_ vdd gnd INVX1
X_4916_ _1589_ _1582_ _1588_ _1590_ vdd gnd OAI21X1
X_4917_ \z2.z3.z4.z2.s\ _1569_ _1576_ _1591_ vdd gnd NAND3X1
X_4918_ _1584_ _1567_ _1592_ vdd gnd NAND2X1
X_4919_ _1590_ _1591_ _1592_ _1580_ _1593_ vdd 
+ gnd
+ AOI22X1
X_4920_ _1591_ _1590_ _1594_ vdd gnd NAND2X1
X_4921_ _1558_ _1580_ _1562_ _1595_ vdd gnd NAND3X1
X_4922_ _1595_ _1584_ _1594_ _1596_ vdd gnd AOI21X1
X_4923_ _1593_ _1596_ \z2.q2\[6] vdd gnd NOR2X1
X_4924_ _1589_ _1582_ \z2.z3.z4.z2.s\ _1515_ vdd gnd OAI21X1
X_4925_ _1584_ _1594_ _1595_ _1516_ vdd gnd NAND3X1
X_4926_ \z2.z3.z4.z2.c\ _1515_ _1516_ _1517_ vdd gnd NAND3X1
X_4927_ \z2.z3.z4.z2.c\ _1518_ vdd gnd INVX1
X_4928_ _1515_ _1519_ vdd gnd INVX1
X_4929_ _1519_ _1593_ _1518_ _1520_ vdd gnd OAI21X1
X_4930_ _1517_ _1520_ \z2.q2\[7] vdd gnd NAND2X1
X_4931_ _1540_ _1537_ _1526_ _1521_ vdd gnd AOI21X1
X_4932_ _1521_ _1542_ \z2.q2\[3] vdd gnd NOR2X1
X_4933_ b[4] a[8] \z2.q2\[0] vdd gnd AND2X2
X_4934_ b[4] a[9] \z2.z3.z1.z1.a\ vdd gnd AND2X2
X_4935_ a[8] b[5] \z2.z3.z1.z1.b\ vdd gnd AND2X2
X_4936_ a[9] b[5] \z2.z3.z1.z2.a\ vdd gnd AND2X2
X_4937_ \z2.z3.z1.z1.b\ _1597_ vdd gnd INVX1
X_4938_ \z2.z3.z1.z1.a\ _1597_ _1598_ vdd gnd NAND2X1
X_4939_ \z2.z3.z1.z1.a\ _1599_ vdd gnd INVX1
X_4940_ \z2.z3.z1.z1.b\ _1599_ _1600_ vdd gnd NAND2X1
X_4941_ _1598_ _1600_ \z2.z3.z1.z1.s\ vdd gnd NAND2X1
X_4942_ _1597_ _1599_ \z2.z3.z1.z1.c\ vdd gnd NOR2X1
X_4943_ \z2.z3.z1.z1.c\ _1601_ vdd gnd INVX1
X_4944_ \z2.z3.z1.z2.a\ _1601_ _1602_ vdd gnd NAND2X1
X_4945_ \z2.z3.z1.z2.a\ _1603_ vdd gnd INVX1
X_4946_ \z2.z3.z1.z1.c\ _1603_ _1604_ vdd gnd NAND2X1
X_4947_ _1602_ _1604_ \z2.z3.z1.z2.s\ vdd gnd NAND2X1
X_4948_ _1601_ _1603_ \z2.z3.z1.z2.c\ vdd gnd NOR2X1
X_4949_ b[4] a[10] \z2.z3.q1\[0] vdd gnd AND2X2
X_4950_ b[4] a[11] \z2.z3.z2.z1.a\ vdd gnd AND2X2
X_4951_ a[10] b[5] \z2.z3.z2.z1.b\ vdd gnd AND2X2
X_4952_ a[11] b[5] \z2.z3.z2.z2.a\ vdd gnd AND2X2
X_4953_ \z2.z3.z2.z1.b\ _1605_ vdd gnd INVX1
X_4954_ \z2.z3.z2.z1.a\ _1605_ _1606_ vdd gnd NAND2X1
X_4955_ \z2.z3.z2.z1.a\ _1607_ vdd gnd INVX1
X_4956_ \z2.z3.z2.z1.b\ _1607_ _1608_ vdd gnd NAND2X1
X_4957_ _1606_ _1608_ \z2.z3.z2.z1.s\ vdd gnd NAND2X1
X_4958_ _1605_ _1607_ \z2.z3.z2.z1.c\ vdd gnd NOR2X1
X_4959_ \z2.z3.z2.z1.c\ _1609_ vdd gnd INVX1
X_4960_ \z2.z3.z2.z2.a\ _1609_ _1610_ vdd gnd NAND2X1
X_4961_ \z2.z3.z2.z2.a\ _1611_ vdd gnd INVX1
X_4962_ \z2.z3.z2.z1.c\ _1611_ _1612_ vdd gnd NAND2X1
X_4963_ _1610_ _1612_ \z2.z3.z2.z2.s\ vdd gnd NAND2X1
X_4964_ _1609_ _1611_ \z2.z3.z2.z2.c\ vdd gnd NOR2X1
X_4965_ b[6] a[8] \z2.z3.q2\[0] vdd gnd AND2X2
X_4966_ b[6] a[9] \z2.z3.z3.z1.a\ vdd gnd AND2X2
X_4967_ a[8] b[7] \z2.z3.z3.z1.b\ vdd gnd AND2X2
X_4968_ a[9] b[7] \z2.z3.z3.z2.a\ vdd gnd AND2X2
X_4969_ \z2.z3.z3.z1.b\ _1613_ vdd gnd INVX1
X_4970_ \z2.z3.z3.z1.a\ _1613_ _1614_ vdd gnd NAND2X1
X_4971_ \z2.z3.z3.z1.a\ _1615_ vdd gnd INVX1
X_4972_ \z2.z3.z3.z1.b\ _1615_ _1616_ vdd gnd NAND2X1
X_4973_ _1614_ _1616_ \z2.z3.z3.z1.s\ vdd gnd NAND2X1
X_4974_ _1613_ _1615_ \z2.z3.z3.z1.c\ vdd gnd NOR2X1
X_4975_ \z2.z3.z3.z1.c\ _1617_ vdd gnd INVX1
X_4976_ \z2.z3.z3.z2.a\ _1617_ _1618_ vdd gnd NAND2X1
X_4977_ \z2.z3.z3.z2.a\ _1619_ vdd gnd INVX1
X_4978_ \z2.z3.z3.z1.c\ _1619_ _1620_ vdd gnd NAND2X1
X_4979_ _1618_ _1620_ \z2.z3.z3.z2.s\ vdd gnd NAND2X1
X_4980_ _1617_ _1619_ \z2.z3.z3.z2.c\ vdd gnd NOR2X1
X_4981_ b[6] a[10] \z2.z3.q3\[0] vdd gnd AND2X2
X_4982_ b[6] a[11] \z2.z3.z4.z1.a\ vdd gnd AND2X2
X_4983_ a[10] b[7] \z2.z3.z4.z1.b\ vdd gnd AND2X2
X_4984_ a[11] b[7] \z2.z3.z4.z2.a\ vdd gnd AND2X2
X_4985_ \z2.z3.z4.z1.b\ _1621_ vdd gnd INVX1
X_4986_ \z2.z3.z4.z1.a\ _1621_ _1622_ vdd gnd NAND2X1
X_4987_ \z2.z3.z4.z1.a\ _1623_ vdd gnd INVX1
X_4988_ \z2.z3.z4.z1.b\ _1623_ _1624_ vdd gnd NAND2X1
X_4989_ _1622_ _1624_ \z2.z3.z4.z1.s\ vdd gnd NAND2X1
X_4990_ _1621_ _1623_ \z2.z3.z4.z1.c\ vdd gnd NOR2X1
X_4991_ \z2.z3.z4.z1.c\ _1625_ vdd gnd INVX1
X_4992_ \z2.z3.z4.z2.a\ _1625_ _1626_ vdd gnd NAND2X1
X_4993_ \z2.z3.z4.z2.a\ _1627_ vdd gnd INVX1
X_4994_ \z2.z3.z4.z1.c\ _1627_ _1628_ vdd gnd NAND2X1
X_4995_ _1626_ _1628_ \z2.z3.z4.z2.s\ vdd gnd NAND2X1
X_4996_ _1625_ _1627_ \z2.z3.z4.z2.c\ vdd gnd NOR2X1
X_4997_ \z2.z4.q1\[0] \z2.z4.z1.z2.s\ _1636_ vdd gnd NOR2X1
X_4998_ \z2.z4.q1\[0] \z2.z4.z1.z2.s\ _1637_ vdd gnd AND2X2
X_4999_ _1636_ _1637_ _1638_ vdd gnd NOR2X1
X_5000_ \z2.z4.q2\[0] _1638_ _1639_ vdd gnd NAND2X1
X_5001_ _1639_ _1640_ vdd gnd INVX1
X_5002_ \z2.z4.q2\[0] _1638_ _1641_ vdd gnd NOR2X1
X_5003_ _1641_ _1640_ \z2.q3\[2] vdd gnd NOR2X1
X_5004_ \z2.z4.q1\[0] \z2.z4.z1.z2.s\ _1642_ vdd gnd NAND2X1
X_5005_ \z2.z4.z2.z1.s\ \z2.z4.z1.z2.c\ _1643_ vdd gnd NOR2X1
X_5006_ \z2.z4.z2.z1.s\ \z2.z4.z1.z2.c\ _1644_ vdd gnd NAND2X1
X_5007_ _1644_ _1645_ vdd gnd INVX1
X_5008_ _1643_ _1645_ _1642_ _1646_ vdd gnd OAI21X1
X_5009_ \z2.z4.z2.z1.s\ _1647_ vdd gnd INVX1
X_5010_ \z2.z4.z1.z2.c\ _1648_ vdd gnd INVX1
X_5011_ _1647_ _1648_ _1649_ vdd gnd NAND2X1
X_5012_ _1637_ _1644_ _1649_ _1650_ vdd gnd NAND3X1
X_5013_ \z2.z4.z3.z1.s\ _1650_ _1646_ _1651_ vdd gnd NAND3X1
X_5014_ \z2.z4.z3.z1.s\ _1652_ vdd gnd INVX1
X_5015_ _1650_ _1646_ _1653_ vdd gnd NAND2X1
X_5016_ _1652_ _1653_ _1654_ vdd gnd NAND2X1
X_5017_ _1640_ _1651_ _1654_ _1655_ vdd gnd NAND3X1
X_5018_ _1655_ _1656_ vdd gnd INVX1
X_5019_ _1651_ _1657_ vdd gnd INVX1
X_5020_ _1642_ _1643_ _1644_ _1658_ vdd gnd OAI21X1
X_5021_ \z2.z4.z2.z2.s\ _1658_ _1659_ vdd gnd NAND2X1
X_5022_ \z2.z4.z2.z2.s\ _1660_ vdd gnd INVX1
X_5023_ _1660_ _1644_ _1650_ _1661_ vdd gnd NAND3X1
X_5024_ \z2.z4.q3\[0] \z2.z4.z3.z2.s\ _1662_ vdd gnd NAND2X1
X_5025_ \z2.z4.q3\[0] _1663_ vdd gnd INVX1
X_5026_ \z2.z4.z3.z2.s\ _1664_ vdd gnd INVX1
X_5027_ _1663_ _1664_ _1665_ vdd gnd NAND2X1
X_5028_ _1662_ _1665_ _1666_ vdd gnd NAND2X1
X_5029_ _1666_ _1667_ vdd gnd INVX1
X_5030_ _1659_ _1667_ _1661_ _1668_ vdd gnd NAND3X1
X_5031_ _1658_ \z2.z4.z2.z2.s\ _1669_ vdd gnd AND2X2
X_5032_ \z2.z4.z2.z2.s\ _1658_ _1670_ vdd gnd NOR2X1
X_5033_ _1670_ _1669_ _1666_ _1671_ vdd gnd OAI21X1
X_5034_ _1657_ _1668_ _1671_ _1672_ vdd gnd NAND3X1
X_5035_ _1668_ _1673_ vdd gnd INVX1
X_5036_ _1661_ _1659_ _1667_ _1674_ vdd gnd AOI21X1
X_5037_ _1674_ _1673_ _1651_ _1675_ vdd gnd OAI21X1
X_5038_ _1656_ _1672_ _1675_ _1676_ vdd gnd NAND3X1
X_5039_ _1672_ _1677_ vdd gnd INVX1
X_5040_ _1653_ _1678_ vdd gnd INVX1
X_5041_ \z2.z4.z3.z1.s\ _1678_ _1671_ _1668_ _1679_ vdd 
+ gnd
+ AOI22X1
X_5042_ _1679_ _1677_ _1655_ _1680_ vdd gnd OAI21X1
X_5043_ _1680_ _1676_ \z2.q3\[4] vdd gnd AND2X2
X_5044_ _1655_ _1679_ _1672_ _1681_ vdd gnd OAI21X1
X_5045_ _1663_ _1664_ _1668_ _1682_ vdd gnd OAI21X1
X_5046_ \z2.z4.z4.z1.s\ \z2.z4.z3.z2.c\ _1683_ vdd gnd NAND2X1
X_5047_ \z2.z4.z4.z1.s\ \z2.z4.z3.z2.c\ _1684_ vdd gnd OR2X2
X_5048_ _1683_ _1684_ _1685_ vdd gnd NAND2X1
X_5049_ _1685_ _1686_ vdd gnd INVX1
X_5050_ \z2.z4.z2.z2.c\ _1669_ _1687_ vdd gnd NAND2X1
X_5051_ \z2.z4.z2.z2.c\ _1688_ vdd gnd INVX1
X_5052_ _1688_ _1659_ _1689_ vdd gnd NAND2X1
X_5053_ _1686_ _1689_ _1687_ _1690_ vdd gnd NAND3X1
X_5054_ \z2.z4.z2.z2.c\ _1659_ _1691_ vdd gnd NAND2X1
X_5055_ _1688_ _1669_ _1692_ vdd gnd NAND2X1
X_5056_ _1685_ _1691_ _1692_ _1693_ vdd gnd NAND3X1
X_5057_ _1682_ _1690_ _1693_ _1694_ vdd gnd NAND3X1
X_5058_ _1682_ _1695_ vdd gnd INVX1
X_5059_ _1692_ _1691_ _1685_ _1696_ vdd gnd AOI21X1
X_5060_ _1687_ _1689_ _1686_ _1697_ vdd gnd AOI21X1
X_5061_ _1696_ _1697_ _1695_ _1698_ vdd gnd OAI21X1
X_5062_ _1694_ _1698_ _1699_ vdd gnd NAND2X1
X_5063_ _1681_ _1699_ _1700_ vdd gnd NAND2X1
X_5064_ _1699_ _1681_ _1701_ vdd gnd OR2X2
X_5065_ _1700_ _1701_ \z2.q3\[5] vdd gnd NAND2X1
X_5066_ \z2.z4.z4.z2.s\ _1702_ vdd gnd INVX1
X_5067_ _1683_ _1703_ vdd gnd INVX1
X_5068_ _1703_ _1696_ _1702_ _1704_ vdd gnd OAI21X1
X_5069_ \z2.z4.z4.z2.s\ _1683_ _1690_ _1705_ vdd gnd NAND3X1
X_5070_ _1698_ _1681_ _1706_ vdd gnd NAND2X1
X_5071_ _1704_ _1705_ _1706_ _1694_ _1707_ vdd 
+ gnd
+ AOI22X1
X_5072_ _1705_ _1704_ _1708_ vdd gnd NAND2X1
X_5073_ _1672_ _1694_ _1676_ _1709_ vdd gnd NAND3X1
X_5074_ _1709_ _1698_ _1708_ _1710_ vdd gnd AOI21X1
X_5075_ _1707_ _1710_ \z2.q3\[6] vdd gnd NOR2X1
X_5076_ _1703_ _1696_ \z2.z4.z4.z2.s\ _1629_ vdd gnd OAI21X1
X_5077_ _1698_ _1708_ _1709_ _1630_ vdd gnd NAND3X1
X_5078_ \z2.z4.z4.z2.c\ _1629_ _1630_ _1631_ vdd gnd NAND3X1
X_5079_ \z2.z4.z4.z2.c\ _1632_ vdd gnd INVX1
X_5080_ _1629_ _1633_ vdd gnd INVX1
X_5081_ _1633_ _1707_ _1632_ _1634_ vdd gnd OAI21X1
X_5082_ _1631_ _1634_ \z2.q3\[7] vdd gnd NAND2X1
X_5083_ _1654_ _1651_ _1640_ _1635_ vdd gnd AOI21X1
X_5084_ _1635_ _1656_ \z2.q3\[3] vdd gnd NOR2X1
X_5085_ b[4] a[12] \z2.q3\[0] vdd gnd AND2X2
X_5086_ b[4] a[13] \z2.z4.z1.z1.a\ vdd gnd AND2X2
X_5087_ a[12] b[5] \z2.z4.z1.z1.b\ vdd gnd AND2X2
X_5088_ a[13] b[5] \z2.z4.z1.z2.a\ vdd gnd AND2X2
X_5089_ \z2.z4.z1.z1.b\ _1711_ vdd gnd INVX1
X_5090_ \z2.z4.z1.z1.a\ _1711_ _1712_ vdd gnd NAND2X1
X_5091_ \z2.z4.z1.z1.a\ _1713_ vdd gnd INVX1
X_5092_ \z2.z4.z1.z1.b\ _1713_ _1714_ vdd gnd NAND2X1
X_5093_ _1712_ _1714_ \z2.z4.z1.z1.s\ vdd gnd NAND2X1
X_5094_ _1711_ _1713_ \z2.z4.z1.z1.c\ vdd gnd NOR2X1
X_5095_ \z2.z4.z1.z1.c\ _1715_ vdd gnd INVX1
X_5096_ \z2.z4.z1.z2.a\ _1715_ _1716_ vdd gnd NAND2X1
X_5097_ \z2.z4.z1.z2.a\ _1717_ vdd gnd INVX1
X_5098_ \z2.z4.z1.z1.c\ _1717_ _1718_ vdd gnd NAND2X1
X_5099_ _1716_ _1718_ \z2.z4.z1.z2.s\ vdd gnd NAND2X1
X_5100_ _1715_ _1717_ \z2.z4.z1.z2.c\ vdd gnd NOR2X1
X_5101_ b[4] a[14] \z2.z4.q1\[0] vdd gnd AND2X2
X_5102_ b[4] a[15] \z2.z4.z2.z1.a\ vdd gnd AND2X2
X_5103_ a[14] b[5] \z2.z4.z2.z1.b\ vdd gnd AND2X2
X_5104_ a[15] b[5] \z2.z4.z2.z2.a\ vdd gnd AND2X2
X_5105_ \z2.z4.z2.z1.b\ _1719_ vdd gnd INVX1
X_5106_ \z2.z4.z2.z1.a\ _1719_ _1720_ vdd gnd NAND2X1
X_5107_ \z2.z4.z2.z1.a\ _1721_ vdd gnd INVX1
X_5108_ \z2.z4.z2.z1.b\ _1721_ _1722_ vdd gnd NAND2X1
X_5109_ _1720_ _1722_ \z2.z4.z2.z1.s\ vdd gnd NAND2X1
X_5110_ _1719_ _1721_ \z2.z4.z2.z1.c\ vdd gnd NOR2X1
X_5111_ \z2.z4.z2.z1.c\ _1723_ vdd gnd INVX1
X_5112_ \z2.z4.z2.z2.a\ _1723_ _1724_ vdd gnd NAND2X1
X_5113_ \z2.z4.z2.z2.a\ _1725_ vdd gnd INVX1
X_5114_ \z2.z4.z2.z1.c\ _1725_ _1726_ vdd gnd NAND2X1
X_5115_ _1724_ _1726_ \z2.z4.z2.z2.s\ vdd gnd NAND2X1
X_5116_ _1723_ _1725_ \z2.z4.z2.z2.c\ vdd gnd NOR2X1
X_5117_ b[6] a[12] \z2.z4.q2\[0] vdd gnd AND2X2
X_5118_ b[6] a[13] \z2.z4.z3.z1.a\ vdd gnd AND2X2
X_5119_ a[12] b[7] \z2.z4.z3.z1.b\ vdd gnd AND2X2
X_5120_ a[13] b[7] \z2.z4.z3.z2.a\ vdd gnd AND2X2
X_5121_ \z2.z4.z3.z1.b\ _1727_ vdd gnd INVX1
X_5122_ \z2.z4.z3.z1.a\ _1727_ _1728_ vdd gnd NAND2X1
X_5123_ \z2.z4.z3.z1.a\ _1729_ vdd gnd INVX1
X_5124_ \z2.z4.z3.z1.b\ _1729_ _1730_ vdd gnd NAND2X1
X_5125_ _1728_ _1730_ \z2.z4.z3.z1.s\ vdd gnd NAND2X1
X_5126_ _1727_ _1729_ \z2.z4.z3.z1.c\ vdd gnd NOR2X1
X_5127_ \z2.z4.z3.z1.c\ _1731_ vdd gnd INVX1
X_5128_ \z2.z4.z3.z2.a\ _1731_ _1732_ vdd gnd NAND2X1
X_5129_ \z2.z4.z3.z2.a\ _1733_ vdd gnd INVX1
X_5130_ \z2.z4.z3.z1.c\ _1733_ _1734_ vdd gnd NAND2X1
X_5131_ _1732_ _1734_ \z2.z4.z3.z2.s\ vdd gnd NAND2X1
X_5132_ _1731_ _1733_ \z2.z4.z3.z2.c\ vdd gnd NOR2X1
X_5133_ b[6] a[14] \z2.z4.q3\[0] vdd gnd AND2X2
X_5134_ b[6] a[15] \z2.z4.z4.z1.a\ vdd gnd AND2X2
X_5135_ a[14] b[7] \z2.z4.z4.z1.b\ vdd gnd AND2X2
X_5136_ a[15] b[7] \z2.z4.z4.z2.a\ vdd gnd AND2X2
X_5137_ \z2.z4.z4.z1.b\ _1735_ vdd gnd INVX1
X_5138_ \z2.z4.z4.z1.a\ _1735_ _1736_ vdd gnd NAND2X1
X_5139_ \z2.z4.z4.z1.a\ _1737_ vdd gnd INVX1
X_5140_ \z2.z4.z4.z1.b\ _1737_ _1738_ vdd gnd NAND2X1
X_5141_ _1736_ _1738_ \z2.z4.z4.z1.s\ vdd gnd NAND2X1
X_5142_ _1735_ _1737_ \z2.z4.z4.z1.c\ vdd gnd NOR2X1
X_5143_ \z2.z4.z4.z1.c\ _1739_ vdd gnd INVX1
X_5144_ \z2.z4.z4.z2.a\ _1739_ _1740_ vdd gnd NAND2X1
X_5145_ \z2.z4.z4.z2.a\ _1741_ vdd gnd INVX1
X_5146_ \z2.z4.z4.z1.c\ _1741_ _1742_ vdd gnd NAND2X1
X_5147_ _1740_ _1742_ \z2.z4.z4.z2.s\ vdd gnd NAND2X1
X_5148_ _1739_ _1741_ \z2.z4.z4.z2.c\ vdd gnd NOR2X1
X_5149_ \z3.q1\[0] \z3.q0\[4] _1885_ vdd gnd OR2X2
X_5150_ \z3.q1\[0] \z3.q0\[4] _1886_ vdd gnd NAND2X1
X_5151_ _1886_ _1885_ _1887_ vdd gnd NAND2X1
X_5152_ _1887_ _1888_ vdd gnd INVX1
X_5153_ _1888_ \z3.q2\[0] _1889_ vdd gnd AND2X2
X_5154_ \z3.q2\[0] _1888_ _1890_ vdd gnd NOR2X1
X_5155_ _1890_ _1889_ q2[4] vdd gnd NOR2X1
X_5156_ \z3.z3.z1.z1.s\ _1891_ vdd gnd INVX1
X_5157_ _1886_ _1892_ vdd gnd INVX1
X_5158_ \z3.z2.z1.z1.s\ \z3.q0\[5] _1893_ vdd gnd NAND2X1
X_5159_ \z3.z2.z1.z1.s\ \z3.q0\[5] _1894_ vdd gnd OR2X2
X_5160_ _1893_ _1894_ _1892_ _1895_ vdd gnd NAND3X1
X_5161_ \z3.z2.z1.z1.s\ \z3.q0\[5] _1896_ vdd gnd AND2X2
X_5162_ \z3.z2.z1.z1.s\ \z3.q0\[5] _1897_ vdd gnd NOR2X1
X_5163_ _1897_ _1896_ _1886_ _1898_ vdd gnd OAI21X1
X_5164_ _1898_ _1895_ _1899_ vdd gnd NAND2X1
X_5165_ _1899_ _1891_ _1900_ vdd gnd OR2X2
X_5166_ _1891_ _1899_ _1901_ vdd gnd NAND2X1
X_5167_ _1900_ _1901_ _1902_ vdd gnd AND2X2
X_5168_ _1889_ _1902_ _1903_ vdd gnd NAND2X1
X_5169_ _1900_ _1904_ vdd gnd INVX1
X_5170_ _1886_ _1897_ _1893_ _1905_ vdd gnd OAI21X1
X_5171_ \z3.q0\[6] _1906_ vdd gnd INVX1
X_5172_ \z3.q1\[2] _1906_ _1907_ vdd gnd NOR2X1
X_5173_ \z3.q1\[2] _1908_ vdd gnd INVX1
X_5174_ \z3.q0\[6] _1908_ _1909_ vdd gnd NOR2X1
X_5175_ _1907_ _1909_ _1905_ _1910_ vdd gnd OAI21X1
X_5176_ \z3.q0\[6] _1908_ _1911_ vdd gnd NAND2X1
X_5177_ \z3.q1\[2] _1906_ _1912_ vdd gnd NAND2X1
X_5178_ _1911_ _1912_ _1913_ vdd gnd NAND2X1
X_5179_ _1913_ _1905_ _1914_ vdd gnd OR2X2
X_5180_ \z3.q2\[2] _1910_ _1914_ _1915_ vdd gnd NAND3X1
X_5181_ \z3.q2\[2] _1916_ vdd gnd INVX1
X_5182_ _1910_ _1914_ _1917_ vdd gnd NAND2X1
X_5183_ _1916_ _1917_ _1918_ vdd gnd NAND2X1
X_5184_ _1918_ _1915_ _1904_ _1919_ vdd gnd AOI21X1
X_5185_ _1919_ _1920_ vdd gnd INVX1
X_5186_ _1915_ _1918_ _1904_ _1921_ vdd gnd NAND3X1
X_5187_ _1903_ _1921_ _1920_ _1922_ vdd gnd NAND3X1
X_5188_ _1903_ _1923_ vdd gnd INVX1
X_5189_ _1921_ _1924_ vdd gnd INVX1
X_5190_ _1919_ _1924_ _1923_ _1925_ vdd gnd OAI21X1
X_5191_ _1922_ _1925_ q2[6] vdd gnd NAND2X1
X_5192_ _1919_ _1903_ _1921_ _1926_ vdd gnd OAI21X1
X_5193_ _1915_ _1927_ vdd gnd INVX1
X_5194_ \z3.q2\[3] _1928_ vdd gnd INVX1
X_5195_ \z3.q0\[7] _1929_ vdd gnd INVX1
X_5196_ \z3.q1\[3] _1929_ _1930_ vdd gnd NOR2X1
X_5197_ \z3.q1\[3] _1931_ vdd gnd INVX1
X_5198_ \z3.q0\[7] _1931_ _1932_ vdd gnd NOR2X1
X_5199_ \z3.q1\[2] \z3.q0\[6] _1933_ vdd gnd NAND2X1
X_5200_ _1933_ _1934_ vdd gnd INVX1
X_5201_ _1913_ _1905_ _1934_ _1935_ vdd gnd AOI21X1
X_5202_ _1930_ _1932_ _1935_ _1936_ vdd gnd OAI21X1
X_5203_ \z3.q1\[3] \z3.q0\[7] _1937_ vdd gnd NAND2X1
X_5204_ _1937_ _1938_ vdd gnd INVX1
X_5205_ \z3.q1\[3] \z3.q0\[7] _1939_ vdd gnd NOR2X1
X_5206_ _1935_ _1940_ vdd gnd INVX1
X_5207_ _1938_ _1939_ _1940_ _1941_ vdd gnd OAI21X1
X_5208_ _1941_ _1936_ _1928_ _1743_ vdd gnd AOI21X1
X_5209_ _1743_ _1744_ vdd gnd INVX1
X_5210_ _1928_ _1936_ _1941_ _1745_ vdd gnd NAND3X1
X_5211_ _1744_ _1745_ _1927_ _1746_ vdd gnd AOI21X1
X_5212_ _1927_ _1745_ _1744_ _1747_ vdd gnd NAND3X1
X_5213_ _1747_ _1748_ vdd gnd INVX1
X_5214_ _1746_ _1748_ _1926_ _1749_ vdd gnd OAI21X1
X_5215_ _1926_ _1750_ vdd gnd INVX1
X_5216_ _1745_ _1744_ _1751_ vdd gnd NAND2X1
X_5217_ _1916_ _1917_ _1751_ _1752_ vdd gnd OAI21X1
X_5218_ _1747_ _1750_ _1752_ _1753_ vdd gnd NAND3X1
X_5219_ _1753_ _1749_ q2[7] vdd gnd NAND2X1
X_5220_ _1752_ _1926_ _1748_ _1754_ vdd gnd AOI21X1
X_5221_ _1892_ _1894_ _1896_ _1755_ vdd gnd AOI21X1
X_5222_ _1907_ _1909_ _1930_ _1932_ _1756_ vdd 
+ gnd
+ OAI22X1
X_5223_ _1933_ _1939_ _1937_ _1757_ vdd gnd OAI21X1
X_5224_ _1757_ _1758_ vdd gnd INVX1
X_5225_ _1755_ _1756_ _1758_ _1759_ vdd gnd OAI21X1
X_5226_ \z3.q1\[4] _1759_ _1760_ vdd gnd NAND2X1
X_5227_ \z3.q1\[4] _1761_ vdd gnd INVX1
X_5228_ \z3.q0\[7] _1931_ _1762_ vdd gnd NAND2X1
X_5229_ \z3.q1\[3] _1929_ _1763_ vdd gnd NAND2X1
X_5230_ _1762_ _1763_ _1764_ vdd gnd NAND2X1
X_5231_ _1905_ _1913_ _1764_ _1765_ vdd gnd NAND3X1
X_5232_ _1761_ _1758_ _1765_ _1766_ vdd gnd NAND3X1
X_5233_ \z3.q3\[0] \z3.q2\[4] _1767_ vdd gnd NAND2X1
X_5234_ \z3.q3\[0] _1768_ vdd gnd INVX1
X_5235_ \z3.q2\[4] _1769_ vdd gnd INVX1
X_5236_ _1768_ _1769_ _1770_ vdd gnd NAND2X1
X_5237_ _1767_ _1770_ _1771_ vdd gnd NAND2X1
X_5238_ _1771_ _1772_ vdd gnd INVX1
X_5239_ _1766_ _1772_ _1760_ _1773_ vdd gnd NAND3X1
X_5240_ _1765_ _1758_ _1761_ _1774_ vdd gnd AOI21X1
X_5241_ _1766_ _1775_ vdd gnd INVX1
X_5242_ _1774_ _1775_ _1771_ _1776_ vdd gnd OAI21X1
X_5243_ _1773_ _1776_ _1743_ _1777_ vdd gnd NAND3X1
X_5244_ _1773_ _1776_ _1778_ vdd gnd NAND2X1
X_5245_ _1778_ _1744_ _1779_ vdd gnd NAND2X1
X_5246_ _1779_ _1777_ _1780_ vdd gnd AND2X2
X_5247_ _1780_ _1754_ _1781_ vdd gnd NAND2X1
X_5248_ _1746_ _1750_ _1747_ _1782_ vdd gnd OAI21X1
X_5249_ _1777_ _1779_ _1783_ vdd gnd NAND2X1
X_5250_ _1783_ _1782_ _1784_ vdd gnd NAND2X1
X_5251_ _1781_ _1784_ q2[8] vdd gnd NAND2X1
X_5252_ _1783_ _1754_ _1777_ _1785_ vdd gnd OAI21X1
X_5253_ _1768_ _1769_ _1773_ _1786_ vdd gnd OAI21X1
X_5254_ \z3.q1\[4] \z3.q1\[5] _1759_ _1787_ vdd gnd NAND3X1
X_5255_ \z3.q1\[5] _1788_ vdd gnd INVX1
X_5256_ _1911_ _1912_ _1762_ _1763_ _1789_ vdd 
+ gnd
+ AOI22X1
X_5257_ _1789_ _1905_ _1757_ _1790_ vdd gnd AOI21X1
X_5258_ _1761_ _1790_ _1788_ _1791_ vdd gnd OAI21X1
X_5259_ \z3.z4.z1.z1.s\ _1792_ vdd gnd INVX1
X_5260_ \z3.q2\[5] _1793_ vdd gnd INVX1
X_5261_ _1792_ _1793_ _1794_ vdd gnd NAND2X1
X_5262_ \z3.z4.z1.z1.s\ \z3.q2\[5] _1795_ vdd gnd NAND2X1
X_5263_ _1794_ _1795_ _1796_ vdd gnd AND2X2
X_5264_ _1796_ _1791_ _1787_ _1797_ vdd gnd NAND3X1
X_5265_ _1787_ _1791_ _1796_ _1798_ vdd gnd AOI21X1
X_5266_ _1798_ _1799_ vdd gnd INVX1
X_5267_ _1797_ _1786_ _1799_ _1800_ vdd gnd NAND3X1
X_5268_ _1773_ _1767_ _1801_ vdd gnd AND2X2
X_5269_ _1797_ _1802_ vdd gnd INVX1
X_5270_ _1802_ _1798_ _1801_ _1803_ vdd gnd OAI21X1
X_5271_ _1800_ _1803_ _1804_ vdd gnd NAND2X1
X_5272_ _1785_ _1804_ _1805_ vdd gnd OR2X2
X_5273_ _1804_ _1785_ _1806_ vdd gnd NAND2X1
X_5274_ _1806_ _1805_ q2[9] vdd gnd NAND2X1
X_5275_ _1800_ _1803_ _1780_ _1807_ vdd gnd NAND3X1
X_5276_ _1744_ _1778_ _1800_ _1808_ vdd gnd OAI21X1
X_5277_ _1803_ _1808_ _1809_ vdd gnd NAND2X1
X_5278_ _1754_ _1807_ _1809_ _1810_ vdd gnd OAI21X1
X_5279_ _1792_ _1793_ _1797_ _1811_ vdd gnd OAI21X1
X_5280_ \z3.q1\[5] \z3.q1\[6] _1774_ _1812_ vdd gnd NAND3X1
X_5281_ \z3.q1\[6] _1813_ vdd gnd INVX1
X_5282_ _1813_ _1787_ _1814_ vdd gnd NAND2X1
X_5283_ \z3.q3\[2] _1815_ vdd gnd INVX1
X_5284_ \z3.q2\[6] _1816_ vdd gnd INVX1
X_5285_ _1815_ _1816_ _1817_ vdd gnd NAND2X1
X_5286_ \z3.q3\[2] \z3.q2\[6] _1818_ vdd gnd NAND2X1
X_5287_ _1818_ _1817_ _1819_ vdd gnd NAND2X1
X_5288_ _1819_ _1820_ vdd gnd INVX1
X_5289_ _1812_ _1820_ _1814_ _1821_ vdd gnd NAND3X1
X_5290_ _1814_ _1812_ _1820_ _1822_ vdd gnd AOI21X1
X_5291_ _1822_ _1823_ vdd gnd INVX1
X_5292_ _1811_ _1821_ _1823_ _1824_ vdd gnd NAND3X1
X_5293_ _1811_ _1825_ vdd gnd INVX1
X_5294_ _1821_ _1826_ vdd gnd INVX1
X_5295_ _1822_ _1826_ _1825_ _1827_ vdd gnd OAI21X1
X_5296_ _1827_ _1824_ _1828_ vdd gnd NAND2X1
X_5297_ _1828_ _1810_ _1829_ vdd gnd NAND2X1
X_5298_ _1783_ _1804_ _1830_ vdd gnd NOR2X1
X_5299_ _1803_ _1808_ _1830_ _1782_ _1831_ vdd 
+ gnd
+ AOI22X1
X_5300_ _1824_ _1827_ _1832_ vdd gnd AND2X2
X_5301_ _1832_ _1831_ _1833_ vdd gnd NAND2X1
X_5302_ _1829_ _1833_ q2[10] vdd gnd NAND2X1
X_5303_ _1828_ _1831_ _1824_ _1834_ vdd gnd OAI21X1
X_5304_ _1815_ _1816_ _1821_ _1835_ vdd gnd OAI21X1
X_5305_ \z3.q3\[3] \z3.q2\[7] _1836_ vdd gnd NOR2X1
X_5306_ \z3.q3\[3] _1837_ vdd gnd INVX1
X_5307_ \z3.q2\[7] _1838_ vdd gnd INVX1
X_5308_ _1837_ _1838_ _1839_ vdd gnd NOR2X1
X_5309_ _1836_ _1839_ _1840_ vdd gnd NOR2X1
X_5310_ \z3.q1\[7] _1841_ vdd gnd INVX1
X_5311_ _1813_ _1787_ _1841_ _1842_ vdd gnd OAI21X1
X_5312_ _1774_ \z3.q1\[5] _1843_ vdd gnd AND2X2
X_5313_ \z3.q1\[6] \z3.q1\[7] _1843_ _1844_ vdd gnd NAND3X1
X_5314_ _1840_ _1842_ _1844_ _1845_ vdd gnd NAND3X1
X_5315_ _1840_ _1846_ vdd gnd INVX1
X_5316_ _1813_ _1787_ \z3.q1\[7] _1847_ vdd gnd OAI21X1
X_5317_ \z3.q1\[6] _1841_ _1843_ _1848_ vdd gnd NAND3X1
X_5318_ _1846_ _1847_ _1848_ _1849_ vdd gnd NAND3X1
X_5319_ _1845_ _1849_ _1835_ _1850_ vdd gnd NAND3X1
X_5320_ _1821_ _1818_ _1851_ vdd gnd AND2X2
X_5321_ _1845_ _1849_ _1852_ vdd gnd NAND2X1
X_5322_ _1851_ _1852_ _1853_ vdd gnd NAND2X1
X_5323_ _1850_ _1853_ _1854_ vdd gnd NAND2X1
X_5324_ _1834_ _1854_ _1855_ vdd gnd OR2X2
X_5325_ _1854_ _1834_ _1856_ vdd gnd NAND2X1
X_5326_ _1856_ _1855_ q2[11] vdd gnd NAND2X1
X_5327_ _1851_ _1852_ _1824_ _1857_ vdd gnd OAI21X1
X_5328_ _1853_ _1857_ _1858_ vdd gnd NAND2X1
X_5329_ _1850_ _1853_ _1832_ _1859_ vdd gnd NAND3X1
X_5330_ _1859_ _1831_ _1858_ _1860_ vdd gnd OAI21X1
X_5331_ _1837_ _1838_ _1845_ _1861_ vdd gnd OAI21X1
X_5332_ \z3.q3\[4] _1861_ _1862_ vdd gnd NAND2X1
X_5333_ _1861_ \z3.q3\[4] _1863_ vdd gnd OR2X2
X_5334_ _1862_ _1863_ _1860_ _1864_ vdd gnd NAND3X1
X_5335_ _1828_ _1854_ _1865_ vdd gnd NOR2X1
X_5336_ _1853_ _1857_ _1865_ _1810_ _1866_ vdd 
+ gnd
+ AOI22X1
X_5337_ _1862_ _1863_ _1867_ vdd gnd NAND2X1
X_5338_ _1867_ _1866_ _1868_ vdd gnd NAND2X1
X_5339_ _1864_ _1868_ q2[12] vdd gnd AND2X2
X_5340_ \z3.q3\[5] _1869_ vdd gnd INVX1
X_5341_ _1867_ _1866_ _1862_ _1870_ vdd gnd OAI21X1
X_5342_ _1869_ _1870_ _1871_ vdd gnd NAND2X1
X_5343_ \z3.q3\[5] _1862_ _1864_ _1872_ vdd gnd NAND3X1
X_5344_ _1872_ _1871_ q2[13] vdd gnd NAND2X1
X_5345_ \z3.q3\[6] _1873_ vdd gnd INVX1
X_5346_ \z3.q3\[5] _1862_ _1863_ _1874_ vdd gnd NAND3X1
X_5347_ _1869_ _1862_ _1874_ _1866_ _1875_ vdd 
+ gnd
+ OAI22X1
X_5348_ _1873_ _1875_ _1876_ vdd gnd NAND2X1
X_5349_ _1862_ _1877_ vdd gnd INVX1
X_5350_ _1874_ _1878_ vdd gnd INVX1
X_5351_ \z3.q3\[5] _1877_ _1860_ _1878_ _1879_ vdd 
+ gnd
+ AOI22X1
X_5352_ \z3.q3\[6] _1879_ _1880_ vdd gnd NAND2X1
X_5353_ _1880_ _1876_ q2[14] vdd gnd NAND2X1
X_5354_ _1873_ _1879_ \z3.q3\[7] _1881_ vdd gnd OAI21X1
X_5355_ \z3.q3\[7] _1882_ vdd gnd INVX1
X_5356_ \z3.q3\[6] _1882_ _1875_ _1883_ vdd gnd NAND3X1
X_5357_ _1883_ _1881_ q2[15] vdd gnd NAND2X1
X_5358_ _1889_ _1902_ _1884_ vdd gnd NOR2X1
X_5359_ _1884_ _1923_ q2[5] vdd gnd NOR2X1
X_5360_ \z3.z1.q1\[0] \z3.z1.z1.z2.s\ _1949_ vdd gnd NOR2X1
X_5361_ \z3.z1.q1\[0] \z3.z1.z1.z2.s\ _1950_ vdd gnd AND2X2
X_5362_ _1949_ _1950_ _1951_ vdd gnd NOR2X1
X_5363_ \z3.z1.q2\[0] _1951_ _1952_ vdd gnd NAND2X1
X_5364_ _1952_ _1953_ vdd gnd INVX1
X_5365_ \z3.z1.q2\[0] _1951_ _1954_ vdd gnd NOR2X1
X_5366_ _1954_ _1953_ q2[2] vdd gnd NOR2X1
X_5367_ \z3.z1.q1\[0] \z3.z1.z1.z2.s\ _1955_ vdd gnd NAND2X1
X_5368_ \z3.z1.z2.z1.s\ \z3.z1.z1.z2.c\ _1956_ vdd gnd NOR2X1
X_5369_ \z3.z1.z2.z1.s\ \z3.z1.z1.z2.c\ _1957_ vdd gnd NAND2X1
X_5370_ _1957_ _1958_ vdd gnd INVX1
X_5371_ _1956_ _1958_ _1955_ _1959_ vdd gnd OAI21X1
X_5372_ \z3.z1.z2.z1.s\ _1960_ vdd gnd INVX1
X_5373_ \z3.z1.z1.z2.c\ _1961_ vdd gnd INVX1
X_5374_ _1960_ _1961_ _1962_ vdd gnd NAND2X1
X_5375_ _1950_ _1957_ _1962_ _1963_ vdd gnd NAND3X1
X_5376_ \z3.z1.z3.z1.s\ _1963_ _1959_ _1964_ vdd gnd NAND3X1
X_5377_ \z3.z1.z3.z1.s\ _1965_ vdd gnd INVX1
X_5378_ _1963_ _1959_ _1966_ vdd gnd NAND2X1
X_5379_ _1965_ _1966_ _1967_ vdd gnd NAND2X1
X_5380_ _1953_ _1964_ _1967_ _1968_ vdd gnd NAND3X1
X_5381_ _1968_ _1969_ vdd gnd INVX1
X_5382_ _1964_ _1970_ vdd gnd INVX1
X_5383_ _1955_ _1956_ _1957_ _1971_ vdd gnd OAI21X1
X_5384_ \z3.z1.z2.z2.s\ _1971_ _1972_ vdd gnd NAND2X1
X_5385_ \z3.z1.z2.z2.s\ _1973_ vdd gnd INVX1
X_5386_ _1973_ _1957_ _1963_ _1974_ vdd gnd NAND3X1
X_5387_ \z3.z1.q3\[0] \z3.z1.z3.z2.s\ _1975_ vdd gnd NAND2X1
X_5388_ \z3.z1.q3\[0] _1976_ vdd gnd INVX1
X_5389_ \z3.z1.z3.z2.s\ _1977_ vdd gnd INVX1
X_5390_ _1976_ _1977_ _1978_ vdd gnd NAND2X1
X_5391_ _1975_ _1978_ _1979_ vdd gnd NAND2X1
X_5392_ _1979_ _1980_ vdd gnd INVX1
X_5393_ _1972_ _1980_ _1974_ _1981_ vdd gnd NAND3X1
X_5394_ _1971_ \z3.z1.z2.z2.s\ _1982_ vdd gnd AND2X2
X_5395_ \z3.z1.z2.z2.s\ _1971_ _1983_ vdd gnd NOR2X1
X_5396_ _1983_ _1982_ _1979_ _1984_ vdd gnd OAI21X1
X_5397_ _1970_ _1981_ _1984_ _1985_ vdd gnd NAND3X1
X_5398_ _1981_ _1986_ vdd gnd INVX1
X_5399_ _1974_ _1972_ _1980_ _1987_ vdd gnd AOI21X1
X_5400_ _1987_ _1986_ _1964_ _1988_ vdd gnd OAI21X1
X_5401_ _1969_ _1985_ _1988_ _1989_ vdd gnd NAND3X1
X_5402_ _1985_ _1990_ vdd gnd INVX1
X_5403_ _1966_ _1991_ vdd gnd INVX1
X_5404_ \z3.z1.z3.z1.s\ _1991_ _1984_ _1981_ _1992_ vdd 
+ gnd
+ AOI22X1
X_5405_ _1992_ _1990_ _1968_ _1993_ vdd gnd OAI21X1
X_5406_ _1993_ _1989_ \z3.q0\[4] vdd gnd AND2X2
X_5407_ _1968_ _1992_ _1985_ _1994_ vdd gnd OAI21X1
X_5408_ _1976_ _1977_ _1981_ _1995_ vdd gnd OAI21X1
X_5409_ \z3.z1.z4.z1.s\ \z3.z1.z3.z2.c\ _1996_ vdd gnd NAND2X1
X_5410_ \z3.z1.z4.z1.s\ \z3.z1.z3.z2.c\ _1997_ vdd gnd OR2X2
X_5411_ _1996_ _1997_ _1998_ vdd gnd NAND2X1
X_5412_ _1998_ _1999_ vdd gnd INVX1
X_5413_ \z3.z1.z2.z2.c\ _1982_ _2000_ vdd gnd NAND2X1
X_5414_ \z3.z1.z2.z2.c\ _2001_ vdd gnd INVX1
X_5415_ _2001_ _1972_ _2002_ vdd gnd NAND2X1
X_5416_ _1999_ _2002_ _2000_ _2003_ vdd gnd NAND3X1
X_5417_ \z3.z1.z2.z2.c\ _1972_ _2004_ vdd gnd NAND2X1
X_5418_ _2001_ _1982_ _2005_ vdd gnd NAND2X1
X_5419_ _1998_ _2004_ _2005_ _2006_ vdd gnd NAND3X1
X_5420_ _1995_ _2003_ _2006_ _2007_ vdd gnd NAND3X1
X_5421_ _1995_ _2008_ vdd gnd INVX1
X_5422_ _2005_ _2004_ _1998_ _2009_ vdd gnd AOI21X1
X_5423_ _2000_ _2002_ _1999_ _2010_ vdd gnd AOI21X1
X_5424_ _2009_ _2010_ _2008_ _2011_ vdd gnd OAI21X1
X_5425_ _2007_ _2011_ _2012_ vdd gnd NAND2X1
X_5426_ _1994_ _2012_ _2013_ vdd gnd NAND2X1
X_5427_ _2012_ _1994_ _2014_ vdd gnd OR2X2
X_5428_ _2013_ _2014_ \z3.q0\[5] vdd gnd NAND2X1
X_5429_ \z3.z1.z4.z2.s\ _2015_ vdd gnd INVX1
X_5430_ _1996_ _2016_ vdd gnd INVX1
X_5431_ _2016_ _2009_ _2015_ _2017_ vdd gnd OAI21X1
X_5432_ \z3.z1.z4.z2.s\ _1996_ _2003_ _2018_ vdd gnd NAND3X1
X_5433_ _2011_ _1994_ _2019_ vdd gnd NAND2X1
X_5434_ _2017_ _2018_ _2019_ _2007_ _2020_ vdd 
+ gnd
+ AOI22X1
X_5435_ _2018_ _2017_ _2021_ vdd gnd NAND2X1
X_5436_ _1985_ _2007_ _1989_ _2022_ vdd gnd NAND3X1
X_5437_ _2022_ _2011_ _2021_ _2023_ vdd gnd AOI21X1
X_5438_ _2020_ _2023_ \z3.q0\[6] vdd gnd NOR2X1
X_5439_ _2016_ _2009_ \z3.z1.z4.z2.s\ _1942_ vdd gnd OAI21X1
X_5440_ _2011_ _2021_ _2022_ _1943_ vdd gnd NAND3X1
X_5441_ \z3.z1.z4.z2.c\ _1942_ _1943_ _1944_ vdd gnd NAND3X1
X_5442_ \z3.z1.z4.z2.c\ _1945_ vdd gnd INVX1
X_5443_ _1942_ _1946_ vdd gnd INVX1
X_5444_ _1946_ _2020_ _1945_ _1947_ vdd gnd OAI21X1
X_5445_ _1944_ _1947_ \z3.q0\[7] vdd gnd NAND2X1
X_5446_ _1967_ _1964_ _1953_ _1948_ vdd gnd AOI21X1
X_5447_ _1948_ _1969_ q2[3] vdd gnd NOR2X1
X_5448_ b[8] a[0] q2[0] vdd gnd AND2X2
X_5449_ b[8] a[1] \z3.z1.z1.z1.a\ vdd gnd AND2X2
X_5450_ a[0] b[9] \z3.z1.z1.z1.b\ vdd gnd AND2X2
X_5451_ a[1] b[9] \z3.z1.z1.z2.a\ vdd gnd AND2X2
X_5452_ \z3.z1.z1.z1.b\ _2024_ vdd gnd INVX1
X_5453_ \z3.z1.z1.z1.a\ _2024_ _2025_ vdd gnd NAND2X1
X_5454_ \z3.z1.z1.z1.a\ _2026_ vdd gnd INVX1
X_5455_ \z3.z1.z1.z1.b\ _2026_ _2027_ vdd gnd NAND2X1
X_5456_ _2025_ _2027_ \z3.z1.z1.z1.s\ vdd gnd NAND2X1
X_5457_ _2024_ _2026_ \z3.z1.z1.z1.c\ vdd gnd NOR2X1
X_5458_ \z3.z1.z1.z1.c\ _2028_ vdd gnd INVX1
X_5459_ \z3.z1.z1.z2.a\ _2028_ _2029_ vdd gnd NAND2X1
X_5460_ \z3.z1.z1.z2.a\ _2030_ vdd gnd INVX1
X_5461_ \z3.z1.z1.z1.c\ _2030_ _2031_ vdd gnd NAND2X1
X_5462_ _2029_ _2031_ \z3.z1.z1.z2.s\ vdd gnd NAND2X1
X_5463_ _2028_ _2030_ \z3.z1.z1.z2.c\ vdd gnd NOR2X1
X_5464_ b[8] a[2] \z3.z1.q1\[0] vdd gnd AND2X2
X_5465_ b[8] a[3] \z3.z1.z2.z1.a\ vdd gnd AND2X2
X_5466_ a[2] b[9] \z3.z1.z2.z1.b\ vdd gnd AND2X2
X_5467_ a[3] b[9] \z3.z1.z2.z2.a\ vdd gnd AND2X2
X_5468_ \z3.z1.z2.z1.b\ _2032_ vdd gnd INVX1
X_5469_ \z3.z1.z2.z1.a\ _2032_ _2033_ vdd gnd NAND2X1
X_5470_ \z3.z1.z2.z1.a\ _2034_ vdd gnd INVX1
X_5471_ \z3.z1.z2.z1.b\ _2034_ _2035_ vdd gnd NAND2X1
X_5472_ _2033_ _2035_ \z3.z1.z2.z1.s\ vdd gnd NAND2X1
X_5473_ _2032_ _2034_ \z3.z1.z2.z1.c\ vdd gnd NOR2X1
X_5474_ \z3.z1.z2.z1.c\ _2036_ vdd gnd INVX1
X_5475_ \z3.z1.z2.z2.a\ _2036_ _2037_ vdd gnd NAND2X1
X_5476_ \z3.z1.z2.z2.a\ _2038_ vdd gnd INVX1
X_5477_ \z3.z1.z2.z1.c\ _2038_ _2039_ vdd gnd NAND2X1
X_5478_ _2037_ _2039_ \z3.z1.z2.z2.s\ vdd gnd NAND2X1
X_5479_ _2036_ _2038_ \z3.z1.z2.z2.c\ vdd gnd NOR2X1
X_5480_ b[10] a[0] \z3.z1.q2\[0] vdd gnd AND2X2
X_5481_ b[10] a[1] \z3.z1.z3.z1.a\ vdd gnd AND2X2
X_5482_ a[0] b[11] \z3.z1.z3.z1.b\ vdd gnd AND2X2
X_5483_ a[1] b[11] \z3.z1.z3.z2.a\ vdd gnd AND2X2
X_5484_ \z3.z1.z3.z1.b\ _2040_ vdd gnd INVX1
X_5485_ \z3.z1.z3.z1.a\ _2040_ _2041_ vdd gnd NAND2X1
X_5486_ \z3.z1.z3.z1.a\ _2042_ vdd gnd INVX1
X_5487_ \z3.z1.z3.z1.b\ _2042_ _2043_ vdd gnd NAND2X1
X_5488_ _2041_ _2043_ \z3.z1.z3.z1.s\ vdd gnd NAND2X1
X_5489_ _2040_ _2042_ \z3.z1.z3.z1.c\ vdd gnd NOR2X1
X_5490_ \z3.z1.z3.z1.c\ _2044_ vdd gnd INVX1
X_5491_ \z3.z1.z3.z2.a\ _2044_ _2045_ vdd gnd NAND2X1
X_5492_ \z3.z1.z3.z2.a\ _2046_ vdd gnd INVX1
X_5493_ \z3.z1.z3.z1.c\ _2046_ _2047_ vdd gnd NAND2X1
X_5494_ _2045_ _2047_ \z3.z1.z3.z2.s\ vdd gnd NAND2X1
X_5495_ _2044_ _2046_ \z3.z1.z3.z2.c\ vdd gnd NOR2X1
X_5496_ b[10] a[2] \z3.z1.q3\[0] vdd gnd AND2X2
X_5497_ b[10] a[3] \z3.z1.z4.z1.a\ vdd gnd AND2X2
X_5498_ a[2] b[11] \z3.z1.z4.z1.b\ vdd gnd AND2X2
X_5499_ a[3] b[11] \z3.z1.z4.z2.a\ vdd gnd AND2X2
X_5500_ \z3.z1.z4.z1.b\ _2048_ vdd gnd INVX1
X_5501_ \z3.z1.z4.z1.a\ _2048_ _2049_ vdd gnd NAND2X1
X_5502_ \z3.z1.z4.z1.a\ _2050_ vdd gnd INVX1
X_5503_ \z3.z1.z4.z1.b\ _2050_ _2051_ vdd gnd NAND2X1
X_5504_ _2049_ _2051_ \z3.z1.z4.z1.s\ vdd gnd NAND2X1
X_5505_ _2048_ _2050_ \z3.z1.z4.z1.c\ vdd gnd NOR2X1
X_5506_ \z3.z1.z4.z1.c\ _2052_ vdd gnd INVX1
X_5507_ \z3.z1.z4.z2.a\ _2052_ _2053_ vdd gnd NAND2X1
X_5508_ \z3.z1.z4.z2.a\ _2054_ vdd gnd INVX1
X_5509_ \z3.z1.z4.z1.c\ _2054_ _2055_ vdd gnd NAND2X1
X_5510_ _2053_ _2055_ \z3.z1.z4.z2.s\ vdd gnd NAND2X1
X_5511_ _2052_ _2054_ \z3.z1.z4.z2.c\ vdd gnd NOR2X1
X_5512_ \z3.z2.q1\[0] \z3.z2.z1.z2.s\ _2063_ vdd gnd NOR2X1
X_5513_ \z3.z2.q1\[0] \z3.z2.z1.z2.s\ _2064_ vdd gnd AND2X2
X_5514_ _2063_ _2064_ _2065_ vdd gnd NOR2X1
X_5515_ \z3.z2.q2\[0] _2065_ _2066_ vdd gnd NAND2X1
X_5516_ _2066_ _2067_ vdd gnd INVX1
X_5517_ \z3.z2.q2\[0] _2065_ _2068_ vdd gnd NOR2X1
X_5518_ _2068_ _2067_ \z3.q1\[2] vdd gnd NOR2X1
X_5519_ \z3.z2.q1\[0] \z3.z2.z1.z2.s\ _2069_ vdd gnd NAND2X1
X_5520_ \z3.z2.z2.z1.s\ \z3.z2.z1.z2.c\ _2070_ vdd gnd NOR2X1
X_5521_ \z3.z2.z2.z1.s\ \z3.z2.z1.z2.c\ _2071_ vdd gnd NAND2X1
X_5522_ _2071_ _2072_ vdd gnd INVX1
X_5523_ _2070_ _2072_ _2069_ _2073_ vdd gnd OAI21X1
X_5524_ \z3.z2.z2.z1.s\ _2074_ vdd gnd INVX1
X_5525_ \z3.z2.z1.z2.c\ _2075_ vdd gnd INVX1
X_5526_ _2074_ _2075_ _2076_ vdd gnd NAND2X1
X_5527_ _2064_ _2071_ _2076_ _2077_ vdd gnd NAND3X1
X_5528_ \z3.z2.z3.z1.s\ _2077_ _2073_ _2078_ vdd gnd NAND3X1
X_5529_ \z3.z2.z3.z1.s\ _2079_ vdd gnd INVX1
X_5530_ _2077_ _2073_ _2080_ vdd gnd NAND2X1
X_5531_ _2079_ _2080_ _2081_ vdd gnd NAND2X1
X_5532_ _2067_ _2078_ _2081_ _2082_ vdd gnd NAND3X1
X_5533_ _2082_ _2083_ vdd gnd INVX1
X_5534_ _2078_ _2084_ vdd gnd INVX1
X_5535_ _2069_ _2070_ _2071_ _2085_ vdd gnd OAI21X1
X_5536_ \z3.z2.z2.z2.s\ _2085_ _2086_ vdd gnd NAND2X1
X_5537_ \z3.z2.z2.z2.s\ _2087_ vdd gnd INVX1
X_5538_ _2087_ _2071_ _2077_ _2088_ vdd gnd NAND3X1
X_5539_ \z3.z2.q3\[0] \z3.z2.z3.z2.s\ _2089_ vdd gnd NAND2X1
X_5540_ \z3.z2.q3\[0] _2090_ vdd gnd INVX1
X_5541_ \z3.z2.z3.z2.s\ _2091_ vdd gnd INVX1
X_5542_ _2090_ _2091_ _2092_ vdd gnd NAND2X1
X_5543_ _2089_ _2092_ _2093_ vdd gnd NAND2X1
X_5544_ _2093_ _2094_ vdd gnd INVX1
X_5545_ _2086_ _2094_ _2088_ _2095_ vdd gnd NAND3X1
X_5546_ _2085_ \z3.z2.z2.z2.s\ _2096_ vdd gnd AND2X2
X_5547_ \z3.z2.z2.z2.s\ _2085_ _2097_ vdd gnd NOR2X1
X_5548_ _2097_ _2096_ _2093_ _2098_ vdd gnd OAI21X1
X_5549_ _2084_ _2095_ _2098_ _2099_ vdd gnd NAND3X1
X_5550_ _2095_ _2100_ vdd gnd INVX1
X_5551_ _2088_ _2086_ _2094_ _2101_ vdd gnd AOI21X1
X_5552_ _2101_ _2100_ _2078_ _2102_ vdd gnd OAI21X1
X_5553_ _2083_ _2099_ _2102_ _2103_ vdd gnd NAND3X1
X_5554_ _2099_ _2104_ vdd gnd INVX1
X_5555_ _2080_ _2105_ vdd gnd INVX1
X_5556_ \z3.z2.z3.z1.s\ _2105_ _2098_ _2095_ _2106_ vdd 
+ gnd
+ AOI22X1
X_5557_ _2106_ _2104_ _2082_ _2107_ vdd gnd OAI21X1
X_5558_ _2107_ _2103_ \z3.q1\[4] vdd gnd AND2X2
X_5559_ _2082_ _2106_ _2099_ _2108_ vdd gnd OAI21X1
X_5560_ _2090_ _2091_ _2095_ _2109_ vdd gnd OAI21X1
X_5561_ \z3.z2.z4.z1.s\ \z3.z2.z3.z2.c\ _2110_ vdd gnd NAND2X1
X_5562_ \z3.z2.z4.z1.s\ \z3.z2.z3.z2.c\ _2111_ vdd gnd OR2X2
X_5563_ _2110_ _2111_ _2112_ vdd gnd NAND2X1
X_5564_ _2112_ _2113_ vdd gnd INVX1
X_5565_ \z3.z2.z2.z2.c\ _2096_ _2114_ vdd gnd NAND2X1
X_5566_ \z3.z2.z2.z2.c\ _2115_ vdd gnd INVX1
X_5567_ _2115_ _2086_ _2116_ vdd gnd NAND2X1
X_5568_ _2113_ _2116_ _2114_ _2117_ vdd gnd NAND3X1
X_5569_ \z3.z2.z2.z2.c\ _2086_ _2118_ vdd gnd NAND2X1
X_5570_ _2115_ _2096_ _2119_ vdd gnd NAND2X1
X_5571_ _2112_ _2118_ _2119_ _2120_ vdd gnd NAND3X1
X_5572_ _2109_ _2117_ _2120_ _2121_ vdd gnd NAND3X1
X_5573_ _2109_ _2122_ vdd gnd INVX1
X_5574_ _2119_ _2118_ _2112_ _2123_ vdd gnd AOI21X1
X_5575_ _2114_ _2116_ _2113_ _2124_ vdd gnd AOI21X1
X_5576_ _2123_ _2124_ _2122_ _2125_ vdd gnd OAI21X1
X_5577_ _2121_ _2125_ _2126_ vdd gnd NAND2X1
X_5578_ _2108_ _2126_ _2127_ vdd gnd NAND2X1
X_5579_ _2126_ _2108_ _2128_ vdd gnd OR2X2
X_5580_ _2127_ _2128_ \z3.q1\[5] vdd gnd NAND2X1
X_5581_ \z3.z2.z4.z2.s\ _2129_ vdd gnd INVX1
X_5582_ _2110_ _2130_ vdd gnd INVX1
X_5583_ _2130_ _2123_ _2129_ _2131_ vdd gnd OAI21X1
X_5584_ \z3.z2.z4.z2.s\ _2110_ _2117_ _2132_ vdd gnd NAND3X1
X_5585_ _2125_ _2108_ _2133_ vdd gnd NAND2X1
X_5586_ _2131_ _2132_ _2133_ _2121_ _2134_ vdd 
+ gnd
+ AOI22X1
X_5587_ _2132_ _2131_ _2135_ vdd gnd NAND2X1
X_5588_ _2099_ _2121_ _2103_ _2136_ vdd gnd NAND3X1
X_5589_ _2136_ _2125_ _2135_ _2137_ vdd gnd AOI21X1
X_5590_ _2134_ _2137_ \z3.q1\[6] vdd gnd NOR2X1
X_5591_ _2130_ _2123_ \z3.z2.z4.z2.s\ _2056_ vdd gnd OAI21X1
X_5592_ _2125_ _2135_ _2136_ _2057_ vdd gnd NAND3X1
X_5593_ \z3.z2.z4.z2.c\ _2056_ _2057_ _2058_ vdd gnd NAND3X1
X_5594_ \z3.z2.z4.z2.c\ _2059_ vdd gnd INVX1
X_5595_ _2056_ _2060_ vdd gnd INVX1
X_5596_ _2060_ _2134_ _2059_ _2061_ vdd gnd OAI21X1
X_5597_ _2058_ _2061_ \z3.q1\[7] vdd gnd NAND2X1
X_5598_ _2081_ _2078_ _2067_ _2062_ vdd gnd AOI21X1
X_5599_ _2062_ _2083_ \z3.q1\[3] vdd gnd NOR2X1
X_5600_ b[8] a[4] \z3.q1\[0] vdd gnd AND2X2
X_5601_ b[8] a[5] \z3.z2.z1.z1.a\ vdd gnd AND2X2
X_5602_ a[4] b[9] \z3.z2.z1.z1.b\ vdd gnd AND2X2
X_5603_ a[5] b[9] \z3.z2.z1.z2.a\ vdd gnd AND2X2
X_5604_ \z3.z2.z1.z1.b\ _2138_ vdd gnd INVX1
X_5605_ \z3.z2.z1.z1.a\ _2138_ _2139_ vdd gnd NAND2X1
X_5606_ \z3.z2.z1.z1.a\ _2140_ vdd gnd INVX1
X_5607_ \z3.z2.z1.z1.b\ _2140_ _2141_ vdd gnd NAND2X1
X_5608_ _2139_ _2141_ \z3.z2.z1.z1.s\ vdd gnd NAND2X1
X_5609_ _2138_ _2140_ \z3.z2.z1.z1.c\ vdd gnd NOR2X1
X_5610_ \z3.z2.z1.z1.c\ _2142_ vdd gnd INVX1
X_5611_ \z3.z2.z1.z2.a\ _2142_ _2143_ vdd gnd NAND2X1
X_5612_ \z3.z2.z1.z2.a\ _2144_ vdd gnd INVX1
X_5613_ \z3.z2.z1.z1.c\ _2144_ _2145_ vdd gnd NAND2X1
X_5614_ _2143_ _2145_ \z3.z2.z1.z2.s\ vdd gnd NAND2X1
X_5615_ _2142_ _2144_ \z3.z2.z1.z2.c\ vdd gnd NOR2X1
X_5616_ b[8] a[6] \z3.z2.q1\[0] vdd gnd AND2X2
X_5617_ b[8] a[7] \z3.z2.z2.z1.a\ vdd gnd AND2X2
X_5618_ a[6] b[9] \z3.z2.z2.z1.b\ vdd gnd AND2X2
X_5619_ a[7] b[9] \z3.z2.z2.z2.a\ vdd gnd AND2X2
X_5620_ \z3.z2.z2.z1.b\ _2146_ vdd gnd INVX1
X_5621_ \z3.z2.z2.z1.a\ _2146_ _2147_ vdd gnd NAND2X1
X_5622_ \z3.z2.z2.z1.a\ _2148_ vdd gnd INVX1
X_5623_ \z3.z2.z2.z1.b\ _2148_ _2149_ vdd gnd NAND2X1
X_5624_ _2147_ _2149_ \z3.z2.z2.z1.s\ vdd gnd NAND2X1
X_5625_ _2146_ _2148_ \z3.z2.z2.z1.c\ vdd gnd NOR2X1
X_5626_ \z3.z2.z2.z1.c\ _2150_ vdd gnd INVX1
X_5627_ \z3.z2.z2.z2.a\ _2150_ _2151_ vdd gnd NAND2X1
X_5628_ \z3.z2.z2.z2.a\ _2152_ vdd gnd INVX1
X_5629_ \z3.z2.z2.z1.c\ _2152_ _2153_ vdd gnd NAND2X1
X_5630_ _2151_ _2153_ \z3.z2.z2.z2.s\ vdd gnd NAND2X1
X_5631_ _2150_ _2152_ \z3.z2.z2.z2.c\ vdd gnd NOR2X1
X_5632_ b[10] a[4] \z3.z2.q2\[0] vdd gnd AND2X2
X_5633_ b[10] a[5] \z3.z2.z3.z1.a\ vdd gnd AND2X2
X_5634_ a[4] b[11] \z3.z2.z3.z1.b\ vdd gnd AND2X2
X_5635_ a[5] b[11] \z3.z2.z3.z2.a\ vdd gnd AND2X2
X_5636_ \z3.z2.z3.z1.b\ _2154_ vdd gnd INVX1
X_5637_ \z3.z2.z3.z1.a\ _2154_ _2155_ vdd gnd NAND2X1
X_5638_ \z3.z2.z3.z1.a\ _2156_ vdd gnd INVX1
X_5639_ \z3.z2.z3.z1.b\ _2156_ _2157_ vdd gnd NAND2X1
X_5640_ _2155_ _2157_ \z3.z2.z3.z1.s\ vdd gnd NAND2X1
X_5641_ _2154_ _2156_ \z3.z2.z3.z1.c\ vdd gnd NOR2X1
X_5642_ \z3.z2.z3.z1.c\ _2158_ vdd gnd INVX1
X_5643_ \z3.z2.z3.z2.a\ _2158_ _2159_ vdd gnd NAND2X1
X_5644_ \z3.z2.z3.z2.a\ _2160_ vdd gnd INVX1
X_5645_ \z3.z2.z3.z1.c\ _2160_ _2161_ vdd gnd NAND2X1
X_5646_ _2159_ _2161_ \z3.z2.z3.z2.s\ vdd gnd NAND2X1
X_5647_ _2158_ _2160_ \z3.z2.z3.z2.c\ vdd gnd NOR2X1
X_5648_ b[10] a[6] \z3.z2.q3\[0] vdd gnd AND2X2
X_5649_ b[10] a[7] \z3.z2.z4.z1.a\ vdd gnd AND2X2
X_5650_ a[6] b[11] \z3.z2.z4.z1.b\ vdd gnd AND2X2
X_5651_ a[7] b[11] \z3.z2.z4.z2.a\ vdd gnd AND2X2
X_5652_ \z3.z2.z4.z1.b\ _2162_ vdd gnd INVX1
X_5653_ \z3.z2.z4.z1.a\ _2162_ _2163_ vdd gnd NAND2X1
X_5654_ \z3.z2.z4.z1.a\ _2164_ vdd gnd INVX1
X_5655_ \z3.z2.z4.z1.b\ _2164_ _2165_ vdd gnd NAND2X1
X_5656_ _2163_ _2165_ \z3.z2.z4.z1.s\ vdd gnd NAND2X1
X_5657_ _2162_ _2164_ \z3.z2.z4.z1.c\ vdd gnd NOR2X1
X_5658_ \z3.z2.z4.z1.c\ _2166_ vdd gnd INVX1
X_5659_ \z3.z2.z4.z2.a\ _2166_ _2167_ vdd gnd NAND2X1
X_5660_ \z3.z2.z4.z2.a\ _2168_ vdd gnd INVX1
X_5661_ \z3.z2.z4.z1.c\ _2168_ _2169_ vdd gnd NAND2X1
X_5662_ _2167_ _2169_ \z3.z2.z4.z2.s\ vdd gnd NAND2X1
X_5663_ _2166_ _2168_ \z3.z2.z4.z2.c\ vdd gnd NOR2X1
X_5664_ \z3.z3.q1\[0] \z3.z3.z1.z2.s\ _2177_ vdd gnd NOR2X1
X_5665_ \z3.z3.q1\[0] \z3.z3.z1.z2.s\ _2178_ vdd gnd AND2X2
X_5666_ _2177_ _2178_ _2179_ vdd gnd NOR2X1
X_5667_ \z3.z3.q2\[0] _2179_ _2180_ vdd gnd NAND2X1
X_5668_ _2180_ _2181_ vdd gnd INVX1
X_5669_ \z3.z3.q2\[0] _2179_ _2182_ vdd gnd NOR2X1
X_5670_ _2182_ _2181_ \z3.q2\[2] vdd gnd NOR2X1
X_5671_ \z3.z3.q1\[0] \z3.z3.z1.z2.s\ _2183_ vdd gnd NAND2X1
X_5672_ \z3.z3.z2.z1.s\ \z3.z3.z1.z2.c\ _2184_ vdd gnd NOR2X1
X_5673_ \z3.z3.z2.z1.s\ \z3.z3.z1.z2.c\ _2185_ vdd gnd NAND2X1
X_5674_ _2185_ _2186_ vdd gnd INVX1
X_5675_ _2184_ _2186_ _2183_ _2187_ vdd gnd OAI21X1
X_5676_ \z3.z3.z2.z1.s\ _2188_ vdd gnd INVX1
X_5677_ \z3.z3.z1.z2.c\ _2189_ vdd gnd INVX1
X_5678_ _2188_ _2189_ _2190_ vdd gnd NAND2X1
X_5679_ _2178_ _2185_ _2190_ _2191_ vdd gnd NAND3X1
X_5680_ \z3.z3.z3.z1.s\ _2191_ _2187_ _2192_ vdd gnd NAND3X1
X_5681_ \z3.z3.z3.z1.s\ _2193_ vdd gnd INVX1
X_5682_ _2191_ _2187_ _2194_ vdd gnd NAND2X1
X_5683_ _2193_ _2194_ _2195_ vdd gnd NAND2X1
X_5684_ _2181_ _2192_ _2195_ _2196_ vdd gnd NAND3X1
X_5685_ _2196_ _2197_ vdd gnd INVX1
X_5686_ _2192_ _2198_ vdd gnd INVX1
X_5687_ _2183_ _2184_ _2185_ _2199_ vdd gnd OAI21X1
X_5688_ \z3.z3.z2.z2.s\ _2199_ _2200_ vdd gnd NAND2X1
X_5689_ \z3.z3.z2.z2.s\ _2201_ vdd gnd INVX1
X_5690_ _2201_ _2185_ _2191_ _2202_ vdd gnd NAND3X1
X_5691_ \z3.z3.q3\[0] \z3.z3.z3.z2.s\ _2203_ vdd gnd NAND2X1
X_5692_ \z3.z3.q3\[0] _2204_ vdd gnd INVX1
X_5693_ \z3.z3.z3.z2.s\ _2205_ vdd gnd INVX1
X_5694_ _2204_ _2205_ _2206_ vdd gnd NAND2X1
X_5695_ _2203_ _2206_ _2207_ vdd gnd NAND2X1
X_5696_ _2207_ _2208_ vdd gnd INVX1
X_5697_ _2200_ _2208_ _2202_ _2209_ vdd gnd NAND3X1
X_5698_ _2199_ \z3.z3.z2.z2.s\ _2210_ vdd gnd AND2X2
X_5699_ \z3.z3.z2.z2.s\ _2199_ _2211_ vdd gnd NOR2X1
X_5700_ _2211_ _2210_ _2207_ _2212_ vdd gnd OAI21X1
X_5701_ _2198_ _2209_ _2212_ _2213_ vdd gnd NAND3X1
X_5702_ _2209_ _2214_ vdd gnd INVX1
X_5703_ _2202_ _2200_ _2208_ _2215_ vdd gnd AOI21X1
X_5704_ _2215_ _2214_ _2192_ _2216_ vdd gnd OAI21X1
X_5705_ _2197_ _2213_ _2216_ _2217_ vdd gnd NAND3X1
X_5706_ _2213_ _2218_ vdd gnd INVX1
X_5707_ _2194_ _2219_ vdd gnd INVX1
X_5708_ \z3.z3.z3.z1.s\ _2219_ _2212_ _2209_ _2220_ vdd 
+ gnd
+ AOI22X1
X_5709_ _2220_ _2218_ _2196_ _2221_ vdd gnd OAI21X1
X_5710_ _2221_ _2217_ \z3.q2\[4] vdd gnd AND2X2
X_5711_ _2196_ _2220_ _2213_ _2222_ vdd gnd OAI21X1
X_5712_ _2204_ _2205_ _2209_ _2223_ vdd gnd OAI21X1
X_5713_ \z3.z3.z4.z1.s\ \z3.z3.z3.z2.c\ _2224_ vdd gnd NAND2X1
X_5714_ \z3.z3.z4.z1.s\ \z3.z3.z3.z2.c\ _2225_ vdd gnd OR2X2
X_5715_ _2224_ _2225_ _2226_ vdd gnd NAND2X1
X_5716_ _2226_ _2227_ vdd gnd INVX1
X_5717_ \z3.z3.z2.z2.c\ _2210_ _2228_ vdd gnd NAND2X1
X_5718_ \z3.z3.z2.z2.c\ _2229_ vdd gnd INVX1
X_5719_ _2229_ _2200_ _2230_ vdd gnd NAND2X1
X_5720_ _2227_ _2230_ _2228_ _2231_ vdd gnd NAND3X1
X_5721_ \z3.z3.z2.z2.c\ _2200_ _2232_ vdd gnd NAND2X1
X_5722_ _2229_ _2210_ _2233_ vdd gnd NAND2X1
X_5723_ _2226_ _2232_ _2233_ _2234_ vdd gnd NAND3X1
X_5724_ _2223_ _2231_ _2234_ _2235_ vdd gnd NAND3X1
X_5725_ _2223_ _2236_ vdd gnd INVX1
X_5726_ _2233_ _2232_ _2226_ _2237_ vdd gnd AOI21X1
X_5727_ _2228_ _2230_ _2227_ _2238_ vdd gnd AOI21X1
X_5728_ _2237_ _2238_ _2236_ _2239_ vdd gnd OAI21X1
X_5729_ _2235_ _2239_ _2240_ vdd gnd NAND2X1
X_5730_ _2222_ _2240_ _2241_ vdd gnd NAND2X1
X_5731_ _2240_ _2222_ _2242_ vdd gnd OR2X2
X_5732_ _2241_ _2242_ \z3.q2\[5] vdd gnd NAND2X1
X_5733_ \z3.z3.z4.z2.s\ _2243_ vdd gnd INVX1
X_5734_ _2224_ _2244_ vdd gnd INVX1
X_5735_ _2244_ _2237_ _2243_ _2245_ vdd gnd OAI21X1
X_5736_ \z3.z3.z4.z2.s\ _2224_ _2231_ _2246_ vdd gnd NAND3X1
X_5737_ _2239_ _2222_ _2247_ vdd gnd NAND2X1
X_5738_ _2245_ _2246_ _2247_ _2235_ _2248_ vdd 
+ gnd
+ AOI22X1
X_5739_ _2246_ _2245_ _2249_ vdd gnd NAND2X1
X_5740_ _2213_ _2235_ _2217_ _2250_ vdd gnd NAND3X1
X_5741_ _2250_ _2239_ _2249_ _2251_ vdd gnd AOI21X1
X_5742_ _2248_ _2251_ \z3.q2\[6] vdd gnd NOR2X1
X_5743_ _2244_ _2237_ \z3.z3.z4.z2.s\ _2170_ vdd gnd OAI21X1
X_5744_ _2239_ _2249_ _2250_ _2171_ vdd gnd NAND3X1
X_5745_ \z3.z3.z4.z2.c\ _2170_ _2171_ _2172_ vdd gnd NAND3X1
X_5746_ \z3.z3.z4.z2.c\ _2173_ vdd gnd INVX1
X_5747_ _2170_ _2174_ vdd gnd INVX1
X_5748_ _2174_ _2248_ _2173_ _2175_ vdd gnd OAI21X1
X_5749_ _2172_ _2175_ \z3.q2\[7] vdd gnd NAND2X1
X_5750_ _2195_ _2192_ _2181_ _2176_ vdd gnd AOI21X1
X_5751_ _2176_ _2197_ \z3.q2\[3] vdd gnd NOR2X1
X_5752_ b[12] a[0] \z3.q2\[0] vdd gnd AND2X2
X_5753_ b[12] a[1] \z3.z3.z1.z1.a\ vdd gnd AND2X2
X_5754_ a[0] b[13] \z3.z3.z1.z1.b\ vdd gnd AND2X2
X_5755_ a[1] b[13] \z3.z3.z1.z2.a\ vdd gnd AND2X2
X_5756_ \z3.z3.z1.z1.b\ _2252_ vdd gnd INVX1
X_5757_ \z3.z3.z1.z1.a\ _2252_ _2253_ vdd gnd NAND2X1
X_5758_ \z3.z3.z1.z1.a\ _2254_ vdd gnd INVX1
X_5759_ \z3.z3.z1.z1.b\ _2254_ _2255_ vdd gnd NAND2X1
X_5760_ _2253_ _2255_ \z3.z3.z1.z1.s\ vdd gnd NAND2X1
X_5761_ _2252_ _2254_ \z3.z3.z1.z1.c\ vdd gnd NOR2X1
X_5762_ \z3.z3.z1.z1.c\ _2256_ vdd gnd INVX1
X_5763_ \z3.z3.z1.z2.a\ _2256_ _2257_ vdd gnd NAND2X1
X_5764_ \z3.z3.z1.z2.a\ _2258_ vdd gnd INVX1
X_5765_ \z3.z3.z1.z1.c\ _2258_ _2259_ vdd gnd NAND2X1
X_5766_ _2257_ _2259_ \z3.z3.z1.z2.s\ vdd gnd NAND2X1
X_5767_ _2256_ _2258_ \z3.z3.z1.z2.c\ vdd gnd NOR2X1
X_5768_ b[12] a[2] \z3.z3.q1\[0] vdd gnd AND2X2
X_5769_ b[12] a[3] \z3.z3.z2.z1.a\ vdd gnd AND2X2
X_5770_ a[2] b[13] \z3.z3.z2.z1.b\ vdd gnd AND2X2
X_5771_ a[3] b[13] \z3.z3.z2.z2.a\ vdd gnd AND2X2
X_5772_ \z3.z3.z2.z1.b\ _2260_ vdd gnd INVX1
X_5773_ \z3.z3.z2.z1.a\ _2260_ _2261_ vdd gnd NAND2X1
X_5774_ \z3.z3.z2.z1.a\ _2262_ vdd gnd INVX1
X_5775_ \z3.z3.z2.z1.b\ _2262_ _2263_ vdd gnd NAND2X1
X_5776_ _2261_ _2263_ \z3.z3.z2.z1.s\ vdd gnd NAND2X1
X_5777_ _2260_ _2262_ \z3.z3.z2.z1.c\ vdd gnd NOR2X1
X_5778_ \z3.z3.z2.z1.c\ _2264_ vdd gnd INVX1
X_5779_ \z3.z3.z2.z2.a\ _2264_ _2265_ vdd gnd NAND2X1
X_5780_ \z3.z3.z2.z2.a\ _2266_ vdd gnd INVX1
X_5781_ \z3.z3.z2.z1.c\ _2266_ _2267_ vdd gnd NAND2X1
X_5782_ _2265_ _2267_ \z3.z3.z2.z2.s\ vdd gnd NAND2X1
X_5783_ _2264_ _2266_ \z3.z3.z2.z2.c\ vdd gnd NOR2X1
X_5784_ b[14] a[0] \z3.z3.q2\[0] vdd gnd AND2X2
X_5785_ b[14] a[1] \z3.z3.z3.z1.a\ vdd gnd AND2X2
X_5786_ a[0] b[15] \z3.z3.z3.z1.b\ vdd gnd AND2X2
X_5787_ a[1] b[15] \z3.z3.z3.z2.a\ vdd gnd AND2X2
X_5788_ \z3.z3.z3.z1.b\ _2268_ vdd gnd INVX1
X_5789_ \z3.z3.z3.z1.a\ _2268_ _2269_ vdd gnd NAND2X1
X_5790_ \z3.z3.z3.z1.a\ _2270_ vdd gnd INVX1
X_5791_ \z3.z3.z3.z1.b\ _2270_ _2271_ vdd gnd NAND2X1
X_5792_ _2269_ _2271_ \z3.z3.z3.z1.s\ vdd gnd NAND2X1
X_5793_ _2268_ _2270_ \z3.z3.z3.z1.c\ vdd gnd NOR2X1
X_5794_ \z3.z3.z3.z1.c\ _2272_ vdd gnd INVX1
X_5795_ \z3.z3.z3.z2.a\ _2272_ _2273_ vdd gnd NAND2X1
X_5796_ \z3.z3.z3.z2.a\ _2274_ vdd gnd INVX1
X_5797_ \z3.z3.z3.z1.c\ _2274_ _2275_ vdd gnd NAND2X1
X_5798_ _2273_ _2275_ \z3.z3.z3.z2.s\ vdd gnd NAND2X1
X_5799_ _2272_ _2274_ \z3.z3.z3.z2.c\ vdd gnd NOR2X1
X_5800_ b[14] a[2] \z3.z3.q3\[0] vdd gnd AND2X2
X_5801_ b[14] a[3] \z3.z3.z4.z1.a\ vdd gnd AND2X2
X_5802_ a[2] b[15] \z3.z3.z4.z1.b\ vdd gnd AND2X2
X_5803_ a[3] b[15] \z3.z3.z4.z2.a\ vdd gnd AND2X2
X_5804_ \z3.z3.z4.z1.b\ _2276_ vdd gnd INVX1
X_5805_ \z3.z3.z4.z1.a\ _2276_ _2277_ vdd gnd NAND2X1
X_5806_ \z3.z3.z4.z1.a\ _2278_ vdd gnd INVX1
X_5807_ \z3.z3.z4.z1.b\ _2278_ _2279_ vdd gnd NAND2X1
X_5808_ _2277_ _2279_ \z3.z3.z4.z1.s\ vdd gnd NAND2X1
X_5809_ _2276_ _2278_ \z3.z3.z4.z1.c\ vdd gnd NOR2X1
X_5810_ \z3.z3.z4.z1.c\ _2280_ vdd gnd INVX1
X_5811_ \z3.z3.z4.z2.a\ _2280_ _2281_ vdd gnd NAND2X1
X_5812_ \z3.z3.z4.z2.a\ _2282_ vdd gnd INVX1
X_5813_ \z3.z3.z4.z1.c\ _2282_ _2283_ vdd gnd NAND2X1
X_5814_ _2281_ _2283_ \z3.z3.z4.z2.s\ vdd gnd NAND2X1
X_5815_ _2280_ _2282_ \z3.z3.z4.z2.c\ vdd gnd NOR2X1
X_5816_ \z3.z4.q1\[0] \z3.z4.z1.z2.s\ _2291_ vdd gnd NOR2X1
X_5817_ \z3.z4.q1\[0] \z3.z4.z1.z2.s\ _2292_ vdd gnd AND2X2
X_5818_ _2291_ _2292_ _2293_ vdd gnd NOR2X1
X_5819_ \z3.z4.q2\[0] _2293_ _2294_ vdd gnd NAND2X1
X_5820_ _2294_ _2295_ vdd gnd INVX1
X_5821_ \z3.z4.q2\[0] _2293_ _2296_ vdd gnd NOR2X1
X_5822_ _2296_ _2295_ \z3.q3\[2] vdd gnd NOR2X1
X_5823_ \z3.z4.q1\[0] \z3.z4.z1.z2.s\ _2297_ vdd gnd NAND2X1
X_5824_ \z3.z4.z2.z1.s\ \z3.z4.z1.z2.c\ _2298_ vdd gnd NOR2X1
X_5825_ \z3.z4.z2.z1.s\ \z3.z4.z1.z2.c\ _2299_ vdd gnd NAND2X1
X_5826_ _2299_ _2300_ vdd gnd INVX1
X_5827_ _2298_ _2300_ _2297_ _2301_ vdd gnd OAI21X1
X_5828_ \z3.z4.z2.z1.s\ _2302_ vdd gnd INVX1
X_5829_ \z3.z4.z1.z2.c\ _2303_ vdd gnd INVX1
X_5830_ _2302_ _2303_ _2304_ vdd gnd NAND2X1
X_5831_ _2292_ _2299_ _2304_ _2305_ vdd gnd NAND3X1
X_5832_ \z3.z4.z3.z1.s\ _2305_ _2301_ _2306_ vdd gnd NAND3X1
X_5833_ \z3.z4.z3.z1.s\ _2307_ vdd gnd INVX1
X_5834_ _2305_ _2301_ _2308_ vdd gnd NAND2X1
X_5835_ _2307_ _2308_ _2309_ vdd gnd NAND2X1
X_5836_ _2295_ _2306_ _2309_ _2310_ vdd gnd NAND3X1
X_5837_ _2310_ _2311_ vdd gnd INVX1
X_5838_ _2306_ _2312_ vdd gnd INVX1
X_5839_ _2297_ _2298_ _2299_ _2313_ vdd gnd OAI21X1
X_5840_ \z3.z4.z2.z2.s\ _2313_ _2314_ vdd gnd NAND2X1
X_5841_ \z3.z4.z2.z2.s\ _2315_ vdd gnd INVX1
X_5842_ _2315_ _2299_ _2305_ _2316_ vdd gnd NAND3X1
X_5843_ \z3.z4.q3\[0] \z3.z4.z3.z2.s\ _2317_ vdd gnd NAND2X1
X_5844_ \z3.z4.q3\[0] _2318_ vdd gnd INVX1
X_5845_ \z3.z4.z3.z2.s\ _2319_ vdd gnd INVX1
X_5846_ _2318_ _2319_ _2320_ vdd gnd NAND2X1
X_5847_ _2317_ _2320_ _2321_ vdd gnd NAND2X1
X_5848_ _2321_ _2322_ vdd gnd INVX1
X_5849_ _2314_ _2322_ _2316_ _2323_ vdd gnd NAND3X1
X_5850_ _2313_ \z3.z4.z2.z2.s\ _2324_ vdd gnd AND2X2
X_5851_ \z3.z4.z2.z2.s\ _2313_ _2325_ vdd gnd NOR2X1
X_5852_ _2325_ _2324_ _2321_ _2326_ vdd gnd OAI21X1
X_5853_ _2312_ _2323_ _2326_ _2327_ vdd gnd NAND3X1
X_5854_ _2323_ _2328_ vdd gnd INVX1
X_5855_ _2316_ _2314_ _2322_ _2329_ vdd gnd AOI21X1
X_5856_ _2329_ _2328_ _2306_ _2330_ vdd gnd OAI21X1
X_5857_ _2311_ _2327_ _2330_ _2331_ vdd gnd NAND3X1
X_5858_ _2327_ _2332_ vdd gnd INVX1
X_5859_ _2308_ _2333_ vdd gnd INVX1
X_5860_ \z3.z4.z3.z1.s\ _2333_ _2326_ _2323_ _2334_ vdd 
+ gnd
+ AOI22X1
X_5861_ _2334_ _2332_ _2310_ _2335_ vdd gnd OAI21X1
X_5862_ _2335_ _2331_ \z3.q3\[4] vdd gnd AND2X2
X_5863_ _2310_ _2334_ _2327_ _2336_ vdd gnd OAI21X1
X_5864_ _2318_ _2319_ _2323_ _2337_ vdd gnd OAI21X1
X_5865_ \z3.z4.z4.z1.s\ \z3.z4.z3.z2.c\ _2338_ vdd gnd NAND2X1
X_5866_ \z3.z4.z4.z1.s\ \z3.z4.z3.z2.c\ _2339_ vdd gnd OR2X2
X_5867_ _2338_ _2339_ _2340_ vdd gnd NAND2X1
X_5868_ _2340_ _2341_ vdd gnd INVX1
X_5869_ \z3.z4.z2.z2.c\ _2324_ _2342_ vdd gnd NAND2X1
X_5870_ \z3.z4.z2.z2.c\ _2343_ vdd gnd INVX1
X_5871_ _2343_ _2314_ _2344_ vdd gnd NAND2X1
X_5872_ _2341_ _2344_ _2342_ _2345_ vdd gnd NAND3X1
X_5873_ \z3.z4.z2.z2.c\ _2314_ _2346_ vdd gnd NAND2X1
X_5874_ _2343_ _2324_ _2347_ vdd gnd NAND2X1
X_5875_ _2340_ _2346_ _2347_ _2348_ vdd gnd NAND3X1
X_5876_ _2337_ _2345_ _2348_ _2349_ vdd gnd NAND3X1
X_5877_ _2337_ _2350_ vdd gnd INVX1
X_5878_ _2347_ _2346_ _2340_ _2351_ vdd gnd AOI21X1
X_5879_ _2342_ _2344_ _2341_ _2352_ vdd gnd AOI21X1
X_5880_ _2351_ _2352_ _2350_ _2353_ vdd gnd OAI21X1
X_5881_ _2349_ _2353_ _2354_ vdd gnd NAND2X1
X_5882_ _2336_ _2354_ _2355_ vdd gnd NAND2X1
X_5883_ _2354_ _2336_ _2356_ vdd gnd OR2X2
X_5884_ _2355_ _2356_ \z3.q3\[5] vdd gnd NAND2X1
X_5885_ \z3.z4.z4.z2.s\ _2357_ vdd gnd INVX1
X_5886_ _2338_ _2358_ vdd gnd INVX1
X_5887_ _2358_ _2351_ _2357_ _2359_ vdd gnd OAI21X1
X_5888_ \z3.z4.z4.z2.s\ _2338_ _2345_ _2360_ vdd gnd NAND3X1
X_5889_ _2353_ _2336_ _2361_ vdd gnd NAND2X1
X_5890_ _2359_ _2360_ _2361_ _2349_ _2362_ vdd 
+ gnd
+ AOI22X1
X_5891_ _2360_ _2359_ _2363_ vdd gnd NAND2X1
X_5892_ _2327_ _2349_ _2331_ _2364_ vdd gnd NAND3X1
X_5893_ _2364_ _2353_ _2363_ _2365_ vdd gnd AOI21X1
X_5894_ _2362_ _2365_ \z3.q3\[6] vdd gnd NOR2X1
X_5895_ _2358_ _2351_ \z3.z4.z4.z2.s\ _2284_ vdd gnd OAI21X1
X_5896_ _2353_ _2363_ _2364_ _2285_ vdd gnd NAND3X1
X_5897_ \z3.z4.z4.z2.c\ _2284_ _2285_ _2286_ vdd gnd NAND3X1
X_5898_ \z3.z4.z4.z2.c\ _2287_ vdd gnd INVX1
X_5899_ _2284_ _2288_ vdd gnd INVX1
X_5900_ _2288_ _2362_ _2287_ _2289_ vdd gnd OAI21X1
X_5901_ _2286_ _2289_ \z3.q3\[7] vdd gnd NAND2X1
X_5902_ _2309_ _2306_ _2295_ _2290_ vdd gnd AOI21X1
X_5903_ _2290_ _2311_ \z3.q3\[3] vdd gnd NOR2X1
X_5904_ b[12] a[4] \z3.q3\[0] vdd gnd AND2X2
X_5905_ b[12] a[5] \z3.z4.z1.z1.a\ vdd gnd AND2X2
X_5906_ a[4] b[13] \z3.z4.z1.z1.b\ vdd gnd AND2X2
X_5907_ a[5] b[13] \z3.z4.z1.z2.a\ vdd gnd AND2X2
X_5908_ \z3.z4.z1.z1.b\ _2366_ vdd gnd INVX1
X_5909_ \z3.z4.z1.z1.a\ _2366_ _2367_ vdd gnd NAND2X1
X_5910_ \z3.z4.z1.z1.a\ _2368_ vdd gnd INVX1
X_5911_ \z3.z4.z1.z1.b\ _2368_ _2369_ vdd gnd NAND2X1
X_5912_ _2367_ _2369_ \z3.z4.z1.z1.s\ vdd gnd NAND2X1
X_5913_ _2366_ _2368_ \z3.z4.z1.z1.c\ vdd gnd NOR2X1
X_5914_ \z3.z4.z1.z1.c\ _2370_ vdd gnd INVX1
X_5915_ \z3.z4.z1.z2.a\ _2370_ _2371_ vdd gnd NAND2X1
X_5916_ \z3.z4.z1.z2.a\ _2372_ vdd gnd INVX1
X_5917_ \z3.z4.z1.z1.c\ _2372_ _2373_ vdd gnd NAND2X1
X_5918_ _2371_ _2373_ \z3.z4.z1.z2.s\ vdd gnd NAND2X1
X_5919_ _2370_ _2372_ \z3.z4.z1.z2.c\ vdd gnd NOR2X1
X_5920_ b[12] a[6] \z3.z4.q1\[0] vdd gnd AND2X2
X_5921_ b[12] a[7] \z3.z4.z2.z1.a\ vdd gnd AND2X2
X_5922_ a[6] b[13] \z3.z4.z2.z1.b\ vdd gnd AND2X2
X_5923_ a[7] b[13] \z3.z4.z2.z2.a\ vdd gnd AND2X2
X_5924_ \z3.z4.z2.z1.b\ _2374_ vdd gnd INVX1
X_5925_ \z3.z4.z2.z1.a\ _2374_ _2375_ vdd gnd NAND2X1
X_5926_ \z3.z4.z2.z1.a\ _2376_ vdd gnd INVX1
X_5927_ \z3.z4.z2.z1.b\ _2376_ _2377_ vdd gnd NAND2X1
X_5928_ _2375_ _2377_ \z3.z4.z2.z1.s\ vdd gnd NAND2X1
X_5929_ _2374_ _2376_ \z3.z4.z2.z1.c\ vdd gnd NOR2X1
X_5930_ \z3.z4.z2.z1.c\ _2378_ vdd gnd INVX1
X_5931_ \z3.z4.z2.z2.a\ _2378_ _2379_ vdd gnd NAND2X1
X_5932_ \z3.z4.z2.z2.a\ _2380_ vdd gnd INVX1
X_5933_ \z3.z4.z2.z1.c\ _2380_ _2381_ vdd gnd NAND2X1
X_5934_ _2379_ _2381_ \z3.z4.z2.z2.s\ vdd gnd NAND2X1
X_5935_ _2378_ _2380_ \z3.z4.z2.z2.c\ vdd gnd NOR2X1
X_5936_ b[14] a[4] \z3.z4.q2\[0] vdd gnd AND2X2
X_5937_ b[14] a[5] \z3.z4.z3.z1.a\ vdd gnd AND2X2
X_5938_ a[4] b[15] \z3.z4.z3.z1.b\ vdd gnd AND2X2
X_5939_ a[5] b[15] \z3.z4.z3.z2.a\ vdd gnd AND2X2
X_5940_ \z3.z4.z3.z1.b\ _2382_ vdd gnd INVX1
X_5941_ \z3.z4.z3.z1.a\ _2382_ _2383_ vdd gnd NAND2X1
X_5942_ \z3.z4.z3.z1.a\ _2384_ vdd gnd INVX1
X_5943_ \z3.z4.z3.z1.b\ _2384_ _2385_ vdd gnd NAND2X1
X_5944_ _2383_ _2385_ \z3.z4.z3.z1.s\ vdd gnd NAND2X1
X_5945_ _2382_ _2384_ \z3.z4.z3.z1.c\ vdd gnd NOR2X1
X_5946_ \z3.z4.z3.z1.c\ _2386_ vdd gnd INVX1
X_5947_ \z3.z4.z3.z2.a\ _2386_ _2387_ vdd gnd NAND2X1
X_5948_ \z3.z4.z3.z2.a\ _2388_ vdd gnd INVX1
X_5949_ \z3.z4.z3.z1.c\ _2388_ _2389_ vdd gnd NAND2X1
X_5950_ _2387_ _2389_ \z3.z4.z3.z2.s\ vdd gnd NAND2X1
X_5951_ _2386_ _2388_ \z3.z4.z3.z2.c\ vdd gnd NOR2X1
X_5952_ b[14] a[6] \z3.z4.q3\[0] vdd gnd AND2X2
X_5953_ b[14] a[7] \z3.z4.z4.z1.a\ vdd gnd AND2X2
X_5954_ a[6] b[15] \z3.z4.z4.z1.b\ vdd gnd AND2X2
X_5955_ a[7] b[15] \z3.z4.z4.z2.a\ vdd gnd AND2X2
X_5956_ \z3.z4.z4.z1.b\ _2390_ vdd gnd INVX1
X_5957_ \z3.z4.z4.z1.a\ _2390_ _2391_ vdd gnd NAND2X1
X_5958_ \z3.z4.z4.z1.a\ _2392_ vdd gnd INVX1
X_5959_ \z3.z4.z4.z1.b\ _2392_ _2393_ vdd gnd NAND2X1
X_5960_ _2391_ _2393_ \z3.z4.z4.z1.s\ vdd gnd NAND2X1
X_5961_ _2390_ _2392_ \z3.z4.z4.z1.c\ vdd gnd NOR2X1
X_5962_ \z3.z4.z4.z1.c\ _2394_ vdd gnd INVX1
X_5963_ \z3.z4.z4.z2.a\ _2394_ _2395_ vdd gnd NAND2X1
X_5964_ \z3.z4.z4.z2.a\ _2396_ vdd gnd INVX1
X_5965_ \z3.z4.z4.z1.c\ _2396_ _2397_ vdd gnd NAND2X1
X_5966_ _2395_ _2397_ \z3.z4.z4.z2.s\ vdd gnd NAND2X1
X_5967_ _2394_ _2396_ \z3.z4.z4.z2.c\ vdd gnd NOR2X1
X_5968_ \z4.q1\[0] \z4.q0\[4] _2540_ vdd gnd OR2X2
X_5969_ \z4.q1\[0] \z4.q0\[4] _2541_ vdd gnd NAND2X1
X_5970_ _2541_ _2540_ _2542_ vdd gnd NAND2X1
X_5971_ _2542_ _2543_ vdd gnd INVX1
X_5972_ _2543_ \z4.q2\[0] _2544_ vdd gnd AND2X2
X_5973_ \z4.q2\[0] _2543_ _2545_ vdd gnd NOR2X1
X_5974_ _2545_ _2544_ q3[4] vdd gnd NOR2X1
X_5975_ \z4.z3.z1.z1.s\ _2546_ vdd gnd INVX1
X_5976_ _2541_ _2547_ vdd gnd INVX1
X_5977_ \z4.z2.z1.z1.s\ \z4.q0\[5] _2548_ vdd gnd NAND2X1
X_5978_ \z4.z2.z1.z1.s\ \z4.q0\[5] _2549_ vdd gnd OR2X2
X_5979_ _2548_ _2549_ _2547_ _2550_ vdd gnd NAND3X1
X_5980_ \z4.z2.z1.z1.s\ \z4.q0\[5] _2551_ vdd gnd AND2X2
X_5981_ \z4.z2.z1.z1.s\ \z4.q0\[5] _2552_ vdd gnd NOR2X1
X_5982_ _2552_ _2551_ _2541_ _2553_ vdd gnd OAI21X1
X_5983_ _2553_ _2550_ _2554_ vdd gnd NAND2X1
X_5984_ _2554_ _2546_ _2555_ vdd gnd OR2X2
X_5985_ _2546_ _2554_ _2556_ vdd gnd NAND2X1
X_5986_ _2555_ _2556_ _2557_ vdd gnd AND2X2
X_5987_ _2544_ _2557_ _2558_ vdd gnd NAND2X1
X_5988_ _2555_ _2559_ vdd gnd INVX1
X_5989_ _2541_ _2552_ _2548_ _2560_ vdd gnd OAI21X1
X_5990_ \z4.q0\[6] _2561_ vdd gnd INVX1
X_5991_ \z4.q1\[2] _2561_ _2562_ vdd gnd NOR2X1
X_5992_ \z4.q1\[2] _2563_ vdd gnd INVX1
X_5993_ \z4.q0\[6] _2563_ _2564_ vdd gnd NOR2X1
X_5994_ _2562_ _2564_ _2560_ _2565_ vdd gnd OAI21X1
X_5995_ \z4.q0\[6] _2563_ _2566_ vdd gnd NAND2X1
X_5996_ \z4.q1\[2] _2561_ _2567_ vdd gnd NAND2X1
X_5997_ _2566_ _2567_ _2568_ vdd gnd NAND2X1
X_5998_ _2568_ _2560_ _2569_ vdd gnd OR2X2
X_5999_ \z4.q2\[2] _2565_ _2569_ _2570_ vdd gnd NAND3X1
X_6000_ \z4.q2\[2] _2571_ vdd gnd INVX1
X_6001_ _2565_ _2569_ _2572_ vdd gnd NAND2X1
X_6002_ _2571_ _2572_ _2573_ vdd gnd NAND2X1
X_6003_ _2573_ _2570_ _2559_ _2574_ vdd gnd AOI21X1
X_6004_ _2574_ _2575_ vdd gnd INVX1
X_6005_ _2570_ _2573_ _2559_ _2576_ vdd gnd NAND3X1
X_6006_ _2558_ _2576_ _2575_ _2577_ vdd gnd NAND3X1
X_6007_ _2558_ _2578_ vdd gnd INVX1
X_6008_ _2576_ _2579_ vdd gnd INVX1
X_6009_ _2574_ _2579_ _2578_ _2580_ vdd gnd OAI21X1
X_6010_ _2577_ _2580_ q3[6] vdd gnd NAND2X1
X_6011_ _2574_ _2558_ _2576_ _2581_ vdd gnd OAI21X1
X_6012_ _2570_ _2582_ vdd gnd INVX1
X_6013_ \z4.q2\[3] _2583_ vdd gnd INVX1
X_6014_ \z4.q0\[7] _2584_ vdd gnd INVX1
X_6015_ \z4.q1\[3] _2584_ _2585_ vdd gnd NOR2X1
X_6016_ \z4.q1\[3] _2586_ vdd gnd INVX1
X_6017_ \z4.q0\[7] _2586_ _2587_ vdd gnd NOR2X1
X_6018_ \z4.q1\[2] \z4.q0\[6] _2588_ vdd gnd NAND2X1
X_6019_ _2588_ _2589_ vdd gnd INVX1
X_6020_ _2568_ _2560_ _2589_ _2590_ vdd gnd AOI21X1
X_6021_ _2585_ _2587_ _2590_ _2591_ vdd gnd OAI21X1
X_6022_ \z4.q1\[3] \z4.q0\[7] _2592_ vdd gnd NAND2X1
X_6023_ _2592_ _2593_ vdd gnd INVX1
X_6024_ \z4.q1\[3] \z4.q0\[7] _2594_ vdd gnd NOR2X1
X_6025_ _2590_ _2595_ vdd gnd INVX1
X_6026_ _2593_ _2594_ _2595_ _2596_ vdd gnd OAI21X1
X_6027_ _2596_ _2591_ _2583_ _2398_ vdd gnd AOI21X1
X_6028_ _2398_ _2399_ vdd gnd INVX1
X_6029_ _2583_ _2591_ _2596_ _2400_ vdd gnd NAND3X1
X_6030_ _2399_ _2400_ _2582_ _2401_ vdd gnd AOI21X1
X_6031_ _2582_ _2400_ _2399_ _2402_ vdd gnd NAND3X1
X_6032_ _2402_ _2403_ vdd gnd INVX1
X_6033_ _2401_ _2403_ _2581_ _2404_ vdd gnd OAI21X1
X_6034_ _2581_ _2405_ vdd gnd INVX1
X_6035_ _2400_ _2399_ _2406_ vdd gnd NAND2X1
X_6036_ _2571_ _2572_ _2406_ _2407_ vdd gnd OAI21X1
X_6037_ _2402_ _2405_ _2407_ _2408_ vdd gnd NAND3X1
X_6038_ _2408_ _2404_ q3[7] vdd gnd NAND2X1
X_6039_ _2407_ _2581_ _2403_ _2409_ vdd gnd AOI21X1
X_6040_ _2547_ _2549_ _2551_ _2410_ vdd gnd AOI21X1
X_6041_ _2562_ _2564_ _2585_ _2587_ _2411_ vdd 
+ gnd
+ OAI22X1
X_6042_ _2588_ _2594_ _2592_ _2412_ vdd gnd OAI21X1
X_6043_ _2412_ _2413_ vdd gnd INVX1
X_6044_ _2410_ _2411_ _2413_ _2414_ vdd gnd OAI21X1
X_6045_ \z4.q1\[4] _2414_ _2415_ vdd gnd NAND2X1
X_6046_ \z4.q1\[4] _2416_ vdd gnd INVX1
X_6047_ \z4.q0\[7] _2586_ _2417_ vdd gnd NAND2X1
X_6048_ \z4.q1\[3] _2584_ _2418_ vdd gnd NAND2X1
X_6049_ _2417_ _2418_ _2419_ vdd gnd NAND2X1
X_6050_ _2560_ _2568_ _2419_ _2420_ vdd gnd NAND3X1
X_6051_ _2416_ _2413_ _2420_ _2421_ vdd gnd NAND3X1
X_6052_ \z4.q3\[0] \z4.q2\[4] _2422_ vdd gnd NAND2X1
X_6053_ \z4.q3\[0] _2423_ vdd gnd INVX1
X_6054_ \z4.q2\[4] _2424_ vdd gnd INVX1
X_6055_ _2423_ _2424_ _2425_ vdd gnd NAND2X1
X_6056_ _2422_ _2425_ _2426_ vdd gnd NAND2X1
X_6057_ _2426_ _2427_ vdd gnd INVX1
X_6058_ _2421_ _2427_ _2415_ _2428_ vdd gnd NAND3X1
X_6059_ _2420_ _2413_ _2416_ _2429_ vdd gnd AOI21X1
X_6060_ _2421_ _2430_ vdd gnd INVX1
X_6061_ _2429_ _2430_ _2426_ _2431_ vdd gnd OAI21X1
X_6062_ _2428_ _2431_ _2398_ _2432_ vdd gnd NAND3X1
X_6063_ _2428_ _2431_ _2433_ vdd gnd NAND2X1
X_6064_ _2433_ _2399_ _2434_ vdd gnd NAND2X1
X_6065_ _2434_ _2432_ _2435_ vdd gnd AND2X2
X_6066_ _2435_ _2409_ _2436_ vdd gnd NAND2X1
X_6067_ _2401_ _2405_ _2402_ _2437_ vdd gnd OAI21X1
X_6068_ _2432_ _2434_ _2438_ vdd gnd NAND2X1
X_6069_ _2438_ _2437_ _2439_ vdd gnd NAND2X1
X_6070_ _2436_ _2439_ q3[8] vdd gnd NAND2X1
X_6071_ _2438_ _2409_ _2432_ _2440_ vdd gnd OAI21X1
X_6072_ _2423_ _2424_ _2428_ _2441_ vdd gnd OAI21X1
X_6073_ \z4.q1\[4] \z4.q1\[5] _2414_ _2442_ vdd gnd NAND3X1
X_6074_ \z4.q1\[5] _2443_ vdd gnd INVX1
X_6075_ _2566_ _2567_ _2417_ _2418_ _2444_ vdd 
+ gnd
+ AOI22X1
X_6076_ _2444_ _2560_ _2412_ _2445_ vdd gnd AOI21X1
X_6077_ _2416_ _2445_ _2443_ _2446_ vdd gnd OAI21X1
X_6078_ \z4.z4.z1.z1.s\ _2447_ vdd gnd INVX1
X_6079_ \z4.q2\[5] _2448_ vdd gnd INVX1
X_6080_ _2447_ _2448_ _2449_ vdd gnd NAND2X1
X_6081_ \z4.z4.z1.z1.s\ \z4.q2\[5] _2450_ vdd gnd NAND2X1
X_6082_ _2449_ _2450_ _2451_ vdd gnd AND2X2
X_6083_ _2451_ _2446_ _2442_ _2452_ vdd gnd NAND3X1
X_6084_ _2442_ _2446_ _2451_ _2453_ vdd gnd AOI21X1
X_6085_ _2453_ _2454_ vdd gnd INVX1
X_6086_ _2452_ _2441_ _2454_ _2455_ vdd gnd NAND3X1
X_6087_ _2428_ _2422_ _2456_ vdd gnd AND2X2
X_6088_ _2452_ _2457_ vdd gnd INVX1
X_6089_ _2457_ _2453_ _2456_ _2458_ vdd gnd OAI21X1
X_6090_ _2455_ _2458_ _2459_ vdd gnd NAND2X1
X_6091_ _2440_ _2459_ _2460_ vdd gnd OR2X2
X_6092_ _2459_ _2440_ _2461_ vdd gnd NAND2X1
X_6093_ _2461_ _2460_ q3[9] vdd gnd NAND2X1
X_6094_ _2455_ _2458_ _2435_ _2462_ vdd gnd NAND3X1
X_6095_ _2399_ _2433_ _2455_ _2463_ vdd gnd OAI21X1
X_6096_ _2458_ _2463_ _2464_ vdd gnd NAND2X1
X_6097_ _2409_ _2462_ _2464_ _2465_ vdd gnd OAI21X1
X_6098_ _2447_ _2448_ _2452_ _2466_ vdd gnd OAI21X1
X_6099_ \z4.q1\[5] \z4.q1\[6] _2429_ _2467_ vdd gnd NAND3X1
X_6100_ \z4.q1\[6] _2468_ vdd gnd INVX1
X_6101_ _2468_ _2442_ _2469_ vdd gnd NAND2X1
X_6102_ \z4.q3\[2] _2470_ vdd gnd INVX1
X_6103_ \z4.q2\[6] _2471_ vdd gnd INVX1
X_6104_ _2470_ _2471_ _2472_ vdd gnd NAND2X1
X_6105_ \z4.q3\[2] \z4.q2\[6] _2473_ vdd gnd NAND2X1
X_6106_ _2473_ _2472_ _2474_ vdd gnd NAND2X1
X_6107_ _2474_ _2475_ vdd gnd INVX1
X_6108_ _2467_ _2475_ _2469_ _2476_ vdd gnd NAND3X1
X_6109_ _2469_ _2467_ _2475_ _2477_ vdd gnd AOI21X1
X_6110_ _2477_ _2478_ vdd gnd INVX1
X_6111_ _2466_ _2476_ _2478_ _2479_ vdd gnd NAND3X1
X_6112_ _2466_ _2480_ vdd gnd INVX1
X_6113_ _2476_ _2481_ vdd gnd INVX1
X_6114_ _2477_ _2481_ _2480_ _2482_ vdd gnd OAI21X1
X_6115_ _2482_ _2479_ _2483_ vdd gnd NAND2X1
X_6116_ _2483_ _2465_ _2484_ vdd gnd NAND2X1
X_6117_ _2438_ _2459_ _2485_ vdd gnd NOR2X1
X_6118_ _2458_ _2463_ _2485_ _2437_ _2486_ vdd 
+ gnd
+ AOI22X1
X_6119_ _2479_ _2482_ _2487_ vdd gnd AND2X2
X_6120_ _2487_ _2486_ _2488_ vdd gnd NAND2X1
X_6121_ _2484_ _2488_ q3[10] vdd gnd NAND2X1
X_6122_ _2483_ _2486_ _2479_ _2489_ vdd gnd OAI21X1
X_6123_ _2470_ _2471_ _2476_ _2490_ vdd gnd OAI21X1
X_6124_ \z4.q3\[3] \z4.q2\[7] _2491_ vdd gnd NOR2X1
X_6125_ \z4.q3\[3] _2492_ vdd gnd INVX1
X_6126_ \z4.q2\[7] _2493_ vdd gnd INVX1
X_6127_ _2492_ _2493_ _2494_ vdd gnd NOR2X1
X_6128_ _2491_ _2494_ _2495_ vdd gnd NOR2X1
X_6129_ \z4.q1\[7] _2496_ vdd gnd INVX1
X_6130_ _2468_ _2442_ _2496_ _2497_ vdd gnd OAI21X1
X_6131_ _2429_ \z4.q1\[5] _2498_ vdd gnd AND2X2
X_6132_ \z4.q1\[6] \z4.q1\[7] _2498_ _2499_ vdd gnd NAND3X1
X_6133_ _2495_ _2497_ _2499_ _2500_ vdd gnd NAND3X1
X_6134_ _2495_ _2501_ vdd gnd INVX1
X_6135_ _2468_ _2442_ \z4.q1\[7] _2502_ vdd gnd OAI21X1
X_6136_ \z4.q1\[6] _2496_ _2498_ _2503_ vdd gnd NAND3X1
X_6137_ _2501_ _2502_ _2503_ _2504_ vdd gnd NAND3X1
X_6138_ _2500_ _2504_ _2490_ _2505_ vdd gnd NAND3X1
X_6139_ _2476_ _2473_ _2506_ vdd gnd AND2X2
X_6140_ _2500_ _2504_ _2507_ vdd gnd NAND2X1
X_6141_ _2506_ _2507_ _2508_ vdd gnd NAND2X1
X_6142_ _2505_ _2508_ _2509_ vdd gnd NAND2X1
X_6143_ _2489_ _2509_ _2510_ vdd gnd OR2X2
X_6144_ _2509_ _2489_ _2511_ vdd gnd NAND2X1
X_6145_ _2511_ _2510_ q3[11] vdd gnd NAND2X1
X_6146_ _2506_ _2507_ _2479_ _2512_ vdd gnd OAI21X1
X_6147_ _2508_ _2512_ _2513_ vdd gnd NAND2X1
X_6148_ _2505_ _2508_ _2487_ _2514_ vdd gnd NAND3X1
X_6149_ _2514_ _2486_ _2513_ _2515_ vdd gnd OAI21X1
X_6150_ _2492_ _2493_ _2500_ _2516_ vdd gnd OAI21X1
X_6151_ \z4.q3\[4] _2516_ _2517_ vdd gnd NAND2X1
X_6152_ _2516_ \z4.q3\[4] _2518_ vdd gnd OR2X2
X_6153_ _2517_ _2518_ _2515_ _2519_ vdd gnd NAND3X1
X_6154_ _2483_ _2509_ _2520_ vdd gnd NOR2X1
X_6155_ _2508_ _2512_ _2520_ _2465_ _2521_ vdd 
+ gnd
+ AOI22X1
X_6156_ _2517_ _2518_ _2522_ vdd gnd NAND2X1
X_6157_ _2522_ _2521_ _2523_ vdd gnd NAND2X1
X_6158_ _2519_ _2523_ q3[12] vdd gnd AND2X2
X_6159_ \z4.q3\[5] _2524_ vdd gnd INVX1
X_6160_ _2522_ _2521_ _2517_ _2525_ vdd gnd OAI21X1
X_6161_ _2524_ _2525_ _2526_ vdd gnd NAND2X1
X_6162_ \z4.q3\[5] _2517_ _2519_ _2527_ vdd gnd NAND3X1
X_6163_ _2527_ _2526_ q3[13] vdd gnd NAND2X1
X_6164_ \z4.q3\[6] _2528_ vdd gnd INVX1
X_6165_ \z4.q3\[5] _2517_ _2518_ _2529_ vdd gnd NAND3X1
X_6166_ _2524_ _2517_ _2529_ _2521_ _2530_ vdd 
+ gnd
+ OAI22X1
X_6167_ _2528_ _2530_ _2531_ vdd gnd NAND2X1
X_6168_ _2517_ _2532_ vdd gnd INVX1
X_6169_ _2529_ _2533_ vdd gnd INVX1
X_6170_ \z4.q3\[5] _2532_ _2515_ _2533_ _2534_ vdd 
+ gnd
+ AOI22X1
X_6171_ \z4.q3\[6] _2534_ _2535_ vdd gnd NAND2X1
X_6172_ _2535_ _2531_ q3[14] vdd gnd NAND2X1
X_6173_ _2528_ _2534_ \z4.q3\[7] _2536_ vdd gnd OAI21X1
X_6174_ \z4.q3\[7] _2537_ vdd gnd INVX1
X_6175_ \z4.q3\[6] _2537_ _2530_ _2538_ vdd gnd NAND3X1
X_6176_ _2538_ _2536_ q3[15] vdd gnd NAND2X1
X_6177_ _2544_ _2557_ _2539_ vdd gnd NOR2X1
X_6178_ _2539_ _2578_ q3[5] vdd gnd NOR2X1
X_6179_ \z4.z1.q1\[0] \z4.z1.z1.z2.s\ _2604_ vdd gnd NOR2X1
X_6180_ \z4.z1.q1\[0] \z4.z1.z1.z2.s\ _2605_ vdd gnd AND2X2
X_6181_ _2604_ _2605_ _2606_ vdd gnd NOR2X1
X_6182_ \z4.z1.q2\[0] _2606_ _2607_ vdd gnd NAND2X1
X_6183_ _2607_ _2608_ vdd gnd INVX1
X_6184_ \z4.z1.q2\[0] _2606_ _2609_ vdd gnd NOR2X1
X_6185_ _2609_ _2608_ q3[2] vdd gnd NOR2X1
X_6186_ \z4.z1.q1\[0] \z4.z1.z1.z2.s\ _2610_ vdd gnd NAND2X1
X_6187_ \z4.z1.z2.z1.s\ \z4.z1.z1.z2.c\ _2611_ vdd gnd NOR2X1
X_6188_ \z4.z1.z2.z1.s\ \z4.z1.z1.z2.c\ _2612_ vdd gnd NAND2X1
X_6189_ _2612_ _2613_ vdd gnd INVX1
X_6190_ _2611_ _2613_ _2610_ _2614_ vdd gnd OAI21X1
X_6191_ \z4.z1.z2.z1.s\ _2615_ vdd gnd INVX1
X_6192_ \z4.z1.z1.z2.c\ _2616_ vdd gnd INVX1
X_6193_ _2615_ _2616_ _2617_ vdd gnd NAND2X1
X_6194_ _2605_ _2612_ _2617_ _2618_ vdd gnd NAND3X1
X_6195_ \z4.z1.z3.z1.s\ _2618_ _2614_ _2619_ vdd gnd NAND3X1
X_6196_ \z4.z1.z3.z1.s\ _2620_ vdd gnd INVX1
X_6197_ _2618_ _2614_ _2621_ vdd gnd NAND2X1
X_6198_ _2620_ _2621_ _2622_ vdd gnd NAND2X1
X_6199_ _2608_ _2619_ _2622_ _2623_ vdd gnd NAND3X1
X_6200_ _2623_ _2624_ vdd gnd INVX1
X_6201_ _2619_ _2625_ vdd gnd INVX1
X_6202_ _2610_ _2611_ _2612_ _2626_ vdd gnd OAI21X1
X_6203_ \z4.z1.z2.z2.s\ _2626_ _2627_ vdd gnd NAND2X1
X_6204_ \z4.z1.z2.z2.s\ _2628_ vdd gnd INVX1
X_6205_ _2628_ _2612_ _2618_ _2629_ vdd gnd NAND3X1
X_6206_ \z4.z1.q3\[0] \z4.z1.z3.z2.s\ _2630_ vdd gnd NAND2X1
X_6207_ \z4.z1.q3\[0] _2631_ vdd gnd INVX1
X_6208_ \z4.z1.z3.z2.s\ _2632_ vdd gnd INVX1
X_6209_ _2631_ _2632_ _2633_ vdd gnd NAND2X1
X_6210_ _2630_ _2633_ _2634_ vdd gnd NAND2X1
X_6211_ _2634_ _2635_ vdd gnd INVX1
X_6212_ _2627_ _2635_ _2629_ _2636_ vdd gnd NAND3X1
X_6213_ _2626_ \z4.z1.z2.z2.s\ _2637_ vdd gnd AND2X2
X_6214_ \z4.z1.z2.z2.s\ _2626_ _2638_ vdd gnd NOR2X1
X_6215_ _2638_ _2637_ _2634_ _2639_ vdd gnd OAI21X1
X_6216_ _2625_ _2636_ _2639_ _2640_ vdd gnd NAND3X1
X_6217_ _2636_ _2641_ vdd gnd INVX1
X_6218_ _2629_ _2627_ _2635_ _2642_ vdd gnd AOI21X1
X_6219_ _2642_ _2641_ _2619_ _2643_ vdd gnd OAI21X1
X_6220_ _2624_ _2640_ _2643_ _2644_ vdd gnd NAND3X1
X_6221_ _2640_ _2645_ vdd gnd INVX1
X_6222_ _2621_ _2646_ vdd gnd INVX1
X_6223_ \z4.z1.z3.z1.s\ _2646_ _2639_ _2636_ _2647_ vdd 
+ gnd
+ AOI22X1
X_6224_ _2647_ _2645_ _2623_ _2648_ vdd gnd OAI21X1
X_6225_ _2648_ _2644_ \z4.q0\[4] vdd gnd AND2X2
X_6226_ _2623_ _2647_ _2640_ _2649_ vdd gnd OAI21X1
X_6227_ _2631_ _2632_ _2636_ _2650_ vdd gnd OAI21X1
X_6228_ \z4.z1.z4.z1.s\ \z4.z1.z3.z2.c\ _2651_ vdd gnd NAND2X1
X_6229_ \z4.z1.z4.z1.s\ \z4.z1.z3.z2.c\ _2652_ vdd gnd OR2X2
X_6230_ _2651_ _2652_ _2653_ vdd gnd NAND2X1
X_6231_ _2653_ _2654_ vdd gnd INVX1
X_6232_ \z4.z1.z2.z2.c\ _2637_ _2655_ vdd gnd NAND2X1
X_6233_ \z4.z1.z2.z2.c\ _2656_ vdd gnd INVX1
X_6234_ _2656_ _2627_ _2657_ vdd gnd NAND2X1
X_6235_ _2654_ _2657_ _2655_ _2658_ vdd gnd NAND3X1
X_6236_ \z4.z1.z2.z2.c\ _2627_ _2659_ vdd gnd NAND2X1
X_6237_ _2656_ _2637_ _2660_ vdd gnd NAND2X1
X_6238_ _2653_ _2659_ _2660_ _2661_ vdd gnd NAND3X1
X_6239_ _2650_ _2658_ _2661_ _2662_ vdd gnd NAND3X1
X_6240_ _2650_ _2663_ vdd gnd INVX1
X_6241_ _2660_ _2659_ _2653_ _2664_ vdd gnd AOI21X1
X_6242_ _2655_ _2657_ _2654_ _2665_ vdd gnd AOI21X1
X_6243_ _2664_ _2665_ _2663_ _2666_ vdd gnd OAI21X1
X_6244_ _2662_ _2666_ _2667_ vdd gnd NAND2X1
X_6245_ _2649_ _2667_ _2668_ vdd gnd NAND2X1
X_6246_ _2667_ _2649_ _2669_ vdd gnd OR2X2
X_6247_ _2668_ _2669_ \z4.q0\[5] vdd gnd NAND2X1
X_6248_ \z4.z1.z4.z2.s\ _2670_ vdd gnd INVX1
X_6249_ _2651_ _2671_ vdd gnd INVX1
X_6250_ _2671_ _2664_ _2670_ _2672_ vdd gnd OAI21X1
X_6251_ \z4.z1.z4.z2.s\ _2651_ _2658_ _2673_ vdd gnd NAND3X1
X_6252_ _2666_ _2649_ _2674_ vdd gnd NAND2X1
X_6253_ _2672_ _2673_ _2674_ _2662_ _2675_ vdd 
+ gnd
+ AOI22X1
X_6254_ _2673_ _2672_ _2676_ vdd gnd NAND2X1
X_6255_ _2640_ _2662_ _2644_ _2677_ vdd gnd NAND3X1
X_6256_ _2677_ _2666_ _2676_ _2678_ vdd gnd AOI21X1
X_6257_ _2675_ _2678_ \z4.q0\[6] vdd gnd NOR2X1
X_6258_ _2671_ _2664_ \z4.z1.z4.z2.s\ _2597_ vdd gnd OAI21X1
X_6259_ _2666_ _2676_ _2677_ _2598_ vdd gnd NAND3X1
X_6260_ \z4.z1.z4.z2.c\ _2597_ _2598_ _2599_ vdd gnd NAND3X1
X_6261_ \z4.z1.z4.z2.c\ _2600_ vdd gnd INVX1
X_6262_ _2597_ _2601_ vdd gnd INVX1
X_6263_ _2601_ _2675_ _2600_ _2602_ vdd gnd OAI21X1
X_6264_ _2599_ _2602_ \z4.q0\[7] vdd gnd NAND2X1
X_6265_ _2622_ _2619_ _2608_ _2603_ vdd gnd AOI21X1
X_6266_ _2603_ _2624_ q3[3] vdd gnd NOR2X1
X_6267_ b[8] a[8] q3[0] vdd gnd AND2X2
X_6268_ b[8] a[9] \z4.z1.z1.z1.a\ vdd gnd AND2X2
X_6269_ a[8] b[9] \z4.z1.z1.z1.b\ vdd gnd AND2X2
X_6270_ a[9] b[9] \z4.z1.z1.z2.a\ vdd gnd AND2X2
X_6271_ \z4.z1.z1.z1.b\ _2679_ vdd gnd INVX1
X_6272_ \z4.z1.z1.z1.a\ _2679_ _2680_ vdd gnd NAND2X1
X_6273_ \z4.z1.z1.z1.a\ _2681_ vdd gnd INVX1
X_6274_ \z4.z1.z1.z1.b\ _2681_ _2682_ vdd gnd NAND2X1
X_6275_ _2680_ _2682_ \z4.z1.z1.z1.s\ vdd gnd NAND2X1
X_6276_ _2679_ _2681_ \z4.z1.z1.z1.c\ vdd gnd NOR2X1
X_6277_ \z4.z1.z1.z1.c\ _2683_ vdd gnd INVX1
X_6278_ \z4.z1.z1.z2.a\ _2683_ _2684_ vdd gnd NAND2X1
X_6279_ \z4.z1.z1.z2.a\ _2685_ vdd gnd INVX1
X_6280_ \z4.z1.z1.z1.c\ _2685_ _2686_ vdd gnd NAND2X1
X_6281_ _2684_ _2686_ \z4.z1.z1.z2.s\ vdd gnd NAND2X1
X_6282_ _2683_ _2685_ \z4.z1.z1.z2.c\ vdd gnd NOR2X1
X_6283_ b[8] a[10] \z4.z1.q1\[0] vdd gnd AND2X2
X_6284_ b[8] a[11] \z4.z1.z2.z1.a\ vdd gnd AND2X2
X_6285_ a[10] b[9] \z4.z1.z2.z1.b\ vdd gnd AND2X2
X_6286_ a[11] b[9] \z4.z1.z2.z2.a\ vdd gnd AND2X2
X_6287_ \z4.z1.z2.z1.b\ _2687_ vdd gnd INVX1
X_6288_ \z4.z1.z2.z1.a\ _2687_ _2688_ vdd gnd NAND2X1
X_6289_ \z4.z1.z2.z1.a\ _2689_ vdd gnd INVX1
X_6290_ \z4.z1.z2.z1.b\ _2689_ _2690_ vdd gnd NAND2X1
X_6291_ _2688_ _2690_ \z4.z1.z2.z1.s\ vdd gnd NAND2X1
X_6292_ _2687_ _2689_ \z4.z1.z2.z1.c\ vdd gnd NOR2X1
X_6293_ \z4.z1.z2.z1.c\ _2691_ vdd gnd INVX1
X_6294_ \z4.z1.z2.z2.a\ _2691_ _2692_ vdd gnd NAND2X1
X_6295_ \z4.z1.z2.z2.a\ _2693_ vdd gnd INVX1
X_6296_ \z4.z1.z2.z1.c\ _2693_ _2694_ vdd gnd NAND2X1
X_6297_ _2692_ _2694_ \z4.z1.z2.z2.s\ vdd gnd NAND2X1
X_6298_ _2691_ _2693_ \z4.z1.z2.z2.c\ vdd gnd NOR2X1
X_6299_ b[10] a[8] \z4.z1.q2\[0] vdd gnd AND2X2
X_6300_ b[10] a[9] \z4.z1.z3.z1.a\ vdd gnd AND2X2
X_6301_ a[8] b[11] \z4.z1.z3.z1.b\ vdd gnd AND2X2
X_6302_ a[9] b[11] \z4.z1.z3.z2.a\ vdd gnd AND2X2
X_6303_ \z4.z1.z3.z1.b\ _2695_ vdd gnd INVX1
X_6304_ \z4.z1.z3.z1.a\ _2695_ _2696_ vdd gnd NAND2X1
X_6305_ \z4.z1.z3.z1.a\ _2697_ vdd gnd INVX1
X_6306_ \z4.z1.z3.z1.b\ _2697_ _2698_ vdd gnd NAND2X1
X_6307_ _2696_ _2698_ \z4.z1.z3.z1.s\ vdd gnd NAND2X1
X_6308_ _2695_ _2697_ \z4.z1.z3.z1.c\ vdd gnd NOR2X1
X_6309_ \z4.z1.z3.z1.c\ _2699_ vdd gnd INVX1
X_6310_ \z4.z1.z3.z2.a\ _2699_ _2700_ vdd gnd NAND2X1
X_6311_ \z4.z1.z3.z2.a\ _2701_ vdd gnd INVX1
X_6312_ \z4.z1.z3.z1.c\ _2701_ _2702_ vdd gnd NAND2X1
X_6313_ _2700_ _2702_ \z4.z1.z3.z2.s\ vdd gnd NAND2X1
X_6314_ _2699_ _2701_ \z4.z1.z3.z2.c\ vdd gnd NOR2X1
X_6315_ b[10] a[10] \z4.z1.q3\[0] vdd gnd AND2X2
X_6316_ b[10] a[11] \z4.z1.z4.z1.a\ vdd gnd AND2X2
X_6317_ a[10] b[11] \z4.z1.z4.z1.b\ vdd gnd AND2X2
X_6318_ a[11] b[11] \z4.z1.z4.z2.a\ vdd gnd AND2X2
X_6319_ \z4.z1.z4.z1.b\ _2703_ vdd gnd INVX1
X_6320_ \z4.z1.z4.z1.a\ _2703_ _2704_ vdd gnd NAND2X1
X_6321_ \z4.z1.z4.z1.a\ _2705_ vdd gnd INVX1
X_6322_ \z4.z1.z4.z1.b\ _2705_ _2706_ vdd gnd NAND2X1
X_6323_ _2704_ _2706_ \z4.z1.z4.z1.s\ vdd gnd NAND2X1
X_6324_ _2703_ _2705_ \z4.z1.z4.z1.c\ vdd gnd NOR2X1
X_6325_ \z4.z1.z4.z1.c\ _2707_ vdd gnd INVX1
X_6326_ \z4.z1.z4.z2.a\ _2707_ _2708_ vdd gnd NAND2X1
X_6327_ \z4.z1.z4.z2.a\ _2709_ vdd gnd INVX1
X_6328_ \z4.z1.z4.z1.c\ _2709_ _2710_ vdd gnd NAND2X1
X_6329_ _2708_ _2710_ \z4.z1.z4.z2.s\ vdd gnd NAND2X1
X_6330_ _2707_ _2709_ \z4.z1.z4.z2.c\ vdd gnd NOR2X1
X_6331_ \z4.z2.q1\[0] \z4.z2.z1.z2.s\ _2718_ vdd gnd NOR2X1
X_6332_ \z4.z2.q1\[0] \z4.z2.z1.z2.s\ _2719_ vdd gnd AND2X2
X_6333_ _2718_ _2719_ _2720_ vdd gnd NOR2X1
X_6334_ \z4.z2.q2\[0] _2720_ _2721_ vdd gnd NAND2X1
X_6335_ _2721_ _2722_ vdd gnd INVX1
X_6336_ \z4.z2.q2\[0] _2720_ _2723_ vdd gnd NOR2X1
X_6337_ _2723_ _2722_ \z4.q1\[2] vdd gnd NOR2X1
X_6338_ \z4.z2.q1\[0] \z4.z2.z1.z2.s\ _2724_ vdd gnd NAND2X1
X_6339_ \z4.z2.z2.z1.s\ \z4.z2.z1.z2.c\ _2725_ vdd gnd NOR2X1
X_6340_ \z4.z2.z2.z1.s\ \z4.z2.z1.z2.c\ _2726_ vdd gnd NAND2X1
X_6341_ _2726_ _2727_ vdd gnd INVX1
X_6342_ _2725_ _2727_ _2724_ _2728_ vdd gnd OAI21X1
X_6343_ \z4.z2.z2.z1.s\ _2729_ vdd gnd INVX1
X_6344_ \z4.z2.z1.z2.c\ _2730_ vdd gnd INVX1
X_6345_ _2729_ _2730_ _2731_ vdd gnd NAND2X1
X_6346_ _2719_ _2726_ _2731_ _2732_ vdd gnd NAND3X1
X_6347_ \z4.z2.z3.z1.s\ _2732_ _2728_ _2733_ vdd gnd NAND3X1
X_6348_ \z4.z2.z3.z1.s\ _2734_ vdd gnd INVX1
X_6349_ _2732_ _2728_ _2735_ vdd gnd NAND2X1
X_6350_ _2734_ _2735_ _2736_ vdd gnd NAND2X1
X_6351_ _2722_ _2733_ _2736_ _2737_ vdd gnd NAND3X1
X_6352_ _2737_ _2738_ vdd gnd INVX1
X_6353_ _2733_ _2739_ vdd gnd INVX1
X_6354_ _2724_ _2725_ _2726_ _2740_ vdd gnd OAI21X1
X_6355_ \z4.z2.z2.z2.s\ _2740_ _2741_ vdd gnd NAND2X1
X_6356_ \z4.z2.z2.z2.s\ _2742_ vdd gnd INVX1
X_6357_ _2742_ _2726_ _2732_ _2743_ vdd gnd NAND3X1
X_6358_ \z4.z2.q3\[0] \z4.z2.z3.z2.s\ _2744_ vdd gnd NAND2X1
X_6359_ \z4.z2.q3\[0] _2745_ vdd gnd INVX1
X_6360_ \z4.z2.z3.z2.s\ _2746_ vdd gnd INVX1
X_6361_ _2745_ _2746_ _2747_ vdd gnd NAND2X1
X_6362_ _2744_ _2747_ _2748_ vdd gnd NAND2X1
X_6363_ _2748_ _2749_ vdd gnd INVX1
X_6364_ _2741_ _2749_ _2743_ _2750_ vdd gnd NAND3X1
X_6365_ _2740_ \z4.z2.z2.z2.s\ _2751_ vdd gnd AND2X2
X_6366_ \z4.z2.z2.z2.s\ _2740_ _2752_ vdd gnd NOR2X1
X_6367_ _2752_ _2751_ _2748_ _2753_ vdd gnd OAI21X1
X_6368_ _2739_ _2750_ _2753_ _2754_ vdd gnd NAND3X1
X_6369_ _2750_ _2755_ vdd gnd INVX1
X_6370_ _2743_ _2741_ _2749_ _2756_ vdd gnd AOI21X1
X_6371_ _2756_ _2755_ _2733_ _2757_ vdd gnd OAI21X1
X_6372_ _2738_ _2754_ _2757_ _2758_ vdd gnd NAND3X1
X_6373_ _2754_ _2759_ vdd gnd INVX1
X_6374_ _2735_ _2760_ vdd gnd INVX1
X_6375_ \z4.z2.z3.z1.s\ _2760_ _2753_ _2750_ _2761_ vdd 
+ gnd
+ AOI22X1
X_6376_ _2761_ _2759_ _2737_ _2762_ vdd gnd OAI21X1
X_6377_ _2762_ _2758_ \z4.q1\[4] vdd gnd AND2X2
X_6378_ _2737_ _2761_ _2754_ _2763_ vdd gnd OAI21X1
X_6379_ _2745_ _2746_ _2750_ _2764_ vdd gnd OAI21X1
X_6380_ \z4.z2.z4.z1.s\ \z4.z2.z3.z2.c\ _2765_ vdd gnd NAND2X1
X_6381_ \z4.z2.z4.z1.s\ \z4.z2.z3.z2.c\ _2766_ vdd gnd OR2X2
X_6382_ _2765_ _2766_ _2767_ vdd gnd NAND2X1
X_6383_ _2767_ _2768_ vdd gnd INVX1
X_6384_ \z4.z2.z2.z2.c\ _2751_ _2769_ vdd gnd NAND2X1
X_6385_ \z4.z2.z2.z2.c\ _2770_ vdd gnd INVX1
X_6386_ _2770_ _2741_ _2771_ vdd gnd NAND2X1
X_6387_ _2768_ _2771_ _2769_ _2772_ vdd gnd NAND3X1
X_6388_ \z4.z2.z2.z2.c\ _2741_ _2773_ vdd gnd NAND2X1
X_6389_ _2770_ _2751_ _2774_ vdd gnd NAND2X1
X_6390_ _2767_ _2773_ _2774_ _2775_ vdd gnd NAND3X1
X_6391_ _2764_ _2772_ _2775_ _2776_ vdd gnd NAND3X1
X_6392_ _2764_ _2777_ vdd gnd INVX1
X_6393_ _2774_ _2773_ _2767_ _2778_ vdd gnd AOI21X1
X_6394_ _2769_ _2771_ _2768_ _2779_ vdd gnd AOI21X1
X_6395_ _2778_ _2779_ _2777_ _2780_ vdd gnd OAI21X1
X_6396_ _2776_ _2780_ _2781_ vdd gnd NAND2X1
X_6397_ _2763_ _2781_ _2782_ vdd gnd NAND2X1
X_6398_ _2781_ _2763_ _2783_ vdd gnd OR2X2
X_6399_ _2782_ _2783_ \z4.q1\[5] vdd gnd NAND2X1
X_6400_ \z4.z2.z4.z2.s\ _2784_ vdd gnd INVX1
X_6401_ _2765_ _2785_ vdd gnd INVX1
X_6402_ _2785_ _2778_ _2784_ _2786_ vdd gnd OAI21X1
X_6403_ \z4.z2.z4.z2.s\ _2765_ _2772_ _2787_ vdd gnd NAND3X1
X_6404_ _2780_ _2763_ _2788_ vdd gnd NAND2X1
X_6405_ _2786_ _2787_ _2788_ _2776_ _2789_ vdd 
+ gnd
+ AOI22X1
X_6406_ _2787_ _2786_ _2790_ vdd gnd NAND2X1
X_6407_ _2754_ _2776_ _2758_ _2791_ vdd gnd NAND3X1
X_6408_ _2791_ _2780_ _2790_ _2792_ vdd gnd AOI21X1
X_6409_ _2789_ _2792_ \z4.q1\[6] vdd gnd NOR2X1
X_6410_ _2785_ _2778_ \z4.z2.z4.z2.s\ _2711_ vdd gnd OAI21X1
X_6411_ _2780_ _2790_ _2791_ _2712_ vdd gnd NAND3X1
X_6412_ \z4.z2.z4.z2.c\ _2711_ _2712_ _2713_ vdd gnd NAND3X1
X_6413_ \z4.z2.z4.z2.c\ _2714_ vdd gnd INVX1
X_6414_ _2711_ _2715_ vdd gnd INVX1
X_6415_ _2715_ _2789_ _2714_ _2716_ vdd gnd OAI21X1
X_6416_ _2713_ _2716_ \z4.q1\[7] vdd gnd NAND2X1
X_6417_ _2736_ _2733_ _2722_ _2717_ vdd gnd AOI21X1
X_6418_ _2717_ _2738_ \z4.q1\[3] vdd gnd NOR2X1
X_6419_ b[8] a[12] \z4.q1\[0] vdd gnd AND2X2
X_6420_ b[8] a[13] \z4.z2.z1.z1.a\ vdd gnd AND2X2
X_6421_ a[12] b[9] \z4.z2.z1.z1.b\ vdd gnd AND2X2
X_6422_ a[13] b[9] \z4.z2.z1.z2.a\ vdd gnd AND2X2
X_6423_ \z4.z2.z1.z1.b\ _2793_ vdd gnd INVX1
X_6424_ \z4.z2.z1.z1.a\ _2793_ _2794_ vdd gnd NAND2X1
X_6425_ \z4.z2.z1.z1.a\ _2795_ vdd gnd INVX1
X_6426_ \z4.z2.z1.z1.b\ _2795_ _2796_ vdd gnd NAND2X1
X_6427_ _2794_ _2796_ \z4.z2.z1.z1.s\ vdd gnd NAND2X1
X_6428_ _2793_ _2795_ \z4.z2.z1.z1.c\ vdd gnd NOR2X1
X_6429_ \z4.z2.z1.z1.c\ _2797_ vdd gnd INVX1
X_6430_ \z4.z2.z1.z2.a\ _2797_ _2798_ vdd gnd NAND2X1
X_6431_ \z4.z2.z1.z2.a\ _2799_ vdd gnd INVX1
X_6432_ \z4.z2.z1.z1.c\ _2799_ _2800_ vdd gnd NAND2X1
X_6433_ _2798_ _2800_ \z4.z2.z1.z2.s\ vdd gnd NAND2X1
X_6434_ _2797_ _2799_ \z4.z2.z1.z2.c\ vdd gnd NOR2X1
X_6435_ b[8] a[14] \z4.z2.q1\[0] vdd gnd AND2X2
X_6436_ b[8] a[15] \z4.z2.z2.z1.a\ vdd gnd AND2X2
X_6437_ a[14] b[9] \z4.z2.z2.z1.b\ vdd gnd AND2X2
X_6438_ a[15] b[9] \z4.z2.z2.z2.a\ vdd gnd AND2X2
X_6439_ \z4.z2.z2.z1.b\ _2801_ vdd gnd INVX1
X_6440_ \z4.z2.z2.z1.a\ _2801_ _2802_ vdd gnd NAND2X1
X_6441_ \z4.z2.z2.z1.a\ _2803_ vdd gnd INVX1
X_6442_ \z4.z2.z2.z1.b\ _2803_ _2804_ vdd gnd NAND2X1
X_6443_ _2802_ _2804_ \z4.z2.z2.z1.s\ vdd gnd NAND2X1
X_6444_ _2801_ _2803_ \z4.z2.z2.z1.c\ vdd gnd NOR2X1
X_6445_ \z4.z2.z2.z1.c\ _2805_ vdd gnd INVX1
X_6446_ \z4.z2.z2.z2.a\ _2805_ _2806_ vdd gnd NAND2X1
X_6447_ \z4.z2.z2.z2.a\ _2807_ vdd gnd INVX1
X_6448_ \z4.z2.z2.z1.c\ _2807_ _2808_ vdd gnd NAND2X1
X_6449_ _2806_ _2808_ \z4.z2.z2.z2.s\ vdd gnd NAND2X1
X_6450_ _2805_ _2807_ \z4.z2.z2.z2.c\ vdd gnd NOR2X1
X_6451_ b[10] a[12] \z4.z2.q2\[0] vdd gnd AND2X2
X_6452_ b[10] a[13] \z4.z2.z3.z1.a\ vdd gnd AND2X2
X_6453_ a[12] b[11] \z4.z2.z3.z1.b\ vdd gnd AND2X2
X_6454_ a[13] b[11] \z4.z2.z3.z2.a\ vdd gnd AND2X2
X_6455_ \z4.z2.z3.z1.b\ _2809_ vdd gnd INVX1
X_6456_ \z4.z2.z3.z1.a\ _2809_ _2810_ vdd gnd NAND2X1
X_6457_ \z4.z2.z3.z1.a\ _2811_ vdd gnd INVX1
X_6458_ \z4.z2.z3.z1.b\ _2811_ _2812_ vdd gnd NAND2X1
X_6459_ _2810_ _2812_ \z4.z2.z3.z1.s\ vdd gnd NAND2X1
X_6460_ _2809_ _2811_ \z4.z2.z3.z1.c\ vdd gnd NOR2X1
X_6461_ \z4.z2.z3.z1.c\ _2813_ vdd gnd INVX1
X_6462_ \z4.z2.z3.z2.a\ _2813_ _2814_ vdd gnd NAND2X1
X_6463_ \z4.z2.z3.z2.a\ _2815_ vdd gnd INVX1
X_6464_ \z4.z2.z3.z1.c\ _2815_ _2816_ vdd gnd NAND2X1
X_6465_ _2814_ _2816_ \z4.z2.z3.z2.s\ vdd gnd NAND2X1
X_6466_ _2813_ _2815_ \z4.z2.z3.z2.c\ vdd gnd NOR2X1
X_6467_ b[10] a[14] \z4.z2.q3\[0] vdd gnd AND2X2
X_6468_ b[10] a[15] \z4.z2.z4.z1.a\ vdd gnd AND2X2
X_6469_ a[14] b[11] \z4.z2.z4.z1.b\ vdd gnd AND2X2
X_6470_ a[15] b[11] \z4.z2.z4.z2.a\ vdd gnd AND2X2
X_6471_ \z4.z2.z4.z1.b\ _2817_ vdd gnd INVX1
X_6472_ \z4.z2.z4.z1.a\ _2817_ _2818_ vdd gnd NAND2X1
X_6473_ \z4.z2.z4.z1.a\ _2819_ vdd gnd INVX1
X_6474_ \z4.z2.z4.z1.b\ _2819_ _2820_ vdd gnd NAND2X1
X_6475_ _2818_ _2820_ \z4.z2.z4.z1.s\ vdd gnd NAND2X1
X_6476_ _2817_ _2819_ \z4.z2.z4.z1.c\ vdd gnd NOR2X1
X_6477_ \z4.z2.z4.z1.c\ _2821_ vdd gnd INVX1
X_6478_ \z4.z2.z4.z2.a\ _2821_ _2822_ vdd gnd NAND2X1
X_6479_ \z4.z2.z4.z2.a\ _2823_ vdd gnd INVX1
X_6480_ \z4.z2.z4.z1.c\ _2823_ _2824_ vdd gnd NAND2X1
X_6481_ _2822_ _2824_ \z4.z2.z4.z2.s\ vdd gnd NAND2X1
X_6482_ _2821_ _2823_ \z4.z2.z4.z2.c\ vdd gnd NOR2X1
X_6483_ \z4.z3.q1\[0] \z4.z3.z1.z2.s\ _2832_ vdd gnd NOR2X1
X_6484_ \z4.z3.q1\[0] \z4.z3.z1.z2.s\ _2833_ vdd gnd AND2X2
X_6485_ _2832_ _2833_ _2834_ vdd gnd NOR2X1
X_6486_ \z4.z3.q2\[0] _2834_ _2835_ vdd gnd NAND2X1
X_6487_ _2835_ _2836_ vdd gnd INVX1
X_6488_ \z4.z3.q2\[0] _2834_ _2837_ vdd gnd NOR2X1
X_6489_ _2837_ _2836_ \z4.q2\[2] vdd gnd NOR2X1
X_6490_ \z4.z3.q1\[0] \z4.z3.z1.z2.s\ _2838_ vdd gnd NAND2X1
X_6491_ \z4.z3.z2.z1.s\ \z4.z3.z1.z2.c\ _2839_ vdd gnd NOR2X1
X_6492_ \z4.z3.z2.z1.s\ \z4.z3.z1.z2.c\ _2840_ vdd gnd NAND2X1
X_6493_ _2840_ _2841_ vdd gnd INVX1
X_6494_ _2839_ _2841_ _2838_ _2842_ vdd gnd OAI21X1
X_6495_ \z4.z3.z2.z1.s\ _2843_ vdd gnd INVX1
X_6496_ \z4.z3.z1.z2.c\ _2844_ vdd gnd INVX1
X_6497_ _2843_ _2844_ _2845_ vdd gnd NAND2X1
X_6498_ _2833_ _2840_ _2845_ _2846_ vdd gnd NAND3X1
X_6499_ \z4.z3.z3.z1.s\ _2846_ _2842_ _2847_ vdd gnd NAND3X1
X_6500_ \z4.z3.z3.z1.s\ _2848_ vdd gnd INVX1
X_6501_ _2846_ _2842_ _2849_ vdd gnd NAND2X1
X_6502_ _2848_ _2849_ _2850_ vdd gnd NAND2X1
X_6503_ _2836_ _2847_ _2850_ _2851_ vdd gnd NAND3X1
X_6504_ _2851_ _2852_ vdd gnd INVX1
X_6505_ _2847_ _2853_ vdd gnd INVX1
X_6506_ _2838_ _2839_ _2840_ _2854_ vdd gnd OAI21X1
X_6507_ \z4.z3.z2.z2.s\ _2854_ _2855_ vdd gnd NAND2X1
X_6508_ \z4.z3.z2.z2.s\ _2856_ vdd gnd INVX1
X_6509_ _2856_ _2840_ _2846_ _2857_ vdd gnd NAND3X1
X_6510_ \z4.z3.q3\[0] \z4.z3.z3.z2.s\ _2858_ vdd gnd NAND2X1
X_6511_ \z4.z3.q3\[0] _2859_ vdd gnd INVX1
X_6512_ \z4.z3.z3.z2.s\ _2860_ vdd gnd INVX1
X_6513_ _2859_ _2860_ _2861_ vdd gnd NAND2X1
X_6514_ _2858_ _2861_ _2862_ vdd gnd NAND2X1
X_6515_ _2862_ _2863_ vdd gnd INVX1
X_6516_ _2855_ _2863_ _2857_ _2864_ vdd gnd NAND3X1
X_6517_ _2854_ \z4.z3.z2.z2.s\ _2865_ vdd gnd AND2X2
X_6518_ \z4.z3.z2.z2.s\ _2854_ _2866_ vdd gnd NOR2X1
X_6519_ _2866_ _2865_ _2862_ _2867_ vdd gnd OAI21X1
X_6520_ _2853_ _2864_ _2867_ _2868_ vdd gnd NAND3X1
X_6521_ _2864_ _2869_ vdd gnd INVX1
X_6522_ _2857_ _2855_ _2863_ _2870_ vdd gnd AOI21X1
X_6523_ _2870_ _2869_ _2847_ _2871_ vdd gnd OAI21X1
X_6524_ _2852_ _2868_ _2871_ _2872_ vdd gnd NAND3X1
X_6525_ _2868_ _2873_ vdd gnd INVX1
X_6526_ _2849_ _2874_ vdd gnd INVX1
X_6527_ \z4.z3.z3.z1.s\ _2874_ _2867_ _2864_ _2875_ vdd 
+ gnd
+ AOI22X1
X_6528_ _2875_ _2873_ _2851_ _2876_ vdd gnd OAI21X1
X_6529_ _2876_ _2872_ \z4.q2\[4] vdd gnd AND2X2
X_6530_ _2851_ _2875_ _2868_ _2877_ vdd gnd OAI21X1
X_6531_ _2859_ _2860_ _2864_ _2878_ vdd gnd OAI21X1
X_6532_ \z4.z3.z4.z1.s\ \z4.z3.z3.z2.c\ _2879_ vdd gnd NAND2X1
X_6533_ \z4.z3.z4.z1.s\ \z4.z3.z3.z2.c\ _2880_ vdd gnd OR2X2
X_6534_ _2879_ _2880_ _2881_ vdd gnd NAND2X1
X_6535_ _2881_ _2882_ vdd gnd INVX1
X_6536_ \z4.z3.z2.z2.c\ _2865_ _2883_ vdd gnd NAND2X1
X_6537_ \z4.z3.z2.z2.c\ _2884_ vdd gnd INVX1
X_6538_ _2884_ _2855_ _2885_ vdd gnd NAND2X1
X_6539_ _2882_ _2885_ _2883_ _2886_ vdd gnd NAND3X1
X_6540_ \z4.z3.z2.z2.c\ _2855_ _2887_ vdd gnd NAND2X1
X_6541_ _2884_ _2865_ _2888_ vdd gnd NAND2X1
X_6542_ _2881_ _2887_ _2888_ _2889_ vdd gnd NAND3X1
X_6543_ _2878_ _2886_ _2889_ _2890_ vdd gnd NAND3X1
X_6544_ _2878_ _2891_ vdd gnd INVX1
X_6545_ _2888_ _2887_ _2881_ _2892_ vdd gnd AOI21X1
X_6546_ _2883_ _2885_ _2882_ _2893_ vdd gnd AOI21X1
X_6547_ _2892_ _2893_ _2891_ _2894_ vdd gnd OAI21X1
X_6548_ _2890_ _2894_ _2895_ vdd gnd NAND2X1
X_6549_ _2877_ _2895_ _2896_ vdd gnd NAND2X1
X_6550_ _2895_ _2877_ _2897_ vdd gnd OR2X2
X_6551_ _2896_ _2897_ \z4.q2\[5] vdd gnd NAND2X1
X_6552_ \z4.z3.z4.z2.s\ _2898_ vdd gnd INVX1
X_6553_ _2879_ _2899_ vdd gnd INVX1
X_6554_ _2899_ _2892_ _2898_ _2900_ vdd gnd OAI21X1
X_6555_ \z4.z3.z4.z2.s\ _2879_ _2886_ _2901_ vdd gnd NAND3X1
X_6556_ _2894_ _2877_ _2902_ vdd gnd NAND2X1
X_6557_ _2900_ _2901_ _2902_ _2890_ _2903_ vdd 
+ gnd
+ AOI22X1
X_6558_ _2901_ _2900_ _2904_ vdd gnd NAND2X1
X_6559_ _2868_ _2890_ _2872_ _2905_ vdd gnd NAND3X1
X_6560_ _2905_ _2894_ _2904_ _2906_ vdd gnd AOI21X1
X_6561_ _2903_ _2906_ \z4.q2\[6] vdd gnd NOR2X1
X_6562_ _2899_ _2892_ \z4.z3.z4.z2.s\ _2825_ vdd gnd OAI21X1
X_6563_ _2894_ _2904_ _2905_ _2826_ vdd gnd NAND3X1
X_6564_ \z4.z3.z4.z2.c\ _2825_ _2826_ _2827_ vdd gnd NAND3X1
X_6565_ \z4.z3.z4.z2.c\ _2828_ vdd gnd INVX1
X_6566_ _2825_ _2829_ vdd gnd INVX1
X_6567_ _2829_ _2903_ _2828_ _2830_ vdd gnd OAI21X1
X_6568_ _2827_ _2830_ \z4.q2\[7] vdd gnd NAND2X1
X_6569_ _2850_ _2847_ _2836_ _2831_ vdd gnd AOI21X1
X_6570_ _2831_ _2852_ \z4.q2\[3] vdd gnd NOR2X1
X_6571_ b[12] a[8] \z4.q2\[0] vdd gnd AND2X2
X_6572_ b[12] a[9] \z4.z3.z1.z1.a\ vdd gnd AND2X2
X_6573_ a[8] b[13] \z4.z3.z1.z1.b\ vdd gnd AND2X2
X_6574_ a[9] b[13] \z4.z3.z1.z2.a\ vdd gnd AND2X2
X_6575_ \z4.z3.z1.z1.b\ _2907_ vdd gnd INVX1
X_6576_ \z4.z3.z1.z1.a\ _2907_ _2908_ vdd gnd NAND2X1
X_6577_ \z4.z3.z1.z1.a\ _2909_ vdd gnd INVX1
X_6578_ \z4.z3.z1.z1.b\ _2909_ _2910_ vdd gnd NAND2X1
X_6579_ _2908_ _2910_ \z4.z3.z1.z1.s\ vdd gnd NAND2X1
X_6580_ _2907_ _2909_ \z4.z3.z1.z1.c\ vdd gnd NOR2X1
X_6581_ \z4.z3.z1.z1.c\ _2911_ vdd gnd INVX1
X_6582_ \z4.z3.z1.z2.a\ _2911_ _2912_ vdd gnd NAND2X1
X_6583_ \z4.z3.z1.z2.a\ _2913_ vdd gnd INVX1
X_6584_ \z4.z3.z1.z1.c\ _2913_ _2914_ vdd gnd NAND2X1
X_6585_ _2912_ _2914_ \z4.z3.z1.z2.s\ vdd gnd NAND2X1
X_6586_ _2911_ _2913_ \z4.z3.z1.z2.c\ vdd gnd NOR2X1
X_6587_ b[12] a[10] \z4.z3.q1\[0] vdd gnd AND2X2
X_6588_ b[12] a[11] \z4.z3.z2.z1.a\ vdd gnd AND2X2
X_6589_ a[10] b[13] \z4.z3.z2.z1.b\ vdd gnd AND2X2
X_6590_ a[11] b[13] \z4.z3.z2.z2.a\ vdd gnd AND2X2
X_6591_ \z4.z3.z2.z1.b\ _2915_ vdd gnd INVX1
X_6592_ \z4.z3.z2.z1.a\ _2915_ _2916_ vdd gnd NAND2X1
X_6593_ \z4.z3.z2.z1.a\ _2917_ vdd gnd INVX1
X_6594_ \z4.z3.z2.z1.b\ _2917_ _2918_ vdd gnd NAND2X1
X_6595_ _2916_ _2918_ \z4.z3.z2.z1.s\ vdd gnd NAND2X1
X_6596_ _2915_ _2917_ \z4.z3.z2.z1.c\ vdd gnd NOR2X1
X_6597_ \z4.z3.z2.z1.c\ _2919_ vdd gnd INVX1
X_6598_ \z4.z3.z2.z2.a\ _2919_ _2920_ vdd gnd NAND2X1
X_6599_ \z4.z3.z2.z2.a\ _2921_ vdd gnd INVX1
X_6600_ \z4.z3.z2.z1.c\ _2921_ _2922_ vdd gnd NAND2X1
X_6601_ _2920_ _2922_ \z4.z3.z2.z2.s\ vdd gnd NAND2X1
X_6602_ _2919_ _2921_ \z4.z3.z2.z2.c\ vdd gnd NOR2X1
X_6603_ b[14] a[8] \z4.z3.q2\[0] vdd gnd AND2X2
X_6604_ b[14] a[9] \z4.z3.z3.z1.a\ vdd gnd AND2X2
X_6605_ a[8] b[15] \z4.z3.z3.z1.b\ vdd gnd AND2X2
X_6606_ a[9] b[15] \z4.z3.z3.z2.a\ vdd gnd AND2X2
X_6607_ \z4.z3.z3.z1.b\ _2923_ vdd gnd INVX1
X_6608_ \z4.z3.z3.z1.a\ _2923_ _2924_ vdd gnd NAND2X1
X_6609_ \z4.z3.z3.z1.a\ _2925_ vdd gnd INVX1
X_6610_ \z4.z3.z3.z1.b\ _2925_ _2926_ vdd gnd NAND2X1
X_6611_ _2924_ _2926_ \z4.z3.z3.z1.s\ vdd gnd NAND2X1
X_6612_ _2923_ _2925_ \z4.z3.z3.z1.c\ vdd gnd NOR2X1
X_6613_ \z4.z3.z3.z1.c\ _2927_ vdd gnd INVX1
X_6614_ \z4.z3.z3.z2.a\ _2927_ _2928_ vdd gnd NAND2X1
X_6615_ \z4.z3.z3.z2.a\ _2929_ vdd gnd INVX1
X_6616_ \z4.z3.z3.z1.c\ _2929_ _2930_ vdd gnd NAND2X1
X_6617_ _2928_ _2930_ \z4.z3.z3.z2.s\ vdd gnd NAND2X1
X_6618_ _2927_ _2929_ \z4.z3.z3.z2.c\ vdd gnd NOR2X1
X_6619_ b[14] a[10] \z4.z3.q3\[0] vdd gnd AND2X2
X_6620_ b[14] a[11] \z4.z3.z4.z1.a\ vdd gnd AND2X2
X_6621_ a[10] b[15] \z4.z3.z4.z1.b\ vdd gnd AND2X2
X_6622_ a[11] b[15] \z4.z3.z4.z2.a\ vdd gnd AND2X2
X_6623_ \z4.z3.z4.z1.b\ _2931_ vdd gnd INVX1
X_6624_ \z4.z3.z4.z1.a\ _2931_ _2932_ vdd gnd NAND2X1
X_6625_ \z4.z3.z4.z1.a\ _2933_ vdd gnd INVX1
X_6626_ \z4.z3.z4.z1.b\ _2933_ _2934_ vdd gnd NAND2X1
X_6627_ _2932_ _2934_ \z4.z3.z4.z1.s\ vdd gnd NAND2X1
X_6628_ _2931_ _2933_ \z4.z3.z4.z1.c\ vdd gnd NOR2X1
X_6629_ \z4.z3.z4.z1.c\ _2935_ vdd gnd INVX1
X_6630_ \z4.z3.z4.z2.a\ _2935_ _2936_ vdd gnd NAND2X1
X_6631_ \z4.z3.z4.z2.a\ _2937_ vdd gnd INVX1
X_6632_ \z4.z3.z4.z1.c\ _2937_ _2938_ vdd gnd NAND2X1
X_6633_ _2936_ _2938_ \z4.z3.z4.z2.s\ vdd gnd NAND2X1
X_6634_ _2935_ _2937_ \z4.z3.z4.z2.c\ vdd gnd NOR2X1
X_6635_ \z4.z4.q1\[0] \z4.z4.z1.z2.s\ _2946_ vdd gnd NOR2X1
X_6636_ \z4.z4.q1\[0] \z4.z4.z1.z2.s\ _2947_ vdd gnd AND2X2
X_6637_ _2946_ _2947_ _2948_ vdd gnd NOR2X1
X_6638_ \z4.z4.q2\[0] _2948_ _2949_ vdd gnd NAND2X1
X_6639_ _2949_ _2950_ vdd gnd INVX1
X_6640_ \z4.z4.q2\[0] _2948_ _2951_ vdd gnd NOR2X1
X_6641_ _2951_ _2950_ \z4.q3\[2] vdd gnd NOR2X1
X_6642_ \z4.z4.q1\[0] \z4.z4.z1.z2.s\ _2952_ vdd gnd NAND2X1
X_6643_ \z4.z4.z2.z1.s\ \z4.z4.z1.z2.c\ _2953_ vdd gnd NOR2X1
X_6644_ \z4.z4.z2.z1.s\ \z4.z4.z1.z2.c\ _2954_ vdd gnd NAND2X1
X_6645_ _2954_ _2955_ vdd gnd INVX1
X_6646_ _2953_ _2955_ _2952_ _2956_ vdd gnd OAI21X1
X_6647_ \z4.z4.z2.z1.s\ _2957_ vdd gnd INVX1
X_6648_ \z4.z4.z1.z2.c\ _2958_ vdd gnd INVX1
X_6649_ _2957_ _2958_ _2959_ vdd gnd NAND2X1
X_6650_ _2947_ _2954_ _2959_ _2960_ vdd gnd NAND3X1
X_6651_ \z4.z4.z3.z1.s\ _2960_ _2956_ _2961_ vdd gnd NAND3X1
X_6652_ \z4.z4.z3.z1.s\ _2962_ vdd gnd INVX1
X_6653_ _2960_ _2956_ _2963_ vdd gnd NAND2X1
X_6654_ _2962_ _2963_ _2964_ vdd gnd NAND2X1
X_6655_ _2950_ _2961_ _2964_ _2965_ vdd gnd NAND3X1
X_6656_ _2965_ _2966_ vdd gnd INVX1
X_6657_ _2961_ _2967_ vdd gnd INVX1
X_6658_ _2952_ _2953_ _2954_ _2968_ vdd gnd OAI21X1
X_6659_ \z4.z4.z2.z2.s\ _2968_ _2969_ vdd gnd NAND2X1
X_6660_ \z4.z4.z2.z2.s\ _2970_ vdd gnd INVX1
X_6661_ _2970_ _2954_ _2960_ _2971_ vdd gnd NAND3X1
X_6662_ \z4.z4.q3\[0] \z4.z4.z3.z2.s\ _2972_ vdd gnd NAND2X1
X_6663_ \z4.z4.q3\[0] _2973_ vdd gnd INVX1
X_6664_ \z4.z4.z3.z2.s\ _2974_ vdd gnd INVX1
X_6665_ _2973_ _2974_ _2975_ vdd gnd NAND2X1
X_6666_ _2972_ _2975_ _2976_ vdd gnd NAND2X1
X_6667_ _2976_ _2977_ vdd gnd INVX1
X_6668_ _2969_ _2977_ _2971_ _2978_ vdd gnd NAND3X1
X_6669_ _2968_ \z4.z4.z2.z2.s\ _2979_ vdd gnd AND2X2
X_6670_ \z4.z4.z2.z2.s\ _2968_ _2980_ vdd gnd NOR2X1
X_6671_ _2980_ _2979_ _2976_ _2981_ vdd gnd OAI21X1
X_6672_ _2967_ _2978_ _2981_ _2982_ vdd gnd NAND3X1
X_6673_ _2978_ _2983_ vdd gnd INVX1
X_6674_ _2971_ _2969_ _2977_ _2984_ vdd gnd AOI21X1
X_6675_ _2984_ _2983_ _2961_ _2985_ vdd gnd OAI21X1
X_6676_ _2966_ _2982_ _2985_ _2986_ vdd gnd NAND3X1
X_6677_ _2982_ _2987_ vdd gnd INVX1
X_6678_ _2963_ _2988_ vdd gnd INVX1
X_6679_ \z4.z4.z3.z1.s\ _2988_ _2981_ _2978_ _2989_ vdd 
+ gnd
+ AOI22X1
X_6680_ _2989_ _2987_ _2965_ _2990_ vdd gnd OAI21X1
X_6681_ _2990_ _2986_ \z4.q3\[4] vdd gnd AND2X2
X_6682_ _2965_ _2989_ _2982_ _2991_ vdd gnd OAI21X1
X_6683_ _2973_ _2974_ _2978_ _2992_ vdd gnd OAI21X1
X_6684_ \z4.z4.z4.z1.s\ \z4.z4.z3.z2.c\ _2993_ vdd gnd NAND2X1
X_6685_ \z4.z4.z4.z1.s\ \z4.z4.z3.z2.c\ _2994_ vdd gnd OR2X2
X_6686_ _2993_ _2994_ _2995_ vdd gnd NAND2X1
X_6687_ _2995_ _2996_ vdd gnd INVX1
X_6688_ \z4.z4.z2.z2.c\ _2979_ _2997_ vdd gnd NAND2X1
X_6689_ \z4.z4.z2.z2.c\ _2998_ vdd gnd INVX1
X_6690_ _2998_ _2969_ _2999_ vdd gnd NAND2X1
X_6691_ _2996_ _2999_ _2997_ _3000_ vdd gnd NAND3X1
X_6692_ \z4.z4.z2.z2.c\ _2969_ _3001_ vdd gnd NAND2X1
X_6693_ _2998_ _2979_ _3002_ vdd gnd NAND2X1
X_6694_ _2995_ _3001_ _3002_ _3003_ vdd gnd NAND3X1
X_6695_ _2992_ _3000_ _3003_ _3004_ vdd gnd NAND3X1
X_6696_ _2992_ _3005_ vdd gnd INVX1
X_6697_ _3002_ _3001_ _2995_ _3006_ vdd gnd AOI21X1
X_6698_ _2997_ _2999_ _2996_ _3007_ vdd gnd AOI21X1
X_6699_ _3006_ _3007_ _3005_ _3008_ vdd gnd OAI21X1
X_6700_ _3004_ _3008_ _3009_ vdd gnd NAND2X1
X_6701_ _2991_ _3009_ _3010_ vdd gnd NAND2X1
X_6702_ _3009_ _2991_ _3011_ vdd gnd OR2X2
X_6703_ _3010_ _3011_ \z4.q3\[5] vdd gnd NAND2X1
X_6704_ \z4.z4.z4.z2.s\ _3012_ vdd gnd INVX1
X_6705_ _2993_ _3013_ vdd gnd INVX1
X_6706_ _3013_ _3006_ _3012_ _3014_ vdd gnd OAI21X1
X_6707_ \z4.z4.z4.z2.s\ _2993_ _3000_ _3015_ vdd gnd NAND3X1
X_6708_ _3008_ _2991_ _3016_ vdd gnd NAND2X1
X_6709_ _3014_ _3015_ _3016_ _3004_ _3017_ vdd 
+ gnd
+ AOI22X1
X_6710_ _3015_ _3014_ _3018_ vdd gnd NAND2X1
X_6711_ _2982_ _3004_ _2986_ _3019_ vdd gnd NAND3X1
X_6712_ _3019_ _3008_ _3018_ _3020_ vdd gnd AOI21X1
X_6713_ _3017_ _3020_ \z4.q3\[6] vdd gnd NOR2X1
X_6714_ _3013_ _3006_ \z4.z4.z4.z2.s\ _2939_ vdd gnd OAI21X1
X_6715_ _3008_ _3018_ _3019_ _2940_ vdd gnd NAND3X1
X_6716_ \z4.z4.z4.z2.c\ _2939_ _2940_ _2941_ vdd gnd NAND3X1
X_6717_ \z4.z4.z4.z2.c\ _2942_ vdd gnd INVX1
X_6718_ _2939_ _2943_ vdd gnd INVX1
X_6719_ _2943_ _3017_ _2942_ _2944_ vdd gnd OAI21X1
X_6720_ _2941_ _2944_ \z4.q3\[7] vdd gnd NAND2X1
X_6721_ _2964_ _2961_ _2950_ _2945_ vdd gnd AOI21X1
X_6722_ _2945_ _2966_ \z4.q3\[3] vdd gnd NOR2X1
X_6723_ b[12] a[12] \z4.q3\[0] vdd gnd AND2X2
X_6724_ b[12] a[13] \z4.z4.z1.z1.a\ vdd gnd AND2X2
X_6725_ a[12] b[13] \z4.z4.z1.z1.b\ vdd gnd AND2X2
X_6726_ a[13] b[13] \z4.z4.z1.z2.a\ vdd gnd AND2X2
X_6727_ \z4.z4.z1.z1.b\ _3021_ vdd gnd INVX1
X_6728_ \z4.z4.z1.z1.a\ _3021_ _3022_ vdd gnd NAND2X1
X_6729_ \z4.z4.z1.z1.a\ _3023_ vdd gnd INVX1
X_6730_ \z4.z4.z1.z1.b\ _3023_ _3024_ vdd gnd NAND2X1
X_6731_ _3022_ _3024_ \z4.z4.z1.z1.s\ vdd gnd NAND2X1
X_6732_ _3021_ _3023_ \z4.z4.z1.z1.c\ vdd gnd NOR2X1
X_6733_ \z4.z4.z1.z1.c\ _3025_ vdd gnd INVX1
X_6734_ \z4.z4.z1.z2.a\ _3025_ _3026_ vdd gnd NAND2X1
X_6735_ \z4.z4.z1.z2.a\ _3027_ vdd gnd INVX1
X_6736_ \z4.z4.z1.z1.c\ _3027_ _3028_ vdd gnd NAND2X1
X_6737_ _3026_ _3028_ \z4.z4.z1.z2.s\ vdd gnd NAND2X1
X_6738_ _3025_ _3027_ \z4.z4.z1.z2.c\ vdd gnd NOR2X1
X_6739_ b[12] a[14] \z4.z4.q1\[0] vdd gnd AND2X2
X_6740_ b[12] a[15] \z4.z4.z2.z1.a\ vdd gnd AND2X2
X_6741_ a[14] b[13] \z4.z4.z2.z1.b\ vdd gnd AND2X2
X_6742_ a[15] b[13] \z4.z4.z2.z2.a\ vdd gnd AND2X2
X_6743_ \z4.z4.z2.z1.b\ _3029_ vdd gnd INVX1
X_6744_ \z4.z4.z2.z1.a\ _3029_ _3030_ vdd gnd NAND2X1
X_6745_ \z4.z4.z2.z1.a\ _3031_ vdd gnd INVX1
X_6746_ \z4.z4.z2.z1.b\ _3031_ _3032_ vdd gnd NAND2X1
X_6747_ _3030_ _3032_ \z4.z4.z2.z1.s\ vdd gnd NAND2X1
X_6748_ _3029_ _3031_ \z4.z4.z2.z1.c\ vdd gnd NOR2X1
X_6749_ \z4.z4.z2.z1.c\ _3033_ vdd gnd INVX1
X_6750_ \z4.z4.z2.z2.a\ _3033_ _3034_ vdd gnd NAND2X1
X_6751_ \z4.z4.z2.z2.a\ _3035_ vdd gnd INVX1
X_6752_ \z4.z4.z2.z1.c\ _3035_ _3036_ vdd gnd NAND2X1
X_6753_ _3034_ _3036_ \z4.z4.z2.z2.s\ vdd gnd NAND2X1
X_6754_ _3033_ _3035_ \z4.z4.z2.z2.c\ vdd gnd NOR2X1
X_6755_ b[14] a[12] \z4.z4.q2\[0] vdd gnd AND2X2
X_6756_ b[14] a[13] \z4.z4.z3.z1.a\ vdd gnd AND2X2
X_6757_ a[12] b[15] \z4.z4.z3.z1.b\ vdd gnd AND2X2
X_6758_ a[13] b[15] \z4.z4.z3.z2.a\ vdd gnd AND2X2
X_6759_ \z4.z4.z3.z1.b\ _3037_ vdd gnd INVX1
X_6760_ \z4.z4.z3.z1.a\ _3037_ _3038_ vdd gnd NAND2X1
X_6761_ \z4.z4.z3.z1.a\ _3039_ vdd gnd INVX1
X_6762_ \z4.z4.z3.z1.b\ _3039_ _3040_ vdd gnd NAND2X1
X_6763_ _3038_ _3040_ \z4.z4.z3.z1.s\ vdd gnd NAND2X1
X_6764_ _3037_ _3039_ \z4.z4.z3.z1.c\ vdd gnd NOR2X1
X_6765_ \z4.z4.z3.z1.c\ _3041_ vdd gnd INVX1
X_6766_ \z4.z4.z3.z2.a\ _3041_ _3042_ vdd gnd NAND2X1
X_6767_ \z4.z4.z3.z2.a\ _3043_ vdd gnd INVX1
X_6768_ \z4.z4.z3.z1.c\ _3043_ _3044_ vdd gnd NAND2X1
X_6769_ _3042_ _3044_ \z4.z4.z3.z2.s\ vdd gnd NAND2X1
X_6770_ _3041_ _3043_ \z4.z4.z3.z2.c\ vdd gnd NOR2X1
X_6771_ b[14] a[14] \z4.z4.q3\[0] vdd gnd AND2X2
X_6772_ b[14] a[15] \z4.z4.z4.z1.a\ vdd gnd AND2X2
X_6773_ a[14] b[15] \z4.z4.z4.z1.b\ vdd gnd AND2X2
X_6774_ a[15] b[15] \z4.z4.z4.z2.a\ vdd gnd AND2X2
X_6775_ \z4.z4.z4.z1.b\ _3045_ vdd gnd INVX1
X_6776_ \z4.z4.z4.z1.a\ _3045_ _3046_ vdd gnd NAND2X1
X_6777_ \z4.z4.z4.z1.a\ _3047_ vdd gnd INVX1
X_6778_ \z4.z4.z4.z1.b\ _3047_ _3048_ vdd gnd NAND2X1
X_6779_ _3046_ _3048_ \z4.z4.z4.z1.s\ vdd gnd NAND2X1
X_6780_ _3045_ _3047_ \z4.z4.z4.z1.c\ vdd gnd NOR2X1
X_6781_ \z4.z4.z4.z1.c\ _3049_ vdd gnd INVX1
X_6782_ \z4.z4.z4.z2.a\ _3049_ _3050_ vdd gnd NAND2X1
X_6783_ \z4.z4.z4.z2.a\ _3051_ vdd gnd INVX1
X_6784_ \z4.z4.z4.z1.c\ _3051_ _3052_ vdd gnd NAND2X1
X_6785_ _3050_ _3052_ \z4.z4.z4.z2.s\ vdd gnd NAND2X1
X_6786_ _3049_ _3051_ \z4.z4.z4.z2.c\ vdd gnd NOR2X1
X_6787_ q0[0] c[0] vdd gnd BUFX2
X_6788_ \z1.z1.z1.z1.s\ c[1] vdd gnd BUFX2
X_6789_ _3053_[10] c[10] vdd gnd BUFX2
X_6790_ _3053_[11] c[11] vdd gnd BUFX2
X_6791_ _3053_[12] c[12] vdd gnd BUFX2
X_6792_ _3053_[13] c[13] vdd gnd BUFX2
X_6793_ _3053_[14] c[14] vdd gnd BUFX2
X_6794_ _3053_[15] c[15] vdd gnd BUFX2
X_6795_ _3053_[16] c[16] vdd gnd BUFX2
X_6796_ _3053_[17] c[17] vdd gnd BUFX2
X_6797_ _3053_[18] c[18] vdd gnd BUFX2
X_6798_ _3053_[19] c[19] vdd gnd BUFX2
X_6799_ q0[2] c[2] vdd gnd BUFX2
X_6800_ _3053_[20] c[20] vdd gnd BUFX2
X_6801_ _3053_[21] c[21] vdd gnd BUFX2
X_6802_ _3053_[22] c[22] vdd gnd BUFX2
X_6803_ _3053_[23] c[23] vdd gnd BUFX2
X_6804_ _3053_[24] c[24] vdd gnd BUFX2
X_6805_ _3053_[25] c[25] vdd gnd BUFX2
X_6806_ _3053_[26] c[26] vdd gnd BUFX2
X_6807_ _3053_[27] c[27] vdd gnd BUFX2
X_6808_ _3053_[28] c[28] vdd gnd BUFX2
X_6809_ _3053_[29] c[29] vdd gnd BUFX2
X_6810_ q0[3] c[3] vdd gnd BUFX2
X_6811_ _3053_[30] c[30] vdd gnd BUFX2
X_6812_ _3053_[31] c[31] vdd gnd BUFX2
X_6813_ q0[4] c[4] vdd gnd BUFX2
X_6814_ q0[5] c[5] vdd gnd BUFX2
X_6815_ q0[6] c[6] vdd gnd BUFX2
X_6816_ q0[7] c[7] vdd gnd BUFX2
X_6817_ _3053_[8] c[8] vdd gnd BUFX2
X_6818_ _3053_[9] c[9] vdd gnd BUFX2

.ends
.end
