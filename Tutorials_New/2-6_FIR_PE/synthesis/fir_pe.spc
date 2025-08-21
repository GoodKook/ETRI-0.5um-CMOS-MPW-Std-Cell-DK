*SPICE netlist created from verilog structural netlist module fir_pe by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp
* NGSPICE file created from khu_etri050_stdcells.ext - technology: scmos

.subckt AOI22X1 A B C D Y vdd gnd
M1000 gnd C a_56_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=1.8p ps=6.6u
M1001 vdd A a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1002 Y D a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1004 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=1.8p ps=6.6u
M1005 a_7_146# C Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1006 a_7_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 a_56_14# D Y gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.2p ps=8.4u
.ends

.subckt CLKBUF3 A Y vdd gnd
M1000 a_145_14# a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 a_145_14# a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 gnd a_145_14# a_185_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1005 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1006 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 a_265_14# a_225_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1008 a_265_14# a_225_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1009 a_225_14# a_185_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1010 gnd a_265_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1011 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1012 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1013 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1014 Y a_265_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1015 gnd a_105_14# a_145_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1016 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1017 vdd a_105_14# a_145_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1018 a_225_14# a_185_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1019 gnd a_225_14# a_265_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1020 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1021 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1022 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1023 vdd a_185_14# a_225_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1024 vdd a_225_14# a_265_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1025 vdd a_145_14# a_185_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1026 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1027 a_185_14# a_145_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1028 gnd a_185_14# a_225_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1029 Y a_265_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1030 vdd a_265_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1031 a_185_14# a_145_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
.ends

.subckt INVX8 A Y vdd gnd
M1000 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1001 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1002 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1006 gnd A Y gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1007 vdd A Y vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
.ends

.subckt NOR3X1 A B C Y vdd gnd
M1000 gnd B Y gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1001 a_7_166# A vdd vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=10.8p ps=11.4u
M1002 a_7_166# B a_65_166# vdd pfet w=9u l=0.6u
+  ad=18.9p pd=22.2u as=10.8p ps=11.4u
M1003 a_65_166# C Y vdd pfet w=9u l=0.6u
+  ad=18.9p pd=22.2u as=10.8p ps=11.4u
M1004 Y C gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1005 a_65_166# B a_7_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=10.8p ps=11.4u
M1006 vdd A a_7_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=18.9p ps=22.2u
M1007 Y C a_65_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.4u as=18.9p ps=22.2u
M1008 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=7.2p ps=10.8u
.ends

.subckt CLKBUF1 A Y vdd gnd
M1000 Y a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 Y a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1005 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1006 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1007 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1008 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1009 gnd a_105_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1010 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1011 vdd a_105_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1012 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1013 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1014 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1015 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
.ends

.subckt MUX2X1 A B S Y vdd gnd
M1000 a_75_22# S Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1001 gnd S a_7_22# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=8.4u as=6.3p ps=10.2u
M1002 Y S a_45_138# vdd pfet w=12u l=0.6u
+  ad=14.49p pd=15.6u as=5.4p ps=12.9u
M1003 gnd A a_75_22# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=2.7p ps=6.9u
M1004 vdd A a_75_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=5.4p ps=12.9u
M1005 a_45_138# B vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=11.7p ps=14.4u
M1006 a_45_22# B gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=6.3p ps=8.4u
M1007 Y a_7_22# a_45_22# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1008 a_75_146# a_7_22# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.49p ps=15.6u
M1009 vdd S a_7_22# vdd pfet w=6u l=0.6u
+  ad=11.7p pd=14.4u as=12.6p ps=16.2u
.ends

.subckt NAND3X1 A B C Y vdd gnd
M1000 Y C a_34_14# gnd nfet w=9u l=0.6u
+  ad=18.9p pd=22.2u as=2.7p ps=9.6u
M1001 a_26_14# A gnd gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=18.9p ps=22.2u
M1002 vdd B Y vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1003 a_34_14# B a_26_14# gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=2.7p ps=9.6u
M1004 Y C vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt XOR2X1 A B Y vdd gnd
M1000 a_74_166# a_6_14# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
M1001 a_28_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1002 a_74_14# A Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1003 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 vdd A a_6_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1005 gnd B a_74_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1006 a_28_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1007 Y A a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1008 a_44_14# a_28_58# gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1009 vdd B a_74_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1010 Y a_6_14# a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1011 a_44_166# a_28_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
.ends

.subckt BUFX4 A Y vdd gnd
M1000 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=15.3p ps=14.7u
M1001 gnd A a_7_14# gnd nfet w=4.5u l=0.6u
+  ad=7.65p pd=8.7u as=9.45p ps=13.2u
M1002 vdd a_7_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1003 vdd A a_7_14# vdd pfet w=9u l=0.6u
+  ad=15.3p pd=14.7u as=18.9p ps=22.2u
M1004 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.65p ps=8.7u
M1005 gnd a_7_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
.ends

.subckt INVX4 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1002 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1003 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
.ends

.subckt OAI21X1 A B C Y vdd gnd
M1000 Y C a_7_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1001 a_30_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.2p ps=28.2u
M1002 vdd C Y vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=14.4p ps=14.7u
M1003 gnd A a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 Y B a_30_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.7u as=3.6p ps=12.6u
M1005 a_7_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
.ends

.subckt TBUFX2 A EN Y vdd gnd
M1000 vdd A a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 Y a_22_14# a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1002 a_22_14# EN vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=25.2p ps=28.2u
M1003 gnd A a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 a_44_14# A gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_44_166# A vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1006 a_44_166# a_22_14# Y vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 Y EN a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1008 a_22_14# EN gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
M1009 a_44_14# EN Y gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
.ends

.subckt DFFNEGX1 D CLK Q vdd gnd
M1000 a_163_14# a_7_14# a_153_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.35p ps=3.9u
M1001 a_77_186# CLK a_57_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.2p ps=8.4u
M1002 a_77_14# a_7_14# a_57_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1003 vdd a_83_10# a_77_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=3.6p ps=7.2u
M1004 vdd CLK a_7_14# vdd pfet w=12u l=0.6u
+  ad=12.15p pd=14.4u as=25.2p ps=28.2u
M1005 Q a_163_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=11.025p ps=14.4u
M1006 a_83_10# a_57_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=4.05p ps=5.7u
M1007 gnd CLK a_7_14# gnd nfet w=6u l=0.6u
+  ad=6.075p pd=8.4u as=12.6p ps=16.2u
M1008 gnd a_83_10# a_77_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1009 vdd Q a_183_206# vdd pfet w=3u l=0.6u
+  ad=11.025p pd=14.4u as=1.35p ps=3.9u
M1010 a_154_186# a_83_10# vdd vdd pfet w=6u l=0.6u
+  ad=2.25p pd=6.75u as=12.6p ps=16.2u
M1011 a_183_14# CLK a_163_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1012 a_45_186# D vdd vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=12.15p ps=14.4u
M1013 a_83_10# a_57_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1014 a_57_14# a_7_14# a_45_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=3.6p ps=7.2u
M1015 gnd Q a_183_14# gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.4u as=1.35p ps=3.9u
M1016 a_183_206# a_7_14# a_163_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.4u
M1017 a_45_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.075p ps=8.4u
M1018 a_57_14# CLK a_45_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.8p ps=4.2u
M1019 a_153_14# a_83_10# gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.3p ps=10.2u
M1020 Q a_163_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.075p ps=8.4u
M1021 a_163_14# CLK a_154_186# vdd pfet w=6u l=0.6u
+  ad=5.85p pd=8.4u as=2.25p ps=6.75u
.ends

.subckt AOI21X1 A B C Y vdd gnd
M1000 vdd A a_7_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1001 Y C a_7_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1002 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1003 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.7u as=1.8p ps=6.6u
M1004 a_7_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1005 gnd C Y gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=7.2p ps=8.7u
.ends

.subckt BUFX2 A Y vdd gnd
M1000 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.7u
M1001 gnd A a_7_14# gnd nfet w=3u l=0.6u
+  ad=7.2p pd=8.7u as=6.3p ps=10.2u
M1002 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.7u
M1003 vdd A a_7_14# vdd pfet w=6u l=0.6u
+  ad=14.4p pd=14.7u as=12.6p ps=16.2u
.ends

.subckt INVX2 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=25.2p ps=28.2u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
.ends

.subckt FAX1 A B C YS YC vdd gnd
M1000 a_64_14# C a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1001 YS a_174_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=14.13p ps=16.8u
M1002 a_206_14# B a_196_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=2.7p ps=6.9u
M1003 gnd a_64_14# YC gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1004 gnd A a_206_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.4u as=2.7p ps=6.9u
M1005 vdd A a_206_150# vdd pfet w=14.4u l=0.6u
+  ad=14.13p pd=16.8u as=6.48p ps=15.3u
M1006 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1007 a_114_14# C gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1008 a_64_14# C a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1009 vdd A a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1010 a_84_14# B a_64_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1011 a_174_14# a_64_14# a_114_166# vdd pfet w=10.8u l=0.6u
+  ad=17.82p pd=17.1u as=12.96p ps=13.2u
M1012 vdd B a_114_166# vdd pfet w=10.8u l=0.6u
+  ad=12.96p pd=13.2u as=13.86p ps=14.4u
M1013 a_196_150# C a_174_14# vdd pfet w=14.4u l=0.6u
+  ad=6.48p pd=15.3u as=17.82p ps=17.1u
M1014 a_206_150# B a_196_150# vdd pfet w=14.4u l=0.6u
+  ad=6.48p pd=15.3u as=6.48p ps=15.3u
M1015 gnd A a_84_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1016 vdd A a_84_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1017 a_114_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1018 YS a_174_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=5.85p ps=8.4u
M1019 a_174_14# a_64_14# a_114_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.7u as=7.2p ps=8.4u
M1020 a_6_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1021 YC a_64_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
M1022 a_84_166# B a_64_14# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
M1023 a_6_166# B vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1024 a_114_166# A vdd vdd pfet w=12u l=0.6u
+  ad=13.86p pd=14.4u as=14.4p ps=14.4u
M1025 a_114_166# C vdd vdd pfet w=10.8u l=0.6u
+  ad=12.96p pd=13.2u as=12.96p ps=13.2u
M1026 gnd B a_114_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1027 a_196_14# C a_174_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=8.1p ps=8.7u
.ends

.subckt NOR2X1 A B Y vdd gnd
M1000 a_25_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.2p ps=28.2u
M1001 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1002 Y B a_25_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=3.6p ps=12.6u
M1003 gnd B Y gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
.ends

.subckt AND2X1 A B Y vdd gnd
M1000 gnd B a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.7u as=1.8p ps=6.6u
M1001 a_25_14# A a_7_14# gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1002 vdd B a_7_14# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1003 Y a_7_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=7.2p ps=8.7u
M1004 Y a_7_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_7_14# A vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt DFFPOSX1 D CLK Q vdd gnd
M1000 vdd Q a_189_206# vdd pfet w=3u l=0.6u
+  ad=10.125p pd=14.7u as=0.9p ps=3.6u
M1001 a_83_186# a_11_14# a_59_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.2p ps=8.4u
M1002 a_87_10# a_59_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=4.05p ps=5.7u
M1003 gnd CLK a_11_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.4u as=12.6p ps=16.2u
M1004 gnd a_87_10# a_81_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1005 a_159_14# a_87_10# gnd gnd nfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.3p ps=10.2u
M1006 a_49_186# D vdd vdd pfet w=6u l=0.6u
+  ad=4.5p pd=7.5u as=11.25p ps=14.4u
M1007 vdd a_87_10# a_83_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=3.6p ps=7.2u
M1008 Q a_167_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.975p ps=8.7u
M1009 Q a_167_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=10.125p ps=14.7u
M1010 a_167_14# CLK a_159_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=0.9p ps=3.6u
M1011 a_49_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.4u
M1012 a_87_10# a_59_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1013 a_59_14# CLK a_49_186# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=4.5p ps=7.5u
M1014 a_161_186# a_87_10# vdd vdd pfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1015 a_189_206# CLK a_167_14# vdd pfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.075p ps=8.4u
M1016 a_59_14# a_11_14# a_49_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1017 a_187_14# a_11_14# a_167_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1018 vdd CLK a_11_14# vdd pfet w=12u l=0.6u
+  ad=11.25p pd=14.4u as=25.2p ps=28.2u
M1019 gnd Q a_187_14# gnd nfet w=3u l=0.6u
+  ad=6.975p pd=8.7u as=1.35p ps=3.9u
M1020 a_167_14# a_11_14# a_161_186# vdd pfet w=6u l=0.6u
+  ad=6.075p pd=8.4u as=1.8p ps=6.6u
M1021 a_81_14# CLK a_59_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.05p ps=5.7u
.ends

