*SPICE netlist created from verilog structural netlist module ALU8_Mult by vlog2Spice (qflow)
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

.subckt ALU8_Mult vdd gnd ABCmd_i[0] ABCmd_i[1] ABCmd_i[2] ABCmd_i[3] ABCmd_i[4]
+ ABCmd_i[5] ABCmd_i[6] ABCmd_i[7] ACC_o[0] ACC_o[1] ACC_o[2] ACC_o[3] ACC_o[4]
+ ACC_o[5] ACC_o[6] ACC_o[7] Flag_i LoadA_i LoadB_i LoadCmd_i MulH_i
+ MulL_i clk reset 

XFILL_0__1241_ gnd vdd FILL
XFILL_2__1259_ gnd vdd FILL
XFILL_1__1822_ gnd vdd FILL
XFILL_1__1402_ gnd vdd FILL
X_1677_ _18_ clk_bF$buf2 BI[0] vdd gnd DFFPOSX1
X_1257_ _343_ _344_ _345_ _349_ vdd gnd NAND3X1
XFILL_0__1717_ gnd vdd FILL
XFILL_0__1890_ gnd vdd FILL
XFILL_0__1470_ gnd vdd FILL
XFILL_0__1050_ gnd vdd FILL
XFILL_1__1631_ gnd vdd FILL
XFILL_1__1211_ gnd vdd FILL
X_1486_ _574_ _571_ _712_ _575_ vdd gnd OAI21X1
X_1066_ MUL_bF$buf5 AI[6] _158_ vdd gnd NAND2X1
XFILL_0__1526_ gnd vdd FILL
XFILL_0__1106_ gnd vdd FILL
XFILL_1__1860_ gnd vdd FILL
XFILL_1__1440_ gnd vdd FILL
XFILL_1__1020_ gnd vdd FILL
X_1295_ _384_ _134_ _385_ _386_ vdd gnd NAND3X1
XFILL_0__1755_ gnd vdd FILL
XFILL_0__1335_ gnd vdd FILL
XFILL_0__1564_ gnd vdd FILL
XFILL_0__1144_ gnd vdd FILL
XFILL_1__1725_ gnd vdd FILL
XFILL_1__1305_ gnd vdd FILL
XFILL_0__1793_ gnd vdd FILL
XFILL_0__1373_ gnd vdd FILL
XFILL_1__1534_ gnd vdd FILL
XFILL_1__1114_ gnd vdd FILL
X_1389_ _477_ _478_ _479_ vdd gnd OR2X2
XFILL_0__1849_ gnd vdd FILL
XFILL_0__1429_ gnd vdd FILL
XFILL_0__1009_ gnd vdd FILL
XFILL_0__1182_ gnd vdd FILL
X_1601_ LoadCmd_i ABCmd_i[1] _683_ vdd gnd NAND2X1
X_932_ MUL_bF$buf4 BI[2] AI[1] _724_ vdd gnd NAND3X1
XFILL_1__1763_ gnd vdd FILL
XFILL_1__1343_ gnd vdd FILL
X_1198_ AI[1] _289_ _290_ vdd gnd NAND2X1
XFILL_0__1238_ gnd vdd FILL
XFILL_1__1819_ gnd vdd FILL
XFILL86850x39750 gnd vdd FILL
X_1830_ _801_ _790_ _802_ vdd gnd NAND2X1
X_1410_ _316_ _499_ _486_ _500_ vdd gnd OAI21X1
XFILL_1__1572_ gnd vdd FILL
XFILL_1__1152_ gnd vdd FILL
XFILL_0__1887_ gnd vdd FILL
XFILL_0__1467_ gnd vdd FILL
XFILL_0__1047_ gnd vdd FILL
XFILL_1__1628_ gnd vdd FILL
XFILL_1__1208_ gnd vdd FILL
X_970_ _58_ _61_ _49_ _62_ vdd gnd NAND3X1
XFILL_1__1381_ gnd vdd FILL
XFILL_2__1030_ gnd vdd FILL
XFILL_0__1696_ gnd vdd FILL
XFILL_0__1276_ gnd vdd FILL
XFILL_1__1857_ gnd vdd FILL
XFILL_1__1437_ gnd vdd FILL
XFILL_1__1017_ gnd vdd FILL
XFILL_1__1190_ gnd vdd FILL
XFILL_0__1085_ gnd vdd FILL
X_1504_ _586_ _591_ _585_ _592_ vdd gnd NAND3X1
XFILL_1__1246_ gnd vdd FILL
XFILL_2__1735_ gnd vdd FILL
X_1733_ _873_ _898_ _903_ _904_ vdd gnd NAND3X1
X_1313_ AI[5] _399_ _713_ _404_ vdd gnd NAND3X1
XFILL_1__1895_ gnd vdd FILL
XFILL_1__1475_ gnd vdd FILL
XFILL_1__1055_ gnd vdd FILL
X_1542_ _628_ _626_ _712_ _629_ vdd gnd OAI21X1
X_1122_ _146_ _213_ _209_ _214_ vdd gnd NAND3X1
XFILL_1__1284_ gnd vdd FILL
XFILL_0__1599_ gnd vdd FILL
XFILL_0__1179_ gnd vdd FILL
XFILL_0__926_ gnd vdd FILL
X_929_ MUL_bF$buf4 BI[1] AI[2] _721_ vdd gnd NAND3X1
X_1771_ _743_ _745_ _746_ _747_ vdd gnd OAI21X1
X_1351_ _438_ _441_ _377_ _442_ vdd gnd OAI21X1
XFILL_1__1093_ gnd vdd FILL
XFILL_0__1811_ gnd vdd FILL
XFILL_2__1409_ gnd vdd FILL
XFILL_2__920_ gnd vdd FILL
X_1827_ _877_ _798_ _796_ _799_ vdd gnd OAI21X1
X_1407_ _486_ _497_ vdd gnd INVX1
XFILL_1__1569_ gnd vdd FILL
XFILL_1__1149_ gnd vdd FILL
X_1580_ _665_ _664_ _666_ vdd gnd NAND2X1
X_1160_ _251_ _252_ vdd gnd INVX1
XFILL_1__942_ gnd vdd FILL
XFILL_2__1638_ gnd vdd FILL
XFILL_0__1620_ gnd vdd FILL
XFILL_0__1200_ gnd vdd FILL
X_1636_ ABCmd_i[0] LoadB_i _703_ vdd gnd NAND2X1
X_1216_ _168_ _303_ _308_ vdd gnd OR2X2
XFILL_0__964_ gnd vdd FILL
X_967_ _50_ _51_ _59_ vdd gnd NOR2X1
XFILL_1__1798_ gnd vdd FILL
XFILL_1__1378_ gnd vdd FILL
X_1865_ _830_ _834_ vdd gnd INVX1
X_1445_ _401_ _135_ _533_ _534_ vdd gnd OAI21X1
X_1025_ _115_ _116_ _117_ vdd gnd NAND2X1
XFILL_1__1187_ gnd vdd FILL
XFILL_1__980_ gnd vdd FILL
X_1674_ _15_ clk_bF$buf1 AI[5] vdd gnd DFFPOSX1
X_1254_ _345_ _344_ _343_ _346_ vdd gnd AOI21X1
XFILL_0__1714_ gnd vdd FILL
X_1483_ AV _572_ vdd gnd INVX1
X_1063_ _154_ _155_ vdd gnd INVX1
XFILL_0__1523_ gnd vdd FILL
XFILL_0__1103_ gnd vdd FILL
X_1539_ _617_ _624_ _625_ _626_ vdd gnd AOI21X1
X_1119_ _203_ _205_ _206_ _211_ vdd gnd NAND3X1
X_1292_ _382_ _383_ vdd gnd INVX1
XFILL_0__1752_ gnd vdd FILL
XFILL_0__1332_ gnd vdd FILL
X_1768_ alu_op_2_bF$buf3 BI[3] _858_ _744_ vdd gnd OAI21X1
X_1348_ _429_ _422_ _432_ _439_ vdd gnd NAND3X1
XFILL_0__1808_ gnd vdd FILL
XFILL_0__1561_ gnd vdd FILL
XFILL_2__1579_ gnd vdd FILL
XFILL_0__1141_ gnd vdd FILL
XFILL_1__1722_ gnd vdd FILL
XFILL_1__1302_ gnd vdd FILL
X_1577_ _405_ _134_ _634_ _663_ vdd gnd AOI21X1
X_1157_ _247_ _248_ _246_ _249_ vdd gnd OAI21X1
XFILL_1__939_ gnd vdd FILL
XFILL86550x50550 gnd vdd FILL
XFILL_0__1617_ gnd vdd FILL
XFILL_0__1790_ gnd vdd FILL
XFILL_0__1370_ gnd vdd FILL
XFILL_1__1531_ gnd vdd FILL
XFILL_1__1111_ gnd vdd FILL
X_1386_ _475_ _476_ vdd gnd INVX1
XFILL_0__1846_ gnd vdd FILL
XFILL_0__1426_ gnd vdd FILL
XFILL_0__1006_ gnd vdd FILL
XFILL_1__1760_ gnd vdd FILL
XFILL_1__1340_ gnd vdd FILL
X_1195_ _207_ _186_ _206_ _287_ vdd gnd OAI21X1
XFILL_1__977_ gnd vdd FILL
XFILL_0__1235_ gnd vdd FILL
XFILL_1__1816_ gnd vdd FILL
XFILL_0__999_ gnd vdd FILL
XFILL_0__1884_ gnd vdd FILL
XFILL_0__1464_ gnd vdd FILL
XFILL_0__1044_ gnd vdd FILL
XFILL_1__1625_ gnd vdd FILL
XFILL_1__1205_ gnd vdd FILL
XFILL_0__1693_ gnd vdd FILL
XFILL_0__1273_ gnd vdd FILL
XFILL_1__1854_ gnd vdd FILL
XFILL_1__1434_ gnd vdd FILL
XFILL_1__1014_ gnd vdd FILL
X_1289_ _329_ _330_ _301_ _380_ vdd gnd NOR3X1
XFILL_0__1749_ gnd vdd FILL
XFILL_0__1329_ gnd vdd FILL
XFILL_0__1082_ gnd vdd FILL
X_1501_ _182_ _589_ vdd gnd INVX1
XFILL_1__1243_ gnd vdd FILL
X_1098_ _188_ _189_ _187_ _190_ vdd gnd AOI21X1
XFILL_0__1558_ gnd vdd FILL
XFILL_0__1138_ gnd vdd FILL
XFILL_1__1719_ gnd vdd FILL
X_1730_ _870_ _862_ BI[0] _901_ vdd gnd OAI21X1
X_1310_ AI[5] _401_ vdd gnd INVX1
XFILL_1__1892_ gnd vdd FILL
XFILL_1__1472_ gnd vdd FILL
XFILL_1__1052_ gnd vdd FILL
XFILL_0__1787_ gnd vdd FILL
XFILL_0__1367_ gnd vdd FILL
XFILL_1__1528_ gnd vdd FILL
XFILL_1__1108_ gnd vdd FILL
XFILL_1__1281_ gnd vdd FILL
XFILL86850x25350 gnd vdd FILL
XFILL_2__1350_ gnd vdd FILL
XFILL_0__1596_ gnd vdd FILL
XFILL_0__1176_ gnd vdd FILL
XFILL_0__923_ gnd vdd FILL
X_926_ BI[3] _717_ _718_ vdd gnd NAND2X1
XFILL_1__1757_ gnd vdd FILL
XFILL_1__1337_ gnd vdd FILL
XFILL_1__1090_ gnd vdd FILL
XFILL_2__1826_ gnd vdd FILL
X_1824_ _868_ _791_ _795_ _794_ _796_ vdd 
+ gnd
+ OAI22X1
X_1404_ _490_ _493_ _459_ _494_ vdd gnd NAND3X1
XFILL_1__1566_ gnd vdd FILL
XFILL_1__1146_ gnd vdd FILL
X_1633_ LoadA_i _480_ _701_ _16_ vdd gnd OAI21X1
X_1213_ _168_ _303_ _305_ vdd gnd AND2X2
XFILL_0__961_ gnd vdd FILL
X_964_ MUL_bF$buf4 BI[2] AI[3] _56_ vdd gnd NAND3X1
XFILL_1__1795_ gnd vdd FILL
XFILL_1__1375_ gnd vdd FILL
XFILL_2__1024_ gnd vdd FILL
X_1862_ _830_ _790_ _831_ vdd gnd NAND2X1
X_1442_ _475_ _484_ _479_ _531_ vdd gnd OAI21X1
X_1022_ _111_ _113_ _108_ _114_ vdd gnd OAI21X1
XFILL_1__1184_ gnd vdd FILL
XFILL_0__1499_ gnd vdd FILL
XFILL_0__1079_ gnd vdd FILL
X_1671_ _12_ clk_bF$buf3 AI[2] vdd gnd DFFPOSX1
X_1251_ _286_ _343_ vdd gnd INVX1
XFILL_0__1711_ gnd vdd FILL
X_1727_ _876_ _898_ vdd gnd INVX1
X_1307_ MUL_bF$buf3 AI[5] BI[4] _398_ vdd gnd NAND3X1
XFILL_1__1889_ gnd vdd FILL
XFILL_1__1469_ gnd vdd FILL
XFILL_1__1049_ gnd vdd FILL
X_1480_ _262_ _273_ _569_ vdd gnd NAND2X1
X_1060_ _150_ _151_ _152_ vdd gnd NOR2X1
XFILL_0__1520_ gnd vdd FILL
XFILL_0__1100_ gnd vdd FILL
XFILL_2__1291_ gnd vdd FILL
X_1536_ _712_ _616_ _623_ _0_[4] vdd gnd OAI21X1
X_1116_ _205_ _206_ _207_ _208_ vdd gnd NAND3X1
XFILL_1__1698_ gnd vdd FILL
XFILL_1__1278_ gnd vdd FILL
XFILL85950x10950 gnd vdd FILL
X_1765_ _862_ BI[3] _740_ _863_ _741_ vdd 
+ gnd
+ AOI22X1
X_1345_ _434_ _435_ _395_ _436_ vdd gnd AOI21X1
XFILL_1__1087_ gnd vdd FILL
XFILL_0__1805_ gnd vdd FILL
X_1574_ _613_ _614_ _659_ _660_ vdd gnd AOI21X1
X_1154_ _244_ _245_ _235_ _246_ vdd gnd NAND3X1
XFILL_1__936_ gnd vdd FILL
XFILL_0__1614_ gnd vdd FILL
XFILL_0__958_ gnd vdd FILL
X_1383_ _471_ _472_ _460_ _473_ vdd gnd OAI21X1
XFILL_0__1843_ gnd vdd FILL
XFILL_0__1423_ gnd vdd FILL
XFILL_0__1003_ gnd vdd FILL
X_1859_ _799_ _816_ _815_ _828_ vdd gnd OAI21X1
X_1439_ _491_ _488_ _487_ _528_ vdd gnd AOI21X1
X_1019_ _109_ _110_ _111_ vdd gnd NOR2X1
X_1192_ _209_ _146_ _216_ _284_ vdd gnd AOI21X1
XFILL_1__974_ gnd vdd FILL
XFILL_0__1652_ gnd vdd FILL
XFILL_0__1232_ gnd vdd FILL
XFILL_1__1813_ gnd vdd FILL
X_1668_ _1_ vdd _0_[7] clk_bF$buf4 _919_[7] vdd 
+ gnd
+ DFFSR
X_1248_ _327_ _331_ _300_ _340_ vdd gnd AOI21X1
XFILL_0__996_ gnd vdd FILL
X_999_ _55_ _57_ _59_ _91_ vdd gnd AOI21X1
XFILL_0__1708_ gnd vdd FILL
XFILL_0__1881_ gnd vdd FILL
XFILL_0__1461_ gnd vdd FILL
XFILL_0__1041_ gnd vdd FILL
XFILL_1__1622_ gnd vdd FILL
XFILL_1__1202_ gnd vdd FILL
X_1897_ _919_[7] ACC_o[7] vdd gnd BUFX2
X_1477_ _560_ _566_ vdd gnd INVX1
X_1057_ _100_ _97_ _94_ _149_ vdd gnd AOI21X1
XFILL_0__1517_ gnd vdd FILL
XFILL_0__1690_ gnd vdd FILL
XFILL_0__1270_ gnd vdd FILL
XFILL_1__1851_ gnd vdd FILL
XFILL_1__1431_ gnd vdd FILL
XFILL_1__1011_ gnd vdd FILL
X_1286_ _286_ _341_ _376_ _377_ vdd gnd AOI21X1
XFILL86850x7350 gnd vdd FILL
XFILL_2__1500_ gnd vdd FILL
XFILL_0__1746_ gnd vdd FILL
XFILL_0__1326_ gnd vdd FILL
XFILL_1__1240_ gnd vdd FILL
X_1095_ _119_ _102_ _122_ _187_ vdd gnd AOI21X1
XFILL_0__1555_ gnd vdd FILL
XFILL_0__1135_ gnd vdd FILL
XFILL_1__1716_ gnd vdd FILL
XFILL_0__1784_ gnd vdd FILL
XFILL_0__1364_ gnd vdd FILL
XFILL_1__1525_ gnd vdd FILL
XFILL_1__1105_ gnd vdd FILL
XFILL_0__1593_ gnd vdd FILL
XFILL_0__1173_ gnd vdd FILL
XFILL_0__920_ gnd vdd FILL
X_923_ MUL_bF$buf3 _715_ vdd gnd INVX1
XFILL_1__1754_ gnd vdd FILL
XFILL_1__1334_ gnd vdd FILL
XFILL86850x46950 gnd vdd FILL
X_1189_ _280_ _281_ vdd gnd INVX1
XFILL_0__1649_ gnd vdd FILL
XFILL_0__1229_ gnd vdd FILL
X_1821_ AI[6] _792_ _793_ vdd gnd NAND2X1
X_1401_ _473_ _470_ _491_ vdd gnd AND2X2
XFILL_1__1563_ gnd vdd FILL
XFILL_1__1143_ gnd vdd FILL
XFILL_0__1878_ gnd vdd FILL
XFILL_0__1458_ gnd vdd FILL
XFILL_0__1038_ gnd vdd FILL
XFILL_1__1619_ gnd vdd FILL
X_1630_ ABCmd_i[5] LoadA_i _700_ vdd gnd NAND2X1
X_1210_ MUL_bF$buf2 AI[3] BI[5] _302_ vdd gnd NAND3X1
X_961_ BI[0] _53_ vdd gnd INVX1
XFILL_1__1792_ gnd vdd FILL
XFILL_1__1372_ gnd vdd FILL
XFILL_0__1687_ gnd vdd FILL
XFILL_0__1267_ gnd vdd FILL
XFILL_1__1848_ gnd vdd FILL
XFILL_1__1428_ gnd vdd FILL
XFILL_1__1008_ gnd vdd FILL
XFILL_1__1181_ gnd vdd FILL
XFILL_0__1496_ gnd vdd FILL
XFILL_0__1076_ gnd vdd FILL
XFILL_1_BUFX2_insert5 gnd vdd FILL
XFILL_1_BUFX2_insert6 gnd vdd FILL
XFILL_1_BUFX2_insert7 gnd vdd FILL
XFILL_1_BUFX2_insert8 gnd vdd FILL
XFILL_1_BUFX2_insert9 gnd vdd FILL
XFILL_1__1237_ gnd vdd FILL
X_1724_ alu_op_2_bF$buf0 _858_ _894_ _895_ vdd gnd OAI21X1
X_1304_ _390_ _394_ _395_ vdd gnd NAND2X1
XFILL_1__1886_ gnd vdd FILL
XFILL_1__1466_ gnd vdd FILL
XFILL_1__1046_ gnd vdd FILL
XFILL_2__1115_ gnd vdd FILL
X_1533_ CO _364_ _365_ _621_ vdd gnd OAI21X1
X_1113_ _189_ _187_ _188_ _205_ vdd gnd NAND3X1
XFILL_1__1695_ gnd vdd FILL
XFILL_1__1275_ gnd vdd FILL
XFILL_2__1344_ gnd vdd FILL
X_1762_ shr AI[4] _738_ vdd gnd NAND2X1
X_1342_ _426_ _428_ _423_ _433_ vdd gnd AOI21X1
XFILL_1__1084_ gnd vdd FILL
XFILL_0__1802_ gnd vdd FILL
XFILL_0__1399_ gnd vdd FILL
X_1818_ _784_ _787_ _783_ _790_ vdd gnd OAI21X1
X_1571_ _655_ _654_ _656_ _657_ vdd gnd OAI21X1
X_1151_ _242_ _243_ vdd gnd INVX1
XFILL_1__933_ gnd vdd FILL
XFILL_0__1611_ gnd vdd FILL
X_1627_ LoadA_i _387_ _698_ _13_ vdd gnd OAI21X1
X_1207_ _297_ _298_ _290_ _299_ vdd gnd OAI21X1
XFILL_0__955_ gnd vdd FILL
X_958_ MUL_bF$buf4 BI[1] AI[4] _50_ vdd gnd NAND3X1
XFILL_1__1789_ gnd vdd FILL
XFILL_1__1369_ gnd vdd FILL
X_1380_ _461_ _469_ _467_ _470_ vdd gnd NAND3X1
XFILL_0__1840_ gnd vdd FILL
XFILL_0__1420_ gnd vdd FILL
XFILL_0__1000_ gnd vdd FILL
X_1856_ _825_ _822_ AZ vdd gnd AND2X2
X_1436_ _457_ _505_ _524_ _525_ vdd gnd AOI21X1
X_1016_ _107_ _108_ vdd gnd INVX1
XFILL_1__1598_ gnd vdd FILL
XFILL_1__1178_ gnd vdd FILL
XFILL_1__971_ gnd vdd FILL
XFILL_1__1810_ gnd vdd FILL
X_1665_ _1_ vdd _0_[4] clk_bF$buf4 _919_[4] vdd 
+ gnd
+ DFFSR
X_1245_ _332_ _336_ _287_ _337_ vdd gnd NAND3X1
XFILL_0__993_ gnd vdd FILL
X_996_ _86_ _80_ _48_ _88_ vdd gnd AOI21X1
XFILL_0__1705_ gnd vdd FILL
XFILL_2__1056_ gnd vdd FILL
X_1894_ _919_[4] ACC_o[4] vdd gnd BUFX2
X_1474_ _360_ _448_ _563_ vdd gnd NOR2X1
X_1054_ _132_ _146_ vdd gnd INVX1
XFILL_0__1514_ gnd vdd FILL
XFILL_2__1285_ gnd vdd FILL
X_1283_ _373_ _371_ _374_ vdd gnd NAND2X1
XFILL_0__1743_ gnd vdd FILL
XFILL_0__1323_ gnd vdd FILL
X_1759_ _735_ ACC[2] vdd gnd INVX1
X_1339_ _422_ _429_ _381_ _430_ vdd gnd NAND3X1
X_1092_ _181_ _183_ _184_ vdd gnd NAND2X1
XFILL_0__1552_ gnd vdd FILL
XFILL_0__1132_ gnd vdd FILL
XFILL_1__1713_ gnd vdd FILL
X_1568_ _653_ _357_ _281_ _654_ vdd gnd AOI21X1
X_1148_ _237_ _239_ _240_ vdd gnd NAND2X1
XFILL_0__1608_ gnd vdd FILL
XFILL_0__1781_ gnd vdd FILL
XFILL_0__1361_ gnd vdd FILL
XFILL_1__1522_ gnd vdd FILL
XFILL_1__1102_ gnd vdd FILL
X_1797_ _751_ _771_ _757_ HC vdd gnd OAI21X1
X_1377_ _462_ _407_ _466_ _467_ vdd gnd OAI21X1
XFILL_0__1837_ gnd vdd FILL
XFILL_0__1417_ gnd vdd FILL
XFILL_2__946_ gnd vdd FILL
XFILL_0__1590_ gnd vdd FILL
XFILL_0__1170_ gnd vdd FILL
X_920_ MulH_i _712_ vdd gnd INVX2
XFILL_1__1751_ gnd vdd FILL
XFILL_1__1331_ gnd vdd FILL
X_1186_ _719_ _87_ _232_ _278_ vdd gnd NAND3X1
XFILL_1__968_ gnd vdd FILL
XFILL_2__1820_ gnd vdd FILL
XFILL85950x18150 gnd vdd FILL
XFILL_0__1646_ gnd vdd FILL
XFILL_0__1226_ gnd vdd FILL
XFILL_1__1807_ gnd vdd FILL
XFILL_1__1560_ gnd vdd FILL
XFILL_1__1140_ gnd vdd FILL
XFILL_0__1875_ gnd vdd FILL
XFILL_0__1455_ gnd vdd FILL
XFILL_0__1035_ gnd vdd FILL
XFILL_1__1616_ gnd vdd FILL
XFILL_0__1264_ gnd vdd FILL
XFILL_1__1845_ gnd vdd FILL
XFILL_1__1425_ gnd vdd FILL
XFILL_1__1005_ gnd vdd FILL
XFILL_0__1493_ gnd vdd FILL
XFILL_0__1073_ gnd vdd FILL
XFILL_1__1234_ gnd vdd FILL
X_1089_ _167_ _171_ _175_ _181_ vdd gnd NAND3X1
XFILL_0__1549_ gnd vdd FILL
XFILL_0__1129_ gnd vdd FILL
X_1721_ alu_op_2_bF$buf0 BI[1] _858_ _892_ vdd gnd OAI21X1
X_1301_ _391_ _388_ _392_ vdd gnd NOR2X1
XFILL_1__1883_ gnd vdd FILL
XFILL_1__1463_ gnd vdd FILL
XFILL_1__1043_ gnd vdd FILL
XFILL_0__1778_ gnd vdd FILL
XFILL_0__1358_ gnd vdd FILL
XFILL_1__1519_ gnd vdd FILL
XFILL86850x32550 gnd vdd FILL
X_1530_ _275_ _252_ _274_ _618_ vdd gnd OAI21X1
X_1110_ _191_ _201_ _200_ _202_ vdd gnd NAND3X1
XFILL_1__1692_ gnd vdd FILL
XFILL_1__1272_ gnd vdd FILL
XFILL_2__1761_ gnd vdd FILL
XFILL_0__1587_ gnd vdd FILL
XFILL_0__1167_ gnd vdd FILL
XFILL_1__1748_ gnd vdd FILL
XFILL_1__1328_ gnd vdd FILL
XFILL_1__1081_ gnd vdd FILL
XFILL_0__1396_ gnd vdd FILL
X_1815_ _784_ _787_ _788_ vdd gnd NAND2X1
XFILL_1__1557_ gnd vdd FILL
XFILL_1__1137_ gnd vdd FILL
XFILL_1__930_ gnd vdd FILL
X_1624_ ABCmd_i[2] LoadA_i _697_ vdd gnd NAND2X1
X_1204_ _291_ _295_ _294_ _296_ vdd gnd NAND3X1
XFILL_0__952_ gnd vdd FILL
X_955_ _39_ _41_ _29_ _47_ vdd gnd AOI21X1
XFILL_1__1786_ gnd vdd FILL
XFILL_1__1366_ gnd vdd FILL
XFILL_2__1435_ gnd vdd FILL
X_1853_ _801_ _790_ _823_ vdd gnd NOR2X1
X_1433_ _712_ _522_ _523_ vdd gnd NAND2X1
X_1013_ _94_ _95_ _96_ _105_ vdd gnd OAI21X1
XFILL_1__1595_ gnd vdd FILL
XFILL_1__1175_ gnd vdd FILL
X_1662_ _1_ vdd _0_[1] clk_bF$buf4 _919_[1] vdd 
+ gnd
+ DFFSR
X_1242_ _322_ _326_ _328_ _334_ vdd gnd NAND3X1
XFILL_0__990_ gnd vdd FILL
X_993_ _84_ _83_ _85_ vdd gnd NAND2X1
XFILL_0__1702_ gnd vdd FILL
XFILL_0__1299_ gnd vdd FILL
X_1718_ alu_op[0] _888_ _889_ vdd gnd NOR2X1
X_1891_ _919_[1] ACC_o[1] vdd gnd BUFX2
X_1471_ _559_ _556_ _560_ vdd gnd NAND2X1
X_1051_ _142_ _139_ _143_ vdd gnd NAND2X1
XFILL_0__1511_ gnd vdd FILL
XFILL_2__1109_ gnd vdd FILL
X_1527_ _603_ _614_ _613_ _615_ vdd gnd NAND3X1
X_1107_ _192_ _198_ _195_ _199_ vdd gnd NAND3X1
XFILL_1__1689_ gnd vdd FILL
XFILL_1__1269_ gnd vdd FILL
X_1280_ _267_ _370_ MulL_i _371_ vdd gnd OAI21X1
XFILL_0__1740_ gnd vdd FILL
XFILL_0__1320_ gnd vdd FILL
X_1756_ _918_ _727_ _732_ _733_ vdd gnd OAI21X1
X_1336_ _323_ _325_ _424_ _427_ vdd gnd AOI21X1
XFILL_1__1498_ gnd vdd FILL
XFILL_1__1078_ gnd vdd FILL
XFILL_1__1710_ gnd vdd FILL
X_1565_ MulH_i _647_ _651_ _652_ vdd gnd NAND3X1
X_1145_ _236_ _237_ vdd gnd INVX1
XFILL_1__927_ gnd vdd FILL
XFILL_0__1605_ gnd vdd FILL
XFILL_2__1376_ gnd vdd FILL
XFILL_0__949_ gnd vdd FILL
X_1794_ _730_ _911_ _769_ vdd gnd NOR2X1
X_1374_ _715_ _463_ _464_ vdd gnd NOR2X1
XFILL_0__1834_ gnd vdd FILL
XFILL_0__1414_ gnd vdd FILL
X_1183_ _250_ _234_ _249_ _275_ vdd gnd AOI21X1
XFILL_1__965_ gnd vdd FILL
XFILL_0__1643_ gnd vdd FILL
XFILL_0__1223_ gnd vdd FILL
XFILL_1__1804_ gnd vdd FILL
X_1659_ _8_ clk_bF$buf2 BCD vdd gnd DFFPOSX1
X_1239_ _329_ _330_ _328_ _331_ vdd gnd OAI21X1
XFILL_0__987_ gnd vdd FILL
XFILL85950x39750 gnd vdd FILL
XFILL_0__1872_ gnd vdd FILL
XFILL_0__1452_ gnd vdd FILL
XFILL_0__1032_ gnd vdd FILL
XFILL_1__1613_ gnd vdd FILL
X_1888_ CO _855_ _856_ vdd gnd NAND2X1
X_1468_ _490_ _493_ _495_ _557_ vdd gnd AOI21X1
X_1048_ _128_ _127_ _126_ _140_ vdd gnd NAND3X1
XFILL_0__1508_ gnd vdd FILL
XFILL_0__1261_ gnd vdd FILL
XFILL_1__1842_ gnd vdd FILL
XFILL_1__1422_ gnd vdd FILL
XFILL_1__1002_ gnd vdd FILL
X_1697_ BI[0] _869_ vdd gnd INVX1
X_1277_ _712_ _368_ _369_ vdd gnd NAND2X1
XFILL_0__1737_ gnd vdd FILL
XFILL_0__1317_ gnd vdd FILL
XFILL86550x10950 gnd vdd FILL
XFILL_0__1490_ gnd vdd FILL
XFILL_0__1070_ gnd vdd FILL
XFILL_1__1651_ gnd vdd FILL
XFILL_1__1231_ gnd vdd FILL
X_1086_ _161_ _177_ _165_ _178_ vdd gnd NAND3X1
XFILL_0__1546_ gnd vdd FILL
XFILL_0__1126_ gnd vdd FILL
XFILL_1__1707_ gnd vdd FILL
XFILL_1__1880_ gnd vdd FILL
XFILL_1__1460_ gnd vdd FILL
XFILL_1__1040_ gnd vdd FILL
XFILL_0__1775_ gnd vdd FILL
XFILL_0__1355_ gnd vdd FILL
XFILL_1__1516_ gnd vdd FILL
XFILL_0__1584_ gnd vdd FILL
XFILL_0__1164_ gnd vdd FILL
XFILL_1__1745_ gnd vdd FILL
XFILL_1__1325_ gnd vdd FILL
XFILL_0__1393_ gnd vdd FILL
X_1812_ _784_ _785_ vdd gnd INVX1
XFILL_1__1554_ gnd vdd FILL
XFILL_1__1134_ gnd vdd FILL
XFILL_0__1869_ gnd vdd FILL
XFILL_0__1449_ gnd vdd FILL
XFILL_0__1029_ gnd vdd FILL
X_1621_ LoadA_i _43_ _695_ _10_ vdd gnd OAI21X1
X_1201_ _116_ _174_ _171_ _167_ _293_ vdd 
+ gnd
+ AOI22X1
X_952_ MUL_bF$buf0 BI[4] _44_ vdd gnd NAND2X1
XFILL_1__1783_ gnd vdd FILL
XFILL_1__1363_ gnd vdd FILL
XFILL_2__1852_ gnd vdd FILL
XFILL_0__1258_ gnd vdd FILL
XFILL_1__1839_ gnd vdd FILL
XFILL_1__1419_ gnd vdd FILL
X_1850_ ACC[0] _770_ _820_ vdd gnd NOR2X1
X_1430_ Flag_i ACC[2] _520_ vdd gnd NOR2X1
X_1010_ _91_ _98_ _101_ _102_ vdd gnd NAND3X1
XFILL_1__1592_ gnd vdd FILL
XFILL_1__1172_ gnd vdd FILL
XFILL_0__1487_ gnd vdd FILL
XFILL_0__1067_ gnd vdd FILL
XFILL_1__1648_ gnd vdd FILL
XFILL_1__1228_ gnd vdd FILL
X_990_ _58_ _61_ _49_ _82_ vdd gnd AOI21X1
XFILL_2__1050_ gnd vdd FILL
XFILL_0__1296_ gnd vdd FILL
X_1715_ AI[1] BI[1] _864_ _886_ vdd gnd NAND3X1
XFILL_1__1877_ gnd vdd FILL
XFILL_1__1457_ gnd vdd FILL
XFILL_1__1037_ gnd vdd FILL
XFILL86250x7350 gnd vdd FILL
X_1524_ _560_ _512_ _612_ vdd gnd NOR2X1
X_1104_ AI[1] _134_ _196_ vdd gnd NAND2X1
XFILL_1__1686_ gnd vdd FILL
XFILL_1__1266_ gnd vdd FILL
XFILL_2__1755_ gnd vdd FILL
X_1753_ _729_ _728_ _918_ _730_ vdd gnd MUX2X1
X_1333_ _318_ _320_ _424_ vdd gnd AND2X2
XFILL_1__1495_ gnd vdd FILL
XFILL_1__1075_ gnd vdd FILL
X_1809_ alu_op_2_bF$buf3 BI[5] _781_ _782_ vdd gnd AOI21X1
X_1562_ _613_ _614_ _603_ _649_ vdd gnd AOI21X1
X_1142_ _42_ _228_ _227_ _234_ vdd gnd NAND3X1
XFILL_1__924_ gnd vdd FILL
XFILL_0__1602_ gnd vdd FILL
XFILL_0__1199_ gnd vdd FILL
X_1618_ LoadCmd_i ABCmd_i[7] _694_ vdd gnd NAND2X1
XFILL_0__946_ gnd vdd FILL
X_949_ _34_ _40_ _30_ _41_ vdd gnd OAI21X1
X_1791_ _877_ _765_ _763_ _766_ vdd gnd OAI21X1
X_1371_ _460_ _461_ vdd gnd INVX1
XFILL_0__1831_ gnd vdd FILL
XFILL_0__1411_ gnd vdd FILL
XFILL_2__1429_ gnd vdd FILL
XFILL_2__940_ gnd vdd FILL
X_1847_ _805_ _806_ _817_ _818_ vdd gnd OAI21X1
X_1427_ _264_ _269_ _517_ vdd gnd AND2X2
X_1007_ _92_ _93_ _99_ vdd gnd OR2X2
XFILL_1__1589_ gnd vdd FILL
XFILL_1__1169_ gnd vdd FILL
X_1180_ _246_ _272_ vdd gnd INVX1
XFILL_1__962_ gnd vdd FILL
XFILL_0__1640_ gnd vdd FILL
XFILL_0__1220_ gnd vdd FILL
XFILL_1__1801_ gnd vdd FILL
X_1656_ _5_ clk_bF$buf3 alu_op[3] vdd gnd DFFPOSX1
X_1236_ _184_ _179_ _165_ _328_ vdd gnd OAI21X1
XFILL_0__984_ gnd vdd FILL
X_987_ _78_ _76_ _79_ vdd gnd NAND2X1
XFILL_1__1398_ gnd vdd FILL
XFILL_1__1610_ gnd vdd FILL
X_1885_ _850_ _819_ _818_ _853_ vdd gnd NAND3X1
X_1465_ _526_ _552_ _553_ _554_ vdd gnd NAND3X1
X_1045_ _136_ _132_ _137_ vdd gnd NAND2X1
XFILL_0__1505_ gnd vdd FILL
XFILL_2__1696_ gnd vdd FILL
X_1694_ AI[0] alu_op[1] _866_ vdd gnd NAND2X1
X_1274_ HC _364_ _365_ _366_ vdd gnd OAI21X1
XFILL_0__1734_ gnd vdd FILL
XFILL_0__1314_ gnd vdd FILL
X_1083_ _116_ _174_ _175_ vdd gnd NAND2X1
XFILL_0__1543_ gnd vdd FILL
XFILL_0__1123_ gnd vdd FILL
XFILL_1__1704_ gnd vdd FILL
X_1559_ _644_ _645_ _646_ vdd gnd NAND2X1
X_1139_ _66_ _62_ _85_ _231_ vdd gnd NAND3X1
XFILL_0__1772_ gnd vdd FILL
XFILL_0__1352_ gnd vdd FILL
XFILL_1__1513_ gnd vdd FILL
X_1788_ _762_ _761_ _758_ _763_ vdd gnd OAI21X1
X_1368_ _457_ _458_ vdd gnd INVX1
XFILL_0__1828_ gnd vdd FILL
XFILL_0__1408_ gnd vdd FILL
XFILL_0__1581_ gnd vdd FILL
XFILL_0__1161_ gnd vdd FILL
XFILL85950x25350 gnd vdd FILL
XFILL_1__1742_ gnd vdd FILL
XFILL_1__1322_ gnd vdd FILL
X_1597_ alu_op[0] _680_ vdd gnd INVX1
X_1177_ _268_ _67_ _263_ _269_ vdd gnd OAI21X1
XFILL_1__959_ gnd vdd FILL
XFILL_0__1637_ gnd vdd FILL
XFILL_0__1217_ gnd vdd FILL
XFILL_0__1390_ gnd vdd FILL
XFILL_1__1551_ gnd vdd FILL
XFILL_1__1131_ gnd vdd FILL
XFILL_2__1200_ gnd vdd FILL
XFILL_0__1866_ gnd vdd FILL
XFILL_0__1446_ gnd vdd FILL
XFILL_0__1026_ gnd vdd FILL
XFILL_1__1607_ gnd vdd FILL
XFILL_1__1780_ gnd vdd FILL
XFILL_1__1360_ gnd vdd FILL
XFILL_1__997_ gnd vdd FILL
XFILL_0__1255_ gnd vdd FILL
XFILL_1__1836_ gnd vdd FILL
XFILL_1__1416_ gnd vdd FILL
XFILL_0__1484_ gnd vdd FILL
XFILL_0__1064_ gnd vdd FILL
XFILL_1__1645_ gnd vdd FILL
XFILL_1__1225_ gnd vdd FILL
XFILL_0__1293_ gnd vdd FILL
X_1712_ _876_ _874_ _883_ vdd gnd NOR2X1
XFILL_1__1874_ gnd vdd FILL
XFILL_1__1454_ gnd vdd FILL
XFILL_1__1034_ gnd vdd FILL
XFILL_0__1769_ gnd vdd FILL
XFILL_0__1349_ gnd vdd FILL
X_1521_ _453_ _359_ _608_ _609_ vdd gnd OAI21X1
X_1101_ _108_ _112_ _111_ _193_ vdd gnd AOI21X1
XFILL_1__1263_ gnd vdd FILL
XFILL_0__1578_ gnd vdd FILL
XFILL_0__1158_ gnd vdd FILL
XFILL_1__1739_ gnd vdd FILL
XFILL_1__1319_ gnd vdd FILL
X_1750_ alu_op_2_bF$buf1 BI[2] _726_ _727_ vdd gnd AOI21X1
X_1330_ _409_ _413_ _420_ _421_ vdd gnd AOI21X1
XFILL86550x18150 gnd vdd FILL
XFILL_1__1492_ gnd vdd FILL
XFILL_1__1072_ gnd vdd FILL
XFILL_2__1141_ gnd vdd FILL
XFILL_0__1387_ gnd vdd FILL
X_1806_ AI[5] _776_ _868_ _779_ vdd gnd OAI21X1
XFILL_1__1548_ gnd vdd FILL
XFILL_1__1128_ gnd vdd FILL
XFILL_1__921_ gnd vdd FILL
XFILL_2__1370_ gnd vdd FILL
XFILL_0__1196_ gnd vdd FILL
X_1615_ BCD _692_ vdd gnd INVX1
XFILL_0__943_ gnd vdd FILL
X_946_ _36_ _37_ _32_ _38_ vdd gnd OAI21X1
XFILL_1__1777_ gnd vdd FILL
XFILL_1__1357_ gnd vdd FILL
XFILL_2__1846_ gnd vdd FILL
X_1844_ _877_ _814_ _812_ _815_ vdd gnd OAI21X1
X_1424_ _513_ _456_ _514_ vdd gnd NAND2X1
X_1004_ MUL_bF$buf1 BI[2] AI[4] _96_ vdd gnd NAND3X1
XFILL_1__1586_ gnd vdd FILL
XFILL_1__1166_ gnd vdd FILL
X_1653_ _2_ clk_bF$buf3 alu_op[0] vdd gnd DFFPOSX1
X_1233_ _316_ _317_ _313_ _325_ vdd gnd OAI21X1
XFILL_0__981_ gnd vdd FILL
X_984_ _73_ _75_ _70_ _76_ vdd gnd OAI21X1
XFILL_1__1395_ gnd vdd FILL
X_1709_ shr _859_ _879_ _881_ vdd gnd OAI21X1
X_1882_ _848_ _849_ _850_ vdd gnd NAND2X1
X_1462_ _489_ _474_ _492_ _551_ vdd gnd OAI21X1
X_1042_ _715_ _133_ _134_ vdd gnd NOR2X1
XFILL_0__1502_ gnd vdd FILL
XFILL_0__1099_ gnd vdd FILL
X_1518_ _525_ _555_ _605_ _606_ vdd gnd OAI21X1
X_1691_ alu_op[0] _862_ _863_ vdd gnd NAND2X1
X_1271_ ACC[0] Flag_i _363_ vdd gnd NOR2X1
XFILL_0__1731_ gnd vdd FILL
XFILL_0__1311_ gnd vdd FILL
XFILL_2__1082_ gnd vdd FILL
X_1747_ AI[2] _914_ _868_ _917_ vdd gnd OAI21X1
X_1327_ _417_ _26_ _314_ _418_ vdd gnd OAI21X1
XFILL_1__1489_ gnd vdd FILL
XFILL_1__1069_ gnd vdd FILL
X_1080_ _110_ _168_ _171_ _172_ vdd gnd OAI21X1
XFILL_0__1540_ gnd vdd FILL
XFILL_0__1120_ gnd vdd FILL
XFILL_1__1701_ gnd vdd FILL
X_1556_ _642_ _640_ _643_ vdd gnd NAND2X1
X_1136_ _222_ _223_ _224_ _228_ vdd gnd NAND3X1
XFILL_1__1298_ gnd vdd FILL
XFILL_2__1787_ gnd vdd FILL
XFILL_1__1510_ gnd vdd FILL
X_1785_ AI[4] _759_ _760_ vdd gnd NAND2X1
X_1365_ _442_ _454_ _455_ vdd gnd NAND2X1
XFILL_0__1825_ gnd vdd FILL
XFILL_0__1405_ gnd vdd FILL
XFILL86250x64950 gnd vdd FILL
X_1594_ _627_ AN MulH_i _679_ vdd gnd AOI21X1
X_1174_ BI[0] _717_ _266_ vdd gnd NAND2X1
XFILL_1__956_ gnd vdd FILL
XFILL85950x46950 gnd vdd FILL
XFILL_0__1634_ gnd vdd FILL
XFILL_0__1214_ gnd vdd FILL
XFILL_0__978_ gnd vdd FILL
XFILL_0__1863_ gnd vdd FILL
XFILL_0__1443_ gnd vdd FILL
XFILL_0__1023_ gnd vdd FILL
XFILL_2__972_ gnd vdd FILL
XFILL_1__1604_ gnd vdd FILL
X_1879_ _845_ _846_ _847_ vdd gnd NAND2X1
X_1459_ _543_ _546_ _548_ vdd gnd NAND2X1
X_1039_ _70_ _74_ _73_ _131_ vdd gnd AOI21X1
XFILL_1__994_ gnd vdd FILL
XFILL_0__1252_ gnd vdd FILL
XFILL_1__1833_ gnd vdd FILL
XFILL_1__1413_ gnd vdd FILL
X_1688_ shr _859_ _860_ vdd gnd NOR2X1
X_1268_ _351_ _347_ _360_ vdd gnd NAND2X1
XFILL_0__1728_ gnd vdd FILL
XFILL_0__1308_ gnd vdd FILL
XFILL_0__1481_ gnd vdd FILL
XFILL_0__1061_ gnd vdd FILL
XFILL_1__1642_ gnd vdd FILL
XFILL_1__1222_ gnd vdd FILL
X_1497_ _584_ _581_ _585_ vdd gnd OR2X2
X_1077_ BI[4] _169_ vdd gnd INVX1
XFILL_0__1537_ gnd vdd FILL
XFILL_0__1117_ gnd vdd FILL
XFILL_0__1290_ gnd vdd FILL
XFILL_1__1871_ gnd vdd FILL
XFILL_1__1451_ gnd vdd FILL
XFILL_1__1031_ gnd vdd FILL
XFILL_2__1520_ gnd vdd FILL
XFILL_0__1766_ gnd vdd FILL
XFILL_0__1346_ gnd vdd FILL
XFILL_1__1507_ gnd vdd FILL
XFILL_1__1260_ gnd vdd FILL
XFILL_0__1575_ gnd vdd FILL
XFILL_0__1155_ gnd vdd FILL
XFILL_1__1736_ gnd vdd FILL
XFILL_1__1316_ gnd vdd FILL
XFILL_0__1384_ gnd vdd FILL
XFILL86550x39750 gnd vdd FILL
X_1803_ _864_ BI[5] _776_ vdd gnd AND2X2
XFILL_1__1545_ gnd vdd FILL
XFILL_1__1125_ gnd vdd FILL
XFILL_0__1193_ gnd vdd FILL
X_1612_ shr _690_ vdd gnd INVX1
XFILL_0__940_ gnd vdd FILL
X_943_ _34_ _35_ vdd gnd INVX1
XFILL_1__1774_ gnd vdd FILL
XFILL_1__1354_ gnd vdd FILL
XFILL_0__1249_ gnd vdd FILL
X_1841_ _811_ _810_ _807_ _812_ vdd gnd OAI21X1
X_1421_ _503_ _506_ _510_ _511_ vdd gnd NAND3X1
X_1001_ MUL_bF$buf1 BI[0] AI[6] _93_ vdd gnd NAND3X1
XFILL_1__1583_ gnd vdd FILL
XFILL_1__1163_ gnd vdd FILL
XFILL_0__1478_ gnd vdd FILL
XFILL_0__1058_ gnd vdd FILL
XFILL_1__1639_ gnd vdd FILL
XFILL_1__1219_ gnd vdd FILL
X_1650_ LoadB_i _133_ _710_ _24_ vdd gnd OAI21X1
X_1230_ _319_ _312_ _321_ _322_ vdd gnd NAND3X1
X_981_ _71_ _72_ _73_ vdd gnd NOR2X1
XFILL_1__1392_ gnd vdd FILL
XFILL_2__1461_ gnd vdd FILL
XFILL_0__1287_ gnd vdd FILL
X_1706_ _877_ _876_ _874_ _878_ vdd gnd OAI21X1
XFILL_1__1868_ gnd vdd FILL
XFILL_1__1448_ gnd vdd FILL
XFILL_1__1028_ gnd vdd FILL
XFILL_0__1096_ gnd vdd FILL
X_1515_ _602_ _601_ _603_ vdd gnd NAND2X1
XFILL_1__1257_ gnd vdd FILL
X_1744_ alu_op[0] _913_ _914_ vdd gnd NOR2X1
X_1324_ _326_ _324_ _414_ _415_ vdd gnd AOI21X1
XFILL_1__1486_ gnd vdd FILL
XFILL_1__1066_ gnd vdd FILL
XFILL_2__1135_ gnd vdd FILL
X_1553_ _633_ _639_ _640_ vdd gnd NAND2X1
X_1133_ _224_ _223_ _222_ _225_ vdd gnd AOI21X1
XFILL_1__1295_ gnd vdd FILL
XFILL_1_CLKBUF1_insert0 gnd vdd FILL
XFILL_1_CLKBUF1_insert1 gnd vdd FILL
XFILL_1_CLKBUF1_insert2 gnd vdd FILL
XFILL_1_CLKBUF1_insert3 gnd vdd FILL
XFILL_1_CLKBUF1_insert4 gnd vdd FILL
X_1609_ CI _688_ vdd gnd INVX1
XFILL_0__937_ gnd vdd FILL
X_1782_ _755_ _748_ _756_ _757_ vdd gnd AOI21X1
X_1362_ _449_ _452_ _374_ _0_[1] vdd gnd OAI21X1
XFILL_0__1822_ gnd vdd FILL
XFILL_0__1402_ gnd vdd FILL
X_1838_ _u_ALU8.AI7_ _808_ _809_ vdd gnd NAND2X1
X_1418_ _439_ _445_ _507_ _508_ vdd gnd NAND3X1
X_1591_ _219_ _354_ _676_ vdd gnd NOR2X1
X_1171_ _242_ _240_ _263_ vdd gnd NAND2X1
XFILL_1__953_ gnd vdd FILL
XFILL_0__1631_ gnd vdd FILL
XFILL_0__1211_ gnd vdd FILL
X_1647_ ABCmd_i[5] LoadB_i _709_ vdd gnd NAND2X1
X_1227_ _313_ _318_ _319_ vdd gnd NAND2X1
XFILL_0__975_ gnd vdd FILL
X_978_ _69_ _70_ vdd gnd INVX1
XFILL_1__1389_ gnd vdd FILL
XFILL_0__1860_ gnd vdd FILL
XFILL_0__1440_ gnd vdd FILL
XFILL_0__1020_ gnd vdd FILL
XFILL_1__1601_ gnd vdd FILL
X_1876_ _842_ _816_ _844_ vdd gnd AND2X2
X_1456_ _542_ _545_ vdd gnd INVX1
X_1036_ _102_ _106_ _123_ _128_ vdd gnd NAND3X1
XFILL_1__1198_ gnd vdd FILL
XFILL_1__991_ gnd vdd FILL
XFILL_1__1830_ gnd vdd FILL
XFILL_1__1410_ gnd vdd FILL
X_1685_ alu_op_2_bF$buf1 _857_ vdd gnd INVX1
X_1265_ _144_ _258_ _256_ _357_ vdd gnd NAND3X1
XFILL_0__1725_ gnd vdd FILL
XFILL_0__1305_ gnd vdd FILL
XFILL_2__1076_ gnd vdd FILL
X_1494_ BI[6] _405_ _582_ vdd gnd NAND2X1
X_1074_ MUL_bF$buf5 BI[5] AI[2] _166_ vdd gnd NAND3X1
XFILL_0__1534_ gnd vdd FILL
XFILL_0__1114_ gnd vdd FILL
XFILL86250x50550 gnd vdd FILL
XBUFX2_insert5 MUL MUL_bF$buf5 vdd gnd BUFX2
XBUFX2_insert6 MUL MUL_bF$buf4 vdd gnd BUFX2
XBUFX2_insert7 MUL MUL_bF$buf3 vdd gnd BUFX2
XBUFX2_insert8 MUL MUL_bF$buf2 vdd gnd BUFX2
XBUFX2_insert9 MUL MUL_bF$buf1 vdd gnd BUFX2
XFILL_0__1763_ gnd vdd FILL
XFILL_0__1343_ gnd vdd FILL
XFILL_1__1504_ gnd vdd FILL
X_1779_ _749_ _750_ _753_ _754_ vdd gnd NAND3X1
X_1359_ _360_ _359_ _351_ _450_ vdd gnd OAI21X1
XFILL_0__1819_ gnd vdd FILL
XFILL_0__1572_ gnd vdd FILL
XFILL_0__1152_ gnd vdd FILL
XFILL_1__1733_ gnd vdd FILL
XFILL_1__1313_ gnd vdd FILL
X_1588_ _658_ _673_ _0_[6] vdd gnd NAND2X1
X_1168_ _247_ _260_ vdd gnd INVX1
XFILL_0__1628_ gnd vdd FILL
XFILL_0__1208_ gnd vdd FILL
XFILL_0__1381_ gnd vdd FILL
X_1800_ _768_ _773_ ACC[4] vdd gnd NOR2X1
XFILL_1__1542_ gnd vdd FILL
XFILL_1__1122_ gnd vdd FILL
X_1397_ _413_ _416_ _486_ _487_ vdd gnd AOI21X1
XFILL_2__1611_ gnd vdd FILL
XFILL_0__1857_ gnd vdd FILL
XFILL_0__1437_ gnd vdd FILL
XFILL_0__1017_ gnd vdd FILL
XFILL_2__966_ gnd vdd FILL
XFILL_0__1190_ gnd vdd FILL
X_940_ MUL_bF$buf0 BI[0] AI[4] _32_ vdd gnd NAND3X1
XFILL_1__1771_ gnd vdd FILL
XFILL_1__1351_ gnd vdd FILL
XFILL_1__988_ gnd vdd FILL
XFILL_0__1246_ gnd vdd FILL
XFILL_1__1827_ gnd vdd FILL
XFILL_1__1407_ gnd vdd FILL
XFILL_1__1580_ gnd vdd FILL
XFILL_1__1160_ gnd vdd FILL
XFILL_0__1895_ gnd vdd FILL
XFILL_0__1475_ gnd vdd FILL
XFILL_0__1055_ gnd vdd FILL
XFILL_1__1636_ gnd vdd FILL
XFILL_1__1216_ gnd vdd FILL
XFILL_0__1284_ gnd vdd FILL
X_1703_ BI[0] alu_op_2_bF$buf1 _858_ _875_ vdd gnd OAI21X1
XFILL_1__1865_ gnd vdd FILL
XFILL_1__1445_ gnd vdd FILL
XFILL_1__1025_ gnd vdd FILL
XFILL_2__1514_ gnd vdd FILL
XFILL_0__1093_ gnd vdd FILL
X_1512_ _596_ _599_ _600_ vdd gnd NAND2X1
XFILL_1__1254_ gnd vdd FILL
XFILL86550x25350 gnd vdd FILL
XFILL_0__1569_ gnd vdd FILL
XFILL_0__1149_ gnd vdd FILL
X_1741_ _910_ _905_ _906_ _911_ vdd gnd OAI21X1
X_1321_ _408_ _316_ _412_ vdd gnd NOR2X1
XFILL_1__1483_ gnd vdd FILL
XFILL_1__1063_ gnd vdd FILL
XFILL_0__1798_ gnd vdd FILL
XFILL_0__1378_ gnd vdd FILL
XFILL_1__1539_ gnd vdd FILL
XFILL_1__1119_ gnd vdd FILL
X_1550_ _592_ _636_ _637_ vdd gnd OR2X2
X_1130_ _221_ _27_ _722_ _222_ vdd gnd AOI21X1
XFILL_1__1292_ gnd vdd FILL
XFILL_2__1781_ gnd vdd FILL
XFILL_0__1187_ gnd vdd FILL
X_1606_ alu_op[3] _686_ vdd gnd INVX1
XFILL_0__934_ gnd vdd FILL
X_937_ _724_ _28_ _723_ _29_ vdd gnd OAI21X1
XFILL_1__1768_ gnd vdd FILL
XFILL_1__1348_ gnd vdd FILL
XFILL86850x68550 gnd vdd FILL
X_1835_ _786_ _783_ _800_ _806_ vdd gnd AOI21X1
X_1415_ _496_ _501_ _459_ _505_ vdd gnd OAI21X1
XFILL_1__1577_ gnd vdd FILL
XFILL_1__1157_ gnd vdd FILL
XFILL_1__950_ gnd vdd FILL
XFILL_2__1226_ gnd vdd FILL
X_1644_ ABCmd_i[4] LoadB_i _707_ vdd gnd NAND2X1
X_1224_ _314_ _315_ _316_ vdd gnd NOR2X1
XFILL_0__972_ gnd vdd FILL
X_975_ MUL_bF$buf5 AI[0] _67_ vdd gnd NAND2X1
XFILL_1__1386_ gnd vdd FILL
XFILL_2__1455_ gnd vdd FILL
X_1873_ AN _839_ _840_ _841_ vdd gnd AOI21X1
X_1453_ _541_ _540_ _542_ vdd gnd NAND2X1
X_1033_ _120_ _124_ _90_ _125_ vdd gnd AOI21X1
XFILL_1__1195_ gnd vdd FILL
X_1509_ _593_ _546_ _597_ vdd gnd OR2X2
X_1682_ _23_ clk_bF$buf1 BI[5] vdd gnd DFFPOSX1
X_1262_ _218_ _354_ vdd gnd INVX1
XFILL_0__1722_ gnd vdd FILL
XFILL_0__1302_ gnd vdd FILL
X_1738_ _908_ _897_ _909_ vdd gnd NAND2X1
X_1318_ _316_ _408_ _407_ _403_ _409_ vdd 
+ gnd
+ OAI22X1
X_1491_ _529_ _578_ _532_ _579_ vdd gnd OAI21X1
X_1071_ _159_ _155_ _157_ _163_ vdd gnd NAND3X1
XFILL_0__1531_ gnd vdd FILL
XFILL_0__1111_ gnd vdd FILL
X_1547_ _u_ALU8.AI7_ _289_ _634_ vdd gnd NAND2X1
X_1127_ _217_ _214_ _145_ _219_ vdd gnd AOI21X1
XFILL_1__1289_ gnd vdd FILL
XFILL_0__1760_ gnd vdd FILL
XFILL_0__1340_ gnd vdd FILL
XFILL_1__1501_ gnd vdd FILL
X_1776_ _751_ ACC[3] vdd gnd INVX1
X_1356_ _445_ _446_ _444_ _447_ vdd gnd NAND3X1
XFILL_1__1098_ gnd vdd FILL
XFILL_0__1816_ gnd vdd FILL
XFILL_2__1167_ gnd vdd FILL
XFILL_1__1730_ gnd vdd FILL
XFILL_1__1310_ gnd vdd FILL
X_1585_ _661_ _671_ vdd gnd INVX1
X_1165_ _89_ _257_ vdd gnd INVX1
XFILL_1__947_ gnd vdd FILL
XFILL_0__1625_ gnd vdd FILL
XFILL_0__1205_ gnd vdd FILL
XFILL_2__1396_ gnd vdd FILL
XFILL_0__969_ gnd vdd FILL
X_1394_ _477_ _478_ _484_ vdd gnd AND2X2
XFILL_0__1854_ gnd vdd FILL
XFILL_0__1434_ gnd vdd FILL
XFILL_0__1014_ gnd vdd FILL
XFILL_1__985_ gnd vdd FILL
XFILL_0__1243_ gnd vdd FILL
XFILL_1__1824_ gnd vdd FILL
XFILL_1__1404_ gnd vdd FILL
X_1679_ _20_ clk_bF$buf3 BI[2] vdd gnd DFFPOSX1
X_1259_ _349_ _350_ _348_ _351_ vdd gnd NAND3X1
XFILL_0__1719_ gnd vdd FILL
XFILL_0__1892_ gnd vdd FILL
XFILL_0__1472_ gnd vdd FILL
XFILL_0__1052_ gnd vdd FILL
XFILL_1__1633_ gnd vdd FILL
XFILL_1__1213_ gnd vdd FILL
X_1488_ _528_ _548_ _554_ _576_ vdd gnd OAI21X1
X_1068_ _159_ _154_ _157_ _160_ vdd gnd NAND3X1
XFILL_2__1702_ gnd vdd FILL
XFILL_0__1528_ gnd vdd FILL
XFILL_0__1108_ gnd vdd FILL
XFILL_0__1281_ gnd vdd FILL
X_1700_ _868_ _871_ _872_ vdd gnd NAND2X1
XFILL_1__1862_ gnd vdd FILL
XFILL_1__1442_ gnd vdd FILL
XFILL_1__1022_ gnd vdd FILL
X_1297_ _307_ _310_ _304_ _388_ vdd gnd AOI21X1
XFILL_0__1757_ gnd vdd FILL
XFILL_0__1337_ gnd vdd FILL
XFILL_0__1090_ gnd vdd FILL
XFILL_1__1251_ gnd vdd FILL
XFILL_0__1566_ gnd vdd FILL
XFILL_0__1146_ gnd vdd FILL
XFILL_1__1727_ gnd vdd FILL
XFILL_1__1307_ gnd vdd FILL
XFILL86550x46950 gnd vdd FILL
XFILL_1__1480_ gnd vdd FILL
XFILL_1__1060_ gnd vdd FILL
XFILL_0__1795_ gnd vdd FILL
XFILL_0__1375_ gnd vdd FILL
XFILL_1__1536_ gnd vdd FILL
XFILL_1__1116_ gnd vdd FILL
XFILL_2__1605_ gnd vdd FILL
XFILL_0__1184_ gnd vdd FILL
X_1603_ alu_op_2_bF$buf2 _684_ vdd gnd INVX1
XFILL_0__931_ gnd vdd FILL
X_934_ MUL_bF$buf2 BI[1] _26_ vdd gnd NAND2X1
XFILL_1__1765_ gnd vdd FILL
XFILL_1__1345_ gnd vdd FILL
X_1832_ _803_ _802_ _804_ vdd gnd NAND2X1
X_1412_ _496_ _501_ _495_ _502_ vdd gnd OAI21X1
XFILL_1__1574_ gnd vdd FILL
XFILL_1__1154_ gnd vdd FILL
XFILL_0__1889_ gnd vdd FILL
XFILL_0__1469_ gnd vdd FILL
XFILL_0__1049_ gnd vdd FILL
X_1641_ LoadB_i _268_ _705_ _20_ vdd gnd OAI21X1
X_1221_ _159_ _155_ _152_ _313_ vdd gnd AOI21X1
X_972_ _59_ _60_ _57_ _64_ vdd gnd OAI21X1
XFILL_1__1383_ gnd vdd FILL
XFILL_2__1872_ gnd vdd FILL
XFILL_0__1698_ gnd vdd FILL
XFILL_0__1278_ gnd vdd FILL
XFILL_1__1859_ gnd vdd FILL
XFILL_1__1439_ gnd vdd FILL
XFILL_1__1019_ gnd vdd FILL
X_1870_ _826_ _827_ _838_ CO vdd gnd OAI21X1
X_1450_ _u_ALU8.AI7_ _713_ _539_ vdd gnd NAND2X1
X_1030_ _101_ _98_ _91_ _122_ vdd gnd AOI21X1
XFILL_1__1192_ gnd vdd FILL
XFILL_0__1087_ gnd vdd FILL
X_1506_ _546_ _593_ _594_ vdd gnd NOR2X1
XFILL_1__1248_ gnd vdd FILL
X_1735_ _877_ _893_ _891_ _906_ vdd gnd OAI21X1
X_1315_ BI[3] _398_ _405_ _406_ vdd gnd NAND3X1
XFILL_1__1897_ gnd vdd FILL
XFILL_1__1477_ gnd vdd FILL
XFILL_1__1057_ gnd vdd FILL
XFILL_2__1546_ gnd vdd FILL
X_1544_ _581_ _631_ vdd gnd INVX1
X_1124_ _204_ _208_ _147_ _216_ vdd gnd AOI21X1
XFILL86850x54150 gnd vdd FILL
XFILL_1__1286_ gnd vdd FILL
XFILL_0__928_ gnd vdd FILL
X_1773_ _736_ _737_ _748_ _749_ vdd gnd OAI21X1
X_1353_ _343_ _443_ _337_ _444_ vdd gnd OAI21X1
XFILL_1__1095_ gnd vdd FILL
XFILL_0__1813_ gnd vdd FILL
X_1829_ _800_ _801_ vdd gnd INVX1
X_1409_ _413_ _499_ vdd gnd INVX1
X_1582_ _661_ _660_ _667_ _668_ vdd gnd OAI21X1
X_1162_ _88_ _253_ _719_ _254_ vdd gnd OAI21X1
XFILL_1__944_ gnd vdd FILL
XFILL_0__1622_ gnd vdd FILL
XFILL_0__1202_ gnd vdd FILL
X_1638_ ABCmd_i[1] LoadB_i _704_ vdd gnd NAND2X1
X_1218_ _309_ _54_ _168_ _310_ vdd gnd OAI21X1
XFILL_0__966_ gnd vdd FILL
X_969_ _59_ _60_ _56_ _61_ vdd gnd OAI21X1
X_1391_ _480_ _44_ _478_ _481_ vdd gnd OAI21X1
XFILL_0__1851_ gnd vdd FILL
XFILL_0__1431_ gnd vdd FILL
XFILL_0__1011_ gnd vdd FILL
X_1867_ _832_ _836_ vdd gnd INVX1
X_1447_ _535_ _536_ vdd gnd INVX1
X_1027_ _118_ _114_ _119_ vdd gnd NAND2X1
XFILL_1__1189_ gnd vdd FILL
XFILL_1__982_ gnd vdd FILL
XFILL_0__1240_ gnd vdd FILL
XFILL_1__1821_ gnd vdd FILL
XFILL_1__1401_ gnd vdd FILL
X_1676_ _17_ clk_bF$buf1 _u_ALU8.AI7_ vdd gnd DFFPOSX1
X_1256_ _132_ _215_ _213_ _348_ vdd gnd OAI21X1
XFILL_0__1716_ gnd vdd FILL
XFILL_2__1487_ gnd vdd FILL
XFILL_1__1630_ gnd vdd FILL
XFILL_1__1210_ gnd vdd FILL
X_1485_ Flag_i _572_ _573_ _574_ vdd gnd AOI21X1
X_1065_ _150_ _151_ _157_ vdd gnd OR2X2
XFILL_0__1525_ gnd vdd FILL
XFILL_0__1105_ gnd vdd FILL
X_1294_ _302_ _305_ _308_ _385_ vdd gnd OAI21X1
XFILL_0__1754_ gnd vdd FILL
XFILL_0__1334_ gnd vdd FILL
XFILL_0__1563_ gnd vdd FILL
XFILL_0__1143_ gnd vdd FILL
XFILL_1__1724_ gnd vdd FILL
XFILL_1__1304_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert11 gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
XFILL_0_BUFX2_insert13 gnd vdd FILL
X_1579_ _663_ _662_ _665_ vdd gnd NAND2X1
XFILL_0_BUFX2_insert14 gnd vdd FILL
X_1159_ _234_ _249_ _250_ _251_ vdd gnd NAND3X1
XFILL_0__1619_ gnd vdd FILL
XFILL_0__1792_ gnd vdd FILL
XFILL_0__1372_ gnd vdd FILL
XFILL_1__1533_ gnd vdd FILL
XFILL_1__1113_ gnd vdd FILL
X_1388_ MUL_bF$buf3 _u_ALU8.AI7_ BI[3] _478_ vdd gnd NAND3X1
XFILL_0__1848_ gnd vdd FILL
XFILL_0__1428_ gnd vdd FILL
XFILL_0__1008_ gnd vdd FILL
XFILL_0__1181_ gnd vdd FILL
X_1600_ alu_op[1] _682_ vdd gnd INVX1
X_931_ _722_ _723_ vdd gnd INVX1
XFILL_1__1762_ gnd vdd FILL
XFILL_1__1342_ gnd vdd FILL
X_1197_ _715_ _288_ _289_ vdd gnd NOR2X1
XFILL_1__979_ gnd vdd FILL
XFILL_0__1237_ gnd vdd FILL
XFILL_1__1818_ gnd vdd FILL
XFILL_1__1571_ gnd vdd FILL
XFILL_1__1151_ gnd vdd FILL
XFILL_2__1220_ gnd vdd FILL
XFILL_0__1886_ gnd vdd FILL
XFILL_0__1466_ gnd vdd FILL
XFILL_0__1046_ gnd vdd FILL
XFILL_1__1627_ gnd vdd FILL
XFILL_1__1207_ gnd vdd FILL
XFILL_1__1380_ gnd vdd FILL
XFILL_0__1695_ gnd vdd FILL
XFILL_0__1275_ gnd vdd FILL
XFILL_1__1856_ gnd vdd FILL
XFILL_1__1436_ gnd vdd FILL
XFILL_1__1016_ gnd vdd FILL
XFILL_0__1084_ gnd vdd FILL
XFILL86550x32550 gnd vdd FILL
X_1503_ _590_ _591_ vdd gnd INVX1
XFILL_1__1245_ gnd vdd FILL
X_1732_ _868_ _871_ _902_ _903_ vdd gnd NAND3X1
X_1312_ _400_ _402_ _397_ _403_ vdd gnd AOI21X1
XFILL_1__1894_ gnd vdd FILL
XFILL_1__1474_ gnd vdd FILL
XFILL_1__1054_ gnd vdd FILL
XFILL_0__1789_ gnd vdd FILL
XFILL_0__1369_ gnd vdd FILL
X_1541_ _627_ ACC[5] _628_ vdd gnd AND2X2
X_1121_ _211_ _210_ _212_ _213_ vdd gnd NAND3X1
XFILL_1__1283_ gnd vdd FILL
XFILL_0__1598_ gnd vdd FILL
XFILL_0__1178_ gnd vdd FILL
XFILL86850x75750 gnd vdd FILL
XFILL_0__925_ gnd vdd FILL
X_928_ MUL_bF$buf2 BI[0] AI[3] _720_ vdd gnd NAND3X1
XFILL_1__1759_ gnd vdd FILL
XFILL_1__1339_ gnd vdd FILL
X_1770_ _877_ _745_ _743_ _746_ vdd gnd OAI21X1
X_1350_ _440_ _439_ _378_ _441_ vdd gnd AOI21X1
XFILL_1__1092_ gnd vdd FILL
XFILL_0__1810_ gnd vdd FILL
XFILL_2__1161_ gnd vdd FILL
X_1826_ alu_op_2_bF$buf2 BI[6] _797_ _798_ vdd gnd AOI21X1
X_1406_ _470_ _473_ _492_ _488_ _496_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1568_ gnd vdd FILL
XFILL_1__1148_ gnd vdd FILL
XFILL_1__941_ gnd vdd FILL
X_1635_ LoadA_i _417_ _702_ _17_ vdd gnd OAI21X1
X_1215_ _302_ _307_ vdd gnd INVX1
XFILL_0__963_ gnd vdd FILL
X_966_ _55_ _57_ _52_ _58_ vdd gnd NAND3X1
XFILL_1__1797_ gnd vdd FILL
XFILL_1__1377_ gnd vdd FILL
XFILL_2__1866_ gnd vdd FILL
X_1864_ _829_ _832_ _831_ _833_ vdd gnd NAND3X1
X_1444_ _476_ _481_ _483_ _533_ vdd gnd AOI21X1
X_1024_ _110_ _116_ vdd gnd INVX1
XFILL_1__1186_ gnd vdd FILL
X_1673_ _14_ clk_bF$buf2 AI[4] vdd gnd DFFPOSX1
X_1253_ _339_ _340_ _287_ _345_ vdd gnd OAI21X1
XFILL86250x150 gnd vdd FILL
XFILL_0__1713_ gnd vdd FILL
X_1729_ alu_op[1] _869_ alu_op[0] _900_ vdd gnd MUX2X1
X_1309_ _398_ _399_ _400_ vdd gnd OR2X2
X_1482_ _270_ _569_ _570_ _571_ vdd gnd AOI21X1
X_1062_ MUL_bF$buf1 BI[2] AI[5] _154_ vdd gnd NAND3X1
XFILL_0__1522_ gnd vdd FILL
XFILL_0__1102_ gnd vdd FILL
X_1538_ _617_ _624_ MulL_i _625_ vdd gnd OAI21X1
X_1118_ _137_ _125_ _141_ _210_ vdd gnd OAI21X1
X_1291_ AI[2] _289_ _382_ vdd gnd NAND2X1
XFILL_0__1751_ gnd vdd FILL
XFILL_0__1331_ gnd vdd FILL
X_1767_ _742_ _741_ _738_ _743_ vdd gnd OAI21X1
X_1347_ _430_ _437_ _379_ _438_ vdd gnd AOI21X1
XFILL_1__1089_ gnd vdd FILL
XFILL_0__1807_ gnd vdd FILL
XFILL_0__1560_ gnd vdd FILL
XFILL_0__1140_ gnd vdd FILL
XFILL_1__1721_ gnd vdd FILL
XFILL_1__1301_ gnd vdd FILL
X_1576_ _592_ _636_ _642_ _662_ vdd gnd OAI21X1
X_1156_ _235_ _245_ _244_ _248_ vdd gnd AOI21X1
XFILL_1__938_ gnd vdd FILL
XFILL_0__1616_ gnd vdd FILL
XFILL_1__1530_ gnd vdd FILL
XFILL85650x39750 gnd vdd FILL
XFILL_1__1110_ gnd vdd FILL
X_1385_ MUL_bF$buf3 AI[5] BI[5] _475_ vdd gnd NAND3X1
XFILL_0__1845_ gnd vdd FILL
XFILL_0__1425_ gnd vdd FILL
XFILL_0__1005_ gnd vdd FILL
X_1194_ _191_ _285_ _200_ _286_ vdd gnd OAI21X1
XFILL_1__976_ gnd vdd FILL
XFILL_0__1234_ gnd vdd FILL
XFILL_1__1815_ gnd vdd FILL
XFILL_0__998_ gnd vdd FILL
XFILL86250x10950 gnd vdd FILL
XFILL_0__1883_ gnd vdd FILL
XFILL_0__1463_ gnd vdd FILL
XFILL_0__1043_ gnd vdd FILL
XFILL_2__992_ gnd vdd FILL
XFILL_1__1624_ gnd vdd FILL
XFILL_1__1204_ gnd vdd FILL
X_1479_ _561_ _567_ _568_ vdd gnd NAND2X1
X_1059_ MUL_bF$buf5 BI[0] _u_ALU8.AI7_ _151_ vdd gnd NAND3X1
XFILL_0__1519_ gnd vdd FILL
XFILL_0__1692_ gnd vdd FILL
XFILL_0__1272_ gnd vdd FILL
XFILL_1__1853_ gnd vdd FILL
XFILL_1__1433_ gnd vdd FILL
XFILL_1__1013_ gnd vdd FILL
X_1288_ _378_ _379_ vdd gnd INVX1
XFILL_0__1748_ gnd vdd FILL
XFILL_0__1328_ gnd vdd FILL
XFILL_0__1081_ gnd vdd FILL
X_1500_ _417_ _182_ _587_ _588_ vdd gnd OAI21X1
XFILL_1__1242_ gnd vdd FILL
X_1097_ _161_ _165_ _184_ _189_ vdd gnd NAND3X1
XFILL_2__1311_ gnd vdd FILL
XFILL_0__1557_ gnd vdd FILL
XFILL_0__1137_ gnd vdd FILL
XFILL_1__1718_ gnd vdd FILL
XFILL_1__1891_ gnd vdd FILL
XFILL_1__1471_ gnd vdd FILL
XFILL_1__1051_ gnd vdd FILL
XFILL_2__1540_ gnd vdd FILL
XFILL_0__1786_ gnd vdd FILL
XFILL_0__1366_ gnd vdd FILL
XFILL_1__1527_ gnd vdd FILL
XFILL_1__1107_ gnd vdd FILL
XFILL_1__1280_ gnd vdd FILL
XFILL_0__1595_ gnd vdd FILL
XFILL_0__1175_ gnd vdd FILL
XFILL_0__922_ gnd vdd FILL
X_925_ _715_ _716_ _717_ vdd gnd NOR2X1
XFILL_1__1756_ gnd vdd FILL
XFILL_1__1336_ gnd vdd FILL
X_1823_ AI[6] _792_ _868_ _795_ vdd gnd OAI21X1
X_1403_ _492_ _488_ _491_ _493_ vdd gnd NAND3X1
XFILL_1__1565_ gnd vdd FILL
XFILL_1__1145_ gnd vdd FILL
X_1632_ ABCmd_i[6] LoadA_i _701_ vdd gnd NAND2X1
X_1212_ _168_ _303_ _304_ vdd gnd NOR2X1
XFILL_0__960_ gnd vdd FILL
X_963_ _53_ _54_ _50_ _55_ vdd gnd OAI21X1
XFILL_1__1794_ gnd vdd FILL
XFILL_1__1374_ gnd vdd FILL
XFILL_0__1689_ gnd vdd FILL
XFILL_0__1269_ gnd vdd FILL
X_1861_ _816_ _800_ _830_ vdd gnd NOR2X1
X_1441_ _529_ _530_ vdd gnd INVX1
X_1021_ _112_ _113_ vdd gnd INVX1
XFILL_1__1183_ gnd vdd FILL
XFILL_2__1252_ gnd vdd FILL
XFILL_0__1498_ gnd vdd FILL
XFILL_0__1078_ gnd vdd FILL
XFILL_1__1239_ gnd vdd FILL
X_1670_ _11_ clk_bF$buf0 AI[1] vdd gnd DFFPOSX1
X_1250_ _337_ _341_ _286_ _342_ vdd gnd AOI21X1
XFILL_0__1710_ gnd vdd FILL
XFILL_2__1728_ gnd vdd FILL
XFILL_2__1481_ gnd vdd FILL
X_1726_ _896_ _884_ _897_ vdd gnd NAND2X1
X_1306_ _396_ _397_ vdd gnd INVX1
XFILL_1__1888_ gnd vdd FILL
XFILL_1__1468_ gnd vdd FILL
XFILL_1__1048_ gnd vdd FILL
XFILL86850x28950 gnd vdd FILL
X_1535_ _712_ _622_ _623_ vdd gnd NAND2X1
X_1115_ _199_ _202_ _207_ vdd gnd AND2X2
XFILL_1__1697_ gnd vdd FILL
XFILL_1__1277_ gnd vdd FILL
X_1764_ AI[3] _739_ _740_ vdd gnd NAND2X1
X_1344_ _424_ _330_ _414_ _435_ vdd gnd OAI21X1
XFILL_1__1086_ gnd vdd FILL
XFILL_0__1804_ gnd vdd FILL
X_1573_ _601_ _602_ _650_ _659_ vdd gnd NAND3X1
X_1153_ _722_ _28_ _724_ _245_ vdd gnd OAI21X1
XFILL_1__935_ gnd vdd FILL
XFILL_0__1613_ gnd vdd FILL
X_1629_ LoadA_i _463_ _699_ _14_ vdd gnd OAI21X1
X_1209_ _161_ _177_ _180_ _301_ vdd gnd AOI21X1
XFILL_0__957_ gnd vdd FILL
X_1382_ _468_ _465_ _472_ vdd gnd AND2X2
XFILL_0__1842_ gnd vdd FILL
XFILL_0__1422_ gnd vdd FILL
XFILL_0__1002_ gnd vdd FILL
XFILL_2__1193_ gnd vdd FILL
X_1858_ BCD _824_ _827_ vdd gnd NAND2X1
X_1438_ _526_ _527_ vdd gnd INVX1
X_1018_ MUL_bF$buf1 BI[3] AI[3] _110_ vdd gnd NAND3X1
X_1191_ _219_ _282_ _218_ _283_ vdd gnd OAI21X1
XFILL_1__973_ gnd vdd FILL
XFILL_0__1651_ gnd vdd FILL
XFILL_0__1231_ gnd vdd FILL
XFILL_1__1812_ gnd vdd FILL
X_1667_ _1_ vdd _0_[6] clk_bF$buf4 _919_[6] vdd 
+ gnd
+ DFFSR
X_1247_ _334_ _335_ _333_ _339_ vdd gnd AOI21X1
XFILL_0__995_ gnd vdd FILL
X_998_ _85_ _82_ _62_ _90_ vdd gnd OAI21X1
XFILL_0__1707_ gnd vdd FILL
XFILL_0__1880_ gnd vdd FILL
XFILL_0__1460_ gnd vdd FILL
XFILL_0__1040_ gnd vdd FILL
XFILL_1__1621_ gnd vdd FILL
XFILL_1__1201_ gnd vdd FILL
X_1896_ _919_[6] ACC_o[6] vdd gnd BUFX2
X_1476_ _564_ _455_ _512_ _565_ vdd gnd AOI21X1
X_1056_ _121_ _123_ _106_ _148_ vdd gnd OAI21X1
XFILL_0__1516_ gnd vdd FILL
XFILL_1__1850_ gnd vdd FILL
XFILL_1__1430_ gnd vdd FILL
XFILL_1__1010_ gnd vdd FILL
X_1285_ _338_ _375_ _376_ vdd gnd NOR2X1
XFILL_0__1745_ gnd vdd FILL
XFILL_0__1325_ gnd vdd FILL
XFILL_2__1096_ gnd vdd FILL
X_1094_ _178_ _185_ _148_ _186_ vdd gnd AOI21X1
XFILL_0__1554_ gnd vdd FILL
XFILL_0__1134_ gnd vdd FILL
XFILL_1__1715_ gnd vdd FILL
XFILL_0__1783_ gnd vdd FILL
XFILL_0__1363_ gnd vdd FILL
XFILL_1__1524_ gnd vdd FILL
XFILL_1__1104_ gnd vdd FILL
X_1799_ _772_ HC _773_ vdd gnd NOR2X1
X_1379_ _463_ _135_ _468_ _469_ vdd gnd OAI21X1
XFILL_0__1839_ gnd vdd FILL
XFILL_0__1419_ gnd vdd FILL
XFILL_0__1592_ gnd vdd FILL
XFILL_0__1172_ gnd vdd FILL
X_922_ AI[0] _713_ _714_ vdd gnd NAND2X1
XFILL_1__1753_ gnd vdd FILL
XFILL_1__1333_ gnd vdd FILL
X_1188_ _276_ _255_ _279_ _280_ vdd gnd NAND3X1
XFILL_2__1402_ gnd vdd FILL
XFILL_0__1648_ gnd vdd FILL
XFILL_0__1228_ gnd vdd FILL
XFILL_1__1809_ gnd vdd FILL
X_1820_ _864_ BI[6] _792_ vdd gnd AND2X2
X_1400_ _487_ _489_ _474_ _490_ vdd gnd OAI21X1
XFILL_1__1562_ gnd vdd FILL
XFILL_1__1142_ gnd vdd FILL
XFILL_2__1631_ gnd vdd FILL
XFILL_0__1877_ gnd vdd FILL
XFILL_0__1457_ gnd vdd FILL
XFILL_0__1037_ gnd vdd FILL
XFILL_2__986_ gnd vdd FILL
XFILL_1__1618_ gnd vdd FILL
X_960_ _50_ _51_ _52_ vdd gnd OR2X2
XFILL_1__1791_ gnd vdd FILL
XFILL_1__1371_ gnd vdd FILL
XFILL_0__1686_ gnd vdd FILL
XFILL_0__1266_ gnd vdd FILL
XFILL_1__1847_ gnd vdd FILL
XFILL_1__1427_ gnd vdd FILL
XFILL_1__1007_ gnd vdd FILL
XFILL_1__1180_ gnd vdd FILL
XFILL_0__1495_ gnd vdd FILL
XFILL_0__1075_ gnd vdd FILL
XFILL_1__1236_ gnd vdd FILL
XFILL_2__1305_ gnd vdd FILL
X_1723_ _893_ _894_ vdd gnd INVX1
X_1303_ _392_ _393_ _382_ _394_ vdd gnd OAI21X1
XFILL86250x18150 gnd vdd FILL
XFILL_1__1885_ gnd vdd FILL
XFILL_1__1465_ gnd vdd FILL
XFILL_1__1045_ gnd vdd FILL
X_1532_ Flag_i ACC[4] _620_ vdd gnd NOR2X1
X_1112_ _190_ _186_ _203_ _204_ vdd gnd OAI21X1
XFILL86850x82950 gnd vdd FILL
XFILL_1__1694_ gnd vdd FILL
XFILL_1__1274_ gnd vdd FILL
XFILL_0__1589_ gnd vdd FILL
XFILL_0__1169_ gnd vdd FILL
X_1761_ _911_ _730_ _737_ vdd gnd AND2X2
X_1341_ _300_ _431_ _334_ _432_ vdd gnd OAI21X1
XFILL_1__1083_ gnd vdd FILL
XFILL_0__1801_ gnd vdd FILL
XFILL_2__1572_ gnd vdd FILL
XFILL_0__1398_ gnd vdd FILL
X_1817_ _789_ ACC[5] vdd gnd INVX1
XFILL_1__1559_ gnd vdd FILL
XFILL_1__1139_ gnd vdd FILL
X_1570_ ACC[6] _627_ _656_ vdd gnd NAND2X1
X_1150_ _716_ _26_ _236_ _242_ vdd gnd OAI21X1
XFILL_1__932_ gnd vdd FILL
XFILL_0__1610_ gnd vdd FILL
X_1626_ ABCmd_i[3] LoadA_i _698_ vdd gnd NAND2X1
X_1206_ _293_ _292_ _298_ vdd gnd AND2X2
XFILL_0__954_ gnd vdd FILL
X_957_ _30_ _40_ _35_ _49_ vdd gnd OAI21X1
XFILL_1__1788_ gnd vdd FILL
XFILL_1__1368_ gnd vdd FILL
XFILL_2__1017_ gnd vdd FILL
X_1855_ _824_ AN _825_ vdd gnd NOR2X1
X_1435_ _496_ _501_ _459_ _524_ vdd gnd NOR3X1
X_1015_ MUL_bF$buf1 BI[5] AI[1] _107_ vdd gnd NAND3X1
XFILL_1__1597_ gnd vdd FILL
XFILL_1__1177_ gnd vdd FILL
XFILL_1__970_ gnd vdd FILL
XFILL_2__1246_ gnd vdd FILL
X_1664_ _1_ vdd _0_[3] clk_bF$buf4 _919_[3] vdd 
+ gnd
+ DFFSR
X_1244_ _333_ _335_ _334_ _336_ vdd gnd NAND3X1
XFILL_0__992_ gnd vdd FILL
X_995_ _80_ _86_ _48_ _87_ vdd gnd NAND3X1
XFILL_0__1704_ gnd vdd FILL
XFILL86850x14550 gnd vdd FILL
X_1893_ _919_[3] ACC_o[3] vdd gnd BUFX2
X_1473_ _511_ _562_ vdd gnd INVX1
X_1053_ _144_ _145_ vdd gnd INVX1
XFILL_0__1513_ gnd vdd FILL
X_1529_ _276_ _617_ vdd gnd INVX1
X_1109_ _716_ _135_ _193_ _201_ vdd gnd OAI21X1
X_1282_ _372_ _365_ MulH_i _373_ vdd gnd AOI21X1
XFILL_0__1742_ gnd vdd FILL
XFILL_0__1322_ gnd vdd FILL
X_1758_ _731_ _734_ _735_ vdd gnd NAND2X1
X_1338_ _428_ _423_ _426_ _429_ vdd gnd NAND3X1
X_1091_ _725_ _182_ _172_ _183_ vdd gnd OAI21X1
XFILL_0__1551_ gnd vdd FILL
XFILL_0__1131_ gnd vdd FILL
XFILL_1__1712_ gnd vdd FILL
X_1567_ _255_ _356_ _653_ vdd gnd NAND2X1
X_1147_ _238_ _239_ vdd gnd INVX1
XFILL_1__929_ gnd vdd FILL
XFILL_0__1607_ gnd vdd FILL
XFILL85650x46950 gnd vdd FILL
XFILL_0__1780_ gnd vdd FILL
XFILL_0__1360_ gnd vdd FILL
XFILL_1__1521_ gnd vdd FILL
XFILL_1__1101_ gnd vdd FILL
X_1796_ BCD _770_ _771_ vdd gnd NAND2X1
X_1376_ _465_ _466_ vdd gnd INVX1
XFILL_0__1836_ gnd vdd FILL
XFILL_0__1416_ gnd vdd FILL
XFILL_2__1187_ gnd vdd FILL
XFILL_1__1750_ gnd vdd FILL
XFILL_1__1330_ gnd vdd FILL
X_1185_ _88_ _253_ _220_ _277_ vdd gnd OAI21X1
XFILL_1__967_ gnd vdd FILL
XFILL_0__1645_ gnd vdd FILL
XFILL_0__1225_ gnd vdd FILL
XFILL_1__1806_ gnd vdd FILL
XFILL_0__989_ gnd vdd FILL
XFILL_0__1874_ gnd vdd FILL
XFILL_0__1454_ gnd vdd FILL
XFILL_0__1034_ gnd vdd FILL
XFILL_1__1615_ gnd vdd FILL
XFILL_0__1263_ gnd vdd FILL
XFILL_1__1844_ gnd vdd FILL
XFILL_1__1424_ gnd vdd FILL
XFILL_1__1004_ gnd vdd FILL
X_1699_ alu_op[0] _869_ _870_ _871_ vdd gnd OAI21X1
X_1279_ _266_ _265_ _370_ vdd gnd AND2X2
XFILL_0__1739_ gnd vdd FILL
XFILL_0__1319_ gnd vdd FILL
XFILL_0__1492_ gnd vdd FILL
XFILL_0__1072_ gnd vdd FILL
XFILL_1__1233_ gnd vdd FILL
X_1088_ _160_ _156_ _149_ _180_ vdd gnd AOI21X1
XFILL_2__1722_ gnd vdd FILL
XFILL_0__1548_ gnd vdd FILL
XFILL_0__1128_ gnd vdd FILL
XFILL_1__1709_ gnd vdd FILL
X_1720_ _887_ _890_ _885_ _891_ vdd gnd OAI21X1
X_1300_ BI[6] _384_ _391_ vdd gnd NAND2X1
XFILL_1__1882_ gnd vdd FILL
XFILL_1__1462_ gnd vdd FILL
XFILL_1__1042_ gnd vdd FILL
XFILL_0__1777_ gnd vdd FILL
XFILL_0__1357_ gnd vdd FILL
XFILL86250x39750 gnd vdd FILL
XFILL_1__1518_ gnd vdd FILL
XFILL_1__1691_ gnd vdd FILL
XFILL_1__1271_ gnd vdd FILL
XFILL86550x150 gnd vdd FILL
XFILL_0__1586_ gnd vdd FILL
XFILL_0__1166_ gnd vdd FILL
XFILL_1__1747_ gnd vdd FILL
XFILL_1__1327_ gnd vdd FILL
XFILL_1__1080_ gnd vdd FILL
XFILL_0__1395_ gnd vdd FILL
X_1814_ HC _772_ _774_ _787_ vdd gnd AOI21X1
XFILL_1__1556_ gnd vdd FILL
XFILL_1__1136_ gnd vdd FILL
XFILL_2__1625_ gnd vdd FILL
X_1623_ LoadA_i _716_ _696_ _11_ vdd gnd OAI21X1
X_1203_ _725_ _135_ _293_ _295_ vdd gnd OAI21X1
XFILL_0__951_ gnd vdd FILL
X_954_ _45_ _719_ _46_ vdd gnd NAND2X1
XFILL_1__1785_ gnd vdd FILL
XFILL_1__1365_ gnd vdd FILL
X_1852_ _821_ ACC[4] _822_ vdd gnd NOR2X1
X_1432_ _520_ _521_ _519_ _522_ vdd gnd OAI21X1
X_1012_ _100_ _97_ _99_ _104_ vdd gnd NAND3X1
XFILL_1__1594_ gnd vdd FILL
XFILL_1__1174_ gnd vdd FILL
XFILL_0__1489_ gnd vdd FILL
XFILL_0__1069_ gnd vdd FILL
X_1661_ _1_ vdd _0_[0] clk_bF$buf4 _919_[0] vdd 
+ gnd
+ DFFSR
X_1241_ _296_ _299_ _333_ vdd gnd AND2X2
X_992_ _73_ _75_ _69_ _84_ vdd gnd OAI21X1
XFILL_0__1701_ gnd vdd FILL
XFILL_2__1892_ gnd vdd FILL
XFILL_0__1298_ gnd vdd FILL
X_1717_ BI[1] _888_ vdd gnd INVX1
XFILL_1__1879_ gnd vdd FILL
XFILL_1__1459_ gnd vdd FILL
XFILL_1__1039_ gnd vdd FILL
X_1890_ _919_[0] ACC_o[0] vdd gnd BUFX2
X_1470_ _550_ _554_ _558_ _559_ vdd gnd NAND3X1
X_1050_ _137_ _141_ _140_ _142_ vdd gnd NAND3X1
XFILL_0__1510_ gnd vdd FILL
X_1526_ _283_ _612_ _563_ _614_ vdd gnd NAND3X1
X_1106_ _193_ _197_ _198_ vdd gnd NAND2X1
XFILL_1__1688_ gnd vdd FILL
XFILL_1__1268_ gnd vdd FILL
XFILL_2__1337_ gnd vdd FILL
X_1755_ _877_ _727_ _918_ _732_ vdd gnd OAI21X1
X_1335_ _424_ _330_ _425_ _426_ vdd gnd OAI21X1
XFILL_1__1497_ gnd vdd FILL
XFILL_1__1077_ gnd vdd FILL
XFILL_2__1566_ gnd vdd FILL
X_1564_ _648_ _649_ _650_ _651_ vdd gnd OAI21X1
X_1144_ MUL_bF$buf0 BI[0] AI[2] _236_ vdd gnd NAND3X1
XFILL_1__926_ gnd vdd FILL
XFILL_0__1604_ gnd vdd FILL
XFILL_0__948_ gnd vdd FILL
XFILL_2_BUFX2_insert14 gnd vdd FILL
X_1793_ _754_ _757_ _767_ _768_ vdd gnd AOI21X1
X_1373_ AI[4] _463_ vdd gnd INVX1
XFILL_0__1833_ gnd vdd FILL
XFILL_0__1413_ gnd vdd FILL
X_1849_ _818_ _819_ AN vdd gnd AND2X2
X_1429_ _267_ _517_ _518_ _519_ vdd gnd OAI21X1
X_1009_ _100_ _96_ _99_ _101_ vdd gnd NAND3X1
X_1182_ _271_ _262_ _273_ _274_ vdd gnd NAND3X1
XFILL_1__964_ gnd vdd FILL
XFILL_0__1642_ gnd vdd FILL
XFILL_0__1222_ gnd vdd FILL
XFILL_1__1803_ gnd vdd FILL
X_1658_ _7_ clk_bF$buf2 shr vdd gnd DFFPOSX1
X_1238_ _321_ _319_ _312_ _330_ vdd gnd AOI21X1
XFILL_0__986_ gnd vdd FILL
X_989_ _64_ _65_ _63_ _81_ vdd gnd AOI21X1
XFILL_0__1871_ gnd vdd FILL
XFILL_0__1451_ gnd vdd FILL
XFILL_0__1031_ gnd vdd FILL
XFILL_1__1612_ gnd vdd FILL
X_1887_ _853_ _852_ _855_ vdd gnd NAND2X1
X_1467_ _525_ _555_ _556_ vdd gnd NAND2X1
X_1047_ _129_ _125_ _138_ _139_ vdd gnd OAI21X1
XFILL_0__1507_ gnd vdd FILL
XFILL_0__1260_ gnd vdd FILL
XFILL_2__1278_ gnd vdd FILL
XFILL_1__1841_ gnd vdd FILL
XFILL_1__1421_ gnd vdd FILL
XFILL_1__1001_ gnd vdd FILL
X_1696_ shr _868_ vdd gnd INVX2
X_1276_ _363_ _366_ _367_ _368_ vdd gnd OAI21X1
XFILL_0__1736_ gnd vdd FILL
XFILL_0__1316_ gnd vdd FILL
XFILL_1__1650_ gnd vdd FILL
XFILL_1__1230_ gnd vdd FILL
X_1085_ _176_ _173_ _177_ vdd gnd NAND2X1
XFILL_0__1545_ gnd vdd FILL
XFILL_0__1125_ gnd vdd FILL
XFILL_1__1706_ gnd vdd FILL
XFILL_0__1774_ gnd vdd FILL
XFILL_0__1354_ gnd vdd FILL
XFILL_1__1515_ gnd vdd FILL
XFILL_0__1583_ gnd vdd FILL
XFILL_0__1163_ gnd vdd FILL
XFILL_1__1744_ gnd vdd FILL
XFILL_1__1324_ gnd vdd FILL
X_1599_ LoadCmd_i _680_ _681_ _2_ vdd gnd OAI21X1
X_1179_ _270_ _271_ vdd gnd INVX1
XFILL_2__1813_ gnd vdd FILL
XFILL_0__1639_ gnd vdd FILL
XFILL_0__1219_ gnd vdd FILL
XFILL_0__1392_ gnd vdd FILL
X_1811_ _780_ _782_ _783_ _784_ vdd gnd OAI21X1
XFILL_1__1553_ gnd vdd FILL
XFILL_1__1133_ gnd vdd FILL
XFILL_0__1868_ gnd vdd FILL
XFILL_0__1448_ gnd vdd FILL
XFILL_0__1028_ gnd vdd FILL
XFILL_1__1609_ gnd vdd FILL
X_1620_ ABCmd_i[0] LoadA_i _695_ vdd gnd NAND2X1
X_1200_ AI[2] _134_ _292_ vdd gnd NAND2X1
X_951_ AI[0] _43_ vdd gnd INVX1
XFILL_1__1782_ gnd vdd FILL
XFILL_1__1362_ gnd vdd FILL
XFILL_1__999_ gnd vdd FILL
XFILL_2__1011_ gnd vdd FILL
XFILL_0__1257_ gnd vdd FILL
XFILL_1__1838_ gnd vdd FILL
XFILL_1__1418_ gnd vdd FILL
XFILL_1__1591_ gnd vdd FILL
XFILL_1__1171_ gnd vdd FILL
XFILL_0__1486_ gnd vdd FILL
XFILL_0__1066_ gnd vdd FILL
XFILL_1__1647_ gnd vdd FILL
XFILL_1__1227_ gnd vdd FILL
XFILL86250x25350 gnd vdd FILL
XFILL_0__1295_ gnd vdd FILL
X_1714_ shr AI[2] _885_ vdd gnd NAND2X1
XFILL_1__1876_ gnd vdd FILL
XFILL_1__1456_ gnd vdd FILL
XFILL_1__1036_ gnd vdd FILL
X_1523_ _351_ _448_ _447_ _611_ vdd gnd OAI21X1
X_1103_ _716_ _135_ _194_ _195_ vdd gnd OAI21X1
XFILL_1__1685_ gnd vdd FILL
XFILL_1__1265_ gnd vdd FILL
X_1752_ alu_op_2_bF$buf0 _858_ _728_ _729_ vdd gnd OAI21X1
X_1332_ _394_ _390_ _423_ vdd gnd AND2X2
XFILL_1__1494_ gnd vdd FILL
XFILL_1__1074_ gnd vdd FILL
XFILL86550x68550 gnd vdd FILL
XFILL_0__1389_ gnd vdd FILL
X_1808_ alu_op_2_bF$buf3 BI[5] _858_ _781_ vdd gnd OAI21X1
X_1561_ _602_ _648_ vdd gnd INVX1
X_1141_ _220_ _87_ _232_ _233_ vdd gnd NAND3X1
XFILL_1__923_ gnd vdd FILL
XFILL_0__1601_ gnd vdd FILL
XFILL_0__1198_ gnd vdd FILL
X_1617_ LoadCmd_i _692_ _693_ _8_ vdd gnd OAI21X1
XFILL_0__945_ gnd vdd FILL
X_948_ _38_ _40_ vdd gnd INVX1
XFILL_1__1779_ gnd vdd FILL
XFILL_1__1359_ gnd vdd FILL
X_1790_ alu_op_2_bF$buf2 BI[4] _764_ _765_ vdd gnd AOI21X1
X_1370_ BI[7] _384_ _460_ vdd gnd NAND2X1
XFILL_0__1830_ gnd vdd FILL
XFILL_0__1410_ gnd vdd FILL
X_1846_ _816_ _817_ vdd gnd INVX1
X_1426_ _514_ _515_ _516_ vdd gnd NAND2X1
X_1006_ _94_ _95_ _97_ _98_ vdd gnd OAI21X1
XFILL_1__1588_ gnd vdd FILL
XFILL_1__1168_ gnd vdd FILL
XFILL_1__961_ gnd vdd FILL
XFILL86850x21750 gnd vdd FILL
XFILL_1__1800_ gnd vdd FILL
X_1655_ _4_ clk_bF$buf3 alu_op[2] vdd gnd DFFPOSX1
X_1235_ _322_ _326_ _301_ _327_ vdd gnd NAND3X1
XFILL_0__983_ gnd vdd FILL
X_986_ _69_ _74_ _77_ _78_ vdd gnd NAND3X1
XFILL_1__1397_ gnd vdd FILL
X_1884_ _843_ _844_ _851_ _852_ vdd gnd OAI21X1
X_1464_ _548_ _528_ _553_ vdd gnd NAND2X1
X_1044_ _43_ _135_ _131_ _136_ vdd gnd OAI21X1
XFILL_0__1504_ gnd vdd FILL
X_1693_ BI[0] _864_ _865_ vdd gnd NAND2X1
X_1273_ MulL_i _365_ vdd gnd INVX2
XFILL_0__1733_ gnd vdd FILL
XFILL_0__1313_ gnd vdd FILL
X_1749_ alu_op_2_bF$buf1 BI[2] _858_ _726_ vdd gnd OAI21X1
X_1329_ _312_ _419_ _324_ _420_ vdd gnd OAI21X1
X_1082_ _168_ _174_ vdd gnd INVX1
XFILL_0__1542_ gnd vdd FILL
XFILL_0__1122_ gnd vdd FILL
XFILL_1__1703_ gnd vdd FILL
X_1558_ _643_ _630_ _645_ vdd gnd OR2X2
X_1138_ _81_ _82_ _79_ _230_ vdd gnd OAI21X1
XFILL_0__1771_ gnd vdd FILL
XFILL_0__1351_ gnd vdd FILL
XFILL_1__1512_ gnd vdd FILL
X_1787_ AI[4] _759_ _868_ _762_ vdd gnd OAI21X1
X_1367_ _382_ _393_ _386_ _457_ vdd gnd OAI21X1
XFILL_0__1827_ gnd vdd FILL
XFILL_0__1407_ gnd vdd FILL
XFILL_0__1580_ gnd vdd FILL
XFILL_2__1598_ gnd vdd FILL
XFILL_0__1160_ gnd vdd FILL
XFILL_1__1741_ gnd vdd FILL
XFILL_1__1321_ gnd vdd FILL
X_1596_ reset _1_ vdd gnd INVX4
X_1176_ BI[2] _268_ vdd gnd INVX1
XFILL_1__958_ gnd vdd FILL
XFILL_0__1636_ gnd vdd FILL
XFILL_0__1216_ gnd vdd FILL
XFILL_1__1550_ gnd vdd FILL
XFILL_1__1130_ gnd vdd FILL
XFILL_0__1865_ gnd vdd FILL
XFILL_0__1445_ gnd vdd FILL
XFILL_0__1025_ gnd vdd FILL
XFILL_1__1606_ gnd vdd FILL
XFILL_1__996_ gnd vdd FILL
XFILL_0__1254_ gnd vdd FILL
XFILL_1__1835_ gnd vdd FILL
XFILL_1__1415_ gnd vdd FILL
XFILL_0__1483_ gnd vdd FILL
XFILL_0__1063_ gnd vdd FILL
XFILL_1__1644_ gnd vdd FILL
XFILL_1__1224_ gnd vdd FILL
X_1499_ _586_ _585_ _587_ vdd gnd NAND2X1
X_1079_ _169_ _37_ _170_ _171_ vdd gnd OAI21X1
XFILL_0__1539_ gnd vdd FILL
XFILL_0__1119_ gnd vdd FILL
XFILL_0__1292_ gnd vdd FILL
X_1711_ _882_ ACC[0] vdd gnd INVX1
XFILL86250x46950 gnd vdd FILL
XFILL_1__1873_ gnd vdd FILL
XFILL_1__1453_ gnd vdd FILL
XFILL_1__1033_ gnd vdd FILL
XFILL_2__1102_ gnd vdd FILL
XFILL_0__1768_ gnd vdd FILL
XFILL_0__1348_ gnd vdd FILL
XFILL_1__1509_ gnd vdd FILL
X_1520_ _556_ _607_ _454_ _442_ _608_ vdd 
+ gnd
+ AOI22X1
X_1100_ _191_ _192_ vdd gnd INVX1
XFILL_1__1262_ gnd vdd FILL
XFILL_2__1331_ gnd vdd FILL
XFILL_0__1577_ gnd vdd FILL
XFILL_0__1157_ gnd vdd FILL
XFILL_1__1738_ gnd vdd FILL
XFILL_1__1318_ gnd vdd FILL
XFILL_1__1491_ gnd vdd FILL
XFILL_1__1071_ gnd vdd FILL
XFILL_2__1807_ gnd vdd FILL
XFILL86850x3750 gnd vdd FILL
XFILL_0__1386_ gnd vdd FILL
X_1805_ _862_ BI[5] _777_ _863_ _778_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1547_ gnd vdd FILL
XFILL_1__1127_ gnd vdd FILL
XFILL_1__920_ gnd vdd FILL
XFILL_0__1195_ gnd vdd FILL
X_1614_ LoadCmd_i _690_ _691_ _7_ vdd gnd OAI21X1
XFILL_0__942_ gnd vdd FILL
X_945_ MUL_bF$buf2 AI[3] _37_ vdd gnd NAND2X1
XFILL_1__1776_ gnd vdd FILL
XFILL_1__1356_ gnd vdd FILL
X_1843_ alu_op_2_bF$buf2 BI[7] _813_ _814_ vdd gnd AOI21X1
X_1423_ _512_ _513_ vdd gnd INVX1
X_1003_ _92_ _93_ _95_ vdd gnd AND2X2
XFILL_1__1585_ gnd vdd FILL
XFILL_1__1165_ gnd vdd FILL
X_1652_ LoadB_i _288_ _711_ _25_ vdd gnd OAI21X1
X_1232_ _320_ _318_ _324_ vdd gnd NAND2X1
XFILL_0__980_ gnd vdd FILL
X_983_ _74_ _75_ vdd gnd INVX1
XFILL_1__1394_ gnd vdd FILL
XFILL_2__1043_ gnd vdd FILL
XFILL_0__1289_ gnd vdd FILL
X_1708_ _879_ _861_ _880_ vdd gnd OR2X2
X_1881_ _847_ _u_ALU8.AI7_ _849_ vdd gnd OR2X2
X_1461_ _527_ _549_ _547_ _550_ vdd gnd NAND3X1
X_1041_ BI[6] _133_ vdd gnd INVX1
XFILL_0__1501_ gnd vdd FILL
XFILL_2__1272_ gnd vdd FILL
XFILL_0__1098_ gnd vdd FILL
X_1517_ _556_ _508_ _605_ vdd gnd NAND2X1
XFILL86550x54150 gnd vdd FILL
XFILL_1__1259_ gnd vdd FILL
X_1690_ alu_op[1] _862_ vdd gnd INVX2
X_1270_ _353_ _361_ _362_ vdd gnd NAND2X1
XFILL_0__1730_ gnd vdd FILL
XFILL_2__1748_ gnd vdd FILL
XFILL_0__1310_ gnd vdd FILL
X_1746_ _862_ BI[2] _915_ _863_ _916_ vdd 
+ gnd
+ AOI22X1
X_1326_ _u_ALU8.AI7_ _417_ vdd gnd INVX2
XFILL_1__1488_ gnd vdd FILL
XFILL_1__1068_ gnd vdd FILL
XFILL_1__1700_ gnd vdd FILL
X_1555_ _641_ _638_ _637_ _642_ vdd gnd NAND3X1
X_1135_ _220_ _226_ _227_ vdd gnd NOR2X1
XFILL_1__1297_ gnd vdd FILL
XFILL_2_CLKBUF1_insert1 gnd vdd FILL
XFILL_0__939_ gnd vdd FILL
X_1784_ _864_ BI[4] _759_ vdd gnd AND2X2
X_1364_ _447_ _351_ _454_ vdd gnd NAND2X1
XFILL_0__1824_ gnd vdd FILL
XFILL_0__1404_ gnd vdd FILL
XFILL_2__933_ gnd vdd FILL
X_1593_ _676_ _358_ _677_ _678_ vdd gnd OAI21X1
X_1173_ BI[1] _68_ _265_ vdd gnd NAND2X1
XFILL_1__955_ gnd vdd FILL
XFILL_0__1633_ gnd vdd FILL
XFILL_0__1213_ gnd vdd FILL
X_1649_ ABCmd_i[6] LoadB_i _710_ vdd gnd NAND2X1
X_1229_ _316_ _317_ _320_ _321_ vdd gnd OAI21X1
XFILL_0__977_ gnd vdd FILL
XFILL86850x150 gnd vdd FILL
XFILL_0__1862_ gnd vdd FILL
XFILL_0__1442_ gnd vdd FILL
XFILL_0__1022_ gnd vdd FILL
XFILL_1__1603_ gnd vdd FILL
X_1878_ _877_ _812_ _846_ vdd gnd NAND2X1
X_1458_ _543_ _546_ _528_ _547_ vdd gnd NAND3X1
X_1038_ BI[6] _68_ _130_ vdd gnd NAND2X1
XFILL_1__993_ gnd vdd FILL
XFILL_2__1689_ gnd vdd FILL
XFILL_0__1251_ gnd vdd FILL
XFILL_1__1832_ gnd vdd FILL
XFILL_1__1412_ gnd vdd FILL
X_1687_ _857_ _858_ CI _859_ vdd gnd OAI21X1
X_1267_ _355_ _358_ _354_ _359_ vdd gnd AOI21X1
XFILL_0__1727_ gnd vdd FILL
XFILL_0__1307_ gnd vdd FILL
XFILL_0__1480_ gnd vdd FILL
XFILL_0__1060_ gnd vdd FILL
XFILL_1__1641_ gnd vdd FILL
XFILL_1__1221_ gnd vdd FILL
X_1496_ _135_ _540_ _583_ _584_ vdd gnd OAI21X1
X_1076_ MUL_bF$buf5 AI[4] BI[4] _168_ vdd gnd NAND3X1
XFILL_0__1536_ gnd vdd FILL
XFILL_0__1116_ gnd vdd FILL
XFILL_1__1870_ gnd vdd FILL
XFILL_1__1450_ gnd vdd FILL
XFILL_1__1030_ gnd vdd FILL
XFILL_0__1765_ gnd vdd FILL
XFILL_0__1345_ gnd vdd FILL
XFILL_1__1506_ gnd vdd FILL
XFILL85950x82950 gnd vdd FILL
XFILL_0__1574_ gnd vdd FILL
XFILL_0__1154_ gnd vdd FILL
XFILL_1__1735_ gnd vdd FILL
XFILL_1__1315_ gnd vdd FILL
XFILL_0__1383_ gnd vdd FILL
X_1802_ shr AI[6] _775_ vdd gnd NAND2X1
XFILL_1__1544_ gnd vdd FILL
XFILL_1__1124_ gnd vdd FILL
X_1399_ _488_ _489_ vdd gnd INVX1
XFILL_0__1859_ gnd vdd FILL
XFILL_0__1439_ gnd vdd FILL
XFILL_0__1019_ gnd vdd FILL
XFILL_0__1192_ gnd vdd FILL
X_1611_ LoadCmd_i _688_ _689_ _6_ vdd gnd OAI21X1
X_942_ _32_ _33_ _34_ vdd gnd NOR2X1
XFILL_1__1773_ gnd vdd FILL
XFILL_1__1353_ gnd vdd FILL
XFILL_2__1422_ gnd vdd FILL
XFILL_0__1248_ gnd vdd FILL
XFILL_1__1829_ gnd vdd FILL
XFILL_1__1409_ gnd vdd FILL
X_1840_ _u_ALU8.AI7_ _808_ _868_ _811_ vdd gnd OAI21X1
X_1420_ _379_ _509_ _439_ _510_ vdd gnd OAI21X1
X_1000_ MUL_bF$buf1 BI[1] AI[5] _92_ vdd gnd NAND3X1
XFILL_1__1582_ gnd vdd FILL
XFILL_1__1162_ gnd vdd FILL
XFILL_2__1651_ gnd vdd FILL
XFILL_0__1897_ gnd vdd FILL
XFILL_0__1477_ gnd vdd FILL
XFILL_0__1057_ gnd vdd FILL
XFILL86250x32550 gnd vdd FILL
XFILL_1__1638_ gnd vdd FILL
XFILL_1__1218_ gnd vdd FILL
X_980_ MUL_bF$buf4 BI[3] AI[2] _72_ vdd gnd NAND3X1
XFILL_1__1391_ gnd vdd FILL
XFILL_0__1286_ gnd vdd FILL
X_1705_ alu_op_2_bF$buf3 _858_ _877_ vdd gnd NOR2X1
XFILL_1__1867_ gnd vdd FILL
XFILL_1__1447_ gnd vdd FILL
XFILL_1__1027_ gnd vdd FILL
XFILL_0__1095_ gnd vdd FILL
X_1514_ _576_ _596_ _599_ _602_ vdd gnd NAND3X1
XFILL_1__1256_ gnd vdd FILL
XFILL86550x75750 gnd vdd FILL
X_1743_ BI[2] _913_ vdd gnd INVX1
X_1323_ _413_ _409_ _414_ vdd gnd NAND2X1
XFILL_1__1485_ gnd vdd FILL
XFILL_1__1065_ gnd vdd FILL
X_1552_ _638_ _637_ _639_ vdd gnd NAND2X1
X_1132_ _30_ _38_ _35_ _224_ vdd gnd NAND3X1
XFILL_1__1294_ gnd vdd FILL
XFILL_2__1363_ gnd vdd FILL
XFILL_0__1189_ gnd vdd FILL
X_1608_ LoadCmd_i _686_ _687_ _5_ vdd gnd OAI21X1
XFILL_0__936_ gnd vdd FILL
X_939_ _30_ _31_ vdd gnd INVX1
X_1781_ _746_ _756_ vdd gnd INVX1
X_1361_ _451_ _450_ MulH_i _452_ vdd gnd OAI21X1
XFILL_0__1821_ gnd vdd FILL
XFILL_2__1839_ gnd vdd FILL
XFILL_0__1401_ gnd vdd FILL
XFILL_2__1592_ gnd vdd FILL
X_1837_ _864_ BI[7] _808_ vdd gnd AND2X2
X_1417_ _503_ _506_ _507_ vdd gnd NAND2X1
XFILL_1__1579_ gnd vdd FILL
XFILL_1__1159_ gnd vdd FILL
X_1590_ _712_ _674_ _675_ vdd gnd NOR2X1
X_1170_ _246_ _260_ _261_ _262_ vdd gnd NAND3X1
XFILL_1__952_ gnd vdd FILL
XFILL_0__1630_ gnd vdd FILL
XFILL_0__1210_ gnd vdd FILL
X_1646_ BI[5] _708_ vdd gnd INVX1
X_1226_ _316_ _317_ _318_ vdd gnd NOR2X1
XFILL_0__974_ gnd vdd FILL
X_977_ BI[5] _68_ _69_ vdd gnd NAND2X1
XFILL_1__1388_ gnd vdd FILL
XFILL_2__1037_ gnd vdd FILL
XFILL_1__1600_ gnd vdd FILL
X_1875_ _816_ _842_ _843_ vdd gnd NOR2X1
X_1455_ _537_ _544_ vdd gnd INVX1
X_1035_ _122_ _121_ _119_ _127_ vdd gnd OAI21X1
XFILL_1__1197_ gnd vdd FILL
XFILL_1__990_ gnd vdd FILL
X_1684_ _25_ clk_bF$buf2 BI[7] vdd gnd DFFPOSX1
X_1264_ _144_ _258_ _356_ vdd gnd NAND2X1
XFILL_0__1724_ gnd vdd FILL
XFILL_0__1304_ gnd vdd FILL
X_1493_ AI[5] _289_ _581_ vdd gnd NAND2X1
X_1073_ _164_ _162_ _163_ _165_ vdd gnd NAND3X1
XFILL_0__1533_ gnd vdd FILL
XFILL_0__1113_ gnd vdd FILL
X_1549_ _582_ _634_ _635_ _636_ vdd gnd OAI21X1
X_1129_ _724_ _221_ vdd gnd INVX1
XFILL_0__1762_ gnd vdd FILL
XFILL_0__1342_ gnd vdd FILL
XFILL_1__1503_ gnd vdd FILL
X_1778_ _735_ _909_ _752_ _753_ vdd gnd AOI21X1
X_1358_ _353_ _351_ _448_ _449_ vdd gnd AOI21X1
XFILL_0__1818_ gnd vdd FILL
XFILL_2__927_ gnd vdd FILL
XFILL_0__1571_ gnd vdd FILL
XFILL_0__1151_ gnd vdd FILL
XFILL_1__1732_ gnd vdd FILL
XFILL_1__1312_ gnd vdd FILL
X_1587_ MulH_i _672_ _668_ _673_ vdd gnd NAND3X1
X_1167_ _258_ _144_ _259_ vdd gnd AND2X2
XFILL_1__949_ gnd vdd FILL
XFILL_0__1627_ gnd vdd FILL
XFILL_0__1207_ gnd vdd FILL
XFILL_0__1380_ gnd vdd FILL
XFILL_1__1541_ gnd vdd FILL
XFILL_1__1121_ gnd vdd FILL
X_1396_ _485_ _482_ _486_ vdd gnd NAND2X1
XFILL_0__1856_ gnd vdd FILL
XFILL_0__1436_ gnd vdd FILL
XFILL_0__1016_ gnd vdd FILL
XFILL_1__1770_ gnd vdd FILL
XFILL_1__1350_ gnd vdd FILL
XFILL_1__987_ gnd vdd FILL
XFILL_0__1245_ gnd vdd FILL
XFILL_1__1826_ gnd vdd FILL
XFILL_1__1406_ gnd vdd FILL
XFILL_0__1894_ gnd vdd FILL
XFILL_0__1474_ gnd vdd FILL
XFILL_0__1054_ gnd vdd FILL
XFILL_1__1635_ gnd vdd FILL
XFILL_1__1215_ gnd vdd FILL
XFILL_0__1283_ gnd vdd FILL
X_1702_ _867_ _872_ _873_ _874_ vdd gnd OAI21X1
XFILL_1__1864_ gnd vdd FILL
XFILL_1__1444_ gnd vdd FILL
XFILL_1__1024_ gnd vdd FILL
X_1299_ _383_ _389_ _386_ _390_ vdd gnd NAND3X1
XFILL_0__1759_ gnd vdd FILL
XFILL_0__1339_ gnd vdd FILL
XFILL_0__1092_ gnd vdd FILL
X_1511_ _579_ _598_ _597_ _599_ vdd gnd NAND3X1
XFILL_1__1253_ gnd vdd FILL
XFILL_0__1568_ gnd vdd FILL
XFILL_0__1148_ gnd vdd FILL
XFILL_1__1729_ gnd vdd FILL
XFILL_1__1309_ gnd vdd FILL
X_1740_ _893_ _891_ _910_ vdd gnd NOR2X1
X_1320_ _397_ _402_ _400_ _411_ vdd gnd NAND3X1
XFILL_1__1482_ gnd vdd FILL
XFILL_1__1062_ gnd vdd FILL
XFILL_0__1797_ gnd vdd FILL
XFILL_0__1377_ gnd vdd FILL
XFILL_1__1538_ gnd vdd FILL
XFILL_1__1118_ gnd vdd FILL
XFILL_1__1291_ gnd vdd FILL
XFILL_0__1186_ gnd vdd FILL
X_1605_ LoadCmd_i _684_ _685_ _4_ vdd gnd OAI21X1
XFILL_0__933_ gnd vdd FILL
X_936_ _27_ _28_ vdd gnd INVX1
XFILL_1__1767_ gnd vdd FILL
XFILL_1__1347_ gnd vdd FILL
XFILL_2__1416_ gnd vdd FILL
X_1834_ _799_ _805_ vdd gnd INVX1
X_1414_ _490_ _493_ _495_ _504_ vdd gnd NAND3X1
XFILL_1__1576_ gnd vdd FILL
XFILL_1__1156_ gnd vdd FILL
X_1643_ LoadB_i _309_ _706_ _21_ vdd gnd OAI21X1
X_1223_ MUL_bF$buf5 _u_ALU8.AI7_ BI[1] _315_ vdd gnd NAND3X1
XFILL_0__971_ gnd vdd FILL
X_974_ _63_ _65_ _64_ _66_ vdd gnd NAND3X1
XFILL_1__1385_ gnd vdd FILL
X_1872_ _833_ _837_ _840_ vdd gnd NAND2X1
X_1452_ _417_ _44_ _538_ _541_ vdd gnd OAI21X1
X_1032_ _122_ _121_ _123_ _124_ vdd gnd OAI21X1
XFILL_0_CLKBUF1_insert0 gnd vdd FILL
XFILL_0_CLKBUF1_insert1 gnd vdd FILL
XFILL_0_CLKBUF1_insert2 gnd vdd FILL
XFILL_0_CLKBUF1_insert3 gnd vdd FILL
XFILL_0_CLKBUF1_insert4 gnd vdd FILL
XFILL_1__1194_ gnd vdd FILL
XFILL_0__1089_ gnd vdd FILL
X_1508_ _594_ _595_ _580_ _596_ vdd gnd OAI21X1
X_1681_ _22_ clk_bF$buf0 BI[4] vdd gnd DFFPOSX1
X_1261_ _352_ _283_ _353_ vdd gnd NAND2X1
XFILL_0__1721_ gnd vdd FILL
XFILL_0__1301_ gnd vdd FILL
X_1737_ _905_ _907_ _908_ vdd gnd NAND2X1
X_1317_ MUL_bF$buf0 _u_ALU8.AI7_ BI[2] _408_ vdd gnd NAND3X1
XFILL_1__1479_ gnd vdd FILL
XFILL_1__1059_ gnd vdd FILL
X_1490_ _534_ _532_ _578_ vdd gnd NAND2X1
X_1070_ _96_ _95_ _99_ _162_ vdd gnd OAI21X1
XFILL_0__1530_ gnd vdd FILL
XFILL_2__1128_ gnd vdd FILL
XFILL_0__1110_ gnd vdd FILL
X_1546_ _631_ _583_ _632_ _633_ vdd gnd AOI21X1
X_1126_ _145_ _214_ _217_ _218_ vdd gnd NAND3X1
XFILL_1__1288_ gnd vdd FILL
XFILL_2__1357_ gnd vdd FILL
XFILL_1__1500_ gnd vdd FILL
X_1775_ _750_ _749_ _751_ vdd gnd NAND2X1
X_1355_ _379_ _437_ _430_ _446_ vdd gnd NAND3X1
XFILL_1__1097_ gnd vdd FILL
XFILL_0__1815_ gnd vdd FILL
X_1584_ _606_ _669_ _609_ _670_ vdd gnd NAND3X1
X_1164_ _255_ _256_ vdd gnd INVX1
XFILL_1__946_ gnd vdd FILL
XFILL_0__1624_ gnd vdd FILL
XFILL_0__1204_ gnd vdd FILL
XFILL_0__968_ gnd vdd FILL
X_1393_ _477_ _478_ _483_ vdd gnd NOR2X1
XFILL_0__1853_ gnd vdd FILL
XFILL_0__1433_ gnd vdd FILL
XFILL_0__1013_ gnd vdd FILL
X_1869_ _837_ _833_ _838_ vdd gnd AND2X2
X_1449_ BI[5] _405_ _538_ vdd gnd NAND2X1
X_1029_ _104_ _105_ _103_ _121_ vdd gnd AOI21X1
XFILL_1__984_ gnd vdd FILL
XFILL_0__1242_ gnd vdd FILL
XFILL_1__1823_ gnd vdd FILL
XFILL_1__1403_ gnd vdd FILL
X_1678_ _19_ clk_bF$buf0 BI[1] vdd gnd DFFPOSX1
X_1258_ _286_ _341_ _337_ _350_ vdd gnd NAND3X1
XFILL_0__1718_ gnd vdd FILL
XFILL_0__1891_ gnd vdd FILL
XFILL_0__1471_ gnd vdd FILL
XFILL_0__1051_ gnd vdd FILL
XFILL_2__1069_ gnd vdd FILL
XFILL86850x36150 gnd vdd FILL
XFILL_1__1632_ gnd vdd FILL
XFILL_1__1212_ gnd vdd FILL
X_1487_ _712_ _568_ _575_ _0_[3] vdd gnd OAI21X1
X_1067_ _36_ _158_ _151_ _159_ vdd gnd OAI21X1
XFILL_0__1527_ gnd vdd FILL
XFILL_0__1107_ gnd vdd FILL
XFILL_2__1298_ gnd vdd FILL
XFILL_0__1280_ gnd vdd FILL
XFILL_1__1861_ gnd vdd FILL
XFILL_1__1441_ gnd vdd FILL
XFILL_1__1021_ gnd vdd FILL
X_1296_ AI[3] _387_ vdd gnd INVX1
XFILL_0__1756_ gnd vdd FILL
XFILL_0__1336_ gnd vdd FILL
XFILL_1__1250_ gnd vdd FILL
XFILL_0__1565_ gnd vdd FILL
XFILL_0__1145_ gnd vdd FILL
XFILL_1__1726_ gnd vdd FILL
XFILL_1__1306_ gnd vdd FILL
XFILL_0__1794_ gnd vdd FILL
XFILL_0__1374_ gnd vdd FILL
XFILL_1__1535_ gnd vdd FILL
XFILL_1__1115_ gnd vdd FILL
XFILL_2__959_ gnd vdd FILL
XFILL_0__1183_ gnd vdd FILL
X_1602_ LoadCmd_i _682_ _683_ _3_ vdd gnd OAI21X1
XFILL_0__930_ gnd vdd FILL
X_933_ AI[2] _725_ vdd gnd INVX2
XFILL_1__1764_ gnd vdd FILL
XFILL_1__1344_ gnd vdd FILL
X_1199_ _290_ _291_ vdd gnd INVX1
XFILL_2__1833_ gnd vdd FILL
XFILL_0__1239_ gnd vdd FILL
X_1831_ _783_ _800_ _786_ _803_ vdd gnd NAND3X1
X_1411_ _498_ _500_ _474_ _501_ vdd gnd AOI21X1
XFILL_1__1573_ gnd vdd FILL
XFILL_1__1153_ gnd vdd FILL
XFILL_0__1888_ gnd vdd FILL
XFILL_0__1468_ gnd vdd FILL
XFILL_0__1048_ gnd vdd FILL
XFILL_1__1629_ gnd vdd FILL
XFILL_1__1209_ gnd vdd FILL
X_1640_ ABCmd_i[2] LoadB_i _705_ vdd gnd NAND2X1
X_1220_ _306_ _311_ _312_ vdd gnd NAND2X1
X_971_ _31_ _38_ _34_ _63_ vdd gnd AOI21X1
XFILL_1__1382_ gnd vdd FILL
XFILL_0__1697_ gnd vdd FILL
XFILL_0__1277_ gnd vdd FILL
XFILL_1__1858_ gnd vdd FILL
XFILL_1__1438_ gnd vdd FILL
XFILL_1__1018_ gnd vdd FILL
XFILL_1__1191_ gnd vdd FILL
XFILL_2__1507_ gnd vdd FILL
XFILL_0__1086_ gnd vdd FILL
X_1505_ _592_ _588_ _593_ vdd gnd NAND2X1
XFILL_1__1247_ gnd vdd FILL
XFILL86550x82950 gnd vdd FILL
X_1734_ _874_ _899_ _904_ _860_ _905_ vdd 
+ gnd
+ AOI22X1
X_1314_ MUL_bF$buf3 AI[6] _405_ vdd gnd AND2X2
XFILL_1__1896_ gnd vdd FILL
XFILL_1__1476_ gnd vdd FILL
XFILL_1__1056_ gnd vdd FILL
X_1543_ _579_ _598_ _594_ _630_ vdd gnd AOI21X1
X_1123_ _212_ _211_ _210_ _215_ vdd gnd AOI21X1
XFILL_1__1285_ gnd vdd FILL
XFILL_2__1774_ gnd vdd FILL
XFILL_0__927_ gnd vdd FILL
X_1772_ _747_ _748_ vdd gnd INVX1
X_1352_ _332_ _336_ _287_ _443_ vdd gnd AOI21X1
XFILL_1__1094_ gnd vdd FILL
XFILL_0__1812_ gnd vdd FILL
X_1828_ _796_ _798_ _799_ _800_ vdd gnd OAI21X1
X_1408_ _416_ _413_ _497_ _498_ vdd gnd NAND3X1
X_1581_ _666_ _667_ vdd gnd INVX1
X_1161_ _230_ _231_ _229_ _253_ vdd gnd AOI21X1
XFILL_1__943_ gnd vdd FILL
XFILL_0__1621_ gnd vdd FILL
XFILL_0__1201_ gnd vdd FILL
X_1637_ LoadB_i _53_ _703_ _18_ vdd gnd OAI21X1
X_1217_ BI[3] _309_ vdd gnd INVX1
XFILL_0__965_ gnd vdd FILL
X_968_ _55_ _60_ vdd gnd INVX1
XFILL_1__1799_ gnd vdd FILL
XFILL_1__1379_ gnd vdd FILL
X_1390_ AI[6] _480_ vdd gnd INVX1
XFILL_0__1850_ gnd vdd FILL
XFILL_2__1448_ gnd vdd FILL
XFILL_0__1430_ gnd vdd FILL
XFILL_0__1010_ gnd vdd FILL
X_1866_ _786_ _783_ _834_ _835_ vdd gnd AOI21X1
X_1446_ _530_ _534_ _532_ _535_ vdd gnd NAND3X1
X_1026_ _107_ _112_ _117_ _118_ vdd gnd NAND3X1
XFILL_1__1188_ gnd vdd FILL
XFILL_1__981_ gnd vdd FILL
XFILL_1__1820_ gnd vdd FILL
XFILL_1__1400_ gnd vdd FILL
X_1675_ _16_ clk_bF$buf1 AI[6] vdd gnd DFFPOSX1
X_1255_ _346_ _342_ _284_ _347_ vdd gnd OAI21X1
XFILL_0__1715_ gnd vdd FILL
X_1484_ Flag_i ACC[3] _365_ _573_ vdd gnd OAI21X1
X_1064_ _152_ _153_ _155_ _156_ vdd gnd OAI21X1
XFILL86850x57750 gnd vdd FILL
XFILL_0__1524_ gnd vdd FILL
XFILL_0__1104_ gnd vdd FILL
X_1293_ _37_ _384_ vdd gnd INVX1
XFILL_0__1753_ gnd vdd FILL
XFILL_0__1333_ gnd vdd FILL
X_1769_ alu_op_2_bF$buf3 BI[3] _744_ _745_ vdd gnd AOI21X1
X_1349_ _433_ _436_ _381_ _440_ vdd gnd OAI21X1
XFILL_0__1809_ gnd vdd FILL
XFILL_0__1562_ gnd vdd FILL
XFILL_0__1142_ gnd vdd FILL
XFILL_1__1723_ gnd vdd FILL
XFILL_1__1303_ gnd vdd FILL
X_1578_ _662_ _663_ _664_ vdd gnd OR2X2
X_1158_ _225_ _47_ _46_ _250_ vdd gnd OAI21X1
XFILL_0__1618_ gnd vdd FILL
XFILL_0__1791_ gnd vdd FILL
XFILL_2__1389_ gnd vdd FILL
XFILL_0__1371_ gnd vdd FILL
XFILL_1__1532_ gnd vdd FILL
XFILL_1__1112_ gnd vdd FILL
X_1387_ MUL_bF$buf3 AI[6] BI[4] _477_ vdd gnd NAND3X1
XFILL_0__1847_ gnd vdd FILL
XFILL_0__1427_ gnd vdd FILL
XFILL_0__1007_ gnd vdd FILL
XFILL_0__1180_ gnd vdd FILL
X_930_ _720_ _721_ _722_ vdd gnd NOR2X1
XFILL_1__1761_ gnd vdd FILL
XFILL_1__1341_ gnd vdd FILL
X_1196_ BI[7] _288_ vdd gnd INVX1
XFILL_1__978_ gnd vdd FILL
XFILL_0__1236_ gnd vdd FILL
XFILL_1__1817_ gnd vdd FILL
XFILL_1__1570_ gnd vdd FILL
XFILL_1__1150_ gnd vdd FILL
XBUFX2_insert10 MUL MUL_bF$buf0 vdd gnd BUFX2
XBUFX2_insert11 alu_op[2] alu_op_2_bF$buf3 vdd gnd BUFX2
XBUFX2_insert12 alu_op[2] alu_op_2_bF$buf2 vdd gnd BUFX2
XBUFX2_insert13 alu_op[2] alu_op_2_bF$buf1 vdd gnd BUFX2
XBUFX2_insert14 alu_op[2] alu_op_2_bF$buf0 vdd gnd BUFX2
XFILL_0__1885_ gnd vdd FILL
XFILL_0__1465_ gnd vdd FILL
XFILL_0__1045_ gnd vdd FILL
XFILL_1__1626_ gnd vdd FILL
XFILL_1__1206_ gnd vdd FILL
XFILL_0__1694_ gnd vdd FILL
XFILL_0__1274_ gnd vdd FILL
XFILL_1__1855_ gnd vdd FILL
XFILL_1__1435_ gnd vdd FILL
XFILL_1__1015_ gnd vdd FILL
XFILL_0__1083_ gnd vdd FILL
X_1502_ _u_ALU8.AI7_ _589_ _590_ vdd gnd NAND2X1
XFILL_1__1244_ gnd vdd FILL
X_1099_ BI[7] _68_ _191_ vdd gnd NAND2X1
XFILL_0__1559_ gnd vdd FILL
XFILL_0__1139_ gnd vdd FILL
X_1731_ _901_ _900_ _902_ vdd gnd NAND2X1
X_1311_ _401_ _44_ _399_ _402_ vdd gnd OAI21X1
XFILL_1__1893_ gnd vdd FILL
XFILL_1__1473_ gnd vdd FILL
XFILL_1__1053_ gnd vdd FILL
XFILL_2__1122_ gnd vdd FILL
XFILL_0__1788_ gnd vdd FILL
XFILL_0__1368_ gnd vdd FILL
XFILL_1__1529_ gnd vdd FILL
XFILL_1__1109_ gnd vdd FILL
X_1540_ Flag_i MulL_i _627_ vdd gnd NOR2X1
X_1120_ _190_ _186_ _207_ _212_ vdd gnd OAI21X1
XFILL_1__1282_ gnd vdd FILL
XFILL_0__1597_ gnd vdd FILL
XFILL_0__1177_ gnd vdd FILL
XFILL_0__924_ gnd vdd FILL
X_927_ _718_ _714_ _719_ vdd gnd OR2X2
XFILL_1__1758_ gnd vdd FILL
XFILL_1__1338_ gnd vdd FILL
XFILL_1__1091_ gnd vdd FILL
X_1825_ alu_op_2_bF$buf2 BI[6] _858_ _797_ vdd gnd OAI21X1
X_1405_ _395_ _421_ _426_ _495_ vdd gnd OAI21X1
XFILL_1__1567_ gnd vdd FILL
XFILL_1__1147_ gnd vdd FILL
XFILL_1__940_ gnd vdd FILL
X_1634_ ABCmd_i[7] LoadA_i _702_ vdd gnd NAND2X1
X_1214_ _304_ _305_ _302_ _306_ vdd gnd OAI21X1
XFILL_0__962_ gnd vdd FILL
X_965_ _56_ _57_ vdd gnd INVX1
XFILL_1__1796_ gnd vdd FILL
XFILL_1__1376_ gnd vdd FILL
X_1863_ _870_ _868_ _832_ vdd gnd NOR2X1
X_1443_ AI[5] _134_ _531_ _532_ vdd gnd NAND3X1
X_1023_ _109_ _115_ vdd gnd INVX1
XFILL_1__1185_ gnd vdd FILL
X_1672_ _13_ clk_bF$buf0 AI[3] vdd gnd DFFPOSX1
X_1252_ _332_ _336_ _338_ _344_ vdd gnd NAND3X1
XFILL_0__1712_ gnd vdd FILL
XFILL_2__1063_ gnd vdd FILL
X_1728_ alu_op_2_bF$buf0 _858_ _898_ _899_ vdd gnd OAI21X1
X_1308_ MUL_bF$buf0 AI[6] BI[3] _399_ vdd gnd NAND3X1
X_1481_ _270_ _569_ MulL_i _570_ vdd gnd OAI21X1
X_1061_ _150_ _151_ _153_ vdd gnd AND2X2
XFILL_0__1521_ gnd vdd FILL
XFILL_0__1101_ gnd vdd FILL
X_1537_ _255_ _279_ _624_ vdd gnd NAND2X1
X_1117_ _208_ _204_ _147_ _209_ vdd gnd NAND3X1
XFILL_1__1699_ gnd vdd FILL
XFILL_1__1279_ gnd vdd FILL
X_1290_ _333_ _335_ _380_ _381_ vdd gnd AOI21X1
XFILL_2__1768_ gnd vdd FILL
XFILL_0__1750_ gnd vdd FILL
XFILL_0__1330_ gnd vdd FILL
X_1766_ AI[3] _739_ _868_ _742_ vdd gnd OAI21X1
X_1346_ _436_ _433_ _432_ _437_ vdd gnd OAI21X1
XFILL_1__1088_ gnd vdd FILL
XFILL_0__1806_ gnd vdd FILL
XFILL_1__1720_ gnd vdd FILL
XFILL_1__1300_ gnd vdd FILL
X_1575_ _602_ _646_ _645_ _661_ vdd gnd OAI21X1
X_1155_ BI[3] _68_ _247_ vdd gnd NAND2X1
XFILL_1__937_ gnd vdd FILL
XFILL_0__1615_ gnd vdd FILL
XFILL_0__959_ gnd vdd FILL
X_1384_ _470_ _473_ _474_ vdd gnd NAND2X1
XFILL_0__1844_ gnd vdd FILL
XFILL_0__1424_ gnd vdd FILL
XFILL_0__1004_ gnd vdd FILL
XFILL_2__953_ gnd vdd FILL
X_1193_ _197_ _194_ _285_ vdd gnd NOR2X1
XFILL_1__975_ gnd vdd FILL
XFILL_0__1233_ gnd vdd FILL
XFILL_1__1814_ gnd vdd FILL
XFILL86850x43350 gnd vdd FILL
X_1669_ _10_ clk_bF$buf0 AI[0] vdd gnd DFFPOSX1
X_1249_ _339_ _340_ _338_ _341_ vdd gnd OAI21X1
XFILL_0__997_ gnd vdd FILL
XFILL_0__1709_ gnd vdd FILL
XFILL_0__1882_ gnd vdd FILL
XFILL_0__1462_ gnd vdd FILL
XFILL_0__1042_ gnd vdd FILL
XFILL_1__1623_ gnd vdd FILL
XFILL_1__1203_ gnd vdd FILL
X_1478_ _562_ _565_ _566_ _567_ vdd gnd OAI21X1
X_1058_ MUL_bF$buf5 BI[1] AI[6] _150_ vdd gnd NAND3X1
XFILL_0__1518_ gnd vdd FILL
XFILL_0__1691_ gnd vdd FILL
XFILL_0__1271_ gnd vdd FILL
XFILL_1__1852_ gnd vdd FILL
XFILL_1__1432_ gnd vdd FILL
XFILL_1__1012_ gnd vdd FILL
X_1287_ _290_ _298_ _294_ _378_ vdd gnd OAI21X1
XFILL_0__1747_ gnd vdd FILL
XFILL_0__1327_ gnd vdd FILL
XFILL_0__1080_ gnd vdd FILL
XFILL_1__1241_ gnd vdd FILL
X_1096_ _180_ _179_ _177_ _188_ vdd gnd OAI21X1
XFILL_0__1556_ gnd vdd FILL
XFILL_0__1136_ gnd vdd FILL
XFILL_1__1717_ gnd vdd FILL
XFILL_1__1890_ gnd vdd FILL
XFILL_1__1470_ gnd vdd FILL
XFILL_1__1050_ gnd vdd FILL
XFILL_0__1785_ gnd vdd FILL
XFILL_0__1365_ gnd vdd FILL
XFILL_1__1526_ gnd vdd FILL
XFILL_1__1106_ gnd vdd FILL
XFILL_0__1594_ gnd vdd FILL
XFILL_0__1174_ gnd vdd FILL
XFILL_0__921_ gnd vdd FILL
X_924_ AI[1] _716_ vdd gnd INVX2
XFILL_1__1755_ gnd vdd FILL
XFILL_1__1335_ gnd vdd FILL
X_1822_ _862_ BI[6] _793_ _863_ _794_ vdd 
+ gnd
+ AOI22X1
X_1402_ _487_ _492_ vdd gnd INVX1
XFILL_1__1564_ gnd vdd FILL
XFILL_1__1144_ gnd vdd FILL
XFILL_2__1213_ gnd vdd FILL
XFILL_0__1879_ gnd vdd FILL
XFILL_0__1459_ gnd vdd FILL
XFILL_0__1039_ gnd vdd FILL
X_1631_ LoadA_i _401_ _700_ _15_ vdd gnd OAI21X1
X_1211_ MUL_bF$buf5 AI[5] BI[3] _303_ vdd gnd NAND3X1
X_962_ MUL_bF$buf2 AI[5] _54_ vdd gnd NAND2X1
XFILL_1__1793_ gnd vdd FILL
XFILL_1__1373_ gnd vdd FILL
XFILL_2__1442_ gnd vdd FILL
XFILL_0__1688_ gnd vdd FILL
XFILL_0__1268_ gnd vdd FILL
XFILL_1__1849_ gnd vdd FILL
XFILL_1__1429_ gnd vdd FILL
XFILL_1__1009_ gnd vdd FILL
X_1860_ _828_ _829_ vdd gnd INVX1
X_1440_ BI[7] _464_ _529_ vdd gnd NAND2X1
X_1020_ _725_ _44_ _110_ _112_ vdd gnd OAI21X1
XFILL_1__1182_ gnd vdd FILL
XFILL_0__1497_ gnd vdd FILL
XFILL_0__1077_ gnd vdd FILL
XFILL_1__1238_ gnd vdd FILL
X_1725_ _895_ _894_ _891_ _896_ vdd gnd MUX2X1
X_1305_ MUL_bF$buf3 AI[4] BI[5] _396_ vdd gnd NAND3X1
XFILL_1__1887_ gnd vdd FILL
XFILL_1__1467_ gnd vdd FILL
XFILL_1__1047_ gnd vdd FILL
XFILL86250x68550 gnd vdd FILL
X_1534_ _620_ _621_ _619_ _622_ vdd gnd OAI21X1
X_1114_ _178_ _185_ _148_ _206_ vdd gnd NAND3X1
XFILL_1__1696_ gnd vdd FILL
XFILL_1__1276_ gnd vdd FILL
X_1763_ _864_ BI[3] _739_ vdd gnd AND2X2
X_1343_ _427_ _425_ _434_ vdd gnd NAND2X1
XFILL_1__1085_ gnd vdd FILL
XFILL_0__1803_ gnd vdd FILL
XFILL_2__1154_ gnd vdd FILL
X_1819_ _u_ALU8.AI7_ _791_ vdd gnd INVX1
X_1572_ _712_ _657_ _658_ vdd gnd NAND2X1
X_1152_ _241_ _243_ _240_ _244_ vdd gnd OAI21X1
XFILL_1__934_ gnd vdd FILL
XFILL_0__1612_ gnd vdd FILL
XFILL_2__1383_ gnd vdd FILL
X_1628_ ABCmd_i[4] LoadA_i _699_ vdd gnd NAND2X1
X_1208_ _299_ _296_ _300_ vdd gnd NAND2X1
XFILL_0__956_ gnd vdd FILL
X_959_ MUL_bF$buf2 BI[0] AI[5] _51_ vdd gnd NAND3X1
X_1381_ _465_ _468_ _471_ vdd gnd NOR2X1
XFILL_0__1841_ gnd vdd FILL
XFILL_2__1859_ gnd vdd FILL
XFILL_0__1421_ gnd vdd FILL
XFILL_0__1001_ gnd vdd FILL
X_1857_ _819_ _818_ _826_ vdd gnd NAND2X1
X_1437_ _460_ _472_ _467_ _526_ vdd gnd OAI21X1
X_1017_ MUL_bF$buf1 BI[4] AI[2] _109_ vdd gnd NAND3X1
XFILL_1__1599_ gnd vdd FILL
XFILL_1__1179_ gnd vdd FILL
X_1190_ _256_ _281_ _259_ _282_ vdd gnd OAI21X1
XFILL_1__972_ gnd vdd FILL
XFILL_0__1650_ gnd vdd FILL
XFILL_0__1230_ gnd vdd FILL
XFILL_1__1811_ gnd vdd FILL
X_1666_ _1_ vdd _0_[5] clk_bF$buf3 _919_[5] vdd 
+ gnd
+ DFFSR
X_1246_ _203_ _205_ _190_ _338_ vdd gnd AOI21X1
XFILL_0__994_ gnd vdd FILL
X_997_ _719_ _88_ _87_ _89_ vdd gnd OAI21X1
XFILL_0__1706_ gnd vdd FILL
XFILL86850x64950 gnd vdd FILL
XFILL_1__1620_ gnd vdd FILL
XFILL_1__1200_ gnd vdd FILL
X_1895_ _919_[5] ACC_o[5] vdd gnd BUFX2
X_1475_ _283_ _563_ _564_ vdd gnd NAND2X1
X_1055_ _138_ _140_ _129_ _147_ vdd gnd AOI21X1
XFILL_0__1515_ gnd vdd FILL
X_1284_ _332_ _336_ _375_ vdd gnd NAND2X1
XFILL_0__1744_ gnd vdd FILL
XFILL_0__1324_ gnd vdd FILL
XFILL_1_BUFX2_insert10 gnd vdd FILL
XFILL_1_BUFX2_insert11 gnd vdd FILL
XFILL_1_BUFX2_insert12 gnd vdd FILL
XFILL_1_BUFX2_insert13 gnd vdd FILL
XFILL_1_BUFX2_insert14 gnd vdd FILL
X_1093_ _180_ _179_ _184_ _185_ vdd gnd OAI21X1
XFILL_0__1553_ gnd vdd FILL
XFILL_0__1133_ gnd vdd FILL
XFILL_1__1714_ gnd vdd FILL
X_1569_ _280_ _356_ MulL_i _655_ vdd gnd OAI21X1
X_1149_ BI[2] _68_ _241_ vdd gnd NAND2X1
XFILL_0__1609_ gnd vdd FILL
XFILL_0__1782_ gnd vdd FILL
XFILL_0__1362_ gnd vdd FILL
XFILL_1__1523_ gnd vdd FILL
XFILL_1__1103_ gnd vdd FILL
X_1798_ _767_ _772_ vdd gnd INVX1
X_1378_ _397_ _402_ _462_ _468_ vdd gnd AOI21X1
XFILL_0__1838_ gnd vdd FILL
XFILL_0__1418_ gnd vdd FILL
XFILL_0__1591_ gnd vdd FILL
XFILL_0__1171_ gnd vdd FILL
X_921_ MUL_bF$buf3 BI[4] _713_ vdd gnd AND2X2
XFILL_1__1752_ gnd vdd FILL
XFILL_1__1332_ gnd vdd FILL
X_1187_ _251_ _278_ _277_ _279_ vdd gnd NAND3X1
XFILL_1__969_ gnd vdd FILL
XFILL_0__1647_ gnd vdd FILL
XFILL_0__1227_ gnd vdd FILL
XFILL_1__1808_ gnd vdd FILL
XFILL_1__1561_ gnd vdd FILL
XFILL_1__1141_ gnd vdd FILL
XFILL_0__1876_ gnd vdd FILL
XFILL_0__1456_ gnd vdd FILL
XFILL_0__1036_ gnd vdd FILL
XFILL_1__1617_ gnd vdd FILL
XFILL_1__1790_ gnd vdd FILL
XFILL_1__1370_ gnd vdd FILL
XFILL_0__1685_ gnd vdd FILL
XFILL_0__1265_ gnd vdd FILL
XFILL86550x7350 gnd vdd FILL
XFILL_1__1846_ gnd vdd FILL
XFILL_1__1426_ gnd vdd FILL
XFILL_1__1006_ gnd vdd FILL
XFILL_0__1494_ gnd vdd FILL
XFILL_0__1074_ gnd vdd FILL
XFILL_1__1235_ gnd vdd FILL
X_1722_ alu_op_2_bF$buf0 BI[1] _892_ _893_ vdd gnd AOI21X1
X_1302_ _388_ _391_ _393_ vdd gnd AND2X2
XFILL_1__1884_ gnd vdd FILL
XFILL_1__1464_ gnd vdd FILL
XFILL_1__1044_ gnd vdd FILL
XFILL_2__1533_ gnd vdd FILL
XFILL_0__1779_ gnd vdd FILL
XFILL_0__1359_ gnd vdd FILL
X_1531_ MulL_i _618_ _617_ _619_ vdd gnd NAND3X1
X_1111_ _202_ _199_ _203_ vdd gnd NAND2X1
XFILL_1__1693_ gnd vdd FILL
XFILL_1__1273_ gnd vdd FILL
XFILL_0__1588_ gnd vdd FILL
XFILL_0__1168_ gnd vdd FILL
XFILL_1__1749_ gnd vdd FILL
XFILL_1__1329_ gnd vdd FILL
X_1760_ _732_ _736_ vdd gnd INVX1
X_1340_ _322_ _326_ _328_ _431_ vdd gnd AOI21X1
XFILL_1__1082_ gnd vdd FILL
XFILL_0__1800_ gnd vdd FILL
XFILL_0__1397_ gnd vdd FILL
X_1816_ _786_ _788_ _789_ vdd gnd NAND2X1
XFILL_1__1558_ gnd vdd FILL
XFILL_1__1138_ gnd vdd FILL
XFILL_1__931_ gnd vdd FILL
XFILL_2__1207_ gnd vdd FILL
X_1625_ LoadA_i _725_ _697_ _12_ vdd gnd OAI21X1
X_1205_ _292_ _293_ _297_ vdd gnd NOR2X1
XFILL_0__953_ gnd vdd FILL
X_956_ _46_ _47_ _42_ _48_ vdd gnd OAI21X1
XFILL_1__1787_ gnd vdd FILL
XFILL_1__1367_ gnd vdd FILL
X_1854_ _806_ _823_ _789_ _824_ vdd gnd OAI21X1
X_1434_ _712_ _516_ _523_ _0_[2] vdd gnd OAI21X1
X_1014_ _104_ _105_ _103_ _106_ vdd gnd NAND3X1
XFILL_1__1596_ gnd vdd FILL
XFILL_1__1176_ gnd vdd FILL
X_1663_ _1_ vdd _0_[2] clk_bF$buf4 _919_[2] vdd 
+ gnd
+ DFFSR
X_1243_ _329_ _330_ _301_ _335_ vdd gnd OAI21X1
XFILL_0__991_ gnd vdd FILL
X_994_ _81_ _82_ _85_ _86_ vdd gnd OAI21X1
XFILL_0__1703_ gnd vdd FILL
XFILL_2__1474_ gnd vdd FILL
X_1719_ AI[1] _889_ _868_ _890_ vdd gnd OAI21X1
X_1892_ _919_[2] ACC_o[2] vdd gnd BUFX2
X_1472_ _511_ _560_ _514_ _561_ vdd gnd NAND3X1
X_1052_ _89_ _143_ _144_ vdd gnd NAND2X1
XFILL_0__1512_ gnd vdd FILL
X_1528_ _615_ _610_ _616_ vdd gnd NAND2X1
X_1108_ _197_ _194_ _200_ vdd gnd NAND2X1
X_1281_ AN ACC[1] Flag_i _372_ vdd gnd MUX2X1
XFILL_0__1741_ gnd vdd FILL
XFILL_0__1321_ gnd vdd FILL
X_1757_ _906_ _733_ _897_ _734_ vdd gnd NAND3X1
X_1337_ _414_ _427_ _428_ vdd gnd NAND2X1
XFILL_1__1499_ gnd vdd FILL
XFILL_1__1079_ gnd vdd FILL
X_1090_ MUL_bF$buf0 BI[5] _182_ vdd gnd NAND2X1
XFILL_0__1550_ gnd vdd FILL
XFILL_0__1130_ gnd vdd FILL
XFILL_2__1148_ gnd vdd FILL
XFILL_1__1711_ gnd vdd FILL
X_1566_ _629_ _652_ _0_[5] vdd gnd NAND2X1
X_1146_ MUL_bF$buf0 BI[1] AI[1] _238_ vdd gnd NAND3X1
XFILL_1__928_ gnd vdd FILL
XFILL_0__1606_ gnd vdd FILL
XFILL_1__1520_ gnd vdd FILL
XFILL_1__1100_ gnd vdd FILL
X_1795_ _769_ _737_ _909_ _770_ vdd gnd OAI21X1
X_1375_ BI[6] _464_ _465_ vdd gnd NAND2X1
XFILL_0__1835_ gnd vdd FILL
XFILL_0__1415_ gnd vdd FILL
X_1184_ _275_ _274_ _252_ _276_ vdd gnd NOR3X1
XFILL_1__966_ gnd vdd FILL
XFILL86850x50550 gnd vdd FILL
XFILL_0__1644_ gnd vdd FILL
XFILL_0__1224_ gnd vdd FILL
XFILL_1__1805_ gnd vdd FILL
XFILL_0__988_ gnd vdd FILL
XFILL_0__1873_ gnd vdd FILL
XFILL_0__1453_ gnd vdd FILL
XFILL_0__1033_ gnd vdd FILL
XFILL_1__1614_ gnd vdd FILL
X_1889_ _854_ _856_ AV vdd gnd AND2X2
X_1469_ _458_ _557_ _504_ _558_ vdd gnd OAI21X1
X_1049_ _120_ _124_ _90_ _141_ vdd gnd NAND3X1
XFILL_0__1509_ gnd vdd FILL
XFILL_0__1262_ gnd vdd FILL
XFILL_1__1843_ gnd vdd FILL
XFILL_1__1423_ gnd vdd FILL
XFILL_1__1003_ gnd vdd FILL
X_1698_ AI[0] _870_ vdd gnd INVX1
X_1278_ _712_ _362_ _369_ _0_[0] vdd gnd OAI21X1
XFILL_0__1738_ gnd vdd FILL
XFILL_0__1318_ gnd vdd FILL
XFILL_0__1491_ gnd vdd FILL
XFILL_2__1089_ gnd vdd FILL
XFILL_0__1071_ gnd vdd FILL
XFILL_1__1652_ gnd vdd FILL
XFILL_1__1232_ gnd vdd FILL
X_1087_ _163_ _164_ _162_ _179_ vdd gnd AOI21X1
XFILL85650x82950 gnd vdd FILL
XFILL_0__1547_ gnd vdd FILL
XFILL_0__1127_ gnd vdd FILL
XFILL_1__1708_ gnd vdd FILL
XFILL_1__1881_ gnd vdd FILL
XFILL_1__1461_ gnd vdd FILL
XFILL_1__1041_ gnd vdd FILL
XFILL_0__1776_ gnd vdd FILL
XFILL_0__1356_ gnd vdd FILL
XFILL_1__1517_ gnd vdd FILL
XFILL_1__1690_ gnd vdd FILL
XFILL_1__1270_ gnd vdd FILL
XFILL_0__1585_ gnd vdd FILL
XFILL_0__1165_ gnd vdd FILL
XFILL_1__1746_ gnd vdd FILL
XFILL_1__1326_ gnd vdd FILL
XFILL_0__1394_ gnd vdd FILL
X_1813_ _774_ _768_ _785_ _786_ vdd gnd OAI21X1
XFILL_1__1555_ gnd vdd FILL
XFILL_1__1135_ gnd vdd FILL
XFILL_2__979_ gnd vdd FILL
X_1622_ ABCmd_i[1] LoadA_i _696_ vdd gnd NAND2X1
X_1202_ _293_ _292_ _294_ vdd gnd OR2X2
XFILL_0__950_ gnd vdd FILL
X_953_ _43_ _44_ _718_ _45_ vdd gnd OAI21X1
XFILL_1__1784_ gnd vdd FILL
XFILL_1__1364_ gnd vdd FILL
XFILL_0__1259_ gnd vdd FILL
X_1851_ _751_ _820_ _821_ vdd gnd NAND2X1
X_1431_ AZ _364_ _365_ _521_ vdd gnd OAI21X1
X_1011_ _56_ _60_ _52_ _103_ vdd gnd OAI21X1
XFILL_1__1593_ gnd vdd FILL
XFILL_1__1173_ gnd vdd FILL
XFILL_0__1488_ gnd vdd FILL
XFILL_0__1068_ gnd vdd FILL
XFILL_1__1649_ gnd vdd FILL
XFILL_1__1229_ gnd vdd FILL
X_1660_ _9_ clk_bF$buf1 MUL vdd gnd DFFPOSX1
X_1240_ _300_ _331_ _327_ _332_ vdd gnd NAND3X1
X_991_ _74_ _77_ _70_ _83_ vdd gnd NAND3X1
XFILL_0__1700_ gnd vdd FILL
XFILL_0__1297_ gnd vdd FILL
X_1716_ _862_ BI[1] _886_ _863_ _887_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1878_ gnd vdd FILL
XFILL_1__1458_ gnd vdd FILL
XFILL_1__1038_ gnd vdd FILL
XFILL_2__1527_ gnd vdd FILL
X_1525_ _556_ _607_ _612_ _611_ _613_ vdd 
+ gnd
+ AOI22X1
X_1105_ _196_ _197_ vdd gnd INVX1
XFILL_1__1687_ gnd vdd FILL
XFILL_1__1267_ gnd vdd FILL
X_1754_ _730_ _911_ _731_ vdd gnd NAND2X1
X_1334_ _409_ _413_ _425_ vdd gnd AND2X2
XFILL_1__1496_ gnd vdd FILL
XFILL_1__1076_ gnd vdd FILL
X_1563_ _645_ _644_ _650_ vdd gnd AND2X2
X_1143_ _221_ _27_ _723_ _235_ vdd gnd NAND3X1
XFILL_1__925_ gnd vdd FILL
XFILL_0__1603_ gnd vdd FILL
XFILL_2__1794_ gnd vdd FILL
X_1619_ LoadCmd_i _715_ _694_ _9_ vdd gnd OAI21X1
XFILL_0__947_ gnd vdd FILL
X_1792_ _763_ _765_ _766_ _767_ vdd gnd OAI21X1
X_1372_ _398_ _399_ _462_ vdd gnd NOR2X1
XFILL_0__1832_ gnd vdd FILL
XFILL_0__1412_ gnd vdd FILL
X_1848_ _799_ _816_ _802_ _819_ vdd gnd NAND3X1
X_1428_ _365_ _271_ _518_ vdd gnd NOR2X1
X_1008_ _36_ _54_ _93_ _100_ vdd gnd OAI21X1
X_1181_ _248_ _272_ _247_ _273_ vdd gnd OAI21X1
XFILL_1__963_ gnd vdd FILL
XFILL_0__1641_ gnd vdd FILL
XFILL_2__1239_ gnd vdd FILL
XFILL_0__1221_ gnd vdd FILL
XFILL_1__1802_ gnd vdd FILL
X_1657_ _6_ clk_bF$buf3 CI vdd gnd DFFPOSX1
X_1237_ _306_ _311_ _324_ _325_ _329_ vdd 
+ gnd
+ AOI22X1
XFILL_0__985_ gnd vdd FILL
X_988_ _66_ _62_ _79_ _80_ vdd gnd NAND3X1
XFILL_1__1399_ gnd vdd FILL
XFILL_0__1870_ gnd vdd FILL
XFILL_2__1468_ gnd vdd FILL
XFILL_0__1450_ gnd vdd FILL
XFILL_0__1030_ gnd vdd FILL
XFILL_1__1611_ gnd vdd FILL
X_1886_ _852_ _853_ _841_ _854_ vdd gnd NAND3X1
X_1466_ _554_ _550_ _555_ vdd gnd NAND2X1
X_1046_ _137_ _138_ vdd gnd INVX1
XFILL_0__1506_ gnd vdd FILL
XFILL_1__1840_ gnd vdd FILL
XFILL_1__1420_ gnd vdd FILL
XFILL_1__1000_ gnd vdd FILL
X_1695_ BI[0] _866_ _863_ _865_ _867_ vdd 
+ gnd
+ AOI22X1
X_1275_ BI[0] MulL_i _68_ _367_ vdd gnd NAND3X1
XFILL_0__1735_ gnd vdd FILL
XFILL_0__1315_ gnd vdd FILL
X_1084_ _166_ _171_ _175_ _176_ vdd gnd NAND3X1
XFILL_0__1544_ gnd vdd FILL
XFILL_0__1124_ gnd vdd FILL
XFILL_1__1705_ gnd vdd FILL
XFILL_0__1773_ gnd vdd FILL
XFILL_0__1353_ gnd vdd FILL
XFILL_1__1514_ gnd vdd FILL
X_1789_ alu_op_2_bF$buf3 BI[4] _858_ _764_ vdd gnd OAI21X1
X_1369_ _423_ _428_ _415_ _459_ vdd gnd AOI21X1
XFILL_0__1829_ gnd vdd FILL
XFILL_0__1409_ gnd vdd FILL
XFILL_0__1582_ gnd vdd FILL
XFILL_0__1162_ gnd vdd FILL
XFILL_1__1743_ gnd vdd FILL
XFILL_1__1323_ gnd vdd FILL
X_1598_ ABCmd_i[0] LoadCmd_i _681_ vdd gnd NAND2X1
X_1178_ _267_ _269_ _264_ _270_ vdd gnd NAND3X1
XFILL_0__1638_ gnd vdd FILL
XFILL_0__1218_ gnd vdd FILL
XFILL_0__1391_ gnd vdd FILL
X_1810_ _877_ _782_ _780_ _783_ vdd gnd OAI21X1
XFILL_1__1552_ gnd vdd FILL
XFILL_1__1132_ gnd vdd FILL
XFILL_0__1867_ gnd vdd FILL
XFILL_0__1447_ gnd vdd FILL
XFILL_0__1027_ gnd vdd FILL
XFILL_1__1608_ gnd vdd FILL
X_950_ _41_ _29_ _39_ _42_ vdd gnd NAND3X1
XFILL_1__1781_ gnd vdd FILL
XFILL_1__1361_ gnd vdd FILL
XFILL_1__998_ gnd vdd FILL
XFILL_0__1256_ gnd vdd FILL
XFILL_1__1837_ gnd vdd FILL
XFILL_1__1417_ gnd vdd FILL
XFILL_1__1590_ gnd vdd FILL
XFILL_1__1170_ gnd vdd FILL
XFILL_0__1485_ gnd vdd FILL
XFILL_0__1065_ gnd vdd FILL
XFILL_1__1646_ gnd vdd FILL
XFILL_1__1226_ gnd vdd FILL
XFILL_2__1715_ gnd vdd FILL
XFILL_0__1294_ gnd vdd FILL
X_1713_ _861_ _883_ _878_ _884_ vdd gnd OAI21X1
XFILL_1__1875_ gnd vdd FILL
XFILL_1__1455_ gnd vdd FILL
XFILL_1__1035_ gnd vdd FILL
X_1522_ _604_ _606_ _609_ _610_ vdd gnd NAND3X1
X_1102_ _193_ _194_ vdd gnd INVX1
XFILL_1__1264_ gnd vdd FILL
XFILL_0__1579_ gnd vdd FILL
XFILL_0__1159_ gnd vdd FILL
X_1751_ _727_ _728_ vdd gnd INVX1
X_1331_ _415_ _421_ _395_ _422_ vdd gnd OAI21X1
XFILL_1__1493_ gnd vdd FILL
XFILL_1__1073_ gnd vdd FILL
XFILL_0__1388_ gnd vdd FILL
X_1807_ _779_ _778_ _775_ _780_ vdd gnd OAI21X1
XFILL_1__1549_ gnd vdd FILL
XFILL_1__1129_ gnd vdd FILL
X_1560_ _602_ _646_ _610_ _647_ vdd gnd NAND3X1
X_1140_ _231_ _230_ _229_ _232_ vdd gnd NAND3X1
XFILL_1__922_ gnd vdd FILL
XFILL_2__1618_ gnd vdd FILL
XFILL_0__1600_ gnd vdd FILL
XFILL_0__1197_ gnd vdd FILL
X_1616_ LoadCmd_i ABCmd_i[6] _693_ vdd gnd NAND2X1
XFILL_0__944_ gnd vdd FILL
X_947_ _31_ _38_ _35_ _39_ vdd gnd NAND3X1
XFILL_1__1778_ gnd vdd FILL
XFILL_1__1358_ gnd vdd FILL
XFILL_2__1180_ gnd vdd FILL
X_1845_ _812_ _814_ _815_ _816_ vdd gnd OAI21X1
X_1425_ _456_ _513_ _515_ vdd gnd OR2X2
X_1005_ _96_ _97_ vdd gnd INVX1
XFILL_1__1587_ gnd vdd FILL
XFILL_1__1167_ gnd vdd FILL
XFILL_1__960_ gnd vdd FILL
X_1654_ _3_ clk_bF$buf2 alu_op[1] vdd gnd DFFPOSX1
X_1234_ _324_ _325_ _323_ _326_ vdd gnd NAND3X1
XFILL_0__982_ gnd vdd FILL
X_985_ _73_ _77_ vdd gnd INVX1
XFILL_1__1396_ gnd vdd FILL
XFILL_2__1885_ gnd vdd FILL
X_1883_ _850_ _851_ vdd gnd INVX1
X_1463_ _543_ _546_ _551_ _552_ vdd gnd NAND3X1
X_1043_ _134_ _135_ vdd gnd INVX4
XFILL_0__1503_ gnd vdd FILL
X_1519_ _525_ _555_ _511_ _607_ vdd gnd OAI21X1
X_1692_ alu_op[0] _864_ vdd gnd INVX2
X_1272_ Flag_i _364_ vdd gnd INVX1
XFILL_0__1732_ gnd vdd FILL
XFILL_0__1312_ gnd vdd FILL
X_1748_ _917_ _916_ _912_ _918_ vdd gnd OAI21X1
X_1328_ _416_ _418_ _320_ _419_ vdd gnd AOI21X1
X_1081_ _167_ _172_ _173_ vdd gnd NAND2X1
XFILL_2__1559_ gnd vdd FILL
XFILL_0__1541_ gnd vdd FILL
XFILL_0__1121_ gnd vdd FILL
XFILL_1__1702_ gnd vdd FILL
X_1557_ _630_ _643_ _644_ vdd gnd NAND2X1
X_1137_ _227_ _228_ _225_ _229_ vdd gnd AOI21X1
XFILL_1__1299_ gnd vdd FILL
XFILL_0__1770_ gnd vdd FILL
XFILL_0__1350_ gnd vdd FILL
XFILL_1__1511_ gnd vdd FILL
X_1786_ _862_ BI[4] _760_ _863_ _761_ vdd 
+ gnd
+ AOI22X1
X_1366_ _453_ _359_ _455_ _456_ vdd gnd OAI21X1
XFILL_0__1826_ gnd vdd FILL
XFILL_0__1406_ gnd vdd FILL
XFILL_1__1740_ gnd vdd FILL
XFILL_1__1320_ gnd vdd FILL
X_1595_ _678_ _679_ _668_ _675_ _0_[7] vdd 
+ gnd
+ AOI22X1
X_1175_ _265_ _266_ _267_ vdd gnd NOR2X1
XFILL_1__957_ gnd vdd FILL
XFILL_0__1635_ gnd vdd FILL
XFILL_0__1215_ gnd vdd FILL
XFILL_0__979_ gnd vdd FILL
XFILL_0__1864_ gnd vdd FILL
XFILL_0__1444_ gnd vdd FILL
XFILL_0__1024_ gnd vdd FILL
XFILL86550x36150 gnd vdd FILL
XFILL_1__1605_ gnd vdd FILL
XFILL_1__995_ gnd vdd FILL
XFILL_0__1253_ gnd vdd FILL
XFILL_1__1834_ gnd vdd FILL
XFILL_1__1414_ gnd vdd FILL
X_1689_ _860_ _861_ vdd gnd INVX1
X_1269_ _360_ _359_ _361_ vdd gnd NAND2X1
XFILL_0__1729_ gnd vdd FILL
XFILL_0__1309_ gnd vdd FILL
XFILL_0__1482_ gnd vdd FILL
XFILL_0__1062_ gnd vdd FILL
XFILL_1__1643_ gnd vdd FILL
XFILL_1__1223_ gnd vdd FILL
X_1498_ _288_ _54_ _584_ _586_ vdd gnd OAI21X1
X_1078_ MUL_bF$buf2 BI[3] AI[4] _170_ vdd gnd NAND3X1
XFILL_0__1538_ gnd vdd FILL
XFILL_0__1118_ gnd vdd FILL
XFILL86850x79350 gnd vdd FILL
XFILL_0__1291_ gnd vdd FILL
X_1710_ _881_ _880_ _882_ vdd gnd NAND2X1
XFILL_1__1872_ gnd vdd FILL
XFILL_1__1452_ gnd vdd FILL
XFILL_1__1032_ gnd vdd FILL
XFILL_0__1767_ gnd vdd FILL
XFILL_0__1347_ gnd vdd FILL
XFILL_1__1508_ gnd vdd FILL
XFILL_1__1261_ gnd vdd FILL
XFILL_0__1576_ gnd vdd FILL
XFILL_0__1156_ gnd vdd FILL
XFILL_1__1737_ gnd vdd FILL
XFILL_1__1317_ gnd vdd FILL
XFILL_1__1490_ gnd vdd FILL
XFILL_1__1070_ gnd vdd FILL
XFILL_0__1385_ gnd vdd FILL
X_1804_ AI[5] _776_ _777_ vdd gnd NAND2X1
XFILL_1__1546_ gnd vdd FILL
XFILL_1__1126_ gnd vdd FILL
XFILL_0__1194_ gnd vdd FILL
X_1613_ LoadCmd_i ABCmd_i[5] _691_ vdd gnd NAND2X1
XFILL_0__941_ gnd vdd FILL
X_944_ BI[1] _36_ vdd gnd INVX1
XFILL_1__1775_ gnd vdd FILL
XFILL_1__1355_ gnd vdd FILL
XFILL_2__1004_ gnd vdd FILL
X_1842_ alu_op_2_bF$buf2 BI[7] _858_ _813_ vdd gnd OAI21X1
X_1422_ _511_ _508_ _512_ vdd gnd NAND2X1
X_1002_ _92_ _93_ _94_ vdd gnd NOR2X1
XFILL_1__1584_ gnd vdd FILL
XFILL_1__1164_ gnd vdd FILL
XFILL_2__1233_ gnd vdd FILL
XFILL_0__1479_ gnd vdd FILL
XFILL_0__1059_ gnd vdd FILL
XFILL86250x82950 gnd vdd FILL
X_1651_ ABCmd_i[7] LoadB_i _711_ vdd gnd NAND2X1
X_1231_ _311_ _306_ _323_ vdd gnd AND2X2
X_982_ _716_ _44_ _72_ _74_ vdd gnd OAI21X1
XFILL_1__1393_ gnd vdd FILL
XFILL_2__1709_ gnd vdd FILL
XFILL_0__1288_ gnd vdd FILL
X_1707_ _874_ _876_ _878_ _879_ vdd gnd OAI21X1
XFILL85950x64950 gnd vdd FILL
XFILL_1__1869_ gnd vdd FILL
XFILL_1__1449_ gnd vdd FILL
XFILL_1__1029_ gnd vdd FILL
X_1880_ _u_ALU8.AI7_ _847_ _848_ vdd gnd NAND2X1
X_1460_ _487_ _501_ _548_ _549_ vdd gnd OAI21X1
X_1040_ _131_ _130_ _132_ vdd gnd OR2X2
XFILL_0__1500_ gnd vdd FILL
XFILL_0__1097_ gnd vdd FILL
X_1516_ _603_ _604_ vdd gnd INVX1
XFILL_1__1258_ gnd vdd FILL
X_1745_ AI[2] _914_ _915_ vdd gnd NAND2X1
X_1325_ _314_ _315_ _416_ vdd gnd OR2X2
XFILL_1__1487_ gnd vdd FILL
XFILL_1__1067_ gnd vdd FILL
X_1554_ _633_ _641_ vdd gnd INVX1
X_1134_ _718_ _714_ _226_ vdd gnd AND2X2
XFILL_1__1296_ gnd vdd FILL
XFILL_0__938_ gnd vdd FILL
X_1783_ shr AI[5] _758_ vdd gnd NAND2X1
X_1363_ _352_ _451_ _453_ vdd gnd NAND2X1
XFILL_0__1823_ gnd vdd FILL
XFILL_0__1403_ gnd vdd FILL
XFILL_2__1174_ gnd vdd FILL
X_1839_ _862_ BI[7] _809_ _863_ _810_ vdd 
+ gnd
+ AOI22X1
X_1419_ _422_ _429_ _432_ _509_ vdd gnd AOI21X1
X_1592_ _676_ _358_ _365_ _677_ vdd gnd AOI21X1
X_1172_ _263_ _241_ _264_ vdd gnd OR2X2
XFILL_1__954_ gnd vdd FILL
XFILL_0__1632_ gnd vdd FILL
XFILL_0__1212_ gnd vdd FILL
X_1648_ LoadB_i _708_ _709_ _23_ vdd gnd OAI21X1
X_1228_ _153_ _154_ _157_ _320_ vdd gnd OAI21X1
XFILL_0__976_ gnd vdd FILL
X_979_ MUL_bF$buf4 BI[4] AI[1] _71_ vdd gnd NAND3X1
XFILL_2__1879_ gnd vdd FILL
XFILL_0__1861_ gnd vdd FILL
XFILL_0__1441_ gnd vdd FILL
XFILL_0__1021_ gnd vdd FILL
XFILL_1__1602_ gnd vdd FILL
X_1877_ _814_ _845_ vdd gnd INVX1
X_1457_ _535_ _545_ _544_ _546_ vdd gnd NAND3X1
X_1037_ _127_ _128_ _126_ _129_ vdd gnd AOI21X1
XFILL_1__1199_ gnd vdd FILL
XFILL_1__992_ gnd vdd FILL
XFILL_0__1250_ gnd vdd FILL
XFILL_1__1831_ gnd vdd FILL
XFILL_1__1411_ gnd vdd FILL
X_1686_ alu_op[3] _858_ vdd gnd INVX4
X_1266_ _280_ _356_ _357_ _358_ vdd gnd OAI21X1
XFILL_0__1726_ gnd vdd FILL
XFILL_0__1306_ gnd vdd FILL
XFILL_1__1640_ gnd vdd FILL
XFILL_1__1220_ gnd vdd FILL
XFILL85950x7350 gnd vdd FILL
X_1495_ _538_ _539_ _582_ _583_ vdd gnd OAI21X1
X_1075_ _166_ _167_ vdd gnd INVX1
XFILL_0__1535_ gnd vdd FILL
XFILL_0__1115_ gnd vdd FILL
XFILL_0__1764_ gnd vdd FILL
XFILL_0__1344_ gnd vdd FILL
XFILL86850x10950 gnd vdd FILL
XFILL_1__1505_ gnd vdd FILL
XFILL_0__1573_ gnd vdd FILL
XFILL_0__1153_ gnd vdd FILL
XFILL_1__1734_ gnd vdd FILL
XFILL_1__1314_ gnd vdd FILL
X_1589_ _582_ _634_ _665_ _674_ vdd gnd OAI21X1
X_1169_ _248_ _261_ vdd gnd INVX1
XFILL_0__1629_ gnd vdd FILL
XFILL_0__1209_ gnd vdd FILL
XFILL_0__1382_ gnd vdd FILL
X_1801_ _766_ _774_ vdd gnd INVX1
XFILL_1__1543_ gnd vdd FILL
XFILL_1__1123_ gnd vdd FILL
X_1398_ _416_ _486_ _413_ _488_ vdd gnd NAND3X1
XFILL_0__1858_ gnd vdd FILL
XFILL_0__1438_ gnd vdd FILL
XFILL_0__1018_ gnd vdd FILL
XFILL_0__1191_ gnd vdd FILL
X_1610_ LoadCmd_i ABCmd_i[4] _689_ vdd gnd NAND2X1
X_941_ MUL_bF$buf4 BI[1] AI[3] _33_ vdd gnd NAND3X1
XFILL_1__1772_ gnd vdd FILL
XFILL_1__1352_ gnd vdd FILL
XFILL_1__989_ gnd vdd FILL
XFILL_0__1247_ gnd vdd FILL
XFILL_1__1828_ gnd vdd FILL
XFILL_1__1408_ gnd vdd FILL
XFILL_1__1581_ gnd vdd FILL
XFILL_1__1161_ gnd vdd FILL
XFILL_0__1896_ gnd vdd FILL
XFILL_0__1476_ gnd vdd FILL
XFILL_0__1056_ gnd vdd FILL
XFILL_1__1637_ gnd vdd FILL
XFILL_1__1217_ gnd vdd FILL
XFILL_1__1390_ gnd vdd FILL
XFILL_0_BUFX2_insert5 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0_BUFX2_insert7 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
XFILL_0_BUFX2_insert9 gnd vdd FILL
XFILL_0__1285_ gnd vdd FILL
X_1704_ BI[0] alu_op_2_bF$buf1 _875_ _876_ vdd gnd AOI21X1
XFILL_1__1866_ gnd vdd FILL
XFILL_1__1446_ gnd vdd FILL
XFILL_1__1026_ gnd vdd FILL
XFILL_0__1094_ gnd vdd FILL
X_1513_ _577_ _600_ _601_ vdd gnd NAND2X1
XFILL_1__1255_ gnd vdd FILL
XFILL_2__1324_ gnd vdd FILL
X_1742_ shr AI[3] _912_ vdd gnd NAND2X1
X_1322_ _410_ _412_ _411_ _413_ vdd gnd NAND3X1
XFILL_1__1484_ gnd vdd FILL
XFILL_1__1064_ gnd vdd FILL
XFILL_2__1553_ gnd vdd FILL
XFILL_0__1799_ gnd vdd FILL
XFILL_0__1379_ gnd vdd FILL
X_1551_ _590_ _587_ _636_ _638_ vdd gnd OAI21X1
X_1131_ _34_ _40_ _31_ _223_ vdd gnd OAI21X1
XFILL_1__1293_ gnd vdd FILL
XFILL_2_BUFX2_insert8 gnd vdd FILL
XFILL_0__1188_ gnd vdd FILL
X_1607_ LoadCmd_i ABCmd_i[3] _687_ vdd gnd NAND2X1
XFILL_0__935_ gnd vdd FILL
X_938_ MUL_bF$buf4 BI[2] AI[2] _30_ vdd gnd NAND3X1
XFILL_1__1769_ gnd vdd FILL
XFILL_1__1349_ gnd vdd FILL
X_1780_ _732_ _731_ _755_ vdd gnd NAND2X1
X_1360_ _442_ _447_ _451_ vdd gnd AND2X2
XFILL_0__1820_ gnd vdd FILL
XFILL_0__1400_ gnd vdd FILL
X_1836_ shr CI _807_ vdd gnd NAND2X1
X_1416_ _457_ _504_ _505_ _506_ vdd gnd NAND3X1
XFILL_1__1578_ gnd vdd FILL
XFILL_1__1158_ gnd vdd FILL
XFILL_1__951_ gnd vdd FILL
XFILL85950x50550 gnd vdd FILL
X_1645_ LoadB_i _169_ _707_ _22_ vdd gnd OAI21X1
X_1225_ _314_ _315_ _317_ vdd gnd AND2X2
XFILL_0__973_ gnd vdd FILL
X_976_ _67_ _68_ vdd gnd INVX2
XFILL_1__1387_ gnd vdd FILL
X_1874_ _790_ _801_ _805_ _842_ vdd gnd AOI21X1
X_1454_ _537_ _536_ _542_ _543_ vdd gnd OAI21X1
X_1034_ _79_ _66_ _81_ _126_ vdd gnd AOI21X1
XFILL_1__1196_ gnd vdd FILL
XFILL_2__1265_ gnd vdd FILL
X_1683_ _24_ clk_bF$buf1 BI[6] vdd gnd DFFPOSX1
X_1263_ _219_ _355_ vdd gnd INVX1
XFILL_0__1723_ gnd vdd FILL
XFILL_0__1303_ gnd vdd FILL
XFILL_2__1494_ gnd vdd FILL
X_1739_ _909_ ACC[1] vdd gnd INVX1
X_1319_ _396_ _404_ _406_ _410_ vdd gnd NAND3X1
X_1492_ _579_ _580_ vdd gnd INVX1
X_1072_ _152_ _153_ _154_ _164_ vdd gnd OAI21X1
XFILL_0__1532_ gnd vdd FILL
XFILL_0__1112_ gnd vdd FILL
X_1548_ _288_ _158_ _417_ _135_ _635_ vdd 
+ gnd
+ OAI22X1
X_1128_ _714_ _718_ _220_ vdd gnd NOR2X1
XFILL_0__1761_ gnd vdd FILL
XFILL_0__1341_ gnd vdd FILL
XFILL_1__1502_ gnd vdd FILL
X_1777_ BCD _752_ vdd gnd INVX1
X_1357_ _447_ _442_ _448_ vdd gnd NAND2X1
XFILL_1__1099_ gnd vdd FILL
XFILL_0__1817_ gnd vdd FILL
XFILL_0__1570_ gnd vdd FILL
XFILL_0__1150_ gnd vdd FILL
XFILL_1__1731_ gnd vdd FILL
XFILL_1__1311_ gnd vdd FILL
X_1586_ _671_ _666_ _670_ _672_ vdd gnd NAND3X1
X_1166_ _139_ _142_ _257_ _258_ vdd gnd NAND3X1
XFILL_1__948_ gnd vdd FILL
XFILL_2__1800_ gnd vdd FILL
XFILL_0__1626_ gnd vdd FILL
XFILL_0__1206_ gnd vdd FILL
XFILL86550x43350 gnd vdd FILL
XFILL_1__1540_ gnd vdd FILL
XFILL_1__1120_ gnd vdd FILL
XCLKBUF1_insert0 clk clk_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert1 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert2 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert3 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert4 clk clk_bF$buf0 vdd gnd CLKBUF1
X_1395_ _483_ _484_ _475_ _485_ vdd gnd OAI21X1
XFILL_0__1855_ gnd vdd FILL
XFILL_0__1435_ gnd vdd FILL
XFILL_0__1015_ gnd vdd FILL
XFILL_1__986_ gnd vdd FILL
XFILL_0__1244_ gnd vdd FILL
XFILL_1__1825_ gnd vdd FILL
XFILL_1__1405_ gnd vdd FILL
XFILL_0__1893_ gnd vdd FILL
XFILL_0__1473_ gnd vdd FILL
XFILL_0__1053_ gnd vdd FILL
XFILL_1__1634_ gnd vdd FILL
XFILL_1__1214_ gnd vdd FILL
X_1489_ _576_ _577_ vdd gnd INVX1
X_1069_ _149_ _156_ _160_ _161_ vdd gnd NAND3X1
XFILL_0__1529_ gnd vdd FILL
XFILL_0__1109_ gnd vdd FILL
XFILL_0__1282_ gnd vdd FILL
X_1701_ AI[1] shr _873_ vdd gnd NAND2X1
XFILL_1__1863_ gnd vdd FILL
XFILL_1__1443_ gnd vdd FILL
XFILL_1__1023_ gnd vdd FILL
X_1298_ _387_ _135_ _388_ _389_ vdd gnd OAI21X1
XFILL_0__1758_ gnd vdd FILL
XFILL_0__1338_ gnd vdd FILL
XFILL_0__1091_ gnd vdd FILL
X_1510_ _546_ _593_ _598_ vdd gnd NAND2X1
XFILL_1__1252_ gnd vdd FILL
XFILL_2__1741_ gnd vdd FILL
XFILL_0__1567_ gnd vdd FILL
XFILL_0__1147_ gnd vdd FILL
XFILL_1__1728_ gnd vdd FILL
XFILL_1__1308_ gnd vdd FILL
XFILL_1__1481_ gnd vdd FILL
XFILL_1__1061_ gnd vdd FILL
XFILL_0__1796_ gnd vdd FILL
XFILL_0__1376_ gnd vdd FILL
XFILL_1__1537_ gnd vdd FILL
XFILL_1__1117_ gnd vdd FILL
XFILL_1__1290_ gnd vdd FILL
XFILL_0__1185_ gnd vdd FILL
X_1604_ LoadCmd_i ABCmd_i[2] _685_ vdd gnd NAND2X1
XFILL_0__932_ gnd vdd FILL
X_935_ _725_ _26_ _720_ _27_ vdd gnd OAI21X1
XFILL_1__1766_ gnd vdd FILL
XFILL_1__1346_ gnd vdd FILL
XFILL86850x18150 gnd vdd FILL
X_1833_ _804_ ACC[6] vdd gnd INVX1
X_1413_ _458_ _502_ _494_ _503_ vdd gnd NAND3X1
XFILL_1__1575_ gnd vdd FILL
XFILL_1__1155_ gnd vdd FILL
XFILL_2__1644_ gnd vdd FILL
XFILL_2__999_ gnd vdd FILL
X_1642_ ABCmd_i[3] LoadB_i _706_ vdd gnd NAND2X1
X_1222_ MUL_bF$buf2 AI[6] BI[2] _314_ vdd gnd NAND3X1
XFILL_0__970_ gnd vdd FILL
X_973_ _55_ _56_ _52_ _65_ vdd gnd NAND3X1
XFILL_1__1384_ gnd vdd FILL
XFILL_0__1699_ gnd vdd FILL
XFILL_0__1279_ gnd vdd FILL
X_1871_ _804_ _789_ _752_ _839_ vdd gnd AOI21X1
X_1451_ _538_ _539_ _540_ vdd gnd OR2X2
X_1031_ _114_ _118_ _123_ vdd gnd AND2X2
XFILL_1__1193_ gnd vdd FILL
XFILL_0__1088_ gnd vdd FILL
X_1507_ _593_ _546_ _595_ vdd gnd AND2X2
XFILL_1__1249_ gnd vdd FILL
X_1680_ _21_ clk_bF$buf0 BI[3] vdd gnd DFFPOSX1
X_1260_ _347_ _351_ _352_ vdd gnd AND2X2
XFILL_0__1720_ gnd vdd FILL
XFILL_2__1318_ gnd vdd FILL
XFILL_0__1300_ gnd vdd FILL
X_1736_ _891_ _893_ _906_ _907_ vdd gnd OAI21X1
X_1316_ _404_ _406_ _396_ _407_ vdd gnd AOI21X1
XFILL_1__1478_ gnd vdd FILL
XFILL_1__1058_ gnd vdd FILL
X_1545_ _135_ _540_ _632_ vdd gnd NOR2X1
X_1125_ _215_ _216_ _132_ _217_ vdd gnd OAI21X1
XFILL_1__1287_ gnd vdd FILL
XFILL_0__929_ gnd vdd FILL
X_1774_ _732_ _747_ _731_ _750_ vdd gnd NAND3X1
X_1354_ _378_ _439_ _440_ _445_ vdd gnd NAND3X1
XFILL_1__1096_ gnd vdd FILL
XFILL_0__1814_ gnd vdd FILL
XFILL_2__1585_ gnd vdd FILL
X_1583_ _646_ _603_ _669_ vdd gnd NOR2X1
X_1163_ _233_ _252_ _254_ _255_ vdd gnd NAND3X1
XFILL_1__945_ gnd vdd FILL
XFILL_0__1623_ gnd vdd FILL
XFILL_0__1203_ gnd vdd FILL
X_1639_ LoadB_i _36_ _704_ _19_ vdd gnd OAI21X1
X_1219_ _307_ _310_ _308_ _311_ vdd gnd NAND3X1
XFILL_0__967_ gnd vdd FILL
X_1392_ _476_ _481_ _479_ _482_ vdd gnd NAND3X1
XFILL_0__1852_ gnd vdd FILL
XFILL_0__1432_ gnd vdd FILL
XFILL_0__1012_ gnd vdd FILL
XFILL86550x64950 gnd vdd FILL
X_1868_ _828_ _835_ _836_ _837_ vdd gnd OAI21X1
X_1448_ _532_ _534_ _530_ _537_ vdd gnd AOI21X1
X_1028_ _102_ _119_ _106_ _120_ vdd gnd NAND3X1
XFILL_1__983_ gnd vdd FILL

.ends
.end
