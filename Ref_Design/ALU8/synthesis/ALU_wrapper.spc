*SPICE netlist created from verilog structural netlist module ALU_wrapper by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp
* NGSPICE file created from khu_etri050_stdcells.ext - technology: scmos

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

.subckt AOI22X1 A B C D Y vdd gnd
M1000 vdd A a_6_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1001 gnd C a_57_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=1.8p ps=6.6u
M1002 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1003 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=7.650001p pd=8.55u as=1.8p ps=6.6u
M1004 a_6_146# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1005 a_6_146# C Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1006 a_57_14# D Y gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.650001p ps=8.55u
M1007 Y D a_6_146# vdd pfet w=12u l=0.6u
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

.subckt INVX2 A Y vdd gnd
M1000 Y A vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=25.200003p ps=28.200003u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
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

.subckt OAI22X1 A B C D Y vdd gnd
M1000 Y D a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1002 a_6_14# C Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1003 Y B a_34_146# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1004 a_6_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 vdd C a_64_146# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1006 a_34_146# A vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1007 a_64_146# D Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
.ends

.subckt khu_etri050_stdcells vdd gnd
XCLKBUF3_0 CLKBUF3_0/A CLKBUF3_0/Y vdd gnd CLKBUF3
XAOI22X1_0 AOI22X1_0/A AOI22X1_0/B AOI22X1_0/C AOI22X1_0/D AOI22X1_0/Y vdd gnd AOI22X1
XINVX8_0 INVX8_0/A INVX8_0/Y vdd gnd INVX8
XNOR3X1_0 NOR3X1_0/A NOR3X1_0/B NOR3X1_0/C NOR3X1_0/Y vdd gnd NOR3X1
XCLKBUF1_0 CLKBUF1_0/A CLKBUF1_0/Y vdd gnd CLKBUF1
XMUX2X1_0 MUX2X1_0/A MUX2X1_0/B MUX2X1_0/S MUX2X1_0/Y vdd gnd MUX2X1
XNAND3X1_0 NAND3X1_0/A NAND3X1_0/B NAND3X1_0/C NAND3X1_0/Y vdd gnd NAND3X1
XXOR2X1_0 XOR2X1_0/A XOR2X1_0/B XOR2X1_0/Y vdd gnd XOR2X1
XINVX4_0 INVX4_0/A INVX4_0/Y vdd gnd INVX4
XBUFX4_0 BUFX4_0/A BUFX4_0/Y vdd gnd BUFX4
XOAI21X1_0 OAI21X1_0/A OAI21X1_0/B OAI21X1_0/C OAI21X1_0/Y vdd gnd OAI21X1
XDFFNEGX1_0 DFFNEGX1_0/D DFFNEGX1_0/CLK DFFNEGX1_0/Q vdd gnd DFFNEGX1
XTBUFX2_0 TBUFX2_0/A TBUFX2_0/EN TBUFX2_0/Y vdd gnd TBUFX2
XINVX2_0 INVX2_0/A INVX2_0/Y vdd gnd INVX2
XAOI21X1_0 AOI21X1_0/A AOI21X1_0/B AOI21X1_0/C AOI21X1_0/Y vdd gnd AOI21X1
XBUFX2_0 BUFX2_0/A BUFX2_0/Y vdd gnd BUFX2
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
XINVX1_0 INVX1_0/A INVX1_0/Y vdd gnd INVX1
XTBUFX1_0 TBUFX1_0/A TBUFX1_0/EN TBUFX1_0/Y vdd gnd TBUFX1
XXNOR2X1_0 XNOR2X1_0/A XNOR2X1_0/B XNOR2X1_0/Y vdd gnd XNOR2X1
XAND2X2_0 AND2X2_0/A AND2X2_0/B AND2X2_0/Y vdd gnd AND2X2
XOR2X2_0 OR2X2_0/A OR2X2_0/B OR2X2_0/Y vdd gnd OR2X2
XOAI22X1_0 OAI22X1_0/A OAI22X1_0/B OAI22X1_0/C OAI22X1_0/D OAI22X1_0/Y vdd gnd OAI22X1
.ends

** End of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp

.subckt ALU_wrapper vdd gnd ABCmd_i[0] ABCmd_i[1] ABCmd_i[2] ABCmd_i[3] ABCmd_i[4]
+ ABCmd_i[5] ABCmd_i[6] ABCmd_i[7] ACC_o[0] ACC_o[1] ACC_o[2] ACC_o[3] ACC_o[4]
+ ACC_o[5] ACC_o[6] ACC_o[7] Done_o LoadA_i LoadB_i LoadCmd_i clk
+ reset 