.subckt NAND2X1 A B Y vdd gnd
M1000 a_27_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.6p ps=16.2u
M1001 Y B a_27_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=2.7p ps=6.9u
M1002 vdd B Y vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1003 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt OR2X1 A B Y vdd gnd
M1000 Y a_7_146# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1001 a_25_146# A a_7_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1002 a_7_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1003 Y a_7_146# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=14.4p ps=14.7u
M1004 gnd B a_7_146# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1005 vdd B a_25_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.7u as=5.4p ps=12.9u
.ends

.subckt CLKBUF2 A Y vdd gnd
M1000 a_145_14# a_105_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1001 a_65_14# a_25_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1002 a_105_14# a_65_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1003 a_145_14# a_105_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1004 gnd a_145_14# a_185_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1005 a_25_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1006 a_65_14# a_25_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1007 Y a_185_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1008 a_25_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1009 gnd a_25_14# a_65_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1010 a_105_14# a_65_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1011 gnd a_105_14# a_145_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1012 vdd a_65_14# a_105_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1013 vdd a_105_14# a_145_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1014 Y a_185_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1015 vdd a_25_14# a_65_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1016 gnd A a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1017 vdd A a_25_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1018 vdd a_185_14# Y vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1019 vdd a_145_14# a_185_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
M1020 gnd a_65_14# a_105_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1021 a_185_14# a_145_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1022 gnd a_185_14# Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1023 a_185_14# a_145_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=14.4p ps=14.4u
.ends

.subckt LATCH D CLK Q vdd gnd
M1000 a_48_206# D vdd vdd pfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=14.4p ps=14.7u
M1001 a_86_226# CLK a_58_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=9.225p ps=9.6u
M1002 gnd CLK a_8_14# gnd nfet w=6u l=0.6u
+  ad=6.3p pd=8.4u as=12.6p ps=16.2u
M1003 a_86_14# a_8_14# a_58_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.4p ps=6.6u
M1004 Q a_58_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.7u
M1005 gnd Q a_86_14# gnd nfet w=3u l=0.6u
+  ad=7.2p pd=8.7u as=1.35p ps=3.9u
M1006 a_46_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.3p ps=8.4u
M1007 Q a_58_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=13.5p ps=14.7u
M1008 a_58_14# CLK a_46_14# gnd nfet w=3u l=0.6u
+  ad=5.4p pd=6.6u as=1.8p ps=4.2u
M1009 vdd CLK a_8_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.7u as=25.2p ps=28.2u
M1010 a_58_14# a_8_14# a_48_206# vdd pfet w=6u l=0.6u
+  ad=9.225p pd=9.6u as=2.7p ps=6.9u
M1011 vdd Q a_86_226# vdd pfet w=3u l=0.6u
+  ad=13.5p pd=14.7u as=1.35p ps=3.9u
.ends

.subckt HAX1 A B YS YC vdd gnd
M1000 a_6_206# B a_24_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=1.8p ps=6.6u
M1001 vdd a_6_206# YC vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1002 gnd a_6_206# YC gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.4u as=6.21p ps=10.2u
M1003 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.6p ps=16.2u
M1004 a_6_206# B vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_128_166# B a_108_206# vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=13.5p ps=14.4u
M1006 a_108_206# a_6_206# vdd vdd pfet w=6u l=0.6u
+  ad=13.5p pd=14.4u as=7.2p ps=8.4u
M1007 YS a_108_206# gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1008 a_96_14# a_6_206# gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=6.075p ps=8.4u
M1009 a_108_206# B a_96_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1010 vdd A a_128_166# vdd pfet w=12u l=0.6u
+  ad=11.25p pd=14.4u as=3.6p ps=12.6u
M1011 YS a_108_206# vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=11.25p ps=14.4u
M1012 a_96_14# A a_108_206# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1013 vdd A a_6_206# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
.ends

.subckt DFFSR R S D CLK Q vdd gnd
M1000 a_146_14# a_122_10# a_60_10# vdd pfet w=3u l=0.6u
+  ad=6.3p pd=8.4u as=3.6p ps=5.4u
M1001 a_64_14# a_60_10# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9p ps=9u
M1002 vdd S a_301_14# vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1003 a_146_14# a_115_95# a_60_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1004 a_36_10# a_60_10# vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1005 a_391_14# a_334_14# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9.45p ps=9.15u
M1006 a_8_14# R vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1007 a_36_10# S a_64_14# gnd nfet w=6u l=0.6u
+  ad=14.4p pd=16.8u as=3.6p ps=7.2u
M1008 gnd a_334_14# Q gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1009 a_281_14# a_122_10# a_36_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1010 a_28_14# R a_8_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.4p ps=16.8u
M1011 a_301_14# S a_391_14# gnd nfet w=6u l=0.6u
+  ad=14.4p pd=16.8u as=3.6p ps=7.2u
M1012 gnd a_36_10# a_28_14# gnd nfet w=6u l=0.6u
+  ad=9p pd=9u as=3.6p ps=7.2u
M1013 gnd a_115_95# a_122_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1014 a_301_14# a_334_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1015 vdd D a_146_14# vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.3p ps=8.4u
M1016 a_334_14# a_281_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1017 vdd a_115_95# a_122_10# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1018 a_301_14# a_122_10# a_281_14# vdd pfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1019 gnd D a_146_14# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1020 a_60_10# a_115_95# a_8_14# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1021 a_301_14# a_115_95# a_281_14# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1022 vdd S a_36_10# vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1023 vdd a_36_10# a_8_14# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1024 a_115_95# CLK gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=3.6p ps=5.4u
M1025 a_60_10# a_122_10# a_8_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1026 a_354_14# a_281_14# a_334_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.4p ps=16.8u
M1027 vdd R a_334_14# vdd pfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1028 a_115_95# CLK vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1029 a_281_14# a_115_95# a_36_10# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1030 gnd R a_354_14# gnd nfet w=6u l=0.6u
+  ad=9.45p pd=9.15u as=3.6p ps=7.2u
M1031 vdd a_334_14# Q vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
.ends

.subckt TBUFX1 A EN Y vdd gnd
M1000 a_68_166# a_26_14# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1001 gnd A a_68_14# gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=2.7p ps=6.9u
M1002 a_26_14# EN gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1003 a_26_14# EN vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
M1004 vdd A a_68_166# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=5.4p ps=12.9u
M1005 a_68_14# EN Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.6p ps=16.2u
.ends

.subckt XNOR2X1 A B Y vdd gnd
M1000 a_74_166# A Y vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=14.4p ps=14.4u
M1001 a_29_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=16.2p ps=14.7u
M1002 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1003 vdd A a_6_14# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=25.2p ps=28.2u
M1004 Y A a_44_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=1.8p ps=6.6u
M1005 a_29_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=8.1p ps=8.7u
M1006 vdd B a_74_166# vdd pfet w=12u l=0.6u
+  ad=16.2p pd=14.7u as=3.6p ps=12.6u
M1007 Y a_6_14# a_44_166# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
M1008 a_44_14# a_29_58# gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.2p ps=8.4u
M1009 a_72_14# a_6_14# Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.2p ps=8.4u
M1010 a_44_166# a_29_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=14.4p ps=14.4u
M1011 gnd B a_72_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.7u as=2.7p ps=6.9u
.ends

.subckt AND2X2 A B Y vdd gnd
M1000 a_25_14# A a_7_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.6p ps=16.2u
M1001 gnd B a_25_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=2.7p ps=6.9u
M1002 vdd B a_7_14# vdd pfet w=6u l=0.6u
+  ad=14.4p pd=14.7u as=8.1p ps=8.7u
M1003 Y a_7_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1004 Y a_7_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.7u
M1005 a_7_14# A vdd vdd pfet w=6u l=0.6u
+  ad=8.1p pd=8.7u as=12.6p ps=16.2u
.ends

.subckt INVX1 A Y vdd gnd
M1000 Y A gnd gnd nfet w=3u l=0.6u
+  ad=6.3p pd=10.2u as=6.3p ps=10.2u
M1001 Y A vdd vdd pfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=12.6p ps=16.2u
.ends

.subckt OAI22X1 A B C D Y vdd gnd
M1000 Y D a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1001 a_25_146# A vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1002 a_65_146# D Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=23.4p ps=15.9u
M1003 gnd A a_7_14# gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=12.6p ps=16.2u
M1004 a_7_14# C Y gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=7.2p ps=8.4u
M1005 a_7_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.2p pd=8.4u as=7.2p ps=8.4u
M1006 Y B a_25_146# vdd pfet w=12u l=0.6u
+  ad=23.4p pd=15.9u as=5.4p ps=12.9u
M1007 vdd C a_65_146# vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=5.4p ps=12.9u
.ends

.subckt OR2X2 A B Y vdd gnd
M1000 Y a_7_146# gnd gnd nfet w=6u l=0.6u
+  ad=12.6p pd=16.2u as=6.3p ps=8.4u
M1001 a_25_146# A a_7_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.9u as=25.2p ps=28.2u
M1002 a_7_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.3p ps=10.2u
M1003 Y a_7_146# vdd vdd pfet w=12u l=0.6u
+  ad=25.2p pd=28.2u as=14.4p ps=14.4u
M1004 gnd B a_7_146# gnd nfet w=3u l=0.6u
+  ad=6.3p pd=8.4u as=3.6p ps=5.4u
M1005 vdd B a_25_146# vdd pfet w=12u l=0.6u
+  ad=14.4p pd=14.4u as=5.4p ps=12.9u
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

.subckt fir_pe vdd gnd Cin[0] Cin[1] Cin[2] Cin[3] Cin[4]
+ Cin[5] Rdy Vld Xin[0] Xin[1] Xin[2] Xin[3] Xout[0]
+ Xout[1] Xout[2] Xout[3] Yin[0] Yin[1] Yin[2] Yin[3] Yout[0]
+ Yout[1] Yout[2] Yout[3] clk 

