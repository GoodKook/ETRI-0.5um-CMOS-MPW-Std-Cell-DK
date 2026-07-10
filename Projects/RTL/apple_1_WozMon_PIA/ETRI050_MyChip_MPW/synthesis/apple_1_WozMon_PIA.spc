*SPICE netlist created from verilog structural netlist module apple_1_WozMon_PIA by vlog2Spice (qflow)
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

.subckt apple_1_WozMon_PIA vdd gnd clk reset AB[0] AB[1] AB[2]
+ AB[3] AB[4] AB[5] AB[6] AB[7] AB[8] AB[9] AB[10]
+ AB[11] AB[12] AB[13] AB[14] AB[15] DI[0] DI[1] DI[2]
+ DI[3] DI[4] DI[5] DI[6] DI[7] DO[0] DO[1] DO[2]
+ DO[3] DO[4] DO[5] DO[6] DO[7] WE IRQ NMI
+ RDY kbd_rdy kbd_ack kbd_data[0] kbd_data[1] kbd_data[2] kbd_data[3] kbd_data[4]
+ kbd_data[5] kbd_data[6] dsp_rdy dsp_ack dsp_data[0] dsp_data[1] dsp_data[2] dsp_data[3]
+ dsp_data[4] dsp_data[5] dsp_data[6] 

XFILL_2__2620_ gnd vdd FILL
XFILL_4__2966_ gnd vdd FILL
XFILL_4__2546_ gnd vdd FILL
XFILL_0__2446_ gnd vdd FILL
X_4972_ _2235_ _2195_ _2240_ _2241_ Data_In[0] vdd 
+ gnd
+ AOI22X1
X_4552_ _1281_ _1297_ _1315__bF$buf1 _1280_ vdd gnd OAI21X1
X_4132_ _1328__bF$buf5 _1252_ _898_ vdd gnd NOR2X1
XFILL_2__3825_ gnd vdd FILL
XFILL_2__3405_ gnd vdd FILL
XFILL_1__4294_ gnd vdd FILL
XFILL_1__2607_ gnd vdd FILL
XFILL_2__4783_ gnd vdd FILL
XFILL_2__4363_ gnd vdd FILL
XFILL_4__4289_ gnd vdd FILL
X_3823_ \u_cpu.ADD\[2] _908_ _618_ _617_ vdd gnd AOI21X1
X_3403_ _1221_ _877_ _235_ _234_ vdd gnd OAI21X1
XFILL_1__2780_ gnd vdd FILL
XFILL_1__2360_ gnd vdd FILL
XFILL_0__4189_ gnd vdd FILL
X_4608_ \u_cpu.state\[0] _1336_ vdd gnd INVX1
XFILL_1__3985_ gnd vdd FILL
XFILL_1__3565_ gnd vdd FILL
XFILL_3__4852_ gnd vdd FILL
XFILL_3__4432_ gnd vdd FILL
XFILL_3__4012_ gnd vdd FILL
XFILL274050x104550 gnd vdd FILL
XFILL_4__2775_ gnd vdd FILL
XFILL_0__2675_ gnd vdd FILL
X_4781_ _1741_ _1798_ _1796_ _1834_ vdd gnd NAND3X1
X_4361_ _1111_ _1105_ _1104_ vdd gnd NOR2X1
XFILL_2__3634_ gnd vdd FILL
XFILL_2__3214_ gnd vdd FILL
XFILL_4__4921_ gnd vdd FILL
XFILL_4__4501_ gnd vdd FILL
XFILL_0__4821_ gnd vdd FILL
XFILL_2__4839_ gnd vdd FILL
XFILL_0__4401_ gnd vdd FILL
XFILL_2__4419_ gnd vdd FILL
XFILL_1__2836_ gnd vdd FILL
XFILL_1__2416_ gnd vdd FILL
XFILL_3__3703_ gnd vdd FILL
XFILL_2__4592_ gnd vdd FILL
XFILL_2__4172_ gnd vdd FILL
XFILL_4__4098_ gnd vdd FILL
XFILL_3__4908_ gnd vdd FILL
X_3632_ _436_ _438_ _450_ _435_ vdd gnd NAND3X1
X_3212_ _106_ _105_ \u_cpu.sei\ _107_ _104_ vdd 
+ gnd
+ OAI22X1
XFILL_2__2905_ gnd vdd FILL
X_4837_ _1879_ _1877_ _1880_ vdd gnd NAND2X1
X_4417_ \u_cpu.PC\[12] _1154_ vdd gnd INVX1
XFILL_1__3794_ gnd vdd FILL
XFILL_1__3374_ gnd vdd FILL
XFILL_3__4661_ gnd vdd FILL
XFILL_3__4241_ gnd vdd FILL
XBUFX2_insert120 _1070_ _1070__bF$buf2 vdd gnd BUFX2
XBUFX2_insert121 _1070_ _1070__bF$buf1 vdd gnd BUFX2
XBUFX2_insert122 _1070_ _1070__bF$buf0 vdd gnd BUFX2
XBUFX2_insert123 _1196_ _1196__bF$buf8 vdd gnd BUFX2
XFILL_1__4579_ gnd vdd FILL
XBUFX2_insert124 _1196_ _1196__bF$buf7 vdd gnd BUFX2
XFILL_1__4159_ gnd vdd FILL
XBUFX2_insert125 _1196_ _1196__bF$buf6 vdd gnd BUFX2
XBUFX2_insert126 _1196_ _1196__bF$buf5 vdd gnd BUFX2
XBUFX2_insert127 _1196_ _1196__bF$buf4 vdd gnd BUFX2
XBUFX2_insert128 _1196_ _1196__bF$buf3 vdd gnd BUFX2
XFILL_4__2584_ gnd vdd FILL
XBUFX2_insert129 _1196_ _1196__bF$buf2 vdd gnd BUFX2
XFILL273750x93750 gnd vdd FILL
XFILL_0__2484_ gnd vdd FILL
X_4590_ _1324_ _1319_ _1318_ vdd gnd NOR2X1
X_4170_ \u_cpu.ADD\[6] _938_ _930_ vdd gnd NAND2X1
XFILL_2__3863_ gnd vdd FILL
XFILL_2__3443_ gnd vdd FILL
XFILL_2__3023_ gnd vdd FILL
XFILL_4__3789_ gnd vdd FILL
XFILL_4__3369_ gnd vdd FILL
X_2903_ \u_pia_dsp.state\[1] _1550_ _1561_ vdd gnd NAND2X1
XFILL_4__4730_ gnd vdd FILL
XFILL_4__4310_ gnd vdd FILL
XFILL_0__3689_ gnd vdd FILL
XFILL_0__3269_ gnd vdd FILL
XFILL_2__4648_ gnd vdd FILL
XFILL_0__4630_ gnd vdd FILL
XFILL_2__4228_ gnd vdd FILL
XFILL_0__4210_ gnd vdd FILL
XFILL_1__2645_ gnd vdd FILL
XFILL_3__3932_ gnd vdd FILL
XFILL_3__3512_ gnd vdd FILL
XFILL_3__4717_ gnd vdd FILL
X_3861_ \u_cpu.AXYS[1]\[5] _1050_ _790_ \u_cpu.AXYS[2]\[5] _653_ vdd 
+ gnd
+ AOI22X1
X_3441_ _266_ _2354_[13] vdd gnd INVX1
X_3021_ _1504_ _1500_ _1505_ _1436_ vdd gnd OAI21X1
XFILL_2__2714_ gnd vdd FILL
X_4646_ \u_cpu.alu_op\[2] _1699_ vdd gnd INVX2
X_4226_ _1065_ _1058_ _979_ vdd gnd AND2X2
XFILL_1__3183_ gnd vdd FILL
XFILL_0__3901_ gnd vdd FILL
XFILL_2__3919_ gnd vdd FILL
XFILL_3__4890_ gnd vdd FILL
XFILL_3__4470_ gnd vdd FILL
XFILL_3__4050_ gnd vdd FILL
XFILL_1__4388_ gnd vdd FILL
XFILL_4__2393_ gnd vdd FILL
XFILL_2__3672_ gnd vdd FILL
XFILL_2__3252_ gnd vdd FILL
XFILL_4__3598_ gnd vdd FILL
XFILL_4__3178_ gnd vdd FILL
X_2712_ _2017_ _2022_ _2354__5_bF$buf4 _2023_ vdd gnd AOI21X1
XFILL_0__3498_ gnd vdd FILL
XFILL_2__4457_ gnd vdd FILL
XFILL_2__4037_ gnd vdd FILL
X_3917_ _703_ _1129__bF$buf0 _702_ _1116_ _1444_ vdd 
+ gnd
+ OAI22X1
XFILL_1__2454_ gnd vdd FILL
XFILL_3__3741_ gnd vdd FILL
XFILL_3__3321_ gnd vdd FILL
XFILL_1__3659_ gnd vdd FILL
XFILL_1__3239_ gnd vdd FILL
XFILL_1__4600_ gnd vdd FILL
XFILL_3__4946_ gnd vdd FILL
XFILL_3__4526_ gnd vdd FILL
XFILL_3__4106_ gnd vdd FILL
X_3670_ _1328__bF$buf3 _906_ RDY_bF$buf6 _473_ vdd gnd OAI21X1
X_3250_ _131_ _130_ vdd gnd INVX1
XFILL_2__2943_ gnd vdd FILL
XFILL_2__2523_ gnd vdd FILL
XFILL_4__2449_ gnd vdd FILL
XFILL_4__3810_ gnd vdd FILL
XFILL_0__2769_ gnd vdd FILL
X_4875_ _1675_ vdd _1666_ clk_bF$buf0 \u_cpu.ADD\[6] vdd 
+ gnd
+ DFFSR
X_4455_ _1188_ _1187_ vdd gnd INVX1
X_4035_ _803_ _913_ _802_ vdd gnd OR2X2
XFILL_0__3710_ gnd vdd FILL
XFILL_2__3728_ gnd vdd FILL
XFILL_2__3308_ gnd vdd FILL
XFILL_1__4197_ gnd vdd FILL
XFILL_0__4915_ gnd vdd FILL
XFILL_0_BUFX2_insert20 gnd vdd FILL
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_0_BUFX2_insert22 gnd vdd FILL
XFILL_2__3481_ gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert24 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
X_2941_ _2354_[15] _1528_ _1529_ _1530_ vdd gnd NAND3X1
X_2521_ _2354__4_bF$buf6 _2294_ _2305_ vdd gnd NOR2X1
XFILL_2__4686_ gnd vdd FILL
XFILL_2__4266_ gnd vdd FILL
X_3726_ _1196__bF$buf2 _1083_ _526_ _525_ vdd gnd OAI21X1
X_3306_ _1196__bF$buf0 _1345__bF$buf2 \u_cpu.compare\ _159_ vdd gnd OAI21X1
XFILL_1__2683_ gnd vdd FILL
XFILL_3__3970_ gnd vdd FILL
XFILL_3__3550_ gnd vdd FILL
XFILL_1__3888_ gnd vdd FILL
XFILL_1__3468_ gnd vdd FILL
XFILL_3__4755_ gnd vdd FILL
XFILL_3__4335_ gnd vdd FILL
XFILL_2__2752_ gnd vdd FILL
XFILL_4__2678_ gnd vdd FILL
XFILL_0__2998_ gnd vdd FILL
XFILL_0__2578_ gnd vdd FILL
X_4684_ \u_cpu.alu_op\[3] _1699_ _1729_ _1737_ vdd gnd OAI21X1
X_4264_ _1037__bF$buf1 _1027_ _1014_ vdd gnd NOR2X1
XFILL_2__3957_ gnd vdd FILL
XFILL_2__3537_ gnd vdd FILL
XFILL_4__4824_ gnd vdd FILL
XFILL_4__4404_ gnd vdd FILL
XFILL_3__2821_ gnd vdd FILL
XFILL_0__4724_ gnd vdd FILL
XFILL_3__2401_ gnd vdd FILL
XFILL_0__4304_ gnd vdd FILL
XFILL_1__2739_ gnd vdd FILL
XFILL_2__3290_ gnd vdd FILL
XFILL_3__3606_ gnd vdd FILL
X_2750_ _1967_ _2354__0_bF$buf4 _1634__bF$buf3 _1985_ vdd gnd AOI21X1
XFILL_2__4495_ gnd vdd FILL
XFILL_2__4075_ gnd vdd FILL
X_3955_ _1005_ _733_ _990_ _732_ vdd gnd OAI21X1
X_3535_ _360_ _346_ _343_ \u_cpu.AI\[2] vdd gnd OAI21X1
X_3115_ _1417__bF$buf7 vdd _1447_ clk_bF$buf7 \u_cpu.AXYS[2]\[2] vdd 
+ gnd
+ DFFSR
XFILL_1__2492_ gnd vdd FILL
XFILL_2__2808_ gnd vdd FILL
XFILL_1__3697_ gnd vdd FILL
XFILL_1__3277_ gnd vdd FILL
XFILL_3__4984_ gnd vdd FILL
XFILL_3__4564_ gnd vdd FILL
XFILL_3__4144_ gnd vdd FILL
XFILL_2__2981_ gnd vdd FILL
XFILL_2__2561_ gnd vdd FILL
XFILL_4__2487_ gnd vdd FILL
XFILL_0__2387_ gnd vdd FILL
X_4493_ \u_cpu.ADD\[1] _1221_ vdd gnd INVX1
X_4073_ _841_ _840_ vdd gnd INVX1
XFILL_2__3766_ gnd vdd FILL
XFILL_2__3346_ gnd vdd FILL
X_2806_ _2354__0_bF$buf5 _1928_ _1929_ _1930_ vdd gnd OAI21X1
XFILL_4__4633_ gnd vdd FILL
XFILL_4__4213_ gnd vdd FILL
XFILL_0__4953_ gnd vdd FILL
XFILL_3__2630_ gnd vdd FILL
XFILL_0__4533_ gnd vdd FILL
XFILL_0__4113_ gnd vdd FILL
XFILL274050x43350 gnd vdd FILL
XFILL_1__2968_ gnd vdd FILL
XFILL_1__2548_ gnd vdd FILL
XFILL_3__3835_ gnd vdd FILL
XFILL_3__3415_ gnd vdd FILL
X_3764_ RDY_bF$buf5 _804_ _582_ _564_ _563_ vdd 
+ gnd
+ OAI22X1
X_3344_ _971_ _745_ \u_cpu.u_ALU8.BCD\ vdd gnd NOR2X1
XFILL_2__2617_ gnd vdd FILL
XFILL_4__3904_ gnd vdd FILL
X_4969_ _2238_ _2186_ _2239_ vdd gnd NAND2X1
X_4549_ _1311_ \u_cpu.PC\[5] _1278_ _1277_ vdd gnd AOI21X1
X_4129_ _896_ _895_ vdd gnd INVX1
XFILL_0__3804_ gnd vdd FILL
XFILL_3__4793_ gnd vdd FILL
XFILL_3__4373_ gnd vdd FILL
XFILL_2__2790_ gnd vdd FILL
XFILL_2__2370_ gnd vdd FILL
XFILL_2__3995_ gnd vdd FILL
XFILL_2__3575_ gnd vdd FILL
XFILL273750x25350 gnd vdd FILL
X_2615_ _2354__2_bF$buf4 _1635__bF$buf3 _2118_ vdd gnd NAND2X1
XFILL_4__4862_ gnd vdd FILL
XFILL_4__4442_ gnd vdd FILL
XFILL_4__4022_ gnd vdd FILL
XFILL_0__4762_ gnd vdd FILL
XFILL_0__4342_ gnd vdd FILL
XFILL_1__2777_ gnd vdd FILL
XFILL_1__2357_ gnd vdd FILL
XBUFX2_insert39 _2354_[4] _2354__4_bF$buf6 vdd gnd BUFX2
XFILL_3__3644_ gnd vdd FILL
XFILL_3__3224_ gnd vdd FILL
XFILL_1__4923_ gnd vdd FILL
XFILL_1__4503_ gnd vdd FILL
XFILL_3__4849_ gnd vdd FILL
XFILL_3__4429_ gnd vdd FILL
XFILL_3__4009_ gnd vdd FILL
X_3993_ _766_ _768_ _765_ vdd gnd NOR2X1
X_3573_ _1196__bF$buf2 _910_ _530_ _377_ vdd gnd AOI21X1
X_3153_ _1417__bF$buf10 vdd _1456_ clk_bF$buf8 \u_cpu.dst_reg\[0] vdd 
+ gnd
+ DFFSR
XFILL_2__2846_ gnd vdd FILL
XFILL_2__2426_ gnd vdd FILL
XFILL_4__3713_ gnd vdd FILL
X_4778_ _1728_ _1772_ _1785_ _1831_ vdd gnd OAI21X1
X_4358_ _1125_ \u_cpu.IRHOLD\[0] _1340_ _1101_ vdd gnd OAI21X1
XFILL_0__3613_ gnd vdd FILL
XFILL_3__4182_ gnd vdd FILL
XFILL_4__4918_ gnd vdd FILL
XFILL_0__4818_ gnd vdd FILL
XFILL_3__2915_ gnd vdd FILL
XFILL_2__3384_ gnd vdd FILL
X_2844_ _2354__1_bF$buf0 _2354__0_bF$buf2 _1651_ vdd gnd AND2X2
X_2424_ _2093_ _2054_ _49_ _2354__3_bF$buf1 _50_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4671_ gnd vdd FILL
XFILL_4__4251_ gnd vdd FILL
XFILL_0__4571_ gnd vdd FILL
XFILL_2__4589_ gnd vdd FILL
XFILL_2__4169_ gnd vdd FILL
XFILL_0__4151_ gnd vdd FILL
X_3629_ _433_ _1428_ vdd gnd INVX1
X_3209_ _1178_ _220_ _107_ _101_ vdd gnd OAI21X1
XFILL_1__2586_ gnd vdd FILL
XFILL_3__3873_ gnd vdd FILL
XFILL_3__3453_ gnd vdd FILL
XFILL_1__4732_ gnd vdd FILL
XFILL_1__4312_ gnd vdd FILL
XFILL_3__4658_ gnd vdd FILL
XFILL_3__4238_ gnd vdd FILL
X_3382_ _220_ _467_ _218_ _217_ vdd gnd OAI21X1
XFILL_2__2655_ gnd vdd FILL
XFILL_4__3942_ gnd vdd FILL
XFILL_4__3522_ gnd vdd FILL
X_4587_ _1350_ _1316_ _1322_ _1315_ vdd gnd NAND3X1
X_4167_ _928_ _937_ _927_ vdd gnd NOR2X1
XFILL_0__3842_ gnd vdd FILL
XFILL_0__3422_ gnd vdd FILL
XFILL_0__3002_ gnd vdd FILL
XFILL_2__4801_ gnd vdd FILL
XFILL_4__4727_ gnd vdd FILL
XFILL_4__4307_ gnd vdd FILL
XFILL_3__2724_ gnd vdd FILL
XFILL_0__4627_ gnd vdd FILL
XFILL_0__4207_ gnd vdd FILL
XFILL_2__3193_ gnd vdd FILL
XFILL_3__3929_ gnd vdd FILL
XFILL_3__3509_ gnd vdd FILL
X_2653_ _2354__2_bF$buf5 _1635__bF$buf0 _2081_ vdd gnd NOR2X1
XFILL_4__4480_ gnd vdd FILL
XFILL_4__4060_ gnd vdd FILL
XFILL_0__4380_ gnd vdd FILL
XFILL_2__4398_ gnd vdd FILL
X_3858_ _1073_ _873_ _651_ _650_ vdd gnd OAI21X1
X_3438_ _265_ _264_ _263_ vdd gnd AND2X2
X_3018_ _1506_ _1500_ _1511_ _1437_ vdd gnd OAI21X1
XFILL_1__2395_ gnd vdd FILL
XFILL_3__3682_ gnd vdd FILL
XFILL_3__3262_ gnd vdd FILL
XFILL_1_BUFX2_insert90 gnd vdd FILL
XFILL_1_BUFX2_insert91 gnd vdd FILL
XFILL_1_BUFX2_insert92 gnd vdd FILL
XFILL_1_BUFX2_insert93 gnd vdd FILL
XFILL_1_BUFX2_insert94 gnd vdd FILL
XFILL_1_BUFX2_insert95 gnd vdd FILL
XFILL_1_BUFX2_insert96 gnd vdd FILL
XFILL_1_BUFX2_insert97 gnd vdd FILL
XFILL_1_BUFX2_insert98 gnd vdd FILL
XFILL_1_BUFX2_insert99 gnd vdd FILL
XFILL_1__4961_ gnd vdd FILL
XFILL_1__4541_ gnd vdd FILL
XFILL_1__4121_ gnd vdd FILL
XFILL_3__4887_ gnd vdd FILL
XFILL_3__4467_ gnd vdd FILL
XFILL_3__4047_ gnd vdd FILL
X_3191_ _1106_ _1027_ _90_ vdd gnd NAND2X1
XFILL_2__2884_ gnd vdd FILL
XFILL_2__2464_ gnd vdd FILL
XFILL_4__3751_ gnd vdd FILL
XFILL_4__3331_ gnd vdd FILL
X_4396_ _1206_ \u_cpu.ABH\[5] _1137_ _1136_ vdd gnd AOI21X1
XFILL_2__3669_ gnd vdd FILL
XFILL_0__3651_ gnd vdd FILL
XFILL_0__3231_ gnd vdd FILL
XFILL_2__3249_ gnd vdd FILL
XFILL_2__4610_ gnd vdd FILL
X_2709_ _2354__0_bF$buf1 _1944_ _2354__3_bF$buf2 _2026_ vdd gnd OAI21X1
XFILL_4__4956_ gnd vdd FILL
XFILL_4__4536_ gnd vdd FILL
XFILL_4__4116_ gnd vdd FILL
XFILL_0__4856_ gnd vdd FILL
XFILL_3__2533_ gnd vdd FILL
XFILL_0__4436_ gnd vdd FILL
XFILL_0__4016_ gnd vdd FILL
XFILL_1__3812_ gnd vdd FILL
XFILL_3__3738_ gnd vdd FILL
XFILL_3__3318_ gnd vdd FILL
X_2882_ _1551_ \u_pia_dsp.state\[0] _1560_ _1578_ vdd gnd NAND3X1
X_2462_ _2354__0_bF$buf1 _2354__2_bF$buf5 _1643__bF$buf3 _13_ vdd gnd OAI21X1
XFILL_4__2602_ gnd vdd FILL
X_3667_ _1196__bF$buf7 _1270_ _1286_ _471_ _470_ vdd 
+ gnd
+ AOI22X1
X_3247_ _1344_ _1108_ _1096_ _740_ _127_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2922_ gnd vdd FILL
XFILL_0__2502_ gnd vdd FILL
XFILL_3__3491_ gnd vdd FILL
XFILL_0__3707_ gnd vdd FILL
XFILL_1__4770_ gnd vdd FILL
XFILL_1__4350_ gnd vdd FILL
XFILL_3__4696_ gnd vdd FILL
XFILL_3__4276_ gnd vdd FILL
XFILL_2__2693_ gnd vdd FILL
XFILL_4__3980_ gnd vdd FILL
XFILL_4__3560_ gnd vdd FILL
XFILL_2__3898_ gnd vdd FILL
XFILL_0__3880_ gnd vdd FILL
XFILL_0__3460_ gnd vdd FILL
XFILL_2__3478_ gnd vdd FILL
X_2938_ _2354__1_bF$buf3 _1531_ _1532_ _1533_ vdd gnd NAND3X1
X_2518_ _2088_ _1929_ _1994_ _2308_ vdd gnd NAND3X1
XFILL_4__4765_ gnd vdd FILL
XFILL_0__4665_ gnd vdd FILL
XFILL_3__2762_ gnd vdd FILL
XFILL_0__4245_ gnd vdd FILL
XFILL_1__3621_ gnd vdd FILL
XFILL_1__3201_ gnd vdd FILL
XFILL_3__3967_ gnd vdd FILL
XFILL_3__3547_ gnd vdd FILL
X_2691_ _2043_ _1660_ _1634__bF$buf4 _2044_ vdd gnd OAI21X1
XFILL_1__4826_ gnd vdd FILL
XFILL_1__4406_ gnd vdd FILL
XFILL_4__2831_ gnd vdd FILL
XFILL_4__2411_ gnd vdd FILL
X_3896_ _685_ _684_ vdd gnd INVX1
X_3476_ _644_ _641_ _871_ _290_ vdd gnd OAI21X1
X_3056_ _1417__bF$buf3 vdd _1465_ clk_bF$buf7 \u_cpu.AXYS[3]\[0] vdd 
+ gnd
+ DFFSR
XFILL_2__2749_ gnd vdd FILL
XFILL_0__2731_ gnd vdd FILL
XFILL_4__3616_ gnd vdd FILL
XFILL_0__3936_ gnd vdd FILL
XFILL_0__3516_ gnd vdd FILL
XFILL_3__4085_ gnd vdd FILL
XFILL_3__2818_ gnd vdd FILL
XFILL_2__3287_ gnd vdd FILL
X_2747_ _1634__bF$buf0 _1959_ _1987_ _1988_ vdd gnd NAND3X1
XFILL_4__4574_ gnd vdd FILL
XFILL_4__4154_ gnd vdd FILL
XFILL_0__4894_ gnd vdd FILL
XFILL_3__2991_ gnd vdd FILL
XFILL_3__2571_ gnd vdd FILL
XFILL_0__4474_ gnd vdd FILL
XFILL_0__4054_ gnd vdd FILL
XFILL_1__2489_ gnd vdd FILL
XFILL_1__3850_ gnd vdd FILL
XFILL_1__3430_ gnd vdd FILL
XFILL_1__3010_ gnd vdd FILL
XFILL_3__3776_ gnd vdd FILL
XFILL_3__3356_ gnd vdd FILL
XFILL_1__4635_ gnd vdd FILL
XFILL_1__4215_ gnd vdd FILL
XFILL_4__2640_ gnd vdd FILL
X_3285_ reset _181_ \u_cpu.IRHOLD\[5] _149_ vdd gnd OAI21X1
XFILL_2__2978_ gnd vdd FILL
XFILL_2__2558_ gnd vdd FILL
XFILL_0__2540_ gnd vdd FILL
XFILL_0_BUFX2_insert110 gnd vdd FILL
XFILL_0_BUFX2_insert111 gnd vdd FILL
XFILL_0_BUFX2_insert112 gnd vdd FILL
XFILL_0_BUFX2_insert113 gnd vdd FILL
XFILL_0_BUFX2_insert114 gnd vdd FILL
XFILL_4__3845_ gnd vdd FILL
XFILL_0_BUFX2_insert115 gnd vdd FILL
XFILL_4__3425_ gnd vdd FILL
XFILL_0_BUFX2_insert116 gnd vdd FILL
XFILL_4__3005_ gnd vdd FILL
XFILL_0_BUFX2_insert117 gnd vdd FILL
XFILL_0_BUFX2_insert118 gnd vdd FILL
XFILL_0_BUFX2_insert119 gnd vdd FILL
XFILL_0__3745_ gnd vdd FILL
XFILL_0__3325_ gnd vdd FILL
XFILL_2__4704_ gnd vdd FILL
XFILL_1__2701_ gnd vdd FILL
XFILL_3__2627_ gnd vdd FILL
XFILL_1__3906_ gnd vdd FILL
X_2976_ _2351_ _1620_ _1621_ vdd gnd NAND2X1
X_2556_ _2150_ _1648_ _1923__bF$buf1 _2271_ vdd gnd OAI21X1
XFILL_4__4383_ gnd vdd FILL
XFILL_3__2380_ gnd vdd FILL
XFILL_0__4283_ gnd vdd FILL
X_4702_ \u_cpu.alu_op\[3] \u_cpu.alu_op\[2] _1755_ vdd gnd NAND2X1
XFILL_3__3585_ gnd vdd FILL
XFILL_3__3165_ gnd vdd FILL
XFILL_1__4864_ gnd vdd FILL
XFILL_1__4444_ gnd vdd FILL
XFILL_1__4024_ gnd vdd FILL
X_3094_ _1417__bF$buf3 vdd _1383_ clk_bF$buf7 \u_cpu.ABH\[0] vdd 
+ gnd
+ DFFSR
XFILL_2__2787_ gnd vdd FILL
XFILL_2__2367_ gnd vdd FILL
XFILL_4__3654_ gnd vdd FILL
XFILL_4__3234_ gnd vdd FILL
X_4299_ \u_cpu.plp\ _1345__bF$buf1 _1044_ vdd gnd NOR2X1
XFILL_0__3974_ gnd vdd FILL
XFILL_0__3554_ gnd vdd FILL
XFILL_2__4933_ gnd vdd FILL
XFILL_2__4513_ gnd vdd FILL
XFILL_4__4859_ gnd vdd FILL
XFILL_4__4439_ gnd vdd FILL
XFILL_4__4019_ gnd vdd FILL
XFILL_1__2930_ gnd vdd FILL
XFILL_1__2510_ gnd vdd FILL
XFILL_0__4759_ gnd vdd FILL
XFILL_3__2856_ gnd vdd FILL
XFILL_3__2436_ gnd vdd FILL
XFILL_0__4339_ gnd vdd FILL
XFILL_1__3715_ gnd vdd FILL
X_2785_ _2354__4_bF$buf3 _1950_ _1920__bF$buf4 _1951_ vdd gnd OAI21X1
X_2365_ _2354__6_bF$buf2 AB[6] vdd gnd BUFX2
XFILL_4__4192_ gnd vdd FILL
XFILL272850x10950 gnd vdd FILL
XFILL_0__4092_ gnd vdd FILL
XFILL_4__2925_ gnd vdd FILL
XFILL_4__2505_ gnd vdd FILL
XFILL_0__2825_ gnd vdd FILL
XFILL_0__2405_ gnd vdd FILL
X_4931_ _2198_ DO_kbd[5] _2195_ _2206_ vdd gnd AOI21X1
X_4511_ _1327_ _1308_ _1239_ vdd gnd NAND2X1
XFILL_3__3394_ gnd vdd FILL
XFILL_1__4673_ gnd vdd FILL
XFILL_1__4253_ gnd vdd FILL
XFILL_3__4599_ gnd vdd FILL
XFILL_3__4179_ gnd vdd FILL
XFILL_2__2596_ gnd vdd FILL
XFILL_4__3883_ gnd vdd FILL
XFILL_4__3463_ gnd vdd FILL
XFILL_0__3783_ gnd vdd FILL
XFILL_0__3363_ gnd vdd FILL
XFILL_2__4742_ gnd vdd FILL
XFILL_2_CLKBUF1_insert26 gnd vdd FILL
XFILL_2_CLKBUF1_insert27 gnd vdd FILL
XFILL_2__4322_ gnd vdd FILL
XFILL_2_CLKBUF1_insert28 gnd vdd FILL
XFILL_2_CLKBUF1_insert29 gnd vdd FILL
XFILL_4__4668_ gnd vdd FILL
XFILL_4__4248_ gnd vdd FILL
XFILL_3__2665_ gnd vdd FILL
XFILL_0__4568_ gnd vdd FILL
XFILL_0__4148_ gnd vdd FILL
XFILL_1__3944_ gnd vdd FILL
XFILL_1__3524_ gnd vdd FILL
X_2594_ _1643__bF$buf1 _2130_ _1644_ _2139_ vdd gnd OAI21X1
XFILL_3__4811_ gnd vdd FILL
XFILL_1__4729_ gnd vdd FILL
XFILL_1__4309_ gnd vdd FILL
XFILL_4__2734_ gnd vdd FILL
X_3799_ \u_cpu.DIMUX\[3] _867_ _780_ \u_cpu.ABL\[3] _596_ vdd 
+ gnd
+ AOI22X1
X_3379_ _1074_ _215_ _813_ _214_ vdd gnd NAND3X1
XFILL_0__2634_ gnd vdd FILL
X_4740_ _1791_ _1751_ _1793_ vdd gnd NOR2X1
X_4320_ _1305__bF$buf0 _1087_ _1066_ _1065_ vdd gnd OAI21X1
XFILL_4__3939_ gnd vdd FILL
XFILL_4__3519_ gnd vdd FILL
XFILL_0__3839_ gnd vdd FILL
XFILL_0__3419_ gnd vdd FILL
XFILL_1__4482_ gnd vdd FILL
XFILL_1__4062_ gnd vdd FILL
XFILL_4__3692_ gnd vdd FILL
XFILL_4__3272_ gnd vdd FILL
XFILL_0__3592_ gnd vdd FILL
XFILL_0__3172_ gnd vdd FILL
XFILL_2__4971_ gnd vdd FILL
XFILL_2__4551_ gnd vdd FILL
XFILL_2__4131_ gnd vdd FILL
XFILL_4__4897_ gnd vdd FILL
XFILL_4__4477_ gnd vdd FILL
XFILL_4__4057_ gnd vdd FILL
XFILL_0__4797_ gnd vdd FILL
XFILL_3__2894_ gnd vdd FILL
XFILL_3__2474_ gnd vdd FILL
XFILL_0__4377_ gnd vdd FILL
XFILL_1__3753_ gnd vdd FILL
XFILL_1__3333_ gnd vdd FILL
XFILL_3__3679_ gnd vdd FILL
XFILL_3__3259_ gnd vdd FILL
XFILL_3__4620_ gnd vdd FILL
XFILL_3__4200_ gnd vdd FILL
XFILL_1__4958_ gnd vdd FILL
XFILL_1__4538_ gnd vdd FILL
XFILL_1__4118_ gnd vdd FILL
XFILL_4__2543_ gnd vdd FILL
X_3188_ \u_cpu.PC\[1] _1196__bF$buf1 _88_ vdd gnd NAND2X1
XFILL_0__2443_ gnd vdd FILL
XFILL_2__3822_ gnd vdd FILL
XFILL_2__3402_ gnd vdd FILL
XFILL_4__3748_ gnd vdd FILL
XFILL_4__3328_ gnd vdd FILL
XFILL_0__3648_ gnd vdd FILL
XFILL_0__3228_ gnd vdd FILL
XFILL_1__4291_ gnd vdd FILL
XFILL_2__4607_ gnd vdd FILL
XFILL_1__2604_ gnd vdd FILL
XFILL_1__3809_ gnd vdd FILL
XFILL_2__4780_ gnd vdd FILL
XFILL_2__4360_ gnd vdd FILL
X_2879_ _1537_ _1540_ DO_dsp[0] _1580_ vdd gnd OAI21X1
X_2459_ _15_ _12_ _2354__5_bF$buf0 _16_ vdd gnd AOI21X1
XFILL_4__4286_ gnd vdd FILL
X_3820_ \u_cpu.PC\[5] _615_ vdd gnd INVX1
X_3400_ _1319_ _887_ \u_cpu.DIMUX\[4] _232_ vdd gnd OAI21X1
XFILL_0__4186_ gnd vdd FILL
XFILL_0__2919_ gnd vdd FILL
X_4605_ _1350_ _1334_ _1333_ vdd gnd NAND2X1
XFILL_1__3982_ gnd vdd FILL
XFILL_1__3562_ gnd vdd FILL
XFILL_3__3488_ gnd vdd FILL
XFILL_1__4767_ gnd vdd FILL
XFILL_1__4347_ gnd vdd FILL
XFILL_4__2772_ gnd vdd FILL
XFILL_0__2672_ gnd vdd FILL
XFILL_2__3631_ gnd vdd FILL
XFILL_2__3211_ gnd vdd FILL
XFILL_4__3977_ gnd vdd FILL
XFILL_4__3557_ gnd vdd FILL
XFILL_0__3877_ gnd vdd FILL
XFILL_0__3457_ gnd vdd FILL
XFILL_2__4836_ gnd vdd FILL
XFILL_2__4416_ gnd vdd FILL
XFILL_1__2833_ gnd vdd FILL
XFILL_1__2413_ gnd vdd FILL
XFILL_3__2759_ gnd vdd FILL
XFILL_3__3700_ gnd vdd FILL
XFILL_1__3618_ gnd vdd FILL
X_2688_ _2046_ _2040_ _2354__7_bF$buf1 _2047_ vdd gnd OAI21X1
XFILL_4__4095_ gnd vdd FILL
XFILL_3__4905_ gnd vdd FILL
XFILL_2__2902_ gnd vdd FILL
XFILL_4__2828_ gnd vdd FILL
XFILL_4__2408_ gnd vdd FILL
XFILL_0__2728_ gnd vdd FILL
X_4834_ \u_cpu.alu_shift_right\ \u_cpu.CI\ _1876_ _1874_ _1877_ vdd 
+ gnd
+ AOI22X1
X_4414_ RDY_bF$buf2 Data_In[4] _1151_ vdd gnd NAND2X1
XFILL_1__3791_ gnd vdd FILL
XFILL_1__3371_ gnd vdd FILL
XFILL_3__3297_ gnd vdd FILL
XFILL_1__4576_ gnd vdd FILL
XFILL_1__4156_ gnd vdd FILL
XFILL_4__2581_ gnd vdd FILL
XFILL_0__2481_ gnd vdd FILL
XFILL_2__2499_ gnd vdd FILL
XFILL_2__3860_ gnd vdd FILL
XFILL_2__3440_ gnd vdd FILL
XFILL_2__3020_ gnd vdd FILL
XFILL_4__3786_ gnd vdd FILL
XFILL_4__3366_ gnd vdd FILL
X_2900_ _2353_[6] _1562_ vdd gnd INVX1
XFILL_0__3686_ gnd vdd FILL
XFILL_0__3266_ gnd vdd FILL
XFILL_2__4645_ gnd vdd FILL
XFILL_2__4225_ gnd vdd FILL
XFILL_1__2642_ gnd vdd FILL
XFILL_3__2988_ gnd vdd FILL
XFILL_3__2568_ gnd vdd FILL
XFILL_1__3847_ gnd vdd FILL
XFILL_1__3427_ gnd vdd FILL
XFILL_1__3007_ gnd vdd FILL
X_2497_ _2328_ _2321_ _1973_ _2329_ vdd gnd AOI21X1
XFILL_3__4714_ gnd vdd FILL
XFILL_2__2711_ gnd vdd FILL
XFILL_4__2637_ gnd vdd FILL
XFILL_0__2537_ gnd vdd FILL
X_4643_ \u_cpu.alu_op\[3] _1696_ vdd gnd INVX2
X_4223_ _1205_ _1070__bF$buf2 _976_ vdd gnd NAND2X1
XFILL_1__3180_ gnd vdd FILL
XFILL_2__3916_ gnd vdd FILL
XFILL_1__4385_ gnd vdd FILL
XFILL_4__3595_ gnd vdd FILL
XFILL_4__3175_ gnd vdd FILL
XFILL_0__3495_ gnd vdd FILL
XFILL_2__4454_ gnd vdd FILL
XFILL_2__4034_ gnd vdd FILL
X_3914_ _701_ _1129__bF$buf4 _1126_ _700_ _1443_ vdd 
+ gnd
+ OAI22X1
XFILL_1__2451_ gnd vdd FILL
XFILL_3__2797_ gnd vdd FILL
XFILL_3__2377_ gnd vdd FILL
XFILL_1__3656_ gnd vdd FILL
XFILL_1__3236_ gnd vdd FILL
XFILL_3__4943_ gnd vdd FILL
XFILL_3__4523_ gnd vdd FILL
XFILL_3__4103_ gnd vdd FILL
XFILL_2__2940_ gnd vdd FILL
XFILL_2__2520_ gnd vdd FILL
XFILL_4__2446_ gnd vdd FILL
XFILL_0__2766_ gnd vdd FILL
X_4872_ _1675_ vdd _1672_ clk_bF$buf2 \u_cpu.ADD\[5] vdd 
+ gnd
+ DFFSR
X_4452_ _1186_ _1185_ _1195_ _1488_ vdd gnd OAI21X1
X_4032_ \u_cpu.ABH\[7] _800__bF$buf0 _799_ vdd gnd NOR2X1
XFILL_2__3725_ gnd vdd FILL
XFILL_2__3305_ gnd vdd FILL
XFILL_1_CLKBUF1_insert30 gnd vdd FILL
XFILL_1_CLKBUF1_insert31 gnd vdd FILL
XFILL_1_CLKBUF1_insert32 gnd vdd FILL
XFILL_1_CLKBUF1_insert33 gnd vdd FILL
XFILL_1_CLKBUF1_insert34 gnd vdd FILL
XFILL_1_CLKBUF1_insert35 gnd vdd FILL
XFILL_1_CLKBUF1_insert36 gnd vdd FILL
XFILL_1_CLKBUF1_insert37 gnd vdd FILL
XFILL_1_CLKBUF1_insert38 gnd vdd FILL
XFILL_1__4194_ gnd vdd FILL
XFILL_0__4912_ gnd vdd FILL
XFILL_1__2927_ gnd vdd FILL
XFILL_1__2507_ gnd vdd FILL
XFILL_2__4683_ gnd vdd FILL
XFILL_2__4263_ gnd vdd FILL
XFILL_4__4189_ gnd vdd FILL
X_3723_ _523_ _525_ _522_ vdd gnd NAND2X1
X_3303_ _1196__bF$buf8 _1105_ _158_ _1408_ vdd gnd OAI21X1
XFILL_1__2680_ gnd vdd FILL
XFILL_0__4089_ gnd vdd FILL
X_4928_ DI[5] _2203_ vdd gnd INVX1
X_4508_ _1335_ _1237_ _1236_ vdd gnd NOR2X1
XFILL_1__3885_ gnd vdd FILL
XFILL_1__3465_ gnd vdd FILL
XFILL_3__4752_ gnd vdd FILL
XFILL_3__4332_ gnd vdd FILL
XFILL_4__2675_ gnd vdd FILL
XFILL_0__2995_ gnd vdd FILL
XFILL_0__2575_ gnd vdd FILL
X_4681_ \u_cpu.alu_op\[0] _1729_ _1731_ _1734_ vdd gnd OAI21X1
X_4261_ _1013_ _1024_ _1012_ vdd gnd AND2X2
XFILL_2__3954_ gnd vdd FILL
XFILL_2__3534_ gnd vdd FILL
XFILL_4__4821_ gnd vdd FILL
XFILL_4__4401_ gnd vdd FILL
XFILL_2__4739_ gnd vdd FILL
XFILL_0__4721_ gnd vdd FILL
XFILL_0__4301_ gnd vdd FILL
XFILL_2__4319_ gnd vdd FILL
XFILL_1__2736_ gnd vdd FILL
XFILL_3__3603_ gnd vdd FILL
XFILL_2__4492_ gnd vdd FILL
XFILL_2__4072_ gnd vdd FILL
XFILL_3__4808_ gnd vdd FILL
X_3952_ _768_ _763_ _730_ _729_ vdd gnd OAI21X1
X_3532_ _359_ \u_cpu.ADD\[6] _341_ _340_ vdd gnd AOI21X1
X_3112_ _1417__bF$buf4 vdd _1446_ clk_bF$buf9 \u_cpu.php\ vdd 
+ gnd
+ DFFSR
XFILL_2__2805_ gnd vdd FILL
X_4737_ _1789_ _1787_ _1790_ vdd gnd NAND2X1
X_4317_ _1305__bF$buf2 _1084_ _1063_ _1062_ vdd gnd OAI21X1
XFILL_1__3694_ gnd vdd FILL
XFILL_1__3274_ gnd vdd FILL
XFILL_3__4981_ gnd vdd FILL
XFILL_3__4561_ gnd vdd FILL
XFILL_3__4141_ gnd vdd FILL
XFILL_1__4899_ gnd vdd FILL
XFILL_1__4479_ gnd vdd FILL
XFILL_1__4059_ gnd vdd FILL
XFILL_4__2484_ gnd vdd FILL
XFILL_0__2384_ gnd vdd FILL
X_4490_ _1230_ _1243_ _1218_ vdd gnd AND2X2
X_4070_ _1307_ _838_ _837_ vdd gnd NAND2X1
XFILL_2__3763_ gnd vdd FILL
XFILL_2__3343_ gnd vdd FILL
XFILL_4__3689_ gnd vdd FILL
X_2803_ _1922_ _1932_ _1913_ _1657_ _1933_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4630_ gnd vdd FILL
XFILL_4__4210_ gnd vdd FILL
XFILL_0__3589_ gnd vdd FILL
XFILL_0__3169_ gnd vdd FILL
XFILL_2__4968_ gnd vdd FILL
XFILL_0__4950_ gnd vdd FILL
XFILL_0__4530_ gnd vdd FILL
XFILL_2__4548_ gnd vdd FILL
XFILL_2__4128_ gnd vdd FILL
XFILL_0__4110_ gnd vdd FILL
XFILL_1__2965_ gnd vdd FILL
XFILL_1__2545_ gnd vdd FILL
XFILL_3__3832_ gnd vdd FILL
XFILL_3__3412_ gnd vdd FILL
XFILL_3__4617_ gnd vdd FILL
X_3761_ _561_ _996_ _560_ vdd gnd NAND2X1
X_3341_ _784_ _788_ _334_ _184_ vdd gnd OAI21X1
XFILL_2__2614_ gnd vdd FILL
XFILL_4__3901_ gnd vdd FILL
X_4966_ DO_dsp[0] _2236_ vdd gnd INVX1
X_4546_ _1315__bF$buf1 _1274_ vdd gnd INVX2
X_4126_ _1350_ _1064_ _892_ vdd gnd NAND2X1
XFILL_0__3801_ gnd vdd FILL
XFILL_2__3819_ gnd vdd FILL
XFILL_3__4790_ gnd vdd FILL
XFILL_3__4370_ gnd vdd FILL
XFILL274050x64950 gnd vdd FILL
XFILL_1__4288_ gnd vdd FILL
XFILL_2__3992_ gnd vdd FILL
XFILL_2__3572_ gnd vdd FILL
XFILL_4__3498_ gnd vdd FILL
X_2612_ _1643__bF$buf5 _2354__0_bF$buf0 _2081_ _2121_ vdd gnd OAI21X1
XFILL_0__3398_ gnd vdd FILL
XFILL_2__4777_ gnd vdd FILL
XFILL_2__4357_ gnd vdd FILL
X_3817_ \u_cpu.ADD\[5] _613_ _631_ _612_ vdd gnd OAI21X1
XFILL_1__2774_ gnd vdd FILL
XFILL_3__3641_ gnd vdd FILL
XFILL_3__3221_ gnd vdd FILL
XFILL_1__3979_ gnd vdd FILL
XFILL_1__3559_ gnd vdd FILL
XFILL_1__4920_ gnd vdd FILL
XFILL_1__4500_ gnd vdd FILL
XFILL_3__4846_ gnd vdd FILL
XFILL_3__4426_ gnd vdd FILL
XFILL_3__4006_ gnd vdd FILL
X_3990_ _988_ _763_ _764_ _762_ vdd gnd OAI21X1
X_3570_ _1328__bF$buf1 _881_ _1196__bF$buf6 _374_ vdd gnd OAI21X1
X_3150_ _1417__bF$buf1 vdd _1411_ clk_bF$buf5 \u_cpu.PC\[15] vdd 
+ gnd
+ DFFSR
XFILL_2__2843_ gnd vdd FILL
XFILL_2__2423_ gnd vdd FILL
XFILL_4__2769_ gnd vdd FILL
XFILL273750x46950 gnd vdd FILL
XFILL_4__3710_ gnd vdd FILL
XFILL_0__2669_ gnd vdd FILL
X_4775_ _1827_ _1828_ vdd gnd INVX1
X_4355_ _1129__bF$buf3 _1099_ _1104_ _1098_ vdd gnd NAND3X1
XFILL_2__3628_ gnd vdd FILL
XFILL_0__3610_ gnd vdd FILL
XFILL_2__3208_ gnd vdd FILL
XFILL_4__4915_ gnd vdd FILL
XFILL_1__4097_ gnd vdd FILL
XFILL_0__4815_ gnd vdd FILL
XFILL_3__2912_ gnd vdd FILL
XFILL_2__3381_ gnd vdd FILL
X_2841_ _1643__bF$buf2 _2354__2_bF$buf3 _1653_ _1654_ vdd gnd OAI21X1
X_2421_ _2354__4_bF$buf3 _50_ _52_ _53_ vdd gnd OAI21X1
XFILL_2__4586_ gnd vdd FILL
XFILL_2__4166_ gnd vdd FILL
X_3626_ _431_ _552_ _430_ vdd gnd NAND2X1
X_3206_ \u_cpu.AXYS[1]\[0] _1041_ _99_ vdd gnd NAND2X1
XFILL_1__2583_ gnd vdd FILL
XFILL_3__3870_ gnd vdd FILL
XFILL_3__3450_ gnd vdd FILL
XFILL_3__3030_ gnd vdd FILL
XFILL_1__3788_ gnd vdd FILL
XFILL_1__3368_ gnd vdd FILL
XFILL_3__4655_ gnd vdd FILL
XFILL_3__4235_ gnd vdd FILL
XFILL_2__2652_ gnd vdd FILL
XFILL_4__2998_ gnd vdd FILL
XFILL_4__2578_ gnd vdd FILL
XFILL_0__2898_ gnd vdd FILL
XFILL_0__2478_ gnd vdd FILL
X_4584_ _1333_ _1313_ _1318_ _1312_ vdd gnd NAND3X1
X_4164_ \u_cpu.DIMUX\[6] _1070__bF$buf3 _925_ _924_ vdd gnd OAI21X1
XFILL_2__3857_ gnd vdd FILL
XFILL_2__3437_ gnd vdd FILL
XFILL_2__3017_ gnd vdd FILL
XFILL_4__4724_ gnd vdd FILL
XFILL_4__4304_ gnd vdd FILL
XFILL_3__2721_ gnd vdd FILL
XFILL_0__4624_ gnd vdd FILL
XFILL_0__4204_ gnd vdd FILL
XFILL_1__2639_ gnd vdd FILL
XFILL_2__3190_ gnd vdd FILL
XFILL_3__3926_ gnd vdd FILL
XFILL_3__3506_ gnd vdd FILL
X_2650_ _2354__0_bF$buf5 _1928_ _2354__4_bF$buf4 _2084_ vdd gnd OAI21X1
XFILL_2__4395_ gnd vdd FILL
X_3855_ _782_ \u_cpu.PC\[5] _648_ _647_ vdd gnd AOI21X1
X_3435_ _261_ _2354_[14] vdd gnd INVX1
X_3015_ _1499_ _1513_ _1583_ vdd gnd NOR2X1
XFILL_2__2708_ gnd vdd FILL
XFILL_1_BUFX2_insert60 gnd vdd FILL
XFILL_1_BUFX2_insert61 gnd vdd FILL
XFILL_1_BUFX2_insert62 gnd vdd FILL
XFILL_1_BUFX2_insert63 gnd vdd FILL
XFILL_1_BUFX2_insert64 gnd vdd FILL
XFILL_1_BUFX2_insert65 gnd vdd FILL
XFILL_1_BUFX2_insert66 gnd vdd FILL
XFILL_1_BUFX2_insert67 gnd vdd FILL
XFILL_1_BUFX2_insert68 gnd vdd FILL
XFILL_1_BUFX2_insert69 gnd vdd FILL
XFILL_1__3597_ gnd vdd FILL
XFILL_1__3177_ gnd vdd FILL
XFILL_3__4884_ gnd vdd FILL
XFILL_3__4464_ gnd vdd FILL
XFILL_3__4044_ gnd vdd FILL
XFILL_2__2881_ gnd vdd FILL
XFILL_2__2461_ gnd vdd FILL
XFILL_4__2387_ gnd vdd FILL
X_4393_ _1134_ _1133_ vdd gnd INVX1
XFILL_2__3666_ gnd vdd FILL
XFILL_2__3246_ gnd vdd FILL
X_2706_ _1929_ _2028_ _2029_ vdd gnd NAND2X1
XFILL_4__4953_ gnd vdd FILL
XFILL_4__4533_ gnd vdd FILL
XFILL_4__4113_ gnd vdd FILL
XFILL_0__4853_ gnd vdd FILL
XFILL_3__2950_ gnd vdd FILL
XFILL_3__2530_ gnd vdd FILL
XFILL_0__4433_ gnd vdd FILL
XFILL_0__4013_ gnd vdd FILL
XFILL_1__2448_ gnd vdd FILL
XFILL_3__3735_ gnd vdd FILL
XFILL_3__3315_ gnd vdd FILL
X_3664_ _1328__bF$buf4 _536_ _467_ vdd gnd NOR2X1
X_3244_ _2354_[9] _800__bF$buf4 _125_ vdd gnd NAND2X1
XFILL_2__2937_ gnd vdd FILL
XFILL_2__2517_ gnd vdd FILL
XFILL_4__3804_ gnd vdd FILL
X_4869_ RDY_bF$buf7 \u_cpu.AI\[7] _1908_ vdd gnd NAND2X1
X_4449_ _1184_ _1183_ _1182_ vdd gnd NOR2X1
X_4029_ NMI _798_ _797_ vdd gnd NAND2X1
XFILL_0__3704_ gnd vdd FILL
XFILL_3__4693_ gnd vdd FILL
XFILL_3__4273_ gnd vdd FILL
XFILL_2__2690_ gnd vdd FILL
XFILL_0__4909_ gnd vdd FILL
XFILL_2__3895_ gnd vdd FILL
XFILL_2__3475_ gnd vdd FILL
X_2935_ _1535_ _1597_ vdd gnd INVX1
X_2515_ _1635__bF$buf1 _1660_ _2034_ _2311_ vdd gnd OAI21X1
XFILL_4__4762_ gnd vdd FILL
XFILL_4__4342_ gnd vdd FILL
XFILL_0__4662_ gnd vdd FILL
XFILL_0__4242_ gnd vdd FILL
XFILL_1__2677_ gnd vdd FILL
XFILL_3__3964_ gnd vdd FILL
XFILL_3__3544_ gnd vdd FILL
XFILL_1__4823_ gnd vdd FILL
XFILL_1__4403_ gnd vdd FILL
XFILL_3__4749_ gnd vdd FILL
XFILL_3__4329_ gnd vdd FILL
X_3893_ _1001_ _771_ _681_ vdd gnd NOR2X1
X_3473_ _782_ \u_cpu.PC\[6] _288_ _287_ vdd gnd AOI21X1
X_3053_ _1417__bF$buf6 vdd _1366_ clk_bF$buf2 \u_cpu.AXYS[1]\[3] vdd 
+ gnd
+ DFFSR
XFILL_2__2746_ gnd vdd FILL
XFILL_4__3613_ gnd vdd FILL
X_4678_ \u_cpu.AI\[1] _1731_ vdd gnd INVX1
X_4258_ _1011_ _1010_ _1475_ vdd gnd NAND2X1
XFILL_0__3933_ gnd vdd FILL
XFILL_0__3513_ gnd vdd FILL
XFILL_3__4082_ gnd vdd FILL
XFILL_4__4818_ gnd vdd FILL
XFILL_0__4718_ gnd vdd FILL
XFILL_3__2815_ gnd vdd FILL
XFILL_2__3284_ gnd vdd FILL
X_2744_ _2354__3_bF$buf5 _1924_ _1991_ vdd gnd NOR2X1
XFILL_4__4571_ gnd vdd FILL
XFILL_4__4151_ gnd vdd FILL
XFILL273450x150 gnd vdd FILL
XFILL_0__4891_ gnd vdd FILL
XFILL_0__4471_ gnd vdd FILL
XFILL_2__4489_ gnd vdd FILL
XFILL_0__4051_ gnd vdd FILL
XFILL_2__4069_ gnd vdd FILL
X_3949_ _1036_ _985_ _726_ vdd gnd NAND2X1
X_3529_ _1286_ _875_ \u_cpu.ABH\[0] _338_ vdd gnd OAI21X1
X_3109_ _1417__bF$buf0 vdd _1390_ clk_bF$buf10 \u_cpu.ABL\[2] vdd 
+ gnd
+ DFFSR
XFILL_1__2486_ gnd vdd FILL
XFILL_3__3773_ gnd vdd FILL
XFILL_3__3353_ gnd vdd FILL
XFILL_1__4632_ gnd vdd FILL
XFILL_1__4212_ gnd vdd FILL
XFILL_3__4978_ gnd vdd FILL
XFILL_3__4558_ gnd vdd FILL
XFILL_3__4138_ gnd vdd FILL
X_3282_ _1150_ _179_ _148_ _1397_ vdd gnd OAI21X1
XFILL_2__2975_ gnd vdd FILL
XFILL_2__2555_ gnd vdd FILL
XFILL273450x7350 gnd vdd FILL
XFILL_4__3842_ gnd vdd FILL
XFILL_4__3422_ gnd vdd FILL
XFILL_4__3002_ gnd vdd FILL
X_4487_ _1218_ _1219_ _1216_ _1215_ vdd gnd NOR3X1
X_4067_ _1305__bF$buf2 _1081_ _1061_ _834_ vdd gnd OAI21X1
XFILL_0__3742_ gnd vdd FILL
XFILL_0__3322_ gnd vdd FILL
XFILL_2__4701_ gnd vdd FILL
XFILL_4__4627_ gnd vdd FILL
XFILL_4__4207_ gnd vdd FILL
XFILL_0__4947_ gnd vdd FILL
XFILL_3__2624_ gnd vdd FILL
XFILL_0__4527_ gnd vdd FILL
XFILL_0__4107_ gnd vdd FILL
XFILL_1__3903_ gnd vdd FILL
XFILL_3__3829_ gnd vdd FILL
XFILL_3__3409_ gnd vdd FILL
X_2973_ kbd_data[4] _1500_ _1623_ vdd gnd NAND2X1
X_2553_ _2273_ _2266_ _2354__5_bF$buf4 _2274_ vdd gnd AOI21X1
XFILL_4__4380_ gnd vdd FILL
XFILL_0__4280_ gnd vdd FILL
XFILL_2__4298_ gnd vdd FILL
X_3758_ _558_ _557_ vdd gnd INVX1
X_3338_ _1113_ _356_ _182_ \u_cpu.AI\[7] vdd gnd OAI21X1
XFILL_3__3582_ gnd vdd FILL
XFILL_1__4861_ gnd vdd FILL
XFILL_1__4441_ gnd vdd FILL
XFILL_1__4021_ gnd vdd FILL
XFILL_3__4787_ gnd vdd FILL
XFILL_3__4367_ gnd vdd FILL
X_3091_ _1417__bF$buf10 vdd _1633_ clk_bF$buf4 \u_cpu.state\[5] vdd 
+ gnd
+ DFFSR
XFILL_2__2784_ gnd vdd FILL
XFILL_2__2364_ gnd vdd FILL
XFILL_4__3651_ gnd vdd FILL
XFILL_4__3231_ gnd vdd FILL
X_4296_ _1042_ _1050_ _1041_ vdd gnd NAND2X1
XFILL_2__3989_ gnd vdd FILL
XFILL_0__3971_ gnd vdd FILL
XFILL_0__3551_ gnd vdd FILL
XFILL_2__3569_ gnd vdd FILL
XFILL_2__4930_ gnd vdd FILL
XFILL_2__4510_ gnd vdd FILL
X_2609_ _2060_ _1653_ _1634__bF$buf0 _2124_ vdd gnd AOI21X1
XFILL_4__4856_ gnd vdd FILL
XFILL_4__4436_ gnd vdd FILL
XFILL_4__4016_ gnd vdd FILL
XFILL_0__4756_ gnd vdd FILL
XFILL_3__2853_ gnd vdd FILL
XFILL_3__2433_ gnd vdd FILL
XFILL_0__4336_ gnd vdd FILL
XFILL_1__3712_ gnd vdd FILL
XFILL_3__3638_ gnd vdd FILL
XFILL_3__3218_ gnd vdd FILL
X_2782_ _2354__4_bF$buf0 _1914_ _1954_ vdd gnd NOR2X1
X_2362_ _2354_[9] AB[9] vdd gnd BUFX2
XFILL_1__4917_ gnd vdd FILL
XFILL_4__2922_ gnd vdd FILL
XFILL_4__2502_ gnd vdd FILL
X_3987_ _1042_ _790_ _760_ vdd gnd NAND2X1
X_3567_ _372_ _376_ _371_ vdd gnd NOR2X1
X_3147_ _1400_ clk_bF$buf0 \u_cpu.IRHOLD\[6] vdd gnd DFFPOSX1
XFILL_0__2822_ gnd vdd FILL
XFILL_0__2402_ gnd vdd FILL
XFILL_3__3391_ gnd vdd FILL
XFILL_4__3707_ gnd vdd FILL
XFILL_0__3607_ gnd vdd FILL
XFILL_1__4670_ gnd vdd FILL
XFILL_1__4250_ gnd vdd FILL
XFILL_3__4596_ gnd vdd FILL
XFILL_3__4176_ gnd vdd FILL
XFILL_2__2593_ gnd vdd FILL
XFILL_3__2909_ gnd vdd FILL
XFILL_4__3880_ gnd vdd FILL
XFILL_4__3460_ gnd vdd FILL
XFILL_0__3780_ gnd vdd FILL
XFILL_2__3798_ gnd vdd FILL
XFILL_2__3378_ gnd vdd FILL
XFILL_0__3360_ gnd vdd FILL
X_2838_ _2354__5_bF$buf0 _1656_ _1646_ _1657_ vdd gnd NAND3X1
X_2418_ _2098_ _2037_ _1643__bF$buf2 _55_ _56_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4665_ gnd vdd FILL
XFILL_4__4245_ gnd vdd FILL
XFILL_0__4985_ gnd vdd FILL
XFILL_3__2662_ gnd vdd FILL
XFILL_0__4565_ gnd vdd FILL
XFILL_0__4145_ gnd vdd FILL
XFILL_1__3941_ gnd vdd FILL
XFILL_1__3521_ gnd vdd FILL
XFILL_3__3867_ gnd vdd FILL
XFILL_3__3447_ gnd vdd FILL
XFILL_3__3027_ gnd vdd FILL
X_2591_ _2141_ _2135_ _1920__bF$buf3 _2142_ vdd gnd AOI21X1
XFILL_1__4726_ gnd vdd FILL
XFILL_1__4306_ gnd vdd FILL
XFILL_4__2731_ gnd vdd FILL
X_3796_ _594_ _593_ vdd gnd INVX1
X_3376_ \u_cpu.C\ _368_ _671_ _211_ vdd gnd NAND3X1
XFILL_2__2649_ gnd vdd FILL
XFILL_0__2631_ gnd vdd FILL
XFILL_4__3936_ gnd vdd FILL
XFILL_4__3516_ gnd vdd FILL
XFILL_0__3836_ gnd vdd FILL
XFILL_0__3416_ gnd vdd FILL
XFILL_3__2718_ gnd vdd FILL
XFILL_2__3187_ gnd vdd FILL
X_2647_ _2354__3_bF$buf3 _2086_ _1940_ _2087_ vdd gnd OAI21X1
XFILL_4__4894_ gnd vdd FILL
XFILL_4__4474_ gnd vdd FILL
XFILL_4__4054_ gnd vdd FILL
XFILL_0__4794_ gnd vdd FILL
XFILL_3__2891_ gnd vdd FILL
XFILL_3__2471_ gnd vdd FILL
XFILL_0__4374_ gnd vdd FILL
XFILL_1__2389_ gnd vdd FILL
XFILL_1__3750_ gnd vdd FILL
XFILL_1__3330_ gnd vdd FILL
XFILL_3__3676_ gnd vdd FILL
XFILL_3__3256_ gnd vdd FILL
XFILL_1__4955_ gnd vdd FILL
XFILL_1__4535_ gnd vdd FILL
XFILL_1__4115_ gnd vdd FILL
XFILL_4__2540_ gnd vdd FILL
X_3185_ _87_ _86_ _88_ _1362_ vdd gnd OAI21X1
XFILL_0__2860_ gnd vdd FILL
XFILL_2__2878_ gnd vdd FILL
XFILL_0__2440_ gnd vdd FILL
XFILL_2__2458_ gnd vdd FILL
XFILL_4__3745_ gnd vdd FILL
XFILL_4__3325_ gnd vdd FILL
XFILL_0__3645_ gnd vdd FILL
XFILL_0__3225_ gnd vdd FILL
XFILL_2__4604_ gnd vdd FILL
XFILL_1__2601_ gnd vdd FILL
XFILL_3__2947_ gnd vdd FILL
XFILL_3__2527_ gnd vdd FILL
XFILL_1__3806_ gnd vdd FILL
X_2876_ _1537_ _1540_ DO_dsp[1] _1582_ vdd gnd OAI21X1
X_2456_ _1975_ _17_ _18_ _19_ vdd gnd OAI21X1
XFILL_4__4283_ gnd vdd FILL
XFILL_0__4183_ gnd vdd FILL
XFILL_0__2916_ gnd vdd FILL
X_4602_ \u_cpu.state\[5] _1330_ vdd gnd INVX1
XFILL_3__3485_ gnd vdd FILL
XFILL_1__4764_ gnd vdd FILL
XFILL_1__4344_ gnd vdd FILL
XFILL_2__2687_ gnd vdd FILL
XFILL_4__3974_ gnd vdd FILL
XFILL_4__3554_ gnd vdd FILL
X_4199_ _956_ _968_ _955_ vdd gnd NOR2X1
XFILL_0__3874_ gnd vdd FILL
XFILL_0__3454_ gnd vdd FILL
XFILL_2__4833_ gnd vdd FILL
XFILL_2__4413_ gnd vdd FILL
XFILL_4__4759_ gnd vdd FILL
XFILL_4__4339_ gnd vdd FILL
XFILL_1__2830_ gnd vdd FILL
XFILL_1__2410_ gnd vdd FILL
XFILL_0__4659_ gnd vdd FILL
XFILL_3__2756_ gnd vdd FILL
XFILL_0__4239_ gnd vdd FILL
XFILL_1__3615_ gnd vdd FILL
X_2685_ _2048_ _2049_ vdd gnd INVX1
XFILL_4__4092_ gnd vdd FILL
XFILL_3__4902_ gnd vdd FILL
XFILL_4__2825_ gnd vdd FILL
XFILL_4__2405_ gnd vdd FILL
XFILL_0__2725_ gnd vdd FILL
X_4831_ _1688_ _1872_ _1873_ _1874_ vdd gnd OAI21X1
X_4411_ _1275_ _1349_ _1315__bF$buf2 _1149_ vdd gnd OAI21X1
XFILL_3__3294_ gnd vdd FILL
XFILL_1__4573_ gnd vdd FILL
XFILL_1__4153_ gnd vdd FILL
XFILL_3__4499_ gnd vdd FILL
XFILL_3__4079_ gnd vdd FILL
XFILL_2__2496_ gnd vdd FILL
XFILL_4__3783_ gnd vdd FILL
XFILL_4__3363_ gnd vdd FILL
XFILL_0__3683_ gnd vdd FILL
XFILL_0__3263_ gnd vdd FILL
XFILL_2__4642_ gnd vdd FILL
XFILL_2__4222_ gnd vdd FILL
XFILL_4__4568_ gnd vdd FILL
XFILL_4__4148_ gnd vdd FILL
XFILL_0__4888_ gnd vdd FILL
XFILL_3__2985_ gnd vdd FILL
XFILL_3__2565_ gnd vdd FILL
XFILL_0__4468_ gnd vdd FILL
XFILL_0__4048_ gnd vdd FILL
XFILL_1__3844_ gnd vdd FILL
XFILL_1__3424_ gnd vdd FILL
XFILL_1__3004_ gnd vdd FILL
X_2494_ _1957_ _1958_ _2354__5_bF$buf2 _2332_ vdd gnd OAI21X1
XFILL_3__4711_ gnd vdd FILL
XFILL_1__4629_ gnd vdd FILL
XFILL_1__4209_ gnd vdd FILL
XFILL_4__2634_ gnd vdd FILL
X_3699_ _1009_ _502_ _500_ \u_cpu.alu_op\[2] vdd gnd OAI21X1
X_3279_ reset _181_ \u_cpu.IRHOLD\[2] _146_ vdd gnd OAI21X1
XFILL_0__2534_ gnd vdd FILL
X_4640_ \u_cpu.alu_op\[0] _1685_ _1690_ _1693_ vdd gnd OAI21X1
X_4220_ _977_ _975_ _974_ _1473_ vdd gnd OAI21X1
XFILL272850x86550 gnd vdd FILL
XFILL_2__3913_ gnd vdd FILL
XFILL_4__3839_ gnd vdd FILL
XFILL_4__3419_ gnd vdd FILL
XFILL_0__3739_ gnd vdd FILL
XFILL_0__3319_ gnd vdd FILL
X_5005_ _1417__bF$buf4 vdd _1356_ clk_bF$buf5 \u_cpu.PC\[6] vdd 
+ gnd
+ DFFSR
XFILL_1__4382_ gnd vdd FILL
XFILL_4__3592_ gnd vdd FILL
XFILL_4__3172_ gnd vdd FILL
XFILL_0__3492_ gnd vdd FILL
XFILL_2__4451_ gnd vdd FILL
XFILL_2__4031_ gnd vdd FILL
XFILL_4__4797_ gnd vdd FILL
XFILL_4__4377_ gnd vdd FILL
X_3911_ _1328__bF$buf5 _1252_ _723_ _697_ vdd gnd OAI21X1
XFILL_0__4697_ gnd vdd FILL
XFILL_3__2794_ gnd vdd FILL
XFILL_0__4277_ gnd vdd FILL
XFILL_3__2374_ gnd vdd FILL
XFILL_1__3653_ gnd vdd FILL
XFILL_1__3233_ gnd vdd FILL
XFILL_3__3999_ gnd vdd FILL
XFILL_3__3579_ gnd vdd FILL
XFILL_3__4940_ gnd vdd FILL
XFILL_3__4520_ gnd vdd FILL
XFILL_3__4100_ gnd vdd FILL
XFILL_1__4858_ gnd vdd FILL
XFILL_1__4438_ gnd vdd FILL
XFILL_1__4018_ gnd vdd FILL
XFILL_4__2443_ gnd vdd FILL
X_3088_ _1417__bF$buf7 vdd _1470_ clk_bF$buf7 \u_cpu.AXYS[0]\[2] vdd 
+ gnd
+ DFFSR
XFILL_0__2763_ gnd vdd FILL
XFILL_2__3722_ gnd vdd FILL
XFILL_2__3302_ gnd vdd FILL
XFILL_4__3648_ gnd vdd FILL
XFILL_4__3228_ gnd vdd FILL
XFILL_0__3968_ gnd vdd FILL
XFILL_0__3548_ gnd vdd FILL
XFILL_1__4191_ gnd vdd FILL
XFILL_2__4927_ gnd vdd FILL
XFILL_2__4507_ gnd vdd FILL
XFILL_1__2924_ gnd vdd FILL
XFILL_1__2504_ gnd vdd FILL
XFILL_1__3709_ gnd vdd FILL
XFILL_2__4680_ gnd vdd FILL
XFILL_2__4260_ gnd vdd FILL
X_2779_ _2354__0_bF$buf5 _1635__bF$buf3 _2354__3_bF$buf3 _1957_ vdd gnd OAI21X1
X_2359_ _2354_[12] AB[12] vdd gnd BUFX2
XFILL_4__4186_ gnd vdd FILL
X_3720_ _1325__bF$buf1 _1331_ _1196__bF$buf7 _519_ vdd gnd OAI21X1
X_3300_ \u_cpu.AXYS[3]\[6] _921_ _156_ vdd gnd NAND2X1
XFILL_0__4086_ gnd vdd FILL
XFILL_4__2919_ gnd vdd FILL
XFILL_0__2819_ gnd vdd FILL
X_4925_ DO_woz[5] _2200_ vdd gnd INVX1
X_4505_ _1234_ _1237_ _1233_ vdd gnd NOR2X1
XFILL_1__3882_ gnd vdd FILL
XFILL_1__3462_ gnd vdd FILL
XFILL_3__3388_ gnd vdd FILL
XFILL_1__4667_ gnd vdd FILL
XFILL_1__4247_ gnd vdd FILL
XFILL_4__2672_ gnd vdd FILL
XFILL_0__2992_ gnd vdd FILL
XFILL_0__2572_ gnd vdd FILL
XFILL_2__3951_ gnd vdd FILL
XFILL_2__3531_ gnd vdd FILL
XFILL_4__3877_ gnd vdd FILL
XFILL_4__3457_ gnd vdd FILL
XFILL_0__3777_ gnd vdd FILL
XFILL_0__3357_ gnd vdd FILL
XFILL_2__4736_ gnd vdd FILL
XFILL_2__4316_ gnd vdd FILL
XFILL_1__2733_ gnd vdd FILL
XFILL_3__2659_ gnd vdd FILL
XFILL_3__3600_ gnd vdd FILL
XFILL_1__3938_ gnd vdd FILL
XFILL_1__3518_ gnd vdd FILL
X_2588_ _2144_ _2143_ _1634__bF$buf0 _2145_ vdd gnd OAI21X1
XFILL_3__4805_ gnd vdd FILL
XFILL_2__2802_ gnd vdd FILL
XFILL_0__2628_ gnd vdd FILL
X_4734_ _1728_ _1772_ _1786_ _1787_ vdd gnd OAI21X1
X_4314_ _1060_ _1062_ _1059_ vdd gnd OR2X2
XFILL_1__3691_ gnd vdd FILL
XFILL_1__3271_ gnd vdd FILL
XFILL_3__3197_ gnd vdd FILL
XFILL_1__4896_ gnd vdd FILL
XFILL_1__4476_ gnd vdd FILL
XFILL_1__4056_ gnd vdd FILL
XFILL_4__2481_ gnd vdd FILL
XFILL_2__2399_ gnd vdd FILL
XFILL_0__2381_ gnd vdd FILL
XFILL_2__3760_ gnd vdd FILL
XFILL_2__3340_ gnd vdd FILL
XFILL_4__3686_ gnd vdd FILL
XFILL_4__3266_ gnd vdd FILL
X_2800_ _1643__bF$buf5 _1635__bF$buf2 _1936_ vdd gnd NAND2X1
XFILL_0__3586_ gnd vdd FILL
XFILL_0__3166_ gnd vdd FILL
XFILL_2__4965_ gnd vdd FILL
XFILL_2__4545_ gnd vdd FILL
XFILL_2__4125_ gnd vdd FILL
XFILL_1__2542_ gnd vdd FILL
XFILL_3__2888_ gnd vdd FILL
XFILL_3__2468_ gnd vdd FILL
XFILL_1__3747_ gnd vdd FILL
XFILL_1__3327_ gnd vdd FILL
X_2397_ _1660_ _2000_ _1654_ _2354__4_bF$buf6 _1424_ vdd 
+ gnd
+ AOI22X1
XFILL_3__4614_ gnd vdd FILL
XFILL_2__2611_ gnd vdd FILL
XFILL_4__2537_ gnd vdd FILL
XFILL_0__2857_ gnd vdd FILL
XFILL_0__2437_ gnd vdd FILL
X_4963_ _2198_ DO_kbd[1] _2195_ _2234_ vdd gnd AOI21X1
X_4543_ _1311_ \u_cpu.PC\[4] _1272_ _1271_ vdd gnd AOI21X1
X_4123_ _1309_ _1237_ _889_ vdd gnd NOR2X1
XFILL_2__3816_ gnd vdd FILL
XFILL271950x21750 gnd vdd FILL
XFILL_1__4285_ gnd vdd FILL
XFILL274050x111750 gnd vdd FILL
XFILL273150x36150 gnd vdd FILL
XFILL_4__3495_ gnd vdd FILL
XFILL_0__3395_ gnd vdd FILL
XFILL_2__4774_ gnd vdd FILL
XFILL_2__4354_ gnd vdd FILL
X_3814_ _1141_ _616_ _610_ _2353_[5] vdd gnd OAI21X1
XFILL_1__2771_ gnd vdd FILL
XFILL_3__2697_ gnd vdd FILL
XFILL_1__3976_ gnd vdd FILL
XFILL_1__3556_ gnd vdd FILL
XFILL_3__4843_ gnd vdd FILL
XFILL_3__4423_ gnd vdd FILL
XFILL_3__4003_ gnd vdd FILL
XFILL_2__2840_ gnd vdd FILL
XFILL_2__2420_ gnd vdd FILL
XFILL_4__2766_ gnd vdd FILL
XFILL_0__2666_ gnd vdd FILL
X_4772_ _1824_ _1825_ vdd gnd INVX1
X_4352_ \u_cpu.ADD\[6] _1096_ vdd gnd INVX1
XFILL_2__3625_ gnd vdd FILL
XFILL_2__3205_ gnd vdd FILL
XFILL_4__4912_ gnd vdd FILL
XFILL_1__4094_ gnd vdd FILL
XFILL_0__4812_ gnd vdd FILL
XFILL_1__2827_ gnd vdd FILL
XFILL_1__2407_ gnd vdd FILL
XFILL_2__4583_ gnd vdd FILL
XFILL_2__4163_ gnd vdd FILL
XFILL_4__4089_ gnd vdd FILL
X_3623_ _1328__bF$buf1 _1081_ _1196__bF$buf6 _427_ vdd gnd OAI21X1
X_3203_ _1041_ _963_ _98_ _1368_ vdd gnd OAI21X1
XFILL_1__2580_ gnd vdd FILL
X_4828_ \u_cpu.BI\[7] _1871_ vdd gnd INVX1
X_4408_ _1147_ _1153_ _1146_ vdd gnd NOR2X1
XFILL_1__3785_ gnd vdd FILL
XFILL_1__3365_ gnd vdd FILL
XFILL_3__4652_ gnd vdd FILL
XFILL_3__4232_ gnd vdd FILL
XFILL_4__2995_ gnd vdd FILL
XFILL274050x3750 gnd vdd FILL
XFILL_0__2895_ gnd vdd FILL
XFILL_0__2475_ gnd vdd FILL
X_4581_ \u_cpu.state\[0] _1317_ _1309_ vdd gnd NAND2X1
X_4161_ _1051_ _979_ _922_ vdd gnd NOR2X1
XFILL_2__3854_ gnd vdd FILL
XFILL_2__3434_ gnd vdd FILL
XFILL_2__3014_ gnd vdd FILL
XFILL_4__4721_ gnd vdd FILL
XFILL_4__4301_ gnd vdd FILL
XFILL_2__4639_ gnd vdd FILL
XFILL_0__4621_ gnd vdd FILL
XFILL_2__4219_ gnd vdd FILL
XFILL_0__4201_ gnd vdd FILL
XFILL_1__2636_ gnd vdd FILL
XFILL_3__3923_ gnd vdd FILL
XFILL_3__3503_ gnd vdd FILL
XFILL_2__4392_ gnd vdd FILL
XFILL_3__4708_ gnd vdd FILL
X_3852_ \u_cpu.AXYS[3]\[6] _922_ _645_ vdd gnd NAND2X1
X_3432_ _449_ _555_ \u_cpu.PC\[11] _258_ vdd gnd OAI21X1
X_3012_ _Addr_Bus[13] _Addr_Bus[10] _1586_ vdd gnd NOR2X1
XFILL_2__2705_ gnd vdd FILL
XFILL_1_BUFX2_insert39 gnd vdd FILL
X_4637_ \u_cpu.AI\[5] _1690_ vdd gnd INVX1
X_4217_ \u_cpu.adc_bcd\ _971_ vdd gnd INVX1
XFILL_1__3594_ gnd vdd FILL
XFILL_1__3174_ gnd vdd FILL
XFILL_3__4461_ gnd vdd FILL
XFILL_3__4041_ gnd vdd FILL
XFILL_1__4799_ gnd vdd FILL
XFILL_1__4379_ gnd vdd FILL
XFILL_4__2384_ gnd vdd FILL
X_4390_ RDY_bF$buf4 _1141_ _1132_ _1131_ _1484_ vdd 
+ gnd
+ OAI22X1
XFILL_2__3663_ gnd vdd FILL
XFILL_2__3243_ gnd vdd FILL
XFILL_4__3589_ gnd vdd FILL
XFILL_4__3169_ gnd vdd FILL
XFILL273450x79350 gnd vdd FILL
X_2703_ _2354__6_bF$buf2 _2023_ _2031_ _2032_ vdd gnd NOR3X1
XFILL_4__4950_ gnd vdd FILL
XFILL_4__4530_ gnd vdd FILL
XFILL_4__4110_ gnd vdd FILL
XFILL_0__3489_ gnd vdd FILL
XFILL_0__4850_ gnd vdd FILL
XFILL_2__4868_ gnd vdd FILL
XFILL_2__4448_ gnd vdd FILL
XFILL_0__4430_ gnd vdd FILL
XFILL_2__4028_ gnd vdd FILL
XFILL_0__4010_ gnd vdd FILL
X_3908_ _1328__bF$buf0 _1084_ _697_ _694_ vdd gnd OAI21X1
XFILL_1__2445_ gnd vdd FILL
XFILL_3__3732_ gnd vdd FILL
XFILL_3__3312_ gnd vdd FILL
XFILL_3__4937_ gnd vdd FILL
XFILL_3__4517_ gnd vdd FILL
X_3661_ _892_ _464_ vdd gnd INVX1
X_3241_ _345_ _800__bF$buf1 _124_ _1380_ vdd gnd OAI21X1
XFILL_2__2934_ gnd vdd FILL
XFILL_2__2514_ gnd vdd FILL
XFILL_4__3801_ gnd vdd FILL
X_4866_ _1842_ _1855_ _1833_ _1906_ vdd gnd AOI21X1
X_4446_ RDY_bF$buf2 _1181_ _1180_ \u_cpu.DIMUX\[2] vdd gnd OAI21X1
X_4026_ _1196__bF$buf0 _1345__bF$buf1 \u_cpu.sed\ _795_ vdd gnd OAI21X1
XFILL_0__3701_ gnd vdd FILL
XFILL_2__3719_ gnd vdd FILL
XFILL_3__4690_ gnd vdd FILL
XFILL_3__4270_ gnd vdd FILL
XFILL_1__4188_ gnd vdd FILL
XFILL_0__4906_ gnd vdd FILL
XFILL_2__3892_ gnd vdd FILL
XFILL_2__3472_ gnd vdd FILL
XFILL_4__3398_ gnd vdd FILL
X_2932_ _1527_ _1538_ vdd gnd INVX1
X_2512_ _2123_ _2065_ _2313_ _2314_ vdd gnd OAI21X1
XFILL_0__3298_ gnd vdd FILL
XFILL_2__4677_ gnd vdd FILL
XFILL_2__4257_ gnd vdd FILL
X_3717_ _522_ _517_ _516_ vdd gnd NOR2X1
XFILL_1__2674_ gnd vdd FILL
XFILL_3__3961_ gnd vdd FILL
XFILL_3__3541_ gnd vdd FILL
XFILL_1__3879_ gnd vdd FILL
XFILL_1__3459_ gnd vdd FILL
XFILL_1__4820_ gnd vdd FILL
XFILL_1__4400_ gnd vdd FILL
XFILL_3__4746_ gnd vdd FILL
XFILL_3__4326_ gnd vdd FILL
X_3890_ _988_ _679_ _680_ _678_ vdd gnd OAI21X1
X_3470_ \u_cpu.PC\[3] _285_ vdd gnd INVX1
X_3050_ _1393_ clk_bF$buf9 \u_cpu.IRHOLD\[0] vdd gnd DFFPOSX1
XFILL_2__2743_ gnd vdd FILL
XFILL_4__2669_ gnd vdd FILL
XFILL_4__3610_ gnd vdd FILL
XFILL_0__2989_ gnd vdd FILL
XFILL_0__2569_ gnd vdd FILL
X_4675_ _1727_ _1728_ vdd gnd INVX1
X_4255_ _1008_ _1105_ _1007_ vdd gnd NOR2X1
XFILL_2__3948_ gnd vdd FILL
XFILL_0__3930_ gnd vdd FILL
XFILL_2__3528_ gnd vdd FILL
XFILL_0__3510_ gnd vdd FILL
XFILL_4__4815_ gnd vdd FILL
XFILL_0__4715_ gnd vdd FILL
XFILL_3__2812_ gnd vdd FILL
XFILL_2_BUFX2_insert80 gnd vdd FILL
XFILL_2_BUFX2_insert81 gnd vdd FILL
XFILL_2_BUFX2_insert82 gnd vdd FILL
XFILL_2_BUFX2_insert83 gnd vdd FILL
XFILL_2_BUFX2_insert84 gnd vdd FILL
XFILL_2_BUFX2_insert85 gnd vdd FILL
XFILL_2_BUFX2_insert86 gnd vdd FILL
XFILL_2_BUFX2_insert87 gnd vdd FILL
XFILL_2_BUFX2_insert88 gnd vdd FILL
XFILL_2_BUFX2_insert89 gnd vdd FILL
XFILL_2__3281_ gnd vdd FILL
X_2741_ _1638__bF$buf1 _2354__1_bF$buf1 _2354__2_bF$buf1 _1994_ vdd gnd AOI21X1
XFILL_2__4486_ gnd vdd FILL
XFILL_2__4066_ gnd vdd FILL
X_3946_ _1086_ _1129__bF$buf4 _724_ _1451_ vdd gnd OAI21X1
X_3526_ \u_cpu.DIMUX\[0] _339_ _336_ _335_ vdd gnd AOI21X1
X_3106_ _1417__bF$buf2 vdd _1433_ clk_bF$buf0 \u_cpu.adj_bcd\ vdd 
+ gnd
+ DFFSR
XFILL_1__2483_ gnd vdd FILL
XFILL_3__3770_ gnd vdd FILL
XFILL_3__3350_ gnd vdd FILL
XFILL274050x50550 gnd vdd FILL
XFILL_1__3688_ gnd vdd FILL
XFILL_1__3268_ gnd vdd FILL
XFILL_3__4975_ gnd vdd FILL
XFILL_3__4555_ gnd vdd FILL
XFILL_3__4135_ gnd vdd FILL
XFILL_2__2972_ gnd vdd FILL
XFILL_2__2552_ gnd vdd FILL
XFILL_4__2898_ gnd vdd FILL
XFILL_4__2478_ gnd vdd FILL
XFILL_0__2798_ gnd vdd FILL
XFILL_0__2378_ gnd vdd FILL
X_4484_ _1294_ _1288_ _1213_ _1212_ vdd gnd NAND3X1
X_4064_ \u_cpu.state\[5] _881_ _832_ _831_ vdd gnd OAI21X1
XFILL_2__3757_ gnd vdd FILL
XFILL_2__3337_ gnd vdd FILL
XFILL_4__4624_ gnd vdd FILL
XFILL_4__4204_ gnd vdd FILL
XFILL_0__4944_ gnd vdd FILL
XFILL_3__2621_ gnd vdd FILL
XFILL_0__4524_ gnd vdd FILL
XFILL_0__4104_ gnd vdd FILL
XFILL_1__2539_ gnd vdd FILL
XFILL_1__3900_ gnd vdd FILL
XFILL_3__3826_ gnd vdd FILL
XFILL_3__3406_ gnd vdd FILL
X_2970_ _1613_ _1624_ _1612_ _1625_ vdd gnd NAND3X1
X_2550_ _1659_ _2049_ _2010_ _1929_ _2277_ vdd 
+ gnd
+ AOI22X1
XFILL_2__4295_ gnd vdd FILL
X_3755_ _1099_ _757_ _554_ vdd gnd NAND2X1
X_3335_ _180_ _179_ vdd gnd INVX2
XFILL_2__2608_ gnd vdd FILL
XFILL_1__3497_ gnd vdd FILL
XFILL_3__4784_ gnd vdd FILL
XFILL_3__4364_ gnd vdd FILL
XFILL_2__2781_ gnd vdd FILL
XFILL_2__2361_ gnd vdd FILL
X_4293_ \u_cpu.AXYS[1]\[4] _1041_ _1038_ vdd gnd NAND2X1
XFILL_2__3986_ gnd vdd FILL
XFILL_2__3566_ gnd vdd FILL
X_2606_ _2126_ _2115_ _2127_ vdd gnd NAND2X1
XFILL_4__4853_ gnd vdd FILL
XFILL_4__4433_ gnd vdd FILL
XFILL_4__4013_ gnd vdd FILL
XFILL_0__4753_ gnd vdd FILL
XFILL_3__2850_ gnd vdd FILL
XFILL_3__2430_ gnd vdd FILL
XFILL_0__4333_ gnd vdd FILL
XFILL_1__2768_ gnd vdd FILL
XFILL_3__3635_ gnd vdd FILL
XFILL_3__3215_ gnd vdd FILL
XFILL272250x21750 gnd vdd FILL
XFILL_1__4914_ gnd vdd FILL
X_3984_ \u_cpu.index_y\ _758_ vdd gnd INVX1
X_3564_ _388_ _369_ _413_ _1431_ vdd gnd OAI21X1
X_3144_ _1417__bF$buf10 vdd _1408_ clk_bF$buf4 \u_cpu.cond_code\[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2837_ gnd vdd FILL
XFILL_2__2417_ gnd vdd FILL
XFILL_4__3704_ gnd vdd FILL
X_4769_ _1684_ _1815_ _1821_ _1822_ vdd gnd OAI21X1
X_4349_ _1318_ _1108_ _1094_ _1093_ vdd gnd OAI21X1
XFILL_0__3604_ gnd vdd FILL
XFILL_3__4593_ gnd vdd FILL
XFILL_3__4173_ gnd vdd FILL
XFILL_4__4909_ gnd vdd FILL
XFILL_2__2590_ gnd vdd FILL
XFILL_0__4809_ gnd vdd FILL
XFILL_3__2906_ gnd vdd FILL
XFILL_2__3795_ gnd vdd FILL
XFILL_2__3375_ gnd vdd FILL
X_2835_ _2354__0_bF$buf4 _1636__bF$buf4 _1660_ vdd gnd NOR2X1
X_2415_ _1638__bF$buf1 _2354__2_bF$buf1 _2000_ _59_ vdd gnd OAI21X1
XFILL_4__4662_ gnd vdd FILL
XFILL_4__4242_ gnd vdd FILL
XFILL_0__4982_ gnd vdd FILL
XFILL_0__4562_ gnd vdd FILL
XFILL_0__4142_ gnd vdd FILL
XFILL_1__2997_ gnd vdd FILL
XFILL_1__2577_ gnd vdd FILL
XFILL_3__3864_ gnd vdd FILL
XFILL_3__3444_ gnd vdd FILL
XFILL_3__3024_ gnd vdd FILL
XFILL_1__4723_ gnd vdd FILL
XFILL_1__4303_ gnd vdd FILL
XFILL_3__4649_ gnd vdd FILL
XFILL_3__4229_ gnd vdd FILL
X_3793_ _1343_ _1342_ _591_ vdd gnd NAND2X1
X_3373_ _209_ _868_ _213_ _208_ vdd gnd NAND3X1
XFILL_2__2646_ gnd vdd FILL
XFILL_4__3933_ gnd vdd FILL
XFILL_4__3513_ gnd vdd FILL
X_4998_ _2354__6_bF$buf0 clk_bF$buf6 _Addr_Bus[6] vdd gnd DFFPOSX1
X_4578_ _1352_ _1337_ _1306_ vdd gnd NOR2X1
X_4158_ _975_ _921_ _920_ _1465_ vdd gnd OAI21X1
XFILL_0__3833_ gnd vdd FILL
XFILL_0__3413_ gnd vdd FILL
XFILL_4__4718_ gnd vdd FILL
XFILL_3__2715_ gnd vdd FILL
XFILL_0__4618_ gnd vdd FILL
XFILL_2__3184_ gnd vdd FILL
X_2644_ _2089_ _2060_ _1992_ _2090_ vdd gnd OAI21X1
XFILL_4__4891_ gnd vdd FILL
XFILL_4__4471_ gnd vdd FILL
XFILL_4__4051_ gnd vdd FILL
XFILL_0__4791_ gnd vdd FILL
XFILL_2__4389_ gnd vdd FILL
XFILL_0__4371_ gnd vdd FILL
X_3849_ \u_cpu.AXYS[2]\[6] _790_ _642_ vdd gnd NAND2X1
X_3429_ _259_ _256_ _260_ _2353_[3] vdd gnd NAND3X1
X_3009_ _1588_ _1589_ vdd gnd INVX1
XFILL_1__2386_ gnd vdd FILL
XFILL_3__3673_ gnd vdd FILL
XFILL_3__3253_ gnd vdd FILL
XFILL_1__4952_ gnd vdd FILL
XFILL_1__4532_ gnd vdd FILL
XFILL_1__4112_ gnd vdd FILL
XFILL_3__4458_ gnd vdd FILL
XFILL_3__4038_ gnd vdd FILL
X_3182_ \u_cpu.PC\[2] _1196__bF$buf7 _84_ vdd gnd NAND2X1
XFILL_2__2875_ gnd vdd FILL
XFILL_2__2455_ gnd vdd FILL
XFILL_4__3742_ gnd vdd FILL
XFILL_4__3322_ gnd vdd FILL
XFILL_1_BUFX2_insert0 gnd vdd FILL
X_4387_ \u_cpu.IRHOLD\[5] \u_cpu.IRHOLD_valid\ _1128_ vdd gnd NAND2X1
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
XFILL_2__4601_ gnd vdd FILL
XFILL_4__4947_ gnd vdd FILL
XFILL_4__4527_ gnd vdd FILL
XFILL_4__4107_ gnd vdd FILL
XFILL_0__4847_ gnd vdd FILL
XFILL_3__2944_ gnd vdd FILL
XFILL_3__2524_ gnd vdd FILL
XFILL_0__4427_ gnd vdd FILL
XFILL_0__4007_ gnd vdd FILL
XFILL_1__3803_ gnd vdd FILL
XFILL_3__3729_ gnd vdd FILL
XFILL_3__3309_ gnd vdd FILL
X_2873_ _1514_ vdd _1595_ clk_bF$buf3 \u_pia_dsp.state\[1] vdd 
+ gnd
+ DFFSR
X_2453_ _1958_ _2130_ _1652_ _22_ vdd gnd OAI21X1
XFILL_4__4280_ gnd vdd FILL
XFILL272550x64950 gnd vdd FILL
XFILL_0__4180_ gnd vdd FILL
XFILL_2__4198_ gnd vdd FILL
X_3658_ _525_ _462_ _534_ _461_ vdd gnd NAND3X1
X_3238_ _2354_[12] _800__bF$buf1 _122_ vdd gnd NAND2X1
XFILL_0__2913_ gnd vdd FILL
XFILL_3__3482_ gnd vdd FILL
XFILL_1__4761_ gnd vdd FILL
XFILL_1__4341_ gnd vdd FILL
XFILL_3__4687_ gnd vdd FILL
XFILL_3__4267_ gnd vdd FILL
XFILL_2__2684_ gnd vdd FILL
XFILL_4__3971_ gnd vdd FILL
XFILL_4__3551_ gnd vdd FILL
X_4196_ \u_cpu.DIMUX\[2] _1070__bF$buf2 _953_ _952_ vdd gnd OAI21X1
XFILL_2__3889_ gnd vdd FILL
XFILL_0__3871_ gnd vdd FILL
XFILL_2__3469_ gnd vdd FILL
XFILL_0__3451_ gnd vdd FILL
XFILL_0__3031_ gnd vdd FILL
XFILL_2__4830_ gnd vdd FILL
XFILL_2__4410_ gnd vdd FILL
X_2929_ _1537_ _1540_ DO_dsp[2] _1541_ vdd gnd OAI21X1
X_2509_ _1923__bF$buf0 _2316_ _2317_ vdd gnd NAND2X1
XFILL_4__4756_ gnd vdd FILL
XFILL_4__4336_ gnd vdd FILL
XFILL_3__2753_ gnd vdd FILL
XFILL_0__4656_ gnd vdd FILL
XFILL_0__4236_ gnd vdd FILL
XFILL_1__3612_ gnd vdd FILL
XFILL_3__3958_ gnd vdd FILL
XFILL_3__3538_ gnd vdd FILL
X_2682_ _1991_ _2051_ _1634__bF$buf2 _2052_ vdd gnd OAI21X1
XFILL_1__4817_ gnd vdd FILL
XFILL_4__2822_ gnd vdd FILL
XFILL_4__2402_ gnd vdd FILL
X_3887_ \u_cpu.AXYS[2]\[3] _760_ _676_ vdd gnd NAND2X1
X_3467_ _1049_ _1080_ _1350_ _282_ vdd gnd OAI21X1
X_3047_ _1417__bF$buf2 vdd _1363_ clk_bF$buf11 \u_cpu.adc_sbc\ vdd 
+ gnd
+ DFFSR
XFILL_0__2722_ gnd vdd FILL
XFILL_3__3291_ gnd vdd FILL
XFILL_4__3607_ gnd vdd FILL
XFILL_0__3927_ gnd vdd FILL
XFILL_0__3507_ gnd vdd FILL
XFILL_1__4570_ gnd vdd FILL
XFILL_1__4150_ gnd vdd FILL
XFILL_3__4496_ gnd vdd FILL
XFILL_3__4076_ gnd vdd FILL
XFILL_2__2493_ gnd vdd FILL
XFILL_3__2809_ gnd vdd FILL
XFILL_4__3780_ gnd vdd FILL
XFILL_4__3360_ gnd vdd FILL
XFILL_2__3698_ gnd vdd FILL
XFILL_0__3680_ gnd vdd FILL
XFILL_2__3278_ gnd vdd FILL
XFILL_0__3260_ gnd vdd FILL
X_2738_ _1663_ _1661_ _1658_ _1997_ vdd gnd OAI21X1
XFILL_4__4985_ gnd vdd FILL
XFILL_4__4565_ gnd vdd FILL
XFILL_4__4145_ gnd vdd FILL
XFILL_0__4885_ gnd vdd FILL
XFILL_3__2982_ gnd vdd FILL
XFILL_3__2562_ gnd vdd FILL
XFILL_0__4465_ gnd vdd FILL
XFILL_0__4045_ gnd vdd FILL
XFILL_1__3841_ gnd vdd FILL
XFILL_1__3421_ gnd vdd FILL
XFILL_1__3001_ gnd vdd FILL
XFILL_3__3767_ gnd vdd FILL
XFILL_3__3347_ gnd vdd FILL
X_2491_ _2053_ _1980_ _1920__bF$buf2 _2335_ vdd gnd OAI21X1
XFILL_1__4626_ gnd vdd FILL
XFILL_1__4206_ gnd vdd FILL
XFILL_4__2631_ gnd vdd FILL
X_3696_ _499_ _502_ _498_ \u_cpu.alu_op\[1] vdd gnd OAI21X1
X_3276_ _1192_ _179_ _145_ _1394_ vdd gnd OAI21X1
XFILL_0__2951_ gnd vdd FILL
XFILL_2__2969_ gnd vdd FILL
XFILL_2__2549_ gnd vdd FILL
XFILL_0__2531_ gnd vdd FILL
XFILL_2__3910_ gnd vdd FILL
XFILL_4__3836_ gnd vdd FILL
XFILL_4__3416_ gnd vdd FILL
XFILL_0__3736_ gnd vdd FILL
XFILL_0__3316_ gnd vdd FILL
X_5002_ _2354_[13] clk_bF$buf6 _Addr_Bus[13] vdd gnd DFFPOSX1
XFILL_3__2618_ gnd vdd FILL
X_2967_ _1627_ _1626_ _1495_ vdd gnd NAND2X1
X_2547_ _2279_ _1635__bF$buf4 _2280_ vdd gnd OR2X2
XFILL_4__4794_ gnd vdd FILL
XFILL_4__4374_ gnd vdd FILL
XFILL_3__2791_ gnd vdd FILL
XFILL_0__4694_ gnd vdd FILL
XFILL_3__2371_ gnd vdd FILL
XFILL_0__4274_ gnd vdd FILL
XFILL_1__3650_ gnd vdd FILL
XFILL_1__3230_ gnd vdd FILL
XFILL_3__3996_ gnd vdd FILL
XFILL_3__3576_ gnd vdd FILL
XFILL_1__4855_ gnd vdd FILL
XFILL_1__4435_ gnd vdd FILL
XFILL_1__4015_ gnd vdd FILL
XFILL_4__2860_ gnd vdd FILL
XFILL_4__2440_ gnd vdd FILL
X_3085_ _1417__bF$buf3 vdd _1379_ clk_bF$buf7 \u_cpu.ABH\[3] vdd 
+ gnd
+ DFFSR
XFILL_0__2760_ gnd vdd FILL
XFILL_2__2778_ gnd vdd FILL
XFILL_2__2358_ gnd vdd FILL
XFILL_4__3645_ gnd vdd FILL
XFILL_4__3225_ gnd vdd FILL
XFILL_0__3965_ gnd vdd FILL
XFILL_0__3545_ gnd vdd FILL
XFILL_2__4924_ gnd vdd FILL
XFILL_3_BUFX2_insert0 gnd vdd FILL
XFILL_2__4504_ gnd vdd FILL
XFILL_3_BUFX2_insert1 gnd vdd FILL
XFILL_3_BUFX2_insert2 gnd vdd FILL
XFILL_3_BUFX2_insert3 gnd vdd FILL
XFILL_3_BUFX2_insert4 gnd vdd FILL
XFILL_3_BUFX2_insert5 gnd vdd FILL
XFILL_3_BUFX2_insert6 gnd vdd FILL
XFILL_3_BUFX2_insert7 gnd vdd FILL
XFILL_3_BUFX2_insert8 gnd vdd FILL
XFILL_3_BUFX2_insert9 gnd vdd FILL
XFILL_1__2921_ gnd vdd FILL
XFILL_1__2501_ gnd vdd FILL
XFILL_3__2847_ gnd vdd FILL
XFILL_3__2427_ gnd vdd FILL
XFILL_1__3706_ gnd vdd FILL
X_2776_ _1957_ _1958_ _1959_ _1960_ vdd gnd OAI21X1
X_2356_ _2354_[15] AB[15] vdd gnd BUFX2
XFILL_4__4183_ gnd vdd FILL
XFILL_0__4083_ gnd vdd FILL
XFILL_4__2916_ gnd vdd FILL
XFILL_0__2816_ gnd vdd FILL
X_4922_ _2196_ _2197_ _2198_ vdd gnd NAND2X1
X_4502_ _1240_ _1231_ _1230_ vdd gnd NOR2X1
XFILL_3__3385_ gnd vdd FILL
XFILL_1__4664_ gnd vdd FILL
XFILL_1__4244_ gnd vdd FILL
XFILL_2__2587_ gnd vdd FILL
XFILL_4__3874_ gnd vdd FILL
XFILL_4__3454_ gnd vdd FILL
X_4099_ _874_ _866_ _865_ vdd gnd AND2X2
XFILL_0__3774_ gnd vdd FILL
XFILL_0__3354_ gnd vdd FILL
XFILL_2__4733_ gnd vdd FILL
XFILL_2__4313_ gnd vdd FILL
XFILL_4__4659_ gnd vdd FILL
XFILL_4__4239_ gnd vdd FILL
XFILL_1__2730_ gnd vdd FILL
XFILL_0__4979_ gnd vdd FILL
XFILL_3__2656_ gnd vdd FILL
XFILL_0__4559_ gnd vdd FILL
XFILL_0__4139_ gnd vdd FILL
XFILL_1__3935_ gnd vdd FILL
XFILL_1__3515_ gnd vdd FILL
X_2585_ _2147_ _2145_ _2354__7_bF$buf0 _2148_ vdd gnd AOI21X1
XFILL_3__4802_ gnd vdd FILL
XFILL_4__2725_ gnd vdd FILL
XFILL_0__2625_ gnd vdd FILL
X_4731_ _1782_ _1779_ _1784_ vdd gnd NAND2X1
X_4311_ _1062_ _1060_ \u_cpu.index_y\ _1056_ vdd gnd OAI21X1
XFILL_3__3194_ gnd vdd FILL
XFILL_1__4893_ gnd vdd FILL
XFILL_1__4473_ gnd vdd FILL
XFILL_1__4053_ gnd vdd FILL
XFILL_3__4399_ gnd vdd FILL
XFILL_2__2396_ gnd vdd FILL
XFILL_4__3683_ gnd vdd FILL
XFILL_4__3263_ gnd vdd FILL
XFILL_0__3583_ gnd vdd FILL
XFILL_2__4962_ gnd vdd FILL
XFILL_2__4542_ gnd vdd FILL
XFILL_2__4122_ gnd vdd FILL
XFILL_4__4888_ gnd vdd FILL
XFILL_4__4468_ gnd vdd FILL
XFILL_4__4048_ gnd vdd FILL
XFILL_0__4788_ gnd vdd FILL
XFILL_3__2885_ gnd vdd FILL
XFILL_3__2465_ gnd vdd FILL
XFILL_0__4368_ gnd vdd FILL
XFILL_1__3744_ gnd vdd FILL
XFILL_1__3324_ gnd vdd FILL
X_2394_ _1426_ _1421_ _1973_ _1427_ vdd gnd AOI21X1
XFILL_3__4611_ gnd vdd FILL
XFILL_1__4949_ gnd vdd FILL
XFILL_1__4529_ gnd vdd FILL
XFILL_1__4109_ gnd vdd FILL
XFILL_4__2534_ gnd vdd FILL
X_3599_ _404_ _410_ _403_ vdd gnd OR2X2
X_3179_ _82_ _83_ _84_ _1360_ vdd gnd OAI21X1
XFILL_0__2854_ gnd vdd FILL
X_4960_ DI[1] _2231_ vdd gnd INVX1
XFILL_0__2434_ gnd vdd FILL
X_4540_ _1270_ _1269_ \u_cpu.PC\[3] _1268_ vdd gnd OAI21X1
X_4120_ _1319_ _887_ _886_ vdd gnd NOR2X1
XFILL_2__3813_ gnd vdd FILL
XFILL_4__3739_ gnd vdd FILL
XFILL_4__3319_ gnd vdd FILL
XFILL_0__3639_ gnd vdd FILL
XFILL_0__3219_ gnd vdd FILL
XFILL_1__4282_ gnd vdd FILL
XFILL_4__3492_ gnd vdd FILL
XFILL_0__3392_ gnd vdd FILL
XFILL_2__4771_ gnd vdd FILL
XFILL_2__4351_ gnd vdd FILL
XFILL_4__4697_ gnd vdd FILL
XFILL_4__4277_ gnd vdd FILL
X_3811_ _608_ _609_ _607_ vdd gnd NAND2X1
XFILL_3__2694_ gnd vdd FILL
XFILL_0__4597_ gnd vdd FILL
XFILL_0__4177_ gnd vdd FILL
XFILL_1__3973_ gnd vdd FILL
XFILL_1__3553_ gnd vdd FILL
XFILL_3__3899_ gnd vdd FILL
XFILL_3__3479_ gnd vdd FILL
XFILL_3__4840_ gnd vdd FILL
XFILL_3__4420_ gnd vdd FILL
XFILL_3__4000_ gnd vdd FILL
XFILL_1__4758_ gnd vdd FILL
XFILL_1__4338_ gnd vdd FILL
XFILL_4__2763_ gnd vdd FILL
XFILL_0__2663_ gnd vdd FILL
XFILL_2__3622_ gnd vdd FILL
XFILL_2__3202_ gnd vdd FILL
XFILL_4__3968_ gnd vdd FILL
XFILL_4__3548_ gnd vdd FILL
XFILL_0__3868_ gnd vdd FILL
XFILL_0__3448_ gnd vdd FILL
XFILL_0__3028_ gnd vdd FILL
XFILL_1__4091_ gnd vdd FILL
XFILL_2__4827_ gnd vdd FILL
XFILL_2__4407_ gnd vdd FILL
XFILL_1__2824_ gnd vdd FILL
XFILL_1__2404_ gnd vdd FILL
XFILL_1__3609_ gnd vdd FILL
XFILL_2__4580_ gnd vdd FILL
XFILL_2__4160_ gnd vdd FILL
X_2679_ _2054_ _1909_ _1634__bF$buf1 _2055_ vdd gnd AOI21X1
XFILL_4__4086_ gnd vdd FILL
X_3620_ _425_ _454_ _424_ vdd gnd OR2X2
X_3200_ \u_cpu.AXYS[1]\[3] _1041_ _96_ vdd gnd NAND2X1
XFILL272850x72150 gnd vdd FILL
XFILL_4__2819_ gnd vdd FILL
XFILL_0__2719_ gnd vdd FILL
X_4825_ _1868_ _1863_ _1870_ vdd gnd NAND2X1
X_4405_ _1144_ _1143_ vdd gnd INVX1
XFILL_1__3782_ gnd vdd FILL
XFILL_1__3362_ gnd vdd FILL
XFILL272850x39750 gnd vdd FILL
XFILL_3__3288_ gnd vdd FILL
XFILL_1__4567_ gnd vdd FILL
XFILL_1__4147_ gnd vdd FILL
XFILL_4__2992_ gnd vdd FILL
XFILL_4__2572_ gnd vdd FILL
XFILL_0__2892_ gnd vdd FILL
XFILL_0__2472_ gnd vdd FILL
XFILL_2__3851_ gnd vdd FILL
XFILL_2__3431_ gnd vdd FILL
XFILL_2__3011_ gnd vdd FILL
XFILL_4__3777_ gnd vdd FILL
XFILL_4__3357_ gnd vdd FILL
XFILL_0__3677_ gnd vdd FILL
XFILL_0__3257_ gnd vdd FILL
XFILL_2__4636_ gnd vdd FILL
XFILL_2__4216_ gnd vdd FILL
XFILL_1__2633_ gnd vdd FILL
XFILL_3__2979_ gnd vdd FILL
XFILL_3__2559_ gnd vdd FILL
XFILL_3__3920_ gnd vdd FILL
XFILL_3__3500_ gnd vdd FILL
XFILL_1__3838_ gnd vdd FILL
XFILL_1__3418_ gnd vdd FILL
X_2488_ _2295_ _1634__bF$buf3 _2338_ vdd gnd AND2X2
XFILL_3__4705_ gnd vdd FILL
XFILL_2__2702_ gnd vdd FILL
XFILL_4__2628_ gnd vdd FILL
XFILL_0__2948_ gnd vdd FILL
XFILL_0__2528_ gnd vdd FILL
X_4634_ \u_cpu.alu_op\[0] _1687_ vdd gnd INVX1
X_4214_ _972_ _969_ \u_cpu.ADD\[1] _968_ vdd gnd OAI21X1
XFILL_1__3591_ gnd vdd FILL
XFILL_1__3171_ gnd vdd FILL
XFILL_2__3907_ gnd vdd FILL
XFILL_1__4796_ gnd vdd FILL
XFILL_1__4376_ gnd vdd FILL
XFILL_4__2381_ gnd vdd FILL
XFILL_2__3660_ gnd vdd FILL
XFILL_2__3240_ gnd vdd FILL
XFILL_4__3586_ gnd vdd FILL
XFILL_4__3166_ gnd vdd FILL
X_2700_ _1652_ _1935_ _2034_ _2035_ vdd gnd NAND3X1
XFILL_0__3486_ gnd vdd FILL
XFILL_2__4865_ gnd vdd FILL
XFILL_2__4445_ gnd vdd FILL
XFILL_2__4025_ gnd vdd FILL
X_3905_ \u_cpu.AZ\ _692_ _694_ _691_ vdd gnd MUX2X1
XFILL_1__2442_ gnd vdd FILL
XFILL_3__2788_ gnd vdd FILL
XFILL_3__2368_ gnd vdd FILL
XFILL_1__3647_ gnd vdd FILL
XFILL_1__3227_ gnd vdd FILL
XFILL_3__4934_ gnd vdd FILL
XFILL_3__4514_ gnd vdd FILL
XFILL_2__2931_ gnd vdd FILL
XFILL_2__2511_ gnd vdd FILL
XFILL_4__2857_ gnd vdd FILL
XFILL_4__2437_ gnd vdd FILL
XFILL_0__2757_ gnd vdd FILL
X_4863_ _1902_ _1889_ _1881_ _1903_ vdd gnd AOI21X1
X_4443_ _1178_ _1349_ _1315__bF$buf0 _1177_ vdd gnd OAI21X1
X_4023_ \u_cpu.AXYS[0]\[7] _793_ vdd gnd INVX1
XFILL_2__3716_ gnd vdd FILL
XFILL_1__4185_ gnd vdd FILL
XFILL_0__4903_ gnd vdd FILL
XFILL_1__2918_ gnd vdd FILL
XFILL273450x10950 gnd vdd FILL
XFILL_4__3395_ gnd vdd FILL
XFILL_0__3295_ gnd vdd FILL
XFILL_2__4674_ gnd vdd FILL
XFILL_2__4254_ gnd vdd FILL
X_3714_ _1129__bF$buf2 _514_ _513_ vdd gnd NAND2X1
XFILL_1__2671_ gnd vdd FILL
XFILL_3__2597_ gnd vdd FILL
X_4919_ _2194_ _2191_ _2195_ vdd gnd AND2X2
XFILL_1__3876_ gnd vdd FILL
XFILL_1__3456_ gnd vdd FILL
XFILL_3__4743_ gnd vdd FILL
XFILL_3__4323_ gnd vdd FILL
XFILL_2__2740_ gnd vdd FILL
XFILL_4__2666_ gnd vdd FILL
XFILL_0__2986_ gnd vdd FILL
XFILL_0__2566_ gnd vdd FILL
X_4672_ _1716_ _1698_ _1724_ _1725_ vdd gnd OAI21X1
X_4252_ _1005_ _1020_ _1004_ vdd gnd NOR2X1
XFILL_2__3945_ gnd vdd FILL
XFILL_2__3525_ gnd vdd FILL
XFILL_4__4812_ gnd vdd FILL
XFILL_0__4712_ gnd vdd FILL
XFILL_2_BUFX2_insert50 gnd vdd FILL
XFILL_2_BUFX2_insert51 gnd vdd FILL
XFILL_2_BUFX2_insert52 gnd vdd FILL
XFILL_2_BUFX2_insert53 gnd vdd FILL
XFILL_2_BUFX2_insert54 gnd vdd FILL
XFILL_2_BUFX2_insert55 gnd vdd FILL
XFILL_2_BUFX2_insert56 gnd vdd FILL
XFILL_2_BUFX2_insert57 gnd vdd FILL
XFILL_1__2727_ gnd vdd FILL
XFILL_2_BUFX2_insert58 gnd vdd FILL
XFILL_2_BUFX2_insert59 gnd vdd FILL
XFILL_2__4483_ gnd vdd FILL
XFILL_2__4063_ gnd vdd FILL
X_3943_ _1129__bF$buf4 _998_ _721_ vdd gnd NAND2X1
X_3523_ \u_cpu.ABH\[5] _333_ vdd gnd INVX1
X_3103_ _1417__bF$buf5 vdd _1444_ clk_bF$buf11 \u_cpu.clc\ vdd 
+ gnd
+ DFFSR
XFILL_1__2480_ gnd vdd FILL
X_4728_ \u_cpu.alu_op\[3] _1699_ _1773_ _1781_ vdd gnd OAI21X1
X_4308_ \u_cpu.src_reg\[0] _1054_ _1053_ vdd gnd NAND2X1
XFILL_1__3685_ gnd vdd FILL
XFILL_1__3265_ gnd vdd FILL
XFILL_3__4972_ gnd vdd FILL
XFILL_3__4552_ gnd vdd FILL
XFILL_3__4132_ gnd vdd FILL
XFILL_4__2475_ gnd vdd FILL
XFILL_0__2795_ gnd vdd FILL
XFILL_0__2375_ gnd vdd FILL
X_4481_ \u_cpu.PC\[8] _1210_ vdd gnd INVX1
X_4061_ _1328__bF$buf5 _1084_ _828_ vdd gnd NOR2X1
XFILL_2__3754_ gnd vdd FILL
XFILL_2__3334_ gnd vdd FILL
XFILL_4__4621_ gnd vdd FILL
XFILL_4__4201_ gnd vdd FILL
XFILL_0__4941_ gnd vdd FILL
XFILL_2__4959_ gnd vdd FILL
XFILL_2__4539_ gnd vdd FILL
XFILL_0__4521_ gnd vdd FILL
XFILL_0__4101_ gnd vdd FILL
XFILL_2__4119_ gnd vdd FILL
XFILL_1__2536_ gnd vdd FILL
XFILL_3__3823_ gnd vdd FILL
XFILL_3__3403_ gnd vdd FILL
XFILL_2__4292_ gnd vdd FILL
XFILL_3__4608_ gnd vdd FILL
X_3752_ _1061_ _551_ vdd gnd INVX1
X_3332_ reset _1417_ vdd gnd INVX8
XFILL_2__2605_ gnd vdd FILL
X_4957_ DO_woz[1] _2228_ vdd gnd INVX1
X_4537_ _1300_ \u_cpu.ADD\[3] _1266_ _1265_ vdd gnd AOI21X1
X_4117_ _1350_ _1072_ _883_ vdd gnd NAND2X1
XFILL_1__3494_ gnd vdd FILL
XFILL_3__4781_ gnd vdd FILL
XFILL_3__4361_ gnd vdd FILL
XFILL_1__4699_ gnd vdd FILL
XFILL_1__4279_ gnd vdd FILL
X_4290_ _1126_ _1123_ _1036_ vdd gnd NOR2X1
XFILL_2__3983_ gnd vdd FILL
XFILL_2__3563_ gnd vdd FILL
XFILL_4__3489_ gnd vdd FILL
X_2603_ _2354__0_bF$buf5 _1635__bF$buf3 _2130_ vdd gnd NOR2X1
XFILL_4__4850_ gnd vdd FILL
XFILL_4__4430_ gnd vdd FILL
XFILL_4__4010_ gnd vdd FILL
XFILL_0__3389_ gnd vdd FILL
XFILL_0__4750_ gnd vdd FILL
XFILL_2__4768_ gnd vdd FILL
XFILL_2__4348_ gnd vdd FILL
XFILL_0__4330_ gnd vdd FILL
X_3808_ \u_cpu.PC\[8] _873_ _625_ \u_cpu.ADD\[0] _604_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2765_ gnd vdd FILL
XFILL_3__3632_ gnd vdd FILL
XFILL_3__3212_ gnd vdd FILL
XFILL_1__4911_ gnd vdd FILL
XFILL_3__4837_ gnd vdd FILL
XFILL_3__4417_ gnd vdd FILL
X_3981_ _1001_ _756_ _755_ vdd gnd NOR2X1
X_3561_ _1083_ _451_ _366_ vdd gnd NOR2X1
X_3141_ _1417__bF$buf1 vdd _1487_ clk_bF$buf5 \u_cpu.PC\[10] vdd 
+ gnd
+ DFFSR
XFILL_2__2834_ gnd vdd FILL
XFILL_2__2414_ gnd vdd FILL
XFILL_4__3701_ gnd vdd FILL
X_4766_ _1688_ _1817_ _1818_ _1819_ vdd gnd OAI21X1
X_4346_ _1144_ _1133_ _1091_ _1090_ vdd gnd AOI21X1
XFILL_0__3601_ gnd vdd FILL
XFILL_2__3619_ gnd vdd FILL
XFILL_3__4590_ gnd vdd FILL
XFILL_3__4170_ gnd vdd FILL
XFILL_4__4906_ gnd vdd FILL
XFILL_1__4088_ gnd vdd FILL
XFILL_0__4806_ gnd vdd FILL
XFILL_3__2903_ gnd vdd FILL
XFILL_2__3792_ gnd vdd FILL
XFILL_2__3372_ gnd vdd FILL
XFILL_4__3298_ gnd vdd FILL
X_2832_ _2354__0_bF$buf2 _2354__2_bF$buf2 _1663_ vdd gnd AND2X2
X_2412_ _61_ _1920__bF$buf0 _2354__7_bF$buf3 _62_ vdd gnd AOI21X1
XFILL_0__3198_ gnd vdd FILL
XFILL_2__4577_ gnd vdd FILL
XFILL_2__4157_ gnd vdd FILL
X_3617_ _430_ _422_ _421_ vdd gnd OR2X2
XFILL_1__2994_ gnd vdd FILL
XFILL_1__2574_ gnd vdd FILL
XFILL_3__3861_ gnd vdd FILL
XFILL_3__3441_ gnd vdd FILL
XFILL_3__3021_ gnd vdd FILL
XFILL_1__3779_ gnd vdd FILL
XFILL_1__3359_ gnd vdd FILL
XFILL_1__4720_ gnd vdd FILL
XFILL_1__4300_ gnd vdd FILL
XFILL_3__4646_ gnd vdd FILL
XFILL_3__4226_ gnd vdd FILL
X_3790_ \u_cpu.ADD\[4] _842_ _588_ vdd gnd NAND2X1
X_3370_ _418_ _472_ _206_ vdd gnd AND2X2
XFILL_2__2643_ gnd vdd FILL
XFILL_4__2989_ gnd vdd FILL
XFILL_4__2569_ gnd vdd FILL
XFILL_4__3930_ gnd vdd FILL
XFILL_4__3510_ gnd vdd FILL
XFILL_0__2889_ gnd vdd FILL
XFILL_0__2469_ gnd vdd FILL
X_4995_ _2354__1_bF$buf3 clk_bF$buf6 _Addr_Bus[1] vdd gnd DFFPOSX1
X_4575_ \u_cpu.state\[4] \u_cpu.state\[5] _1303_ vdd gnd AND2X2
X_4155_ \u_cpu.AXYS[3]\[2] _921_ _918_ vdd gnd NAND2X1
XFILL_2__3848_ gnd vdd FILL
XFILL_0__3830_ gnd vdd FILL
XFILL_2__3428_ gnd vdd FILL
XFILL_0__3410_ gnd vdd FILL
XFILL_2__3008_ gnd vdd FILL
XFILL_4__4715_ gnd vdd FILL
XFILL_3__2712_ gnd vdd FILL
XFILL_0__4615_ gnd vdd FILL
XFILL_2__3181_ gnd vdd FILL
XFILL_3__3917_ gnd vdd FILL
X_2641_ _1961_ _1663_ _2093_ vdd gnd NOR2X1
XFILL_2__4386_ gnd vdd FILL
X_3846_ _640_ _639_ vdd gnd INVX1
X_3426_ \u_cpu.PC\[9] _873_ _613_ \u_cpu.Z\ _253_ vdd 
+ gnd
+ AOI22X1
X_3006_ _1590_ _1591_ _1592_ vdd gnd AND2X2
XFILL_1__2383_ gnd vdd FILL
XFILL_3__3670_ gnd vdd FILL
XFILL_3__3250_ gnd vdd FILL
XFILL_1__3588_ gnd vdd FILL
XFILL_1__3168_ gnd vdd FILL
XFILL_3__4455_ gnd vdd FILL
XFILL_3__4035_ gnd vdd FILL
XFILL_2__2452_ gnd vdd FILL
XFILL_4__2798_ gnd vdd FILL
XFILL_4__2378_ gnd vdd FILL
XFILL_0__2698_ gnd vdd FILL
X_4384_ \u_cpu.IRHOLD_valid\ _1125_ vdd gnd INVX4
XFILL_2__3657_ gnd vdd FILL
XFILL_2__3237_ gnd vdd FILL
XFILL_4__4944_ gnd vdd FILL
XFILL_4__4524_ gnd vdd FILL
XFILL_4__4104_ gnd vdd FILL
XFILL_0__4844_ gnd vdd FILL
XFILL_3__2941_ gnd vdd FILL
XFILL_3__2521_ gnd vdd FILL
XFILL_0__4424_ gnd vdd FILL
XFILL_0__4004_ gnd vdd FILL
XFILL_1__2859_ gnd vdd FILL
XFILL_1__2439_ gnd vdd FILL
XFILL_1__3800_ gnd vdd FILL
XFILL_3__3726_ gnd vdd FILL
XFILL_3__3306_ gnd vdd FILL
X_2870_ _1514_ vdd _1515_ clk_bF$buf1 DO_dsp[6] vdd 
+ gnd
+ DFFSR
X_2450_ _2354__2_bF$buf4 _1638__bF$buf3 _1635__bF$buf1 _25_ vdd gnd OAI21X1
XFILL_2__4195_ gnd vdd FILL
X_3655_ _1329_ _1075_ _458_ vdd gnd NAND2X1
X_3235_ _333_ _800__bF$buf0 _121_ _1377_ vdd gnd OAI21X1
XFILL_0__2910_ gnd vdd FILL
XFILL_2__2928_ gnd vdd FILL
XFILL_2__2508_ gnd vdd FILL
XFILL_1__3397_ gnd vdd FILL
XFILL_3__4684_ gnd vdd FILL
XFILL_3__4264_ gnd vdd FILL
XFILL_2__2681_ gnd vdd FILL
X_4193_ _956_ _968_ _958_ _950_ vdd gnd OAI21X1
XFILL_2__3886_ gnd vdd FILL
XFILL_2__3466_ gnd vdd FILL
X_2926_ _1537_ _1540_ DO_dsp[3] _1543_ vdd gnd OAI21X1
X_2506_ _1915_ _1918_ _1662_ _2320_ vdd gnd OAI21X1
XFILL_4__4753_ gnd vdd FILL
XFILL_4__4333_ gnd vdd FILL
XFILL_3__2750_ gnd vdd FILL
XFILL_0__4653_ gnd vdd FILL
XFILL_0__4233_ gnd vdd FILL
XFILL_1__2668_ gnd vdd FILL
XFILL_3__3955_ gnd vdd FILL
XFILL_3__3535_ gnd vdd FILL
XFILL_1__4814_ gnd vdd FILL
X_3884_ _697_ _674_ vdd gnd INVX1
X_3464_ _281_ _280_ _279_ vdd gnd NOR2X1
X_3044_ _1417__bF$buf6 vdd _1462_ clk_bF$buf2 \u_cpu.AXYS[3]\[3] vdd 
+ gnd
+ DFFSR
XFILL_2__2737_ gnd vdd FILL
XFILL_4__3604_ gnd vdd FILL
X_4669_ _1684_ _1721_ _1720_ _1722_ vdd gnd NAND3X1
X_4249_ _1123_ _1001_ vdd gnd INVX2
XFILL_0__3924_ gnd vdd FILL
XFILL_0__3504_ gnd vdd FILL
XFILL_3__4493_ gnd vdd FILL
XFILL_3__4073_ gnd vdd FILL
XFILL_4__4809_ gnd vdd FILL
XFILL_2__2490_ gnd vdd FILL
XFILL_0__4709_ gnd vdd FILL
XFILL_3__2806_ gnd vdd FILL
XFILL_2__3695_ gnd vdd FILL
XFILL_2__3275_ gnd vdd FILL
X_2735_ _2354__3_bF$buf1 _2354__4_bF$buf3 _2000_ vdd gnd NOR2X1
XFILL_4__4982_ gnd vdd FILL
XFILL_4__4562_ gnd vdd FILL
XFILL_4__4142_ gnd vdd FILL
XFILL_0__4462_ gnd vdd FILL
XFILL_0__4042_ gnd vdd FILL
XFILL_1__2897_ gnd vdd FILL
XFILL_1__2477_ gnd vdd FILL
XFILL_3__3764_ gnd vdd FILL
XFILL_3__3344_ gnd vdd FILL
XFILL_1__4623_ gnd vdd FILL
XFILL_1__4203_ gnd vdd FILL
XFILL_3__4969_ gnd vdd FILL
XFILL_3__4549_ gnd vdd FILL
XFILL_3__4129_ gnd vdd FILL
X_3693_ _1196__bF$buf3 _497_ _496_ vdd gnd NAND2X1
X_3273_ \u_cpu.ABL\[0] _800__bF$buf4 _143_ vdd gnd NOR2X1
XFILL272250x97350 gnd vdd FILL
XFILL_2__2966_ gnd vdd FILL
XFILL_2__2546_ gnd vdd FILL
XFILL_4__3833_ gnd vdd FILL
XFILL_4__3413_ gnd vdd FILL
X_4898_ _Addr_Bus[1] _2160_ _2173_ _2174_ vdd gnd NAND3X1
X_4478_ RDY_bF$buf2 _1209_ _1208_ \u_cpu.DIMUX\[0] vdd gnd OAI21X1
X_4058_ _1302_ _826_ _825_ vdd gnd NOR2X1
XFILL_0__3733_ gnd vdd FILL
XFILL_0__3313_ gnd vdd FILL
XFILL_4__4618_ gnd vdd FILL
XFILL_0__4938_ gnd vdd FILL
XFILL_0__4518_ gnd vdd FILL
XFILL_3__2615_ gnd vdd FILL
X_2964_ _1628_ _1500_ _1629_ _1496_ vdd gnd OAI21X1
X_2544_ _2282_ _2281_ _1923__bF$buf0 _2283_ vdd gnd AOI21X1
XFILL_4__4791_ gnd vdd FILL
XFILL_4__4371_ gnd vdd FILL
XFILL_0__4691_ gnd vdd FILL
XFILL_2__4289_ gnd vdd FILL
XFILL_0__4271_ gnd vdd FILL
X_3749_ _1325__bF$buf2 _888_ _1196__bF$buf6 _548_ vdd gnd OAI21X1
X_3329_ \u_cpu.AXYS[2]\[5] _760_ _176_ vdd gnd NAND2X1
XFILL_3__3993_ gnd vdd FILL
XFILL_3__3573_ gnd vdd FILL
XFILL_1__4852_ gnd vdd FILL
XFILL_1__4432_ gnd vdd FILL
XFILL_1__4012_ gnd vdd FILL
XFILL_3__4778_ gnd vdd FILL
XFILL_3__4358_ gnd vdd FILL
X_3082_ _1417__bF$buf6 vdd _1439_ clk_bF$buf2 \u_cpu.AXYS[2]\[3] vdd 
+ gnd
+ DFFSR
XFILL_2__2775_ gnd vdd FILL
XFILL_4__3642_ gnd vdd FILL
XFILL_4__3222_ gnd vdd FILL
X_4287_ _1034_ _1033_ vdd gnd INVX1
XFILL_0__3962_ gnd vdd FILL
XFILL_0__3542_ gnd vdd FILL
XFILL_2__4921_ gnd vdd FILL
XFILL_2__4501_ gnd vdd FILL
XFILL_4__4847_ gnd vdd FILL
XFILL_4__4427_ gnd vdd FILL
XFILL_4__4007_ gnd vdd FILL
XFILL_0__4747_ gnd vdd FILL
XFILL_3__2844_ gnd vdd FILL
XFILL_0__4327_ gnd vdd FILL
XFILL_3__2424_ gnd vdd FILL
XFILL_1__3703_ gnd vdd FILL
XFILL_3__3629_ gnd vdd FILL
XFILL_3__3209_ gnd vdd FILL
X_2773_ _2354__1_bF$buf3 _2354__2_bF$buf2 _2354__3_bF$buf3 _1963_ vdd gnd AOI21X1
XFILL_4__4180_ gnd vdd FILL
XFILL_2__4098_ gnd vdd FILL
XFILL_0__4080_ gnd vdd FILL
XFILL_1__4908_ gnd vdd FILL
XFILL_4__2913_ gnd vdd FILL
X_3978_ _754_ _1003_ _753_ _752_ vdd gnd OAI21X1
X_3558_ _1087_ _1325__bF$buf4 _847_ _363_ vdd gnd OAI21X1
X_3138_ _1417__bF$buf2 vdd _1405_ clk_bF$buf0 \u_cpu.IRHOLD_valid\ vdd 
+ gnd
+ DFFSR
XFILL_0__2813_ gnd vdd FILL
XFILL_3__3382_ gnd vdd FILL
XFILL_1__4661_ gnd vdd FILL
XFILL_1__4241_ gnd vdd FILL
XFILL_3__4587_ gnd vdd FILL
XFILL_3__4167_ gnd vdd FILL
XFILL_2__2584_ gnd vdd FILL
XFILL_4__3871_ gnd vdd FILL
XFILL_4__3451_ gnd vdd FILL
XFILL_4__3031_ gnd vdd FILL
X_4096_ _1286_ _875_ \u_cpu.ABH\[7] _862_ vdd gnd OAI21X1
XFILL_0__3771_ gnd vdd FILL
XFILL_2__3789_ gnd vdd FILL
XFILL_0__3351_ gnd vdd FILL
XFILL_2__3369_ gnd vdd FILL
XFILL_2__4730_ gnd vdd FILL
XFILL_2__4310_ gnd vdd FILL
X_2829_ _1663_ _1665_ _1664_ _1673_ vdd gnd OAI21X1
X_2409_ _2028_ _2354__3_bF$buf0 _2330_ _65_ vdd gnd AOI21X1
XFILL_4__4656_ gnd vdd FILL
XFILL_4__4236_ gnd vdd FILL
XFILL_0__4976_ gnd vdd FILL
XFILL_3__2653_ gnd vdd FILL
XFILL_0__4556_ gnd vdd FILL
XFILL_0__4136_ gnd vdd FILL
XFILL_1__3932_ gnd vdd FILL
XFILL_1__3512_ gnd vdd FILL
XFILL_3__3858_ gnd vdd FILL
XFILL_3__3438_ gnd vdd FILL
XFILL_3__3018_ gnd vdd FILL
X_2582_ _2354__3_bF$buf2 _2002_ _2150_ _2151_ vdd gnd OAI21X1
XFILL_1__4717_ gnd vdd FILL
XFILL_4__2722_ gnd vdd FILL
X_3787_ _629_ _657_ _586_ _2353_[4] vdd gnd OAI21X1
X_3367_ _206_ _204_ _511_ _203_ vdd gnd NAND3X1
XFILL_0__2622_ gnd vdd FILL
XFILL_3__3191_ gnd vdd FILL
XFILL_4__3927_ gnd vdd FILL
XFILL_4__3507_ gnd vdd FILL
XFILL_0__3827_ gnd vdd FILL
XFILL_0__3407_ gnd vdd FILL
XFILL_1__4890_ gnd vdd FILL
XFILL_1__4470_ gnd vdd FILL
XFILL_1__4050_ gnd vdd FILL
XFILL_3__4396_ gnd vdd FILL
XFILL_2__2393_ gnd vdd FILL
XFILL_3__2709_ gnd vdd FILL
XFILL_4__3680_ gnd vdd FILL
XFILL_4__3260_ gnd vdd FILL
XFILL272550x50550 gnd vdd FILL
XFILL_0__3580_ gnd vdd FILL
XFILL_2__3598_ gnd vdd FILL
XFILL_2__3178_ gnd vdd FILL
X_2638_ _2054_ _2093_ _2096_ vdd gnd NAND2X1
XFILL_4__4885_ gnd vdd FILL
XFILL_4__4465_ gnd vdd FILL
XFILL_4__4045_ gnd vdd FILL
XFILL_0__4785_ gnd vdd FILL
XFILL_3__2882_ gnd vdd FILL
XFILL_3__2462_ gnd vdd FILL
XFILL_0__4365_ gnd vdd FILL
XFILL_1__3741_ gnd vdd FILL
XFILL_1__3321_ gnd vdd FILL
XFILL_3__3667_ gnd vdd FILL
XFILL_3__3247_ gnd vdd FILL
X_2391_ _2346_[1] clk_bF$buf3 DO_woz[1] vdd gnd DFFPOSX1
XFILL_1__4946_ gnd vdd FILL
XFILL_1__4526_ gnd vdd FILL
XFILL_1__4106_ gnd vdd FILL
XFILL_4__2951_ gnd vdd FILL
XFILL_4__2531_ gnd vdd FILL
X_3596_ _1250_ _401_ _411_ _400_ vdd gnd OAI21X1
X_3176_ RDY_bF$buf1 _285_ _80_ _1359_ vdd gnd OAI21X1
XFILL_0__2851_ gnd vdd FILL
XFILL_2__2449_ gnd vdd FILL
XFILL_0__2431_ gnd vdd FILL
XFILL_2__3810_ gnd vdd FILL
XFILL_4__3736_ gnd vdd FILL
XFILL_4__3316_ gnd vdd FILL
XFILL_0__3636_ gnd vdd FILL
XFILL_0__3216_ gnd vdd FILL
XFILL_3__2938_ gnd vdd FILL
XFILL_3__2518_ gnd vdd FILL
X_2867_ _1514_ vdd _1517_ clk_bF$buf3 DO_dsp[7] vdd 
+ gnd
+ DFFSR
X_2447_ _2354__4_bF$buf4 _24_ _27_ _28_ vdd gnd OAI21X1
XFILL_4__4694_ gnd vdd FILL
XFILL_4__4274_ gnd vdd FILL
XFILL_3__2691_ gnd vdd FILL
XFILL_0__4594_ gnd vdd FILL
XFILL_0__4174_ gnd vdd FILL
XFILL_0__2907_ gnd vdd FILL
XFILL_1__3970_ gnd vdd FILL
XFILL_1__3550_ gnd vdd FILL
XFILL_3__3896_ gnd vdd FILL
XFILL_3__3476_ gnd vdd FILL
XFILL_1__4755_ gnd vdd FILL
XFILL_1__4335_ gnd vdd FILL
XFILL_4__2760_ gnd vdd FILL
XFILL_2__2678_ gnd vdd FILL
XFILL_0__2660_ gnd vdd FILL
XFILL_4__3965_ gnd vdd FILL
XFILL_4__3545_ gnd vdd FILL
XFILL_0__3865_ gnd vdd FILL
XFILL_0__3445_ gnd vdd FILL
XFILL_0__3025_ gnd vdd FILL
XFILL_2__4824_ gnd vdd FILL
XFILL_2__4404_ gnd vdd FILL
XFILL_1__2821_ gnd vdd FILL
XFILL_1__2401_ gnd vdd FILL
XFILL_3__2747_ gnd vdd FILL
XFILL_1__3606_ gnd vdd FILL
X_2676_ _1637_ _1909_ _1639_ _2058_ vdd gnd AOI21X1
XFILL_4__4083_ gnd vdd FILL
XFILL_4__2816_ gnd vdd FILL
XFILL_0__2716_ gnd vdd FILL
X_4822_ _1865_ _1866_ _1867_ vdd gnd NAND2X1
X_4402_ \u_cpu.PC\[13] _1141_ vdd gnd INVX1
XFILL_3__3285_ gnd vdd FILL
XFILL_1__4984_ gnd vdd FILL
XFILL_1__4564_ gnd vdd FILL
XFILL_1__4144_ gnd vdd FILL
XFILL_2__2487_ gnd vdd FILL
XFILL_4__3774_ gnd vdd FILL
XFILL_4__3354_ gnd vdd FILL
XFILL_0__3674_ gnd vdd FILL
XFILL_0__3254_ gnd vdd FILL
XFILL_2__4633_ gnd vdd FILL
XFILL_2__4213_ gnd vdd FILL
XFILL_4__4979_ gnd vdd FILL
XFILL_4__4559_ gnd vdd FILL
XFILL_4__4139_ gnd vdd FILL
XFILL_1__2630_ gnd vdd FILL
XFILL_3__2976_ gnd vdd FILL
XFILL_3__2556_ gnd vdd FILL
XFILL_0__4459_ gnd vdd FILL
XFILL_0__4039_ gnd vdd FILL
XFILL_1__3835_ gnd vdd FILL
XFILL_1__3415_ gnd vdd FILL
X_2485_ _1661_ _1660_ _1658_ _2341_ vdd gnd OAI21X1
XFILL_3__4702_ gnd vdd FILL
XFILL_4__2625_ gnd vdd FILL
XFILL_0__2945_ gnd vdd FILL
XFILL_0__2525_ gnd vdd FILL
X_4631_ \u_cpu.alu_shift_right\ _1684_ vdd gnd INVX4
X_4211_ _968_ _966_ _965_ vdd gnd NAND2X1
XFILL_2__3904_ gnd vdd FILL
XFILL_1__4793_ gnd vdd FILL
XFILL_1__4373_ gnd vdd FILL
XFILL_3__4299_ gnd vdd FILL
XFILL_4__3583_ gnd vdd FILL
XFILL_0__3483_ gnd vdd FILL
XFILL_2__4862_ gnd vdd FILL
XFILL_2__4442_ gnd vdd FILL
XFILL_2__4022_ gnd vdd FILL
XFILL_4__4788_ gnd vdd FILL
XFILL_4__4368_ gnd vdd FILL
X_3902_ _690_ _1129__bF$buf0 _702_ _1026_ _1441_ vdd 
+ gnd
+ OAI22X1
XFILL_0__4688_ gnd vdd FILL
XFILL_3__2785_ gnd vdd FILL
XFILL_3__2365_ gnd vdd FILL
XFILL_0__4268_ gnd vdd FILL
XFILL_1__3644_ gnd vdd FILL
XFILL_1__3224_ gnd vdd FILL
XFILL_3__4931_ gnd vdd FILL
XFILL_3__4511_ gnd vdd FILL
XFILL_1__4849_ gnd vdd FILL
XFILL_1__4429_ gnd vdd FILL
XFILL_1__4009_ gnd vdd FILL
XFILL_4__2854_ gnd vdd FILL
XFILL_4__2434_ gnd vdd FILL
X_3499_ _1118_ _1024_ _1120_ _312_ vdd gnd OAI21X1
X_3079_ _1417__bF$buf2 vdd _1376_ clk_bF$buf9 \u_cpu.D\ vdd 
+ gnd
+ DFFSR
XFILL_0__2754_ gnd vdd FILL
X_4860_ _1899_ _1900_ vdd gnd INVX1
X_4440_ _1175_ _1182_ _1174_ vdd gnd NOR2X1
X_4020_ _791_ _790_ vdd gnd INVX2
XFILL_2__3713_ gnd vdd FILL
XFILL_4__3639_ gnd vdd FILL
XFILL_4__3219_ gnd vdd FILL
XFILL_0__3959_ gnd vdd FILL
XFILL_0__3539_ gnd vdd FILL
XFILL_1__4182_ gnd vdd FILL
XFILL_0__4900_ gnd vdd FILL
XFILL_2__4918_ gnd vdd FILL
XFILL_1__2915_ gnd vdd FILL
XFILL_4__3392_ gnd vdd FILL
XFILL_0__3292_ gnd vdd FILL
XFILL_2__4671_ gnd vdd FILL
XFILL_2__4251_ gnd vdd FILL
XFILL_4__4597_ gnd vdd FILL
XFILL_4__4177_ gnd vdd FILL
X_3711_ _1325__bF$buf3 _881_ _1196__bF$buf4 _510_ vdd gnd OAI21X1
XFILL_3__2594_ gnd vdd FILL
XFILL_0__4497_ gnd vdd FILL
XFILL_0__4077_ gnd vdd FILL
X_4916_ _2164_ _2192_ vdd gnd INVX1
XFILL_1__3873_ gnd vdd FILL
XFILL_1__3453_ gnd vdd FILL
XFILL_3__3799_ gnd vdd FILL
XFILL_3__3379_ gnd vdd FILL
XFILL_3__4740_ gnd vdd FILL
XFILL_3__4320_ gnd vdd FILL
XFILL_1__4658_ gnd vdd FILL
XFILL_1__4238_ gnd vdd FILL
XFILL_4__2663_ gnd vdd FILL
XFILL_0__2983_ gnd vdd FILL
XFILL_0__2563_ gnd vdd FILL
XFILL_2__3942_ gnd vdd FILL
XFILL_2__3522_ gnd vdd FILL
XFILL_4__3868_ gnd vdd FILL
XFILL_4__3448_ gnd vdd FILL
XFILL_4__3028_ gnd vdd FILL
XFILL_0__3768_ gnd vdd FILL
XFILL_0__3348_ gnd vdd FILL
XFILL_2__4727_ gnd vdd FILL
XFILL_2__4307_ gnd vdd FILL
XFILL_2_BUFX2_insert20 gnd vdd FILL
XFILL_2_BUFX2_insert21 gnd vdd FILL
XFILL_2_BUFX2_insert22 gnd vdd FILL
XFILL_2_BUFX2_insert23 gnd vdd FILL
XFILL_2_BUFX2_insert24 gnd vdd FILL
XFILL_2_BUFX2_insert25 gnd vdd FILL
XFILL_1__2724_ gnd vdd FILL
XFILL_1__3929_ gnd vdd FILL
XFILL_1__3509_ gnd vdd FILL
XFILL_2__4480_ gnd vdd FILL
XFILL_2__4060_ gnd vdd FILL
X_2999_ _1589_ _1592_ _1602_ _1603_ vdd gnd NAND3X1
X_2579_ _2153_ _1959_ _1973_ _2154_ vdd gnd AOI21X1
X_3940_ \u_cpu.CO\ _970_ \u_cpu.AN\ _719_ vdd gnd OAI21X1
X_3520_ _651_ _334_ _331_ _330_ vdd gnd AOI21X1
X_3100_ _1417__bF$buf0 vdd _1386_ clk_bF$buf2 \u_cpu.ABL\[6] vdd 
+ gnd
+ DFFSR
XFILL_4__2719_ gnd vdd FILL
XFILL_0__2619_ gnd vdd FILL
X_4725_ \u_cpu.alu_shift_right\ _1777_ _1778_ vdd gnd NOR2X1
X_4305_ _1051_ _1057_ _1050_ vdd gnd NOR2X1
XFILL_1__3682_ gnd vdd FILL
XFILL_1__3262_ gnd vdd FILL
XFILL_3__3188_ gnd vdd FILL
XFILL_1__4887_ gnd vdd FILL
XFILL_1__4467_ gnd vdd FILL
XFILL_1__4047_ gnd vdd FILL
XFILL_4__2892_ gnd vdd FILL
XFILL_4__2472_ gnd vdd FILL
XFILL_0__2792_ gnd vdd FILL
XFILL_0__2372_ gnd vdd FILL
XFILL_2__3751_ gnd vdd FILL
XFILL_2__3331_ gnd vdd FILL
XFILL_4__3677_ gnd vdd FILL
XFILL_4__3257_ gnd vdd FILL
XFILL_0__3997_ gnd vdd FILL
XFILL_0__3577_ gnd vdd FILL
XFILL_2__4956_ gnd vdd FILL
XFILL_2__4536_ gnd vdd FILL
XFILL_2__4116_ gnd vdd FILL
XFILL_1__2533_ gnd vdd FILL
XFILL_3__2879_ gnd vdd FILL
XFILL_3__2459_ gnd vdd FILL
XFILL_3__3820_ gnd vdd FILL
XFILL_3__3400_ gnd vdd FILL
XFILL_1__3738_ gnd vdd FILL
XFILL_1__3318_ gnd vdd FILL
X_2388_ DO_dsp[1] dsp_data[1] vdd gnd BUFX2
XFILL_3__4605_ gnd vdd FILL
XFILL_2__2602_ gnd vdd FILL
XFILL_4__2948_ gnd vdd FILL
XFILL_4__2528_ gnd vdd FILL
XFILL_0__2848_ gnd vdd FILL
XFILL_0__2428_ gnd vdd FILL
X_4954_ _2223_ _2225_ _2182_ _2226_ vdd gnd NAND3X1
X_4534_ \u_cpu.ABL\[2] _1262_ vdd gnd INVX1
X_4114_ _1325__bF$buf1 _881_ _1063_ _880_ vdd gnd OAI21X1
XFILL_1__3491_ gnd vdd FILL
XFILL_2__3807_ gnd vdd FILL
XFILL_1__4696_ gnd vdd FILL
XFILL_1__4276_ gnd vdd FILL
XFILL_2__3980_ gnd vdd FILL
XFILL_2__3560_ gnd vdd FILL
XFILL_4__3486_ gnd vdd FILL
X_2600_ _2000_ _1641_ _2133_ vdd gnd AND2X2
XFILL_0__3386_ gnd vdd FILL
XFILL_2__4765_ gnd vdd FILL
XFILL_2__4345_ gnd vdd FILL
XFILL273750x150 gnd vdd FILL
X_3805_ \u_cpu.AXYS[3]\[3] _922_ _602_ vdd gnd NAND2X1
XFILL_1__2762_ gnd vdd FILL
XFILL_3__2688_ gnd vdd FILL
XFILL272850x25350 gnd vdd FILL
XFILL_1__3967_ gnd vdd FILL
XFILL_1__3547_ gnd vdd FILL
XFILL_3__4834_ gnd vdd FILL
XFILL_3__4414_ gnd vdd FILL
XFILL_2__2831_ gnd vdd FILL
XFILL_2__2411_ gnd vdd FILL
XFILL_4__2757_ gnd vdd FILL
XFILL_0__2657_ gnd vdd FILL
X_4763_ \u_cpu.BI\[6] _1816_ vdd gnd INVX1
X_4343_ _1090_ _1088_ _1097_ _1482_ vdd gnd OAI21X1
XFILL_2__3616_ gnd vdd FILL
XFILL_4__4903_ gnd vdd FILL
XFILL_1__4085_ gnd vdd FILL
XFILL_0__4803_ gnd vdd FILL
XFILL_3__2900_ gnd vdd FILL
XFILL_1__2818_ gnd vdd FILL
XFILL_4__3295_ gnd vdd FILL
XFILL_0__3195_ gnd vdd FILL
XFILL_2__4574_ gnd vdd FILL
XFILL_2__4154_ gnd vdd FILL
X_3614_ RDY_bF$buf5 _828_ _420_ _418_ vdd gnd OAI21X1
XFILL_1__2991_ gnd vdd FILL
XFILL_1__2571_ gnd vdd FILL
XFILL_3__2497_ gnd vdd FILL
X_4819_ \u_cpu.AN\ \u_cpu.u_ALU8.AI7\ _1864_ vdd gnd NAND2X1
XFILL_1__3776_ gnd vdd FILL
XFILL_1__3356_ gnd vdd FILL
XFILL_3__4643_ gnd vdd FILL
XFILL_3__4223_ gnd vdd FILL
XFILL_2__2640_ gnd vdd FILL
XFILL_4__2986_ gnd vdd FILL
XFILL_4__2566_ gnd vdd FILL
XFILL_0__2886_ gnd vdd FILL
XFILL_0__2466_ gnd vdd FILL
X_4992_ _2346_[2] clk_bF$buf3 DO_woz[2] vdd gnd DFFPOSX1
X_4572_ _1333_ _1307_ _1301_ _1300_ vdd gnd NAND3X1
X_4152_ _943_ _921_ _917_ _1462_ vdd gnd OAI21X1
XFILL_2__3845_ gnd vdd FILL
XFILL_2__3425_ gnd vdd FILL
XFILL_2__3005_ gnd vdd FILL
XFILL_4__4712_ gnd vdd FILL
XFILL_0__4612_ gnd vdd FILL
XFILL_1__2627_ gnd vdd FILL
XFILL_3__3914_ gnd vdd FILL
XFILL_2__4383_ gnd vdd FILL
XFILL273450x86550 gnd vdd FILL
X_3843_ _1305__bF$buf0 _904_ _637_ _636_ vdd gnd OAI21X1
X_3423_ _629_ _326_ _251_ _2353_[1] vdd gnd OAI21X1
X_3003_ _Addr_Bus[0] _Addr_Bus[15] _1599_ vdd gnd AND2X2
XFILL_1__2380_ gnd vdd FILL
X_4628_ RDY_bF$buf3 _1681_ vdd gnd INVX4
X_4208_ \u_cpu.AXYS[0]\[1] _977_ _962_ vdd gnd NAND2X1
XFILL_1__3585_ gnd vdd FILL
XFILL_1__3165_ gnd vdd FILL
XFILL_3__4452_ gnd vdd FILL
XFILL_3__4032_ gnd vdd FILL
XFILL_4__2795_ gnd vdd FILL
XFILL_4__2375_ gnd vdd FILL
XFILL_0__2695_ gnd vdd FILL
X_4381_ _1125_ \u_cpu.IRHOLD\[3] _1340_ _1122_ vdd gnd OAI21X1
XFILL_2__3654_ gnd vdd FILL
XFILL_2__3234_ gnd vdd FILL
XFILL_4__4941_ gnd vdd FILL
XFILL_4__4521_ gnd vdd FILL
XFILL_4__4101_ gnd vdd FILL
XFILL_0__4841_ gnd vdd FILL
XFILL_2__4859_ gnd vdd FILL
XFILL_0__4421_ gnd vdd FILL
XFILL_2__4439_ gnd vdd FILL
XFILL_0__4001_ gnd vdd FILL
XFILL_2__4019_ gnd vdd FILL
XFILL_1__2856_ gnd vdd FILL
XFILL_1__2436_ gnd vdd FILL
XFILL_3__3723_ gnd vdd FILL
XFILL_3__3303_ gnd vdd FILL
XFILL_2__4192_ gnd vdd FILL
XFILL_3__4928_ gnd vdd FILL
XFILL_3__4508_ gnd vdd FILL
X_3652_ _1196__bF$buf4 _457_ _456_ _455_ vdd gnd OAI21X1
X_3232_ \u_cpu.plp\ \u_cpu.ADD\[3] _118_ vdd gnd NAND2X1
XFILL_3_BUFX2_insert90 gnd vdd FILL
XFILL_3_BUFX2_insert91 gnd vdd FILL
XFILL_3_BUFX2_insert92 gnd vdd FILL
XFILL_3_BUFX2_insert93 gnd vdd FILL
XFILL_2__2925_ gnd vdd FILL
XFILL_2__2505_ gnd vdd FILL
XFILL_3_BUFX2_insert94 gnd vdd FILL
XFILL_3_BUFX2_insert95 gnd vdd FILL
XFILL_3_BUFX2_insert96 gnd vdd FILL
XFILL_3_BUFX2_insert97 gnd vdd FILL
XFILL_3_BUFX2_insert98 gnd vdd FILL
XFILL_3_BUFX2_insert99 gnd vdd FILL
X_4857_ _1681__bF$buf3 _1837_ _1897_ _1678_ vdd gnd OAI21X1
X_4437_ _1187_ _1172_ _1199_ _1171_ vdd gnd NAND3X1
X_4017_ \u_cpu.AXYS[1]\[7] _787_ vdd gnd INVX1
XFILL_1__3394_ gnd vdd FILL
XFILL_3__4681_ gnd vdd FILL
XFILL_3__4261_ gnd vdd FILL
XFILL_1__4599_ gnd vdd FILL
XFILL_1__4179_ gnd vdd FILL
X_4190_ _949_ _948_ _947_ vdd gnd NAND2X1
XFILL_2__3883_ gnd vdd FILL
XFILL_2__3463_ gnd vdd FILL
XFILL_4__3389_ gnd vdd FILL
XFILL_4_BUFX2_insert160 gnd vdd FILL
XFILL_4_BUFX2_insert161 gnd vdd FILL
XFILL_4_BUFX2_insert162 gnd vdd FILL
X_2923_ _1537_ _1540_ DO_dsp[4] _1545_ vdd gnd OAI21X1
X_2503_ _1651_ _1652_ _2322_ _2323_ vdd gnd OAI21X1
XFILL_4_BUFX2_insert163 gnd vdd FILL
XFILL_4_BUFX2_insert164 gnd vdd FILL
XFILL_4__4750_ gnd vdd FILL
XFILL_4_BUFX2_insert165 gnd vdd FILL
XFILL_4_BUFX2_insert166 gnd vdd FILL
XFILL_4__4330_ gnd vdd FILL
XFILL_4_BUFX2_insert167 gnd vdd FILL
XFILL_0__3289_ gnd vdd FILL
XFILL_0__4650_ gnd vdd FILL
XFILL_2__4668_ gnd vdd FILL
XFILL_0__4230_ gnd vdd FILL
XFILL_2__4248_ gnd vdd FILL
X_3708_ _1196__bF$buf3 _869_ _755_ _1129__bF$buf1 _507_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2665_ gnd vdd FILL
XFILL_3__3952_ gnd vdd FILL
XFILL_3__3532_ gnd vdd FILL
XFILL_1__4811_ gnd vdd FILL
XFILL_3__4737_ gnd vdd FILL
XFILL_3__4317_ gnd vdd FILL
X_3881_ \u_cpu.shift\ _671_ vdd gnd INVX1
X_3461_ \u_cpu.PC\[0] _826_ _277_ vdd gnd NAND2X1
X_3041_ _1417__bF$buf4 vdd _1360_ clk_bF$buf4 \u_cpu.PC\[2] vdd 
+ gnd
+ DFFSR
XFILL_2__2734_ gnd vdd FILL
XFILL_4__3601_ gnd vdd FILL
X_4666_ _1689_ _1718_ \u_cpu.BI\[2] _1719_ vdd gnd OAI21X1
X_4246_ _999_ _1000_ _998_ vdd gnd NOR2X1
XFILL_0__3921_ gnd vdd FILL
XFILL_2__3939_ gnd vdd FILL
XFILL_0__3501_ gnd vdd FILL
XFILL_2__3519_ gnd vdd FILL
XFILL_3__4490_ gnd vdd FILL
XFILL_3__4070_ gnd vdd FILL
XFILL_0__4706_ gnd vdd FILL
XFILL_3__2803_ gnd vdd FILL
XFILL_2__3692_ gnd vdd FILL
XFILL_2__3272_ gnd vdd FILL
XFILL_4__3198_ gnd vdd FILL
X_2732_ _2354__0_bF$buf4 _1636__bF$buf4 _1944_ _2003_ vdd gnd OAI21X1
XFILL_2__4897_ gnd vdd FILL
XFILL_2__4477_ gnd vdd FILL
XFILL_2__4057_ gnd vdd FILL
X_3937_ _717_ _720_ _716_ vdd gnd NOR2X1
X_3517_ _922_ \u_cpu.AXYS[3]\[1] \u_cpu.AXYS[0]\[1] _978_ _328_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2894_ gnd vdd FILL
XFILL_1__2474_ gnd vdd FILL
XFILL_3__3761_ gnd vdd FILL
XFILL_3__3341_ gnd vdd FILL
XFILL_1__3679_ gnd vdd FILL
XFILL_1__3259_ gnd vdd FILL
XFILL_1__4620_ gnd vdd FILL
XFILL_1__4200_ gnd vdd FILL
XFILL_3__4966_ gnd vdd FILL
XFILL_3__4546_ gnd vdd FILL
XFILL_3__4126_ gnd vdd FILL
X_3690_ \u_cpu.CO\ \u_cpu.store\ _493_ vdd gnd NOR2X1
X_3270_ _800__bF$buf2 _2354__1_bF$buf3 _141_ vdd gnd NAND2X1
XFILL_2__2543_ gnd vdd FILL
XFILL_4__2889_ gnd vdd FILL
XFILL_4__2469_ gnd vdd FILL
XFILL_4__3830_ gnd vdd FILL
XFILL_4__3410_ gnd vdd FILL
XFILL_0__2789_ gnd vdd FILL
XFILL_0__2369_ gnd vdd FILL
X_4895_ _Addr_Bus[0] _2352_ _2171_ vdd gnd NOR2X1
X_4475_ \u_cpu.ADD\[0] _1205_ vdd gnd INVX1
X_4055_ _829_ _844_ _823_ _822_ vdd gnd AOI21X1
XFILL_0__3730_ gnd vdd FILL
XFILL_2__3748_ gnd vdd FILL
XFILL_2__3328_ gnd vdd FILL
XFILL_0__3310_ gnd vdd FILL
XFILL_4__4615_ gnd vdd FILL
XFILL_0__4935_ gnd vdd FILL
XFILL_3__2612_ gnd vdd FILL
XFILL_0__4515_ gnd vdd FILL
XFILL_3__3817_ gnd vdd FILL
X_2961_ _1491_ vdd _1435_ clk_bF$buf12 DO_kbd[0] vdd 
+ gnd
+ DFFSR
X_2541_ _1634__bF$buf4 _2098_ _2286_ vdd gnd NOR2X1
XFILL_2__4286_ gnd vdd FILL
X_3746_ _549_ _546_ _545_ vdd gnd NAND2X1
X_3326_ _924_ _760_ _175_ _1414_ vdd gnd OAI21X1
XFILL_3__3990_ gnd vdd FILL
XFILL_3__3570_ gnd vdd FILL
XFILL_1__3488_ gnd vdd FILL
XFILL_3__4775_ gnd vdd FILL
XFILL_3__4355_ gnd vdd FILL
XFILL_2__2772_ gnd vdd FILL
XFILL_4__2698_ gnd vdd FILL
XFILL_0__2598_ gnd vdd FILL
X_4284_ _1196__bF$buf0 _1345__bF$buf2 \u_cpu.bit_ins\ _1030_ vdd gnd OAI21X1
XFILL_2__3977_ gnd vdd FILL
XFILL_2__3557_ gnd vdd FILL
XFILL_4__4844_ gnd vdd FILL
XFILL_4__4424_ gnd vdd FILL
XFILL_4__4004_ gnd vdd FILL
XFILL_0__4744_ gnd vdd FILL
XFILL_3__2841_ gnd vdd FILL
XFILL_0__4324_ gnd vdd FILL
XFILL_3__2421_ gnd vdd FILL
XFILL_1__2759_ gnd vdd FILL
XFILL_1__3700_ gnd vdd FILL
XFILL_3__3626_ gnd vdd FILL
XFILL_3__3206_ gnd vdd FILL
X_2770_ _1962_ _1965_ _1956_ _1960_ _1966_ vdd 
+ gnd
+ OAI22X1
XFILL_2__4095_ gnd vdd FILL
XFILL_1__4905_ gnd vdd FILL
XFILL_4__2910_ gnd vdd FILL
X_3975_ \u_cpu.N\ _750_ vdd gnd INVX1
X_3555_ _361_ _365_ _360_ vdd gnd NOR2X1
X_3135_ _1417__bF$buf2 vdd _1452_ clk_bF$buf9 \u_cpu.cond_code\[2] vdd 
+ gnd
+ DFFSR
XFILL_2__2828_ gnd vdd FILL
XFILL_0__2810_ gnd vdd FILL
XFILL_2__2408_ gnd vdd FILL
XFILL_1__3297_ gnd vdd FILL
XFILL_3__4584_ gnd vdd FILL
XFILL_3__4164_ gnd vdd FILL
XFILL_2__2581_ gnd vdd FILL
X_4093_ \u_cpu.AN\ _908_ _860_ _859_ vdd gnd AOI21X1
XFILL_2__3786_ gnd vdd FILL
XFILL_2__3366_ gnd vdd FILL
X_2826_ _1643__bF$buf4 _1909_ _1637_ _1910_ vdd gnd NAND3X1
X_2406_ _67_ _2109_ _1956_ _68_ vdd gnd AOI21X1
XFILL_4__4653_ gnd vdd FILL
XFILL_4__4233_ gnd vdd FILL
XFILL_0__4973_ gnd vdd FILL
XFILL_3__2650_ gnd vdd FILL
XFILL_0__4553_ gnd vdd FILL
XFILL_0__4133_ gnd vdd FILL
XFILL_1__2988_ gnd vdd FILL
XFILL_1__2568_ gnd vdd FILL
XFILL_3__3855_ gnd vdd FILL
XFILL_3__3435_ gnd vdd FILL
XFILL_3__3015_ gnd vdd FILL
XFILL_1__4714_ gnd vdd FILL
X_3784_ _584_ _583_ vdd gnd INVX1
X_3364_ _203_ _201_ _200_ vdd gnd NOR2X1
XFILL_2__2637_ gnd vdd FILL
XFILL_4__3924_ gnd vdd FILL
XFILL_4__3504_ gnd vdd FILL
X_4989_ _2354_[11] clk_bF$buf12 _Addr_Bus[11] vdd gnd DFFPOSX1
X_4569_ _1298_ _1297_ vdd gnd INVX2
X_4149_ _1330_ _1306_ _915_ vdd gnd NAND2X1
XFILL_0__3824_ gnd vdd FILL
XFILL_0__3404_ gnd vdd FILL
XFILL_3__4393_ gnd vdd FILL
XFILL_4__4709_ gnd vdd FILL
XFILL_3__2706_ gnd vdd FILL
XFILL_0__4609_ gnd vdd FILL
XFILL_2__3595_ gnd vdd FILL
XFILL_2__3175_ gnd vdd FILL
X_2635_ _2354__1_bF$buf4 _2098_ _2099_ vdd gnd NAND2X1
XFILL_4__4462_ gnd vdd FILL
XFILL_4__4042_ gnd vdd FILL
XFILL_0__4782_ gnd vdd FILL
XFILL_0__4362_ gnd vdd FILL
XFILL_1__2797_ gnd vdd FILL
XFILL_1__2377_ gnd vdd FILL
XFILL_3__3664_ gnd vdd FILL
XFILL_3__3244_ gnd vdd FILL
XFILL_1__4943_ gnd vdd FILL
XFILL_1__4523_ gnd vdd FILL
XFILL_1__4103_ gnd vdd FILL
XFILL_3__4869_ gnd vdd FILL
XFILL_3__4449_ gnd vdd FILL
XFILL_3__4029_ gnd vdd FILL
X_3593_ _400_ _399_ _398_ _397_ vdd gnd AOI21X1
X_3173_ _1264_ _1226_ _1271_ _77_ vdd gnd OAI21X1
XFILL274050x79350 gnd vdd FILL
XFILL_2__2446_ gnd vdd FILL
XFILL_4__3733_ gnd vdd FILL
XFILL_4__3313_ gnd vdd FILL
X_4798_ \u_cpu.ADD\[2] _1681__bF$buf0 _1848_ vdd gnd NAND2X1
X_4378_ _1125_ \u_cpu.IRHOLD\[2] _1340_ _1119_ vdd gnd OAI21X1
XFILL_0__3633_ gnd vdd FILL
XFILL_0__3213_ gnd vdd FILL
XFILL_4__4938_ gnd vdd FILL
XFILL_4__4518_ gnd vdd FILL
XFILL_0__4838_ gnd vdd FILL
XFILL_3__2935_ gnd vdd FILL
XFILL_3__2515_ gnd vdd FILL
XFILL_0__4418_ gnd vdd FILL
X_2864_ _1514_ vdd _1518_ clk_bF$buf1 DO_dsp[0] vdd 
+ gnd
+ DFFSR
X_2444_ _1920__bF$buf3 _2258_ _2308_ _31_ vdd gnd NAND3X1
XFILL_4__4691_ gnd vdd FILL
XFILL_4__4271_ gnd vdd FILL
XFILL_0__4591_ gnd vdd FILL
XFILL_2__4189_ gnd vdd FILL
XFILL_0__4171_ gnd vdd FILL
X_3649_ _465_ _453_ _468_ _452_ vdd gnd NAND3X1
X_3229_ _1165_ _116_ _898_ _1376_ vdd gnd MUX2X1
XFILL_0__2904_ gnd vdd FILL
XFILL_3__3893_ gnd vdd FILL
XFILL_3__3473_ gnd vdd FILL
XFILL_1__4752_ gnd vdd FILL
XFILL_1__4332_ gnd vdd FILL
XFILL_3__4678_ gnd vdd FILL
XFILL_3__4258_ gnd vdd FILL
XFILL_2__2675_ gnd vdd FILL
XFILL_4__3962_ gnd vdd FILL
XFILL_4__3542_ gnd vdd FILL
X_4187_ _945_ _946_ _1070__bF$buf3 _944_ vdd gnd OAI21X1
XFILL_0__3862_ gnd vdd FILL
XFILL_0__3442_ gnd vdd FILL
XFILL_0__3022_ gnd vdd FILL
XFILL_2__4821_ gnd vdd FILL
XFILL_2__4401_ gnd vdd FILL
XFILL_4__4747_ gnd vdd FILL
XFILL_4__4327_ gnd vdd FILL
XFILL_0__4647_ gnd vdd FILL
XFILL_3__2744_ gnd vdd FILL
XFILL_0__4227_ gnd vdd FILL
XFILL_1__3603_ gnd vdd FILL
XFILL_3__3949_ gnd vdd FILL
XFILL_3__3529_ gnd vdd FILL
X_2673_ _1635__bF$buf2 _2060_ _2010_ _2061_ vdd gnd OAI21X1
XFILL_4__4080_ gnd vdd FILL
XFILL_1__4808_ gnd vdd FILL
XFILL_4__2813_ gnd vdd FILL
X_3878_ _669_ _670_ _668_ vdd gnd NOR2X1
X_3458_ _615_ _1250_ _1138_ _278_ \u_cpu.BI\[5] vdd 
+ gnd
+ OAI22X1
X_3038_ _1417__bF$buf1 vdd _1484_ clk_bF$buf5 \u_cpu.PC\[13] vdd 
+ gnd
+ DFFSR
XFILL_0__2713_ gnd vdd FILL
XFILL_3__3282_ gnd vdd FILL
XFILL_0__3918_ gnd vdd FILL
XFILL_1__4981_ gnd vdd FILL
XFILL_1__4561_ gnd vdd FILL
XFILL_1__4141_ gnd vdd FILL
XFILL_3__4487_ gnd vdd FILL
XFILL_3__4067_ gnd vdd FILL
XFILL_2__2484_ gnd vdd FILL
XFILL_4__3771_ gnd vdd FILL
XFILL_4__3351_ gnd vdd FILL
XFILL_2__3689_ gnd vdd FILL
XFILL_0__3671_ gnd vdd FILL
XFILL_0__3251_ gnd vdd FILL
XFILL_2__3269_ gnd vdd FILL
XFILL_2__4630_ gnd vdd FILL
XFILL_2__4210_ gnd vdd FILL
X_2729_ _1635__bF$buf0 _1638__bF$buf1 _2354__2_bF$buf1 _2006_ vdd gnd OAI21X1
XFILL_4__4976_ gnd vdd FILL
XFILL_4__4556_ gnd vdd FILL
XFILL_4__4136_ gnd vdd FILL
XFILL_3__2973_ gnd vdd FILL
XFILL_3__2553_ gnd vdd FILL
XFILL_0__4456_ gnd vdd FILL
XFILL_0__4036_ gnd vdd FILL
XFILL_1__3832_ gnd vdd FILL
XFILL_1__3412_ gnd vdd FILL
XFILL_3__3758_ gnd vdd FILL
XFILL_3__3338_ gnd vdd FILL
X_2482_ _1967_ _2354__2_bF$buf0 _2354__0_bF$buf4 _2344_ vdd gnd AOI21X1
XFILL_1__4617_ gnd vdd FILL
XFILL_4__2622_ gnd vdd FILL
X_3687_ _1328__bF$buf1 _1331_ _1196__bF$buf5 _490_ vdd gnd OAI21X1
X_3267_ _1262_ _800__bF$buf0 _140_ _1390_ vdd gnd OAI21X1
XFILL_0__2942_ gnd vdd FILL
XFILL_0__2522_ gnd vdd FILL
XFILL_2__3901_ gnd vdd FILL
XFILL_4__3827_ gnd vdd FILL
XFILL_4__3407_ gnd vdd FILL
XFILL_0__3727_ gnd vdd FILL
XFILL_0__3307_ gnd vdd FILL
XFILL_1__4790_ gnd vdd FILL
XFILL_1__4370_ gnd vdd FILL
XFILL_3__4296_ gnd vdd FILL
XFILL_3__2609_ gnd vdd FILL
XFILL_4__3580_ gnd vdd FILL
XFILL_2__3498_ gnd vdd FILL
XFILL_0__3480_ gnd vdd FILL
X_2958_ _1491_ vdd _1493_ clk_bF$buf12 _2351_ vdd 
+ gnd
+ DFFSR
X_2538_ _2354__2_bF$buf3 _1915_ _2289_ vdd gnd NAND2X1
XFILL_4__4785_ gnd vdd FILL
XFILL_4__4365_ gnd vdd FILL
XFILL_0__4685_ gnd vdd FILL
XFILL_3__2782_ gnd vdd FILL
XFILL_3__2362_ gnd vdd FILL
XFILL_0__4265_ gnd vdd FILL
XFILL_1__3641_ gnd vdd FILL
XFILL_1__3221_ gnd vdd FILL
XFILL_3__3987_ gnd vdd FILL
XFILL_3__3567_ gnd vdd FILL
XFILL_1__4846_ gnd vdd FILL
XFILL_1__4426_ gnd vdd FILL
XFILL_1__4006_ gnd vdd FILL
XFILL_4__2851_ gnd vdd FILL
XFILL_4__2431_ gnd vdd FILL
X_3496_ _310_ _311_ _309_ vdd gnd NOR2X1
X_3076_ _1417__bF$buf5 vdd _1480_ clk_bF$buf11 \u_cpu.bit_ins\ vdd 
+ gnd
+ DFFSR
XFILL_2__2769_ gnd vdd FILL
XFILL_0__2751_ gnd vdd FILL
XFILL_2__3710_ gnd vdd FILL
XFILL_4__3636_ gnd vdd FILL
XFILL_4__3216_ gnd vdd FILL
XFILL_0__3956_ gnd vdd FILL
XFILL_0__3536_ gnd vdd FILL
XFILL_2__4915_ gnd vdd FILL
XFILL_1__2912_ gnd vdd FILL
XFILL_3__2838_ gnd vdd FILL
XFILL_3__2418_ gnd vdd FILL
X_2767_ _1967_ _2354__2_bF$buf1 _1968_ _1969_ vdd gnd AOI21X1
XFILL_4__4594_ gnd vdd FILL
XFILL_4__4174_ gnd vdd FILL
XFILL_3__2591_ gnd vdd FILL
XFILL_0__4494_ gnd vdd FILL
XFILL_0__4074_ gnd vdd FILL
XFILL_4__2907_ gnd vdd FILL
XFILL_0__2807_ gnd vdd FILL
X_4913_ _Addr_Bus[9] _Addr_Bus[8] _2189_ vdd gnd NAND2X1
XFILL_1__3870_ gnd vdd FILL
XFILL_1__3450_ gnd vdd FILL
XFILL_1__3030_ gnd vdd FILL
XFILL_3__3796_ gnd vdd FILL
XFILL_3__3376_ gnd vdd FILL
XFILL_1__4655_ gnd vdd FILL
XFILL_1__4235_ gnd vdd FILL
XFILL_4__2660_ gnd vdd FILL
XFILL_0__2980_ gnd vdd FILL
XFILL_2__2998_ gnd vdd FILL
XFILL_0__2560_ gnd vdd FILL
XFILL_2__2578_ gnd vdd FILL
XFILL_4__3865_ gnd vdd FILL
XFILL_4__3445_ gnd vdd FILL
XFILL_4__3025_ gnd vdd FILL
XFILL_0__3765_ gnd vdd FILL
XFILL_0__3345_ gnd vdd FILL
XFILL_2__4724_ gnd vdd FILL
XFILL_2__4304_ gnd vdd FILL
XFILL_1__2721_ gnd vdd FILL
XFILL_3__2647_ gnd vdd FILL
XFILL_1__3926_ gnd vdd FILL
XFILL_1__3506_ gnd vdd FILL
X_2996_ _Addr_Bus[2] _1604_ _1605_ vdd gnd NOR2X1
X_2576_ _2067_ _2156_ _2157_ vdd gnd NOR2X1
XFILL_4__2716_ gnd vdd FILL
XFILL_0__2616_ gnd vdd FILL
X_4722_ _1689_ _1715_ \u_cpu.BI\[3] _1775_ vdd gnd OAI21X1
X_4302_ _1048_ _1047_ vdd gnd INVX1
XFILL_3__3185_ gnd vdd FILL
XFILL_1__4884_ gnd vdd FILL
XFILL_1__4464_ gnd vdd FILL
XFILL_1__4044_ gnd vdd FILL
XFILL_2__2387_ gnd vdd FILL
XFILL_4__3674_ gnd vdd FILL
XFILL_4__3254_ gnd vdd FILL
XFILL_0__3994_ gnd vdd FILL
XFILL_0__3574_ gnd vdd FILL
XFILL_2__4953_ gnd vdd FILL
XFILL_2__4533_ gnd vdd FILL
XFILL_2__4113_ gnd vdd FILL
XFILL_4__4459_ gnd vdd FILL
XFILL_4__4039_ gnd vdd FILL
XFILL_1__2950_ gnd vdd FILL
XFILL_1__2530_ gnd vdd FILL
XFILL_0__4779_ gnd vdd FILL
XFILL_3__2876_ gnd vdd FILL
XFILL_0__4359_ gnd vdd FILL
XFILL_3__2456_ gnd vdd FILL
XFILL_1__3735_ gnd vdd FILL
XFILL_1__3315_ gnd vdd FILL
X_2385_ DO_dsp[4] dsp_data[4] vdd gnd BUFX2
XFILL_3__4602_ gnd vdd FILL
XFILL_4__2945_ gnd vdd FILL
XFILL_4__2525_ gnd vdd FILL
XFILL_0__2845_ gnd vdd FILL
XFILL_0__2425_ gnd vdd FILL
X_4951_ _Addr_Bus[1] _2222_ _2173_ _2223_ vdd gnd NAND3X1
X_4531_ \u_cpu.ADD\[2] _1300_ _1260_ _1259_ vdd gnd AOI21X1
X_4111_ _893_ _878_ _877_ vdd gnd NOR2X1
XFILL_2__3804_ gnd vdd FILL
XFILL_1__4693_ gnd vdd FILL
XFILL_1__4273_ gnd vdd FILL
XFILL_3__4199_ gnd vdd FILL
XFILL_4__3483_ gnd vdd FILL
XFILL273150x64950 gnd vdd FILL
XFILL_0__3383_ gnd vdd FILL
XFILL_2__4762_ gnd vdd FILL
XFILL_2__4342_ gnd vdd FILL
XFILL_4__4688_ gnd vdd FILL
X_3802_ \u_cpu.AXYS[2]\[3] _790_ _599_ vdd gnd NAND2X1
XFILL_3__2685_ gnd vdd FILL
XFILL_0__4588_ gnd vdd FILL
XFILL_0__4168_ gnd vdd FILL
XFILL_1__3964_ gnd vdd FILL
XFILL_1__3544_ gnd vdd FILL
XFILL_3__4831_ gnd vdd FILL
XFILL_3__4411_ gnd vdd FILL
XFILL_1__4749_ gnd vdd FILL
XFILL_1__4329_ gnd vdd FILL
XFILL_4__2754_ gnd vdd FILL
X_3399_ _1286_ _875_ \u_cpu.ABH\[4] _231_ vdd gnd OAI21X1
XFILL_0__2654_ gnd vdd FILL
X_4760_ _1695_ _1702_ _1703_ _1813_ vdd gnd OAI21X1
X_4340_ _1348_ _1335_ _1085_ vdd gnd NOR2X1
XFILL_2__3613_ gnd vdd FILL
XFILL_4__3959_ gnd vdd FILL
XFILL_4__3539_ gnd vdd FILL
XFILL_4__4900_ gnd vdd FILL
XFILL_0__3859_ gnd vdd FILL
XFILL_0__3439_ gnd vdd FILL
XFILL_0__3019_ gnd vdd FILL
XFILL_1__4082_ gnd vdd FILL
XFILL272850x46950 gnd vdd FILL
XFILL_2__4818_ gnd vdd FILL
XFILL_0__4800_ gnd vdd FILL
XFILL_1__2815_ gnd vdd FILL
XFILL_4__3292_ gnd vdd FILL
XFILL_0__3192_ gnd vdd FILL
XFILL_2__4571_ gnd vdd FILL
XFILL_2__4151_ gnd vdd FILL
XFILL_4__4497_ gnd vdd FILL
XFILL_4__4077_ gnd vdd FILL
X_3611_ _416_ _1129__bF$buf1 _417_ _415_ vdd gnd AOI21X1
XFILL_3__2494_ gnd vdd FILL
XFILL_0__4397_ gnd vdd FILL
XFILL271650x61350 gnd vdd FILL
X_4816_ \u_cpu.u_ALU8.BI7\ \u_cpu.CO\ _1861_ vdd gnd NOR2X1
XFILL_1__3773_ gnd vdd FILL
XFILL_1__3353_ gnd vdd FILL
XFILL_3__3699_ gnd vdd FILL
XFILL_3__3279_ gnd vdd FILL
XFILL_3__4640_ gnd vdd FILL
XFILL_3__4220_ gnd vdd FILL
XFILL_1__4978_ gnd vdd FILL
XFILL_1__4558_ gnd vdd FILL
XFILL_1__4138_ gnd vdd FILL
XFILL_4__2983_ gnd vdd FILL
XFILL_4__2563_ gnd vdd FILL
XFILL_0__2883_ gnd vdd FILL
XFILL_0__2463_ gnd vdd FILL
XFILL_2__3842_ gnd vdd FILL
XFILL_2__3422_ gnd vdd FILL
XFILL_2__3002_ gnd vdd FILL
XFILL_4__3768_ gnd vdd FILL
XFILL_4__3348_ gnd vdd FILL
XFILL_0__3668_ gnd vdd FILL
XFILL_0__3248_ gnd vdd FILL
XFILL272850x150 gnd vdd FILL
XFILL_2__4627_ gnd vdd FILL
XFILL_2__4207_ gnd vdd FILL
XFILL_1__2624_ gnd vdd FILL
XFILL_3__3911_ gnd vdd FILL
XFILL_1__3829_ gnd vdd FILL
XFILL_1__3409_ gnd vdd FILL
XFILL_2__4380_ gnd vdd FILL
X_2899_ _1537_ _1540_ DO_dsp[6] _1563_ vdd gnd OAI21X1
X_2479_ _1663_ _1665_ _2286_ _2348_ vdd gnd OAI21X1
X_3840_ _1328__bF$buf0 _1076_ _1315__bF$buf3 _633_ vdd gnd OAI21X1
X_3420_ _250_ _249_ _248_ vdd gnd AND2X2
X_3000_ _2352_ _1598_ _1601_ _1602_ vdd gnd NOR3X1
XFILL_4__2619_ gnd vdd FILL
XFILL_0__2939_ gnd vdd FILL
XFILL_0__2519_ gnd vdd FILL
X_4625_ \u_cpu.state\[3] _1354_ _1353_ vdd gnd NOR2X1
X_4205_ _1007_ _961_ _960_ vdd gnd NAND2X1
XFILL_1__3582_ gnd vdd FILL
XFILL_1__4787_ gnd vdd FILL
XFILL_1__4367_ gnd vdd FILL
XFILL_4__2792_ gnd vdd FILL
XFILL_4__2372_ gnd vdd FILL
XFILL_0__2692_ gnd vdd FILL
XFILL_2__3651_ gnd vdd FILL
XFILL_2__3231_ gnd vdd FILL
XFILL_4__3997_ gnd vdd FILL
XFILL_0__3897_ gnd vdd FILL
XFILL_0__3477_ gnd vdd FILL
XFILL_2__4856_ gnd vdd FILL
XFILL_2__4436_ gnd vdd FILL
XFILL_2__4016_ gnd vdd FILL
XFILL_1__2853_ gnd vdd FILL
XFILL_1__2433_ gnd vdd FILL
XFILL_3__2779_ gnd vdd FILL
XFILL_3__2359_ gnd vdd FILL
XFILL_3__3720_ gnd vdd FILL
XFILL_3__3300_ gnd vdd FILL
XFILL_1__3638_ gnd vdd FILL
XFILL_1__3218_ gnd vdd FILL
XFILL_3__4925_ gnd vdd FILL
XFILL_3__4505_ gnd vdd FILL
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
XFILL_3_BUFX2_insert68 gnd vdd FILL
XFILL_4__2848_ gnd vdd FILL
XFILL_4__2428_ gnd vdd FILL
XFILL_3_BUFX2_insert69 gnd vdd FILL
XFILL_0__2748_ gnd vdd FILL
X_4854_ RDY_bF$buf7 _1895_ _1896_ vdd gnd NAND2X1
X_4434_ \u_cpu.PC\[11] _1169_ vdd gnd INVX1
X_4014_ _787_ _786_ _785_ _784_ vdd gnd OAI21X1
XFILL_1__3391_ gnd vdd FILL
XFILL_2__3707_ gnd vdd FILL
XFILL_1__4596_ gnd vdd FILL
XFILL_1__4176_ gnd vdd FILL
XFILL_1__2909_ gnd vdd FILL
XFILL_2__3880_ gnd vdd FILL
XFILL_2__3460_ gnd vdd FILL
XFILL_4__3386_ gnd vdd FILL
XFILL_4_BUFX2_insert130 gnd vdd FILL
XFILL_4_BUFX2_insert131 gnd vdd FILL
XFILL_4_BUFX2_insert132 gnd vdd FILL
X_2920_ _1537_ _1540_ DO_dsp[5] _1547_ vdd gnd OAI21X1
X_2500_ _2324_ _2325_ _1920__bF$buf2 _2326_ vdd gnd OAI21X1
XFILL_4_BUFX2_insert133 gnd vdd FILL
XFILL_4_BUFX2_insert134 gnd vdd FILL
XFILL_4_BUFX2_insert135 gnd vdd FILL
XFILL_4_BUFX2_insert136 gnd vdd FILL
XFILL_4_BUFX2_insert137 gnd vdd FILL
XFILL_4_BUFX2_insert138 gnd vdd FILL
XFILL_4_BUFX2_insert139 gnd vdd FILL
XFILL_0__3286_ gnd vdd FILL
XFILL_2__4665_ gnd vdd FILL
XFILL_2__4245_ gnd vdd FILL
X_3705_ _552_ _505_ _504_ vdd gnd NAND2X1
XFILL_1__2662_ gnd vdd FILL
XFILL_3__2588_ gnd vdd FILL
XFILL_1__3867_ gnd vdd FILL
XFILL_1__3447_ gnd vdd FILL
XFILL_1__3027_ gnd vdd FILL
XFILL_3_BUFX2_insert150 gnd vdd FILL
XFILL_3_BUFX2_insert151 gnd vdd FILL
XFILL_3_BUFX2_insert152 gnd vdd FILL
XFILL_3_BUFX2_insert153 gnd vdd FILL
XFILL_3__4734_ gnd vdd FILL
XFILL_3_BUFX2_insert154 gnd vdd FILL
XFILL_3_BUFX2_insert155 gnd vdd FILL
XFILL_3__4314_ gnd vdd FILL
XFILL_3_BUFX2_insert156 gnd vdd FILL
XFILL_3_BUFX2_insert157 gnd vdd FILL
XFILL_3_BUFX2_insert158 gnd vdd FILL
XFILL_3_BUFX2_insert159 gnd vdd FILL
XFILL_2__2731_ gnd vdd FILL
XFILL_4__2657_ gnd vdd FILL
XFILL_0__2977_ gnd vdd FILL
XFILL_0__2557_ gnd vdd FILL
X_4663_ \u_cpu.BI\[2] _1716_ vdd gnd INVX1
X_4243_ _1106_ _1008_ _995_ vdd gnd NOR2X1
XFILL_2__3936_ gnd vdd FILL
XFILL_2__3516_ gnd vdd FILL
XFILL_4__4803_ gnd vdd FILL
XFILL_3__2800_ gnd vdd FILL
XFILL_0__4703_ gnd vdd FILL
XFILL_1__2718_ gnd vdd FILL
XFILL_4__3195_ gnd vdd FILL
XFILL_2__4894_ gnd vdd FILL
XFILL_2__4474_ gnd vdd FILL
XFILL_2__4054_ gnd vdd FILL
X_3934_ \u_cpu.DIMUX\[7] _1070__bF$buf1 _714_ _713_ vdd gnd OAI21X1
X_3514_ \u_cpu.ABH\[1] _325_ vdd gnd INVX1
XFILL_1__2891_ gnd vdd FILL
XFILL_1__2471_ gnd vdd FILL
XFILL_3__2397_ gnd vdd FILL
X_4719_ _1769_ _1771_ _1772_ vdd gnd AND2X2
XFILL_1__3676_ gnd vdd FILL
XFILL_1__3256_ gnd vdd FILL
XFILL_3__4963_ gnd vdd FILL
XFILL_3__4543_ gnd vdd FILL
XFILL_3__4123_ gnd vdd FILL
XFILL_2__2540_ gnd vdd FILL
XFILL_4__2886_ gnd vdd FILL
XFILL_4__2466_ gnd vdd FILL
XFILL_0__2786_ gnd vdd FILL
XFILL_0__2366_ gnd vdd FILL
X_4892_ _Addr_Bus[5] _Addr_Bus[6] _2168_ vdd gnd NOR2X1
X_4472_ _1318_ _1207_ _1203_ _1202_ vdd gnd OAI21X1
X_4052_ _820_ _840_ _819_ vdd gnd NOR2X1
XFILL_2__3745_ gnd vdd FILL
XFILL_2__3325_ gnd vdd FILL
XFILL_4__4612_ gnd vdd FILL
XFILL_0__4932_ gnd vdd FILL
XFILL_0__4512_ gnd vdd FILL
XFILL_1__2947_ gnd vdd FILL
XFILL_1__2527_ gnd vdd FILL
XFILL_3__3814_ gnd vdd FILL
XFILL_2__4283_ gnd vdd FILL
X_3743_ _1196__bF$buf4 _805_ _543_ _542_ vdd gnd OAI21X1
X_3323_ _681_ _173_ vdd gnd INVX1
X_4948_ _2214_ _2195_ _2219_ _2220_ Data_In[3] vdd 
+ gnd
+ AOI22X1
X_4528_ _1286_ _1283_ \u_cpu.ADD\[1] _1256_ vdd gnd OAI21X1
X_4108_ _875_ _908_ _874_ vdd gnd NOR2X1
XFILL_1__3485_ gnd vdd FILL
XFILL_3__4772_ gnd vdd FILL
XFILL_3__4352_ gnd vdd FILL
XFILL_4__2695_ gnd vdd FILL
XFILL_0__2595_ gnd vdd FILL
X_4281_ RDY_bF$buf7 _1029_ _1114_ _1479_ vdd gnd OAI21X1
XFILL_2__3974_ gnd vdd FILL
XFILL_2__3554_ gnd vdd FILL
XFILL272850x7350 gnd vdd FILL
XFILL_4__4841_ gnd vdd FILL
XFILL_4__4421_ gnd vdd FILL
XFILL_4__4001_ gnd vdd FILL
XFILL_2__4759_ gnd vdd FILL
XFILL_0__4741_ gnd vdd FILL
XFILL_0__4321_ gnd vdd FILL
XFILL_2__4339_ gnd vdd FILL
XFILL_1__2756_ gnd vdd FILL
XFILL_3__3623_ gnd vdd FILL
XFILL_3__3203_ gnd vdd FILL
XFILL_2__4092_ gnd vdd FILL
XFILL_1__4902_ gnd vdd FILL
XFILL_3__4828_ gnd vdd FILL
XFILL_3__4408_ gnd vdd FILL
X_3972_ \u_cpu.bit_ins\ _747_ vdd gnd INVX1
X_3552_ _1328__bF$buf5 _536_ _1250_ _357_ vdd gnd OAI21X1
X_3132_ _1417__bF$buf0 vdd _1402_ clk_bF$buf2 \u_cpu.AXYS[1]\[6] vdd 
+ gnd
+ DFFSR
XFILL_2__2825_ gnd vdd FILL
XFILL_2__2405_ gnd vdd FILL
X_4757_ _1711_ _1808_ _1809_ _1810_ vdd gnd OAI21X1
X_4337_ _1087_ _1328__bF$buf3 _1082_ vdd gnd NOR2X1
XFILL_1__3294_ gnd vdd FILL
XFILL_3__4581_ gnd vdd FILL
XFILL_3__4161_ gnd vdd FILL
XFILL_1__4499_ gnd vdd FILL
XFILL_1__4079_ gnd vdd FILL
X_4090_ _1305__bF$buf2 _904_ _857_ vdd gnd NOR2X1
XFILL_2__3783_ gnd vdd FILL
XFILL_2__3363_ gnd vdd FILL
XFILL_4__3289_ gnd vdd FILL
XFILL273450x72150 gnd vdd FILL
X_2823_ _1674_ _1912_ _2354__6_bF$buf3 _1913_ vdd gnd AOI21X1
X_2403_ _2072_ _25_ _2354__3_bF$buf4 _71_ vdd gnd AOI21X1
XFILL_4__4650_ gnd vdd FILL
XFILL_4__4230_ gnd vdd FILL
XFILL_0__3189_ gnd vdd FILL
XFILL_0__4970_ gnd vdd FILL
XFILL_2__4568_ gnd vdd FILL
XFILL_0__4550_ gnd vdd FILL
XFILL_0__4130_ gnd vdd FILL
XFILL_2__4148_ gnd vdd FILL
XFILL273450x39750 gnd vdd FILL
X_3608_ _1328__bF$buf4 _914_ RDY_bF$buf5 _412_ vdd gnd OAI21X1
XFILL_1__2985_ gnd vdd FILL
XFILL_1__2565_ gnd vdd FILL
XFILL_3__3852_ gnd vdd FILL
XFILL_3__3432_ gnd vdd FILL
XFILL_3__3012_ gnd vdd FILL
XFILL_1__4711_ gnd vdd FILL
XFILL_3__4637_ gnd vdd FILL
XFILL_3__4217_ gnd vdd FILL
X_3781_ _581_ _582_ _580_ vdd gnd OR2X2
X_3361_ _489_ _549_ _197_ vdd gnd NAND2X1
XFILL_2__2634_ gnd vdd FILL
XFILL_4__3921_ gnd vdd FILL
XFILL_4__3501_ gnd vdd FILL
X_4986_ _2354__4_bF$buf2 clk_bF$buf6 _Addr_Bus[4] vdd gnd DFFPOSX1
X_4566_ _1355_ _1310_ _1295_ _1294_ vdd gnd OAI21X1
X_4146_ _1337_ _1234_ _912_ vdd gnd NOR2X1
XFILL_2__3839_ gnd vdd FILL
XFILL_0__3821_ gnd vdd FILL
XFILL_0__3401_ gnd vdd FILL
XFILL_2__3419_ gnd vdd FILL
XFILL_3__4390_ gnd vdd FILL
XFILL_4__4706_ gnd vdd FILL
XFILL_3__2703_ gnd vdd FILL
XFILL_0__4606_ gnd vdd FILL
XFILL_2__3592_ gnd vdd FILL
XFILL_2__3172_ gnd vdd FILL
XFILL_3__3908_ gnd vdd FILL
X_2632_ _2101_ _2097_ _2102_ vdd gnd NAND2X1
XFILL_2__4797_ gnd vdd FILL
XFILL_2__4377_ gnd vdd FILL
X_3837_ _631_ _634_ _630_ vdd gnd NOR2X1
X_3417_ _246_ _2354_[11] vdd gnd INVX1
XFILL_1__2794_ gnd vdd FILL
XFILL_1__2374_ gnd vdd FILL
XFILL_3__3661_ gnd vdd FILL
XFILL_3__3241_ gnd vdd FILL
XFILL_1__3999_ gnd vdd FILL
XFILL_1__3579_ gnd vdd FILL
XFILL_1__4940_ gnd vdd FILL
XFILL_1__4520_ gnd vdd FILL
XFILL_1__4100_ gnd vdd FILL
XFILL_3__4866_ gnd vdd FILL
XFILL_3__4446_ gnd vdd FILL
XFILL_3__4026_ gnd vdd FILL
X_3590_ RDY_bF$buf0 _843_ _395_ _394_ vdd gnd OAI21X1
X_3170_ _1276_ _1225_ _75_ vdd gnd NOR2X1
XFILL271950x36150 gnd vdd FILL
XFILL_2__2443_ gnd vdd FILL
XFILL_4__2789_ gnd vdd FILL
XFILL_4__2369_ gnd vdd FILL
XFILL_4__3310_ gnd vdd FILL
XFILL_0__2689_ gnd vdd FILL
X_4795_ _1844_ _1846_ _1843_ _1667_ vdd gnd OAI21X1
X_4375_ _1126_ _1123_ _1117_ _1116_ vdd gnd NAND3X1
XFILL_2__3648_ gnd vdd FILL
XFILL_0__3630_ gnd vdd FILL
XFILL_2__3228_ gnd vdd FILL
XFILL_0__3210_ gnd vdd FILL
XFILL_4__4935_ gnd vdd FILL
XFILL_4__4515_ gnd vdd FILL
XFILL_0__4835_ gnd vdd FILL
XFILL_3__2932_ gnd vdd FILL
XFILL_3__2512_ gnd vdd FILL
XFILL_0__4415_ gnd vdd FILL
XFILL_3__3717_ gnd vdd FILL
X_2861_ _2354__4_bF$buf4 _1634_ vdd gnd INVX8
X_2441_ _1923__bF$buf3 _28_ _33_ _34_ vdd gnd NAND3X1
XFILL_2__4186_ gnd vdd FILL
X_3646_ _1305__bF$buf1 _1081_ _449_ vdd gnd NOR2X1
X_3226_ RDY_bF$buf0 _114_ _1024_ _113_ vdd gnd NAND3X1
XFILL_2__2919_ gnd vdd FILL
XFILL_0__2901_ gnd vdd FILL
XFILL_3__3890_ gnd vdd FILL
XFILL_3__3470_ gnd vdd FILL
XFILL_1__3388_ gnd vdd FILL
XFILL_3__4675_ gnd vdd FILL
XFILL_3__4255_ gnd vdd FILL
XFILL274050x10950 gnd vdd FILL
XFILL_2__2672_ gnd vdd FILL
XFILL_4__2598_ gnd vdd FILL
XFILL_0__2498_ gnd vdd FILL
X_4184_ _977_ _943_ _942_ _1469_ vdd gnd OAI21X1
XFILL_2__3877_ gnd vdd FILL
XFILL_2__3457_ gnd vdd FILL
X_2917_ \u_pia_dsp.state\[3] _1549_ vdd gnd INVX1
XFILL_4__4744_ gnd vdd FILL
XFILL_4__4324_ gnd vdd FILL
XFILL_3__2741_ gnd vdd FILL
XFILL_0__4644_ gnd vdd FILL
XFILL_0__4224_ gnd vdd FILL
XFILL_1__2659_ gnd vdd FILL
XFILL_1__3600_ gnd vdd FILL
XFILL_3__3946_ gnd vdd FILL
XFILL_3__3526_ gnd vdd FILL
X_2670_ _2062_ _2063_ _2354__6_bF$buf3 _2064_ vdd gnd AOI21X1
XFILL_1__4805_ gnd vdd FILL
XFILL_4__2810_ gnd vdd FILL
X_3875_ _674_ _668_ _666_ _897_ _665_ vdd 
+ gnd
+ AOI22X1
X_3455_ \u_cpu.PC\[2] _826_ _275_ vdd gnd NAND2X1
X_3035_ _1417__bF$buf4 vdd _1357_ clk_bF$buf5 \u_cpu.PC\[5] vdd 
+ gnd
+ DFFSR
XFILL_0__2710_ gnd vdd FILL
XFILL_2__2728_ gnd vdd FILL
XFILL_1__3197_ gnd vdd FILL
XFILL_0__3915_ gnd vdd FILL
XFILL_3__4484_ gnd vdd FILL
XFILL_3__4064_ gnd vdd FILL
XFILL_2__2481_ gnd vdd FILL
XFILL_2__3686_ gnd vdd FILL
XFILL_2__3266_ gnd vdd FILL
X_2726_ _2354__3_bF$buf6 _2006_ _2008_ _2009_ vdd gnd OAI21X1
XFILL_4__4973_ gnd vdd FILL
XFILL_4__4553_ gnd vdd FILL
XFILL_4__4133_ gnd vdd FILL
XFILL_3__2970_ gnd vdd FILL
XFILL_3__2550_ gnd vdd FILL
XFILL_0__4453_ gnd vdd FILL
XFILL_0__4033_ gnd vdd FILL
XFILL_1__2888_ gnd vdd FILL
XFILL_1__2468_ gnd vdd FILL
XFILL_3__3755_ gnd vdd FILL
XFILL_3__3335_ gnd vdd FILL
XFILL_1__4614_ gnd vdd FILL
X_3684_ _1196__bF$buf4 _746_ _488_ _487_ vdd gnd AOI21X1
X_3264_ \u_cpu.ABL\[4] _138_ vdd gnd INVX1
XFILL_2__2537_ gnd vdd FILL
XFILL_4__3824_ gnd vdd FILL
XFILL_4__3404_ gnd vdd FILL
X_4889_ _Addr_Bus[10] _Addr_Bus[11] _2165_ vdd gnd NOR2X1
X_4469_ _1293_ _1201_ _1224_ _1199_ vdd gnd NOR3X1
X_4049_ _839_ _817_ _816_ vdd gnd OR2X2
XFILL_0__3724_ gnd vdd FILL
XFILL_0__3304_ gnd vdd FILL
XFILL_3__4293_ gnd vdd FILL
XFILL_4__4609_ gnd vdd FILL
XFILL_0__4929_ gnd vdd FILL
XFILL_3__2606_ gnd vdd FILL
XFILL_0__4509_ gnd vdd FILL
XFILL_2__3495_ gnd vdd FILL
X_2955_ vdd _1491_ _1630_ clk_bF$buf12 \u_pia_kbd.state\[0] vdd 
+ gnd
+ DFFSR
X_2535_ _2354__4_bF$buf6 _2290_ _2291_ _2289_ _2292_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4782_ gnd vdd FILL
XFILL_4__4362_ gnd vdd FILL
XFILL_0__4682_ gnd vdd FILL
XFILL_0__4262_ gnd vdd FILL
XFILL_1__2697_ gnd vdd FILL
XFILL_3__3984_ gnd vdd FILL
XFILL_3__3564_ gnd vdd FILL
XFILL_1__4843_ gnd vdd FILL
XFILL_1__4423_ gnd vdd FILL
XFILL_1__4003_ gnd vdd FILL
XFILL_3__4769_ gnd vdd FILL
XFILL_3__4349_ gnd vdd FILL
X_3493_ _1305__bF$buf2 _1331_ _843_ _306_ vdd gnd OAI21X1
X_3073_ _1417__bF$buf0 vdd _1373_ clk_bF$buf10 \u_cpu.ABH\[6] vdd 
+ gnd
+ DFFSR
XFILL_2__2766_ gnd vdd FILL
XFILL_4__3633_ gnd vdd FILL
XFILL_4__3213_ gnd vdd FILL
X_4698_ _1746_ _1750_ _1742_ _1751_ vdd gnd OAI21X1
X_4278_ _1027_ _1123_ _1117_ _1026_ vdd gnd NAND3X1
XFILL_0__3953_ gnd vdd FILL
XFILL_0__3533_ gnd vdd FILL
XFILL_2__4912_ gnd vdd FILL
XFILL_4__4838_ gnd vdd FILL
XFILL_4__4418_ gnd vdd FILL
XFILL_3__2835_ gnd vdd FILL
XFILL_0__4738_ gnd vdd FILL
XFILL_3__2415_ gnd vdd FILL
XFILL_0__4318_ gnd vdd FILL
X_2764_ _1923__bF$buf3 _1971_ _2354__7_bF$buf3 _1972_ vdd gnd OAI21X1
XFILL_4__4591_ gnd vdd FILL
XFILL_4__4171_ gnd vdd FILL
XFILL_0__4491_ gnd vdd FILL
XFILL_2__4089_ gnd vdd FILL
XFILL_0__4071_ gnd vdd FILL
XFILL_4__2904_ gnd vdd FILL
X_3969_ _1328__bF$buf0 _1252_ _1345__bF$buf3 _744_ vdd gnd OAI21X1
X_3549_ _359_ \u_cpu.ADD\[4] _355_ _354_ vdd gnd AOI21X1
X_3129_ vdd _1417__bF$buf10 _1431_ clk_bF$buf4 \u_cpu.state\[3] vdd 
+ gnd
+ DFFSR
XFILL_0__2804_ gnd vdd FILL
X_4910_ _Addr_Bus[1] _2185_ _2176_ _2186_ vdd gnd NAND3X1
XFILL_3__3793_ gnd vdd FILL
XFILL_3__3373_ gnd vdd FILL
XFILL_1__4652_ gnd vdd FILL
XFILL_1__4232_ gnd vdd FILL
XFILL_3__4578_ gnd vdd FILL
XFILL_3__4158_ gnd vdd FILL
XFILL_2__2995_ gnd vdd FILL
XFILL_2__2575_ gnd vdd FILL
XFILL_4__3862_ gnd vdd FILL
XFILL_4__3442_ gnd vdd FILL
XFILL_4__3022_ gnd vdd FILL
X_4087_ _1240_ _855_ _854_ vdd gnd NOR2X1
XFILL_0__3762_ gnd vdd FILL
XFILL_0__3342_ gnd vdd FILL
XFILL_2__4721_ gnd vdd FILL
XFILL_2__4301_ gnd vdd FILL
XFILL_4__4647_ gnd vdd FILL
XFILL_4__4227_ gnd vdd FILL
XFILL_0__4967_ gnd vdd FILL
XFILL_3__2644_ gnd vdd FILL
XFILL_0__4547_ gnd vdd FILL
XFILL_0__4127_ gnd vdd FILL
XFILL_1__3923_ gnd vdd FILL
XFILL_1__3503_ gnd vdd FILL
XFILL_3__3849_ gnd vdd FILL
XFILL_3__3429_ gnd vdd FILL
XFILL_3__3009_ gnd vdd FILL
X_2993_ _1606_ _1607_ _1608_ vdd gnd AND2X2
X_2573_ _2254_ _1995_ _2255_ vdd gnd NOR2X1
XFILL_1__4708_ gnd vdd FILL
XFILL_4__2713_ gnd vdd FILL
X_3778_ _1325__bF$buf4 _904_ _1241_ _577_ vdd gnd OAI21X1
X_3358_ _198_ _195_ _194_ vdd gnd NAND2X1
XFILL_0__2613_ gnd vdd FILL
XFILL_3__3182_ gnd vdd FILL
XFILL_4__3918_ gnd vdd FILL
XFILL_0__3818_ gnd vdd FILL
XFILL_1__4461_ gnd vdd FILL
XFILL_1__4041_ gnd vdd FILL
XFILL_3__4387_ gnd vdd FILL
XFILL_2__2384_ gnd vdd FILL
XFILL_4__3671_ gnd vdd FILL
XFILL_4__3251_ gnd vdd FILL
XFILL_0__3991_ gnd vdd FILL
XFILL_2__3589_ gnd vdd FILL
XFILL_0__3571_ gnd vdd FILL
XFILL_2__3169_ gnd vdd FILL
XFILL_2__4950_ gnd vdd FILL
XFILL_2__4530_ gnd vdd FILL
XFILL_2__4110_ gnd vdd FILL
X_2629_ _1638__bF$buf2 _1949_ _1979_ _2105_ vdd gnd OAI21X1
XFILL_4__4456_ gnd vdd FILL
XFILL_4__4036_ gnd vdd FILL
XFILL_0__4776_ gnd vdd FILL
XFILL_0__4356_ gnd vdd FILL
XFILL_3__2453_ gnd vdd FILL
XFILL_1__3732_ gnd vdd FILL
XFILL_1__3312_ gnd vdd FILL
XFILL_3__3658_ gnd vdd FILL
XFILL_3__3238_ gnd vdd FILL
X_2382_ _2350_ dsp_rdy vdd gnd BUFX2
XFILL_1__4937_ gnd vdd FILL
XFILL_1__4517_ gnd vdd FILL
XFILL_4__2942_ gnd vdd FILL
XFILL_4__2522_ gnd vdd FILL
X_3587_ _507_ _392_ _391_ vdd gnd AND2X2
X_3167_ _1288_ _1213_ _73_ vdd gnd NOR2X1
XFILL_0__2842_ gnd vdd FILL
XFILL_0__2422_ gnd vdd FILL
XFILL_2__3801_ gnd vdd FILL
XFILL_4__3727_ gnd vdd FILL
XFILL_4__3307_ gnd vdd FILL
XFILL_0__3627_ gnd vdd FILL
XFILL_0__3207_ gnd vdd FILL
XFILL_1__4690_ gnd vdd FILL
XFILL_1__4270_ gnd vdd FILL
XFILL_3__4196_ gnd vdd FILL
XFILL_3__2929_ gnd vdd FILL
XFILL_3__2509_ gnd vdd FILL
XFILL_4__3480_ gnd vdd FILL
XFILL_0__3380_ gnd vdd FILL
XFILL_2__3398_ gnd vdd FILL
X_2858_ _2354__0_bF$buf0 _1635__bF$buf0 _1636__bF$buf0 _1637_ vdd gnd OAI21X1
X_2438_ _1658_ _2037_ _1920__bF$buf3 _37_ vdd gnd OAI21X1
XFILL_4__4685_ gnd vdd FILL
XFILL_4__4265_ gnd vdd FILL
XFILL272250x36150 gnd vdd FILL
XFILL_3__2682_ gnd vdd FILL
XFILL_0__4585_ gnd vdd FILL
XFILL_0__4165_ gnd vdd FILL
XFILL_1__3961_ gnd vdd FILL
XFILL_1__3541_ gnd vdd FILL
XFILL_3__3887_ gnd vdd FILL
XFILL_3__3467_ gnd vdd FILL
XFILL_1__4746_ gnd vdd FILL
XFILL_1__4326_ gnd vdd FILL
XFILL_4__2751_ gnd vdd FILL
X_3396_ \u_cpu.ADD\[4] _908_ _229_ _228_ vdd gnd AOI21X1
XFILL_0__2651_ gnd vdd FILL
XFILL_2__2669_ gnd vdd FILL
XFILL_2__3610_ gnd vdd FILL
XFILL_4__3956_ gnd vdd FILL
XFILL_4__3536_ gnd vdd FILL
XFILL_0__3856_ gnd vdd FILL
XFILL_0__3436_ gnd vdd FILL
XFILL_0__3016_ gnd vdd FILL
XFILL_2__4815_ gnd vdd FILL
XFILL_1__2812_ gnd vdd FILL
XFILL_3__2738_ gnd vdd FILL
X_2667_ _2354__1_bF$buf0 _1961_ _1643__bF$buf1 _2067_ vdd gnd OAI21X1
XFILL_4__4494_ gnd vdd FILL
XFILL_4__4074_ gnd vdd FILL
XFILL_3__2491_ gnd vdd FILL
XFILL_0__4394_ gnd vdd FILL
XFILL_4__2807_ gnd vdd FILL
XFILL_0__2707_ gnd vdd FILL
X_4813_ \u_cpu.ADD\[6] \u_cpu.ADD\[2] _1859_ vdd gnd NOR2X1
XFILL_1__3770_ gnd vdd FILL
XFILL_1__3350_ gnd vdd FILL
XFILL_3__3696_ gnd vdd FILL
XFILL_3__3276_ gnd vdd FILL
XFILL_1__4975_ gnd vdd FILL
XFILL_1__4555_ gnd vdd FILL
XFILL_1__4135_ gnd vdd FILL
XFILL_4__2980_ gnd vdd FILL
XFILL_4__2560_ gnd vdd FILL
XFILL_0__2880_ gnd vdd FILL
XFILL_2__2898_ gnd vdd FILL
XFILL_2__2478_ gnd vdd FILL
XFILL_0__2460_ gnd vdd FILL
XFILL_4__3765_ gnd vdd FILL
XFILL_4__3345_ gnd vdd FILL
XFILL_0__3665_ gnd vdd FILL
XFILL_0__3245_ gnd vdd FILL
XFILL_2__4624_ gnd vdd FILL
XFILL_2__4204_ gnd vdd FILL
XFILL_1__2621_ gnd vdd FILL
XFILL_3__2967_ gnd vdd FILL
XFILL_3__2547_ gnd vdd FILL
XFILL_1__3826_ gnd vdd FILL
XFILL_1__3406_ gnd vdd FILL
X_2896_ _1550_ _1564_ _2350_ _1565_ vdd gnd OAI21X1
X_2476_ _2355_ _2348_ _1923__bF$buf0 _0_ vdd gnd AOI21X1
XFILL_4__2616_ gnd vdd FILL
XFILL_0__2936_ gnd vdd FILL
XFILL_0__2516_ gnd vdd FILL
X_4622_ \u_cpu.state\[4] \u_cpu.state\[5] _1350_ vdd gnd NOR2X1
X_4202_ \u_cpu.ADD\[2] _972_ _958_ vdd gnd NAND2X1
XFILL_1__4784_ gnd vdd FILL
XFILL_1__4364_ gnd vdd FILL
XFILL_4__3994_ gnd vdd FILL
XFILL_4__3574_ gnd vdd FILL
XFILL_0__3894_ gnd vdd FILL
XFILL_0__3474_ gnd vdd FILL
XFILL_2__4853_ gnd vdd FILL
XFILL_2__4433_ gnd vdd FILL
XFILL_2__4013_ gnd vdd FILL
XFILL_4__4779_ gnd vdd FILL
XFILL_4__4359_ gnd vdd FILL
XFILL_1__2850_ gnd vdd FILL
XFILL_1__2430_ gnd vdd FILL
XFILL_0__4679_ gnd vdd FILL
XFILL_3__2776_ gnd vdd FILL
XFILL_0__4259_ gnd vdd FILL
XFILL_3__2356_ gnd vdd FILL
XFILL272550x79350 gnd vdd FILL
XFILL_1__3635_ gnd vdd FILL
XFILL_1__3215_ gnd vdd FILL
XFILL_3__4922_ gnd vdd FILL
XFILL_3__4502_ gnd vdd FILL
XFILL_4__2845_ gnd vdd FILL
XFILL_4__2425_ gnd vdd FILL
XFILL_3_BUFX2_insert39 gnd vdd FILL
XFILL_0__2745_ gnd vdd FILL
X_4851_ _1892_ _1887_ _1893_ vdd gnd NAND2X1
X_4431_ RDY_bF$buf2 Data_In[3] _1166_ vdd gnd NAND2X1
X_4011_ \u_cpu.AN\ _781_ vdd gnd INVX1
XFILL_2__3704_ gnd vdd FILL
XFILL_1__4593_ gnd vdd FILL
XFILL_1__4173_ gnd vdd FILL
XFILL_3__4099_ gnd vdd FILL
XFILL_2__4909_ gnd vdd FILL
XFILL_1__2906_ gnd vdd FILL
XFILL_4__3383_ gnd vdd FILL
XFILL_4_BUFX2_insert100 gnd vdd FILL
XFILL_4_BUFX2_insert101 gnd vdd FILL
XFILL_4_BUFX2_insert102 gnd vdd FILL
XFILL_4_BUFX2_insert103 gnd vdd FILL
XFILL_4_BUFX2_insert104 gnd vdd FILL
XFILL_4_BUFX2_insert105 gnd vdd FILL
XFILL_4_BUFX2_insert106 gnd vdd FILL
XFILL_4_BUFX2_insert107 gnd vdd FILL
XFILL_4_BUFX2_insert108 gnd vdd FILL
XFILL_4_BUFX2_insert109 gnd vdd FILL
XFILL_0__3283_ gnd vdd FILL
XFILL_2__4662_ gnd vdd FILL
XFILL_2__4242_ gnd vdd FILL
XFILL_4__4588_ gnd vdd FILL
XFILL_4__4168_ gnd vdd FILL
X_3702_ _503_ _502_ vdd gnd INVX2
XFILL_3__2585_ gnd vdd FILL
XFILL_0__4488_ gnd vdd FILL
XFILL_0__4068_ gnd vdd FILL
X_4907_ DI[6] _2183_ vdd gnd INVX1
XFILL_1__3864_ gnd vdd FILL
XFILL_1__3444_ gnd vdd FILL
XFILL_1__3024_ gnd vdd FILL
XFILL_3_BUFX2_insert120 gnd vdd FILL
XFILL_3_BUFX2_insert121 gnd vdd FILL
XFILL274050x150 gnd vdd FILL
XFILL_3_BUFX2_insert122 gnd vdd FILL
XFILL_3_BUFX2_insert123 gnd vdd FILL
XFILL_3__4731_ gnd vdd FILL
XFILL_3_BUFX2_insert124 gnd vdd FILL
XFILL_3__4311_ gnd vdd FILL
XFILL_3_BUFX2_insert125 gnd vdd FILL
XFILL_3_BUFX2_insert126 gnd vdd FILL
XFILL_3_BUFX2_insert127 gnd vdd FILL
XFILL_3_BUFX2_insert128 gnd vdd FILL
XFILL_3_BUFX2_insert129 gnd vdd FILL
XFILL_1__4649_ gnd vdd FILL
XFILL_1__4229_ gnd vdd FILL
XFILL_4__2654_ gnd vdd FILL
X_3299_ _924_ _921_ _156_ _1406_ vdd gnd OAI21X1
XFILL_0__2974_ gnd vdd FILL
XFILL_0__2554_ gnd vdd FILL
X_4660_ _1704_ _1698_ _1712_ _1713_ vdd gnd OAI21X1
X_4240_ _1002_ _1007_ _996_ _993_ _992_ vdd 
+ gnd
+ AOI22X1
XFILL_2__3933_ gnd vdd FILL
XFILL_2__3513_ gnd vdd FILL
XFILL_4__3859_ gnd vdd FILL
XFILL_4__3439_ gnd vdd FILL
XFILL_4__3019_ gnd vdd FILL
XFILL_4__4800_ gnd vdd FILL
XFILL_0__3759_ gnd vdd FILL
XFILL_0__3339_ gnd vdd FILL
XFILL_2__4718_ gnd vdd FILL
XFILL_0__4700_ gnd vdd FILL
XFILL_1__2715_ gnd vdd FILL
XFILL_4__3192_ gnd vdd FILL
XFILL_2__4891_ gnd vdd FILL
XFILL_2__4471_ gnd vdd FILL
XFILL_2__4051_ gnd vdd FILL
XFILL_4__4397_ gnd vdd FILL
X_3931_ \u_cpu.AXYS[2]\[1] _760_ _711_ vdd gnd NAND2X1
X_3511_ _360_ _326_ _323_ \u_cpu.AI\[1] vdd gnd OAI21X1
XFILL_3__2394_ gnd vdd FILL
XFILL_0__4297_ gnd vdd FILL
X_4716_ _1768_ _1764_ _1741_ _1769_ vdd gnd OAI21X1
XFILL_1__3673_ gnd vdd FILL
XFILL_1__3253_ gnd vdd FILL
XFILL_3__3599_ gnd vdd FILL
XFILL_3__3179_ gnd vdd FILL
XFILL_3__4960_ gnd vdd FILL
XFILL_3__4540_ gnd vdd FILL
XFILL_3__4120_ gnd vdd FILL
XFILL_1__4458_ gnd vdd FILL
XFILL_1__4038_ gnd vdd FILL
XFILL_4__2883_ gnd vdd FILL
XFILL_4__2463_ gnd vdd FILL
XFILL273150x50550 gnd vdd FILL
XFILL_0__2783_ gnd vdd FILL
XFILL_0__2363_ gnd vdd FILL
XFILL_2__3742_ gnd vdd FILL
XFILL_2__3322_ gnd vdd FILL
XFILL_4__3668_ gnd vdd FILL
XFILL_4__3248_ gnd vdd FILL
XFILL_0__3988_ gnd vdd FILL
XFILL_0__3568_ gnd vdd FILL
XFILL_4_BUFX2_insert80 gnd vdd FILL
XFILL_4_BUFX2_insert81 gnd vdd FILL
XFILL_4_BUFX2_insert82 gnd vdd FILL
XFILL_4_BUFX2_insert83 gnd vdd FILL
XFILL_4_BUFX2_insert84 gnd vdd FILL
XFILL_2__4947_ gnd vdd FILL
XFILL_4_BUFX2_insert85 gnd vdd FILL
XFILL_2__4527_ gnd vdd FILL
XFILL_2__4107_ gnd vdd FILL
XFILL_4_BUFX2_insert86 gnd vdd FILL
XFILL_4_BUFX2_insert87 gnd vdd FILL
XFILL_4_BUFX2_insert88 gnd vdd FILL
XFILL_4_BUFX2_insert89 gnd vdd FILL
XFILL_1__2944_ gnd vdd FILL
XFILL_1__2524_ gnd vdd FILL
XFILL_3__3811_ gnd vdd FILL
XFILL_1__3729_ gnd vdd FILL
XFILL_1__3309_ gnd vdd FILL
XFILL_2__4280_ gnd vdd FILL
X_2799_ _1935_ _1936_ _1638__bF$buf2 _1934_ _1937_ vdd 
+ gnd
+ OAI22X1
X_2379_ _2353_[0] DO[0] vdd gnd BUFX2
X_3740_ \u_cpu.CO\ \u_cpu.store\ RDY_bF$buf5 _539_ vdd gnd OAI21X1
X_3320_ _174_ _1129__bF$buf5 _171_ _1412_ vdd gnd OAI21X1
XFILL_4__2939_ gnd vdd FILL
XFILL_4__2519_ gnd vdd FILL
XFILL_0__2839_ gnd vdd FILL
XFILL_0__2419_ gnd vdd FILL
X_4945_ _2217_ _2186_ _2218_ vdd gnd NAND2X1
X_4525_ _1256_ _1254_ _1257_ _1253_ vdd gnd NAND3X1
X_4105_ _872_ _871_ vdd gnd INVX1
XFILL_1__3482_ gnd vdd FILL
XFILL_1__4687_ gnd vdd FILL
XFILL_1__4267_ gnd vdd FILL
XFILL_4__2692_ gnd vdd FILL
XFILL_0__2592_ gnd vdd FILL
XFILL_2__3971_ gnd vdd FILL
XFILL_2__3551_ gnd vdd FILL
XFILL_4__3897_ gnd vdd FILL
XFILL_4__3477_ gnd vdd FILL
XFILL_0__3797_ gnd vdd FILL
XFILL_0__3377_ gnd vdd FILL
XFILL_2__4756_ gnd vdd FILL
XFILL_2__4336_ gnd vdd FILL
XFILL_1__2753_ gnd vdd FILL
XFILL_3__2679_ gnd vdd FILL
XFILL_3__3620_ gnd vdd FILL
XFILL_3__3200_ gnd vdd FILL
XFILL_1__3958_ gnd vdd FILL
XFILL_1__3538_ gnd vdd FILL
XFILL_3__4825_ gnd vdd FILL
XFILL_3__4405_ gnd vdd FILL
XFILL_2__2822_ gnd vdd FILL
XFILL_2__2402_ gnd vdd FILL
XFILL_4__2748_ gnd vdd FILL
XFILL_0__2648_ gnd vdd FILL
X_4754_ _1803_ _1790_ _1806_ _1807_ vdd gnd OAI21X1
X_4334_ _1080_ _1327_ _1082_ _1079_ vdd gnd AOI21X1
XFILL_1__3291_ gnd vdd FILL
XFILL_2__3607_ gnd vdd FILL
XFILL_1__4496_ gnd vdd FILL
XFILL_1__4076_ gnd vdd FILL
XFILL_2_BUFX2_insert160 gnd vdd FILL
XFILL_2_BUFX2_insert161 gnd vdd FILL
XFILL_2_BUFX2_insert162 gnd vdd FILL
XFILL_2_BUFX2_insert163 gnd vdd FILL
XFILL_2_BUFX2_insert164 gnd vdd FILL
XFILL_2_BUFX2_insert165 gnd vdd FILL
XFILL_2_BUFX2_insert166 gnd vdd FILL
XFILL_2_BUFX2_insert167 gnd vdd FILL
XFILL_1__2809_ gnd vdd FILL
XFILL_2__3780_ gnd vdd FILL
XFILL_2__3360_ gnd vdd FILL
XFILL_4__3286_ gnd vdd FILL
X_2820_ _2354__1_bF$buf4 _2354__2_bF$buf3 _1916_ vdd gnd NOR2X1
X_2400_ _1419_ _71_ _1420_ _1421_ vdd gnd OAI21X1
XFILL_0__3186_ gnd vdd FILL
XFILL_2__4985_ gnd vdd FILL
XFILL_2__4565_ gnd vdd FILL
XFILL_2__4145_ gnd vdd FILL
X_3605_ \u_cpu.cond_code\[1] _699_ _409_ vdd gnd NAND2X1
XFILL_1__2982_ gnd vdd FILL
XFILL_1__2562_ gnd vdd FILL
XFILL_3__2488_ gnd vdd FILL
XFILL_1__3767_ gnd vdd FILL
XFILL_1__3347_ gnd vdd FILL
XFILL_3__4634_ gnd vdd FILL
XFILL_3__4214_ gnd vdd FILL
XFILL_2__2631_ gnd vdd FILL
XFILL_4__2977_ gnd vdd FILL
XFILL_4__2557_ gnd vdd FILL
XFILL_0__2877_ gnd vdd FILL
XFILL_0__2457_ gnd vdd FILL
X_4983_ _2250_ _2197_ _2251_ _2252_ vdd gnd NAND3X1
X_4563_ \u_cpu.ABL\[6] _1291_ vdd gnd INVX1
X_4143_ _913_ _910_ _909_ vdd gnd NOR2X1
XFILL_2__3836_ gnd vdd FILL
XFILL_2__3416_ gnd vdd FILL
XFILL_4__4703_ gnd vdd FILL
XFILL_3__2700_ gnd vdd FILL
XFILL_0__4603_ gnd vdd FILL
XFILL_1__2618_ gnd vdd FILL
XFILL_3__3905_ gnd vdd FILL
XFILL_2__4794_ gnd vdd FILL
XFILL_2__4374_ gnd vdd FILL
X_3834_ _1274_ _628_ \u_cpu.V\ _627_ vdd gnd OAI21X1
X_3414_ _636_ \u_cpu.PC\[2] \u_cpu.ADD\[2] _625_ _243_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2791_ gnd vdd FILL
XFILL_1__2371_ gnd vdd FILL
X_4619_ _1348_ _1347_ vdd gnd INVX1
XFILL_1__3996_ gnd vdd FILL
XFILL_1__3576_ gnd vdd FILL
XFILL_3__4863_ gnd vdd FILL
XFILL_3__4443_ gnd vdd FILL
XFILL_3__4023_ gnd vdd FILL
XFILL_2__2860_ gnd vdd FILL
XFILL_2__2440_ gnd vdd FILL
XFILL_4__2786_ gnd vdd FILL
XFILL_4__2366_ gnd vdd FILL
XFILL_0__2686_ gnd vdd FILL
X_4792_ _1792_ _1763_ _1757_ _1844_ vdd gnd AOI21X1
X_4372_ RDY_bF$buf7 _1115_ _1114_ \u_cpu.DIMUX\[7] vdd gnd OAI21X1
XFILL_2__3645_ gnd vdd FILL
XFILL_2__3225_ gnd vdd FILL
XFILL_4__4932_ gnd vdd FILL
XFILL_4__4512_ gnd vdd FILL
XFILL_0__4832_ gnd vdd FILL
XFILL_0__4412_ gnd vdd FILL
XFILL_1__2847_ gnd vdd FILL
XFILL_1__2427_ gnd vdd FILL
XFILL_3__3714_ gnd vdd FILL
XFILL_2__4183_ gnd vdd FILL
XFILL_3__4919_ gnd vdd FILL
X_3643_ _1328__bF$buf1 _904_ _1196__bF$buf6 _446_ vdd gnd OAI21X1
X_3223_ _1196__bF$buf8 _1345__bF$buf0 \u_cpu.load_only\ _111_ vdd gnd OAI21X1
XFILL_2__2916_ gnd vdd FILL
X_4848_ _1889_ _1890_ vdd gnd INVX1
X_4428_ \u_cpu.ADD\[3] _1164_ vdd gnd INVX1
X_4008_ _781_ _877_ _779_ _778_ vdd gnd OAI21X1
XFILL_1__3385_ gnd vdd FILL
XFILL_3__4672_ gnd vdd FILL
XFILL_3__4252_ gnd vdd FILL
XFILL_4__2595_ gnd vdd FILL
XFILL_0__2495_ gnd vdd FILL
X_4181_ \u_cpu.CO\ _970_ _940_ vdd gnd NOR2X1
XFILL_2__3874_ gnd vdd FILL
XFILL_2__3454_ gnd vdd FILL
X_2914_ \u_pia_dsp.state\[1] _1551_ vdd gnd INVX1
XFILL_4__4741_ gnd vdd FILL
XFILL_4__4321_ gnd vdd FILL
XFILL_2__4659_ gnd vdd FILL
XFILL_0__4641_ gnd vdd FILL
XFILL_2__4239_ gnd vdd FILL
XFILL_0__4221_ gnd vdd FILL
XFILL_1__2656_ gnd vdd FILL
XFILL_3__3943_ gnd vdd FILL
XFILL_3__3523_ gnd vdd FILL
XFILL_1__4802_ gnd vdd FILL
XFILL_3__4728_ gnd vdd FILL
XFILL_3__4308_ gnd vdd FILL
X_3872_ _670_ _664_ _663_ _662_ vdd gnd OAI21X1
X_3452_ _1192_ _278_ _274_ \u_cpu.BI\[1] vdd gnd OAI21X1
X_3032_ DO_kbd[6] _1497_ vdd gnd INVX1
XFILL_2__2725_ gnd vdd FILL
X_4657_ _1684_ _1709_ _1708_ _1710_ vdd gnd NAND3X1
X_4237_ _1020_ _1000_ _989_ vdd gnd NOR2X1
XFILL_1__3194_ gnd vdd FILL
XFILL_0__3912_ gnd vdd FILL
XFILL_3__4481_ gnd vdd FILL
XFILL_3__4061_ gnd vdd FILL
XFILL_1__4399_ gnd vdd FILL
XFILL_2__3683_ gnd vdd FILL
XFILL_2__3263_ gnd vdd FILL
XFILL_4__3189_ gnd vdd FILL
X_2723_ _2009_ _2011_ _2005_ _2012_ vdd gnd NAND3X1
XFILL_4__4970_ gnd vdd FILL
XFILL_4__4550_ gnd vdd FILL
XFILL_4__4130_ gnd vdd FILL
XFILL_0__4870_ gnd vdd FILL
XFILL_2__4888_ gnd vdd FILL
XFILL_0__4450_ gnd vdd FILL
XFILL_2__4468_ gnd vdd FILL
XFILL_0__4030_ gnd vdd FILL
XFILL_2__4048_ gnd vdd FILL
X_3928_ _952_ _760_ _710_ _1447_ vdd gnd OAI21X1
X_3508_ _1207_ _356_ _321_ _320_ vdd gnd OAI21X1
XFILL_1__2885_ gnd vdd FILL
XFILL_1__2465_ gnd vdd FILL
XFILL_3__3752_ gnd vdd FILL
XFILL_3__3332_ gnd vdd FILL
XFILL_1__4611_ gnd vdd FILL
XFILL_3__4957_ gnd vdd FILL
XFILL_3__4537_ gnd vdd FILL
XFILL_3__4117_ gnd vdd FILL
X_3681_ _991_ _485_ _486_ _1001_ _484_ vdd 
+ gnd
+ AOI22X1
X_3261_ _800__bF$buf3 _2354__5_bF$buf1 _136_ vdd gnd NAND2X1
XFILL_2__2534_ gnd vdd FILL
XFILL_4__3821_ gnd vdd FILL
XFILL_4__3401_ gnd vdd FILL
X_4886_ _Addr_Bus[2] _Addr_Bus[3] _2162_ vdd gnd NOR2X1
X_4466_ RDY_bF$buf4 _1210_ _1197_ _1489_ vdd gnd OAI21X1
X_4046_ _882_ _902_ _813_ vdd gnd NOR2X1
XFILL_2__3739_ gnd vdd FILL
XFILL_0__3721_ gnd vdd FILL
XFILL_2__3319_ gnd vdd FILL
XFILL_0__3301_ gnd vdd FILL
XFILL_3__4290_ gnd vdd FILL
XFILL_4__4606_ gnd vdd FILL
XFILL_0__4926_ gnd vdd FILL
XFILL_3__2603_ gnd vdd FILL
XFILL_0__4506_ gnd vdd FILL
XFILL_2__3492_ gnd vdd FILL
XFILL_3__3808_ gnd vdd FILL
X_2952_ _2346_[3] clk_bF$buf6 DO_woz[3] vdd gnd DFFPOSX1
X_2532_ _1635__bF$buf4 _1935_ _2098_ _2295_ vdd gnd NAND3X1
XFILL_2__4697_ gnd vdd FILL
XFILL_2__4277_ gnd vdd FILL
X_3737_ _1064_ _536_ vdd gnd INVX1
X_3317_ _781_ _1349_ _1315__bF$buf0 _168_ vdd gnd OAI21X1
XFILL_1__2694_ gnd vdd FILL
XFILL_3__3981_ gnd vdd FILL
XFILL_3__3561_ gnd vdd FILL
XFILL_1__3899_ gnd vdd FILL
XFILL_1__3479_ gnd vdd FILL
XFILL_1__4840_ gnd vdd FILL
XFILL_1__4420_ gnd vdd FILL
XFILL_1__4000_ gnd vdd FILL
XFILL_3__4766_ gnd vdd FILL
XFILL_3__4346_ gnd vdd FILL
X_3490_ _306_ _304_ _303_ vdd gnd NOR2X1
X_3070_ _1417__bF$buf8 vdd \u_cpu.DIMUX\[6] clk_bF$buf10 \u_cpu.DIHOLD\[6] vdd 
+ gnd
+ DFFSR
XFILL_2__2763_ gnd vdd FILL
XFILL_4__2689_ gnd vdd FILL
XFILL_4__3630_ gnd vdd FILL
XFILL_4__3210_ gnd vdd FILL
XFILL_0__2589_ gnd vdd FILL
X_4695_ \u_cpu.AI\[0] _1748_ vdd gnd INVX1
X_4275_ _1102_ _1025_ _1024_ vdd gnd NOR2X1
XFILL_0__3950_ gnd vdd FILL
XFILL_2__3968_ gnd vdd FILL
XFILL_2__3548_ gnd vdd FILL
XFILL_0__3530_ gnd vdd FILL
XFILL273450x25350 gnd vdd FILL
XFILL_4__4835_ gnd vdd FILL
XFILL_4__4415_ gnd vdd FILL
XFILL_0__4735_ gnd vdd FILL
XFILL_3__2832_ gnd vdd FILL
XFILL_3__2412_ gnd vdd FILL
XFILL_0__4315_ gnd vdd FILL
XFILL_3__3617_ gnd vdd FILL
X_2761_ _1635__bF$buf2 _1636__bF$buf1 _1915_ _1974_ vdd gnd OAI21X1
XFILL_2__4086_ gnd vdd FILL
XFILL_4__2901_ gnd vdd FILL
X_3966_ _828_ _742_ _748_ _741_ vdd gnd OAI21X1
X_3546_ \u_cpu.ABH\[3] _352_ vdd gnd INVX1
X_3126_ _1417__bF$buf8 vdd \u_cpu.DIMUX\[2] clk_bF$buf10 \u_cpu.DIHOLD\[2] vdd 
+ gnd
+ DFFSR
XFILL_0__2801_ gnd vdd FILL
XFILL_2__2819_ gnd vdd FILL
XFILL_3__3790_ gnd vdd FILL
XFILL_3__3370_ gnd vdd FILL
XFILL_1__3288_ gnd vdd FILL
XFILL_3__4575_ gnd vdd FILL
XFILL_3__4155_ gnd vdd FILL
XFILL_2__2992_ gnd vdd FILL
XFILL_2__2572_ gnd vdd FILL
XFILL_0__2398_ gnd vdd FILL
X_4084_ _1305__bF$buf1 _1087_ _1315__bF$buf3 _851_ vdd gnd OAI21X1
XFILL_2__3777_ gnd vdd FILL
XFILL_2__3357_ gnd vdd FILL
X_2817_ _1636__bF$buf1 _1914_ _1918_ _1915_ _1919_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4644_ gnd vdd FILL
XFILL_4__4224_ gnd vdd FILL
XFILL_0__4964_ gnd vdd FILL
XFILL_3__2641_ gnd vdd FILL
XFILL_0__4544_ gnd vdd FILL
XFILL_0__4124_ gnd vdd FILL
XFILL_1__2979_ gnd vdd FILL
XFILL_1__2559_ gnd vdd FILL
XFILL_1__3920_ gnd vdd FILL
XFILL_1__3500_ gnd vdd FILL
XFILL_3__3846_ gnd vdd FILL
XFILL_3__3426_ gnd vdd FILL
XFILL_3__3006_ gnd vdd FILL
X_2990_ _1605_ _1608_ _1610_ _1611_ vdd gnd NAND3X1
X_2570_ _1651_ _1652_ _1659_ _2258_ vdd gnd OAI21X1
XFILL_1__4705_ gnd vdd FILL
XFILL_4__2710_ gnd vdd FILL
X_3775_ _1324_ _575_ _574_ vdd gnd NOR2X1
X_3355_ _450_ _431_ _379_ _191_ vdd gnd NAND3X1
XFILL_0__2610_ gnd vdd FILL
XFILL_2__2628_ gnd vdd FILL
XFILL_4__3915_ gnd vdd FILL
XFILL_0__3815_ gnd vdd FILL
XFILL_3__4384_ gnd vdd FILL
XCLKBUF1_insert26 clk clk_bF$buf12 vdd gnd CLKBUF1
XCLKBUF1_insert27 clk clk_bF$buf11 vdd gnd CLKBUF1
XCLKBUF1_insert28 clk clk_bF$buf10 vdd gnd CLKBUF1
XCLKBUF1_insert29 clk clk_bF$buf9 vdd gnd CLKBUF1
XFILL_2__2381_ gnd vdd FILL
XFILL_2__3586_ gnd vdd FILL
XFILL274050x86550 gnd vdd FILL
XFILL_2__3166_ gnd vdd FILL
X_2626_ _2354__7_bF$buf0 _2092_ _2107_ _2108_ vdd gnd NAND3X1
XFILL_4__4453_ gnd vdd FILL
XFILL_4__4033_ gnd vdd FILL
XFILL_0__4773_ gnd vdd FILL
XFILL_3__2450_ gnd vdd FILL
XFILL_0__4353_ gnd vdd FILL
XFILL_1__2788_ gnd vdd FILL
XFILL_1__2368_ gnd vdd FILL
XFILL_3__3655_ gnd vdd FILL
XFILL_3__3235_ gnd vdd FILL
XFILL_1__4934_ gnd vdd FILL
XFILL_1__4514_ gnd vdd FILL
X_3584_ _389_ _397_ _388_ vdd gnd NAND2X1
X_3164_ _1417__bF$buf2 vdd _1459_ clk_bF$buf4 \u_cpu.NMI_edge\ vdd 
+ gnd
+ DFFSR
XFILL_2__2857_ gnd vdd FILL
XFILL_2__2437_ gnd vdd FILL
XFILL_4__3724_ gnd vdd FILL
XFILL_4__3304_ gnd vdd FILL
X_4789_ _1841_ _1829_ _1842_ vdd gnd NAND2X1
X_4369_ _1125_ _1113_ _1112_ _1111_ vdd gnd AOI21X1
XFILL_0__3624_ gnd vdd FILL
XFILL_0__3204_ gnd vdd FILL
XFILL_3__4193_ gnd vdd FILL
XFILL_4__4929_ gnd vdd FILL
XFILL_4__4509_ gnd vdd FILL
XFILL273750x68550 gnd vdd FILL
XFILL_0__4829_ gnd vdd FILL
XFILL_3__2926_ gnd vdd FILL
XFILL_3__2506_ gnd vdd FILL
XFILL_0__4409_ gnd vdd FILL
XFILL_2__3395_ gnd vdd FILL
X_2855_ _1637_ _1639_ _1640_ vdd gnd NOR2X1
X_2435_ _1638__bF$buf0 _1636__bF$buf0 _1967_ _40_ vdd gnd OAI21X1
XFILL_4__4682_ gnd vdd FILL
XFILL_4__4262_ gnd vdd FILL
XFILL_0__4582_ gnd vdd FILL
XFILL_0__4162_ gnd vdd FILL
XFILL_1__2597_ gnd vdd FILL
XFILL_3__3884_ gnd vdd FILL
XFILL_3__3464_ gnd vdd FILL
XFILL_1__4743_ gnd vdd FILL
XFILL_1__4323_ gnd vdd FILL
XFILL_3__4669_ gnd vdd FILL
XFILL_3__4249_ gnd vdd FILL
X_3393_ \u_cpu.DIMUX\[0] _867_ _780_ \u_cpu.ABL\[0] _226_ vdd 
+ gnd
+ AOI22X1
XFILL_2__2666_ gnd vdd FILL
XFILL_4__3953_ gnd vdd FILL
XFILL_4__3533_ gnd vdd FILL
X_4598_ \u_cpu.state\[5] _1327_ _1326_ vdd gnd NOR2X1
X_4178_ _938_ _940_ \u_cpu.ADD\[5] _937_ vdd gnd OAI21X1
XFILL_0__3853_ gnd vdd FILL
XFILL_0__3433_ gnd vdd FILL
XFILL_0__3013_ gnd vdd FILL
XFILL_2__4812_ gnd vdd FILL
XFILL_4__4738_ gnd vdd FILL
XFILL_4__4318_ gnd vdd FILL
XFILL_0__4638_ gnd vdd FILL
XFILL_3__2735_ gnd vdd FILL
XFILL_0__4218_ gnd vdd FILL
X_2664_ _2069_ _2066_ _2068_ _2070_ vdd gnd OAI21X1
XFILL_4__4491_ gnd vdd FILL
XFILL_4__4071_ gnd vdd FILL
XFILL_0__4391_ gnd vdd FILL
XFILL_4__2804_ gnd vdd FILL
X_3869_ _660_ _675_ _665_ _1438_ vdd gnd MUX2X1
X_3449_ _1178_ _877_ _273_ _272_ vdd gnd OAI21X1
X_3029_ _1498_ _1499_ _1500_ vdd gnd NOR2X1
XFILL_0__2704_ gnd vdd FILL
X_4810_ \u_cpu.ADD\[0] \u_cpu.ADD\[1] _1856_ vdd gnd OR2X2
XFILL_3__3693_ gnd vdd FILL
XFILL_3__3273_ gnd vdd FILL
XFILL_0__3909_ gnd vdd FILL
XFILL_1__4972_ gnd vdd FILL
XFILL_1__4552_ gnd vdd FILL
XFILL_1__4132_ gnd vdd FILL
XFILL_3__4898_ gnd vdd FILL
XFILL_3__4478_ gnd vdd FILL
XFILL_3__4058_ gnd vdd FILL
XFILL_2__2895_ gnd vdd FILL
XFILL_2__2475_ gnd vdd FILL
XFILL_4__3762_ gnd vdd FILL
XFILL_4__3342_ gnd vdd FILL
XFILL_0__3662_ gnd vdd FILL
XFILL_0__3242_ gnd vdd FILL
XFILL_2__4621_ gnd vdd FILL
XFILL_2__4201_ gnd vdd FILL
XFILL_4__4967_ gnd vdd FILL
XFILL_4__4547_ gnd vdd FILL
XFILL_4__4127_ gnd vdd FILL
XFILL_0__4867_ gnd vdd FILL
XFILL_3__2964_ gnd vdd FILL
XFILL_3__2544_ gnd vdd FILL
XFILL_0__4447_ gnd vdd FILL
XFILL_0__4027_ gnd vdd FILL
XFILL_1__3823_ gnd vdd FILL
XFILL_1__3403_ gnd vdd FILL
XFILL_3__3749_ gnd vdd FILL
XFILL_3__3329_ gnd vdd FILL
X_2893_ _2354__1_bF$buf3 _1528_ _1567_ vdd gnd NAND2X1
X_2473_ _2026_ _2028_ _2_ vdd gnd NOR2X1
XFILL_1__4608_ gnd vdd FILL
XFILL_4__2613_ gnd vdd FILL
X_3678_ _537_ _482_ _481_ vdd gnd NAND2X1
X_3258_ _1291_ _800__bF$buf3 _135_ _1386_ vdd gnd OAI21X1
XFILL_0__2933_ gnd vdd FILL
XFILL_0__2513_ gnd vdd FILL
XFILL_4__3818_ gnd vdd FILL
XFILL_0__3718_ gnd vdd FILL
XFILL_1__4781_ gnd vdd FILL
XFILL_1__4361_ gnd vdd FILL
XFILL_3__4287_ gnd vdd FILL
XFILL_4__3991_ gnd vdd FILL
XFILL_4__3571_ gnd vdd FILL
XFILL_0__3891_ gnd vdd FILL
XFILL_0__3471_ gnd vdd FILL
XFILL_2__3489_ gnd vdd FILL
XFILL_2__4850_ gnd vdd FILL
XFILL_2__4430_ gnd vdd FILL
XFILL_2__4010_ gnd vdd FILL
X_2949_ _2354_[10] _1522_ vdd gnd INVX1
X_2529_ _2060_ _2298_ vdd gnd INVX1
XFILL_4__4776_ gnd vdd FILL
XFILL_4__4356_ gnd vdd FILL
XFILL_0__4676_ gnd vdd FILL
XFILL_3__2773_ gnd vdd FILL
XFILL_0__4256_ gnd vdd FILL
XFILL_1__3632_ gnd vdd FILL
XFILL_1__3212_ gnd vdd FILL
XFILL_3__3978_ gnd vdd FILL
XFILL_3__3558_ gnd vdd FILL
XFILL_1__4837_ gnd vdd FILL
XFILL_1__4417_ gnd vdd FILL
XFILL_4__2842_ gnd vdd FILL
XFILL_4__2422_ gnd vdd FILL
X_3487_ _302_ _301_ RDY_bF$buf0 _300_ vdd gnd OAI21X1
X_3067_ _1417__bF$buf9 vdd _1371_ clk_bF$buf8 \u_cpu.write_back\ vdd 
+ gnd
+ DFFSR
XFILL_0__2742_ gnd vdd FILL
XFILL_2__3701_ gnd vdd FILL
XFILL_4__3627_ gnd vdd FILL
XFILL_4__3207_ gnd vdd FILL
XFILL_0__3947_ gnd vdd FILL
XFILL_0__3527_ gnd vdd FILL
XFILL_1__4590_ gnd vdd FILL
XFILL_1__4170_ gnd vdd FILL
XFILL_3__4096_ gnd vdd FILL
XFILL_2__4906_ gnd vdd FILL
XFILL_1__2903_ gnd vdd FILL
XFILL_3__2829_ gnd vdd FILL
XFILL_3__2409_ gnd vdd FILL
XFILL_4__3380_ gnd vdd FILL
XFILL_2__3298_ gnd vdd FILL
XFILL_0__3280_ gnd vdd FILL
X_2758_ _2354__3_bF$buf5 _1976_ _1664_ _1977_ vdd gnd NAND3X1
XFILL_4__4585_ gnd vdd FILL
XFILL_4__4165_ gnd vdd FILL
XFILL274050x18150 gnd vdd FILL
XFILL272550x10950 gnd vdd FILL
XFILL_3__2582_ gnd vdd FILL
XFILL_0__4485_ gnd vdd FILL
XFILL_0__4065_ gnd vdd FILL
X_4904_ _Addr_Bus[0] _2175_ _2179_ _2180_ vdd gnd NAND3X1
XFILL_1__3861_ gnd vdd FILL
XFILL_1__3441_ gnd vdd FILL
XFILL_1__3021_ gnd vdd FILL
XFILL_3__3787_ gnd vdd FILL
XFILL_3__3367_ gnd vdd FILL
XFILL_1__4646_ gnd vdd FILL
XFILL_1__4226_ gnd vdd FILL
X_3296_ _721_ _173_ _155_ _1404_ vdd gnd OAI21X1
XFILL_2__2989_ gnd vdd FILL
XFILL_0__2971_ gnd vdd FILL
XFILL_0__2551_ gnd vdd FILL
XFILL_2__2569_ gnd vdd FILL
XFILL_2__3930_ gnd vdd FILL
XFILL_2__3510_ gnd vdd FILL
XFILL_4__3856_ gnd vdd FILL
XFILL_4__3436_ gnd vdd FILL
XFILL_4__3016_ gnd vdd FILL
XFILL_0__3756_ gnd vdd FILL
XFILL_0__3336_ gnd vdd FILL
XFILL_2__4715_ gnd vdd FILL
XFILL_1__2712_ gnd vdd FILL
XFILL_3__2638_ gnd vdd FILL
XFILL_1__3917_ gnd vdd FILL
X_2987_ \u_pia_kbd.state\[0] _1499_ _1613_ vdd gnd NAND2X1
X_2567_ _2260_ _2258_ _1923__bF$buf2 _2261_ vdd gnd AOI21X1
XFILL_4__4394_ gnd vdd FILL
XFILL_0__4294_ gnd vdd FILL
XFILL_4__2707_ gnd vdd FILL
XFILL_0__2607_ gnd vdd FILL
X_4713_ _1684_ _1734_ _1733_ _1766_ vdd gnd NAND3X1
XFILL_1__3670_ gnd vdd FILL
XFILL_1__3250_ gnd vdd FILL
XFILL_3__3596_ gnd vdd FILL
XFILL_3__3176_ gnd vdd FILL
XFILL_1__4455_ gnd vdd FILL
XFILL_1__4035_ gnd vdd FILL
XFILL_4__2880_ gnd vdd FILL
XFILL_4__2460_ gnd vdd FILL
XFILL_0__2780_ gnd vdd FILL
XFILL_2__2798_ gnd vdd FILL
XFILL_0__2360_ gnd vdd FILL
XFILL_2__2378_ gnd vdd FILL
XFILL_4__3665_ gnd vdd FILL
XFILL_4__3245_ gnd vdd FILL
XFILL_0__3985_ gnd vdd FILL
XFILL_0__3565_ gnd vdd FILL
XFILL_4_BUFX2_insert50 gnd vdd FILL
XFILL_4_BUFX2_insert51 gnd vdd FILL
XFILL_4_BUFX2_insert52 gnd vdd FILL
XFILL_4_BUFX2_insert53 gnd vdd FILL
XFILL_2__4944_ gnd vdd FILL
XFILL_4_BUFX2_insert54 gnd vdd FILL
XFILL_4_BUFX2_insert55 gnd vdd FILL
XFILL_2__4524_ gnd vdd FILL
XFILL_4_BUFX2_insert56 gnd vdd FILL
XFILL_2__4104_ gnd vdd FILL
XFILL_4_BUFX2_insert57 gnd vdd FILL
XFILL_4_BUFX2_insert58 gnd vdd FILL
XFILL_4_BUFX2_insert59 gnd vdd FILL
XFILL_1__2941_ gnd vdd FILL
XFILL_1__2521_ gnd vdd FILL
XFILL_3__2447_ gnd vdd FILL
XFILL_1__3726_ gnd vdd FILL
XFILL_1__3306_ gnd vdd FILL
X_2796_ _1939_ _2354__3_bF$buf4 _1634__bF$buf4 _1940_ vdd gnd AOI21X1
X_2376_ _2353_[3] DO[3] vdd gnd BUFX2
XFILL_4__2936_ gnd vdd FILL
XFILL_4__2516_ gnd vdd FILL
XFILL_0__2836_ gnd vdd FILL
XFILL_0__2416_ gnd vdd FILL
X_4942_ DO_dsp[3] _2215_ vdd gnd INVX1
X_4522_ _1350_ _1251_ _1250_ vdd gnd NAND2X1
X_4102_ _869_ _868_ vdd gnd INVX1
XFILL_1__4684_ gnd vdd FILL
XFILL_1__4264_ gnd vdd FILL
XFILL_4__3894_ gnd vdd FILL
XFILL_4__3474_ gnd vdd FILL
XFILL_0__3794_ gnd vdd FILL
XFILL_0__3374_ gnd vdd FILL
XFILL_2__4753_ gnd vdd FILL
XFILL_2__4333_ gnd vdd FILL
XFILL_4__4679_ gnd vdd FILL
XFILL_4__4259_ gnd vdd FILL
XFILL_1__2750_ gnd vdd FILL
XFILL_3__2676_ gnd vdd FILL
XFILL_0__4579_ gnd vdd FILL
XFILL_0__4159_ gnd vdd FILL
XFILL_1__3955_ gnd vdd FILL
XFILL_1__3535_ gnd vdd FILL
XFILL_3__4822_ gnd vdd FILL
XFILL_3__4402_ gnd vdd FILL
XFILL_4__2745_ gnd vdd FILL
XFILL_0__2645_ gnd vdd FILL
X_4751_ _1779_ _1783_ _1804_ vdd gnd OR2X2
X_4331_ _1236_ _1076_ vdd gnd INVX2
XFILL_2__3604_ gnd vdd FILL
XFILL_1__4493_ gnd vdd FILL
XFILL_1__4073_ gnd vdd FILL
XFILL_2__4809_ gnd vdd FILL
XFILL_2_BUFX2_insert130 gnd vdd FILL
XFILL_2_BUFX2_insert131 gnd vdd FILL
XFILL_2_BUFX2_insert132 gnd vdd FILL
XFILL_2_BUFX2_insert133 gnd vdd FILL
XFILL_2_BUFX2_insert134 gnd vdd FILL
XFILL_2_BUFX2_insert135 gnd vdd FILL
XFILL_2_BUFX2_insert136 gnd vdd FILL
XFILL_2_BUFX2_insert137 gnd vdd FILL
XFILL_2_BUFX2_insert138 gnd vdd FILL
XFILL_2_BUFX2_insert139 gnd vdd FILL
XFILL_1__2806_ gnd vdd FILL
XFILL_4__3283_ gnd vdd FILL
XFILL_0__3183_ gnd vdd FILL
XFILL_2__4982_ gnd vdd FILL
XFILL_2__4562_ gnd vdd FILL
XFILL_2__4142_ gnd vdd FILL
XFILL_4__4488_ gnd vdd FILL
XFILL_4__4068_ gnd vdd FILL
X_3602_ \u_cpu.cond_code\[1] _750_ _407_ _406_ vdd gnd OAI21X1
XFILL_3__2485_ gnd vdd FILL
XFILL_0__4388_ gnd vdd FILL
XFILL_1_BUFX2_insert150 gnd vdd FILL
XFILL_1_BUFX2_insert151 gnd vdd FILL
XFILL_1_BUFX2_insert152 gnd vdd FILL
XFILL_1_BUFX2_insert153 gnd vdd FILL
XFILL_1_BUFX2_insert154 gnd vdd FILL
XFILL_1_BUFX2_insert155 gnd vdd FILL
XFILL_1_BUFX2_insert156 gnd vdd FILL
XFILL_1_BUFX2_insert157 gnd vdd FILL
XFILL_1_BUFX2_insert158 gnd vdd FILL
XFILL_1_BUFX2_insert159 gnd vdd FILL
X_4807_ _1813_ _1812_ _1854_ vdd gnd NAND2X1
XFILL_1__3764_ gnd vdd FILL
XFILL_1__3344_ gnd vdd FILL
XFILL_3__4631_ gnd vdd FILL
XFILL_3__4211_ gnd vdd FILL
XFILL_1__4969_ gnd vdd FILL
XFILL_1__4549_ gnd vdd FILL
XFILL_1__4129_ gnd vdd FILL
XFILL_4__2974_ gnd vdd FILL
XFILL_4__2554_ gnd vdd FILL
X_3199_ _1041_ _943_ _96_ _1366_ vdd gnd OAI21X1
XFILL_0__2454_ gnd vdd FILL
X_4980_ _2190_ _2192_ _2249_ vdd gnd NOR2X1
X_4560_ _1292_ _1310_ _1289_ _1288_ vdd gnd OAI21X1
X_4140_ _1334_ _906_ vdd gnd INVX2
XFILL_2__3833_ gnd vdd FILL
XFILL_2__3413_ gnd vdd FILL
XFILL_4__3759_ gnd vdd FILL
XFILL_4__3339_ gnd vdd FILL
XFILL_4__4700_ gnd vdd FILL
XFILL_0__3659_ gnd vdd FILL
XFILL_0__3239_ gnd vdd FILL
XFILL_0__4600_ gnd vdd FILL
XFILL_2__4618_ gnd vdd FILL
XFILL_1__2615_ gnd vdd FILL
XFILL_3__3902_ gnd vdd FILL
XFILL_2__4791_ gnd vdd FILL
XFILL_2__4371_ gnd vdd FILL
XFILL_4__4297_ gnd vdd FILL
X_3831_ \u_cpu.PC\[14] _873_ _625_ \u_cpu.ADD\[6] _624_ vdd 
+ gnd
+ AOI22X1
X_3411_ _629_ _346_ _241_ _2353_[2] vdd gnd OAI21X1
XFILL_0__4197_ gnd vdd FILL
X_4616_ _1345__bF$buf0 _1344_ vdd gnd INVX2
XFILL_1__3993_ gnd vdd FILL
XFILL_1__3573_ gnd vdd FILL
XFILL_3__3499_ gnd vdd FILL
XFILL_3__4860_ gnd vdd FILL
XFILL_3__4440_ gnd vdd FILL
XFILL_3__4020_ gnd vdd FILL
XFILL_1__4778_ gnd vdd FILL
XFILL_1__4358_ gnd vdd FILL
XFILL_4__2783_ gnd vdd FILL
XFILL_4__2363_ gnd vdd FILL
XFILL_0__2683_ gnd vdd FILL
XFILL_2__3642_ gnd vdd FILL
XFILL_2__3222_ gnd vdd FILL
XFILL_4__3988_ gnd vdd FILL
XFILL_4__3568_ gnd vdd FILL
XFILL_0__3888_ gnd vdd FILL
XFILL_0__3468_ gnd vdd FILL
XFILL_2__4847_ gnd vdd FILL
XFILL_2__4427_ gnd vdd FILL
XFILL_2__4007_ gnd vdd FILL
XFILL_1__2844_ gnd vdd FILL
XFILL_1__2424_ gnd vdd FILL
XFILL_3__3711_ gnd vdd FILL
XFILL_1__3629_ gnd vdd FILL
XFILL_1__3209_ gnd vdd FILL
XFILL_2__4180_ gnd vdd FILL
X_2699_ _2035_ _2033_ _2036_ vdd gnd NAND2X1
XFILL_3__4916_ gnd vdd FILL
X_3640_ _444_ _523_ _447_ _443_ vdd gnd NAND3X1
X_3220_ _342_ _800__bF$buf0 _110_ _1373_ vdd gnd OAI21X1
XFILL_2__2913_ gnd vdd FILL
XFILL_4__2839_ gnd vdd FILL
XFILL_4__2419_ gnd vdd FILL
XFILL_0__2739_ gnd vdd FILL
X_4845_ _1827_ _1886_ _1826_ _1887_ vdd gnd OAI21X1
X_4425_ _1318_ _1165_ _1162_ _1161_ vdd gnd OAI21X1
X_4005_ _776_ _2354_[7] vdd gnd INVX4
XFILL_1__3382_ gnd vdd FILL
XFILL_1__4587_ gnd vdd FILL
XFILL_1__4167_ gnd vdd FILL
XFILL_4__2592_ gnd vdd FILL
XFILL_0__2492_ gnd vdd FILL
XFILL_2__3871_ gnd vdd FILL
XFILL_2__3451_ gnd vdd FILL
XFILL_2__3031_ gnd vdd FILL
XFILL_4__3797_ gnd vdd FILL
XFILL_4__3377_ gnd vdd FILL
X_2911_ _1522_ _2354__4_bF$buf2 _1553_ vdd gnd AND2X2
XFILL_0__3697_ gnd vdd FILL
XFILL_0__3277_ gnd vdd FILL
XFILL_2__4656_ gnd vdd FILL
XFILL_2__4236_ gnd vdd FILL
XFILL_1__2653_ gnd vdd FILL
XFILL_3__2999_ gnd vdd FILL
XFILL_3__2579_ gnd vdd FILL
XBUFX2_insert0 _800_ _800__bF$buf4 vdd gnd BUFX2
XBUFX2_insert1 _800_ _800__bF$buf3 vdd gnd BUFX2
XBUFX2_insert2 _800_ _800__bF$buf2 vdd gnd BUFX2
XBUFX2_insert3 _800_ _800__bF$buf1 vdd gnd BUFX2
XBUFX2_insert4 _800_ _800__bF$buf0 vdd gnd BUFX2
XBUFX2_insert5 _1636_ _1636__bF$buf4 vdd gnd BUFX2
XBUFX2_insert6 _1636_ _1636__bF$buf3 vdd gnd BUFX2
XBUFX2_insert7 _1636_ _1636__bF$buf2 vdd gnd BUFX2
XBUFX2_insert8 _1636_ _1636__bF$buf1 vdd gnd BUFX2
XBUFX2_insert9 _1636_ _1636__bF$buf0 vdd gnd BUFX2
XFILL_3__3940_ gnd vdd FILL
XFILL_3__3520_ gnd vdd FILL
XFILL_1__3858_ gnd vdd FILL
XFILL_1__3438_ gnd vdd FILL
XFILL_1__3018_ gnd vdd FILL
XFILL_3__4725_ gnd vdd FILL
XFILL_3__4305_ gnd vdd FILL
XFILL_2__2722_ gnd vdd FILL
XFILL_4__2648_ gnd vdd FILL
XFILL_0__2968_ gnd vdd FILL
XFILL_0__2548_ gnd vdd FILL
X_4654_ _1689_ _1706_ \u_cpu.BI\[4] _1707_ vdd gnd OAI21X1
X_4234_ _987_ _986_ vdd gnd INVX1
XFILL_1__3191_ gnd vdd FILL
XFILL_2__3927_ gnd vdd FILL
XFILL_2__3507_ gnd vdd FILL
XFILL_1__4396_ gnd vdd FILL
XFILL_1__2709_ gnd vdd FILL
XFILL_2__3680_ gnd vdd FILL
XFILL_2__3260_ gnd vdd FILL
XFILL_4__3186_ gnd vdd FILL
X_2720_ _1663_ _1936_ _2015_ vdd gnd NOR2X1
XFILL_2__4885_ gnd vdd FILL
XFILL_2__4465_ gnd vdd FILL
XFILL_2__4045_ gnd vdd FILL
X_3925_ _709_ _1129__bF$buf0 _708_ _1446_ vdd gnd OAI21X1
X_3505_ _484_ _396_ _560_ _318_ vdd gnd NAND3X1
XFILL_1__2882_ gnd vdd FILL
XFILL_1__2462_ gnd vdd FILL
XFILL_3__2388_ gnd vdd FILL
XFILL_1__3667_ gnd vdd FILL
XFILL_1__3247_ gnd vdd FILL
XFILL_3__4954_ gnd vdd FILL
XFILL_3__4534_ gnd vdd FILL
XFILL_3__4114_ gnd vdd FILL
XFILL_2__2951_ gnd vdd FILL
XFILL_2__2531_ gnd vdd FILL
XFILL_4__2877_ gnd vdd FILL
XFILL_4__2457_ gnd vdd FILL
XFILL_0__2777_ gnd vdd FILL
XFILL_0__2357_ gnd vdd FILL
X_4883_ DO_woz[6] _2159_ vdd gnd INVX1
X_4463_ \u_cpu.DIHOLD\[1] _1194_ vdd gnd INVX1
X_4043_ \u_cpu.state\[4] _906_ _811_ _810_ vdd gnd OAI21X1
XFILL_2__3736_ gnd vdd FILL
XFILL_2__3316_ gnd vdd FILL
XFILL_4__4603_ gnd vdd FILL
XFILL_0__4923_ gnd vdd FILL
XFILL_3__2600_ gnd vdd FILL
XFILL_0__4503_ gnd vdd FILL
XFILL_1__2938_ gnd vdd FILL
XFILL_1__2518_ gnd vdd FILL
XFILL_3__3805_ gnd vdd FILL
XFILL_2__4694_ gnd vdd FILL
XFILL_2__4274_ gnd vdd FILL
X_3734_ RDY_bF$buf0 _638_ _533_ vdd gnd NAND2X1
X_3314_ _166_ _169_ _165_ vdd gnd NOR2X1
XFILL_1__2691_ gnd vdd FILL
X_4939_ _2198_ DO_kbd[4] _2195_ _2213_ vdd gnd AOI21X1
X_4519_ \u_cpu.backwards\ \u_cpu.CO\ _1247_ vdd gnd OR2X2
XFILL_1__3896_ gnd vdd FILL
XFILL_1__3476_ gnd vdd FILL
XFILL_3__4763_ gnd vdd FILL
XFILL_3__4343_ gnd vdd FILL
XFILL_2__2760_ gnd vdd FILL
XFILL_4__2686_ gnd vdd FILL
XFILL_0__2586_ gnd vdd FILL
X_4692_ \u_cpu.alu_op\[1] \u_cpu.AI\[0] _1745_ vdd gnd NAND2X1
X_4272_ _1129__bF$buf3 _1022_ _1021_ vdd gnd NAND2X1
XFILL_2__3965_ gnd vdd FILL
XFILL_2__3545_ gnd vdd FILL
XFILL_4__4832_ gnd vdd FILL
XFILL_4__4412_ gnd vdd FILL
XFILL_0__4732_ gnd vdd FILL
XFILL_0__4312_ gnd vdd FILL
XFILL_1__2747_ gnd vdd FILL
XFILL_3__3614_ gnd vdd FILL
XFILL_2__4083_ gnd vdd FILL
XFILL_3__4819_ gnd vdd FILL
X_3963_ _1328__bF$buf0 _1084_ _739_ _738_ vdd gnd OAI21X1
X_3543_ _360_ _353_ _350_ \u_cpu.AI\[3] vdd gnd OAI21X1
X_3123_ _1417__bF$buf5 vdd _1475_ clk_bF$buf11 \u_cpu.op\[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2816_ gnd vdd FILL
XFILL273450x46950 gnd vdd FILL
X_4748_ _1800_ _1796_ _1801_ vdd gnd NAND2X1
X_4328_ _1328__bF$buf2 _1076_ _1074_ _1073_ vdd gnd OAI21X1
XFILL_1__3285_ gnd vdd FILL
XFILL_3__4572_ gnd vdd FILL
XFILL_3__4152_ gnd vdd FILL
XFILL_4__2495_ gnd vdd FILL
XFILL_0__2395_ gnd vdd FILL
X_4081_ _851_ _849_ _848_ vdd gnd NOR2X1
XFILL_2__3774_ gnd vdd FILL
XFILL_2__3354_ gnd vdd FILL
X_2814_ _2354__4_bF$buf0 _1919_ _1921_ _1922_ vdd gnd OAI21X1
XFILL_4__4641_ gnd vdd FILL
XFILL_4__4221_ gnd vdd FILL
XFILL_0__4961_ gnd vdd FILL
XFILL_2__4979_ gnd vdd FILL
XFILL_2__4559_ gnd vdd FILL
XFILL_0__4541_ gnd vdd FILL
XFILL_2__4139_ gnd vdd FILL
XFILL_0__4121_ gnd vdd FILL
XFILL_1__2976_ gnd vdd FILL
XFILL_1__2556_ gnd vdd FILL
XFILL_3__3843_ gnd vdd FILL
XFILL_3__3423_ gnd vdd FILL
XFILL_3__3003_ gnd vdd FILL
XFILL_1__4702_ gnd vdd FILL
XFILL_3__4628_ gnd vdd FILL
XFILL_3__4208_ gnd vdd FILL
X_3772_ _1305__bF$buf2 _911_ _885_ _571_ vdd gnd OAI21X1
X_3352_ \u_cpu.AN\ _625_ _189_ vdd gnd NAND2X1
XFILL_2__2625_ gnd vdd FILL
XFILL_4__3912_ gnd vdd FILL
X_4977_ _Addr_Bus[1] _2245_ _2173_ _2246_ vdd gnd NAND3X1
X_4557_ _1309_ _1304_ _1285_ vdd gnd NOR2X1
X_4137_ _1242_ _903_ vdd gnd INVX2
XFILL_0__3812_ gnd vdd FILL
XFILL_3__4381_ gnd vdd FILL
XFILL_1__4299_ gnd vdd FILL
XFILL_2__3583_ gnd vdd FILL
X_2623_ _1916_ _2109_ _2110_ vdd gnd NOR2X1
XFILL_4__4870_ gnd vdd FILL
XFILL_4__4450_ gnd vdd FILL
XFILL_4__4030_ gnd vdd FILL
XFILL_2__4788_ gnd vdd FILL
XFILL_0__4770_ gnd vdd FILL
XFILL_2__4368_ gnd vdd FILL
XFILL_0__4350_ gnd vdd FILL
X_3828_ _629_ _639_ _622_ _2353_[6] vdd gnd OAI21X1
X_3408_ _240_ _239_ _238_ vdd gnd AND2X2
XFILL_1__2785_ gnd vdd FILL
XFILL_1__2365_ gnd vdd FILL
XFILL_3__3652_ gnd vdd FILL
XFILL_3__3232_ gnd vdd FILL
XFILL_1__4931_ gnd vdd FILL
XFILL_1__4511_ gnd vdd FILL
XFILL_3__4857_ gnd vdd FILL
XFILL_3__4437_ gnd vdd FILL
XFILL_3__4017_ gnd vdd FILL
X_3581_ _1123_ _584_ _385_ vdd gnd NOR2X1
X_3161_ _1417__bF$buf2 vdd _1458_ clk_bF$buf11 \u_cpu.sed\ vdd 
+ gnd
+ DFFSR
XFILL_2__2854_ gnd vdd FILL
XFILL_2__2434_ gnd vdd FILL
XFILL_4__3721_ gnd vdd FILL
XFILL_4__3301_ gnd vdd FILL
X_4786_ _1813_ _1839_ vdd gnd INVX1
X_4366_ RDY_bF$buf3 _1110_ _1109_ \u_cpu.DIMUX\[6] vdd gnd OAI21X1
XFILL_0__3621_ gnd vdd FILL
XFILL_2__3639_ gnd vdd FILL
XFILL_2__3219_ gnd vdd FILL
XFILL_0__3201_ gnd vdd FILL
XFILL_3__4190_ gnd vdd FILL
XFILL_4__4926_ gnd vdd FILL
XFILL_4__4506_ gnd vdd FILL
XFILL_0__4826_ gnd vdd FILL
XFILL_3__2923_ gnd vdd FILL
XFILL_3__2503_ gnd vdd FILL
XFILL_0__4406_ gnd vdd FILL
XFILL_2__3392_ gnd vdd FILL
XFILL_3__3708_ gnd vdd FILL
X_2852_ _2354__3_bF$buf1 _1643_ vdd gnd INVX8
X_2432_ _42_ _39_ _1973_ _43_ vdd gnd AOI21X1
XFILL_2__4597_ gnd vdd FILL
XFILL_2__4177_ gnd vdd FILL
X_3637_ _1196__bF$buf6 _441_ _440_ vdd gnd NOR2X1
X_3217_ _1129__bF$buf3 _994_ _1004_ _108_ vdd gnd NAND3X1
XFILL_1__2594_ gnd vdd FILL
XFILL_3__3881_ gnd vdd FILL
XFILL_3__3461_ gnd vdd FILL
XFILL_1__3799_ gnd vdd FILL
XFILL_1__3379_ gnd vdd FILL
XFILL_1__4740_ gnd vdd FILL
XFILL_1__4320_ gnd vdd FILL
XFILL_3__4666_ gnd vdd FILL
XFILL_3__4246_ gnd vdd FILL
X_3390_ _227_ _224_ _223_ vdd gnd AND2X2
XFILL_2__2663_ gnd vdd FILL
XFILL_4__2589_ gnd vdd FILL
XFILL_4__3950_ gnd vdd FILL
XFILL_4__3530_ gnd vdd FILL
XFILL_0__2489_ gnd vdd FILL
X_4595_ _1351_ _1353_ _1326_ _1323_ vdd gnd NAND3X1
X_4175_ _937_ _935_ _934_ vdd gnd NAND2X1
XFILL_0__3850_ gnd vdd FILL
XFILL_2__3868_ gnd vdd FILL
XFILL_0__3430_ gnd vdd FILL
XFILL_2__3448_ gnd vdd FILL
XFILL_0__3010_ gnd vdd FILL
XFILL_2__3028_ gnd vdd FILL
X_2908_ _1526_ _2352_ _1555_ _1556_ vdd gnd NAND3X1
XFILL_4__4735_ gnd vdd FILL
XFILL_4__4315_ gnd vdd FILL
XFILL_3__2732_ gnd vdd FILL
XFILL_0__4635_ gnd vdd FILL
XFILL_0__4215_ gnd vdd FILL
XFILL_3__3937_ gnd vdd FILL
XFILL_3__3517_ gnd vdd FILL
X_2661_ _2072_ _2073_ vdd gnd INVX1
XFILL_4__2801_ gnd vdd FILL
X_3866_ _659_ _658_ _657_ vdd gnd AND2X2
X_3446_ \u_cpu.ADD\[5] _908_ _270_ vdd gnd NAND2X1
X_3026_ DO_kbd[0] _1502_ vdd gnd INVX1
XFILL_2__2719_ gnd vdd FILL
XFILL_0__2701_ gnd vdd FILL
XFILL_3__3690_ gnd vdd FILL
XFILL_3__3270_ gnd vdd FILL
XFILL_1__3188_ gnd vdd FILL
XFILL_0__3906_ gnd vdd FILL
XFILL_3__4895_ gnd vdd FILL
XFILL_3__4475_ gnd vdd FILL
XFILL_3__4055_ gnd vdd FILL
XFILL_2__2892_ gnd vdd FILL
XFILL_2__2472_ gnd vdd FILL
XFILL_4__2398_ gnd vdd FILL
XFILL_2__3677_ gnd vdd FILL
XFILL_2__3257_ gnd vdd FILL
X_2717_ _1643__bF$buf0 _1634__bF$buf3 _1661_ _2018_ vdd gnd OAI21X1
XFILL_4__4964_ gnd vdd FILL
XFILL_4__4544_ gnd vdd FILL
XFILL_4__4124_ gnd vdd FILL
XFILL_0__4864_ gnd vdd FILL
XFILL_0__4444_ gnd vdd FILL
XFILL_3__2541_ gnd vdd FILL
XFILL_0__4024_ gnd vdd FILL
XFILL_1__2879_ gnd vdd FILL
XFILL_1__2459_ gnd vdd FILL
XFILL_1__3820_ gnd vdd FILL
XFILL_1__3400_ gnd vdd FILL
XFILL_3__3746_ gnd vdd FILL
XFILL_3__3326_ gnd vdd FILL
X_2890_ _2354__6_bF$buf4 _1570_ vdd gnd INVX1
X_2470_ _1653_ _2028_ _2354__4_bF$buf1 _5_ vdd gnd OAI21X1
XFILL_1__4605_ gnd vdd FILL
XFILL_4__2610_ gnd vdd FILL
X_3675_ _1123_ _513_ _479_ _478_ vdd gnd OAI21X1
X_3255_ _671_ _1129__bF$buf4 _700_ _1384_ vdd gnd OAI21X1
XFILL_2__2948_ gnd vdd FILL
XFILL_0__2930_ gnd vdd FILL
XFILL_2__2528_ gnd vdd FILL
XFILL_0__2510_ gnd vdd FILL
XFILL_4__3815_ gnd vdd FILL
XFILL_0__3715_ gnd vdd FILL
XFILL_3__4284_ gnd vdd FILL
XFILL_0_BUFX2_insert70 gnd vdd FILL
XFILL_0_BUFX2_insert71 gnd vdd FILL
XFILL_2__3486_ gnd vdd FILL
XFILL_0_BUFX2_insert72 gnd vdd FILL
XFILL_0_BUFX2_insert73 gnd vdd FILL
XFILL_0_BUFX2_insert74 gnd vdd FILL
XFILL_0_BUFX2_insert75 gnd vdd FILL
XFILL_0_BUFX2_insert76 gnd vdd FILL
XFILL_0_BUFX2_insert77 gnd vdd FILL
XFILL_0_BUFX2_insert78 gnd vdd FILL
XFILL_0_BUFX2_insert79 gnd vdd FILL
X_2946_ _1521_ _1524_ _1525_ vdd gnd NOR2X1
X_2526_ _1935_ _1936_ _2354__4_bF$buf1 _2301_ vdd gnd OAI21X1
XFILL_4__4773_ gnd vdd FILL
XFILL_4__4353_ gnd vdd FILL
XFILL_0__4673_ gnd vdd FILL
XFILL_3__2770_ gnd vdd FILL
XFILL_0__4253_ gnd vdd FILL
XFILL_1__2688_ gnd vdd FILL
XFILL_3__3975_ gnd vdd FILL
XFILL_3__3555_ gnd vdd FILL
XFILL_1__4834_ gnd vdd FILL
XFILL_1__4414_ gnd vdd FILL
X_3484_ _298_ _300_ _297_ vdd gnd NAND2X1
X_3064_ _1417__bF$buf10 vdd _1432_ clk_bF$buf4 \u_cpu.state\[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2757_ gnd vdd FILL
XFILL_4__3624_ gnd vdd FILL
XFILL_4__3204_ gnd vdd FILL
X_4689_ \u_cpu.alu_shift_right\ \u_cpu.AI\[1] _1742_ vdd gnd NAND2X1
X_4269_ _1037__bF$buf3 _1111_ _1018_ vdd gnd NOR2X1
XFILL_0__3944_ gnd vdd FILL
XFILL_0__3524_ gnd vdd FILL
XFILL_3__4093_ gnd vdd FILL
XFILL_2__4903_ gnd vdd FILL
XFILL_4__4829_ gnd vdd FILL
XFILL_4__4409_ gnd vdd FILL
XFILL_1__2900_ gnd vdd FILL
XFILL_0__4729_ gnd vdd FILL
XFILL_3__2826_ gnd vdd FILL
XFILL_3__2406_ gnd vdd FILL
XFILL_0__4309_ gnd vdd FILL
XFILL_2__3295_ gnd vdd FILL
X_2755_ _1635__bF$buf2 _1636__bF$buf1 _2354__0_bF$buf0 _1980_ vdd gnd OAI21X1
XFILL_4__4582_ gnd vdd FILL
XFILL_4__4162_ gnd vdd FILL
XFILL_0__4482_ gnd vdd FILL
XFILL_0__4062_ gnd vdd FILL
XFILL_1__2497_ gnd vdd FILL
X_4901_ _Addr_Bus[7] _2177_ vdd gnd INVX1
XFILL_3__3784_ gnd vdd FILL
XFILL_3__3364_ gnd vdd FILL
XFILL_1__4643_ gnd vdd FILL
XFILL_1__4223_ gnd vdd FILL
XFILL_3__4569_ gnd vdd FILL
XFILL_3__4149_ gnd vdd FILL
X_3293_ \u_cpu.AXYS[1]\[6] _1041_ _153_ vdd gnd NAND2X1
XFILL_2__2986_ gnd vdd FILL
XFILL_2__2566_ gnd vdd FILL
XFILL274050x72150 gnd vdd FILL
XFILL_4__3853_ gnd vdd FILL
XFILL_4__3433_ gnd vdd FILL
XFILL_4__3013_ gnd vdd FILL
X_4498_ _1258_ _1253_ _1227_ _1226_ vdd gnd NAND3X1
X_4078_ _846_ _1078_ _845_ vdd gnd NOR2X1
XFILL_0__3753_ gnd vdd FILL
XFILL_0__3333_ gnd vdd FILL
XFILL274050x39750 gnd vdd FILL
XFILL_2__4712_ gnd vdd FILL
XFILL_4__4638_ gnd vdd FILL
XFILL_4__4218_ gnd vdd FILL
XFILL_0__4958_ gnd vdd FILL
XFILL_3__2635_ gnd vdd FILL
XFILL_0__4538_ gnd vdd FILL
XFILL_0__4118_ gnd vdd FILL
XFILL_1__3914_ gnd vdd FILL
X_2984_ DO_kbd[3] _1614_ vdd gnd INVX1
X_2564_ _1638__bF$buf3 _2354__3_bF$buf6 _2354__4_bF$buf5 _2263_ vdd gnd AOI21X1
XFILL_4__4391_ gnd vdd FILL
XFILL_0__4291_ gnd vdd FILL
XFILL_4__2704_ gnd vdd FILL
X_3769_ _1196__bF$buf3 _569_ _568_ vdd gnd NOR2X1
X_3349_ _189_ _187_ _190_ _2353_[7] vdd gnd NAND3X1
XFILL_0__2604_ gnd vdd FILL
X_4710_ _1742_ _1753_ _1762_ _1763_ vdd gnd NAND3X1
XFILL_3__3593_ gnd vdd FILL
XFILL_3__3173_ gnd vdd FILL
XFILL_4__3909_ gnd vdd FILL
XFILL273750x54150 gnd vdd FILL
XFILL_0__3809_ gnd vdd FILL
XFILL_1__4452_ gnd vdd FILL
XFILL_1__4032_ gnd vdd FILL
XFILL_3__4798_ gnd vdd FILL
XFILL_3__4378_ gnd vdd FILL
XFILL_2__2795_ gnd vdd FILL
XFILL_2__2375_ gnd vdd FILL
XFILL_4__3662_ gnd vdd FILL
XFILL_4__3242_ gnd vdd FILL
XFILL_0__3982_ gnd vdd FILL
XFILL_0__3562_ gnd vdd FILL
XFILL_4_BUFX2_insert20 gnd vdd FILL
XFILL_4_BUFX2_insert21 gnd vdd FILL
XFILL_4_BUFX2_insert22 gnd vdd FILL
XFILL_4_BUFX2_insert23 gnd vdd FILL
XFILL_4_BUFX2_insert24 gnd vdd FILL
XFILL_2__4941_ gnd vdd FILL
XFILL_4_BUFX2_insert25 gnd vdd FILL
XFILL_2__4521_ gnd vdd FILL
XFILL_2__4101_ gnd vdd FILL
XFILL_4__4867_ gnd vdd FILL
XFILL_4__4447_ gnd vdd FILL
XFILL_4__4027_ gnd vdd FILL
XFILL_0__4767_ gnd vdd FILL
XFILL_3__2444_ gnd vdd FILL
XFILL_0__4347_ gnd vdd FILL
XBUFX2_insert80 _2354_[3] _2354__3_bF$buf5 vdd gnd BUFX2
XBUFX2_insert81 _2354_[3] _2354__3_bF$buf4 vdd gnd BUFX2
XBUFX2_insert82 _2354_[3] _2354__3_bF$buf3 vdd gnd BUFX2
XBUFX2_insert83 _2354_[3] _2354__3_bF$buf2 vdd gnd BUFX2
XBUFX2_insert84 _2354_[3] _2354__3_bF$buf1 vdd gnd BUFX2
XFILL_1__3723_ gnd vdd FILL
XBUFX2_insert85 _2354_[3] _2354__3_bF$buf0 vdd gnd BUFX2
XFILL_1__3303_ gnd vdd FILL
XBUFX2_insert86 _2354_[0] _2354__0_bF$buf5 vdd gnd BUFX2
XBUFX2_insert87 _2354_[0] _2354__0_bF$buf4 vdd gnd BUFX2
XBUFX2_insert88 _2354_[0] _2354__0_bF$buf3 vdd gnd BUFX2
XBUFX2_insert89 _2354_[0] _2354__0_bF$buf2 vdd gnd BUFX2
XFILL_3__3649_ gnd vdd FILL
XFILL_3__3229_ gnd vdd FILL
X_2793_ _1652_ _1938_ _1943_ vdd gnd NOR2X1
X_2373_ _2353_[6] DO[6] vdd gnd BUFX2
XFILL_1__4928_ gnd vdd FILL
XFILL_1__4508_ gnd vdd FILL
XFILL_4__2933_ gnd vdd FILL
XFILL_4__2513_ gnd vdd FILL
X_3998_ _1118_ _1001_ _1099_ _770_ vdd gnd OAI21X1
X_3578_ _767_ _687_ _382_ vdd gnd NOR2X1
X_3158_ _1417__bF$buf1 vdd _1415_ clk_bF$buf5 \u_cpu.AXYS[2]\[5] vdd 
+ gnd
+ DFFSR
XFILL_0__2833_ gnd vdd FILL
XFILL_0__2413_ gnd vdd FILL
XFILL_4__3718_ gnd vdd FILL
XFILL_0__3618_ gnd vdd FILL
XFILL_1__4681_ gnd vdd FILL
XFILL_1__4261_ gnd vdd FILL
XFILL_3__4187_ gnd vdd FILL
XFILL_4__3891_ gnd vdd FILL
XFILL_4__3471_ gnd vdd FILL
XFILL_0__3791_ gnd vdd FILL
XFILL_0__3371_ gnd vdd FILL
XFILL_2__3389_ gnd vdd FILL
XFILL_2__4750_ gnd vdd FILL
XFILL_2__4330_ gnd vdd FILL
X_2849_ _1640_ _1645_ _1634__bF$buf1 _1646_ vdd gnd OAI21X1
X_2429_ _44_ _2354__3_bF$buf0 _3_ _45_ vdd gnd AOI21X1
XFILL_4__4676_ gnd vdd FILL
XFILL_4__4256_ gnd vdd FILL
XFILL_3__2673_ gnd vdd FILL
XFILL_0__4576_ gnd vdd FILL
XFILL_0__4156_ gnd vdd FILL
XFILL_1__3952_ gnd vdd FILL
XFILL_1__3532_ gnd vdd FILL
XFILL_3__3878_ gnd vdd FILL
XFILL_3__3458_ gnd vdd FILL
XFILL_1__4737_ gnd vdd FILL
XFILL_1__4317_ gnd vdd FILL
XFILL_4__2742_ gnd vdd FILL
X_3387_ _572_ _222_ \u_cpu.store\ _221_ vdd gnd OAI21X1
XFILL_0__2642_ gnd vdd FILL
XFILL_2__3601_ gnd vdd FILL
XFILL_4__3947_ gnd vdd FILL
XFILL_4__3527_ gnd vdd FILL
XFILL_0__3847_ gnd vdd FILL
XFILL_0__3427_ gnd vdd FILL
XFILL_0__3007_ gnd vdd FILL
XFILL_1__4490_ gnd vdd FILL
XFILL_1__4070_ gnd vdd FILL
XFILL_2__4806_ gnd vdd FILL
XFILL_2_BUFX2_insert100 gnd vdd FILL
XFILL_2_BUFX2_insert101 gnd vdd FILL
XFILL_2_BUFX2_insert102 gnd vdd FILL
XFILL_2_BUFX2_insert103 gnd vdd FILL
XFILL_2_BUFX2_insert104 gnd vdd FILL
XFILL_2_BUFX2_insert105 gnd vdd FILL
XFILL_2_BUFX2_insert106 gnd vdd FILL
XFILL_2_BUFX2_insert107 gnd vdd FILL
XFILL_2_BUFX2_insert108 gnd vdd FILL
XFILL_2_BUFX2_insert109 gnd vdd FILL
XFILL_1__2803_ gnd vdd FILL
XFILL_3__2729_ gnd vdd FILL
XFILL_4__3280_ gnd vdd FILL
XFILL_2__3198_ gnd vdd FILL
XFILL_0__3180_ gnd vdd FILL
X_2658_ _2354__3_bF$buf4 _2073_ _2075_ _2076_ vdd gnd OAI21X1
XFILL_4__4485_ gnd vdd FILL
XFILL_4__4065_ gnd vdd FILL
XFILL_3__2482_ gnd vdd FILL
XFILL_0__4385_ gnd vdd FILL
XFILL_1_BUFX2_insert120 gnd vdd FILL
XFILL_1_BUFX2_insert121 gnd vdd FILL
XFILL_1_BUFX2_insert122 gnd vdd FILL
XFILL_1_BUFX2_insert123 gnd vdd FILL
XFILL_1_BUFX2_insert124 gnd vdd FILL
XFILL_1_BUFX2_insert125 gnd vdd FILL
XFILL_1_BUFX2_insert126 gnd vdd FILL
XFILL_1_BUFX2_insert127 gnd vdd FILL
XFILL_1_BUFX2_insert128 gnd vdd FILL
XFILL_1_BUFX2_insert129 gnd vdd FILL
X_4804_ _1810_ _1837_ RDY_bF$buf3 _1852_ vdd gnd OAI21X1
XFILL_1__3761_ gnd vdd FILL
XFILL_1__3341_ gnd vdd FILL
XFILL_3__3687_ gnd vdd FILL
XFILL_3__3267_ gnd vdd FILL
XFILL_1__4966_ gnd vdd FILL
XFILL_1__4546_ gnd vdd FILL
XFILL_1__4126_ gnd vdd FILL
XFILL_4__2971_ gnd vdd FILL
XFILL_4__2551_ gnd vdd FILL
X_3196_ \u_cpu.PC\[0] _1196__bF$buf7 _94_ vdd gnd NAND2X1
XFILL_2__2889_ gnd vdd FILL
XFILL_2__2469_ gnd vdd FILL
XFILL_0__2451_ gnd vdd FILL
XFILL_2__3830_ gnd vdd FILL
XFILL_2__3410_ gnd vdd FILL
XFILL_4__3756_ gnd vdd FILL
XFILL_4__3336_ gnd vdd FILL
XFILL_0__3656_ gnd vdd FILL
XFILL_0__3236_ gnd vdd FILL
XFILL_2__4615_ gnd vdd FILL
XFILL_1__2612_ gnd vdd FILL
XFILL_3__2538_ gnd vdd FILL
XFILL_1__3817_ gnd vdd FILL
X_2887_ _1529_ _1558_ _1573_ vdd gnd NAND2X1
X_2467_ _1653_ _1651_ _1634__bF$buf1 _8_ vdd gnd OAI21X1
XFILL_4__4294_ gnd vdd FILL
XFILL_0__4194_ gnd vdd FILL
XFILL_4__2607_ gnd vdd FILL
XFILL_0__2927_ gnd vdd FILL
XFILL_0__2507_ gnd vdd FILL
X_4613_ \u_cpu.I\ _1342_ _1343_ _1341_ vdd gnd OAI21X1
XFILL_1__3990_ gnd vdd FILL
XFILL_1__3570_ gnd vdd FILL
XFILL_3__3496_ gnd vdd FILL
XFILL_1__4775_ gnd vdd FILL
XFILL_1__4355_ gnd vdd FILL
XFILL_4__2780_ gnd vdd FILL
XFILL_4__2360_ gnd vdd FILL
XFILL_0__2680_ gnd vdd FILL
XFILL_2__2698_ gnd vdd FILL
XFILL_4__3985_ gnd vdd FILL
XFILL_4__3565_ gnd vdd FILL
XFILL_0__3885_ gnd vdd FILL
XFILL_0__3465_ gnd vdd FILL
XFILL_2__4844_ gnd vdd FILL
XFILL_2__4424_ gnd vdd FILL
XFILL_2__4004_ gnd vdd FILL
XFILL_1__2841_ gnd vdd FILL
XFILL_1__2421_ gnd vdd FILL
XFILL_3__2767_ gnd vdd FILL
XFILL_1__3626_ gnd vdd FILL
XFILL_1__3206_ gnd vdd FILL
X_2696_ _2354__4_bF$buf2 _2038_ _2039_ vdd gnd NAND2X1
XFILL_3__4913_ gnd vdd FILL
XFILL_2__2910_ gnd vdd FILL
XFILL_4__2836_ gnd vdd FILL
XFILL_4__2416_ gnd vdd FILL
XFILL_0__2736_ gnd vdd FILL
X_4842_ _1884_ _1881_ _1882_ _1676_ vdd gnd OAI21X1
X_4422_ _1201_ _1188_ _1212_ _1158_ vdd gnd NOR3X1
X_4002_ \u_cpu.dst_reg\[0] _774_ vdd gnd INVX1
XFILL_1__4584_ gnd vdd FILL
XFILL_1__4164_ gnd vdd FILL
XFILL_4__3794_ gnd vdd FILL
XFILL_4__3374_ gnd vdd FILL
XFILL_0__3694_ gnd vdd FILL
XFILL_0__3274_ gnd vdd FILL
XFILL_2__4653_ gnd vdd FILL
XFILL_2__4233_ gnd vdd FILL
XFILL_4__4579_ gnd vdd FILL
XFILL_4__4159_ gnd vdd FILL
XFILL_1__2650_ gnd vdd FILL
XFILL_3__2996_ gnd vdd FILL
XFILL_0__4899_ gnd vdd FILL
XFILL_3__2576_ gnd vdd FILL
XFILL_0__4479_ gnd vdd FILL
XFILL_0__4059_ gnd vdd FILL
XFILL_1__3855_ gnd vdd FILL
XFILL_1__3435_ gnd vdd FILL
XFILL_1__3015_ gnd vdd FILL
XFILL_3__4722_ gnd vdd FILL
XFILL_3__4302_ gnd vdd FILL
XFILL_4__2645_ gnd vdd FILL
XFILL_0__2965_ gnd vdd FILL
XFILL_0__2545_ gnd vdd FILL
X_4651_ \u_cpu.BI\[4] _1704_ vdd gnd INVX1
X_4231_ _984_ _985_ _983_ vdd gnd NAND2X1
XFILL_2__3924_ gnd vdd FILL
XFILL_2__3504_ gnd vdd FILL
XFILL_0_BUFX2_insert160 gnd vdd FILL
XFILL_0_BUFX2_insert161 gnd vdd FILL
XFILL_0_BUFX2_insert162 gnd vdd FILL
XFILL_0_BUFX2_insert163 gnd vdd FILL
XFILL_0_BUFX2_insert164 gnd vdd FILL
XFILL_0_BUFX2_insert165 gnd vdd FILL
XFILL_0_BUFX2_insert166 gnd vdd FILL
XFILL_0_BUFX2_insert167 gnd vdd FILL
XFILL_1__4393_ gnd vdd FILL
XFILL_2__4709_ gnd vdd FILL
XFILL_1__2706_ gnd vdd FILL
XFILL_4__3183_ gnd vdd FILL
XFILL_2__4462_ gnd vdd FILL
XFILL_2__4042_ gnd vdd FILL
XFILL_4__4388_ gnd vdd FILL
X_3922_ _1000_ _726_ _706_ _705_ vdd gnd OAI21X1
X_3502_ _1123_ _1008_ _1035_ _315_ vdd gnd OAI21X1
XFILL_0__4288_ gnd vdd FILL
XFILL_3__2385_ gnd vdd FILL
X_4707_ _1759_ _1758_ _1760_ vdd gnd NAND2X1
XFILL_1__3664_ gnd vdd FILL
XFILL_1__3244_ gnd vdd FILL
XFILL_3__4951_ gnd vdd FILL
XFILL_3__4531_ gnd vdd FILL
XFILL_3__4111_ gnd vdd FILL
XFILL_1__4869_ gnd vdd FILL
XFILL_1__4449_ gnd vdd FILL
XFILL_1__4029_ gnd vdd FILL
XFILL_4__2454_ gnd vdd FILL
X_3099_ _1417__bF$buf9 vdd _1443_ clk_bF$buf8 \u_cpu.rotate\ vdd 
+ gnd
+ DFFSR
XFILL_0__2774_ gnd vdd FILL
X_4880_ _1675_ vdd _1679_ clk_bF$buf0 \u_cpu.CO\ vdd 
+ gnd
+ DFFSR
X_4460_ \u_cpu.DIMUX\[1] _1192_ vdd gnd INVX2
X_4040_ _1328__bF$buf4 _914_ _808_ _807_ vdd gnd OAI21X1
XFILL_2__3733_ gnd vdd FILL
XFILL_2__3313_ gnd vdd FILL
XFILL_4__3659_ gnd vdd FILL
XFILL_4__3239_ gnd vdd FILL
XFILL_4__4600_ gnd vdd FILL
XFILL_0__3979_ gnd vdd FILL
XFILL_0__3559_ gnd vdd FILL
XFILL_2__4938_ gnd vdd FILL
XFILL_0__4920_ gnd vdd FILL
XFILL_2__4518_ gnd vdd FILL
XFILL_0__4500_ gnd vdd FILL
XFILL_1__2935_ gnd vdd FILL
XFILL_1__2515_ gnd vdd FILL
XFILL_3__3802_ gnd vdd FILL
XFILL_2__4691_ gnd vdd FILL
XFILL_2__4271_ gnd vdd FILL
XFILL_4__4197_ gnd vdd FILL
X_3731_ _1196__bF$buf2 _1063_ _531_ _530_ vdd gnd OAI21X1
X_3311_ _1089_ _163_ _1196__bF$buf1 _162_ vdd gnd AOI21X1
XFILL_0__4097_ gnd vdd FILL
X_4936_ DI[4] _2210_ vdd gnd INVX1
X_4516_ _1345__bF$buf3 _1341_ _1245_ _1244_ vdd gnd OAI21X1
XFILL_1__3893_ gnd vdd FILL
XFILL_1__3473_ gnd vdd FILL
XFILL_3__3399_ gnd vdd FILL
XFILL_3__4760_ gnd vdd FILL
XFILL_3__4340_ gnd vdd FILL
XFILL271650x21750 gnd vdd FILL
XFILL_1__4678_ gnd vdd FILL
XFILL_1__4258_ gnd vdd FILL
XFILL_4__2683_ gnd vdd FILL
XFILL_0__2583_ gnd vdd FILL
XFILL_2__3962_ gnd vdd FILL
XFILL_2__3542_ gnd vdd FILL
XFILL_4__3888_ gnd vdd FILL
XFILL_4__3468_ gnd vdd FILL
XFILL_0__3788_ gnd vdd FILL
XFILL_0__3368_ gnd vdd FILL
XFILL_2__4747_ gnd vdd FILL
XFILL_2__4327_ gnd vdd FILL
XFILL_1__2744_ gnd vdd FILL
XFILL_3__3611_ gnd vdd FILL
XFILL_1__3949_ gnd vdd FILL
XFILL_1__3529_ gnd vdd FILL
XFILL_2__4080_ gnd vdd FILL
X_2599_ _2354__1_bF$buf0 _1961_ _2133_ _2134_ vdd gnd OAI21X1
XFILL_3__4816_ gnd vdd FILL
X_3960_ _750_ _736_ _741_ _1453_ vdd gnd MUX2X1
X_3540_ _349_ _348_ _347_ vdd gnd NAND2X1
X_3120_ _1417__bF$buf6 vdd _1449_ clk_bF$buf9 \u_cpu.AXYS[2]\[7] vdd 
+ gnd
+ DFFSR
XFILL_2__2813_ gnd vdd FILL
XFILL_4__2739_ gnd vdd FILL
XFILL_0__2639_ gnd vdd FILL
X_4745_ _1723_ _1726_ _1727_ _1798_ vdd gnd OAI21X1
X_4325_ _1326_ _1075_ _1070_ vdd gnd NAND2X1
XFILL_1__3282_ gnd vdd FILL
XFILL_1__4487_ gnd vdd FILL
XFILL_1__4067_ gnd vdd FILL
XFILL_4__2492_ gnd vdd FILL
XFILL_2__3771_ gnd vdd FILL
XFILL_2__3351_ gnd vdd FILL
XFILL_4__3697_ gnd vdd FILL
XFILL_4__3277_ gnd vdd FILL
X_2811_ _2354__1_bF$buf2 _1636__bF$buf4 _2354__3_bF$buf6 _1925_ vdd gnd OAI21X1
XFILL_0__3597_ gnd vdd FILL
XFILL_0__3177_ gnd vdd FILL
XFILL_2__4976_ gnd vdd FILL
XFILL_2__4556_ gnd vdd FILL
XFILL_2__4136_ gnd vdd FILL
XFILL_1__2973_ gnd vdd FILL
XFILL_1__2553_ gnd vdd FILL
XFILL_3__2899_ gnd vdd FILL
XFILL_3__2479_ gnd vdd FILL
XFILL_3__3840_ gnd vdd FILL
XFILL_3__3420_ gnd vdd FILL
XFILL_3__3000_ gnd vdd FILL
XFILL_1__3758_ gnd vdd FILL
XFILL_1__3338_ gnd vdd FILL
XFILL_3__4625_ gnd vdd FILL
XFILL_3__4205_ gnd vdd FILL
XFILL_2__2622_ gnd vdd FILL
XFILL_4__2968_ gnd vdd FILL
XFILL_4__2548_ gnd vdd FILL
X_4974_ DI[7] _2243_ vdd gnd INVX1
XFILL_0__2448_ gnd vdd FILL
X_4554_ _1286_ _1283_ _1282_ vdd gnd NOR2X1
X_4134_ _1305__bF$buf0 _904_ _901_ _900_ vdd gnd OAI21X1
XFILL_2__3827_ gnd vdd FILL
XFILL_2__3407_ gnd vdd FILL
XFILL_1__4296_ gnd vdd FILL
XFILL_1__2609_ gnd vdd FILL
XFILL_2__3580_ gnd vdd FILL
X_2620_ _2354__3_bF$buf1 _1641_ _2112_ _2113_ vdd gnd AOI21X1
XFILL_2__4785_ gnd vdd FILL
XFILL_2__4365_ gnd vdd FILL
X_3825_ _621_ _620_ _619_ vdd gnd AND2X2
X_3405_ _236_ _2354_[9] vdd gnd INVX1
XFILL_1__2782_ gnd vdd FILL
XFILL_1__2362_ gnd vdd FILL
XFILL_1__3987_ gnd vdd FILL
XFILL_1__3567_ gnd vdd FILL
XFILL_3__4854_ gnd vdd FILL
XFILL_3__4434_ gnd vdd FILL
XFILL_3__4014_ gnd vdd FILL
XFILL_2__2851_ gnd vdd FILL
XFILL_2__2431_ gnd vdd FILL
XFILL_4__2777_ gnd vdd FILL
XFILL_4__2357_ gnd vdd FILL
XFILL_0__2677_ gnd vdd FILL
X_4783_ _1835_ _1801_ _1833_ _1836_ vdd gnd AOI21X1
X_4363_ _1125_ _1108_ _1107_ _1106_ vdd gnd AOI21X1
XFILL_2__3636_ gnd vdd FILL
XFILL_2__3216_ gnd vdd FILL
XFILL_4__4923_ gnd vdd FILL
XFILL273150x79350 gnd vdd FILL
XFILL_4__4503_ gnd vdd FILL
XFILL_0__4823_ gnd vdd FILL
XFILL_3__2920_ gnd vdd FILL
XFILL_3__2500_ gnd vdd FILL
XFILL_0__4403_ gnd vdd FILL
XFILL_1__2838_ gnd vdd FILL
XFILL_1__2418_ gnd vdd FILL
XFILL_3__3705_ gnd vdd FILL
XFILL_2__4594_ gnd vdd FILL
XFILL_2__4174_ gnd vdd FILL
X_3634_ _1001_ _554_ _437_ vdd gnd NOR2X1
X_3214_ _1252_ _1328__bF$buf5 _847_ _106_ vdd gnd OAI21X1
XFILL_1__2591_ gnd vdd FILL
XFILL_2__2907_ gnd vdd FILL
X_4839_ \u_cpu.u_ALU8.BI7\ _1681__bF$buf3 _1882_ vdd gnd NAND2X1
X_4419_ RDY_bF$buf4 _1159_ _1156_ _1155_ vdd gnd NAND3X1
XFILL_1__3796_ gnd vdd FILL
XFILL_1__3376_ gnd vdd FILL
XFILL_3__4663_ gnd vdd FILL
XFILL_3__4243_ gnd vdd FILL
XBUFX2_insert140 _1305_ _1305__bF$buf1 vdd gnd BUFX2
XBUFX2_insert141 _1305_ _1305__bF$buf0 vdd gnd BUFX2
XBUFX2_insert142 _2354_[5] _2354__5_bF$buf4 vdd gnd BUFX2
XBUFX2_insert143 _2354_[5] _2354__5_bF$buf3 vdd gnd BUFX2
XFILL_2__2660_ gnd vdd FILL
XBUFX2_insert144 _2354_[5] _2354__5_bF$buf2 vdd gnd BUFX2
XBUFX2_insert145 _2354_[5] _2354__5_bF$buf1 vdd gnd BUFX2
XBUFX2_insert146 _2354_[5] _2354__5_bF$buf0 vdd gnd BUFX2
XBUFX2_insert147 _1328_ _1328__bF$buf5 vdd gnd BUFX2
XBUFX2_insert148 _1328_ _1328__bF$buf4 vdd gnd BUFX2
XFILL_4__2586_ gnd vdd FILL
XBUFX2_insert149 _1328_ _1328__bF$buf3 vdd gnd BUFX2
XFILL_0__2486_ gnd vdd FILL
X_4592_ _1321_ _1332_ _1322_ _1320_ vdd gnd NAND3X1
X_4172_ \u_cpu.AXYS[0]\[5] _977_ _931_ vdd gnd NAND2X1
XFILL_2__3865_ gnd vdd FILL
XFILL_2__3445_ gnd vdd FILL
XFILL_2__3025_ gnd vdd FILL
X_2905_ _1529_ _1558_ _1557_ _1559_ vdd gnd NAND3X1
XFILL_4__4732_ gnd vdd FILL
XFILL_4__4312_ gnd vdd FILL
XFILL_0__4632_ gnd vdd FILL
XFILL_0__4212_ gnd vdd FILL
XFILL_1__2647_ gnd vdd FILL
XFILL_3__3934_ gnd vdd FILL
XFILL_3__3514_ gnd vdd FILL
XFILL_3__4719_ gnd vdd FILL
X_3863_ _782_ \u_cpu.PC\[4] _655_ _654_ vdd gnd AOI21X1
X_3443_ _1138_ _886_ _268_ _267_ vdd gnd OAI21X1
X_3023_ DO_kbd[1] _1504_ vdd gnd INVX1
XFILL_2__2716_ gnd vdd FILL
X_4648_ _1685_ _1698_ _1700_ _1701_ vdd gnd OAI21X1
X_4228_ _1022_ _981_ _980_ vdd gnd NOR2X1
XFILL_1__3185_ gnd vdd FILL
XFILL_0__3903_ gnd vdd FILL
XFILL_3__4892_ gnd vdd FILL
XFILL_3__4472_ gnd vdd FILL
XFILL_3__4052_ gnd vdd FILL
XFILL_4__2395_ gnd vdd FILL
XFILL_2__3674_ gnd vdd FILL
XFILL_2__3254_ gnd vdd FILL
X_2714_ _1663_ _1961_ _2020_ _2021_ vdd gnd OAI21X1
XFILL_4__4961_ gnd vdd FILL
XFILL_4__4541_ gnd vdd FILL
XFILL_4__4121_ gnd vdd FILL
XFILL_0__4861_ gnd vdd FILL
XFILL_0__4441_ gnd vdd FILL
XFILL_2__4459_ gnd vdd FILL
XFILL_0__4021_ gnd vdd FILL
XFILL_2__4039_ gnd vdd FILL
X_3919_ \u_cpu.clc\ _703_ vdd gnd INVX1
XFILL_1__2876_ gnd vdd FILL
XFILL_1__2456_ gnd vdd FILL
XFILL_3__3743_ gnd vdd FILL
XFILL_3__3323_ gnd vdd FILL
XFILL_4_CLKBUF1_insert26 gnd vdd FILL
XFILL_4_CLKBUF1_insert27 gnd vdd FILL
XFILL_4_CLKBUF1_insert28 gnd vdd FILL
XFILL_1__4602_ gnd vdd FILL
XFILL_4_CLKBUF1_insert29 gnd vdd FILL
XFILL_3__4948_ gnd vdd FILL
XFILL_3__4528_ gnd vdd FILL
XFILL_3__4108_ gnd vdd FILL
X_3672_ _476_ _478_ _475_ vdd gnd NOR2X1
X_3252_ _1044_ _132_ vdd gnd INVX1
XFILL_2__2945_ gnd vdd FILL
XFILL_2__2525_ gnd vdd FILL
XFILL_4__3812_ gnd vdd FILL
X_4877_ _1675_ vdd _1670_ clk_bF$buf2 \u_cpu.ADD\[3] vdd 
+ gnd
+ DFFSR
X_4457_ _1318_ _1192_ _1190_ _1189_ vdd gnd OAI21X1
X_4037_ _805_ _804_ vdd gnd INVX1
XFILL_0__3712_ gnd vdd FILL
XFILL_3__4281_ gnd vdd FILL
XFILL_1__4199_ gnd vdd FILL
XFILL_0__4917_ gnd vdd FILL
XFILL_0_BUFX2_insert40 gnd vdd FILL
XFILL_0_BUFX2_insert41 gnd vdd FILL
XFILL_0_BUFX2_insert42 gnd vdd FILL
XFILL_2__3483_ gnd vdd FILL
XFILL_0_BUFX2_insert43 gnd vdd FILL
XFILL_0_BUFX2_insert44 gnd vdd FILL
XFILL_0_BUFX2_insert45 gnd vdd FILL
XFILL_0_BUFX2_insert46 gnd vdd FILL
XFILL_0_BUFX2_insert47 gnd vdd FILL
XFILL_0_BUFX2_insert48 gnd vdd FILL
XFILL_0_BUFX2_insert49 gnd vdd FILL
X_2943_ _2354__5_bF$buf1 _1528_ vdd gnd INVX1
X_2523_ _2303_ _2293_ _2354__5_bF$buf1 _2304_ vdd gnd MUX2X1
XFILL_4__4770_ gnd vdd FILL
XFILL_4__4350_ gnd vdd FILL
XFILL_2__4688_ gnd vdd FILL
XFILL_0__4670_ gnd vdd FILL
XFILL_0__4250_ gnd vdd FILL
XFILL_2__4268_ gnd vdd FILL
X_3728_ _541_ _528_ _527_ vdd gnd NOR2X1
X_3308_ _1196__bF$buf8 _1126_ _161_ _1410_ vdd gnd OAI21X1
XFILL_1__2685_ gnd vdd FILL
XFILL_3__3972_ gnd vdd FILL
XFILL_3__3552_ gnd vdd FILL
XFILL_1__4831_ gnd vdd FILL
XFILL_1__4411_ gnd vdd FILL
XFILL_3__4757_ gnd vdd FILL
XFILL_3__4337_ gnd vdd FILL
X_3481_ _307_ _1344_ _295_ _294_ vdd gnd AOI21X1
X_3061_ _1417__bF$buf10 vdd _1429_ clk_bF$buf4 \u_cpu.state\[2] vdd 
+ gnd
+ DFFSR
XFILL_2__2754_ gnd vdd FILL
XFILL_4__3621_ gnd vdd FILL
XFILL_4__3201_ gnd vdd FILL
X_4686_ _1696_ \u_cpu.alu_op\[2] _1738_ _1739_ vdd gnd OAI21X1
X_4266_ \u_cpu.op\[0] _1016_ vdd gnd INVX1
XFILL_0__3941_ gnd vdd FILL
XFILL_2__3959_ gnd vdd FILL
XFILL_0__3521_ gnd vdd FILL
XFILL_2__3539_ gnd vdd FILL
XFILL_3__4090_ gnd vdd FILL
XFILL_2__4900_ gnd vdd FILL
XFILL_4__4826_ gnd vdd FILL
XFILL_4__4406_ gnd vdd FILL
XFILL_3__2823_ gnd vdd FILL
XFILL_0__4726_ gnd vdd FILL
XFILL_3__2403_ gnd vdd FILL
XFILL_0__4306_ gnd vdd FILL
XFILL_2__3292_ gnd vdd FILL
XFILL_3__3608_ gnd vdd FILL
X_2752_ _1975_ _1978_ _1982_ _1983_ vdd gnd OAI21X1
XFILL_2__4497_ gnd vdd FILL
XFILL_2__4077_ gnd vdd FILL
X_3957_ RDY_bF$buf0 _735_ _734_ _1452_ vdd gnd OAI21X1
X_3537_ _345_ _1333_ _1179_ _356_ _344_ vdd 
+ gnd
+ OAI22X1
X_3117_ _1417__bF$buf3 vdd _1448_ clk_bF$buf1 \u_cpu.AXYS[2]\[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2494_ gnd vdd FILL
XFILL_3__3781_ gnd vdd FILL
XFILL_3__3361_ gnd vdd FILL
XFILL_1__3699_ gnd vdd FILL
XFILL_1__3279_ gnd vdd FILL
XFILL_1__4640_ gnd vdd FILL
XFILL_1__4220_ gnd vdd FILL
XFILL_3__4566_ gnd vdd FILL
XFILL_3__4146_ gnd vdd FILL
X_3290_ reset _181_ \u_cpu.IRHOLD\[6] _152_ vdd gnd OAI21X1
XFILL_2__2983_ gnd vdd FILL
XFILL_2__2563_ gnd vdd FILL
XFILL_4__2489_ gnd vdd FILL
XFILL_4__3850_ gnd vdd FILL
XFILL_4__3430_ gnd vdd FILL
XFILL_4__3010_ gnd vdd FILL
XFILL_0__2389_ gnd vdd FILL
X_4495_ _1293_ _1224_ _1223_ vdd gnd NAND2X1
X_4075_ _1328__bF$buf2 _1084_ _843_ _842_ vdd gnd OAI21X1
XFILL_2__3768_ gnd vdd FILL
XFILL_0__3750_ gnd vdd FILL
XFILL_2__3348_ gnd vdd FILL
XFILL_0__3330_ gnd vdd FILL
X_2808_ _2354__1_bF$buf1 _1636__bF$buf0 _1928_ vdd gnd NAND2X1
XFILL_4__4635_ gnd vdd FILL
XFILL_4__4215_ gnd vdd FILL
XFILL_0__4955_ gnd vdd FILL
XFILL_3__2632_ gnd vdd FILL
XFILL_0__4535_ gnd vdd FILL
XFILL_0__4115_ gnd vdd FILL
XFILL_1__3911_ gnd vdd FILL
XFILL_3__3837_ gnd vdd FILL
XFILL_3__3417_ gnd vdd FILL
X_2981_ \u_pia_kbd.state\[0] _1499_ _1603_ \u_pia_kbd.state\[2] _1616_ vdd 
+ gnd
+ AOI22X1
X_2561_ _2354__6_bF$buf2 _2265_ _2266_ vdd gnd NAND2X1
XFILL274050x93750 gnd vdd FILL
XFILL_4__2701_ gnd vdd FILL
X_3766_ _1105_ _766_ _565_ vdd gnd NOR2X1
X_3346_ \u_cpu.shift_right\ _186_ vdd gnd INVX1
XFILL_2__2619_ gnd vdd FILL
XFILL_0__2601_ gnd vdd FILL
XFILL_3__3590_ gnd vdd FILL
XFILL_3__3170_ gnd vdd FILL
XFILL_4__3906_ gnd vdd FILL
XFILL_0__3806_ gnd vdd FILL
XFILL_3__4795_ gnd vdd FILL
XFILL_3__4375_ gnd vdd FILL
XFILL_2__2792_ gnd vdd FILL
XFILL_2__2372_ gnd vdd FILL
XFILL_2__3997_ gnd vdd FILL
XFILL_2__3577_ gnd vdd FILL
X_2617_ _2354__0_bF$buf0 _2354__4_bF$buf1 _2116_ vdd gnd NAND2X1
XFILL_4__4864_ gnd vdd FILL
XFILL_4__4444_ gnd vdd FILL
XFILL_4__4024_ gnd vdd FILL
XFILL_0__4764_ gnd vdd FILL
XFILL_3__2861_ gnd vdd FILL
XFILL_3__2441_ gnd vdd FILL
XFILL_0__4344_ gnd vdd FILL
XFILL_1__2779_ gnd vdd FILL
XFILL_1__2359_ gnd vdd FILL
XBUFX2_insert50 _2354_[1] _2354__1_bF$buf1 vdd gnd BUFX2
XBUFX2_insert51 _2354_[1] _2354__1_bF$buf0 vdd gnd BUFX2
XFILL273750x75750 gnd vdd FILL
XBUFX2_insert52 _1315_ _1315__bF$buf3 vdd gnd BUFX2
XBUFX2_insert53 _1315_ _1315__bF$buf2 vdd gnd BUFX2
XBUFX2_insert54 _1315_ _1315__bF$buf1 vdd gnd BUFX2
XFILL_1__3720_ gnd vdd FILL
XFILL_1__3300_ gnd vdd FILL
XBUFX2_insert55 _1315_ _1315__bF$buf0 vdd gnd BUFX2
XBUFX2_insert56 _1638_ _1638__bF$buf3 vdd gnd BUFX2
XBUFX2_insert57 _1638_ _1638__bF$buf2 vdd gnd BUFX2
XBUFX2_insert58 _1638_ _1638__bF$buf1 vdd gnd BUFX2
XBUFX2_insert59 _1638_ _1638__bF$buf0 vdd gnd BUFX2
XFILL_3__3646_ gnd vdd FILL
XFILL_3__3226_ gnd vdd FILL
X_2790_ _1945_ _1943_ _1946_ vdd gnd NOR2X1
X_2370_ _2354__1_bF$buf2 AB[1] vdd gnd BUFX2
XFILL_1__4925_ gnd vdd FILL
XFILL_1__4505_ gnd vdd FILL
XFILL_4__2930_ gnd vdd FILL
XFILL_4__2510_ gnd vdd FILL
X_3995_ _1111_ _1123_ _767_ vdd gnd NOR2X1
X_3575_ _380_ _379_ vdd gnd INVX1
X_3155_ _1398_ clk_bF$buf0 \u_cpu.IRHOLD\[5] vdd gnd DFFPOSX1
XFILL_0__2830_ gnd vdd FILL
XFILL_2__2848_ gnd vdd FILL
XFILL_2__2428_ gnd vdd FILL
XFILL_0__2410_ gnd vdd FILL
XFILL_4__3715_ gnd vdd FILL
XFILL_0__3615_ gnd vdd FILL
XFILL_3__4184_ gnd vdd FILL
XFILL_3__2917_ gnd vdd FILL
XFILL_2__3386_ gnd vdd FILL
X_2846_ _2354__1_bF$buf4 _2354__0_bF$buf2 _2354__2_bF$buf2 _1649_ vdd gnd OAI21X1
X_2426_ _2354__4_bF$buf1 _45_ _47_ _48_ vdd gnd OAI21X1
XFILL_4__4673_ gnd vdd FILL
XFILL_4__4253_ gnd vdd FILL
XFILL_3__2670_ gnd vdd FILL
XFILL_0__4573_ gnd vdd FILL
XFILL_0__4153_ gnd vdd FILL
XFILL272250x64950 gnd vdd FILL
XFILL_1__2588_ gnd vdd FILL
XFILL_3__3875_ gnd vdd FILL
XFILL_3__3455_ gnd vdd FILL
XFILL_1__4734_ gnd vdd FILL
XFILL_1__4314_ gnd vdd FILL
X_3384_ \u_cpu.inc\ _701_ _671_ _219_ vdd gnd NAND3X1
XFILL_2__2657_ gnd vdd FILL
XFILL_4__3944_ gnd vdd FILL
XFILL_4__3524_ gnd vdd FILL
X_4589_ \u_cpu.state\[1] _1317_ vdd gnd INVX1
X_4169_ _1096_ _939_ _929_ vdd gnd NAND2X1
XFILL_0__3844_ gnd vdd FILL
XFILL_0__3424_ gnd vdd FILL
XFILL_0__3004_ gnd vdd FILL
XFILL_2__4803_ gnd vdd FILL
XFILL_4__4309_ gnd vdd FILL
XFILL_1__2800_ gnd vdd FILL
XFILL_0__4629_ gnd vdd FILL
XFILL_3__2726_ gnd vdd FILL
XFILL_0__4209_ gnd vdd FILL
XFILL_2__3195_ gnd vdd FILL
X_2655_ _2076_ _2078_ _1923__bF$buf3 _2079_ vdd gnd AOI21X1
XFILL_3_CLKBUF1_insert30 gnd vdd FILL
XFILL_4__4482_ gnd vdd FILL
XFILL_4__4062_ gnd vdd FILL
XFILL_3_CLKBUF1_insert31 gnd vdd FILL
XFILL_3_CLKBUF1_insert32 gnd vdd FILL
XFILL_3_CLKBUF1_insert33 gnd vdd FILL
XFILL_3_CLKBUF1_insert34 gnd vdd FILL
XFILL_3_CLKBUF1_insert35 gnd vdd FILL
XFILL_3_CLKBUF1_insert36 gnd vdd FILL
XFILL_3_CLKBUF1_insert37 gnd vdd FILL
XFILL_3_CLKBUF1_insert38 gnd vdd FILL
XFILL_0__4382_ gnd vdd FILL
XFILL_1__2397_ gnd vdd FILL
X_4801_ _1681__bF$buf1 _1790_ _1849_ _1670_ vdd gnd OAI21X1
XFILL_3__3684_ gnd vdd FILL
XFILL_3__3264_ gnd vdd FILL
XFILL_1__4963_ gnd vdd FILL
XFILL_1__4543_ gnd vdd FILL
XFILL_1__4123_ gnd vdd FILL
XFILL_3__4889_ gnd vdd FILL
XFILL_3__4469_ gnd vdd FILL
XFILL_3__4049_ gnd vdd FILL
X_3193_ _92_ _93_ _91_ vdd gnd NAND2X1
XFILL_2__2886_ gnd vdd FILL
XFILL_2__2466_ gnd vdd FILL
XFILL_4__3753_ gnd vdd FILL
XFILL_4__3333_ gnd vdd FILL
X_4398_ \u_cpu.DIMUX\[5] _1138_ vdd gnd INVX2
XFILL_0__3653_ gnd vdd FILL
XFILL_0__3233_ gnd vdd FILL
XFILL_2__4612_ gnd vdd FILL
XFILL_4__4958_ gnd vdd FILL
XFILL_4__4538_ gnd vdd FILL
XFILL_4__4118_ gnd vdd FILL
XFILL_0__4858_ gnd vdd FILL
XFILL_3__2535_ gnd vdd FILL
XFILL_0__4438_ gnd vdd FILL
XFILL_0__4018_ gnd vdd FILL
XFILL_1__3814_ gnd vdd FILL
X_2884_ \u_pia_dsp.state\[0] _1551_ _1576_ vdd gnd NAND2X1
X_2464_ _9_ _10_ _1920__bF$buf1 _6_ _11_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4291_ gnd vdd FILL
XFILL_0__4191_ gnd vdd FILL
XFILL_4__2604_ gnd vdd FILL
X_3669_ RDY_bF$buf6 _898_ _473_ _472_ vdd gnd OAI21X1
X_3249_ \u_cpu.adc_sbc\ _130_ _742_ _129_ vdd gnd OAI21X1
XFILL_0__2924_ gnd vdd FILL
XFILL_0__2504_ gnd vdd FILL
X_4610_ \u_cpu.state\[3] _1338_ vdd gnd INVX1
XFILL_3__3493_ gnd vdd FILL
XFILL_4__3809_ gnd vdd FILL
XFILL_0__3709_ gnd vdd FILL
XFILL_1__4772_ gnd vdd FILL
XFILL_1__4352_ gnd vdd FILL
XFILL_3__4698_ gnd vdd FILL
XFILL_3__4278_ gnd vdd FILL
XFILL_2__2695_ gnd vdd FILL
XFILL_4__3982_ gnd vdd FILL
XFILL_4__3562_ gnd vdd FILL
XFILL_0__3882_ gnd vdd FILL
XFILL_0__3462_ gnd vdd FILL
XFILL_2__4841_ gnd vdd FILL
XFILL_2__4421_ gnd vdd FILL
XFILL_2__4001_ gnd vdd FILL
XFILL_4__4767_ gnd vdd FILL
XFILL_4__4347_ gnd vdd FILL
XFILL_0__4667_ gnd vdd FILL
XFILL_3__2764_ gnd vdd FILL
XFILL_0__4247_ gnd vdd FILL
XFILL_1__3623_ gnd vdd FILL
XFILL_1__3203_ gnd vdd FILL
XFILL_3__3969_ gnd vdd FILL
XFILL_3__3549_ gnd vdd FILL
X_2693_ _1636__bF$buf2 _1647_ _1964_ _2042_ vdd gnd AOI21X1
XFILL_3__4910_ gnd vdd FILL
XFILL_1__4828_ gnd vdd FILL
XFILL_1__4408_ gnd vdd FILL
XFILL_4__2833_ gnd vdd FILL
XFILL_4__2413_ gnd vdd FILL
X_3898_ _1025_ _1036_ _995_ _686_ vdd gnd NAND3X1
X_3478_ _480_ _292_ _291_ vdd gnd AND2X2
X_3058_ _1417__bF$buf7 vdd _1489_ clk_bF$buf5 \u_cpu.PC\[8] vdd 
+ gnd
+ DFFSR
XFILL_0__2733_ gnd vdd FILL
XFILL274050x25350 gnd vdd FILL
XFILL_4__3618_ gnd vdd FILL
XFILL_0__3938_ gnd vdd FILL
XFILL_0__3518_ gnd vdd FILL
XFILL_1__4581_ gnd vdd FILL
XFILL_1__4161_ gnd vdd FILL
XFILL_3__4087_ gnd vdd FILL
XFILL_4__3791_ gnd vdd FILL
XFILL_4__3371_ gnd vdd FILL
XFILL_0__3691_ gnd vdd FILL
XFILL_2__3289_ gnd vdd FILL
XFILL_0__3271_ gnd vdd FILL
XFILL_2__4650_ gnd vdd FILL
XFILL_2__4230_ gnd vdd FILL
X_2749_ _1984_ _1949_ _1985_ _1986_ vdd gnd OAI21X1
XFILL_4__4576_ gnd vdd FILL
XFILL_4__4156_ gnd vdd FILL
XFILL_3__2993_ gnd vdd FILL
XFILL_0__4896_ gnd vdd FILL
XFILL_3__2573_ gnd vdd FILL
XFILL_0__4476_ gnd vdd FILL
XFILL_0__4056_ gnd vdd FILL
XFILL_1__3852_ gnd vdd FILL
XFILL_1__3432_ gnd vdd FILL
XFILL_1__3012_ gnd vdd FILL
XFILL_3__3778_ gnd vdd FILL
XFILL_3__3358_ gnd vdd FILL
XFILL_1__4637_ gnd vdd FILL
XFILL_1__4217_ gnd vdd FILL
XFILL_4__2642_ gnd vdd FILL
X_3287_ _1196__bF$buf8 _1345__bF$buf0 \u_cpu.store\ _150_ vdd gnd OAI21X1
XFILL_0__2542_ gnd vdd FILL
XFILL_2__3921_ gnd vdd FILL
XFILL_2__3501_ gnd vdd FILL
XFILL_0_BUFX2_insert130 gnd vdd FILL
XFILL_0_BUFX2_insert131 gnd vdd FILL
XFILL_0_BUFX2_insert132 gnd vdd FILL
XFILL_0_BUFX2_insert133 gnd vdd FILL
XFILL_0_BUFX2_insert134 gnd vdd FILL
XFILL_4__3847_ gnd vdd FILL
XFILL_0_BUFX2_insert135 gnd vdd FILL
XFILL_4__3427_ gnd vdd FILL
XFILL_0_BUFX2_insert136 gnd vdd FILL
XFILL_4__3007_ gnd vdd FILL
XFILL_0_BUFX2_insert137 gnd vdd FILL
XFILL_0_BUFX2_insert138 gnd vdd FILL
XFILL_0_BUFX2_insert139 gnd vdd FILL
XFILL_0__3747_ gnd vdd FILL
XFILL_0__3327_ gnd vdd FILL
XFILL_1__4390_ gnd vdd FILL
XFILL_2__4706_ gnd vdd FILL
XFILL_1__2703_ gnd vdd FILL
XFILL_3__2629_ gnd vdd FILL
XFILL_4__3180_ gnd vdd FILL
XFILL_1__3908_ gnd vdd FILL
X_2978_ \u_pia_kbd.state\[2] _1618_ _1616_ _1619_ vdd gnd NAND3X1
X_2558_ _2268_ _1937_ _1634__bF$buf5 _2269_ vdd gnd OAI21X1
XFILL_4__4385_ gnd vdd FILL
XFILL_0__4285_ gnd vdd FILL
XFILL_3__2382_ gnd vdd FILL
X_4704_ _1756_ _1757_ vdd gnd INVX1
XFILL_1__3661_ gnd vdd FILL
XFILL_1__3241_ gnd vdd FILL
XFILL_3__3587_ gnd vdd FILL
XFILL_3__3167_ gnd vdd FILL
XFILL_1__4866_ gnd vdd FILL
XFILL_1__4446_ gnd vdd FILL
XFILL_1__4026_ gnd vdd FILL
XFILL_4__2451_ gnd vdd FILL
X_3096_ _1417__bF$buf9 vdd _1384_ clk_bF$buf8 \u_cpu.shift\ vdd 
+ gnd
+ DFFSR
XFILL_2__2789_ gnd vdd FILL
XFILL_0__2771_ gnd vdd FILL
XFILL_2__2369_ gnd vdd FILL
XFILL_2__3730_ gnd vdd FILL
XFILL_2__3310_ gnd vdd FILL
XFILL_4__3656_ gnd vdd FILL
XFILL_4__3236_ gnd vdd FILL
XFILL_0__3976_ gnd vdd FILL
XFILL_0__3556_ gnd vdd FILL
XFILL_2__4935_ gnd vdd FILL
XFILL_2__4515_ gnd vdd FILL
XFILL_1__2932_ gnd vdd FILL
XFILL_1__2512_ gnd vdd FILL
XFILL_3__2858_ gnd vdd FILL
XFILL_3__2438_ gnd vdd FILL
XFILL_1__3717_ gnd vdd FILL
X_2787_ _2354__1_bF$buf2 _2354__2_bF$buf0 _2354__3_bF$buf6 _1949_ vdd gnd OAI21X1
X_2367_ _2354__4_bF$buf5 AB[4] vdd gnd BUFX2
XFILL_4__4194_ gnd vdd FILL
XFILL_0__4094_ gnd vdd FILL
XFILL_4__2927_ gnd vdd FILL
XFILL_4__2507_ gnd vdd FILL
XFILL_0__2827_ gnd vdd FILL
XFILL_0__2407_ gnd vdd FILL
X_4933_ DO_woz[4] _2207_ vdd gnd INVX1
X_4513_ _1350_ _1242_ _1241_ vdd gnd NAND2X1
XFILL_1__3890_ gnd vdd FILL
XFILL_1__3470_ gnd vdd FILL
XFILL_3__3396_ gnd vdd FILL
XFILL_1__4675_ gnd vdd FILL
XFILL_1__4255_ gnd vdd FILL
XFILL_4__2680_ gnd vdd FILL
XFILL_0__2580_ gnd vdd FILL
XFILL_2__2598_ gnd vdd FILL
XFILL_4__3885_ gnd vdd FILL
XFILL_4__3465_ gnd vdd FILL
XFILL_0__3785_ gnd vdd FILL
XFILL_0__3365_ gnd vdd FILL
XFILL_2__4744_ gnd vdd FILL
XFILL_2__4324_ gnd vdd FILL
XFILL_1__2741_ gnd vdd FILL
XFILL_3__2667_ gnd vdd FILL
XFILL_1__3946_ gnd vdd FILL
XFILL_1__3526_ gnd vdd FILL
X_2596_ _1634__bF$buf4 _2136_ _2137_ vdd gnd NAND2X1
XFILL_3__4813_ gnd vdd FILL
XFILL_2__2810_ gnd vdd FILL
XFILL_4__2736_ gnd vdd FILL
XFILL_0__2636_ gnd vdd FILL
X_4742_ _1738_ _1739_ _1736_ _1795_ vdd gnd MUX2X1
X_4322_ _1068_ _1077_ _1067_ vdd gnd NAND2X1
XFILL_1__4484_ gnd vdd FILL
XFILL_1__4064_ gnd vdd FILL
XFILL_4__3694_ gnd vdd FILL
XFILL_4__3274_ gnd vdd FILL
XFILL_0__3594_ gnd vdd FILL
XFILL_0__3174_ gnd vdd FILL
XFILL_2__4973_ gnd vdd FILL
XFILL_2__4553_ gnd vdd FILL
XFILL_2__4133_ gnd vdd FILL
XFILL_4__4899_ gnd vdd FILL
XFILL_4__4479_ gnd vdd FILL
XFILL_4__4059_ gnd vdd FILL
XFILL_1__2970_ gnd vdd FILL
XFILL_1__2550_ gnd vdd FILL
XFILL_0__4799_ gnd vdd FILL
XFILL_3__2896_ gnd vdd FILL
XFILL_0__4379_ gnd vdd FILL
XFILL_3__2476_ gnd vdd FILL
XFILL272550x72150 gnd vdd FILL
XFILL_1__3755_ gnd vdd FILL
XFILL_1__3335_ gnd vdd FILL
XFILL272550x39750 gnd vdd FILL
XFILL_3__4622_ gnd vdd FILL
XFILL_3__4202_ gnd vdd FILL
XFILL_4__2965_ gnd vdd FILL
XFILL_4__2545_ gnd vdd FILL
XFILL_0__2445_ gnd vdd FILL
X_4971_ _2198_ DO_kbd[0] _2195_ _2241_ vdd gnd AOI21X1
X_4551_ _1280_ _1279_ vdd gnd INVX1
X_4131_ _898_ _897_ vdd gnd INVX2
XFILL_2__3824_ gnd vdd FILL
XFILL_2__3404_ gnd vdd FILL
XFILL_1__4293_ gnd vdd FILL
XFILL_2__4609_ gnd vdd FILL
XFILL_1__2606_ gnd vdd FILL
XFILL_2__4782_ gnd vdd FILL
XFILL_2__4362_ gnd vdd FILL
XFILL_4__4288_ gnd vdd FILL
X_3822_ _617_ _2354_[10] vdd gnd INVX1
X_3402_ _782_ \u_cpu.PC\[1] _234_ _233_ vdd gnd AOI21X1
XFILL_0__4188_ gnd vdd FILL
X_4607_ \u_cpu.state\[1] _1336_ _1335_ vdd gnd NAND2X1
XFILL_1__3984_ gnd vdd FILL
XFILL_1__3564_ gnd vdd FILL
XFILL_3__4851_ gnd vdd FILL
XFILL_3__4431_ gnd vdd FILL
XFILL_3__4011_ gnd vdd FILL
XFILL_1__4769_ gnd vdd FILL
XFILL_1__4349_ gnd vdd FILL
XFILL_4__2774_ gnd vdd FILL
XFILL_0__2674_ gnd vdd FILL
X_4780_ \u_cpu.u_ALU8.BCD\ _1833_ vdd gnd INVX1
X_4360_ _1125_ \u_cpu.IRHOLD\[1] _1340_ _1103_ vdd gnd OAI21X1
XFILL_2__3633_ gnd vdd FILL
XFILL_2__3213_ gnd vdd FILL
XFILL_4__3979_ gnd vdd FILL
XFILL_4__3559_ gnd vdd FILL
XFILL_4__4920_ gnd vdd FILL
XFILL_4__4500_ gnd vdd FILL
XFILL_0__3879_ gnd vdd FILL
XFILL_0__3459_ gnd vdd FILL
XFILL_2__4838_ gnd vdd FILL
XFILL_0__4820_ gnd vdd FILL
XFILL_0__4400_ gnd vdd FILL
XFILL_2__4418_ gnd vdd FILL
XFILL_1__2835_ gnd vdd FILL
XFILL_1__2415_ gnd vdd FILL
XFILL_3__3702_ gnd vdd FILL
XFILL_2__4591_ gnd vdd FILL
XFILL_2__4171_ gnd vdd FILL
XFILL_4__4097_ gnd vdd FILL
XFILL_3__4907_ gnd vdd FILL
X_3631_ _435_ _452_ _434_ vdd gnd NOR2X1
X_3211_ \u_cpu.I\ _104_ _103_ vdd gnd NAND2X1
XFILL_2__2904_ gnd vdd FILL
X_4836_ _1871_ _1698_ _1878_ _1879_ vdd gnd OAI21X1
X_4416_ _1154_ _1183_ _1153_ vdd gnd NOR2X1
XFILL_1__3793_ gnd vdd FILL
XFILL_1__3373_ gnd vdd FILL
XFILL_3__3299_ gnd vdd FILL
XFILL_3__4660_ gnd vdd FILL
XFILL_3__4240_ gnd vdd FILL
XBUFX2_insert110 _1643_ _1643__bF$buf4 vdd gnd BUFX2
XBUFX2_insert111 _1643_ _1643__bF$buf3 vdd gnd BUFX2
XBUFX2_insert112 _1643_ _1643__bF$buf2 vdd gnd BUFX2
XBUFX2_insert113 _1643_ _1643__bF$buf1 vdd gnd BUFX2
XBUFX2_insert114 _1643_ _1643__bF$buf0 vdd gnd BUFX2
XFILL_1__4578_ gnd vdd FILL
XBUFX2_insert115 _1681_ _1681__bF$buf3 vdd gnd BUFX2
XFILL_1__4158_ gnd vdd FILL
XBUFX2_insert116 _1681_ _1681__bF$buf2 vdd gnd BUFX2
XBUFX2_insert117 _1681_ _1681__bF$buf1 vdd gnd BUFX2
XBUFX2_insert118 _1681_ _1681__bF$buf0 vdd gnd BUFX2
XFILL_4__2583_ gnd vdd FILL
XBUFX2_insert119 _1070_ _1070__bF$buf3 vdd gnd BUFX2
XFILL_0__2483_ gnd vdd FILL
XFILL_2__3862_ gnd vdd FILL
XFILL_2__3442_ gnd vdd FILL
XFILL_2__3022_ gnd vdd FILL
XFILL_4__3788_ gnd vdd FILL
XFILL_4__3368_ gnd vdd FILL
XFILL273150x10950 gnd vdd FILL
X_2902_ _1537_ _1560_ _1561_ _1593_ vdd gnd OAI21X1
XFILL_0__3688_ gnd vdd FILL
XFILL_0__3268_ gnd vdd FILL
XFILL_2__4647_ gnd vdd FILL
XFILL_2__4227_ gnd vdd FILL
XFILL_1__2644_ gnd vdd FILL
XFILL_3__3931_ gnd vdd FILL
XFILL_3__3511_ gnd vdd FILL
XFILL_1__3849_ gnd vdd FILL
XFILL_1__3429_ gnd vdd FILL
XFILL_1__3009_ gnd vdd FILL
X_2499_ _1928_ _2077_ _2326_ _2327_ vdd gnd AOI21X1
XFILL_3__4716_ gnd vdd FILL
X_3860_ _922_ \u_cpu.AXYS[3]\[5] \u_cpu.AXYS[0]\[5] _978_ _652_ vdd 
+ gnd
+ AOI22X1
X_3440_ \u_cpu.ADD\[6] _908_ _265_ vdd gnd NAND2X1
X_3020_ DO_kbd[2] _1506_ vdd gnd INVX1
XFILL_2__2713_ gnd vdd FILL
XFILL_4__2639_ gnd vdd FILL
XFILL_0__2539_ gnd vdd FILL
X_4645_ \u_cpu.alu_op\[3] \u_cpu.alu_op\[2] _1698_ vdd gnd NOR2X1
X_4225_ _979_ _1051_ _978_ vdd gnd AND2X2
XFILL_1__3182_ gnd vdd FILL
XFILL_0__3900_ gnd vdd FILL
XFILL_2__3918_ gnd vdd FILL
XFILL_1__4387_ gnd vdd FILL
XFILL_2__3671_ gnd vdd FILL
XFILL_2__3251_ gnd vdd FILL
XFILL_4__3597_ gnd vdd FILL
XFILL_4__3177_ gnd vdd FILL
X_2711_ _2354__1_bF$buf1 _1638__bF$buf0 _1643__bF$buf5 _2024_ vdd gnd OAI21X1
XFILL_0__3497_ gnd vdd FILL
XFILL_2__4456_ gnd vdd FILL
XFILL_2__4036_ gnd vdd FILL
X_3916_ \u_cpu.rotate\ _701_ vdd gnd INVX1
XFILL_1__2453_ gnd vdd FILL
XFILL_3__2799_ gnd vdd FILL
XFILL_3__2379_ gnd vdd FILL
XFILL_3__3740_ gnd vdd FILL
XFILL_3__3320_ gnd vdd FILL
XFILL_1__3658_ gnd vdd FILL
XFILL_1__3238_ gnd vdd FILL
XFILL_3__4945_ gnd vdd FILL
XFILL_3__4525_ gnd vdd FILL
XFILL_3__4105_ gnd vdd FILL
XFILL_2__2942_ gnd vdd FILL
XFILL_2__2522_ gnd vdd FILL
XFILL_4__2448_ gnd vdd FILL
XFILL_0__2768_ gnd vdd FILL
X_4874_ _1675_ vdd _1676_ clk_bF$buf0 \u_cpu.u_ALU8.BI7\ vdd 
+ gnd
+ DFFSR
X_4454_ _1187_ _1199_ _1186_ vdd gnd NOR2X1
X_4034_ _814_ _835_ _802_ _801_ vdd gnd AOI21X1
XFILL_2__3727_ gnd vdd FILL
XFILL_2__3307_ gnd vdd FILL
XFILL_1__4196_ gnd vdd FILL
XFILL_0__4914_ gnd vdd FILL
XFILL_1__2929_ gnd vdd FILL
XFILL_1__2509_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert11 gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
XFILL_2__3480_ gnd vdd FILL
XFILL_0_BUFX2_insert13 gnd vdd FILL
XFILL_0_BUFX2_insert14 gnd vdd FILL
XFILL_0_BUFX2_insert15 gnd vdd FILL
XFILL_0_BUFX2_insert16 gnd vdd FILL
XFILL_0_BUFX2_insert17 gnd vdd FILL
XFILL_0_BUFX2_insert18 gnd vdd FILL
XFILL_0_BUFX2_insert19 gnd vdd FILL
X_2940_ _2354_[9] _1531_ vdd gnd INVX1
X_2520_ _1961_ _1647_ _2000_ _2306_ vdd gnd OAI21X1
XFILL_2__4685_ gnd vdd FILL
XFILL_2__4265_ gnd vdd FILL
X_3725_ _1325__bF$buf2 _904_ _1196__bF$buf6 _524_ vdd gnd OAI21X1
X_3305_ _1037__bF$buf1 _160_ _159_ _1409_ vdd gnd OAI21X1
XFILL_1__2682_ gnd vdd FILL
XFILL_1__3887_ gnd vdd FILL
XFILL_1__3467_ gnd vdd FILL
XFILL_3__4754_ gnd vdd FILL
XFILL_3__4334_ gnd vdd FILL
XFILL_2__2751_ gnd vdd FILL
XFILL_4__2677_ gnd vdd FILL
XFILL_0__2997_ gnd vdd FILL
XFILL_0__2577_ gnd vdd FILL
X_4683_ \u_cpu.alu_shift_right\ \u_cpu.AI\[2] _1735_ _1733_ _1736_ vdd 
+ gnd
+ AOI22X1
X_4263_ _1016_ _1037__bF$buf1 _1015_ _1014_ _1476_ vdd 
+ gnd
+ AOI22X1
XFILL_2__3956_ gnd vdd FILL
XFILL_2__3536_ gnd vdd FILL
XFILL_4__4823_ gnd vdd FILL
XFILL_4__4403_ gnd vdd FILL
XFILL_3__2820_ gnd vdd FILL
XFILL_0__4723_ gnd vdd FILL
XFILL_3__2400_ gnd vdd FILL
XFILL_0__4303_ gnd vdd FILL
XFILL_1__2738_ gnd vdd FILL
XFILL_3__3605_ gnd vdd FILL
XFILL_2__4494_ gnd vdd FILL
XFILL_2__4074_ gnd vdd FILL
X_3954_ _1099_ _732_ _731_ vdd gnd NAND2X1
X_3534_ \u_cpu.ABH\[6] _342_ vdd gnd INVX1
X_3114_ _1417__bF$buf7 vdd _1473_ clk_bF$buf1 \u_cpu.AXYS[0]\[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2491_ gnd vdd FILL
XFILL_2__2807_ gnd vdd FILL
X_4739_ _1697_ _1791_ _1751_ _1792_ vdd gnd OAI21X1
X_4319_ _1352_ _1237_ _1064_ vdd gnd NOR2X1
XFILL_1__3696_ gnd vdd FILL
XFILL_1__3276_ gnd vdd FILL
XFILL_3__4983_ gnd vdd FILL
XFILL_3__4563_ gnd vdd FILL
XFILL_3__4143_ gnd vdd FILL
XFILL_2__2980_ gnd vdd FILL
XFILL_2__2560_ gnd vdd FILL
XFILL_4__2486_ gnd vdd FILL
XFILL_0__2386_ gnd vdd FILL
X_4492_ _1221_ _1282_ _1254_ _1220_ vdd gnd OAI21X1
X_4072_ _1328__bF$buf3 _870_ _1063_ _839_ vdd gnd OAI21X1
XFILL_2__3765_ gnd vdd FILL
XFILL_2__3345_ gnd vdd FILL
X_2805_ _1930_ _1920__bF$buf1 _1931_ vdd gnd AND2X2
XFILL_4__4632_ gnd vdd FILL
XFILL_4__4212_ gnd vdd FILL
XFILL_0__4952_ gnd vdd FILL
XFILL_0__4532_ gnd vdd FILL
XFILL_0__4112_ gnd vdd FILL
XFILL_1__2967_ gnd vdd FILL
XFILL_1__2547_ gnd vdd FILL
XFILL273750x7350 gnd vdd FILL
XFILL_3__3834_ gnd vdd FILL
XFILL_3__3414_ gnd vdd FILL
XFILL271950x50550 gnd vdd FILL
XFILL_3__4619_ gnd vdd FILL
X_3763_ _566_ _577_ _563_ _562_ vdd gnd AOI21X1
X_3343_ \u_cpu.D\ _185_ vdd gnd INVX1
XFILL_2__2616_ gnd vdd FILL
XFILL_4__3903_ gnd vdd FILL
X_4968_ DI[0] _2238_ vdd gnd INVX1
X_4548_ _1277_ _1276_ vdd gnd INVX1
X_4128_ _1326_ _1072_ _1046_ _894_ vdd gnd AOI21X1
XFILL_0__3803_ gnd vdd FILL
XFILL_3__4792_ gnd vdd FILL
XFILL_3__4372_ gnd vdd FILL
XFILL_2__3994_ gnd vdd FILL
XFILL_2__3574_ gnd vdd FILL
X_2614_ _2354__1_bF$buf0 _2354__0_bF$buf5 _2118_ _2119_ vdd gnd OAI21X1
XFILL_4__4861_ gnd vdd FILL
XFILL_4__4441_ gnd vdd FILL
XFILL_4__4021_ gnd vdd FILL
XFILL_2__4779_ gnd vdd FILL
XFILL_0__4761_ gnd vdd FILL
XFILL_2__4359_ gnd vdd FILL
XFILL_0__4341_ gnd vdd FILL
X_3819_ _636_ _614_ vdd gnd INVX1
XFILL_1__2776_ gnd vdd FILL
XFILL_1__2356_ gnd vdd FILL
XBUFX2_insert20 RDY RDY_bF$buf1 vdd gnd BUFX2
XBUFX2_insert21 RDY RDY_bF$buf0 vdd gnd BUFX2
XBUFX2_insert22 _2354_[7] _2354__7_bF$buf3 vdd gnd BUFX2
XBUFX2_insert23 _2354_[7] _2354__7_bF$buf2 vdd gnd BUFX2
XBUFX2_insert24 _2354_[7] _2354__7_bF$buf1 vdd gnd BUFX2
XBUFX2_insert25 _2354_[7] _2354__7_bF$buf0 vdd gnd BUFX2
XFILL_3__3643_ gnd vdd FILL
XFILL_3__3223_ gnd vdd FILL
XFILL_1__4922_ gnd vdd FILL
XFILL_1__4502_ gnd vdd FILL
XFILL_3__4848_ gnd vdd FILL
XFILL_3__4428_ gnd vdd FILL
XFILL_3__4008_ gnd vdd FILL
X_3992_ _765_ _764_ vdd gnd INVX1
X_3572_ _378_ _377_ _379_ _376_ vdd gnd NAND3X1
X_3152_ _1417__bF$buf9 vdd _1412_ clk_bF$buf8 \u_cpu.src_reg\[0] vdd 
+ gnd
+ DFFSR
XFILL_2__2845_ gnd vdd FILL
XFILL_2__2425_ gnd vdd FILL
XFILL_4__3712_ gnd vdd FILL
X_4777_ _1727_ _1788_ _1786_ _1830_ vdd gnd NAND3X1
X_4357_ _1125_ _1207_ _1101_ _1100_ vdd gnd AOI21X1
XFILL_0__3612_ gnd vdd FILL
XFILL_3__4181_ gnd vdd FILL
XFILL_4__4917_ gnd vdd FILL
XFILL_1__4099_ gnd vdd FILL
XFILL_0__4817_ gnd vdd FILL
XFILL_3__2914_ gnd vdd FILL
XFILL_2__3383_ gnd vdd FILL
X_2843_ _2354__1_bF$buf5 _2354__0_bF$buf1 _1636__bF$buf3 _1652_ vdd gnd OAI21X1
X_2423_ _1647_ _1636__bF$buf3 _1634__bF$buf1 _51_ vdd gnd AOI21X1
XFILL_4__4670_ gnd vdd FILL
XFILL_4__4250_ gnd vdd FILL
XFILL_0__4570_ gnd vdd FILL
XFILL_2__4588_ gnd vdd FILL
XFILL_2__4168_ gnd vdd FILL
XFILL_0__4150_ gnd vdd FILL
X_3628_ _554_ _581_ _432_ vdd gnd NOR2X1
X_3208_ _101_ _897_ _102_ _100_ vdd gnd AOI21X1
XFILL_1__2585_ gnd vdd FILL
XFILL_3__3872_ gnd vdd FILL
XFILL_3__3452_ gnd vdd FILL
XFILL_3__3032_ gnd vdd FILL
XFILL_1__4731_ gnd vdd FILL
XFILL_1__4311_ gnd vdd FILL
XFILL_3__4657_ gnd vdd FILL
XFILL_3__4237_ gnd vdd FILL
X_3381_ _1286_ _891_ \u_cpu.CO\ _216_ vdd gnd OAI21X1
XFILL_2__2654_ gnd vdd FILL
XFILL_4__3941_ gnd vdd FILL
XFILL_4__3521_ gnd vdd FILL
X_4586_ _1345__bF$buf3 _1349_ _1315__bF$buf3 _1314_ vdd gnd NAND3X1
X_4166_ _937_ _928_ _926_ vdd gnd AND2X2
XFILL_0__3841_ gnd vdd FILL
XFILL_2__3859_ gnd vdd FILL
XFILL_2__3439_ gnd vdd FILL
XFILL_0__3421_ gnd vdd FILL
XFILL_0__3001_ gnd vdd FILL
XFILL_2__3019_ gnd vdd FILL
XFILL_2__4800_ gnd vdd FILL
XFILL_4__4726_ gnd vdd FILL
XFILL_4__4306_ gnd vdd FILL
XFILL_3__2723_ gnd vdd FILL
XFILL_0__4626_ gnd vdd FILL
XFILL_0__4206_ gnd vdd FILL
XFILL_2__3192_ gnd vdd FILL
XFILL_3__3928_ gnd vdd FILL
XFILL_3__3508_ gnd vdd FILL
X_2652_ _2354__3_bF$buf2 _2081_ _2026_ _2082_ vdd gnd OAI21X1
XFILL_2__4397_ gnd vdd FILL
X_3857_ \u_cpu.DIMUX\[5] _867_ _780_ \u_cpu.ABL\[5] _649_ vdd 
+ gnd
+ AOI22X1
X_3437_ _1108_ _886_ _263_ _262_ vdd gnd OAI21X1
X_3017_ \u_pia_kbd.state\[2] _1512_ vdd gnd INVX1
XFILL_1__2394_ gnd vdd FILL
XFILL_3__3681_ gnd vdd FILL
XFILL_3__3261_ gnd vdd FILL
XFILL_1_BUFX2_insert80 gnd vdd FILL
XFILL_1_BUFX2_insert81 gnd vdd FILL
XFILL_1_BUFX2_insert82 gnd vdd FILL
XFILL_1_BUFX2_insert83 gnd vdd FILL
XFILL_1_BUFX2_insert84 gnd vdd FILL
XFILL_1_BUFX2_insert85 gnd vdd FILL
XFILL_1_BUFX2_insert86 gnd vdd FILL
XFILL_1_BUFX2_insert87 gnd vdd FILL
XFILL_1_BUFX2_insert88 gnd vdd FILL
XFILL_1_BUFX2_insert89 gnd vdd FILL
XFILL_1__3599_ gnd vdd FILL
XFILL_1__3179_ gnd vdd FILL
XFILL_1__4960_ gnd vdd FILL
XFILL_1__4540_ gnd vdd FILL
XFILL_1__4120_ gnd vdd FILL
XFILL_3__4886_ gnd vdd FILL
XFILL_3__4466_ gnd vdd FILL
XFILL_3__4046_ gnd vdd FILL
X_3190_ _1196__bF$buf0 _282_ \u_cpu.adc_sbc\ _89_ vdd gnd OAI21X1
XFILL_2__2883_ gnd vdd FILL
XFILL_2__2463_ gnd vdd FILL
XFILL_4__2389_ gnd vdd FILL
XFILL_4__3750_ gnd vdd FILL
XFILL_4__3330_ gnd vdd FILL
X_4395_ _1318_ _1138_ _1136_ _1135_ vdd gnd OAI21X1
XFILL_2__3668_ gnd vdd FILL
XFILL_0__3650_ gnd vdd FILL
XFILL_0__3230_ gnd vdd FILL
XFILL_2__3248_ gnd vdd FILL
X_2708_ _1634__bF$buf5 _2026_ _2027_ vdd gnd NAND2X1
XFILL_4__4955_ gnd vdd FILL
XFILL_4__4535_ gnd vdd FILL
XFILL_4__4115_ gnd vdd FILL
XFILL_0__4855_ gnd vdd FILL
XFILL_3__2532_ gnd vdd FILL
XFILL_0__4435_ gnd vdd FILL
XFILL_0__4015_ gnd vdd FILL
XFILL_1__3811_ gnd vdd FILL
XFILL_3__3737_ gnd vdd FILL
XFILL_3__3317_ gnd vdd FILL
X_2881_ _1566_ _1577_ _1578_ _1517_ vdd gnd OAI21X1
X_2461_ _2354__1_bF$buf5 _13_ _2354__4_bF$buf3 _14_ vdd gnd OAI21X1
XFILL_4__2601_ gnd vdd FILL
X_3666_ _470_ _472_ _542_ _469_ vdd gnd NAND3X1
X_3246_ _131_ \u_cpu.AV\ _127_ _126_ vdd gnd AOI21X1
XFILL_2__2939_ gnd vdd FILL
XFILL_0__2921_ gnd vdd FILL
XFILL_0__2501_ gnd vdd FILL
XFILL_2__2519_ gnd vdd FILL
XFILL_3__3490_ gnd vdd FILL
XFILL_4__3806_ gnd vdd FILL
XFILL_0__3706_ gnd vdd FILL
XFILL_3__4695_ gnd vdd FILL
XFILL_3__4275_ gnd vdd FILL
XFILL_2__2692_ gnd vdd FILL
XFILL_2__3897_ gnd vdd FILL
XFILL_2__3477_ gnd vdd FILL
X_2937_ _1527_ _1530_ _1533_ _1534_ vdd gnd NOR3X1
X_2517_ _2306_ _2307_ _2308_ _2309_ vdd gnd NAND3X1
XFILL_4__4764_ gnd vdd FILL
XFILL_4__4344_ gnd vdd FILL
XFILL_3__2761_ gnd vdd FILL
XFILL_0__4664_ gnd vdd FILL
XFILL_0__4244_ gnd vdd FILL
XFILL_1__2679_ gnd vdd FILL
XFILL_1__3620_ gnd vdd FILL
XFILL_1__3200_ gnd vdd FILL
XFILL_3__3966_ gnd vdd FILL
XFILL_3__3546_ gnd vdd FILL
X_2690_ _2044_ _2042_ _2354__5_bF$buf1 _2045_ vdd gnd OAI21X1
XFILL_1__4825_ gnd vdd FILL
XFILL_1__4405_ gnd vdd FILL
XFILL_4__2830_ gnd vdd FILL
XFILL_4__2410_ gnd vdd FILL
X_3895_ _997_ _688_ _684_ _683_ vdd gnd NAND3X1
X_3475_ \u_cpu.DIMUX\[6] _867_ _780_ \u_cpu.ABL\[6] _289_ vdd 
+ gnd
+ AOI22X1
X_3055_ _1417__bF$buf7 vdd _1367_ clk_bF$buf7 \u_cpu.AXYS[1]\[2] vdd 
+ gnd
+ DFFSR
XFILL_0__2730_ gnd vdd FILL
XFILL_2__2748_ gnd vdd FILL
XFILL_4__3615_ gnd vdd FILL
XFILL_0__3935_ gnd vdd FILL
XFILL_0__3515_ gnd vdd FILL
XFILL_3__4084_ gnd vdd FILL
XFILL_3__2817_ gnd vdd FILL
XFILL_2__3286_ gnd vdd FILL
X_2746_ _1923__bF$buf1 _1986_ _1988_ _1989_ vdd gnd NAND3X1
XFILL_4__4573_ gnd vdd FILL
XFILL_4__4153_ gnd vdd FILL
XFILL_0__4893_ gnd vdd FILL
XFILL_3__2990_ gnd vdd FILL
XFILL_3__2570_ gnd vdd FILL
XFILL_0__4473_ gnd vdd FILL
XFILL_0__4053_ gnd vdd FILL
XFILL274050x46950 gnd vdd FILL
XFILL_1__2488_ gnd vdd FILL
XFILL_3__3775_ gnd vdd FILL
XFILL_3__3355_ gnd vdd FILL
XFILL_1__4634_ gnd vdd FILL
XFILL_1__4214_ gnd vdd FILL
X_3284_ _1138_ _179_ _149_ _1398_ vdd gnd OAI21X1
XFILL_2__2977_ gnd vdd FILL
XFILL_2__2557_ gnd vdd FILL
XFILL_0_BUFX2_insert100 gnd vdd FILL
XFILL_0_BUFX2_insert101 gnd vdd FILL
XFILL_0_BUFX2_insert102 gnd vdd FILL
XFILL_0_BUFX2_insert103 gnd vdd FILL
XFILL_0_BUFX2_insert104 gnd vdd FILL
XFILL_4__3844_ gnd vdd FILL
XFILL_0_BUFX2_insert105 gnd vdd FILL
XFILL_4__3424_ gnd vdd FILL
XFILL_0_BUFX2_insert106 gnd vdd FILL
XFILL_4__3004_ gnd vdd FILL
XFILL_0_BUFX2_insert107 gnd vdd FILL
XFILL_0_BUFX2_insert108 gnd vdd FILL
XFILL_0_BUFX2_insert109 gnd vdd FILL
X_4489_ _1228_ _1217_ vdd gnd INVX1
X_4069_ _837_ _840_ _836_ vdd gnd NOR2X1
XFILL_0__3744_ gnd vdd FILL
XFILL_0__3324_ gnd vdd FILL
XFILL_2__4703_ gnd vdd FILL
XFILL_4__4629_ gnd vdd FILL
XFILL_4__4209_ gnd vdd FILL
XFILL273750x61350 gnd vdd FILL
XFILL_1__2700_ gnd vdd FILL
XFILL_0__4949_ gnd vdd FILL
XFILL_3__2626_ gnd vdd FILL
XFILL_0__4529_ gnd vdd FILL
XFILL_0__4109_ gnd vdd FILL
XFILL_1__3905_ gnd vdd FILL
X_2975_ _1619_ _1621_ _1493_ vdd gnd NAND2X1
X_2555_ _1659_ _2270_ _2271_ _2272_ vdd gnd AOI21X1
XFILL_4__4382_ gnd vdd FILL
XFILL_0__4282_ gnd vdd FILL
X_4701_ _1696_ \u_cpu.alu_op\[2] _1753_ _1754_ vdd gnd OAI21X1
XFILL_3__3584_ gnd vdd FILL
XFILL_1__4863_ gnd vdd FILL
XFILL_1__4443_ gnd vdd FILL
XFILL_1__4023_ gnd vdd FILL
XFILL_3__4789_ gnd vdd FILL
XFILL_3__4369_ gnd vdd FILL
X_3093_ _1417__bF$buf3 vdd _1481_ clk_bF$buf7 \u_cpu.AXYS[1]\[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2786_ gnd vdd FILL
XFILL_2__2366_ gnd vdd FILL
XFILL_4__3233_ gnd vdd FILL
X_4298_ \u_cpu.load_reg\ _1044_ _1069_ _1043_ vdd gnd AOI21X1
XFILL_0__3973_ gnd vdd FILL
XFILL_0__3553_ gnd vdd FILL
XFILL272250x50550 gnd vdd FILL
XFILL_2__4932_ gnd vdd FILL
XFILL_2__4512_ gnd vdd FILL
XFILL_4__4858_ gnd vdd FILL
XFILL_4__4438_ gnd vdd FILL
XFILL_4__4018_ gnd vdd FILL
XFILL_0__4758_ gnd vdd FILL
XFILL_3__2855_ gnd vdd FILL
XFILL_3__2435_ gnd vdd FILL
XFILL_0__4338_ gnd vdd FILL
XFILL_1__3714_ gnd vdd FILL
X_2784_ _1951_ _1948_ _1923__bF$buf3 _1952_ vdd gnd OAI21X1
X_2364_ _2354__7_bF$buf1 AB[7] vdd gnd BUFX2
XFILL_0__4091_ gnd vdd FILL
XFILL_1__4919_ gnd vdd FILL
XFILL_4__2924_ gnd vdd FILL
XFILL_4__2504_ gnd vdd FILL
X_3989_ _769_ _762_ _1129__bF$buf5 _761_ vdd gnd OAI21X1
X_3569_ _441_ _374_ _375_ _373_ vdd gnd OAI21X1
X_3149_ _1417__bF$buf7 vdd _1455_ clk_bF$buf1 \u_cpu.AXYS[2]\[0] vdd 
+ gnd
+ DFFSR
XFILL_0__2824_ gnd vdd FILL
XFILL_0__2404_ gnd vdd FILL
X_4930_ _2202_ _2204_ _2182_ _2205_ vdd gnd NAND3X1
X_4510_ \u_cpu.state\[2] \u_cpu.state\[3] _1238_ vdd gnd NOR2X1
XFILL_3__3393_ gnd vdd FILL
XFILL_4__3709_ gnd vdd FILL
XFILL_0__3609_ gnd vdd FILL
XFILL_1__4672_ gnd vdd FILL
XFILL_1__4252_ gnd vdd FILL
XFILL_3__4598_ gnd vdd FILL
XFILL_3__4178_ gnd vdd FILL
XFILL_2__2595_ gnd vdd FILL
XFILL_4__3882_ gnd vdd FILL
XFILL_4__3462_ gnd vdd FILL
XFILL_0__3782_ gnd vdd FILL
XFILL_0__3362_ gnd vdd FILL
XFILL_2__4741_ gnd vdd FILL
XFILL_2__4321_ gnd vdd FILL
XFILL_4__4667_ gnd vdd FILL
XFILL_4__4247_ gnd vdd FILL
XFILL_3__2664_ gnd vdd FILL
XFILL_0__4567_ gnd vdd FILL
XFILL_0__4147_ gnd vdd FILL
XFILL_1__3943_ gnd vdd FILL
XFILL_1__3523_ gnd vdd FILL
XFILL_3__3869_ gnd vdd FILL
XFILL_3__3449_ gnd vdd FILL
XFILL_3__3029_ gnd vdd FILL
X_2593_ _2139_ _2138_ _1923__bF$buf2 _2140_ vdd gnd AOI21X1
XFILL_3__4810_ gnd vdd FILL
XFILL_1__4728_ gnd vdd FILL
XFILL_1__4308_ gnd vdd FILL
XFILL_4__2733_ gnd vdd FILL
X_3798_ _1164_ _877_ _596_ _595_ vdd gnd OAI21X1
X_3378_ _1083_ _898_ _213_ vdd gnd NOR2X1
XFILL_0__2633_ gnd vdd FILL
XFILL_4__3938_ gnd vdd FILL
XFILL_4__3518_ gnd vdd FILL
XFILL_0__3838_ gnd vdd FILL
XFILL_0__3418_ gnd vdd FILL
XFILL_1__4481_ gnd vdd FILL
XFILL_1__4061_ gnd vdd FILL
XFILL_4__3691_ gnd vdd FILL
XFILL_4__3271_ gnd vdd FILL
XFILL_0__3591_ gnd vdd FILL
XFILL_2__3189_ gnd vdd FILL
XFILL_0__3171_ gnd vdd FILL
XFILL_2__4970_ gnd vdd FILL
XFILL_2__4550_ gnd vdd FILL
XFILL_2__4130_ gnd vdd FILL
X_2649_ _1920__bF$buf1 _2084_ _2083_ _2085_ vdd gnd NAND3X1
XFILL_4__4896_ gnd vdd FILL
XFILL_4__4476_ gnd vdd FILL
XFILL_4__4056_ gnd vdd FILL
XFILL_0__4796_ gnd vdd FILL
XFILL_3__2893_ gnd vdd FILL
XFILL_3__2473_ gnd vdd FILL
XFILL_0__4376_ gnd vdd FILL
XFILL_1__3752_ gnd vdd FILL
XFILL_1__3332_ gnd vdd FILL
XFILL_3__3678_ gnd vdd FILL
XFILL_3__3258_ gnd vdd FILL
XFILL_1__4957_ gnd vdd FILL
XFILL_1__4537_ gnd vdd FILL
XFILL_1__4117_ gnd vdd FILL
XFILL_4__2542_ gnd vdd FILL
X_3187_ _1253_ _1227_ _87_ vdd gnd NOR2X1
XFILL_0__2442_ gnd vdd FILL
XFILL_2__3821_ gnd vdd FILL
XFILL_2__3401_ gnd vdd FILL
XFILL_4__3747_ gnd vdd FILL
XFILL_4__3327_ gnd vdd FILL
XFILL_0__3647_ gnd vdd FILL
XFILL_0__3227_ gnd vdd FILL
XFILL_1__4290_ gnd vdd FILL
XFILL_2__4606_ gnd vdd FILL
XFILL_1__2603_ gnd vdd FILL
XFILL_3__2949_ gnd vdd FILL
XFILL_3__2529_ gnd vdd FILL
XFILL_1__3808_ gnd vdd FILL
X_2878_ _1579_ _1535_ _1580_ _1518_ vdd gnd OAI21X1
X_2458_ _1938_ _2093_ _17_ vdd gnd NOR2X1
XFILL_4__4285_ gnd vdd FILL
XFILL_0__4185_ gnd vdd FILL
XFILL_0__2918_ gnd vdd FILL
X_4604_ \u_cpu.state\[1] _1336_ _1332_ vdd gnd NOR2X1
XFILL_1__3981_ gnd vdd FILL
XFILL_1__3561_ gnd vdd FILL
XFILL_3__3487_ gnd vdd FILL
XFILL_1__4766_ gnd vdd FILL
XFILL_1__4346_ gnd vdd FILL
XFILL_4__2771_ gnd vdd FILL
XFILL_0__2671_ gnd vdd FILL
XFILL_2__2689_ gnd vdd FILL
XFILL_2__3630_ gnd vdd FILL
XFILL_2__3210_ gnd vdd FILL
XFILL_4__3976_ gnd vdd FILL
XFILL_4__3556_ gnd vdd FILL
XFILL_0__3876_ gnd vdd FILL
XFILL_0__3456_ gnd vdd FILL
XFILL_2__4835_ gnd vdd FILL
XFILL_2__4415_ gnd vdd FILL
XFILL_1__2832_ gnd vdd FILL
XFILL_1__2412_ gnd vdd FILL
XFILL_3__2758_ gnd vdd FILL
XFILL_1__3617_ gnd vdd FILL
X_2687_ _2047_ _2032_ _2014_ _2346_[5] vdd gnd OAI21X1
XFILL_4__4094_ gnd vdd FILL
XFILL_3__4904_ gnd vdd FILL
XFILL_2__2901_ gnd vdd FILL
XFILL_4__2827_ gnd vdd FILL
XFILL_4__2407_ gnd vdd FILL
XFILL_0__2727_ gnd vdd FILL
X_4833_ _1875_ _1815_ \u_cpu.alu_shift_right\ _1876_ vdd gnd AOI21X1
X_4413_ RDY_bF$buf2 _1152_ _1151_ \u_cpu.DIMUX\[4] vdd gnd OAI21X1
XFILL_1__3790_ gnd vdd FILL
XFILL_1__3370_ gnd vdd FILL
XFILL_3__3296_ gnd vdd FILL
XFILL_1__4575_ gnd vdd FILL
XFILL_1__4155_ gnd vdd FILL
XFILL_4__2580_ gnd vdd FILL
XFILL_0__2480_ gnd vdd FILL
XFILL_2__2498_ gnd vdd FILL
XFILL_4__3785_ gnd vdd FILL
XFILL_4__3365_ gnd vdd FILL
XFILL_0__3685_ gnd vdd FILL
XFILL_0__3265_ gnd vdd FILL
XFILL_2__4644_ gnd vdd FILL
XFILL_2__4224_ gnd vdd FILL
XFILL_1__2641_ gnd vdd FILL
XFILL_3__2987_ gnd vdd FILL
XFILL_3__2567_ gnd vdd FILL
XFILL_1__3846_ gnd vdd FILL
XFILL_1__3426_ gnd vdd FILL
XFILL_1__3006_ gnd vdd FILL
X_2496_ _2354__3_bF$buf0 _2354__0_bF$buf1 _1920__bF$buf4 _2330_ vdd gnd OAI21X1
XFILL_3__4713_ gnd vdd FILL
XFILL_2__2710_ gnd vdd FILL
XFILL_4__2636_ gnd vdd FILL
XFILL_0__2536_ gnd vdd FILL
X_4642_ _1683_ _1684_ _1694_ _1695_ vdd gnd OAI21X1
X_4222_ \u_cpu.DIMUX\[0] _1070__bF$buf2 _976_ _975_ vdd gnd OAI21X1
XFILL_2__3915_ gnd vdd FILL
XFILL_1__4384_ gnd vdd FILL
XFILL_4__3594_ gnd vdd FILL
XFILL_4__3174_ gnd vdd FILL
XFILL_0__3494_ gnd vdd FILL
XFILL_2__4453_ gnd vdd FILL
XFILL_2__4033_ gnd vdd FILL
XFILL_4__4799_ gnd vdd FILL
XFILL_4__4379_ gnd vdd FILL
X_3913_ \u_cpu.Z\ _699_ vdd gnd INVX1
XFILL_1__2450_ gnd vdd FILL
XFILL_0__4699_ gnd vdd FILL
XFILL_3__2796_ gnd vdd FILL
XFILL_0__4279_ gnd vdd FILL
XFILL_3__2376_ gnd vdd FILL
XFILL_1__3655_ gnd vdd FILL
XFILL_1__3235_ gnd vdd FILL
XFILL_3__4942_ gnd vdd FILL
XFILL_3__4522_ gnd vdd FILL
XFILL_3__4102_ gnd vdd FILL
XFILL_4__2445_ gnd vdd FILL
XFILL_0__2765_ gnd vdd FILL
X_4871_ _1675_ vdd _1667_ clk_bF$buf2 \u_cpu.ADD\[0] vdd 
+ gnd
+ DFFSR
X_4451_ \u_cpu.PC\[10] _1184_ vdd gnd INVX1
X_4031_ _859_ _800__bF$buf1 _799_ _1460_ vdd gnd AOI21X1
XFILL_2__3724_ gnd vdd FILL
XFILL_2__3304_ gnd vdd FILL
XFILL_1_CLKBUF1_insert26 gnd vdd FILL
XFILL_1_CLKBUF1_insert27 gnd vdd FILL
XFILL_1_CLKBUF1_insert28 gnd vdd FILL
XFILL_1_CLKBUF1_insert29 gnd vdd FILL
XFILL_1__4193_ gnd vdd FILL
XFILL_0__4911_ gnd vdd FILL
XFILL_2__4929_ gnd vdd FILL
XFILL_2__4509_ gnd vdd FILL
XFILL_1__2926_ gnd vdd FILL
XFILL_1__2506_ gnd vdd FILL
XFILL_2__4682_ gnd vdd FILL
XFILL_2__4262_ gnd vdd FILL
XFILL_4__4188_ gnd vdd FILL
X_3722_ _1325__bF$buf2 _903_ _1196__bF$buf5 _521_ vdd gnd OAI21X1
X_3302_ \u_cpu.AXYS[3]\[5] _921_ _157_ vdd gnd NAND2X1
XFILL_0__4088_ gnd vdd FILL
X_4927_ _Addr_Bus[1] _2201_ _2173_ _2202_ vdd gnd NAND3X1
X_4507_ _1350_ _1236_ _1235_ vdd gnd NAND2X1
XFILL_1__3884_ gnd vdd FILL
XFILL_1__3464_ gnd vdd FILL
XFILL_3__4751_ gnd vdd FILL
XFILL_3__4331_ gnd vdd FILL
XFILL_1__4669_ gnd vdd FILL
XFILL_1__4249_ gnd vdd FILL
XFILL_4__2674_ gnd vdd FILL
XFILL_0__2994_ gnd vdd FILL
XFILL_0__2574_ gnd vdd FILL
X_4680_ _1732_ _1730_ _1733_ vdd gnd NAND2X1
X_4260_ _1018_ _1012_ _1011_ vdd gnd NAND2X1
XFILL_2__3953_ gnd vdd FILL
XFILL_2__3533_ gnd vdd FILL
XFILL_4__3879_ gnd vdd FILL
XFILL_4__3459_ gnd vdd FILL
XFILL_4__4820_ gnd vdd FILL
XFILL_4__4400_ gnd vdd FILL
XFILL_0__3779_ gnd vdd FILL
XFILL_0__3359_ gnd vdd FILL
XFILL_2__4738_ gnd vdd FILL
XFILL_0__4720_ gnd vdd FILL
XFILL_0__4300_ gnd vdd FILL
XFILL_2__4318_ gnd vdd FILL
XFILL_1__2735_ gnd vdd FILL
XFILL272550x25350 gnd vdd FILL
XFILL_3__3602_ gnd vdd FILL
XFILL_2__4491_ gnd vdd FILL
XFILL_2__4071_ gnd vdd FILL
XFILL_3__4807_ gnd vdd FILL
X_3951_ _757_ _1020_ _728_ vdd gnd NOR2X1
X_3531_ _360_ _639_ _340_ \u_cpu.AI\[6] vdd gnd OAI21X1
X_3111_ _1417__bF$buf8 vdd _1391_ clk_bF$buf10 \u_cpu.ABL\[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2804_ gnd vdd FILL
X_4736_ _1727_ _1785_ _1788_ _1789_ vdd gnd NAND3X1
X_4316_ _1303_ _1233_ _1061_ vdd gnd NAND2X1
XFILL_1__3693_ gnd vdd FILL
XFILL_1__3273_ gnd vdd FILL
XFILL_3__3199_ gnd vdd FILL
XFILL_3__4980_ gnd vdd FILL
XFILL_3__4560_ gnd vdd FILL
XFILL_3__4140_ gnd vdd FILL
XFILL_1__4898_ gnd vdd FILL
XFILL_1__4478_ gnd vdd FILL
XFILL_1__4058_ gnd vdd FILL
XFILL_4__2483_ gnd vdd FILL
XFILL_0__2383_ gnd vdd FILL
XFILL_2__3762_ gnd vdd FILL
XFILL_2__3342_ gnd vdd FILL
XFILL_4__3688_ gnd vdd FILL
XFILL_4__3268_ gnd vdd FILL
X_2802_ _2354__1_bF$buf1 _1643__bF$buf5 _1636__bF$buf0 _1934_ vdd gnd NAND3X1
XFILL_0__3588_ gnd vdd FILL
XFILL_0__3168_ gnd vdd FILL
XFILL_2__4967_ gnd vdd FILL
XFILL_2__4547_ gnd vdd FILL
XFILL_2__4127_ gnd vdd FILL
XFILL_1__2964_ gnd vdd FILL
XFILL_1__2544_ gnd vdd FILL
XFILL_3__3831_ gnd vdd FILL
XFILL_3__3411_ gnd vdd FILL
XFILL_1__3749_ gnd vdd FILL
XFILL_1__3329_ gnd vdd FILL
X_2399_ _2119_ _2073_ _1929_ _1422_ vdd gnd OAI21X1
XFILL_3__4616_ gnd vdd FILL
X_3760_ _1196__bF$buf8 _1083_ _559_ vdd gnd NAND2X1
X_3340_ \u_cpu.ABH\[7] _1286_ _359_ \u_cpu.AN\ _183_ vdd 
+ gnd
+ AOI22X1
XFILL_2__2613_ gnd vdd FILL
XFILL_4__2539_ gnd vdd FILL
XFILL_4__3900_ gnd vdd FILL
XFILL_0__2859_ gnd vdd FILL
XFILL_0__2439_ gnd vdd FILL
X_4965_ DO_woz[0] _2235_ vdd gnd INVX1
X_4545_ _1298_ \u_cpu.ABL\[4] _1274_ _1273_ vdd gnd AOI21X1
X_4125_ _1325__bF$buf0 _911_ _892_ _891_ vdd gnd OAI21X1
XFILL_0__3800_ gnd vdd FILL
XFILL_2__3818_ gnd vdd FILL
XFILL_1__4287_ gnd vdd FILL
XFILL_2__3991_ gnd vdd FILL
XFILL_2__3571_ gnd vdd FILL
XFILL_4__3497_ gnd vdd FILL
X_2611_ _2120_ _2121_ _2117_ _2122_ vdd gnd AOI21X1
XFILL_0__3397_ gnd vdd FILL
XFILL_2__4776_ gnd vdd FILL
XFILL_2__4356_ gnd vdd FILL
X_3816_ _615_ _614_ _612_ _611_ vdd gnd OAI21X1
XFILL_1__2773_ gnd vdd FILL
XFILL273150x86550 gnd vdd FILL
XFILL_3__2699_ gnd vdd FILL
XFILL_3__3640_ gnd vdd FILL
XFILL_3__3220_ gnd vdd FILL
XFILL_1__3978_ gnd vdd FILL
XFILL_1__3558_ gnd vdd FILL
XFILL_3__4845_ gnd vdd FILL
XFILL_3__4425_ gnd vdd FILL
XFILL_3__4005_ gnd vdd FILL
XFILL_2__2842_ gnd vdd FILL
XFILL_2__2422_ gnd vdd FILL
XFILL_4__2768_ gnd vdd FILL
XFILL_0__2668_ gnd vdd FILL
X_4774_ _1822_ _1825_ _1826_ _1827_ vdd gnd OAI21X1
X_4354_ _1130_ _1129__bF$buf4 _1116_ _1098_ _1483_ vdd 
+ gnd
+ OAI22X1
XFILL_2__3627_ gnd vdd FILL
XFILL_2__3207_ gnd vdd FILL
XFILL_4__4914_ gnd vdd FILL
XFILL_1__4096_ gnd vdd FILL
XFILL_0__4814_ gnd vdd FILL
XFILL_3__2911_ gnd vdd FILL
XFILL_1__2829_ gnd vdd FILL
XFILL_1__2409_ gnd vdd FILL
XFILL_2__3380_ gnd vdd FILL
X_2840_ _1651_ _1652_ _1654_ _1655_ vdd gnd OAI21X1
X_2420_ _2354__5_bF$buf0 _53_ _48_ _54_ vdd gnd NAND3X1
XFILL272850x68550 gnd vdd FILL
XFILL_2__4585_ gnd vdd FILL
XFILL_2__4165_ gnd vdd FILL
X_3625_ _1305__bF$buf3 _904_ RDY_bF$buf6 _429_ vdd gnd OAI21X1
X_3205_ _1041_ _975_ _99_ _1369_ vdd gnd OAI21X1
XFILL_1__2582_ gnd vdd FILL
XFILL_1__3787_ gnd vdd FILL
XFILL_1__3367_ gnd vdd FILL
XFILL_3__4654_ gnd vdd FILL
XFILL_3__4234_ gnd vdd FILL
XFILL_2__2651_ gnd vdd FILL
XFILL_4__2997_ gnd vdd FILL
XFILL_4__2577_ gnd vdd FILL
XFILL_0__2897_ gnd vdd FILL
XFILL_0__2477_ gnd vdd FILL
X_4583_ _1349_ _1339_ _1312_ _1311_ vdd gnd NAND3X1
X_4163_ \u_cpu.AXYS[0]\[6] _977_ _923_ vdd gnd NAND2X1
XFILL_2__3856_ gnd vdd FILL
XFILL_2__3436_ gnd vdd FILL
XFILL_2__3016_ gnd vdd FILL
XFILL_4__4723_ gnd vdd FILL
XFILL_4__4303_ gnd vdd FILL
XFILL_3__2720_ gnd vdd FILL
XFILL_0__4623_ gnd vdd FILL
XFILL_0__4203_ gnd vdd FILL
XFILL_1__2638_ gnd vdd FILL
XFILL_3__3925_ gnd vdd FILL
XFILL_3__3505_ gnd vdd FILL
XFILL_2__4394_ gnd vdd FILL
X_3854_ _647_ _650_ _2354_[5] vdd gnd NAND2X1
X_3434_ _601_ _598_ _630_ _260_ vdd gnd OAI21X1
X_3014_ _1583_ _1584_ vdd gnd INVX1
XFILL_2__2707_ gnd vdd FILL
XFILL_1_BUFX2_insert50 gnd vdd FILL
XFILL_1_BUFX2_insert51 gnd vdd FILL
XFILL_1_BUFX2_insert52 gnd vdd FILL
XFILL_1_BUFX2_insert53 gnd vdd FILL
XFILL_1_BUFX2_insert54 gnd vdd FILL
XFILL_1_BUFX2_insert55 gnd vdd FILL
XFILL_1_BUFX2_insert56 gnd vdd FILL
XFILL_1_BUFX2_insert57 gnd vdd FILL
XFILL_1_BUFX2_insert58 gnd vdd FILL
XFILL_1_BUFX2_insert59 gnd vdd FILL
X_4639_ _1686_ _1688_ _1691_ _1692_ vdd gnd OAI21X1
X_4219_ \u_cpu.adj_bcd\ \u_cpu.adc_bcd\ \u_cpu.HC\ _973_ vdd gnd NAND3X1
XFILL_1__3596_ gnd vdd FILL
XFILL_1__3176_ gnd vdd FILL
XFILL_0_CLKBUF1_insert30 gnd vdd FILL
XFILL_0_CLKBUF1_insert31 gnd vdd FILL
XFILL_0_CLKBUF1_insert32 gnd vdd FILL
XFILL_0_CLKBUF1_insert33 gnd vdd FILL
XFILL_3__4883_ gnd vdd FILL
XFILL_0_CLKBUF1_insert34 gnd vdd FILL
XFILL_3__4463_ gnd vdd FILL
XFILL_0_CLKBUF1_insert35 gnd vdd FILL
XFILL_0_CLKBUF1_insert36 gnd vdd FILL
XFILL_3__4043_ gnd vdd FILL
XFILL_0_CLKBUF1_insert37 gnd vdd FILL
XFILL_0_CLKBUF1_insert38 gnd vdd FILL
XFILL_2__2880_ gnd vdd FILL
XFILL_2__2460_ gnd vdd FILL
XFILL_4__2386_ gnd vdd FILL
X_4392_ _1133_ _1144_ _1132_ vdd gnd NOR2X1
XFILL_2__3665_ gnd vdd FILL
XFILL_2__3245_ gnd vdd FILL
X_2705_ _2027_ _2025_ _2029_ _2030_ vdd gnd OAI21X1
XFILL_4__4952_ gnd vdd FILL
XFILL_4__4532_ gnd vdd FILL
XFILL_4__4112_ gnd vdd FILL
XFILL_0__4852_ gnd vdd FILL
XFILL_0__4432_ gnd vdd FILL
XFILL_0__4012_ gnd vdd FILL
XFILL_1__2447_ gnd vdd FILL
XFILL_3__3734_ gnd vdd FILL
XFILL_3__3314_ gnd vdd FILL
XFILL_3__4939_ gnd vdd FILL
XFILL_3__4519_ gnd vdd FILL
X_3663_ _1196__bF$buf8 _667_ _466_ vdd gnd NOR2X1
X_3243_ _325_ _800__bF$buf4 _125_ _1381_ vdd gnd OAI21X1
XFILL_2__2936_ gnd vdd FILL
XFILL_2__2516_ gnd vdd FILL
XFILL_4__3803_ gnd vdd FILL
X_4868_ _1681__bF$buf3 _1898_ _1907_ _1904_ _1679_ vdd 
+ gnd
+ AOI22X1
X_4448_ \u_cpu.DIHOLD\[2] _1181_ vdd gnd INVX1
X_4028_ _1305__bF$buf0 _903_ \u_cpu.NMI_edge\ _796_ vdd gnd OAI21X1
XFILL_0__3703_ gnd vdd FILL
XFILL_3__4692_ gnd vdd FILL
XFILL_3__4272_ gnd vdd FILL
XFILL_0__4908_ gnd vdd FILL
XFILL_2__3894_ gnd vdd FILL
XFILL_2__3474_ gnd vdd FILL
X_2934_ _2353_[2] _1536_ vdd gnd INVX1
X_2514_ _2289_ _2311_ _1940_ _2312_ vdd gnd NAND3X1
XFILL_4__4761_ gnd vdd FILL
XFILL_4__4341_ gnd vdd FILL
XFILL_0__4661_ gnd vdd FILL
XFILL_2__4679_ gnd vdd FILL
XFILL_0__4241_ gnd vdd FILL
XFILL_2__4259_ gnd vdd FILL
X_3719_ _1196__bF$buf5 _1047_ _519_ _518_ vdd gnd OAI21X1
XFILL_1__2676_ gnd vdd FILL
XFILL_3__3963_ gnd vdd FILL
XFILL_3__3543_ gnd vdd FILL
XFILL_1__4822_ gnd vdd FILL
XFILL_1__4402_ gnd vdd FILL
XFILL_3__4748_ gnd vdd FILL
XFILL_3__4328_ gnd vdd FILL
X_3892_ _682_ _989_ _681_ _680_ vdd gnd OAI21X1
X_3472_ _290_ _287_ _286_ vdd gnd AND2X2
X_3052_ _1417__bF$buf7 vdd _1464_ clk_bF$buf1 \u_cpu.AXYS[3]\[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2745_ gnd vdd FILL
XFILL_4__3612_ gnd vdd FILL
X_4677_ \u_cpu.alu_op\[1] _1729_ \u_cpu.alu_op\[0] _1730_ vdd gnd MUX2X1
X_4257_ \u_cpu.op\[2] _1009_ vdd gnd INVX1
XFILL_0__3932_ gnd vdd FILL
XFILL_0__3512_ gnd vdd FILL
XFILL_3__4081_ gnd vdd FILL
XFILL_4__4817_ gnd vdd FILL
XFILL_0__4717_ gnd vdd FILL
XFILL_3__2814_ gnd vdd FILL
XFILL_2__3283_ gnd vdd FILL
X_2743_ _1991_ _1636__bF$buf1 _2354__4_bF$buf1 _1992_ vdd gnd AOI21X1
XFILL_4__4570_ gnd vdd FILL
XFILL_4__4150_ gnd vdd FILL
XFILL_0__4890_ gnd vdd FILL
XFILL_2__4488_ gnd vdd FILL
XFILL_0__4470_ gnd vdd FILL
XFILL_2__4068_ gnd vdd FILL
XFILL_0__4050_ gnd vdd FILL
X_3948_ _727_ _726_ _986_ _725_ vdd gnd NAND3X1
X_3528_ \u_cpu.ADD\[0] _908_ _893_ _337_ vdd gnd AOI21X1
X_3108_ _1417__bF$buf9 vdd _1445_ clk_bF$buf8 \u_cpu.dst_reg\[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2485_ gnd vdd FILL
XFILL_3__3772_ gnd vdd FILL
XFILL_3__3352_ gnd vdd FILL
XFILL_1__4631_ gnd vdd FILL
XFILL_1__4211_ gnd vdd FILL
XFILL_3__4977_ gnd vdd FILL
XFILL_3__4557_ gnd vdd FILL
XFILL_3__4137_ gnd vdd FILL
X_3281_ reset _181_ \u_cpu.IRHOLD\[3] _147_ vdd gnd OAI21X1
XFILL_2__2974_ gnd vdd FILL
XFILL_2__2554_ gnd vdd FILL
XFILL_4__3841_ gnd vdd FILL
XFILL_4__3421_ gnd vdd FILL
XFILL_4__3001_ gnd vdd FILL
X_4486_ _1222_ _1258_ _1215_ _1214_ vdd gnd NAND3X1
X_4066_ _1327_ _1236_ _833_ vdd gnd NAND2X1
XFILL_2__3759_ gnd vdd FILL
XFILL_0__3741_ gnd vdd FILL
XFILL_0__3321_ gnd vdd FILL
XFILL_2__3339_ gnd vdd FILL
XFILL_2__4700_ gnd vdd FILL
XFILL_4__4626_ gnd vdd FILL
XFILL_4__4206_ gnd vdd FILL
XFILL_0__4946_ gnd vdd FILL
XFILL_3__2623_ gnd vdd FILL
XFILL_0__4526_ gnd vdd FILL
XFILL_0__4106_ gnd vdd FILL
XFILL_1__3902_ gnd vdd FILL
XFILL_3__3828_ gnd vdd FILL
XFILL_3__3408_ gnd vdd FILL
X_2972_ _1622_ _1500_ _1623_ _1494_ vdd gnd OAI21X1
X_2552_ _2354__1_bF$buf2 _1935_ _1925_ _2275_ vdd gnd AOI21X1
XFILL_2__4297_ gnd vdd FILL
X_3757_ _578_ _562_ _557_ _556_ vdd gnd NAND3X1
X_3337_ _1083_ _451_ RDY_bF$buf0 _181_ vdd gnd OAI21X1
XFILL_3__3581_ gnd vdd FILL
XFILL_1__3499_ gnd vdd FILL
XFILL_1__4860_ gnd vdd FILL
XFILL_1__4440_ gnd vdd FILL
XFILL_1__4020_ gnd vdd FILL
XFILL_3__4786_ gnd vdd FILL
XFILL_3__4366_ gnd vdd FILL
X_3090_ _1417__bF$buf5 vdd _1441_ clk_bF$buf11 \u_cpu.sec\ vdd 
+ gnd
+ DFFSR
XFILL_2__2783_ gnd vdd FILL
XFILL_2__2363_ gnd vdd FILL
XFILL_4__3650_ gnd vdd FILL
XFILL_4__3230_ gnd vdd FILL
X_4295_ _1275_ _1070__bF$buf2 _1040_ vdd gnd NAND2X1
XFILL_2__3988_ gnd vdd FILL
XFILL_0__3970_ gnd vdd FILL
XFILL_0__3550_ gnd vdd FILL
XFILL_2__3568_ gnd vdd FILL
X_2608_ _2123_ _1929_ _1924_ _2124_ _2125_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4855_ gnd vdd FILL
XFILL_4__4435_ gnd vdd FILL
XFILL_4__4015_ gnd vdd FILL
XFILL_0__4755_ gnd vdd FILL
XFILL_3__2852_ gnd vdd FILL
XFILL_3__2432_ gnd vdd FILL
XFILL_0__4335_ gnd vdd FILL
XFILL_1__3711_ gnd vdd FILL
XFILL_3__3637_ gnd vdd FILL
XFILL_3__3217_ gnd vdd FILL
X_2781_ _1644_ _1647_ _1954_ _1955_ vdd gnd OAI21X1
X_2361_ _2354_[10] AB[10] vdd gnd BUFX2
XFILL_1__4916_ gnd vdd FILL
XFILL_4__2921_ gnd vdd FILL
XFILL_4__2501_ gnd vdd FILL
X_3986_ \u_cpu.AXYS[2]\[0] _760_ _759_ vdd gnd NAND2X1
X_3566_ _1037__bF$buf2 _383_ _371_ _370_ vdd gnd OAI21X1
X_3146_ _1417__bF$buf5 vdd _1409_ clk_bF$buf11 \u_cpu.compare\ vdd 
+ gnd
+ DFFSR
XFILL_0__2821_ gnd vdd FILL
XFILL_2__2839_ gnd vdd FILL
XFILL_0__2401_ gnd vdd FILL
XFILL_2__2419_ gnd vdd FILL
XFILL_3__3390_ gnd vdd FILL
XFILL_4__3706_ gnd vdd FILL
XFILL_0__3606_ gnd vdd FILL
XFILL_3__4595_ gnd vdd FILL
XFILL_3__4175_ gnd vdd FILL
XFILL_2__2592_ gnd vdd FILL
XFILL_3__2908_ gnd vdd FILL
XFILL_2__3797_ gnd vdd FILL
XFILL_2__3377_ gnd vdd FILL
X_2837_ _2354__3_bF$buf4 _2354__4_bF$buf6 _1658_ vdd gnd NAND2X1
X_2417_ _2003_ _56_ _1634__bF$buf3 _57_ vdd gnd OAI21X1
XFILL_4__4664_ gnd vdd FILL
XFILL_4__4244_ gnd vdd FILL
XFILL_0__4984_ gnd vdd FILL
XFILL_3__2661_ gnd vdd FILL
XFILL_0__4564_ gnd vdd FILL
XFILL_0__4144_ gnd vdd FILL
XFILL_1__2999_ gnd vdd FILL
XFILL_1__2579_ gnd vdd FILL
XFILL_1__3940_ gnd vdd FILL
XFILL_1__3520_ gnd vdd FILL
XFILL_3__3866_ gnd vdd FILL
XFILL_3__3446_ gnd vdd FILL
XFILL_3__3026_ gnd vdd FILL
X_2590_ _1957_ _1958_ _2143_ vdd gnd NOR2X1
XFILL_1__4725_ gnd vdd FILL
XFILL_1__4305_ gnd vdd FILL
XFILL_4__2730_ gnd vdd FILL
X_3795_ _597_ _871_ _593_ _592_ vdd gnd AOI21X1
X_3375_ _211_ _672_ \u_cpu.rotate\ _210_ vdd gnd AOI21X1
XFILL_2__2648_ gnd vdd FILL
XFILL_0__2630_ gnd vdd FILL
XFILL_4__3935_ gnd vdd FILL
XFILL_4__3515_ gnd vdd FILL
XFILL_0__3835_ gnd vdd FILL
XFILL_0__3415_ gnd vdd FILL
XFILL_3__2717_ gnd vdd FILL
XFILL_2__3186_ gnd vdd FILL
X_2646_ _2354__0_bF$buf5 _1635__bF$buf3 _2088_ vdd gnd NAND2X1
XFILL_4__4893_ gnd vdd FILL
XFILL_4__4473_ gnd vdd FILL
XFILL_4__4053_ gnd vdd FILL
XFILL_0__4793_ gnd vdd FILL
XFILL_3__2890_ gnd vdd FILL
XFILL_3__2470_ gnd vdd FILL
XFILL_0__4373_ gnd vdd FILL
XFILL_1__2388_ gnd vdd FILL
XFILL_3__3675_ gnd vdd FILL
XFILL_3__3255_ gnd vdd FILL
XFILL_1__4954_ gnd vdd FILL
XFILL_1__4534_ gnd vdd FILL
XFILL_1__4114_ gnd vdd FILL
X_3184_ \u_cpu.AXYS[0]\[7] _977_ _85_ vdd gnd NAND2X1
XFILL_2__2877_ gnd vdd FILL
XFILL_2__2457_ gnd vdd FILL
XFILL_4__3744_ gnd vdd FILL
XFILL_4__3324_ gnd vdd FILL
X_4389_ \u_cpu.cli\ _1130_ vdd gnd INVX1
XFILL_0__3644_ gnd vdd FILL
XFILL_0__3224_ gnd vdd FILL
XFILL_2__4603_ gnd vdd FILL
XFILL_4__4949_ gnd vdd FILL
XFILL_4__4529_ gnd vdd FILL
XFILL_4__4109_ gnd vdd FILL
XFILL_1__2600_ gnd vdd FILL
XFILL_0__4849_ gnd vdd FILL
XFILL_3__2946_ gnd vdd FILL
XFILL_3__2526_ gnd vdd FILL
XFILL_0__4429_ gnd vdd FILL
XFILL_0__4009_ gnd vdd FILL
XFILL_1__3805_ gnd vdd FILL
X_2875_ _1581_ _1535_ _1582_ _1519_ vdd gnd OAI21X1
X_2455_ _2354__6_bF$buf0 _19_ _20_ vdd gnd NAND2X1
XFILL_4__4282_ gnd vdd FILL
XFILL_0__4182_ gnd vdd FILL
XFILL_0__2915_ gnd vdd FILL
X_4601_ \u_cpu.state\[4] _1330_ _1329_ vdd gnd NOR2X1
XFILL_3__3484_ gnd vdd FILL
XFILL_1__4763_ gnd vdd FILL
XFILL_1__4343_ gnd vdd FILL
XFILL_3__4689_ gnd vdd FILL
XFILL_3__4269_ gnd vdd FILL
XFILL_2__2686_ gnd vdd FILL
XFILL_4__3973_ gnd vdd FILL
XFILL_4__3553_ gnd vdd FILL
X_4198_ _968_ _956_ _954_ vdd gnd AND2X2
XFILL_0__3873_ gnd vdd FILL
XFILL_0__3453_ gnd vdd FILL
XFILL274050x32550 gnd vdd FILL
XFILL_2__4832_ gnd vdd FILL
XFILL_2__4412_ gnd vdd FILL
XFILL_4__4758_ gnd vdd FILL
XFILL_4__4338_ gnd vdd FILL
XFILL_3__2755_ gnd vdd FILL
XFILL_0__4658_ gnd vdd FILL
XFILL_0__4238_ gnd vdd FILL
XFILL_1__3614_ gnd vdd FILL
X_2684_ _2354__1_bF$buf2 _2354__2_bF$buf3 _2354__0_bF$buf3 _2050_ vdd gnd OAI21X1
XFILL_4__4091_ gnd vdd FILL
XFILL_3__4901_ gnd vdd FILL
XFILL_1__4819_ gnd vdd FILL
XFILL_4__2824_ gnd vdd FILL
XFILL_4__2404_ gnd vdd FILL
X_3889_ _683_ _678_ _1129__bF$buf3 _677_ vdd gnd OAI21X1
X_3469_ _1251_ _889_ _1329_ _284_ vdd gnd OAI21X1
X_3049_ _1417__bF$buf4 vdd _1364_ clk_bF$buf4 \u_cpu.PC\[0] vdd 
+ gnd
+ DFFSR
XFILL_0__2724_ gnd vdd FILL
X_4830_ _1689_ _1815_ \u_cpu.BI\[7] _1873_ vdd gnd OAI21X1
X_4410_ _1206_ \u_cpu.ABH\[4] _1149_ _1148_ vdd gnd AOI21X1
XFILL_3__3293_ gnd vdd FILL
XFILL_4__3609_ gnd vdd FILL
XFILL_0__3929_ gnd vdd FILL
XFILL_0__3509_ gnd vdd FILL
XFILL_1__4572_ gnd vdd FILL
XFILL_1__4152_ gnd vdd FILL
XFILL_3__4498_ gnd vdd FILL
XFILL_3__4078_ gnd vdd FILL
XFILL_2__2495_ gnd vdd FILL
XFILL273750x14550 gnd vdd FILL
XFILL_4__3782_ gnd vdd FILL
XFILL_4__3362_ gnd vdd FILL
XFILL_0__3682_ gnd vdd FILL
XFILL_0__3262_ gnd vdd FILL
XFILL_2__4641_ gnd vdd FILL
XFILL_2__4221_ gnd vdd FILL
XFILL_4__4567_ gnd vdd FILL
XFILL_4__4147_ gnd vdd FILL
XFILL_0__4887_ gnd vdd FILL
XFILL_3__2984_ gnd vdd FILL
XFILL_3__2564_ gnd vdd FILL
XFILL_0__4467_ gnd vdd FILL
XFILL_0__4047_ gnd vdd FILL
XFILL_1__3843_ gnd vdd FILL
XFILL_1__3423_ gnd vdd FILL
XFILL_1__3003_ gnd vdd FILL
XFILL_3__3769_ gnd vdd FILL
XFILL_3__3349_ gnd vdd FILL
X_2493_ _1643__bF$buf4 _1673_ _2332_ _2333_ vdd gnd AOI21X1
XFILL_3__4710_ gnd vdd FILL
XFILL_1__4628_ gnd vdd FILL
XFILL_1__4208_ gnd vdd FILL
XFILL_4__2633_ gnd vdd FILL
X_3698_ \u_cpu.op\[1] _499_ vdd gnd INVX1
X_3278_ _1179_ _179_ _146_ _1395_ vdd gnd OAI21X1
XFILL_0__2533_ gnd vdd FILL
XFILL_2__3912_ gnd vdd FILL
XFILL_4__3838_ gnd vdd FILL
XFILL_4__3418_ gnd vdd FILL
XFILL_0__3738_ gnd vdd FILL
XFILL_0__3318_ gnd vdd FILL
X_5004_ _2354_[10] clk_bF$buf3 _Addr_Bus[10] vdd gnd DFFPOSX1
XFILL_1__4381_ gnd vdd FILL
XFILL_4__3591_ gnd vdd FILL
XFILL_4__3171_ gnd vdd FILL
XFILL_0__3491_ gnd vdd FILL
XFILL_2__4870_ gnd vdd FILL
XFILL_2__4450_ gnd vdd FILL
XFILL_2__4030_ gnd vdd FILL
X_2969_ DO_kbd[7] _1625_ _1626_ vdd gnd NAND2X1
X_2549_ _2275_ _2276_ _2277_ _2278_ vdd gnd OAI21X1
XFILL_4__4796_ gnd vdd FILL
XFILL_4__4376_ gnd vdd FILL
X_3910_ _698_ _697_ _696_ vdd gnd NOR2X1
XFILL_0__4696_ gnd vdd FILL
XFILL_3__2793_ gnd vdd FILL
XFILL_0__4276_ gnd vdd FILL
XFILL_3__2373_ gnd vdd FILL
XFILL_1__3652_ gnd vdd FILL
XFILL_1__3232_ gnd vdd FILL
XFILL_3__3998_ gnd vdd FILL
XFILL_3__3578_ gnd vdd FILL
XFILL_1__4857_ gnd vdd FILL
XFILL_1__4437_ gnd vdd FILL
XFILL_1__4017_ gnd vdd FILL
XFILL_4__2442_ gnd vdd FILL
X_3087_ _1417__bF$buf0 vdd _1380_ clk_bF$buf10 \u_cpu.ABH\[2] vdd 
+ gnd
+ DFFSR
XFILL_0__2762_ gnd vdd FILL
XFILL_2__3721_ gnd vdd FILL
XFILL_2__3301_ gnd vdd FILL
XFILL_4__3647_ gnd vdd FILL
XFILL_4__3227_ gnd vdd FILL
XFILL_0__3967_ gnd vdd FILL
XFILL_0__3547_ gnd vdd FILL
XFILL_1__4190_ gnd vdd FILL
XFILL_2__4926_ gnd vdd FILL
XFILL_2__4506_ gnd vdd FILL
XFILL_1__2923_ gnd vdd FILL
XFILL_1__2503_ gnd vdd FILL
XFILL_3__2849_ gnd vdd FILL
XFILL_3__2429_ gnd vdd FILL
XFILL_1__3708_ gnd vdd FILL
X_2778_ _2354__1_bF$buf0 _1638__bF$buf3 _2354__2_bF$buf4 _1958_ vdd gnd OAI21X1
X_2358_ _2354_[13] AB[13] vdd gnd BUFX2
XFILL_4__4185_ gnd vdd FILL
XFILL_0__4085_ gnd vdd FILL
XFILL_4__2918_ gnd vdd FILL
XFILL_0__2818_ gnd vdd FILL
X_4924_ _2159_ _2195_ _2188_ _2199_ Data_In[6] vdd 
+ gnd
+ AOI22X1
X_4504_ _1350_ _1233_ _1232_ vdd gnd NAND2X1
XFILL_1__3881_ gnd vdd FILL
XFILL_1__3461_ gnd vdd FILL
XFILL_3__3387_ gnd vdd FILL
XFILL_1__4666_ gnd vdd FILL
XFILL_1__4246_ gnd vdd FILL
XFILL_4__2671_ gnd vdd FILL
XFILL_0__2991_ gnd vdd FILL
XFILL_0__2571_ gnd vdd FILL
XFILL_2__2589_ gnd vdd FILL
XFILL_2__3950_ gnd vdd FILL
XFILL_2__3530_ gnd vdd FILL
XFILL_4__3876_ gnd vdd FILL
XFILL_4__3456_ gnd vdd FILL
XFILL_0__3776_ gnd vdd FILL
XFILL_0__3356_ gnd vdd FILL
XFILL_2__4735_ gnd vdd FILL
XFILL_2__4315_ gnd vdd FILL
XFILL_1__2732_ gnd vdd FILL
XFILL_3__2658_ gnd vdd FILL
XFILL_1__3937_ gnd vdd FILL
XFILL_1__3517_ gnd vdd FILL
X_2587_ _2024_ _2130_ _2146_ vdd gnd NOR2X1
XFILL_3__4804_ gnd vdd FILL
XFILL_2__2801_ gnd vdd FILL
XFILL_4__2727_ gnd vdd FILL
XFILL_0__2627_ gnd vdd FILL
X_4733_ _1785_ _1786_ vdd gnd INVX1
X_4313_ \u_cpu.dst_reg\[1] _1344_ _1059_ _1058_ vdd gnd AOI21X1
XFILL_1__3690_ gnd vdd FILL
XFILL_1__3270_ gnd vdd FILL
XFILL_3__3196_ gnd vdd FILL
XFILL_1__4895_ gnd vdd FILL
XFILL_1__4475_ gnd vdd FILL
XFILL_1__4055_ gnd vdd FILL
XFILL_4__2480_ gnd vdd FILL
XFILL_0__2380_ gnd vdd FILL
XFILL_2__2398_ gnd vdd FILL
XFILL_4__3685_ gnd vdd FILL
XFILL_4__3265_ gnd vdd FILL
XFILL_0__3585_ gnd vdd FILL
XFILL_0__3165_ gnd vdd FILL
XFILL_2__4964_ gnd vdd FILL
XFILL_2__4544_ gnd vdd FILL
XFILL_2__4124_ gnd vdd FILL
XFILL_1__2541_ gnd vdd FILL
XFILL_3__2887_ gnd vdd FILL
XFILL_3__2467_ gnd vdd FILL
XFILL_1__3746_ gnd vdd FILL
XFILL_1__3326_ gnd vdd FILL
X_2396_ _1424_ _1423_ _1425_ vdd gnd AND2X2
XFILL_3__4613_ gnd vdd FILL
XFILL_2__2610_ gnd vdd FILL
XFILL_4__2536_ gnd vdd FILL
XFILL_0__2856_ gnd vdd FILL
XFILL_0__2436_ gnd vdd FILL
X_4962_ _2230_ _2232_ _2182_ _2233_ vdd gnd NAND3X1
X_4542_ _1349_ _1270_ vdd gnd INVX2
X_4122_ _889_ _888_ vdd gnd INVX2
XFILL_2__3815_ gnd vdd FILL
XFILL_1__4284_ gnd vdd FILL
XFILL_4__3494_ gnd vdd FILL
XFILL_0__3394_ gnd vdd FILL
XFILL_2__4773_ gnd vdd FILL
XFILL_2__4353_ gnd vdd FILL
XFILL_4__4699_ gnd vdd FILL
XFILL_4__4279_ gnd vdd FILL
X_3813_ _790_ \u_cpu.AXYS[2]\[0] \u_cpu.AXYS[0]\[0] _978_ _609_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2770_ gnd vdd FILL
XFILL_3__2696_ gnd vdd FILL
XFILL_0__4599_ gnd vdd FILL
XFILL_0__4179_ gnd vdd FILL
XFILL_1__3975_ gnd vdd FILL
XFILL_1__3555_ gnd vdd FILL
XFILL_3__4842_ gnd vdd FILL
XFILL_3__4422_ gnd vdd FILL
XFILL_3__4002_ gnd vdd FILL
XFILL_4__2765_ gnd vdd FILL
XFILL_0__2665_ gnd vdd FILL
X_4771_ _1816_ _1698_ _1823_ _1824_ vdd gnd OAI21X1
X_4351_ _1096_ _1349_ _1315__bF$buf0 _1095_ vdd gnd OAI21X1
XFILL_2__3624_ gnd vdd FILL
XFILL_2__3204_ gnd vdd FILL
XFILL_4__4911_ gnd vdd FILL
XFILL_1__4093_ gnd vdd FILL
XFILL_2__4829_ gnd vdd FILL
XFILL_0__4811_ gnd vdd FILL
XFILL_2__4409_ gnd vdd FILL
XFILL_1__2826_ gnd vdd FILL
XFILL_1__2406_ gnd vdd FILL
XFILL_2__4582_ gnd vdd FILL
XFILL_2__4162_ gnd vdd FILL
XFILL_4__4088_ gnd vdd FILL
X_3622_ _1196__bF$buf6 _898_ _427_ _426_ vdd gnd OAI21X1
X_3202_ \u_cpu.AXYS[1]\[2] _1041_ _97_ vdd gnd NAND2X1
X_4827_ reset _1675_ vdd gnd INVX4
X_4407_ _1160_ _1171_ _1146_ _1145_ vdd gnd OAI21X1
XFILL_1__3784_ gnd vdd FILL
XFILL_1__3364_ gnd vdd FILL
XFILL_3__4651_ gnd vdd FILL
XFILL_3__4231_ gnd vdd FILL
XFILL_1__4569_ gnd vdd FILL
XFILL_1__4149_ gnd vdd FILL
XFILL_4__2994_ gnd vdd FILL
XFILL_4__2574_ gnd vdd FILL
XFILL_0__2894_ gnd vdd FILL
XFILL_0__2474_ gnd vdd FILL
X_4580_ _1348_ _1309_ _1308_ vdd gnd NOR2X1
X_4160_ _1042_ _922_ _921_ vdd gnd NAND2X1
XFILL_2__3853_ gnd vdd FILL
XFILL_2__3433_ gnd vdd FILL
XFILL_2__3013_ gnd vdd FILL
XFILL_4__3779_ gnd vdd FILL
XFILL_4__3359_ gnd vdd FILL
XFILL_4__4720_ gnd vdd FILL
XFILL_4__4300_ gnd vdd FILL
XFILL_0__3679_ gnd vdd FILL
XFILL_0__3259_ gnd vdd FILL
XFILL_2__4638_ gnd vdd FILL
XFILL_0__4620_ gnd vdd FILL
XFILL_2__4218_ gnd vdd FILL
XFILL_0__4200_ gnd vdd FILL
XFILL_1__2635_ gnd vdd FILL
XFILL_3__3922_ gnd vdd FILL
XFILL_3__3502_ gnd vdd FILL
XFILL_2__4391_ gnd vdd FILL
XFILL_3__4707_ gnd vdd FILL
X_3851_ _646_ _786_ _645_ _644_ vdd gnd OAI21X1
X_3431_ _285_ _614_ _258_ _257_ vdd gnd OAI21X1
X_3011_ _Addr_Bus[11] _Addr_Bus[8] _1587_ vdd gnd NOR2X1
XFILL_2__2704_ gnd vdd FILL
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert22 gnd vdd FILL
XFILL_1_BUFX2_insert23 gnd vdd FILL
XFILL_1_BUFX2_insert24 gnd vdd FILL
XFILL_1_BUFX2_insert25 gnd vdd FILL
X_4636_ \u_cpu.alu_op\[1] _1689_ vdd gnd INVX2
X_4216_ \u_cpu.adj_bcd\ _971_ _970_ vdd gnd NAND2X1
XFILL_1__3593_ gnd vdd FILL
XFILL_1__3173_ gnd vdd FILL
XFILL_2__3909_ gnd vdd FILL
XFILL_3__4460_ gnd vdd FILL
XFILL_3__4040_ gnd vdd FILL
XFILL_1__4798_ gnd vdd FILL
XFILL_1__4378_ gnd vdd FILL
XFILL_4__2383_ gnd vdd FILL
XFILL_2__3662_ gnd vdd FILL
XFILL_2__3242_ gnd vdd FILL
XFILL_4__3588_ gnd vdd FILL
XFILL_4__3168_ gnd vdd FILL
X_2702_ _1918_ _1915_ _2354__4_bF$buf6 _2033_ vdd gnd AOI21X1
XFILL_0__3488_ gnd vdd FILL
XFILL_2__4867_ gnd vdd FILL
XFILL_2__4447_ gnd vdd FILL
XFILL_2__4027_ gnd vdd FILL
X_3907_ _1328__bF$buf0 _1252_ \u_cpu.ADD\[1] _693_ vdd gnd OAI21X1
XFILL_1__2444_ gnd vdd FILL
XFILL_3__3731_ gnd vdd FILL
XFILL_3__3311_ gnd vdd FILL
XFILL_1__3649_ gnd vdd FILL
XFILL_1__3229_ gnd vdd FILL
XFILL_3__4936_ gnd vdd FILL
XFILL_3__4516_ gnd vdd FILL
X_3660_ _1305__bF$buf3 _1076_ RDY_bF$buf5 _463_ vdd gnd OAI21X1
X_3240_ _2354_[11] _800__bF$buf0 _123_ vdd gnd NAND2X1
XFILL_2__2933_ gnd vdd FILL
XFILL_2__2513_ gnd vdd FILL
XFILL_4__2859_ gnd vdd FILL
XFILL_4__2439_ gnd vdd FILL
XFILL_4__3800_ gnd vdd FILL
XFILL_0__2759_ gnd vdd FILL
X_4865_ _1890_ _1887_ _1880_ _1905_ vdd gnd OAI21X1
X_4445_ \u_cpu.DIMUX\[2] _1179_ vdd gnd INVX2
X_4025_ _1129__bF$buf0 _985_ _794_ vdd gnd NAND2X1
XFILL_0__3700_ gnd vdd FILL
XFILL_2__3718_ gnd vdd FILL
XFILL_1__4187_ gnd vdd FILL
XFILL_0__4905_ gnd vdd FILL
XFILL_2__3891_ gnd vdd FILL
XFILL_2__3471_ gnd vdd FILL
XFILL_4__3397_ gnd vdd FILL
X_2931_ _1530_ _1533_ _1539_ vdd gnd NOR2X1
X_2511_ _2354__5_bF$buf3 _2314_ _2312_ _2315_ vdd gnd NAND3X1
XFILL_0__3297_ gnd vdd FILL
XFILL_2__4676_ gnd vdd FILL
XFILL_2__4256_ gnd vdd FILL
X_3716_ _544_ _516_ _527_ _515_ vdd gnd NAND3X1
XFILL_1__2673_ gnd vdd FILL
XFILL_3__2599_ gnd vdd FILL
XFILL_3__3960_ gnd vdd FILL
XFILL_3__3540_ gnd vdd FILL
XFILL_1__3878_ gnd vdd FILL
XFILL_1__3458_ gnd vdd FILL
XFILL_3__4745_ gnd vdd FILL
XFILL_3__4325_ gnd vdd FILL
XFILL_2__2742_ gnd vdd FILL
XFILL_4__2668_ gnd vdd FILL
XFILL_0__2988_ gnd vdd FILL
XFILL_0__2568_ gnd vdd FILL
X_4674_ _1697_ _1726_ _1723_ _1727_ vdd gnd OAI21X1
X_4254_ _1024_ _1006_ vdd gnd INVX1
XFILL_2__3947_ gnd vdd FILL
XFILL_2__3527_ gnd vdd FILL
XFILL_4__4814_ gnd vdd FILL
XFILL_3__2811_ gnd vdd FILL
XFILL_0__4714_ gnd vdd FILL
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
XFILL_2_BUFX2_insert79 gnd vdd FILL
XFILL_2__3280_ gnd vdd FILL
X_2740_ _2354__0_bF$buf3 _1944_ _1995_ vdd gnd NOR2X1
XFILL_2__4485_ gnd vdd FILL
XFILL_2__4065_ gnd vdd FILL
X_3945_ \u_cpu.plp\ _723_ vdd gnd INVX1
X_3525_ _1210_ _864_ _335_ _2354_[8] vdd gnd OAI21X1
X_3105_ _1417__bF$buf3 vdd _1472_ clk_bF$buf1 \u_cpu.AXYS[0]\[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2482_ gnd vdd FILL
XFILL_1__3687_ gnd vdd FILL
XFILL_1__3267_ gnd vdd FILL
XFILL_3__4974_ gnd vdd FILL
XFILL_3__4554_ gnd vdd FILL
XFILL_3__4134_ gnd vdd FILL
XFILL_2__2971_ gnd vdd FILL
XFILL_2__2551_ gnd vdd FILL
XFILL_4__2897_ gnd vdd FILL
XFILL_4__2477_ gnd vdd FILL
XFILL_0__2797_ gnd vdd FILL
XFILL_0__2377_ gnd vdd FILL
X_4483_ RDY_bF$buf1 _1223_ _1212_ _1211_ vdd gnd NAND3X1
X_4063_ _834_ _831_ _830_ vdd gnd NOR2X1
XFILL_2__3756_ gnd vdd FILL
XFILL_2__3336_ gnd vdd FILL
XFILL_4__4623_ gnd vdd FILL
XFILL_4__4203_ gnd vdd FILL
XFILL273150x72150 gnd vdd FILL
XFILL_0__4943_ gnd vdd FILL
XFILL_3__2620_ gnd vdd FILL
XFILL_0__4523_ gnd vdd FILL
XFILL_0__4103_ gnd vdd FILL
XFILL_1__2538_ gnd vdd FILL
XFILL273150x39750 gnd vdd FILL
XFILL_3__3825_ gnd vdd FILL
XFILL_3__3405_ gnd vdd FILL
XFILL_2__4294_ gnd vdd FILL
X_3754_ _554_ _722_ _553_ vdd gnd NOR2X1
X_3334_ reset _181_ \u_cpu.IRHOLD\[7] _178_ vdd gnd OAI21X1
XFILL_2__2607_ gnd vdd FILL
X_4959_ _Addr_Bus[1] _2229_ _2173_ _2230_ vdd gnd NAND3X1
X_4539_ \u_cpu.ABL\[3] _1267_ vdd gnd INVX1
X_4119_ _1303_ _889_ _885_ vdd gnd NAND2X1
XFILL_1__3496_ gnd vdd FILL
XFILL_3__4783_ gnd vdd FILL
XFILL_3__4363_ gnd vdd FILL
XFILL_2__2780_ gnd vdd FILL
XFILL_2__2360_ gnd vdd FILL
X_4292_ _1041_ _1039_ _1038_ _1481_ vdd gnd OAI21X1
XFILL_2__3985_ gnd vdd FILL
XFILL_2__3565_ gnd vdd FILL
X_2605_ _2048_ _1938_ _2128_ vdd gnd NOR2X1
XFILL_4__4852_ gnd vdd FILL
XFILL_4__4432_ gnd vdd FILL
XFILL_4__4012_ gnd vdd FILL
XFILL_0__4752_ gnd vdd FILL
XFILL_0__4332_ gnd vdd FILL
XFILL_1__2767_ gnd vdd FILL
XFILL_3__3634_ gnd vdd FILL
XFILL_3__3214_ gnd vdd FILL
XFILL_1__4913_ gnd vdd FILL
XFILL_3__4839_ gnd vdd FILL
XFILL_3__4419_ gnd vdd FILL
X_3983_ _1121_ _1118_ _757_ vdd gnd NOR2X1
X_3563_ \u_cpu.load_only\ _368_ vdd gnd INVX1
X_3143_ _1417__bF$buf2 vdd NMI clk_bF$buf11 \u_cpu.NMI_1\ vdd 
+ gnd
+ DFFSR
XFILL_2__2836_ gnd vdd FILL
XFILL_2__2416_ gnd vdd FILL
XFILL_4__3703_ gnd vdd FILL
X_4768_ _1684_ _1820_ _1819_ _1821_ vdd gnd NAND3X1
X_4348_ \u_cpu.PC\[14] _1269_ _1093_ _1092_ vdd gnd AOI21X1
XFILL_0__3603_ gnd vdd FILL
XFILL_3__4592_ gnd vdd FILL
XFILL_3__4172_ gnd vdd FILL
XFILL_4__4908_ gnd vdd FILL
XFILL_0__4808_ gnd vdd FILL
XFILL_3__2905_ gnd vdd FILL
XFILL_2__3794_ gnd vdd FILL
XFILL_2__3374_ gnd vdd FILL
X_2834_ _2354__0_bF$buf4 _1635__bF$buf4 _2354__4_bF$buf5 _1661_ vdd gnd OAI21X1
X_2414_ _2354__0_bF$buf0 _1658_ _59_ _2086_ _60_ vdd 
+ gnd
+ OAI22X1
XFILL_4__4661_ gnd vdd FILL
XFILL_4__4241_ gnd vdd FILL
XFILL_0__4981_ gnd vdd FILL
XFILL_0__4561_ gnd vdd FILL
XFILL_2__4579_ gnd vdd FILL
XFILL_2__4159_ gnd vdd FILL
XFILL_0__4141_ gnd vdd FILL
X_3619_ _443_ _424_ _423_ vdd gnd NOR2X1
XFILL_1__2996_ gnd vdd FILL
XFILL_1__2576_ gnd vdd FILL
XFILL_3__3863_ gnd vdd FILL
XFILL_3__3443_ gnd vdd FILL
XFILL_3__3023_ gnd vdd FILL
XFILL_1__4722_ gnd vdd FILL
XFILL_1__4302_ gnd vdd FILL
XFILL_3__4648_ gnd vdd FILL
XFILL_3__4228_ gnd vdd FILL
X_3792_ _636_ \u_cpu.PC\[4] _628_ _590_ vdd gnd AOI21X1
X_3372_ _214_ _208_ _207_ vdd gnd NOR2X1
XFILL_2__2645_ gnd vdd FILL
XFILL_4__3932_ gnd vdd FILL
XFILL_4__3512_ gnd vdd FILL
X_4997_ _2354__5_bF$buf2 clk_bF$buf12 _Addr_Bus[5] vdd gnd DFFPOSX1
X_4577_ _1350_ _1305_ vdd gnd INVX8
X_4157_ \u_cpu.AXYS[3]\[1] _921_ _919_ vdd gnd NAND2X1
XFILL_0__3832_ gnd vdd FILL
XFILL_0__3412_ gnd vdd FILL
XFILL_4__4717_ gnd vdd FILL
XFILL_3__2714_ gnd vdd FILL
XFILL_0__4617_ gnd vdd FILL
XFILL_2__3183_ gnd vdd FILL
XFILL_3__3919_ gnd vdd FILL
X_2643_ _2354__5_bF$buf2 _2087_ _2090_ _2091_ vdd gnd NAND3X1
XFILL_4__4890_ gnd vdd FILL
XFILL_4__4470_ gnd vdd FILL
XFILL_4__4050_ gnd vdd FILL
XFILL_0__4790_ gnd vdd FILL
XFILL_0__4370_ gnd vdd FILL
XFILL_2__4388_ gnd vdd FILL
X_3848_ _643_ _792_ _642_ _641_ vdd gnd OAI21X1
X_3428_ \u_cpu.ADD\[1] _625_ _255_ vdd gnd NAND2X1
X_3008_ _Addr_Bus[9] _Addr_Bus[6] _1590_ vdd gnd NOR2X1
XFILL_1__2385_ gnd vdd FILL
XFILL_3__3672_ gnd vdd FILL
XFILL_3__3252_ gnd vdd FILL
XFILL_1__4951_ gnd vdd FILL
XFILL_1__4531_ gnd vdd FILL
XFILL_1__4111_ gnd vdd FILL
XFILL_3__4457_ gnd vdd FILL
XFILL_3__4037_ gnd vdd FILL
X_3181_ _1258_ _1215_ _83_ vdd gnd NOR2X1
XFILL_2__2454_ gnd vdd FILL
XFILL_4__3741_ gnd vdd FILL
XFILL_4__3321_ gnd vdd FILL
X_4386_ \u_cpu.IRHOLD_valid\ _1138_ _1128_ _1127_ vdd gnd OAI21X1
XFILL_2__3659_ gnd vdd FILL
XFILL_0__3641_ gnd vdd FILL
XFILL_0__3221_ gnd vdd FILL
XFILL_2__3239_ gnd vdd FILL
XFILL_2__4600_ gnd vdd FILL
XFILL_4__4946_ gnd vdd FILL
XFILL_4__4526_ gnd vdd FILL
XFILL_4__4106_ gnd vdd FILL
XFILL_0__4846_ gnd vdd FILL
XFILL_3__2943_ gnd vdd FILL
XFILL_3__2523_ gnd vdd FILL
XFILL_0__4426_ gnd vdd FILL
XFILL_0__4006_ gnd vdd FILL
XFILL_1__3802_ gnd vdd FILL
XFILL_3__3728_ gnd vdd FILL
XFILL_3__3308_ gnd vdd FILL
X_2872_ _1514_ vdd _1597_ clk_bF$buf1 \u_pia_dsp.state\[3] vdd 
+ gnd
+ DFFSR
X_2452_ _1643__bF$buf1 _1665_ _1648_ _23_ vdd gnd NAND3X1
XFILL_2__4197_ gnd vdd FILL
X_3657_ _1305__bF$buf3 _903_ _1196__bF$buf5 _460_ vdd gnd OAI21X1
X_3237_ _358_ _800__bF$buf1 _122_ _1378_ vdd gnd OAI21X1
XFILL_0__2912_ gnd vdd FILL
XFILL_3__3481_ gnd vdd FILL
XFILL271950x79350 gnd vdd FILL
XFILL_1__3399_ gnd vdd FILL
XFILL_1__4760_ gnd vdd FILL
XFILL_1__4340_ gnd vdd FILL
XFILL_3__4686_ gnd vdd FILL
XFILL_3__4266_ gnd vdd FILL
XFILL_2__2683_ gnd vdd FILL
XFILL_4__3970_ gnd vdd FILL
XFILL_4__3550_ gnd vdd FILL
X_4195_ \u_cpu.AXYS[0]\[2] _977_ _951_ vdd gnd NAND2X1
XFILL_2__3888_ gnd vdd FILL
XFILL_0__3870_ gnd vdd FILL
XFILL_2__3468_ gnd vdd FILL
XFILL_0__3450_ gnd vdd FILL
XFILL_0__3030_ gnd vdd FILL
X_2928_ _1536_ _1535_ _1541_ _1507_ vdd gnd OAI21X1
X_2508_ _2354__0_bF$buf3 _1949_ _2318_ vdd gnd NOR2X1
XFILL_4__4755_ gnd vdd FILL
XFILL_4__4335_ gnd vdd FILL
XFILL_3__2752_ gnd vdd FILL
XFILL_0__4655_ gnd vdd FILL
XFILL_0__4235_ gnd vdd FILL
XFILL_1__3611_ gnd vdd FILL
XFILL_3__3957_ gnd vdd FILL
XFILL_3__3537_ gnd vdd FILL
X_2681_ _2354__1_bF$buf5 _2354__2_bF$buf5 _1643__bF$buf3 _2053_ vdd gnd OAI21X1
XFILL_1__4816_ gnd vdd FILL
XFILL_4__2821_ gnd vdd FILL
XFILL_4__2401_ gnd vdd FILL
X_3886_ _943_ _760_ _676_ _1439_ vdd gnd OAI21X1
X_3466_ _282_ _632_ _356_ _281_ vdd gnd NAND3X1
X_3046_ _1394_ clk_bF$buf9 \u_cpu.IRHOLD\[1] vdd gnd DFFPOSX1
XFILL_0__2721_ gnd vdd FILL
XFILL_2__2739_ gnd vdd FILL
XFILL_3__3290_ gnd vdd FILL
XFILL_4__3606_ gnd vdd FILL
XFILL_0__3926_ gnd vdd FILL
XFILL_0__3506_ gnd vdd FILL
XFILL_3__4495_ gnd vdd FILL
XFILL_3__4075_ gnd vdd FILL
XFILL_2__2492_ gnd vdd FILL
XFILL_3__2808_ gnd vdd FILL
XFILL_2__3697_ gnd vdd FILL
XFILL_2__3277_ gnd vdd FILL
X_2737_ _1996_ _1997_ _1923__bF$buf0 _1998_ vdd gnd AOI21X1
XFILL_4__4984_ gnd vdd FILL
XFILL_4__4564_ gnd vdd FILL
XFILL_4__4144_ gnd vdd FILL
XFILL_0__4884_ gnd vdd FILL
XFILL_3__2981_ gnd vdd FILL
XFILL_3__2561_ gnd vdd FILL
XFILL_0__4464_ gnd vdd FILL
XFILL_0__4044_ gnd vdd FILL
XFILL_1__2899_ gnd vdd FILL
XFILL_1__2479_ gnd vdd FILL
XFILL_1__3840_ gnd vdd FILL
XFILL_1__3420_ gnd vdd FILL
XFILL_1__3000_ gnd vdd FILL
XFILL_3__3766_ gnd vdd FILL
XFILL_3__3346_ gnd vdd FILL
X_2490_ _2354__3_bF$buf6 _1928_ _2354__5_bF$buf4 _2336_ vdd gnd OAI21X1
XFILL_1__4625_ gnd vdd FILL
XFILL_1__4205_ gnd vdd FILL
XFILL_4__2630_ gnd vdd FILL
X_3695_ _1016_ _502_ _498_ \u_cpu.alu_op\[0] vdd gnd OAI21X1
X_3275_ reset _181_ \u_cpu.IRHOLD\[0] _144_ vdd gnd OAI21X1
XFILL_0__2950_ gnd vdd FILL
XFILL_2__2968_ gnd vdd FILL
XFILL_0__2530_ gnd vdd FILL
XFILL_2__2548_ gnd vdd FILL
XFILL_4__3835_ gnd vdd FILL
XFILL_4__3415_ gnd vdd FILL
XFILL_0__3735_ gnd vdd FILL
XFILL_0__3315_ gnd vdd FILL
X_5001_ _2354_[15] clk_bF$buf6 _Addr_Bus[15] vdd gnd DFFPOSX1
XFILL_3__2617_ gnd vdd FILL
X_2966_ DO_kbd[5] _1628_ vdd gnd INVX1
X_2546_ _2116_ _2281_ vdd gnd INVX1
XFILL_4__4793_ gnd vdd FILL
XFILL_4__4373_ gnd vdd FILL
XFILL_0__4693_ gnd vdd FILL
XFILL_3__2790_ gnd vdd FILL
XFILL_3__2370_ gnd vdd FILL
XFILL_0__4273_ gnd vdd FILL
XFILL_3__3995_ gnd vdd FILL
XFILL_3__3575_ gnd vdd FILL
XFILL_1__4854_ gnd vdd FILL
XFILL_1__4434_ gnd vdd FILL
XFILL_1__4014_ gnd vdd FILL
X_3084_ _1417__bF$buf1 vdd _1488_ clk_bF$buf5 \u_cpu.PC\[9] vdd 
+ gnd
+ DFFSR
XFILL_2__2777_ gnd vdd FILL
XFILL_2__2357_ gnd vdd FILL
XFILL_4__3644_ gnd vdd FILL
XFILL_4__3224_ gnd vdd FILL
X_4289_ _1036_ _1035_ vdd gnd INVX1
XFILL_0__3964_ gnd vdd FILL
XFILL_0__3544_ gnd vdd FILL
XFILL_2__4923_ gnd vdd FILL
XFILL_2__4503_ gnd vdd FILL
XFILL_4__4849_ gnd vdd FILL
XFILL_4__4429_ gnd vdd FILL
XFILL_4__4009_ gnd vdd FILL
XFILL_1__2920_ gnd vdd FILL
XFILL_1__2500_ gnd vdd FILL
XFILL_0__4749_ gnd vdd FILL
XFILL_3__2846_ gnd vdd FILL
XFILL_3__2426_ gnd vdd FILL
XFILL_0__4329_ gnd vdd FILL
XFILL_1__3705_ gnd vdd FILL
X_2775_ _2354__0_bF$buf2 _2354__2_bF$buf2 _1961_ vdd gnd NOR2X1
XFILL_4__4182_ gnd vdd FILL
XFILL_0__4082_ gnd vdd FILL
XFILL_4__2915_ gnd vdd FILL
XFILL_0__2815_ gnd vdd FILL
X_4921_ _2175_ _2185_ _2176_ _2197_ vdd gnd NAND3X1
X_4501_ _1270_ _1269_ \u_cpu.PC\[0] _1229_ vdd gnd OAI21X1
XFILL_3__3384_ gnd vdd FILL
XFILL_1__4663_ gnd vdd FILL
XFILL_1__4243_ gnd vdd FILL
XFILL_3__4589_ gnd vdd FILL
XFILL_3__4169_ gnd vdd FILL
XFILL_2__2586_ gnd vdd FILL
XFILL_4__3873_ gnd vdd FILL
XFILL_4__3453_ gnd vdd FILL
X_4098_ _865_ _877_ _864_ vdd gnd NAND2X1
XFILL_0__3773_ gnd vdd FILL
XFILL_0__3353_ gnd vdd FILL
XFILL_2__4732_ gnd vdd FILL
XFILL_2__4312_ gnd vdd FILL
XFILL_4__4658_ gnd vdd FILL
XFILL_4__4238_ gnd vdd FILL
XFILL_0__4978_ gnd vdd FILL
XFILL_3__2655_ gnd vdd FILL
XFILL_0__4558_ gnd vdd FILL
XFILL_0__4138_ gnd vdd FILL
XFILL_1__3934_ gnd vdd FILL
XFILL273150x7350 gnd vdd FILL
XFILL_1__3514_ gnd vdd FILL
X_2584_ _2354__1_bF$buf1 _1935_ _2149_ vdd gnd NOR2X1
XFILL_3__4801_ gnd vdd FILL
XFILL_1__4719_ gnd vdd FILL
XFILL_4__2724_ gnd vdd FILL
X_3789_ _1154_ _616_ _588_ _587_ vdd gnd OAI21X1
X_3369_ _1328__bF$buf3 _906_ _1196__bF$buf4 _205_ vdd gnd OAI21X1
XFILL_0__2624_ gnd vdd FILL
X_4730_ _1782_ _1780_ _1783_ vdd gnd AND2X2
X_4310_ \u_cpu.dst_reg\[0] _1344_ _1055_ vdd gnd NAND2X1
XFILL_3__3193_ gnd vdd FILL
XFILL_4__3929_ gnd vdd FILL
XFILL_4__3509_ gnd vdd FILL
XFILL_0__3829_ gnd vdd FILL
XFILL_0__3409_ gnd vdd FILL
XFILL_1__4892_ gnd vdd FILL
XFILL_1__4472_ gnd vdd FILL
XFILL_1__4052_ gnd vdd FILL
XFILL_3__4398_ gnd vdd FILL
XFILL_2__2395_ gnd vdd FILL
XFILL_4__3682_ gnd vdd FILL
XFILL_4__3262_ gnd vdd FILL
XFILL_0__3582_ gnd vdd FILL
XFILL_2__4961_ gnd vdd FILL
XFILL_2__4541_ gnd vdd FILL
XFILL_2__4121_ gnd vdd FILL
XFILL_4__4887_ gnd vdd FILL
XFILL_4__4467_ gnd vdd FILL
XFILL_4__4047_ gnd vdd FILL
XFILL_0__4787_ gnd vdd FILL
XFILL_3__2884_ gnd vdd FILL
XFILL_3__2464_ gnd vdd FILL
XFILL_0__4367_ gnd vdd FILL
XFILL_1__3743_ gnd vdd FILL
XFILL_1__3323_ gnd vdd FILL
XFILL_3__3669_ gnd vdd FILL
XFILL_3__3249_ gnd vdd FILL
X_2393_ _62_ _54_ _1427_ _70_ _2346_[7] vdd 
+ gnd
+ AOI22X1
XFILL_3__4610_ gnd vdd FILL
XFILL_1__4948_ gnd vdd FILL
XFILL_1__4528_ gnd vdd FILL
XFILL_1__4108_ gnd vdd FILL
XFILL_4__2533_ gnd vdd FILL
X_3598_ _410_ _404_ _402_ vdd gnd NAND2X1
X_3178_ _1264_ _1226_ _81_ vdd gnd NAND2X1
XFILL_0__2853_ gnd vdd FILL
XFILL_0__2433_ gnd vdd FILL
XFILL_2__3812_ gnd vdd FILL
XFILL_4__3738_ gnd vdd FILL
XFILL_4__3318_ gnd vdd FILL
XFILL_0__3638_ gnd vdd FILL
XFILL_0__3218_ gnd vdd FILL
XFILL_1__4281_ gnd vdd FILL
XFILL_4__3491_ gnd vdd FILL
XFILL_0__3391_ gnd vdd FILL
XFILL_2__4770_ gnd vdd FILL
XFILL_2__4350_ gnd vdd FILL
X_2869_ _1514_ vdd _1510_ clk_bF$buf10 DO_dsp[5] vdd 
+ gnd
+ DFFSR
X_2449_ _2150_ _25_ _2354__5_bF$buf2 _26_ vdd gnd OAI21X1
XFILL_4__4696_ gnd vdd FILL
XFILL_4__4276_ gnd vdd FILL
X_3810_ _630_ _607_ _606_ vdd gnd NAND2X1
XFILL_3__2693_ gnd vdd FILL
XFILL_0__4596_ gnd vdd FILL
XFILL_0__4176_ gnd vdd FILL
XFILL_0__2909_ gnd vdd FILL
XFILL_1__3972_ gnd vdd FILL
XFILL_1__3552_ gnd vdd FILL
XFILL_3__3898_ gnd vdd FILL
XFILL_3__3478_ gnd vdd FILL
XFILL_1__4757_ gnd vdd FILL
XFILL_1__4337_ gnd vdd FILL
XFILL_4__2762_ gnd vdd FILL
XFILL_0__2662_ gnd vdd FILL
XFILL_2__3621_ gnd vdd FILL
XFILL_2__3201_ gnd vdd FILL
XFILL_4__3967_ gnd vdd FILL
XFILL_4__3547_ gnd vdd FILL
XFILL_0__3867_ gnd vdd FILL
XFILL_0__3447_ gnd vdd FILL
XFILL_0__3027_ gnd vdd FILL
XFILL_1__4090_ gnd vdd FILL
XFILL_2__4826_ gnd vdd FILL
XFILL_2__4406_ gnd vdd FILL
XFILL_1__2823_ gnd vdd FILL
XFILL_1__2403_ gnd vdd FILL
XFILL_3__2749_ gnd vdd FILL
XFILL272250x79350 gnd vdd FILL
XFILL_1__3608_ gnd vdd FILL
X_2678_ _2055_ _1655_ _1920__bF$buf4 _2056_ vdd gnd AOI21X1
XFILL_4__4085_ gnd vdd FILL
XFILL_4__2818_ gnd vdd FILL
XFILL_0__2718_ gnd vdd FILL
X_4824_ _1863_ _1868_ _1869_ vdd gnd OR2X2
X_4404_ RDY_bF$buf4 _1145_ _1143_ _1142_ vdd gnd NAND3X1
XFILL_1__3781_ gnd vdd FILL
XFILL_1__3361_ gnd vdd FILL
XFILL_3__3287_ gnd vdd FILL
XFILL_1__4566_ gnd vdd FILL
XFILL_1__4146_ gnd vdd FILL
XFILL_4__2991_ gnd vdd FILL
XFILL_4__2571_ gnd vdd FILL
XFILL_0__2891_ gnd vdd FILL
XFILL_0__2471_ gnd vdd FILL
XFILL_2__2489_ gnd vdd FILL
XFILL_2__3850_ gnd vdd FILL
XFILL_2__3430_ gnd vdd FILL
XFILL_2__3010_ gnd vdd FILL
XFILL_4__3776_ gnd vdd FILL
XFILL_4__3356_ gnd vdd FILL
XFILL_0__3676_ gnd vdd FILL
XFILL_0__3256_ gnd vdd FILL
XFILL_2__4635_ gnd vdd FILL
XFILL_2__4215_ gnd vdd FILL
XFILL_1__2632_ gnd vdd FILL
XFILL_3__2978_ gnd vdd FILL
XFILL_3__2558_ gnd vdd FILL
XFILL_1__3837_ gnd vdd FILL
XFILL_1__3417_ gnd vdd FILL
X_2487_ _2338_ _2337_ _2354__6_bF$buf1 _2339_ vdd gnd AOI21X1
XFILL_3__4704_ gnd vdd FILL
XFILL_2__2701_ gnd vdd FILL
XFILL_4__2627_ gnd vdd FILL
XFILL_0__2947_ gnd vdd FILL
XFILL_0__2527_ gnd vdd FILL
X_4633_ \u_cpu.alu_op\[0] _1685_ _1686_ vdd gnd NOR2X1
X_4213_ _969_ _967_ vdd gnd INVX1
XFILL_1__3590_ gnd vdd FILL
XFILL_1__3170_ gnd vdd FILL
XFILL_2__3906_ gnd vdd FILL
XFILL_1__4795_ gnd vdd FILL
XFILL_1__4375_ gnd vdd FILL
XFILL_4__2380_ gnd vdd FILL
XFILL_4__3585_ gnd vdd FILL
XFILL_4__3165_ gnd vdd FILL
XFILL_0__3485_ gnd vdd FILL
XFILL_2__4864_ gnd vdd FILL
XFILL_2__4444_ gnd vdd FILL
XFILL_2__4024_ gnd vdd FILL
X_3904_ _691_ _699_ _695_ _1442_ vdd gnd MUX2X1
XFILL_1__2861_ gnd vdd FILL
XFILL_1__2441_ gnd vdd FILL
XFILL_3__2787_ gnd vdd FILL
XFILL_3__2367_ gnd vdd FILL
XFILL_1__3646_ gnd vdd FILL
XFILL_1__3226_ gnd vdd FILL
XFILL_3__4933_ gnd vdd FILL
XFILL_3__4513_ gnd vdd FILL
XFILL_2__2930_ gnd vdd FILL
XFILL_2__2510_ gnd vdd FILL
XFILL_4__2856_ gnd vdd FILL
XFILL_4__2436_ gnd vdd FILL
XFILL_0__2756_ gnd vdd FILL
X_4862_ _1814_ _1828_ _1901_ _1902_ vdd gnd AOI21X1
X_4442_ _1206_ \u_cpu.ABH\[2] _1177_ _1176_ vdd gnd AOI21X1
X_4022_ _1051_ _979_ _792_ vdd gnd NAND2X1
XFILL_2__3715_ gnd vdd FILL
XFILL_1__4184_ gnd vdd FILL
XFILL_0__4902_ gnd vdd FILL
XFILL_1__2917_ gnd vdd FILL
XFILL_4__3394_ gnd vdd FILL
XFILL_0__3294_ gnd vdd FILL
XFILL_2__4673_ gnd vdd FILL
XFILL_2__4253_ gnd vdd FILL
XFILL_4__4599_ gnd vdd FILL
XFILL_4__4179_ gnd vdd FILL
X_3713_ _513_ _512_ vdd gnd INVX1
XFILL_1__2670_ gnd vdd FILL
XFILL_3__2596_ gnd vdd FILL
XFILL_0__4499_ gnd vdd FILL
XFILL_0__4079_ gnd vdd FILL
X_4918_ _2193_ _2192_ _2194_ vdd gnd NOR2X1
XFILL_1__3875_ gnd vdd FILL
XFILL_1__3455_ gnd vdd FILL
XFILL_3__4742_ gnd vdd FILL
XFILL_3__4322_ gnd vdd FILL
XFILL_4__2665_ gnd vdd FILL
XFILL_0__2985_ gnd vdd FILL
XFILL_0__2565_ gnd vdd FILL
X_4671_ \u_cpu.alu_op\[3] _1699_ _1716_ _1724_ vdd gnd OAI21X1
X_4251_ _1004_ _1003_ vdd gnd INVX1
XFILL_2__3944_ gnd vdd FILL
XFILL_2__3524_ gnd vdd FILL
XFILL_4__4811_ gnd vdd FILL
XFILL_0__4711_ gnd vdd FILL
XFILL_2__4729_ gnd vdd FILL
XFILL_2__4309_ gnd vdd FILL
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
XFILL_2_BUFX2_insert49 gnd vdd FILL
XFILL_2__4482_ gnd vdd FILL
XFILL_2__4062_ gnd vdd FILL
X_3942_ _723_ _1129__bF$buf0 _722_ _721_ _1450_ vdd 
+ gnd
+ OAI22X1
X_3522_ \u_cpu.ADD\[5] _359_ _332_ vdd gnd NAND2X1
X_3102_ _1417__bF$buf8 vdd _1387_ clk_bF$buf10 \u_cpu.ABL\[5] vdd 
+ gnd
+ DFFSR
X_4727_ _1697_ _1780_ vdd gnd INVX1
X_4307_ _1056_ _1055_ _1053_ _1052_ vdd gnd NAND3X1
XFILL_1__3684_ gnd vdd FILL
XFILL_1__3264_ gnd vdd FILL
XFILL_3__4971_ gnd vdd FILL
XFILL_3__4551_ gnd vdd FILL
XFILL_3__4131_ gnd vdd FILL
XFILL_1__4889_ gnd vdd FILL
XFILL_1__4469_ gnd vdd FILL
XFILL_1__4049_ gnd vdd FILL
XFILL_4__2894_ gnd vdd FILL
XFILL_4__2474_ gnd vdd FILL
XFILL_0__2794_ gnd vdd FILL
XFILL_0__2374_ gnd vdd FILL
X_4480_ \u_cpu.DIHOLD\[0] _1209_ vdd gnd INVX1
X_4060_ _828_ _827_ vdd gnd INVX1
XFILL_2__3753_ gnd vdd FILL
XFILL_2__3333_ gnd vdd FILL
XFILL_4__3679_ gnd vdd FILL
XFILL_4__3259_ gnd vdd FILL
XFILL_4__4620_ gnd vdd FILL
XFILL_4__4200_ gnd vdd FILL
XFILL_0__3999_ gnd vdd FILL
XFILL_0__3579_ gnd vdd FILL
XFILL_0__4940_ gnd vdd FILL
XFILL_2__4958_ gnd vdd FILL
XFILL_0__4520_ gnd vdd FILL
XFILL_2__4538_ gnd vdd FILL
XFILL_0__4100_ gnd vdd FILL
XFILL_2__4118_ gnd vdd FILL
XFILL_1__2535_ gnd vdd FILL
XFILL_3__3822_ gnd vdd FILL
XFILL_3__3402_ gnd vdd FILL
XFILL_2__4291_ gnd vdd FILL
XFILL_3__4607_ gnd vdd FILL
X_3751_ _1321_ _888_ _1196__bF$buf6 _550_ vdd gnd OAI21X1
X_3331_ \u_cpu.AXYS[2]\[4] _760_ _177_ vdd gnd NAND2X1
XFILL_2__2604_ gnd vdd FILL
X_4956_ _2221_ _2195_ _2226_ _2227_ Data_In[2] vdd 
+ gnd
+ AOI22X1
X_4536_ _1268_ _1265_ _1264_ vdd gnd AND2X2
X_4116_ _883_ _882_ vdd gnd INVX1
XFILL_1__3493_ gnd vdd FILL
XFILL_2__3809_ gnd vdd FILL
XFILL_3__4780_ gnd vdd FILL
XFILL_3__4360_ gnd vdd FILL
XFILL_1__4698_ gnd vdd FILL
XFILL_1__4278_ gnd vdd FILL
XFILL_2__3982_ gnd vdd FILL
XFILL_2__3562_ gnd vdd FILL
XFILL_4__3488_ gnd vdd FILL
X_2602_ _2043_ _2130_ _2131_ vdd gnd NOR2X1
XFILL_0__3388_ gnd vdd FILL
XFILL_2__4767_ gnd vdd FILL
XFILL_2__4347_ gnd vdd FILL
X_3807_ _605_ _604_ _606_ _2353_[0] vdd gnd NAND3X1
XFILL_1__2764_ gnd vdd FILL
XFILL_3__3631_ gnd vdd FILL
XFILL_3__3211_ gnd vdd FILL
XFILL_1__3969_ gnd vdd FILL
XFILL_1__3549_ gnd vdd FILL
XFILL_1__4910_ gnd vdd FILL
XFILL_3__4836_ gnd vdd FILL
XFILL_3__4416_ gnd vdd FILL
X_3980_ _1123_ _995_ _754_ vdd gnd NAND2X1
X_3560_ _811_ _367_ _366_ _365_ vdd gnd NAND3X1
X_3140_ _1417__bF$buf0 vdd _1406_ clk_bF$buf2 \u_cpu.AXYS[3]\[6] vdd 
+ gnd
+ DFFSR
XFILL272850x75750 gnd vdd FILL
XFILL_2__2833_ gnd vdd FILL
XFILL_2__2413_ gnd vdd FILL
XFILL_4__2759_ gnd vdd FILL
XFILL_4__3700_ gnd vdd FILL
XFILL_0__2659_ gnd vdd FILL
X_4765_ _1689_ _1683_ \u_cpu.BI\[6] _1818_ vdd gnd OAI21X1
X_4345_ _1133_ _1091_ _1144_ _1089_ vdd gnd NAND3X1
XFILL_0__3600_ gnd vdd FILL
XFILL_2__3618_ gnd vdd FILL
XFILL_4__4905_ gnd vdd FILL
XFILL_1__4087_ gnd vdd FILL
XFILL_0__4805_ gnd vdd FILL
XFILL_3__2902_ gnd vdd FILL
XFILL_2__3791_ gnd vdd FILL
XFILL_2__3371_ gnd vdd FILL
XFILL_4__3297_ gnd vdd FILL
X_2831_ _1635__bF$buf2 _1663_ _1664_ vdd gnd NAND2X1
X_2411_ _1961_ _1663_ _1643__bF$buf3 _63_ vdd gnd OAI21X1
XFILL_0__3197_ gnd vdd FILL
XFILL_2__4576_ gnd vdd FILL
XFILL_2__4156_ gnd vdd FILL
X_3616_ _1328__bF$buf4 _536_ RDY_bF$buf5 _420_ vdd gnd OAI21X1
XFILL_1__2993_ gnd vdd FILL
XFILL_1__2573_ gnd vdd FILL
XFILL_3__2499_ gnd vdd FILL
XFILL_3__3860_ gnd vdd FILL
XFILL_3__3440_ gnd vdd FILL
XFILL_3__3020_ gnd vdd FILL
XFILL_1__3778_ gnd vdd FILL
XFILL_1__3358_ gnd vdd FILL
XFILL_3__4645_ gnd vdd FILL
XFILL_3__4225_ gnd vdd FILL
XFILL_2__2642_ gnd vdd FILL
XFILL_4__2988_ gnd vdd FILL
XFILL_4__2568_ gnd vdd FILL
XFILL_0__2888_ gnd vdd FILL
XFILL_0__2468_ gnd vdd FILL
X_4994_ _1491_ vdd _1632_ clk_bF$buf12 \u_pia_kbd.state\[1] vdd 
+ gnd
+ DFFSR
X_4574_ _1303_ _1309_ _1304_ _1302_ vdd gnd NOR3X1
X_4154_ _952_ _921_ _918_ _1463_ vdd gnd OAI21X1
XFILL_2__3847_ gnd vdd FILL
XFILL_2__3427_ gnd vdd FILL
XFILL_2__3007_ gnd vdd FILL
XFILL_4__4714_ gnd vdd FILL
XFILL_3__2711_ gnd vdd FILL
XFILL_0__4614_ gnd vdd FILL
XFILL_1__2629_ gnd vdd FILL
XFILL_2__3180_ gnd vdd FILL
XFILL_3__3916_ gnd vdd FILL
X_2640_ _1653_ _1651_ _2094_ vdd gnd NOR2X1
XFILL_2__4385_ gnd vdd FILL
X_3845_ _1325__bF$buf4 _903_ _638_ vdd gnd NOR2X1
X_3425_ _254_ _253_ _255_ _252_ vdd gnd NAND3X1
X_3005_ _Addr_Bus[1] _1594_ vdd gnd INVX1
XFILL_1__2382_ gnd vdd FILL
XFILL_1__3587_ gnd vdd FILL
XFILL_1__3167_ gnd vdd FILL
XFILL_3__4454_ gnd vdd FILL
XFILL_3__4034_ gnd vdd FILL
XFILL_2__2451_ gnd vdd FILL
XFILL_4__2797_ gnd vdd FILL
XFILL_4__2377_ gnd vdd FILL
XFILL_0__2697_ gnd vdd FILL
X_4383_ _1125_ \u_cpu.IRHOLD\[4] _1340_ _1124_ vdd gnd OAI21X1
XFILL_2__3656_ gnd vdd FILL
XFILL_2__3236_ gnd vdd FILL
XFILL_4__4943_ gnd vdd FILL
XFILL_4__4523_ gnd vdd FILL
XFILL_4__4103_ gnd vdd FILL
XFILL_0__4843_ gnd vdd FILL
XFILL_3__2940_ gnd vdd FILL
XFILL_3__2520_ gnd vdd FILL
XFILL_0__4423_ gnd vdd FILL
XFILL_0__4003_ gnd vdd FILL
XFILL_1__2858_ gnd vdd FILL
XFILL_1__2438_ gnd vdd FILL
XFILL_3__3725_ gnd vdd FILL
XFILL_3__3305_ gnd vdd FILL
XFILL_2__4194_ gnd vdd FILL
X_3654_ _458_ _457_ vdd gnd INVX1
X_3234_ \u_cpu.sed\ \u_cpu.plp\ _120_ vdd gnd NOR2X1
XFILL_2__2927_ gnd vdd FILL
XFILL_2__2507_ gnd vdd FILL
X_4859_ _1684_ _1748_ _1899_ vdd gnd NOR2X1
X_4439_ _1188_ _1198_ _1174_ _1173_ vdd gnd OAI21X1
X_4019_ \u_cpu.AXYS[2]\[7] _790_ _789_ vdd gnd NAND2X1
XFILL_1__3396_ gnd vdd FILL
XFILL_3__4683_ gnd vdd FILL
XFILL_3__4263_ gnd vdd FILL
XFILL_2__2680_ gnd vdd FILL
X_4192_ \u_cpu.HC\ _970_ \u_cpu.ADD\[3] _949_ vdd gnd OAI21X1
XFILL_2__3885_ gnd vdd FILL
XFILL_2__3465_ gnd vdd FILL
X_2925_ _1542_ _1535_ _1543_ _1508_ vdd gnd OAI21X1
X_2505_ _2354__5_bF$buf4 _2320_ _2319_ _2321_ vdd gnd NAND3X1
XFILL_4__4752_ gnd vdd FILL
XFILL_4__4332_ gnd vdd FILL
XFILL_0__4652_ gnd vdd FILL
XFILL_0__4232_ gnd vdd FILL
XFILL_1__2667_ gnd vdd FILL
XFILL_3__3954_ gnd vdd FILL
XFILL_3__3534_ gnd vdd FILL
XFILL_1__4813_ gnd vdd FILL
XFILL_3__4739_ gnd vdd FILL
XFILL_3__4319_ gnd vdd FILL
X_3883_ \u_cpu.adc_sbc\ _673_ vdd gnd INVX1
X_3463_ _284_ _283_ _279_ _278_ vdd gnd NAND3X1
X_3043_ _1417__bF$buf6 vdd _1361_ clk_bF$buf9 \u_cpu.AXYS[0]\[7] vdd 
+ gnd
+ DFFSR
XFILL_2__2736_ gnd vdd FILL
XFILL271950x10950 gnd vdd FILL
XFILL_4__3603_ gnd vdd FILL
X_4668_ \u_cpu.alu_op\[0] _1716_ _1718_ _1721_ vdd gnd OAI21X1
X_4248_ _1117_ _1000_ vdd gnd INVX1
XFILL_0__3923_ gnd vdd FILL
XFILL_0__3503_ gnd vdd FILL
XFILL_3__4492_ gnd vdd FILL
XFILL_3__4072_ gnd vdd FILL
XFILL_4__4808_ gnd vdd FILL
XFILL273150x25350 gnd vdd FILL
XFILL_0__4708_ gnd vdd FILL
XFILL_3__2805_ gnd vdd FILL
XFILL_2__3694_ gnd vdd FILL
XFILL_2__3274_ gnd vdd FILL
X_2734_ _2354__1_bF$buf1 _1638__bF$buf0 _2001_ vdd gnd NAND2X1
XFILL_4__4981_ gnd vdd FILL
XFILL_4__4561_ gnd vdd FILL
XFILL_4__4141_ gnd vdd FILL
XFILL_2__4899_ gnd vdd FILL
XFILL_0__4461_ gnd vdd FILL
XFILL_2__4479_ gnd vdd FILL
XFILL_2__4059_ gnd vdd FILL
XFILL_0__4041_ gnd vdd FILL
X_3939_ _781_ _940_ _718_ vdd gnd NAND2X1
X_3519_ _1138_ _356_ _330_ \u_cpu.AI\[5] vdd gnd OAI21X1
XFILL_1__2896_ gnd vdd FILL
XFILL_1__2476_ gnd vdd FILL
XFILL_3__3763_ gnd vdd FILL
XFILL_3__3343_ gnd vdd FILL
XFILL_1__4622_ gnd vdd FILL
XFILL_1__4202_ gnd vdd FILL
XFILL_3__4968_ gnd vdd FILL
XFILL_3__4548_ gnd vdd FILL
XFILL_3__4128_ gnd vdd FILL
X_3692_ _554_ _564_ _496_ _495_ vdd gnd OAI21X1
X_3272_ _223_ _800__bF$buf4 _143_ _1392_ vdd gnd AOI21X1
XFILL_2__2965_ gnd vdd FILL
XFILL_2__2545_ gnd vdd FILL
XFILL_4__3832_ gnd vdd FILL
XFILL_4__3412_ gnd vdd FILL
X_4897_ _2163_ _2167_ _2172_ _2173_ vdd gnd NOR3X1
X_4477_ \u_cpu.DIMUX\[0] _1207_ vdd gnd INVX2
X_4057_ _889_ _1083_ _824_ vdd gnd NOR2X1
XFILL_0__3732_ gnd vdd FILL
XFILL_0__3312_ gnd vdd FILL
XFILL_4__4617_ gnd vdd FILL
XFILL_0__4937_ gnd vdd FILL
XFILL_3__2614_ gnd vdd FILL
XFILL_0__4517_ gnd vdd FILL
XFILL_3__3819_ gnd vdd FILL
X_2963_ _1491_ vdd _1496_ clk_bF$buf3 DO_kbd[5] vdd 
+ gnd
+ DFFSR
X_2543_ _2280_ _2283_ _2278_ _1923__bF$buf0 _2284_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4790_ gnd vdd FILL
XFILL_4__4370_ gnd vdd FILL
XFILL_0__4690_ gnd vdd FILL
XFILL_2__4288_ gnd vdd FILL
XFILL_0__4270_ gnd vdd FILL
X_3748_ _1325__bF$buf2 _881_ RDY_bF$buf6 _547_ vdd gnd OAI21X1
X_3328_ _932_ _760_ _176_ _1415_ vdd gnd OAI21X1
XFILL_3__3992_ gnd vdd FILL
XFILL_3__3572_ gnd vdd FILL
XFILL_1__4851_ gnd vdd FILL
XFILL_1__4431_ gnd vdd FILL
XFILL_1__4011_ gnd vdd FILL
XFILL_3__4777_ gnd vdd FILL
XFILL_3__4357_ gnd vdd FILL
X_3081_ _1417__bF$buf0 vdd _1377_ clk_bF$buf10 \u_cpu.ABH\[5] vdd 
+ gnd
+ DFFSR
XFILL_2__2774_ gnd vdd FILL
XFILL_4__3641_ gnd vdd FILL
XFILL_4__3221_ gnd vdd FILL
X_4286_ _1035_ _1033_ _1032_ vdd gnd NOR2X1
XFILL_2__3979_ gnd vdd FILL
XFILL_0__3961_ gnd vdd FILL
XFILL_2__3559_ gnd vdd FILL
XFILL_0__3541_ gnd vdd FILL
XFILL_2__4920_ gnd vdd FILL
XFILL_2__4500_ gnd vdd FILL
XFILL_4__4846_ gnd vdd FILL
XFILL_4__4426_ gnd vdd FILL
XFILL_4__4006_ gnd vdd FILL
XFILL_0__4746_ gnd vdd FILL
XFILL_3__2843_ gnd vdd FILL
XFILL_3__2423_ gnd vdd FILL
XFILL_0__4326_ gnd vdd FILL
XFILL_1__3702_ gnd vdd FILL
XFILL_3__3628_ gnd vdd FILL
XFILL_3__3208_ gnd vdd FILL
X_2772_ _1963_ _1964_ vdd gnd INVX1
XFILL_2__4097_ gnd vdd FILL
XFILL_1__4907_ gnd vdd FILL
XFILL_4__2912_ gnd vdd FILL
X_3977_ _755_ _752_ _1129__bF$buf1 _751_ vdd gnd OAI21X1
X_3557_ _363_ _834_ _362_ vdd gnd NOR2X1
X_3137_ _1417__bF$buf5 vdd _1476_ clk_bF$buf11 \u_cpu.op\[0] vdd 
+ gnd
+ DFFSR
XFILL_0__2812_ gnd vdd FILL
XFILL_3__3381_ gnd vdd FILL
XFILL_1__3299_ gnd vdd FILL
XFILL_1__4660_ gnd vdd FILL
XFILL_1__4240_ gnd vdd FILL
XFILL_3__4586_ gnd vdd FILL
XFILL_3__4166_ gnd vdd FILL
XFILL_2__2583_ gnd vdd FILL
XFILL273450x68550 gnd vdd FILL
XFILL_4__3870_ gnd vdd FILL
XFILL_4__3450_ gnd vdd FILL
XFILL_4__3030_ gnd vdd FILL
X_4095_ _863_ _862_ _861_ vdd gnd AND2X2
XFILL_0__3770_ gnd vdd FILL
XFILL_2__3788_ gnd vdd FILL
XFILL_0__3350_ gnd vdd FILL
XFILL_2__3368_ gnd vdd FILL
X_2828_ _1643__bF$buf4 _1673_ _1659_ _1662_ _1674_ vdd 
+ gnd
+ OAI22X1
X_2408_ _65_ _64_ _2354__4_bF$buf3 _66_ vdd gnd OAI21X1
XFILL_4__4655_ gnd vdd FILL
XFILL_4__4235_ gnd vdd FILL
XFILL_0__4975_ gnd vdd FILL
XFILL_3__2652_ gnd vdd FILL
XFILL_0__4555_ gnd vdd FILL
XFILL_0__4135_ gnd vdd FILL
XFILL_1__3931_ gnd vdd FILL
XFILL_1__3511_ gnd vdd FILL
XFILL_3__3857_ gnd vdd FILL
XFILL_3__3437_ gnd vdd FILL
XFILL_3__3017_ gnd vdd FILL
X_2581_ _2354__2_bF$buf1 _1638__bF$buf1 _2354__4_bF$buf5 _2152_ vdd gnd OAI21X1
XFILL_1__4716_ gnd vdd FILL
XFILL_4__2721_ gnd vdd FILL
X_3786_ _1325__bF$buf2 _1081_ _585_ vdd gnd NOR2X1
X_3366_ _478_ _202_ vdd gnd INVX1
XFILL_0__2621_ gnd vdd FILL
XFILL_2__2639_ gnd vdd FILL
XFILL_3__3190_ gnd vdd FILL
XFILL_4__3926_ gnd vdd FILL
XFILL_4__3506_ gnd vdd FILL
XFILL_0__3826_ gnd vdd FILL
XFILL_0__3406_ gnd vdd FILL
XFILL_3__4395_ gnd vdd FILL
XFILL_3__2708_ gnd vdd FILL
XFILL_2__3597_ gnd vdd FILL
XFILL_2__3177_ gnd vdd FILL
X_2637_ _2354__4_bF$buf4 _2095_ _2096_ _2097_ vdd gnd NAND3X1
XFILL_4__4884_ gnd vdd FILL
XFILL_4__4464_ gnd vdd FILL
XFILL_4__4044_ gnd vdd FILL
XFILL_0__4784_ gnd vdd FILL
XFILL_3__2881_ gnd vdd FILL
XFILL_0__4364_ gnd vdd FILL
XFILL_3__2461_ gnd vdd FILL
XFILL_1__2799_ gnd vdd FILL
XFILL_1__2379_ gnd vdd FILL
XFILL_1__3740_ gnd vdd FILL
XFILL_1__3320_ gnd vdd FILL
XFILL_3__3666_ gnd vdd FILL
XFILL_3__3246_ gnd vdd FILL
X_2390_ _2346_[0] clk_bF$buf12 DO_woz[0] vdd gnd DFFPOSX1
XFILL_1__4945_ gnd vdd FILL
XFILL_1__4525_ gnd vdd FILL
XFILL_1__4105_ gnd vdd FILL
XFILL_4__2950_ gnd vdd FILL
XFILL_4__2530_ gnd vdd FILL
X_3595_ \u_cpu.state\[4] _906_ _1196__bF$buf3 _399_ vdd gnd OAI21X1
X_3175_ \u_cpu.PC\[4] _1196__bF$buf1 _79_ vdd gnd NAND2X1
XFILL_0__2850_ gnd vdd FILL
XFILL_0__2430_ gnd vdd FILL
XFILL_2__2448_ gnd vdd FILL
XFILL_4__3735_ gnd vdd FILL
XFILL_4__3315_ gnd vdd FILL
XFILL_0__3635_ gnd vdd FILL
XFILL_0__3215_ gnd vdd FILL
XFILL_3__2937_ gnd vdd FILL
XFILL_3__2517_ gnd vdd FILL
X_2866_ _1514_ vdd _1596_ clk_bF$buf1 \u_pia_dsp.state\[2] vdd 
+ gnd
+ DFFSR
X_2446_ _2156_ _2086_ _2000_ _29_ vdd gnd OAI21X1
XFILL_4__4693_ gnd vdd FILL
XFILL_4__4273_ gnd vdd FILL
XFILL_3__2690_ gnd vdd FILL
XFILL_0__4593_ gnd vdd FILL
XFILL_0__4173_ gnd vdd FILL
XFILL_0__2906_ gnd vdd FILL
XFILL_3__3895_ gnd vdd FILL
XFILL_3__3475_ gnd vdd FILL
XFILL_1__4754_ gnd vdd FILL
XFILL_1__4334_ gnd vdd FILL
XFILL_2__2677_ gnd vdd FILL
XFILL_4__3964_ gnd vdd FILL
XFILL_4__3544_ gnd vdd FILL
X_4189_ _950_ _947_ _946_ vdd gnd AND2X2
XFILL_0__3864_ gnd vdd FILL
XFILL_0__3444_ gnd vdd FILL
XFILL_0__3024_ gnd vdd FILL
XFILL_2__4823_ gnd vdd FILL
XFILL_2__4403_ gnd vdd FILL
XFILL_4__4749_ gnd vdd FILL
XFILL_4__4329_ gnd vdd FILL
XFILL_1__2820_ gnd vdd FILL
XFILL_1__2400_ gnd vdd FILL
XFILL_0__4649_ gnd vdd FILL
XFILL_3__2746_ gnd vdd FILL
XFILL_0__4229_ gnd vdd FILL
XFILL_1__3605_ gnd vdd FILL
XFILL273750x21750 gnd vdd FILL
X_2675_ _2354__3_bF$buf5 _1637_ _1634__bF$buf5 _2059_ vdd gnd OAI21X1
XFILL_4__4082_ gnd vdd FILL
XFILL_4__2815_ gnd vdd FILL
XFILL_0__2715_ gnd vdd FILL
X_4821_ \u_cpu.u_ALU8.AI7\ _1866_ vdd gnd INVX1
X_4401_ \u_cpu.DIHOLD\[5] _1140_ vdd gnd INVX1
XFILL_3__3284_ gnd vdd FILL
XFILL_1__4983_ gnd vdd FILL
XFILL_1__4563_ gnd vdd FILL
XFILL_1__4143_ gnd vdd FILL
XFILL_3__4489_ gnd vdd FILL
XFILL_3__4069_ gnd vdd FILL
XFILL_2__2486_ gnd vdd FILL
XFILL_4__3773_ gnd vdd FILL
XFILL_4__3353_ gnd vdd FILL
XFILL_0__3673_ gnd vdd FILL
XFILL_0__3253_ gnd vdd FILL
XFILL_2__4632_ gnd vdd FILL
XFILL_2__4212_ gnd vdd FILL
XFILL_4__4978_ gnd vdd FILL
XFILL_4__4558_ gnd vdd FILL
XFILL_4__4138_ gnd vdd FILL
XFILL_3__2975_ gnd vdd FILL
XFILL_3__2555_ gnd vdd FILL
XFILL_0__4458_ gnd vdd FILL
XFILL_0__4038_ gnd vdd FILL
XFILL272250x10950 gnd vdd FILL
XFILL_1__3834_ gnd vdd FILL
XFILL_1__3414_ gnd vdd FILL
X_2484_ _1994_ _1995_ _2354__3_bF$buf6 _2342_ vdd gnd OAI21X1
XFILL_3__4701_ gnd vdd FILL
XFILL_1__4619_ gnd vdd FILL
XFILL_4__2624_ gnd vdd FILL
X_3689_ _891_ _493_ _569_ _667_ _492_ vdd 
+ gnd
+ AOI22X1
X_3269_ _142_ _800__bF$buf2 _141_ _1391_ vdd gnd OAI21X1
XFILL_0__2944_ gnd vdd FILL
XFILL_0__2524_ gnd vdd FILL
X_4630_ \u_cpu.AI\[6] _1683_ vdd gnd INVX1
X_4210_ _1070__bF$buf1 _965_ _964_ vdd gnd NAND2X1
XFILL_2__3903_ gnd vdd FILL
XFILL_4__3829_ gnd vdd FILL
XFILL_4__3409_ gnd vdd FILL
XFILL_0__3729_ gnd vdd FILL
XFILL_0__3309_ gnd vdd FILL
XFILL_1__4792_ gnd vdd FILL
XFILL_1__4372_ gnd vdd FILL
XFILL_3__4298_ gnd vdd FILL
XFILL_4__3582_ gnd vdd FILL
XFILL_0__3482_ gnd vdd FILL
XFILL_2__4861_ gnd vdd FILL
XFILL_2__4441_ gnd vdd FILL
XFILL_2__4021_ gnd vdd FILL
XFILL_4__4787_ gnd vdd FILL
XFILL_4__4367_ gnd vdd FILL
X_3901_ \u_cpu.load_reg\ _689_ vdd gnd INVX1
XFILL_0__4687_ gnd vdd FILL
XFILL_3__2784_ gnd vdd FILL
XFILL_3__2364_ gnd vdd FILL
XFILL_0__4267_ gnd vdd FILL
XFILL_1__3643_ gnd vdd FILL
XFILL_1__3223_ gnd vdd FILL
XFILL_3__3989_ gnd vdd FILL
XFILL_3__3569_ gnd vdd FILL
XFILL_3__4930_ gnd vdd FILL
XFILL_3__4510_ gnd vdd FILL
XFILL_1__4848_ gnd vdd FILL
XFILL_1__4428_ gnd vdd FILL
XFILL_1__4008_ gnd vdd FILL
XFILL_4__2853_ gnd vdd FILL
XFILL_4__2433_ gnd vdd FILL
X_3498_ _766_ _768_ _312_ _311_ vdd gnd OAI21X1
X_3078_ _1417__bF$buf10 vdd _1438_ clk_bF$buf8 \u_cpu.C\ vdd 
+ gnd
+ DFFSR
XFILL_0__2753_ gnd vdd FILL
XFILL_2__3712_ gnd vdd FILL
XFILL_4__3638_ gnd vdd FILL
XFILL_4__3218_ gnd vdd FILL
XFILL_0__3958_ gnd vdd FILL
XFILL_0__3538_ gnd vdd FILL
XFILL_1__4181_ gnd vdd FILL
XFILL_2__4917_ gnd vdd FILL
XFILL_1__2914_ gnd vdd FILL
XFILL_4__3391_ gnd vdd FILL
XFILL_0__3291_ gnd vdd FILL
XFILL_2__4670_ gnd vdd FILL
XFILL_2__4250_ gnd vdd FILL
X_2769_ _2354__3_bF$buf2 _2354__1_bF$buf1 _1967_ vdd gnd NOR2X1
XFILL_4__4596_ gnd vdd FILL
XFILL_4__4176_ gnd vdd FILL
X_3710_ _1196__bF$buf4 _882_ _510_ _509_ vdd gnd OAI21X1
XFILL_3__2593_ gnd vdd FILL
XFILL_0__4496_ gnd vdd FILL
XFILL_0__4076_ gnd vdd FILL
XFILL_4__2909_ gnd vdd FILL
XFILL_0__2809_ gnd vdd FILL
X_4915_ _2189_ _2190_ _2191_ vdd gnd NOR2X1
XFILL_1__3872_ gnd vdd FILL
XFILL_1__3452_ gnd vdd FILL
XFILL_1__3032_ gnd vdd FILL
XFILL_3__3798_ gnd vdd FILL
XFILL_3__3378_ gnd vdd FILL
XFILL_1__4657_ gnd vdd FILL
XFILL_1__4237_ gnd vdd FILL
XFILL_4__2662_ gnd vdd FILL
XFILL_0__2982_ gnd vdd FILL
XFILL_0__2562_ gnd vdd FILL
XFILL_2__3941_ gnd vdd FILL
XFILL_2__3521_ gnd vdd FILL
XFILL_4__3867_ gnd vdd FILL
XFILL_4__3447_ gnd vdd FILL
XFILL_4__3027_ gnd vdd FILL
XFILL_0__3767_ gnd vdd FILL
XFILL_0__3347_ gnd vdd FILL
XFILL_2__4726_ gnd vdd FILL
XFILL_2__4306_ gnd vdd FILL
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
XFILL_2_BUFX2_insert19 gnd vdd FILL
XFILL_3__2649_ gnd vdd FILL
XFILL_1__3928_ gnd vdd FILL
XFILL_1__3508_ gnd vdd FILL
X_2998_ _1512_ _1603_ _1584_ _1632_ vdd gnd OAI21X1
X_2578_ _2154_ _2148_ _1923__bF$buf2 _2155_ vdd gnd OAI21X1
XFILL_4__2718_ gnd vdd FILL
XFILL_0__2618_ gnd vdd FILL
X_4724_ \u_cpu.AI\[3] _1774_ _1777_ vdd gnd NOR2X1
X_4304_ _1087_ _1049_ vdd gnd INVX1
XFILL_1__3681_ gnd vdd FILL
XFILL_1__3261_ gnd vdd FILL
XFILL_3__3187_ gnd vdd FILL
XFILL_1__4886_ gnd vdd FILL
XFILL_1__4466_ gnd vdd FILL
XFILL_1__4046_ gnd vdd FILL
XFILL_4__2891_ gnd vdd FILL
XFILL_4__2471_ gnd vdd FILL
XFILL_0__2791_ gnd vdd FILL
XFILL_0__2371_ gnd vdd FILL
XFILL_2__2389_ gnd vdd FILL
XFILL_2__3750_ gnd vdd FILL
XFILL_2__3330_ gnd vdd FILL
XFILL_4__3676_ gnd vdd FILL
XFILL_4__3256_ gnd vdd FILL
XFILL_0__3996_ gnd vdd FILL
XFILL_0__3576_ gnd vdd FILL
XFILL_2__4955_ gnd vdd FILL
XFILL_2__4535_ gnd vdd FILL
XFILL_2__4115_ gnd vdd FILL
XFILL_1__2532_ gnd vdd FILL
XFILL_3__2878_ gnd vdd FILL
XFILL_3__2458_ gnd vdd FILL
XFILL_1__3737_ gnd vdd FILL
XFILL_1__3317_ gnd vdd FILL
X_2387_ DO_dsp[2] dsp_data[2] vdd gnd BUFX2
XFILL_3__4604_ gnd vdd FILL
XFILL_2__2601_ gnd vdd FILL
XFILL_4__2947_ gnd vdd FILL
XFILL_4__2527_ gnd vdd FILL
XFILL_0__2847_ gnd vdd FILL
XFILL_0__2427_ gnd vdd FILL
X_4953_ _2224_ _2186_ _2225_ vdd gnd NAND2X1
X_4533_ _1343_ \u_cpu.res\ _1274_ _1261_ vdd gnd OAI21X1
X_4113_ _882_ _880_ _879_ vdd gnd NOR2X1
XFILL_1__3490_ gnd vdd FILL
XFILL_2__3806_ gnd vdd FILL
XFILL_1__4695_ gnd vdd FILL
XFILL_1__4275_ gnd vdd FILL
XFILL_4__3485_ gnd vdd FILL
XFILL_0__3385_ gnd vdd FILL
XFILL_2__4764_ gnd vdd FILL
XFILL_2__4344_ gnd vdd FILL
X_3804_ _603_ _786_ _602_ _601_ vdd gnd OAI21X1
XFILL_1__2761_ gnd vdd FILL
XFILL_3__2687_ gnd vdd FILL
XFILL_1__3966_ gnd vdd FILL
XFILL_1__3546_ gnd vdd FILL
XFILL_3__4833_ gnd vdd FILL
XFILL_3__4413_ gnd vdd FILL
XFILL_2__2830_ gnd vdd FILL
XFILL_2__2410_ gnd vdd FILL
XFILL_4__2756_ gnd vdd FILL
XFILL_0__2656_ gnd vdd FILL
X_4762_ \u_cpu.AI\[7] _1815_ vdd gnd INVX1
X_4342_ _1346_ _1347_ _1087_ vdd gnd NAND2X1
XFILL_2__3615_ gnd vdd FILL
XFILL_4__4902_ gnd vdd FILL
XFILL_1__4084_ gnd vdd FILL
XFILL_0__4802_ gnd vdd FILL
XFILL_1__2817_ gnd vdd FILL
XFILL_4__3294_ gnd vdd FILL
XFILL_0__3194_ gnd vdd FILL
XFILL_2__4573_ gnd vdd FILL
XFILL_2__4153_ gnd vdd FILL
XFILL_4__4499_ gnd vdd FILL
XFILL_4__4079_ gnd vdd FILL
X_3613_ _808_ _419_ _418_ _417_ vdd gnd OAI21X1
XFILL_1__2990_ gnd vdd FILL
XFILL_1__2570_ gnd vdd FILL
XFILL_3__2496_ gnd vdd FILL
XFILL_0__4399_ gnd vdd FILL
X_4818_ _1861_ _1862_ _1863_ vdd gnd NOR2X1
XFILL_1__3775_ gnd vdd FILL
XFILL_1__3355_ gnd vdd FILL
XFILL_3__4642_ gnd vdd FILL
XFILL_3__4222_ gnd vdd FILL
XFILL_4__2985_ gnd vdd FILL
XFILL_4__2565_ gnd vdd FILL
XFILL_0__2885_ gnd vdd FILL
XFILL_0__2465_ gnd vdd FILL
X_4991_ _2354_[9] clk_bF$buf12 _Addr_Bus[9] vdd gnd DFFPOSX1
X_4571_ \u_cpu.ABL\[7] _1299_ vdd gnd INVX1
X_4151_ \u_cpu.AXYS[3]\[4] _921_ _916_ vdd gnd NAND2X1
XFILL_2__3844_ gnd vdd FILL
XFILL_2__3424_ gnd vdd FILL
XFILL_2__3004_ gnd vdd FILL
XFILL_4__4711_ gnd vdd FILL
XFILL_2__4629_ gnd vdd FILL
XFILL_0__4611_ gnd vdd FILL
XFILL_2__4209_ gnd vdd FILL
XFILL_1__2626_ gnd vdd FILL
XFILL_3__3913_ gnd vdd FILL
XFILL_2__4382_ gnd vdd FILL
X_3842_ _873_ _636_ _635_ vdd gnd NOR2X1
X_3422_ _1319_ _887_ \u_cpu.DIMUX\[3] _250_ vdd gnd OAI21X1
X_3002_ _Addr_Bus[5] _Addr_Bus[2] _1600_ vdd gnd NOR2X1
X_4627_ \u_cpu.PC\[7] _1355_ vdd gnd INVX1
X_4207_ _977_ _963_ _962_ _1472_ vdd gnd OAI21X1
XFILL_1__3584_ gnd vdd FILL
XFILL_3__4451_ gnd vdd FILL
XFILL_3__4031_ gnd vdd FILL
XFILL_1__4789_ gnd vdd FILL
XFILL_1__4369_ gnd vdd FILL
XFILL_4__2794_ gnd vdd FILL
XFILL_4__2374_ gnd vdd FILL
XFILL_0__2694_ gnd vdd FILL
X_4380_ _1125_ _1165_ _1122_ _1121_ vdd gnd AOI21X1
XFILL_2__3653_ gnd vdd FILL
XFILL_2__3233_ gnd vdd FILL
XFILL_4__3999_ gnd vdd FILL
XFILL_4__3579_ gnd vdd FILL
XFILL_4__4940_ gnd vdd FILL
XFILL_4__4520_ gnd vdd FILL
XFILL_4__4100_ gnd vdd FILL
XFILL_0__3899_ gnd vdd FILL
XFILL_0__3479_ gnd vdd FILL
XFILL_2__4858_ gnd vdd FILL
XFILL_0__4840_ gnd vdd FILL
XFILL_0__4420_ gnd vdd FILL
XFILL_2__4438_ gnd vdd FILL
XFILL_0__4000_ gnd vdd FILL
XFILL_2__4018_ gnd vdd FILL
XFILL_1__2855_ gnd vdd FILL
XFILL_1__2435_ gnd vdd FILL
XFILL_3__3722_ gnd vdd FILL
XFILL_3__3302_ gnd vdd FILL
XFILL_2__4191_ gnd vdd FILL
XFILL_3__4927_ gnd vdd FILL
XFILL_3__4507_ gnd vdd FILL
X_3651_ _459_ _520_ _455_ _454_ vdd gnd NAND3X1
X_3231_ \u_cpu.plp\ \u_cpu.cld\ _118_ _117_ vdd gnd OAI21X1
XFILL_3_BUFX2_insert80 gnd vdd FILL
XFILL_3_BUFX2_insert81 gnd vdd FILL
XFILL_3_BUFX2_insert82 gnd vdd FILL
XFILL_3_BUFX2_insert83 gnd vdd FILL
XFILL_2__2924_ gnd vdd FILL
XFILL_2__2504_ gnd vdd FILL
XFILL_3_BUFX2_insert84 gnd vdd FILL
XFILL_3_BUFX2_insert85 gnd vdd FILL
XFILL_3_BUFX2_insert86 gnd vdd FILL
XFILL_3_BUFX2_insert87 gnd vdd FILL
XFILL_3_BUFX2_insert88 gnd vdd FILL
XFILL_3_BUFX2_insert89 gnd vdd FILL
X_4856_ \u_cpu.HC\ _1681__bF$buf3 _1897_ vdd gnd NAND2X1
X_4436_ _1173_ _1171_ _1196__bF$buf1 _1170_ vdd gnd AOI21X1
X_4016_ _1050_ _786_ vdd gnd INVX1
XFILL_1__3393_ gnd vdd FILL
XFILL_2__3709_ gnd vdd FILL
XFILL_3__4680_ gnd vdd FILL
XFILL_3__4260_ gnd vdd FILL
XFILL_1__4598_ gnd vdd FILL
XFILL_1__4178_ gnd vdd FILL
XFILL_2__3882_ gnd vdd FILL
XFILL_2__3462_ gnd vdd FILL
XFILL_4__3388_ gnd vdd FILL
XFILL_4_BUFX2_insert150 gnd vdd FILL
XFILL_4_BUFX2_insert151 gnd vdd FILL
XFILL_4_BUFX2_insert152 gnd vdd FILL
X_2922_ _1544_ _1535_ _1545_ _1509_ vdd gnd OAI21X1
XFILL_4_BUFX2_insert153 gnd vdd FILL
X_2502_ _2354__1_bF$buf2 _2354__0_bF$buf4 _2354__2_bF$buf0 _2324_ vdd gnd AOI21X1
XFILL_4_BUFX2_insert154 gnd vdd FILL
XFILL_4_BUFX2_insert155 gnd vdd FILL
XFILL_4_BUFX2_insert156 gnd vdd FILL
XFILL_4_BUFX2_insert157 gnd vdd FILL
XFILL_4_BUFX2_insert158 gnd vdd FILL
XFILL_4_BUFX2_insert159 gnd vdd FILL
XFILL_0__3288_ gnd vdd FILL
XFILL_2__4667_ gnd vdd FILL
XFILL_2__4247_ gnd vdd FILL
X_3707_ _507_ _508_ _506_ vdd gnd NAND2X1
XFILL_1__2664_ gnd vdd FILL
XFILL_3__3951_ gnd vdd FILL
XFILL_3__3531_ gnd vdd FILL
XFILL_1__3869_ gnd vdd FILL
XFILL_1__3449_ gnd vdd FILL
XFILL_1__3029_ gnd vdd FILL
XFILL_1__4810_ gnd vdd FILL
XFILL_3__4736_ gnd vdd FILL
XFILL_3__4316_ gnd vdd FILL
X_3880_ _673_ _672_ _671_ _670_ vdd gnd NAND3X1
X_3460_ _1207_ _278_ _277_ \u_cpu.BI\[0] vdd gnd OAI21X1
X_3040_ _1417__bF$buf3 vdd _1461_ clk_bF$buf7 \u_cpu.AXYS[3]\[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2733_ gnd vdd FILL
XFILL_4__2659_ gnd vdd FILL
XFILL_4__3600_ gnd vdd FILL
XFILL_0__2979_ gnd vdd FILL
XFILL_0__2559_ gnd vdd FILL
X_4665_ \u_cpu.AI\[2] _1718_ vdd gnd INVX1
X_4245_ _1001_ _998_ _997_ vdd gnd NAND2X1
XFILL_0__3920_ gnd vdd FILL
XFILL_2__3938_ gnd vdd FILL
XFILL_0__3500_ gnd vdd FILL
XFILL_2__3518_ gnd vdd FILL
XFILL_4__4805_ gnd vdd FILL
XFILL_3__2802_ gnd vdd FILL
XFILL_0__4705_ gnd vdd FILL
XFILL_2__3691_ gnd vdd FILL
XFILL_2__3271_ gnd vdd FILL
XFILL_4__3197_ gnd vdd FILL
X_2731_ _1636__bF$buf4 _2002_ _2003_ _2001_ _2004_ vdd 
+ gnd
+ AOI22X1
XFILL_2__4896_ gnd vdd FILL
XFILL_2__4476_ gnd vdd FILL
XFILL_2__4056_ gnd vdd FILL
X_3936_ _720_ _717_ _715_ vdd gnd AND2X2
X_3516_ _329_ _328_ _327_ vdd gnd NAND2X1
XFILL_1__2893_ gnd vdd FILL
XFILL_1__2473_ gnd vdd FILL
XFILL_3__2399_ gnd vdd FILL
XFILL_3__3760_ gnd vdd FILL
XFILL_3__3340_ gnd vdd FILL
XFILL_1__3678_ gnd vdd FILL
XFILL_1__3258_ gnd vdd FILL
XFILL273150x46950 gnd vdd FILL
XFILL_3__4965_ gnd vdd FILL
XFILL_3__4545_ gnd vdd FILL
XFILL_3__4125_ gnd vdd FILL
XFILL_2__2542_ gnd vdd FILL
XFILL_4__2888_ gnd vdd FILL
XFILL_4__2468_ gnd vdd FILL
XFILL_0__2788_ gnd vdd FILL
XFILL_0__2368_ gnd vdd FILL
X_4894_ _Addr_Bus[7] _2169_ _2170_ vdd gnd NOR2X1
X_4474_ _1205_ _1349_ _1315__bF$buf2 _1204_ vdd gnd OAI21X1
X_4054_ \u_cpu.state\[4] _1330_ _889_ _821_ vdd gnd OAI21X1
XFILL_2__3747_ gnd vdd FILL
XFILL_2__3327_ gnd vdd FILL
XFILL_4__4614_ gnd vdd FILL
XFILL_0__4934_ gnd vdd FILL
XFILL_3__2611_ gnd vdd FILL
XFILL_0__4514_ gnd vdd FILL
XFILL_1__2949_ gnd vdd FILL
XFILL_1__2529_ gnd vdd FILL
XFILL_3__3816_ gnd vdd FILL
X_2960_ _1491_ vdd _1492_ clk_bF$buf12 DO_kbd[3] vdd 
+ gnd
+ DFFSR
X_2540_ _2354__3_bF$buf4 _1917_ _2254_ _2287_ vdd gnd AOI21X1
XFILL272850x61350 gnd vdd FILL
XFILL_2__4285_ gnd vdd FILL
X_3745_ _545_ _544_ vdd gnd INVX1
X_3325_ _186_ _1037__bF$buf3 _982_ _1413_ vdd gnd AOI21X1
XFILL_1__3487_ gnd vdd FILL
XFILL_3__4774_ gnd vdd FILL
XFILL_3__4354_ gnd vdd FILL
XFILL_2__2771_ gnd vdd FILL
XFILL_4__2697_ gnd vdd FILL
XFILL_0__2597_ gnd vdd FILL
X_4283_ _1037__bF$buf3 _1031_ _1030_ _1480_ vdd gnd OAI21X1
XFILL_2__3976_ gnd vdd FILL
XFILL_2__3556_ gnd vdd FILL
XFILL_4__4843_ gnd vdd FILL
XFILL_4__4423_ gnd vdd FILL
XFILL_4__4003_ gnd vdd FILL
XFILL_0__4743_ gnd vdd FILL
XFILL_3__2840_ gnd vdd FILL
XFILL_3__2420_ gnd vdd FILL
XFILL_0__4323_ gnd vdd FILL
XFILL_1__2758_ gnd vdd FILL
XFILL_3__3625_ gnd vdd FILL
XFILL_3__3205_ gnd vdd FILL
XFILL_2__4094_ gnd vdd FILL
XFILL_1__4904_ gnd vdd FILL
X_3974_ _786_ \u_cpu.load_reg\ \u_cpu.compare\ _749_ vdd gnd AOI21X1
X_3554_ _895_ _883_ _899_ _359_ vdd gnd NAND3X1
X_3134_ _1417__bF$buf1 vdd _1403_ clk_bF$buf5 \u_cpu.AXYS[1]\[5] vdd 
+ gnd
+ DFFSR
XFILL_2__2827_ gnd vdd FILL
XFILL_2__2407_ gnd vdd FILL
X_4759_ _1711_ _1714_ _1807_ _1811_ _1812_ vdd 
+ gnd
+ AOI22X1
X_4339_ _1085_ _1084_ vdd gnd INVX2
XFILL_1__3296_ gnd vdd FILL
XFILL_3__4583_ gnd vdd FILL
XFILL_3__4163_ gnd vdd FILL
XFILL_2__2580_ gnd vdd FILL
X_4092_ _859_ _2354_[15] vdd gnd INVX1
XFILL_2__3785_ gnd vdd FILL
XFILL_2__3365_ gnd vdd FILL
X_2825_ _1665_ _2354__3_bF$buf5 _2354__4_bF$buf0 _1911_ vdd gnd AOI21X1
X_2405_ _1920__bF$buf4 _2060_ _68_ _69_ vdd gnd OAI21X1
XFILL_4__4232_ gnd vdd FILL
XFILL_0__4972_ gnd vdd FILL
XFILL_0__4552_ gnd vdd FILL
XFILL_0__4132_ gnd vdd FILL
XFILL_1__2987_ gnd vdd FILL
XFILL_1__2567_ gnd vdd FILL
XFILL_3__3854_ gnd vdd FILL
XFILL_3__3434_ gnd vdd FILL
XFILL_3__3014_ gnd vdd FILL
XFILL_1__4713_ gnd vdd FILL
XFILL_3__4639_ gnd vdd FILL
XFILL_3__4219_ gnd vdd FILL
X_3783_ _1099_ _583_ _582_ vdd gnd NAND2X1
X_3363_ _298_ _455_ _199_ vdd gnd NAND2X1
XFILL_2__2636_ gnd vdd FILL
XFILL_4__3923_ gnd vdd FILL
XFILL_4__3503_ gnd vdd FILL
X_4988_ _2354__2_bF$buf4 clk_bF$buf6 _Addr_Bus[2] vdd gnd DFFPOSX1
X_4568_ _1299_ _1297_ _1315__bF$buf1 _1296_ vdd gnd OAI21X1
X_4148_ _1251_ _914_ vdd gnd INVX1
XFILL_0__3823_ gnd vdd FILL
XFILL_0__3403_ gnd vdd FILL
XFILL_3__4392_ gnd vdd FILL
XFILL_4__4708_ gnd vdd FILL
XFILL_3__2705_ gnd vdd FILL
XFILL_0__4608_ gnd vdd FILL
XFILL_2__3594_ gnd vdd FILL
XFILL_2__3174_ gnd vdd FILL
X_2634_ _2037_ _1963_ _2354__4_bF$buf2 _2100_ vdd gnd AOI21X1
XFILL_4__4461_ gnd vdd FILL
XFILL_4__4041_ gnd vdd FILL
XFILL_2__4799_ gnd vdd FILL
XFILL_0__4781_ gnd vdd FILL
XFILL_0__4361_ gnd vdd FILL
XFILL_2__4379_ gnd vdd FILL
X_3839_ _633_ _632_ vdd gnd INVX1
X_3419_ _1169_ _864_ _248_ _247_ vdd gnd OAI21X1
XFILL_1__2796_ gnd vdd FILL
XFILL_1__2376_ gnd vdd FILL
XFILL_3__3663_ gnd vdd FILL
XFILL_3__3243_ gnd vdd FILL
XFILL_1__4942_ gnd vdd FILL
XFILL_1__4522_ gnd vdd FILL
XFILL_1__4102_ gnd vdd FILL
XFILL_3__4868_ gnd vdd FILL
XFILL_3__4448_ gnd vdd FILL
XFILL_3__4028_ gnd vdd FILL
X_3592_ _583_ _486_ _1123_ _396_ vdd gnd OAI21X1
X_3172_ _77_ _78_ _76_ vdd gnd NAND2X1
XFILL_2__2445_ gnd vdd FILL
XFILL_4__3732_ gnd vdd FILL
XFILL_4__3312_ gnd vdd FILL
X_4797_ _1681__bF$buf2 _1801_ _1847_ _1668_ vdd gnd OAI21X1
X_4377_ _1125_ _1179_ _1119_ _1118_ vdd gnd AOI21X1
XFILL_0__3632_ gnd vdd FILL
XFILL_0__3212_ gnd vdd FILL
XFILL_4__4937_ gnd vdd FILL
XFILL_4__4517_ gnd vdd FILL
XFILL_0__4837_ gnd vdd FILL
XFILL_3__2934_ gnd vdd FILL
XFILL_3__2514_ gnd vdd FILL
XFILL_0__4417_ gnd vdd FILL
XFILL_3__3719_ gnd vdd FILL
X_2863_ _1516_ clk_bF$buf1 _2350_ vdd gnd DFFPOSX1
X_2443_ _31_ _32_ vdd gnd INVX1
XFILL_4__4690_ gnd vdd FILL
XFILL_4__4270_ gnd vdd FILL
XFILL_0__4590_ gnd vdd FILL
XFILL_2__4188_ gnd vdd FILL
XFILL_0__4170_ gnd vdd FILL
X_3648_ _1328__bF$buf4 _888_ _451_ vdd gnd NOR2X1
X_3228_ _1196__bF$buf0 _282_ \u_cpu.adc_bcd\ _115_ vdd gnd OAI21X1
XFILL_0__2903_ gnd vdd FILL
XFILL_3__3892_ gnd vdd FILL
XFILL_3__3472_ gnd vdd FILL
XFILL_1__4751_ gnd vdd FILL
XFILL_1__4331_ gnd vdd FILL
XFILL_3__4677_ gnd vdd FILL
XFILL_3__4257_ gnd vdd FILL
XFILL_2__2674_ gnd vdd FILL
XFILL_4__3541_ gnd vdd FILL
X_4186_ \u_cpu.DIMUX\[3] _1070__bF$buf3 _944_ _943_ vdd gnd OAI21X1
XFILL_2__3879_ gnd vdd FILL
XFILL_0__3861_ gnd vdd FILL
XFILL_2__3459_ gnd vdd FILL
XFILL_0__3441_ gnd vdd FILL
XFILL_0__3021_ gnd vdd FILL
XFILL_2__4820_ gnd vdd FILL
XFILL_2__4400_ gnd vdd FILL
X_2919_ _1546_ _1535_ _1547_ _1510_ vdd gnd OAI21X1
XFILL_4__4746_ gnd vdd FILL
XFILL_4__4326_ gnd vdd FILL
XFILL_0__4646_ gnd vdd FILL
XFILL_3__2743_ gnd vdd FILL
XFILL_0__4226_ gnd vdd FILL
XFILL_1__3602_ gnd vdd FILL
XFILL_3__3948_ gnd vdd FILL
XFILL_3__3528_ gnd vdd FILL
X_2672_ _1634__bF$buf5 _2058_ _2059_ _2061_ _2062_ vdd 
+ gnd
+ OAI22X1
XFILL_1__4807_ gnd vdd FILL
XFILL_4__2812_ gnd vdd FILL
X_3877_ \u_cpu.write_back\ _667_ vdd gnd INVX2
X_3457_ \u_cpu.PC\[4] _826_ _276_ vdd gnd NAND2X1
X_3037_ _1417__bF$buf4 vdd _1358_ clk_bF$buf5 \u_cpu.PC\[4] vdd 
+ gnd
+ DFFSR
XFILL_0__2712_ gnd vdd FILL
XFILL_3__3281_ gnd vdd FILL
XFILL_1__3199_ gnd vdd FILL
XFILL_0__3917_ gnd vdd FILL
XFILL_1__4980_ gnd vdd FILL
XFILL_1__4560_ gnd vdd FILL
XFILL_1__4140_ gnd vdd FILL
XFILL_3__4486_ gnd vdd FILL
XFILL_3__4066_ gnd vdd FILL
XFILL_2__2483_ gnd vdd FILL
XFILL_4__3770_ gnd vdd FILL
XFILL_4__3350_ gnd vdd FILL
XFILL_2__3688_ gnd vdd FILL
XFILL_0__3670_ gnd vdd FILL
XFILL_0__3250_ gnd vdd FILL
XFILL_2__3268_ gnd vdd FILL
X_2728_ _1949_ _2007_ vdd gnd INVX1
XFILL_4__4975_ gnd vdd FILL
XFILL_4__4555_ gnd vdd FILL
XFILL_4__4135_ gnd vdd FILL
XFILL_3__2972_ gnd vdd FILL
XFILL_3__2552_ gnd vdd FILL
XFILL_0__4455_ gnd vdd FILL
XFILL_0__4035_ gnd vdd FILL
XFILL_1__3831_ gnd vdd FILL
XFILL_1__3411_ gnd vdd FILL
XFILL_3__3757_ gnd vdd FILL
XFILL_3__3337_ gnd vdd FILL
X_2481_ _2344_ _1925_ _2354__4_bF$buf5 _2345_ vdd gnd AOI21X1
XFILL_1__4616_ gnd vdd FILL
XFILL_4__2621_ gnd vdd FILL
X_3686_ _1196__bF$buf5 _1082_ _490_ _489_ vdd gnd OAI21X1
X_3266_ _800__bF$buf2 _2354__3_bF$buf3 _139_ vdd gnd NAND2X1
XFILL_0__2941_ gnd vdd FILL
XFILL_0__2521_ gnd vdd FILL
XFILL_2__2539_ gnd vdd FILL
XFILL_2__3900_ gnd vdd FILL
XFILL_4__3826_ gnd vdd FILL
XFILL_4__3406_ gnd vdd FILL
XFILL_0__3726_ gnd vdd FILL
XFILL_0__3306_ gnd vdd FILL
XFILL_3__4295_ gnd vdd FILL
XFILL_3__2608_ gnd vdd FILL
XFILL_2__3497_ gnd vdd FILL
X_2957_ _1491_ vdd _1436_ clk_bF$buf12 DO_kbd[1] vdd 
+ gnd
+ DFFSR
X_2537_ _1961_ _1949_ _1964_ _2290_ vdd gnd OAI21X1
XFILL_4__4784_ gnd vdd FILL
XFILL_4__4364_ gnd vdd FILL
XFILL_0__4684_ gnd vdd FILL
XFILL_3__2781_ gnd vdd FILL
XFILL_0__4264_ gnd vdd FILL
XFILL_3__2361_ gnd vdd FILL
XFILL_1__2699_ gnd vdd FILL
XFILL_1__3640_ gnd vdd FILL
XFILL_1__3220_ gnd vdd FILL
XFILL_3__3986_ gnd vdd FILL
XFILL_3__3566_ gnd vdd FILL
XFILL273450x54150 gnd vdd FILL
XFILL_1__4845_ gnd vdd FILL
XFILL_1__4425_ gnd vdd FILL
XFILL_1__4005_ gnd vdd FILL
XFILL_4__2850_ gnd vdd FILL
XFILL_4__2430_ gnd vdd FILL
X_3495_ _383_ _309_ _313_ _308_ vdd gnd NAND3X1
X_3075_ _1417__bF$buf9 vdd _1374_ clk_bF$buf8 \u_cpu.load_only\ vdd 
+ gnd
+ DFFSR
XFILL_0__2750_ gnd vdd FILL
XFILL_2__2768_ gnd vdd FILL
XFILL_4__3635_ gnd vdd FILL
XFILL_4__3215_ gnd vdd FILL
XFILL_0__3955_ gnd vdd FILL
XFILL_0__3535_ gnd vdd FILL
XFILL_2__4914_ gnd vdd FILL
XFILL_1__2911_ gnd vdd FILL
XFILL_3__2837_ gnd vdd FILL
XFILL_3__2417_ gnd vdd FILL
X_2766_ _1969_ _1642_ _1920__bF$buf4 _1970_ vdd gnd AOI21X1
XFILL_4__4593_ gnd vdd FILL
XFILL_4__4173_ gnd vdd FILL
XFILL_0__4493_ gnd vdd FILL
XFILL_3__2590_ gnd vdd FILL
XFILL_0__4073_ gnd vdd FILL
XFILL_4__2906_ gnd vdd FILL
XFILL_0__2806_ gnd vdd FILL
X_4912_ _2174_ _2187_ _2182_ _2188_ vdd gnd NAND3X1
XFILL_3__3795_ gnd vdd FILL
XFILL_3__3375_ gnd vdd FILL
XFILL_1__4654_ gnd vdd FILL
XFILL_1__4234_ gnd vdd FILL
XFILL_2__2997_ gnd vdd FILL
XFILL_2__2577_ gnd vdd FILL
XFILL_4__3864_ gnd vdd FILL
XFILL_4__3444_ gnd vdd FILL
XFILL_4__3024_ gnd vdd FILL
X_4089_ _1305__bF$buf2 _889_ _857_ _856_ vdd gnd AOI21X1
XFILL_0__3764_ gnd vdd FILL
XFILL_0__3344_ gnd vdd FILL
XFILL_2__4723_ gnd vdd FILL
XFILL_2__4303_ gnd vdd FILL
XFILL_4__4649_ gnd vdd FILL
XFILL_4__4229_ gnd vdd FILL
XFILL_1__2720_ gnd vdd FILL
XFILL_0__4969_ gnd vdd FILL
XFILL_0__4549_ gnd vdd FILL
XFILL_3__2646_ gnd vdd FILL
XFILL_0__4129_ gnd vdd FILL
XFILL_1__3925_ gnd vdd FILL
XFILL_1__3505_ gnd vdd FILL
X_2995_ _Addr_Bus[3] _Addr_Bus[9] _1606_ vdd gnd NOR2X1
X_2575_ _1643__bF$buf0 _1980_ _2354__4_bF$buf5 _2158_ vdd gnd OAI21X1
XFILL274050x108150 gnd vdd FILL
XFILL_4__2715_ gnd vdd FILL
XFILL_0__2615_ gnd vdd FILL
X_4721_ \u_cpu.alu_op\[0] _1773_ _1774_ vdd gnd NOR2X1
X_4301_ _1081_ _1087_ _1328__bF$buf2 _1046_ vdd gnd AOI21X1
XFILL_3__3184_ gnd vdd FILL
XFILL_1__4883_ gnd vdd FILL
XFILL_1__4463_ gnd vdd FILL
XFILL_1__4043_ gnd vdd FILL
XFILL_3__4389_ gnd vdd FILL
XFILL_2__2386_ gnd vdd FILL
XFILL_4__3673_ gnd vdd FILL
XFILL_4__3253_ gnd vdd FILL
XFILL_0__3993_ gnd vdd FILL
XFILL_0__3573_ gnd vdd FILL
XFILL_2__4952_ gnd vdd FILL
XFILL_2__4532_ gnd vdd FILL
XFILL_2__4112_ gnd vdd FILL
XFILL_4__4458_ gnd vdd FILL
XFILL_0__4778_ gnd vdd FILL
XFILL_3__2875_ gnd vdd FILL
XFILL_0__4358_ gnd vdd FILL
XFILL_3__2455_ gnd vdd FILL
XFILL_1__3734_ gnd vdd FILL
XFILL_1__3314_ gnd vdd FILL
X_2384_ DO_dsp[5] dsp_data[5] vdd gnd BUFX2
XFILL_3__4601_ gnd vdd FILL
XFILL_1__4939_ gnd vdd FILL
XFILL_1__4519_ gnd vdd FILL
XFILL_4__2944_ gnd vdd FILL
XFILL_4__2524_ gnd vdd FILL
XFILL273750x97350 gnd vdd FILL
X_3589_ _1196__bF$buf7 _1315__bF$buf3 _1235_ _393_ vdd gnd NAND3X1
X_3169_ _1277_ _78_ RDY_bF$buf1 _74_ vdd gnd OAI21X1
XFILL_0__2844_ gnd vdd FILL
X_4950_ DO_dsp[2] _2222_ vdd gnd INVX1
XFILL_0__2424_ gnd vdd FILL
X_4530_ _1259_ _1263_ _1258_ vdd gnd NAND2X1
X_4110_ _1064_ _912_ _1329_ _876_ vdd gnd OAI21X1
XFILL_2__3803_ gnd vdd FILL
XFILL_4__3729_ gnd vdd FILL
XFILL_4__3309_ gnd vdd FILL
XFILL_0__3629_ gnd vdd FILL
XFILL_0__3209_ gnd vdd FILL
XFILL_1__4692_ gnd vdd FILL
XFILL_1__4272_ gnd vdd FILL
XFILL_3__4198_ gnd vdd FILL
XFILL_4__3482_ gnd vdd FILL
XFILL_0__3382_ gnd vdd FILL
XFILL_2__4761_ gnd vdd FILL
XFILL_2__4341_ gnd vdd FILL
XFILL_4__4687_ gnd vdd FILL
XFILL_4__4267_ gnd vdd FILL
X_3801_ _600_ _792_ _599_ _598_ vdd gnd OAI21X1
XFILL_3__2684_ gnd vdd FILL
XFILL_0__4587_ gnd vdd FILL
XFILL_0__4167_ gnd vdd FILL
XFILL_1__3963_ gnd vdd FILL
XFILL_1__3543_ gnd vdd FILL
XFILL_3__3889_ gnd vdd FILL
XFILL_3__3469_ gnd vdd FILL
XFILL_3__4830_ gnd vdd FILL
XFILL_3__4410_ gnd vdd FILL
XFILL_1__4748_ gnd vdd FILL
XFILL_1__4328_ gnd vdd FILL
XFILL_4__2753_ gnd vdd FILL
X_3398_ _232_ _231_ _230_ vdd gnd AND2X2
XFILL_0__2653_ gnd vdd FILL
XFILL_2__3612_ gnd vdd FILL
XFILL_4__3958_ gnd vdd FILL
XFILL_4__3538_ gnd vdd FILL
XFILL_0__3858_ gnd vdd FILL
XFILL_0__3438_ gnd vdd FILL
XFILL_0__3018_ gnd vdd FILL
XFILL_1__4081_ gnd vdd FILL
XFILL_2__4817_ gnd vdd FILL
XFILL_1__2814_ gnd vdd FILL
XFILL_4__3291_ gnd vdd FILL
XFILL_0__3191_ gnd vdd FILL
XFILL_2__4570_ gnd vdd FILL
XFILL_2__4150_ gnd vdd FILL
X_2669_ _2354__2_bF$buf3 _1924_ _2020_ _2065_ vdd gnd OAI21X1
XFILL_4__4496_ gnd vdd FILL
XFILL_4__4076_ gnd vdd FILL
X_3610_ _482_ _415_ _557_ _414_ vdd gnd NAND3X1
XFILL_3__2493_ gnd vdd FILL
XFILL_0__4396_ gnd vdd FILL
XFILL_4__2809_ gnd vdd FILL
XFILL_0__2709_ gnd vdd FILL
X_4815_ _1856_ _1860_ \u_cpu.AZ\ vdd gnd NOR2X1
XFILL_1__3772_ gnd vdd FILL
XFILL_1__3352_ gnd vdd FILL
XFILL_3__3698_ gnd vdd FILL
XFILL_3__3278_ gnd vdd FILL
XFILL_1__4977_ gnd vdd FILL
XFILL_1__4557_ gnd vdd FILL
XFILL_1__4137_ gnd vdd FILL
XFILL_4__2982_ gnd vdd FILL
XFILL_4__2562_ gnd vdd FILL
XFILL_0__2882_ gnd vdd FILL
XFILL_0__2462_ gnd vdd FILL
XFILL_2__3841_ gnd vdd FILL
XFILL_2__3421_ gnd vdd FILL
XFILL_2__3001_ gnd vdd FILL
XFILL_4__3767_ gnd vdd FILL
XFILL_4__3347_ gnd vdd FILL
XFILL_0__3667_ gnd vdd FILL
XFILL_0__3247_ gnd vdd FILL
XFILL_2__4626_ gnd vdd FILL
XFILL_2__4206_ gnd vdd FILL
XFILL_1__2623_ gnd vdd FILL
XFILL_3__2969_ gnd vdd FILL
XFILL_3__2549_ gnd vdd FILL
XFILL_3__3910_ gnd vdd FILL
XFILL_1__3828_ gnd vdd FILL
XFILL_1__3408_ gnd vdd FILL
X_2898_ _1562_ _1535_ _1563_ _1515_ vdd gnd OAI21X1
X_2478_ _1638__bF$buf0 _2081_ _1643__bF$buf5 _2349_ vdd gnd OAI21X1
XFILL_4__2618_ gnd vdd FILL
XFILL_0__2938_ gnd vdd FILL
XFILL_0__2518_ gnd vdd FILL
X_4624_ \u_cpu.state\[1] \u_cpu.state\[0] _1352_ vdd gnd NAND2X1
X_4204_ _1196__bF$buf8 _1345__bF$buf0 \u_cpu.inc\ _959_ vdd gnd OAI21X1
XFILL_1__3581_ gnd vdd FILL
XFILL_1__4786_ gnd vdd FILL
XFILL_1__4366_ gnd vdd FILL
XFILL_4__2791_ gnd vdd FILL
XFILL_4__2371_ gnd vdd FILL
XFILL_0__2691_ gnd vdd FILL
XFILL_2__3650_ gnd vdd FILL
XFILL_2__3230_ gnd vdd FILL
XFILL_4__3996_ gnd vdd FILL
XFILL_4__3576_ gnd vdd FILL
XFILL_0__3896_ gnd vdd FILL
XFILL_0__3476_ gnd vdd FILL
XFILL_2__4855_ gnd vdd FILL
XFILL_2__4435_ gnd vdd FILL
XFILL_2__4015_ gnd vdd FILL
XFILL_1__2852_ gnd vdd FILL
XFILL_1__2432_ gnd vdd FILL
XFILL_3__2778_ gnd vdd FILL
XFILL_3__2358_ gnd vdd FILL
XFILL_1__3637_ gnd vdd FILL
XFILL_1__3217_ gnd vdd FILL
XFILL_3__4924_ gnd vdd FILL
XFILL_3__4504_ gnd vdd FILL
XFILL_3_BUFX2_insert50 gnd vdd FILL
XFILL_3_BUFX2_insert51 gnd vdd FILL
XFILL_3_BUFX2_insert52 gnd vdd FILL
XFILL_2__2921_ gnd vdd FILL
XFILL_3_BUFX2_insert53 gnd vdd FILL
XFILL_2__2501_ gnd vdd FILL
XFILL_3_BUFX2_insert54 gnd vdd FILL
XFILL_3_BUFX2_insert55 gnd vdd FILL
XFILL_3_BUFX2_insert56 gnd vdd FILL
XFILL_3_BUFX2_insert57 gnd vdd FILL
XFILL_3_BUFX2_insert58 gnd vdd FILL
XFILL_4__2847_ gnd vdd FILL
XFILL_3_BUFX2_insert59 gnd vdd FILL
XFILL_4__2427_ gnd vdd FILL
XFILL_0__2747_ gnd vdd FILL
X_4853_ _1894_ _1893_ _1895_ vdd gnd NAND2X1
X_4433_ _1169_ _1183_ _1168_ vdd gnd NOR2X1
X_4013_ _784_ _788_ _871_ _783_ vdd gnd OAI21X1
XFILL_1__3390_ gnd vdd FILL
XFILL_2__3706_ gnd vdd FILL
XFILL_1__4595_ gnd vdd FILL
XFILL_1__4175_ gnd vdd FILL
XFILL_1__2908_ gnd vdd FILL
XFILL_4__3385_ gnd vdd FILL
XFILL_4_BUFX2_insert120 gnd vdd FILL
XFILL_4_BUFX2_insert121 gnd vdd FILL
XFILL_4_BUFX2_insert122 gnd vdd FILL
XFILL_4_BUFX2_insert123 gnd vdd FILL
XFILL_4_BUFX2_insert124 gnd vdd FILL
XFILL_4_BUFX2_insert125 gnd vdd FILL
XFILL_4_BUFX2_insert126 gnd vdd FILL
XFILL_4_BUFX2_insert127 gnd vdd FILL
XFILL_4_BUFX2_insert128 gnd vdd FILL
XFILL_4_BUFX2_insert129 gnd vdd FILL
XFILL_0__3285_ gnd vdd FILL
XFILL_2__4664_ gnd vdd FILL
XFILL_2__4244_ gnd vdd FILL
X_3704_ _556_ _504_ _1430_ vdd gnd OR2X2
XFILL_1__2661_ gnd vdd FILL
XFILL_3__2587_ gnd vdd FILL
X_4909_ _2184_ _2178_ _2185_ vdd gnd NOR2X1
XFILL_1__3866_ gnd vdd FILL
XFILL_1__3446_ gnd vdd FILL
XFILL_1__3026_ gnd vdd FILL
XFILL_3_BUFX2_insert140 gnd vdd FILL
XFILL_3_BUFX2_insert141 gnd vdd FILL
XFILL_3_BUFX2_insert142 gnd vdd FILL
XFILL_3_BUFX2_insert143 gnd vdd FILL
XFILL_3__4733_ gnd vdd FILL
XFILL_3_BUFX2_insert144 gnd vdd FILL
XFILL_3__4313_ gnd vdd FILL
XFILL_3_BUFX2_insert145 gnd vdd FILL
XFILL_3_BUFX2_insert146 gnd vdd FILL
XFILL_3_BUFX2_insert147 gnd vdd FILL
XFILL_3_BUFX2_insert148 gnd vdd FILL
XFILL_3_BUFX2_insert149 gnd vdd FILL
XFILL_2__2730_ gnd vdd FILL
XFILL_4__2656_ gnd vdd FILL
XFILL_0__2976_ gnd vdd FILL
XFILL_0__2556_ gnd vdd FILL
X_4662_ \u_cpu.AI\[3] _1715_ vdd gnd INVX1
X_4242_ _995_ _994_ vdd gnd INVX1
XFILL_2__3935_ gnd vdd FILL
XFILL_2__3515_ gnd vdd FILL
XFILL_4__4802_ gnd vdd FILL
XFILL_0__4702_ gnd vdd FILL
XFILL_1__2717_ gnd vdd FILL
XFILL_4__3194_ gnd vdd FILL
XFILL_2__4893_ gnd vdd FILL
XFILL_2__4473_ gnd vdd FILL
XFILL_2__4053_ gnd vdd FILL
XFILL_4__4399_ gnd vdd FILL
X_3933_ \u_cpu.AXYS[2]\[7] _760_ _712_ vdd gnd NAND2X1
X_3513_ _325_ _1333_ _1192_ _356_ _324_ vdd 
+ gnd
+ OAI22X1
XFILL_1__2890_ gnd vdd FILL
XFILL_1__2470_ gnd vdd FILL
XFILL_0__4299_ gnd vdd FILL
XFILL_3__2396_ gnd vdd FILL
X_4718_ _1770_ _1725_ _1723_ _1771_ vdd gnd MUX2X1
XFILL_1__3675_ gnd vdd FILL
XFILL_1__3255_ gnd vdd FILL
XFILL_3__4962_ gnd vdd FILL
XFILL_3__4542_ gnd vdd FILL
XFILL_3__4122_ gnd vdd FILL
XFILL_4__2885_ gnd vdd FILL
XFILL_4__2465_ gnd vdd FILL
XFILL_0__2785_ gnd vdd FILL
XFILL_0__2365_ gnd vdd FILL
X_4891_ _2165_ _2164_ _2166_ _2167_ vdd gnd NAND3X1
X_4471_ \u_cpu.PC\[8] _1269_ _1202_ _1201_ vdd gnd AOI21X1
X_4051_ _1071_ _915_ _1241_ _818_ vdd gnd NAND3X1
XFILL_2__3744_ gnd vdd FILL
XFILL_2__3324_ gnd vdd FILL
XFILL_4__4611_ gnd vdd FILL
XFILL_2__4949_ gnd vdd FILL
XFILL_0__4931_ gnd vdd FILL
XFILL_2__4529_ gnd vdd FILL
XFILL_0__4511_ gnd vdd FILL
XFILL_2__4109_ gnd vdd FILL
XFILL_1__2946_ gnd vdd FILL
XFILL_1__2526_ gnd vdd FILL
XFILL_3__3813_ gnd vdd FILL
XFILL_2__4282_ gnd vdd FILL
X_3742_ _542_ _541_ vdd gnd INVX1
X_3322_ _988_ _173_ _172_ vdd gnd NOR2X1
X_4947_ _2198_ DO_kbd[3] _2195_ _2220_ vdd gnd AOI21X1
X_4527_ \u_cpu.res\ _1255_ vdd gnd INVX1
X_4107_ _1305__bF$buf0 _1081_ _1070__bF$buf0 _873_ vdd gnd OAI21X1
XFILL_1__3484_ gnd vdd FILL
XFILL_3__4771_ gnd vdd FILL
XFILL_3__4351_ gnd vdd FILL
XFILL_1__4689_ gnd vdd FILL
XFILL_1__4269_ gnd vdd FILL
XFILL_4__2694_ gnd vdd FILL
XFILL_0__2594_ gnd vdd FILL
X_4280_ _1196__bF$buf0 _1345__bF$buf2 \u_cpu.sei\ _1028_ vdd gnd OAI21X1
XFILL_2__3973_ gnd vdd FILL
XFILL_2__3553_ gnd vdd FILL
XFILL_4__3899_ gnd vdd FILL
XFILL_4__3479_ gnd vdd FILL
XFILL_4__4840_ gnd vdd FILL
XFILL_4__4420_ gnd vdd FILL
XFILL_4__4000_ gnd vdd FILL
XFILL_0__3799_ gnd vdd FILL
XFILL_0__3379_ gnd vdd FILL
XFILL_0__4740_ gnd vdd FILL
XFILL_2__4758_ gnd vdd FILL
XFILL_0__4320_ gnd vdd FILL
XFILL_2__4338_ gnd vdd FILL
XFILL_1__2755_ gnd vdd FILL
XFILL_3__3622_ gnd vdd FILL
XFILL_3__3202_ gnd vdd FILL
XFILL_2__4091_ gnd vdd FILL
XFILL_1__4901_ gnd vdd FILL
XFILL_3__4827_ gnd vdd FILL
XFILL_3__4407_ gnd vdd FILL
X_3971_ _1305__bF$buf3 _1331_ _746_ vdd gnd NOR2X1
X_3551_ _357_ _356_ vdd gnd INVX2
X_3131_ _1417__bF$buf9 vdd _1451_ clk_bF$buf8 \u_cpu.src_reg\[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2824_ gnd vdd FILL
XFILL_2__2404_ gnd vdd FILL
X_4756_ _1697_ _1808_ _1711_ _1809_ vdd gnd OAI21X1
X_4336_ _1346_ _1322_ _1081_ vdd gnd NAND2X1
XFILL_1__3293_ gnd vdd FILL
XFILL_2__3609_ gnd vdd FILL
XFILL_3__4580_ gnd vdd FILL
XFILL_3__4160_ gnd vdd FILL
XFILL_1__4498_ gnd vdd FILL
XFILL_1__4078_ gnd vdd FILL
XFILL_2__3782_ gnd vdd FILL
XFILL_2__3362_ gnd vdd FILL
XFILL_4__3288_ gnd vdd FILL
X_2822_ _1635__bF$buf4 _2354__0_bF$buf3 _1643__bF$buf0 _1914_ vdd gnd AOI21X1
X_2402_ _1643__bF$buf2 _2049_ _1634__bF$buf4 _1419_ vdd gnd OAI21X1
XFILL_0__3188_ gnd vdd FILL
XFILL_2__4567_ gnd vdd FILL
XFILL_2__4147_ gnd vdd FILL
X_3607_ _412_ _411_ vdd gnd INVX1
XFILL_1__2984_ gnd vdd FILL
XFILL_1__2564_ gnd vdd FILL
XFILL_3__3851_ gnd vdd FILL
XFILL_3__3431_ gnd vdd FILL
XFILL_3__3011_ gnd vdd FILL
XFILL_1__3769_ gnd vdd FILL
XFILL_1__3349_ gnd vdd FILL
XFILL_1__4710_ gnd vdd FILL
XFILL_3__4636_ gnd vdd FILL
XFILL_3__4216_ gnd vdd FILL
X_3780_ _580_ _579_ vdd gnd INVX1
X_3360_ _444_ _426_ _196_ vdd gnd NAND2X1
XFILL_2__2633_ gnd vdd FILL
XFILL_4__2979_ gnd vdd FILL
XFILL_4__2559_ gnd vdd FILL
XFILL_4__3920_ gnd vdd FILL
XFILL_0__2879_ gnd vdd FILL
XFILL_0__2459_ gnd vdd FILL
X_4985_ _2242_ _2195_ _2247_ _2253_ Data_In[7] vdd 
+ gnd
+ AOI22X1
X_4565_ _1294_ _1293_ vdd gnd INVX1
X_4145_ _912_ _911_ vdd gnd INVX2
XFILL_2__3838_ gnd vdd FILL
XFILL_0__3820_ gnd vdd FILL
XFILL_2__3418_ gnd vdd FILL
XFILL_0__3400_ gnd vdd FILL
XFILL_4__4705_ gnd vdd FILL
XFILL_3__2702_ gnd vdd FILL
XFILL_0__4605_ gnd vdd FILL
XFILL_2__3591_ gnd vdd FILL
XFILL_2__3171_ gnd vdd FILL
XFILL_3__3907_ gnd vdd FILL
X_2631_ _2354__2_bF$buf4 _1643__bF$buf1 _1924_ _2103_ vdd gnd OAI21X1
XFILL_2__4796_ gnd vdd FILL
XFILL_2__4376_ gnd vdd FILL
X_3836_ _630_ _629_ vdd gnd INVX1
X_3416_ _1274_ _628_ \u_cpu.I\ _245_ vdd gnd OAI21X1
XFILL_1__2793_ gnd vdd FILL
XFILL_1__2373_ gnd vdd FILL
XFILL_3__3660_ gnd vdd FILL
XFILL_3__3240_ gnd vdd FILL
XFILL_1__3998_ gnd vdd FILL
XFILL_1__3578_ gnd vdd FILL
XFILL_3__4865_ gnd vdd FILL
XFILL_3__4445_ gnd vdd FILL
XFILL_3__4025_ gnd vdd FILL
XFILL_2__2442_ gnd vdd FILL
XFILL_4__2788_ gnd vdd FILL
XFILL_4__2368_ gnd vdd FILL
XFILL_0__2688_ gnd vdd FILL
X_4794_ _1756_ _1845_ RDY_bF$buf3 _1846_ vdd gnd OAI21X1
X_4374_ \u_cpu.DIHOLD\[7] _1115_ vdd gnd INVX1
XFILL_2__3647_ gnd vdd FILL
XFILL_2__3227_ gnd vdd FILL
XFILL_4__4934_ gnd vdd FILL
XFILL_4__4514_ gnd vdd FILL
XFILL_0__4834_ gnd vdd FILL
XFILL_3__2931_ gnd vdd FILL
XFILL_3__2511_ gnd vdd FILL
XFILL_0__4414_ gnd vdd FILL
XFILL_1__2849_ gnd vdd FILL
XFILL_1__2429_ gnd vdd FILL
XFILL_3__3716_ gnd vdd FILL
X_2860_ _2354__1_bF$buf3 _1635_ vdd gnd INVX8
X_2440_ _1673_ _1643__bF$buf4 _2051_ _35_ vdd gnd AOI21X1
XFILL_2__4185_ gnd vdd FILL
X_3645_ _1305__bF$buf1 _904_ _1196__bF$buf5 _448_ vdd gnd OAI21X1
X_3225_ \u_cpu.D\ _1106_ _561_ _112_ vdd gnd NAND3X1
XFILL_0__2900_ gnd vdd FILL
XFILL_2__2918_ gnd vdd FILL
XFILL_1__3387_ gnd vdd FILL
XFILL_3__4674_ gnd vdd FILL
XFILL_3__4254_ gnd vdd FILL
XFILL_2__2671_ gnd vdd FILL
XFILL_4__2597_ gnd vdd FILL
XFILL_0__2497_ gnd vdd FILL
X_4183_ \u_cpu.AXYS[0]\[4] _977_ _941_ vdd gnd NAND2X1
XFILL_2__3876_ gnd vdd FILL
XFILL_2__3456_ gnd vdd FILL
X_2916_ dsp_ack _1548_ _1549_ _1596_ vdd gnd OAI21X1
XFILL_4__4743_ gnd vdd FILL
XFILL_4__4323_ gnd vdd FILL
XFILL_3__2740_ gnd vdd FILL
XFILL_0__4643_ gnd vdd FILL
XFILL_0__4223_ gnd vdd FILL
XFILL_1__2658_ gnd vdd FILL
XFILL_3__3945_ gnd vdd FILL
XFILL_3__3525_ gnd vdd FILL
XFILL_1__4804_ gnd vdd FILL
X_3874_ \u_cpu.ADD\[0] _703_ \u_cpu.plp\ _664_ vdd gnd MUX2X1
X_3454_ _1179_ _278_ _275_ \u_cpu.BI\[2] vdd gnd OAI21X1
X_3034_ _1417__bF$buf9 vdd _1477_ clk_bF$buf8 \u_cpu.op\[3] vdd 
+ gnd
+ DFFSR
XFILL_2__2727_ gnd vdd FILL
X_4659_ \u_cpu.alu_op\[3] _1699_ _1704_ _1712_ vdd gnd OAI21X1
X_4239_ _1123_ _1008_ _991_ vdd gnd NOR2X1
XFILL_1__3196_ gnd vdd FILL
XFILL_0__3914_ gnd vdd FILL
XFILL_3__4483_ gnd vdd FILL
XFILL_3__4063_ gnd vdd FILL
XFILL_2__2480_ gnd vdd FILL
XFILL_2__3685_ gnd vdd FILL
XFILL_2__3265_ gnd vdd FILL
X_2725_ _1663_ _1917_ _1924_ _2010_ vdd gnd OAI21X1
XFILL_4__4972_ gnd vdd FILL
XFILL_4__4552_ gnd vdd FILL
XFILL_4__4132_ gnd vdd FILL
XFILL_0__4452_ gnd vdd FILL
XFILL_0__4032_ gnd vdd FILL
XFILL_1__2887_ gnd vdd FILL
XFILL_1__2467_ gnd vdd FILL
XFILL_3__3754_ gnd vdd FILL
XFILL_3__3334_ gnd vdd FILL
XFILL_1__4613_ gnd vdd FILL
XFILL_3__4959_ gnd vdd FILL
XFILL_3__4539_ gnd vdd FILL
XFILL_3__4119_ gnd vdd FILL
X_3683_ _753_ _486_ vdd gnd INVX1
X_3263_ _800__bF$buf2 _2354__4_bF$buf2 _137_ vdd gnd NAND2X1
XFILL_2__2536_ gnd vdd FILL
XFILL_4__3823_ gnd vdd FILL
XFILL_4__3403_ gnd vdd FILL
X_4888_ _Addr_Bus[15] _Addr_Bus[14] _2164_ vdd gnd AND2X2
X_4468_ _1199_ _1198_ vdd gnd INVX1
X_4048_ _818_ _816_ _815_ vdd gnd NOR2X1
XFILL_0__3723_ gnd vdd FILL
XFILL_0__3303_ gnd vdd FILL
XFILL_3__4292_ gnd vdd FILL
XFILL_4__4608_ gnd vdd FILL
XFILL_0__4928_ gnd vdd FILL
XFILL_3__2605_ gnd vdd FILL
XFILL_0__4508_ gnd vdd FILL
XFILL_2__3494_ gnd vdd FILL
X_2954_ _1491_ vdd _1495_ clk_bF$buf12 DO_kbd[7] vdd 
+ gnd
+ DFFSR
X_2534_ _2288_ _2292_ _2354__6_bF$buf4 _2293_ vdd gnd MUX2X1
XFILL_4__4781_ gnd vdd FILL
XFILL_4__4361_ gnd vdd FILL
XFILL_2__4699_ gnd vdd FILL
XFILL_0__4681_ gnd vdd FILL
XFILL_2__4279_ gnd vdd FILL
XFILL_0__4261_ gnd vdd FILL
X_3739_ _539_ _538_ vdd gnd INVX1
X_3319_ _1146_ _1134_ _1156_ _170_ vdd gnd NOR3X1
XFILL_1__2696_ gnd vdd FILL
XFILL_3__3983_ gnd vdd FILL
XFILL_3__3563_ gnd vdd FILL
XFILL_1__4842_ gnd vdd FILL
XFILL_1__4422_ gnd vdd FILL
XFILL_1__4002_ gnd vdd FILL
XFILL_3__4768_ gnd vdd FILL
XFILL_3__4348_ gnd vdd FILL
X_3492_ _1285_ _1233_ _1329_ _305_ vdd gnd OAI21X1
X_3072_ _1417__bF$buf1 vdd _1485_ clk_bF$buf5 \u_cpu.PC\[12] vdd 
+ gnd
+ DFFSR
XFILL_2__2765_ gnd vdd FILL
XFILL_4__3632_ gnd vdd FILL
XFILL_4__3212_ gnd vdd FILL
X_4697_ _1684_ _1749_ _1750_ vdd gnd NAND2X1
X_4277_ _1026_ _1098_ _1028_ _1478_ vdd gnd OAI21X1
XFILL_0__3952_ gnd vdd FILL
XFILL_0__3532_ gnd vdd FILL
XFILL_2__4911_ gnd vdd FILL
XFILL_4__4837_ gnd vdd FILL
XFILL_4__4417_ gnd vdd FILL
XFILL_0__4737_ gnd vdd FILL
XFILL_3__2834_ gnd vdd FILL
XFILL_3__2414_ gnd vdd FILL
XFILL_0__4317_ gnd vdd FILL
XFILL_3__3619_ gnd vdd FILL
XFILL273450x75750 gnd vdd FILL
X_2763_ _2354__7_bF$buf3 _1933_ _1972_ _1953_ _2346_[6] vdd 
+ gnd
+ OAI22X1
XFILL_4__4590_ gnd vdd FILL
XFILL_4__4170_ gnd vdd FILL
XFILL_0__4490_ gnd vdd FILL
XFILL_2__4088_ gnd vdd FILL
XFILL_0__4070_ gnd vdd FILL
XFILL_4__2903_ gnd vdd FILL
X_3968_ _744_ _743_ vdd gnd INVX1
X_3548_ _360_ _657_ _354_ \u_cpu.AI\[4] vdd gnd OAI21X1
X_3128_ _1417__bF$buf10 vdd _1430_ clk_bF$buf4 \u_cpu.state\[4] vdd 
+ gnd
+ DFFSR
XFILL_0__2803_ gnd vdd FILL
XFILL_3__3792_ gnd vdd FILL
XFILL_3__3372_ gnd vdd FILL
XFILL_1__4651_ gnd vdd FILL
XFILL_1__4231_ gnd vdd FILL
XFILL_3__4577_ gnd vdd FILL
XFILL_3__4157_ gnd vdd FILL
XFILL_2__2994_ gnd vdd FILL
XFILL_2__2574_ gnd vdd FILL
XFILL_4__3861_ gnd vdd FILL
XFILL_4__3441_ gnd vdd FILL
XFILL_4__3021_ gnd vdd FILL
X_4086_ _1305__bF$buf1 _888_ _853_ vdd gnd NOR2X1
XFILL_0__3761_ gnd vdd FILL
XFILL_2__3779_ gnd vdd FILL
XFILL_0__3341_ gnd vdd FILL
XFILL_2__3359_ gnd vdd FILL
XFILL_2__4720_ gnd vdd FILL
XFILL_2__4300_ gnd vdd FILL
X_2819_ _2354__1_bF$buf4 _2354__2_bF$buf3 _1917_ vdd gnd AND2X2
XFILL_4__4646_ gnd vdd FILL
XFILL_4__4226_ gnd vdd FILL
XFILL_0__4966_ gnd vdd FILL
XFILL_3__2643_ gnd vdd FILL
XFILL_0__4546_ gnd vdd FILL
XFILL_0__4126_ gnd vdd FILL
XFILL_1__3922_ gnd vdd FILL
XFILL_1__3502_ gnd vdd FILL
XFILL_3__3848_ gnd vdd FILL
XFILL_3__3428_ gnd vdd FILL
XFILL_3__3008_ gnd vdd FILL
X_2992_ _2352_ _Addr_Bus[7] _1609_ vdd gnd OR2X2
X_2572_ _2255_ _2099_ _2354__7_bF$buf3 _2256_ vdd gnd AOI21X1
XFILL_1__4707_ gnd vdd FILL
XFILL_4__2712_ gnd vdd FILL
X_3777_ _828_ _913_ _576_ vdd gnd NOR2X1
X_3357_ _194_ _495_ _193_ vdd gnd NOR2X1
XFILL_0__2612_ gnd vdd FILL
XFILL_3__3181_ gnd vdd FILL
XFILL_4__3917_ gnd vdd FILL
XFILL271950x72150 gnd vdd FILL
XFILL_0__3817_ gnd vdd FILL
XFILL_1__4460_ gnd vdd FILL
XFILL_1__4040_ gnd vdd FILL
XFILL_3__4386_ gnd vdd FILL
XFILL271950x39750 gnd vdd FILL
XFILL_2__2383_ gnd vdd FILL
XFILL_4__3670_ gnd vdd FILL
XFILL_4__3250_ gnd vdd FILL
XFILL_0__3990_ gnd vdd FILL
XFILL_2__3588_ gnd vdd FILL
XFILL_0__3570_ gnd vdd FILL
XFILL_2__3168_ gnd vdd FILL
X_2628_ _1920__bF$buf1 _2104_ _2105_ _2106_ vdd gnd NAND3X1
XFILL_4__4455_ gnd vdd FILL
XFILL_4__4035_ gnd vdd FILL
XFILL_0__4775_ gnd vdd FILL
XFILL_0__4355_ gnd vdd FILL
XFILL_3__2452_ gnd vdd FILL
XFILL_1__3731_ gnd vdd FILL
XFILL_1__3311_ gnd vdd FILL
XFILL_3__3657_ gnd vdd FILL
XFILL_3__3237_ gnd vdd FILL
X_2381_ _2351_ kbd_ack vdd gnd BUFX2
XFILL_1__4936_ gnd vdd FILL
XFILL_1__4516_ gnd vdd FILL
XFILL_4__2941_ gnd vdd FILL
XFILL_4__2521_ gnd vdd FILL
X_3586_ _1037__bF$buf2 _396_ _391_ _390_ vdd gnd OAI21X1
X_3166_ RDY_bF$buf1 _1224_ _72_ vdd gnd NAND2X1
XFILL_2__2859_ gnd vdd FILL
XFILL_0__2841_ gnd vdd FILL
XFILL_2__2439_ gnd vdd FILL
XFILL_0__2421_ gnd vdd FILL
XFILL_2__3800_ gnd vdd FILL
XFILL_4__3726_ gnd vdd FILL
XFILL_4__3306_ gnd vdd FILL
XFILL_0__3626_ gnd vdd FILL
XFILL_0__3206_ gnd vdd FILL
XFILL_3__4195_ gnd vdd FILL
XFILL_3__2928_ gnd vdd FILL
XFILL_3__2508_ gnd vdd FILL
XFILL_2__3397_ gnd vdd FILL
X_2857_ _2354__0_bF$buf0 _1638_ vdd gnd INVX8
X_2437_ _1929_ _36_ _37_ _38_ vdd gnd AOI21X1
XFILL_4__4684_ gnd vdd FILL
XFILL_4__4264_ gnd vdd FILL
XFILL_3__2681_ gnd vdd FILL
XFILL_0__4584_ gnd vdd FILL
XFILL_0__4164_ gnd vdd FILL
XFILL_1__2599_ gnd vdd FILL
XFILL_1__3960_ gnd vdd FILL
XFILL_1__3540_ gnd vdd FILL
XFILL_3__3886_ gnd vdd FILL
XFILL_3__3466_ gnd vdd FILL
XFILL_1__4745_ gnd vdd FILL
XFILL_1__4325_ gnd vdd FILL
XFILL_4__2750_ gnd vdd FILL
X_3395_ _228_ _2354_[12] vdd gnd INVX1
XFILL_2__2668_ gnd vdd FILL
XFILL_0__2650_ gnd vdd FILL
XFILL_4__3955_ gnd vdd FILL
XFILL_4__3535_ gnd vdd FILL
XFILL_0__3855_ gnd vdd FILL
XFILL_0__3435_ gnd vdd FILL
XFILL_0__3015_ gnd vdd FILL
XFILL_2__4814_ gnd vdd FILL
XFILL_1__2811_ gnd vdd FILL
XFILL_3__2737_ gnd vdd FILL
X_2666_ _2354__4_bF$buf0 _2067_ _2035_ _2068_ vdd gnd NAND3X1
XFILL_4__4493_ gnd vdd FILL
XFILL_4__4073_ gnd vdd FILL
XFILL_3__2490_ gnd vdd FILL
XFILL_0__4393_ gnd vdd FILL
XFILL_4__2806_ gnd vdd FILL
XFILL_0__2706_ gnd vdd FILL
X_4812_ \u_cpu.ADD\[5] \u_cpu.AN\ _1858_ vdd gnd NOR2X1
XFILL_3__3695_ gnd vdd FILL
XFILL_3__3275_ gnd vdd FILL
XFILL_1__4974_ gnd vdd FILL
XFILL_1__4554_ gnd vdd FILL
XFILL_1__4134_ gnd vdd FILL
XFILL_2__2897_ gnd vdd FILL
XFILL_2__2477_ gnd vdd FILL
XFILL_4__3764_ gnd vdd FILL
XFILL_4__3344_ gnd vdd FILL
XFILL_0__3664_ gnd vdd FILL
XFILL_0__3244_ gnd vdd FILL
XFILL_2__4623_ gnd vdd FILL
XFILL_2__4203_ gnd vdd FILL
XFILL_4__4969_ gnd vdd FILL
XFILL_4__4549_ gnd vdd FILL
XFILL_4__4129_ gnd vdd FILL
XFILL_1__2620_ gnd vdd FILL
XFILL_0__4869_ gnd vdd FILL
XFILL_3__2966_ gnd vdd FILL
XFILL_3__2546_ gnd vdd FILL
XFILL_0__4449_ gnd vdd FILL
XFILL_0__4029_ gnd vdd FILL
XFILL_1__3825_ gnd vdd FILL
XFILL_1__3405_ gnd vdd FILL
X_2895_ \u_pia_dsp.state\[2] _1564_ _1565_ _1516_ vdd gnd OAI21X1
X_2475_ _2347_ _0_ _2354__7_bF$buf1 _1_ vdd gnd AOI21X1
XFILL_4__2615_ gnd vdd FILL
XFILL_0__2935_ gnd vdd FILL
XFILL_0__2515_ gnd vdd FILL
X_4621_ _1351_ _1350_ _1353_ _1349_ vdd gnd NAND3X1
X_4201_ _1178_ _973_ _957_ vdd gnd NAND2X1
XFILL_1__4783_ gnd vdd FILL
XFILL_1__4363_ gnd vdd FILL
XFILL_3__4289_ gnd vdd FILL
XFILL_4__3993_ gnd vdd FILL
XFILL_4__3573_ gnd vdd FILL
XFILL_0__3893_ gnd vdd FILL
XFILL_0__3473_ gnd vdd FILL
XFILL_2__4852_ gnd vdd FILL
XFILL_2__4432_ gnd vdd FILL
XFILL_2__4012_ gnd vdd FILL
XFILL_4__4778_ gnd vdd FILL
XFILL_4__4358_ gnd vdd FILL
XFILL_0__4678_ gnd vdd FILL
XFILL_3__2775_ gnd vdd FILL
XFILL_0__4258_ gnd vdd FILL
XFILL_1__3634_ gnd vdd FILL
XFILL_1__3214_ gnd vdd FILL
XFILL_3__4921_ gnd vdd FILL
XFILL_3__4501_ gnd vdd FILL
XFILL_3_BUFX2_insert20 gnd vdd FILL
XFILL_3_BUFX2_insert21 gnd vdd FILL
XFILL_3_BUFX2_insert22 gnd vdd FILL
XFILL_1__4839_ gnd vdd FILL
XFILL_3_BUFX2_insert23 gnd vdd FILL
XFILL_3_BUFX2_insert24 gnd vdd FILL
XFILL_1__4419_ gnd vdd FILL
XFILL_3_BUFX2_insert25 gnd vdd FILL
XFILL_4__2844_ gnd vdd FILL
XFILL_4__2424_ gnd vdd FILL
X_3489_ _1245_ _302_ vdd gnd INVX1
X_3069_ _1417__bF$buf0 vdd \u_cpu.DIMUX\[5] clk_bF$buf10 \u_cpu.DIHOLD\[5] vdd 
+ gnd
+ DFFSR
XFILL_0__2744_ gnd vdd FILL
X_4850_ _1891_ _1892_ vdd gnd INVX1
X_4430_ RDY_bF$buf2 _1167_ _1166_ \u_cpu.DIMUX\[3] vdd gnd OAI21X1
X_4010_ _874_ _780_ vdd gnd INVX2
XFILL_2__3703_ gnd vdd FILL
XFILL_4__3629_ gnd vdd FILL
XFILL_4__3209_ gnd vdd FILL
XFILL_0__3949_ gnd vdd FILL
XFILL_0__3529_ gnd vdd FILL
XFILL_1__4592_ gnd vdd FILL
XFILL_1__4172_ gnd vdd FILL
XFILL_3__4098_ gnd vdd FILL
XFILL_2__4908_ gnd vdd FILL
XFILL_1__2905_ gnd vdd FILL
XFILL_4__3382_ gnd vdd FILL
XFILL_0__3282_ gnd vdd FILL
XFILL_2__4661_ gnd vdd FILL
XFILL_2__4241_ gnd vdd FILL
XFILL_4__4587_ gnd vdd FILL
XFILL_4__4167_ gnd vdd FILL
X_3701_ _1029_ _1333_ _632_ _501_ vdd gnd OAI21X1
XFILL_3__2584_ gnd vdd FILL
XFILL_0__4487_ gnd vdd FILL
XFILL_0__4067_ gnd vdd FILL
X_4906_ _2176_ _2181_ _2173_ _2175_ _2182_ vdd 
+ gnd
+ AOI22X1
XFILL_1__3863_ gnd vdd FILL
XFILL_1__3443_ gnd vdd FILL
XFILL_1__3023_ gnd vdd FILL
XFILL_3__3789_ gnd vdd FILL
XFILL_3__3369_ gnd vdd FILL
XFILL_3_BUFX2_insert110 gnd vdd FILL
XFILL_3_BUFX2_insert111 gnd vdd FILL
XFILL_3_BUFX2_insert112 gnd vdd FILL
XFILL_3_BUFX2_insert113 gnd vdd FILL
XFILL_3__4730_ gnd vdd FILL
XFILL_3_BUFX2_insert114 gnd vdd FILL
XFILL_3_BUFX2_insert115 gnd vdd FILL
XFILL_3__4310_ gnd vdd FILL
XFILL_3_BUFX2_insert116 gnd vdd FILL
XFILL_3_BUFX2_insert117 gnd vdd FILL
XFILL_3_BUFX2_insert118 gnd vdd FILL
XFILL274050x68550 gnd vdd FILL
XFILL_3_BUFX2_insert119 gnd vdd FILL
XFILL_1__4648_ gnd vdd FILL
XFILL_1__4228_ gnd vdd FILL
XFILL_4__2653_ gnd vdd FILL
X_3298_ _1125_ _1129__bF$buf0 _181_ _1405_ vdd gnd OAI21X1
XFILL_0__2973_ gnd vdd FILL
XFILL_0__2553_ gnd vdd FILL
XFILL_2__3932_ gnd vdd FILL
XFILL_2__3512_ gnd vdd FILL
XFILL_4__3858_ gnd vdd FILL
XFILL_4__3438_ gnd vdd FILL
XFILL_4__3018_ gnd vdd FILL
XFILL_0__3758_ gnd vdd FILL
XFILL_0__3338_ gnd vdd FILL
XFILL_2__4717_ gnd vdd FILL
XFILL_1__2714_ gnd vdd FILL
XFILL_4__3191_ gnd vdd FILL
XFILL_1__3919_ gnd vdd FILL
XFILL_2__4890_ gnd vdd FILL
XFILL_2__4470_ gnd vdd FILL
XFILL_2__4050_ gnd vdd FILL
X_2989_ _1588_ _1611_ \u_pia_kbd.state\[2] _1612_ vdd gnd OAI21X1
X_2569_ _1643__bF$buf4 _1928_ _1664_ _2259_ vdd gnd NAND3X1
XFILL_4__4396_ gnd vdd FILL
X_3930_ _963_ _760_ _711_ _1448_ vdd gnd OAI21X1
X_3510_ \u_cpu.ABH\[0] _322_ vdd gnd INVX1
XFILL_3__2393_ gnd vdd FILL
XFILL_0__4296_ gnd vdd FILL
XFILL_4__2709_ gnd vdd FILL
XFILL_0__2609_ gnd vdd FILL
X_4715_ _1736_ _1740_ _1767_ _1768_ vdd gnd OAI21X1
XFILL_1__3672_ gnd vdd FILL
XFILL_1__3252_ gnd vdd FILL
XFILL_3__3598_ gnd vdd FILL
XFILL_3__3178_ gnd vdd FILL
XFILL_1__4457_ gnd vdd FILL
XFILL_1__4037_ gnd vdd FILL
XFILL_4__2882_ gnd vdd FILL
XFILL_4__2462_ gnd vdd FILL
XFILL_0__2782_ gnd vdd FILL
XFILL_0__2362_ gnd vdd FILL
XFILL_2__3741_ gnd vdd FILL
XFILL_2__3321_ gnd vdd FILL
XFILL_4__3667_ gnd vdd FILL
XFILL_4__3247_ gnd vdd FILL
XFILL_0__3987_ gnd vdd FILL
XFILL_0__3567_ gnd vdd FILL
XFILL_4_BUFX2_insert70 gnd vdd FILL
XFILL_4_BUFX2_insert71 gnd vdd FILL
XFILL_4_BUFX2_insert72 gnd vdd FILL
XFILL_4_BUFX2_insert73 gnd vdd FILL
XFILL_4_BUFX2_insert74 gnd vdd FILL
XFILL_2__4946_ gnd vdd FILL
XFILL_4_BUFX2_insert75 gnd vdd FILL
XFILL_2__4526_ gnd vdd FILL
XFILL_4_BUFX2_insert76 gnd vdd FILL
XFILL_2__4106_ gnd vdd FILL
XFILL_4_BUFX2_insert77 gnd vdd FILL
XFILL_4_BUFX2_insert78 gnd vdd FILL
XFILL_4_BUFX2_insert79 gnd vdd FILL
XFILL_1__2943_ gnd vdd FILL
XFILL_1__2523_ gnd vdd FILL
XFILL_3__2449_ gnd vdd FILL
XFILL_3__3810_ gnd vdd FILL
XFILL272250x72150 gnd vdd FILL
XFILL_1__3728_ gnd vdd FILL
XFILL_1__3308_ gnd vdd FILL
X_2798_ _1635__bF$buf1 _1638__bF$buf3 _2354__3_bF$buf4 _1938_ vdd gnd OAI21X1
X_2378_ _2353_[1] DO[1] vdd gnd BUFX2
XFILL272250x39750 gnd vdd FILL
XFILL_4__2938_ gnd vdd FILL
XFILL_4__2518_ gnd vdd FILL
XFILL_0__2838_ gnd vdd FILL
XFILL_0__2418_ gnd vdd FILL
X_4944_ DI[3] _2217_ vdd gnd INVX1
X_4524_ _1306_ _1252_ vdd gnd INVX2
X_4104_ _1072_ _870_ vdd gnd INVX2
XFILL_1__3481_ gnd vdd FILL
XFILL_1__4686_ gnd vdd FILL
XFILL_1__4266_ gnd vdd FILL
XFILL_4__2691_ gnd vdd FILL
XFILL_0__2591_ gnd vdd FILL
XFILL_2__3970_ gnd vdd FILL
XFILL_2__3550_ gnd vdd FILL
XFILL_4__3896_ gnd vdd FILL
XFILL_4__3476_ gnd vdd FILL
XFILL_0__3796_ gnd vdd FILL
XFILL_0__3376_ gnd vdd FILL
XFILL_2__4755_ gnd vdd FILL
XFILL_2__4335_ gnd vdd FILL
XFILL_1__2752_ gnd vdd FILL
XFILL_3__2678_ gnd vdd FILL
XFILL_1__3957_ gnd vdd FILL
XFILL_1__3537_ gnd vdd FILL
XFILL_3__4824_ gnd vdd FILL
XFILL_3__4404_ gnd vdd FILL
XFILL_2__2821_ gnd vdd FILL
XFILL_2__2401_ gnd vdd FILL
XFILL_4__2747_ gnd vdd FILL
XFILL_0__2647_ gnd vdd FILL
X_4753_ _1784_ _1805_ _1806_ vdd gnd NAND2X1
X_4333_ _1087_ _1325__bF$buf1 _1079_ _1078_ vdd gnd OAI21X1
XFILL_1__3290_ gnd vdd FILL
XFILL_2__3606_ gnd vdd FILL
XFILL_1__4495_ gnd vdd FILL
XFILL_1__4075_ gnd vdd FILL
XFILL_2_BUFX2_insert150 gnd vdd FILL
XFILL_2_BUFX2_insert151 gnd vdd FILL
XFILL_2_BUFX2_insert152 gnd vdd FILL
XFILL_2_BUFX2_insert153 gnd vdd FILL
XFILL_2_BUFX2_insert154 gnd vdd FILL
XFILL_2_BUFX2_insert155 gnd vdd FILL
XFILL_2_BUFX2_insert156 gnd vdd FILL
XFILL_2_BUFX2_insert157 gnd vdd FILL
XFILL_2_BUFX2_insert158 gnd vdd FILL
XFILL_2_BUFX2_insert159 gnd vdd FILL
XFILL_1__2808_ gnd vdd FILL
XFILL_4__3285_ gnd vdd FILL
XFILL_0__3185_ gnd vdd FILL
XFILL_2__4984_ gnd vdd FILL
XFILL_2__4564_ gnd vdd FILL
XFILL_2__4144_ gnd vdd FILL
X_3604_ \u_cpu.C\ \u_cpu.cond_code\[1] _409_ _408_ vdd gnd OAI21X1
XFILL_1__2981_ gnd vdd FILL
XFILL_1__2561_ gnd vdd FILL
XFILL_3__2487_ gnd vdd FILL
X_4809_ _1681__bF$buf2 _1855_ _1853_ _1672_ vdd gnd OAI21X1
XFILL_1__3766_ gnd vdd FILL
XFILL_1__3346_ gnd vdd FILL
XFILL_3__4633_ gnd vdd FILL
XFILL_3__4213_ gnd vdd FILL
XFILL_2__2630_ gnd vdd FILL
XFILL_4__2976_ gnd vdd FILL
XFILL_4__2556_ gnd vdd FILL
XFILL_0__2876_ gnd vdd FILL
XFILL_0__2456_ gnd vdd FILL
X_4982_ DO_kbd[7] _2181_ _2176_ _2251_ vdd gnd NAND3X1
X_4562_ _1291_ _1297_ _1315__bF$buf1 _1290_ vdd gnd OAI21X1
X_4142_ \u_cpu.state\[4] _915_ _909_ _908_ vdd gnd OAI21X1
XFILL_2__3835_ gnd vdd FILL
XFILL_2__3415_ gnd vdd FILL
XFILL_4__4702_ gnd vdd FILL
XFILL_0__4602_ gnd vdd FILL
XFILL_1__2617_ gnd vdd FILL
XFILL_3__3904_ gnd vdd FILL
XFILL_2__4793_ gnd vdd FILL
XFILL_2__4373_ gnd vdd FILL
XFILL_4__4299_ gnd vdd FILL
X_3833_ _638_ _857_ \u_cpu.PC\[6] _626_ vdd gnd OAI21X1
X_3413_ _245_ _244_ _243_ _242_ vdd gnd NAND3X1
XFILL_1__2790_ gnd vdd FILL
XFILL_1__2370_ gnd vdd FILL
XFILL_0__4199_ gnd vdd FILL
X_4618_ \u_cpu.state\[1] \u_cpu.state\[0] _1346_ vdd gnd NOR2X1
XFILL_1__3995_ gnd vdd FILL
XFILL_1__3575_ gnd vdd FILL
XFILL_3__4862_ gnd vdd FILL
XFILL_3__4442_ gnd vdd FILL
XFILL_3__4022_ gnd vdd FILL
XFILL_4__2785_ gnd vdd FILL
XFILL_4__2365_ gnd vdd FILL
XFILL_0__2685_ gnd vdd FILL
X_4791_ \u_cpu.ADD\[0] _1681__bF$buf0 _1843_ vdd gnd NAND2X1
X_4371_ \u_cpu.DIMUX\[7] _1113_ vdd gnd INVX2
XFILL_2__3644_ gnd vdd FILL
XFILL_2__3224_ gnd vdd FILL
XFILL_4__4931_ gnd vdd FILL
XFILL_4__4511_ gnd vdd FILL
XFILL_2__4849_ gnd vdd FILL
XFILL_0__4831_ gnd vdd FILL
XFILL_2__4429_ gnd vdd FILL
XFILL_0__4411_ gnd vdd FILL
XFILL_2__4009_ gnd vdd FILL
XFILL_1__2846_ gnd vdd FILL
XFILL_1__2426_ gnd vdd FILL
XFILL_3__3713_ gnd vdd FILL
XFILL_2__4182_ gnd vdd FILL
XFILL_3__4918_ gnd vdd FILL
X_3642_ _1328__bF$buf1 _1081_ RDY_bF$buf6 _445_ vdd gnd OAI21X1
X_3222_ _1037__bF$buf0 _771_ _111_ _1374_ vdd gnd OAI21X1
XFILL_2__2915_ gnd vdd FILL
X_4847_ _1883_ _1888_ _1889_ vdd gnd NAND2X1
X_4427_ _1164_ _1349_ _1315__bF$buf2 _1163_ vdd gnd OAI21X1
X_4007_ _782_ \u_cpu.PC\[7] _778_ _777_ vdd gnd AOI21X1
XFILL_1__3384_ gnd vdd FILL
XFILL_3__4671_ gnd vdd FILL
XFILL_3__4251_ gnd vdd FILL
XFILL_1__4589_ gnd vdd FILL
XFILL_1__4169_ gnd vdd FILL
XFILL_4__2594_ gnd vdd FILL
XFILL_0__2494_ gnd vdd FILL
X_4180_ \u_cpu.CO\ \u_cpu.adj_bcd\ \u_cpu.adc_bcd\ _939_ vdd gnd NAND3X1
XFILL_2__3873_ gnd vdd FILL
XFILL_2__3453_ gnd vdd FILL
XFILL_4__3799_ gnd vdd FILL
XFILL_4__3379_ gnd vdd FILL
X_2913_ _1551_ _1548_ _1550_ _1595_ vdd gnd AOI21X1
XFILL_4__4740_ gnd vdd FILL
XFILL_4__4320_ gnd vdd FILL
XFILL_0__3699_ gnd vdd FILL
XFILL_0__3279_ gnd vdd FILL
XFILL_0__4640_ gnd vdd FILL
XFILL_2__4658_ gnd vdd FILL
XFILL_2__4238_ gnd vdd FILL
XFILL_0__4220_ gnd vdd FILL
XFILL_1__2655_ gnd vdd FILL
XFILL_3__3942_ gnd vdd FILL
XFILL_3__3522_ gnd vdd FILL
XFILL_1__4801_ gnd vdd FILL
XFILL_3__4727_ gnd vdd FILL
XFILL_3__4307_ gnd vdd FILL
X_3871_ _1207_ _898_ _661_ vdd gnd NAND2X1
X_3451_ _388_ _452_ _1432_ vdd gnd OR2X2
X_3031_ \u_pia_kbd.state\[0] _1498_ vdd gnd INVX1
XFILL_2__2724_ gnd vdd FILL
X_4656_ \u_cpu.alu_op\[0] _1704_ _1706_ _1709_ vdd gnd OAI21X1
X_4236_ _989_ _988_ vdd gnd INVX1
XFILL_1__3193_ gnd vdd FILL
XFILL_0__3911_ gnd vdd FILL
XFILL_2__3929_ gnd vdd FILL
XFILL_2__3509_ gnd vdd FILL
XFILL_3__4480_ gnd vdd FILL
XFILL_3__4060_ gnd vdd FILL
XFILL_1__4398_ gnd vdd FILL
XFILL_2__3682_ gnd vdd FILL
XFILL_2__3262_ gnd vdd FILL
XFILL_4__3188_ gnd vdd FILL
X_2722_ _2354__5_bF$buf3 _2012_ _1999_ _2013_ vdd gnd NAND3X1
XFILL_2__4887_ gnd vdd FILL
XFILL_2__4467_ gnd vdd FILL
XFILL_2__4047_ gnd vdd FILL
X_3927_ \u_cpu.php\ _709_ vdd gnd INVX1
X_3507_ _607_ _334_ _320_ _319_ vdd gnd AOI21X1
XFILL_1__2884_ gnd vdd FILL
XFILL_1__2464_ gnd vdd FILL
XFILL_3__3751_ gnd vdd FILL
XFILL_3__3331_ gnd vdd FILL
XFILL_1__3669_ gnd vdd FILL
XFILL_1__3249_ gnd vdd FILL
XFILL_1__4610_ gnd vdd FILL
XFILL_3__4956_ gnd vdd FILL
XFILL_3__4536_ gnd vdd FILL
XFILL_3__4116_ gnd vdd FILL
X_3680_ _1037__bF$buf2 _484_ _487_ _483_ vdd gnd OAI21X1
X_3260_ _1281_ _800__bF$buf3 _136_ _1387_ vdd gnd OAI21X1
XFILL_2__2533_ gnd vdd FILL
XFILL_4__2879_ gnd vdd FILL
XFILL_4__2459_ gnd vdd FILL
XFILL_4__3820_ gnd vdd FILL
XFILL_4__3400_ gnd vdd FILL
XFILL_0__2779_ gnd vdd FILL
XFILL_0__2359_ gnd vdd FILL
X_4885_ _Addr_Bus[13] _2161_ vdd gnd INVX1
X_4465_ RDY_bF$buf1 _1196_ vdd gnd INVX8
X_4045_ _813_ _895_ _812_ vdd gnd NAND2X1
XFILL_2__3738_ gnd vdd FILL
XFILL_0__3720_ gnd vdd FILL
XFILL_0__3300_ gnd vdd FILL
XFILL_2__3318_ gnd vdd FILL
XFILL_4__4605_ gnd vdd FILL
XFILL_0__4925_ gnd vdd FILL
XFILL_3__2602_ gnd vdd FILL
XFILL_0__4505_ gnd vdd FILL
XFILL_2__3491_ gnd vdd FILL
XFILL_3__3807_ gnd vdd FILL
X_2951_ _2354_[13] _1520_ vdd gnd INVX1
X_2531_ _2050_ _1643__bF$buf0 _2354__4_bF$buf6 _2296_ vdd gnd AOI21X1
XFILL_2__4696_ gnd vdd FILL
XFILL_2__4276_ gnd vdd FILL
XFILL271650x50550 gnd vdd FILL
X_3736_ _1325__bF$buf0 _536_ _1196__bF$buf2 _535_ vdd gnd OAI21X1
X_3316_ _1206_ \u_cpu.ABH\[7] _168_ _167_ vdd gnd AOI21X1
XFILL_1__2693_ gnd vdd FILL
XFILL_3__3980_ gnd vdd FILL
XFILL_3__3560_ gnd vdd FILL
XFILL_1__3898_ gnd vdd FILL
XFILL_1__3478_ gnd vdd FILL
XFILL_3__4765_ gnd vdd FILL
XFILL_3__4345_ gnd vdd FILL
XFILL_2__2762_ gnd vdd FILL
XFILL_4__2688_ gnd vdd FILL
XFILL_0__2588_ gnd vdd FILL
X_4694_ \u_cpu.BI\[0] _1747_ vdd gnd INVX1
X_4274_ _1126_ _1105_ _1024_ _1023_ vdd gnd OAI21X1
XFILL_2__3967_ gnd vdd FILL
XFILL_2__3547_ gnd vdd FILL
XFILL_4__4834_ gnd vdd FILL
XFILL_4__4414_ gnd vdd FILL
XFILL_0__4734_ gnd vdd FILL
XFILL_3__2831_ gnd vdd FILL
XFILL_3__2411_ gnd vdd FILL
XFILL_0__4314_ gnd vdd FILL
XFILL_1__2749_ gnd vdd FILL
XFILL_3__3616_ gnd vdd FILL
X_2760_ _1916_ _1974_ _1634__bF$buf2 _1975_ vdd gnd OAI21X1
XFILL_2__4085_ gnd vdd FILL
XFILL_4__2900_ gnd vdd FILL
X_3965_ \u_cpu.plp\ _1344_ _740_ vdd gnd NAND2X1
X_3545_ _352_ _1333_ _1165_ _356_ _351_ vdd 
+ gnd
+ OAI22X1
X_3125_ _1417__bF$buf8 vdd \u_cpu.DIMUX\[0] clk_bF$buf7 \u_cpu.DIHOLD\[0] vdd 
+ gnd
+ DFFSR
XFILL_0__2800_ gnd vdd FILL
XFILL_2__2818_ gnd vdd FILL
XFILL_1__3287_ gnd vdd FILL
XFILL_3__4574_ gnd vdd FILL
XFILL_3__4154_ gnd vdd FILL
XFILL_2__2991_ gnd vdd FILL
XFILL_2__2571_ gnd vdd FILL
XFILL_4__2497_ gnd vdd FILL
XFILL_0__2397_ gnd vdd FILL
X_4083_ _1236_ _1080_ _1326_ _850_ vdd gnd OAI21X1
XFILL_2__3776_ gnd vdd FILL
XFILL_2__3356_ gnd vdd FILL
X_2816_ _2354__5_bF$buf0 _1920_ vdd gnd INVX8
XFILL_4__4643_ gnd vdd FILL
XFILL_4__4223_ gnd vdd FILL
XFILL_0__4963_ gnd vdd FILL
XFILL_3__2640_ gnd vdd FILL
XFILL_0__4543_ gnd vdd FILL
XFILL_0__4123_ gnd vdd FILL
XFILL_1__2978_ gnd vdd FILL
XFILL_1__2558_ gnd vdd FILL
XFILL_3__3845_ gnd vdd FILL
XFILL_3__3425_ gnd vdd FILL
XFILL_3__3005_ gnd vdd FILL
XFILL_1__4704_ gnd vdd FILL
X_3774_ _853_ _573_ vdd gnd INVX1
X_3354_ _191_ _192_ _1633_ vdd gnd OR2X2
XFILL_2__2627_ gnd vdd FILL
XFILL_4__3914_ gnd vdd FILL
X_4979_ _2189_ _2193_ _2248_ vdd gnd NOR2X1
X_4559_ \u_cpu.ADD\[5] _1287_ vdd gnd INVX1
X_4139_ _1328__bF$buf2 _906_ _905_ vdd gnd NOR2X1
XFILL_0__3814_ gnd vdd FILL
XFILL_3__4383_ gnd vdd FILL
XFILL_2__2380_ gnd vdd FILL
XFILL_2__3585_ gnd vdd FILL
XFILL_2__3165_ gnd vdd FILL
X_2625_ _2354__7_bF$buf0 _2080_ _2108_ _2346_[4] vdd gnd OAI21X1
XFILL_4__4452_ gnd vdd FILL
XFILL_4__4032_ gnd vdd FILL
XFILL_0__4772_ gnd vdd FILL
XFILL_0__4352_ gnd vdd FILL
XFILL_1__2787_ gnd vdd FILL
XFILL_1__2367_ gnd vdd FILL
XFILL_3__3654_ gnd vdd FILL
XFILL_3__3234_ gnd vdd FILL
XFILL_1__4933_ gnd vdd FILL
XFILL_1__4513_ gnd vdd FILL
XFILL_3__4859_ gnd vdd FILL
XFILL_3__4439_ gnd vdd FILL
XFILL_3__4019_ gnd vdd FILL
X_3583_ _582_ _387_ vdd gnd INVX1
X_3163_ _1396_ clk_bF$buf9 \u_cpu.IRHOLD\[3] vdd gnd DFFPOSX1
XFILL_2__2856_ gnd vdd FILL
XFILL_2__2436_ gnd vdd FILL
XFILL_4__3723_ gnd vdd FILL
XFILL_4__3303_ gnd vdd FILL
X_4788_ _1703_ _1827_ _1840_ _1841_ vdd gnd NAND3X1
X_4368_ \u_cpu.DIHOLD\[6] _1110_ vdd gnd INVX1
XFILL_0__3623_ gnd vdd FILL
XFILL_0__3203_ gnd vdd FILL
XFILL_3__4192_ gnd vdd FILL
XFILL_4__4928_ gnd vdd FILL
XFILL_4__4508_ gnd vdd FILL
XFILL_0__4828_ gnd vdd FILL
XFILL_3__2925_ gnd vdd FILL
XFILL_3__2505_ gnd vdd FILL
XFILL_0__4408_ gnd vdd FILL
XFILL_2__3394_ gnd vdd FILL
X_2854_ _2354__0_bF$buf1 _2354__2_bF$buf5 _1641_ vdd gnd NAND2X1
X_2434_ _1954_ _40_ _1920__bF$buf0 _41_ vdd gnd AOI21X1
XFILL_4__4681_ gnd vdd FILL
XFILL_4__4261_ gnd vdd FILL
XFILL_2__4599_ gnd vdd FILL
XFILL_0__4581_ gnd vdd FILL
XFILL_2__4179_ gnd vdd FILL
XFILL_0__4161_ gnd vdd FILL
X_3639_ RDY_bF$buf6 _853_ _442_ vdd gnd NOR2X1
X_3219_ \u_cpu.AXYS[1]\[7] _1041_ _109_ vdd gnd NAND2X1
XFILL_1__2596_ gnd vdd FILL
XFILL_3__3883_ gnd vdd FILL
XFILL_3__3463_ gnd vdd FILL
XFILL_1__4742_ gnd vdd FILL
XFILL_1__4322_ gnd vdd FILL
XFILL_3__4668_ gnd vdd FILL
XFILL_3__4248_ gnd vdd FILL
X_3392_ _1205_ _877_ _226_ _225_ vdd gnd OAI21X1
XFILL_2__2665_ gnd vdd FILL
XFILL_4__3952_ gnd vdd FILL
XFILL_4__3532_ gnd vdd FILL
X_4597_ _1326_ _1325_ vdd gnd INVX8
X_4177_ _940_ _936_ vdd gnd INVX1
XFILL_0__3852_ gnd vdd FILL
XFILL_0__3432_ gnd vdd FILL
XFILL_0__3012_ gnd vdd FILL
XFILL_2__4811_ gnd vdd FILL
XFILL_4__4737_ gnd vdd FILL
XFILL_4__4317_ gnd vdd FILL
XFILL_3__2734_ gnd vdd FILL
XFILL_0__4637_ gnd vdd FILL
XFILL_0__4217_ gnd vdd FILL
XFILL_3__3939_ gnd vdd FILL
XFILL_3__3519_ gnd vdd FILL
X_2663_ _1920__bF$buf0 _2070_ _2071_ vdd gnd NAND2X1
XFILL_4__4490_ gnd vdd FILL
XFILL_4__4070_ gnd vdd FILL
XFILL_0__4390_ gnd vdd FILL
XFILL_4__2803_ gnd vdd FILL
X_3868_ _922_ \u_cpu.AXYS[3]\[4] \u_cpu.AXYS[0]\[4] _978_ _659_ vdd 
+ gnd
+ AOI22X1
X_3448_ _782_ \u_cpu.PC\[2] _272_ _271_ vdd gnd AOI21X1
X_3028_ kbd_data[6] _1500_ _1501_ vdd gnd NAND2X1
XFILL_0__2703_ gnd vdd FILL
XFILL_3__3692_ gnd vdd FILL
XFILL_3__3272_ gnd vdd FILL
XFILL_0__3908_ gnd vdd FILL
XFILL_1__4971_ gnd vdd FILL
XFILL_1__4551_ gnd vdd FILL
XFILL_1__4131_ gnd vdd FILL
XFILL_3__4897_ gnd vdd FILL
XFILL_3__4477_ gnd vdd FILL
XFILL_3__4057_ gnd vdd FILL
XFILL_2__2894_ gnd vdd FILL
XFILL_2__2474_ gnd vdd FILL
XFILL_4__3761_ gnd vdd FILL
XFILL_4__3341_ gnd vdd FILL
XFILL_2__3679_ gnd vdd FILL
XFILL_0__3661_ gnd vdd FILL
XFILL_2__3259_ gnd vdd FILL
XFILL_0__3241_ gnd vdd FILL
XFILL_2__4620_ gnd vdd FILL
XFILL_2__4200_ gnd vdd FILL
X_2719_ _2354__0_bF$buf0 _1643__bF$buf5 _1924_ _2016_ vdd gnd OAI21X1
XFILL_4__4966_ gnd vdd FILL
XFILL_4__4546_ gnd vdd FILL
XFILL_4__4126_ gnd vdd FILL
XFILL_0__4866_ gnd vdd FILL
XFILL_3__2543_ gnd vdd FILL
XFILL_0__4446_ gnd vdd FILL
XFILL_0__4026_ gnd vdd FILL
XFILL_1__3822_ gnd vdd FILL
XFILL_1__3402_ gnd vdd FILL
XFILL_3__3748_ gnd vdd FILL
XFILL_3__3328_ gnd vdd FILL
X_2892_ _2352_ _1526_ _1568_ vdd gnd NAND2X1
X_2472_ _2354__3_bF$buf0 _2354__0_bF$buf1 _1934_ _3_ vdd gnd OAI21X1
XFILL_1__4607_ gnd vdd FILL
XFILL_4__2612_ gnd vdd FILL
X_3677_ _495_ _481_ _480_ vdd gnd NOR2X1
X_3257_ _1196__bF$buf0 _1345__bF$buf2 \u_cpu.cld\ _134_ vdd gnd OAI21X1
XFILL_0__2932_ gnd vdd FILL
XFILL_0__2512_ gnd vdd FILL
XFILL_4__3817_ gnd vdd FILL
XFILL_0__3717_ gnd vdd FILL
XFILL_1__4780_ gnd vdd FILL
XFILL_1__4360_ gnd vdd FILL
XFILL_3__4286_ gnd vdd FILL
XFILL273450x61350 gnd vdd FILL
XFILL_4__3990_ gnd vdd FILL
XFILL_4__3570_ gnd vdd FILL
XFILL_0_BUFX2_insert90 gnd vdd FILL
XFILL_0_BUFX2_insert91 gnd vdd FILL
XFILL_0__3890_ gnd vdd FILL
XFILL_0_BUFX2_insert92 gnd vdd FILL
XFILL_2__3488_ gnd vdd FILL
XFILL_0__3470_ gnd vdd FILL
XFILL_0_BUFX2_insert93 gnd vdd FILL
XFILL_0_BUFX2_insert94 gnd vdd FILL
XFILL_0_BUFX2_insert95 gnd vdd FILL
XFILL_0_BUFX2_insert96 gnd vdd FILL
XFILL_0_BUFX2_insert97 gnd vdd FILL
XFILL_0_BUFX2_insert98 gnd vdd FILL
XFILL_0_BUFX2_insert99 gnd vdd FILL
X_2948_ _2354_[11] _2354_[8] _1523_ vdd gnd NOR2X1
X_2528_ _1635__bF$buf4 _2298_ _1634__bF$buf3 _2299_ vdd gnd OAI21X1
XFILL_4__4775_ gnd vdd FILL
XFILL_4__4355_ gnd vdd FILL
XFILL_0__4675_ gnd vdd FILL
XFILL_3__2772_ gnd vdd FILL
XFILL_0__4255_ gnd vdd FILL
XFILL_1__3631_ gnd vdd FILL
XFILL_1__3211_ gnd vdd FILL
XFILL_3__3977_ gnd vdd FILL
XFILL_3__3557_ gnd vdd FILL
XFILL_1__4836_ gnd vdd FILL
XFILL_1__4416_ gnd vdd FILL
XFILL_4__2841_ gnd vdd FILL
X_3486_ _1328__bF$buf1 _903_ RDY_bF$buf6 _299_ vdd gnd OAI21X1
X_3066_ _1675_ vdd _1680_ clk_bF$buf0 \u_cpu.u_ALU8.AI7\ vdd 
+ gnd
+ DFFSR
XFILL_0__2741_ gnd vdd FILL
XFILL_2__2759_ gnd vdd FILL
XFILL_2__3700_ gnd vdd FILL
XFILL_4__3626_ gnd vdd FILL
XFILL_4__3206_ gnd vdd FILL
XFILL_0__3946_ gnd vdd FILL
XFILL_0__3526_ gnd vdd FILL
XFILL_3__4095_ gnd vdd FILL
XFILL_2__4905_ gnd vdd FILL
XFILL_1__2902_ gnd vdd FILL
XFILL_3__2828_ gnd vdd FILL
XFILL_3__2408_ gnd vdd FILL
XFILL_2__3297_ gnd vdd FILL
X_2757_ _1977_ _1978_ vdd gnd INVX1
XFILL_4__4584_ gnd vdd FILL
XFILL_4__4164_ gnd vdd FILL
XFILL_3__2581_ gnd vdd FILL
XFILL_0__4484_ gnd vdd FILL
XFILL_0__4064_ gnd vdd FILL
XFILL_1__2499_ gnd vdd FILL
X_4903_ _2352_ _2179_ vdd gnd INVX1
XFILL_1__3860_ gnd vdd FILL
XFILL_1__3440_ gnd vdd FILL
XFILL_1__3020_ gnd vdd FILL
XFILL_3__3786_ gnd vdd FILL
XFILL_3__3366_ gnd vdd FILL
XFILL271950x25350 gnd vdd FILL
XFILL_1__4645_ gnd vdd FILL
XFILL_1__4225_ gnd vdd FILL
XFILL_4__2650_ gnd vdd FILL
X_3295_ \u_cpu.AXYS[1]\[5] _1041_ _154_ vdd gnd NAND2X1
XFILL_0__2970_ gnd vdd FILL
XFILL_2__2988_ gnd vdd FILL
XFILL_0__2550_ gnd vdd FILL
XFILL_2__2568_ gnd vdd FILL
XFILL_4__3855_ gnd vdd FILL
XFILL_4__3435_ gnd vdd FILL
XFILL_4__3015_ gnd vdd FILL
XFILL_0__3755_ gnd vdd FILL
XFILL_0__3335_ gnd vdd FILL
XFILL_2__4714_ gnd vdd FILL
XFILL_1__2711_ gnd vdd FILL
XFILL_3__2637_ gnd vdd FILL
XFILL_1__3916_ gnd vdd FILL
X_2986_ kbd_rdy _1513_ _1613_ _1630_ vdd gnd OAI21X1
X_2566_ _2261_ _2257_ _2354__5_bF$buf2 _2262_ vdd gnd AOI21X1
XFILL_4__4393_ gnd vdd FILL
XFILL_0__4293_ gnd vdd FILL
XFILL_4__2706_ gnd vdd FILL
XFILL_0__2606_ gnd vdd FILL
X_4712_ \u_cpu.alu_shift_right\ \u_cpu.AI\[2] _1765_ vdd gnd NAND2X1
XFILL_3__3595_ gnd vdd FILL
XFILL_3__3175_ gnd vdd FILL
XFILL_1__4454_ gnd vdd FILL
XFILL_1__4034_ gnd vdd FILL
XFILL_2__2797_ gnd vdd FILL
XFILL_2__2377_ gnd vdd FILL
XFILL_4__3664_ gnd vdd FILL
XFILL_4__3244_ gnd vdd FILL
XFILL_0__3984_ gnd vdd FILL
XFILL_0__3564_ gnd vdd FILL
XFILL_4_BUFX2_insert40 gnd vdd FILL
XFILL_4_BUFX2_insert41 gnd vdd FILL
XFILL_4_BUFX2_insert42 gnd vdd FILL
XFILL_4_BUFX2_insert43 gnd vdd FILL
XFILL_2__4943_ gnd vdd FILL
XFILL_4_BUFX2_insert44 gnd vdd FILL
XFILL_4_BUFX2_insert45 gnd vdd FILL
XFILL_2__4523_ gnd vdd FILL
XFILL_4_BUFX2_insert46 gnd vdd FILL
XFILL_2__4103_ gnd vdd FILL
XFILL_4_BUFX2_insert47 gnd vdd FILL
XFILL_4_BUFX2_insert48 gnd vdd FILL
XFILL_4_BUFX2_insert49 gnd vdd FILL
XFILL_4__4869_ gnd vdd FILL
XFILL_4__4449_ gnd vdd FILL
XFILL_4__4029_ gnd vdd FILL
XFILL_1__2940_ gnd vdd FILL
XFILL_1__2520_ gnd vdd FILL
XFILL_0__4769_ gnd vdd FILL
XFILL_3__2446_ gnd vdd FILL
XFILL_0__4349_ gnd vdd FILL
XFILL_1__3725_ gnd vdd FILL
XFILL_1__3305_ gnd vdd FILL
X_2795_ _1938_ _1918_ _1940_ _1941_ vdd gnd OAI21X1
X_2375_ _2353_[4] DO[4] vdd gnd BUFX2
XFILL_4__2935_ gnd vdd FILL
XFILL_4__2515_ gnd vdd FILL
XFILL274050x7350 gnd vdd FILL
XFILL_0__2835_ gnd vdd FILL
XFILL_0__2415_ gnd vdd FILL
X_4941_ DO_woz[3] _2214_ vdd gnd INVX1
X_4521_ \u_cpu.state\[5] _1252_ _1250_ _1249_ vdd gnd OAI21X1
X_4101_ _1328__bF$buf4 _870_ _868_ _867_ vdd gnd OAI21X1
XFILL_1__4683_ gnd vdd FILL
XFILL_1__4263_ gnd vdd FILL
XFILL_3__4189_ gnd vdd FILL
XFILL_4__3893_ gnd vdd FILL
XFILL_4__3473_ gnd vdd FILL
XFILL_0__3793_ gnd vdd FILL
XFILL_0__3373_ gnd vdd FILL
XFILL_2__4752_ gnd vdd FILL
XFILL_2__4332_ gnd vdd FILL
XFILL_4__4678_ gnd vdd FILL
XFILL_4__4258_ gnd vdd FILL
XFILL_3__2675_ gnd vdd FILL
XFILL_0__4578_ gnd vdd FILL
XFILL_0__4158_ gnd vdd FILL
XFILL_1__3954_ gnd vdd FILL
XFILL_1__3534_ gnd vdd FILL
XFILL_3__4821_ gnd vdd FILL
XFILL_3__4401_ gnd vdd FILL
XFILL_1__4739_ gnd vdd FILL
XFILL_1__4319_ gnd vdd FILL
XFILL_4__2744_ gnd vdd FILL
X_3389_ _223_ _2354_[0] vdd gnd INVX8
XFILL_0__2644_ gnd vdd FILL
X_4750_ \u_cpu.u_ALU8.BCD\ _1802_ _1803_ vdd gnd NAND2X1
X_4330_ _1335_ _1304_ _1075_ vdd gnd NOR2X1
XFILL_2__3603_ gnd vdd FILL
XFILL_4__3949_ gnd vdd FILL
XFILL_4__3529_ gnd vdd FILL
XFILL_0__3849_ gnd vdd FILL
XFILL_0__3429_ gnd vdd FILL
XFILL_0__3009_ gnd vdd FILL
XFILL_1__4492_ gnd vdd FILL
XFILL_1__4072_ gnd vdd FILL
XFILL_2__4808_ gnd vdd FILL
XFILL_2_BUFX2_insert120 gnd vdd FILL
XFILL_2_BUFX2_insert121 gnd vdd FILL
XFILL_2_BUFX2_insert122 gnd vdd FILL
XFILL_2_BUFX2_insert123 gnd vdd FILL
XFILL_2_BUFX2_insert124 gnd vdd FILL
XFILL_2_BUFX2_insert125 gnd vdd FILL
XFILL_2_BUFX2_insert126 gnd vdd FILL
XFILL_2_BUFX2_insert127 gnd vdd FILL
XFILL_2_BUFX2_insert128 gnd vdd FILL
XFILL_2_BUFX2_insert129 gnd vdd FILL
XFILL_1__2805_ gnd vdd FILL
XFILL_4__3282_ gnd vdd FILL
XFILL_0__3182_ gnd vdd FILL
XFILL_2__4981_ gnd vdd FILL
XFILL_2__4561_ gnd vdd FILL
XFILL_2__4141_ gnd vdd FILL
XFILL_4__4487_ gnd vdd FILL
XFILL_4__4067_ gnd vdd FILL
X_3601_ _735_ _406_ _405_ vdd gnd NAND2X1
XFILL_0__4387_ gnd vdd FILL
XFILL_3__2484_ gnd vdd FILL
XFILL_1_BUFX2_insert140 gnd vdd FILL
XFILL_1_BUFX2_insert141 gnd vdd FILL
XFILL_1_BUFX2_insert142 gnd vdd FILL
XFILL_1_BUFX2_insert143 gnd vdd FILL
XFILL_1_BUFX2_insert144 gnd vdd FILL
XFILL_1_BUFX2_insert145 gnd vdd FILL
XFILL_1_BUFX2_insert146 gnd vdd FILL
XFILL_1_BUFX2_insert147 gnd vdd FILL
XFILL_1_BUFX2_insert148 gnd vdd FILL
XFILL_1_BUFX2_insert149 gnd vdd FILL
X_4806_ \u_cpu.ADD\[5] _1681__bF$buf2 _1853_ vdd gnd NAND2X1
XFILL_1__3763_ gnd vdd FILL
XFILL_1__3343_ gnd vdd FILL
XFILL_3__3689_ gnd vdd FILL
XFILL_3__3269_ gnd vdd FILL
XFILL_3__4630_ gnd vdd FILL
XFILL_3__4210_ gnd vdd FILL
XFILL_1__4968_ gnd vdd FILL
XFILL_1__4548_ gnd vdd FILL
XFILL_1__4128_ gnd vdd FILL
XFILL_4__2973_ gnd vdd FILL
XFILL_4__2553_ gnd vdd FILL
X_3198_ \u_cpu.AXYS[3]\[7] _921_ _95_ vdd gnd NAND2X1
XFILL_0__2453_ gnd vdd FILL
XFILL_2__3832_ gnd vdd FILL
XFILL_2__3412_ gnd vdd FILL
XFILL_4__3758_ gnd vdd FILL
XFILL_4__3338_ gnd vdd FILL
XFILL_0__3658_ gnd vdd FILL
XFILL_0__3238_ gnd vdd FILL
XFILL_2__4617_ gnd vdd FILL
XFILL_1__2614_ gnd vdd FILL
XFILL_3__3901_ gnd vdd FILL
XFILL_1__3819_ gnd vdd FILL
XFILL_2__4790_ gnd vdd FILL
XFILL_2__4370_ gnd vdd FILL
X_2889_ _2354__7_bF$buf2 _1571_ vdd gnd INVX1
X_2469_ _3_ _5_ _4_ _2_ _6_ vdd 
+ gnd
+ OAI22X1
XFILL_4__4296_ gnd vdd FILL
X_3830_ _627_ _626_ _624_ _623_ vdd gnd NAND3X1
X_3410_ \u_cpu.ADD\[1] _908_ _240_ vdd gnd NAND2X1
XFILL_0__4196_ gnd vdd FILL
XFILL_4__2609_ gnd vdd FILL
XFILL_0__2929_ gnd vdd FILL
XFILL_0__2509_ gnd vdd FILL
X_4615_ \u_cpu.NMI_edge\ _1343_ vdd gnd INVX1
XFILL_1__3992_ gnd vdd FILL
XFILL_1__3572_ gnd vdd FILL
XFILL_3__3498_ gnd vdd FILL
XFILL_1__4777_ gnd vdd FILL
XFILL_1__4357_ gnd vdd FILL
XFILL_4__2782_ gnd vdd FILL
XFILL_4__2362_ gnd vdd FILL
XFILL_0__2682_ gnd vdd FILL
XFILL_2__3641_ gnd vdd FILL
XFILL_2__3221_ gnd vdd FILL
XFILL_4__3987_ gnd vdd FILL
XFILL_4__3567_ gnd vdd FILL
XFILL_0__3887_ gnd vdd FILL
XFILL_0__3467_ gnd vdd FILL
XFILL_2__4846_ gnd vdd FILL
XFILL_2__4426_ gnd vdd FILL
XFILL_2__4006_ gnd vdd FILL
XFILL_1__2843_ gnd vdd FILL
XFILL_1__2423_ gnd vdd FILL
XFILL_3__2769_ gnd vdd FILL
XFILL_3__3710_ gnd vdd FILL
XFILL274050x54150 gnd vdd FILL
XFILL_1__3628_ gnd vdd FILL
XFILL_1__3208_ gnd vdd FILL
X_2698_ _1635__bF$buf1 _1636__bF$buf2 _2037_ vdd gnd NAND2X1
XFILL_3__4915_ gnd vdd FILL
XFILL_2__2912_ gnd vdd FILL
XFILL_4__2838_ gnd vdd FILL
XFILL_4__2418_ gnd vdd FILL
XFILL_0__2738_ gnd vdd FILL
X_4844_ _1695_ _1885_ _1838_ _1839_ _1886_ vdd 
+ gnd
+ AOI22X1
X_4424_ _1161_ _1168_ _1160_ vdd gnd NOR2X1
X_4004_ _800__bF$buf3 _2354__7_bF$buf2 _775_ vdd gnd NAND2X1
XFILL_1__3381_ gnd vdd FILL
XFILL_1__4586_ gnd vdd FILL
XFILL_1__4166_ gnd vdd FILL
XFILL_4__2591_ gnd vdd FILL
XFILL_0__2491_ gnd vdd FILL
XFILL_2__3870_ gnd vdd FILL
XFILL_2__3450_ gnd vdd FILL
XFILL_2__3030_ gnd vdd FILL
XFILL_4__3796_ gnd vdd FILL
XFILL_4__3376_ gnd vdd FILL
X_2910_ _1523_ _1552_ _1553_ _1554_ vdd gnd NAND3X1
XFILL_0__3696_ gnd vdd FILL
XFILL_0__3276_ gnd vdd FILL
XFILL_2__4655_ gnd vdd FILL
XFILL_2__4235_ gnd vdd FILL
XFILL273750x36150 gnd vdd FILL
XFILL_1__2652_ gnd vdd FILL
XFILL_3__2998_ gnd vdd FILL
XFILL_3__2578_ gnd vdd FILL
XFILL_1__3857_ gnd vdd FILL
XFILL_1__3437_ gnd vdd FILL
XFILL_1__3017_ gnd vdd FILL
XFILL_3__4724_ gnd vdd FILL
XFILL_3__4304_ gnd vdd FILL
XFILL_2__2721_ gnd vdd FILL
XFILL_4__2647_ gnd vdd FILL
XFILL_0__2967_ gnd vdd FILL
XFILL_0__2547_ gnd vdd FILL
X_4653_ \u_cpu.AI\[4] _1706_ vdd gnd INVX1
X_4233_ _1007_ _1099_ _985_ vdd gnd AND2X2
XFILL_1__3190_ gnd vdd FILL
XFILL_2__3926_ gnd vdd FILL
XFILL_2__3506_ gnd vdd FILL
XFILL_1__4395_ gnd vdd FILL
XFILL_1__2708_ gnd vdd FILL
XFILL_4__3185_ gnd vdd FILL
XFILL272250x25350 gnd vdd FILL
XFILL_2__4884_ gnd vdd FILL
XFILL_2__4464_ gnd vdd FILL
XFILL_2__4044_ gnd vdd FILL
X_3924_ \u_cpu.dst_reg\[1] _707_ vdd gnd INVX1
X_3504_ _554_ _581_ _381_ _317_ vdd gnd OAI21X1
XFILL_1__2881_ gnd vdd FILL
XFILL_1__2461_ gnd vdd FILL
XFILL_3__2387_ gnd vdd FILL
X_4709_ _1761_ _1760_ _1762_ vdd gnd NAND2X1
XFILL_1__3666_ gnd vdd FILL
XFILL_1__3246_ gnd vdd FILL
XFILL_3__4953_ gnd vdd FILL
XFILL_3__4533_ gnd vdd FILL
XFILL_3__4113_ gnd vdd FILL
XFILL_2__2950_ gnd vdd FILL
XFILL_2__2530_ gnd vdd FILL
XFILL_4__2876_ gnd vdd FILL
XFILL_4__2456_ gnd vdd FILL
XFILL_0__2776_ gnd vdd FILL
XFILL_0__2356_ gnd vdd FILL
X_4882_ _2346_[6] clk_bF$buf6 DO_woz[6] vdd gnd DFFPOSX1
X_4462_ RDY_bF$buf3 Data_In[1] _1193_ vdd gnd NAND2X1
X_4042_ _810_ _812_ _809_ vdd gnd NOR2X1
XFILL_2__3735_ gnd vdd FILL
XFILL_2__3315_ gnd vdd FILL
XFILL_4__4602_ gnd vdd FILL
XFILL_0__4922_ gnd vdd FILL
XFILL_0__4502_ gnd vdd FILL
XFILL_1__2937_ gnd vdd FILL
XFILL_1__2517_ gnd vdd FILL
XFILL_3__3804_ gnd vdd FILL
XFILL_2__4693_ gnd vdd FILL
XFILL_2__4273_ gnd vdd FILL
XFILL_4__4199_ gnd vdd FILL
X_3733_ RDY_bF$buf0 _1048_ _533_ _532_ vdd gnd OAI21X1
X_3313_ _1091_ _165_ _170_ _164_ vdd gnd NAND3X1
XFILL_1__2690_ gnd vdd FILL
XFILL_0__4099_ gnd vdd FILL
X_4938_ _2209_ _2211_ _2182_ _2212_ vdd gnd NAND3X1
X_4518_ _1248_ _1247_ _1246_ vdd gnd NAND2X1
XFILL_1__3895_ gnd vdd FILL
XFILL_1__3475_ gnd vdd FILL
XFILL_3__4762_ gnd vdd FILL
XFILL_3__4342_ gnd vdd FILL
XFILL_4__2685_ gnd vdd FILL
XFILL_0__2585_ gnd vdd FILL
X_4691_ \u_cpu.BI\[0] _1687_ _1744_ vdd gnd NAND2X1
X_4271_ _1102_ _1025_ _1020_ vdd gnd NAND2X1
XFILL_2__3964_ gnd vdd FILL
XFILL_2__3544_ gnd vdd FILL
XFILL_4__4831_ gnd vdd FILL
XFILL_4__4411_ gnd vdd FILL
XFILL_2__4749_ gnd vdd FILL
XFILL_0__4731_ gnd vdd FILL
XFILL_0__4311_ gnd vdd FILL
XFILL_2__4329_ gnd vdd FILL
XFILL_1__2746_ gnd vdd FILL
XFILL_3__3613_ gnd vdd FILL
XFILL_2__4082_ gnd vdd FILL
XFILL_3__4818_ gnd vdd FILL
X_3962_ _1044_ _828_ _737_ vdd gnd NOR2X1
X_3542_ \u_cpu.AXYS[1]\[2] _1050_ _790_ \u_cpu.AXYS[2]\[2] _349_ vdd 
+ gnd
+ AOI22X1
X_3122_ _1417__bF$buf9 vdd _1450_ clk_bF$buf8 \u_cpu.plp\ vdd 
+ gnd
+ DFFSR
XFILL_2__2815_ gnd vdd FILL
X_4747_ _1768_ _1764_ _1800_ vdd gnd NAND2X1
X_4327_ _1352_ _1348_ _1072_ vdd gnd NOR2X1
XFILL_1__3284_ gnd vdd FILL
XFILL_3__4571_ gnd vdd FILL
XFILL_3__4151_ gnd vdd FILL
XFILL_1__4489_ gnd vdd FILL
XFILL_1__4069_ gnd vdd FILL
XFILL_4__2494_ gnd vdd FILL
XFILL_0__2394_ gnd vdd FILL
X_4080_ _1329_ _912_ _847_ vdd gnd NAND2X1
XFILL_2__3773_ gnd vdd FILL
XFILL_2__3353_ gnd vdd FILL
XFILL_4__3699_ gnd vdd FILL
XFILL_4__3279_ gnd vdd FILL
X_2813_ _2354__6_bF$buf2 _1923_ vdd gnd INVX4
XFILL_4__4640_ gnd vdd FILL
XFILL_4__4220_ gnd vdd FILL
XFILL_0__3599_ gnd vdd FILL
XFILL_0__3179_ gnd vdd FILL
XFILL_0__4960_ gnd vdd FILL
XFILL_2__4978_ gnd vdd FILL
XFILL_2__4558_ gnd vdd FILL
XFILL_0__4540_ gnd vdd FILL
XFILL_0__4120_ gnd vdd FILL
XFILL_2__4138_ gnd vdd FILL
XFILL_1__2975_ gnd vdd FILL
XFILL_1__2555_ gnd vdd FILL
XFILL_3__3842_ gnd vdd FILL
XFILL_3__3422_ gnd vdd FILL
XFILL_3__3002_ gnd vdd FILL
XFILL_1__4701_ gnd vdd FILL
XFILL_3__4627_ gnd vdd FILL
XFILL_3__4207_ gnd vdd FILL
X_3771_ _571_ _572_ _570_ vdd gnd NOR2X1
X_3351_ _907_ _616_ _1355_ _614_ _188_ vdd 
+ gnd
+ OAI22X1
XFILL_2__2624_ gnd vdd FILL
XFILL_4__3911_ gnd vdd FILL
X_4976_ DO_dsp[7] _2245_ vdd gnd INVX1
X_4556_ _1305__bF$buf1 _1321_ _1285_ _1284_ vdd gnd NAND3X1
X_4136_ _1328__bF$buf2 _903_ _902_ vdd gnd NOR2X1
XFILL_2__3829_ gnd vdd FILL
XFILL_0__3811_ gnd vdd FILL
XFILL_2__3409_ gnd vdd FILL
XFILL_3__4380_ gnd vdd FILL
XFILL_1__4298_ gnd vdd FILL
XFILL_2__3582_ gnd vdd FILL
X_2622_ _2110_ _1937_ _2354__4_bF$buf1 _2111_ vdd gnd OAI21X1
XFILL_2__4787_ gnd vdd FILL
XFILL_2__4367_ gnd vdd FILL
X_3827_ _1319_ _887_ \u_cpu.DIMUX\[2] _621_ vdd gnd OAI21X1
X_3407_ _1192_ _886_ _238_ _237_ vdd gnd OAI21X1
XFILL_1__2784_ gnd vdd FILL
XFILL_1__2364_ gnd vdd FILL
XFILL_3__3651_ gnd vdd FILL
XFILL_3__3231_ gnd vdd FILL
XFILL_1__3989_ gnd vdd FILL
XFILL_1__3569_ gnd vdd FILL
XFILL_1__4930_ gnd vdd FILL
XFILL_1__4510_ gnd vdd FILL
XFILL_3__4856_ gnd vdd FILL
XFILL_3__4436_ gnd vdd FILL
XFILL_3__4016_ gnd vdd FILL
X_3580_ _1024_ _1019_ _385_ _384_ vdd gnd OAI21X1
X_3160_ _1417__bF$buf7 vdd _1416_ clk_bF$buf7 \u_cpu.AXYS[2]\[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2853_ gnd vdd FILL
XFILL_2__2433_ gnd vdd FILL
XFILL_4__2779_ gnd vdd FILL
XFILL_4__2359_ gnd vdd FILL
XFILL_4__3720_ gnd vdd FILL
XFILL_4__3300_ gnd vdd FILL
XFILL_0__2679_ gnd vdd FILL
X_4785_ _1810_ _1837_ _1809_ _1838_ vdd gnd OAI21X1
X_4365_ \u_cpu.DIMUX\[6] _1108_ vdd gnd INVX2
XFILL_0__3620_ gnd vdd FILL
XFILL_2__3638_ gnd vdd FILL
XFILL_0__3200_ gnd vdd FILL
XFILL_2__3218_ gnd vdd FILL
XFILL_4__4925_ gnd vdd FILL
XFILL_4__4505_ gnd vdd FILL
XFILL_0__4825_ gnd vdd FILL
XFILL_3__2922_ gnd vdd FILL
XFILL_3__2502_ gnd vdd FILL
XFILL_0__4405_ gnd vdd FILL
XFILL_2__3391_ gnd vdd FILL
XFILL_3__3707_ gnd vdd FILL
X_2851_ _2354__2_bF$buf4 _1635__bF$buf3 _1643__bF$buf1 _1644_ vdd gnd OAI21X1
X_2431_ _34_ _43_ _21_ _1973_ _2346_[0] vdd 
+ gnd
+ AOI22X1
XFILL_2__4596_ gnd vdd FILL
XFILL_2__4176_ gnd vdd FILL
X_3636_ _442_ _440_ _544_ _439_ vdd gnd OAI21X1
X_3216_ _667_ _1129__bF$buf5 _108_ _1371_ vdd gnd OAI21X1
XFILL_1__2593_ gnd vdd FILL
XFILL_2__2909_ gnd vdd FILL
XFILL_3__3880_ gnd vdd FILL
XFILL_3__3460_ gnd vdd FILL
XFILL_1__3798_ gnd vdd FILL
XFILL_1__3378_ gnd vdd FILL
XFILL_3__4665_ gnd vdd FILL
XFILL_3__4245_ gnd vdd FILL
XBUFX2_insert160 _1325_ _1325__bF$buf3 vdd gnd BUFX2
XBUFX2_insert161 _1325_ _1325__bF$buf2 vdd gnd BUFX2
XBUFX2_insert162 _1325_ _1325__bF$buf1 vdd gnd BUFX2
XBUFX2_insert163 _1325_ _1325__bF$buf0 vdd gnd BUFX2
XBUFX2_insert164 _1037_ _1037__bF$buf3 vdd gnd BUFX2
XFILL_2__2662_ gnd vdd FILL
XBUFX2_insert165 _1037_ _1037__bF$buf2 vdd gnd BUFX2
XBUFX2_insert166 _1037_ _1037__bF$buf1 vdd gnd BUFX2
XBUFX2_insert167 _1037_ _1037__bF$buf0 vdd gnd BUFX2
XFILL_4__2588_ gnd vdd FILL
XFILL_0__2488_ gnd vdd FILL
X_4594_ \u_cpu.state\[2] _1338_ _1322_ vdd gnd NOR2X1
X_4174_ _1070__bF$buf1 _934_ _933_ vdd gnd NAND2X1
XFILL_2__3867_ gnd vdd FILL
XFILL_2__3447_ gnd vdd FILL
XFILL_2__3027_ gnd vdd FILL
X_2907_ _2354_[9] _2354__6_bF$buf4 _2354__7_bF$buf2 _1557_ vdd gnd NOR3X1
XFILL_4__4734_ gnd vdd FILL
XFILL_4__4314_ gnd vdd FILL
XFILL_3__2731_ gnd vdd FILL
XFILL_0__4634_ gnd vdd FILL
XFILL_0__4214_ gnd vdd FILL
XFILL_1__2649_ gnd vdd FILL
XFILL_3__3936_ gnd vdd FILL
XFILL_3__3516_ gnd vdd FILL
X_2660_ _1636__bF$buf2 _1651_ _2074_ vdd gnd NAND2X1
XFILL_4__2800_ gnd vdd FILL
X_3865_ \u_cpu.DIMUX\[4] _867_ _780_ \u_cpu.ABL\[4] _656_ vdd 
+ gnd
+ AOI22X1
X_3445_ _1286_ _875_ \u_cpu.ABH\[5] _269_ vdd gnd OAI21X1
X_3025_ kbd_data[0] _1500_ _1503_ vdd gnd NAND2X1
XFILL272850x21750 gnd vdd FILL
XFILL_2__2718_ gnd vdd FILL
XFILL_0__2700_ gnd vdd FILL
XFILL_1__3187_ gnd vdd FILL
XFILL_0__3905_ gnd vdd FILL
XFILL_3__4894_ gnd vdd FILL
XFILL_3__4474_ gnd vdd FILL
XFILL_3__4054_ gnd vdd FILL
XFILL_2__2891_ gnd vdd FILL
XFILL_2__2471_ gnd vdd FILL
XFILL_4__2397_ gnd vdd FILL
XFILL_2__3676_ gnd vdd FILL
XFILL_2__3256_ gnd vdd FILL
X_2716_ _1967_ _1984_ _2019_ vdd gnd NAND2X1
XFILL_4__4963_ gnd vdd FILL
XFILL_4__4543_ gnd vdd FILL
XFILL_4__4123_ gnd vdd FILL
XFILL_0__4863_ gnd vdd FILL
XFILL_3__2540_ gnd vdd FILL
XFILL_0__4443_ gnd vdd FILL
XFILL_0__4023_ gnd vdd FILL
XFILL_1__2878_ gnd vdd FILL
XFILL_1__2458_ gnd vdd FILL
XFILL_3__3745_ gnd vdd FILL
XFILL_3__3325_ gnd vdd FILL
XFILL_1__4604_ gnd vdd FILL
X_3674_ _1196__bF$buf4 _882_ _477_ vdd gnd NAND2X1
X_3254_ _2354_[8] _800__bF$buf4 _133_ vdd gnd NAND2X1
XFILL_2__2947_ gnd vdd FILL
XFILL_2__2527_ gnd vdd FILL
XFILL_4__3814_ gnd vdd FILL
X_4879_ _1675_ vdd _1668_ clk_bF$buf0 \u_cpu.ADD\[1] vdd 
+ gnd
+ DFFSR
X_4459_ _1221_ _1349_ _1315__bF$buf2 _1191_ vdd gnd OAI21X1
X_4039_ _807_ _806_ vdd gnd INVX1
XFILL_0__3714_ gnd vdd FILL
XFILL_3__4283_ gnd vdd FILL
XFILL_0__4919_ gnd vdd FILL
XFILL_0_BUFX2_insert60 gnd vdd FILL
XFILL_0_BUFX2_insert61 gnd vdd FILL
XFILL_0_BUFX2_insert62 gnd vdd FILL
XFILL_2__3485_ gnd vdd FILL
XFILL_0_BUFX2_insert63 gnd vdd FILL
XFILL_0_BUFX2_insert64 gnd vdd FILL
XFILL_0_BUFX2_insert65 gnd vdd FILL
XFILL_0_BUFX2_insert66 gnd vdd FILL
XFILL_0_BUFX2_insert67 gnd vdd FILL
XFILL_0_BUFX2_insert68 gnd vdd FILL
XFILL_0_BUFX2_insert69 gnd vdd FILL
X_2945_ _2354__0_bF$buf2 _1526_ vdd gnd INVX1
X_2525_ _2301_ _2110_ _2354__6_bF$buf3 _2302_ vdd gnd OAI21X1
XFILL_4__4772_ gnd vdd FILL
XFILL_4__4352_ gnd vdd FILL
XFILL_0__4672_ gnd vdd FILL
XFILL_0__4252_ gnd vdd FILL
XFILL_1__2687_ gnd vdd FILL
XFILL_3__3974_ gnd vdd FILL
XFILL_3__3554_ gnd vdd FILL
XFILL_1__4833_ gnd vdd FILL
XFILL_1__4413_ gnd vdd FILL
XFILL_3__4759_ gnd vdd FILL
XFILL_3__4339_ gnd vdd FILL
X_3483_ _532_ _297_ _296_ vdd gnd NOR2X1
X_3063_ _1417__bF$buf4 vdd _1479_ clk_bF$buf4 \u_cpu.backwards\ vdd 
+ gnd
+ DFFSR
XFILL_2__2756_ gnd vdd FILL
XFILL_4__3623_ gnd vdd FILL
XFILL_4__3203_ gnd vdd FILL
X_4688_ _1740_ _1736_ _1741_ vdd gnd OR2X2
X_4268_ \u_cpu.op\[3] _1037__bF$buf3 _1019_ _1018_ _1017_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3943_ gnd vdd FILL
XFILL_0__3523_ gnd vdd FILL
XFILL_3__4092_ gnd vdd FILL
XFILL_2__4902_ gnd vdd FILL
XFILL_4__4828_ gnd vdd FILL
XFILL_4__4408_ gnd vdd FILL
XFILL_0__4728_ gnd vdd FILL
XFILL_3__2825_ gnd vdd FILL
XFILL_3__2405_ gnd vdd FILL
XFILL_0__4308_ gnd vdd FILL
XFILL_2__3294_ gnd vdd FILL
X_2754_ _2354__3_bF$buf5 _1944_ _1980_ _1981_ vdd gnd OAI21X1
XFILL_4__4581_ gnd vdd FILL
XFILL_4__4161_ gnd vdd FILL
XFILL_0__4481_ gnd vdd FILL
XFILL_2__4499_ gnd vdd FILL
XFILL_0__4061_ gnd vdd FILL
XFILL_2__4079_ gnd vdd FILL
X_3959_ \u_cpu.cond_code\[2] _735_ vdd gnd INVX1
X_3539_ _347_ _346_ vdd gnd INVX1
X_3119_ _1417__bF$buf5 vdd _1474_ clk_bF$buf8 \u_cpu.op\[2] vdd 
+ gnd
+ DFFSR
XFILL_1__2496_ gnd vdd FILL
X_4900_ _2163_ _2167_ _2176_ vdd gnd NOR2X1
XFILL_3__3783_ gnd vdd FILL
XFILL_3__3363_ gnd vdd FILL
XFILL_1__4642_ gnd vdd FILL
XFILL_1__4222_ gnd vdd FILL
XFILL_3__4568_ gnd vdd FILL
XFILL_3__4148_ gnd vdd FILL
X_3292_ _1041_ _924_ _153_ _1402_ vdd gnd OAI21X1
XFILL_2__2985_ gnd vdd FILL
XFILL_2__2565_ gnd vdd FILL
XFILL_4__3852_ gnd vdd FILL
XFILL_4__3432_ gnd vdd FILL
XFILL_4__3012_ gnd vdd FILL
X_4497_ _1271_ _1264_ _1226_ _1225_ vdd gnd NOR3X1
X_4077_ _848_ _845_ _844_ vdd gnd NAND2X1
XFILL_0__3752_ gnd vdd FILL
XFILL_0__3332_ gnd vdd FILL
XFILL_2__4711_ gnd vdd FILL
XFILL_4__4637_ gnd vdd FILL
XFILL_4__4217_ gnd vdd FILL
XFILL_0__4957_ gnd vdd FILL
XFILL_3__2634_ gnd vdd FILL
XFILL_0__4537_ gnd vdd FILL
XFILL_0__4117_ gnd vdd FILL
XFILL_1__3913_ gnd vdd FILL
XFILL_3__3839_ gnd vdd FILL
XFILL_3__3419_ gnd vdd FILL
X_2983_ kbd_data[3] _1500_ _1615_ vdd gnd NAND2X1
X_2563_ _2263_ _2019_ _2264_ vdd gnd NAND2X1
XFILL_4__4390_ gnd vdd FILL
XFILL_0__4290_ gnd vdd FILL
XFILL_4__2703_ gnd vdd FILL
X_3768_ _574_ _568_ _567_ vdd gnd NAND2X1
X_3348_ _1355_ _1250_ _1113_ _278_ \u_cpu.BI\[7] vdd 
+ gnd
+ OAI22X1
XFILL_0__2603_ gnd vdd FILL
XFILL_3__3592_ gnd vdd FILL
XFILL_3__3172_ gnd vdd FILL
XFILL_4__3908_ gnd vdd FILL
XFILL_0__3808_ gnd vdd FILL
XFILL_1__4451_ gnd vdd FILL
XFILL_1__4031_ gnd vdd FILL
XFILL_3__4797_ gnd vdd FILL
XFILL_3__4377_ gnd vdd FILL
XFILL_2__2794_ gnd vdd FILL
XFILL_2__2374_ gnd vdd FILL
XFILL_4__3661_ gnd vdd FILL
XFILL_4__3241_ gnd vdd FILL
XFILL_2__3999_ gnd vdd FILL
XFILL_0__3981_ gnd vdd FILL
XFILL_2__3579_ gnd vdd FILL
XFILL_0__3561_ gnd vdd FILL
XFILL_4_BUFX2_insert10 gnd vdd FILL
XFILL_4_BUFX2_insert11 gnd vdd FILL
XFILL_4_BUFX2_insert12 gnd vdd FILL
XFILL_4_BUFX2_insert13 gnd vdd FILL
XFILL_2__4940_ gnd vdd FILL
XFILL_2__4520_ gnd vdd FILL
XFILL_4_BUFX2_insert15 gnd vdd FILL
XFILL_4_BUFX2_insert16 gnd vdd FILL
XFILL_2__4100_ gnd vdd FILL
X_2619_ _1943_ _2113_ _1634__bF$buf1 _2114_ vdd gnd OAI21X1
XFILL_4_BUFX2_insert17 gnd vdd FILL
XFILL_4_BUFX2_insert18 gnd vdd FILL
XFILL_4__4866_ gnd vdd FILL
XFILL_4_BUFX2_insert19 gnd vdd FILL
XFILL_4__4446_ gnd vdd FILL
XFILL_4__4026_ gnd vdd FILL
XFILL_0__4766_ gnd vdd FILL
XFILL_3__2443_ gnd vdd FILL
XFILL_0__4346_ gnd vdd FILL
XBUFX2_insert70 _1920_ _1920__bF$buf3 vdd gnd BUFX2
XBUFX2_insert71 _1920_ _1920__bF$buf2 vdd gnd BUFX2
XBUFX2_insert72 _1920_ _1920__bF$buf1 vdd gnd BUFX2
XBUFX2_insert73 _1920_ _1920__bF$buf0 vdd gnd BUFX2
XBUFX2_insert74 _2354_[6] _2354__6_bF$buf4 vdd gnd BUFX2
XFILL_1__3722_ gnd vdd FILL
XBUFX2_insert75 _2354_[6] _2354__6_bF$buf3 vdd gnd BUFX2
XFILL_1__3302_ gnd vdd FILL
XBUFX2_insert76 _2354_[6] _2354__6_bF$buf2 vdd gnd BUFX2
XBUFX2_insert77 _2354_[6] _2354__6_bF$buf1 vdd gnd BUFX2
XBUFX2_insert78 _2354_[6] _2354__6_bF$buf0 vdd gnd BUFX2
XBUFX2_insert79 _2354_[3] _2354__3_bF$buf6 vdd gnd BUFX2
XFILL_3__3648_ gnd vdd FILL
XFILL_3__3228_ gnd vdd FILL
X_2792_ _2354__1_bF$buf2 _2354__2_bF$buf0 _1944_ vdd gnd NAND2X1
X_2372_ _2353_[7] DO[7] vdd gnd BUFX2
XFILL_1__4927_ gnd vdd FILL
XFILL_1__4507_ gnd vdd FILL
XFILL_4__2932_ gnd vdd FILL
XFILL_4__2512_ gnd vdd FILL
X_3997_ _771_ _770_ _773_ _769_ vdd gnd OAI21X1
X_3577_ _989_ _382_ _381_ vdd gnd NOR2X1
X_3157_ _1417__bF$buf0 vdd _1457_ clk_bF$buf10 \u_cpu.ABL\[7] vdd 
+ gnd
+ DFFSR
XFILL_0__2832_ gnd vdd FILL
XFILL_0__2412_ gnd vdd FILL
XFILL_4__3717_ gnd vdd FILL
XFILL_0__3617_ gnd vdd FILL
XFILL_1__4680_ gnd vdd FILL
XFILL_1__4260_ gnd vdd FILL
XFILL_3__4186_ gnd vdd FILL
XFILL_3__2919_ gnd vdd FILL
XFILL_4__3890_ gnd vdd FILL
XFILL_4__3470_ gnd vdd FILL
XFILL_0__3790_ gnd vdd FILL
XFILL_2__3388_ gnd vdd FILL
XFILL_0__3370_ gnd vdd FILL
X_2848_ _2354__1_bF$buf3 _2354__0_bF$buf2 _1647_ vdd gnd NOR2X1
X_2428_ _2301_ _46_ vdd gnd INVX1
XFILL_4__4675_ gnd vdd FILL
XFILL_4__4255_ gnd vdd FILL
XFILL_3__2672_ gnd vdd FILL
XFILL_0__4575_ gnd vdd FILL
XFILL_0__4155_ gnd vdd FILL
XFILL_1__3951_ gnd vdd FILL
XFILL_1__3531_ gnd vdd FILL
XFILL_3__3877_ gnd vdd FILL
XFILL_3__3457_ gnd vdd FILL
XFILL_1__4736_ gnd vdd FILL
XFILL_1__4316_ gnd vdd FILL
XFILL_4__2741_ gnd vdd FILL
X_3386_ _221_ _630_ _2352_ vdd gnd NAND2X1
XFILL_2__2659_ gnd vdd FILL
XFILL_0__2641_ gnd vdd FILL
XFILL_2__3600_ gnd vdd FILL
XFILL_4__3946_ gnd vdd FILL
XFILL_4__3526_ gnd vdd FILL
XFILL_0__3846_ gnd vdd FILL
XFILL_0__3426_ gnd vdd FILL
XFILL_0__3006_ gnd vdd FILL
XFILL_2__4805_ gnd vdd FILL
XFILL_1__2802_ gnd vdd FILL
XFILL_3__2728_ gnd vdd FILL
XFILL_2__3197_ gnd vdd FILL
X_2657_ _1634__bF$buf0 _1653_ _2077_ vdd gnd NOR2X1
XFILL_4__4484_ gnd vdd FILL
XFILL_4__4064_ gnd vdd FILL
XFILL_0__4384_ gnd vdd FILL
XFILL_3__2481_ gnd vdd FILL
XFILL_1_BUFX2_insert110 gnd vdd FILL
XFILL_1_BUFX2_insert111 gnd vdd FILL
XFILL_1_BUFX2_insert112 gnd vdd FILL
XFILL_1_BUFX2_insert113 gnd vdd FILL
XFILL_1_BUFX2_insert114 gnd vdd FILL
XFILL_1_BUFX2_insert115 gnd vdd FILL
XFILL_1_BUFX2_insert116 gnd vdd FILL
XFILL_1_BUFX2_insert117 gnd vdd FILL
XFILL_1_BUFX2_insert118 gnd vdd FILL
XFILL_1_BUFX2_insert119 gnd vdd FILL
XFILL_1__2399_ gnd vdd FILL
X_4803_ _1811_ _1807_ _1851_ vdd gnd NOR2X1
XFILL_1__3760_ gnd vdd FILL
XFILL_1__3340_ gnd vdd FILL
XFILL_3__3686_ gnd vdd FILL
XFILL_3__3266_ gnd vdd FILL
XFILL_1__4965_ gnd vdd FILL
XFILL_1__4545_ gnd vdd FILL
XFILL_1__4125_ gnd vdd FILL
XFILL_4__2970_ gnd vdd FILL
XFILL_4__2550_ gnd vdd FILL
X_3195_ _1227_ _93_ vdd gnd INVX1
XFILL_2__2888_ gnd vdd FILL
XFILL_2__2468_ gnd vdd FILL
XFILL_0__2450_ gnd vdd FILL
XFILL_4__3755_ gnd vdd FILL
XFILL_4__3335_ gnd vdd FILL
XFILL_0__3655_ gnd vdd FILL
XFILL_0__3235_ gnd vdd FILL
XFILL_2__4614_ gnd vdd FILL
XFILL_1__2611_ gnd vdd FILL
XFILL_3__2537_ gnd vdd FILL
XFILL_1__3816_ gnd vdd FILL
X_2886_ _1572_ _1573_ _1574_ vdd gnd NOR2X1
X_2466_ _8_ _7_ _2129_ _9_ vdd gnd OAI21X1
XFILL_4__4293_ gnd vdd FILL
XFILL_0__4193_ gnd vdd FILL
XFILL_4__2606_ gnd vdd FILL
XFILL_0__2926_ gnd vdd FILL
XFILL_0__2506_ gnd vdd FILL
X_4612_ _1341_ _1340_ vdd gnd INVX2
XFILL_3__3495_ gnd vdd FILL
XFILL_1__4774_ gnd vdd FILL
XFILL_1__4354_ gnd vdd FILL
XFILL_2__2697_ gnd vdd FILL
XFILL_4__3984_ gnd vdd FILL
XFILL_4__3564_ gnd vdd FILL
XFILL_0__3884_ gnd vdd FILL
XFILL_0__3464_ gnd vdd FILL
XFILL_2__4843_ gnd vdd FILL
XFILL_2__4423_ gnd vdd FILL
XFILL_2__4003_ gnd vdd FILL
XFILL_4__4769_ gnd vdd FILL
XFILL_4__4349_ gnd vdd FILL
XFILL_1__2840_ gnd vdd FILL
XFILL_1__2420_ gnd vdd FILL
XFILL_3__2766_ gnd vdd FILL
XFILL_0__4669_ gnd vdd FILL
XFILL_0__4249_ gnd vdd FILL
XFILL_1__3625_ gnd vdd FILL
XFILL_1__3205_ gnd vdd FILL
X_2695_ _2036_ _2039_ _2354__5_bF$buf1 _2040_ vdd gnd AOI21X1
XFILL_3__4912_ gnd vdd FILL
XFILL_4__2835_ gnd vdd FILL
XFILL_4__2415_ gnd vdd FILL
XFILL_0__2735_ gnd vdd FILL
X_4841_ RDY_bF$buf7 _1883_ _1884_ vdd gnd NAND2X1
X_4421_ _1160_ _1157_ vdd gnd INVX1
X_4001_ _1126_ _1111_ _996_ _773_ vdd gnd NAND3X1
XFILL_1__4583_ gnd vdd FILL
XFILL_1__4163_ gnd vdd FILL
XFILL_3__4089_ gnd vdd FILL
XFILL274050x75750 gnd vdd FILL
XFILL_4__3793_ gnd vdd FILL
XFILL_4__3373_ gnd vdd FILL
XFILL_0__3693_ gnd vdd FILL
XFILL_0__3273_ gnd vdd FILL
XFILL_2__4652_ gnd vdd FILL
XFILL_2__4232_ gnd vdd FILL
XFILL_4__4578_ gnd vdd FILL
XFILL_4__4158_ gnd vdd FILL
XFILL_3__2995_ gnd vdd FILL
XFILL_0__4898_ gnd vdd FILL
XFILL_3__2575_ gnd vdd FILL
XFILL_0__4478_ gnd vdd FILL
XFILL_0__4058_ gnd vdd FILL
XFILL_1__3854_ gnd vdd FILL
XFILL_1__3434_ gnd vdd FILL
XFILL_1__3014_ gnd vdd FILL
XFILL_3__4721_ gnd vdd FILL
XFILL_3__4301_ gnd vdd FILL
XFILL_1__4639_ gnd vdd FILL
XFILL_1__4219_ gnd vdd FILL
XFILL_4__2644_ gnd vdd FILL
XFILL273750x90150 gnd vdd FILL
X_3289_ _1108_ _179_ _152_ _1400_ vdd gnd OAI21X1
XFILL_0__2964_ gnd vdd FILL
XFILL_0__2544_ gnd vdd FILL
X_4650_ _1697_ _1702_ _1695_ _1703_ vdd gnd OAI21X1
X_4230_ _1019_ _1104_ _1037__bF$buf3 _982_ vdd gnd AOI21X1
XFILL_2__3923_ gnd vdd FILL
XFILL_2__3503_ gnd vdd FILL
XFILL_0_BUFX2_insert150 gnd vdd FILL
XFILL_0_BUFX2_insert151 gnd vdd FILL
XFILL_0_BUFX2_insert152 gnd vdd FILL
XFILL_0_BUFX2_insert153 gnd vdd FILL
XFILL_4__3849_ gnd vdd FILL
XFILL_0_BUFX2_insert154 gnd vdd FILL
XFILL_0_BUFX2_insert155 gnd vdd FILL
XFILL_4__3429_ gnd vdd FILL
XFILL_0_BUFX2_insert156 gnd vdd FILL
XFILL_4__3009_ gnd vdd FILL
XFILL_0_BUFX2_insert157 gnd vdd FILL
XFILL_0_BUFX2_insert158 gnd vdd FILL
XFILL_0_BUFX2_insert159 gnd vdd FILL
XFILL_0__3749_ gnd vdd FILL
XFILL_0__3329_ gnd vdd FILL
XFILL_1__4392_ gnd vdd FILL
XFILL_2__4708_ gnd vdd FILL
XFILL_1__2705_ gnd vdd FILL
XFILL_4__3182_ gnd vdd FILL
XFILL_2__4461_ gnd vdd FILL
XFILL_2__4041_ gnd vdd FILL
XFILL_4__4387_ gnd vdd FILL
X_3921_ _769_ _705_ _1129__bF$buf5 _704_ vdd gnd OAI21X1
X_3501_ _554_ _315_ _316_ _314_ vdd gnd OAI21X1
XFILL_0__4287_ gnd vdd FILL
XFILL_3__2384_ gnd vdd FILL
X_4706_ \u_cpu.BI\[0] _1745_ _1759_ vdd gnd NAND2X1
XFILL_1__3663_ gnd vdd FILL
XFILL_1__3243_ gnd vdd FILL
XFILL_3__3589_ gnd vdd FILL
XFILL_3__3169_ gnd vdd FILL
XFILL_3__4950_ gnd vdd FILL
XFILL_3__4530_ gnd vdd FILL
XFILL_3__4110_ gnd vdd FILL
XFILL_1__4868_ gnd vdd FILL
XFILL_1__4448_ gnd vdd FILL
XFILL_1__4028_ gnd vdd FILL
XFILL_4__2453_ gnd vdd FILL
X_3098_ _1417__bF$buf5 vdd _1385_ clk_bF$buf11 \u_cpu.cld\ vdd 
+ gnd
+ DFFSR
XFILL_0__2773_ gnd vdd FILL
XFILL_2__3732_ gnd vdd FILL
XFILL_2__3312_ gnd vdd FILL
XFILL_4__3658_ gnd vdd FILL
XFILL_4__3238_ gnd vdd FILL
XFILL_0__3978_ gnd vdd FILL
XFILL_0__3558_ gnd vdd FILL
XFILL_2__4937_ gnd vdd FILL
XFILL_2__4517_ gnd vdd FILL
XFILL_1__2934_ gnd vdd FILL
XFILL_1__2514_ gnd vdd FILL
XFILL_3__3801_ gnd vdd FILL
XFILL_1__3719_ gnd vdd FILL
XFILL_2__4690_ gnd vdd FILL
XFILL_2__4270_ gnd vdd FILL
X_2789_ _1946_ _1650_ _1920__bF$buf4 _1947_ vdd gnd AOI21X1
X_2369_ _2354__2_bF$buf0 AB[2] vdd gnd BUFX2
XFILL_4__4196_ gnd vdd FILL
X_3730_ _532_ _530_ _529_ vdd gnd NOR2X1
X_3310_ _1196__bF$buf1 _907_ _164_ _162_ _1411_ vdd 
+ gnd
+ AOI22X1
XFILL_0__4096_ gnd vdd FILL
XFILL_4__2929_ gnd vdd FILL
XFILL_4__2509_ gnd vdd FILL
XFILL_0__2829_ gnd vdd FILL
XFILL_0__2409_ gnd vdd FILL
X_4935_ _Addr_Bus[1] _2208_ _2173_ _2209_ vdd gnd NAND3X1
X_4515_ _1249_ _1244_ _1243_ vdd gnd NOR2X1
XFILL_1__3892_ gnd vdd FILL
XFILL_1__3472_ gnd vdd FILL
XFILL_3__3398_ gnd vdd FILL
XFILL_1__4677_ gnd vdd FILL
XFILL_1__4257_ gnd vdd FILL
XFILL_4__2682_ gnd vdd FILL
XFILL_0__2582_ gnd vdd FILL
XFILL_2__3961_ gnd vdd FILL
XFILL_2__3541_ gnd vdd FILL
XFILL_4__3887_ gnd vdd FILL
XFILL_4__3467_ gnd vdd FILL
XFILL_0__3787_ gnd vdd FILL
XFILL_0__3367_ gnd vdd FILL
XFILL_2__4746_ gnd vdd FILL
XFILL_2__4326_ gnd vdd FILL
XFILL_1__2743_ gnd vdd FILL
XFILL_3__2669_ gnd vdd FILL
XFILL_3__3610_ gnd vdd FILL
XFILL_1__3948_ gnd vdd FILL
XFILL_1__3528_ gnd vdd FILL
X_2598_ _1923__bF$buf2 _2134_ _2132_ _2135_ vdd gnd NAND3X1
XFILL_3__4815_ gnd vdd FILL
XFILL_2__2812_ gnd vdd FILL
XFILL_4__2738_ gnd vdd FILL
XFILL_0__2638_ gnd vdd FILL
X_4744_ _1741_ _1771_ _1796_ _1797_ vdd gnd NAND3X1
X_4324_ _1071_ _1241_ _1070__bF$buf0 _1069_ vdd gnd NAND3X1
XFILL_1__3281_ gnd vdd FILL
XFILL_1__4486_ gnd vdd FILL
XFILL_1__4066_ gnd vdd FILL
XFILL_4__2491_ gnd vdd FILL
XFILL_2__3770_ gnd vdd FILL
XFILL_2__3350_ gnd vdd FILL
XFILL_4__3696_ gnd vdd FILL
XFILL_4__3276_ gnd vdd FILL
X_2810_ _1647_ _1925_ _1924_ _1926_ vdd gnd OAI21X1
XFILL_0__3596_ gnd vdd FILL
XFILL_0__3176_ gnd vdd FILL
XFILL_2__4975_ gnd vdd FILL
XFILL_2__4555_ gnd vdd FILL
XFILL_2__4135_ gnd vdd FILL
XFILL_1__2972_ gnd vdd FILL
XFILL_1__2552_ gnd vdd FILL
XFILL_3__2898_ gnd vdd FILL
XFILL_3__2478_ gnd vdd FILL
XFILL_1__3757_ gnd vdd FILL
XFILL_1__3337_ gnd vdd FILL
XFILL_3__4624_ gnd vdd FILL
XFILL_3__4204_ gnd vdd FILL
XFILL_2__2621_ gnd vdd FILL
XFILL_4__2967_ gnd vdd FILL
XFILL_4__2547_ gnd vdd FILL
XFILL_0__2447_ gnd vdd FILL
X_4973_ DO_woz[7] _2242_ vdd gnd INVX1
X_4553_ \u_cpu.ABL\[5] _1281_ vdd gnd INVX1
X_4133_ _905_ _900_ _899_ vdd gnd NOR2X1
XFILL_2__3826_ gnd vdd FILL
XFILL_2__3406_ gnd vdd FILL
XFILL_1__4295_ gnd vdd FILL
XFILL_1__2608_ gnd vdd FILL
XFILL_2__4784_ gnd vdd FILL
XFILL_2__4364_ gnd vdd FILL
X_3824_ _1184_ _864_ _619_ _618_ vdd gnd OAI21X1
X_3404_ \u_cpu.DIMUX\[1] _867_ _780_ \u_cpu.ABL\[1] _235_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2781_ gnd vdd FILL
XFILL_1__2361_ gnd vdd FILL
X_4609_ \u_cpu.state\[2] _1338_ _1337_ vdd gnd NAND2X1
XFILL_1__3986_ gnd vdd FILL
XFILL_1__3566_ gnd vdd FILL
XFILL_3__4853_ gnd vdd FILL
XFILL_3__4433_ gnd vdd FILL
XFILL_3__4013_ gnd vdd FILL
XFILL_2__2850_ gnd vdd FILL
XFILL_2__2430_ gnd vdd FILL
XFILL_4__2776_ gnd vdd FILL
XFILL_4__2356_ gnd vdd FILL
XFILL_0__2676_ gnd vdd FILL
X_4782_ _1788_ _1834_ _1835_ vdd gnd NAND2X1
X_4362_ _1106_ _1105_ vdd gnd INVX2
XFILL_2__3635_ gnd vdd FILL
XFILL_2__3215_ gnd vdd FILL
XFILL_4__4922_ gnd vdd FILL
XFILL_4__4502_ gnd vdd FILL
XFILL_0__4822_ gnd vdd FILL
XFILL_0__4402_ gnd vdd FILL
XFILL_1__2837_ gnd vdd FILL
XFILL_1__2417_ gnd vdd FILL
XFILL_3__3704_ gnd vdd FILL
XFILL_2__4593_ gnd vdd FILL
XFILL_2__4173_ gnd vdd FILL
XFILL_4__4099_ gnd vdd FILL
XFILL_3__4909_ gnd vdd FILL
X_3633_ _1196__bF$buf3 _826_ _437_ _1129__bF$buf2 _436_ vdd 
+ gnd
+ AOI22X1
X_3213_ _723_ _1345__bF$buf3 _1241_ _105_ vdd gnd OAI21X1
XFILL_1__2590_ gnd vdd FILL
XFILL_2__2906_ gnd vdd FILL
X_4838_ _1880_ _1881_ vdd gnd INVX1
X_4418_ RDY_bF$buf7 _1169_ _1155_ _1486_ vdd gnd OAI21X1
XFILL_1__3795_ gnd vdd FILL
XFILL_1__3375_ gnd vdd FILL
XFILL_3__4662_ gnd vdd FILL
XFILL_3__4242_ gnd vdd FILL
XBUFX2_insert130 _1196_ _1196__bF$buf1 vdd gnd BUFX2
XBUFX2_insert131 _1196_ _1196__bF$buf0 vdd gnd BUFX2
XBUFX2_insert132 _1634_ _1634__bF$buf5 vdd gnd BUFX2
XBUFX2_insert133 _1634_ _1634__bF$buf4 vdd gnd BUFX2
XBUFX2_insert134 _1634_ _1634__bF$buf3 vdd gnd BUFX2
XBUFX2_insert135 _1634_ _1634__bF$buf2 vdd gnd BUFX2
XBUFX2_insert136 _1634_ _1634__bF$buf1 vdd gnd BUFX2
XBUFX2_insert137 _1634_ _1634__bF$buf0 vdd gnd BUFX2
XBUFX2_insert138 _1305_ _1305__bF$buf3 vdd gnd BUFX2
XFILL_4__2585_ gnd vdd FILL
XBUFX2_insert139 _1305_ _1305__bF$buf2 vdd gnd BUFX2
XFILL_0__2485_ gnd vdd FILL
X_4591_ _1350_ _1320_ _1323_ _1319_ vdd gnd OAI21X1
X_4171_ _977_ _932_ _931_ _1467_ vdd gnd OAI21X1
XFILL_2__3864_ gnd vdd FILL
XFILL_2__3444_ gnd vdd FILL
XFILL_2__3024_ gnd vdd FILL
X_2904_ _1559_ _1556_ _1554_ _1560_ vdd gnd NOR3X1
XFILL_4__4731_ gnd vdd FILL
XFILL_4__4311_ gnd vdd FILL
XFILL_2__4649_ gnd vdd FILL
XFILL_0__4631_ gnd vdd FILL
XFILL_2__4229_ gnd vdd FILL
XFILL_0__4211_ gnd vdd FILL
XFILL_1__2646_ gnd vdd FILL
XFILL_3__3933_ gnd vdd FILL
XFILL_3__3513_ gnd vdd FILL
XFILL_3__4718_ gnd vdd FILL
X_3862_ _872_ _657_ _654_ _2354_[4] vdd gnd OAI21X1
X_3442_ _782_ \u_cpu.PC\[13] _267_ _266_ vdd gnd AOI21X1
X_3022_ kbd_data[1] _1500_ _1505_ vdd gnd NAND2X1
XFILL_2__2715_ gnd vdd FILL
X_4647_ \u_cpu.alu_op\[3] _1699_ _1685_ _1700_ vdd gnd OAI21X1
X_4227_ _1009_ _1037__bF$buf1 _980_ _992_ _1474_ vdd 
+ gnd
+ AOI22X1
XFILL_1__3184_ gnd vdd FILL
XFILL_0__3902_ gnd vdd FILL
XFILL_3__4891_ gnd vdd FILL
XFILL_3__4471_ gnd vdd FILL
XFILL_3__4051_ gnd vdd FILL
XFILL_1__4389_ gnd vdd FILL
XFILL_4__2394_ gnd vdd FILL
XFILL_2__3673_ gnd vdd FILL
XFILL_2__3253_ gnd vdd FILL
XFILL_4__3599_ gnd vdd FILL
XFILL_4__3179_ gnd vdd FILL
X_2713_ _2019_ _2018_ _2021_ _2022_ vdd gnd NAND3X1
XFILL_4__4960_ gnd vdd FILL
XFILL_4__4540_ gnd vdd FILL
XFILL_4__4120_ gnd vdd FILL
XFILL_0__3499_ gnd vdd FILL
XFILL_0__4860_ gnd vdd FILL
XFILL_2__4458_ gnd vdd FILL
XFILL_0__4440_ gnd vdd FILL
XFILL_0__4020_ gnd vdd FILL
XFILL_2__4038_ gnd vdd FILL
X_3918_ _1129__bF$buf3 _1099_ _1034_ _702_ vdd gnd NAND3X1
XFILL_1__2875_ gnd vdd FILL
XFILL_1__2455_ gnd vdd FILL
XFILL_3__3742_ gnd vdd FILL
XFILL_3__3322_ gnd vdd FILL
XFILL_1__4601_ gnd vdd FILL
XFILL_3__4947_ gnd vdd FILL
XFILL_3__4527_ gnd vdd FILL
XFILL_3__4107_ gnd vdd FILL
X_3671_ _475_ _474_ vdd gnd INVX1
X_3251_ \u_cpu.clv\ _132_ _131_ vdd gnd NOR2X1
XFILL_2__2944_ gnd vdd FILL
XFILL_2__2524_ gnd vdd FILL
XFILL_4__3811_ gnd vdd FILL
X_4876_ _1675_ vdd _1677_ clk_bF$buf0 \u_cpu.AN\ vdd 
+ gnd
+ DFFSR
X_4456_ \u_cpu.PC\[9] _1269_ _1189_ _1188_ vdd gnd AOI21X1
X_4036_ _806_ _804_ _809_ _803_ vdd gnd NAND3X1
XFILL_2__3729_ gnd vdd FILL
XFILL_0__3711_ gnd vdd FILL
XFILL_2__3309_ gnd vdd FILL
XFILL_3__4280_ gnd vdd FILL
XFILL_1__4198_ gnd vdd FILL
XFILL_0__4916_ gnd vdd FILL
XFILL_2__3482_ gnd vdd FILL
XFILL_0_BUFX2_insert39 gnd vdd FILL
X_2942_ _2354__2_bF$buf2 _2354__3_bF$buf3 _1529_ vdd gnd NOR2X1
X_2522_ _1973_ _2304_ _2274_ _2285_ _2346_[2] vdd 
+ gnd
+ OAI22X1
XFILL_2__4687_ gnd vdd FILL
XFILL_2__4267_ gnd vdd FILL
X_3727_ _1325__bF$buf3 _870_ _1196__bF$buf4 _526_ vdd gnd OAI21X1
X_3307_ _1012_ _1111_ _985_ _984_ _160_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2684_ gnd vdd FILL
XFILL_3__3971_ gnd vdd FILL
XFILL_3__3551_ gnd vdd FILL
XFILL_1__3889_ gnd vdd FILL
XFILL_1__3469_ gnd vdd FILL
XFILL_1__4830_ gnd vdd FILL
XFILL_1__4410_ gnd vdd FILL
XFILL_3__4756_ gnd vdd FILL
XFILL_3__4336_ gnd vdd FILL
X_3480_ _525_ _436_ _468_ _293_ vdd gnd NAND3X1
X_3060_ _1417__bF$buf6 vdd _1466_ clk_bF$buf2 \u_cpu.AXYS[0]\[6] vdd 
+ gnd
+ DFFSR
XFILL_2__2753_ gnd vdd FILL
XFILL_4__2679_ gnd vdd FILL
XFILL_4__3620_ gnd vdd FILL
XFILL_4__3200_ gnd vdd FILL
XFILL_0__2999_ gnd vdd FILL
XFILL_0__2579_ gnd vdd FILL
X_4685_ _1729_ _1698_ _1737_ _1738_ vdd gnd OAI21X1
X_4265_ _1111_ _1023_ _1015_ vdd gnd NOR2X1
XFILL_0__3940_ gnd vdd FILL
XFILL_2__3958_ gnd vdd FILL
XFILL_0__3520_ gnd vdd FILL
XFILL_2__3538_ gnd vdd FILL
XFILL_4__4825_ gnd vdd FILL
XFILL_4__4405_ gnd vdd FILL
XFILL_3__2822_ gnd vdd FILL
XFILL_0__4725_ gnd vdd FILL
XFILL_3__2402_ gnd vdd FILL
XFILL_0__4305_ gnd vdd FILL
XFILL_2__3291_ gnd vdd FILL
XFILL_3__3607_ gnd vdd FILL
X_2751_ _2354__2_bF$buf0 _1638__bF$buf1 _1984_ vdd gnd NOR2X1
XFILL_2__4496_ gnd vdd FILL
XFILL_2__4076_ gnd vdd FILL
X_3956_ _993_ _733_ vdd gnd INVX1
X_3536_ _359_ \u_cpu.ADD\[2] _344_ _343_ vdd gnd AOI21X1
X_3116_ _1417__bF$buf1 vdd _1482_ clk_bF$buf5 \u_cpu.PC\[14] vdd 
+ gnd
+ DFFSR
XFILL_1__2493_ gnd vdd FILL
XFILL_2__2809_ gnd vdd FILL
XFILL_3__3780_ gnd vdd FILL
XFILL_3__3360_ gnd vdd FILL
XFILL_1__3698_ gnd vdd FILL
XFILL_1__3278_ gnd vdd FILL
XFILL_3__4985_ gnd vdd FILL
XFILL_3__4565_ gnd vdd FILL
XFILL_3__4145_ gnd vdd FILL
XFILL_2__2982_ gnd vdd FILL
XFILL_2__2562_ gnd vdd FILL
XFILL_4__2488_ gnd vdd FILL
XFILL273750x108150 gnd vdd FILL
XFILL_0__2388_ gnd vdd FILL
X_4494_ _1264_ _1222_ vdd gnd INVX1
X_4074_ _842_ _844_ _841_ vdd gnd NOR2X1
XFILL_2__3767_ gnd vdd FILL
XFILL_2__3347_ gnd vdd FILL
X_2807_ _2354__3_bF$buf2 _1634__bF$buf5 _1929_ vdd gnd NOR2X1
XFILL_4__4634_ gnd vdd FILL
XFILL_4__4214_ gnd vdd FILL
XFILL_0__4954_ gnd vdd FILL
XFILL_3__2631_ gnd vdd FILL
XFILL_0__4534_ gnd vdd FILL
XFILL_0__4114_ gnd vdd FILL
XFILL_1__2969_ gnd vdd FILL
XFILL_1__2549_ gnd vdd FILL
XFILL_1__3910_ gnd vdd FILL
XFILL_3__3836_ gnd vdd FILL
XFILL_3__3416_ gnd vdd FILL
X_2980_ \u_pia_kbd.state\[2] \u_pia_kbd.state\[0] _1617_ vdd gnd NOR2X1
X_2560_ _2354__3_bF$buf2 _1635__bF$buf0 _1641_ _2267_ vdd gnd NAND3X1
XFILL_4__2700_ gnd vdd FILL
X_3765_ _1129__bF$buf2 _565_ _564_ vdd gnd NAND2X1
X_3345_ _186_ _502_ \u_cpu.alu_shift_right\ vdd gnd NOR2X1
XFILL_2__2618_ gnd vdd FILL
XFILL_0__2600_ gnd vdd FILL
XFILL_4__3905_ gnd vdd FILL
XFILL_0__3805_ gnd vdd FILL
XFILL_3__4794_ gnd vdd FILL
XFILL_3__4374_ gnd vdd FILL
XFILL_2__2791_ gnd vdd FILL
XFILL_2__2371_ gnd vdd FILL
XFILL_2__3996_ gnd vdd FILL
XFILL_2__3576_ gnd vdd FILL
X_2616_ _2116_ _1934_ _1923__bF$buf1 _2117_ vdd gnd OAI21X1
XFILL_4__4863_ gnd vdd FILL
XFILL_4__4443_ gnd vdd FILL
XFILL_4__4023_ gnd vdd FILL
XFILL_0__4763_ gnd vdd FILL
XFILL_3__2860_ gnd vdd FILL
XFILL_3__2440_ gnd vdd FILL
XFILL_0__4343_ gnd vdd FILL
XFILL_1__2778_ gnd vdd FILL
XFILL_1__2358_ gnd vdd FILL
XBUFX2_insert40 _2354_[4] _2354__4_bF$buf5 vdd gnd BUFX2
XBUFX2_insert41 _2354_[4] _2354__4_bF$buf4 vdd gnd BUFX2
XBUFX2_insert42 _2354_[4] _2354__4_bF$buf3 vdd gnd BUFX2
XBUFX2_insert43 _2354_[4] _2354__4_bF$buf2 vdd gnd BUFX2
XBUFX2_insert44 _2354_[4] _2354__4_bF$buf1 vdd gnd BUFX2
XBUFX2_insert45 _2354_[4] _2354__4_bF$buf0 vdd gnd BUFX2
XBUFX2_insert46 _2354_[1] _2354__1_bF$buf5 vdd gnd BUFX2
XBUFX2_insert47 _2354_[1] _2354__1_bF$buf4 vdd gnd BUFX2
XBUFX2_insert48 _2354_[1] _2354__1_bF$buf3 vdd gnd BUFX2
XBUFX2_insert49 _2354_[1] _2354__1_bF$buf2 vdd gnd BUFX2
XFILL_3__3645_ gnd vdd FILL
XFILL_3__3225_ gnd vdd FILL
XFILL_1__4924_ gnd vdd FILL
XFILL_1__4504_ gnd vdd FILL
X_3994_ _1126_ _767_ _766_ vdd gnd NAND2X1
X_3574_ _538_ _466_ _464_ _378_ vdd gnd OAI21X1
X_3154_ _1417__bF$buf5 vdd _1413_ clk_bF$buf8 \u_cpu.shift_right\ vdd 
+ gnd
+ DFFSR
XFILL_2__2847_ gnd vdd FILL
XFILL_2__2427_ gnd vdd FILL
XFILL_4__3714_ gnd vdd FILL
X_4779_ _1830_ _1831_ _1832_ vdd gnd NAND2X1
X_4359_ _1125_ _1192_ _1103_ _1102_ vdd gnd AOI21X1
XFILL_0__3614_ gnd vdd FILL
XFILL272850x97350 gnd vdd FILL
XFILL_3__4183_ gnd vdd FILL
XFILL_4__4919_ gnd vdd FILL
XFILL_0__4819_ gnd vdd FILL
XFILL_3__2916_ gnd vdd FILL
XFILL_2__3385_ gnd vdd FILL
X_2845_ _1643__bF$buf3 _1649_ _1648_ _1650_ vdd gnd NAND3X1
X_2425_ _1648_ _1649_ _49_ vdd gnd AND2X2
XFILL_4__4672_ gnd vdd FILL
XFILL_4__4252_ gnd vdd FILL
XFILL_0__4572_ gnd vdd FILL
XFILL_0__4152_ gnd vdd FILL
XFILL_1__2587_ gnd vdd FILL
XFILL_3__3874_ gnd vdd FILL
XFILL_3__3454_ gnd vdd FILL
XFILL271650x79350 gnd vdd FILL
XFILL_1__4733_ gnd vdd FILL
XFILL_1__4313_ gnd vdd FILL
XFILL_3__4659_ gnd vdd FILL
XFILL_3__4239_ gnd vdd FILL
X_3383_ _701_ _675_ _219_ _218_ vdd gnd OAI21X1
XFILL_2__2656_ gnd vdd FILL
XFILL_4__3943_ gnd vdd FILL
XFILL_4__3523_ gnd vdd FILL
X_4588_ \u_cpu.state\[0] _1317_ _1316_ vdd gnd NOR2X1
X_4168_ _929_ _930_ _928_ vdd gnd NAND2X1
XFILL_0__3843_ gnd vdd FILL
XFILL_0__3423_ gnd vdd FILL
XFILL_0__3003_ gnd vdd FILL
XFILL_2__4802_ gnd vdd FILL
XFILL_4__4728_ gnd vdd FILL
XFILL_4__4308_ gnd vdd FILL
XFILL_0__4628_ gnd vdd FILL
XFILL_3__2725_ gnd vdd FILL
XFILL_0__4208_ gnd vdd FILL
XFILL_2__3194_ gnd vdd FILL
X_2654_ _2071_ _2079_ _2057_ _2064_ _2080_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4481_ gnd vdd FILL
XFILL_4__4061_ gnd vdd FILL
XFILL_3_CLKBUF1_insert26 gnd vdd FILL
XFILL_3_CLKBUF1_insert27 gnd vdd FILL
XFILL_3_CLKBUF1_insert28 gnd vdd FILL
XFILL_3_CLKBUF1_insert29 gnd vdd FILL
XFILL_0__4381_ gnd vdd FILL
XFILL_2__4399_ gnd vdd FILL
X_3859_ _653_ _652_ _651_ vdd gnd NAND2X1
X_3439_ _1286_ _875_ \u_cpu.ABH\[6] _264_ vdd gnd OAI21X1
X_3019_ kbd_data[2] _1500_ _1511_ vdd gnd NAND2X1
XFILL_1__2396_ gnd vdd FILL
X_4800_ \u_cpu.ADD\[3] _1681__bF$buf1 _1849_ vdd gnd NAND2X1
XFILL_3__3683_ gnd vdd FILL
XFILL_3__3263_ gnd vdd FILL
XFILL_1__4962_ gnd vdd FILL
XFILL_1__4542_ gnd vdd FILL
XFILL_1__4122_ gnd vdd FILL
XFILL_3__4888_ gnd vdd FILL
XFILL_3__4468_ gnd vdd FILL
XFILL_3__4048_ gnd vdd FILL
X_3192_ _1196__bF$buf7 _91_ _94_ _1364_ vdd gnd OAI21X1
XFILL_2__2885_ gnd vdd FILL
XFILL_2__2465_ gnd vdd FILL
XFILL_4__3752_ gnd vdd FILL
XFILL_4__3332_ gnd vdd FILL
X_4397_ _1287_ _1349_ _1315__bF$buf2 _1137_ vdd gnd OAI21X1
XFILL_0__3652_ gnd vdd FILL
XFILL_0__3232_ gnd vdd FILL
XFILL_2__4611_ gnd vdd FILL
XFILL_4__4957_ gnd vdd FILL
XFILL_4__4537_ gnd vdd FILL
XFILL_4__4117_ gnd vdd FILL
XFILL_0__4857_ gnd vdd FILL
XFILL_3__2534_ gnd vdd FILL
XFILL_0__4437_ gnd vdd FILL
XFILL_0__4017_ gnd vdd FILL
XFILL_1__3813_ gnd vdd FILL
XFILL_3__3739_ gnd vdd FILL
XFILL_3__3319_ gnd vdd FILL
X_2883_ _1561_ _1576_ _1575_ \u_pia_dsp.state\[0] _1577_ vdd 
+ gnd
+ AOI22X1
X_2463_ _2086_ _2112_ _2000_ _12_ vdd gnd OAI21X1
XFILL_4__4290_ gnd vdd FILL
XFILL_0__4190_ gnd vdd FILL
XFILL_4__2603_ gnd vdd FILL
X_3668_ _1196__bF$buf7 _1246_ _471_ vdd gnd NOR2X1
X_3248_ \u_cpu.V\ _129_ _128_ vdd gnd NAND2X1
XFILL_0__2923_ gnd vdd FILL
XFILL_0__2503_ gnd vdd FILL
XFILL_3__3492_ gnd vdd FILL
XFILL_4__3808_ gnd vdd FILL
XFILL_0__3708_ gnd vdd FILL
XFILL_1__4771_ gnd vdd FILL
XFILL_1__4351_ gnd vdd FILL
XFILL_3__4697_ gnd vdd FILL
XFILL_3__4277_ gnd vdd FILL
XFILL_2__2694_ gnd vdd FILL
XFILL_4__3981_ gnd vdd FILL
XFILL_4__3561_ gnd vdd FILL
XFILL_2__3899_ gnd vdd FILL
XFILL_0__3881_ gnd vdd FILL
XFILL_0__3461_ gnd vdd FILL
XFILL_2__3479_ gnd vdd FILL
XFILL_2__4840_ gnd vdd FILL
XFILL_2__4420_ gnd vdd FILL
XFILL_2__4000_ gnd vdd FILL
X_2939_ _2354__6_bF$buf4 _2354__7_bF$buf2 _1532_ vdd gnd NOR2X1
X_2519_ _1649_ _1924_ _1659_ _2307_ vdd gnd NAND3X1
XFILL_4__4766_ gnd vdd FILL
XFILL_4__4346_ gnd vdd FILL
XFILL_3__2763_ gnd vdd FILL
XFILL_0__4666_ gnd vdd FILL
XFILL_0__4246_ gnd vdd FILL
XFILL_1__3622_ gnd vdd FILL
XFILL_1__3202_ gnd vdd FILL
XFILL_3__3968_ gnd vdd FILL
XFILL_3__3548_ gnd vdd FILL
X_2692_ _2354__2_bF$buf2 _1638__bF$buf3 _2354__3_bF$buf4 _2043_ vdd gnd OAI21X1
XFILL_1__4827_ gnd vdd FILL
XFILL_1__4407_ gnd vdd FILL
XFILL_4__2832_ gnd vdd FILL
XFILL_4__2412_ gnd vdd FILL
X_3897_ _687_ _733_ _686_ _685_ vdd gnd OAI21X1
X_3477_ _397_ _294_ _291_ _1429_ vdd gnd NAND3X1
X_3057_ _1417__bF$buf3 vdd _1368_ clk_bF$buf7 \u_cpu.AXYS[1]\[1] vdd 
+ gnd
+ DFFSR
XFILL_0__2732_ gnd vdd FILL
XFILL_4__3617_ gnd vdd FILL
XFILL_0__3937_ gnd vdd FILL
XFILL_0__3517_ gnd vdd FILL
XFILL_1__4580_ gnd vdd FILL
XFILL_1__4160_ gnd vdd FILL
XFILL_3__4086_ gnd vdd FILL
XFILL_3__2819_ gnd vdd FILL
XFILL_4__3790_ gnd vdd FILL
XFILL_4__3370_ gnd vdd FILL
XFILL_0__3690_ gnd vdd FILL
XFILL_2__3288_ gnd vdd FILL
XFILL_0__3270_ gnd vdd FILL
X_2748_ _1643__bF$buf2 _2354__1_bF$buf4 _1935_ _1987_ vdd gnd NAND3X1
XFILL_4__4155_ gnd vdd FILL
XFILL_0__4895_ gnd vdd FILL
XFILL_3__2992_ gnd vdd FILL
XFILL_3__2572_ gnd vdd FILL
XFILL_0__4475_ gnd vdd FILL
XFILL_0__4055_ gnd vdd FILL
XFILL_1__3851_ gnd vdd FILL
XFILL_1__3431_ gnd vdd FILL
XFILL_1__3011_ gnd vdd FILL
XFILL_3__3777_ gnd vdd FILL
XFILL_3__3357_ gnd vdd FILL
XFILL_1__4636_ gnd vdd FILL
XFILL_1__4216_ gnd vdd FILL
XFILL_4__2641_ gnd vdd FILL
X_3286_ _1037__bF$buf0 _151_ _150_ _1399_ vdd gnd OAI21X1
XFILL_2__2979_ gnd vdd FILL
XFILL_2__2559_ gnd vdd FILL
XFILL_0__2541_ gnd vdd FILL
XFILL_2__3920_ gnd vdd FILL
XFILL_2__3500_ gnd vdd FILL
XFILL_0_BUFX2_insert120 gnd vdd FILL
XFILL_0_BUFX2_insert121 gnd vdd FILL
XFILL_0_BUFX2_insert122 gnd vdd FILL
XFILL_0_BUFX2_insert123 gnd vdd FILL
XFILL_4__3846_ gnd vdd FILL
XFILL_0_BUFX2_insert124 gnd vdd FILL
XFILL_4__3426_ gnd vdd FILL
XFILL_0_BUFX2_insert125 gnd vdd FILL
XFILL_4__3006_ gnd vdd FILL
XFILL_0_BUFX2_insert126 gnd vdd FILL
XFILL_0_BUFX2_insert127 gnd vdd FILL
XFILL_0_BUFX2_insert128 gnd vdd FILL
XFILL_0_BUFX2_insert129 gnd vdd FILL
XFILL_0__3746_ gnd vdd FILL
XFILL_0__3326_ gnd vdd FILL
XFILL_2__4705_ gnd vdd FILL
XFILL_1__2702_ gnd vdd FILL
XFILL_3__2628_ gnd vdd FILL
XFILL_1__3907_ gnd vdd FILL
X_2977_ _1613_ _1618_ _1612_ _1620_ vdd gnd NAND3X1
X_2557_ _1636__bF$buf1 _2001_ _1980_ _2270_ vdd gnd OAI21X1
XFILL_4__4384_ gnd vdd FILL
XFILL_0__4284_ gnd vdd FILL
XFILL_3__2381_ gnd vdd FILL
X_4703_ \u_cpu.CI\ _1684_ _1755_ _1756_ vdd gnd NAND3X1
XFILL_1__3660_ gnd vdd FILL
XFILL_1__3240_ gnd vdd FILL
XFILL_3__3586_ gnd vdd FILL
XFILL_3__3166_ gnd vdd FILL
XFILL_1__4865_ gnd vdd FILL
XFILL_1__4445_ gnd vdd FILL
XFILL_1__4025_ gnd vdd FILL
XFILL_4__2450_ gnd vdd FILL
X_3095_ _1417__bF$buf4 vdd _1442_ clk_bF$buf9 \u_cpu.Z\ vdd 
+ gnd
+ DFFSR
XFILL_0__2770_ gnd vdd FILL
XFILL_2__2788_ gnd vdd FILL
XFILL_2__2368_ gnd vdd FILL
XFILL_4__3655_ gnd vdd FILL
XFILL_4__3235_ gnd vdd FILL
XFILL_0__3975_ gnd vdd FILL
XFILL_0__3555_ gnd vdd FILL
XFILL_2__4934_ gnd vdd FILL
XFILL_2__4514_ gnd vdd FILL
XFILL_1__2931_ gnd vdd FILL
XFILL_1__2511_ gnd vdd FILL
XFILL_3__2857_ gnd vdd FILL
XFILL_3__2437_ gnd vdd FILL
XFILL_1__3716_ gnd vdd FILL
X_2786_ _1936_ _1949_ _1638__bF$buf2 _1950_ vdd gnd AOI21X1
X_2366_ _2354__5_bF$buf4 AB[5] vdd gnd BUFX2
XFILL_4__4193_ gnd vdd FILL
XFILL_0__4093_ gnd vdd FILL
XFILL_4__2926_ gnd vdd FILL
XFILL_4__2506_ gnd vdd FILL
XFILL_0__2826_ gnd vdd FILL
XFILL_0__2406_ gnd vdd FILL
X_4932_ _2200_ _2195_ _2205_ _2206_ Data_In[5] vdd 
+ gnd
+ AOI22X1
X_4512_ _1350_ _1320_ _1241_ _1240_ vdd gnd OAI21X1
XFILL_3__3395_ gnd vdd FILL
XFILL_1__4674_ gnd vdd FILL
XFILL_1__4254_ gnd vdd FILL
XFILL_2__2597_ gnd vdd FILL
XFILL_4__3464_ gnd vdd FILL
XFILL_0__3784_ gnd vdd FILL
XFILL_0__3364_ gnd vdd FILL
XFILL_2_CLKBUF1_insert30 gnd vdd FILL
XFILL_2_CLKBUF1_insert31 gnd vdd FILL
XFILL_2_CLKBUF1_insert32 gnd vdd FILL
XFILL_2_CLKBUF1_insert33 gnd vdd FILL
XFILL_2_CLKBUF1_insert34 gnd vdd FILL
XFILL_2_CLKBUF1_insert35 gnd vdd FILL
XFILL_2__4743_ gnd vdd FILL
XFILL_2_CLKBUF1_insert36 gnd vdd FILL
XFILL_2__4323_ gnd vdd FILL
XFILL_2_CLKBUF1_insert37 gnd vdd FILL
XFILL_2_CLKBUF1_insert38 gnd vdd FILL
XFILL_4__4669_ gnd vdd FILL
XFILL_4__4249_ gnd vdd FILL
XFILL_1__2740_ gnd vdd FILL
XFILL_3__2666_ gnd vdd FILL
XFILL_0__4569_ gnd vdd FILL
XFILL_0__4149_ gnd vdd FILL
XFILL_1__3945_ gnd vdd FILL
XFILL_1__3525_ gnd vdd FILL
X_2595_ _1634__bF$buf0 _1663_ _2138_ vdd gnd NOR2X1
XFILL_3__4812_ gnd vdd FILL
XFILL_4__2735_ gnd vdd FILL
XFILL_0__2635_ gnd vdd FILL
X_4741_ _1756_ _1793_ _1792_ _1794_ vdd gnd OAI21X1
X_4321_ _1086_ _1067_ _1066_ vdd gnd NOR2X1
XFILL_1__4483_ gnd vdd FILL
XFILL_1__4063_ gnd vdd FILL
XFILL_4__3693_ gnd vdd FILL
XFILL_4__3273_ gnd vdd FILL
XFILL_0__3593_ gnd vdd FILL
XFILL_0__3173_ gnd vdd FILL
XFILL_2__4972_ gnd vdd FILL
XFILL_2__4552_ gnd vdd FILL
XFILL_2__4132_ gnd vdd FILL
XFILL_4__4898_ gnd vdd FILL
XFILL_4__4478_ gnd vdd FILL
XFILL_4__4058_ gnd vdd FILL
XFILL_0__4798_ gnd vdd FILL
XFILL_3__2895_ gnd vdd FILL
XFILL_3__2475_ gnd vdd FILL
XFILL_0__4378_ gnd vdd FILL
XFILL_1__3754_ gnd vdd FILL
XFILL_1__3334_ gnd vdd FILL
XFILL_3__4621_ gnd vdd FILL
XFILL_3__4201_ gnd vdd FILL
XFILL_1__4959_ gnd vdd FILL
XFILL_1__4539_ gnd vdd FILL
XFILL_1__4119_ gnd vdd FILL
XFILL_4__2964_ gnd vdd FILL
XFILL_4__2544_ gnd vdd FILL
X_3189_ _90_ _113_ _89_ _1363_ vdd gnd OAI21X1
XFILL_0__2444_ gnd vdd FILL
X_4970_ _2237_ _2239_ _2182_ _2240_ vdd gnd NAND3X1
X_4550_ _1287_ _1282_ _1279_ _1278_ vdd gnd OAI21X1
X_4130_ _1325__bF$buf4 _903_ _897_ _896_ vdd gnd OAI21X1
XFILL_2__3823_ gnd vdd FILL
XFILL_2__3403_ gnd vdd FILL
XFILL_4__3749_ gnd vdd FILL
XFILL_4__3329_ gnd vdd FILL
XFILL_0__3649_ gnd vdd FILL
XFILL_0__3229_ gnd vdd FILL
XFILL_1__4292_ gnd vdd FILL
XFILL_2__4608_ gnd vdd FILL
XFILL_1__2605_ gnd vdd FILL
XFILL_2__4781_ gnd vdd FILL
XFILL_2__4361_ gnd vdd FILL
XFILL_4__4287_ gnd vdd FILL
X_3821_ _873_ _616_ vdd gnd INVX1
X_3401_ _872_ _326_ _233_ _2354_[1] vdd gnd OAI21X1
XFILL_0__4187_ gnd vdd FILL
X_4606_ _1337_ _1335_ _1334_ vdd gnd NOR2X1
XFILL_1__3983_ gnd vdd FILL
XFILL_1__3563_ gnd vdd FILL
XFILL_3__3489_ gnd vdd FILL
XFILL_3__4850_ gnd vdd FILL
XFILL_3__4430_ gnd vdd FILL
XFILL_3__4010_ gnd vdd FILL
XFILL274050x61350 gnd vdd FILL
XFILL_1__4768_ gnd vdd FILL
XFILL_1__4348_ gnd vdd FILL
XFILL_4__2773_ gnd vdd FILL
XFILL_0__2673_ gnd vdd FILL
XFILL274050x28950 gnd vdd FILL
XFILL_2__3632_ gnd vdd FILL
XFILL_2__3212_ gnd vdd FILL
XFILL_4__3978_ gnd vdd FILL
XFILL_4__3558_ gnd vdd FILL
XFILL_0__3878_ gnd vdd FILL
XFILL_0__3458_ gnd vdd FILL
XFILL_2__4837_ gnd vdd FILL
XFILL_2__4417_ gnd vdd FILL
XFILL_1__2834_ gnd vdd FILL
XFILL_1__2414_ gnd vdd FILL
XFILL_3__3701_ gnd vdd FILL
XFILL_1__3619_ gnd vdd FILL
XFILL_2__4590_ gnd vdd FILL
XFILL_2__4170_ gnd vdd FILL
X_2689_ _2045_ _2041_ _2354__6_bF$buf4 _2046_ vdd gnd OAI21X1
XFILL_4__4096_ gnd vdd FILL
XFILL_3__4906_ gnd vdd FILL
X_3630_ _480_ _434_ _433_ vdd gnd AND2X2
X_3210_ _1179_ _897_ _1241_ _102_ vdd gnd OAI21X1
XFILL_2__2903_ gnd vdd FILL
XFILL_4__2829_ gnd vdd FILL
XFILL_4__2409_ gnd vdd FILL
XFILL_0__2729_ gnd vdd FILL
X_4835_ \u_cpu.alu_op\[3] _1699_ _1871_ _1878_ vdd gnd OAI21X1
X_4415_ \u_cpu.DIHOLD\[4] _1152_ vdd gnd INVX1
XFILL_1__3792_ gnd vdd FILL
XFILL_1__3372_ gnd vdd FILL
XFILL_3__3298_ gnd vdd FILL
XBUFX2_insert100 _1417_ _1417__bF$buf2 vdd gnd BUFX2
XBUFX2_insert101 _1417_ _1417__bF$buf1 vdd gnd BUFX2
XBUFX2_insert102 _1417_ _1417__bF$buf0 vdd gnd BUFX2
XBUFX2_insert103 _1129_ _1129__bF$buf5 vdd gnd BUFX2
XBUFX2_insert104 _1129_ _1129__bF$buf4 vdd gnd BUFX2
XFILL_1__4577_ gnd vdd FILL
XBUFX2_insert105 _1129_ _1129__bF$buf3 vdd gnd BUFX2
XFILL_1__4157_ gnd vdd FILL
XBUFX2_insert106 _1129_ _1129__bF$buf2 vdd gnd BUFX2
XBUFX2_insert107 _1129_ _1129__bF$buf1 vdd gnd BUFX2
XBUFX2_insert108 _1129_ _1129__bF$buf0 vdd gnd BUFX2
XFILL_4__2582_ gnd vdd FILL
XBUFX2_insert109 _1643_ _1643__bF$buf5 vdd gnd BUFX2
XFILL_0__2482_ gnd vdd FILL
XFILL_2__3861_ gnd vdd FILL
XFILL_2__3441_ gnd vdd FILL
XFILL_2__3021_ gnd vdd FILL
XFILL_4__3787_ gnd vdd FILL
XFILL_4__3367_ gnd vdd FILL
X_2901_ reset _1514_ vdd gnd INVX4
XFILL_0__3687_ gnd vdd FILL
XFILL_0__3267_ gnd vdd FILL
XFILL_2__4646_ gnd vdd FILL
XFILL_2__4226_ gnd vdd FILL
XFILL_1__2643_ gnd vdd FILL
XFILL_3__2989_ gnd vdd FILL
XFILL_3__2569_ gnd vdd FILL
XFILL_3__3930_ gnd vdd FILL
XFILL_3__3510_ gnd vdd FILL
XFILL_1__3848_ gnd vdd FILL
XFILL_1__3428_ gnd vdd FILL
XFILL_1__3008_ gnd vdd FILL
X_2498_ _2327_ _2323_ _1923__bF$buf1 _2328_ vdd gnd AOI21X1
XFILL_3__4715_ gnd vdd FILL
XFILL_2__2712_ gnd vdd FILL
XFILL_4__2638_ gnd vdd FILL
XFILL_0__2538_ gnd vdd FILL
X_4644_ \u_cpu.alu_op\[2] _1696_ _1697_ vdd gnd NOR2X1
X_4224_ _1042_ _978_ _977_ vdd gnd NAND2X1
XFILL_1__3181_ gnd vdd FILL
XFILL_2__3917_ gnd vdd FILL
XFILL_1__4386_ gnd vdd FILL
XFILL_2__3670_ gnd vdd FILL
XFILL_2__3250_ gnd vdd FILL
XFILL_4__3596_ gnd vdd FILL
XFILL_4__3176_ gnd vdd FILL
X_2710_ _1637_ _1909_ _2024_ _2025_ vdd gnd AOI21X1
XFILL_0__3496_ gnd vdd FILL
XFILL_2__4455_ gnd vdd FILL
XFILL_2__4035_ gnd vdd FILL
X_3915_ _1018_ _728_ _700_ vdd gnd NAND2X1
XFILL_1__2452_ gnd vdd FILL
XFILL_3__2798_ gnd vdd FILL
XFILL_3__2378_ gnd vdd FILL
XFILL_1__3657_ gnd vdd FILL
XFILL_1__3237_ gnd vdd FILL
XFILL_3__4944_ gnd vdd FILL
XFILL_3__4524_ gnd vdd FILL
XFILL_3__4104_ gnd vdd FILL
XFILL_2__2941_ gnd vdd FILL
XFILL_2__2521_ gnd vdd FILL
XFILL_4__2447_ gnd vdd FILL
XFILL_0__2767_ gnd vdd FILL
X_4873_ _1675_ vdd _1669_ clk_bF$buf2 \u_cpu.ADD\[2] vdd 
+ gnd
+ DFFSR
X_4453_ _1188_ _1198_ RDY_bF$buf4 _1185_ vdd gnd OAI21X1
X_4033_ _801_ _858_ _1196__bF$buf7 _800_ vdd gnd AOI21X1
XFILL_2__3726_ gnd vdd FILL
XFILL_2__3306_ gnd vdd FILL
XFILL_1__4195_ gnd vdd FILL
XFILL_0__4913_ gnd vdd FILL
XFILL_1__2928_ gnd vdd FILL
XFILL_1__2508_ gnd vdd FILL
XFILL_2__4684_ gnd vdd FILL
XFILL_2__4264_ gnd vdd FILL
X_3724_ _1196__bF$buf6 _585_ _524_ _523_ vdd gnd OAI21X1
X_3304_ \u_cpu.cond_code\[1] _1196__bF$buf0 _158_ vdd gnd NAND2X1
XFILL_1__2681_ gnd vdd FILL
X_4929_ _2203_ _2186_ _2204_ vdd gnd NAND2X1
X_4509_ _1238_ _1237_ vdd gnd INVX1
XFILL_1__3886_ gnd vdd FILL
XFILL_1__3466_ gnd vdd FILL
XFILL_3__4753_ gnd vdd FILL
XFILL_3__4333_ gnd vdd FILL
XFILL_2__2750_ gnd vdd FILL
XFILL_4__2676_ gnd vdd FILL
XFILL_0__2996_ gnd vdd FILL
XFILL_0__2576_ gnd vdd FILL
X_4682_ _1734_ _1684_ _1735_ vdd gnd AND2X2
X_4262_ _1027_ _1105_ _1013_ vdd gnd NOR2X1
XFILL_2__3955_ gnd vdd FILL
XFILL_2__3535_ gnd vdd FILL
XFILL_4__4822_ gnd vdd FILL
XFILL_4__4402_ gnd vdd FILL
XFILL_0__4722_ gnd vdd FILL
XFILL_0__4302_ gnd vdd FILL
XFILL_1__2737_ gnd vdd FILL
XFILL_3__3604_ gnd vdd FILL
XFILL_2__4493_ gnd vdd FILL
XFILL_2__4073_ gnd vdd FILL
XFILL_3__4809_ gnd vdd FILL
X_3953_ _731_ _773_ _730_ vdd gnd AND2X2
X_3533_ _342_ _1333_ _1108_ _356_ _341_ vdd 
+ gnd
+ OAI22X1
X_3113_ _1417__bF$buf8 vdd _1392_ clk_bF$buf7 \u_cpu.ABL\[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2490_ gnd vdd FILL
XFILL_2__2806_ gnd vdd FILL
XFILL272550x75750 gnd vdd FILL
X_4738_ _1753_ _1791_ vdd gnd INVX1
X_4318_ _1326_ _1064_ _1063_ vdd gnd NAND2X1
XFILL_1__3695_ gnd vdd FILL
XFILL_1__3275_ gnd vdd FILL
XFILL_3__4982_ gnd vdd FILL
XFILL_3__4562_ gnd vdd FILL
XFILL_3__4142_ gnd vdd FILL
XFILL_4__2485_ gnd vdd FILL
XFILL_0__2385_ gnd vdd FILL
X_4491_ _1311_ \u_cpu.PC\[1] _1220_ _1219_ vdd gnd AOI21X1
X_4071_ _1249_ _839_ _838_ vdd gnd NOR2X1
XFILL_2__3764_ gnd vdd FILL
XFILL_2__3344_ gnd vdd FILL
X_2804_ _1931_ _1927_ _1923__bF$buf2 _1932_ vdd gnd AOI21X1
XFILL_4__4631_ gnd vdd FILL
XFILL_4__4211_ gnd vdd FILL
XFILL_2__4969_ gnd vdd FILL
XFILL_0__4951_ gnd vdd FILL
XFILL_0__4531_ gnd vdd FILL
XFILL_2__4549_ gnd vdd FILL
XFILL_2__4129_ gnd vdd FILL
XFILL_0__4111_ gnd vdd FILL
XFILL_1__2966_ gnd vdd FILL
XFILL_1__2546_ gnd vdd FILL
XFILL_3__3833_ gnd vdd FILL
XFILL_3__3413_ gnd vdd FILL
XFILL_3__4618_ gnd vdd FILL
X_3762_ _1126_ _1111_ _561_ vdd gnd NOR2X1
X_3342_ _185_ _673_ _1433_ vdd gnd NOR2X1
XFILL_2__2615_ gnd vdd FILL
XFILL_4__3902_ gnd vdd FILL
X_4967_ _Addr_Bus[1] _2236_ _2173_ _2237_ vdd gnd NAND3X1
X_4547_ \u_cpu.ADD\[4] _1275_ vdd gnd INVX1
X_4127_ _895_ _894_ _899_ _893_ vdd gnd NAND3X1
XFILL_0__3802_ gnd vdd FILL
XFILL_3__4791_ gnd vdd FILL
XFILL_3__4371_ gnd vdd FILL
XFILL_1__4289_ gnd vdd FILL
XFILL_2__3993_ gnd vdd FILL
XFILL_2__3573_ gnd vdd FILL
XFILL_4__3499_ gnd vdd FILL
X_2613_ _2354__4_bF$buf1 _2119_ _2120_ vdd gnd NOR2X1
XFILL_4__4860_ gnd vdd FILL
XFILL_4__4440_ gnd vdd FILL
XFILL_4__4020_ gnd vdd FILL
XFILL_0__3399_ gnd vdd FILL
XFILL_2__4778_ gnd vdd FILL
XFILL_0__4760_ gnd vdd FILL
XFILL_2__4358_ gnd vdd FILL
XFILL_0__4340_ gnd vdd FILL
X_3818_ _709_ _843_ _1315__bF$buf3 _613_ vdd gnd OAI21X1
XFILL_1__2775_ gnd vdd FILL
XBUFX2_insert10 _1345_ _1345__bF$buf3 vdd gnd BUFX2
XBUFX2_insert11 _1345_ _1345__bF$buf2 vdd gnd BUFX2
XBUFX2_insert12 _1345_ _1345__bF$buf1 vdd gnd BUFX2
XBUFX2_insert13 _1345_ _1345__bF$buf0 vdd gnd BUFX2
XBUFX2_insert14 RDY RDY_bF$buf7 vdd gnd BUFX2
XBUFX2_insert15 RDY RDY_bF$buf6 vdd gnd BUFX2
XBUFX2_insert16 RDY RDY_bF$buf5 vdd gnd BUFX2
XBUFX2_insert17 RDY RDY_bF$buf4 vdd gnd BUFX2
XBUFX2_insert18 RDY RDY_bF$buf3 vdd gnd BUFX2
XBUFX2_insert19 RDY RDY_bF$buf2 vdd gnd BUFX2
XFILL_3__3642_ gnd vdd FILL
XFILL_3__3222_ gnd vdd FILL
XFILL_1__4921_ gnd vdd FILL
XFILL_1__4501_ gnd vdd FILL
XFILL_3__4847_ gnd vdd FILL
XFILL_3__4427_ gnd vdd FILL
XFILL_3__4007_ gnd vdd FILL
X_3991_ _1123_ _993_ _763_ vdd gnd NAND2X1
X_3571_ _1325__bF$buf3 _870_ RDY_bF$buf6 _375_ vdd gnd OAI21X1
X_3151_ _1417__bF$buf8 vdd \u_cpu.DIMUX\[4] clk_bF$buf3 \u_cpu.DIHOLD\[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2844_ gnd vdd FILL
XFILL_2__2424_ gnd vdd FILL
XFILL_4__3711_ gnd vdd FILL
X_4776_ _1828_ _1814_ _1829_ vdd gnd NAND2X1
X_4356_ _1102_ _1100_ _1099_ vdd gnd NOR2X1
XFILL_0__3611_ gnd vdd FILL
XFILL_2__3629_ gnd vdd FILL
XFILL_2__3209_ gnd vdd FILL
XFILL_3__4180_ gnd vdd FILL
XFILL_4__4916_ gnd vdd FILL
XFILL_1__4098_ gnd vdd FILL
XFILL_0__4816_ gnd vdd FILL
XFILL_3__2913_ gnd vdd FILL
XFILL_2__3382_ gnd vdd FILL
X_2842_ _2354__1_bF$buf5 _2354__0_bF$buf1 _2354__3_bF$buf0 _1653_ vdd gnd OAI21X1
X_2422_ _51_ _13_ _1923__bF$buf3 _52_ vdd gnd AOI21X1
XFILL_2__4587_ gnd vdd FILL
XFILL_2__4167_ gnd vdd FILL
X_3627_ _1196__bF$buf3 _457_ _432_ _1129__bF$buf2 _431_ vdd 
+ gnd
+ AOI22X1
X_3207_ _104_ _100_ _103_ _1370_ vdd gnd OAI21X1
XFILL_1__2584_ gnd vdd FILL
XFILL_3__3871_ gnd vdd FILL
XFILL_3__3451_ gnd vdd FILL
XFILL_3__3031_ gnd vdd FILL
XFILL_1__3789_ gnd vdd FILL
XFILL_1__3369_ gnd vdd FILL
XFILL_1__4730_ gnd vdd FILL
XFILL_1__4310_ gnd vdd FILL
XFILL_3__4656_ gnd vdd FILL
XFILL_3__4236_ gnd vdd FILL
X_3380_ _905_ _215_ vdd gnd INVX1
XFILL_2__2653_ gnd vdd FILL
XFILL_4__2999_ gnd vdd FILL
XFILL_4__2579_ gnd vdd FILL
XFILL_4__3940_ gnd vdd FILL
XFILL_4__3520_ gnd vdd FILL
XFILL_0__2899_ gnd vdd FILL
XFILL_0__2479_ gnd vdd FILL
X_4585_ _1314_ _1313_ vdd gnd INVX1
X_4165_ _927_ _926_ _1070__bF$buf1 _925_ vdd gnd OAI21X1
XFILL_0__3840_ gnd vdd FILL
XFILL_2__3858_ gnd vdd FILL
XFILL_2__3438_ gnd vdd FILL
XFILL_0__3420_ gnd vdd FILL
XFILL_0__3000_ gnd vdd FILL
XFILL_2__3018_ gnd vdd FILL
XFILL_4__4725_ gnd vdd FILL
XFILL_4__4305_ gnd vdd FILL
XFILL_3__2722_ gnd vdd FILL
XFILL_0__4625_ gnd vdd FILL
XFILL_0__4205_ gnd vdd FILL
XFILL_2__3191_ gnd vdd FILL
XFILL_3__3927_ gnd vdd FILL
XFILL_3__3507_ gnd vdd FILL
X_2651_ _1634__bF$buf5 _2082_ _2083_ vdd gnd NAND2X1
XFILL_2__4396_ gnd vdd FILL
X_3856_ _1287_ _877_ _649_ _648_ vdd gnd OAI21X1
X_3436_ _782_ \u_cpu.PC\[14] _262_ _261_ vdd gnd AOI21X1
X_3016_ \u_pia_kbd.state\[1] _1513_ vdd gnd INVX1
XFILL_1__2393_ gnd vdd FILL
XFILL_2__2709_ gnd vdd FILL
XFILL_3__3680_ gnd vdd FILL
XFILL_3__3260_ gnd vdd FILL
XFILL_1_BUFX2_insert70 gnd vdd FILL
XFILL_1_BUFX2_insert71 gnd vdd FILL
XFILL_1_BUFX2_insert72 gnd vdd FILL
XFILL_1_BUFX2_insert73 gnd vdd FILL
XFILL_1_BUFX2_insert74 gnd vdd FILL
XFILL_1_BUFX2_insert75 gnd vdd FILL
XFILL_1_BUFX2_insert76 gnd vdd FILL
XFILL_1_BUFX2_insert77 gnd vdd FILL
XFILL_1_BUFX2_insert78 gnd vdd FILL
XFILL_1_BUFX2_insert79 gnd vdd FILL
XFILL_1__3598_ gnd vdd FILL
XFILL_1__3178_ gnd vdd FILL
XFILL_3__4885_ gnd vdd FILL
XFILL_3__4465_ gnd vdd FILL
XFILL_3__4045_ gnd vdd FILL
XFILL_2__2882_ gnd vdd FILL
XFILL_2__2462_ gnd vdd FILL
XFILL_4__2388_ gnd vdd FILL
X_4394_ \u_cpu.PC\[13] _1269_ _1135_ _1134_ vdd gnd AOI21X1
XFILL_2__3667_ gnd vdd FILL
XFILL_2__3247_ gnd vdd FILL
X_2707_ _2354__2_bF$buf5 _1924_ _2028_ vdd gnd NOR2X1
XFILL_4__4954_ gnd vdd FILL
XFILL_4__4534_ gnd vdd FILL
XFILL_0__4854_ gnd vdd FILL
XFILL_3__2951_ gnd vdd FILL
XFILL_3__2531_ gnd vdd FILL
XFILL_0__4434_ gnd vdd FILL
XFILL_0__4014_ gnd vdd FILL
XFILL_1__2449_ gnd vdd FILL
XFILL_1__3810_ gnd vdd FILL
XFILL_3__3736_ gnd vdd FILL
XFILL_3__3316_ gnd vdd FILL
X_2880_ _2353_[0] _1579_ vdd gnd INVX1
X_2460_ _14_ _1960_ _2354__4_bF$buf4 _1640_ _15_ vdd 
+ gnd
+ OAI22X1
XFILL_4__2600_ gnd vdd FILL
X_3665_ _469_ _474_ _468_ vdd gnd NOR2X1
X_3245_ _129_ _126_ _128_ _1382_ vdd gnd OAI21X1
XFILL_2__2938_ gnd vdd FILL
XFILL_0__2920_ gnd vdd FILL
XFILL_0__2500_ gnd vdd FILL
XFILL_2__2518_ gnd vdd FILL
XFILL_4__3805_ gnd vdd FILL
XFILL_0__3705_ gnd vdd FILL
XFILL_3__4694_ gnd vdd FILL
XFILL_3__4274_ gnd vdd FILL
XFILL_2__2691_ gnd vdd FILL
XFILL_2__3896_ gnd vdd FILL
XFILL_2__3476_ gnd vdd FILL
X_2936_ \u_pia_dsp.state\[0] _1525_ _1534_ _1535_ vdd gnd NAND3X1
X_2516_ _2309_ _2305_ _1920__bF$buf3 _2310_ vdd gnd OAI21X1
XFILL_4__4763_ gnd vdd FILL
XFILL_4__4343_ gnd vdd FILL
XFILL_3__2760_ gnd vdd FILL
XFILL_0__4663_ gnd vdd FILL
XFILL_0__4243_ gnd vdd FILL
XFILL_1__2678_ gnd vdd FILL
XFILL_3__3965_ gnd vdd FILL
XFILL_3__3545_ gnd vdd FILL
XFILL_1__4824_ gnd vdd FILL
XFILL_1__4404_ gnd vdd FILL
X_3894_ _1100_ _1005_ _682_ vdd gnd NOR2X1
X_3474_ _1096_ _877_ _289_ _288_ vdd gnd OAI21X1
X_3054_ _1417__bF$buf5 vdd _1478_ clk_bF$buf11 \u_cpu.sei\ vdd 
+ gnd
+ DFFSR
XFILL_2__2747_ gnd vdd FILL
XFILL_4__3614_ gnd vdd FILL
X_4679_ _1689_ _1731_ \u_cpu.BI\[1] _1732_ vdd gnd OAI21X1
X_4259_ \u_cpu.op\[1] _1129__bF$buf4 _1021_ _1010_ vdd gnd OAI21X1
XFILL_0__3934_ gnd vdd FILL
XFILL_0__3514_ gnd vdd FILL
XFILL_3__4083_ gnd vdd FILL
XFILL_4__4819_ gnd vdd FILL
XFILL_0__4719_ gnd vdd FILL
XFILL_3__2816_ gnd vdd FILL
XFILL_2__3285_ gnd vdd FILL
X_2745_ _1920__bF$buf2 _1989_ _1983_ _1990_ vdd gnd NAND3X1
XFILL_4__4572_ gnd vdd FILL
XFILL_4__4152_ gnd vdd FILL
XFILL_0__4892_ gnd vdd FILL
XFILL_0__4472_ gnd vdd FILL
XFILL_0__4052_ gnd vdd FILL
XFILL_1__2487_ gnd vdd FILL
XFILL_3__3774_ gnd vdd FILL
XFILL_3__3354_ gnd vdd FILL
XFILL_1__4633_ gnd vdd FILL
XFILL_1__4213_ gnd vdd FILL
XFILL_3__4979_ gnd vdd FILL
XFILL_3__4559_ gnd vdd FILL
XFILL_3__4139_ gnd vdd FILL
X_3283_ reset _181_ \u_cpu.IRHOLD\[4] _148_ vdd gnd OAI21X1
XFILL_2__2976_ gnd vdd FILL
XFILL_2__2556_ gnd vdd FILL
XFILL_4__3843_ gnd vdd FILL
XFILL273150x68550 gnd vdd FILL
XFILL_4__3003_ gnd vdd FILL
X_4488_ _1311_ \u_cpu.PC\[0] _1217_ _1216_ vdd gnd AOI21X1
X_4068_ _854_ _852_ _836_ _835_ vdd gnd NAND3X1
XFILL_0__3743_ gnd vdd FILL
XFILL_0__3323_ gnd vdd FILL
XFILL_2__4702_ gnd vdd FILL
XFILL_4__4628_ gnd vdd FILL
XFILL_4__4208_ gnd vdd FILL
XFILL_0__4948_ gnd vdd FILL
XFILL_3__2625_ gnd vdd FILL
XFILL_0__4528_ gnd vdd FILL
XFILL_0__4108_ gnd vdd FILL
XFILL_1__3904_ gnd vdd FILL
X_2974_ DO_kbd[4] _1622_ vdd gnd INVX1
X_2554_ _2269_ _2272_ _2273_ vdd gnd NAND2X1
XFILL_4__4381_ gnd vdd FILL
XFILL_2__4299_ gnd vdd FILL
XFILL_0__4281_ gnd vdd FILL
X_3759_ _1037__bF$buf0 _560_ _559_ _558_ vdd gnd OAI21X1
X_3339_ _184_ _183_ _182_ vdd gnd AND2X2
X_4700_ _1747_ _1698_ _1752_ _1753_ vdd gnd OAI21X1
XFILL_3__3583_ gnd vdd FILL
XFILL_1__4862_ gnd vdd FILL
XFILL_1__4442_ gnd vdd FILL
XFILL_1__4022_ gnd vdd FILL
XFILL_3__4788_ gnd vdd FILL
XFILL_3__4368_ gnd vdd FILL
X_3092_ _1417__bF$buf2 vdd _1382_ clk_bF$buf0 \u_cpu.V\ vdd 
+ gnd
+ DFFSR
XFILL_2__2785_ gnd vdd FILL
XFILL_2__2365_ gnd vdd FILL
XFILL_4__3652_ gnd vdd FILL
XFILL_4__3232_ gnd vdd FILL
X_4297_ _1045_ _1043_ _1196__bF$buf7 _1042_ vdd gnd AOI21X1
XFILL_0__3972_ gnd vdd FILL
XFILL_0__3552_ gnd vdd FILL
XFILL_2__4931_ gnd vdd FILL
XFILL_2__4511_ gnd vdd FILL
XFILL_4__4857_ gnd vdd FILL
XFILL_4__4437_ gnd vdd FILL
XFILL_4__4017_ gnd vdd FILL
XFILL_3__2854_ gnd vdd FILL
XFILL_0__4757_ gnd vdd FILL
XFILL_3__2434_ gnd vdd FILL
XFILL_0__4337_ gnd vdd FILL
XFILL_1__3713_ gnd vdd FILL
XFILL_3__3639_ gnd vdd FILL
XFILL_3__3219_ gnd vdd FILL
X_2783_ _1942_ _1947_ _1952_ _1953_ vdd gnd AOI21X1
X_2363_ _2354_[8] AB[8] vdd gnd BUFX2
XFILL_4__4190_ gnd vdd FILL
XFILL_0__4090_ gnd vdd FILL
XFILL_1__4918_ gnd vdd FILL
XFILL_4__2923_ gnd vdd FILL
XFILL_4__2503_ gnd vdd FILL
X_3988_ _774_ _1129__bF$buf5 _761_ _1456_ vdd gnd OAI21X1
X_3568_ _373_ _508_ _372_ vdd gnd NAND2X1
X_3148_ _1417__bF$buf10 vdd _1410_ clk_bF$buf8 \u_cpu.cond_code\[0] vdd 
+ gnd
+ DFFSR
XFILL_0__2823_ gnd vdd FILL
XFILL_0__2403_ gnd vdd FILL
XFILL_3__3392_ gnd vdd FILL
XFILL_4__3708_ gnd vdd FILL
XFILL_0__3608_ gnd vdd FILL
XFILL_1__4671_ gnd vdd FILL
XFILL_1__4251_ gnd vdd FILL
XFILL_3__4597_ gnd vdd FILL
XFILL_3__4177_ gnd vdd FILL
XFILL_2__2594_ gnd vdd FILL
XFILL_4__3881_ gnd vdd FILL
XFILL_4__3461_ gnd vdd FILL
XFILL_0__3781_ gnd vdd FILL
XFILL_2__3799_ gnd vdd FILL
XFILL_2__3379_ gnd vdd FILL
XFILL_0__3361_ gnd vdd FILL
XFILL_2__4740_ gnd vdd FILL
XFILL_2__4320_ gnd vdd FILL
X_2839_ _2354__4_bF$buf3 _1655_ _1650_ _1656_ vdd gnd NAND3X1
X_2419_ _1961_ _55_ vdd gnd INVX1
XFILL_4__4666_ gnd vdd FILL
XFILL_4__4246_ gnd vdd FILL
XFILL_3__2663_ gnd vdd FILL
XFILL_0__4566_ gnd vdd FILL
XFILL_0__4146_ gnd vdd FILL
XFILL_1__3942_ gnd vdd FILL
XFILL_1__3522_ gnd vdd FILL
XFILL_3__3868_ gnd vdd FILL
XFILL_3__3448_ gnd vdd FILL
XFILL_3__3028_ gnd vdd FILL
X_2592_ _2140_ _2137_ _2354__7_bF$buf3 _2141_ vdd gnd AOI21X1
XFILL_1__4727_ gnd vdd FILL
XFILL_1__4307_ gnd vdd FILL
XFILL_4__2732_ gnd vdd FILL
X_3797_ _782_ \u_cpu.PC\[3] _595_ _594_ vdd gnd AOI21X1
X_3377_ _701_ _675_ _212_ vdd gnd NOR2X1
XFILL_0__2632_ gnd vdd FILL
XFILL_4__3937_ gnd vdd FILL
XFILL_4__3517_ gnd vdd FILL
XFILL_0__3837_ gnd vdd FILL
XFILL_0__3417_ gnd vdd FILL
XFILL_1__4480_ gnd vdd FILL
XFILL_1__4060_ gnd vdd FILL
XFILL_3__2719_ gnd vdd FILL
XFILL_4__3690_ gnd vdd FILL
XFILL_4__3270_ gnd vdd FILL
XFILL_0__3590_ gnd vdd FILL
XFILL_0__3170_ gnd vdd FILL
XFILL_2__3188_ gnd vdd FILL
X_2648_ _2002_ _1924_ _1636__bF$buf0 _2086_ vdd gnd AOI21X1
XFILL273450x21750 gnd vdd FILL
XFILL_4__4475_ gnd vdd FILL
XFILL_4__4055_ gnd vdd FILL
XFILL_0__4795_ gnd vdd FILL
XFILL_3__2892_ gnd vdd FILL
XFILL_3__2472_ gnd vdd FILL
XFILL_0__4375_ gnd vdd FILL
XFILL_1__3751_ gnd vdd FILL
XFILL_1__3331_ gnd vdd FILL
XFILL_3__3677_ gnd vdd FILL
XFILL_3__3257_ gnd vdd FILL
XFILL_1__4956_ gnd vdd FILL
XFILL_1__4536_ gnd vdd FILL
XFILL_1__4116_ gnd vdd FILL
XFILL_4__2541_ gnd vdd FILL
X_3186_ _1219_ _93_ RDY_bF$buf1 _86_ vdd gnd OAI21X1
XFILL_2__2879_ gnd vdd FILL
XFILL_0__2861_ gnd vdd FILL
XFILL_2__2459_ gnd vdd FILL
XFILL_0__2441_ gnd vdd FILL
XFILL_2__3820_ gnd vdd FILL
XFILL_2__3400_ gnd vdd FILL
XFILL_4__3746_ gnd vdd FILL
XFILL_4__3326_ gnd vdd FILL
XFILL_0__3646_ gnd vdd FILL
XFILL_0__3226_ gnd vdd FILL
XFILL_2__4605_ gnd vdd FILL
XFILL_1__2602_ gnd vdd FILL
XFILL_3__2948_ gnd vdd FILL
XFILL_3__2528_ gnd vdd FILL
XFILL_1__3807_ gnd vdd FILL
X_2877_ _2353_[1] _1581_ vdd gnd INVX1
X_2457_ _1959_ _2354__4_bF$buf4 _1920__bF$buf1 _18_ vdd gnd AOI21X1
XFILL_4__4284_ gnd vdd FILL
XFILL_0__4184_ gnd vdd FILL
XFILL_0__2917_ gnd vdd FILL
X_4603_ _1347_ _1332_ _1331_ vdd gnd NAND2X1
XFILL_1__3980_ gnd vdd FILL
XFILL_1__3560_ gnd vdd FILL
XFILL_3__3486_ gnd vdd FILL
XFILL_1__4765_ gnd vdd FILL
XFILL_1__4345_ gnd vdd FILL
XFILL_4__2770_ gnd vdd FILL
XFILL_0__2670_ gnd vdd FILL
XFILL_2__2688_ gnd vdd FILL
XFILL_4__3975_ gnd vdd FILL
XFILL_4__3555_ gnd vdd FILL
XFILL_0__3875_ gnd vdd FILL
XFILL_0__3455_ gnd vdd FILL
XFILL_2__4834_ gnd vdd FILL
XFILL_2__4414_ gnd vdd FILL
XFILL_1__2831_ gnd vdd FILL
XFILL_1__2411_ gnd vdd FILL
XFILL_3__2757_ gnd vdd FILL
XFILL_1__3616_ gnd vdd FILL
X_2686_ _2354__1_bF$buf4 _2354__2_bF$buf3 _2354__0_bF$buf3 _2048_ vdd gnd AOI21X1
XFILL_4__4093_ gnd vdd FILL
XFILL_3__4903_ gnd vdd FILL
XFILL_2__2900_ gnd vdd FILL
XFILL_4__2826_ gnd vdd FILL
XFILL_4__2406_ gnd vdd FILL
XFILL_0__2726_ gnd vdd FILL
X_4832_ _1872_ _1875_ vdd gnd INVX1
X_4412_ \u_cpu.DIMUX\[4] _1150_ vdd gnd INVX2
XFILL_3__3295_ gnd vdd FILL
XFILL_1__4574_ gnd vdd FILL
XFILL_1__4154_ gnd vdd FILL
XFILL_2__2497_ gnd vdd FILL
XFILL_4__3784_ gnd vdd FILL
XFILL_4__3364_ gnd vdd FILL
XFILL_0__3684_ gnd vdd FILL
XFILL_0__3264_ gnd vdd FILL
XFILL_2__4643_ gnd vdd FILL
XFILL_2__4223_ gnd vdd FILL
XFILL_4__4569_ gnd vdd FILL
XFILL_4__4149_ gnd vdd FILL
XFILL273750x64950 gnd vdd FILL
XFILL_1__2640_ gnd vdd FILL
XFILL_0__4889_ gnd vdd FILL
XFILL_3__2986_ gnd vdd FILL
XFILL_3__2566_ gnd vdd FILL
XFILL_0__4469_ gnd vdd FILL
XFILL_0__4049_ gnd vdd FILL
XFILL_1__3845_ gnd vdd FILL
XFILL_1__3425_ gnd vdd FILL
XFILL_1__3005_ gnd vdd FILL
X_2495_ _2330_ _2128_ _2331_ vdd gnd NOR2X1
XFILL_3__4712_ gnd vdd FILL
XFILL_4__2635_ gnd vdd FILL
XFILL_0__2535_ gnd vdd FILL
X_4641_ _1684_ _1693_ _1692_ _1694_ vdd gnd NAND3X1
X_4221_ \u_cpu.AXYS[0]\[0] _977_ _974_ vdd gnd NAND2X1
XFILL_2__3914_ gnd vdd FILL
XFILL_1__4383_ gnd vdd FILL
XFILL_4__3593_ gnd vdd FILL
XFILL_4__3173_ gnd vdd FILL
XFILL_0__3493_ gnd vdd FILL
XFILL_2__4452_ gnd vdd FILL
XFILL_2__4032_ gnd vdd FILL
XFILL_4__4798_ gnd vdd FILL
XFILL_4__4378_ gnd vdd FILL
X_3912_ _1328__bF$buf5 _1084_ _747_ _698_ vdd gnd OAI21X1
XFILL_0__4698_ gnd vdd FILL
XFILL_3__2795_ gnd vdd FILL
XFILL_3__2375_ gnd vdd FILL
XFILL_0__4278_ gnd vdd FILL
XFILL_1__3654_ gnd vdd FILL
XFILL_1__3234_ gnd vdd FILL
XFILL_3__4941_ gnd vdd FILL
XFILL_3__4521_ gnd vdd FILL
XFILL_3__4101_ gnd vdd FILL
XFILL_1__4859_ gnd vdd FILL
XFILL_1__4439_ gnd vdd FILL
XFILL_1__4019_ gnd vdd FILL
XFILL_4__2444_ gnd vdd FILL
X_3089_ _1417__bF$buf3 vdd _1381_ clk_bF$buf7 \u_cpu.ABH\[1] vdd 
+ gnd
+ DFFSR
XFILL_0__2764_ gnd vdd FILL
X_4870_ RDY_bF$buf7 _1866_ _1908_ _1680_ vdd gnd OAI21X1
X_4450_ _1269_ _1183_ vdd gnd INVX1
X_4030_ \u_cpu.NMI_1\ _798_ vdd gnd INVX1
XFILL_2__3723_ gnd vdd FILL
XFILL_2__3303_ gnd vdd FILL
XFILL_4__3649_ gnd vdd FILL
XFILL_4__3229_ gnd vdd FILL
XFILL_0__3969_ gnd vdd FILL
XFILL_0__3549_ gnd vdd FILL
XFILL_1__4192_ gnd vdd FILL
XFILL_2__4928_ gnd vdd FILL
XFILL_0__4910_ gnd vdd FILL
XFILL_2__4508_ gnd vdd FILL
XFILL_1__2925_ gnd vdd FILL
XFILL_1__2505_ gnd vdd FILL
XFILL_2__4681_ gnd vdd FILL
XFILL_2__4261_ gnd vdd FILL
XFILL_4__4187_ gnd vdd FILL
X_3721_ _1196__bF$buf5 _555_ _521_ _520_ vdd gnd OAI21X1
X_3301_ _932_ _921_ _157_ _1407_ vdd gnd OAI21X1
XFILL_0__4087_ gnd vdd FILL
X_4926_ DO_dsp[5] _2201_ vdd gnd INVX1
X_4506_ _1346_ _1234_ vdd gnd INVX1
XFILL_1__3883_ gnd vdd FILL
XFILL_1__3463_ gnd vdd FILL
XFILL_3__3389_ gnd vdd FILL
XFILL_3__4750_ gnd vdd FILL
XFILL_3__4330_ gnd vdd FILL
XFILL_1__4668_ gnd vdd FILL
XFILL_1__4248_ gnd vdd FILL
XFILL_4__2673_ gnd vdd FILL
XFILL_0__2993_ gnd vdd FILL
XFILL_0__2573_ gnd vdd FILL
XFILL_2__3952_ gnd vdd FILL
XFILL_2__3532_ gnd vdd FILL
XFILL_4__3878_ gnd vdd FILL
XFILL_4__3458_ gnd vdd FILL
XFILL_0__3778_ gnd vdd FILL
XFILL_0__3358_ gnd vdd FILL
XFILL_2__4737_ gnd vdd FILL
XFILL_2__4317_ gnd vdd FILL
XFILL_1__2734_ gnd vdd FILL
XFILL_3__3601_ gnd vdd FILL
XFILL_1__3939_ gnd vdd FILL
XFILL_1__3519_ gnd vdd FILL
XFILL_2__4490_ gnd vdd FILL
XFILL_2__4070_ gnd vdd FILL
X_2589_ _2354__2_bF$buf4 _2088_ _2144_ vdd gnd NOR2X1
XFILL_3__4806_ gnd vdd FILL
X_3950_ _728_ _993_ _727_ vdd gnd NAND2X1
X_3530_ _886_ _339_ vdd gnd INVX1
X_3110_ _1417__bF$buf6 vdd \u_cpu.DIMUX\[7] clk_bF$buf9 \u_cpu.DIHOLD\[7] vdd 
+ gnd
+ DFFSR
XFILL_2__2803_ gnd vdd FILL
XFILL_4__2729_ gnd vdd FILL
XFILL_0__2629_ gnd vdd FILL
X_4735_ _1771_ _1769_ _1788_ vdd gnd NAND2X1
X_4315_ _1305__bF$buf3 _1076_ _1061_ _1060_ vdd gnd OAI21X1
XFILL_1__3692_ gnd vdd FILL
XFILL_1__3272_ gnd vdd FILL
XFILL_3__3198_ gnd vdd FILL
XFILL_1__4897_ gnd vdd FILL
XFILL_1__4477_ gnd vdd FILL
XFILL_1__4057_ gnd vdd FILL
XFILL_4__2482_ gnd vdd FILL
XFILL_0__2382_ gnd vdd FILL
XFILL_2__3761_ gnd vdd FILL
XFILL_2__3341_ gnd vdd FILL
XFILL_4__3687_ gnd vdd FILL
XFILL_4__3267_ gnd vdd FILL
X_2801_ _2354__2_bF$buf1 _1638__bF$buf1 _1935_ vdd gnd NAND2X1
XFILL_0__3587_ gnd vdd FILL
XFILL_0__3167_ gnd vdd FILL
XFILL_2__4966_ gnd vdd FILL
XFILL_2__4546_ gnd vdd FILL
XFILL_2__4126_ gnd vdd FILL
XFILL_1__2543_ gnd vdd FILL
XFILL_3__2889_ gnd vdd FILL
XFILL_3__2469_ gnd vdd FILL
XFILL_3__3830_ gnd vdd FILL
XFILL_3__3410_ gnd vdd FILL
XFILL_1__3748_ gnd vdd FILL
XFILL_1__3328_ gnd vdd FILL
X_2398_ _25_ _1634__bF$buf4 _1920__bF$buf3 _1423_ vdd gnd AOI21X1
XFILL_3__4615_ gnd vdd FILL
XFILL274050x14550 gnd vdd FILL
XFILL_2__2612_ gnd vdd FILL
XFILL_4__2538_ gnd vdd FILL
XFILL_0__2858_ gnd vdd FILL
XFILL_0__2438_ gnd vdd FILL
X_4964_ _2228_ _2195_ _2233_ _2234_ Data_In[1] vdd 
+ gnd
+ AOI22X1
X_4544_ _1275_ _1282_ _1273_ _1272_ vdd gnd OAI21X1
X_4124_ _891_ _890_ vdd gnd INVX1
XFILL_2__3817_ gnd vdd FILL
XFILL_1__4286_ gnd vdd FILL
XFILL_2__3990_ gnd vdd FILL
XFILL_2__3570_ gnd vdd FILL
XFILL_4__3496_ gnd vdd FILL
X_2610_ _2006_ _2123_ vdd gnd INVX1
XFILL_0__3396_ gnd vdd FILL
XFILL_2__4775_ gnd vdd FILL
XFILL_2__4355_ gnd vdd FILL
X_3815_ _651_ _630_ _611_ _610_ vdd gnd AOI21X1
XFILL_1__2772_ gnd vdd FILL
XFILL_3__2698_ gnd vdd FILL
XFILL_1__3977_ gnd vdd FILL
XFILL_1__3557_ gnd vdd FILL
XFILL_3__4844_ gnd vdd FILL
XFILL_3__4424_ gnd vdd FILL
XFILL_3__4004_ gnd vdd FILL
XFILL_2__2841_ gnd vdd FILL
XFILL_2__2421_ gnd vdd FILL
XFILL_4__2767_ gnd vdd FILL
XFILL_0__2667_ gnd vdd FILL
X_4773_ _1697_ _1825_ _1822_ _1826_ vdd gnd OAI21X1
X_4353_ \u_cpu.PC\[14] _1196__bF$buf1 _1097_ vdd gnd NAND2X1
XFILL_2__3626_ gnd vdd FILL
XFILL_2__3206_ gnd vdd FILL
XFILL_4__4913_ gnd vdd FILL
XFILL_1__4095_ gnd vdd FILL
XFILL_0__4813_ gnd vdd FILL
XFILL_3__2910_ gnd vdd FILL
XFILL_1__2828_ gnd vdd FILL
XFILL_1__2408_ gnd vdd FILL
XFILL_2__4584_ gnd vdd FILL
XFILL_2__4164_ gnd vdd FILL
X_3624_ RDY_bF$buf6 _1274_ _429_ _428_ vdd gnd OAI21X1
X_3204_ \u_cpu.AXYS[1]\[1] _1041_ _98_ vdd gnd NAND2X1
XFILL_1__2581_ gnd vdd FILL
X_4829_ \u_cpu.alu_op\[0] _1871_ _1872_ vdd gnd NOR2X1
X_4409_ _1318_ _1150_ _1148_ _1147_ vdd gnd OAI21X1
XFILL_1__3786_ gnd vdd FILL
XFILL_1__3366_ gnd vdd FILL
XFILL_3__4653_ gnd vdd FILL
XFILL_3__4233_ gnd vdd FILL
XFILL_2__2650_ gnd vdd FILL
XFILL_4__2996_ gnd vdd FILL
XFILL_4__2576_ gnd vdd FILL
XFILL_0__2896_ gnd vdd FILL
XFILL_0__2476_ gnd vdd FILL
X_4582_ _1311_ _1310_ vdd gnd INVX1
X_4162_ _977_ _924_ _923_ _1466_ vdd gnd OAI21X1
XFILL_2__3855_ gnd vdd FILL
XFILL_2__3435_ gnd vdd FILL
XFILL_2__3015_ gnd vdd FILL
XFILL_4__4722_ gnd vdd FILL
XFILL_4__4302_ gnd vdd FILL
XFILL_0__4622_ gnd vdd FILL
XFILL_0__4202_ gnd vdd FILL
XFILL_1__2637_ gnd vdd FILL
XFILL_3__3924_ gnd vdd FILL
XFILL_3__3504_ gnd vdd FILL
XFILL_2__4393_ gnd vdd FILL
XFILL_3__4709_ gnd vdd FILL
X_3853_ \u_cpu.AXYS[1]\[6] _646_ vdd gnd INVX1
X_3433_ \u_cpu.ADD\[3] _625_ _259_ vdd gnd NAND2X1
X_3013_ _Addr_Bus[12] _Addr_Bus[4] _1585_ vdd gnd AND2X2
XFILL_2__2706_ gnd vdd FILL
XFILL_1_BUFX2_insert40 gnd vdd FILL
XFILL_1_BUFX2_insert41 gnd vdd FILL
XFILL_1_BUFX2_insert42 gnd vdd FILL
XFILL_1_BUFX2_insert43 gnd vdd FILL
XFILL_1_BUFX2_insert44 gnd vdd FILL
XFILL_1_BUFX2_insert45 gnd vdd FILL
XFILL_1_BUFX2_insert46 gnd vdd FILL
XFILL_1_BUFX2_insert47 gnd vdd FILL
XFILL_1_BUFX2_insert48 gnd vdd FILL
XFILL_1_BUFX2_insert49 gnd vdd FILL
X_4638_ _1689_ _1690_ \u_cpu.BI\[5] _1691_ vdd gnd OAI21X1
X_4218_ _973_ _972_ vdd gnd INVX1
XFILL_1__3595_ gnd vdd FILL
XFILL_1__3175_ gnd vdd FILL
XFILL_3__4462_ gnd vdd FILL
XFILL_3__4042_ gnd vdd FILL
XFILL_0_CLKBUF1_insert26 gnd vdd FILL
XFILL_0_CLKBUF1_insert27 gnd vdd FILL
XFILL_0_CLKBUF1_insert28 gnd vdd FILL
XFILL_0_CLKBUF1_insert29 gnd vdd FILL
XFILL_4__2385_ gnd vdd FILL
X_4391_ _1134_ _1143_ RDY_bF$buf4 _1131_ vdd gnd OAI21X1
XFILL_2__3664_ gnd vdd FILL
XFILL_2__3244_ gnd vdd FILL
X_2704_ _1920__bF$buf2 _2030_ _2031_ vdd gnd NOR2X1
XFILL_4__4951_ gnd vdd FILL
XFILL_4__4531_ gnd vdd FILL
XFILL_4__4111_ gnd vdd FILL
XFILL_0__4851_ gnd vdd FILL
XFILL_2__4869_ gnd vdd FILL
XFILL_0__4431_ gnd vdd FILL
XFILL_2__4449_ gnd vdd FILL
XFILL_2__4029_ gnd vdd FILL
XFILL_0__4011_ gnd vdd FILL
X_3909_ _827_ _743_ _749_ _696_ _695_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2446_ gnd vdd FILL
XFILL_3__3733_ gnd vdd FILL
XFILL_3__3313_ gnd vdd FILL
XFILL_3__4938_ gnd vdd FILL
XFILL_3__4518_ gnd vdd FILL
X_3662_ _1196__bF$buf8 _467_ _569_ _466_ _465_ vdd 
+ gnd
+ AOI22X1
X_3242_ _2354_[10] _800__bF$buf3 _124_ vdd gnd NAND2X1
XFILL_2__2935_ gnd vdd FILL
XFILL_2__2515_ gnd vdd FILL
XFILL_4__3802_ gnd vdd FILL
X_4867_ _1899_ _1905_ _1906_ _1895_ _1907_ vdd 
+ gnd
+ AOI22X1
X_4447_ RDY_bF$buf2 Data_In[2] _1180_ vdd gnd NAND2X1
X_4027_ \u_cpu.NMI_edge\ _797_ _796_ _1459_ vdd gnd OAI21X1
XFILL_0__3702_ gnd vdd FILL
XFILL_3__4691_ gnd vdd FILL
XFILL_3__4271_ gnd vdd FILL
XFILL_1__4189_ gnd vdd FILL
XFILL_0__4907_ gnd vdd FILL
XFILL_2__3893_ gnd vdd FILL
XFILL_2__3473_ gnd vdd FILL
XFILL_4__3399_ gnd vdd FILL
X_2933_ \u_pia_dsp.state\[0] _1537_ vdd gnd INVX2
X_2513_ _1994_ _1643__bF$buf4 _2354__4_bF$buf0 _2313_ vdd gnd AOI21X1
XFILL_4__4760_ gnd vdd FILL
XFILL_4__4340_ gnd vdd FILL
XFILL_0__3299_ gnd vdd FILL
XFILL272550x61350 gnd vdd FILL
XFILL_0__4660_ gnd vdd FILL
XFILL_2__4678_ gnd vdd FILL
XFILL_0__4240_ gnd vdd FILL
XFILL_2__4258_ gnd vdd FILL
X_3718_ _520_ _518_ _517_ vdd gnd NAND2X1
XFILL_1__2675_ gnd vdd FILL
XFILL_3__3962_ gnd vdd FILL
XFILL_3__3542_ gnd vdd FILL
XFILL_1__4821_ gnd vdd FILL
XFILL_1__4401_ gnd vdd FILL
XFILL_3__4747_ gnd vdd FILL
XFILL_3__4327_ gnd vdd FILL
X_3891_ _1008_ _1013_ _1001_ _679_ vdd gnd OAI21X1
X_3471_ _286_ _2354_[6] vdd gnd INVX8
X_3051_ _1417__bF$buf6 vdd _1365_ clk_bF$buf9 \u_cpu.AXYS[3]\[7] vdd 
+ gnd
+ DFFSR
XFILL_2__2744_ gnd vdd FILL
XFILL_4__3611_ gnd vdd FILL
X_4676_ \u_cpu.BI\[1] _1729_ vdd gnd INVX1
X_4256_ _1111_ _1008_ vdd gnd INVX2
XFILL_2__3949_ gnd vdd FILL
XFILL_0__3931_ gnd vdd FILL
XFILL_0__3511_ gnd vdd FILL
XFILL_2__3529_ gnd vdd FILL
XFILL_3__4080_ gnd vdd FILL
XFILL_4__4816_ gnd vdd FILL
XFILL_0__4716_ gnd vdd FILL
XFILL_3__2813_ gnd vdd FILL
XFILL_2_BUFX2_insert90 gnd vdd FILL
XFILL_2_BUFX2_insert91 gnd vdd FILL
XFILL_2_BUFX2_insert92 gnd vdd FILL
XFILL_2_BUFX2_insert93 gnd vdd FILL
XFILL_2_BUFX2_insert94 gnd vdd FILL
XFILL_2_BUFX2_insert95 gnd vdd FILL
XFILL_2_BUFX2_insert96 gnd vdd FILL
XFILL_2_BUFX2_insert97 gnd vdd FILL
XFILL_2_BUFX2_insert98 gnd vdd FILL
XFILL_2_BUFX2_insert99 gnd vdd FILL
XFILL_2__3282_ gnd vdd FILL
X_2742_ _1637_ _1639_ _1992_ _1993_ vdd gnd OAI21X1
XFILL_2__4487_ gnd vdd FILL
XFILL_2__4067_ gnd vdd FILL
X_3947_ _725_ _729_ _1129__bF$buf5 _724_ vdd gnd OAI21X1
X_3527_ _872_ _338_ _337_ _336_ vdd gnd NAND3X1
X_3107_ _1417__bF$buf0 vdd _1389_ clk_bF$buf10 \u_cpu.ABL\[3] vdd 
+ gnd
+ DFFSR
XFILL_1__2484_ gnd vdd FILL
XFILL_3__3771_ gnd vdd FILL
XFILL_3__3351_ gnd vdd FILL
XFILL_1__3689_ gnd vdd FILL
XFILL_1__3269_ gnd vdd FILL
XFILL_1__4630_ gnd vdd FILL
XFILL_1__4210_ gnd vdd FILL
XFILL_3__4976_ gnd vdd FILL
XFILL_3__4556_ gnd vdd FILL
XFILL_3__4136_ gnd vdd FILL
X_3280_ _1165_ _179_ _147_ _1396_ vdd gnd OAI21X1
XFILL_2__2973_ gnd vdd FILL
XFILL_2__2553_ gnd vdd FILL
XFILL_4__2899_ gnd vdd FILL
XFILL_4__2479_ gnd vdd FILL
XFILL_4__3840_ gnd vdd FILL
XFILL_4__3420_ gnd vdd FILL
XFILL_4__3000_ gnd vdd FILL
XFILL_0__2799_ gnd vdd FILL
XFILL_0__2379_ gnd vdd FILL
X_4485_ _1277_ _1271_ _1214_ _1213_ vdd gnd NOR3X1
X_4065_ _833_ _847_ _832_ vdd gnd AND2X2
XFILL_2__3758_ gnd vdd FILL
XFILL_0__3740_ gnd vdd FILL
XFILL_0__3320_ gnd vdd FILL
XFILL_2__3338_ gnd vdd FILL
XFILL_4__4625_ gnd vdd FILL
XFILL_4__4205_ gnd vdd FILL
XFILL_0__4945_ gnd vdd FILL
XFILL_3__2622_ gnd vdd FILL
XFILL_0__4525_ gnd vdd FILL
XFILL_0__4105_ gnd vdd FILL
XFILL_1__3901_ gnd vdd FILL
XFILL_3__3827_ gnd vdd FILL
XFILL_3__3407_ gnd vdd FILL
X_2971_ _1617_ _1624_ vdd gnd INVX1
X_2551_ _2354__2_bF$buf5 _2024_ _1634__bF$buf2 _2276_ vdd gnd OAI21X1
XFILL_2__4296_ gnd vdd FILL
X_3756_ _1070__bF$buf0 _555_ vdd gnd INVX1
X_3336_ reset _181_ _180_ vdd gnd NOR2X1
XFILL_2__2609_ gnd vdd FILL
XFILL_3__3580_ gnd vdd FILL
XFILL_1__3498_ gnd vdd FILL
XFILL_3__4785_ gnd vdd FILL
XFILL_3__4365_ gnd vdd FILL
XFILL_2__2782_ gnd vdd FILL
XFILL_2__2362_ gnd vdd FILL
X_4294_ \u_cpu.DIMUX\[4] _1070__bF$buf2 _1040_ _1039_ vdd gnd OAI21X1
XFILL_2__3987_ gnd vdd FILL
XFILL_2__3567_ gnd vdd FILL
X_2607_ _2122_ _2125_ _1973_ _2126_ vdd gnd AOI21X1
XFILL_4__4854_ gnd vdd FILL
XFILL_4__4434_ gnd vdd FILL
XFILL_4__4014_ gnd vdd FILL
XFILL_0__4754_ gnd vdd FILL
XFILL_3__2851_ gnd vdd FILL
XFILL_3__2431_ gnd vdd FILL
XFILL_0__4334_ gnd vdd FILL
XFILL_1__2769_ gnd vdd FILL
XFILL_1__3710_ gnd vdd FILL
XFILL_3__3636_ gnd vdd FILL
XFILL_3__3216_ gnd vdd FILL
X_2780_ _2354__3_bF$buf1 _1928_ _1634__bF$buf1 _1956_ vdd gnd OAI21X1
X_2360_ _2354_[11] AB[11] vdd gnd BUFX2
XFILL_1__4915_ gnd vdd FILL
XFILL_4__2920_ gnd vdd FILL
XFILL_4__2500_ gnd vdd FILL
X_3985_ _975_ _760_ _759_ _1455_ vdd gnd OAI21X1
X_3565_ _1428_ _370_ _369_ vdd gnd OR2X2
X_3145_ _1417__bF$buf10 vdd _1454_ clk_bF$buf4 \u_cpu.index_y\ vdd 
+ gnd
+ DFFSR
XFILL_0__2820_ gnd vdd FILL
XFILL_2__2838_ gnd vdd FILL
XFILL_0__2400_ gnd vdd FILL
XFILL_2__2418_ gnd vdd FILL
XFILL_4__3705_ gnd vdd FILL
XFILL_0__3605_ gnd vdd FILL
XFILL_3__4594_ gnd vdd FILL
XFILL_3__4174_ gnd vdd FILL
XFILL_2__2591_ gnd vdd FILL
XFILL_3__2907_ gnd vdd FILL
XFILL_2__3796_ gnd vdd FILL
XFILL_2__3376_ gnd vdd FILL
X_2836_ _1658_ _1659_ vdd gnd INVX2
X_2416_ _2018_ _2267_ _2354__6_bF$buf1 _58_ vdd gnd AOI21X1
XFILL_4__4663_ gnd vdd FILL
XFILL_4__4243_ gnd vdd FILL
XFILL_0__4983_ gnd vdd FILL
XFILL_3__2660_ gnd vdd FILL
XFILL_0__4563_ gnd vdd FILL
XFILL_0__4143_ gnd vdd FILL
XFILL_1__2998_ gnd vdd FILL
XFILL_1__2578_ gnd vdd FILL
XFILL_3__3865_ gnd vdd FILL
XFILL_3__3445_ gnd vdd FILL
XFILL_3__3025_ gnd vdd FILL
XFILL_1__4724_ gnd vdd FILL
XFILL_1__4304_ gnd vdd FILL
X_3794_ _592_ _2354_[3] vdd gnd INVX8
X_3374_ _212_ _210_ _746_ _209_ vdd gnd OAI21X1
XFILL_2__2647_ gnd vdd FILL
XFILL_4__3934_ gnd vdd FILL
XFILL_4__3514_ gnd vdd FILL
X_4999_ _2354__7_bF$buf0 clk_bF$buf12 _Addr_Bus[7] vdd gnd DFFPOSX1
X_4579_ _1329_ _1326_ _1308_ _1307_ vdd gnd OAI21X1
X_4159_ \u_cpu.AXYS[3]\[0] _921_ _920_ vdd gnd NAND2X1
XFILL_0__3834_ gnd vdd FILL
XFILL_0__3414_ gnd vdd FILL
XFILL_4__4719_ gnd vdd FILL
XFILL_3__2716_ gnd vdd FILL
XFILL_0__4619_ gnd vdd FILL
XFILL_2__3185_ gnd vdd FILL
X_2645_ _2088_ _2089_ vdd gnd INVX1
XFILL_4__4892_ gnd vdd FILL
XFILL_4__4472_ gnd vdd FILL
XFILL_4__4052_ gnd vdd FILL
XFILL_0__4792_ gnd vdd FILL
XFILL_0__4372_ gnd vdd FILL
XFILL_1__2387_ gnd vdd FILL
XFILL_3__3674_ gnd vdd FILL
XFILL_3__3254_ gnd vdd FILL
XFILL_1__4953_ gnd vdd FILL
XFILL_1__4533_ gnd vdd FILL
XFILL_1__4113_ gnd vdd FILL
XFILL_3__4459_ gnd vdd FILL
XFILL_3__4039_ gnd vdd FILL
X_3183_ _977_ _713_ _85_ _1361_ vdd gnd OAI21X1
XFILL_2__2876_ gnd vdd FILL
XFILL_2__2456_ gnd vdd FILL
XFILL_4__3743_ gnd vdd FILL
XFILL_4__3323_ gnd vdd FILL
X_4388_ _1196__bF$buf8 _1345__bF$buf0 _1129_ vdd gnd NOR2X1
XFILL_0__3643_ gnd vdd FILL
XFILL_0__3223_ gnd vdd FILL
XFILL_2__4602_ gnd vdd FILL
XFILL_4__4948_ gnd vdd FILL
XFILL_4__4528_ gnd vdd FILL
XFILL_4__4108_ gnd vdd FILL
XFILL_0__4848_ gnd vdd FILL
XFILL_3__2945_ gnd vdd FILL
XFILL_3__2525_ gnd vdd FILL
XFILL_0__4428_ gnd vdd FILL
XFILL_0__4008_ gnd vdd FILL
XFILL_1__3804_ gnd vdd FILL
X_2874_ _1514_ vdd _1509_ clk_bF$buf3 DO_dsp[4] vdd 
+ gnd
+ DFFSR
X_2454_ _16_ _20_ _2354__6_bF$buf0 _11_ _21_ vdd 
+ gnd
+ OAI22X1
XFILL_4__4281_ gnd vdd FILL
XFILL_2__4199_ gnd vdd FILL
XFILL_0__4181_ gnd vdd FILL
X_3659_ RDY_bF$buf5 _464_ _463_ _462_ vdd gnd OAI21X1
X_3239_ _352_ _800__bF$buf4 _123_ _1379_ vdd gnd OAI21X1
XFILL_0__2914_ gnd vdd FILL
X_4600_ _1329_ _1328_ vdd gnd INVX8
XFILL_3__3483_ gnd vdd FILL
XFILL_1__4762_ gnd vdd FILL
XFILL_1__4342_ gnd vdd FILL
XFILL_3__4688_ gnd vdd FILL
XFILL_3__4268_ gnd vdd FILL
XFILL_2__2685_ gnd vdd FILL
XFILL_4__3972_ gnd vdd FILL
XFILL_4__3552_ gnd vdd FILL
X_4197_ _955_ _954_ _1070__bF$buf3 _953_ vdd gnd OAI21X1
XFILL_0__3872_ gnd vdd FILL
XFILL_0__3452_ gnd vdd FILL
XFILL_0__3032_ gnd vdd FILL
XFILL_2__4831_ gnd vdd FILL
XFILL_2__4411_ gnd vdd FILL
XFILL_4__4757_ gnd vdd FILL
XFILL_4__4337_ gnd vdd FILL
XFILL_3__2754_ gnd vdd FILL
XFILL_0__4657_ gnd vdd FILL
XFILL_0__4237_ gnd vdd FILL
XFILL_1__3613_ gnd vdd FILL
XFILL_3__3959_ gnd vdd FILL
XFILL_3__3539_ gnd vdd FILL
X_2683_ _2049_ _2050_ _1643__bF$buf0 _2051_ vdd gnd AOI21X1
XFILL_4__4090_ gnd vdd FILL
XFILL_3__4900_ gnd vdd FILL
XFILL_1__4818_ gnd vdd FILL
XFILL_4__2823_ gnd vdd FILL
XFILL_4__2403_ gnd vdd FILL
X_3888_ _689_ _1129__bF$buf3 _677_ _1440_ vdd gnd OAI21X1
X_3468_ _857_ _363_ _283_ vdd gnd NOR2X1
X_3048_ _1417__bF$buf7 vdd _1463_ clk_bF$buf1 \u_cpu.AXYS[3]\[2] vdd 
+ gnd
+ DFFSR
XFILL_0__2723_ gnd vdd FILL
XFILL_3__3292_ gnd vdd FILL
XFILL_4__3608_ gnd vdd FILL
XFILL_0__3928_ gnd vdd FILL
XFILL_0__3508_ gnd vdd FILL
XFILL_1__4571_ gnd vdd FILL
XFILL_1__4151_ gnd vdd FILL
XFILL_3__4497_ gnd vdd FILL
XFILL_3__4077_ gnd vdd FILL
XFILL_2__2494_ gnd vdd FILL
XFILL_4__3781_ gnd vdd FILL
XFILL_4__3361_ gnd vdd FILL
XFILL_2__3699_ gnd vdd FILL
XFILL_0__3681_ gnd vdd FILL
XFILL_2__3279_ gnd vdd FILL
XFILL_0__3261_ gnd vdd FILL
XFILL_2__4640_ gnd vdd FILL
XFILL_2__4220_ gnd vdd FILL
X_2739_ _1994_ _1995_ _1914_ _1996_ vdd gnd OAI21X1
XFILL_4__4566_ gnd vdd FILL
XFILL_4__4146_ gnd vdd FILL
XFILL_0__4886_ gnd vdd FILL
XFILL_3__2983_ gnd vdd FILL
XFILL_3__2563_ gnd vdd FILL
XFILL_0__4466_ gnd vdd FILL
XFILL_0__4046_ gnd vdd FILL
XFILL_1__3842_ gnd vdd FILL
XFILL_1__3422_ gnd vdd FILL
XFILL_1__3002_ gnd vdd FILL
XFILL_3__3768_ gnd vdd FILL
XFILL_3__3348_ gnd vdd FILL
XFILL272850x36150 gnd vdd FILL
X_2492_ _2331_ _2333_ _2354__4_bF$buf0 _2334_ vdd gnd OAI21X1
XFILL_1__4627_ gnd vdd FILL
XFILL_1__4207_ gnd vdd FILL
XFILL_4__2632_ gnd vdd FILL
X_3697_ _1345__bF$buf1 _573_ _502_ _498_ vdd gnd NAND3X1
X_3277_ reset _181_ \u_cpu.IRHOLD\[1] _145_ vdd gnd OAI21X1
XFILL_0__2532_ gnd vdd FILL
XFILL_2__3911_ gnd vdd FILL
XFILL_4__3837_ gnd vdd FILL
XFILL_4__3417_ gnd vdd FILL
XFILL_0__3737_ gnd vdd FILL
XFILL_0__3317_ gnd vdd FILL
X_5003_ _2354_[8] clk_bF$buf6 _Addr_Bus[8] vdd gnd DFFPOSX1
XFILL_1__4380_ gnd vdd FILL
XFILL_3__2619_ gnd vdd FILL
XFILL_4__3590_ gnd vdd FILL
XFILL_4__3170_ gnd vdd FILL
XFILL_0__3490_ gnd vdd FILL
X_2968_ _1512_ _1500_ _1627_ vdd gnd NAND2X1
X_2548_ _2000_ _1663_ _2279_ vdd gnd NAND2X1
XFILL_4__4795_ gnd vdd FILL
XFILL_4__4375_ gnd vdd FILL
XFILL_3__2792_ gnd vdd FILL
XFILL_0__4695_ gnd vdd FILL
XFILL_3__2372_ gnd vdd FILL
XFILL_0__4275_ gnd vdd FILL
XFILL_1__3651_ gnd vdd FILL
XFILL_1__3231_ gnd vdd FILL
XFILL_3__3997_ gnd vdd FILL
XFILL_3__3577_ gnd vdd FILL
XFILL_1__4856_ gnd vdd FILL
XFILL_1__4436_ gnd vdd FILL
XFILL_1__4016_ gnd vdd FILL
XFILL_4__2861_ gnd vdd FILL
XFILL_4__2441_ gnd vdd FILL
X_3086_ _1417__bF$buf5 vdd _1440_ clk_bF$buf11 \u_cpu.load_reg\ vdd 
+ gnd
+ DFFSR
XFILL_0__2761_ gnd vdd FILL
XFILL_2__2779_ gnd vdd FILL
XFILL_2__2359_ gnd vdd FILL
XFILL_2__3720_ gnd vdd FILL
XFILL_2__3300_ gnd vdd FILL
XFILL_4__3646_ gnd vdd FILL
XFILL_4__3226_ gnd vdd FILL
XFILL_0__3966_ gnd vdd FILL
XFILL_0__3546_ gnd vdd FILL
XFILL_2__4925_ gnd vdd FILL
XFILL_2__4505_ gnd vdd FILL
XFILL_1__2922_ gnd vdd FILL
XFILL_1__2502_ gnd vdd FILL
XFILL_3__2848_ gnd vdd FILL
XFILL_3__2428_ gnd vdd FILL
XFILL_1__3707_ gnd vdd FILL
X_2777_ _2354__3_bF$buf1 _1636__bF$buf3 _1647_ _1959_ vdd gnd NAND3X1
X_2357_ _2354_[14] AB[14] vdd gnd BUFX2
XFILL_4__4184_ gnd vdd FILL
XFILL_0__4084_ gnd vdd FILL
XFILL_4__2917_ gnd vdd FILL
XFILL273450x97350 gnd vdd FILL
XFILL_0__2817_ gnd vdd FILL
X_4923_ _2198_ DO_kbd[6] _2195_ _2199_ vdd gnd AOI21X1
X_4503_ _1239_ _1235_ _1232_ _1231_ vdd gnd NAND3X1
XFILL_1__3880_ gnd vdd FILL
XFILL_1__3460_ gnd vdd FILL
XFILL_3__3386_ gnd vdd FILL
XFILL_1__4665_ gnd vdd FILL
XFILL_1__4245_ gnd vdd FILL
XFILL_4__2670_ gnd vdd FILL
XFILL_0__2990_ gnd vdd FILL
XFILL_0__2570_ gnd vdd FILL
XFILL_2__2588_ gnd vdd FILL
XFILL_4__3875_ gnd vdd FILL
XFILL_4__3455_ gnd vdd FILL
XFILL_0__3775_ gnd vdd FILL
XFILL_0__3355_ gnd vdd FILL
XFILL_2__4734_ gnd vdd FILL
XFILL_2__4314_ gnd vdd FILL
XFILL_1__2731_ gnd vdd FILL
XFILL_3__2657_ gnd vdd FILL
XFILL_1__3936_ gnd vdd FILL
XFILL_1__3516_ gnd vdd FILL
X_2586_ _2077_ _2146_ _2147_ vdd gnd NOR2X1
XFILL_3__4803_ gnd vdd FILL
XFILL_2__2800_ gnd vdd FILL
XFILL_4__2726_ gnd vdd FILL
XFILL_0__2626_ gnd vdd FILL
X_4732_ _1779_ _1783_ _1784_ _1785_ vdd gnd OAI21X1
X_4312_ _1058_ _1065_ _1057_ vdd gnd NAND2X1
XFILL_3__3195_ gnd vdd FILL
XFILL_1__4894_ gnd vdd FILL
XFILL_1__4474_ gnd vdd FILL
XFILL_1__4054_ gnd vdd FILL
XFILL_2__2397_ gnd vdd FILL
XFILL_4__3684_ gnd vdd FILL
XFILL_4__3264_ gnd vdd FILL
XFILL_0__3584_ gnd vdd FILL
XFILL_2__4963_ gnd vdd FILL
XFILL_2__4543_ gnd vdd FILL
XFILL_2__4123_ gnd vdd FILL
XFILL_4__4889_ gnd vdd FILL
XFILL_4__4469_ gnd vdd FILL
XFILL_4__4049_ gnd vdd FILL
XFILL_1__2540_ gnd vdd FILL
XFILL_0__4789_ gnd vdd FILL
XFILL_3__2886_ gnd vdd FILL
XFILL_0__4369_ gnd vdd FILL
XFILL_3__2466_ gnd vdd FILL
XFILL_1__3745_ gnd vdd FILL
XFILL_1__3325_ gnd vdd FILL
X_2395_ _1425_ _1422_ _2354__6_bF$buf1 _1426_ vdd gnd AOI21X1
XFILL_3__4612_ gnd vdd FILL
XFILL_4__2535_ gnd vdd FILL
XFILL_0__2855_ gnd vdd FILL
XFILL_0__2435_ gnd vdd FILL
X_4961_ _2231_ _2186_ _2232_ vdd gnd NAND2X1
X_4541_ _1314_ _1300_ _1339_ _1269_ vdd gnd OAI21X1
X_4121_ \u_cpu.state\[5] _888_ _890_ _887_ vdd gnd OAI21X1
XFILL_2__3814_ gnd vdd FILL
XFILL_1__4283_ gnd vdd FILL
XFILL_4__3493_ gnd vdd FILL
XFILL_0__3393_ gnd vdd FILL
XFILL_2__4772_ gnd vdd FILL
XFILL_2__4352_ gnd vdd FILL
XFILL_4__4698_ gnd vdd FILL
XFILL_4__4278_ gnd vdd FILL
X_3812_ \u_cpu.AXYS[1]\[0] _1050_ _922_ \u_cpu.AXYS[3]\[0] _608_ vdd 
+ gnd
+ AOI22X1
XFILL_3__2695_ gnd vdd FILL
XFILL_0__4598_ gnd vdd FILL
XFILL_0__4178_ gnd vdd FILL
XFILL_1__3974_ gnd vdd FILL
XFILL_1__3554_ gnd vdd FILL
XFILL_3__4841_ gnd vdd FILL
XFILL_3__4421_ gnd vdd FILL
XFILL_3__4001_ gnd vdd FILL
XFILL_1__4759_ gnd vdd FILL
XFILL_1__4339_ gnd vdd FILL
XFILL_4__2764_ gnd vdd FILL
XFILL_0__2664_ gnd vdd FILL
X_4770_ \u_cpu.alu_op\[3] _1699_ _1816_ _1823_ vdd gnd OAI21X1
X_4350_ _1206_ \u_cpu.ABH\[6] _1095_ _1094_ vdd gnd AOI21X1
XFILL_2__3623_ gnd vdd FILL
XFILL_2__3203_ gnd vdd FILL
XFILL_4__3969_ gnd vdd FILL
XFILL_4__3549_ gnd vdd FILL
XFILL273750x50550 gnd vdd FILL
XFILL_4__4910_ gnd vdd FILL
XFILL_0__3869_ gnd vdd FILL
XFILL_0__3449_ gnd vdd FILL
XFILL_0__3029_ gnd vdd FILL
XFILL_1__4092_ gnd vdd FILL
XFILL_2__4828_ gnd vdd FILL
XFILL_0__4810_ gnd vdd FILL
XFILL_2__4408_ gnd vdd FILL
XFILL_1__2825_ gnd vdd FILL
XFILL_1__2405_ gnd vdd FILL
XFILL_2__4581_ gnd vdd FILL
XFILL_2__4161_ gnd vdd FILL
XFILL_4__4087_ gnd vdd FILL
X_3621_ _428_ _525_ _426_ _425_ vdd gnd NAND3X1
X_3201_ _1041_ _952_ _97_ _1367_ vdd gnd OAI21X1
X_4826_ _1870_ _1869_ \u_cpu.AV\ vdd gnd NAND2X1
X_4406_ _1160_ _1146_ _1171_ _1144_ vdd gnd NOR3X1
XFILL_1__3783_ gnd vdd FILL
XFILL_1__3363_ gnd vdd FILL
XFILL_3__3289_ gnd vdd FILL
XFILL_3__4650_ gnd vdd FILL
XFILL_3__4230_ gnd vdd FILL
XFILL_1__4568_ gnd vdd FILL
XFILL_1__4148_ gnd vdd FILL
XFILL_4__2993_ gnd vdd FILL
XFILL_4__2573_ gnd vdd FILL
XFILL_0__2893_ gnd vdd FILL
XFILL_0__2473_ gnd vdd FILL
XFILL_2__3852_ gnd vdd FILL
XFILL_2__3432_ gnd vdd FILL
XFILL_2__3012_ gnd vdd FILL
XFILL_4__3778_ gnd vdd FILL
XFILL_4__3358_ gnd vdd FILL
XFILL_0__3678_ gnd vdd FILL
XFILL_0__3258_ gnd vdd FILL
XFILL_2__4637_ gnd vdd FILL
XFILL_2__4217_ gnd vdd FILL
XFILL_1__2634_ gnd vdd FILL
XFILL_3__3921_ gnd vdd FILL
XFILL_3__3501_ gnd vdd FILL
XFILL_1__3839_ gnd vdd FILL
XFILL_1__3419_ gnd vdd FILL
XFILL_2__4390_ gnd vdd FILL
X_2489_ _2336_ _2335_ _2337_ vdd gnd NAND2X1
XFILL_3__4706_ gnd vdd FILL
X_3850_ \u_cpu.AXYS[0]\[6] _643_ vdd gnd INVX1
X_3430_ \u_cpu.D\ _613_ _257_ _256_ vdd gnd AOI21X1
X_3010_ _1586_ _1585_ _1587_ _1588_ vdd gnd NAND3X1
XFILL_2__2703_ gnd vdd FILL
XFILL_4__2629_ gnd vdd FILL
XFILL_1_BUFX2_insert10 gnd vdd FILL
XFILL_1_BUFX2_insert11 gnd vdd FILL
XFILL_1_BUFX2_insert12 gnd vdd FILL
XFILL_1_BUFX2_insert13 gnd vdd FILL
XFILL_1_BUFX2_insert14 gnd vdd FILL
XFILL_1_BUFX2_insert15 gnd vdd FILL
XFILL_1_BUFX2_insert16 gnd vdd FILL
XFILL_1_BUFX2_insert17 gnd vdd FILL
XFILL_1_BUFX2_insert18 gnd vdd FILL
XFILL_1_BUFX2_insert19 gnd vdd FILL
XFILL_0__2949_ gnd vdd FILL
XFILL_0__2529_ gnd vdd FILL
X_4635_ \u_cpu.alu_op\[1] _1687_ _1688_ vdd gnd NOR2X1
X_4215_ \u_cpu.HC\ _970_ _969_ vdd gnd NOR2X1
XFILL_1__3592_ gnd vdd FILL
XFILL_1__3172_ gnd vdd FILL
XFILL_2__3908_ gnd vdd FILL
XFILL_1__4797_ gnd vdd FILL
XFILL_1__4377_ gnd vdd FILL
XFILL_4__2382_ gnd vdd FILL
XFILL_2__3661_ gnd vdd FILL
XFILL_2__3241_ gnd vdd FILL
XFILL_4__3587_ gnd vdd FILL
XFILL_4__3167_ gnd vdd FILL
X_2701_ _1635__bF$buf1 _2354__2_bF$buf2 _1643__bF$buf2 _2034_ vdd gnd AOI21X1
XFILL_0__3487_ gnd vdd FILL
XFILL_2__4866_ gnd vdd FILL
XFILL_2__4446_ gnd vdd FILL
XFILL_2__4026_ gnd vdd FILL
X_3906_ _1192_ _897_ _693_ _692_ vdd gnd OAI21X1
XFILL_1__2443_ gnd vdd FILL
XFILL_3__2789_ gnd vdd FILL
XFILL_3__2369_ gnd vdd FILL
XFILL_3__3730_ gnd vdd FILL
XFILL_3__3310_ gnd vdd FILL
XFILL_1__3648_ gnd vdd FILL
XFILL_1__3228_ gnd vdd FILL
XFILL_3__4935_ gnd vdd FILL
XFILL_3__4515_ gnd vdd FILL
XFILL_2__2932_ gnd vdd FILL
XFILL_2__2512_ gnd vdd FILL
XFILL_4__2858_ gnd vdd FILL
XFILL_4__2438_ gnd vdd FILL
XFILL_0__2758_ gnd vdd FILL
X_4864_ _1903_ _1900_ _1681__bF$buf3 _1904_ vdd gnd AOI21X1
X_4444_ \u_cpu.ADD\[2] _1178_ vdd gnd INVX1
X_4024_ _1026_ _794_ _795_ _1458_ vdd gnd OAI21X1
XFILL_2__3717_ gnd vdd FILL
XFILL_1__4186_ gnd vdd FILL
XFILL_0__4904_ gnd vdd FILL
XFILL_1__2919_ gnd vdd FILL
XFILL_2__3890_ gnd vdd FILL
XFILL_2__3470_ gnd vdd FILL
XFILL_4__3396_ gnd vdd FILL
X_2930_ _1538_ _1525_ _1539_ _1540_ vdd gnd NAND3X1
X_2510_ _2315_ _2310_ _2316_ vdd gnd NAND2X1
XFILL_0__3296_ gnd vdd FILL
XFILL_2__4675_ gnd vdd FILL
XFILL_2__4255_ gnd vdd FILL
X_3715_ _1121_ _1005_ _514_ vdd gnd NOR2X1
XFILL_1__2672_ gnd vdd FILL
XFILL_3__2598_ gnd vdd FILL
XFILL_1__3877_ gnd vdd FILL
XFILL_1__3457_ gnd vdd FILL
XFILL_3__4744_ gnd vdd FILL
XFILL_3__4324_ gnd vdd FILL
XFILL_2__2741_ gnd vdd FILL
XFILL_4__2667_ gnd vdd FILL
XFILL_0__2987_ gnd vdd FILL
XFILL_0__2567_ gnd vdd FILL
X_4673_ _1725_ _1726_ vdd gnd INVX1
X_4253_ _1118_ _1005_ vdd gnd INVX1
XFILL_2__3946_ gnd vdd FILL
XFILL_2__3526_ gnd vdd FILL
XFILL_4__4813_ gnd vdd FILL
XFILL_0__4713_ gnd vdd FILL
XFILL_3__2810_ gnd vdd FILL
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
XFILL_2_BUFX2_insert69 gnd vdd FILL
XFILL_2__4484_ gnd vdd FILL
XFILL_2__4064_ gnd vdd FILL
X_3944_ _1032_ _722_ vdd gnd INVX1
X_3524_ _360_ _334_ vdd gnd INVX1
X_3104_ _1417__bF$buf8 vdd _1388_ clk_bF$buf10 \u_cpu.ABL\[4] vdd 
+ gnd
+ DFFSR
XFILL_1__2481_ gnd vdd FILL
X_4729_ _1773_ _1698_ _1781_ _1782_ vdd gnd OAI21X1
X_4309_ _1344_ _1059_ _1054_ vdd gnd NOR2X1
XFILL_1__3686_ gnd vdd FILL
XFILL_1__3266_ gnd vdd FILL
XFILL_3__4973_ gnd vdd FILL
XFILL_3__4553_ gnd vdd FILL
XFILL_3__4133_ gnd vdd FILL
XFILL_2__2970_ gnd vdd FILL
XFILL_2__2550_ gnd vdd FILL
XFILL_4__2896_ gnd vdd FILL
XFILL_4__2476_ gnd vdd FILL
XFILL_0__2796_ gnd vdd FILL
XFILL_0__2376_ gnd vdd FILL
X_4482_ _1355_ RDY_bF$buf7 _1211_ _1490_ vdd gnd OAI21X1
X_4062_ _1045_ _848_ _830_ _829_ vdd gnd NAND3X1
XFILL_2__3755_ gnd vdd FILL
XFILL_2__3335_ gnd vdd FILL
XFILL_4__4622_ gnd vdd FILL
XFILL_4__4202_ gnd vdd FILL
XFILL_0__4942_ gnd vdd FILL
XFILL_0__4522_ gnd vdd FILL
XFILL_0__4102_ gnd vdd FILL
XFILL_1__2537_ gnd vdd FILL
XFILL_3__3824_ gnd vdd FILL
XFILL_3__3404_ gnd vdd FILL
XFILL_2__4293_ gnd vdd FILL
XFILL_3__4609_ gnd vdd FILL
X_3753_ _1196__bF$buf3 _555_ _553_ _1129__bF$buf2 _552_ vdd 
+ gnd
+ AOI22X1
X_3333_ _1113_ _179_ _178_ _1418_ vdd gnd OAI21X1
XFILL_2__2606_ gnd vdd FILL
X_4958_ DO_dsp[1] _2229_ vdd gnd INVX1
X_4538_ _1267_ _1297_ _1315__bF$buf0 _1266_ vdd gnd OAI21X1
X_4118_ _885_ _1333_ _884_ vdd gnd AND2X2
XFILL_1__3495_ gnd vdd FILL
XFILL_3__4782_ gnd vdd FILL
XFILL_3__4362_ gnd vdd FILL
X_4291_ _1129__bF$buf3 _1037_ vdd gnd INVX4
XFILL_2__3984_ gnd vdd FILL
XFILL_2__3564_ gnd vdd FILL
X_2604_ _1647_ _1644_ _2354__4_bF$buf4 _2129_ vdd gnd OAI21X1
XFILL_4__4851_ gnd vdd FILL
XFILL_4__4431_ gnd vdd FILL
XFILL_4__4011_ gnd vdd FILL
XFILL_0__4751_ gnd vdd FILL
XFILL_2__4769_ gnd vdd FILL
XFILL_2__4349_ gnd vdd FILL
XFILL_0__4331_ gnd vdd FILL
X_3809_ \u_cpu.C\ _613_ _636_ \u_cpu.PC\[0] _605_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2766_ gnd vdd FILL
XFILL_3__3633_ gnd vdd FILL
XFILL_3__3213_ gnd vdd FILL
XFILL_1__4912_ gnd vdd FILL
XFILL_3__4838_ gnd vdd FILL
XFILL_3__4418_ gnd vdd FILL
X_3982_ _757_ _1024_ _756_ vdd gnd NAND2X1
X_3562_ _368_ _746_ _367_ vdd gnd NAND2X1
X_3142_ _1417__bF$buf7 vdd _1407_ clk_bF$buf1 \u_cpu.AXYS[3]\[5] vdd 
+ gnd
+ DFFSR
XFILL_2__2835_ gnd vdd FILL
XFILL_2__2415_ gnd vdd FILL
XFILL_4__3702_ gnd vdd FILL
X_4767_ \u_cpu.alu_op\[0] _1816_ _1683_ _1820_ vdd gnd OAI21X1
X_4347_ _1092_ _1091_ vdd gnd INVX1
XFILL_0__3602_ gnd vdd FILL
XFILL_3__4591_ gnd vdd FILL
XFILL_3__4171_ gnd vdd FILL
XFILL_4__4907_ gnd vdd FILL
XFILL_1__4089_ gnd vdd FILL
XFILL_0__4807_ gnd vdd FILL
XFILL_3__2904_ gnd vdd FILL
XFILL_2__3793_ gnd vdd FILL
XFILL_2__3373_ gnd vdd FILL
XFILL_4__3299_ gnd vdd FILL
X_2833_ _1661_ _1660_ _1662_ vdd gnd NOR2X1
X_2413_ _2354__6_bF$buf1 _60_ _57_ _58_ _61_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4660_ gnd vdd FILL
XFILL_4__4240_ gnd vdd FILL
XFILL_0__3199_ gnd vdd FILL
XFILL_0__4980_ gnd vdd FILL
XFILL_0__4560_ gnd vdd FILL
XFILL_2__4578_ gnd vdd FILL
XFILL_0__4140_ gnd vdd FILL
XFILL_2__4158_ gnd vdd FILL
X_3618_ _475_ _423_ _578_ _422_ vdd gnd NAND3X1
XFILL_1__2995_ gnd vdd FILL
XFILL_1__2575_ gnd vdd FILL
XFILL_3__3862_ gnd vdd FILL
XFILL_3__3442_ gnd vdd FILL
XFILL_3__3022_ gnd vdd FILL
XFILL_1__4721_ gnd vdd FILL
XFILL_1__4301_ gnd vdd FILL
XFILL_3__4647_ gnd vdd FILL
XFILL_3__4227_ gnd vdd FILL
X_3791_ _591_ _1315__bF$buf1 _590_ _589_ vdd gnd OAI21X1
X_3371_ _217_ _216_ _207_ \u_cpu.CI\ vdd gnd NAND3X1
XFILL_2__2644_ gnd vdd FILL
XFILL_4__3931_ gnd vdd FILL
XFILL_4__3511_ gnd vdd FILL
X_4996_ _2354__0_bF$buf5 clk_bF$buf6 _Addr_Bus[0] vdd gnd DFFPOSX1
X_4576_ \u_cpu.state\[3] _1354_ _1304_ vdd gnd NAND2X1
X_4156_ _963_ _921_ _919_ _1464_ vdd gnd OAI21X1
XFILL_2__3849_ gnd vdd FILL
XFILL_0__3831_ gnd vdd FILL
XFILL_2__3429_ gnd vdd FILL
XFILL_0__3411_ gnd vdd FILL
XFILL_2__3009_ gnd vdd FILL
XFILL_4__4716_ gnd vdd FILL
XFILL_3__2713_ gnd vdd FILL
XFILL_0__4616_ gnd vdd FILL
XFILL_2__3182_ gnd vdd FILL
XFILL_3__3918_ gnd vdd FILL
X_2642_ _2354__6_bF$buf0 _2085_ _2091_ _2092_ vdd gnd NAND3X1
XFILL_2__4387_ gnd vdd FILL
X_3847_ _641_ _644_ _640_ vdd gnd OR2X2
X_3427_ _638_ _857_ \u_cpu.PC\[1] _254_ vdd gnd OAI21X1
X_3007_ _Addr_Bus[7] _Addr_Bus[3] _1591_ vdd gnd NOR2X1
XFILL_1__2384_ gnd vdd FILL
XFILL_3__3671_ gnd vdd FILL
XFILL_3__3251_ gnd vdd FILL
XFILL_1__3589_ gnd vdd FILL
XFILL_1__3169_ gnd vdd FILL
XFILL_1__4950_ gnd vdd FILL
XFILL_1__4530_ gnd vdd FILL
XFILL_1__4110_ gnd vdd FILL
XFILL_3__4456_ gnd vdd FILL
XFILL_3__4036_ gnd vdd FILL
X_3180_ RDY_bF$buf1 _1226_ _82_ vdd gnd NAND2X1
XFILL_2__2453_ gnd vdd FILL
XFILL_4__2799_ gnd vdd FILL
XFILL_4__2379_ gnd vdd FILL
XFILL_4__3740_ gnd vdd FILL
XFILL_4__3320_ gnd vdd FILL
XFILL_0__2699_ gnd vdd FILL
X_4385_ _1340_ _1127_ _1126_ vdd gnd NAND2X1
XFILL_2__3658_ gnd vdd FILL
XFILL_0__3640_ gnd vdd FILL
XFILL_0__3220_ gnd vdd FILL
XFILL_2__3238_ gnd vdd FILL
XFILL_4__4945_ gnd vdd FILL
XFILL_4__4525_ gnd vdd FILL
XFILL_4__4105_ gnd vdd FILL
XFILL_0__4845_ gnd vdd FILL
XFILL_3__2942_ gnd vdd FILL
XFILL_3__2522_ gnd vdd FILL
XFILL_0__4425_ gnd vdd FILL
XFILL_0__4005_ gnd vdd FILL
XFILL_1__3801_ gnd vdd FILL
XFILL_3__3727_ gnd vdd FILL
XFILL_3__3307_ gnd vdd FILL
X_2871_ _1514_ vdd _1507_ clk_bF$buf3 DO_dsp[2] vdd 
+ gnd
+ DFFSR
X_2451_ _1643__bF$buf1 _22_ _23_ _24_ vdd gnd OAI21X1
XFILL_2__4196_ gnd vdd FILL
X_3656_ _1196__bF$buf5 _1274_ _460_ _459_ vdd gnd OAI21X1
X_3236_ _2354_[13] _800__bF$buf0 _121_ vdd gnd NAND2X1
XFILL_0__2911_ gnd vdd FILL
XFILL_2__2929_ gnd vdd FILL
XFILL_2__2509_ gnd vdd FILL
XFILL_3__3480_ gnd vdd FILL
XFILL_1__3398_ gnd vdd FILL
XFILL_3__4685_ gnd vdd FILL
XFILL_3__4265_ gnd vdd FILL
XFILL_2__2682_ gnd vdd FILL
X_4194_ _977_ _952_ _951_ _1470_ vdd gnd OAI21X1
XFILL_2__3887_ gnd vdd FILL
XFILL_2__3467_ gnd vdd FILL
X_2927_ _2353_[3] _1542_ vdd gnd INVX1
X_2507_ _2318_ _2025_ _1634__bF$buf3 _2319_ vdd gnd OAI21X1
XFILL_4__4754_ gnd vdd FILL
XFILL_4__4334_ gnd vdd FILL
XFILL_3__2751_ gnd vdd FILL
XFILL_0__4654_ gnd vdd FILL
XFILL_0__4234_ gnd vdd FILL
XFILL_1__2669_ gnd vdd FILL
XFILL_1__3610_ gnd vdd FILL
XFILL_3__3956_ gnd vdd FILL
XFILL_3__3536_ gnd vdd FILL
X_2680_ _2053_ _2054_ vdd gnd INVX1
XFILL_1__4815_ gnd vdd FILL
XFILL_4__2820_ gnd vdd FILL
XFILL_4__2400_ gnd vdd FILL
X_3885_ \u_cpu.C\ _675_ vdd gnd INVX1
X_3465_ _852_ _809_ _280_ vdd gnd NAND2X1
X_3045_ _1417__bF$buf4 vdd _1362_ clk_bF$buf4 \u_cpu.PC\[1] vdd 
+ gnd
+ DFFSR
XFILL_0__2720_ gnd vdd FILL
XFILL_2__2738_ gnd vdd FILL
XFILL_4__3605_ gnd vdd FILL
XFILL_0__3925_ gnd vdd FILL
XFILL_0__3505_ gnd vdd FILL
XFILL_3__4494_ gnd vdd FILL
XFILL_3__4074_ gnd vdd FILL
XFILL_2__2491_ gnd vdd FILL
XFILL_3__2807_ gnd vdd FILL
XFILL_2__3696_ gnd vdd FILL
XFILL_2__3276_ gnd vdd FILL
X_2736_ _1993_ _1998_ _1999_ vdd gnd NAND2X1
XFILL_4__4983_ gnd vdd FILL
XFILL_4__4563_ gnd vdd FILL
XFILL273150x75750 gnd vdd FILL
XFILL_4__4143_ gnd vdd FILL
XFILL_0__4883_ gnd vdd FILL
XFILL_3__2980_ gnd vdd FILL
XFILL_3__2560_ gnd vdd FILL
XFILL_0__4463_ gnd vdd FILL
XFILL_0__4043_ gnd vdd FILL
XFILL_1__2898_ gnd vdd FILL
XFILL_1__2478_ gnd vdd FILL
XFILL_3__3765_ gnd vdd FILL
XFILL_3__3345_ gnd vdd FILL
XFILL_1__4624_ gnd vdd FILL
XFILL_1__4204_ gnd vdd FILL
X_3694_ _1328__bF$buf4 _914_ _497_ vdd gnd NOR2X1
X_3274_ _1207_ _179_ _144_ _1393_ vdd gnd OAI21X1
XFILL_2__2967_ gnd vdd FILL
XFILL_2__2547_ gnd vdd FILL
XFILL_4__3834_ gnd vdd FILL
XFILL_4__3414_ gnd vdd FILL
X_4899_ _Addr_Bus[1] _2175_ vdd gnd INVX1
X_4479_ RDY_bF$buf2 Data_In[0] _1208_ vdd gnd NAND2X1
X_4059_ _1250_ _826_ vdd gnd INVX1
XFILL_0__3734_ gnd vdd FILL
XFILL_0__3314_ gnd vdd FILL
X_5000_ _2354__3_bF$buf3 clk_bF$buf6 _Addr_Bus[3] vdd gnd DFFPOSX1
XFILL_4__4619_ gnd vdd FILL
XFILL_0__4939_ gnd vdd FILL
XFILL_3__2616_ gnd vdd FILL
XFILL_0__4519_ gnd vdd FILL
X_2965_ kbd_data[5] _1500_ _1629_ vdd gnd NAND2X1
X_2545_ _2354__3_bF$buf6 _1916_ _1944_ _2282_ vdd gnd OAI21X1
XFILL_4__4792_ gnd vdd FILL
XFILL_4__4372_ gnd vdd FILL
XFILL_0__4692_ gnd vdd FILL
XFILL_0__4272_ gnd vdd FILL
XFILL_3__3994_ gnd vdd FILL
XFILL_3__3574_ gnd vdd FILL
XFILL271650x72150 gnd vdd FILL
XFILL_1__4853_ gnd vdd FILL
XFILL_1__4433_ gnd vdd FILL
XFILL_1__4013_ gnd vdd FILL
XFILL_3__4779_ gnd vdd FILL
XFILL_3__4359_ gnd vdd FILL
X_3083_ _1417__bF$buf8 vdd _1378_ clk_bF$buf10 \u_cpu.ABH\[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2776_ gnd vdd FILL
XFILL_2__2356_ gnd vdd FILL
XFILL271650x39750 gnd vdd FILL
XFILL_4__3643_ gnd vdd FILL
XFILL_4__3223_ gnd vdd FILL
X_4288_ _1111_ _1106_ _1034_ vdd gnd NOR2X1
XFILL_0__3963_ gnd vdd FILL
XFILL_0__3543_ gnd vdd FILL
XFILL_2__4922_ gnd vdd FILL
XFILL_2__4502_ gnd vdd FILL
XFILL_4__4848_ gnd vdd FILL
XFILL_4__4428_ gnd vdd FILL
XFILL_4__4008_ gnd vdd FILL
XFILL_0__4748_ gnd vdd FILL
XFILL_3__2845_ gnd vdd FILL
XFILL_3__2425_ gnd vdd FILL
XFILL_0__4328_ gnd vdd FILL
XFILL_1__3704_ gnd vdd FILL
X_2774_ _1949_ _1961_ _1962_ vdd gnd NOR2X1
XFILL_4__4181_ gnd vdd FILL
XFILL_2__4099_ gnd vdd FILL
XFILL_0__4081_ gnd vdd FILL
XFILL_1__4909_ gnd vdd FILL
XFILL_4__2914_ gnd vdd FILL
X_3979_ _1117_ _1024_ _753_ vdd gnd NAND2X1
X_3559_ _833_ _1063_ _364_ vdd gnd AND2X2
X_3139_ _1417__bF$buf2 vdd _1453_ clk_bF$buf9 \u_cpu.N\ vdd 
+ gnd
+ DFFSR
XFILL_0__2814_ gnd vdd FILL
X_4920_ _2181_ _2176_ _2196_ vdd gnd NAND2X1
X_4500_ \u_cpu.ABL\[0] _1298_ _1300_ \u_cpu.ADD\[0] _1228_ vdd 
+ gnd
+ AOI22X1
XFILL_3__3383_ gnd vdd FILL
XFILL_1__4662_ gnd vdd FILL
XFILL_1__4242_ gnd vdd FILL
XFILL_3__4588_ gnd vdd FILL
XFILL_3__4168_ gnd vdd FILL
XFILL_2__2585_ gnd vdd FILL
XFILL_4__3872_ gnd vdd FILL
XFILL_4__3452_ gnd vdd FILL
XFILL_4__3032_ gnd vdd FILL
X_4097_ _1319_ _887_ \u_cpu.DIMUX\[7] _863_ vdd gnd OAI21X1
XFILL_0__3772_ gnd vdd FILL
XFILL_0__3352_ gnd vdd FILL
XFILL_2__4731_ gnd vdd FILL
XFILL_2__4311_ gnd vdd FILL
XFILL_4__4657_ gnd vdd FILL
XFILL_4__4237_ gnd vdd FILL
XFILL_0__4977_ gnd vdd FILL
XFILL_3__2654_ gnd vdd FILL
XFILL_0__4557_ gnd vdd FILL
XFILL_0__4137_ gnd vdd FILL
XFILL_1__3933_ gnd vdd FILL
XFILL_1__3513_ gnd vdd FILL
XFILL_3__3859_ gnd vdd FILL
XFILL_3__3439_ gnd vdd FILL
XFILL_3__3019_ gnd vdd FILL
X_2583_ _2354__4_bF$buf5 _1643__bF$buf0 _2150_ vdd gnd NAND2X1
XFILL_3__4800_ gnd vdd FILL
XFILL_1__4718_ gnd vdd FILL
XFILL_4__2723_ gnd vdd FILL
X_3788_ _587_ _589_ _586_ vdd gnd NOR2X1
X_3368_ _412_ _205_ _394_ _204_ vdd gnd AOI21X1
XFILL_0__2623_ gnd vdd FILL
XFILL_3__3192_ gnd vdd FILL
XFILL_4__3928_ gnd vdd FILL
XFILL_4__3508_ gnd vdd FILL
XFILL_0__3828_ gnd vdd FILL
XFILL_0__3408_ gnd vdd FILL
XFILL_1__4891_ gnd vdd FILL
XFILL_1__4471_ gnd vdd FILL
XFILL_1__4051_ gnd vdd FILL
XFILL_3__4397_ gnd vdd FILL
XFILL_2__2394_ gnd vdd FILL
XFILL_4__3681_ gnd vdd FILL
XFILL_4__3261_ gnd vdd FILL
XFILL_0__3581_ gnd vdd FILL
XFILL_2__3599_ gnd vdd FILL
XFILL_2__3179_ gnd vdd FILL
XFILL_2__4960_ gnd vdd FILL
XFILL_2__4540_ gnd vdd FILL
XFILL_2__4120_ gnd vdd FILL
X_2639_ _2094_ _2093_ _2095_ vdd gnd NAND2X1
XFILL_4__4886_ gnd vdd FILL
XFILL_4__4466_ gnd vdd FILL
XFILL_4__4046_ gnd vdd FILL
XFILL_0__4786_ gnd vdd FILL
XFILL_3__2883_ gnd vdd FILL
XFILL_3__2463_ gnd vdd FILL
XFILL_0__4366_ gnd vdd FILL
XFILL_1__3742_ gnd vdd FILL
XFILL_1__3322_ gnd vdd FILL
XFILL_3__3668_ gnd vdd FILL
XFILL_3__3248_ gnd vdd FILL
X_2392_ _2346_[7] clk_bF$buf6 DO_woz[7] vdd gnd DFFPOSX1
XFILL_1__4947_ gnd vdd FILL
XFILL_1__4527_ gnd vdd FILL
XFILL_1__4107_ gnd vdd FILL
XFILL_4__2532_ gnd vdd FILL
X_3597_ _402_ _403_ _401_ vdd gnd NAND2X1
X_3177_ RDY_bF$buf1 _81_ _1214_ _80_ vdd gnd NAND3X1
XFILL_0__2852_ gnd vdd FILL
XFILL_0__2432_ gnd vdd FILL
XFILL_2__3811_ gnd vdd FILL
XFILL_4__3737_ gnd vdd FILL
XFILL_4__3317_ gnd vdd FILL
XFILL_0__3637_ gnd vdd FILL
XFILL_0__3217_ gnd vdd FILL
XFILL_1__4280_ gnd vdd FILL
XFILL_3__2939_ gnd vdd FILL
XFILL_3__2519_ gnd vdd FILL
XFILL_4__3490_ gnd vdd FILL
XFILL_0__3390_ gnd vdd FILL
X_2868_ vdd _1514_ _1593_ clk_bF$buf3 \u_pia_dsp.state\[0] vdd 
+ gnd
+ DFFSR
X_2448_ _2074_ _2124_ _26_ _27_ vdd gnd AOI21X1
XFILL_4__4695_ gnd vdd FILL
XFILL_4__4275_ gnd vdd FILL
XFILL_3__2692_ gnd vdd FILL
XFILL_0__4595_ gnd vdd FILL
XFILL_0__4175_ gnd vdd FILL
XFILL_0__2908_ gnd vdd FILL
XFILL_1__3971_ gnd vdd FILL
XFILL_1__3551_ gnd vdd FILL
XFILL_3__3897_ gnd vdd FILL
XFILL_3__3477_ gnd vdd FILL
XFILL_1__4756_ gnd vdd FILL
XFILL_1__4336_ gnd vdd FILL
XFILL_4__2761_ gnd vdd FILL
XFILL_2__2679_ gnd vdd FILL
XFILL_0__2661_ gnd vdd FILL
XFILL_2__3620_ gnd vdd FILL
XFILL_2__3200_ gnd vdd FILL
XFILL_4__3966_ gnd vdd FILL
XFILL_4__3546_ gnd vdd FILL
XFILL_0__3866_ gnd vdd FILL
XFILL_0__3446_ gnd vdd FILL
XFILL_0__3026_ gnd vdd FILL
XFILL_2__4825_ gnd vdd FILL
XFILL_2__4405_ gnd vdd FILL
XFILL_1__2822_ gnd vdd FILL
XFILL_1__2402_ gnd vdd FILL
XFILL_3__2748_ gnd vdd FILL
XFILL_1__3607_ gnd vdd FILL
X_2677_ _2052_ _2056_ _2057_ vdd gnd NAND2X1
XFILL_4__4084_ gnd vdd FILL
XFILL_4__2817_ gnd vdd FILL
XFILL_0__2717_ gnd vdd FILL
X_4823_ _1864_ _1867_ _1868_ vdd gnd NAND2X1
X_4403_ RDY_bF$buf4 _1154_ _1142_ _1485_ vdd gnd OAI21X1
XFILL_1__3780_ gnd vdd FILL
XFILL_1__3360_ gnd vdd FILL
XFILL_3__3286_ gnd vdd FILL
XFILL_1__4985_ gnd vdd FILL
XFILL_1__4565_ gnd vdd FILL
XFILL_1__4145_ gnd vdd FILL
XFILL_4__2990_ gnd vdd FILL
XFILL_4__2570_ gnd vdd FILL
XFILL_0__2890_ gnd vdd FILL
XFILL_0__2470_ gnd vdd FILL
XFILL_2__2488_ gnd vdd FILL
XFILL_4__3775_ gnd vdd FILL
XFILL_4__3355_ gnd vdd FILL
XFILL_0__3675_ gnd vdd FILL
XFILL_0__3255_ gnd vdd FILL
XFILL_2__4634_ gnd vdd FILL
XFILL_2__4214_ gnd vdd FILL
XFILL_1__2631_ gnd vdd FILL
XFILL_3__2977_ gnd vdd FILL
XFILL_3__2557_ gnd vdd FILL
XFILL_1__3836_ gnd vdd FILL
XFILL_1__3416_ gnd vdd FILL
X_2486_ _2339_ _2334_ _2340_ vdd gnd NAND2X1
XFILL_3__4703_ gnd vdd FILL
XFILL_2__2700_ gnd vdd FILL
XFILL_4__2626_ gnd vdd FILL
XFILL_0__2946_ gnd vdd FILL
XFILL_0__2526_ gnd vdd FILL
X_4632_ \u_cpu.BI\[5] _1685_ vdd gnd INVX1
X_4212_ _1221_ _973_ _967_ _966_ vdd gnd NAND3X1
XFILL_2__3905_ gnd vdd FILL
XFILL_1__4794_ gnd vdd FILL
XFILL_1__4374_ gnd vdd FILL
XFILL_4__3584_ gnd vdd FILL
XFILL_0__3484_ gnd vdd FILL
XFILL_2__4863_ gnd vdd FILL
XFILL_2__4443_ gnd vdd FILL
XFILL_2__4023_ gnd vdd FILL
XFILL_4__4789_ gnd vdd FILL
XFILL_4__4369_ gnd vdd FILL
X_3903_ \u_cpu.sec\ _690_ vdd gnd INVX1
XFILL_1__2860_ gnd vdd FILL
XFILL_1__2440_ gnd vdd FILL
XFILL_3__2786_ gnd vdd FILL
XFILL_0__4689_ gnd vdd FILL
XFILL_3__2366_ gnd vdd FILL
XFILL_0__4269_ gnd vdd FILL
XFILL_1__3645_ gnd vdd FILL
XFILL_1__3225_ gnd vdd FILL
XFILL_3__4932_ gnd vdd FILL
XFILL_3__4512_ gnd vdd FILL
XFILL_4__2855_ gnd vdd FILL
XFILL_4__2435_ gnd vdd FILL
XFILL_0__2755_ gnd vdd FILL
X_4861_ _1826_ _1901_ vdd gnd INVX1
X_4441_ _1318_ _1179_ _1176_ _1175_ vdd gnd OAI21X1
X_4021_ _1051_ _1057_ _791_ vdd gnd NAND2X1
XFILL_2__3714_ gnd vdd FILL
XFILL_1__4183_ gnd vdd FILL
XFILL_0__4901_ gnd vdd FILL
XFILL_2__4919_ gnd vdd FILL
XFILL_1__2916_ gnd vdd FILL
XFILL_4__3393_ gnd vdd FILL
XFILL_0__3293_ gnd vdd FILL
XFILL_2__4672_ gnd vdd FILL
XFILL_2__4252_ gnd vdd FILL
XFILL_4__4598_ gnd vdd FILL
XFILL_4__4178_ gnd vdd FILL
X_3712_ _1196__bF$buf2 _551_ _512_ _1123_ _511_ vdd 
+ gnd
+ AOI22X1
XFILL_3__2595_ gnd vdd FILL
XFILL_0__4498_ gnd vdd FILL
XFILL_0__4078_ gnd vdd FILL
X_4917_ _Addr_Bus[12] _Addr_Bus[13] _2193_ vdd gnd NAND2X1
XFILL_1__3874_ gnd vdd FILL
XFILL_1__3454_ gnd vdd FILL
XFILL_3__4741_ gnd vdd FILL
XFILL_3__4321_ gnd vdd FILL
XFILL_1__4659_ gnd vdd FILL
XFILL_1__4239_ gnd vdd FILL
XFILL_4__2664_ gnd vdd FILL
XFILL_0__2984_ gnd vdd FILL
XFILL_0__2564_ gnd vdd FILL
X_4670_ _1684_ _1715_ _1722_ _1723_ vdd gnd OAI21X1
X_4250_ _1027_ _1003_ _1006_ _1002_ vdd gnd OAI21X1
XFILL_2__3943_ gnd vdd FILL
XFILL_2__3523_ gnd vdd FILL
XFILL_4__3869_ gnd vdd FILL
XFILL_4__3449_ gnd vdd FILL
XFILL_4__3029_ gnd vdd FILL
XFILL_4__4810_ gnd vdd FILL
XFILL_0__3769_ gnd vdd FILL
XFILL_0__3349_ gnd vdd FILL
XFILL_2__4728_ gnd vdd FILL
XFILL_0__4710_ gnd vdd FILL
XFILL_2__4308_ gnd vdd FILL
XFILL_1__2725_ gnd vdd FILL
XFILL_2_BUFX2_insert39 gnd vdd FILL
XFILL_2__4481_ gnd vdd FILL
XFILL_2__4061_ gnd vdd FILL
X_3941_ _928_ _937_ _930_ _720_ vdd gnd OAI21X1
X_3521_ _333_ _1333_ _332_ _331_ vdd gnd OAI21X1
X_3101_ _1417__bF$buf1 vdd _1486_ clk_bF$buf5 \u_cpu.PC\[11] vdd 
+ gnd
+ DFFSR
X_4726_ \u_cpu.alu_shift_right\ \u_cpu.AI\[4] _1778_ _1776_ _1779_ vdd 
+ gnd
+ AOI22X1
X_4306_ _1067_ _1052_ _1051_ vdd gnd NOR2X1
XFILL_1__3683_ gnd vdd FILL
XFILL_1__3263_ gnd vdd FILL
XFILL_3__3189_ gnd vdd FILL
XFILL_3__4970_ gnd vdd FILL
XFILL_3__4550_ gnd vdd FILL
XFILL_3__4130_ gnd vdd FILL
XFILL_1__4888_ gnd vdd FILL
XFILL_1__4468_ gnd vdd FILL
XFILL_1__4048_ gnd vdd FILL
XFILL_4__2893_ gnd vdd FILL
XFILL_4__2473_ gnd vdd FILL
XFILL_0__2793_ gnd vdd FILL
XFILL_0__2373_ gnd vdd FILL
XFILL274050x21750 gnd vdd FILL
XFILL_2__3752_ gnd vdd FILL
XFILL_2__3332_ gnd vdd FILL
XFILL_4__3678_ gnd vdd FILL
XFILL_4__3258_ gnd vdd FILL
XFILL_0__3998_ gnd vdd FILL
XFILL_0__3578_ gnd vdd FILL
XFILL_2__4957_ gnd vdd FILL
XFILL_2__4537_ gnd vdd FILL
XFILL_2__4117_ gnd vdd FILL
XFILL_1__2534_ gnd vdd FILL
XFILL_3__3821_ gnd vdd FILL
XFILL_3__3401_ gnd vdd FILL
XFILL_1__3739_ gnd vdd FILL
XFILL_1__3319_ gnd vdd FILL
XFILL_2__4290_ gnd vdd FILL
X_2389_ DO_dsp[0] dsp_data[0] vdd gnd BUFX2
XFILL_3__4606_ gnd vdd FILL
X_3750_ _1196__bF$buf6 _551_ _550_ _549_ vdd gnd OAI21X1
X_3330_ _1039_ _760_ _177_ _1416_ vdd gnd OAI21X1
XFILL_2__2603_ gnd vdd FILL
XFILL_4__2949_ gnd vdd FILL
XFILL_4__2529_ gnd vdd FILL
XFILL_0__2849_ gnd vdd FILL
XFILL_0__2429_ gnd vdd FILL
X_4955_ _2198_ DO_kbd[2] _2195_ _2227_ vdd gnd AOI21X1
X_4535_ _1270_ _1269_ \u_cpu.PC\[2] _1263_ vdd gnd OAI21X1
X_4115_ _1233_ _881_ vdd gnd INVX2
XFILL_1__3492_ gnd vdd FILL
XFILL_2__3808_ gnd vdd FILL
XFILL_1__4697_ gnd vdd FILL
XFILL_1__4277_ gnd vdd FILL
XFILL_2__3981_ gnd vdd FILL
XFILL_2__3561_ gnd vdd FILL
XFILL_4__3487_ gnd vdd FILL
X_2601_ _2354__4_bF$buf6 _2128_ _2129_ _2131_ _2132_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3387_ gnd vdd FILL
XFILL_2__4766_ gnd vdd FILL
XFILL_2__4346_ gnd vdd FILL
X_3806_ \u_cpu.AXYS[1]\[3] _603_ vdd gnd INVX1
XFILL_1__2763_ gnd vdd FILL
XFILL_3__2689_ gnd vdd FILL
XFILL_3__3630_ gnd vdd FILL
XFILL_3__3210_ gnd vdd FILL
XFILL_1__3968_ gnd vdd FILL
XFILL_1__3548_ gnd vdd FILL
XFILL_3__4835_ gnd vdd FILL
XFILL_3__4415_ gnd vdd FILL
XFILL_2__2832_ gnd vdd FILL
XFILL_2__2412_ gnd vdd FILL
XFILL_4__2758_ gnd vdd FILL
XFILL_0__2658_ gnd vdd FILL
X_4764_ \u_cpu.alu_op\[0] _1816_ _1817_ vdd gnd NOR2X1
X_4344_ RDY_bF$buf4 _1089_ _1088_ vdd gnd NAND2X1
XFILL_2__3617_ gnd vdd FILL
XFILL_4__4904_ gnd vdd FILL
XFILL_1__4086_ gnd vdd FILL
XFILL_0__4804_ gnd vdd FILL
XFILL_3__2901_ gnd vdd FILL
XFILL_1__2819_ gnd vdd FILL
XFILL_2__3790_ gnd vdd FILL
XFILL_2__3370_ gnd vdd FILL
XFILL_4__3296_ gnd vdd FILL
X_2830_ _2354__0_bF$buf3 _2354__2_bF$buf3 _2354__1_bF$buf4 _1665_ vdd gnd OAI21X1
X_2410_ _63_ _1642_ _1920__bF$buf4 _64_ vdd gnd AOI21X1
XFILL_0__3196_ gnd vdd FILL
XFILL_2__4575_ gnd vdd FILL
XFILL_2__4155_ gnd vdd FILL
X_3615_ _420_ _419_ vdd gnd INVX1
XFILL_1__2992_ gnd vdd FILL
XFILL_1__2572_ gnd vdd FILL
XFILL_3__2498_ gnd vdd FILL
XFILL_1__3777_ gnd vdd FILL
XFILL_1__3357_ gnd vdd FILL
XFILL_3__4644_ gnd vdd FILL
XFILL_3__4224_ gnd vdd FILL
XFILL_2__2641_ gnd vdd FILL
XFILL_4__2987_ gnd vdd FILL
XFILL_4__2567_ gnd vdd FILL
XFILL_0__2887_ gnd vdd FILL
XFILL_0__2467_ gnd vdd FILL
X_4993_ _1514_ vdd _1519_ clk_bF$buf1 DO_dsp[1] vdd 
+ gnd
+ DFFSR
X_4573_ _1306_ _1326_ _1302_ _1305__bF$buf1 _1301_ vdd 
+ gnd
+ AOI22X1
X_4153_ \u_cpu.AXYS[3]\[3] _921_ _917_ vdd gnd NAND2X1
XFILL_2__3846_ gnd vdd FILL
XFILL_2__3426_ gnd vdd FILL
XFILL_2__3006_ gnd vdd FILL
XFILL_4__4713_ gnd vdd FILL
XFILL_3__2710_ gnd vdd FILL
XFILL_0__4613_ gnd vdd FILL
XFILL_1__2628_ gnd vdd FILL
XFILL_3__3915_ gnd vdd FILL
XFILL_2__4384_ gnd vdd FILL
X_3844_ _638_ _637_ vdd gnd INVX1
X_3424_ _252_ _251_ vdd gnd INVX1
X_3004_ _Addr_Bus[14] _1594_ _1598_ vdd gnd NAND2X1
XFILL_1__2381_ gnd vdd FILL
X_4629_ \u_cpu.ADD\[6] _1681__bF$buf1 _1682_ vdd gnd NAND2X1
X_4209_ \u_cpu.DIMUX\[1] _1070__bF$buf3 _964_ _963_ vdd gnd OAI21X1
XFILL_1__3586_ gnd vdd FILL
XFILL_1__3166_ gnd vdd FILL
XFILL_3__4453_ gnd vdd FILL
XFILL_3__4033_ gnd vdd FILL
XFILL_2__2450_ gnd vdd FILL
XFILL_4__2796_ gnd vdd FILL
XFILL_4__2376_ gnd vdd FILL
XFILL_0__2696_ gnd vdd FILL
X_4382_ _1125_ _1150_ _1124_ _1123_ vdd gnd AOI21X1
XFILL_2__3655_ gnd vdd FILL
XFILL_2__3235_ gnd vdd FILL
XFILL_4__4942_ gnd vdd FILL
XFILL_4__4522_ gnd vdd FILL
XFILL_4__4102_ gnd vdd FILL
XFILL_0__4842_ gnd vdd FILL
XFILL_0__4422_ gnd vdd FILL
XFILL_0__4002_ gnd vdd FILL
XFILL_1__2857_ gnd vdd FILL
XFILL_1__2437_ gnd vdd FILL
XFILL_3__3724_ gnd vdd FILL
XFILL_3__3304_ gnd vdd FILL
XFILL_2__4193_ gnd vdd FILL
XFILL_3__4929_ gnd vdd FILL
XFILL_3__4509_ gnd vdd FILL
X_3653_ _1328__bF$buf3 _903_ _1196__bF$buf5 _456_ vdd gnd OAI21X1
X_3233_ _120_ _1345__bF$buf1 _185_ _119_ vdd gnd OAI21X1
XFILL_2__2926_ gnd vdd FILL
XFILL_2__2506_ gnd vdd FILL
X_4858_ \u_cpu.CO\ _1898_ vdd gnd INVX1
X_4438_ _1174_ _1172_ vdd gnd INVX1
X_4018_ _793_ _792_ _789_ _788_ vdd gnd OAI21X1
XFILL_1__3395_ gnd vdd FILL
XFILL_3__4682_ gnd vdd FILL
XFILL_3__4262_ gnd vdd FILL
X_4191_ _1164_ _969_ _948_ vdd gnd NAND2X1
XFILL_2__3884_ gnd vdd FILL
XFILL_2__3464_ gnd vdd FILL
X_2924_ _2353_[4] _1544_ vdd gnd INVX1
X_2504_ _2002_ _2354__2_bF$buf1 _2150_ _2322_ vdd gnd AOI21X1
XFILL_4__4751_ gnd vdd FILL
XFILL_4__4331_ gnd vdd FILL
XFILL_0__4651_ gnd vdd FILL
XFILL_2__4669_ gnd vdd FILL
XFILL_0__4231_ gnd vdd FILL
XFILL_2__4249_ gnd vdd FILL
X_3709_ _511_ _509_ _508_ vdd gnd AND2X2
XFILL_1__2666_ gnd vdd FILL
XFILL_3__3953_ gnd vdd FILL
XFILL_3__3533_ gnd vdd FILL
XFILL_1__4812_ gnd vdd FILL
XFILL_3__4738_ gnd vdd FILL
XFILL_3__4318_ gnd vdd FILL
X_3882_ \u_cpu.compare\ _672_ vdd gnd INVX1
X_3462_ _285_ _1250_ _1165_ _278_ \u_cpu.BI\[3] vdd 
+ gnd
+ OAI22X1
X_3042_ _1395_ clk_bF$buf9 \u_cpu.IRHOLD\[2] vdd gnd DFFPOSX1
XFILL_2__2735_ gnd vdd FILL
XFILL_4__3602_ gnd vdd FILL
X_4667_ _1688_ _1717_ _1719_ _1720_ vdd gnd OAI21X1
X_4247_ _1099_ _999_ vdd gnd INVX1
XFILL_0__3922_ gnd vdd FILL
XFILL_0__3502_ gnd vdd FILL
XFILL_3__4491_ gnd vdd FILL
XFILL_3__4071_ gnd vdd FILL
XFILL_4__4807_ gnd vdd FILL
XFILL_0__4707_ gnd vdd FILL
XFILL_3__2804_ gnd vdd FILL
XFILL_2__3693_ gnd vdd FILL
XFILL_2__3273_ gnd vdd FILL
XFILL_4__3199_ gnd vdd FILL
X_2733_ _1635__bF$buf0 _1638__bF$buf0 _2002_ vdd gnd NAND2X1
XFILL_4__4980_ gnd vdd FILL
XFILL_4__4560_ gnd vdd FILL
XFILL_4__4140_ gnd vdd FILL
XFILL_2__4898_ gnd vdd FILL
XFILL_0__4460_ gnd vdd FILL
XFILL_2__4478_ gnd vdd FILL
XFILL_0__4040_ gnd vdd FILL
XFILL_2__4058_ gnd vdd FILL
X_3938_ _719_ _718_ _717_ vdd gnd NAND2X1
X_3518_ \u_cpu.AXYS[1]\[1] _1050_ _790_ \u_cpu.AXYS[2]\[1] _329_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2895_ gnd vdd FILL
XFILL_1__2475_ gnd vdd FILL
XFILL_3__3762_ gnd vdd FILL
XFILL_3__3342_ gnd vdd FILL
XFILL_1__4621_ gnd vdd FILL
XFILL_1__4201_ gnd vdd FILL
XFILL_3__4967_ gnd vdd FILL
XFILL_3__4547_ gnd vdd FILL
XFILL_3__4127_ gnd vdd FILL
X_3691_ _667_ _540_ _494_ vdd gnd NOR2X1
X_3271_ \u_cpu.ABL\[1] _142_ vdd gnd INVX1
XFILL_2__2964_ gnd vdd FILL
XFILL_2__2544_ gnd vdd FILL
XFILL_4__3831_ gnd vdd FILL
XFILL_4__3411_ gnd vdd FILL
X_4896_ _2168_ _2171_ _2170_ _2172_ vdd gnd NAND3X1
X_4476_ _1345__bF$buf3 _1340_ _1333_ _1206_ vdd gnd OAI21X1
X_4056_ _827_ _825_ _824_ _823_ vdd gnd NAND3X1
XFILL_0__3731_ gnd vdd FILL
XFILL_2__3749_ gnd vdd FILL
XFILL_2__3329_ gnd vdd FILL
XFILL_0__3311_ gnd vdd FILL
XFILL_4__4616_ gnd vdd FILL
XFILL_0__4936_ gnd vdd FILL
XFILL_3__2613_ gnd vdd FILL
XFILL_0__4516_ gnd vdd FILL
XFILL_3__3818_ gnd vdd FILL
X_2962_ _1491_ vdd _1437_ clk_bF$buf3 DO_kbd[2] vdd 
+ gnd
+ DFFSR
X_2542_ _1920__bF$buf2 _2284_ _1973_ _2285_ vdd gnd OAI21X1
XFILL_2__4287_ gnd vdd FILL
X_3747_ _548_ _547_ _546_ vdd gnd NAND2X1
X_3327_ \u_cpu.AXYS[2]\[6] _760_ _175_ vdd gnd NAND2X1
XFILL_3__3991_ gnd vdd FILL
XFILL_3__3571_ gnd vdd FILL
XFILL_1__3489_ gnd vdd FILL
XFILL_1__4850_ gnd vdd FILL
XFILL_1__4430_ gnd vdd FILL
XFILL_1__4010_ gnd vdd FILL
XFILL_3__4776_ gnd vdd FILL
XFILL_3__4356_ gnd vdd FILL
X_3080_ _1417__bF$buf6 vdd _1469_ clk_bF$buf2 \u_cpu.AXYS[0]\[3] vdd 
+ gnd
+ DFFSR
XFILL_2__2773_ gnd vdd FILL
XFILL_4__2699_ gnd vdd FILL
XFILL_4__3640_ gnd vdd FILL
XFILL_4__3220_ gnd vdd FILL
XFILL_0__2599_ gnd vdd FILL
X_4285_ _1118_ _1099_ _1032_ _1031_ vdd gnd NAND3X1
XFILL_2__3978_ gnd vdd FILL
XFILL_0__3960_ gnd vdd FILL
XFILL_2__3558_ gnd vdd FILL
XFILL_0__3540_ gnd vdd FILL
XFILL_4__4845_ gnd vdd FILL
XFILL_4__4425_ gnd vdd FILL
XFILL_4__4005_ gnd vdd FILL
XFILL_0__4745_ gnd vdd FILL
XFILL_3__2842_ gnd vdd FILL
XFILL_3__2422_ gnd vdd FILL
XFILL_0__4325_ gnd vdd FILL
XFILL_1__3701_ gnd vdd FILL
XFILL_3__3627_ gnd vdd FILL
XFILL_3__3207_ gnd vdd FILL
X_2771_ _2354__0_bF$buf2 _1964_ _2354__4_bF$buf2 _1965_ vdd gnd OAI21X1
XFILL_2__4096_ gnd vdd FILL
XFILL_1__4906_ gnd vdd FILL
XFILL_4__2911_ gnd vdd FILL
X_3976_ _758_ _1129__bF$buf1 _751_ _1454_ vdd gnd OAI21X1
X_3556_ _806_ _364_ _362_ _361_ vdd gnd NAND3X1
X_3136_ _1417__bF$buf9 vdd _1404_ clk_bF$buf11 \u_cpu.clv\ vdd 
+ gnd
+ DFFSR
XFILL_0__2811_ gnd vdd FILL
XFILL_2__2829_ gnd vdd FILL
XFILL_2__2409_ gnd vdd FILL
XFILL_3__3380_ gnd vdd FILL
XFILL_1__3298_ gnd vdd FILL
XFILL_3__4585_ gnd vdd FILL
XFILL_3__4165_ gnd vdd FILL
XFILL_2__2582_ gnd vdd FILL
X_4094_ _907_ _864_ _861_ _860_ vdd gnd OAI21X1
XFILL_2__3787_ gnd vdd FILL
XFILL_2__3367_ gnd vdd FILL
X_2827_ _2354__1_bF$buf5 _2354__2_bF$buf5 _1638__bF$buf2 _1909_ vdd gnd NAND3X1
X_2407_ _1935_ _1643__bF$buf3 _2354__5_bF$buf0 _67_ vdd gnd AOI21X1
XFILL_4__4654_ gnd vdd FILL
XFILL_4__4234_ gnd vdd FILL
XFILL_0__4974_ gnd vdd FILL
XFILL_3__2651_ gnd vdd FILL
XFILL_0__4554_ gnd vdd FILL
XFILL_0__4134_ gnd vdd FILL
XFILL_1__2989_ gnd vdd FILL
XFILL_1__2569_ gnd vdd FILL
XFILL_1__3930_ gnd vdd FILL
XFILL_1__3510_ gnd vdd FILL
XFILL_3__3856_ gnd vdd FILL
XFILL_3__3436_ gnd vdd FILL
XFILL_3__3016_ gnd vdd FILL
X_2580_ _2152_ _2149_ _2151_ _2153_ vdd gnd OAI21X1
XFILL_1__4715_ gnd vdd FILL
XFILL_4__2720_ gnd vdd FILL
X_3785_ _1121_ _1118_ _584_ vdd gnd NAND2X1
X_3365_ _202_ _465_ _201_ vdd gnd NAND2X1
XFILL_0__2620_ gnd vdd FILL
XFILL_2__2638_ gnd vdd FILL
XFILL_4__3925_ gnd vdd FILL
XFILL_4__3505_ gnd vdd FILL
XFILL_0__3825_ gnd vdd FILL
XFILL_0__3405_ gnd vdd FILL
XFILL_3__4394_ gnd vdd FILL
XFILL_3__2707_ gnd vdd FILL
XFILL_2__3596_ gnd vdd FILL
XFILL_2__3176_ gnd vdd FILL
X_2636_ _1636__bF$buf2 _2354__0_bF$buf3 _1643__bF$buf2 _2098_ vdd gnd AOI21X1
XFILL_4__4883_ gnd vdd FILL
XFILL_4__4463_ gnd vdd FILL
XFILL_4__4043_ gnd vdd FILL
XFILL_0__4783_ gnd vdd FILL
XFILL_3__2880_ gnd vdd FILL
XFILL_0__4363_ gnd vdd FILL
XFILL_3__2460_ gnd vdd FILL
XFILL_1__2798_ gnd vdd FILL
XFILL_1__2378_ gnd vdd FILL
XFILL_3__3665_ gnd vdd FILL
XFILL_3__3245_ gnd vdd FILL
XFILL_1__4944_ gnd vdd FILL
XFILL_1__4524_ gnd vdd FILL
XFILL_1__4104_ gnd vdd FILL
X_3594_ _562_ _415_ _557_ _398_ vdd gnd NAND3X1
X_3174_ _1225_ _78_ vdd gnd INVX1
XFILL_2__2447_ gnd vdd FILL
XFILL_4__3734_ gnd vdd FILL
XFILL_4__3314_ gnd vdd FILL
X_4799_ _1681__bF$buf0 _1835_ _1848_ _1669_ vdd gnd OAI21X1
X_4379_ _1121_ _1120_ vdd gnd INVX1
XFILL_0__3634_ gnd vdd FILL
XFILL_0__3214_ gnd vdd FILL
XFILL_4__4939_ gnd vdd FILL
XFILL_4__4519_ gnd vdd FILL
XFILL_0__4839_ gnd vdd FILL
XFILL_3__2936_ gnd vdd FILL
XFILL_3__2516_ gnd vdd FILL
XFILL_0__4419_ gnd vdd FILL
X_2865_ _1514_ vdd _1508_ clk_bF$buf3 DO_dsp[3] vdd 
+ gnd
+ DFFSR
X_2445_ _2095_ _2354__4_bF$buf4 _30_ vdd gnd OR2X2
XFILL_4__4692_ gnd vdd FILL
XFILL_4__4272_ gnd vdd FILL
XFILL_0__4592_ gnd vdd FILL
XFILL_0__4172_ gnd vdd FILL
XFILL_0__2905_ gnd vdd FILL
XFILL_3__3894_ gnd vdd FILL
XFILL_3__3474_ gnd vdd FILL
XFILL_1__4753_ gnd vdd FILL
XFILL_1__4333_ gnd vdd FILL
XFILL_3__4679_ gnd vdd FILL
XFILL_3__4259_ gnd vdd FILL
XFILL_2__2676_ gnd vdd FILL
XFILL_4__3963_ gnd vdd FILL
XFILL_4__3543_ gnd vdd FILL
XFILL273150x61350 gnd vdd FILL
X_4188_ _947_ _950_ _945_ vdd gnd NOR2X1
XFILL_0__3863_ gnd vdd FILL
XFILL_0__3443_ gnd vdd FILL
XFILL_0__3023_ gnd vdd FILL
XFILL_2__4822_ gnd vdd FILL
XFILL_2__4402_ gnd vdd FILL
XFILL_4__4748_ gnd vdd FILL
XFILL_4__4328_ gnd vdd FILL
XFILL_0__4648_ gnd vdd FILL
XFILL_3__2745_ gnd vdd FILL
XFILL_0__4228_ gnd vdd FILL
XFILL_1__3604_ gnd vdd FILL
X_2674_ _2354__3_bF$buf3 _1636__bF$buf2 _2060_ vdd gnd NAND2X1
XFILL_4__4081_ gnd vdd FILL
XFILL_1__4809_ gnd vdd FILL
XFILL_4__2814_ gnd vdd FILL
X_3879_ _703_ _690_ _669_ vdd gnd NAND2X1
X_3459_ _1292_ _1250_ _1108_ _278_ \u_cpu.BI\[6] vdd 
+ gnd
+ OAI22X1
X_3039_ _1417__bF$buf1 vdd _1359_ clk_bF$buf5 \u_cpu.PC\[3] vdd 
+ gnd
+ DFFSR
XFILL_0__2714_ gnd vdd FILL
X_4820_ \u_cpu.AN\ _1865_ vdd gnd INVX1
X_4400_ RDY_bF$buf3 Data_In[5] _1139_ vdd gnd NAND2X1
XFILL_3__3283_ gnd vdd FILL
XFILL_0__3919_ gnd vdd FILL
XFILL_1__4982_ gnd vdd FILL
XFILL_1__4562_ gnd vdd FILL
XFILL_1__4142_ gnd vdd FILL
XFILL_3__4488_ gnd vdd FILL
XFILL_3__4068_ gnd vdd FILL
XFILL_2__2485_ gnd vdd FILL
XFILL_4__3772_ gnd vdd FILL
XFILL_4__3352_ gnd vdd FILL
XFILL_0__3672_ gnd vdd FILL
XFILL_0__3252_ gnd vdd FILL
XFILL_2__4631_ gnd vdd FILL
XFILL_2__4211_ gnd vdd FILL
XFILL_4__4977_ gnd vdd FILL
XFILL_4__4557_ gnd vdd FILL
XFILL_4__4137_ gnd vdd FILL
XFILL_3__2974_ gnd vdd FILL
XFILL_3__2554_ gnd vdd FILL
XFILL_0__4457_ gnd vdd FILL
XFILL_0__4037_ gnd vdd FILL
XFILL_1__3833_ gnd vdd FILL
XFILL_1__3413_ gnd vdd FILL
XFILL_3__3759_ gnd vdd FILL
XFILL_3__3339_ gnd vdd FILL
X_2483_ _2342_ _2341_ _2343_ vdd gnd AND2X2
XFILL_3__4700_ gnd vdd FILL
XFILL271650x25350 gnd vdd FILL
XFILL_1__4618_ gnd vdd FILL
XFILL_4__2623_ gnd vdd FILL
X_3688_ _494_ _492_ _574_ _491_ vdd gnd OAI21X1
X_3268_ _800__bF$buf2 _2354__2_bF$buf2 _140_ vdd gnd NAND2X1
XFILL_0__2943_ gnd vdd FILL
XFILL_0__2523_ gnd vdd FILL
XFILL_2__3902_ gnd vdd FILL
XFILL_4__3828_ gnd vdd FILL
XFILL_4__3408_ gnd vdd FILL
XFILL_0__3728_ gnd vdd FILL
XFILL_0__3308_ gnd vdd FILL
XFILL_1__4791_ gnd vdd FILL
XFILL_1__4371_ gnd vdd FILL
XFILL_3__4297_ gnd vdd FILL
XFILL_4__3581_ gnd vdd FILL
XFILL_2__3499_ gnd vdd FILL
XFILL_0__3481_ gnd vdd FILL
XFILL_2__4860_ gnd vdd FILL
XFILL_2__4440_ gnd vdd FILL
XFILL_2__4020_ gnd vdd FILL
X_2959_ _1491_ vdd _1434_ clk_bF$buf12 DO_kbd[6] vdd 
+ gnd
+ DFFSR
X_2539_ _2286_ _1928_ _2287_ _2288_ vdd gnd AOI21X1
XFILL_4__4786_ gnd vdd FILL
XFILL_4__4366_ gnd vdd FILL
X_3900_ _1027_ _1008_ _1024_ _688_ vdd gnd OAI21X1
XFILL_0__4686_ gnd vdd FILL
XFILL_3__2783_ gnd vdd FILL
XFILL_0__4266_ gnd vdd FILL
XFILL_3__2363_ gnd vdd FILL
XFILL_1__3642_ gnd vdd FILL
XFILL_1__3222_ gnd vdd FILL
XFILL_3__3988_ gnd vdd FILL
XFILL_3__3568_ gnd vdd FILL
XFILL_1__4847_ gnd vdd FILL
XFILL_1__4427_ gnd vdd FILL
XFILL_1__4007_ gnd vdd FILL
XFILL_4__2852_ gnd vdd FILL
XFILL_4__2432_ gnd vdd FILL
X_3497_ _554_ _722_ _580_ _310_ vdd gnd OAI21X1
X_3077_ _1417__bF$buf2 vdd _1375_ clk_bF$buf11 \u_cpu.adc_bcd\ vdd 
+ gnd
+ DFFSR
XFILL_0__2752_ gnd vdd FILL
XFILL_2__3711_ gnd vdd FILL
XFILL_4__3637_ gnd vdd FILL
XFILL_4__3217_ gnd vdd FILL
XFILL_0__3957_ gnd vdd FILL
XFILL_0__3537_ gnd vdd FILL
XFILL_1__4180_ gnd vdd FILL
XFILL_2__4916_ gnd vdd FILL
XFILL_1__2913_ gnd vdd FILL
XFILL_3__2839_ gnd vdd FILL
XFILL_3__2419_ gnd vdd FILL
XFILL_4__3390_ gnd vdd FILL
XFILL_0__3290_ gnd vdd FILL
X_2768_ _2354__0_bF$buf4 _2354__2_bF$buf0 _2354__4_bF$buf5 _1968_ vdd gnd OAI21X1
XFILL_4__4595_ gnd vdd FILL
XFILL_4__4175_ gnd vdd FILL
XFILL_3__2592_ gnd vdd FILL
XFILL_0__4495_ gnd vdd FILL
XFILL_0__4075_ gnd vdd FILL
XFILL_4__2908_ gnd vdd FILL
XFILL_0__2808_ gnd vdd FILL
X_4914_ _Addr_Bus[10] _Addr_Bus[11] _2190_ vdd gnd NAND2X1
XFILL_1__3871_ gnd vdd FILL
XFILL_1__3451_ gnd vdd FILL
XFILL_1__3031_ gnd vdd FILL
XFILL_3__3797_ gnd vdd FILL
XFILL_3__3377_ gnd vdd FILL
XFILL_1__4656_ gnd vdd FILL
XFILL_1__4236_ gnd vdd FILL
XFILL_4__2661_ gnd vdd FILL
XFILL_2__2999_ gnd vdd FILL
XFILL_0__2981_ gnd vdd FILL
XFILL_0__2561_ gnd vdd FILL
XFILL_2__2579_ gnd vdd FILL
XFILL_2__3940_ gnd vdd FILL
XFILL_2__3520_ gnd vdd FILL
XFILL_4__3866_ gnd vdd FILL
XFILL_4__3446_ gnd vdd FILL
XFILL_4__3026_ gnd vdd FILL
XFILL_0__3766_ gnd vdd FILL
XFILL_0__3346_ gnd vdd FILL
XFILL_2__4725_ gnd vdd FILL
XFILL_2__4305_ gnd vdd FILL
XFILL_1__2722_ gnd vdd FILL
XFILL_3__2648_ gnd vdd FILL
XFILL_1__3927_ gnd vdd FILL
XFILL_1__3507_ gnd vdd FILL
X_2997_ _Addr_Bus[0] _Addr_Bus[15] _1604_ vdd gnd NAND2X1
X_2577_ _2354__2_bF$buf4 _2001_ _2156_ vdd gnd NOR2X1
XFILL_4__2717_ gnd vdd FILL
XFILL_0__2617_ gnd vdd FILL
X_4723_ _1688_ _1774_ _1775_ _1776_ vdd gnd OAI21X1
X_4303_ _1326_ _1049_ _1048_ vdd gnd NAND2X1
XFILL_1__3680_ gnd vdd FILL
XFILL_1__3260_ gnd vdd FILL
XFILL_3__3186_ gnd vdd FILL
XFILL_1__4885_ gnd vdd FILL
XFILL_1__4465_ gnd vdd FILL
XFILL_1__4045_ gnd vdd FILL
XFILL_4__2890_ gnd vdd FILL
XFILL_4__2470_ gnd vdd FILL
XFILL_0__2790_ gnd vdd FILL
XFILL_0__2370_ gnd vdd FILL
XFILL_2__2388_ gnd vdd FILL
XFILL_4__3675_ gnd vdd FILL
XFILL_4__3255_ gnd vdd FILL
XFILL_0__3995_ gnd vdd FILL
XFILL_0__3575_ gnd vdd FILL
XFILL_2__4954_ gnd vdd FILL
XFILL_2__4534_ gnd vdd FILL
XFILL_2__4114_ gnd vdd FILL
XFILL_1__2951_ gnd vdd FILL
XFILL_1__2531_ gnd vdd FILL
XFILL_3__2877_ gnd vdd FILL
XFILL_3__2457_ gnd vdd FILL
XFILL_1__3736_ gnd vdd FILL
XFILL_1__3316_ gnd vdd FILL
X_2386_ DO_dsp[3] dsp_data[3] vdd gnd BUFX2
XFILL_3__4603_ gnd vdd FILL
XFILL_2__2600_ gnd vdd FILL
XFILL_4__2946_ gnd vdd FILL
XFILL_4__2526_ gnd vdd FILL
XFILL_0__2846_ gnd vdd FILL
X_4952_ DI[2] _2224_ vdd gnd INVX1
XFILL_0__2426_ gnd vdd FILL
X_4532_ _1262_ _1297_ _1261_ _1260_ vdd gnd OAI21X1
X_4112_ _884_ _879_ _886_ _878_ vdd gnd NAND3X1
XFILL_2__3805_ gnd vdd FILL
XFILL_1__4694_ gnd vdd FILL
XFILL_1__4274_ gnd vdd FILL
XFILL_4__3484_ gnd vdd FILL
XFILL_0__3384_ gnd vdd FILL
XFILL_2__4763_ gnd vdd FILL
XFILL_2__4343_ gnd vdd FILL
XFILL_4__4689_ gnd vdd FILL
XFILL_4__4269_ gnd vdd FILL
X_3803_ \u_cpu.AXYS[0]\[3] _600_ vdd gnd INVX1
XFILL_1__2760_ gnd vdd FILL
XFILL_3__2686_ gnd vdd FILL
XFILL_0__4589_ gnd vdd FILL
XFILL_0__4169_ gnd vdd FILL
XFILL_1__3965_ gnd vdd FILL
XFILL_1__3545_ gnd vdd FILL
XFILL_3__4832_ gnd vdd FILL
XFILL_3__4412_ gnd vdd FILL
XFILL_4__2755_ gnd vdd FILL
XFILL_0__2655_ gnd vdd FILL
X_4761_ _1813_ _1812_ _1703_ _1814_ vdd gnd OAI21X1
X_4341_ \u_cpu.src_reg\[1] _1086_ vdd gnd INVX1
XFILL_2__3614_ gnd vdd FILL
XFILL_4__4901_ gnd vdd FILL
XFILL_1__4083_ gnd vdd FILL
XFILL_2__4819_ gnd vdd FILL
XFILL_0__4801_ gnd vdd FILL
XFILL_1__2816_ gnd vdd FILL
XFILL_4__3293_ gnd vdd FILL
XFILL_0__3193_ gnd vdd FILL
XFILL_2__4572_ gnd vdd FILL
XFILL_2__4152_ gnd vdd FILL
XFILL_4__4078_ gnd vdd FILL
X_3612_ _1123_ _756_ _416_ vdd gnd NOR2X1
XFILL_3__2495_ gnd vdd FILL
XFILL_0__4398_ gnd vdd FILL
X_4817_ \u_cpu.u_ALU8.BI7\ \u_cpu.CO\ _1862_ vdd gnd AND2X2
XFILL_1__3774_ gnd vdd FILL
XFILL_1__3354_ gnd vdd FILL
XFILL_3__4641_ gnd vdd FILL
XFILL_3__4221_ gnd vdd FILL
XFILL_1__4979_ gnd vdd FILL
XFILL_1__4559_ gnd vdd FILL
XFILL_1__4139_ gnd vdd FILL
XFILL_4__2564_ gnd vdd FILL
XFILL_0__2884_ gnd vdd FILL
XFILL_0__2464_ gnd vdd FILL
X_4990_ _2354_[14] clk_bF$buf6 _Addr_Bus[14] vdd gnd DFFPOSX1
X_4570_ _1345__bF$buf3 _1340_ _1298_ vdd gnd NOR2X1
X_4150_ _1039_ _921_ _916_ _1461_ vdd gnd OAI21X1
XFILL_2__3843_ gnd vdd FILL
XFILL_2__3423_ gnd vdd FILL
XFILL_2__3003_ gnd vdd FILL
XFILL_4__3769_ gnd vdd FILL
XFILL_4__3349_ gnd vdd FILL
XFILL_4__4710_ gnd vdd FILL
XFILL_0__3669_ gnd vdd FILL
XFILL_0__3249_ gnd vdd FILL
XFILL_2__4628_ gnd vdd FILL
XFILL_0__4610_ gnd vdd FILL
XFILL_2__4208_ gnd vdd FILL
XFILL273450x36150 gnd vdd FILL
XFILL_1__2625_ gnd vdd FILL
XFILL_3__3912_ gnd vdd FILL
XFILL_2__4381_ gnd vdd FILL
X_3841_ _635_ _634_ vdd gnd INVX1
X_3421_ _1286_ _875_ \u_cpu.ABH\[3] _249_ vdd gnd OAI21X1
X_3001_ _1600_ _1599_ _1601_ vdd gnd NAND2X1
X_4626_ \u_cpu.state\[2] _1354_ vdd gnd INVX1
X_4206_ _1126_ _1003_ _997_ _961_ vdd gnd OAI21X1
XFILL_1__3583_ gnd vdd FILL
XFILL_3__4870_ gnd vdd FILL
XFILL_3__4450_ gnd vdd FILL
XFILL_3__4030_ gnd vdd FILL
XFILL_1__4788_ gnd vdd FILL
XFILL_1__4368_ gnd vdd FILL
XFILL_4__2793_ gnd vdd FILL
XFILL_4__2373_ gnd vdd FILL
XFILL_0__2693_ gnd vdd FILL
XFILL_2__3652_ gnd vdd FILL
XFILL_2__3232_ gnd vdd FILL
XFILL_4__3998_ gnd vdd FILL
XFILL_4__3578_ gnd vdd FILL
XFILL_0__3898_ gnd vdd FILL
XFILL_0__3478_ gnd vdd FILL
XFILL_2__4857_ gnd vdd FILL
XFILL_2__4437_ gnd vdd FILL
XFILL_2__4017_ gnd vdd FILL
XFILL_1__2854_ gnd vdd FILL
XFILL_1__2434_ gnd vdd FILL
XFILL_3__3721_ gnd vdd FILL
XFILL_3__3301_ gnd vdd FILL
XFILL_1__3639_ gnd vdd FILL
XFILL_1__3219_ gnd vdd FILL
XFILL_2__4190_ gnd vdd FILL
XFILL_3__4926_ gnd vdd FILL
XFILL_3__4506_ gnd vdd FILL
X_3650_ _454_ _461_ _453_ vdd gnd NOR2X1
X_3230_ _1345__bF$buf1 _117_ _119_ _116_ vdd gnd OAI21X1
XFILL_3_BUFX2_insert70 gnd vdd FILL
XFILL_3_BUFX2_insert71 gnd vdd FILL
XFILL_3_BUFX2_insert72 gnd vdd FILL
XFILL_3_BUFX2_insert73 gnd vdd FILL
XFILL_2__2923_ gnd vdd FILL
XFILL_2__2503_ gnd vdd FILL
XFILL_3_BUFX2_insert74 gnd vdd FILL
XFILL_3_BUFX2_insert75 gnd vdd FILL
XFILL_3_BUFX2_insert76 gnd vdd FILL
XFILL_3_BUFX2_insert77 gnd vdd FILL
XFILL_4__2849_ gnd vdd FILL
XFILL_3_BUFX2_insert78 gnd vdd FILL
XFILL_3_BUFX2_insert79 gnd vdd FILL
XFILL_4__2429_ gnd vdd FILL
XFILL_0__2749_ gnd vdd FILL
X_4855_ RDY_bF$buf7 _1865_ _1896_ _1677_ vdd gnd OAI21X1
X_4435_ _1196__bF$buf1 _1184_ _1170_ _1487_ vdd gnd AOI21X1
X_4015_ \u_cpu.AXYS[3]\[7] _922_ _785_ vdd gnd NAND2X1
XFILL_1__3392_ gnd vdd FILL
XFILL_2__3708_ gnd vdd FILL
XFILL_1__4597_ gnd vdd FILL
XFILL_1__4177_ gnd vdd FILL
XFILL_2__3881_ gnd vdd FILL
XFILL_2__3461_ gnd vdd FILL
XFILL_4__3387_ gnd vdd FILL
XFILL_4_BUFX2_insert140 gnd vdd FILL
XFILL_4_BUFX2_insert141 gnd vdd FILL
XFILL_4_BUFX2_insert142 gnd vdd FILL
X_2921_ _2353_[5] _1546_ vdd gnd INVX1
X_2501_ _1635__bF$buf4 _1636__bF$buf4 _2000_ _2325_ vdd gnd OAI21X1
XFILL_4_BUFX2_insert143 gnd vdd FILL
XFILL_4_BUFX2_insert144 gnd vdd FILL
XFILL_4_BUFX2_insert145 gnd vdd FILL
XFILL_4_BUFX2_insert146 gnd vdd FILL
XFILL_4_BUFX2_insert147 gnd vdd FILL
XFILL_4_BUFX2_insert148 gnd vdd FILL
XFILL_4_BUFX2_insert149 gnd vdd FILL
XFILL_0__3287_ gnd vdd FILL
XFILL_2__4666_ gnd vdd FILL
XFILL274050x97350 gnd vdd FILL
XFILL_2__4246_ gnd vdd FILL
X_3706_ _515_ _506_ _505_ vdd gnd NOR2X1
XFILL_1__2663_ gnd vdd FILL
XFILL_3__2589_ gnd vdd FILL
XFILL_3__3950_ gnd vdd FILL
XFILL_3__3530_ gnd vdd FILL
XFILL_1__3868_ gnd vdd FILL
XFILL_1__3448_ gnd vdd FILL
XFILL_1__3028_ gnd vdd FILL
XFILL_3_BUFX2_insert160 gnd vdd FILL
XFILL_3_BUFX2_insert161 gnd vdd FILL
XFILL_3_BUFX2_insert162 gnd vdd FILL
XFILL_3_BUFX2_insert163 gnd vdd FILL
XFILL_3__4735_ gnd vdd FILL
XFILL_3_BUFX2_insert164 gnd vdd FILL
XFILL_3_BUFX2_insert165 gnd vdd FILL
XFILL_3__4315_ gnd vdd FILL
XFILL_3_BUFX2_insert166 gnd vdd FILL
XFILL_3_BUFX2_insert167 gnd vdd FILL
XFILL_2__2732_ gnd vdd FILL
XFILL_4__2658_ gnd vdd FILL
XFILL_0__2978_ gnd vdd FILL
XFILL_0__2558_ gnd vdd FILL
X_4664_ \u_cpu.alu_op\[0] _1716_ _1717_ vdd gnd NOR2X1
X_4244_ _997_ _996_ vdd gnd INVX1
XFILL_2__3937_ gnd vdd FILL
XFILL_2__3517_ gnd vdd FILL
XFILL_4__4804_ gnd vdd FILL
XFILL_3__2801_ gnd vdd FILL
XFILL_0__4704_ gnd vdd FILL
XFILL_1__2719_ gnd vdd FILL
XFILL_2__3690_ gnd vdd FILL
XFILL273750x79350 gnd vdd FILL
XFILL_2__3270_ gnd vdd FILL
XFILL_4__3196_ gnd vdd FILL
X_2730_ _2004_ _2000_ _2354__6_bF$buf1 _2005_ vdd gnd AOI21X1
XFILL_2__4895_ gnd vdd FILL
XFILL_2__4475_ gnd vdd FILL
XFILL_2__4055_ gnd vdd FILL
X_3935_ _716_ _715_ _1070__bF$buf1 _714_ vdd gnd OAI21X1
X_3515_ _327_ _326_ vdd gnd INVX1
XFILL_1__2892_ gnd vdd FILL
XFILL_1__2472_ gnd vdd FILL
XFILL_3__2398_ gnd vdd FILL
XFILL_1__3677_ gnd vdd FILL
XFILL_1__3257_ gnd vdd FILL
XFILL_3__4964_ gnd vdd FILL
XFILL_3__4544_ gnd vdd FILL
XFILL_3__4124_ gnd vdd FILL
XFILL_2__2541_ gnd vdd FILL
XFILL_4__2887_ gnd vdd FILL
XFILL_4__2467_ gnd vdd FILL
XFILL_0__2787_ gnd vdd FILL
XFILL_0__2367_ gnd vdd FILL
X_4893_ _Addr_Bus[4] _2169_ vdd gnd INVX1
X_4473_ _1206_ \u_cpu.ABH\[0] _1204_ _1203_ vdd gnd AOI21X1
X_4053_ _821_ _825_ _820_ vdd gnd NAND2X1
XFILL_2__3746_ gnd vdd FILL
XFILL_2__3326_ gnd vdd FILL
XFILL_4__4613_ gnd vdd FILL
XFILL_0__4933_ gnd vdd FILL
XFILL_3__2610_ gnd vdd FILL
XFILL_0__4513_ gnd vdd FILL
XFILL_1__2948_ gnd vdd FILL
XFILL_1__2528_ gnd vdd FILL
XFILL_3__3815_ gnd vdd FILL
XFILL_2__4284_ gnd vdd FILL
X_3744_ _1325__bF$buf3 _1252_ _1196__bF$buf4 _543_ vdd gnd OAI21X1
X_3324_ \u_cpu.src_reg\[0] _174_ vdd gnd INVX1
X_4949_ DO_woz[2] _2221_ vdd gnd INVX1
X_4529_ _1270_ _1269_ \u_cpu.PC\[1] _1257_ vdd gnd OAI21X1
X_4109_ _1328__bF$buf2 _1084_ _876_ _875_ vdd gnd OAI21X1
XFILL_1__3486_ gnd vdd FILL
XFILL_3__4773_ gnd vdd FILL
XFILL_3__4353_ gnd vdd FILL
XFILL_2__2770_ gnd vdd FILL
XFILL_4__2696_ gnd vdd FILL
XFILL_0__2596_ gnd vdd FILL
X_4282_ \u_cpu.backwards\ _1029_ vdd gnd INVX1
XFILL_2__3975_ gnd vdd FILL
XFILL_2__3555_ gnd vdd FILL
XFILL_4__4842_ gnd vdd FILL
XFILL_4__4002_ gnd vdd FILL
XFILL_0__4742_ gnd vdd FILL
XFILL_0__4322_ gnd vdd FILL
XFILL_1__2757_ gnd vdd FILL
XFILL_3__3624_ gnd vdd FILL
XFILL_3__3204_ gnd vdd FILL
XFILL_2__4093_ gnd vdd FILL
XFILL_1__4903_ gnd vdd FILL
XFILL_3__4829_ gnd vdd FILL
XFILL_3__4409_ gnd vdd FILL
X_3973_ _1044_ _749_ _748_ vdd gnd NAND2X1
X_3553_ \u_cpu.ABH\[4] _358_ vdd gnd INVX1
X_3133_ _1417__bF$buf9 vdd _1483_ clk_bF$buf11 \u_cpu.cli\ vdd 
+ gnd
+ DFFSR
XFILL_2__2826_ gnd vdd FILL
XFILL_2__2406_ gnd vdd FILL
X_4758_ _1810_ _1811_ vdd gnd INVX1
X_4338_ _1325__bF$buf4 _1084_ _1083_ vdd gnd NOR2X1
XFILL_1__3295_ gnd vdd FILL
XFILL_3__4582_ gnd vdd FILL
XFILL_3__4162_ gnd vdd FILL
X_4091_ _1327_ _1064_ _858_ vdd gnd NAND2X1
XFILL_2__3784_ gnd vdd FILL
XFILL_2__3364_ gnd vdd FILL
X_2824_ _1910_ _1911_ _2354__5_bF$buf3 _1912_ vdd gnd AOI21X1
X_2404_ _2354__6_bF$buf3 _66_ _69_ _70_ vdd gnd NAND3X1
XFILL_4__4651_ gnd vdd FILL
XFILL_4__4231_ gnd vdd FILL
XFILL_0__4971_ gnd vdd FILL
XFILL_2__4569_ gnd vdd FILL
XFILL_0__4551_ gnd vdd FILL
XFILL_0__4131_ gnd vdd FILL
XFILL_2__4149_ gnd vdd FILL
X_3609_ _421_ _414_ _413_ vdd gnd NOR2X1
XFILL_1__2986_ gnd vdd FILL
XFILL_1__2566_ gnd vdd FILL
XFILL_3__3853_ gnd vdd FILL
XFILL_3__3433_ gnd vdd FILL
XFILL_3__3013_ gnd vdd FILL
XFILL_1__4712_ gnd vdd FILL
XFILL_3__4638_ gnd vdd FILL
XFILL_3__4218_ gnd vdd FILL
X_3782_ _1036_ _1104_ _581_ vdd gnd NAND2X1
X_3362_ _375_ _374_ _199_ _198_ vdd gnd AOI21X1
XFILL_2__2635_ gnd vdd FILL
XFILL_4__3922_ gnd vdd FILL
XFILL_4__3502_ gnd vdd FILL
X_4987_ _2354_[12] clk_bF$buf6 _Addr_Bus[12] vdd gnd DFFPOSX1
X_4567_ _1300_ \u_cpu.AN\ _1296_ _1295_ vdd gnd AOI21X1
X_4147_ _1325__bF$buf4 _914_ _913_ vdd gnd NOR2X1
XFILL_0__3822_ gnd vdd FILL
XFILL_0__3402_ gnd vdd FILL
XFILL_3__4391_ gnd vdd FILL
XFILL_4__4707_ gnd vdd FILL
XFILL_3__2704_ gnd vdd FILL
XFILL_0__4607_ gnd vdd FILL
XFILL_2__3593_ gnd vdd FILL
XFILL_2__3173_ gnd vdd FILL
XFILL_3__3909_ gnd vdd FILL
X_2633_ _2100_ _2099_ _1920__bF$buf3 _2101_ vdd gnd AOI21X1
XFILL_4__4460_ gnd vdd FILL
XFILL_4__4040_ gnd vdd FILL
XFILL_2__4798_ gnd vdd FILL
XFILL_0__4780_ gnd vdd FILL
XFILL_0__4360_ gnd vdd FILL
XFILL_2__4378_ gnd vdd FILL
X_3838_ _1328__bF$buf0 _1084_ _632_ _631_ vdd gnd OAI21X1
X_3418_ \u_cpu.ADD\[3] _908_ _247_ _246_ vdd gnd AOI21X1
XFILL_1__2795_ gnd vdd FILL
XFILL_1__2375_ gnd vdd FILL
XFILL272550x21750 gnd vdd FILL
XFILL_3__3662_ gnd vdd FILL
XFILL_3__3242_ gnd vdd FILL
XFILL_1__4941_ gnd vdd FILL
XFILL_1__4521_ gnd vdd FILL
XFILL_1__4101_ gnd vdd FILL
XFILL_3__4867_ gnd vdd FILL
XFILL_3__4447_ gnd vdd FILL
XFILL_3__4027_ gnd vdd FILL
X_3591_ RDY_bF$buf0 _451_ _395_ vdd gnd NAND2X1
X_3171_ _1196__bF$buf1 _76_ _79_ _1358_ vdd gnd OAI21X1
XFILL_2__2444_ gnd vdd FILL
XFILL_4__3731_ gnd vdd FILL
XFILL_4__3311_ gnd vdd FILL
X_4796_ \u_cpu.ADD\[1] _1681__bF$buf1 _1847_ vdd gnd NAND2X1
X_4376_ _1118_ _1120_ _1117_ vdd gnd NOR2X1
XFILL_2__3649_ gnd vdd FILL
XFILL_0__3631_ gnd vdd FILL
XFILL_2__3229_ gnd vdd FILL
XFILL_0__3211_ gnd vdd FILL
XFILL_4__4936_ gnd vdd FILL
XFILL_4__4516_ gnd vdd FILL
XFILL_0__4836_ gnd vdd FILL
XFILL_3__2933_ gnd vdd FILL
XFILL_3__2513_ gnd vdd FILL
XFILL_0__4416_ gnd vdd FILL
XFILL_3__3718_ gnd vdd FILL
X_2862_ _2346_[4] clk_bF$buf6 DO_woz[4] vdd gnd DFFPOSX1
X_2442_ _29_ _32_ _30_ _33_ vdd gnd NAND3X1
XFILL_2__4187_ gnd vdd FILL
X_3647_ _1196__bF$buf3 _451_ _765_ _1129__bF$buf1 _450_ vdd 
+ gnd
+ AOI22X1
X_3227_ _282_ _114_ vdd gnd INVX1
XFILL_0__2902_ gnd vdd FILL
XFILL_3__3891_ gnd vdd FILL
XFILL_3__3471_ gnd vdd FILL
XFILL_1__3389_ gnd vdd FILL
XFILL_1__4750_ gnd vdd FILL
XFILL_1__4330_ gnd vdd FILL
XFILL_3__4676_ gnd vdd FILL
XFILL_3__4256_ gnd vdd FILL
XFILL_2__2673_ gnd vdd FILL
XFILL_4__2599_ gnd vdd FILL
XFILL_4__3960_ gnd vdd FILL
XFILL_4__3540_ gnd vdd FILL
XFILL_0__2499_ gnd vdd FILL
X_4185_ \u_cpu.AXYS[0]\[3] _977_ _942_ vdd gnd NAND2X1
XFILL_2__3878_ gnd vdd FILL
XFILL_0__3860_ gnd vdd FILL
XFILL_2__3458_ gnd vdd FILL
XFILL_0__3440_ gnd vdd FILL
XFILL_0__3020_ gnd vdd FILL
X_2918_ \u_pia_dsp.state\[2] _1548_ vdd gnd INVX1
XFILL_4__4745_ gnd vdd FILL
XFILL_4__4325_ gnd vdd FILL
XFILL_0__4645_ gnd vdd FILL
XFILL_3__2742_ gnd vdd FILL
XFILL_0__4225_ gnd vdd FILL
XFILL_1__3601_ gnd vdd FILL
XFILL_3__3947_ gnd vdd FILL
XFILL_3__3527_ gnd vdd FILL
X_2671_ _1929_ _1665_ _2354__5_bF$buf3 _2063_ vdd gnd AOI21X1
XFILL_1__4806_ gnd vdd FILL
XFILL_4__2811_ gnd vdd FILL
X_3876_ _667_ _1344_ _828_ \u_cpu.shift\ _666_ vdd 
+ gnd
+ AOI22X1
X_3456_ _1150_ _278_ _276_ \u_cpu.BI\[4] vdd gnd OAI21X1
X_3036_ _1417__bF$buf0 vdd _1460_ clk_bF$buf10 \u_cpu.ABH\[7] vdd 
+ gnd
+ DFFSR
XFILL_0__2711_ gnd vdd FILL
XFILL_2__2729_ gnd vdd FILL
XFILL_3__3280_ gnd vdd FILL
XFILL_1__3198_ gnd vdd FILL
XFILL_0__3916_ gnd vdd FILL
XFILL_3__4485_ gnd vdd FILL
XFILL_3__4065_ gnd vdd FILL
XFILL_2__2482_ gnd vdd FILL
XFILL_2__3687_ gnd vdd FILL
XFILL_2__3267_ gnd vdd FILL
X_2727_ _2007_ _2001_ _1634__bF$buf2 _2008_ vdd gnd AOI21X1
XFILL_4__4974_ gnd vdd FILL
XFILL_4__4554_ gnd vdd FILL
XFILL_4__4134_ gnd vdd FILL
XFILL_3__2971_ gnd vdd FILL
XFILL_3__2551_ gnd vdd FILL
XFILL_0__4454_ gnd vdd FILL
XFILL_0__4034_ gnd vdd FILL
XFILL_1__2889_ gnd vdd FILL
XFILL_1__2469_ gnd vdd FILL
XFILL_1__3830_ gnd vdd FILL
XFILL_1__3410_ gnd vdd FILL
XFILL_3__3756_ gnd vdd FILL
XFILL_3__3336_ gnd vdd FILL
X_2480_ _2345_ _2343_ _1920__bF$buf2 _2347_ vdd gnd OAI21X1
XFILL272850x64950 gnd vdd FILL
XFILL_1__4615_ gnd vdd FILL
XFILL_4__2620_ gnd vdd FILL
X_3685_ _489_ _518_ _488_ vdd gnd NAND2X1
X_3265_ _1267_ _800__bF$buf1 _139_ _1389_ vdd gnd OAI21X1
XFILL_0__2940_ gnd vdd FILL
XFILL_2__2538_ gnd vdd FILL
XFILL_0__2520_ gnd vdd FILL
XFILL_4__3825_ gnd vdd FILL
XFILL_4__3405_ gnd vdd FILL
XFILL_0__3725_ gnd vdd FILL
XFILL_0__3305_ gnd vdd FILL
XFILL_3__4294_ gnd vdd FILL
XFILL_3__2607_ gnd vdd FILL
XFILL_2__3496_ gnd vdd FILL
X_2956_ _1491_ vdd _1494_ clk_bF$buf12 DO_kbd[4] vdd 
+ gnd
+ DFFSR
X_2536_ _1916_ _2254_ _2291_ vdd gnd NOR2X1
XFILL_4__4783_ gnd vdd FILL
XFILL_4__4363_ gnd vdd FILL
XFILL_0__4683_ gnd vdd FILL
XFILL_3__2780_ gnd vdd FILL
XFILL_3__2360_ gnd vdd FILL
XFILL_0__4263_ gnd vdd FILL
XFILL_1__2698_ gnd vdd FILL
XFILL_3__3985_ gnd vdd FILL
XFILL_3__3565_ gnd vdd FILL
XFILL_1__4844_ gnd vdd FILL
XFILL_1__4424_ gnd vdd FILL
XFILL_1__4004_ gnd vdd FILL
X_3494_ _318_ _308_ RDY_bF$buf5 _307_ vdd gnd OAI21X1
X_3074_ _1417__bF$buf3 vdd _1468_ clk_bF$buf7 \u_cpu.AXYS[0]\[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2767_ gnd vdd FILL
XFILL_4__3634_ gnd vdd FILL
XFILL_4__3214_ gnd vdd FILL
X_4699_ \u_cpu.alu_op\[3] _1699_ _1747_ _1752_ vdd gnd OAI21X1
X_4279_ _1126_ _1027_ vdd gnd INVX2
XFILL_0__3954_ gnd vdd FILL
XFILL_0__3534_ gnd vdd FILL
XFILL_2__4913_ gnd vdd FILL
XFILL_4__4839_ gnd vdd FILL
XFILL_4__4419_ gnd vdd FILL
XFILL_1__2910_ gnd vdd FILL
XFILL_0__4739_ gnd vdd FILL
XFILL_3__2836_ gnd vdd FILL
XFILL_3__2416_ gnd vdd FILL
XFILL_0__4319_ gnd vdd FILL
X_2765_ _1955_ _1970_ _1966_ _1920__bF$buf3 _1971_ vdd 
+ gnd
+ AOI22X1
XFILL_4__4592_ gnd vdd FILL
XFILL_4__4172_ gnd vdd FILL
XFILL_0__4492_ gnd vdd FILL
XFILL_0__4072_ gnd vdd FILL
XFILL_4__2905_ gnd vdd FILL
XFILL_0__2805_ gnd vdd FILL
X_4911_ _2183_ _2186_ _2187_ vdd gnd NAND2X1
XFILL_3__3794_ gnd vdd FILL
XFILL_3__3374_ gnd vdd FILL
XFILL_1__4653_ gnd vdd FILL
XFILL_1__4233_ gnd vdd FILL
XFILL_3__4579_ gnd vdd FILL
XFILL_3__4159_ gnd vdd FILL
XFILL_2__2996_ gnd vdd FILL
XFILL_2__2576_ gnd vdd FILL
XFILL_4__3863_ gnd vdd FILL
XFILL_4__3443_ gnd vdd FILL
XFILL_4__3023_ gnd vdd FILL
X_4088_ \u_cpu.state\[5] _1239_ _856_ _855_ vdd gnd OAI21X1
XFILL_0__3763_ gnd vdd FILL
XFILL_0__3343_ gnd vdd FILL
XFILL_2__4722_ gnd vdd FILL
XFILL_2__4302_ gnd vdd FILL
XFILL_4__4648_ gnd vdd FILL
XFILL_4__4228_ gnd vdd FILL
XFILL_0__4968_ gnd vdd FILL
XFILL_3__2645_ gnd vdd FILL
XFILL_0__4548_ gnd vdd FILL
XFILL_0__4128_ gnd vdd FILL
XFILL_1__3924_ gnd vdd FILL
XFILL_1__3504_ gnd vdd FILL
X_2994_ _Addr_Bus[6] _Addr_Bus[5] _1607_ vdd gnd NOR2X1
X_2574_ _2354__1_bF$buf4 _1638__bF$buf3 _1634__bF$buf4 _2254_ vdd gnd OAI21X1
XFILL_1__4709_ gnd vdd FILL
XFILL_4__2714_ gnd vdd FILL
X_3779_ _1196__bF$buf3 _585_ _579_ _1129__bF$buf2 _578_ vdd 
+ gnd
+ AOI22X1
X_3359_ _196_ _197_ _195_ vdd gnd NOR2X1
XFILL_0__2614_ gnd vdd FILL
X_4720_ \u_cpu.BI\[3] _1773_ vdd gnd INVX1
X_4300_ _1046_ _1047_ _1045_ vdd gnd NOR2X1
XFILL_3__3183_ gnd vdd FILL
XFILL_4__3919_ gnd vdd FILL
XFILL_0__3819_ gnd vdd FILL
XFILL_1__4462_ gnd vdd FILL
XFILL_1__4042_ gnd vdd FILL
XFILL_3__4388_ gnd vdd FILL
XFILL_2__2385_ gnd vdd FILL
XFILL_4__3672_ gnd vdd FILL
XFILL_4__3252_ gnd vdd FILL
XFILL_0__3992_ gnd vdd FILL
XFILL_0__3572_ gnd vdd FILL
XFILL_2__4951_ gnd vdd FILL
XFILL_2__4531_ gnd vdd FILL
XFILL_2__4111_ gnd vdd FILL
XFILL_4__4457_ gnd vdd FILL
XFILL_4__4037_ gnd vdd FILL
XFILL_0__4777_ gnd vdd FILL
XFILL_0__4357_ gnd vdd FILL
XFILL_3__2454_ gnd vdd FILL
XFILL_1__3733_ gnd vdd FILL
XFILL_1__3313_ gnd vdd FILL
XFILL_3__3659_ gnd vdd FILL
XFILL_3__3239_ gnd vdd FILL
X_2383_ DO_dsp[6] dsp_data[6] vdd gnd BUFX2
XFILL_3__4600_ gnd vdd FILL
XFILL_1__4938_ gnd vdd FILL
XFILL_1__4518_ gnd vdd FILL
XFILL_4__2943_ gnd vdd FILL
XFILL_4__2523_ gnd vdd FILL
X_3588_ _429_ _393_ _394_ _392_ vdd gnd AOI21X1
X_3168_ RDY_bF$buf1 _615_ _75_ _74_ _1357_ vdd 
+ gnd
+ OAI22X1
XFILL_0__2843_ gnd vdd FILL
XFILL_0__2423_ gnd vdd FILL
XFILL_2__3802_ gnd vdd FILL
XFILL_4__3728_ gnd vdd FILL
XFILL_4__3308_ gnd vdd FILL
XFILL_0__3628_ gnd vdd FILL
XFILL_0__3208_ gnd vdd FILL
XFILL_1__4691_ gnd vdd FILL
XFILL_1__4271_ gnd vdd FILL
XFILL_3__4197_ gnd vdd FILL
XFILL_4__3481_ gnd vdd FILL
XFILL_0__3381_ gnd vdd FILL
XFILL_2__3399_ gnd vdd FILL
XFILL_2__4760_ gnd vdd FILL
XFILL_2__4340_ gnd vdd FILL
X_2859_ _2354__2_bF$buf5 _1636_ vdd gnd INVX8
X_2439_ _1649_ _1651_ _36_ vdd gnd NOR2X1
XFILL_4__4686_ gnd vdd FILL
XFILL_4__4266_ gnd vdd FILL
X_3800_ _598_ _601_ _597_ vdd gnd OR2X2
XFILL_3__2683_ gnd vdd FILL
XFILL_0__4586_ gnd vdd FILL
XFILL_0__4166_ gnd vdd FILL
XFILL_1__3962_ gnd vdd FILL
XFILL_1__3542_ gnd vdd FILL
XFILL_3__3888_ gnd vdd FILL
XFILL_3__3468_ gnd vdd FILL
XFILL_1__4747_ gnd vdd FILL
XFILL_1__4327_ gnd vdd FILL
XFILL_4__2752_ gnd vdd FILL
X_3397_ _1154_ _864_ _230_ _229_ vdd gnd OAI21X1
XFILL_0__2652_ gnd vdd FILL
XFILL_2__3611_ gnd vdd FILL
XFILL_4__3957_ gnd vdd FILL
XFILL_4__3537_ gnd vdd FILL
XFILL_0__3857_ gnd vdd FILL
XFILL_0__3437_ gnd vdd FILL
XFILL_0__3017_ gnd vdd FILL
XFILL_1__4080_ gnd vdd FILL
XFILL_2__4816_ gnd vdd FILL
XFILL_1__2813_ gnd vdd FILL
XFILL_3__2739_ gnd vdd FILL
XFILL_4__3290_ gnd vdd FILL
XFILL_0__3190_ gnd vdd FILL
X_2668_ _2065_ _2066_ vdd gnd INVX1
XFILL_4__4495_ gnd vdd FILL
XFILL_4__4075_ gnd vdd FILL
XFILL_3__2492_ gnd vdd FILL
XFILL_0__4395_ gnd vdd FILL
XFILL_4__2808_ gnd vdd FILL
XFILL_0__2708_ gnd vdd FILL
X_4814_ _1857_ _1858_ _1859_ _1860_ vdd gnd NAND3X1
XFILL_1__3771_ gnd vdd FILL
XFILL_1__3351_ gnd vdd FILL
XFILL_3__3697_ gnd vdd FILL
XFILL_3__3277_ gnd vdd FILL
XFILL_1__4976_ gnd vdd FILL
XFILL_1__4556_ gnd vdd FILL
XFILL_1__4136_ gnd vdd FILL
XFILL_4__2981_ gnd vdd FILL
XFILL_4__2561_ gnd vdd FILL
XFILL_2__2899_ gnd vdd FILL
XFILL_0__2881_ gnd vdd FILL
XFILL_2__2479_ gnd vdd FILL
XFILL_0__2461_ gnd vdd FILL
XFILL_2__3840_ gnd vdd FILL
XFILL_2__3420_ gnd vdd FILL
XFILL_2__3000_ gnd vdd FILL
XFILL_4__3766_ gnd vdd FILL
XFILL_0__3666_ gnd vdd FILL
XFILL_0__3246_ gnd vdd FILL
XFILL_2__4625_ gnd vdd FILL
XFILL_2__4205_ gnd vdd FILL
XFILL_1__2622_ gnd vdd FILL
XFILL_3__2968_ gnd vdd FILL
XFILL_3__2548_ gnd vdd FILL
XFILL_1__3827_ gnd vdd FILL
XFILL_1__3407_ gnd vdd FILL
X_2897_ \u_pia_dsp.state\[2] \u_pia_dsp.state\[3] _1514_ _1564_ vdd gnd OAI21X1
X_2477_ _2349_ _1911_ _1920__bF$buf0 _2355_ vdd gnd AOI21X1
XFILL_4__2617_ gnd vdd FILL
XFILL273450x90150 gnd vdd FILL
XFILL_0__2937_ gnd vdd FILL
XFILL_0__2517_ gnd vdd FILL
X_4623_ _1352_ _1351_ vdd gnd INVX1
X_4203_ _1037__bF$buf0 _960_ _959_ _1471_ vdd gnd OAI21X1
XFILL_1__3580_ gnd vdd FILL
XFILL_1__4785_ gnd vdd FILL
XFILL_1__4365_ gnd vdd FILL
XFILL_4__2790_ gnd vdd FILL
XFILL_4__2370_ gnd vdd FILL
XFILL_0__2690_ gnd vdd FILL
XFILL_4__3995_ gnd vdd FILL
XFILL_4__3575_ gnd vdd FILL
XFILL_0__3895_ gnd vdd FILL
XFILL_0__3475_ gnd vdd FILL
XFILL_2__4854_ gnd vdd FILL
XFILL_2__4434_ gnd vdd FILL
XFILL_2__4014_ gnd vdd FILL
XFILL_1__2851_ gnd vdd FILL
XFILL_1__2431_ gnd vdd FILL
XFILL_3__2777_ gnd vdd FILL
XFILL_3__2357_ gnd vdd FILL
XFILL_1__3636_ gnd vdd FILL
XFILL_1__3216_ gnd vdd FILL
XFILL_3__4923_ gnd vdd FILL
XFILL_3__4503_ gnd vdd FILL
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
XFILL_3_BUFX2_insert49 gnd vdd FILL
XFILL_4__2426_ gnd vdd FILL
XFILL_0__2746_ gnd vdd FILL
X_4852_ _1826_ _1891_ _1829_ _1894_ vdd gnd NAND3X1
X_4432_ \u_cpu.DIHOLD\[3] _1167_ vdd gnd INVX1
X_4012_ _864_ _782_ vdd gnd INVX4
XFILL_2__3705_ gnd vdd FILL
XFILL_1__4594_ gnd vdd FILL
XFILL_1__4174_ gnd vdd FILL
XFILL_1__2907_ gnd vdd FILL
XFILL_4__3384_ gnd vdd FILL
XFILL_4_BUFX2_insert110 gnd vdd FILL
XFILL_4_BUFX2_insert111 gnd vdd FILL
XFILL_4_BUFX2_insert112 gnd vdd FILL
XFILL_4_BUFX2_insert113 gnd vdd FILL
XFILL_4_BUFX2_insert114 gnd vdd FILL
XFILL_4_BUFX2_insert115 gnd vdd FILL
XFILL_4_BUFX2_insert116 gnd vdd FILL
XFILL_4_BUFX2_insert117 gnd vdd FILL
XFILL_4_BUFX2_insert118 gnd vdd FILL
XFILL_4_BUFX2_insert119 gnd vdd FILL
XFILL_0__3284_ gnd vdd FILL
XFILL_2__4663_ gnd vdd FILL
XFILL_2__4243_ gnd vdd FILL
XFILL_4__4589_ gnd vdd FILL
XFILL_4__4169_ gnd vdd FILL
X_3703_ \u_cpu.state\[5] _1239_ _876_ _503_ vdd gnd OAI21X1
XFILL_1__2660_ gnd vdd FILL
XFILL_3__2586_ gnd vdd FILL
XFILL_0__4489_ gnd vdd FILL
XFILL_0__4069_ gnd vdd FILL
X_4908_ _2171_ _2184_ vdd gnd INVX1
XFILL_1__3865_ gnd vdd FILL
XFILL_1__3445_ gnd vdd FILL
XFILL_1__3025_ gnd vdd FILL
XFILL_3_BUFX2_insert130 gnd vdd FILL
XFILL_3_BUFX2_insert131 gnd vdd FILL
XFILL_3_BUFX2_insert132 gnd vdd FILL
XFILL_3_BUFX2_insert133 gnd vdd FILL
XFILL_3_BUFX2_insert134 gnd vdd FILL
XFILL_3__4732_ gnd vdd FILL
XFILL_3_BUFX2_insert135 gnd vdd FILL
XFILL_3__4312_ gnd vdd FILL
XFILL_3_BUFX2_insert136 gnd vdd FILL
XFILL_3_BUFX2_insert137 gnd vdd FILL
XFILL_3_BUFX2_insert138 gnd vdd FILL
XFILL_3_BUFX2_insert139 gnd vdd FILL
XFILL_4__2655_ gnd vdd FILL
XFILL_0__2975_ gnd vdd FILL
XFILL_0__2555_ gnd vdd FILL
X_4661_ _1696_ \u_cpu.alu_op\[2] _1713_ _1714_ vdd gnd OAI21X1
X_4241_ _1027_ _994_ _993_ vdd gnd NOR2X1
XFILL_2__3934_ gnd vdd FILL
XFILL_2__3514_ gnd vdd FILL
XFILL_4__4801_ gnd vdd FILL
XFILL_2__4719_ gnd vdd FILL
XFILL_0__4701_ gnd vdd FILL
XFILL_1__2716_ gnd vdd FILL
XFILL_2__4892_ gnd vdd FILL
XFILL_2__4472_ gnd vdd FILL
XFILL_2__4052_ gnd vdd FILL
XFILL_4__4398_ gnd vdd FILL
X_3932_ _760_ _713_ _712_ _1449_ vdd gnd OAI21X1
X_3512_ _359_ \u_cpu.ADD\[1] _324_ _323_ vdd gnd AOI21X1
XFILL_3__2395_ gnd vdd FILL
XFILL_0__4298_ gnd vdd FILL
X_4717_ _1696_ \u_cpu.alu_op\[2] _1725_ _1770_ vdd gnd OAI21X1
XFILL_1__3674_ gnd vdd FILL
XFILL_1__3254_ gnd vdd FILL
XFILL_3__4961_ gnd vdd FILL
XFILL_3__4541_ gnd vdd FILL
XFILL_3__4121_ gnd vdd FILL
XFILL_1__4459_ gnd vdd FILL
XFILL_1__4039_ gnd vdd FILL
XFILL_4__2884_ gnd vdd FILL
XFILL_4__2464_ gnd vdd FILL
XFILL_0__2784_ gnd vdd FILL
XFILL_0__2364_ gnd vdd FILL
X_4890_ _Addr_Bus[9] _Addr_Bus[8] _2166_ vdd gnd NOR2X1
X_4470_ _1293_ _1224_ _1201_ _1200_ vdd gnd OAI21X1
X_4050_ _1331_ _1325__bF$buf1 _1239_ _817_ vdd gnd OAI21X1
XFILL_2__3743_ gnd vdd FILL
XFILL_2__3323_ gnd vdd FILL
XFILL_4__3669_ gnd vdd FILL
XFILL_4__3249_ gnd vdd FILL
XFILL_4__4610_ gnd vdd FILL
XFILL_0__3989_ gnd vdd FILL
XFILL_0__3569_ gnd vdd FILL
XFILL_4_BUFX2_insert90 gnd vdd FILL
XFILL_4_BUFX2_insert92 gnd vdd FILL
XFILL_4_BUFX2_insert93 gnd vdd FILL
XFILL_0__4930_ gnd vdd FILL
XFILL_4_BUFX2_insert94 gnd vdd FILL
XFILL_2__4948_ gnd vdd FILL
XFILL_2__4528_ gnd vdd FILL
XFILL_4_BUFX2_insert95 gnd vdd FILL
XFILL_0__4510_ gnd vdd FILL
XFILL_4_BUFX2_insert96 gnd vdd FILL
XFILL_2__4108_ gnd vdd FILL
XFILL_4_BUFX2_insert97 gnd vdd FILL
XFILL_4_BUFX2_insert98 gnd vdd FILL
XFILL_4_BUFX2_insert99 gnd vdd FILL
XFILL_1__2945_ gnd vdd FILL
XFILL_1__2525_ gnd vdd FILL
XFILL273750x10950 gnd vdd FILL
XFILL_3__3812_ gnd vdd FILL
XFILL_2__4281_ gnd vdd FILL
X_3741_ _1325__bF$buf0 _911_ _540_ vdd gnd NOR2X1
X_3321_ _172_ _729_ _1129__bF$buf5 _171_ vdd gnd OAI21X1
X_4946_ _2216_ _2218_ _2182_ _2219_ vdd gnd NAND3X1
X_4526_ _1274_ _1255_ \u_cpu.ABL\[1] _1298_ _1254_ vdd 
+ gnd
+ AOI22X1
X_4106_ _873_ _1073_ _872_ vdd gnd NOR2X1
XFILL_1__3483_ gnd vdd FILL
XFILL_3__4770_ gnd vdd FILL
XFILL_3__4350_ gnd vdd FILL
XFILL_1__4688_ gnd vdd FILL
XFILL_1__4268_ gnd vdd FILL
XFILL_4__2693_ gnd vdd FILL
XFILL_0__2593_ gnd vdd FILL
XFILL_2__3972_ gnd vdd FILL
XFILL_2__3552_ gnd vdd FILL
XFILL_4__3898_ gnd vdd FILL
XFILL_4__3478_ gnd vdd FILL
XFILL_0__3798_ gnd vdd FILL
XFILL_0__3378_ gnd vdd FILL
XFILL_2__4757_ gnd vdd FILL
XFILL_2__4337_ gnd vdd FILL
XFILL_1__2754_ gnd vdd FILL
XFILL_3__3621_ gnd vdd FILL
XFILL_3__3201_ gnd vdd FILL
XFILL_1__3959_ gnd vdd FILL
XFILL_1__3539_ gnd vdd FILL
XFILL_2__4090_ gnd vdd FILL
XFILL_1__4900_ gnd vdd FILL
XFILL_3__4826_ gnd vdd FILL
XFILL_3__4406_ gnd vdd FILL
X_3970_ _746_ _745_ vdd gnd INVX1
X_3550_ _358_ _1333_ _1150_ _356_ _355_ vdd 
+ gnd
+ OAI22X1
X_3130_ vdd _1417__bF$buf4 _1401_ clk_bF$buf4 \u_cpu.res\ vdd 
+ gnd
+ DFFSR
XFILL_2__2823_ gnd vdd FILL
XFILL_2__2403_ gnd vdd FILL
XFILL_4__2749_ gnd vdd FILL
XFILL_0__2649_ gnd vdd FILL
X_4755_ _1713_ _1808_ vdd gnd INVX1
X_4335_ _1081_ _1080_ vdd gnd INVX1
XFILL_1__3292_ gnd vdd FILL
XFILL_2__3608_ gnd vdd FILL
XFILL_1__4497_ gnd vdd FILL
XFILL_1__4077_ gnd vdd FILL
XFILL_2__3781_ gnd vdd FILL
XFILL_2__3361_ gnd vdd FILL
XFILL_4__3287_ gnd vdd FILL
X_2821_ _2354__3_bF$buf6 _2354__0_bF$buf3 _1915_ vdd gnd NOR2X1
X_2401_ _1644_ _2281_ _2354__5_bF$buf3 _1420_ vdd gnd AOI21X1
XFILL_0__3187_ gnd vdd FILL
XFILL_2__4566_ gnd vdd FILL
XFILL_2__4146_ gnd vdd FILL
X_3606_ \u_cpu.cond_code\[0] _410_ vdd gnd INVX1
XFILL_1__2983_ gnd vdd FILL
XFILL_1__2563_ gnd vdd FILL
XFILL_3__2489_ gnd vdd FILL
XFILL_3__3850_ gnd vdd FILL
XFILL_3__3430_ gnd vdd FILL
XFILL_3__3010_ gnd vdd FILL
XFILL_1__3768_ gnd vdd FILL
XFILL_1__3348_ gnd vdd FILL
XFILL_3__4635_ gnd vdd FILL
XFILL_3__4215_ gnd vdd FILL
XFILL_2__2632_ gnd vdd FILL
XFILL_4__2978_ gnd vdd FILL
XFILL_4__2558_ gnd vdd FILL
XFILL_0__2878_ gnd vdd FILL
XFILL_0__2458_ gnd vdd FILL
X_4984_ _2252_ _2253_ vdd gnd INVX1
X_4564_ \u_cpu.PC\[6] _1292_ vdd gnd INVX1
X_4144_ _1305__bF$buf3 _911_ _910_ vdd gnd NOR2X1
XFILL_2__3837_ gnd vdd FILL
XFILL_2__3417_ gnd vdd FILL
XFILL_4__4704_ gnd vdd FILL
XFILL_3__2701_ gnd vdd FILL
XFILL_0__4604_ gnd vdd FILL
XFILL_1__2619_ gnd vdd FILL
XFILL_2__3590_ gnd vdd FILL
XFILL_2__3170_ gnd vdd FILL
XFILL_3__3906_ gnd vdd FILL
X_2630_ _1647_ _2103_ _1634__bF$buf0 _2104_ vdd gnd OAI21X1
XFILL_2__4795_ gnd vdd FILL
XFILL_2__4375_ gnd vdd FILL
X_3835_ _709_ _843_ _628_ vdd gnd NOR2X1
X_3415_ _449_ _555_ \u_cpu.PC\[10] _244_ vdd gnd OAI21X1
XFILL_1__2792_ gnd vdd FILL
XFILL_1__2372_ gnd vdd FILL
XFILL_1__3997_ gnd vdd FILL
XFILL_1__3577_ gnd vdd FILL
XFILL_3__4864_ gnd vdd FILL
XFILL_3__4444_ gnd vdd FILL
XFILL_3__4024_ gnd vdd FILL
XFILL_2__2861_ gnd vdd FILL
XFILL_2__2441_ gnd vdd FILL
XFILL_4__2787_ gnd vdd FILL
XFILL_4__2367_ gnd vdd FILL
XFILL_0__2687_ gnd vdd FILL
X_4793_ _1751_ _1791_ _1792_ _1845_ vdd gnd OAI21X1
X_4373_ RDY_bF$buf2 Data_In[7] _1114_ vdd gnd NAND2X1
XFILL_2__3646_ gnd vdd FILL
XFILL_2__3226_ gnd vdd FILL
XFILL_4__4933_ gnd vdd FILL
XFILL_4__4513_ gnd vdd FILL
XFILL_0__4833_ gnd vdd FILL
XFILL_3__2930_ gnd vdd FILL
XFILL_3__2510_ gnd vdd FILL
XFILL_0__4413_ gnd vdd FILL
XFILL_1__2848_ gnd vdd FILL
XFILL_1__2428_ gnd vdd FILL
XFILL_3__3715_ gnd vdd FILL
XFILL_2__4184_ gnd vdd FILL
X_3644_ _1196__bF$buf5 _449_ _448_ _447_ vdd gnd OAI21X1
X_3224_ _112_ _113_ _115_ _1375_ vdd gnd OAI21X1
XFILL_2__2917_ gnd vdd FILL
X_4849_ _1881_ _1890_ _1891_ vdd gnd NOR2X1
X_4429_ \u_cpu.DIMUX\[3] _1165_ vdd gnd INVX2
X_4009_ \u_cpu.DIMUX\[7] _867_ _780_ \u_cpu.ABL\[7] _779_ vdd 
+ gnd
+ AOI22X1
XFILL_1__3386_ gnd vdd FILL
XFILL_3__4673_ gnd vdd FILL
XFILL_3__4253_ gnd vdd FILL
XFILL_2__2670_ gnd vdd FILL
XFILL_4__2596_ gnd vdd FILL
XFILL_0__2496_ gnd vdd FILL
X_4182_ _1039_ _977_ _941_ _1468_ vdd gnd OAI21X1
XFILL_2__3875_ gnd vdd FILL
XFILL_2__3455_ gnd vdd FILL
X_2915_ dsp_ack _1550_ vdd gnd INVX1
XFILL_4__4742_ gnd vdd FILL
XFILL_4__4322_ gnd vdd FILL
XFILL_0__4642_ gnd vdd FILL
XFILL_0__4222_ gnd vdd FILL
XFILL_1__2657_ gnd vdd FILL
XFILL_3__3944_ gnd vdd FILL
XFILL_3__3524_ gnd vdd FILL
XFILL_1__4803_ gnd vdd FILL
XFILL_3__4729_ gnd vdd FILL
XFILL_3__4309_ gnd vdd FILL
X_3873_ \u_cpu.CO\ _670_ _663_ vdd gnd NAND2X1
X_3453_ \u_cpu.PC\[1] _826_ _274_ vdd gnd NAND2X1
X_3033_ _2346_[5] clk_bF$buf3 DO_woz[5] vdd gnd DFFPOSX1
XFILL_2__2726_ gnd vdd FILL
X_4658_ _1684_ _1690_ _1710_ _1711_ vdd gnd OAI21X1
X_4238_ _991_ _1013_ _990_ vdd gnd NAND2X1
XFILL_1__3195_ gnd vdd FILL
XFILL_0__3913_ gnd vdd FILL
XFILL_3__4482_ gnd vdd FILL
XFILL_3__4062_ gnd vdd FILL
XFILL_2__3684_ gnd vdd FILL
XFILL_2__3264_ gnd vdd FILL
X_2724_ _1634__bF$buf3 _2007_ _2010_ _2011_ vdd gnd NAND3X1
XFILL_4__4551_ gnd vdd FILL
XFILL_4__4131_ gnd vdd FILL
XFILL_2__4889_ gnd vdd FILL
XFILL_2__4469_ gnd vdd FILL
XFILL_0__4451_ gnd vdd FILL
XFILL_0__4031_ gnd vdd FILL
XFILL_2__4049_ gnd vdd FILL
X_3929_ \u_cpu.AXYS[2]\[2] _760_ _710_ vdd gnd NAND2X1
X_3509_ \u_cpu.ADD\[0] _359_ _321_ vdd gnd NAND2X1
XFILL_1__2886_ gnd vdd FILL
XFILL_1__2466_ gnd vdd FILL
XFILL_3__3753_ gnd vdd FILL
XFILL_3__3333_ gnd vdd FILL
XFILL_1__4612_ gnd vdd FILL
XFILL_3__4958_ gnd vdd FILL
XFILL_3__4538_ gnd vdd FILL
XFILL_3__4118_ gnd vdd FILL
X_3682_ _757_ _1025_ _485_ vdd gnd AND2X2
X_3262_ _138_ _800__bF$buf2 _137_ _1388_ vdd gnd OAI21X1
XFILL_2__2535_ gnd vdd FILL
XFILL_4__3822_ gnd vdd FILL
XFILL_4__3402_ gnd vdd FILL
X_4887_ _Addr_Bus[12] _2161_ _2162_ _2163_ vdd gnd NAND3X1
X_4467_ RDY_bF$buf4 _1200_ _1198_ _1197_ vdd gnd NAND3X1
X_4047_ _822_ _819_ _815_ _814_ vdd gnd OAI21X1
XFILL_0__3722_ gnd vdd FILL
XFILL_0__3302_ gnd vdd FILL
XFILL_3__4291_ gnd vdd FILL
XFILL_4__4607_ gnd vdd FILL
XFILL_0__4927_ gnd vdd FILL
XFILL_3__2604_ gnd vdd FILL
XFILL_0__4507_ gnd vdd FILL
XFILL_2__3493_ gnd vdd FILL
XFILL_3__3809_ gnd vdd FILL
X_2953_ _1491_ vdd _1631_ clk_bF$buf12 \u_pia_kbd.state\[2] vdd 
+ gnd
+ DFFSR
X_2533_ _1649_ _1651_ _2007_ _2294_ vdd gnd OAI21X1
XFILL_4__4780_ gnd vdd FILL
XFILL_4__4360_ gnd vdd FILL
XFILL_2__4698_ gnd vdd FILL
XFILL_0__4680_ gnd vdd FILL
XFILL_2__4278_ gnd vdd FILL
XFILL_0__4260_ gnd vdd FILL
X_3738_ _1196__bF$buf2 _913_ _540_ _538_ _537_ vdd 
+ gnd
+ AOI22X1
X_3318_ _907_ _1183_ _169_ vdd gnd NOR2X1
XFILL_1__2695_ gnd vdd FILL
XFILL_3__3982_ gnd vdd FILL
XFILL_3__3562_ gnd vdd FILL
XFILL272550x7350 gnd vdd FILL
XFILL_1__4841_ gnd vdd FILL
XFILL_1__4421_ gnd vdd FILL
XFILL_1__4001_ gnd vdd FILL
XFILL_3__4767_ gnd vdd FILL
XFILL_3__4347_ gnd vdd FILL
X_3491_ _915_ _847_ _305_ _304_ vdd gnd NAND3X1
X_3071_ _1417__bF$buf6 vdd _1372_ clk_bF$buf9 \u_cpu.AXYS[1]\[7] vdd 
+ gnd
+ DFFSR
XFILL_2__2764_ gnd vdd FILL
XFILL_4__3631_ gnd vdd FILL
XFILL_4__3211_ gnd vdd FILL
X_4696_ \u_cpu.alu_op\[0] _1747_ _1748_ _1749_ vdd gnd OAI21X1
X_4276_ _1100_ _1025_ vdd gnd INVX1
XFILL_0__3951_ gnd vdd FILL
XFILL_2__3969_ gnd vdd FILL
XFILL_0__3531_ gnd vdd FILL
XFILL_2__3549_ gnd vdd FILL
XFILL_2__4910_ gnd vdd FILL
XFILL_4__4836_ gnd vdd FILL
XFILL_4__4416_ gnd vdd FILL
XFILL_0__4736_ gnd vdd FILL
XFILL_3__2833_ gnd vdd FILL
XFILL_3__2413_ gnd vdd FILL
XFILL_0__4316_ gnd vdd FILL
XFILL_3__3618_ gnd vdd FILL
X_2762_ _2354__7_bF$buf1 _1973_ vdd gnd INVX2
XFILL_2__4087_ gnd vdd FILL
XFILL_4__2902_ gnd vdd FILL
X_3967_ _747_ _745_ _743_ _742_ vdd gnd OAI21X1
X_3547_ _597_ _353_ vdd gnd INVX1
X_3127_ _1417__bF$buf8 vdd \u_cpu.DIMUX\[1] clk_bF$buf3 \u_cpu.DIHOLD\[1] vdd 
+ gnd
+ DFFSR
XFILL_0__2802_ gnd vdd FILL
XFILL_3__3791_ gnd vdd FILL
XFILL_3__3371_ gnd vdd FILL
XFILL_1__3289_ gnd vdd FILL
XFILL_1__4650_ gnd vdd FILL
XFILL_1__4230_ gnd vdd FILL
XFILL_3__4576_ gnd vdd FILL
XFILL_3__4156_ gnd vdd FILL
XFILL272550x97350 gnd vdd FILL
XFILL_2__2993_ gnd vdd FILL
XFILL_2__2573_ gnd vdd FILL
XFILL_4__2499_ gnd vdd FILL
XFILL_4__3860_ gnd vdd FILL
XFILL_4__3440_ gnd vdd FILL
XFILL_4__3020_ gnd vdd FILL
XFILL_0__2399_ gnd vdd FILL
X_4085_ _1083_ _853_ _852_ vdd gnd NOR2X1
XFILL_0__3760_ gnd vdd FILL
XFILL_2__3778_ gnd vdd FILL
XFILL_0__3340_ gnd vdd FILL
XFILL_2__3358_ gnd vdd FILL
X_2818_ _1916_ _1917_ _1918_ vdd gnd NOR2X1
XFILL_4__4645_ gnd vdd FILL
XFILL_4__4225_ gnd vdd FILL
XFILL_0__4965_ gnd vdd FILL
XFILL_3__2642_ gnd vdd FILL
XFILL_0__4545_ gnd vdd FILL
XFILL_0__4125_ gnd vdd FILL
XFILL_1__3921_ gnd vdd FILL
XFILL_1__3501_ gnd vdd FILL
XFILL_3__3847_ gnd vdd FILL
XFILL_3__3427_ gnd vdd FILL
XFILL_3__3007_ gnd vdd FILL
X_2991_ _1609_ _1598_ _1610_ vdd gnd NOR2X1
X_2571_ _2157_ _2158_ _2256_ _2257_ vdd gnd OAI21X1
XFILL_1__4706_ gnd vdd FILL
XFILL_4__2711_ gnd vdd FILL
X_3776_ _1325__bF$buf0 _888_ _576_ _575_ vdd gnd OAI21X1
X_3356_ _193_ _200_ _192_ vdd gnd NAND2X1
XFILL_0__2611_ gnd vdd FILL
XFILL_2__2629_ gnd vdd FILL
XFILL_3__3180_ gnd vdd FILL
XFILL_4__3916_ gnd vdd FILL
XFILL_0__3816_ gnd vdd FILL
XFILL_3__4385_ gnd vdd FILL
XCLKBUF1_insert30 clk clk_bF$buf8 vdd gnd CLKBUF1
XCLKBUF1_insert31 clk clk_bF$buf7 vdd gnd CLKBUF1
XCLKBUF1_insert32 clk clk_bF$buf6 vdd gnd CLKBUF1
XCLKBUF1_insert33 clk clk_bF$buf5 vdd gnd CLKBUF1
XCLKBUF1_insert34 clk clk_bF$buf4 vdd gnd CLKBUF1
XCLKBUF1_insert35 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert36 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert37 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert38 clk clk_bF$buf0 vdd gnd CLKBUF1
XFILL_2__2382_ gnd vdd FILL
XFILL_2__3587_ gnd vdd FILL
XFILL_2__3167_ gnd vdd FILL
X_2627_ _1923__bF$buf2 _2106_ _2102_ _2107_ vdd gnd NAND3X1
XFILL_4__4454_ gnd vdd FILL
XFILL_4__4034_ gnd vdd FILL
XFILL_0__4774_ gnd vdd FILL
XFILL_0__4354_ gnd vdd FILL
XFILL_3__2451_ gnd vdd FILL
XFILL_1__2789_ gnd vdd FILL
XFILL_1__2369_ gnd vdd FILL
XFILL_1__3730_ gnd vdd FILL
XFILL_1__3310_ gnd vdd FILL
XFILL_3__3656_ gnd vdd FILL
XFILL_3__3236_ gnd vdd FILL
X_2380_ _2352_ WE vdd gnd BUFX2
XFILL_1__4935_ gnd vdd FILL
XFILL_1__4515_ gnd vdd FILL
XFILL_4__2940_ gnd vdd FILL
XFILL_4__2520_ gnd vdd FILL
X_3585_ _430_ _390_ _389_ vdd gnd NOR2X1
X_3165_ RDY_bF$buf7 _1292_ _73_ _72_ _1356_ vdd 
+ gnd
+ OAI22X1
XFILL_2__2858_ gnd vdd FILL
XFILL_0__2840_ gnd vdd FILL
XFILL_0__2420_ gnd vdd FILL
XFILL_2__2438_ gnd vdd FILL
XFILL_4__3725_ gnd vdd FILL
XFILL_4__3305_ gnd vdd FILL
XFILL_0__3625_ gnd vdd FILL
XFILL_0__3205_ gnd vdd FILL
XFILL_3__4194_ gnd vdd FILL
XFILL_3__2927_ gnd vdd FILL
XFILL_3__2507_ gnd vdd FILL
XFILL_2__3396_ gnd vdd FILL
X_2856_ _2354__1_bF$buf5 _1638__bF$buf2 _2354__3_bF$buf5 _1639_ vdd gnd OAI21X1
X_2436_ _2354__4_bF$buf0 _35_ _38_ _39_ vdd gnd OAI21X1
XFILL_4__4683_ gnd vdd FILL
XFILL_4__4263_ gnd vdd FILL
XFILL_3__2680_ gnd vdd FILL
XFILL_0__4583_ gnd vdd FILL
XFILL_0__4163_ gnd vdd FILL
XFILL_1__2598_ gnd vdd FILL
XFILL_3__3885_ gnd vdd FILL
XFILL_3__3465_ gnd vdd FILL
XFILL_1__4744_ gnd vdd FILL
XFILL_1__4324_ gnd vdd FILL
X_3394_ _1073_ _873_ _607_ _227_ vdd gnd OAI21X1
XFILL_2__2667_ gnd vdd FILL
XFILL_4__3954_ gnd vdd FILL
XFILL_4__3534_ gnd vdd FILL
X_4599_ \u_cpu.state\[4] _1327_ vdd gnd INVX2
X_4179_ _939_ _938_ vdd gnd INVX1
XFILL_0__3854_ gnd vdd FILL
XFILL_0__3434_ gnd vdd FILL
XFILL_0__3014_ gnd vdd FILL
XFILL_2__4813_ gnd vdd FILL
XFILL_4__4739_ gnd vdd FILL
XFILL_4__4319_ gnd vdd FILL
XFILL_1__2810_ gnd vdd FILL
XFILL_3__2736_ gnd vdd FILL
XFILL_0__4639_ gnd vdd FILL
XFILL_0__4219_ gnd vdd FILL
XFILL272850x50550 gnd vdd FILL
X_2665_ _1935_ _1936_ _1634__bF$buf2 _2069_ vdd gnd OAI21X1
XFILL_4__4492_ gnd vdd FILL
XFILL_4__4072_ gnd vdd FILL
XFILL_0__4392_ gnd vdd FILL
XFILL_0__2705_ gnd vdd FILL
X_4811_ \u_cpu.ADD\[3] \u_cpu.ADD\[4] _1857_ vdd gnd NOR2X1
XFILL_3__3694_ gnd vdd FILL
XFILL_3__3274_ gnd vdd FILL
XFILL_1__4973_ gnd vdd FILL
XFILL_1__4553_ gnd vdd FILL
XFILL_1__4133_ gnd vdd FILL
XFILL_3__4899_ gnd vdd FILL
XFILL_3__4479_ gnd vdd FILL
XFILL_3__4059_ gnd vdd FILL
XFILL_2__2896_ gnd vdd FILL
XFILL_2__2476_ gnd vdd FILL
XFILL_4__3763_ gnd vdd FILL
XFILL_4__3343_ gnd vdd FILL
XFILL_0__3663_ gnd vdd FILL
XFILL_0__3243_ gnd vdd FILL
XFILL_2__4622_ gnd vdd FILL
XFILL_2__4202_ gnd vdd FILL
XFILL_4__4968_ gnd vdd FILL
XFILL_4__4548_ gnd vdd FILL
XFILL_4__4128_ gnd vdd FILL
XFILL_0__4868_ gnd vdd FILL
XFILL_3__2965_ gnd vdd FILL
XFILL_3__2545_ gnd vdd FILL
XFILL_0__4448_ gnd vdd FILL
XFILL_0__4028_ gnd vdd FILL
XFILL_1__3824_ gnd vdd FILL
XFILL_1__3404_ gnd vdd FILL
X_2894_ DO_dsp[7] _1566_ vdd gnd INVX1
X_2474_ _1_ _2340_ _2317_ _2329_ _2346_[1] vdd 
+ gnd
+ AOI22X1
XFILL_1__4609_ gnd vdd FILL
XFILL_4__2614_ gnd vdd FILL
X_3679_ _491_ RDY_bF$buf5 _483_ _482_ vdd gnd AOI21X1
X_3259_ _800__bF$buf3 _2354__6_bF$buf4 _135_ vdd gnd NAND2X1
XFILL_0__2934_ gnd vdd FILL
XFILL_0__2514_ gnd vdd FILL
X_4620_ \u_cpu.state\[2] \u_cpu.state\[3] _1348_ vdd gnd NAND2X1
X_4200_ _957_ _958_ _956_ vdd gnd NAND2X1
XFILL_4__3819_ gnd vdd FILL
XFILL_0__3719_ gnd vdd FILL
XFILL_1__4782_ gnd vdd FILL
XFILL_1__4362_ gnd vdd FILL
XFILL_3__4288_ gnd vdd FILL
XFILL_4__3992_ gnd vdd FILL
XFILL_4__3572_ gnd vdd FILL
XFILL_0__3892_ gnd vdd FILL
XFILL_0__3472_ gnd vdd FILL
XFILL_2__4851_ gnd vdd FILL
XFILL_2__4431_ gnd vdd FILL
XFILL_2__4011_ gnd vdd FILL
XFILL_4__4777_ gnd vdd FILL
XFILL_4__4357_ gnd vdd FILL
XFILL_0__4677_ gnd vdd FILL
XFILL_3__2774_ gnd vdd FILL
XFILL_0__4257_ gnd vdd FILL
XFILL_1__3633_ gnd vdd FILL
XFILL_1__3213_ gnd vdd FILL
XFILL_3__3979_ gnd vdd FILL
XFILL_3__3559_ gnd vdd FILL
XFILL_3__4920_ gnd vdd FILL
XFILL_3__4500_ gnd vdd FILL
XFILL_3_BUFX2_insert10 gnd vdd FILL
XFILL_3_BUFX2_insert11 gnd vdd FILL
XFILL_3_BUFX2_insert12 gnd vdd FILL
XFILL_1__4838_ gnd vdd FILL
XFILL_3_BUFX2_insert13 gnd vdd FILL
XFILL_3_BUFX2_insert14 gnd vdd FILL
XFILL_1__4418_ gnd vdd FILL
XFILL_3_BUFX2_insert15 gnd vdd FILL
XFILL_3_BUFX2_insert16 gnd vdd FILL
XFILL_3_BUFX2_insert17 gnd vdd FILL
XFILL_4__2843_ gnd vdd FILL
XFILL_3_BUFX2_insert18 gnd vdd FILL
XFILL_4__2423_ gnd vdd FILL
XFILL_3_BUFX2_insert19 gnd vdd FILL
X_3488_ _403_ _402_ _1250_ _301_ vdd gnd AOI21X1
X_3068_ _1417__bF$buf7 vdd _1467_ clk_bF$buf1 \u_cpu.AXYS[0]\[5] vdd 
+ gnd
+ DFFSR
XFILL_0__2743_ gnd vdd FILL
XFILL_2__3702_ gnd vdd FILL
XFILL_4__3628_ gnd vdd FILL
XFILL_4__3208_ gnd vdd FILL
XFILL_0__3948_ gnd vdd FILL
XFILL_0__3528_ gnd vdd FILL
XFILL_1__4591_ gnd vdd FILL
XFILL_1__4171_ gnd vdd FILL
XFILL_3__4097_ gnd vdd FILL
XFILL_2__4907_ gnd vdd FILL
XFILL_1__2904_ gnd vdd FILL
XFILL_4__3381_ gnd vdd FILL
XFILL_0__3281_ gnd vdd FILL
XFILL_2__3299_ gnd vdd FILL
XFILL_2__4660_ gnd vdd FILL
XFILL_2__4240_ gnd vdd FILL
X_2759_ _2354__1_bF$buf5 _1638__bF$buf2 _1636__bF$buf3 _1976_ vdd gnd OAI21X1
XFILL_4__4586_ gnd vdd FILL
XFILL_4__4166_ gnd vdd FILL
X_3700_ _501_ _634_ _500_ vdd gnd NOR2X1
XFILL_3__2583_ gnd vdd FILL
XFILL_0__4486_ gnd vdd FILL
XFILL_0__4066_ gnd vdd FILL
X_4905_ _2180_ _2178_ _2181_ vdd gnd NOR2X1
XFILL_1__3862_ gnd vdd FILL
XFILL_1__3442_ gnd vdd FILL
XFILL_1__3022_ gnd vdd FILL
XFILL_3__3788_ gnd vdd FILL
XFILL_3__3368_ gnd vdd FILL
XFILL_3_BUFX2_insert100 gnd vdd FILL
XFILL_3_BUFX2_insert101 gnd vdd FILL
XFILL_3_BUFX2_insert102 gnd vdd FILL
XFILL_3_BUFX2_insert103 gnd vdd FILL
XFILL_3_BUFX2_insert104 gnd vdd FILL
XFILL_3_BUFX2_insert105 gnd vdd FILL
XFILL_3_BUFX2_insert106 gnd vdd FILL
XFILL_3_BUFX2_insert107 gnd vdd FILL
XFILL_3_BUFX2_insert108 gnd vdd FILL
XFILL_3_BUFX2_insert109 gnd vdd FILL
XFILL_1__4647_ gnd vdd FILL
XFILL_1__4227_ gnd vdd FILL
XFILL_4__2652_ gnd vdd FILL
X_3297_ _1196__bF$buf0 _1345__bF$buf2 \u_cpu.clv\ _155_ vdd gnd OAI21X1
XFILL_0__2972_ gnd vdd FILL
XFILL_0__2552_ gnd vdd FILL
XFILL_2__3931_ gnd vdd FILL
XFILL_2__3511_ gnd vdd FILL
XFILL_4__3857_ gnd vdd FILL
XFILL_4__3437_ gnd vdd FILL
XFILL_4__3017_ gnd vdd FILL
XFILL_0__3757_ gnd vdd FILL
XFILL_0__3337_ gnd vdd FILL
XFILL_2__4716_ gnd vdd FILL
XFILL_1__2713_ gnd vdd FILL
XFILL_3__2639_ gnd vdd FILL
XFILL_4__3190_ gnd vdd FILL
XFILL_1__3918_ gnd vdd FILL
X_2988_ _1498_ _1499_ _1612_ _1631_ vdd gnd OAI21X1
X_2568_ _1954_ _2259_ _1973_ _2260_ vdd gnd AOI21X1
XFILL_4__4395_ gnd vdd FILL
XFILL_0__4295_ gnd vdd FILL
XFILL_4__2708_ gnd vdd FILL
XFILL_0__2608_ gnd vdd FILL
X_4714_ _1765_ _1738_ _1766_ _1767_ vdd gnd NAND3X1
XFILL_1__3671_ gnd vdd FILL
XFILL_1__3251_ gnd vdd FILL
XFILL_3__3597_ gnd vdd FILL
XFILL_3__3177_ gnd vdd FILL
XFILL_1__4456_ gnd vdd FILL
XFILL_1__4036_ gnd vdd FILL
XFILL_4__2881_ gnd vdd FILL
XFILL_4__2461_ gnd vdd FILL
XFILL_2__2799_ gnd vdd FILL
XFILL_0__2781_ gnd vdd FILL
XFILL_0__2361_ gnd vdd FILL
XFILL_2__2379_ gnd vdd FILL
XFILL_2__3740_ gnd vdd FILL
XFILL_2__3320_ gnd vdd FILL
XFILL_4__3666_ gnd vdd FILL
XFILL_4__3246_ gnd vdd FILL
XFILL_0__3986_ gnd vdd FILL
XFILL_0__3566_ gnd vdd FILL
XFILL_4_BUFX2_insert60 gnd vdd FILL
XFILL_4_BUFX2_insert61 gnd vdd FILL
XFILL_4_BUFX2_insert62 gnd vdd FILL
XFILL_4_BUFX2_insert63 gnd vdd FILL
XFILL_4_BUFX2_insert64 gnd vdd FILL
XFILL_2__4945_ gnd vdd FILL
XFILL_4_BUFX2_insert65 gnd vdd FILL
XFILL_2__4525_ gnd vdd FILL
XFILL_4_BUFX2_insert66 gnd vdd FILL
XFILL_2__4105_ gnd vdd FILL
XFILL_4_BUFX2_insert67 gnd vdd FILL
XFILL_4_BUFX2_insert68 gnd vdd FILL
XFILL_4_BUFX2_insert69 gnd vdd FILL
XFILL_1__2942_ gnd vdd FILL
XFILL_1__2522_ gnd vdd FILL
XFILL_3__2448_ gnd vdd FILL
XFILL_1__3727_ gnd vdd FILL
XFILL_1__3307_ gnd vdd FILL
X_2797_ _2354__1_bF$buf0 _1641_ _1939_ vdd gnd NOR2X1
X_2377_ _2353_[2] DO[2] vdd gnd BUFX2
XFILL_4__2937_ gnd vdd FILL
XFILL_4__2517_ gnd vdd FILL
XFILL_0__2837_ gnd vdd FILL
XFILL_0__2417_ gnd vdd FILL
X_4943_ _Addr_Bus[1] _2215_ _2173_ _2216_ vdd gnd NAND3X1
X_4523_ _1337_ _1309_ _1251_ vdd gnd NOR2X1
X_4103_ _1325__bF$buf0 _1076_ _869_ vdd gnd NOR2X1
XFILL_1__3480_ gnd vdd FILL
XFILL_1__4685_ gnd vdd FILL
XFILL_1__4265_ gnd vdd FILL
XFILL_4__2690_ gnd vdd FILL
XFILL_0__2590_ gnd vdd FILL
XFILL_4__3895_ gnd vdd FILL
XFILL_4__3475_ gnd vdd FILL
XFILL_0__3795_ gnd vdd FILL
XFILL_0__3375_ gnd vdd FILL
XFILL_2__4754_ gnd vdd FILL
XFILL_2__4334_ gnd vdd FILL
XFILL_1__2751_ gnd vdd FILL
XFILL_3__2677_ gnd vdd FILL
XFILL_1__3956_ gnd vdd FILL
XFILL_1__3536_ gnd vdd FILL
XFILL_3__4823_ gnd vdd FILL
XFILL_3__4403_ gnd vdd FILL
XFILL_2__2820_ gnd vdd FILL
XFILL_2__2400_ gnd vdd FILL
XFILL_4__2746_ gnd vdd FILL
XFILL_0__2646_ gnd vdd FILL
X_4752_ _1727_ _1804_ _1788_ _1805_ vdd gnd NAND3X1
X_4332_ _1083_ _1078_ _1077_ vdd gnd NOR2X1
XFILL_2__3605_ gnd vdd FILL
XFILL_1__4494_ gnd vdd FILL
XFILL_1__4074_ gnd vdd FILL
XFILL_2_BUFX2_insert140 gnd vdd FILL
XFILL_2_BUFX2_insert141 gnd vdd FILL
XFILL_2_BUFX2_insert142 gnd vdd FILL
XFILL_2_BUFX2_insert143 gnd vdd FILL
XFILL_2_BUFX2_insert144 gnd vdd FILL
XFILL_2_BUFX2_insert145 gnd vdd FILL
XFILL_2_BUFX2_insert146 gnd vdd FILL
XFILL_2_BUFX2_insert147 gnd vdd FILL
XFILL_2_BUFX2_insert148 gnd vdd FILL
XFILL_2_BUFX2_insert149 gnd vdd FILL
XFILL_1__2807_ gnd vdd FILL
XFILL_4__3284_ gnd vdd FILL
XFILL_0__3184_ gnd vdd FILL
XFILL_2__4983_ gnd vdd FILL
XFILL_2__4563_ gnd vdd FILL
XFILL_2__4143_ gnd vdd FILL
XFILL_4__4489_ gnd vdd FILL
XFILL_4__4069_ gnd vdd FILL
X_3603_ \u_cpu.V\ \u_cpu.cond_code\[1] _407_ vdd gnd NAND2X1
XFILL_1__2980_ gnd vdd FILL
XFILL_1__2560_ gnd vdd FILL
XFILL_0__4389_ gnd vdd FILL
XFILL_3__2486_ gnd vdd FILL
XFILL_1_BUFX2_insert160 gnd vdd FILL
XFILL_1_BUFX2_insert161 gnd vdd FILL
XFILL_1_BUFX2_insert162 gnd vdd FILL
XFILL_1_BUFX2_insert163 gnd vdd FILL
XFILL_1_BUFX2_insert164 gnd vdd FILL
XFILL_1_BUFX2_insert165 gnd vdd FILL
XFILL_1_BUFX2_insert166 gnd vdd FILL
XFILL_1_BUFX2_insert167 gnd vdd FILL
X_4808_ _1840_ _1854_ _1855_ vdd gnd NAND2X1
XFILL_1__3765_ gnd vdd FILL
XFILL_1__3345_ gnd vdd FILL
XFILL_3__4632_ gnd vdd FILL
XFILL_3__4212_ gnd vdd FILL
XFILL_4__2975_ gnd vdd FILL
XFILL_4__2555_ gnd vdd FILL
XFILL_0__2875_ gnd vdd FILL
XFILL_0__2455_ gnd vdd FILL
X_4981_ _2248_ _2249_ _2250_ vdd gnd NAND2X1
X_4561_ _1300_ \u_cpu.ADD\[6] _1290_ _1289_ vdd gnd AOI21X1
X_4141_ \u_cpu.PC\[15] _907_ vdd gnd INVX1
XFILL_2__3834_ gnd vdd FILL
XFILL_2__3414_ gnd vdd FILL
XFILL_4__4701_ gnd vdd FILL
XFILL_0__4601_ gnd vdd FILL
XFILL_2__4619_ gnd vdd FILL
XFILL_1__2616_ gnd vdd FILL
XFILL_3__3903_ gnd vdd FILL
XFILL_2__4792_ gnd vdd FILL
XFILL_2__4372_ gnd vdd FILL
XFILL_4__4298_ gnd vdd FILL
X_3832_ \u_cpu.php\ _843_ _827_ _625_ vdd gnd OAI21X1
X_3412_ _242_ _241_ vdd gnd INVX1
XFILL_0__4198_ gnd vdd FILL
X_4617_ _1350_ _1346_ _1347_ _1345_ vdd gnd NAND3X1
XFILL_1__3994_ gnd vdd FILL
XFILL_1__3574_ gnd vdd FILL
XFILL_3__4861_ gnd vdd FILL
XFILL_3__4441_ gnd vdd FILL
XFILL_3__4021_ gnd vdd FILL
XFILL_1__4779_ gnd vdd FILL
XFILL_1__4359_ gnd vdd FILL
XFILL_4__2784_ gnd vdd FILL
XFILL_4__2364_ gnd vdd FILL
XFILL_0__2684_ gnd vdd FILL
X_4790_ _1681__bF$buf2 _1842_ _1682_ _1666_ vdd gnd OAI21X1
X_4370_ _1125_ \u_cpu.IRHOLD\[7] _1340_ _1112_ vdd gnd OAI21X1
XFILL_2__3643_ gnd vdd FILL
XFILL_2__3223_ gnd vdd FILL
XFILL_4__3989_ gnd vdd FILL
XFILL_4__3569_ gnd vdd FILL
XFILL_4__4930_ gnd vdd FILL
XFILL_4__4510_ gnd vdd FILL
XFILL_0__3889_ gnd vdd FILL
XFILL_0__3469_ gnd vdd FILL
XFILL_2__4848_ gnd vdd FILL
XFILL_0__4830_ gnd vdd FILL
XFILL_2__4428_ gnd vdd FILL
XFILL_0__4410_ gnd vdd FILL
XFILL_2__4008_ gnd vdd FILL
XFILL_1__2845_ gnd vdd FILL
XFILL_1__2425_ gnd vdd FILL
XFILL_3__3712_ gnd vdd FILL
XFILL_2__4181_ gnd vdd FILL
XFILL_3__4917_ gnd vdd FILL
X_3641_ _445_ _446_ _444_ vdd gnd NAND2X1
X_3221_ _2354_[14] _800__bF$buf1 _110_ vdd gnd NAND2X1
XFILL_2__2914_ gnd vdd FILL
X_4846_ _1877_ _1888_ vdd gnd INVX1
X_4426_ _1206_ \u_cpu.ABH\[3] _1163_ _1162_ vdd gnd AOI21X1
X_4006_ _783_ _777_ _776_ vdd gnd AND2X2
XFILL_1__3383_ gnd vdd FILL
XFILL_3__4670_ gnd vdd FILL
XFILL_3__4250_ gnd vdd FILL
XFILL_1__4588_ gnd vdd FILL
XFILL_1__4168_ gnd vdd FILL
XFILL_4__2593_ gnd vdd FILL
XFILL_0__2493_ gnd vdd FILL
XFILL_2__3872_ gnd vdd FILL
XFILL_2__3452_ gnd vdd FILL
XFILL_2__3032_ gnd vdd FILL
XFILL_4__3798_ gnd vdd FILL
XFILL_4__3378_ gnd vdd FILL
X_2912_ _1520_ _2354_[12] _1552_ vdd gnd AND2X2
XFILL_0__3698_ gnd vdd FILL
XFILL_0__3278_ gnd vdd FILL
XFILL_2__4657_ gnd vdd FILL
XFILL_2__4237_ gnd vdd FILL
XFILL_1__2654_ gnd vdd FILL
XFILL_3__3941_ gnd vdd FILL
XFILL_3__3521_ gnd vdd FILL
XFILL_1__3859_ gnd vdd FILL
XFILL_1__3439_ gnd vdd FILL
XFILL_1__3019_ gnd vdd FILL
XFILL273750x86550 gnd vdd FILL
XFILL_1__4800_ gnd vdd FILL
XFILL_3__4726_ gnd vdd FILL
XFILL_3__4306_ gnd vdd FILL
X_3870_ _898_ _662_ _661_ _660_ vdd gnd OAI21X1
X_3450_ \u_cpu.DIMUX\[2] _867_ _780_ \u_cpu.ABL\[2] _273_ vdd 
+ gnd
+ AOI22X1
X_3030_ kbd_rdy _1499_ vdd gnd INVX1
XFILL_2__2723_ gnd vdd FILL
XFILL_4__2649_ gnd vdd FILL
XFILL_0__2969_ gnd vdd FILL
XFILL_0__2549_ gnd vdd FILL
X_4655_ _1688_ _1705_ _1707_ _1708_ vdd gnd OAI21X1
X_4235_ _990_ _988_ _987_ vdd gnd NOR2X1
XFILL_1__3192_ gnd vdd FILL
XFILL_0__3910_ gnd vdd FILL
XFILL_2__3928_ gnd vdd FILL
XFILL_2__3508_ gnd vdd FILL
XFILL_1__4397_ gnd vdd FILL
XFILL_2__3681_ gnd vdd FILL
XFILL_2__3261_ gnd vdd FILL
XFILL_4__3187_ gnd vdd FILL
X_2721_ _1973_ _1990_ _2013_ _2014_ vdd gnd NAND3X1
XFILL_2__4886_ gnd vdd FILL
XFILL_2__4466_ gnd vdd FILL
XFILL_2__4046_ gnd vdd FILL
X_3926_ _1129__bF$buf1 _1105_ _765_ _708_ vdd gnd NAND3X1
X_3506_ _322_ _1333_ _319_ \u_cpu.AI\[0] vdd gnd OAI21X1
XFILL_1__2883_ gnd vdd FILL
XFILL_1__2463_ gnd vdd FILL
XFILL_3__2389_ gnd vdd FILL
XFILL_3__3750_ gnd vdd FILL
XFILL_3__3330_ gnd vdd FILL
XFILL_1__3668_ gnd vdd FILL
XFILL_1__3248_ gnd vdd FILL
XFILL_3__4955_ gnd vdd FILL
XFILL_3__4535_ gnd vdd FILL
XFILL_3__4115_ gnd vdd FILL
XFILL_2__2532_ gnd vdd FILL
XFILL_4__2878_ gnd vdd FILL
XFILL_4__2458_ gnd vdd FILL
XFILL_0__2778_ gnd vdd FILL
XFILL_0__2358_ gnd vdd FILL
X_4884_ DO_dsp[6] _2160_ vdd gnd INVX1
X_4464_ \u_cpu.PC\[9] _1196__bF$buf1 _1195_ vdd gnd NAND2X1
X_4044_ _1329_ _1326_ _1075_ _811_ vdd gnd OAI21X1
XFILL_2__3737_ gnd vdd FILL
XFILL_2__3317_ gnd vdd FILL
XFILL_4__4604_ gnd vdd FILL
XFILL_0__4924_ gnd vdd FILL
XFILL_3__2601_ gnd vdd FILL
XFILL_0__4504_ gnd vdd FILL
XFILL_1__2939_ gnd vdd FILL
XFILL_1__2519_ gnd vdd FILL
XFILL_2__3490_ gnd vdd FILL
XFILL_3__3806_ gnd vdd FILL
X_2950_ _2354_[12] _1520_ _1521_ vdd gnd NAND2X1
X_2530_ _2295_ _2296_ _1997_ _2294_ _2297_ vdd 
+ gnd
+ AOI22X1
XFILL_2__4695_ gnd vdd FILL
XFILL_2__4275_ gnd vdd FILL
X_3735_ _1196__bF$buf2 _869_ _535_ _534_ vdd gnd OAI21X1
X_3315_ _1318_ _1113_ _167_ _166_ vdd gnd OAI21X1
XFILL_1__2692_ gnd vdd FILL
XFILL_1__3897_ gnd vdd FILL
XFILL_1__3477_ gnd vdd FILL
XFILL_3__4764_ gnd vdd FILL
XFILL_3__4344_ gnd vdd FILL
XFILL_2__2761_ gnd vdd FILL
XFILL_4__2687_ gnd vdd FILL
XFILL_0__2587_ gnd vdd FILL
X_4693_ \u_cpu.BI\[0] _1745_ _1743_ _1744_ _1746_ vdd 
+ gnd
+ AOI22X1
X_4273_ _1111_ _1023_ _1031_ _1022_ vdd gnd OAI21X1
XFILL_2__3966_ gnd vdd FILL
XFILL_2__3546_ gnd vdd FILL
XFILL_4__4833_ gnd vdd FILL
XFILL_4__4413_ gnd vdd FILL
XFILL_0__4733_ gnd vdd FILL
XFILL_3__2830_ gnd vdd FILL
XFILL_3__2410_ gnd vdd FILL
XFILL_0__4313_ gnd vdd FILL
XFILL_1__2748_ gnd vdd FILL
XFILL_3__3615_ gnd vdd FILL
XFILL_2__4084_ gnd vdd FILL
X_3964_ _1344_ \u_cpu.DIMUX\[7] \u_cpu.AN\ _740_ _739_ vdd 
+ gnd
+ OAI22X1
X_3544_ _359_ \u_cpu.ADD\[3] _351_ _350_ vdd gnd AOI21X1
X_3124_ _1417__bF$buf8 vdd \u_cpu.DIMUX\[3] clk_bF$buf3 \u_cpu.DIHOLD\[3] vdd 
+ gnd
+ DFFSR
XFILL_2__2817_ gnd vdd FILL
X_4749_ _1799_ _1801_ _1797_ _1802_ vdd gnd NAND3X1
X_4329_ _1075_ _1251_ _1329_ _1074_ vdd gnd OAI21X1
XFILL_1__3286_ gnd vdd FILL
XFILL_3__4573_ gnd vdd FILL
XFILL_3__4153_ gnd vdd FILL
XFILL_2__2990_ gnd vdd FILL
XFILL_2__2570_ gnd vdd FILL
XFILL_4__2496_ gnd vdd FILL
XFILL_0__2396_ gnd vdd FILL
X_4082_ \u_cpu.state\[5] _911_ _850_ _849_ vdd gnd OAI21X1
XFILL_2__3775_ gnd vdd FILL
XFILL_2__3355_ gnd vdd FILL
X_2815_ _1648_ _1659_ _1920__bF$buf0 _1921_ vdd gnd AOI21X1
XFILL_4__4642_ gnd vdd FILL
XFILL_4__4222_ gnd vdd FILL
XFILL_0__4962_ gnd vdd FILL
XFILL_0__4542_ gnd vdd FILL
XFILL_0__4122_ gnd vdd FILL
XFILL_1__2977_ gnd vdd FILL
XFILL_1__2557_ gnd vdd FILL
XFILL_3__3844_ gnd vdd FILL
XFILL_3__3424_ gnd vdd FILL
XFILL_3__3004_ gnd vdd FILL
XFILL_1__4703_ gnd vdd FILL
XFILL_3__4629_ gnd vdd FILL
XFILL_3__4209_ gnd vdd FILL
X_3773_ _1328__bF$buf5 _870_ _573_ _572_ vdd gnd OAI21X1
X_3353_ _784_ _788_ _630_ _190_ vdd gnd OAI21X1
XFILL_2__2626_ gnd vdd FILL
XFILL_4__3913_ gnd vdd FILL
X_4978_ _2196_ _2244_ _2246_ _2247_ vdd gnd NAND3X1
X_4558_ _1333_ _1286_ vdd gnd INVX4
X_4138_ _1285_ _904_ vdd gnd INVX2
XFILL_0__3813_ gnd vdd FILL
XFILL274050x36150 gnd vdd FILL
XFILL_3__4382_ gnd vdd FILL
XFILL_2__3584_ gnd vdd FILL
X_2624_ _2354__3_bF$buf5 _2354__0_bF$buf1 _1944_ _2109_ vdd gnd NAND3X1
XFILL_4__4451_ gnd vdd FILL
XFILL_4__4031_ gnd vdd FILL
XFILL_2__4789_ gnd vdd FILL
XFILL_0__4771_ gnd vdd FILL
XFILL_2__4369_ gnd vdd FILL
XFILL_0__4351_ gnd vdd FILL
X_3829_ _623_ _622_ vdd gnd INVX1
X_3409_ _1286_ _875_ \u_cpu.ABH\[1] _239_ vdd gnd OAI21X1
XFILL_1__2786_ gnd vdd FILL
XFILL_1__2366_ gnd vdd FILL
XFILL_3__3653_ gnd vdd FILL
XFILL_3__3233_ gnd vdd FILL
XFILL_1__4932_ gnd vdd FILL
XFILL_1__4512_ gnd vdd FILL
XFILL_3__4858_ gnd vdd FILL
XFILL_3__4438_ gnd vdd FILL
XFILL_3__4018_ gnd vdd FILL
X_3582_ _991_ _1032_ _387_ _386_ vdd gnd OAI21X1
X_3162_ _1418_ clk_bF$buf0 \u_cpu.IRHOLD\[7] vdd gnd DFFPOSX1
XFILL_2__2855_ gnd vdd FILL
XFILL_2__2435_ gnd vdd FILL
XFILL273750x18150 gnd vdd FILL
XFILL_4__3722_ gnd vdd FILL
XFILL_4__3302_ gnd vdd FILL
X_4787_ _1839_ _1838_ _1840_ vdd gnd NAND2X1
X_4367_ RDY_bF$buf3 Data_In[6] _1109_ vdd gnd NAND2X1
XFILL_0__3622_ gnd vdd FILL
XFILL_0__3202_ gnd vdd FILL
XFILL_3__4191_ gnd vdd FILL
XFILL_4__4927_ gnd vdd FILL
XFILL_4__4507_ gnd vdd FILL
XFILL_0__4827_ gnd vdd FILL
XFILL_3__2924_ gnd vdd FILL
XFILL_3__2504_ gnd vdd FILL
XFILL_0__4407_ gnd vdd FILL
XFILL_2__3393_ gnd vdd FILL
XFILL_3__3709_ gnd vdd FILL
X_2853_ _2354__1_bF$buf5 _1641_ _2354__3_bF$buf1 _1642_ vdd gnd OAI21X1
X_2433_ _41_ _2111_ _1923__bF$buf3 _42_ vdd gnd AOI21X1
XFILL_4__4680_ gnd vdd FILL
XFILL_4__4260_ gnd vdd FILL
XFILL_0_BUFX2_insert0 gnd vdd FILL
XFILL_0_BUFX2_insert1 gnd vdd FILL
XFILL_0_BUFX2_insert2 gnd vdd FILL
XFILL_0_BUFX2_insert3 gnd vdd FILL
XFILL_0_BUFX2_insert4 gnd vdd FILL
XFILL_0_BUFX2_insert5 gnd vdd FILL
XFILL_0_BUFX2_insert6 gnd vdd FILL
XFILL_0_BUFX2_insert7 gnd vdd FILL
XFILL_0_BUFX2_insert8 gnd vdd FILL
XFILL_2__4598_ gnd vdd FILL
XFILL_0__4580_ gnd vdd FILL
XFILL_0_BUFX2_insert9 gnd vdd FILL
XFILL_2__4178_ gnd vdd FILL
XFILL_0__4160_ gnd vdd FILL
X_3638_ _1232_ _441_ vdd gnd INVX1
X_3218_ _1041_ _713_ _109_ _1372_ vdd gnd OAI21X1
XFILL_1__2595_ gnd vdd FILL
XFILL_3__3882_ gnd vdd FILL
XFILL_3__3462_ gnd vdd FILL
XFILL_1__4741_ gnd vdd FILL
XFILL_1__4321_ gnd vdd FILL
XFILL_3__4667_ gnd vdd FILL
XFILL_3__4247_ gnd vdd FILL
X_3391_ _782_ \u_cpu.PC\[0] _225_ _224_ vdd gnd AOI21X1
XFILL_2__2664_ gnd vdd FILL
XFILL_4__3951_ gnd vdd FILL
XFILL_4__3531_ gnd vdd FILL
X_4596_ _1328__bF$buf3 _1325__bF$buf1 _1331_ _1324_ vdd gnd AOI21X1
X_4176_ _1287_ _939_ _936_ _935_ vdd gnd NAND3X1
XFILL_2__3869_ gnd vdd FILL
XFILL_0__3851_ gnd vdd FILL
XFILL_0__3431_ gnd vdd FILL
XFILL_2__3449_ gnd vdd FILL
XFILL_0__3011_ gnd vdd FILL
XFILL_2__3029_ gnd vdd FILL
XFILL_2__4810_ gnd vdd FILL
X_2909_ _1528_ _2354__1_bF$buf3 _1555_ vdd gnd AND2X2
XFILL_4__4736_ gnd vdd FILL
XFILL_4__4316_ gnd vdd FILL
XFILL_3__2733_ gnd vdd FILL
XFILL_0__4636_ gnd vdd FILL
XFILL_0__4216_ gnd vdd FILL
XFILL_3__3938_ gnd vdd FILL
XFILL_3__3518_ gnd vdd FILL
X_2662_ _1917_ _1651_ _1641_ _2072_ vdd gnd OAI21X1
XFILL_4__2802_ gnd vdd FILL
X_3867_ \u_cpu.AXYS[1]\[4] _1050_ _790_ \u_cpu.AXYS[2]\[4] _658_ vdd 
+ gnd
+ AOI22X1
X_3447_ _872_ _346_ _271_ _2354_[2] vdd gnd OAI21X1
X_3027_ _1497_ _1500_ _1501_ _1434_ vdd gnd OAI21X1
XFILL_0__2702_ gnd vdd FILL
XFILL_3__3691_ gnd vdd FILL
XFILL_3__3271_ gnd vdd FILL
XFILL_1__3189_ gnd vdd FILL
XFILL_0__3907_ gnd vdd FILL
XFILL_1__4970_ gnd vdd FILL
XFILL_1__4550_ gnd vdd FILL
XFILL_1__4130_ gnd vdd FILL
XFILL_3__4896_ gnd vdd FILL
XFILL_3__4476_ gnd vdd FILL
XFILL_3__4056_ gnd vdd FILL
XFILL_2__2893_ gnd vdd FILL
XFILL_2__2473_ gnd vdd FILL
XFILL_4__2399_ gnd vdd FILL
XFILL_4__3760_ gnd vdd FILL
XFILL_4__3340_ gnd vdd FILL
XFILL_0__3660_ gnd vdd FILL
XFILL_2__3678_ gnd vdd FILL
XFILL_2__3258_ gnd vdd FILL
XFILL_0__3240_ gnd vdd FILL
X_2718_ _2016_ _2015_ _1634__bF$buf2 _2017_ vdd gnd OAI21X1
XFILL_4__4965_ gnd vdd FILL
XFILL_4__4545_ gnd vdd FILL
XFILL_4__4125_ gnd vdd FILL
XFILL_0__4865_ gnd vdd FILL
XFILL_3__2542_ gnd vdd FILL
XFILL_0__4445_ gnd vdd FILL
XFILL_0__4025_ gnd vdd FILL
XFILL_1__3821_ gnd vdd FILL
XFILL_1__3401_ gnd vdd FILL
XFILL_3__3747_ gnd vdd FILL
XFILL_3__3327_ gnd vdd FILL
X_2891_ _1567_ _1568_ _1569_ vdd gnd NOR2X1
X_2471_ _2354__3_bF$buf0 _1924_ _1634__bF$buf5 _4_ vdd gnd OAI21X1
XFILL_1__4606_ gnd vdd FILL
XFILL_4__2611_ gnd vdd FILL
X_3676_ _1196__bF$buf7 _1329_ _1072_ _479_ vdd gnd NAND3X1
X_3256_ _1116_ _794_ _134_ _1385_ vdd gnd OAI21X1
XFILL_0__2931_ gnd vdd FILL
XFILL_2__2949_ gnd vdd FILL
XFILL_2__2529_ gnd vdd FILL
XFILL_0__2511_ gnd vdd FILL
XFILL_4__3816_ gnd vdd FILL
XFILL_0__3716_ gnd vdd FILL
XFILL_3__4285_ gnd vdd FILL
XFILL_0_BUFX2_insert80 gnd vdd FILL
XFILL_0_BUFX2_insert81 gnd vdd FILL
XFILL_0_BUFX2_insert82 gnd vdd FILL
XFILL_2__3487_ gnd vdd FILL
XFILL_0_BUFX2_insert83 gnd vdd FILL
XFILL_0_BUFX2_insert84 gnd vdd FILL
XFILL_0_BUFX2_insert85 gnd vdd FILL
XFILL_0_BUFX2_insert86 gnd vdd FILL
XFILL_0_BUFX2_insert87 gnd vdd FILL
XFILL_0_BUFX2_insert88 gnd vdd FILL
XFILL_0_BUFX2_insert89 gnd vdd FILL
X_2947_ _2354__4_bF$buf2 _1522_ _1523_ _1524_ vdd gnd NAND3X1
X_2527_ _2279_ _2299_ _2300_ vdd gnd NAND2X1
XFILL_4__4774_ gnd vdd FILL
XFILL_4__4354_ gnd vdd FILL
XFILL_0__4674_ gnd vdd FILL
XFILL_3__2771_ gnd vdd FILL
XFILL_0__4254_ gnd vdd FILL
XFILL_1__2689_ gnd vdd FILL
XFILL_1__3630_ gnd vdd FILL
XFILL_1__3210_ gnd vdd FILL
XFILL_3__3976_ gnd vdd FILL
XFILL_3__3556_ gnd vdd FILL
XFILL_1__4835_ gnd vdd FILL
XFILL_1__4415_ gnd vdd FILL
XFILL_4__2840_ gnd vdd FILL
XFILL_4__2420_ gnd vdd FILL
X_3485_ RDY_bF$buf6 _1082_ _299_ _298_ vdd gnd OAI21X1
X_3065_ _1417__bF$buf10 vdd _1428_ clk_bF$buf4 \u_cpu.state\[0] vdd 
+ gnd
+ DFFSR
XFILL_0__2740_ gnd vdd FILL
XFILL_2__2758_ gnd vdd FILL
XFILL_4__3625_ gnd vdd FILL
XFILL_4__3205_ gnd vdd FILL
XFILL_0__3945_ gnd vdd FILL
XFILL_0__3525_ gnd vdd FILL
XFILL_3__4094_ gnd vdd FILL
XFILL_2__4904_ gnd vdd FILL
XFILL_1__2901_ gnd vdd FILL
XFILL_3__2827_ gnd vdd FILL
XFILL_3__2407_ gnd vdd FILL
XFILL_2__3296_ gnd vdd FILL
X_2756_ _1651_ _1643__bF$buf5 _1634__bF$buf2 _1979_ vdd gnd AOI21X1
XFILL_4__4583_ gnd vdd FILL
XFILL_4__4163_ gnd vdd FILL
XFILL_3__2580_ gnd vdd FILL
XFILL_0__4483_ gnd vdd FILL
XFILL_0__4063_ gnd vdd FILL
XFILL_2_BUFX2_insert0 gnd vdd FILL
XFILL_1__2498_ gnd vdd FILL
XFILL_2_BUFX2_insert1 gnd vdd FILL
XFILL_2_BUFX2_insert2 gnd vdd FILL
XFILL_2_BUFX2_insert3 gnd vdd FILL
XFILL_2_BUFX2_insert4 gnd vdd FILL
XFILL_2_BUFX2_insert5 gnd vdd FILL
XFILL_2_BUFX2_insert6 gnd vdd FILL
XFILL_2_BUFX2_insert7 gnd vdd FILL
XFILL_2_BUFX2_insert8 gnd vdd FILL
XFILL_2_BUFX2_insert9 gnd vdd FILL
X_4902_ _Addr_Bus[4] _2177_ _2168_ _2178_ vdd gnd NAND3X1
XFILL_3__3785_ gnd vdd FILL
XFILL_3__3365_ gnd vdd FILL
XFILL_1__4644_ gnd vdd FILL
XFILL_1__4224_ gnd vdd FILL
X_3294_ _1041_ _932_ _154_ _1403_ vdd gnd OAI21X1
XFILL_2__2987_ gnd vdd FILL
XFILL_2__2567_ gnd vdd FILL
XFILL_4__3854_ gnd vdd FILL
XFILL_4__3434_ gnd vdd FILL
XFILL_4__3014_ gnd vdd FILL
X_4499_ _1243_ _1230_ _1229_ _1228_ _1227_ vdd 
+ gnd
+ AOI22X1
X_4079_ _1235_ _881_ _847_ _846_ vdd gnd NAND3X1
XFILL_0__3754_ gnd vdd FILL
XFILL_0__3334_ gnd vdd FILL
XFILL_2__4713_ gnd vdd FILL
XFILL_4__4639_ gnd vdd FILL
XFILL_4__4219_ gnd vdd FILL
XFILL_1__2710_ gnd vdd FILL
XFILL_0__4959_ gnd vdd FILL
XFILL_3__2636_ gnd vdd FILL
XFILL_0__4539_ gnd vdd FILL
XFILL_0__4119_ gnd vdd FILL
XFILL_1__3915_ gnd vdd FILL
X_2985_ reset _1491_ vdd gnd INVX4
X_2565_ _2155_ _2262_ _2127_ _2142_ _2346_[3] vdd 
+ gnd
+ AOI22X1
XFILL_4__4392_ gnd vdd FILL
XFILL_0__4292_ gnd vdd FILL
XFILL_4__2705_ gnd vdd FILL
XFILL_0__2605_ gnd vdd FILL
X_4711_ _1751_ _1754_ _1763_ _1757_ _1764_ vdd 
+ gnd
+ AOI22X1
XFILL_3__3594_ gnd vdd FILL
XFILL_3__3174_ gnd vdd FILL
XFILL_1__4453_ gnd vdd FILL
XFILL_1__4033_ gnd vdd FILL
XFILL_3__4799_ gnd vdd FILL
XFILL_3__4379_ gnd vdd FILL
XFILL_2__2796_ gnd vdd FILL
XFILL_2__2376_ gnd vdd FILL
XFILL_4__3663_ gnd vdd FILL
XFILL_4__3243_ gnd vdd FILL
XFILL_0__3983_ gnd vdd FILL
XFILL_0__3563_ gnd vdd FILL
XFILL_2__4942_ gnd vdd FILL
XFILL_2__4522_ gnd vdd FILL
XFILL_2__4102_ gnd vdd FILL
XFILL_4__4868_ gnd vdd FILL
XFILL_4_BUFX2_insert39 gnd vdd FILL
XFILL_4__4448_ gnd vdd FILL
XFILL_4__4028_ gnd vdd FILL
XFILL273150x21750 gnd vdd FILL
XFILL_0__4768_ gnd vdd FILL
XFILL_3__2445_ gnd vdd FILL
XFILL_0__4348_ gnd vdd FILL
XBUFX2_insert90 _2354_[0] _2354__0_bF$buf1 vdd gnd BUFX2
XBUFX2_insert91 _2354_[0] _2354__0_bF$buf0 vdd gnd BUFX2
XBUFX2_insert92 _1417_ _1417__bF$buf10 vdd gnd BUFX2
XBUFX2_insert93 _1417_ _1417__bF$buf9 vdd gnd BUFX2
XBUFX2_insert94 _1417_ _1417__bF$buf8 vdd gnd BUFX2
XFILL_1__3724_ gnd vdd FILL
XFILL_1__3304_ gnd vdd FILL
XBUFX2_insert95 _1417_ _1417__bF$buf7 vdd gnd BUFX2
XBUFX2_insert96 _1417_ _1417__bF$buf6 vdd gnd BUFX2
XBUFX2_insert97 _1417_ _1417__bF$buf5 vdd gnd BUFX2
XBUFX2_insert98 _1417_ _1417__bF$buf4 vdd gnd BUFX2
XBUFX2_insert99 _1417_ _1417__bF$buf3 vdd gnd BUFX2
X_2794_ _1941_ _1937_ _1942_ vdd gnd OR2X2
X_2374_ _2353_[5] DO[5] vdd gnd BUFX2
XFILL_1__4929_ gnd vdd FILL
XFILL_1__4509_ gnd vdd FILL
XFILL_4__2934_ gnd vdd FILL
XFILL_4__2514_ gnd vdd FILL
X_3999_ _772_ _771_ vdd gnd INVX1
X_3579_ _386_ _384_ _383_ vdd gnd AND2X2
X_3159_ _1397_ clk_bF$buf0 \u_cpu.IRHOLD\[4] vdd gnd DFFPOSX1
XFILL_0__2834_ gnd vdd FILL
XFILL_0__2414_ gnd vdd FILL
X_4940_ _2207_ _2195_ _2212_ _2213_ Data_In[4] vdd 
+ gnd
+ AOI22X1
X_4520_ \u_cpu.backwards\ \u_cpu.CO\ _1248_ vdd gnd NAND2X1
X_4100_ _867_ _871_ _866_ vdd gnd NOR2X1
XFILL_4__3719_ gnd vdd FILL
XFILL_0__3619_ gnd vdd FILL
XFILL_1__4682_ gnd vdd FILL
XFILL_1__4262_ gnd vdd FILL
XFILL_3__4188_ gnd vdd FILL
XFILL_4__3892_ gnd vdd FILL
XFILL_4__3472_ gnd vdd FILL
XFILL_0__3792_ gnd vdd FILL
XFILL_0__3372_ gnd vdd FILL
XFILL_2__4751_ gnd vdd FILL
XFILL_2__4331_ gnd vdd FILL
XFILL_4__4677_ gnd vdd FILL
XFILL_4__4257_ gnd vdd FILL
XFILL_3__2674_ gnd vdd FILL
XFILL_0__4577_ gnd vdd FILL
XFILL_0__4157_ gnd vdd FILL
XFILL_1__3953_ gnd vdd FILL
XFILL_1__3533_ gnd vdd FILL
XFILL_3__3879_ gnd vdd FILL
XFILL_3__3459_ gnd vdd FILL
XFILL_3__4820_ gnd vdd FILL
XFILL_3__4400_ gnd vdd FILL
XFILL_1__4738_ gnd vdd FILL
XFILL_1__4318_ gnd vdd FILL
XFILL_4__2743_ gnd vdd FILL
X_3388_ _1327_ _888_ _909_ _222_ vdd gnd OAI21X1
XFILL_0__2643_ gnd vdd FILL
XFILL_2__3602_ gnd vdd FILL
XFILL_4__3948_ gnd vdd FILL
XFILL_4__3528_ gnd vdd FILL
XFILL_0__3848_ gnd vdd FILL
XFILL_0__3428_ gnd vdd FILL
XFILL_0__3008_ gnd vdd FILL
XFILL_1__4491_ gnd vdd FILL
XFILL_1__4071_ gnd vdd FILL
XFILL_2__4807_ gnd vdd FILL
XFILL_2_BUFX2_insert110 gnd vdd FILL
XFILL_2_BUFX2_insert111 gnd vdd FILL
XFILL_2_BUFX2_insert112 gnd vdd FILL
XFILL_2_BUFX2_insert113 gnd vdd FILL
XFILL_2_BUFX2_insert114 gnd vdd FILL
XFILL_2_BUFX2_insert115 gnd vdd FILL
XFILL_2_BUFX2_insert116 gnd vdd FILL
XFILL_2_BUFX2_insert117 gnd vdd FILL
XFILL_2_BUFX2_insert118 gnd vdd FILL
XFILL_2_BUFX2_insert119 gnd vdd FILL
XFILL_1__2804_ gnd vdd FILL
XFILL_4__3281_ gnd vdd FILL
XFILL_2__3199_ gnd vdd FILL
XFILL_0__3181_ gnd vdd FILL
XFILL_2__4980_ gnd vdd FILL
XFILL_2__4560_ gnd vdd FILL
XFILL_2__4140_ gnd vdd FILL
X_2659_ _2074_ _2034_ _2354__4_bF$buf6 _2075_ vdd gnd AOI21X1
XFILL_4__4486_ gnd vdd FILL
XFILL_4__4066_ gnd vdd FILL
X_3600_ _735_ _408_ _405_ _404_ vdd gnd OAI21X1
XFILL_0__4386_ gnd vdd FILL
XFILL_3__2483_ gnd vdd FILL
XFILL_1_BUFX2_insert130 gnd vdd FILL
XFILL_1_BUFX2_insert131 gnd vdd FILL
XFILL_1_BUFX2_insert132 gnd vdd FILL
XFILL_1_BUFX2_insert133 gnd vdd FILL
XFILL_1_BUFX2_insert134 gnd vdd FILL
XFILL_1_BUFX2_insert135 gnd vdd FILL
XFILL_1_BUFX2_insert136 gnd vdd FILL
XFILL_1_BUFX2_insert137 gnd vdd FILL
XFILL_1_BUFX2_insert138 gnd vdd FILL
XFILL_1_BUFX2_insert139 gnd vdd FILL
X_4805_ _1852_ _1851_ _1850_ _1671_ vdd gnd OAI21X1
XFILL_1__3762_ gnd vdd FILL
XFILL_1__3342_ gnd vdd FILL
XFILL_3__3688_ gnd vdd FILL
XFILL_3__3268_ gnd vdd FILL
XFILL_4_BUFX2_insert0 gnd vdd FILL
XFILL_4_BUFX2_insert1 gnd vdd FILL
XFILL_4_BUFX2_insert2 gnd vdd FILL
XFILL_4_BUFX2_insert3 gnd vdd FILL
XFILL_4_BUFX2_insert4 gnd vdd FILL
XFILL_4_BUFX2_insert5 gnd vdd FILL
XFILL_4_BUFX2_insert6 gnd vdd FILL
XFILL_4_BUFX2_insert7 gnd vdd FILL
XFILL_4_BUFX2_insert8 gnd vdd FILL
XFILL_4_BUFX2_insert9 gnd vdd FILL
XFILL_1__4967_ gnd vdd FILL
XFILL_1__4547_ gnd vdd FILL
XFILL_1__4127_ gnd vdd FILL
XFILL_4__2972_ gnd vdd FILL
XFILL_4__2552_ gnd vdd FILL
X_3197_ _921_ _713_ _95_ _1365_ vdd gnd OAI21X1
XFILL_0__2452_ gnd vdd FILL
XFILL_2__3831_ gnd vdd FILL
XFILL_2__3411_ gnd vdd FILL
XFILL_4__3757_ gnd vdd FILL
XFILL_4__3337_ gnd vdd FILL
XFILL_0__3657_ gnd vdd FILL
XFILL_0__3237_ gnd vdd FILL
XFILL_2__4616_ gnd vdd FILL
XFILL_1__2613_ gnd vdd FILL
XFILL_3__2539_ gnd vdd FILL
XFILL273450x64950 gnd vdd FILL
XFILL_3__3900_ gnd vdd FILL
XFILL_1__3818_ gnd vdd FILL
X_2888_ _1531_ _1570_ _1571_ _1572_ vdd gnd NAND3X1
X_2468_ _1664_ _1976_ _2354__3_bF$buf0 _7_ vdd gnd AOI21X1
XFILL_4__4295_ gnd vdd FILL
XFILL273150x150 gnd vdd FILL
XFILL_0__4195_ gnd vdd FILL
XFILL_4__2608_ gnd vdd FILL
XFILL_0__2928_ gnd vdd FILL
XFILL_0__2508_ gnd vdd FILL
X_4614_ IRQ _1342_ vdd gnd INVX1
XFILL_1__3991_ gnd vdd FILL
XFILL_1__3571_ gnd vdd FILL
XFILL_3__3497_ gnd vdd FILL
XFILL_1__4776_ gnd vdd FILL
XFILL_1__4356_ gnd vdd FILL
XFILL_4__2781_ gnd vdd FILL
XFILL_4__2361_ gnd vdd FILL
XFILL_0__2681_ gnd vdd FILL
XFILL_2__2699_ gnd vdd FILL
XFILL_2__3640_ gnd vdd FILL
XFILL_2__3220_ gnd vdd FILL
XFILL_4__3986_ gnd vdd FILL
XFILL_4__3566_ gnd vdd FILL
XFILL_0__3886_ gnd vdd FILL
XFILL_0__3466_ gnd vdd FILL
XFILL_2__4845_ gnd vdd FILL
XFILL_2__4425_ gnd vdd FILL
XFILL_2__4005_ gnd vdd FILL
XFILL_1__2842_ gnd vdd FILL
XFILL_1__2422_ gnd vdd FILL
XFILL_3__2768_ gnd vdd FILL
XFILL_1__3627_ gnd vdd FILL
XFILL_1__3207_ gnd vdd FILL
X_2697_ _2354__0_bF$buf2 _2037_ _1644_ _2038_ vdd gnd OAI21X1
XFILL_3__4914_ gnd vdd FILL
XFILL_2__2911_ gnd vdd FILL
XFILL_4__2837_ gnd vdd FILL
XFILL_4__2417_ gnd vdd FILL
XFILL271950x61350 gnd vdd FILL
XFILL_0__2737_ gnd vdd FILL
X_4843_ _1696_ \u_cpu.alu_op\[2] _1701_ _1885_ vdd gnd OAI21X1
X_4423_ _1160_ _1171_ _1159_ vdd gnd NAND2X1
X_4003_ _1299_ _800__bF$buf3 _775_ _1457_ vdd gnd OAI21X1
XFILL_1__3380_ gnd vdd FILL
XFILL_1__4585_ gnd vdd FILL
XFILL_1__4165_ gnd vdd FILL
XFILL_4__2590_ gnd vdd FILL
XFILL_0__2490_ gnd vdd FILL
XFILL_4__3795_ gnd vdd FILL
XFILL_4__3375_ gnd vdd FILL
XFILL_0__3695_ gnd vdd FILL
XFILL_0__3275_ gnd vdd FILL
XFILL_2__4654_ gnd vdd FILL
XFILL_2__4234_ gnd vdd FILL
XFILL_1__2651_ gnd vdd FILL
XFILL_3__2997_ gnd vdd FILL
XFILL_3__2577_ gnd vdd FILL
XFILL_1__3856_ gnd vdd FILL
XFILL_1__3436_ gnd vdd FILL
XFILL_1__3016_ gnd vdd FILL
XFILL_3__4723_ gnd vdd FILL
XFILL_3__4303_ gnd vdd FILL
XFILL_2__2720_ gnd vdd FILL
XFILL_4__2646_ gnd vdd FILL
XFILL_0__2966_ gnd vdd FILL
XFILL_0__2546_ gnd vdd FILL
X_4652_ \u_cpu.alu_op\[0] _1704_ _1705_ vdd gnd NOR2X1
X_4232_ _1123_ _1117_ _984_ vdd gnd NOR2X1
XFILL_2__3925_ gnd vdd FILL
XFILL_2__3505_ gnd vdd FILL
XFILL_1__4394_ gnd vdd FILL
XFILL_1__2707_ gnd vdd FILL
XFILL_4__3184_ gnd vdd FILL
XFILL_2__4883_ gnd vdd FILL
XFILL_2__4463_ gnd vdd FILL
XFILL_2__4043_ gnd vdd FILL
XFILL_4__4389_ gnd vdd FILL
X_3923_ _1019_ _772_ _987_ _706_ vdd gnd AOI21X1
X_3503_ _387_ _565_ _316_ vdd gnd NAND2X1
XFILL_1__2880_ gnd vdd FILL
XFILL_1__2460_ gnd vdd FILL
XFILL_0__4289_ gnd vdd FILL
XFILL_3__2386_ gnd vdd FILL
X_4708_ _1744_ _1748_ \u_cpu.alu_shift_right\ _1761_ vdd gnd AOI21X1
XFILL_1__3665_ gnd vdd FILL
XFILL_1__3245_ gnd vdd FILL
XFILL_3__4952_ gnd vdd FILL
XFILL_3__4532_ gnd vdd FILL
XFILL_3__4112_ gnd vdd FILL
XFILL_4__2875_ gnd vdd FILL
XFILL_4__2455_ gnd vdd FILL
XFILL_0__2775_ gnd vdd FILL
X_4881_ _1675_ vdd _1671_ clk_bF$buf2 \u_cpu.ADD\[4] vdd 
+ gnd
+ DFFSR
X_4461_ RDY_bF$buf3 _1194_ _1193_ \u_cpu.DIMUX\[1] vdd gnd OAI21X1
X_4041_ _1350_ _1085_ _808_ vdd gnd NAND2X1
XFILL_2__3734_ gnd vdd FILL
XFILL_2__3314_ gnd vdd FILL
XFILL_4__4601_ gnd vdd FILL
XFILL_0__4921_ gnd vdd FILL
XFILL_2__4939_ gnd vdd FILL
XFILL_2__4519_ gnd vdd FILL
XFILL_0__4501_ gnd vdd FILL
XFILL_1__2936_ gnd vdd FILL
XFILL_1__2516_ gnd vdd FILL
XFILL_3__3803_ gnd vdd FILL
XFILL_2__4692_ gnd vdd FILL
XFILL_2__4272_ gnd vdd FILL
XFILL_4__4198_ gnd vdd FILL
X_3732_ _1196__bF$buf2 _540_ _531_ vdd gnd NAND2X1
X_3312_ _165_ _163_ vdd gnd INVX1
XFILL_0__4098_ gnd vdd FILL
X_4937_ _2210_ _2186_ _2211_ vdd gnd NAND2X1
X_4517_ _1350_ _1246_ _1334_ _1245_ vdd gnd NAND3X1
XFILL_1__3894_ gnd vdd FILL
XFILL_1__3474_ gnd vdd FILL
XFILL_3__4761_ gnd vdd FILL
XFILL_3__4341_ gnd vdd FILL
XFILL_1__4679_ gnd vdd FILL
XFILL_1__4259_ gnd vdd FILL
XFILL_4__2684_ gnd vdd FILL
XFILL_0__2584_ gnd vdd FILL
X_4690_ \u_cpu.alu_op\[0] _1689_ _1743_ vdd gnd NAND2X1
X_4270_ _1020_ _1019_ vdd gnd INVX1
XFILL_2__3963_ gnd vdd FILL
XFILL_2__3543_ gnd vdd FILL
XFILL_4__3889_ gnd vdd FILL
XFILL_4__3469_ gnd vdd FILL
XFILL_4__4830_ gnd vdd FILL
XFILL_4__4410_ gnd vdd FILL
XFILL_0__3789_ gnd vdd FILL
XFILL_0__3369_ gnd vdd FILL
XFILL_0__4730_ gnd vdd FILL
XFILL_2__4748_ gnd vdd FILL
XFILL_0__4310_ gnd vdd FILL
XFILL_2__4328_ gnd vdd FILL
XFILL_1__2745_ gnd vdd FILL
XFILL_3__3612_ gnd vdd FILL
XFILL_2__4081_ gnd vdd FILL
XFILL_3__4817_ gnd vdd FILL
X_3961_ \u_cpu.AN\ _737_ _738_ _736_ vdd gnd OAI21X1
X_3541_ _922_ \u_cpu.AXYS[3]\[2] \u_cpu.AXYS[0]\[2] _978_ _348_ vdd 
+ gnd
+ AOI22X1
X_3121_ _1417__bF$buf1 vdd _1490_ clk_bF$buf5 \u_cpu.PC\[7] vdd 
+ gnd
+ DFFSR
XFILL_2__2814_ gnd vdd FILL
X_4746_ _1798_ _1769_ _1799_ vdd gnd NAND2X1
X_4326_ _1326_ _1072_ _1071_ vdd gnd NAND2X1
XFILL_1__3283_ gnd vdd FILL
XFILL_3__4570_ gnd vdd FILL
XFILL_3__4150_ gnd vdd FILL
XFILL_1__4488_ gnd vdd FILL
XFILL_1__4068_ gnd vdd FILL
XFILL_4__2493_ gnd vdd FILL
XFILL_0__2393_ gnd vdd FILL
XFILL_2__3772_ gnd vdd FILL
XFILL_2__3352_ gnd vdd FILL
XFILL_4__3698_ gnd vdd FILL
XFILL_4__3278_ gnd vdd FILL
X_2812_ _2354__1_bF$buf0 _2354__0_bF$buf5 _1924_ vdd gnd NAND2X1
XFILL_0__3598_ gnd vdd FILL
XFILL_0__3178_ gnd vdd FILL
XFILL_2__4977_ gnd vdd FILL
XFILL_2__4557_ gnd vdd FILL
XFILL_2__4137_ gnd vdd FILL
XFILL_1__2974_ gnd vdd FILL
XFILL_1__2554_ gnd vdd FILL
XFILL_3__3841_ gnd vdd FILL
XFILL_3__3421_ gnd vdd FILL
XFILL_3__3001_ gnd vdd FILL
XFILL_1__3759_ gnd vdd FILL
XFILL_1__3339_ gnd vdd FILL
XFILL_1__4700_ gnd vdd FILL
XFILL_3__4626_ gnd vdd FILL
XFILL_3__4206_ gnd vdd FILL
X_3770_ _570_ _569_ vdd gnd INVX1
X_3350_ \u_cpu.N\ _613_ _188_ _187_ vdd gnd AOI21X1
XFILL_2__2623_ gnd vdd FILL
XFILL_4__2969_ gnd vdd FILL
XFILL_4__2549_ gnd vdd FILL
XFILL_4__3910_ gnd vdd FILL
XFILL_0__2449_ gnd vdd FILL
X_4975_ _2243_ _2186_ _2244_ vdd gnd NAND2X1
X_4555_ _1323_ _1307_ _1284_ _1283_ vdd gnd NAND3X1
X_4135_ _1274_ _902_ _901_ vdd gnd NOR2X1
XFILL_2__3828_ gnd vdd FILL
XFILL_0__3810_ gnd vdd FILL
XFILL_2__3408_ gnd vdd FILL
XFILL_1__4297_ gnd vdd FILL
XFILL_2__3581_ gnd vdd FILL
X_2621_ _1651_ _1652_ _2112_ vdd gnd NOR2X1
XFILL_2__4786_ gnd vdd FILL
XFILL_2__4366_ gnd vdd FILL
XFILL274050x90150 gnd vdd FILL
X_3826_ _1286_ _875_ \u_cpu.ABH\[2] _620_ vdd gnd OAI21X1
X_3406_ _782_ \u_cpu.PC\[9] _237_ _236_ vdd gnd AOI21X1
XFILL_1__2783_ gnd vdd FILL
XFILL_1__2363_ gnd vdd FILL
XFILL_3__3650_ gnd vdd FILL
XFILL_3__3230_ gnd vdd FILL
XFILL274050x57750 gnd vdd FILL
XFILL_1__3988_ gnd vdd FILL
XFILL_1__3568_ gnd vdd FILL
XFILL_3__4855_ gnd vdd FILL
XFILL_3__4435_ gnd vdd FILL
XFILL_3__4015_ gnd vdd FILL
XFILL_2__2852_ gnd vdd FILL
XFILL_2__2432_ gnd vdd FILL
XFILL_4__2778_ gnd vdd FILL
XFILL_4__2358_ gnd vdd FILL
XFILL_0__2678_ gnd vdd FILL
X_4784_ _1784_ _1805_ _1832_ _1836_ _1837_ vdd 
+ gnd
+ AOI22X1
X_4364_ _1125_ \u_cpu.IRHOLD\[6] _1340_ _1107_ vdd gnd OAI21X1
XFILL_2__3637_ gnd vdd FILL
XFILL_2__3217_ gnd vdd FILL
XFILL_4__4924_ gnd vdd FILL
XFILL_4__4504_ gnd vdd FILL
XFILL_0__4824_ gnd vdd FILL
XFILL_3__2921_ gnd vdd FILL
XFILL_3__2501_ gnd vdd FILL
XFILL_0__4404_ gnd vdd FILL
XFILL_1__2839_ gnd vdd FILL
XFILL_1__2419_ gnd vdd FILL
XFILL_2__3390_ gnd vdd FILL
XFILL273750x72150 gnd vdd FILL
XFILL_3__3706_ gnd vdd FILL
X_2850_ _1642_ _1644_ _1645_ vdd gnd AND2X2
X_2430_ _1649_ _1651_ _1637_ _44_ vdd gnd OAI21X1
XFILL_2__4595_ gnd vdd FILL
XFILL_2__4175_ gnd vdd FILL
XFILL273750x39750 gnd vdd FILL
X_3635_ _443_ _439_ _438_ vdd gnd NOR2X1
X_3215_ _1130_ _220_ _107_ vdd gnd NAND2X1
XFILL_1__2592_ gnd vdd FILL
XFILL_2__2908_ gnd vdd FILL
XFILL_1__3797_ gnd vdd FILL
XFILL_1__3377_ gnd vdd FILL
XFILL_3__4664_ gnd vdd FILL
XFILL_3__4244_ gnd vdd FILL
XBUFX2_insert150 _1328_ _1328__bF$buf2 vdd gnd BUFX2
XBUFX2_insert151 _1328_ _1328__bF$buf1 vdd gnd BUFX2
XBUFX2_insert152 _1328_ _1328__bF$buf0 vdd gnd BUFX2
XBUFX2_insert153 _2354_[2] _2354__2_bF$buf5 vdd gnd BUFX2
XFILL_2__2661_ gnd vdd FILL
XBUFX2_insert154 _2354_[2] _2354__2_bF$buf4 vdd gnd BUFX2
XBUFX2_insert155 _2354_[2] _2354__2_bF$buf3 vdd gnd BUFX2
XBUFX2_insert156 _2354_[2] _2354__2_bF$buf2 vdd gnd BUFX2
XBUFX2_insert157 _2354_[2] _2354__2_bF$buf1 vdd gnd BUFX2
XBUFX2_insert158 _2354_[2] _2354__2_bF$buf0 vdd gnd BUFX2
XFILL_4__2587_ gnd vdd FILL
XBUFX2_insert159 _1325_ _1325__bF$buf4 vdd gnd BUFX2
XFILL_0__2487_ gnd vdd FILL
X_4593_ \u_cpu.state\[4] \u_cpu.state\[5] _1321_ vdd gnd NAND2X1
X_4173_ \u_cpu.DIMUX\[5] _1070__bF$buf0 _933_ _932_ vdd gnd OAI21X1
XFILL_2__3866_ gnd vdd FILL
XFILL_2__3446_ gnd vdd FILL
XFILL_2__3026_ gnd vdd FILL
X_2906_ _2354_[14] _2354_[15] _1558_ vdd gnd AND2X2
XFILL_4__4733_ gnd vdd FILL
XFILL_4__4313_ gnd vdd FILL
XFILL_3__2730_ gnd vdd FILL
XFILL_0__4633_ gnd vdd FILL
XFILL_0__4213_ gnd vdd FILL
XFILL272250x61350 gnd vdd FILL
XFILL_1__2648_ gnd vdd FILL
XFILL_3__3935_ gnd vdd FILL
XFILL_3__3515_ gnd vdd FILL
X_3864_ _1275_ _877_ _656_ _655_ vdd gnd OAI21X1
X_3444_ _270_ _269_ _268_ vdd gnd AND2X2
X_3024_ _1502_ _1500_ _1503_ _1435_ vdd gnd OAI21X1
XFILL_2__2717_ gnd vdd FILL
X_4649_ _1701_ _1702_ vdd gnd INVX1
X_4229_ _983_ _982_ _986_ _981_ vdd gnd NAND3X1
XFILL_1__3186_ gnd vdd FILL
XFILL_0__3904_ gnd vdd FILL
XFILL_3__4893_ gnd vdd FILL
XFILL_3__4473_ gnd vdd FILL
XFILL_3__4053_ gnd vdd FILL
XFILL_2__2890_ gnd vdd FILL
XFILL_2__2470_ gnd vdd FILL
XFILL_4__2396_ gnd vdd FILL
XFILL_2__3675_ gnd vdd FILL
XFILL_2__3255_ gnd vdd FILL
X_2715_ _1653_ _2020_ vdd gnd INVX1
XFILL_4__4962_ gnd vdd FILL
XFILL_4__4542_ gnd vdd FILL
XFILL_4__4122_ gnd vdd FILL
XFILL_0__4862_ gnd vdd FILL
XFILL_0__4442_ gnd vdd FILL
XFILL_0__4022_ gnd vdd FILL
XFILL_1__2877_ gnd vdd FILL
XFILL_1__2457_ gnd vdd FILL
XFILL_3__3744_ gnd vdd FILL
XFILL_3__3324_ gnd vdd FILL
XFILL_4_CLKBUF1_insert30 gnd vdd FILL
XFILL_4_CLKBUF1_insert31 gnd vdd FILL
XFILL_4_CLKBUF1_insert32 gnd vdd FILL
XFILL_4_CLKBUF1_insert33 gnd vdd FILL
XFILL_4_CLKBUF1_insert34 gnd vdd FILL
XFILL_4_CLKBUF1_insert35 gnd vdd FILL
XFILL_4_CLKBUF1_insert36 gnd vdd FILL
XFILL_4_CLKBUF1_insert37 gnd vdd FILL
XFILL_4_CLKBUF1_insert38 gnd vdd FILL
XFILL_1__4603_ gnd vdd FILL
XFILL_3__4949_ gnd vdd FILL
XFILL_3__4529_ gnd vdd FILL
XFILL_3__4109_ gnd vdd FILL
X_3673_ _1196__bF$buf2 _808_ _477_ _476_ vdd gnd OAI21X1
X_3253_ _322_ _800__bF$buf4 _133_ _1383_ vdd gnd OAI21X1
XFILL_2__2946_ gnd vdd FILL
XFILL_2__2526_ gnd vdd FILL
XFILL_4__3813_ gnd vdd FILL
X_4878_ _1675_ vdd _1678_ clk_bF$buf0 \u_cpu.HC\ vdd 
+ gnd
+ DFFSR
X_4458_ _1206_ \u_cpu.ABH\[1] _1191_ _1190_ vdd gnd AOI21X1
X_4038_ _1325__bF$buf3 _906_ _805_ vdd gnd NOR2X1
XFILL_0__3713_ gnd vdd FILL
XFILL_3__4282_ gnd vdd FILL
XFILL_0__4918_ gnd vdd FILL
XFILL_0_BUFX2_insert50 gnd vdd FILL
XFILL_0_BUFX2_insert51 gnd vdd FILL
XFILL_0_BUFX2_insert52 gnd vdd FILL
XFILL_2__3484_ gnd vdd FILL
XFILL_0_BUFX2_insert53 gnd vdd FILL
XFILL_0_BUFX2_insert54 gnd vdd FILL
XFILL_0_BUFX2_insert55 gnd vdd FILL
XFILL_0_BUFX2_insert56 gnd vdd FILL
XFILL_0_BUFX2_insert57 gnd vdd FILL
XFILL_0_BUFX2_insert58 gnd vdd FILL
XFILL_0_BUFX2_insert59 gnd vdd FILL
X_2944_ _2354_[14] _2352_ _1526_ _1527_ vdd gnd NAND3X1
X_2524_ _2354__6_bF$buf2 _2297_ _2302_ _2300_ _2303_ vdd 
+ gnd
+ OAI22X1
XFILL_4__4771_ gnd vdd FILL
XFILL_4__4351_ gnd vdd FILL
XFILL_0__4671_ gnd vdd FILL
XFILL_2__4689_ gnd vdd FILL
XFILL_2__4269_ gnd vdd FILL
XFILL_0__4251_ gnd vdd FILL
X_3729_ _537_ _534_ _529_ _528_ vdd gnd NAND3X1
X_3309_ \u_cpu.cond_code\[0] _1196__bF$buf8 _161_ vdd gnd NAND2X1
XFILL_1__2686_ gnd vdd FILL
XFILL_3__3973_ gnd vdd FILL
XFILL_3__3553_ gnd vdd FILL
XFILL_1__4832_ gnd vdd FILL
XFILL_1__4412_ gnd vdd FILL
XFILL_3__4758_ gnd vdd FILL
XFILL_3__4338_ gnd vdd FILL
X_3482_ _303_ _567_ _296_ _295_ vdd gnd OAI21X1
X_3062_ _1417__bF$buf4 vdd _1370_ clk_bF$buf9 \u_cpu.I\ vdd 
+ gnd
+ DFFSR
XFILL_2__2755_ gnd vdd FILL
XFILL_4__3622_ gnd vdd FILL
XFILL_4__3202_ gnd vdd FILL
X_4687_ _1739_ _1740_ vdd gnd INVX1
X_4267_ _1017_ _1021_ _1477_ vdd gnd NAND2X1
XFILL_0__3942_ gnd vdd FILL
XFILL_0__3522_ gnd vdd FILL
XFILL_3__4091_ gnd vdd FILL
XFILL_2__4901_ gnd vdd FILL
XFILL_4__4827_ gnd vdd FILL
XFILL_4__4407_ gnd vdd FILL
XFILL_0__4727_ gnd vdd FILL
XFILL_3__2824_ gnd vdd FILL
XFILL_3__2404_ gnd vdd FILL
XFILL_0__4307_ gnd vdd FILL
XFILL_2__3293_ gnd vdd FILL
XFILL_3__3609_ gnd vdd FILL
X_2753_ _1981_ _1979_ _1923__bF$buf1 _1982_ vdd gnd AOI21X1
XFILL_4__4580_ gnd vdd FILL
XFILL_4__4160_ gnd vdd FILL
XFILL_0__4480_ gnd vdd FILL
XFILL_2__4498_ gnd vdd FILL
XFILL_0__4060_ gnd vdd FILL
XFILL_2__4078_ gnd vdd FILL
X_3958_ RDY_bF$buf0 _1111_ _734_ vdd gnd NAND2X1
X_3538_ \u_cpu.ABH\[2] _345_ vdd gnd INVX1
X_3118_ _1417__bF$buf10 vdd _1399_ clk_bF$buf4 \u_cpu.store\ vdd 
+ gnd
+ DFFSR
XFILL_1__2495_ gnd vdd FILL
XFILL_3__3782_ gnd vdd FILL
XFILL_3__3362_ gnd vdd FILL
XFILL_1__4641_ gnd vdd FILL
XFILL_1__4221_ gnd vdd FILL
XFILL_3__4567_ gnd vdd FILL
XFILL_3__4147_ gnd vdd FILL
X_3291_ _1255_ _1344_ _1401_ vdd gnd NOR2X1
XFILL_2__2984_ gnd vdd FILL
XFILL_2__2564_ gnd vdd FILL
XFILL_4__3851_ gnd vdd FILL
XFILL_4__3431_ gnd vdd FILL
XFILL_4__3011_ gnd vdd FILL
X_4496_ _1288_ _1276_ _1225_ _1224_ vdd gnd NAND3X1
X_4076_ _1329_ _1236_ _843_ vdd gnd NAND2X1
XFILL_2__3769_ gnd vdd FILL
XFILL_0__3751_ gnd vdd FILL
XFILL_2__3349_ gnd vdd FILL
XFILL_0__3331_ gnd vdd FILL
XFILL_2__4710_ gnd vdd FILL
X_2809_ _1634__bF$buf0 _1926_ _1927_ vdd gnd NAND2X1
XFILL_4__4636_ gnd vdd FILL
XFILL_4__4216_ gnd vdd FILL
XFILL_0__4956_ gnd vdd FILL
XFILL_3__2633_ gnd vdd FILL
XFILL_0__4536_ gnd vdd FILL
XFILL_0__4116_ gnd vdd FILL
XFILL_1__3912_ gnd vdd FILL
XFILL_3__3838_ gnd vdd FILL
XFILL_3__3418_ gnd vdd FILL
X_2982_ _1614_ _1500_ _1615_ _1492_ vdd gnd OAI21X1
X_2562_ _2264_ _2158_ _2265_ vdd gnd NAND2X1
XFILL_4__2702_ gnd vdd FILL
X_3767_ _567_ _566_ vdd gnd INVX1
X_3347_ _503_ \u_cpu.op\[3] \u_cpu.alu_op\[3] vdd gnd AND2X2
XFILL_0__2602_ gnd vdd FILL
XFILL_3__3591_ gnd vdd FILL
XFILL_3__3171_ gnd vdd FILL
XFILL_4__3907_ gnd vdd FILL
XFILL_0__3807_ gnd vdd FILL
XFILL_1__4870_ gnd vdd FILL
XFILL_1__4450_ gnd vdd FILL
XFILL_1__4030_ gnd vdd FILL
XFILL_3__4796_ gnd vdd FILL
XFILL_3__4376_ gnd vdd FILL
XFILL_2__2793_ gnd vdd FILL
XFILL_2__2373_ gnd vdd FILL
XFILL_4__3660_ gnd vdd FILL
XFILL_4__3240_ gnd vdd FILL
XFILL_0__3980_ gnd vdd FILL
XFILL_2__3998_ gnd vdd FILL
XFILL_2__3578_ gnd vdd FILL
XFILL_0__3560_ gnd vdd FILL
X_2618_ _2354__6_bF$buf0 _2111_ _2114_ _2115_ vdd gnd NAND3X1
XFILL_4__4865_ gnd vdd FILL
XFILL_4__4445_ gnd vdd FILL
XFILL_4__4025_ gnd vdd FILL
XFILL_0__4765_ gnd vdd FILL
XFILL_3__2442_ gnd vdd FILL
XFILL_0__4345_ gnd vdd FILL
XBUFX2_insert60 _1923_ _1923__bF$buf3 vdd gnd BUFX2
XBUFX2_insert61 _1923_ _1923__bF$buf2 vdd gnd BUFX2
XBUFX2_insert62 _1923_ _1923__bF$buf1 vdd gnd BUFX2
XBUFX2_insert63 _1923_ _1923__bF$buf0 vdd gnd BUFX2
XBUFX2_insert64 _1635_ _1635__bF$buf4 vdd gnd BUFX2
XFILL_1__3721_ gnd vdd FILL
XBUFX2_insert65 _1635_ _1635__bF$buf3 vdd gnd BUFX2
XFILL_1__3301_ gnd vdd FILL
XBUFX2_insert66 _1635_ _1635__bF$buf2 vdd gnd BUFX2
XBUFX2_insert67 _1635_ _1635__bF$buf1 vdd gnd BUFX2
XBUFX2_insert68 _1635_ _1635__bF$buf0 vdd gnd BUFX2
XBUFX2_insert69 _1920_ _1920__bF$buf4 vdd gnd BUFX2
XFILL_3__3647_ gnd vdd FILL
XFILL_3__3227_ gnd vdd FILL
X_2791_ _1643__bF$buf3 _1944_ _1634__bF$buf1 _1945_ vdd gnd OAI21X1
X_2371_ _2354__0_bF$buf4 AB[0] vdd gnd BUFX2
XFILL_1__4926_ gnd vdd FILL
XFILL_1__4506_ gnd vdd FILL
XFILL_4__2931_ gnd vdd FILL
XFILL_4__2511_ gnd vdd FILL
X_3996_ _998_ _768_ vdd gnd INVX1
X_3576_ RDY_bF$buf5 _847_ _1037__bF$buf2 _381_ _380_ vdd 
+ gnd
+ OAI22X1
X_3156_ _1417__bF$buf6 vdd _1414_ clk_bF$buf2 \u_cpu.AXYS[2]\[6] vdd 
+ gnd
+ DFFSR
XFILL_0__2831_ gnd vdd FILL
XFILL_2__2849_ gnd vdd FILL
XFILL_2__2429_ gnd vdd FILL
XFILL_0__2411_ gnd vdd FILL
XFILL_4__3716_ gnd vdd FILL
XFILL_0__3616_ gnd vdd FILL
XFILL_3__4185_ gnd vdd FILL
XFILL_3__2918_ gnd vdd FILL
XFILL_2__3387_ gnd vdd FILL
X_2847_ _1636__bF$buf3 _1647_ _1648_ vdd gnd NAND2X1
X_2427_ _46_ _2082_ _2354__6_bF$buf3 _47_ vdd gnd AOI21X1
XFILL_4__4674_ gnd vdd FILL
XFILL_4__4254_ gnd vdd FILL
XFILL_3__2671_ gnd vdd FILL
XFILL_0__4574_ gnd vdd FILL
XFILL_0__4154_ gnd vdd FILL
XFILL_1__2589_ gnd vdd FILL
XFILL_1__3950_ gnd vdd FILL
XFILL_1__3530_ gnd vdd FILL
XFILL_3__3876_ gnd vdd FILL
XFILL_3__3456_ gnd vdd FILL
XFILL_1__4735_ gnd vdd FILL
XFILL_1__4315_ gnd vdd FILL
XFILL_4__2740_ gnd vdd FILL
X_3385_ _847_ _220_ vdd gnd INVX1
XFILL_2__2658_ gnd vdd FILL
XFILL_0__2640_ gnd vdd FILL
XFILL_4__3945_ gnd vdd FILL
XFILL_4__3525_ gnd vdd FILL
XFILL_0__3845_ gnd vdd FILL
XFILL_0__3425_ gnd vdd FILL
XFILL_0__3005_ gnd vdd FILL
XFILL_2__4804_ gnd vdd FILL
XFILL_1__2801_ gnd vdd FILL
XFILL_3__2727_ gnd vdd FILL
XFILL_2__3196_ gnd vdd FILL
X_2656_ _1918_ _2077_ _1920__bF$buf0 _2078_ vdd gnd AOI21X1
XFILL_4__4483_ gnd vdd FILL
XFILL_4__4063_ gnd vdd FILL
XFILL_3__2480_ gnd vdd FILL
XFILL_0__4383_ gnd vdd FILL
XFILL_1_BUFX2_insert100 gnd vdd FILL
XFILL_1_BUFX2_insert101 gnd vdd FILL
XFILL_1_BUFX2_insert102 gnd vdd FILL
XFILL_1_BUFX2_insert103 gnd vdd FILL
XFILL_1_BUFX2_insert104 gnd vdd FILL
XFILL_1_BUFX2_insert105 gnd vdd FILL
XFILL_1_BUFX2_insert106 gnd vdd FILL
XFILL_1_BUFX2_insert107 gnd vdd FILL
XFILL_1_BUFX2_insert108 gnd vdd FILL
XFILL_1_BUFX2_insert109 gnd vdd FILL
XFILL_1__2398_ gnd vdd FILL
X_4802_ \u_cpu.ADD\[4] _1681__bF$buf0 _1850_ vdd gnd NAND2X1
XFILL_3__3685_ gnd vdd FILL
XFILL_3__3265_ gnd vdd FILL
XFILL_1__4964_ gnd vdd FILL
XFILL_1__4544_ gnd vdd FILL
XFILL_1__4124_ gnd vdd FILL
X_3194_ _1218_ _1216_ _92_ vdd gnd NAND2X1
XFILL_2__2887_ gnd vdd FILL
XFILL_2__2467_ gnd vdd FILL
XFILL_4__3754_ gnd vdd FILL
XFILL_4__3334_ gnd vdd FILL
X_4399_ RDY_bF$buf3 _1140_ _1139_ \u_cpu.DIMUX\[5] vdd gnd OAI21X1
XFILL_0__3654_ gnd vdd FILL
XFILL_0__3234_ gnd vdd FILL
XFILL_2__4613_ gnd vdd FILL
XFILL_4__4959_ gnd vdd FILL
XFILL_4__4539_ gnd vdd FILL
XFILL_4__4119_ gnd vdd FILL
XFILL_1__2610_ gnd vdd FILL
XFILL_0__4859_ gnd vdd FILL
XFILL_3__2536_ gnd vdd FILL
XFILL_0__4439_ gnd vdd FILL
XFILL_0__4019_ gnd vdd FILL
XFILL_1__3815_ gnd vdd FILL
X_2885_ _1569_ _1574_ _1525_ _1575_ vdd gnd NAND3X1
X_2465_ _2119_ _1659_ _1920__bF$buf1 _10_ vdd gnd AOI21X1
XFILL_4__4292_ gnd vdd FILL
XFILL272550x36150 gnd vdd FILL
XFILL_0__4192_ gnd vdd FILL
XFILL_4__2605_ gnd vdd FILL
XFILL_0__2925_ gnd vdd FILL
XFILL_0__2505_ gnd vdd FILL
X_4611_ _1340_ _1344_ _1339_ vdd gnd NAND2X1
XFILL_3__3494_ gnd vdd FILL
XFILL_1__4773_ gnd vdd FILL
XFILL_1__4353_ gnd vdd FILL
XFILL_3__4699_ gnd vdd FILL
XFILL_3__4279_ gnd vdd FILL
XFILL_2__2696_ gnd vdd FILL
XFILL_4__3983_ gnd vdd FILL
XFILL_4__3563_ gnd vdd FILL
XFILL_0__3883_ gnd vdd FILL
XFILL_0__3463_ gnd vdd FILL
XFILL_2__4842_ gnd vdd FILL
XFILL_2__4422_ gnd vdd FILL
XFILL_2__4002_ gnd vdd FILL
XFILL_4__4768_ gnd vdd FILL
XFILL_4__4348_ gnd vdd FILL
XFILL_3__2765_ gnd vdd FILL
XFILL_0__4668_ gnd vdd FILL
XFILL_0__4248_ gnd vdd FILL
XFILL_1__3624_ gnd vdd FILL
XFILL_1__3204_ gnd vdd FILL
X_2694_ _1940_ _1987_ _2041_ vdd gnd AND2X2
XFILL_3__4911_ gnd vdd FILL
XFILL_1__4829_ gnd vdd FILL
XFILL_1__4409_ gnd vdd FILL
XFILL_4__2834_ gnd vdd FILL
XFILL_4__2414_ gnd vdd FILL
X_3899_ _1025_ _1117_ _687_ vdd gnd NAND2X1
X_3479_ _293_ _376_ _292_ vdd gnd NOR2X1
X_3059_ _1417__bF$buf3 vdd _1369_ clk_bF$buf7 \u_cpu.AXYS[1]\[0] vdd 
+ gnd
+ DFFSR
XFILL_0__2734_ gnd vdd FILL
X_4840_ _1696_ \u_cpu.alu_op\[2] _1879_ _1883_ vdd gnd OAI21X1
X_4420_ _1172_ _1157_ _1158_ _1156_ vdd gnd NAND3X1
X_4000_ _1126_ _994_ _772_ vdd gnd NOR2X1
XFILL_4__3619_ gnd vdd FILL
XFILL_0__3939_ gnd vdd FILL
XFILL_0__3519_ gnd vdd FILL
XFILL_1__4582_ gnd vdd FILL
XFILL_1__4162_ gnd vdd FILL
XFILL_3__4088_ gnd vdd FILL
XFILL_4__3792_ gnd vdd FILL
XFILL_4__3372_ gnd vdd FILL
XFILL_0__3692_ gnd vdd FILL
XFILL_0__3272_ gnd vdd FILL
XFILL_2__4651_ gnd vdd FILL
XFILL_2__4231_ gnd vdd FILL
XFILL_4__4577_ gnd vdd FILL
XFILL_4__4157_ gnd vdd FILL
XFILL_0__4897_ gnd vdd FILL
XFILL_3__2994_ gnd vdd FILL
XFILL_3__2574_ gnd vdd FILL
XFILL_0__4477_ gnd vdd FILL
XFILL_0__4057_ gnd vdd FILL
XFILL_1__3853_ gnd vdd FILL
XFILL_1__3433_ gnd vdd FILL
XFILL273150x97350 gnd vdd FILL
XFILL_1__3013_ gnd vdd FILL
XFILL_3__3779_ gnd vdd FILL
XFILL_3__3359_ gnd vdd FILL
XFILL_3__4720_ gnd vdd FILL
XFILL_3__4300_ gnd vdd FILL
XFILL_1__4638_ gnd vdd FILL
XFILL_1__4218_ gnd vdd FILL
XFILL_4__2643_ gnd vdd FILL
X_3288_ _1024_ _682_ _993_ _151_ vdd gnd OAI21X1
XFILL_0__2543_ gnd vdd FILL
XFILL_2__3922_ gnd vdd FILL
XFILL_2__3502_ gnd vdd FILL
XFILL_0_BUFX2_insert140 gnd vdd FILL
XFILL_0_BUFX2_insert141 gnd vdd FILL
XFILL_0_BUFX2_insert142 gnd vdd FILL
XFILL_0_BUFX2_insert143 gnd vdd FILL
XFILL_4__3848_ gnd vdd FILL
XFILL_0_BUFX2_insert144 gnd vdd FILL
XFILL_0_BUFX2_insert145 gnd vdd FILL
XFILL_4__3428_ gnd vdd FILL
XFILL_4__3008_ gnd vdd FILL
XFILL_0_BUFX2_insert146 gnd vdd FILL
XFILL_0_BUFX2_insert147 gnd vdd FILL
XFILL_0_BUFX2_insert148 gnd vdd FILL
XFILL_0_BUFX2_insert149 gnd vdd FILL
XFILL_0__3748_ gnd vdd FILL
XFILL_0__3328_ gnd vdd FILL
XFILL_1__4391_ gnd vdd FILL
XFILL_2__4707_ gnd vdd FILL
XFILL_1__2704_ gnd vdd FILL
XFILL_4__3181_ gnd vdd FILL
XFILL_1__3909_ gnd vdd FILL
XFILL_2__4460_ gnd vdd FILL
XFILL_2__4040_ gnd vdd FILL
X_2979_ _1617_ _1513_ _1583_ _1618_ vdd gnd AOI21X1
X_2559_ _2267_ _2268_ vdd gnd INVX1
XFILL_4__4386_ gnd vdd FILL
X_3920_ _707_ _1129__bF$buf4 _704_ _1445_ vdd gnd OAI21X1
X_3500_ _314_ _317_ _313_ vdd gnd NOR2X1
XFILL272850x79350 gnd vdd FILL
XFILL_0__4286_ gnd vdd FILL
XFILL_3__2383_ gnd vdd FILL
X_4705_ \u_cpu.alu_op\[1] _1747_ \u_cpu.alu_op\[0] _1758_ vdd gnd MUX2X1
XFILL_1__3662_ gnd vdd FILL
XFILL_1__3242_ gnd vdd FILL
XFILL_3__3588_ gnd vdd FILL
XFILL_3__3168_ gnd vdd FILL
XFILL_1__4867_ gnd vdd FILL
XFILL_1__4447_ gnd vdd FILL
XFILL_1__4027_ gnd vdd FILL
XFILL_4__2452_ gnd vdd FILL
X_3097_ _1417__bF$buf9 vdd _1471_ clk_bF$buf8 \u_cpu.inc\ vdd 
+ gnd
+ DFFSR
XFILL_0__2772_ gnd vdd FILL
XFILL_2__3731_ gnd vdd FILL
XFILL_2__3311_ gnd vdd FILL
XFILL_4__3657_ gnd vdd FILL
XFILL_4__3237_ gnd vdd FILL
XFILL_0__3977_ gnd vdd FILL
XFILL_0__3557_ gnd vdd FILL
XFILL_2__4936_ gnd vdd FILL
XFILL_2__4516_ gnd vdd FILL
XFILL_1__2933_ gnd vdd FILL
XFILL_1__2513_ gnd vdd FILL
XFILL_3__2859_ gnd vdd FILL
XFILL_3__2439_ gnd vdd FILL
XFILL_3__3800_ gnd vdd FILL
XFILL_1__3718_ gnd vdd FILL
X_2788_ _1650_ _2354__4_bF$buf3 _1948_ vdd gnd AND2X2
X_2368_ _2354__3_bF$buf2 AB[3] vdd gnd BUFX2
XFILL_4__4195_ gnd vdd FILL
XFILL_0__4095_ gnd vdd FILL
XFILL_4__2928_ gnd vdd FILL
XFILL_4__2508_ gnd vdd FILL
XFILL_0__2828_ gnd vdd FILL
XFILL_0__2408_ gnd vdd FILL
X_4934_ DO_dsp[4] _2208_ vdd gnd INVX1
X_4514_ _1352_ _1304_ _1242_ vdd gnd NOR2X1
XFILL_1__3891_ gnd vdd FILL
XFILL_1__3471_ gnd vdd FILL
XFILL_3__3397_ gnd vdd FILL
XFILL_1__4676_ gnd vdd FILL
XFILL_1__4256_ gnd vdd FILL
XFILL_4__2681_ gnd vdd FILL
XFILL_0__2581_ gnd vdd FILL
XFILL_2__2599_ gnd vdd FILL
XFILL_2__3960_ gnd vdd FILL
XFILL_2__3540_ gnd vdd FILL
XFILL_4__3886_ gnd vdd FILL
XFILL_4__3466_ gnd vdd FILL
XFILL_0__3786_ gnd vdd FILL
XFILL_0__3366_ gnd vdd FILL
XFILL_2__4745_ gnd vdd FILL
XFILL_2__4325_ gnd vdd FILL
XFILL_1__2742_ gnd vdd FILL
XFILL_3__2668_ gnd vdd FILL
XFILL_1__3947_ gnd vdd FILL
XFILL_1__3527_ gnd vdd FILL
X_2597_ _1994_ _1964_ _1925_ _2136_ vdd gnd OAI21X1
XFILL_3__4814_ gnd vdd FILL
XFILL_2__2811_ gnd vdd FILL
XFILL_4__2737_ gnd vdd FILL
XFILL_0__2637_ gnd vdd FILL
X_4743_ _1795_ _1794_ _1796_ vdd gnd NAND2X1
X_4323_ _1069_ _1073_ _1068_ vdd gnd NOR2X1
XFILL_1__3280_ gnd vdd FILL
XFILL273450x50550 gnd vdd FILL
XFILL_1__4485_ gnd vdd FILL
XFILL_1__4065_ gnd vdd FILL
XFILL_4__2490_ gnd vdd FILL
XFILL_4__3695_ gnd vdd FILL
XFILL_4__3275_ gnd vdd FILL
XFILL_0__3595_ gnd vdd FILL
XFILL_0__3175_ gnd vdd FILL
XFILL_2__4974_ gnd vdd FILL
XFILL_2__4554_ gnd vdd FILL
XFILL_2__4134_ gnd vdd FILL
XFILL_1__2971_ gnd vdd FILL
XFILL_1__2551_ gnd vdd FILL
XFILL_3__2897_ gnd vdd FILL
XFILL_3__2477_ gnd vdd FILL
XFILL_1__3756_ gnd vdd FILL
XFILL_1__3336_ gnd vdd FILL
XFILL_3__4623_ gnd vdd FILL
XFILL_3__4203_ gnd vdd FILL

.ends
.end
