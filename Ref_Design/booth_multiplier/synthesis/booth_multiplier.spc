*SPICE netlist created from verilog structural netlist module booth_multiplier by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp
* NGSPICE file created from khu_etri050_stdcells.ext - technology: scmos

.subckt AOI22X1 A B C D Y vdd gnd
M1000 vdd A a_6_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 gnd C a_56_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=1.8p ps=6.6u
M1002 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1003 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=1.8p ps=6.6u
M1004 a_6_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1005 a_6_146# C Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1006 a_56_14# D Y gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.200001p ps=8.400001u
M1007 Y D a_6_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt CLKBUF3 A Y vdd gnd
M1000 a_24_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 a_264_14# a_224_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1002 a_224_14# a_184_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1003 a_64_14# a_24_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1004 a_144_14# a_104_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 gnd a_144_14# a_184_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1006 Y a_264_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1007 a_264_14# a_224_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1008 gnd a_264_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1009 vdd a_104_14# a_144_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1010 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1011 vdd a_64_14# a_104_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1012 gnd a_24_14# a_64_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1013 a_104_14# a_64_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1014 vdd A a_24_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1015 vdd a_24_14# a_64_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1016 vdd a_224_14# a_264_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1017 gnd a_104_14# a_144_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1018 vdd a_144_14# a_184_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1019 vdd a_184_14# a_224_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1020 a_224_14# a_184_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1021 gnd a_224_14# a_264_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1022 gnd A a_24_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1023 vdd a_264_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1024 a_184_14# a_144_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1025 gnd a_64_14# a_104_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1026 a_144_14# a_104_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1027 a_104_14# a_64_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1028 a_184_14# a_144_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1029 gnd a_184_14# a_224_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1030 Y a_264_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1031 a_64_14# a_24_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt INVX8 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1003 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1004 vdd A Y vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1005 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1006 gnd A Y gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1007 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt NOR3X1 A B C Y vdd gnd
M1000 gnd B Y gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1001 a_64_166# B a_6_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=10.8p ps=11.400001u
M1002 vdd A a_6_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=18.900002p ps=22.2u
M1003 Y C gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1004 Y C a_64_166# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=18.900002p ps=22.2u
M1005 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=7.200001p ps=10.8u
M1006 a_6_166# B a_64_166# vdd pfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=10.8p ps=11.400001u
M1007 a_6_166# A vdd vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=10.8p ps=11.400001u
M1008 a_64_166# C Y vdd pfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=10.8p ps=11.400001u
.ends

.subckt CLKBUF1 A Y vdd gnd
M1000 a_24_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 a_64_14# a_24_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 Y a_104_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 vdd a_104_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1004 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1005 vdd a_64_14# a_104_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1006 gnd a_24_14# a_64_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1007 a_104_14# a_64_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1008 vdd A a_24_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1009 vdd a_24_14# a_64_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1010 gnd a_104_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1011 gnd A a_24_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1012 gnd a_64_14# a_104_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1013 Y a_104_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1014 a_104_14# a_64_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1015 a_64_14# a_24_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt MUX2X1 A B S Y vdd gnd
M1000 Y S a_44_138# vdd pfet w=12u l=0.6u
+  ad=14.490002p pd=15.6u as=5.4p ps=12.900001u
M1001 a_74_22# S Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1002 gnd S a_6_22# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=8.400001u as=6.300001p ps=10.200001u
M1003 gnd A a_74_22# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
M1004 a_44_138# B vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=11.700001p ps=14.400001u
M1005 vdd A a_74_146# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1006 a_44_22# B gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=6.300001p ps=8.400001u
M1007 a_74_146# a_6_22# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.490002p ps=15.6u
M1008 vdd S a_6_22# vdd pfet w=6u l=0.6u
+  ad=11.700001p pd=14.400001u as=12.600001p ps=16.2u
M1009 Y a_6_22# a_44_22# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
.ends

.subckt NAND3X1 A B C Y vdd gnd
M1000 Y C a_34_14# gnd nfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=2.7p ps=9.6u
M1001 vdd B Y vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 a_26_14# A gnd gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=18.900002p ps=22.2u
M1003 a_34_14# B a_26_14# gnd nfet w=9u l=0.6u
+  ad=2.7p pd=9.6u as=2.7p ps=9.6u
M1004 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1005 Y C vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
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
M1000 vdd a_6_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1001 gnd A a_6_14# gnd nfet w=4.5u l=0.6u
+  ad=7.650001p pd=8.700001u as=9.450001p ps=13.200001u
M1002 vdd A a_6_14# vdd pfet w=9u l=0.6u
+  ad=15.300001p pd=14.700001u as=18.900002p ps=22.2u
M1003 Y a_6_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.650001p ps=8.700001u
M1004 Y a_6_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=15.300001p ps=14.700001u
M1005 gnd a_6_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
.ends

.subckt INVX4 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1002 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1003 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
.ends

.subckt OAI21X1 A B C Y vdd gnd
M1000 Y C a_6_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1001 a_30_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.200003p ps=28.200003u
M1002 vdd C Y vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=14.400002p ps=14.700001u
M1003 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1004 Y B a_30_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.700001u as=3.6p ps=12.6u
M1005 a_6_14# B gnd gnd nfet w=6u l=0.6u
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
M1000 vdd CLK a_6_14# vdd pfet w=12u l=0.6u
+  ad=12.150001p pd=14.400001u as=25.200003p ps=28.200003u
M1001 a_152_186# a_82_10# vdd vdd pfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1002 a_162_14# a_6_14# a_152_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.35p ps=3.9u
M1003 a_76_14# a_6_14# a_56_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1004 vdd Q a_182_206# vdd pfet w=3u l=0.6u
+  ad=11.025002p pd=14.400001u as=1.35p ps=3.9u
M1005 a_44_186# D vdd vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=12.150001p ps=14.400001u
M1006 a_82_10# a_56_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=4.05p ps=5.7u
M1007 gnd CLK a_6_14# gnd nfet w=6u l=0.6u
+  ad=6.075p pd=8.400001u as=12.600001p ps=16.2u
M1008 gnd a_82_10# a_76_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1009 a_56_14# a_6_14# a_44_186# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1010 a_82_10# a_56_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1011 a_182_14# CLK a_162_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1012 a_182_206# a_6_14# a_162_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.400001u
M1013 gnd Q a_182_14# gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.400001u as=1.35p ps=3.9u
M1014 a_44_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.075p ps=8.400001u
M1015 a_162_14# CLK a_152_186# vdd pfet w=6u l=0.6u
+  ad=5.85p pd=8.400001u as=2.7p ps=6.9u
M1016 a_56_14# CLK a_44_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.8p ps=4.2u
M1017 a_76_186# CLK a_56_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.200001p ps=8.400001u
M1018 a_152_14# a_82_10# gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.300001p ps=10.200001u
M1019 Q a_162_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.075p ps=8.400001u
M1020 vdd a_82_10# a_76_186# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1021 Q a_162_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=11.025002p ps=14.400001u
.ends

.subckt AOI21X1 A B C Y vdd gnd
M1000 vdd A a_6_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1002 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.700001u as=1.8p ps=6.6u
M1003 a_6_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1004 gnd C Y gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=7.200001p ps=8.700001u
M1005 Y C a_6_146# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
.ends

.subckt BUFX2 A Y vdd gnd
M1000 gnd A a_6_14# gnd nfet w=3u l=0.6u
+  ad=7.200001p pd=8.700001u as=6.300001p ps=10.200001u
M1001 Y a_6_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.700001u
M1002 vdd A a_6_14# vdd pfet w=6u l=0.6u
+  ad=14.400002p pd=14.700001u as=12.600001p ps=16.2u
M1003 Y a_6_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.700001u
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
M1000 a_24_146# A vdd vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=25.200003p ps=28.200003u
M1001 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1002 Y B a_24_146# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=3.6p ps=12.6u
M1003 gnd B Y gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
.ends

.subckt AND2X1 A B Y vdd gnd
M1000 gnd B a_24_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.700001u as=1.8p ps=6.6u
M1001 vdd B a_6_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 a_24_14# A a_6_14# gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1003 a_6_14# A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1004 Y a_6_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 Y a_6_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=7.200001p ps=8.700001u
.ends

.subckt NAND2X1 A B Y vdd gnd
M1000 vdd B Y vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1001 a_26_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1002 Y B a_26_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
M1003 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt OR2X1 A B Y vdd gnd
M1000 a_24_146# A a_6_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1001 Y a_6_146# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1002 a_6_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1003 Y a_6_146# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=14.400002p ps=14.700001u
M1004 gnd B a_6_146# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1005 vdd B a_24_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.700001u as=5.4p ps=12.900001u
.ends

.subckt DFFPOSX1 D CLK Q vdd gnd
M1000 vdd Q a_189_206# vdd pfet w=3u l=0.6u
+  ad=10.125001p pd=14.700001u as=0.9p ps=3.6u
M1001 a_87_10# a_59_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=4.05p ps=5.7u
M1002 gnd CLK a_11_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.400001u as=12.600001p ps=16.2u
M1003 gnd a_87_10# a_81_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1004 a_49_186# D vdd vdd pfet w=6u l=0.6u
+  ad=5.4p pd=7.8u as=11.250001p ps=14.400001u
M1005 Q a_165_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.975p ps=8.700001u
M1006 Q a_165_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=10.125001p ps=14.700001u
M1007 a_157_14# a_87_10# gnd gnd nfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.300001p ps=10.200001u
M1008 a_85_186# a_11_14# a_59_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.200001p ps=8.400001u
M1009 a_165_14# CLK a_157_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=0.9p ps=3.6u
M1010 vdd a_87_10# a_85_186# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1011 a_49_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.400001u
M1012 a_161_186# a_87_10# vdd vdd pfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1013 a_189_206# CLK a_165_14# vdd pfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.075p ps=8.400001u
M1014 a_59_14# a_11_14# a_49_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1015 a_187_14# a_11_14# a_165_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.05p ps=5.7u
M1016 vdd CLK a_11_14# vdd pfet w=12u l=0.6u
+  ad=11.250001p pd=14.400001u as=25.200003p ps=28.200003u
M1017 a_59_14# CLK a_49_186# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=5.4p ps=7.8u
M1018 a_87_10# a_59_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1019 gnd Q a_187_14# gnd nfet w=3u l=0.6u
+  ad=6.975p pd=8.700001u as=1.35p ps=3.9u
M1020 a_165_14# a_11_14# a_161_186# vdd pfet w=6u l=0.6u
+  ad=6.075p pd=8.400001u as=1.8p ps=6.6u
M1021 a_81_14# CLK a_59_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.05p ps=5.7u
.ends

.subckt CLKBUF2 A Y vdd gnd
M1000 a_24_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 Y a_184_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1002 a_64_14# a_24_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 a_144_14# a_104_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1004 gnd a_144_14# a_184_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 vdd a_104_14# a_144_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1006 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1007 vdd a_64_14# a_104_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1008 gnd a_24_14# a_64_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1009 a_104_14# a_64_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1010 vdd A a_24_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1011 vdd a_24_14# a_64_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1012 gnd a_104_14# a_144_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1013 vdd a_144_14# a_184_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1014 vdd a_184_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1015 Y a_184_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1016 gnd A a_24_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1017 a_184_14# a_144_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1018 gnd a_64_14# a_104_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1019 a_144_14# a_104_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1020 a_104_14# a_64_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1021 a_184_14# a_144_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1022 gnd a_184_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1023 a_64_14# a_24_14# vdd vdd pfet w=12u l=0.6u
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
M1000 a_334_14# a_280_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1001 a_64_14# a_60_10# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9p ps=9u
M1002 a_146_14# a_115_95# a_60_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1003 a_36_10# a_60_10# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1004 a_8_14# R vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1005 a_36_10# S a_64_14# gnd nfet w=6u l=0.6u
+  ad=14.400002p pd=16.800001u as=3.6p ps=7.2u
M1006 vdd D a_146_14# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.300001p ps=8.400001u
M1007 a_28_14# R a_8_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.400002p ps=16.800001u
M1008 a_280_14# a_122_10# a_36_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1009 a_388_14# a_334_14# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=8.1p ps=8.700001u
M1010 a_300_14# a_122_10# a_280_14# vdd pfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1011 gnd a_334_14# Q gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1012 gnd a_36_10# a_28_14# gnd nfet w=6u l=0.6u
+  ad=9p pd=9u as=3.6p ps=7.2u
M1013 gnd a_115_95# a_122_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1014 a_60_10# a_115_95# a_8_14# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1015 a_300_14# S a_388_14# gnd nfet w=6u l=0.6u
+  ad=14.400002p pd=16.800001u as=3.6p ps=7.2u
M1016 vdd a_115_95# a_122_10# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1017 vdd a_334_14# Q vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1018 gnd D a_146_14# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1019 vdd R a_334_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1020 a_300_14# a_115_95# a_280_14# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1021 vdd S a_36_10# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1022 vdd a_36_10# a_8_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1023 a_115_95# CLK gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1024 vdd S a_300_14# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1025 a_60_10# a_122_10# a_8_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1026 a_280_14# a_115_95# a_36_10# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1027 a_146_14# a_122_10# a_60_10# vdd pfet w=3u l=0.6u
+  ad=6.300001p pd=8.400001u as=3.6p ps=5.4u
M1028 a_354_14# a_280_14# a_334_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.400002p ps=16.800001u
M1029 a_115_95# CLK vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1030 gnd R a_354_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=3.6p ps=7.2u
M1031 a_300_14# a_334_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
.ends

.subckt INVX1 A Y vdd gnd
M1000 Y A gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1001 Y A vdd vdd pfet w=6u l=0.6u
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
M1000 a_24_14# A a_6_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1001 gnd B a_24_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1002 vdd B a_6_14# vdd pfet w=6u l=0.6u
+  ad=14.400002p pd=14.700001u as=8.1p ps=8.700001u
M1003 Y a_6_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.700001u
M1004 a_6_14# A vdd vdd pfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=12.600001p ps=16.2u
M1005 Y a_6_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
.ends

.subckt OAI22X1 A B C D Y vdd gnd
M1000 a_24_146# A vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1001 Y D a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1003 a_6_14# C Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1004 a_6_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 vdd C a_64_146# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1006 Y B a_24_146# vdd pfet w=12u l=0.6u
+  ad=23.400002p pd=15.900001u as=5.4p ps=12.900001u
M1007 a_64_146# D Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=23.400002p ps=15.900001u
.ends

.subckt OR2X2 A B Y vdd gnd
M1000 a_24_146# A a_6_146# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1001 Y a_6_146# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.300001p ps=8.400001u
M1002 Y a_6_146# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1003 a_6_146# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1004 gnd B a_6_146# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=8.400001u as=3.6p ps=5.4u
M1005 vdd B a_24_146# vdd pfet w=12u l=0.6u
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
XNAND2X1_0 NAND2X1_0/A NAND2X1_0/B NAND2X1_0/Y vdd gnd NAND2X1
XOR2X1_0 OR2X1_0/A OR2X1_0/B OR2X1_0/Y vdd gnd OR2X1
XDFFPOSX1_0 DFFPOSX1_0/D DFFPOSX1_0/CLK DFFPOSX1_0/Q vdd gnd DFFPOSX1
XCLKBUF2_0 CLKBUF2_0/A CLKBUF2_0/Y vdd gnd CLKBUF2
XLATCH_0 LATCH_0/D LATCH_0/CLK LATCH_0/Q vdd gnd LATCH
XHAX1_0 HAX1_0/A HAX1_0/B HAX1_0/YS HAX1_0/YC vdd gnd HAX1
XDFFSR_0 DFFSR_0/R DFFSR_0/S DFFSR_0/D DFFSR_0/CLK DFFSR_0/Q vdd gnd DFFSR
XINVX1_0 INVX1_0/A INVX1_0/Y vdd gnd INVX1
XTBUFX1_0 TBUFX1_0/A TBUFX1_0/EN TBUFX1_0/Y vdd gnd TBUFX1
XXNOR2X1_0 XNOR2X1_0/A XNOR2X1_0/B XNOR2X1_0/Y vdd gnd XNOR2X1
XAND2X2_0 AND2X2_0/A AND2X2_0/B AND2X2_0/Y vdd gnd AND2X2
XOAI22X1_0 OAI22X1_0/A OAI22X1_0/B OAI22X1_0/C OAI22X1_0/D OAI22X1_0/Y vdd gnd OAI22X1
XOR2X2_0 OR2X2_0/A OR2X2_0/B OR2X2_0/Y vdd gnd OR2X2
.ends

** End of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp

.subckt booth_multiplier vdd gnd clk multIn[0] multIn[1] multIn[2] multIn[3]
+ multIn[4] multIn[5] multIn[6] multIn[7] product[0] product[1] product[2] product[3]
+ product[4] product[5] product[6] product[7] product[8] product[9] product[10] product[11]
+ product[12] product[13] product[14] product[15] select 