X_1257_ _528_ _527_ _529_ vdd gnd NAND2X1
X_800_ _93_ _75_ _99_ _2_ vdd gnd OAI21X1
X_1486_ Yin[2] _736_ vdd gnd INVX1
X_1066_ _279_ _341_ _342_ vdd gnd NOR2X1
X_1295_ mul[12] _565_ vdd gnd INVX1
X_1389_ _648_ _645_ _650_ vdd gnd NAND2X1
X_1601_ LoadCtl_4_bF$buf2 Vld vdd gnd BUFX2
X_932_ _209_ _208_ _207_ _210_ vdd gnd AOI21X1
X_1198_ _459_ _471_ vdd gnd INVX1
X_1410_ _119_ _469_ _669_ vdd gnd NOR2X1
XBUFX2_insert30 Cin[1] Cin_1_bF$buf3 vdd gnd BUFX2
XBUFX2_insert31 Cin[1] Cin_1_bF$buf2 vdd gnd BUFX2
XBUFX2_insert32 Cin[1] Cin_1_bF$buf1 vdd gnd BUFX2
XBUFX2_insert33 Cin[1] Cin_1_bF$buf0 vdd gnd BUFX2
X_970_ _199_ _201_ _204_ _247_ vdd gnd AOI21X1
X_1504_ LoadCtl_0_bF$buf2 _74_ Yin1[1] _747_ vdd gnd OAI21X1
X_835_ LoadCtl_4_bF$buf4 _121_ _122_ _14_ vdd gnd OAI21X1
X_1313_ _572_ _577_ _582_ vdd gnd OR2X2
X_1542_ _16_ clk_bF$buf2 rYin[12] vdd gnd DFFPOSX1
X_1122_ _396_ _392_ _348_ _397_ vdd gnd AOI21X1
X_873_ _148_ _153_ vdd gnd INVX1
X_929_ _168_ _171_ _165_ _207_ vdd gnd AOI21X1
X_1351_ _470__bF$buf4 _614_ _615_ _37_ vdd gnd OAI21X1
X_1407_ _666_ _664_ _653_ _42_ vdd gnd OAI21X1
X_1580_ _54_ clk_bF$buf5 Yin2[0] vdd gnd DFFPOSX1
X_1160_ XinH[3] Cin[2] _434_ vdd gnd NAND2X1
X_1216_ _310_ _434_ _488_ _489_ vdd gnd OAI21X1
X_967_ _176_ _239_ _211_ _244_ vdd gnd OAI21X1
X_1445_ _700_ _698_ _701_ vdd gnd OR2X2
X_1025_ _203_ _251_ _301_ vdd gnd NOR2X1
X_776_ LoadCtl_0_bF$buf1 y[2] _75_ y[6] _84_ vdd 
+ gnd
+ AOI22X1
X_1254_ _523_ _525_ _524_ _526_ vdd gnd OAI21X1
X_1483_ Yin[1] _734_ vdd gnd INVX1
X_1063_ _325_ _330_ _287_ _339_ vdd gnd AOI21X1
X_1539_ _13_ clk_bF$buf5 rYin[9] vdd gnd DFFPOSX1
X_1119_ _381_ _385_ _388_ _394_ vdd gnd NAND3X1
X_1292_ _559_ _562_ _563_ vdd gnd NAND2X1
X_1348_ _611_ _612_ _610_ _613_ vdd gnd NAND3X1
X_1577_ _51_ clk_bF$buf6 Yin3[1] vdd gnd DFFPOSX1
X_1157_ XinH[3] Cin_1_bF$buf0 _431_ vdd gnd AND2X2
X_1386_ _115_ _345_ _647_ vdd gnd NOR2X1
X_1195_ _410_ LoadCtl_4_bF$buf6 _466_ _468_ _28_ vdd 
+ gnd
+ OAI22X1
X_1289_ _559_ _560_ vdd gnd INVX1
X_1501_ _75_ _745_ vdd gnd INVX1
X_832_ LoadCtl_4_bF$buf2 _119_ _120_ _13_ vdd gnd OAI21X1
X_1098_ _372_ _373_ vdd gnd INVX1
X_1310_ _577_ _572_ LoadCtl_4_bF$buf5 _580_ vdd gnd OAI21X1
X_870_ _145_ _150_ vdd gnd INVX1
X_926_ _164_ _203_ _204_ vdd gnd NOR2X1
X_1404_ _663_ _660_ _664_ vdd gnd NOR2X1
X_1213_ _485_ _480_ _483_ _486_ vdd gnd OAI21X1
X_964_ _235_ _238_ _240_ _241_ vdd gnd NAND3X1
X_1442_ _695_ _697_ _698_ vdd gnd NAND2X1
X_1022_ _178_ _239_ _285_ _298_ vdd gnd OAI21X1
X_773_ _77_ _80_ _81_ _759_[1] vdd gnd OAI21X1
X_829_ LoadCtl_4_bF$buf4 _117_ _118_ _12_ vdd gnd OAI21X1
X_1251_ XinH[2] Cin[3] _523_ vdd gnd NAND2X1
X_1307_ _576_ _574_ _577_ vdd gnd NAND2X1
X_1480_ LoadCtl[3] _71_ _72_ _732_ vdd gnd NAND3X1
X_1060_ _273_ _336_ vdd gnd INVX1
X_1536_ _10_ clk_bF$buf3 rYin[6] vdd gnd DFFPOSX1
X_1116_ _389_ _390_ _388_ _391_ vdd gnd OAI21X1
X_867_ _137_ _146_ _147_ vdd gnd NOR2X1
X_1345_ _606_ _610_ vdd gnd INVX1
X_1574_ _48_ clk_bF$buf1 y[14] vdd gnd DFFPOSX1
X_1154_ _360_ _427_ _428_ vdd gnd NOR2X1
X_1383_ _639_ _644_ vdd gnd INVX1
X_1439_ _690_ _680_ _689_ _695_ vdd gnd AOI21X1
X_1019_ _290_ _292_ _294_ _295_ vdd gnd NAND3X1
X_1192_ _465_ _413_ _466_ vdd gnd NOR2X1
X_1248_ _519_ _520_ vdd gnd INVX1
X_999_ _272_ _275_ _276_ vdd gnd NAND2X1
X_1477_ _728_ _729_ _730_ vdd gnd NAND2X1
X_1057_ _328_ _329_ _289_ _333_ vdd gnd OAI21X1
X_1286_ _548_ _556_ _557_ vdd gnd NOR2X1
X_1095_ _365_ _370_ vdd gnd INVX1
XFILL71250x7350 gnd vdd FILL
X_923_ _200_ _201_ vdd gnd INVX1
X_1189_ _461_ _462_ _460_ _463_ vdd gnd OAI21X1
X_1401_ rYin[8] mul[8] _661_ vdd gnd NOR2X1
XFILL71250x54150 gnd vdd FILL
X_1210_ _93_ _239_ _427_ _483_ vdd gnd OAI21X1
XFILL70950x36150 gnd vdd FILL
X_961_ _236_ _212_ _237_ _238_ vdd gnd OAI21X1
X_770_ LoadCtl[2] _78_ _79_ vdd gnd NAND2X1
X_826_ LoadCtl_4_bF$buf4 _115_ _116_ _11_ vdd gnd OAI21X1
X_1304_ _551_ _552_ _573_ _574_ vdd gnd NAND3X1
X_1533_ _7_ clk_bF$buf0 rYin[3] vdd gnd DFFPOSX1
X_1113_ _321_ _323_ _387_ _388_ vdd gnd AOI21X1
X_864_ mul[2] _144_ vdd gnd INVX1
X_1342_ rYin[3] mul[3] _607_ vdd gnd NOR2X1
X_1571_ _45_ clk_bF$buf6 y[11] vdd gnd DFFPOSX1
X_1151_ _424_ _425_ vdd gnd INVX1
X_1207_ XinH[2] Cin[4] _480_ vdd gnd NAND2X1
X_958_ XinHL[0] Cin[5] _235_ vdd gnd NAND2X1
X_1380_ _637_ _641_ _642_ vdd gnd AND2X2
X_1436_ _686_ _691_ _470__bF$buf3 _693_ vdd gnd AOI21X1
X_1016_ _176_ _212_ _291_ _292_ vdd gnd OAI21X1
X_767_ _70_ _73_ _76_ _759_[0] vdd gnd OAI21X1
X_1245_ _413_ _515_ _516_ _517_ vdd gnd AOI21X1
X_996_ _263_ _267_ _269_ _273_ vdd gnd NAND3X1
X_1474_ y[15] _470__bF$buf0 _727_ vdd gnd NAND2X1
X_1054_ _328_ _329_ _327_ _330_ vdd gnd OAI21X1
X_1283_ _549_ _553_ _554_ vdd gnd OR2X2
X_1339_ y[2] _470__bF$buf2 _605_ vdd gnd NAND2X1
X_1092_ _93_ _141_ _366_ _367_ vdd gnd OAI21X1
X_1568_ _42_ clk_bF$buf6 y[8] vdd gnd DFFPOSX1
X_1148_ XinH[1] Cin[3] _422_ vdd gnd AND2X2
X_899_ XinHL[3] _178_ vdd gnd INVX2
X_1377_ _113_ _282_ _639_ vdd gnd NOR2X1
X_920_ XinH[0] Cin_0_bF$buf0 XinHL[3] Cin_1_bF$buf1 _198_ vdd 
+ gnd
+ AOI22X1
X_1186_ _415_ _460_ vdd gnd INVX1
XFILL70950x57750 gnd vdd FILL
X_823_ LoadCtl_4_bF$buf6 _113_ _114_ _10_ vdd gnd OAI21X1
X_1089_ _249_ _310_ _312_ _309_ _364_ vdd 
+ gnd
+ AOI22X1
X_1301_ _566_ _568_ _570_ _571_ vdd gnd OAI21X1
X_1530_ _4_ clk_bF$buf2 rYin[0] vdd gnd DFFPOSX1
X_1110_ _383_ _382_ _384_ _385_ vdd gnd NAND3X1
X_861_ _140_ _141_ _137_ _142_ vdd gnd OAI21X1
X_917_ _163_ _166_ _170_ _195_ vdd gnd OAI21X1
X_1204_ _441_ _439_ _477_ vdd gnd NAND2X1
X_955_ _231_ _184_ _232_ vdd gnd NAND2X1
X_1433_ _687_ _689_ _690_ vdd gnd NOR2X1
X_1013_ _264_ _266_ _288_ _289_ vdd gnd AOI21X1
X_764_ LoadCtl[1] _74_ vdd gnd INVX2
X_1242_ _513_ _512_ _514_ vdd gnd NAND2X1
X_993_ _263_ _267_ _270_ vdd gnd NAND2X1
X_1471_ _701_ _720_ _724_ _725_ vdd gnd AOI21X1
X_1051_ _246_ _326_ _265_ _327_ vdd gnd OAI21X1
X_1527_ _1_ clk_bF$buf7 XinH[1] vdd gnd DFFPOSX1
X_1107_ _357_ _362_ _382_ vdd gnd AND2X2
X_858_ _138_ _139_ vdd gnd INVX1
X_1280_ _95_ _420_ _551_ vdd gnd NOR2X1
X_1336_ _601_ _598_ _602_ vdd gnd NAND2X1
X_1565_ _39_ clk_bF$buf4 y[5] vdd gnd DFFPOSX1
X_1145_ _382_ _384_ _418_ _419_ vdd gnd AOI21X1
X_896_ _170_ _171_ _168_ _175_ vdd gnd AOI21X1
X_1374_ _622_ _629_ _636_ vdd gnd AND2X2
X_1183_ _453_ _452_ _419_ _457_ vdd gnd OAI21X1
X_1239_ _499_ _502_ _511_ vdd gnd NAND2X1
X_1468_ _721_ _706_ _719_ _722_ vdd gnd OAI21X1
X_1048_ _322_ _321_ _323_ _324_ vdd gnd NAND3X1
X_799_ Xin[2] _75_ _99_ vdd gnd NAND2X1
X_1277_ _519_ _531_ _530_ _548_ vdd gnd AOI21X1
X_820_ LoadCtl_4_bF$buf0 _111_ _112_ _9_ vdd gnd OAI21X1
X_1086_ _178_ _212_ _360_ _361_ vdd gnd OAI21X1
X_914_ _189_ _192_ vdd gnd INVX1
XFILL71250x61350 gnd vdd FILL
XFILL70950x43350 gnd vdd FILL
X_1201_ _417_ _473_ _456_ _474_ vdd gnd OAI21X1
X_952_ _191_ LoadCtl_4_bF$buf7 _227_ _229_ _24_ vdd 
+ gnd
+ OAI22X1
X_1430_ rYin[11] mul[11] _687_ vdd gnd NOR2X1
X_1010_ _213_ _285_ _245_ _286_ vdd gnd OAI21X1
X_761_ LoadCtl[2] _71_ vdd gnd INVX1
X_817_ LoadCtl_4_bF$buf5 _109_ _110_ _8_ vdd gnd OAI21X1
X_990_ _265_ _264_ _266_ _267_ vdd gnd NAND3X1
X_1524_ LoadCtl_0_bF$buf4 Xin[3] _757_ vdd gnd NAND2X1
X_1104_ _367_ _368_ _365_ _379_ vdd gnd AOI21X1
X_855_ XinHL[0] Cin_1_bF$buf3 _136_ vdd gnd NAND2X1
X_1333_ rYin[2] mul[2] _599_ vdd gnd NOR2X1
X_1562_ _36_ clk_bF$buf2 y[2] vdd gnd DFFPOSX1
X_1142_ _359_ _362_ _416_ vdd gnd NAND2X1
X_893_ _168_ _171_ _170_ _172_ vdd gnd NAND3X1
X_949_ _221_ _226_ _192_ _227_ vdd gnd AOI21X1
X_1371_ y[6] _470__bF$buf1 _633_ vdd gnd NAND2X1
X_1427_ _684_ _683_ _674_ _44_ vdd gnd OAI21X1
X_1007_ _263_ _267_ _269_ _283_ vdd gnd AOI21X1
X_1180_ _453_ _452_ _451_ _454_ vdd gnd OAI21X1
X_1236_ _472_ _507_ _470__bF$buf1 _509_ vdd gnd AOI21X1
X_987_ _241_ _245_ _264_ vdd gnd AND2X2
X_1465_ _714_ _703_ _713_ _719_ vdd gnd AOI21X1
X_1045_ _295_ _299_ _321_ vdd gnd AND2X2
X_796_ _89_ _75_ _97_ _0_ vdd gnd OAI21X1
X_1274_ LoadCtl_4_bF$buf6 _540_ _545_ _546_ vdd gnd NAND3X1
X_1083_ _352_ _358_ vdd gnd INVX1
X_1559_ _33_ clk_bF$buf4 mul[13] vdd gnd DFFPOSX1
X_1139_ _407_ _346_ _412_ _413_ vdd gnd OAI21X1
X_1368_ _629_ _626_ _631_ vdd gnd NOR2X1
X_911_ LoadCtl_4_bF$buf7 _189_ _190_ vdd gnd NAND2X1
X_1597_ LoadCtl_0_bF$buf1 clk_bF$buf6 LoadCtl[1] vdd gnd DFFPOSX1
X_1177_ _363_ _450_ _383_ _451_ vdd gnd OAI21X1
X_814_ LoadCtl_4_bF$buf5 _107_ _108_ _7_ vdd gnd OAI21X1
X_1521_ LoadCtl_0_bF$buf0 _236_ _755_ _67_ vdd gnd OAI21X1
X_1101_ XinH[1] Cin_1_bF$buf2 XinH[2] Cin_0_bF$buf3 _376_ vdd 
+ gnd
+ AOI22X1
X_852_ XinHL[0] Cin_0_bF$buf1 LoadCtl_4_bF$buf7 _134_ vdd gnd NAND3X1
XFILL71250x14550 gnd vdd FILL
X_908_ _184_ _185_ _186_ _187_ vdd gnd NAND3X1
X_1330_ y[1] _470__bF$buf0 _597_ vdd gnd NAND2X1
X_890_ XinHL[3] Cin_0_bF$buf0 _169_ vdd gnd AND2X2
X_946_ _217_ _218_ _219_ _224_ vdd gnd AOI21X1
X_1424_ _681_ _682_ vdd gnd INVX1
X_1004_ LoadCtl_4_bF$buf0 _280_ _278_ _281_ vdd gnd NAND3X1
X_1233_ _504_ _505_ _458_ _456_ _506_ vdd 
+ gnd
+ AOI22X1
X_984_ _250_ _252_ _248_ _261_ vdd gnd AOI21X1
X_1462_ _711_ _715_ _470__bF$buf0 _717_ vdd gnd AOI21X1
X_1042_ _305_ _307_ _303_ _318_ vdd gnd AOI21X1
X_793_ LoadCtl_0_bF$buf4 XinHL[3] _96_ vdd gnd NAND2X1
X_1518_ LoadCtl_0_bF$buf0 Xin[0] _754_ vdd gnd NAND2X1
X_849_ LoadCtl_4_bF$buf1 Yin3[3] _132_ vdd gnd NAND2X1
X_1271_ _541_ _412_ _542_ _543_ vdd gnd AOI21X1
X_1327_ _586_ _593_ _594_ vdd gnd NAND2X1
X_1080_ XinHL[3] Cin[4] _355_ vdd gnd AND2X2
X_1556_ _30_ clk_bF$buf3 mul[10] vdd gnd DFFPOSX1
X_1136_ mul[8] _410_ vdd gnd INVX1
X_887_ XinHL[2] Cin_1_bF$buf3 XinHL[3] Cin_0_bF$buf0 _166_ vdd 
+ gnd
+ AOI22X1
X_1365_ _111_ _230_ _628_ vdd gnd NOR2X1
X_1594_ _68_ clk_bF$buf7 XinHL[2] vdd gnd DFFPOSX1
X_1174_ _444_ _447_ _448_ vdd gnd NAND2X1
X_1459_ _712_ _713_ _714_ vdd gnd NOR2X1
X_1039_ XinH[0] Cin_1_bF$buf1 XinH[1] Cin_0_bF$buf2 _315_ vdd 
+ gnd
+ AOI22X1
X_1268_ _539_ _517_ _540_ vdd gnd NAND2X1
X_811_ LoadCtl_4_bF$buf3 _105_ _106_ _6_ vdd gnd OAI21X1
X_1497_ Yin2[2] _740_ _743_ vdd gnd NOR2X1
X_1077_ XinHL[2] Cin[5] _352_ vdd gnd NAND2X1
X_905_ _161_ _184_ vdd gnd INVX1
XFILL70950x50550 gnd vdd FILL
X_943_ _220_ _194_ _216_ _221_ vdd gnd NAND3X1
X_1421_ rYin[10] mul[10] _679_ vdd gnd NOR2X1
X_1001_ _277_ _276_ _278_ vdd gnd OR2X2
X_808_ LoadCtl_4_bF$buf3 _103_ _104_ _5_ vdd gnd OAI21X1
X_1230_ _499_ _502_ _474_ _503_ vdd gnd AOI21X1
X_981_ _253_ _257_ _247_ _258_ vdd gnd NAND3X1
X_790_ LoadCtl_0_bF$buf3 XinHL[2] _94_ vdd gnd NAND2X1
X_1515_ LoadCtl_0_bF$buf3 _736_ _752_ _64_ vdd gnd AOI21X1
X_846_ LoadCtl_4_bF$buf1 Yin3[2] _130_ vdd gnd NAND2X1
X_1324_ _103_ _135_ _591_ vdd gnd NOR2X1
X_1553_ _27_ clk_bF$buf4 mul[7] vdd gnd DFFPOSX1
X_1133_ _407_ _403_ _408_ vdd gnd NOR2X1
X_884_ XinHL[1] Cin[2] _163_ vdd gnd NAND2X1
X_1609_ _759_[3] Yout[3] vdd gnd BUFX2
X_1362_ y[5] _625_ vdd gnd INVX1
X_1418_ rYin[9] mul[9] _662_ _676_ vdd gnd OAI21X1
X_1591_ _65_ clk_bF$buf0 Yin0[3] vdd gnd DFFPOSX1
X_1171_ _441_ _432_ _445_ vdd gnd NAND2X1
X_1227_ _489_ _492_ _495_ _500_ vdd gnd NAND3X1
X_978_ _196_ _249_ _255_ vdd gnd NAND2X1
X_1456_ _702_ _706_ _710_ _711_ vdd gnd OAI21X1
X_1036_ _91_ _141_ _306_ _312_ vdd gnd OAI21X1
X_787_ LoadCtl_0_bF$buf0 XinHL[1] _92_ vdd gnd NAND2X1
X_1265_ _533_ _535_ _537_ vdd gnd NAND2X1
X_1494_ _731_ _740_ _741_ _54_ vdd gnd AOI21X1
X_1074_ _297_ _299_ _349_ vdd gnd NAND2X1
XBUFX2_insert0 LoadCtl[4] LoadCtl_4_bF$buf7 vdd gnd BUFX2
XBUFX2_insert1 LoadCtl[4] LoadCtl_4_bF$buf6 vdd gnd BUFX2
XBUFX2_insert2 LoadCtl[4] LoadCtl_4_bF$buf5 vdd gnd BUFX2
XBUFX2_insert3 LoadCtl[4] LoadCtl_4_bF$buf4 vdd gnd BUFX2
XBUFX2_insert4 LoadCtl[4] LoadCtl_4_bF$buf3 vdd gnd BUFX2
XBUFX2_insert5 LoadCtl[4] LoadCtl_4_bF$buf2 vdd gnd BUFX2
XBUFX2_insert6 LoadCtl[4] LoadCtl_4_bF$buf1 vdd gnd BUFX2
XBUFX2_insert7 LoadCtl[4] LoadCtl_4_bF$buf0 vdd gnd BUFX2
X_1359_ _622_ _619_ _623_ vdd gnd NAND2X1
X_902_ _177_ _180_ _163_ _181_ vdd gnd AOI21X1
X_1588_ _62_ clk_bF$buf1 Yin0[0] vdd gnd DFFPOSX1
X_1168_ _441_ _439_ _442_ vdd gnd NOR2X1
X_1397_ _635_ _656_ _655_ _657_ vdd gnd AOI21X1
X_940_ _195_ _202_ _205_ _218_ vdd gnd NAND3X1
X_805_ LoadCtl_4_bF$buf3 _101_ _102_ _4_ vdd gnd OAI21X1
X_1512_ LoadCtl_0_bF$buf2 Yin0[1] _751_ vdd gnd NOR2X1
X_843_ LoadCtl_4_bF$buf1 Yin3[1] _128_ vdd gnd NAND2X1
X_1321_ _588_ _587_ _589_ vdd gnd NAND2X1
X_1550_ _24_ clk_bF$buf0 mul[4] vdd gnd DFFPOSX1
X_1130_ _398_ _399_ _404_ _405_ vdd gnd NAND3X1
X_881_ mul[3] _160_ vdd gnd INVX1
X_1606_ _759_[0] Yout[0] vdd gnd BUFX2
X_937_ _161_ _211_ _214_ _215_ vdd gnd OAI21X1
X_1415_ _78_ LoadCtl_4_bF$buf2 _673_ _43_ vdd gnd OAI21X1
X_1224_ _492_ _497_ vdd gnd INVX1
X_975_ _251_ _196_ _252_ vdd gnd NAND2X1
X_1453_ _708_ _705_ _694_ _46_ vdd gnd OAI21X1
X_1033_ _303_ _309_ vdd gnd INVX1
X_784_ LoadCtl_0_bF$buf0 XinHL[0] _90_ vdd gnd NAND2X1
X_1509_ _738_ _745_ _749_ _61_ vdd gnd OAI21X1
X_1262_ _530_ _534_ vdd gnd INVX1
X_1318_ _101_ _133_ _586_ vdd gnd NOR2X1
X_1491_ _738_ _732_ _739_ _53_ vdd gnd OAI21X1
X_1071_ _335_ _279_ _340_ _346_ vdd gnd NAND3X1
X_1547_ _21_ clk_bF$buf2 mul[1] vdd gnd DFFPOSX1
X_1127_ _346_ _335_ _401_ _402_ vdd gnd AOI21X1
X_878_ _157_ _156_ _158_ vdd gnd NOR2X1
X_1356_ _619_ _620_ vdd gnd INVX1
X_1585_ _59_ clk_bF$buf4 Yin1[1] vdd gnd DFFPOSX1
X_1165_ _365_ _372_ _371_ _439_ vdd gnd OAI21X1
X_1394_ _647_ _654_ vdd gnd INVX1
X_1259_ _521_ _492_ _529_ _531_ vdd gnd NAND3X1
X_802_ _95_ _75_ _100_ _3_ vdd gnd OAI21X1
X_1488_ _736_ _732_ _737_ _52_ vdd gnd OAI21X1
X_1068_ _280_ _343_ LoadCtl_4_bF$buf0 _344_ vdd gnd OAI21X1
X_1297_ _566_ _542_ _567_ vdd gnd NOR2X1
X_840_ LoadCtl_4_bF$buf1 Yin3[0] _126_ vdd gnd NAND2X1
X_1603_ _758_[1] Xout[1] vdd gnd BUFX2
X_934_ Cin[4] _212_ vdd gnd INVX2
X_1412_ _667_ _670_ _671_ vdd gnd AND2X2
X_1221_ _437_ _432_ _494_ vdd gnd NAND2X1
X_972_ XinH[1] Cin_0_bF$buf2 _249_ vdd gnd AND2X2
X_1450_ _698_ _700_ _706_ vdd gnd NOR2X1
X_1030_ XinH[2] Cin_0_bF$buf3 _306_ vdd gnd NAND2X1
X_781_ LoadCtl_0_bF$buf2 y[3] _75_ y[7] _88_ vdd 
+ gnd
+ AOI22X1
X_1506_ LoadCtl_0_bF$buf3 _74_ Yin1[2] _748_ vdd gnd OAI21X1
X_837_ LoadCtl_4_bF$buf2 Yin2[3] _124_ vdd gnd NAND2X1
X_1315_ _480_ _575_ LoadCtl_4_bF$buf6 _584_ vdd gnd OAI21X1
X_1544_ _18_ clk_bF$buf2 rYin[14] vdd gnd DFFPOSX1
X_1124_ _393_ _386_ _391_ _399_ vdd gnd NAND3X1
X_875_ _138_ _154_ _149_ _155_ vdd gnd NAND3X1
X_1353_ rYin[4] mul[4] _617_ vdd gnd NOR2X1
X_1409_ rYin[9] mul[9] _668_ vdd gnd NOR2X1
X_1582_ _56_ clk_bF$buf5 Yin2[2] vdd gnd DFFPOSX1
X_1162_ _435_ _436_ vdd gnd INVX1
X_1218_ _490_ _491_ vdd gnd INVX1
X_969_ _245_ _241_ _246_ vdd gnd NAND2X1
X_1391_ y[7] _470__bF$buf3 _652_ vdd gnd NAND2X1
X_1447_ _125_ _565_ _703_ vdd gnd NOR2X1
X_1027_ XinH[0] Cin[2] _303_ vdd gnd NAND2X1
X_778_ y[11] _85_ vdd gnd INVX1
X_1256_ _91_ _420_ _526_ _528_ vdd gnd OAI21X1
X_1485_ _734_ _732_ _735_ _51_ vdd gnd OAI21X1
X_1065_ _340_ _335_ _341_ vdd gnd AND2X2
X_1294_ _547_ _564_ _31_ vdd gnd NAND2X1
X_1579_ _53_ clk_bF$buf1 Yin3[3] vdd gnd DFFPOSX1
X_1159_ XinH[2] Cin_1_bF$buf0 _433_ vdd gnd NAND2X1
X_1388_ _645_ _648_ _649_ vdd gnd OR2X2
X_1600_ LoadCtl[3] clk_bF$buf6 LoadCtl[4] vdd gnd DFFPOSX1
X_931_ _198_ _204_ _201_ _209_ vdd gnd OAI21X1
X_1197_ LoadCtl_4_bF$buf5 _470_ vdd gnd INVX8
XFILL70650x57750 gnd vdd FILL
XBUFX2_insert20 _470_ _470__bF$buf0 vdd gnd BUFX2
XBUFX2_insert21 Cin[0] Cin_0_bF$buf3 vdd gnd BUFX2
XBUFX2_insert22 Cin[0] Cin_0_bF$buf2 vdd gnd BUFX2
XBUFX2_insert23 Cin[0] Cin_0_bF$buf1 vdd gnd BUFX2
XBUFX2_insert24 Cin[0] Cin_0_bF$buf0 vdd gnd BUFX2
XBUFX2_insert25 LoadCtl[0] LoadCtl_0_bF$buf4 vdd gnd BUFX2
XBUFX2_insert26 LoadCtl[0] LoadCtl_0_bF$buf3 vdd gnd BUFX2
XBUFX2_insert27 LoadCtl[0] LoadCtl_0_bF$buf2 vdd gnd BUFX2
XBUFX2_insert28 LoadCtl[0] LoadCtl_0_bF$buf1 vdd gnd BUFX2
XBUFX2_insert29 LoadCtl[0] LoadCtl_0_bF$buf0 vdd gnd BUFX2
X_1503_ _731_ _745_ _746_ _58_ vdd gnd OAI21X1
XFILL70950x10950 gnd vdd FILL
X_834_ LoadCtl_4_bF$buf4 Yin2[2] _122_ vdd gnd NAND2X1
X_1312_ mul[13] _581_ vdd gnd INVX1
X_1541_ _15_ clk_bF$buf5 rYin[11] vdd gnd DFFPOSX1
X_1121_ _393_ _395_ _394_ _396_ vdd gnd NAND3X1
X_872_ XinHL[1] Cin_0_bF$buf1 _151_ _152_ vdd gnd NAND3X1
X_928_ _205_ _202_ _195_ _206_ vdd gnd AOI21X1
X_1350_ y[3] _470__bF$buf4 _615_ vdd gnd NAND2X1
X_1406_ _665_ _659_ LoadCtl_4_bF$buf4 _666_ vdd gnd OAI21X1
X_1215_ _484_ _487_ _488_ vdd gnd NAND2X1
X_966_ _231_ _237_ _243_ vdd gnd NAND2X1
X_1444_ _699_ _659_ _700_ vdd gnd NOR2X1
X_1024_ _299_ _295_ _300_ vdd gnd NAND2X1
X_775_ _71_ y[10] _72_ _83_ vdd gnd OAI21X1
X_1253_ XinH[3] Cin[4] _525_ vdd gnd NAND2X1
X_1309_ _578_ _579_ vdd gnd INVX1
X_1482_ _731_ _732_ _733_ _50_ vdd gnd OAI21X1
X_1062_ _333_ _332_ _286_ _338_ vdd gnd AOI21X1
X_1538_ _12_ clk_bF$buf5 rYin[8] vdd gnd DFFPOSX1
X_1118_ _349_ _393_ vdd gnd INVX1
X_869_ _148_ _147_ _145_ _149_ vdd gnd OAI21X1
X_1291_ _539_ _517_ _536_ _562_ vdd gnd OAI21X1
X_1347_ _608_ _612_ vdd gnd INVX1
X_1576_ _50_ clk_bF$buf1 Yin3[0] vdd gnd DFFPOSX1
X_1156_ _426_ _429_ _430_ vdd gnd NAND2X1
X_1385_ rYin[7] mul[7] _646_ vdd gnd NOR2X1
X_1194_ _464_ _467_ LoadCtl_4_bF$buf6 _468_ vdd gnd OAI21X1
X_1479_ Yin[0] _731_ vdd gnd INVX1
X_1059_ _334_ _284_ _331_ _335_ vdd gnd NAND3X1
X_1288_ _557_ _558_ _559_ vdd gnd NOR2X1
X_1500_ _738_ _740_ _744_ _57_ vdd gnd AOI21X1
X_831_ LoadCtl_4_bF$buf2 Yin2[1] _120_ vdd gnd NAND2X1
X_1097_ XinH[2] Cin_1_bF$buf0 XinH[3] Cin_0_bF$buf3 _372_ vdd 
+ gnd
+ AOI22X1
X_925_ XinH[0] Cin_1_bF$buf1 _203_ vdd gnd NAND2X1
X_1403_ _661_ _662_ _663_ vdd gnd NOR2X1
X_1212_ XinH[1] Cin[3] _485_ vdd gnd NAND2X1
X_963_ _176_ _239_ _231_ _240_ vdd gnd OAI21X1
X_1441_ _677_ _696_ _697_ vdd gnd NAND2X1
X_1021_ _293_ _291_ _297_ vdd gnd NAND2X1
X_772_ LoadCtl_0_bF$buf1 y[1] _75_ y[5] _81_ vdd 
+ gnd
+ AOI22X1
X_828_ LoadCtl_4_bF$buf4 Yin2[0] _118_ vdd gnd NAND2X1
X_1250_ XinH[1] Cin[5] _522_ vdd gnd NAND2X1
X_1306_ _481_ _575_ _555_ _576_ vdd gnd OAI21X1
X_1535_ _9_ clk_bF$buf4 rYin[5] vdd gnd DFFPOSX1
X_1115_ _380_ _375_ _363_ _390_ vdd gnd AOI21X1
X_866_ XinHL[2] Cin_1_bF$buf3 _146_ vdd gnd NAND2X1
XFILL71250x36150 gnd vdd FILL
X_1344_ _607_ _608_ _606_ _609_ vdd gnd OAI21X1
X_1573_ _47_ clk_bF$buf1 y[13] vdd gnd DFFPOSX1
X_1153_ XinH[1] Cin[4] _427_ vdd gnd NAND2X1
X_1209_ _422_ _481_ _482_ vdd gnd NAND2X1
X_1382_ _643_ _642_ _633_ _40_ vdd gnd OAI21X1
X_1438_ y[12] _470__bF$buf4 _694_ vdd gnd NAND2X1
X_1018_ _178_ _239_ _293_ _294_ vdd gnd OAI21X1
X_769_ y[9] _78_ vdd gnd INVX1
X_1191_ _464_ _465_ vdd gnd INVX1
X_1247_ _485_ _480_ _484_ _519_ vdd gnd OAI21X1
X_998_ _232_ _273_ _274_ _275_ vdd gnd NAND3X1
X_1476_ _129_ _725_ _131_ _729_ vdd gnd OAI21X1
X_1056_ _320_ _324_ _327_ _332_ vdd gnd NAND3X1
X_1285_ _555_ _554_ _556_ vdd gnd NAND2X1
X_1094_ _365_ _367_ _368_ _369_ vdd gnd NAND3X1
X_1379_ _640_ _641_ vdd gnd INVX1
X_922_ XinHL[2] Cin[2] _200_ vdd gnd NAND2X1
X_1188_ _454_ _449_ _417_ _462_ vdd gnd AOI21X1
X_1400_ _659_ _660_ vdd gnd INVX1
X_960_ XinHL[2] Cin[3] _237_ vdd gnd AND2X2
X_825_ LoadCtl_4_bF$buf4 Yin1[3] _116_ vdd gnd NAND2X1
X_1303_ _555_ _573_ vdd gnd INVX1
X_1532_ _6_ clk_bF$buf0 rYin[2] vdd gnd DFFPOSX1
X_1112_ _322_ _387_ vdd gnd INVX1
X_863_ _135_ LoadCtl_4_bF$buf3 _143_ _21_ vdd gnd OAI21X1
X_919_ _169_ _196_ _197_ vdd gnd NAND2X1
X_1341_ _598_ _601_ _600_ _606_ vdd gnd AOI21X1
XFILL71250x57750 gnd vdd FILL
X_1570_ _44_ clk_bF$buf6 y[10] vdd gnd DFFPOSX1
X_1150_ XinH[0] Cin[4] XinH[1] Cin[3] _424_ vdd 
+ gnd
+ AOI22X1
XFILL70950x39750 gnd vdd FILL
X_1206_ _89_ _420_ _479_ vdd gnd NOR2X1
X_957_ _217_ _219_ _210_ _234_ vdd gnd AOI21X1
X_1435_ _686_ _691_ _692_ vdd gnd OR2X2
X_1015_ XinHL[3] Cin[3] _291_ vdd gnd AND2X2
X_766_ LoadCtl_0_bF$buf1 y[0] _75_ y[4] _76_ vdd 
+ gnd
+ AOI22X1
X_1244_ _459_ _503_ _513_ _516_ vdd gnd OAI21X1
X_995_ _233_ _268_ _271_ _272_ vdd gnd NAND3X1
X_1473_ _723_ _726_ _718_ _48_ vdd gnd OAI21X1
X_1053_ _319_ _314_ _300_ _329_ vdd gnd AOI21X1
X_1529_ _3_ clk_bF$buf7 XinH[3] vdd gnd DFFPOSX1
X_1109_ _378_ _379_ _364_ _384_ vdd gnd OAI21X1
X_1282_ _552_ _550_ _553_ vdd gnd AND2X2
X_1338_ _602_ _603_ _604_ vdd gnd NAND2X1
X_1091_ XinH[3] Cin_0_bF$buf3 _366_ vdd gnd AND2X2
X_1567_ _41_ clk_bF$buf3 y[7] vdd gnd DFFPOSX1
X_1147_ _178_ _420_ _421_ vdd gnd NOR2X1
X_898_ _176_ _141_ _169_ _177_ vdd gnd OAI21X1
X_1376_ rYin[6] mul[6] _638_ vdd gnd NOR2X1
X_1185_ _415_ _458_ _455_ _459_ vdd gnd NAND3X1
X_1279_ _93_ _420_ _525_ _550_ vdd gnd OAI21X1
X_822_ LoadCtl_4_bF$buf6 Yin1[2] _114_ vdd gnd NAND2X1
X_1088_ _362_ _357_ _363_ vdd gnd NAND2X1
X_1300_ _557_ _569_ _570_ vdd gnd NOR2X1
X_860_ Cin_1_bF$buf2 _141_ vdd gnd INVX2
X_916_ _161_ _193_ _185_ _194_ vdd gnd OAI21X1
X_1203_ _475_ _476_ vdd gnd INVX1
X_954_ XinHL[1] Cin[4] _231_ vdd gnd AND2X2
X_1432_ _688_ _689_ vdd gnd INVX1
X_1012_ _265_ _288_ vdd gnd INVX1
X_763_ _71_ y[8] _72_ _73_ vdd gnd OAI21X1
X_819_ LoadCtl_4_bF$buf0 Yin1[1] _112_ vdd gnd NAND2X1
X_1241_ _499_ _502_ _474_ _513_ vdd gnd NAND3X1
X_992_ _215_ _206_ _218_ _269_ vdd gnd OAI21X1
X_1470_ _719_ _724_ vdd gnd INVX1
X_1050_ _253_ _257_ _259_ _326_ vdd gnd AOI21X1
X_1526_ _0_ clk_bF$buf7 XinH[0] vdd gnd DFFPOSX1
X_1106_ _363_ _375_ _380_ _381_ vdd gnd NAND3X1
XFILL71250x43350 gnd vdd FILL
X_857_ _136_ _137_ _138_ vdd gnd NOR2X1
X_1335_ _599_ _600_ _601_ vdd gnd NOR2X1
X_1564_ _38_ clk_bF$buf1 y[4] vdd gnd DFFPOSX1
X_1144_ _383_ _418_ vdd gnd INVX1
X_895_ _145_ _148_ _152_ _174_ vdd gnd OAI21X1
X_1373_ _111_ _230_ _634_ _635_ vdd gnd OAI21X1
X_1429_ _679_ _678_ _685_ _686_ vdd gnd OAI21X1
X_1009_ XinHL[2] Cin[4] _285_ vdd gnd NAND2X1
X_1182_ _451_ _443_ _448_ _456_ vdd gnd NAND3X1
X_1238_ mul[10] _510_ vdd gnd INVX1
X_989_ _261_ _260_ _247_ _266_ vdd gnd OAI21X1
X_1467_ _720_ _721_ vdd gnd INVX1
X_1047_ _317_ _318_ _302_ _323_ vdd gnd OAI21X1
X_798_ _91_ _75_ _98_ _1_ vdd gnd OAI21X1
X_1276_ mul[11] _470__bF$buf1 _547_ vdd gnd NAND2X1
X_1085_ XinH[0] Cin[3] _360_ vdd gnd NAND2X1
X_913_ mul[4] _191_ vdd gnd INVX1
X_1599_ LoadCtl[2] clk_bF$buf6 LoadCtl[3] vdd gnd DFFPOSX1
X_1179_ _445_ _446_ _430_ _453_ vdd gnd AOI21X1
X_1200_ _448_ _443_ _451_ _473_ vdd gnd AOI21X1
X_951_ LoadCtl_4_bF$buf7 _228_ _229_ vdd gnd NAND2X1
X_760_ LoadCtl[2] y[12] _70_ vdd gnd NOR2X1
X_816_ LoadCtl_4_bF$buf5 Yin1[0] _110_ vdd gnd NAND2X1
X_1523_ LoadCtl_0_bF$buf0 _176_ _756_ _68_ vdd gnd OAI21X1
X_1103_ _371_ _373_ _370_ _378_ vdd gnd AOI21X1
X_854_ mul[1] _135_ vdd gnd INVX1
X_1332_ _103_ _135_ _594_ _598_ vdd gnd OAI21X1
X_1561_ _35_ clk_bF$buf2 y[1] vdd gnd DFFPOSX1
X_1141_ _393_ _414_ _386_ _415_ vdd gnd OAI21X1
X_892_ _166_ _171_ vdd gnd INVX1
X_948_ _224_ _225_ _223_ _226_ vdd gnd OAI21X1
X_1370_ _625_ LoadCtl_4_bF$buf5 _632_ _39_ vdd gnd OAI21X1
X_1426_ _682_ _678_ LoadCtl_4_bF$buf2 _684_ vdd gnd OAI21X1
X_1006_ mul[6] _282_ vdd gnd INVX1
X_1235_ _472_ _507_ _508_ vdd gnd OR2X2
X_986_ _246_ _258_ _262_ _263_ vdd gnd NAND3X1
X_1464_ y[14] _470__bF$buf0 _718_ vdd gnd NAND2X1
X_1044_ _300_ _314_ _319_ _320_ vdd gnd NAND3X1
X_795_ Xin[0] _75_ _97_ vdd gnd NAND2X1
X_1273_ _516_ _543_ _544_ _545_ vdd gnd OAI21X1
X_1329_ _595_ _594_ _596_ vdd gnd NAND2X1
X_1082_ _352_ _354_ _356_ _357_ vdd gnd NAND3X1
X_1558_ _32_ clk_bF$buf0 mul[12] vdd gnd DFFPOSX1
X_1138_ _405_ _411_ _412_ vdd gnd NAND2X1
X_889_ _163_ _168_ vdd gnd INVX1
X_1367_ _626_ _629_ _630_ vdd gnd AND2X2
X_910_ _156_ _183_ _187_ _189_ vdd gnd NAND3X1
X_1596_ Rdy clk_bF$buf7 LoadCtl[0] vdd gnd DFFPOSX1
X_1176_ _369_ _374_ _377_ _450_ vdd gnd AOI21X1
X_813_ LoadCtl_4_bF$buf5 Yin0[3] _108_ vdd gnd NAND2X1
X_1499_ Yin2[3] _740_ _744_ vdd gnd NOR2X1
X_1079_ _178_ _212_ _353_ _354_ vdd gnd OAI21X1
X_1520_ LoadCtl_0_bF$buf4 Xin[1] _755_ vdd gnd NAND2X1
X_1100_ _374_ _364_ _369_ _375_ vdd gnd NAND3X1
X_851_ mul[0] _133_ vdd gnd INVX1
X_907_ _175_ _181_ _162_ _186_ vdd gnd OAI21X1
X_945_ _184_ _186_ _222_ _223_ vdd gnd AOI21X1
X_1423_ _679_ _680_ _681_ vdd gnd NOR2X1
X_1003_ _279_ _280_ vdd gnd INVX1
X_1232_ _475_ _493_ _498_ _505_ vdd gnd NAND3X1
X_983_ _255_ _256_ _254_ _260_ vdd gnd AOI21X1
X_1461_ _711_ _715_ _716_ vdd gnd OR2X2
X_1041_ _311_ _312_ _309_ _317_ vdd gnd AOI21X1
X_792_ XinH[3] _95_ vdd gnd INVX2
XFILL71250x50550 gnd vdd FILL
X_1517_ LoadCtl_0_bF$buf2 _738_ _753_ _65_ vdd gnd AOI21X1
X_848_ rYin[15] _131_ vdd gnd INVX1
X_1270_ _459_ _463_ _507_ _542_ vdd gnd NAND3X1
XFILL70950x32550 gnd vdd FILL
X_1326_ _592_ _591_ _593_ vdd gnd NOR2X1
X_1555_ _29_ clk_bF$buf5 mul[9] vdd gnd DFFPOSX1
X_1135_ _345_ LoadCtl_4_bF$buf0 _409_ _27_ vdd gnd OAI21X1
X_886_ _146_ _164_ _165_ vdd gnd NOR2X1
X_1364_ rYin[5] mul[5] _627_ vdd gnd NOR2X1
X_1593_ _67_ clk_bF$buf7 XinHL[1] vdd gnd DFFPOSX1
X_1173_ _446_ _445_ _447_ vdd gnd NAND2X1
X_1229_ _475_ _501_ _500_ _502_ vdd gnd NAND3X1
X_1458_ _127_ _581_ _713_ vdd gnd NOR2X1
X_1038_ _308_ _313_ _302_ _314_ vdd gnd NAND3X1
X_789_ XinH[2] _93_ vdd gnd INVX2
X_1267_ _536_ _538_ _539_ vdd gnd NAND2X1
X_810_ LoadCtl_4_bF$buf5 Yin0[2] _106_ vdd gnd NAND2X1
X_1496_ _734_ _740_ _742_ _55_ vdd gnd AOI21X1
X_1076_ _300_ _350_ _322_ _351_ vdd gnd OAI21X1
X_904_ _161_ _173_ _182_ _183_ vdd gnd NAND3X1
X_1399_ _658_ _657_ _659_ vdd gnd AND2X2
X_942_ _219_ _218_ _217_ _220_ vdd gnd NAND3X1
XCLKBUF1_insert10 clk clk_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert11 clk clk_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert12 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert13 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert14 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert15 clk clk_bF$buf0 vdd gnd CLKBUF1
X_1420_ _660_ _675_ _677_ _678_ vdd gnd AOI21X1
X_1000_ _221_ _228_ _277_ vdd gnd NAND2X1
X_807_ LoadCtl_4_bF$buf3 Yin0[1] _104_ vdd gnd NAND2X1
X_980_ _256_ _254_ _255_ _257_ vdd gnd NAND3X1
X_1514_ LoadCtl_0_bF$buf3 Yin0[2] _752_ vdd gnd NOR2X1
X_845_ rYin[14] _129_ vdd gnd INVX1
X_1323_ _470__bF$buf2 _589_ _590_ _34_ vdd gnd OAI21X1
X_1552_ _26_ clk_bF$buf7 mul[6] vdd gnd DFFPOSX1
X_1132_ _406_ _405_ _407_ vdd gnd NAND2X1
X_883_ _150_ _153_ _147_ _162_ vdd gnd AOI21X1
X_1608_ _759_[2] Yout[2] vdd gnd BUFX2
X_939_ _208_ _209_ _207_ _217_ vdd gnd NAND3X1
X_1361_ _470__bF$buf4 _624_ _616_ _38_ vdd gnd OAI21X1
X_1417_ _663_ _670_ _675_ vdd gnd AND2X2
X_1590_ _64_ clk_bF$buf3 Yin0[2] vdd gnd DFFPOSX1
X_1170_ _429_ _426_ _444_ vdd gnd AND2X2
X_1226_ _476_ _493_ _498_ _499_ vdd gnd NAND3X1
X_977_ _248_ _254_ vdd gnd INVX1
X_1455_ _703_ _710_ vdd gnd INVX1
X_1035_ _249_ _310_ _311_ vdd gnd NAND2X1
X_786_ XinH[1] _91_ vdd gnd INVX2
X_1264_ _533_ _535_ _518_ _536_ vdd gnd NAND3X1
X_1493_ Yin2[0] _740_ _741_ vdd gnd NOR2X1
X_1073_ _287_ _347_ _332_ _348_ vdd gnd OAI21X1
X_1549_ _23_ clk_bF$buf0 mul[3] vdd gnd DFFPOSX1
X_1129_ _348_ _404_ vdd gnd INVX1
X_1358_ _617_ _618_ _622_ vdd gnd NOR2X1
X_901_ _178_ _179_ _151_ _180_ vdd gnd OAI21X1
X_1587_ _61_ clk_bF$buf3 Yin1[3] vdd gnd DFFPOSX1
X_1167_ _440_ _310_ _435_ _441_ vdd gnd AOI21X1
X_1396_ _640_ _648_ _656_ vdd gnd AND2X2
X_804_ Yin0[0] LoadCtl_4_bF$buf3 _102_ vdd gnd NAND2X1
X_1299_ _558_ _536_ _569_ vdd gnd NOR2X1
X_1511_ LoadCtl_0_bF$buf1 _731_ _750_ _62_ vdd gnd AOI21X1
X_842_ rYin[13] _127_ vdd gnd INVX1
X_1320_ _101_ _133_ _588_ vdd gnd NAND2X1
X_880_ _144_ LoadCtl_4_bF$buf7 _159_ _22_ vdd gnd OAI21X1
X_1605_ _758_[3] Xout[3] vdd gnd BUFX2
X_936_ _140_ _212_ _213_ _214_ vdd gnd OAI21X1
X_1414_ _672_ _671_ LoadCtl_4_bF$buf2 _673_ vdd gnd OAI21X1
X_1223_ _487_ _484_ _491_ _496_ vdd gnd AOI21X1
X_974_ XinH[1] Cin_0_bF$buf2 _251_ vdd gnd NAND2X1
X_1452_ _707_ _706_ LoadCtl_4_bF$buf1 _708_ vdd gnd OAI21X1
X_1032_ _303_ _307_ _305_ _308_ vdd gnd NAND3X1
X_783_ XinH[0] _89_ vdd gnd INVX2
X_1508_ LoadCtl_0_bF$buf3 _74_ Yin1[3] _749_ vdd gnd OAI21X1
X_839_ rYin[12] _125_ vdd gnd INVX1
X_1261_ _530_ _532_ _520_ _533_ vdd gnd OAI21X1
X_1317_ _581_ _470__bF$buf4 _582_ _585_ _33_ vdd 
+ gnd
+ AOI22X1
X_1490_ Yin3[3] _732_ _739_ vdd gnd NAND2X1
X_1070_ mul[7] _345_ vdd gnd INVX1
X_1546_ _20_ clk_bF$buf0 mul[0] vdd gnd DFFPOSX1
X_1126_ _397_ _400_ _401_ vdd gnd NOR2X1
X_877_ _149_ _154_ _138_ _157_ vdd gnd AOI21X1
X_1355_ _607_ _606_ _612_ _619_ vdd gnd OAI21X1
X_1584_ _58_ clk_bF$buf4 Yin1[0] vdd gnd DFFPOSX1
X_1164_ _437_ _432_ _438_ vdd gnd NOR2X1
X_1393_ y[8] _470__bF$buf3 _653_ vdd gnd NAND2X1
X_1449_ _704_ _701_ _705_ vdd gnd NOR2X1
X_1029_ _91_ _141_ _304_ _305_ vdd gnd OAI21X1
X_1258_ _521_ _492_ _529_ _530_ vdd gnd AOI21X1
X_801_ Xin[3] _75_ _100_ vdd gnd NAND2X1
X_1487_ Yin3[2] _732_ _737_ vdd gnd NAND2X1
X_1067_ _341_ _343_ vdd gnd INVX1
X_1296_ _536_ _538_ _559_ _566_ vdd gnd NAND3X1
X_1602_ _758_[0] Xout[0] vdd gnd BUFX2
X_933_ XinHL[1] Cin[4] _211_ vdd gnd NAND2X1
X_1199_ _413_ _465_ _471_ _472_ vdd gnd AOI21X1
X_1411_ _668_ _669_ _670_ vdd gnd NOR2X1
X_1220_ _478_ _492_ _489_ _493_ vdd gnd NAND3X1
X_971_ XinHL[3] Cin[2] _248_ vdd gnd NAND2X1
X_780_ LoadCtl[2] y[15] _86_ _87_ vdd gnd OAI21X1
X_1505_ _734_ _745_ _747_ _59_ vdd gnd OAI21X1
X_836_ rYin[11] _123_ vdd gnd INVX1
X_1314_ _574_ _583_ vdd gnd INVX1
X_1543_ _17_ clk_bF$buf1 rYin[13] vdd gnd DFFPOSX1
X_1123_ _349_ _395_ _394_ _398_ vdd gnd NAND3X1
XFILL70650x39750 gnd vdd FILL
X_874_ _150_ _153_ _152_ _154_ vdd gnd NAND3X1
X_1352_ y[4] _470__bF$buf3 _616_ vdd gnd NAND2X1
X_1408_ _660_ _663_ _662_ _667_ vdd gnd AOI21X1
X_1581_ _55_ clk_bF$buf5 Yin2[1] vdd gnd DFFPOSX1
X_1161_ XinH[2] Cin[2] XinH[3] Cin_1_bF$buf0 _435_ vdd 
+ gnd
+ AOI22X1
XFILL71250x10950 gnd vdd FILL
X_1217_ _93_ _141_ _440_ _490_ vdd gnd OAI21X1
X_968_ _244_ _242_ _243_ _245_ vdd gnd NAND3X1
X_1390_ _650_ _649_ _651_ vdd gnd NAND2X1
X_1446_ rYin[12] mul[12] _702_ vdd gnd NOR2X1
X_1026_ _254_ _256_ _301_ _302_ vdd gnd AOI21X1
X_777_ _82_ _83_ _84_ _759_[2] vdd gnd OAI21X1
X_1255_ _526_ _522_ _527_ vdd gnd OR2X2
X_1484_ Yin3[1] _732_ _735_ vdd gnd NAND2X1
X_1064_ _338_ _339_ _337_ _340_ vdd gnd OAI21X1
X_1293_ LoadCtl_4_bF$buf6 _563_ _561_ _564_ vdd gnd NAND3X1
X_1349_ _609_ _613_ _614_ vdd gnd NAND2X1
X_1578_ _52_ clk_bF$buf6 Yin3[2] vdd gnd DFFPOSX1
X_1158_ _304_ _431_ _373_ _370_ _432_ vdd 
+ gnd
+ AOI22X1
X_1387_ _646_ _647_ _648_ vdd gnd NOR2X1
X_930_ _200_ _199_ _197_ _208_ vdd gnd NAND3X1
X_1196_ mul[9] _469_ vdd gnd INVX1
XBUFX2_insert16 _470_ _470__bF$buf4 vdd gnd BUFX2
XBUFX2_insert17 _470_ _470__bF$buf3 vdd gnd BUFX2
XBUFX2_insert18 _470_ _470__bF$buf2 vdd gnd BUFX2
XBUFX2_insert19 _470_ _470__bF$buf1 vdd gnd BUFX2
X_1502_ LoadCtl_0_bF$buf2 _74_ Yin1[0] _746_ vdd gnd OAI21X1
X_833_ rYin[10] _121_ vdd gnd INVX1
X_1099_ _370_ _373_ _371_ _374_ vdd gnd NAND3X1
X_1311_ _565_ LoadCtl_4_bF$buf5 _580_ _579_ _32_ vdd 
+ gnd
+ OAI22X1
X_1540_ _14_ clk_bF$buf3 rYin[10] vdd gnd DFFPOSX1
X_1120_ _389_ _390_ _351_ _395_ vdd gnd OAI21X1
X_871_ XinHL[2] Cin_1_bF$buf3 _151_ vdd gnd AND2X2
X_927_ _198_ _204_ _200_ _205_ vdd gnd OAI21X1
X_1405_ _663_ _665_ vdd gnd INVX1
X_1214_ _89_ _420_ _486_ _487_ vdd gnd OAI21X1
X_965_ _235_ _242_ vdd gnd INVX1
X_1443_ _675_ _696_ _699_ vdd gnd NAND2X1
X_1023_ _298_ _296_ _297_ _299_ vdd gnd NAND3X1
X_774_ LoadCtl[2] y[14] _82_ vdd gnd NOR2X1
X_1252_ _95_ _239_ _480_ _524_ vdd gnd OAI21X1
X_1308_ _577_ _572_ _578_ vdd gnd NAND2X1
X_1481_ Yin3[0] _732_ _733_ vdd gnd NAND2X1
X_1061_ _233_ _274_ _336_ _337_ vdd gnd AOI21X1
X_1537_ _11_ clk_bF$buf3 rYin[7] vdd gnd DFFPOSX1
X_1117_ _349_ _386_ _391_ _392_ vdd gnd NAND3X1
X_868_ XinHL[1] Cin_1_bF$buf3 XinHL[2] Cin_0_bF$buf1 _148_ vdd 
+ gnd
+ AOI22X1
X_1290_ _536_ _560_ _545_ _561_ vdd gnd NAND3X1
X_1346_ _607_ _611_ vdd gnd INVX1
X_1575_ _49_ clk_bF$buf2 y[15] vdd gnd DFFPOSX1
X_1155_ _178_ _420_ _424_ _428_ _429_ vdd 
+ gnd
+ OAI22X1
X_1384_ _638_ _637_ _644_ _645_ vdd gnd OAI21X1
X_1193_ _413_ _467_ vdd gnd INVX1
X_1249_ _310_ _440_ _521_ vdd gnd NAND2X1
X_1478_ _470__bF$buf0 _730_ _727_ _49_ vdd gnd OAI21X1
X_1058_ _286_ _332_ _333_ _334_ vdd gnd NAND3X1
X_1287_ _556_ _548_ _558_ vdd gnd AND2X2
X_830_ rYin[9] _119_ vdd gnd INVX1
X_1096_ _310_ _366_ _371_ vdd gnd NAND2X1
X_924_ _201_ _199_ _197_ _202_ vdd gnd NAND3X1
X_1402_ _117_ _410_ _662_ vdd gnd NOR2X1
X_1211_ _483_ _479_ _482_ _484_ vdd gnd NAND3X1
X_962_ Cin[3] _239_ vdd gnd INVX2
X_1440_ _691_ _682_ _696_ vdd gnd NOR2X1
X_1020_ _290_ _296_ vdd gnd INVX1
X_771_ LoadCtl[2] y[13] _79_ _80_ vdd gnd OAI21X1
X_827_ rYin[8] _117_ vdd gnd INVX1
X_1305_ _551_ _575_ vdd gnd INVX1
X_1534_ _8_ clk_bF$buf4 rYin[4] vdd gnd DFFPOSX1
X_1114_ _384_ _383_ _382_ _389_ vdd gnd AOI21X1
X_865_ XinHL[0] Cin[2] _145_ vdd gnd NAND2X1
X_1343_ _107_ _160_ _608_ vdd gnd NOR2X1
X_1572_ _46_ clk_bF$buf1 y[12] vdd gnd DFFPOSX1
X_1152_ _425_ _421_ _423_ _426_ vdd gnd NAND3X1
X_1208_ _480_ _481_ vdd gnd INVX1
X_959_ XinHL[1] _236_ vdd gnd INVX1
X_1381_ _641_ _637_ LoadCtl_4_bF$buf6 _643_ vdd gnd OAI21X1
X_1437_ _85_ _470__bF$buf3 _692_ _693_ _45_ vdd 
+ gnd
+ AOI22X1
X_1017_ XinHL[2] Cin[4] _293_ vdd gnd AND2X2
X_768_ _72_ _77_ vdd gnd INVX1
X_1190_ _459_ _463_ _464_ vdd gnd NAND2X1
X_1246_ _493_ _499_ _518_ vdd gnd NAND2X1
X_997_ _234_ _270_ _274_ vdd gnd NAND2X1
X_1475_ rYin[14] rYin[15] _722_ _728_ vdd gnd NAND3X1
X_1055_ _287_ _330_ _325_ _331_ vdd gnd NAND3X1
XFILL71250x39750 gnd vdd FILL
X_1284_ _553_ _549_ _555_ vdd gnd NAND2X1
XFILL70950x54150 gnd vdd FILL
X_1093_ _95_ _179_ _310_ _368_ vdd gnd OAI21X1
X_1569_ _43_ clk_bF$buf5 y[9] vdd gnd DFFPOSX1
X_1149_ XinH[0] Cin[4] _422_ _423_ vdd gnd NAND3X1
X_1378_ _638_ _639_ _640_ vdd gnd NOR2X1
X_921_ _198_ _199_ vdd gnd INVX1
X_1187_ _457_ _456_ _416_ _461_ vdd gnd AOI21X1
X_824_ rYin[7] _115_ vdd gnd INVX1
X_1302_ _567_ _413_ _571_ _572_ vdd gnd AOI21X1
X_1531_ _5_ clk_bF$buf0 rYin[1] vdd gnd DFFPOSX1
X_1111_ _351_ _381_ _385_ _386_ vdd gnd NAND3X1
X_862_ LoadCtl_4_bF$buf7 _142_ _139_ _143_ vdd gnd NAND3X1
X_918_ XinH[0] Cin_1_bF$buf1 _196_ vdd gnd AND2X2
X_1340_ _470__bF$buf2 _604_ _605_ _36_ vdd gnd OAI21X1
X_1205_ _430_ _442_ _477_ _478_ vdd gnd OAI21X1
X_956_ _232_ _233_ vdd gnd INVX1
X_1434_ _690_ _691_ vdd gnd INVX1
X_1014_ XinHL[1] Cin[5] _290_ vdd gnd NAND2X1
X_765_ LoadCtl_0_bF$buf3 _74_ _75_ vdd gnd NOR2X1
X_1243_ _514_ _464_ _515_ vdd gnd NOR2X1
X_994_ _269_ _270_ _271_ vdd gnd NAND2X1
X_1472_ _129_ _725_ LoadCtl_4_bF$buf1 _726_ vdd gnd OAI21X1
X_1052_ _323_ _322_ _321_ _328_ vdd gnd AOI21X1
X_1528_ _2_ clk_bF$buf7 XinH[2] vdd gnd DFFPOSX1
X_1108_ _377_ _374_ _369_ _383_ vdd gnd NAND3X1
X_859_ XinHL[0] _140_ vdd gnd INVX1
X_1281_ _481_ _551_ _552_ vdd gnd NAND2X1
X_1337_ _598_ _601_ _603_ vdd gnd OR2X2
X_1090_ XinH[1] Cin[2] _365_ vdd gnd NAND2X1
X_1566_ _40_ clk_bF$buf3 y[6] vdd gnd DFFPOSX1
X_1146_ Cin[5] _420_ vdd gnd INVX2
X_897_ XinHL[2] _176_ vdd gnd INVX2
X_1375_ _619_ _636_ _635_ _637_ vdd gnd AOI21X1
X_1184_ _416_ _456_ _457_ _458_ vdd gnd NAND3X1
XFILL71250x25350 gnd vdd FILL
X_1469_ rYin[14] _722_ _723_ vdd gnd NOR2X1
X_1049_ _320_ _324_ _289_ _325_ vdd gnd NAND3X1
X_1278_ _523_ _525_ _527_ _549_ vdd gnd OAI21X1
X_821_ rYin[6] _113_ vdd gnd INVX1
X_1087_ _361_ _358_ _359_ _362_ vdd gnd NAND3X1
X_915_ _167_ _172_ _174_ _193_ vdd gnd AOI21X1
X_1202_ _421_ _425_ _428_ _475_ vdd gnd AOI21X1
X_953_ mul[5] _230_ vdd gnd INVX1
X_1431_ rYin[11] mul[11] _688_ vdd gnd NAND2X1
X_1011_ _286_ _287_ vdd gnd INVX1
X_762_ LoadCtl[1] LoadCtl_0_bF$buf1 _72_ vdd gnd NOR2X1
X_818_ rYin[5] _111_ vdd gnd INVX1
X_1240_ _456_ _458_ _511_ _512_ vdd gnd NAND3X1
X_991_ _263_ _267_ _234_ _268_ vdd gnd NAND3X1
X_1525_ LoadCtl_0_bF$buf4 _178_ _757_ _69_ vdd gnd OAI21X1
X_1105_ _378_ _379_ _377_ _380_ vdd gnd OAI21X1
X_856_ XinHL[1] Cin_0_bF$buf1 _137_ vdd gnd NAND2X1
X_1334_ _105_ _144_ _600_ vdd gnd NOR2X1
X_1563_ _37_ clk_bF$buf1 y[3] vdd gnd DFFPOSX1
X_1143_ _416_ _417_ vdd gnd INVX1
X_894_ _172_ _167_ _162_ _173_ vdd gnd NAND3X1
X_1372_ _618_ _629_ _634_ vdd gnd NAND2X1
X_1428_ _680_ _685_ vdd gnd INVX1
X_1008_ _232_ _283_ _273_ _284_ vdd gnd OAI21X1
X_1181_ _417_ _449_ _454_ _455_ vdd gnd NAND3X1
X_1237_ _469_ _470__bF$buf1 _508_ _509_ _29_ vdd 
+ gnd
+ AOI22X1
X_988_ _259_ _257_ _253_ _265_ vdd gnd NAND3X1
X_1466_ _707_ _715_ _720_ vdd gnd NOR2X1
X_1046_ _316_ _313_ _308_ _322_ vdd gnd NAND3X1
X_797_ Xin[1] _75_ _98_ vdd gnd NAND2X1
XFILL70950x61350 gnd vdd FILL
X_1275_ _510_ LoadCtl_4_bF$buf4 _546_ _30_ vdd gnd OAI21X1
X_1084_ _355_ _353_ _359_ vdd gnd NAND2X1
X_1369_ _631_ _630_ LoadCtl_4_bF$buf0 _632_ vdd gnd OAI21X1
X_912_ _160_ LoadCtl_4_bF$buf7 _188_ _190_ _23_ vdd 
+ gnd
+ OAI22X1
X_1598_ LoadCtl[1] clk_bF$buf6 LoadCtl[2] vdd gnd DFFPOSX1
X_1178_ _444_ _447_ _452_ vdd gnd NOR2X1
X_950_ _221_ _226_ _192_ _228_ vdd gnd NAND3X1
X_815_ rYin[4] _109_ vdd gnd INVX1
X_1522_ LoadCtl_0_bF$buf4 Xin[2] _756_ vdd gnd NAND2X1
X_1102_ _303_ _376_ _311_ _377_ vdd gnd OAI21X1
X_853_ _133_ LoadCtl_4_bF$buf7 _134_ _20_ vdd gnd OAI21X1
X_909_ _183_ _187_ _156_ _188_ vdd gnd AOI21X1
X_1331_ _470__bF$buf2 _596_ _597_ _35_ vdd gnd OAI21X1
X_1560_ _34_ clk_bF$buf2 y[0] vdd gnd DFFPOSX1
X_1140_ _381_ _385_ _351_ _414_ vdd gnd AOI21X1
X_891_ _151_ _169_ _170_ vdd gnd NAND2X1
X_947_ _220_ _225_ vdd gnd INVX1
X_1425_ _678_ _682_ _683_ vdd gnd AND2X2
X_1005_ _230_ LoadCtl_4_bF$buf0 _281_ _25_ vdd gnd OAI21X1
X_1234_ _503_ _506_ _507_ vdd gnd NOR2X1
X_985_ _261_ _260_ _259_ _262_ vdd gnd OAI21X1
X_1463_ _709_ _470__bF$buf4 _716_ _717_ _47_ vdd 
+ gnd
+ AOI22X1
X_1043_ _317_ _318_ _316_ _319_ vdd gnd OAI21X1
X_794_ LoadCtl_0_bF$buf4 _95_ _96_ _758_[3] vdd gnd OAI21X1
X_1519_ LoadCtl_0_bF$buf0 _140_ _754_ _66_ vdd gnd OAI21X1
X_1272_ _539_ _544_ vdd gnd INVX1
X_1328_ _591_ _592_ _587_ _595_ vdd gnd OAI21X1
X_1081_ _89_ _239_ _355_ _356_ vdd gnd OAI21X1
X_1557_ _31_ clk_bF$buf5 mul[11] vdd gnd DFFPOSX1
X_1137_ _406_ _335_ _411_ vdd gnd NAND2X1
X_888_ _166_ _165_ _163_ _167_ vdd gnd OAI21X1
X_1366_ _627_ _628_ _629_ vdd gnd NOR2X1
X_1595_ _69_ clk_bF$buf7 XinHL[3] vdd gnd DFFPOSX1
X_1175_ _443_ _448_ _419_ _449_ vdd gnd NAND3X1
XFILL71250x32550 gnd vdd FILL
XFILL70950x14550 gnd vdd FILL
X_1269_ _279_ _401_ _341_ _541_ vdd gnd NAND3X1
X_812_ rYin[3] _107_ vdd gnd INVX1
X_1498_ _736_ _740_ _743_ _56_ vdd gnd AOI21X1
X_1078_ XinH[0] Cin[3] _353_ vdd gnd AND2X2
X_850_ LoadCtl_4_bF$buf3 _131_ _132_ _19_ vdd gnd OAI21X1
X_906_ _174_ _172_ _167_ _185_ vdd gnd NAND3X1
X_944_ _185_ _222_ vdd gnd INVX1
X_1422_ _121_ _510_ _680_ vdd gnd NOR2X1
X_1002_ _272_ _275_ _221_ _228_ _279_ vdd 
+ gnd
+ AOI22X1
X_809_ rYin[2] _105_ vdd gnd INVX1
X_1231_ _476_ _501_ _500_ _504_ vdd gnd NAND3X1
X_982_ _198_ _200_ _197_ _259_ vdd gnd OAI21X1
X_1460_ _714_ _715_ vdd gnd INVX1
X_1040_ _248_ _315_ _255_ _316_ vdd gnd OAI21X1
X_791_ LoadCtl_0_bF$buf3 _93_ _94_ _758_[2] vdd gnd OAI21X1
X_1516_ LoadCtl_0_bF$buf2 Yin0[3] _753_ vdd gnd NOR2X1
X_847_ LoadCtl_4_bF$buf1 _129_ _130_ _18_ vdd gnd OAI21X1
X_1325_ rYin[1] mul[1] _592_ vdd gnd NOR2X1
X_1554_ _28_ clk_bF$buf5 mul[8] vdd gnd DFFPOSX1
X_1134_ _402_ _408_ LoadCtl_4_bF$buf0 _409_ vdd gnd OAI21X1
X_885_ XinHL[3] Cin_0_bF$buf0 _164_ vdd gnd NAND2X1
X_1363_ _619_ _622_ _618_ _626_ vdd gnd AOI21X1
X_1419_ _119_ _469_ _676_ _677_ vdd gnd OAI21X1
X_1592_ _66_ clk_bF$buf7 XinHL[0] vdd gnd DFFPOSX1
X_1172_ _437_ _439_ _446_ vdd gnd NAND2X1
X_1228_ _496_ _497_ _478_ _501_ vdd gnd OAI21X1
X_979_ _91_ _179_ _203_ _256_ vdd gnd OAI21X1
X_1457_ rYin[13] mul[13] _712_ vdd gnd NOR2X1
X_1037_ _312_ _309_ _311_ _313_ vdd gnd NAND3X1
X_788_ LoadCtl_0_bF$buf0 _91_ _92_ _758_[1] vdd gnd OAI21X1
X_1266_ _493_ _499_ _537_ _538_ vdd gnd NAND3X1
X_1495_ Yin2[1] _740_ _742_ vdd gnd NOR2X1
X_1075_ _308_ _313_ _316_ _350_ vdd gnd AOI21X1
X_903_ _175_ _181_ _174_ _182_ vdd gnd OAI21X1
X_1589_ _63_ clk_bF$buf4 Yin0[1] vdd gnd DFFPOSX1
X_1169_ _442_ _438_ _430_ _443_ vdd gnd OAI21X1
X_1398_ _636_ _656_ _619_ _658_ vdd gnd NAND3X1
X_941_ _215_ _219_ vdd gnd INVX1
X_806_ rYin[1] _103_ vdd gnd INVX1
X_1513_ LoadCtl_0_bF$buf2 _734_ _751_ _63_ vdd gnd AOI21X1
X_844_ LoadCtl_4_bF$buf1 _127_ _128_ _17_ vdd gnd OAI21X1
X_1322_ y[0] _470__bF$buf2 _590_ vdd gnd NAND2X1
X_1551_ _25_ clk_bF$buf4 mul[5] vdd gnd DFFPOSX1
X_1131_ _348_ _392_ _396_ _406_ vdd gnd NAND3X1
X_882_ XinHL[0] Cin[3] _161_ vdd gnd NAND2X1
X_1607_ _759_[1] Yout[1] vdd gnd BUFX2
X_938_ _206_ _210_ _215_ _216_ vdd gnd OAI21X1
X_1360_ _623_ _621_ _624_ vdd gnd NAND2X1
X_1416_ y[10] _470__bF$buf3 _674_ vdd gnd NAND2X1
X_1225_ _496_ _497_ _495_ _498_ vdd gnd OAI21X1
X_976_ _248_ _250_ _252_ _253_ vdd gnd NAND3X1
X_1454_ y[13] _709_ vdd gnd INVX1
X_1034_ XinH[2] Cin_1_bF$buf2 _310_ vdd gnd AND2X2
X_785_ LoadCtl_0_bF$buf4 _89_ _90_ _758_[0] vdd gnd OAI21X1
X_1263_ _519_ _531_ _534_ _535_ vdd gnd NAND3X1
X_1319_ _586_ _587_ vdd gnd INVX1
X_1492_ _71_ _77_ _740_ vdd gnd NOR2X1
X_1072_ _324_ _320_ _327_ _347_ vdd gnd AOI21X1
X_1548_ _22_ clk_bF$buf0 mul[2] vdd gnd DFFPOSX1
X_1128_ _280_ _343_ _335_ _403_ vdd gnd OAI21X1
X_879_ LoadCtl_4_bF$buf7 _158_ _159_ vdd gnd NAND2X1
X_1357_ _617_ _618_ _620_ _621_ vdd gnd OAI21X1
X_900_ Cin_0_bF$buf2 _179_ vdd gnd INVX1
X_1586_ _60_ clk_bF$buf3 Yin1[2] vdd gnd DFFPOSX1
X_1166_ _434_ _440_ vdd gnd INVX1
XCLKBUF1_insert8 clk clk_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert9 clk clk_bF$buf6 vdd gnd CLKBUF1
X_1395_ _646_ _644_ _654_ _655_ vdd gnd OAI21X1
X_803_ rYin[0] _101_ vdd gnd INVX1
X_1489_ Yin[3] _738_ vdd gnd INVX1
X_1069_ _282_ LoadCtl_4_bF$buf6 _342_ _344_ _26_ vdd 
+ gnd
+ OAI22X1
X_1298_ _516_ _568_ vdd gnd INVX1
X_1510_ LoadCtl_0_bF$buf1 Yin0[0] _750_ vdd gnd NOR2X1
X_841_ LoadCtl_4_bF$buf3 _125_ _126_ _16_ vdd gnd OAI21X1
X_1604_ _758_[2] Xout[2] vdd gnd BUFX2
X_935_ XinHL[1] Cin[3] _213_ vdd gnd NAND2X1
X_1413_ _670_ _667_ _672_ vdd gnd NOR2X1
X_1222_ _444_ _494_ _438_ _495_ vdd gnd AOI21X1
X_973_ _203_ _249_ _250_ vdd gnd NAND2X1
X_1451_ _704_ _707_ vdd gnd INVX1
X_1031_ XinH[1] Cin_1_bF$buf2 _306_ _307_ vdd gnd NAND3X1
X_782_ _77_ _87_ _88_ _759_[3] vdd gnd OAI21X1
X_1507_ _736_ _745_ _748_ _60_ vdd gnd OAI21X1
X_838_ LoadCtl_4_bF$buf2 _123_ _124_ _15_ vdd gnd OAI21X1
X_1260_ _531_ _532_ vdd gnd INVX1
X_1316_ _584_ _583_ _585_ vdd gnd NOR2X1
X_1545_ _19_ clk_bF$buf2 rYin[15] vdd gnd DFFPOSX1
X_1125_ _334_ _332_ _398_ _399_ _400_ vdd 
+ gnd
+ AOI22X1
X_876_ _155_ _156_ vdd gnd INVX1
X_1354_ _109_ _191_ _618_ vdd gnd NOR2X1
X_1583_ _57_ clk_bF$buf6 Yin2[3] vdd gnd DFFPOSX1
X_1163_ _433_ _434_ _436_ _437_ vdd gnd OAI21X1
X_1219_ _484_ _491_ _487_ _492_ vdd gnd NAND3X1
X_1392_ _470__bF$buf1 _651_ _652_ _41_ vdd gnd OAI21X1
X_1448_ _702_ _703_ _704_ vdd gnd NOR2X1
X_1028_ XinH[2] Cin_0_bF$buf3 _304_ vdd gnd AND2X2
X_779_ LoadCtl[2] _85_ _86_ vdd gnd NAND2X1

.ends
.end
