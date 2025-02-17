*SPICE netlist created from verilog structural netlist module cpu by vlog2Spice (qflow)
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

.subckt cpu vdd gnd AB[0] AB[1] AB[2] AB[3] AB[4]
+ AB[5] AB[6] AB[7] AB[8] AB[9] AB[10] AB[11] AB[12]
+ AB[13] AB[14] AB[15] DI[0] DI[1] DI[2] DI[3] DI[4]
+ DI[5] DI[6] DI[7] DO[0] DO[1] DO[2] DO[3] DO[4]
+ DO[5] DO[6] DO[7] IRQ NMI RDY WE clk
+ reset 

XFILL_2__2620_ gnd vdd FILL
XFILL_2__2200_ gnd vdd FILL
XFILL_4__2966_ gnd vdd FILL
XFILL_4__2546_ gnd vdd FILL
XFILL_4__2126_ gnd vdd FILL
XFILL_0__2866_ gnd vdd FILL
XFILL_0__2446_ gnd vdd FILL
XFILL_0__2026_ gnd vdd FILL
XFILL_5__1830_ gnd vdd FILL
XFILL_7__1848_ gnd vdd FILL
XFILL_1__1822_ gnd vdd FILL
XFILL_3__1748_ gnd vdd FILL
XFILL_5__2615_ gnd vdd FILL
XFILL_1__2607_ gnd vdd FILL
XFILL_4__3084_ gnd vdd FILL
XFILL_4__1817_ gnd vdd FILL
X_3403_ _1__bF$buf3 vdd _72_ clk_bF$buf0 _AXYS[0]_[3] vdd 
+ gnd
+ DFFSR
XFILL_1__2780_ gnd vdd FILL
XFILL_1__2360_ gnd vdd FILL
XFILL_3__2286_ gnd vdd FILL
XFILL_5__3573_ gnd vdd FILL
XFILL_5__3153_ gnd vdd FILL
XFILL_1__3565_ gnd vdd FILL
XFILL_1__3145_ gnd vdd FILL
XFILL_4__1990_ gnd vdd FILL
XFILL_0__1890_ gnd vdd FILL
XFILL_4__2775_ gnd vdd FILL
XFILL_4__2355_ gnd vdd FILL
XFILL_0__2675_ gnd vdd FILL
XFILL_6__3642_ gnd vdd FILL
XFILL_0__2255_ gnd vdd FILL
XFILL_6__3222_ gnd vdd FILL
XFILL_2__3634_ gnd vdd FILL
XFILL_2__3214_ gnd vdd FILL
XFILL_3__1977_ gnd vdd FILL
XFILL_5__2844_ gnd vdd FILL
XFILL_5__2424_ gnd vdd FILL
XFILL_5__2004_ gnd vdd FILL
XFILL_1__2836_ gnd vdd FILL
XFILL_1__2416_ gnd vdd FILL
XFILL_3__3703_ gnd vdd FILL
XFILL_5__3629_ gnd vdd FILL
XFILL_5__3209_ gnd vdd FILL
XFILL169050x64950 gnd vdd FILL
XFILL_7__2195_ gnd vdd FILL
XFILL_0__1946_ gnd vdd FILL
XFILL_6__2913_ gnd vdd FILL
X_3632_ _1602_ _1604_ _1662_ vdd gnd NAND2X1
X_3212_ _744_ _798_ _801_ _87_ vdd gnd AOI21X1
XFILL_3__2095_ gnd vdd FILL
XFILL_2__2905_ gnd vdd FILL
XFILL_4__2584_ gnd vdd FILL
XFILL_4__2164_ gnd vdd FILL
XFILL_0__2484_ gnd vdd FILL
XFILL_6__3451_ gnd vdd FILL
XFILL_0__2064_ gnd vdd FILL
XFILL_6__3031_ gnd vdd FILL
XFILL_2__3023_ gnd vdd FILL
X_2903_ _1185_ _1187_ _550_ vdd gnd NOR2X1
XFILL_1__1860_ gnd vdd FILL
XFILL_3__1786_ gnd vdd FILL
XFILL_0__3269_ gnd vdd FILL
XFILL_5__2653_ gnd vdd FILL
XFILL_5__2233_ gnd vdd FILL
XFILL_1__2645_ gnd vdd FILL
XFILL_7__3612_ gnd vdd FILL
XFILL_1__2225_ gnd vdd FILL
XFILL_3__3512_ gnd vdd FILL
XFILL_5__3018_ gnd vdd FILL
XFILL_4__1855_ gnd vdd FILL
XFILL_0__1755_ gnd vdd FILL
XFILL_6__2722_ gnd vdd FILL
X_3441_ _1__bF$buf4 vdd _109_ clk_bF$buf2 ABH[0] vdd 
+ gnd
+ DFFSR
XFILL_6__2302_ gnd vdd FILL
X_3021_ _950_ _1063_ RDY_bF$buf2 _645_ vdd gnd OAI21X1
XFILL_2__2714_ gnd vdd FILL
XFILL_5__3191_ gnd vdd FILL
XFILL_6__3507_ gnd vdd FILL
XFILL_1__3183_ gnd vdd FILL
XFILL_5__1924_ gnd vdd FILL
XFILL_1__1916_ gnd vdd FILL
XFILL_4__2393_ gnd vdd FILL
XFILL_5__2709_ gnd vdd FILL
XFILL_0__2293_ gnd vdd FILL
XFILL_6__3260_ gnd vdd FILL
XFILL_2__3672_ gnd vdd FILL
XFILL_2__3252_ gnd vdd FILL
XFILL_4__3598_ gnd vdd FILL
XFILL_4__3178_ gnd vdd FILL
X_2712_ _377_ _381_ _382_ vdd gnd NOR2X1
XFILL_0__3498_ gnd vdd FILL
XFILL_0__3078_ gnd vdd FILL
XFILL_5__2882_ gnd vdd FILL
XFILL_5__2462_ gnd vdd FILL
XFILL_5__2042_ gnd vdd FILL
XFILL_1__2874_ gnd vdd FILL
XFILL_1__2454_ gnd vdd FILL
XFILL_1__2034_ gnd vdd FILL
XFILL_7__3001_ gnd vdd FILL
XFILL_5__3667_ gnd vdd FILL
XFILL_5__3247_ gnd vdd FILL
XFILL_1__3659_ gnd vdd FILL
XFILL_1__3239_ gnd vdd FILL
XFILL_0__1984_ gnd vdd FILL
XFILL_6__2951_ gnd vdd FILL
X_3670_ _1693_ _1692_ _1691_ _1521_ vdd gnd OAI21X1
XFILL_6__2531_ gnd vdd FILL
X_3250_ _130_ _825_ _822_ _826_ vdd gnd NAND3X1
XFILL_6__2111_ gnd vdd FILL
XFILL_2__2943_ gnd vdd FILL
XFILL_2__2523_ gnd vdd FILL
XFILL_2__2103_ gnd vdd FILL
XFILL_4__2869_ gnd vdd FILL
XFILL_4__2449_ gnd vdd FILL
XFILL_4__2029_ gnd vdd FILL
XFILL_0__2769_ gnd vdd FILL
XFILL_0__2349_ gnd vdd FILL
XFILL_6__3316_ gnd vdd FILL
XFILL_0__3710_ gnd vdd FILL
XFILL_2__3308_ gnd vdd FILL
XFILL_5__2938_ gnd vdd FILL
XFILL_5__2518_ gnd vdd FILL
XFILL_0_BUFX2_insert20 gnd vdd FILL
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_2__3481_ gnd vdd FILL
XFILL_0_BUFX2_insert22 gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_2__3061_ gnd vdd FILL
XFILL_0_BUFX2_insert24 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_6__1802_ gnd vdd FILL
X_2941_ _583_ _575_ _584_ vdd gnd AND2X2
X_2521_ state[5] _996_ _215_ _216_ vdd gnd OAI21X1
X_2101_ _1209_ _1210_ vdd gnd INVX1
XFILL_5__2691_ gnd vdd FILL
XFILL_5__2271_ gnd vdd FILL
X_3306_ _1741_[10] _869_ _872_ vdd gnd NAND2X1
XFILL_1__2683_ gnd vdd FILL
XFILL_7__3650_ gnd vdd FILL
XFILL_1__2263_ gnd vdd FILL
XFILL_7__3230_ gnd vdd FILL
XFILL_3__2189_ gnd vdd FILL
XFILL_3__3550_ gnd vdd FILL
XFILL_3__3130_ gnd vdd FILL
XFILL_5__3476_ gnd vdd FILL
XFILL_5__3056_ gnd vdd FILL
XFILL_1__3468_ gnd vdd FILL
XFILL_1__3048_ gnd vdd FILL
XFILL_4__1893_ gnd vdd FILL
XFILL_0__1793_ gnd vdd FILL
XFILL_6__2760_ gnd vdd FILL
XFILL_6__2340_ gnd vdd FILL
XFILL_2__2752_ gnd vdd FILL
XFILL_2__2332_ gnd vdd FILL
XFILL_4__2678_ gnd vdd FILL
XFILL_4__2258_ gnd vdd FILL
XFILL_0__2998_ gnd vdd FILL
XFILL_0__2578_ gnd vdd FILL
XFILL_6__3545_ gnd vdd FILL
XFILL_0__2158_ gnd vdd FILL
XFILL_6__3125_ gnd vdd FILL
XFILL_2__3537_ gnd vdd FILL
XFILL_2__3117_ gnd vdd FILL
XFILL_5__1962_ gnd vdd FILL
XFILL_1__1954_ gnd vdd FILL
XFILL_7__2501_ gnd vdd FILL
XFILL_3__2821_ gnd vdd FILL
XFILL_3__2401_ gnd vdd FILL
XFILL_5__2747_ gnd vdd FILL
XFILL_5__2327_ gnd vdd FILL
XFILL_1__2739_ gnd vdd FILL
XFILL_1__2319_ gnd vdd FILL
XFILL_2__3290_ gnd vdd FILL
XFILL_3__3606_ gnd vdd FILL
X_2750_ _392_ _399_ _415_ _416_ vdd gnd NAND3X1
X_2330_ RDY_bF$buf8 _1027__bF$buf1 _1436_ _1437_ vdd gnd OAI21X1
XFILL_4__1949_ gnd vdd FILL
XFILL_5__2080_ gnd vdd FILL
XFILL_7__2098_ gnd vdd FILL
XFILL_0__1849_ gnd vdd FILL
XFILL_6__2816_ gnd vdd FILL
X_3535_ BI[1] _1565_ vdd gnd INVX1
X_3115_ _966_ _1319__bF$buf3 _723_ vdd gnd NAND2X1
XFILL_1__2492_ gnd vdd FILL
XFILL_1__2072_ gnd vdd FILL
XFILL_2__2808_ gnd vdd FILL
XFILL_5__3285_ gnd vdd FILL
XFILL_1__3697_ gnd vdd FILL
XFILL_1__3277_ gnd vdd FILL
XFILL_2__2981_ gnd vdd FILL
XFILL_2__2561_ gnd vdd FILL
XFILL_2__2141_ gnd vdd FILL
XFILL_4__2487_ gnd vdd FILL
XFILL_4__2067_ gnd vdd FILL
XFILL_0__2387_ gnd vdd FILL
XFILL_5__1771_ gnd vdd FILL
X_2806_ _392_ _399_ _469_ vdd gnd NAND2X1
XFILL_1__1763_ gnd vdd FILL
XFILL_7__2730_ gnd vdd FILL
XFILL_3__2630_ gnd vdd FILL
XFILL_3__2210_ gnd vdd FILL
XFILL_5__2976_ gnd vdd FILL
XFILL_5__2556_ gnd vdd FILL
XFILL_5__2136_ gnd vdd FILL
XFILL_1__2968_ gnd vdd FILL
XFILL_1__2548_ gnd vdd FILL
XFILL_1__2128_ gnd vdd FILL
XFILL_6__1840_ gnd vdd FILL
XFILL_2__1832_ gnd vdd FILL
XFILL_4__1758_ gnd vdd FILL
XFILL_6__2625_ gnd vdd FILL
X_3344_ _1__bF$buf3 vdd _21_ clk_bF$buf1 cond_code[2] vdd 
+ gnd
+ DFFSR
XFILL_6__2205_ gnd vdd FILL
XFILL_2__2617_ gnd vdd FILL
XFILL_5__3094_ gnd vdd FILL
XFILL_1__3086_ gnd vdd FILL
XFILL_3__1901_ gnd vdd FILL
XFILL_5__1827_ gnd vdd FILL
XFILL_1__1819_ gnd vdd FILL
XFILL_2__2790_ gnd vdd FILL
XFILL_2__2370_ gnd vdd FILL
XFILL_4__2296_ gnd vdd FILL
X_1830_ _903__bF$buf2 _955_ _956_ vdd gnd NAND2X1
XFILL_6__3583_ gnd vdd FILL
XFILL_0__2196_ gnd vdd FILL
XFILL_6__3163_ gnd vdd FILL
XFILL_2__3575_ gnd vdd FILL
XFILL_2__3155_ gnd vdd FILL
X_2615_ ABH[5] _925_ _198_ ADD[5] _297_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1992_ gnd vdd FILL
XFILL_5__2785_ gnd vdd FILL
XFILL_5__2365_ gnd vdd FILL
XFILL_1__2777_ gnd vdd FILL
XFILL_1__2357_ gnd vdd FILL
XBUFX2_insert37 _720_ _720__bF$buf3 vdd gnd BUFX2
XBUFX2_insert38 _720_ _720__bF$buf2 vdd gnd BUFX2
XFILL_3__3644_ gnd vdd FILL
XBUFX2_insert39 _720_ _720__bF$buf1 vdd gnd BUFX2
XFILL_3__3224_ gnd vdd FILL
XFILL169950x3750 gnd vdd FILL
XFILL_4__1987_ gnd vdd FILL
XFILL_0__1887_ gnd vdd FILL
XFILL_6__2854_ gnd vdd FILL
X_3573_ _1562_ _1600_ _1602_ _1603_ vdd gnd OAI21X1
XFILL_6__2434_ gnd vdd FILL
XFILL_6__2014_ gnd vdd FILL
X_3153_ DIMUX[4] _1018_ _756_ _757_ vdd gnd OAI21X1
XFILL_2__2846_ gnd vdd FILL
XFILL_2__2426_ gnd vdd FILL
XFILL_2__2006_ gnd vdd FILL
XFILL_4__3713_ gnd vdd FILL
XFILL_6__3639_ gnd vdd FILL
XFILL_6__3219_ gnd vdd FILL
XFILL_0__3613_ gnd vdd FILL
XFILL_3__2915_ gnd vdd FILL
X_2844_ _1015_ _351_ _504_ _505_ vdd gnd OAI21X1
X_2424_ _128_ _129_ _131_ alu_op[0] vdd gnd OAI21X1
X_2004_ _1116_ _1117_ vdd gnd INVX1
XFILL_5__2594_ gnd vdd FILL
XFILL_5__2174_ gnd vdd FILL
X_3629_ _1657_ _1656_ _1659_ vdd gnd NAND2X1
X_3209_ _AXYS[2]_[1] _798_ _800_ vdd gnd NOR2X1
XFILL_1__2586_ gnd vdd FILL
XFILL_7__3553_ gnd vdd FILL
XFILL_1__2166_ gnd vdd FILL
XFILL_7__3133_ gnd vdd FILL
XFILL_3__3453_ gnd vdd FILL
XFILL_3__3033_ gnd vdd FILL
XFILL_2__1870_ gnd vdd FILL
XFILL_4__1796_ gnd vdd FILL
XFILL_6__2663_ gnd vdd FILL
X_3382_ _1__bF$buf7 vdd DIMUX[7] clk_bF$buf3 DIHOLD[7] vdd 
+ gnd
+ DFFSR
XFILL_6__2243_ gnd vdd FILL
XFILL_2__2655_ gnd vdd FILL
XFILL_2__2235_ gnd vdd FILL
XFILL_4__3522_ gnd vdd FILL
XFILL_4__3102_ gnd vdd FILL
XFILL_6__3028_ gnd vdd FILL
XFILL_0__3002_ gnd vdd FILL
XFILL_5__1865_ gnd vdd FILL
XFILL_1__1857_ gnd vdd FILL
XFILL_7__2824_ gnd vdd FILL
XFILL_7__2404_ gnd vdd FILL
XFILL_3__2724_ gnd vdd FILL
XFILL_3__2304_ gnd vdd FILL
XFILL_7__3609_ gnd vdd FILL
XFILL_2__3193_ gnd vdd FILL
XFILL_3__3509_ gnd vdd FILL
XFILL_6__1934_ gnd vdd FILL
X_2653_ _929_ _935_ _327_ _328_ vdd gnd AOI21X1
X_2233_ _1340_ _1336_ _1341_ vdd gnd AND2X2
XFILL_2__1926_ gnd vdd FILL
XFILL169950x111750 gnd vdd FILL
XFILL_6__2719_ gnd vdd FILL
X_3438_ _1__bF$buf5 vdd _106_ clk_bF$buf1 ABL[5] vdd 
+ gnd
+ DFFSR
X_3018_ _643_ _620_ _644_ vdd gnd NOR2X1
XFILL_1__2395_ gnd vdd FILL
XFILL169350x39750 gnd vdd FILL
XFILL_3__3262_ gnd vdd FILL
XFILL_5__3188_ gnd vdd FILL
XFILL_6__2892_ gnd vdd FILL
XFILL_6__2472_ gnd vdd FILL
X_3191_ _724_ _789_ _790_ _77_ vdd gnd OAI21X1
XFILL_6__2052_ gnd vdd FILL
XFILL_2__2884_ gnd vdd FILL
XFILL_2__2464_ gnd vdd FILL
XFILL_2__2044_ gnd vdd FILL
X_1924_ _1029_ _1033_ index_y _1041_ vdd gnd OAI21X1
XFILL_6__3677_ gnd vdd FILL
XFILL_6__3257_ gnd vdd FILL
XFILL_2__3669_ gnd vdd FILL
XFILL_0__3651_ gnd vdd FILL
XFILL_0__3231_ gnd vdd FILL
XFILL_2__3249_ gnd vdd FILL
X_2709_ _251_ _378_ _148_ _379_ vdd gnd OAI21X1
XFILL_7__2633_ gnd vdd FILL
XFILL_7__2213_ gnd vdd FILL
XFILL_3__2953_ gnd vdd FILL
XFILL_3__2533_ gnd vdd FILL
XFILL_3__2113_ gnd vdd FILL
XFILL_5__2879_ gnd vdd FILL
XFILL_5__2459_ gnd vdd FILL
XFILL_5__2039_ gnd vdd FILL
X_2882_ _147_ _1150__bF$buf1 _535_ _533_ _23_ vdd 
+ gnd
+ OAI22X1
X_2462_ _162_ _163_ vdd gnd INVX1
X_2042_ IRHOLD[1] _1151_ vdd gnd INVX1
XFILL_4__2602_ gnd vdd FILL
XFILL_6__2948_ gnd vdd FILL
X_3667_ ADD[4] _1714__bF$buf0 _1691_ vdd gnd NAND2X1
XFILL_6__2528_ gnd vdd FILL
X_3247_ _1030_ _823_ vdd gnd INVX1
XFILL_6__2108_ gnd vdd FILL
XFILL_0__2922_ gnd vdd FILL
XFILL_0__2502_ gnd vdd FILL
XFILL_3__3491_ gnd vdd FILL
XFILL_3__3071_ gnd vdd FILL
XFILL_0__3707_ gnd vdd FILL
XFILL_3__1804_ gnd vdd FILL
XFILL_6__2281_ gnd vdd FILL
XFILL_2__2693_ gnd vdd FILL
XFILL_2__2273_ gnd vdd FILL
XFILL_4__2199_ gnd vdd FILL
XFILL_4__3560_ gnd vdd FILL
XFILL_4__3140_ gnd vdd FILL
XFILL_6__3486_ gnd vdd FILL
XFILL_0__2099_ gnd vdd FILL
XFILL_6__3066_ gnd vdd FILL
XFILL_2__3478_ gnd vdd FILL
XFILL_0__3460_ gnd vdd FILL
XFILL_0__3040_ gnd vdd FILL
XFILL_2__3058_ gnd vdd FILL
X_2938_ _550_ _1182_ _581_ vdd gnd NAND2X1
X_2518_ _914__bF$buf3 _974_ _931__bF$buf3 _984_ _213_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1895_ gnd vdd FILL
XFILL_7__2862_ gnd vdd FILL
XFILL_7__2442_ gnd vdd FILL
XFILL_7__2022_ gnd vdd FILL
XFILL_3__2762_ gnd vdd FILL
XFILL_3__2342_ gnd vdd FILL
XFILL_5__2688_ gnd vdd FILL
XFILL_5__2268_ gnd vdd FILL
XFILL_7__3227_ gnd vdd FILL
XFILL_1__3621_ gnd vdd FILL
XFILL_1__3201_ gnd vdd FILL
XFILL_3__3547_ gnd vdd FILL
XFILL_3__3127_ gnd vdd FILL
XFILL_6__1972_ gnd vdd FILL
X_2691_ _362_ _340_ RDY_bF$buf3 _363_ vdd gnd OAI21X1
X_2271_ cond_code[2] _1377_ _1378_ _1379_ vdd gnd OAI21X1
XFILL_2__1964_ gnd vdd FILL
XFILL_4__2831_ gnd vdd FILL
XFILL_4__2411_ gnd vdd FILL
XFILL_6__2757_ gnd vdd FILL
X_3476_ alu_shift_right _1722_ vdd gnd INVX2
XFILL_6__2337_ gnd vdd FILL
X_3056_ plp cld _670_ vdd gnd NOR2X1
XFILL_2__2749_ gnd vdd FILL
XFILL_0__2731_ gnd vdd FILL
XFILL_2__2329_ gnd vdd FILL
XFILL_0__2311_ gnd vdd FILL
XFILL_4__3616_ gnd vdd FILL
XFILL_0__3516_ gnd vdd FILL
XFILL_5__1959_ gnd vdd FILL
XFILL_6__2090_ gnd vdd FILL
XFILL_5__2900_ gnd vdd FILL
XFILL_2__2082_ gnd vdd FILL
XFILL_3__2818_ gnd vdd FILL
X_1962_ _969_ _1078_ _1079_ vdd gnd NAND2X1
XFILL_6__3295_ gnd vdd FILL
XFILL_2__3287_ gnd vdd FILL
X_2747_ _329_ _365_ PC[5] _413_ vdd gnd OAI21X1
X_2327_ _886__bF$buf0 _1079_ _1433_ _1434_ vdd gnd OAI21X1
XFILL_7__2251_ gnd vdd FILL
XFILL_3__2991_ gnd vdd FILL
XFILL_3__2571_ gnd vdd FILL
XFILL_3__2151_ gnd vdd FILL
XFILL_5__2497_ gnd vdd FILL
XFILL_5__2077_ gnd vdd FILL
XFILL_1__2489_ gnd vdd FILL
XFILL_7__3456_ gnd vdd FILL
XFILL_1__2069_ gnd vdd FILL
XFILL_7__3036_ gnd vdd FILL
XFILL_1__3010_ gnd vdd FILL
XFILL_6__1781_ gnd vdd FILL
X_2080_ _1188_ _1189_ vdd gnd INVX1
XFILL_5_BUFX2_insert40 gnd vdd FILL
XFILL_5_BUFX2_insert41 gnd vdd FILL
XFILL_5_BUFX2_insert42 gnd vdd FILL
XFILL_5_BUFX2_insert43 gnd vdd FILL
XFILL_5_BUFX2_insert44 gnd vdd FILL
XFILL_5_BUFX2_insert45 gnd vdd FILL
XFILL_2__1773_ gnd vdd FILL
XFILL_5_BUFX2_insert46 gnd vdd FILL
XFILL_5_BUFX2_insert47 gnd vdd FILL
XFILL_5_BUFX2_insert48 gnd vdd FILL
XFILL_5_BUFX2_insert49 gnd vdd FILL
XFILL_4__2640_ gnd vdd FILL
XFILL_4__2220_ gnd vdd FILL
XFILL_6__2986_ gnd vdd FILL
XFILL_6__2566_ gnd vdd FILL
X_3285_ ABL[0] _860_ _861_ vdd gnd NAND2X1
XFILL_6__2146_ gnd vdd FILL
XFILL_0__2960_ gnd vdd FILL
XFILL_2__2978_ gnd vdd FILL
XFILL_2__2558_ gnd vdd FILL
XFILL_0__2540_ gnd vdd FILL
XFILL_0__2120_ gnd vdd FILL
XFILL_2__2138_ gnd vdd FILL
XFILL_7__1942_ gnd vdd FILL
XFILL_4__3005_ gnd vdd FILL
XFILL_3__1842_ gnd vdd FILL
XFILL_5__1768_ gnd vdd FILL
XFILL_7__2727_ gnd vdd FILL
XFILL_1__2701_ gnd vdd FILL
XFILL_3__2627_ gnd vdd FILL
XFILL_3__2207_ gnd vdd FILL
X_1771_ state[3] _897_ vdd gnd INVX1
XFILL_2__3096_ gnd vdd FILL
XFILL_4__1911_ gnd vdd FILL
XFILL_6__1837_ gnd vdd FILL
X_2976_ _596_ _606_ _1326_ _607_ vdd gnd AOI21X1
X_2556_ _243_ _246_ _247_ vdd gnd AND2X2
X_2136_ _1193_ _1244_ _1243_ _1242_ _1245_ vdd 
+ gnd
+ AOI22X1
XFILL_7__2480_ gnd vdd FILL
XFILL_2__1829_ gnd vdd FILL
XFILL_0__1811_ gnd vdd FILL
XFILL_3__2380_ gnd vdd FILL
XFILL_1__2298_ gnd vdd FILL
XFILL_7__3265_ gnd vdd FILL
XFILL_3__3585_ gnd vdd FILL
XFILL_3__3165_ gnd vdd FILL
XFILL_6__2795_ gnd vdd FILL
XFILL_6__2375_ gnd vdd FILL
X_3094_ _895_ _703_ _704_ vdd gnd NAND2X1
XFILL_2__2787_ gnd vdd FILL
XFILL_2__2367_ gnd vdd FILL
X_1827_ _903__bF$buf3 _952_ _953_ vdd gnd NAND2X1
XFILL_7__1751_ gnd vdd FILL
XFILL_4__3654_ gnd vdd FILL
XFILL_4__3234_ gnd vdd FILL
XFILL_0__3554_ gnd vdd FILL
XFILL_0__3134_ gnd vdd FILL
XFILL_5__1997_ gnd vdd FILL
XFILL_1__1989_ gnd vdd FILL
XFILL_7__2956_ gnd vdd FILL
XFILL_7__2116_ gnd vdd FILL
XFILL_1__2930_ gnd vdd FILL
XFILL_1__2510_ gnd vdd FILL
XFILL_3__2856_ gnd vdd FILL
XFILL_3__2436_ gnd vdd FILL
XFILL_3__2016_ gnd vdd FILL
XFILL_5__3303_ gnd vdd FILL
XFILL_1__3715_ gnd vdd FILL
X_2785_ _448_ _285_ _1154_ _449_ vdd gnd MUX2X1
X_2365_ RDY_bF$buf1 _1470_ _1471_ vdd gnd NOR2X1
XFILL_4__2925_ gnd vdd FILL
XFILL_4__2505_ gnd vdd FILL
XFILL_7__3074_ gnd vdd FILL
XFILL_0__2825_ gnd vdd FILL
XFILL_0__2405_ gnd vdd FILL
XFILL_6__2184_ gnd vdd FILL
XFILL_2__2596_ gnd vdd FILL
XFILL_2__2176_ gnd vdd FILL
XFILL_7__1980_ gnd vdd FILL
XFILL_4__3463_ gnd vdd FILL
XFILL_4__3043_ gnd vdd FILL
XFILL_3__1880_ gnd vdd FILL
XFILL_2_CLKBUF1_insert26 gnd vdd FILL
XFILL_2_CLKBUF1_insert27 gnd vdd FILL
XFILL_2_CLKBUF1_insert28 gnd vdd FILL
XFILL_2_CLKBUF1_insert29 gnd vdd FILL
XFILL_1__1798_ gnd vdd FILL
XFILL_7__2345_ gnd vdd FILL
XFILL_3__2665_ gnd vdd FILL
XFILL_3__2245_ gnd vdd FILL
XFILL_5__3532_ gnd vdd FILL
XFILL_5__3112_ gnd vdd FILL
XFILL_1__3524_ gnd vdd FILL
XFILL_1__3104_ gnd vdd FILL
XFILL_6__1875_ gnd vdd FILL
X_2594_ _276_ _218_ _279_ _1741_[9] vdd gnd OAI21X1
X_2174_ _1172_ _1212_ _1283_ vdd gnd NOR2X1
XFILL_2__1867_ gnd vdd FILL
XFILL_4__2734_ gnd vdd FILL
XFILL_4__2314_ gnd vdd FILL
X_3379_ _1__bF$buf4 vdd DIMUX[4] clk_bF$buf5 DIHOLD[4] vdd 
+ gnd
+ DFFSR
XFILL_0__2634_ gnd vdd FILL
XFILL_6__3601_ gnd vdd FILL
XFILL_0__2214_ gnd vdd FILL
XFILL_4__3519_ gnd vdd FILL
XFILL_3__1936_ gnd vdd FILL
XFILL_5__2803_ gnd vdd FILL
X_1865_ _931__bF$buf4 _989_ _990_ vdd gnd NOR2X1
XFILL_4__3692_ gnd vdd FILL
XFILL_4__3272_ gnd vdd FILL
XFILL_6__3198_ gnd vdd FILL
XFILL_0__3592_ gnd vdd FILL
XFILL_0__3172_ gnd vdd FILL
XFILL_7__2574_ gnd vdd FILL
XFILL_0__1905_ gnd vdd FILL
XFILL_3__2894_ gnd vdd FILL
XFILL_3__2474_ gnd vdd FILL
XFILL_3__2054_ gnd vdd FILL
XFILL_3__3259_ gnd vdd FILL
XFILL_4__2963_ gnd vdd FILL
XFILL_4__2543_ gnd vdd FILL
XFILL_4__2123_ gnd vdd FILL
XFILL_6__2889_ gnd vdd FILL
XFILL_6__2469_ gnd vdd FILL
X_3188_ _722_ _787_ _788_ _76_ vdd gnd OAI21X1
XFILL_6__2049_ gnd vdd FILL
XFILL_0__2863_ gnd vdd FILL
XFILL_0__2443_ gnd vdd FILL
XFILL_0__2023_ gnd vdd FILL
XFILL_7__1845_ gnd vdd FILL
XFILL_3__1745_ gnd vdd FILL
XFILL_0__3648_ gnd vdd FILL
XFILL_0__3228_ gnd vdd FILL
XFILL_5__2612_ gnd vdd FILL
XFILL_1__2604_ gnd vdd FILL
XFILL_4__3081_ gnd vdd FILL
XFILL_4__1814_ gnd vdd FILL
X_2879_ _531_ _533_ vdd gnd INVX1
X_2459_ _1319__bF$buf2 _1263_ PC[10] _160_ vdd gnd OAI21X1
X_2039_ _1074_ _1143_ _1148_ AI[7] vdd gnd OAI21X1
XFILL_7__2383_ gnd vdd FILL
X_3400_ _1__bF$buf10 vdd _69_ clk_bF$buf8 _AXYS[0]_[0] vdd 
+ gnd
+ DFFSR
XFILL_3__2283_ gnd vdd FILL
XFILL_7__3588_ gnd vdd FILL
XFILL_5__3570_ gnd vdd FILL
XFILL_5__3150_ gnd vdd FILL
XFILL_0__2919_ gnd vdd FILL
XFILL_1__3562_ gnd vdd FILL
XFILL_1__3142_ gnd vdd FILL
XFILL_3__3488_ gnd vdd FILL
XFILL_3__3068_ gnd vdd FILL
XFILL_4__2772_ gnd vdd FILL
XFILL_4__2352_ gnd vdd FILL
XFILL_6__2698_ gnd vdd FILL
XFILL_6__2278_ gnd vdd FILL
XFILL_0__2672_ gnd vdd FILL
XFILL_0__2252_ gnd vdd FILL
XFILL_2__3631_ gnd vdd FILL
XFILL_2__3211_ gnd vdd FILL
XFILL_4__3557_ gnd vdd FILL
XFILL_4__3137_ gnd vdd FILL
XFILL_3__1974_ gnd vdd FILL
XFILL_0__3457_ gnd vdd FILL
XFILL_0__3037_ gnd vdd FILL
XFILL_7__2859_ gnd vdd FILL
XFILL_5__2841_ gnd vdd FILL
XFILL_5__2421_ gnd vdd FILL
XFILL_7__2019_ gnd vdd FILL
XFILL_5__2001_ gnd vdd FILL
XFILL_1__2833_ gnd vdd FILL
XFILL_1__2413_ gnd vdd FILL
XFILL_3__2759_ gnd vdd FILL
XFILL_3__2339_ gnd vdd FILL
XFILL_3__3700_ gnd vdd FILL
XFILL_5__3626_ gnd vdd FILL
XFILL_5__3206_ gnd vdd FILL
XFILL_1__3618_ gnd vdd FILL
XFILL_6__1969_ gnd vdd FILL
X_2688_ _342_ _347_ _359_ _360_ vdd gnd AOI21X1
X_2268_ cond_code[2] _1374_ _1375_ _1376_ vdd gnd OAI21X1
XFILL_7__2192_ gnd vdd FILL
XFILL_0__1943_ gnd vdd FILL
XFILL_6__2910_ gnd vdd FILL
XFILL_3__2092_ gnd vdd FILL
XFILL_2__2902_ gnd vdd FILL
XFILL_4__2828_ gnd vdd FILL
XFILL_4__2408_ gnd vdd FILL
XFILL_0__2728_ gnd vdd FILL
XFILL_0__2308_ gnd vdd FILL
XFILL_3__3297_ gnd vdd FILL
XFILL_4__2581_ gnd vdd FILL
XFILL_4__2161_ gnd vdd FILL
XFILL_6__2087_ gnd vdd FILL
XFILL_0__2481_ gnd vdd FILL
XFILL_2__2499_ gnd vdd FILL
XFILL_0__2061_ gnd vdd FILL
XFILL_2__2079_ gnd vdd FILL
XFILL_2__3020_ gnd vdd FILL
X_1959_ _914__bF$buf4 _1075_ _953_ _1076_ vdd gnd OAI21X1
X_2900_ sei _548_ vdd gnd INVX1
XFILL_3__1783_ gnd vdd FILL
XFILL_0__3266_ gnd vdd FILL
XFILL_5__2650_ gnd vdd FILL
XFILL_5__2230_ gnd vdd FILL
XFILL_7__2248_ gnd vdd FILL
XFILL_1__2642_ gnd vdd FILL
XFILL_1__2222_ gnd vdd FILL
XFILL_3__2988_ gnd vdd FILL
XFILL_3__2568_ gnd vdd FILL
XFILL_3__2148_ gnd vdd FILL
XFILL_5__3015_ gnd vdd FILL
XFILL_1__3007_ gnd vdd FILL
XFILL_4__1852_ gnd vdd FILL
XFILL_6__1778_ gnd vdd FILL
X_2497_ _143_ _1143_ _192_ _1742_[7] vdd gnd OAI21X1
X_2077_ DIMUX[6] IRHOLD[6] _1168_ _1186_ vdd gnd MUX2X1
XFILL_0__1752_ gnd vdd FILL
XFILL_2__2711_ gnd vdd FILL
XFILL_4__2637_ gnd vdd FILL
XFILL_4__2217_ gnd vdd FILL
XFILL_0__2957_ gnd vdd FILL
XFILL_0__2537_ gnd vdd FILL
XFILL_6__3504_ gnd vdd FILL
XFILL_0__2117_ gnd vdd FILL
XFILL_1__3180_ gnd vdd FILL
XFILL_5__1921_ gnd vdd FILL
XFILL_1__1913_ gnd vdd FILL
XFILL_3__1839_ gnd vdd FILL
XFILL_4__2390_ gnd vdd FILL
XFILL_5__2706_ gnd vdd FILL
XFILL_0__2290_ gnd vdd FILL
X_1768_ C _894_ vdd gnd INVX1
XFILL_4__3595_ gnd vdd FILL
XFILL_4__3175_ gnd vdd FILL
XFILL_0__3495_ gnd vdd FILL
XFILL_0__3075_ gnd vdd FILL
XFILL_4__1908_ gnd vdd FILL
XFILL_7__2477_ gnd vdd FILL
XFILL_0__1808_ gnd vdd FILL
XFILL_1__2871_ gnd vdd FILL
XFILL_1__2451_ gnd vdd FILL
XFILL_1__2031_ gnd vdd FILL
XFILL_3__2797_ gnd vdd FILL
XFILL_3__2377_ gnd vdd FILL
XFILL_5__3664_ gnd vdd FILL
XFILL_5__3244_ gnd vdd FILL
XFILL_1__3656_ gnd vdd FILL
XFILL_1__3236_ gnd vdd FILL
XFILL_0__1981_ gnd vdd FILL
XFILL_2__1999_ gnd vdd FILL
XFILL_2__2940_ gnd vdd FILL
XFILL_2__2520_ gnd vdd FILL
XFILL_2__2100_ gnd vdd FILL
XFILL_4__2866_ gnd vdd FILL
XFILL_4__2446_ gnd vdd FILL
XFILL_4__2026_ gnd vdd FILL
XFILL_0__2766_ gnd vdd FILL
XFILL_0__2346_ gnd vdd FILL
XFILL_6__3313_ gnd vdd FILL
XFILL_2__3305_ gnd vdd FILL
XFILL_7__1748_ gnd vdd FILL
XFILL_1_CLKBUF1_insert30 gnd vdd FILL
XFILL_1_CLKBUF1_insert31 gnd vdd FILL
XFILL_1_CLKBUF1_insert32 gnd vdd FILL
XFILL_1_CLKBUF1_insert33 gnd vdd FILL
XFILL_1_CLKBUF1_insert34 gnd vdd FILL
XFILL_1_CLKBUF1_insert35 gnd vdd FILL
XFILL_1_CLKBUF1_insert36 gnd vdd FILL
XFILL_5__2935_ gnd vdd FILL
XFILL_5__2515_ gnd vdd FILL
XFILL_1__2927_ gnd vdd FILL
XFILL_1__2507_ gnd vdd FILL
X_1997_ _1010_ _983_ _1110_ _1111_ vdd gnd OAI21X1
X_3303_ _269_ _869_ _870_ _109_ vdd gnd OAI21X1
XFILL_1__2680_ gnd vdd FILL
XFILL_1__2260_ gnd vdd FILL
XFILL_3__2186_ gnd vdd FILL
XFILL_5__3473_ gnd vdd FILL
XFILL_5__3053_ gnd vdd FILL
XFILL_1__3465_ gnd vdd FILL
XFILL_1__3045_ gnd vdd FILL
XFILL_4__1890_ gnd vdd FILL
XFILL_0__1790_ gnd vdd FILL
XFILL_4__2675_ gnd vdd FILL
XFILL_4__2255_ gnd vdd FILL
XFILL_0__2995_ gnd vdd FILL
XFILL_0__2575_ gnd vdd FILL
XFILL_6__3542_ gnd vdd FILL
XFILL_0__2155_ gnd vdd FILL
XFILL_6__3122_ gnd vdd FILL
XFILL_2__3534_ gnd vdd FILL
XFILL_2__3114_ gnd vdd FILL
XFILL_7__1977_ gnd vdd FILL
XFILL_1__1951_ gnd vdd FILL
XFILL_3__1877_ gnd vdd FILL
XFILL_5__2744_ gnd vdd FILL
XFILL_5__2324_ gnd vdd FILL
XFILL_1__2736_ gnd vdd FILL
XFILL_1__2316_ gnd vdd FILL
XFILL_7__3703_ gnd vdd FILL
XFILL_3__3603_ gnd vdd FILL
XFILL_5__3529_ gnd vdd FILL
XFILL_5__3109_ gnd vdd FILL
XFILL_4__1946_ gnd vdd FILL
XFILL_7__2095_ gnd vdd FILL
XFILL_0__1846_ gnd vdd FILL
XFILL_6__2813_ gnd vdd FILL
X_3532_ _1561_ _1562_ vdd gnd INVX1
X_3112_ _719_ _718_ RDY_bF$buf2 _720_ vdd gnd OAI21X1
XFILL_2__2805_ gnd vdd FILL
XFILL_5__3282_ gnd vdd FILL
XFILL_1__3694_ gnd vdd FILL
XFILL_1__3274_ gnd vdd FILL
XFILL_4__2484_ gnd vdd FILL
XFILL_4__2064_ gnd vdd FILL
XFILL_0__2384_ gnd vdd FILL
XFILL_4__3269_ gnd vdd FILL
X_2803_ _456_ _416_ _370_ _466_ vdd gnd NOR3X1
XFILL_1__1760_ gnd vdd FILL
XFILL_0__3589_ gnd vdd FILL
XFILL_0__3169_ gnd vdd FILL
XFILL_5__2973_ gnd vdd FILL
XFILL_5__2553_ gnd vdd FILL
XFILL_5__2133_ gnd vdd FILL
XFILL_1__2965_ gnd vdd FILL
XFILL_1__2545_ gnd vdd FILL
XFILL_1__2125_ gnd vdd FILL
XFILL_4__1755_ gnd vdd FILL
XFILL_6__2622_ gnd vdd FILL
X_3341_ _1__bF$buf5 vdd _18_ clk_bF$buf1 NMI_edge vdd 
+ gnd
+ DFFSR
XFILL_6__2202_ gnd vdd FILL
XFILL_2__2614_ gnd vdd FILL
XFILL_5__3091_ gnd vdd FILL
XFILL_1__3083_ gnd vdd FILL
XFILL_5__1824_ gnd vdd FILL
XFILL_1__1816_ gnd vdd FILL
XFILL_4__2293_ gnd vdd FILL
XFILL_5__2609_ gnd vdd FILL
XFILL_6__3580_ gnd vdd FILL
XFILL_0__2193_ gnd vdd FILL
XFILL_6__3160_ gnd vdd FILL
XFILL_2__3572_ gnd vdd FILL
XFILL_2__3152_ gnd vdd FILL
XFILL_4__3498_ gnd vdd FILL
XFILL_4__3078_ gnd vdd FILL
X_2612_ _290_ _218_ _294_ _1741_[12] vdd gnd OAI21X1
XFILL_5__2782_ gnd vdd FILL
XFILL_5__2362_ gnd vdd FILL
XFILL_1__2774_ gnd vdd FILL
XFILL_1__2354_ gnd vdd FILL
XFILL_3__3641_ gnd vdd FILL
XFILL_3__3221_ gnd vdd FILL
XFILL_5__3567_ gnd vdd FILL
XFILL_5__3147_ gnd vdd FILL
XFILL_1__3559_ gnd vdd FILL
XFILL_1__3139_ gnd vdd FILL
XFILL_4__1984_ gnd vdd FILL
XFILL_0__1884_ gnd vdd FILL
XFILL_6__2851_ gnd vdd FILL
X_3570_ _1595_ _1599_ _1600_ vdd gnd AND2X2
XFILL_6__2431_ gnd vdd FILL
XFILL_6__2011_ gnd vdd FILL
X_3150_ _AXYS[0]_[3] _722_ _755_ vdd gnd NAND2X1
XFILL_2__2843_ gnd vdd FILL
XFILL_2__2423_ gnd vdd FILL
XFILL_2__2003_ gnd vdd FILL
XFILL_4__2769_ gnd vdd FILL
XFILL_4__2349_ gnd vdd FILL
XFILL_4__3710_ gnd vdd FILL
XFILL_0__2669_ gnd vdd FILL
XFILL_6__3636_ gnd vdd FILL
XFILL_0__2249_ gnd vdd FILL
XFILL_6__3216_ gnd vdd FILL
XFILL_0__3610_ gnd vdd FILL
XFILL_2__3628_ gnd vdd FILL
XFILL_2__3208_ gnd vdd FILL
XFILL_3__2912_ gnd vdd FILL
XFILL_5__2838_ gnd vdd FILL
XFILL_5__2418_ gnd vdd FILL
X_2841_ _1334_ _1135_ _502_ vdd gnd NOR2X1
X_2421_ _915_ _129_ vdd gnd INVX2
X_2001_ _1049_ _AXYS[3]_[4] _AXYS[2]_[4] _1057_ _1114_ vdd 
+ gnd
+ AOI22X1
XFILL_5__2591_ gnd vdd FILL
XFILL_5__2171_ gnd vdd FILL
XFILL_6__2907_ gnd vdd FILL
X_3626_ _1655_ _1636_ _1650_ _1656_ vdd gnd OAI21X1
X_3206_ _1057_ _721_ _798_ vdd gnd AND2X2
XFILL_1__2583_ gnd vdd FILL
XFILL_7__3550_ gnd vdd FILL
XFILL_1__2163_ gnd vdd FILL
XFILL_7__3130_ gnd vdd FILL
XFILL_3__2089_ gnd vdd FILL
XFILL_3__3450_ gnd vdd FILL
XFILL_3__3030_ gnd vdd FILL
XFILL_4__1793_ gnd vdd FILL
XFILL_6__2660_ gnd vdd FILL
XFILL_6__2240_ gnd vdd FILL
XFILL_2__2652_ gnd vdd FILL
XFILL_2__2232_ gnd vdd FILL
XFILL_4__2998_ gnd vdd FILL
XFILL_4__2578_ gnd vdd FILL
XFILL_4__2158_ gnd vdd FILL
XFILL_0__2898_ gnd vdd FILL
XFILL_0__2478_ gnd vdd FILL
XFILL_0__2058_ gnd vdd FILL
XFILL_6__3025_ gnd vdd FILL
XFILL_2__3017_ gnd vdd FILL
XFILL_5__1862_ gnd vdd FILL
XFILL_1__1854_ gnd vdd FILL
XFILL_7__2401_ gnd vdd FILL
XFILL_3__2721_ gnd vdd FILL
XFILL_3__2301_ gnd vdd FILL
XFILL_5__2647_ gnd vdd FILL
XFILL_5__2227_ gnd vdd FILL
XFILL_1__2639_ gnd vdd FILL
XFILL_7__3606_ gnd vdd FILL
XFILL_1__2219_ gnd vdd FILL
XFILL_2__3190_ gnd vdd FILL
XFILL_3__3506_ gnd vdd FILL
XFILL_6__1931_ gnd vdd FILL
X_2650_ _902__bF$buf0 _931__bF$buf2 _984_ _912_ _325_ vdd 
+ gnd
+ AOI22X1
X_2230_ RDY_bF$buf2 _1063_ _1338_ vdd gnd NAND2X1
XFILL_2__1923_ gnd vdd FILL
XFILL_4__1849_ gnd vdd FILL
XFILL_0__1749_ gnd vdd FILL
XFILL_6__2716_ gnd vdd FILL
X_3435_ _1__bF$buf5 vdd _103_ clk_bF$buf1 ABL[2] vdd 
+ gnd
+ DFFSR
X_3015_ _1159_ _1178_ _640_ _641_ vdd gnd NAND3X1
XFILL_1__2392_ gnd vdd FILL
XFILL_2__2708_ gnd vdd FILL
XFILL_1_BUFX2_insert60 gnd vdd FILL
XFILL_1_BUFX2_insert61 gnd vdd FILL
XFILL_1_BUFX2_insert62 gnd vdd FILL
XFILL_1_BUFX2_insert63 gnd vdd FILL
XFILL_5__3185_ gnd vdd FILL
XFILL_1_BUFX2_insert64 gnd vdd FILL
XFILL_1_BUFX2_insert65 gnd vdd FILL
XFILL_1_BUFX2_insert66 gnd vdd FILL
XFILL_1_BUFX2_insert67 gnd vdd FILL
XFILL_1_BUFX2_insert68 gnd vdd FILL
XFILL_1_BUFX2_insert69 gnd vdd FILL
XFILL_1__3597_ gnd vdd FILL
XFILL_1__3177_ gnd vdd FILL
XFILL_5__1918_ gnd vdd FILL
XFILL_2__2881_ gnd vdd FILL
XFILL_2__2461_ gnd vdd FILL
XFILL_2__2041_ gnd vdd FILL
XFILL_4__2387_ gnd vdd FILL
X_1921_ _1034_ _1038_ vdd gnd INVX1
XFILL_6__3674_ gnd vdd FILL
XFILL_0__2287_ gnd vdd FILL
XFILL_6__3254_ gnd vdd FILL
XFILL_2__3666_ gnd vdd FILL
XFILL_2__3246_ gnd vdd FILL
X_2706_ RDY_bF$buf3 _1011_ _376_ _375_ _6_ vdd 
+ gnd
+ OAI22X1
XFILL_7__2630_ gnd vdd FILL
XFILL_3__2950_ gnd vdd FILL
XFILL_3__2530_ gnd vdd FILL
XFILL_3__2110_ gnd vdd FILL
XFILL_5__2876_ gnd vdd FILL
XFILL_5__2456_ gnd vdd FILL
XFILL_5__2036_ gnd vdd FILL
XFILL_1__2868_ gnd vdd FILL
XFILL_1__2448_ gnd vdd FILL
XFILL_1__2028_ gnd vdd FILL
XFILL_3__3315_ gnd vdd FILL
XFILL_0__1978_ gnd vdd FILL
XFILL_6__2945_ gnd vdd FILL
X_3664_ _1714__bF$buf1 _1620_ _1689_ _1519_ vdd gnd OAI21X1
XFILL_6__2525_ gnd vdd FILL
X_3244_ _902__bF$buf1 _928_ _1272_ _820_ vdd gnd OAI21X1
XFILL_6__2105_ gnd vdd FILL
XFILL_2__2937_ gnd vdd FILL
XFILL_2__2517_ gnd vdd FILL
XFILL_7__1901_ gnd vdd FILL
XFILL168150x75750 gnd vdd FILL
XFILL_3__1801_ gnd vdd FILL
XFILL_0__3704_ gnd vdd FILL
XFILL_2__2690_ gnd vdd FILL
XFILL_2__2270_ gnd vdd FILL
XFILL_4__2196_ gnd vdd FILL
XFILL_6__3483_ gnd vdd FILL
XFILL_0__2096_ gnd vdd FILL
XFILL_6__3063_ gnd vdd FILL
XFILL_2__3475_ gnd vdd FILL
XFILL_2__3055_ gnd vdd FILL
X_2935_ _1397_ _578_ vdd gnd INVX2
X_2515_ _903__bF$buf1 _1427_ _210_ vdd gnd NAND2X1
XFILL_1__1892_ gnd vdd FILL
XFILL_5__2685_ gnd vdd FILL
XFILL_5__2265_ gnd vdd FILL
XFILL_1__2677_ gnd vdd FILL
XFILL_1__2257_ gnd vdd FILL
XFILL_7__3224_ gnd vdd FILL
XFILL_3__3544_ gnd vdd FILL
XFILL_3__3124_ gnd vdd FILL
XFILL_2__1961_ gnd vdd FILL
XFILL_4__1887_ gnd vdd FILL
XFILL_0__1787_ gnd vdd FILL
XFILL_6__2754_ gnd vdd FILL
X_3473_ _1718_ BI[7] _1719_ vdd gnd AND2X2
XFILL_6__2334_ gnd vdd FILL
X_3053_ _663_ AV _668_ vdd gnd AND2X2
XFILL_2__2746_ gnd vdd FILL
XFILL_2__2326_ gnd vdd FILL
XFILL_4__3613_ gnd vdd FILL
XFILL_6__3539_ gnd vdd FILL
XFILL_6__3119_ gnd vdd FILL
XFILL_0__3513_ gnd vdd FILL
XFILL_5__1956_ gnd vdd FILL
XFILL_1__1948_ gnd vdd FILL
XFILL_3__2815_ gnd vdd FILL
XFILL_6__3292_ gnd vdd FILL
XFILL_2__3284_ gnd vdd FILL
X_2744_ _401_ _410_ _411_ vdd gnd AND2X2
X_2324_ _1383_ _1430_ _1431_ vdd gnd NOR2X1
XFILL_5__2494_ gnd vdd FILL
XFILL_5__2074_ gnd vdd FILL
X_3529_ _1725_ _1553_ _1740_ _1559_ vdd gnd AOI21X1
X_3109_ _935_ _992_ _969_ _717_ vdd gnd OAI21X1
XFILL_1__2486_ gnd vdd FILL
XFILL_7__3453_ gnd vdd FILL
XFILL_1__2066_ gnd vdd FILL
XFILL_7__3033_ gnd vdd FILL
XFILL_5__3699_ gnd vdd FILL
XFILL_5__3279_ gnd vdd FILL
XFILL_5_BUFX2_insert10 gnd vdd FILL
XFILL_5_BUFX2_insert11 gnd vdd FILL
XFILL_5_BUFX2_insert12 gnd vdd FILL
XFILL_5_BUFX2_insert13 gnd vdd FILL
XFILL_5_BUFX2_insert14 gnd vdd FILL
XFILL_5_BUFX2_insert15 gnd vdd FILL
XFILL_2__1770_ gnd vdd FILL
XFILL_5_BUFX2_insert16 gnd vdd FILL
XFILL_5_BUFX2_insert17 gnd vdd FILL
XFILL_5_BUFX2_insert18 gnd vdd FILL
XFILL_5_BUFX2_insert19 gnd vdd FILL
XFILL_6__2983_ gnd vdd FILL
XFILL_6__2563_ gnd vdd FILL
X_3282_ _857_ _1000_ _858_ vdd gnd NOR2X1
XFILL_6__2143_ gnd vdd FILL
XFILL_2__2975_ gnd vdd FILL
XFILL_2__2555_ gnd vdd FILL
XFILL_2__2135_ gnd vdd FILL
XFILL_4__3002_ gnd vdd FILL
XFILL_5__1765_ gnd vdd FILL
XFILL_1__1757_ gnd vdd FILL
XFILL_7__2724_ gnd vdd FILL
XFILL_7__2304_ gnd vdd FILL
XFILL_3__2624_ gnd vdd FILL
XFILL_3__2204_ gnd vdd FILL
XFILL_7__3509_ gnd vdd FILL
XFILL_2__3093_ gnd vdd FILL
XFILL_6__1834_ gnd vdd FILL
X_2973_ _601_ _604_ _602_ _45_ vdd gnd OAI21X1
X_2553_ ABL[4] _244_ vdd gnd INVX1
X_2133_ write_back _1241_ _1242_ vdd gnd NOR2X1
XFILL_2__1826_ gnd vdd FILL
XFILL_6__2619_ gnd vdd FILL
X_3338_ _1__bF$buf1 vdd _16_ clk_bF$buf0 PC[14] vdd 
+ gnd
+ DFFSR
XFILL_1__2295_ gnd vdd FILL
XFILL_7__3262_ gnd vdd FILL
XFILL_3__3582_ gnd vdd FILL
XFILL_3__3162_ gnd vdd FILL
XFILL_5__3088_ gnd vdd FILL
XFILL_6__2792_ gnd vdd FILL
XFILL_6__2372_ gnd vdd FILL
X_3091_ _701_ _697_ _698_ _66_ vdd gnd MUX2X1
XFILL_2__2784_ gnd vdd FILL
XFILL_2__2364_ gnd vdd FILL
X_1824_ _931__bF$buf2 _949_ _950_ vdd gnd NOR2X1
XFILL_4__3651_ gnd vdd FILL
XFILL_4__3231_ gnd vdd FILL
XFILL_6__3577_ gnd vdd FILL
XFILL_6__3157_ gnd vdd FILL
XFILL_2__3569_ gnd vdd FILL
XFILL_0__3551_ gnd vdd FILL
XFILL_2__3149_ gnd vdd FILL
XFILL_0__3131_ gnd vdd FILL
XFILL_5__1994_ gnd vdd FILL
X_2609_ ABH[4] _925_ _198_ ADD[4] _292_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1986_ gnd vdd FILL
XFILL_7__2953_ gnd vdd FILL
XFILL_7__2533_ gnd vdd FILL
XFILL_7__2113_ gnd vdd FILL
XFILL_3__2853_ gnd vdd FILL
XFILL_3__2433_ gnd vdd FILL
XFILL_3__2013_ gnd vdd FILL
XFILL_5__2779_ gnd vdd FILL
XFILL_5__2359_ gnd vdd FILL
XFILL_5__3300_ gnd vdd FILL
XFILL_1__3712_ gnd vdd FILL
XFILL_3__3638_ gnd vdd FILL
XFILL_3__3218_ gnd vdd FILL
X_2782_ ADD[3] _1299_ _1334_ _446_ vdd gnd AOI21X1
X_2362_ RDY_bF$buf6 _1020_ _1468_ vdd gnd NAND2X1
XFILL_4__2922_ gnd vdd FILL
XFILL_4__2502_ gnd vdd FILL
XFILL_6__2848_ gnd vdd FILL
X_3567_ _1596_ _1597_ vdd gnd INVX1
XFILL_6__2428_ gnd vdd FILL
XFILL_6__2008_ gnd vdd FILL
X_3147_ _750_ _747_ _752_ vdd gnd NOR2X1
XFILL_0__2822_ gnd vdd FILL
XFILL_0__2402_ gnd vdd FILL
XFILL_4__3707_ gnd vdd FILL
XFILL_0__3607_ gnd vdd FILL
XFILL_6__2181_ gnd vdd FILL
XFILL_2__2593_ gnd vdd FILL
XFILL_2__2173_ gnd vdd FILL
XFILL_4__2099_ gnd vdd FILL
XFILL_3__2909_ gnd vdd FILL
XFILL_4__3460_ gnd vdd FILL
XFILL_4__3040_ gnd vdd FILL
XFILL_6_BUFX2_insert60 gnd vdd FILL
XFILL_6_BUFX2_insert61 gnd vdd FILL
XFILL_6_BUFX2_insert62 gnd vdd FILL
XFILL_6_BUFX2_insert63 gnd vdd FILL
XFILL_6_BUFX2_insert64 gnd vdd FILL
XFILL_6_BUFX2_insert65 gnd vdd FILL
XFILL_6_BUFX2_insert66 gnd vdd FILL
XFILL_6_BUFX2_insert67 gnd vdd FILL
XFILL_6_BUFX2_insert68 gnd vdd FILL
XFILL_6_BUFX2_insert69 gnd vdd FILL
X_2838_ RDY_bF$buf4 _295_ _499_ _15_ vdd gnd OAI21X1
X_2418_ _1445_ _126_ _127_ vdd gnd NOR2X1
XFILL_1__1795_ gnd vdd FILL
XFILL_7__2762_ gnd vdd FILL
XFILL_7__2342_ gnd vdd FILL
XFILL_3__2662_ gnd vdd FILL
XFILL_3__2242_ gnd vdd FILL
XFILL_5__2588_ gnd vdd FILL
XFILL_5__2168_ gnd vdd FILL
XFILL_7__3127_ gnd vdd FILL
XFILL_1__3521_ gnd vdd FILL
XFILL_1__3101_ gnd vdd FILL
XFILL_3__3027_ gnd vdd FILL
XFILL_6__1872_ gnd vdd FILL
X_2591_ _198_ ADD[1] _1093_ _277_ vdd gnd AOI21X1
X_2171_ _1256_ _1279_ _1254_ _1280_ vdd gnd NAND3X1
XFILL_2__1864_ gnd vdd FILL
XFILL_4__2731_ gnd vdd FILL
XFILL_4__2311_ gnd vdd FILL
XFILL_6__2657_ gnd vdd FILL
X_3376_ _1__bF$buf7 vdd DIMUX[1] clk_bF$buf5 DIHOLD[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2237_ gnd vdd FILL
XFILL_2__2649_ gnd vdd FILL
XFILL_0__2631_ gnd vdd FILL
XFILL_2__2229_ gnd vdd FILL
XFILL_0__2211_ gnd vdd FILL
XFILL_4__3516_ gnd vdd FILL
XFILL_3__1933_ gnd vdd FILL
XFILL_5__1859_ gnd vdd FILL
XFILL_5__2800_ gnd vdd FILL
XFILL_3__2718_ gnd vdd FILL
X_1862_ _913_ _935_ _987_ vdd gnd NAND2X1
XFILL_6__3195_ gnd vdd FILL
XFILL_2__3187_ gnd vdd FILL
XFILL_6__1928_ gnd vdd FILL
X_2647_ _1092_ _321_ _211_ _322_ vdd gnd NAND3X1
X_2227_ _914__bF$buf0 _984_ RDY_bF$buf6 _1335_ vdd gnd OAI21X1
XFILL_7__2991_ gnd vdd FILL
XFILL_7__2151_ gnd vdd FILL
XFILL_0__1902_ gnd vdd FILL
XFILL_3__2891_ gnd vdd FILL
XFILL_3__2471_ gnd vdd FILL
XFILL_3__2051_ gnd vdd FILL
XFILL_5__2397_ gnd vdd FILL
XFILL_1__2389_ gnd vdd FILL
XFILL_3__3676_ gnd vdd FILL
XFILL_3__3256_ gnd vdd FILL
XFILL_4__2960_ gnd vdd FILL
XFILL_4__2540_ gnd vdd FILL
XFILL_4__2120_ gnd vdd FILL
XFILL_6__2886_ gnd vdd FILL
XFILL_6__2466_ gnd vdd FILL
X_3185_ _780_ _784_ _785_ _786_ vdd gnd AOI21X1
XFILL_6__2046_ gnd vdd FILL
XFILL_0__2860_ gnd vdd FILL
XFILL_2__2878_ gnd vdd FILL
XFILL_2__2458_ gnd vdd FILL
XFILL_0__2440_ gnd vdd FILL
XFILL_2__2038_ gnd vdd FILL
XFILL_0__2020_ gnd vdd FILL
X_1918_ _1034_ _1027__bF$buf0 _1035_ vdd gnd AND2X2
XFILL_7__1842_ gnd vdd FILL
XFILL_0__3645_ gnd vdd FILL
XFILL_0__3225_ gnd vdd FILL
XFILL_7__2627_ gnd vdd FILL
XFILL_1__2601_ gnd vdd FILL
XFILL_3__2947_ gnd vdd FILL
XFILL_3__2527_ gnd vdd FILL
XFILL_3__2107_ gnd vdd FILL
XFILL_4__1811_ gnd vdd FILL
X_2876_ _1149__bF$buf0 _530_ _531_ vdd gnd NOR2X1
X_2456_ _157_ _158_ vdd gnd INVX1
X_2036_ _1145_ _1146_ vdd gnd INVX1
XFILL_7__2380_ gnd vdd FILL
XFILL_3__2280_ gnd vdd FILL
XFILL_7__3585_ gnd vdd FILL
XFILL_1__2198_ gnd vdd FILL
XFILL_7__3165_ gnd vdd FILL
XFILL_0__2916_ gnd vdd FILL
XFILL_3__3485_ gnd vdd FILL
XFILL_3__3065_ gnd vdd FILL
XFILL_6__2695_ gnd vdd FILL
XFILL_6__2275_ gnd vdd FILL
XFILL_2__2687_ gnd vdd FILL
XFILL_2__2267_ gnd vdd FILL
XFILL_4__3554_ gnd vdd FILL
XFILL_4__3134_ gnd vdd FILL
XFILL_3__1971_ gnd vdd FILL
XFILL_0__3454_ gnd vdd FILL
XFILL_0__3034_ gnd vdd FILL
XFILL_5__1897_ gnd vdd FILL
XFILL_1__1889_ gnd vdd FILL
XFILL_7__2856_ gnd vdd FILL
XFILL_7__2016_ gnd vdd FILL
XFILL_1__2830_ gnd vdd FILL
XFILL_1__2410_ gnd vdd FILL
XFILL_3__2756_ gnd vdd FILL
XFILL_3__2336_ gnd vdd FILL
XFILL_5__3623_ gnd vdd FILL
XFILL_5__3203_ gnd vdd FILL
XFILL_1__3615_ gnd vdd FILL
XFILL_6__1966_ gnd vdd FILL
X_2685_ _355_ _326_ _356_ _357_ vdd gnd OAI21X1
X_2265_ cond_code[0] _1373_ vdd gnd INVX1
XFILL_0__1940_ gnd vdd FILL
XFILL_2__1958_ gnd vdd FILL
XFILL_4__2825_ gnd vdd FILL
XFILL_4__2405_ gnd vdd FILL
XFILL_0__2725_ gnd vdd FILL
XFILL_0__2305_ gnd vdd FILL
XFILL_3__3294_ gnd vdd FILL
XFILL_6__2084_ gnd vdd FILL
XFILL_2__2496_ gnd vdd FILL
XFILL_2__2076_ gnd vdd FILL
X_1956_ _1071_ _1072_ _1066_ _1073_ vdd gnd NAND3X1
XFILL_7__1880_ gnd vdd FILL
XFILL_6__3289_ gnd vdd FILL
XFILL_3__1780_ gnd vdd FILL
XFILL_0__3263_ gnd vdd FILL
XFILL_7__2245_ gnd vdd FILL
XFILL_3__2985_ gnd vdd FILL
XFILL_3__2565_ gnd vdd FILL
XFILL_3__2145_ gnd vdd FILL
XFILL_5__3012_ gnd vdd FILL
XFILL_1__3004_ gnd vdd FILL
XFILL_6__1775_ gnd vdd FILL
X_2494_ AN _144_ _189_ _190_ vdd gnd AOI21X1
X_2074_ IRHOLD_valid IRHOLD[7] _1183_ vdd gnd NAND2X1
XFILL_2__1767_ gnd vdd FILL
XFILL_4__2634_ gnd vdd FILL
XFILL_4__2214_ gnd vdd FILL
X_3699_ _1741_[2] AB[2] vdd gnd BUFX2
X_3279_ _850_ _854_ _843_ _855_ vdd gnd OAI21X1
XFILL_0__2954_ gnd vdd FILL
XFILL_0__2534_ gnd vdd FILL
XFILL_6__3501_ gnd vdd FILL
XFILL_0__2114_ gnd vdd FILL
XFILL_1__1910_ gnd vdd FILL
XFILL_3__1836_ gnd vdd FILL
XFILL_5__2703_ gnd vdd FILL
X_1765_ RDY_bF$buf3 _891_ _892_ DIMUX[6] vdd gnd OAI21X1
XFILL_4__3592_ gnd vdd FILL
XFILL_4__3172_ gnd vdd FILL
XFILL_6__3098_ gnd vdd FILL
XFILL_0__3492_ gnd vdd FILL
XFILL_0__3072_ gnd vdd FILL
XFILL_4__1905_ gnd vdd FILL
XFILL_7__2474_ gnd vdd FILL
XFILL_0__1805_ gnd vdd FILL
XFILL_3__2794_ gnd vdd FILL
XFILL_3__2374_ gnd vdd FILL
XFILL_5__3661_ gnd vdd FILL
XFILL_7__3259_ gnd vdd FILL
XFILL_5__3241_ gnd vdd FILL
XFILL_1__3653_ gnd vdd FILL
XFILL_1__3233_ gnd vdd FILL
XFILL_3__3579_ gnd vdd FILL
XFILL_3__3159_ gnd vdd FILL
XFILL_2__1996_ gnd vdd FILL
XFILL_4__2863_ gnd vdd FILL
XFILL_4__2443_ gnd vdd FILL
XFILL_4__2023_ gnd vdd FILL
XFILL_6__2789_ gnd vdd FILL
XFILL_6__2369_ gnd vdd FILL
X_3088_ ADD[1] AZ plp _699_ vdd gnd MUX2X1
XFILL_0__2763_ gnd vdd FILL
XFILL_0__2343_ gnd vdd FILL
XFILL_6__3310_ gnd vdd FILL
XFILL_2__3302_ gnd vdd FILL
XFILL_7__1745_ gnd vdd FILL
XFILL_4__3648_ gnd vdd FILL
XFILL_4__3228_ gnd vdd FILL
XFILL_0__3548_ gnd vdd FILL
XFILL_0__3128_ gnd vdd FILL
XFILL_5__2932_ gnd vdd FILL
XFILL_5__2512_ gnd vdd FILL
XFILL_1__2924_ gnd vdd FILL
XFILL_1__2504_ gnd vdd FILL
X_1994_ _1107_ _1105_ _1106_ _1108_ vdd gnd NAND3X1
XFILL_1__3709_ gnd vdd FILL
X_2779_ _443_ _440_ RDY_bF$buf4 _444_ vdd gnd OAI21X1
X_2359_ _1464_ _998_ _886__bF$buf1 _1465_ vdd gnd MUX2X1
XFILL_7__2283_ gnd vdd FILL
X_3300_ _267_ _860_ _868_ _108_ vdd gnd OAI21X1
XFILL_3__2183_ gnd vdd FILL
XFILL_4__2919_ gnd vdd FILL
XFILL_7__3488_ gnd vdd FILL
XFILL_5__3470_ gnd vdd FILL
XFILL_5__3050_ gnd vdd FILL
XFILL_0__2819_ gnd vdd FILL
XFILL_1__3462_ gnd vdd FILL
XFILL_1__3042_ gnd vdd FILL
XFILL169950x21750 gnd vdd FILL
XFILL_4__2672_ gnd vdd FILL
XFILL_4__2252_ gnd vdd FILL
XFILL_6__2598_ gnd vdd FILL
XFILL_6__2178_ gnd vdd FILL
XFILL_0__2992_ gnd vdd FILL
XFILL_0__2572_ gnd vdd FILL
XFILL_0__2152_ gnd vdd FILL
XFILL_2__3531_ gnd vdd FILL
XFILL_2__3111_ gnd vdd FILL
XFILL_7__1974_ gnd vdd FILL
XFILL_4__3457_ gnd vdd FILL
XFILL_4__3037_ gnd vdd FILL
XFILL_3__1874_ gnd vdd FILL
XFILL_5__2741_ gnd vdd FILL
XFILL_7__2759_ gnd vdd FILL
XFILL_5__2321_ gnd vdd FILL
XFILL_1__2733_ gnd vdd FILL
XFILL_1__2313_ gnd vdd FILL
XFILL_7__3700_ gnd vdd FILL
XFILL_3__2659_ gnd vdd FILL
XFILL_3__2239_ gnd vdd FILL
XFILL_3__3600_ gnd vdd FILL
XFILL_5__3526_ gnd vdd FILL
XFILL_5__3106_ gnd vdd FILL
XFILL_1__3518_ gnd vdd FILL
XFILL_4__1943_ gnd vdd FILL
XFILL_6__1869_ gnd vdd FILL
X_2588_ _271_ _274_ _275_ vdd gnd NOR2X1
X_2168_ RDY_bF$buf1 _1275_ _1276_ _1277_ vdd gnd OAI21X1
XFILL_7__2092_ gnd vdd FILL
XFILL_0__1843_ gnd vdd FILL
XFILL_6__2810_ gnd vdd FILL
XFILL_2__2802_ gnd vdd FILL
XFILL_4__2728_ gnd vdd FILL
XFILL_4__2308_ gnd vdd FILL
XFILL_0__2628_ gnd vdd FILL
XFILL_0__2208_ gnd vdd FILL
XFILL_1__3691_ gnd vdd FILL
XFILL_1__3271_ gnd vdd FILL
XFILL_3__3197_ gnd vdd FILL
XFILL_4__2481_ gnd vdd FILL
XFILL_4__2061_ gnd vdd FILL
XFILL_0__2381_ gnd vdd FILL
XFILL_2__2399_ gnd vdd FILL
X_1859_ _911_ _957_ _984_ vdd gnd NAND2X1
XFILL_4__3266_ gnd vdd FILL
X_2800_ _888_ _351_ _462_ _463_ vdd gnd OAI21X1
XFILL_0__3586_ gnd vdd FILL
XFILL_0__3166_ gnd vdd FILL
XFILL_5__2970_ gnd vdd FILL
XFILL_7__2988_ gnd vdd FILL
XFILL_5__2550_ gnd vdd FILL
XFILL_7__2148_ gnd vdd FILL
XFILL_5__2130_ gnd vdd FILL
XFILL_1__2962_ gnd vdd FILL
XFILL_1__2542_ gnd vdd FILL
XFILL_1__2122_ gnd vdd FILL
XFILL_3__2888_ gnd vdd FILL
XFILL_3__2468_ gnd vdd FILL
XFILL_3__2048_ gnd vdd FILL
XFILL_4__1752_ gnd vdd FILL
X_2397_ _1448_ _1496_ _1501_ _1502_ vdd gnd NAND3X1
XFILL_2__2611_ gnd vdd FILL
XFILL_4__2957_ gnd vdd FILL
XFILL_4__2537_ gnd vdd FILL
XFILL_4__2117_ gnd vdd FILL
XFILL_0__2857_ gnd vdd FILL
XFILL_0__2437_ gnd vdd FILL
XFILL_0__2017_ gnd vdd FILL
XFILL_1__3080_ gnd vdd FILL
XFILL_5__1821_ gnd vdd FILL
XFILL_1__1813_ gnd vdd FILL
XFILL_4__2290_ gnd vdd FILL
XFILL_5__2606_ gnd vdd FILL
XFILL_0__2190_ gnd vdd FILL
XFILL_4__3495_ gnd vdd FILL
XFILL_4__3075_ gnd vdd FILL
XFILL_4__1808_ gnd vdd FILL
XFILL_7__2377_ gnd vdd FILL
XFILL_1__2771_ gnd vdd FILL
XFILL_1__2351_ gnd vdd FILL
XFILL_3__2697_ gnd vdd FILL
XFILL_3__2277_ gnd vdd FILL
XFILL_5__3564_ gnd vdd FILL
XFILL_5__3144_ gnd vdd FILL
XFILL_1__3556_ gnd vdd FILL
XFILL_1__3136_ gnd vdd FILL
XFILL_4__1981_ gnd vdd FILL
XFILL_0__1881_ gnd vdd FILL
XFILL_2__1899_ gnd vdd FILL
XFILL_2__2840_ gnd vdd FILL
XFILL_2__2420_ gnd vdd FILL
XFILL_2__2000_ gnd vdd FILL
XFILL_4__2766_ gnd vdd FILL
XFILL_4__2346_ gnd vdd FILL
XFILL_0__2666_ gnd vdd FILL
XFILL_6__3633_ gnd vdd FILL
XFILL_0__2246_ gnd vdd FILL
XFILL_6__3213_ gnd vdd FILL
XFILL_2__3625_ gnd vdd FILL
XFILL_2__3205_ gnd vdd FILL
XFILL_3__1968_ gnd vdd FILL
XFILL_5__2835_ gnd vdd FILL
XFILL_5__2415_ gnd vdd FILL
XFILL_1__2827_ gnd vdd FILL
XFILL_1__2407_ gnd vdd FILL
X_1897_ _1014_ _968_ _1015_ _1004_ BI[6] vdd 
+ gnd
+ OAI22X1
XFILL_0__1937_ gnd vdd FILL
XFILL_6__2904_ gnd vdd FILL
X_3623_ _1645_ _1652_ _1648_ _1653_ vdd gnd OAI21X1
X_3203_ _778_ _789_ _796_ _83_ vdd gnd OAI21X1
XFILL_1__2580_ gnd vdd FILL
XFILL_1__2160_ gnd vdd FILL
XFILL_3__2086_ gnd vdd FILL
XFILL_4__1790_ gnd vdd FILL
XFILL_4__2995_ gnd vdd FILL
XFILL_4__2575_ gnd vdd FILL
XFILL_4__2155_ gnd vdd FILL
XFILL_0__2895_ gnd vdd FILL
XFILL_0__2475_ gnd vdd FILL
XFILL_0__2055_ gnd vdd FILL
XFILL_6__3022_ gnd vdd FILL
XFILL_2__3014_ gnd vdd FILL
XFILL_7__1877_ gnd vdd FILL
XFILL_1__1851_ gnd vdd FILL
XFILL_3__1777_ gnd vdd FILL
XFILL_5__2644_ gnd vdd FILL
XFILL_5__2224_ gnd vdd FILL
XFILL_1__2636_ gnd vdd FILL
XFILL_7__3603_ gnd vdd FILL
XFILL_1__2216_ gnd vdd FILL
XFILL_3__3503_ gnd vdd FILL
XFILL_5__3009_ gnd vdd FILL
XFILL_2__1920_ gnd vdd FILL
XFILL_4__1846_ gnd vdd FILL
XFILL_0__1746_ gnd vdd FILL
XFILL_6__2713_ gnd vdd FILL
X_3432_ _1__bF$buf8 vdd _100_ clk_bF$buf7 _AXYS[3]_[7] vdd 
+ gnd
+ DFFSR
X_3012_ _1214_ _1213_ _638_ vdd gnd NOR2X1
XFILL_2__2705_ gnd vdd FILL
XFILL_5__3182_ gnd vdd FILL
XFILL_1_BUFX2_insert37 gnd vdd FILL
XFILL_1_BUFX2_insert38 gnd vdd FILL
XFILL_1_BUFX2_insert39 gnd vdd FILL
XFILL_1__3594_ gnd vdd FILL
XFILL_1__3174_ gnd vdd FILL
XFILL_5__1915_ gnd vdd FILL
XFILL_1__1907_ gnd vdd FILL
XFILL_4__2384_ gnd vdd FILL
XFILL_6__3671_ gnd vdd FILL
XFILL_0__2284_ gnd vdd FILL
XFILL_6__3251_ gnd vdd FILL
XFILL_2__3663_ gnd vdd FILL
XFILL_2__3243_ gnd vdd FILL
XFILL_4__3589_ gnd vdd FILL
XFILL_4__3169_ gnd vdd FILL
X_2703_ PC[4] _371_ _373_ _374_ vdd gnd AOI21X1
XFILL_0__3489_ gnd vdd FILL
XFILL_0__3069_ gnd vdd FILL
XFILL_5__2873_ gnd vdd FILL
XFILL_5__2453_ gnd vdd FILL
XFILL_5__2033_ gnd vdd FILL
XFILL_1__2865_ gnd vdd FILL
XFILL_1__2445_ gnd vdd FILL
XFILL_1__2025_ gnd vdd FILL
XFILL_3__3312_ gnd vdd FILL
XFILL_5__3658_ gnd vdd FILL
XFILL_5__3238_ gnd vdd FILL
XFILL_0__1975_ gnd vdd FILL
XFILL_6__2942_ gnd vdd FILL
X_3661_ ADD[1] _1714__bF$buf1 _1688_ vdd gnd NAND2X1
XFILL_6__2522_ gnd vdd FILL
XFILL_6__2102_ gnd vdd FILL
X_3241_ _931__bF$buf3 _1069_ _1202_ _817_ vdd gnd OAI21X1
XFILL_2__2934_ gnd vdd FILL
XFILL_2__2514_ gnd vdd FILL
XFILL_6__3307_ gnd vdd FILL
XFILL_0__3701_ gnd vdd FILL
XFILL_4__2193_ gnd vdd FILL
XFILL_5__2929_ gnd vdd FILL
XFILL_5__2509_ gnd vdd FILL
XFILL_6__3480_ gnd vdd FILL
XFILL_0__2093_ gnd vdd FILL
XFILL_6__3060_ gnd vdd FILL
XFILL_2__3472_ gnd vdd FILL
XFILL_2__3052_ gnd vdd FILL
X_2932_ _543_ _574_ _572_ _1351_ _575_ vdd 
+ gnd
+ AOI22X1
X_2512_ _940_ _1028_ _1267_ _207_ vdd gnd NAND3X1
XFILL_0__3298_ gnd vdd FILL
XFILL_5__2682_ gnd vdd FILL
XFILL_5__2262_ gnd vdd FILL
XFILL_1__2674_ gnd vdd FILL
XFILL_1__2254_ gnd vdd FILL
XFILL_3__3541_ gnd vdd FILL
XFILL_3__3121_ gnd vdd FILL
XFILL_5__3467_ gnd vdd FILL
XFILL_5__3047_ gnd vdd FILL
XFILL_1__3459_ gnd vdd FILL
XFILL_1__3039_ gnd vdd FILL
XFILL_4__1884_ gnd vdd FILL
XFILL_0__1784_ gnd vdd FILL
XFILL_6__2751_ gnd vdd FILL
X_3470_ alu_op[1] _1716_ vdd gnd INVX2
XFILL_6__2331_ gnd vdd FILL
X_3050_ _914__bF$buf4 _989_ DIMUX[6] _665_ vdd gnd OAI21X1
XFILL_2__2743_ gnd vdd FILL
XFILL_2__2323_ gnd vdd FILL
XFILL_4__2669_ gnd vdd FILL
XFILL_4__2249_ gnd vdd FILL
XFILL_4__3610_ gnd vdd FILL
XFILL_0__2989_ gnd vdd FILL
XFILL_0__2569_ gnd vdd FILL
XFILL_6__3536_ gnd vdd FILL
XFILL_0__2149_ gnd vdd FILL
XFILL_6__3116_ gnd vdd FILL
XFILL_2__3528_ gnd vdd FILL
XFILL_0__3510_ gnd vdd FILL
XFILL_2__3108_ gnd vdd FILL
XFILL_5__1953_ gnd vdd FILL
XFILL_1__1945_ gnd vdd FILL
XFILL_7__2912_ gnd vdd FILL
XFILL_3__2812_ gnd vdd FILL
XFILL_5__2738_ gnd vdd FILL
XFILL_5__2318_ gnd vdd FILL
XFILL_2_BUFX2_insert80 gnd vdd FILL
XFILL_2_BUFX2_insert81 gnd vdd FILL
XFILL_2_BUFX2_insert82 gnd vdd FILL
XFILL_2_BUFX2_insert83 gnd vdd FILL
XFILL_2__3281_ gnd vdd FILL
X_2741_ _403_ _404_ _407_ _408_ vdd gnd NOR3X1
X_2321_ _941_ _1427_ _903__bF$buf0 _1428_ vdd gnd OAI21X1
XFILL_5__2491_ gnd vdd FILL
XFILL_5__2071_ gnd vdd FILL
XFILL_6__2807_ gnd vdd FILL
X_3526_ _1722_ _1555_ _1556_ vdd gnd NAND2X1
X_3106_ backwards _715_ vdd gnd INVX1
XFILL_1__2483_ gnd vdd FILL
XFILL_7__3450_ gnd vdd FILL
XFILL_1__2063_ gnd vdd FILL
XFILL_7__3030_ gnd vdd FILL
XFILL_5__3696_ gnd vdd FILL
XFILL_5__3276_ gnd vdd FILL
XFILL_1__3268_ gnd vdd FILL
XFILL_6__2980_ gnd vdd FILL
XFILL_6__2560_ gnd vdd FILL
XFILL_6__2140_ gnd vdd FILL
XFILL_2__2972_ gnd vdd FILL
XFILL_2__2552_ gnd vdd FILL
XFILL_2__2132_ gnd vdd FILL
XFILL_4__2898_ gnd vdd FILL
XFILL_4__2478_ gnd vdd FILL
XFILL_4__2058_ gnd vdd FILL
XFILL_0__2798_ gnd vdd FILL
XFILL_0__2378_ gnd vdd FILL
XFILL_5__1762_ gnd vdd FILL
XFILL_1__1754_ gnd vdd FILL
XFILL_7__2301_ gnd vdd FILL
XFILL_3__2621_ gnd vdd FILL
XFILL_3__2201_ gnd vdd FILL
XFILL_5__2967_ gnd vdd FILL
XFILL_5__2547_ gnd vdd FILL
XFILL_5__2127_ gnd vdd FILL
XFILL_1__2959_ gnd vdd FILL
XFILL_1__2539_ gnd vdd FILL
XFILL_7__3506_ gnd vdd FILL
XFILL_1__2119_ gnd vdd FILL
XFILL_2__3090_ gnd vdd FILL
X_2970_ _886__bF$buf5 _1027__bF$buf0 store _602_ vdd gnd OAI21X1
XFILL_6__1831_ gnd vdd FILL
X_2550_ _1108_ _195_ _241_ _242_ vdd gnd AOI21X1
X_2130_ RDY_bF$buf8 _1222_ _1238_ _1239_ vdd gnd OAI21X1
XFILL_2__1823_ gnd vdd FILL
XFILL_4__1749_ gnd vdd FILL
XFILL_6__2616_ gnd vdd FILL
X_3335_ _1__bF$buf1 vdd _13_ clk_bF$buf2 PC[11] vdd 
+ gnd
+ DFFSR
XFILL_1__2292_ gnd vdd FILL
XFILL_2__2608_ gnd vdd FILL
XFILL_5__3085_ gnd vdd FILL
XFILL_1__3497_ gnd vdd FILL
XFILL_1__3077_ gnd vdd FILL
XFILL_5__1818_ gnd vdd FILL
XFILL_2__2781_ gnd vdd FILL
XFILL_2__2361_ gnd vdd FILL
XFILL_4__2287_ gnd vdd FILL
X_1821_ _902__bF$buf1 _946_ _947_ vdd gnd NOR2X1
XFILL_6__3574_ gnd vdd FILL
XFILL_0__2187_ gnd vdd FILL
XFILL_6__3154_ gnd vdd FILL
XFILL_2__3566_ gnd vdd FILL
XFILL_2__3146_ gnd vdd FILL
XFILL_5__1991_ gnd vdd FILL
X_2606_ _285_ _218_ _289_ _1741_[11] vdd gnd OAI21X1
XFILL_1__1983_ gnd vdd FILL
XFILL_7__2530_ gnd vdd FILL
XFILL_3__2850_ gnd vdd FILL
XFILL_3__2430_ gnd vdd FILL
XFILL_3__2010_ gnd vdd FILL
XFILL_5__2776_ gnd vdd FILL
XFILL_5__2356_ gnd vdd FILL
XFILL_1__2768_ gnd vdd FILL
XFILL_1__2348_ gnd vdd FILL
XFILL_7__3315_ gnd vdd FILL
XFILL_3__3635_ gnd vdd FILL
XFILL_3__3215_ gnd vdd FILL
XFILL_4__1978_ gnd vdd FILL
XFILL_0__1878_ gnd vdd FILL
XFILL_6__2845_ gnd vdd FILL
X_3564_ _1570_ _1568_ _1594_ vdd gnd NOR2X1
XFILL_6__2425_ gnd vdd FILL
XFILL_6__2005_ gnd vdd FILL
X_3144_ ADD[3] _731_ _749_ vdd gnd NAND2X1
XFILL_2__2837_ gnd vdd FILL
XFILL_2__2417_ gnd vdd FILL
XFILL_7__1801_ gnd vdd FILL
XFILL_4__3704_ gnd vdd FILL
XFILL_0__3604_ gnd vdd FILL
XFILL_2__2590_ gnd vdd FILL
XFILL_2__2170_ gnd vdd FILL
XFILL_4__2096_ gnd vdd FILL
XFILL_3__2906_ gnd vdd FILL
XFILL_6_BUFX2_insert37 gnd vdd FILL
XFILL_6_BUFX2_insert38 gnd vdd FILL
XFILL_6_BUFX2_insert39 gnd vdd FILL
X_2835_ _495_ _497_ vdd gnd INVX1
X_2415_ _1259_ _1318_ _123_ _124_ vdd gnd NAND3X1
XFILL_1__1792_ gnd vdd FILL
XFILL_5__2585_ gnd vdd FILL
XFILL_5__2165_ gnd vdd FILL
XFILL_1__2997_ gnd vdd FILL
XFILL_1__2577_ gnd vdd FILL
XFILL_1__2157_ gnd vdd FILL
XFILL_7__3124_ gnd vdd FILL
XFILL_3__3024_ gnd vdd FILL
XFILL_2__1861_ gnd vdd FILL
XFILL_4__1787_ gnd vdd FILL
XFILL_6__2654_ gnd vdd FILL
X_3373_ _1__bF$buf2 vdd _50_ clk_bF$buf10 dst_reg[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2234_ gnd vdd FILL
XFILL_2__2646_ gnd vdd FILL
XFILL_2__2226_ gnd vdd FILL
XFILL_4__3513_ gnd vdd FILL
XFILL_6__3019_ gnd vdd FILL
XFILL_3__1930_ gnd vdd FILL
XFILL_5__1856_ gnd vdd FILL
XFILL_1__1848_ gnd vdd FILL
XFILL_3__2715_ gnd vdd FILL
XFILL_6__3192_ gnd vdd FILL
XFILL_2__3184_ gnd vdd FILL
XFILL_6__1925_ gnd vdd FILL
X_2644_ _317_ _318_ _319_ vdd gnd AND2X2
X_2224_ _1173_ _1215_ _1332_ vdd gnd NOR2X1
XFILL_2__1917_ gnd vdd FILL
XFILL_5__2394_ gnd vdd FILL
X_3429_ _1__bF$buf0 vdd _97_ clk_bF$buf7 _AXYS[3]_[4] vdd 
+ gnd
+ DFFSR
X_3009_ _603_ _552_ _635_ vdd gnd NAND2X1
XFILL168150x61350 gnd vdd FILL
XFILL_1__2386_ gnd vdd FILL
XFILL_3__3673_ gnd vdd FILL
XFILL_3__3253_ gnd vdd FILL
XFILL_5__3599_ gnd vdd FILL
XFILL_5__3179_ gnd vdd FILL
XFILL_6__2883_ gnd vdd FILL
XFILL_6__2463_ gnd vdd FILL
XFILL_6__2043_ gnd vdd FILL
X_3182_ _781_ _782_ _783_ vdd gnd NAND2X1
XFILL_2__2875_ gnd vdd FILL
XFILL_2__2455_ gnd vdd FILL
XFILL_2__2035_ gnd vdd FILL
X_1915_ _1030_ _1031_ _1032_ vdd gnd NAND2X1
XFILL_1_BUFX2_insert0 gnd vdd FILL
XFILL_6__3668_ gnd vdd FILL
XFILL_6__3248_ gnd vdd FILL
XFILL_1_BUFX2_insert1 gnd vdd FILL
XFILL_1_BUFX2_insert2 gnd vdd FILL
XFILL_1_BUFX2_insert3 gnd vdd FILL
XFILL_1_BUFX2_insert4 gnd vdd FILL
XFILL_1_BUFX2_insert5 gnd vdd FILL
XFILL_1_BUFX2_insert6 gnd vdd FILL
XFILL_1_BUFX2_insert7 gnd vdd FILL
XFILL_1_BUFX2_insert8 gnd vdd FILL
XFILL_1_BUFX2_insert9 gnd vdd FILL
XFILL_0__3642_ gnd vdd FILL
XFILL_0__3222_ gnd vdd FILL
XFILL_7__2624_ gnd vdd FILL
XFILL_7__2204_ gnd vdd FILL
XFILL_3__2944_ gnd vdd FILL
XFILL_3__2524_ gnd vdd FILL
XFILL_3__2104_ gnd vdd FILL
XFILL_3__3309_ gnd vdd FILL
X_2873_ _886__bF$buf5 _1185_ _528_ _21_ vdd gnd OAI21X1
X_2453_ _1334_ _154_ Z _155_ vdd gnd OAI21X1
X_2033_ _1142_ _1143_ vdd gnd INVX1
XFILL_6__2939_ gnd vdd FILL
X_3658_ _1580_ _1610_ _1611_ _1686_ vdd gnd OAI21X1
XFILL_6__2519_ gnd vdd FILL
X_3238_ _778_ _807_ _815_ _99_ vdd gnd OAI21X1
XFILL_7__3582_ gnd vdd FILL
XFILL_1__2195_ gnd vdd FILL
XFILL_7__3162_ gnd vdd FILL
XFILL_0__2913_ gnd vdd FILL
XFILL_3__3482_ gnd vdd FILL
XFILL_3__3062_ gnd vdd FILL
XFILL_6__2692_ gnd vdd FILL
XFILL_6__2272_ gnd vdd FILL
XFILL_2__2684_ gnd vdd FILL
XFILL_2__2264_ gnd vdd FILL
XFILL_4__3551_ gnd vdd FILL
XFILL_4__3131_ gnd vdd FILL
XFILL_6__3477_ gnd vdd FILL
XFILL_6__3057_ gnd vdd FILL
XFILL_0__3451_ gnd vdd FILL
XFILL_2__3469_ gnd vdd FILL
XFILL_2__3049_ gnd vdd FILL
XFILL_0__3031_ gnd vdd FILL
XFILL_5__1894_ gnd vdd FILL
X_2929_ _543_ _1178_ _572_ vdd gnd AND2X2
X_2509_ _993_ _992_ _903__bF$buf3 _204_ vdd gnd OAI21X1
XFILL_1__1886_ gnd vdd FILL
XFILL_7__2853_ gnd vdd FILL
XFILL_7__2433_ gnd vdd FILL
XFILL_7__2013_ gnd vdd FILL
XFILL_3__2753_ gnd vdd FILL
XFILL_3__2333_ gnd vdd FILL
XFILL_5__2679_ gnd vdd FILL
XFILL_5__2259_ gnd vdd FILL
XFILL_7__3638_ gnd vdd FILL
XFILL_5__3620_ gnd vdd FILL
XFILL_5__3200_ gnd vdd FILL
XFILL_1__3612_ gnd vdd FILL
XFILL_3__3538_ gnd vdd FILL
XFILL_3__3118_ gnd vdd FILL
XFILL_6__1963_ gnd vdd FILL
X_2682_ _352_ _353_ _1009_ _354_ vdd gnd AOI21X1
X_2262_ _1188_ _1355_ _1370_ vdd gnd NOR2X1
XFILL_2__1955_ gnd vdd FILL
XFILL_4__2822_ gnd vdd FILL
XFILL_4__2402_ gnd vdd FILL
XFILL_6__2748_ gnd vdd FILL
X_3467_ reset _1513_ vdd gnd INVX4
XFILL_6__2328_ gnd vdd FILL
X_3047_ _661_ _662_ vdd gnd INVX1
XFILL_0__2722_ gnd vdd FILL
XFILL_0__2302_ gnd vdd FILL
XFILL_3__3291_ gnd vdd FILL
XFILL_4__3607_ gnd vdd FILL
XFILL_0__3507_ gnd vdd FILL
XFILL_6__2081_ gnd vdd FILL
XFILL_7__2909_ gnd vdd FILL
XFILL_2__2493_ gnd vdd FILL
XFILL_2__2073_ gnd vdd FILL
XFILL_3__2809_ gnd vdd FILL
X_1953_ _914__bF$buf2 _1069_ _1032_ _1070_ vdd gnd OAI21X1
XFILL_6__3286_ gnd vdd FILL
XFILL_2__3698_ gnd vdd FILL
XFILL_0__3260_ gnd vdd FILL
XFILL_2__3278_ gnd vdd FILL
X_2738_ ADD[0] _1299_ _405_ vdd gnd NAND2X1
X_2318_ _1424_ _916_ _1425_ vdd gnd NOR2X1
XFILL_7__2662_ gnd vdd FILL
XFILL_7__2242_ gnd vdd FILL
XFILL_3__2982_ gnd vdd FILL
XFILL_3__2562_ gnd vdd FILL
XFILL_3__2142_ gnd vdd FILL
XFILL_5__2488_ gnd vdd FILL
XFILL_5__2068_ gnd vdd FILL
XFILL_7__3027_ gnd vdd FILL
XFILL_1__3001_ gnd vdd FILL
XFILL_6__1772_ gnd vdd FILL
X_2491_ _143_ _1133_ _187_ _1742_[6] vdd gnd OAI21X1
X_2071_ _1168_ IRHOLD[5] _1167_ _1180_ vdd gnd OAI21X1
XFILL_2__1764_ gnd vdd FILL
XFILL_4__2631_ gnd vdd FILL
XFILL_4__2211_ gnd vdd FILL
XFILL_6__2977_ gnd vdd FILL
X_3696_ _1741_[13] AB[13] vdd gnd BUFX2
XFILL_6__2557_ gnd vdd FILL
X_3276_ _975_ _851_ _852_ vdd gnd NOR2X1
XFILL_6__2137_ gnd vdd FILL
XFILL_0__2951_ gnd vdd FILL
XFILL_2__2969_ gnd vdd FILL
XFILL_2__2549_ gnd vdd FILL
XFILL_0__2531_ gnd vdd FILL
XFILL_2__2129_ gnd vdd FILL
XFILL_0__2111_ gnd vdd FILL
XFILL_3__1833_ gnd vdd FILL
XFILL_0__3316_ gnd vdd FILL
XFILL_5__1759_ gnd vdd FILL
XFILL_5__2700_ gnd vdd FILL
XFILL_3__2618_ gnd vdd FILL
X_1762_ RDY_bF$buf4 _889_ _890_ DIMUX[5] vdd gnd OAI21X1
XFILL_6__3095_ gnd vdd FILL
XFILL_2__3087_ gnd vdd FILL
XFILL_4__1902_ gnd vdd FILL
XFILL_6__1828_ gnd vdd FILL
X_2967_ _1150__bF$buf0 _596_ _600_ vdd gnd NAND2X1
X_2547_ _1010_ _201_ _238_ _199_ _239_ vdd 
+ gnd
+ OAI22X1
X_2127_ _886__bF$buf0 _1235_ _1236_ vdd gnd NAND2X1
XFILL_7__2891_ gnd vdd FILL
XFILL_7__2471_ gnd vdd FILL
XFILL_7__2051_ gnd vdd FILL
XFILL_0__1802_ gnd vdd FILL
XFILL_3__2791_ gnd vdd FILL
XFILL_3__2371_ gnd vdd FILL
XFILL_5__2297_ gnd vdd FILL
XFILL_1__2289_ gnd vdd FILL
XFILL_7__3256_ gnd vdd FILL
XFILL_1__3650_ gnd vdd FILL
XFILL_1__3230_ gnd vdd FILL
XFILL_3__3576_ gnd vdd FILL
XFILL_3__3156_ gnd vdd FILL
XFILL_2__1993_ gnd vdd FILL
XFILL_4__2860_ gnd vdd FILL
XFILL_4__2440_ gnd vdd FILL
XFILL_4__2020_ gnd vdd FILL
XFILL_6__2786_ gnd vdd FILL
XFILL_6__2366_ gnd vdd FILL
X_3085_ _1377_ _690_ _696_ _65_ vdd gnd OAI21X1
XFILL_2__2778_ gnd vdd FILL
XFILL_0__2760_ gnd vdd FILL
XFILL_2__2358_ gnd vdd FILL
XFILL_0__2340_ gnd vdd FILL
X_1818_ _943_ _944_ vdd gnd INVX1
XFILL_4__3645_ gnd vdd FILL
XFILL_4__3225_ gnd vdd FILL
XFILL_0__3545_ gnd vdd FILL
XFILL_0__3125_ gnd vdd FILL
XFILL_5__1988_ gnd vdd FILL
XFILL_3_BUFX2_insert0 gnd vdd FILL
XFILL_3_BUFX2_insert1 gnd vdd FILL
XFILL_3_BUFX2_insert2 gnd vdd FILL
XFILL_3_BUFX2_insert3 gnd vdd FILL
XFILL_3_BUFX2_insert4 gnd vdd FILL
XFILL_3_BUFX2_insert5 gnd vdd FILL
XFILL_7__2527_ gnd vdd FILL
XFILL_3_BUFX2_insert6 gnd vdd FILL
XFILL_3_BUFX2_insert7 gnd vdd FILL
XFILL_3_BUFX2_insert8 gnd vdd FILL
XFILL_3_BUFX2_insert9 gnd vdd FILL
XFILL_1__2921_ gnd vdd FILL
XFILL_1__2501_ gnd vdd FILL
XFILL_3__2847_ gnd vdd FILL
XFILL_3__2427_ gnd vdd FILL
XFILL_3__2007_ gnd vdd FILL
X_1991_ _AXYS[1]_[3] _1047_ _1105_ vdd gnd NAND2X1
XFILL_5__3714_ gnd vdd FILL
XFILL_1__3706_ gnd vdd FILL
X_2776_ _280_ _365_ _441_ vdd gnd NAND2X1
X_2356_ _1441_ _1451_ _1461_ _1462_ vdd gnd NAND3X1
XFILL_7__2280_ gnd vdd FILL
XFILL_3__2180_ gnd vdd FILL
XFILL_4__2916_ gnd vdd FILL
XFILL_7__3485_ gnd vdd FILL
XFILL_1__2098_ gnd vdd FILL
XFILL_7__3065_ gnd vdd FILL
XFILL_0__2816_ gnd vdd FILL
XFILL_6__2595_ gnd vdd FILL
XFILL_6__2175_ gnd vdd FILL
XFILL_2__2587_ gnd vdd FILL
XFILL_2__2167_ gnd vdd FILL
XFILL_7__1971_ gnd vdd FILL
XFILL_4__3454_ gnd vdd FILL
XFILL_4__3034_ gnd vdd FILL
XFILL_3__1871_ gnd vdd FILL
XFILL_5__1797_ gnd vdd FILL
XFILL_1__1789_ gnd vdd FILL
XFILL_7__2756_ gnd vdd FILL
XFILL_1__2730_ gnd vdd FILL
XFILL_1__2310_ gnd vdd FILL
XFILL_3__2656_ gnd vdd FILL
XFILL_3__2236_ gnd vdd FILL
XFILL_5__3523_ gnd vdd FILL
XFILL_5__3103_ gnd vdd FILL
XFILL_1__3515_ gnd vdd FILL
XFILL_4__1940_ gnd vdd FILL
XFILL_6__1866_ gnd vdd FILL
X_2585_ _215_ _272_ vdd gnd INVX2
X_2165_ _1271_ _1273_ _1270_ _1274_ vdd gnd AOI21X1
XFILL_0__1840_ gnd vdd FILL
XFILL_2__1858_ gnd vdd FILL
XFILL_4__2725_ gnd vdd FILL
XFILL_4__2305_ gnd vdd FILL
XFILL_7__3294_ gnd vdd FILL
XFILL_0__2625_ gnd vdd FILL
XFILL_0__2205_ gnd vdd FILL
XFILL169050x133350 gnd vdd FILL
XFILL_3__3194_ gnd vdd FILL
XFILL_3__1927_ gnd vdd FILL
XFILL_2__2396_ gnd vdd FILL
X_1856_ _900_ _981_ vdd gnd INVX1
XFILL_7__1780_ gnd vdd FILL
XFILL_4__3263_ gnd vdd FILL
XFILL_6__3189_ gnd vdd FILL
XFILL_0__3583_ gnd vdd FILL
XFILL_0__3163_ gnd vdd FILL
XFILL_7__2985_ gnd vdd FILL
XFILL_7__2145_ gnd vdd FILL
XFILL_3__2885_ gnd vdd FILL
XFILL_3__2465_ gnd vdd FILL
XFILL_3__2045_ gnd vdd FILL
X_2394_ _1197_ _1497_ _1498_ _1499_ vdd gnd NAND3X1
XFILL169350x3750 gnd vdd FILL
XFILL_4__2954_ gnd vdd FILL
XFILL_4__2534_ gnd vdd FILL
XFILL_4__2114_ gnd vdd FILL
X_3599_ _1533_ _1628_ _1536_ _1629_ vdd gnd OAI21X1
X_3179_ _769_ _759_ _773_ _780_ vdd gnd OAI21X1
XFILL_0__2854_ gnd vdd FILL
XFILL_0__2434_ gnd vdd FILL
XFILL_0__2014_ gnd vdd FILL
XFILL_1__1810_ gnd vdd FILL
XFILL_0__3639_ gnd vdd FILL
XFILL_0__3219_ gnd vdd FILL
XFILL_5__2603_ gnd vdd FILL
XFILL_4__3492_ gnd vdd FILL
XFILL_4__3072_ gnd vdd FILL
XFILL_4__1805_ gnd vdd FILL
XFILL_7__2374_ gnd vdd FILL
XFILL_3__2694_ gnd vdd FILL
XFILL_3__2274_ gnd vdd FILL
XFILL_7__3579_ gnd vdd FILL
XFILL_5__3561_ gnd vdd FILL
XFILL_7__3159_ gnd vdd FILL
XFILL_5__3141_ gnd vdd FILL
XFILL_1__3553_ gnd vdd FILL
XFILL_1__3133_ gnd vdd FILL
XFILL_3__3479_ gnd vdd FILL
XFILL_3__3059_ gnd vdd FILL
XFILL_2__1896_ gnd vdd FILL
XFILL_4__2763_ gnd vdd FILL
XFILL_4__2343_ gnd vdd FILL
XFILL_6__2689_ gnd vdd FILL
XFILL_6__2269_ gnd vdd FILL
XFILL_0__2663_ gnd vdd FILL
XFILL_6__3630_ gnd vdd FILL
XFILL_0__2243_ gnd vdd FILL
XFILL_6__3210_ gnd vdd FILL
XFILL_2__3622_ gnd vdd FILL
XFILL_2__3202_ gnd vdd FILL
XFILL_4__3548_ gnd vdd FILL
XFILL_4__3128_ gnd vdd FILL
XFILL_3__1965_ gnd vdd FILL
XFILL_0__3028_ gnd vdd FILL
XFILL_5__2832_ gnd vdd FILL
XFILL_5__2412_ gnd vdd FILL
XFILL_1__2824_ gnd vdd FILL
XFILL_1__2404_ gnd vdd FILL
X_1894_ _1012_ _968_ _1013_ _1004_ BI[5] vdd 
+ gnd
+ OAI22X1
XFILL_5__3617_ gnd vdd FILL
XFILL_1__3609_ gnd vdd FILL
X_2679_ _1291_ _325_ _351_ vdd gnd NOR2X1
X_2259_ _1366_ _1355_ _1367_ vdd gnd NOR2X1
XFILL_0__1934_ gnd vdd FILL
XFILL_6__2901_ gnd vdd FILL
X_3620_ _1724_ _1729_ _1639_ _1649_ _1650_ vdd 
+ gnd
+ AOI22X1
X_3200_ _720__bF$buf1 _687_ _AXYS[1]_[5] _795_ vdd gnd OAI21X1
XFILL_3__2083_ gnd vdd FILL
XFILL_4__2819_ gnd vdd FILL
XFILL_0__2719_ gnd vdd FILL
XFILL_3__3288_ gnd vdd FILL
XFILL_4__2992_ gnd vdd FILL
XFILL_4__2572_ gnd vdd FILL
XFILL_4__2152_ gnd vdd FILL
XFILL_6__2498_ gnd vdd FILL
XFILL_6__2078_ gnd vdd FILL
XFILL_0__2892_ gnd vdd FILL
XFILL_0__2472_ gnd vdd FILL
XFILL_0__2052_ gnd vdd FILL
XFILL_2__3011_ gnd vdd FILL
XFILL_7__1874_ gnd vdd FILL
XFILL_0__3677_ gnd vdd FILL
XFILL_3__1774_ gnd vdd FILL
XFILL_0__3257_ gnd vdd FILL
XFILL_7__2659_ gnd vdd FILL
XFILL_5__2641_ gnd vdd FILL
XFILL_5__2221_ gnd vdd FILL
XFILL_1__2633_ gnd vdd FILL
XFILL_7__3600_ gnd vdd FILL
XFILL_1__2213_ gnd vdd FILL
XFILL_3__2979_ gnd vdd FILL
XFILL_3__2559_ gnd vdd FILL
XFILL_3__2139_ gnd vdd FILL
XFILL_3__3500_ gnd vdd FILL
XFILL_5__3006_ gnd vdd FILL
XFILL_4__1843_ gnd vdd FILL
XFILL_6__1769_ gnd vdd FILL
X_2488_ ADD[6] _144_ _184_ _185_ vdd gnd AOI21X1
X_2068_ IRHOLD_valid _888_ _1176_ _1177_ vdd gnd OAI21X1
XFILL_6__2710_ gnd vdd FILL
XFILL_2__2702_ gnd vdd FILL
XFILL_4__2628_ gnd vdd FILL
XFILL_4__2208_ gnd vdd FILL
XFILL_0__2948_ gnd vdd FILL
XFILL_0__2528_ gnd vdd FILL
XFILL_0__2108_ gnd vdd FILL
XFILL_1__3591_ gnd vdd FILL
XFILL_1__3171_ gnd vdd FILL
XFILL_3__3097_ gnd vdd FILL
XFILL_5__1912_ gnd vdd FILL
XFILL_1__1904_ gnd vdd FILL
XFILL_4__2381_ gnd vdd FILL
XFILL_0__2281_ gnd vdd FILL
XFILL_2__2299_ gnd vdd FILL
XFILL_2__3660_ gnd vdd FILL
XFILL_2__3240_ gnd vdd FILL
X_1759_ _888_ DIMUX[4] vdd gnd INVX1
XFILL_4__3586_ gnd vdd FILL
XFILL_4__3166_ gnd vdd FILL
X_2700_ _364_ _322_ _353_ _371_ vdd gnd OAI21X1
XFILL_0__3486_ gnd vdd FILL
XFILL_0__3066_ gnd vdd FILL
XFILL_5__2870_ gnd vdd FILL
XFILL_7__2888_ gnd vdd FILL
XFILL_5__2450_ gnd vdd FILL
XFILL_5__2030_ gnd vdd FILL
XFILL_7__2048_ gnd vdd FILL
XFILL_1__2862_ gnd vdd FILL
XFILL_1__2442_ gnd vdd FILL
XFILL_1__2022_ gnd vdd FILL
XFILL_3__2788_ gnd vdd FILL
XFILL_3__2368_ gnd vdd FILL
XFILL_5__3655_ gnd vdd FILL
XFILL_5__3235_ gnd vdd FILL
XFILL_1__3647_ gnd vdd FILL
XFILL_1__3227_ gnd vdd FILL
XFILL_6__1998_ gnd vdd FILL
X_2297_ _1156_ _1404_ vdd gnd INVX1
XFILL_0__1972_ gnd vdd FILL
XFILL_2__2931_ gnd vdd FILL
XFILL_2__2511_ gnd vdd FILL
XFILL_4__2857_ gnd vdd FILL
XFILL_4__2437_ gnd vdd FILL
XFILL_4__2017_ gnd vdd FILL
XFILL_0__2757_ gnd vdd FILL
XFILL_0__2337_ gnd vdd FILL
XFILL_6__3304_ gnd vdd FILL
XFILL_4__2190_ gnd vdd FILL
XFILL_5__2926_ gnd vdd FILL
XFILL_5__2506_ gnd vdd FILL
XFILL_0__2090_ gnd vdd FILL
XFILL_1__2918_ gnd vdd FILL
X_1988_ _1102_ _1092_ _1008_ _983_ _1103_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3295_ gnd vdd FILL
XFILL_7__2277_ gnd vdd FILL
X_3714_ _1742_[7] DO[7] vdd gnd BUFX2
XFILL_1__2671_ gnd vdd FILL
XFILL_1__2251_ gnd vdd FILL
XFILL_3__2597_ gnd vdd FILL
XFILL_3__2177_ gnd vdd FILL
XFILL_5__3464_ gnd vdd FILL
XFILL_5__3044_ gnd vdd FILL
XFILL_1__3456_ gnd vdd FILL
XFILL_1__3036_ gnd vdd FILL
XFILL_4__1881_ gnd vdd FILL
XFILL_2__1799_ gnd vdd FILL
XFILL_0__1781_ gnd vdd FILL
XFILL_2__2740_ gnd vdd FILL
XFILL_2__2320_ gnd vdd FILL
XFILL_4__2666_ gnd vdd FILL
XFILL_4__2246_ gnd vdd FILL
XFILL_0__2986_ gnd vdd FILL
XFILL_0__2566_ gnd vdd FILL
XFILL_6__3533_ gnd vdd FILL
XFILL_0__2146_ gnd vdd FILL
XFILL_6__3113_ gnd vdd FILL
XFILL_2__3525_ gnd vdd FILL
XFILL_2__3105_ gnd vdd FILL
XFILL_5__1950_ gnd vdd FILL
XFILL_1__1942_ gnd vdd FILL
XFILL_3__1868_ gnd vdd FILL
XFILL_5__2735_ gnd vdd FILL
XFILL_5__2315_ gnd vdd FILL
XFILL_2_BUFX2_insert50 gnd vdd FILL
XFILL_2_BUFX2_insert51 gnd vdd FILL
XFILL_2_BUFX2_insert52 gnd vdd FILL
XFILL_2_BUFX2_insert53 gnd vdd FILL
XFILL_2_BUFX2_insert54 gnd vdd FILL
XFILL_2_BUFX2_insert55 gnd vdd FILL
XFILL_2_BUFX2_insert56 gnd vdd FILL
XFILL_1__2727_ gnd vdd FILL
XFILL_2_BUFX2_insert57 gnd vdd FILL
XFILL_2_BUFX2_insert58 gnd vdd FILL
XFILL_1__2307_ gnd vdd FILL
XFILL_2_BUFX2_insert59 gnd vdd FILL
X_1797_ _909_ _922_ _921_ _917_ _923_ vdd 
+ gnd
+ OAI22X1
XFILL_4__1937_ gnd vdd FILL
XFILL_0__1837_ gnd vdd FILL
XFILL_6__2804_ gnd vdd FILL
X_3523_ BI[2] _1553_ vdd gnd INVX1
X_3103_ _704_ _711_ _712_ _713_ vdd gnd OAI21X1
XFILL_1__2480_ gnd vdd FILL
XFILL_1__2060_ gnd vdd FILL
XFILL_5__3693_ gnd vdd FILL
XFILL_5__3273_ gnd vdd FILL
XFILL_1__3265_ gnd vdd FILL
XFILL_4__2895_ gnd vdd FILL
XFILL_4__2475_ gnd vdd FILL
XFILL_4__2055_ gnd vdd FILL
XFILL_0__2795_ gnd vdd FILL
XFILL_0__2375_ gnd vdd FILL
XFILL_7__1777_ gnd vdd FILL
XFILL_1__1751_ gnd vdd FILL
XFILL_5__2964_ gnd vdd FILL
XFILL_5__2544_ gnd vdd FILL
XFILL_5__2124_ gnd vdd FILL
XFILL_1__2956_ gnd vdd FILL
XFILL_1__2536_ gnd vdd FILL
XFILL_7__3503_ gnd vdd FILL
XFILL_1__2116_ gnd vdd FILL
XFILL_2__1820_ gnd vdd FILL
XFILL_4__1746_ gnd vdd FILL
XFILL_6__2613_ gnd vdd FILL
X_3332_ _1__bF$buf4 vdd _10_ clk_bF$buf2 PC[8] vdd 
+ gnd
+ DFFSR
XFILL_2__2605_ gnd vdd FILL
XFILL_5__3082_ gnd vdd FILL
XFILL_1__3494_ gnd vdd FILL
XFILL_1__3074_ gnd vdd FILL
XFILL_5__1815_ gnd vdd FILL
XFILL_1__1807_ gnd vdd FILL
XFILL_4__2284_ gnd vdd FILL
XFILL_6__3571_ gnd vdd FILL
XFILL_0__2184_ gnd vdd FILL
XFILL_6__3151_ gnd vdd FILL
XFILL_2__3563_ gnd vdd FILL
XFILL_2__3143_ gnd vdd FILL
XFILL_4__3489_ gnd vdd FILL
XFILL_4__3069_ gnd vdd FILL
X_2603_ _925_ _196_ ABH[3] _287_ vdd gnd OAI21X1
XFILL_1__1980_ gnd vdd FILL
XFILL_5__2773_ gnd vdd FILL
XFILL_5__2353_ gnd vdd FILL
XFILL_1__2765_ gnd vdd FILL
XFILL_1__2345_ gnd vdd FILL
XFILL_7__3312_ gnd vdd FILL
XFILL_3__3632_ gnd vdd FILL
XFILL_3__3212_ gnd vdd FILL
XFILL_5__3558_ gnd vdd FILL
XFILL_5__3138_ gnd vdd FILL
XFILL_4__1975_ gnd vdd FILL
XFILL_0__1875_ gnd vdd FILL
XFILL_6__2842_ gnd vdd FILL
X_3561_ _1590_ _1589_ _1591_ vdd gnd NAND2X1
XFILL_6__2422_ gnd vdd FILL
XFILL_6__2002_ gnd vdd FILL
X_3141_ _732_ _741_ _746_ vdd gnd NOR2X1
XFILL_2__2834_ gnd vdd FILL
XFILL_2__2414_ gnd vdd FILL
XFILL_4__3701_ gnd vdd FILL
XFILL_6__3627_ gnd vdd FILL
XFILL_6__3207_ gnd vdd FILL
XFILL_0__3601_ gnd vdd FILL
XFILL_2__3619_ gnd vdd FILL
XFILL_4__2093_ gnd vdd FILL
XFILL_3__2903_ gnd vdd FILL
XFILL_5__2829_ gnd vdd FILL
XFILL_5__2409_ gnd vdd FILL
XFILL_4__3298_ gnd vdd FILL
X_2832_ _295_ _352_ _494_ vdd gnd NOR2X1
X_2412_ _119_ _120_ _121_ vdd gnd NAND2X1
XFILL_0__3198_ gnd vdd FILL
XFILL_5__2582_ gnd vdd FILL
XFILL_5__2162_ gnd vdd FILL
X_3617_ BI[6] _1739_ _1646_ _1647_ vdd gnd OAI21X1
XFILL_1__2994_ gnd vdd FILL
XFILL_1__2574_ gnd vdd FILL
XFILL_1__2154_ gnd vdd FILL
XFILL_3__3021_ gnd vdd FILL
XFILL_4__1784_ gnd vdd FILL
XFILL_6__2651_ gnd vdd FILL
XFILL_6__2231_ gnd vdd FILL
X_3370_ _1__bF$buf2 vdd _47_ clk_bF$buf10 src_reg[0] vdd 
+ gnd
+ DFFSR
XFILL_2__2643_ gnd vdd FILL
XFILL_2__2223_ gnd vdd FILL
XFILL_4__2989_ gnd vdd FILL
XFILL_4__2569_ gnd vdd FILL
XFILL_4__2149_ gnd vdd FILL
XFILL_4__3510_ gnd vdd FILL
XFILL_0__2889_ gnd vdd FILL
XFILL_0__2469_ gnd vdd FILL
XFILL_0__2049_ gnd vdd FILL
XFILL_6__3016_ gnd vdd FILL
XFILL_2__3008_ gnd vdd FILL
XFILL_5__1853_ gnd vdd FILL
XFILL_1__1845_ gnd vdd FILL
XFILL_7__2812_ gnd vdd FILL
XFILL_3__2712_ gnd vdd FILL
XFILL_5__2638_ gnd vdd FILL
XFILL_5__2218_ gnd vdd FILL
XFILL_2__3181_ gnd vdd FILL
XFILL_6__1922_ gnd vdd FILL
X_2641_ _311_ _315_ _316_ vdd gnd NOR2X1
X_2221_ _1328_ _1329_ vdd gnd INVX1
XFILL_2__1914_ gnd vdd FILL
XFILL_5__2391_ gnd vdd FILL
XFILL_6__2707_ gnd vdd FILL
X_3426_ _1__bF$buf10 vdd _94_ clk_bF$buf8 _AXYS[3]_[1] vdd 
+ gnd
+ DFFSR
X_3006_ _632_ _630_ _50_ vdd gnd NAND2X1
XFILL_1__2383_ gnd vdd FILL
XFILL_3__3670_ gnd vdd FILL
XFILL_3__3250_ gnd vdd FILL
XFILL_5__3596_ gnd vdd FILL
XFILL_5__3176_ gnd vdd FILL
XFILL_1__3588_ gnd vdd FILL
XFILL_1__3168_ gnd vdd FILL
XFILL_5__1909_ gnd vdd FILL
XFILL_6__2880_ gnd vdd FILL
XFILL_6__2460_ gnd vdd FILL
XFILL_6__2040_ gnd vdd FILL
XFILL_2__2872_ gnd vdd FILL
XFILL_2__2452_ gnd vdd FILL
XFILL_2__2032_ gnd vdd FILL
XFILL_4__2798_ gnd vdd FILL
XFILL_4__2378_ gnd vdd FILL
X_1912_ _914__bF$buf0 _949_ _1028_ _1029_ vdd gnd OAI21X1
XFILL_0__2698_ gnd vdd FILL
XFILL_6__3665_ gnd vdd FILL
XFILL_0__2278_ gnd vdd FILL
XFILL_6__3245_ gnd vdd FILL
XFILL_2__3657_ gnd vdd FILL
XFILL_2__3237_ gnd vdd FILL
XFILL_7__2201_ gnd vdd FILL
XFILL_3__2941_ gnd vdd FILL
XFILL_3__2521_ gnd vdd FILL
XFILL_3__2101_ gnd vdd FILL
XFILL_5__2867_ gnd vdd FILL
XFILL_5__2447_ gnd vdd FILL
XFILL_5__2027_ gnd vdd FILL
XFILL_1__2859_ gnd vdd FILL
XFILL_1__2439_ gnd vdd FILL
XFILL_1__2019_ gnd vdd FILL
XFILL_3__3306_ gnd vdd FILL
X_2870_ cond_code[1] _886__bF$buf5 _527_ vdd gnd NAND2X1
X_2450_ _143_ _1060_ _152_ _1742_[0] vdd gnd OAI21X1
X_2030_ _1049_ _AXYS[3]_[7] _AXYS[2]_[7] _1057_ _1140_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1969_ gnd vdd FILL
XFILL_6__2936_ gnd vdd FILL
X_3655_ _1714__bF$buf3 _1626_ _1683_ _1516_ vdd gnd OAI21X1
XFILL_6__2516_ gnd vdd FILL
X_3235_ _720__bF$buf3 _808_ _AXYS[3]_[5] _814_ vdd gnd OAI21X1
XFILL_1__2192_ gnd vdd FILL
XFILL_2__2928_ gnd vdd FILL
XFILL_0__2910_ gnd vdd FILL
XFILL_2__2508_ gnd vdd FILL
XFILL_2__2681_ gnd vdd FILL
XFILL_2__2261_ gnd vdd FILL
XFILL_4__2187_ gnd vdd FILL
XFILL_6__3474_ gnd vdd FILL
XFILL_0__2087_ gnd vdd FILL
XFILL_6__3054_ gnd vdd FILL
XFILL167850x64950 gnd vdd FILL
XFILL_2__3466_ gnd vdd FILL
XFILL_2__3046_ gnd vdd FILL
XFILL_5__1891_ gnd vdd FILL
X_2926_ _1395_ _569_ _1185_ _570_ vdd gnd OAI21X1
X_2506_ _1201_ _943_ _201_ vdd gnd NOR2X1
XFILL_1__1883_ gnd vdd FILL
XFILL_7__2430_ gnd vdd FILL
XFILL_3__2750_ gnd vdd FILL
XFILL_3__2330_ gnd vdd FILL
XFILL_5__2676_ gnd vdd FILL
XFILL_5__2256_ gnd vdd FILL
XFILL_1__2668_ gnd vdd FILL
XFILL_7__3635_ gnd vdd FILL
XFILL_1__2248_ gnd vdd FILL
XFILL_7__3215_ gnd vdd FILL
XFILL_3__3535_ gnd vdd FILL
XFILL_3__3115_ gnd vdd FILL
XFILL_6__1960_ gnd vdd FILL
XFILL_2__1952_ gnd vdd FILL
XFILL_4__1878_ gnd vdd FILL
XFILL_0__1778_ gnd vdd FILL
XFILL_6__2745_ gnd vdd FILL
X_3464_ _1708_ _1710_ _1712_ vdd gnd NOR2X1
XFILL_6__2325_ gnd vdd FILL
X_3044_ _656_ _917_ _658_ _659_ vdd gnd OAI21X1
XFILL_2__2737_ gnd vdd FILL
XFILL_2__2317_ gnd vdd FILL
XFILL_4__3604_ gnd vdd FILL
XFILL_0__3504_ gnd vdd FILL
XFILL_5__1947_ gnd vdd FILL
XFILL_1__1939_ gnd vdd FILL
XFILL_7__2906_ gnd vdd FILL
XFILL_2__2490_ gnd vdd FILL
XFILL_2__2070_ gnd vdd FILL
XFILL_3__2806_ gnd vdd FILL
X_1950_ _903__bF$buf2 _969_ _935_ _1067_ vdd gnd OAI21X1
XFILL_6__3283_ gnd vdd FILL
XFILL_2__3695_ gnd vdd FILL
XFILL_2__3275_ gnd vdd FILL
X_2735_ RDY_bF$buf0 _1016_ _400_ _402_ _9_ vdd 
+ gnd
+ OAI22X1
X_2315_ _1408_ _1415_ _1421_ _1422_ vdd gnd NAND3X1
XFILL_5__2485_ gnd vdd FILL
XFILL_5__2065_ gnd vdd FILL
XFILL_1__2897_ gnd vdd FILL
XFILL_1__2477_ gnd vdd FILL
XFILL_1__2057_ gnd vdd FILL
XFILL_7__3024_ gnd vdd FILL
XFILL_2__1761_ gnd vdd FILL
XFILL_6__2974_ gnd vdd FILL
X_3693_ _1741_[10] AB[10] vdd gnd BUFX2
XFILL_6__2554_ gnd vdd FILL
X_3273_ _848_ _839_ _847_ _849_ vdd gnd NAND3X1
XFILL_6__2134_ gnd vdd FILL
XFILL_2__2966_ gnd vdd FILL
XFILL_2__2546_ gnd vdd FILL
XFILL_2__2126_ gnd vdd FILL
XFILL_7__1930_ gnd vdd FILL
XFILL_3__1830_ gnd vdd FILL
XFILL_0__3313_ gnd vdd FILL
XFILL_5__1756_ gnd vdd FILL
XFILL_1__1748_ gnd vdd FILL
XFILL_3__2615_ gnd vdd FILL
XFILL_6__3092_ gnd vdd FILL
XFILL_2__3084_ gnd vdd FILL
XFILL_6__1825_ gnd vdd FILL
X_2964_ _1149__bF$buf4 _597_ _598_ _42_ vdd gnd OAI21X1
X_2544_ _236_ _1741_[2] vdd gnd INVX1
X_2124_ _902__bF$buf3 _989_ _1233_ vdd gnd NOR2X1
XFILL_2__1817_ gnd vdd FILL
XFILL_5__2294_ gnd vdd FILL
X_3329_ _1__bF$buf4 vdd _7_ clk_bF$buf5 PC[5] vdd 
+ gnd
+ DFFSR
XFILL_1__2286_ gnd vdd FILL
XFILL_7__3253_ gnd vdd FILL
XFILL_7_BUFX2_insert71 gnd vdd FILL
XFILL_7_BUFX2_insert72 gnd vdd FILL
XFILL_3__3573_ gnd vdd FILL
XFILL_3__3153_ gnd vdd FILL
XFILL_7_BUFX2_insert74 gnd vdd FILL
XFILL_7_BUFX2_insert75 gnd vdd FILL
XFILL_7_BUFX2_insert77 gnd vdd FILL
XFILL_5__3499_ gnd vdd FILL
XFILL_5__3079_ gnd vdd FILL
XFILL_7_BUFX2_insert79 gnd vdd FILL
XFILL_2__1990_ gnd vdd FILL
XFILL_6__2783_ gnd vdd FILL
XFILL_6__2363_ gnd vdd FILL
X_3082_ DIMUX[7] _1027__bF$buf3 _693_ _694_ vdd gnd AOI21X1
XFILL_2__2775_ gnd vdd FILL
XFILL_2__2355_ gnd vdd FILL
X_1815_ _924_ _898_ _941_ vdd gnd NOR2X1
XFILL_4__3642_ gnd vdd FILL
XFILL_4__3222_ gnd vdd FILL
XFILL_6__3568_ gnd vdd FILL
XFILL_6__3148_ gnd vdd FILL
XFILL_0__3542_ gnd vdd FILL
XFILL_0__3122_ gnd vdd FILL
XFILL_5__1985_ gnd vdd FILL
XFILL_1__1977_ gnd vdd FILL
XFILL_7__2524_ gnd vdd FILL
XFILL_3__2844_ gnd vdd FILL
XFILL_3__2424_ gnd vdd FILL
XFILL_3__2004_ gnd vdd FILL
XFILL_5__3711_ gnd vdd FILL
XFILL_7__3309_ gnd vdd FILL
XFILL_1__3703_ gnd vdd FILL
XFILL_3__3629_ gnd vdd FILL
XFILL_3__3209_ gnd vdd FILL
X_2773_ _437_ _280_ _352_ _438_ vdd gnd MUX2X1
X_2353_ _1420_ _1419_ _1459_ vdd gnd NAND2X1
XFILL_4__2913_ gnd vdd FILL
XFILL_6__2839_ gnd vdd FILL
X_3558_ BI[0] _1573_ _1588_ vdd gnd NAND2X1
XFILL_6__2419_ gnd vdd FILL
X_3138_ DIMUX[2] _1319__bF$buf3 _743_ _744_ vdd gnd AOI21X1
XFILL_7__3482_ gnd vdd FILL
XFILL_1__2095_ gnd vdd FILL
XFILL_7__3062_ gnd vdd FILL
XFILL_0__2813_ gnd vdd FILL
XFILL169350x32550 gnd vdd FILL
XFILL_6__2592_ gnd vdd FILL
XFILL_6__2172_ gnd vdd FILL
XFILL_2__2584_ gnd vdd FILL
XFILL_2__2164_ gnd vdd FILL
XFILL_4__3451_ gnd vdd FILL
XFILL_4__3031_ gnd vdd FILL
XFILL_5__1794_ gnd vdd FILL
X_2829_ _296_ _378_ _490_ _491_ vdd gnd OAI21X1
X_2409_ _117_ _1254_ _118_ vdd gnd AND2X2
XFILL_1__1786_ gnd vdd FILL
XFILL_7__2753_ gnd vdd FILL
XFILL_7__2333_ gnd vdd FILL
XFILL_3__2653_ gnd vdd FILL
XFILL_3__2233_ gnd vdd FILL
XFILL_5__2999_ gnd vdd FILL
XFILL_5__2579_ gnd vdd FILL
XFILL_5__2159_ gnd vdd FILL
XFILL_5__3520_ gnd vdd FILL
XFILL_7__3538_ gnd vdd FILL
XFILL_5__3100_ gnd vdd FILL
XFILL_1__3512_ gnd vdd FILL
XFILL_3__3018_ gnd vdd FILL
XFILL_6__1863_ gnd vdd FILL
X_2582_ ABH[0] _269_ vdd gnd INVX1
X_2162_ _931__bF$buf4 _974_ _886__bF$buf2 _1271_ vdd gnd OAI21X1
XFILL_2__1855_ gnd vdd FILL
XFILL_4__2722_ gnd vdd FILL
XFILL_4__2302_ gnd vdd FILL
XFILL_6__2648_ gnd vdd FILL
XFILL_6__2228_ gnd vdd FILL
X_3367_ _1__bF$buf9 vdd _44_ clk_bF$buf6 write_back vdd 
+ gnd
+ DFFSR
XFILL_7__3291_ gnd vdd FILL
XFILL_0__2622_ gnd vdd FILL
XFILL_0__2202_ gnd vdd FILL
XFILL_3__3191_ gnd vdd FILL
XFILL_4__3507_ gnd vdd FILL
XFILL_3__1924_ gnd vdd FILL
XFILL_7__2809_ gnd vdd FILL
XFILL_2__2393_ gnd vdd FILL
XFILL_3__2709_ gnd vdd FILL
X_1853_ _903__bF$buf1 _977_ _978_ vdd gnd NAND2X1
XFILL_4__3260_ gnd vdd FILL
XFILL_6__3186_ gnd vdd FILL
XFILL_2__3598_ gnd vdd FILL
XFILL_0__3580_ gnd vdd FILL
XFILL_0__3160_ gnd vdd FILL
XFILL_2__3178_ gnd vdd FILL
XFILL_6__1919_ gnd vdd FILL
X_2638_ _312_ _313_ vdd gnd INVX1
X_2218_ _1213_ _1215_ _1326_ vdd gnd NOR2X1
XFILL_7__2982_ gnd vdd FILL
XFILL_7__2562_ gnd vdd FILL
XFILL_7__2142_ gnd vdd FILL
XFILL_3__2882_ gnd vdd FILL
XFILL_3__2462_ gnd vdd FILL
XFILL_3__2042_ gnd vdd FILL
XFILL_5__2388_ gnd vdd FILL
XFILL_3__3667_ gnd vdd FILL
XFILL_3__3247_ gnd vdd FILL
X_2391_ _1239_ _1434_ _1496_ vdd gnd NOR2X1
XFILL_4__2951_ gnd vdd FILL
XFILL_4__2531_ gnd vdd FILL
XFILL_4__2111_ gnd vdd FILL
XFILL_6__2877_ gnd vdd FILL
X_3596_ _1550_ _1625_ _1607_ _1624_ _1626_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2457_ gnd vdd FILL
XFILL_6__2037_ gnd vdd FILL
X_3176_ _777_ _778_ vdd gnd INVX1
XFILL_0__2851_ gnd vdd FILL
XFILL_2__2869_ gnd vdd FILL
XFILL_2__2449_ gnd vdd FILL
XFILL_0__2431_ gnd vdd FILL
XFILL_0__2011_ gnd vdd FILL
XFILL_2__2029_ gnd vdd FILL
X_1909_ _1023_ _1025_ _1026_ vdd gnd NOR2X1
XFILL_4__3316_ gnd vdd FILL
XFILL_0__3636_ gnd vdd FILL
XFILL_0__3216_ gnd vdd FILL
XFILL_5__2600_ gnd vdd FILL
XFILL_3__2938_ gnd vdd FILL
XFILL_3__2518_ gnd vdd FILL
XFILL_4__1802_ gnd vdd FILL
X_2867_ _1153_ _1021_ _525_ _18_ vdd gnd OAI21X1
X_2447_ PC[0] _1080_ _149_ C _150_ vdd 
+ gnd
+ AOI22X1
X_2027_ _1082_ ADD[6] _1137_ _1138_ vdd gnd AOI21X1
XFILL_7__2791_ gnd vdd FILL
XFILL_7__2371_ gnd vdd FILL
XFILL167250x144150 gnd vdd FILL
XFILL_3__2691_ gnd vdd FILL
XFILL_3__2271_ gnd vdd FILL
XFILL_5__2197_ gnd vdd FILL
XFILL_1__2189_ gnd vdd FILL
XFILL_7__3156_ gnd vdd FILL
XFILL_0__2907_ gnd vdd FILL
XFILL_1__3550_ gnd vdd FILL
XFILL_1__3130_ gnd vdd FILL
XFILL_3__3476_ gnd vdd FILL
XFILL_3__3056_ gnd vdd FILL
XFILL169650x75750 gnd vdd FILL
XFILL_2__1893_ gnd vdd FILL
XFILL_4__2760_ gnd vdd FILL
XFILL_4__2340_ gnd vdd FILL
XFILL_6__2686_ gnd vdd FILL
XFILL_6__2266_ gnd vdd FILL
XFILL_2__2678_ gnd vdd FILL
XFILL_0__2660_ gnd vdd FILL
XFILL_2__2258_ gnd vdd FILL
XFILL_0__2240_ gnd vdd FILL
XFILL_4__3545_ gnd vdd FILL
XFILL_4__3125_ gnd vdd FILL
XFILL_3__1962_ gnd vdd FILL
XFILL_0__3025_ gnd vdd FILL
XFILL_5__1888_ gnd vdd FILL
XFILL_7__2427_ gnd vdd FILL
XFILL_1__2821_ gnd vdd FILL
XFILL_1__2401_ gnd vdd FILL
XFILL_3__2747_ gnd vdd FILL
XFILL_3__2327_ gnd vdd FILL
X_1891_ _1011_ _968_ _888_ _1004_ BI[4] vdd 
+ gnd
+ OAI22X1
XFILL_5__3614_ gnd vdd FILL
XFILL_1__3606_ gnd vdd FILL
XFILL168450x57750 gnd vdd FILL
XFILL_6__1957_ gnd vdd FILL
X_2676_ _347_ _349_ vdd gnd INVX1
X_2256_ _1363_ _1358_ _1364_ vdd gnd NOR2X1
XFILL_7__2180_ gnd vdd FILL
XFILL_2__1949_ gnd vdd FILL
XFILL_0__1931_ gnd vdd FILL
XFILL_3__2080_ gnd vdd FILL
XFILL_4__2816_ gnd vdd FILL
XFILL_0__2716_ gnd vdd FILL
XFILL_3__3285_ gnd vdd FILL
XFILL_6__2495_ gnd vdd FILL
XFILL_6__2075_ gnd vdd FILL
XFILL_2__2487_ gnd vdd FILL
XFILL_2__2067_ gnd vdd FILL
X_1947_ _990_ _1063_ _1064_ vdd gnd NOR2X1
XFILL_7__1871_ gnd vdd FILL
XFILL169350x133350 gnd vdd FILL
XFILL_0__3674_ gnd vdd FILL
XFILL_3__1771_ gnd vdd FILL
XFILL_0__3254_ gnd vdd FILL
XFILL_7__2656_ gnd vdd FILL
XFILL_1__2630_ gnd vdd FILL
XFILL_1__2210_ gnd vdd FILL
XFILL_3__2976_ gnd vdd FILL
XFILL_3__2556_ gnd vdd FILL
XFILL_3__2136_ gnd vdd FILL
XFILL169950x126150 gnd vdd FILL
XFILL_5__3003_ gnd vdd FILL
XFILL_4__1840_ gnd vdd FILL
XFILL_6__1766_ gnd vdd FILL
X_2485_ _143_ _1125_ _182_ _1742_[5] vdd gnd OAI21X1
X_2065_ _1173_ _1174_ vdd gnd INVX1
XFILL_2__1758_ gnd vdd FILL
XFILL_4__2625_ gnd vdd FILL
XFILL_4__2205_ gnd vdd FILL
XFILL_7__3194_ gnd vdd FILL
XFILL_0__2945_ gnd vdd FILL
XFILL_0__2525_ gnd vdd FILL
XFILL_0__2105_ gnd vdd FILL
XFILL_3__3094_ gnd vdd FILL
XFILL_7__1927_ gnd vdd FILL
XFILL_1__1901_ gnd vdd FILL
XFILL_3__1827_ gnd vdd FILL
XFILL_2__2296_ gnd vdd FILL
X_1756_ RDY_bF$buf5 _886_ vdd gnd INVX8
XFILL_4__3583_ gnd vdd FILL
XFILL_4__3163_ gnd vdd FILL
XFILL_6__3089_ gnd vdd FILL
XFILL_0__3483_ gnd vdd FILL
XFILL_0__3063_ gnd vdd FILL
XFILL_7__2885_ gnd vdd FILL
XFILL_7__2045_ gnd vdd FILL
XFILL_3__2785_ gnd vdd FILL
XFILL_3__2365_ gnd vdd FILL
XFILL_5__3652_ gnd vdd FILL
XFILL_5__3232_ gnd vdd FILL
XFILL_1__3644_ gnd vdd FILL
XFILL_1__3224_ gnd vdd FILL
XFILL_6__1995_ gnd vdd FILL
X_2294_ _1400_ _1398_ _1401_ vdd gnd NAND2X1
XFILL_2__1987_ gnd vdd FILL
XFILL_4__2854_ gnd vdd FILL
XFILL_4__2434_ gnd vdd FILL
XFILL_4__2014_ gnd vdd FILL
X_3499_ _1718_ BI[4] _1529_ vdd gnd AND2X2
X_3079_ _662_ _1227_ AN _691_ vdd gnd AOI21X1
XFILL_0__2754_ gnd vdd FILL
XFILL_0__2334_ gnd vdd FILL
XFILL_6__3301_ gnd vdd FILL
XFILL_2__3713_ gnd vdd FILL
XFILL_4__3639_ gnd vdd FILL
XFILL_4__3219_ gnd vdd FILL
XFILL_0__3539_ gnd vdd FILL
XFILL_0__3119_ gnd vdd FILL
XFILL_5__2923_ gnd vdd FILL
XFILL_5__2503_ gnd vdd FILL
XFILL_1__2915_ gnd vdd FILL
X_1985_ _1099_ _1097_ _1098_ _1100_ vdd gnd NAND3X1
XFILL_5__3708_ gnd vdd FILL
XFILL_0__3292_ gnd vdd FILL
XFILL_7__2274_ gnd vdd FILL
X_3711_ _1742_[4] DO[4] vdd gnd BUFX2
XFILL_3__2594_ gnd vdd FILL
XFILL_3__2174_ gnd vdd FILL
XFILL_7__3479_ gnd vdd FILL
XFILL_5__3461_ gnd vdd FILL
XFILL_7__3059_ gnd vdd FILL
XFILL_5__3041_ gnd vdd FILL
XFILL_1__3453_ gnd vdd FILL
XFILL_1__3033_ gnd vdd FILL
XFILL_2__1796_ gnd vdd FILL
XFILL_4__2663_ gnd vdd FILL
XFILL_4__2243_ gnd vdd FILL
XFILL_6__2589_ gnd vdd FILL
XFILL_6__2169_ gnd vdd FILL
XFILL_0__2983_ gnd vdd FILL
XFILL_0__2563_ gnd vdd FILL
XFILL_6__3530_ gnd vdd FILL
XFILL_0__2143_ gnd vdd FILL
XFILL_6__3110_ gnd vdd FILL
XFILL_2__3522_ gnd vdd FILL
XFILL_2__3102_ gnd vdd FILL
XFILL_4__3028_ gnd vdd FILL
XFILL_3__1865_ gnd vdd FILL
XFILL_5__2732_ gnd vdd FILL
XFILL_5__2312_ gnd vdd FILL
XFILL_2_BUFX2_insert20 gnd vdd FILL
XFILL_2_BUFX2_insert21 gnd vdd FILL
XFILL_2_BUFX2_insert22 gnd vdd FILL
XFILL_2_BUFX2_insert23 gnd vdd FILL
XFILL_2_BUFX2_insert24 gnd vdd FILL
XFILL_2_BUFX2_insert25 gnd vdd FILL
XFILL_1__2724_ gnd vdd FILL
XFILL_1__2304_ gnd vdd FILL
X_1794_ rotate _920_ vdd gnd INVX1
XFILL_5__3517_ gnd vdd FILL
XFILL_1__3509_ gnd vdd FILL
XFILL_4__1934_ gnd vdd FILL
X_2999_ _612_ _578_ _1252_ _627_ vdd gnd OAI21X1
X_2579_ _1142_ _195_ _266_ _267_ vdd gnd AOI21X1
X_2159_ _1032_ _1268_ vdd gnd INVX1
XFILL_0__1834_ gnd vdd FILL
XFILL_6__2801_ gnd vdd FILL
X_3520_ _1545_ _1549_ _1550_ vdd gnd OR2X2
X_3100_ C _709_ _710_ vdd gnd NAND2X1
XFILL_4__2719_ gnd vdd FILL
XFILL_7__3288_ gnd vdd FILL
XFILL_5__3270_ gnd vdd FILL
XFILL_0__2619_ gnd vdd FILL
XFILL_1__3262_ gnd vdd FILL
XFILL_3__3188_ gnd vdd FILL
XFILL_4__2892_ gnd vdd FILL
XFILL_4__2472_ gnd vdd FILL
XFILL_4__2052_ gnd vdd FILL
XFILL_6__2398_ gnd vdd FILL
XFILL_0__2792_ gnd vdd FILL
XFILL_0__2372_ gnd vdd FILL
XFILL_4__3677_ gnd vdd FILL
XFILL_7__1774_ gnd vdd FILL
XFILL_4__3257_ gnd vdd FILL
XFILL_0__3577_ gnd vdd FILL
XFILL_0__3157_ gnd vdd FILL
XFILL_5__2961_ gnd vdd FILL
XFILL_5__2541_ gnd vdd FILL
XFILL_7__2559_ gnd vdd FILL
XFILL_5__2121_ gnd vdd FILL
XFILL_1__2953_ gnd vdd FILL
XFILL_1__2533_ gnd vdd FILL
XFILL_7__3500_ gnd vdd FILL
XFILL_1__2113_ gnd vdd FILL
XFILL_3__2879_ gnd vdd FILL
XFILL_3__2459_ gnd vdd FILL
XFILL_3__2039_ gnd vdd FILL
X_2388_ _1462_ _1484_ _1493_ _1512_[3] vdd gnd OAI21X1
XFILL_6__2610_ gnd vdd FILL
XFILL_2__2602_ gnd vdd FILL
XFILL_4__2948_ gnd vdd FILL
XFILL_4__2528_ gnd vdd FILL
XFILL_4__2108_ gnd vdd FILL
XFILL_0__2848_ gnd vdd FILL
XFILL_0__2428_ gnd vdd FILL
XFILL_0__2008_ gnd vdd FILL
XFILL_1__3491_ gnd vdd FILL
XFILL_1__3071_ gnd vdd FILL
XFILL_5__1812_ gnd vdd FILL
XFILL_1__1804_ gnd vdd FILL
XFILL_4__2281_ gnd vdd FILL
XFILL_0__2181_ gnd vdd FILL
XFILL_2__2199_ gnd vdd FILL
XFILL_2__3560_ gnd vdd FILL
XFILL_2__3140_ gnd vdd FILL
XFILL_4__3486_ gnd vdd FILL
XFILL_4__3066_ gnd vdd FILL
X_2600_ _280_ _218_ _284_ _1741_[10] vdd gnd OAI21X1
XFILL_7__2788_ gnd vdd FILL
XFILL_5__2770_ gnd vdd FILL
XFILL_5__2350_ gnd vdd FILL
XFILL_1__2762_ gnd vdd FILL
XFILL_1__2342_ gnd vdd FILL
XFILL_3__2688_ gnd vdd FILL
XFILL_3__2268_ gnd vdd FILL
XFILL_5__3555_ gnd vdd FILL
XFILL_5__3135_ gnd vdd FILL
XFILL_1__3547_ gnd vdd FILL
XFILL_1__3127_ gnd vdd FILL
XFILL_4__1972_ gnd vdd FILL
XFILL_6__1898_ gnd vdd FILL
X_2197_ _886__bF$buf2 _1304_ _1305_ _1306_ vdd gnd OAI21X1
XFILL_0__1872_ gnd vdd FILL
XFILL_2__2831_ gnd vdd FILL
XFILL_2__2411_ gnd vdd FILL
XFILL_4__2757_ gnd vdd FILL
XFILL_4__2337_ gnd vdd FILL
XFILL_0__2657_ gnd vdd FILL
XFILL_6__3624_ gnd vdd FILL
XFILL_0__2237_ gnd vdd FILL
XFILL_6__3204_ gnd vdd FILL
XFILL_2__3616_ gnd vdd FILL
XFILL_3__1959_ gnd vdd FILL
XFILL_4__2090_ gnd vdd FILL
XFILL_3__2900_ gnd vdd FILL
XFILL_5__2826_ gnd vdd FILL
XFILL_5__2406_ gnd vdd FILL
XFILL_1__2818_ gnd vdd FILL
X_1888_ DIMUX[3] _1010_ vdd gnd INVX2
XFILL_4__3295_ gnd vdd FILL
XFILL_0__3195_ gnd vdd FILL
XFILL_7__2177_ gnd vdd FILL
XFILL_0__1928_ gnd vdd FILL
X_3614_ AI[6] _1641_ _1722_ _1644_ vdd gnd OAI21X1
XFILL_1__2991_ gnd vdd FILL
XFILL_1__2571_ gnd vdd FILL
XFILL_1__2151_ gnd vdd FILL
XFILL_3__2497_ gnd vdd FILL
XFILL_3__2077_ gnd vdd FILL
XFILL_4__1781_ gnd vdd FILL
XFILL_2__2640_ gnd vdd FILL
XFILL_2__2220_ gnd vdd FILL
XFILL_4__2986_ gnd vdd FILL
XFILL_4__2566_ gnd vdd FILL
XFILL_4__2146_ gnd vdd FILL
XFILL_0__2886_ gnd vdd FILL
XFILL_0__2466_ gnd vdd FILL
XFILL_0__2046_ gnd vdd FILL
XFILL_6__3013_ gnd vdd FILL
XFILL_2__3005_ gnd vdd FILL
XFILL_5__1850_ gnd vdd FILL
XFILL_1__1842_ gnd vdd FILL
XFILL_3__1768_ gnd vdd FILL
XFILL_5__2635_ gnd vdd FILL
XFILL_5__2215_ gnd vdd FILL
XFILL_1__2627_ gnd vdd FILL
XFILL_1__2207_ gnd vdd FILL
XFILL_2__1911_ gnd vdd FILL
XFILL_4__1837_ gnd vdd FILL
XFILL_6__2704_ gnd vdd FILL
X_3423_ _1__bF$buf0 vdd _92_ clk_bF$buf7 _AXYS[2]_[7] vdd 
+ gnd
+ DFFSR
X_3003_ _626_ _629_ _1150__bF$buf4 _630_ vdd gnd OAI21X1
XFILL_1__2380_ gnd vdd FILL
XFILL_5__3593_ gnd vdd FILL
XFILL_5__3173_ gnd vdd FILL
XFILL_1__3585_ gnd vdd FILL
XFILL_1__3165_ gnd vdd FILL
XFILL_5__1906_ gnd vdd FILL
XFILL_4__2795_ gnd vdd FILL
XFILL_4__2375_ gnd vdd FILL
XFILL_0__2695_ gnd vdd FILL
XFILL_6__3662_ gnd vdd FILL
XFILL_0__2275_ gnd vdd FILL
XFILL_6__3242_ gnd vdd FILL
XFILL_2__3654_ gnd vdd FILL
XFILL_2__3234_ gnd vdd FILL
XFILL_3__1997_ gnd vdd FILL
XFILL_5__2864_ gnd vdd FILL
XFILL_5__2444_ gnd vdd FILL
XFILL_5__2024_ gnd vdd FILL
XFILL_1__2856_ gnd vdd FILL
XFILL_1__2436_ gnd vdd FILL
XFILL_1__2016_ gnd vdd FILL
XFILL_3__3303_ gnd vdd FILL
XFILL_5__3649_ gnd vdd FILL
XFILL_5__3229_ gnd vdd FILL
XFILL_0__1966_ gnd vdd FILL
XFILL_6__2933_ gnd vdd FILL
X_3652_ _1658_ _1659_ _1675_ _1681_ _1682_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2513_ gnd vdd FILL
X_3232_ _754_ _807_ _812_ _96_ vdd gnd OAI21X1
XFILL_2__2925_ gnd vdd FILL
XFILL_2__2505_ gnd vdd FILL
XFILL_4__2184_ gnd vdd FILL
XFILL_6__3471_ gnd vdd FILL
XFILL_0__2084_ gnd vdd FILL
XFILL_6__3051_ gnd vdd FILL
XFILL_2__3463_ gnd vdd FILL
XFILL_2__3043_ gnd vdd FILL
X_2923_ _128_ _1149__bF$buf2 _567_ _563_ _32_ vdd 
+ gnd
+ AOI22X1
X_2503_ _1202_ _197_ _1224_ _198_ vdd gnd NAND3X1
XFILL_1__1880_ gnd vdd FILL
XFILL_0__3289_ gnd vdd FILL
XFILL_5__2673_ gnd vdd FILL
XFILL_5__2253_ gnd vdd FILL
X_3708_ _1742_[1] DO[1] vdd gnd BUFX2
XFILL_1__2665_ gnd vdd FILL
XFILL_7__3632_ gnd vdd FILL
XFILL_1__2245_ gnd vdd FILL
XFILL_7__3212_ gnd vdd FILL
XFILL_3__3532_ gnd vdd FILL
XFILL_3__3112_ gnd vdd FILL
XFILL_5__3458_ gnd vdd FILL
XFILL_5__3038_ gnd vdd FILL
XFILL_4__1875_ gnd vdd FILL
XFILL_0__1775_ gnd vdd FILL
XFILL_6__2742_ gnd vdd FILL
X_3461_ _u_ALU8.BI7_ _1707_ _1709_ vdd gnd NAND2X1
XFILL_6__2322_ gnd vdd FILL
X_3041_ bit_ins _656_ vdd gnd INVX1
XFILL_2__2734_ gnd vdd FILL
XFILL_2__2314_ gnd vdd FILL
XFILL_4__3601_ gnd vdd FILL
XFILL_6__3527_ gnd vdd FILL
XFILL_6__3107_ gnd vdd FILL
XFILL_2__3519_ gnd vdd FILL
XFILL_0__3501_ gnd vdd FILL
XFILL_5__1944_ gnd vdd FILL
XFILL_1__1936_ gnd vdd FILL
XFILL_7__2903_ gnd vdd FILL
XFILL_3__2803_ gnd vdd FILL
XFILL_5__2729_ gnd vdd FILL
XFILL_5__2309_ gnd vdd FILL
XFILL_6__3280_ gnd vdd FILL
XFILL_2__3692_ gnd vdd FILL
XFILL_2__3272_ gnd vdd FILL
XFILL_4__3198_ gnd vdd FILL
X_2732_ _386_ _392_ _399_ _400_ vdd gnd AOI21X1
X_2312_ _1416_ _1418_ _1419_ vdd gnd AND2X2
XFILL_0__3098_ gnd vdd FILL
XFILL_5__2482_ gnd vdd FILL
XFILL_5__2062_ gnd vdd FILL
X_3517_ alu_op[3] BI[3] _1740_ _1547_ vdd gnd OAI21X1
XFILL_1__2894_ gnd vdd FILL
XFILL_1__2474_ gnd vdd FILL
XFILL_1__2054_ gnd vdd FILL
XFILL_5__3267_ gnd vdd FILL
XFILL_1__3259_ gnd vdd FILL
XFILL_6__2971_ gnd vdd FILL
X_3690_ _1513_ vdd _1525_ clk_bF$buf3 _u_ALU8.AI7_ vdd 
+ gnd
+ DFFSR
XFILL_6__2551_ gnd vdd FILL
X_3270_ _840_ _844_ _845_ _846_ vdd gnd NAND3X1
XFILL_6__2131_ gnd vdd FILL
XFILL_2__2963_ gnd vdd FILL
XFILL_2__2543_ gnd vdd FILL
XFILL_2__2123_ gnd vdd FILL
XFILL_4__2889_ gnd vdd FILL
XFILL_4__2469_ gnd vdd FILL
XFILL_4__2049_ gnd vdd FILL
XFILL_0__2789_ gnd vdd FILL
XFILL_0__2369_ gnd vdd FILL
XFILL_0__3310_ gnd vdd FILL
XFILL_5__1753_ gnd vdd FILL
XFILL_1__1745_ gnd vdd FILL
XFILL_7__2712_ gnd vdd FILL
XFILL_3__2612_ gnd vdd FILL
XFILL_5__2958_ gnd vdd FILL
XFILL_5__2538_ gnd vdd FILL
XFILL_5__2118_ gnd vdd FILL
XFILL_2__3081_ gnd vdd FILL
XFILL_6__1822_ gnd vdd FILL
X_2961_ _576_ _596_ vdd gnd INVX1
X_2541_ _232_ _233_ _234_ vdd gnd AND2X2
X_2121_ _1229_ _1230_ vdd gnd INVX1
XFILL_2__1814_ gnd vdd FILL
XFILL_5__2291_ gnd vdd FILL
XFILL_6__2607_ gnd vdd FILL
X_3326_ _1__bF$buf7 vdd _4_ clk_bF$buf3 PC[2] vdd 
+ gnd
+ DFFSR
XFILL_1__2283_ gnd vdd FILL
XFILL_7_BUFX2_insert40 gnd vdd FILL
XFILL_7_BUFX2_insert42 gnd vdd FILL
XFILL_3__3570_ gnd vdd FILL
XFILL_7_BUFX2_insert43 gnd vdd FILL
XFILL_3__3150_ gnd vdd FILL
XFILL_7_BUFX2_insert45 gnd vdd FILL
XFILL_7_BUFX2_insert46 gnd vdd FILL
XFILL_5__3496_ gnd vdd FILL
XFILL_7_BUFX2_insert48 gnd vdd FILL
XFILL_5__3076_ gnd vdd FILL
XFILL_1__3488_ gnd vdd FILL
XFILL_1__3068_ gnd vdd FILL
XFILL_5__1809_ gnd vdd FILL
XFILL_6__2780_ gnd vdd FILL
XFILL_6__2360_ gnd vdd FILL
XFILL_2__2772_ gnd vdd FILL
XFILL_2__2352_ gnd vdd FILL
XFILL_4__2698_ gnd vdd FILL
XFILL_4__2278_ gnd vdd FILL
X_1812_ _937_ _910_ _938_ vdd gnd NAND2X1
XFILL_0__2598_ gnd vdd FILL
XFILL_6__3565_ gnd vdd FILL
XFILL_0__2178_ gnd vdd FILL
XFILL_6__3145_ gnd vdd FILL
XFILL_2__3557_ gnd vdd FILL
XFILL_2__3137_ gnd vdd FILL
XFILL_5__1982_ gnd vdd FILL
XFILL_1__1974_ gnd vdd FILL
XFILL_7__2941_ gnd vdd FILL
XFILL_7__2521_ gnd vdd FILL
XFILL_7__2101_ gnd vdd FILL
XFILL_3__2841_ gnd vdd FILL
XFILL_3__2421_ gnd vdd FILL
XFILL_3__2001_ gnd vdd FILL
XFILL_5__2767_ gnd vdd FILL
XFILL_5__2347_ gnd vdd FILL
XFILL_1__2759_ gnd vdd FILL
XFILL_1__2339_ gnd vdd FILL
XFILL_7__3306_ gnd vdd FILL
XFILL_1__3700_ gnd vdd FILL
XFILL_3__3626_ gnd vdd FILL
XFILL_3__3206_ gnd vdd FILL
X_2770_ _925_ ABH[2] PC[10] _312_ _435_ vdd 
+ gnd
+ AOI22X1
X_2350_ _1451_ _1443_ _1456_ _1512_[2] vdd gnd NAND3X1
XFILL_4__1969_ gnd vdd FILL
XFILL_4__2910_ gnd vdd FILL
XFILL_0__1869_ gnd vdd FILL
XFILL_6__2836_ gnd vdd FILL
X_3555_ _1725_ _1740_ CI _1585_ vdd gnd OAI21X1
XFILL_6__2416_ gnd vdd FILL
X_3135_ _740_ _739_ _741_ vdd gnd OR2X2
XFILL_1__2092_ gnd vdd FILL
XFILL_0__2810_ gnd vdd FILL
XFILL_2__2828_ gnd vdd FILL
XFILL_2__2408_ gnd vdd FILL
XFILL_1__3297_ gnd vdd FILL
XFILL_2__2581_ gnd vdd FILL
XFILL_2__2161_ gnd vdd FILL
XFILL_4__2087_ gnd vdd FILL
XFILL_5__1791_ gnd vdd FILL
X_2826_ _465_ _488_ vdd gnd INVX1
X_2406_ _1509_ _1436_ _1510_ vdd gnd AND2X2
XFILL_1__1783_ gnd vdd FILL
XFILL_7__2330_ gnd vdd FILL
XFILL_3__2650_ gnd vdd FILL
XFILL_3__2230_ gnd vdd FILL
XFILL_5__2996_ gnd vdd FILL
XFILL_5__2576_ gnd vdd FILL
XFILL_5__2156_ gnd vdd FILL
XFILL_1__2988_ gnd vdd FILL
XFILL_1__2568_ gnd vdd FILL
XFILL_7__3535_ gnd vdd FILL
XFILL_1__2148_ gnd vdd FILL
XFILL_7__3115_ gnd vdd FILL
XFILL_3__3015_ gnd vdd FILL
XFILL168150x133350 gnd vdd FILL
XFILL_6__1860_ gnd vdd FILL
XFILL_2__1852_ gnd vdd FILL
XFILL_4__1778_ gnd vdd FILL
XFILL_6__2645_ gnd vdd FILL
X_3364_ _1__bF$buf10 vdd _41_ clk_bF$buf4 adc_sbc vdd 
+ gnd
+ DFFSR
XFILL_6__2225_ gnd vdd FILL
XFILL_2__2637_ gnd vdd FILL
XFILL_2__2217_ gnd vdd FILL
XFILL_4__3504_ gnd vdd FILL
XFILL_3__1921_ gnd vdd FILL
XFILL_5__1847_ gnd vdd FILL
XFILL_1__1839_ gnd vdd FILL
XFILL_7__2806_ gnd vdd FILL
XFILL_2__2390_ gnd vdd FILL
XFILL_3__2706_ gnd vdd FILL
X_1850_ _914__bF$buf2 _974_ _972_ _975_ vdd gnd OAI21X1
XFILL_6__3183_ gnd vdd FILL
XFILL_2__3595_ gnd vdd FILL
XFILL_2__3175_ gnd vdd FILL
XFILL_6__1916_ gnd vdd FILL
X_2635_ reset _1_ vdd gnd INVX8
X_2215_ _1323_ _1282_ _1302_ _1324_ vdd gnd NAND3X1
XFILL_2__1908_ gnd vdd FILL
XFILL_5__2385_ gnd vdd FILL
XFILL_1__2797_ gnd vdd FILL
XFILL_1__2377_ gnd vdd FILL
XFILL_3__3664_ gnd vdd FILL
XFILL_3__3244_ gnd vdd FILL
XFILL_6__2874_ gnd vdd FILL
X_3593_ _1622_ _1618_ _1623_ vdd gnd NAND2X1
XFILL_6__2454_ gnd vdd FILL
XFILL_6__2034_ gnd vdd FILL
X_3173_ _1319__bF$buf1 _774_ _775_ vdd gnd NOR2X1
XFILL_2__2866_ gnd vdd FILL
XFILL_2__2446_ gnd vdd FILL
XFILL_2__2026_ gnd vdd FILL
X_1906_ _1018_ _1019_ _1022_ _1023_ vdd gnd NAND3X1
XFILL_7__1830_ gnd vdd FILL
XFILL_4__3313_ gnd vdd FILL
XFILL_6__3659_ gnd vdd FILL
XFILL_6__3239_ gnd vdd FILL
XFILL_0__3633_ gnd vdd FILL
XFILL_0__3213_ gnd vdd FILL
XFILL_3__2935_ gnd vdd FILL
XFILL_3__2515_ gnd vdd FILL
X_2864_ _886__bF$buf3 _304_ _520_ _523_ _17_ vdd 
+ gnd
+ AOI22X1
X_2444_ php _147_ vdd gnd INVX1
X_2024_ _1134_ _1092_ _1135_ vdd gnd NOR2X1
XFILL_5__2194_ gnd vdd FILL
X_3649_ _1653_ _1636_ _1679_ vdd gnd NAND2X1
X_3229_ _720__bF$buf0 _808_ _AXYS[3]_[2] _811_ vdd gnd OAI21X1
XFILL_1__2186_ gnd vdd FILL
XFILL_7__3153_ gnd vdd FILL
XFILL_0__2904_ gnd vdd FILL
XFILL_3__3473_ gnd vdd FILL
XFILL_3__3053_ gnd vdd FILL
XFILL_2__1890_ gnd vdd FILL
XFILL_6__2683_ gnd vdd FILL
XFILL_6__2263_ gnd vdd FILL
XFILL_2__2675_ gnd vdd FILL
XFILL_2__2255_ gnd vdd FILL
XFILL_4__3542_ gnd vdd FILL
XFILL_4__3122_ gnd vdd FILL
XFILL_6__3468_ gnd vdd FILL
XFILL_6__3048_ gnd vdd FILL
XFILL_0__3022_ gnd vdd FILL
XFILL_5__1885_ gnd vdd FILL
XFILL_1__1877_ gnd vdd FILL
XFILL_7__2424_ gnd vdd FILL
XFILL_3__2744_ gnd vdd FILL
XFILL_3__2324_ gnd vdd FILL
XFILL_5__3611_ gnd vdd FILL
XFILL_7__3629_ gnd vdd FILL
XFILL_7__3209_ gnd vdd FILL
XFILL_1__3603_ gnd vdd FILL
XFILL_3__3529_ gnd vdd FILL
XFILL_3__3109_ gnd vdd FILL
XFILL_6__1954_ gnd vdd FILL
X_2673_ _345_ _346_ vdd gnd INVX1
X_2253_ _886__bF$buf6 _1360_ _1361_ vdd gnd NAND2X1
XFILL_2__1946_ gnd vdd FILL
XFILL_4__2813_ gnd vdd FILL
XFILL_6__2739_ gnd vdd FILL
X_3458_ _1705_ _1704_ _1706_ vdd gnd NOR2X1
XFILL_6__2319_ gnd vdd FILL
X_3038_ reset _645_ IRHOLD[7] _655_ vdd gnd OAI21X1
XFILL_0__2713_ gnd vdd FILL
XFILL_3__3282_ gnd vdd FILL
XFILL_6__2492_ gnd vdd FILL
XFILL_6__2072_ gnd vdd FILL
XFILL_2__2484_ gnd vdd FILL
XFILL_2__2064_ gnd vdd FILL
X_1944_ _901_ _941_ _988_ _1061_ vdd gnd AOI21X1
XFILL_6__3697_ gnd vdd FILL
XFILL_6__3277_ gnd vdd FILL
XFILL_0__3671_ gnd vdd FILL
XFILL_2__3269_ gnd vdd FILL
XFILL_0__3251_ gnd vdd FILL
X_2729_ _396_ _378_ _148_ _397_ vdd gnd OAI21X1
X_2309_ _1365_ _1350_ _1416_ vdd gnd NAND2X1
XFILL_7__2653_ gnd vdd FILL
XFILL_3__2973_ gnd vdd FILL
XFILL_3__2553_ gnd vdd FILL
XFILL_3__2133_ gnd vdd FILL
XFILL_5__2899_ gnd vdd FILL
XFILL_5__2479_ gnd vdd FILL
XFILL_5__2059_ gnd vdd FILL
XFILL_5__3000_ gnd vdd FILL
XFILL_6__1763_ gnd vdd FILL
X_2482_ _1319__bF$buf0 _1263_ PC[13] _180_ vdd gnd OAI21X1
X_2062_ _1168_ _1169_ _1170_ _1171_ vdd gnd OAI21X1
XFILL_2__1755_ gnd vdd FILL
XFILL_4__2622_ gnd vdd FILL
XFILL_4__2202_ gnd vdd FILL
XFILL_6__2968_ gnd vdd FILL
X_3687_ _1513_ vdd _1522_ clk_bF$buf3 ADD[5] vdd 
+ gnd
+ DFFSR
XFILL_6__2548_ gnd vdd FILL
X_3267_ _842_ _835_ _843_ vdd gnd NAND2X1
XFILL_6__2128_ gnd vdd FILL
XFILL_7__3191_ gnd vdd FILL
XFILL_0__2942_ gnd vdd FILL
XFILL_0__2522_ gnd vdd FILL
XFILL_0__2102_ gnd vdd FILL
XFILL_3__3091_ gnd vdd FILL
XFILL_7__1924_ gnd vdd FILL
XFILL_3__1824_ gnd vdd FILL
XFILL_0__3307_ gnd vdd FILL
XFILL_7__2709_ gnd vdd FILL
XFILL169950x147750 gnd vdd FILL
XFILL_2__2293_ gnd vdd FILL
XFILL_3__2609_ gnd vdd FILL
X_1753_ DIHOLD[3] _884_ vdd gnd INVX1
XFILL_4__3580_ gnd vdd FILL
XFILL_4__3160_ gnd vdd FILL
XFILL_6__3086_ gnd vdd FILL
XFILL_2__3498_ gnd vdd FILL
XFILL_0__3480_ gnd vdd FILL
XFILL_2__3078_ gnd vdd FILL
XFILL_0__3060_ gnd vdd FILL
XFILL_6__1819_ gnd vdd FILL
X_2958_ _559_ _1405_ _593_ _595_ vdd gnd NAND3X1
X_2538_ _231_ _1741_[1] vdd gnd INVX1
X_2118_ _903__bF$buf1 _971_ _1227_ vdd gnd NAND2X1
XFILL_7__2882_ gnd vdd FILL
XFILL_7__2462_ gnd vdd FILL
XFILL_7__2042_ gnd vdd FILL
XFILL_3__2782_ gnd vdd FILL
XFILL_3__2362_ gnd vdd FILL
XFILL_5__2288_ gnd vdd FILL
XFILL_7__3667_ gnd vdd FILL
XFILL_1__3641_ gnd vdd FILL
XFILL_1__3221_ gnd vdd FILL
XFILL_3__3567_ gnd vdd FILL
XFILL_3__3147_ gnd vdd FILL
XFILL_6__1992_ gnd vdd FILL
X_2291_ _1394_ _1251_ _1397_ _1398_ vdd gnd AOI21X1
XFILL_2__1984_ gnd vdd FILL
XFILL_4__2851_ gnd vdd FILL
XFILL167550x144150 gnd vdd FILL
XFILL_4__2431_ gnd vdd FILL
XFILL_4__2011_ gnd vdd FILL
XFILL_6__2777_ gnd vdd FILL
X_3496_ alu_op[3] BI[5] _1740_ _1526_ vdd gnd OAI21X1
XFILL_6__2357_ gnd vdd FILL
X_3076_ _921_ _661_ _688_ vdd gnd NAND2X1
XFILL_0__2751_ gnd vdd FILL
XFILL_2__2769_ gnd vdd FILL
XFILL_0__2331_ gnd vdd FILL
XFILL_2__2349_ gnd vdd FILL
XFILL_2__3710_ gnd vdd FILL
X_1809_ _924_ _934_ _935_ vdd gnd NOR2X1
XFILL_4__3636_ gnd vdd FILL
XFILL_4__3216_ gnd vdd FILL
XFILL_0__3536_ gnd vdd FILL
XFILL_0__3116_ gnd vdd FILL
XFILL_5__1979_ gnd vdd FILL
XFILL_5__2920_ gnd vdd FILL
XFILL_7__2938_ gnd vdd FILL
XFILL_5__2500_ gnd vdd FILL
XFILL_1__2912_ gnd vdd FILL
XFILL_3__2838_ gnd vdd FILL
XFILL_3__2418_ gnd vdd FILL
X_1982_ _AXYS[1]_[2] _1047_ _1097_ vdd gnd NAND2X1
XFILL_5__3705_ gnd vdd FILL
X_2767_ _431_ _197_ _148_ _432_ vdd gnd OAI21X1
X_2347_ _1354_ _1453_ _1454_ vdd gnd NAND2X1
XFILL_7__2691_ gnd vdd FILL
XFILL_7__2271_ gnd vdd FILL
XFILL_3__2591_ gnd vdd FILL
XFILL_3__2171_ gnd vdd FILL
XFILL_5__2097_ gnd vdd FILL
XFILL_4__2907_ gnd vdd FILL
XFILL_1__2089_ gnd vdd FILL
XFILL_7__3056_ gnd vdd FILL
XFILL_0__2807_ gnd vdd FILL
XFILL_1__3450_ gnd vdd FILL
XFILL_1__3030_ gnd vdd FILL
XFILL_2__1793_ gnd vdd FILL
XFILL_4__2660_ gnd vdd FILL
XFILL_4__2240_ gnd vdd FILL
XFILL_6__2586_ gnd vdd FILL
XFILL_6__2166_ gnd vdd FILL
XFILL_2__2998_ gnd vdd FILL
XFILL_0__2980_ gnd vdd FILL
XFILL_0__2560_ gnd vdd FILL
XFILL_2__2578_ gnd vdd FILL
XFILL_2__2158_ gnd vdd FILL
XFILL_0__2140_ gnd vdd FILL
XFILL_4__3025_ gnd vdd FILL
XFILL_3__1862_ gnd vdd FILL
XFILL_5__1788_ gnd vdd FILL
XFILL_7__2327_ gnd vdd FILL
XFILL_1__2721_ gnd vdd FILL
XFILL_1__2301_ gnd vdd FILL
XFILL_3__2647_ gnd vdd FILL
XFILL_3__2227_ gnd vdd FILL
X_1791_ _916_ _917_ vdd gnd INVX1
XFILL_5__3514_ gnd vdd FILL
XFILL169650x133350 gnd vdd FILL
XFILL_1__3506_ gnd vdd FILL
XFILL_4__1931_ gnd vdd FILL
XFILL_6__1857_ gnd vdd FILL
X_2996_ _1017_ _1149__bF$buf0 _617_ _624_ _48_ vdd 
+ gnd
+ AOI22X1
X_2576_ DIMUX[7] _227_ _200_ ABL[7] _264_ vdd 
+ gnd
+ AOI22X1
X_2156_ _886__bF$buf2 _1263_ _1264_ _1265_ vdd gnd OAI21X1
XFILL_7__2080_ gnd vdd FILL
XFILL_2__1849_ gnd vdd FILL
XFILL_0__1831_ gnd vdd FILL
XFILL_4__2716_ gnd vdd FILL
XFILL_7__3285_ gnd vdd FILL
XFILL_0__2616_ gnd vdd FILL
XFILL_3__3185_ gnd vdd FILL
XFILL_3__1918_ gnd vdd FILL
XFILL_6__2395_ gnd vdd FILL
XFILL_2__2387_ gnd vdd FILL
X_1847_ _969_ _971_ _972_ vdd gnd NAND2X1
XFILL_4__3674_ gnd vdd FILL
XFILL_7__1771_ gnd vdd FILL
XFILL_4__3254_ gnd vdd FILL
XFILL_0__3574_ gnd vdd FILL
XFILL_0__3154_ gnd vdd FILL
XFILL_7__2556_ gnd vdd FILL
XFILL_1__2950_ gnd vdd FILL
XFILL_1__2530_ gnd vdd FILL
XFILL_1__2110_ gnd vdd FILL
XFILL_3__2876_ gnd vdd FILL
XFILL_3__2456_ gnd vdd FILL
XFILL_3__2036_ gnd vdd FILL
XFILL169650x61350 gnd vdd FILL
XFILL_1__3315_ gnd vdd FILL
X_2385_ _1490_ _1487_ _1491_ vdd gnd AND2X2
XFILL_4__2945_ gnd vdd FILL
XFILL_4__2525_ gnd vdd FILL
XFILL_4__2105_ gnd vdd FILL
XFILL_0__2845_ gnd vdd FILL
XFILL_0__2425_ gnd vdd FILL
XFILL_0__2005_ gnd vdd FILL
XFILL_7__1827_ gnd vdd FILL
XFILL_1__1801_ gnd vdd FILL
XFILL_2__2196_ gnd vdd FILL
XFILL_4__3483_ gnd vdd FILL
XFILL_4__3063_ gnd vdd FILL
XFILL_7__2785_ gnd vdd FILL
XFILL_3__2685_ gnd vdd FILL
XFILL_3__2265_ gnd vdd FILL
XFILL_5__3552_ gnd vdd FILL
XFILL_5__3132_ gnd vdd FILL
XFILL_1__3544_ gnd vdd FILL
XFILL_1__3124_ gnd vdd FILL
XFILL_6__1895_ gnd vdd FILL
X_2194_ _929_ _941_ _1303_ vdd gnd NAND2X1
XFILL_2__1887_ gnd vdd FILL
XFILL_4__2754_ gnd vdd FILL
XFILL_4__2334_ gnd vdd FILL
X_3399_ _1__bF$buf7 vdd _68_ clk_bF$buf5 backwards vdd 
+ gnd
+ DFFSR
XFILL_0__2654_ gnd vdd FILL
XFILL_6__3621_ gnd vdd FILL
XFILL_0__2234_ gnd vdd FILL
XFILL_6__3201_ gnd vdd FILL
XFILL_2__3613_ gnd vdd FILL
XFILL_4__3539_ gnd vdd FILL
XFILL_4__3119_ gnd vdd FILL
XFILL_3__1956_ gnd vdd FILL
XFILL_0__3019_ gnd vdd FILL
XFILL_5__2823_ gnd vdd FILL
XFILL_5__2403_ gnd vdd FILL
XFILL_1__2815_ gnd vdd FILL
X_1885_ DIMUX[2] _1008_ vdd gnd INVX1
XFILL_4__3292_ gnd vdd FILL
XFILL_5__3608_ gnd vdd FILL
XFILL_0__3192_ gnd vdd FILL
XFILL_7__2174_ gnd vdd FILL
XFILL_0__1925_ gnd vdd FILL
X_3611_ _1718_ BI[6] _1641_ vdd gnd AND2X2
XFILL_3__2494_ gnd vdd FILL
XFILL_3__2074_ gnd vdd FILL
XFILL_3__3699_ gnd vdd FILL
XFILL_3__3279_ gnd vdd FILL
XFILL_4__2983_ gnd vdd FILL
XFILL_4__2563_ gnd vdd FILL
XFILL_4__2143_ gnd vdd FILL
XFILL_6__2489_ gnd vdd FILL
XFILL_6__2069_ gnd vdd FILL
XFILL_0__2883_ gnd vdd FILL
XFILL_0__2463_ gnd vdd FILL
XFILL_0__2043_ gnd vdd FILL
XFILL_6__3010_ gnd vdd FILL
XFILL_2__3002_ gnd vdd FILL
XFILL_3__1765_ gnd vdd FILL
XFILL_0__3668_ gnd vdd FILL
XFILL_0__3248_ gnd vdd FILL
XFILL_5__2632_ gnd vdd FILL
XFILL_5__2212_ gnd vdd FILL
XFILL_1__2624_ gnd vdd FILL
XFILL_1__2204_ gnd vdd FILL
XFILL_4__1834_ gnd vdd FILL
X_2899_ _537_ _547_ _546_ _28_ vdd gnd OAI21X1
X_2479_ _143_ _1117_ _177_ _1742_[4] vdd gnd OAI21X1
X_2059_ IRHOLD_valid _1168_ vdd gnd INVX2
XFILL_6__2701_ gnd vdd FILL
X_3420_ _1__bF$buf0 vdd _89_ clk_bF$buf7 _AXYS[2]_[4] vdd 
+ gnd
+ DFFSR
X_3000_ _627_ _626_ _1150__bF$buf4 _628_ vdd gnd OAI21X1
XFILL_4__2619_ gnd vdd FILL
XFILL_5__3590_ gnd vdd FILL
XFILL_5__3170_ gnd vdd FILL
XFILL_7__3188_ gnd vdd FILL
XFILL_0__2939_ gnd vdd FILL
XFILL_0__2519_ gnd vdd FILL
XFILL_1__3582_ gnd vdd FILL
XFILL_1__3162_ gnd vdd FILL
XFILL_3__3088_ gnd vdd FILL
XFILL_5__1903_ gnd vdd FILL
XFILL_4__2792_ gnd vdd FILL
XFILL_4__2372_ gnd vdd FILL
XFILL_6__2298_ gnd vdd FILL
XFILL_0__2692_ gnd vdd FILL
XFILL_0__2272_ gnd vdd FILL
XFILL_2__3651_ gnd vdd FILL
XFILL_2__3231_ gnd vdd FILL
XFILL_4__3577_ gnd vdd FILL
XFILL_4__3157_ gnd vdd FILL
XFILL_3__1994_ gnd vdd FILL
XFILL_0__3477_ gnd vdd FILL
XFILL_0__3057_ gnd vdd FILL
XFILL_5__2861_ gnd vdd FILL
XFILL_7__2459_ gnd vdd FILL
XFILL_5__2441_ gnd vdd FILL
XFILL_5__2021_ gnd vdd FILL
XFILL_1__2853_ gnd vdd FILL
XFILL_1__2433_ gnd vdd FILL
XFILL_1__2013_ gnd vdd FILL
XFILL_3__2779_ gnd vdd FILL
XFILL_3__2359_ gnd vdd FILL
XFILL_3__3300_ gnd vdd FILL
XFILL_5__3646_ gnd vdd FILL
XFILL_5__3226_ gnd vdd FILL
XFILL_1__3638_ gnd vdd FILL
XFILL_1__3218_ gnd vdd FILL
XFILL_6__1989_ gnd vdd FILL
X_2288_ _1156_ _1214_ _1395_ vdd gnd NOR2X1
XFILL_0__1963_ gnd vdd FILL
XFILL_6__2930_ gnd vdd FILL
XFILL_6__2510_ gnd vdd FILL
XFILL_3_BUFX2_insert60 gnd vdd FILL
XFILL_3_BUFX2_insert61 gnd vdd FILL
XFILL_3_BUFX2_insert62 gnd vdd FILL
XFILL_3_BUFX2_insert63 gnd vdd FILL
XFILL_2__2922_ gnd vdd FILL
XFILL_2__2502_ gnd vdd FILL
XFILL_3_BUFX2_insert64 gnd vdd FILL
XFILL_3_BUFX2_insert65 gnd vdd FILL
XFILL_3_BUFX2_insert66 gnd vdd FILL
XFILL_3_BUFX2_insert67 gnd vdd FILL
XFILL_4__2848_ gnd vdd FILL
XFILL_3_BUFX2_insert68 gnd vdd FILL
XFILL_4__2428_ gnd vdd FILL
XFILL_3_BUFX2_insert69 gnd vdd FILL
XFILL_4__2008_ gnd vdd FILL
XFILL_0__2748_ gnd vdd FILL
XFILL_6__3715_ gnd vdd FILL
XFILL_0__2328_ gnd vdd FILL
XFILL_2__3707_ gnd vdd FILL
XFILL_4__2181_ gnd vdd FILL
XFILL_5__2917_ gnd vdd FILL
XFILL_0__2081_ gnd vdd FILL
XFILL_2__2099_ gnd vdd FILL
XFILL_1__2909_ gnd vdd FILL
XFILL_2__3460_ gnd vdd FILL
X_1979_ _1006_ _983_ _1094_ _1095_ vdd gnd OAI21X1
XFILL_2__3040_ gnd vdd FILL
X_2920_ _564_ _565_ vdd gnd INVX1
X_2500_ _194_ _195_ vdd gnd INVX2
XFILL_0__3286_ gnd vdd FILL
XFILL_7__2688_ gnd vdd FILL
XFILL_5__2670_ gnd vdd FILL
XFILL_5__2250_ gnd vdd FILL
X_3705_ _1741_[8] AB[8] vdd gnd BUFX2
XFILL_1__2662_ gnd vdd FILL
XFILL_1__2242_ gnd vdd FILL
XFILL_3__2588_ gnd vdd FILL
XFILL_3__2168_ gnd vdd FILL
XFILL_5__3455_ gnd vdd FILL
XFILL_5__3035_ gnd vdd FILL
XFILL_1__3027_ gnd vdd FILL
XFILL_4__1872_ gnd vdd FILL
XFILL_6__1798_ gnd vdd FILL
X_2097_ _1205_ _1206_ vdd gnd INVX1
XFILL_0__1772_ gnd vdd FILL
XFILL_2__2731_ gnd vdd FILL
XFILL_2__2311_ gnd vdd FILL
XFILL_4__2657_ gnd vdd FILL
XFILL_4__2237_ gnd vdd FILL
XFILL_0__2977_ gnd vdd FILL
XFILL_0__2557_ gnd vdd FILL
XFILL_6__3524_ gnd vdd FILL
XFILL_0__2137_ gnd vdd FILL
XFILL_6__3104_ gnd vdd FILL
XFILL_2__3516_ gnd vdd FILL
XFILL_5__1941_ gnd vdd FILL
XFILL_7__1959_ gnd vdd FILL
XFILL_1__1933_ gnd vdd FILL
XFILL_3__1859_ gnd vdd FILL
XFILL_3__2800_ gnd vdd FILL
XFILL_5__2726_ gnd vdd FILL
XFILL_5__2306_ gnd vdd FILL
XFILL_1__2718_ gnd vdd FILL
X_1788_ _913_ _901_ _914_ vdd gnd NAND2X1
XFILL_4__3195_ gnd vdd FILL
XFILL_0__3095_ gnd vdd FILL
XFILL_4__1928_ gnd vdd FILL
XFILL_7__2077_ gnd vdd FILL
XFILL_0__1828_ gnd vdd FILL
X_3514_ _1543_ _1542_ _1544_ vdd gnd NAND2X1
XFILL_1__2891_ gnd vdd FILL
XFILL_1__2471_ gnd vdd FILL
XFILL_1__2051_ gnd vdd FILL
XFILL_3__2397_ gnd vdd FILL
XFILL_5__3264_ gnd vdd FILL
XFILL_1__3676_ gnd vdd FILL
XFILL_1__3256_ gnd vdd FILL
XFILL_2__2960_ gnd vdd FILL
XFILL_2__2540_ gnd vdd FILL
XFILL_2__2120_ gnd vdd FILL
XFILL_4__2886_ gnd vdd FILL
XFILL_4__2466_ gnd vdd FILL
XFILL_4__2046_ gnd vdd FILL
XFILL_0__2786_ gnd vdd FILL
XFILL_0__2366_ gnd vdd FILL
XFILL_5__1750_ gnd vdd FILL
XFILL_7__1768_ gnd vdd FILL
XFILL_5__2955_ gnd vdd FILL
XFILL_5__2535_ gnd vdd FILL
XFILL_5__2115_ gnd vdd FILL
XFILL_1__2947_ gnd vdd FILL
XFILL_1__2527_ gnd vdd FILL
XFILL_1__2107_ gnd vdd FILL
XFILL_2__1811_ gnd vdd FILL
XFILL_6__2604_ gnd vdd FILL
X_3323_ _1__bF$buf9 vdd _1512_[5] clk_bF$buf6 state[5] vdd 
+ gnd
+ DFFSR
XFILL_1__2280_ gnd vdd FILL
XFILL_7_BUFX2_insert11 gnd vdd FILL
XFILL_7_BUFX2_insert13 gnd vdd FILL
XFILL_7_BUFX2_insert14 gnd vdd FILL
XFILL_7_BUFX2_insert16 gnd vdd FILL
XFILL_7_BUFX2_insert17 gnd vdd FILL
XFILL_5__3493_ gnd vdd FILL
XFILL_7_BUFX2_insert19 gnd vdd FILL
XFILL_5__3073_ gnd vdd FILL
XFILL_1__3485_ gnd vdd FILL
XFILL_1__3065_ gnd vdd FILL
XFILL_5__1806_ gnd vdd FILL
XFILL_4__2695_ gnd vdd FILL
XFILL_4__2275_ gnd vdd FILL
XFILL_0__2595_ gnd vdd FILL
XFILL_6__3562_ gnd vdd FILL
XFILL_0__2175_ gnd vdd FILL
XFILL_6__3142_ gnd vdd FILL
XFILL_2__3554_ gnd vdd FILL
XFILL_2__3134_ gnd vdd FILL
XFILL_1__1971_ gnd vdd FILL
XFILL_3__1897_ gnd vdd FILL
XFILL_5__2764_ gnd vdd FILL
XFILL_5__2344_ gnd vdd FILL
XFILL_1__2756_ gnd vdd FILL
XFILL_1__2336_ gnd vdd FILL
XFILL_7__3303_ gnd vdd FILL
XFILL_3__3623_ gnd vdd FILL
XFILL_3__3203_ gnd vdd FILL
XFILL_5__3549_ gnd vdd FILL
XFILL_5__3129_ gnd vdd FILL
XFILL_4__1966_ gnd vdd FILL
XFILL_0__1866_ gnd vdd FILL
XFILL_6__2833_ gnd vdd FILL
X_3552_ _1581_ _1582_ vdd gnd INVX1
XFILL_6__2413_ gnd vdd FILL
X_3132_ _722_ _737_ _738_ _70_ vdd gnd OAI21X1
XFILL169950x36150 gnd vdd FILL
XFILL_2__2825_ gnd vdd FILL
XFILL_2__2405_ gnd vdd FILL
XFILL_6__3618_ gnd vdd FILL
XFILL_1__3294_ gnd vdd FILL
XFILL_4__2084_ gnd vdd FILL
XFILL_4__3289_ gnd vdd FILL
X_2823_ _463_ _464_ _485_ _486_ vdd gnd OAI21X1
X_2403_ _1372_ _1506_ _1507_ vdd gnd NOR2X1
XFILL_1__1780_ gnd vdd FILL
XFILL_0__3189_ gnd vdd FILL
XFILL168750x18150 gnd vdd FILL
XFILL_5__2993_ gnd vdd FILL
XFILL_5__2573_ gnd vdd FILL
XFILL_5__2153_ gnd vdd FILL
X_3608_ _1724_ _1727_ _1637_ _1638_ vdd gnd OAI21X1
XFILL_1__2985_ gnd vdd FILL
XFILL_1__2565_ gnd vdd FILL
XFILL_7__3532_ gnd vdd FILL
XFILL_1__2145_ gnd vdd FILL
XFILL_7__3112_ gnd vdd FILL
XFILL_3__3012_ gnd vdd FILL
XFILL_4__1775_ gnd vdd FILL
XFILL_6__2642_ gnd vdd FILL
X_3361_ _1__bF$buf6 vdd _38_ clk_bF$buf9 compare vdd 
+ gnd
+ DFFSR
XFILL_6__2222_ gnd vdd FILL
XFILL_2__2634_ gnd vdd FILL
XFILL_2__2214_ gnd vdd FILL
XFILL_4__3501_ gnd vdd FILL
XFILL_6__3007_ gnd vdd FILL
XFILL_5__1844_ gnd vdd FILL
XFILL_1__1836_ gnd vdd FILL
XFILL_7__2803_ gnd vdd FILL
XFILL_3__2703_ gnd vdd FILL
XFILL_5__2629_ gnd vdd FILL
XFILL_5__2209_ gnd vdd FILL
XFILL_6__3180_ gnd vdd FILL
XFILL_2__3592_ gnd vdd FILL
XFILL_2__3172_ gnd vdd FILL
XFILL_4__3098_ gnd vdd FILL
XFILL_6__1913_ gnd vdd FILL
X_2632_ _309_ _917_ _u_ALU8.BCD_ vdd gnd NOR2X1
X_2212_ _886__bF$buf2 _1319__bF$buf3 _1320_ _1321_ vdd gnd OAI21X1
XFILL_2__1905_ gnd vdd FILL
XFILL_5__2382_ gnd vdd FILL
X_3417_ _1__bF$buf10 vdd _86_ clk_bF$buf8 _AXYS[2]_[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2794_ gnd vdd FILL
XFILL_1__2374_ gnd vdd FILL
XFILL_3__3661_ gnd vdd FILL
XFILL_3__3241_ gnd vdd FILL
XFILL_5__3587_ gnd vdd FILL
XFILL_5__3167_ gnd vdd FILL
XFILL_1__3579_ gnd vdd FILL
XFILL_1__3159_ gnd vdd FILL
XFILL_6__2871_ gnd vdd FILL
X_3590_ _1609_ _1619_ _1620_ vdd gnd NAND2X1
XFILL_6__2451_ gnd vdd FILL
X_3170_ _770_ _771_ _772_ vdd gnd NOR2X1
XFILL_6__2031_ gnd vdd FILL
XFILL_2__2863_ gnd vdd FILL
XFILL_2__2443_ gnd vdd FILL
XFILL_2__2023_ gnd vdd FILL
XFILL_4__2789_ gnd vdd FILL
XFILL_4__2369_ gnd vdd FILL
X_1903_ _931__bF$buf0 _938_ _1020_ vdd gnd NOR2X1
XFILL_4__3310_ gnd vdd FILL
XFILL_0__2689_ gnd vdd FILL
XFILL_6__3656_ gnd vdd FILL
XFILL_0__2269_ gnd vdd FILL
XFILL_6__3236_ gnd vdd FILL
XFILL_2__3648_ gnd vdd FILL
XFILL_0__3630_ gnd vdd FILL
XFILL_2__3228_ gnd vdd FILL
XFILL_0__3210_ gnd vdd FILL
XFILL_7__2612_ gnd vdd FILL
XFILL_3__2932_ gnd vdd FILL
XFILL_3__2512_ gnd vdd FILL
XFILL_5__2858_ gnd vdd FILL
XFILL_5__2438_ gnd vdd FILL
XFILL_5__2018_ gnd vdd FILL
X_2861_ _519_ _521_ vdd gnd INVX1
X_2441_ php _1337_ _1227_ _144_ vdd gnd OAI21X1
X_2021_ _1131_ _1129_ _1130_ _1132_ vdd gnd NAND3X1
XFILL_5__2191_ gnd vdd FILL
XFILL_6__2927_ gnd vdd FILL
X_3646_ _1635_ _1630_ _1676_ vdd gnd NAND2X1
XFILL_6__2507_ gnd vdd FILL
X_3226_ _724_ _807_ _809_ _93_ vdd gnd OAI21X1
XFILL_1__2183_ gnd vdd FILL
XFILL_2__2919_ gnd vdd FILL
XFILL_0__2901_ gnd vdd FILL
XFILL_3__3470_ gnd vdd FILL
XFILL_3__3050_ gnd vdd FILL
XFILL_6__2680_ gnd vdd FILL
XFILL_6__2260_ gnd vdd FILL
XFILL_2__2672_ gnd vdd FILL
XFILL_2__2252_ gnd vdd FILL
XFILL_4__2598_ gnd vdd FILL
XFILL_4__2178_ gnd vdd FILL
XFILL_0__2498_ gnd vdd FILL
XFILL_6__3465_ gnd vdd FILL
XFILL_0__2078_ gnd vdd FILL
XFILL_6__3045_ gnd vdd FILL
XFILL_2__3457_ gnd vdd FILL
XFILL_2__3037_ gnd vdd FILL
XFILL_5__1882_ gnd vdd FILL
X_2917_ _1217_ _1396_ _557_ _562_ vdd gnd OAI21X1
XFILL_1__1874_ gnd vdd FILL
XFILL_7__2841_ gnd vdd FILL
XFILL_7__2421_ gnd vdd FILL
XFILL_7__2001_ gnd vdd FILL
XFILL_3__2741_ gnd vdd FILL
XFILL_3__2321_ gnd vdd FILL
XFILL_5__2667_ gnd vdd FILL
XFILL_5__2247_ gnd vdd FILL
XFILL_1__2659_ gnd vdd FILL
XFILL_1__2239_ gnd vdd FILL
XFILL_7__3206_ gnd vdd FILL
XFILL_1__3600_ gnd vdd FILL
XFILL_3__3526_ gnd vdd FILL
XFILL_3__3106_ gnd vdd FILL
XFILL_6__1951_ gnd vdd FILL
X_2670_ _1153_ res _1334_ _343_ vdd gnd OAI21X1
X_2250_ RDY_bF$buf5 _972_ _1149__bF$buf3 _1357_ _1358_ vdd 
+ gnd
+ OAI22X1
XFILL_2__1943_ gnd vdd FILL
XFILL_4__1869_ gnd vdd FILL
XFILL_4__2810_ gnd vdd FILL
XFILL_0__1769_ gnd vdd FILL
XFILL_6__2736_ gnd vdd FILL
X_3455_ _u_ALU8.AI7_ _1703_ vdd gnd INVX1
XFILL_6__2316_ gnd vdd FILL
X_3035_ _1013_ _647_ _653_ _58_ vdd gnd OAI21X1
XFILL_0__2710_ gnd vdd FILL
XFILL_2__2728_ gnd vdd FILL
XFILL_2__2308_ gnd vdd FILL
XFILL_1__3197_ gnd vdd FILL
XFILL168450x133350 gnd vdd FILL
XFILL_5__1938_ gnd vdd FILL
XFILL_2__2481_ gnd vdd FILL
XFILL_2__2061_ gnd vdd FILL
X_1941_ _AXYS[2]_[0] _1057_ _1058_ vdd gnd NAND2X1
XFILL_6__3694_ gnd vdd FILL
XFILL_6__3274_ gnd vdd FILL
XFILL_2__3266_ gnd vdd FILL
X_2726_ _394_ _387_ RDY_bF$buf0 _395_ vdd gnd OAI21X1
X_2306_ _1181_ _1412_ _1393_ _1413_ vdd gnd OAI21X1
XFILL_7__2650_ gnd vdd FILL
XFILL_7__2230_ gnd vdd FILL
XFILL_3__2970_ gnd vdd FILL
XFILL_3__2550_ gnd vdd FILL
XFILL_3__2130_ gnd vdd FILL
XFILL_5__2896_ gnd vdd FILL
XFILL_5__2476_ gnd vdd FILL
XFILL_5__2056_ gnd vdd FILL
XFILL_1__2888_ gnd vdd FILL
XFILL_1__2468_ gnd vdd FILL
XFILL_1__2048_ gnd vdd FILL
XFILL_6__1760_ gnd vdd FILL
XFILL_2__1752_ gnd vdd FILL
XFILL_0__1998_ gnd vdd FILL
XFILL_6__2965_ gnd vdd FILL
X_3684_ _1513_ vdd _1519_ clk_bF$buf3 ADD[2] vdd 
+ gnd
+ DFFSR
XFILL_6__2545_ gnd vdd FILL
X_3264_ _1201_ _1309_ _840_ vdd gnd NOR2X1
XFILL_6__2125_ gnd vdd FILL
XFILL_2__2957_ gnd vdd FILL
XFILL_2__2537_ gnd vdd FILL
XFILL_2__2117_ gnd vdd FILL
XFILL_7__1921_ gnd vdd FILL
XFILL_3__1821_ gnd vdd FILL
XFILL_0__3304_ gnd vdd FILL
XFILL_5__1747_ gnd vdd FILL
XFILL_7__2706_ gnd vdd FILL
XFILL_2__2290_ gnd vdd FILL
XFILL_3__2606_ gnd vdd FILL
X_1750_ DIHOLD[2] _882_ vdd gnd INVX1
XFILL_6__3083_ gnd vdd FILL
XFILL_2__3495_ gnd vdd FILL
XFILL_2__3075_ gnd vdd FILL
XFILL_6__1816_ gnd vdd FILL
X_2955_ _1037_ _1263_ RDY_bF$buf2 _592_ vdd gnd OAI21X1
X_2535_ _226_ _228_ _229_ vdd gnd AND2X2
X_2115_ _1196_ _1224_ vdd gnd INVX1
XFILL_2__1808_ gnd vdd FILL
XFILL_5__2285_ gnd vdd FILL
XFILL_1__2697_ gnd vdd FILL
XFILL_7__3664_ gnd vdd FILL
XFILL_1__2277_ gnd vdd FILL
XFILL_7__3244_ gnd vdd FILL
XFILL_3__3564_ gnd vdd FILL
XFILL_3__3144_ gnd vdd FILL
XFILL_2__1981_ gnd vdd FILL
XFILL_6__2774_ gnd vdd FILL
X_3493_ _1737_ _1736_ _1733_ _1738_ vdd gnd OAI21X1
XFILL_6__2354_ gnd vdd FILL
X_3073_ _680_ _684_ _685_ _64_ vdd gnd OAI21X1
XFILL_2__2766_ gnd vdd FILL
XFILL_2__2346_ gnd vdd FILL
X_1806_ _928_ _931__bF$buf3 _930_ _932_ vdd gnd OAI21X1
XFILL_4__3633_ gnd vdd FILL
XFILL_4__3213_ gnd vdd FILL
XFILL_6__3559_ gnd vdd FILL
XFILL_6__3139_ gnd vdd FILL
XFILL_0__3533_ gnd vdd FILL
XFILL_0__3113_ gnd vdd FILL
XFILL_5__1976_ gnd vdd FILL
XFILL_1__1968_ gnd vdd FILL
XFILL_7__2935_ gnd vdd FILL
XFILL_3__2835_ gnd vdd FILL
XFILL_3__2415_ gnd vdd FILL
XFILL_5__3702_ gnd vdd FILL
X_2764_ RDY_bF$buf4 _276_ _424_ _429_ _11_ vdd 
+ gnd
+ OAI22X1
X_2344_ _1450_ _1445_ _1451_ vdd gnd NOR2X1
XFILL_5__2094_ gnd vdd FILL
XFILL_4__2904_ gnd vdd FILL
X_3549_ alu_shift_right AI[1] _1579_ vdd gnd NAND2X1
X_3129_ _1006_ _1018_ _735_ _736_ vdd gnd OAI21X1
XFILL_1__2086_ gnd vdd FILL
XFILL_7__3053_ gnd vdd FILL
XFILL_0__2804_ gnd vdd FILL
XFILL_5__3299_ gnd vdd FILL
XFILL_2__1790_ gnd vdd FILL
XFILL_6__2583_ gnd vdd FILL
XFILL_6__2163_ gnd vdd FILL
XFILL_2__2995_ gnd vdd FILL
XFILL_2__2575_ gnd vdd FILL
XFILL_2__2155_ gnd vdd FILL
XFILL_4__3022_ gnd vdd FILL
XFILL_5__1785_ gnd vdd FILL
XFILL_1__1777_ gnd vdd FILL
XFILL_7__2324_ gnd vdd FILL
XFILL_3__2644_ gnd vdd FILL
XFILL_3__2224_ gnd vdd FILL
XFILL_7__3529_ gnd vdd FILL
XFILL_5__3511_ gnd vdd FILL
XFILL_7__3109_ gnd vdd FILL
XFILL_1__3503_ gnd vdd FILL
XFILL_3__3009_ gnd vdd FILL
XFILL_6__1854_ gnd vdd FILL
X_2993_ _596_ _1397_ _609_ _622_ vdd gnd OAI21X1
X_2573_ _1132_ _195_ _261_ _262_ vdd gnd AOI21X1
X_2153_ _886__bF$buf6 _1260_ _1261_ _1262_ vdd gnd OAI21X1
XFILL_2__1846_ gnd vdd FILL
XFILL_4__2713_ gnd vdd FILL
XFILL_6__2639_ gnd vdd FILL
X_3358_ _1__bF$buf3 vdd _35_ clk_bF$buf4 op[3] vdd 
+ gnd
+ DFFSR
XFILL_6__2219_ gnd vdd FILL
XFILL_7__3282_ gnd vdd FILL
XFILL_0__2613_ gnd vdd FILL
XFILL_3__3182_ gnd vdd FILL
XFILL_3__1915_ gnd vdd FILL
XFILL169050x18150 gnd vdd FILL
XFILL_6__2392_ gnd vdd FILL
XFILL_2__2384_ gnd vdd FILL
X_1844_ _931__bF$buf3 _969_ vdd gnd INVX4
XFILL_4__3671_ gnd vdd FILL
XFILL_4__3251_ gnd vdd FILL
XFILL_6__3597_ gnd vdd FILL
XFILL_6__3177_ gnd vdd FILL
XFILL_2__3589_ gnd vdd FILL
XFILL_0__3571_ gnd vdd FILL
XFILL_2__3169_ gnd vdd FILL
XFILL_0__3151_ gnd vdd FILL
XFILL_7_CLKBUF1_insert30 gnd vdd FILL
XFILL_7_CLKBUF1_insert32 gnd vdd FILL
XFILL_7_CLKBUF1_insert34 gnd vdd FILL
XFILL_7_CLKBUF1_insert35 gnd vdd FILL
X_2629_ adc_sbc _308_ vdd gnd INVX1
X_2209_ _1317_ _1318_ vdd gnd INVX1
XFILL_7__2553_ gnd vdd FILL
XFILL_3__2873_ gnd vdd FILL
XFILL_3__2453_ gnd vdd FILL
XFILL_3__2033_ gnd vdd FILL
XFILL_5__2799_ gnd vdd FILL
XFILL_5__2379_ gnd vdd FILL
XFILL_1__3312_ gnd vdd FILL
XFILL_3__3658_ gnd vdd FILL
XFILL_3__3238_ gnd vdd FILL
X_2382_ _1266_ _1488_ vdd gnd INVX1
XFILL_4__2942_ gnd vdd FILL
XFILL_4__2522_ gnd vdd FILL
XFILL_4__2102_ gnd vdd FILL
XFILL_6__2868_ gnd vdd FILL
X_3587_ _1616_ _1615_ _1568_ _1617_ vdd gnd MUX2X1
XFILL_6__2448_ gnd vdd FILL
XFILL_6__2028_ gnd vdd FILL
X_3167_ ADD[6] _769_ vdd gnd INVX1
XFILL_7__3091_ gnd vdd FILL
XFILL_0__2842_ gnd vdd FILL
XFILL_0__2422_ gnd vdd FILL
XFILL_0__2002_ gnd vdd FILL
XFILL_7__1824_ gnd vdd FILL
XFILL_4__3307_ gnd vdd FILL
XFILL_0__3627_ gnd vdd FILL
XFILL_0__3207_ gnd vdd FILL
XFILL_7__2609_ gnd vdd FILL
XFILL169650x82950 gnd vdd FILL
XFILL167850x144150 gnd vdd FILL
XFILL_2__2193_ gnd vdd FILL
XFILL_3__2929_ gnd vdd FILL
XFILL_3__2509_ gnd vdd FILL
XFILL_4__3480_ gnd vdd FILL
XFILL_4__3060_ gnd vdd FILL
X_2858_ _893_ _351_ _517_ _518_ vdd gnd OAI21X1
X_2438_ _1199_ _141_ store _142_ vdd gnd OAI21X1
X_2018_ _AXYS[1]_[6] _1047_ _1129_ vdd gnd NAND2X1
XFILL_7__2782_ gnd vdd FILL
XFILL_7__2362_ gnd vdd FILL
XFILL_3__2682_ gnd vdd FILL
XFILL_3__2262_ gnd vdd FILL
XFILL_5__2188_ gnd vdd FILL
XFILL_7__3567_ gnd vdd FILL
XFILL_1__3541_ gnd vdd FILL
XFILL_1__3121_ gnd vdd FILL
XFILL_3__3467_ gnd vdd FILL
XFILL_3__3047_ gnd vdd FILL
XFILL_6__1892_ gnd vdd FILL
X_2191_ RDY_bF$buf7 _1299_ _1298_ _1300_ vdd gnd OAI21X1
XFILL_2__1884_ gnd vdd FILL
XFILL168450x64950 gnd vdd FILL
XFILL_4__2751_ gnd vdd FILL
XFILL_4__2331_ gnd vdd FILL
XFILL_6__2677_ gnd vdd FILL
X_3396_ _1__bF$buf5 vdd _65_ clk_bF$buf1 N vdd 
+ gnd
+ DFFSR
XFILL_6__2257_ gnd vdd FILL
XFILL_2__2669_ gnd vdd FILL
XFILL_0__2651_ gnd vdd FILL
XFILL_0__2231_ gnd vdd FILL
XFILL_2__2249_ gnd vdd FILL
XFILL_2__3610_ gnd vdd FILL
XFILL_4__3536_ gnd vdd FILL
XFILL_4__3116_ gnd vdd FILL
XFILL_3__1953_ gnd vdd FILL
XFILL_0__3016_ gnd vdd FILL
XFILL_5__1879_ gnd vdd FILL
XFILL_7__2838_ gnd vdd FILL
XFILL_5__2820_ gnd vdd FILL
XFILL_5__2400_ gnd vdd FILL
XFILL_1__2812_ gnd vdd FILL
XFILL_3__2738_ gnd vdd FILL
XFILL_3__2318_ gnd vdd FILL
X_1882_ DIMUX[1] _1006_ vdd gnd INVX2
XFILL_5__3605_ gnd vdd FILL
XFILL_6__1948_ gnd vdd FILL
X_2667_ RDY_bF$buf3 _340_ _341_ vdd gnd NAND2X1
X_2247_ _1178_ _1181_ _1355_ vdd gnd NAND2X1
XFILL_7__2591_ gnd vdd FILL
XFILL_7__2171_ gnd vdd FILL
XFILL_0__1922_ gnd vdd FILL
XFILL_3__2491_ gnd vdd FILL
XFILL_3__2071_ gnd vdd FILL
XFILL_4__2807_ gnd vdd FILL
XFILL_0__2707_ gnd vdd FILL
XFILL_3__3696_ gnd vdd FILL
XFILL_3__3276_ gnd vdd FILL
XFILL169950x133350 gnd vdd FILL
XFILL_4__2980_ gnd vdd FILL
XFILL_4__2560_ gnd vdd FILL
XFILL_4__2140_ gnd vdd FILL
XFILL_6__2486_ gnd vdd FILL
XFILL_6__2066_ gnd vdd FILL
XFILL_0__2880_ gnd vdd FILL
XFILL_2__2898_ gnd vdd FILL
XFILL_2__2478_ gnd vdd FILL
XFILL_0__2460_ gnd vdd FILL
XFILL_2__2058_ gnd vdd FILL
XFILL_0__2040_ gnd vdd FILL
X_1938_ src_reg[0] _1055_ vdd gnd INVX1
XFILL_3__1762_ gnd vdd FILL
XFILL_0__3665_ gnd vdd FILL
XFILL_0__3245_ gnd vdd FILL
XFILL_7__2227_ gnd vdd FILL
XFILL_1__2621_ gnd vdd FILL
XFILL_1__2201_ gnd vdd FILL
XFILL_3__2967_ gnd vdd FILL
XFILL_3__2547_ gnd vdd FILL
XFILL_3__2127_ gnd vdd FILL
XFILL_4__1831_ gnd vdd FILL
XFILL_6__1757_ gnd vdd FILL
X_2896_ _545_ _1150__bF$buf2 _541_ _544_ _27_ vdd 
+ gnd
+ OAI22X1
X_2476_ _1319__bF$buf0 _1263_ PC[12] _175_ vdd gnd OAI21X1
X_2056_ I _1165_ vdd gnd INVX1
XFILL_2__1749_ gnd vdd FILL
XFILL_4__2616_ gnd vdd FILL
XFILL_7__3185_ gnd vdd FILL
XFILL_0__2936_ gnd vdd FILL
XFILL_0__2516_ gnd vdd FILL
XFILL_3__3085_ gnd vdd FILL
XFILL_5__1900_ gnd vdd FILL
XFILL_3__1818_ gnd vdd FILL
XFILL_6__2295_ gnd vdd FILL
XFILL_2__2287_ gnd vdd FILL
X_1747_ DIHOLD[1] _880_ vdd gnd INVX1
XFILL_4__3574_ gnd vdd FILL
XFILL_4__3154_ gnd vdd FILL
XFILL_3__1991_ gnd vdd FILL
XFILL_0__3474_ gnd vdd FILL
XFILL_0__3054_ gnd vdd FILL
XFILL_7__2456_ gnd vdd FILL
XFILL_1__2850_ gnd vdd FILL
XFILL_1__2430_ gnd vdd FILL
XFILL_1__2010_ gnd vdd FILL
XFILL_3__2776_ gnd vdd FILL
XFILL_3__2356_ gnd vdd FILL
XFILL_5__3643_ gnd vdd FILL
XFILL_5__3223_ gnd vdd FILL
XFILL_1__3635_ gnd vdd FILL
XFILL_1__3215_ gnd vdd FILL
XFILL_6__1986_ gnd vdd FILL
X_2285_ _1343_ _1392_ _1512_[1] vdd gnd NAND2X1
XFILL_2__1978_ gnd vdd FILL
XFILL_0__1960_ gnd vdd FILL
XFILL_3_BUFX2_insert37 gnd vdd FILL
XFILL_4__2845_ gnd vdd FILL
XFILL_3_BUFX2_insert38 gnd vdd FILL
XFILL_3_BUFX2_insert39 gnd vdd FILL
XFILL_4__2425_ gnd vdd FILL
XFILL_4__2005_ gnd vdd FILL
XFILL_0__2745_ gnd vdd FILL
XFILL_6__3712_ gnd vdd FILL
XFILL_0__2325_ gnd vdd FILL
XFILL_2__3704_ gnd vdd FILL
XFILL_5__2914_ gnd vdd FILL
XFILL_2__2096_ gnd vdd FILL
XFILL_1__2906_ gnd vdd FILL
X_1976_ _929_ _952_ _1092_ vdd gnd NAND2X1
XFILL_0__3283_ gnd vdd FILL
XFILL_7__2685_ gnd vdd FILL
X_3702_ _1741_[5] AB[5] vdd gnd BUFX2
XFILL_3__2585_ gnd vdd FILL
XFILL_3__2165_ gnd vdd FILL
XFILL_5__3452_ gnd vdd FILL
XFILL_5__3032_ gnd vdd FILL
XFILL_1__3024_ gnd vdd FILL
XFILL_6__1795_ gnd vdd FILL
X_2094_ _914__bF$buf3 _974_ _1202_ _1203_ vdd gnd OAI21X1
XFILL_2__1787_ gnd vdd FILL
XFILL_4__2654_ gnd vdd FILL
XFILL_4__2234_ gnd vdd FILL
X_3299_ ABL[7] _860_ _868_ vdd gnd NAND2X1
XFILL_0__2974_ gnd vdd FILL
XFILL_0__2554_ gnd vdd FILL
XFILL_6__3521_ gnd vdd FILL
XFILL_0__2134_ gnd vdd FILL
XFILL_6__3101_ gnd vdd FILL
XFILL_2__3513_ gnd vdd FILL
XFILL_7__1956_ gnd vdd FILL
XFILL_4__3019_ gnd vdd FILL
XFILL_1__1930_ gnd vdd FILL
XFILL_3__1856_ gnd vdd FILL
XFILL_5__2723_ gnd vdd FILL
XFILL_5__2303_ gnd vdd FILL
XFILL_1__2715_ gnd vdd FILL
X_1785_ state[1] _906_ _911_ vdd gnd NOR2X1
XFILL_4__3192_ gnd vdd FILL
XFILL169650x14550 gnd vdd FILL
XFILL_5__3508_ gnd vdd FILL
XFILL_0__3092_ gnd vdd FILL
XFILL_4__1925_ gnd vdd FILL
XFILL_7__2074_ gnd vdd FILL
XFILL_0__1825_ gnd vdd FILL
X_3511_ _1539_ _1540_ _1717_ _1541_ vdd gnd OAI21X1
XFILL_3__2394_ gnd vdd FILL
XFILL_7__3699_ gnd vdd FILL
XFILL_5__3261_ gnd vdd FILL
XFILL_1__3673_ gnd vdd FILL
XFILL_1__3253_ gnd vdd FILL
XFILL_3__3599_ gnd vdd FILL
XFILL_3__3179_ gnd vdd FILL
XFILL_4__2883_ gnd vdd FILL
XFILL_4__2463_ gnd vdd FILL
XFILL_4__2043_ gnd vdd FILL
XFILL_6__2389_ gnd vdd FILL
XFILL_0__2783_ gnd vdd FILL
XFILL_0__2363_ gnd vdd FILL
XFILL_4__3668_ gnd vdd FILL
XFILL_4__3248_ gnd vdd FILL
XFILL_0__3568_ gnd vdd FILL
XFILL_0__3148_ gnd vdd FILL
XFILL_4_BUFX2_insert80 gnd vdd FILL
XFILL_4_BUFX2_insert81 gnd vdd FILL
XFILL_4_BUFX2_insert82 gnd vdd FILL
XFILL_4_BUFX2_insert83 gnd vdd FILL
XFILL_5__2952_ gnd vdd FILL
XFILL_5__2532_ gnd vdd FILL
XFILL_5__2112_ gnd vdd FILL
XFILL_1__2944_ gnd vdd FILL
XFILL_1__2524_ gnd vdd FILL
XFILL_1__2104_ gnd vdd FILL
XFILL_5__3317_ gnd vdd FILL
XFILL_1__3309_ gnd vdd FILL
X_2799_ _459_ _461_ _462_ vdd gnd NOR2X1
X_2379_ _1248_ _1485_ vdd gnd INVX1
XFILL_6__2601_ gnd vdd FILL
X_3320_ _1__bF$buf9 vdd _1512_[2] clk_bF$buf6 state[2] vdd 
+ gnd
+ DFFSR
XFILL_4__2939_ gnd vdd FILL
XFILL_4__2519_ gnd vdd FILL
XFILL_5__3490_ gnd vdd FILL
XFILL_7__3088_ gnd vdd FILL
XFILL_5__3070_ gnd vdd FILL
XFILL_0__2839_ gnd vdd FILL
XFILL_0__2419_ gnd vdd FILL
XFILL_1__3482_ gnd vdd FILL
XFILL_1__3062_ gnd vdd FILL
XFILL_5__1803_ gnd vdd FILL
XFILL_4__2692_ gnd vdd FILL
XFILL_4__2272_ gnd vdd FILL
XFILL_6__2198_ gnd vdd FILL
XFILL_0__2592_ gnd vdd FILL
XFILL_0__2172_ gnd vdd FILL
XFILL_2__3551_ gnd vdd FILL
XFILL_2__3131_ gnd vdd FILL
XFILL_4__3477_ gnd vdd FILL
XFILL_4__3057_ gnd vdd FILL
XFILL_3__1894_ gnd vdd FILL
XFILL_5__2761_ gnd vdd FILL
XFILL_7__2359_ gnd vdd FILL
XFILL_5__2341_ gnd vdd FILL
XFILL_1__2753_ gnd vdd FILL
XFILL_1__2333_ gnd vdd FILL
XFILL_3__2679_ gnd vdd FILL
XFILL_3__2259_ gnd vdd FILL
XFILL_3__3620_ gnd vdd FILL
XFILL_3__3200_ gnd vdd FILL
XFILL_5__3546_ gnd vdd FILL
XFILL_5__3126_ gnd vdd FILL
XFILL_1__3538_ gnd vdd FILL
XFILL_1__3118_ gnd vdd FILL
XFILL_4__1963_ gnd vdd FILL
XFILL_6__1889_ gnd vdd FILL
X_2188_ _1295_ _1296_ _1297_ vdd gnd NAND2X1
XFILL_0__1863_ gnd vdd FILL
XFILL_6__2830_ gnd vdd FILL
XFILL_6__2410_ gnd vdd FILL
XFILL_2__2822_ gnd vdd FILL
XFILL_2__2402_ gnd vdd FILL
XFILL_4__2748_ gnd vdd FILL
XFILL_4__2328_ gnd vdd FILL
XFILL_0__2648_ gnd vdd FILL
XFILL_6__3615_ gnd vdd FILL
XFILL_0__2228_ gnd vdd FILL
XFILL_1__3291_ gnd vdd FILL
XFILL_2__3607_ gnd vdd FILL
XFILL_4__2081_ gnd vdd FILL
XFILL_5__2817_ gnd vdd FILL
XFILL169950x90150 gnd vdd FILL
XFILL_1__2809_ gnd vdd FILL
X_1879_ _980_ _986_ _1003_ _1004_ vdd gnd NAND3X1
XFILL_4__3286_ gnd vdd FILL
X_2820_ _481_ _482_ _427_ _426_ _483_ vdd 
+ gnd
+ OAI22X1
X_2400_ _1358_ _1504_ _1505_ vdd gnd NOR2X1
XFILL_0__3186_ gnd vdd FILL
XFILL169950x57750 gnd vdd FILL
XFILL_5__2990_ gnd vdd FILL
XFILL_7__2588_ gnd vdd FILL
XFILL_5__2570_ gnd vdd FILL
XFILL_5__2150_ gnd vdd FILL
XFILL_0__1919_ gnd vdd FILL
X_3605_ _1634_ _1635_ vdd gnd INVX1
XFILL_1__2982_ gnd vdd FILL
XFILL_1__2562_ gnd vdd FILL
XFILL_1__2142_ gnd vdd FILL
XFILL_3__2488_ gnd vdd FILL
XFILL_3__2068_ gnd vdd FILL
XFILL_4__1772_ gnd vdd FILL
XFILL_2__2631_ gnd vdd FILL
XFILL_2__2211_ gnd vdd FILL
XFILL_4__2977_ gnd vdd FILL
XFILL_4__2557_ gnd vdd FILL
XFILL_4__2137_ gnd vdd FILL
XFILL_0__2877_ gnd vdd FILL
XFILL_0__2457_ gnd vdd FILL
XFILL_0__2037_ gnd vdd FILL
XFILL_6__3004_ gnd vdd FILL
XFILL_5__1841_ gnd vdd FILL
XFILL_7__1859_ gnd vdd FILL
XFILL168750x39750 gnd vdd FILL
XFILL_1__1833_ gnd vdd FILL
XFILL_3__1759_ gnd vdd FILL
XFILL_3__2700_ gnd vdd FILL
XFILL_5__2626_ gnd vdd FILL
XFILL_5__2206_ gnd vdd FILL
XFILL_1__2618_ gnd vdd FILL
XFILL_4__3095_ gnd vdd FILL
XFILL_6__1910_ gnd vdd FILL
XFILL_2__1902_ gnd vdd FILL
XFILL_4__1828_ gnd vdd FILL
X_3414_ _1__bF$buf0 vdd _83_ clk_bF$buf7 _AXYS[1]_[6] vdd 
+ gnd
+ DFFSR
XFILL_1__2791_ gnd vdd FILL
XFILL_1__2371_ gnd vdd FILL
XFILL_3__2297_ gnd vdd FILL
XFILL_5__3584_ gnd vdd FILL
XFILL_5__3164_ gnd vdd FILL
XFILL_1__3576_ gnd vdd FILL
XFILL_1__3156_ gnd vdd FILL
XFILL_2__2860_ gnd vdd FILL
XFILL_2__2440_ gnd vdd FILL
XFILL_2__2020_ gnd vdd FILL
XFILL_4__2786_ gnd vdd FILL
XFILL_4__2366_ gnd vdd FILL
X_1900_ src_reg[1] _1017_ vdd gnd INVX1
XFILL_0__2686_ gnd vdd FILL
XFILL_6__3653_ gnd vdd FILL
XFILL_0__2266_ gnd vdd FILL
XFILL_6__3233_ gnd vdd FILL
XFILL_2__3645_ gnd vdd FILL
XFILL_2__3225_ gnd vdd FILL
XFILL_3__1988_ gnd vdd FILL
XFILL_5__2855_ gnd vdd FILL
XFILL_5__2435_ gnd vdd FILL
XFILL_5__2015_ gnd vdd FILL
XFILL_1__2847_ gnd vdd FILL
XFILL_1__2427_ gnd vdd FILL
XFILL_1__2007_ gnd vdd FILL
XFILL_3__3714_ gnd vdd FILL
XFILL_0__1957_ gnd vdd FILL
XFILL_6__2924_ gnd vdd FILL
X_3643_ _1654_ _1672_ _1673_ vdd gnd NAND2X1
XFILL_6__2504_ gnd vdd FILL
X_3223_ _721_ _1049_ _807_ vdd gnd NAND2X1
XFILL_1__2180_ gnd vdd FILL
XFILL_2__2916_ gnd vdd FILL
XFILL_6__3709_ gnd vdd FILL
XFILL_4__2595_ gnd vdd FILL
XFILL_4__2175_ gnd vdd FILL
XFILL_0__2495_ gnd vdd FILL
XFILL_6__3462_ gnd vdd FILL
XFILL_0__2075_ gnd vdd FILL
XFILL_6__3042_ gnd vdd FILL
XFILL_2__3454_ gnd vdd FILL
XFILL_2__3034_ gnd vdd FILL
XFILL_7__1897_ gnd vdd FILL
X_2914_ _1412_ _1348_ _559_ vdd gnd NOR2X1
XFILL_1__1871_ gnd vdd FILL
XFILL_3__1797_ gnd vdd FILL
XFILL_5__2664_ gnd vdd FILL
XFILL_5__2244_ gnd vdd FILL
XFILL_1__2656_ gnd vdd FILL
XFILL_1__2236_ gnd vdd FILL
XFILL_7__3203_ gnd vdd FILL
XFILL_3__3523_ gnd vdd FILL
XFILL_3__3103_ gnd vdd FILL
XFILL_5__3449_ gnd vdd FILL
XFILL_5__3029_ gnd vdd FILL
XFILL_2__1940_ gnd vdd FILL
XFILL_4__1866_ gnd vdd FILL
XFILL_0__1766_ gnd vdd FILL
XFILL_6__2733_ gnd vdd FILL
X_3452_ ADD[1] ADD[2] _1701_ vdd gnd NOR2X1
XFILL_6__2313_ gnd vdd FILL
X_3032_ reset _645_ IRHOLD[4] _652_ vdd gnd OAI21X1
XFILL_2__2725_ gnd vdd FILL
XFILL_2__2305_ gnd vdd FILL
XFILL_6__3518_ gnd vdd FILL
XFILL_1__3194_ gnd vdd FILL
XFILL_5__1935_ gnd vdd FILL
XFILL_1__1927_ gnd vdd FILL
XFILL_6__3691_ gnd vdd FILL
XFILL_6__3271_ gnd vdd FILL
XFILL_2__3263_ gnd vdd FILL
XFILL_4__3189_ gnd vdd FILL
X_2723_ _1014_ _330_ _391_ _392_ vdd gnd OAI21X1
X_2303_ _1190_ _1409_ _1252_ _1410_ vdd gnd OAI21X1
XFILL_0__3089_ gnd vdd FILL
XFILL_5__2893_ gnd vdd FILL
XFILL_5__2473_ gnd vdd FILL
XFILL_5__2053_ gnd vdd FILL
X_3508_ BI[3] _1538_ vdd gnd INVX1
XFILL_1__2885_ gnd vdd FILL
XFILL_1__2465_ gnd vdd FILL
XFILL_1__2045_ gnd vdd FILL
XFILL_7__3012_ gnd vdd FILL
XFILL_5__3678_ gnd vdd FILL
XFILL_5__3258_ gnd vdd FILL
XFILL_0__1995_ gnd vdd FILL
XFILL_6__2962_ gnd vdd FILL
X_3681_ _1513_ vdd _1516_ clk_bF$buf3 HC vdd 
+ gnd
+ DFFSR
XFILL_6__2542_ gnd vdd FILL
X_3261_ _836_ _1019_ _837_ vdd gnd AND2X2
XFILL_6__2122_ gnd vdd FILL
XFILL_2__2954_ gnd vdd FILL
XFILL_2__2534_ gnd vdd FILL
XFILL_2__2114_ gnd vdd FILL
XFILL_0__3301_ gnd vdd FILL
XFILL_5__1744_ gnd vdd FILL
XFILL_7__2703_ gnd vdd FILL
XFILL_3__2603_ gnd vdd FILL
XFILL_5__2949_ gnd vdd FILL
XFILL_5__2529_ gnd vdd FILL
XFILL_5__2109_ gnd vdd FILL
XFILL_6__3080_ gnd vdd FILL
XFILL_2__3492_ gnd vdd FILL
XFILL_2__3072_ gnd vdd FILL
XFILL_6__1813_ gnd vdd FILL
X_2952_ _1149__bF$buf4 _575_ _590_ _38_ vdd gnd OAI21X1
X_2532_ _216_ _209_ ADD[1] _226_ vdd gnd OAI21X1
X_2112_ _970_ _976_ _1221_ vdd gnd NOR2X1
XFILL_2__1805_ gnd vdd FILL
XFILL_5__2282_ gnd vdd FILL
X_3317_ _1144_ _869_ _877_ _116_ vdd gnd OAI21X1
XFILL_1__2694_ gnd vdd FILL
XFILL_7__3661_ gnd vdd FILL
XFILL_1__2274_ gnd vdd FILL
XFILL_7__3241_ gnd vdd FILL
XFILL_3__3561_ gnd vdd FILL
XFILL_3__3141_ gnd vdd FILL
XFILL_5__3487_ gnd vdd FILL
XFILL_5__3067_ gnd vdd FILL
XFILL_1__3479_ gnd vdd FILL
XFILL_1__3059_ gnd vdd FILL
XFILL_6__2771_ gnd vdd FILL
X_3490_ AI[5] _1734_ _1735_ vdd gnd NAND2X1
XFILL_6__2351_ gnd vdd FILL
X_3070_ _1008_ _956_ _682_ _683_ vdd gnd OAI21X1
XFILL_2__2763_ gnd vdd FILL
XFILL_2__2343_ gnd vdd FILL
XFILL_4__2689_ gnd vdd FILL
XFILL_4__2269_ gnd vdd FILL
X_1803_ state[5] state[4] _929_ vdd gnd NOR2X1
XFILL_4__3630_ gnd vdd FILL
XFILL_4__3210_ gnd vdd FILL
XFILL_0__2589_ gnd vdd FILL
XFILL_6__3556_ gnd vdd FILL
XFILL_0__2169_ gnd vdd FILL
XFILL_6__3136_ gnd vdd FILL
XFILL_0__3530_ gnd vdd FILL
XFILL_2__3548_ gnd vdd FILL
XFILL_2__3128_ gnd vdd FILL
XFILL_0__3110_ gnd vdd FILL
XFILL_5__1973_ gnd vdd FILL
XFILL_1__1965_ gnd vdd FILL
XFILL_7__2932_ gnd vdd FILL
XFILL_7__2512_ gnd vdd FILL
XFILL_3__2832_ gnd vdd FILL
XFILL_3__2412_ gnd vdd FILL
XFILL_5__2758_ gnd vdd FILL
XFILL_5__2338_ gnd vdd FILL
XFILL_3__3617_ gnd vdd FILL
X_2761_ _268_ _352_ _427_ vdd gnd NOR2X1
X_2341_ _886__bF$buf0 _1309_ _1447_ _1448_ vdd gnd OAI21X1
XFILL_5__2091_ gnd vdd FILL
XFILL_4__2901_ gnd vdd FILL
XFILL_6__2827_ gnd vdd FILL
X_3546_ AI[0] _1576_ vdd gnd INVX1
XFILL_6__2407_ gnd vdd FILL
X_3126_ _732_ _733_ vdd gnd INVX1
XFILL_1__2083_ gnd vdd FILL
XFILL_2__2819_ gnd vdd FILL
XFILL_0__2801_ gnd vdd FILL
XFILL_5__3296_ gnd vdd FILL
XFILL_1__3288_ gnd vdd FILL
XFILL_6__2580_ gnd vdd FILL
XFILL_6__2160_ gnd vdd FILL
XFILL_2__2992_ gnd vdd FILL
XFILL_2__2572_ gnd vdd FILL
XFILL_2__2152_ gnd vdd FILL
XFILL_4__2498_ gnd vdd FILL
XFILL_4__2078_ gnd vdd FILL
XFILL_0__2398_ gnd vdd FILL
XFILL_5__1782_ gnd vdd FILL
XFILL168750x133350 gnd vdd FILL
X_2817_ _1037_ _449_ _480_ vdd gnd NAND2X1
XFILL_1__1774_ gnd vdd FILL
XFILL_7__2741_ gnd vdd FILL
XFILL_7__2321_ gnd vdd FILL
XFILL_3__2641_ gnd vdd FILL
XFILL_3__2221_ gnd vdd FILL
XFILL_5__2987_ gnd vdd FILL
XFILL_5__2567_ gnd vdd FILL
XFILL_5__2147_ gnd vdd FILL
XFILL_1__2979_ gnd vdd FILL
XFILL_1__2559_ gnd vdd FILL
XFILL_1__2139_ gnd vdd FILL
XFILL_7__3106_ gnd vdd FILL
XFILL_1__3500_ gnd vdd FILL
XFILL_3__3006_ gnd vdd FILL
XFILL_6__1851_ gnd vdd FILL
X_2990_ _1055_ _1150__bF$buf4 _619_ _47_ vdd gnd OAI21X1
X_2570_ DIMUX[6] _227_ _200_ ABL[6] _259_ vdd 
+ gnd
+ AOI22X1
X_2150_ _886__bF$buf6 _1257_ _1258_ _1259_ vdd gnd OAI21X1
XFILL_2__1843_ gnd vdd FILL
XFILL_4__1769_ gnd vdd FILL
XFILL_4__2710_ gnd vdd FILL
XFILL_6__2636_ gnd vdd FILL
X_3355_ _1__bF$buf2 vdd _32_ clk_bF$buf10 op[0] vdd 
+ gnd
+ DFFSR
XFILL_6__2216_ gnd vdd FILL
XFILL_0__2610_ gnd vdd FILL
XFILL_2__2628_ gnd vdd FILL
XFILL_2__2208_ gnd vdd FILL
XFILL_1__3097_ gnd vdd FILL
XFILL_3__1912_ gnd vdd FILL
XFILL_5__1838_ gnd vdd FILL
XCLKBUF1_insert26 clk clk_bF$buf10 vdd gnd CLKBUF1
XCLKBUF1_insert27 clk clk_bF$buf9 vdd gnd CLKBUF1
XCLKBUF1_insert28 clk clk_bF$buf8 vdd gnd CLKBUF1
XCLKBUF1_insert29 clk clk_bF$buf7 vdd gnd CLKBUF1
XFILL_2__2381_ gnd vdd FILL
X_1841_ DIMUX[0] _966_ vdd gnd INVX2
XFILL_6__3594_ gnd vdd FILL
XFILL_6__3174_ gnd vdd FILL
XFILL_2__3586_ gnd vdd FILL
XFILL_2__3166_ gnd vdd FILL
XFILL_6__1907_ gnd vdd FILL
X_2626_ _1144_ _270_ _305_ _306_ vdd gnd OAI21X1
X_2206_ _902__bF$buf2 _1075_ RDY_bF$buf1 _1315_ vdd gnd OAI21X1
XFILL_7__2970_ gnd vdd FILL
XFILL_7__2550_ gnd vdd FILL
XFILL_7__2130_ gnd vdd FILL
XFILL_3__2870_ gnd vdd FILL
XFILL_3__2450_ gnd vdd FILL
XFILL_3__2030_ gnd vdd FILL
XFILL_5__2796_ gnd vdd FILL
XFILL_5__2376_ gnd vdd FILL
XFILL_1__2788_ gnd vdd FILL
XFILL_1__2368_ gnd vdd FILL
XFILL_3__3655_ gnd vdd FILL
XFILL_3__3235_ gnd vdd FILL
XFILL169050x39750 gnd vdd FILL
XFILL_4__1998_ gnd vdd FILL
XFILL_0__1898_ gnd vdd FILL
XFILL_6__2865_ gnd vdd FILL
X_3584_ _1612_ _1613_ _1611_ _1614_ vdd gnd OAI21X1
XFILL_6__2445_ gnd vdd FILL
XFILL_6__2025_ gnd vdd FILL
X_3164_ DIMUX[5] _1319__bF$buf1 _766_ _761_ _767_ vdd 
+ gnd
+ AOI22X1
XFILL_2__2857_ gnd vdd FILL
XFILL_2__2437_ gnd vdd FILL
XFILL_2__2017_ gnd vdd FILL
XFILL_7__1821_ gnd vdd FILL
XFILL_4__3304_ gnd vdd FILL
XFILL_0__3624_ gnd vdd FILL
XFILL_0__3204_ gnd vdd FILL
XFILL_7__2606_ gnd vdd FILL
XFILL_2__2190_ gnd vdd FILL
XFILL_3__2926_ gnd vdd FILL
XFILL_3__2506_ gnd vdd FILL
X_2855_ _1334_ _1145_ _515_ vdd gnd NOR2X1
X_2435_ op[3] _140_ vdd gnd INVX1
X_2015_ _1013_ _983_ _1126_ _1127_ vdd gnd OAI21X1
XFILL_5__2185_ gnd vdd FILL
XFILL_1__2597_ gnd vdd FILL
XFILL_7__3564_ gnd vdd FILL
XFILL_1__2177_ gnd vdd FILL
XFILL_3__3464_ gnd vdd FILL
XFILL_3__3044_ gnd vdd FILL
XFILL_2__1881_ gnd vdd FILL
XFILL_6__2674_ gnd vdd FILL
X_3393_ _1__bF$buf5 vdd _62_ clk_bF$buf6 V vdd 
+ gnd
+ DFFSR
XFILL_6__2254_ gnd vdd FILL
XFILL_2__2666_ gnd vdd FILL
XFILL_2__2246_ gnd vdd FILL
XFILL168750x3750 gnd vdd FILL
XFILL_4__3533_ gnd vdd FILL
XFILL_4__3113_ gnd vdd FILL
XFILL_6__3459_ gnd vdd FILL
XFILL_6__3039_ gnd vdd FILL
XFILL_3__1950_ gnd vdd FILL
XFILL_0__3013_ gnd vdd FILL
XFILL_5__1876_ gnd vdd FILL
XFILL_1__1868_ gnd vdd FILL
XFILL_7__2835_ gnd vdd FILL
XFILL_3__2735_ gnd vdd FILL
XFILL_3__2315_ gnd vdd FILL
XFILL_5__3602_ gnd vdd FILL
XFILL_6__1945_ gnd vdd FILL
X_2664_ _1005_ _330_ _337_ _338_ vdd gnd OAI21X1
X_2244_ _1150__bF$buf3 _1351_ _1350_ _1352_ vdd gnd NAND3X1
XFILL_2__1937_ gnd vdd FILL
XFILL_4__2804_ gnd vdd FILL
X_3449_ ADD[0] ADD[3] _1698_ vdd gnd OR2X2
X_3029_ _1008_ _647_ _650_ _55_ vdd gnd OAI21X1
XFILL_0__2704_ gnd vdd FILL
XFILL_3__3693_ gnd vdd FILL
XFILL_3__3273_ gnd vdd FILL
XFILL_5__3199_ gnd vdd FILL
XFILL_6__2483_ gnd vdd FILL
XFILL_6__2063_ gnd vdd FILL
XFILL_2__2895_ gnd vdd FILL
XFILL_2__2475_ gnd vdd FILL
XFILL_2__2055_ gnd vdd FILL
X_1935_ _1041_ _1044_ _1036_ _1052_ vdd gnd NAND3X1
XFILL_6__3268_ gnd vdd FILL
XFILL_0__3662_ gnd vdd FILL
XFILL_0__3242_ gnd vdd FILL
XFILL_7__2224_ gnd vdd FILL
XFILL_3__2964_ gnd vdd FILL
XFILL_3__2544_ gnd vdd FILL
XFILL_3__2124_ gnd vdd FILL
XFILL_7__3009_ gnd vdd FILL
XFILL_6__1754_ gnd vdd FILL
X_2893_ _543_ _1251_ _544_ vdd gnd NAND2X1
X_2473_ _148_ _1166_ _171_ _172_ vdd gnd OAI21X1
X_2053_ IRHOLD[3] _1162_ vdd gnd INVX1
XFILL_2__1746_ gnd vdd FILL
XFILL_4__2613_ gnd vdd FILL
XFILL_6__2959_ gnd vdd FILL
XFILL_6__2539_ gnd vdd FILL
X_3678_ RDY_bF$buf7 _1703_ _1697_ _1525_ vdd gnd OAI21X1
XFILL_6__2119_ gnd vdd FILL
X_3258_ _148_ _1067_ _833_ _834_ vdd gnd NAND3X1
XFILL_7__3182_ gnd vdd FILL
XFILL_0__2933_ gnd vdd FILL
XFILL_0__2513_ gnd vdd FILL
XFILL_3__3082_ gnd vdd FILL
XFILL_3__1815_ gnd vdd FILL
XFILL_6__2292_ gnd vdd FILL
XFILL_2__2284_ gnd vdd FILL
X_1744_ DIHOLD[0] _878_ vdd gnd INVX1
XFILL_4__3571_ gnd vdd FILL
XFILL_4__3151_ gnd vdd FILL
XFILL_6__3497_ gnd vdd FILL
XFILL_6__3077_ gnd vdd FILL
XFILL_2__3489_ gnd vdd FILL
XFILL_0__3471_ gnd vdd FILL
XFILL_0__3051_ gnd vdd FILL
XFILL_2__3069_ gnd vdd FILL
X_2949_ _310_ _1149__bF$buf2 _585_ _37_ vdd gnd AOI21X1
X_2529_ _965_ _218_ _223_ _224_ vdd gnd OAI21X1
X_2109_ _1172_ _1217_ _1218_ vdd gnd NAND2X1
XFILL_7__2453_ gnd vdd FILL
XFILL_3__2773_ gnd vdd FILL
XFILL_3__2353_ gnd vdd FILL
XFILL_5__2699_ gnd vdd FILL
XFILL_5__2279_ gnd vdd FILL
XFILL_7__3658_ gnd vdd FILL
XFILL_5__3640_ gnd vdd FILL
XFILL_5__3220_ gnd vdd FILL
XFILL_7__3238_ gnd vdd FILL
XFILL_1__3632_ gnd vdd FILL
XFILL_1__3212_ gnd vdd FILL
XFILL_3__3558_ gnd vdd FILL
XFILL_3__3138_ gnd vdd FILL
XFILL_6__1983_ gnd vdd FILL
X_2282_ _1369_ _1372_ _1389_ _1390_ vdd gnd NOR3X1
XFILL_2__1975_ gnd vdd FILL
XFILL_4__2842_ gnd vdd FILL
XFILL_4__2422_ gnd vdd FILL
XFILL_4__2002_ gnd vdd FILL
XFILL_6__2768_ gnd vdd FILL
X_3487_ CO _1714__bF$buf2 _1732_ vdd gnd NAND2X1
XFILL_6__2348_ gnd vdd FILL
X_3067_ _988_ _679_ _678_ _680_ vdd gnd OAI21X1
XFILL_0__2742_ gnd vdd FILL
XFILL_0__2322_ gnd vdd FILL
XFILL_2__3701_ gnd vdd FILL
XFILL_4__3627_ gnd vdd FILL
XFILL_4__3207_ gnd vdd FILL
XFILL_0__3527_ gnd vdd FILL
XFILL_0__3107_ gnd vdd FILL
XFILL_5__2911_ gnd vdd FILL
XFILL_7__2509_ gnd vdd FILL
XFILL_2__2093_ gnd vdd FILL
XFILL_1__2903_ gnd vdd FILL
XFILL_3__2829_ gnd vdd FILL
XFILL_3__2409_ gnd vdd FILL
X_1973_ _1088_ _1086_ _1087_ _1089_ vdd gnd NAND3X1
XFILL_2__3298_ gnd vdd FILL
XFILL_0__3280_ gnd vdd FILL
X_2758_ _417_ _409_ _423_ _424_ vdd gnd AOI21X1
X_2338_ RDY_bF$buf5 _1444_ _1149__bF$buf3 _1398_ _1445_ vdd 
+ gnd
+ OAI22X1
XFILL_7__2682_ gnd vdd FILL
XFILL_3__2582_ gnd vdd FILL
XFILL_3__2162_ gnd vdd FILL
XFILL_5__2088_ gnd vdd FILL
XFILL_7__3467_ gnd vdd FILL
XFILL_1__3021_ gnd vdd FILL
XFILL_6__1792_ gnd vdd FILL
X_2091_ _1199_ _1200_ vdd gnd INVX1
XFILL_2__1784_ gnd vdd FILL
XFILL169650x140550 gnd vdd FILL
XFILL_4__2651_ gnd vdd FILL
XFILL_4__2231_ gnd vdd FILL
XFILL_6__2997_ gnd vdd FILL
XFILL_6__2577_ gnd vdd FILL
X_3296_ _860_ _257_ _866_ _106_ vdd gnd OAI21X1
XFILL_6__2157_ gnd vdd FILL
XFILL_2__2989_ gnd vdd FILL
XFILL_0__2971_ gnd vdd FILL
XFILL_2__2569_ gnd vdd FILL
XFILL_0__2551_ gnd vdd FILL
XFILL_0__2131_ gnd vdd FILL
XFILL_2__2149_ gnd vdd FILL
XFILL_2__3510_ gnd vdd FILL
XFILL_7__1953_ gnd vdd FILL
XFILL_4__3016_ gnd vdd FILL
XFILL_3__1853_ gnd vdd FILL
XFILL_5__1779_ gnd vdd FILL
XFILL_7__2738_ gnd vdd FILL
XFILL_5__2720_ gnd vdd FILL
XFILL_5__2300_ gnd vdd FILL
XFILL_1__2712_ gnd vdd FILL
XFILL_3__2638_ gnd vdd FILL
XFILL_3__2218_ gnd vdd FILL
X_1782_ _904_ _907_ _908_ vdd gnd NOR2X1
XFILL_5__3505_ gnd vdd FILL
XFILL_4__1922_ gnd vdd FILL
XFILL_6__1848_ gnd vdd FILL
X_2987_ _1161_ _611_ _616_ _617_ vdd gnd AOI21X1
X_2567_ _1124_ _195_ _256_ _257_ vdd gnd AOI21X1
X_2147_ _886__bF$buf1 _967_ _1255_ _1150__bF$buf3 _1256_ vdd 
+ gnd
+ AOI22X1
XFILL_7__2491_ gnd vdd FILL
XFILL_7__2071_ gnd vdd FILL
XFILL_0__1822_ gnd vdd FILL
XFILL_3__2391_ gnd vdd FILL
XFILL_4__2707_ gnd vdd FILL
XFILL_0__2607_ gnd vdd FILL
XFILL_1__3670_ gnd vdd FILL
XFILL_1__3250_ gnd vdd FILL
XFILL_3__3596_ gnd vdd FILL
XFILL_3__3176_ gnd vdd FILL
XFILL_3__1909_ gnd vdd FILL
XFILL_4__2880_ gnd vdd FILL
XFILL_4__2460_ gnd vdd FILL
XFILL_4__2040_ gnd vdd FILL
XFILL_6__2386_ gnd vdd FILL
XFILL_0__2780_ gnd vdd FILL
XFILL_2__2798_ gnd vdd FILL
XFILL_0__2360_ gnd vdd FILL
XFILL_2__2378_ gnd vdd FILL
X_1838_ _920_ _923_ _963_ _964_ vdd gnd AOI21X1
XFILL_4__3665_ gnd vdd FILL
XFILL_4__3245_ gnd vdd FILL
XFILL_0__3565_ gnd vdd FILL
XFILL_0__3145_ gnd vdd FILL
XFILL_4_BUFX2_insert50 gnd vdd FILL
XFILL_4_BUFX2_insert51 gnd vdd FILL
XFILL_4_BUFX2_insert52 gnd vdd FILL
XFILL_4_BUFX2_insert53 gnd vdd FILL
XFILL_4_BUFX2_insert54 gnd vdd FILL
XFILL_4_BUFX2_insert55 gnd vdd FILL
XFILL_4_BUFX2_insert56 gnd vdd FILL
XFILL_4_BUFX2_insert57 gnd vdd FILL
XFILL_4_BUFX2_insert58 gnd vdd FILL
XFILL_4_BUFX2_insert59 gnd vdd FILL
XFILL_7__2967_ gnd vdd FILL
XFILL_7__2127_ gnd vdd FILL
XFILL_1__2941_ gnd vdd FILL
XFILL_1__2521_ gnd vdd FILL
XFILL_1__2101_ gnd vdd FILL
XFILL_3__2867_ gnd vdd FILL
XFILL_3__2447_ gnd vdd FILL
XFILL_3__2027_ gnd vdd FILL
XFILL_5__3314_ gnd vdd FILL
XFILL_1__3306_ gnd vdd FILL
X_2796_ _290_ _313_ _1118_ _459_ vdd gnd OAI21X1
X_2376_ _1474_ _1480_ _1481_ _1482_ vdd gnd NAND3X1
XFILL_4__2936_ gnd vdd FILL
XFILL_4__2516_ gnd vdd FILL
XFILL_7__3085_ gnd vdd FILL
XFILL_0__2836_ gnd vdd FILL
XFILL_0__2416_ gnd vdd FILL
XFILL_7__1818_ gnd vdd FILL
XFILL_5__1800_ gnd vdd FILL
XFILL_6__2195_ gnd vdd FILL
XFILL_2__2187_ gnd vdd FILL
XFILL_4__3474_ gnd vdd FILL
XFILL_4__3054_ gnd vdd FILL
XFILL_3__1891_ gnd vdd FILL
XFILL_7__2356_ gnd vdd FILL
XFILL_1__2750_ gnd vdd FILL
XFILL_1__2330_ gnd vdd FILL
XFILL_3__2676_ gnd vdd FILL
XFILL_3__2256_ gnd vdd FILL
XFILL_5__3543_ gnd vdd FILL
XFILL_5__3123_ gnd vdd FILL
XFILL_1__3535_ gnd vdd FILL
XFILL_1__3115_ gnd vdd FILL
XFILL_4__1960_ gnd vdd FILL
XFILL_6__1886_ gnd vdd FILL
X_2185_ _1289_ _1293_ _1294_ vdd gnd NOR2X1
XFILL_0__1860_ gnd vdd FILL
XFILL_2__1878_ gnd vdd FILL
XFILL_4__2745_ gnd vdd FILL
XFILL_4__2325_ gnd vdd FILL
XFILL_0__2645_ gnd vdd FILL
XFILL_6__3612_ gnd vdd FILL
XFILL_0__2225_ gnd vdd FILL
XFILL_2__3604_ gnd vdd FILL
XFILL_6_CLKBUF1_insert30 gnd vdd FILL
XFILL_6_CLKBUF1_insert31 gnd vdd FILL
XFILL_6_CLKBUF1_insert32 gnd vdd FILL
XFILL_3__1947_ gnd vdd FILL
XFILL_6_CLKBUF1_insert33 gnd vdd FILL
XFILL_6_CLKBUF1_insert34 gnd vdd FILL
XFILL_6_CLKBUF1_insert35 gnd vdd FILL
XFILL_6_CLKBUF1_insert36 gnd vdd FILL
XFILL_5__2814_ gnd vdd FILL
XFILL_1__2806_ gnd vdd FILL
X_1876_ _1000_ _1001_ vdd gnd INVX1
XFILL_4__3283_ gnd vdd FILL
XFILL_0__3183_ gnd vdd FILL
XFILL_7__2585_ gnd vdd FILL
XFILL_0__1916_ gnd vdd FILL
X_3602_ _1725_ alu_op[2] _1527_ _1632_ vdd gnd OAI21X1
XFILL_3__2485_ gnd vdd FILL
XFILL_3__2065_ gnd vdd FILL
XFILL_4__2974_ gnd vdd FILL
XFILL_4__2554_ gnd vdd FILL
XFILL_4__2134_ gnd vdd FILL
X_3199_ _757_ _789_ _794_ _81_ vdd gnd OAI21X1
XFILL_0__2874_ gnd vdd FILL
XFILL_0__2454_ gnd vdd FILL
XFILL_0__2034_ gnd vdd FILL
XFILL_6__3001_ gnd vdd FILL
XFILL_7__1856_ gnd vdd FILL
XFILL_1__1830_ gnd vdd FILL
XFILL_0__3659_ gnd vdd FILL
XFILL_3__1756_ gnd vdd FILL
XFILL_0__3239_ gnd vdd FILL
XFILL_5__2623_ gnd vdd FILL
XFILL_5__2203_ gnd vdd FILL
XFILL_1__2615_ gnd vdd FILL
XFILL_4__3092_ gnd vdd FILL
XFILL_4__1825_ gnd vdd FILL
X_3411_ _1__bF$buf10 vdd _80_ clk_bF$buf8 _AXYS[1]_[3] vdd 
+ gnd
+ DFFSR
XFILL_3__2294_ gnd vdd FILL
XFILL_5__3581_ gnd vdd FILL
XFILL_5__3161_ gnd vdd FILL
XFILL_1__3573_ gnd vdd FILL
XFILL_1__3153_ gnd vdd FILL
XFILL_3__3499_ gnd vdd FILL
XFILL_3__3079_ gnd vdd FILL
XFILL_4__2783_ gnd vdd FILL
XFILL_4__2363_ gnd vdd FILL
XFILL_6__2289_ gnd vdd FILL
XFILL_0__2683_ gnd vdd FILL
XFILL_6__3650_ gnd vdd FILL
XFILL_0__2263_ gnd vdd FILL
XFILL_6__3230_ gnd vdd FILL
XFILL_2__3642_ gnd vdd FILL
XFILL_2__3222_ gnd vdd FILL
XFILL_4__3568_ gnd vdd FILL
XFILL_4__3148_ gnd vdd FILL
XFILL_3__1985_ gnd vdd FILL
XFILL_0__3468_ gnd vdd FILL
XFILL_0__3048_ gnd vdd FILL
XFILL_5__2852_ gnd vdd FILL
XFILL_5__2432_ gnd vdd FILL
XFILL_5__2012_ gnd vdd FILL
XFILL_1__2844_ gnd vdd FILL
XFILL_1__2424_ gnd vdd FILL
XFILL_1__2004_ gnd vdd FILL
XFILL_3__3711_ gnd vdd FILL
XFILL_5__3637_ gnd vdd FILL
XFILL_5__3217_ gnd vdd FILL
XFILL_1__3629_ gnd vdd FILL
XFILL_1__3209_ gnd vdd FILL
X_2699_ _338_ _369_ _333_ _370_ vdd gnd NAND3X1
X_2279_ RDY_bF$buf2 _953_ _1386_ _1387_ vdd gnd OAI21X1
XFILL_0__1954_ gnd vdd FILL
XFILL_6__2921_ gnd vdd FILL
X_3640_ _1629_ _1670_ vdd gnd INVX1
XFILL_6__2501_ gnd vdd FILL
X_3220_ _778_ _798_ _805_ _91_ vdd gnd AOI21X1
XFILL_2__2913_ gnd vdd FILL
XFILL_4__2839_ gnd vdd FILL
XFILL_4__2419_ gnd vdd FILL
XFILL_0__2739_ gnd vdd FILL
XFILL_6__3706_ gnd vdd FILL
XFILL_0__2319_ gnd vdd FILL
XFILL_4__2592_ gnd vdd FILL
XFILL_4__2172_ gnd vdd FILL
XFILL_6__2098_ gnd vdd FILL
XFILL_5__2908_ gnd vdd FILL
XFILL_0__2492_ gnd vdd FILL
XFILL_0__2072_ gnd vdd FILL
XFILL_2__3451_ gnd vdd FILL
XFILL_2__3031_ gnd vdd FILL
X_2911_ _556_ _557_ vdd gnd INVX1
XFILL_0__3697_ gnd vdd FILL
XFILL_3__1794_ gnd vdd FILL
XFILL_0__3277_ gnd vdd FILL
XFILL_7__2679_ gnd vdd FILL
XFILL_5__2661_ gnd vdd FILL
XFILL_7__2259_ gnd vdd FILL
XFILL_5__2241_ gnd vdd FILL
XFILL_1__2653_ gnd vdd FILL
XFILL_1__2233_ gnd vdd FILL
XFILL_3__2999_ gnd vdd FILL
XBUFX2_insert0 RDY RDY_bF$buf9 vdd gnd BUFX2
XFILL_3__2579_ gnd vdd FILL
XFILL_3__2159_ gnd vdd FILL
XBUFX2_insert1 RDY RDY_bF$buf8 vdd gnd BUFX2
XBUFX2_insert2 RDY RDY_bF$buf7 vdd gnd BUFX2
XBUFX2_insert3 RDY RDY_bF$buf6 vdd gnd BUFX2
XBUFX2_insert4 RDY RDY_bF$buf5 vdd gnd BUFX2
XBUFX2_insert5 RDY RDY_bF$buf4 vdd gnd BUFX2
XBUFX2_insert6 RDY RDY_bF$buf3 vdd gnd BUFX2
XBUFX2_insert7 RDY RDY_bF$buf2 vdd gnd BUFX2
XBUFX2_insert8 RDY RDY_bF$buf1 vdd gnd BUFX2
XBUFX2_insert9 RDY RDY_bF$buf0 vdd gnd BUFX2
XFILL_3__3520_ gnd vdd FILL
XFILL_3__3100_ gnd vdd FILL
XFILL_5__3026_ gnd vdd FILL
XFILL_1__3018_ gnd vdd FILL
XFILL_4__1863_ gnd vdd FILL
XFILL_6__1789_ gnd vdd FILL
X_2088_ RDY_bF$buf8 _1196_ _1195_ _1197_ vdd gnd OAI21X1
XFILL_0__1763_ gnd vdd FILL
XFILL_6__2730_ gnd vdd FILL
XFILL_6__2310_ gnd vdd FILL
XFILL_2__2722_ gnd vdd FILL
XFILL_2__2302_ gnd vdd FILL
XFILL_4__2648_ gnd vdd FILL
XFILL_4__2228_ gnd vdd FILL
XFILL_0__2968_ gnd vdd FILL
XFILL_0__2548_ gnd vdd FILL
XFILL_6__3515_ gnd vdd FILL
XFILL_0__2128_ gnd vdd FILL
XFILL_1__3191_ gnd vdd FILL
XFILL_2__3507_ gnd vdd FILL
XFILL_5__1932_ gnd vdd FILL
XFILL_1__1924_ gnd vdd FILL
XFILL_5__2717_ gnd vdd FILL
XFILL_1__2709_ gnd vdd FILL
XFILL_2__3260_ gnd vdd FILL
X_1779_ state[1] _905_ vdd gnd INVX1
XFILL_4__3186_ gnd vdd FILL
X_2720_ ABL[6] _389_ vdd gnd INVX1
X_2300_ _1405_ _1395_ _1406_ _1407_ vdd gnd OAI21X1
XFILL_0__3086_ gnd vdd FILL
XFILL_4__1919_ gnd vdd FILL
XFILL_5__2890_ gnd vdd FILL
XFILL_7__2488_ gnd vdd FILL
XFILL_5__2470_ gnd vdd FILL
XFILL_5__2050_ gnd vdd FILL
XFILL_0__1819_ gnd vdd FILL
X_3505_ BI[4] _1739_ _1534_ _1535_ vdd gnd OAI21X1
XFILL_1__2882_ gnd vdd FILL
XFILL_1__2462_ gnd vdd FILL
XFILL_1__2042_ gnd vdd FILL
XFILL_3__2388_ gnd vdd FILL
XFILL_5__3675_ gnd vdd FILL
XFILL_5__3255_ gnd vdd FILL
XFILL_1__3667_ gnd vdd FILL
XFILL_1__3247_ gnd vdd FILL
XFILL_0__1992_ gnd vdd FILL
XFILL_2__2951_ gnd vdd FILL
XFILL_2__2531_ gnd vdd FILL
XFILL_2__2111_ gnd vdd FILL
XFILL_4__2877_ gnd vdd FILL
XFILL_4__2457_ gnd vdd FILL
XFILL_4__2037_ gnd vdd FILL
XFILL_0__2777_ gnd vdd FILL
XFILL_0__2357_ gnd vdd FILL
XFILL_2__3316_ gnd vdd FILL
XFILL_7__1759_ gnd vdd FILL
XFILL_3__2600_ gnd vdd FILL
XFILL_5__2946_ gnd vdd FILL
XFILL_5__2526_ gnd vdd FILL
XFILL_5__2106_ gnd vdd FILL
XFILL_1__2938_ gnd vdd FILL
XFILL_1__2518_ gnd vdd FILL
XFILL_6__1810_ gnd vdd FILL
XFILL_2__1802_ gnd vdd FILL
X_3314_ _1741_[14] _869_ _876_ vdd gnd NAND2X1
XFILL_1__2691_ gnd vdd FILL
XFILL_1__2271_ gnd vdd FILL
XFILL_3__2197_ gnd vdd FILL
XFILL_5__3484_ gnd vdd FILL
XFILL_5__3064_ gnd vdd FILL
XFILL_1__3476_ gnd vdd FILL
XFILL_1__3056_ gnd vdd FILL
XFILL_2__2760_ gnd vdd FILL
XFILL_2__2340_ gnd vdd FILL
XFILL_4__2686_ gnd vdd FILL
XFILL_4__2266_ gnd vdd FILL
X_1800_ state[3] _896_ _926_ vdd gnd NOR2X1
XFILL_0__2586_ gnd vdd FILL
XFILL_6__3553_ gnd vdd FILL
XFILL_0__2166_ gnd vdd FILL
XFILL_6__3133_ gnd vdd FILL
XFILL169950x43350 gnd vdd FILL
XFILL_2__3545_ gnd vdd FILL
XFILL_2__3125_ gnd vdd FILL
XFILL_7__1988_ gnd vdd FILL
XFILL_5__1970_ gnd vdd FILL
XFILL_1__1962_ gnd vdd FILL
XFILL_3__1888_ gnd vdd FILL
XFILL_5__2755_ gnd vdd FILL
XFILL_5__2335_ gnd vdd FILL
XFILL_1__2747_ gnd vdd FILL
XFILL_1__2327_ gnd vdd FILL
XFILL_3__3614_ gnd vdd FILL
XFILL_4__1957_ gnd vdd FILL
XFILL_0__1857_ gnd vdd FILL
XFILL_6__2824_ gnd vdd FILL
X_3543_ alu_op[1] AI[0] _1573_ vdd gnd NAND2X1
XFILL_6__2404_ gnd vdd FILL
X_3123_ _727_ _730_ vdd gnd INVX1
XFILL_1__2080_ gnd vdd FILL
XFILL_2__2816_ gnd vdd FILL
XFILL_5__3293_ gnd vdd FILL
XFILL_6__3609_ gnd vdd FILL
XFILL_1__3285_ gnd vdd FILL
XFILL_4__2495_ gnd vdd FILL
XFILL_4__2075_ gnd vdd FILL
XFILL_0__2395_ gnd vdd FILL
XFILL_7__1797_ gnd vdd FILL
X_2814_ _472_ _476_ _475_ _477_ vdd gnd NAND3X1
XFILL_1__1771_ gnd vdd FILL
XFILL_5__2984_ gnd vdd FILL
XFILL_5__2564_ gnd vdd FILL
XFILL_5__2144_ gnd vdd FILL
XFILL_1__2976_ gnd vdd FILL
XFILL_1__2556_ gnd vdd FILL
XFILL_1__2136_ gnd vdd FILL
XFILL_7__3103_ gnd vdd FILL
XFILL_3__3003_ gnd vdd FILL
XFILL_2__1840_ gnd vdd FILL
XFILL_4__1766_ gnd vdd FILL
XFILL_6__2633_ gnd vdd FILL
X_3352_ _1__bF$buf9 vdd _29_ clk_bF$buf9 sei vdd 
+ gnd
+ DFFSR
XFILL_6__2213_ gnd vdd FILL
XFILL_2__2625_ gnd vdd FILL
XFILL_2__2205_ gnd vdd FILL
XFILL_1__3094_ gnd vdd FILL
XFILL_5__1835_ gnd vdd FILL
XFILL_1__1827_ gnd vdd FILL
XFILL_6__3591_ gnd vdd FILL
XFILL_6__3171_ gnd vdd FILL
XFILL_2__3583_ gnd vdd FILL
XFILL_2__3163_ gnd vdd FILL
XFILL_4__3089_ gnd vdd FILL
XFILL_6__1904_ gnd vdd FILL
X_2623_ _300_ _218_ _303_ _1741_[14] vdd gnd OAI21X1
X_2203_ _1308_ _1306_ _1311_ _1312_ vdd gnd NAND3X1
XFILL_5__2793_ gnd vdd FILL
XFILL_5__2373_ gnd vdd FILL
X_3408_ _1__bF$buf10 vdd _77_ clk_bF$buf8 _AXYS[1]_[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2785_ gnd vdd FILL
XFILL_1__2365_ gnd vdd FILL
XFILL_3__3652_ gnd vdd FILL
XFILL_3__3232_ gnd vdd FILL
XFILL_5__3578_ gnd vdd FILL
XFILL_5__3158_ gnd vdd FILL
XFILL_4__1995_ gnd vdd FILL
XFILL_0__1895_ gnd vdd FILL
XFILL_6__2862_ gnd vdd FILL
X_3581_ _1728_ _1610_ _1580_ _1611_ vdd gnd OAI21X1
XFILL_6__2442_ gnd vdd FILL
XFILL_6__2022_ gnd vdd FILL
X_3161_ _763_ _762_ ADD[5] _764_ vdd gnd OAI21X1
XFILL_2__2854_ gnd vdd FILL
XFILL_2__2434_ gnd vdd FILL
XFILL_2__2014_ gnd vdd FILL
XFILL_4__3301_ gnd vdd FILL
XFILL_6__3647_ gnd vdd FILL
XFILL_6__3227_ gnd vdd FILL
XFILL_2__3639_ gnd vdd FILL
XFILL_0__3621_ gnd vdd FILL
XFILL_0__3201_ gnd vdd FILL
XFILL_2__3219_ gnd vdd FILL
XFILL_7__2603_ gnd vdd FILL
XFILL_3__2923_ gnd vdd FILL
XFILL_3__2503_ gnd vdd FILL
XFILL_5__2849_ gnd vdd FILL
XFILL_5__2429_ gnd vdd FILL
XFILL_5__2009_ gnd vdd FILL
XFILL_3__3708_ gnd vdd FILL
X_2852_ _511_ _512_ _16_ vdd gnd AND2X2
X_2432_ _135_ _137_ _138_ vdd gnd NOR2X1
X_2012_ _1123_ _1121_ _1122_ _1124_ vdd gnd NAND3X1
XFILL_5__2182_ gnd vdd FILL
XFILL_6__2918_ gnd vdd FILL
X_3637_ _u_ALU8.BCD_ _1666_ _1667_ vdd gnd NAND2X1
X_3217_ _AXYS[2]_[5] _798_ _804_ vdd gnd NOR2X1
XFILL_1__2594_ gnd vdd FILL
XFILL_7__3561_ gnd vdd FILL
XFILL_1__2174_ gnd vdd FILL
XFILL_7__3141_ gnd vdd FILL
XFILL_3__3461_ gnd vdd FILL
XFILL_3__3041_ gnd vdd FILL
XFILL_6__2671_ gnd vdd FILL
X_3390_ _59_ clk_bF$buf4 IRHOLD[6] vdd gnd DFFPOSX1
XFILL_6__2251_ gnd vdd FILL
XFILL_2__2663_ gnd vdd FILL
XFILL_2__2243_ gnd vdd FILL
XFILL_4__2589_ gnd vdd FILL
XFILL_4__2169_ gnd vdd FILL
XFILL_4__3530_ gnd vdd FILL
XFILL_4__3110_ gnd vdd FILL
XFILL_0__2489_ gnd vdd FILL
XFILL_6__3456_ gnd vdd FILL
XFILL_0__2069_ gnd vdd FILL
XFILL_6__3036_ gnd vdd FILL
XFILL_2__3028_ gnd vdd FILL
XFILL_0__3010_ gnd vdd FILL
XFILL_5__1873_ gnd vdd FILL
X_2908_ _1327_ _1178_ _1161_ _554_ vdd gnd NAND3X1
XFILL_1__1865_ gnd vdd FILL
XFILL_7__2832_ gnd vdd FILL
XFILL_7__2412_ gnd vdd FILL
XFILL_3__2732_ gnd vdd FILL
XFILL_3__2312_ gnd vdd FILL
XFILL_5__2658_ gnd vdd FILL
XFILL_5__2238_ gnd vdd FILL
XFILL_7__3617_ gnd vdd FILL
XFILL_3__3517_ gnd vdd FILL
XFILL_6__1942_ gnd vdd FILL
X_2661_ ABL[1] _323_ _335_ vdd gnd NAND2X1
X_2241_ _1178_ _1348_ _1349_ vdd gnd NAND2X1
XFILL_2__1934_ gnd vdd FILL
XFILL_4__2801_ gnd vdd FILL
XFILL_6__2727_ gnd vdd FILL
X_3446_ _1__bF$buf1 vdd _114_ clk_bF$buf0 ABH[5] vdd 
+ gnd
+ DFFSR
XFILL_6__2307_ gnd vdd FILL
X_3026_ reset _645_ IRHOLD[1] _649_ vdd gnd OAI21X1
XFILL_2__2719_ gnd vdd FILL
XFILL_0__2701_ gnd vdd FILL
XFILL_3__3270_ gnd vdd FILL
XFILL_5__3196_ gnd vdd FILL
XFILL_1__3188_ gnd vdd FILL
XFILL_5__1929_ gnd vdd FILL
XFILL_6__2480_ gnd vdd FILL
XFILL_6__2060_ gnd vdd FILL
XFILL_2__2892_ gnd vdd FILL
XFILL_2__2472_ gnd vdd FILL
XFILL_2__2052_ gnd vdd FILL
XFILL_4__2398_ gnd vdd FILL
X_1932_ _1048_ _1039_ _1045_ _1046_ _1049_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2298_ gnd vdd FILL
XFILL_6__3265_ gnd vdd FILL
XFILL_2__3677_ gnd vdd FILL
XFILL_2__3257_ gnd vdd FILL
X_2717_ _386_ _387_ vdd gnd INVX1
XFILL_7__2641_ gnd vdd FILL
XFILL_7__2221_ gnd vdd FILL
XFILL_3__2961_ gnd vdd FILL
XFILL_3__2541_ gnd vdd FILL
XFILL_3__2121_ gnd vdd FILL
XFILL_5__2887_ gnd vdd FILL
XFILL_5__2467_ gnd vdd FILL
XFILL_5__2047_ gnd vdd FILL
XFILL_1__2879_ gnd vdd FILL
XFILL_1__2459_ gnd vdd FILL
XFILL_1__2039_ gnd vdd FILL
XFILL_7__3006_ gnd vdd FILL
XFILL_6__1751_ gnd vdd FILL
X_2890_ _539_ _1150__bF$buf2 _541_ _538_ _25_ vdd 
+ gnd
+ OAI22X1
X_2470_ _169_ _170_ vdd gnd INVX1
X_2050_ IRHOLD_valid DIMUX[0] _1158_ _1159_ vdd gnd OAI21X1
XFILL_4__2610_ gnd vdd FILL
XFILL_0__1989_ gnd vdd FILL
XFILL_6__2956_ gnd vdd FILL
X_3675_ RDY_bF$buf7 _1675_ _1696_ vdd gnd NAND2X1
XFILL_6__2536_ gnd vdd FILL
XFILL_6__2116_ gnd vdd FILL
X_3255_ _1303_ _822_ _828_ _830_ _831_ vdd 
+ gnd
+ AOI22X1
XFILL_2__2948_ gnd vdd FILL
XFILL_0__2930_ gnd vdd FILL
XFILL_2__2528_ gnd vdd FILL
XFILL_0__2510_ gnd vdd FILL
XFILL_2__2108_ gnd vdd FILL
XFILL_0__3715_ gnd vdd FILL
XFILL_3__1812_ gnd vdd FILL
XFILL_2__2281_ gnd vdd FILL
XFILL_6__3494_ gnd vdd FILL
XFILL_6__3074_ gnd vdd FILL
XFILL_0_BUFX2_insert70 gnd vdd FILL
XFILL_0_BUFX2_insert71 gnd vdd FILL
XFILL_2__3486_ gnd vdd FILL
XFILL_0_BUFX2_insert72 gnd vdd FILL
XFILL_2__3066_ gnd vdd FILL
XFILL_0_BUFX2_insert73 gnd vdd FILL
XFILL_0_BUFX2_insert74 gnd vdd FILL
XFILL_0_BUFX2_insert75 gnd vdd FILL
XFILL_0_BUFX2_insert76 gnd vdd FILL
XFILL_0_BUFX2_insert77 gnd vdd FILL
XFILL_0_BUFX2_insert78 gnd vdd FILL
XFILL_0_BUFX2_insert79 gnd vdd FILL
X_2946_ _140_ _1150__bF$buf1 _587_ _35_ vdd gnd OAI21X1
XFILL_6__1807_ gnd vdd FILL
X_2526_ _966_ _201_ _220_ _221_ vdd gnd OAI21X1
X_2106_ _1156_ _1214_ _1215_ vdd gnd NAND2X1
XFILL_7__2870_ gnd vdd FILL
XFILL_7__2450_ gnd vdd FILL
XFILL_7__2030_ gnd vdd FILL
XFILL_3__2770_ gnd vdd FILL
XFILL_3__2350_ gnd vdd FILL
XFILL_5__2696_ gnd vdd FILL
XFILL_5__2276_ gnd vdd FILL
XFILL_1__2688_ gnd vdd FILL
XFILL_1__2268_ gnd vdd FILL
XFILL_7__3235_ gnd vdd FILL
XFILL_3__3555_ gnd vdd FILL
XFILL_3__3135_ gnd vdd FILL
XFILL_6__1980_ gnd vdd FILL
XFILL_2__1972_ gnd vdd FILL
XFILL_4__1898_ gnd vdd FILL
XFILL_0__1798_ gnd vdd FILL
XFILL_6__2765_ gnd vdd FILL
X_3484_ _1727_ _1724_ _1729_ _1730_ vdd gnd OAI21X1
XFILL_6__2345_ gnd vdd FILL
X_3064_ cli _1444_ _677_ vdd gnd NOR2X1
XFILL_2__2757_ gnd vdd FILL
XFILL_2__2337_ gnd vdd FILL
XFILL_4__3624_ gnd vdd FILL
XFILL_4__3204_ gnd vdd FILL
XFILL_0__3524_ gnd vdd FILL
XFILL_0__3104_ gnd vdd FILL
XFILL_5__1967_ gnd vdd FILL
XFILL_1__1959_ gnd vdd FILL
XFILL_7__2506_ gnd vdd FILL
XFILL_2__2090_ gnd vdd FILL
XFILL_1__2900_ gnd vdd FILL
XFILL_3__2826_ gnd vdd FILL
XFILL_3__2406_ gnd vdd FILL
X_1970_ _AXYS[1]_[1] _1047_ _1086_ vdd gnd NAND2X1
XFILL_2__3295_ gnd vdd FILL
X_2755_ _148_ _420_ _1094_ _421_ vdd gnd NAND3X1
X_2335_ _1401_ _1422_ _1441_ _1442_ vdd gnd OAI21X1
XFILL_5__2085_ gnd vdd FILL
XFILL_1__2497_ gnd vdd FILL
XFILL_7__3464_ gnd vdd FILL
XFILL_1__2077_ gnd vdd FILL
XFILL_2__1781_ gnd vdd FILL
XFILL_6__2994_ gnd vdd FILL
XFILL_6__2574_ gnd vdd FILL
X_3293_ ABL[4] _860_ _865_ vdd gnd NAND2X1
XFILL_6__2154_ gnd vdd FILL
XFILL_2__2986_ gnd vdd FILL
XFILL_2__2566_ gnd vdd FILL
XFILL_2__2146_ gnd vdd FILL
XFILL_7__1950_ gnd vdd FILL
XFILL_4__3013_ gnd vdd FILL
XFILL_3__1850_ gnd vdd FILL
XFILL_5__1776_ gnd vdd FILL
XFILL_1__1768_ gnd vdd FILL
XFILL_7__2735_ gnd vdd FILL
XFILL_3__2635_ gnd vdd FILL
XFILL_3__2215_ gnd vdd FILL
XFILL_5__3502_ gnd vdd FILL
XFILL_6__1845_ gnd vdd FILL
X_2984_ _613_ _530_ _614_ vdd gnd NOR2X1
X_2564_ _253_ _250_ _254_ vdd gnd NAND2X1
X_2144_ _1252_ _1253_ vdd gnd INVX1
XFILL_2__1837_ gnd vdd FILL
XFILL_4__2704_ gnd vdd FILL
X_3349_ _1__bF$buf6 vdd _26_ clk_bF$buf9 cld vdd 
+ gnd
+ DFFSR
XFILL_7__3273_ gnd vdd FILL
XFILL_0__2604_ gnd vdd FILL
XFILL_3__3593_ gnd vdd FILL
XFILL_3__3173_ gnd vdd FILL
XFILL_5__3099_ gnd vdd FILL
XFILL_3__1906_ gnd vdd FILL
XFILL_6__2383_ gnd vdd FILL
XFILL_2__2795_ gnd vdd FILL
XFILL_2__2375_ gnd vdd FILL
X_1835_ _953_ _951_ _960_ _961_ vdd gnd NAND3X1
XFILL_4__3662_ gnd vdd FILL
XFILL_4__3242_ gnd vdd FILL
XFILL_6__3588_ gnd vdd FILL
XFILL_6__3168_ gnd vdd FILL
XFILL_0__3562_ gnd vdd FILL
XFILL_0__3142_ gnd vdd FILL
XFILL_4_BUFX2_insert20 gnd vdd FILL
XFILL_4_BUFX2_insert21 gnd vdd FILL
XFILL_4_BUFX2_insert22 gnd vdd FILL
XFILL_4_BUFX2_insert23 gnd vdd FILL
XFILL_4_BUFX2_insert24 gnd vdd FILL
XFILL_4_BUFX2_insert25 gnd vdd FILL
XFILL_1__1997_ gnd vdd FILL
XFILL_7__2964_ gnd vdd FILL
XFILL_7__2124_ gnd vdd FILL
XFILL_3__2864_ gnd vdd FILL
XFILL_3__2444_ gnd vdd FILL
XFILL_3__2024_ gnd vdd FILL
XFILL_5__3311_ gnd vdd FILL
XBUFX2_insert80 _1319_ _1319__bF$buf3 vdd gnd BUFX2
XBUFX2_insert81 _1319_ _1319__bF$buf2 vdd gnd BUFX2
XBUFX2_insert82 _1319_ _1319__bF$buf1 vdd gnd BUFX2
XBUFX2_insert83 _1319_ _1319__bF$buf0 vdd gnd BUFX2
XFILL_1__3303_ gnd vdd FILL
XFILL_3__3649_ gnd vdd FILL
XFILL_3__3229_ gnd vdd FILL
X_2793_ _456_ _401_ RDY_bF$buf4 _457_ vdd gnd OAI21X1
X_2373_ _1475_ _1478_ _1476_ _1479_ vdd gnd NAND3X1
XFILL_4__2933_ gnd vdd FILL
XFILL_4__2513_ gnd vdd FILL
XFILL_6__2859_ gnd vdd FILL
X_3578_ _u_ALU8.BCD_ _1608_ vdd gnd INVX1
XFILL_6__2439_ gnd vdd FILL
X_3158_ _760_ ADD[5] _761_ vdd gnd OR2X2
XFILL_6__2019_ gnd vdd FILL
XFILL_7__3082_ gnd vdd FILL
XFILL_0__2833_ gnd vdd FILL
XFILL_0__2413_ gnd vdd FILL
XFILL_0__3618_ gnd vdd FILL
XFILL_6__2192_ gnd vdd FILL
XFILL_2__2184_ gnd vdd FILL
XFILL_4__3471_ gnd vdd FILL
XFILL_4__3051_ gnd vdd FILL
X_2849_ _508_ _485_ _509_ _510_ vdd gnd OAI21X1
X_2429_ _134_ _135_ vdd gnd INVX1
X_2009_ _AXYS[1]_[5] _1047_ _1121_ vdd gnd NAND2X1
XFILL_7__2353_ gnd vdd FILL
XFILL_3__2673_ gnd vdd FILL
XFILL_3__2253_ gnd vdd FILL
XFILL_5__2599_ gnd vdd FILL
XFILL_5__2179_ gnd vdd FILL
XFILL_5__3540_ gnd vdd FILL
XFILL_7__3558_ gnd vdd FILL
XFILL_5__3120_ gnd vdd FILL
XFILL_7__3138_ gnd vdd FILL
XFILL_1__3532_ gnd vdd FILL
XFILL_1__3112_ gnd vdd FILL
XFILL_3__3458_ gnd vdd FILL
XFILL_3__3038_ gnd vdd FILL
XFILL_6__1883_ gnd vdd FILL
X_2182_ _931__bF$buf2 _954_ _1291_ vdd gnd NOR2X1
XFILL_2__1875_ gnd vdd FILL
XFILL_4__2742_ gnd vdd FILL
XFILL_4__2322_ gnd vdd FILL
XFILL_6__2668_ gnd vdd FILL
X_3387_ _56_ clk_bF$buf4 IRHOLD[3] vdd gnd DFFPOSX1
XFILL_6__2248_ gnd vdd FILL
XFILL_0__2642_ gnd vdd FILL
XFILL_0__2222_ gnd vdd FILL
XFILL_2__3601_ gnd vdd FILL
XFILL_4__3527_ gnd vdd FILL
XFILL_4__3107_ gnd vdd FILL
XFILL_3__1944_ gnd vdd FILL
XFILL_0__3007_ gnd vdd FILL
XFILL_5__2811_ gnd vdd FILL
XFILL_7__2409_ gnd vdd FILL
XFILL169950x140550 gnd vdd FILL
XFILL_1__2803_ gnd vdd FILL
XFILL_3__2729_ gnd vdd FILL
XFILL_3__2309_ gnd vdd FILL
X_1873_ _940_ _998_ vdd gnd INVX1
XFILL_4__3280_ gnd vdd FILL
XFILL_0__3180_ gnd vdd FILL
XFILL_2__3198_ gnd vdd FILL
XFILL_6__1939_ gnd vdd FILL
X_2658_ _331_ _320_ _333_ vdd gnd AND2X2
X_2238_ _1229_ _1345_ _1231_ _1346_ vdd gnd NAND3X1
XFILL_7__2582_ gnd vdd FILL
XFILL_0__1913_ gnd vdd FILL
XFILL_3__2482_ gnd vdd FILL
XFILL_3__2062_ gnd vdd FILL
XFILL_3__3267_ gnd vdd FILL
XFILL_4__2971_ gnd vdd FILL
XFILL_4__2551_ gnd vdd FILL
XFILL_4__2131_ gnd vdd FILL
XFILL_6__2897_ gnd vdd FILL
XFILL_6__2477_ gnd vdd FILL
XFILL_6__2057_ gnd vdd FILL
X_3196_ _720__bF$buf2 _687_ _AXYS[1]_[3] _793_ vdd gnd OAI21X1
XFILL_0__2871_ gnd vdd FILL
XFILL_2__2889_ gnd vdd FILL
XFILL_0__2451_ gnd vdd FILL
XFILL_2__2469_ gnd vdd FILL
XFILL_0__2031_ gnd vdd FILL
XFILL_2__2049_ gnd vdd FILL
X_1929_ src_reg[0] _1035_ _1026_ _1046_ vdd gnd NAND3X1
XFILL_7__1853_ gnd vdd FILL
XFILL_3__1753_ gnd vdd FILL
XFILL_0__3656_ gnd vdd FILL
XFILL_0__3236_ gnd vdd FILL
XFILL_7__2638_ gnd vdd FILL
XFILL_5__2620_ gnd vdd FILL
XFILL_5__2200_ gnd vdd FILL
XFILL_1__2612_ gnd vdd FILL
XFILL_3__2958_ gnd vdd FILL
XFILL_3__2538_ gnd vdd FILL
XFILL_3__2118_ gnd vdd FILL
XFILL_4__1822_ gnd vdd FILL
XFILL_6__1748_ gnd vdd FILL
X_2887_ sec _539_ vdd gnd INVX1
X_2467_ _1009_ _136_ _166_ _167_ vdd gnd OAI21X1
X_2047_ IRHOLD_valid DIMUX[1] _1155_ _1156_ vdd gnd OAI21X1
XFILL_3__2291_ gnd vdd FILL
XFILL_4__2607_ gnd vdd FILL
XFILL_7__3596_ gnd vdd FILL
XFILL_0__2927_ gnd vdd FILL
XFILL_0__2507_ gnd vdd FILL
XFILL_1__3570_ gnd vdd FILL
XFILL_1__3150_ gnd vdd FILL
XFILL_3__3496_ gnd vdd FILL
XFILL_3__3076_ gnd vdd FILL
XFILL_7__1909_ gnd vdd FILL
XFILL_3__1809_ gnd vdd FILL
XFILL_4__2780_ gnd vdd FILL
XFILL_4__2360_ gnd vdd FILL
XFILL_6__2286_ gnd vdd FILL
XFILL_2__2698_ gnd vdd FILL
XFILL_0__2680_ gnd vdd FILL
XFILL_2__2278_ gnd vdd FILL
XFILL_0__2260_ gnd vdd FILL
XFILL_4__3565_ gnd vdd FILL
XFILL_4__3145_ gnd vdd FILL
XFILL_3__1982_ gnd vdd FILL
XFILL_0__3465_ gnd vdd FILL
XFILL_0__3045_ gnd vdd FILL
XFILL_7__2867_ gnd vdd FILL
XFILL_7__2027_ gnd vdd FILL
XFILL_1__2841_ gnd vdd FILL
XFILL_1__2421_ gnd vdd FILL
XFILL_1__2001_ gnd vdd FILL
XFILL_3__2767_ gnd vdd FILL
XFILL_3__2347_ gnd vdd FILL
XFILL_5__3634_ gnd vdd FILL
XFILL_5__3214_ gnd vdd FILL
XFILL_1__3626_ gnd vdd FILL
XFILL_1__3206_ gnd vdd FILL
XFILL_6__1977_ gnd vdd FILL
X_2696_ _329_ _365_ PC[3] _367_ vdd gnd OAI21X1
X_2276_ _886__bF$buf4 _968_ _1384_ vdd gnd NOR2X1
XFILL_2__1969_ gnd vdd FILL
XFILL_0__1951_ gnd vdd FILL
XFILL_2__2910_ gnd vdd FILL
XFILL_4__2836_ gnd vdd FILL
XFILL_4__2416_ gnd vdd FILL
XFILL_0__2736_ gnd vdd FILL
XFILL_0__2316_ gnd vdd FILL
XFILL_6__3703_ gnd vdd FILL
XFILL_6__2095_ gnd vdd FILL
XFILL_5__2905_ gnd vdd FILL
XFILL_2__2087_ gnd vdd FILL
X_1967_ _966_ _983_ _1083_ _1084_ vdd gnd OAI21X1
XFILL_0__3694_ gnd vdd FILL
XFILL_3__1791_ gnd vdd FILL
XFILL_0__3274_ gnd vdd FILL
XFILL_7__2256_ gnd vdd FILL
XFILL_1__2650_ gnd vdd FILL
XFILL_1__2230_ gnd vdd FILL
XFILL_3__2996_ gnd vdd FILL
XFILL_3__2576_ gnd vdd FILL
XFILL_3__2156_ gnd vdd FILL
XFILL_5__3023_ gnd vdd FILL
XFILL_1__3015_ gnd vdd FILL
XFILL_4__1860_ gnd vdd FILL
XFILL_6__1786_ gnd vdd FILL
X_2085_ CO store _1193_ _1194_ vdd gnd OAI21X1
XFILL_0__1760_ gnd vdd FILL
XFILL_2__1778_ gnd vdd FILL
XFILL_4__2645_ gnd vdd FILL
XFILL_4__2225_ gnd vdd FILL
XFILL_0__2965_ gnd vdd FILL
XFILL_0__2545_ gnd vdd FILL
XFILL_6__3512_ gnd vdd FILL
XFILL_0__2125_ gnd vdd FILL
XFILL_2__3504_ gnd vdd FILL
XFILL_7__1947_ gnd vdd FILL
XFILL_1__1921_ gnd vdd FILL
XFILL_3__1847_ gnd vdd FILL
XFILL_5__2714_ gnd vdd FILL
XFILL_1__2706_ gnd vdd FILL
X_1776_ state[5] _901_ _902_ vdd gnd NAND2X1
XFILL_4__3183_ gnd vdd FILL
XFILL_0__3083_ gnd vdd FILL
XFILL_4__1916_ gnd vdd FILL
XFILL_7__2485_ gnd vdd FILL
XFILL_0__1816_ gnd vdd FILL
X_3502_ AI[4] _1529_ _1722_ _1532_ vdd gnd OAI21X1
XFILL_3__2385_ gnd vdd FILL
XFILL_5__3672_ gnd vdd FILL
XFILL_5__3252_ gnd vdd FILL
XFILL_1__3664_ gnd vdd FILL
XFILL_1__3244_ gnd vdd FILL
XFILL_4__2874_ gnd vdd FILL
XFILL_4__2454_ gnd vdd FILL
XFILL_4__2034_ gnd vdd FILL
X_3099_ _702_ _707_ _708_ _709_ vdd gnd AOI21X1
XFILL_0__2774_ gnd vdd FILL
XFILL_0__2354_ gnd vdd FILL
XFILL_2__3313_ gnd vdd FILL
XFILL_4__3659_ gnd vdd FILL
XFILL_7__1756_ gnd vdd FILL
XFILL_4__3239_ gnd vdd FILL
XFILL_0__3559_ gnd vdd FILL
XFILL_0__3139_ gnd vdd FILL
XFILL_5__2943_ gnd vdd FILL
XFILL_5__2523_ gnd vdd FILL
XFILL_5__2103_ gnd vdd FILL
XFILL_1__2935_ gnd vdd FILL
XFILL_1__2515_ gnd vdd FILL
XFILL_5__3308_ gnd vdd FILL
X_3311_ _291_ _869_ _874_ _113_ vdd gnd OAI21X1
XFILL_3__2194_ gnd vdd FILL
XFILL_5__3481_ gnd vdd FILL
XFILL_5__3061_ gnd vdd FILL
XFILL_1__3473_ gnd vdd FILL
XFILL_1__3053_ gnd vdd FILL
XFILL_4__2683_ gnd vdd FILL
XFILL_4__2263_ gnd vdd FILL
XFILL_6__2189_ gnd vdd FILL
XFILL_0__2583_ gnd vdd FILL
XFILL_6__3550_ gnd vdd FILL
XFILL_0__2163_ gnd vdd FILL
XFILL_6__3130_ gnd vdd FILL
XFILL_2__3542_ gnd vdd FILL
XFILL_2__3122_ gnd vdd FILL
XFILL_7__1985_ gnd vdd FILL
XFILL_4__3468_ gnd vdd FILL
XFILL_4__3048_ gnd vdd FILL
XFILL_3__1885_ gnd vdd FILL
XFILL_5__2752_ gnd vdd FILL
XFILL_5__2332_ gnd vdd FILL
XFILL_1__2744_ gnd vdd FILL
XFILL_1__2324_ gnd vdd FILL
XFILL_3__3611_ gnd vdd FILL
XFILL_5__3537_ gnd vdd FILL
XFILL_5__3117_ gnd vdd FILL
XFILL_1__3529_ gnd vdd FILL
XFILL_1__3109_ gnd vdd FILL
XFILL_4__1954_ gnd vdd FILL
X_2599_ _283_ _284_ vdd gnd INVX1
X_2179_ _1287_ _1285_ _1288_ vdd gnd NAND2X1
XFILL_0__1854_ gnd vdd FILL
XFILL_6__2821_ gnd vdd FILL
X_3540_ alu_op[2] BI[1] _1569_ _1570_ vdd gnd AOI21X1
XFILL_6__2401_ gnd vdd FILL
X_3120_ HC _726_ _727_ vdd gnd NAND2X1
XFILL169950x64950 gnd vdd FILL
XFILL_2__2813_ gnd vdd FILL
XFILL_4__2739_ gnd vdd FILL
XFILL_4__2319_ gnd vdd FILL
XFILL_5__3290_ gnd vdd FILL
XFILL_0__2639_ gnd vdd FILL
XFILL_6__3606_ gnd vdd FILL
XFILL_0__2219_ gnd vdd FILL
XFILL_1__3282_ gnd vdd FILL
XFILL_4__2492_ gnd vdd FILL
XFILL_4__2072_ gnd vdd FILL
XFILL_5__2808_ gnd vdd FILL
XFILL_0__2392_ gnd vdd FILL
XFILL_4__3697_ gnd vdd FILL
XFILL_4__3277_ gnd vdd FILL
X_2811_ _473_ _197_ _148_ _474_ vdd gnd OAI21X1
XFILL_0__3597_ gnd vdd FILL
XFILL_0__3177_ gnd vdd FILL
XFILL_7__2999_ gnd vdd FILL
XFILL_5__2981_ gnd vdd FILL
XFILL_5__2561_ gnd vdd FILL
XFILL_7__2579_ gnd vdd FILL
XFILL_7__2159_ gnd vdd FILL
XFILL_5__2141_ gnd vdd FILL
XFILL_1__2973_ gnd vdd FILL
XFILL_1__2553_ gnd vdd FILL
XFILL_1__2133_ gnd vdd FILL
XFILL_3__2899_ gnd vdd FILL
XFILL_3__2479_ gnd vdd FILL
XFILL_3__2059_ gnd vdd FILL
XFILL_3__3000_ gnd vdd FILL
XFILL_4__1763_ gnd vdd FILL
XFILL_6__2630_ gnd vdd FILL
XFILL_6__2210_ gnd vdd FILL
XFILL_2__2622_ gnd vdd FILL
XFILL_2__2202_ gnd vdd FILL
XFILL_4__2968_ gnd vdd FILL
XFILL_4__2548_ gnd vdd FILL
XFILL_4__2128_ gnd vdd FILL
XFILL_0__2868_ gnd vdd FILL
XFILL_0__2448_ gnd vdd FILL
XFILL_0__2028_ gnd vdd FILL
XFILL_1__3091_ gnd vdd FILL
XFILL_5__1832_ gnd vdd FILL
XFILL_1__1824_ gnd vdd FILL
XFILL_5__2617_ gnd vdd FILL
XFILL_1__2609_ gnd vdd FILL
XFILL_2__3580_ gnd vdd FILL
XFILL_2__3160_ gnd vdd FILL
XFILL_4__3086_ gnd vdd FILL
XFILL_6__1901_ gnd vdd FILL
X_2620_ _198_ ADD[6] _1135_ _301_ vdd gnd AOI21X1
X_2200_ _1028_ _1309_ vdd gnd INVX1
XFILL_4__1819_ gnd vdd FILL
XFILL_5__2790_ gnd vdd FILL
XFILL_5__2370_ gnd vdd FILL
XFILL_7__2388_ gnd vdd FILL
X_3405_ _1__bF$buf0 vdd _74_ clk_bF$buf7 _AXYS[0]_[5] vdd 
+ gnd
+ DFFSR
XFILL_1__2782_ gnd vdd FILL
XFILL_1__2362_ gnd vdd FILL
XFILL_3__2288_ gnd vdd FILL
XFILL_5__3575_ gnd vdd FILL
XFILL_5__3155_ gnd vdd FILL
XFILL_1__3567_ gnd vdd FILL
XFILL_1__3147_ gnd vdd FILL
XFILL_4__1992_ gnd vdd FILL
XFILL_0__1892_ gnd vdd FILL
XFILL_2__2851_ gnd vdd FILL
XFILL_2__2431_ gnd vdd FILL
XFILL_2__2011_ gnd vdd FILL
XFILL_4__2777_ gnd vdd FILL
XFILL_4__2357_ gnd vdd FILL
XFILL_0__2677_ gnd vdd FILL
XFILL_6__3644_ gnd vdd FILL
XFILL_0__2257_ gnd vdd FILL
XFILL_6__3224_ gnd vdd FILL
XFILL_2__3636_ gnd vdd FILL
XFILL_2__3216_ gnd vdd FILL
XFILL_7__2600_ gnd vdd FILL
XFILL_3__1979_ gnd vdd FILL
XFILL_3__2920_ gnd vdd FILL
XFILL_3__2500_ gnd vdd FILL
XFILL_5__2846_ gnd vdd FILL
XFILL_5__2426_ gnd vdd FILL
XFILL_5__2006_ gnd vdd FILL
XFILL_1__2838_ gnd vdd FILL
XFILL_1__2418_ gnd vdd FILL
XFILL_3__3705_ gnd vdd FILL
XFILL_0__1948_ gnd vdd FILL
XFILL_6__2915_ gnd vdd FILL
X_3634_ _1662_ _1663_ _1664_ vdd gnd NAND2X1
X_3214_ _754_ _798_ _802_ _88_ vdd gnd AOI21X1
XFILL_1__2591_ gnd vdd FILL
XFILL_1__2171_ gnd vdd FILL
XFILL_3__2097_ gnd vdd FILL
XFILL_2__2907_ gnd vdd FILL
XFILL_2__2660_ gnd vdd FILL
XFILL_2__2240_ gnd vdd FILL
XFILL_4__2586_ gnd vdd FILL
XFILL_4__2166_ gnd vdd FILL
XFILL_0__2486_ gnd vdd FILL
XFILL_6__3453_ gnd vdd FILL
XFILL_0__2066_ gnd vdd FILL
XFILL_6__3033_ gnd vdd FILL
XFILL_2__3025_ gnd vdd FILL
XFILL_7__1888_ gnd vdd FILL
XFILL_5__1870_ gnd vdd FILL
X_2905_ _1178_ _551_ _552_ vdd gnd NOR2X1
XFILL_1__1862_ gnd vdd FILL
XFILL_3__1788_ gnd vdd FILL
XFILL_5__2655_ gnd vdd FILL
XFILL_5__2235_ gnd vdd FILL
XFILL_1__2647_ gnd vdd FILL
XFILL_7__3614_ gnd vdd FILL
XFILL_1__2227_ gnd vdd FILL
XFILL_3__3514_ gnd vdd FILL
XFILL_2__1931_ gnd vdd FILL
XFILL_4__1857_ gnd vdd FILL
XFILL_0__1757_ gnd vdd FILL
XFILL_6__2724_ gnd vdd FILL
X_3443_ _1__bF$buf4 vdd _111_ clk_bF$buf2 ABH[2] vdd 
+ gnd
+ DFFSR
XFILL_6__2304_ gnd vdd FILL
X_3023_ _646_ _647_ vdd gnd INVX2
XFILL_2__2716_ gnd vdd FILL
XFILL_5__3193_ gnd vdd FILL
XFILL_6__3509_ gnd vdd FILL
XFILL_1__3185_ gnd vdd FILL
XFILL_5__1926_ gnd vdd FILL
XFILL_1__1918_ gnd vdd FILL
XFILL_4__2395_ gnd vdd FILL
XFILL_0__2295_ gnd vdd FILL
XFILL_6__3262_ gnd vdd FILL
XFILL_2__3674_ gnd vdd FILL
XFILL_2__3254_ gnd vdd FILL
X_2714_ _352_ _353_ _1011_ _384_ vdd gnd AOI21X1
XFILL_5__2884_ gnd vdd FILL
XFILL_5__2464_ gnd vdd FILL
XFILL_5__2044_ gnd vdd FILL
XFILL_1__2876_ gnd vdd FILL
XFILL_1__2456_ gnd vdd FILL
XFILL_1__2036_ gnd vdd FILL
XFILL_7__3003_ gnd vdd FILL
XFILL_5__3669_ gnd vdd FILL
XFILL_5__3249_ gnd vdd FILL
XFILL_4_CLKBUF1_insert26 gnd vdd FILL
XFILL_4_CLKBUF1_insert27 gnd vdd FILL
XFILL_4_CLKBUF1_insert28 gnd vdd FILL
XFILL_4_CLKBUF1_insert29 gnd vdd FILL
XFILL_0__1986_ gnd vdd FILL
XFILL_6__2953_ gnd vdd FILL
X_3672_ _1714__bF$buf0 _1678_ _1694_ _1522_ vdd gnd OAI21X1
XFILL_6__2533_ gnd vdd FILL
X_3252_ _817_ _827_ _828_ vdd gnd NOR2X1
XFILL_6__2113_ gnd vdd FILL
XFILL_2__2945_ gnd vdd FILL
XFILL_2__2525_ gnd vdd FILL
XFILL_2__2105_ gnd vdd FILL
XFILL_0__3712_ gnd vdd FILL
XFILL_6__3491_ gnd vdd FILL
XFILL_6__3071_ gnd vdd FILL
XFILL_0_BUFX2_insert40 gnd vdd FILL
XFILL_0_BUFX2_insert41 gnd vdd FILL
XFILL_2__3483_ gnd vdd FILL
XFILL_0_BUFX2_insert42 gnd vdd FILL
XFILL_2__3063_ gnd vdd FILL
XFILL_0_BUFX2_insert43 gnd vdd FILL
XFILL_0_BUFX2_insert44 gnd vdd FILL
XFILL_0_BUFX2_insert45 gnd vdd FILL
XFILL_0_BUFX2_insert46 gnd vdd FILL
XFILL_0_BUFX2_insert47 gnd vdd FILL
XFILL_0_BUFX2_insert48 gnd vdd FILL
XFILL_0_BUFX2_insert49 gnd vdd FILL
XFILL_6__1804_ gnd vdd FILL
X_2943_ _566_ _585_ _586_ vdd gnd AND2X2
X_2523_ _203_ _217_ _218_ vdd gnd NAND2X1
X_2103_ _1168_ _1010_ _1211_ _1212_ vdd gnd AOI21X1
XFILL_5__2693_ gnd vdd FILL
XFILL_5__2273_ gnd vdd FILL
X_3308_ _1741_[11] _869_ _873_ vdd gnd NAND2X1
XFILL_1__2685_ gnd vdd FILL
XFILL_1__2265_ gnd vdd FILL
XFILL_7__3232_ gnd vdd FILL
XFILL_3__3552_ gnd vdd FILL
XFILL_3__3132_ gnd vdd FILL
XFILL_5__3478_ gnd vdd FILL
XFILL_5__3058_ gnd vdd FILL
XFILL_4__1895_ gnd vdd FILL
XFILL_0__1795_ gnd vdd FILL
XFILL_6__2762_ gnd vdd FILL
X_3481_ BI[7] alu_op[2] _1726_ _1727_ vdd gnd AOI21X1
XFILL_6__2342_ gnd vdd FILL
X_3061_ _529_ _355_ _674_ _675_ vdd gnd OAI21X1
XFILL_2__2754_ gnd vdd FILL
XFILL_2__2334_ gnd vdd FILL
XFILL_4__3621_ gnd vdd FILL
XFILL_4__3201_ gnd vdd FILL
XFILL_6__3547_ gnd vdd FILL
XFILL_6__3127_ gnd vdd FILL
XFILL_2__3539_ gnd vdd FILL
XFILL_0__3521_ gnd vdd FILL
XFILL_2__3119_ gnd vdd FILL
XFILL_0__3101_ gnd vdd FILL
XFILL_5__1964_ gnd vdd FILL
XFILL_1__1956_ gnd vdd FILL
XFILL_7__2503_ gnd vdd FILL
XFILL_3__2823_ gnd vdd FILL
XFILL_3__2403_ gnd vdd FILL
XFILL_5__2749_ gnd vdd FILL
XFILL_5__2329_ gnd vdd FILL
XFILL_7__3708_ gnd vdd FILL
XFILL_2__3292_ gnd vdd FILL
XFILL_3__3608_ gnd vdd FILL
X_2752_ _312_ _365_ _418_ vdd gnd NOR2X1
X_2332_ _886__bF$buf2 _1432_ _1438_ _1439_ vdd gnd OAI21X1
XFILL_5__2082_ gnd vdd FILL
XFILL_6__2818_ gnd vdd FILL
X_3537_ AI[1] _1566_ _1722_ _1567_ vdd gnd OAI21X1
X_3117_ _AXYS[0]_[0] _722_ _725_ vdd gnd NAND2X1
XFILL_1__2494_ gnd vdd FILL
XFILL_7__3461_ gnd vdd FILL
XFILL_1__2074_ gnd vdd FILL
XFILL_7__3041_ gnd vdd FILL
XFILL_5__3287_ gnd vdd FILL
XFILL_1__3699_ gnd vdd FILL
XFILL_1__3279_ gnd vdd FILL
XFILL_6__2991_ gnd vdd FILL
XFILL_6__2571_ gnd vdd FILL
X_3290_ _860_ _236_ _863_ _103_ vdd gnd OAI21X1
XFILL_6__2151_ gnd vdd FILL
XFILL_2__2983_ gnd vdd FILL
XFILL_2__2563_ gnd vdd FILL
XFILL_2__2143_ gnd vdd FILL
XFILL_4__2489_ gnd vdd FILL
XFILL_4__2069_ gnd vdd FILL
XFILL_4__3010_ gnd vdd FILL
XFILL_0__2389_ gnd vdd FILL
XFILL_5__1773_ gnd vdd FILL
X_2808_ _276_ _365_ _471_ vdd gnd NAND2X1
XFILL_1__1765_ gnd vdd FILL
XFILL_7__2732_ gnd vdd FILL
XFILL_3__2632_ gnd vdd FILL
XFILL_3__2212_ gnd vdd FILL
XFILL_5__2978_ gnd vdd FILL
XFILL_5__2558_ gnd vdd FILL
XFILL_5__2138_ gnd vdd FILL
XFILL_7__3517_ gnd vdd FILL
XFILL_6__1842_ gnd vdd FILL
X_2981_ _1172_ _610_ _579_ _611_ vdd gnd OAI21X1
X_2561_ ABL[5] _251_ vdd gnd INVX1
X_2141_ _1249_ _1250_ vdd gnd INVX1
XFILL_2__1834_ gnd vdd FILL
XFILL_4__2701_ gnd vdd FILL
XFILL_6__2627_ gnd vdd FILL
X_3346_ _1__bF$buf3 vdd _23_ clk_bF$buf4 php vdd 
+ gnd
+ DFFSR
XFILL_6__2207_ gnd vdd FILL
XFILL_7__3270_ gnd vdd FILL
XFILL_0__2601_ gnd vdd FILL
XFILL_2__2619_ gnd vdd FILL
XFILL_3__3590_ gnd vdd FILL
XFILL_3__3170_ gnd vdd FILL
XFILL_5__3096_ gnd vdd FILL
XFILL_1__3088_ gnd vdd FILL
XFILL_3__1903_ gnd vdd FILL
XFILL_5__1829_ gnd vdd FILL
XFILL_6__2380_ gnd vdd FILL
XFILL_2__2792_ gnd vdd FILL
XFILL_2__2372_ gnd vdd FILL
XFILL_4__2298_ gnd vdd FILL
X_1832_ _937_ _957_ _958_ vdd gnd NAND2X1
XFILL_6__3585_ gnd vdd FILL
XFILL_0__2198_ gnd vdd FILL
XFILL_6__3165_ gnd vdd FILL
XFILL_2__3577_ gnd vdd FILL
XFILL_2__3157_ gnd vdd FILL
X_2617_ _272_ DIMUX[5] _298_ _299_ vdd gnd AOI21X1
XFILL_1__1994_ gnd vdd FILL
XFILL_7__2961_ gnd vdd FILL
XFILL_7__2541_ gnd vdd FILL
XFILL_7__2121_ gnd vdd FILL
XFILL_3__2861_ gnd vdd FILL
XFILL_3__2441_ gnd vdd FILL
XFILL_3__2021_ gnd vdd FILL
XFILL_5__2787_ gnd vdd FILL
XFILL_5__2367_ gnd vdd FILL
XFILL_1__2779_ gnd vdd FILL
XFILL_1__2359_ gnd vdd FILL
XBUFX2_insert50 _931_ _931__bF$buf4 vdd gnd BUFX2
XBUFX2_insert51 _931_ _931__bF$buf3 vdd gnd BUFX2
XBUFX2_insert52 _931_ _931__bF$buf2 vdd gnd BUFX2
XBUFX2_insert53 _931_ _931__bF$buf1 vdd gnd BUFX2
XBUFX2_insert54 _931_ _931__bF$buf0 vdd gnd BUFX2
XFILL_1__3300_ gnd vdd FILL
XBUFX2_insert55 _1150_ _1150__bF$buf4 vdd gnd BUFX2
XBUFX2_insert56 _1150_ _1150__bF$buf3 vdd gnd BUFX2
XBUFX2_insert57 _1150_ _1150__bF$buf2 vdd gnd BUFX2
XBUFX2_insert58 _1150_ _1150__bF$buf1 vdd gnd BUFX2
XFILL_3__3646_ gnd vdd FILL
XBUFX2_insert59 _1150_ _1150__bF$buf0 vdd gnd BUFX2
XFILL_3__3226_ gnd vdd FILL
X_2790_ PC[11] _365_ _454_ vdd gnd NAND2X1
X_2370_ _1150__bF$buf3 _1370_ _1351_ _1476_ vdd gnd NAND3X1
XFILL_4__1989_ gnd vdd FILL
XFILL_4__2930_ gnd vdd FILL
XFILL_4__2510_ gnd vdd FILL
XFILL_0__1889_ gnd vdd FILL
XFILL_6__2856_ gnd vdd FILL
X_3575_ _1602_ _1605_ vdd gnd INVX1
XFILL_6__2436_ gnd vdd FILL
XFILL_6__2016_ gnd vdd FILL
X_3155_ _722_ _757_ _758_ _73_ vdd gnd OAI21X1
XFILL_2__2848_ gnd vdd FILL
XFILL_0__2830_ gnd vdd FILL
XFILL_2__2428_ gnd vdd FILL
XFILL_0__2410_ gnd vdd FILL
XFILL_2__2008_ gnd vdd FILL
XFILL_4__3715_ gnd vdd FILL
XFILL_0__3615_ gnd vdd FILL
XFILL_2__2181_ gnd vdd FILL
XFILL_3__2917_ gnd vdd FILL
X_2846_ _500_ _506_ _466_ _507_ vdd gnd NAND3X1
X_2426_ _132_ _129_ _131_ alu_op[1] vdd gnd OAI21X1
X_2006_ _888_ _983_ _1118_ _1119_ vdd gnd OAI21X1
XFILL_7__2770_ gnd vdd FILL
XFILL_7__2350_ gnd vdd FILL
XFILL_3__2670_ gnd vdd FILL
XFILL_3__2250_ gnd vdd FILL
XFILL_5__2596_ gnd vdd FILL
XFILL_5__2176_ gnd vdd FILL
XFILL_1__2588_ gnd vdd FILL
XFILL_1__2168_ gnd vdd FILL
XFILL_7__3135_ gnd vdd FILL
XFILL_3__3455_ gnd vdd FILL
XFILL_3__3035_ gnd vdd FILL
XFILL_6__1880_ gnd vdd FILL
XFILL_2__1872_ gnd vdd FILL
XFILL_4__1798_ gnd vdd FILL
XFILL_6__2665_ gnd vdd FILL
X_3384_ _53_ clk_bF$buf4 IRHOLD[0] vdd gnd DFFPOSX1
XFILL_6__2245_ gnd vdd FILL
XFILL_2__2657_ gnd vdd FILL
XFILL_2__2237_ gnd vdd FILL
XFILL_4__3524_ gnd vdd FILL
XFILL_4__3104_ gnd vdd FILL
XFILL_3__1941_ gnd vdd FILL
XFILL_0__3004_ gnd vdd FILL
XFILL_5__1867_ gnd vdd FILL
XFILL_1__1859_ gnd vdd FILL
XFILL_7__2406_ gnd vdd FILL
XFILL_1__2800_ gnd vdd FILL
XFILL_3__2726_ gnd vdd FILL
XFILL_3__2306_ gnd vdd FILL
X_1870_ _987_ _994_ _991_ _995_ vdd gnd NAND3X1
XFILL_2__3195_ gnd vdd FILL
XFILL_6__1936_ gnd vdd FILL
X_2655_ _326_ _328_ _329_ _330_ vdd gnd AOI21X1
X_2235_ _1342_ _1343_ vdd gnd INVX1
XFILL_3_CLKBUF1_insert30 gnd vdd FILL
XFILL_3_CLKBUF1_insert31 gnd vdd FILL
XFILL_3_CLKBUF1_insert32 gnd vdd FILL
XFILL_3_CLKBUF1_insert33 gnd vdd FILL
XFILL_3_CLKBUF1_insert34 gnd vdd FILL
XFILL_3_CLKBUF1_insert35 gnd vdd FILL
XFILL_3_CLKBUF1_insert36 gnd vdd FILL
XFILL_2__1928_ gnd vdd FILL
XFILL_0__1910_ gnd vdd FILL
XFILL_1__2397_ gnd vdd FILL
XFILL_3__3264_ gnd vdd FILL
XFILL_6__2894_ gnd vdd FILL
XFILL_6__2474_ gnd vdd FILL
X_3193_ _737_ _789_ _791_ _78_ vdd gnd OAI21X1
XFILL_6__2054_ gnd vdd FILL
XFILL_2__2886_ gnd vdd FILL
XFILL_2__2466_ gnd vdd FILL
XFILL_2__2046_ gnd vdd FILL
X_1926_ _1042_ _1027__bF$buf0 _1043_ vdd gnd NOR2X1
XFILL_7__1850_ gnd vdd FILL
XFILL_6__3259_ gnd vdd FILL
XFILL_3__1750_ gnd vdd FILL
XFILL_0__3653_ gnd vdd FILL
XFILL_0__3233_ gnd vdd FILL
XFILL_7__2635_ gnd vdd FILL
XFILL_3__2955_ gnd vdd FILL
XFILL_3__2535_ gnd vdd FILL
XFILL_3__2115_ gnd vdd FILL
XFILL_6__1745_ gnd vdd FILL
X_2884_ _1348_ _1330_ _537_ vdd gnd NAND2X1
X_2464_ D _164_ vdd gnd INVX1
X_2044_ NMI_edge _1153_ vdd gnd INVX1
XFILL_4__2604_ gnd vdd FILL
X_3669_ _1629_ _1626_ RDY_bF$buf7 _1693_ vdd gnd OAI21X1
X_3249_ _1200_ _824_ _825_ vdd gnd AND2X2
XFILL_7__3593_ gnd vdd FILL
XFILL_0__2924_ gnd vdd FILL
XFILL_0__2504_ gnd vdd FILL
XFILL_3__3493_ gnd vdd FILL
XFILL_3__3073_ gnd vdd FILL
XFILL_7__1906_ gnd vdd FILL
XFILL_0__3709_ gnd vdd FILL
XFILL_3__1806_ gnd vdd FILL
XFILL_6__2283_ gnd vdd FILL
XFILL_2__2695_ gnd vdd FILL
XFILL_2__2275_ gnd vdd FILL
XFILL_4__3562_ gnd vdd FILL
XFILL_4__3142_ gnd vdd FILL
XFILL_6__3488_ gnd vdd FILL
XFILL_6__3068_ gnd vdd FILL
XFILL_0__3462_ gnd vdd FILL
XFILL_0__3042_ gnd vdd FILL
XFILL_1__1897_ gnd vdd FILL
XFILL_7__2864_ gnd vdd FILL
XFILL_7__2024_ gnd vdd FILL
XFILL_3__2764_ gnd vdd FILL
XFILL_3__2344_ gnd vdd FILL
XFILL_5__3631_ gnd vdd FILL
XFILL_5__3211_ gnd vdd FILL
XFILL_1__3623_ gnd vdd FILL
XFILL_1__3203_ gnd vdd FILL
XFILL_3__3549_ gnd vdd FILL
XFILL_3__3129_ gnd vdd FILL
XFILL_6__1974_ gnd vdd FILL
X_2693_ _1027__bF$buf4 _148_ _197_ _364_ vdd gnd NAND3X1
X_2273_ _1380_ _1373_ _1381_ vdd gnd OR2X2
XFILL_2__1966_ gnd vdd FILL
XFILL_4__2833_ gnd vdd FILL
XFILL_4__2413_ gnd vdd FILL
XFILL_6__2759_ gnd vdd FILL
X_3478_ _1723_ _1721_ _1715_ _1724_ vdd gnd OAI21X1
XFILL_6__2339_ gnd vdd FILL
X_3058_ _1027__bF$buf2 _671_ _657_ _672_ vdd gnd OAI21X1
XFILL_0__2733_ gnd vdd FILL
XFILL_0__2313_ gnd vdd FILL
XFILL_6__3700_ gnd vdd FILL
XFILL_4__3618_ gnd vdd FILL
XFILL_0__3518_ gnd vdd FILL
XFILL_6__2092_ gnd vdd FILL
XFILL_5__2902_ gnd vdd FILL
XFILL_2__2084_ gnd vdd FILL
X_1964_ _1080_ _959_ _1081_ vdd gnd NOR2X1
XFILL_6__3297_ gnd vdd FILL
XFILL_0__3691_ gnd vdd FILL
XFILL_2__3289_ gnd vdd FILL
XFILL_0__3271_ gnd vdd FILL
X_2749_ _413_ _414_ _374_ _415_ vdd gnd AOI21X1
X_2329_ RDY_bF$buf8 _1233_ _1435_ _1436_ vdd gnd OAI21X1
XFILL_7__2253_ gnd vdd FILL
XFILL_3__2993_ gnd vdd FILL
XFILL_3__2573_ gnd vdd FILL
XFILL_3__2153_ gnd vdd FILL
XFILL_5__2499_ gnd vdd FILL
XFILL_5__2079_ gnd vdd FILL
XFILL_7__3458_ gnd vdd FILL
XFILL_5__3020_ gnd vdd FILL
XFILL_7__3038_ gnd vdd FILL
XFILL_1__3012_ gnd vdd FILL
XFILL_6__1783_ gnd vdd FILL
X_2082_ _1175_ _1190_ _1191_ vdd gnd NOR2X1
XFILL_5_BUFX2_insert60 gnd vdd FILL
XFILL_5_BUFX2_insert61 gnd vdd FILL
XFILL_5_BUFX2_insert62 gnd vdd FILL
XFILL_5_BUFX2_insert63 gnd vdd FILL
XFILL_5_BUFX2_insert64 gnd vdd FILL
XFILL_2__1775_ gnd vdd FILL
XFILL_5_BUFX2_insert65 gnd vdd FILL
XFILL_5_BUFX2_insert66 gnd vdd FILL
XFILL_5_BUFX2_insert67 gnd vdd FILL
XFILL_5_BUFX2_insert68 gnd vdd FILL
XFILL_5_BUFX2_insert69 gnd vdd FILL
XFILL_4__2642_ gnd vdd FILL
XFILL_4__2222_ gnd vdd FILL
XFILL_6__2988_ gnd vdd FILL
XFILL_6__2568_ gnd vdd FILL
X_3287_ ABL[1] _860_ _862_ vdd gnd NAND2X1
XFILL_6__2148_ gnd vdd FILL
XFILL_0__2962_ gnd vdd FILL
XFILL_0__2542_ gnd vdd FILL
XFILL_0__2122_ gnd vdd FILL
XFILL_2__3501_ gnd vdd FILL
XFILL_4__3007_ gnd vdd FILL
XFILL_3__1844_ gnd vdd FILL
XFILL_5__2711_ gnd vdd FILL
XFILL_7__2729_ gnd vdd FILL
XFILL_7__2309_ gnd vdd FILL
XFILL_1__2703_ gnd vdd FILL
XFILL_3__2629_ gnd vdd FILL
XFILL_3__2209_ gnd vdd FILL
X_1773_ state[1] state[0] _899_ vdd gnd NAND2X1
XFILL_4__3180_ gnd vdd FILL
XFILL_0__3080_ gnd vdd FILL
XFILL_2__3098_ gnd vdd FILL
XFILL_4__1913_ gnd vdd FILL
XFILL_6__1839_ gnd vdd FILL
X_2978_ _1149__bF$buf1 _607_ _608_ _46_ vdd gnd OAI21X1
X_2558_ _1116_ _195_ _248_ _249_ vdd gnd AOI21X1
X_2138_ _1231_ _1230_ _1246_ _1247_ vdd gnd AOI21X1
XFILL_7__2482_ gnd vdd FILL
XFILL_0__1813_ gnd vdd FILL
XFILL_3__2382_ gnd vdd FILL
XFILL_7__3267_ gnd vdd FILL
XFILL_1__3661_ gnd vdd FILL
XFILL_1__3241_ gnd vdd FILL
XFILL_3__3587_ gnd vdd FILL
XFILL_3__3167_ gnd vdd FILL
XFILL_4__2871_ gnd vdd FILL
XFILL_4__2451_ gnd vdd FILL
XFILL_4__2031_ gnd vdd FILL
XFILL_6__2797_ gnd vdd FILL
XFILL_6__2377_ gnd vdd FILL
X_3096_ plp clc _706_ vdd gnd NOR2X1
XFILL_2__2789_ gnd vdd FILL
XFILL_0__2771_ gnd vdd FILL
XFILL_2__2369_ gnd vdd FILL
XFILL_0__2351_ gnd vdd FILL
XFILL_2__3310_ gnd vdd FILL
X_1829_ _954_ _955_ vdd gnd INVX1
XFILL_7__1753_ gnd vdd FILL
XFILL_4__3656_ gnd vdd FILL
XFILL_4__3236_ gnd vdd FILL
XFILL_0__3556_ gnd vdd FILL
XFILL_0__3136_ gnd vdd FILL
XFILL_5__1999_ gnd vdd FILL
XFILL_5__2940_ gnd vdd FILL
XFILL_5__2520_ gnd vdd FILL
XFILL_7__2538_ gnd vdd FILL
XFILL_5__2100_ gnd vdd FILL
XFILL_1__2932_ gnd vdd FILL
XFILL_1__2512_ gnd vdd FILL
XFILL_3__2858_ gnd vdd FILL
XFILL_3__2438_ gnd vdd FILL
XFILL_3__2018_ gnd vdd FILL
XFILL_5__3305_ gnd vdd FILL
X_2787_ _285_ _352_ _450_ _451_ vdd gnd OAI21X1
X_2367_ _1472_ _1466_ _1473_ vdd gnd NAND2X1
XFILL_3__2191_ gnd vdd FILL
XFILL_4__2927_ gnd vdd FILL
XFILL_4__2507_ gnd vdd FILL
XFILL_7__3496_ gnd vdd FILL
XFILL_0__2827_ gnd vdd FILL
XFILL_0__2407_ gnd vdd FILL
XFILL_1__3470_ gnd vdd FILL
XFILL_1__3050_ gnd vdd FILL
XFILL_7__1809_ gnd vdd FILL
XFILL_4__2680_ gnd vdd FILL
XFILL_4__2260_ gnd vdd FILL
XFILL_6__2186_ gnd vdd FILL
XFILL_2__2598_ gnd vdd FILL
XFILL_0__2580_ gnd vdd FILL
XFILL_0__2160_ gnd vdd FILL
XFILL_2__2178_ gnd vdd FILL
XFILL_7__1982_ gnd vdd FILL
XFILL_4__3465_ gnd vdd FILL
XFILL_4__3045_ gnd vdd FILL
XFILL_3__1882_ gnd vdd FILL
XFILL_7__2767_ gnd vdd FILL
XFILL_1__2741_ gnd vdd FILL
XFILL_1__2321_ gnd vdd FILL
XFILL_3__2667_ gnd vdd FILL
XFILL_3__2247_ gnd vdd FILL
XFILL_5__3534_ gnd vdd FILL
XFILL_5__3114_ gnd vdd FILL
XFILL_1__3526_ gnd vdd FILL
XFILL_1__3106_ gnd vdd FILL
XFILL_4__1951_ gnd vdd FILL
XFILL_6__1877_ gnd vdd FILL
X_2596_ ADD[2] _198_ _272_ DIMUX[2] _281_ vdd 
+ gnd
+ AOI22X1
X_2176_ _886__bF$buf1 _1201_ _1284_ _1283_ _1285_ vdd 
+ gnd
+ AOI22X1
XFILL_2__1869_ gnd vdd FILL
XFILL_0__1851_ gnd vdd FILL
XFILL_2__2810_ gnd vdd FILL
XFILL_4__2736_ gnd vdd FILL
XFILL_4__2316_ gnd vdd FILL
XFILL_0__2636_ gnd vdd FILL
XFILL_6__3603_ gnd vdd FILL
XFILL_0__2216_ gnd vdd FILL
XFILL_3__1938_ gnd vdd FILL
XFILL_5__2805_ gnd vdd FILL
X_1867_ _989_ _992_ vdd gnd INVX1
XFILL_4__3694_ gnd vdd FILL
XFILL_4__3274_ gnd vdd FILL
XFILL_0__3594_ gnd vdd FILL
XFILL_0__3174_ gnd vdd FILL
XFILL_7__2996_ gnd vdd FILL
XFILL_7__2156_ gnd vdd FILL
XFILL_0__1907_ gnd vdd FILL
XFILL_1__2970_ gnd vdd FILL
XFILL_1__2550_ gnd vdd FILL
XFILL_1__2130_ gnd vdd FILL
XFILL_3__2896_ gnd vdd FILL
XFILL_3__2476_ gnd vdd FILL
XFILL_3__2056_ gnd vdd FILL
XFILL_4__1760_ gnd vdd FILL
XFILL_4__2965_ gnd vdd FILL
XFILL_4__2545_ gnd vdd FILL
XFILL_4__2125_ gnd vdd FILL
XFILL_0__2865_ gnd vdd FILL
XFILL_0__2445_ gnd vdd FILL
XFILL_0__2025_ gnd vdd FILL
XFILL_7__1847_ gnd vdd FILL
XFILL_1__1821_ gnd vdd FILL
XFILL_3__1747_ gnd vdd FILL
XFILL_5__2614_ gnd vdd FILL
XFILL_1__2606_ gnd vdd FILL
XFILL_4__3083_ gnd vdd FILL
XFILL_4__1816_ gnd vdd FILL
XFILL_7__2385_ gnd vdd FILL
X_3402_ _1__bF$buf8 vdd _71_ clk_bF$buf8 _AXYS[0]_[2] vdd 
+ gnd
+ DFFSR
XFILL_3__2285_ gnd vdd FILL
XFILL_5__3572_ gnd vdd FILL
XFILL_5__3152_ gnd vdd FILL
XFILL_1__3564_ gnd vdd FILL
XFILL_1__3144_ gnd vdd FILL
XFILL_4__2774_ gnd vdd FILL
XFILL_4__2354_ gnd vdd FILL
XFILL_0__2674_ gnd vdd FILL
XFILL_6__3641_ gnd vdd FILL
XFILL_0__2254_ gnd vdd FILL
XFILL_6__3221_ gnd vdd FILL
XFILL_2__3633_ gnd vdd FILL
XFILL_2__3213_ gnd vdd FILL
XFILL_4__3559_ gnd vdd FILL
XFILL_4__3139_ gnd vdd FILL
XFILL_3__1976_ gnd vdd FILL
XFILL_0__3459_ gnd vdd FILL
XFILL_0__3039_ gnd vdd FILL
XFILL_5__2843_ gnd vdd FILL
XFILL_5__2423_ gnd vdd FILL
XFILL_5__2003_ gnd vdd FILL
XFILL_1__2835_ gnd vdd FILL
XFILL_1__2415_ gnd vdd FILL
XFILL_3__3702_ gnd vdd FILL
XFILL_5__3628_ gnd vdd FILL
XFILL_5__3208_ gnd vdd FILL
XFILL_0__1945_ gnd vdd FILL
XFILL_6__2912_ gnd vdd FILL
X_3631_ _1639_ _1660_ _1661_ vdd gnd NAND2X1
X_3211_ _AXYS[2]_[2] _798_ _801_ vdd gnd NOR2X1
XFILL_3__2094_ gnd vdd FILL
XFILL_2__2904_ gnd vdd FILL
XFILL_3__3299_ gnd vdd FILL
XFILL_4__2583_ gnd vdd FILL
XFILL_4__2163_ gnd vdd FILL
XFILL_6__2089_ gnd vdd FILL
XFILL_0__2483_ gnd vdd FILL
XFILL_6__3450_ gnd vdd FILL
XFILL_0__2063_ gnd vdd FILL
XFILL_6__3030_ gnd vdd FILL
XFILL_2__3022_ gnd vdd FILL
XFILL_7__1885_ gnd vdd FILL
X_2902_ _886__bF$buf5 _1027__bF$buf0 clv _549_ vdd gnd OAI21X1
XFILL_3__1785_ gnd vdd FILL
XFILL_0__3268_ gnd vdd FILL
XFILL_5__2652_ gnd vdd FILL
XFILL_5__2232_ gnd vdd FILL
XFILL_1__2644_ gnd vdd FILL
XFILL_7__3611_ gnd vdd FILL
XFILL_1__2224_ gnd vdd FILL
XFILL_3__3511_ gnd vdd FILL
XFILL_5__3017_ gnd vdd FILL
XFILL_1__3009_ gnd vdd FILL
XFILL_4__1854_ gnd vdd FILL
X_2499_ _193_ _135_ _194_ vdd gnd NOR2X1
X_2079_ _1185_ _1187_ _1188_ vdd gnd NAND2X1
XFILL_0__1754_ gnd vdd FILL
XFILL_6__2721_ gnd vdd FILL
X_3440_ _1__bF$buf3 vdd _108_ clk_bF$buf1 ABL[7] vdd 
+ gnd
+ DFFSR
XFILL_6__2301_ gnd vdd FILL
X_3020_ _1027__bF$buf4 res _52_ vdd gnd AND2X2
XFILL_2__2713_ gnd vdd FILL
XFILL_4__2639_ gnd vdd FILL
XFILL_4__2219_ gnd vdd FILL
XFILL_5__3190_ gnd vdd FILL
XFILL_0__2959_ gnd vdd FILL
XFILL_0__2539_ gnd vdd FILL
XFILL_6__3506_ gnd vdd FILL
XFILL_0__2119_ gnd vdd FILL
XFILL_1__3182_ gnd vdd FILL
XFILL_5__1923_ gnd vdd FILL
XFILL_1__1915_ gnd vdd FILL
XFILL_4__2392_ gnd vdd FILL
XFILL_5__2708_ gnd vdd FILL
XFILL_0__2292_ gnd vdd FILL
XFILL_2__3671_ gnd vdd FILL
XFILL_2__3251_ gnd vdd FILL
XFILL_4__3597_ gnd vdd FILL
XFILL_4__3177_ gnd vdd FILL
X_2711_ _179_ _326_ _380_ _381_ vdd gnd OAI21X1
XFILL_0__3497_ gnd vdd FILL
XFILL_0__3077_ gnd vdd FILL
XFILL_5__2881_ gnd vdd FILL
XFILL_7__2899_ gnd vdd FILL
XFILL_7__2479_ gnd vdd FILL
XFILL_5__2461_ gnd vdd FILL
XFILL_7__2059_ gnd vdd FILL
XFILL_5__2041_ gnd vdd FILL
XFILL_1__2873_ gnd vdd FILL
XFILL_1__2453_ gnd vdd FILL
XFILL_1__2033_ gnd vdd FILL
XFILL_3__2799_ gnd vdd FILL
XFILL_3__2379_ gnd vdd FILL
XFILL_5__3666_ gnd vdd FILL
XFILL_5__3246_ gnd vdd FILL
XFILL_1__3658_ gnd vdd FILL
XFILL_1__3238_ gnd vdd FILL
XFILL_0__1983_ gnd vdd FILL
XFILL_6__2950_ gnd vdd FILL
XFILL_6__2530_ gnd vdd FILL
XFILL_6__2110_ gnd vdd FILL
XFILL_2__2942_ gnd vdd FILL
XFILL_2__2522_ gnd vdd FILL
XFILL_2__2102_ gnd vdd FILL
XFILL_4__2868_ gnd vdd FILL
XFILL_4__2448_ gnd vdd FILL
XFILL_4__2028_ gnd vdd FILL
XFILL_0__2768_ gnd vdd FILL
XFILL_0__2348_ gnd vdd FILL
XFILL_6__3315_ gnd vdd FILL
XFILL_2__3307_ gnd vdd FILL
XFILL_5__2937_ gnd vdd FILL
XFILL_5__2517_ gnd vdd FILL
XFILL_1__2929_ gnd vdd FILL
XFILL_1__2509_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert11 gnd vdd FILL
XFILL_2__3480_ gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
X_1999_ _1074_ _1109_ _1112_ AI[3] vdd gnd OAI21X1
XFILL_0_BUFX2_insert13 gnd vdd FILL
XFILL_2__3060_ gnd vdd FILL
XFILL_0_BUFX2_insert14 gnd vdd FILL
XFILL_0_BUFX2_insert15 gnd vdd FILL
XFILL_0_BUFX2_insert16 gnd vdd FILL
XFILL_0_BUFX2_insert17 gnd vdd FILL
XFILL_0_BUFX2_insert18 gnd vdd FILL
XFILL_0_BUFX2_insert19 gnd vdd FILL
XFILL_6__1801_ gnd vdd FILL
X_2940_ _543_ _577_ _582_ _583_ vdd gnd AOI21X1
X_2520_ _212_ _214_ _215_ vdd gnd NOR2X1
X_2100_ _1208_ _1206_ _1209_ vdd gnd NOR2X1
XFILL169950x50550 gnd vdd FILL
XFILL_5__2690_ gnd vdd FILL
XFILL_5__2270_ gnd vdd FILL
XFILL_7__2288_ gnd vdd FILL
X_3305_ _1091_ _869_ _871_ _110_ vdd gnd OAI21X1
XFILL_1__2682_ gnd vdd FILL
XFILL_1__2262_ gnd vdd FILL
XFILL_3__2188_ gnd vdd FILL
XFILL_5__3475_ gnd vdd FILL
XFILL_5__3055_ gnd vdd FILL
XFILL_1__3467_ gnd vdd FILL
XFILL_1__3047_ gnd vdd FILL
XFILL_4__1892_ gnd vdd FILL
XFILL_0__1792_ gnd vdd FILL
XFILL_2__2751_ gnd vdd FILL
XFILL_2__2331_ gnd vdd FILL
XFILL_4__2677_ gnd vdd FILL
XFILL_4__2257_ gnd vdd FILL
XFILL_0__2997_ gnd vdd FILL
XFILL_0__2577_ gnd vdd FILL
XFILL_6__3544_ gnd vdd FILL
XFILL_0__2157_ gnd vdd FILL
XFILL_6__3124_ gnd vdd FILL
XFILL_2__3536_ gnd vdd FILL
XFILL_2__3116_ gnd vdd FILL
XFILL_7__1979_ gnd vdd FILL
XFILL_5__1961_ gnd vdd FILL
XFILL168750x32550 gnd vdd FILL
XFILL_1__1953_ gnd vdd FILL
XFILL_7__2920_ gnd vdd FILL
XFILL_7__2500_ gnd vdd FILL
XFILL_3__1879_ gnd vdd FILL
XFILL_3__2820_ gnd vdd FILL
XFILL_3__2400_ gnd vdd FILL
XFILL_5__2746_ gnd vdd FILL
XFILL_5__2326_ gnd vdd FILL
XFILL_1__2738_ gnd vdd FILL
XFILL_7__3705_ gnd vdd FILL
XFILL_1__2318_ gnd vdd FILL
XFILL_3__3605_ gnd vdd FILL
XFILL_4__1948_ gnd vdd FILL
XFILL_0__1848_ gnd vdd FILL
XFILL_6__2815_ gnd vdd FILL
X_3534_ _1716_ BI[1] _1563_ _1717_ _1564_ vdd 
+ gnd
+ AOI22X1
X_3114_ _1051_ _721_ _1053_ _722_ vdd gnd NAND3X1
XFILL_1__2491_ gnd vdd FILL
XFILL_1__2071_ gnd vdd FILL
XFILL_2__2807_ gnd vdd FILL
XFILL_5__3284_ gnd vdd FILL
XFILL_1__3696_ gnd vdd FILL
XFILL_1__3276_ gnd vdd FILL
XFILL_2__2980_ gnd vdd FILL
XFILL_2__2560_ gnd vdd FILL
XFILL_2__2140_ gnd vdd FILL
XFILL_4__2486_ gnd vdd FILL
XFILL_4__2066_ gnd vdd FILL
XFILL_0__2386_ gnd vdd FILL
XFILL_7__1788_ gnd vdd FILL
XFILL_5__1770_ gnd vdd FILL
X_2805_ _362_ _340_ _468_ vdd gnd NOR2X1
XFILL_1__1762_ gnd vdd FILL
XFILL_5__2975_ gnd vdd FILL
XFILL_5__2555_ gnd vdd FILL
XFILL_5__2135_ gnd vdd FILL
XFILL_1__2967_ gnd vdd FILL
XFILL_1__2547_ gnd vdd FILL
XFILL_7__3514_ gnd vdd FILL
XFILL_1__2127_ gnd vdd FILL
XFILL_2__1831_ gnd vdd FILL
XFILL_4__1757_ gnd vdd FILL
XFILL_6__2624_ gnd vdd FILL
X_3343_ _1__bF$buf10 vdd _20_ clk_bF$buf8 cond_code[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2204_ gnd vdd FILL
XFILL_2__2616_ gnd vdd FILL
XFILL_5__3093_ gnd vdd FILL
XFILL_1__3085_ gnd vdd FILL
XFILL_3__1900_ gnd vdd FILL
XFILL_5__1826_ gnd vdd FILL
XFILL_1__1818_ gnd vdd FILL
XFILL_4__2295_ gnd vdd FILL
XFILL_6__3582_ gnd vdd FILL
XFILL_0__2195_ gnd vdd FILL
XFILL_6__3162_ gnd vdd FILL
XFILL_2__3574_ gnd vdd FILL
XFILL_2__3154_ gnd vdd FILL
X_2614_ ABH[5] _296_ vdd gnd INVX1
XFILL_1__1991_ gnd vdd FILL
XFILL_5__2784_ gnd vdd FILL
XFILL_5__2364_ gnd vdd FILL
XFILL_1__2776_ gnd vdd FILL
XFILL_1__2356_ gnd vdd FILL
XBUFX2_insert20 _1_ _1__bF$buf0 vdd gnd BUFX2
XBUFX2_insert21 _914_ _914__bF$buf4 vdd gnd BUFX2
XBUFX2_insert22 _914_ _914__bF$buf3 vdd gnd BUFX2
XBUFX2_insert23 _914_ _914__bF$buf2 vdd gnd BUFX2
XBUFX2_insert24 _914_ _914__bF$buf1 vdd gnd BUFX2
XBUFX2_insert25 _914_ _914__bF$buf0 vdd gnd BUFX2
XFILL_3__3643_ gnd vdd FILL
XFILL_3__3223_ gnd vdd FILL
XFILL_5__3569_ gnd vdd FILL
XFILL_5__3149_ gnd vdd FILL
XFILL_4__1986_ gnd vdd FILL
XFILL_0__1886_ gnd vdd FILL
XFILL_6__2853_ gnd vdd FILL
X_3572_ _1545_ _1549_ _1601_ _1602_ vdd gnd OAI21X1
XFILL_6__2433_ gnd vdd FILL
XFILL_6__2013_ gnd vdd FILL
X_3152_ _931__bF$buf2 _1075_ _173_ _756_ vdd gnd OAI21X1
XFILL_2__2845_ gnd vdd FILL
XFILL_2__2425_ gnd vdd FILL
XFILL_2__2005_ gnd vdd FILL
XFILL_4__3712_ gnd vdd FILL
XFILL_6__3638_ gnd vdd FILL
XFILL_6__3218_ gnd vdd FILL
XFILL_0__3612_ gnd vdd FILL
XFILL_3__2914_ gnd vdd FILL
X_2843_ _502_ _503_ _504_ vdd gnd AND2X2
X_2423_ _1027__bF$buf3 _130_ _129_ _131_ vdd gnd NAND3X1
X_2003_ _1115_ _1113_ _1114_ _1116_ vdd gnd NAND3X1
XFILL_5__2593_ gnd vdd FILL
XFILL_5__2173_ gnd vdd FILL
XFILL_6__2909_ gnd vdd FILL
X_3628_ _1656_ _1657_ _1658_ vdd gnd OR2X2
X_3208_ _724_ _798_ _799_ _85_ vdd gnd AOI21X1
XFILL_1__2585_ gnd vdd FILL
XFILL_1__2165_ gnd vdd FILL
XFILL_7__3132_ gnd vdd FILL
XFILL_3__3452_ gnd vdd FILL
XFILL_3__3032_ gnd vdd FILL
XFILL_4__1795_ gnd vdd FILL
XFILL_6__2662_ gnd vdd FILL
X_3381_ _1__bF$buf7 vdd DIMUX[6] clk_bF$buf3 DIHOLD[6] vdd 
+ gnd
+ DFFSR
XFILL_6__2242_ gnd vdd FILL
XFILL_2__2654_ gnd vdd FILL
XFILL_2__2234_ gnd vdd FILL
XFILL_4__3521_ gnd vdd FILL
XFILL_4__3101_ gnd vdd FILL
XFILL_6__3027_ gnd vdd FILL
XFILL_2__3019_ gnd vdd FILL
XFILL_0__3001_ gnd vdd FILL
XFILL_5__1864_ gnd vdd FILL
XFILL_1__1856_ gnd vdd FILL
XFILL_7__2403_ gnd vdd FILL
XFILL_3__2723_ gnd vdd FILL
XFILL_3__2303_ gnd vdd FILL
XFILL_5__2649_ gnd vdd FILL
XFILL_5__2229_ gnd vdd FILL
XFILL_7__3608_ gnd vdd FILL
XFILL_2__3192_ gnd vdd FILL
XFILL_3__3508_ gnd vdd FILL
XFILL_6__1933_ gnd vdd FILL
X_2652_ _914__bF$buf4 _954_ _1027__bF$buf3 _327_ vdd gnd OAI21X1
X_2232_ _886__bF$buf4 _1304_ _1339_ _1340_ vdd gnd AOI21X1
XFILL_2__1925_ gnd vdd FILL
XFILL_6__2718_ gnd vdd FILL
X_3437_ _1__bF$buf7 vdd _105_ clk_bF$buf3 ABL[4] vdd 
+ gnd
+ DFFSR
X_3017_ _642_ _641_ _639_ _643_ vdd gnd NAND3X1
XFILL_1__2394_ gnd vdd FILL
XFILL_3__3261_ gnd vdd FILL
XFILL_1_BUFX2_insert80 gnd vdd FILL
XFILL_1_BUFX2_insert81 gnd vdd FILL
XFILL_1_BUFX2_insert82 gnd vdd FILL
XFILL_1_BUFX2_insert83 gnd vdd FILL
XFILL_5__3187_ gnd vdd FILL
XFILL_1__3599_ gnd vdd FILL
XFILL_1__3179_ gnd vdd FILL
XFILL_6__2891_ gnd vdd FILL
XFILL_6__2471_ gnd vdd FILL
X_3190_ _720__bF$buf3 _687_ _AXYS[1]_[0] _790_ vdd gnd OAI21X1
XFILL_6__2051_ gnd vdd FILL
XFILL_2__2883_ gnd vdd FILL
XFILL_2__2463_ gnd vdd FILL
XFILL_2__2043_ gnd vdd FILL
XFILL_4__2389_ gnd vdd FILL
X_1923_ _1017_ _1036_ _1039_ _1040_ vdd gnd OAI21X1
XFILL_6__3676_ gnd vdd FILL
XFILL_0__2289_ gnd vdd FILL
XFILL_6__3256_ gnd vdd FILL
XFILL_2__3668_ gnd vdd FILL
XFILL_0__3650_ gnd vdd FILL
XFILL_0__3230_ gnd vdd FILL
XFILL_2__3248_ gnd vdd FILL
X_2708_ _323_ _378_ vdd gnd INVX2
XFILL_7__2632_ gnd vdd FILL
XFILL_3__2952_ gnd vdd FILL
XFILL_3__2532_ gnd vdd FILL
XFILL_3__2112_ gnd vdd FILL
XFILL_5__2878_ gnd vdd FILL
XFILL_5__2458_ gnd vdd FILL
XFILL_5__2038_ gnd vdd FILL
XFILL_3__3317_ gnd vdd FILL
X_2881_ _1393_ _534_ _535_ vdd gnd NAND2X1
X_2461_ _159_ _160_ _161_ _162_ vdd gnd NAND3X1
X_2041_ _1149__bF$buf0 _1150_ vdd gnd INVX8
XFILL_4__2601_ gnd vdd FILL
XFILL_6__2947_ gnd vdd FILL
X_3666_ _1714__bF$buf3 _1664_ _1690_ _1520_ vdd gnd OAI21X1
XFILL_6__2527_ gnd vdd FILL
X_3246_ _819_ _821_ _822_ vdd gnd AND2X2
XFILL_6__2107_ gnd vdd FILL
XFILL_7__3590_ gnd vdd FILL
XFILL_7__3170_ gnd vdd FILL
XFILL_0__2921_ gnd vdd FILL
XFILL_2__2939_ gnd vdd FILL
XFILL_2__2519_ gnd vdd FILL
XFILL_0__2501_ gnd vdd FILL
XFILL_3__3490_ gnd vdd FILL
XFILL_3__3070_ gnd vdd FILL
XFILL_7__1903_ gnd vdd FILL
XFILL_0__3706_ gnd vdd FILL
XFILL_3__1803_ gnd vdd FILL
XFILL_6__2280_ gnd vdd FILL
XFILL_2__2692_ gnd vdd FILL
XFILL_2__2272_ gnd vdd FILL
XFILL_4__2198_ gnd vdd FILL
XFILL_6__3485_ gnd vdd FILL
XFILL_0__2098_ gnd vdd FILL
XFILL_6__3065_ gnd vdd FILL
XFILL_2__3477_ gnd vdd FILL
XFILL_2__3057_ gnd vdd FILL
X_2937_ _578_ _579_ _580_ vdd gnd OR2X2
X_2517_ _210_ _211_ _1226_ _212_ vdd gnd NAND3X1
XFILL_1__1894_ gnd vdd FILL
XFILL_7__2861_ gnd vdd FILL
XFILL_7__2021_ gnd vdd FILL
XFILL_3__2761_ gnd vdd FILL
XFILL_3__2341_ gnd vdd FILL
XFILL_5__2687_ gnd vdd FILL
XFILL_5__2267_ gnd vdd FILL
XFILL_1__2679_ gnd vdd FILL
XFILL_7__3646_ gnd vdd FILL
XFILL_1__2259_ gnd vdd FILL
XFILL_1__3620_ gnd vdd FILL
XFILL_1__3200_ gnd vdd FILL
XFILL_3__3546_ gnd vdd FILL
XFILL_3__3126_ gnd vdd FILL
XFILL_6__1971_ gnd vdd FILL
X_2690_ _345_ _361_ _354_ _357_ _362_ vdd 
+ gnd
+ OAI22X1
X_2270_ C cond_code[2] _1378_ vdd gnd NAND2X1
XFILL_2__1963_ gnd vdd FILL
XFILL_4__1889_ gnd vdd FILL
XFILL_4__2830_ gnd vdd FILL
XFILL_4__2410_ gnd vdd FILL
XFILL_0__1789_ gnd vdd FILL
XFILL_6__2756_ gnd vdd FILL
X_3475_ BI[7] _1716_ _1720_ _1717_ _1721_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2336_ gnd vdd FILL
X_3055_ _1374_ _664_ _669_ _62_ vdd gnd OAI21X1
XFILL_2__2748_ gnd vdd FILL
XFILL_0__2730_ gnd vdd FILL
XFILL_2__2328_ gnd vdd FILL
XFILL_0__2310_ gnd vdd FILL
XFILL_4__3615_ gnd vdd FILL
XFILL_0__3515_ gnd vdd FILL
XFILL_5__1958_ gnd vdd FILL
XFILL_7__2917_ gnd vdd FILL
XFILL_2__2081_ gnd vdd FILL
XFILL_3__2817_ gnd vdd FILL
X_1961_ _899_ _934_ _1078_ vdd gnd NOR2X1
XFILL_6__3294_ gnd vdd FILL
XFILL_2__3286_ gnd vdd FILL
X_2746_ RDY_bF$buf0 _268_ _412_ _411_ _10_ vdd 
+ gnd
+ OAI22X1
X_2326_ _886__bF$buf0 _990_ _1433_ vdd gnd NAND2X1
XFILL_7__2670_ gnd vdd FILL
XFILL_7__2250_ gnd vdd FILL
XFILL_3__2990_ gnd vdd FILL
XFILL_3__2570_ gnd vdd FILL
XFILL_3__2150_ gnd vdd FILL
XFILL_5__2496_ gnd vdd FILL
XFILL_5__2076_ gnd vdd FILL
XFILL_1__2488_ gnd vdd FILL
XFILL_1__2068_ gnd vdd FILL
XFILL_7__3035_ gnd vdd FILL
XFILL_6__1780_ gnd vdd FILL
XFILL169050x32550 gnd vdd FILL
XFILL_2__1772_ gnd vdd FILL
XFILL_5_BUFX2_insert37 gnd vdd FILL
XFILL_5_BUFX2_insert38 gnd vdd FILL
XFILL_5_BUFX2_insert39 gnd vdd FILL
XFILL_6__2985_ gnd vdd FILL
XFILL_6__2565_ gnd vdd FILL
X_3284_ RDY_bF$buf2 _859_ _860_ vdd gnd NAND2X1
XFILL_6__2145_ gnd vdd FILL
XFILL_2__2977_ gnd vdd FILL
XFILL_2__2557_ gnd vdd FILL
XFILL_2__2137_ gnd vdd FILL
XFILL_4__3004_ gnd vdd FILL
XFILL_3__1841_ gnd vdd FILL
XFILL_5__1767_ gnd vdd FILL
XFILL_1__1759_ gnd vdd FILL
XFILL_7__2306_ gnd vdd FILL
XFILL_1__2700_ gnd vdd FILL
XFILL_3__2626_ gnd vdd FILL
XFILL_3__2206_ gnd vdd FILL
X_1770_ state[2] _896_ vdd gnd INVX1
XFILL_2__3095_ gnd vdd FILL
XFILL_4__1910_ gnd vdd FILL
XFILL_6__1836_ gnd vdd FILL
X_2975_ _1178_ _605_ _606_ vdd gnd NOR2X1
X_2555_ _216_ ADD[4] _245_ _246_ vdd gnd AOI21X1
X_2135_ _886__bF$buf6 _1241_ _1244_ vdd gnd NOR2X1
XFILL_0__1810_ gnd vdd FILL
XFILL_2__1828_ gnd vdd FILL
XFILL_1__2297_ gnd vdd FILL
XFILL_7__3264_ gnd vdd FILL
XFILL_3__3584_ gnd vdd FILL
XFILL_3__3164_ gnd vdd FILL
XFILL_6__2794_ gnd vdd FILL
XFILL_6__2374_ gnd vdd FILL
X_3093_ adc_sbc compare _703_ vdd gnd NOR2X1
XFILL_2__2786_ gnd vdd FILL
XFILL_2__2366_ gnd vdd FILL
X_1826_ _904_ _924_ _952_ vdd gnd NOR2X1
XFILL_7__1750_ gnd vdd FILL
XFILL_4__3653_ gnd vdd FILL
XFILL_4__3233_ gnd vdd FILL
XFILL_6__3579_ gnd vdd FILL
XFILL_6__3159_ gnd vdd FILL
XFILL_0__3553_ gnd vdd FILL
XFILL_0__3133_ gnd vdd FILL
XFILL_5__1996_ gnd vdd FILL
XFILL_1__1988_ gnd vdd FILL
XFILL_7__2535_ gnd vdd FILL
XFILL_3__2855_ gnd vdd FILL
XFILL_3__2435_ gnd vdd FILL
XFILL_3__2015_ gnd vdd FILL
XFILL_5__3302_ gnd vdd FILL
XFILL_1__3714_ gnd vdd FILL
X_2784_ ABH[3] _448_ vdd gnd INVX1
X_2364_ _929_ _1031_ _1470_ vdd gnd NAND2X1
XFILL_4__2924_ gnd vdd FILL
XFILL_4__2504_ gnd vdd FILL
X_3569_ _1598_ _1599_ vdd gnd INVX1
X_3149_ _753_ DIMUX[3] _1018_ _754_ vdd gnd MUX2X1
XFILL_7__3493_ gnd vdd FILL
XFILL_0__2824_ gnd vdd FILL
XFILL_0__2404_ gnd vdd FILL
XFILL_4__3709_ gnd vdd FILL
XFILL_7__1806_ gnd vdd FILL
XFILL_0__3609_ gnd vdd FILL
XFILL_6__2183_ gnd vdd FILL
XFILL_2__2595_ gnd vdd FILL
XFILL_2__2175_ gnd vdd FILL
XFILL_4__3462_ gnd vdd FILL
XFILL_4__3042_ gnd vdd FILL
XFILL_6_BUFX2_insert80 gnd vdd FILL
XFILL_6_BUFX2_insert81 gnd vdd FILL
XFILL_6_BUFX2_insert82 gnd vdd FILL
XFILL_6_BUFX2_insert83 gnd vdd FILL
XFILL_1__1797_ gnd vdd FILL
XFILL_7__2764_ gnd vdd FILL
XFILL_3__2664_ gnd vdd FILL
XFILL_3__2244_ gnd vdd FILL
XFILL_5__3531_ gnd vdd FILL
XFILL_5__3111_ gnd vdd FILL
XFILL_1__3523_ gnd vdd FILL
XFILL_1__3103_ gnd vdd FILL
XFILL_3__3449_ gnd vdd FILL
XFILL_3__3029_ gnd vdd FILL
XFILL_6__1874_ gnd vdd FILL
X_2593_ _272_ DIMUX[1] _278_ _279_ vdd gnd AOI21X1
X_2173_ RDY_bF$buf8 _982_ _1281_ _1282_ vdd gnd OAI21X1
XFILL_2__1866_ gnd vdd FILL
XFILL169350x75750 gnd vdd FILL
XFILL_4__2733_ gnd vdd FILL
XFILL_4__2313_ gnd vdd FILL
XFILL_6__2659_ gnd vdd FILL
X_3378_ _1__bF$buf7 vdd DIMUX[3] clk_bF$buf5 DIHOLD[3] vdd 
+ gnd
+ DFFSR
XFILL_6__2239_ gnd vdd FILL
XFILL_0__2633_ gnd vdd FILL
XFILL_6__3600_ gnd vdd FILL
XFILL_0__2213_ gnd vdd FILL
XFILL_4__3518_ gnd vdd FILL
XFILL_3__1935_ gnd vdd FILL
XFILL_5__2802_ gnd vdd FILL
X_1864_ _927_ _910_ _989_ vdd gnd NAND2X1
XFILL_4__3691_ gnd vdd FILL
XFILL_4__3271_ gnd vdd FILL
XFILL_6__3197_ gnd vdd FILL
XFILL_0__3591_ gnd vdd FILL
XFILL_0__3171_ gnd vdd FILL
XFILL_2__3189_ gnd vdd FILL
X_2649_ ABL[0] _323_ _322_ ADD[0] _324_ vdd 
+ gnd
+ AOI22X1
X_2229_ _903__bF$buf2 _941_ _1337_ vdd gnd NAND2X1
XFILL_7__2993_ gnd vdd FILL
XFILL_7__2153_ gnd vdd FILL
XFILL_0__1904_ gnd vdd FILL
XFILL_3__2893_ gnd vdd FILL
XFILL_3__2473_ gnd vdd FILL
XFILL_3__2053_ gnd vdd FILL
XFILL_5__2399_ gnd vdd FILL
XFILL_3__3678_ gnd vdd FILL
XFILL_3__3258_ gnd vdd FILL
XFILL_4__2962_ gnd vdd FILL
XFILL_4__2542_ gnd vdd FILL
XFILL_4__2122_ gnd vdd FILL
XFILL_6__2888_ gnd vdd FILL
XFILL_6__2468_ gnd vdd FILL
X_3187_ _AXYS[0]_[7] _722_ _788_ vdd gnd NAND2X1
XFILL_6__2048_ gnd vdd FILL
XFILL_0__2862_ gnd vdd FILL
XFILL_0__2442_ gnd vdd FILL
XFILL_0__2022_ gnd vdd FILL
XFILL_3__1744_ gnd vdd FILL
XFILL_0__3647_ gnd vdd FILL
XFILL_0__3227_ gnd vdd FILL
XFILL_5__2611_ gnd vdd FILL
XFILL_7__2629_ gnd vdd FILL
XFILL_7__2209_ gnd vdd FILL
XFILL_1__2603_ gnd vdd FILL
XFILL_3__2949_ gnd vdd FILL
XFILL_3__2529_ gnd vdd FILL
XFILL_3__2109_ gnd vdd FILL
XFILL_4__3080_ gnd vdd FILL
XFILL_4__1813_ gnd vdd FILL
X_2878_ _529_ _1150__bF$buf2 _532_ _22_ vdd gnd OAI21X1
X_2458_ ADD[2] _144_ _159_ vdd gnd NAND2X1
X_2038_ _1082_ AN _1147_ _1148_ vdd gnd AOI21X1
XFILL_7__2382_ gnd vdd FILL
XFILL_3__2282_ gnd vdd FILL
XFILL_7__3587_ gnd vdd FILL
XFILL_7__3167_ gnd vdd FILL
XFILL_0__2918_ gnd vdd FILL
XFILL_1__3561_ gnd vdd FILL
XFILL_1__3141_ gnd vdd FILL
XFILL_3__3487_ gnd vdd FILL
XFILL_3__3067_ gnd vdd FILL
XFILL_4__2771_ gnd vdd FILL
XFILL_4__2351_ gnd vdd FILL
XFILL_6__2697_ gnd vdd FILL
XFILL_6__2277_ gnd vdd FILL
XFILL_2__2689_ gnd vdd FILL
XFILL_0__2671_ gnd vdd FILL
XFILL_2__2269_ gnd vdd FILL
XFILL_0__2251_ gnd vdd FILL
XFILL_2__3630_ gnd vdd FILL
XFILL_2__3210_ gnd vdd FILL
XFILL169650x100950 gnd vdd FILL
XFILL_4__3556_ gnd vdd FILL
XFILL_4__3136_ gnd vdd FILL
XFILL_3__1973_ gnd vdd FILL
XFILL_0__3456_ gnd vdd FILL
XFILL_0__3036_ gnd vdd FILL
XFILL_5__1899_ gnd vdd FILL
XFILL_5__2840_ gnd vdd FILL
XFILL_7__2438_ gnd vdd FILL
XFILL_5__2420_ gnd vdd FILL
XFILL_5__2000_ gnd vdd FILL
XFILL_1__2832_ gnd vdd FILL
XFILL_1__2412_ gnd vdd FILL
XFILL_3__2758_ gnd vdd FILL
XFILL_3__2338_ gnd vdd FILL
XFILL_5__3625_ gnd vdd FILL
XFILL_5__3205_ gnd vdd FILL
XFILL_1__3617_ gnd vdd FILL
XFILL_6__1968_ gnd vdd FILL
X_2687_ _358_ _359_ vdd gnd INVX1
X_2267_ cond_code[2] Z _1375_ vdd gnd NAND2X1
XFILL_0__1942_ gnd vdd FILL
XFILL_3__2091_ gnd vdd FILL
XFILL_2__2901_ gnd vdd FILL
XFILL_4__2827_ gnd vdd FILL
XFILL_4__2407_ gnd vdd FILL
XFILL_0__2727_ gnd vdd FILL
XFILL_0__2307_ gnd vdd FILL
XFILL_3__3296_ gnd vdd FILL
XFILL_4__2580_ gnd vdd FILL
XFILL_4__2160_ gnd vdd FILL
XFILL_6__2086_ gnd vdd FILL
XFILL_0__2480_ gnd vdd FILL
XFILL_2__2498_ gnd vdd FILL
XFILL_0__2060_ gnd vdd FILL
XFILL_2__2078_ gnd vdd FILL
X_1958_ _948_ _957_ _1075_ vdd gnd NAND2X1
XFILL_7__1882_ gnd vdd FILL
XFILL_3__1782_ gnd vdd FILL
XFILL_0__3265_ gnd vdd FILL
XFILL_7__2667_ gnd vdd FILL
XFILL_1__2641_ gnd vdd FILL
XFILL_1__2221_ gnd vdd FILL
XFILL_3__2987_ gnd vdd FILL
XFILL_3__2567_ gnd vdd FILL
XFILL_3__2147_ gnd vdd FILL
XFILL_5__3014_ gnd vdd FILL
XFILL_1__3006_ gnd vdd FILL
XFILL_4__1851_ gnd vdd FILL
XFILL_6__1777_ gnd vdd FILL
X_2496_ _191_ _192_ vdd gnd INVX1
X_2076_ _1167_ _1184_ _1185_ vdd gnd NAND2X1
XFILL_0__1751_ gnd vdd FILL
XFILL_2__1769_ gnd vdd FILL
XFILL_2__2710_ gnd vdd FILL
XFILL_4__2636_ gnd vdd FILL
XFILL_4__2216_ gnd vdd FILL
XFILL_0__2956_ gnd vdd FILL
XFILL_0__2536_ gnd vdd FILL
XFILL_6__3503_ gnd vdd FILL
XFILL_0__2116_ gnd vdd FILL
XFILL_5__1920_ gnd vdd FILL
XFILL_7__1938_ gnd vdd FILL
XFILL_1__1912_ gnd vdd FILL
XFILL_3__1838_ gnd vdd FILL
XFILL_5__2705_ gnd vdd FILL
X_1767_ _893_ DIMUX[7] vdd gnd INVX1
XFILL_4__3594_ gnd vdd FILL
XFILL_4__3174_ gnd vdd FILL
XFILL_0__3494_ gnd vdd FILL
XFILL_0__3074_ gnd vdd FILL
XFILL_4__1907_ gnd vdd FILL
XFILL_7__2896_ gnd vdd FILL
XFILL_7__2056_ gnd vdd FILL
XFILL_0__1807_ gnd vdd FILL
XFILL_1__2870_ gnd vdd FILL
XFILL_1__2450_ gnd vdd FILL
XFILL_1__2030_ gnd vdd FILL
XFILL_3__2796_ gnd vdd FILL
XFILL_3__2376_ gnd vdd FILL
XFILL_5__3663_ gnd vdd FILL
XFILL_5__3243_ gnd vdd FILL
XFILL_1__3655_ gnd vdd FILL
XFILL_1__3235_ gnd vdd FILL
XFILL_0__1980_ gnd vdd FILL
XFILL_2__1998_ gnd vdd FILL
XFILL_4__2865_ gnd vdd FILL
XFILL_4__2445_ gnd vdd FILL
XFILL_4__2025_ gnd vdd FILL
XFILL_0__2765_ gnd vdd FILL
XFILL_0__2345_ gnd vdd FILL
XFILL_6__3312_ gnd vdd FILL
XFILL_2__3304_ gnd vdd FILL
XFILL_7__1747_ gnd vdd FILL
XFILL_1_CLKBUF1_insert26 gnd vdd FILL
XFILL_1_CLKBUF1_insert27 gnd vdd FILL
XFILL_1_CLKBUF1_insert28 gnd vdd FILL
XFILL_1_CLKBUF1_insert29 gnd vdd FILL
XFILL_5__2934_ gnd vdd FILL
XFILL_5__2514_ gnd vdd FILL
XFILL_1__2926_ gnd vdd FILL
XFILL_1__2506_ gnd vdd FILL
X_1996_ ABH[3] _925_ _1110_ vdd gnd NAND2X1
XFILL_7__2285_ gnd vdd FILL
X_3302_ _1741_[8] _869_ _870_ vdd gnd NAND2X1
XFILL_3__2185_ gnd vdd FILL
XFILL_5__3472_ gnd vdd FILL
XFILL_5__3052_ gnd vdd FILL
XFILL_1__3464_ gnd vdd FILL
XFILL_1__3044_ gnd vdd FILL
XFILL_4__2674_ gnd vdd FILL
XFILL_4__2254_ gnd vdd FILL
XFILL_0__2994_ gnd vdd FILL
XFILL_0__2574_ gnd vdd FILL
XFILL_6__3541_ gnd vdd FILL
XFILL_0__2154_ gnd vdd FILL
XFILL_6__3121_ gnd vdd FILL
XFILL_2__3533_ gnd vdd FILL
XFILL_2__3113_ gnd vdd FILL
XFILL_7__1976_ gnd vdd FILL
XFILL_4__3459_ gnd vdd FILL
XFILL_4__3039_ gnd vdd FILL
XFILL_1__1950_ gnd vdd FILL
XFILL_3__1876_ gnd vdd FILL
XFILL_5__2743_ gnd vdd FILL
XFILL_5__2323_ gnd vdd FILL
XFILL_1__2735_ gnd vdd FILL
XFILL_7__3702_ gnd vdd FILL
XFILL_1__2315_ gnd vdd FILL
XFILL_3__3602_ gnd vdd FILL
XFILL_5__3528_ gnd vdd FILL
XFILL_5__3108_ gnd vdd FILL
XFILL_4__1945_ gnd vdd FILL
XFILL_0__1845_ gnd vdd FILL
XFILL_6__2812_ gnd vdd FILL
X_3531_ _1560_ _1557_ _1561_ vdd gnd NAND2X1
X_3111_ _633_ _662_ _719_ vdd gnd NOR2X1
XFILL_2__2804_ gnd vdd FILL
XFILL_7__3299_ gnd vdd FILL
XFILL_5__3281_ gnd vdd FILL
XFILL_1__3693_ gnd vdd FILL
XFILL_1__3273_ gnd vdd FILL
XFILL_3__3199_ gnd vdd FILL
XFILL_4__2483_ gnd vdd FILL
XFILL_4__2063_ gnd vdd FILL
XFILL_0__2383_ gnd vdd FILL
XFILL_7__1785_ gnd vdd FILL
XFILL_4__3268_ gnd vdd FILL
X_2802_ _464_ _463_ _465_ vdd gnd NOR2X1
XFILL_0__3588_ gnd vdd FILL
XFILL_0__3168_ gnd vdd FILL
XFILL_5__2972_ gnd vdd FILL
XFILL_5__2552_ gnd vdd FILL
XFILL_5__2132_ gnd vdd FILL
XFILL_1__2964_ gnd vdd FILL
XFILL_1__2544_ gnd vdd FILL
XFILL_7__3511_ gnd vdd FILL
XFILL_1__2124_ gnd vdd FILL
XFILL_4__1754_ gnd vdd FILL
X_2399_ _1466_ _1504_ vdd gnd INVX1
XFILL_6__2621_ gnd vdd FILL
X_3340_ _1__bF$buf3 vdd NMI clk_bF$buf4 NMI_1 vdd 
+ gnd
+ DFFSR
XFILL_6__2201_ gnd vdd FILL
XFILL_2__2613_ gnd vdd FILL
XFILL_4__2959_ gnd vdd FILL
XFILL_4__2539_ gnd vdd FILL
XFILL_4__2119_ gnd vdd FILL
XFILL_5__3090_ gnd vdd FILL
XFILL_0__2859_ gnd vdd FILL
XFILL_0__2439_ gnd vdd FILL
XFILL_0__2019_ gnd vdd FILL
XFILL_1__3082_ gnd vdd FILL
XFILL_5__1823_ gnd vdd FILL
XFILL_1__1815_ gnd vdd FILL
XFILL_4__2292_ gnd vdd FILL
XFILL_5__2608_ gnd vdd FILL
XFILL_0__2192_ gnd vdd FILL
XFILL_2__3571_ gnd vdd FILL
XFILL_2__3151_ gnd vdd FILL
XFILL_4__3497_ gnd vdd FILL
XFILL_4__3077_ gnd vdd FILL
X_2611_ _272_ DIMUX[4] _293_ _294_ vdd gnd AOI21X1
XFILL_7__2799_ gnd vdd FILL
XFILL_5__2781_ gnd vdd FILL
XFILL_5__2361_ gnd vdd FILL
XFILL_7__2379_ gnd vdd FILL
XFILL_1__2773_ gnd vdd FILL
XFILL_1__2353_ gnd vdd FILL
XFILL_3__2699_ gnd vdd FILL
XFILL_3__2279_ gnd vdd FILL
XFILL_3__3640_ gnd vdd FILL
XFILL_3__3220_ gnd vdd FILL
XFILL_5__3566_ gnd vdd FILL
XFILL_5__3146_ gnd vdd FILL
XFILL_1__3558_ gnd vdd FILL
XFILL_1__3138_ gnd vdd FILL
XFILL_4__1983_ gnd vdd FILL
XFILL_0__1883_ gnd vdd FILL
XFILL_6__2850_ gnd vdd FILL
XFILL_6__2430_ gnd vdd FILL
XFILL_6__2010_ gnd vdd FILL
XFILL168150x150 gnd vdd FILL
XFILL_2__2842_ gnd vdd FILL
XFILL_2__2422_ gnd vdd FILL
XFILL_2__2002_ gnd vdd FILL
XFILL_4__2768_ gnd vdd FILL
XFILL_4__2348_ gnd vdd FILL
XFILL_0__2668_ gnd vdd FILL
XFILL_6__3635_ gnd vdd FILL
XFILL_0__2248_ gnd vdd FILL
XFILL_6__3215_ gnd vdd FILL
XFILL_2__3627_ gnd vdd FILL
XFILL_2__3207_ gnd vdd FILL
XFILL_3__2911_ gnd vdd FILL
XFILL_5__2837_ gnd vdd FILL
XFILL_5__2417_ gnd vdd FILL
XFILL_1__2829_ gnd vdd FILL
XFILL_1__2409_ gnd vdd FILL
X_1899_ _1016_ _968_ _893_ _1004_ BI[7] vdd 
+ gnd
+ OAI22X1
X_2840_ _300_ _418_ _501_ vdd gnd NOR2X1
X_2420_ op[0] _128_ vdd gnd INVX1
X_2000_ _AXYS[1]_[4] _1047_ _1113_ vdd gnd NAND2X1
XFILL_5__2590_ gnd vdd FILL
XFILL_7__2188_ gnd vdd FILL
XFILL_5__2170_ gnd vdd FILL
XFILL_0__1939_ gnd vdd FILL
XFILL_6__2906_ gnd vdd FILL
X_3625_ _1654_ _1639_ _1655_ vdd gnd NAND2X1
X_3205_ _787_ _789_ _797_ _84_ vdd gnd OAI21X1
XFILL_1__2582_ gnd vdd FILL
XFILL_1__2162_ gnd vdd FILL
XFILL_3__2088_ gnd vdd FILL
XFILL_4__1792_ gnd vdd FILL
XFILL_2__2651_ gnd vdd FILL
XFILL_2__2231_ gnd vdd FILL
XFILL_4__2997_ gnd vdd FILL
XFILL_4__2577_ gnd vdd FILL
XFILL_4__2157_ gnd vdd FILL
XFILL_0__2897_ gnd vdd FILL
XFILL_0__2477_ gnd vdd FILL
XFILL_0__2057_ gnd vdd FILL
XFILL_6__3024_ gnd vdd FILL
XFILL_2__3016_ gnd vdd FILL
XFILL_7__1879_ gnd vdd FILL
XFILL_5__1861_ gnd vdd FILL
XFILL_1__1853_ gnd vdd FILL
XFILL_7__2820_ gnd vdd FILL
XFILL_7__2400_ gnd vdd FILL
XFILL_3__1779_ gnd vdd FILL
XFILL_3__2720_ gnd vdd FILL
XFILL_3__2300_ gnd vdd FILL
XFILL_5__2646_ gnd vdd FILL
XFILL_5__2226_ gnd vdd FILL
XFILL_1__2638_ gnd vdd FILL
XFILL_1__2218_ gnd vdd FILL
XFILL_3__3505_ gnd vdd FILL
XFILL_6__1930_ gnd vdd FILL
XFILL_2__1922_ gnd vdd FILL
XFILL_4__1848_ gnd vdd FILL
XFILL_0__1748_ gnd vdd FILL
XFILL_6__2715_ gnd vdd FILL
X_3434_ _1__bF$buf5 vdd _102_ clk_bF$buf1 ABL[1] vdd 
+ gnd
+ DFFSR
X_3014_ _551_ _640_ vdd gnd INVX1
XFILL_1__2391_ gnd vdd FILL
XFILL_2__2707_ gnd vdd FILL
XFILL_1_BUFX2_insert50 gnd vdd FILL
XFILL_1_BUFX2_insert51 gnd vdd FILL
XFILL_1_BUFX2_insert52 gnd vdd FILL
XFILL_1_BUFX2_insert53 gnd vdd FILL
XFILL_5__3184_ gnd vdd FILL
XFILL_1_BUFX2_insert54 gnd vdd FILL
XFILL_1_BUFX2_insert55 gnd vdd FILL
XFILL_1_BUFX2_insert56 gnd vdd FILL
XFILL_1_BUFX2_insert57 gnd vdd FILL
XFILL_1_BUFX2_insert58 gnd vdd FILL
XFILL_1_BUFX2_insert59 gnd vdd FILL
XFILL_1__3596_ gnd vdd FILL
XFILL_1__3176_ gnd vdd FILL
XFILL_0_CLKBUF1_insert30 gnd vdd FILL
XFILL_0_CLKBUF1_insert31 gnd vdd FILL
XFILL_5__1917_ gnd vdd FILL
XFILL_0_CLKBUF1_insert32 gnd vdd FILL
XFILL_0_CLKBUF1_insert33 gnd vdd FILL
XFILL_0_CLKBUF1_insert34 gnd vdd FILL
XFILL_0_CLKBUF1_insert35 gnd vdd FILL
XFILL_0_CLKBUF1_insert36 gnd vdd FILL
XFILL_1__1909_ gnd vdd FILL
XFILL_2__2880_ gnd vdd FILL
XFILL_2__2460_ gnd vdd FILL
XFILL_2__2040_ gnd vdd FILL
XFILL_4__2386_ gnd vdd FILL
X_1920_ _1027__bF$buf0 _1037_ vdd gnd INVX1
XFILL_6__3673_ gnd vdd FILL
XFILL_0__2286_ gnd vdd FILL
XFILL_6__3253_ gnd vdd FILL
XFILL_2__3665_ gnd vdd FILL
XFILL_2__3245_ gnd vdd FILL
X_2705_ _374_ _370_ RDY_bF$buf3 _376_ vdd gnd OAI21X1
XFILL_5__2875_ gnd vdd FILL
XFILL_5__2455_ gnd vdd FILL
XFILL_5__2035_ gnd vdd FILL
XFILL_1__2867_ gnd vdd FILL
XFILL_1__2447_ gnd vdd FILL
XFILL_1__2027_ gnd vdd FILL
XFILL_3__3314_ gnd vdd FILL
XFILL_0__1977_ gnd vdd FILL
XFILL_6__2944_ gnd vdd FILL
X_3663_ ADD[2] _1714__bF$buf1 _1689_ vdd gnd NAND2X1
XFILL_6__2524_ gnd vdd FILL
X_3243_ _818_ _817_ _819_ vdd gnd NOR2X1
XFILL_6__2104_ gnd vdd FILL
XFILL_2__2936_ gnd vdd FILL
XFILL_2__2516_ gnd vdd FILL
XFILL_7__1900_ gnd vdd FILL
XFILL_6__3309_ gnd vdd FILL
XFILL_3__1800_ gnd vdd FILL
XFILL_0__3703_ gnd vdd FILL
XFILL_4__2195_ gnd vdd FILL
XFILL_6__3482_ gnd vdd FILL
XFILL_0__2095_ gnd vdd FILL
XFILL_6__3062_ gnd vdd FILL
XFILL_2__3474_ gnd vdd FILL
XFILL_2__3054_ gnd vdd FILL
X_2934_ _1181_ _576_ _1215_ _577_ vdd gnd OAI21X1
X_2514_ _208_ _206_ _209_ vdd gnd NAND2X1
XFILL_1__1891_ gnd vdd FILL
XFILL_5__2684_ gnd vdd FILL
XFILL_5__2264_ gnd vdd FILL
XFILL_1__2676_ gnd vdd FILL
XFILL_7__3643_ gnd vdd FILL
XFILL_1__2256_ gnd vdd FILL
XFILL_3__3543_ gnd vdd FILL
XFILL_3__3123_ gnd vdd FILL
XFILL_5__3469_ gnd vdd FILL
XFILL_5__3049_ gnd vdd FILL
XFILL_2__1960_ gnd vdd FILL
XFILL_4__1886_ gnd vdd FILL
XFILL_0__1786_ gnd vdd FILL
XFILL_6__2753_ gnd vdd FILL
X_3472_ alu_op[0] _1718_ vdd gnd INVX2
XFILL_6__2333_ gnd vdd FILL
X_3052_ _1027__bF$buf3 _666_ _665_ _667_ vdd gnd OAI21X1
XFILL_2__2745_ gnd vdd FILL
XFILL_2__2325_ gnd vdd FILL
XFILL_4__3612_ gnd vdd FILL
XFILL_6__3538_ gnd vdd FILL
XFILL_6__3118_ gnd vdd FILL
XFILL_0__3512_ gnd vdd FILL
XFILL_5__1955_ gnd vdd FILL
XFILL_1__1947_ gnd vdd FILL
XFILL_7__2914_ gnd vdd FILL
XFILL_3__2814_ gnd vdd FILL
XFILL_6__3291_ gnd vdd FILL
XFILL_2__3283_ gnd vdd FILL
X_2743_ _409_ _410_ vdd gnd INVX1
X_2323_ _1384_ _1430_ vdd gnd INVX1
XFILL_5__2493_ gnd vdd FILL
XFILL_5__2073_ gnd vdd FILL
XFILL_6__2809_ gnd vdd FILL
X_3528_ alu_op[3] alu_op[2] _1558_ vdd gnd NOR2X1
X_3108_ RDY_bF$buf9 _715_ _716_ _68_ vdd gnd OAI21X1
XFILL_1__2485_ gnd vdd FILL
XFILL_1__2065_ gnd vdd FILL
XFILL_7__3032_ gnd vdd FILL
XFILL_5__3698_ gnd vdd FILL
XFILL_5__3278_ gnd vdd FILL
XFILL_6__2982_ gnd vdd FILL
XFILL_6__2562_ gnd vdd FILL
X_3281_ state[4] _981_ _856_ _857_ vdd gnd OAI21X1
XFILL_6__2142_ gnd vdd FILL
XFILL_2__2974_ gnd vdd FILL
XFILL_2__2554_ gnd vdd FILL
XFILL_2__2134_ gnd vdd FILL
XFILL_4__3001_ gnd vdd FILL
XFILL_5__1764_ gnd vdd FILL
XFILL_1__1756_ gnd vdd FILL
XFILL_7__2303_ gnd vdd FILL
XFILL_3__2623_ gnd vdd FILL
XFILL_3__2203_ gnd vdd FILL
XFILL_5__2969_ gnd vdd FILL
XFILL_5__2549_ gnd vdd FILL
XFILL_5__2129_ gnd vdd FILL
XFILL_7__3508_ gnd vdd FILL
XFILL_2__3092_ gnd vdd FILL
XFILL_6__1833_ gnd vdd FILL
X_2972_ _1405_ _603_ _534_ _604_ vdd gnd OAI21X1
X_2552_ ADD[4] _209_ _243_ vdd gnd NAND2X1
X_2132_ CO store _1241_ vdd gnd OR2X2
XFILL_2__1825_ gnd vdd FILL
XFILL_6__2618_ gnd vdd FILL
X_3337_ _1__bF$buf1 vdd _15_ clk_bF$buf2 PC[13] vdd 
+ gnd
+ DFFSR
XFILL_1__2294_ gnd vdd FILL
XFILL_7__3261_ gnd vdd FILL
XFILL_3__3581_ gnd vdd FILL
XFILL_3__3161_ gnd vdd FILL
XFILL_5__3087_ gnd vdd FILL
XFILL_1__3499_ gnd vdd FILL
XFILL_1__3079_ gnd vdd FILL
XFILL_6__2791_ gnd vdd FILL
XFILL_6__2371_ gnd vdd FILL
X_3090_ _700_ AZ _1227_ _701_ vdd gnd MUX2X1
XFILL_2__2783_ gnd vdd FILL
XFILL_2__2363_ gnd vdd FILL
XFILL_4__2289_ gnd vdd FILL
X_1823_ _910_ _948_ _949_ vdd gnd NAND2X1
XFILL_4__3650_ gnd vdd FILL
XFILL_4__3230_ gnd vdd FILL
XFILL_0__2189_ gnd vdd FILL
XFILL_6__3576_ gnd vdd FILL
XFILL_6__3156_ gnd vdd FILL
XFILL_2__3568_ gnd vdd FILL
XFILL_0__3550_ gnd vdd FILL
XFILL_2__3148_ gnd vdd FILL
XFILL_0__3130_ gnd vdd FILL
XFILL_5__1993_ gnd vdd FILL
X_2608_ ABH[4] _291_ vdd gnd INVX1
XFILL_1__1985_ gnd vdd FILL
XFILL_7__2532_ gnd vdd FILL
XFILL_3__2852_ gnd vdd FILL
XFILL_3__2432_ gnd vdd FILL
XFILL_3__2012_ gnd vdd FILL
XFILL_5__2778_ gnd vdd FILL
XFILL_5__2358_ gnd vdd FILL
XFILL_7__3317_ gnd vdd FILL
XFILL_1__3711_ gnd vdd FILL
XFILL_3__3637_ gnd vdd FILL
XFILL_3__3217_ gnd vdd FILL
X_2781_ _1291_ _325_ DIMUX[3] _445_ vdd gnd OAI21X1
X_2361_ _903__bF$buf3 _1031_ _1467_ vdd gnd NAND2X1
XFILL_4__2921_ gnd vdd FILL
XFILL_4__2501_ gnd vdd FILL
XFILL_6__2847_ gnd vdd FILL
X_3566_ _1725_ _1560_ _1596_ vdd gnd NAND2X1
XFILL_6__2427_ gnd vdd FILL
XFILL_6__2007_ gnd vdd FILL
X_3146_ _747_ _750_ _751_ vdd gnd AND2X2
XFILL_7__3490_ gnd vdd FILL
XFILL_7__3070_ gnd vdd FILL
XFILL_2__2839_ gnd vdd FILL
XFILL_0__2821_ gnd vdd FILL
XFILL_2__2419_ gnd vdd FILL
XFILL_0__2401_ gnd vdd FILL
XFILL_4__3706_ gnd vdd FILL
XFILL_7__1803_ gnd vdd FILL
XFILL_0__3606_ gnd vdd FILL
XFILL_6__2180_ gnd vdd FILL
XFILL_2__2592_ gnd vdd FILL
XFILL_2__2172_ gnd vdd FILL
XFILL_4__2098_ gnd vdd FILL
XFILL_3__2908_ gnd vdd FILL
XFILL_6_BUFX2_insert50 gnd vdd FILL
XFILL_6_BUFX2_insert51 gnd vdd FILL
XFILL_6_BUFX2_insert52 gnd vdd FILL
XFILL_6_BUFX2_insert53 gnd vdd FILL
XFILL_6_BUFX2_insert54 gnd vdd FILL
XFILL_6_BUFX2_insert55 gnd vdd FILL
XFILL_6_BUFX2_insert56 gnd vdd FILL
XFILL_6_BUFX2_insert57 gnd vdd FILL
XFILL_6_BUFX2_insert58 gnd vdd FILL
XFILL_6_BUFX2_insert59 gnd vdd FILL
X_2837_ _498_ _496_ RDY_bF$buf4 _499_ vdd gnd OAI21X1
X_2417_ _1282_ _125_ _126_ vdd gnd NAND2X1
XFILL_1__1794_ gnd vdd FILL
XFILL_7__2761_ gnd vdd FILL
XFILL_3__2661_ gnd vdd FILL
XFILL_3__2241_ gnd vdd FILL
XFILL_5__2587_ gnd vdd FILL
XFILL_5__2167_ gnd vdd FILL
XFILL_1__2999_ gnd vdd FILL
XFILL_1__2579_ gnd vdd FILL
XFILL_7__3546_ gnd vdd FILL
XFILL_1__2159_ gnd vdd FILL
XFILL_1__3520_ gnd vdd FILL
XFILL_1__3100_ gnd vdd FILL
XFILL_3__3026_ gnd vdd FILL
XFILL_6__1871_ gnd vdd FILL
X_2590_ PC[9] _276_ vdd gnd INVX1
X_2170_ _1266_ _1278_ _1279_ vdd gnd NOR2X1
XFILL_2__1863_ gnd vdd FILL
XFILL_4__1789_ gnd vdd FILL
XFILL_4__2730_ gnd vdd FILL
XFILL_4__2310_ gnd vdd FILL
XFILL_6__2656_ gnd vdd FILL
X_3375_ _1__bF$buf4 vdd DIMUX[0] clk_bF$buf5 DIHOLD[0] vdd 
+ gnd
+ DFFSR
XFILL_6__2236_ gnd vdd FILL
XFILL_2__2648_ gnd vdd FILL
XFILL_0__2630_ gnd vdd FILL
XFILL_0__2210_ gnd vdd FILL
XFILL_2__2228_ gnd vdd FILL
XFILL_4__3515_ gnd vdd FILL
XFILL_3__1932_ gnd vdd FILL
XFILL_5__1858_ gnd vdd FILL
XFILL_7__2817_ gnd vdd FILL
XFILL_3__2717_ gnd vdd FILL
X_1861_ _985_ _986_ vdd gnd INVX1
XFILL_6__3194_ gnd vdd FILL
XFILL_2__3186_ gnd vdd FILL
XFILL_6__1927_ gnd vdd FILL
X_2646_ _903__bF$buf1 _969_ _1221_ _1427_ _321_ vdd 
+ gnd
+ OAI22X1
X_2226_ _914__bF$buf0 _1075_ _1334_ vdd gnd NOR2X1
XFILL_7__2990_ gnd vdd FILL
XFILL_7__2570_ gnd vdd FILL
XFILL_7__2150_ gnd vdd FILL
XFILL_0__1901_ gnd vdd FILL
XFILL_2__1919_ gnd vdd FILL
XFILL_3__2890_ gnd vdd FILL
XFILL_3__2470_ gnd vdd FILL
XFILL_3__2050_ gnd vdd FILL
XFILL_5__2396_ gnd vdd FILL
XFILL_1__2388_ gnd vdd FILL
XFILL_3__3675_ gnd vdd FILL
XFILL_3__3255_ gnd vdd FILL
XFILL_6__2885_ gnd vdd FILL
XFILL_6__2465_ gnd vdd FILL
XFILL_6__2045_ gnd vdd FILL
X_3184_ _784_ _780_ _1018_ _785_ vdd gnd OAI21X1
XFILL_2__2877_ gnd vdd FILL
XFILL_2__2457_ gnd vdd FILL
XFILL_2__2037_ gnd vdd FILL
X_1917_ _1029_ _1033_ _1034_ vdd gnd NOR2X1
XFILL_0__3644_ gnd vdd FILL
XFILL_0__3224_ gnd vdd FILL
XFILL169650x3750 gnd vdd FILL
XFILL_7__2206_ gnd vdd FILL
XFILL_1__2600_ gnd vdd FILL
XFILL_3__2946_ gnd vdd FILL
XFILL_3__2526_ gnd vdd FILL
XFILL_3__2106_ gnd vdd FILL
XFILL_4__1810_ gnd vdd FILL
X_2875_ _1251_ _530_ vdd gnd INVX2
X_2455_ _153_ _156_ _155_ _157_ vdd gnd NAND3X1
X_2035_ _1144_ _1092_ _1145_ vdd gnd NOR2X1
XFILL_1__2197_ gnd vdd FILL
XFILL_7__3164_ gnd vdd FILL
XFILL_0__2915_ gnd vdd FILL
XFILL_3__3484_ gnd vdd FILL
XFILL_3__3064_ gnd vdd FILL
XFILL_6__2694_ gnd vdd FILL
XFILL_6__2274_ gnd vdd FILL
XFILL_2__2686_ gnd vdd FILL
XFILL_2__2266_ gnd vdd FILL
XFILL_4__3553_ gnd vdd FILL
XFILL_4__3133_ gnd vdd FILL
XFILL_6__3479_ gnd vdd FILL
XFILL_6__3059_ gnd vdd FILL
XFILL_3__1970_ gnd vdd FILL
XFILL_0__3453_ gnd vdd FILL
XFILL_0__3033_ gnd vdd FILL
XFILL_5__1896_ gnd vdd FILL
XFILL_1__1888_ gnd vdd FILL
XFILL_7__2435_ gnd vdd FILL
XFILL_3__2755_ gnd vdd FILL
XFILL_3__2335_ gnd vdd FILL
XFILL_5__3622_ gnd vdd FILL
XFILL_5__3202_ gnd vdd FILL
XFILL_1__3614_ gnd vdd FILL
XFILL_6__1965_ gnd vdd FILL
X_2684_ ABL[3] _323_ _1334_ _356_ vdd gnd AOI21X1
X_2264_ RDY_bF$buf5 _936_ _1371_ _1372_ vdd gnd OAI21X1
XFILL_2__1957_ gnd vdd FILL
XFILL_4__2824_ gnd vdd FILL
XFILL_4__2404_ gnd vdd FILL
X_3469_ CI alu_shift_right _1715_ vdd gnd NAND2X1
X_3049_ _308_ _663_ _660_ _664_ vdd gnd AOI21X1
XFILL_0__2724_ gnd vdd FILL
XFILL_0__2304_ gnd vdd FILL
XFILL_3__3293_ gnd vdd FILL
XFILL_4__3609_ gnd vdd FILL
XFILL_0__3509_ gnd vdd FILL
XFILL_6__2083_ gnd vdd FILL
XFILL_2__2495_ gnd vdd FILL
XFILL_2__2075_ gnd vdd FILL
X_1955_ _1029_ _918_ _1072_ vdd gnd NOR2X1
XFILL_6__3288_ gnd vdd FILL
XFILL_0__3262_ gnd vdd FILL
XFILL_7__2664_ gnd vdd FILL
XFILL_3__2984_ gnd vdd FILL
XFILL_3__2564_ gnd vdd FILL
XFILL_3__2144_ gnd vdd FILL
XFILL_5__3011_ gnd vdd FILL
XFILL_1__3003_ gnd vdd FILL
XFILL_6__1774_ gnd vdd FILL
X_2493_ _1016_ _136_ _188_ _189_ vdd gnd OAI21X1
X_2073_ _1181_ _1179_ _1182_ vdd gnd NOR2X1
XFILL_2__1766_ gnd vdd FILL
XFILL_4__2633_ gnd vdd FILL
XFILL_4__2213_ gnd vdd FILL
XFILL_6__2979_ gnd vdd FILL
X_3698_ _1741_[15] AB[15] vdd gnd BUFX2
XFILL_6__2559_ gnd vdd FILL
X_3278_ _852_ _853_ _822_ _854_ vdd gnd NAND3X1
XFILL_6__2139_ gnd vdd FILL
XFILL_0__2953_ gnd vdd FILL
XFILL_0__2533_ gnd vdd FILL
XFILL_6__3500_ gnd vdd FILL
XFILL_0__2113_ gnd vdd FILL
XFILL_7__1935_ gnd vdd FILL
XFILL_3__1835_ gnd vdd FILL
XFILL_5__2702_ gnd vdd FILL
X_1764_ RDY_bF$buf9 DI[6] _892_ vdd gnd NAND2X1
XFILL_4__3591_ gnd vdd FILL
XFILL_4__3171_ gnd vdd FILL
XFILL_6__3097_ gnd vdd FILL
XFILL_0__3491_ gnd vdd FILL
XFILL_2__3089_ gnd vdd FILL
XFILL_0__3071_ gnd vdd FILL
XFILL_4__1904_ gnd vdd FILL
X_2969_ _589_ _601_ vdd gnd INVX1
X_2549_ _1009_ _218_ _240_ _241_ vdd gnd OAI21X1
X_2129_ RDY_bF$buf8 _990_ _1238_ vdd gnd NAND2X1
XFILL_7__2893_ gnd vdd FILL
XFILL_7__2053_ gnd vdd FILL
XFILL_0__1804_ gnd vdd FILL
XFILL_3__2793_ gnd vdd FILL
XFILL_3__2373_ gnd vdd FILL
XFILL_5__2299_ gnd vdd FILL
XFILL_5__3660_ gnd vdd FILL
XFILL_5__3240_ gnd vdd FILL
XFILL_1__3652_ gnd vdd FILL
XFILL_1__3232_ gnd vdd FILL
XFILL_3__3578_ gnd vdd FILL
XFILL_3__3158_ gnd vdd FILL
XFILL_2__1995_ gnd vdd FILL
XFILL_4__2862_ gnd vdd FILL
XFILL_4__2442_ gnd vdd FILL
XFILL_4__2022_ gnd vdd FILL
XFILL_6__2788_ gnd vdd FILL
XFILL_6__2368_ gnd vdd FILL
X_3087_ _1227_ _658_ _689_ _656_ _698_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2762_ gnd vdd FILL
XFILL_0__2342_ gnd vdd FILL
XFILL_2__3301_ gnd vdd FILL
XFILL_4__3647_ gnd vdd FILL
XFILL_4__3227_ gnd vdd FILL
XFILL_0__3547_ gnd vdd FILL
XFILL_0__3127_ gnd vdd FILL
XFILL_7__2949_ gnd vdd FILL
XFILL_5__2931_ gnd vdd FILL
XFILL_7__2529_ gnd vdd FILL
XFILL_5__2511_ gnd vdd FILL
XFILL_7__2109_ gnd vdd FILL
XFILL_1__2923_ gnd vdd FILL
XFILL_1__2503_ gnd vdd FILL
XFILL_3__2849_ gnd vdd FILL
XFILL_3__2429_ gnd vdd FILL
XFILL_3__2009_ gnd vdd FILL
X_1993_ _AXYS[0]_[3] _1051_ _1053_ _1107_ vdd gnd NAND3X1
XFILL169350x61350 gnd vdd FILL
XFILL169950x100950 gnd vdd FILL
XFILL_1__3708_ gnd vdd FILL
X_2778_ _365_ _442_ _441_ _443_ vdd gnd OAI21X1
X_2358_ _931__bF$buf0 _1272_ _1464_ vdd gnd NOR2X1
XFILL_7__2282_ gnd vdd FILL
XFILL_3__2182_ gnd vdd FILL
XFILL_4__2918_ gnd vdd FILL
XFILL_7__3487_ gnd vdd FILL
XFILL_7__3067_ gnd vdd FILL
XFILL_0__2818_ gnd vdd FILL
XFILL_1__3461_ gnd vdd FILL
XFILL_1__3041_ gnd vdd FILL
XFILL_4__2671_ gnd vdd FILL
XFILL_4__2251_ gnd vdd FILL
XFILL_6__2597_ gnd vdd FILL
XFILL_6__2177_ gnd vdd FILL
XFILL_0__2991_ gnd vdd FILL
XFILL_2__2589_ gnd vdd FILL
XFILL_0__2571_ gnd vdd FILL
XFILL_0__2151_ gnd vdd FILL
XFILL_2__2169_ gnd vdd FILL
XFILL_2__3530_ gnd vdd FILL
XFILL_2__3110_ gnd vdd FILL
XFILL_4__3456_ gnd vdd FILL
XFILL_4__3036_ gnd vdd FILL
XFILL_3__1873_ gnd vdd FILL
XFILL_5__1799_ gnd vdd FILL
XFILL_7__2758_ gnd vdd FILL
XFILL_5__2740_ gnd vdd FILL
XFILL_7__2338_ gnd vdd FILL
XFILL_5__2320_ gnd vdd FILL
XFILL_1__2732_ gnd vdd FILL
XFILL_1__2312_ gnd vdd FILL
XFILL_3__2658_ gnd vdd FILL
XFILL_3__2238_ gnd vdd FILL
XFILL_5__3525_ gnd vdd FILL
XFILL_5__3105_ gnd vdd FILL
XFILL_1__3517_ gnd vdd FILL
XFILL_4__1942_ gnd vdd FILL
XFILL_6__1868_ gnd vdd FILL
X_2587_ _1083_ _194_ _273_ _274_ vdd gnd NAND3X1
X_2167_ _914__bF$buf1 _1272_ RDY_bF$buf1 _1276_ vdd gnd OAI21X1
XFILL_0__1842_ gnd vdd FILL
XFILL_2__2801_ gnd vdd FILL
XFILL_4__2727_ gnd vdd FILL
XFILL_4__2307_ gnd vdd FILL
XFILL_7__3296_ gnd vdd FILL
XFILL_0__2627_ gnd vdd FILL
XFILL_0__2207_ gnd vdd FILL
XFILL_1__3270_ gnd vdd FILL
XFILL_3__3196_ gnd vdd FILL
XFILL_3__1929_ gnd vdd FILL
XFILL_4__2480_ gnd vdd FILL
XFILL_4__2060_ gnd vdd FILL
XFILL_2__2398_ gnd vdd FILL
XFILL_0__2380_ gnd vdd FILL
X_1858_ _967_ _982_ _983_ vdd gnd NOR2X1
XFILL_7__1782_ gnd vdd FILL
XFILL_4__3265_ gnd vdd FILL
XFILL_0__3585_ gnd vdd FILL
XFILL_0__3165_ gnd vdd FILL
XFILL_7__2567_ gnd vdd FILL
XFILL_1__2961_ gnd vdd FILL
XFILL_1__2541_ gnd vdd FILL
XFILL_1__2121_ gnd vdd FILL
XFILL_3__2887_ gnd vdd FILL
XFILL_3__2467_ gnd vdd FILL
XFILL_3__2047_ gnd vdd FILL
XFILL_4__1751_ gnd vdd FILL
X_2396_ _1499_ _1500_ _1501_ vdd gnd NOR2X1
XFILL_2__2610_ gnd vdd FILL
XFILL_4__2956_ gnd vdd FILL
XFILL_4__2536_ gnd vdd FILL
XFILL_4__2116_ gnd vdd FILL
XFILL_0__2856_ gnd vdd FILL
XFILL_0__2436_ gnd vdd FILL
XFILL_0__2016_ gnd vdd FILL
XFILL_7__1838_ gnd vdd FILL
XFILL_5__1820_ gnd vdd FILL
XFILL_1__1812_ gnd vdd FILL
XFILL_5__2605_ gnd vdd FILL
XFILL_4__3494_ gnd vdd FILL
XFILL_4__3074_ gnd vdd FILL
XFILL_4__1807_ gnd vdd FILL
XFILL_7__2796_ gnd vdd FILL
XFILL_1__2770_ gnd vdd FILL
XFILL_1__2350_ gnd vdd FILL
XFILL_3__2696_ gnd vdd FILL
XFILL_3__2276_ gnd vdd FILL
XFILL_5__3563_ gnd vdd FILL
XFILL_5__3143_ gnd vdd FILL
XFILL_1__3555_ gnd vdd FILL
XFILL_1__3135_ gnd vdd FILL
XFILL_4__1980_ gnd vdd FILL
XFILL_2__1898_ gnd vdd FILL
XFILL_0__1880_ gnd vdd FILL
XFILL_4__2765_ gnd vdd FILL
XFILL_4__2345_ gnd vdd FILL
XFILL_0__2665_ gnd vdd FILL
XFILL_6__3632_ gnd vdd FILL
XFILL_0__2245_ gnd vdd FILL
XFILL_6__3212_ gnd vdd FILL
XFILL_2__3624_ gnd vdd FILL
XFILL_2__3204_ gnd vdd FILL
XFILL_3__1967_ gnd vdd FILL
XFILL_5__2834_ gnd vdd FILL
XFILL_5__2414_ gnd vdd FILL
XFILL_1__2826_ gnd vdd FILL
XFILL_1__2406_ gnd vdd FILL
X_1896_ DIMUX[6] _1015_ vdd gnd INVX2
XFILL_5__3619_ gnd vdd FILL
XFILL_7__2185_ gnd vdd FILL
XFILL_0__1936_ gnd vdd FILL
XFILL_6__2903_ gnd vdd FILL
X_3622_ _1651_ _1652_ vdd gnd INVX1
X_3202_ _720__bF$buf1 _687_ _AXYS[1]_[6] _796_ vdd gnd OAI21X1
XFILL_3__2085_ gnd vdd FILL
XFILL_4__2994_ gnd vdd FILL
XFILL_4__2574_ gnd vdd FILL
XFILL_4__2154_ gnd vdd FILL
XFILL_0__2894_ gnd vdd FILL
XFILL_0__2474_ gnd vdd FILL
XFILL_0__2054_ gnd vdd FILL
XFILL_6__3021_ gnd vdd FILL
XFILL_2__3013_ gnd vdd FILL
XFILL_7__1876_ gnd vdd FILL
XFILL_1__1850_ gnd vdd FILL
XFILL_3__1776_ gnd vdd FILL
XFILL_0__3259_ gnd vdd FILL
XFILL_5__2643_ gnd vdd FILL
XFILL_5__2223_ gnd vdd FILL
XFILL_1__2635_ gnd vdd FILL
XFILL_1__2215_ gnd vdd FILL
XFILL_3__3502_ gnd vdd FILL
XFILL_5__3008_ gnd vdd FILL
XFILL_4__1845_ gnd vdd FILL
XFILL_0__1745_ gnd vdd FILL
XFILL_6__2712_ gnd vdd FILL
X_3431_ _1__bF$buf8 vdd _99_ clk_bF$buf0 _AXYS[3]_[6] vdd 
+ gnd
+ DFFSR
X_3011_ _636_ _634_ _637_ vdd gnd NOR2X1
XFILL_2__2704_ gnd vdd FILL
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert22 gnd vdd FILL
XFILL_1_BUFX2_insert23 gnd vdd FILL
XFILL_5__3181_ gnd vdd FILL
XFILL_7__3199_ gnd vdd FILL
XFILL_1_BUFX2_insert24 gnd vdd FILL
XFILL_1_BUFX2_insert25 gnd vdd FILL
XFILL_1__3593_ gnd vdd FILL
XFILL_1__3173_ gnd vdd FILL
XFILL_3__3099_ gnd vdd FILL
XFILL_5__1914_ gnd vdd FILL
XFILL_1__1906_ gnd vdd FILL
XFILL_4__2383_ gnd vdd FILL
XFILL_6__3670_ gnd vdd FILL
XFILL_0__2283_ gnd vdd FILL
XFILL_6__3250_ gnd vdd FILL
XFILL_2__3662_ gnd vdd FILL
XFILL_2__3242_ gnd vdd FILL
XFILL_4__3588_ gnd vdd FILL
XFILL_4__3168_ gnd vdd FILL
X_2702_ _173_ _326_ _372_ _373_ vdd gnd OAI21X1
XFILL_0__3488_ gnd vdd FILL
XFILL_0__3068_ gnd vdd FILL
XFILL_5__2872_ gnd vdd FILL
XFILL_5__2452_ gnd vdd FILL
XFILL_5__2032_ gnd vdd FILL
XFILL_1__2864_ gnd vdd FILL
XFILL_1__2444_ gnd vdd FILL
XFILL_1__2024_ gnd vdd FILL
XFILL_3__3311_ gnd vdd FILL
XFILL_5__3657_ gnd vdd FILL
XFILL_5__3237_ gnd vdd FILL
XFILL_1__3649_ gnd vdd FILL
XFILL_1__3229_ gnd vdd FILL
X_2299_ _1179_ _1328_ _1406_ vdd gnd NOR2X1
XFILL_0__1974_ gnd vdd FILL
XFILL_6__2941_ gnd vdd FILL
X_3660_ _1685_ _1687_ _1684_ _1517_ vdd gnd OAI21X1
XFILL_6__2521_ gnd vdd FILL
X_3240_ _787_ _807_ _816_ _100_ vdd gnd OAI21X1
XFILL_6__2101_ gnd vdd FILL
XFILL_2__2933_ gnd vdd FILL
XFILL_2__2513_ gnd vdd FILL
XFILL_4__2859_ gnd vdd FILL
XFILL_4__2439_ gnd vdd FILL
XFILL_4__2019_ gnd vdd FILL
XFILL_0__2759_ gnd vdd FILL
XFILL_0__2339_ gnd vdd FILL
XFILL_6__3306_ gnd vdd FILL
XFILL_0__3700_ gnd vdd FILL
XFILL_4__2192_ gnd vdd FILL
XFILL_5__2928_ gnd vdd FILL
XFILL_5__2508_ gnd vdd FILL
XFILL_0__2092_ gnd vdd FILL
XFILL_2__3471_ gnd vdd FILL
XFILL_2__3051_ gnd vdd FILL
X_2931_ _1160_ _573_ _574_ vdd gnd NOR2X1
X_2511_ _1020_ _205_ _206_ vdd gnd NOR2X1
XFILL_0__3297_ gnd vdd FILL
XFILL_7__2699_ gnd vdd FILL
XFILL_5__2681_ gnd vdd FILL
XFILL_7__2279_ gnd vdd FILL
XFILL_5__2261_ gnd vdd FILL
XFILL_1__2673_ gnd vdd FILL
XFILL_7__3640_ gnd vdd FILL
XFILL_1__2253_ gnd vdd FILL
XFILL_7__3220_ gnd vdd FILL
XFILL_3__2599_ gnd vdd FILL
XFILL_3__2179_ gnd vdd FILL
XFILL_3__3540_ gnd vdd FILL
XFILL_3__3120_ gnd vdd FILL
XFILL_5__3466_ gnd vdd FILL
XFILL_5__3046_ gnd vdd FILL
XFILL_1__3458_ gnd vdd FILL
XFILL_1__3038_ gnd vdd FILL
XFILL_4__1883_ gnd vdd FILL
XFILL_0__1783_ gnd vdd FILL
XFILL_6__2750_ gnd vdd FILL
XFILL_6__2330_ gnd vdd FILL
XFILL_2__2742_ gnd vdd FILL
XFILL_2__2322_ gnd vdd FILL
XFILL_4__2668_ gnd vdd FILL
XFILL_4__2248_ gnd vdd FILL
XFILL_0__2988_ gnd vdd FILL
XFILL_0__2568_ gnd vdd FILL
XFILL_6__3535_ gnd vdd FILL
XFILL_0__2148_ gnd vdd FILL
XFILL_6__3115_ gnd vdd FILL
XFILL_2__3527_ gnd vdd FILL
XFILL_2__3107_ gnd vdd FILL
XFILL_5__1952_ gnd vdd FILL
XFILL_1__1944_ gnd vdd FILL
XFILL_7__2911_ gnd vdd FILL
XFILL_3__2811_ gnd vdd FILL
XFILL_5__2737_ gnd vdd FILL
XFILL_5__2317_ gnd vdd FILL
XFILL_2_BUFX2_insert70 gnd vdd FILL
XFILL_2_BUFX2_insert71 gnd vdd FILL
XFILL_2_BUFX2_insert72 gnd vdd FILL
XFILL_2_BUFX2_insert73 gnd vdd FILL
XFILL_2_BUFX2_insert74 gnd vdd FILL
XFILL_2_BUFX2_insert75 gnd vdd FILL
XFILL_2_BUFX2_insert76 gnd vdd FILL
XFILL_1__2729_ gnd vdd FILL
XFILL_2_BUFX2_insert77 gnd vdd FILL
XFILL_2_BUFX2_insert78 gnd vdd FILL
XFILL_1__2309_ gnd vdd FILL
XFILL_2_BUFX2_insert79 gnd vdd FILL
XFILL_2__3280_ gnd vdd FILL
X_1799_ _904_ _914__bF$buf3 _924_ _925_ vdd gnd NOR3X1
X_2740_ _148_ _405_ _406_ _407_ vdd gnd NAND3X1
X_2320_ _976_ _934_ _1427_ vdd gnd NOR2X1
XFILL_4__1939_ gnd vdd FILL
XFILL_5__2490_ gnd vdd FILL
XFILL_7__2088_ gnd vdd FILL
XFILL_5__2070_ gnd vdd FILL
XFILL_0__1839_ gnd vdd FILL
XFILL_6__2806_ gnd vdd FILL
X_3525_ alu_op[0] _1553_ _1554_ _1555_ vdd gnd OAI21X1
X_3105_ _709_ _714_ _710_ _67_ vdd gnd OAI21X1
XFILL_1__2482_ gnd vdd FILL
XFILL_1__2062_ gnd vdd FILL
XFILL_5__3695_ gnd vdd FILL
XFILL_5__3275_ gnd vdd FILL
XFILL_1__3267_ gnd vdd FILL
XFILL_2__2971_ gnd vdd FILL
XFILL_2__2551_ gnd vdd FILL
XFILL_2__2131_ gnd vdd FILL
XFILL_4__2897_ gnd vdd FILL
XFILL_4__2477_ gnd vdd FILL
XFILL_4__2057_ gnd vdd FILL
XFILL_0__2797_ gnd vdd FILL
XFILL_0__2377_ gnd vdd FILL
XFILL_5__1761_ gnd vdd FILL
XFILL_7__1779_ gnd vdd FILL
XFILL_1__1753_ gnd vdd FILL
XFILL_7__2720_ gnd vdd FILL
XFILL_7__2300_ gnd vdd FILL
XFILL_3__2620_ gnd vdd FILL
XFILL_3__2200_ gnd vdd FILL
XFILL_5__2966_ gnd vdd FILL
XFILL_5__2546_ gnd vdd FILL
XFILL_5__2126_ gnd vdd FILL
XFILL168450x18150 gnd vdd FILL
XFILL_1__2958_ gnd vdd FILL
XFILL_1__2538_ gnd vdd FILL
XFILL_1__2118_ gnd vdd FILL
XFILL_6__1830_ gnd vdd FILL
XFILL_2__1822_ gnd vdd FILL
XFILL_4__1748_ gnd vdd FILL
XFILL_6__2615_ gnd vdd FILL
X_3334_ _1__bF$buf1 vdd _12_ clk_bF$buf2 PC[10] vdd 
+ gnd
+ DFFSR
XFILL_1__2291_ gnd vdd FILL
XFILL_2__2607_ gnd vdd FILL
XFILL_5__3084_ gnd vdd FILL
XFILL_1__3496_ gnd vdd FILL
XFILL_1__3076_ gnd vdd FILL
XFILL_5__1817_ gnd vdd FILL
XFILL_1__1809_ gnd vdd FILL
XFILL_2__2780_ gnd vdd FILL
XFILL_2__2360_ gnd vdd FILL
XFILL_4__2286_ gnd vdd FILL
X_1820_ _926_ _911_ _946_ vdd gnd NAND2X1
XFILL_6__3573_ gnd vdd FILL
XFILL_0__2186_ gnd vdd FILL
XFILL_6__3153_ gnd vdd FILL
XFILL_2__3565_ gnd vdd FILL
XFILL_2__3145_ gnd vdd FILL
XFILL_5__1990_ gnd vdd FILL
X_2605_ _288_ _289_ vdd gnd INVX1
XFILL_1__1982_ gnd vdd FILL
XFILL_5__2775_ gnd vdd FILL
XFILL_5__2355_ gnd vdd FILL
XFILL_1__2767_ gnd vdd FILL
XFILL_1__2347_ gnd vdd FILL
XFILL_7__3314_ gnd vdd FILL
XFILL_3__3634_ gnd vdd FILL
XFILL_3__3214_ gnd vdd FILL
XFILL_4__1977_ gnd vdd FILL
XFILL_0__1877_ gnd vdd FILL
XFILL_6__2844_ gnd vdd FILL
X_3563_ _1580_ _1584_ _1592_ _1586_ _1593_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2424_ gnd vdd FILL
XFILL_6__2004_ gnd vdd FILL
X_3143_ HC _728_ _355_ _748_ vdd gnd OAI21X1
XFILL_2__2836_ gnd vdd FILL
XFILL_2__2416_ gnd vdd FILL
XFILL_7__1800_ gnd vdd FILL
XFILL_4__3703_ gnd vdd FILL
XFILL_6__3629_ gnd vdd FILL
XFILL_6__3209_ gnd vdd FILL
XFILL_0__3603_ gnd vdd FILL
XFILL_4__2095_ gnd vdd FILL
XFILL_3__2905_ gnd vdd FILL
XFILL_6_BUFX2_insert20 gnd vdd FILL
XFILL_6_BUFX2_insert21 gnd vdd FILL
XFILL_6_BUFX2_insert22 gnd vdd FILL
XFILL_6_BUFX2_insert23 gnd vdd FILL
XFILL_6_BUFX2_insert24 gnd vdd FILL
XFILL_6_BUFX2_insert25 gnd vdd FILL
X_2834_ _466_ _488_ _495_ _496_ vdd gnd AOI21X1
X_2414_ _122_ _1387_ _123_ vdd gnd NOR2X1
XFILL_1__1791_ gnd vdd FILL
XFILL_5__2584_ gnd vdd FILL
XFILL_5__2164_ gnd vdd FILL
X_3619_ _1648_ _1649_ vdd gnd INVX1
XFILL_1__2996_ gnd vdd FILL
XFILL_1__2576_ gnd vdd FILL
XFILL_7__3543_ gnd vdd FILL
XFILL_1__2156_ gnd vdd FILL
XFILL_3__3023_ gnd vdd FILL
XFILL169950x79350 gnd vdd FILL
XFILL_2__1860_ gnd vdd FILL
XFILL_4__1786_ gnd vdd FILL
XFILL_6__2653_ gnd vdd FILL
X_3372_ _1__bF$buf2 vdd _49_ clk_bF$buf10 dst_reg[0] vdd 
+ gnd
+ DFFSR
XFILL_6__2233_ gnd vdd FILL
XFILL_2__2645_ gnd vdd FILL
XFILL_2__2225_ gnd vdd FILL
XFILL_4__3512_ gnd vdd FILL
XFILL_6__3018_ gnd vdd FILL
XFILL_5__1855_ gnd vdd FILL
XFILL_1__1847_ gnd vdd FILL
XFILL_7__2814_ gnd vdd FILL
XFILL_3__2714_ gnd vdd FILL
XFILL_6__3191_ gnd vdd FILL
XFILL_2__3183_ gnd vdd FILL
XFILL_6__1924_ gnd vdd FILL
X_2643_ _1424_ _1021_ _318_ vdd gnd NOR2X1
X_2223_ _1329_ _1326_ _1330_ _1331_ vdd gnd OAI21X1
XFILL_2__1916_ gnd vdd FILL
XFILL_5__2393_ gnd vdd FILL
XFILL_6__2709_ gnd vdd FILL
X_3428_ _1__bF$buf10 vdd _96_ clk_bF$buf8 _AXYS[3]_[3] vdd 
+ gnd
+ DFFSR
X_3008_ _1179_ _530_ _578_ _553_ _634_ vdd 
+ gnd
+ OAI22X1
XFILL_1__2385_ gnd vdd FILL
XFILL_3__3672_ gnd vdd FILL
XFILL_3__3252_ gnd vdd FILL
XFILL_5__3598_ gnd vdd FILL
XFILL_5__3178_ gnd vdd FILL
XFILL_6__2882_ gnd vdd FILL
XFILL_6__2462_ gnd vdd FILL
X_3181_ AN _763_ _782_ vdd gnd NAND2X1
XFILL_6__2042_ gnd vdd FILL
XFILL_2__2874_ gnd vdd FILL
XFILL_2__2454_ gnd vdd FILL
XFILL_2__2034_ gnd vdd FILL
X_1914_ _898_ _907_ _1031_ vdd gnd NOR2X1
XFILL_6__3667_ gnd vdd FILL
XFILL_6__3247_ gnd vdd FILL
XFILL_2__3659_ gnd vdd FILL
XFILL_0__3641_ gnd vdd FILL
XFILL_0__3221_ gnd vdd FILL
XFILL_2__3239_ gnd vdd FILL
XFILL_7__2203_ gnd vdd FILL
XFILL_3__2943_ gnd vdd FILL
XFILL_3__2523_ gnd vdd FILL
XFILL_3__2103_ gnd vdd FILL
XFILL_5__2869_ gnd vdd FILL
XFILL_5__2449_ gnd vdd FILL
XFILL_5__2029_ gnd vdd FILL
XFILL_3__3308_ gnd vdd FILL
X_2872_ cond_code[2] _886__bF$buf5 _528_ vdd gnd NAND2X1
X_2452_ _147_ _1337_ _154_ vdd gnd NOR2X1
X_2032_ _1141_ _1139_ _1140_ _1142_ vdd gnd NAND3X1
XFILL_6__2938_ gnd vdd FILL
X_3657_ _1611_ _1592_ _1586_ _1685_ vdd gnd AOI21X1
XFILL_6__2518_ gnd vdd FILL
X_3237_ _720__bF$buf0 _808_ _AXYS[3]_[6] _815_ vdd gnd OAI21X1
XFILL_1__2194_ gnd vdd FILL
XFILL_7__3161_ gnd vdd FILL
XFILL_0__2912_ gnd vdd FILL
XFILL_3__3481_ gnd vdd FILL
XFILL_3__3061_ gnd vdd FILL
XFILL_6__2691_ gnd vdd FILL
XFILL_6__2271_ gnd vdd FILL
XFILL_2__2683_ gnd vdd FILL
XFILL_2__2263_ gnd vdd FILL
XFILL_4__2189_ gnd vdd FILL
XFILL_4__3550_ gnd vdd FILL
XFILL_4__3130_ gnd vdd FILL
XFILL_6__3476_ gnd vdd FILL
XFILL_0__2089_ gnd vdd FILL
XFILL_6__3056_ gnd vdd FILL
XFILL_2__3468_ gnd vdd FILL
XFILL_0__3450_ gnd vdd FILL
XFILL_2__3048_ gnd vdd FILL
XFILL_0__3030_ gnd vdd FILL
XFILL_5__1893_ gnd vdd FILL
X_2928_ op[2] _571_ vdd gnd INVX1
X_2508_ _200_ _202_ _203_ vdd gnd NOR2X1
XFILL_1__1885_ gnd vdd FILL
XFILL_7__2432_ gnd vdd FILL
XFILL_3__2752_ gnd vdd FILL
XFILL_3__2332_ gnd vdd FILL
XFILL_5__2678_ gnd vdd FILL
XFILL_5__2258_ gnd vdd FILL
XFILL_7__3637_ gnd vdd FILL
XFILL_7__3217_ gnd vdd FILL
XFILL_1__3611_ gnd vdd FILL
XFILL_3__3537_ gnd vdd FILL
XFILL_3__3117_ gnd vdd FILL
XFILL_6__1962_ gnd vdd FILL
X_2681_ _329_ _353_ vdd gnd INVX2
X_2261_ RDY_bF$buf5 _1018_ _1368_ _1369_ vdd gnd OAI21X1
XFILL_2__1954_ gnd vdd FILL
XFILL_4__2821_ gnd vdd FILL
XFILL_4__2401_ gnd vdd FILL
XFILL_6__2747_ gnd vdd FILL
X_3466_ _1711_ _1713_ AV vdd gnd NAND2X1
XFILL_6__2327_ gnd vdd FILL
X_3046_ plp _1027__bF$buf3 _661_ vdd gnd NOR2X1
XFILL_0__2721_ gnd vdd FILL
XFILL_2__2739_ gnd vdd FILL
XFILL_2__2319_ gnd vdd FILL
XFILL_0__2301_ gnd vdd FILL
XFILL_3__3290_ gnd vdd FILL
XFILL_4__3606_ gnd vdd FILL
XFILL_0__3506_ gnd vdd FILL
XFILL_5__1949_ gnd vdd FILL
XFILL_6__2080_ gnd vdd FILL
XFILL_2__2492_ gnd vdd FILL
XFILL_2__2072_ gnd vdd FILL
XFILL_3__2808_ gnd vdd FILL
X_1952_ _993_ _1069_ vdd gnd INVX2
XFILL_6__3285_ gnd vdd FILL
XFILL_2__3697_ gnd vdd FILL
XFILL_2__3277_ gnd vdd FILL
X_2737_ _268_ _313_ _1083_ _404_ vdd gnd OAI21X1
X_2317_ state[5] _954_ _1424_ vdd gnd NOR2X1
XFILL_7__2661_ gnd vdd FILL
XFILL_3__2981_ gnd vdd FILL
XFILL_3__2561_ gnd vdd FILL
XFILL_3__2141_ gnd vdd FILL
XFILL_5__2487_ gnd vdd FILL
XFILL_5__2067_ gnd vdd FILL
XFILL_1__2899_ gnd vdd FILL
XFILL_1__2479_ gnd vdd FILL
XFILL_1__2059_ gnd vdd FILL
XFILL_1__3000_ gnd vdd FILL
XFILL_6__1771_ gnd vdd FILL
X_2490_ _186_ _187_ vdd gnd INVX1
X_2070_ _1178_ _1179_ vdd gnd INVX2
XFILL_2__1763_ gnd vdd FILL
XFILL_4__2630_ gnd vdd FILL
XFILL_4__2210_ gnd vdd FILL
XFILL_6__2976_ gnd vdd FILL
X_3695_ _1741_[12] AB[12] vdd gnd BUFX2
XFILL_6__2556_ gnd vdd FILL
X_3275_ _931__bF$buf2 _984_ _210_ _851_ vdd gnd OAI21X1
XFILL_6__2136_ gnd vdd FILL
XFILL_0__2950_ gnd vdd FILL
XFILL_2__2968_ gnd vdd FILL
XFILL_2__2548_ gnd vdd FILL
XFILL_0__2530_ gnd vdd FILL
XFILL_2__2128_ gnd vdd FILL
XFILL_0__2110_ gnd vdd FILL
XFILL_7__1932_ gnd vdd FILL
XFILL_3__1832_ gnd vdd FILL
XFILL_0__3315_ gnd vdd FILL
XFILL_5__1758_ gnd vdd FILL
XFILL_7__2717_ gnd vdd FILL
XFILL_3__2617_ gnd vdd FILL
X_1761_ RDY_bF$buf9 DI[5] _890_ vdd gnd NAND2X1
XFILL_6__3094_ gnd vdd FILL
XFILL_2__3086_ gnd vdd FILL
XFILL_4__1901_ gnd vdd FILL
XFILL_6__1827_ gnd vdd FILL
X_2966_ _1149__bF$buf1 _551_ _599_ _43_ vdd gnd OAI21X1
X_2546_ ABL[3] _238_ vdd gnd INVX1
X_2126_ _902__bF$buf3 _912_ _1235_ vdd gnd NOR2X1
XFILL_7__2890_ gnd vdd FILL
XFILL_7__2050_ gnd vdd FILL
XFILL_2__1819_ gnd vdd FILL
XFILL_0__1801_ gnd vdd FILL
XFILL_3__2790_ gnd vdd FILL
XFILL_3__2370_ gnd vdd FILL
XFILL_5__2296_ gnd vdd FILL
XFILL_7__3675_ gnd vdd FILL
XFILL_1__2288_ gnd vdd FILL
XFILL_3__3575_ gnd vdd FILL
XFILL_3__3155_ gnd vdd FILL
XFILL_2__1992_ gnd vdd FILL
XFILL_6__2785_ gnd vdd FILL
XFILL_6__2365_ gnd vdd FILL
X_3084_ _695_ _690_ _696_ vdd gnd NAND2X1
XFILL_2__2777_ gnd vdd FILL
XFILL_2__2357_ gnd vdd FILL
X_1817_ _931__bF$buf0 _942_ _943_ vdd gnd NOR2X1
XFILL_4__3644_ gnd vdd FILL
XFILL_4__3224_ gnd vdd FILL
XFILL_0__3544_ gnd vdd FILL
XFILL_0__3124_ gnd vdd FILL
XFILL_5__1987_ gnd vdd FILL
XFILL_1__1979_ gnd vdd FILL
XFILL_7__2946_ gnd vdd FILL
XFILL_7__2106_ gnd vdd FILL
XFILL_1__2920_ gnd vdd FILL
XFILL_1__2500_ gnd vdd FILL
XFILL_3__2846_ gnd vdd FILL
XFILL_3__2426_ gnd vdd FILL
XFILL_3__2006_ gnd vdd FILL
X_1990_ _1074_ _1101_ _1104_ AI[2] vdd gnd OAI21X1
XFILL_5__3713_ gnd vdd FILL
XFILL_1__3705_ gnd vdd FILL
X_2775_ _409_ _423_ _417_ _440_ vdd gnd NAND3X1
X_2355_ _1457_ _1408_ _1460_ _1461_ vdd gnd NAND3X1
XFILL_4__2915_ gnd vdd FILL
XFILL_7__3484_ gnd vdd FILL
XFILL_1__2097_ gnd vdd FILL
XFILL_7__3064_ gnd vdd FILL
XFILL_0__2815_ gnd vdd FILL
XFILL_6__2594_ gnd vdd FILL
XFILL_6__2174_ gnd vdd FILL
XFILL_2__2586_ gnd vdd FILL
XFILL_2__2166_ gnd vdd FILL
XFILL169350x82950 gnd vdd FILL
XFILL_4__3453_ gnd vdd FILL
XFILL_4__3033_ gnd vdd FILL
XFILL_3__1870_ gnd vdd FILL
XFILL_5__1796_ gnd vdd FILL
XFILL_1__1788_ gnd vdd FILL
XFILL_7__2335_ gnd vdd FILL
XFILL_3__2655_ gnd vdd FILL
XFILL_3__2235_ gnd vdd FILL
XFILL_5__3522_ gnd vdd FILL
XFILL_5__3102_ gnd vdd FILL
XFILL_1__3514_ gnd vdd FILL
XFILL_6__1865_ gnd vdd FILL
X_2584_ _269_ _270_ _206_ _271_ vdd gnd OAI21X1
X_2164_ _931__bF$buf4 _1272_ RDY_bF$buf6 _1273_ vdd gnd OAI21X1
XFILL_2__1857_ gnd vdd FILL
XFILL_4__2724_ gnd vdd FILL
XFILL_4__2304_ gnd vdd FILL
X_3369_ _1__bF$buf9 vdd _46_ clk_bF$buf9 index_y vdd 
+ gnd
+ DFFSR
XFILL168150x64950 gnd vdd FILL
XFILL_7__3293_ gnd vdd FILL
XFILL_0__2624_ gnd vdd FILL
XFILL_0__2204_ gnd vdd FILL
XFILL_3__3193_ gnd vdd FILL
XFILL_4__3509_ gnd vdd FILL
XFILL_3__1926_ gnd vdd FILL
XFILL_2__2395_ gnd vdd FILL
X_1855_ _975_ _979_ _980_ vdd gnd NOR2X1
XFILL_4__3262_ gnd vdd FILL
XFILL_6__3188_ gnd vdd FILL
XFILL_0__3582_ gnd vdd FILL
XFILL_0__3162_ gnd vdd FILL
XFILL_7__2564_ gnd vdd FILL
XFILL_3__2884_ gnd vdd FILL
XFILL_3__2464_ gnd vdd FILL
XFILL_3__2044_ gnd vdd FILL
XFILL_3__3669_ gnd vdd FILL
XFILL_3__3249_ gnd vdd FILL
X_2393_ _1311_ _1321_ _1498_ vdd gnd AND2X2
XFILL_4__2953_ gnd vdd FILL
XFILL_4__2533_ gnd vdd FILL
XFILL_4__2113_ gnd vdd FILL
XFILL_6__2879_ gnd vdd FILL
X_3598_ _1627_ _1628_ vdd gnd INVX1
XFILL_6__2459_ gnd vdd FILL
XFILL_6__2039_ gnd vdd FILL
X_3178_ _722_ _778_ _779_ _75_ vdd gnd OAI21X1
XFILL_0__2853_ gnd vdd FILL
XFILL_0__2433_ gnd vdd FILL
XFILL_0__2013_ gnd vdd FILL
XFILL_7__1835_ gnd vdd FILL
XFILL_0__3638_ gnd vdd FILL
XFILL_0__3218_ gnd vdd FILL
XFILL_5__2602_ gnd vdd FILL
XFILL_4__3491_ gnd vdd FILL
XFILL_4__3071_ gnd vdd FILL
XFILL_4__1804_ gnd vdd FILL
X_2869_ RDY_bF$buf2 _1373_ _526_ _19_ vdd gnd OAI21X1
X_2449_ _151_ _152_ vdd gnd INVX1
X_2029_ _AXYS[1]_[7] _1047_ _1139_ vdd gnd NAND2X1
XFILL_7__2793_ gnd vdd FILL
XFILL_3__2693_ gnd vdd FILL
XFILL_3__2273_ gnd vdd FILL
XFILL_5__2199_ gnd vdd FILL
XFILL_5__3560_ gnd vdd FILL
XFILL_5__3140_ gnd vdd FILL
XFILL_0__2909_ gnd vdd FILL
XFILL_1__3552_ gnd vdd FILL
XFILL_1__3132_ gnd vdd FILL
XFILL_3__3478_ gnd vdd FILL
XFILL_3__3058_ gnd vdd FILL
XFILL_2__1895_ gnd vdd FILL
XFILL_4__2762_ gnd vdd FILL
XFILL_4__2342_ gnd vdd FILL
XFILL_6__2688_ gnd vdd FILL
XFILL_6__2268_ gnd vdd FILL
XFILL_0__2662_ gnd vdd FILL
XFILL_0__2242_ gnd vdd FILL
XFILL_2__3621_ gnd vdd FILL
XFILL_2__3201_ gnd vdd FILL
XFILL_4__3547_ gnd vdd FILL
XFILL_4__3127_ gnd vdd FILL
XFILL_3__1964_ gnd vdd FILL
XFILL_0__3027_ gnd vdd FILL
XFILL_7__2849_ gnd vdd FILL
XFILL_5__2831_ gnd vdd FILL
XFILL_7__2429_ gnd vdd FILL
XFILL_5__2411_ gnd vdd FILL
XFILL_7__2009_ gnd vdd FILL
XFILL_1__2823_ gnd vdd FILL
XFILL_1__2403_ gnd vdd FILL
XFILL_3__2749_ gnd vdd FILL
XFILL_3__2329_ gnd vdd FILL
X_1893_ DIMUX[5] _1013_ vdd gnd INVX2
XFILL_5__3616_ gnd vdd FILL
XFILL_1__3608_ gnd vdd FILL
XFILL_6__1959_ gnd vdd FILL
X_2678_ RDY_bF$buf3 _1007_ _350_ _348_ _4_ vdd 
+ gnd
+ OAI22X1
X_2258_ _1154_ _1186_ _1185_ _1366_ vdd gnd OAI21X1
XFILL_7__2182_ gnd vdd FILL
XFILL_0__1933_ gnd vdd FILL
XFILL_6__2900_ gnd vdd FILL
XFILL_3__2082_ gnd vdd FILL
XFILL_4__2818_ gnd vdd FILL
XFILL_0__2718_ gnd vdd FILL
XFILL_3__3287_ gnd vdd FILL
XFILL_4__2991_ gnd vdd FILL
XFILL_4__2571_ gnd vdd FILL
XFILL_4__2151_ gnd vdd FILL
XFILL_6__2497_ gnd vdd FILL
XFILL_6__2077_ gnd vdd FILL
XFILL_0__2891_ gnd vdd FILL
XFILL_2__2489_ gnd vdd FILL
XFILL_0__2471_ gnd vdd FILL
XFILL_2__2069_ gnd vdd FILL
XFILL_0__2051_ gnd vdd FILL
X_1949_ _1062_ _1065_ _1066_ vdd gnd NOR2X1
XFILL_2__3010_ gnd vdd FILL
XFILL_0__3676_ gnd vdd FILL
XFILL_3__1773_ gnd vdd FILL
XFILL_0__3256_ gnd vdd FILL
XFILL_7__2658_ gnd vdd FILL
XFILL_5__2640_ gnd vdd FILL
XFILL_7__2238_ gnd vdd FILL
XFILL_5__2220_ gnd vdd FILL
XFILL_1__2632_ gnd vdd FILL
XFILL_1__2212_ gnd vdd FILL
XFILL_3__2978_ gnd vdd FILL
XFILL_3__2558_ gnd vdd FILL
XFILL_3__2138_ gnd vdd FILL
XFILL_5__3005_ gnd vdd FILL
XFILL_4__1842_ gnd vdd FILL
XFILL_6__1768_ gnd vdd FILL
X_2487_ _1014_ _136_ _183_ _184_ vdd gnd OAI21X1
X_2067_ IRHOLD_valid IRHOLD[4] _1176_ vdd gnd NAND2X1
XFILL_2__2701_ gnd vdd FILL
XFILL_4__2627_ gnd vdd FILL
XFILL_4__2207_ gnd vdd FILL
XFILL_7__3196_ gnd vdd FILL
XFILL_0__2947_ gnd vdd FILL
XFILL_0__2527_ gnd vdd FILL
XFILL_0__2107_ gnd vdd FILL
XFILL_1__3590_ gnd vdd FILL
XFILL_1__3170_ gnd vdd FILL
XFILL_3__3096_ gnd vdd FILL
XFILL_5__1911_ gnd vdd FILL
XFILL_7__1929_ gnd vdd FILL
XFILL_1__1903_ gnd vdd FILL
XFILL_3__1829_ gnd vdd FILL
XFILL_4__2380_ gnd vdd FILL
XFILL_0__2280_ gnd vdd FILL
XFILL_2__2298_ gnd vdd FILL
X_1758_ _886__bF$buf3 DI[4] _887_ _888_ vdd gnd OAI21X1
XFILL_4__3585_ gnd vdd FILL
XFILL_4__3165_ gnd vdd FILL
XFILL169350x14550 gnd vdd FILL
XFILL_0__3485_ gnd vdd FILL
XFILL_0__3065_ gnd vdd FILL
XFILL_7__2887_ gnd vdd FILL
XFILL_7__2467_ gnd vdd FILL
XFILL_1__2861_ gnd vdd FILL
XFILL_1__2441_ gnd vdd FILL
XFILL_1__2021_ gnd vdd FILL
XFILL_3__2787_ gnd vdd FILL
XFILL_3__2367_ gnd vdd FILL
XFILL_5__3654_ gnd vdd FILL
XFILL_5__3234_ gnd vdd FILL
XFILL_1__3646_ gnd vdd FILL
XFILL_1__3226_ gnd vdd FILL
XFILL_6__1997_ gnd vdd FILL
X_2296_ _1367_ _1402_ _1351_ _1403_ vdd gnd OAI21X1
XFILL_2__1989_ gnd vdd FILL
XFILL_0__1971_ gnd vdd FILL
XFILL_2__2930_ gnd vdd FILL
XFILL_2__2510_ gnd vdd FILL
XFILL_4__2856_ gnd vdd FILL
XFILL_4__2436_ gnd vdd FILL
XFILL_4__2016_ gnd vdd FILL
XFILL_0__2756_ gnd vdd FILL
XFILL_0__2336_ gnd vdd FILL
XFILL_6__3303_ gnd vdd FILL
XFILL_2__3715_ gnd vdd FILL
XFILL_5__2925_ gnd vdd FILL
XFILL_5__2505_ gnd vdd FILL
XFILL_1__2917_ gnd vdd FILL
X_1987_ ABH[2] _1102_ vdd gnd INVX1
XFILL_0__3294_ gnd vdd FILL
XFILL_7__2696_ gnd vdd FILL
X_3713_ _1742_[6] DO[6] vdd gnd BUFX2
XFILL_1__2670_ gnd vdd FILL
XFILL_1__2250_ gnd vdd FILL
XFILL_3__2596_ gnd vdd FILL
XFILL_3__2176_ gnd vdd FILL
XFILL_5__3463_ gnd vdd FILL
XFILL_5__3043_ gnd vdd FILL
XFILL_1__3455_ gnd vdd FILL
XFILL_1__3035_ gnd vdd FILL
XFILL_4__1880_ gnd vdd FILL
XFILL_2__1798_ gnd vdd FILL
XFILL_0__1780_ gnd vdd FILL
XFILL_4__2665_ gnd vdd FILL
XFILL_4__2245_ gnd vdd FILL
XFILL_0__2985_ gnd vdd FILL
XFILL_0__2565_ gnd vdd FILL
XFILL_6__3532_ gnd vdd FILL
XFILL_0__2145_ gnd vdd FILL
XFILL169050x136950 gnd vdd FILL
XFILL_6__3112_ gnd vdd FILL
XFILL_2__3524_ gnd vdd FILL
XFILL_2__3104_ gnd vdd FILL
XFILL_7__1967_ gnd vdd FILL
XFILL_1__1941_ gnd vdd FILL
XFILL_3__1867_ gnd vdd FILL
XFILL_5__2734_ gnd vdd FILL
XFILL_5__2314_ gnd vdd FILL
XFILL_2_BUFX2_insert40 gnd vdd FILL
XFILL_2_BUFX2_insert41 gnd vdd FILL
XFILL_2_BUFX2_insert42 gnd vdd FILL
XFILL_2_BUFX2_insert43 gnd vdd FILL
XFILL_2_BUFX2_insert44 gnd vdd FILL
XFILL_2_BUFX2_insert45 gnd vdd FILL
XFILL_2_BUFX2_insert46 gnd vdd FILL
XFILL_1__2726_ gnd vdd FILL
XFILL_2_BUFX2_insert47 gnd vdd FILL
XFILL_2_BUFX2_insert48 gnd vdd FILL
XFILL_1__2306_ gnd vdd FILL
XFILL_2_BUFX2_insert49 gnd vdd FILL
X_1796_ inc _895_ _922_ vdd gnd NAND2X1
XFILL_5__3519_ gnd vdd FILL
XFILL_4__1936_ gnd vdd FILL
XFILL_7__2085_ gnd vdd FILL
XFILL_0__1836_ gnd vdd FILL
XFILL_6__2803_ gnd vdd FILL
X_3522_ _1716_ BI[2] _1551_ _1717_ _1552_ vdd 
+ gnd
+ AOI22X1
X_3102_ CO _704_ _712_ vdd gnd NAND2X1
XFILL_5__3692_ gnd vdd FILL
XFILL_5__3272_ gnd vdd FILL
XFILL_1__3264_ gnd vdd FILL
XFILL_4__2894_ gnd vdd FILL
XFILL_4__2474_ gnd vdd FILL
XFILL_4__2054_ gnd vdd FILL
XFILL_0__2794_ gnd vdd FILL
XFILL_0__2374_ gnd vdd FILL
XFILL_7__1776_ gnd vdd FILL
XFILL_4__3259_ gnd vdd FILL
XFILL_1__1750_ gnd vdd FILL
XFILL_0__3579_ gnd vdd FILL
XFILL_0__3159_ gnd vdd FILL
XFILL169650x57750 gnd vdd FILL
XFILL_5__2963_ gnd vdd FILL
XFILL_5__2543_ gnd vdd FILL
XFILL_5__2123_ gnd vdd FILL
XFILL_1__2955_ gnd vdd FILL
XFILL_1__2535_ gnd vdd FILL
XFILL_1__2115_ gnd vdd FILL
XFILL_4__1745_ gnd vdd FILL
XFILL_6__2612_ gnd vdd FILL
X_3331_ _1__bF$buf4 vdd _9_ clk_bF$buf5 PC[7] vdd 
+ gnd
+ DFFSR
XFILL_2__2604_ gnd vdd FILL
XFILL_5__3081_ gnd vdd FILL
XFILL_7__3099_ gnd vdd FILL
XFILL_1__3493_ gnd vdd FILL
XFILL_1__3073_ gnd vdd FILL
XFILL_5__1814_ gnd vdd FILL
XFILL_1__1806_ gnd vdd FILL
XFILL168450x39750 gnd vdd FILL
XFILL_4__2283_ gnd vdd FILL
XFILL_6__3570_ gnd vdd FILL
XFILL_0__2183_ gnd vdd FILL
XFILL_6__3150_ gnd vdd FILL
XFILL_2__3562_ gnd vdd FILL
XFILL_2__3142_ gnd vdd FILL
XFILL_4__3488_ gnd vdd FILL
XFILL_4__3068_ gnd vdd FILL
X_2602_ ADD[3] _198_ _272_ DIMUX[3] _286_ vdd 
+ gnd
+ AOI22X1
XFILL_5__2772_ gnd vdd FILL
XFILL_5__2352_ gnd vdd FILL
XFILL_1__2764_ gnd vdd FILL
XFILL_1__2344_ gnd vdd FILL
XFILL_7__3311_ gnd vdd FILL
XFILL_3__3631_ gnd vdd FILL
XFILL_3__3211_ gnd vdd FILL
XFILL_5__3557_ gnd vdd FILL
XFILL_5__3137_ gnd vdd FILL
XFILL_1__3549_ gnd vdd FILL
XFILL_1__3129_ gnd vdd FILL
XFILL_4__1974_ gnd vdd FILL
X_2199_ RDY_bF$buf6 _1020_ _1307_ _1308_ vdd gnd OAI21X1
XFILL_0__1874_ gnd vdd FILL
XFILL_6__2841_ gnd vdd FILL
X_3560_ _1572_ _1576_ alu_shift_right _1590_ vdd gnd AOI21X1
XFILL_6__2421_ gnd vdd FILL
XFILL_6__2001_ gnd vdd FILL
X_3140_ _722_ _744_ _745_ _71_ vdd gnd OAI21X1
XFILL_2__2833_ gnd vdd FILL
XFILL_2__2413_ gnd vdd FILL
XFILL_4__2759_ gnd vdd FILL
XFILL_4__2339_ gnd vdd FILL
XFILL_4__3700_ gnd vdd FILL
XFILL_0__2659_ gnd vdd FILL
XFILL_6__3626_ gnd vdd FILL
XFILL_0__2239_ gnd vdd FILL
XFILL_6__3206_ gnd vdd FILL
XFILL169950x108150 gnd vdd FILL
XFILL_0__3600_ gnd vdd FILL
XFILL_2__3618_ gnd vdd FILL
XFILL_4__2092_ gnd vdd FILL
XFILL_3__2902_ gnd vdd FILL
XFILL_5__2828_ gnd vdd FILL
XFILL_5__2408_ gnd vdd FILL
XFILL_4__3297_ gnd vdd FILL
X_2831_ _1013_ _351_ _492_ _493_ vdd gnd OAI21X1
X_2411_ _1289_ _1270_ _120_ vdd gnd NOR2X1
XFILL_0__3197_ gnd vdd FILL
XFILL_5__2581_ gnd vdd FILL
XFILL_5__2161_ gnd vdd FILL
XFILL_7__2179_ gnd vdd FILL
X_3616_ alu_op[3] BI[6] _1740_ _1646_ vdd gnd OAI21X1
XFILL_1__2993_ gnd vdd FILL
XFILL_1__2573_ gnd vdd FILL
XFILL_7__3540_ gnd vdd FILL
XFILL_1__2153_ gnd vdd FILL
XFILL_7__3120_ gnd vdd FILL
XFILL_3__2499_ gnd vdd FILL
XFILL_3__2079_ gnd vdd FILL
XFILL_3__3020_ gnd vdd FILL
XFILL_4__1783_ gnd vdd FILL
XFILL_6__2650_ gnd vdd FILL
XFILL_6__2230_ gnd vdd FILL
XFILL_2__2642_ gnd vdd FILL
XFILL_2__2222_ gnd vdd FILL
XFILL_4__2988_ gnd vdd FILL
XFILL_4__2568_ gnd vdd FILL
XFILL_4__2148_ gnd vdd FILL
XFILL_0__2888_ gnd vdd FILL
XFILL_0__2468_ gnd vdd FILL
XFILL_0__2048_ gnd vdd FILL
XFILL_6__3015_ gnd vdd FILL
XFILL_2__3007_ gnd vdd FILL
XFILL_5__1852_ gnd vdd FILL
XFILL_1__1844_ gnd vdd FILL
XFILL_7__2811_ gnd vdd FILL
XFILL_3__2711_ gnd vdd FILL
XFILL_5__2637_ gnd vdd FILL
XFILL_5__2217_ gnd vdd FILL
XFILL_1__2629_ gnd vdd FILL
XFILL_1__2209_ gnd vdd FILL
XFILL_2__3180_ gnd vdd FILL
XFILL_6__1921_ gnd vdd FILL
X_2640_ _929_ _314_ _313_ _315_ vdd gnd OAI21X1
X_2220_ _1212_ _1327_ _1328_ vdd gnd NAND2X1
XFILL_2__1913_ gnd vdd FILL
XFILL_4__1839_ gnd vdd FILL
XFILL_5__2390_ gnd vdd FILL
XFILL_6__2706_ gnd vdd FILL
X_3425_ _1__bF$buf8 vdd _93_ clk_bF$buf8 _AXYS[3]_[0] vdd 
+ gnd
+ DFFSR
X_3005_ dst_reg[1] _1149__bF$buf0 _531_ _631_ _632_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2382_ gnd vdd FILL
XFILL169950x10950 gnd vdd FILL
XFILL_5__3595_ gnd vdd FILL
XFILL_5__3175_ gnd vdd FILL
XFILL_1__3587_ gnd vdd FILL
XFILL_1__3167_ gnd vdd FILL
XFILL_5__1908_ gnd vdd FILL
XFILL_2__2871_ gnd vdd FILL
XFILL_2__2451_ gnd vdd FILL
XFILL_2__2031_ gnd vdd FILL
XFILL_4__2797_ gnd vdd FILL
XFILL_4__2377_ gnd vdd FILL
X_1911_ _969_ _900_ _1028_ vdd gnd NAND2X1
XFILL_0__2697_ gnd vdd FILL
XFILL_6__3664_ gnd vdd FILL
XFILL_0__2277_ gnd vdd FILL
XFILL_6__3244_ gnd vdd FILL
XFILL_2__3656_ gnd vdd FILL
XFILL_2__3236_ gnd vdd FILL
XFILL_7__2620_ gnd vdd FILL
XFILL_7__2200_ gnd vdd FILL
XFILL_3__1999_ gnd vdd FILL
XFILL_3__2940_ gnd vdd FILL
XFILL_3__2520_ gnd vdd FILL
XFILL_3__2100_ gnd vdd FILL
XFILL_5__2866_ gnd vdd FILL
XFILL_5__2446_ gnd vdd FILL
XFILL_5__2026_ gnd vdd FILL
XFILL_1__2858_ gnd vdd FILL
XFILL_1__2438_ gnd vdd FILL
XFILL_1__2018_ gnd vdd FILL
XFILL_3__3305_ gnd vdd FILL
XFILL_0__1968_ gnd vdd FILL
XFILL_6__2935_ gnd vdd FILL
X_3654_ HC _1714__bF$buf3 _1683_ vdd gnd NAND2X1
XFILL_6__2515_ gnd vdd FILL
X_3234_ _757_ _807_ _813_ _97_ vdd gnd OAI21X1
XFILL_1__2191_ gnd vdd FILL
XFILL_2__2927_ gnd vdd FILL
XFILL_2__2507_ gnd vdd FILL
XFILL_2__2680_ gnd vdd FILL
XFILL_2__2260_ gnd vdd FILL
XFILL_4__2186_ gnd vdd FILL
XFILL_6__3473_ gnd vdd FILL
XFILL_0__2086_ gnd vdd FILL
XFILL_6__3053_ gnd vdd FILL
XFILL_2__3465_ gnd vdd FILL
XFILL_2__3045_ gnd vdd FILL
XFILL_5__1890_ gnd vdd FILL
X_2925_ _1215_ _568_ _569_ vdd gnd NOR2X1
X_2505_ _199_ _200_ vdd gnd INVX2
XFILL_1__1882_ gnd vdd FILL
XFILL_5__2675_ gnd vdd FILL
XFILL_5__2255_ gnd vdd FILL
XFILL_1__2667_ gnd vdd FILL
XFILL_1__2247_ gnd vdd FILL
XFILL_7__3214_ gnd vdd FILL
XFILL_3__3534_ gnd vdd FILL
XFILL_3__3114_ gnd vdd FILL
XFILL_2__1951_ gnd vdd FILL
XFILL_4__1877_ gnd vdd FILL
XFILL_0__1777_ gnd vdd FILL
XFILL_6__2744_ gnd vdd FILL
X_3463_ _1708_ _1710_ _1706_ _1711_ vdd gnd OAI21X1
XFILL_6__2324_ gnd vdd FILL
X_3043_ _657_ _658_ vdd gnd INVX1
XFILL_2__2736_ gnd vdd FILL
XFILL_2__2316_ gnd vdd FILL
XFILL_4__3603_ gnd vdd FILL
XFILL_6__3529_ gnd vdd FILL
XFILL_6__3109_ gnd vdd FILL
XFILL_0__3503_ gnd vdd FILL
XFILL_5__1946_ gnd vdd FILL
XFILL_1__1938_ gnd vdd FILL
XFILL_3__2805_ gnd vdd FILL
XFILL_6__3282_ gnd vdd FILL
XFILL_2__3694_ gnd vdd FILL
XFILL_2__3274_ gnd vdd FILL
X_2734_ RDY_bF$buf0 _401_ _402_ vdd gnd NAND2X1
X_2314_ _1419_ _1420_ _1421_ vdd gnd AND2X2
XFILL_5__2484_ gnd vdd FILL
XFILL_5__2064_ gnd vdd FILL
X_3519_ _1548_ _1546_ _1549_ vdd gnd AND2X2
XFILL_1__2896_ gnd vdd FILL
XFILL_1__2476_ gnd vdd FILL
XFILL_1__2056_ gnd vdd FILL
XFILL_5__3269_ gnd vdd FILL
XFILL_2__1760_ gnd vdd FILL
XFILL_6__2973_ gnd vdd FILL
XFILL_6__2553_ gnd vdd FILL
X_3692_ _1741_[1] AB[1] vdd gnd BUFX2
X_3272_ state[5] state[4] _1225_ _848_ vdd gnd OAI21X1
XFILL_6__2133_ gnd vdd FILL
XFILL_2__2965_ gnd vdd FILL
XFILL_2__2545_ gnd vdd FILL
XFILL_2__2125_ gnd vdd FILL
XFILL_0__3312_ gnd vdd FILL
XFILL_5__1755_ gnd vdd FILL
XFILL_1__1747_ gnd vdd FILL
XFILL_7__2714_ gnd vdd FILL
XFILL_3__2614_ gnd vdd FILL
XFILL_6__3091_ gnd vdd FILL
XFILL_2__3083_ gnd vdd FILL
XFILL_6__1824_ gnd vdd FILL
X_2963_ inc _1149__bF$buf4 _531_ _572_ _598_ vdd 
+ gnd
+ AOI22X1
X_2543_ _1100_ _195_ _235_ _236_ vdd gnd AOI21X1
X_2123_ _886__bF$buf6 _916_ _1232_ vdd gnd NAND2X1
XFILL_2__1816_ gnd vdd FILL
XFILL_5__2293_ gnd vdd FILL
XFILL_6__2609_ gnd vdd FILL
X_3328_ _1__bF$buf4 vdd _6_ clk_bF$buf5 PC[4] vdd 
+ gnd
+ DFFSR
XFILL_7__3672_ gnd vdd FILL
XFILL_1__2285_ gnd vdd FILL
XFILL_7_BUFX2_insert61 gnd vdd FILL
XFILL_3__3572_ gnd vdd FILL
XFILL_7_BUFX2_insert63 gnd vdd FILL
XFILL_3__3152_ gnd vdd FILL
XFILL_7_BUFX2_insert64 gnd vdd FILL
XFILL_7_BUFX2_insert66 gnd vdd FILL
XFILL_7_BUFX2_insert67 gnd vdd FILL
XFILL_5__3498_ gnd vdd FILL
XFILL_5__3078_ gnd vdd FILL
XFILL_7_BUFX2_insert69 gnd vdd FILL
XFILL_6__2782_ gnd vdd FILL
XFILL_6__2362_ gnd vdd FILL
X_3081_ plp _692_ _1027__bF$buf4 _693_ vdd gnd AOI21X1
XFILL_2__2774_ gnd vdd FILL
XFILL_2__2354_ gnd vdd FILL
X_1814_ _929_ _939_ _940_ vdd gnd NAND2X1
XFILL_4__3641_ gnd vdd FILL
XFILL_4__3221_ gnd vdd FILL
XFILL_6__3567_ gnd vdd FILL
XFILL_6__3147_ gnd vdd FILL
XFILL_0__3541_ gnd vdd FILL
XFILL_2__3559_ gnd vdd FILL
XFILL_0__3121_ gnd vdd FILL
XFILL_2__3139_ gnd vdd FILL
XFILL_5__1984_ gnd vdd FILL
XFILL_1__1976_ gnd vdd FILL
XFILL_7__2943_ gnd vdd FILL
XFILL_7__2103_ gnd vdd FILL
XFILL_3__2843_ gnd vdd FILL
XFILL_3__2423_ gnd vdd FILL
XFILL_3__2003_ gnd vdd FILL
XFILL_5__2769_ gnd vdd FILL
XFILL_5__2349_ gnd vdd FILL
XFILL_5__3710_ gnd vdd FILL
XFILL_1__3702_ gnd vdd FILL
XFILL_3__3628_ gnd vdd FILL
XFILL_3__3208_ gnd vdd FILL
X_2772_ _436_ _433_ _437_ vdd gnd AND2X2
X_2352_ _1410_ _1414_ _1458_ vdd gnd OR2X2
XFILL_4__2912_ gnd vdd FILL
XFILL_6__2838_ gnd vdd FILL
X_3557_ alu_op[1] _1575_ alu_op[0] _1587_ vdd gnd MUX2X1
XFILL_6__2418_ gnd vdd FILL
X_3137_ _732_ _741_ _742_ _743_ vdd gnd AOI21X1
XFILL_1__2094_ gnd vdd FILL
XFILL_7__3061_ gnd vdd FILL
XFILL_0__2812_ gnd vdd FILL
XFILL_1__3299_ gnd vdd FILL
XFILL_6__2591_ gnd vdd FILL
XFILL_6__2171_ gnd vdd FILL
XFILL_2__2583_ gnd vdd FILL
XFILL_2__2163_ gnd vdd FILL
XFILL_4__2089_ gnd vdd FILL
XFILL_4__3450_ gnd vdd FILL
XFILL_4__3030_ gnd vdd FILL
XFILL_5__1793_ gnd vdd FILL
X_2828_ ADD[5] _1299_ _1334_ _490_ vdd gnd AOI21X1
X_2408_ _1511_ _1285_ _117_ vdd gnd AND2X2
XFILL_1__1785_ gnd vdd FILL
XFILL_7__2332_ gnd vdd FILL
XFILL_3__2652_ gnd vdd FILL
XFILL_3__2232_ gnd vdd FILL
XFILL_5__2998_ gnd vdd FILL
XFILL_5__2578_ gnd vdd FILL
XFILL_5__2158_ gnd vdd FILL
XFILL_7__3537_ gnd vdd FILL
XFILL_7__3117_ gnd vdd FILL
XFILL_1__3511_ gnd vdd FILL
XFILL_3__3017_ gnd vdd FILL
XFILL_6__1862_ gnd vdd FILL
X_2581_ PC[8] _268_ vdd gnd INVX2
X_2161_ RDY_bF$buf6 _1267_ _1269_ _1270_ vdd gnd OAI21X1
XFILL_2__1854_ gnd vdd FILL
XFILL_4__2721_ gnd vdd FILL
XFILL_4__2301_ gnd vdd FILL
XFILL_6__2647_ gnd vdd FILL
XFILL_6__2227_ gnd vdd FILL
X_3366_ _1__bF$buf6 vdd _43_ clk_bF$buf9 load_only vdd 
+ gnd
+ DFFSR
XFILL_7__3290_ gnd vdd FILL
XFILL_0__2621_ gnd vdd FILL
XFILL_2__2639_ gnd vdd FILL
XFILL_2__2219_ gnd vdd FILL
XFILL_0__2201_ gnd vdd FILL
XFILL_3__3190_ gnd vdd FILL
XFILL_4__3506_ gnd vdd FILL
XFILL_3__1923_ gnd vdd FILL
XFILL_5__1849_ gnd vdd FILL
XFILL_7__2808_ gnd vdd FILL
XFILL_2__2392_ gnd vdd FILL
XFILL_3__2708_ gnd vdd FILL
X_1852_ _904_ _976_ _977_ vdd gnd NOR2X1
XFILL_6__3185_ gnd vdd FILL
XFILL_2__3597_ gnd vdd FILL
XFILL_2__3177_ gnd vdd FILL
XFILL_6__1918_ gnd vdd FILL
X_2637_ _1154_ _1027__bF$buf4 _312_ vdd gnd NOR2X1
X_2217_ _1325_ _1250_ _1512_[0] vdd gnd NAND2X1
XFILL_7__2561_ gnd vdd FILL
XFILL_3__2881_ gnd vdd FILL
XFILL_3__2461_ gnd vdd FILL
XFILL_3__2041_ gnd vdd FILL
XFILL_5__2387_ gnd vdd FILL
XFILL_1__2799_ gnd vdd FILL
XFILL_1__2379_ gnd vdd FILL
XFILL_3__3666_ gnd vdd FILL
XFILL_3__3246_ gnd vdd FILL
X_2390_ _1494_ _1353_ _1495_ vdd gnd NOR2X1
XFILL_4__2950_ gnd vdd FILL
XFILL_4__2530_ gnd vdd FILL
XFILL_4__2110_ gnd vdd FILL
XFILL_6__2876_ gnd vdd FILL
X_3595_ _1601_ _1604_ _1625_ vdd gnd NAND2X1
XFILL_6__2456_ gnd vdd FILL
XFILL_6__2036_ gnd vdd FILL
X_3175_ _1015_ _1018_ _776_ _777_ vdd gnd OAI21X1
XFILL_0__2850_ gnd vdd FILL
XFILL_2__2868_ gnd vdd FILL
XFILL_2__2448_ gnd vdd FILL
XFILL_0__2430_ gnd vdd FILL
XFILL_2__2028_ gnd vdd FILL
XFILL_0__2010_ gnd vdd FILL
X_1908_ _997_ _1024_ _951_ _1025_ vdd gnd NAND3X1
XFILL_7__1832_ gnd vdd FILL
XFILL_4__3315_ gnd vdd FILL
XFILL_0__3635_ gnd vdd FILL
XFILL_0__3215_ gnd vdd FILL
XFILL_7__2617_ gnd vdd FILL
XFILL_3__2937_ gnd vdd FILL
XFILL_3__2517_ gnd vdd FILL
XFILL_4__1801_ gnd vdd FILL
X_2866_ NMI _524_ _1153_ _525_ vdd gnd NAND3X1
X_2446_ _147_ _1337_ _148_ _149_ vdd gnd OAI21X1
X_2026_ _1015_ _983_ _1136_ _1137_ vdd gnd OAI21X1
XFILL_7__2790_ gnd vdd FILL
XFILL_3__2690_ gnd vdd FILL
XFILL_3__2270_ gnd vdd FILL
XFILL_5__2196_ gnd vdd FILL
XFILL_7__3575_ gnd vdd FILL
XFILL_1__2188_ gnd vdd FILL
XFILL_0__2906_ gnd vdd FILL
XFILL_3__3475_ gnd vdd FILL
XFILL_3__3055_ gnd vdd FILL
XFILL_2__1892_ gnd vdd FILL
XFILL_6__2685_ gnd vdd FILL
XFILL_6__2265_ gnd vdd FILL
XFILL_2__2677_ gnd vdd FILL
XFILL_2__2257_ gnd vdd FILL
XFILL_4__3544_ gnd vdd FILL
XFILL_4__3124_ gnd vdd FILL
XFILL_3__1961_ gnd vdd FILL
XFILL_0__3024_ gnd vdd FILL
XFILL_5__1887_ gnd vdd FILL
XFILL_1__1879_ gnd vdd FILL
XFILL_7__2846_ gnd vdd FILL
XFILL_7__2006_ gnd vdd FILL
XFILL_1__2820_ gnd vdd FILL
XFILL_1__2400_ gnd vdd FILL
XFILL_3__2746_ gnd vdd FILL
XFILL_3__2326_ gnd vdd FILL
X_1890_ PC[4] _1011_ vdd gnd INVX1
XFILL_5__3613_ gnd vdd FILL
XFILL_1__3605_ gnd vdd FILL
XFILL_6__1956_ gnd vdd FILL
X_2675_ _347_ _342_ _348_ vdd gnd NOR2X1
X_2255_ _1359_ _1361_ _1362_ _1363_ vdd gnd NAND3X1
XFILL_2__1948_ gnd vdd FILL
XFILL_0__1930_ gnd vdd FILL
XFILL_4__2815_ gnd vdd FILL
XFILL_0__2715_ gnd vdd FILL
XFILL_3__3284_ gnd vdd FILL
XFILL_6__2494_ gnd vdd FILL
XFILL_6__2074_ gnd vdd FILL
XFILL_2__2486_ gnd vdd FILL
XFILL_2__2066_ gnd vdd FILL
X_1946_ _902__bF$buf1 _974_ _1063_ vdd gnd NOR2X1
XFILL_6__3699_ gnd vdd FILL
XFILL_6__3279_ gnd vdd FILL
XFILL_0__3673_ gnd vdd FILL
XFILL_3__1770_ gnd vdd FILL
XFILL_0__3253_ gnd vdd FILL
XFILL_7__2235_ gnd vdd FILL
XFILL_3__2975_ gnd vdd FILL
XFILL_3__2555_ gnd vdd FILL
XFILL_3__2135_ gnd vdd FILL
XFILL_5__3002_ gnd vdd FILL
XFILL_6__1765_ gnd vdd FILL
X_2484_ _178_ _181_ _182_ vdd gnd NOR2X1
X_2064_ _1164_ _1172_ _1173_ vdd gnd NAND2X1
XFILL_2__1757_ gnd vdd FILL
XFILL168450x150 gnd vdd FILL
XFILL_4__2624_ gnd vdd FILL
XFILL_4__2204_ gnd vdd FILL
X_3689_ _1513_ vdd _1524_ clk_bF$buf6 AN vdd 
+ gnd
+ DFFSR
X_3269_ _917_ _1019_ _845_ vdd gnd AND2X2
XFILL_7__3193_ gnd vdd FILL
XFILL_0__2944_ gnd vdd FILL
XFILL_0__2524_ gnd vdd FILL
XFILL_0__2104_ gnd vdd FILL
XFILL_3__3093_ gnd vdd FILL
XFILL_7__1926_ gnd vdd FILL
XFILL_1__1900_ gnd vdd FILL
XFILL_3__1826_ gnd vdd FILL
XFILL_0__3309_ gnd vdd FILL
XFILL_2__2295_ gnd vdd FILL
X_1755_ RDY_bF$buf9 _884_ _885_ DIMUX[3] vdd gnd OAI21X1
XFILL_4__3582_ gnd vdd FILL
XFILL_4__3162_ gnd vdd FILL
XFILL_6__3088_ gnd vdd FILL
XFILL_0__3482_ gnd vdd FILL
XFILL_0__3062_ gnd vdd FILL
XFILL_7__2464_ gnd vdd FILL
XFILL_3__2784_ gnd vdd FILL
XFILL_3__2364_ gnd vdd FILL
XFILL_7__3669_ gnd vdd FILL
XFILL_5__3651_ gnd vdd FILL
XFILL_5__3231_ gnd vdd FILL
XFILL_7__3249_ gnd vdd FILL
XFILL_1__3643_ gnd vdd FILL
XFILL_1__3223_ gnd vdd FILL
XFILL_3__3569_ gnd vdd FILL
XFILL_3__3149_ gnd vdd FILL
XFILL_6__1994_ gnd vdd FILL
X_2293_ _1219_ _1399_ _1178_ _1400_ vdd gnd MUX2X1
XFILL_2__1986_ gnd vdd FILL
XFILL_4__2853_ gnd vdd FILL
XFILL_4__2433_ gnd vdd FILL
XFILL_4__2013_ gnd vdd FILL
XFILL_6__2779_ gnd vdd FILL
X_3498_ alu_shift_right AI[5] _1528_ vdd gnd NAND2X1
XFILL_6__2359_ gnd vdd FILL
X_3078_ _1227_ _660_ _689_ _690_ vdd gnd AOI21X1
XFILL_0__2753_ gnd vdd FILL
XFILL_0__2333_ gnd vdd FILL
XFILL_6__3300_ gnd vdd FILL
XFILL_2__3712_ gnd vdd FILL
XFILL_4__3638_ gnd vdd FILL
XFILL_4__3218_ gnd vdd FILL
XFILL_0__3538_ gnd vdd FILL
XFILL_0__3118_ gnd vdd FILL
XFILL_5__2922_ gnd vdd FILL
XFILL_5__2502_ gnd vdd FILL
XFILL_1__2914_ gnd vdd FILL
X_1984_ _AXYS[0]_[2] _1051_ _1053_ _1099_ vdd gnd NAND3X1
XFILL_5__3707_ gnd vdd FILL
XFILL_0__3291_ gnd vdd FILL
X_2769_ _1291_ _325_ DIMUX[2] _434_ vdd gnd OAI21X1
X_2349_ _1455_ _1249_ _1454_ _1456_ vdd gnd NOR3X1
XFILL_7__2693_ gnd vdd FILL
X_3710_ _1742_[3] DO[3] vdd gnd BUFX2
XFILL_3__2593_ gnd vdd FILL
XFILL_3__2173_ gnd vdd FILL
XFILL_5__2099_ gnd vdd FILL
XFILL_4__2909_ gnd vdd FILL
XFILL_5__3460_ gnd vdd FILL
XFILL_5__3040_ gnd vdd FILL
XFILL_0__2809_ gnd vdd FILL
XFILL_1__3452_ gnd vdd FILL
XFILL_1__3032_ gnd vdd FILL
XFILL_2__1795_ gnd vdd FILL
XFILL_4__2662_ gnd vdd FILL
XFILL_4__2242_ gnd vdd FILL
XFILL_6__2588_ gnd vdd FILL
XFILL_6__2168_ gnd vdd FILL
XFILL_0__2982_ gnd vdd FILL
XFILL_0__2562_ gnd vdd FILL
XFILL_0__2142_ gnd vdd FILL
XFILL_2__3521_ gnd vdd FILL
XFILL_2__3101_ gnd vdd FILL
XFILL_7__1964_ gnd vdd FILL
XFILL_4__3027_ gnd vdd FILL
XFILL_3__1864_ gnd vdd FILL
XFILL_7__2749_ gnd vdd FILL
XFILL_5__2731_ gnd vdd FILL
XFILL_7__2329_ gnd vdd FILL
XFILL_5__2311_ gnd vdd FILL
XFILL_2_BUFX2_insert10 gnd vdd FILL
XFILL_2_BUFX2_insert11 gnd vdd FILL
XFILL_2_BUFX2_insert12 gnd vdd FILL
XFILL_2_BUFX2_insert13 gnd vdd FILL
XFILL_2_BUFX2_insert14 gnd vdd FILL
XFILL_2_BUFX2_insert15 gnd vdd FILL
XFILL_2_BUFX2_insert16 gnd vdd FILL
XFILL_1__2723_ gnd vdd FILL
XFILL_2_BUFX2_insert17 gnd vdd FILL
XFILL_2_BUFX2_insert18 gnd vdd FILL
XFILL_1__2303_ gnd vdd FILL
XFILL_2_BUFX2_insert19 gnd vdd FILL
XFILL_3__2649_ gnd vdd FILL
XFILL_3__2229_ gnd vdd FILL
X_1793_ rotate _915_ _918_ _895_ _919_ vdd 
+ gnd
+ AOI22X1
XFILL_5__3516_ gnd vdd FILL
XFILL_1__3508_ gnd vdd FILL
XFILL_4__1933_ gnd vdd FILL
XFILL_6__1859_ gnd vdd FILL
X_2998_ _551_ _625_ _615_ _626_ vdd gnd OAI21X1
X_2578_ _1016_ _218_ _265_ _266_ vdd gnd OAI21X1
X_2158_ _1030_ _1225_ _1267_ vdd gnd NAND2X1
XFILL_7__2082_ gnd vdd FILL
XFILL_0__1833_ gnd vdd FILL
XFILL_6__2800_ gnd vdd FILL
XFILL_4__2718_ gnd vdd FILL
XFILL_0__2618_ gnd vdd FILL
XFILL_1__3261_ gnd vdd FILL
XFILL_3__3187_ gnd vdd FILL
XFILL_4__2891_ gnd vdd FILL
XFILL_4__2471_ gnd vdd FILL
XFILL_4__2051_ gnd vdd FILL
XFILL_6__2397_ gnd vdd FILL
XFILL_0__2791_ gnd vdd FILL
XFILL_0__2371_ gnd vdd FILL
XFILL_2__2389_ gnd vdd FILL
X_1849_ _973_ _911_ _974_ vdd gnd NAND2X1
XFILL_4__3676_ gnd vdd FILL
XFILL_4__3256_ gnd vdd FILL
XFILL_0__3576_ gnd vdd FILL
XFILL_0__3156_ gnd vdd FILL
XFILL_5__2960_ gnd vdd FILL
XFILL_7__2978_ gnd vdd FILL
XFILL_7__2558_ gnd vdd FILL
XFILL_5__2540_ gnd vdd FILL
XFILL_5__2120_ gnd vdd FILL
XFILL_7__2138_ gnd vdd FILL
XFILL_1__2952_ gnd vdd FILL
XFILL_1__2532_ gnd vdd FILL
XFILL_1__2112_ gnd vdd FILL
XFILL_3__2878_ gnd vdd FILL
XFILL_3__2458_ gnd vdd FILL
XFILL_3__2038_ gnd vdd FILL
XFILL_1__3317_ gnd vdd FILL
X_2387_ _1492_ _1442_ _1493_ vdd gnd NOR2X1
XFILL_2__2601_ gnd vdd FILL
XFILL_4__2947_ gnd vdd FILL
XFILL_4__2527_ gnd vdd FILL
XFILL_4__2107_ gnd vdd FILL
XFILL_7__3096_ gnd vdd FILL
XFILL_0__2847_ gnd vdd FILL
XFILL_0__2427_ gnd vdd FILL
XFILL_0__2007_ gnd vdd FILL
XFILL_1__3490_ gnd vdd FILL
XFILL_1__3070_ gnd vdd FILL
XFILL_7__1829_ gnd vdd FILL
XFILL_5__1811_ gnd vdd FILL
XFILL_1__1803_ gnd vdd FILL
XFILL_4__2280_ gnd vdd FILL
XFILL_0__2180_ gnd vdd FILL
XFILL_2__2198_ gnd vdd FILL
XFILL_4__3485_ gnd vdd FILL
XFILL_4__3065_ gnd vdd FILL
XFILL_7__2787_ gnd vdd FILL
XFILL_7__2367_ gnd vdd FILL
XFILL_1__2761_ gnd vdd FILL
XFILL_1__2341_ gnd vdd FILL
XFILL_3__2687_ gnd vdd FILL
XFILL_3__2267_ gnd vdd FILL
XFILL_5__3554_ gnd vdd FILL
XFILL_5__3134_ gnd vdd FILL
XFILL_1__3546_ gnd vdd FILL
XFILL_1__3126_ gnd vdd FILL
XFILL_4__1971_ gnd vdd FILL
XFILL_6__1897_ gnd vdd FILL
X_2196_ _914__bF$buf1 _981_ _886__bF$buf2 _1305_ vdd gnd OAI21X1
XFILL_2__1889_ gnd vdd FILL
XFILL_0__1871_ gnd vdd FILL
XFILL_2__2830_ gnd vdd FILL
XFILL_2__2410_ gnd vdd FILL
XFILL_4__2756_ gnd vdd FILL
XFILL_4__2336_ gnd vdd FILL
XFILL_0__2656_ gnd vdd FILL
XFILL_6__3623_ gnd vdd FILL
XFILL_0__2236_ gnd vdd FILL
XFILL_6__3203_ gnd vdd FILL
XFILL_2__3615_ gnd vdd FILL
XFILL_3__1958_ gnd vdd FILL
XFILL_5__2825_ gnd vdd FILL
XFILL_5__2405_ gnd vdd FILL
XFILL_1__2817_ gnd vdd FILL
X_1887_ PC[3] _1009_ vdd gnd INVX2
XFILL_4__3294_ gnd vdd FILL
XFILL169350x136950 gnd vdd FILL
XFILL_0__3194_ gnd vdd FILL
XFILL169950x162150 gnd vdd FILL
XFILL_7__2596_ gnd vdd FILL
XFILL_0__1927_ gnd vdd FILL
X_3613_ _1716_ BI[6] _1642_ _1717_ _1643_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2990_ gnd vdd FILL
XFILL_1__2570_ gnd vdd FILL
XFILL_1__2150_ gnd vdd FILL
XFILL_3__2496_ gnd vdd FILL
XFILL_3__2076_ gnd vdd FILL
XFILL169950x129750 gnd vdd FILL
XFILL_4__1780_ gnd vdd FILL
XFILL_4__2985_ gnd vdd FILL
XFILL_4__2565_ gnd vdd FILL
XFILL_4__2145_ gnd vdd FILL
XFILL_0__2885_ gnd vdd FILL
XFILL_0__2465_ gnd vdd FILL
XFILL_0__2045_ gnd vdd FILL
XFILL_6__3012_ gnd vdd FILL
XFILL_2__3004_ gnd vdd FILL
XFILL_7__1867_ gnd vdd FILL
XFILL_1__1841_ gnd vdd FILL
XFILL_3__1767_ gnd vdd FILL
XFILL_5__2634_ gnd vdd FILL
XFILL_5__2214_ gnd vdd FILL
XFILL_1__2626_ gnd vdd FILL
XFILL169050x3750 gnd vdd FILL
XFILL_1__2206_ gnd vdd FILL
XFILL_2__1910_ gnd vdd FILL
XFILL_4__1836_ gnd vdd FILL
XFILL_6__2703_ gnd vdd FILL
X_3422_ _1__bF$buf8 vdd _91_ clk_bF$buf0 _AXYS[2]_[6] vdd 
+ gnd
+ DFFSR
X_3002_ _1396_ _551_ _580_ _629_ vdd gnd OAI21X1
XFILL_5__3592_ gnd vdd FILL
XFILL_5__3172_ gnd vdd FILL
XFILL_1__3584_ gnd vdd FILL
XFILL_1__3164_ gnd vdd FILL
XFILL_5__1905_ gnd vdd FILL
XFILL_4__2794_ gnd vdd FILL
XFILL_4__2374_ gnd vdd FILL
XFILL_0__2694_ gnd vdd FILL
XFILL_6__3661_ gnd vdd FILL
XFILL_0__2274_ gnd vdd FILL
XFILL_6__3241_ gnd vdd FILL
XFILL_2__3653_ gnd vdd FILL
XFILL_2__3233_ gnd vdd FILL
XFILL_4__3579_ gnd vdd FILL
XFILL_4__3159_ gnd vdd FILL
XFILL_3__1996_ gnd vdd FILL
XFILL_0__3479_ gnd vdd FILL
XFILL_0__3059_ gnd vdd FILL
XFILL_5__2863_ gnd vdd FILL
XFILL_5__2443_ gnd vdd FILL
XFILL_5__2023_ gnd vdd FILL
XFILL_1__2855_ gnd vdd FILL
XFILL_1__2435_ gnd vdd FILL
XFILL_1__2015_ gnd vdd FILL
XFILL_3__3302_ gnd vdd FILL
XFILL_5__3648_ gnd vdd FILL
XFILL_5__3228_ gnd vdd FILL
XFILL_0__1965_ gnd vdd FILL
XFILL_6__2932_ gnd vdd FILL
X_3651_ _1680_ _1678_ _1608_ _1681_ vdd gnd AOI21X1
XFILL_6__2512_ gnd vdd FILL
X_3231_ _720__bF$buf2 _808_ _AXYS[3]_[3] _812_ vdd gnd OAI21X1
XFILL_3_BUFX2_insert80 gnd vdd FILL
XFILL_3_BUFX2_insert81 gnd vdd FILL
XFILL_3_BUFX2_insert82 gnd vdd FILL
XFILL_3_BUFX2_insert83 gnd vdd FILL
XFILL_2__2924_ gnd vdd FILL
XFILL_2__2504_ gnd vdd FILL
XFILL_2__3709_ gnd vdd FILL
XFILL169650x115350 gnd vdd FILL
XFILL_4__2183_ gnd vdd FILL
XFILL_5__2919_ gnd vdd FILL
XFILL_6__3470_ gnd vdd FILL
XFILL_0__2083_ gnd vdd FILL
XFILL_6__3050_ gnd vdd FILL
XFILL_2__3462_ gnd vdd FILL
XFILL_2__3042_ gnd vdd FILL
X_2922_ _566_ _565_ _1149__bF$buf2 _567_ vdd gnd AOI21X1
X_2502_ _929_ _955_ _197_ vdd gnd NAND2X1
XFILL_0__3288_ gnd vdd FILL
XFILL_5__2672_ gnd vdd FILL
XFILL_5__2252_ gnd vdd FILL
X_3707_ _1742_[0] DO[0] vdd gnd BUFX2
XFILL_1__2664_ gnd vdd FILL
XFILL_1__2244_ gnd vdd FILL
XFILL_7__3211_ gnd vdd FILL
XFILL_3__3531_ gnd vdd FILL
XFILL_3__3111_ gnd vdd FILL
XFILL_5__3457_ gnd vdd FILL
XFILL_5__3037_ gnd vdd FILL
XFILL_1__3449_ gnd vdd FILL
XFILL_1__3029_ gnd vdd FILL
XFILL_4__1874_ gnd vdd FILL
X_2099_ RDY_bF$buf8 _1207_ _1208_ vdd gnd NAND2X1
XFILL_0__1774_ gnd vdd FILL
XFILL_6__2741_ gnd vdd FILL
X_3460_ _u_ALU8.BI7_ _1707_ _1708_ vdd gnd NOR2X1
XFILL_6__2321_ gnd vdd FILL
X_3040_ _1168_ _1150__bF$buf1 _645_ _61_ vdd gnd OAI21X1
XFILL_2__2733_ gnd vdd FILL
XFILL_2__2313_ gnd vdd FILL
XFILL_4__2659_ gnd vdd FILL
XFILL_4__2239_ gnd vdd FILL
XFILL_4__3600_ gnd vdd FILL
XFILL_0__2979_ gnd vdd FILL
XFILL_0__2559_ gnd vdd FILL
XFILL_6__3526_ gnd vdd FILL
XFILL_0__2139_ gnd vdd FILL
XFILL_6__3106_ gnd vdd FILL
XFILL_2__3518_ gnd vdd FILL
XFILL_0__3500_ gnd vdd FILL
XFILL_5__1943_ gnd vdd FILL
XFILL_1__1935_ gnd vdd FILL
XFILL_3__2802_ gnd vdd FILL
XFILL_5__2728_ gnd vdd FILL
XFILL_5__2308_ gnd vdd FILL
XFILL_2__3691_ gnd vdd FILL
XFILL_2__3271_ gnd vdd FILL
XFILL_4__3197_ gnd vdd FILL
X_2731_ _1016_ _330_ _398_ _399_ vdd gnd OAI21X1
X_2311_ _1417_ _1332_ _1418_ vdd gnd NOR2X1
XFILL_0__3097_ gnd vdd FILL
XFILL_5__2481_ gnd vdd FILL
XFILL_5__2061_ gnd vdd FILL
XFILL_7__2079_ gnd vdd FILL
X_3516_ _1728_ _1546_ vdd gnd INVX1
XFILL_1__2893_ gnd vdd FILL
XFILL_1__2473_ gnd vdd FILL
XFILL_1__2053_ gnd vdd FILL
XFILL_7__3020_ gnd vdd FILL
XFILL_3__2399_ gnd vdd FILL
XFILL_5__3266_ gnd vdd FILL
XFILL_1__3678_ gnd vdd FILL
XFILL_1__3258_ gnd vdd FILL
XFILL_6__2970_ gnd vdd FILL
XFILL_6__2550_ gnd vdd FILL
XFILL_6__2130_ gnd vdd FILL
XFILL_2__2962_ gnd vdd FILL
XFILL_2__2542_ gnd vdd FILL
XFILL_2__2122_ gnd vdd FILL
XFILL_4__2888_ gnd vdd FILL
XFILL_4__2468_ gnd vdd FILL
XFILL_4__2048_ gnd vdd FILL
XFILL_0__2788_ gnd vdd FILL
XFILL_0__2368_ gnd vdd FILL
XFILL_5__1752_ gnd vdd FILL
XFILL_1__1744_ gnd vdd FILL
XFILL_7__2711_ gnd vdd FILL
XFILL_3__2611_ gnd vdd FILL
XFILL_5__2957_ gnd vdd FILL
XFILL_5__2537_ gnd vdd FILL
XFILL_5__2117_ gnd vdd FILL
XFILL_1__2949_ gnd vdd FILL
XFILL_1__2529_ gnd vdd FILL
XFILL_1__2109_ gnd vdd FILL
XFILL_2__3080_ gnd vdd FILL
X_2960_ _308_ _593_ _595_ _41_ vdd gnd OAI21X1
XFILL_6__1821_ gnd vdd FILL
X_2540_ DIMUX[2] _227_ _200_ ABL[2] _233_ vdd 
+ gnd
+ AOI22X1
X_2120_ _1223_ _1228_ _1229_ vdd gnd NOR2X1
XFILL_2__1813_ gnd vdd FILL
XFILL_5__2290_ gnd vdd FILL
XFILL_6__2606_ gnd vdd FILL
X_3325_ _1__bF$buf7 vdd _3_ clk_bF$buf3 PC[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2282_ gnd vdd FILL
XFILL_7_BUFX2_insert37 gnd vdd FILL
XFILL_5__3495_ gnd vdd FILL
XFILL_7_BUFX2_insert38 gnd vdd FILL
XFILL_5__3075_ gnd vdd FILL
XFILL_1__3487_ gnd vdd FILL
XFILL_1__3067_ gnd vdd FILL
XFILL_5__1808_ gnd vdd FILL
XFILL_2__2771_ gnd vdd FILL
XFILL_2__2351_ gnd vdd FILL
XFILL_4__2697_ gnd vdd FILL
XFILL_4__2277_ gnd vdd FILL
X_1811_ state[1] state[0] _937_ vdd gnd AND2X2
XFILL_0__2597_ gnd vdd FILL
XFILL_6__3564_ gnd vdd FILL
XFILL_0__2177_ gnd vdd FILL
XFILL_6__3144_ gnd vdd FILL
XFILL_2__3556_ gnd vdd FILL
XFILL_2__3136_ gnd vdd FILL
XFILL_5__1981_ gnd vdd FILL
XFILL_1__1973_ gnd vdd FILL
XFILL_7__2940_ gnd vdd FILL
XFILL_7__2100_ gnd vdd FILL
XFILL_3__1899_ gnd vdd FILL
XFILL_3__2840_ gnd vdd FILL
XFILL_3__2420_ gnd vdd FILL
XFILL_3__2000_ gnd vdd FILL
XFILL_5__2766_ gnd vdd FILL
XFILL_5__2346_ gnd vdd FILL
XFILL_1__2758_ gnd vdd FILL
XFILL_1__2338_ gnd vdd FILL
XFILL_3__3625_ gnd vdd FILL
XFILL_3__3205_ gnd vdd FILL
XFILL_4__1968_ gnd vdd FILL
XFILL_0__1868_ gnd vdd FILL
XFILL_6__2835_ gnd vdd FILL
X_3554_ _1725_ alu_op[2] _1583_ _1584_ vdd gnd OAI21X1
XFILL_6__2415_ gnd vdd FILL
X_3134_ ADD[2] _730_ _740_ vdd gnd NOR2X1
XFILL_1__2091_ gnd vdd FILL
XFILL_2__2827_ gnd vdd FILL
XFILL_2__2407_ gnd vdd FILL
XFILL_1__3296_ gnd vdd FILL
XFILL169950x86550 gnd vdd FILL
XFILL_2__2580_ gnd vdd FILL
XFILL_2__2160_ gnd vdd FILL
XFILL_4__2086_ gnd vdd FILL
XFILL_5__1790_ gnd vdd FILL
X_2825_ _886__bF$buf3 _487_ _458_ _14_ vdd gnd OAI21X1
X_2405_ _1469_ _1508_ _1509_ vdd gnd NOR2X1
XFILL_1__1782_ gnd vdd FILL
XFILL_5__2995_ gnd vdd FILL
XFILL_5__2575_ gnd vdd FILL
XFILL_5__2155_ gnd vdd FILL
XFILL_1__2987_ gnd vdd FILL
XFILL_1__2567_ gnd vdd FILL
XFILL_1__2147_ gnd vdd FILL
XFILL_7__3114_ gnd vdd FILL
XFILL_3__3014_ gnd vdd FILL
XFILL_2__1851_ gnd vdd FILL
XFILL_4__1777_ gnd vdd FILL
XFILL_6__2644_ gnd vdd FILL
X_3363_ _1__bF$buf10 vdd _40_ clk_bF$buf10 adc_bcd vdd 
+ gnd
+ DFFSR
XFILL_6__2224_ gnd vdd FILL
XFILL_2__2636_ gnd vdd FILL
XFILL_2__2216_ gnd vdd FILL
XFILL_4__3503_ gnd vdd FILL
XFILL_6__3009_ gnd vdd FILL
XFILL_3__1920_ gnd vdd FILL
XFILL_5__1846_ gnd vdd FILL
XFILL_1__1838_ gnd vdd FILL
XFILL_3__2705_ gnd vdd FILL
XFILL_6__3182_ gnd vdd FILL
XFILL_2__3594_ gnd vdd FILL
XFILL_2__3174_ gnd vdd FILL
XFILL_6__1915_ gnd vdd FILL
X_2634_ _310_ _129_ alu_shift_right vdd gnd NOR2X1
X_2214_ _1312_ _1322_ _1323_ vdd gnd NOR2X1
XFILL_2__1907_ gnd vdd FILL
XFILL_5__2384_ gnd vdd FILL
X_3419_ _1__bF$buf8 vdd _88_ clk_bF$buf8 _AXYS[2]_[3] vdd 
+ gnd
+ DFFSR
XFILL_1__2796_ gnd vdd FILL
XFILL_1__2376_ gnd vdd FILL
XFILL_3__3663_ gnd vdd FILL
XFILL_3__3243_ gnd vdd FILL
XFILL_5__3589_ gnd vdd FILL
XFILL_5__3169_ gnd vdd FILL
XFILL_6__2873_ gnd vdd FILL
X_3592_ _1593_ _1621_ _1622_ vdd gnd NAND2X1
XFILL_6__2453_ gnd vdd FILL
X_3172_ _773_ _774_ vdd gnd INVX1
XFILL_6__2033_ gnd vdd FILL
XFILL_2__2865_ gnd vdd FILL
XFILL_2__2445_ gnd vdd FILL
XFILL_2__2025_ gnd vdd FILL
X_1905_ _1020_ _1021_ _1022_ vdd gnd NOR2X1
XFILL_4__3312_ gnd vdd FILL
XFILL_6__3658_ gnd vdd FILL
XFILL_6__3238_ gnd vdd FILL
XFILL_0__3632_ gnd vdd FILL
XFILL_0__3212_ gnd vdd FILL
XFILL_7__2614_ gnd vdd FILL
XFILL_3__2934_ gnd vdd FILL
XFILL_3__2514_ gnd vdd FILL
X_2863_ _522_ _521_ _886__bF$buf3 _523_ vdd gnd AOI21X1
X_2443_ _1319__bF$buf2 _1263_ PC[8] _146_ vdd gnd OAI21X1
X_2023_ ABH[6] _1134_ vdd gnd INVX1
XFILL_5__2193_ gnd vdd FILL
XFILL_6__2929_ gnd vdd FILL
X_3648_ _1676_ _1677_ _1678_ vdd gnd NAND2X1
XFILL_6__2509_ gnd vdd FILL
X_3228_ _737_ _807_ _810_ _94_ vdd gnd OAI21X1
XFILL_7__3572_ gnd vdd FILL
XFILL_1__2185_ gnd vdd FILL
XFILL_0__2903_ gnd vdd FILL
XFILL_3__3472_ gnd vdd FILL
XFILL_3__3052_ gnd vdd FILL
XFILL_6__2682_ gnd vdd FILL
XFILL_6__2262_ gnd vdd FILL
XFILL_2__2674_ gnd vdd FILL
XFILL_2__2254_ gnd vdd FILL
XFILL_4__3541_ gnd vdd FILL
XFILL_4__3121_ gnd vdd FILL
XFILL_6__3467_ gnd vdd FILL
XFILL_6__3047_ gnd vdd FILL
XFILL_2__3459_ gnd vdd FILL
XFILL_2__3039_ gnd vdd FILL
XFILL_0__3021_ gnd vdd FILL
XFILL_5__1884_ gnd vdd FILL
X_2919_ _1217_ _1396_ _564_ vdd gnd NOR2X1
XFILL_1__1876_ gnd vdd FILL
XFILL_7__2843_ gnd vdd FILL
XFILL_7__2003_ gnd vdd FILL
XFILL_3__2743_ gnd vdd FILL
XFILL_3__2323_ gnd vdd FILL
XFILL_5__2669_ gnd vdd FILL
XFILL_5__2249_ gnd vdd FILL
XFILL_5__3610_ gnd vdd FILL
XFILL_1__3602_ gnd vdd FILL
XFILL_3__3528_ gnd vdd FILL
XFILL_3__3108_ gnd vdd FILL
XFILL_6__1953_ gnd vdd FILL
X_2672_ _343_ _344_ _345_ vdd gnd NAND2X1
X_2252_ state[4] _949_ _1360_ vdd gnd NOR2X1
XFILL_2__1945_ gnd vdd FILL
XFILL_4__2812_ gnd vdd FILL
XFILL_6__2738_ gnd vdd FILL
X_3457_ CO _1703_ _1705_ vdd gnd NOR2X1
XFILL_6__2318_ gnd vdd FILL
X_3037_ _1015_ _647_ _654_ _59_ vdd gnd OAI21X1
XFILL_0__2712_ gnd vdd FILL
XFILL_3__3281_ gnd vdd FILL
XFILL_1__3199_ gnd vdd FILL
XFILL_6__2491_ gnd vdd FILL
XFILL_6__2071_ gnd vdd FILL
XFILL_2__2483_ gnd vdd FILL
XFILL_2__2063_ gnd vdd FILL
X_1943_ _1059_ _1060_ vdd gnd INVX1
XFILL_6__3696_ gnd vdd FILL
XFILL_6__3276_ gnd vdd FILL
XFILL_0__3670_ gnd vdd FILL
XFILL_0__3250_ gnd vdd FILL
XFILL_2__3268_ gnd vdd FILL
X_2728_ ABL[7] _396_ vdd gnd INVX1
X_2308_ _1414_ _1410_ _1415_ vdd gnd NOR2X1
XFILL_7__2232_ gnd vdd FILL
XFILL_3__2972_ gnd vdd FILL
XFILL_3__2552_ gnd vdd FILL
XFILL_3__2132_ gnd vdd FILL
XFILL_5__2898_ gnd vdd FILL
XFILL_5__2478_ gnd vdd FILL
XFILL_5__2058_ gnd vdd FILL
XFILL_7__3017_ gnd vdd FILL
XFILL_6__1762_ gnd vdd FILL
X_2481_ ADD[5] _179_ vdd gnd INVX1
X_2061_ _1168_ DIMUX[2] _1170_ vdd gnd NAND2X1
XFILL_2__1754_ gnd vdd FILL
XFILL_4__2621_ gnd vdd FILL
XFILL_4__2201_ gnd vdd FILL
XFILL_6__2967_ gnd vdd FILL
X_3686_ _1513_ vdd _1521_ clk_bF$buf3 ADD[4] vdd 
+ gnd
+ DFFSR
XFILL_6__2547_ gnd vdd FILL
X_3266_ _841_ _838_ _842_ vdd gnd NOR2X1
XFILL_6__2127_ gnd vdd FILL
XFILL_7__3190_ gnd vdd FILL
XFILL_2__2959_ gnd vdd FILL
XFILL_0__2941_ gnd vdd FILL
XFILL_2__2539_ gnd vdd FILL
XFILL_0__2521_ gnd vdd FILL
XFILL_2__2119_ gnd vdd FILL
XFILL_0__2101_ gnd vdd FILL
XFILL_3__3090_ gnd vdd FILL
XFILL_3__1823_ gnd vdd FILL
XFILL_0__3306_ gnd vdd FILL
XFILL_5__1749_ gnd vdd FILL
XFILL_7__2708_ gnd vdd FILL
XFILL_2__2292_ gnd vdd FILL
XFILL_3__2608_ gnd vdd FILL
X_1752_ RDY_bF$buf0 _882_ _883_ DIMUX[2] vdd gnd OAI21X1
XFILL169950x18150 gnd vdd FILL
XFILL_6__3085_ gnd vdd FILL
XFILL_2__3497_ gnd vdd FILL
XFILL_2__3077_ gnd vdd FILL
X_2957_ D _1185_ _594_ vdd gnd NAND2X1
XFILL_6__1818_ gnd vdd FILL
X_2537_ _1089_ _195_ _230_ _231_ vdd gnd AOI21X1
X_2117_ _969_ _1225_ _1226_ vdd gnd NAND2X1
XFILL_7__2461_ gnd vdd FILL
XFILL_3__2781_ gnd vdd FILL
XFILL_3__2361_ gnd vdd FILL
XFILL_5__2287_ gnd vdd FILL
XFILL_1__2699_ gnd vdd FILL
XFILL_7__3666_ gnd vdd FILL
XFILL_1__2279_ gnd vdd FILL
XFILL_7__3246_ gnd vdd FILL
XFILL_1__3640_ gnd vdd FILL
XFILL_1__3220_ gnd vdd FILL
XFILL_3__3566_ gnd vdd FILL
XFILL_3__3146_ gnd vdd FILL
XFILL_6__1991_ gnd vdd FILL
X_2290_ _1213_ _1396_ _1397_ vdd gnd NOR2X1
XFILL_2__1983_ gnd vdd FILL
XFILL_4__2850_ gnd vdd FILL
XFILL_4__2430_ gnd vdd FILL
XFILL_4__2010_ gnd vdd FILL
XFILL_6__2776_ gnd vdd FILL
X_3495_ alu_op[2] _1740_ vdd gnd INVX2
XFILL_6__2356_ gnd vdd FILL
X_3075_ _1051_ _686_ _687_ vdd gnd NAND2X1
XFILL_0__2750_ gnd vdd FILL
XFILL_2__2768_ gnd vdd FILL
XFILL_0__2330_ gnd vdd FILL
XFILL_2__2348_ gnd vdd FILL
X_1808_ state[3] _896_ _934_ vdd gnd NAND2X1
XFILL_4__3635_ gnd vdd FILL
XFILL_4__3215_ gnd vdd FILL
XFILL_0__3535_ gnd vdd FILL
XFILL_0__3115_ gnd vdd FILL
XFILL_5__1978_ gnd vdd FILL
XFILL_7__2937_ gnd vdd FILL
XFILL_7__2517_ gnd vdd FILL
XFILL_1__2911_ gnd vdd FILL
XFILL_3__2837_ gnd vdd FILL
XFILL_3__2417_ gnd vdd FILL
X_1981_ _1074_ _1090_ _1096_ AI[1] vdd gnd OAI21X1
XFILL_5__3704_ gnd vdd FILL
X_2766_ ADD[2] _431_ vdd gnd INVX1
X_2346_ _1389_ _1452_ _1453_ vdd gnd NOR2X1
XFILL_7__2690_ gnd vdd FILL
XFILL_3__2590_ gnd vdd FILL
XFILL_3__2170_ gnd vdd FILL
XFILL_5__2096_ gnd vdd FILL
XFILL_4__2906_ gnd vdd FILL
XFILL_7__3475_ gnd vdd FILL
XFILL_1__2088_ gnd vdd FILL
XFILL_0__2806_ gnd vdd FILL
XFILL168150x136950 gnd vdd FILL
XFILL_2__1792_ gnd vdd FILL
XFILL_6__2585_ gnd vdd FILL
XFILL_6__2165_ gnd vdd FILL
XFILL_2__2997_ gnd vdd FILL
XFILL_2__2577_ gnd vdd FILL
XFILL_2__2157_ gnd vdd FILL
XFILL_7__1961_ gnd vdd FILL
XFILL_4__3024_ gnd vdd FILL
XFILL_3__1861_ gnd vdd FILL
XFILL_5__1787_ gnd vdd FILL
XFILL_1__1779_ gnd vdd FILL
XFILL_7__2746_ gnd vdd FILL
XFILL_1__2720_ gnd vdd FILL
XFILL_1__2300_ gnd vdd FILL
XFILL_3__2646_ gnd vdd FILL
XFILL_3__2226_ gnd vdd FILL
X_1790_ _914__bF$buf3 _912_ _916_ vdd gnd NOR2X1
XFILL_5__3513_ gnd vdd FILL
XFILL_1__3505_ gnd vdd FILL
XFILL_4__1930_ gnd vdd FILL
XFILL_6__1856_ gnd vdd FILL
X_2995_ _620_ _623_ _624_ vdd gnd NOR2X1
X_2575_ _216_ _209_ AN _263_ vdd gnd OAI21X1
X_2155_ _914__bF$buf1 _984_ _886__bF$buf2 _1264_ vdd gnd OAI21X1
XFILL_0__1830_ gnd vdd FILL
XFILL_2__1848_ gnd vdd FILL
XFILL_4__2715_ gnd vdd FILL
XFILL_0__2615_ gnd vdd FILL
XFILL_3__3184_ gnd vdd FILL
XFILL_3__1917_ gnd vdd FILL
XFILL_6__2394_ gnd vdd FILL
XFILL_2__2386_ gnd vdd FILL
X_1846_ _970_ _924_ _971_ vdd gnd NOR2X1
XFILL_4__3673_ gnd vdd FILL
XFILL_4__3253_ gnd vdd FILL
XFILL_6__3599_ gnd vdd FILL
XFILL_6__3179_ gnd vdd FILL
XFILL_0__3573_ gnd vdd FILL
XFILL_0__3153_ gnd vdd FILL
XFILL_7__2975_ gnd vdd FILL
XFILL_7__2135_ gnd vdd FILL
XFILL_3__2875_ gnd vdd FILL
XFILL_3__2455_ gnd vdd FILL
XFILL_3__2035_ gnd vdd FILL
XFILL_1__3314_ gnd vdd FILL
X_2384_ _1288_ _1322_ _1489_ _1490_ vdd gnd NOR3X1
XFILL_4__2944_ gnd vdd FILL
XFILL_4__2524_ gnd vdd FILL
XFILL_4__2104_ gnd vdd FILL
X_3589_ _1571_ _1598_ _1618_ _1619_ vdd gnd NAND3X1
X_3169_ ADD[6] _762_ _771_ vdd gnd NOR2X1
XFILL_7__3093_ gnd vdd FILL
XFILL_0__2844_ gnd vdd FILL
XFILL_0__2424_ gnd vdd FILL
XFILL_0__2004_ gnd vdd FILL
XFILL_7__1826_ gnd vdd FILL
XFILL_4__3309_ gnd vdd FILL
XFILL_1__1800_ gnd vdd FILL
XFILL_0__3629_ gnd vdd FILL
XFILL_0__3209_ gnd vdd FILL
XFILL_2__2195_ gnd vdd FILL
XFILL_4__3482_ gnd vdd FILL
XFILL_4__3062_ gnd vdd FILL
XFILL_7__2364_ gnd vdd FILL
XFILL_3__2684_ gnd vdd FILL
XFILL_3__2264_ gnd vdd FILL
XFILL_7__3569_ gnd vdd FILL
XFILL_5__3551_ gnd vdd FILL
XFILL_7__3149_ gnd vdd FILL
XFILL_5__3131_ gnd vdd FILL
XFILL_1__3543_ gnd vdd FILL
XFILL_1__3123_ gnd vdd FILL
XFILL_3__3469_ gnd vdd FILL
XFILL_3__3049_ gnd vdd FILL
XFILL_6__1894_ gnd vdd FILL
X_2193_ _1301_ _1288_ _1302_ vdd gnd NOR2X1
XFILL_2__1886_ gnd vdd FILL
XFILL_4__2753_ gnd vdd FILL
XFILL_4__2333_ gnd vdd FILL
XFILL_6__2679_ gnd vdd FILL
X_3398_ _1__bF$buf9 vdd _67_ clk_bF$buf6 C vdd 
+ gnd
+ DFFSR
XFILL_6__2259_ gnd vdd FILL
XFILL_0__2653_ gnd vdd FILL
XFILL_6__3620_ gnd vdd FILL
XFILL_0__2233_ gnd vdd FILL
XFILL_6__3200_ gnd vdd FILL
XFILL_2__3612_ gnd vdd FILL
XFILL_4__3538_ gnd vdd FILL
XFILL_4__3118_ gnd vdd FILL
XFILL_3__1955_ gnd vdd FILL
XFILL_0__3018_ gnd vdd FILL
XFILL_5__2822_ gnd vdd FILL
XFILL_5__2402_ gnd vdd FILL
XFILL_1__2814_ gnd vdd FILL
X_1884_ PC[2] _1007_ vdd gnd INVX2
XFILL_4__3291_ gnd vdd FILL
XFILL_5__3607_ gnd vdd FILL
XFILL_0__3191_ gnd vdd FILL
X_2669_ _340_ _342_ vdd gnd INVX1
X_2249_ _1356_ _1251_ _1357_ vdd gnd NAND2X1
XFILL_7__2593_ gnd vdd FILL
XFILL_0__1924_ gnd vdd FILL
X_3610_ AI[7] alu_shift_right _1640_ vdd gnd NAND2X1
XFILL_3__2493_ gnd vdd FILL
XFILL_3__2073_ gnd vdd FILL
XFILL_4__2809_ gnd vdd FILL
XFILL_0__2709_ gnd vdd FILL
XFILL_3__3698_ gnd vdd FILL
XFILL_3__3278_ gnd vdd FILL
XFILL_4__2982_ gnd vdd FILL
XFILL_4__2562_ gnd vdd FILL
XFILL_4__2142_ gnd vdd FILL
XFILL_6__2488_ gnd vdd FILL
XFILL_6__2068_ gnd vdd FILL
XFILL_0__2882_ gnd vdd FILL
XFILL_0__2462_ gnd vdd FILL
XFILL_0__2042_ gnd vdd FILL
XFILL_2__3001_ gnd vdd FILL
XFILL_7__1864_ gnd vdd FILL
XFILL_3__1764_ gnd vdd FILL
XFILL_0__3667_ gnd vdd FILL
XFILL_0__3247_ gnd vdd FILL
XFILL_5__2631_ gnd vdd FILL
XFILL_7__2229_ gnd vdd FILL
XFILL_5__2211_ gnd vdd FILL
XFILL_1__2623_ gnd vdd FILL
XFILL_1__2203_ gnd vdd FILL
XFILL_3__2969_ gnd vdd FILL
XFILL_3__2549_ gnd vdd FILL
XFILL_3__2129_ gnd vdd FILL
XFILL_4__1833_ gnd vdd FILL
XFILL_6__1759_ gnd vdd FILL
X_2898_ _1189_ _1251_ _547_ vdd gnd NAND2X1
X_2478_ _176_ _172_ _177_ vdd gnd NOR2X1
X_2058_ _1165_ NMI_edge _1166_ _1167_ vdd gnd OAI21X1
XFILL_6__2700_ gnd vdd FILL
XFILL_4__2618_ gnd vdd FILL
XFILL_0__2938_ gnd vdd FILL
XFILL_0__2518_ gnd vdd FILL
XFILL_1__3581_ gnd vdd FILL
XFILL_1__3161_ gnd vdd FILL
XFILL_3__3087_ gnd vdd FILL
XFILL_5__1902_ gnd vdd FILL
XFILL_4__2791_ gnd vdd FILL
XFILL_4__2371_ gnd vdd FILL
XFILL_6__2297_ gnd vdd FILL
XFILL_0__2691_ gnd vdd FILL
XFILL_0__2271_ gnd vdd FILL
XFILL_2__2289_ gnd vdd FILL
XFILL_2__3650_ gnd vdd FILL
XFILL_2__3230_ gnd vdd FILL
X_1749_ RDY_bF$buf9 _880_ _881_ DIMUX[1] vdd gnd OAI21X1
XFILL_4__3576_ gnd vdd FILL
XFILL_4__3156_ gnd vdd FILL
XFILL_3__1993_ gnd vdd FILL
XFILL_0__3476_ gnd vdd FILL
XFILL_0__3056_ gnd vdd FILL
XFILL_5__2860_ gnd vdd FILL
XFILL_7__2878_ gnd vdd FILL
XFILL_7__2458_ gnd vdd FILL
XFILL_5__2440_ gnd vdd FILL
XFILL_7__2038_ gnd vdd FILL
XFILL_5__2020_ gnd vdd FILL
XFILL_1__2852_ gnd vdd FILL
XFILL_1__2432_ gnd vdd FILL
XFILL_1__2012_ gnd vdd FILL
XFILL_3__2778_ gnd vdd FILL
XFILL_3__2358_ gnd vdd FILL
XFILL_5__3645_ gnd vdd FILL
XFILL_5__3225_ gnd vdd FILL
XFILL_1__3637_ gnd vdd FILL
XFILL_1__3217_ gnd vdd FILL
XFILL_6__1988_ gnd vdd FILL
X_2287_ _1393_ _1394_ vdd gnd INVX1
XFILL_0__1962_ gnd vdd FILL
XFILL_3_BUFX2_insert50 gnd vdd FILL
XFILL_3_BUFX2_insert51 gnd vdd FILL
XFILL_3_BUFX2_insert52 gnd vdd FILL
XFILL_3_BUFX2_insert53 gnd vdd FILL
XFILL_2__2921_ gnd vdd FILL
XFILL_2__2501_ gnd vdd FILL
XFILL_3_BUFX2_insert54 gnd vdd FILL
XFILL_3_BUFX2_insert55 gnd vdd FILL
XFILL_3_BUFX2_insert56 gnd vdd FILL
XFILL_3_BUFX2_insert57 gnd vdd FILL
XFILL_4__2847_ gnd vdd FILL
XFILL_3_BUFX2_insert58 gnd vdd FILL
XFILL_4__2427_ gnd vdd FILL
XFILL_3_BUFX2_insert59 gnd vdd FILL
XFILL_4__2007_ gnd vdd FILL
XFILL_0__2747_ gnd vdd FILL
XFILL_6__3714_ gnd vdd FILL
XFILL_0__2327_ gnd vdd FILL
XFILL_2__3706_ gnd vdd FILL
XFILL_4__2180_ gnd vdd FILL
XFILL_5__2916_ gnd vdd FILL
XFILL_0__2080_ gnd vdd FILL
XFILL_2__2098_ gnd vdd FILL
XFILL_1__2908_ gnd vdd FILL
X_1978_ _1093_ _1094_ vdd gnd INVX1
XFILL_0__3285_ gnd vdd FILL
XFILL_7__2687_ gnd vdd FILL
XFILL_7__2267_ gnd vdd FILL
X_3704_ _1741_[7] AB[7] vdd gnd BUFX2
XFILL_1__2661_ gnd vdd FILL
XFILL_1__2241_ gnd vdd FILL
XFILL_3__2587_ gnd vdd FILL
XFILL_3__2167_ gnd vdd FILL
XFILL_5__3454_ gnd vdd FILL
XFILL_5__3034_ gnd vdd FILL
XFILL169650x136950 gnd vdd FILL
XFILL_1__3026_ gnd vdd FILL
XFILL_4__1871_ gnd vdd FILL
XFILL_6__1797_ gnd vdd FILL
X_2096_ _913_ _1200_ _1204_ _1205_ vdd gnd OAI21X1
XFILL_2__1789_ gnd vdd FILL
XFILL_0__1771_ gnd vdd FILL
XFILL_2__2730_ gnd vdd FILL
XFILL_2__2310_ gnd vdd FILL
XFILL_4__2656_ gnd vdd FILL
XFILL_4__2236_ gnd vdd FILL
XFILL_0__2976_ gnd vdd FILL
XFILL_0__2556_ gnd vdd FILL
XFILL_6__3523_ gnd vdd FILL
XFILL_0__2136_ gnd vdd FILL
XFILL_6__3103_ gnd vdd FILL
XFILL_2__3515_ gnd vdd FILL
XFILL_5__1940_ gnd vdd FILL
XFILL_7__1958_ gnd vdd FILL
XFILL_1__1932_ gnd vdd FILL
XFILL_3__1858_ gnd vdd FILL
XFILL_5__2725_ gnd vdd FILL
XFILL_5__2305_ gnd vdd FILL
XFILL_1__2717_ gnd vdd FILL
X_1787_ state[5] _913_ vdd gnd INVX2
XFILL_4__3194_ gnd vdd FILL
XFILL_0__3094_ gnd vdd FILL
XFILL169950x7350 gnd vdd FILL
XFILL_4__1927_ gnd vdd FILL
XFILL_7__2496_ gnd vdd FILL
XFILL_0__1827_ gnd vdd FILL
X_3513_ _1540_ _1539_ alu_shift_right _1543_ vdd gnd AOI21X1
XFILL_1__2890_ gnd vdd FILL
XFILL_1__2470_ gnd vdd FILL
XFILL_1__2050_ gnd vdd FILL
XFILL_3__2396_ gnd vdd FILL
XFILL169650x64950 gnd vdd FILL
XFILL_5__3263_ gnd vdd FILL
XFILL_1__3675_ gnd vdd FILL
XFILL_1__3255_ gnd vdd FILL
XFILL_4__2885_ gnd vdd FILL
XFILL_4__2465_ gnd vdd FILL
XFILL_4__2045_ gnd vdd FILL
XFILL_0__2785_ gnd vdd FILL
XFILL_0__2365_ gnd vdd FILL
XFILL_5__2954_ gnd vdd FILL
XFILL_5__2534_ gnd vdd FILL
XFILL_5__2114_ gnd vdd FILL
XFILL_1__2946_ gnd vdd FILL
XFILL_1__2526_ gnd vdd FILL
XFILL_1__2106_ gnd vdd FILL
XFILL_2__1810_ gnd vdd FILL
XFILL_6__2603_ gnd vdd FILL
X_3322_ _1__bF$buf9 vdd _1512_[4] clk_bF$buf6 state[4] vdd 
+ gnd
+ DFFSR
XFILL_5__3492_ gnd vdd FILL
XFILL_5__3072_ gnd vdd FILL
XFILL_1__3484_ gnd vdd FILL
XFILL_1__3064_ gnd vdd FILL
XFILL_5__1805_ gnd vdd FILL
XFILL_4__2694_ gnd vdd FILL
XFILL_4__2274_ gnd vdd FILL
XFILL_0__2594_ gnd vdd FILL
XFILL_6__3561_ gnd vdd FILL
XFILL_0__2174_ gnd vdd FILL
XFILL_6__3141_ gnd vdd FILL
XFILL_2__3553_ gnd vdd FILL
XFILL_2__3133_ gnd vdd FILL
XFILL_7__1996_ gnd vdd FILL
XFILL_4__3479_ gnd vdd FILL
XFILL_4__3059_ gnd vdd FILL
XFILL_1__1970_ gnd vdd FILL
XFILL_3__1896_ gnd vdd FILL
XFILL169950x115350 gnd vdd FILL
XFILL_5__2763_ gnd vdd FILL
XFILL_5__2343_ gnd vdd FILL
XFILL_1__2755_ gnd vdd FILL
XFILL_1__2335_ gnd vdd FILL
XFILL_3__3622_ gnd vdd FILL
XFILL_3__3202_ gnd vdd FILL
XFILL_5__3548_ gnd vdd FILL
XFILL_5__3128_ gnd vdd FILL
XFILL_4__1965_ gnd vdd FILL
XFILL_0__1865_ gnd vdd FILL
XFILL_6__2832_ gnd vdd FILL
X_3551_ alu_op[2] BI[0] _1725_ _1581_ vdd gnd OAI21X1
XFILL_6__2412_ gnd vdd FILL
X_3131_ _AXYS[0]_[1] _722_ _738_ vdd gnd NAND2X1
XFILL_2__2824_ gnd vdd FILL
XFILL_2__2404_ gnd vdd FILL
XFILL_6__3617_ gnd vdd FILL
XFILL_1__3293_ gnd vdd FILL
XFILL_2__3609_ gnd vdd FILL
XFILL_4__2083_ gnd vdd FILL
XFILL_5__2819_ gnd vdd FILL
XFILL_4__3288_ gnd vdd FILL
X_2822_ _468_ _470_ _484_ _485_ vdd gnd NAND3X1
X_2402_ _1192_ _1506_ vdd gnd INVX1
XFILL_0__3188_ gnd vdd FILL
XFILL_5__2992_ gnd vdd FILL
XFILL_5__2572_ gnd vdd FILL
XFILL_5__2152_ gnd vdd FILL
X_3607_ _1727_ _1728_ _1724_ _1637_ vdd gnd OAI21X1
XFILL_1__2984_ gnd vdd FILL
XFILL_1__2564_ gnd vdd FILL
XFILL_1__2144_ gnd vdd FILL
XFILL_7__3111_ gnd vdd FILL
XFILL_3__3011_ gnd vdd FILL
XFILL_4__1774_ gnd vdd FILL
XFILL_6__2641_ gnd vdd FILL
X_3360_ _1__bF$buf6 vdd _37_ clk_bF$buf9 shift_right vdd 
+ gnd
+ DFFSR
XFILL_6__2221_ gnd vdd FILL
XFILL_2__2633_ gnd vdd FILL
XFILL_2__2213_ gnd vdd FILL
XFILL_4__2979_ gnd vdd FILL
XFILL_4__2559_ gnd vdd FILL
XFILL_4__2139_ gnd vdd FILL
XFILL_4__3500_ gnd vdd FILL
XFILL_0__2879_ gnd vdd FILL
XFILL_0__2459_ gnd vdd FILL
XFILL_0__2039_ gnd vdd FILL
XFILL_6__3006_ gnd vdd FILL
XFILL_5__1843_ gnd vdd FILL
XFILL_1__1835_ gnd vdd FILL
XFILL_3__2702_ gnd vdd FILL
XFILL_5__2628_ gnd vdd FILL
XFILL_5__2208_ gnd vdd FILL
XFILL_2__3591_ gnd vdd FILL
XFILL_2__3171_ gnd vdd FILL
XFILL_4__3097_ gnd vdd FILL
XFILL_6__1912_ gnd vdd FILL
X_2631_ adc_bcd _309_ vdd gnd INVX1
X_2211_ _931__bF$buf0 _958_ _886__bF$buf4 _1320_ vdd gnd OAI21X1
XFILL_2__1904_ gnd vdd FILL
XFILL_5__2381_ gnd vdd FILL
X_3416_ _1__bF$buf8 vdd _85_ clk_bF$buf7 _AXYS[2]_[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2793_ gnd vdd FILL
XFILL_1__2373_ gnd vdd FILL
XFILL_3__2299_ gnd vdd FILL
XFILL_3__3660_ gnd vdd FILL
XFILL_3__3240_ gnd vdd FILL
XFILL_5__3586_ gnd vdd FILL
XFILL_5__3166_ gnd vdd FILL
XFILL_1__3578_ gnd vdd FILL
XFILL_1__3158_ gnd vdd FILL
XFILL_6__2870_ gnd vdd FILL
XFILL_6__2450_ gnd vdd FILL
XFILL_6__2030_ gnd vdd FILL
XFILL_2__2862_ gnd vdd FILL
XFILL_2__2442_ gnd vdd FILL
XFILL_2__2022_ gnd vdd FILL
XFILL_4__2788_ gnd vdd FILL
XFILL_4__2368_ gnd vdd FILL
X_1902_ _903__bF$buf2 _969_ _992_ _1019_ vdd gnd OAI21X1
XFILL_0__2688_ gnd vdd FILL
XFILL_6__3655_ gnd vdd FILL
XFILL_0__2268_ gnd vdd FILL
XFILL_6__3235_ gnd vdd FILL
XFILL_2__3647_ gnd vdd FILL
XFILL_2__3227_ gnd vdd FILL
XFILL_7__2611_ gnd vdd FILL
XFILL_3__2931_ gnd vdd FILL
XFILL_3__2511_ gnd vdd FILL
XFILL_5__2857_ gnd vdd FILL
XFILL_5__2437_ gnd vdd FILL
XFILL_5__2017_ gnd vdd FILL
XFILL_1__2849_ gnd vdd FILL
XFILL_1__2429_ gnd vdd FILL
XFILL_1__2009_ gnd vdd FILL
X_2860_ _509_ _519_ _513_ _520_ vdd gnd NAND3X1
X_2440_ _902__bF$buf0 _949_ _138_ _143_ vdd gnd OAI21X1
X_2020_ _AXYS[0]_[6] _1051_ _1053_ _1131_ vdd gnd NAND3X1
XFILL_5__2190_ gnd vdd FILL
XFILL_0__1959_ gnd vdd FILL
XFILL_6__2926_ gnd vdd FILL
X_3645_ _1661_ _1674_ _1675_ vdd gnd AND2X2
XFILL_6__2506_ gnd vdd FILL
X_3225_ _720__bF$buf3 _808_ _AXYS[3]_[0] _809_ vdd gnd OAI21X1
XFILL_1__2182_ gnd vdd FILL
XFILL_2__2918_ gnd vdd FILL
XFILL_0__2900_ gnd vdd FILL
XFILL_2__2671_ gnd vdd FILL
XFILL_2__2251_ gnd vdd FILL
XFILL_4__2597_ gnd vdd FILL
XFILL_4__2177_ gnd vdd FILL
XFILL_0__2497_ gnd vdd FILL
XFILL_6__3464_ gnd vdd FILL
XFILL_0__2077_ gnd vdd FILL
XFILL_6__3044_ gnd vdd FILL
XFILL_2__3456_ gnd vdd FILL
XFILL_2__3036_ gnd vdd FILL
XFILL_5__1881_ gnd vdd FILL
X_2916_ _560_ _1405_ _561_ vdd gnd AND2X2
XFILL_1__1873_ gnd vdd FILL
XFILL_7__2840_ gnd vdd FILL
XFILL_7__2000_ gnd vdd FILL
XFILL_3__1799_ gnd vdd FILL
XFILL_3__2740_ gnd vdd FILL
XFILL_3__2320_ gnd vdd FILL
XFILL_5__2666_ gnd vdd FILL
XFILL_5__2246_ gnd vdd FILL
XFILL_1__2658_ gnd vdd FILL
XFILL_7__3625_ gnd vdd FILL
XFILL_1__2238_ gnd vdd FILL
XFILL_3__3525_ gnd vdd FILL
XFILL_3__3105_ gnd vdd FILL
XFILL_6__1950_ gnd vdd FILL
XFILL_2__1942_ gnd vdd FILL
XFILL_4__1868_ gnd vdd FILL
XFILL_0__1768_ gnd vdd FILL
XFILL_6__2735_ gnd vdd FILL
X_3454_ _1698_ _1702_ AZ vdd gnd NOR2X1
XFILL_6__2315_ gnd vdd FILL
X_3034_ reset _645_ IRHOLD[5] _653_ vdd gnd OAI21X1
XFILL_2__2727_ gnd vdd FILL
XFILL_2__2307_ gnd vdd FILL
XFILL_1__3196_ gnd vdd FILL
XFILL_5__1937_ gnd vdd FILL
XFILL_1__1929_ gnd vdd FILL
XFILL_2__2480_ gnd vdd FILL
XFILL_2__2060_ gnd vdd FILL
X_1940_ _1048_ _1039_ _1052_ _1056_ _1057_ vdd 
+ gnd
+ AOI22X1
XFILL_6__3693_ gnd vdd FILL
XFILL_6__3273_ gnd vdd FILL
XFILL_2__3265_ gnd vdd FILL
X_2725_ _392_ _394_ vdd gnd INVX1
X_2305_ _1187_ _1412_ vdd gnd INVX2
XFILL_5__2895_ gnd vdd FILL
XFILL_5__2475_ gnd vdd FILL
XFILL_5__2055_ gnd vdd FILL
XFILL_1__2887_ gnd vdd FILL
XFILL_1__2467_ gnd vdd FILL
XFILL_1__2047_ gnd vdd FILL
XFILL_7__3014_ gnd vdd FILL
XFILL_2__1751_ gnd vdd FILL
XFILL_0__1997_ gnd vdd FILL
XFILL_6__2964_ gnd vdd FILL
X_3683_ _1513_ vdd _1518_ clk_bF$buf5 ADD[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2544_ gnd vdd FILL
X_3263_ _952_ _1360_ _823_ _839_ vdd gnd OAI21X1
XFILL_6__2124_ gnd vdd FILL
XFILL_2__2956_ gnd vdd FILL
XFILL_2__2536_ gnd vdd FILL
XFILL_2__2116_ gnd vdd FILL
XFILL_3__1820_ gnd vdd FILL
XFILL_0__3303_ gnd vdd FILL
XFILL_5__1746_ gnd vdd FILL
XFILL_3__2605_ gnd vdd FILL
XFILL_6__3082_ gnd vdd FILL
XFILL_2__3494_ gnd vdd FILL
XFILL_2__3074_ gnd vdd FILL
XFILL_6__1815_ gnd vdd FILL
X_2954_ _895_ _1150__bF$buf1 _1174_ _591_ _39_ vdd 
+ gnd
+ OAI22X1
X_2534_ DIMUX[1] _227_ _200_ ABL[1] _228_ vdd 
+ gnd
+ AOI22X1
X_2114_ _902__bF$buf3 _912_ _1222_ _1223_ vdd gnd OAI21X1
XFILL_2__1807_ gnd vdd FILL
XFILL_5__2284_ gnd vdd FILL
X_3319_ _1__bF$buf9 vdd _1512_[1] clk_bF$buf6 state[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2696_ gnd vdd FILL
XFILL_1__2276_ gnd vdd FILL
XFILL_7__3243_ gnd vdd FILL
XFILL_3__3563_ gnd vdd FILL
XFILL_3__3143_ gnd vdd FILL
XFILL169950x72150 gnd vdd FILL
XFILL_5__3489_ gnd vdd FILL
XFILL_5__3069_ gnd vdd FILL
XFILL_2__1980_ gnd vdd FILL
XFILL_6__2773_ gnd vdd FILL
X_3492_ AI[5] _1734_ _1722_ _1737_ vdd gnd OAI21X1
XFILL_6__2353_ gnd vdd FILL
XFILL169950x39750 gnd vdd FILL
X_3072_ I _680_ _685_ vdd gnd NAND2X1
XFILL_2__2765_ gnd vdd FILL
XFILL_2__2345_ gnd vdd FILL
X_1805_ state[4] _913_ _931_ vdd gnd NAND2X1
XFILL_4__3632_ gnd vdd FILL
XFILL_4__3212_ gnd vdd FILL
XFILL_6__3558_ gnd vdd FILL
XFILL_6__3138_ gnd vdd FILL
XFILL_0__3532_ gnd vdd FILL
XFILL_0__3112_ gnd vdd FILL
XFILL_5__1975_ gnd vdd FILL
XFILL_1__1967_ gnd vdd FILL
XFILL_7__2514_ gnd vdd FILL
XFILL_3__2834_ gnd vdd FILL
XFILL_3__2414_ gnd vdd FILL
XFILL_5__3701_ gnd vdd FILL
XFILL_3__3619_ gnd vdd FILL
X_2763_ _428_ _401_ RDY_bF$buf4 _429_ vdd gnd OAI21X1
X_2343_ _1448_ _1449_ _1446_ _1450_ vdd gnd NAND3X1
XFILL_5__2093_ gnd vdd FILL
XFILL_4__2903_ gnd vdd FILL
XFILL_6__2829_ gnd vdd FILL
X_3548_ _1722_ _1577_ _1578_ vdd gnd NAND2X1
XFILL_6__2409_ gnd vdd FILL
X_3128_ ADD[1] _729_ _734_ _735_ vdd gnd OAI21X1
XFILL_7__3472_ gnd vdd FILL
XFILL_1__2085_ gnd vdd FILL
XFILL_0__2803_ gnd vdd FILL
XFILL_5__3298_ gnd vdd FILL
XFILL_6__2582_ gnd vdd FILL
XFILL_6__2162_ gnd vdd FILL
XFILL_2__2994_ gnd vdd FILL
XFILL_2__2574_ gnd vdd FILL
XFILL_2__2154_ gnd vdd FILL
XFILL_4__3021_ gnd vdd FILL
XFILL_5__1784_ gnd vdd FILL
X_2819_ _285_ _352_ _482_ vdd gnd NOR2X1
XFILL_1__1776_ gnd vdd FILL
XFILL_7__2743_ gnd vdd FILL
XFILL_3__2643_ gnd vdd FILL
XFILL_3__2223_ gnd vdd FILL
XFILL_5__2989_ gnd vdd FILL
XFILL_5__2569_ gnd vdd FILL
XFILL_5__2149_ gnd vdd FILL
XFILL_5__3510_ gnd vdd FILL
XFILL_1__3502_ gnd vdd FILL
XFILL_3__3008_ gnd vdd FILL
XFILL_6__1853_ gnd vdd FILL
X_2992_ _1402_ _559_ _621_ vdd gnd NAND2X1
X_2572_ _1014_ _218_ _260_ _261_ vdd gnd OAI21X1
X_2152_ _931__bF$buf1 _984_ _886__bF$buf0 _1261_ vdd gnd OAI21X1
XFILL_2__1845_ gnd vdd FILL
XFILL_4__2712_ gnd vdd FILL
XFILL_6__2638_ gnd vdd FILL
X_3357_ _1__bF$buf6 vdd _34_ clk_bF$buf9 op[2] vdd 
+ gnd
+ DFFSR
XFILL_6__2218_ gnd vdd FILL
XFILL_0__2612_ gnd vdd FILL
XFILL_3__3181_ gnd vdd FILL
XFILL_1__3099_ gnd vdd FILL
XFILL_3__1914_ gnd vdd FILL
XFILL_6__2391_ gnd vdd FILL
XFILL_2__2383_ gnd vdd FILL
X_1843_ _967_ _968_ vdd gnd INVX2
XFILL_4__3670_ gnd vdd FILL
XFILL_4__3250_ gnd vdd FILL
XFILL_6__3596_ gnd vdd FILL
XFILL_6__3176_ gnd vdd FILL
XFILL_2__3588_ gnd vdd FILL
XFILL_0__3570_ gnd vdd FILL
XFILL_2__3168_ gnd vdd FILL
XFILL_0__3150_ gnd vdd FILL
XFILL_7_CLKBUF1_insert27 gnd vdd FILL
XFILL_7_CLKBUF1_insert29 gnd vdd FILL
XFILL_6__1909_ gnd vdd FILL
X_2628_ _304_ _218_ _307_ _1741_[15] vdd gnd OAI21X1
X_2208_ _1315_ _1316_ _1317_ vdd gnd AND2X2
XFILL_7__2972_ gnd vdd FILL
XFILL_7__2132_ gnd vdd FILL
XFILL_3__2872_ gnd vdd FILL
XFILL_3__2452_ gnd vdd FILL
XFILL_3__2032_ gnd vdd FILL
XFILL_5__2798_ gnd vdd FILL
XFILL_5__2378_ gnd vdd FILL
XFILL_1__3311_ gnd vdd FILL
XFILL_3__3657_ gnd vdd FILL
XFILL_3__3237_ gnd vdd FILL
X_2381_ _1369_ _1372_ _1487_ vdd gnd NOR2X1
XFILL_4__2941_ gnd vdd FILL
XFILL_4__2521_ gnd vdd FILL
XFILL_4__2101_ gnd vdd FILL
XFILL_6__2867_ gnd vdd FILL
X_3586_ _1725_ alu_op[2] _1615_ _1616_ vdd gnd OAI21X1
XFILL_6__2447_ gnd vdd FILL
XFILL_6__2027_ gnd vdd FILL
X_3166_ _722_ _767_ _768_ _74_ vdd gnd OAI21X1
XFILL_7__3090_ gnd vdd FILL
XFILL_2__2859_ gnd vdd FILL
XFILL_0__2841_ gnd vdd FILL
XFILL_0__2421_ gnd vdd FILL
XFILL_2__2439_ gnd vdd FILL
XFILL_2__2019_ gnd vdd FILL
XFILL_0__2001_ gnd vdd FILL
XFILL_4__3306_ gnd vdd FILL
XFILL_0__3626_ gnd vdd FILL
XFILL_0__3206_ gnd vdd FILL
XFILL_7__2608_ gnd vdd FILL
XFILL_2__2192_ gnd vdd FILL
XFILL_3__2928_ gnd vdd FILL
XFILL_3__2508_ gnd vdd FILL
X_2857_ _515_ _516_ _517_ vdd gnd AND2X2
X_2437_ _931__bF$buf3 _946_ _1204_ _141_ vdd gnd OAI21X1
X_2017_ _1074_ _1125_ _1128_ AI[5] vdd gnd OAI21X1
XFILL_7__2361_ gnd vdd FILL
XFILL_3__2681_ gnd vdd FILL
XFILL_3__2261_ gnd vdd FILL
XFILL_5__2187_ gnd vdd FILL
XFILL_1__2599_ gnd vdd FILL
XFILL_7__3566_ gnd vdd FILL
XFILL_1__2179_ gnd vdd FILL
XFILL_7__3146_ gnd vdd FILL
XFILL_1__3540_ gnd vdd FILL
XFILL_1__3120_ gnd vdd FILL
XFILL_3__3466_ gnd vdd FILL
XFILL_3__3046_ gnd vdd FILL
XFILL_6__1891_ gnd vdd FILL
X_2190_ _914__bF$buf4 _954_ _1299_ vdd gnd NOR2X1
XFILL_2__1883_ gnd vdd FILL
XFILL_4__2750_ gnd vdd FILL
XFILL_4__2330_ gnd vdd FILL
XFILL_6__2676_ gnd vdd FILL
X_3395_ _1__bF$buf5 vdd _64_ clk_bF$buf1 I vdd 
+ gnd
+ DFFSR
XFILL_6__2256_ gnd vdd FILL
XFILL_2__2668_ gnd vdd FILL
XFILL_0__2650_ gnd vdd FILL
XFILL_0__2230_ gnd vdd FILL
XFILL_2__2248_ gnd vdd FILL
XFILL_4__3535_ gnd vdd FILL
XFILL_4__3115_ gnd vdd FILL
XFILL168450x136950 gnd vdd FILL
XFILL_3__1952_ gnd vdd FILL
XFILL_0__3015_ gnd vdd FILL
XFILL_5__1878_ gnd vdd FILL
XFILL_7__2837_ gnd vdd FILL
XFILL_7__2417_ gnd vdd FILL
XFILL_1__2811_ gnd vdd FILL
XFILL_3__2737_ gnd vdd FILL
XFILL_3__2317_ gnd vdd FILL
X_1881_ PC[1] _1005_ vdd gnd INVX1
XFILL_5__3604_ gnd vdd FILL
XFILL_6__1947_ gnd vdd FILL
X_2666_ _320_ _331_ _338_ _340_ vdd gnd NAND3X1
X_2246_ _1353_ _1354_ vdd gnd INVX1
XFILL_7__2590_ gnd vdd FILL
XFILL_0__1921_ gnd vdd FILL
XFILL_2__1939_ gnd vdd FILL
XFILL_3__2490_ gnd vdd FILL
XFILL_3__2070_ gnd vdd FILL
XFILL_4__2806_ gnd vdd FILL
XFILL_0__2706_ gnd vdd FILL
XFILL_3__3695_ gnd vdd FILL
XFILL_3__3275_ gnd vdd FILL
XFILL_6__2485_ gnd vdd FILL
XFILL_6__2065_ gnd vdd FILL
XFILL_2__2897_ gnd vdd FILL
XFILL_2__2477_ gnd vdd FILL
XFILL_2__2057_ gnd vdd FILL
X_1937_ _AXYS[0]_[0] _1051_ _1053_ _1054_ vdd gnd NAND3X1
XFILL_7__1861_ gnd vdd FILL
XFILL_3__1761_ gnd vdd FILL
XFILL_0__3664_ gnd vdd FILL
XFILL_0__3244_ gnd vdd FILL
XFILL_7__2646_ gnd vdd FILL
XFILL_1__2620_ gnd vdd FILL
XFILL_1__2200_ gnd vdd FILL
XFILL_3__2966_ gnd vdd FILL
XFILL_3__2546_ gnd vdd FILL
XFILL_3__2126_ gnd vdd FILL
XFILL_4__1830_ gnd vdd FILL
X_2895_ sed _545_ vdd gnd INVX1
XFILL_6__1756_ gnd vdd FILL
X_2475_ _971_ _941_ _903__bF$buf2 _174_ vdd gnd OAI21X1
X_2055_ IRHOLD_valid DIMUX[3] _1163_ _1164_ vdd gnd OAI21X1
XFILL_2__1748_ gnd vdd FILL
XFILL_4__2615_ gnd vdd FILL
XFILL_0__2935_ gnd vdd FILL
XFILL_0__2515_ gnd vdd FILL
XFILL_3__3084_ gnd vdd FILL
XFILL_7__1917_ gnd vdd FILL
XFILL_3__1817_ gnd vdd FILL
XFILL_6__2294_ gnd vdd FILL
XFILL_2__2286_ gnd vdd FILL
X_1746_ RDY_bF$buf0 _878_ _879_ DIMUX[0] vdd gnd OAI21X1
XFILL_4__3573_ gnd vdd FILL
XFILL_4__3153_ gnd vdd FILL
XFILL_6__3499_ gnd vdd FILL
XFILL_6__3079_ gnd vdd FILL
XFILL_3__1990_ gnd vdd FILL
XFILL_0__3473_ gnd vdd FILL
XFILL_0__3053_ gnd vdd FILL
XFILL_7__2875_ gnd vdd FILL
XFILL_7__2035_ gnd vdd FILL
XFILL_3__2775_ gnd vdd FILL
XFILL_3__2355_ gnd vdd FILL
XFILL_5__3642_ gnd vdd FILL
XFILL_5__3222_ gnd vdd FILL
XFILL_1__3634_ gnd vdd FILL
XFILL_1__3214_ gnd vdd FILL
XFILL_6__1985_ gnd vdd FILL
X_2284_ _1324_ _1391_ _1392_ vdd gnd NOR2X1
XFILL_2__1977_ gnd vdd FILL
XFILL_3_BUFX2_insert20 gnd vdd FILL
XFILL_3_BUFX2_insert21 gnd vdd FILL
XFILL_3_BUFX2_insert22 gnd vdd FILL
XFILL_3_BUFX2_insert23 gnd vdd FILL
XFILL_3_BUFX2_insert24 gnd vdd FILL
XFILL_3_BUFX2_insert25 gnd vdd FILL
XFILL_4__2844_ gnd vdd FILL
XFILL_4__2424_ gnd vdd FILL
XFILL_4__2004_ gnd vdd FILL
X_3489_ _1718_ BI[5] _1734_ vdd gnd AND2X2
X_3069_ _681_ _677_ _956_ _682_ vdd gnd OAI21X1
XFILL_0__2744_ gnd vdd FILL
XFILL_6__3711_ gnd vdd FILL
XFILL_0__2324_ gnd vdd FILL
XFILL_2__3703_ gnd vdd FILL
XFILL_4__3629_ gnd vdd FILL
XFILL_4__3209_ gnd vdd FILL
XFILL_0__3529_ gnd vdd FILL
XFILL_0__3109_ gnd vdd FILL
XFILL_5__2913_ gnd vdd FILL
XFILL_2__2095_ gnd vdd FILL
XFILL_1__2905_ gnd vdd FILL
X_1975_ ABH[1] _1091_ vdd gnd INVX1
XFILL_0__3282_ gnd vdd FILL
XFILL_7__2264_ gnd vdd FILL
X_3701_ _1741_[4] AB[4] vdd gnd BUFX2
XFILL_3__2584_ gnd vdd FILL
XFILL_3__2164_ gnd vdd FILL
XFILL_5__3451_ gnd vdd FILL
XFILL_7__3469_ gnd vdd FILL
XFILL_7__3049_ gnd vdd FILL
XFILL_5__3031_ gnd vdd FILL
XFILL_1__3023_ gnd vdd FILL
XFILL_6__1794_ gnd vdd FILL
X_2093_ _929_ _908_ _1202_ vdd gnd NAND2X1
XFILL_2__1786_ gnd vdd FILL
XFILL_4__2653_ gnd vdd FILL
XFILL_4__2233_ gnd vdd FILL
XFILL_6__2999_ gnd vdd FILL
XFILL_6__2579_ gnd vdd FILL
X_3298_ _262_ _860_ _867_ _107_ vdd gnd OAI21X1
XFILL_6__2159_ gnd vdd FILL
XFILL_0__2973_ gnd vdd FILL
XFILL_0__2553_ gnd vdd FILL
XFILL_6__3520_ gnd vdd FILL
XFILL_0__2133_ gnd vdd FILL
XFILL_6__3100_ gnd vdd FILL
XFILL_2__3512_ gnd vdd FILL
XFILL_7__1955_ gnd vdd FILL
XFILL_4__3018_ gnd vdd FILL
XFILL_3__1855_ gnd vdd FILL
XFILL_5__2722_ gnd vdd FILL
XFILL_5__2302_ gnd vdd FILL
XFILL_1__2714_ gnd vdd FILL
X_1784_ state[2] state[3] _910_ vdd gnd AND2X2
XFILL_4__3191_ gnd vdd FILL
XFILL_5__3507_ gnd vdd FILL
XFILL_0__3091_ gnd vdd FILL
XFILL_4__1924_ gnd vdd FILL
X_2989_ _1150__bF$buf4 _618_ _619_ vdd gnd NAND2X1
X_2569_ _216_ _209_ ADD[6] _258_ vdd gnd OAI21X1
X_2149_ _902__bF$buf2 _984_ _886__bF$buf6 _1258_ vdd gnd OAI21X1
XFILL_7__2493_ gnd vdd FILL
XFILL_0__1824_ gnd vdd FILL
X_3510_ BI[3] _1718_ _1540_ vdd gnd NAND2X1
XFILL_3__2393_ gnd vdd FILL
XFILL_4__2709_ gnd vdd FILL
XFILL_5__3260_ gnd vdd FILL
XFILL_7__3278_ gnd vdd FILL
XFILL_0__2609_ gnd vdd FILL
XFILL_1__3672_ gnd vdd FILL
XFILL_1__3252_ gnd vdd FILL
XFILL_3__3598_ gnd vdd FILL
XFILL_3__3178_ gnd vdd FILL
XFILL_4__2882_ gnd vdd FILL
XFILL_4__2462_ gnd vdd FILL
XFILL_4__2042_ gnd vdd FILL
XFILL_6__2388_ gnd vdd FILL
XFILL_0__2782_ gnd vdd FILL
XFILL_0__2362_ gnd vdd FILL
XFILL_7__1764_ gnd vdd FILL
XFILL_4__3667_ gnd vdd FILL
XFILL_4__3247_ gnd vdd FILL
XFILL_0__3567_ gnd vdd FILL
XFILL_0__3147_ gnd vdd FILL
XFILL_4_BUFX2_insert70 gnd vdd FILL
XFILL_4_BUFX2_insert71 gnd vdd FILL
XFILL_4_BUFX2_insert72 gnd vdd FILL
XFILL_4_BUFX2_insert73 gnd vdd FILL
XFILL_4_BUFX2_insert74 gnd vdd FILL
XFILL_4_BUFX2_insert75 gnd vdd FILL
XFILL_4_BUFX2_insert76 gnd vdd FILL
XFILL_4_BUFX2_insert77 gnd vdd FILL
XFILL_4_BUFX2_insert78 gnd vdd FILL
XFILL_4_BUFX2_insert79 gnd vdd FILL
XFILL_5__2951_ gnd vdd FILL
XFILL_7__2969_ gnd vdd FILL
XFILL_5__2531_ gnd vdd FILL
XFILL_7__2129_ gnd vdd FILL
XFILL_5__2111_ gnd vdd FILL
XFILL_1__2943_ gnd vdd FILL
XFILL_1__2523_ gnd vdd FILL
XFILL_1__2103_ gnd vdd FILL
XFILL_3__2869_ gnd vdd FILL
XFILL_3__2449_ gnd vdd FILL
XFILL_3__2029_ gnd vdd FILL
XFILL_5__3316_ gnd vdd FILL
XFILL_1__3308_ gnd vdd FILL
X_2798_ _291_ _378_ _460_ _461_ vdd gnd OAI21X1
X_2378_ _1325_ _1250_ _1483_ _1484_ vdd gnd NAND3X1
XFILL_6__2600_ gnd vdd FILL
XFILL_4__2938_ gnd vdd FILL
XFILL_4__2518_ gnd vdd FILL
XFILL_0__2838_ gnd vdd FILL
XFILL_0__2418_ gnd vdd FILL
XFILL_1__3481_ gnd vdd FILL
XFILL_1__3061_ gnd vdd FILL
XFILL_5__1802_ gnd vdd FILL
XFILL_4__2691_ gnd vdd FILL
XFILL_4__2271_ gnd vdd FILL
XFILL_6__2197_ gnd vdd FILL
XFILL_0__2591_ gnd vdd FILL
XFILL_2__2189_ gnd vdd FILL
XFILL_0__2171_ gnd vdd FILL
XFILL_2__3550_ gnd vdd FILL
XFILL_2__3130_ gnd vdd FILL
XFILL_7__1993_ gnd vdd FILL
XFILL_4__3476_ gnd vdd FILL
XFILL_4__3056_ gnd vdd FILL
XFILL_3__1893_ gnd vdd FILL
XFILL_7__2778_ gnd vdd FILL
XFILL_5__2760_ gnd vdd FILL
XFILL_7__2358_ gnd vdd FILL
XFILL_5__2340_ gnd vdd FILL
XFILL_1__2752_ gnd vdd FILL
XFILL_1__2332_ gnd vdd FILL
XFILL_3__2678_ gnd vdd FILL
XFILL_3__2258_ gnd vdd FILL
XFILL_5__3545_ gnd vdd FILL
XFILL_5__3125_ gnd vdd FILL
XFILL_1__3537_ gnd vdd FILL
XFILL_1__3117_ gnd vdd FILL
XFILL_4__1962_ gnd vdd FILL
XFILL_6__1888_ gnd vdd FILL
X_2187_ CO backwards _1296_ vdd gnd OR2X2
XFILL_0__1862_ gnd vdd FILL
XFILL_2__2821_ gnd vdd FILL
XFILL_2__2401_ gnd vdd FILL
XFILL_4__2747_ gnd vdd FILL
XFILL_4__2327_ gnd vdd FILL
XFILL_0__2647_ gnd vdd FILL
XFILL_6__3614_ gnd vdd FILL
XFILL_0__2227_ gnd vdd FILL
XFILL_1__3290_ gnd vdd FILL
XFILL_2__3606_ gnd vdd FILL
XFILL169950x136950 gnd vdd FILL
XFILL_3__1949_ gnd vdd FILL
XFILL_4__2080_ gnd vdd FILL
XFILL_5__2816_ gnd vdd FILL
XFILL_1__2808_ gnd vdd FILL
X_1878_ _995_ _1002_ _1003_ vdd gnd NOR2X1
XFILL_4__3285_ gnd vdd FILL
XFILL_0__3185_ gnd vdd FILL
XFILL_7__2587_ gnd vdd FILL
XFILL_7__2167_ gnd vdd FILL
XFILL_0__1918_ gnd vdd FILL
X_3604_ _1738_ _1633_ _1631_ _1634_ vdd gnd OAI21X1
XFILL_1__2981_ gnd vdd FILL
XFILL_1__2561_ gnd vdd FILL
XFILL_1__2141_ gnd vdd FILL
XFILL_3__2487_ gnd vdd FILL
XFILL_3__2067_ gnd vdd FILL
XFILL_4__1771_ gnd vdd FILL
XFILL167550x133350 gnd vdd FILL
XFILL_2__2630_ gnd vdd FILL
XFILL_2__2210_ gnd vdd FILL
XFILL_4__2976_ gnd vdd FILL
XFILL_4__2556_ gnd vdd FILL
XFILL_4__2136_ gnd vdd FILL
XFILL_0__2876_ gnd vdd FILL
XFILL_0__2456_ gnd vdd FILL
XFILL_0__2036_ gnd vdd FILL
XFILL_6__3003_ gnd vdd FILL
XFILL_5__1840_ gnd vdd FILL
XFILL_7__1858_ gnd vdd FILL
XFILL_1__1832_ gnd vdd FILL
XFILL_3__1758_ gnd vdd FILL
XFILL_5__2625_ gnd vdd FILL
XFILL_5__2205_ gnd vdd FILL
XFILL_1__2617_ gnd vdd FILL
XFILL_4__3094_ gnd vdd FILL
XFILL_2__1901_ gnd vdd FILL
XFILL_4__1827_ gnd vdd FILL
XFILL_7__2396_ gnd vdd FILL
X_3413_ _1__bF$buf0 vdd _82_ clk_bF$buf7 _AXYS[1]_[5] vdd 
+ gnd
+ DFFSR
XFILL_1__2790_ gnd vdd FILL
XFILL_1__2370_ gnd vdd FILL
XFILL_3__2296_ gnd vdd FILL
XFILL_5__3583_ gnd vdd FILL
XFILL_5__3163_ gnd vdd FILL
XFILL_1__3575_ gnd vdd FILL
XFILL_1__3155_ gnd vdd FILL
XFILL_4__2785_ gnd vdd FILL
XFILL_4__2365_ gnd vdd FILL
XFILL_0__2685_ gnd vdd FILL
XFILL_6__3652_ gnd vdd FILL
XFILL_0__2265_ gnd vdd FILL
XFILL_6__3232_ gnd vdd FILL
XFILL_2__3644_ gnd vdd FILL
XFILL_2__3224_ gnd vdd FILL
XFILL_3__1987_ gnd vdd FILL
XFILL_5__2854_ gnd vdd FILL
XFILL_5__2434_ gnd vdd FILL
XFILL_5__2014_ gnd vdd FILL
XFILL_1__2846_ gnd vdd FILL
XFILL_1__2426_ gnd vdd FILL
XFILL_1__2006_ gnd vdd FILL
XFILL_3__3713_ gnd vdd FILL
XFILL_5__3639_ gnd vdd FILL
XFILL_5__3219_ gnd vdd FILL
XFILL_0__1956_ gnd vdd FILL
XFILL_6__2923_ gnd vdd FILL
X_3642_ _1634_ _1671_ _1631_ _1672_ vdd gnd OAI21X1
XFILL_6__2503_ gnd vdd FILL
X_3222_ _787_ _798_ _806_ _92_ vdd gnd AOI21X1
XFILL_2__2915_ gnd vdd FILL
XFILL_6__3708_ gnd vdd FILL
XFILL_4__2594_ gnd vdd FILL
XFILL_4__2174_ gnd vdd FILL
XFILL_0__2494_ gnd vdd FILL
XFILL_6__3461_ gnd vdd FILL
XFILL_0__2074_ gnd vdd FILL
XFILL_6__3041_ gnd vdd FILL
XFILL_2__3453_ gnd vdd FILL
XFILL_2__3033_ gnd vdd FILL
X_2913_ _1149__bF$buf2 _557_ _558_ _31_ vdd gnd OAI21X1
XFILL_1__1870_ gnd vdd FILL
XFILL_3__1796_ gnd vdd FILL
XFILL_0__3699_ gnd vdd FILL
XFILL_0__3279_ gnd vdd FILL
XFILL_5__2663_ gnd vdd FILL
XFILL_5__2243_ gnd vdd FILL
XFILL_1__2655_ gnd vdd FILL
XFILL_7__3622_ gnd vdd FILL
XFILL_1__2235_ gnd vdd FILL
XFILL_3__3522_ gnd vdd FILL
XFILL_3__3102_ gnd vdd FILL
XFILL_5__3028_ gnd vdd FILL
XFILL_4__1865_ gnd vdd FILL
XFILL_0__1765_ gnd vdd FILL
XFILL_6__2732_ gnd vdd FILL
X_3451_ AN ADD[6] _1700_ vdd gnd NOR2X1
XFILL_6__2312_ gnd vdd FILL
X_3031_ _1010_ _647_ _651_ _56_ vdd gnd OAI21X1
XFILL_2__2724_ gnd vdd FILL
XFILL_2__2304_ gnd vdd FILL
XFILL_6__3517_ gnd vdd FILL
XFILL_1__3193_ gnd vdd FILL
XFILL_2__3509_ gnd vdd FILL
XFILL_5__1934_ gnd vdd FILL
XFILL_1__1926_ gnd vdd FILL
XFILL168450x32550 gnd vdd FILL
XFILL_5__2719_ gnd vdd FILL
XFILL_6__3270_ gnd vdd FILL
XFILL_2__3262_ gnd vdd FILL
XFILL_4__3188_ gnd vdd FILL
X_2722_ _322_ ADD[6] _390_ _391_ vdd gnd AOI21X1
X_2302_ _1351_ _1409_ vdd gnd INVX1
XFILL_0__3088_ gnd vdd FILL
XFILL_5__2892_ gnd vdd FILL
XFILL_5__2472_ gnd vdd FILL
XFILL_5__2052_ gnd vdd FILL
X_3507_ AI[4] _1537_ vdd gnd INVX1
XFILL_1__2884_ gnd vdd FILL
XFILL_1__2464_ gnd vdd FILL
XFILL_1__2044_ gnd vdd FILL
XFILL_7__3011_ gnd vdd FILL
XFILL_5__3677_ gnd vdd FILL
XFILL_5__3257_ gnd vdd FILL
XFILL_1__3669_ gnd vdd FILL
XFILL_1__3249_ gnd vdd FILL
XFILL_0__1994_ gnd vdd FILL
XFILL_6__2961_ gnd vdd FILL
XFILL_6__2541_ gnd vdd FILL
X_3680_ _1513_ vdd _1515_ clk_bF$buf6 CO vdd 
+ gnd
+ DFFSR
X_3260_ _1221_ _969_ _1424_ _836_ vdd gnd AOI21X1
XFILL_6__2121_ gnd vdd FILL
XFILL_2__2953_ gnd vdd FILL
XFILL_2__2533_ gnd vdd FILL
XFILL_2__2113_ gnd vdd FILL
XFILL_4__2879_ gnd vdd FILL
XFILL_4__2459_ gnd vdd FILL
XFILL_4__2039_ gnd vdd FILL
XFILL_0__2779_ gnd vdd FILL
XFILL_0__2359_ gnd vdd FILL
XFILL_0__3300_ gnd vdd FILL
XFILL_3__2602_ gnd vdd FILL
XFILL_5__2948_ gnd vdd FILL
XFILL_5__2528_ gnd vdd FILL
XFILL_5__2108_ gnd vdd FILL
XFILL_2__3491_ gnd vdd FILL
XFILL_2__3071_ gnd vdd FILL
XFILL_6__1812_ gnd vdd FILL
X_2951_ compare _1149__bF$buf4 _569_ _589_ _590_ vdd 
+ gnd
+ AOI22X1
X_2531_ _225_ _1741_[0] vdd gnd INVX1
X_2111_ _1150__bF$buf0 _1178_ _1219_ _1220_ vdd gnd NAND3X1
XFILL_2__1804_ gnd vdd FILL
XFILL_5__2281_ gnd vdd FILL
X_3316_ _1741_[15] _869_ _877_ vdd gnd NAND2X1
XFILL_1__2693_ gnd vdd FILL
XFILL_1__2273_ gnd vdd FILL
XFILL_7__3240_ gnd vdd FILL
XFILL_3__2199_ gnd vdd FILL
XFILL_3__3560_ gnd vdd FILL
XFILL_3__3140_ gnd vdd FILL
XFILL_5__3486_ gnd vdd FILL
XFILL_5__3066_ gnd vdd FILL
XFILL_1__3478_ gnd vdd FILL
XFILL_1__3058_ gnd vdd FILL
XFILL_6__2770_ gnd vdd FILL
XFILL_6__2350_ gnd vdd FILL
XFILL_2__2762_ gnd vdd FILL
XFILL_2__2342_ gnd vdd FILL
XFILL_4__2688_ gnd vdd FILL
XFILL_4__2268_ gnd vdd FILL
X_1802_ _927_ _926_ _928_ vdd gnd NAND2X1
XFILL_0__2588_ gnd vdd FILL
XFILL_6__3555_ gnd vdd FILL
XFILL_0__2168_ gnd vdd FILL
XFILL_6__3135_ gnd vdd FILL
XFILL_2__3547_ gnd vdd FILL
XFILL_2__3127_ gnd vdd FILL
XFILL_5__1972_ gnd vdd FILL
XFILL_1__1964_ gnd vdd FILL
XFILL_7__2511_ gnd vdd FILL
XFILL_3__2831_ gnd vdd FILL
XFILL_3__2411_ gnd vdd FILL
XFILL_5__2757_ gnd vdd FILL
XFILL_5__2337_ gnd vdd FILL
XFILL169950x93750 gnd vdd FILL
XFILL_1__2749_ gnd vdd FILL
XFILL_1__2329_ gnd vdd FILL
XFILL_3__3616_ gnd vdd FILL
X_2760_ _966_ _351_ _425_ _426_ vdd gnd OAI21X1
X_2340_ _931__bF$buf1 _928_ _886__bF$buf0 _1447_ vdd gnd OAI21X1
XFILL_4__1959_ gnd vdd FILL
XFILL_5__2090_ gnd vdd FILL
XFILL_4__2900_ gnd vdd FILL
XFILL168750x150 gnd vdd FILL
XFILL_0__1859_ gnd vdd FILL
XFILL_6__2826_ gnd vdd FILL
X_3545_ BI[0] _1575_ vdd gnd INVX1
XFILL_6__2406_ gnd vdd FILL
X_3125_ _731_ _730_ ADD[1] _732_ vdd gnd OAI21X1
XFILL_1__2082_ gnd vdd FILL
XFILL_0__2800_ gnd vdd FILL
XFILL_2__2818_ gnd vdd FILL
XFILL_5__3295_ gnd vdd FILL
XFILL_1__3287_ gnd vdd FILL
XFILL_2__2991_ gnd vdd FILL
XFILL_2__2571_ gnd vdd FILL
XFILL_2__2151_ gnd vdd FILL
XFILL_4__2497_ gnd vdd FILL
XFILL_4__2077_ gnd vdd FILL
XFILL168750x75750 gnd vdd FILL
XFILL_0__2397_ gnd vdd FILL
XFILL_5__1781_ gnd vdd FILL
X_2816_ _445_ _1110_ _479_ vdd gnd AND2X2
XFILL_1__1773_ gnd vdd FILL
XFILL_7__2740_ gnd vdd FILL
XFILL_3__2640_ gnd vdd FILL
XFILL_3__2220_ gnd vdd FILL
XFILL_5__2986_ gnd vdd FILL
XFILL_5__2566_ gnd vdd FILL
XFILL_5__2146_ gnd vdd FILL
XFILL_1__2978_ gnd vdd FILL
XFILL_1__2558_ gnd vdd FILL
XFILL_7__3525_ gnd vdd FILL
XFILL_1__2138_ gnd vdd FILL
XFILL_3__3005_ gnd vdd FILL
XFILL_6__1850_ gnd vdd FILL
XFILL_2__1842_ gnd vdd FILL
XFILL_4__1768_ gnd vdd FILL
XFILL_6__2635_ gnd vdd FILL
X_3354_ _1__bF$buf2 vdd _31_ clk_bF$buf10 bit_ins vdd 
+ gnd
+ DFFSR
XFILL_6__2215_ gnd vdd FILL
XFILL_2__2627_ gnd vdd FILL
XFILL_2__2207_ gnd vdd FILL
XFILL_1__3096_ gnd vdd FILL
XFILL_3__1911_ gnd vdd FILL
XFILL_5__1837_ gnd vdd FILL
XFILL_1__1829_ gnd vdd FILL
XFILL_2__2380_ gnd vdd FILL
X_1840_ PC[0] _965_ vdd gnd INVX1
XFILL_6__3593_ gnd vdd FILL
XFILL_6__3173_ gnd vdd FILL
XFILL_2__3585_ gnd vdd FILL
XFILL_2__3165_ gnd vdd FILL
XFILL_6__1906_ gnd vdd FILL
X_2625_ _198_ AN _1145_ _305_ vdd gnd AOI21X1
X_2205_ RDY_bF$buf1 _1021_ _1313_ _1314_ vdd gnd OAI21X1
XFILL_5__2795_ gnd vdd FILL
XFILL_5__2375_ gnd vdd FILL
XFILL_1__2787_ gnd vdd FILL
XFILL_1__2367_ gnd vdd FILL
XFILL_3__3654_ gnd vdd FILL
XFILL_3__3234_ gnd vdd FILL
XFILL_4__1997_ gnd vdd FILL
XFILL_0__1897_ gnd vdd FILL
XFILL_6__2864_ gnd vdd FILL
X_3583_ _1610_ _1580_ _1613_ vdd gnd NOR2X1
XFILL_6__2444_ gnd vdd FILL
XFILL_6__2024_ gnd vdd FILL
X_3163_ _1319__bF$buf1 _765_ _766_ vdd gnd NOR2X1
XFILL_2__2856_ gnd vdd FILL
XFILL_2__2436_ gnd vdd FILL
XFILL_2__2016_ gnd vdd FILL
XFILL_4__3303_ gnd vdd FILL
XFILL_6__3649_ gnd vdd FILL
XFILL_6__3229_ gnd vdd FILL
XFILL_0__3623_ gnd vdd FILL
XFILL_0__3203_ gnd vdd FILL
XFILL_3__2925_ gnd vdd FILL
XFILL_3__2505_ gnd vdd FILL
X_2854_ _304_ _418_ _514_ vdd gnd NOR2X1
X_2434_ _139_ _138_ alu_op[2] vdd gnd NAND2X1
X_2014_ ABH[5] _925_ _1126_ vdd gnd NAND2X1
XFILL_5__2184_ gnd vdd FILL
X_3639_ _1667_ _1664_ _1668_ _1669_ vdd gnd OAI21X1
X_3219_ _AXYS[2]_[6] _798_ _805_ vdd gnd NOR2X1
XFILL_1__2596_ gnd vdd FILL
XFILL_7__3563_ gnd vdd FILL
XFILL_1__2176_ gnd vdd FILL
XFILL_7__3143_ gnd vdd FILL
XFILL_3__3463_ gnd vdd FILL
XFILL_3__3043_ gnd vdd FILL
XFILL_2__1880_ gnd vdd FILL
XFILL_6__2673_ gnd vdd FILL
X_3392_ _1__bF$buf10 vdd _61_ clk_bF$buf4 IRHOLD_valid vdd 
+ gnd
+ DFFSR
XFILL_6__2253_ gnd vdd FILL
XFILL_2__2665_ gnd vdd FILL
XFILL_2__2245_ gnd vdd FILL
XFILL_4__3532_ gnd vdd FILL
XFILL_4__3112_ gnd vdd FILL
XFILL_6__3458_ gnd vdd FILL
XFILL_6__3038_ gnd vdd FILL
XFILL_0__3012_ gnd vdd FILL
XFILL_5__1875_ gnd vdd FILL
XFILL_1__1867_ gnd vdd FILL
XFILL_7__2414_ gnd vdd FILL
XFILL_3__2734_ gnd vdd FILL
XFILL_3__2314_ gnd vdd FILL
XFILL_5__3601_ gnd vdd FILL
XFILL_7__3619_ gnd vdd FILL
XFILL_3__3519_ gnd vdd FILL
XFILL_6__1944_ gnd vdd FILL
X_2663_ _322_ ADD[1] _336_ _337_ vdd gnd AOI21X1
X_2243_ _1160_ _1328_ _1351_ vdd gnd NOR2X1
XFILL_2__1936_ gnd vdd FILL
XFILL_4__2803_ gnd vdd FILL
XFILL_6__2729_ gnd vdd FILL
X_3448_ _1__bF$buf0 vdd _116_ clk_bF$buf0 ABH[7] vdd 
+ gnd
+ DFFSR
XFILL_6__2309_ gnd vdd FILL
X_3028_ reset _645_ IRHOLD[2] _650_ vdd gnd OAI21X1
XFILL_0__2703_ gnd vdd FILL
XFILL_3__3692_ gnd vdd FILL
XFILL_3__3272_ gnd vdd FILL
XFILL_5__3198_ gnd vdd FILL
XFILL_6__2482_ gnd vdd FILL
XFILL_6__2062_ gnd vdd FILL
XFILL_2__2894_ gnd vdd FILL
XFILL_2__2474_ gnd vdd FILL
XFILL_2__2054_ gnd vdd FILL
X_1934_ _1048_ _1039_ _1051_ vdd gnd AND2X2
XFILL_6__3267_ gnd vdd FILL
XFILL_0__3661_ gnd vdd FILL
XFILL_2__3259_ gnd vdd FILL
XFILL_0__3241_ gnd vdd FILL
X_2719_ RDY_bF$buf3 _1012_ _388_ _7_ vdd gnd OAI21X1
XFILL_7__2643_ gnd vdd FILL
XFILL_3__2963_ gnd vdd FILL
XFILL_3__2543_ gnd vdd FILL
XFILL_3__2123_ gnd vdd FILL
XFILL_5__2889_ gnd vdd FILL
XFILL_5__2469_ gnd vdd FILL
XFILL_5__2049_ gnd vdd FILL
XFILL_6__1753_ gnd vdd FILL
X_2892_ _1185_ _1412_ _543_ vdd gnd NOR2X1
X_2472_ PC[4] _1080_ _154_ _171_ vdd gnd AOI21X1
X_2052_ _1160_ _1161_ vdd gnd INVX1
XFILL169950x25350 gnd vdd FILL
XFILL_2__1745_ gnd vdd FILL
XFILL_4__2612_ gnd vdd FILL
XFILL_6__2958_ gnd vdd FILL
X_3677_ AI[7] RDY_bF$buf7 _1697_ vdd gnd NAND2X1
XFILL_6__2538_ gnd vdd FILL
XFILL_6__2118_ gnd vdd FILL
X_3257_ _950_ _832_ _833_ vdd gnd NOR2X1
XFILL_0__2932_ gnd vdd FILL
XFILL_0__2512_ gnd vdd FILL
XFILL_3__3081_ gnd vdd FILL
XFILL_7__1914_ gnd vdd FILL
XFILL_3__1814_ gnd vdd FILL
XFILL_6__2291_ gnd vdd FILL
XFILL_2__2283_ gnd vdd FILL
XFILL_4__3570_ gnd vdd FILL
XFILL_4__3150_ gnd vdd FILL
XFILL_6__3496_ gnd vdd FILL
XFILL_6__3076_ gnd vdd FILL
XFILL_2__3488_ gnd vdd FILL
XFILL_0__3470_ gnd vdd FILL
XFILL_0__3050_ gnd vdd FILL
XFILL_2__3068_ gnd vdd FILL
XFILL_6__1809_ gnd vdd FILL
X_2948_ _920_ _1150__bF$buf2 _588_ _565_ _36_ vdd 
+ gnd
+ OAI22X1
X_2528_ _219_ _222_ _223_ vdd gnd AND2X2
X_2108_ _1185_ _1217_ vdd gnd INVX2
XFILL_7__2872_ gnd vdd FILL
XFILL_7__2032_ gnd vdd FILL
XFILL_3__2772_ gnd vdd FILL
XFILL_3__2352_ gnd vdd FILL
XFILL_5__2698_ gnd vdd FILL
XFILL_5__2278_ gnd vdd FILL
XFILL_1__3631_ gnd vdd FILL
XFILL_1__3211_ gnd vdd FILL
XFILL_3__3557_ gnd vdd FILL
XFILL_3__3137_ gnd vdd FILL
XFILL_6__1982_ gnd vdd FILL
X_2281_ RDY_bF$buf6 _1092_ _1388_ _1389_ vdd gnd OAI21X1
XFILL_2__1974_ gnd vdd FILL
XFILL_4__2841_ gnd vdd FILL
XFILL_4__2421_ gnd vdd FILL
XFILL_4__2001_ gnd vdd FILL
XFILL_6__2767_ gnd vdd FILL
X_3486_ _1714__bF$buf2 _1730_ _1731_ _1514_ vdd gnd OAI21X1
XFILL_6__2347_ gnd vdd FILL
X_3066_ _658_ _1344_ _661_ _679_ vdd gnd AOI21X1
XFILL_0__2741_ gnd vdd FILL
XFILL_2__2759_ gnd vdd FILL
XFILL_0__2321_ gnd vdd FILL
XFILL_2__2339_ gnd vdd FILL
XFILL_2__3700_ gnd vdd FILL
XFILL_4__3626_ gnd vdd FILL
XFILL_4__3206_ gnd vdd FILL
XFILL_0__3526_ gnd vdd FILL
XFILL_0__3106_ gnd vdd FILL
XFILL_5__1969_ gnd vdd FILL
XFILL_7__2928_ gnd vdd FILL
XFILL_5__2910_ gnd vdd FILL
XFILL_7__2508_ gnd vdd FILL
XFILL_2__2092_ gnd vdd FILL
XFILL_1__2902_ gnd vdd FILL
XFILL_3__2828_ gnd vdd FILL
XFILL_3__2408_ gnd vdd FILL
X_1972_ _AXYS[0]_[1] _1051_ _1053_ _1088_ vdd gnd NAND3X1
XFILL_2__3297_ gnd vdd FILL
XFILL168750x136950 gnd vdd FILL
X_2757_ _276_ _418_ _422_ _423_ vdd gnd OAI21X1
X_2337_ _988_ _1444_ vdd gnd INVX1
XFILL_7__2261_ gnd vdd FILL
XFILL_3__2581_ gnd vdd FILL
XFILL_3__2161_ gnd vdd FILL
XFILL_5__2087_ gnd vdd FILL
XFILL_1__2499_ gnd vdd FILL
XFILL_7__3466_ gnd vdd FILL
XFILL_1__2079_ gnd vdd FILL
XFILL_7__3046_ gnd vdd FILL
XFILL_1__3020_ gnd vdd FILL
XFILL_6__1791_ gnd vdd FILL
X_2090_ _901_ _974_ _1199_ vdd gnd NOR2X1
XFILL_2__1783_ gnd vdd FILL
XFILL_4__2650_ gnd vdd FILL
XFILL_4__2230_ gnd vdd FILL
XFILL_6__2996_ gnd vdd FILL
XFILL_6__2576_ gnd vdd FILL
X_3295_ ABL[5] _860_ _866_ vdd gnd NAND2X1
XFILL_6__2156_ gnd vdd FILL
XFILL_0__2970_ gnd vdd FILL
XFILL_2__2988_ gnd vdd FILL
XFILL_0__2550_ gnd vdd FILL
XFILL_2__2568_ gnd vdd FILL
XFILL_2__2148_ gnd vdd FILL
XFILL_0__2130_ gnd vdd FILL
XFILL_4__3015_ gnd vdd FILL
XFILL_3__1852_ gnd vdd FILL
XFILL_5__1778_ gnd vdd FILL
XFILL_7__2737_ gnd vdd FILL
XFILL_7__2317_ gnd vdd FILL
XFILL_1__2711_ gnd vdd FILL
XFILL_3__2637_ gnd vdd FILL
XFILL_3__2217_ gnd vdd FILL
X_1781_ _905_ _906_ _907_ vdd gnd NAND2X1
XFILL_5__3504_ gnd vdd FILL
XFILL_4__1921_ gnd vdd FILL
XFILL_6__1847_ gnd vdd FILL
X_2986_ _530_ _612_ _615_ _616_ vdd gnd OAI21X1
X_2566_ _1012_ _218_ _255_ _256_ vdd gnd OAI21X1
X_2146_ _1178_ _1175_ _1255_ vdd gnd NOR2X1
XFILL_7__2490_ gnd vdd FILL
XFILL_2__1839_ gnd vdd FILL
XFILL_0__1821_ gnd vdd FILL
XFILL_3__2390_ gnd vdd FILL
XFILL169050x75750 gnd vdd FILL
XFILL_4__2706_ gnd vdd FILL
XFILL_7__3695_ gnd vdd FILL
XFILL_7__3275_ gnd vdd FILL
XFILL_0__2606_ gnd vdd FILL
XFILL_3__3595_ gnd vdd FILL
XFILL_3__3175_ gnd vdd FILL
XFILL_3__1908_ gnd vdd FILL
XFILL_6__2385_ gnd vdd FILL
XFILL_2__2797_ gnd vdd FILL
XFILL_2__2377_ gnd vdd FILL
X_1837_ _933_ _962_ _963_ vdd gnd NAND2X1
XFILL_7__1761_ gnd vdd FILL
XFILL_4__3664_ gnd vdd FILL
XFILL_4__3244_ gnd vdd FILL
XFILL_0__3564_ gnd vdd FILL
XFILL_0__3144_ gnd vdd FILL
XFILL_4_BUFX2_insert40 gnd vdd FILL
XFILL_4_BUFX2_insert41 gnd vdd FILL
XFILL_4_BUFX2_insert42 gnd vdd FILL
XFILL_4_BUFX2_insert43 gnd vdd FILL
XFILL_4_BUFX2_insert44 gnd vdd FILL
XFILL_4_BUFX2_insert45 gnd vdd FILL
XFILL_4_BUFX2_insert46 gnd vdd FILL
XFILL_4_BUFX2_insert47 gnd vdd FILL
XFILL_1__1999_ gnd vdd FILL
XFILL_4_BUFX2_insert48 gnd vdd FILL
XFILL_4_BUFX2_insert49 gnd vdd FILL
XFILL_7__2966_ gnd vdd FILL
XFILL_7__2546_ gnd vdd FILL
XFILL_1__2940_ gnd vdd FILL
XFILL_1__2520_ gnd vdd FILL
XFILL_1__2100_ gnd vdd FILL
XFILL_3__2866_ gnd vdd FILL
XFILL_3__2446_ gnd vdd FILL
XFILL_3__2026_ gnd vdd FILL
XFILL_5__3313_ gnd vdd FILL
XFILL_1__3305_ gnd vdd FILL
X_2795_ PC[12] _886__bF$buf3 _458_ vdd gnd NAND2X1
X_2375_ _1408_ _1149__bF$buf3 _1481_ vdd gnd OR2X2
XFILL_4__2935_ gnd vdd FILL
XFILL_4__2515_ gnd vdd FILL
XFILL_0__2835_ gnd vdd FILL
XFILL_0__2415_ gnd vdd FILL
XFILL_6__2194_ gnd vdd FILL
XFILL_2__2186_ gnd vdd FILL
XFILL_7__1990_ gnd vdd FILL
XFILL_4__3473_ gnd vdd FILL
XFILL_4__3053_ gnd vdd FILL
XFILL_3__1890_ gnd vdd FILL
XFILL_7__2775_ gnd vdd FILL
XFILL_3__2675_ gnd vdd FILL
XFILL_3__2255_ gnd vdd FILL
XFILL_5__3542_ gnd vdd FILL
XFILL_5__3122_ gnd vdd FILL
XFILL_1__3534_ gnd vdd FILL
XFILL_1__3114_ gnd vdd FILL
XFILL_6__1885_ gnd vdd FILL
X_2184_ _886__bF$buf4 _1290_ _1292_ _1293_ vdd gnd OAI21X1
XFILL_2__1877_ gnd vdd FILL
XFILL_4__2744_ gnd vdd FILL
XFILL_4__2324_ gnd vdd FILL
X_3389_ _58_ clk_bF$buf4 IRHOLD[5] vdd gnd DFFPOSX1
XFILL_0__2644_ gnd vdd FILL
XFILL_6__3611_ gnd vdd FILL
XFILL_0__2224_ gnd vdd FILL
XFILL_2__3603_ gnd vdd FILL
XFILL_4__3529_ gnd vdd FILL
XFILL_4__3109_ gnd vdd FILL
XFILL_3__1946_ gnd vdd FILL
XFILL_0__3009_ gnd vdd FILL
XFILL_6_CLKBUF1_insert26 gnd vdd FILL
XFILL_6_CLKBUF1_insert27 gnd vdd FILL
XFILL_6_CLKBUF1_insert28 gnd vdd FILL
XFILL_6_CLKBUF1_insert29 gnd vdd FILL
XFILL_5__2813_ gnd vdd FILL
XFILL_1__2805_ gnd vdd FILL
X_1875_ _999_ _998_ _1000_ vdd gnd OR2X2
XFILL_4__3282_ gnd vdd FILL
XFILL_0__3182_ gnd vdd FILL
XFILL_7__2164_ gnd vdd FILL
XFILL_0__1915_ gnd vdd FILL
X_3601_ _1527_ _1738_ _1631_ vdd gnd NAND2X1
XFILL_3__2484_ gnd vdd FILL
XFILL_3__2064_ gnd vdd FILL
XFILL_3__3269_ gnd vdd FILL
XFILL_4__2973_ gnd vdd FILL
XFILL_4__2553_ gnd vdd FILL
XFILL_4__2133_ gnd vdd FILL
XFILL_6__2899_ gnd vdd FILL
XFILL_6__2479_ gnd vdd FILL
X_3198_ _720__bF$buf0 _687_ _AXYS[1]_[4] _794_ vdd gnd OAI21X1
XFILL_6__2059_ gnd vdd FILL
XFILL_0__2873_ gnd vdd FILL
XFILL_0__2453_ gnd vdd FILL
XFILL_0__2033_ gnd vdd FILL
XFILL_6__3000_ gnd vdd FILL
XFILL_7__1855_ gnd vdd FILL
XFILL_0__3658_ gnd vdd FILL
XFILL_3__1755_ gnd vdd FILL
XFILL_0__3238_ gnd vdd FILL
XFILL_5__2622_ gnd vdd FILL
XFILL_5__2202_ gnd vdd FILL
XFILL_1__2614_ gnd vdd FILL
XFILL_4__3091_ gnd vdd FILL
XFILL_4__1824_ gnd vdd FILL
X_2889_ _1179_ _540_ _541_ vdd gnd NAND2X1
X_2469_ _164_ _165_ _168_ _169_ vdd gnd OAI21X1
X_2049_ _1157_ IRHOLD_valid _1154_ _1158_ vdd gnd AOI21X1
XFILL_7__2393_ gnd vdd FILL
X_3410_ _1__bF$buf3 vdd _79_ clk_bF$buf0 _AXYS[1]_[2] vdd 
+ gnd
+ DFFSR
XFILL_3__2293_ gnd vdd FILL
XFILL_4__2609_ gnd vdd FILL
XFILL_7__3598_ gnd vdd FILL
XFILL_5__3580_ gnd vdd FILL
XFILL_5__3160_ gnd vdd FILL
XFILL_7__3178_ gnd vdd FILL
XFILL_0__2929_ gnd vdd FILL
XFILL_0__2509_ gnd vdd FILL
XFILL_1__3572_ gnd vdd FILL
XFILL_1__3152_ gnd vdd FILL
XFILL_3__3498_ gnd vdd FILL
XFILL_3__3078_ gnd vdd FILL
XFILL_4__2782_ gnd vdd FILL
XFILL_4__2362_ gnd vdd FILL
XFILL_6__2288_ gnd vdd FILL
XFILL_0__2682_ gnd vdd FILL
XFILL_0__2262_ gnd vdd FILL
XFILL_2__3641_ gnd vdd FILL
XFILL_2__3221_ gnd vdd FILL
XFILL_4__3567_ gnd vdd FILL
XFILL_4__3147_ gnd vdd FILL
XFILL_3__1984_ gnd vdd FILL
XFILL_0__3467_ gnd vdd FILL
XFILL_0__3047_ gnd vdd FILL
XFILL_5__2851_ gnd vdd FILL
XFILL_7__2869_ gnd vdd FILL
XFILL_5__2431_ gnd vdd FILL
XFILL_5__2011_ gnd vdd FILL
XFILL_7__2029_ gnd vdd FILL
XFILL_1__2843_ gnd vdd FILL
XFILL_1__2423_ gnd vdd FILL
XFILL_1__2003_ gnd vdd FILL
XFILL_3__2769_ gnd vdd FILL
XFILL_3__2349_ gnd vdd FILL
XFILL_3__3710_ gnd vdd FILL
XFILL_5__3636_ gnd vdd FILL
XFILL_5__3216_ gnd vdd FILL
XFILL_1__3628_ gnd vdd FILL
XFILL_1__3208_ gnd vdd FILL
XFILL_6__1979_ gnd vdd FILL
X_2698_ _367_ _368_ _346_ _366_ _369_ vdd 
+ gnd
+ AOI22X1
X_2278_ _1385_ _1386_ vdd gnd INVX1
XFILL_0__1953_ gnd vdd FILL
XFILL_6__2920_ gnd vdd FILL
XFILL_6__2500_ gnd vdd FILL
XFILL_2__2912_ gnd vdd FILL
XFILL_4__2838_ gnd vdd FILL
XFILL_4__2418_ gnd vdd FILL
XFILL_0__2738_ gnd vdd FILL
XFILL_6__3705_ gnd vdd FILL
XFILL_0__2318_ gnd vdd FILL
XFILL_4__2591_ gnd vdd FILL
XFILL_4__2171_ gnd vdd FILL
XFILL_6__2097_ gnd vdd FILL
XFILL_5__2907_ gnd vdd FILL
XFILL_0__2491_ gnd vdd FILL
XFILL_0__2071_ gnd vdd FILL
XFILL_2__2089_ gnd vdd FILL
XFILL_2__3450_ gnd vdd FILL
X_1969_ _1074_ _1060_ _1085_ AI[0] vdd gnd OAI21X1
XFILL_2__3030_ gnd vdd FILL
XFILL_7__1893_ gnd vdd FILL
X_2910_ _555_ _554_ _556_ vdd gnd NOR2X1
XFILL_0__3696_ gnd vdd FILL
XFILL_3__1793_ gnd vdd FILL
XFILL_0__3276_ gnd vdd FILL
XFILL_5__2660_ gnd vdd FILL
XFILL_7__2258_ gnd vdd FILL
XFILL_5__2240_ gnd vdd FILL
XFILL_1__2652_ gnd vdd FILL
XFILL_1__2232_ gnd vdd FILL
XFILL_3__2998_ gnd vdd FILL
XFILL_3__2578_ gnd vdd FILL
XFILL_3__2158_ gnd vdd FILL
XFILL_5__3025_ gnd vdd FILL
XFILL_1__3017_ gnd vdd FILL
XFILL_4__1862_ gnd vdd FILL
XFILL_6__1788_ gnd vdd FILL
X_2087_ _931__bF$buf3 _946_ _1196_ vdd gnd NOR2X1
XFILL_0__1762_ gnd vdd FILL
XFILL_2__2721_ gnd vdd FILL
XFILL_2__2301_ gnd vdd FILL
XFILL_4__2647_ gnd vdd FILL
XFILL_4__2227_ gnd vdd FILL
XFILL_0__2967_ gnd vdd FILL
XFILL_0__2547_ gnd vdd FILL
XFILL_6__3514_ gnd vdd FILL
XFILL_0__2127_ gnd vdd FILL
XFILL_1__3190_ gnd vdd FILL
XFILL_2__3506_ gnd vdd FILL
XFILL_5__1931_ gnd vdd FILL
XFILL167850x133350 gnd vdd FILL
XFILL_1__1923_ gnd vdd FILL
XFILL_3__1849_ gnd vdd FILL
XFILL_5__2716_ gnd vdd FILL
XFILL_1__2708_ gnd vdd FILL
X_1778_ state[2] _897_ _904_ vdd gnd NAND2X1
XFILL_4__3185_ gnd vdd FILL
XFILL_0__3085_ gnd vdd FILL
XFILL_4__1918_ gnd vdd FILL
XFILL_7__2487_ gnd vdd FILL
XFILL_7__2067_ gnd vdd FILL
XFILL_0__1818_ gnd vdd FILL
X_3504_ alu_op[3] BI[4] _1740_ _1534_ vdd gnd OAI21X1
XFILL_1__2881_ gnd vdd FILL
XFILL_1__2461_ gnd vdd FILL
XFILL_1__2041_ gnd vdd FILL
XFILL_3__2387_ gnd vdd FILL
XFILL_5__3674_ gnd vdd FILL
XFILL_5__3254_ gnd vdd FILL
XFILL_1__3666_ gnd vdd FILL
XFILL_1__3246_ gnd vdd FILL
XFILL_0__1991_ gnd vdd FILL
XFILL_2__2950_ gnd vdd FILL
XFILL_2__2530_ gnd vdd FILL
XFILL_2__2110_ gnd vdd FILL
XFILL_4__2876_ gnd vdd FILL
XFILL_4__2456_ gnd vdd FILL
XFILL_4__2036_ gnd vdd FILL
XFILL_0__2776_ gnd vdd FILL
XFILL_0__2356_ gnd vdd FILL
XFILL_2__3315_ gnd vdd FILL
XFILL_7__1758_ gnd vdd FILL
XFILL_5__2945_ gnd vdd FILL
XFILL_5__2525_ gnd vdd FILL
XFILL_5__2105_ gnd vdd FILL
XFILL_1__2937_ gnd vdd FILL
XFILL_1__2517_ gnd vdd FILL
XFILL_2__1801_ gnd vdd FILL
XFILL_7__2296_ gnd vdd FILL
X_3313_ _296_ _869_ _875_ _114_ vdd gnd OAI21X1
XFILL_1__2690_ gnd vdd FILL
XFILL_1__2270_ gnd vdd FILL
XFILL_3__2196_ gnd vdd FILL
XFILL169950x122550 gnd vdd FILL
XFILL_5__3483_ gnd vdd FILL
XFILL_5__3063_ gnd vdd FILL
XFILL_1__3475_ gnd vdd FILL
XFILL_1__3055_ gnd vdd FILL
XFILL_5_CLKBUF1_insert30 gnd vdd FILL
XFILL_5_CLKBUF1_insert31 gnd vdd FILL
XFILL_5_CLKBUF1_insert32 gnd vdd FILL
XFILL_5_CLKBUF1_insert33 gnd vdd FILL
XFILL_5_CLKBUF1_insert34 gnd vdd FILL
XFILL_5_CLKBUF1_insert35 gnd vdd FILL
XFILL_5_CLKBUF1_insert36 gnd vdd FILL
XFILL_4__2685_ gnd vdd FILL
XFILL_4__2265_ gnd vdd FILL
XFILL_0__2585_ gnd vdd FILL
XFILL_6__3552_ gnd vdd FILL
XFILL_0__2165_ gnd vdd FILL
XFILL_6__3132_ gnd vdd FILL
XFILL_2__3544_ gnd vdd FILL
XFILL_2__3124_ gnd vdd FILL
XFILL_7__1987_ gnd vdd FILL
XFILL_1__1961_ gnd vdd FILL
XFILL_3__1887_ gnd vdd FILL
XFILL_5__2754_ gnd vdd FILL
XFILL_5__2334_ gnd vdd FILL
XFILL_1__2746_ gnd vdd FILL
XFILL_7__3713_ gnd vdd FILL
XFILL_1__2326_ gnd vdd FILL
XFILL_3__3613_ gnd vdd FILL
XFILL_5__3539_ gnd vdd FILL
XFILL_5__3119_ gnd vdd FILL
XFILL_4__1956_ gnd vdd FILL
XFILL_0__1856_ gnd vdd FILL
XFILL_6__2823_ gnd vdd FILL
X_3542_ BI[0] _1718_ _1572_ vdd gnd NAND2X1
XFILL_6__2403_ gnd vdd FILL
X_3122_ HC _728_ _727_ _729_ vdd gnd OAI21X1
XFILL_2__2815_ gnd vdd FILL
XFILL_5__3292_ gnd vdd FILL
XFILL_6__3608_ gnd vdd FILL
XFILL_1__3284_ gnd vdd FILL
XFILL_4__2494_ gnd vdd FILL
XFILL_4__2074_ gnd vdd FILL
XFILL_0__2394_ gnd vdd FILL
XFILL_4__3699_ gnd vdd FILL
XFILL_4__3279_ gnd vdd FILL
X_2813_ PC[9] _312_ _1093_ _476_ vdd gnd AOI21X1
XFILL_1__1770_ gnd vdd FILL
XFILL_0__3599_ gnd vdd FILL
XFILL_0__3179_ gnd vdd FILL
XFILL_5__2983_ gnd vdd FILL
XFILL_5__2563_ gnd vdd FILL
XFILL_5__2143_ gnd vdd FILL
XFILL_1__2975_ gnd vdd FILL
XFILL_1__2555_ gnd vdd FILL
XFILL_7__3522_ gnd vdd FILL
XFILL_1__2135_ gnd vdd FILL
XFILL_3__3002_ gnd vdd FILL
XFILL_4__1765_ gnd vdd FILL
XFILL_6__2632_ gnd vdd FILL
XFILL_6__2212_ gnd vdd FILL
X_3351_ _1__bF$buf9 vdd _28_ clk_bF$buf6 cli vdd 
+ gnd
+ DFFSR
XFILL_2__2624_ gnd vdd FILL
XFILL_2__2204_ gnd vdd FILL
XFILL_1__3093_ gnd vdd FILL
XFILL_5__1834_ gnd vdd FILL
XFILL_1__1826_ gnd vdd FILL
XFILL_5__2619_ gnd vdd FILL
XFILL_6__3590_ gnd vdd FILL
XFILL_6__3170_ gnd vdd FILL
XFILL_2__3582_ gnd vdd FILL
XFILL_2__3162_ gnd vdd FILL
XFILL_4__3088_ gnd vdd FILL
XFILL_6__1903_ gnd vdd FILL
X_2622_ _272_ DIMUX[6] _302_ _303_ vdd gnd AOI21X1
X_2202_ RDY_bF$buf1 _1309_ _1310_ _1311_ vdd gnd OAI21X1
XFILL_5__2792_ gnd vdd FILL
XFILL_5__2372_ gnd vdd FILL
X_3407_ _1__bF$buf0 vdd _76_ clk_bF$buf7 _AXYS[0]_[7] vdd 
+ gnd
+ DFFSR
XFILL_1__2784_ gnd vdd FILL
XFILL_1__2364_ gnd vdd FILL
XFILL_3__3651_ gnd vdd FILL
XFILL_3__3231_ gnd vdd FILL
XFILL_5__3577_ gnd vdd FILL
XFILL_5__3157_ gnd vdd FILL
XFILL_1__3569_ gnd vdd FILL
XFILL_1__3149_ gnd vdd FILL
XFILL_4__1994_ gnd vdd FILL
XFILL_0__1894_ gnd vdd FILL
XFILL_6__2861_ gnd vdd FILL
X_3580_ alu_op[2] BI[0] _1581_ _1610_ vdd gnd AOI21X1
XFILL_6__2441_ gnd vdd FILL
X_3160_ CO _728_ _763_ vdd gnd NOR2X1
XFILL_6__2021_ gnd vdd FILL
XFILL_2__2853_ gnd vdd FILL
XFILL_2__2433_ gnd vdd FILL
XFILL_2__2013_ gnd vdd FILL
XFILL_4__2779_ gnd vdd FILL
XFILL_4__2359_ gnd vdd FILL
XFILL_4__3300_ gnd vdd FILL
XFILL_0__2679_ gnd vdd FILL
XFILL_6__3646_ gnd vdd FILL
XFILL_0__2259_ gnd vdd FILL
XFILL_6__3226_ gnd vdd FILL
XFILL_2__3638_ gnd vdd FILL
XFILL_0__3620_ gnd vdd FILL
XFILL_0__3200_ gnd vdd FILL
XFILL_2__3218_ gnd vdd FILL
XFILL_3__2922_ gnd vdd FILL
XFILL_3__2502_ gnd vdd FILL
XFILL_5__2848_ gnd vdd FILL
XFILL_5__2428_ gnd vdd FILL
XFILL_5__2008_ gnd vdd FILL
XFILL_3__3707_ gnd vdd FILL
X_2851_ _886__bF$buf3 _300_ _512_ vdd gnd NAND2X1
X_2431_ state[5] _1075_ _136_ _137_ vdd gnd OAI21X1
X_2011_ _AXYS[0]_[5] _1051_ _1053_ _1123_ vdd gnd NAND3X1
XFILL_5__2181_ gnd vdd FILL
XFILL_6__2917_ gnd vdd FILL
X_3636_ _1665_ _1600_ _1623_ _1666_ vdd gnd OAI21X1
X_3216_ _757_ _798_ _803_ _89_ vdd gnd AOI21X1
XFILL_1__2593_ gnd vdd FILL
XFILL_1__2173_ gnd vdd FILL
XFILL_7__3140_ gnd vdd FILL
XFILL_3__2099_ gnd vdd FILL
XFILL_2__2909_ gnd vdd FILL
XFILL_3__3460_ gnd vdd FILL
XFILL_3__3040_ gnd vdd FILL
XFILL_6__2670_ gnd vdd FILL
XFILL_6__2250_ gnd vdd FILL
XFILL_2__2662_ gnd vdd FILL
XFILL_2__2242_ gnd vdd FILL
XFILL_4__2588_ gnd vdd FILL
XFILL_4__2168_ gnd vdd FILL
XFILL_0__2488_ gnd vdd FILL
XFILL_6__3455_ gnd vdd FILL
XFILL_0__2068_ gnd vdd FILL
XFILL_6__3035_ gnd vdd FILL
XFILL_2__3027_ gnd vdd FILL
XFILL_5__1872_ gnd vdd FILL
X_2907_ _553_ _533_ _549_ _30_ vdd gnd OAI21X1
XFILL_1__1864_ gnd vdd FILL
XFILL_7__2411_ gnd vdd FILL
XFILL_3__2731_ gnd vdd FILL
XFILL_3__2311_ gnd vdd FILL
XFILL_5__2657_ gnd vdd FILL
XFILL_5__2237_ gnd vdd FILL
XFILL_1__2649_ gnd vdd FILL
XFILL_7__3616_ gnd vdd FILL
XFILL_1__2229_ gnd vdd FILL
XFILL_3__3516_ gnd vdd FILL
XFILL_6__1941_ gnd vdd FILL
X_2660_ RDY_bF$buf7 _965_ _332_ _334_ _2_ vdd 
+ gnd
+ OAI22X1
X_2240_ _1181_ _1348_ vdd gnd INVX1
XFILL_2__1933_ gnd vdd FILL
XFILL_4__1859_ gnd vdd FILL
XFILL_4__2800_ gnd vdd FILL
XFILL_0__1759_ gnd vdd FILL
XFILL_6__2726_ gnd vdd FILL
X_3445_ _1__bF$buf1 vdd _113_ clk_bF$buf0 ABH[4] vdd 
+ gnd
+ DFFSR
XFILL_6__2306_ gnd vdd FILL
X_3025_ _966_ _647_ _648_ _53_ vdd gnd OAI21X1
XFILL_2__2718_ gnd vdd FILL
XFILL_0__2700_ gnd vdd FILL
XFILL_5__3195_ gnd vdd FILL
XFILL_1__3187_ gnd vdd FILL
XFILL_5__1928_ gnd vdd FILL
XFILL_2__2891_ gnd vdd FILL
XFILL_2__2471_ gnd vdd FILL
XFILL_2__2051_ gnd vdd FILL
XFILL_4__2397_ gnd vdd FILL
X_1931_ src_reg[1] _1035_ _1026_ _1048_ vdd gnd NAND3X1
XFILL_0__2297_ gnd vdd FILL
XFILL_6__3264_ gnd vdd FILL
XFILL_2__3676_ gnd vdd FILL
XFILL_2__3256_ gnd vdd FILL
X_2716_ _362_ _385_ _340_ _386_ vdd gnd NOR3X1
XFILL_7__2640_ gnd vdd FILL
XFILL_3__2960_ gnd vdd FILL
XFILL_3__2540_ gnd vdd FILL
XFILL_3__2120_ gnd vdd FILL
XFILL_5__2886_ gnd vdd FILL
XFILL_5__2466_ gnd vdd FILL
XFILL_5__2046_ gnd vdd FILL
XFILL_1__2878_ gnd vdd FILL
XFILL_1__2458_ gnd vdd FILL
XFILL_1__2038_ gnd vdd FILL
XFILL_6__1750_ gnd vdd FILL
XFILL_0__1988_ gnd vdd FILL
XFILL_6__2955_ gnd vdd FILL
X_3674_ _1714__bF$buf2 _1680_ _1695_ _1523_ vdd gnd OAI21X1
XFILL_6__2535_ gnd vdd FILL
X_3254_ _1070_ _829_ _830_ vdd gnd NOR2X1
XFILL_6__2115_ gnd vdd FILL
XFILL_2__2947_ gnd vdd FILL
XFILL_2__2527_ gnd vdd FILL
XFILL_2__2107_ gnd vdd FILL
XFILL_7__1911_ gnd vdd FILL
XFILL_0__3714_ gnd vdd FILL
XFILL_3__1811_ gnd vdd FILL
XFILL_2__2280_ gnd vdd FILL
XFILL_6__3493_ gnd vdd FILL
XFILL_6__3073_ gnd vdd FILL
XFILL_0_BUFX2_insert60 gnd vdd FILL
XFILL_0_BUFX2_insert61 gnd vdd FILL
XFILL_0_BUFX2_insert62 gnd vdd FILL
XFILL_2__3485_ gnd vdd FILL
XFILL_0_BUFX2_insert63 gnd vdd FILL
XFILL_2__3065_ gnd vdd FILL
XFILL_0_BUFX2_insert64 gnd vdd FILL
XFILL_0_BUFX2_insert65 gnd vdd FILL
XFILL_0_BUFX2_insert66 gnd vdd FILL
XFILL_0_BUFX2_insert67 gnd vdd FILL
XFILL_0_BUFX2_insert68 gnd vdd FILL
XFILL_0_BUFX2_insert69 gnd vdd FILL
X_2945_ _567_ _587_ vdd gnd INVX1
XFILL_6__1806_ gnd vdd FILL
X_2525_ _196_ _198_ ABL[0] _220_ vdd gnd OAI21X1
X_2105_ _1159_ _1214_ vdd gnd INVX1
XFILL_5__2695_ gnd vdd FILL
XFILL_5__2275_ gnd vdd FILL
XFILL_1__2687_ gnd vdd FILL
XFILL_7__3654_ gnd vdd FILL
XFILL_1__2267_ gnd vdd FILL
XFILL_3__3554_ gnd vdd FILL
XFILL_3__3134_ gnd vdd FILL
XFILL_2__1971_ gnd vdd FILL
XFILL_4__1897_ gnd vdd FILL
XFILL168750x61350 gnd vdd FILL
XFILL_0__1797_ gnd vdd FILL
XFILL_6__2764_ gnd vdd FILL
X_3483_ _1727_ _1728_ _1729_ vdd gnd OR2X2
XFILL_6__2344_ gnd vdd FILL
X_3063_ _672_ _676_ _673_ _63_ vdd gnd OAI21X1
XFILL_2__2756_ gnd vdd FILL
XFILL_2__2336_ gnd vdd FILL
XFILL_4__3623_ gnd vdd FILL
XFILL_4__3203_ gnd vdd FILL
XFILL_6__3549_ gnd vdd FILL
XFILL_6__3129_ gnd vdd FILL
XFILL_0__3523_ gnd vdd FILL
XFILL_0__3103_ gnd vdd FILL
XFILL_5__1966_ gnd vdd FILL
XFILL_1__1958_ gnd vdd FILL
XFILL_7__2925_ gnd vdd FILL
XFILL_3__2825_ gnd vdd FILL
XFILL_3__2405_ gnd vdd FILL
XFILL_2__3294_ gnd vdd FILL
X_2754_ ADD[1] _1299_ _323_ ABH[1] _420_ vdd 
+ gnd
+ AOI22X1
X_2334_ _1423_ _1429_ _1440_ _1441_ vdd gnd AOI21X1
XFILL169350x7350 gnd vdd FILL
XFILL_5__2084_ gnd vdd FILL
X_3539_ alu_op[2] BI[1] _1725_ _1569_ vdd gnd OAI21X1
X_3119_ adj_bcd adc_bcd _726_ vdd gnd AND2X2
XFILL_1__2496_ gnd vdd FILL
XFILL_7__3463_ gnd vdd FILL
XFILL_1__2076_ gnd vdd FILL
XFILL_7__3043_ gnd vdd FILL
XFILL_5__3289_ gnd vdd FILL
XFILL_2__1780_ gnd vdd FILL
XFILL_6__2993_ gnd vdd FILL
XFILL_6__2573_ gnd vdd FILL
X_3292_ _860_ _242_ _864_ _104_ vdd gnd OAI21X1
XFILL_6__2153_ gnd vdd FILL
XFILL_2__2985_ gnd vdd FILL
XFILL_2__2565_ gnd vdd FILL
XFILL_2__2145_ gnd vdd FILL
XFILL_4__3012_ gnd vdd FILL
XFILL_5__1775_ gnd vdd FILL
XFILL_1__1767_ gnd vdd FILL
XFILL_7__2314_ gnd vdd FILL
XFILL_3__2634_ gnd vdd FILL
XFILL_3__2214_ gnd vdd FILL
XFILL_7__3519_ gnd vdd FILL
XFILL_5__3501_ gnd vdd FILL
XFILL_6__1844_ gnd vdd FILL
X_2983_ _1217_ _1182_ _613_ vdd gnd NAND2X1
X_2563_ _216_ ADD[5] _252_ _253_ vdd gnd AOI21X1
X_2143_ _1182_ _1185_ _1251_ _1252_ vdd gnd NAND3X1
XFILL_2__1836_ gnd vdd FILL
XFILL_4__2703_ gnd vdd FILL
XFILL_6__2629_ gnd vdd FILL
XFILL_6__2209_ gnd vdd FILL
X_3348_ _1__bF$buf9 vdd _25_ clk_bF$buf9 sec vdd 
+ gnd
+ DFFSR
XFILL_7__3692_ gnd vdd FILL
XFILL_7__3272_ gnd vdd FILL
XFILL_0__2603_ gnd vdd FILL
XFILL_3__3592_ gnd vdd FILL
XFILL_3__3172_ gnd vdd FILL
XFILL_5__3098_ gnd vdd FILL
XFILL_3__1905_ gnd vdd FILL
XFILL_6__2382_ gnd vdd FILL
XFILL_2__2794_ gnd vdd FILL
XFILL_2__2374_ gnd vdd FILL
X_1834_ _959_ _960_ vdd gnd INVX1
XFILL_4__3661_ gnd vdd FILL
XFILL_4__3241_ gnd vdd FILL
XFILL_6__3587_ gnd vdd FILL
XFILL_6__3167_ gnd vdd FILL
XFILL_2__3579_ gnd vdd FILL
XFILL_0__3561_ gnd vdd FILL
XFILL_2__3159_ gnd vdd FILL
XFILL_0__3141_ gnd vdd FILL
XFILL_4_BUFX2_insert10 gnd vdd FILL
XFILL_4_BUFX2_insert11 gnd vdd FILL
XFILL_4_BUFX2_insert12 gnd vdd FILL
XFILL_4_BUFX2_insert13 gnd vdd FILL
XFILL_4_BUFX2_insert14 gnd vdd FILL
XFILL_4_BUFX2_insert15 gnd vdd FILL
XFILL_4_BUFX2_insert16 gnd vdd FILL
X_2619_ PC[14] _300_ vdd gnd INVX1
XFILL_4_BUFX2_insert17 gnd vdd FILL
XFILL_1__1996_ gnd vdd FILL
XFILL_4_BUFX2_insert18 gnd vdd FILL
XFILL_4_BUFX2_insert19 gnd vdd FILL
XFILL_7__2543_ gnd vdd FILL
XFILL_3__2863_ gnd vdd FILL
XFILL_3__2443_ gnd vdd FILL
XFILL_3__2023_ gnd vdd FILL
XFILL_5__2789_ gnd vdd FILL
XFILL_5__2369_ gnd vdd FILL
XFILL_5__3310_ gnd vdd FILL
XBUFX2_insert70 _886_ _886__bF$buf0 vdd gnd BUFX2
XBUFX2_insert71 _1149_ _1149__bF$buf4 vdd gnd BUFX2
XBUFX2_insert72 _1149_ _1149__bF$buf3 vdd gnd BUFX2
XBUFX2_insert73 _1149_ _1149__bF$buf2 vdd gnd BUFX2
XBUFX2_insert74 _1149_ _1149__bF$buf1 vdd gnd BUFX2
XFILL_1__3302_ gnd vdd FILL
XBUFX2_insert75 _1149_ _1149__bF$buf0 vdd gnd BUFX2
XBUFX2_insert76 _903_ _903__bF$buf3 vdd gnd BUFX2
XBUFX2_insert77 _903_ _903__bF$buf2 vdd gnd BUFX2
XBUFX2_insert78 _903_ _903__bF$buf1 vdd gnd BUFX2
XFILL_3__3648_ gnd vdd FILL
XBUFX2_insert79 _903_ _903__bF$buf0 vdd gnd BUFX2
XFILL_3__3228_ gnd vdd FILL
X_2792_ _455_ _423_ _438_ _456_ vdd gnd NAND3X1
X_2372_ RDY_bF$buf1 _1257_ _1477_ _1478_ vdd gnd OAI21X1
XFILL_4__2932_ gnd vdd FILL
XFILL_4__2512_ gnd vdd FILL
XFILL_6__2858_ gnd vdd FILL
X_3577_ _1606_ _1603_ _1607_ vdd gnd NAND2X1
XFILL_6__2438_ gnd vdd FILL
X_3157_ CO _728_ _759_ _760_ vdd gnd OAI21X1
XFILL_6__2018_ gnd vdd FILL
XFILL_0__2832_ gnd vdd FILL
XFILL_0__2412_ gnd vdd FILL
XFILL_7__1814_ gnd vdd FILL
XFILL_0__3617_ gnd vdd FILL
XFILL_6__2191_ gnd vdd FILL
XFILL_2__2183_ gnd vdd FILL
XFILL_3__2919_ gnd vdd FILL
XFILL_4__3470_ gnd vdd FILL
XFILL_4__3050_ gnd vdd FILL
X_2848_ _506_ _509_ vdd gnd INVX1
X_2428_ _133_ _1263_ _134_ vdd gnd NOR2X1
X_2008_ _1074_ _1117_ _1120_ AI[4] vdd gnd OAI21X1
XFILL_7__2772_ gnd vdd FILL
XFILL_3__2672_ gnd vdd FILL
XFILL_3__2252_ gnd vdd FILL
XFILL_5__2598_ gnd vdd FILL
XFILL_5__2178_ gnd vdd FILL
XFILL_1__3531_ gnd vdd FILL
XFILL_1__3111_ gnd vdd FILL
XFILL_3__3457_ gnd vdd FILL
XFILL_3__3037_ gnd vdd FILL
XFILL_6__1882_ gnd vdd FILL
X_2181_ _969_ _952_ _1290_ vdd gnd NAND2X1
XFILL_2__1874_ gnd vdd FILL
XFILL_4__2741_ gnd vdd FILL
XFILL_4__2321_ gnd vdd FILL
XFILL_6__2667_ gnd vdd FILL
X_3386_ _55_ clk_bF$buf4 IRHOLD[2] vdd gnd DFFPOSX1
XFILL_6__2247_ gnd vdd FILL
XFILL_2__2659_ gnd vdd FILL
XFILL_0__2641_ gnd vdd FILL
XFILL_2__2239_ gnd vdd FILL
XFILL_0__2221_ gnd vdd FILL
XFILL_2__3600_ gnd vdd FILL
XFILL_4__3526_ gnd vdd FILL
XFILL_4__3106_ gnd vdd FILL
XFILL_3__1943_ gnd vdd FILL
XFILL_0__3006_ gnd vdd FILL
XFILL_5__1869_ gnd vdd FILL
XFILL_5__2810_ gnd vdd FILL
XFILL_7__2828_ gnd vdd FILL
XFILL_7__2408_ gnd vdd FILL
XFILL_1__2802_ gnd vdd FILL
XFILL_3__2728_ gnd vdd FILL
XFILL_3__2308_ gnd vdd FILL
X_1872_ _935_ _941_ _903__bF$buf3 _997_ vdd gnd OAI21X1
XFILL_2__3197_ gnd vdd FILL
XFILL_6__1938_ gnd vdd FILL
X_2657_ _320_ _331_ _332_ vdd gnd NOR2X1
X_2237_ _931__bF$buf1 _984_ _1344_ _1345_ vdd gnd OAI21X1
XFILL_7__2161_ gnd vdd FILL
XFILL_0__1912_ gnd vdd FILL
XFILL_3__2481_ gnd vdd FILL
XFILL_3__2061_ gnd vdd FILL
XFILL_1__2399_ gnd vdd FILL
XFILL_3__3266_ gnd vdd FILL
XFILL_4__2970_ gnd vdd FILL
XFILL_4__2550_ gnd vdd FILL
XFILL_4__2130_ gnd vdd FILL
XFILL_6__2896_ gnd vdd FILL
XFILL_6__2476_ gnd vdd FILL
XFILL_6__2056_ gnd vdd FILL
X_3195_ _744_ _789_ _792_ _79_ vdd gnd OAI21X1
XFILL_0__2870_ gnd vdd FILL
XFILL_2__2888_ gnd vdd FILL
XFILL_2__2468_ gnd vdd FILL
XFILL_0__2450_ gnd vdd FILL
XFILL_0__2030_ gnd vdd FILL
XFILL_2__2048_ gnd vdd FILL
X_1928_ _1044_ _1041_ _1045_ vdd gnd AND2X2
XFILL_3__1752_ gnd vdd FILL
XFILL_0__3655_ gnd vdd FILL
XFILL_0__3235_ gnd vdd FILL
XFILL_7__2637_ gnd vdd FILL
XFILL_7__2217_ gnd vdd FILL
XFILL_1__2611_ gnd vdd FILL
XFILL_3__2957_ gnd vdd FILL
XFILL_3__2537_ gnd vdd FILL
XFILL_3__2117_ gnd vdd FILL
XFILL_4__1821_ gnd vdd FILL
XFILL_6__1747_ gnd vdd FILL
X_2886_ _537_ _538_ _536_ _24_ vdd gnd OAI21X1
X_2466_ _1319__bF$buf2 _1263_ PC[11] _166_ vdd gnd OAI21X1
X_2046_ IRHOLD_valid _1151_ _1154_ _1155_ vdd gnd AOI21X1
XFILL_7__2390_ gnd vdd FILL
XFILL_3__2290_ gnd vdd FILL
XFILL_4__2606_ gnd vdd FILL
XFILL_7__3595_ gnd vdd FILL
XFILL_7__3175_ gnd vdd FILL
XFILL_0__2926_ gnd vdd FILL
XFILL_0__2506_ gnd vdd FILL
XFILL_3__3495_ gnd vdd FILL
XFILL_3__3075_ gnd vdd FILL
XFILL_7__1908_ gnd vdd FILL
XFILL_3__1808_ gnd vdd FILL
XFILL_6__2285_ gnd vdd FILL
XFILL_2__2697_ gnd vdd FILL
XFILL_2__2277_ gnd vdd FILL
XFILL_4__3564_ gnd vdd FILL
XFILL_4__3144_ gnd vdd FILL
XFILL_3__1981_ gnd vdd FILL
XFILL_0__3464_ gnd vdd FILL
XFILL_0__3044_ gnd vdd FILL
XFILL_1__1899_ gnd vdd FILL
XFILL_7__2866_ gnd vdd FILL
XFILL_7__2446_ gnd vdd FILL
XFILL_7__2026_ gnd vdd FILL
XFILL_1__2840_ gnd vdd FILL
XFILL_1__2420_ gnd vdd FILL
XFILL_1__2000_ gnd vdd FILL
XFILL_3__2766_ gnd vdd FILL
XFILL_3__2346_ gnd vdd FILL
XFILL_5__3633_ gnd vdd FILL
XFILL_5__3213_ gnd vdd FILL
XFILL_1__3625_ gnd vdd FILL
XFILL_1__3205_ gnd vdd FILL
XFILL_6__1976_ gnd vdd FILL
X_2695_ _329_ _365_ PC[2] _366_ vdd gnd OAI21X1
X_2275_ _1382_ _1381_ _1383_ vdd gnd NAND2X1
XFILL_2__1968_ gnd vdd FILL
XFILL_0__1950_ gnd vdd FILL
XFILL_4__2835_ gnd vdd FILL
XFILL_4__2415_ gnd vdd FILL
XFILL_0__2735_ gnd vdd FILL
XFILL_6__3702_ gnd vdd FILL
XFILL_0__2315_ gnd vdd FILL
XFILL_6__2094_ gnd vdd FILL
XFILL_5__2904_ gnd vdd FILL
XFILL_2__2086_ gnd vdd FILL
X_1966_ ABH[0] _925_ _1083_ vdd gnd NAND2X1
XFILL_7__1890_ gnd vdd FILL
XFILL_6__3299_ gnd vdd FILL
XFILL_0__3693_ gnd vdd FILL
XFILL_3__1790_ gnd vdd FILL
XFILL_0__3273_ gnd vdd FILL
XFILL169050x61350 gnd vdd FILL
XFILL_7__2675_ gnd vdd FILL
XFILL_3__2995_ gnd vdd FILL
XFILL_3__2575_ gnd vdd FILL
XFILL_3__2155_ gnd vdd FILL
XFILL_5__3022_ gnd vdd FILL
XFILL_1__3014_ gnd vdd FILL
XFILL_6__1785_ gnd vdd FILL
X_2084_ _931__bF$buf1 _928_ _1193_ vdd gnd NOR2X1
XFILL_5_BUFX2_insert80 gnd vdd FILL
XFILL_5_BUFX2_insert81 gnd vdd FILL
XFILL_5_BUFX2_insert82 gnd vdd FILL
XFILL_5_BUFX2_insert83 gnd vdd FILL
XFILL_2__1777_ gnd vdd FILL
XFILL_4__2644_ gnd vdd FILL
XFILL_4__2224_ gnd vdd FILL
X_3289_ ABL[2] _860_ _863_ vdd gnd NAND2X1
XFILL_0__2964_ gnd vdd FILL
XFILL_0__2544_ gnd vdd FILL
XFILL_6__3511_ gnd vdd FILL
XFILL_0__2124_ gnd vdd FILL
XFILL_2__3503_ gnd vdd FILL
XFILL_4__3009_ gnd vdd FILL
XFILL_1__1920_ gnd vdd FILL
XFILL_3__1846_ gnd vdd FILL
XFILL_5__2713_ gnd vdd FILL
XFILL_1__2705_ gnd vdd FILL
X_1775_ state[4] _901_ vdd gnd INVX2
XFILL_4__3182_ gnd vdd FILL
XFILL_0__3082_ gnd vdd FILL
XFILL_4__1915_ gnd vdd FILL
XFILL_7__2064_ gnd vdd FILL
XFILL_0__1815_ gnd vdd FILL
X_3501_ _1716_ BI[4] _1530_ _1717_ _1531_ vdd 
+ gnd
+ AOI22X1
XFILL_3__2384_ gnd vdd FILL
XFILL_5__3671_ gnd vdd FILL
XFILL_7__3269_ gnd vdd FILL
XFILL_5__3251_ gnd vdd FILL
XFILL_1__3663_ gnd vdd FILL
XFILL_1__3243_ gnd vdd FILL
XFILL_3__3589_ gnd vdd FILL
XFILL_3__3169_ gnd vdd FILL
XFILL_4__2873_ gnd vdd FILL
XFILL_4__2453_ gnd vdd FILL
XFILL_4__2033_ gnd vdd FILL
XFILL_6__2799_ gnd vdd FILL
XFILL_6__2379_ gnd vdd FILL
X_3098_ _895_ _1227_ _956_ _708_ vdd gnd OAI21X1
XFILL_0__2773_ gnd vdd FILL
XFILL_0__2353_ gnd vdd FILL
XFILL_2__3312_ gnd vdd FILL
XFILL_4__3658_ gnd vdd FILL
XFILL_7__1755_ gnd vdd FILL
XFILL_4__3238_ gnd vdd FILL
XFILL_0__3558_ gnd vdd FILL
XFILL_0__3138_ gnd vdd FILL
XFILL_5__2942_ gnd vdd FILL
XFILL_5__2522_ gnd vdd FILL
XFILL_5__2102_ gnd vdd FILL
XFILL_1__2934_ gnd vdd FILL
XFILL_1__2514_ gnd vdd FILL
XFILL_5__3307_ gnd vdd FILL
X_2789_ PC[8] _365_ _453_ vdd gnd NAND2X1
X_2369_ _886__bF$buf6 _1260_ _1475_ vdd gnd NAND2X1
XFILL_7__2293_ gnd vdd FILL
X_3310_ _1741_[12] _869_ _874_ vdd gnd NAND2X1
XFILL_3__2193_ gnd vdd FILL
XFILL_4__2929_ gnd vdd FILL
XFILL_4__2509_ gnd vdd FILL
XFILL_7__3498_ gnd vdd FILL
XFILL_5__3480_ gnd vdd FILL
XFILL_7__3078_ gnd vdd FILL
XFILL_5__3060_ gnd vdd FILL
XFILL_0__2829_ gnd vdd FILL
XFILL_0__2409_ gnd vdd FILL
XFILL_1__3472_ gnd vdd FILL
XFILL_1__3052_ gnd vdd FILL
XFILL_4__2682_ gnd vdd FILL
XFILL_4__2262_ gnd vdd FILL
XFILL_6__2188_ gnd vdd FILL
XFILL_0__2582_ gnd vdd FILL
XFILL_0__2162_ gnd vdd FILL
XFILL_2__3541_ gnd vdd FILL
XFILL_2__3121_ gnd vdd FILL
XFILL_7__1984_ gnd vdd FILL
XFILL_4__3467_ gnd vdd FILL
XFILL_4__3047_ gnd vdd FILL
XFILL_3__1884_ gnd vdd FILL
XFILL_5__2751_ gnd vdd FILL
XFILL_7__2769_ gnd vdd FILL
XFILL_5__2331_ gnd vdd FILL
XFILL_1__2743_ gnd vdd FILL
XFILL_7__3710_ gnd vdd FILL
XFILL_1__2323_ gnd vdd FILL
XFILL_3__2669_ gnd vdd FILL
XFILL_3__2249_ gnd vdd FILL
XFILL_3__3610_ gnd vdd FILL
XFILL_5__3536_ gnd vdd FILL
XFILL_5__3116_ gnd vdd FILL
XFILL_1__3528_ gnd vdd FILL
XFILL_1__3108_ gnd vdd FILL
XFILL_4__1953_ gnd vdd FILL
XFILL_6__1879_ gnd vdd FILL
X_2598_ _282_ _281_ _283_ vdd gnd NAND2X1
X_2178_ RDY_bF$buf5 _998_ _1286_ _1287_ vdd gnd OAI21X1
XFILL_0__1853_ gnd vdd FILL
XFILL_6__2820_ gnd vdd FILL
XFILL_6__2400_ gnd vdd FILL
XFILL_2__2812_ gnd vdd FILL
XFILL_4__2738_ gnd vdd FILL
XFILL_4__2318_ gnd vdd FILL
XFILL_0__2638_ gnd vdd FILL
XFILL_6__3605_ gnd vdd FILL
XFILL_0__2218_ gnd vdd FILL
XFILL_1__3281_ gnd vdd FILL
XFILL_4__2491_ gnd vdd FILL
XFILL_4__2071_ gnd vdd FILL
XFILL_5__2807_ gnd vdd FILL
XFILL_0__2391_ gnd vdd FILL
X_1869_ _993_ _992_ _929_ _994_ vdd gnd OAI21X1
XFILL_4__3696_ gnd vdd FILL
XFILL_7__1793_ gnd vdd FILL
XFILL_4__3276_ gnd vdd FILL
X_2810_ ADD[1] _473_ vdd gnd INVX1
XFILL_0__3596_ gnd vdd FILL
XFILL_0__3176_ gnd vdd FILL
XFILL_7__2998_ gnd vdd FILL
XFILL_5__2980_ gnd vdd FILL
XFILL_5__2560_ gnd vdd FILL
XFILL_7__2158_ gnd vdd FILL
XFILL_5__2140_ gnd vdd FILL
XFILL_0__1909_ gnd vdd FILL
XFILL_1__2972_ gnd vdd FILL
XFILL_1__2552_ gnd vdd FILL
XFILL_1__2132_ gnd vdd FILL
XFILL_3__2898_ gnd vdd FILL
XFILL_3__2478_ gnd vdd FILL
XFILL_3__2058_ gnd vdd FILL
XFILL_4__1762_ gnd vdd FILL
XFILL_2__2621_ gnd vdd FILL
XFILL_2__2201_ gnd vdd FILL
XFILL_4__2967_ gnd vdd FILL
XFILL_4__2547_ gnd vdd FILL
XFILL_4__2127_ gnd vdd FILL
XFILL_0__2867_ gnd vdd FILL
XFILL_0__2447_ gnd vdd FILL
XFILL_0__2027_ gnd vdd FILL
XFILL_1__3090_ gnd vdd FILL
XFILL_5__1831_ gnd vdd FILL
XFILL_1__1823_ gnd vdd FILL
XFILL_3__1749_ gnd vdd FILL
XFILL_5__2616_ gnd vdd FILL
XFILL_1__2608_ gnd vdd FILL
XFILL_4__3085_ gnd vdd FILL
XFILL_6__1900_ gnd vdd FILL
XFILL_4__1818_ gnd vdd FILL
XFILL_7__2387_ gnd vdd FILL
X_3404_ _1__bF$buf0 vdd _73_ clk_bF$buf0 _AXYS[0]_[4] vdd 
+ gnd
+ DFFSR
XFILL_1__2781_ gnd vdd FILL
XFILL_1__2361_ gnd vdd FILL
XFILL_3__2287_ gnd vdd FILL
XFILL_5__3574_ gnd vdd FILL
XFILL_5__3154_ gnd vdd FILL
XFILL_1__3566_ gnd vdd FILL
XFILL_1__3146_ gnd vdd FILL
XFILL_4__1991_ gnd vdd FILL
XFILL_0__1891_ gnd vdd FILL
XFILL_2__2850_ gnd vdd FILL
XFILL_2__2430_ gnd vdd FILL
XFILL_2__2010_ gnd vdd FILL
XFILL_4__2776_ gnd vdd FILL
XFILL_4__2356_ gnd vdd FILL
XFILL_0__2676_ gnd vdd FILL
XFILL_6__3643_ gnd vdd FILL
XFILL_0__2256_ gnd vdd FILL
XFILL_6__3223_ gnd vdd FILL
XFILL_2__3635_ gnd vdd FILL
XFILL_2__3215_ gnd vdd FILL
XFILL_3__1978_ gnd vdd FILL
XFILL_5__2845_ gnd vdd FILL
XFILL_5__2425_ gnd vdd FILL
XFILL_5__2005_ gnd vdd FILL
XFILL_1__2837_ gnd vdd FILL
XFILL_1__2417_ gnd vdd FILL
XFILL_3__3704_ gnd vdd FILL
XFILL_7__2196_ gnd vdd FILL
XFILL_0__1947_ gnd vdd FILL
XFILL_6__2914_ gnd vdd FILL
X_3633_ _1562_ _1600_ _1605_ _1663_ vdd gnd OAI21X1
X_3213_ _AXYS[2]_[3] _798_ _802_ vdd gnd NOR2X1
XFILL_1__2590_ gnd vdd FILL
XFILL_1__2170_ gnd vdd FILL
XFILL_3__2096_ gnd vdd FILL
XFILL_2__2906_ gnd vdd FILL
XFILL_4__2585_ gnd vdd FILL
XFILL_4__2165_ gnd vdd FILL
XFILL_0__2485_ gnd vdd FILL
XFILL_6__3452_ gnd vdd FILL
XFILL_0__2065_ gnd vdd FILL
XFILL_6__3032_ gnd vdd FILL
XFILL_2__3024_ gnd vdd FILL
XFILL_7__1887_ gnd vdd FILL
X_2904_ _1181_ _550_ _551_ vdd gnd NAND2X1
XFILL_1__1861_ gnd vdd FILL
XFILL_3__1787_ gnd vdd FILL
XFILL_5__2654_ gnd vdd FILL
XFILL_5__2234_ gnd vdd FILL
XFILL_1__2646_ gnd vdd FILL
XFILL_1__2226_ gnd vdd FILL
XFILL_3__3513_ gnd vdd FILL
XFILL_5__3019_ gnd vdd FILL
XFILL_2__1930_ gnd vdd FILL
XFILL_4__1856_ gnd vdd FILL
XFILL_0__1756_ gnd vdd FILL
XFILL_6__2723_ gnd vdd FILL
X_3442_ _1__bF$buf1 vdd _110_ clk_bF$buf2 ABH[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2303_ gnd vdd FILL
X_3022_ reset _645_ _646_ vdd gnd NOR2X1
XFILL_2__2715_ gnd vdd FILL
XFILL_5__3192_ gnd vdd FILL
XFILL_6__3508_ gnd vdd FILL
XFILL_1__3184_ gnd vdd FILL
XFILL_5__1925_ gnd vdd FILL
XFILL_1__1917_ gnd vdd FILL
XFILL169050x150 gnd vdd FILL
XFILL_4__2394_ gnd vdd FILL
XFILL_0__2294_ gnd vdd FILL
XFILL_6__3261_ gnd vdd FILL
XFILL_2__3673_ gnd vdd FILL
XFILL_2__3253_ gnd vdd FILL
XFILL_4__3599_ gnd vdd FILL
XFILL_4__3179_ gnd vdd FILL
X_2713_ _374_ _370_ _382_ _383_ vdd gnd OAI21X1
XFILL_0__3499_ gnd vdd FILL
XFILL_0__3079_ gnd vdd FILL
XFILL_5__2883_ gnd vdd FILL
XFILL_5__2463_ gnd vdd FILL
XFILL_5__2043_ gnd vdd FILL
XFILL_1__2875_ gnd vdd FILL
XFILL_1__2455_ gnd vdd FILL
XFILL_1__2035_ gnd vdd FILL
XFILL_5__3668_ gnd vdd FILL
XFILL_5__3248_ gnd vdd FILL
XFILL_0__1985_ gnd vdd FILL
XFILL_6__2952_ gnd vdd FILL
X_3671_ ADD[5] _1714__bF$buf0 _1694_ vdd gnd NAND2X1
XFILL_6__2532_ gnd vdd FILL
XFILL_6__2112_ gnd vdd FILL
X_3251_ _1257_ _818_ _827_ vdd gnd OR2X2
XFILL_2__2944_ gnd vdd FILL
XFILL_2__2524_ gnd vdd FILL
XFILL_2__2104_ gnd vdd FILL
XFILL_6__3317_ gnd vdd FILL
XFILL_0__3711_ gnd vdd FILL
XFILL_2__3309_ gnd vdd FILL
XFILL_5__2939_ gnd vdd FILL
XFILL_5__2519_ gnd vdd FILL
XFILL_6__3490_ gnd vdd FILL
XFILL_6__3070_ gnd vdd FILL
XFILL_2__3482_ gnd vdd FILL
XFILL_2__3062_ gnd vdd FILL
XFILL_0_BUFX2_insert37 gnd vdd FILL
XFILL_0_BUFX2_insert38 gnd vdd FILL
XFILL_0_BUFX2_insert39 gnd vdd FILL
XFILL_6__1803_ gnd vdd FILL
X_2942_ _1395_ _1189_ _1149__bF$buf1 _585_ vdd gnd AOI21X1
X_2522_ _216_ _209_ _217_ vdd gnd NOR2X1
X_2102_ _1168_ IRHOLD[3] _1167_ _1211_ vdd gnd OAI21X1
XFILL_5__2692_ gnd vdd FILL
XFILL_5__2272_ gnd vdd FILL
X_3307_ _1102_ _869_ _872_ _111_ vdd gnd OAI21X1
XFILL_1__2684_ gnd vdd FILL
XFILL_7__3651_ gnd vdd FILL
XFILL_1__2264_ gnd vdd FILL
XFILL_3__3551_ gnd vdd FILL
XFILL_3__3131_ gnd vdd FILL
XFILL_5__3477_ gnd vdd FILL
XFILL_5__3057_ gnd vdd FILL
XFILL_1__3469_ gnd vdd FILL
XFILL_1__3049_ gnd vdd FILL
XFILL_4__1894_ gnd vdd FILL
XFILL_0__1794_ gnd vdd FILL
XFILL_6__2761_ gnd vdd FILL
X_3480_ BI[7] alu_op[2] _1725_ _1726_ vdd gnd OAI21X1
XFILL_6__2341_ gnd vdd FILL
X_3060_ _670_ _674_ vdd gnd INVX1
XFILL_2__2753_ gnd vdd FILL
XFILL_2__2333_ gnd vdd FILL
XFILL_4__2679_ gnd vdd FILL
XFILL_4__2259_ gnd vdd FILL
XFILL_4__3620_ gnd vdd FILL
XFILL_4__3200_ gnd vdd FILL
XFILL_0__2999_ gnd vdd FILL
XFILL_0__2579_ gnd vdd FILL
XFILL_6__3546_ gnd vdd FILL
XFILL_0__2159_ gnd vdd FILL
XFILL_6__3126_ gnd vdd FILL
XFILL_0__3520_ gnd vdd FILL
XFILL_2__3538_ gnd vdd FILL
XFILL_2__3118_ gnd vdd FILL
XFILL_0__3100_ gnd vdd FILL
XFILL_5__1963_ gnd vdd FILL
XFILL_1__1955_ gnd vdd FILL
XFILL_7__2922_ gnd vdd FILL
XFILL_3__2822_ gnd vdd FILL
XFILL_3__2402_ gnd vdd FILL
XFILL169050x158550 gnd vdd FILL
XFILL_5__2748_ gnd vdd FILL
XFILL_5__2328_ gnd vdd FILL
XFILL_7__3707_ gnd vdd FILL
XFILL_2__3291_ gnd vdd FILL
XFILL_3__3607_ gnd vdd FILL
X_2751_ _416_ _370_ _417_ vdd gnd NOR2X1
X_2331_ _1434_ _1437_ _1438_ vdd gnd NOR2X1
XFILL_5__2081_ gnd vdd FILL
XFILL_6__2817_ gnd vdd FILL
X_3536_ alu_op[0] _1565_ _1566_ vdd gnd NOR2X1
X_3116_ ADD[0] _1319__bF$buf3 _723_ _724_ vdd gnd OAI21X1
XFILL_1__2493_ gnd vdd FILL
XFILL_1__2073_ gnd vdd FILL
XFILL_7__3040_ gnd vdd FILL
XFILL_2__2809_ gnd vdd FILL
XFILL_5__3286_ gnd vdd FILL
XFILL_1__3698_ gnd vdd FILL
XFILL_1__3278_ gnd vdd FILL
XFILL_6__2990_ gnd vdd FILL
XFILL_6__2570_ gnd vdd FILL
XFILL_6__2150_ gnd vdd FILL
XFILL_2__2982_ gnd vdd FILL
XFILL_2__2562_ gnd vdd FILL
XFILL_2__2142_ gnd vdd FILL
XFILL_4__2488_ gnd vdd FILL
XFILL_4__2068_ gnd vdd FILL
XFILL_0__2388_ gnd vdd FILL
XFILL_5__1772_ gnd vdd FILL
X_2807_ _385_ _469_ _470_ vdd gnd NOR2X1
XFILL_1__1764_ gnd vdd FILL
XFILL_7__2311_ gnd vdd FILL
XFILL_3__2631_ gnd vdd FILL
XFILL_3__2211_ gnd vdd FILL
XFILL_5__2977_ gnd vdd FILL
XFILL_5__2557_ gnd vdd FILL
XFILL_5__2137_ gnd vdd FILL
XFILL_1__2969_ gnd vdd FILL
XFILL_1__2549_ gnd vdd FILL
XFILL_7__3516_ gnd vdd FILL
XFILL_1__2129_ gnd vdd FILL
XFILL_6__1841_ gnd vdd FILL
X_2980_ _609_ _610_ vdd gnd INVX1
X_2560_ ADD[5] _209_ _250_ vdd gnd NAND2X1
X_2140_ _1198_ _1248_ _1249_ vdd gnd OR2X2
XFILL_2__1833_ gnd vdd FILL
XFILL_4__1759_ gnd vdd FILL
XFILL_4__2700_ gnd vdd FILL
XFILL_6__2626_ gnd vdd FILL
X_3345_ _1__bF$buf6 vdd _22_ clk_bF$buf9 plp vdd 
+ gnd
+ DFFSR
XFILL_6__2206_ gnd vdd FILL
XFILL_0__2600_ gnd vdd FILL
XFILL_2__2618_ gnd vdd FILL
XFILL_5__3095_ gnd vdd FILL
XFILL_1__3087_ gnd vdd FILL
XFILL_3__1902_ gnd vdd FILL
XFILL_5__1828_ gnd vdd FILL
XFILL_2__2791_ gnd vdd FILL
XFILL_2__2371_ gnd vdd FILL
XFILL_4__2297_ gnd vdd FILL
X_1831_ state[2] _897_ _957_ vdd gnd NOR2X1
XFILL_6__3584_ gnd vdd FILL
XFILL_0__2197_ gnd vdd FILL
XFILL_6__3164_ gnd vdd FILL
XFILL_2__3576_ gnd vdd FILL
XFILL_2__3156_ gnd vdd FILL
X_2616_ _296_ _270_ _297_ _298_ vdd gnd OAI21X1
XFILL_1__1993_ gnd vdd FILL
XFILL_7__2540_ gnd vdd FILL
XFILL_3__2860_ gnd vdd FILL
XFILL_3__2440_ gnd vdd FILL
XFILL_3__2020_ gnd vdd FILL
XFILL_5__2786_ gnd vdd FILL
XFILL_5__2366_ gnd vdd FILL
XFILL_1__2778_ gnd vdd FILL
XFILL_1__2358_ gnd vdd FILL
XBUFX2_insert40 _720_ _720__bF$buf0 vdd gnd BUFX2
XBUFX2_insert41 _902_ _902__bF$buf3 vdd gnd BUFX2
XBUFX2_insert42 _902_ _902__bF$buf2 vdd gnd BUFX2
XBUFX2_insert43 _902_ _902__bF$buf1 vdd gnd BUFX2
XBUFX2_insert44 _902_ _902__bF$buf0 vdd gnd BUFX2
XBUFX2_insert45 _1027_ _1027__bF$buf4 vdd gnd BUFX2
XBUFX2_insert46 _1027_ _1027__bF$buf3 vdd gnd BUFX2
XBUFX2_insert47 _1027_ _1027__bF$buf2 vdd gnd BUFX2
XBUFX2_insert48 _1027_ _1027__bF$buf1 vdd gnd BUFX2
XFILL_3__3645_ gnd vdd FILL
XBUFX2_insert49 _1027_ _1027__bF$buf0 vdd gnd BUFX2
XFILL_3__3225_ gnd vdd FILL
XFILL_4__1988_ gnd vdd FILL
XFILL_0__1888_ gnd vdd FILL
XFILL_6__2855_ gnd vdd FILL
X_3574_ _1595_ _1599_ _1562_ _1604_ vdd gnd AOI21X1
XFILL_6__2435_ gnd vdd FILL
XFILL_6__2015_ gnd vdd FILL
X_3154_ _AXYS[0]_[4] _722_ _758_ vdd gnd NAND2X1
XFILL_2__2847_ gnd vdd FILL
XFILL_2__2427_ gnd vdd FILL
XFILL_2__2007_ gnd vdd FILL
XFILL_4__3714_ gnd vdd FILL
XFILL_7__1811_ gnd vdd FILL
XFILL_0__3614_ gnd vdd FILL
XFILL_2__2180_ gnd vdd FILL
XFILL_3__2916_ gnd vdd FILL
X_2845_ _505_ _501_ _506_ vdd gnd NOR2X1
X_2425_ op[1] _132_ vdd gnd INVX1
X_2005_ ABH[4] _925_ _1118_ vdd gnd NAND2X1
XFILL_5__2595_ gnd vdd FILL
XFILL_5__2175_ gnd vdd FILL
XFILL_1__2587_ gnd vdd FILL
XFILL_7__3554_ gnd vdd FILL
XFILL_1__2167_ gnd vdd FILL
XFILL_3__3454_ gnd vdd FILL
XFILL_3__3034_ gnd vdd FILL
XFILL_2__1871_ gnd vdd FILL
XFILL_4__1797_ gnd vdd FILL
XFILL_6__2664_ gnd vdd FILL
X_3383_ vdd _1__bF$buf4 _52_ clk_bF$buf2 res vdd 
+ gnd
+ DFFSR
XFILL_6__2244_ gnd vdd FILL
XFILL_2__2656_ gnd vdd FILL
XFILL_2__2236_ gnd vdd FILL
XFILL_4__3523_ gnd vdd FILL
XFILL_4__3103_ gnd vdd FILL
XFILL_6__3449_ gnd vdd FILL
XFILL_6__3029_ gnd vdd FILL
XFILL_3__1940_ gnd vdd FILL
XFILL_0__3003_ gnd vdd FILL
XFILL_5__1866_ gnd vdd FILL
XFILL_1__1858_ gnd vdd FILL
XFILL_7__2825_ gnd vdd FILL
XFILL_3__2725_ gnd vdd FILL
XFILL_3__2305_ gnd vdd FILL
XFILL_2__3194_ gnd vdd FILL
XFILL_6__1935_ gnd vdd FILL
X_2654_ _1027__bF$buf4 _1154_ _197_ _329_ vdd gnd OAI21X1
X_2234_ _1331_ _1333_ _1341_ _1342_ vdd gnd NAND3X1
XFILL_3_CLKBUF1_insert26 gnd vdd FILL
XFILL_2__1927_ gnd vdd FILL
XFILL_3_CLKBUF1_insert27 gnd vdd FILL
XFILL_3_CLKBUF1_insert28 gnd vdd FILL
XFILL_3_CLKBUF1_insert29 gnd vdd FILL
X_3439_ _1__bF$buf3 vdd _107_ clk_bF$buf1 ABL[6] vdd 
+ gnd
+ DFFSR
X_3019_ _633_ _1149__bF$buf0 _637_ _644_ _51_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2396_ gnd vdd FILL
XFILL_3__3263_ gnd vdd FILL
XFILL_5__3189_ gnd vdd FILL
XFILL_6__2893_ gnd vdd FILL
XFILL_6__2473_ gnd vdd FILL
X_3192_ _720__bF$buf2 _687_ _AXYS[1]_[1] _791_ vdd gnd OAI21X1
XFILL_6__2053_ gnd vdd FILL
XFILL169950x32550 gnd vdd FILL
XFILL_2__2885_ gnd vdd FILL
XFILL_2__2465_ gnd vdd FILL
XFILL_2__2045_ gnd vdd FILL
X_1925_ dst_reg[0] _1042_ vdd gnd INVX1
XFILL_6__3678_ gnd vdd FILL
XFILL_6__3258_ gnd vdd FILL
XFILL_0__3652_ gnd vdd FILL
XFILL_0__3232_ gnd vdd FILL
XFILL_7__2214_ gnd vdd FILL
XFILL_3__2954_ gnd vdd FILL
XFILL_3__2534_ gnd vdd FILL
XFILL_3__2114_ gnd vdd FILL
XFILL_6__1744_ gnd vdd FILL
X_2883_ _886__bF$buf4 _1027__bF$buf2 clc _536_ vdd gnd OAI21X1
X_2463_ _143_ _1101_ _163_ _1742_[2] vdd gnd OAI21X1
X_2043_ IRQ _1152_ vdd gnd INVX1
XFILL168750x14550 gnd vdd FILL
XFILL_4__2603_ gnd vdd FILL
XFILL_6__2949_ gnd vdd FILL
X_3668_ _1670_ _1669_ _1692_ vdd gnd NOR2X1
XFILL_6__2529_ gnd vdd FILL
X_3248_ _935_ _941_ _823_ _824_ vdd gnd OAI21X1
XFILL_6__2109_ gnd vdd FILL
XFILL_7__3592_ gnd vdd FILL
XFILL_7__3172_ gnd vdd FILL
XFILL_0__2923_ gnd vdd FILL
XFILL_0__2503_ gnd vdd FILL
XFILL_3__3492_ gnd vdd FILL
XFILL_3__3072_ gnd vdd FILL
XFILL_7__1905_ gnd vdd FILL
XFILL_0__3708_ gnd vdd FILL
XFILL_3__1805_ gnd vdd FILL
XFILL_6__2282_ gnd vdd FILL
XFILL_2__2694_ gnd vdd FILL
XFILL_2__2274_ gnd vdd FILL
XFILL_4__3561_ gnd vdd FILL
XFILL_4__3141_ gnd vdd FILL
XFILL_6__3487_ gnd vdd FILL
XFILL_6__3067_ gnd vdd FILL
XFILL_2__3479_ gnd vdd FILL
XFILL_0__3461_ gnd vdd FILL
XFILL_2__3059_ gnd vdd FILL
XFILL_0__3041_ gnd vdd FILL
X_2939_ _530_ _581_ _580_ _582_ vdd gnd OAI21X1
X_2519_ _932_ _213_ _214_ vdd gnd OR2X2
XFILL_1__1896_ gnd vdd FILL
XFILL_7__2443_ gnd vdd FILL
XFILL_3__2763_ gnd vdd FILL
XFILL_3__2343_ gnd vdd FILL
XFILL_5__2689_ gnd vdd FILL
XFILL_5__2269_ gnd vdd FILL
XFILL_7__3648_ gnd vdd FILL
XFILL_5__3630_ gnd vdd FILL
XFILL_7__3228_ gnd vdd FILL
XFILL_5__3210_ gnd vdd FILL
XFILL_1__3622_ gnd vdd FILL
XFILL_1__3202_ gnd vdd FILL
XFILL_3__3548_ gnd vdd FILL
XFILL_3__3128_ gnd vdd FILL
XFILL_6__1973_ gnd vdd FILL
X_2692_ RDY_bF$buf3 _1009_ _363_ _360_ _5_ vdd 
+ gnd
+ OAI22X1
X_2272_ _1376_ _1379_ cond_code[1] _1380_ vdd gnd MUX2X1
XFILL_2__1965_ gnd vdd FILL
XFILL_4__2832_ gnd vdd FILL
XFILL_4__2412_ gnd vdd FILL
XFILL_6__2758_ gnd vdd FILL
X_3477_ AI[7] _1719_ _1722_ _1723_ vdd gnd OAI21X1
XFILL_6__2338_ gnd vdd FILL
X_3057_ _545_ _670_ _671_ vdd gnd NAND2X1
XFILL_0__2732_ gnd vdd FILL
XFILL_0__2312_ gnd vdd FILL
XFILL_4__3617_ gnd vdd FILL
XFILL_0__3517_ gnd vdd FILL
XFILL_6__2091_ gnd vdd FILL
XFILL_7__2919_ gnd vdd FILL
XFILL_5__2901_ gnd vdd FILL
XFILL_2__2083_ gnd vdd FILL
XFILL_3__2819_ gnd vdd FILL
X_1963_ _914__bF$buf3 _984_ _1079_ _1080_ vdd gnd OAI21X1
XFILL_6__3296_ gnd vdd FILL
XFILL_2__3288_ gnd vdd FILL
XFILL_0__3270_ gnd vdd FILL
X_2748_ _322_ ADD[5] _379_ _414_ vdd gnd AOI21X1
X_2328_ _902__bF$buf3 _958_ RDY_bF$buf8 _1435_ vdd gnd OAI21X1
XFILL_7__2672_ gnd vdd FILL
XFILL_3__2992_ gnd vdd FILL
XFILL_3__2572_ gnd vdd FILL
XFILL_3__2152_ gnd vdd FILL
XFILL_5__2498_ gnd vdd FILL
XFILL_5__2078_ gnd vdd FILL
XFILL_1__3011_ gnd vdd FILL
XFILL_6__1782_ gnd vdd FILL
X_2081_ _1189_ _1182_ _1190_ vdd gnd NAND2X1
XFILL_5_BUFX2_insert50 gnd vdd FILL
XFILL_5_BUFX2_insert51 gnd vdd FILL
XFILL_5_BUFX2_insert52 gnd vdd FILL
XFILL_5_BUFX2_insert53 gnd vdd FILL
XFILL_5_BUFX2_insert54 gnd vdd FILL
XFILL_2__1774_ gnd vdd FILL
XFILL_5_BUFX2_insert55 gnd vdd FILL
XFILL_5_BUFX2_insert56 gnd vdd FILL
XFILL_5_BUFX2_insert57 gnd vdd FILL
XFILL_5_BUFX2_insert58 gnd vdd FILL
XFILL_5_BUFX2_insert59 gnd vdd FILL
XFILL_4__2641_ gnd vdd FILL
XFILL_4__2221_ gnd vdd FILL
XFILL_6__2987_ gnd vdd FILL
XFILL_6__2567_ gnd vdd FILL
X_3286_ _860_ _225_ _861_ _101_ vdd gnd OAI21X1
XFILL_6__2147_ gnd vdd FILL
XFILL_0__2961_ gnd vdd FILL
XFILL_2__2979_ gnd vdd FILL
XFILL_0__2541_ gnd vdd FILL
XFILL_2__2559_ gnd vdd FILL
XFILL_0__2121_ gnd vdd FILL
XFILL_2__2139_ gnd vdd FILL
XFILL_2__3500_ gnd vdd FILL
XFILL_7__1943_ gnd vdd FILL
XFILL_4__3006_ gnd vdd FILL
XFILL_3__1843_ gnd vdd FILL
XFILL_5__1769_ gnd vdd FILL
XFILL_5__2710_ gnd vdd FILL
XFILL_7__2308_ gnd vdd FILL
XFILL_1__2702_ gnd vdd FILL
XFILL_3__2628_ gnd vdd FILL
XFILL_3__2208_ gnd vdd FILL
X_1772_ _896_ _897_ _898_ vdd gnd NAND2X1
XFILL_2__3097_ gnd vdd FILL
XFILL_4__1912_ gnd vdd FILL
XFILL_6__1838_ gnd vdd FILL
X_2977_ index_y _1149__bF$buf3 _1332_ _1330_ _608_ vdd 
+ gnd
+ AOI22X1
X_2557_ _1011_ _218_ _247_ _248_ vdd gnd OAI21X1
X_2137_ _1232_ _1245_ _1240_ _1246_ vdd gnd NAND3X1
XFILL_7__2061_ gnd vdd FILL
XFILL_0__1812_ gnd vdd FILL
XFILL_3__2381_ gnd vdd FILL
XFILL_1__2299_ gnd vdd FILL
XFILL_1__3660_ gnd vdd FILL
XFILL_1__3240_ gnd vdd FILL
XFILL_3__3586_ gnd vdd FILL
XFILL_3__3166_ gnd vdd FILL
XFILL_4__2870_ gnd vdd FILL
XFILL_4__2450_ gnd vdd FILL
XFILL_4__2030_ gnd vdd FILL
XFILL_6__2796_ gnd vdd FILL
XFILL_6__2376_ gnd vdd FILL
X_3095_ _704_ _705_ vdd gnd INVX1
XFILL_2__2788_ gnd vdd FILL
XFILL_0__2770_ gnd vdd FILL
XFILL_2__2368_ gnd vdd FILL
XFILL_0__2350_ gnd vdd FILL
X_1828_ state[2] _897_ _937_ _954_ vdd gnd NAND3X1
XFILL_4__3655_ gnd vdd FILL
XFILL_4__3235_ gnd vdd FILL
XFILL_0__3555_ gnd vdd FILL
XFILL_0__3135_ gnd vdd FILL
XFILL_5__1998_ gnd vdd FILL
XFILL_7__2957_ gnd vdd FILL
XFILL_7__2537_ gnd vdd FILL
XFILL_7__2117_ gnd vdd FILL
XFILL_1__2931_ gnd vdd FILL
XFILL_1__2511_ gnd vdd FILL
XFILL_3__2857_ gnd vdd FILL
XFILL_3__2437_ gnd vdd FILL
XFILL_3__2017_ gnd vdd FILL
XFILL_5__3304_ gnd vdd FILL
X_2786_ _1037_ _449_ _447_ _450_ vdd gnd AOI21X1
X_2366_ _1471_ _1469_ _1472_ vdd gnd NOR2X1
XFILL_7__2290_ gnd vdd FILL
XFILL_3__2190_ gnd vdd FILL
XFILL_4__2926_ gnd vdd FILL
XFILL_4__2506_ gnd vdd FILL
XFILL_7__3495_ gnd vdd FILL
XFILL_7__3075_ gnd vdd FILL
XFILL_0__2826_ gnd vdd FILL
XFILL_0__2406_ gnd vdd FILL
XFILL_7__1808_ gnd vdd FILL
XFILL_6__2185_ gnd vdd FILL
XFILL_2__2597_ gnd vdd FILL
XFILL_2__2177_ gnd vdd FILL
XFILL_4__3464_ gnd vdd FILL
XFILL_4__3044_ gnd vdd FILL
XFILL_3__1881_ gnd vdd FILL
XFILL_2_CLKBUF1_insert30 gnd vdd FILL
XFILL_2_CLKBUF1_insert31 gnd vdd FILL
XFILL_2_CLKBUF1_insert32 gnd vdd FILL
XFILL_2_CLKBUF1_insert33 gnd vdd FILL
XFILL_2_CLKBUF1_insert34 gnd vdd FILL
XFILL_2_CLKBUF1_insert35 gnd vdd FILL
XFILL_2_CLKBUF1_insert36 gnd vdd FILL
XFILL_1__1799_ gnd vdd FILL
XFILL_7__2766_ gnd vdd FILL
XFILL_7__2346_ gnd vdd FILL
XFILL_1__2740_ gnd vdd FILL
XFILL_1__2320_ gnd vdd FILL
XFILL_3__2666_ gnd vdd FILL
XFILL_3__2246_ gnd vdd FILL
XFILL_5__3533_ gnd vdd FILL
XFILL_5__3113_ gnd vdd FILL
XFILL_1__3525_ gnd vdd FILL
XFILL_1__3105_ gnd vdd FILL
XFILL_4__1950_ gnd vdd FILL
XFILL_6__1876_ gnd vdd FILL
X_2595_ PC[10] _280_ vdd gnd INVX1
X_2175_ _1149__bF$buf1 _1179_ _1284_ vdd gnd NOR2X1
XFILL_0__1850_ gnd vdd FILL
XFILL_2__1868_ gnd vdd FILL
XFILL_4__2735_ gnd vdd FILL
XFILL_4__2315_ gnd vdd FILL
XFILL_0__2635_ gnd vdd FILL
XFILL_6__3602_ gnd vdd FILL
XFILL_0__2215_ gnd vdd FILL
XFILL_3__1937_ gnd vdd FILL
XFILL_5__2804_ gnd vdd FILL
X_1866_ _990_ _988_ _991_ vdd gnd NOR2X1
XFILL_4__3693_ gnd vdd FILL
XFILL_7__1790_ gnd vdd FILL
XFILL_4__3273_ gnd vdd FILL
XFILL_6__3199_ gnd vdd FILL
XFILL_0__3593_ gnd vdd FILL
XFILL_0__3173_ gnd vdd FILL
XFILL_7__2995_ gnd vdd FILL
XFILL_7__2575_ gnd vdd FILL
XFILL_7__2155_ gnd vdd FILL
XFILL_0__1906_ gnd vdd FILL
XFILL_3__2895_ gnd vdd FILL
XFILL_3__2475_ gnd vdd FILL
XFILL_3__2055_ gnd vdd FILL
XFILL_4__2964_ gnd vdd FILL
XFILL_4__2544_ gnd vdd FILL
XFILL_4__2124_ gnd vdd FILL
X_3189_ _721_ _1047_ _789_ vdd gnd NAND2X1
XFILL_0__2864_ gnd vdd FILL
XFILL_0__2444_ gnd vdd FILL
XFILL_0__2024_ gnd vdd FILL
XFILL_1__1820_ gnd vdd FILL
XFILL_3__1746_ gnd vdd FILL
XFILL_0__3649_ gnd vdd FILL
XFILL_0__3229_ gnd vdd FILL
XFILL_5__2613_ gnd vdd FILL
XFILL_1__2605_ gnd vdd FILL
XFILL_4__3082_ gnd vdd FILL
XFILL_4__1815_ gnd vdd FILL
X_3401_ _1__bF$buf10 vdd _70_ clk_bF$buf8 _AXYS[0]_[1] vdd 
+ gnd
+ DFFSR
XFILL_3__2284_ gnd vdd FILL
XFILL_5__3571_ gnd vdd FILL
XFILL_7__3169_ gnd vdd FILL
XFILL_5__3151_ gnd vdd FILL
XFILL_1__3563_ gnd vdd FILL
XFILL_1__3143_ gnd vdd FILL
XFILL_3__3489_ gnd vdd FILL
XFILL_3__3069_ gnd vdd FILL
XFILL_4__2773_ gnd vdd FILL
XFILL_4__2353_ gnd vdd FILL
XFILL_6__2699_ gnd vdd FILL
XFILL_6__2279_ gnd vdd FILL
XFILL_0__2673_ gnd vdd FILL
XFILL_6__3640_ gnd vdd FILL
XFILL_0__2253_ gnd vdd FILL
XFILL_6__3220_ gnd vdd FILL
XFILL_2__3632_ gnd vdd FILL
XFILL_2__3212_ gnd vdd FILL
XFILL_4__3558_ gnd vdd FILL
XFILL_4__3138_ gnd vdd FILL
XFILL_3__1975_ gnd vdd FILL
XFILL_0__3458_ gnd vdd FILL
XFILL_0__3038_ gnd vdd FILL
XFILL169050x14550 gnd vdd FILL
XFILL_5__2842_ gnd vdd FILL
XFILL_5__2422_ gnd vdd FILL
XFILL_5__2002_ gnd vdd FILL
XFILL_1__2834_ gnd vdd FILL
XFILL_1__2414_ gnd vdd FILL
XFILL_3__3701_ gnd vdd FILL
XFILL_5__3627_ gnd vdd FILL
XFILL_5__3207_ gnd vdd FILL
XFILL_1__3619_ gnd vdd FILL
X_2689_ _352_ _353_ _1007_ _361_ vdd gnd AOI21X1
X_2269_ N _1377_ vdd gnd INVX1
XFILL_7__2193_ gnd vdd FILL
XFILL_0__1944_ gnd vdd FILL
XFILL_6__2911_ gnd vdd FILL
X_3630_ _1653_ _1636_ _1648_ _1660_ vdd gnd OAI21X1
X_3210_ _737_ _798_ _800_ _86_ vdd gnd AOI21X1
XFILL_3__2093_ gnd vdd FILL
XFILL_2__2903_ gnd vdd FILL
XFILL_4__2829_ gnd vdd FILL
XFILL_4__2409_ gnd vdd FILL
XFILL_0__2729_ gnd vdd FILL
XFILL_0__2309_ gnd vdd FILL
XFILL_3__3298_ gnd vdd FILL
XFILL_4__2582_ gnd vdd FILL
XFILL_4__2162_ gnd vdd FILL
XFILL_6__2088_ gnd vdd FILL
XFILL_0__2482_ gnd vdd FILL
XFILL_0__2062_ gnd vdd FILL
XFILL_2__3021_ gnd vdd FILL
XFILL_7__1884_ gnd vdd FILL
X_2901_ _548_ _1150__bF$buf2 _541_ _547_ _29_ vdd 
+ gnd
+ OAI22X1
XFILL_3__1784_ gnd vdd FILL
XFILL_0__3267_ gnd vdd FILL
XFILL_7__2669_ gnd vdd FILL
XFILL_5__2651_ gnd vdd FILL
XFILL_5__2231_ gnd vdd FILL
XFILL_1__2643_ gnd vdd FILL
XFILL_1__2223_ gnd vdd FILL
XFILL_3__2989_ gnd vdd FILL
XFILL_3__2569_ gnd vdd FILL
XFILL_3__2149_ gnd vdd FILL
XFILL_3__3510_ gnd vdd FILL
XFILL_5__3016_ gnd vdd FILL
XFILL_1__3008_ gnd vdd FILL
XFILL_4__1853_ gnd vdd FILL
XFILL_6__1779_ gnd vdd FILL
X_2498_ _902__bF$buf0 _946_ _1067_ _193_ vdd gnd OAI21X1
X_2078_ _1154_ _1186_ _1187_ vdd gnd NOR2X1
XFILL_0__1753_ gnd vdd FILL
XFILL_6__2720_ gnd vdd FILL
XFILL_6__2300_ gnd vdd FILL
XFILL_2__2712_ gnd vdd FILL
XFILL_4__2638_ gnd vdd FILL
XFILL_4__2218_ gnd vdd FILL
XFILL_0__2958_ gnd vdd FILL
XFILL_0__2538_ gnd vdd FILL
XFILL_6__3505_ gnd vdd FILL
XFILL_0__2118_ gnd vdd FILL
XFILL_1__3181_ gnd vdd FILL
XFILL_5__1922_ gnd vdd FILL
XFILL_1__1914_ gnd vdd FILL
XFILL_4__2391_ gnd vdd FILL
XFILL_5__2707_ gnd vdd FILL
XFILL_0__2291_ gnd vdd FILL
XFILL_2__3670_ gnd vdd FILL
XFILL_2__3250_ gnd vdd FILL
X_1769_ shift _895_ vdd gnd INVX1
XFILL_4__3596_ gnd vdd FILL
XFILL_4__3176_ gnd vdd FILL
X_2710_ _379_ _380_ vdd gnd INVX1
XFILL_0__3496_ gnd vdd FILL
XFILL_0__3076_ gnd vdd FILL
XFILL_4__1909_ gnd vdd FILL
XFILL_5__2880_ gnd vdd FILL
XFILL_7__2898_ gnd vdd FILL
XFILL_5__2460_ gnd vdd FILL
XFILL_7__2058_ gnd vdd FILL
XFILL_5__2040_ gnd vdd FILL
XFILL_0__1809_ gnd vdd FILL
XFILL_1__2872_ gnd vdd FILL
XFILL_1__2452_ gnd vdd FILL
XFILL_1__2032_ gnd vdd FILL
XFILL_3__2798_ gnd vdd FILL
XFILL_3__2378_ gnd vdd FILL
XFILL_5__3665_ gnd vdd FILL
XFILL_5__3245_ gnd vdd FILL
XFILL_1__3657_ gnd vdd FILL
XFILL_1__3237_ gnd vdd FILL
XFILL_0__1982_ gnd vdd FILL
XFILL_2__2941_ gnd vdd FILL
XFILL_2__2521_ gnd vdd FILL
XFILL_2__2101_ gnd vdd FILL
XFILL_4__2867_ gnd vdd FILL
XFILL_4__2447_ gnd vdd FILL
XFILL_4__2027_ gnd vdd FILL
XFILL_0__2767_ gnd vdd FILL
XFILL_0__2347_ gnd vdd FILL
XFILL_6__3314_ gnd vdd FILL
XFILL_2__3306_ gnd vdd FILL
XFILL_5__2936_ gnd vdd FILL
XFILL_5__2516_ gnd vdd FILL
XFILL169350x57750 gnd vdd FILL
XFILL_1__2928_ gnd vdd FILL
XFILL_1__2508_ gnd vdd FILL
X_1998_ _1082_ ADD[3] _1111_ _1112_ vdd gnd AOI21X1
XFILL_6__1800_ gnd vdd FILL
XFILL_7__2287_ gnd vdd FILL
X_3304_ _1741_[9] _869_ _871_ vdd gnd NAND2X1
XFILL_1__2681_ gnd vdd FILL
XFILL_1__2261_ gnd vdd FILL
XFILL_3__2187_ gnd vdd FILL
XFILL_5__3474_ gnd vdd FILL
XFILL_5__3054_ gnd vdd FILL
XFILL_1__3466_ gnd vdd FILL
XFILL_1__3046_ gnd vdd FILL
XFILL_4__1891_ gnd vdd FILL
XFILL_0__1791_ gnd vdd FILL
XFILL_2__2750_ gnd vdd FILL
XFILL_2__2330_ gnd vdd FILL
XFILL168150x39750 gnd vdd FILL
XFILL_4__2676_ gnd vdd FILL
XFILL_4__2256_ gnd vdd FILL
XFILL_0__2996_ gnd vdd FILL
XFILL_0__2576_ gnd vdd FILL
XFILL_6__3543_ gnd vdd FILL
XFILL_0__2156_ gnd vdd FILL
XFILL_6__3123_ gnd vdd FILL
XFILL_2__3535_ gnd vdd FILL
XFILL_2__3115_ gnd vdd FILL
XFILL_5__1960_ gnd vdd FILL
XFILL_1__1952_ gnd vdd FILL
XFILL_3__1878_ gnd vdd FILL
XFILL_5__2745_ gnd vdd FILL
XFILL_5__2325_ gnd vdd FILL
XFILL_1__2737_ gnd vdd FILL
XFILL_1__2317_ gnd vdd FILL
XFILL_3__3604_ gnd vdd FILL
XFILL_4__1947_ gnd vdd FILL
XFILL_7__2096_ gnd vdd FILL
XFILL_0__1847_ gnd vdd FILL
XFILL_6__2814_ gnd vdd FILL
X_3533_ BI[1] AI[1] _1718_ _1563_ vdd gnd NAND3X1
X_3113_ _720__bF$buf2 _721_ vdd gnd INVX1
XFILL_1__2490_ gnd vdd FILL
XFILL_1__2070_ gnd vdd FILL
XFILL_2__2806_ gnd vdd FILL
XFILL_5__3283_ gnd vdd FILL
XFILL_1__3695_ gnd vdd FILL
XFILL_1__3275_ gnd vdd FILL
XFILL_4__2485_ gnd vdd FILL
XFILL_4__2065_ gnd vdd FILL
XFILL_0__2385_ gnd vdd FILL
XFILL_7__1787_ gnd vdd FILL
X_2804_ _465_ _466_ _467_ vdd gnd NAND2X1
XFILL_1__1761_ gnd vdd FILL
XFILL_5__2974_ gnd vdd FILL
XFILL_5__2554_ gnd vdd FILL
XFILL_5__2134_ gnd vdd FILL
XFILL_1__2966_ gnd vdd FILL
XFILL_1__2546_ gnd vdd FILL
XFILL_7__3513_ gnd vdd FILL
XFILL_1__2126_ gnd vdd FILL
XFILL_2__1830_ gnd vdd FILL
XFILL_4__1756_ gnd vdd FILL
XFILL_6__2623_ gnd vdd FILL
X_3342_ _1__bF$buf2 vdd _19_ clk_bF$buf10 cond_code[0] vdd 
+ gnd
+ DFFSR
XFILL_6__2203_ gnd vdd FILL
XFILL_2__2615_ gnd vdd FILL
XFILL_5__3092_ gnd vdd FILL
XFILL_1__3084_ gnd vdd FILL
XFILL_5__1825_ gnd vdd FILL
XFILL_1__1817_ gnd vdd FILL
XFILL_4__2294_ gnd vdd FILL
XFILL_6__3581_ gnd vdd FILL
XFILL_0__2194_ gnd vdd FILL
XFILL_6__3161_ gnd vdd FILL
XFILL_2__3573_ gnd vdd FILL
XFILL_2__3153_ gnd vdd FILL
XFILL_4__3499_ gnd vdd FILL
XFILL_4__3079_ gnd vdd FILL
X_2613_ PC[13] _295_ vdd gnd INVX1
XFILL_1__1990_ gnd vdd FILL
XFILL_5__2783_ gnd vdd FILL
XFILL_5__2363_ gnd vdd FILL
XFILL_1__2775_ gnd vdd FILL
XFILL_1__2355_ gnd vdd FILL
XBUFX2_insert10 _1_ _1__bF$buf10 vdd gnd BUFX2
XBUFX2_insert11 _1_ _1__bF$buf9 vdd gnd BUFX2
XBUFX2_insert12 _1_ _1__bF$buf8 vdd gnd BUFX2
XBUFX2_insert13 _1_ _1__bF$buf7 vdd gnd BUFX2
XBUFX2_insert14 _1_ _1__bF$buf6 vdd gnd BUFX2
XBUFX2_insert15 _1_ _1__bF$buf5 vdd gnd BUFX2
XBUFX2_insert16 _1_ _1__bF$buf4 vdd gnd BUFX2
XBUFX2_insert17 _1_ _1__bF$buf3 vdd gnd BUFX2
XBUFX2_insert18 _1_ _1__bF$buf2 vdd gnd BUFX2
XFILL_3__3642_ gnd vdd FILL
XBUFX2_insert19 _1_ _1__bF$buf1 vdd gnd BUFX2
XFILL_3__3222_ gnd vdd FILL
XFILL169650x10950 gnd vdd FILL
XFILL_5__3568_ gnd vdd FILL
XFILL_5__3148_ gnd vdd FILL
XFILL_4__1985_ gnd vdd FILL
XFILL_0__1885_ gnd vdd FILL
XFILL_6__2852_ gnd vdd FILL
X_3571_ _1548_ _1545_ _1601_ vdd gnd NAND2X1
XFILL_6__2432_ gnd vdd FILL
XFILL_6__2012_ gnd vdd FILL
X_3151_ _722_ _754_ _755_ _72_ vdd gnd OAI21X1
XFILL_2__2844_ gnd vdd FILL
XFILL_2__2424_ gnd vdd FILL
XFILL_2__2004_ gnd vdd FILL
XFILL_4__3711_ gnd vdd FILL
XFILL_6__3637_ gnd vdd FILL
XFILL_6__3217_ gnd vdd FILL
XFILL_0__3611_ gnd vdd FILL
XFILL_2__3629_ gnd vdd FILL
XFILL_2__3209_ gnd vdd FILL
XFILL_3__2913_ gnd vdd FILL
XFILL_5__2839_ gnd vdd FILL
XFILL_5__2419_ gnd vdd FILL
X_2842_ ADD[6] _1299_ _323_ ABH[6] _503_ vdd 
+ gnd
+ AOI22X1
X_2422_ _1275_ _130_ vdd gnd INVX1
X_2002_ _AXYS[0]_[4] _1051_ _1053_ _1115_ vdd gnd NAND3X1
XFILL_5__2592_ gnd vdd FILL
XFILL_5__2172_ gnd vdd FILL
XFILL_6__2908_ gnd vdd FILL
X_3627_ _1722_ _1576_ _1657_ vdd gnd NOR2X1
X_3207_ _AXYS[2]_[0] _798_ _799_ vdd gnd NOR2X1
XFILL_1__2584_ gnd vdd FILL
XFILL_7__3551_ gnd vdd FILL
XFILL_1__2164_ gnd vdd FILL
XFILL169350x158550 gnd vdd FILL
XFILL_3__3451_ gnd vdd FILL
XFILL_3__3031_ gnd vdd FILL
XFILL_4__1794_ gnd vdd FILL
XFILL_6__2661_ gnd vdd FILL
X_3380_ _1__bF$buf1 vdd DIMUX[5] clk_bF$buf2 DIHOLD[5] vdd 
+ gnd
+ DFFSR
XFILL_6__2241_ gnd vdd FILL
XFILL_2__2653_ gnd vdd FILL
XFILL_2__2233_ gnd vdd FILL
XFILL_4__2999_ gnd vdd FILL
XFILL_4__2579_ gnd vdd FILL
XFILL_4__2159_ gnd vdd FILL
XFILL_4__3520_ gnd vdd FILL
XFILL_4__3100_ gnd vdd FILL
XFILL_0__2899_ gnd vdd FILL
XFILL_0__2479_ gnd vdd FILL
XFILL_0__2059_ gnd vdd FILL
XFILL_6__3026_ gnd vdd FILL
XFILL_2__3018_ gnd vdd FILL
XFILL_0__3000_ gnd vdd FILL
XFILL_5__1863_ gnd vdd FILL
XFILL_1__1855_ gnd vdd FILL
XFILL_7__2822_ gnd vdd FILL
XFILL_3__2722_ gnd vdd FILL
XFILL_3__2302_ gnd vdd FILL
XFILL_5__2648_ gnd vdd FILL
XFILL_5__2228_ gnd vdd FILL
XFILL_2__3191_ gnd vdd FILL
XFILL_3__3507_ gnd vdd FILL
XFILL_6__1932_ gnd vdd FILL
X_2651_ _925_ _1291_ _325_ _326_ vdd gnd NOR3X1
X_2231_ RDY_bF$buf2 _1337_ _1338_ _1339_ vdd gnd OAI21X1
XFILL_2__1924_ gnd vdd FILL
XFILL_6__2717_ gnd vdd FILL
X_3436_ _1__bF$buf5 vdd _104_ clk_bF$buf1 ABL[3] vdd 
+ gnd
+ DFFSR
X_3016_ _1181_ _1185_ _1405_ _642_ vdd gnd OAI21X1
XFILL_1__2393_ gnd vdd FILL
XFILL_2__2709_ gnd vdd FILL
XFILL_3__3260_ gnd vdd FILL
XFILL_1_BUFX2_insert70 gnd vdd FILL
XFILL_1_BUFX2_insert71 gnd vdd FILL
XFILL_1_BUFX2_insert72 gnd vdd FILL
XFILL_1_BUFX2_insert73 gnd vdd FILL
XFILL_5__3186_ gnd vdd FILL
XFILL_1_BUFX2_insert74 gnd vdd FILL
XFILL_1_BUFX2_insert75 gnd vdd FILL
XFILL_1_BUFX2_insert76 gnd vdd FILL
XFILL_1_BUFX2_insert77 gnd vdd FILL
XFILL_1_BUFX2_insert78 gnd vdd FILL
XFILL_1_BUFX2_insert79 gnd vdd FILL
XFILL_1__3598_ gnd vdd FILL
XFILL_1__3178_ gnd vdd FILL
XFILL_5__1919_ gnd vdd FILL
XFILL_6__2890_ gnd vdd FILL
XFILL_6__2470_ gnd vdd FILL
XFILL_6__2050_ gnd vdd FILL
XFILL_2__2882_ gnd vdd FILL
XFILL_2__2462_ gnd vdd FILL
XFILL_2__2042_ gnd vdd FILL
XFILL_4__2388_ gnd vdd FILL
X_1922_ dst_reg[1] _1037_ _1038_ _1039_ vdd gnd AOI21X1
XFILL_6__3675_ gnd vdd FILL
XFILL_0__2288_ gnd vdd FILL
XFILL_6__3255_ gnd vdd FILL
XFILL_2__3667_ gnd vdd FILL
XFILL_2__3247_ gnd vdd FILL
X_2707_ _352_ _353_ _1012_ _377_ vdd gnd AOI21X1
XFILL_7__2211_ gnd vdd FILL
XFILL_3__2951_ gnd vdd FILL
XFILL_3__2531_ gnd vdd FILL
XFILL_3__2111_ gnd vdd FILL
XFILL_5__2877_ gnd vdd FILL
XFILL_5__2457_ gnd vdd FILL
XFILL_5__2037_ gnd vdd FILL
XFILL_1__2869_ gnd vdd FILL
XFILL_1__2449_ gnd vdd FILL
XFILL_1__2029_ gnd vdd FILL
XFILL_3__3316_ gnd vdd FILL
X_2880_ _1187_ _1181_ _534_ vdd gnd NOR2X1
X_2460_ PC[2] _1080_ _149_ I _161_ vdd 
+ gnd
+ AOI22X1
X_2040_ RDY_bF$buf2 _1037_ _1149_ vdd gnd NAND2X1
XFILL_4__2600_ gnd vdd FILL
XFILL_0__1979_ gnd vdd FILL
XFILL_6__2946_ gnd vdd FILL
X_3665_ ADD[3] _1714__bF$buf3 _1690_ vdd gnd NAND2X1
XFILL_6__2526_ gnd vdd FILL
X_3245_ _901_ _993_ _820_ _821_ vdd gnd AOI21X1
XFILL_6__2106_ gnd vdd FILL
XFILL_0__2920_ gnd vdd FILL
XFILL_2__2938_ gnd vdd FILL
XFILL_0__2500_ gnd vdd FILL
XFILL_2__2518_ gnd vdd FILL
XFILL_0__3705_ gnd vdd FILL
XFILL_3__1802_ gnd vdd FILL
XFILL169050x144150 gnd vdd FILL
XFILL_2__2691_ gnd vdd FILL
XFILL_2__2271_ gnd vdd FILL
XFILL_4__2197_ gnd vdd FILL
XFILL_6__3484_ gnd vdd FILL
XFILL_0__2097_ gnd vdd FILL
XFILL_6__3064_ gnd vdd FILL
XFILL_2__3476_ gnd vdd FILL
XFILL_2__3056_ gnd vdd FILL
X_2936_ _543_ _1182_ _579_ vdd gnd NAND2X1
X_2516_ _1291_ _211_ vdd gnd INVX1
XFILL_1__1893_ gnd vdd FILL
XFILL_7__2440_ gnd vdd FILL
XFILL_3__2760_ gnd vdd FILL
XFILL_3__2340_ gnd vdd FILL
XFILL_5__2686_ gnd vdd FILL
XFILL_5__2266_ gnd vdd FILL
XFILL_1__2678_ gnd vdd FILL
XFILL_7__3645_ gnd vdd FILL
XFILL_1__2258_ gnd vdd FILL
XFILL_7__3225_ gnd vdd FILL
XFILL_3__3545_ gnd vdd FILL
XFILL_3__3125_ gnd vdd FILL
XFILL_6__1970_ gnd vdd FILL
XFILL_2__1962_ gnd vdd FILL
XFILL_4__1888_ gnd vdd FILL
XFILL_0__1788_ gnd vdd FILL
XFILL_6__2755_ gnd vdd FILL
X_3474_ AI[7] _1719_ _1720_ vdd gnd NAND2X1
XFILL_6__2335_ gnd vdd FILL
X_3054_ _667_ _668_ _664_ _669_ vdd gnd OAI21X1
XFILL_2__2747_ gnd vdd FILL
XFILL_2__2327_ gnd vdd FILL
XFILL_4__3614_ gnd vdd FILL
XFILL_0__3514_ gnd vdd FILL
XFILL_5__1957_ gnd vdd FILL
XFILL_1__1949_ gnd vdd FILL
XFILL_7__2916_ gnd vdd FILL
XFILL_2__2080_ gnd vdd FILL
XFILL_3__2816_ gnd vdd FILL
X_1960_ _1076_ _1077_ vdd gnd INVX1
XFILL_6__3293_ gnd vdd FILL
XFILL_2__3285_ gnd vdd FILL
X_2745_ _410_ _401_ RDY_bF$buf0 _412_ vdd gnd OAI21X1
X_2325_ _1297_ _925_ _1432_ vdd gnd NAND2X1
XFILL_5__2495_ gnd vdd FILL
XFILL_5__2075_ gnd vdd FILL
XFILL_1__2487_ gnd vdd FILL
XFILL_7__3454_ gnd vdd FILL
XFILL_1__2067_ gnd vdd FILL
XFILL_5_BUFX2_insert20 gnd vdd FILL
XFILL_5_BUFX2_insert21 gnd vdd FILL
XFILL_5_BUFX2_insert22 gnd vdd FILL
XFILL_5_BUFX2_insert23 gnd vdd FILL
XFILL_5_BUFX2_insert24 gnd vdd FILL
XFILL_5_BUFX2_insert25 gnd vdd FILL
XFILL_2__1771_ gnd vdd FILL
XFILL_6__2984_ gnd vdd FILL
XFILL_6__2564_ gnd vdd FILL
X_3283_ _858_ _855_ _859_ vdd gnd NAND2X1
XFILL_6__2144_ gnd vdd FILL
XFILL_2__2976_ gnd vdd FILL
XFILL_2__2556_ gnd vdd FILL
XFILL_2__2136_ gnd vdd FILL
XFILL_7__1940_ gnd vdd FILL
XFILL_4__3003_ gnd vdd FILL
XFILL_3__1840_ gnd vdd FILL
XFILL_5__1766_ gnd vdd FILL
XFILL_1__1758_ gnd vdd FILL
XFILL_7__2725_ gnd vdd FILL
XFILL_3__2625_ gnd vdd FILL
XFILL_3__2205_ gnd vdd FILL
XFILL_2__3094_ gnd vdd FILL
XFILL_6__1835_ gnd vdd FILL
X_2974_ _550_ _605_ vdd gnd INVX1
X_2554_ _888_ _201_ _244_ _199_ _245_ vdd 
+ gnd
+ OAI22X1
X_2134_ _886__bF$buf6 _930_ _1243_ vdd gnd NOR2X1
XFILL_2__1827_ gnd vdd FILL
X_3339_ _1__bF$buf1 vdd _17_ clk_bF$buf2 PC[15] vdd 
+ gnd
+ DFFSR
XFILL_1__2296_ gnd vdd FILL
XFILL_3__3583_ gnd vdd FILL
XFILL_3__3163_ gnd vdd FILL
XFILL_5__3089_ gnd vdd FILL
XFILL_6__2793_ gnd vdd FILL
XFILL_6__2373_ gnd vdd FILL
X_3092_ write_back _1027__bF$buf1 _702_ vdd gnd NOR2X1
XFILL_2__2785_ gnd vdd FILL
XFILL_2__2365_ gnd vdd FILL
X_1825_ _950_ _947_ _951_ vdd gnd NOR2X1
XFILL_4__3652_ gnd vdd FILL
XFILL_4__3232_ gnd vdd FILL
XFILL_6__3578_ gnd vdd FILL
XFILL_6__3158_ gnd vdd FILL
XFILL_0__3552_ gnd vdd FILL
XFILL_0__3132_ gnd vdd FILL
XFILL_5__1995_ gnd vdd FILL
XFILL_1__1987_ gnd vdd FILL
XFILL_7__2954_ gnd vdd FILL
XFILL_7__2114_ gnd vdd FILL
XFILL_3__2854_ gnd vdd FILL
XFILL_3__2434_ gnd vdd FILL
XFILL_3__2014_ gnd vdd FILL
XFILL_5__3301_ gnd vdd FILL
XFILL_1__3713_ gnd vdd FILL
XFILL_3__3639_ gnd vdd FILL
XFILL_3__3219_ gnd vdd FILL
X_2783_ _1110_ _445_ _446_ _447_ vdd gnd NAND3X1
X_2363_ RDY_bF$buf6 _1467_ _1468_ _1469_ vdd gnd OAI21X1
XFILL_4__2923_ gnd vdd FILL
XFILL_4__2503_ gnd vdd FILL
XFILL_6__2849_ gnd vdd FILL
X_3568_ _1557_ _1597_ _1561_ _1598_ vdd gnd OAI21X1
XFILL_6__2429_ gnd vdd FILL
XFILL_6__2009_ gnd vdd FILL
X_3148_ _752_ _751_ _753_ vdd gnd NOR2X1
XFILL_7__3492_ gnd vdd FILL
XFILL_7__3072_ gnd vdd FILL
XFILL_0__2823_ gnd vdd FILL
XFILL_0__2403_ gnd vdd FILL
XFILL_4__3708_ gnd vdd FILL
XFILL_7__1805_ gnd vdd FILL
XFILL_0__3608_ gnd vdd FILL
XFILL_6__2182_ gnd vdd FILL
XFILL_2__2594_ gnd vdd FILL
XFILL_2__2174_ gnd vdd FILL
XFILL_4__3461_ gnd vdd FILL
XFILL_4__3041_ gnd vdd FILL
XFILL_6_BUFX2_insert70 gnd vdd FILL
XFILL_6_BUFX2_insert71 gnd vdd FILL
XFILL_6_BUFX2_insert72 gnd vdd FILL
XFILL_6_BUFX2_insert73 gnd vdd FILL
XFILL_6_BUFX2_insert74 gnd vdd FILL
XFILL_6_BUFX2_insert75 gnd vdd FILL
XFILL_6_BUFX2_insert76 gnd vdd FILL
XFILL_6_BUFX2_insert77 gnd vdd FILL
XFILL_6_BUFX2_insert78 gnd vdd FILL
XFILL_6_BUFX2_insert79 gnd vdd FILL
X_2839_ _465_ _495_ _500_ vdd gnd NOR2X1
X_2419_ _1507_ _127_ _118_ _1512_[5] vdd gnd NAND3X1
XFILL_1__1796_ gnd vdd FILL
XFILL_7__2343_ gnd vdd FILL
XFILL_3__2663_ gnd vdd FILL
XFILL_3__2243_ gnd vdd FILL
XFILL_5__2589_ gnd vdd FILL
XFILL_5__2169_ gnd vdd FILL
XFILL_5__3530_ gnd vdd FILL
XFILL_7__3548_ gnd vdd FILL
XFILL_7__3128_ gnd vdd FILL
XFILL_5__3110_ gnd vdd FILL
XFILL_1__3522_ gnd vdd FILL
XFILL_1__3102_ gnd vdd FILL
XFILL_3__3028_ gnd vdd FILL
XFILL_6__1873_ gnd vdd FILL
X_2592_ _1091_ _270_ _277_ _278_ vdd gnd OAI21X1
X_2172_ _1207_ _1206_ RDY_bF$buf8 _1281_ vdd gnd OAI21X1
XFILL_2__1865_ gnd vdd FILL
XFILL_4__2732_ gnd vdd FILL
XFILL_4__2312_ gnd vdd FILL
XFILL_6__2658_ gnd vdd FILL
X_3377_ _1__bF$buf4 vdd DIMUX[2] clk_bF$buf5 DIHOLD[2] vdd 
+ gnd
+ DFFSR
XFILL_6__2238_ gnd vdd FILL
XFILL_0__2632_ gnd vdd FILL
XFILL_0__2212_ gnd vdd FILL
XFILL_4__3517_ gnd vdd FILL
XFILL_3__1934_ gnd vdd FILL
XFILL_7__2819_ gnd vdd FILL
XFILL_5__2801_ gnd vdd FILL
XFILL_3__2719_ gnd vdd FILL
X_1863_ _902__bF$buf2 _928_ _988_ vdd gnd NOR2X1
XFILL_4__3270_ gnd vdd FILL
XFILL_6__3196_ gnd vdd FILL
XFILL_0__3590_ gnd vdd FILL
XFILL_0__3170_ gnd vdd FILL
XFILL_2__3188_ gnd vdd FILL
XFILL_6__1929_ gnd vdd FILL
X_2648_ _1027__bF$buf4 _1167_ _323_ vdd gnd NOR2X1
X_2228_ RDY_bF$buf6 _1334_ _1335_ _1336_ vdd gnd OAI21X1
XFILL_7__2572_ gnd vdd FILL
XFILL_0__1903_ gnd vdd FILL
XFILL_3__2892_ gnd vdd FILL
XFILL_3__2472_ gnd vdd FILL
XFILL_3__2052_ gnd vdd FILL
XFILL_5__2398_ gnd vdd FILL
XFILL_3__3677_ gnd vdd FILL
XFILL_3__3257_ gnd vdd FILL
XFILL_4__2961_ gnd vdd FILL
XFILL_4__2541_ gnd vdd FILL
XFILL_4__2121_ gnd vdd FILL
XFILL_6__2887_ gnd vdd FILL
XFILL_6__2467_ gnd vdd FILL
X_3186_ DIMUX[7] _1319__bF$buf1 _786_ _787_ vdd gnd AOI21X1
XFILL_6__2047_ gnd vdd FILL
XFILL_0__2861_ gnd vdd FILL
XFILL_2__2879_ gnd vdd FILL
XFILL_2__2459_ gnd vdd FILL
XFILL_0__2441_ gnd vdd FILL
XFILL_2__2039_ gnd vdd FILL
XFILL_0__2021_ gnd vdd FILL
X_1919_ _1035_ _1026_ _1036_ vdd gnd NAND2X1
XFILL_7__1843_ gnd vdd FILL
XFILL_0__3646_ gnd vdd FILL
XFILL_0__3226_ gnd vdd FILL
XFILL_5__2610_ gnd vdd FILL
XFILL_7__2208_ gnd vdd FILL
XFILL_1__2602_ gnd vdd FILL
XFILL_3__2948_ gnd vdd FILL
XFILL_3__2528_ gnd vdd FILL
XFILL_3__2108_ gnd vdd FILL
XFILL_4__1812_ gnd vdd FILL
X_2877_ _1367_ _531_ _532_ vdd gnd NAND2X1
X_2457_ _143_ _1090_ _158_ _1742_[1] vdd gnd OAI21X1
X_2037_ _893_ _983_ _1146_ _1147_ vdd gnd OAI21X1
XFILL_3__2281_ gnd vdd FILL
XFILL_1__2199_ gnd vdd FILL
XFILL_0__2917_ gnd vdd FILL
XFILL_1__3560_ gnd vdd FILL
XFILL_1__3140_ gnd vdd FILL
XFILL_3__3486_ gnd vdd FILL
XFILL_3__3066_ gnd vdd FILL
XFILL_4__2770_ gnd vdd FILL
XFILL_4__2350_ gnd vdd FILL
XFILL_6__2696_ gnd vdd FILL
XFILL_6__2276_ gnd vdd FILL
XFILL_2__2688_ gnd vdd FILL
XFILL_0__2670_ gnd vdd FILL
XFILL_2__2268_ gnd vdd FILL
XFILL_0__2250_ gnd vdd FILL
XFILL_4__3555_ gnd vdd FILL
XFILL_4__3135_ gnd vdd FILL
XFILL_3__1972_ gnd vdd FILL
XFILL_0__3455_ gnd vdd FILL
XFILL_0__3035_ gnd vdd FILL
XFILL_5__1898_ gnd vdd FILL
XFILL_7__2857_ gnd vdd FILL
XFILL_7__2437_ gnd vdd FILL
XFILL_7__2017_ gnd vdd FILL
XFILL_1__2831_ gnd vdd FILL
XFILL_1__2411_ gnd vdd FILL
XFILL_3__2757_ gnd vdd FILL
XFILL_3__2337_ gnd vdd FILL
XFILL_5__3624_ gnd vdd FILL
XFILL_5__3204_ gnd vdd FILL
XFILL_1__3616_ gnd vdd FILL
XFILL_6__1967_ gnd vdd FILL
X_2686_ _357_ _354_ _358_ vdd gnd NOR2X1
X_2266_ V _1374_ vdd gnd INVX1
XFILL_7__2190_ gnd vdd FILL
XFILL_0__1941_ gnd vdd FILL
XFILL_2__1959_ gnd vdd FILL
XFILL_3__2090_ gnd vdd FILL
XFILL_2__2900_ gnd vdd FILL
XFILL_4__2826_ gnd vdd FILL
XFILL_4__2406_ gnd vdd FILL
XFILL_0__2726_ gnd vdd FILL
XFILL_0__2306_ gnd vdd FILL
XFILL_3__3295_ gnd vdd FILL
XFILL_6__2085_ gnd vdd FILL
XFILL_2__2497_ gnd vdd FILL
XFILL_2__2077_ gnd vdd FILL
X_1957_ _1073_ _1074_ vdd gnd INVX2
XFILL_3__1781_ gnd vdd FILL
XFILL_0__3264_ gnd vdd FILL
XFILL_7__2666_ gnd vdd FILL
XFILL_7__2246_ gnd vdd FILL
XFILL_1__2640_ gnd vdd FILL
XFILL_1__2220_ gnd vdd FILL
XFILL_3__2986_ gnd vdd FILL
XFILL_3__2566_ gnd vdd FILL
XFILL_3__2146_ gnd vdd FILL
XFILL_5__3013_ gnd vdd FILL
XFILL_1__3005_ gnd vdd FILL
XFILL_4__1850_ gnd vdd FILL
XFILL_6__1776_ gnd vdd FILL
X_2495_ _1377_ _165_ _190_ _191_ vdd gnd OAI21X1
X_2075_ IRHOLD_valid _893_ _1183_ _1184_ vdd gnd OAI21X1
XFILL_0__1750_ gnd vdd FILL
XFILL_2__1768_ gnd vdd FILL
XFILL_4__2635_ gnd vdd FILL
XFILL_4__2215_ gnd vdd FILL
XFILL_0__2955_ gnd vdd FILL
XFILL_0__2535_ gnd vdd FILL
XFILL_6__3502_ gnd vdd FILL
XFILL_0__2115_ gnd vdd FILL
XFILL_7__1937_ gnd vdd FILL
XFILL_1__1911_ gnd vdd FILL
XFILL_3__1837_ gnd vdd FILL
XFILL_5__2704_ gnd vdd FILL
X_1766_ DI[7] DIHOLD[7] RDY_bF$buf7 _893_ vdd gnd MUX2X1
XFILL_4__3593_ gnd vdd FILL
XFILL_4__3173_ gnd vdd FILL
XFILL_6__3099_ gnd vdd FILL
XFILL_0__3493_ gnd vdd FILL
XFILL_0__3073_ gnd vdd FILL
XFILL_4__1906_ gnd vdd FILL
XFILL_7__2895_ gnd vdd FILL
XFILL_7__2475_ gnd vdd FILL
XFILL_7__2055_ gnd vdd FILL
XFILL_0__1806_ gnd vdd FILL
XFILL_3__2795_ gnd vdd FILL
XFILL_3__2375_ gnd vdd FILL
XFILL_5__3662_ gnd vdd FILL
XFILL_5__3242_ gnd vdd FILL
XFILL_1__3654_ gnd vdd FILL
XFILL_1__3234_ gnd vdd FILL
XFILL_2__1997_ gnd vdd FILL
XFILL_4__2864_ gnd vdd FILL
XFILL_4__2444_ gnd vdd FILL
XFILL_4__2024_ gnd vdd FILL
X_3089_ _699_ _1006_ _956_ _700_ vdd gnd MUX2X1
XFILL_0__2764_ gnd vdd FILL
XFILL_0__2344_ gnd vdd FILL
XFILL_6__3311_ gnd vdd FILL
XFILL_2__3303_ gnd vdd FILL
XFILL_4__3649_ gnd vdd FILL
XFILL_4__3229_ gnd vdd FILL
XFILL_0__3549_ gnd vdd FILL
XFILL_0__3129_ gnd vdd FILL
XFILL_5__2933_ gnd vdd FILL
XFILL_5__2513_ gnd vdd FILL
XFILL_1__2925_ gnd vdd FILL
XFILL_1__2505_ gnd vdd FILL
X_1995_ _1108_ _1109_ vdd gnd INVX1
X_3301_ _855_ _858_ _886__bF$buf3 _869_ vdd gnd AOI21X1
XFILL_3__2184_ gnd vdd FILL
XFILL_5__3471_ gnd vdd FILL
XFILL_5__3051_ gnd vdd FILL
XFILL_7__3069_ gnd vdd FILL
XFILL_1__3463_ gnd vdd FILL
XFILL_1__3043_ gnd vdd FILL
XFILL_4__2673_ gnd vdd FILL
XFILL_4__2253_ gnd vdd FILL
XFILL_6__2599_ gnd vdd FILL
XFILL_6__2179_ gnd vdd FILL
XFILL168150x158550 gnd vdd FILL
XFILL_0__2993_ gnd vdd FILL
XFILL_0__2573_ gnd vdd FILL
XFILL_6__3540_ gnd vdd FILL
XFILL_0__2153_ gnd vdd FILL
XFILL_6__3120_ gnd vdd FILL
XFILL_2__3532_ gnd vdd FILL
XFILL_2__3112_ gnd vdd FILL
XFILL_4__3458_ gnd vdd FILL
XFILL_4__3038_ gnd vdd FILL
XFILL_3__1875_ gnd vdd FILL
XFILL_5__2742_ gnd vdd FILL
XFILL_5__2322_ gnd vdd FILL
XFILL_1__2734_ gnd vdd FILL
XFILL_1__2314_ gnd vdd FILL
XFILL_3__3601_ gnd vdd FILL
XFILL_5__3527_ gnd vdd FILL
XFILL_5__3107_ gnd vdd FILL
XFILL_1__3519_ gnd vdd FILL
XFILL_4__1944_ gnd vdd FILL
X_2589_ _268_ _218_ _275_ _1741_[8] vdd gnd OAI21X1
X_2169_ _1277_ _1274_ _1278_ vdd gnd NAND2X1
XFILL_7__2093_ gnd vdd FILL
XFILL_0__1844_ gnd vdd FILL
XFILL_6__2811_ gnd vdd FILL
X_3530_ _1553_ _1558_ _1559_ _1560_ vdd gnd AOI21X1
X_3110_ _204_ _717_ _1022_ _718_ vdd gnd NAND3X1
XFILL_2__2803_ gnd vdd FILL
XFILL_4__2729_ gnd vdd FILL
XFILL_4__2309_ gnd vdd FILL
XFILL_7__3298_ gnd vdd FILL
XFILL_5__3280_ gnd vdd FILL
XFILL_0__2629_ gnd vdd FILL
XFILL_0__2209_ gnd vdd FILL
XFILL_1__3692_ gnd vdd FILL
XFILL_1__3272_ gnd vdd FILL
XFILL_3__3198_ gnd vdd FILL
XFILL_4__2482_ gnd vdd FILL
XFILL_4__2062_ gnd vdd FILL
XFILL_0__2382_ gnd vdd FILL
XFILL_7__1784_ gnd vdd FILL
XFILL_4__3267_ gnd vdd FILL
X_2801_ _290_ _352_ _464_ vdd gnd NOR2X1
XFILL_0__3587_ gnd vdd FILL
XFILL_0__3167_ gnd vdd FILL
XFILL167850x75750 gnd vdd FILL
XFILL_5__2971_ gnd vdd FILL
XFILL_7__2569_ gnd vdd FILL
XFILL_5__2551_ gnd vdd FILL
XFILL_5__2131_ gnd vdd FILL
XFILL_1__2963_ gnd vdd FILL
XFILL_1__2543_ gnd vdd FILL
XFILL_1__2123_ gnd vdd FILL
XFILL_3__2889_ gnd vdd FILL
XFILL_3__2469_ gnd vdd FILL
XFILL_3__2049_ gnd vdd FILL
XFILL_4__1753_ gnd vdd FILL
X_2398_ _1369_ _1502_ _1503_ vdd gnd NOR2X1
XFILL_6__2620_ gnd vdd FILL
XFILL_6__2200_ gnd vdd FILL
XFILL_2__2612_ gnd vdd FILL
XFILL_4__2958_ gnd vdd FILL
XFILL_4__2538_ gnd vdd FILL
XFILL_4__2118_ gnd vdd FILL
XFILL_0__2858_ gnd vdd FILL
XFILL_0__2438_ gnd vdd FILL
XFILL_0__2018_ gnd vdd FILL
XFILL_1__3081_ gnd vdd FILL
XFILL_5__1822_ gnd vdd FILL
XFILL_1__1814_ gnd vdd FILL
XFILL_4__2291_ gnd vdd FILL
XFILL_5__2607_ gnd vdd FILL
XFILL_0__2191_ gnd vdd FILL
XFILL_2__3570_ gnd vdd FILL
XFILL_2__3150_ gnd vdd FILL
XFILL_4__3496_ gnd vdd FILL
XFILL_4__3076_ gnd vdd FILL
X_2610_ _291_ _270_ _292_ _293_ vdd gnd OAI21X1
XFILL_4__1809_ gnd vdd FILL
XFILL_5__2780_ gnd vdd FILL
XFILL_7__2798_ gnd vdd FILL
XFILL_5__2360_ gnd vdd FILL
XFILL_1__2772_ gnd vdd FILL
XFILL_1__2352_ gnd vdd FILL
XFILL_3__2698_ gnd vdd FILL
XFILL_3__2278_ gnd vdd FILL
XFILL_5__3565_ gnd vdd FILL
XFILL_5__3145_ gnd vdd FILL
XFILL_1__3557_ gnd vdd FILL
XFILL_1__3137_ gnd vdd FILL
XFILL_4__1982_ gnd vdd FILL
XFILL_0__1882_ gnd vdd FILL
XFILL_2__2841_ gnd vdd FILL
XFILL_2__2421_ gnd vdd FILL
XFILL_2__2001_ gnd vdd FILL
XFILL_4__2767_ gnd vdd FILL
XFILL_4__2347_ gnd vdd FILL
XFILL_0__2667_ gnd vdd FILL
XFILL_6__3634_ gnd vdd FILL
XFILL_0__2247_ gnd vdd FILL
XFILL_6__3214_ gnd vdd FILL
XFILL_2__3626_ gnd vdd FILL
XFILL_2__3206_ gnd vdd FILL
XFILL_3__1969_ gnd vdd FILL
XFILL_3__2910_ gnd vdd FILL
XFILL_5__2836_ gnd vdd FILL
XFILL_5__2416_ gnd vdd FILL
XFILL_1__2828_ gnd vdd FILL
XFILL_1__2408_ gnd vdd FILL
X_1898_ PC[7] _1016_ vdd gnd INVX2
XFILL_7__2187_ gnd vdd FILL
XFILL_0__1938_ gnd vdd FILL
XFILL_6__2905_ gnd vdd FILL
X_3624_ _1653_ _1654_ vdd gnd INVX1
X_3204_ _720__bF$buf1 _687_ _AXYS[1]_[7] _797_ vdd gnd OAI21X1
XFILL_1__2581_ gnd vdd FILL
XFILL_1__2161_ gnd vdd FILL
XFILL_3__2087_ gnd vdd FILL
XFILL_4__1791_ gnd vdd FILL
XFILL_2__2650_ gnd vdd FILL
XFILL_2__2230_ gnd vdd FILL
XFILL_4__2996_ gnd vdd FILL
XFILL_4__2576_ gnd vdd FILL
XFILL_4__2156_ gnd vdd FILL
XFILL_0__2896_ gnd vdd FILL
XFILL_0__2476_ gnd vdd FILL
XFILL_0__2056_ gnd vdd FILL
XFILL_6__3023_ gnd vdd FILL
XFILL_2__3015_ gnd vdd FILL
XFILL_5__1860_ gnd vdd FILL
XFILL_1__1852_ gnd vdd FILL
XFILL_3__1778_ gnd vdd FILL
XFILL_5__2645_ gnd vdd FILL
XFILL_5__2225_ gnd vdd FILL
XFILL_1__2637_ gnd vdd FILL
XFILL_7__3604_ gnd vdd FILL
XFILL_1__2217_ gnd vdd FILL
XFILL_3__3504_ gnd vdd FILL
XFILL_2__1921_ gnd vdd FILL
XFILL_4__1847_ gnd vdd FILL
XFILL_0__1747_ gnd vdd FILL
XFILL_6__2714_ gnd vdd FILL
X_3433_ _1__bF$buf5 vdd _101_ clk_bF$buf1 ABL[0] vdd 
+ gnd
+ DFFSR
X_3013_ _638_ _609_ _639_ vdd gnd NAND2X1
XFILL_1__2390_ gnd vdd FILL
XFILL_2__2706_ gnd vdd FILL
XFILL_1_BUFX2_insert40 gnd vdd FILL
XFILL_1_BUFX2_insert41 gnd vdd FILL
XFILL_1_BUFX2_insert42 gnd vdd FILL
XFILL_1_BUFX2_insert43 gnd vdd FILL
XFILL_5__3183_ gnd vdd FILL
XFILL_1_BUFX2_insert44 gnd vdd FILL
XFILL_1_BUFX2_insert45 gnd vdd FILL
XFILL_1_BUFX2_insert46 gnd vdd FILL
XFILL_1_BUFX2_insert47 gnd vdd FILL
XFILL_1_BUFX2_insert48 gnd vdd FILL
XFILL_1_BUFX2_insert49 gnd vdd FILL
XFILL_1__3595_ gnd vdd FILL
XFILL_1__3175_ gnd vdd FILL
XFILL_5__1916_ gnd vdd FILL
XFILL_0_CLKBUF1_insert26 gnd vdd FILL
XFILL_0_CLKBUF1_insert27 gnd vdd FILL
XFILL_0_CLKBUF1_insert28 gnd vdd FILL
XFILL_0_CLKBUF1_insert29 gnd vdd FILL
XFILL_1__1908_ gnd vdd FILL
XFILL_4__2385_ gnd vdd FILL
XFILL_6__3672_ gnd vdd FILL
XFILL_0__2285_ gnd vdd FILL
XFILL_6__3252_ gnd vdd FILL
XFILL_2__3664_ gnd vdd FILL
XFILL_2__3244_ gnd vdd FILL
X_2704_ _370_ _374_ _375_ vdd gnd AND2X2
XFILL_5__2874_ gnd vdd FILL
XFILL_5__2454_ gnd vdd FILL
XFILL_5__2034_ gnd vdd FILL
XFILL_1__2866_ gnd vdd FILL
XFILL_1__2446_ gnd vdd FILL
XFILL_1__2026_ gnd vdd FILL
XFILL_3__3313_ gnd vdd FILL
XFILL_5__3659_ gnd vdd FILL
XFILL_5__3239_ gnd vdd FILL
XFILL_0__1976_ gnd vdd FILL
XFILL_6__2943_ gnd vdd FILL
X_3662_ _1714__bF$buf1 _1623_ _1688_ _1518_ vdd gnd OAI21X1
XFILL_6__2523_ gnd vdd FILL
XFILL_6__2103_ gnd vdd FILL
X_3242_ _931__bF$buf1 _928_ _1027__bF$buf1 _818_ vdd gnd OAI21X1
XFILL_2__2935_ gnd vdd FILL
XFILL_2__2515_ gnd vdd FILL
XFILL_6__3308_ gnd vdd FILL
XFILL_0__3702_ gnd vdd FILL
XFILL_4__2194_ gnd vdd FILL
XFILL_6__3481_ gnd vdd FILL
XFILL_0__2094_ gnd vdd FILL
XFILL_6__3061_ gnd vdd FILL
XFILL_2__3473_ gnd vdd FILL
XFILL_2__3053_ gnd vdd FILL
X_2933_ _1327_ _1395_ _576_ vdd gnd NAND2X1
X_2513_ _1464_ _207_ _208_ vdd gnd NOR2X1
XFILL_1__1890_ gnd vdd FILL
XFILL_0__3299_ gnd vdd FILL
XFILL_5__2683_ gnd vdd FILL
XFILL_5__2263_ gnd vdd FILL
XFILL_1__2675_ gnd vdd FILL
XFILL_7__3642_ gnd vdd FILL
XFILL_1__2255_ gnd vdd FILL
XFILL_7__3222_ gnd vdd FILL
XFILL_3__3542_ gnd vdd FILL
XFILL_3__3122_ gnd vdd FILL
XFILL_5__3468_ gnd vdd FILL
XFILL_5__3048_ gnd vdd FILL
XFILL_4__1885_ gnd vdd FILL
XFILL_0__1785_ gnd vdd FILL
XFILL_6__2752_ gnd vdd FILL
X_3471_ alu_op[0] _1716_ _1717_ vdd gnd NAND2X1
XFILL_6__2332_ gnd vdd FILL
X_3051_ plp ADD[6] _666_ vdd gnd NAND2X1
XFILL_2__2744_ gnd vdd FILL
XFILL_2__2324_ gnd vdd FILL
XFILL169650x158550 gnd vdd FILL
XFILL_4__3611_ gnd vdd FILL
XFILL_6__3537_ gnd vdd FILL
XFILL_6__3117_ gnd vdd FILL
XFILL_2__3529_ gnd vdd FILL
XFILL_0__3511_ gnd vdd FILL
XFILL_2__3109_ gnd vdd FILL
XFILL_5__1954_ gnd vdd FILL
XFILL_1__1946_ gnd vdd FILL
XFILL_3__2813_ gnd vdd FILL
XFILL_5__2739_ gnd vdd FILL
XFILL_5__2319_ gnd vdd FILL
XFILL_6__3290_ gnd vdd FILL
XFILL_2__3282_ gnd vdd FILL
X_2742_ _268_ _352_ _408_ _409_ vdd gnd OAI21X1
X_2322_ _1426_ _1428_ _1425_ _1429_ vdd gnd NAND3X1
XFILL_5__2492_ gnd vdd FILL
XFILL_5__2072_ gnd vdd FILL
XFILL_6__2808_ gnd vdd FILL
X_3527_ _1722_ _1539_ _1556_ _1552_ _1557_ vdd 
+ gnd
+ OAI22X1
X_3107_ RDY_bF$buf9 DI[7] _716_ vdd gnd NAND2X1
XFILL_1__2484_ gnd vdd FILL
XFILL_7__3451_ gnd vdd FILL
XFILL_1__2064_ gnd vdd FILL
XFILL_5__3697_ gnd vdd FILL
XFILL_5__3277_ gnd vdd FILL
XFILL_1__3269_ gnd vdd FILL
XFILL_6__2981_ gnd vdd FILL
XFILL_6__2561_ gnd vdd FILL
X_3280_ _903__bF$buf0 _969_ _977_ _856_ vdd gnd OAI21X1
XFILL_6__2141_ gnd vdd FILL
XFILL_2__2973_ gnd vdd FILL
XFILL_2__2553_ gnd vdd FILL
XFILL_2__2133_ gnd vdd FILL
XFILL_4__2899_ gnd vdd FILL
XFILL_4__2479_ gnd vdd FILL
XFILL_4__2059_ gnd vdd FILL
XFILL_4__3000_ gnd vdd FILL
XFILL_0__2799_ gnd vdd FILL
XFILL_0__2379_ gnd vdd FILL
XFILL_5__1763_ gnd vdd FILL
XFILL_1__1755_ gnd vdd FILL
XFILL_7__2722_ gnd vdd FILL
XFILL_3__2622_ gnd vdd FILL
XFILL_3__2202_ gnd vdd FILL
XFILL_5__2968_ gnd vdd FILL
XFILL_5__2548_ gnd vdd FILL
XFILL_5__2128_ gnd vdd FILL
XFILL_2__3091_ gnd vdd FILL
XFILL_6__1832_ gnd vdd FILL
X_2971_ _1172_ _1214_ _603_ vdd gnd NOR2X1
X_2551_ _242_ _1741_[3] vdd gnd INVX1
X_2131_ _1239_ _1237_ _1240_ vdd gnd NOR2X1
XFILL_2__1824_ gnd vdd FILL
XFILL_6__2617_ gnd vdd FILL
X_3336_ _1__bF$buf1 vdd _14_ clk_bF$buf2 PC[12] vdd 
+ gnd
+ DFFSR
XFILL_1__2293_ gnd vdd FILL
XFILL_2__2609_ gnd vdd FILL
XFILL_3__3580_ gnd vdd FILL
XFILL_3__3160_ gnd vdd FILL
XFILL_5__3086_ gnd vdd FILL
XFILL_1__3498_ gnd vdd FILL
XFILL_1__3078_ gnd vdd FILL
XFILL_5__1819_ gnd vdd FILL
XFILL_6__2790_ gnd vdd FILL
XFILL_6__2370_ gnd vdd FILL
XFILL_2__2782_ gnd vdd FILL
XFILL_2__2362_ gnd vdd FILL
XFILL_4__2288_ gnd vdd FILL
X_1822_ state[0] _905_ _948_ vdd gnd NOR2X1
XFILL_6__3575_ gnd vdd FILL
XFILL_0__2188_ gnd vdd FILL
XFILL_6__3155_ gnd vdd FILL
XFILL_2__3567_ gnd vdd FILL
XFILL_2__3147_ gnd vdd FILL
XFILL_5__1992_ gnd vdd FILL
X_2607_ PC[12] _290_ vdd gnd INVX1
XFILL_1__1984_ gnd vdd FILL
XFILL_7__2951_ gnd vdd FILL
XFILL_7__2111_ gnd vdd FILL
XFILL169350x144150 gnd vdd FILL
XFILL_3__2851_ gnd vdd FILL
XFILL_3__2431_ gnd vdd FILL
XFILL_3__2011_ gnd vdd FILL
XFILL_5__2777_ gnd vdd FILL
XFILL_5__2357_ gnd vdd FILL
XFILL_1__2769_ gnd vdd FILL
XFILL_1__2349_ gnd vdd FILL
XFILL_1__3710_ gnd vdd FILL
XFILL_3__3636_ gnd vdd FILL
XFILL_3__3216_ gnd vdd FILL
X_2780_ RDY_bF$buf4 _280_ _444_ _439_ _12_ vdd 
+ gnd
+ OAI22X1
X_2360_ _1463_ _1465_ _1466_ vdd gnd AND2X2
XFILL_4__1979_ gnd vdd FILL
XFILL_4__2920_ gnd vdd FILL
XFILL_4__2500_ gnd vdd FILL
XFILL_0__1879_ gnd vdd FILL
XFILL_6__2846_ gnd vdd FILL
X_3565_ _1594_ _1593_ _1571_ _1595_ vdd gnd OAI21X1
XFILL_6__2426_ gnd vdd FILL
XFILL_6__2006_ gnd vdd FILL
X_3145_ _748_ _749_ _750_ vdd gnd NAND2X1
XFILL_2__2838_ gnd vdd FILL
XFILL_0__2820_ gnd vdd FILL
XFILL_2__2418_ gnd vdd FILL
XFILL_0__2400_ gnd vdd FILL
XFILL_4__3705_ gnd vdd FILL
XFILL_0__3605_ gnd vdd FILL
XFILL_2__2591_ gnd vdd FILL
XFILL_2__2171_ gnd vdd FILL
XFILL_4__2097_ gnd vdd FILL
XFILL_3__2907_ gnd vdd FILL
XFILL_6_BUFX2_insert40 gnd vdd FILL
XFILL_6_BUFX2_insert41 gnd vdd FILL
XFILL_6_BUFX2_insert42 gnd vdd FILL
XFILL_6_BUFX2_insert43 gnd vdd FILL
XFILL_6_BUFX2_insert44 gnd vdd FILL
XFILL_6_BUFX2_insert45 gnd vdd FILL
XFILL_6_BUFX2_insert46 gnd vdd FILL
XFILL_6_BUFX2_insert47 gnd vdd FILL
XFILL_6_BUFX2_insert48 gnd vdd FILL
XFILL_6_BUFX2_insert49 gnd vdd FILL
X_2836_ _465_ _497_ _485_ _498_ vdd gnd NOR3X1
X_2416_ _121_ _124_ _125_ vdd gnd NOR2X1
XFILL_1__1793_ gnd vdd FILL
XFILL_7__2340_ gnd vdd FILL
XFILL_3__2660_ gnd vdd FILL
XFILL_3__2240_ gnd vdd FILL
XFILL_5__2586_ gnd vdd FILL
XFILL_5__2166_ gnd vdd FILL
XFILL_1__2998_ gnd vdd FILL
XFILL_1__2578_ gnd vdd FILL
XFILL_7__3545_ gnd vdd FILL
XFILL_1__2158_ gnd vdd FILL
XFILL_7__3125_ gnd vdd FILL
XFILL_3__3025_ gnd vdd FILL
XFILL_6__1870_ gnd vdd FILL
XFILL_2__1862_ gnd vdd FILL
XFILL_4__1788_ gnd vdd FILL
XFILL_6__2655_ gnd vdd FILL
X_3374_ _1__bF$buf2 vdd _51_ clk_bF$buf10 load_reg vdd 
+ gnd
+ DFFSR
XFILL_6__2235_ gnd vdd FILL
XFILL_2__2647_ gnd vdd FILL
XFILL_2__2227_ gnd vdd FILL
XFILL_4__3514_ gnd vdd FILL
XFILL_3__1931_ gnd vdd FILL
XFILL_5__1857_ gnd vdd FILL
XFILL_1__1849_ gnd vdd FILL
XFILL_7__2816_ gnd vdd FILL
XFILL_3__2716_ gnd vdd FILL
X_1860_ _914__bF$buf4 _984_ _983_ _985_ vdd gnd OAI21X1
XFILL_6__3193_ gnd vdd FILL
XFILL_2__3185_ gnd vdd FILL
XFILL_6__1926_ gnd vdd FILL
X_2645_ _1432_ _316_ _319_ _320_ vdd gnd NAND3X1
X_2225_ _886__bF$buf1 _943_ _1332_ _1330_ _1333_ vdd 
+ gnd
+ AOI22X1
XFILL_2__1918_ gnd vdd FILL
XFILL_0__1900_ gnd vdd FILL
XFILL_5__2395_ gnd vdd FILL
XFILL_1__2387_ gnd vdd FILL
XFILL_3__3674_ gnd vdd FILL
XFILL_3__3254_ gnd vdd FILL
XFILL_6__2884_ gnd vdd FILL
XFILL_6__2464_ gnd vdd FILL
X_3183_ _783_ _784_ vdd gnd INVX1
XFILL_6__2044_ gnd vdd FILL
XFILL_2__2876_ gnd vdd FILL
XFILL_2__2456_ gnd vdd FILL
XFILL_2__2036_ gnd vdd FILL
X_1916_ _914__bF$buf0 _942_ _1032_ _1033_ vdd gnd OAI21X1
XFILL_7__1840_ gnd vdd FILL
XFILL_6__3669_ gnd vdd FILL
XFILL_6__3249_ gnd vdd FILL
XFILL_0__3643_ gnd vdd FILL
XFILL_0__3223_ gnd vdd FILL
XFILL_7__2625_ gnd vdd FILL
XFILL_3__2945_ gnd vdd FILL
XFILL_3__2525_ gnd vdd FILL
XFILL_3__2105_ gnd vdd FILL
X_2874_ plp _529_ vdd gnd INVX1
X_2454_ PC[1] _1080_ _144_ ADD[1] _156_ vdd 
+ gnd
+ AOI22X1
X_2034_ ABH[7] _1144_ vdd gnd INVX1
X_3659_ _1612_ _1686_ RDY_bF$buf9 _1687_ vdd gnd OAI21X1
X_3239_ _720__bF$buf3 _808_ _AXYS[3]_[7] _816_ vdd gnd OAI21X1
XFILL_7__3583_ gnd vdd FILL
XFILL_1__2196_ gnd vdd FILL
XFILL_0__2914_ gnd vdd FILL
XFILL_3__3483_ gnd vdd FILL
XFILL_3__3063_ gnd vdd FILL
XFILL_6__2693_ gnd vdd FILL
XFILL_6__2273_ gnd vdd FILL
XFILL_2__2685_ gnd vdd FILL
XFILL_2__2265_ gnd vdd FILL
XFILL_4__3552_ gnd vdd FILL
XFILL_4__3132_ gnd vdd FILL
XFILL_6__3478_ gnd vdd FILL
XFILL_6__3058_ gnd vdd FILL
XFILL169650x18150 gnd vdd FILL
XFILL_0__3452_ gnd vdd FILL
XFILL_0__3032_ gnd vdd FILL
XFILL_5__1895_ gnd vdd FILL
XFILL_1__1887_ gnd vdd FILL
XFILL_7__2854_ gnd vdd FILL
XFILL_7__2014_ gnd vdd FILL
XFILL_3__2754_ gnd vdd FILL
XFILL_3__2334_ gnd vdd FILL
XFILL_5__3621_ gnd vdd FILL
XFILL_5__3201_ gnd vdd FILL
XFILL_7__3219_ gnd vdd FILL
XFILL_1__3613_ gnd vdd FILL
XFILL_3__3539_ gnd vdd FILL
XFILL_3__3119_ gnd vdd FILL
XFILL_6__1964_ gnd vdd FILL
X_2683_ ADD[3] _355_ vdd gnd INVX1
X_2263_ _1150__bF$buf3 _1365_ _1370_ _1371_ vdd gnd NAND3X1
XFILL_2__1956_ gnd vdd FILL
XFILL_4__2823_ gnd vdd FILL
XFILL_4__2403_ gnd vdd FILL
XFILL_6__2749_ gnd vdd FILL
X_3468_ RDY_bF$buf7 _1714_ vdd gnd INVX4
XFILL_6__2329_ gnd vdd FILL
X_3048_ clv _662_ _663_ vdd gnd NOR2X1
XFILL_0__2723_ gnd vdd FILL
XFILL_0__2303_ gnd vdd FILL
XFILL_3__3292_ gnd vdd FILL
XFILL_4__3608_ gnd vdd FILL
XFILL_0__3508_ gnd vdd FILL
XFILL_6__2082_ gnd vdd FILL
XFILL_2__2494_ gnd vdd FILL
XFILL_2__2074_ gnd vdd FILL
X_1954_ _1068_ _1070_ _1071_ vdd gnd NOR2X1
XFILL_6__3287_ gnd vdd FILL
XFILL_2__3699_ gnd vdd FILL
XFILL_0__3261_ gnd vdd FILL
XFILL_2__3279_ gnd vdd FILL
X_2739_ ABH[0] _323_ _406_ vdd gnd NAND2X1
X_2319_ _908_ _1031_ _903__bF$buf0 _1426_ vdd gnd OAI21X1
XFILL_7__2243_ gnd vdd FILL
XFILL_3__2983_ gnd vdd FILL
XFILL_3__2563_ gnd vdd FILL
XFILL_3__2143_ gnd vdd FILL
XFILL_5__2489_ gnd vdd FILL
XFILL_5__2069_ gnd vdd FILL
XFILL_7__3028_ gnd vdd FILL
XFILL_5__3010_ gnd vdd FILL
XFILL_1__3002_ gnd vdd FILL
XFILL_6__1773_ gnd vdd FILL
X_2492_ _1319__bF$buf0 _1263_ PC[15] _188_ vdd gnd OAI21X1
X_2072_ _1168_ _1013_ _1180_ _1181_ vdd gnd AOI21X1
XFILL_2__1765_ gnd vdd FILL
XFILL_4__2632_ gnd vdd FILL
XFILL_4__2212_ gnd vdd FILL
XFILL_6__2978_ gnd vdd FILL
X_3697_ _1741_[14] AB[14] vdd gnd BUFX2
XFILL_6__2558_ gnd vdd FILL
X_3277_ _836_ _824_ _853_ vdd gnd AND2X2
XFILL_6__2138_ gnd vdd FILL
XFILL_0__2952_ gnd vdd FILL
XFILL_0__2532_ gnd vdd FILL
XFILL_0__2112_ gnd vdd FILL
XFILL_7__1934_ gnd vdd FILL
XFILL_3__1834_ gnd vdd FILL
XFILL_0__3317_ gnd vdd FILL
XFILL_7__2719_ gnd vdd FILL
XFILL_5__2701_ gnd vdd FILL
XFILL_3__2619_ gnd vdd FILL
X_1763_ DIHOLD[6] _891_ vdd gnd INVX1
XFILL_4__3590_ gnd vdd FILL
XFILL_4__3170_ gnd vdd FILL
XFILL_6__3096_ gnd vdd FILL
XFILL_0__3490_ gnd vdd FILL
XFILL_2__3088_ gnd vdd FILL
XFILL_0__3070_ gnd vdd FILL
XFILL_4__1903_ gnd vdd FILL
XFILL_6__1829_ gnd vdd FILL
X_2968_ _1207_ _1150__bF$buf0 _550_ _600_ _44_ vdd 
+ gnd
+ OAI22X1
X_2548_ _237_ ADD[3] _239_ _240_ vdd gnd AOI21X1
X_2128_ _886__bF$buf0 _1234_ _1236_ _1237_ vdd gnd OAI21X1
XFILL_7__2472_ gnd vdd FILL
XFILL_0__1803_ gnd vdd FILL
XFILL_3__2792_ gnd vdd FILL
XFILL_3__2372_ gnd vdd FILL
XFILL_5__2298_ gnd vdd FILL
XFILL_7__3677_ gnd vdd FILL
XFILL_7__3257_ gnd vdd FILL
XFILL_1__3651_ gnd vdd FILL
XFILL_1__3231_ gnd vdd FILL
XFILL_3__3577_ gnd vdd FILL
XFILL_3__3157_ gnd vdd FILL
XFILL_2__1994_ gnd vdd FILL
XFILL_4__2861_ gnd vdd FILL
XFILL_4__2441_ gnd vdd FILL
XFILL_4__2021_ gnd vdd FILL
XFILL_6__2787_ gnd vdd FILL
XFILL_6__2367_ gnd vdd FILL
X_3086_ Z _697_ vdd gnd INVX1
XFILL_2__2779_ gnd vdd FILL
XFILL_0__2761_ gnd vdd FILL
XFILL_2__2359_ gnd vdd FILL
XFILL_0__2341_ gnd vdd FILL
XFILL_2__3300_ gnd vdd FILL
X_1819_ _940_ _936_ _944_ _945_ vdd gnd NAND3X1
XFILL_4__3646_ gnd vdd FILL
XFILL_4__3226_ gnd vdd FILL
XFILL_0__3546_ gnd vdd FILL
XFILL_0__3126_ gnd vdd FILL
XFILL_5__1989_ gnd vdd FILL
XFILL_7__2948_ gnd vdd FILL
XFILL_5__2930_ gnd vdd FILL
XFILL_5__2510_ gnd vdd FILL
XFILL_7__2108_ gnd vdd FILL
XFILL_1__2922_ gnd vdd FILL
XFILL_1__2502_ gnd vdd FILL
XFILL_3__2848_ gnd vdd FILL
XFILL_3__2428_ gnd vdd FILL
XFILL_3__2008_ gnd vdd FILL
X_1992_ _1049_ _AXYS[3]_[3] _AXYS[2]_[3] _1057_ _1106_ vdd 
+ gnd
+ AOI22X1
XFILL_5__3715_ gnd vdd FILL
XFILL_1__3707_ gnd vdd FILL
X_2777_ _433_ _436_ _442_ vdd gnd NAND2X1
X_2357_ _886__bF$buf1 _1268_ _1283_ _1330_ _1463_ vdd 
+ gnd
+ AOI22X1
XFILL_3__2181_ gnd vdd FILL
XFILL_4__2917_ gnd vdd FILL
XFILL_1__2099_ gnd vdd FILL
XFILL_0__2817_ gnd vdd FILL
XFILL_1__3460_ gnd vdd FILL
XFILL_1__3040_ gnd vdd FILL
XFILL169350x150 gnd vdd FILL
XFILL_4__2670_ gnd vdd FILL
XFILL_4__2250_ gnd vdd FILL
XFILL_6__2596_ gnd vdd FILL
XFILL_6__2176_ gnd vdd FILL
XFILL_0__2990_ gnd vdd FILL
XFILL_2__2588_ gnd vdd FILL
XFILL_0__2570_ gnd vdd FILL
XFILL_2__2168_ gnd vdd FILL
XFILL_0__2150_ gnd vdd FILL
XFILL_7__1972_ gnd vdd FILL
XFILL_4__3455_ gnd vdd FILL
XFILL_4__3035_ gnd vdd FILL
XFILL_3__1872_ gnd vdd FILL
XFILL_5__1798_ gnd vdd FILL
XFILL_7__2337_ gnd vdd FILL
XFILL_1__2731_ gnd vdd FILL
XFILL_1__2311_ gnd vdd FILL
XFILL_3__2657_ gnd vdd FILL
XFILL_3__2237_ gnd vdd FILL
XFILL_5__3524_ gnd vdd FILL
XFILL_5__3104_ gnd vdd FILL
XFILL_1__3516_ gnd vdd FILL
XFILL_4__1941_ gnd vdd FILL
XFILL_6__1867_ gnd vdd FILL
X_2586_ ADD[0] _198_ _272_ DIMUX[0] _273_ vdd 
+ gnd
+ AOI22X1
X_2166_ _914__bF$buf1 _974_ _1275_ vdd gnd NOR2X1
XFILL_7__2090_ gnd vdd FILL
XFILL_0__1841_ gnd vdd FILL
XFILL_2__1859_ gnd vdd FILL
XFILL_2__2800_ gnd vdd FILL
XFILL_4__2726_ gnd vdd FILL
XFILL_4__2306_ gnd vdd FILL
XFILL_0__2626_ gnd vdd FILL
XFILL_0__2206_ gnd vdd FILL
XFILL_3__3195_ gnd vdd FILL
XFILL_3__1928_ gnd vdd FILL
XFILL_2__2397_ gnd vdd FILL
X_1857_ _902__bF$buf2 _981_ _982_ vdd gnd NOR2X1
XFILL_4__3264_ gnd vdd FILL
XFILL_0__3584_ gnd vdd FILL
XFILL_0__3164_ gnd vdd FILL
XFILL_7__2986_ gnd vdd FILL
XFILL_7__2566_ gnd vdd FILL
XFILL_7__2146_ gnd vdd FILL
XFILL_1__2960_ gnd vdd FILL
XFILL_1__2540_ gnd vdd FILL
XFILL_1__2120_ gnd vdd FILL
XFILL_3__2886_ gnd vdd FILL
XFILL_3__2466_ gnd vdd FILL
XFILL_3__2046_ gnd vdd FILL
XFILL_4__1750_ gnd vdd FILL
X_2395_ _1262_ _1308_ _1274_ _1500_ vdd gnd NAND3X1
XFILL_4__2955_ gnd vdd FILL
XFILL_4__2535_ gnd vdd FILL
XFILL_4__2115_ gnd vdd FILL
XFILL_0__2855_ gnd vdd FILL
XFILL_0__2435_ gnd vdd FILL
XFILL_0__2015_ gnd vdd FILL
XFILL_7__1837_ gnd vdd FILL
XFILL_1__1811_ gnd vdd FILL
XFILL_5__2604_ gnd vdd FILL
XFILL_4__3493_ gnd vdd FILL
XFILL_4__3073_ gnd vdd FILL
XFILL_4__1806_ gnd vdd FILL
XFILL_7__2795_ gnd vdd FILL
XFILL_7__2375_ gnd vdd FILL
XFILL_3__2695_ gnd vdd FILL
XFILL_3__2275_ gnd vdd FILL
XFILL_5__3562_ gnd vdd FILL
XFILL_5__3142_ gnd vdd FILL
XFILL_1__3554_ gnd vdd FILL
XFILL_1__3134_ gnd vdd FILL
XFILL_2__1897_ gnd vdd FILL
XFILL_4__2764_ gnd vdd FILL
XFILL_4__2344_ gnd vdd FILL
XFILL_0__2664_ gnd vdd FILL
XFILL_6__3631_ gnd vdd FILL
XFILL_0__2244_ gnd vdd FILL
XFILL_6__3211_ gnd vdd FILL
XFILL_2__3623_ gnd vdd FILL
XFILL_2__3203_ gnd vdd FILL
XFILL_4__3549_ gnd vdd FILL
XFILL_4__3129_ gnd vdd FILL
XFILL_3__1966_ gnd vdd FILL
XFILL_0__3449_ gnd vdd FILL
XFILL_0__3029_ gnd vdd FILL
XFILL_5__2833_ gnd vdd FILL
XFILL_5__2413_ gnd vdd FILL
XFILL_1__2825_ gnd vdd FILL
XFILL_1__2405_ gnd vdd FILL
XFILL168450x158550 gnd vdd FILL
X_1895_ PC[6] _1014_ vdd gnd INVX2
XFILL_5__3618_ gnd vdd FILL
XFILL_7__2184_ gnd vdd FILL
XFILL_0__1935_ gnd vdd FILL
XFILL_6__2902_ gnd vdd FILL
X_3621_ _1725_ alu_op[2] _1647_ _1651_ vdd gnd OAI21X1
X_3201_ _767_ _789_ _795_ _82_ vdd gnd OAI21X1
XFILL_3__2084_ gnd vdd FILL
XFILL_3__3289_ gnd vdd FILL
XFILL_4__2993_ gnd vdd FILL
XFILL_4__2573_ gnd vdd FILL
XFILL_4__2153_ gnd vdd FILL
XFILL_6__2499_ gnd vdd FILL
XFILL_6__2079_ gnd vdd FILL
XFILL_0__2893_ gnd vdd FILL
XFILL_0__2473_ gnd vdd FILL
XFILL_0__2053_ gnd vdd FILL
XFILL_6__3020_ gnd vdd FILL
XFILL_2__3012_ gnd vdd FILL
XFILL_0__3678_ gnd vdd FILL
XFILL_3__1775_ gnd vdd FILL
XFILL_0__3258_ gnd vdd FILL
XFILL_5__2642_ gnd vdd FILL
XFILL_5__2222_ gnd vdd FILL
XFILL_1__2634_ gnd vdd FILL
XFILL_7__3601_ gnd vdd FILL
XFILL_1__2214_ gnd vdd FILL
XFILL_3__3501_ gnd vdd FILL
XFILL_5__3007_ gnd vdd FILL
XFILL_4__1844_ gnd vdd FILL
X_2489_ _1374_ _165_ _185_ _186_ vdd gnd OAI21X1
X_2069_ _1167_ _1177_ _1178_ vdd gnd NAND2X1
XFILL_0__1744_ gnd vdd FILL
XFILL_6__2711_ gnd vdd FILL
X_3430_ _1__bF$buf8 vdd _98_ clk_bF$buf7 _AXYS[3]_[5] vdd 
+ gnd
+ DFFSR
X_3010_ _1394_ _578_ _635_ _636_ vdd gnd OAI21X1
XFILL_2__2703_ gnd vdd FILL
XFILL_4__2629_ gnd vdd FILL
XFILL_4__2209_ gnd vdd FILL
XFILL_1_BUFX2_insert10 gnd vdd FILL
XFILL_1_BUFX2_insert11 gnd vdd FILL
XFILL_1_BUFX2_insert12 gnd vdd FILL
XFILL_1_BUFX2_insert13 gnd vdd FILL
XFILL_5__3180_ gnd vdd FILL
XFILL_7__3198_ gnd vdd FILL
XFILL_1_BUFX2_insert14 gnd vdd FILL
XFILL_1_BUFX2_insert15 gnd vdd FILL
XFILL_1_BUFX2_insert16 gnd vdd FILL
XFILL_1_BUFX2_insert17 gnd vdd FILL
XFILL_1_BUFX2_insert18 gnd vdd FILL
XFILL_1_BUFX2_insert19 gnd vdd FILL
XFILL_0__2949_ gnd vdd FILL
XFILL_0__2529_ gnd vdd FILL
XFILL_0__2109_ gnd vdd FILL
XFILL_1__3592_ gnd vdd FILL
XFILL_1__3172_ gnd vdd FILL
XFILL_3__3098_ gnd vdd FILL
XFILL_5__1913_ gnd vdd FILL
XFILL_1__1905_ gnd vdd FILL
XFILL_4__2382_ gnd vdd FILL
XFILL_0__2282_ gnd vdd FILL
XFILL_2__3661_ gnd vdd FILL
XFILL_2__3241_ gnd vdd FILL
XFILL_4__3587_ gnd vdd FILL
XFILL_4__3167_ gnd vdd FILL
X_2701_ ABL[4] _323_ _1334_ _372_ vdd gnd AOI21X1
XFILL_0__3487_ gnd vdd FILL
XFILL_0__3067_ gnd vdd FILL
XFILL_5__2871_ gnd vdd FILL
XFILL_5__2451_ gnd vdd FILL
XFILL_7__2469_ gnd vdd FILL
XFILL_5__2031_ gnd vdd FILL
XFILL_1__2863_ gnd vdd FILL
XFILL_1__2443_ gnd vdd FILL
XFILL_1__2023_ gnd vdd FILL
XFILL_3__2789_ gnd vdd FILL
XFILL_3__2369_ gnd vdd FILL
XFILL_3__3310_ gnd vdd FILL
XFILL_5__3656_ gnd vdd FILL
XFILL_5__3236_ gnd vdd FILL
XFILL169350x64950 gnd vdd FILL
XFILL_1__3648_ gnd vdd FILL
XFILL_1__3228_ gnd vdd FILL
XFILL_6__1999_ gnd vdd FILL
X_2298_ _1159_ _1404_ _1405_ vdd gnd NOR2X1
XFILL168150x144150 gnd vdd FILL
XFILL_0__1973_ gnd vdd FILL
XFILL_6__2940_ gnd vdd FILL
XFILL_6__2520_ gnd vdd FILL
XFILL_6__2100_ gnd vdd FILL
XFILL_2__2932_ gnd vdd FILL
XFILL_2__2512_ gnd vdd FILL
XFILL_4__2858_ gnd vdd FILL
XFILL_4__2438_ gnd vdd FILL
XFILL_4__2018_ gnd vdd FILL
XFILL_0__2758_ gnd vdd FILL
XFILL_0__2338_ gnd vdd FILL
XFILL_6__3305_ gnd vdd FILL
XFILL_4__2191_ gnd vdd FILL
XFILL_5__2927_ gnd vdd FILL
XFILL_5__2507_ gnd vdd FILL
XFILL_0__2091_ gnd vdd FILL
XFILL_1__2919_ gnd vdd FILL
XFILL_2__3470_ gnd vdd FILL
X_1989_ _1082_ ADD[2] _1103_ _1104_ vdd gnd AOI21X1
XFILL_2__3050_ gnd vdd FILL
X_2930_ _1164_ _1178_ _573_ vdd gnd NAND2X1
X_2510_ _1077_ _204_ _1081_ _205_ vdd gnd NAND3X1
XFILL_0__3296_ gnd vdd FILL
XFILL_7__2698_ gnd vdd FILL
XFILL_5__2680_ gnd vdd FILL
XFILL_5__2260_ gnd vdd FILL
X_3715_ _1743_ WE vdd gnd BUFX2
XFILL_1__2672_ gnd vdd FILL
XFILL_1__2252_ gnd vdd FILL
XFILL_3__2598_ gnd vdd FILL
XFILL_3__2178_ gnd vdd FILL
XFILL_5__3465_ gnd vdd FILL
XFILL_5__3045_ gnd vdd FILL
XFILL_1__3457_ gnd vdd FILL
XFILL_1__3037_ gnd vdd FILL
XFILL_4__1882_ gnd vdd FILL
XFILL_0__1782_ gnd vdd FILL
XFILL_2__2741_ gnd vdd FILL
XFILL_2__2321_ gnd vdd FILL
XFILL_4__2667_ gnd vdd FILL
XFILL_4__2247_ gnd vdd FILL
XFILL_0__2987_ gnd vdd FILL
XFILL_0__2567_ gnd vdd FILL
XFILL_6__3534_ gnd vdd FILL
XFILL_0__2147_ gnd vdd FILL
XFILL_6__3114_ gnd vdd FILL
XFILL167850x61350 gnd vdd FILL
XFILL_2__3526_ gnd vdd FILL
XFILL_2__3106_ gnd vdd FILL
XFILL_7__1969_ gnd vdd FILL
XFILL_5__1951_ gnd vdd FILL
XFILL_1__1943_ gnd vdd FILL
XFILL_3__1869_ gnd vdd FILL
XFILL_3__2810_ gnd vdd FILL
XFILL_5__2736_ gnd vdd FILL
XFILL_5__2316_ gnd vdd FILL
XFILL_2_BUFX2_insert60 gnd vdd FILL
XFILL_2_BUFX2_insert61 gnd vdd FILL
XFILL_2_BUFX2_insert62 gnd vdd FILL
XFILL_2_BUFX2_insert63 gnd vdd FILL
XFILL_2_BUFX2_insert64 gnd vdd FILL
XFILL_2_BUFX2_insert65 gnd vdd FILL
XFILL_2_BUFX2_insert66 gnd vdd FILL
XFILL_1__2728_ gnd vdd FILL
XFILL_2_BUFX2_insert67 gnd vdd FILL
XFILL_2_BUFX2_insert68 gnd vdd FILL
XFILL_1__2308_ gnd vdd FILL
XFILL_2_BUFX2_insert69 gnd vdd FILL
X_1798_ state[1] _906_ _924_ vdd gnd NAND2X1
XFILL_4__1938_ gnd vdd FILL
XFILL_7__2087_ gnd vdd FILL
XFILL_0__1838_ gnd vdd FILL
XFILL_6__2805_ gnd vdd FILL
X_3524_ AI[2] _1554_ vdd gnd INVX1
X_3104_ _713_ DIMUX[0] _956_ _714_ vdd gnd MUX2X1
XFILL_1__2481_ gnd vdd FILL
XFILL_1__2061_ gnd vdd FILL
XFILL_5__3694_ gnd vdd FILL
XFILL_5__3274_ gnd vdd FILL
XFILL_1__3266_ gnd vdd FILL
XFILL_2__2970_ gnd vdd FILL
XFILL_2__2550_ gnd vdd FILL
XFILL_2__2130_ gnd vdd FILL
XFILL_4__2896_ gnd vdd FILL
XFILL_4__2476_ gnd vdd FILL
XFILL_4__2056_ gnd vdd FILL
XFILL_0__2796_ gnd vdd FILL
XFILL_0__2376_ gnd vdd FILL
XFILL_5__1760_ gnd vdd FILL
XFILL_1__1752_ gnd vdd FILL
XFILL_5__2965_ gnd vdd FILL
XFILL_5__2545_ gnd vdd FILL
XFILL_5__2125_ gnd vdd FILL
XFILL_1__2957_ gnd vdd FILL
XFILL_1__2537_ gnd vdd FILL
XFILL_7__3504_ gnd vdd FILL
XFILL_1__2117_ gnd vdd FILL
XFILL_2__1821_ gnd vdd FILL
XFILL_4__1747_ gnd vdd FILL
XFILL_6__2614_ gnd vdd FILL
X_3333_ _1__bF$buf4 vdd _11_ clk_bF$buf2 PC[9] vdd 
+ gnd
+ DFFSR
XFILL_1__2290_ gnd vdd FILL
XFILL_2__2606_ gnd vdd FILL
XFILL_5__3083_ gnd vdd FILL
XFILL_1__3495_ gnd vdd FILL
XFILL_1__3075_ gnd vdd FILL
XFILL_5__1816_ gnd vdd FILL
XFILL_1__1808_ gnd vdd FILL
XFILL_4__2285_ gnd vdd FILL
XFILL_6__3572_ gnd vdd FILL
XFILL_0__2185_ gnd vdd FILL
XFILL_6__3152_ gnd vdd FILL
XFILL_2__3564_ gnd vdd FILL
XFILL_2__3144_ gnd vdd FILL
X_2604_ _287_ _286_ _288_ vdd gnd NAND2X1
XFILL_1__1981_ gnd vdd FILL
XFILL_5__2774_ gnd vdd FILL
XFILL_5__2354_ gnd vdd FILL
XFILL_1__2766_ gnd vdd FILL
XFILL_1__2346_ gnd vdd FILL
XFILL_3__3633_ gnd vdd FILL
XFILL_3__3213_ gnd vdd FILL
XFILL_5__3559_ gnd vdd FILL
XFILL_5__3139_ gnd vdd FILL
XFILL_4__1976_ gnd vdd FILL
XFILL_0__1876_ gnd vdd FILL
XFILL_6__2843_ gnd vdd FILL
X_3562_ _1579_ _1583_ _1591_ _1592_ vdd gnd NAND3X1
XFILL_6__2423_ gnd vdd FILL
XFILL_6__2003_ gnd vdd FILL
X_3142_ _739_ _746_ _747_ vdd gnd NOR2X1
XFILL_2__2835_ gnd vdd FILL
XFILL_2__2415_ gnd vdd FILL
XFILL_4__3702_ gnd vdd FILL
XFILL_6__3628_ gnd vdd FILL
XFILL_6__3208_ gnd vdd FILL
XFILL_0__3602_ gnd vdd FILL
XFILL_4__2094_ gnd vdd FILL
XFILL_3__2904_ gnd vdd FILL
XFILL169950x158550 gnd vdd FILL
XFILL_6_BUFX2_insert10 gnd vdd FILL
XFILL_6_BUFX2_insert11 gnd vdd FILL
XFILL_6_BUFX2_insert12 gnd vdd FILL
XFILL_6_BUFX2_insert13 gnd vdd FILL
XFILL_6_BUFX2_insert14 gnd vdd FILL
XFILL_6_BUFX2_insert15 gnd vdd FILL
XFILL_6_BUFX2_insert16 gnd vdd FILL
XFILL_6_BUFX2_insert17 gnd vdd FILL
XFILL_6_BUFX2_insert18 gnd vdd FILL
XFILL_6_BUFX2_insert19 gnd vdd FILL
XFILL_4__3299_ gnd vdd FILL
X_2833_ _494_ _493_ _495_ vdd gnd NOR2X1
X_2413_ RDY_bF$buf5 _1227_ _1359_ _122_ vdd gnd OAI21X1
XFILL_1__1790_ gnd vdd FILL
XFILL_0__3199_ gnd vdd FILL
XFILL_5__2583_ gnd vdd FILL
XFILL_5__2163_ gnd vdd FILL
X_3618_ _1647_ _1645_ _1648_ vdd gnd NAND2X1
XFILL_1__2995_ gnd vdd FILL
XFILL_1__2575_ gnd vdd FILL
XFILL_7__3542_ gnd vdd FILL
XFILL_1__2155_ gnd vdd FILL
XFILL_7__3122_ gnd vdd FILL
XFILL_3__3022_ gnd vdd FILL
XFILL_4__1785_ gnd vdd FILL
XFILL_6__2652_ gnd vdd FILL
XFILL_6__2232_ gnd vdd FILL
X_3371_ _1__bF$buf2 vdd _48_ clk_bF$buf10 src_reg[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2644_ gnd vdd FILL
XFILL_2__2224_ gnd vdd FILL
XFILL_4__3511_ gnd vdd FILL
XFILL_6__3017_ gnd vdd FILL
XFILL_2__3009_ gnd vdd FILL
XFILL_5__1854_ gnd vdd FILL
XFILL_1__1846_ gnd vdd FILL
XFILL_3__2713_ gnd vdd FILL
XFILL_5__2639_ gnd vdd FILL
XFILL_5__2219_ gnd vdd FILL
XFILL_6__3190_ gnd vdd FILL
XFILL_2__3182_ gnd vdd FILL
XFILL_6__1923_ gnd vdd FILL
X_2642_ _901_ _1221_ _967_ _317_ vdd gnd AOI21X1
X_2222_ _1149__bF$buf3 _1178_ _1330_ vdd gnd NOR2X1
XFILL_2__1915_ gnd vdd FILL
XFILL_5__2392_ gnd vdd FILL
XFILL_6__2708_ gnd vdd FILL
X_3427_ _1__bF$buf8 vdd _95_ clk_bF$buf0 _AXYS[3]_[2] vdd 
+ gnd
+ DFFSR
X_3007_ load_reg _633_ vdd gnd INVX1
XFILL_1__2384_ gnd vdd FILL
XFILL_3__3671_ gnd vdd FILL
XFILL_3__3251_ gnd vdd FILL
XFILL_5__3597_ gnd vdd FILL
XFILL_5__3177_ gnd vdd FILL
XFILL_1__3589_ gnd vdd FILL
XFILL_1__3169_ gnd vdd FILL
XFILL_6__2881_ gnd vdd FILL
XFILL_6__2461_ gnd vdd FILL
X_3180_ CO _728_ _692_ _781_ vdd gnd OAI21X1
XFILL_6__2041_ gnd vdd FILL
XFILL_2__2873_ gnd vdd FILL
XFILL_2__2453_ gnd vdd FILL
XFILL_2__2033_ gnd vdd FILL
XFILL_4__2799_ gnd vdd FILL
XFILL_4__2379_ gnd vdd FILL
X_1913_ _913_ _901_ _1030_ vdd gnd NOR2X1
XFILL_0__2699_ gnd vdd FILL
XFILL_6__3666_ gnd vdd FILL
XFILL_0__2279_ gnd vdd FILL
XFILL_6__3246_ gnd vdd FILL
XFILL_2__3658_ gnd vdd FILL
XFILL_0__3640_ gnd vdd FILL
XFILL_0__3220_ gnd vdd FILL
XFILL_2__3238_ gnd vdd FILL
XFILL_7__2622_ gnd vdd FILL
XFILL_3__2942_ gnd vdd FILL
XFILL_3__2522_ gnd vdd FILL
XFILL_3__2102_ gnd vdd FILL
XFILL_5__2868_ gnd vdd FILL
XFILL_5__2448_ gnd vdd FILL
XFILL_5__2028_ gnd vdd FILL
XFILL_3__3307_ gnd vdd FILL
X_2871_ _886__bF$buf5 _1412_ _527_ _20_ vdd gnd OAI21X1
XFILL169050x118950 gnd vdd FILL
X_2451_ _1319__bF$buf2 _1263_ PC[9] _153_ vdd gnd OAI21X1
X_2031_ _AXYS[0]_[7] _1051_ _1053_ _1141_ vdd gnd NAND3X1
XFILL169650x144150 gnd vdd FILL
XFILL_6__2937_ gnd vdd FILL
X_3656_ ADD[0] _1714__bF$buf3 _1684_ vdd gnd NAND2X1
XFILL_6__2517_ gnd vdd FILL
X_3236_ _767_ _807_ _814_ _98_ vdd gnd OAI21X1
XFILL_7__3580_ gnd vdd FILL
XFILL_1__2193_ gnd vdd FILL
XFILL_0__2911_ gnd vdd FILL
XFILL_2__2929_ gnd vdd FILL
XFILL_2__2509_ gnd vdd FILL
XFILL_3__3480_ gnd vdd FILL
XFILL_3__3060_ gnd vdd FILL
XFILL_6__2690_ gnd vdd FILL
XFILL_6__2270_ gnd vdd FILL
XFILL_2__2682_ gnd vdd FILL
XFILL_2__2262_ gnd vdd FILL
XFILL_4__2188_ gnd vdd FILL
XFILL_6__3475_ gnd vdd FILL
XFILL_0__2088_ gnd vdd FILL
XFILL_6__3055_ gnd vdd FILL
XFILL_2__3467_ gnd vdd FILL
XFILL_2__3047_ gnd vdd FILL
XFILL_5__1892_ gnd vdd FILL
X_2927_ _132_ _1149__bF$buf2 _567_ _570_ _33_ vdd 
+ gnd
+ AOI22X1
X_2507_ _201_ _194_ _202_ vdd gnd NAND2X1
XFILL_1__1884_ gnd vdd FILL
XFILL_7__2851_ gnd vdd FILL
XFILL_7__2011_ gnd vdd FILL
XFILL_3__2751_ gnd vdd FILL
XFILL_3__2331_ gnd vdd FILL
XFILL_5__2677_ gnd vdd FILL
XFILL_5__2257_ gnd vdd FILL
XFILL_1__2669_ gnd vdd FILL
XFILL_1__2249_ gnd vdd FILL
XFILL_1__3610_ gnd vdd FILL
XFILL_3__3536_ gnd vdd FILL
XFILL_3__3116_ gnd vdd FILL
XFILL_6__1961_ gnd vdd FILL
X_2680_ _1092_ _328_ _351_ _352_ vdd gnd NAND3X1
X_2260_ _1150__bF$buf0 _1365_ _1367_ _1368_ vdd gnd NAND3X1
XFILL_2__1953_ gnd vdd FILL
XFILL_4__1879_ gnd vdd FILL
XFILL_4__2820_ gnd vdd FILL
XFILL_4__2400_ gnd vdd FILL
XFILL_0__1779_ gnd vdd FILL
XFILL_6__2746_ gnd vdd FILL
X_3465_ _1704_ _1705_ _1712_ _1713_ vdd gnd OAI21X1
XFILL_6__2326_ gnd vdd FILL
X_3045_ _659_ _660_ vdd gnd INVX1
XFILL169650x39750 gnd vdd FILL
XFILL_2__2738_ gnd vdd FILL
XFILL_0__2720_ gnd vdd FILL
XFILL_2__2318_ gnd vdd FILL
XFILL_0__2300_ gnd vdd FILL
XFILL_4__3605_ gnd vdd FILL
XFILL_0__3505_ gnd vdd FILL
XFILL_5__1948_ gnd vdd FILL
XFILL_7__2907_ gnd vdd FILL
XFILL_2__2491_ gnd vdd FILL
XFILL_2__2071_ gnd vdd FILL
XFILL_3__2807_ gnd vdd FILL
X_1951_ _1067_ _1068_ vdd gnd INVX1
XFILL_6__3284_ gnd vdd FILL
XFILL_2__3696_ gnd vdd FILL
XFILL_2__3276_ gnd vdd FILL
X_2736_ _211_ _321_ _966_ _403_ vdd gnd AOI21X1
X_2316_ _1231_ _1229_ _1423_ vdd gnd AND2X2
XFILL_7__2240_ gnd vdd FILL
XFILL_3__2980_ gnd vdd FILL
XFILL_3__2560_ gnd vdd FILL
XFILL_3__2140_ gnd vdd FILL
XFILL_5__2486_ gnd vdd FILL
XFILL_5__2066_ gnd vdd FILL
XFILL_1__2898_ gnd vdd FILL
XFILL_1__2478_ gnd vdd FILL
XFILL_1__2058_ gnd vdd FILL
XFILL_7__3025_ gnd vdd FILL
XFILL_6__1770_ gnd vdd FILL
XFILL_2__1762_ gnd vdd FILL
XFILL_6__2975_ gnd vdd FILL
X_3694_ _1741_[11] AB[11] vdd gnd BUFX2
XFILL_6__2555_ gnd vdd FILL
X_3274_ _846_ _849_ _850_ vdd gnd OR2X2
XFILL_6__2135_ gnd vdd FILL
XFILL_2__2967_ gnd vdd FILL
XFILL_2__2547_ gnd vdd FILL
XFILL_2__2127_ gnd vdd FILL
XFILL_3__1831_ gnd vdd FILL
XFILL_0__3314_ gnd vdd FILL
XFILL_5__1757_ gnd vdd FILL
XFILL_1__1749_ gnd vdd FILL
XFILL_7__2716_ gnd vdd FILL
XFILL_3__2616_ gnd vdd FILL
X_1760_ DIHOLD[5] _889_ vdd gnd INVX1
XFILL_6__3093_ gnd vdd FILL
XFILL_2__3085_ gnd vdd FILL
XFILL_4__1900_ gnd vdd FILL
XFILL_6__1826_ gnd vdd FILL
X_2965_ _886__bF$buf4 _1027__bF$buf1 load_only _599_ vdd gnd OAI21X1
X_2545_ _209_ _216_ _237_ vdd gnd OR2X2
X_2125_ _1233_ _1234_ vdd gnd INVX1
XFILL_2__1818_ gnd vdd FILL
XFILL_0__1800_ gnd vdd FILL
XFILL_5__2295_ gnd vdd FILL
XFILL_7__3674_ gnd vdd FILL
XFILL_1__2287_ gnd vdd FILL
XFILL_7__3254_ gnd vdd FILL
XFILL_7_BUFX2_insert80 gnd vdd FILL
XFILL_7_BUFX2_insert82 gnd vdd FILL
XFILL_3__3574_ gnd vdd FILL
XFILL_7_BUFX2_insert83 gnd vdd FILL
XFILL_3__3154_ gnd vdd FILL
XFILL_2__1991_ gnd vdd FILL
XFILL_6__2784_ gnd vdd FILL
XFILL_6__2364_ gnd vdd FILL
X_3083_ _1227_ _694_ _691_ _695_ vdd gnd AOI21X1
XFILL_2__2776_ gnd vdd FILL
XFILL_2__2356_ gnd vdd FILL
X_1816_ _941_ _942_ vdd gnd INVX2
XFILL_4__3643_ gnd vdd FILL
XFILL_4__3223_ gnd vdd FILL
XFILL_6__3569_ gnd vdd FILL
XFILL_6__3149_ gnd vdd FILL
XFILL_0__3543_ gnd vdd FILL
XFILL_0__3123_ gnd vdd FILL
XFILL_5__1986_ gnd vdd FILL
XFILL_1__1978_ gnd vdd FILL
XFILL_7__2945_ gnd vdd FILL
XFILL_7__2525_ gnd vdd FILL
XFILL_7__2105_ gnd vdd FILL
XFILL_3__2845_ gnd vdd FILL
XFILL_3__2425_ gnd vdd FILL
XFILL_3__2005_ gnd vdd FILL
XFILL_5__3712_ gnd vdd FILL
XFILL_1__3704_ gnd vdd FILL
X_2774_ _438_ _430_ _439_ vdd gnd NOR2X1
X_2354_ _1459_ _1458_ _1460_ vdd gnd NOR2X1
XFILL_4__2914_ gnd vdd FILL
X_3559_ _1588_ _1587_ _1589_ vdd gnd NAND2X1
X_3139_ _AXYS[0]_[2] _722_ _745_ vdd gnd NAND2X1
XFILL_1__2096_ gnd vdd FILL
XFILL_0__2814_ gnd vdd FILL
XFILL_6__2593_ gnd vdd FILL
XFILL_6__2173_ gnd vdd FILL
XFILL_2__2585_ gnd vdd FILL
XFILL_2__2165_ gnd vdd FILL
XFILL_4__3452_ gnd vdd FILL
XFILL_4__3032_ gnd vdd FILL
XFILL_5__1795_ gnd vdd FILL
XFILL_1__1787_ gnd vdd FILL
XFILL_7__2754_ gnd vdd FILL
XFILL_3__2654_ gnd vdd FILL
XFILL_3__2234_ gnd vdd FILL
XFILL_5__3521_ gnd vdd FILL
XFILL_7__3119_ gnd vdd FILL
XFILL_5__3101_ gnd vdd FILL
XFILL_1__3513_ gnd vdd FILL
XFILL_3__3019_ gnd vdd FILL
XFILL_6__1864_ gnd vdd FILL
X_2583_ _196_ _270_ vdd gnd INVX2
X_2163_ _1031_ _1272_ vdd gnd INVX2
XFILL_2__1856_ gnd vdd FILL
XFILL_4__2723_ gnd vdd FILL
XFILL_4__2303_ gnd vdd FILL
XFILL_6__2649_ gnd vdd FILL
XFILL_6__2229_ gnd vdd FILL
X_3368_ _1__bF$buf2 vdd _45_ clk_bF$buf10 store vdd 
+ gnd
+ DFFSR
XFILL_0__2623_ gnd vdd FILL
XFILL_0__2203_ gnd vdd FILL
XFILL_3__3192_ gnd vdd FILL
XFILL_4__3508_ gnd vdd FILL
XFILL_3__1925_ gnd vdd FILL
XFILL_2__2394_ gnd vdd FILL
X_1854_ _902__bF$buf0 _974_ _978_ _979_ vdd gnd OAI21X1
XFILL_4__3261_ gnd vdd FILL
XFILL_6__3187_ gnd vdd FILL
XFILL_0__3581_ gnd vdd FILL
XFILL_2__3599_ gnd vdd FILL
XFILL_0__3161_ gnd vdd FILL
XFILL_2__3179_ gnd vdd FILL
X_2639_ _913_ _901_ _1427_ _314_ vdd gnd OAI21X1
X_2219_ _1171_ _1167_ _1327_ vdd gnd AND2X2
XFILL_7__2983_ gnd vdd FILL
XFILL_7__2143_ gnd vdd FILL
XFILL_3__2883_ gnd vdd FILL
XFILL_3__2463_ gnd vdd FILL
XFILL_3__2043_ gnd vdd FILL
XFILL_5__2389_ gnd vdd FILL
XFILL_3__3668_ gnd vdd FILL
XFILL_3__3248_ gnd vdd FILL
X_2392_ _1293_ _1497_ vdd gnd INVX1
XFILL_4__2952_ gnd vdd FILL
XFILL_4__2532_ gnd vdd FILL
XFILL_4__2112_ gnd vdd FILL
XFILL_6__2878_ gnd vdd FILL
X_3597_ _1725_ alu_op[2] _1535_ _1627_ vdd gnd OAI21X1
XFILL_6__2458_ gnd vdd FILL
XFILL_6__2038_ gnd vdd FILL
X_3177_ _AXYS[0]_[6] _722_ _779_ vdd gnd NAND2X1
XFILL_0__2852_ gnd vdd FILL
XFILL_0__2432_ gnd vdd FILL
XFILL_0__2012_ gnd vdd FILL
XFILL_7__1834_ gnd vdd FILL
XFILL_4__3317_ gnd vdd FILL
XFILL_0__3637_ gnd vdd FILL
XFILL_0__3217_ gnd vdd FILL
XFILL_5__2601_ gnd vdd FILL
XFILL_7__2619_ gnd vdd FILL
XFILL_3__2939_ gnd vdd FILL
XFILL_3__2519_ gnd vdd FILL
XFILL_4__3490_ gnd vdd FILL
XFILL_4__3070_ gnd vdd FILL
XFILL_4__1803_ gnd vdd FILL
X_2868_ RDY_bF$buf2 _1181_ _526_ vdd gnd NAND2X1
X_2448_ _145_ _146_ _150_ _151_ vdd gnd NAND3X1
X_2028_ _1074_ _1133_ _1138_ AI[6] vdd gnd OAI21X1
XFILL_7__2372_ gnd vdd FILL
XFILL_3__2692_ gnd vdd FILL
XFILL_3__2272_ gnd vdd FILL
XFILL_5__2198_ gnd vdd FILL
XFILL_7__3577_ gnd vdd FILL
XFILL_7__3157_ gnd vdd FILL
XFILL_0__2908_ gnd vdd FILL
XFILL_1__3551_ gnd vdd FILL
XFILL_1__3131_ gnd vdd FILL
XFILL_3__3477_ gnd vdd FILL
XFILL_3__3057_ gnd vdd FILL
XFILL_2__1894_ gnd vdd FILL
XFILL_4__2761_ gnd vdd FILL
XFILL_4__2341_ gnd vdd FILL
XFILL_6__2687_ gnd vdd FILL
XFILL_6__2267_ gnd vdd FILL
XFILL_2__2679_ gnd vdd FILL
XFILL_0__2661_ gnd vdd FILL
XFILL_2__2259_ gnd vdd FILL
XFILL_0__2241_ gnd vdd FILL
XFILL_2__3620_ gnd vdd FILL
XFILL_2__3200_ gnd vdd FILL
XFILL_4__3546_ gnd vdd FILL
XFILL_4__3126_ gnd vdd FILL
XFILL_3__1963_ gnd vdd FILL
XFILL_0__3026_ gnd vdd FILL
XFILL_5__1889_ gnd vdd FILL
XFILL_7__2848_ gnd vdd FILL
XFILL_5__2830_ gnd vdd FILL
XFILL_5__2410_ gnd vdd FILL
XFILL_7__2008_ gnd vdd FILL
XFILL_1__2822_ gnd vdd FILL
XFILL_1__2402_ gnd vdd FILL
XFILL_3__2748_ gnd vdd FILL
XFILL_3__2328_ gnd vdd FILL
X_1892_ PC[5] _1012_ vdd gnd INVX2
XFILL_5__3615_ gnd vdd FILL
XFILL_1__3607_ gnd vdd FILL
XFILL_6__1958_ gnd vdd FILL
X_2677_ _340_ _349_ RDY_bF$buf3 _350_ vdd gnd OAI21X1
X_2257_ _1160_ _1173_ _1365_ vdd gnd NOR2X1
XFILL_0__1932_ gnd vdd FILL
XFILL_3__2081_ gnd vdd FILL
XFILL_4__2817_ gnd vdd FILL
XFILL_0__2717_ gnd vdd FILL
XFILL_3__3286_ gnd vdd FILL
XFILL_4__2990_ gnd vdd FILL
XFILL_4__2570_ gnd vdd FILL
XFILL_4__2150_ gnd vdd FILL
XFILL_6__2496_ gnd vdd FILL
XFILL_6__2076_ gnd vdd FILL
XFILL_0__2890_ gnd vdd FILL
XFILL_2__2488_ gnd vdd FILL
XFILL_0__2470_ gnd vdd FILL
XFILL_2__2068_ gnd vdd FILL
XFILL_0__2050_ gnd vdd FILL
X_1948_ _1064_ _951_ _1065_ vdd gnd NAND2X1
XFILL_7__1872_ gnd vdd FILL
XFILL_0__3675_ gnd vdd FILL
XFILL_3__1772_ gnd vdd FILL
XFILL_0__3255_ gnd vdd FILL
XFILL_7__2237_ gnd vdd FILL
XFILL_1__2631_ gnd vdd FILL
XFILL_1__2211_ gnd vdd FILL
XFILL_3__2977_ gnd vdd FILL
XFILL_3__2557_ gnd vdd FILL
XFILL_3__2137_ gnd vdd FILL
XFILL_5__3004_ gnd vdd FILL
XFILL_4__1841_ gnd vdd FILL
XFILL_6__1767_ gnd vdd FILL
X_2486_ _1319__bF$buf0 _1263_ PC[14] _183_ vdd gnd OAI21X1
X_2066_ _1161_ _1174_ _1175_ vdd gnd NAND2X1
XFILL_2__1759_ gnd vdd FILL
XFILL_2__2700_ gnd vdd FILL
XFILL_4__2626_ gnd vdd FILL
XFILL_4__2206_ gnd vdd FILL
XFILL_0__2946_ gnd vdd FILL
XFILL_0__2526_ gnd vdd FILL
XFILL_0__2106_ gnd vdd FILL
XFILL_3__3095_ gnd vdd FILL
XFILL_5__1910_ gnd vdd FILL
XFILL_1__1902_ gnd vdd FILL
XFILL_3__1828_ gnd vdd FILL
XFILL_2__2297_ gnd vdd FILL
X_1757_ RDY_bF$buf9 DIHOLD[4] _887_ vdd gnd OR2X2
XFILL_4__3584_ gnd vdd FILL
XFILL_4__3164_ gnd vdd FILL
XFILL_0__3484_ gnd vdd FILL
XFILL_0__3064_ gnd vdd FILL
XFILL_7__2466_ gnd vdd FILL
XFILL_7__2046_ gnd vdd FILL
XFILL_1__2860_ gnd vdd FILL
XFILL_1__2440_ gnd vdd FILL
XFILL_1__2020_ gnd vdd FILL
XFILL_3__2786_ gnd vdd FILL
XFILL_3__2366_ gnd vdd FILL
XFILL_5__3653_ gnd vdd FILL
XFILL_5__3233_ gnd vdd FILL
XFILL_1__3645_ gnd vdd FILL
XFILL_1__3225_ gnd vdd FILL
XFILL_6__1996_ gnd vdd FILL
X_2295_ _1185_ _1179_ _1402_ vdd gnd NOR2X1
XFILL_2__1988_ gnd vdd FILL
XFILL_0__1970_ gnd vdd FILL
XFILL_4__2855_ gnd vdd FILL
XFILL_4__2435_ gnd vdd FILL
XFILL_4__2015_ gnd vdd FILL
XFILL_0__2755_ gnd vdd FILL
XFILL_0__2335_ gnd vdd FILL
XFILL_6__3302_ gnd vdd FILL
XFILL_2__3714_ gnd vdd FILL
XFILL_5__2924_ gnd vdd FILL
XFILL_5__2504_ gnd vdd FILL
XFILL_1__2916_ gnd vdd FILL
X_1986_ _1100_ _1101_ vdd gnd INVX1
XFILL_5_BUFX2_insert0 gnd vdd FILL
XFILL_5_BUFX2_insert1 gnd vdd FILL
XFILL_5_BUFX2_insert2 gnd vdd FILL
XFILL_5_BUFX2_insert3 gnd vdd FILL
XFILL_5_BUFX2_insert4 gnd vdd FILL
XFILL_5_BUFX2_insert5 gnd vdd FILL
XFILL_5_BUFX2_insert6 gnd vdd FILL
XFILL_5_BUFX2_insert7 gnd vdd FILL
XFILL_5_BUFX2_insert8 gnd vdd FILL
XFILL_5_BUFX2_insert9 gnd vdd FILL
XFILL_5__3709_ gnd vdd FILL
XFILL_0__3293_ gnd vdd FILL
XFILL_7__2695_ gnd vdd FILL
XFILL_7__2275_ gnd vdd FILL
X_3712_ _1742_[5] DO[5] vdd gnd BUFX2
XFILL_3__2595_ gnd vdd FILL
XFILL_3__2175_ gnd vdd FILL
XFILL_5__3462_ gnd vdd FILL
XFILL_5__3042_ gnd vdd FILL
XFILL168750x158550 gnd vdd FILL
XFILL_1__3454_ gnd vdd FILL
XFILL_1__3034_ gnd vdd FILL
XFILL_2__1797_ gnd vdd FILL
XFILL_4__2664_ gnd vdd FILL
XFILL_4__2244_ gnd vdd FILL
XFILL_0__2984_ gnd vdd FILL
XFILL_0__2564_ gnd vdd FILL
XFILL_6__3531_ gnd vdd FILL
XFILL_0__2144_ gnd vdd FILL
XFILL_6__3111_ gnd vdd FILL
XFILL_2__3523_ gnd vdd FILL
XFILL_2__3103_ gnd vdd FILL
XFILL_7__1966_ gnd vdd FILL
XFILL_4__3449_ gnd vdd FILL
XFILL_4__3029_ gnd vdd FILL
XFILL_1__1940_ gnd vdd FILL
XFILL_3__1866_ gnd vdd FILL
XFILL_5__2733_ gnd vdd FILL
XFILL_5__2313_ gnd vdd FILL
XFILL_1__2725_ gnd vdd FILL
XFILL_2_BUFX2_insert37 gnd vdd FILL
XFILL_2_BUFX2_insert38 gnd vdd FILL
XFILL_1__2305_ gnd vdd FILL
XFILL_2_BUFX2_insert39 gnd vdd FILL
X_1795_ compare _921_ vdd gnd INVX1
XFILL_5__3518_ gnd vdd FILL
XFILL_4__1935_ gnd vdd FILL
XFILL_7__2084_ gnd vdd FILL
XFILL_0__1835_ gnd vdd FILL
XFILL_6__2802_ gnd vdd FILL
X_3521_ BI[2] AI[2] _1718_ _1551_ vdd gnd NAND3X1
X_3101_ plp ADD[0] _706_ _711_ vdd gnd AOI21X1
XFILL_5__3691_ gnd vdd FILL
XFILL_5__3271_ gnd vdd FILL
XFILL_1__3263_ gnd vdd FILL
XFILL_3__3189_ gnd vdd FILL
XFILL_4__2893_ gnd vdd FILL
XFILL_4__2473_ gnd vdd FILL
XFILL_4__2053_ gnd vdd FILL
XFILL_6__2399_ gnd vdd FILL
XFILL_0__2793_ gnd vdd FILL
XFILL_0__2373_ gnd vdd FILL
XFILL_4__3678_ gnd vdd FILL
XFILL_4__3258_ gnd vdd FILL
XFILL_0__3578_ gnd vdd FILL
XFILL_0__3158_ gnd vdd FILL
XFILL_5__2962_ gnd vdd FILL
XFILL_5__2542_ gnd vdd FILL
XFILL_5__2122_ gnd vdd FILL
XFILL_1__2954_ gnd vdd FILL
XFILL_1__2534_ gnd vdd FILL
XFILL_7__3501_ gnd vdd FILL
XFILL_1__2114_ gnd vdd FILL
XFILL_4__1744_ gnd vdd FILL
X_2389_ _1475_ _1476_ _1333_ _1494_ vdd gnd NAND3X1
XFILL_6__2611_ gnd vdd FILL
X_3330_ _1__bF$buf7 vdd _8_ clk_bF$buf5 PC[6] vdd 
+ gnd
+ DFFSR
XFILL_2__2603_ gnd vdd FILL
XFILL_4__2949_ gnd vdd FILL
XFILL_4__2529_ gnd vdd FILL
XFILL_4__2109_ gnd vdd FILL
XFILL_5__3080_ gnd vdd FILL
XFILL_7__3098_ gnd vdd FILL
XFILL_0__2849_ gnd vdd FILL
XFILL_0__2429_ gnd vdd FILL
XFILL_0__2009_ gnd vdd FILL
XFILL_1__3492_ gnd vdd FILL
XFILL_1__3072_ gnd vdd FILL
XFILL_5__1813_ gnd vdd FILL
XFILL_1__1805_ gnd vdd FILL
XFILL168450x144150 gnd vdd FILL
XFILL_4__2282_ gnd vdd FILL
XFILL_0__2182_ gnd vdd FILL
XFILL_2__3561_ gnd vdd FILL
XFILL_2__3141_ gnd vdd FILL
XFILL_4__3487_ gnd vdd FILL
XFILL_4__3067_ gnd vdd FILL
X_2601_ PC[11] _285_ vdd gnd INVX2
XFILL_5__2771_ gnd vdd FILL
XFILL_7__2369_ gnd vdd FILL
XFILL_5__2351_ gnd vdd FILL
XFILL_1__2763_ gnd vdd FILL
XFILL_1__2343_ gnd vdd FILL
XFILL_3__2689_ gnd vdd FILL
XFILL_3__2269_ gnd vdd FILL
XFILL_3__3630_ gnd vdd FILL
XFILL_3__3210_ gnd vdd FILL
XFILL_5__3556_ gnd vdd FILL
XFILL_5__3136_ gnd vdd FILL
XFILL_1__3548_ gnd vdd FILL
XFILL_1__3128_ gnd vdd FILL
XFILL_4__1973_ gnd vdd FILL
XFILL_6__1899_ gnd vdd FILL
X_2198_ _931__bF$buf4 _949_ RDY_bF$buf6 _1307_ vdd gnd OAI21X1
XFILL_0__1873_ gnd vdd FILL
XFILL_6__2840_ gnd vdd FILL
XFILL_6__2420_ gnd vdd FILL
XFILL_6__2000_ gnd vdd FILL
XFILL_2__2832_ gnd vdd FILL
XFILL_2__2412_ gnd vdd FILL
XFILL_4__2758_ gnd vdd FILL
XFILL_4__2338_ gnd vdd FILL
XFILL_0__2658_ gnd vdd FILL
XFILL_6__3625_ gnd vdd FILL
XFILL_0__2238_ gnd vdd FILL
XFILL_6__3205_ gnd vdd FILL
XFILL_2__3617_ gnd vdd FILL
XFILL_4__2091_ gnd vdd FILL
XFILL_3__2901_ gnd vdd FILL
XFILL_5__2827_ gnd vdd FILL
XFILL_5__2407_ gnd vdd FILL
XFILL_1__2819_ gnd vdd FILL
X_1889_ _1009_ _968_ _1010_ _1004_ BI[3] vdd 
+ gnd
+ OAI22X1
XFILL_4__3296_ gnd vdd FILL
X_2830_ _489_ _491_ _492_ vdd gnd NOR2X1
X_2410_ _1237_ _1339_ _119_ vdd gnd NOR2X1
XFILL_0__3196_ gnd vdd FILL
XFILL_7_BUFX2_insert0 gnd vdd FILL
XFILL_7_BUFX2_insert1 gnd vdd FILL
XFILL_7_BUFX2_insert3 gnd vdd FILL
XFILL_7_BUFX2_insert4 gnd vdd FILL
XFILL_7_BUFX2_insert6 gnd vdd FILL
XFILL_7_BUFX2_insert8 gnd vdd FILL
XFILL_7_BUFX2_insert9 gnd vdd FILL
XFILL_7__2598_ gnd vdd FILL
XFILL_5__2580_ gnd vdd FILL
XFILL_5__2160_ gnd vdd FILL
XFILL_0__1929_ gnd vdd FILL
X_3615_ _1644_ _1643_ _1640_ _1645_ vdd gnd OAI21X1
XFILL_1__2992_ gnd vdd FILL
XFILL_1__2572_ gnd vdd FILL
XFILL_1__2152_ gnd vdd FILL
XFILL_3__2498_ gnd vdd FILL
XFILL_3__2078_ gnd vdd FILL
XFILL_4__1782_ gnd vdd FILL
XFILL_2__2641_ gnd vdd FILL
XFILL_2__2221_ gnd vdd FILL
XFILL_4__2987_ gnd vdd FILL
XFILL_4__2567_ gnd vdd FILL
XFILL_4__2147_ gnd vdd FILL
XFILL_0__2887_ gnd vdd FILL
XFILL_0__2467_ gnd vdd FILL
XFILL_0__2047_ gnd vdd FILL
XFILL_6__3014_ gnd vdd FILL
XFILL_2__3006_ gnd vdd FILL
XFILL_7__1869_ gnd vdd FILL
XFILL_5__1851_ gnd vdd FILL
XFILL_1__1843_ gnd vdd FILL
XFILL_3__1769_ gnd vdd FILL
XFILL_3__2710_ gnd vdd FILL
XFILL_5__2636_ gnd vdd FILL
XFILL_5__2216_ gnd vdd FILL
XFILL_1__2628_ gnd vdd FILL
XFILL_1__2208_ gnd vdd FILL
XFILL_6__1920_ gnd vdd FILL
XFILL_2__1912_ gnd vdd FILL
XFILL_4__1838_ gnd vdd FILL
XFILL_6__2705_ gnd vdd FILL
X_3424_ _1__bF$buf3 vdd _0_ clk_bF$buf4 adj_bcd vdd 
+ gnd
+ DFFSR
X_3004_ _621_ _631_ vdd gnd INVX1
XFILL_1__2381_ gnd vdd FILL
XFILL_5__3594_ gnd vdd FILL
XFILL_5__3174_ gnd vdd FILL
XFILL_1__3586_ gnd vdd FILL
XFILL_1__3166_ gnd vdd FILL
XFILL_5__1907_ gnd vdd FILL
XFILL_2__2870_ gnd vdd FILL
XFILL_2__2450_ gnd vdd FILL
XFILL_2__2030_ gnd vdd FILL
XFILL168150x32550 gnd vdd FILL
XFILL_4__2796_ gnd vdd FILL
XFILL_4__2376_ gnd vdd FILL
X_1910_ _927_ _910_ _929_ _1027_ vdd gnd NAND3X1
XFILL_0__2696_ gnd vdd FILL
XFILL_6__3663_ gnd vdd FILL
XFILL_0__2276_ gnd vdd FILL
XFILL_6__3243_ gnd vdd FILL
XFILL_2__3655_ gnd vdd FILL
XFILL_2__3235_ gnd vdd FILL
XFILL_3__1998_ gnd vdd FILL
XFILL_5__2865_ gnd vdd FILL
XFILL_5__2445_ gnd vdd FILL
XFILL_5__2025_ gnd vdd FILL
XFILL_1__2857_ gnd vdd FILL
XFILL_1__2437_ gnd vdd FILL
XFILL_1__2017_ gnd vdd FILL
XFILL_3__3304_ gnd vdd FILL
XFILL_0__1967_ gnd vdd FILL
XFILL_6__2934_ gnd vdd FILL
X_3653_ _1714__bF$buf2 _1682_ _1732_ _1515_ vdd gnd OAI21X1
XFILL_6__2514_ gnd vdd FILL
X_3233_ _720__bF$buf1 _808_ _AXYS[3]_[4] _813_ vdd gnd OAI21X1
XFILL_1__2190_ gnd vdd FILL
XFILL_2__2926_ gnd vdd FILL
XFILL_2__2506_ gnd vdd FILL
XFILL_4__2185_ gnd vdd FILL
XFILL_6__3472_ gnd vdd FILL
XFILL_0__2085_ gnd vdd FILL
XFILL_6__3052_ gnd vdd FILL
XFILL_2__3464_ gnd vdd FILL
XFILL_2__3044_ gnd vdd FILL
X_2924_ _1187_ _1348_ _568_ vdd gnd NAND2X1
X_2504_ _196_ _198_ _199_ vdd gnd NOR2X1
XFILL_1__1881_ gnd vdd FILL
XFILL_5__2674_ gnd vdd FILL
XFILL_5__2254_ gnd vdd FILL
X_3709_ _1742_[2] DO[2] vdd gnd BUFX2
XFILL_1__2666_ gnd vdd FILL
XFILL_7__3633_ gnd vdd FILL
XFILL_1__2246_ gnd vdd FILL
XFILL_3__3533_ gnd vdd FILL
XFILL_3__3113_ gnd vdd FILL
XFILL_5__3459_ gnd vdd FILL
XFILL_5__3039_ gnd vdd FILL
XFILL_2__1950_ gnd vdd FILL
XFILL_4__1876_ gnd vdd FILL
XFILL_0__1776_ gnd vdd FILL
XFILL_6__2743_ gnd vdd FILL
X_3462_ _1709_ _1710_ vdd gnd INVX1
XFILL_6__2323_ gnd vdd FILL
X_3042_ _902__bF$buf1 _954_ _1027__bF$buf3 _657_ vdd gnd OAI21X1
XFILL_2__2735_ gnd vdd FILL
XFILL_2__2315_ gnd vdd FILL
XFILL_4__3602_ gnd vdd FILL
XFILL_6__3528_ gnd vdd FILL
XFILL_6__3108_ gnd vdd FILL
XFILL_0__3502_ gnd vdd FILL
XFILL_5__1945_ gnd vdd FILL
XFILL_1__1937_ gnd vdd FILL
XFILL_7__2904_ gnd vdd FILL
XFILL_3__2804_ gnd vdd FILL
XFILL_6__3281_ gnd vdd FILL
XFILL_2__3693_ gnd vdd FILL
XFILL_2__3273_ gnd vdd FILL
XFILL_4__3199_ gnd vdd FILL
X_2733_ _392_ _399_ _386_ _401_ vdd gnd NAND3X1
X_2313_ _1251_ _1356_ _1255_ _1420_ vdd gnd AOI21X1
XFILL_0__3099_ gnd vdd FILL
XFILL_5__2483_ gnd vdd FILL
XFILL_5__2063_ gnd vdd FILL
X_3518_ BI[3] _1739_ _1547_ _1548_ vdd gnd OAI21X1
XFILL_1__2895_ gnd vdd FILL
XFILL_1__2475_ gnd vdd FILL
XFILL_1__2055_ gnd vdd FILL
XFILL_7__3022_ gnd vdd FILL
XFILL_5__3268_ gnd vdd FILL
XFILL_6__2972_ gnd vdd FILL
XFILL_6__2552_ gnd vdd FILL
X_3691_ _1741_[0] AB[0] vdd gnd BUFX2
X_3271_ _1021_ _1235_ _847_ vdd gnd NOR2X1
XFILL_6__2132_ gnd vdd FILL
XFILL_2__2964_ gnd vdd FILL
XFILL_2__2544_ gnd vdd FILL
XFILL_2__2124_ gnd vdd FILL
XFILL168450x75750 gnd vdd FILL
XFILL_0__3311_ gnd vdd FILL
XFILL_5__1754_ gnd vdd FILL
XFILL_1__1746_ gnd vdd FILL
XFILL_3__2613_ gnd vdd FILL
XFILL_5__2959_ gnd vdd FILL
XFILL_5__2539_ gnd vdd FILL
XFILL_5__2119_ gnd vdd FILL
XFILL_6__3090_ gnd vdd FILL
XFILL_2__3082_ gnd vdd FILL
XFILL_6__1823_ gnd vdd FILL
X_2962_ _1181_ _543_ _596_ _597_ vdd gnd NAND3X1
X_2542_ _1007_ _218_ _234_ _235_ vdd gnd OAI21X1
X_2122_ _886__bF$buf6 _1205_ _1231_ vdd gnd NOR2X1
XFILL_2__1815_ gnd vdd FILL
XFILL_5__2292_ gnd vdd FILL
XFILL_6__2608_ gnd vdd FILL
X_3327_ _1__bF$buf7 vdd _5_ clk_bF$buf3 PC[3] vdd 
+ gnd
+ DFFSR
XFILL_7__3671_ gnd vdd FILL
XFILL_1__2284_ gnd vdd FILL
XFILL_7__3251_ gnd vdd FILL
XFILL_7_BUFX2_insert50 gnd vdd FILL
XFILL_7_BUFX2_insert51 gnd vdd FILL
XFILL_3__3571_ gnd vdd FILL
XFILL_7_BUFX2_insert53 gnd vdd FILL
XFILL_3__3151_ gnd vdd FILL
XFILL_7_BUFX2_insert54 gnd vdd FILL
XFILL_7_BUFX2_insert56 gnd vdd FILL
XFILL_5__3497_ gnd vdd FILL
XFILL_7_BUFX2_insert58 gnd vdd FILL
XFILL_5__3077_ gnd vdd FILL
XFILL_7_BUFX2_insert59 gnd vdd FILL
XFILL_1__3489_ gnd vdd FILL
XFILL_1__3069_ gnd vdd FILL
XFILL169350x118950 gnd vdd FILL
XFILL_6__2781_ gnd vdd FILL
XFILL_6__2361_ gnd vdd FILL
X_3080_ AN _692_ vdd gnd INVX1
XFILL169950x144150 gnd vdd FILL
XFILL_2__2773_ gnd vdd FILL
XFILL_2__2353_ gnd vdd FILL
XFILL_4__2699_ gnd vdd FILL
XFILL_4__2279_ gnd vdd FILL
X_1813_ _938_ _939_ vdd gnd INVX1
XFILL_4__3640_ gnd vdd FILL
XFILL_4__3220_ gnd vdd FILL
XFILL_0__2599_ gnd vdd FILL
XFILL_6__3566_ gnd vdd FILL
XFILL_0__2179_ gnd vdd FILL
XFILL_6__3146_ gnd vdd FILL
XFILL_0__3540_ gnd vdd FILL
XFILL_2__3558_ gnd vdd FILL
XFILL_0__3120_ gnd vdd FILL
XFILL_2__3138_ gnd vdd FILL
XFILL_5__1983_ gnd vdd FILL
XFILL_1__1975_ gnd vdd FILL
XFILL_7__2522_ gnd vdd FILL
XFILL_3__2842_ gnd vdd FILL
XFILL_3__2422_ gnd vdd FILL
XFILL_3__2002_ gnd vdd FILL
XFILL_5__2768_ gnd vdd FILL
XFILL_5__2348_ gnd vdd FILL
XFILL_7__3307_ gnd vdd FILL
XFILL_1__3701_ gnd vdd FILL
XFILL_3__3627_ gnd vdd FILL
XFILL_3__3207_ gnd vdd FILL
X_2771_ _434_ _435_ _436_ vdd gnd AND2X2
X_2351_ _1401_ _1457_ vdd gnd INVX1
XFILL_4__2911_ gnd vdd FILL
XFILL_6__2837_ gnd vdd FILL
X_3556_ alu_shift_right _1585_ _1586_ vdd gnd NOR2X1
XFILL_6__2417_ gnd vdd FILL
X_3136_ _732_ _741_ _1018_ _742_ vdd gnd OAI21X1
XFILL_7__3480_ gnd vdd FILL
XFILL_1__2093_ gnd vdd FILL
XFILL_0__2811_ gnd vdd FILL
XFILL_2__2829_ gnd vdd FILL
XFILL_2__2409_ gnd vdd FILL
XFILL_1__3298_ gnd vdd FILL
XFILL_6__2590_ gnd vdd FILL
XFILL_6__2170_ gnd vdd FILL
XFILL_2__2582_ gnd vdd FILL
XFILL_2__2162_ gnd vdd FILL
XFILL_4__2088_ gnd vdd FILL
XFILL_5__1792_ gnd vdd FILL
X_2827_ _295_ _313_ _1126_ _489_ vdd gnd OAI21X1
X_2407_ _1510_ _1463_ _1511_ vdd gnd AND2X2
XFILL_1__1784_ gnd vdd FILL
XFILL_7__2751_ gnd vdd FILL
XFILL_3__2651_ gnd vdd FILL
XFILL_3__2231_ gnd vdd FILL
XFILL_5__2997_ gnd vdd FILL
XFILL_5__2577_ gnd vdd FILL
XFILL_5__2157_ gnd vdd FILL
XFILL_1__2989_ gnd vdd FILL
XFILL_1__2569_ gnd vdd FILL
XFILL_1__2149_ gnd vdd FILL
XFILL_1__3510_ gnd vdd FILL
XFILL_3__3016_ gnd vdd FILL
XFILL_6__1861_ gnd vdd FILL
X_2580_ _267_ _1741_[7] vdd gnd INVX1
X_2160_ RDY_bF$buf6 _1268_ _1269_ vdd gnd NAND2X1
XFILL_2__1853_ gnd vdd FILL
XFILL_4__1779_ gnd vdd FILL
XFILL_4__2720_ gnd vdd FILL
XFILL_4__2300_ gnd vdd FILL
XFILL_6__2646_ gnd vdd FILL
XFILL_6__2226_ gnd vdd FILL
X_3365_ _1__bF$buf2 vdd _42_ clk_bF$buf10 inc vdd 
+ gnd
+ DFFSR
XFILL_2__2638_ gnd vdd FILL
XFILL_0__2620_ gnd vdd FILL
XFILL_0__2200_ gnd vdd FILL
XFILL_2__2218_ gnd vdd FILL
XFILL_4__3505_ gnd vdd FILL
XFILL_3__1922_ gnd vdd FILL
XFILL_5__1848_ gnd vdd FILL
XFILL_2__2391_ gnd vdd FILL
XFILL_3__2707_ gnd vdd FILL
X_1851_ state[0] _905_ _976_ vdd gnd NAND2X1
XFILL_6__3184_ gnd vdd FILL
XFILL_2__3596_ gnd vdd FILL
XFILL_2__3176_ gnd vdd FILL
XFILL_6__1917_ gnd vdd FILL
X_2636_ _914__bF$buf2 _942_ _1470_ _311_ vdd gnd OAI21X1
X_2216_ _1280_ _1324_ _1325_ vdd gnd NOR2X1
XFILL_7__2980_ gnd vdd FILL
XFILL_7__2140_ gnd vdd FILL
XFILL_2__1909_ gnd vdd FILL
XFILL_3__2880_ gnd vdd FILL
XFILL_3__2460_ gnd vdd FILL
XFILL_3__2040_ gnd vdd FILL
XFILL_5__2386_ gnd vdd FILL
XFILL_1__2798_ gnd vdd FILL
XFILL_1__2378_ gnd vdd FILL
XFILL_3__3665_ gnd vdd FILL
XFILL_3__3245_ gnd vdd FILL
XFILL_6__2875_ gnd vdd FILL
X_3594_ _1620_ _1623_ _1608_ _1624_ vdd gnd AOI21X1
XFILL_6__2455_ gnd vdd FILL
XFILL_6__2035_ gnd vdd FILL
X_3174_ _765_ _772_ _775_ _776_ vdd gnd OAI21X1
XFILL_2__2867_ gnd vdd FILL
XFILL_2__2447_ gnd vdd FILL
XFILL_2__2027_ gnd vdd FILL
X_1907_ _901_ _993_ _1024_ vdd gnd NAND2X1
XFILL_4__3314_ gnd vdd FILL
XFILL_0__3634_ gnd vdd FILL
XFILL_0__3214_ gnd vdd FILL
XFILL_7__2616_ gnd vdd FILL
XFILL_3__2936_ gnd vdd FILL
XFILL_3__2516_ gnd vdd FILL
XFILL_4__1800_ gnd vdd FILL
X_2865_ NMI_1 _524_ vdd gnd INVX1
X_2445_ _929_ _935_ _148_ vdd gnd NAND2X1
X_2025_ _1135_ _1136_ vdd gnd INVX1
XFILL_5__2195_ gnd vdd FILL
XFILL_7__3574_ gnd vdd FILL
XFILL_1__2187_ gnd vdd FILL
XFILL_7__3154_ gnd vdd FILL
XFILL_0__2905_ gnd vdd FILL
XFILL_3__3474_ gnd vdd FILL
XFILL_3__3054_ gnd vdd FILL
XFILL_2__1891_ gnd vdd FILL
XFILL_6__2684_ gnd vdd FILL
XFILL_6__2264_ gnd vdd FILL
XFILL_2__2676_ gnd vdd FILL
XFILL_2__2256_ gnd vdd FILL
XFILL_4__3543_ gnd vdd FILL
XFILL_4__3123_ gnd vdd FILL
XFILL_6__3469_ gnd vdd FILL
XFILL_6__3049_ gnd vdd FILL
XFILL_3__1960_ gnd vdd FILL
XFILL_0__3023_ gnd vdd FILL
XFILL_5__1886_ gnd vdd FILL
XFILL_1__1878_ gnd vdd FILL
XFILL_7__2845_ gnd vdd FILL
XFILL_7__2425_ gnd vdd FILL
XFILL_7__2005_ gnd vdd FILL
XFILL_3__2745_ gnd vdd FILL
XFILL_3__2325_ gnd vdd FILL
XFILL_5__3612_ gnd vdd FILL
XFILL_1__3604_ gnd vdd FILL
XFILL_6__1955_ gnd vdd FILL
X_2674_ _1007_ _330_ _346_ _347_ vdd gnd OAI21X1
X_2254_ _1284_ _1332_ _1362_ vdd gnd NAND2X1
XFILL_2__1947_ gnd vdd FILL
XFILL_4__2814_ gnd vdd FILL
X_3459_ AN _1707_ vdd gnd INVX1
X_3039_ _893_ _647_ _655_ _60_ vdd gnd OAI21X1
XFILL_0__2714_ gnd vdd FILL
XFILL_3__3283_ gnd vdd FILL
XFILL_6__2493_ gnd vdd FILL
XFILL_6__2073_ gnd vdd FILL
XFILL_2__2485_ gnd vdd FILL
XFILL_2__2065_ gnd vdd FILL
X_1945_ _1061_ _1062_ vdd gnd INVX1
XFILL_6__3698_ gnd vdd FILL
XFILL_6__3278_ gnd vdd FILL
XFILL_0__3672_ gnd vdd FILL
XFILL_0__3252_ gnd vdd FILL
XFILL_7__2654_ gnd vdd FILL
XFILL_7__2234_ gnd vdd FILL
XFILL_3__2974_ gnd vdd FILL
XFILL_3__2554_ gnd vdd FILL
XFILL_3__2134_ gnd vdd FILL
XFILL_7__3019_ gnd vdd FILL
XFILL_5__3001_ gnd vdd FILL
XFILL_6__1764_ gnd vdd FILL
X_2483_ _179_ _174_ _180_ _181_ vdd gnd OAI21X1
X_2063_ _1167_ _1171_ _1172_ vdd gnd NAND2X1
XFILL_2__1756_ gnd vdd FILL
XFILL_4__2623_ gnd vdd FILL
XFILL_4__2203_ gnd vdd FILL
XFILL_6__2969_ gnd vdd FILL
X_3688_ _1513_ vdd _1523_ clk_bF$buf3 ADD[6] vdd 
+ gnd
+ DFFSR
XFILL_6__2549_ gnd vdd FILL
X_3268_ _977_ _1427_ _929_ _844_ vdd gnd OAI21X1
XFILL_6__2129_ gnd vdd FILL
XFILL_0__2943_ gnd vdd FILL
XFILL_0__2523_ gnd vdd FILL
XFILL_0__2103_ gnd vdd FILL
XFILL_3__3092_ gnd vdd FILL
XFILL_3__1825_ gnd vdd FILL
XFILL_0__3308_ gnd vdd FILL
XFILL_2__2294_ gnd vdd FILL
X_1754_ RDY_bF$buf9 DI[3] _885_ vdd gnd NAND2X1
XFILL_4__3581_ gnd vdd FILL
XFILL_4__3161_ gnd vdd FILL
XFILL_6__3087_ gnd vdd FILL
XFILL_2__3499_ gnd vdd FILL
XFILL_0__3481_ gnd vdd FILL
XFILL_2__3079_ gnd vdd FILL
XFILL_0__3061_ gnd vdd FILL
X_2959_ _309_ _593_ _594_ _595_ _40_ vdd 
+ gnd
+ OAI22X1
X_2539_ _216_ _209_ ADD[2] _232_ vdd gnd OAI21X1
X_2119_ _1227_ _1224_ _1226_ _1228_ vdd gnd NAND3X1
XFILL_7__2883_ gnd vdd FILL
XFILL_7__2043_ gnd vdd FILL
XFILL_3__2783_ gnd vdd FILL
XFILL_3__2363_ gnd vdd FILL
XFILL_5__2289_ gnd vdd FILL
XFILL_5__3650_ gnd vdd FILL
XFILL_5__3230_ gnd vdd FILL
XFILL_7__3248_ gnd vdd FILL
XFILL_1__3642_ gnd vdd FILL
XFILL_1__3222_ gnd vdd FILL
XFILL_3__3568_ gnd vdd FILL
XFILL_3__3148_ gnd vdd FILL
XFILL_6__1993_ gnd vdd FILL
X_2292_ _1213_ _1215_ _1328_ _1399_ vdd gnd OAI21X1
XFILL_2__1985_ gnd vdd FILL
XFILL_4__2852_ gnd vdd FILL
XFILL_4__2432_ gnd vdd FILL
XFILL_4__2012_ gnd vdd FILL
XFILL_6__2778_ gnd vdd FILL
X_3497_ BI[5] _1739_ _1526_ _1527_ vdd gnd OAI21X1
XFILL_6__2358_ gnd vdd FILL
X_3077_ _687_ load_reg _688_ _689_ vdd gnd AOI21X1
XFILL_0__2752_ gnd vdd FILL
XFILL_0__2332_ gnd vdd FILL
XFILL_2__3711_ gnd vdd FILL
XFILL_4__3637_ gnd vdd FILL
XFILL_4__3217_ gnd vdd FILL
XFILL_0__3537_ gnd vdd FILL
XFILL_0__3117_ gnd vdd FILL
XFILL_5__2921_ gnd vdd FILL
XFILL_7__2519_ gnd vdd FILL
XFILL_5__2501_ gnd vdd FILL
XFILL_1__2913_ gnd vdd FILL
XFILL_3__2839_ gnd vdd FILL
XFILL_3__2419_ gnd vdd FILL
X_1983_ _1049_ _AXYS[3]_[2] _AXYS[2]_[2] _1057_ _1098_ vdd 
+ gnd
+ AOI22X1
XFILL_5__3706_ gnd vdd FILL
XFILL_0__3290_ gnd vdd FILL
X_2768_ ABH[2] _323_ _432_ _433_ vdd gnd AOI21X1
X_2348_ _1308_ _1256_ _1302_ _1455_ vdd gnd NAND3X1
XFILL_7__2272_ gnd vdd FILL
XFILL_3__2592_ gnd vdd FILL
XFILL_3__2172_ gnd vdd FILL
XFILL_5__2098_ gnd vdd FILL
XFILL_4__2908_ gnd vdd FILL
XFILL_7__3477_ gnd vdd FILL
XFILL_7__3057_ gnd vdd FILL
XFILL_0__2808_ gnd vdd FILL
XFILL_1__3451_ gnd vdd FILL
XFILL_1__3031_ gnd vdd FILL
XFILL_2__1794_ gnd vdd FILL
XFILL_4__2661_ gnd vdd FILL
XFILL_4__2241_ gnd vdd FILL
XFILL_6__2587_ gnd vdd FILL
XFILL_6__2167_ gnd vdd FILL
XFILL_2__2999_ gnd vdd FILL
XFILL_0__2981_ gnd vdd FILL
XFILL_0__2561_ gnd vdd FILL
XFILL_2__2579_ gnd vdd FILL
XFILL_2__2159_ gnd vdd FILL
XFILL_0__2141_ gnd vdd FILL
XFILL_2__3520_ gnd vdd FILL
XFILL_2__3100_ gnd vdd FILL
XFILL_7__1963_ gnd vdd FILL
XFILL_4__3026_ gnd vdd FILL
XFILL_3__1863_ gnd vdd FILL
XFILL_5__1789_ gnd vdd FILL
XFILL_7__2748_ gnd vdd FILL
XFILL_5__2730_ gnd vdd FILL
XFILL_5__2310_ gnd vdd FILL
XFILL_1__2722_ gnd vdd FILL
XFILL_1__2302_ gnd vdd FILL
XFILL_3__2648_ gnd vdd FILL
XFILL_3__2228_ gnd vdd FILL
X_1792_ load_only _917_ _918_ vdd gnd NOR2X1
XFILL_5__3515_ gnd vdd FILL
XFILL_1__3507_ gnd vdd FILL
XFILL_4__1932_ gnd vdd FILL
XFILL_6__1858_ gnd vdd FILL
X_2997_ _1327_ _1178_ _1161_ _625_ vdd gnd OAI21X1
X_2577_ _263_ _264_ _265_ vdd gnd AND2X2
X_2157_ _1262_ _1265_ _1259_ _1266_ vdd gnd NAND3X1
XFILL_0__1832_ gnd vdd FILL
XFILL_4__2717_ gnd vdd FILL
XFILL_7__3286_ gnd vdd FILL
XFILL_0__2617_ gnd vdd FILL
XFILL_1__3260_ gnd vdd FILL
XFILL_3__3186_ gnd vdd FILL
XFILL_3__1919_ gnd vdd FILL
XFILL_4__2890_ gnd vdd FILL
XFILL_4__2470_ gnd vdd FILL
XFILL_4__2050_ gnd vdd FILL
XFILL_6__2396_ gnd vdd FILL
XFILL_0__2790_ gnd vdd FILL
XFILL_0__2370_ gnd vdd FILL
XFILL_2__2388_ gnd vdd FILL
X_1848_ state[2] state[3] _973_ vdd gnd NOR2X1
XFILL_4__3675_ gnd vdd FILL
XFILL_7__1772_ gnd vdd FILL
XFILL_4__3255_ gnd vdd FILL
XFILL_0__3575_ gnd vdd FILL
XFILL_0__3155_ gnd vdd FILL
XFILL_7__2977_ gnd vdd FILL
XFILL_7__2137_ gnd vdd FILL
XFILL_1__2951_ gnd vdd FILL
XFILL_1__2531_ gnd vdd FILL
XFILL_1__2111_ gnd vdd FILL
XFILL_3__2877_ gnd vdd FILL
XFILL_3__2457_ gnd vdd FILL
XFILL_3__2037_ gnd vdd FILL
XFILL_1__3316_ gnd vdd FILL
X_2386_ _1485_ _1486_ _1491_ _1492_ vdd gnd NAND3X1
XFILL_2__2600_ gnd vdd FILL
XFILL_4__2946_ gnd vdd FILL
XFILL_4__2526_ gnd vdd FILL
XFILL_4__2106_ gnd vdd FILL
XFILL_7__3095_ gnd vdd FILL
XFILL_0__2846_ gnd vdd FILL
XFILL_0__2426_ gnd vdd FILL
XFILL_0__2006_ gnd vdd FILL
XFILL_5__1810_ gnd vdd FILL
XFILL_1__1802_ gnd vdd FILL
XFILL_2__2197_ gnd vdd FILL
XFILL_4__3484_ gnd vdd FILL
XFILL_4__3064_ gnd vdd FILL
XFILL_7__2366_ gnd vdd FILL
XFILL_1__2760_ gnd vdd FILL
XFILL_1__2340_ gnd vdd FILL
XFILL_3__2686_ gnd vdd FILL
XFILL_3__2266_ gnd vdd FILL
XFILL_5__3553_ gnd vdd FILL
XFILL_5__3133_ gnd vdd FILL
XFILL_1__3545_ gnd vdd FILL
XFILL_1__3125_ gnd vdd FILL
XFILL_4__1970_ gnd vdd FILL
XFILL_6__1896_ gnd vdd FILL
X_2195_ _1303_ _1304_ vdd gnd INVX1
XFILL_2__1888_ gnd vdd FILL
XFILL_0__1870_ gnd vdd FILL
XFILL_4__2755_ gnd vdd FILL
XFILL_4__2335_ gnd vdd FILL
XFILL_0__2655_ gnd vdd FILL
XFILL_6__3622_ gnd vdd FILL
XFILL_0__2235_ gnd vdd FILL
XFILL_6__3202_ gnd vdd FILL
XFILL_2__3614_ gnd vdd FILL
XFILL_3__1957_ gnd vdd FILL
XFILL_5__2824_ gnd vdd FILL
XFILL_5__2404_ gnd vdd FILL
XFILL_1__2816_ gnd vdd FILL
X_1886_ _1007_ _968_ _1008_ _1004_ BI[2] vdd 
+ gnd
+ OAI22X1
XFILL_4__3293_ gnd vdd FILL
XFILL_5__3609_ gnd vdd FILL
XFILL_0__3193_ gnd vdd FILL
XFILL_7__2595_ gnd vdd FILL
XFILL_7__2175_ gnd vdd FILL
XFILL_0__1926_ gnd vdd FILL
X_3612_ AI[6] _1641_ _1642_ vdd gnd NAND2X1
XFILL_3__2495_ gnd vdd FILL
XFILL_3__2075_ gnd vdd FILL
XFILL_4__2984_ gnd vdd FILL
XFILL_4__2564_ gnd vdd FILL
XFILL_4__2144_ gnd vdd FILL
XFILL_0__2884_ gnd vdd FILL
XFILL_0__2464_ gnd vdd FILL
XFILL_0__2044_ gnd vdd FILL
XFILL_6__3011_ gnd vdd FILL
XFILL_2__3003_ gnd vdd FILL
XFILL_7__1866_ gnd vdd FILL
XFILL_1__1840_ gnd vdd FILL
XFILL_0__3669_ gnd vdd FILL
XFILL_3__1766_ gnd vdd FILL
XFILL_0__3249_ gnd vdd FILL
XFILL_5__2633_ gnd vdd FILL
XFILL_5__2213_ gnd vdd FILL
XFILL_1__2625_ gnd vdd FILL
XFILL_1__2205_ gnd vdd FILL
XFILL_4__1835_ gnd vdd FILL
XFILL_6__2702_ gnd vdd FILL
X_3421_ _1__bF$buf8 vdd _90_ clk_bF$buf7 _AXYS[2]_[5] vdd 
+ gnd
+ DFFSR
X_3001_ _1042_ _1150__bF$buf4 _628_ _49_ vdd gnd OAI21X1
XFILL_5__3591_ gnd vdd FILL
XFILL_5__3171_ gnd vdd FILL
XFILL_1__3583_ gnd vdd FILL
XFILL_1__3163_ gnd vdd FILL
XFILL_3__3089_ gnd vdd FILL
XFILL_5__1904_ gnd vdd FILL
XFILL_4__2793_ gnd vdd FILL
XFILL_4__2373_ gnd vdd FILL
XFILL_6__2299_ gnd vdd FILL
XFILL_0__2693_ gnd vdd FILL
XFILL_6__3660_ gnd vdd FILL
XFILL_0__2273_ gnd vdd FILL
XFILL_6__3240_ gnd vdd FILL
XFILL_2__3652_ gnd vdd FILL
XFILL_2__3232_ gnd vdd FILL
XFILL_4__3578_ gnd vdd FILL
XFILL_4__3158_ gnd vdd FILL
XFILL_3__1995_ gnd vdd FILL
XFILL_0__3478_ gnd vdd FILL
XFILL_0__3058_ gnd vdd FILL
XFILL_5__2862_ gnd vdd FILL
XFILL_5__2442_ gnd vdd FILL
XFILL_5__2022_ gnd vdd FILL
XFILL168750x144150 gnd vdd FILL
XFILL_1__2854_ gnd vdd FILL
XFILL_1__2434_ gnd vdd FILL
XFILL_1__2014_ gnd vdd FILL
XFILL_3__3301_ gnd vdd FILL
XFILL_5__3647_ gnd vdd FILL
XFILL_5__3227_ gnd vdd FILL
XFILL_1__3639_ gnd vdd FILL
XFILL_1__3219_ gnd vdd FILL
X_2289_ _1395_ _1396_ vdd gnd INVX1
XFILL_0__1964_ gnd vdd FILL
XFILL_6__2931_ gnd vdd FILL
X_3650_ _1679_ _1673_ _1680_ vdd gnd NAND2X1
XFILL_6__2511_ gnd vdd FILL
X_3230_ _744_ _807_ _811_ _95_ vdd gnd OAI21X1
XFILL_3_BUFX2_insert70 gnd vdd FILL
XFILL_3_BUFX2_insert71 gnd vdd FILL
XFILL_3_BUFX2_insert72 gnd vdd FILL
XFILL_2__2923_ gnd vdd FILL
XFILL_3_BUFX2_insert73 gnd vdd FILL
XFILL_2__2503_ gnd vdd FILL
XFILL_3_BUFX2_insert74 gnd vdd FILL
XFILL_3_BUFX2_insert75 gnd vdd FILL
XFILL_3_BUFX2_insert76 gnd vdd FILL
XFILL_3_BUFX2_insert77 gnd vdd FILL
XFILL_4__2849_ gnd vdd FILL
XFILL_3_BUFX2_insert78 gnd vdd FILL
XFILL_4__2429_ gnd vdd FILL
XFILL_3_BUFX2_insert79 gnd vdd FILL
XFILL_4__2009_ gnd vdd FILL
XFILL_0__2749_ gnd vdd FILL
XFILL_0__2329_ gnd vdd FILL
XFILL_2__3708_ gnd vdd FILL
XFILL_4__2182_ gnd vdd FILL
XFILL_5__2918_ gnd vdd FILL
XFILL_0__2082_ gnd vdd FILL
XFILL_2__3461_ gnd vdd FILL
XFILL_2__3041_ gnd vdd FILL
X_2921_ _556_ _561_ _566_ vdd gnd NOR2X1
X_2501_ _902__bF$buf1 _949_ _909_ _196_ vdd gnd OAI21X1
XFILL_0__3287_ gnd vdd FILL
XFILL_5__2671_ gnd vdd FILL
XFILL_7__2269_ gnd vdd FILL
XFILL_5__2251_ gnd vdd FILL
X_3706_ _1741_[9] AB[9] vdd gnd BUFX2
XFILL_1__2663_ gnd vdd FILL
XFILL_7__3630_ gnd vdd FILL
XFILL_1__2243_ gnd vdd FILL
XFILL_3__2589_ gnd vdd FILL
XFILL_3__2169_ gnd vdd FILL
XFILL_3__3530_ gnd vdd FILL
XFILL_3__3110_ gnd vdd FILL
XFILL_5__3456_ gnd vdd FILL
XFILL_5__3036_ gnd vdd FILL
XFILL_1__3028_ gnd vdd FILL
XFILL_4__1873_ gnd vdd FILL
XFILL_6__1799_ gnd vdd FILL
X_2098_ write_back _1207_ vdd gnd INVX1
XFILL_0__1773_ gnd vdd FILL
XFILL_6__2740_ gnd vdd FILL
XFILL_6__2320_ gnd vdd FILL
XFILL_2__2732_ gnd vdd FILL
XFILL_2__2312_ gnd vdd FILL
XFILL_4__2658_ gnd vdd FILL
XFILL_4__2238_ gnd vdd FILL
XFILL_0__2978_ gnd vdd FILL
XFILL_0__2558_ gnd vdd FILL
XFILL_6__3525_ gnd vdd FILL
XFILL_0__2138_ gnd vdd FILL
XFILL_6__3105_ gnd vdd FILL
XFILL_2__3517_ gnd vdd FILL
XFILL_5__1942_ gnd vdd FILL
XFILL_1__1934_ gnd vdd FILL
XFILL_7__2901_ gnd vdd FILL
XFILL_3__2801_ gnd vdd FILL
XFILL_5__2727_ gnd vdd FILL
XFILL_5__2307_ gnd vdd FILL
XFILL_1__2719_ gnd vdd FILL
XFILL_2__3270_ gnd vdd FILL
X_1789_ _912_ _914__bF$buf2 _909_ _915_ vdd gnd OAI21X1
XFILL_4__3196_ gnd vdd FILL
X_2730_ _322_ AN _397_ _398_ vdd gnd AOI21X1
X_2310_ _1172_ _1212_ _1150__bF$buf0 _1417_ vdd gnd OAI21X1
XFILL_0__3096_ gnd vdd FILL
XFILL_4__1929_ gnd vdd FILL
XFILL_5__2480_ gnd vdd FILL
XFILL_7__2498_ gnd vdd FILL
XFILL_5__2060_ gnd vdd FILL
XFILL_0__1829_ gnd vdd FILL
X_3515_ _1722_ _1537_ _1544_ _1545_ vdd gnd OAI21X1
XFILL_1__2892_ gnd vdd FILL
XFILL_1__2472_ gnd vdd FILL
XFILL_1__2052_ gnd vdd FILL
XFILL_3__2398_ gnd vdd FILL
XFILL_5__3265_ gnd vdd FILL
XFILL_1__3677_ gnd vdd FILL
XFILL_1__3257_ gnd vdd FILL
XFILL_2__2961_ gnd vdd FILL
XFILL_2__2541_ gnd vdd FILL
XFILL_2__2121_ gnd vdd FILL
XFILL_4__2887_ gnd vdd FILL
XFILL_4__2467_ gnd vdd FILL
XFILL_4__2047_ gnd vdd FILL
XFILL_0__2787_ gnd vdd FILL
XFILL_0__2367_ gnd vdd FILL
XFILL_5__1751_ gnd vdd FILL
XFILL_7__1769_ gnd vdd FILL
XFILL_3__2610_ gnd vdd FILL
XFILL_5__2956_ gnd vdd FILL
XFILL_5__2536_ gnd vdd FILL
XFILL_5__2116_ gnd vdd FILL
XFILL_1__2948_ gnd vdd FILL
XFILL_1__2528_ gnd vdd FILL
XFILL_1__2108_ gnd vdd FILL
XFILL_6__1820_ gnd vdd FILL
XFILL_2__1812_ gnd vdd FILL
XFILL_6__2605_ gnd vdd FILL
X_3324_ _1__bF$buf7 vdd _2_ clk_bF$buf3 PC[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2281_ gnd vdd FILL
XFILL_7_BUFX2_insert21 gnd vdd FILL
XFILL_7_BUFX2_insert22 gnd vdd FILL
XFILL_7_BUFX2_insert24 gnd vdd FILL
XFILL_7_BUFX2_insert25 gnd vdd FILL
XFILL_5__3494_ gnd vdd FILL
XFILL_5__3074_ gnd vdd FILL
XFILL_1__3486_ gnd vdd FILL
XFILL_1__3066_ gnd vdd FILL
XFILL_5__1807_ gnd vdd FILL
XFILL_2__2770_ gnd vdd FILL
XFILL_2__2350_ gnd vdd FILL
XFILL_4__2696_ gnd vdd FILL
XFILL_4__2276_ gnd vdd FILL
X_1810_ _903__bF$buf3 _935_ _936_ vdd gnd NAND2X1
XFILL_0__2596_ gnd vdd FILL
XFILL_6__3563_ gnd vdd FILL
XFILL_0__2176_ gnd vdd FILL
XFILL_6__3143_ gnd vdd FILL
XFILL_2__3555_ gnd vdd FILL
XFILL_2__3135_ gnd vdd FILL
XFILL_5__1980_ gnd vdd FILL
XFILL_7__1998_ gnd vdd FILL
XFILL_1__1972_ gnd vdd FILL
XFILL_3__1898_ gnd vdd FILL
XFILL_5__2765_ gnd vdd FILL
XFILL_5__2345_ gnd vdd FILL
XFILL_1__2757_ gnd vdd FILL
XFILL_1__2337_ gnd vdd FILL
XFILL_7__3304_ gnd vdd FILL
XFILL_3__3624_ gnd vdd FILL
XFILL_3__3204_ gnd vdd FILL
XFILL169950x165750 gnd vdd FILL
XFILL_4__1967_ gnd vdd FILL
XFILL_0__1867_ gnd vdd FILL
XFILL_6__2834_ gnd vdd FILL
X_3553_ _1740_ _1575_ _1582_ _1583_ vdd gnd OAI21X1
XFILL_6__2414_ gnd vdd FILL
X_3133_ _431_ _727_ _739_ vdd gnd NOR2X1
XFILL_1__2090_ gnd vdd FILL
XFILL_2__2826_ gnd vdd FILL
XFILL_2__2406_ gnd vdd FILL
XFILL_6__3619_ gnd vdd FILL
XFILL_1__3295_ gnd vdd FILL
XFILL_4__2085_ gnd vdd FILL
X_2824_ _467_ _486_ _487_ vdd gnd AND2X2
X_2404_ _1478_ _1508_ vdd gnd INVX1
XFILL_1__1781_ gnd vdd FILL
XFILL_5__2994_ gnd vdd FILL
XFILL_5__2574_ gnd vdd FILL
XFILL_5__2154_ gnd vdd FILL
X_3609_ _1638_ _1639_ vdd gnd INVX1
XFILL_1__2986_ gnd vdd FILL
XFILL_1__2566_ gnd vdd FILL
XFILL_7__3533_ gnd vdd FILL
XFILL_1__2146_ gnd vdd FILL
XFILL_3__3013_ gnd vdd FILL
XFILL_2__1850_ gnd vdd FILL
XFILL_4__1776_ gnd vdd FILL
XFILL_6__2643_ gnd vdd FILL
X_3362_ _1__bF$buf6 vdd _39_ clk_bF$buf10 shift vdd 
+ gnd
+ DFFSR
XFILL_6__2223_ gnd vdd FILL
XFILL_2__2635_ gnd vdd FILL
XFILL_2__2215_ gnd vdd FILL
XFILL_4__3502_ gnd vdd FILL
XFILL_6__3008_ gnd vdd FILL
XFILL_5__1845_ gnd vdd FILL
XFILL_1__1837_ gnd vdd FILL
XFILL_7__2804_ gnd vdd FILL
XFILL_3__2704_ gnd vdd FILL
XFILL_6__3181_ gnd vdd FILL
XFILL_2__3593_ gnd vdd FILL
XFILL_2__3173_ gnd vdd FILL
XFILL_4__3099_ gnd vdd FILL
XFILL_6__1914_ gnd vdd FILL
X_2633_ shift_right _310_ vdd gnd INVX1
X_2213_ _1314_ _1321_ _1318_ _1322_ vdd gnd NAND3X1
XFILL_2__1906_ gnd vdd FILL
XFILL_5__2383_ gnd vdd FILL
X_3418_ _1__bF$buf8 vdd _87_ clk_bF$buf7 _AXYS[2]_[2] vdd 
+ gnd
+ DFFSR
XFILL_1__2795_ gnd vdd FILL
XFILL_1__2375_ gnd vdd FILL
XFILL_3__3662_ gnd vdd FILL
XFILL_3__3242_ gnd vdd FILL
XFILL_5__3588_ gnd vdd FILL
XFILL_5__3168_ gnd vdd FILL
XFILL169650x150 gnd vdd FILL
XFILL_6__2872_ gnd vdd FILL
X_3591_ _1568_ _1570_ _1571_ _1621_ vdd gnd OAI21X1
XFILL_6__2452_ gnd vdd FILL
X_3171_ _765_ _772_ _773_ vdd gnd NAND2X1
XFILL_6__2032_ gnd vdd FILL
XFILL_2__2864_ gnd vdd FILL
XFILL_2__2444_ gnd vdd FILL
XFILL_2__2024_ gnd vdd FILL
X_1904_ _914__bF$buf3 _958_ _1021_ vdd gnd NOR2X1
XFILL_4__3311_ gnd vdd FILL
XFILL_6__3657_ gnd vdd FILL
XFILL_6__3237_ gnd vdd FILL
XFILL_2__3649_ gnd vdd FILL
XFILL_0__3631_ gnd vdd FILL
XFILL_2__3229_ gnd vdd FILL
XFILL_0__3211_ gnd vdd FILL
XFILL169650x118950 gnd vdd FILL
XFILL_3__2933_ gnd vdd FILL
XFILL_3__2513_ gnd vdd FILL
XFILL_5__2859_ gnd vdd FILL
XFILL_5__2439_ gnd vdd FILL
XFILL_5__2019_ gnd vdd FILL
X_2862_ _500_ _509_ _466_ _522_ vdd gnd NAND3X1
X_2442_ ADD[0] _144_ _145_ vdd gnd NAND2X1
X_2022_ _1132_ _1133_ vdd gnd INVX1
XFILL_5__2192_ gnd vdd FILL
XFILL_6__2928_ gnd vdd FILL
XFILL_6__2508_ gnd vdd FILL
X_3647_ _1634_ _1671_ _1677_ vdd gnd NAND2X1
X_3227_ _720__bF$buf3 _808_ _AXYS[3]_[1] _810_ vdd gnd OAI21X1
XFILL_7__3571_ gnd vdd FILL
XFILL_1__2184_ gnd vdd FILL
XFILL_7__3151_ gnd vdd FILL
XFILL_0__2902_ gnd vdd FILL
XFILL_3__3471_ gnd vdd FILL
XFILL_3__3051_ gnd vdd FILL
XFILL_6__2681_ gnd vdd FILL
XFILL_6__2261_ gnd vdd FILL
XFILL_2__2673_ gnd vdd FILL
XFILL_2__2253_ gnd vdd FILL
XFILL_4__2599_ gnd vdd FILL
XFILL_4__2179_ gnd vdd FILL
XFILL_4__3540_ gnd vdd FILL
XFILL_4__3120_ gnd vdd FILL
XFILL_0__2499_ gnd vdd FILL
XFILL_6__3466_ gnd vdd FILL
XFILL_0__2079_ gnd vdd FILL
XFILL_6__3046_ gnd vdd FILL
XFILL_2__3458_ gnd vdd FILL
XFILL_0__3020_ gnd vdd FILL
XFILL_2__3038_ gnd vdd FILL
XFILL_5__1883_ gnd vdd FILL
X_2918_ _1181_ _561_ _562_ _563_ vdd gnd AOI21X1
XFILL_1__1875_ gnd vdd FILL
XFILL_7__2422_ gnd vdd FILL
XFILL_3__2742_ gnd vdd FILL
XFILL_3__2322_ gnd vdd FILL
XFILL_5__2668_ gnd vdd FILL
XFILL_5__2248_ gnd vdd FILL
XFILL_7__3627_ gnd vdd FILL
XFILL_7__3207_ gnd vdd FILL
XFILL_1__3601_ gnd vdd FILL
XFILL_3__3527_ gnd vdd FILL
XFILL_3__3107_ gnd vdd FILL
XFILL_6__1952_ gnd vdd FILL
X_2671_ ABL[2] _323_ _322_ ADD[2] _344_ vdd 
+ gnd
+ AOI22X1
X_2251_ RDY_bF$buf5 _982_ _1359_ vdd gnd NAND2X1
XFILL_2__1944_ gnd vdd FILL
XFILL168450x61350 gnd vdd FILL
XFILL_4__2811_ gnd vdd FILL
XFILL_6__2737_ gnd vdd FILL
X_3456_ _1703_ CO _1704_ vdd gnd AND2X2
XFILL_6__2317_ gnd vdd FILL
X_3036_ reset _645_ IRHOLD[6] _654_ vdd gnd OAI21X1
XFILL_0__2711_ gnd vdd FILL
XFILL_2__2729_ gnd vdd FILL
XFILL_2__2309_ gnd vdd FILL
XFILL_3__3280_ gnd vdd FILL
XFILL_1__3198_ gnd vdd FILL
XFILL_5__1939_ gnd vdd FILL
XFILL_6__2490_ gnd vdd FILL
XFILL_6__2070_ gnd vdd FILL
XFILL_2__2482_ gnd vdd FILL
XFILL_2__2062_ gnd vdd FILL
X_1942_ _1054_ _1058_ _1050_ _1059_ vdd gnd NAND3X1
XFILL_6__3695_ gnd vdd FILL
XFILL_6__3275_ gnd vdd FILL
XFILL_2__3267_ gnd vdd FILL
X_2727_ RDY_bF$buf0 _1014_ _393_ _395_ _8_ vdd 
+ gnd
+ OAI22X1
X_2307_ _1175_ _1413_ _1411_ _1414_ vdd gnd OAI21X1
XFILL_7__2651_ gnd vdd FILL
XFILL_3__2971_ gnd vdd FILL
XFILL_3__2551_ gnd vdd FILL
XFILL_3__2131_ gnd vdd FILL
XFILL_5__2897_ gnd vdd FILL
XFILL_5__2477_ gnd vdd FILL
XFILL_5__2057_ gnd vdd FILL
XFILL_1__2889_ gnd vdd FILL
XFILL_1__2469_ gnd vdd FILL
XFILL_1__2049_ gnd vdd FILL
XFILL_7__3016_ gnd vdd FILL
XFILL_6__1761_ gnd vdd FILL
X_2480_ _1012_ _136_ _165_ _178_ vdd gnd OAI21X1
X_2060_ IRHOLD[2] _1169_ vdd gnd INVX1
XFILL_2__1753_ gnd vdd FILL
XFILL_4__2620_ gnd vdd FILL
XFILL_4__2200_ gnd vdd FILL
XFILL_0__1999_ gnd vdd FILL
XFILL_6__2966_ gnd vdd FILL
X_3685_ _1513_ vdd _1520_ clk_bF$buf5 ADD[3] vdd 
+ gnd
+ DFFSR
XFILL_6__2546_ gnd vdd FILL
X_3265_ _314_ _839_ _840_ _841_ vdd gnd NAND3X1
XFILL_6__2126_ gnd vdd FILL
XFILL_2__2958_ gnd vdd FILL
XFILL_0__2940_ gnd vdd FILL
XFILL_0__2520_ gnd vdd FILL
XFILL_2__2538_ gnd vdd FILL
XFILL_2__2118_ gnd vdd FILL
XFILL_0__2100_ gnd vdd FILL
XFILL_7__1922_ gnd vdd FILL
XFILL_3__1822_ gnd vdd FILL
XFILL_0__3305_ gnd vdd FILL
XFILL_5__1748_ gnd vdd FILL
XFILL_2__2291_ gnd vdd FILL
XFILL_3__2607_ gnd vdd FILL
X_1751_ RDY_bF$buf9 DI[2] _883_ vdd gnd NAND2X1
XFILL_6__3084_ gnd vdd FILL
XFILL_2__3496_ gnd vdd FILL
XFILL_2__3076_ gnd vdd FILL
X_2956_ _592_ _593_ vdd gnd INVX1
XFILL_6__1817_ gnd vdd FILL
X_2536_ _1005_ _218_ _229_ _230_ vdd gnd OAI21X1
X_2116_ _974_ _1225_ vdd gnd INVX1
XFILL_7__2880_ gnd vdd FILL
XFILL_7__2040_ gnd vdd FILL
XFILL_2__1809_ gnd vdd FILL
XFILL_3__2780_ gnd vdd FILL
XFILL_3__2360_ gnd vdd FILL
XFILL_5__2286_ gnd vdd FILL
XFILL_1__2698_ gnd vdd FILL
XFILL_1__2278_ gnd vdd FILL
XFILL_3__3565_ gnd vdd FILL
XFILL_3__3145_ gnd vdd FILL
XFILL_6__1990_ gnd vdd FILL
XFILL_2__1982_ gnd vdd FILL
XFILL_6__2775_ gnd vdd FILL
X_3494_ alu_op[2] _1725_ _1739_ vdd gnd NAND2X1
XFILL_6__2355_ gnd vdd FILL
X_3074_ _1055_ _1036_ _1045_ _686_ vdd gnd OAI21X1
XFILL_2__2767_ gnd vdd FILL
XFILL_2__2347_ gnd vdd FILL
X_1807_ _925_ _932_ CO _933_ vdd gnd OAI21X1
XFILL_4__3634_ gnd vdd FILL
XFILL_4__3214_ gnd vdd FILL
XFILL_0__3534_ gnd vdd FILL
XFILL_0__3114_ gnd vdd FILL
XFILL_5__1977_ gnd vdd FILL
XFILL_1__1969_ gnd vdd FILL
XFILL_7__2516_ gnd vdd FILL
XFILL_1__2910_ gnd vdd FILL
XFILL_3__2836_ gnd vdd FILL
XFILL_3__2416_ gnd vdd FILL
X_1980_ _1082_ ADD[1] _1095_ _1096_ vdd gnd AOI21X1
XFILL_5__3703_ gnd vdd FILL
X_2765_ _428_ _401_ _430_ vdd gnd NOR2X1
X_2345_ _1358_ _1363_ _1452_ vdd gnd OR2X2
XFILL_5__2095_ gnd vdd FILL
XFILL_4__2905_ gnd vdd FILL
XFILL_7__3474_ gnd vdd FILL
XFILL_1__2087_ gnd vdd FILL
XFILL_7__3054_ gnd vdd FILL
XFILL_0__2805_ gnd vdd FILL
XFILL_2__1791_ gnd vdd FILL
XFILL_6__2584_ gnd vdd FILL
XFILL_6__2164_ gnd vdd FILL
XFILL_2__2996_ gnd vdd FILL
XFILL_2__2576_ gnd vdd FILL
XFILL_2__2156_ gnd vdd FILL
XFILL_4__3023_ gnd vdd FILL
XFILL_3__1860_ gnd vdd FILL
XFILL_5__1786_ gnd vdd FILL
XFILL_1__1778_ gnd vdd FILL
XFILL_7__2745_ gnd vdd FILL
XFILL_7__2325_ gnd vdd FILL
XFILL_3__2645_ gnd vdd FILL
XFILL_3__2225_ gnd vdd FILL
XFILL_5__3512_ gnd vdd FILL
XFILL_1__3504_ gnd vdd FILL
XFILL_6__1855_ gnd vdd FILL
X_2994_ _1160_ _621_ _622_ _623_ vdd gnd OAI21X1
X_2574_ _262_ _1741_[6] vdd gnd INVX1
X_2154_ _914__bF$buf2 _1069_ _1263_ vdd gnd NOR2X1
XFILL_2__1847_ gnd vdd FILL
XFILL_4__2714_ gnd vdd FILL
X_3359_ _1__bF$buf6 vdd _36_ clk_bF$buf9 rotate vdd 
+ gnd
+ DFFSR
XFILL_7__3283_ gnd vdd FILL
XFILL_0__2614_ gnd vdd FILL
XFILL_3__3183_ gnd vdd FILL
XFILL_3__1916_ gnd vdd FILL
XFILL_6__2393_ gnd vdd FILL
XFILL_2__2385_ gnd vdd FILL
X_1845_ state[2] state[3] _970_ vdd gnd NAND2X1
XFILL_4__3672_ gnd vdd FILL
XFILL_4__3252_ gnd vdd FILL
XFILL_6__3598_ gnd vdd FILL
XFILL_6__3178_ gnd vdd FILL
XFILL_0__3572_ gnd vdd FILL
XFILL_0__3152_ gnd vdd FILL
XFILL_7__2974_ gnd vdd FILL
XFILL_7__2554_ gnd vdd FILL
XFILL_7__2134_ gnd vdd FILL
XFILL_3__2874_ gnd vdd FILL
XFILL_3__2454_ gnd vdd FILL
XFILL_3__2034_ gnd vdd FILL
XFILL_1__3313_ gnd vdd FILL
XFILL_3__3659_ gnd vdd FILL
XFILL_3__3239_ gnd vdd FILL
X_2383_ _1308_ _1336_ _1488_ _1489_ vdd gnd NAND3X1
XFILL_4__2943_ gnd vdd FILL
XFILL_4__2523_ gnd vdd FILL
XFILL_4__2103_ gnd vdd FILL
XFILL_6__2869_ gnd vdd FILL
X_3588_ _1617_ _1614_ _1618_ vdd gnd NAND2X1
XFILL_6__2449_ gnd vdd FILL
X_3168_ _769_ _759_ _770_ vdd gnd NOR2X1
XFILL_6__2029_ gnd vdd FILL
XFILL_0__2843_ gnd vdd FILL
XFILL_0__2423_ gnd vdd FILL
XFILL_0__2003_ gnd vdd FILL
XFILL_4__3308_ gnd vdd FILL
XFILL_0__3628_ gnd vdd FILL
XFILL_0__3208_ gnd vdd FILL
XFILL_2__2194_ gnd vdd FILL
XFILL_4__3481_ gnd vdd FILL
XFILL_4__3061_ gnd vdd FILL
X_2859_ _518_ _514_ _519_ vdd gnd NOR2X1
X_2439_ _1227_ _142_ _138_ _1743_ vdd gnd NAND3X1
X_2019_ _1049_ _AXYS[3]_[6] _AXYS[2]_[6] _1057_ _1130_ vdd 
+ gnd
+ AOI22X1
XFILL_7__2783_ gnd vdd FILL
XFILL_3__2683_ gnd vdd FILL
XFILL_3__2263_ gnd vdd FILL
XFILL_5__2189_ gnd vdd FILL
XFILL_5__3550_ gnd vdd FILL
XFILL_7__3148_ gnd vdd FILL
XFILL_5__3130_ gnd vdd FILL
XFILL_1__3542_ gnd vdd FILL
XFILL_1__3122_ gnd vdd FILL
XFILL_3__3468_ gnd vdd FILL
XFILL_3__3048_ gnd vdd FILL
XFILL_6__1893_ gnd vdd FILL
X_2192_ _1300_ _1294_ _1301_ vdd gnd NAND2X1
XFILL_2__1885_ gnd vdd FILL
XFILL_4__2752_ gnd vdd FILL
XFILL_4__2332_ gnd vdd FILL
XFILL_6__2678_ gnd vdd FILL
X_3397_ _1__bF$buf5 vdd _66_ clk_bF$buf1 Z vdd 
+ gnd
+ DFFSR
XFILL_6__2258_ gnd vdd FILL
XFILL_0__2652_ gnd vdd FILL
XFILL_0__2232_ gnd vdd FILL
XFILL_2__3611_ gnd vdd FILL
XFILL_4__3537_ gnd vdd FILL
XFILL_4__3117_ gnd vdd FILL
XFILL_3__1954_ gnd vdd FILL
XFILL_0__3017_ gnd vdd FILL
XFILL_5__2821_ gnd vdd FILL
XFILL_7__2419_ gnd vdd FILL
XFILL_5__2401_ gnd vdd FILL
XFILL_1__2813_ gnd vdd FILL
XFILL_3__2739_ gnd vdd FILL
XFILL_3__2319_ gnd vdd FILL
X_1883_ _1005_ _968_ _1006_ _1004_ BI[1] vdd 
+ gnd
+ OAI22X1
XFILL_4__3290_ gnd vdd FILL
XFILL_5__3606_ gnd vdd FILL
XFILL_0__3190_ gnd vdd FILL
XFILL_6__1949_ gnd vdd FILL
X_2668_ RDY_bF$buf3 _1005_ _341_ _339_ _3_ vdd 
+ gnd
+ OAI22X1
X_2248_ _1217_ _1355_ _1356_ vdd gnd NOR2X1
XFILL_7__2172_ gnd vdd FILL
XFILL_0__1923_ gnd vdd FILL
XFILL_3__2492_ gnd vdd FILL
XFILL_3__2072_ gnd vdd FILL
XFILL_4__2808_ gnd vdd FILL
XFILL_0__2708_ gnd vdd FILL
XFILL_3__3697_ gnd vdd FILL
XFILL_3__3277_ gnd vdd FILL
XFILL_4__2981_ gnd vdd FILL
XFILL_4__2561_ gnd vdd FILL
XFILL_4__2141_ gnd vdd FILL
XFILL_6__2487_ gnd vdd FILL
XFILL_6__2067_ gnd vdd FILL
XFILL_0__2881_ gnd vdd FILL
XFILL_2__2899_ gnd vdd FILL
XFILL_2__2479_ gnd vdd FILL
XFILL_0__2461_ gnd vdd FILL
XFILL_2__2059_ gnd vdd FILL
XFILL_0__2041_ gnd vdd FILL
X_1939_ _1055_ _1035_ _1026_ _1056_ vdd gnd NAND3X1
XFILL_2__3000_ gnd vdd FILL
XFILL_7__1863_ gnd vdd FILL
XFILL_0__3666_ gnd vdd FILL
XFILL_3__1763_ gnd vdd FILL
XFILL_0__3246_ gnd vdd FILL
XFILL_7__2648_ gnd vdd FILL
XFILL_5__2630_ gnd vdd FILL
XFILL_5__2210_ gnd vdd FILL
XFILL_1__2622_ gnd vdd FILL
XFILL_1__2202_ gnd vdd FILL
XFILL_3__2968_ gnd vdd FILL
XFILL_3__2548_ gnd vdd FILL
XFILL_3__2128_ gnd vdd FILL
XFILL_4__1832_ gnd vdd FILL
XFILL_6__1758_ gnd vdd FILL
X_2897_ _886__bF$buf1 _1027__bF$buf1 cli _546_ vdd gnd OAI21X1
X_2477_ _173_ _174_ _175_ _176_ vdd gnd OAI21X1
X_2057_ _1152_ _1153_ _1166_ vdd gnd NAND2X1
XFILL_4__2617_ gnd vdd FILL
XFILL_7__3186_ gnd vdd FILL
XFILL_0__2937_ gnd vdd FILL
XFILL_0__2517_ gnd vdd FILL
XFILL_1__3580_ gnd vdd FILL
XFILL_1__3160_ gnd vdd FILL
XFILL_3__3086_ gnd vdd FILL
XFILL_5__1901_ gnd vdd FILL
XFILL_7__1919_ gnd vdd FILL
XFILL_3__1819_ gnd vdd FILL
XFILL_4__2790_ gnd vdd FILL
XFILL_4__2370_ gnd vdd FILL
XFILL_6__2296_ gnd vdd FILL
XFILL_0__2690_ gnd vdd FILL
XFILL_0__2270_ gnd vdd FILL
XFILL_2__2288_ gnd vdd FILL
X_1748_ RDY_bF$buf9 DI[1] _881_ vdd gnd NAND2X1
XFILL_4__3575_ gnd vdd FILL
XFILL_4__3155_ gnd vdd FILL
XFILL_3__1992_ gnd vdd FILL
XFILL_0__3475_ gnd vdd FILL
XFILL_0__3055_ gnd vdd FILL
XFILL_7__2877_ gnd vdd FILL
XFILL_7__2037_ gnd vdd FILL
XFILL_1__2851_ gnd vdd FILL
XFILL_1__2431_ gnd vdd FILL
XFILL_1__2011_ gnd vdd FILL
XFILL_3__2777_ gnd vdd FILL
XFILL_3__2357_ gnd vdd FILL
XFILL_5__3644_ gnd vdd FILL
XFILL_5__3224_ gnd vdd FILL
XFILL_1__3636_ gnd vdd FILL
XFILL_1__3216_ gnd vdd FILL
XFILL_6__1987_ gnd vdd FILL
X_2286_ _1184_ _1177_ _1167_ _1393_ vdd gnd OAI21X1
XFILL_2__1979_ gnd vdd FILL
XFILL_0__1961_ gnd vdd FILL
XFILL_3_BUFX2_insert40 gnd vdd FILL
XFILL_3_BUFX2_insert41 gnd vdd FILL
XFILL_3_BUFX2_insert42 gnd vdd FILL
XFILL_3_BUFX2_insert43 gnd vdd FILL
XFILL_2__2920_ gnd vdd FILL
XFILL_2__2500_ gnd vdd FILL
XFILL_3_BUFX2_insert44 gnd vdd FILL
XFILL_3_BUFX2_insert45 gnd vdd FILL
XFILL_3_BUFX2_insert46 gnd vdd FILL
XFILL_3_BUFX2_insert47 gnd vdd FILL
XFILL_4__2846_ gnd vdd FILL
XFILL_3_BUFX2_insert48 gnd vdd FILL
XFILL_4__2426_ gnd vdd FILL
XFILL_3_BUFX2_insert49 gnd vdd FILL
XFILL_4__2006_ gnd vdd FILL
XFILL_0__2746_ gnd vdd FILL
XFILL_6__3713_ gnd vdd FILL
XFILL_0__2326_ gnd vdd FILL
XFILL_2__3705_ gnd vdd FILL
XFILL_5__2915_ gnd vdd FILL
XFILL_2__2097_ gnd vdd FILL
XFILL_1__2907_ gnd vdd FILL
X_1977_ _1091_ _1092_ _1093_ vdd gnd NOR2X1
XFILL_0__3284_ gnd vdd FILL
XFILL_7__2266_ gnd vdd FILL
X_3703_ _1741_[6] AB[6] vdd gnd BUFX2
XFILL_1__2660_ gnd vdd FILL
XFILL_1__2240_ gnd vdd FILL
XFILL_3__2586_ gnd vdd FILL
XFILL_3__2166_ gnd vdd FILL
XFILL_5__3453_ gnd vdd FILL
XFILL_5__3033_ gnd vdd FILL
XFILL_1__3025_ gnd vdd FILL
XFILL_4__1870_ gnd vdd FILL
XFILL_6__1796_ gnd vdd FILL
X_2095_ _1201_ _1203_ _1204_ vdd gnd NOR2X1
XFILL_2__1788_ gnd vdd FILL
XFILL_0__1770_ gnd vdd FILL
XFILL_4__2655_ gnd vdd FILL
XFILL_4__2235_ gnd vdd FILL
XFILL_0__2975_ gnd vdd FILL
XFILL_0__2555_ gnd vdd FILL
XFILL_6__3522_ gnd vdd FILL
XFILL_0__2135_ gnd vdd FILL
XFILL_6__3102_ gnd vdd FILL
XFILL_2__3514_ gnd vdd FILL
XFILL_1__1931_ gnd vdd FILL
XFILL_3__1857_ gnd vdd FILL
XFILL_5__2724_ gnd vdd FILL
XFILL_5__2304_ gnd vdd FILL
XFILL_1__2716_ gnd vdd FILL
X_1786_ _910_ _911_ _912_ vdd gnd NAND2X1
XFILL_4__3193_ gnd vdd FILL
XFILL_5__3509_ gnd vdd FILL
XFILL_0__3093_ gnd vdd FILL
XFILL_4__1926_ gnd vdd FILL
XFILL_7__2495_ gnd vdd FILL
XFILL_7__2075_ gnd vdd FILL
XFILL_0__1826_ gnd vdd FILL
X_3512_ alu_op[1] _1538_ _1541_ _1542_ vdd gnd OAI21X1
XFILL_3__2395_ gnd vdd FILL
XFILL_5__3262_ gnd vdd FILL
XFILL_1__3674_ gnd vdd FILL
XFILL_1__3254_ gnd vdd FILL
XFILL_4__2884_ gnd vdd FILL
XFILL_4__2464_ gnd vdd FILL
XFILL_4__2044_ gnd vdd FILL
XFILL_0__2784_ gnd vdd FILL
XFILL_0__2364_ gnd vdd FILL
XFILL_4__3669_ gnd vdd FILL
XFILL_7__1766_ gnd vdd FILL
XFILL_4__3249_ gnd vdd FILL
XFILL_0__3569_ gnd vdd FILL
XFILL_0__3149_ gnd vdd FILL
XFILL_5__2953_ gnd vdd FILL
XFILL_5__2533_ gnd vdd FILL
XFILL_5__2113_ gnd vdd FILL
XFILL_1__2945_ gnd vdd FILL
XFILL_1__2525_ gnd vdd FILL
XFILL_1__2105_ gnd vdd FILL
XFILL168450x118950 gnd vdd FILL
XFILL_6__2602_ gnd vdd FILL
X_3321_ vdd _1__bF$buf9 _1512_[3] clk_bF$buf6 state[3] vdd 
+ gnd
+ DFFSR
XFILL_5__3491_ gnd vdd FILL
XFILL_5__3071_ gnd vdd FILL
XFILL_1__3483_ gnd vdd FILL
XFILL_1__3063_ gnd vdd FILL
XFILL_5__1804_ gnd vdd FILL
XFILL_4__2693_ gnd vdd FILL
XFILL_4__2273_ gnd vdd FILL
XFILL_6__2199_ gnd vdd FILL
XFILL_0__2593_ gnd vdd FILL
XFILL_6__3560_ gnd vdd FILL
XFILL_0__2173_ gnd vdd FILL
XFILL_6__3140_ gnd vdd FILL
XFILL_2__3552_ gnd vdd FILL
XFILL_2__3132_ gnd vdd FILL
XFILL_7__1995_ gnd vdd FILL
XFILL_4__3478_ gnd vdd FILL
XFILL_4__3058_ gnd vdd FILL
XFILL_3__1895_ gnd vdd FILL
XFILL_5__2762_ gnd vdd FILL
XFILL_5__2342_ gnd vdd FILL
XFILL_1__2754_ gnd vdd FILL
XFILL_1__2334_ gnd vdd FILL
XFILL_7__3301_ gnd vdd FILL
XFILL_3__3621_ gnd vdd FILL
XFILL_3__3201_ gnd vdd FILL
XFILL_5__3547_ gnd vdd FILL
XFILL_5__3127_ gnd vdd FILL
XFILL_1__3539_ gnd vdd FILL
XFILL_1__3119_ gnd vdd FILL
XFILL_4__1964_ gnd vdd FILL
X_2189_ _1297_ _1092_ RDY_bF$buf7 _1298_ vdd gnd OAI21X1
XFILL_0__1864_ gnd vdd FILL
XFILL_6__2831_ gnd vdd FILL
X_3550_ _1574_ _1578_ _1579_ _1580_ vdd gnd OAI21X1
XFILL_6__2411_ gnd vdd FILL
X_3130_ _736_ _737_ vdd gnd INVX1
XFILL_2__2823_ gnd vdd FILL
XFILL_2__2403_ gnd vdd FILL
XFILL_4__2749_ gnd vdd FILL
XFILL_4__2329_ gnd vdd FILL
XFILL_0__2649_ gnd vdd FILL
XFILL_6__3616_ gnd vdd FILL
XFILL_0__2229_ gnd vdd FILL
XFILL_1__3292_ gnd vdd FILL
XFILL_2__3608_ gnd vdd FILL
XFILL_4__2082_ gnd vdd FILL
XFILL_5__2818_ gnd vdd FILL
XFILL_4__3287_ gnd vdd FILL
X_2821_ _478_ _443_ _483_ _484_ vdd gnd NOR3X1
X_2401_ _1495_ _1505_ _1503_ _1512_[4] vdd gnd NAND3X1
XFILL_0__3187_ gnd vdd FILL
XFILL_5__2991_ gnd vdd FILL
XFILL_5__2571_ gnd vdd FILL
XFILL_5__2151_ gnd vdd FILL
XFILL_7__2169_ gnd vdd FILL
X_3606_ _1738_ _1527_ _1630_ _1635_ _1636_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2983_ gnd vdd FILL
XFILL_1__2563_ gnd vdd FILL
XFILL_7__3530_ gnd vdd FILL
XFILL_1__2143_ gnd vdd FILL
XFILL_3__2489_ gnd vdd FILL
XFILL_3__2069_ gnd vdd FILL
XFILL_3__3010_ gnd vdd FILL
XFILL_4__1773_ gnd vdd FILL
XFILL_6__2640_ gnd vdd FILL
XFILL_6__2220_ gnd vdd FILL
XFILL_2__2632_ gnd vdd FILL
XFILL_2__2212_ gnd vdd FILL
XFILL_4__2978_ gnd vdd FILL
XFILL_4__2558_ gnd vdd FILL
XFILL_4__2138_ gnd vdd FILL
XFILL_0__2878_ gnd vdd FILL
XFILL_0__2458_ gnd vdd FILL
XFILL_0__2038_ gnd vdd FILL
XFILL_6__3005_ gnd vdd FILL
XFILL_5__1842_ gnd vdd FILL
XFILL_1__1834_ gnd vdd FILL
XFILL_7__2801_ gnd vdd FILL
XFILL_3__2701_ gnd vdd FILL
XFILL_5__2627_ gnd vdd FILL
XFILL_5__2207_ gnd vdd FILL
XFILL_1__2619_ gnd vdd FILL
XFILL_2__3590_ gnd vdd FILL
XFILL_2__3170_ gnd vdd FILL
XFILL_4__3096_ gnd vdd FILL
XFILL_6__1911_ gnd vdd FILL
X_2630_ _308_ _164_ _0_ vdd gnd NOR2X1
X_2210_ _1018_ _1319_ vdd gnd INVX4
XFILL_2__1903_ gnd vdd FILL
XFILL_4__1829_ gnd vdd FILL
XFILL_7__2398_ gnd vdd FILL
XFILL_5__2380_ gnd vdd FILL
X_3415_ _1__bF$buf0 vdd _84_ clk_bF$buf7 _AXYS[1]_[7] vdd 
+ gnd
+ DFFSR
XFILL_1__2792_ gnd vdd FILL
XFILL_1__2372_ gnd vdd FILL
XFILL_3__2298_ gnd vdd FILL
XFILL_5__3585_ gnd vdd FILL
XFILL_5__3165_ gnd vdd FILL
XFILL_1__3577_ gnd vdd FILL
XFILL_1__3157_ gnd vdd FILL
XFILL_2__2861_ gnd vdd FILL
XFILL_2__2441_ gnd vdd FILL
XFILL_2__2021_ gnd vdd FILL
XFILL_4__2787_ gnd vdd FILL
XFILL_4__2367_ gnd vdd FILL
X_1901_ _969_ _935_ _1018_ vdd gnd NAND2X1
XFILL_0__2687_ gnd vdd FILL
XFILL_6__3654_ gnd vdd FILL
XFILL_0__2267_ gnd vdd FILL
XFILL_6__3234_ gnd vdd FILL
XFILL_2__3646_ gnd vdd FILL
XFILL_2__3226_ gnd vdd FILL
XFILL_3__1989_ gnd vdd FILL
XFILL_3__2930_ gnd vdd FILL
XFILL_3__2510_ gnd vdd FILL
XFILL_5__2856_ gnd vdd FILL
XFILL_5__2436_ gnd vdd FILL
XFILL_5__2016_ gnd vdd FILL
XFILL_1__2848_ gnd vdd FILL
XFILL_1__2428_ gnd vdd FILL
XFILL_1__2008_ gnd vdd FILL
XFILL_3__3715_ gnd vdd FILL
XFILL_0__1958_ gnd vdd FILL
XFILL_6__2925_ gnd vdd FILL
X_3644_ _1638_ _1648_ _1673_ _1674_ vdd gnd NAND3X1
XFILL_6__2505_ gnd vdd FILL
X_3224_ _1049_ _808_ vdd gnd INVX2
XFILL_1__2181_ gnd vdd FILL
XFILL_2__2917_ gnd vdd FILL
XFILL_2__2670_ gnd vdd FILL
XFILL_2__2250_ gnd vdd FILL
XFILL_4__2596_ gnd vdd FILL
XFILL_4__2176_ gnd vdd FILL
XFILL_0__2496_ gnd vdd FILL
XFILL_6__3463_ gnd vdd FILL
XFILL_0__2076_ gnd vdd FILL
XFILL_6__3043_ gnd vdd FILL
XFILL_2__3455_ gnd vdd FILL
XFILL_2__3035_ gnd vdd FILL
XFILL_7__1898_ gnd vdd FILL
XFILL_5__1880_ gnd vdd FILL
X_2915_ _1217_ _559_ _560_ vdd gnd NOR2X1
XFILL_1__1872_ gnd vdd FILL
XFILL_3__1798_ gnd vdd FILL
XFILL_5__2665_ gnd vdd FILL
XFILL_5__2245_ gnd vdd FILL
XFILL_1__2657_ gnd vdd FILL
XFILL_7__3624_ gnd vdd FILL
XFILL_1__2237_ gnd vdd FILL
XFILL_7__3204_ gnd vdd FILL
XFILL_3__3524_ gnd vdd FILL
XFILL_3__3104_ gnd vdd FILL
XFILL_2__1941_ gnd vdd FILL
XFILL_4__1867_ gnd vdd FILL
XFILL_0__1767_ gnd vdd FILL
XFILL_6__2734_ gnd vdd FILL
X_3453_ _1699_ _1700_ _1701_ _1702_ vdd gnd NAND3X1
XFILL_6__2314_ gnd vdd FILL
X_3033_ _888_ _647_ _652_ _57_ vdd gnd OAI21X1
XFILL_2__2726_ gnd vdd FILL
XFILL_2__2306_ gnd vdd FILL
XFILL_6__3519_ gnd vdd FILL
XFILL_1__3195_ gnd vdd FILL
XFILL_5__1936_ gnd vdd FILL
XFILL_1__1928_ gnd vdd FILL
XFILL_6__3692_ gnd vdd FILL
XFILL_6__3272_ gnd vdd FILL
XFILL_2__3264_ gnd vdd FILL
X_2724_ _392_ _386_ _393_ vdd gnd NOR2X1
X_2304_ _1370_ _1351_ _1411_ vdd gnd NAND2X1
XFILL_5__2894_ gnd vdd FILL
XFILL_5__2474_ gnd vdd FILL
XFILL_5__2054_ gnd vdd FILL
X_3509_ AI[3] _1539_ vdd gnd INVX1
XFILL_1__2886_ gnd vdd FILL
XFILL_1__2466_ gnd vdd FILL
XFILL_1__2046_ gnd vdd FILL
XFILL_5__3259_ gnd vdd FILL
XFILL_2__1750_ gnd vdd FILL
XFILL_0__1996_ gnd vdd FILL
XFILL_6__2963_ gnd vdd FILL
X_3682_ _1513_ vdd _1517_ clk_bF$buf5 ADD[0] vdd 
+ gnd
+ DFFSR
XFILL_6__2543_ gnd vdd FILL
X_3262_ _1022_ _317_ _837_ _838_ vdd gnd NAND3X1
XFILL_6__2123_ gnd vdd FILL
XFILL_2__2955_ gnd vdd FILL
XFILL_2__2535_ gnd vdd FILL
XFILL_2__2115_ gnd vdd FILL
XFILL_0__3302_ gnd vdd FILL
XFILL_5__1745_ gnd vdd FILL
XFILL_7__2704_ gnd vdd FILL
XFILL_3__2604_ gnd vdd FILL
XFILL_6__3081_ gnd vdd FILL
XFILL169950x151350 gnd vdd FILL
XFILL_2__3493_ gnd vdd FILL
XFILL_2__3073_ gnd vdd FILL
XFILL_6__1814_ gnd vdd FILL
X_2953_ _1150__bF$buf1 _564_ _591_ vdd gnd NAND2X1
X_2533_ _201_ _227_ vdd gnd INVX1
X_2113_ _969_ _1221_ _1222_ vdd gnd NAND2X1
XFILL_2__1806_ gnd vdd FILL
XFILL169950x118950 gnd vdd FILL
XFILL_5__2283_ gnd vdd FILL
X_3318_ _1__bF$buf9 vdd _1512_[0] clk_bF$buf6 state[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2695_ gnd vdd FILL
XFILL_7__3662_ gnd vdd FILL
XFILL_1__2275_ gnd vdd FILL
XFILL_3__3562_ gnd vdd FILL
XFILL_3__3142_ gnd vdd FILL
XFILL_5__3488_ gnd vdd FILL
XFILL_5__3068_ gnd vdd FILL
XFILL_6__2772_ gnd vdd FILL
X_3491_ _1716_ BI[5] _1735_ _1717_ _1736_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2352_ gnd vdd FILL
X_3071_ _1021_ _683_ _684_ vdd gnd NOR2X1
XFILL_2__2764_ gnd vdd FILL
XFILL_2__2344_ gnd vdd FILL
X_1804_ _929_ _900_ _930_ vdd gnd NAND2X1
XFILL_4__3631_ gnd vdd FILL
XFILL_4__3211_ gnd vdd FILL
XFILL_6__3557_ gnd vdd FILL
XFILL_6__3137_ gnd vdd FILL
XFILL_0__3531_ gnd vdd FILL
XFILL_2__3549_ gnd vdd FILL
XFILL_2__3129_ gnd vdd FILL
XFILL_0__3111_ gnd vdd FILL
XFILL_5__1974_ gnd vdd FILL
XFILL_1__1966_ gnd vdd FILL
XFILL_7__2933_ gnd vdd FILL
XFILL_3__2833_ gnd vdd FILL
XFILL_3__2413_ gnd vdd FILL
XFILL_5__2759_ gnd vdd FILL
XFILL_5__2339_ gnd vdd FILL
XFILL_5__3700_ gnd vdd FILL
XFILL_3__3618_ gnd vdd FILL
X_2762_ _426_ _427_ _423_ _428_ vdd gnd OAI21X1
X_2342_ _1202_ RDY_bF$buf8 _1449_ vdd gnd OR2X2
XFILL_5__2092_ gnd vdd FILL
XFILL_4__2902_ gnd vdd FILL
XFILL_6__2828_ gnd vdd FILL
X_3547_ alu_op[0] _1575_ _1576_ _1577_ vdd gnd OAI21X1
XFILL_6__2408_ gnd vdd FILL
X_3127_ _1319__bF$buf3 _733_ _734_ vdd gnd NOR2X1
XFILL_7__3471_ gnd vdd FILL
XFILL_1__2084_ gnd vdd FILL
XFILL_7__3051_ gnd vdd FILL
XFILL_0__2802_ gnd vdd FILL
XFILL_5__3297_ gnd vdd FILL
XFILL_1__3289_ gnd vdd FILL
XFILL_6__2581_ gnd vdd FILL
XFILL_6__2161_ gnd vdd FILL
XFILL_2__2993_ gnd vdd FILL
XFILL_2__2573_ gnd vdd FILL
XFILL_2__2153_ gnd vdd FILL
XFILL_4__2499_ gnd vdd FILL
XFILL_4__2079_ gnd vdd FILL
XFILL_4__3020_ gnd vdd FILL
XFILL_0__2399_ gnd vdd FILL
XFILL_5__1783_ gnd vdd FILL
X_2818_ _446_ _480_ _479_ _481_ vdd gnd NAND3X1
XFILL_1__1775_ gnd vdd FILL
XFILL_7__2322_ gnd vdd FILL
XFILL_3__2642_ gnd vdd FILL
XFILL_3__2222_ gnd vdd FILL
XFILL_5__2988_ gnd vdd FILL
XFILL_5__2568_ gnd vdd FILL
XFILL_5__2148_ gnd vdd FILL
XFILL_7__3527_ gnd vdd FILL
XFILL_7__3107_ gnd vdd FILL
XFILL_1__3501_ gnd vdd FILL
XFILL_3__3007_ gnd vdd FILL
X_2991_ _579_ _578_ _1150__bF$buf4 _620_ vdd gnd OAI21X1
XFILL_6__1852_ gnd vdd FILL
X_2571_ _258_ _259_ _260_ vdd gnd AND2X2
X_2151_ _931__bF$buf4 _1069_ _1260_ vdd gnd NOR2X1
XFILL_2__1844_ gnd vdd FILL
XFILL_4__2711_ gnd vdd FILL
XFILL_6__2637_ gnd vdd FILL
X_3356_ _1__bF$buf6 vdd _33_ clk_bF$buf9 op[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2217_ gnd vdd FILL
XFILL_7__3280_ gnd vdd FILL
XFILL_0__2611_ gnd vdd FILL
XFILL_2__2629_ gnd vdd FILL
XFILL_2__2209_ gnd vdd FILL
XFILL_3__3180_ gnd vdd FILL
XFILL_1__3098_ gnd vdd FILL
XFILL_3__1913_ gnd vdd FILL
XFILL_5__1839_ gnd vdd FILL
XFILL_6__2390_ gnd vdd FILL
XCLKBUF1_insert30 clk clk_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert31 clk clk_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert32 clk clk_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert33 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert34 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert35 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert36 clk clk_bF$buf0 vdd gnd CLKBUF1
XFILL_2__2382_ gnd vdd FILL
X_1842_ _914__bF$buf4 _946_ _967_ vdd gnd NOR2X1
XFILL_6__3595_ gnd vdd FILL
XFILL_6__3175_ gnd vdd FILL
XFILL_2__3587_ gnd vdd FILL
XFILL_2__3167_ gnd vdd FILL
XFILL_6__1908_ gnd vdd FILL
X_2627_ _272_ DIMUX[7] _306_ _307_ vdd gnd AOI21X1
X_2207_ _902__bF$buf2 _958_ _886__bF$buf0 _1316_ vdd gnd OAI21X1
XFILL_7__2551_ gnd vdd FILL
XFILL_3__2871_ gnd vdd FILL
XFILL_3__2451_ gnd vdd FILL
XFILL_3__2031_ gnd vdd FILL
XFILL_5__2797_ gnd vdd FILL
XFILL_5__2377_ gnd vdd FILL
XFILL_1__2789_ gnd vdd FILL
XFILL_1__2369_ gnd vdd FILL
XFILL_1__3310_ gnd vdd FILL
XFILL_3__3656_ gnd vdd FILL
XFILL_3__3236_ gnd vdd FILL
X_2380_ _1479_ _1452_ _1486_ vdd gnd NOR2X1
XFILL_4__1999_ gnd vdd FILL
XFILL_4__2940_ gnd vdd FILL
XFILL_4__2520_ gnd vdd FILL
XFILL_4__2100_ gnd vdd FILL
XFILL_0__1899_ gnd vdd FILL
XFILL_6__2866_ gnd vdd FILL
X_3585_ _1570_ _1615_ vdd gnd INVX1
XFILL_6__2446_ gnd vdd FILL
XFILL_6__2026_ gnd vdd FILL
X_3165_ _AXYS[0]_[5] _722_ _768_ vdd gnd NAND2X1
XFILL_0__2840_ gnd vdd FILL
XFILL_2__2858_ gnd vdd FILL
XFILL169650x32550 gnd vdd FILL
XFILL_2__2438_ gnd vdd FILL
XFILL_0__2420_ gnd vdd FILL
XFILL_2__2018_ gnd vdd FILL
XFILL_0__2000_ gnd vdd FILL
XFILL_7__1822_ gnd vdd FILL
XFILL_4__3305_ gnd vdd FILL
XFILL_0__3625_ gnd vdd FILL
XFILL_0__3205_ gnd vdd FILL
XFILL_2__2191_ gnd vdd FILL
XFILL_3__2927_ gnd vdd FILL
XFILL_3__2507_ gnd vdd FILL
X_2856_ AN _1299_ _323_ ABH[7] _516_ vdd 
+ gnd
+ AOI22X1
X_2436_ _140_ _129_ alu_op[3] vdd gnd NOR2X1
X_2016_ _1082_ ADD[5] _1127_ _1128_ vdd gnd AOI21X1
XFILL_7__2780_ gnd vdd FILL
XFILL_3__2680_ gnd vdd FILL
XFILL_3__2260_ gnd vdd FILL
XFILL_5__2186_ gnd vdd FILL
XFILL168450x14550 gnd vdd FILL
XFILL_1__2598_ gnd vdd FILL
XFILL_1__2178_ gnd vdd FILL
XFILL_7__3145_ gnd vdd FILL
XFILL_3__3465_ gnd vdd FILL
XFILL_3__3045_ gnd vdd FILL
XFILL_6__1890_ gnd vdd FILL
XFILL_2__1882_ gnd vdd FILL
XFILL_6__2675_ gnd vdd FILL
X_3394_ _1__bF$buf5 vdd _63_ clk_bF$buf1 D vdd 
+ gnd
+ DFFSR
XFILL_6__2255_ gnd vdd FILL
XFILL_2__2667_ gnd vdd FILL
XFILL_2__2247_ gnd vdd FILL
XFILL_4__3534_ gnd vdd FILL
XFILL_4__3114_ gnd vdd FILL
XFILL_3__1951_ gnd vdd FILL
XFILL_0__3014_ gnd vdd FILL
XFILL_5__1877_ gnd vdd FILL
XFILL_1__1869_ gnd vdd FILL
XFILL_7__2416_ gnd vdd FILL
XFILL_1__2810_ gnd vdd FILL
XFILL_3__2736_ gnd vdd FILL
XFILL_3__2316_ gnd vdd FILL
X_1880_ _965_ _968_ _966_ _1004_ BI[0] vdd 
+ gnd
+ OAI22X1
XFILL_5__3603_ gnd vdd FILL
XFILL_6__1946_ gnd vdd FILL
X_2665_ _338_ _333_ _339_ vdd gnd NOR2X1
X_2245_ _1347_ _1352_ _1346_ _1353_ vdd gnd NAND3X1
XFILL_0__1920_ gnd vdd FILL
XFILL_2__1938_ gnd vdd FILL
XFILL_4__2805_ gnd vdd FILL
XFILL_0__2705_ gnd vdd FILL
XFILL_3__3694_ gnd vdd FILL
XFILL_3__3274_ gnd vdd FILL
XFILL_6__2484_ gnd vdd FILL
XFILL_6__2064_ gnd vdd FILL
XFILL_2__2896_ gnd vdd FILL
XFILL_2__2476_ gnd vdd FILL
XFILL_2__2056_ gnd vdd FILL
X_1936_ src_reg[0] _1036_ _1052_ _1053_ vdd gnd OAI21X1
XFILL_6__3269_ gnd vdd FILL
XFILL_3__1760_ gnd vdd FILL
XFILL_0__3663_ gnd vdd FILL
XFILL_0__3243_ gnd vdd FILL
XFILL_7__2645_ gnd vdd FILL
XFILL_7__2225_ gnd vdd FILL
XFILL_3__2965_ gnd vdd FILL
XFILL_3__2545_ gnd vdd FILL
XFILL_3__2125_ gnd vdd FILL
XFILL_6__1755_ gnd vdd FILL
X_2894_ _537_ _544_ _542_ _26_ vdd gnd OAI21X1
X_2474_ ADD[4] _173_ vdd gnd INVX1
X_2054_ IRHOLD_valid _1162_ _1154_ _1163_ vdd gnd AOI21X1
XFILL_2__1747_ gnd vdd FILL
XFILL_4__2614_ gnd vdd FILL
X_3679_ _1513_ vdd _1514_ clk_bF$buf6 _u_ALU8.BI7_ vdd 
+ gnd
+ DFFSR
X_3259_ _834_ _831_ _826_ _835_ vdd gnd OAI21X1
XFILL_7__3183_ gnd vdd FILL
XFILL_0__2934_ gnd vdd FILL
XFILL_0__2514_ gnd vdd FILL
XFILL_3__3083_ gnd vdd FILL
XFILL169950x75750 gnd vdd FILL
XFILL_7__1916_ gnd vdd FILL
XFILL_3__1816_ gnd vdd FILL
XFILL_6__2293_ gnd vdd FILL
XFILL_2__2285_ gnd vdd FILL
X_1745_ DI[0] RDY_bF$buf0 _879_ vdd gnd NAND2X1
XFILL_4__3572_ gnd vdd FILL
XFILL_4__3152_ gnd vdd FILL
XFILL_6__3498_ gnd vdd FILL
XFILL_6__3078_ gnd vdd FILL
XFILL_0__3472_ gnd vdd FILL
XFILL_0__3052_ gnd vdd FILL
XFILL_7__2874_ gnd vdd FILL
XFILL_7__2454_ gnd vdd FILL
XFILL_7__2034_ gnd vdd FILL
XFILL_3__2774_ gnd vdd FILL
XFILL_3__2354_ gnd vdd FILL
XFILL_7__3659_ gnd vdd FILL
XFILL_5__3641_ gnd vdd FILL
XFILL_5__3221_ gnd vdd FILL
XFILL168750x57750 gnd vdd FILL
XFILL_1__3633_ gnd vdd FILL
XFILL_1__3213_ gnd vdd FILL
XFILL_3__3559_ gnd vdd FILL
XFILL_3__3139_ gnd vdd FILL
XFILL_6__1984_ gnd vdd FILL
X_2283_ _1364_ _1390_ _1354_ _1391_ vdd gnd NAND3X1
XFILL_2__1976_ gnd vdd FILL
XFILL_3_BUFX2_insert10 gnd vdd FILL
XFILL_3_BUFX2_insert11 gnd vdd FILL
XFILL_3_BUFX2_insert12 gnd vdd FILL
XFILL_3_BUFX2_insert13 gnd vdd FILL
XFILL_3_BUFX2_insert14 gnd vdd FILL
XFILL_3_BUFX2_insert15 gnd vdd FILL
XFILL_3_BUFX2_insert16 gnd vdd FILL
XFILL_3_BUFX2_insert17 gnd vdd FILL
XFILL_4__2843_ gnd vdd FILL
XFILL_3_BUFX2_insert18 gnd vdd FILL
XFILL_3_BUFX2_insert19 gnd vdd FILL
XFILL_4__2423_ gnd vdd FILL
XFILL_4__2003_ gnd vdd FILL
XFILL_6__2769_ gnd vdd FILL
X_3488_ alu_shift_right AI[6] _1733_ vdd gnd NAND2X1
XFILL_6__2349_ gnd vdd FILL
X_3068_ _431_ _988_ _681_ vdd gnd NOR2X1
XFILL_0__2743_ gnd vdd FILL
XFILL_6__3710_ gnd vdd FILL
XFILL_0__2323_ gnd vdd FILL
XFILL_2__3702_ gnd vdd FILL
XFILL_4__3628_ gnd vdd FILL
XFILL_4__3208_ gnd vdd FILL
XFILL_0__3528_ gnd vdd FILL
XFILL_0__3108_ gnd vdd FILL
XFILL_5__2912_ gnd vdd FILL
XFILL_2__2094_ gnd vdd FILL
XFILL_1__2904_ gnd vdd FILL
X_1974_ _1089_ _1090_ vdd gnd INVX1
XFILL_2__3299_ gnd vdd FILL
XFILL_0__3281_ gnd vdd FILL
X_2759_ _404_ _407_ _425_ vdd gnd NOR2X1
X_2339_ write_back _1241_ _1243_ _1446_ vdd gnd OAI21X1
XFILL_7__2683_ gnd vdd FILL
XFILL_7__2263_ gnd vdd FILL
X_3700_ _1741_[3] AB[3] vdd gnd BUFX2
XFILL_3__2583_ gnd vdd FILL
XFILL_3__2163_ gnd vdd FILL
XFILL_5__2089_ gnd vdd FILL
XFILL_5__3450_ gnd vdd FILL
XFILL_7__3048_ gnd vdd FILL
XFILL_5__3030_ gnd vdd FILL
XFILL_1__3022_ gnd vdd FILL
XFILL_6__1793_ gnd vdd FILL
X_2092_ _902__bF$buf3 _938_ _1201_ vdd gnd NOR2X1
XFILL_2__1785_ gnd vdd FILL
XFILL_4__2652_ gnd vdd FILL
XFILL_4__2232_ gnd vdd FILL
XFILL_6__2998_ gnd vdd FILL
XFILL_6__2578_ gnd vdd FILL
X_3297_ ABL[6] _860_ _867_ vdd gnd NAND2X1
XFILL_6__2158_ gnd vdd FILL
XFILL_0__2972_ gnd vdd FILL
XFILL_0__2552_ gnd vdd FILL
XFILL_0__2132_ gnd vdd FILL
XFILL_2__3511_ gnd vdd FILL
XFILL_4__3017_ gnd vdd FILL
XFILL_3__1854_ gnd vdd FILL
XFILL_5__2721_ gnd vdd FILL
XFILL_7__2319_ gnd vdd FILL
XFILL_5__2301_ gnd vdd FILL
XFILL_1__2713_ gnd vdd FILL
XFILL_3__2639_ gnd vdd FILL
XFILL_3__2219_ gnd vdd FILL
X_1783_ _900_ _908_ _903__bF$buf0 _909_ vdd gnd OAI21X1
XFILL_4__3190_ gnd vdd FILL
XFILL_5__3506_ gnd vdd FILL
XFILL_0__3090_ gnd vdd FILL
XFILL_4__1923_ gnd vdd FILL
XFILL_6__1849_ gnd vdd FILL
X_2988_ _578_ _553_ _617_ _618_ vdd gnd OAI21X1
X_2568_ _257_ _1741_[5] vdd gnd INVX1
X_2148_ _902__bF$buf3 _1069_ _1257_ vdd gnd NOR2X1
XFILL_7__2072_ gnd vdd FILL
XFILL_0__1823_ gnd vdd FILL
XFILL_3__2392_ gnd vdd FILL
XFILL_4__2708_ gnd vdd FILL
XFILL_7__3697_ gnd vdd FILL
XFILL_7__3277_ gnd vdd FILL
XFILL_0__2608_ gnd vdd FILL
XFILL_1__3671_ gnd vdd FILL
XFILL_1__3251_ gnd vdd FILL
XFILL_3__3597_ gnd vdd FILL
XFILL_3__3177_ gnd vdd FILL
XFILL_4__2881_ gnd vdd FILL
XFILL_4__2461_ gnd vdd FILL
XFILL_4__2041_ gnd vdd FILL
XFILL_6__2387_ gnd vdd FILL
XFILL_2__2799_ gnd vdd FILL
XFILL_0__2781_ gnd vdd FILL
XFILL_0__2361_ gnd vdd FILL
XFILL_2__2379_ gnd vdd FILL
X_1839_ _894_ _919_ _964_ CI vdd gnd OAI21X1
XFILL_4__3666_ gnd vdd FILL
XFILL_7__1763_ gnd vdd FILL
XFILL_4__3246_ gnd vdd FILL
XFILL_0__3566_ gnd vdd FILL
XFILL_0__3146_ gnd vdd FILL
XFILL_4_BUFX2_insert60 gnd vdd FILL
XFILL_4_BUFX2_insert61 gnd vdd FILL
XFILL_4_BUFX2_insert62 gnd vdd FILL
XFILL_4_BUFX2_insert63 gnd vdd FILL
XFILL_4_BUFX2_insert64 gnd vdd FILL
XFILL_4_BUFX2_insert65 gnd vdd FILL
XFILL_4_BUFX2_insert66 gnd vdd FILL
XFILL_4_BUFX2_insert67 gnd vdd FILL
XFILL_4_BUFX2_insert68 gnd vdd FILL
XFILL_5__2950_ gnd vdd FILL
XFILL_4_BUFX2_insert69 gnd vdd FILL
XFILL_7__2548_ gnd vdd FILL
XFILL_5__2530_ gnd vdd FILL
XFILL_5__2110_ gnd vdd FILL
XFILL_1__2942_ gnd vdd FILL
XFILL_1__2522_ gnd vdd FILL
XFILL_1__2102_ gnd vdd FILL
XFILL_3__2868_ gnd vdd FILL
XFILL_3__2448_ gnd vdd FILL
XFILL_3__2028_ gnd vdd FILL
XFILL_5__3315_ gnd vdd FILL
XFILL_1__3307_ gnd vdd FILL
X_2797_ ADD[4] _1299_ _1334_ _460_ vdd gnd AOI21X1
X_2377_ _1391_ _1482_ _1483_ vdd gnd NOR2X1
XFILL_4__2937_ gnd vdd FILL
XFILL_4__2517_ gnd vdd FILL
XFILL_7__3086_ gnd vdd FILL
XFILL_0__2837_ gnd vdd FILL
XFILL_0__2417_ gnd vdd FILL
XFILL_1__3480_ gnd vdd FILL
XFILL_1__3060_ gnd vdd FILL
XFILL_7__1819_ gnd vdd FILL
XFILL_5__1801_ gnd vdd FILL
XFILL_4__2690_ gnd vdd FILL
XFILL_4__2270_ gnd vdd FILL
XFILL_6__2196_ gnd vdd FILL
XFILL_0__2590_ gnd vdd FILL
XFILL_2__2188_ gnd vdd FILL
XFILL_0__2170_ gnd vdd FILL
XFILL_7__1992_ gnd vdd FILL
XFILL_4__3475_ gnd vdd FILL
XFILL_4__3055_ gnd vdd FILL
XFILL_3__1892_ gnd vdd FILL
XFILL_7__2777_ gnd vdd FILL
XFILL_1__2751_ gnd vdd FILL
XFILL_1__2331_ gnd vdd FILL
XFILL_3__2677_ gnd vdd FILL
XFILL_3__2257_ gnd vdd FILL
XFILL_5__3544_ gnd vdd FILL
XFILL_5__3124_ gnd vdd FILL
XFILL_1__3536_ gnd vdd FILL
XFILL_1__3116_ gnd vdd FILL
XFILL_4__1961_ gnd vdd FILL
XFILL_6__1887_ gnd vdd FILL
X_2186_ CO backwards _1295_ vdd gnd NAND2X1
XFILL_2__1879_ gnd vdd FILL
XFILL_0__1861_ gnd vdd FILL
XFILL_2__2820_ gnd vdd FILL
XFILL_2__2400_ gnd vdd FILL
XFILL_4__2746_ gnd vdd FILL
XFILL_4__2326_ gnd vdd FILL
XFILL_0__2646_ gnd vdd FILL
XFILL_6__3613_ gnd vdd FILL
XFILL_0__2226_ gnd vdd FILL
XFILL_2__3605_ gnd vdd FILL
XFILL_3__1948_ gnd vdd FILL
XFILL_5__2815_ gnd vdd FILL
XFILL_1__2807_ gnd vdd FILL
X_1877_ _996_ _997_ _1001_ _1002_ vdd gnd NAND3X1
XFILL_4__3284_ gnd vdd FILL
XFILL_0__3184_ gnd vdd FILL
XFILL_7__2166_ gnd vdd FILL
XFILL_0__1917_ gnd vdd FILL
X_3603_ _1632_ _1633_ vdd gnd INVX1
XFILL_1__2980_ gnd vdd FILL
XFILL_1__2560_ gnd vdd FILL
XFILL_1__2140_ gnd vdd FILL
XFILL_3__2486_ gnd vdd FILL
XFILL_3__2066_ gnd vdd FILL
XFILL_4__1770_ gnd vdd FILL
XFILL_4__2975_ gnd vdd FILL
XFILL_4__2555_ gnd vdd FILL
XFILL_4__2135_ gnd vdd FILL
XFILL_0__2875_ gnd vdd FILL
XFILL_0__2455_ gnd vdd FILL
XFILL_0__2035_ gnd vdd FILL
XFILL_6__3002_ gnd vdd FILL
XFILL_1__1831_ gnd vdd FILL
XFILL_3__1757_ gnd vdd FILL
XFILL_5__2624_ gnd vdd FILL
XFILL_5__2204_ gnd vdd FILL
XFILL_1__2616_ gnd vdd FILL
XFILL_4__3093_ gnd vdd FILL
XFILL_2__1900_ gnd vdd FILL
XFILL_4__1826_ gnd vdd FILL
XFILL_7__2395_ gnd vdd FILL
X_3412_ _1__bF$buf3 vdd _81_ clk_bF$buf0 _AXYS[1]_[4] vdd 
+ gnd
+ DFFSR
XFILL_3__2295_ gnd vdd FILL
XFILL_5__3582_ gnd vdd FILL
XFILL_5__3162_ gnd vdd FILL
XFILL_1__3574_ gnd vdd FILL
XFILL_1__3154_ gnd vdd FILL
XFILL168750x118950 gnd vdd FILL
XFILL_4__2784_ gnd vdd FILL
XFILL_4__2364_ gnd vdd FILL
XFILL_0__2684_ gnd vdd FILL
XFILL_6__3651_ gnd vdd FILL
XFILL_0__2264_ gnd vdd FILL
XFILL_6__3231_ gnd vdd FILL
XFILL_2__3643_ gnd vdd FILL
XFILL_2__3223_ gnd vdd FILL
XFILL_4__3569_ gnd vdd FILL
XFILL_4__3149_ gnd vdd FILL
XFILL_3__1986_ gnd vdd FILL
XFILL_0__3469_ gnd vdd FILL
XFILL_0__3049_ gnd vdd FILL
XFILL_5__2853_ gnd vdd FILL
XFILL_5__2433_ gnd vdd FILL
XFILL_5__2013_ gnd vdd FILL
XFILL_1__2845_ gnd vdd FILL
XFILL_1__2425_ gnd vdd FILL
XFILL_1__2005_ gnd vdd FILL
XFILL_3__3712_ gnd vdd FILL
XFILL_5__3638_ gnd vdd FILL
XFILL_5__3218_ gnd vdd FILL
XFILL_0__1955_ gnd vdd FILL
XFILL_6__2922_ gnd vdd FILL
X_3641_ _1533_ _1535_ _1669_ _1670_ _1671_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2502_ gnd vdd FILL
X_3221_ _AXYS[2]_[7] _798_ _806_ vdd gnd NOR2X1
XFILL_2__2914_ gnd vdd FILL
XFILL_6__3707_ gnd vdd FILL
XFILL_4__2593_ gnd vdd FILL
XFILL_4__2173_ gnd vdd FILL
XFILL_6__2099_ gnd vdd FILL
XFILL_5__2909_ gnd vdd FILL
XFILL_0__2493_ gnd vdd FILL
XFILL_6__3460_ gnd vdd FILL
XFILL_0__2073_ gnd vdd FILL
XFILL_6__3040_ gnd vdd FILL
XFILL169050x57750 gnd vdd FILL
XFILL_2__3452_ gnd vdd FILL
XFILL_2__3032_ gnd vdd FILL
XFILL_7__1895_ gnd vdd FILL
X_2912_ _886__bF$buf5 _1027__bF$buf2 bit_ins _558_ vdd gnd OAI21X1
XFILL_0__3698_ gnd vdd FILL
XFILL_3__1795_ gnd vdd FILL
XFILL_0__3278_ gnd vdd FILL
XFILL_5__2662_ gnd vdd FILL
XFILL_5__2242_ gnd vdd FILL
XFILL_1__2654_ gnd vdd FILL
XFILL_7__3621_ gnd vdd FILL
XFILL_1__2234_ gnd vdd FILL
XFILL_7__3201_ gnd vdd FILL
XFILL_3__3521_ gnd vdd FILL
XFILL_3__3101_ gnd vdd FILL
XFILL_5__3027_ gnd vdd FILL
XFILL_1__3019_ gnd vdd FILL
XFILL_4__1864_ gnd vdd FILL
X_2089_ _1197_ _1192_ _1198_ vdd gnd NAND2X1
XFILL_0__1764_ gnd vdd FILL
XFILL_6__2731_ gnd vdd FILL
X_3450_ ADD[5] ADD[4] _1699_ vdd gnd NOR2X1
XFILL_6__2311_ gnd vdd FILL
X_3030_ reset _645_ IRHOLD[3] _651_ vdd gnd OAI21X1
XFILL_2__2723_ gnd vdd FILL
XFILL_2__2303_ gnd vdd FILL
XFILL_4__2649_ gnd vdd FILL
XFILL_4__2229_ gnd vdd FILL
XFILL_0__2969_ gnd vdd FILL
XFILL_0__2549_ gnd vdd FILL
XFILL_6__3516_ gnd vdd FILL
XFILL_0__2129_ gnd vdd FILL
XFILL_1__3192_ gnd vdd FILL
XFILL_2__3508_ gnd vdd FILL
XFILL_5__1933_ gnd vdd FILL
XFILL_1__1925_ gnd vdd FILL
XFILL_5__2718_ gnd vdd FILL
XFILL_2__3261_ gnd vdd FILL
XFILL_4__3187_ gnd vdd FILL
X_2721_ _389_ _378_ _148_ _390_ vdd gnd OAI21X1
X_2301_ _1403_ _1407_ _1408_ vdd gnd AND2X2
XFILL_0__3087_ gnd vdd FILL
XFILL_5__2891_ gnd vdd FILL
XFILL_5__2471_ gnd vdd FILL
XFILL_7__2069_ gnd vdd FILL
XFILL_5__2051_ gnd vdd FILL
X_3506_ _1535_ _1533_ _1536_ vdd gnd NAND2X1
XFILL_1__2883_ gnd vdd FILL
XFILL_1__2463_ gnd vdd FILL
XFILL_1__2043_ gnd vdd FILL
XFILL_3__2389_ gnd vdd FILL
XFILL_5__3676_ gnd vdd FILL
XFILL_5__3256_ gnd vdd FILL
XFILL_1__3668_ gnd vdd FILL
XFILL_1__3248_ gnd vdd FILL
XFILL_0__1993_ gnd vdd FILL
XFILL_6__2960_ gnd vdd FILL
XFILL_6__2540_ gnd vdd FILL
XFILL_6__2120_ gnd vdd FILL
XFILL_2__2952_ gnd vdd FILL
XFILL_2__2532_ gnd vdd FILL
XFILL_2__2112_ gnd vdd FILL
XFILL_4__2878_ gnd vdd FILL
XFILL_4__2458_ gnd vdd FILL
XFILL_4__2038_ gnd vdd FILL
XFILL_0__2778_ gnd vdd FILL
XFILL_0__2358_ gnd vdd FILL
XFILL_2__3317_ gnd vdd FILL
XFILL_7__2701_ gnd vdd FILL
XFILL_3__2601_ gnd vdd FILL
XFILL_5__2947_ gnd vdd FILL
XFILL_5__2527_ gnd vdd FILL
XFILL_5__2107_ gnd vdd FILL
XFILL_1__2939_ gnd vdd FILL
XFILL_1__2519_ gnd vdd FILL
XFILL_2__3490_ gnd vdd FILL
XFILL_2__3070_ gnd vdd FILL
X_2950_ _1185_ _1149__bF$buf4 _589_ vdd gnd NOR2X1
XFILL_6__1811_ gnd vdd FILL
X_2530_ _1059_ _195_ _224_ _225_ vdd gnd AOI21X1
X_2110_ _1216_ _1218_ _1213_ _1215_ _1219_ vdd 
+ gnd
+ OAI22X1
XFILL_2__1803_ gnd vdd FILL
XFILL_5__2280_ gnd vdd FILL
XFILL_7__2298_ gnd vdd FILL
X_3315_ _1134_ _869_ _876_ _115_ vdd gnd OAI21X1
XFILL_1__2692_ gnd vdd FILL
XFILL_1__2272_ gnd vdd FILL
XFILL_3__2198_ gnd vdd FILL
XFILL_5__3485_ gnd vdd FILL
XFILL_5__3065_ gnd vdd FILL
XFILL_1__3477_ gnd vdd FILL
XFILL_1__3057_ gnd vdd FILL
XFILL_2__2761_ gnd vdd FILL
XFILL_2__2341_ gnd vdd FILL
XFILL_4__2687_ gnd vdd FILL
XFILL_4__2267_ gnd vdd FILL
X_1801_ state[1] state[0] _927_ vdd gnd NOR2X1
XFILL_0__2587_ gnd vdd FILL
XFILL_6__3554_ gnd vdd FILL
XFILL_0__2167_ gnd vdd FILL
XFILL_6__3134_ gnd vdd FILL
XFILL_2__3546_ gnd vdd FILL
XFILL_2__3126_ gnd vdd FILL
XFILL_5__1971_ gnd vdd FILL
XFILL_1__1963_ gnd vdd FILL
XFILL_7__2930_ gnd vdd FILL
XFILL_3__1889_ gnd vdd FILL
XFILL_3__2830_ gnd vdd FILL
XFILL_3__2410_ gnd vdd FILL
XFILL_5__2756_ gnd vdd FILL
XFILL_5__2336_ gnd vdd FILL
XFILL_1__2748_ gnd vdd FILL
XFILL_7__3715_ gnd vdd FILL
XFILL_1__2328_ gnd vdd FILL
XFILL_3__3615_ gnd vdd FILL
XFILL_4__1958_ gnd vdd FILL
XFILL_0__1858_ gnd vdd FILL
XFILL_6__2825_ gnd vdd FILL
X_3544_ BI[0] _1573_ _1717_ _1572_ _1574_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2405_ gnd vdd FILL
X_3124_ HC _728_ _731_ vdd gnd NOR2X1
XFILL_1__2081_ gnd vdd FILL
XFILL_2__2817_ gnd vdd FILL
XFILL_5__3294_ gnd vdd FILL
XFILL_1__3286_ gnd vdd FILL
XFILL169650x7350 gnd vdd FILL
XFILL_2__2990_ gnd vdd FILL
XFILL_2__2570_ gnd vdd FILL
XFILL_2__2150_ gnd vdd FILL
XFILL_4__2496_ gnd vdd FILL
XFILL_4__2076_ gnd vdd FILL
XFILL_0__2396_ gnd vdd FILL
XFILL_7__1798_ gnd vdd FILL
XFILL_5__1780_ gnd vdd FILL
X_2815_ _365_ _477_ _471_ _478_ vdd gnd OAI21X1
XFILL_1__1772_ gnd vdd FILL
XFILL_5__2985_ gnd vdd FILL
XFILL_5__2565_ gnd vdd FILL
XFILL_5__2145_ gnd vdd FILL
XFILL_1__2977_ gnd vdd FILL
XFILL_1__2557_ gnd vdd FILL
XFILL_7__3524_ gnd vdd FILL
XFILL_1__2137_ gnd vdd FILL
XFILL_7__3104_ gnd vdd FILL
XFILL_3__3004_ gnd vdd FILL
XFILL_2__1841_ gnd vdd FILL
XFILL_4__1767_ gnd vdd FILL
XFILL_6__2634_ gnd vdd FILL
X_3353_ _1__bF$buf2 vdd _30_ clk_bF$buf10 clv vdd 
+ gnd
+ DFFSR
XFILL_6__2214_ gnd vdd FILL
XFILL_2__2626_ gnd vdd FILL
XFILL_2__2206_ gnd vdd FILL
XFILL_1__3095_ gnd vdd FILL
XFILL_3__1910_ gnd vdd FILL
XFILL_5__1836_ gnd vdd FILL
XFILL_1__1828_ gnd vdd FILL
XFILL_6__3592_ gnd vdd FILL
XFILL_6__3172_ gnd vdd FILL
XFILL_2__3584_ gnd vdd FILL
XFILL_2__3164_ gnd vdd FILL
XFILL_6__1905_ gnd vdd FILL
X_2624_ PC[15] _304_ vdd gnd INVX1
X_2204_ _914__bF$buf1 _1075_ RDY_bF$buf1 _1313_ vdd gnd OAI21X1
XFILL_5__2794_ gnd vdd FILL
XFILL_5__2374_ gnd vdd FILL
X_3409_ _1__bF$buf10 vdd _78_ clk_bF$buf8 _AXYS[1]_[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2786_ gnd vdd FILL
XFILL_1__2366_ gnd vdd FILL
XFILL_3__3653_ gnd vdd FILL
XFILL_3__3233_ gnd vdd FILL
XFILL_5__3579_ gnd vdd FILL
XFILL_5__3159_ gnd vdd FILL
XFILL_4__1996_ gnd vdd FILL
XFILL_0__1896_ gnd vdd FILL
XFILL_6__2863_ gnd vdd FILL
X_3582_ _1586_ _1612_ vdd gnd INVX1
XFILL_6__2443_ gnd vdd FILL
XFILL_6__2023_ gnd vdd FILL
X_3162_ _764_ _765_ vdd gnd INVX1
XFILL_2__2855_ gnd vdd FILL
XFILL_2__2435_ gnd vdd FILL
XFILL_2__2015_ gnd vdd FILL
XFILL_4__3302_ gnd vdd FILL
XFILL_6__3648_ gnd vdd FILL
XFILL_6__3228_ gnd vdd FILL
XFILL_0__3622_ gnd vdd FILL
XFILL_0__3202_ gnd vdd FILL
XFILL_7__2604_ gnd vdd FILL
XFILL_3__2924_ gnd vdd FILL
XFILL_3__2504_ gnd vdd FILL
XFILL_3__3709_ gnd vdd FILL
X_2853_ _456_ _508_ _401_ _513_ vdd gnd NOR3X1
X_2433_ backwards _925_ _915_ op[2] _139_ vdd 
+ gnd
+ AOI22X1
X_2013_ _1124_ _1125_ vdd gnd INVX1
XFILL_0_BUFX2_insert0 gnd vdd FILL
XFILL_0_BUFX2_insert1 gnd vdd FILL
XFILL_0_BUFX2_insert2 gnd vdd FILL
XFILL_0_BUFX2_insert3 gnd vdd FILL
XFILL_0_BUFX2_insert4 gnd vdd FILL
XFILL_0_BUFX2_insert5 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0_BUFX2_insert7 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
XFILL_0_BUFX2_insert9 gnd vdd FILL
XFILL_5__2183_ gnd vdd FILL
XFILL_6__2919_ gnd vdd FILL
X_3638_ _1545_ _1549_ _1625_ _1668_ vdd gnd OAI21X1
X_3218_ _767_ _798_ _804_ _90_ vdd gnd AOI21X1
XFILL_1__2595_ gnd vdd FILL
XFILL_1__2175_ gnd vdd FILL
XFILL_3__3462_ gnd vdd FILL
XFILL_3__3042_ gnd vdd FILL
XFILL_6__2672_ gnd vdd FILL
X_3391_ _60_ clk_bF$buf4 IRHOLD[7] vdd gnd DFFPOSX1
XFILL_6__2252_ gnd vdd FILL
XFILL_2__2664_ gnd vdd FILL
XFILL_2__2244_ gnd vdd FILL
XFILL_4__3531_ gnd vdd FILL
XFILL_4__3111_ gnd vdd FILL
XFILL_6__3457_ gnd vdd FILL
XFILL_6__3037_ gnd vdd FILL
XFILL_2__3449_ gnd vdd FILL
XFILL_2__3029_ gnd vdd FILL
XFILL_0__3011_ gnd vdd FILL
XFILL_5__1874_ gnd vdd FILL
X_2909_ _1185_ _1412_ _1181_ _555_ vdd gnd NAND3X1
XFILL_1__1866_ gnd vdd FILL
XFILL_7__2833_ gnd vdd FILL
XFILL_3__2733_ gnd vdd FILL
XFILL_3__2313_ gnd vdd FILL
XFILL_5__2659_ gnd vdd FILL
XFILL_5__2239_ gnd vdd FILL
XFILL_5__3600_ gnd vdd FILL
XFILL_3__3518_ gnd vdd FILL
XFILL_6__1943_ gnd vdd FILL
X_2662_ res _148_ _335_ _336_ vdd gnd OAI21X1
X_2242_ _1188_ _1349_ _1350_ vdd gnd NOR2X1
XFILL_2__1935_ gnd vdd FILL
XFILL_4__2802_ gnd vdd FILL
XFILL_6__2728_ gnd vdd FILL
X_3447_ _1__bF$buf0 vdd _115_ clk_bF$buf0 ABH[6] vdd 
+ gnd
+ DFFSR
XFILL_6__2308_ gnd vdd FILL
X_3027_ _1006_ _647_ _649_ _54_ vdd gnd OAI21X1
XFILL_0__2702_ gnd vdd FILL
XFILL_3__3691_ gnd vdd FILL
XFILL_3__3271_ gnd vdd FILL
XFILL_5__3197_ gnd vdd FILL
XFILL_1__3189_ gnd vdd FILL
XFILL_6__2481_ gnd vdd FILL
XFILL_6__2061_ gnd vdd FILL
XFILL_2__2893_ gnd vdd FILL
XFILL_2__2473_ gnd vdd FILL
XFILL_2__2053_ gnd vdd FILL
XFILL_4__2399_ gnd vdd FILL
X_1933_ _AXYS[3]_[0] _1049_ _1047_ _AXYS[1]_[0] _1050_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2299_ gnd vdd FILL
XFILL_6__3266_ gnd vdd FILL
XFILL169950x104550 gnd vdd FILL
XFILL_0__3660_ gnd vdd FILL
XFILL_2__3678_ gnd vdd FILL
XFILL_0__3240_ gnd vdd FILL
XFILL_2__3258_ gnd vdd FILL
X_2718_ RDY_bF$buf0 _387_ _383_ _388_ vdd gnd NAND3X1
XFILL_7__2222_ gnd vdd FILL
XFILL_3__2962_ gnd vdd FILL
XFILL_3__2542_ gnd vdd FILL
XFILL_3__2122_ gnd vdd FILL
XFILL_5__2888_ gnd vdd FILL
XFILL_5__2468_ gnd vdd FILL
XFILL_5__2048_ gnd vdd FILL
XFILL_7__3007_ gnd vdd FILL
XFILL_6__1752_ gnd vdd FILL
X_2891_ _886__bF$buf5 _1027__bF$buf2 cld _542_ vdd gnd OAI21X1
X_2471_ _143_ _1109_ _170_ _1742_[3] vdd gnd OAI21X1
X_2051_ _1156_ _1159_ _1160_ vdd gnd NAND2X1
XFILL_2__1744_ gnd vdd FILL
XFILL_4__2611_ gnd vdd FILL
XFILL_6__2957_ gnd vdd FILL
X_3676_ _1707_ RDY_bF$buf7 _1696_ _1524_ vdd gnd OAI21X1
XFILL_6__2537_ gnd vdd FILL
XFILL_6__2117_ gnd vdd FILL
X_3256_ _931__bF$buf2 _942_ _974_ _832_ vdd gnd OAI21X1
XFILL_7__3180_ gnd vdd FILL
XFILL_2__2949_ gnd vdd FILL
XFILL_0__2931_ gnd vdd FILL
XFILL_2__2529_ gnd vdd FILL
XFILL_0__2511_ gnd vdd FILL
XFILL_2__2109_ gnd vdd FILL
XFILL_3__3080_ gnd vdd FILL
XFILL_7__1913_ gnd vdd FILL
XFILL_3__1813_ gnd vdd FILL
XFILL_6__2290_ gnd vdd FILL
XFILL_2__2282_ gnd vdd FILL
XFILL_6__3495_ gnd vdd FILL
XFILL_6__3075_ gnd vdd FILL
XFILL_0_BUFX2_insert80 gnd vdd FILL
XFILL_0_BUFX2_insert81 gnd vdd FILL
XFILL_0_BUFX2_insert82 gnd vdd FILL
XFILL_2__3487_ gnd vdd FILL
XFILL_0_BUFX2_insert83 gnd vdd FILL
XFILL_2__3067_ gnd vdd FILL
X_2947_ _1212_ _1327_ _540_ _588_ vdd gnd OAI21X1
XFILL_6__1808_ gnd vdd FILL
X_2527_ _216_ ADD[0] _221_ _222_ vdd gnd AOI21X1
X_2107_ _1159_ _1164_ _1216_ vdd gnd NAND2X1
XFILL_7__2451_ gnd vdd FILL
XFILL_3__2771_ gnd vdd FILL
XFILL_3__2351_ gnd vdd FILL
XFILL_5__2697_ gnd vdd FILL
XFILL_5__2277_ gnd vdd FILL
XFILL_1__2689_ gnd vdd FILL
XFILL_7__3656_ gnd vdd FILL
XFILL_1__2269_ gnd vdd FILL
XFILL_7__3236_ gnd vdd FILL
XFILL_1__3630_ gnd vdd FILL
XFILL_1__3210_ gnd vdd FILL
XFILL_3__3556_ gnd vdd FILL
XFILL_3__3136_ gnd vdd FILL
XFILL_6__1981_ gnd vdd FILL
X_2280_ _1383_ _1384_ _1387_ _1388_ vdd gnd AOI21X1
XFILL_2__1973_ gnd vdd FILL
XFILL_4__1899_ gnd vdd FILL
XFILL_4__2840_ gnd vdd FILL
XFILL_4__2420_ gnd vdd FILL
XFILL_4__2000_ gnd vdd FILL
XFILL_0__1799_ gnd vdd FILL
XFILL_6__2766_ gnd vdd FILL
X_3485_ _u_ALU8.BI7_ _1714__bF$buf2 _1731_ vdd gnd NAND2X1
XFILL_6__2346_ gnd vdd FILL
X_3065_ _548_ _677_ _678_ vdd gnd NAND2X1
XFILL_2__2758_ gnd vdd FILL
XFILL_0__2740_ gnd vdd FILL
XFILL_2__2338_ gnd vdd FILL
XFILL_0__2320_ gnd vdd FILL
XFILL_4__3625_ gnd vdd FILL
XFILL_4__3205_ gnd vdd FILL
XFILL_0__3525_ gnd vdd FILL
XFILL_0__3105_ gnd vdd FILL
XFILL_5__1968_ gnd vdd FILL
XFILL_7__2927_ gnd vdd FILL
XFILL_2__2091_ gnd vdd FILL
XFILL_1__2901_ gnd vdd FILL
XFILL_3__2827_ gnd vdd FILL
XFILL_3__2407_ gnd vdd FILL
X_1971_ _1049_ _AXYS[3]_[1] _AXYS[2]_[1] _1057_ _1087_ vdd 
+ gnd
+ AOI22X1
XFILL_2__3296_ gnd vdd FILL
X_2756_ DIMUX[1] _419_ _421_ _422_ vdd gnd AOI21X1
X_2336_ _1442_ _1443_ vdd gnd INVX1
XFILL_7__2680_ gnd vdd FILL
XFILL_3__2580_ gnd vdd FILL
XFILL_3__2160_ gnd vdd FILL
XFILL_5__2086_ gnd vdd FILL
XFILL_2_BUFX2_insert0 gnd vdd FILL
XFILL_1__2498_ gnd vdd FILL
XFILL_2_BUFX2_insert1 gnd vdd FILL
XFILL_2_BUFX2_insert2 gnd vdd FILL
XFILL_1__2078_ gnd vdd FILL
XFILL_7__3045_ gnd vdd FILL
XFILL_2_BUFX2_insert3 gnd vdd FILL
XFILL_2_BUFX2_insert4 gnd vdd FILL
XFILL_2_BUFX2_insert5 gnd vdd FILL
XFILL_2_BUFX2_insert6 gnd vdd FILL
XFILL_2_BUFX2_insert7 gnd vdd FILL
XFILL_2_BUFX2_insert8 gnd vdd FILL
XFILL_2_BUFX2_insert9 gnd vdd FILL
XFILL_6__1790_ gnd vdd FILL
XFILL_2__1782_ gnd vdd FILL
XFILL_6__2995_ gnd vdd FILL
XFILL_6__2575_ gnd vdd FILL
X_3294_ _860_ _249_ _865_ _105_ vdd gnd OAI21X1
XFILL_6__2155_ gnd vdd FILL
XFILL_2__2987_ gnd vdd FILL
XFILL_2__2567_ gnd vdd FILL
XFILL_2__2147_ gnd vdd FILL
XFILL_7__1951_ gnd vdd FILL
XFILL_4__3014_ gnd vdd FILL
XFILL_3__1851_ gnd vdd FILL
XFILL_5__1777_ gnd vdd FILL
XFILL_1__1769_ gnd vdd FILL
XFILL_7__2316_ gnd vdd FILL
XFILL_1__2710_ gnd vdd FILL
XFILL_3__2636_ gnd vdd FILL
XFILL_3__2216_ gnd vdd FILL
X_1780_ state[0] _906_ vdd gnd INVX1
XFILL_5__3503_ gnd vdd FILL
XFILL_4__1920_ gnd vdd FILL
XFILL_6__1846_ gnd vdd FILL
X_2985_ _614_ _615_ vdd gnd INVX1
X_2565_ _254_ _255_ vdd gnd INVX1
X_2145_ _886__bF$buf1 _1063_ _1253_ _1150__bF$buf3 _1254_ vdd 
+ gnd
+ AOI22X1
XFILL_2__1838_ gnd vdd FILL
XFILL_0__1820_ gnd vdd FILL
XFILL_4__2705_ gnd vdd FILL
XFILL_7__3694_ gnd vdd FILL
XFILL_0__2605_ gnd vdd FILL
XFILL_3__3594_ gnd vdd FILL
XFILL_3__3174_ gnd vdd FILL
XFILL_3__1907_ gnd vdd FILL
XFILL_6__2384_ gnd vdd FILL
XFILL_2__2796_ gnd vdd FILL
XFILL_2__2376_ gnd vdd FILL
X_1836_ _961_ _945_ _962_ vdd gnd NOR2X1
XFILL_4__3663_ gnd vdd FILL
XFILL_4__3243_ gnd vdd FILL
XFILL_6__3589_ gnd vdd FILL
XFILL_6__3169_ gnd vdd FILL
XFILL_0__3563_ gnd vdd FILL
XFILL_0__3143_ gnd vdd FILL
XFILL_4_BUFX2_insert37 gnd vdd FILL
XFILL_1__1998_ gnd vdd FILL
XFILL_4_BUFX2_insert38 gnd vdd FILL
XFILL_4_BUFX2_insert39 gnd vdd FILL
XFILL_7__2545_ gnd vdd FILL
XFILL_7__2125_ gnd vdd FILL
XFILL_3__2865_ gnd vdd FILL
XFILL_3__2445_ gnd vdd FILL
XFILL_3__2025_ gnd vdd FILL
XFILL_5__3312_ gnd vdd FILL
XFILL_1__3304_ gnd vdd FILL
X_2794_ RDY_bF$buf4 _285_ _457_ _452_ _13_ vdd 
+ gnd
+ OAI22X1
X_2374_ _1479_ _1480_ vdd gnd INVX1
XFILL_4__2934_ gnd vdd FILL
XFILL_4__2514_ gnd vdd FILL
X_3579_ _1599_ _1595_ _1609_ vdd gnd NAND2X1
X_3159_ _759_ _762_ vdd gnd INVX1
XFILL_7__3083_ gnd vdd FILL
XFILL_0__2834_ gnd vdd FILL
XFILL_0__2414_ gnd vdd FILL
XFILL_7__1816_ gnd vdd FILL
XFILL_0__3619_ gnd vdd FILL
XFILL_6__2193_ gnd vdd FILL
XFILL_2__2185_ gnd vdd FILL
XFILL_4__3472_ gnd vdd FILL
XFILL_4__3052_ gnd vdd FILL
XFILL_7__2774_ gnd vdd FILL
XFILL_7__2354_ gnd vdd FILL
XFILL_3__2674_ gnd vdd FILL
XFILL_3__2254_ gnd vdd FILL
XFILL_5__3541_ gnd vdd FILL
XFILL_7__3559_ gnd vdd FILL
XFILL_5__3121_ gnd vdd FILL
XFILL168450x3750 gnd vdd FILL
XFILL_1__3533_ gnd vdd FILL
XFILL_1__3113_ gnd vdd FILL
XFILL_3__3459_ gnd vdd FILL
XFILL_3__3039_ gnd vdd FILL
XFILL_6__1884_ gnd vdd FILL
X_2183_ _886__bF$buf4 _1291_ _1292_ vdd gnd NAND2X1
XFILL_2__1876_ gnd vdd FILL
XFILL_4__2743_ gnd vdd FILL
XFILL_4__2323_ gnd vdd FILL
XFILL_6__2669_ gnd vdd FILL
X_3388_ _57_ clk_bF$buf8 IRHOLD[4] vdd gnd DFFPOSX1
XFILL_6__2249_ gnd vdd FILL
XFILL_0__2643_ gnd vdd FILL
XFILL_6__3610_ gnd vdd FILL
XFILL_0__2223_ gnd vdd FILL
XFILL_2__3602_ gnd vdd FILL
XFILL_4__3528_ gnd vdd FILL
XFILL_4__3108_ gnd vdd FILL
XFILL_3__1945_ gnd vdd FILL
XFILL_0__3008_ gnd vdd FILL
XFILL_5__2812_ gnd vdd FILL
XFILL_1__2804_ gnd vdd FILL
X_1874_ _931__bF$buf0 _958_ _960_ _999_ vdd gnd OAI21X1
XFILL_4__3281_ gnd vdd FILL
XFILL_0__3181_ gnd vdd FILL
XFILL_2__3199_ gnd vdd FILL
X_2659_ _333_ _886__bF$buf3 _334_ vdd gnd OR2X2
X_2239_ _1290_ RDY_bF$buf5 _1347_ vdd gnd OR2X2
XFILL_7__2583_ gnd vdd FILL
XFILL_7__2163_ gnd vdd FILL
XFILL_0__1914_ gnd vdd FILL
X_3600_ _1629_ _1626_ _1536_ _1630_ vdd gnd OAI21X1
XFILL_3__2483_ gnd vdd FILL
XFILL_3__2063_ gnd vdd FILL
XFILL169950x61350 gnd vdd FILL
XFILL_3__3268_ gnd vdd FILL
XFILL_4_BUFX2_insert0 gnd vdd FILL
XFILL169950x28950 gnd vdd FILL
XFILL_4_BUFX2_insert1 gnd vdd FILL
XFILL_4_BUFX2_insert2 gnd vdd FILL
XFILL_4_BUFX2_insert3 gnd vdd FILL
XFILL_4_BUFX2_insert4 gnd vdd FILL
XFILL_4_BUFX2_insert5 gnd vdd FILL
XFILL_4_BUFX2_insert6 gnd vdd FILL
XFILL_4_BUFX2_insert7 gnd vdd FILL
XFILL_4_BUFX2_insert8 gnd vdd FILL
XFILL_4_BUFX2_insert9 gnd vdd FILL
XFILL_4__2972_ gnd vdd FILL
XFILL_4__2552_ gnd vdd FILL
XFILL_4__2132_ gnd vdd FILL
XFILL_6__2898_ gnd vdd FILL
XFILL_6__2478_ gnd vdd FILL
XFILL_6__2058_ gnd vdd FILL
X_3197_ _754_ _789_ _793_ _80_ vdd gnd OAI21X1
XFILL_0__2872_ gnd vdd FILL
XFILL_0__2452_ gnd vdd FILL
XFILL_0__2032_ gnd vdd FILL
XFILL_3__1754_ gnd vdd FILL
XFILL_0__3657_ gnd vdd FILL
XFILL_0__3237_ gnd vdd FILL
XFILL_5__2621_ gnd vdd FILL
XFILL_7__2219_ gnd vdd FILL
XFILL_5__2201_ gnd vdd FILL
XFILL_1__2613_ gnd vdd FILL
XFILL_3__2959_ gnd vdd FILL
XFILL_3__2539_ gnd vdd FILL
XFILL_3__2119_ gnd vdd FILL
XFILL_4__3090_ gnd vdd FILL
XFILL_4__1823_ gnd vdd FILL
XFILL_6__1749_ gnd vdd FILL
X_2888_ _1027__bF$buf2 _526_ _540_ vdd gnd NOR2X1
X_2468_ ADD[3] _144_ _167_ _168_ vdd gnd AOI21X1
X_2048_ IRHOLD[0] _1157_ vdd gnd INVX1
XFILL_7__2392_ gnd vdd FILL
XFILL_3__2292_ gnd vdd FILL
XFILL_4__2608_ gnd vdd FILL
XFILL_7__3177_ gnd vdd FILL
XFILL_0__2928_ gnd vdd FILL
XFILL_0__2508_ gnd vdd FILL
XFILL_1__3571_ gnd vdd FILL
XFILL_1__3151_ gnd vdd FILL
XFILL_3__3497_ gnd vdd FILL
XFILL_3__3077_ gnd vdd FILL
XFILL_4__2781_ gnd vdd FILL
XFILL_4__2361_ gnd vdd FILL
XFILL_6__2287_ gnd vdd FILL
XFILL_2__2699_ gnd vdd FILL
XFILL_0__2681_ gnd vdd FILL
XFILL_2__2279_ gnd vdd FILL
XFILL_0__2261_ gnd vdd FILL
XFILL_2__3640_ gnd vdd FILL
XFILL_2__3220_ gnd vdd FILL
XFILL_4__3566_ gnd vdd FILL
XFILL_4__3146_ gnd vdd FILL
XFILL_3__1983_ gnd vdd FILL
XFILL_0__3466_ gnd vdd FILL
XFILL_0__3046_ gnd vdd FILL
XFILL_5__2850_ gnd vdd FILL
XFILL_7__2448_ gnd vdd FILL
XFILL_5__2430_ gnd vdd FILL
XFILL_5__2010_ gnd vdd FILL
XFILL_1__2842_ gnd vdd FILL
XFILL_1__2422_ gnd vdd FILL
XFILL_1__2002_ gnd vdd FILL
XFILL_3__2768_ gnd vdd FILL
XFILL_3__2348_ gnd vdd FILL
XFILL_5__3635_ gnd vdd FILL
XFILL_5__3215_ gnd vdd FILL
XFILL_1__3627_ gnd vdd FILL
XFILL_1__3207_ gnd vdd FILL
XFILL_6__1978_ gnd vdd FILL
X_2697_ _357_ _368_ vdd gnd INVX1
X_2277_ _886__bF$buf2 _978_ _1385_ vdd gnd NOR2X1
XFILL_0__1952_ gnd vdd FILL
XFILL_2__2911_ gnd vdd FILL
XFILL_4__2837_ gnd vdd FILL
XFILL_4__2417_ gnd vdd FILL
XFILL_0__2737_ gnd vdd FILL
XFILL_0__2317_ gnd vdd FILL
XFILL_6__3704_ gnd vdd FILL
XFILL_4__2590_ gnd vdd FILL
XFILL_4__2170_ gnd vdd FILL
XFILL_6__2096_ gnd vdd FILL
XFILL_5__2906_ gnd vdd FILL
XFILL_0__2490_ gnd vdd FILL
XFILL_2__2088_ gnd vdd FILL
XFILL_0__2070_ gnd vdd FILL
X_1968_ _1082_ ADD[0] _1084_ _1085_ vdd gnd AOI21X1
XFILL_7__1892_ gnd vdd FILL
XFILL_0__3695_ gnd vdd FILL
XFILL_3__1792_ gnd vdd FILL
XFILL_0__3275_ gnd vdd FILL
XFILL_7__2677_ gnd vdd FILL
XFILL_1__2651_ gnd vdd FILL
XFILL_1__2231_ gnd vdd FILL
XFILL_3__2997_ gnd vdd FILL
XFILL_3__2577_ gnd vdd FILL
XFILL_3__2157_ gnd vdd FILL
XFILL_5__3024_ gnd vdd FILL
XFILL_1__3016_ gnd vdd FILL
XFILL_4__1861_ gnd vdd FILL
XFILL_6__1787_ gnd vdd FILL
X_2086_ RDY_bF$buf8 _1194_ _1195_ vdd gnd NAND2X1
XFILL_0__1761_ gnd vdd FILL
XFILL_2__1779_ gnd vdd FILL
XFILL169950x150 gnd vdd FILL
XFILL_2__2720_ gnd vdd FILL
XFILL_2__2300_ gnd vdd FILL
XFILL_4__2646_ gnd vdd FILL
XFILL_4__2226_ gnd vdd FILL
XFILL_0__2966_ gnd vdd FILL
XFILL_0__2546_ gnd vdd FILL
XFILL_6__3513_ gnd vdd FILL
XFILL_0__2126_ gnd vdd FILL
XFILL_2__3505_ gnd vdd FILL
XFILL_7__1948_ gnd vdd FILL
XFILL_5__1930_ gnd vdd FILL
XFILL_1__1922_ gnd vdd FILL
XFILL_3__1848_ gnd vdd FILL
XFILL_5__2715_ gnd vdd FILL
XFILL_1__2707_ gnd vdd FILL
X_1777_ _902__bF$buf0 _903_ vdd gnd INVX4
XFILL_4__3184_ gnd vdd FILL
XFILL_0__3084_ gnd vdd FILL
XFILL_4__1917_ gnd vdd FILL
XFILL_7__2066_ gnd vdd FILL
XFILL_0__1817_ gnd vdd FILL
X_3503_ _1532_ _1531_ _1528_ _1533_ vdd gnd OAI21X1
XFILL_1__2880_ gnd vdd FILL
XFILL_1__2460_ gnd vdd FILL
XFILL_1__2040_ gnd vdd FILL
XFILL_3__2386_ gnd vdd FILL
XFILL_5__3673_ gnd vdd FILL
XFILL_5__3253_ gnd vdd FILL
XFILL_1__3665_ gnd vdd FILL
XFILL_1__3245_ gnd vdd FILL
XFILL_0__1990_ gnd vdd FILL
XFILL_6_BUFX2_insert0 gnd vdd FILL
XFILL_6_BUFX2_insert1 gnd vdd FILL
XFILL_6_BUFX2_insert2 gnd vdd FILL
XFILL_6_BUFX2_insert3 gnd vdd FILL
XFILL_4__2875_ gnd vdd FILL
XFILL_4__2455_ gnd vdd FILL
XFILL_6_BUFX2_insert4 gnd vdd FILL
XFILL_6_BUFX2_insert5 gnd vdd FILL
XFILL_4__2035_ gnd vdd FILL
XFILL_6_BUFX2_insert6 gnd vdd FILL
XFILL_6_BUFX2_insert7 gnd vdd FILL
XFILL_6_BUFX2_insert8 gnd vdd FILL
XFILL_6_BUFX2_insert9 gnd vdd FILL
XFILL_0__2775_ gnd vdd FILL
XFILL_0__2355_ gnd vdd FILL
XFILL_2__3314_ gnd vdd FILL
XFILL167550x75750 gnd vdd FILL
XFILL_5__2944_ gnd vdd FILL
XFILL_5__2524_ gnd vdd FILL
XFILL_5__2104_ gnd vdd FILL
XFILL_1__2936_ gnd vdd FILL
XFILL_1__2516_ gnd vdd FILL
XFILL_5__3309_ gnd vdd FILL
XFILL_2__1800_ gnd vdd FILL
XFILL_7__2295_ gnd vdd FILL
X_3312_ _1741_[13] _869_ _875_ vdd gnd NAND2X1
XFILL_3__2195_ gnd vdd FILL
XFILL_5__3482_ gnd vdd FILL
XFILL_5__3062_ gnd vdd FILL
XFILL_1__3474_ gnd vdd FILL
XFILL_1__3054_ gnd vdd FILL
XFILL_5_CLKBUF1_insert26 gnd vdd FILL
XFILL_5_CLKBUF1_insert27 gnd vdd FILL
XFILL_5_CLKBUF1_insert28 gnd vdd FILL
XFILL_5_CLKBUF1_insert29 gnd vdd FILL
XFILL_4__2684_ gnd vdd FILL
XFILL_4__2264_ gnd vdd FILL
XFILL_0__2584_ gnd vdd FILL
XFILL_6__3551_ gnd vdd FILL
XFILL_0__2164_ gnd vdd FILL
XFILL_6__3131_ gnd vdd FILL
XFILL_2__3543_ gnd vdd FILL
XFILL_2__3123_ gnd vdd FILL
XFILL_4__3469_ gnd vdd FILL
XFILL_4__3049_ gnd vdd FILL
XFILL_1__1960_ gnd vdd FILL
XFILL_3__1886_ gnd vdd FILL
XFILL_5__2753_ gnd vdd FILL
XFILL_5__2333_ gnd vdd FILL
XFILL_1__2745_ gnd vdd FILL
XFILL_7__3712_ gnd vdd FILL
XFILL_1__2325_ gnd vdd FILL
XFILL_3__3612_ gnd vdd FILL
XFILL_5__3538_ gnd vdd FILL
XFILL_5__3118_ gnd vdd FILL
XFILL_4__1955_ gnd vdd FILL
XFILL_0__1855_ gnd vdd FILL
XFILL_6__2822_ gnd vdd FILL
X_3541_ _1728_ _1570_ _1568_ _1571_ vdd gnd OAI21X1
XFILL_6__2402_ gnd vdd FILL
X_3121_ adj_bcd _309_ _728_ vdd gnd NAND2X1
XFILL_2__2814_ gnd vdd FILL
XFILL_5__3291_ gnd vdd FILL
XFILL_6__3607_ gnd vdd FILL
XFILL_1__3283_ gnd vdd FILL
XFILL_4__2493_ gnd vdd FILL
XFILL_4__2073_ gnd vdd FILL
XFILL_5__2809_ gnd vdd FILL
XFILL_0__2393_ gnd vdd FILL
XFILL_4__3698_ gnd vdd FILL
XFILL_7__1795_ gnd vdd FILL
XFILL_4__3278_ gnd vdd FILL
X_2812_ ABH[1] _323_ _474_ _475_ vdd gnd AOI21X1
XFILL_0__3598_ gnd vdd FILL
XFILL_0__3178_ gnd vdd FILL
XFILL_5__2982_ gnd vdd FILL
XFILL_5__2562_ gnd vdd FILL
XFILL_5__2142_ gnd vdd FILL
XFILL_1__2974_ gnd vdd FILL
XFILL_1__2554_ gnd vdd FILL
XFILL_7__3521_ gnd vdd FILL
XFILL_1__2134_ gnd vdd FILL
XFILL_7__3101_ gnd vdd FILL
XFILL_3__3001_ gnd vdd FILL
XFILL_4__1764_ gnd vdd FILL
XFILL_6__2631_ gnd vdd FILL
XFILL_6__2211_ gnd vdd FILL
X_3350_ _1__bF$buf6 vdd _27_ clk_bF$buf9 sed vdd 
+ gnd
+ DFFSR
XFILL_2__2623_ gnd vdd FILL
XFILL_2__2203_ gnd vdd FILL
XFILL_4__2969_ gnd vdd FILL
XFILL_4__2549_ gnd vdd FILL
XFILL_4__2129_ gnd vdd FILL
XFILL_0__2869_ gnd vdd FILL
XFILL_0__2449_ gnd vdd FILL
XFILL_0__2029_ gnd vdd FILL
XFILL_1__3092_ gnd vdd FILL
XFILL_5__1833_ gnd vdd FILL
XFILL_1__1825_ gnd vdd FILL
XFILL_5__2618_ gnd vdd FILL
XFILL_2__3581_ gnd vdd FILL
XFILL_2__3161_ gnd vdd FILL
XFILL_4__3087_ gnd vdd FILL
XFILL_6__1902_ gnd vdd FILL
X_2621_ _1134_ _270_ _301_ _302_ vdd gnd OAI21X1
X_2201_ _931__bF$buf4 _942_ RDY_bF$buf1 _1310_ vdd gnd OAI21X1
XFILL_5__2791_ gnd vdd FILL
XFILL_5__2371_ gnd vdd FILL
X_3406_ _1__bF$buf3 vdd _75_ clk_bF$buf0 _AXYS[0]_[6] vdd 
+ gnd
+ DFFSR
XFILL_1__2783_ gnd vdd FILL
XFILL_1__2363_ gnd vdd FILL
XFILL_3__2289_ gnd vdd FILL
XFILL_3__3650_ gnd vdd FILL
XFILL_3__3230_ gnd vdd FILL
XFILL_5__3576_ gnd vdd FILL
XFILL_5__3156_ gnd vdd FILL
XFILL_1__3568_ gnd vdd FILL
XFILL_1__3148_ gnd vdd FILL
XFILL_4__1993_ gnd vdd FILL
XFILL_0__1893_ gnd vdd FILL
XFILL_6__2860_ gnd vdd FILL
XFILL_6__2440_ gnd vdd FILL
XFILL_6__2020_ gnd vdd FILL
XFILL_2__2852_ gnd vdd FILL
XFILL_2__2432_ gnd vdd FILL
XFILL_2__2012_ gnd vdd FILL
XFILL_4__2778_ gnd vdd FILL
XFILL_4__2358_ gnd vdd FILL
XFILL_0__2678_ gnd vdd FILL
XFILL_6__3645_ gnd vdd FILL
XFILL_0__2258_ gnd vdd FILL
XFILL_6__3225_ gnd vdd FILL
XFILL_2__3637_ gnd vdd FILL
XFILL_2__3217_ gnd vdd FILL
XFILL_7__2601_ gnd vdd FILL
XFILL_3__2921_ gnd vdd FILL
XFILL_3__2501_ gnd vdd FILL
XFILL_5__2847_ gnd vdd FILL
XFILL_5__2427_ gnd vdd FILL
XFILL_5__2007_ gnd vdd FILL
XFILL_1__2839_ gnd vdd FILL
XFILL_1__2419_ gnd vdd FILL
XFILL_3__3706_ gnd vdd FILL
X_2850_ RDY_bF$buf4 _510_ _507_ _511_ vdd gnd NAND3X1
X_2430_ _1080_ _136_ vdd gnd INVX2
X_2010_ _1049_ _AXYS[3]_[5] _AXYS[2]_[5] _1057_ _1122_ vdd 
+ gnd
+ AOI22X1
XFILL_5__2180_ gnd vdd FILL
XFILL_7__2198_ gnd vdd FILL
XFILL_0__1949_ gnd vdd FILL
XFILL_6__2916_ gnd vdd FILL
X_3635_ _1599_ _1595_ _1665_ vdd gnd NOR2X1
X_3215_ _AXYS[2]_[4] _798_ _803_ vdd gnd NOR2X1
XFILL_1__2592_ gnd vdd FILL
XFILL_1__2172_ gnd vdd FILL
XFILL_3__2098_ gnd vdd FILL
XFILL_2__2908_ gnd vdd FILL
XFILL_2__2661_ gnd vdd FILL
XFILL_2__2241_ gnd vdd FILL
XFILL_4__2587_ gnd vdd FILL
XFILL_4__2167_ gnd vdd FILL
XFILL_0__2487_ gnd vdd FILL
XFILL_6__3454_ gnd vdd FILL
XFILL_0__2067_ gnd vdd FILL
XFILL_6__3034_ gnd vdd FILL
XFILL_2__3026_ gnd vdd FILL
XFILL_5__1871_ gnd vdd FILL
X_2906_ _552_ _553_ vdd gnd INVX1
XFILL_1__1863_ gnd vdd FILL
XFILL_7__2830_ gnd vdd FILL
XFILL_3__1789_ gnd vdd FILL
XFILL_3__2730_ gnd vdd FILL
XFILL_3__2310_ gnd vdd FILL
XFILL_5__2656_ gnd vdd FILL
XFILL_5__2236_ gnd vdd FILL
XFILL_1__2648_ gnd vdd FILL
XFILL_1__2228_ gnd vdd FILL
XFILL_3__3515_ gnd vdd FILL
XFILL_6__1940_ gnd vdd FILL
XFILL_2__1932_ gnd vdd FILL
XFILL_4__1858_ gnd vdd FILL
XFILL_0__1758_ gnd vdd FILL
XFILL_6__2725_ gnd vdd FILL
X_3444_ _1__bF$buf1 vdd _112_ clk_bF$buf2 ABH[3] vdd 
+ gnd
+ DFFSR
XFILL_6__2305_ gnd vdd FILL
X_3024_ reset _645_ IRHOLD[0] _648_ vdd gnd OAI21X1
XFILL_2__2717_ gnd vdd FILL
XFILL_5__3194_ gnd vdd FILL
XFILL_1__3186_ gnd vdd FILL
XFILL_5__1927_ gnd vdd FILL
XFILL_1__1919_ gnd vdd FILL
XFILL_2__2890_ gnd vdd FILL
XFILL_2__2470_ gnd vdd FILL
XFILL_2__2050_ gnd vdd FILL
XFILL_4__2396_ gnd vdd FILL
X_1930_ _1045_ _1046_ _1040_ _1047_ vdd gnd AOI21X1
XFILL_0__2296_ gnd vdd FILL
XFILL_6__3263_ gnd vdd FILL
XFILL_2__3675_ gnd vdd FILL
XFILL_2__3255_ gnd vdd FILL
X_2715_ _373_ _384_ _377_ _381_ _385_ vdd 
+ gnd
+ OAI22X1
XFILL_5__2885_ gnd vdd FILL
XFILL_5__2465_ gnd vdd FILL
XFILL_5__2045_ gnd vdd FILL
XFILL_1__2877_ gnd vdd FILL
XFILL_1__2457_ gnd vdd FILL
XFILL_1__2037_ gnd vdd FILL
XFILL_7__3004_ gnd vdd FILL
XFILL_4_CLKBUF1_insert30 gnd vdd FILL
XFILL_4_CLKBUF1_insert31 gnd vdd FILL
XFILL_4_CLKBUF1_insert32 gnd vdd FILL
XFILL_4_CLKBUF1_insert33 gnd vdd FILL
XFILL_4_CLKBUF1_insert34 gnd vdd FILL
XFILL_4_CLKBUF1_insert35 gnd vdd FILL
XFILL_4_CLKBUF1_insert36 gnd vdd FILL
XFILL_0__1987_ gnd vdd FILL
XFILL_6__2954_ gnd vdd FILL
X_3673_ ADD[6] _1714__bF$buf0 _1695_ vdd gnd NAND2X1
XFILL_6__2534_ gnd vdd FILL
X_3253_ state[5] _1272_ _1061_ _829_ vdd gnd OAI21X1
XFILL_6__2114_ gnd vdd FILL
XFILL_2__2946_ gnd vdd FILL
XFILL_2__2526_ gnd vdd FILL
XFILL_2__2106_ gnd vdd FILL
XFILL_0__3713_ gnd vdd FILL
XFILL_3__1810_ gnd vdd FILL
XFILL_6__3492_ gnd vdd FILL
XFILL_6__3072_ gnd vdd FILL
XFILL_0_BUFX2_insert50 gnd vdd FILL
XFILL_0_BUFX2_insert51 gnd vdd FILL
XFILL_2__3484_ gnd vdd FILL
XFILL_0_BUFX2_insert52 gnd vdd FILL
XFILL_0_BUFX2_insert53 gnd vdd FILL
XFILL_2__3064_ gnd vdd FILL
XFILL_0_BUFX2_insert54 gnd vdd FILL
XFILL_0_BUFX2_insert55 gnd vdd FILL
XFILL_0_BUFX2_insert56 gnd vdd FILL
XFILL_0_BUFX2_insert57 gnd vdd FILL
XFILL_0_BUFX2_insert58 gnd vdd FILL
XFILL_0_BUFX2_insert59 gnd vdd FILL
XFILL_6__1805_ gnd vdd FILL
X_2944_ _571_ _1149__bF$buf1 _584_ _586_ _34_ vdd 
+ gnd
+ AOI22X1
X_2524_ ADD[0] _209_ _219_ vdd gnd NAND2X1
X_2104_ _1172_ _1212_ _1213_ vdd gnd NAND2X1
XFILL_5__2694_ gnd vdd FILL
XFILL_5__2274_ gnd vdd FILL
X_3309_ _448_ _869_ _873_ _112_ vdd gnd OAI21X1
XFILL_1__2686_ gnd vdd FILL
XFILL_7__3653_ gnd vdd FILL
XFILL_1__2266_ gnd vdd FILL
XFILL_7__3233_ gnd vdd FILL
XFILL_3__3553_ gnd vdd FILL
XFILL_3__3133_ gnd vdd FILL
XFILL_5__3479_ gnd vdd FILL
XFILL_5__3059_ gnd vdd FILL
XFILL_2__1970_ gnd vdd FILL
XFILL_4__1896_ gnd vdd FILL
XFILL_0__1796_ gnd vdd FILL
XFILL_6__2763_ gnd vdd FILL
X_3482_ alu_op[2] _1725_ _1728_ vdd gnd NOR2X1
XFILL_6__2343_ gnd vdd FILL
X_3062_ _675_ DIMUX[3] _956_ _676_ vdd gnd MUX2X1
XFILL_2__2755_ gnd vdd FILL
XFILL_2__2335_ gnd vdd FILL
XFILL_4__3622_ gnd vdd FILL
XFILL_4__3202_ gnd vdd FILL
XFILL_6__3548_ gnd vdd FILL
XFILL_6__3128_ gnd vdd FILL
XFILL_0__3522_ gnd vdd FILL
XFILL_0__3102_ gnd vdd FILL
XFILL_5__1965_ gnd vdd FILL
XFILL_1__1957_ gnd vdd FILL
XFILL_7__2924_ gnd vdd FILL
XFILL_7__2504_ gnd vdd FILL
XFILL_3__2824_ gnd vdd FILL
XFILL_3__2404_ gnd vdd FILL
XFILL_2__3293_ gnd vdd FILL
XFILL_3__3609_ gnd vdd FILL
X_2753_ _351_ _419_ vdd gnd INVX1
X_2333_ _1431_ _1439_ _1440_ vdd gnd OR2X2
XFILL_5__2083_ gnd vdd FILL
XFILL_6__2819_ gnd vdd FILL
X_3538_ _1722_ _1554_ _1564_ _1567_ _1568_ vdd 
+ gnd
+ OAI22X1
X_3118_ _722_ _724_ _725_ _69_ vdd gnd OAI21X1
XFILL_1__2495_ gnd vdd FILL
XFILL_1__2075_ gnd vdd FILL
XFILL_5__3288_ gnd vdd FILL
XFILL_6__2992_ gnd vdd FILL
XFILL_6__2572_ gnd vdd FILL
X_3291_ ABL[3] _860_ _864_ vdd gnd NAND2X1
XFILL_6__2152_ gnd vdd FILL
XFILL_2__2984_ gnd vdd FILL
XFILL_2__2564_ gnd vdd FILL
XFILL_2__2144_ gnd vdd FILL
XFILL_4__3011_ gnd vdd FILL
XFILL_5__1774_ gnd vdd FILL
X_2809_ _1291_ _325_ DIMUX[1] _472_ vdd gnd OAI21X1
XFILL_1__1766_ gnd vdd FILL
XFILL_7__2733_ gnd vdd FILL
XFILL_7__2313_ gnd vdd FILL
XFILL_3__2633_ gnd vdd FILL
XFILL_3__2213_ gnd vdd FILL
XFILL_5__2979_ gnd vdd FILL
XFILL_5__2559_ gnd vdd FILL
XFILL_5__2139_ gnd vdd FILL
XFILL_5__3500_ gnd vdd FILL
XFILL_6__1843_ gnd vdd FILL
X_2982_ _1348_ _606_ _612_ vdd gnd NAND2X1
X_2562_ _1013_ _201_ _251_ _199_ _252_ vdd 
+ gnd
+ OAI22X1
X_2142_ _1160_ _1213_ _1251_ vdd gnd NOR2X1
XFILL_2__1835_ gnd vdd FILL
XFILL_4__2702_ gnd vdd FILL
XFILL_6__2628_ gnd vdd FILL
X_3347_ _1__bF$buf6 vdd _24_ clk_bF$buf9 clc vdd 
+ gnd
+ DFFSR
XFILL_6__2208_ gnd vdd FILL
XFILL_7__3691_ gnd vdd FILL
XFILL_0__2602_ gnd vdd FILL
XFILL_3__3591_ gnd vdd FILL
XFILL_3__3171_ gnd vdd FILL
XFILL_5__3097_ gnd vdd FILL
XFILL_1__3089_ gnd vdd FILL
XFILL_3__1904_ gnd vdd FILL
XFILL_6__2381_ gnd vdd FILL
XFILL_2__2793_ gnd vdd FILL
XFILL_2__2373_ gnd vdd FILL
XFILL_4__2299_ gnd vdd FILL
X_1833_ _902__bF$buf1 _958_ _956_ _959_ vdd gnd OAI21X1
XFILL_4__3660_ gnd vdd FILL
XFILL_4__3240_ gnd vdd FILL
XFILL_6__3586_ gnd vdd FILL
XFILL_0__2199_ gnd vdd FILL
XFILL_6__3166_ gnd vdd FILL
XFILL_2__3578_ gnd vdd FILL
XFILL_0__3560_ gnd vdd FILL
XFILL_2__3158_ gnd vdd FILL
XFILL_0__3140_ gnd vdd FILL
X_2618_ _295_ _218_ _299_ _1741_[13] vdd gnd OAI21X1
XFILL_1__1995_ gnd vdd FILL
XFILL_7__2962_ gnd vdd FILL
XFILL_7__2122_ gnd vdd FILL
XFILL_3__2862_ gnd vdd FILL
XFILL_3__2442_ gnd vdd FILL
XFILL_3__2022_ gnd vdd FILL
XFILL_5__2788_ gnd vdd FILL
XFILL_5__2368_ gnd vdd FILL
XBUFX2_insert60 _1714_ _1714__bF$buf3 vdd gnd BUFX2
XBUFX2_insert61 _1714_ _1714__bF$buf2 vdd gnd BUFX2
XBUFX2_insert62 _1714_ _1714__bF$buf1 vdd gnd BUFX2
XBUFX2_insert63 _1714_ _1714__bF$buf0 vdd gnd BUFX2
XBUFX2_insert64 _886_ _886__bF$buf6 vdd gnd BUFX2
XFILL_1__3301_ gnd vdd FILL
XBUFX2_insert65 _886_ _886__bF$buf5 vdd gnd BUFX2
XBUFX2_insert66 _886_ _886__bF$buf4 vdd gnd BUFX2
XBUFX2_insert67 _886_ _886__bF$buf3 vdd gnd BUFX2
XBUFX2_insert68 _886_ _886__bF$buf2 vdd gnd BUFX2
XBUFX2_insert69 _886_ _886__bF$buf1 vdd gnd BUFX2
XFILL_3__3647_ gnd vdd FILL
XFILL_3__3227_ gnd vdd FILL
X_2791_ _408_ _453_ _450_ _454_ _455_ vdd 
+ gnd
+ AOI22X1
X_2371_ _902__bF$buf2 _954_ RDY_bF$buf1 _1477_ vdd gnd OAI21X1
XFILL_4__2931_ gnd vdd FILL
XFILL_4__2511_ gnd vdd FILL
XFILL_6__2857_ gnd vdd FILL
XFILL_6__2437_ gnd vdd FILL
X_3576_ _1605_ _1604_ _1606_ vdd gnd NAND2X1
XFILL_6__2017_ gnd vdd FILL
X_3156_ CO _726_ _759_ vdd gnd NAND2X1
XFILL_7__3080_ gnd vdd FILL
XFILL_2__2849_ gnd vdd FILL
XFILL_0__2831_ gnd vdd FILL
XFILL_2__2429_ gnd vdd FILL
XFILL_0__2411_ gnd vdd FILL
XFILL_2__2009_ gnd vdd FILL
XFILL_7__1813_ gnd vdd FILL
XFILL_0__3616_ gnd vdd FILL
XFILL_6__2190_ gnd vdd FILL
XFILL_2__2182_ gnd vdd FILL
XFILL_3__2918_ gnd vdd FILL
X_2847_ _493_ _494_ _488_ _508_ vdd gnd OAI21X1
X_2427_ _1337_ _133_ vdd gnd INVX1
X_2007_ _1082_ ADD[4] _1119_ _1120_ vdd gnd AOI21X1
XFILL_7__2351_ gnd vdd FILL
XFILL_3__2671_ gnd vdd FILL
XFILL_3__2251_ gnd vdd FILL
XFILL_5__2597_ gnd vdd FILL
XFILL_5__2177_ gnd vdd FILL
XFILL_1__2589_ gnd vdd FILL
XFILL_7__3556_ gnd vdd FILL
XFILL_1__2169_ gnd vdd FILL
XFILL_7__3136_ gnd vdd FILL
XFILL_1__3530_ gnd vdd FILL
XFILL_1__3110_ gnd vdd FILL
XFILL_3__3456_ gnd vdd FILL
XFILL_3__3036_ gnd vdd FILL
XFILL_6__1881_ gnd vdd FILL
X_2180_ _956_ _953_ _886__bF$buf4 _1289_ vdd gnd MUX2X1
XFILL_2__1873_ gnd vdd FILL
XFILL_4__1799_ gnd vdd FILL
XFILL_4__2740_ gnd vdd FILL
XFILL_4__2320_ gnd vdd FILL
XFILL_6__2666_ gnd vdd FILL
X_3385_ _54_ clk_bF$buf4 IRHOLD[1] vdd gnd DFFPOSX1
XFILL_6__2246_ gnd vdd FILL
XFILL_2__2658_ gnd vdd FILL
XFILL_0__2640_ gnd vdd FILL
XFILL_2__2238_ gnd vdd FILL
XFILL_0__2220_ gnd vdd FILL
XFILL_4__3525_ gnd vdd FILL
XFILL_4__3105_ gnd vdd FILL
XFILL169350x18150 gnd vdd FILL
XFILL_3__1942_ gnd vdd FILL
XFILL_0__3005_ gnd vdd FILL
XFILL_5__1868_ gnd vdd FILL
XFILL_7__2827_ gnd vdd FILL
XFILL_1__2801_ gnd vdd FILL
XFILL_3__2727_ gnd vdd FILL
XFILL_3__2307_ gnd vdd FILL
X_1871_ _901_ _952_ _996_ vdd gnd NAND2X1
XFILL_2__3196_ gnd vdd FILL
XFILL_6__1937_ gnd vdd FILL
X_2656_ _965_ _330_ _324_ _331_ vdd gnd OAI21X1
X_2236_ _929_ _1078_ _1344_ vdd gnd NAND2X1
XFILL_7__2580_ gnd vdd FILL
XFILL_0__1911_ gnd vdd FILL
XFILL_2__1929_ gnd vdd FILL
XFILL_3__2480_ gnd vdd FILL
XFILL_3__2060_ gnd vdd FILL
XFILL_1__2398_ gnd vdd FILL
XFILL_3__3265_ gnd vdd FILL
XFILL_6__2895_ gnd vdd FILL
XFILL_6__2475_ gnd vdd FILL
X_3194_ _720__bF$buf0 _687_ _AXYS[1]_[2] _792_ vdd gnd OAI21X1
XFILL_6__2055_ gnd vdd FILL
XFILL_2__2887_ gnd vdd FILL
XFILL_2__2467_ gnd vdd FILL
XFILL_2__2047_ gnd vdd FILL
X_1927_ _1043_ _1023_ _1025_ _1044_ vdd gnd NOR3X1
XFILL_7__1851_ gnd vdd FILL
XFILL_3__1751_ gnd vdd FILL
XFILL_0__3654_ gnd vdd FILL
XFILL_0__3234_ gnd vdd FILL
XFILL169950x82950 gnd vdd FILL
XFILL_7__2216_ gnd vdd FILL
XFILL_1__2610_ gnd vdd FILL
XFILL_3__2956_ gnd vdd FILL
XFILL_3__2536_ gnd vdd FILL
XFILL_3__2116_ gnd vdd FILL
XFILL_4__1820_ gnd vdd FILL
XFILL_6__1746_ gnd vdd FILL
X_2885_ _530_ _1366_ _538_ vdd gnd OR2X2
X_2465_ _149_ _165_ vdd gnd INVX1
X_2045_ I _1152_ _1153_ _1154_ vdd gnd OAI21X1
XFILL_4__2605_ gnd vdd FILL
XFILL_7__3174_ gnd vdd FILL
XFILL_0__2925_ gnd vdd FILL
XFILL_0__2505_ gnd vdd FILL
XFILL_3__3494_ gnd vdd FILL
XFILL_3__3074_ gnd vdd FILL
XFILL168750x64950 gnd vdd FILL
XFILL_3__1807_ gnd vdd FILL
XFILL_6__2284_ gnd vdd FILL
XFILL_2__2696_ gnd vdd FILL
XFILL_2__2276_ gnd vdd FILL
XFILL_4__3563_ gnd vdd FILL
XFILL_4__3143_ gnd vdd FILL
XFILL_6__3489_ gnd vdd FILL
XFILL_6__3069_ gnd vdd FILL
XFILL_3__1980_ gnd vdd FILL
XFILL_0__3463_ gnd vdd FILL
XFILL_0__3043_ gnd vdd FILL
XFILL_1__1898_ gnd vdd FILL
XFILL_7__2445_ gnd vdd FILL
XFILL_3__2765_ gnd vdd FILL
XFILL_3__2345_ gnd vdd FILL
XFILL_5__3632_ gnd vdd FILL
XFILL_5__3212_ gnd vdd FILL
XFILL_1__3624_ gnd vdd FILL
XFILL_1__3204_ gnd vdd FILL
XFILL_6__1975_ gnd vdd FILL
X_2694_ _364_ _322_ _365_ vdd gnd NOR2X1
X_2274_ _1373_ _1380_ _1382_ vdd gnd NAND2X1
XFILL_2__1967_ gnd vdd FILL
XFILL_4__2834_ gnd vdd FILL
XFILL_4__2414_ gnd vdd FILL
X_3479_ alu_op[3] _1725_ vdd gnd INVX4
X_3059_ D _672_ _673_ vdd gnd NAND2X1
XFILL_0__2734_ gnd vdd FILL
XFILL_6__3701_ gnd vdd FILL
XFILL_0__2314_ gnd vdd FILL
XFILL_4__3619_ gnd vdd FILL
XFILL_0__3519_ gnd vdd FILL
XFILL_6__2093_ gnd vdd FILL
XFILL_5__2903_ gnd vdd FILL
XFILL_2__2085_ gnd vdd FILL
X_1965_ _940_ _1077_ _1081_ _1082_ vdd gnd NAND3X1
XFILL_6__3298_ gnd vdd FILL
XFILL_0__3692_ gnd vdd FILL
XFILL_0__3272_ gnd vdd FILL
XFILL_7__2674_ gnd vdd FILL
XFILL_7__2254_ gnd vdd FILL
XFILL_3__2994_ gnd vdd FILL
XFILL_3__2574_ gnd vdd FILL
XFILL_3__2154_ gnd vdd FILL
XFILL_7__3459_ gnd vdd FILL
XFILL_5__3021_ gnd vdd FILL
XFILL_1__3013_ gnd vdd FILL
XFILL_6__1784_ gnd vdd FILL
X_2083_ _886__bF$buf1 _947_ _1191_ _1150__bF$buf3 _1192_ vdd 
+ gnd
+ AOI22X1
XFILL_5_BUFX2_insert70 gnd vdd FILL
XFILL_5_BUFX2_insert71 gnd vdd FILL
XFILL_5_BUFX2_insert72 gnd vdd FILL
XFILL_5_BUFX2_insert73 gnd vdd FILL
XFILL_5_BUFX2_insert74 gnd vdd FILL
XFILL_2__1776_ gnd vdd FILL
XFILL_5_BUFX2_insert75 gnd vdd FILL
XFILL_5_BUFX2_insert76 gnd vdd FILL
XFILL_5_BUFX2_insert77 gnd vdd FILL
XFILL_5_BUFX2_insert78 gnd vdd FILL
XFILL_5_BUFX2_insert79 gnd vdd FILL
XFILL_4__2643_ gnd vdd FILL
XFILL_4__2223_ gnd vdd FILL
XFILL_6__2989_ gnd vdd FILL
XFILL_6__2569_ gnd vdd FILL
X_3288_ _231_ _860_ _862_ _102_ vdd gnd OAI21X1
XFILL_6__2149_ gnd vdd FILL
XFILL_0__2963_ gnd vdd FILL
XFILL_0__2543_ gnd vdd FILL
XFILL_6__3510_ gnd vdd FILL
XFILL_0__2123_ gnd vdd FILL
XFILL_2__3502_ gnd vdd FILL
XFILL_7__1945_ gnd vdd FILL
XFILL_4__3008_ gnd vdd FILL
XFILL_3__1845_ gnd vdd FILL
XFILL_5__2712_ gnd vdd FILL
XFILL_1__2704_ gnd vdd FILL
X_1774_ _899_ _898_ _900_ vdd gnd NOR2X1
XFILL_4__3181_ gnd vdd FILL
XFILL_0__3081_ gnd vdd FILL
XFILL_2__3099_ gnd vdd FILL
XFILL_4__1914_ gnd vdd FILL
X_2979_ _1181_ _605_ _609_ vdd gnd NOR2X1
X_2559_ _249_ _1741_[4] vdd gnd INVX1
X_2139_ _1220_ _1247_ _1210_ _1248_ vdd gnd NAND3X1
XFILL_7__2483_ gnd vdd FILL
XFILL_7__2063_ gnd vdd FILL
XFILL_0__1814_ gnd vdd FILL
X_3500_ AI[4] _1529_ _1530_ vdd gnd NAND2X1
XFILL_3__2383_ gnd vdd FILL
XFILL_5__3670_ gnd vdd FILL
XFILL_5__3250_ gnd vdd FILL
XFILL_1__3662_ gnd vdd FILL
XFILL_1__3242_ gnd vdd FILL
XFILL_3__3588_ gnd vdd FILL
XFILL_3__3168_ gnd vdd FILL
XFILL_4__2872_ gnd vdd FILL
XFILL_4__2452_ gnd vdd FILL
XFILL_4__2032_ gnd vdd FILL
XFILL_6__2798_ gnd vdd FILL
XFILL_6__2378_ gnd vdd FILL
X_3097_ _539_ _706_ _705_ _707_ vdd gnd NAND3X1
XFILL_0__2772_ gnd vdd FILL
XFILL_0__2352_ gnd vdd FILL
XFILL_2__3311_ gnd vdd FILL
XFILL_4__3657_ gnd vdd FILL
XFILL_4__3237_ gnd vdd FILL
XFILL_0__3557_ gnd vdd FILL
XFILL_0__3137_ gnd vdd FILL
XFILL_7__2959_ gnd vdd FILL
XFILL_5__2941_ gnd vdd FILL
XFILL_5__2521_ gnd vdd FILL
XFILL_7__2119_ gnd vdd FILL
XFILL_5__2101_ gnd vdd FILL
XFILL_1__2933_ gnd vdd FILL
XFILL_1__2513_ gnd vdd FILL
XFILL_3__2859_ gnd vdd FILL
XFILL_3__2439_ gnd vdd FILL
XFILL_3__2019_ gnd vdd FILL
XFILL_5__3306_ gnd vdd FILL
X_2788_ _430_ _438_ _451_ _452_ vdd gnd AOI21X1
X_2368_ _1473_ _1342_ _1474_ vdd gnd NOR2X1
XFILL_7__2292_ gnd vdd FILL
XFILL_3__2192_ gnd vdd FILL
XFILL_4__2928_ gnd vdd FILL
XFILL_4__2508_ gnd vdd FILL
XFILL_7__3077_ gnd vdd FILL
XFILL_0__2828_ gnd vdd FILL
XFILL_0__2408_ gnd vdd FILL
XFILL_1__3471_ gnd vdd FILL
XFILL_1__3051_ gnd vdd FILL
XFILL_4__2681_ gnd vdd FILL
XFILL_4__2261_ gnd vdd FILL
XFILL_6__2187_ gnd vdd FILL
XFILL_0__2581_ gnd vdd FILL
XFILL_2__2599_ gnd vdd FILL
XFILL_0__2161_ gnd vdd FILL
XFILL_2__2179_ gnd vdd FILL
XFILL_2__3540_ gnd vdd FILL
XFILL_2__3120_ gnd vdd FILL
XFILL_4__3466_ gnd vdd FILL
XFILL_4__3046_ gnd vdd FILL
XFILL_3__1883_ gnd vdd FILL
XFILL_5__2750_ gnd vdd FILL
XFILL_5__2330_ gnd vdd FILL
XFILL_7__2348_ gnd vdd FILL
XFILL_1__2742_ gnd vdd FILL
XFILL_1__2322_ gnd vdd FILL
XFILL_3__2668_ gnd vdd FILL
XFILL_3__2248_ gnd vdd FILL
XFILL169950x14550 gnd vdd FILL
XFILL_5__3535_ gnd vdd FILL
XFILL_5__3115_ gnd vdd FILL
XFILL_1__3527_ gnd vdd FILL
XFILL_1__3107_ gnd vdd FILL
XFILL_4__1952_ gnd vdd FILL
XFILL_6__1878_ gnd vdd FILL
X_2597_ _925_ _196_ ABH[2] _282_ vdd gnd OAI21X1
X_2177_ _914__bF$buf0 _949_ RDY_bF$buf5 _1286_ vdd gnd OAI21X1
XFILL_0__1852_ gnd vdd FILL
XFILL_2__2811_ gnd vdd FILL
XFILL_4__2737_ gnd vdd FILL
XFILL_4__2317_ gnd vdd FILL
XFILL_0__2637_ gnd vdd FILL
XFILL_6__3604_ gnd vdd FILL
XFILL_0__2217_ gnd vdd FILL
XFILL_1__3280_ gnd vdd FILL
XFILL_3__1939_ gnd vdd FILL
XFILL_4__2490_ gnd vdd FILL
XFILL_4__2070_ gnd vdd FILL
XFILL_5__2806_ gnd vdd FILL
XFILL_0__2390_ gnd vdd FILL
X_1868_ _934_ _907_ _993_ vdd gnd NOR2X1
XFILL_4__3695_ gnd vdd FILL
XFILL_7__1792_ gnd vdd FILL
XFILL_4__3275_ gnd vdd FILL
XFILL_0__3595_ gnd vdd FILL
XFILL_0__3175_ gnd vdd FILL
XFILL_7__2577_ gnd vdd FILL
XFILL_0__1908_ gnd vdd FILL
XFILL_1__2971_ gnd vdd FILL
XFILL_1__2551_ gnd vdd FILL
XFILL_1__2131_ gnd vdd FILL
XFILL_3__2897_ gnd vdd FILL
XFILL_3__2477_ gnd vdd FILL
XFILL_3__2057_ gnd vdd FILL
XFILL_4__1761_ gnd vdd FILL

.ends
.end