XBUFX2_insert32 ABCmd_i[2] ABCmd_i_2_bF$buf0 vdd gnd BUFX2
XBUFX2_insert31 ABCmd_i[2] ABCmd_i_2_bF$buf1 vdd gnd BUFX2
XBUFX2_insert30 ABCmd_i[2] ABCmd_i_2_bF$buf2 vdd gnd BUFX2
XBUFX2_insert29 ABCmd_i[2] ABCmd_i_2_bF$buf3 vdd gnd BUFX2
XBUFX2_insert28 BI[1] BI_1_bF$buf0 vdd gnd BUFX2
XBUFX2_insert27 BI[1] BI_1_bF$buf1 vdd gnd BUFX2
XBUFX2_insert26 BI[1] BI_1_bF$buf2 vdd gnd BUFX2
XBUFX2_insert25 BI[1] BI_1_bF$buf3 vdd gnd BUFX2
XBUFX2_insert24 BI[4] BI_4_bF$buf0 vdd gnd BUFX2
XBUFX2_insert23 BI[4] BI_4_bF$buf1 vdd gnd BUFX2
XBUFX2_insert22 BI[4] BI_4_bF$buf2 vdd gnd BUFX2
XBUFX2_insert21 BI[4] BI_4_bF$buf3 vdd gnd BUFX2
XBUFX2_insert20 _32_ _32__bF$buf0 vdd gnd BUFX2
XBUFX2_insert19 _32_ _32__bF$buf1 vdd gnd BUFX2
XBUFX2_insert18 _32_ _32__bF$buf2 vdd gnd BUFX2
XBUFX2_insert17 _32_ _32__bF$buf3 vdd gnd BUFX2
XCLKBUF1_insert16 clk clk_bF$buf0 vdd gnd CLKBUF1
XCLKBUF1_insert15 clk clk_bF$buf1 vdd gnd CLKBUF1
XCLKBUF1_insert14 clk clk_bF$buf2 vdd gnd CLKBUF1
XCLKBUF1_insert13 clk clk_bF$buf3 vdd gnd CLKBUF1
XCLKBUF1_insert12 clk clk_bF$buf4 vdd gnd CLKBUF1
XBUFX2_insert11 _723_ _723__bF$buf0 vdd gnd BUFX2
XBUFX2_insert10 _723_ _723__bF$buf1 vdd gnd BUFX2
XBUFX2_insert9 _723_ _723__bF$buf2 vdd gnd BUFX2
XBUFX2_insert8 _723_ _723__bF$buf3 vdd gnd BUFX2
XBUFX2_insert7 BI[0] BI_0_bF$buf0 vdd gnd BUFX2
XBUFX2_insert6 BI[0] BI_0_bF$buf1 vdd gnd BUFX2
XBUFX2_insert5 BI[0] BI_0_bF$buf2 vdd gnd BUFX2
XBUFX2_insert4 BI[0] BI_0_bF$buf3 vdd gnd BUFX2
XBUFX2_insert3 BI[3] BI_3_bF$buf0 vdd gnd BUFX2
XBUFX2_insert2 BI[3] BI_3_bF$buf1 vdd gnd BUFX2
XBUFX2_insert1 BI[3] BI_3_bF$buf2 vdd gnd BUFX2
XBUFX2_insert0 BI[3] BI_3_bF$buf3 vdd gnd BUFX2
X_1000_ BI[2] AI[2] _68_ vdd gnd NAND2X1
X_1001_ _68_ _69_ vdd gnd INVX1
X_1002_ BI_1_bF$buf3 AI[4] _70_ vdd gnd NAND2X1
X_1003_ _63_ _70_ _71_ vdd gnd OR2X2
X_1004_ BI_0_bF$buf3 AI[4] BI_1_bF$buf2 AI[3] _72_ vdd 
+ gnd
+ AOI22X1
X_1005_ _72_ _73_ vdd gnd INVX1
X_1006_ _73_ _69_ _71_ _74_ vdd gnd NAND3X1
X_1007_ _63_ _70_ _75_ vdd gnd NOR2X1
X_1008_ _72_ _75_ _68_ _76_ vdd gnd OAI21X1
X_1009_ _76_ _67_ _74_ _77_ vdd gnd NAND3X1
X_1010_ _59_ _78_ vdd gnd INVX1
X_1011_ BI_4_bF$buf3 AI[1] _79_ vdd gnd NAND2X1
X_1012_ BI_4_bF$buf2 _80_ vdd gnd INVX2
X_1013_ BI_3_bF$buf3 AI[1] _81_ vdd gnd NAND2X1
X_1014_ _57_ _80_ _81_ _82_ vdd gnd OAI21X1
X_1015_ _79_ _78_ _82_ _83_ vdd gnd OAI21X1
X_1016_ _74_ _76_ _67_ _84_ vdd gnd AOI21X1
X_1017_ _83_ _84_ _77_ _85_ vdd gnd OAI21X1
X_1018_ _68_ _72_ _71_ _86_ vdd gnd OAI21X1
X_1019_ BI_0_bF$buf2 AI[5] _87_ vdd gnd AND2X2
X_1020_ BI_1_bF$buf1 AI[4] _87_ _88_ vdd gnd NAND3X1
X_1021_ BI_0_bF$buf1 AI[5] BI_1_bF$buf0 AI[4] _89_ vdd 
+ gnd
+ AOI22X1
X_1022_ _89_ _90_ vdd gnd INVX1
X_1023_ BI[2] AI[3] _91_ vdd gnd NAND2X1
X_1024_ _91_ _92_ vdd gnd INVX1
X_1025_ _90_ _92_ _88_ _93_ vdd gnd NAND3X1
X_1026_ BI_0_bF$buf0 AI[5] _94_ vdd gnd NAND2X1
X_1027_ _70_ _94_ _95_ vdd gnd NOR2X1
X_1028_ _89_ _95_ _91_ _96_ vdd gnd OAI21X1
X_1029_ _93_ _96_ _86_ _97_ vdd gnd NAND3X1
X_1030_ _69_ _73_ _75_ _98_ vdd gnd AOI21X1
X_1031_ _89_ _95_ _92_ _99_ vdd gnd OAI21X1
X_1032_ _90_ _91_ _88_ _100_ vdd gnd NAND3X1
X_1033_ _100_ _99_ _98_ _101_ vdd gnd NAND3X1
X_1034_ AI[0] BI[5] _102_ vdd gnd NAND2X1
X_1035_ _102_ _103_ vdd gnd INVX1
X_1036_ BI_3_bF$buf2 AI[2] _104_ vdd gnd AND2X2
X_1037_ _60_ _104_ _105_ vdd gnd NAND2X1
X_1038_ AI[2] _106_ vdd gnd INVX1
X_1039_ _58_ _106_ _79_ _107_ vdd gnd OAI21X1
X_1040_ _107_ _103_ _105_ _108_ vdd gnd NAND3X1
X_1041_ _58_ _106_ _60_ _109_ vdd gnd OAI21X1
X_1042_ AI[1] _110_ vdd gnd INVX1
X_1043_ _80_ _110_ _104_ _111_ vdd gnd OAI21X1
X_1044_ _102_ _109_ _111_ _112_ vdd gnd NAND3X1
X_1045_ _112_ _108_ _113_ vdd gnd AND2X2
X_1046_ _97_ _101_ _113_ _114_ vdd gnd NAND3X1
X_1047_ _99_ _100_ _98_ _115_ vdd gnd AOI21X1
X_1048_ _96_ _93_ _86_ _116_ vdd gnd AOI21X1
X_1049_ _108_ _112_ _117_ vdd gnd NAND2X1
X_1050_ _115_ _116_ _117_ _118_ vdd gnd OAI21X1
X_1051_ _114_ _118_ _85_ _119_ vdd gnd NAND3X1
X_1052_ _118_ _114_ _85_ _120_ vdd gnd AOI21X1
X_1053_ _61_ _120_ _119_ _121_ vdd gnd OAI21X1
X_1054_ _101_ _113_ _115_ _122_ vdd gnd AOI21X1
X_1055_ _89_ _91_ _88_ _123_ vdd gnd OAI21X1
X_1056_ BI_1_bF$buf3 AI[6] _124_ vdd gnd AND2X2
X_1057_ _87_ _124_ _125_ vdd gnd NAND2X1
X_1058_ BI_1_bF$buf2 _126_ vdd gnd INVX1
X_1059_ AI[5] _127_ vdd gnd INVX2
X_1060_ BI_0_bF$buf3 AI[6] _128_ vdd gnd NAND2X1
X_1061_ _126_ _127_ _128_ _129_ vdd gnd OAI21X1
X_1062_ BI[2] AI[4] _130_ vdd gnd NAND2X1
X_1063_ _130_ _131_ vdd gnd INVX1
X_1064_ _129_ _131_ _125_ _132_ vdd gnd NAND3X1
X_1065_ BI_1_bF$buf1 AI[6] _133_ vdd gnd NAND2X1
X_1066_ _94_ _133_ _134_ vdd gnd NOR2X1
X_1067_ BI_0_bF$buf2 AI[6] BI_1_bF$buf0 AI[5] _135_ vdd 
+ gnd
+ AOI22X1
X_1068_ _135_ _134_ _130_ _136_ vdd gnd OAI21X1
X_1069_ _136_ _132_ _123_ _137_ vdd gnd AOI21X1
X_1070_ _90_ _92_ _95_ _138_ vdd gnd AOI21X1
X_1071_ _135_ _134_ _131_ _139_ vdd gnd OAI21X1
X_1072_ _129_ _130_ _125_ _140_ vdd gnd NAND3X1
X_1073_ _139_ _140_ _138_ _141_ vdd gnd AOI21X1
X_1074_ BI[5] AI[1] _142_ vdd gnd NAND2X1
X_1075_ _142_ _143_ vdd gnd INVX1
X_1076_ BI_4_bF$buf1 AI[2] _144_ vdd gnd AND2X2
X_1077_ BI_3_bF$buf1 AI[3] _145_ vdd gnd AND2X2
X_1078_ _144_ _145_ _146_ vdd gnd NAND2X1
X_1079_ AI[3] _147_ vdd gnd INVX2
X_1080_ BI_4_bF$buf0 AI[2] _148_ vdd gnd NAND2X1
X_1081_ _58_ _147_ _148_ _149_ vdd gnd OAI21X1
X_1082_ _149_ _143_ _146_ _150_ vdd gnd NAND3X1
X_1083_ _58_ _147_ _144_ _151_ vdd gnd OAI21X1
X_1084_ _80_ _106_ _145_ _152_ vdd gnd OAI21X1
X_1085_ _142_ _151_ _152_ _153_ vdd gnd NAND3X1
X_1086_ _153_ _150_ _154_ vdd gnd AND2X2
X_1087_ _137_ _141_ _154_ _155_ vdd gnd OAI21X1
X_1088_ _140_ _139_ _138_ _156_ vdd gnd NAND3X1
X_1089_ _123_ _132_ _136_ _157_ vdd gnd NAND3X1
X_1090_ _150_ _153_ _158_ vdd gnd NAND2X1
X_1091_ _158_ _157_ _156_ _159_ vdd gnd NAND3X1
X_1092_ _159_ _122_ _155_ _160_ vdd gnd NAND3X1
X_1093_ _117_ _116_ _97_ _161_ vdd gnd OAI21X1
X_1094_ _157_ _156_ _154_ _162_ vdd gnd NAND3X1
X_1095_ _137_ _141_ _158_ _163_ vdd gnd OAI21X1
X_1096_ _162_ _163_ _161_ _164_ vdd gnd NAND3X1
X_1097_ BI[6] _165_ vdd gnd INVX4
X_1098_ _57_ _165_ _166_ vdd gnd NOR2X1
X_1099_ _81_ _148_ _108_ _167_ vdd gnd OAI21X1
X_1100_ _166_ _167_ _168_ vdd gnd NAND2X1
X_1101_ _167_ _166_ _169_ vdd gnd OR2X2
X_1102_ _169_ _168_ _170_ vdd gnd AND2X2
X_1103_ _160_ _164_ _170_ _171_ vdd gnd NAND3X1
X_1104_ _163_ _162_ _161_ _172_ vdd gnd AOI21X1
X_1105_ _155_ _159_ _122_ _173_ vdd gnd AOI21X1
X_1106_ _168_ _169_ _174_ vdd gnd NAND2X1
X_1107_ _173_ _172_ _174_ _175_ vdd gnd OAI21X1
X_1108_ _171_ _175_ _121_ _176_ vdd gnd NAND3X1
X_1109_ _168_ _177_ vdd gnd INVX1
X_1110_ _174_ _172_ _164_ _178_ vdd gnd OAI21X1
X_1111_ _156_ _154_ _141_ _179_ vdd gnd AOI21X1
X_1112_ _135_ _130_ _125_ _180_ vdd gnd OAI21X1
X_1113_ BI_0_bF$buf1 \u_ALU8.AI7\ _124_ _181_ vdd gnd NAND3X1
X_1114_ BI_0_bF$buf0 \u_ALU8.AI7\ BI_1_bF$buf3 AI[6] _182_ vdd 
+ gnd
+ AOI22X1
X_1115_ _182_ _183_ vdd gnd INVX1
X_1116_ BI[2] AI[5] _184_ vdd gnd NAND2X1
X_1117_ _184_ _185_ vdd gnd INVX1
X_1118_ _183_ _185_ _181_ _186_ vdd gnd NAND3X1
X_1119_ BI_1_bF$buf2 \u_ALU8.AI7\ _187_ vdd gnd NAND2X1
X_1120_ _128_ _187_ _188_ vdd gnd NOR2X1
X_1121_ _182_ _188_ _184_ _189_ vdd gnd OAI21X1
X_1122_ _189_ _186_ _180_ _190_ vdd gnd AOI21X1
X_1123_ _182_ _188_ _185_ _191_ vdd gnd OAI21X1
X_1124_ _183_ _184_ _181_ _192_ vdd gnd NAND3X1
X_1125_ _125_ _132_ _191_ _192_ _193_ vdd 
+ gnd
+ AOI22X1
X_1126_ BI[5] AI[2] _194_ vdd gnd NAND2X1
X_1127_ _194_ _195_ vdd gnd INVX1
X_1128_ BI_4_bF$buf3 AI[3] _196_ vdd gnd AND2X2
X_1129_ BI_3_bF$buf0 AI[4] _197_ vdd gnd AND2X2
X_1130_ _196_ _197_ _198_ vdd gnd NAND2X1
X_1131_ BI_3_bF$buf3 AI[4] BI_4_bF$buf2 AI[3] _199_ vdd 
+ gnd
+ AOI22X1
X_1132_ _199_ _200_ vdd gnd INVX1
X_1133_ _195_ _200_ _198_ _201_ vdd gnd NAND3X1
X_1134_ AI[4] _202_ vdd gnd INVX1
X_1135_ _58_ _202_ _196_ _203_ vdd gnd OAI21X1
X_1136_ _80_ _147_ _197_ _204_ vdd gnd OAI21X1
X_1137_ _194_ _203_ _204_ _205_ vdd gnd NAND3X1
X_1138_ _205_ _201_ _206_ vdd gnd AND2X2
X_1139_ _193_ _190_ _206_ _207_ vdd gnd OAI21X1
X_1140_ _129_ _131_ _134_ _208_ vdd gnd AOI21X1
X_1141_ _192_ _191_ _208_ _209_ vdd gnd NAND3X1
X_1142_ _180_ _186_ _189_ _210_ vdd gnd NAND3X1
X_1143_ _201_ _205_ _211_ vdd gnd NAND2X1
X_1144_ _211_ _210_ _209_ _212_ vdd gnd NAND3X1
X_1145_ _212_ _207_ _179_ _213_ vdd gnd NAND3X1
X_1146_ _158_ _137_ _157_ _214_ vdd gnd OAI21X1
X_1147_ _210_ _209_ _206_ _215_ vdd gnd NAND3X1
X_1148_ _193_ _190_ _211_ _216_ vdd gnd OAI21X1
X_1149_ _215_ _214_ _216_ _217_ vdd gnd NAND3X1
X_1150_ AI[0] BI[7] _218_ vdd gnd NAND2X1
X_1151_ _218_ _219_ vdd gnd INVX1
X_1152_ _104_ _196_ _149_ _143_ _220_ vdd 
+ gnd
+ AOI22X1
X_1153_ _220_ _221_ vdd gnd INVX1
X_1154_ _165_ _110_ _221_ _222_ vdd gnd OAI21X1
X_1155_ _165_ _110_ _223_ vdd gnd NOR2X1
X_1156_ _223_ _220_ _224_ vdd gnd NAND2X1
X_1157_ _219_ _224_ _222_ _225_ vdd gnd NAND3X1
X_1158_ _223_ _221_ _226_ vdd gnd NAND2X1
X_1159_ _165_ _110_ _220_ _227_ vdd gnd OAI21X1
X_1160_ _218_ _227_ _226_ _228_ vdd gnd NAND3X1
X_1161_ _228_ _225_ _229_ vdd gnd NAND2X1
X_1162_ _229_ _213_ _217_ _230_ vdd gnd NAND3X1
X_1163_ _216_ _215_ _214_ _231_ vdd gnd AOI21X1
X_1164_ _207_ _212_ _179_ _232_ vdd gnd AOI21X1
X_1165_ _219_ _227_ _226_ _233_ vdd gnd NAND3X1
X_1166_ _218_ _224_ _222_ _234_ vdd gnd NAND3X1
X_1167_ _233_ _234_ _235_ vdd gnd NAND2X1
X_1168_ _231_ _232_ _235_ _236_ vdd gnd OAI21X1
X_1169_ _236_ _230_ _178_ _237_ vdd gnd AOI21X1
X_1170_ _160_ _170_ _173_ _238_ vdd gnd AOI21X1
X_1171_ _231_ _232_ _229_ _239_ vdd gnd OAI21X1
X_1172_ _235_ _213_ _217_ _240_ vdd gnd NAND3X1
X_1173_ _239_ _240_ _238_ _241_ vdd gnd AOI21X1
X_1174_ _241_ _237_ _177_ _242_ vdd gnd OAI21X1
X_1175_ _240_ _239_ _238_ _243_ vdd gnd NAND3X1
X_1176_ _230_ _236_ _178_ _244_ vdd gnd NAND3X1
X_1177_ _168_ _243_ _244_ _245_ vdd gnd NAND3X1
X_1178_ _242_ _245_ _176_ _246_ vdd gnd AOI21X1
X_1179_ _246_ _247_ vdd gnd INVX1
X_1180_ _61_ _248_ vdd gnd INVX1
X_1181_ _62_ _63_ _249_ vdd gnd NOR2X1
X_1182_ _65_ _250_ vdd gnd INVX1
X_1183_ BI_0_bF$buf3 _251_ vdd gnd INVX1
X_1184_ _251_ _147_ _62_ _252_ vdd gnd OAI21X1
X_1185_ _250_ _252_ _249_ _253_ vdd gnd AOI21X1
X_1186_ _72_ _75_ _69_ _254_ vdd gnd OAI21X1
X_1187_ _68_ _73_ _71_ _255_ vdd gnd NAND3X1
X_1188_ _255_ _254_ _253_ _256_ vdd gnd AOI21X1
X_1189_ _61_ _82_ _257_ vdd gnd AND2X2
X_1190_ _254_ _253_ _255_ _258_ vdd gnd NAND3X1
X_1191_ _257_ _258_ _256_ _259_ vdd gnd AOI21X1
X_1192_ _115_ _116_ _113_ _260_ vdd gnd OAI21X1
X_1193_ _117_ _97_ _101_ _261_ vdd gnd NAND3X1
X_1194_ _261_ _260_ _259_ _262_ vdd gnd NAND3X1
X_1195_ _248_ _262_ _119_ _263_ vdd gnd NAND3X1
X_1196_ _173_ _172_ _170_ _264_ vdd gnd OAI21X1
X_1197_ _174_ _160_ _164_ _265_ vdd gnd NAND3X1
X_1198_ _119_ _263_ _264_ _265_ _266_ vdd 
+ gnd
+ AOI22X1
X_1199_ _177_ _243_ _244_ _267_ vdd gnd NAND3X1
X_1200_ _241_ _237_ _168_ _268_ vdd gnd OAI21X1
X_1201_ _268_ _267_ _266_ _269_ vdd gnd AOI21X1
X_1202_ _257_ _258_ _77_ _270_ vdd gnd NAND3X1
X_1203_ _252_ _250_ _64_ _271_ vdd gnd NAND3X1
X_1204_ BI_0_bF$buf2 AI[1] _272_ vdd gnd NAND2X1
X_1205_ AI[0] BI[2] _273_ vdd gnd NAND2X1
X_1206_ BI_0_bF$buf1 AI[2] BI_1_bF$buf1 AI[1] _274_ vdd 
+ gnd
+ AOI22X1
X_1207_ _62_ _272_ _273_ _274_ _275_ vdd 
+ gnd
+ OAI22X1
X_1208_ _249_ _66_ _65_ _276_ vdd gnd OAI21X1
X_1209_ _275_ _276_ _271_ _277_ vdd gnd NAND3X1
X_1210_ _271_ _276_ _275_ _278_ vdd gnd AOI21X1
X_1211_ _78_ _278_ _277_ _279_ vdd gnd OAI21X1
X_1212_ _256_ _84_ _83_ _280_ vdd gnd OAI21X1
X_1213_ _270_ _279_ _280_ _281_ vdd gnd NAND3X1
X_1214_ _281_ _282_ vdd gnd INVX1
X_1215_ _77_ _270_ _260_ _261_ _283_ vdd 
+ gnd
+ AOI22X1
X_1216_ _283_ _120_ _61_ _284_ vdd gnd OAI21X1
X_1217_ _263_ _282_ _284_ _285_ vdd gnd NAND3X1
X_1218_ _175_ _171_ _121_ _286_ vdd gnd AOI21X1
X_1219_ _285_ _266_ _286_ _287_ vdd gnd NOR3X1
X_1220_ _278_ _288_ vdd gnd INVX1
X_1221_ _59_ _277_ _288_ _289_ vdd gnd NAND3X1
X_1222_ _273_ _290_ vdd gnd INVX1
X_1223_ _62_ _272_ _291_ vdd gnd NOR2X1
X_1224_ _274_ _291_ _292_ vdd gnd NOR2X1
X_1225_ _290_ _292_ _293_ vdd gnd NAND2X1
X_1226_ AI[0] BI_1_bF$buf0 _294_ vdd gnd NAND2X1
X_1227_ _272_ _294_ _295_ vdd gnd NOR2X1
X_1228_ _274_ _291_ _273_ _296_ vdd gnd OAI21X1
X_1229_ _295_ _296_ _293_ _297_ vdd gnd NAND3X1
X_1230_ _297_ _298_ vdd gnd INVX1
X_1231_ _277_ _299_ vdd gnd INVX1
X_1232_ _278_ _299_ _78_ _300_ vdd gnd OAI21X1
X_1233_ _298_ _300_ _289_ _301_ vdd gnd NAND3X1
X_1234_ _280_ _270_ _279_ _302_ vdd gnd AOI21X1
X_1235_ _302_ _301_ _282_ _303_ vdd gnd NOR3X1
X_1236_ _283_ _120_ _248_ _304_ vdd gnd OAI21X1
X_1237_ _61_ _262_ _119_ _305_ vdd gnd NAND3X1
X_1238_ _281_ _305_ _304_ _306_ vdd gnd NAND3X1
X_1239_ _285_ _306_ _303_ _307_ vdd gnd NAND3X1
X_1240_ _307_ _308_ vdd gnd INVX1
X_1241_ _266_ _286_ _285_ _309_ vdd gnd OAI21X1
X_1242_ _308_ _309_ _287_ _310_ vdd gnd AOI21X1
X_1243_ _269_ _310_ _247_ _311_ vdd gnd OAI21X1
X_1244_ _177_ _243_ _241_ _312_ vdd gnd AOI21X1
X_1245_ _226_ _233_ _313_ vdd gnd NAND2X1
X_1246_ _235_ _231_ _217_ _314_ vdd gnd OAI21X1
X_1247_ BI[7] AI[1] _315_ vdd gnd NAND2X1
X_1248_ _315_ _316_ vdd gnd INVX1
X_1249_ _106_ _165_ _317_ vdd gnd NOR2X1
X_1250_ _194_ _199_ _198_ _318_ vdd gnd OAI21X1
X_1251_ _317_ _318_ _319_ vdd gnd NAND2X1
X_1252_ _318_ _317_ _320_ vdd gnd OR2X2
X_1253_ _316_ _319_ _320_ _321_ vdd gnd NAND3X1
X_1254_ _318_ _317_ _322_ vdd gnd AND2X2
X_1255_ _317_ _318_ _323_ vdd gnd NOR2X1
X_1256_ _323_ _322_ _315_ _324_ vdd gnd OAI21X1
X_1257_ _324_ _321_ _325_ vdd gnd NAND2X1
X_1258_ _206_ _209_ _193_ _326_ vdd gnd AOI21X1
X_1259_ BI[5] AI[3] _327_ vdd gnd NAND2X1
X_1260_ BI_4_bF$buf1 AI[4] _328_ vdd gnd AND2X2
X_1261_ _127_ _58_ _328_ _329_ vdd gnd OAI21X1
X_1262_ AI[5] BI_3_bF$buf2 _330_ vdd gnd AND2X2
X_1263_ _80_ _202_ _330_ _331_ vdd gnd OAI21X1
X_1264_ _327_ _329_ _331_ _332_ vdd gnd NAND3X1
X_1265_ _327_ _333_ vdd gnd INVX1
X_1266_ _328_ _330_ _334_ vdd gnd NAND2X1
X_1267_ AI[5] BI_3_bF$buf1 BI_4_bF$buf0 AI[4] _335_ vdd 
+ gnd
+ AOI22X1
X_1268_ _335_ _336_ vdd gnd INVX1
X_1269_ _333_ _336_ _334_ _337_ vdd gnd NAND3X1
X_1270_ _337_ _332_ _338_ vdd gnd NAND2X1
X_1271_ _183_ _185_ _188_ _339_ vdd gnd AOI21X1
X_1272_ \u_ALU8.AI7\ BI[2] _340_ vdd gnd NAND2X1
X_1273_ _340_ _341_ vdd gnd INVX1
X_1274_ BI_1_bF$buf3 \u_ALU8.AI7\ BI[2] AI[6] _342_ vdd 
+ gnd
+ AOI22X1
X_1275_ _341_ _124_ _342_ _343_ vdd gnd AOI21X1
X_1276_ _343_ _339_ _344_ vdd gnd NAND2X1
X_1277_ _182_ _184_ _181_ _345_ vdd gnd OAI21X1
X_1278_ _342_ _346_ vdd gnd INVX1
X_1279_ _133_ _340_ _346_ _347_ vdd gnd OAI21X1
X_1280_ _347_ _345_ _348_ vdd gnd NAND2X1
X_1281_ _348_ _338_ _344_ _349_ vdd gnd NAND3X1
X_1282_ _332_ _337_ _350_ vdd gnd AND2X2
X_1283_ _343_ _345_ _351_ vdd gnd NAND2X1
X_1284_ _347_ _339_ _352_ vdd gnd NAND2X1
X_1285_ _351_ _352_ _350_ _353_ vdd gnd NAND3X1
X_1286_ _349_ _353_ _326_ _354_ vdd gnd NAND3X1
X_1287_ _211_ _190_ _210_ _355_ vdd gnd OAI21X1
X_1288_ _332_ _337_ _352_ _351_ _356_ vdd 
+ gnd
+ AOI22X1
X_1289_ _344_ _348_ _338_ _357_ vdd gnd AOI21X1
X_1290_ _356_ _357_ _355_ _358_ vdd gnd OAI21X1
X_1291_ _325_ _358_ _354_ _359_ vdd gnd NAND3X1
X_1292_ _321_ _324_ _360_ vdd gnd AND2X2
X_1293_ _349_ _353_ _355_ _361_ vdd gnd NAND3X1
X_1294_ _356_ _357_ _326_ _362_ vdd gnd OAI21X1
X_1295_ _362_ _361_ _360_ _363_ vdd gnd NAND3X1
X_1296_ _359_ _363_ _314_ _364_ vdd gnd NAND3X1
X_1297_ _213_ _229_ _232_ _365_ vdd gnd AOI21X1
X_1298_ _321_ _324_ _361_ _362_ _366_ vdd 
+ gnd
+ AOI22X1
X_1299_ _354_ _358_ _325_ _367_ vdd gnd AOI21X1
X_1300_ _366_ _367_ _365_ _368_ vdd gnd OAI21X1
X_1301_ _364_ _368_ _313_ _369_ vdd gnd AOI21X1
X_1302_ _313_ _370_ vdd gnd INVX1
X_1303_ _359_ _363_ _365_ _371_ vdd gnd NAND3X1
X_1304_ _366_ _367_ _314_ _372_ vdd gnd OAI21X1
X_1305_ _371_ _372_ _370_ _373_ vdd gnd AOI21X1
X_1306_ _369_ _373_ _312_ _374_ vdd gnd OAI21X1
X_1307_ _168_ _237_ _244_ _375_ vdd gnd OAI21X1
X_1308_ _370_ _372_ _371_ _376_ vdd gnd NAND3X1
X_1309_ _313_ _368_ _364_ _377_ vdd gnd NAND3X1
X_1310_ _376_ _377_ _375_ _378_ vdd gnd NAND3X1
X_1311_ _374_ _378_ _379_ vdd gnd AND2X2
X_1312_ _379_ _311_ _380_ vdd gnd NAND2X1
X_1313_ _176_ _245_ _242_ _381_ vdd gnd NAND3X1
X_1314_ _285_ _382_ vdd gnd INVX1
X_1315_ _171_ _175_ _383_ vdd gnd NAND2X1
X_1316_ _119_ _263_ _383_ _384_ vdd gnd NAND3X1
X_1317_ _176_ _382_ _384_ _385_ vdd gnd NAND3X1
X_1318_ _384_ _176_ _382_ _386_ vdd gnd AOI21X1
X_1319_ _307_ _386_ _385_ _387_ vdd gnd OAI21X1
X_1320_ _387_ _381_ _246_ _388_ vdd gnd AOI21X1
X_1321_ _378_ _374_ _389_ vdd gnd NAND2X1
X_1322_ _389_ _388_ _390_ vdd gnd NAND2X1
X_1323_ _390_ _380_ _391_ vdd gnd AND2X2
X_1324_ ABCmd_i[7] HC _392_ vdd gnd NOR2X1
X_1325_ _392_ _733_ _393_ vdd gnd NOR2X1
X_1326_ _54_ _391_ _393_ _394_ vdd gnd OAI21X1
X_1327_ BI_0_bF$buf0 AI[0] _54_ _395_ vdd gnd AOI21X1
X_1328_ ACC[0] ABCmd_i[7] _733_ _396_ vdd gnd OAI21X1
X_1329_ _395_ _396_ _394_ _397_ vdd gnd OAI21X1
X_1330_ _718_ _397_ _398_ vdd gnd NAND2X1
X_1331_ _56_ _718_ _398_ _9_ vdd gnd OAI21X1
X_1332_ _924_[1] _399_ vdd gnd INVX1
X_1333_ AN _400_ vdd gnd INVX1
X_1334_ state[1] _730_ ABCmd_i[7] _401_ vdd gnd OAI21X1
X_1335_ _400_ _733_ _401_ _402_ vdd gnd OAI21X1
X_1336_ _359_ _363_ _314_ _403_ vdd gnd AOI21X1
X_1337_ _370_ _403_ _364_ _404_ vdd gnd OAI21X1
X_1338_ _315_ _323_ _319_ _405_ vdd gnd OAI21X1
X_1339_ _349_ _353_ _355_ _406_ vdd gnd AOI21X1
X_1340_ _325_ _406_ _361_ _407_ vdd gnd OAI21X1
X_1341_ AI[2] BI[7] _408_ vdd gnd NAND2X1
X_1342_ _408_ _409_ vdd gnd INVX1
X_1343_ _147_ _165_ _410_ vdd gnd NOR2X1
X_1344_ _327_ _335_ _334_ _411_ vdd gnd OAI21X1
X_1345_ _410_ _411_ _412_ vdd gnd NAND2X1
X_1346_ _411_ _410_ _413_ vdd gnd OR2X2
X_1347_ _409_ _412_ _413_ _414_ vdd gnd NAND3X1
X_1348_ _411_ _410_ _415_ vdd gnd AND2X2
X_1349_ _410_ _411_ _416_ vdd gnd NOR2X1
X_1350_ _416_ _415_ _408_ _417_ vdd gnd OAI21X1
X_1351_ _417_ _414_ _418_ vdd gnd NAND2X1
X_1352_ _347_ _339_ _419_ vdd gnd NOR2X1
X_1353_ _350_ _352_ _419_ _420_ vdd gnd AOI21X1
X_1354_ AI[4] BI[5] _421_ vdd gnd NAND2X1
X_1355_ _421_ _422_ vdd gnd INVX1
X_1356_ AI[5] BI_4_bF$buf3 _423_ vdd gnd AND2X2
X_1357_ AI[6] BI_3_bF$buf0 _424_ vdd gnd AND2X2
X_1358_ _423_ _424_ _425_ vdd gnd NAND2X1
X_1359_ AI[6] BI_3_bF$buf3 AI[5] BI_4_bF$buf2 _426_ vdd 
+ gnd
+ AOI22X1
X_1360_ _426_ _427_ vdd gnd INVX1
X_1361_ _425_ _427_ _422_ _428_ vdd gnd AOI21X1
X_1362_ AI[6] _429_ vdd gnd INVX2
X_1363_ _429_ _58_ _423_ _430_ vdd gnd OAI21X1
X_1364_ _127_ _80_ _424_ _431_ vdd gnd OAI21X1
X_1365_ _430_ _431_ _421_ _432_ vdd gnd AOI21X1
X_1366_ _124_ _340_ _428_ _432_ _433_ vdd 
+ gnd
+ OAI22X1
X_1367_ _421_ _430_ _431_ _434_ vdd gnd NAND3X1
X_1368_ _422_ _427_ _425_ _435_ vdd gnd NAND3X1
X_1369_ _340_ _124_ _436_ vdd gnd NOR2X1
X_1370_ _436_ _435_ _434_ _437_ vdd gnd NAND3X1
X_1371_ _437_ _433_ _438_ vdd gnd NAND2X1
X_1372_ _438_ _420_ _439_ vdd gnd NOR2X1
X_1373_ _343_ _345_ _440_ vdd gnd NOR2X1
X_1374_ _338_ _440_ _351_ _441_ vdd gnd OAI21X1
X_1375_ _433_ _437_ _441_ _442_ vdd gnd AOI21X1
X_1376_ _442_ _439_ _418_ _443_ vdd gnd OAI21X1
X_1377_ _414_ _417_ _444_ vdd gnd AND2X2
X_1378_ _433_ _437_ _441_ _445_ vdd gnd NAND3X1
X_1379_ _438_ _420_ _446_ vdd gnd NAND2X1
X_1380_ _445_ _446_ _444_ _447_ vdd gnd NAND3X1
X_1381_ _447_ _443_ _407_ _448_ vdd gnd NAND3X1
X_1382_ _356_ _357_ _326_ _449_ vdd gnd NOR3X1
X_1383_ _360_ _362_ _449_ _450_ vdd gnd AOI21X1
X_1384_ _446_ _445_ _444_ _451_ vdd gnd AOI21X1
X_1385_ _433_ _437_ _420_ _452_ vdd gnd NAND3X1
X_1386_ _419_ _357_ _438_ _453_ vdd gnd OAI21X1
X_1387_ _452_ _453_ _418_ _454_ vdd gnd AOI21X1
X_1388_ _451_ _454_ _450_ _455_ vdd gnd OAI21X1
X_1389_ _405_ _448_ _455_ _456_ vdd gnd NAND3X1
X_1390_ _405_ _457_ vdd gnd INVX1
X_1391_ _443_ _447_ _450_ _458_ vdd gnd NAND3X1
X_1392_ _454_ _451_ _407_ _459_ vdd gnd OAI21X1
X_1393_ _457_ _459_ _458_ _460_ vdd gnd NAND3X1
X_1394_ _456_ _460_ _404_ _461_ vdd gnd AOI21X1
X_1395_ _457_ _448_ _455_ _462_ vdd gnd NAND3X1
X_1396_ _405_ _459_ _458_ _463_ vdd gnd NAND3X1
X_1397_ _364_ _377_ _463_ _462_ _464_ vdd 
+ gnd
+ AOI22X1
X_1398_ _464_ _461_ _465_ vdd gnd NOR2X1
X_1399_ _380_ _378_ _465_ _466_ vdd gnd AOI21X1
X_1400_ _389_ _388_ _378_ _467_ vdd gnd OAI21X1
X_1401_ _364_ _468_ vdd gnd INVX1
X_1402_ _313_ _368_ _468_ _469_ vdd gnd AOI21X1
X_1403_ _462_ _463_ _469_ _470_ vdd gnd NAND3X1
X_1404_ _456_ _460_ _404_ _471_ vdd gnd NAND3X1
X_1405_ _471_ _470_ _472_ vdd gnd NAND2X1
X_1406_ _472_ _467_ ABCmd_i[7] _473_ vdd gnd OAI21X1
X_1407_ _466_ _473_ _402_ _474_ vdd gnd OAI21X1
X_1408_ _272_ _294_ _475_ vdd gnd AND2X2
X_1409_ ACC[1] _54_ _476_ vdd gnd NAND2X1
X_1410_ _272_ _294_ ABCmd_i[7] _477_ vdd gnd OAI21X1
X_1411_ _477_ _475_ _476_ _478_ vdd gnd OAI21X1
X_1412_ _478_ _721_ _730_ _479_ vdd gnd AOI21X1
X_1413_ _399_ _730_ _474_ _479_ _10_ vdd 
+ gnd
+ AOI22X1
X_1414_ state[0] _717_ _924_[2] _480_ vdd gnd OAI21X1
X_1415_ _379_ _465_ _311_ _481_ vdd gnd NAND3X1
X_1416_ _378_ _471_ _461_ _482_ vdd gnd AOI21X1
X_1417_ _482_ _483_ vdd gnd INVX1
X_1418_ _408_ _416_ _412_ _484_ vdd gnd OAI21X1
X_1419_ _484_ _485_ vdd gnd INVX1
X_1420_ _444_ _446_ _439_ _486_ vdd gnd AOI21X1
X_1421_ AI[3] BI[7] _487_ vdd gnd NAND2X1
X_1422_ _487_ _488_ vdd gnd INVX1
X_1423_ _202_ _165_ _489_ vdd gnd NOR2X1
X_1424_ _421_ _426_ _425_ _490_ vdd gnd OAI21X1
X_1425_ _489_ _490_ _491_ vdd gnd NAND2X1
X_1426_ _490_ _489_ _492_ vdd gnd OR2X2
X_1427_ _488_ _491_ _492_ _493_ vdd gnd NAND3X1
X_1428_ _490_ _489_ _494_ vdd gnd AND2X2
X_1429_ _489_ _490_ _495_ vdd gnd NOR2X1
X_1430_ _495_ _494_ _487_ _496_ vdd gnd OAI21X1
X_1431_ _496_ _493_ _497_ vdd gnd NAND2X1
X_1432_ _124_ _341_ _498_ vdd gnd NAND2X1
X_1433_ AI[5] BI[5] _499_ vdd gnd NAND2X1
X_1434_ _499_ _500_ vdd gnd INVX1
X_1435_ AI[6] BI_3_bF$buf2 _501_ vdd gnd NAND2X1
X_1436_ \u_ALU8.AI7\ BI_4_bF$buf1 _502_ vdd gnd NAND2X1
X_1437_ _501_ _502_ _503_ vdd gnd NOR2X1
X_1438_ _503_ _504_ vdd gnd INVX1
X_1439_ \u_ALU8.AI7\ BI_3_bF$buf1 AI[6] BI_4_bF$buf0 _505_ vdd 
+ gnd
+ AOI22X1
X_1440_ _505_ _506_ vdd gnd INVX1
X_1441_ _500_ _506_ _504_ _507_ vdd gnd NAND3X1
X_1442_ _505_ _503_ _499_ _508_ vdd gnd OAI21X1
X_1443_ _508_ _507_ _509_ vdd gnd NAND2X1
X_1444_ _498_ _437_ _509_ _510_ vdd gnd AOI21X1
X_1445_ _498_ _437_ _509_ _511_ vdd gnd NAND3X1
X_1446_ _511_ _512_ vdd gnd INVX1
X_1447_ _510_ _512_ _497_ _513_ vdd gnd OAI21X1
X_1448_ _493_ _496_ _514_ vdd gnd AND2X2
X_1449_ _498_ _437_ _515_ vdd gnd NAND2X1
X_1450_ _507_ _508_ _515_ _516_ vdd gnd NAND3X1
X_1451_ _516_ _511_ _514_ _517_ vdd gnd NAND3X1
X_1452_ _513_ _517_ _486_ _518_ vdd gnd NAND3X1
X_1453_ _418_ _442_ _445_ _519_ vdd gnd OAI21X1
X_1454_ _493_ _496_ _516_ _511_ _520_ vdd 
+ gnd
+ AOI22X1
X_1455_ _515_ _509_ _521_ vdd gnd OR2X2
X_1456_ _509_ _515_ _522_ vdd gnd NAND2X1
X_1457_ _521_ _522_ _497_ _523_ vdd gnd AOI21X1
X_1458_ _520_ _523_ _519_ _524_ vdd gnd OAI21X1
X_1459_ _485_ _524_ _518_ _525_ vdd gnd NAND3X1
X_1460_ _513_ _517_ _519_ _526_ vdd gnd NAND3X1
X_1461_ _520_ _523_ _486_ _527_ vdd gnd OAI21X1
X_1462_ _484_ _526_ _527_ _528_ vdd gnd NAND3X1
X_1463_ _528_ _525_ _529_ vdd gnd NAND2X1
X_1464_ _448_ _456_ _529_ _530_ vdd gnd NAND3X1
X_1465_ _443_ _447_ _407_ _531_ vdd gnd AOI21X1
X_1466_ _457_ _531_ _448_ _532_ vdd gnd OAI21X1
X_1467_ _525_ _528_ _532_ _533_ vdd gnd NAND3X1
X_1468_ _533_ _530_ _534_ vdd gnd NAND2X1
X_1469_ _481_ _483_ _534_ _535_ vdd gnd AOI21X1
X_1470_ _379_ _465_ _536_ vdd gnd NAND2X1
X_1471_ _388_ _536_ _483_ _537_ vdd gnd OAI21X1
X_1472_ _534_ _538_ vdd gnd INVX1
X_1473_ _538_ _537_ _539_ vdd gnd NOR2X1
X_1474_ _535_ _539_ ABCmd_i[7] _540_ vdd gnd OAI21X1
X_1475_ ABCmd_i[7] AZ _541_ vdd gnd NOR2X1
X_1476_ _541_ _733_ _542_ vdd gnd NOR2X1
X_1477_ _293_ _296_ _295_ _543_ vdd gnd AOI21X1
X_1478_ _543_ _298_ ABCmd_i[7] _544_ vdd gnd OAI21X1
X_1479_ ABCmd_i[7] ACC[2] _545_ vdd gnd NOR2X1
X_1480_ _545_ _25_ _546_ vdd gnd NOR2X1
X_1481_ _544_ _546_ _540_ _542_ _547_ vdd 
+ gnd
+ AOI22X1
X_1482_ _730_ _547_ _480_ _11_ vdd gnd OAI21X1
X_1483_ _924_[3] _548_ vdd gnd INVX1
X_1484_ AV _549_ vdd gnd INVX1
X_1485_ _549_ _733_ _401_ _550_ vdd gnd OAI21X1
X_1486_ _533_ _551_ vdd gnd INVX1
X_1487_ _487_ _495_ _491_ _552_ vdd gnd OAI21X1
X_1488_ _552_ _553_ vdd gnd INVX1
X_1489_ _514_ _511_ _510_ _554_ vdd gnd AOI21X1
X_1490_ AI[4] BI[7] _555_ vdd gnd NAND2X1
X_1491_ _555_ _556_ vdd gnd INVX1
X_1492_ _127_ _165_ _557_ vdd gnd NOR2X1
X_1493_ _501_ _502_ _499_ _505_ _558_ vdd 
+ gnd
+ OAI22X1
X_1494_ _557_ _558_ _559_ vdd gnd NAND2X1
X_1495_ _558_ _557_ _560_ vdd gnd OR2X2
X_1496_ _556_ _559_ _560_ _561_ vdd gnd NAND3X1
X_1497_ BI[7] _562_ vdd gnd INVX2
X_1498_ _559_ _560_ _563_ vdd gnd NAND2X1
X_1499_ _202_ _562_ _563_ _564_ vdd gnd OAI21X1
X_1500_ AI[6] BI_4_bF$buf3 _565_ vdd gnd NAND2X1
X_1501_ \u_ALU8.AI7\ BI[5] _566_ vdd gnd NAND2X1
X_1502_ _565_ _566_ _567_ vdd gnd NOR2X1
X_1503_ _567_ _568_ vdd gnd INVX1
X_1504_ BI[5] _569_ vdd gnd INVX1
X_1505_ _429_ _569_ _502_ _570_ vdd gnd OAI21X1
X_1506_ _568_ _570_ _571_ vdd gnd AND2X2
X_1507_ _564_ _561_ _571_ _572_ vdd gnd AOI21X1
X_1508_ _572_ _573_ vdd gnd INVX1
X_1509_ _571_ _561_ _564_ _574_ vdd gnd NAND3X1
X_1510_ _573_ _574_ _554_ _575_ vdd gnd NAND3X1
X_1511_ _497_ _512_ _516_ _576_ vdd gnd OAI21X1
X_1512_ _574_ _577_ vdd gnd INVX1
X_1513_ _572_ _577_ _576_ _578_ vdd gnd OAI21X1
X_1514_ _553_ _578_ _575_ _579_ vdd gnd NAND3X1
X_1515_ _574_ _576_ _573_ _580_ vdd gnd NAND3X1
X_1516_ _572_ _577_ _554_ _581_ vdd gnd OAI21X1
X_1517_ _552_ _580_ _581_ _582_ vdd gnd NAND3X1
X_1518_ _582_ _579_ _583_ vdd gnd NAND2X1
X_1519_ _526_ _528_ _583_ _584_ vdd gnd NAND3X1
X_1520_ _517_ _513_ _519_ _585_ vdd gnd AOI21X1
X_1521_ _485_ _585_ _526_ _586_ vdd gnd OAI21X1
X_1522_ _579_ _582_ _586_ _587_ vdd gnd NAND3X1
X_1523_ _587_ _584_ _588_ vdd gnd NAND2X1
X_1524_ _551_ _588_ _535_ _589_ vdd gnd NOR3X1
X_1525_ _537_ _538_ _551_ _590_ vdd gnd AOI21X1
X_1526_ _588_ _591_ vdd gnd INVX1
X_1527_ _591_ _590_ ABCmd_i[7] _592_ vdd gnd OAI21X1
X_1528_ _589_ _592_ _550_ _593_ vdd gnd OAI21X1
X_1529_ _300_ _289_ _594_ vdd gnd NAND2X1
X_1530_ _297_ _594_ _595_ vdd gnd NAND2X1
X_1531_ _301_ _595_ _596_ vdd gnd NAND2X1
X_1532_ ACC[3] _54_ _597_ vdd gnd NAND2X1
X_1533_ _54_ _596_ _597_ _598_ vdd gnd OAI21X1
X_1534_ _598_ _721_ _730_ _599_ vdd gnd AOI21X1
X_1535_ _548_ _730_ _593_ _599_ _12_ vdd 
+ gnd
+ AOI22X1
X_1536_ _924_[4] _600_ vdd gnd INVX1
X_1537_ _580_ _582_ _601_ vdd gnd NAND2X1
X_1538_ _601_ _602_ vdd gnd INVX1
X_1539_ _555_ _563_ _559_ _603_ vdd gnd OAI21X1
X_1540_ _603_ _604_ vdd gnd INVX1
X_1541_ \u_ALU8.AI7\ _605_ vdd gnd INVX1
X_1542_ _127_ _562_ _606_ vdd gnd NOR2X1
X_1543_ _429_ _165_ _607_ vdd gnd NOR2X1
X_1544_ _607_ _567_ _608_ vdd gnd NOR2X1
X_1545_ BI[6] _567_ _608_ _609_ vdd gnd AOI21X1
X_1546_ _606_ _609_ _610_ vdd gnd NAND2X1
X_1547_ _165_ _568_ _611_ vdd gnd NOR2X1
X_1548_ _127_ _562_ _608_ _611_ _612_ vdd 
+ gnd
+ OAI22X1
X_1549_ _612_ _610_ _613_ vdd gnd NAND2X1
X_1550_ _605_ _569_ _613_ _614_ vdd gnd OAI21X1
X_1551_ _566_ _615_ vdd gnd INVX1
X_1552_ _615_ _612_ _610_ _616_ vdd gnd NAND3X1
X_1553_ _616_ _614_ _617_ vdd gnd NAND2X1
X_1554_ _574_ _617_ _618_ vdd gnd NOR2X1
X_1555_ _614_ _616_ _577_ _619_ vdd gnd AOI21X1
X_1556_ _619_ _618_ _604_ _620_ vdd gnd OAI21X1
X_1557_ _617_ _574_ _621_ vdd gnd OR2X2
X_1558_ _619_ _622_ vdd gnd INVX1
X_1559_ _603_ _621_ _622_ _623_ vdd gnd NAND3X1
X_1560_ _620_ _623_ _624_ vdd gnd NAND2X1
X_1561_ _624_ _602_ _625_ vdd gnd NAND2X1
X_1562_ _620_ _623_ _601_ _626_ vdd gnd NAND3X1
X_1563_ _626_ _625_ _627_ vdd gnd NAND2X1
X_1564_ _389_ _472_ _628_ vdd gnd NOR2X1
X_1565_ _588_ _534_ _629_ vdd gnd NOR2X1
X_1566_ _311_ _629_ _628_ _630_ vdd gnd NAND3X1
X_1567_ _587_ _533_ _631_ vdd gnd NAND2X1
X_1568_ _584_ _631_ _629_ _482_ _632_ vdd 
+ gnd
+ AOI22X1
X_1569_ _632_ _630_ _627_ _633_ vdd gnd AOI21X1
X_1570_ _627_ _634_ vdd gnd INVX1
X_1571_ _584_ _631_ _635_ vdd gnd NAND2X1
X_1572_ _534_ _588_ _635_ _636_ vdd gnd OAI21X1
X_1573_ _584_ _631_ _482_ _637_ vdd gnd AOI21X1
X_1574_ _388_ _536_ _637_ _638_ vdd gnd OAI21X1
X_1575_ _638_ _636_ _634_ _639_ vdd gnd AOI21X1
X_1576_ _639_ _633_ ABCmd_i[7] _640_ vdd gnd OAI21X1
X_1577_ ABCmd_i[7] CO _641_ vdd gnd OR2X2
X_1578_ _25_ _641_ _640_ _642_ vdd gnd NAND3X1
X_1579_ _303_ _643_ vdd gnd INVX1
X_1580_ _302_ _282_ _301_ _644_ vdd gnd OAI21X1
X_1581_ _644_ _643_ _645_ vdd gnd NAND2X1
X_1582_ ACC[4] _54_ _646_ vdd gnd NAND2X1
X_1583_ _54_ _645_ _646_ _647_ vdd gnd OAI21X1
X_1584_ _647_ _721_ _730_ _648_ vdd gnd AOI21X1
X_1585_ _600_ _730_ _642_ _648_ _13_ vdd 
+ gnd
+ AOI22X1
X_1586_ _924_[5] _649_ vdd gnd INVX1
X_1587_ _609_ _606_ _611_ _650_ vdd gnd AOI21X1
X_1588_ _605_ _562_ _651_ vdd gnd NOR2X1
X_1589_ _607_ _651_ _652_ vdd gnd NAND2X1
X_1590_ _605_ _165_ _429_ _562_ _653_ vdd 
+ gnd
+ OAI22X1
X_1591_ _653_ _652_ _654_ vdd gnd NAND2X1
X_1592_ _616_ _654_ _655_ vdd gnd OR2X2
X_1593_ _566_ _613_ _654_ _656_ vdd gnd OAI21X1
X_1594_ _656_ _655_ _657_ vdd gnd NAND2X1
X_1595_ _650_ _657_ _658_ vdd gnd NAND2X1
X_1596_ _657_ _650_ _659_ vdd gnd OR2X2
X_1597_ _658_ _659_ _660_ vdd gnd NAND2X1
X_1598_ _621_ _623_ _660_ _661_ vdd gnd NAND3X1
X_1599_ _604_ _619_ _621_ _662_ vdd gnd OAI21X1
X_1600_ _658_ _659_ _662_ _663_ vdd gnd NAND3X1
X_1601_ _663_ _661_ _664_ vdd gnd NAND2X1
X_1602_ _664_ _627_ _665_ vdd gnd NOR2X1
X_1603_ _636_ _665_ _638_ _666_ vdd gnd NAND3X1
X_1604_ _634_ _636_ _638_ _667_ vdd gnd NAND3X1
X_1605_ _626_ _664_ _667_ _668_ vdd gnd NAND3X1
X_1606_ _401_ _669_ vdd gnd INVX1
X_1607_ _664_ _626_ _670_ vdd gnd OR2X2
X_1608_ _670_ _669_ _671_ vdd gnd AND2X2
X_1609_ _666_ _671_ _668_ _672_ vdd gnd NAND3X1
X_1610_ _285_ _306_ _303_ _673_ vdd gnd AOI21X1
X_1611_ _673_ _308_ ABCmd_i[7] _674_ vdd gnd OAI21X1
X_1612_ ACC[5] _675_ vdd gnd INVX1
X_1613_ _54_ _675_ state[1] _676_ vdd gnd AOI21X1
X_1614_ _674_ _676_ _730_ _677_ vdd gnd AOI21X1
X_1615_ _649_ _730_ _672_ _677_ _14_ vdd 
+ gnd
+ AOI22X1
X_1616_ _924_[6] _678_ vdd gnd INVX1
X_1617_ _626_ _664_ _663_ _679_ vdd gnd OAI21X1
X_1618_ _679_ _680_ vdd gnd INVX1
X_1619_ _650_ _657_ _655_ _681_ vdd gnd OAI21X1
X_1620_ _681_ _682_ vdd gnd INVX1
X_1621_ _429_ _165_ _651_ _683_ vdd gnd OAI21X1
X_1622_ _682_ _683_ _684_ vdd gnd OR2X2
X_1623_ _683_ _682_ _685_ vdd gnd NAND2X1
X_1624_ _685_ _684_ _686_ vdd gnd NAND2X1
X_1625_ _686_ _680_ _666_ _687_ vdd gnd NAND3X1
X_1626_ _627_ _664_ _688_ vdd gnd OR2X2
X_1627_ _632_ _630_ _688_ _689_ vdd gnd AOI21X1
X_1628_ _686_ _690_ vdd gnd INVX1
X_1629_ _679_ _689_ _690_ _691_ vdd gnd OAI21X1
X_1630_ _669_ _687_ _691_ _692_ vdd gnd NAND3X1
X_1631_ _309_ _385_ _308_ _693_ vdd gnd NAND3X1
X_1632_ _287_ _386_ _307_ _694_ vdd gnd OAI21X1
X_1633_ _693_ _694_ _695_ vdd gnd NAND2X1
X_1634_ ACC[6] _54_ _696_ vdd gnd NAND2X1
X_1635_ _54_ _695_ _696_ _697_ vdd gnd OAI21X1
X_1636_ _697_ _721_ _730_ _698_ vdd gnd AOI21X1
X_1637_ _678_ _730_ _692_ _698_ _15_ vdd 
+ gnd
+ AOI22X1
X_1638_ _924_[7] _699_ vdd gnd INVX1
X_1639_ _666_ _680_ _686_ _700_ vdd gnd AOI21X1
X_1640_ _683_ _682_ _652_ _701_ vdd gnd OAI21X1
X_1641_ _701_ _700_ _669_ _702_ vdd gnd OAI21X1
X_1642_ _381_ _247_ _387_ _703_ vdd gnd NAND3X1
X_1643_ _246_ _269_ _310_ _704_ vdd gnd OAI21X1
X_1644_ _704_ _703_ _705_ vdd gnd NAND2X1
X_1645_ AN _54_ _706_ vdd gnd NAND2X1
X_1646_ _54_ _705_ _706_ _707_ vdd gnd OAI21X1
X_1647_ _707_ _721_ _730_ _708_ vdd gnd AOI21X1
X_1648_ _699_ _730_ _702_ _708_ _16_ vdd 
+ gnd
+ AOI22X1
X_1649_ AI[0] _723__bF$buf3 _709_ vdd gnd NAND2X1
X_1650_ _40_ _723__bF$buf2 _709_ _17_ vdd gnd OAI21X1
X_1651_ AI[1] _723__bF$buf1 _710_ vdd gnd NAND2X1
X_1652_ _42_ _723__bF$buf0 _710_ _18_ vdd gnd OAI21X1
X_1653_ AI[2] _723__bF$buf3 _711_ vdd gnd NAND2X1
X_1654_ _44_ _723__bF$buf2 _711_ _19_ vdd gnd OAI21X1
X_1655_ AI[3] _723__bF$buf1 _712_ vdd gnd NAND2X1
X_1656_ _46_ _723__bF$buf0 _712_ _20_ vdd gnd OAI21X1
X_1657_ AI[4] _723__bF$buf3 _713_ vdd gnd NAND2X1
X_1658_ _48_ _723__bF$buf2 _713_ _21_ vdd gnd OAI21X1
X_1659_ AI[5] _723__bF$buf1 _714_ vdd gnd NAND2X1
X_1660_ _50_ _723__bF$buf0 _714_ _22_ vdd gnd OAI21X1
X_1661_ AI[6] _723__bF$buf3 _715_ vdd gnd NAND2X1
X_1662_ _52_ _723__bF$buf2 _715_ _23_ vdd gnd OAI21X1
X_1663_ \u_ALU8.AI7\ _723__bF$buf1 _716_ vdd gnd NAND2X1
X_1664_ _54_ _723__bF$buf0 _716_ _24_ vdd gnd OAI21X1
X_1665_ _1_ clk_bF$buf4 BI[0] vdd gnd DFFPOSX1
X_1666_ _2_ clk_bF$buf3 BI[1] vdd gnd DFFPOSX1
X_1667_ _3_ clk_bF$buf2 BI[2] vdd gnd DFFPOSX1
X_1668_ _4_ clk_bF$buf1 BI[3] vdd gnd DFFPOSX1
X_1669_ _5_ clk_bF$buf0 BI[4] vdd gnd DFFPOSX1
X_1670_ _6_ clk_bF$buf4 BI[5] vdd gnd DFFPOSX1
X_1671_ _7_ clk_bF$buf3 BI[6] vdd gnd DFFPOSX1
X_1672_ _8_ clk_bF$buf2 BI[7] vdd gnd DFFPOSX1
X_1673_ _9_ clk_bF$buf1 _924_[0] vdd gnd DFFPOSX1
X_1674_ _10_ clk_bF$buf0 _924_[1] vdd gnd DFFPOSX1
X_1675_ _11_ clk_bF$buf4 _924_[2] vdd gnd DFFPOSX1
X_1676_ _12_ clk_bF$buf3 _924_[3] vdd gnd DFFPOSX1
X_1677_ _13_ clk_bF$buf2 _924_[4] vdd gnd DFFPOSX1
X_1678_ _14_ clk_bF$buf1 _924_[5] vdd gnd DFFPOSX1
X_1679_ _15_ clk_bF$buf0 _924_[6] vdd gnd DFFPOSX1
X_1680_ _16_ clk_bF$buf4 _924_[7] vdd gnd DFFPOSX1
X_1681_ _17_ clk_bF$buf3 AI[0] vdd gnd DFFPOSX1
X_1682_ _18_ clk_bF$buf2 AI[1] vdd gnd DFFPOSX1
X_1683_ _19_ clk_bF$buf1 AI[2] vdd gnd DFFPOSX1
X_1684_ _20_ clk_bF$buf0 AI[3] vdd gnd DFFPOSX1
X_1685_ _21_ clk_bF$buf4 AI[4] vdd gnd DFFPOSX1
X_1686_ _22_ clk_bF$buf3 AI[5] vdd gnd DFFPOSX1
X_1687_ _23_ clk_bF$buf2 AI[6] vdd gnd DFFPOSX1
X_1688_ _24_ clk_bF$buf1 \u_ALU8.AI7\ vdd gnd DFFPOSX1
X_1689_ vdd _0_ _926_[0] clk_bF$buf0 state[0] vdd 
+ gnd
+ DFFSR
X_1690_ _0_ vdd _926_[1] clk_bF$buf4 state[1] vdd 
+ gnd
+ DFFSR
X_1691_ _0_ vdd _926_[2] clk_bF$buf3 state[2] vdd 
+ gnd
+ DFFSR
X_1692_ ABCmd_i_2_bF$buf3 _862_ vdd gnd INVX1
X_1693_ ABCmd_i[3] _863_ vdd gnd INVX4
X_1694_ _862_ _863_ ABCmd_i[4] _864_ vdd gnd OAI21X1
X_1695_ ABCmd_i[5] _864_ _865_ vdd gnd NOR2X1
X_1696_ _865_ _866_ vdd gnd INVX1
X_1697_ ABCmd_i[1] _867_ vdd gnd INVX2
X_1698_ ABCmd_i[0] _867_ _868_ vdd gnd NAND2X1
X_1699_ ABCmd_i[0] _869_ vdd gnd INVX2
X_1700_ BI_0_bF$buf3 _869_ _870_ vdd gnd NAND2X1
X_1701_ AI[0] ABCmd_i[1] _871_ vdd gnd NAND2X1
X_1702_ BI_0_bF$buf2 _871_ _868_ _870_ _872_ vdd 
+ gnd
+ AOI22X1
X_1703_ ABCmd_i[5] _873_ vdd gnd INVX2
X_1704_ BI_0_bF$buf1 _874_ vdd gnd INVX1
X_1705_ AI[0] _875_ vdd gnd INVX1
X_1706_ ABCmd_i[0] _874_ _875_ _876_ vdd gnd OAI21X1
X_1707_ _873_ _876_ _877_ vdd gnd NAND2X1
X_1708_ AI[1] ABCmd_i[5] _878_ vdd gnd NAND2X1
X_1709_ _872_ _877_ _878_ _879_ vdd gnd OAI21X1
X_1710_ BI_0_bF$buf0 ABCmd_i_2_bF$buf2 _863_ _880_ vdd gnd OAI21X1
X_1711_ BI_0_bF$buf3 ABCmd_i_2_bF$buf1 _880_ _881_ vdd gnd AOI21X1
X_1712_ ABCmd_i_2_bF$buf0 _863_ _882_ vdd gnd NOR2X1
X_1713_ _882_ _881_ _879_ _883_ vdd gnd OAI21X1
X_1714_ _879_ _881_ _883_ _884_ vdd gnd OAI21X1
X_1715_ _884_ _866_ _885_ vdd gnd OR2X2
X_1716_ ABCmd_i[5] _864_ _884_ _886_ vdd gnd OAI21X1
X_1717_ _886_ _885_ _887_ vdd gnd NAND2X1
X_1718_ _887_ ACC[0] vdd gnd INVX1
X_1719_ _881_ _879_ _888_ vdd gnd NOR2X1
X_1720_ _866_ _888_ _883_ _889_ vdd gnd OAI21X1
X_1721_ ABCmd_i[5] AI[2] _890_ vdd gnd NAND2X1
X_1722_ AI[1] BI_1_bF$buf2 _869_ _891_ vdd gnd NAND3X1
X_1723_ _867_ BI_1_bF$buf1 _891_ _868_ _892_ vdd 
+ gnd
+ AOI22X1
X_1724_ BI_1_bF$buf0 _893_ vdd gnd INVX1
X_1725_ ABCmd_i[0] _893_ _894_ vdd gnd NOR2X1
X_1726_ AI[1] _894_ _873_ _895_ vdd gnd OAI21X1
X_1727_ _892_ _895_ _890_ _896_ vdd gnd OAI21X1
X_1728_ ABCmd_i_2_bF$buf3 BI_1_bF$buf3 _863_ _897_ vdd gnd OAI21X1
X_1729_ ABCmd_i_2_bF$buf2 BI_1_bF$buf2 _897_ _898_ vdd gnd AOI21X1
X_1730_ _898_ _899_ vdd gnd INVX1
X_1731_ ABCmd_i_2_bF$buf1 _863_ _899_ _900_ vdd gnd OAI21X1
X_1732_ _900_ _899_ _896_ _901_ vdd gnd MUX2X1
X_1733_ _901_ _889_ _902_ vdd gnd NAND2X1
X_1734_ _881_ _903_ vdd gnd INVX1
X_1735_ ABCmd_i_2_bF$buf0 _863_ _903_ _904_ vdd gnd OAI21X1
X_1736_ ABCmd_i[1] _874_ ABCmd_i[0] _905_ vdd gnd MUX2X1
X_1737_ _875_ _867_ BI_0_bF$buf2 _906_ vdd gnd OAI21X1
X_1738_ _906_ _905_ _907_ vdd gnd NAND2X1
X_1739_ _873_ _876_ _907_ _908_ vdd gnd NAND3X1
X_1740_ _878_ _903_ _908_ _909_ vdd gnd NAND3X1
X_1741_ _879_ _904_ _909_ _865_ _910_ vdd 
+ gnd
+ AOI22X1
X_1742_ _882_ _898_ _896_ _911_ vdd gnd OAI21X1
X_1743_ _896_ _898_ _911_ _912_ vdd gnd OAI21X1
X_1744_ _910_ _912_ _913_ vdd gnd NAND2X1
X_1745_ _913_ _902_ _914_ vdd gnd NAND2X1
X_1746_ _914_ ACC[1] vdd gnd INVX1
X_1747_ _898_ _896_ _915_ vdd gnd NOR2X1
X_1748_ _915_ _910_ _911_ _916_ vdd gnd OAI21X1
X_1749_ ABCmd_i[5] AI[3] _917_ vdd gnd NAND2X1
X_1750_ BI[2] _918_ vdd gnd INVX1
X_1751_ ABCmd_i[0] _918_ _919_ vdd gnd NOR2X1
X_1752_ AI[2] _919_ _920_ vdd gnd NAND2X1
X_1753_ _867_ BI[2] _920_ _868_ _921_ vdd 
+ gnd
+ AOI22X1
X_1754_ AI[2] _919_ _873_ _922_ vdd gnd OAI21X1
X_1755_ _922_ _921_ _917_ _923_ vdd gnd OAI21X1
X_1756_ ABCmd_i_2_bF$buf3 BI[2] _863_ _734_ vdd gnd OAI21X1
X_1757_ ABCmd_i_2_bF$buf2 BI[2] _734_ _735_ vdd gnd AOI21X1
X_1758_ _735_ _736_ vdd gnd INVX1
X_1759_ ABCmd_i_2_bF$buf1 _863_ _736_ _737_ vdd gnd OAI21X1
X_1760_ _737_ _736_ _923_ _738_ vdd gnd MUX2X1
X_1761_ _738_ _916_ _739_ vdd gnd NAND2X1
X_1762_ _882_ _735_ _923_ _740_ vdd gnd OAI21X1
X_1763_ _923_ _735_ _740_ _741_ vdd gnd OAI21X1
X_1764_ _911_ _741_ _902_ _742_ vdd gnd NAND3X1
X_1765_ _739_ _742_ _743_ vdd gnd NAND2X1
X_1766_ _743_ ACC[2] vdd gnd INVX1
X_1767_ _740_ _744_ vdd gnd INVX1
X_1768_ _916_ _738_ _745_ vdd gnd AND2X2
X_1769_ ABCmd_i[5] AI[4] _746_ vdd gnd NAND2X1
X_1770_ _869_ BI_3_bF$buf0 _747_ vdd gnd AND2X2
X_1771_ AI[3] _747_ _748_ vdd gnd NAND2X1
X_1772_ _867_ BI_3_bF$buf3 _748_ _868_ _749_ vdd 
+ gnd
+ AOI22X1
X_1773_ AI[3] _747_ _873_ _750_ vdd gnd OAI21X1
X_1774_ _750_ _749_ _746_ _751_ vdd gnd OAI21X1
X_1775_ ABCmd_i_2_bF$buf0 BI_3_bF$buf2 _863_ _752_ vdd gnd OAI21X1
X_1776_ ABCmd_i_2_bF$buf3 BI_3_bF$buf1 _752_ _753_ vdd gnd AOI21X1
X_1777_ _882_ _753_ _751_ _754_ vdd gnd OAI21X1
X_1778_ _751_ _753_ _754_ _755_ vdd gnd OAI21X1
X_1779_ _755_ _756_ vdd gnd INVX1
X_1780_ _744_ _745_ _756_ _757_ vdd gnd OAI21X1
X_1781_ _740_ _755_ _739_ _758_ vdd gnd NAND3X1
X_1782_ _758_ _757_ _759_ vdd gnd NAND2X1
X_1783_ _759_ ACC[3] vdd gnd INVX1
X_1784_ ABCmd_i[6] _760_ vdd gnd INVX1
X_1785_ _743_ _914_ _760_ _761_ vdd gnd AOI21X1
X_1786_ _757_ _758_ _761_ _762_ vdd gnd NAND3X1
X_1787_ _740_ _739_ _763_ vdd gnd NAND2X1
X_1788_ _754_ _764_ vdd gnd INVX1
X_1789_ _763_ _756_ _764_ _765_ vdd gnd AOI21X1
X_1790_ ABCmd_i[5] AI[5] _766_ vdd gnd NAND2X1
X_1791_ _869_ BI_4_bF$buf2 _767_ vdd gnd AND2X2
X_1792_ AI[4] _767_ _768_ vdd gnd NAND2X1
X_1793_ _867_ BI_4_bF$buf1 _768_ _868_ _769_ vdd 
+ gnd
+ AOI22X1
X_1794_ AI[4] _767_ _873_ _770_ vdd gnd OAI21X1
X_1795_ _770_ _769_ _766_ _771_ vdd gnd OAI21X1
X_1796_ ABCmd_i_2_bF$buf2 BI_4_bF$buf0 _863_ _772_ vdd gnd OAI21X1
X_1797_ ABCmd_i_2_bF$buf1 BI_4_bF$buf3 _772_ _773_ vdd gnd AOI21X1
X_1798_ _882_ _773_ _771_ _774_ vdd gnd OAI21X1
X_1799_ _771_ _773_ _774_ _775_ vdd gnd OAI21X1
X_1800_ _762_ _765_ _775_ _776_ vdd gnd AOI21X1
X_1801_ _738_ _916_ _777_ vdd gnd NOR2X1
X_1802_ _777_ _745_ _914_ _778_ vdd gnd OAI21X1
X_1803_ ABCmd_i[6] _778_ _779_ vdd gnd NAND2X1
X_1804_ _759_ _779_ _765_ HC vdd gnd OAI21X1
X_1805_ _775_ _780_ vdd gnd INVX1
X_1806_ _780_ HC _781_ vdd gnd NOR2X1
X_1807_ _776_ _781_ ACC[4] vdd gnd NOR2X1
X_1808_ _774_ _782_ vdd gnd INVX1
X_1809_ ABCmd_i[5] AI[6] _783_ vdd gnd NAND2X1
X_1810_ _869_ BI[5] _784_ vdd gnd AND2X2
X_1811_ AI[5] _784_ _785_ vdd gnd NAND2X1
X_1812_ _867_ BI[5] _785_ _868_ _786_ vdd 
+ gnd
+ AOI22X1
X_1813_ AI[5] _784_ _873_ _787_ vdd gnd OAI21X1
X_1814_ _787_ _786_ _783_ _788_ vdd gnd OAI21X1
X_1815_ ABCmd_i_2_bF$buf0 BI[5] _863_ _789_ vdd gnd OAI21X1
X_1816_ ABCmd_i_2_bF$buf3 BI[5] _789_ _790_ vdd gnd AOI21X1
X_1817_ _882_ _790_ _788_ _791_ vdd gnd OAI21X1
X_1818_ _788_ _790_ _791_ _792_ vdd gnd OAI21X1
X_1819_ _782_ _776_ _792_ _793_ vdd gnd OAI21X1
X_1820_ HC _780_ _782_ _794_ vdd gnd AOI21X1
X_1821_ _792_ _795_ vdd gnd INVX1
X_1822_ _795_ _794_ _796_ vdd gnd NAND2X1
X_1823_ _793_ _796_ ACC[5] vdd gnd NAND2X1
X_1824_ _792_ _794_ _791_ _797_ vdd gnd OAI21X1
X_1825_ \u_ALU8.AI7\ _798_ vdd gnd INVX1
X_1826_ _869_ BI[6] _799_ vdd gnd AND2X2
X_1827_ AI[6] _799_ _800_ vdd gnd NAND2X1
X_1828_ _867_ BI[6] _800_ _868_ _801_ vdd 
+ gnd
+ AOI22X1
X_1829_ AI[6] _799_ _873_ _802_ vdd gnd OAI21X1
X_1830_ _873_ _798_ _802_ _801_ _803_ vdd 
+ gnd
+ OAI22X1
X_1831_ ABCmd_i_2_bF$buf2 BI[6] _863_ _804_ vdd gnd OAI21X1
X_1832_ ABCmd_i_2_bF$buf1 BI[6] _804_ _805_ vdd gnd AOI21X1
X_1833_ _882_ _805_ _803_ _806_ vdd gnd OAI21X1
X_1834_ _803_ _805_ _806_ _807_ vdd gnd OAI21X1
X_1835_ _807_ _797_ _808_ vdd gnd NAND2X1
X_1836_ _782_ _776_ _795_ _809_ vdd gnd OAI21X1
X_1837_ _807_ _810_ vdd gnd INVX1
X_1838_ _791_ _810_ _809_ _811_ vdd gnd NAND3X1
X_1839_ _811_ _808_ ACC[6] vdd gnd NAND2X1
X_1840_ _806_ _812_ vdd gnd INVX1
X_1841_ _809_ _791_ _807_ _813_ vdd gnd AOI21X1
X_1842_ ABCmd_i[5] ABCmd_i[4] _814_ vdd gnd NAND2X1
X_1843_ _869_ BI[7] _815_ vdd gnd AND2X2
X_1844_ \u_ALU8.AI7\ _815_ _816_ vdd gnd NAND2X1
X_1845_ _867_ BI[7] _816_ _868_ _817_ vdd 
+ gnd
+ AOI22X1
X_1846_ \u_ALU8.AI7\ _815_ _873_ _818_ vdd gnd OAI21X1
X_1847_ _818_ _817_ _814_ _819_ vdd gnd OAI21X1
X_1848_ ABCmd_i_2_bF$buf0 BI[7] _863_ _820_ vdd gnd OAI21X1
X_1849_ ABCmd_i_2_bF$buf3 BI[7] _820_ _821_ vdd gnd AOI21X1
X_1850_ _882_ _821_ _819_ _822_ vdd gnd OAI21X1
X_1851_ _819_ _821_ _822_ _823_ vdd gnd OAI21X1
X_1852_ _812_ _813_ _823_ _824_ vdd gnd OAI21X1
X_1853_ _810_ _797_ _825_ vdd gnd NAND2X1
X_1854_ _823_ _826_ vdd gnd INVX1
X_1855_ _806_ _826_ _825_ _827_ vdd gnd NAND3X1
X_1856_ _827_ _824_ AN vdd gnd NAND2X1
X_1857_ ACC[0] _778_ _828_ vdd gnd NOR2X1
X_1858_ _759_ _828_ _829_ vdd gnd NAND2X1
X_1859_ _829_ ACC[4] _830_ vdd gnd NOR2X1
X_1860_ ACC[5] _831_ vdd gnd INVX1
X_1861_ _811_ _808_ _831_ _832_ vdd gnd NAND3X1
X_1862_ _832_ AN _833_ vdd gnd NOR2X1
X_1863_ _833_ _830_ AZ vdd gnd AND2X2
X_1864_ _806_ _823_ _825_ _834_ vdd gnd NAND3X1
X_1865_ _812_ _813_ _826_ _835_ vdd gnd OAI21X1
X_1866_ _834_ _835_ _836_ vdd gnd NAND2X1
X_1867_ ACC[5] ACC[6] ABCmd_i[6] _837_ vdd gnd OAI21X1
X_1868_ _875_ _873_ _838_ vdd gnd NOR2X1
X_1869_ _806_ _823_ _822_ _839_ vdd gnd OAI21X1
X_1870_ _839_ _840_ vdd gnd INVX1
X_1871_ _810_ _826_ _797_ _841_ vdd gnd NAND3X1
X_1872_ _838_ _840_ _841_ _842_ vdd gnd NAND3X1
X_1873_ _838_ _843_ vdd gnd INVX1
X_1874_ _826_ _810_ _844_ vdd gnd NAND2X1
X_1875_ _809_ _791_ _844_ _845_ vdd gnd AOI21X1
X_1876_ _839_ _845_ _843_ _846_ vdd gnd OAI21X1
X_1877_ _846_ _842_ _847_ vdd gnd AND2X2
X_1878_ _836_ _837_ _847_ CO vdd gnd OAI21X1
X_1879_ ABCmd_i[6] _832_ AN _848_ vdd gnd NAND3X1
X_1880_ _821_ _849_ vdd gnd INVX1
X_1881_ _882_ _819_ _850_ vdd gnd NAND2X1
X_1882_ _850_ _849_ _798_ _851_ vdd gnd AOI21X1
X_1883_ _849_ _850_ _852_ vdd gnd NAND2X1
X_1884_ \u_ALU8.AI7\ _852_ _853_ vdd gnd NOR2X1
X_1885_ _851_ _853_ _854_ vdd gnd NOR2X1
X_1886_ _827_ _854_ _824_ _855_ vdd gnd NAND3X1
X_1887_ _854_ _856_ vdd gnd INVX1
X_1888_ _834_ _856_ _835_ _857_ vdd gnd NAND3X1
X_1889_ _855_ _857_ _858_ vdd gnd NAND2X1
X_1890_ _847_ _848_ _858_ _859_ vdd gnd NAND3X1
X_1891_ _855_ _857_ _860_ vdd gnd AND2X2
X_1892_ CO _860_ _861_ vdd gnd NAND2X1
X_1893_ _859_ _861_ AV vdd gnd NAND2X1
X_1894_ _924_[0] ACC_o[0] vdd gnd BUFX2
X_1895_ _924_[1] ACC_o[1] vdd gnd BUFX2
X_1896_ _924_[2] ACC_o[2] vdd gnd BUFX2
X_1897_ _924_[3] ACC_o[3] vdd gnd BUFX2
X_1898_ _924_[4] ACC_o[4] vdd gnd BUFX2
X_1899_ _924_[5] ACC_o[5] vdd gnd BUFX2
X_1900_ _924_[6] ACC_o[6] vdd gnd BUFX2
X_1901_ _924_[7] ACC_o[7] vdd gnd BUFX2
X_1902_ _925_ Done_o vdd gnd BUFX2
X_927_ state[2] _717_ vdd gnd INVX1
X_928_ state[0] _717_ _718_ vdd gnd NOR2X1
X_929_ state[1] _718_ _719_ vdd gnd NAND2X1
X_930_ _719_ _925_ vdd gnd INVX1
X_931_ state[0] _720_ vdd gnd INVX1
X_932_ state[1] _721_ vdd gnd INVX2
X_933_ state[2] _721_ _722_ vdd gnd NOR2X1
X_934_ _720_ _722_ _723_ vdd gnd NAND2X1
X_935_ _723__bF$buf3 _724_ vdd gnd INVX1
X_936_ state[2] _720_ _725_ vdd gnd NOR2X1
X_937_ _721_ _725_ _925_ _726_ vdd gnd AOI21X1
X_938_ LoadCmd_i _726_ _727_ vdd gnd NOR2X1
X_939_ _724_ _727_ LoadB_i _728_ vdd gnd OAI21X1
X_940_ LoadA_i _729_ vdd gnd INVX1
X_941_ _718_ _730_ vdd gnd INVX4
X_942_ state[1] state[0] _717_ _731_ vdd gnd OAI21X1
X_943_ LoadB_i _732_ vdd gnd INVX1
X_944_ state[1] _730_ _733_ vdd gnd NOR2X1
X_945_ _733_ _25_ vdd gnd INVX1
X_946_ LoadCmd_i _26_ vdd gnd INVX1
X_947_ _725_ _925_ _26_ _27_ vdd gnd OAI21X1
X_948_ _732_ _25_ _27_ _28_ vdd gnd OAI21X1
X_949_ _730_ _731_ _28_ _729_ _29_ vdd 
+ gnd
+ AOI22X1
X_950_ _29_ _728_ _926_[0] vdd gnd NAND2X1
X_951_ LoadA_i LoadB_i _26_ _30_ vdd gnd OAI21X1
X_952_ _30_ _726_ _25_ _31_ vdd gnd OAI21X1
X_953_ state[1] _725_ _32_ vdd gnd NAND2X1
X_954_ LoadA_i _26_ _33_ vdd gnd NOR2X1
X_955_ LoadB_i _26_ _34_ vdd gnd NOR2X1
X_956_ _33_ _32__bF$buf3 _723__bF$buf2 _34_ _35_ vdd 
+ gnd
+ OAI22X1
X_957_ _31_ _35_ _926_[1] vdd gnd OR2X2
X_958_ _32__bF$buf2 _36_ vdd gnd INVX1
X_959_ _36_ _33_ _724_ _34_ _37_ vdd 
+ gnd
+ AOI22X1
X_960_ _729_ _732_ _733_ _38_ vdd gnd NAND3X1
X_961_ _37_ _38_ _39_ vdd gnd AND2X2
X_962_ _26_ _726_ _39_ _926_[2] vdd gnd OAI21X1
X_963_ reset _0_ vdd gnd INVX1
X_964_ ABCmd_i[0] _40_ vdd gnd INVX1
X_965_ BI_0_bF$buf1 _32__bF$buf1 _41_ vdd gnd NAND2X1
X_966_ _40_ _32__bF$buf0 _41_ _1_ vdd gnd OAI21X1
X_967_ ABCmd_i[1] _42_ vdd gnd INVX1
X_968_ BI_1_bF$buf1 _32__bF$buf3 _43_ vdd gnd NAND2X1
X_969_ _42_ _32__bF$buf2 _43_ _2_ vdd gnd OAI21X1
X_970_ ABCmd_i_2_bF$buf2 _44_ vdd gnd INVX1
X_971_ BI[2] _32__bF$buf1 _45_ vdd gnd NAND2X1
X_972_ _44_ _32__bF$buf0 _45_ _3_ vdd gnd OAI21X1
X_973_ ABCmd_i[3] _46_ vdd gnd INVX1
X_974_ BI_3_bF$buf0 _32__bF$buf3 _47_ vdd gnd NAND2X1
X_975_ _46_ _32__bF$buf2 _47_ _4_ vdd gnd OAI21X1
X_976_ ABCmd_i[4] _48_ vdd gnd INVX1
X_977_ BI_4_bF$buf2 _32__bF$buf1 _49_ vdd gnd NAND2X1
X_978_ _48_ _32__bF$buf0 _49_ _5_ vdd gnd OAI21X1
X_979_ ABCmd_i[5] _50_ vdd gnd INVX1
X_980_ BI[5] _32__bF$buf3 _51_ vdd gnd NAND2X1
X_981_ _50_ _32__bF$buf2 _51_ _6_ vdd gnd OAI21X1
X_982_ ABCmd_i[6] _52_ vdd gnd INVX1
X_983_ BI[6] _32__bF$buf1 _53_ vdd gnd NAND2X1
X_984_ _52_ _32__bF$buf0 _53_ _7_ vdd gnd OAI21X1
X_985_ ABCmd_i[7] _54_ vdd gnd INVX4
X_986_ BI[7] _32__bF$buf3 _55_ vdd gnd NAND2X1
X_987_ _54_ _32__bF$buf2 _55_ _8_ vdd gnd OAI21X1
X_988_ _924_[0] _56_ vdd gnd INVX1
X_989_ AI[0] _57_ vdd gnd INVX1
X_990_ BI_3_bF$buf3 _58_ vdd gnd INVX2
X_991_ _57_ _58_ _59_ vdd gnd NOR2X1
X_992_ BI_4_bF$buf1 AI[1] _60_ vdd gnd AND2X2
X_993_ _60_ _59_ _61_ vdd gnd NAND2X1
X_994_ BI_1_bF$buf0 AI[2] _62_ vdd gnd NAND2X1
X_995_ BI_0_bF$buf0 AI[3] _63_ vdd gnd NAND2X1
X_996_ _62_ _63_ _64_ vdd gnd OR2X2
X_997_ BI[2] AI[1] _65_ vdd gnd NAND2X1
X_998_ _62_ _63_ _66_ vdd gnd AND2X2
X_999_ _65_ _66_ _64_ _67_ vdd gnd OAI21X1

.ends
.end