XBUFX2_insert81 \step5.myadd.cin\ \step5.myadd.cin_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert80 \step5.myadd.cin\ \step5.myadd.cin_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert79 \step5.myadd.cin\ \step5.myadd.cin_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert78 \step5.myadd.cin\ \step5.myadd.cin_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert77 \step5.myadd.cin\ \step5.myadd.cin_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert76 \step7.myadd.cin\ \step7.myadd.cin_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert75 \step7.myadd.cin\ \step7.myadd.cin_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert74 \step7.myadd.cin\ \step7.myadd.cin_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert73 \step7.myadd.cin\ \step7.myadd.cin_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert72 \step7.myadd.cin\ \step7.myadd.cin_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert71 \step1.myadd.x1.i0\ \step1.myadd.x1.i0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert70 \step1.myadd.x1.i0\ \step1.myadd.x1.i0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert69 \step1.myadd.x1.i0\ \step1.myadd.x1.i0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert68 \step1.myadd.x1.i0\ \step1.myadd.x1.i0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert67 \step1.myadd.x6.i0\ \step1.myadd.x6.i0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert66 \step1.myadd.x6.i0\ \step1.myadd.x6.i0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert65 \step1.myadd.x6.i0\ \step1.myadd.x6.i0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert64 \step1.myadd.x6.i0\ \step1.myadd.x6.i0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert63 \step2.myadd.cin\ \step2.myadd.cin_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert62 \step2.myadd.cin\ \step2.myadd.cin_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert61 \step2.myadd.cin\ \step2.myadd.cin_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert60 \step2.myadd.cin\ \step2.myadd.cin_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert59 \step2.myadd.cin\ \step2.myadd.cin_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert58 \step4.myadd.cin\ \step4.myadd.cin_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert57 \step4.myadd.cin\ \step4.myadd.cin_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert56 \step4.myadd.cin\ \step4.myadd.cin_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert55 \step4.myadd.cin\ \step4.myadd.cin_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert54 \step4.myadd.cin\ \step4.myadd.cin_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert53 \step1.myadd.x2.i0\ \step1.myadd.x2.i0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert52 \step1.myadd.x2.i0\ \step1.myadd.x2.i0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert51 \step1.myadd.x2.i0\ \step1.myadd.x2.i0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert50 \step1.myadd.x2.i0\ \step1.myadd.x2.i0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert49 \step1.myadd.x7.i0\ \step1.myadd.x7.i0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert48 \step1.myadd.x7.i0\ \step1.myadd.x7.i0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert47 \step1.myadd.x7.i0\ \step1.myadd.x7.i0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert46 \step1.myadd.x7.i0\ \step1.myadd.x7.i0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert45 \step6.myadd.cin\ \step6.myadd.cin_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert44 \step6.myadd.cin\ \step6.myadd.cin_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert43 \step6.myadd.cin\ \step6.myadd.cin_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert42 \step6.myadd.cin\ \step6.myadd.cin_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert41 \step6.myadd.cin\ \step6.myadd.cin_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert40 qout qout_bF$buf0 vdd gnd BUFX2
XBUFX2_insert39 qout qout_bF$buf1 vdd gnd BUFX2
XBUFX2_insert38 qout qout_bF$buf2 vdd gnd BUFX2
XBUFX2_insert37 qout qout_bF$buf3 vdd gnd BUFX2
XBUFX2_insert36 qout qout_bF$buf4 vdd gnd BUFX2
XBUFX2_insert35 \step1.myadd.x3.i0\ \step1.myadd.x3.i0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert34 \step1.myadd.x3.i0\ \step1.myadd.x3.i0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert33 \step1.myadd.x3.i0\ \step1.myadd.x3.i0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert32 \step1.myadd.x3.i0\ \step1.myadd.x3.i0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert31 \step1.myadd.cin\ \step1.myadd.cin_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert30 \step1.myadd.cin\ \step1.myadd.cin_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert29 \step1.myadd.cin\ \step1.myadd.cin_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert28 \step1.myadd.cin\ \step1.myadd.cin_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert27 \step1.myadd.cin\ \step1.myadd.cin_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert26 \step1.myadd.x4.i0\ \step1.myadd.x4.i0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert25 \step1.myadd.x4.i0\ \step1.myadd.x4.i0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert24 \step1.myadd.x4.i0\ \step1.myadd.x4.i0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert23 \step1.myadd.x4.i0\ \step1.myadd.x4.i0_bF$buf3\ vdd gnd BUFX2
XCLKBUF1_insert22 clk clk_bF$buf0 vdd gnd CLKBUF1
XCLKBUF1_insert21 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert20 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert19 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert18 clk clk_bF$buf4 vdd gnd CLKBUF1
XBUFX2_insert17 \step3.myadd.cin\ \step3.myadd.cin_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert16 \step3.myadd.cin\ \step3.myadd.cin_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert15 \step3.myadd.cin\ \step3.myadd.cin_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert14 \step3.myadd.cin\ \step3.myadd.cin_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert13 \step3.myadd.cin\ \step3.myadd.cin_bF$buf4\ vdd gnd BUFX2
XBUFX2_insert12 select select_bF$buf0 vdd gnd BUFX2
XBUFX2_insert11 select select_bF$buf1 vdd gnd BUFX2
XBUFX2_insert10 select select_bF$buf2 vdd gnd BUFX2
XBUFX2_insert9 select select_bF$buf3 vdd gnd BUFX2
XBUFX2_insert8 select select_bF$buf4 vdd gnd BUFX2
XBUFX2_insert7 \step1.myadd.x0.i0\ \step1.myadd.x0.i0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert6 \step1.myadd.x0.i0\ \step1.myadd.x0.i0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert5 \step1.myadd.x0.i0\ \step1.myadd.x0.i0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert4 \step1.myadd.x0.i0\ \step1.myadd.x0.i0_bF$buf3\ vdd gnd BUFX2
XBUFX2_insert3 \step1.myadd.x5.i0\ \step1.myadd.x5.i0_bF$buf0\ vdd gnd BUFX2
XBUFX2_insert2 \step1.myadd.x5.i0\ \step1.myadd.x5.i0_bF$buf1\ vdd gnd BUFX2
XBUFX2_insert1 \step1.myadd.x5.i0\ \step1.myadd.x5.i0_bF$buf2\ vdd gnd BUFX2
XBUFX2_insert0 \step1.myadd.x5.i0\ \step1.myadd.x5.i0_bF$buf3\ vdd gnd BUFX2
X_1000_ \step1.myadd.fa3.sum\ _49_ _48_ _54_ vdd gnd NAND3X1
X_1001_ _51_ _52_ gnd _55_ vdd gnd OAI21X1
X_1002_ _55_ _54_ \step2.myadd.fa2.i0\ vdd gnd NAND2X1
X_1003_ \step1.myadd.fa4.sum\ _49_ _48_ _56_ vdd gnd NAND3X1
X_1004_ _51_ _52_ gnd _57_ vdd gnd OAI21X1
X_1005_ _57_ _56_ \step2.myadd.fa3.i0\ vdd gnd NAND2X1
X_1006_ \step1.myadd.fa5.sum\ _49_ _48_ _58_ vdd gnd NAND3X1
X_1007_ _51_ _52_ gnd _59_ vdd gnd OAI21X1
X_1008_ _59_ _58_ \step2.myadd.fa4.i0\ vdd gnd NAND2X1
X_1009_ \step1.myadd.fa6.sum\ _49_ _48_ _60_ vdd gnd NAND3X1
X_1010_ _51_ _52_ gnd _61_ vdd gnd OAI21X1
X_1011_ _61_ _60_ \step2.myadd.fa5.i0\ vdd gnd NAND2X1
X_1012_ \step1.myadd.fa7.sum\ _49_ _48_ _62_ vdd gnd NAND3X1
X_1013_ _51_ _52_ gnd _63_ vdd gnd OAI21X1
X_1014_ _63_ _62_ \step2.myadd.fa6.i0\ vdd gnd NAND2X1
X_1015_ \step1.myadd.fa8.sum\ _49_ _48_ _64_ vdd gnd NAND3X1
X_1016_ _51_ _52_ gnd _65_ vdd gnd OAI21X1
X_1017_ _65_ _64_ \step2.myadd.fa7.i0\ vdd gnd NAND2X1
X_1018_ \step1.myadd.fa1.sum\ _49_ _48_ _66_ vdd gnd NAND3X1
X_1019_ _51_ _52_ gnd _67_ vdd gnd OAI21X1
X_1020_ _67_ _66_ \Q[0]\[7] vdd gnd NAND2X1
X_1021_ \step1.myadd.fa1.i1\ \step1.myadd.cin_bF$buf4\ _71_ vdd gnd AND2X2
X_1022_ \step1.myadd.fa1.i1\ \step1.myadd.cin_bF$buf3\ _72_ vdd gnd NOR2X1
X_1023_ _72_ _71_ gnd _73_ vdd gnd OAI21X1
X_1024_ gnd _74_ vdd gnd INVX1
X_1025_ \step1.myadd.fa1.i1\ \step1.myadd.cin_bF$buf2\ _68_ vdd gnd NAND2X1
X_1026_ \step1.myadd.fa1.i1\ \step1.myadd.cin_bF$buf1\ _69_ vdd gnd OR2X2
X_1027_ _74_ _68_ _69_ _70_ vdd gnd NAND3X1
X_1028_ _73_ _70_ \step1.myadd.fa1.sum\ vdd gnd NAND2X1
X_1029_ _74_ _68_ _72_ \step1.myadd.fa1.cout\ vdd gnd AOI21X1
X_1030_ \step1.myadd.fa2.i1\ \step1.myadd.fa1.cout\ _78_ vdd gnd AND2X2
X_1031_ \step1.myadd.fa2.i1\ \step1.myadd.fa1.cout\ _79_ vdd gnd NOR2X1
X_1032_ _79_ _78_ gnd _80_ vdd gnd OAI21X1
X_1033_ gnd _81_ vdd gnd INVX1
X_1034_ \step1.myadd.fa2.i1\ \step1.myadd.fa1.cout\ _75_ vdd gnd NAND2X1
X_1035_ \step1.myadd.fa2.i1\ \step1.myadd.fa1.cout\ _76_ vdd gnd OR2X2
X_1036_ _81_ _75_ _76_ _77_ vdd gnd NAND3X1
X_1037_ _80_ _77_ \step1.myadd.fa2.sum\ vdd gnd NAND2X1
X_1038_ _81_ _75_ _79_ \step1.myadd.fa2.cout\ vdd gnd AOI21X1
X_1039_ \step1.myadd.fa3.i1\ \step1.myadd.fa2.cout\ _85_ vdd gnd AND2X2
X_1040_ \step1.myadd.fa3.i1\ \step1.myadd.fa2.cout\ _86_ vdd gnd NOR2X1
X_1041_ _86_ _85_ gnd _87_ vdd gnd OAI21X1
X_1042_ gnd _88_ vdd gnd INVX1
X_1043_ \step1.myadd.fa3.i1\ \step1.myadd.fa2.cout\ _82_ vdd gnd NAND2X1
X_1044_ \step1.myadd.fa3.i1\ \step1.myadd.fa2.cout\ _83_ vdd gnd OR2X2
X_1045_ _88_ _82_ _83_ _84_ vdd gnd NAND3X1
X_1046_ _87_ _84_ \step1.myadd.fa3.sum\ vdd gnd NAND2X1
X_1047_ _88_ _82_ _86_ \step1.myadd.fa3.cout\ vdd gnd AOI21X1
X_1048_ \step1.myadd.fa4.i1\ \step1.myadd.fa3.cout\ _92_ vdd gnd AND2X2
X_1049_ \step1.myadd.fa4.i1\ \step1.myadd.fa3.cout\ _93_ vdd gnd NOR2X1
X_1050_ _93_ _92_ gnd _94_ vdd gnd OAI21X1
X_1051_ gnd _95_ vdd gnd INVX1
X_1052_ \step1.myadd.fa4.i1\ \step1.myadd.fa3.cout\ _89_ vdd gnd NAND2X1
X_1053_ \step1.myadd.fa4.i1\ \step1.myadd.fa3.cout\ _90_ vdd gnd OR2X2
X_1054_ _95_ _89_ _90_ _91_ vdd gnd NAND3X1
X_1055_ _94_ _91_ \step1.myadd.fa4.sum\ vdd gnd NAND2X1
X_1056_ _95_ _89_ _93_ \step1.myadd.fa4.cout\ vdd gnd AOI21X1
X_1057_ \step1.myadd.fa5.i1\ \step1.myadd.fa4.cout\ _99_ vdd gnd AND2X2
X_1058_ \step1.myadd.fa5.i1\ \step1.myadd.fa4.cout\ _100_ vdd gnd NOR2X1
X_1059_ _100_ _99_ gnd _101_ vdd gnd OAI21X1
X_1060_ gnd _102_ vdd gnd INVX1
X_1061_ \step1.myadd.fa5.i1\ \step1.myadd.fa4.cout\ _96_ vdd gnd NAND2X1
X_1062_ \step1.myadd.fa5.i1\ \step1.myadd.fa4.cout\ _97_ vdd gnd OR2X2
X_1063_ _102_ _96_ _97_ _98_ vdd gnd NAND3X1
X_1064_ _101_ _98_ \step1.myadd.fa5.sum\ vdd gnd NAND2X1
X_1065_ _102_ _96_ _100_ \step1.myadd.fa5.cout\ vdd gnd AOI21X1
X_1066_ \step1.myadd.fa6.i1\ \step1.myadd.fa5.cout\ _106_ vdd gnd AND2X2
X_1067_ \step1.myadd.fa6.i1\ \step1.myadd.fa5.cout\ _107_ vdd gnd NOR2X1
X_1068_ _107_ _106_ gnd _108_ vdd gnd OAI21X1
X_1069_ gnd _109_ vdd gnd INVX1
X_1070_ \step1.myadd.fa6.i1\ \step1.myadd.fa5.cout\ _103_ vdd gnd NAND2X1
X_1071_ \step1.myadd.fa6.i1\ \step1.myadd.fa5.cout\ _104_ vdd gnd OR2X2
X_1072_ _109_ _103_ _104_ _105_ vdd gnd NAND3X1
X_1073_ _108_ _105_ \step1.myadd.fa6.sum\ vdd gnd NAND2X1
X_1074_ _109_ _103_ _107_ \step1.myadd.fa6.cout\ vdd gnd AOI21X1
X_1075_ \step1.myadd.fa7.i1\ \step1.myadd.fa6.cout\ _113_ vdd gnd AND2X2
X_1076_ \step1.myadd.fa7.i1\ \step1.myadd.fa6.cout\ _114_ vdd gnd NOR2X1
X_1077_ _114_ _113_ gnd _115_ vdd gnd OAI21X1
X_1078_ gnd _116_ vdd gnd INVX1
X_1079_ \step1.myadd.fa7.i1\ \step1.myadd.fa6.cout\ _110_ vdd gnd NAND2X1
X_1080_ \step1.myadd.fa7.i1\ \step1.myadd.fa6.cout\ _111_ vdd gnd OR2X2
X_1081_ _116_ _110_ _111_ _112_ vdd gnd NAND3X1
X_1082_ _115_ _112_ \step1.myadd.fa7.sum\ vdd gnd NAND2X1
X_1083_ _116_ _110_ _114_ \step1.myadd.fa7.cout\ vdd gnd AOI21X1
X_1084_ \step1.myadd.fa8.i1\ \step1.myadd.fa7.cout\ _120_ vdd gnd AND2X2
X_1085_ \step1.myadd.fa8.i1\ \step1.myadd.fa7.cout\ _121_ vdd gnd NOR2X1
X_1086_ _121_ _120_ gnd _122_ vdd gnd OAI21X1
X_1087_ gnd _123_ vdd gnd INVX1
X_1088_ \step1.myadd.fa8.i1\ \step1.myadd.fa7.cout\ _117_ vdd gnd NAND2X1
X_1089_ \step1.myadd.fa8.i1\ \step1.myadd.fa7.cout\ _118_ vdd gnd OR2X2
X_1090_ _123_ _117_ _118_ _119_ vdd gnd NAND3X1
X_1091_ _122_ _119_ \step1.myadd.fa8.sum\ vdd gnd NAND2X1
X_1092_ \step1.myadd.cin_bF$buf0\ _124_ vdd gnd INVX1
X_1093_ \step1.myadd.x0.i0_bF$buf3\ _124_ _125_ vdd gnd NAND2X1
X_1094_ \step1.myadd.x0.i0_bF$buf2\ _126_ vdd gnd INVX1
X_1095_ \step1.myadd.cin_bF$buf4\ _126_ _127_ vdd gnd NAND2X1
X_1096_ _125_ _127_ \step1.myadd.fa1.i1\ vdd gnd NAND2X1
X_1097_ \step1.myadd.cin_bF$buf3\ _128_ vdd gnd INVX1
X_1098_ \step1.myadd.x1.i0_bF$buf3\ _128_ _129_ vdd gnd NAND2X1
X_1099_ \step1.myadd.x1.i0_bF$buf2\ _130_ vdd gnd INVX1
X_1100_ \step1.myadd.cin_bF$buf2\ _130_ _131_ vdd gnd NAND2X1
X_1101_ _129_ _131_ \step1.myadd.fa2.i1\ vdd gnd NAND2X1
X_1102_ \step1.myadd.cin_bF$buf1\ _132_ vdd gnd INVX1
X_1103_ \step1.myadd.x2.i0_bF$buf3\ _132_ _133_ vdd gnd NAND2X1
X_1104_ \step1.myadd.x2.i0_bF$buf2\ _134_ vdd gnd INVX1
X_1105_ \step1.myadd.cin_bF$buf0\ _134_ _135_ vdd gnd NAND2X1
X_1106_ _133_ _135_ \step1.myadd.fa3.i1\ vdd gnd NAND2X1
X_1107_ \step1.myadd.cin_bF$buf4\ _136_ vdd gnd INVX1
X_1108_ \step1.myadd.x3.i0_bF$buf3\ _136_ _137_ vdd gnd NAND2X1
X_1109_ \step1.myadd.x3.i0_bF$buf2\ _138_ vdd gnd INVX1
X_1110_ \step1.myadd.cin_bF$buf3\ _138_ _139_ vdd gnd NAND2X1
X_1111_ _137_ _139_ \step1.myadd.fa4.i1\ vdd gnd NAND2X1
X_1112_ \step1.myadd.cin_bF$buf2\ _140_ vdd gnd INVX1
X_1113_ \step1.myadd.x4.i0_bF$buf3\ _140_ _141_ vdd gnd NAND2X1
X_1114_ \step1.myadd.x4.i0_bF$buf2\ _142_ vdd gnd INVX1
X_1115_ \step1.myadd.cin_bF$buf1\ _142_ _143_ vdd gnd NAND2X1
X_1116_ _141_ _143_ \step1.myadd.fa5.i1\ vdd gnd NAND2X1
X_1117_ \step1.myadd.cin_bF$buf0\ _144_ vdd gnd INVX1
X_1118_ \step1.myadd.x5.i0_bF$buf3\ _144_ _145_ vdd gnd NAND2X1
X_1119_ \step1.myadd.x5.i0_bF$buf2\ _146_ vdd gnd INVX1
X_1120_ \step1.myadd.cin_bF$buf4\ _146_ _147_ vdd gnd NAND2X1
X_1121_ _145_ _147_ \step1.myadd.fa6.i1\ vdd gnd NAND2X1
X_1122_ \step1.myadd.cin_bF$buf3\ _148_ vdd gnd INVX1
X_1123_ \step1.myadd.x6.i0_bF$buf3\ _148_ _149_ vdd gnd NAND2X1
X_1124_ \step1.myadd.x6.i0_bF$buf2\ _150_ vdd gnd INVX1
X_1125_ \step1.myadd.cin_bF$buf2\ _150_ _151_ vdd gnd NAND2X1
X_1126_ _149_ _151_ \step1.myadd.fa7.i1\ vdd gnd NAND2X1
X_1127_ \step1.myadd.cin_bF$buf1\ _152_ vdd gnd INVX1
X_1128_ \step1.myadd.x7.i0_bF$buf3\ _152_ _153_ vdd gnd NAND2X1
X_1129_ \step1.myadd.x7.i0_bF$buf2\ _154_ vdd gnd INVX1
X_1130_ \step1.myadd.cin_bF$buf0\ _154_ _155_ vdd gnd NAND2X1
X_1131_ _153_ _155_ \step1.myadd.fa8.i1\ vdd gnd NAND2X1
X_1132_ \step1.myadd.cin_bF$buf4\ \step2.myadd.cin_bF$buf4\ _156_ vdd gnd OR2X2
X_1133_ \step1.myadd.cin_bF$buf3\ \step2.myadd.cin_bF$buf3\ _157_ vdd gnd NAND2X1
X_1134_ \step2.myadd.fa2.sum\ _157_ _156_ _158_ vdd gnd NAND3X1
X_1135_ \step1.myadd.cin_bF$buf2\ \step2.myadd.cin_bF$buf2\ _159_ vdd gnd NOR2X1
X_1136_ \step1.myadd.cin_bF$buf1\ \step2.myadd.cin_bF$buf1\ _160_ vdd gnd AND2X2
X_1137_ _159_ _160_ \step2.myadd.fa2.i0\ _161_ vdd gnd OAI21X1
X_1138_ _161_ _158_ \step3.myadd.fa1.i0\ vdd gnd NAND2X1
X_1139_ \step2.myadd.fa3.sum\ _157_ _156_ _162_ vdd gnd NAND3X1
X_1140_ _159_ _160_ \step2.myadd.fa3.i0\ _163_ vdd gnd OAI21X1
X_1141_ _163_ _162_ \step3.myadd.fa2.i0\ vdd gnd NAND2X1
X_1142_ \step2.myadd.fa4.sum\ _157_ _156_ _164_ vdd gnd NAND3X1
X_1143_ _159_ _160_ \step2.myadd.fa4.i0\ _165_ vdd gnd OAI21X1
X_1144_ _165_ _164_ \step3.myadd.fa3.i0\ vdd gnd NAND2X1
X_1145_ \step2.myadd.fa5.sum\ _157_ _156_ _166_ vdd gnd NAND3X1
X_1146_ _159_ _160_ \step2.myadd.fa5.i0\ _167_ vdd gnd OAI21X1
X_1147_ _167_ _166_ \step3.myadd.fa4.i0\ vdd gnd NAND2X1
X_1148_ \step2.myadd.fa6.sum\ _157_ _156_ _168_ vdd gnd NAND3X1
X_1149_ _159_ _160_ \step2.myadd.fa6.i0\ _169_ vdd gnd OAI21X1
X_1150_ _169_ _168_ \step3.myadd.fa5.i0\ vdd gnd NAND2X1
X_1151_ \step2.myadd.fa7.sum\ _157_ _156_ _170_ vdd gnd NAND3X1
X_1152_ _159_ _160_ \step2.myadd.fa7.i0\ _171_ vdd gnd OAI21X1
X_1153_ _171_ _170_ \step3.myadd.fa6.i0\ vdd gnd NAND2X1
X_1154_ \step2.myadd.fa8.sum\ _157_ _156_ _172_ vdd gnd NAND3X1
X_1155_ _159_ _160_ \step2.myadd.fa7.i0\ _173_ vdd gnd OAI21X1
X_1156_ _173_ _172_ \step3.myadd.fa7.i0\ vdd gnd NAND2X1
X_1157_ \step2.myadd.fa1.sum\ _157_ _156_ _174_ vdd gnd NAND3X1
X_1158_ _159_ _160_ \step2.myadd.fa1.i0\ _175_ vdd gnd OAI21X1
X_1159_ _175_ _174_ \Q[1]\[7] vdd gnd NAND2X1
X_1160_ \step2.myadd.fa1.i1\ \step2.myadd.cin_bF$buf0\ _179_ vdd gnd AND2X2
X_1161_ \step2.myadd.fa1.i1\ \step2.myadd.cin_bF$buf4\ _180_ vdd gnd NOR2X1
X_1162_ _180_ _179_ \step2.myadd.fa1.i0\ _181_ vdd gnd OAI21X1
X_1163_ \step2.myadd.fa1.i0\ _182_ vdd gnd INVX1
X_1164_ \step2.myadd.fa1.i1\ \step2.myadd.cin_bF$buf3\ _176_ vdd gnd NAND2X1
X_1165_ \step2.myadd.fa1.i1\ \step2.myadd.cin_bF$buf2\ _177_ vdd gnd OR2X2
X_1166_ _182_ _176_ _177_ _178_ vdd gnd NAND3X1
X_1167_ _181_ _178_ \step2.myadd.fa1.sum\ vdd gnd NAND2X1
X_1168_ _182_ _176_ _180_ \step2.myadd.fa1.cout\ vdd gnd AOI21X1
X_1169_ \step2.myadd.fa2.i1\ \step2.myadd.fa1.cout\ _186_ vdd gnd AND2X2
X_1170_ \step2.myadd.fa2.i1\ \step2.myadd.fa1.cout\ _187_ vdd gnd NOR2X1
X_1171_ _187_ _186_ \step2.myadd.fa2.i0\ _188_ vdd gnd OAI21X1
X_1172_ \step2.myadd.fa2.i0\ _189_ vdd gnd INVX1
X_1173_ \step2.myadd.fa2.i1\ \step2.myadd.fa1.cout\ _183_ vdd gnd NAND2X1
X_1174_ \step2.myadd.fa2.i1\ \step2.myadd.fa1.cout\ _184_ vdd gnd OR2X2
X_1175_ _189_ _183_ _184_ _185_ vdd gnd NAND3X1
X_1176_ _188_ _185_ \step2.myadd.fa2.sum\ vdd gnd NAND2X1
X_1177_ _189_ _183_ _187_ \step2.myadd.fa2.cout\ vdd gnd AOI21X1
X_1178_ \step2.myadd.fa3.i1\ \step2.myadd.fa2.cout\ _193_ vdd gnd AND2X2
X_1179_ \step2.myadd.fa3.i1\ \step2.myadd.fa2.cout\ _194_ vdd gnd NOR2X1
X_1180_ _194_ _193_ \step2.myadd.fa3.i0\ _195_ vdd gnd OAI21X1
X_1181_ \step2.myadd.fa3.i0\ _196_ vdd gnd INVX1
X_1182_ \step2.myadd.fa3.i1\ \step2.myadd.fa2.cout\ _190_ vdd gnd NAND2X1
X_1183_ \step2.myadd.fa3.i1\ \step2.myadd.fa2.cout\ _191_ vdd gnd OR2X2
X_1184_ _196_ _190_ _191_ _192_ vdd gnd NAND3X1
X_1185_ _195_ _192_ \step2.myadd.fa3.sum\ vdd gnd NAND2X1
X_1186_ _196_ _190_ _194_ \step2.myadd.fa3.cout\ vdd gnd AOI21X1
X_1187_ \step2.myadd.fa4.i1\ \step2.myadd.fa3.cout\ _200_ vdd gnd AND2X2
X_1188_ \step2.myadd.fa4.i1\ \step2.myadd.fa3.cout\ _201_ vdd gnd NOR2X1
X_1189_ _201_ _200_ \step2.myadd.fa4.i0\ _202_ vdd gnd OAI21X1
X_1190_ \step2.myadd.fa4.i0\ _203_ vdd gnd INVX1
X_1191_ \step2.myadd.fa4.i1\ \step2.myadd.fa3.cout\ _197_ vdd gnd NAND2X1
X_1192_ \step2.myadd.fa4.i1\ \step2.myadd.fa3.cout\ _198_ vdd gnd OR2X2
X_1193_ _203_ _197_ _198_ _199_ vdd gnd NAND3X1
X_1194_ _202_ _199_ \step2.myadd.fa4.sum\ vdd gnd NAND2X1
X_1195_ _203_ _197_ _201_ \step2.myadd.fa4.cout\ vdd gnd AOI21X1
X_1196_ \step2.myadd.fa5.i1\ \step2.myadd.fa4.cout\ _207_ vdd gnd AND2X2
X_1197_ \step2.myadd.fa5.i1\ \step2.myadd.fa4.cout\ _208_ vdd gnd NOR2X1
X_1198_ _208_ _207_ \step2.myadd.fa5.i0\ _209_ vdd gnd OAI21X1
X_1199_ \step2.myadd.fa5.i0\ _210_ vdd gnd INVX1
X_1200_ \step2.myadd.fa5.i1\ \step2.myadd.fa4.cout\ _204_ vdd gnd NAND2X1
X_1201_ \step2.myadd.fa5.i1\ \step2.myadd.fa4.cout\ _205_ vdd gnd OR2X2
X_1202_ _210_ _204_ _205_ _206_ vdd gnd NAND3X1
X_1203_ _209_ _206_ \step2.myadd.fa5.sum\ vdd gnd NAND2X1
X_1204_ _210_ _204_ _208_ \step2.myadd.fa5.cout\ vdd gnd AOI21X1
X_1205_ \step2.myadd.fa6.i1\ \step2.myadd.fa5.cout\ _214_ vdd gnd AND2X2
X_1206_ \step2.myadd.fa6.i1\ \step2.myadd.fa5.cout\ _215_ vdd gnd NOR2X1
X_1207_ _215_ _214_ \step2.myadd.fa6.i0\ _216_ vdd gnd OAI21X1
X_1208_ \step2.myadd.fa6.i0\ _217_ vdd gnd INVX1
X_1209_ \step2.myadd.fa6.i1\ \step2.myadd.fa5.cout\ _211_ vdd gnd NAND2X1
X_1210_ \step2.myadd.fa6.i1\ \step2.myadd.fa5.cout\ _212_ vdd gnd OR2X2
X_1211_ _217_ _211_ _212_ _213_ vdd gnd NAND3X1
X_1212_ _216_ _213_ \step2.myadd.fa6.sum\ vdd gnd NAND2X1
X_1213_ _217_ _211_ _215_ \step2.myadd.fa6.cout\ vdd gnd AOI21X1
X_1214_ \step2.myadd.fa7.i1\ \step2.myadd.fa6.cout\ _221_ vdd gnd AND2X2
X_1215_ \step2.myadd.fa7.i1\ \step2.myadd.fa6.cout\ _222_ vdd gnd NOR2X1
X_1216_ _222_ _221_ \step2.myadd.fa7.i0\ _223_ vdd gnd OAI21X1
X_1217_ \step2.myadd.fa7.i0\ _224_ vdd gnd INVX1
X_1218_ \step2.myadd.fa7.i1\ \step2.myadd.fa6.cout\ _218_ vdd gnd NAND2X1
X_1219_ \step2.myadd.fa7.i1\ \step2.myadd.fa6.cout\ _219_ vdd gnd OR2X2
X_1220_ _224_ _218_ _219_ _220_ vdd gnd NAND3X1
X_1221_ _223_ _220_ \step2.myadd.fa7.sum\ vdd gnd NAND2X1
X_1222_ _224_ _218_ _222_ \step2.myadd.fa7.cout\ vdd gnd AOI21X1
X_1223_ \step2.myadd.fa8.i1\ \step2.myadd.fa7.cout\ _228_ vdd gnd AND2X2
X_1224_ \step2.myadd.fa8.i1\ \step2.myadd.fa7.cout\ _229_ vdd gnd NOR2X1
X_1225_ _229_ _228_ \step2.myadd.fa7.i0\ _230_ vdd gnd OAI21X1
X_1226_ \step2.myadd.fa7.i0\ _231_ vdd gnd INVX1
X_1227_ \step2.myadd.fa8.i1\ \step2.myadd.fa7.cout\ _225_ vdd gnd NAND2X1
X_1228_ \step2.myadd.fa8.i1\ \step2.myadd.fa7.cout\ _226_ vdd gnd OR2X2
X_1229_ _231_ _225_ _226_ _227_ vdd gnd NAND3X1
X_1230_ _230_ _227_ \step2.myadd.fa8.sum\ vdd gnd NAND2X1
X_1231_ \step2.myadd.cin_bF$buf1\ _232_ vdd gnd INVX1
X_1232_ \step1.myadd.x0.i0_bF$buf1\ _232_ _233_ vdd gnd NAND2X1
X_1233_ \step1.myadd.x0.i0_bF$buf0\ _234_ vdd gnd INVX1
X_1234_ \step2.myadd.cin_bF$buf0\ _234_ _235_ vdd gnd NAND2X1
X_1235_ _233_ _235_ \step2.myadd.fa1.i1\ vdd gnd NAND2X1
X_1236_ \step2.myadd.cin_bF$buf4\ _236_ vdd gnd INVX1
X_1237_ \step1.myadd.x1.i0_bF$buf1\ _236_ _237_ vdd gnd NAND2X1
X_1238_ \step1.myadd.x1.i0_bF$buf0\ _238_ vdd gnd INVX1
X_1239_ \step2.myadd.cin_bF$buf3\ _238_ _239_ vdd gnd NAND2X1
X_1240_ _237_ _239_ \step2.myadd.fa2.i1\ vdd gnd NAND2X1
X_1241_ \step2.myadd.cin_bF$buf2\ _240_ vdd gnd INVX1
X_1242_ \step1.myadd.x2.i0_bF$buf1\ _240_ _241_ vdd gnd NAND2X1
X_1243_ \step1.myadd.x2.i0_bF$buf0\ _242_ vdd gnd INVX1
X_1244_ \step2.myadd.cin_bF$buf1\ _242_ _243_ vdd gnd NAND2X1
X_1245_ _241_ _243_ \step2.myadd.fa3.i1\ vdd gnd NAND2X1
X_1246_ \step2.myadd.cin_bF$buf0\ _244_ vdd gnd INVX1
X_1247_ \step1.myadd.x3.i0_bF$buf1\ _244_ _245_ vdd gnd NAND2X1
X_1248_ \step1.myadd.x3.i0_bF$buf0\ _246_ vdd gnd INVX1
X_1249_ \step2.myadd.cin_bF$buf4\ _246_ _247_ vdd gnd NAND2X1
X_1250_ _245_ _247_ \step2.myadd.fa4.i1\ vdd gnd NAND2X1
X_1251_ \step2.myadd.cin_bF$buf3\ _248_ vdd gnd INVX1
X_1252_ \step1.myadd.x4.i0_bF$buf1\ _248_ _249_ vdd gnd NAND2X1
X_1253_ \step1.myadd.x4.i0_bF$buf0\ _250_ vdd gnd INVX1
X_1254_ \step2.myadd.cin_bF$buf2\ _250_ _251_ vdd gnd NAND2X1
X_1255_ _249_ _251_ \step2.myadd.fa5.i1\ vdd gnd NAND2X1
X_1256_ \step2.myadd.cin_bF$buf1\ _252_ vdd gnd INVX1
X_1257_ \step1.myadd.x5.i0_bF$buf1\ _252_ _253_ vdd gnd NAND2X1
X_1258_ \step1.myadd.x5.i0_bF$buf0\ _254_ vdd gnd INVX1
X_1259_ \step2.myadd.cin_bF$buf0\ _254_ _255_ vdd gnd NAND2X1
X_1260_ _253_ _255_ \step2.myadd.fa6.i1\ vdd gnd NAND2X1
X_1261_ \step2.myadd.cin_bF$buf4\ _256_ vdd gnd INVX1
X_1262_ \step1.myadd.x6.i0_bF$buf1\ _256_ _257_ vdd gnd NAND2X1
X_1263_ \step1.myadd.x6.i0_bF$buf0\ _258_ vdd gnd INVX1
X_1264_ \step2.myadd.cin_bF$buf3\ _258_ _259_ vdd gnd NAND2X1
X_1265_ _257_ _259_ \step2.myadd.fa7.i1\ vdd gnd NAND2X1
X_1266_ \step2.myadd.cin_bF$buf2\ _260_ vdd gnd INVX1
X_1267_ \step1.myadd.x7.i0_bF$buf1\ _260_ _261_ vdd gnd NAND2X1
X_1268_ \step1.myadd.x7.i0_bF$buf0\ _262_ vdd gnd INVX1
X_1269_ \step2.myadd.cin_bF$buf1\ _262_ _263_ vdd gnd NAND2X1
X_1270_ _261_ _263_ \step2.myadd.fa8.i1\ vdd gnd NAND2X1
X_1271_ \step2.myadd.cin_bF$buf0\ \step3.myadd.cin_bF$buf4\ _264_ vdd gnd OR2X2
X_1272_ \step2.myadd.cin_bF$buf4\ \step3.myadd.cin_bF$buf3\ _265_ vdd gnd NAND2X1
X_1273_ \step3.myadd.fa2.sum\ _265_ _264_ _266_ vdd gnd NAND3X1
X_1274_ \step2.myadd.cin_bF$buf3\ \step3.myadd.cin_bF$buf2\ _267_ vdd gnd NOR2X1
X_1275_ \step2.myadd.cin_bF$buf2\ \step3.myadd.cin_bF$buf1\ _268_ vdd gnd AND2X2
X_1276_ _267_ _268_ \step3.myadd.fa2.i0\ _269_ vdd gnd OAI21X1
X_1277_ _269_ _266_ \step4.myadd.fa1.i0\ vdd gnd NAND2X1
X_1278_ \step3.myadd.fa3.sum\ _265_ _264_ _270_ vdd gnd NAND3X1
X_1279_ _267_ _268_ \step3.myadd.fa3.i0\ _271_ vdd gnd OAI21X1
X_1280_ _271_ _270_ \step4.myadd.fa2.i0\ vdd gnd NAND2X1
X_1281_ \step3.myadd.fa4.sum\ _265_ _264_ _272_ vdd gnd NAND3X1
X_1282_ _267_ _268_ \step3.myadd.fa4.i0\ _273_ vdd gnd OAI21X1
X_1283_ _273_ _272_ \step4.myadd.fa3.i0\ vdd gnd NAND2X1
X_1284_ \step3.myadd.fa5.sum\ _265_ _264_ _274_ vdd gnd NAND3X1
X_1285_ _267_ _268_ \step3.myadd.fa5.i0\ _275_ vdd gnd OAI21X1
X_1286_ _275_ _274_ \step4.myadd.fa4.i0\ vdd gnd NAND2X1
X_1287_ \step3.myadd.fa6.sum\ _265_ _264_ _276_ vdd gnd NAND3X1
X_1288_ _267_ _268_ \step3.myadd.fa6.i0\ _277_ vdd gnd OAI21X1
X_1289_ _277_ _276_ \step4.myadd.fa5.i0\ vdd gnd NAND2X1
X_1290_ \step3.myadd.fa7.sum\ _265_ _264_ _278_ vdd gnd NAND3X1
X_1291_ _267_ _268_ \step3.myadd.fa7.i0\ _279_ vdd gnd OAI21X1
X_1292_ _279_ _278_ \step4.myadd.fa6.i0\ vdd gnd NAND2X1
X_1293_ \step3.myadd.fa8.sum\ _265_ _264_ _280_ vdd gnd NAND3X1
X_1294_ _267_ _268_ \step3.myadd.fa7.i0\ _281_ vdd gnd OAI21X1
X_1295_ _281_ _280_ \step4.myadd.fa7.i0\ vdd gnd NAND2X1
X_1296_ \step3.myadd.fa1.sum\ _265_ _264_ _282_ vdd gnd NAND3X1
X_1297_ _267_ _268_ \step3.myadd.fa1.i0\ _283_ vdd gnd OAI21X1
X_1298_ _283_ _282_ \Q[2]\[7] vdd gnd NAND2X1
X_1299_ \step3.myadd.fa1.i1\ \step3.myadd.cin_bF$buf0\ _287_ vdd gnd AND2X2
X_1300_ \step3.myadd.fa1.i1\ \step3.myadd.cin_bF$buf4\ _288_ vdd gnd NOR2X1
X_1301_ _288_ _287_ \step3.myadd.fa1.i0\ _289_ vdd gnd OAI21X1
X_1302_ \step3.myadd.fa1.i0\ _290_ vdd gnd INVX1
X_1303_ \step3.myadd.fa1.i1\ \step3.myadd.cin_bF$buf3\ _284_ vdd gnd NAND2X1
X_1304_ \step3.myadd.fa1.i1\ \step3.myadd.cin_bF$buf2\ _285_ vdd gnd OR2X2
X_1305_ _290_ _284_ _285_ _286_ vdd gnd NAND3X1
X_1306_ _289_ _286_ \step3.myadd.fa1.sum\ vdd gnd NAND2X1
X_1307_ _290_ _284_ _288_ \step3.myadd.fa1.cout\ vdd gnd AOI21X1
X_1308_ \step3.myadd.fa2.i1\ \step3.myadd.fa1.cout\ _294_ vdd gnd AND2X2
X_1309_ \step3.myadd.fa2.i1\ \step3.myadd.fa1.cout\ _295_ vdd gnd NOR2X1
X_1310_ _295_ _294_ \step3.myadd.fa2.i0\ _296_ vdd gnd OAI21X1
X_1311_ \step3.myadd.fa2.i0\ _297_ vdd gnd INVX1
X_1312_ \step3.myadd.fa2.i1\ \step3.myadd.fa1.cout\ _291_ vdd gnd NAND2X1
X_1313_ \step3.myadd.fa2.i1\ \step3.myadd.fa1.cout\ _292_ vdd gnd OR2X2
X_1314_ _297_ _291_ _292_ _293_ vdd gnd NAND3X1
X_1315_ _296_ _293_ \step3.myadd.fa2.sum\ vdd gnd NAND2X1
X_1316_ _297_ _291_ _295_ \step3.myadd.fa2.cout\ vdd gnd AOI21X1
X_1317_ \step3.myadd.fa3.i1\ \step3.myadd.fa2.cout\ _301_ vdd gnd AND2X2
X_1318_ \step3.myadd.fa3.i1\ \step3.myadd.fa2.cout\ _302_ vdd gnd NOR2X1
X_1319_ _302_ _301_ \step3.myadd.fa3.i0\ _303_ vdd gnd OAI21X1
X_1320_ \step3.myadd.fa3.i0\ _304_ vdd gnd INVX1
X_1321_ \step3.myadd.fa3.i1\ \step3.myadd.fa2.cout\ _298_ vdd gnd NAND2X1
X_1322_ \step3.myadd.fa3.i1\ \step3.myadd.fa2.cout\ _299_ vdd gnd OR2X2
X_1323_ _304_ _298_ _299_ _300_ vdd gnd NAND3X1
X_1324_ _303_ _300_ \step3.myadd.fa3.sum\ vdd gnd NAND2X1
X_1325_ _304_ _298_ _302_ \step3.myadd.fa3.cout\ vdd gnd AOI21X1
X_1326_ \step3.myadd.fa4.i1\ \step3.myadd.fa3.cout\ _308_ vdd gnd AND2X2
X_1327_ \step3.myadd.fa4.i1\ \step3.myadd.fa3.cout\ _309_ vdd gnd NOR2X1
X_1328_ _309_ _308_ \step3.myadd.fa4.i0\ _310_ vdd gnd OAI21X1
X_1329_ \step3.myadd.fa4.i0\ _311_ vdd gnd INVX1
X_1330_ \step3.myadd.fa4.i1\ \step3.myadd.fa3.cout\ _305_ vdd gnd NAND2X1
X_1331_ \step3.myadd.fa4.i1\ \step3.myadd.fa3.cout\ _306_ vdd gnd OR2X2
X_1332_ _311_ _305_ _306_ _307_ vdd gnd NAND3X1
X_1333_ _310_ _307_ \step3.myadd.fa4.sum\ vdd gnd NAND2X1
X_1334_ _311_ _305_ _309_ \step3.myadd.fa4.cout\ vdd gnd AOI21X1
X_1335_ \step3.myadd.fa5.i1\ \step3.myadd.fa4.cout\ _315_ vdd gnd AND2X2
X_1336_ \step3.myadd.fa5.i1\ \step3.myadd.fa4.cout\ _316_ vdd gnd NOR2X1
X_1337_ _316_ _315_ \step3.myadd.fa5.i0\ _317_ vdd gnd OAI21X1
X_1338_ \step3.myadd.fa5.i0\ _318_ vdd gnd INVX1
X_1339_ \step3.myadd.fa5.i1\ \step3.myadd.fa4.cout\ _312_ vdd gnd NAND2X1
X_1340_ \step3.myadd.fa5.i1\ \step3.myadd.fa4.cout\ _313_ vdd gnd OR2X2
X_1341_ _318_ _312_ _313_ _314_ vdd gnd NAND3X1
X_1342_ _317_ _314_ \step3.myadd.fa5.sum\ vdd gnd NAND2X1
X_1343_ _318_ _312_ _316_ \step3.myadd.fa5.cout\ vdd gnd AOI21X1
X_1344_ \step3.myadd.fa6.i1\ \step3.myadd.fa5.cout\ _322_ vdd gnd AND2X2
X_1345_ \step3.myadd.fa6.i1\ \step3.myadd.fa5.cout\ _323_ vdd gnd NOR2X1
X_1346_ _323_ _322_ \step3.myadd.fa6.i0\ _324_ vdd gnd OAI21X1
X_1347_ \step3.myadd.fa6.i0\ _325_ vdd gnd INVX1
X_1348_ \step3.myadd.fa6.i1\ \step3.myadd.fa5.cout\ _319_ vdd gnd NAND2X1
X_1349_ \step3.myadd.fa6.i1\ \step3.myadd.fa5.cout\ _320_ vdd gnd OR2X2
X_1350_ _325_ _319_ _320_ _321_ vdd gnd NAND3X1
X_1351_ _324_ _321_ \step3.myadd.fa6.sum\ vdd gnd NAND2X1
X_1352_ _325_ _319_ _323_ \step3.myadd.fa6.cout\ vdd gnd AOI21X1
X_1353_ \step3.myadd.fa7.i1\ \step3.myadd.fa6.cout\ _329_ vdd gnd AND2X2
X_1354_ \step3.myadd.fa7.i1\ \step3.myadd.fa6.cout\ _330_ vdd gnd NOR2X1
X_1355_ _330_ _329_ \step3.myadd.fa7.i0\ _331_ vdd gnd OAI21X1
X_1356_ \step3.myadd.fa7.i0\ _332_ vdd gnd INVX1
X_1357_ \step3.myadd.fa7.i1\ \step3.myadd.fa6.cout\ _326_ vdd gnd NAND2X1
X_1358_ \step3.myadd.fa7.i1\ \step3.myadd.fa6.cout\ _327_ vdd gnd OR2X2
X_1359_ _332_ _326_ _327_ _328_ vdd gnd NAND3X1
X_1360_ _331_ _328_ \step3.myadd.fa7.sum\ vdd gnd NAND2X1
X_1361_ _332_ _326_ _330_ \step3.myadd.fa7.cout\ vdd gnd AOI21X1
X_1362_ \step3.myadd.fa8.i1\ \step3.myadd.fa7.cout\ _336_ vdd gnd AND2X2
X_1363_ \step3.myadd.fa8.i1\ \step3.myadd.fa7.cout\ _337_ vdd gnd NOR2X1
X_1364_ _337_ _336_ \step3.myadd.fa7.i0\ _338_ vdd gnd OAI21X1
X_1365_ \step3.myadd.fa7.i0\ _339_ vdd gnd INVX1
X_1366_ \step3.myadd.fa8.i1\ \step3.myadd.fa7.cout\ _333_ vdd gnd NAND2X1
X_1367_ \step3.myadd.fa8.i1\ \step3.myadd.fa7.cout\ _334_ vdd gnd OR2X2
X_1368_ _339_ _333_ _334_ _335_ vdd gnd NAND3X1
X_1369_ _338_ _335_ \step3.myadd.fa8.sum\ vdd gnd NAND2X1
X_1370_ \step3.myadd.cin_bF$buf1\ _340_ vdd gnd INVX1
X_1371_ \step1.myadd.x0.i0_bF$buf3\ _340_ _341_ vdd gnd NAND2X1
X_1372_ \step1.myadd.x0.i0_bF$buf2\ _342_ vdd gnd INVX1
X_1373_ \step3.myadd.cin_bF$buf0\ _342_ _343_ vdd gnd NAND2X1
X_1374_ _341_ _343_ \step3.myadd.fa1.i1\ vdd gnd NAND2X1
X_1375_ \step3.myadd.cin_bF$buf4\ _344_ vdd gnd INVX1
X_1376_ \step1.myadd.x1.i0_bF$buf3\ _344_ _345_ vdd gnd NAND2X1
X_1377_ \step1.myadd.x1.i0_bF$buf2\ _346_ vdd gnd INVX1
X_1378_ \step3.myadd.cin_bF$buf3\ _346_ _347_ vdd gnd NAND2X1
X_1379_ _345_ _347_ \step3.myadd.fa2.i1\ vdd gnd NAND2X1
X_1380_ \step3.myadd.cin_bF$buf2\ _348_ vdd gnd INVX1
X_1381_ \step1.myadd.x2.i0_bF$buf3\ _348_ _349_ vdd gnd NAND2X1
X_1382_ \step1.myadd.x2.i0_bF$buf2\ _350_ vdd gnd INVX1
X_1383_ \step3.myadd.cin_bF$buf1\ _350_ _351_ vdd gnd NAND2X1
X_1384_ _349_ _351_ \step3.myadd.fa3.i1\ vdd gnd NAND2X1
X_1385_ \step3.myadd.cin_bF$buf0\ _352_ vdd gnd INVX1
X_1386_ \step1.myadd.x3.i0_bF$buf3\ _352_ _353_ vdd gnd NAND2X1
X_1387_ \step1.myadd.x3.i0_bF$buf2\ _354_ vdd gnd INVX1
X_1388_ \step3.myadd.cin_bF$buf4\ _354_ _355_ vdd gnd NAND2X1
X_1389_ _353_ _355_ \step3.myadd.fa4.i1\ vdd gnd NAND2X1
X_1390_ \step3.myadd.cin_bF$buf3\ _356_ vdd gnd INVX1
X_1391_ \step1.myadd.x4.i0_bF$buf3\ _356_ _357_ vdd gnd NAND2X1
X_1392_ \step1.myadd.x4.i0_bF$buf2\ _358_ vdd gnd INVX1
X_1393_ \step3.myadd.cin_bF$buf2\ _358_ _359_ vdd gnd NAND2X1
X_1394_ _357_ _359_ \step3.myadd.fa5.i1\ vdd gnd NAND2X1
X_1395_ \step3.myadd.cin_bF$buf1\ _360_ vdd gnd INVX1
X_1396_ \step1.myadd.x5.i0_bF$buf3\ _360_ _361_ vdd gnd NAND2X1
X_1397_ \step1.myadd.x5.i0_bF$buf2\ _362_ vdd gnd INVX1
X_1398_ \step3.myadd.cin_bF$buf0\ _362_ _363_ vdd gnd NAND2X1
X_1399_ _361_ _363_ \step3.myadd.fa6.i1\ vdd gnd NAND2X1
X_1400_ \step3.myadd.cin_bF$buf4\ _364_ vdd gnd INVX1
X_1401_ \step1.myadd.x6.i0_bF$buf3\ _364_ _365_ vdd gnd NAND2X1
X_1402_ \step1.myadd.x6.i0_bF$buf2\ _366_ vdd gnd INVX1
X_1403_ \step3.myadd.cin_bF$buf3\ _366_ _367_ vdd gnd NAND2X1
X_1404_ _365_ _367_ \step3.myadd.fa7.i1\ vdd gnd NAND2X1
X_1405_ \step3.myadd.cin_bF$buf2\ _368_ vdd gnd INVX1
X_1406_ \step1.myadd.x7.i0_bF$buf3\ _368_ _369_ vdd gnd NAND2X1
X_1407_ \step1.myadd.x7.i0_bF$buf2\ _370_ vdd gnd INVX1
X_1408_ \step3.myadd.cin_bF$buf1\ _370_ _371_ vdd gnd NAND2X1
X_1409_ _369_ _371_ \step3.myadd.fa8.i1\ vdd gnd NAND2X1
X_1410_ \step3.myadd.cin_bF$buf0\ \step4.myadd.cin_bF$buf4\ _372_ vdd gnd OR2X2
X_1411_ \step3.myadd.cin_bF$buf4\ \step4.myadd.cin_bF$buf3\ _373_ vdd gnd NAND2X1
X_1412_ \step4.myadd.fa2.sum\ _373_ _372_ _374_ vdd gnd NAND3X1
X_1413_ \step3.myadd.cin_bF$buf3\ \step4.myadd.cin_bF$buf2\ _375_ vdd gnd NOR2X1
X_1414_ \step3.myadd.cin_bF$buf2\ \step4.myadd.cin_bF$buf1\ _376_ vdd gnd AND2X2
X_1415_ _375_ _376_ \step4.myadd.fa2.i0\ _377_ vdd gnd OAI21X1
X_1416_ _377_ _374_ \step5.myadd.fa1.i0\ vdd gnd NAND2X1
X_1417_ \step4.myadd.fa3.sum\ _373_ _372_ _378_ vdd gnd NAND3X1
X_1418_ _375_ _376_ \step4.myadd.fa3.i0\ _379_ vdd gnd OAI21X1
X_1419_ _379_ _378_ \step5.myadd.fa2.i0\ vdd gnd NAND2X1
X_1420_ \step4.myadd.fa4.sum\ _373_ _372_ _380_ vdd gnd NAND3X1
X_1421_ _375_ _376_ \step4.myadd.fa4.i0\ _381_ vdd gnd OAI21X1
X_1422_ _381_ _380_ \step5.myadd.fa3.i0\ vdd gnd NAND2X1
X_1423_ \step4.myadd.fa5.sum\ _373_ _372_ _382_ vdd gnd NAND3X1
X_1424_ _375_ _376_ \step4.myadd.fa5.i0\ _383_ vdd gnd OAI21X1
X_1425_ _383_ _382_ \step5.myadd.fa4.i0\ vdd gnd NAND2X1
X_1426_ \step4.myadd.fa6.sum\ _373_ _372_ _384_ vdd gnd NAND3X1
X_1427_ _375_ _376_ \step4.myadd.fa6.i0\ _385_ vdd gnd OAI21X1
X_1428_ _385_ _384_ \step5.myadd.fa5.i0\ vdd gnd NAND2X1
X_1429_ \step4.myadd.fa7.sum\ _373_ _372_ _386_ vdd gnd NAND3X1
X_1430_ _375_ _376_ \step4.myadd.fa7.i0\ _387_ vdd gnd OAI21X1
X_1431_ _387_ _386_ \step5.myadd.fa6.i0\ vdd gnd NAND2X1
X_1432_ \step4.myadd.fa8.sum\ _373_ _372_ _388_ vdd gnd NAND3X1
X_1433_ _375_ _376_ \step4.myadd.fa7.i0\ _389_ vdd gnd OAI21X1
X_1434_ _389_ _388_ \step5.myadd.fa7.i0\ vdd gnd NAND2X1
X_1435_ \step4.myadd.fa1.sum\ _373_ _372_ _390_ vdd gnd NAND3X1
X_1436_ _375_ _376_ \step4.myadd.fa1.i0\ _391_ vdd gnd OAI21X1
X_1437_ _391_ _390_ \Q[3]\[7] vdd gnd NAND2X1
X_1438_ \step4.myadd.fa1.i1\ \step4.myadd.cin_bF$buf0\ _395_ vdd gnd AND2X2
X_1439_ \step4.myadd.fa1.i1\ \step4.myadd.cin_bF$buf4\ _396_ vdd gnd NOR2X1
X_1440_ _396_ _395_ \step4.myadd.fa1.i0\ _397_ vdd gnd OAI21X1
X_1441_ \step4.myadd.fa1.i0\ _398_ vdd gnd INVX1
X_1442_ \step4.myadd.fa1.i1\ \step4.myadd.cin_bF$buf3\ _392_ vdd gnd NAND2X1
X_1443_ \step4.myadd.fa1.i1\ \step4.myadd.cin_bF$buf2\ _393_ vdd gnd OR2X2
X_1444_ _398_ _392_ _393_ _394_ vdd gnd NAND3X1
X_1445_ _397_ _394_ \step4.myadd.fa1.sum\ vdd gnd NAND2X1
X_1446_ _398_ _392_ _396_ \step4.myadd.fa1.cout\ vdd gnd AOI21X1
X_1447_ \step4.myadd.fa2.i1\ \step4.myadd.fa1.cout\ _402_ vdd gnd AND2X2
X_1448_ \step4.myadd.fa2.i1\ \step4.myadd.fa1.cout\ _403_ vdd gnd NOR2X1
X_1449_ _403_ _402_ \step4.myadd.fa2.i0\ _404_ vdd gnd OAI21X1
X_1450_ \step4.myadd.fa2.i0\ _405_ vdd gnd INVX1
X_1451_ \step4.myadd.fa2.i1\ \step4.myadd.fa1.cout\ _399_ vdd gnd NAND2X1
X_1452_ \step4.myadd.fa2.i1\ \step4.myadd.fa1.cout\ _400_ vdd gnd OR2X2
X_1453_ _405_ _399_ _400_ _401_ vdd gnd NAND3X1
X_1454_ _404_ _401_ \step4.myadd.fa2.sum\ vdd gnd NAND2X1
X_1455_ _405_ _399_ _403_ \step4.myadd.fa2.cout\ vdd gnd AOI21X1
X_1456_ \step4.myadd.fa3.i1\ \step4.myadd.fa2.cout\ _409_ vdd gnd AND2X2
X_1457_ \step4.myadd.fa3.i1\ \step4.myadd.fa2.cout\ _410_ vdd gnd NOR2X1
X_1458_ _410_ _409_ \step4.myadd.fa3.i0\ _411_ vdd gnd OAI21X1
X_1459_ \step4.myadd.fa3.i0\ _412_ vdd gnd INVX1
X_1460_ \step4.myadd.fa3.i1\ \step4.myadd.fa2.cout\ _406_ vdd gnd NAND2X1
X_1461_ \step4.myadd.fa3.i1\ \step4.myadd.fa2.cout\ _407_ vdd gnd OR2X2
X_1462_ _412_ _406_ _407_ _408_ vdd gnd NAND3X1
X_1463_ _411_ _408_ \step4.myadd.fa3.sum\ vdd gnd NAND2X1
X_1464_ _412_ _406_ _410_ \step4.myadd.fa3.cout\ vdd gnd AOI21X1
X_1465_ \step4.myadd.fa4.i1\ \step4.myadd.fa3.cout\ _416_ vdd gnd AND2X2
X_1466_ \step4.myadd.fa4.i1\ \step4.myadd.fa3.cout\ _417_ vdd gnd NOR2X1
X_1467_ _417_ _416_ \step4.myadd.fa4.i0\ _418_ vdd gnd OAI21X1
X_1468_ \step4.myadd.fa4.i0\ _419_ vdd gnd INVX1
X_1469_ \step4.myadd.fa4.i1\ \step4.myadd.fa3.cout\ _413_ vdd gnd NAND2X1
X_1470_ \step4.myadd.fa4.i1\ \step4.myadd.fa3.cout\ _414_ vdd gnd OR2X2
X_1471_ _419_ _413_ _414_ _415_ vdd gnd NAND3X1
X_1472_ _418_ _415_ \step4.myadd.fa4.sum\ vdd gnd NAND2X1
X_1473_ _419_ _413_ _417_ \step4.myadd.fa4.cout\ vdd gnd AOI21X1
X_1474_ \step4.myadd.fa5.i1\ \step4.myadd.fa4.cout\ _423_ vdd gnd AND2X2
X_1475_ \step4.myadd.fa5.i1\ \step4.myadd.fa4.cout\ _424_ vdd gnd NOR2X1
X_1476_ _424_ _423_ \step4.myadd.fa5.i0\ _425_ vdd gnd OAI21X1
X_1477_ \step4.myadd.fa5.i0\ _426_ vdd gnd INVX1
X_1478_ \step4.myadd.fa5.i1\ \step4.myadd.fa4.cout\ _420_ vdd gnd NAND2X1
X_1479_ \step4.myadd.fa5.i1\ \step4.myadd.fa4.cout\ _421_ vdd gnd OR2X2
X_1480_ _426_ _420_ _421_ _422_ vdd gnd NAND3X1
X_1481_ _425_ _422_ \step4.myadd.fa5.sum\ vdd gnd NAND2X1
X_1482_ _426_ _420_ _424_ \step4.myadd.fa5.cout\ vdd gnd AOI21X1
X_1483_ \step4.myadd.fa6.i1\ \step4.myadd.fa5.cout\ _430_ vdd gnd AND2X2
X_1484_ \step4.myadd.fa6.i1\ \step4.myadd.fa5.cout\ _431_ vdd gnd NOR2X1
X_1485_ _431_ _430_ \step4.myadd.fa6.i0\ _432_ vdd gnd OAI21X1
X_1486_ \step4.myadd.fa6.i0\ _433_ vdd gnd INVX1
X_1487_ \step4.myadd.fa6.i1\ \step4.myadd.fa5.cout\ _427_ vdd gnd NAND2X1
X_1488_ \step4.myadd.fa6.i1\ \step4.myadd.fa5.cout\ _428_ vdd gnd OR2X2
X_1489_ _433_ _427_ _428_ _429_ vdd gnd NAND3X1
X_1490_ _432_ _429_ \step4.myadd.fa6.sum\ vdd gnd NAND2X1
X_1491_ _433_ _427_ _431_ \step4.myadd.fa6.cout\ vdd gnd AOI21X1
X_1492_ \step4.myadd.fa7.i1\ \step4.myadd.fa6.cout\ _437_ vdd gnd AND2X2
X_1493_ \step4.myadd.fa7.i1\ \step4.myadd.fa6.cout\ _438_ vdd gnd NOR2X1
X_1494_ _438_ _437_ \step4.myadd.fa7.i0\ _439_ vdd gnd OAI21X1
X_1495_ \step4.myadd.fa7.i0\ _440_ vdd gnd INVX1
X_1496_ \step4.myadd.fa7.i1\ \step4.myadd.fa6.cout\ _434_ vdd gnd NAND2X1
X_1497_ \step4.myadd.fa7.i1\ \step4.myadd.fa6.cout\ _435_ vdd gnd OR2X2
X_1498_ _440_ _434_ _435_ _436_ vdd gnd NAND3X1
X_1499_ _439_ _436_ \step4.myadd.fa7.sum\ vdd gnd NAND2X1
X_1500_ _440_ _434_ _438_ \step4.myadd.fa7.cout\ vdd gnd AOI21X1
X_1501_ \step4.myadd.fa8.i1\ \step4.myadd.fa7.cout\ _444_ vdd gnd AND2X2
X_1502_ \step4.myadd.fa8.i1\ \step4.myadd.fa7.cout\ _445_ vdd gnd NOR2X1
X_1503_ _445_ _444_ \step4.myadd.fa7.i0\ _446_ vdd gnd OAI21X1
X_1504_ \step4.myadd.fa7.i0\ _447_ vdd gnd INVX1
X_1505_ \step4.myadd.fa8.i1\ \step4.myadd.fa7.cout\ _441_ vdd gnd NAND2X1
X_1506_ \step4.myadd.fa8.i1\ \step4.myadd.fa7.cout\ _442_ vdd gnd OR2X2
X_1507_ _447_ _441_ _442_ _443_ vdd gnd NAND3X1
X_1508_ _446_ _443_ \step4.myadd.fa8.sum\ vdd gnd NAND2X1
X_1509_ \step4.myadd.cin_bF$buf1\ _448_ vdd gnd INVX1
X_1510_ \step1.myadd.x0.i0_bF$buf1\ _448_ _449_ vdd gnd NAND2X1
X_1511_ \step1.myadd.x0.i0_bF$buf0\ _450_ vdd gnd INVX1
X_1512_ \step4.myadd.cin_bF$buf0\ _450_ _451_ vdd gnd NAND2X1
X_1513_ _449_ _451_ \step4.myadd.fa1.i1\ vdd gnd NAND2X1
X_1514_ \step4.myadd.cin_bF$buf4\ _452_ vdd gnd INVX1
X_1515_ \step1.myadd.x1.i0_bF$buf1\ _452_ _453_ vdd gnd NAND2X1
X_1516_ \step1.myadd.x1.i0_bF$buf0\ _454_ vdd gnd INVX1
X_1517_ \step4.myadd.cin_bF$buf3\ _454_ _455_ vdd gnd NAND2X1
X_1518_ _453_ _455_ \step4.myadd.fa2.i1\ vdd gnd NAND2X1
X_1519_ \step4.myadd.cin_bF$buf2\ _456_ vdd gnd INVX1
X_1520_ \step1.myadd.x2.i0_bF$buf1\ _456_ _457_ vdd gnd NAND2X1
X_1521_ \step1.myadd.x2.i0_bF$buf0\ _458_ vdd gnd INVX1
X_1522_ \step4.myadd.cin_bF$buf1\ _458_ _459_ vdd gnd NAND2X1
X_1523_ _457_ _459_ \step4.myadd.fa3.i1\ vdd gnd NAND2X1
X_1524_ \step4.myadd.cin_bF$buf0\ _460_ vdd gnd INVX1
X_1525_ \step1.myadd.x3.i0_bF$buf1\ _460_ _461_ vdd gnd NAND2X1
X_1526_ \step1.myadd.x3.i0_bF$buf0\ _462_ vdd gnd INVX1
X_1527_ \step4.myadd.cin_bF$buf4\ _462_ _463_ vdd gnd NAND2X1
X_1528_ _461_ _463_ \step4.myadd.fa4.i1\ vdd gnd NAND2X1
X_1529_ \step4.myadd.cin_bF$buf3\ _464_ vdd gnd INVX1
X_1530_ \step1.myadd.x4.i0_bF$buf1\ _464_ _465_ vdd gnd NAND2X1
X_1531_ \step1.myadd.x4.i0_bF$buf0\ _466_ vdd gnd INVX1
X_1532_ \step4.myadd.cin_bF$buf2\ _466_ _467_ vdd gnd NAND2X1
X_1533_ _465_ _467_ \step4.myadd.fa5.i1\ vdd gnd NAND2X1
X_1534_ \step4.myadd.cin_bF$buf1\ _468_ vdd gnd INVX1
X_1535_ \step1.myadd.x5.i0_bF$buf1\ _468_ _469_ vdd gnd NAND2X1
X_1536_ \step1.myadd.x5.i0_bF$buf0\ _470_ vdd gnd INVX1
X_1537_ \step4.myadd.cin_bF$buf0\ _470_ _471_ vdd gnd NAND2X1
X_1538_ _469_ _471_ \step4.myadd.fa6.i1\ vdd gnd NAND2X1
X_1539_ \step4.myadd.cin_bF$buf4\ _472_ vdd gnd INVX1
X_1540_ \step1.myadd.x6.i0_bF$buf1\ _472_ _473_ vdd gnd NAND2X1
X_1541_ \step1.myadd.x6.i0_bF$buf0\ _474_ vdd gnd INVX1
X_1542_ \step4.myadd.cin_bF$buf3\ _474_ _475_ vdd gnd NAND2X1
X_1543_ _473_ _475_ \step4.myadd.fa7.i1\ vdd gnd NAND2X1
X_1544_ \step4.myadd.cin_bF$buf2\ _476_ vdd gnd INVX1
X_1545_ \step1.myadd.x7.i0_bF$buf1\ _476_ _477_ vdd gnd NAND2X1
X_1546_ \step1.myadd.x7.i0_bF$buf0\ _478_ vdd gnd INVX1
X_1547_ \step4.myadd.cin_bF$buf1\ _478_ _479_ vdd gnd NAND2X1
X_1548_ _477_ _479_ \step4.myadd.fa8.i1\ vdd gnd NAND2X1
X_1549_ \step4.myadd.cin_bF$buf0\ \step5.myadd.cin_bF$buf4\ _480_ vdd gnd OR2X2
X_1550_ \step4.myadd.cin_bF$buf4\ \step5.myadd.cin_bF$buf3\ _481_ vdd gnd NAND2X1
X_1551_ \step5.myadd.fa2.sum\ _481_ _480_ _482_ vdd gnd NAND3X1
X_1552_ \step4.myadd.cin_bF$buf3\ \step5.myadd.cin_bF$buf2\ _483_ vdd gnd NOR2X1
X_1553_ \step4.myadd.cin_bF$buf2\ \step5.myadd.cin_bF$buf1\ _484_ vdd gnd AND2X2
X_1554_ _483_ _484_ \step5.myadd.fa2.i0\ _485_ vdd gnd OAI21X1
X_1555_ _485_ _482_ \step6.myadd.fa1.i0\ vdd gnd NAND2X1
X_1556_ \step5.myadd.fa3.sum\ _481_ _480_ _486_ vdd gnd NAND3X1
X_1557_ _483_ _484_ \step5.myadd.fa3.i0\ _487_ vdd gnd OAI21X1
X_1558_ _487_ _486_ \step6.myadd.fa2.i0\ vdd gnd NAND2X1
X_1559_ \step5.myadd.fa4.sum\ _481_ _480_ _488_ vdd gnd NAND3X1
X_1560_ _483_ _484_ \step5.myadd.fa4.i0\ _489_ vdd gnd OAI21X1
X_1561_ _489_ _488_ \step6.myadd.fa3.i0\ vdd gnd NAND2X1
X_1562_ \step5.myadd.fa5.sum\ _481_ _480_ _490_ vdd gnd NAND3X1
X_1563_ _483_ _484_ \step5.myadd.fa5.i0\ _491_ vdd gnd OAI21X1
X_1564_ _491_ _490_ \step6.myadd.fa4.i0\ vdd gnd NAND2X1
X_1565_ \step5.myadd.fa6.sum\ _481_ _480_ _492_ vdd gnd NAND3X1
X_1566_ _483_ _484_ \step5.myadd.fa6.i0\ _493_ vdd gnd OAI21X1
X_1567_ _493_ _492_ \step6.myadd.fa5.i0\ vdd gnd NAND2X1
X_1568_ \step5.myadd.fa7.sum\ _481_ _480_ _494_ vdd gnd NAND3X1
X_1569_ _483_ _484_ \step5.myadd.fa7.i0\ _495_ vdd gnd OAI21X1
X_1570_ _495_ _494_ \step6.myadd.fa6.i0\ vdd gnd NAND2X1
X_1571_ \step5.myadd.fa8.sum\ _481_ _480_ _496_ vdd gnd NAND3X1
X_1572_ _483_ _484_ \step5.myadd.fa7.i0\ _497_ vdd gnd OAI21X1
X_1573_ _497_ _496_ \step6.myadd.fa7.i0\ vdd gnd NAND2X1
X_1574_ \step5.myadd.fa1.sum\ _481_ _480_ _498_ vdd gnd NAND3X1
X_1575_ _483_ _484_ \step5.myadd.fa1.i0\ _499_ vdd gnd OAI21X1
X_1576_ _499_ _498_ \Q[4]\[7] vdd gnd NAND2X1
X_1577_ \step5.myadd.fa1.i1\ \step5.myadd.cin_bF$buf0\ _503_ vdd gnd AND2X2
X_1578_ \step5.myadd.fa1.i1\ \step5.myadd.cin_bF$buf4\ _504_ vdd gnd NOR2X1
X_1579_ _504_ _503_ \step5.myadd.fa1.i0\ _505_ vdd gnd OAI21X1
X_1580_ \step5.myadd.fa1.i0\ _506_ vdd gnd INVX1
X_1581_ \step5.myadd.fa1.i1\ \step5.myadd.cin_bF$buf3\ _500_ vdd gnd NAND2X1
X_1582_ \step5.myadd.fa1.i1\ \step5.myadd.cin_bF$buf2\ _501_ vdd gnd OR2X2
X_1583_ _506_ _500_ _501_ _502_ vdd gnd NAND3X1
X_1584_ _505_ _502_ \step5.myadd.fa1.sum\ vdd gnd NAND2X1
X_1585_ _506_ _500_ _504_ \step5.myadd.fa1.cout\ vdd gnd AOI21X1
X_1586_ \step5.myadd.fa2.i1\ \step5.myadd.fa1.cout\ _510_ vdd gnd AND2X2
X_1587_ \step5.myadd.fa2.i1\ \step5.myadd.fa1.cout\ _511_ vdd gnd NOR2X1
X_1588_ _511_ _510_ \step5.myadd.fa2.i0\ _512_ vdd gnd OAI21X1
X_1589_ \step5.myadd.fa2.i0\ _513_ vdd gnd INVX1
X_1590_ \step5.myadd.fa2.i1\ \step5.myadd.fa1.cout\ _507_ vdd gnd NAND2X1
X_1591_ \step5.myadd.fa2.i1\ \step5.myadd.fa1.cout\ _508_ vdd gnd OR2X2
X_1592_ _513_ _507_ _508_ _509_ vdd gnd NAND3X1
X_1593_ _512_ _509_ \step5.myadd.fa2.sum\ vdd gnd NAND2X1
X_1594_ _513_ _507_ _511_ \step5.myadd.fa2.cout\ vdd gnd AOI21X1
X_1595_ \step5.myadd.fa3.i1\ \step5.myadd.fa2.cout\ _517_ vdd gnd AND2X2
X_1596_ \step5.myadd.fa3.i1\ \step5.myadd.fa2.cout\ _518_ vdd gnd NOR2X1
X_1597_ _518_ _517_ \step5.myadd.fa3.i0\ _519_ vdd gnd OAI21X1
X_1598_ \step5.myadd.fa3.i0\ _520_ vdd gnd INVX1
X_1599_ \step5.myadd.fa3.i1\ \step5.myadd.fa2.cout\ _514_ vdd gnd NAND2X1
X_1600_ \step5.myadd.fa3.i1\ \step5.myadd.fa2.cout\ _515_ vdd gnd OR2X2
X_1601_ _520_ _514_ _515_ _516_ vdd gnd NAND3X1
X_1602_ _519_ _516_ \step5.myadd.fa3.sum\ vdd gnd NAND2X1
X_1603_ _520_ _514_ _518_ \step5.myadd.fa3.cout\ vdd gnd AOI21X1
X_1604_ \step5.myadd.fa4.i1\ \step5.myadd.fa3.cout\ _524_ vdd gnd AND2X2
X_1605_ \step5.myadd.fa4.i1\ \step5.myadd.fa3.cout\ _525_ vdd gnd NOR2X1
X_1606_ _525_ _524_ \step5.myadd.fa4.i0\ _526_ vdd gnd OAI21X1
X_1607_ \step5.myadd.fa4.i0\ _527_ vdd gnd INVX1
X_1608_ \step5.myadd.fa4.i1\ \step5.myadd.fa3.cout\ _521_ vdd gnd NAND2X1
X_1609_ \step5.myadd.fa4.i1\ \step5.myadd.fa3.cout\ _522_ vdd gnd OR2X2
X_1610_ _527_ _521_ _522_ _523_ vdd gnd NAND3X1
X_1611_ _526_ _523_ \step5.myadd.fa4.sum\ vdd gnd NAND2X1
X_1612_ _527_ _521_ _525_ \step5.myadd.fa4.cout\ vdd gnd AOI21X1
X_1613_ \step5.myadd.fa5.i1\ \step5.myadd.fa4.cout\ _531_ vdd gnd AND2X2
X_1614_ \step5.myadd.fa5.i1\ \step5.myadd.fa4.cout\ _532_ vdd gnd NOR2X1
X_1615_ _532_ _531_ \step5.myadd.fa5.i0\ _533_ vdd gnd OAI21X1
X_1616_ \step5.myadd.fa5.i0\ _534_ vdd gnd INVX1
X_1617_ \step5.myadd.fa5.i1\ \step5.myadd.fa4.cout\ _528_ vdd gnd NAND2X1
X_1618_ \step5.myadd.fa5.i1\ \step5.myadd.fa4.cout\ _529_ vdd gnd OR2X2
X_1619_ _534_ _528_ _529_ _530_ vdd gnd NAND3X1
X_1620_ _533_ _530_ \step5.myadd.fa5.sum\ vdd gnd NAND2X1
X_1621_ _534_ _528_ _532_ \step5.myadd.fa5.cout\ vdd gnd AOI21X1
X_1622_ \step5.myadd.fa6.i1\ \step5.myadd.fa5.cout\ _538_ vdd gnd AND2X2
X_1623_ \step5.myadd.fa6.i1\ \step5.myadd.fa5.cout\ _539_ vdd gnd NOR2X1
X_1624_ _539_ _538_ \step5.myadd.fa6.i0\ _540_ vdd gnd OAI21X1
X_1625_ \step5.myadd.fa6.i0\ _541_ vdd gnd INVX1
X_1626_ \step5.myadd.fa6.i1\ \step5.myadd.fa5.cout\ _535_ vdd gnd NAND2X1
X_1627_ \step5.myadd.fa6.i1\ \step5.myadd.fa5.cout\ _536_ vdd gnd OR2X2
X_1628_ _541_ _535_ _536_ _537_ vdd gnd NAND3X1
X_1629_ _540_ _537_ \step5.myadd.fa6.sum\ vdd gnd NAND2X1
X_1630_ _541_ _535_ _539_ \step5.myadd.fa6.cout\ vdd gnd AOI21X1
X_1631_ \step5.myadd.fa7.i1\ \step5.myadd.fa6.cout\ _545_ vdd gnd AND2X2
X_1632_ \step5.myadd.fa7.i1\ \step5.myadd.fa6.cout\ _546_ vdd gnd NOR2X1
X_1633_ _546_ _545_ \step5.myadd.fa7.i0\ _547_ vdd gnd OAI21X1
X_1634_ \step5.myadd.fa7.i0\ _548_ vdd gnd INVX1
X_1635_ \step5.myadd.fa7.i1\ \step5.myadd.fa6.cout\ _542_ vdd gnd NAND2X1
X_1636_ \step5.myadd.fa7.i1\ \step5.myadd.fa6.cout\ _543_ vdd gnd OR2X2
X_1637_ _548_ _542_ _543_ _544_ vdd gnd NAND3X1
X_1638_ _547_ _544_ \step5.myadd.fa7.sum\ vdd gnd NAND2X1
X_1639_ _548_ _542_ _546_ \step5.myadd.fa7.cout\ vdd gnd AOI21X1
X_1640_ \step5.myadd.fa8.i1\ \step5.myadd.fa7.cout\ _552_ vdd gnd AND2X2
X_1641_ \step5.myadd.fa8.i1\ \step5.myadd.fa7.cout\ _553_ vdd gnd NOR2X1
X_1642_ _553_ _552_ \step5.myadd.fa7.i0\ _554_ vdd gnd OAI21X1
X_1643_ \step5.myadd.fa7.i0\ _555_ vdd gnd INVX1
X_1644_ \step5.myadd.fa8.i1\ \step5.myadd.fa7.cout\ _549_ vdd gnd NAND2X1
X_1645_ \step5.myadd.fa8.i1\ \step5.myadd.fa7.cout\ _550_ vdd gnd OR2X2
X_1646_ _555_ _549_ _550_ _551_ vdd gnd NAND3X1
X_1647_ _554_ _551_ \step5.myadd.fa8.sum\ vdd gnd NAND2X1
X_1648_ \step5.myadd.cin_bF$buf1\ _556_ vdd gnd INVX1
X_1649_ \step1.myadd.x0.i0_bF$buf3\ _556_ _557_ vdd gnd NAND2X1
X_1650_ \step1.myadd.x0.i0_bF$buf2\ _558_ vdd gnd INVX1
X_1651_ \step5.myadd.cin_bF$buf0\ _558_ _559_ vdd gnd NAND2X1
X_1652_ _557_ _559_ \step5.myadd.fa1.i1\ vdd gnd NAND2X1
X_1653_ \step5.myadd.cin_bF$buf4\ _560_ vdd gnd INVX1
X_1654_ \step1.myadd.x1.i0_bF$buf3\ _560_ _561_ vdd gnd NAND2X1
X_1655_ \step1.myadd.x1.i0_bF$buf2\ _562_ vdd gnd INVX1
X_1656_ \step5.myadd.cin_bF$buf3\ _562_ _563_ vdd gnd NAND2X1
X_1657_ _561_ _563_ \step5.myadd.fa2.i1\ vdd gnd NAND2X1
X_1658_ \step5.myadd.cin_bF$buf2\ _564_ vdd gnd INVX1
X_1659_ \step1.myadd.x2.i0_bF$buf3\ _564_ _565_ vdd gnd NAND2X1
X_1660_ \step1.myadd.x2.i0_bF$buf2\ _566_ vdd gnd INVX1
X_1661_ \step5.myadd.cin_bF$buf1\ _566_ _567_ vdd gnd NAND2X1
X_1662_ _565_ _567_ \step5.myadd.fa3.i1\ vdd gnd NAND2X1
X_1663_ \step5.myadd.cin_bF$buf0\ _568_ vdd gnd INVX1
X_1664_ \step1.myadd.x3.i0_bF$buf3\ _568_ _569_ vdd gnd NAND2X1
X_1665_ \step1.myadd.x3.i0_bF$buf2\ _570_ vdd gnd INVX1
X_1666_ \step5.myadd.cin_bF$buf4\ _570_ _571_ vdd gnd NAND2X1
X_1667_ _569_ _571_ \step5.myadd.fa4.i1\ vdd gnd NAND2X1
X_1668_ \step5.myadd.cin_bF$buf3\ _572_ vdd gnd INVX1
X_1669_ \step1.myadd.x4.i0_bF$buf3\ _572_ _573_ vdd gnd NAND2X1
X_1670_ \step1.myadd.x4.i0_bF$buf2\ _574_ vdd gnd INVX1
X_1671_ \step5.myadd.cin_bF$buf2\ _574_ _575_ vdd gnd NAND2X1
X_1672_ _573_ _575_ \step5.myadd.fa5.i1\ vdd gnd NAND2X1
X_1673_ \step5.myadd.cin_bF$buf1\ _576_ vdd gnd INVX1
X_1674_ \step1.myadd.x5.i0_bF$buf3\ _576_ _577_ vdd gnd NAND2X1
X_1675_ \step1.myadd.x5.i0_bF$buf2\ _578_ vdd gnd INVX1
X_1676_ \step5.myadd.cin_bF$buf0\ _578_ _579_ vdd gnd NAND2X1
X_1677_ _577_ _579_ \step5.myadd.fa6.i1\ vdd gnd NAND2X1
X_1678_ \step5.myadd.cin_bF$buf4\ _580_ vdd gnd INVX1
X_1679_ \step1.myadd.x6.i0_bF$buf3\ _580_ _581_ vdd gnd NAND2X1
X_1680_ \step1.myadd.x6.i0_bF$buf2\ _582_ vdd gnd INVX1
X_1681_ \step5.myadd.cin_bF$buf3\ _582_ _583_ vdd gnd NAND2X1
X_1682_ _581_ _583_ \step5.myadd.fa7.i1\ vdd gnd NAND2X1
X_1683_ \step5.myadd.cin_bF$buf2\ _584_ vdd gnd INVX1
X_1684_ \step1.myadd.x7.i0_bF$buf3\ _584_ _585_ vdd gnd NAND2X1
X_1685_ \step1.myadd.x7.i0_bF$buf2\ _586_ vdd gnd INVX1
X_1686_ \step5.myadd.cin_bF$buf1\ _586_ _587_ vdd gnd NAND2X1
X_1687_ _585_ _587_ \step5.myadd.fa8.i1\ vdd gnd NAND2X1
X_1688_ \step5.myadd.cin_bF$buf0\ \step6.myadd.cin_bF$buf4\ _588_ vdd gnd OR2X2
X_1689_ \step5.myadd.cin_bF$buf4\ \step6.myadd.cin_bF$buf3\ _589_ vdd gnd NAND2X1
X_1690_ \step6.myadd.fa2.sum\ _589_ _588_ _590_ vdd gnd NAND3X1
X_1691_ \step5.myadd.cin_bF$buf3\ \step6.myadd.cin_bF$buf2\ _591_ vdd gnd NOR2X1
X_1692_ \step5.myadd.cin_bF$buf2\ \step6.myadd.cin_bF$buf1\ _592_ vdd gnd AND2X2
X_1693_ _591_ _592_ \step6.myadd.fa2.i0\ _593_ vdd gnd OAI21X1
X_1694_ _593_ _590_ \step7.myadd.fa1.i0\ vdd gnd NAND2X1
X_1695_ \step6.myadd.fa3.sum\ _589_ _588_ _594_ vdd gnd NAND3X1
X_1696_ _591_ _592_ \step6.myadd.fa3.i0\ _595_ vdd gnd OAI21X1
X_1697_ _595_ _594_ \step7.myadd.fa2.i0\ vdd gnd NAND2X1
X_1698_ \step6.myadd.fa4.sum\ _589_ _588_ _596_ vdd gnd NAND3X1
X_1699_ _591_ _592_ \step6.myadd.fa4.i0\ _597_ vdd gnd OAI21X1
X_1700_ _597_ _596_ \step7.myadd.fa3.i0\ vdd gnd NAND2X1
X_1701_ \step6.myadd.fa5.sum\ _589_ _588_ _598_ vdd gnd NAND3X1
X_1702_ _591_ _592_ \step6.myadd.fa5.i0\ _599_ vdd gnd OAI21X1
X_1703_ _599_ _598_ \step7.myadd.fa4.i0\ vdd gnd NAND2X1
X_1704_ \step6.myadd.fa6.sum\ _589_ _588_ _600_ vdd gnd NAND3X1
X_1705_ _591_ _592_ \step6.myadd.fa6.i0\ _601_ vdd gnd OAI21X1
X_1706_ _601_ _600_ \step7.myadd.fa5.i0\ vdd gnd NAND2X1
X_1707_ \step6.myadd.fa7.sum\ _589_ _588_ _602_ vdd gnd NAND3X1
X_1708_ _591_ _592_ \step6.myadd.fa7.i0\ _603_ vdd gnd OAI21X1
X_1709_ _603_ _602_ \step7.myadd.fa6.i0\ vdd gnd NAND2X1
X_1710_ \step6.myadd.fa8.sum\ _589_ _588_ _604_ vdd gnd NAND3X1
X_1711_ _591_ _592_ \step6.myadd.fa7.i0\ _605_ vdd gnd OAI21X1
X_1712_ _605_ _604_ \step7.myadd.fa7.i0\ vdd gnd NAND2X1
X_1713_ \step6.myadd.fa1.sum\ _589_ _588_ _606_ vdd gnd NAND3X1
X_1714_ _591_ _592_ \step6.myadd.fa1.i0\ _607_ vdd gnd OAI21X1
X_1715_ _607_ _606_ \Q[5]\[7] vdd gnd NAND2X1
X_1716_ \step6.myadd.fa1.i1\ \step6.myadd.cin_bF$buf0\ _611_ vdd gnd AND2X2
X_1717_ \step6.myadd.fa1.i1\ \step6.myadd.cin_bF$buf4\ _612_ vdd gnd NOR2X1
X_1718_ _612_ _611_ \step6.myadd.fa1.i0\ _613_ vdd gnd OAI21X1
X_1719_ \step6.myadd.fa1.i0\ _614_ vdd gnd INVX1
X_1720_ \step6.myadd.fa1.i1\ \step6.myadd.cin_bF$buf3\ _608_ vdd gnd NAND2X1
X_1721_ \step6.myadd.fa1.i1\ \step6.myadd.cin_bF$buf2\ _609_ vdd gnd OR2X2
X_1722_ _614_ _608_ _609_ _610_ vdd gnd NAND3X1
X_1723_ _613_ _610_ \step6.myadd.fa1.sum\ vdd gnd NAND2X1
X_1724_ _614_ _608_ _612_ \step6.myadd.fa1.cout\ vdd gnd AOI21X1
X_1725_ \step6.myadd.fa2.i1\ \step6.myadd.fa1.cout\ _618_ vdd gnd AND2X2
X_1726_ \step6.myadd.fa2.i1\ \step6.myadd.fa1.cout\ _619_ vdd gnd NOR2X1
X_1727_ _619_ _618_ \step6.myadd.fa2.i0\ _620_ vdd gnd OAI21X1
X_1728_ \step6.myadd.fa2.i0\ _621_ vdd gnd INVX1
X_1729_ \step6.myadd.fa2.i1\ \step6.myadd.fa1.cout\ _615_ vdd gnd NAND2X1
X_1730_ \step6.myadd.fa2.i1\ \step6.myadd.fa1.cout\ _616_ vdd gnd OR2X2
X_1731_ _621_ _615_ _616_ _617_ vdd gnd NAND3X1
X_1732_ _620_ _617_ \step6.myadd.fa2.sum\ vdd gnd NAND2X1
X_1733_ _621_ _615_ _619_ \step6.myadd.fa2.cout\ vdd gnd AOI21X1
X_1734_ \step6.myadd.fa3.i1\ \step6.myadd.fa2.cout\ _625_ vdd gnd AND2X2
X_1735_ \step6.myadd.fa3.i1\ \step6.myadd.fa2.cout\ _626_ vdd gnd NOR2X1
X_1736_ _626_ _625_ \step6.myadd.fa3.i0\ _627_ vdd gnd OAI21X1
X_1737_ \step6.myadd.fa3.i0\ _628_ vdd gnd INVX1
X_1738_ \step6.myadd.fa3.i1\ \step6.myadd.fa2.cout\ _622_ vdd gnd NAND2X1
X_1739_ \step6.myadd.fa3.i1\ \step6.myadd.fa2.cout\ _623_ vdd gnd OR2X2
X_1740_ _628_ _622_ _623_ _624_ vdd gnd NAND3X1
X_1741_ _627_ _624_ \step6.myadd.fa3.sum\ vdd gnd NAND2X1
X_1742_ _628_ _622_ _626_ \step6.myadd.fa3.cout\ vdd gnd AOI21X1
X_1743_ \step6.myadd.fa4.i1\ \step6.myadd.fa3.cout\ _632_ vdd gnd AND2X2
X_1744_ \step6.myadd.fa4.i1\ \step6.myadd.fa3.cout\ _633_ vdd gnd NOR2X1
X_1745_ _633_ _632_ \step6.myadd.fa4.i0\ _634_ vdd gnd OAI21X1
X_1746_ \step6.myadd.fa4.i0\ _635_ vdd gnd INVX1
X_1747_ \step6.myadd.fa4.i1\ \step6.myadd.fa3.cout\ _629_ vdd gnd NAND2X1
X_1748_ \step6.myadd.fa4.i1\ \step6.myadd.fa3.cout\ _630_ vdd gnd OR2X2
X_1749_ _635_ _629_ _630_ _631_ vdd gnd NAND3X1
X_1750_ _634_ _631_ \step6.myadd.fa4.sum\ vdd gnd NAND2X1
X_1751_ _635_ _629_ _633_ \step6.myadd.fa4.cout\ vdd gnd AOI21X1
X_1752_ \step6.myadd.fa5.i1\ \step6.myadd.fa4.cout\ _639_ vdd gnd AND2X2
X_1753_ \step6.myadd.fa5.i1\ \step6.myadd.fa4.cout\ _640_ vdd gnd NOR2X1
X_1754_ _640_ _639_ \step6.myadd.fa5.i0\ _641_ vdd gnd OAI21X1
X_1755_ \step6.myadd.fa5.i0\ _642_ vdd gnd INVX1
X_1756_ \step6.myadd.fa5.i1\ \step6.myadd.fa4.cout\ _636_ vdd gnd NAND2X1
X_1757_ \step6.myadd.fa5.i1\ \step6.myadd.fa4.cout\ _637_ vdd gnd OR2X2
X_1758_ _642_ _636_ _637_ _638_ vdd gnd NAND3X1
X_1759_ _641_ _638_ \step6.myadd.fa5.sum\ vdd gnd NAND2X1
X_1760_ _642_ _636_ _640_ \step6.myadd.fa5.cout\ vdd gnd AOI21X1
X_1761_ \step6.myadd.fa6.i1\ \step6.myadd.fa5.cout\ _646_ vdd gnd AND2X2
X_1762_ \step6.myadd.fa6.i1\ \step6.myadd.fa5.cout\ _647_ vdd gnd NOR2X1
X_1763_ _647_ _646_ \step6.myadd.fa6.i0\ _648_ vdd gnd OAI21X1
X_1764_ \step6.myadd.fa6.i0\ _649_ vdd gnd INVX1
X_1765_ \step6.myadd.fa6.i1\ \step6.myadd.fa5.cout\ _643_ vdd gnd NAND2X1
X_1766_ \step6.myadd.fa6.i1\ \step6.myadd.fa5.cout\ _644_ vdd gnd OR2X2
X_1767_ _649_ _643_ _644_ _645_ vdd gnd NAND3X1
X_1768_ _648_ _645_ \step6.myadd.fa6.sum\ vdd gnd NAND2X1
X_1769_ _649_ _643_ _647_ \step6.myadd.fa6.cout\ vdd gnd AOI21X1
X_1770_ \step6.myadd.fa7.i1\ \step6.myadd.fa6.cout\ _653_ vdd gnd AND2X2
X_1771_ \step6.myadd.fa7.i1\ \step6.myadd.fa6.cout\ _654_ vdd gnd NOR2X1
X_1772_ _654_ _653_ \step6.myadd.fa7.i0\ _655_ vdd gnd OAI21X1
X_1773_ \step6.myadd.fa7.i0\ _656_ vdd gnd INVX1
X_1774_ \step6.myadd.fa7.i1\ \step6.myadd.fa6.cout\ _650_ vdd gnd NAND2X1
X_1775_ \step6.myadd.fa7.i1\ \step6.myadd.fa6.cout\ _651_ vdd gnd OR2X2
X_1776_ _656_ _650_ _651_ _652_ vdd gnd NAND3X1
X_1777_ _655_ _652_ \step6.myadd.fa7.sum\ vdd gnd NAND2X1
X_1778_ _656_ _650_ _654_ \step6.myadd.fa7.cout\ vdd gnd AOI21X1
X_1779_ \step6.myadd.fa8.i1\ \step6.myadd.fa7.cout\ _660_ vdd gnd AND2X2
X_1780_ \step6.myadd.fa8.i1\ \step6.myadd.fa7.cout\ _661_ vdd gnd NOR2X1
X_1781_ _661_ _660_ \step6.myadd.fa7.i0\ _662_ vdd gnd OAI21X1
X_1782_ \step6.myadd.fa7.i0\ _663_ vdd gnd INVX1
X_1783_ \step6.myadd.fa8.i1\ \step6.myadd.fa7.cout\ _657_ vdd gnd NAND2X1
X_1784_ \step6.myadd.fa8.i1\ \step6.myadd.fa7.cout\ _658_ vdd gnd OR2X2
X_1785_ _663_ _657_ _658_ _659_ vdd gnd NAND3X1
X_1786_ _662_ _659_ \step6.myadd.fa8.sum\ vdd gnd NAND2X1
X_1787_ \step6.myadd.cin_bF$buf1\ _664_ vdd gnd INVX1
X_1788_ \step1.myadd.x0.i0_bF$buf1\ _664_ _665_ vdd gnd NAND2X1
X_1789_ \step1.myadd.x0.i0_bF$buf0\ _666_ vdd gnd INVX1
X_1790_ \step6.myadd.cin_bF$buf0\ _666_ _667_ vdd gnd NAND2X1
X_1791_ _665_ _667_ \step6.myadd.fa1.i1\ vdd gnd NAND2X1
X_1792_ \step6.myadd.cin_bF$buf4\ _668_ vdd gnd INVX1
X_1793_ \step1.myadd.x1.i0_bF$buf1\ _668_ _669_ vdd gnd NAND2X1
X_1794_ \step1.myadd.x1.i0_bF$buf0\ _670_ vdd gnd INVX1
X_1795_ \step6.myadd.cin_bF$buf3\ _670_ _671_ vdd gnd NAND2X1
X_1796_ _669_ _671_ \step6.myadd.fa2.i1\ vdd gnd NAND2X1
X_1797_ \step6.myadd.cin_bF$buf2\ _672_ vdd gnd INVX1
X_1798_ \step1.myadd.x2.i0_bF$buf1\ _672_ _673_ vdd gnd NAND2X1
X_1799_ \step1.myadd.x2.i0_bF$buf0\ _674_ vdd gnd INVX1
X_1800_ \step6.myadd.cin_bF$buf1\ _674_ _675_ vdd gnd NAND2X1
X_1801_ _673_ _675_ \step6.myadd.fa3.i1\ vdd gnd NAND2X1
X_1802_ \step6.myadd.cin_bF$buf0\ _676_ vdd gnd INVX1
X_1803_ \step1.myadd.x3.i0_bF$buf1\ _676_ _677_ vdd gnd NAND2X1
X_1804_ \step1.myadd.x3.i0_bF$buf0\ _678_ vdd gnd INVX1
X_1805_ \step6.myadd.cin_bF$buf4\ _678_ _679_ vdd gnd NAND2X1
X_1806_ _677_ _679_ \step6.myadd.fa4.i1\ vdd gnd NAND2X1
X_1807_ \step6.myadd.cin_bF$buf3\ _680_ vdd gnd INVX1
X_1808_ \step1.myadd.x4.i0_bF$buf1\ _680_ _681_ vdd gnd NAND2X1
X_1809_ \step1.myadd.x4.i0_bF$buf0\ _682_ vdd gnd INVX1
X_1810_ \step6.myadd.cin_bF$buf2\ _682_ _683_ vdd gnd NAND2X1
X_1811_ _681_ _683_ \step6.myadd.fa5.i1\ vdd gnd NAND2X1
X_1812_ \step6.myadd.cin_bF$buf1\ _684_ vdd gnd INVX1
X_1813_ \step1.myadd.x5.i0_bF$buf1\ _684_ _685_ vdd gnd NAND2X1
X_1814_ \step1.myadd.x5.i0_bF$buf0\ _686_ vdd gnd INVX1
X_1815_ \step6.myadd.cin_bF$buf0\ _686_ _687_ vdd gnd NAND2X1
X_1816_ _685_ _687_ \step6.myadd.fa6.i1\ vdd gnd NAND2X1
X_1817_ \step6.myadd.cin_bF$buf4\ _688_ vdd gnd INVX1
X_1818_ \step1.myadd.x6.i0_bF$buf1\ _688_ _689_ vdd gnd NAND2X1
X_1819_ \step1.myadd.x6.i0_bF$buf0\ _690_ vdd gnd INVX1
X_1820_ \step6.myadd.cin_bF$buf3\ _690_ _691_ vdd gnd NAND2X1
X_1821_ _689_ _691_ \step6.myadd.fa7.i1\ vdd gnd NAND2X1
X_1822_ \step6.myadd.cin_bF$buf2\ _692_ vdd gnd INVX1
X_1823_ \step1.myadd.x7.i0_bF$buf1\ _692_ _693_ vdd gnd NAND2X1
X_1824_ \step1.myadd.x7.i0_bF$buf0\ _694_ vdd gnd INVX1
X_1825_ \step6.myadd.cin_bF$buf1\ _694_ _695_ vdd gnd NAND2X1
X_1826_ _693_ _695_ \step6.myadd.fa8.i1\ vdd gnd NAND2X1
X_1827_ \step6.myadd.cin_bF$buf0\ \step7.myadd.cin_bF$buf4\ _696_ vdd gnd OR2X2
X_1828_ \step6.myadd.cin_bF$buf4\ \step7.myadd.cin_bF$buf3\ _697_ vdd gnd NAND2X1
X_1829_ \step7.myadd.fa2.sum\ _697_ _696_ _698_ vdd gnd NAND3X1
X_1830_ \step6.myadd.cin_bF$buf3\ \step7.myadd.cin_bF$buf2\ _699_ vdd gnd NOR2X1
X_1831_ \step6.myadd.cin_bF$buf2\ \step7.myadd.cin_bF$buf1\ _700_ vdd gnd AND2X2
X_1832_ _699_ _700_ \step7.myadd.fa2.i0\ _701_ vdd gnd OAI21X1
X_1833_ _701_ _698_ \step8.myadd.fa1.i0\ vdd gnd NAND2X1
X_1834_ \step7.myadd.fa3.sum\ _697_ _696_ _702_ vdd gnd NAND3X1
X_1835_ _699_ _700_ \step7.myadd.fa3.i0\ _703_ vdd gnd OAI21X1
X_1836_ _703_ _702_ \step8.myadd.fa2.i0\ vdd gnd NAND2X1
X_1837_ \step7.myadd.fa4.sum\ _697_ _696_ _704_ vdd gnd NAND3X1
X_1838_ _699_ _700_ \step7.myadd.fa4.i0\ _705_ vdd gnd OAI21X1
X_1839_ _705_ _704_ \step8.myadd.fa3.i0\ vdd gnd NAND2X1
X_1840_ \step7.myadd.fa5.sum\ _697_ _696_ _706_ vdd gnd NAND3X1
X_1841_ _699_ _700_ \step7.myadd.fa5.i0\ _707_ vdd gnd OAI21X1
X_1842_ _707_ _706_ \step8.myadd.fa4.i0\ vdd gnd NAND2X1
X_1843_ \step7.myadd.fa6.sum\ _697_ _696_ _708_ vdd gnd NAND3X1
X_1844_ _699_ _700_ \step7.myadd.fa6.i0\ _709_ vdd gnd OAI21X1
X_1845_ _709_ _708_ \step8.myadd.fa5.i0\ vdd gnd NAND2X1
X_1846_ \step7.myadd.fa7.sum\ _697_ _696_ _710_ vdd gnd NAND3X1
X_1847_ _699_ _700_ \step7.myadd.fa7.i0\ _711_ vdd gnd OAI21X1
X_1848_ _711_ _710_ \step8.myadd.fa6.i0\ vdd gnd NAND2X1
X_1849_ \step7.myadd.fa8.sum\ _697_ _696_ _712_ vdd gnd NAND3X1
X_1850_ _699_ _700_ \step7.myadd.fa7.i0\ _713_ vdd gnd OAI21X1
X_1851_ _713_ _712_ \step8.myadd.fa7.i0\ vdd gnd NAND2X1
X_1852_ \step7.myadd.fa1.sum\ _697_ _696_ _714_ vdd gnd NAND3X1
X_1853_ _699_ _700_ \step7.myadd.fa1.i0\ _715_ vdd gnd OAI21X1
X_1854_ _715_ _714_ \Q[6]\[7] vdd gnd NAND2X1
X_1855_ \step7.myadd.fa1.i1\ \step7.myadd.cin_bF$buf0\ _719_ vdd gnd AND2X2
X_1856_ \step7.myadd.fa1.i1\ \step7.myadd.cin_bF$buf4\ _720_ vdd gnd NOR2X1
X_1857_ _720_ _719_ \step7.myadd.fa1.i0\ _721_ vdd gnd OAI21X1
X_1858_ \step7.myadd.fa1.i0\ _722_ vdd gnd INVX1
X_1859_ \step7.myadd.fa1.i1\ \step7.myadd.cin_bF$buf3\ _716_ vdd gnd NAND2X1
X_1860_ \step7.myadd.fa1.i1\ \step7.myadd.cin_bF$buf2\ _717_ vdd gnd OR2X2
X_1861_ _722_ _716_ _717_ _718_ vdd gnd NAND3X1
X_1862_ _721_ _718_ \step7.myadd.fa1.sum\ vdd gnd NAND2X1
X_1863_ _722_ _716_ _720_ \step7.myadd.fa1.cout\ vdd gnd AOI21X1
X_1864_ \step7.myadd.fa2.i1\ \step7.myadd.fa1.cout\ _726_ vdd gnd AND2X2
X_1865_ \step7.myadd.fa2.i1\ \step7.myadd.fa1.cout\ _727_ vdd gnd NOR2X1
X_1866_ _727_ _726_ \step7.myadd.fa2.i0\ _728_ vdd gnd OAI21X1
X_1867_ \step7.myadd.fa2.i0\ _729_ vdd gnd INVX1
X_1868_ \step7.myadd.fa2.i1\ \step7.myadd.fa1.cout\ _723_ vdd gnd NAND2X1
X_1869_ \step7.myadd.fa2.i1\ \step7.myadd.fa1.cout\ _724_ vdd gnd OR2X2
X_1870_ _729_ _723_ _724_ _725_ vdd gnd NAND3X1
X_1871_ _728_ _725_ \step7.myadd.fa2.sum\ vdd gnd NAND2X1
X_1872_ _729_ _723_ _727_ \step7.myadd.fa2.cout\ vdd gnd AOI21X1
X_1873_ \step7.myadd.fa3.i1\ \step7.myadd.fa2.cout\ _733_ vdd gnd AND2X2
X_1874_ \step7.myadd.fa3.i1\ \step7.myadd.fa2.cout\ _734_ vdd gnd NOR2X1
X_1875_ _734_ _733_ \step7.myadd.fa3.i0\ _735_ vdd gnd OAI21X1
X_1876_ \step7.myadd.fa3.i0\ _736_ vdd gnd INVX1
X_1877_ \step7.myadd.fa3.i1\ \step7.myadd.fa2.cout\ _730_ vdd gnd NAND2X1
X_1878_ \step7.myadd.fa3.i1\ \step7.myadd.fa2.cout\ _731_ vdd gnd OR2X2
X_1879_ _736_ _730_ _731_ _732_ vdd gnd NAND3X1
X_1880_ _735_ _732_ \step7.myadd.fa3.sum\ vdd gnd NAND2X1
X_1881_ _736_ _730_ _734_ \step7.myadd.fa3.cout\ vdd gnd AOI21X1
X_1882_ \step7.myadd.fa4.i1\ \step7.myadd.fa3.cout\ _740_ vdd gnd AND2X2
X_1883_ \step7.myadd.fa4.i1\ \step7.myadd.fa3.cout\ _741_ vdd gnd NOR2X1
X_1884_ _741_ _740_ \step7.myadd.fa4.i0\ _742_ vdd gnd OAI21X1
X_1885_ \step7.myadd.fa4.i0\ _743_ vdd gnd INVX1
X_1886_ \step7.myadd.fa4.i1\ \step7.myadd.fa3.cout\ _737_ vdd gnd NAND2X1
X_1887_ \step7.myadd.fa4.i1\ \step7.myadd.fa3.cout\ _738_ vdd gnd OR2X2
X_1888_ _743_ _737_ _738_ _739_ vdd gnd NAND3X1
X_1889_ _742_ _739_ \step7.myadd.fa4.sum\ vdd gnd NAND2X1
X_1890_ _743_ _737_ _741_ \step7.myadd.fa4.cout\ vdd gnd AOI21X1
X_1891_ \step7.myadd.fa5.i1\ \step7.myadd.fa4.cout\ _747_ vdd gnd AND2X2
X_1892_ \step7.myadd.fa5.i1\ \step7.myadd.fa4.cout\ _748_ vdd gnd NOR2X1
X_1893_ _748_ _747_ \step7.myadd.fa5.i0\ _749_ vdd gnd OAI21X1
X_1894_ \step7.myadd.fa5.i0\ _750_ vdd gnd INVX1
X_1895_ \step7.myadd.fa5.i1\ \step7.myadd.fa4.cout\ _744_ vdd gnd NAND2X1
X_1896_ \step7.myadd.fa5.i1\ \step7.myadd.fa4.cout\ _745_ vdd gnd OR2X2
X_1897_ _750_ _744_ _745_ _746_ vdd gnd NAND3X1
X_1898_ _749_ _746_ \step7.myadd.fa5.sum\ vdd gnd NAND2X1
X_1899_ _750_ _744_ _748_ \step7.myadd.fa5.cout\ vdd gnd AOI21X1
X_1900_ \step7.myadd.fa6.i1\ \step7.myadd.fa5.cout\ _754_ vdd gnd AND2X2
X_1901_ \step7.myadd.fa6.i1\ \step7.myadd.fa5.cout\ _755_ vdd gnd NOR2X1
X_1902_ _755_ _754_ \step7.myadd.fa6.i0\ _756_ vdd gnd OAI21X1
X_1903_ \step7.myadd.fa6.i0\ _757_ vdd gnd INVX1
X_1904_ \step7.myadd.fa6.i1\ \step7.myadd.fa5.cout\ _751_ vdd gnd NAND2X1
X_1905_ \step7.myadd.fa6.i1\ \step7.myadd.fa5.cout\ _752_ vdd gnd OR2X2
X_1906_ _757_ _751_ _752_ _753_ vdd gnd NAND3X1
X_1907_ _756_ _753_ \step7.myadd.fa6.sum\ vdd gnd NAND2X1
X_1908_ _757_ _751_ _755_ \step7.myadd.fa6.cout\ vdd gnd AOI21X1
X_1909_ \step7.myadd.fa7.i1\ \step7.myadd.fa6.cout\ _761_ vdd gnd AND2X2
X_1910_ \step7.myadd.fa7.i1\ \step7.myadd.fa6.cout\ _762_ vdd gnd NOR2X1
X_1911_ _762_ _761_ \step7.myadd.fa7.i0\ _763_ vdd gnd OAI21X1
X_1912_ \step7.myadd.fa7.i0\ _764_ vdd gnd INVX1
X_1913_ \step7.myadd.fa7.i1\ \step7.myadd.fa6.cout\ _758_ vdd gnd NAND2X1
X_1914_ \step7.myadd.fa7.i1\ \step7.myadd.fa6.cout\ _759_ vdd gnd OR2X2
X_1915_ _764_ _758_ _759_ _760_ vdd gnd NAND3X1
X_1916_ _763_ _760_ \step7.myadd.fa7.sum\ vdd gnd NAND2X1
X_1917_ _764_ _758_ _762_ \step7.myadd.fa7.cout\ vdd gnd AOI21X1
X_1918_ \step7.myadd.fa8.i1\ \step7.myadd.fa7.cout\ _768_ vdd gnd AND2X2
X_1919_ \step7.myadd.fa8.i1\ \step7.myadd.fa7.cout\ _769_ vdd gnd NOR2X1
X_1920_ _769_ _768_ \step7.myadd.fa7.i0\ _770_ vdd gnd OAI21X1
X_1921_ \step7.myadd.fa7.i0\ _771_ vdd gnd INVX1
X_1922_ \step7.myadd.fa8.i1\ \step7.myadd.fa7.cout\ _765_ vdd gnd NAND2X1
X_1923_ \step7.myadd.fa8.i1\ \step7.myadd.fa7.cout\ _766_ vdd gnd OR2X2
X_1924_ _771_ _765_ _766_ _767_ vdd gnd NAND3X1
X_1925_ _770_ _767_ \step7.myadd.fa8.sum\ vdd gnd NAND2X1
X_1926_ \step7.myadd.cin_bF$buf1\ _772_ vdd gnd INVX1
X_1927_ \step1.myadd.x0.i0_bF$buf3\ _772_ _773_ vdd gnd NAND2X1
X_1928_ \step1.myadd.x0.i0_bF$buf2\ _774_ vdd gnd INVX1
X_1929_ \step7.myadd.cin_bF$buf0\ _774_ _775_ vdd gnd NAND2X1
X_1930_ _773_ _775_ \step7.myadd.fa1.i1\ vdd gnd NAND2X1
X_1931_ \step7.myadd.cin_bF$buf4\ _776_ vdd gnd INVX1
X_1932_ \step1.myadd.x1.i0_bF$buf3\ _776_ _777_ vdd gnd NAND2X1
X_1933_ \step1.myadd.x1.i0_bF$buf2\ _778_ vdd gnd INVX1
X_1934_ \step7.myadd.cin_bF$buf3\ _778_ _779_ vdd gnd NAND2X1
X_1935_ _777_ _779_ \step7.myadd.fa2.i1\ vdd gnd NAND2X1
X_1936_ \step7.myadd.cin_bF$buf2\ _780_ vdd gnd INVX1
X_1937_ \step1.myadd.x2.i0_bF$buf3\ _780_ _781_ vdd gnd NAND2X1
X_1938_ \step1.myadd.x2.i0_bF$buf2\ _782_ vdd gnd INVX1
X_1939_ \step7.myadd.cin_bF$buf1\ _782_ _783_ vdd gnd NAND2X1
X_1940_ _781_ _783_ \step7.myadd.fa3.i1\ vdd gnd NAND2X1
X_1941_ \step7.myadd.cin_bF$buf0\ _784_ vdd gnd INVX1
X_1942_ \step1.myadd.x3.i0_bF$buf3\ _784_ _785_ vdd gnd NAND2X1
X_1943_ \step1.myadd.x3.i0_bF$buf2\ _786_ vdd gnd INVX1
X_1944_ \step7.myadd.cin_bF$buf4\ _786_ _787_ vdd gnd NAND2X1
X_1945_ _785_ _787_ \step7.myadd.fa4.i1\ vdd gnd NAND2X1
X_1946_ \step7.myadd.cin_bF$buf3\ _788_ vdd gnd INVX1
X_1947_ \step1.myadd.x4.i0_bF$buf3\ _788_ _789_ vdd gnd NAND2X1
X_1948_ \step1.myadd.x4.i0_bF$buf2\ _790_ vdd gnd INVX1
X_1949_ \step7.myadd.cin_bF$buf2\ _790_ _791_ vdd gnd NAND2X1
X_1950_ _789_ _791_ \step7.myadd.fa5.i1\ vdd gnd NAND2X1
X_1951_ \step7.myadd.cin_bF$buf1\ _792_ vdd gnd INVX1
X_1952_ \step1.myadd.x5.i0_bF$buf3\ _792_ _793_ vdd gnd NAND2X1
X_1953_ \step1.myadd.x5.i0_bF$buf2\ _794_ vdd gnd INVX1
X_1954_ \step7.myadd.cin_bF$buf0\ _794_ _795_ vdd gnd NAND2X1
X_1955_ _793_ _795_ \step7.myadd.fa6.i1\ vdd gnd NAND2X1
X_1956_ \step7.myadd.cin_bF$buf4\ _796_ vdd gnd INVX1
X_1957_ \step1.myadd.x6.i0_bF$buf3\ _796_ _797_ vdd gnd NAND2X1
X_1958_ \step1.myadd.x6.i0_bF$buf2\ _798_ vdd gnd INVX1
X_1959_ \step7.myadd.cin_bF$buf3\ _798_ _799_ vdd gnd NAND2X1
X_1960_ _797_ _799_ \step7.myadd.fa7.i1\ vdd gnd NAND2X1
X_1961_ \step7.myadd.cin_bF$buf2\ _800_ vdd gnd INVX1
X_1962_ \step1.myadd.x7.i0_bF$buf3\ _800_ _801_ vdd gnd NAND2X1
X_1963_ \step1.myadd.x7.i0_bF$buf2\ _802_ vdd gnd INVX1
X_1964_ \step7.myadd.cin_bF$buf1\ _802_ _803_ vdd gnd NAND2X1
X_1965_ _801_ _803_ \step7.myadd.fa8.i1\ vdd gnd NAND2X1
X_1966_ \step7.myadd.cin_bF$buf0\ qout_bF$buf4 _804_ vdd gnd OR2X2
X_1967_ \step7.myadd.cin_bF$buf4\ qout_bF$buf3 _805_ vdd gnd NAND2X1
X_1968_ \step8.myadd.fa2.sum\ _805_ _804_ _806_ vdd gnd NAND3X1
X_1969_ \step7.myadd.cin_bF$buf3\ qout_bF$buf2 _807_ vdd gnd NOR2X1
X_1970_ \step7.myadd.cin_bF$buf2\ qout_bF$buf1 _808_ vdd gnd AND2X2
X_1971_ _807_ _808_ \step8.myadd.fa2.i0\ _809_ vdd gnd OAI21X1
X_1972_ _809_ _806_ _product[8] vdd gnd NAND2X1
X_1973_ \step8.myadd.fa3.sum\ _805_ _804_ _810_ vdd gnd NAND3X1
X_1974_ _807_ _808_ \step8.myadd.fa3.i0\ _811_ vdd gnd OAI21X1
X_1975_ _811_ _810_ _product[9] vdd gnd NAND2X1
X_1976_ \step8.myadd.fa4.sum\ _805_ _804_ _812_ vdd gnd NAND3X1
X_1977_ _807_ _808_ \step8.myadd.fa4.i0\ _813_ vdd gnd OAI21X1
X_1978_ _813_ _812_ _product[10] vdd gnd NAND2X1
X_1979_ \step8.myadd.fa5.sum\ _805_ _804_ _814_ vdd gnd NAND3X1
X_1980_ _807_ _808_ \step8.myadd.fa5.i0\ _815_ vdd gnd OAI21X1
X_1981_ _815_ _814_ _product[11] vdd gnd NAND2X1
X_1982_ \step8.myadd.fa6.sum\ _805_ _804_ _816_ vdd gnd NAND3X1
X_1983_ _807_ _808_ \step8.myadd.fa6.i0\ _817_ vdd gnd OAI21X1
X_1984_ _817_ _816_ _product[12] vdd gnd NAND2X1
X_1985_ \step8.myadd.fa7.sum\ _805_ _804_ _818_ vdd gnd NAND3X1
X_1986_ _807_ _808_ \step8.myadd.fa7.i0\ _819_ vdd gnd OAI21X1
X_1987_ _819_ _818_ _product[13] vdd gnd NAND2X1
X_1988_ \step8.myadd.fa8.sum\ _805_ _804_ _820_ vdd gnd NAND3X1
X_1989_ _807_ _808_ \step8.myadd.fa7.i0\ _821_ vdd gnd OAI21X1
X_1990_ _821_ _820_ _product[15] vdd gnd NAND2X1
X_1991_ \step8.myadd.fa1.sum\ _805_ _804_ _822_ vdd gnd NAND3X1
X_1992_ _807_ _808_ \step8.myadd.fa1.i0\ _823_ vdd gnd OAI21X1
X_1993_ _823_ _822_ _product[7] vdd gnd NAND2X1
X_1994_ \step8.myadd.fa1.i1\ qout_bF$buf0 _827_ vdd gnd AND2X2
X_1995_ \step8.myadd.fa1.i1\ qout_bF$buf4 _828_ vdd gnd NOR2X1
X_1996_ _828_ _827_ \step8.myadd.fa1.i0\ _829_ vdd gnd OAI21X1
X_1997_ \step8.myadd.fa1.i0\ _830_ vdd gnd INVX1
X_1998_ \step8.myadd.fa1.i1\ qout_bF$buf3 _824_ vdd gnd NAND2X1
X_1999_ \step8.myadd.fa1.i1\ qout_bF$buf2 _825_ vdd gnd OR2X2
X_2000_ _830_ _824_ _825_ _826_ vdd gnd NAND3X1
X_2001_ _829_ _826_ \step8.myadd.fa1.sum\ vdd gnd NAND2X1
X_2002_ _830_ _824_ _828_ \step8.myadd.fa1.cout\ vdd gnd AOI21X1
X_2003_ \step8.myadd.fa2.i1\ \step8.myadd.fa1.cout\ _834_ vdd gnd AND2X2
X_2004_ \step8.myadd.fa2.i1\ \step8.myadd.fa1.cout\ _835_ vdd gnd NOR2X1
X_2005_ _835_ _834_ \step8.myadd.fa2.i0\ _836_ vdd gnd OAI21X1
X_2006_ \step8.myadd.fa2.i0\ _837_ vdd gnd INVX1
X_2007_ \step8.myadd.fa2.i1\ \step8.myadd.fa1.cout\ _831_ vdd gnd NAND2X1
X_2008_ \step8.myadd.fa2.i1\ \step8.myadd.fa1.cout\ _832_ vdd gnd OR2X2
X_2009_ _837_ _831_ _832_ _833_ vdd gnd NAND3X1
X_2010_ _836_ _833_ \step8.myadd.fa2.sum\ vdd gnd NAND2X1
X_2011_ _837_ _831_ _835_ \step8.myadd.fa2.cout\ vdd gnd AOI21X1
X_2012_ \step8.myadd.fa3.i1\ \step8.myadd.fa2.cout\ _841_ vdd gnd AND2X2
X_2013_ \step8.myadd.fa3.i1\ \step8.myadd.fa2.cout\ _842_ vdd gnd NOR2X1
X_2014_ _842_ _841_ \step8.myadd.fa3.i0\ _843_ vdd gnd OAI21X1
X_2015_ \step8.myadd.fa3.i0\ _844_ vdd gnd INVX1
X_2016_ \step8.myadd.fa3.i1\ \step8.myadd.fa2.cout\ _838_ vdd gnd NAND2X1
X_2017_ \step8.myadd.fa3.i1\ \step8.myadd.fa2.cout\ _839_ vdd gnd OR2X2
X_2018_ _844_ _838_ _839_ _840_ vdd gnd NAND3X1
X_2019_ _843_ _840_ \step8.myadd.fa3.sum\ vdd gnd NAND2X1
X_2020_ _844_ _838_ _842_ \step8.myadd.fa3.cout\ vdd gnd AOI21X1
X_2021_ \step8.myadd.fa4.i1\ \step8.myadd.fa3.cout\ _848_ vdd gnd AND2X2
X_2022_ \step8.myadd.fa4.i1\ \step8.myadd.fa3.cout\ _849_ vdd gnd NOR2X1
X_2023_ _849_ _848_ \step8.myadd.fa4.i0\ _850_ vdd gnd OAI21X1
X_2024_ \step8.myadd.fa4.i0\ _851_ vdd gnd INVX1
X_2025_ \step8.myadd.fa4.i1\ \step8.myadd.fa3.cout\ _845_ vdd gnd NAND2X1
X_2026_ \step8.myadd.fa4.i1\ \step8.myadd.fa3.cout\ _846_ vdd gnd OR2X2
X_2027_ _851_ _845_ _846_ _847_ vdd gnd NAND3X1
X_2028_ _850_ _847_ \step8.myadd.fa4.sum\ vdd gnd NAND2X1
X_2029_ _851_ _845_ _849_ \step8.myadd.fa4.cout\ vdd gnd AOI21X1
X_2030_ \step8.myadd.fa5.i1\ \step8.myadd.fa4.cout\ _855_ vdd gnd AND2X2
X_2031_ \step8.myadd.fa5.i1\ \step8.myadd.fa4.cout\ _856_ vdd gnd NOR2X1
X_2032_ _856_ _855_ \step8.myadd.fa5.i0\ _857_ vdd gnd OAI21X1
X_2033_ \step8.myadd.fa5.i0\ _858_ vdd gnd INVX1
X_2034_ \step8.myadd.fa5.i1\ \step8.myadd.fa4.cout\ _852_ vdd gnd NAND2X1
X_2035_ \step8.myadd.fa5.i1\ \step8.myadd.fa4.cout\ _853_ vdd gnd OR2X2
X_2036_ _858_ _852_ _853_ _854_ vdd gnd NAND3X1
X_2037_ _857_ _854_ \step8.myadd.fa5.sum\ vdd gnd NAND2X1
X_2038_ _858_ _852_ _856_ \step8.myadd.fa5.cout\ vdd gnd AOI21X1
X_2039_ \step8.myadd.fa6.i1\ \step8.myadd.fa5.cout\ _862_ vdd gnd AND2X2
X_2040_ \step8.myadd.fa6.i1\ \step8.myadd.fa5.cout\ _863_ vdd gnd NOR2X1
X_2041_ _863_ _862_ \step8.myadd.fa6.i0\ _864_ vdd gnd OAI21X1
X_2042_ \step8.myadd.fa6.i0\ _865_ vdd gnd INVX1
X_2043_ \step8.myadd.fa6.i1\ \step8.myadd.fa5.cout\ _859_ vdd gnd NAND2X1
X_2044_ \step8.myadd.fa6.i1\ \step8.myadd.fa5.cout\ _860_ vdd gnd OR2X2
X_2045_ _865_ _859_ _860_ _861_ vdd gnd NAND3X1
X_2046_ _864_ _861_ \step8.myadd.fa6.sum\ vdd gnd NAND2X1
X_2047_ _865_ _859_ _863_ \step8.myadd.fa6.cout\ vdd gnd AOI21X1
X_2048_ \step8.myadd.fa7.i1\ \step8.myadd.fa6.cout\ _869_ vdd gnd AND2X2
X_2049_ \step8.myadd.fa7.i1\ \step8.myadd.fa6.cout\ _870_ vdd gnd NOR2X1
X_2050_ _870_ _869_ \step8.myadd.fa7.i0\ _871_ vdd gnd OAI21X1
X_2051_ \step8.myadd.fa7.i0\ _872_ vdd gnd INVX1
X_2052_ \step8.myadd.fa7.i1\ \step8.myadd.fa6.cout\ _866_ vdd gnd NAND2X1
X_2053_ \step8.myadd.fa7.i1\ \step8.myadd.fa6.cout\ _867_ vdd gnd OR2X2
X_2054_ _872_ _866_ _867_ _868_ vdd gnd NAND3X1
X_2055_ _871_ _868_ \step8.myadd.fa7.sum\ vdd gnd NAND2X1
X_2056_ _872_ _866_ _870_ \step8.myadd.fa7.cout\ vdd gnd AOI21X1
X_2057_ \step8.myadd.fa8.i1\ \step8.myadd.fa7.cout\ _876_ vdd gnd AND2X2
X_2058_ \step8.myadd.fa8.i1\ \step8.myadd.fa7.cout\ _877_ vdd gnd NOR2X1
X_2059_ _877_ _876_ \step8.myadd.fa7.i0\ _878_ vdd gnd OAI21X1
X_2060_ \step8.myadd.fa7.i0\ _879_ vdd gnd INVX1
X_2061_ \step8.myadd.fa8.i1\ \step8.myadd.fa7.cout\ _873_ vdd gnd NAND2X1
X_2062_ \step8.myadd.fa8.i1\ \step8.myadd.fa7.cout\ _874_ vdd gnd OR2X2
X_2063_ _879_ _873_ _874_ _875_ vdd gnd NAND3X1
X_2064_ _878_ _875_ \step8.myadd.fa8.sum\ vdd gnd NAND2X1
X_2065_ qout_bF$buf1 _880_ vdd gnd INVX1
X_2066_ \step1.myadd.x0.i0_bF$buf1\ _880_ _881_ vdd gnd NAND2X1
X_2067_ \step1.myadd.x0.i0_bF$buf0\ _882_ vdd gnd INVX1
X_2068_ qout_bF$buf0 _882_ _883_ vdd gnd NAND2X1
X_2069_ _881_ _883_ \step8.myadd.fa1.i1\ vdd gnd NAND2X1
X_2070_ qout_bF$buf4 _884_ vdd gnd INVX1
X_2071_ \step1.myadd.x1.i0_bF$buf1\ _884_ _885_ vdd gnd NAND2X1
X_2072_ \step1.myadd.x1.i0_bF$buf0\ _886_ vdd gnd INVX1
X_2073_ qout_bF$buf3 _886_ _887_ vdd gnd NAND2X1
X_2074_ _885_ _887_ \step8.myadd.fa2.i1\ vdd gnd NAND2X1
X_2075_ qout_bF$buf2 _888_ vdd gnd INVX1
X_2076_ \step1.myadd.x2.i0_bF$buf1\ _888_ _889_ vdd gnd NAND2X1
X_2077_ \step1.myadd.x2.i0_bF$buf0\ _890_ vdd gnd INVX1
X_2078_ qout_bF$buf1 _890_ _891_ vdd gnd NAND2X1
X_2079_ _889_ _891_ \step8.myadd.fa3.i1\ vdd gnd NAND2X1
X_2080_ qout_bF$buf0 _892_ vdd gnd INVX1
X_2081_ \step1.myadd.x3.i0_bF$buf1\ _892_ _893_ vdd gnd NAND2X1
X_2082_ \step1.myadd.x3.i0_bF$buf0\ _894_ vdd gnd INVX1
X_2083_ qout_bF$buf4 _894_ _895_ vdd gnd NAND2X1
X_2084_ _893_ _895_ \step8.myadd.fa4.i1\ vdd gnd NAND2X1
X_2085_ qout_bF$buf3 _896_ vdd gnd INVX1
X_2086_ \step1.myadd.x4.i0_bF$buf1\ _896_ _897_ vdd gnd NAND2X1
X_2087_ \step1.myadd.x4.i0_bF$buf0\ _898_ vdd gnd INVX1
X_2088_ qout_bF$buf2 _898_ _899_ vdd gnd NAND2X1
X_2089_ _897_ _899_ \step8.myadd.fa5.i1\ vdd gnd NAND2X1
X_2090_ qout_bF$buf1 _900_ vdd gnd INVX1
X_2091_ \step1.myadd.x5.i0_bF$buf1\ _900_ _901_ vdd gnd NAND2X1
X_2092_ \step1.myadd.x5.i0_bF$buf0\ _902_ vdd gnd INVX1
X_2093_ qout_bF$buf0 _902_ _903_ vdd gnd NAND2X1
X_2094_ _901_ _903_ \step8.myadd.fa6.i1\ vdd gnd NAND2X1
X_2095_ qout_bF$buf4 _904_ vdd gnd INVX1
X_2096_ \step1.myadd.x6.i0_bF$buf1\ _904_ _905_ vdd gnd NAND2X1
X_2097_ \step1.myadd.x6.i0_bF$buf0\ _906_ vdd gnd INVX1
X_2098_ qout_bF$buf3 _906_ _907_ vdd gnd NAND2X1
X_2099_ _905_ _907_ \step8.myadd.fa7.i1\ vdd gnd NAND2X1
X_2100_ qout_bF$buf2 _908_ vdd gnd INVX1
X_2101_ \step1.myadd.x7.i0_bF$buf1\ _908_ _909_ vdd gnd NAND2X1
X_2102_ \step1.myadd.x7.i0_bF$buf0\ _910_ vdd gnd INVX1
X_2103_ qout_bF$buf1 _910_ _911_ vdd gnd NAND2X1
X_2104_ _909_ _911_ \step8.myadd.fa8.i1\ vdd gnd NAND2X1
X_2105_ _912_[0] product[0] vdd gnd BUFX2
X_2106_ _912_[1] product[1] vdd gnd BUFX2
X_2107_ _912_[10] product[10] vdd gnd BUFX2
X_2108_ _912_[11] product[11] vdd gnd BUFX2
X_2109_ _912_[12] product[12] vdd gnd BUFX2
X_2110_ _912_[13] product[13] vdd gnd BUFX2
X_2111_ _912_[14] product[14] vdd gnd BUFX2
X_2112_ _912_[15] product[15] vdd gnd BUFX2
X_2113_ _912_[2] product[2] vdd gnd BUFX2
X_2114_ _912_[3] product[3] vdd gnd BUFX2
X_2115_ _912_[4] product[4] vdd gnd BUFX2
X_2116_ _912_[5] product[5] vdd gnd BUFX2
X_2117_ _912_[6] product[6] vdd gnd BUFX2
X_2118_ _912_[7] product[7] vdd gnd BUFX2
X_2119_ _912_[8] product[8] vdd gnd BUFX2
X_2120_ _912_[9] product[9] vdd gnd BUFX2
X_913_ \step1.myadd.cin_bF$buf0\ _16_ vdd gnd INVX1
X_914_ multIn[0] select_bF$buf4 _17_ vdd gnd NAND2X1
X_915_ select_bF$buf3 _16_ _17_ _8_ vdd gnd OAI21X1
X_916_ \step2.myadd.cin_bF$buf1\ _18_ vdd gnd INVX1
X_917_ select_bF$buf2 multIn[1] _19_ vdd gnd NAND2X1
X_918_ select_bF$buf1 _18_ _19_ _9_ vdd gnd OAI21X1
X_919_ \step3.myadd.cin_bF$buf1\ _20_ vdd gnd INVX1
X_920_ select_bF$buf0 multIn[2] _21_ vdd gnd NAND2X1
X_921_ select_bF$buf4 _20_ _21_ _10_ vdd gnd OAI21X1
X_922_ \step4.myadd.cin_bF$buf1\ _22_ vdd gnd INVX1
X_923_ select_bF$buf3 multIn[3] _23_ vdd gnd NAND2X1
X_924_ select_bF$buf2 _22_ _23_ _11_ vdd gnd OAI21X1
X_925_ \step5.myadd.cin_bF$buf1\ _24_ vdd gnd INVX1
X_926_ select_bF$buf1 multIn[4] _25_ vdd gnd NAND2X1
X_927_ select_bF$buf0 _24_ _25_ _12_ vdd gnd OAI21X1
X_928_ \step6.myadd.cin_bF$buf1\ _26_ vdd gnd INVX1
X_929_ select_bF$buf4 multIn[5] _27_ vdd gnd NAND2X1
X_930_ select_bF$buf3 _26_ _27_ _13_ vdd gnd OAI21X1
X_931_ \step7.myadd.cin_bF$buf1\ _28_ vdd gnd INVX1
X_932_ select_bF$buf2 multIn[6] _29_ vdd gnd NAND2X1
X_933_ select_bF$buf1 _28_ _29_ _14_ vdd gnd OAI21X1
X_934_ qout_bF$buf0 _30_ vdd gnd INVX1
X_935_ select_bF$buf0 multIn[7] _31_ vdd gnd NAND2X1
X_936_ select_bF$buf4 _30_ _31_ _15_ vdd gnd OAI21X1
X_937_ multIn[0] _32_ vdd gnd INVX1
X_938_ select_bF$buf3 \step1.myadd.x0.i0_bF$buf3\ _33_ vdd gnd NAND2X1
X_939_ select_bF$buf2 _32_ _33_ _0_ vdd gnd OAI21X1
X_940_ multIn[1] _34_ vdd gnd INVX1
X_941_ select_bF$buf1 \step1.myadd.x1.i0_bF$buf3\ _35_ vdd gnd NAND2X1
X_942_ select_bF$buf0 _34_ _35_ _1_ vdd gnd OAI21X1
X_943_ multIn[2] _36_ vdd gnd INVX1
X_944_ select_bF$buf4 \step1.myadd.x2.i0_bF$buf3\ _37_ vdd gnd NAND2X1
X_945_ select_bF$buf3 _36_ _37_ _2_ vdd gnd OAI21X1
X_946_ multIn[3] _38_ vdd gnd INVX1
X_947_ select_bF$buf2 \step1.myadd.x3.i0_bF$buf3\ _39_ vdd gnd NAND2X1
X_948_ select_bF$buf1 _38_ _39_ _3_ vdd gnd OAI21X1
X_949_ multIn[4] _40_ vdd gnd INVX1
X_950_ select_bF$buf0 \step1.myadd.x4.i0_bF$buf3\ _41_ vdd gnd NAND2X1
X_951_ select_bF$buf4 _40_ _41_ _4_ vdd gnd OAI21X1
X_952_ multIn[5] _42_ vdd gnd INVX1
X_953_ select_bF$buf3 \step1.myadd.x5.i0_bF$buf3\ _43_ vdd gnd NAND2X1
X_954_ select_bF$buf2 _42_ _43_ _5_ vdd gnd OAI21X1
X_955_ multIn[6] _44_ vdd gnd INVX1
X_956_ select_bF$buf1 \step1.myadd.x6.i0_bF$buf3\ _45_ vdd gnd NAND2X1
X_957_ select_bF$buf0 _44_ _45_ _6_ vdd gnd OAI21X1
X_958_ multIn[7] _46_ vdd gnd INVX1
X_959_ select_bF$buf4 \step1.myadd.x7.i0_bF$buf3\ _47_ vdd gnd NAND2X1
X_960_ select_bF$buf3 _46_ _47_ _7_ vdd gnd OAI21X1
X_961_ _0_ clk_bF$buf4 \step1.myadd.x0.i0\ vdd gnd DFFPOSX1
X_962_ _1_ clk_bF$buf3 \step1.myadd.x1.i0\ vdd gnd DFFPOSX1
X_963_ _2_ clk_bF$buf2 \step1.myadd.x2.i0\ vdd gnd DFFPOSX1
X_964_ _3_ clk_bF$buf1 \step1.myadd.x3.i0\ vdd gnd DFFPOSX1
X_965_ _4_ clk_bF$buf0 \step1.myadd.x4.i0\ vdd gnd DFFPOSX1
X_966_ _5_ clk_bF$buf4 \step1.myadd.x5.i0\ vdd gnd DFFPOSX1
X_967_ _6_ clk_bF$buf3 \step1.myadd.x6.i0\ vdd gnd DFFPOSX1
X_968_ _7_ clk_bF$buf2 \step1.myadd.x7.i0\ vdd gnd DFFPOSX1
X_969_ \Q[0]\[7] clk_bF$buf1 _912_[0] vdd gnd DFFPOSX1
X_970_ \Q[1]\[7] clk_bF$buf0 _912_[1] vdd gnd DFFPOSX1
X_971_ \Q[2]\[7] clk_bF$buf4 _912_[2] vdd gnd DFFPOSX1
X_972_ \Q[3]\[7] clk_bF$buf3 _912_[3] vdd gnd DFFPOSX1
X_973_ \Q[4]\[7] clk_bF$buf2 _912_[4] vdd gnd DFFPOSX1
X_974_ \Q[5]\[7] clk_bF$buf1 _912_[5] vdd gnd DFFPOSX1
X_975_ \Q[6]\[7] clk_bF$buf0 _912_[6] vdd gnd DFFPOSX1
X_976_ _product[7] clk_bF$buf4 _912_[7] vdd gnd DFFPOSX1
X_977_ _product[8] clk_bF$buf3 _912_[8] vdd gnd DFFPOSX1
X_978_ _product[9] clk_bF$buf2 _912_[9] vdd gnd DFFPOSX1
X_979_ _product[10] clk_bF$buf1 _912_[10] vdd gnd DFFPOSX1
X_980_ _product[11] clk_bF$buf0 _912_[11] vdd gnd DFFPOSX1
X_981_ _product[12] clk_bF$buf4 _912_[12] vdd gnd DFFPOSX1
X_982_ _product[13] clk_bF$buf3 _912_[13] vdd gnd DFFPOSX1
X_983_ _product[15] clk_bF$buf2 _912_[14] vdd gnd DFFPOSX1
X_984_ _product[15] clk_bF$buf1 _912_[15] vdd gnd DFFPOSX1
X_985_ _8_ clk_bF$buf0 \step1.myadd.cin\ vdd gnd DFFPOSX1
X_986_ _9_ clk_bF$buf4 \step2.myadd.cin\ vdd gnd DFFPOSX1
X_987_ _10_ clk_bF$buf3 \step3.myadd.cin\ vdd gnd DFFPOSX1
X_988_ _11_ clk_bF$buf2 \step4.myadd.cin\ vdd gnd DFFPOSX1
X_989_ _12_ clk_bF$buf1 \step5.myadd.cin\ vdd gnd DFFPOSX1
X_990_ _13_ clk_bF$buf0 \step6.myadd.cin\ vdd gnd DFFPOSX1
X_991_ _14_ clk_bF$buf4 \step7.myadd.cin\ vdd gnd DFFPOSX1
X_992_ _15_ clk_bF$buf3 qout vdd gnd DFFPOSX1
X_993_ gnd \step1.myadd.cin_bF$buf4\ _48_ vdd gnd OR2X2
X_994_ gnd \step1.myadd.cin_bF$buf3\ _49_ vdd gnd NAND2X1
X_995_ \step1.myadd.fa2.sum\ _49_ _48_ _50_ vdd gnd NAND3X1
X_996_ gnd \step1.myadd.cin_bF$buf2\ _51_ vdd gnd NOR2X1
X_997_ gnd \step1.myadd.cin_bF$buf1\ _52_ vdd gnd AND2X2
X_998_ _51_ _52_ gnd _53_ vdd gnd OAI21X1
X_999_ _53_ _50_ \step2.myadd.fa1.i0\ vdd gnd NAND2X1

.ends
.end
