*SPICE netlist created from verilog structural netlist module cpu by vlog2Spice (qflow)
*This file may contain array delimiters, not for use in simulation.

** Start of included library /usr/local/share/qflow/tech/etri050/etri050_stdcells.sp
* NGSPICE file created from khu_etri050_stdcells.ext - technology: scmos

.subckt CLKBUF3 A Y vdd gnd
M1000 a_64_14# a_24_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 vdd a_264_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1002 a_144_14# a_104_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 gnd a_144_14# a_184_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1004 a_184_14# a_144_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1005 a_104_14# a_64_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1006 a_144_14# a_104_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1007 a_264_14# a_224_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1008 gnd a_264_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1009 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1010 a_64_14# a_24_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1011 a_24_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1012 gnd a_24_14# a_64_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1013 a_224_14# a_184_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1014 a_264_14# a_224_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1015 a_104_14# a_64_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1016 gnd a_104_14# a_144_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1017 a_224_14# a_184_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1018 gnd a_224_14# a_264_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1019 Y a_264_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1020 vdd a_104_14# a_144_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1021 gnd A a_24_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1022 vdd a_64_14# a_104_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1023 gnd a_64_14# a_104_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1024 vdd a_24_14# a_64_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1025 a_184_14# a_144_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1026 vdd A a_24_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1027 vdd a_224_14# a_264_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1028 gnd a_184_14# a_224_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1029 vdd a_184_14# a_224_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1030 Y a_264_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1031 vdd a_144_14# a_184_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt AOI22X1 A B C D Y vdd gnd
M1000 a_26_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1001 Y D a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1002 vdd A a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1003 Y B a_26_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1004 a_56_14# D Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1005 a_6_166# C Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1006 a_6_166# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1007 gnd C a_56_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
.ends

.subckt INVX8 A Y vdd gnd
M1000 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1002 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1003 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1004 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 gnd A Y gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1006 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1007 vdd A Y vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt NOR3X1 A B C Y vdd gnd
M1000 gnd B Y gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1001 a_6_186# B a_64_186# vdd pfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=10.8p ps=11.400001u
M1002 a_6_186# A vdd vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=10.8p ps=11.400001u
M1003 a_64_186# C Y vdd pfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=10.8p ps=11.400001u
M1004 Y C gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1005 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=7.200001p ps=10.8u
M1006 vdd A a_6_186# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=18.900002p ps=22.2u
M1007 a_64_186# B a_6_186# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=10.8p ps=11.400001u
M1008 Y C a_64_186# vdd pfet w=9u l=0.6u
+  ad=10.8p pd=11.400001u as=18.900002p ps=22.2u
.ends

.subckt CLKBUF1 A Y vdd gnd
M1000 a_64_14# a_24_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 Y a_104_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 a_104_14# a_64_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1003 Y a_104_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1004 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1005 a_64_14# a_24_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1006 a_24_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1007 gnd a_24_14# a_64_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1008 a_104_14# a_64_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1009 gnd a_104_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1010 vdd a_104_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1011 gnd A a_24_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1012 vdd a_64_14# a_104_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1013 gnd a_64_14# a_104_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1014 vdd a_24_14# a_64_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1015 vdd A a_24_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt MUX2X1 A B S Y vdd gnd
M1000 a_74_166# a_6_22# Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.490002p ps=15.6u
M1001 vdd S a_6_22# vdd pfet w=6u l=0.6u
+  ad=11.700001p pd=14.400001u as=12.600001p ps=16.2u
M1002 a_74_22# S Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1003 gnd S a_6_22# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=8.400001u as=6.300001p ps=10.200001u
M1004 gnd A a_74_22# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=2.7p ps=6.9u
M1005 Y S a_44_158# vdd pfet w=12u l=0.6u
+  ad=14.490002p pd=15.6u as=5.4p ps=12.900001u
M1006 a_44_22# B gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=6.300001p ps=8.400001u
M1007 a_44_158# B vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=11.700001p ps=14.400001u
M1008 vdd A a_74_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1009 Y a_6_22# a_44_22# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
.ends

.subckt NAND3X1 A B C Y vdd gnd
M1000 a_24_14# A gnd gnd nfet w=9u l=0.6u
+  ad=4.05p pd=9.900001u as=18.900002p ps=22.2u
M1001 vdd B Y vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 a_34_14# B a_24_14# gnd nfet w=9u l=0.6u
+  ad=6.750001p pd=10.500001u as=4.05p ps=9.900001u
M1003 Y C a_34_14# gnd nfet w=9u l=0.6u
+  ad=18.900002p pd=22.2u as=6.750001p ps=10.500001u
M1004 Y C vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
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

.subckt INVX4 A Y vdd gnd
M1000 Y A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1001 Y A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1002 gnd A Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1003 vdd A Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
.ends

.subckt OAI21X1 A B C Y vdd gnd
M1000 Y C a_6_14# gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1001 Y B a_26_166# vdd pfet w=12u l=0.6u
+  ad=12.150001p pd=14.400001u as=9p ps=13.500001u
M1002 vdd C Y vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.150001p ps=14.400001u
M1003 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1004 a_6_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1005 a_26_166# A vdd vdd pfet w=12u l=0.6u
+  ad=9p pd=13.500001u as=25.200003p ps=28.200003u
.ends

.subckt BUFX4 A Y vdd gnd
M1000 gnd a_6_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1001 gnd A a_6_14# gnd nfet w=4.5u l=0.6u
+  ad=6.6375p pd=8.400001u as=9.450001p ps=13.200001u
M1002 vdd a_6_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1003 Y a_6_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=6.6375p ps=8.400001u
M1004 vdd A a_6_14# vdd pfet w=9u l=0.6u
+  ad=13.275001p pd=14.400001u as=18.900002p ps=22.2u
M1005 Y a_6_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=13.275001p ps=14.400001u
.ends

.subckt DFFNEGX1 D CLK Q vdd gnd
M1000 a_76_206# CLK a_56_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.200001p ps=8.400001u
M1001 a_162_14# a_6_14# a_152_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.35p ps=3.9u
M1002 vdd a_82_10# a_76_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1003 a_76_14# a_6_14# a_56_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1004 a_152_206# a_82_10# vdd vdd pfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1005 a_82_10# a_56_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=4.05p ps=5.7u
M1006 gnd CLK a_6_14# gnd nfet w=6u l=0.6u
+  ad=6.075p pd=8.400001u as=12.600001p ps=16.2u
M1007 gnd a_82_10# a_76_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1008 Q a_162_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=11.025002p ps=14.400001u
M1009 vdd CLK a_6_14# vdd pfet w=12u l=0.6u
+  ad=12.150001p pd=14.400001u as=25.200003p ps=28.200003u
M1010 a_182_14# CLK a_162_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=3.6p ps=5.4u
M1011 a_44_206# D vdd vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=12.150001p ps=14.400001u
M1012 a_82_10# a_56_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1013 a_56_14# a_6_14# a_44_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1014 vdd Q a_182_226# vdd pfet w=3u l=0.6u
+  ad=11.025002p pd=14.400001u as=1.35p ps=3.9u
M1015 gnd Q a_182_14# gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.400001u as=1.35p ps=3.9u
M1016 a_44_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.8p pd=4.2u as=6.075p ps=8.400001u
M1017 a_182_226# a_6_14# a_162_14# vdd pfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.400001u
M1018 a_56_14# CLK a_44_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=1.8p ps=4.2u
M1019 a_152_14# a_82_10# gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=6.300001p ps=10.200001u
M1020 Q a_162_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.075p ps=8.400001u
M1021 a_162_14# CLK a_152_206# vdd pfet w=6u l=0.6u
+  ad=5.85p pd=8.400001u as=2.7p ps=6.9u
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

.subckt BUFX2 A Y vdd gnd
M1000 gnd A a_6_14# gnd nfet w=3u l=0.6u
+  ad=6.075p pd=8.400001u as=6.300001p ps=10.200001u
M1001 Y a_6_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.075p ps=8.400001u
M1002 Y a_6_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=12.150001p ps=14.400001u
M1003 vdd A a_6_14# vdd pfet w=6u l=0.6u
+  ad=12.150001p pd=14.400001u as=12.600001p ps=16.2u
.ends

.subckt AOI21X1 A B C Y vdd gnd
M1000 a_28_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1001 Y C a_6_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1002 Y B a_28_14# gnd nfet w=6u l=0.6u
+  ad=6.075p pd=8.400001u as=2.7p ps=6.9u
M1003 vdd A a_6_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1004 gnd C Y gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.075p ps=8.400001u
M1005 a_6_166# B vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
.ends

.subckt INVX2 A Y vdd gnd
M1000 Y A gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1001 Y A vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=25.200003p ps=28.200003u
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
M1000 Y A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1001 a_24_166# A vdd vdd pfet w=12u l=0.6u
+  ad=9p pd=13.500001u as=25.200003p ps=28.200003u
M1002 gnd B Y gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1003 Y B a_24_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=9p ps=13.500001u
.ends

.subckt AND2X1 A B Y vdd gnd
M1000 a_24_14# A a_6_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1001 vdd B a_6_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 gnd B a_24_14# gnd nfet w=6u l=0.6u
+  ad=6.075p pd=8.400001u as=2.7p ps=6.9u
M1003 Y a_6_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.075p ps=8.400001u
M1004 Y a_6_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 a_6_14# A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt DFFPOSX1 D CLK Q vdd gnd
M1000 a_189_226# CLK a_165_14# vdd pfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.075p ps=8.400001u
M1001 a_87_10# a_59_14# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1002 a_59_14# CLK a_49_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=5.4p ps=7.8u
M1003 a_87_10# a_59_14# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=4.05p ps=5.7u
M1004 a_165_14# a_11_14# a_161_206# vdd pfet w=6u l=0.6u
+  ad=6.075p pd=8.400001u as=1.8p ps=6.6u
M1005 gnd CLK a_11_14# gnd nfet w=6u l=0.6u
+  ad=5.85p pd=8.400001u as=12.600001p ps=16.2u
M1006 gnd a_87_10# a_81_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1007 Q a_165_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.975p ps=8.700001u
M1008 a_157_14# a_87_10# gnd gnd nfet w=3u l=0.6u
+  ad=0.9p pd=3.6u as=6.300001p ps=10.200001u
M1009 vdd CLK a_11_14# vdd pfet w=12u l=0.6u
+  ad=11.250001p pd=14.400001u as=25.200003p ps=28.200003u
M1010 a_49_206# D vdd vdd pfet w=6u l=0.6u
+  ad=5.4p pd=7.8u as=11.250001p ps=14.400001u
M1011 vdd Q a_189_226# vdd pfet w=3u l=0.6u
+  ad=10.125001p pd=14.700001u as=0.9p ps=3.6u
M1012 a_165_14# CLK a_157_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=0.9p ps=3.6u
M1013 a_49_14# D gnd gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=5.85p ps=8.400001u
M1014 a_85_206# a_11_14# a_59_14# vdd pfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=7.200001p ps=8.400001u
M1015 Q a_165_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=10.125001p ps=14.700001u
M1016 vdd a_87_10# a_85_206# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=3.6p ps=7.2u
M1017 a_59_14# a_11_14# a_49_14# gnd nfet w=3u l=0.6u
+  ad=4.05p pd=5.7u as=1.35p ps=3.9u
M1018 a_161_206# a_87_10# vdd vdd pfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=12.600001p ps=16.2u
M1019 a_187_14# a_11_14# a_165_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.05p ps=5.7u
M1020 gnd Q a_187_14# gnd nfet w=3u l=0.6u
+  ad=6.975p pd=8.700001u as=1.35p ps=3.9u
M1021 a_81_14# CLK a_59_14# gnd nfet w=3u l=0.6u
+  ad=1.35p pd=3.9u as=4.05p ps=5.7u
.ends

.subckt NAND2X1 A B Y vdd gnd
M1000 a_26_14# A gnd gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1001 vdd B Y vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1002 Y B a_26_14# gnd nfet w=6u l=0.6u
+  ad=16.2p pd=17.400002u as=2.7p ps=6.9u
M1003 Y A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt OR2X1 A B Y vdd gnd
M1000 Y a_6_166# gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1001 vdd B a_24_166# vdd pfet w=12u l=0.6u
+  ad=15.300001p pd=15.000001u as=5.4p ps=12.900001u
M1002 a_6_166# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1003 a_24_166# A a_6_166# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1004 gnd B a_6_166# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1005 Y a_6_166# vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=15.300001p ps=15.000001u
.ends

.subckt CLKBUF2 A Y vdd gnd
M1000 a_64_14# a_24_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 a_144_14# a_104_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1002 gnd a_144_14# a_184_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1003 a_184_14# a_144_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1004 a_104_14# a_64_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1005 a_144_14# a_104_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1006 a_24_14# A gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1007 a_64_14# a_24_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1008 a_24_14# A vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1009 gnd a_24_14# a_64_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1010 Y a_184_14# vdd vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1011 a_104_14# a_64_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1012 gnd a_104_14# a_144_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1013 Y a_184_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1014 vdd a_104_14# a_144_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1015 gnd A a_24_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1016 vdd a_64_14# a_104_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1017 gnd a_64_14# a_104_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1018 vdd a_24_14# a_64_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1019 a_184_14# a_144_14# gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1020 vdd A a_24_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=14.400002p ps=14.400001u
M1021 gnd a_184_14# Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1022 vdd a_184_14# Y vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1023 vdd a_144_14# a_184_14# vdd pfet w=12u l=0.6u
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

.subckt DFFSR D S R CLK Q vdd gnd
M1000 a_64_14# a_60_10# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=9p ps=9u
M1001 a_115_104# CLK vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1002 a_146_14# a_115_104# a_60_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=3.6p ps=5.4u
M1003 a_280_14# a_115_104# a_36_10# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1004 a_36_10# S a_64_14# gnd nfet w=6u l=0.6u
+  ad=14.400002p pd=16.800001u as=3.6p ps=7.2u
M1005 a_334_14# a_280_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1006 a_300_14# a_334_14# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1007 a_146_14# a_122_10# a_60_10# vdd pfet w=3u l=0.6u
+  ad=6.300001p pd=8.400001u as=3.6p ps=5.4u
M1008 a_28_14# R a_8_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.400002p ps=16.800001u
M1009 a_280_14# a_122_10# a_36_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1010 a_388_14# a_334_14# gnd gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=8.1p ps=8.700001u
M1011 gnd a_334_14# Q gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1012 a_36_10# a_60_10# vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1013 a_8_14# R vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1014 gnd a_36_10# a_28_14# gnd nfet w=6u l=0.6u
+  ad=9p pd=9u as=3.6p ps=7.2u
M1015 gnd a_115_104# a_122_10# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1016 vdd D a_146_14# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.300001p ps=8.400001u
M1017 a_300_14# S a_388_14# gnd nfet w=6u l=0.6u
+  ad=14.400002p pd=16.800001u as=3.6p ps=7.2u
M1018 gnd D a_146_14# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1019 vdd a_115_104# a_122_10# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1020 vdd a_334_14# Q vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
M1021 a_300_14# a_115_104# a_280_14# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1022 a_300_14# a_122_10# a_280_14# vdd pfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1023 vdd R a_334_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1024 a_115_104# CLK gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=3.6p ps=5.4u
M1025 vdd S a_36_10# vdd pfet w=6u l=0.6u
+  ad=11.880001p pd=16.2u as=7.200001p ps=8.400001u
M1026 a_60_10# a_115_104# a_8_14# vdd pfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1027 a_60_10# a_122_10# a_8_14# gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1028 vdd a_36_10# a_8_14# vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1029 a_354_14# a_280_14# a_334_14# gnd nfet w=6u l=0.6u
+  ad=3.6p pd=7.2u as=14.400002p ps=16.800001u
M1030 vdd S a_300_14# vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1031 gnd R a_354_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=3.6p ps=7.2u
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

.subckt INVX1 A Y vdd gnd
M1000 Y A gnd gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=10.200001u as=6.300001p ps=10.200001u
M1001 Y A vdd vdd pfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=12.600001p ps=16.2u
.ends

.subckt AND2X2 A B Y vdd gnd
M1000 a_24_14# A a_6_14# gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=12.600001p ps=16.2u
M1001 Y a_6_14# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=11.700001p ps=14.400001u
M1002 vdd B a_6_14# vdd pfet w=6u l=0.6u
+  ad=11.700001p pd=14.400001u as=7.200001p ps=8.400001u
M1003 gnd B a_24_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=2.7p ps=6.9u
M1004 Y a_6_14# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1005 a_6_14# A vdd vdd pfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
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
M1000 a_28_58# B vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=16.2p ps=14.700001u
M1001 gnd B a_70_14# gnd nfet w=6u l=0.6u
+  ad=8.1p pd=8.700001u as=2.7p ps=6.9u
M1002 vdd A a_4_14# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=25.200003p ps=28.200003u
M1003 vdd B a_72_166# vdd pfet w=12u l=0.6u
+  ad=16.2p pd=14.700001u as=3.6p ps=12.6u
M1004 a_42_14# a_28_58# gnd gnd nfet w=6u l=0.6u
+  ad=1.8p pd=6.6u as=7.200001p ps=8.400001u
M1005 Y a_4_14# a_42_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1006 a_28_58# B gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=8.1p ps=8.700001u
M1007 Y A a_42_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=1.8p ps=6.6u
M1008 a_42_166# a_28_58# vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=14.400002p ps=14.400001u
M1009 a_72_166# A Y vdd pfet w=12u l=0.6u
+  ad=3.6p pd=12.6u as=14.400002p ps=14.400001u
M1010 a_70_14# a_4_14# Y gnd nfet w=6u l=0.6u
+  ad=2.7p pd=6.9u as=7.200001p ps=8.400001u
M1011 gnd A a_4_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
.ends

.subckt OAI22X1 A B C D Y vdd gnd
M1000 Y D a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
M1001 vdd C a_64_166# vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=5.4p ps=12.900001u
M1002 Y B a_24_166# vdd pfet w=12u l=0.6u
+  ad=23.400002p pd=15.900001u as=5.4p ps=12.900001u
M1003 gnd A a_6_14# gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=12.600001p ps=16.2u
M1004 a_64_166# D Y vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=23.400002p ps=15.900001u
M1005 a_24_166# A vdd vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1006 a_6_14# C Y gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=7.200001p ps=8.400001u
M1007 a_6_14# B gnd gnd nfet w=6u l=0.6u
+  ad=7.200001p pd=8.400001u as=7.200001p ps=8.400001u
.ends

.subckt OR2X2 A B Y vdd gnd
M1000 Y a_6_166# gnd gnd nfet w=6u l=0.6u
+  ad=12.600001p pd=16.2u as=6.300001p ps=8.400001u
M1001 vdd B a_24_166# vdd pfet w=12u l=0.6u
+  ad=14.400002p pd=14.400001u as=5.4p ps=12.900001u
M1002 a_6_166# A gnd gnd nfet w=3u l=0.6u
+  ad=3.6p pd=5.4u as=6.300001p ps=10.200001u
M1003 a_24_166# A a_6_166# vdd pfet w=12u l=0.6u
+  ad=5.4p pd=12.900001u as=25.200003p ps=28.200003u
M1004 Y a_6_166# vdd vdd pfet w=12u l=0.6u
+  ad=25.200003p pd=28.200003u as=14.400002p ps=14.400001u
M1005 gnd B a_6_166# gnd nfet w=3u l=0.6u
+  ad=6.300001p pd=8.400001u as=3.6p ps=5.4u
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
XOAI21X1_0 OAI21X1_0/A OAI21X1_0/B OAI21X1_0/C OAI21X1_0/Y vdd gnd OAI21X1
XBUFX4_0 BUFX4_0/A BUFX4_0/Y vdd gnd BUFX4
XDFFNEGX1_0 DFFNEGX1_0/D DFFNEGX1_0/CLK DFFNEGX1_0/Q vdd gnd DFFNEGX1
XTBUFX2_0 TBUFX2_0/A TBUFX2_0/EN TBUFX2_0/Y vdd gnd TBUFX2
XBUFX2_0 BUFX2_0/A BUFX2_0/Y vdd gnd BUFX2
XAOI21X1_0 AOI21X1_0/A AOI21X1_0/B AOI21X1_0/C AOI21X1_0/Y vdd gnd AOI21X1
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
XINVX1_0 INVX1_0/A INVX1_0/Y vdd gnd INVX1
XAND2X2_0 AND2X2_0/A AND2X2_0/B AND2X2_0/Y vdd gnd AND2X2
XTBUFX1_0 TBUFX1_0/A TBUFX1_0/EN TBUFX1_0/Y vdd gnd TBUFX1
XXNOR2X1_0 XNOR2X1_0/A XNOR2X1_0/B XNOR2X1_0/Y vdd gnd XNOR2X1
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

XFILL_8__2646_ gnd vdd FILL
XFILL_8__2226_ gnd vdd FILL
XFILL_2__2620_ gnd vdd FILL
XFILL_2__2200_ gnd vdd FILL
XFILL_4__2966_ gnd vdd FILL
XFILL_4__2546_ gnd vdd FILL
XFILL_4__2126_ gnd vdd FILL
XFILL_0__2866_ gnd vdd FILL
XFILL_0__2446_ gnd vdd FILL
XFILL_0__2026_ gnd vdd FILL
XFILL_6__3413_ gnd vdd FILL
XFILL_2__3405_ gnd vdd FILL
XFILL_5__1830_ gnd vdd FILL
XFILL_7__1848_ gnd vdd FILL
XFILL_1__1822_ gnd vdd FILL
XFILL_3__1748_ gnd vdd FILL
XFILL_5__2615_ gnd vdd FILL
XFILL_8__3184_ gnd vdd FILL
XFILL_1__2607_ gnd vdd FILL
XFILL_4__3084_ gnd vdd FILL
XFILL_8__1917_ gnd vdd FILL
XFILL_4__1817_ gnd vdd FILL
XFILL_7__2386_ gnd vdd FILL
XFILL_0__1717_ gnd vdd FILL
X_3403_ BI[6] _1674_ _1676_ _1677_ vdd gnd OAI21X1
XFILL_1__2780_ gnd vdd FILL
XFILL_1__2360_ gnd vdd FILL
XFILL_3__2286_ gnd vdd FILL
XFILL_5__3153_ gnd vdd FILL
XFILL_1__3565_ gnd vdd FILL
XFILL_1__3145_ gnd vdd FILL
XFILL_4__1990_ gnd vdd FILL
XFILL_0__1890_ gnd vdd FILL
XFILL_8__2875_ gnd vdd FILL
XFILL_8__2455_ gnd vdd FILL
XFILL_8__2035_ gnd vdd FILL
XFILL_4__2775_ gnd vdd FILL
XFILL_4__2355_ gnd vdd FILL
XFILL_0__2675_ gnd vdd FILL
XFILL_0__2255_ gnd vdd FILL
XFILL_6__3222_ gnd vdd FILL
XFILL_2__3214_ gnd vdd FILL
XFILL_3__1977_ gnd vdd FILL
XFILL_9__2944_ gnd vdd FILL
XFILL_5__2844_ gnd vdd FILL
XFILL_5__2424_ gnd vdd FILL
XFILL_5__2004_ gnd vdd FILL
XFILL_1__2836_ gnd vdd FILL
XFILL_1__2416_ gnd vdd FILL
XFILL_8__1726_ gnd vdd FILL
XFILL_5__3209_ gnd vdd FILL
XFILL_2__1700_ gnd vdd FILL
XFILL_7__2195_ gnd vdd FILL
XFILL_0__1946_ gnd vdd FILL
XFILL_6__2913_ gnd vdd FILL
X_3212_ _802_ _829_ ABL[6] _838_ vdd gnd OAI21X1
XFILL_3__2095_ gnd vdd FILL
XFILL_9__3062_ gnd vdd FILL
XFILL_2__2905_ gnd vdd FILL
XFILL_5__3382_ gnd vdd FILL
XFILL_1__3374_ gnd vdd FILL
XFILL_8__2684_ gnd vdd FILL
XFILL_8__2264_ gnd vdd FILL
XFILL_4__2584_ gnd vdd FILL
XFILL_4__2164_ gnd vdd FILL
XFILL_0__2484_ gnd vdd FILL
XFILL_6__3451_ gnd vdd FILL
XFILL_8__3469_ gnd vdd FILL
XFILL_0__2064_ gnd vdd FILL
XFILL_6__3031_ gnd vdd FILL
XFILL_8__3049_ gnd vdd FILL
XFILL_2__3443_ gnd vdd FILL
XFILL_2__3023_ gnd vdd FILL
XFILL_7__1886_ gnd vdd FILL
XFILL_4__3369_ gnd vdd FILL
X_2903_ _1214_ _586_ _588_ _589_ vdd gnd AOI21X1
XFILL_1__1860_ gnd vdd FILL
XFILL_3__1786_ gnd vdd FILL
XFILL_5__2653_ gnd vdd FILL
XFILL_5__2233_ gnd vdd FILL
XFILL_1__2645_ gnd vdd FILL
XFILL_1__2225_ gnd vdd FILL
XFILL_3__3512_ gnd vdd FILL
XFILL_8__1955_ gnd vdd FILL
XFILL_5__3438_ gnd vdd FILL
XFILL_5__3018_ gnd vdd FILL
XFILL_4__1855_ gnd vdd FILL
XFILL_0__1755_ gnd vdd FILL
XFILL_6__2722_ gnd vdd FILL
X_3441_ _1526_ _1522_ _1520_ _1527_ vdd gnd OAI21X1
XFILL_6__2302_ gnd vdd FILL
X_3021_ RDY_bF$buf5 DI[7] _686_ vdd gnd NAND2X1
XFILL_2__2714_ gnd vdd FILL
XFILL_5__3191_ gnd vdd FILL
XFILL_6__3507_ gnd vdd FILL
XFILL_1__3183_ gnd vdd FILL
XFILL_5__1924_ gnd vdd FILL
XFILL_8__2493_ gnd vdd FILL
XFILL181950x101550 gnd vdd FILL
XFILL_8__2073_ gnd vdd FILL
XFILL_1__1916_ gnd vdd FILL
XFILL_4__2393_ gnd vdd FILL
XFILL_5__2709_ gnd vdd FILL
XFILL_0__2293_ gnd vdd FILL
XFILL_7__1695_ gnd vdd FILL
XFILL_4__3598_ gnd vdd FILL
XFILL_4__3178_ gnd vdd FILL
X_2712_ PC[10] _853__bF$buf5 _433_ vdd gnd NAND2X1
XFILL_0__3498_ gnd vdd FILL
XFILL_0__3078_ gnd vdd FILL
XFILL_5__2882_ gnd vdd FILL
XFILL_5__2462_ gnd vdd FILL
XFILL_5__2042_ gnd vdd FILL
XFILL_1__2874_ gnd vdd FILL
XFILL_1__2454_ gnd vdd FILL
XFILL_1__2034_ gnd vdd FILL
XFILL_7__3421_ gnd vdd FILL
XFILL_7__3001_ gnd vdd FILL
XFILL_8__1764_ gnd vdd FILL
XFILL_0__1984_ gnd vdd FILL
XFILL_6__2951_ gnd vdd FILL
XFILL_8__2969_ gnd vdd FILL
XFILL_8__2549_ gnd vdd FILL
XFILL_6__2531_ gnd vdd FILL
XFILL_6__2111_ gnd vdd FILL
XFILL_8__2129_ gnd vdd FILL
X_3250_ _13_ vdd _1__bF$buf0 clk_bF$buf7 PC[11] vdd 
+ gnd
+ DFFSR
XFILL_2__2943_ gnd vdd FILL
XFILL_2__2523_ gnd vdd FILL
XFILL_2__2103_ gnd vdd FILL
XFILL_4__2869_ gnd vdd FILL
XFILL_4__2449_ gnd vdd FILL
XFILL_4__2029_ gnd vdd FILL
XFILL_0__2769_ gnd vdd FILL
XFILL_0__2349_ gnd vdd FILL
XFILL_5__1733_ gnd vdd FILL
XFILL_1__1725_ gnd vdd FILL
XFILL_5__2938_ gnd vdd FILL
XFILL_5__2518_ gnd vdd FILL
XFILL_8__3087_ gnd vdd FILL
XFILL_0_BUFX2_insert20 gnd vdd FILL
XFILL_0_BUFX2_insert21 gnd vdd FILL
XFILL_2__3481_ gnd vdd FILL
XFILL_0_BUFX2_insert22 gnd vdd FILL
XFILL_2__3061_ gnd vdd FILL
XFILL_0_BUFX2_insert23 gnd vdd FILL
XFILL_0_BUFX2_insert24 gnd vdd FILL
XFILL_0_BUFX2_insert25 gnd vdd FILL
XFILL_0_BUFX2_insert26 gnd vdd FILL
XFILL_0_BUFX2_insert27 gnd vdd FILL
XFILL181350x74250 gnd vdd FILL
X_2941_ reset _618_ IRHOLD[0] _621_ vdd gnd OAI21X1
XFILL_6__1802_ gnd vdd FILL
X_2521_ _263_ _240_ _1057_ _264_ vdd gnd OAI21X1
X_2101_ RDY_bF$buf7 _1235_ _1236_ _1237_ vdd gnd OAI21X1
XFILL_5__2691_ gnd vdd FILL
XFILL_5__2271_ gnd vdd FILL
XFILL_7__2289_ gnd vdd FILL
X_3306_ _60_ clk_bF$buf10 IRHOLD[7] vdd gnd DFFPOSX1
XFILL_1__2683_ gnd vdd FILL
XFILL_1__2263_ gnd vdd FILL
XFILL_7__3230_ gnd vdd FILL
XFILL_3__2189_ gnd vdd FILL
XFILL_3__3550_ gnd vdd FILL
XFILL_3__3130_ gnd vdd FILL
XFILL_8__1993_ gnd vdd FILL
XFILL_5__3476_ gnd vdd FILL
XFILL_5__3056_ gnd vdd FILL
XFILL_1__3468_ gnd vdd FILL
XFILL_1__3048_ gnd vdd FILL
XFILL_4__1893_ gnd vdd FILL
XFILL_0__1793_ gnd vdd FILL
XFILL_6__2760_ gnd vdd FILL
XFILL_8__2778_ gnd vdd FILL
XFILL_8__2358_ gnd vdd FILL
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
XFILL_7__2921_ gnd vdd FILL
XFILL_7__2501_ gnd vdd FILL
XFILL_3__2821_ gnd vdd FILL
XFILL_3__2401_ gnd vdd FILL
XFILL_5__2747_ gnd vdd FILL
XFILL_5__2327_ gnd vdd FILL
XFILL_1__2739_ gnd vdd FILL
XFILL_1__2319_ gnd vdd FILL
X_2750_ DIMUX[5] _446_ _467_ _468_ vdd gnd AOI21X1
X_2330_ _1283_ _1279_ _1462_ vdd gnd AND2X2
XFILL_4__1949_ gnd vdd FILL
XFILL_5__2080_ gnd vdd FILL
XFILL_7__2098_ gnd vdd FILL
XFILL_0__1849_ gnd vdd FILL
XFILL_6__2816_ gnd vdd FILL
X_3535_ _1498_ _1602_ _1617_ _1621_ vdd gnd NAND3X1
X_3115_ _691__bF$buf1 _758_ _AXYS[2]_[2] _761_ vdd gnd OAI21X1
XFILL_1__2492_ gnd vdd FILL
XFILL_1__2072_ gnd vdd FILL
XFILL_2__2808_ gnd vdd FILL
XFILL_8__2587_ gnd vdd FILL
XFILL_8__2167_ gnd vdd FILL
XFILL_2__2981_ gnd vdd FILL
XFILL_2__2561_ gnd vdd FILL
XFILL_2__2141_ gnd vdd FILL
XFILL_4__2487_ gnd vdd FILL
XFILL_4__2067_ gnd vdd FILL
XFILL_0__2387_ gnd vdd FILL
XFILL_5__1771_ gnd vdd FILL
XFILL_7__1789_ gnd vdd FILL
X_2806_ _512_ _1323_ _513_ vdd gnd NAND2X1
XFILL_1__1763_ gnd vdd FILL
XFILL_7__2730_ gnd vdd FILL
XFILL_7__2310_ gnd vdd FILL
XFILL_3__1689_ gnd vdd FILL
XFILL_3__2630_ gnd vdd FILL
XFILL_3__2210_ gnd vdd FILL
XFILL_5__2976_ gnd vdd FILL
XFILL_5__2556_ gnd vdd FILL
XFILL_5__2136_ gnd vdd FILL
XFILL_1__2968_ gnd vdd FILL
XFILL_1__2548_ gnd vdd FILL
XFILL_7__3515_ gnd vdd FILL
XFILL_1__2128_ gnd vdd FILL
XFILL_3__3415_ gnd vdd FILL
XFILL_6__1840_ gnd vdd FILL
XFILL_8__1858_ gnd vdd FILL
XFILL_2__1832_ gnd vdd FILL
XFILL_4__1758_ gnd vdd FILL
XFILL_6__2625_ gnd vdd FILL
X_3344_ _97_ vdd _1__bF$buf4 clk_bF$buf0 _AXYS[3]_[4] vdd 
+ gnd
+ DFFSR
XFILL_6__2205_ gnd vdd FILL
XFILL_9__3194_ gnd vdd FILL
XFILL_2__2617_ gnd vdd FILL
XFILL_5__3094_ gnd vdd FILL
XFILL_1__3086_ gnd vdd FILL
XFILL_3__1901_ gnd vdd FILL
XFILL_5__1827_ gnd vdd FILL
XFILL_8__2396_ gnd vdd FILL
XFILL_1__1819_ gnd vdd FILL
XFILL_2__2790_ gnd vdd FILL
XFILL_2__2370_ gnd vdd FILL
XFILL_4__2296_ gnd vdd FILL
X_1830_ PC[7] _975_ vdd gnd INVX2
XFILL_0__2196_ gnd vdd FILL
XFILL_6__3583_ gnd vdd FILL
XFILL_6__3163_ gnd vdd FILL
XFILL_2__3155_ gnd vdd FILL
X_2615_ res _1051__bF$buf1 _344_ _345_ vdd gnd OAI21X1
XFILL_1__1992_ gnd vdd FILL
XFILL_9__2885_ gnd vdd FILL
XFILL_5__2785_ gnd vdd FILL
XFILL_5__2365_ gnd vdd FILL
XFILL_1__2777_ gnd vdd FILL
XFILL_1__2357_ gnd vdd FILL
XBUFX2_insert39 _887_ _887__bF$buf4 vdd gnd BUFX2
XFILL_3__3224_ gnd vdd FILL
XFILL_4__1987_ gnd vdd FILL
XFILL184050x70350 gnd vdd FILL
XFILL_0__1887_ gnd vdd FILL
XFILL_6__2854_ gnd vdd FILL
X_3573_ _1491_ vdd _1484_ clk_bF$buf3 ADD[3] vdd 
+ gnd
+ DFFSR
XFILL_6__2434_ gnd vdd FILL
XFILL_6__2014_ gnd vdd FILL
X_3153_ _976_ _784_ _783_ _785_ vdd gnd NAND3X1
XFILL_2__2846_ gnd vdd FILL
XFILL_2__2426_ gnd vdd FILL
XFILL_2__2006_ gnd vdd FILL
XFILL_7__1810_ gnd vdd FILL
XFILL_6__3219_ gnd vdd FILL
XFILL_3__1710_ gnd vdd FILL
XFILL_3__2915_ gnd vdd FILL
XFILL_6__3392_ gnd vdd FILL
XFILL_2__3384_ gnd vdd FILL
X_2844_ _512_ _542_ _543_ vdd gnd NAND2X1
XFILL_6__1705_ gnd vdd FILL
X_2424_ _1036_ _1281_ PC[15] _176_ vdd gnd OAI21X1
X_2004_ IRHOLD[3] _1140_ vdd gnd INVX1
XFILL_9__2694_ gnd vdd FILL
XFILL_5__2594_ gnd vdd FILL
XFILL_5__2174_ gnd vdd FILL
X_3209_ _831_ _237_ _836_ _105_ vdd gnd OAI21X1
XFILL_1__2586_ gnd vdd FILL
XFILL_7__3553_ gnd vdd FILL
XFILL_1__2166_ gnd vdd FILL
XFILL_7__3133_ gnd vdd FILL
XFILL_3__3453_ gnd vdd FILL
XFILL_3__3033_ gnd vdd FILL
XFILL_8__1896_ gnd vdd FILL
XFILL_5__3379_ gnd vdd FILL
XFILL_2__1870_ gnd vdd FILL
XFILL_4__1796_ gnd vdd FILL
XFILL_0__1696_ gnd vdd FILL
XFILL_6__2663_ gnd vdd FILL
X_3382_ alu_shift_right _1657_ vdd gnd INVX2
XFILL_6__2243_ gnd vdd FILL
XFILL_2__2655_ gnd vdd FILL
XFILL_2__2235_ gnd vdd FILL
XFILL_8__3202_ gnd vdd FILL
XFILL_4__3522_ gnd vdd FILL
XFILL_4__3102_ gnd vdd FILL
XFILL_6__3448_ gnd vdd FILL
XFILL_6__3028_ gnd vdd FILL
XFILL_0__3422_ gnd vdd FILL
XFILL_0__3002_ gnd vdd FILL
XFILL_5__1865_ gnd vdd FILL
XFILL_1__1857_ gnd vdd FILL
XFILL_7__2824_ gnd vdd FILL
XFILL_7__2404_ gnd vdd FILL
XFILL_3__2724_ gnd vdd FILL
XFILL_3__2304_ gnd vdd FILL
XFILL_2__3193_ gnd vdd FILL
XFILL_3__3509_ gnd vdd FILL
XFILL_6__1934_ gnd vdd FILL
X_2653_ _375_ _373_ _378_ _379_ vdd gnd AOI21X1
X_2233_ _951_ _1366_ _1367_ vdd gnd NOR2X1
XFILL_2__1926_ gnd vdd FILL
XFILL_6__2719_ gnd vdd FILL
X_3438_ AI[2] _1524_ vdd gnd INVX1
X_3018_ C _678_ _684_ vdd gnd NAND2X1
XFILL_1__2395_ gnd vdd FILL
XFILL_1_BUFX2_insert90 gnd vdd FILL
XFILL_1_BUFX2_insert91 gnd vdd FILL
XFILL_1_BUFX2_insert92 gnd vdd FILL
XFILL_1_BUFX2_insert93 gnd vdd FILL
XFILL_1_BUFX2_insert94 gnd vdd FILL
XFILL_5__3188_ gnd vdd FILL
XFILL_1_BUFX2_insert95 gnd vdd FILL
XFILL_1_BUFX2_insert96 gnd vdd FILL
XFILL_1_BUFX2_insert97 gnd vdd FILL
XFILL_6__2892_ gnd vdd FILL
XFILL_6__2472_ gnd vdd FILL
XFILL_6__2052_ gnd vdd FILL
X_3191_ _820_ _822_ _823_ vdd gnd NOR2X1
XFILL_2__2884_ gnd vdd FILL
XFILL_2__2464_ gnd vdd FILL
XFILL_8__3431_ gnd vdd FILL
XFILL_2__2044_ gnd vdd FILL
XFILL_8__3011_ gnd vdd FILL
X_1924_ _1066_ _1067_ vdd gnd INVX1
XFILL_0__3231_ gnd vdd FILL
X_2709_ _430_ _431_ vdd gnd INVX1
XFILL_7__2633_ gnd vdd FILL
XFILL_7__2213_ gnd vdd FILL
XFILL_3__2953_ gnd vdd FILL
XFILL_3__2533_ gnd vdd FILL
XFILL_3__2113_ gnd vdd FILL
XFILL_5__2879_ gnd vdd FILL
XFILL_5__2459_ gnd vdd FILL
XFILL_5__2039_ gnd vdd FILL
XFILL_5__3400_ gnd vdd FILL
XFILL_7__3418_ gnd vdd FILL
X_2882_ _1219__bF$buf2 _572_ _570_ _42_ vdd gnd OAI21X1
XFILL_6__1743_ gnd vdd FILL
X_2462_ _1025_ _182_ _212_ _213_ vdd gnd AOI21X1
X_2042_ _1159_ _1178_ vdd gnd INVX1
XFILL_2__1735_ gnd vdd FILL
XFILL_8__2702_ gnd vdd FILL
XFILL_4__2602_ gnd vdd FILL
XFILL_6__2948_ gnd vdd FILL
XFILL_6__2528_ gnd vdd FILL
XFILL_6__2108_ gnd vdd FILL
X_3247_ _10_ vdd _1__bF$buf0 clk_bF$buf7 PC[8] vdd 
+ gnd
+ DFFSR
XFILL_7__3591_ gnd vdd FILL
XFILL_7__3171_ gnd vdd FILL
XFILL_0__2922_ gnd vdd FILL
XFILL_0__2502_ gnd vdd FILL
XFILL_3__3491_ gnd vdd FILL
XFILL_3__3071_ gnd vdd FILL
XFILL_7__1904_ gnd vdd FILL
XFILL_3__1804_ gnd vdd FILL
XFILL_6__2281_ gnd vdd FILL
XFILL_8__2299_ gnd vdd FILL
XFILL_2__2693_ gnd vdd FILL
XFILL_2__2273_ gnd vdd FILL
XFILL_4__2199_ gnd vdd FILL
X_1733_ state[4] _881_ _886_ vdd gnd NOR2X1
XFILL_4__3560_ gnd vdd FILL
XFILL_4__3140_ gnd vdd FILL
XFILL_6__3486_ gnd vdd FILL
XFILL_0__2099_ gnd vdd FILL
XFILL_6__3066_ gnd vdd FILL
XFILL_2__3478_ gnd vdd FILL
XFILL_0__3460_ gnd vdd FILL
XFILL_2__3058_ gnd vdd FILL
XFILL_0__3040_ gnd vdd FILL
X_2938_ _1043_ _1044_ RDY_bF$buf1 _618_ vdd gnd OAI21X1
X_2518_ _260_ _208_ _261_ vdd gnd NOR2X1
XFILL_1__1895_ gnd vdd FILL
XFILL_7__2862_ gnd vdd FILL
XFILL_7__2442_ gnd vdd FILL
XFILL_7__2022_ gnd vdd FILL
XFILL_3__2762_ gnd vdd FILL
XFILL_3__2342_ gnd vdd FILL
XFILL_5__2688_ gnd vdd FILL
XFILL_5__2268_ gnd vdd FILL
XFILL_7__3227_ gnd vdd FILL
XFILL183150x109350 gnd vdd FILL
XFILL_1__3201_ gnd vdd FILL
XFILL_3__3547_ gnd vdd FILL
XFILL_3__3127_ gnd vdd FILL
XFILL_6__1972_ gnd vdd FILL
X_2691_ _1075_ _1264_ _413_ _414_ vdd gnd NOR3X1
X_2271_ _1317_ _1403_ _1404_ _1405_ vdd gnd NAND3X1
XFILL_2__1964_ gnd vdd FILL
XFILL_8__2931_ gnd vdd FILL
XFILL_8__2511_ gnd vdd FILL
XFILL_4__2831_ gnd vdd FILL
XFILL_4__2411_ gnd vdd FILL
XFILL_6__2757_ gnd vdd FILL
X_3476_ _1561_ _1560_ _1538_ _1562_ vdd gnd OAI21X1
XFILL_6__2337_ gnd vdd FILL
X_3056_ _437_ _697_ _716_ _717_ vdd gnd OAI21X1
XFILL_2__2749_ gnd vdd FILL
XFILL_0__2731_ gnd vdd FILL
XFILL_0__2311_ gnd vdd FILL
XFILL_2__2329_ gnd vdd FILL
XFILL_7__1713_ gnd vdd FILL
XFILL_0__3516_ gnd vdd FILL
XFILL_5__1959_ gnd vdd FILL
XFILL_6__2090_ gnd vdd FILL
XFILL_7__2918_ gnd vdd FILL
XFILL_5__2900_ gnd vdd FILL
XFILL_2__2082_ gnd vdd FILL
XFILL_3__2818_ gnd vdd FILL
X_1962_ _861_ _944_ _1100_ _1101_ vdd gnd OAI21X1
X_2747_ ADD[5] _325_ _1284_ _465_ vdd gnd AOI21X1
X_2327_ _1349_ _1431_ _1459_ vdd gnd NAND2X1
XFILL_7__2671_ gnd vdd FILL
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
XFILL_1__3430_ gnd vdd FILL
XFILL_1__3010_ gnd vdd FILL
XFILL_8__1799_ gnd vdd FILL
XFILL_6__1781_ gnd vdd FILL
X_2080_ _1159_ _1155_ _1216_ vdd gnd NAND2X1
XFILL_5_BUFX2_insert40 gnd vdd FILL
XFILL_5_BUFX2_insert41 gnd vdd FILL
XFILL_5_BUFX2_insert42 gnd vdd FILL
XFILL_5_BUFX2_insert43 gnd vdd FILL
XFILL_5_BUFX2_insert44 gnd vdd FILL
XFILL_5_BUFX2_insert45 gnd vdd FILL
XFILL_2__1773_ gnd vdd FILL
XFILL_8__2740_ gnd vdd FILL
XFILL_5_BUFX2_insert46 gnd vdd FILL
XFILL_8__2320_ gnd vdd FILL
XFILL_5_BUFX2_insert47 gnd vdd FILL
XFILL_5_BUFX2_insert48 gnd vdd FILL
XFILL_5_BUFX2_insert49 gnd vdd FILL
XFILL_4__1699_ gnd vdd FILL
XFILL_4__2640_ gnd vdd FILL
XFILL_4__2220_ gnd vdd FILL
XFILL_6__2986_ gnd vdd FILL
XFILL_6__2566_ gnd vdd FILL
X_3285_ _47_ vdd _1__bF$buf7 clk_bF$buf1 src_reg[0] vdd 
+ gnd
+ DFFSR
XFILL_6__2146_ gnd vdd FILL
XFILL_2__2978_ gnd vdd FILL
XFILL_0__2960_ gnd vdd FILL
XFILL_0__2540_ gnd vdd FILL
XFILL_2__2558_ gnd vdd FILL
XFILL_8__3525_ gnd vdd FILL
XFILL_0__2120_ gnd vdd FILL
XFILL_2__2138_ gnd vdd FILL
XFILL_8__3105_ gnd vdd FILL
XFILL_7__1942_ gnd vdd FILL
XFILL_4__3425_ gnd vdd FILL
XFILL_4__3005_ gnd vdd FILL
XFILL_3__1842_ gnd vdd FILL
XFILL_5__1768_ gnd vdd FILL
XFILL_7__2727_ gnd vdd FILL
XFILL_7__2307_ gnd vdd FILL
XFILL_1__2701_ gnd vdd FILL
XFILL_3__2627_ gnd vdd FILL
XFILL_3__2207_ gnd vdd FILL
X_1771_ _911_ _913_ _923_ _924_ vdd gnd OAI21X1
XFILL_2__3096_ gnd vdd FILL
XFILL_4__1911_ gnd vdd FILL
X_2976_ plp ADD[3] _646_ vdd gnd NAND2X1
XFILL_6__1837_ gnd vdd FILL
X_2556_ _192_ _195_ DIMUX[5] _294_ vdd gnd OAI21X1
X_2136_ _918__bF$buf1 _1032_ RDY_bF$buf0 _1272_ vdd gnd OAI21X1
XFILL_7__2480_ gnd vdd FILL
XFILL_7__2060_ gnd vdd FILL
XFILL_2__1829_ gnd vdd FILL
XFILL_0__1811_ gnd vdd FILL
XFILL_3__2380_ gnd vdd FILL
XFILL_1__2298_ gnd vdd FILL
XFILL_3__3585_ gnd vdd FILL
XFILL_3__3165_ gnd vdd FILL
XFILL_6__2795_ gnd vdd FILL
XFILL_6__2375_ gnd vdd FILL
X_3094_ _695_ _747_ _749_ _77_ vdd gnd OAI21X1
XFILL_2__2787_ gnd vdd FILL
XFILL_2__2367_ gnd vdd FILL
X_1827_ _973_ _933_ _861_ _967_ BI[5] vdd 
+ gnd
+ OAI22X1
XFILL_7__1751_ gnd vdd FILL
XFILL_0__3554_ gnd vdd FILL
XFILL_0__3134_ gnd vdd FILL
XFILL_5__1997_ gnd vdd FILL
XFILL_1__1989_ gnd vdd FILL
XFILL_7__2956_ gnd vdd FILL
XFILL_7__2536_ gnd vdd FILL
XFILL_7__2116_ gnd vdd FILL
XFILL_1__2930_ gnd vdd FILL
XFILL_1__2510_ gnd vdd FILL
XFILL_3__2856_ gnd vdd FILL
XFILL_3__2436_ gnd vdd FILL
XFILL_3__2016_ gnd vdd FILL
XFILL_8__1820_ gnd vdd FILL
XFILL_4__1720_ gnd vdd FILL
X_2785_ RDY_bF$buf6 _498_ _499_ vdd gnd NAND2X1
X_2365_ _918__bF$buf3 _946_ _126_ _127_ vdd gnd OAI21X1
XFILL_8__2605_ gnd vdd FILL
XFILL_4__2925_ gnd vdd FILL
XFILL_4__2505_ gnd vdd FILL
XFILL_7__3494_ gnd vdd FILL
XFILL_7__3074_ gnd vdd FILL
XFILL_0__2825_ gnd vdd FILL
XFILL_0__2405_ gnd vdd FILL
XFILL_3__3394_ gnd vdd FILL
XFILL_7__1807_ gnd vdd FILL
XFILL_3__1707_ gnd vdd FILL
XFILL_6__2184_ gnd vdd FILL
XFILL_2__2596_ gnd vdd FILL
XFILL_8__3563_ gnd vdd FILL
XFILL_2__2176_ gnd vdd FILL
XFILL_8__3143_ gnd vdd FILL
XFILL_7__1980_ gnd vdd FILL
XFILL_4__3463_ gnd vdd FILL
XFILL_4__3043_ gnd vdd FILL
XFILL_6__3389_ gnd vdd FILL
XFILL_6_BUFX2_insert90 gnd vdd FILL
XFILL_6_BUFX2_insert91 gnd vdd FILL
XFILL_6_BUFX2_insert92 gnd vdd FILL
XFILL_6_BUFX2_insert93 gnd vdd FILL
XFILL_6_BUFX2_insert94 gnd vdd FILL
XFILL_6_BUFX2_insert95 gnd vdd FILL
XFILL_6_BUFX2_insert96 gnd vdd FILL
XFILL_3__1880_ gnd vdd FILL
XFILL_6_BUFX2_insert97 gnd vdd FILL
XFILL_2_CLKBUF1_insert28 gnd vdd FILL
XFILL_2_CLKBUF1_insert29 gnd vdd FILL
XFILL_1__1798_ gnd vdd FILL
XFILL_7__2765_ gnd vdd FILL
XFILL_7__2345_ gnd vdd FILL
XFILL_3__2665_ gnd vdd FILL
XFILL_3__2245_ gnd vdd FILL
XFILL_5__3532_ gnd vdd FILL
XFILL_5__3112_ gnd vdd FILL
XFILL_1__3524_ gnd vdd FILL
XFILL_1__3104_ gnd vdd FILL
XFILL_6__1875_ gnd vdd FILL
X_2594_ _875_ _867_ _918__bF$buf0 _325_ vdd gnd NOR3X1
X_2174_ _882__bF$buf2 _946_ _978_ _1309_ vdd gnd OAI21X1
XFILL_2__1867_ gnd vdd FILL
XFILL_8__2834_ gnd vdd FILL
XFILL_8__2414_ gnd vdd FILL
XFILL_4__2734_ gnd vdd FILL
XFILL_4__2314_ gnd vdd FILL
X_3379_ _1653_ BI[7] _1654_ vdd gnd AND2X2
XFILL_0__2634_ gnd vdd FILL
XFILL_0__2214_ gnd vdd FILL
XFILL_6__3601_ gnd vdd FILL
XFILL_4__3519_ gnd vdd FILL
XFILL_3__1936_ gnd vdd FILL
XFILL_0__3419_ gnd vdd FILL
XFILL_5__2803_ gnd vdd FILL
XFILL_8__3372_ gnd vdd FILL
X_1865_ dst_reg[0] _1008_ _1009_ vdd gnd NAND2X1
XFILL_6__3198_ gnd vdd FILL
XFILL_0__3592_ gnd vdd FILL
XFILL_0__3172_ gnd vdd FILL
XFILL_7__2994_ gnd vdd FILL
XFILL_7__2574_ gnd vdd FILL
XFILL_7__2154_ gnd vdd FILL
XFILL_0__1905_ gnd vdd FILL
XFILL_3__2894_ gnd vdd FILL
XFILL_3__2474_ gnd vdd FILL
XFILL_3__2054_ gnd vdd FILL
XFILL_8__2643_ gnd vdd FILL
XFILL_8__2223_ gnd vdd FILL
XFILL_4__2963_ gnd vdd FILL
XFILL_4__2543_ gnd vdd FILL
XFILL_4__2123_ gnd vdd FILL
XFILL_6__2889_ gnd vdd FILL
XFILL_6__2469_ gnd vdd FILL
XFILL_6__2049_ gnd vdd FILL
X_3188_ _1034_ _820_ vdd gnd INVX1
XFILL_0__2863_ gnd vdd FILL
XFILL_0__2443_ gnd vdd FILL
XFILL_8__3428_ gnd vdd FILL
XFILL_0__2023_ gnd vdd FILL
XFILL_6__3410_ gnd vdd FILL
XFILL_8__3008_ gnd vdd FILL
XFILL_2__3402_ gnd vdd FILL
XFILL_7__1845_ gnd vdd FILL
XFILL_3__1745_ gnd vdd FILL
XFILL_0__3228_ gnd vdd FILL
XFILL_5__2612_ gnd vdd FILL
XFILL_8__3181_ gnd vdd FILL
XFILL_1__2604_ gnd vdd FILL
XFILL_4__3081_ gnd vdd FILL
XFILL_8__1914_ gnd vdd FILL
XFILL_4__1814_ gnd vdd FILL
X_2879_ _853__bF$buf1 _1002__bF$buf1 inc _570_ vdd gnd OAI21X1
X_2459_ DIMUX[0] _204_ _202_ ABL[0] _210_ vdd 
+ gnd
+ AOI22X1
X_2039_ _1138_ _1174_ _1175_ vdd gnd NOR2X1
XFILL_7__2383_ gnd vdd FILL
XFILL_0__1714_ gnd vdd FILL
X_3400_ alu_op[2] _1660_ _1674_ vdd gnd NAND2X1
XFILL_3__2283_ gnd vdd FILL
XFILL_7__3588_ gnd vdd FILL
XFILL_7__3168_ gnd vdd FILL
XFILL_5__3150_ gnd vdd FILL
XFILL_0__2919_ gnd vdd FILL
XFILL_1__3562_ gnd vdd FILL
XFILL_1__3142_ gnd vdd FILL
XFILL_3__3488_ gnd vdd FILL
XFILL_3__3068_ gnd vdd FILL
XFILL_8__2872_ gnd vdd FILL
XFILL_8__2452_ gnd vdd FILL
XFILL_8__2032_ gnd vdd FILL
XFILL_4__2772_ gnd vdd FILL
XFILL_4__2352_ gnd vdd FILL
XFILL_6__2698_ gnd vdd FILL
XFILL_6__2278_ gnd vdd FILL
XFILL_0__2672_ gnd vdd FILL
XFILL_0__2252_ gnd vdd FILL
XFILL_2__3211_ gnd vdd FILL
XFILL_4__3557_ gnd vdd FILL
XFILL_4__3137_ gnd vdd FILL
XFILL_3__1974_ gnd vdd FILL
XFILL_0__3457_ gnd vdd FILL
XFILL_0__3037_ gnd vdd FILL
XFILL_5__2841_ gnd vdd FILL
XFILL_7__2859_ gnd vdd FILL
XFILL_5__2421_ gnd vdd FILL
XFILL_7__2439_ gnd vdd FILL
XFILL_7__2019_ gnd vdd FILL
XFILL_5__2001_ gnd vdd FILL
XFILL_1__2833_ gnd vdd FILL
XFILL_1__2413_ gnd vdd FILL
XFILL_3__2759_ gnd vdd FILL
XFILL_3__2339_ gnd vdd FILL
XFILL_8__1723_ gnd vdd FILL
XFILL_5__3206_ gnd vdd FILL
XFILL_6__1969_ gnd vdd FILL
X_2688_ _367_ _410_ _411_ vdd gnd OR2X2
X_2268_ _1220_ _1315_ _1402_ vdd gnd NOR2X1
XFILL_7__2192_ gnd vdd FILL
XFILL_0__1943_ gnd vdd FILL
XFILL_6__2910_ gnd vdd FILL
XFILL_8__2928_ gnd vdd FILL
XFILL_8__2508_ gnd vdd FILL
XFILL_3__2092_ gnd vdd FILL
XFILL_2__2902_ gnd vdd FILL
XFILL_4__2828_ gnd vdd FILL
XFILL_4__2408_ gnd vdd FILL
XFILL_7__3397_ gnd vdd FILL
XFILL_0__2728_ gnd vdd FILL
XFILL_0__2308_ gnd vdd FILL
XFILL_1__3371_ gnd vdd FILL
XFILL_8__2681_ gnd vdd FILL
XFILL_8__2261_ gnd vdd FILL
XFILL_4__2581_ gnd vdd FILL
XFILL_4__2161_ gnd vdd FILL
XFILL_6__2087_ gnd vdd FILL
XFILL_2__2499_ gnd vdd FILL
XFILL_0__2481_ gnd vdd FILL
XFILL_2__2079_ gnd vdd FILL
XFILL_8__3466_ gnd vdd FILL
XFILL_0__2061_ gnd vdd FILL
XFILL_8__3046_ gnd vdd FILL
XFILL_2__3440_ gnd vdd FILL
X_1959_ _1095_ _1097_ _1096_ _1098_ vdd gnd NAND3X1
XFILL_2__3020_ gnd vdd FILL
XFILL_7__1883_ gnd vdd FILL
XFILL_4__3366_ gnd vdd FILL
X_2900_ _546_ _585_ _544_ _586_ vdd gnd OAI21X1
XFILL_3__1783_ gnd vdd FILL
XFILL_5__2650_ gnd vdd FILL
XFILL_7__2668_ gnd vdd FILL
XFILL_7__2248_ gnd vdd FILL
XFILL_5__2230_ gnd vdd FILL
XFILL_1__2642_ gnd vdd FILL
XFILL_1__2222_ gnd vdd FILL
XFILL_3__2988_ gnd vdd FILL
XFILL_3__2568_ gnd vdd FILL
XFILL_3__2148_ gnd vdd FILL
XFILL_8__1952_ gnd vdd FILL
XFILL_5__3435_ gnd vdd FILL
XFILL_5__3015_ gnd vdd FILL
XFILL_1__3427_ gnd vdd FILL
XFILL_1__3007_ gnd vdd FILL
XFILL_4__1852_ gnd vdd FILL
XFILL_6__1778_ gnd vdd FILL
X_2497_ _238_ _242_ _243_ vdd gnd AND2X2
X_2077_ _1167_ _1181_ _1212_ _1213_ vdd gnd NAND3X1
XFILL_0__1752_ gnd vdd FILL
XFILL_8__2737_ gnd vdd FILL
XFILL_8__2317_ gnd vdd FILL
XFILL_2__2711_ gnd vdd FILL
XFILL_4__2637_ gnd vdd FILL
XFILL_4__2217_ gnd vdd FILL
XFILL_0__2957_ gnd vdd FILL
XFILL_0__2537_ gnd vdd FILL
XFILL_0__2117_ gnd vdd FILL
XFILL_6__3504_ gnd vdd FILL
XFILL_1__3180_ gnd vdd FILL
XFILL_7__1939_ gnd vdd FILL
XFILL_5__1921_ gnd vdd FILL
XFILL_8__2490_ gnd vdd FILL
XFILL_8__2070_ gnd vdd FILL
XFILL_1__1913_ gnd vdd FILL
XFILL_3__1839_ gnd vdd FILL
XFILL_4__2390_ gnd vdd FILL
XFILL_5__2706_ gnd vdd FILL
XFILL_0__2290_ gnd vdd FILL
X_1768_ C _912_ _921_ vdd gnd NAND2X1
XFILL_4__3595_ gnd vdd FILL
XFILL_7__1692_ gnd vdd FILL
XFILL_4__3175_ gnd vdd FILL
XFILL_0__3495_ gnd vdd FILL
XFILL_0__3075_ gnd vdd FILL
XFILL_4__1908_ gnd vdd FILL
XFILL_7__2897_ gnd vdd FILL
XFILL_7__2477_ gnd vdd FILL
XFILL_7__2057_ gnd vdd FILL
XFILL_0__1808_ gnd vdd FILL
XFILL_1__2871_ gnd vdd FILL
XFILL_1__2451_ gnd vdd FILL
XFILL_1__2031_ gnd vdd FILL
XFILL_3__2797_ gnd vdd FILL
XFILL_3__2377_ gnd vdd FILL
XFILL_8__1761_ gnd vdd FILL
XFILL_2__1999_ gnd vdd FILL
XFILL_0__1981_ gnd vdd FILL
XFILL_8__2966_ gnd vdd FILL
XFILL_8__2546_ gnd vdd FILL
XFILL_8__2126_ gnd vdd FILL
XFILL_2__2940_ gnd vdd FILL
XFILL_2__2520_ gnd vdd FILL
XFILL_2__2100_ gnd vdd FILL
XFILL_4__2866_ gnd vdd FILL
XFILL_4__2446_ gnd vdd FILL
XFILL_4__2026_ gnd vdd FILL
XFILL_0__2766_ gnd vdd FILL
XFILL_0__2346_ gnd vdd FILL
XFILL_5__1730_ gnd vdd FILL
XFILL_7__1748_ gnd vdd FILL
XFILL_1_CLKBUF1_insert30 gnd vdd FILL
XFILL_1_CLKBUF1_insert31 gnd vdd FILL
XFILL_1__1722_ gnd vdd FILL
XFILL_1_CLKBUF1_insert32 gnd vdd FILL
XFILL_1_CLKBUF1_insert33 gnd vdd FILL
XFILL_1_CLKBUF1_insert34 gnd vdd FILL
XFILL_1_CLKBUF1_insert35 gnd vdd FILL
XFILL_1_CLKBUF1_insert36 gnd vdd FILL
XFILL_1_CLKBUF1_insert37 gnd vdd FILL
XFILL_1_CLKBUF1_insert38 gnd vdd FILL
XFILL_5__2935_ gnd vdd FILL
XFILL_5__2515_ gnd vdd FILL
XFILL_8__3084_ gnd vdd FILL
XFILL_1__2927_ gnd vdd FILL
XFILL_1__2507_ gnd vdd FILL
X_1997_ I _1131_ _1132_ _1133_ vdd gnd OAI21X1
XFILL_8__1817_ gnd vdd FILL
XFILL_4__1717_ gnd vdd FILL
XFILL_7__2286_ gnd vdd FILL
X_3303_ _57_ clk_bF$buf10 IRHOLD[4] vdd gnd DFFPOSX1
XFILL_1__2680_ gnd vdd FILL
XFILL_1__2260_ gnd vdd FILL
XFILL_3__2186_ gnd vdd FILL
XFILL184050x35250 gnd vdd FILL
XFILL_8__1990_ gnd vdd FILL
XFILL_5__3473_ gnd vdd FILL
XFILL_5__3053_ gnd vdd FILL
XFILL_1__3465_ gnd vdd FILL
XFILL_1__3045_ gnd vdd FILL
XFILL_4__1890_ gnd vdd FILL
XFILL_0__1790_ gnd vdd FILL
XFILL_8__2775_ gnd vdd FILL
XFILL_8__2355_ gnd vdd FILL
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
XFILL_9__3209_ gnd vdd FILL
XFILL_3__3603_ gnd vdd FILL
XFILL_5__3529_ gnd vdd FILL
XFILL_5__3109_ gnd vdd FILL
XFILL_4__1946_ gnd vdd FILL
XFILL_7__2095_ gnd vdd FILL
XFILL_0__1846_ gnd vdd FILL
XFILL_6__2813_ gnd vdd FILL
X_3532_ _1597_ _1594_ _1618_ vdd gnd NAND2X1
X_3112_ _695_ _757_ _759_ _85_ vdd gnd OAI21X1
XFILL_2__2805_ gnd vdd FILL
XFILL_8__2584_ gnd vdd FILL
XFILL_8__2164_ gnd vdd FILL
XFILL_4__2484_ gnd vdd FILL
XFILL_4__2064_ gnd vdd FILL
XFILL_0__2384_ gnd vdd FILL
XFILL_8__3369_ gnd vdd FILL
XFILL_7__1786_ gnd vdd FILL
XFILL182850x7950 gnd vdd FILL
X_2803_ _508_ _1129__bF$buf0 _510_ _507_ _25_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1760_ gnd vdd FILL
XFILL_0__3589_ gnd vdd FILL
XFILL_0__3169_ gnd vdd FILL
XFILL_5__2973_ gnd vdd FILL
XFILL_5__2553_ gnd vdd FILL
XFILL_5__2133_ gnd vdd FILL
XFILL_1__2965_ gnd vdd FILL
XFILL_1__2545_ gnd vdd FILL
XFILL_7__3512_ gnd vdd FILL
XFILL_1__2125_ gnd vdd FILL
XFILL_3__3412_ gnd vdd FILL
XFILL_8__1855_ gnd vdd FILL
XFILL_4__1755_ gnd vdd FILL
XFILL_6__2622_ gnd vdd FILL
X_3341_ _94_ vdd _1__bF$buf4 clk_bF$buf4 _AXYS[3]_[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2202_ gnd vdd FILL
XFILL_2__2614_ gnd vdd FILL
XFILL_5__3091_ gnd vdd FILL
XFILL_6__3407_ gnd vdd FILL
XFILL_1__3083_ gnd vdd FILL
XFILL_5__1824_ gnd vdd FILL
XFILL_8__2393_ gnd vdd FILL
XFILL_1__1816_ gnd vdd FILL
XFILL_4__2293_ gnd vdd FILL
XFILL_5__2609_ gnd vdd FILL
XFILL_8__3598_ gnd vdd FILL
XFILL_6__3580_ gnd vdd FILL
XFILL_0__2193_ gnd vdd FILL
XFILL_6__3160_ gnd vdd FILL
XFILL_8__3178_ gnd vdd FILL
XFILL_2__3152_ gnd vdd FILL
XFILL_4__3498_ gnd vdd FILL
XFILL_4__3078_ gnd vdd FILL
X_2612_ RDY_bF$buf5 _931_ _332_ _342_ _2_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3398_ gnd vdd FILL
XFILL_5__2782_ gnd vdd FILL
XFILL_5__2362_ gnd vdd FILL
XFILL_1__2774_ gnd vdd FILL
XFILL_1__2354_ gnd vdd FILL
XFILL_3__3221_ gnd vdd FILL
XFILL_5__3147_ gnd vdd FILL
XFILL184350x74250 gnd vdd FILL
XFILL_1__3559_ gnd vdd FILL
XFILL_1__3139_ gnd vdd FILL
XFILL_4__1984_ gnd vdd FILL
XFILL_0__1884_ gnd vdd FILL
XFILL_6__2851_ gnd vdd FILL
XFILL_8__2869_ gnd vdd FILL
X_3570_ _1488_ vdd _1484_ clk_bF$buf3 ADD[0] vdd 
+ gnd
+ DFFSR
XFILL_8__2449_ gnd vdd FILL
XFILL_6__2431_ gnd vdd FILL
XFILL_6__2011_ gnd vdd FILL
XFILL_8__2029_ gnd vdd FILL
X_3150_ _781_ _780_ _778_ _782_ vdd gnd NAND3X1
XFILL_2__2843_ gnd vdd FILL
XFILL_2__2423_ gnd vdd FILL
XFILL_2__2003_ gnd vdd FILL
XFILL_4__2769_ gnd vdd FILL
XFILL_4__2349_ gnd vdd FILL
XFILL_0__2669_ gnd vdd FILL
XFILL_0__2249_ gnd vdd FILL
XFILL_6__3216_ gnd vdd FILL
XFILL_2__3208_ gnd vdd FILL
XFILL_3__2912_ gnd vdd FILL
XFILL_5__2838_ gnd vdd FILL
XFILL_5__2418_ gnd vdd FILL
XFILL_2__3381_ gnd vdd FILL
X_2841_ _123_ _1219__bF$buf1 _537_ _540_ _33_ vdd 
+ gnd
+ AOI22X1
XFILL_6__1702_ gnd vdd FILL
X_2421_ ADD[6] _139_ _173_ _174_ vdd gnd AOI21X1
X_2001_ _1136_ IRHOLD_valid_bF$buf3 _1133_ _1137_ vdd gnd AOI21X1
XFILL_5__2591_ gnd vdd FILL
XFILL_7__2189_ gnd vdd FILL
XFILL_5__2171_ gnd vdd FILL
XFILL_6__2907_ gnd vdd FILL
X_3206_ _802_ _829_ ABL[3] _835_ vdd gnd OAI21X1
XFILL_1__2583_ gnd vdd FILL
XFILL_7__3550_ gnd vdd FILL
XFILL_1__2163_ gnd vdd FILL
XFILL_7__3130_ gnd vdd FILL
XFILL_3__2089_ gnd vdd FILL
XFILL_3__3450_ gnd vdd FILL
XFILL_3__3030_ gnd vdd FILL
XFILL_8__1893_ gnd vdd FILL
XFILL_5__3376_ gnd vdd FILL
XFILL_1__3368_ gnd vdd FILL
XFILL_4__1793_ gnd vdd FILL
XFILL_0__1693_ gnd vdd FILL
XFILL_6__2660_ gnd vdd FILL
XFILL_8__2678_ gnd vdd FILL
XFILL_8__2258_ gnd vdd FILL
XFILL_6__2240_ gnd vdd FILL
XFILL_2__2652_ gnd vdd FILL
XFILL_2__2232_ gnd vdd FILL
XFILL_4__2998_ gnd vdd FILL
XFILL_4__2578_ gnd vdd FILL
XFILL_4__2158_ gnd vdd FILL
XFILL_0__2898_ gnd vdd FILL
XFILL_0__2478_ gnd vdd FILL
XFILL_6__3445_ gnd vdd FILL
XFILL_0__2058_ gnd vdd FILL
XFILL_6__3025_ gnd vdd FILL
XFILL_2__3437_ gnd vdd FILL
XFILL_2__3017_ gnd vdd FILL
XFILL_5__1862_ gnd vdd FILL
XFILL_1__1854_ gnd vdd FILL
XFILL_7__2821_ gnd vdd FILL
XFILL_7__2401_ gnd vdd FILL
XFILL_3__2721_ gnd vdd FILL
XFILL_3__2301_ gnd vdd FILL
XFILL_5__2647_ gnd vdd FILL
XFILL_5__2227_ gnd vdd FILL
XFILL_1__2639_ gnd vdd FILL
XFILL_1__2219_ gnd vdd FILL
XFILL_2__3190_ gnd vdd FILL
XFILL_3__3506_ gnd vdd FILL
XFILL_6__1931_ gnd vdd FILL
XFILL_8__1949_ gnd vdd FILL
X_2650_ _239_ _359_ _1051__bF$buf0 _376_ vdd gnd OAI21X1
X_2230_ _927_ _1037_ _886__bF$buf2 _1364_ vdd gnd OAI21X1
XFILL_2__1923_ gnd vdd FILL
XFILL_4__1849_ gnd vdd FILL
XFILL_0__1749_ gnd vdd FILL
XFILL_6__2716_ gnd vdd FILL
X_3435_ BI[2] AI[2] _1653_ _1521_ vdd gnd NAND3X1
X_3015_ _673_ _679_ _680_ _681_ vdd gnd OAI21X1
XFILL_1__2392_ gnd vdd FILL
XFILL_2__2708_ gnd vdd FILL
XFILL_1_BUFX2_insert60 gnd vdd FILL
XFILL_1_BUFX2_insert61 gnd vdd FILL
XFILL_1_BUFX2_insert62 gnd vdd FILL
XFILL_1_BUFX2_insert63 gnd vdd FILL
XFILL_1_BUFX2_insert64 gnd vdd FILL
XFILL_5__3185_ gnd vdd FILL
XFILL_1_BUFX2_insert65 gnd vdd FILL
XFILL_1_BUFX2_insert66 gnd vdd FILL
XFILL_1_BUFX2_insert67 gnd vdd FILL
XFILL_1_BUFX2_insert68 gnd vdd FILL
XFILL_1_BUFX2_insert69 gnd vdd FILL
XFILL_1__3597_ gnd vdd FILL
XFILL_1__3177_ gnd vdd FILL
XFILL_5__1918_ gnd vdd FILL
XFILL_8__2487_ gnd vdd FILL
XFILL_8__2067_ gnd vdd FILL
XFILL_2__2881_ gnd vdd FILL
XFILL_2__2461_ gnd vdd FILL
XFILL_2__2041_ gnd vdd FILL
XFILL_4__2387_ gnd vdd FILL
X_1921_ _1063_ _1064_ vdd gnd INVX1
XFILL_0__2287_ gnd vdd FILL
XFILL_7__1689_ gnd vdd FILL
X_2706_ _420_ _406_ _427_ _428_ vdd gnd AOI21X1
XFILL_7__2630_ gnd vdd FILL
XFILL_7__2210_ gnd vdd FILL
XFILL_3__2950_ gnd vdd FILL
XFILL_3__2530_ gnd vdd FILL
XFILL_3__2110_ gnd vdd FILL
XFILL_5__2876_ gnd vdd FILL
XFILL_5__2456_ gnd vdd FILL
XFILL_5__2036_ gnd vdd FILL
XFILL_1__2868_ gnd vdd FILL
XFILL_1__2448_ gnd vdd FILL
XFILL_1__2028_ gnd vdd FILL
XFILL_7__3415_ gnd vdd FILL
XFILL_8__1758_ gnd vdd FILL
XFILL_6__1740_ gnd vdd FILL
XFILL_2__1732_ gnd vdd FILL
XFILL_0__1978_ gnd vdd FILL
XFILL_6__2945_ gnd vdd FILL
XFILL_6__2525_ gnd vdd FILL
X_3244_ _7_ vdd _1__bF$buf8 clk_bF$buf2 PC[5] vdd 
+ gnd
+ DFFSR
XFILL_6__2105_ gnd vdd FILL
XFILL_2__2937_ gnd vdd FILL
XFILL_2__2517_ gnd vdd FILL
XFILL_7__1901_ gnd vdd FILL
XFILL_3__1801_ gnd vdd FILL
XFILL_5__1727_ gnd vdd FILL
XFILL_8__2296_ gnd vdd FILL
XFILL_1__1719_ gnd vdd FILL
XFILL_2__2690_ gnd vdd FILL
XFILL_2__2270_ gnd vdd FILL
XFILL_4__2196_ gnd vdd FILL
X_1730_ _882__bF$buf0 _880_ _883_ vdd gnd NOR2X1
XFILL_6__3483_ gnd vdd FILL
XFILL_0__2096_ gnd vdd FILL
XFILL_6__3063_ gnd vdd FILL
XFILL_2__3475_ gnd vdd FILL
XFILL_2__3055_ gnd vdd FILL
X_2935_ _593_ _616_ _617_ vdd gnd NOR2X1
X_2515_ _1116_ _182_ _258_ _259_ vdd gnd AOI21X1
XFILL_1__1892_ gnd vdd FILL
XFILL_5__2685_ gnd vdd FILL
XFILL_5__2265_ gnd vdd FILL
XFILL_1__2677_ gnd vdd FILL
XFILL_1__2257_ gnd vdd FILL
XFILL_7__3224_ gnd vdd FILL
XFILL_3__3544_ gnd vdd FILL
XFILL_3__3124_ gnd vdd FILL
XFILL_8__1987_ gnd vdd FILL
XFILL_2__1961_ gnd vdd FILL
XFILL_4__1887_ gnd vdd FILL
XFILL_0__1787_ gnd vdd FILL
XFILL_6__2754_ gnd vdd FILL
X_3473_ _1546_ _1550_ _1558_ _1559_ vdd gnd NAND3X1
XFILL_6__2334_ gnd vdd FILL
X_3053_ _AXYS[0]_[2] _693_ _715_ vdd gnd NAND2X1
XFILL_2__2746_ gnd vdd FILL
XFILL_2__2326_ gnd vdd FILL
XFILL_7__1710_ gnd vdd FILL
XFILL_6__3539_ gnd vdd FILL
XFILL_6__3119_ gnd vdd FILL
XFILL_0__3513_ gnd vdd FILL
XFILL_5__1956_ gnd vdd FILL
XFILL_1__1948_ gnd vdd FILL
XFILL_7__2915_ gnd vdd FILL
XFILL_3__2815_ gnd vdd FILL
X_2744_ RDY_bF$buf5 _283_ _462_ _14_ vdd gnd OAI21X1
X_2324_ _1450_ _1454_ _1456_ _1457_ vdd gnd NAND3X1
XFILL_5__2494_ gnd vdd FILL
XFILL_5__2074_ gnd vdd FILL
X_3529_ _1592_ _1614_ _1589_ _1615_ vdd gnd OAI21X1
X_3109_ _692_ _1023_ _757_ vdd gnd NAND2X1
XFILL_1__2486_ gnd vdd FILL
XFILL_7__3453_ gnd vdd FILL
XFILL_1__2066_ gnd vdd FILL
XFILL_7__3033_ gnd vdd FILL
XFILL_8__1796_ gnd vdd FILL
XFILL_5_BUFX2_insert10 gnd vdd FILL
XFILL_5_BUFX2_insert11 gnd vdd FILL
XFILL_5_BUFX2_insert12 gnd vdd FILL
XFILL_5_BUFX2_insert13 gnd vdd FILL
XFILL_5_BUFX2_insert14 gnd vdd FILL
XFILL_2__1770_ gnd vdd FILL
XFILL_5_BUFX2_insert15 gnd vdd FILL
XFILL_5_BUFX2_insert16 gnd vdd FILL
XFILL_5_BUFX2_insert17 gnd vdd FILL
XFILL_5_BUFX2_insert18 gnd vdd FILL
XFILL_5_BUFX2_insert19 gnd vdd FILL
XFILL_4__1696_ gnd vdd FILL
XFILL_6__2983_ gnd vdd FILL
XFILL_6__2563_ gnd vdd FILL
X_3282_ _44_ vdd _1__bF$buf6 clk_bF$buf6 write_back vdd 
+ gnd
+ DFFSR
XFILL_6__2143_ gnd vdd FILL
XFILL_2__2975_ gnd vdd FILL
XFILL_2__2555_ gnd vdd FILL
XFILL_8__3522_ gnd vdd FILL
XFILL_2__2135_ gnd vdd FILL
XFILL_8__3102_ gnd vdd FILL
XFILL_4__3422_ gnd vdd FILL
XFILL_4__3002_ gnd vdd FILL
XFILL_5__1765_ gnd vdd FILL
XFILL_1__1757_ gnd vdd FILL
XFILL_7__2724_ gnd vdd FILL
XFILL_7__2304_ gnd vdd FILL
XFILL_3__2624_ gnd vdd FILL
XFILL_3__2204_ gnd vdd FILL
XFILL_7__3509_ gnd vdd FILL
XFILL_2__3093_ gnd vdd FILL
XFILL_3__3409_ gnd vdd FILL
X_2973_ _514_ _642_ _643_ vdd gnd NAND2X1
XFILL_6__1834_ gnd vdd FILL
X_2553_ PC[13] _291_ vdd gnd INVX1
X_2133_ RDY_bF$buf1 _1268_ _1269_ vdd gnd NAND2X1
XFILL_2__1826_ gnd vdd FILL
XFILL_6__2619_ gnd vdd FILL
X_3338_ _92_ vdd _1__bF$buf1 clk_bF$buf3 _AXYS[2]_[7] vdd 
+ gnd
+ DFFSR
XFILL_1__2295_ gnd vdd FILL
XFILL_3__3582_ gnd vdd FILL
XFILL_3__3162_ gnd vdd FILL
XFILL_5__3088_ gnd vdd FILL
XFILL_6__2792_ gnd vdd FILL
XFILL_6__2372_ gnd vdd FILL
X_3091_ _692_ _1022_ _747_ vdd gnd NAND2X1
XFILL_2__2784_ gnd vdd FILL
XFILL_2__2364_ gnd vdd FILL
X_1824_ PC[4] _972_ vdd gnd INVX1
XFILL_4__3231_ gnd vdd FILL
XFILL_6__3157_ gnd vdd FILL
XFILL_0__3551_ gnd vdd FILL
XFILL_0__3131_ gnd vdd FILL
XFILL_2__3149_ gnd vdd FILL
XFILL_5__1994_ gnd vdd FILL
X_2609_ _314_ _318_ _337_ _339_ _340_ vdd 
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
XFILL_3__3218_ gnd vdd FILL
X_2782_ NMI_edge _495_ _496_ _18_ vdd gnd OAI21X1
X_2362_ op[2] _124_ vdd gnd INVX1
XFILL_8__2602_ gnd vdd FILL
XFILL_4__2922_ gnd vdd FILL
XFILL_4__2502_ gnd vdd FILL
XFILL_6__2848_ gnd vdd FILL
X_3567_ _1485_ vdd _1484_ clk_bF$buf4 _u_ALU8.BI7_ vdd 
+ gnd
+ DFFSR
XFILL_6__2428_ gnd vdd FILL
XFILL_6__2008_ gnd vdd FILL
X_3147_ _882__bF$buf3 _880_ _1002__bF$buf4 _779_ vdd gnd OAI21X1
XFILL_7__3491_ gnd vdd FILL
XFILL_7__3071_ gnd vdd FILL
XFILL_0__2822_ gnd vdd FILL
XFILL_0__2402_ gnd vdd FILL
XFILL_3__3391_ gnd vdd FILL
XFILL_7__1804_ gnd vdd FILL
XFILL183450x109350 gnd vdd FILL
XFILL_3__1704_ gnd vdd FILL
XFILL_6__2181_ gnd vdd FILL
XFILL_8__2199_ gnd vdd FILL
XFILL_2__2593_ gnd vdd FILL
XFILL_8__3560_ gnd vdd FILL
XFILL_2__2173_ gnd vdd FILL
XFILL_8__3140_ gnd vdd FILL
XFILL_4__2099_ gnd vdd FILL
XFILL_3__2909_ gnd vdd FILL
XFILL_4__3460_ gnd vdd FILL
XFILL_4__3040_ gnd vdd FILL
XFILL_6__3386_ gnd vdd FILL
XFILL_6_BUFX2_insert60 gnd vdd FILL
XFILL_6_BUFX2_insert61 gnd vdd FILL
XFILL_6_BUFX2_insert62 gnd vdd FILL
XFILL_6_BUFX2_insert63 gnd vdd FILL
XFILL_6_BUFX2_insert64 gnd vdd FILL
XFILL_6_BUFX2_insert65 gnd vdd FILL
XFILL_6_BUFX2_insert66 gnd vdd FILL
XFILL_2__3378_ gnd vdd FILL
XFILL_6_BUFX2_insert67 gnd vdd FILL
XFILL_6_BUFX2_insert68 gnd vdd FILL
XFILL_6_BUFX2_insert69 gnd vdd FILL
X_2838_ _1297_ _1162_ _538_ vdd gnd NAND2X1
X_2418_ _1036_ _1281_ PC[14] _171_ vdd gnd OAI21X1
XFILL_1__1795_ gnd vdd FILL
XFILL_7__2762_ gnd vdd FILL
XFILL_7__2342_ gnd vdd FILL
XFILL_3__2662_ gnd vdd FILL
XFILL_3__2242_ gnd vdd FILL
XFILL_5__2588_ gnd vdd FILL
XFILL_5__2168_ gnd vdd FILL
XFILL_7__3547_ gnd vdd FILL
XFILL_7__3127_ gnd vdd FILL
XFILL_1__3521_ gnd vdd FILL
XFILL_1__3101_ gnd vdd FILL
XFILL_3__3447_ gnd vdd FILL
XFILL_3__3027_ gnd vdd FILL
XFILL_6__1872_ gnd vdd FILL
X_2591_ _1002__bF$buf4 _1267_ _1051__bF$buf2 _322_ vdd gnd NAND3X1
X_2171_ _1305_ _1295_ _1306_ vdd gnd NOR2X1
XFILL_2__1864_ gnd vdd FILL
XFILL_8__2831_ gnd vdd FILL
XFILL_8__2411_ gnd vdd FILL
XFILL_4__2731_ gnd vdd FILL
XFILL_4__2311_ gnd vdd FILL
XFILL_6__2657_ gnd vdd FILL
X_3376_ alu_op[1] _1651_ vdd gnd INVX2
XFILL_6__2237_ gnd vdd FILL
XFILL_2__2649_ gnd vdd FILL
XFILL_0__2631_ gnd vdd FILL
XFILL_0__2211_ gnd vdd FILL
XFILL_2__2229_ gnd vdd FILL
XFILL_4__3516_ gnd vdd FILL
XFILL_3__1933_ gnd vdd FILL
XFILL_9__2900_ gnd vdd FILL
XFILL_0__3416_ gnd vdd FILL
XFILL_5__1859_ gnd vdd FILL
XFILL_7__2818_ gnd vdd FILL
XFILL_5__2800_ gnd vdd FILL
XFILL_3__2718_ gnd vdd FILL
X_1862_ _1002__bF$buf0 _998_ _1005_ _1006_ vdd gnd NAND3X1
XFILL_6__3195_ gnd vdd FILL
XFILL_2__3187_ gnd vdd FILL
XFILL_6__1928_ gnd vdd FILL
X_2647_ _367_ _373_ _374_ vdd gnd XOR2X1
X_2227_ _1361_ _1346_ _1362_ vdd gnd NAND2X1
XFILL_7__2991_ gnd vdd FILL
XFILL_7__2571_ gnd vdd FILL
XFILL_7__2151_ gnd vdd FILL
XFILL_0__1902_ gnd vdd FILL
XFILL_3__2891_ gnd vdd FILL
XFILL_3__2471_ gnd vdd FILL
XFILL_3__2051_ gnd vdd FILL
XFILL_5__2397_ gnd vdd FILL
XFILL184350x62550 gnd vdd FILL
XFILL_1__2389_ gnd vdd FILL
XFILL_8__1699_ gnd vdd FILL
XFILL_8__2640_ gnd vdd FILL
XFILL_8__2220_ gnd vdd FILL
XFILL_4__2960_ gnd vdd FILL
XFILL_4__2540_ gnd vdd FILL
XFILL_4__2120_ gnd vdd FILL
XFILL_6__2886_ gnd vdd FILL
XFILL_6__2466_ gnd vdd FILL
XFILL_6__2046_ gnd vdd FILL
X_3185_ _1040_ _809_ _816_ _817_ vdd gnd NAND3X1
XFILL_0__2860_ gnd vdd FILL
XFILL_2__2878_ gnd vdd FILL
XFILL_2__2458_ gnd vdd FILL
XFILL_0__2440_ gnd vdd FILL
XFILL_2__2038_ gnd vdd FILL
XFILL_0__2020_ gnd vdd FILL
XFILL_8__3425_ gnd vdd FILL
XFILL_8__3005_ gnd vdd FILL
X_1918_ _AXYS[2]_[1] _1023_ _1012_ _AXYS[3]_[1] _1061_ vdd 
+ gnd
+ AOI22X1
XFILL_7__1842_ gnd vdd FILL
XFILL_3__1742_ gnd vdd FILL
XFILL_0__3225_ gnd vdd FILL
XFILL_7__2627_ gnd vdd FILL
XFILL_7__2207_ gnd vdd FILL
XFILL_1__2601_ gnd vdd FILL
XFILL_3__2947_ gnd vdd FILL
XFILL_3__2527_ gnd vdd FILL
XFILL_3__2107_ gnd vdd FILL
XFILL_8__1911_ gnd vdd FILL
XFILL_4__1811_ gnd vdd FILL
X_2876_ _310_ _566_ _567_ _568_ _40_ vdd 
+ gnd
+ OAI22X1
XFILL_6__1737_ gnd vdd FILL
X_2456_ _202_ _206_ _207_ vdd gnd NOR2X1
X_2036_ _1148_ _1171_ _1172_ vdd gnd NAND2X1
XFILL_7__2380_ gnd vdd FILL
XFILL_0__1711_ gnd vdd FILL
XFILL_2__1729_ gnd vdd FILL
XFILL_3__2280_ gnd vdd FILL
XFILL_1__2198_ gnd vdd FILL
XFILL_7__3585_ gnd vdd FILL
XFILL_7__3165_ gnd vdd FILL
XFILL_0__2916_ gnd vdd FILL
XFILL_3__3485_ gnd vdd FILL
XFILL_3__3065_ gnd vdd FILL
XFILL_6__2695_ gnd vdd FILL
XFILL_6__2275_ gnd vdd FILL
XFILL_2__2687_ gnd vdd FILL
XFILL_2__2267_ gnd vdd FILL
X_1727_ _879_ _868_ _880_ vdd gnd NAND2X1
XFILL_4__3554_ gnd vdd FILL
XFILL_4__3134_ gnd vdd FILL
XFILL_3__1971_ gnd vdd FILL
XFILL_0__3454_ gnd vdd FILL
XFILL_0__3034_ gnd vdd FILL
XFILL_5__1897_ gnd vdd FILL
XFILL_1__1889_ gnd vdd FILL
XFILL_7__2856_ gnd vdd FILL
XFILL_7__2436_ gnd vdd FILL
XFILL_7__2016_ gnd vdd FILL
XFILL_1__2830_ gnd vdd FILL
XFILL_1__2410_ gnd vdd FILL
XFILL_3__2756_ gnd vdd FILL
XFILL_3__2336_ gnd vdd FILL
XFILL_8__1720_ gnd vdd FILL
XFILL_5__3203_ gnd vdd FILL
XFILL_6__1966_ gnd vdd FILL
X_2685_ PC[7] _336_ _408_ vdd gnd NAND2X1
X_2265_ _1220_ _1159_ _1299_ _1399_ vdd gnd OAI21X1
XFILL_0__1940_ gnd vdd FILL
XFILL_2__1958_ gnd vdd FILL
XFILL_8__2925_ gnd vdd FILL
XFILL_8__2505_ gnd vdd FILL
XFILL_4__2825_ gnd vdd FILL
XFILL_4__2405_ gnd vdd FILL
XFILL_7__3394_ gnd vdd FILL
XFILL_0__2725_ gnd vdd FILL
XFILL_0__2305_ gnd vdd FILL
XFILL_7__1707_ gnd vdd FILL
XFILL_6__2084_ gnd vdd FILL
XFILL_2__2496_ gnd vdd FILL
XFILL_8__3463_ gnd vdd FILL
XFILL_2__2076_ gnd vdd FILL
XFILL_8__3043_ gnd vdd FILL
X_1956_ _AXYS[1]_[5] _1022_ _1095_ vdd gnd NAND2X1
XFILL_7__1880_ gnd vdd FILL
XFILL_3__1780_ gnd vdd FILL
XFILL_1__1698_ gnd vdd FILL
XFILL_7__2665_ gnd vdd FILL
XFILL_7__2245_ gnd vdd FILL
XFILL_3__2985_ gnd vdd FILL
XFILL_3__2565_ gnd vdd FILL
XFILL_3__2145_ gnd vdd FILL
XFILL_5__3432_ gnd vdd FILL
XFILL_5__3012_ gnd vdd FILL
XFILL_1__3424_ gnd vdd FILL
XFILL_1__3004_ gnd vdd FILL
XFILL_6__1775_ gnd vdd FILL
X_2494_ _200_ _240_ vdd gnd INVX2
X_2074_ _1202_ _1209_ _1210_ vdd gnd OR2X2
XFILL_2__1767_ gnd vdd FILL
XFILL_8__2734_ gnd vdd FILL
XFILL_8__2314_ gnd vdd FILL
XFILL_4__2634_ gnd vdd FILL
XFILL_4__2214_ gnd vdd FILL
X_3279_ _41_ vdd _1__bF$buf10 clk_bF$buf5 adc_sbc vdd 
+ gnd
+ DFFSR
XFILL_0__2954_ gnd vdd FILL
XFILL_0__2534_ gnd vdd FILL
XFILL_6__3501_ gnd vdd FILL
XFILL_8__3519_ gnd vdd FILL
XFILL_0__2114_ gnd vdd FILL
XFILL_7__1936_ gnd vdd FILL
XFILL_4__3419_ gnd vdd FILL
XFILL_1__1910_ gnd vdd FILL
XFILL_3__1836_ gnd vdd FILL
XFILL_5__2703_ gnd vdd FILL
X_1765_ _881_ _917_ _918_ vdd gnd NAND2X1
XFILL_4__3592_ gnd vdd FILL
XFILL_4__3172_ gnd vdd FILL
XFILL_6__3098_ gnd vdd FILL
XFILL_0__3492_ gnd vdd FILL
XFILL_0__3072_ gnd vdd FILL
XFILL_4__1905_ gnd vdd FILL
XFILL_7__2894_ gnd vdd FILL
XFILL_7__2474_ gnd vdd FILL
XFILL_7__2054_ gnd vdd FILL
XFILL_0__1805_ gnd vdd FILL
XFILL_3__2794_ gnd vdd FILL
XFILL_3__2374_ gnd vdd FILL
XFILL_3__3579_ gnd vdd FILL
XFILL_3__3159_ gnd vdd FILL
XFILL_2__1996_ gnd vdd FILL
XFILL_8__2963_ gnd vdd FILL
XFILL_8__2543_ gnd vdd FILL
XFILL_8__2123_ gnd vdd FILL
XFILL_4__2863_ gnd vdd FILL
XFILL_4__2443_ gnd vdd FILL
XFILL_4__2023_ gnd vdd FILL
XFILL_6__2789_ gnd vdd FILL
XFILL_6__2369_ gnd vdd FILL
X_3088_ _744_ DIMUX[7] _981_ _745_ vdd gnd MUX2X1
XFILL_0__2763_ gnd vdd FILL
XFILL_0__2343_ gnd vdd FILL
XFILL_7__1745_ gnd vdd FILL
XFILL_4__3228_ gnd vdd FILL
XFILL_0__3548_ gnd vdd FILL
XFILL_0__3128_ gnd vdd FILL
XFILL_5__2932_ gnd vdd FILL
XFILL_5__2512_ gnd vdd FILL
XFILL_8__3081_ gnd vdd FILL
XFILL_1__2924_ gnd vdd FILL
XFILL_1__2504_ gnd vdd FILL
X_1994_ IRHOLD[1] _1130_ vdd gnd INVX1
XFILL_8__1814_ gnd vdd FILL
XFILL_4__1714_ gnd vdd FILL
X_2779_ NMI_1 _494_ vdd gnd INVX1
X_2359_ _118_ _120_ _122_ alu_op[0] vdd gnd OAI21X1
XFILL_7__2283_ gnd vdd FILL
X_3300_ _54_ clk_bF$buf5 IRHOLD[1] vdd gnd DFFPOSX1
XFILL_3__2183_ gnd vdd FILL
XFILL_9__3150_ gnd vdd FILL
XFILL184350x39150 gnd vdd FILL
XFILL_4__2919_ gnd vdd FILL
XFILL_7__3488_ gnd vdd FILL
XFILL_5__3470_ gnd vdd FILL
XFILL_5__3050_ gnd vdd FILL
XFILL_7__3068_ gnd vdd FILL
XFILL_0__2819_ gnd vdd FILL
XFILL_1__3462_ gnd vdd FILL
XFILL_1__3042_ gnd vdd FILL
XFILL_3__3388_ gnd vdd FILL
XFILL_8__2772_ gnd vdd FILL
XFILL_8__2352_ gnd vdd FILL
XFILL_4__2672_ gnd vdd FILL
XFILL_4__2252_ gnd vdd FILL
XFILL_6__2598_ gnd vdd FILL
XFILL_6__2178_ gnd vdd FILL
XFILL_0__2992_ gnd vdd FILL
XFILL_0__2572_ gnd vdd FILL
XFILL_8__3557_ gnd vdd FILL
XFILL_0__2152_ gnd vdd FILL
XFILL_8__3137_ gnd vdd FILL
XFILL_2__3531_ gnd vdd FILL
XFILL_2__3111_ gnd vdd FILL
XFILL_7__1974_ gnd vdd FILL
XFILL_4__3457_ gnd vdd FILL
XFILL_4__3037_ gnd vdd FILL
XFILL_3__1874_ gnd vdd FILL
XFILL_9__2841_ gnd vdd FILL
XFILL_7__2759_ gnd vdd FILL
XFILL_5__2741_ gnd vdd FILL
XFILL_7__2339_ gnd vdd FILL
XFILL_5__2321_ gnd vdd FILL
XFILL_1__2733_ gnd vdd FILL
XFILL_1__2313_ gnd vdd FILL
XFILL_3__2659_ gnd vdd FILL
XFILL_3__2239_ gnd vdd FILL
XFILL_3__3600_ gnd vdd FILL
XFILL_5__3526_ gnd vdd FILL
XFILL_5__3106_ gnd vdd FILL
XFILL_1__3518_ gnd vdd FILL
XFILL_4__1943_ gnd vdd FILL
XFILL_6__1869_ gnd vdd FILL
X_2588_ _318_ _314_ _319_ vdd gnd NAND2X1
X_2168_ _1145_ _1161_ _1303_ vdd gnd NAND2X1
XFILL_7__2092_ gnd vdd FILL
XFILL_0__1843_ gnd vdd FILL
XFILL_8__2828_ gnd vdd FILL
XFILL_6__2810_ gnd vdd FILL
XFILL_8__2408_ gnd vdd FILL
XFILL_2__2802_ gnd vdd FILL
XFILL_4__2728_ gnd vdd FILL
XFILL_4__2308_ gnd vdd FILL
XFILL_0__2628_ gnd vdd FILL
XFILL_0__2208_ gnd vdd FILL
XFILL_3__3197_ gnd vdd FILL
XFILL_8__2581_ gnd vdd FILL
XFILL_8__2161_ gnd vdd FILL
XFILL_4__2481_ gnd vdd FILL
XFILL_4__2061_ gnd vdd FILL
XFILL_2__2399_ gnd vdd FILL
XFILL_0__2381_ gnd vdd FILL
XFILL_8__3366_ gnd vdd FILL
X_1859_ _1001_ _1002__bF$buf0 _998_ _1003_ vdd gnd OAI21X1
XFILL_7__1783_ gnd vdd FILL
X_2800_ sec _508_ vdd gnd INVX1
XFILL_0__3586_ gnd vdd FILL
XFILL_0__3166_ gnd vdd FILL
XFILL_5__2970_ gnd vdd FILL
XFILL_7__2988_ gnd vdd FILL
XFILL_7__2568_ gnd vdd FILL
XFILL_5__2550_ gnd vdd FILL
XFILL_5__2130_ gnd vdd FILL
XFILL_7__2148_ gnd vdd FILL
XFILL_1__2962_ gnd vdd FILL
XFILL_1__2542_ gnd vdd FILL
XFILL_1__2122_ gnd vdd FILL
XFILL_3__2888_ gnd vdd FILL
XFILL_3__2468_ gnd vdd FILL
XFILL_3__2048_ gnd vdd FILL
XFILL_8__1852_ gnd vdd FILL
XFILL_4__1752_ gnd vdd FILL
X_2397_ ADD[2] _139_ _153_ _154_ vdd gnd AOI21X1
XFILL_8__2637_ gnd vdd FILL
XFILL_8__2217_ gnd vdd FILL
XFILL_2__2611_ gnd vdd FILL
XFILL_4__2957_ gnd vdd FILL
XFILL_4__2537_ gnd vdd FILL
XFILL_4__2117_ gnd vdd FILL
XFILL_0__2857_ gnd vdd FILL
XFILL_0__2437_ gnd vdd FILL
XFILL_0__2017_ gnd vdd FILL
XFILL_6__3404_ gnd vdd FILL
XFILL_1__3080_ gnd vdd FILL
XFILL_5__1821_ gnd vdd FILL
XFILL_7__1839_ gnd vdd FILL
XFILL_8__2390_ gnd vdd FILL
XFILL_1__1813_ gnd vdd FILL
XFILL_3__1739_ gnd vdd FILL
XFILL_4__2290_ gnd vdd FILL
XFILL_5__2606_ gnd vdd FILL
XFILL_0__2190_ gnd vdd FILL
XFILL_8__3595_ gnd vdd FILL
XFILL_8__3175_ gnd vdd FILL
XFILL_4__3495_ gnd vdd FILL
XFILL_4__3075_ gnd vdd FILL
XFILL_8__1908_ gnd vdd FILL
XFILL_0__3395_ gnd vdd FILL
XFILL_4__1808_ gnd vdd FILL
XFILL_7__2797_ gnd vdd FILL
XFILL_7__2377_ gnd vdd FILL
XFILL_0__1708_ gnd vdd FILL
XFILL_1__2771_ gnd vdd FILL
XFILL_1__2351_ gnd vdd FILL
XFILL_3__2697_ gnd vdd FILL
XFILL_3__2277_ gnd vdd FILL
XFILL184650x78150 gnd vdd FILL
XFILL_5__3564_ gnd vdd FILL
XFILL_5__3144_ gnd vdd FILL
XFILL_1__3556_ gnd vdd FILL
XFILL_1__3136_ gnd vdd FILL
XFILL_4__1981_ gnd vdd FILL
XFILL_0__1881_ gnd vdd FILL
XFILL_2__1899_ gnd vdd FILL
XFILL_8__2866_ gnd vdd FILL
XFILL_8__2446_ gnd vdd FILL
XFILL_8__2026_ gnd vdd FILL
XFILL_2__2840_ gnd vdd FILL
XFILL_2__2420_ gnd vdd FILL
XFILL_2__2000_ gnd vdd FILL
XFILL_4__2766_ gnd vdd FILL
XFILL_4__2346_ gnd vdd FILL
XFILL_0__2666_ gnd vdd FILL
XFILL_0__2246_ gnd vdd FILL
XFILL_6__3213_ gnd vdd FILL
XFILL_2__3205_ gnd vdd FILL
XFILL_3__1968_ gnd vdd FILL
XFILL_5__2835_ gnd vdd FILL
XFILL_5__2415_ gnd vdd FILL
XFILL_1__2827_ gnd vdd FILL
XFILL_1__2407_ gnd vdd FILL
X_1897_ _1034_ _1040_ _1041_ vdd gnd NAND2X1
XFILL_8__1717_ gnd vdd FILL
XFILL_7__2186_ gnd vdd FILL
XFILL_0__1937_ gnd vdd FILL
XFILL_6__2904_ gnd vdd FILL
X_3203_ _831_ _218_ _833_ _102_ vdd gnd OAI21X1
XFILL_1__2580_ gnd vdd FILL
XFILL_1__2160_ gnd vdd FILL
XFILL_3__2086_ gnd vdd FILL
XFILL_8__1890_ gnd vdd FILL
XFILL_5__3373_ gnd vdd FILL
XFILL_1__3365_ gnd vdd FILL
XFILL_4__1790_ gnd vdd FILL
XFILL_0__1690_ gnd vdd FILL
XFILL_8__2675_ gnd vdd FILL
XFILL_8__2255_ gnd vdd FILL
XFILL_4__2995_ gnd vdd FILL
XFILL_4__2575_ gnd vdd FILL
XFILL_4__2155_ gnd vdd FILL
XFILL_0__2895_ gnd vdd FILL
XFILL_0__2475_ gnd vdd FILL
XFILL_6__3442_ gnd vdd FILL
XFILL_0__2055_ gnd vdd FILL
XFILL_6__3022_ gnd vdd FILL
XFILL_2__3434_ gnd vdd FILL
XFILL_2__3014_ gnd vdd FILL
XFILL_7__1877_ gnd vdd FILL
XFILL_1__1851_ gnd vdd FILL
XFILL_3__1777_ gnd vdd FILL
XFILL_5__2644_ gnd vdd FILL
XFILL_5__2224_ gnd vdd FILL
XFILL_1__2636_ gnd vdd FILL
XFILL_1__2216_ gnd vdd FILL
XFILL_7__3603_ gnd vdd FILL
XFILL_3__3503_ gnd vdd FILL
XFILL_8__1946_ gnd vdd FILL
XFILL_5__3429_ gnd vdd FILL
XFILL_5__3009_ gnd vdd FILL
XFILL_2__1920_ gnd vdd FILL
XFILL_4__1846_ gnd vdd FILL
XFILL_0__1746_ gnd vdd FILL
XFILL_6__2713_ gnd vdd FILL
X_3432_ _1512_ _1517_ _1515_ _1518_ vdd gnd OAI21X1
X_3012_ _677_ _676_ _678_ vdd gnd AND2X2
XFILL_2__2705_ gnd vdd FILL
XFILL_5__3182_ gnd vdd FILL
XFILL_1_BUFX2_insert39 gnd vdd FILL
XFILL_1__3594_ gnd vdd FILL
XFILL_1__3174_ gnd vdd FILL
XFILL_5__1915_ gnd vdd FILL
XFILL_8__2484_ gnd vdd FILL
XFILL_8__2064_ gnd vdd FILL
XFILL_1__1907_ gnd vdd FILL
XFILL_4__2384_ gnd vdd FILL
XFILL_0__2284_ gnd vdd FILL
XFILL_4__3589_ gnd vdd FILL
XFILL_4__3169_ gnd vdd FILL
X_2703_ _1051__bF$buf2 _423_ _424_ _425_ vdd gnd NAND3X1
XFILL_0__3489_ gnd vdd FILL
XFILL_9__2973_ gnd vdd FILL
XFILL_0__3069_ gnd vdd FILL
XFILL_5__2873_ gnd vdd FILL
XFILL_5__2453_ gnd vdd FILL
XFILL_5__2033_ gnd vdd FILL
XFILL_1__2865_ gnd vdd FILL
XFILL_1__2445_ gnd vdd FILL
XFILL_1__2025_ gnd vdd FILL
XFILL_7__3412_ gnd vdd FILL
XFILL_8__1755_ gnd vdd FILL
XFILL_0__1975_ gnd vdd FILL
XFILL_6__2942_ gnd vdd FILL
XFILL_6__2522_ gnd vdd FILL
XFILL_6__2102_ gnd vdd FILL
X_3241_ _4_ vdd _1__bF$buf0 clk_bF$buf2 PC[2] vdd 
+ gnd
+ DFFSR
XFILL_9__3091_ gnd vdd FILL
XFILL_2__2934_ gnd vdd FILL
XFILL_2__2514_ gnd vdd FILL
XFILL_5__1724_ gnd vdd FILL
XFILL_8__2293_ gnd vdd FILL
XFILL_1__1716_ gnd vdd FILL
XFILL_4__2193_ gnd vdd FILL
XFILL_5__2929_ gnd vdd FILL
XFILL_5__2509_ gnd vdd FILL
XFILL_8__3498_ gnd vdd FILL
XFILL_6__3480_ gnd vdd FILL
XFILL_0__2093_ gnd vdd FILL
XFILL_6__3060_ gnd vdd FILL
XFILL_8__3078_ gnd vdd FILL
XFILL_2__3472_ gnd vdd FILL
XFILL_2__3052_ gnd vdd FILL
XFILL_4__3398_ gnd vdd FILL
X_2932_ _1138_ _1168_ _603_ _614_ vdd gnd NAND3X1
X_2512_ _252_ _255_ _256_ vdd gnd NAND2X1
XFILL_9__2782_ gnd vdd FILL
XFILL_5__2682_ gnd vdd FILL
XFILL_5__2262_ gnd vdd FILL
XFILL_1__2674_ gnd vdd FILL
XFILL_1__2254_ gnd vdd FILL
XFILL_7__3221_ gnd vdd FILL
XFILL_3__3541_ gnd vdd FILL
XFILL_3__3121_ gnd vdd FILL
XFILL_8__1984_ gnd vdd FILL
XFILL_5__3467_ gnd vdd FILL
XFILL_5__3047_ gnd vdd FILL
XFILL_1__3459_ gnd vdd FILL
XFILL_1__3039_ gnd vdd FILL
XFILL_4__1884_ gnd vdd FILL
XFILL_0__1784_ gnd vdd FILL
XFILL_8__2769_ gnd vdd FILL
XFILL_6__2751_ gnd vdd FILL
X_3470_ _1555_ _1554_ _1556_ vdd gnd NAND2X1
XFILL_6__2331_ gnd vdd FILL
XFILL_8__2349_ gnd vdd FILL
X_3050_ _710_ _702_ _712_ vdd gnd NOR2X1
XFILL_2__2743_ gnd vdd FILL
XFILL_2__2323_ gnd vdd FILL
XFILL_4__2669_ gnd vdd FILL
XFILL_4__2249_ gnd vdd FILL
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
XFILL_2_BUFX2_insert84 gnd vdd FILL
XFILL_2_BUFX2_insert85 gnd vdd FILL
XFILL_2_BUFX2_insert86 gnd vdd FILL
XFILL_2_BUFX2_insert87 gnd vdd FILL
XFILL_2_BUFX2_insert88 gnd vdd FILL
XFILL_2_BUFX2_insert89 gnd vdd FILL
X_2741_ _452_ _410_ _367_ _460_ vdd gnd NOR3X1
X_2321_ _1453_ _1452_ _1451_ _1454_ vdd gnd NOR3X1
XFILL_9__2591_ gnd vdd FILL
XFILL_5__2491_ gnd vdd FILL
XFILL_5__2071_ gnd vdd FILL
XFILL_7__2089_ gnd vdd FILL
XFILL_6__2807_ gnd vdd FILL
X_3526_ _1562_ _1566_ _1612_ vdd gnd XOR2X1
X_3106_ _738_ _747_ _755_ _83_ vdd gnd OAI21X1
XFILL_1__2483_ gnd vdd FILL
XFILL_7__3450_ gnd vdd FILL
XFILL_1__2063_ gnd vdd FILL
XFILL_7__3030_ gnd vdd FILL
XFILL_8__1793_ gnd vdd FILL
XFILL_4__1693_ gnd vdd FILL
XFILL_6__2980_ gnd vdd FILL
XFILL_8__2998_ gnd vdd FILL
XFILL_8__2578_ gnd vdd FILL
XFILL_6__2560_ gnd vdd FILL
XFILL_8__2158_ gnd vdd FILL
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
XFILL_7__2721_ gnd vdd FILL
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
XFILL_3__3406_ gnd vdd FILL
X_2970_ V _636_ _641_ vdd gnd NAND2X1
XFILL_6__1831_ gnd vdd FILL
XFILL_8__1849_ gnd vdd FILL
X_2550_ _284_ _268_ _288_ _289_ vdd gnd OAI21X1
X_2130_ _1265_ _1262_ _1266_ vdd gnd NAND2X1
XFILL_2__1823_ gnd vdd FILL
XFILL184350x27450 gnd vdd FILL
XFILL_4__1749_ gnd vdd FILL
XFILL_6__2616_ gnd vdd FILL
X_3335_ _89_ vdd _1__bF$buf4 clk_bF$buf4 _AXYS[2]_[4] vdd 
+ gnd
+ DFFSR
XFILL_1__2292_ gnd vdd FILL
XFILL_2__2608_ gnd vdd FILL
XFILL_5__3085_ gnd vdd FILL
XFILL_1__3497_ gnd vdd FILL
XFILL_1__3077_ gnd vdd FILL
XFILL_5__1818_ gnd vdd FILL
XFILL_8__2387_ gnd vdd FILL
XFILL_2__2781_ gnd vdd FILL
XFILL_2__2361_ gnd vdd FILL
XFILL_4__2287_ gnd vdd FILL
X_1821_ _970_ _933_ _855_ _967_ BI[2] vdd 
+ gnd
+ OAI22X1
XFILL_0__2187_ gnd vdd FILL
XFILL_6__3154_ gnd vdd FILL
XFILL_2__3566_ gnd vdd FILL
XFILL_2__3146_ gnd vdd FILL
XFILL_5__1991_ gnd vdd FILL
X_2606_ PC[0] _336_ _337_ vdd gnd NAND2X1
XFILL_1__1983_ gnd vdd FILL
XFILL_7__2950_ gnd vdd FILL
XFILL_7__2530_ gnd vdd FILL
XFILL_7__2110_ gnd vdd FILL
XFILL_3__2850_ gnd vdd FILL
XFILL_3__2430_ gnd vdd FILL
XFILL_3__2010_ gnd vdd FILL
XFILL_5__2776_ gnd vdd FILL
XFILL_5__2356_ gnd vdd FILL
XFILL_1__2768_ gnd vdd FILL
XFILL_1__2348_ gnd vdd FILL
XFILL_3__3215_ gnd vdd FILL
XFILL_4__1978_ gnd vdd FILL
XFILL_0__1878_ gnd vdd FILL
XFILL_6__2845_ gnd vdd FILL
X_3564_ _u_ALU8.AI7_ _1640_ vdd gnd INVX1
XFILL_6__2425_ gnd vdd FILL
XFILL_6__2005_ gnd vdd FILL
X_3144_ _910_ _869__bF$buf2 _1224_ _776_ vdd gnd AOI21X1
XFILL_2__2837_ gnd vdd FILL
XFILL_2__2417_ gnd vdd FILL
XFILL_7__1801_ gnd vdd FILL
XFILL_3__1701_ gnd vdd FILL
XFILL_8__2196_ gnd vdd FILL
XFILL_2__2590_ gnd vdd FILL
XFILL_2__2170_ gnd vdd FILL
XFILL_4__2096_ gnd vdd FILL
XFILL_3__2906_ gnd vdd FILL
XFILL_6__3383_ gnd vdd FILL
XFILL_2__3375_ gnd vdd FILL
XFILL_6_BUFX2_insert39 gnd vdd FILL
X_2835_ _529_ _526_ _536_ vdd gnd NOR2X1
X_2415_ _141_ _168_ _169_ vdd gnd NOR2X1
XFILL_1__1792_ gnd vdd FILL
XFILL_5__2585_ gnd vdd FILL
XFILL_5__2165_ gnd vdd FILL
XFILL_1__2997_ gnd vdd FILL
XFILL_1__2577_ gnd vdd FILL
XFILL_7__3544_ gnd vdd FILL
XFILL_1__2157_ gnd vdd FILL
XFILL_7__3124_ gnd vdd FILL
XFILL_3__3444_ gnd vdd FILL
XFILL_3__3024_ gnd vdd FILL
XFILL_8__1887_ gnd vdd FILL
XFILL_2__1861_ gnd vdd FILL
XFILL_4__1787_ gnd vdd FILL
XFILL_6__2654_ gnd vdd FILL
X_3373_ reset _1484_ vdd gnd INVX4
XFILL_6__2234_ gnd vdd FILL
XFILL_2__2646_ gnd vdd FILL
XFILL_2__2226_ gnd vdd FILL
XFILL_4__3513_ gnd vdd FILL
XFILL_6__3439_ gnd vdd FILL
XFILL_6__3019_ gnd vdd FILL
XFILL_3__1930_ gnd vdd FILL
XFILL_0__3413_ gnd vdd FILL
XFILL_5__1856_ gnd vdd FILL
XFILL_1__1848_ gnd vdd FILL
XFILL_7__2815_ gnd vdd FILL
XFILL_3__2715_ gnd vdd FILL
XFILL_6__3192_ gnd vdd FILL
XFILL_2__3184_ gnd vdd FILL
XFILL_6__1925_ gnd vdd FILL
X_2644_ _370_ _359_ _1051__bF$buf0 _371_ vdd gnd OAI21X1
X_2224_ _1358_ _1357_ _1355_ _1359_ vdd gnd NAND3X1
XFILL_2__1917_ gnd vdd FILL
XFILL_5__2394_ gnd vdd FILL
X_3429_ _1514_ _1512_ _1515_ vdd gnd NAND2X1
X_3009_ _508_ _674_ _675_ vdd gnd NAND2X1
XFILL_1__2386_ gnd vdd FILL
XFILL_8__1696_ gnd vdd FILL
XFILL_5__3599_ gnd vdd FILL
XFILL_5__3179_ gnd vdd FILL
XFILL_6__2883_ gnd vdd FILL
XFILL_6__2463_ gnd vdd FILL
XFILL_6__2043_ gnd vdd FILL
X_3182_ state[5] _996_ _952_ _814_ vdd gnd OAI21X1
XFILL_2__2875_ gnd vdd FILL
XFILL_2__2455_ gnd vdd FILL
XFILL_2__2035_ gnd vdd FILL
XFILL_8__3422_ gnd vdd FILL
XFILL_8__3002_ gnd vdd FILL
X_1915_ _1054_ ADD[0] _1058_ _1059_ vdd gnd AOI21X1
XFILL_1_BUFX2_insert0 gnd vdd FILL
XFILL_1_BUFX2_insert1 gnd vdd FILL
XFILL_1_BUFX2_insert2 gnd vdd FILL
XFILL_1_BUFX2_insert3 gnd vdd FILL
XFILL_1_BUFX2_insert4 gnd vdd FILL
XFILL_1_BUFX2_insert5 gnd vdd FILL
XFILL_1_BUFX2_insert6 gnd vdd FILL
XFILL_1_BUFX2_insert7 gnd vdd FILL
XFILL_1_BUFX2_insert8 gnd vdd FILL
XFILL_1_BUFX2_insert9 gnd vdd FILL
XFILL_0__3222_ gnd vdd FILL
XFILL_7__2624_ gnd vdd FILL
XFILL_7__2204_ gnd vdd FILL
XFILL_3__2944_ gnd vdd FILL
XFILL_3__2524_ gnd vdd FILL
XFILL_3__2104_ gnd vdd FILL
XFILL_7__3409_ gnd vdd FILL
X_2873_ _565_ _566_ vdd gnd INVX1
XFILL_6__1734_ gnd vdd FILL
X_2453_ _882__bF$buf0 _1032_ _1184_ _204_ vdd gnd OAI21X1
X_2033_ IRHOLD_valid_bF$buf0 _1169_ vdd gnd INVX1
XFILL_2__1726_ gnd vdd FILL
XFILL_6__2939_ gnd vdd FILL
XFILL_6__2519_ gnd vdd FILL
X_3238_ _1483_[5] vdd _1__bF$buf10 clk_bF$buf6 state[5] vdd 
+ gnd
+ DFFSR
XFILL_1__2195_ gnd vdd FILL
XFILL_7__3582_ gnd vdd FILL
XFILL_7__3162_ gnd vdd FILL
XFILL_0__2913_ gnd vdd FILL
XFILL_3__3482_ gnd vdd FILL
XFILL_3__3062_ gnd vdd FILL
XFILL_6__2692_ gnd vdd FILL
XFILL_6__2272_ gnd vdd FILL
XFILL_2__2684_ gnd vdd FILL
XFILL_2__2264_ gnd vdd FILL
XFILL_8__3231_ gnd vdd FILL
X_1724_ _869__bF$buf0 _876_ _877_ vdd gnd NAND2X1
XFILL_4__3551_ gnd vdd FILL
XFILL_4__3131_ gnd vdd FILL
XFILL_6__3477_ gnd vdd FILL
XFILL_6__3057_ gnd vdd FILL
XFILL_0__3451_ gnd vdd FILL
XFILL_2__3469_ gnd vdd FILL
XFILL_0__3031_ gnd vdd FILL
XFILL_2__3049_ gnd vdd FILL
XFILL183750x109350 gnd vdd FILL
XFILL_5__1894_ gnd vdd FILL
X_2929_ _610_ _608_ _611_ vdd gnd NOR2X1
X_2509_ ABL[7] _253_ vdd gnd INVX1
XFILL_1__1886_ gnd vdd FILL
XFILL_7__2853_ gnd vdd FILL
XFILL_7__2433_ gnd vdd FILL
XFILL_7__2013_ gnd vdd FILL
XFILL_3__2753_ gnd vdd FILL
XFILL_3__2333_ gnd vdd FILL
XFILL_5__2679_ gnd vdd FILL
XFILL_5__2259_ gnd vdd FILL
XFILL_5__3200_ gnd vdd FILL
XFILL_7__3218_ gnd vdd FILL
XFILL_3__3538_ gnd vdd FILL
XFILL_3__3118_ gnd vdd FILL
XFILL_6__1963_ gnd vdd FILL
X_2682_ _401_ _404_ _400_ _405_ vdd gnd NOR3X1
X_2262_ _1150_ _1395_ _1396_ vdd gnd NAND2X1
XFILL_2__1955_ gnd vdd FILL
XFILL_8__2922_ gnd vdd FILL
XFILL_8__2502_ gnd vdd FILL
XFILL_4__2822_ gnd vdd FILL
XFILL_4__2402_ gnd vdd FILL
XFILL_6__2748_ gnd vdd FILL
X_3467_ alu_shift_right _1552_ _1553_ vdd gnd NOR2X1
XFILL_6__2328_ gnd vdd FILL
X_3047_ _697_ ADD[2] _709_ vdd gnd XNOR2X1
XFILL_7__3391_ gnd vdd FILL
XFILL_0__2722_ gnd vdd FILL
XFILL_0__2302_ gnd vdd FILL
XFILL_7__1704_ gnd vdd FILL
XFILL_0__3507_ gnd vdd FILL
XFILL_6__2081_ gnd vdd FILL
XFILL_8__2099_ gnd vdd FILL
XFILL_7__2909_ gnd vdd FILL
XFILL_2__2493_ gnd vdd FILL
XFILL_8__3460_ gnd vdd FILL
XFILL_2__2073_ gnd vdd FILL
XFILL_8__3040_ gnd vdd FILL
XFILL_3__2809_ gnd vdd FILL
X_1953_ _859_ _944_ _1092_ _1093_ vdd gnd OAI21X1
X_2738_ _456_ _454_ _457_ vdd gnd OR2X2
X_2318_ _1197_ _1181_ _1211_ _1451_ vdd gnd NAND3X1
XFILL_1__1695_ gnd vdd FILL
XFILL_7__2662_ gnd vdd FILL
XFILL_7__2242_ gnd vdd FILL
XFILL_3__2982_ gnd vdd FILL
XFILL_3__2562_ gnd vdd FILL
XFILL_3__2142_ gnd vdd FILL
XFILL_5__2488_ gnd vdd FILL
XFILL_5__2068_ gnd vdd FILL
XFILL_7__3447_ gnd vdd FILL
XFILL_7__3027_ gnd vdd FILL
XFILL_1__3421_ gnd vdd FILL
XFILL_1__3001_ gnd vdd FILL
XFILL_6__1772_ gnd vdd FILL
X_2491_ _237_ _1685_[4] vdd gnd INVX1
X_2071_ _1205_ _1206_ _1207_ vdd gnd NAND2X1
XFILL_2__1764_ gnd vdd FILL
XFILL_8__2731_ gnd vdd FILL
XFILL_8__2311_ gnd vdd FILL
XFILL_4__2631_ gnd vdd FILL
XFILL_4__2211_ gnd vdd FILL
XFILL_6__2977_ gnd vdd FILL
XFILL_6__2557_ gnd vdd FILL
X_3276_ _38_ vdd _1__bF$buf7 clk_bF$buf1 compare vdd 
+ gnd
+ DFFSR
XFILL_6__2137_ gnd vdd FILL
XFILL_0__2951_ gnd vdd FILL
XFILL_2__2969_ gnd vdd FILL
XFILL_2__2549_ gnd vdd FILL
XFILL_0__2531_ gnd vdd FILL
XFILL_8__3516_ gnd vdd FILL
XFILL_0__2111_ gnd vdd FILL
XFILL_2__2129_ gnd vdd FILL
XFILL_7__1933_ gnd vdd FILL
XFILL_4__3416_ gnd vdd FILL
XFILL_3__1833_ gnd vdd FILL
XFILL_5__1759_ gnd vdd FILL
XFILL_5__2700_ gnd vdd FILL
XFILL_7__2718_ gnd vdd FILL
XFILL_3__2618_ gnd vdd FILL
X_1762_ state[1] _888_ _915_ vdd gnd NOR2X1
XFILL_6__3095_ gnd vdd FILL
XFILL_2__3087_ gnd vdd FILL
XFILL_4__1902_ gnd vdd FILL
X_2967_ plp ADD[6] _638_ vdd gnd NAND2X1
XFILL_6__1828_ gnd vdd FILL
X_2547_ _192_ _195_ DIMUX[4] _286_ vdd gnd OAI21X1
X_2127_ _882__bF$buf3 _891_ RDY_bF$buf5 _1263_ vdd gnd OAI21X1
XFILL_7__2891_ gnd vdd FILL
XFILL_7__2471_ gnd vdd FILL
XFILL_7__2051_ gnd vdd FILL
XFILL_0__1802_ gnd vdd FILL
XFILL182250x140550 gnd vdd FILL
XFILL_3__2791_ gnd vdd FILL
XFILL_3__2371_ gnd vdd FILL
XFILL_5__2297_ gnd vdd FILL
XFILL_1__2289_ gnd vdd FILL
XFILL_1__3230_ gnd vdd FILL
XFILL_3__3156_ gnd vdd FILL
XFILL_2__1993_ gnd vdd FILL
XFILL_8__2960_ gnd vdd FILL
XFILL_8__2540_ gnd vdd FILL
XFILL_8__2120_ gnd vdd FILL
XFILL_4__2860_ gnd vdd FILL
XFILL_4__2440_ gnd vdd FILL
XFILL_4__2020_ gnd vdd FILL
XFILL_6__2786_ gnd vdd FILL
XFILL_6__2366_ gnd vdd FILL
X_3085_ CO _698_ _742_ vdd gnd NOR2X1
XFILL_0__2760_ gnd vdd FILL
XFILL_2__2778_ gnd vdd FILL
XFILL_2__2358_ gnd vdd FILL
XFILL_0__2340_ gnd vdd FILL
X_1818_ DIMUX[1] _969_ vdd gnd INVX2
XFILL_7__1742_ gnd vdd FILL
XFILL_4__3225_ gnd vdd FILL
XFILL_0__3545_ gnd vdd FILL
XFILL_0__3125_ gnd vdd FILL
XFILL_5__1988_ gnd vdd FILL
XFILL_3_BUFX2_insert0 gnd vdd FILL
XFILL_3_BUFX2_insert1 gnd vdd FILL
XFILL_3_BUFX2_insert2 gnd vdd FILL
XFILL_3_BUFX2_insert3 gnd vdd FILL
XFILL_7__2947_ gnd vdd FILL
XFILL_3_BUFX2_insert4 gnd vdd FILL
XFILL_3_BUFX2_insert5 gnd vdd FILL
XFILL_7__2527_ gnd vdd FILL
XFILL_3_BUFX2_insert6 gnd vdd FILL
XFILL_7__2107_ gnd vdd FILL
XFILL_3_BUFX2_insert7 gnd vdd FILL
XFILL_3_BUFX2_insert8 gnd vdd FILL
XFILL_3_BUFX2_insert9 gnd vdd FILL
XFILL_1__2921_ gnd vdd FILL
XFILL_1__2501_ gnd vdd FILL
XFILL_3__2847_ gnd vdd FILL
XFILL_3__2427_ gnd vdd FILL
XFILL_3__2007_ gnd vdd FILL
X_1991_ _853__bF$buf0 _1124_ _1126_ _1125_ _1127_ vdd 
+ gnd
+ AOI22X1
XFILL_8__1811_ gnd vdd FILL
XFILL_4__1711_ gnd vdd FILL
XFILL184350x160050 gnd vdd FILL
X_2776_ _491_ _489_ _492_ vdd gnd XOR2X1
X_2356_ _119_ _120_ vdd gnd INVX2
XFILL_7__2280_ gnd vdd FILL
XFILL_3__2180_ gnd vdd FILL
XFILL_4__2916_ gnd vdd FILL
XFILL_7__3485_ gnd vdd FILL
XFILL_1__2098_ gnd vdd FILL
XFILL_7__3065_ gnd vdd FILL
XFILL_0__2816_ gnd vdd FILL
XFILL_3__3385_ gnd vdd FILL
XFILL_6__2595_ gnd vdd FILL
XFILL_6__2175_ gnd vdd FILL
XFILL_2__2587_ gnd vdd FILL
XFILL_8__3554_ gnd vdd FILL
XFILL_2__2167_ gnd vdd FILL
XFILL_8__3134_ gnd vdd FILL
XFILL_7__1971_ gnd vdd FILL
XFILL_4__3454_ gnd vdd FILL
XFILL_4__3034_ gnd vdd FILL
XFILL_3__1871_ gnd vdd FILL
XFILL_5__1797_ gnd vdd FILL
XFILL_1__1789_ gnd vdd FILL
XFILL_7__2756_ gnd vdd FILL
XFILL_7__2336_ gnd vdd FILL
XFILL_1__2730_ gnd vdd FILL
XFILL_1__2310_ gnd vdd FILL
XFILL_3__2656_ gnd vdd FILL
XFILL_3__2236_ gnd vdd FILL
XFILL_5__3523_ gnd vdd FILL
XFILL184350x15750 gnd vdd FILL
XFILL_5__3103_ gnd vdd FILL
XFILL_1__3515_ gnd vdd FILL
XFILL_4__1940_ gnd vdd FILL
XFILL_6__1866_ gnd vdd FILL
X_2585_ _1002__bF$buf4 _1133_ _315_ _316_ vdd gnd OAI21X1
X_2165_ _1299_ _1295_ _1300_ vdd gnd NOR2X1
XFILL_0__1840_ gnd vdd FILL
XFILL_2__1858_ gnd vdd FILL
XFILL_8__2825_ gnd vdd FILL
XFILL_8__2405_ gnd vdd FILL
XFILL_4__2725_ gnd vdd FILL
XFILL_4__2305_ gnd vdd FILL
XFILL_0__2625_ gnd vdd FILL
XFILL_0__2205_ gnd vdd FILL
XFILL_3__3194_ gnd vdd FILL
XFILL_3__1927_ gnd vdd FILL
XFILL_2__2396_ gnd vdd FILL
X_1856_ _987_ _999_ _1000_ vdd gnd NOR2X1
XFILL_7__1780_ gnd vdd FILL
XFILL_6__3189_ gnd vdd FILL
XFILL_0__3583_ gnd vdd FILL
XFILL_0__3163_ gnd vdd FILL
XFILL_7__2985_ gnd vdd FILL
XFILL_7__2565_ gnd vdd FILL
XFILL_7__2145_ gnd vdd FILL
XFILL_3__2885_ gnd vdd FILL
XFILL_3__2465_ gnd vdd FILL
XFILL_3__2045_ gnd vdd FILL
X_2394_ _1036_ _1281_ PC[10] _151_ vdd gnd OAI21X1
XFILL_8__2634_ gnd vdd FILL
XFILL_8__2214_ gnd vdd FILL
XFILL_4__2954_ gnd vdd FILL
XFILL_4__2534_ gnd vdd FILL
XFILL_4__2114_ gnd vdd FILL
X_3599_ _1686_[4] DO[4] vdd gnd BUFX2
X_3179_ _780_ _810_ _778_ _811_ vdd gnd NAND3X1
XFILL_0__2854_ gnd vdd FILL
XFILL_0__2434_ gnd vdd FILL
XFILL_6__3401_ gnd vdd FILL
XFILL_0__2014_ gnd vdd FILL
XFILL_8__3419_ gnd vdd FILL
XFILL_7__1836_ gnd vdd FILL
XFILL_1__1810_ gnd vdd FILL
XFILL_3__1736_ gnd vdd FILL
XFILL_0__3219_ gnd vdd FILL
XFILL_5__2603_ gnd vdd FILL
XFILL_8__3592_ gnd vdd FILL
XFILL_8__3172_ gnd vdd FILL
XFILL_4__3492_ gnd vdd FILL
XFILL_4__3072_ gnd vdd FILL
XFILL_8__1905_ gnd vdd FILL
XFILL_0__3392_ gnd vdd FILL
XFILL_4__1805_ gnd vdd FILL
XFILL_7__2794_ gnd vdd FILL
XFILL_7__2374_ gnd vdd FILL
XFILL_0__1705_ gnd vdd FILL
XFILL_3__2694_ gnd vdd FILL
XFILL_3__2274_ gnd vdd FILL
XFILL_5__3561_ gnd vdd FILL
XFILL_7__3579_ gnd vdd FILL
XFILL_5__3141_ gnd vdd FILL
XFILL_7__3159_ gnd vdd FILL
XFILL_1__3553_ gnd vdd FILL
XFILL_1__3133_ gnd vdd FILL
XFILL_3__3479_ gnd vdd FILL
XFILL_3__3059_ gnd vdd FILL
XFILL_2__1896_ gnd vdd FILL
XFILL_8__2863_ gnd vdd FILL
XFILL_8__2443_ gnd vdd FILL
XFILL_8__2023_ gnd vdd FILL
XFILL_4__2763_ gnd vdd FILL
XFILL_4__2343_ gnd vdd FILL
XFILL_6__2689_ gnd vdd FILL
XFILL_6__2269_ gnd vdd FILL
XFILL_0__2663_ gnd vdd FILL
XFILL_0__2243_ gnd vdd FILL
XFILL_6__3210_ gnd vdd FILL
XFILL_8__3228_ gnd vdd FILL
XFILL_2__3202_ gnd vdd FILL
XFILL_4__3548_ gnd vdd FILL
XFILL_4__3128_ gnd vdd FILL
XFILL_3__1965_ gnd vdd FILL
XFILL_0__3448_ gnd vdd FILL
XFILL_0__3028_ gnd vdd FILL
XFILL_5__2832_ gnd vdd FILL
XFILL_5__2412_ gnd vdd FILL
XFILL_1__2824_ gnd vdd FILL
XFILL_1__2404_ gnd vdd FILL
X_1894_ _993_ _1037_ _1038_ vdd gnd NAND2X1
XFILL_8__1714_ gnd vdd FILL
XFILL184650x54750 gnd vdd FILL
X_2679_ ADD[0] _869__bF$buf3 _905_ _402_ vdd gnd NAND3X1
X_2259_ _1392_ _1305_ _1393_ vdd gnd OR2X2
XFILL182250x117150 gnd vdd FILL
XFILL_7__2183_ gnd vdd FILL
XFILL_0__1934_ gnd vdd FILL
XFILL_8__2919_ gnd vdd FILL
XFILL_6__2901_ gnd vdd FILL
X_3200_ _802_ _829_ ABL[0] _832_ vdd gnd OAI21X1
XFILL_3__2083_ gnd vdd FILL
XFILL_4__2819_ gnd vdd FILL
XFILL_7__3388_ gnd vdd FILL
XFILL_5__3370_ gnd vdd FILL
XFILL_0__2719_ gnd vdd FILL
XFILL_8__2672_ gnd vdd FILL
XFILL_8__2252_ gnd vdd FILL
XFILL_4__2992_ gnd vdd FILL
XFILL_4__2572_ gnd vdd FILL
XFILL_4__2152_ gnd vdd FILL
XFILL_6__2498_ gnd vdd FILL
XFILL_6__2078_ gnd vdd FILL
XFILL_0__2892_ gnd vdd FILL
XFILL_0__2472_ gnd vdd FILL
XFILL_8__3457_ gnd vdd FILL
XFILL_0__2052_ gnd vdd FILL
XFILL_8__3037_ gnd vdd FILL
XFILL_2__3431_ gnd vdd FILL
XFILL_2__3011_ gnd vdd FILL
XFILL_7__1874_ gnd vdd FILL
XFILL_3__1774_ gnd vdd FILL
XFILL_7__2659_ gnd vdd FILL
XFILL_5__2641_ gnd vdd FILL
XFILL_7__2239_ gnd vdd FILL
XFILL_5__2221_ gnd vdd FILL
XFILL_1__2633_ gnd vdd FILL
XFILL_1__2213_ gnd vdd FILL
XFILL_7__3600_ gnd vdd FILL
XFILL_3__2979_ gnd vdd FILL
XFILL_3__2559_ gnd vdd FILL
XFILL_3__2139_ gnd vdd FILL
XFILL_9__3106_ gnd vdd FILL
XFILL_3__3500_ gnd vdd FILL
XFILL_8__1943_ gnd vdd FILL
XFILL_5__3426_ gnd vdd FILL
XFILL_5__3006_ gnd vdd FILL
XFILL_1__3418_ gnd vdd FILL
XFILL_4__1843_ gnd vdd FILL
XFILL_6__1769_ gnd vdd FILL
X_2488_ _233_ _234_ _235_ vdd gnd AND2X2
X_2068_ _853__bF$buf0 _1029_ _1203_ _1204_ vdd gnd OAI21X1
XFILL_0__1743_ gnd vdd FILL
XFILL_8__2728_ gnd vdd FILL
XFILL_6__2710_ gnd vdd FILL
XFILL_8__2308_ gnd vdd FILL
XFILL_2__2702_ gnd vdd FILL
XFILL_4__2628_ gnd vdd FILL
XFILL_4__2208_ gnd vdd FILL
XFILL_7__3197_ gnd vdd FILL
XFILL_0__2948_ gnd vdd FILL
XFILL_0__2528_ gnd vdd FILL
XFILL_0__2108_ gnd vdd FILL
XFILL_1__3591_ gnd vdd FILL
XFILL_1__3171_ gnd vdd FILL
XFILL_3__3097_ gnd vdd FILL
XFILL_5__1912_ gnd vdd FILL
XFILL_8__2481_ gnd vdd FILL
XFILL_8__2061_ gnd vdd FILL
XFILL_1__1904_ gnd vdd FILL
XFILL_4__2381_ gnd vdd FILL
XFILL_0__2281_ gnd vdd FILL
XFILL_2__2299_ gnd vdd FILL
X_1759_ shift _912_ vdd gnd INVX1
XFILL_4__3586_ gnd vdd FILL
XFILL_4__3166_ gnd vdd FILL
X_2700_ _1065_ _872_ _267_ _333_ _422_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3486_ gnd vdd FILL
XFILL_0__3066_ gnd vdd FILL
XFILL_5__2870_ gnd vdd FILL
XFILL_7__2888_ gnd vdd FILL
XFILL_7__2468_ gnd vdd FILL
XFILL_5__2450_ gnd vdd FILL
XFILL_5__2030_ gnd vdd FILL
XFILL_7__2048_ gnd vdd FILL
XFILL_1__2862_ gnd vdd FILL
XFILL_1__2442_ gnd vdd FILL
XFILL_1__2022_ gnd vdd FILL
XFILL_3__2788_ gnd vdd FILL
XFILL_3__2368_ gnd vdd FILL
XFILL_8__1752_ gnd vdd FILL
XFILL_1__3227_ gnd vdd FILL
XFILL_6__1998_ gnd vdd FILL
X_2297_ _1305_ _1392_ _1430_ vdd gnd NOR2X1
XFILL_0__1972_ gnd vdd FILL
XFILL_8__2957_ gnd vdd FILL
XFILL_8__2537_ gnd vdd FILL
XFILL_8__2117_ gnd vdd FILL
XFILL_2__2931_ gnd vdd FILL
XFILL_2__2511_ gnd vdd FILL
XFILL_4__2857_ gnd vdd FILL
XFILL_4__2437_ gnd vdd FILL
XFILL_4__2017_ gnd vdd FILL
XFILL_0__2757_ gnd vdd FILL
XFILL_0__2337_ gnd vdd FILL
XFILL_7__1739_ gnd vdd FILL
XFILL_5__1721_ gnd vdd FILL
XFILL_8__2290_ gnd vdd FILL
XFILL_1__1713_ gnd vdd FILL
XFILL_4__2190_ gnd vdd FILL
XFILL_5__2926_ gnd vdd FILL
XFILL_5__2506_ gnd vdd FILL
XFILL_8__3495_ gnd vdd FILL
XFILL_0__2090_ gnd vdd FILL
XFILL_8__3075_ gnd vdd FILL
XFILL_1__2918_ gnd vdd FILL
X_1988_ _1123_ _1124_ vdd gnd INVX1
XFILL_4__3395_ gnd vdd FILL
XFILL_8__1808_ gnd vdd FILL
XFILL_4__1708_ gnd vdd FILL
XFILL_7__2697_ gnd vdd FILL
XFILL_7__2277_ gnd vdd FILL
XFILL_1__2671_ gnd vdd FILL
XFILL_1__2251_ gnd vdd FILL
XFILL_3__2597_ gnd vdd FILL
XFILL_3__2177_ gnd vdd FILL
XFILL_8__1981_ gnd vdd FILL
XFILL_5__3464_ gnd vdd FILL
XFILL_5__3044_ gnd vdd FILL
XFILL_1__3456_ gnd vdd FILL
XFILL_1__3036_ gnd vdd FILL
XFILL_4__1881_ gnd vdd FILL
XFILL_2__1799_ gnd vdd FILL
XFILL_0__1781_ gnd vdd FILL
XFILL_8__2766_ gnd vdd FILL
XFILL_8__2346_ gnd vdd FILL
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
XFILL_7__1968_ gnd vdd FILL
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
XFILL_2_BUFX2_insert57 gnd vdd FILL
XFILL_1__2727_ gnd vdd FILL
XFILL_2_BUFX2_insert58 gnd vdd FILL
XFILL_1__2307_ gnd vdd FILL
XFILL_2_BUFX2_insert59 gnd vdd FILL
X_1797_ _881_ _893_ _949_ vdd gnd NAND2X1
XFILL_4__1937_ gnd vdd FILL
XFILL_7__2086_ gnd vdd FILL
XFILL_0__1837_ gnd vdd FILL
XFILL_6__2804_ gnd vdd FILL
X_3523_ _1604_ _1605_ _1609_ vdd gnd XOR2X1
X_3103_ _691__bF$buf3 _748_ _AXYS[1]_[5] _754_ vdd gnd OAI21X1
XFILL_1__2480_ gnd vdd FILL
XFILL_1__2060_ gnd vdd FILL
XFILL_8__1790_ gnd vdd FILL
XFILL_4__1690_ gnd vdd FILL
XFILL_8__2995_ gnd vdd FILL
XFILL_8__2575_ gnd vdd FILL
XFILL_8__2155_ gnd vdd FILL
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
XFILL_3__3403_ gnd vdd FILL
XFILL_8__1846_ gnd vdd FILL
XFILL_2__1820_ gnd vdd FILL
XFILL_4__1746_ gnd vdd FILL
XFILL_6__2613_ gnd vdd FILL
X_3332_ _86_ vdd _1__bF$buf1 clk_bF$buf4 _AXYS[2]_[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2605_ gnd vdd FILL
XFILL_5__3082_ gnd vdd FILL
XFILL_1__3494_ gnd vdd FILL
XFILL_1__3074_ gnd vdd FILL
XFILL_5__1815_ gnd vdd FILL
XFILL_8__2384_ gnd vdd FILL
XFILL_1__1807_ gnd vdd FILL
XFILL_4__2284_ gnd vdd FILL
XFILL_0__2184_ gnd vdd FILL
XFILL_8__3589_ gnd vdd FILL
XFILL_8__3169_ gnd vdd FILL
XFILL_6__3151_ gnd vdd FILL
XFILL_2__3563_ gnd vdd FILL
XFILL_2__3143_ gnd vdd FILL
XFILL_4__3489_ gnd vdd FILL
XFILL_4__3069_ gnd vdd FILL
X_2603_ _918__bF$buf0 _1259_ _333_ _334_ vdd gnd OAI21X1
XFILL_1__1980_ gnd vdd FILL
XFILL_0__3389_ gnd vdd FILL
XFILL_5__2773_ gnd vdd FILL
XFILL_5__2353_ gnd vdd FILL
XFILL_1__2765_ gnd vdd FILL
XFILL_1__2345_ gnd vdd FILL
XFILL_3__3212_ gnd vdd FILL
XFILL_5__3558_ gnd vdd FILL
XFILL_5__3138_ gnd vdd FILL
XFILL_4__1975_ gnd vdd FILL
XFILL_0__1875_ gnd vdd FILL
XFILL_6__2842_ gnd vdd FILL
X_3561_ AN _1638_ vdd gnd INVX1
XFILL_6__2422_ gnd vdd FILL
X_3141_ _738_ _767_ _774_ _99_ vdd gnd OAI21X1
XFILL_6__2002_ gnd vdd FILL
XFILL_2__2834_ gnd vdd FILL
XFILL_2__2414_ gnd vdd FILL
XFILL_6__3207_ gnd vdd FILL
XFILL_0__3601_ gnd vdd FILL
XFILL_8__2193_ gnd vdd FILL
XFILL_9__2929_ gnd vdd FILL
XFILL_4__2093_ gnd vdd FILL
XFILL_3__2903_ gnd vdd FILL
XFILL_5__2829_ gnd vdd FILL
XFILL_5__2409_ gnd vdd FILL
XFILL_6__3380_ gnd vdd FILL
XFILL_8__3398_ gnd vdd FILL
XFILL_2__3372_ gnd vdd FILL
X_2832_ _1297_ _530_ _532_ _533_ vdd gnd OAI21X1
X_2412_ _160_ _1091_ _166_ _1686_[4] vdd gnd OAI21X1
XFILL_0__3198_ gnd vdd FILL
XFILL_5__2582_ gnd vdd FILL
XFILL_5__2162_ gnd vdd FILL
XFILL_1__2994_ gnd vdd FILL
XFILL_1__2574_ gnd vdd FILL
XFILL_7__3541_ gnd vdd FILL
XFILL_1__2154_ gnd vdd FILL
XFILL_7__3121_ gnd vdd FILL
XFILL_9__3047_ gnd vdd FILL
XFILL_3__3441_ gnd vdd FILL
XFILL_3__3021_ gnd vdd FILL
XFILL_8__1884_ gnd vdd FILL
XFILL_5__3367_ gnd vdd FILL
XFILL_4__1784_ gnd vdd FILL
XFILL_6__2651_ gnd vdd FILL
XFILL_8__2669_ gnd vdd FILL
XFILL_8__2249_ gnd vdd FILL
X_3370_ _u_ALU8.AI7_ CO _1647_ vdd gnd XOR2X1
XFILL_6__2231_ gnd vdd FILL
XFILL_2__2643_ gnd vdd FILL
XFILL_2__2223_ gnd vdd FILL
XFILL_4__2989_ gnd vdd FILL
XFILL_4__2569_ gnd vdd FILL
XFILL_4__2149_ gnd vdd FILL
XFILL_4__3510_ gnd vdd FILL
XFILL_0__2889_ gnd vdd FILL
XFILL_0__2469_ gnd vdd FILL
XFILL_6__3436_ gnd vdd FILL
XFILL_0__2049_ gnd vdd FILL
XFILL_6__3016_ gnd vdd FILL
XFILL_2__3428_ gnd vdd FILL
XFILL_0__3410_ gnd vdd FILL
XFILL_2__3008_ gnd vdd FILL
XFILL_5__1853_ gnd vdd FILL
XFILL_1__1845_ gnd vdd FILL
XFILL_7__2812_ gnd vdd FILL
XFILL_9__2738_ gnd vdd FILL
XFILL_3__2712_ gnd vdd FILL
XFILL_5__2638_ gnd vdd FILL
XFILL_5__2218_ gnd vdd FILL
XFILL_2__3181_ gnd vdd FILL
XFILL_6__1922_ gnd vdd FILL
X_2641_ RDY_bF$buf4 _971_ _368_ _363_ _5_ vdd 
+ gnd
+ OAI22X1
X_2221_ _918__bF$buf1 _946_ RDY_bF$buf7 _1356_ vdd gnd OAI21X1
XFILL_2__1914_ gnd vdd FILL
XFILL_5__2391_ gnd vdd FILL
XFILL_6__2707_ gnd vdd FILL
X_3426_ _1511_ _1510_ _1507_ _1512_ vdd gnd OAI21X1
X_3006_ write_back _1002__bF$buf3 _672_ vdd gnd NOR2X1
XFILL_1__2383_ gnd vdd FILL
XFILL_5__3596_ gnd vdd FILL
XFILL_8__1693_ gnd vdd FILL
XFILL_5__3176_ gnd vdd FILL
XFILL_1__3588_ gnd vdd FILL
XFILL_1__3168_ gnd vdd FILL
XFILL_5__1909_ gnd vdd FILL
XFILL_6__2880_ gnd vdd FILL
XFILL_8__2898_ gnd vdd FILL
XFILL_6__2460_ gnd vdd FILL
XFILL_8__2478_ gnd vdd FILL
XFILL_6__2040_ gnd vdd FILL
XFILL_8__2058_ gnd vdd FILL
XFILL_2__2872_ gnd vdd FILL
XFILL_2__2452_ gnd vdd FILL
XFILL_2__2032_ gnd vdd FILL
XFILL_4__2798_ gnd vdd FILL
XFILL_4__2378_ gnd vdd FILL
X_1912_ _1055_ _872_ _1056_ vdd gnd NOR2X1
XFILL_0__2698_ gnd vdd FILL
XFILL_0__2278_ gnd vdd FILL
XFILL_7__2621_ gnd vdd FILL
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
XFILL_7__3406_ gnd vdd FILL
XFILL182250x105450 gnd vdd FILL
X_2870_ _1129__bF$buf0 _531_ _564_ vdd gnd NAND2X1
XFILL_6__1731_ gnd vdd FILL
XFILL_8__1749_ gnd vdd FILL
X_2450_ _200_ _199_ _201_ vdd gnd NOR2X1
X_2030_ _1127_ _1128_ _1165_ _1166_ vdd gnd NAND3X1
XFILL_2__1723_ gnd vdd FILL
XFILL_0__1969_ gnd vdd FILL
XFILL_6__2936_ gnd vdd FILL
XFILL_6__2516_ gnd vdd FILL
X_3235_ _1483_[2] vdd _1__bF$buf2 clk_bF$buf8 state[2] vdd 
+ gnd
+ DFFSR
XFILL_1__2192_ gnd vdd FILL
XFILL_0__2910_ gnd vdd FILL
XFILL_2__2928_ gnd vdd FILL
XFILL_2__2508_ gnd vdd FILL
XFILL_1__3397_ gnd vdd FILL
XFILL_5__1718_ gnd vdd FILL
XFILL_8__2287_ gnd vdd FILL
XFILL_2__2681_ gnd vdd FILL
XFILL_2__2261_ gnd vdd FILL
XFILL_4__2187_ gnd vdd FILL
X_1721_ _873_ _866_ _874_ vdd gnd NAND2X1
XFILL_6__3474_ gnd vdd FILL
XFILL_0__2087_ gnd vdd FILL
XFILL_6__3054_ gnd vdd FILL
XFILL_2__3466_ gnd vdd FILL
XFILL_2__3046_ gnd vdd FILL
XFILL_5__1891_ gnd vdd FILL
X_2926_ _1384_ _523_ _547_ _608_ vdd gnd OAI21X1
X_2506_ _1106_ _182_ _250_ _251_ vdd gnd AOI21X1
XFILL_1__1883_ gnd vdd FILL
XFILL_7__2850_ gnd vdd FILL
XFILL_7__2430_ gnd vdd FILL
XFILL_7__2010_ gnd vdd FILL
XFILL_3__2750_ gnd vdd FILL
XFILL_3__2330_ gnd vdd FILL
XFILL_5__2676_ gnd vdd FILL
XFILL_5__2256_ gnd vdd FILL
XFILL_1__2668_ gnd vdd FILL
XFILL_1__2248_ gnd vdd FILL
XFILL_7__3215_ gnd vdd FILL
XFILL_3__3535_ gnd vdd FILL
XFILL_3__3115_ gnd vdd FILL
XFILL_8__1978_ gnd vdd FILL
XFILL_6__1960_ gnd vdd FILL
XFILL_2__1952_ gnd vdd FILL
XFILL_4__1878_ gnd vdd FILL
XFILL_0__1778_ gnd vdd FILL
XFILL_6__2745_ gnd vdd FILL
X_3464_ _1675_ _1542_ _1549_ _1550_ vdd gnd OAI21X1
XFILL_6__2325_ gnd vdd FILL
X_3044_ _706_ _707_ vdd gnd INVX1
XFILL_2__2737_ gnd vdd FILL
XFILL_2__2317_ gnd vdd FILL
XFILL_7__1701_ gnd vdd FILL
XFILL_0__3504_ gnd vdd FILL
XFILL_5__1947_ gnd vdd FILL
XFILL_8__2096_ gnd vdd FILL
XFILL_1__1939_ gnd vdd FILL
XFILL_7__2906_ gnd vdd FILL
XFILL_2__2490_ gnd vdd FILL
XFILL_2__2070_ gnd vdd FILL
XFILL_3__2806_ gnd vdd FILL
X_1950_ _1087_ _1089_ _1088_ _1090_ vdd gnd NAND3X1
X_2735_ _283_ _333_ _1092_ _454_ vdd gnd OAI21X1
X_2315_ _1439_ _1447_ _1380_ _1448_ vdd gnd OAI21X1
XFILL_1__1692_ gnd vdd FILL
XFILL_5__2485_ gnd vdd FILL
XFILL_5__2065_ gnd vdd FILL
XFILL_1__2897_ gnd vdd FILL
XFILL_1__2477_ gnd vdd FILL
XFILL_7__3444_ gnd vdd FILL
XFILL_1__2057_ gnd vdd FILL
XFILL_7__3024_ gnd vdd FILL
XFILL_8__1787_ gnd vdd FILL
XFILL_2__1761_ gnd vdd FILL
XFILL_6__2974_ gnd vdd FILL
XFILL_6__2554_ gnd vdd FILL
X_3273_ _35_ vdd _1__bF$buf9 clk_bF$buf10 op[3] vdd 
+ gnd
+ DFFSR
XFILL_6__2134_ gnd vdd FILL
XFILL_2__2966_ gnd vdd FILL
XFILL_2__2546_ gnd vdd FILL
XFILL_8__3513_ gnd vdd FILL
XFILL_2__2126_ gnd vdd FILL
XFILL_7__1930_ gnd vdd FILL
XFILL_4__3413_ gnd vdd FILL
XFILL_3__1830_ gnd vdd FILL
XFILL_5__1756_ gnd vdd FILL
XFILL_1__1748_ gnd vdd FILL
XFILL_7__2715_ gnd vdd FILL
XFILL_3__2615_ gnd vdd FILL
XFILL_6__3092_ gnd vdd FILL
XFILL_2__3084_ gnd vdd FILL
X_2964_ _634_ _635_ vdd gnd INVX1
XFILL_6__1825_ gnd vdd FILL
X_2544_ PC[12] _283_ vdd gnd INVX1
X_2124_ _887__bF$buf3 _1259_ _1260_ vdd gnd NOR2X1
XFILL_2__1817_ gnd vdd FILL
XFILL_5__2294_ gnd vdd FILL
X_3329_ _83_ vdd _1__bF$buf9 clk_bF$buf10 _AXYS[1]_[6] vdd 
+ gnd
+ DFFSR
XFILL_1__2286_ gnd vdd FILL
XFILL_9__3179_ gnd vdd FILL
XFILL_7_BUFX2_insert70 gnd vdd FILL
XFILL_7_BUFX2_insert71 gnd vdd FILL
XFILL_7_BUFX2_insert72 gnd vdd FILL
XFILL_7_BUFX2_insert73 gnd vdd FILL
XFILL_7_BUFX2_insert74 gnd vdd FILL
XFILL_3__3153_ gnd vdd FILL
XFILL_7_BUFX2_insert75 gnd vdd FILL
XFILL_7_BUFX2_insert76 gnd vdd FILL
XFILL_7_BUFX2_insert77 gnd vdd FILL
XFILL_5__3499_ gnd vdd FILL
XFILL_7_BUFX2_insert78 gnd vdd FILL
XFILL_7_BUFX2_insert79 gnd vdd FILL
XFILL_5__3079_ gnd vdd FILL
XFILL_2__1990_ gnd vdd FILL
XFILL_6__2783_ gnd vdd FILL
XFILL_6__2363_ gnd vdd FILL
X_3082_ _693_ _738_ _739_ _75_ vdd gnd OAI21X1
XFILL_2__2775_ gnd vdd FILL
XFILL_2__2355_ gnd vdd FILL
X_1815_ _958_ _966_ _948_ _967_ vdd gnd NAND3X1
XFILL_4__3222_ gnd vdd FILL
XFILL_6__3148_ gnd vdd FILL
XFILL_0__3542_ gnd vdd FILL
XFILL_0__3122_ gnd vdd FILL
XFILL_5__1985_ gnd vdd FILL
XFILL_1__1977_ gnd vdd FILL
XFILL_7__2944_ gnd vdd FILL
XFILL_7__2524_ gnd vdd FILL
XFILL_7__2104_ gnd vdd FILL
XFILL184050x121050 gnd vdd FILL
XFILL_3__2844_ gnd vdd FILL
XFILL_3__2424_ gnd vdd FILL
XFILL_3__2004_ gnd vdd FILL
XFILL_3__3209_ gnd vdd FILL
X_2773_ _303_ _445_ _488_ _489_ vdd gnd OAI21X1
X_2353_ _117_ _1470_ _1483_[5] vdd gnd OR2X2
XFILL_4__2913_ gnd vdd FILL
XFILL_6__2839_ gnd vdd FILL
X_3558_ _1649__bF$buf1 _1619_ _1636_ _1493_ vdd gnd OAI21X1
XFILL_6__2419_ gnd vdd FILL
X_3138_ _AXYS[3]_[5] _767_ _773_ vdd gnd NAND2X1
XFILL_7__3482_ gnd vdd FILL
XFILL_1__2095_ gnd vdd FILL
XFILL_7__3062_ gnd vdd FILL
XFILL_0__2813_ gnd vdd FILL
XFILL_3__3382_ gnd vdd FILL
XFILL_6__2592_ gnd vdd FILL
XFILL_6__2172_ gnd vdd FILL
XFILL_2__2584_ gnd vdd FILL
XFILL_8__3551_ gnd vdd FILL
XFILL_2__2164_ gnd vdd FILL
XFILL_8__3131_ gnd vdd FILL
XFILL_4__3451_ gnd vdd FILL
XFILL_4__3031_ gnd vdd FILL
XFILL_6__3377_ gnd vdd FILL
XFILL_2__3369_ gnd vdd FILL
XFILL_5__1794_ gnd vdd FILL
X_2829_ _529_ _530_ vdd gnd INVX1
X_2409_ _887__bF$buf1 _989_ _138_ _164_ vdd gnd OAI21X1
XFILL_1__1786_ gnd vdd FILL
XFILL_7__2753_ gnd vdd FILL
XFILL_7__2333_ gnd vdd FILL
XFILL182250x7950 gnd vdd FILL
XFILL_9__2679_ gnd vdd FILL
XFILL_3__2653_ gnd vdd FILL
XFILL_3__2233_ gnd vdd FILL
XFILL_5__2999_ gnd vdd FILL
XFILL_5__2579_ gnd vdd FILL
XFILL_5__2159_ gnd vdd FILL
XFILL184650x19650 gnd vdd FILL
XFILL_5__3520_ gnd vdd FILL
XFILL_7__3538_ gnd vdd FILL
XFILL_7__3118_ gnd vdd FILL
XFILL_5__3100_ gnd vdd FILL
XFILL_1__3512_ gnd vdd FILL
XFILL_3__3438_ gnd vdd FILL
XFILL_3__3018_ gnd vdd FILL
XFILL_6__1863_ gnd vdd FILL
X_2582_ _872_ _1268_ _312_ _313_ vdd gnd OAI21X1
X_2162_ _1145_ _1154_ _1297_ vdd gnd NAND2X1
XFILL_2__1855_ gnd vdd FILL
XFILL_8__2822_ gnd vdd FILL
XFILL_8__2402_ gnd vdd FILL
XFILL_4__2722_ gnd vdd FILL
XFILL_4__2302_ gnd vdd FILL
XFILL_6__2648_ gnd vdd FILL
X_3367_ ADD[1] ADD[2] _1645_ vdd gnd NOR2X1
XFILL_6__2228_ gnd vdd FILL
XFILL_0__2622_ gnd vdd FILL
XFILL_0__2202_ gnd vdd FILL
XFILL_3__3191_ gnd vdd FILL
XFILL_4__3507_ gnd vdd FILL
XFILL_3__1924_ gnd vdd FILL
XFILL_0__3407_ gnd vdd FILL
XFILL_7__2809_ gnd vdd FILL
XFILL_2__2393_ gnd vdd FILL
XFILL_3__2709_ gnd vdd FILL
X_1853_ _994_ _996_ _992_ _997_ vdd gnd OAI21X1
XFILL_6__3186_ gnd vdd FILL
XFILL_2__3598_ gnd vdd FILL
XFILL_0__3580_ gnd vdd FILL
XFILL_0__3160_ gnd vdd FILL
XFILL_2__3178_ gnd vdd FILL
XFILL_6__1919_ gnd vdd FILL
X_2638_ _364_ _355_ _365_ _361_ _366_ vdd 
+ gnd
+ AOI22X1
X_2218_ _887__bF$buf0 _1032_ _1353_ vdd gnd NOR2X1
XFILL_7__2982_ gnd vdd FILL
XFILL_7__2562_ gnd vdd FILL
XFILL_7__2142_ gnd vdd FILL
XFILL_3__2882_ gnd vdd FILL
XFILL_3__2462_ gnd vdd FILL
XFILL_3__2042_ gnd vdd FILL
XFILL_5__2388_ gnd vdd FILL
X_2391_ ADD[1] _139_ _148_ _149_ vdd gnd AOI21X1
XFILL_8__2631_ gnd vdd FILL
XFILL_8__2211_ gnd vdd FILL
XFILL_4__2951_ gnd vdd FILL
XFILL_4__2531_ gnd vdd FILL
XFILL_4__2111_ gnd vdd FILL
XFILL182550x140550 gnd vdd FILL
XFILL_6__2877_ gnd vdd FILL
X_3596_ _1686_[1] DO[1] vdd gnd BUFX2
XFILL_6__2457_ gnd vdd FILL
XFILL_6__2037_ gnd vdd FILL
X_3176_ _977_ _978_ _807_ _808_ vdd gnd NAND3X1
XFILL_0__2851_ gnd vdd FILL
XFILL_2__2869_ gnd vdd FILL
XFILL_2__2449_ gnd vdd FILL
XFILL_0__2431_ gnd vdd FILL
XFILL_0__2011_ gnd vdd FILL
XFILL_2__2029_ gnd vdd FILL
XFILL_8__3416_ gnd vdd FILL
X_1909_ _1052_ _1053_ vdd gnd INVX1
XFILL_7__1833_ gnd vdd FILL
XFILL_3__1733_ gnd vdd FILL
XFILL_0__3216_ gnd vdd FILL
XFILL_5__2600_ gnd vdd FILL
XFILL_7__2618_ gnd vdd FILL
XFILL_3__2938_ gnd vdd FILL
XFILL_3__2518_ gnd vdd FILL
XFILL_8__1902_ gnd vdd FILL
XFILL_4__1802_ gnd vdd FILL
X_2867_ _539_ _1178_ _562_ vdd gnd AND2X2
XFILL_6__1728_ gnd vdd FILL
X_2447_ _190_ _197_ _198_ vdd gnd NOR2X1
X_2027_ _1159_ _1162_ _1163_ vdd gnd NAND2X1
XFILL_7__2791_ gnd vdd FILL
XFILL_7__2371_ gnd vdd FILL
XFILL_0__1702_ gnd vdd FILL
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
XFILL_2__1893_ gnd vdd FILL
XFILL_8__2860_ gnd vdd FILL
XFILL_8__2440_ gnd vdd FILL
XFILL_8__2020_ gnd vdd FILL
XFILL184650x160050 gnd vdd FILL
XFILL_4__2760_ gnd vdd FILL
XFILL_4__2340_ gnd vdd FILL
XFILL_6__2686_ gnd vdd FILL
XFILL_6__2266_ gnd vdd FILL
XFILL_0__2660_ gnd vdd FILL
XFILL_2__2678_ gnd vdd FILL
XFILL_2__2258_ gnd vdd FILL
XFILL_0__2240_ gnd vdd FILL
XFILL_8__3225_ gnd vdd FILL
X_1718_ state[0] _870_ _871_ vdd gnd NOR2X1
XFILL_4__3545_ gnd vdd FILL
XFILL_4__3125_ gnd vdd FILL
XFILL_3__1962_ gnd vdd FILL
XFILL_0__3445_ gnd vdd FILL
XFILL_0__3025_ gnd vdd FILL
XFILL_5__1888_ gnd vdd FILL
XFILL_7__2847_ gnd vdd FILL
XFILL_7__2427_ gnd vdd FILL
XFILL_7__2007_ gnd vdd FILL
XFILL_1__2821_ gnd vdd FILL
XFILL_1__2401_ gnd vdd FILL
XFILL_3__2747_ gnd vdd FILL
XFILL_3__2327_ gnd vdd FILL
X_1891_ _879_ _945_ _1035_ vdd gnd NAND2X1
XFILL_8__1711_ gnd vdd FILL
XFILL_6__1957_ gnd vdd FILL
X_2676_ RDY_bF$buf5 _975_ _399_ _9_ vdd gnd OAI21X1
X_2256_ _1219__bF$buf3 _1253_ _1390_ vdd gnd NOR2X1
XFILL_7__2180_ gnd vdd FILL
XFILL_0__1931_ gnd vdd FILL
XFILL_2__1949_ gnd vdd FILL
XFILL_8__2916_ gnd vdd FILL
XFILL_3__2080_ gnd vdd FILL
XFILL_4__2816_ gnd vdd FILL
XFILL_7__3385_ gnd vdd FILL
XFILL_0__2716_ gnd vdd FILL
XFILL_6__2495_ gnd vdd FILL
XFILL_6__2075_ gnd vdd FILL
XFILL_2__2487_ gnd vdd FILL
XFILL_8__3454_ gnd vdd FILL
XFILL_2__2067_ gnd vdd FILL
XFILL_8__3034_ gnd vdd FILL
X_1947_ _AXYS[1]_[4] _1022_ _1087_ vdd gnd NAND2X1
XFILL_7__1871_ gnd vdd FILL
XFILL_3__1771_ gnd vdd FILL
XFILL_5__1697_ gnd vdd FILL
XFILL_1__1689_ gnd vdd FILL
XFILL_7__2656_ gnd vdd FILL
XFILL_7__2236_ gnd vdd FILL
XFILL_1__2630_ gnd vdd FILL
XFILL_1__2210_ gnd vdd FILL
XFILL_3__2976_ gnd vdd FILL
XFILL_3__2556_ gnd vdd FILL
XFILL_3__2136_ gnd vdd FILL
XFILL_8__1940_ gnd vdd FILL
XFILL_5__3423_ gnd vdd FILL
XFILL_5__3003_ gnd vdd FILL
XFILL_1__3415_ gnd vdd FILL
XFILL_4__1840_ gnd vdd FILL
XFILL_6__1766_ gnd vdd FILL
X_2485_ _232_ _1685_[3] vdd gnd INVX1
X_2065_ RDY_bF$buf6 _1200_ _878_ _1201_ vdd gnd NAND3X1
XFILL_2__1758_ gnd vdd FILL
XFILL_0__1740_ gnd vdd FILL
XFILL_8__2725_ gnd vdd FILL
XFILL_8__2305_ gnd vdd FILL
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
X_1756_ _870_ _888_ _909_ vdd gnd NAND2X1
XFILL_4__3583_ gnd vdd FILL
XFILL_4__3163_ gnd vdd FILL
XFILL_6__3089_ gnd vdd FILL
XFILL_0__3483_ gnd vdd FILL
XFILL_0__3063_ gnd vdd FILL
XFILL_7__2885_ gnd vdd FILL
XFILL184350x113250 gnd vdd FILL
XFILL_7__2465_ gnd vdd FILL
XFILL_7__2045_ gnd vdd FILL
XFILL_3__2785_ gnd vdd FILL
XFILL_3__2365_ gnd vdd FILL
XFILL_5__3232_ gnd vdd FILL
XFILL_1__3224_ gnd vdd FILL
XFILL_6__1995_ gnd vdd FILL
X_2294_ RDY_bF$buf7 _1424_ _1426_ _1427_ vdd gnd OAI21X1
XFILL_2__1987_ gnd vdd FILL
XFILL_8__2954_ gnd vdd FILL
XFILL_8__2534_ gnd vdd FILL
XFILL_8__2114_ gnd vdd FILL
XFILL_4__2854_ gnd vdd FILL
XFILL_4__2434_ gnd vdd FILL
XFILL_4__2014_ gnd vdd FILL
X_3499_ _u_ALU8.BCD_ _1584_ _1585_ vdd gnd NAND2X1
X_3079_ _863_ _981_ _736_ _737_ vdd gnd OAI21X1
XFILL_0__2754_ gnd vdd FILL
XFILL_0__2334_ gnd vdd FILL
XFILL_7__1736_ gnd vdd FILL
XFILL_4__3219_ gnd vdd FILL
XFILL_1__1710_ gnd vdd FILL
XFILL_0__3539_ gnd vdd FILL
XFILL_0__3119_ gnd vdd FILL
XFILL_5__2923_ gnd vdd FILL
XFILL_5__2503_ gnd vdd FILL
XFILL_8__3492_ gnd vdd FILL
XFILL_8__3072_ gnd vdd FILL
XFILL_1__2915_ gnd vdd FILL
X_1985_ _1054_ AN _1121_ _1122_ vdd gnd AOI21X1
XFILL_4__3392_ gnd vdd FILL
XFILL_8__1805_ gnd vdd FILL
XFILL_4__1705_ gnd vdd FILL
XFILL_7__2694_ gnd vdd FILL
XFILL_7__2274_ gnd vdd FILL
XFILL_3__2594_ gnd vdd FILL
XFILL_9__3561_ gnd vdd FILL
XFILL_3__2174_ gnd vdd FILL
XFILL_7__3479_ gnd vdd FILL
XFILL_5__3461_ gnd vdd FILL
XFILL_7__3059_ gnd vdd FILL
XFILL_5__3041_ gnd vdd FILL
XFILL_1__3453_ gnd vdd FILL
XFILL_1__3033_ gnd vdd FILL
XFILL_3__3379_ gnd vdd FILL
XFILL_2__1796_ gnd vdd FILL
XFILL_8__2763_ gnd vdd FILL
XFILL_8__2343_ gnd vdd FILL
XFILL182550x117150 gnd vdd FILL
XFILL_4__2663_ gnd vdd FILL
XFILL_4__2243_ gnd vdd FILL
XFILL_6__2589_ gnd vdd FILL
XFILL_6__2169_ gnd vdd FILL
XFILL_0__2983_ gnd vdd FILL
XFILL_0__2563_ gnd vdd FILL
XFILL_8__3548_ gnd vdd FILL
XFILL_6__3530_ gnd vdd FILL
XFILL_0__2143_ gnd vdd FILL
XFILL_6__3110_ gnd vdd FILL
XFILL_8__3128_ gnd vdd FILL
XFILL_2__3522_ gnd vdd FILL
XFILL_2__3102_ gnd vdd FILL
XFILL_7__1965_ gnd vdd FILL
XFILL_4__3448_ gnd vdd FILL
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
XFILL_2_BUFX2_insert26 gnd vdd FILL
XFILL_2_BUFX2_insert27 gnd vdd FILL
XFILL_1__2724_ gnd vdd FILL
XFILL_1__2304_ gnd vdd FILL
X_1794_ _915_ _945_ _946_ vdd gnd NAND2X1
XFILL_5__3517_ gnd vdd FILL
XFILL_1__3509_ gnd vdd FILL
XFILL_4__1934_ gnd vdd FILL
X_2999_ _1191_ _629_ bit_ins _658_ _666_ vdd 
+ gnd
+ OAI22X1
X_2579_ _311_ _120_ alu_shift_right vdd gnd NOR2X1
X_2159_ _1294_ _1483_[0] vdd gnd INVX1
XFILL_7__2083_ gnd vdd FILL
XFILL_0__1834_ gnd vdd FILL
XFILL_8__2819_ gnd vdd FILL
XFILL_6__2801_ gnd vdd FILL
X_3520_ _1605_ _1604_ _1667_ _1606_ vdd gnd OAI21X1
X_3100_ _721_ _747_ _752_ _80_ vdd gnd OAI21X1
XFILL_4__2719_ gnd vdd FILL
XFILL_0__2619_ gnd vdd FILL
XFILL_3__3188_ gnd vdd FILL
XFILL_8__2992_ gnd vdd FILL
XFILL_8__2572_ gnd vdd FILL
XFILL_8__2152_ gnd vdd FILL
XFILL_4__2892_ gnd vdd FILL
XFILL_4__2472_ gnd vdd FILL
XFILL_4__2052_ gnd vdd FILL
XFILL_6__2398_ gnd vdd FILL
XFILL_0__2792_ gnd vdd FILL
XFILL_0__2372_ gnd vdd FILL
XFILL_7__1774_ gnd vdd FILL
XFILL_0__3157_ gnd vdd FILL
XFILL_7__2979_ gnd vdd FILL
XFILL_5__2961_ gnd vdd FILL
XFILL_5__2541_ gnd vdd FILL
XFILL_7__2559_ gnd vdd FILL
XFILL_7__2139_ gnd vdd FILL
XFILL_5__2121_ gnd vdd FILL
XFILL_1__2953_ gnd vdd FILL
XFILL_1__2533_ gnd vdd FILL
XFILL_7__3500_ gnd vdd FILL
XFILL_1__2113_ gnd vdd FILL
XFILL_3__2879_ gnd vdd FILL
XFILL_3__2459_ gnd vdd FILL
XFILL_3__2039_ gnd vdd FILL
XFILL_3__3400_ gnd vdd FILL
XFILL_8__1843_ gnd vdd FILL
XFILL_4__1743_ gnd vdd FILL
X_2388_ _1036_ _1281_ PC[9] _146_ vdd gnd OAI21X1
XFILL_6__2610_ gnd vdd FILL
XFILL_8__2628_ gnd vdd FILL
XFILL_8__2208_ gnd vdd FILL
XFILL_2__2602_ gnd vdd FILL
XFILL_4__2948_ gnd vdd FILL
XFILL_4__2528_ gnd vdd FILL
XFILL_4__2108_ gnd vdd FILL
XFILL_7__3097_ gnd vdd FILL
XFILL_0__2848_ gnd vdd FILL
XFILL_0__2428_ gnd vdd FILL
XFILL_0__2008_ gnd vdd FILL
XFILL_1__3491_ gnd vdd FILL
XFILL_1__3071_ gnd vdd FILL
XFILL_5__1812_ gnd vdd FILL
XFILL_8__2381_ gnd vdd FILL
XFILL_1__1804_ gnd vdd FILL
XFILL_4__2281_ gnd vdd FILL
XFILL_0__2181_ gnd vdd FILL
XFILL_2__2199_ gnd vdd FILL
XFILL_8__3586_ gnd vdd FILL
XFILL_8__3166_ gnd vdd FILL
XFILL_2__3560_ gnd vdd FILL
XFILL_2__3140_ gnd vdd FILL
XFILL_4__3486_ gnd vdd FILL
XFILL_4__3066_ gnd vdd FILL
X_2600_ _931_ _323_ _331_ vdd gnd NAND2X1
XFILL_9__2870_ gnd vdd FILL
XFILL_0__3386_ gnd vdd FILL
XFILL_7__2788_ gnd vdd FILL
XFILL_5__2770_ gnd vdd FILL
XFILL_5__2350_ gnd vdd FILL
XFILL_7__2368_ gnd vdd FILL
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
X_2197_ _1331_ _1325_ _1332_ vdd gnd NOR2X1
XFILL_0__1872_ gnd vdd FILL
XFILL_8__2857_ gnd vdd FILL
XFILL_8__2437_ gnd vdd FILL
XFILL_8__2017_ gnd vdd FILL
XFILL_2__2831_ gnd vdd FILL
XFILL_2__2411_ gnd vdd FILL
XFILL_4__2757_ gnd vdd FILL
XFILL_4__2337_ gnd vdd FILL
XFILL_0__2657_ gnd vdd FILL
XFILL_0__2237_ gnd vdd FILL
XFILL_6__3204_ gnd vdd FILL
XFILL_8__2190_ gnd vdd FILL
XFILL_3__1959_ gnd vdd FILL
XFILL_4__2090_ gnd vdd FILL
XFILL_3__2900_ gnd vdd FILL
XFILL_5__2826_ gnd vdd FILL
XFILL_5__2406_ gnd vdd FILL
XFILL_8__3395_ gnd vdd FILL
XFILL_1__2818_ gnd vdd FILL
X_1888_ _995_ _871_ _1032_ vdd gnd NAND2X1
XFILL_8__1708_ gnd vdd FILL
XFILL_0__3195_ gnd vdd FILL
XFILL_7__2597_ gnd vdd FILL
XFILL_7__2177_ gnd vdd FILL
XFILL_0__1928_ gnd vdd FILL
XFILL_1__2991_ gnd vdd FILL
XFILL_1__2571_ gnd vdd FILL
XFILL_1__2151_ gnd vdd FILL
XFILL_3__2497_ gnd vdd FILL
XFILL_3__2077_ gnd vdd FILL
XFILL_8__1881_ gnd vdd FILL
XFILL_5__3364_ gnd vdd FILL
XFILL_4__1781_ gnd vdd FILL
XFILL_2__1699_ gnd vdd FILL
XFILL_8__2666_ gnd vdd FILL
XFILL_8__2246_ gnd vdd FILL
XFILL_2__2640_ gnd vdd FILL
XFILL_2__2220_ gnd vdd FILL
XFILL_4__2986_ gnd vdd FILL
XFILL_4__2566_ gnd vdd FILL
XFILL_4__2146_ gnd vdd FILL
XFILL_0__2886_ gnd vdd FILL
XFILL_0__2466_ gnd vdd FILL
XFILL_6__3433_ gnd vdd FILL
XFILL_0__2046_ gnd vdd FILL
XFILL_6__3013_ gnd vdd FILL
XFILL_2__3425_ gnd vdd FILL
XFILL_2__3005_ gnd vdd FILL
XFILL_7__1868_ gnd vdd FILL
XFILL_5__1850_ gnd vdd FILL
XFILL_1__1842_ gnd vdd FILL
XFILL_3__1768_ gnd vdd FILL
XFILL_5__2635_ gnd vdd FILL
XFILL_5__2215_ gnd vdd FILL
XFILL_1__2627_ gnd vdd FILL
XFILL_1__2207_ gnd vdd FILL
X_1697_ _855_ DIMUX[2] vdd gnd INVX1
XFILL_8__1937_ gnd vdd FILL
XFILL_2__1911_ gnd vdd FILL
XFILL_4__1837_ gnd vdd FILL
XFILL_0__1737_ gnd vdd FILL
XFILL_6__2704_ gnd vdd FILL
X_3423_ AI[3] _1508_ _1509_ vdd gnd NAND2X1
X_3003_ _669_ AZ _1192_ _670_ vdd gnd MUX2X1
XFILL_1__2380_ gnd vdd FILL
XFILL_8__1690_ gnd vdd FILL
XFILL_5__3593_ gnd vdd FILL
XFILL_5__3173_ gnd vdd FILL
XFILL_1__3585_ gnd vdd FILL
XFILL_1__3165_ gnd vdd FILL
XFILL_5__1906_ gnd vdd FILL
XFILL_8__2895_ gnd vdd FILL
XFILL_8__2475_ gnd vdd FILL
XFILL_8__2055_ gnd vdd FILL
XFILL_4__2795_ gnd vdd FILL
XFILL_4__2375_ gnd vdd FILL
XFILL_0__2695_ gnd vdd FILL
XFILL_0__2275_ gnd vdd FILL
XFILL_3__1997_ gnd vdd FILL
XFILL_5__2864_ gnd vdd FILL
XFILL_5__2444_ gnd vdd FILL
XFILL_5__2024_ gnd vdd FILL
XFILL_1__2856_ gnd vdd FILL
XFILL_1__2436_ gnd vdd FILL
XFILL_1__2016_ gnd vdd FILL
XFILL_7__3403_ gnd vdd FILL
XFILL_8__1746_ gnd vdd FILL
XFILL_5__3229_ gnd vdd FILL
XFILL_2__1720_ gnd vdd FILL
XFILL_0__1966_ gnd vdd FILL
XFILL_6__2933_ gnd vdd FILL
XFILL_6__2513_ gnd vdd FILL
X_3232_ _1118_ _830__bF$buf2 _848_ _116_ vdd gnd OAI21X1
XFILL_3_BUFX2_insert90 gnd vdd FILL
XFILL_3_BUFX2_insert91 gnd vdd FILL
XFILL_3_BUFX2_insert92 gnd vdd FILL
XFILL_2__2925_ gnd vdd FILL
XFILL_3_BUFX2_insert93 gnd vdd FILL
XFILL_3_BUFX2_insert94 gnd vdd FILL
XFILL_2__2505_ gnd vdd FILL
XFILL_3_BUFX2_insert95 gnd vdd FILL
XFILL_3_BUFX2_insert96 gnd vdd FILL
XFILL_3_BUFX2_insert97 gnd vdd FILL
XFILL_1__3394_ gnd vdd FILL
XFILL_5__1715_ gnd vdd FILL
XFILL_8__2284_ gnd vdd FILL
XFILL_1__1707_ gnd vdd FILL
XFILL_4__2184_ gnd vdd FILL
XFILL_8__3489_ gnd vdd FILL
XFILL_6__3471_ gnd vdd FILL
XFILL_0__2084_ gnd vdd FILL
XFILL_6__3051_ gnd vdd FILL
XFILL_8__3069_ gnd vdd FILL
XFILL_2__3463_ gnd vdd FILL
XFILL_2__3043_ gnd vdd FILL
XFILL_4__3389_ gnd vdd FILL
X_2923_ _600_ _605_ _606_ vdd gnd NOR2X1
X_2503_ _246_ _226_ _247_ _248_ vdd gnd OAI21X1
XFILL_1__1880_ gnd vdd FILL
XFILL_5__2673_ gnd vdd FILL
XFILL_5__2253_ gnd vdd FILL
XFILL_1__2665_ gnd vdd FILL
XFILL_1__2245_ gnd vdd FILL
XFILL_7__3212_ gnd vdd FILL
XFILL_3__3532_ gnd vdd FILL
XFILL_3__3112_ gnd vdd FILL
XFILL_8__1975_ gnd vdd FILL
XFILL_5__3458_ gnd vdd FILL
XFILL_5__3038_ gnd vdd FILL
XFILL_4__1875_ gnd vdd FILL
XFILL_0__1775_ gnd vdd FILL
XFILL_6__2742_ gnd vdd FILL
X_3461_ _1541_ _1545_ _1546_ _1547_ vdd gnd OAI21X1
XFILL_6__2322_ gnd vdd FILL
X_3041_ _1281_ _703_ _704_ vdd gnd NOR2X1
XFILL_2__2734_ gnd vdd FILL
XFILL_2__2314_ gnd vdd FILL
XFILL_4__3601_ gnd vdd FILL
XFILL_6__3527_ gnd vdd FILL
XFILL_6__3107_ gnd vdd FILL
XFILL_0__3501_ gnd vdd FILL
XFILL_2__3519_ gnd vdd FILL
XFILL_5__1944_ gnd vdd FILL
XFILL_8__2093_ gnd vdd FILL
XFILL_1__1936_ gnd vdd FILL
XFILL_7__2903_ gnd vdd FILL
XFILL_3__2803_ gnd vdd FILL
XFILL_5__2729_ gnd vdd FILL
XFILL_5__2309_ gnd vdd FILL
XFILL184350x101550 gnd vdd FILL
XFILL_4__3198_ gnd vdd FILL
X_2732_ _441_ _450_ _430_ _452_ vdd gnd NAND3X1
X_2312_ _1295_ _1444_ _1221_ _1445_ vdd gnd OAI21X1
XFILL_0__3098_ gnd vdd FILL
XFILL_5__2482_ gnd vdd FILL
XFILL_5__2062_ gnd vdd FILL
X_3517_ _1602_ _1603_ vdd gnd INVX1
XFILL_1__2894_ gnd vdd FILL
XFILL_1__2474_ gnd vdd FILL
XFILL_7__3441_ gnd vdd FILL
XFILL_1__2054_ gnd vdd FILL
XFILL_7__3021_ gnd vdd FILL
XFILL_8__1784_ gnd vdd FILL
XFILL_8__2989_ gnd vdd FILL
XFILL_6__2971_ gnd vdd FILL
XFILL_8__2569_ gnd vdd FILL
XFILL_6__2551_ gnd vdd FILL
X_3270_ _32_ vdd _1__bF$buf7 clk_bF$buf1 op[0] vdd 
+ gnd
+ DFFSR
XFILL_8__2149_ gnd vdd FILL
XFILL_6__2131_ gnd vdd FILL
XFILL_2__2963_ gnd vdd FILL
XFILL_2__2543_ gnd vdd FILL
XFILL_8__3510_ gnd vdd FILL
XFILL_2__2123_ gnd vdd FILL
XFILL_4__2889_ gnd vdd FILL
XFILL_4__2469_ gnd vdd FILL
XFILL_4__2049_ gnd vdd FILL
XFILL_4__3410_ gnd vdd FILL
XFILL_0__2789_ gnd vdd FILL
XFILL_0__2369_ gnd vdd FILL
XFILL_5__1753_ gnd vdd FILL
XFILL_1__1745_ gnd vdd FILL
XFILL_7__2712_ gnd vdd FILL
XFILL_3__2612_ gnd vdd FILL
XFILL181350x140550 gnd vdd FILL
XFILL_5__2958_ gnd vdd FILL
XFILL_5__2538_ gnd vdd FILL
XFILL_5__2118_ gnd vdd FILL
XFILL_2__3081_ gnd vdd FILL
X_2961_ plp _1002__bF$buf3 _632_ vdd gnd NOR2X1
XFILL_6__1822_ gnd vdd FILL
X_2541_ _857_ _196_ _280_ _281_ vdd gnd OAI21X1
X_2121_ RDY_bF$buf0 _959_ _1256_ _1257_ vdd gnd OAI21X1
XFILL_2__1814_ gnd vdd FILL
XFILL_5__2291_ gnd vdd FILL
XFILL_6__2607_ gnd vdd FILL
X_3326_ _80_ vdd _1__bF$buf4 clk_bF$buf4 _AXYS[1]_[3] vdd 
+ gnd
+ DFFSR
XFILL_1__2283_ gnd vdd FILL
XFILL_7_BUFX2_insert40 gnd vdd FILL
XFILL_7_BUFX2_insert41 gnd vdd FILL
XFILL_7_BUFX2_insert42 gnd vdd FILL
XFILL_7_BUFX2_insert43 gnd vdd FILL
XFILL_3__3150_ gnd vdd FILL
XFILL_7_BUFX2_insert44 gnd vdd FILL
XFILL_7_BUFX2_insert45 gnd vdd FILL
XFILL_7_BUFX2_insert46 gnd vdd FILL
XFILL_7_BUFX2_insert47 gnd vdd FILL
XFILL_5__3496_ gnd vdd FILL
XFILL_7_BUFX2_insert48 gnd vdd FILL
XFILL_7_BUFX2_insert49 gnd vdd FILL
XFILL_5__3076_ gnd vdd FILL
XFILL182550x105450 gnd vdd FILL
XFILL_1__3488_ gnd vdd FILL
XFILL_1__3068_ gnd vdd FILL
XFILL_5__1809_ gnd vdd FILL
XFILL_8__2798_ gnd vdd FILL
XFILL_6__2780_ gnd vdd FILL
XFILL_6__2360_ gnd vdd FILL
XFILL_8__2378_ gnd vdd FILL
XFILL_2__2772_ gnd vdd FILL
XFILL_2__2352_ gnd vdd FILL
XFILL_4__2698_ gnd vdd FILL
XFILL_4__2278_ gnd vdd FILL
X_1812_ _893_ _927_ _886__bF$buf3 _964_ vdd gnd OAI21X1
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
XFILL182850x35250 gnd vdd FILL
XFILL_3__2001_ gnd vdd FILL
XFILL_5__2767_ gnd vdd FILL
XFILL_5__2347_ gnd vdd FILL
XFILL_1__2759_ gnd vdd FILL
XFILL_1__2339_ gnd vdd FILL
XFILL_3__3206_ gnd vdd FILL
X_2770_ AN _325_ _338_ ABH[7] _486_ vdd 
+ gnd
+ AOI22X1
X_2350_ _1477_ _1480_ _1479_ _1481_ vdd gnd NAND3X1
XFILL_4__1969_ gnd vdd FILL
XFILL_4__2910_ gnd vdd FILL
XFILL_0__1869_ gnd vdd FILL
XFILL_6__2836_ gnd vdd FILL
X_3555_ _1592_ _1614_ RDY_bF$buf2 _1635_ vdd gnd OAI21X1
XFILL_6__2416_ gnd vdd FILL
X_3135_ _721_ _767_ _771_ _96_ vdd gnd OAI21X1
XFILL_1__2092_ gnd vdd FILL
XFILL_2__2828_ gnd vdd FILL
XFILL_0__2810_ gnd vdd FILL
XFILL_2__2408_ gnd vdd FILL
XFILL_8__2187_ gnd vdd FILL
XFILL_2__2581_ gnd vdd FILL
XFILL_2__2161_ gnd vdd FILL
XFILL_4__2087_ gnd vdd FILL
XFILL_6__3374_ gnd vdd FILL
XFILL_2__3366_ gnd vdd FILL
XFILL_5__1791_ gnd vdd FILL
X_2826_ _524_ _1219__bF$buf2 _527_ _31_ vdd gnd AOI21X1
X_2406_ _140_ _138_ _1051__bF$buf3 _1144_ _161_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1783_ gnd vdd FILL
XFILL_7__2750_ gnd vdd FILL
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
XFILL_3__3435_ gnd vdd FILL
XFILL_3__3015_ gnd vdd FILL
XFILL_6__1860_ gnd vdd FILL
XFILL_8__1878_ gnd vdd FILL
XFILL_2__1852_ gnd vdd FILL
XFILL_4__1778_ gnd vdd FILL
XFILL_6__2645_ gnd vdd FILL
X_3364_ ADD[0] ADD[3] _1642_ vdd gnd OR2X2
XFILL_6__2225_ gnd vdd FILL
XFILL_2__2637_ gnd vdd FILL
XFILL_2__2217_ gnd vdd FILL
XFILL_4__3504_ gnd vdd FILL
XFILL_3__1921_ gnd vdd FILL
XFILL_0__3404_ gnd vdd FILL
XFILL_5__1847_ gnd vdd FILL
XFILL_1__1839_ gnd vdd FILL
XFILL_7__2806_ gnd vdd FILL
XFILL_2__2390_ gnd vdd FILL
XFILL_3__2706_ gnd vdd FILL
XFILL_8_BUFX2_insert90 gnd vdd FILL
XFILL_8_BUFX2_insert91 gnd vdd FILL
X_1850_ _993_ _994_ vdd gnd INVX1
XFILL_8_BUFX2_insert92 gnd vdd FILL
XFILL_8_BUFX2_insert93 gnd vdd FILL
XFILL_8_BUFX2_insert94 gnd vdd FILL
XFILL_8_BUFX2_insert95 gnd vdd FILL
XFILL_8_BUFX2_insert96 gnd vdd FILL
XFILL_8_BUFX2_insert97 gnd vdd FILL
XFILL_6__3183_ gnd vdd FILL
XFILL_2__3595_ gnd vdd FILL
XFILL_2__3175_ gnd vdd FILL
XFILL_6__1916_ gnd vdd FILL
X_2635_ _358_ _356_ _362_ _363_ vdd gnd AOI21X1
X_2215_ _1175_ _1350_ vdd gnd INVX1
XFILL_2__1908_ gnd vdd FILL
XFILL_5__2385_ gnd vdd FILL
XFILL_1__2797_ gnd vdd FILL
XFILL_1__2377_ gnd vdd FILL
XFILL_6__2874_ gnd vdd FILL
XFILL_6__2454_ gnd vdd FILL
X_3593_ _1685_[8] AB[8] vdd gnd BUFX2
XFILL_6__2034_ gnd vdd FILL
X_3173_ state[4] _916_ _794_ _805_ vdd gnd OAI21X1
XFILL_2__2866_ gnd vdd FILL
XFILL_2__2446_ gnd vdd FILL
XFILL_2__2026_ gnd vdd FILL
XFILL_8__3413_ gnd vdd FILL
X_1906_ _963_ _1050_ vdd gnd INVX1
XFILL_7__1830_ gnd vdd FILL
XFILL_3__1730_ gnd vdd FILL
XFILL_0__3213_ gnd vdd FILL
XFILL_7__2615_ gnd vdd FILL
XFILL_3__2935_ gnd vdd FILL
XFILL_3__2515_ gnd vdd FILL
X_2864_ _1171_ _1314_ _509_ _561_ vdd gnd OAI21X1
XFILL_6__1725_ gnd vdd FILL
X_2444_ _194_ _121_ _884_ _195_ vdd gnd NAND3X1
X_2024_ IRHOLD_valid_bF$buf3 IRHOLD[6] _1160_ vdd gnd NAND2X1
XFILL_2__1717_ gnd vdd FILL
XFILL_5__2194_ gnd vdd FILL
X_3229_ _1685_[14] _830__bF$buf1 _847_ vdd gnd NAND2X1
XFILL_1__2186_ gnd vdd FILL
XFILL_7__3153_ gnd vdd FILL
XFILL_0__2904_ gnd vdd FILL
XFILL_3__3473_ gnd vdd FILL
XFILL_3__3053_ gnd vdd FILL
XFILL_5__3399_ gnd vdd FILL
XFILL_2__1890_ gnd vdd FILL
XFILL_6__2683_ gnd vdd FILL
XFILL_6__2263_ gnd vdd FILL
XFILL_2__2675_ gnd vdd FILL
XFILL_2__2255_ gnd vdd FILL
XFILL_8__3222_ gnd vdd FILL
X_1715_ _867_ _868_ vdd gnd INVX1
XFILL_4__3542_ gnd vdd FILL
XFILL_4__3122_ gnd vdd FILL
XFILL_6__3468_ gnd vdd FILL
XFILL_6__3048_ gnd vdd FILL
XFILL_0__3442_ gnd vdd FILL
XFILL_0__3022_ gnd vdd FILL
XFILL_5__1885_ gnd vdd FILL
XFILL_1__1877_ gnd vdd FILL
XFILL_7__2844_ gnd vdd FILL
XFILL_7__2424_ gnd vdd FILL
XFILL_7__2004_ gnd vdd FILL
XFILL181350x117150 gnd vdd FILL
XFILL_3__2744_ gnd vdd FILL
XFILL_3__2324_ gnd vdd FILL
XFILL_7__3209_ gnd vdd FILL
XFILL_1__3603_ gnd vdd FILL
XFILL_3__3529_ gnd vdd FILL
XFILL_3__3109_ gnd vdd FILL
XFILL_6__1954_ gnd vdd FILL
X_2673_ _396_ _391_ _397_ vdd gnd NAND2X1
X_2253_ _1381_ _1386_ _1387_ vdd gnd NAND2X1
XFILL_2__1946_ gnd vdd FILL
XFILL_8__2913_ gnd vdd FILL
XFILL_4__2813_ gnd vdd FILL
XFILL_6__2739_ gnd vdd FILL
X_3458_ alu_op[0] _1542_ _1543_ _1544_ vdd gnd OAI21X1
XFILL_6__2319_ gnd vdd FILL
X_3038_ HC _698_ _701_ vdd gnd NOR2X1
XFILL_7__3382_ gnd vdd FILL
XFILL_0__2713_ gnd vdd FILL
XFILL_6__2492_ gnd vdd FILL
XFILL_6__2072_ gnd vdd FILL
XFILL_2__2484_ gnd vdd FILL
XFILL_8__3451_ gnd vdd FILL
XFILL_2__2064_ gnd vdd FILL
XFILL_8__3031_ gnd vdd FILL
X_1944_ _857_ _944_ _1084_ _1085_ vdd gnd OAI21X1
XFILL_5__1694_ gnd vdd FILL
X_2729_ DIMUX[3] _446_ _448_ _449_ vdd gnd AOI21X1
X_2309_ _1314_ _1175_ _1142_ _1442_ vdd gnd OAI21X1
XFILL_7__2653_ gnd vdd FILL
XFILL_7__2233_ gnd vdd FILL
XFILL_3__2973_ gnd vdd FILL
XFILL_3__2553_ gnd vdd FILL
XFILL_3__2133_ gnd vdd FILL
XFILL_5__2899_ gnd vdd FILL
XFILL_5__2479_ gnd vdd FILL
XFILL_5__2059_ gnd vdd FILL
XFILL_5__3420_ gnd vdd FILL
XFILL_7__3438_ gnd vdd FILL
XFILL_7__3018_ gnd vdd FILL
XFILL_5__3000_ gnd vdd FILL
XFILL_1__3412_ gnd vdd FILL
XFILL_6__1763_ gnd vdd FILL
X_2482_ _227_ ADD[3] _229_ _230_ vdd gnd AOI21X1
X_2062_ write_back _853__bF$buf7 _1198_ vdd gnd NOR2X1
XFILL_2__1755_ gnd vdd FILL
XFILL_8__2722_ gnd vdd FILL
XFILL_8__2302_ gnd vdd FILL
XFILL_4__2622_ gnd vdd FILL
XFILL_4__2202_ gnd vdd FILL
XFILL_6__2968_ gnd vdd FILL
XFILL_6__2548_ gnd vdd FILL
X_3267_ _29_ vdd _1__bF$buf10 clk_bF$buf6 sei vdd 
+ gnd
+ DFFSR
XFILL_6__2128_ gnd vdd FILL
XFILL_7__3191_ gnd vdd FILL
XFILL_0__2942_ gnd vdd FILL
XFILL_0__2522_ gnd vdd FILL
XFILL_8__3507_ gnd vdd FILL
XFILL_0__2102_ gnd vdd FILL
XFILL_3__3091_ gnd vdd FILL
XFILL_7__1924_ gnd vdd FILL
XFILL_4__3407_ gnd vdd FILL
XFILL_3__1824_ gnd vdd FILL
XFILL_7__2709_ gnd vdd FILL
XFILL_2__2293_ gnd vdd FILL
XFILL182850x140550 gnd vdd FILL
XFILL_3__2609_ gnd vdd FILL
X_1753_ _875_ _892_ _906_ vdd gnd NOR2X1
XFILL_4__3580_ gnd vdd FILL
XFILL_4__3160_ gnd vdd FILL
XFILL_6__3086_ gnd vdd FILL
XFILL_2__3498_ gnd vdd FILL
XFILL_0__3480_ gnd vdd FILL
XFILL_0__3060_ gnd vdd FILL
XFILL_2__3078_ gnd vdd FILL
XFILL_6__1819_ gnd vdd FILL
X_2958_ _887__bF$buf4 _1259_ _1002__bF$buf2 _629_ vdd gnd OAI21X1
X_2538_ ABH[3] _199_ _278_ vdd gnd NAND2X1
X_2118_ _1219__bF$buf3 _1220_ _1254_ vdd gnd NOR2X1
XFILL_7__2882_ gnd vdd FILL
XFILL_7__2462_ gnd vdd FILL
XFILL_7__2042_ gnd vdd FILL
XFILL_3__2782_ gnd vdd FILL
XFILL_3__2362_ gnd vdd FILL
XFILL_5__2288_ gnd vdd FILL
XFILL_1__3221_ gnd vdd FILL
XFILL_3__3147_ gnd vdd FILL
XFILL_6__1992_ gnd vdd FILL
X_2291_ _869__bF$buf2 _1037_ _1424_ vdd gnd NAND2X1
XFILL_2__1984_ gnd vdd FILL
XFILL_8__2951_ gnd vdd FILL
XFILL_8__2531_ gnd vdd FILL
XFILL_8__2111_ gnd vdd FILL
XFILL_4__2851_ gnd vdd FILL
XFILL_4__2431_ gnd vdd FILL
XFILL_4__2011_ gnd vdd FILL
XFILL184350x175650 gnd vdd FILL
XFILL_6__2777_ gnd vdd FILL
X_3496_ _1566_ _1562_ _1582_ vdd gnd NAND2X1
XFILL_6__2357_ gnd vdd FILL
X_3076_ _726_ ADD[6] _734_ vdd gnd XNOR2X1
XFILL_2__2769_ gnd vdd FILL
XFILL_0__2751_ gnd vdd FILL
XFILL_0__2331_ gnd vdd FILL
XFILL_2__2349_ gnd vdd FILL
X_1809_ _960_ _945_ _961_ vdd gnd NAND2X1
XFILL_7__1733_ gnd vdd FILL
XFILL_4__3216_ gnd vdd FILL
XFILL_0__3536_ gnd vdd FILL
XFILL_0__3116_ gnd vdd FILL
XFILL_5__1979_ gnd vdd FILL
XFILL_5__2920_ gnd vdd FILL
XFILL_7__2938_ gnd vdd FILL
XFILL_5__2500_ gnd vdd FILL
XFILL_7__2518_ gnd vdd FILL
XFILL_1__2912_ gnd vdd FILL
XFILL_3__2838_ gnd vdd FILL
XFILL_3__2418_ gnd vdd FILL
X_1982_ _1118_ _872_ _1119_ vdd gnd NOR2X1
XFILL_8__1802_ gnd vdd FILL
XFILL_4__1702_ gnd vdd FILL
X_2767_ RDY_bF$buf8 _481_ _483_ _484_ vdd gnd NAND3X1
X_2347_ _1205_ _1206_ _1289_ _1478_ vdd gnd AOI21X1
XFILL_7__2691_ gnd vdd FILL
XFILL_7__2271_ gnd vdd FILL
XFILL_3__2591_ gnd vdd FILL
XFILL_3__2171_ gnd vdd FILL
XFILL_5__2097_ gnd vdd FILL
XFILL_4__2907_ gnd vdd FILL
XFILL_7__3476_ gnd vdd FILL
XFILL_1__2089_ gnd vdd FILL
XFILL_7__3056_ gnd vdd FILL
XFILL_0__2807_ gnd vdd FILL
XFILL_1__3450_ gnd vdd FILL
XFILL_1__3030_ gnd vdd FILL
XFILL_3__3376_ gnd vdd FILL
XFILL_2__1793_ gnd vdd FILL
XFILL_8__2760_ gnd vdd FILL
XFILL_8__2340_ gnd vdd FILL
XFILL183150x35250 gnd vdd FILL
XFILL_4__2660_ gnd vdd FILL
XFILL_4__2240_ gnd vdd FILL
XFILL_6__2586_ gnd vdd FILL
XFILL_6__2166_ gnd vdd FILL
XFILL_0__2980_ gnd vdd FILL
XFILL_2__2998_ gnd vdd FILL
XFILL_2__2578_ gnd vdd FILL
XFILL_0__2560_ gnd vdd FILL
XFILL_8__3545_ gnd vdd FILL
XFILL_2__2158_ gnd vdd FILL
XFILL_0__2140_ gnd vdd FILL
XFILL_8__3125_ gnd vdd FILL
XFILL_7__1962_ gnd vdd FILL
XFILL_4__3445_ gnd vdd FILL
XFILL_4__3025_ gnd vdd FILL
XFILL_3__1862_ gnd vdd FILL
XFILL_5__1788_ gnd vdd FILL
XFILL_7__2747_ gnd vdd FILL
XFILL_7__2327_ gnd vdd FILL
XFILL_1__2721_ gnd vdd FILL
XFILL_1__2301_ gnd vdd FILL
XFILL_3__2647_ gnd vdd FILL
XFILL_3__2227_ gnd vdd FILL
X_1791_ _933_ _943_ vdd gnd INVX1
XFILL_5__3514_ gnd vdd FILL
XFILL_1__3506_ gnd vdd FILL
XFILL_4__1931_ gnd vdd FILL
XFILL_6__1857_ gnd vdd FILL
X_2996_ _1191_ _661_ _663_ _664_ vdd gnd OAI21X1
X_2576_ adc_bcd _310_ vdd gnd INVX1
X_2156_ _1280_ _1291_ _1292_ vdd gnd NOR2X1
XFILL_7__2080_ gnd vdd FILL
XFILL_0__1831_ gnd vdd FILL
XFILL_2__1849_ gnd vdd FILL
XFILL_8__2816_ gnd vdd FILL
XFILL_4__2716_ gnd vdd FILL
XFILL_0__2616_ gnd vdd FILL
XFILL_3__3185_ gnd vdd FILL
XFILL_3__1918_ gnd vdd FILL
XFILL_6__2395_ gnd vdd FILL
XFILL_2__2387_ gnd vdd FILL
X_1847_ _918__bF$buf2 _989_ _990_ _991_ vdd gnd OAI21X1
XFILL_7__1771_ gnd vdd FILL
XFILL_0__3154_ gnd vdd FILL
XFILL_7__2976_ gnd vdd FILL
XFILL_7__2556_ gnd vdd FILL
XFILL_7__2136_ gnd vdd FILL
XFILL_1__2950_ gnd vdd FILL
XFILL_1__2530_ gnd vdd FILL
XFILL_1__2110_ gnd vdd FILL
XFILL_3__2876_ gnd vdd FILL
XFILL_3__2456_ gnd vdd FILL
XFILL_3__2036_ gnd vdd FILL
XFILL_9__3003_ gnd vdd FILL
XFILL_8__1840_ gnd vdd FILL
XFILL_4__1740_ gnd vdd FILL
X_2385_ ADD[0] _139_ _143_ _144_ vdd gnd AOI21X1
XFILL184050x171750 gnd vdd FILL
XFILL_8__2625_ gnd vdd FILL
XFILL_8__2205_ gnd vdd FILL
XFILL184650x113250 gnd vdd FILL
XFILL_4__2945_ gnd vdd FILL
XFILL_4__2525_ gnd vdd FILL
XFILL_4__2105_ gnd vdd FILL
XFILL_7__3094_ gnd vdd FILL
XFILL_0__2845_ gnd vdd FILL
XFILL_0__2425_ gnd vdd FILL
XFILL_0__2005_ gnd vdd FILL
XFILL_7__1827_ gnd vdd FILL
XFILL_1__1801_ gnd vdd FILL
XFILL_3__1727_ gnd vdd FILL
XFILL_2__2196_ gnd vdd FILL
XFILL_8__3583_ gnd vdd FILL
XFILL_8__3163_ gnd vdd FILL
XFILL_4__3483_ gnd vdd FILL
XFILL_4__3063_ gnd vdd FILL
XFILL_0__3383_ gnd vdd FILL
XFILL_7__2785_ gnd vdd FILL
XFILL_7__2365_ gnd vdd FILL
XFILL_3__2685_ gnd vdd FILL
XFILL_3__2265_ gnd vdd FILL
XFILL_5__3552_ gnd vdd FILL
XFILL_5__3132_ gnd vdd FILL
XFILL_1__3544_ gnd vdd FILL
XFILL_1__3124_ gnd vdd FILL
XFILL_6__1895_ gnd vdd FILL
X_2194_ _1149_ _1329_ vdd gnd INVX1
XFILL_2__1887_ gnd vdd FILL
XFILL_8__2854_ gnd vdd FILL
XFILL_8__2434_ gnd vdd FILL
XFILL_8__2014_ gnd vdd FILL
XFILL_4__2754_ gnd vdd FILL
XFILL_4__2334_ gnd vdd FILL
X_3399_ _1672_ _1671_ _1668_ _1673_ vdd gnd OAI21X1
XFILL183450x74250 gnd vdd FILL
XFILL_0__2654_ gnd vdd FILL
XFILL_0__2234_ gnd vdd FILL
XFILL_6__3201_ gnd vdd FILL
XFILL_8__3219_ gnd vdd FILL
XFILL_4__3539_ gnd vdd FILL
XFILL_4__3119_ gnd vdd FILL
XFILL_3__1956_ gnd vdd FILL
XFILL_0__3439_ gnd vdd FILL
XFILL_0__3019_ gnd vdd FILL
XFILL_5__2823_ gnd vdd FILL
XFILL182850x117150 gnd vdd FILL
XFILL_5__2403_ gnd vdd FILL
XFILL_8__3392_ gnd vdd FILL
XFILL_1__2815_ gnd vdd FILL
X_1885_ _954_ _1029_ vdd gnd INVX1
XFILL_8__1705_ gnd vdd FILL
XFILL_0__3192_ gnd vdd FILL
XFILL_7__2594_ gnd vdd FILL
XFILL_7__2174_ gnd vdd FILL
XFILL_0__1925_ gnd vdd FILL
XFILL_3__2494_ gnd vdd FILL
XFILL_3__2074_ gnd vdd FILL
XFILL_7__3379_ gnd vdd FILL
XFILL_2__1696_ gnd vdd FILL
XFILL_8__2663_ gnd vdd FILL
XFILL_8__2243_ gnd vdd FILL
XFILL_4__2983_ gnd vdd FILL
XFILL_4__2563_ gnd vdd FILL
XFILL_4__2143_ gnd vdd FILL
XFILL_6__2489_ gnd vdd FILL
XFILL_6__2069_ gnd vdd FILL
XFILL_0__2883_ gnd vdd FILL
XFILL_0__2463_ gnd vdd FILL
XFILL_6__3430_ gnd vdd FILL
XFILL_0__2043_ gnd vdd FILL
XFILL_8__3448_ gnd vdd FILL
XFILL_8__3028_ gnd vdd FILL
XFILL_6__3010_ gnd vdd FILL
XFILL_2__3422_ gnd vdd FILL
XFILL_2__3002_ gnd vdd FILL
XFILL_7__1865_ gnd vdd FILL
XFILL_3__1765_ gnd vdd FILL
XFILL_5__2632_ gnd vdd FILL
XFILL_5__2212_ gnd vdd FILL
XFILL_1__2624_ gnd vdd FILL
XFILL_1__2204_ gnd vdd FILL
X_1694_ RDY_bF$buf1 _853_ vdd gnd INVX8
XFILL_8__1934_ gnd vdd FILL
XFILL_5__3417_ gnd vdd FILL
XFILL_1__3409_ gnd vdd FILL
XFILL_4__1834_ gnd vdd FILL
X_2899_ _1303_ _1314_ _585_ vdd gnd NAND2X1
X_2479_ _224_ _226_ _227_ vdd gnd NAND2X1
X_2059_ _900_ _935_ _926__bF$buf0 _1195_ vdd gnd OAI21X1
XFILL_0__1734_ gnd vdd FILL
XFILL_6__2701_ gnd vdd FILL
XFILL_8__2719_ gnd vdd FILL
X_3420_ BI[4] _1674_ _1505_ _1506_ vdd gnd OAI21X1
X_3000_ ADD[1] AZ plp _667_ vdd gnd MUX2X1
XFILL_4__2619_ gnd vdd FILL
XFILL_5__3590_ gnd vdd FILL
XFILL_7__3188_ gnd vdd FILL
XFILL_5__3170_ gnd vdd FILL
XFILL_0__2939_ gnd vdd FILL
XFILL_0__2519_ gnd vdd FILL
XFILL_1__3582_ gnd vdd FILL
XFILL_1__3162_ gnd vdd FILL
XFILL_3__3088_ gnd vdd FILL
XFILL_5__1903_ gnd vdd FILL
XFILL_8__2892_ gnd vdd FILL
XFILL_8__2472_ gnd vdd FILL
XFILL_8__2052_ gnd vdd FILL
XFILL_4__2792_ gnd vdd FILL
XFILL_4__2372_ gnd vdd FILL
XFILL_6__2298_ gnd vdd FILL
XFILL_0__2692_ gnd vdd FILL
XFILL_0__2272_ gnd vdd FILL
XFILL_2__3231_ gnd vdd FILL
XFILL_4__3157_ gnd vdd FILL
XFILL_3__1994_ gnd vdd FILL
XFILL_0__3477_ gnd vdd FILL
XFILL_0__3057_ gnd vdd FILL
XFILL_5__2861_ gnd vdd FILL
XFILL_7__2879_ gnd vdd FILL
XFILL_7__2459_ gnd vdd FILL
XFILL_5__2441_ gnd vdd FILL
XFILL_7__2039_ gnd vdd FILL
XFILL_5__2021_ gnd vdd FILL
XFILL_1__2853_ gnd vdd FILL
XFILL_1__2433_ gnd vdd FILL
XFILL_1__2013_ gnd vdd FILL
XFILL_7__3400_ gnd vdd FILL
XFILL_3__2779_ gnd vdd FILL
XFILL_3__2359_ gnd vdd FILL
XFILL_8__1743_ gnd vdd FILL
XFILL_5__3226_ gnd vdd FILL
XFILL_1__3218_ gnd vdd FILL
XFILL_6__1989_ gnd vdd FILL
X_2288_ _853__bF$buf6 _1039_ _1253_ _1352_ _1421_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1963_ gnd vdd FILL
XFILL_6__2930_ gnd vdd FILL
XFILL_8__2948_ gnd vdd FILL
XFILL_6__2510_ gnd vdd FILL
XFILL_8__2528_ gnd vdd FILL
XFILL_8__2108_ gnd vdd FILL
XFILL_3_BUFX2_insert60 gnd vdd FILL
XFILL_3_BUFX2_insert61 gnd vdd FILL
XFILL_3_BUFX2_insert62 gnd vdd FILL
XFILL_2__2922_ gnd vdd FILL
XFILL_3_BUFX2_insert63 gnd vdd FILL
XFILL_3_BUFX2_insert64 gnd vdd FILL
XFILL_2__2502_ gnd vdd FILL
XFILL_3_BUFX2_insert65 gnd vdd FILL
XFILL_3_BUFX2_insert66 gnd vdd FILL
XFILL_3_BUFX2_insert67 gnd vdd FILL
XFILL_4__2848_ gnd vdd FILL
XFILL_3_BUFX2_insert68 gnd vdd FILL
XFILL_4__2428_ gnd vdd FILL
XFILL_3_BUFX2_insert69 gnd vdd FILL
XFILL_4__2008_ gnd vdd FILL
XFILL_0__2748_ gnd vdd FILL
XFILL_0__2328_ gnd vdd FILL
XFILL_1__3391_ gnd vdd FILL
XFILL_5__1712_ gnd vdd FILL
XFILL_8__2281_ gnd vdd FILL
XFILL_1__1704_ gnd vdd FILL
XFILL_4__2181_ gnd vdd FILL
XFILL_5__2917_ gnd vdd FILL
XFILL_8__3486_ gnd vdd FILL
XFILL_0__2081_ gnd vdd FILL
XFILL_2__2099_ gnd vdd FILL
XFILL_8__3066_ gnd vdd FILL
XFILL_1__2909_ gnd vdd FILL
XFILL_2__3460_ gnd vdd FILL
X_1979_ _1113_ _1115_ _1114_ _1116_ vdd gnd NAND3X1
XFILL_2__3040_ gnd vdd FILL
XFILL_4__3386_ gnd vdd FILL
X_2920_ _521_ _603_ vdd gnd INVX1
X_2500_ _245_ _1685_[5] vdd gnd INVX1
XFILL_5__2670_ gnd vdd FILL
XFILL_7__2688_ gnd vdd FILL
XFILL_5__2250_ gnd vdd FILL
XFILL_7__2268_ gnd vdd FILL
XFILL_1__2662_ gnd vdd FILL
XFILL_1__2242_ gnd vdd FILL
XFILL_3__2588_ gnd vdd FILL
XFILL_3__2168_ gnd vdd FILL
XFILL_9__3135_ gnd vdd FILL
XFILL_8__1972_ gnd vdd FILL
XFILL_5__3455_ gnd vdd FILL
XFILL_5__3035_ gnd vdd FILL
XFILL_1__3447_ gnd vdd FILL
XFILL_1__3027_ gnd vdd FILL
XFILL_4__1872_ gnd vdd FILL
XFILL_6__1798_ gnd vdd FILL
XFILL184050x148350 gnd vdd FILL
X_2097_ _1230_ _1232_ _1233_ vdd gnd NOR2X1
XFILL_0__1772_ gnd vdd FILL
XFILL_8__2757_ gnd vdd FILL
XFILL_8__2337_ gnd vdd FILL
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
XFILL_8__2090_ gnd vdd FILL
XFILL_1__1933_ gnd vdd FILL
XFILL_7__2900_ gnd vdd FILL
XFILL_3__1859_ gnd vdd FILL
XFILL_9__2826_ gnd vdd FILL
XFILL_3__2800_ gnd vdd FILL
XFILL_5__2726_ gnd vdd FILL
XFILL_5__2306_ gnd vdd FILL
XFILL_1__2718_ gnd vdd FILL
X_1788_ _939_ _937_ _940_ vdd gnd OR2X2
XFILL_4__3195_ gnd vdd FILL
XFILL_0__3095_ gnd vdd FILL
XFILL_4__1928_ gnd vdd FILL
XFILL_7__2497_ gnd vdd FILL
XFILL_7__2077_ gnd vdd FILL
XFILL_0__1828_ gnd vdd FILL
X_3514_ _1660_ alu_op[2] _1677_ _1600_ vdd gnd OAI21X1
XFILL_1__2891_ gnd vdd FILL
XFILL_1__2471_ gnd vdd FILL
XFILL_1__2051_ gnd vdd FILL
XFILL_3__2397_ gnd vdd FILL
XFILL_8__1781_ gnd vdd FILL
XFILL183450x150 gnd vdd FILL
XFILL184350x163950 gnd vdd FILL
XFILL_8__2986_ gnd vdd FILL
XFILL_8__2566_ gnd vdd FILL
XFILL_8__2146_ gnd vdd FILL
XFILL_2__2960_ gnd vdd FILL
XFILL_2__2540_ gnd vdd FILL
XFILL_2__2120_ gnd vdd FILL
XFILL_4__2886_ gnd vdd FILL
XFILL_4__2466_ gnd vdd FILL
XFILL_4__2046_ gnd vdd FILL
XFILL_0__2786_ gnd vdd FILL
XFILL_0__2366_ gnd vdd FILL
XFILL_7__1768_ gnd vdd FILL
XFILL_5__1750_ gnd vdd FILL
XFILL_1__1742_ gnd vdd FILL
XFILL_9__2635_ gnd vdd FILL
XFILL_5__2955_ gnd vdd FILL
XFILL_5__2535_ gnd vdd FILL
XFILL_5__2115_ gnd vdd FILL
XFILL_1__2947_ gnd vdd FILL
XFILL_1__2527_ gnd vdd FILL
XFILL_1__2107_ gnd vdd FILL
XFILL_8__1837_ gnd vdd FILL
XFILL_2__1811_ gnd vdd FILL
XFILL_4__1737_ gnd vdd FILL
XFILL_6__2604_ gnd vdd FILL
X_3323_ _77_ vdd _1__bF$buf9 clk_bF$buf10 _AXYS[1]_[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2280_ gnd vdd FILL
XFILL_7_BUFX2_insert10 gnd vdd FILL
XFILL_7_BUFX2_insert11 gnd vdd FILL
XFILL_7_BUFX2_insert12 gnd vdd FILL
XFILL_7_BUFX2_insert13 gnd vdd FILL
XFILL_7_BUFX2_insert14 gnd vdd FILL
XFILL_7_BUFX2_insert15 gnd vdd FILL
XFILL_7_BUFX2_insert16 gnd vdd FILL
XFILL_7_BUFX2_insert17 gnd vdd FILL
XFILL_5__3493_ gnd vdd FILL
XFILL_7_BUFX2_insert18 gnd vdd FILL
XFILL_5__3073_ gnd vdd FILL
XFILL_7_BUFX2_insert19 gnd vdd FILL
XFILL_1__3485_ gnd vdd FILL
XFILL_1__3065_ gnd vdd FILL
XFILL_5__1806_ gnd vdd FILL
XFILL_8__2795_ gnd vdd FILL
XFILL_8__2375_ gnd vdd FILL
XFILL_4__2695_ gnd vdd FILL
XFILL_4__2275_ gnd vdd FILL
XFILL_0__2595_ gnd vdd FILL
XFILL_6__3562_ gnd vdd FILL
XFILL_0__2175_ gnd vdd FILL
XFILL_6__3142_ gnd vdd FILL
XFILL_2__3554_ gnd vdd FILL
XFILL_2__3134_ gnd vdd FILL
XFILL_7__1997_ gnd vdd FILL
XFILL_1__1971_ gnd vdd FILL
XFILL_3__1897_ gnd vdd FILL
XFILL_5__2764_ gnd vdd FILL
XFILL_5__2344_ gnd vdd FILL
XFILL_1__2756_ gnd vdd FILL
XFILL_1__2336_ gnd vdd FILL
XFILL183750x7950 gnd vdd FILL
XFILL_3__3203_ gnd vdd FILL
XFILL_5__3549_ gnd vdd FILL
XFILL_5__3129_ gnd vdd FILL
XFILL_4__1966_ gnd vdd FILL
XFILL_0__1866_ gnd vdd FILL
XFILL_6__2833_ gnd vdd FILL
X_3552_ _1649__bF$buf0 _1569_ _1632_ _1491_ vdd gnd OAI21X1
XFILL_6__2413_ gnd vdd FILL
X_3132_ _AXYS[3]_[2] _767_ _770_ vdd gnd NAND2X1
XFILL_2__2825_ gnd vdd FILL
XFILL_2__2405_ gnd vdd FILL
XFILL_8__2184_ gnd vdd FILL
XFILL_4__2084_ gnd vdd FILL
XFILL_8__3389_ gnd vdd FILL
XFILL_6__3371_ gnd vdd FILL
X_2823_ _1314_ _1296_ _1298_ _525_ vdd gnd NAND3X1
X_2403_ ADD[3] _139_ _158_ _159_ vdd gnd AOI21X1
XFILL_1__1780_ gnd vdd FILL
XFILL_0__3189_ gnd vdd FILL
XFILL_5__2993_ gnd vdd FILL
XFILL_5__2573_ gnd vdd FILL
XFILL_5__2153_ gnd vdd FILL
XFILL_1__2985_ gnd vdd FILL
XFILL_1__2565_ gnd vdd FILL
XFILL_7__3532_ gnd vdd FILL
XFILL_1__2145_ gnd vdd FILL
XFILL_7__3112_ gnd vdd FILL
XFILL_9__3458_ gnd vdd FILL
XFILL_3__3432_ gnd vdd FILL
XFILL_3__3012_ gnd vdd FILL
XFILL_8__1875_ gnd vdd FILL
XFILL184650x101550 gnd vdd FILL
XFILL_4__1775_ gnd vdd FILL
XFILL_6__2642_ gnd vdd FILL
XFILL_6__2222_ gnd vdd FILL
X_3361_ _114_ vdd _1__bF$buf2 clk_bF$buf8 ABH[5] vdd 
+ gnd
+ DFFSR
XFILL_2__2634_ gnd vdd FILL
XFILL_2__2214_ gnd vdd FILL
XFILL_8__3601_ gnd vdd FILL
XFILL_4__3501_ gnd vdd FILL
XFILL_6__3427_ gnd vdd FILL
XFILL_6__3007_ gnd vdd FILL
XFILL_0__3401_ gnd vdd FILL
XFILL_2__3419_ gnd vdd FILL
XFILL_5__1844_ gnd vdd FILL
XFILL_1__1836_ gnd vdd FILL
XFILL_7__2803_ gnd vdd FILL
XFILL_3__2703_ gnd vdd FILL
XFILL_8_BUFX2_insert60 gnd vdd FILL
XFILL_8_BUFX2_insert61 gnd vdd FILL
XFILL_5__2629_ gnd vdd FILL
XFILL_8_BUFX2_insert62 gnd vdd FILL
XFILL_5__2209_ gnd vdd FILL
XFILL_8_BUFX2_insert63 gnd vdd FILL
XFILL_8_BUFX2_insert64 gnd vdd FILL
XFILL_8_BUFX2_insert65 gnd vdd FILL
XFILL_8_BUFX2_insert66 gnd vdd FILL
XFILL_8_BUFX2_insert67 gnd vdd FILL
XFILL_8_BUFX2_insert68 gnd vdd FILL
XFILL_8_BUFX2_insert69 gnd vdd FILL
XFILL_8__3198_ gnd vdd FILL
XFILL_6__3180_ gnd vdd FILL
XFILL_2__3592_ gnd vdd FILL
XFILL_2__3172_ gnd vdd FILL
XFILL_4__3098_ gnd vdd FILL
XFILL_6__1913_ gnd vdd FILL
X_2632_ _228_ _359_ _1051__bF$buf1 _360_ vdd gnd OAI21X1
X_2212_ _882__bF$buf1 _1032_ _1347_ vdd gnd NOR2X1
XFILL_2__1905_ gnd vdd FILL
XFILL_5__2382_ gnd vdd FILL
X_3417_ AI[4] _1500_ _1657_ _1503_ vdd gnd OAI21X1
XFILL_1__2794_ gnd vdd FILL
XFILL_1__2374_ gnd vdd FILL
XFILL181650x140550 gnd vdd FILL
XFILL_5__3587_ gnd vdd FILL
XFILL_5__3167_ gnd vdd FILL
XFILL_1__3579_ gnd vdd FILL
XFILL_1__3159_ gnd vdd FILL
XFILL_8__2889_ gnd vdd FILL
XFILL_6__2871_ gnd vdd FILL
X_3590_ _1685_[5] AB[5] vdd gnd BUFX2
XFILL_6__2451_ gnd vdd FILL
XFILL_8__2469_ gnd vdd FILL
XFILL_6__2031_ gnd vdd FILL
XFILL_8__2049_ gnd vdd FILL
X_3170_ _801_ _787_ _802_ vdd gnd NOR2X1
XFILL_2__2863_ gnd vdd FILL
XFILL_2__2443_ gnd vdd FILL
XFILL_2__2023_ gnd vdd FILL
XFILL_8__3410_ gnd vdd FILL
XFILL_4__2789_ gnd vdd FILL
XFILL_4__2369_ gnd vdd FILL
X_1903_ _1028_ _1046_ _1047_ vdd gnd NOR2X1
XFILL_0__2689_ gnd vdd FILL
XFILL_0__2269_ gnd vdd FILL
XFILL_0__3210_ gnd vdd FILL
XFILL_2__3228_ gnd vdd FILL
XFILL182850x105450 gnd vdd FILL
XFILL_7__2612_ gnd vdd FILL
XFILL_3__2932_ gnd vdd FILL
XFILL_3__2512_ gnd vdd FILL
XFILL_5__2858_ gnd vdd FILL
XFILL_5__2438_ gnd vdd FILL
XFILL_5__2018_ gnd vdd FILL
X_2861_ _124_ _1219__bF$buf1 _557_ _559_ _34_ vdd 
+ gnd
+ AOI22X1
XFILL_6__1722_ gnd vdd FILL
X_2441_ _191_ _1238_ _1363_ _192_ vdd gnd NAND3X1
X_2021_ IRHOLD_valid_bF$buf1 IRHOLD[7] _1157_ vdd gnd NAND2X1
XFILL_8_CLKBUF1_insert28 gnd vdd FILL
XFILL_8_CLKBUF1_insert29 gnd vdd FILL
XFILL_2__1714_ gnd vdd FILL
XFILL_5__2191_ gnd vdd FILL
XFILL_6__2927_ gnd vdd FILL
XFILL_6__2507_ gnd vdd FILL
X_3226_ _284_ _830__bF$buf2 _845_ _113_ vdd gnd OAI21X1
XFILL_1__2183_ gnd vdd FILL
XFILL_7__3150_ gnd vdd FILL
XFILL_9__3076_ gnd vdd FILL
XFILL_2__2919_ gnd vdd FILL
XFILL_0__2901_ gnd vdd FILL
XFILL_3__3470_ gnd vdd FILL
XFILL_3__3050_ gnd vdd FILL
XFILL_5__3396_ gnd vdd FILL
XFILL_1__3388_ gnd vdd FILL
XFILL_5__1709_ gnd vdd FILL
XFILL_6__2680_ gnd vdd FILL
XFILL_8__2698_ gnd vdd FILL
XFILL_6__2260_ gnd vdd FILL
XFILL_8__2278_ gnd vdd FILL
XFILL_2__2672_ gnd vdd FILL
XFILL_2__2252_ gnd vdd FILL
XFILL_4__2598_ gnd vdd FILL
XFILL_4__2178_ gnd vdd FILL
X_1712_ CO _865_ vdd gnd INVX1
XFILL_0__2498_ gnd vdd FILL
XFILL_6__3465_ gnd vdd FILL
XFILL_0__2078_ gnd vdd FILL
XFILL_6__3045_ gnd vdd FILL
XFILL_2__3457_ gnd vdd FILL
XFILL_2__3037_ gnd vdd FILL
XFILL_5__1882_ gnd vdd FILL
X_2917_ _1384_ _587_ _1438_ _601_ vdd gnd OAI21X1
XFILL_1__1874_ gnd vdd FILL
XFILL_7__2841_ gnd vdd FILL
XFILL_7__2421_ gnd vdd FILL
XFILL_7__2001_ gnd vdd FILL
XFILL_9__2767_ gnd vdd FILL
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
XFILL_8__1969_ gnd vdd FILL
XFILL_6__1951_ gnd vdd FILL
X_2670_ AN _321_ _393_ _394_ vdd gnd AOI21X1
X_2250_ _1383_ _1173_ _1384_ vdd gnd NAND2X1
XFILL_2__1943_ gnd vdd FILL
XFILL_8__2910_ gnd vdd FILL
XFILL_4__1869_ gnd vdd FILL
XFILL_4__2810_ gnd vdd FILL
XFILL_0__1769_ gnd vdd FILL
XFILL_6__2736_ gnd vdd FILL
X_3455_ BI[0] _1540_ _1652_ _1539_ _1541_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2316_ gnd vdd FILL
X_3035_ adj_bcd _310_ _698_ vdd gnd NAND2X1
XFILL_2__2728_ gnd vdd FILL
XFILL_0__2710_ gnd vdd FILL
XFILL_2__2308_ gnd vdd FILL
XFILL_1__3197_ gnd vdd FILL
XFILL_5__1938_ gnd vdd FILL
XFILL_8__2087_ gnd vdd FILL
XFILL_2__2481_ gnd vdd FILL
XFILL_2__2061_ gnd vdd FILL
X_1941_ _1079_ _1081_ _1080_ _1082_ vdd gnd NAND3X1
XFILL_5__1691_ gnd vdd FILL
X_2726_ _882__bF$buf3 _1259_ _320_ _446_ vdd gnd OAI21X1
X_2306_ _1381_ _1438_ _1386_ _1439_ vdd gnd NAND3X1
XFILL_7__2650_ gnd vdd FILL
XFILL_7__2230_ gnd vdd FILL
XFILL_9__2576_ gnd vdd FILL
XFILL_3__2970_ gnd vdd FILL
XFILL_3__2550_ gnd vdd FILL
XFILL_3__2130_ gnd vdd FILL
XFILL_5__2896_ gnd vdd FILL
XFILL_5__2476_ gnd vdd FILL
XFILL_5__2056_ gnd vdd FILL
XFILL_1__2888_ gnd vdd FILL
XFILL_1__2468_ gnd vdd FILL
XFILL_7__3435_ gnd vdd FILL
XFILL_1__2048_ gnd vdd FILL
XFILL_7__3015_ gnd vdd FILL
XFILL_6__1760_ gnd vdd FILL
XFILL_8__1778_ gnd vdd FILL
XFILL_2__1752_ gnd vdd FILL
XFILL_0__1998_ gnd vdd FILL
XFILL_6__2965_ gnd vdd FILL
XFILL_6__2545_ gnd vdd FILL
X_3264_ _26_ vdd _1__bF$buf6 clk_bF$buf5 cld vdd 
+ gnd
+ DFFSR
XFILL_6__2125_ gnd vdd FILL
XFILL_2__2957_ gnd vdd FILL
XFILL_2__2537_ gnd vdd FILL
XFILL_2__2117_ gnd vdd FILL
XFILL_8__3504_ gnd vdd FILL
XFILL_7__1921_ gnd vdd FILL
XFILL_4__3404_ gnd vdd FILL
XFILL_3__1821_ gnd vdd FILL
XFILL_5__1747_ gnd vdd FILL
XFILL_1__1739_ gnd vdd FILL
XFILL_7__2706_ gnd vdd FILL
XFILL_2__2290_ gnd vdd FILL
XFILL_3__2606_ gnd vdd FILL
X_1750_ _902_ _895_ _903_ vdd gnd NOR2X1
XFILL_6__3083_ gnd vdd FILL
XFILL_2__3495_ gnd vdd FILL
XFILL_2__3075_ gnd vdd FILL
X_2955_ reset _618_ IRHOLD[7] _628_ vdd gnd OAI21X1
XFILL_6__1816_ gnd vdd FILL
X_2535_ _225_ DIMUX[2] _275_ _276_ vdd gnd AOI21X1
X_2115_ _1250_ _1190_ RDY_bF$buf6 _1251_ vdd gnd OAI21X1
XFILL_2__1808_ gnd vdd FILL
XFILL_5__2285_ gnd vdd FILL
XFILL_1__2697_ gnd vdd FILL
XFILL_1__2277_ gnd vdd FILL
XFILL_3__3564_ gnd vdd FILL
XFILL_3__3144_ gnd vdd FILL
XFILL_2__1981_ gnd vdd FILL
XFILL_6__2774_ gnd vdd FILL
X_3493_ _1535_ _1537_ _1538_ _1579_ vdd gnd OAI21X1
XFILL_6__2354_ gnd vdd FILL
X_3073_ DIMUX[5] _1281_ _731_ _729_ _732_ vdd 
+ gnd
+ AOI22X1
XFILL_2__2766_ gnd vdd FILL
XFILL_2__2346_ gnd vdd FILL
X_1806_ _950_ _957_ _958_ vdd gnd NOR2X1
XFILL_7__1730_ gnd vdd FILL
XFILL_4__3213_ gnd vdd FILL
XFILL_6__3559_ gnd vdd FILL
XFILL_6__3139_ gnd vdd FILL
XFILL_0__3533_ gnd vdd FILL
XFILL_0__3113_ gnd vdd FILL
XFILL_5__1976_ gnd vdd FILL
XFILL_1__1968_ gnd vdd FILL
XFILL_7__2935_ gnd vdd FILL
XFILL_7__2515_ gnd vdd FILL
XFILL_3__2835_ gnd vdd FILL
XFILL_3__2415_ gnd vdd FILL
X_2764_ _474_ _480_ _460_ _481_ vdd gnd NAND3X1
X_2344_ _1421_ _1255_ _1474_ _1475_ vdd gnd NAND3X1
XFILL_5__2094_ gnd vdd FILL
XFILL_4__2904_ gnd vdd FILL
XFILL181650x117150 gnd vdd FILL
X_3549_ ADD[2] _1649__bF$buf2 _1631_ vdd gnd NAND2X1
X_3129_ _695_ _767_ _768_ _93_ vdd gnd OAI21X1
XFILL_7__3473_ gnd vdd FILL
XFILL_1__2086_ gnd vdd FILL
XFILL_7__3053_ gnd vdd FILL
XFILL_9__3399_ gnd vdd FILL
XFILL_0__2804_ gnd vdd FILL
XFILL_3__3373_ gnd vdd FILL
XFILL_2__1790_ gnd vdd FILL
XFILL_6__2583_ gnd vdd FILL
XFILL_6__2163_ gnd vdd FILL
XFILL_2__2995_ gnd vdd FILL
XFILL_2__2575_ gnd vdd FILL
XFILL_8__3542_ gnd vdd FILL
XFILL_2__2155_ gnd vdd FILL
XFILL_8__3122_ gnd vdd FILL
XFILL_4__3442_ gnd vdd FILL
XFILL_4__3022_ gnd vdd FILL
XFILL_6__3368_ gnd vdd FILL
XFILL_5__1785_ gnd vdd FILL
XFILL_1__1777_ gnd vdd FILL
XFILL_7__2744_ gnd vdd FILL
XFILL_7__2324_ gnd vdd FILL
XFILL_3__2644_ gnd vdd FILL
XFILL_3__2224_ gnd vdd FILL
XFILL_5__3511_ gnd vdd FILL
XFILL_7__3529_ gnd vdd FILL
XFILL_7__3109_ gnd vdd FILL
XFILL_1__3503_ gnd vdd FILL
XFILL_3__3429_ gnd vdd FILL
XFILL_3__3009_ gnd vdd FILL
X_2993_ _864_ _1008_ _660_ _661_ vdd gnd OAI21X1
XFILL_6__1854_ gnd vdd FILL
X_2573_ _308_ _309_ vdd gnd INVX1
X_2153_ _853__bF$buf2 _894_ _1288_ _1289_ vdd gnd OAI21X1
XFILL_2__1846_ gnd vdd FILL
XFILL_8__2813_ gnd vdd FILL
XFILL_4__2713_ gnd vdd FILL
XFILL_6__2639_ gnd vdd FILL
XFILL_6__2219_ gnd vdd FILL
X_3358_ _111_ vdd _1__bF$buf2 clk_bF$buf7 ABH[2] vdd 
+ gnd
+ DFFSR
XFILL_0__2613_ gnd vdd FILL
XFILL_3__3182_ gnd vdd FILL
XFILL_3__1915_ gnd vdd FILL
XFILL_6__2392_ gnd vdd FILL
XFILL_2__2384_ gnd vdd FILL
X_1844_ _879_ _914_ _988_ vdd gnd NAND2X1
XFILL_6__3597_ gnd vdd FILL
XFILL_6__3177_ gnd vdd FILL
XFILL_2__3589_ gnd vdd FILL
XFILL_2__3169_ gnd vdd FILL
XFILL_0__3151_ gnd vdd FILL
XFILL_7_CLKBUF1_insert30 gnd vdd FILL
XFILL_7_CLKBUF1_insert31 gnd vdd FILL
XFILL_7_CLKBUF1_insert32 gnd vdd FILL
XFILL_7_CLKBUF1_insert33 gnd vdd FILL
XFILL_7_CLKBUF1_insert34 gnd vdd FILL
XFILL_7_CLKBUF1_insert35 gnd vdd FILL
XFILL_7_CLKBUF1_insert36 gnd vdd FILL
XFILL_7_CLKBUF1_insert37 gnd vdd FILL
XFILL_7_CLKBUF1_insert38 gnd vdd FILL
X_2629_ _853__bF$buf5 _357_ _351_ _4_ vdd gnd OAI21X1
X_2209_ _1334_ _1343_ _1344_ vdd gnd NOR2X1
XFILL_7__2973_ gnd vdd FILL
XFILL_7__2553_ gnd vdd FILL
XFILL_7__2133_ gnd vdd FILL
XFILL_3__2873_ gnd vdd FILL
XFILL_3__2453_ gnd vdd FILL
XFILL_3__2033_ gnd vdd FILL
XFILL_5__2799_ gnd vdd FILL
XFILL_5__2379_ gnd vdd FILL
X_2382_ _140_ _138_ _1051__bF$buf3 _141_ vdd gnd OAI21X1
XFILL_8__2622_ gnd vdd FILL
XFILL_8__2202_ gnd vdd FILL
XFILL_4__2942_ gnd vdd FILL
XFILL_4__2522_ gnd vdd FILL
XFILL_4__2102_ gnd vdd FILL
XFILL_6__2868_ gnd vdd FILL
X_3587_ _1685_[2] AB[2] vdd gnd BUFX2
XFILL_6__2448_ gnd vdd FILL
XFILL_6__2028_ gnd vdd FILL
X_3167_ _797_ _315_ _798_ _799_ vdd gnd NAND3X1
XFILL_7__3091_ gnd vdd FILL
XFILL_0__2842_ gnd vdd FILL
XFILL_0__2422_ gnd vdd FILL
XFILL_0__2002_ gnd vdd FILL
XFILL_8__3407_ gnd vdd FILL
XFILL_7__1824_ gnd vdd FILL
XFILL_3__1724_ gnd vdd FILL
XFILL_0__3207_ gnd vdd FILL
XFILL_7__2609_ gnd vdd FILL
XFILL_8__3580_ gnd vdd FILL
XFILL_2__2193_ gnd vdd FILL
XFILL_8__3160_ gnd vdd FILL
XFILL184650x175650 gnd vdd FILL
XFILL_3__2929_ gnd vdd FILL
XFILL_3__2509_ gnd vdd FILL
XFILL_4__3480_ gnd vdd FILL
XFILL_4__3060_ gnd vdd FILL
XFILL_0__3380_ gnd vdd FILL
XFILL_2__3398_ gnd vdd FILL
X_2858_ _545_ _556_ _557_ vdd gnd NOR2X1
XFILL_6__1719_ gnd vdd FILL
X_2438_ _1240_ _188_ _189_ vdd gnd NOR2X1
X_2018_ IRHOLD_valid_bF$buf0 _861_ _1153_ _1154_ vdd gnd OAI21X1
XFILL_7__2782_ gnd vdd FILL
XFILL_7__2362_ gnd vdd FILL
XFILL_3__2682_ gnd vdd FILL
XFILL_3__2262_ gnd vdd FILL
XFILL_5__2188_ gnd vdd FILL
XFILL_7__3147_ gnd vdd FILL
XFILL_1__3541_ gnd vdd FILL
XFILL_1__3121_ gnd vdd FILL
XFILL_3__3467_ gnd vdd FILL
XFILL_3__3047_ gnd vdd FILL
XFILL_6__1892_ gnd vdd FILL
X_2191_ _1254_ _1326_ vdd gnd INVX1
XFILL_2__1884_ gnd vdd FILL
XFILL_8__2851_ gnd vdd FILL
XFILL_8__2431_ gnd vdd FILL
XFILL_8__2011_ gnd vdd FILL
XFILL_4__2751_ gnd vdd FILL
XFILL_4__2331_ gnd vdd FILL
XFILL_6__2677_ gnd vdd FILL
XFILL_6__2257_ gnd vdd FILL
X_3396_ AI[6] _1669_ _1670_ vdd gnd NAND2X1
XFILL_0__2651_ gnd vdd FILL
XFILL_2__2669_ gnd vdd FILL
XFILL_2__2249_ gnd vdd FILL
XFILL_0__2231_ gnd vdd FILL
XFILL_8__3216_ gnd vdd FILL
X_1709_ _863_ DIMUX[6] vdd gnd INVX1
XFILL_4__3536_ gnd vdd FILL
XFILL_4__3116_ gnd vdd FILL
XFILL_3__1953_ gnd vdd FILL
XFILL_0__3436_ gnd vdd FILL
XFILL_0__3016_ gnd vdd FILL
XFILL_5__1879_ gnd vdd FILL
XFILL_5__2820_ gnd vdd FILL
XFILL_7__2838_ gnd vdd FILL
XFILL_5__2400_ gnd vdd FILL
XFILL_7__2418_ gnd vdd FILL
XFILL_1__2812_ gnd vdd FILL
XFILL_3__2738_ gnd vdd FILL
XFILL_3__2318_ gnd vdd FILL
X_1882_ _1025_ _1026_ vdd gnd INVX1
XFILL_8__1702_ gnd vdd FILL
XFILL_6__1948_ gnd vdd FILL
X_2667_ RDY_bF$buf4 _391_ _392_ vdd gnd NAND2X1
X_2247_ _1220_ _1351_ _1381_ vdd gnd NAND2X1
XFILL_7__2591_ gnd vdd FILL
XFILL_7__2171_ gnd vdd FILL
XFILL_0__1922_ gnd vdd FILL
XFILL_8__2907_ gnd vdd FILL
XFILL_3__2491_ gnd vdd FILL
XFILL_3__2071_ gnd vdd FILL
XFILL_4__2807_ gnd vdd FILL
XFILL_7__3376_ gnd vdd FILL
XFILL_0__2707_ gnd vdd FILL
XFILL_2__1693_ gnd vdd FILL
XFILL_8__2660_ gnd vdd FILL
XFILL_8__2240_ gnd vdd FILL
XFILL_4__2980_ gnd vdd FILL
XFILL_4__2560_ gnd vdd FILL
XFILL_4__2140_ gnd vdd FILL
XFILL_6__2486_ gnd vdd FILL
XFILL_6__2066_ gnd vdd FILL
XFILL_0__2880_ gnd vdd FILL
XFILL_2__2898_ gnd vdd FILL
XFILL_0__2460_ gnd vdd FILL
XFILL_2__2478_ gnd vdd FILL
XFILL_0__2040_ gnd vdd FILL
XFILL_8__3445_ gnd vdd FILL
XFILL_2__2058_ gnd vdd FILL
XFILL_8__3025_ gnd vdd FILL
X_1938_ _AXYS[1]_[3] _1022_ _1079_ vdd gnd NAND2X1
XFILL_7__1862_ gnd vdd FILL
XFILL_3__1762_ gnd vdd FILL
XFILL_5__1688_ gnd vdd FILL
XFILL_7__2647_ gnd vdd FILL
XFILL_7__2227_ gnd vdd FILL
XFILL_1__2621_ gnd vdd FILL
XFILL_1__2201_ gnd vdd FILL
XFILL_3__2967_ gnd vdd FILL
XFILL_3__2547_ gnd vdd FILL
XFILL_3__2127_ gnd vdd FILL
X_1691_ DIHOLD[1] _851_ vdd gnd INVX1
XFILL_8__1931_ gnd vdd FILL
XFILL_5__3414_ gnd vdd FILL
XFILL_1__3406_ gnd vdd FILL
XFILL_4__1831_ gnd vdd FILL
X_2896_ _1168_ _1330_ _1176_ _583_ vdd gnd OAI21X1
XFILL_6__1757_ gnd vdd FILL
X_2476_ _190_ _224_ vdd gnd INVX1
X_2056_ _1191_ _1192_ vdd gnd INVX1
XFILL_0__1731_ gnd vdd FILL
XFILL_2__1749_ gnd vdd FILL
XFILL_8__2716_ gnd vdd FILL
XFILL_4__2616_ gnd vdd FILL
XFILL_7__3185_ gnd vdd FILL
XFILL_0__2936_ gnd vdd FILL
XFILL_0__2516_ gnd vdd FILL
XFILL_3__3085_ gnd vdd FILL
XFILL_7__1918_ gnd vdd FILL
XFILL_5__1900_ gnd vdd FILL
XFILL_3__1818_ gnd vdd FILL
XFILL_6__2295_ gnd vdd FILL
XFILL_2__2287_ gnd vdd FILL
X_1747_ _867_ _899_ _900_ vdd gnd NOR2X1
XFILL_4__3154_ gnd vdd FILL
XFILL_3__1991_ gnd vdd FILL
XFILL_0__3474_ gnd vdd FILL
XFILL_0__3054_ gnd vdd FILL
XFILL_7__2876_ gnd vdd FILL
XFILL_7__2456_ gnd vdd FILL
XFILL_7__2036_ gnd vdd FILL
XFILL_1__2850_ gnd vdd FILL
XFILL_1__2430_ gnd vdd FILL
XFILL_1__2010_ gnd vdd FILL
XFILL_3__2776_ gnd vdd FILL
XFILL_3__2356_ gnd vdd FILL
XFILL_8__1740_ gnd vdd FILL
XFILL_5__3223_ gnd vdd FILL
XFILL_1__3215_ gnd vdd FILL
XFILL_6__1986_ gnd vdd FILL
X_2285_ _1418_ _1271_ _1419_ vdd gnd AND2X2
XFILL_2__1978_ gnd vdd FILL
XFILL_0__1960_ gnd vdd FILL
XFILL_8__2945_ gnd vdd FILL
XFILL_8__2525_ gnd vdd FILL
XFILL_8__2105_ gnd vdd FILL
XFILL_4__2845_ gnd vdd FILL
XFILL_4__2425_ gnd vdd FILL
XFILL_3_BUFX2_insert39 gnd vdd FILL
XFILL_4__2005_ gnd vdd FILL
XFILL_0__2745_ gnd vdd FILL
XFILL_0__2325_ gnd vdd FILL
XFILL_7__1727_ gnd vdd FILL
XFILL_1__1701_ gnd vdd FILL
XFILL_5__2914_ gnd vdd FILL
XFILL_8__3483_ gnd vdd FILL
XFILL_2__2096_ gnd vdd FILL
XFILL_8__3063_ gnd vdd FILL
XFILL_1__2906_ gnd vdd FILL
X_1976_ _AXYS[1]_[7] _1022_ _1113_ vdd gnd NAND2X1
XFILL_4__3383_ gnd vdd FILL
XFILL_7__2685_ gnd vdd FILL
XFILL_7__2265_ gnd vdd FILL
XFILL_3__2585_ gnd vdd FILL
XFILL_3__2165_ gnd vdd FILL
XFILL_5__3452_ gnd vdd FILL
XFILL_5__3032_ gnd vdd FILL
XFILL_1__3444_ gnd vdd FILL
XFILL_1__3024_ gnd vdd FILL
XFILL_6__1795_ gnd vdd FILL
X_2094_ _853__bF$buf3 _1227_ _1229_ _1230_ vdd gnd OAI21X1
XFILL_2__1787_ gnd vdd FILL
XFILL_8__2754_ gnd vdd FILL
XFILL_8__2334_ gnd vdd FILL
XFILL_4__2654_ gnd vdd FILL
XFILL_4__2234_ gnd vdd FILL
X_3299_ _53_ clk_bF$buf0 IRHOLD[0] vdd gnd DFFPOSX1
XFILL_0__2974_ gnd vdd FILL
XFILL_0__2554_ gnd vdd FILL
XFILL_6__3521_ gnd vdd FILL
XFILL_8__3539_ gnd vdd FILL
XFILL_0__2134_ gnd vdd FILL
XFILL_8__3119_ gnd vdd FILL
XFILL_6__3101_ gnd vdd FILL
XFILL_2__3513_ gnd vdd FILL
XFILL_7__1956_ gnd vdd FILL
XFILL_4__3439_ gnd vdd FILL
XFILL_4__3019_ gnd vdd FILL
XFILL_1__1930_ gnd vdd FILL
XFILL_3__1856_ gnd vdd FILL
XFILL_5__2723_ gnd vdd FILL
XFILL_5__2303_ gnd vdd FILL
XFILL_1__2715_ gnd vdd FILL
X_1785_ _918__bF$buf1 _936_ _934_ _937_ vdd gnd OAI21X1
XFILL_4__3192_ gnd vdd FILL
XFILL_5__3508_ gnd vdd FILL
XFILL_0__3092_ gnd vdd FILL
XFILL_4__1925_ gnd vdd FILL
XFILL_7__2494_ gnd vdd FILL
XFILL_7__2074_ gnd vdd FILL
XFILL_0__1825_ gnd vdd FILL
X_3511_ _1683_ _1596_ _1498_ _1597_ vdd gnd OAI21X1
XFILL_3__2394_ gnd vdd FILL
XFILL_3__3599_ gnd vdd FILL
XFILL_3__3179_ gnd vdd FILL
XFILL_8__2983_ gnd vdd FILL
XFILL_8__2563_ gnd vdd FILL
XFILL_8__2143_ gnd vdd FILL
XFILL_4__2883_ gnd vdd FILL
XFILL_4__2463_ gnd vdd FILL
XFILL_4__2043_ gnd vdd FILL
XFILL_6__2389_ gnd vdd FILL
XFILL_0__2783_ gnd vdd FILL
XFILL_0__2363_ gnd vdd FILL
XFILL_7__1765_ gnd vdd FILL
XFILL_0__3148_ gnd vdd FILL
XFILL_4_BUFX2_insert80 gnd vdd FILL
XFILL_4_BUFX2_insert81 gnd vdd FILL
XFILL_4_BUFX2_insert82 gnd vdd FILL
XFILL_4_BUFX2_insert83 gnd vdd FILL
XFILL_4_BUFX2_insert84 gnd vdd FILL
XFILL_4_BUFX2_insert85 gnd vdd FILL
XFILL_4_BUFX2_insert86 gnd vdd FILL
XFILL_4_BUFX2_insert87 gnd vdd FILL
XFILL_4_BUFX2_insert88 gnd vdd FILL
XFILL_5__2952_ gnd vdd FILL
XFILL_4_BUFX2_insert89 gnd vdd FILL
XFILL_5__2532_ gnd vdd FILL
XFILL_5__2112_ gnd vdd FILL
XFILL_1__2944_ gnd vdd FILL
XFILL_1__2524_ gnd vdd FILL
XFILL_1__2104_ gnd vdd FILL
XFILL_8__1834_ gnd vdd FILL
XFILL_4__1734_ gnd vdd FILL
X_2799_ _506_ _507_ _505_ _24_ vdd gnd OAI21X1
X_2379_ _886__bF$buf3 _927_ _138_ vdd gnd NAND2X1
XFILL_8__2619_ gnd vdd FILL
XFILL_6__2601_ gnd vdd FILL
X_3320_ _74_ vdd _1__bF$buf1 clk_bF$buf3 _AXYS[0]_[5] vdd 
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
XFILL_8__2792_ gnd vdd FILL
XFILL_8__2372_ gnd vdd FILL
XFILL_4__2692_ gnd vdd FILL
XFILL_4__2272_ gnd vdd FILL
XFILL_6__2198_ gnd vdd FILL
XFILL_0__2592_ gnd vdd FILL
XFILL_0__2172_ gnd vdd FILL
XFILL_8__3157_ gnd vdd FILL
XFILL_2__3551_ gnd vdd FILL
XFILL_2__3131_ gnd vdd FILL
XFILL_7__1994_ gnd vdd FILL
XFILL_4__3477_ gnd vdd FILL
XFILL_4__3057_ gnd vdd FILL
XFILL_3__1894_ gnd vdd FILL
XFILL_0__3377_ gnd vdd FILL
XFILL_5__2761_ gnd vdd FILL
XFILL_7__2779_ gnd vdd FILL
XFILL_7__2359_ gnd vdd FILL
XFILL_5__2341_ gnd vdd FILL
XFILL_1__2753_ gnd vdd FILL
XFILL_1__2333_ gnd vdd FILL
XFILL_3__2679_ gnd vdd FILL
XFILL_3__2259_ gnd vdd FILL
XFILL_3__3200_ gnd vdd FILL
XFILL_5__3546_ gnd vdd FILL
XFILL_5__3126_ gnd vdd FILL
XFILL_1__3538_ gnd vdd FILL
XFILL_1__3118_ gnd vdd FILL
XFILL_4__1963_ gnd vdd FILL
XFILL_6__1889_ gnd vdd FILL
X_2188_ _1139_ _1172_ _1323_ vdd gnd NOR2X1
XFILL_0__1863_ gnd vdd FILL
XFILL_8__2848_ gnd vdd FILL
XFILL_6__2830_ gnd vdd FILL
XFILL_8__2428_ gnd vdd FILL
XFILL_6__2410_ gnd vdd FILL
XFILL_8__2008_ gnd vdd FILL
XFILL_2__2822_ gnd vdd FILL
XFILL_2__2402_ gnd vdd FILL
XFILL_4__2748_ gnd vdd FILL
XFILL_4__2328_ gnd vdd FILL
XFILL_0__2648_ gnd vdd FILL
XFILL_0__2228_ gnd vdd FILL
XFILL_8__2181_ gnd vdd FILL
XFILL_4__2081_ gnd vdd FILL
XFILL_5__2817_ gnd vdd FILL
XFILL_8__3386_ gnd vdd FILL
XFILL_1__2809_ gnd vdd FILL
X_1879_ _1018_ _1019_ _1004_ _1023_ vdd gnd AOI21X1
X_2820_ _522_ _523_ vdd gnd INVX1
X_2400_ _1036_ _1281_ PC[11] _156_ vdd gnd OAI21X1
XFILL_0__3186_ gnd vdd FILL
XFILL_5__2990_ gnd vdd FILL
XFILL_5__2570_ gnd vdd FILL
XFILL_7__2588_ gnd vdd FILL
XFILL_7__2168_ gnd vdd FILL
XFILL_5__2150_ gnd vdd FILL
XFILL_0__1919_ gnd vdd FILL
XFILL_1__2982_ gnd vdd FILL
XFILL_1__2562_ gnd vdd FILL
XFILL_1__2142_ gnd vdd FILL
XFILL_3__2488_ gnd vdd FILL
XFILL_3__2068_ gnd vdd FILL
XFILL_8__1872_ gnd vdd FILL
XFILL_4__1772_ gnd vdd FILL
XFILL_6__1698_ gnd vdd FILL
XFILL_8__2657_ gnd vdd FILL
XFILL_8__2237_ gnd vdd FILL
XFILL_2__2631_ gnd vdd FILL
XFILL_2__2211_ gnd vdd FILL
XFILL_4__2977_ gnd vdd FILL
XFILL_4__2557_ gnd vdd FILL
XFILL_4__2137_ gnd vdd FILL
XFILL_0__2877_ gnd vdd FILL
XFILL_0__2457_ gnd vdd FILL
XFILL_0__2037_ gnd vdd FILL
XFILL_6__3424_ gnd vdd FILL
XFILL_6__3004_ gnd vdd FILL
XFILL_2__3416_ gnd vdd FILL
XFILL_7__1859_ gnd vdd FILL
XFILL_5__1841_ gnd vdd FILL
XFILL_1__1833_ gnd vdd FILL
XFILL184650x163950 gnd vdd FILL
XFILL_7__2800_ gnd vdd FILL
XFILL_3__1759_ gnd vdd FILL
XFILL_3__2700_ gnd vdd FILL
XFILL_5__2626_ gnd vdd FILL
XFILL_5__2206_ gnd vdd FILL
XFILL_8_BUFX2_insert39 gnd vdd FILL
XFILL_8__3195_ gnd vdd FILL
XFILL_1__2618_ gnd vdd FILL
X_1688_ DIHOLD[0] _849_ vdd gnd INVX1
XFILL_4__3095_ gnd vdd FILL
XFILL_8__1928_ gnd vdd FILL
XFILL_6__1910_ gnd vdd FILL
XFILL_2__1902_ gnd vdd FILL
XFILL_4__1828_ gnd vdd FILL
XFILL_7__2397_ gnd vdd FILL
XFILL_0__1728_ gnd vdd FILL
X_3414_ _1653_ BI[4] _1500_ vdd gnd AND2X2
XFILL_1__2791_ gnd vdd FILL
XFILL_1__2371_ gnd vdd FILL
XFILL_3__2297_ gnd vdd FILL
XFILL_5__3584_ gnd vdd FILL
XFILL_5__3164_ gnd vdd FILL
XFILL_1__3156_ gnd vdd FILL
XFILL_8__2886_ gnd vdd FILL
XFILL_8__2466_ gnd vdd FILL
XFILL_8__2046_ gnd vdd FILL
XFILL_2__2860_ gnd vdd FILL
XFILL_2__2440_ gnd vdd FILL
XFILL_2__2020_ gnd vdd FILL
XFILL_4__2786_ gnd vdd FILL
XFILL_4__2366_ gnd vdd FILL
X_1900_ _887__bF$buf2 _936_ _1044_ vdd gnd NOR2X1
XFILL_0__2686_ gnd vdd FILL
XFILL_0__2266_ gnd vdd FILL
XFILL_2__3225_ gnd vdd FILL
XFILL_3__1988_ gnd vdd FILL
XFILL_5__2855_ gnd vdd FILL
XFILL_5__2435_ gnd vdd FILL
XFILL_5__2015_ gnd vdd FILL
XFILL_1__2847_ gnd vdd FILL
XFILL_1__2427_ gnd vdd FILL
XFILL_1__2007_ gnd vdd FILL
XFILL_8__1737_ gnd vdd FILL
XFILL_2__1711_ gnd vdd FILL
XFILL_0__1957_ gnd vdd FILL
XFILL_6__2924_ gnd vdd FILL
XFILL_6__2504_ gnd vdd FILL
X_3223_ _1685_[11] _830__bF$buf0 _844_ vdd gnd NAND2X1
XFILL_1__2180_ gnd vdd FILL
XFILL_2__2916_ gnd vdd FILL
XFILL_5__3393_ gnd vdd FILL
XFILL_1__3385_ gnd vdd FILL
XFILL_5__1706_ gnd vdd FILL
XFILL_8__2695_ gnd vdd FILL
XFILL_8__2275_ gnd vdd FILL
XFILL_4__2595_ gnd vdd FILL
XFILL_4__2175_ gnd vdd FILL
XFILL_0__2495_ gnd vdd FILL
XFILL_6__3462_ gnd vdd FILL
XFILL_0__2075_ gnd vdd FILL
XFILL_6__3042_ gnd vdd FILL
XFILL_2__3454_ gnd vdd FILL
XFILL_2__3034_ gnd vdd FILL
XFILL_7__1897_ gnd vdd FILL
X_2914_ dst_reg[0] _598_ vdd gnd INVX1
XFILL181050x74250 gnd vdd FILL
XFILL_1__1871_ gnd vdd FILL
XFILL_3__1797_ gnd vdd FILL
XFILL_5__2664_ gnd vdd FILL
XFILL_5__2244_ gnd vdd FILL
XFILL_1__2656_ gnd vdd FILL
XFILL_1__2236_ gnd vdd FILL
XFILL_7__3203_ gnd vdd FILL
XFILL_3__3523_ gnd vdd FILL
XFILL_3__3103_ gnd vdd FILL
XFILL_8__1966_ gnd vdd FILL
XFILL_5__3449_ gnd vdd FILL
XFILL_5__3029_ gnd vdd FILL
XFILL_2__1940_ gnd vdd FILL
XFILL_4__1866_ gnd vdd FILL
XFILL_0__1766_ gnd vdd FILL
XFILL_6__2733_ gnd vdd FILL
X_3452_ _1663_ _1537_ _1535_ _1538_ vdd gnd OAI21X1
XFILL_6__2313_ gnd vdd FILL
X_3032_ _AXYS[0]_[0] _693_ _696_ vdd gnd NAND2X1
XFILL_2__2725_ gnd vdd FILL
XFILL_2__2305_ gnd vdd FILL
XFILL_6__3518_ gnd vdd FILL
XFILL_1__3194_ gnd vdd FILL
XFILL_5__1935_ gnd vdd FILL
XFILL_8__2084_ gnd vdd FILL
XFILL_1__1927_ gnd vdd FILL
XFILL_4__3189_ gnd vdd FILL
X_2723_ _853__bF$buf5 _443_ _433_ _12_ vdd gnd OAI21X1
X_2303_ _1429_ _1435_ _1436_ vdd gnd NOR2X1
XFILL_0__3089_ gnd vdd FILL
XFILL_5__2893_ gnd vdd FILL
XFILL_5__2473_ gnd vdd FILL
XFILL_5__2053_ gnd vdd FILL
X_3508_ _1504_ _1506_ _1588_ _1593_ _1594_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2885_ gnd vdd FILL
XFILL_1__2465_ gnd vdd FILL
XFILL_7__3432_ gnd vdd FILL
XFILL_1__2045_ gnd vdd FILL
XFILL_7__3012_ gnd vdd FILL
XFILL_8__1775_ gnd vdd FILL
XFILL_0__1995_ gnd vdd FILL
XFILL_6__2962_ gnd vdd FILL
XFILL_6__2542_ gnd vdd FILL
X_3261_ _23_ vdd _1__bF$buf10 clk_bF$buf5 php vdd 
+ gnd
+ DFFSR
XFILL_6__2122_ gnd vdd FILL
XFILL_2__2954_ gnd vdd FILL
XFILL_2__2534_ gnd vdd FILL
XFILL_8__3501_ gnd vdd FILL
XFILL_2__2114_ gnd vdd FILL
XFILL181950x140550 gnd vdd FILL
XFILL_4__3401_ gnd vdd FILL
XFILL_5__1744_ gnd vdd FILL
XFILL_1__1736_ gnd vdd FILL
XFILL_7__2703_ gnd vdd FILL
XFILL_3__2603_ gnd vdd FILL
XFILL_5__2949_ gnd vdd FILL
XFILL_5__2529_ gnd vdd FILL
XFILL_5__2109_ gnd vdd FILL
XFILL_6__3080_ gnd vdd FILL
XFILL_8__3098_ gnd vdd FILL
XFILL_2__3492_ gnd vdd FILL
XFILL_2__3072_ gnd vdd FILL
X_2952_ _861_ _620_ _626_ _58_ vdd gnd OAI21X1
XFILL_6__1813_ gnd vdd FILL
X_2532_ ABH[2] _273_ vdd gnd INVX1
X_2112_ _1247_ _1234_ _1248_ vdd gnd AND2X2
XFILL_2__1805_ gnd vdd FILL
XFILL_5__2282_ gnd vdd FILL
X_3317_ _71_ vdd _1__bF$buf4 clk_bF$buf4 _AXYS[0]_[2] vdd 
+ gnd
+ DFFSR
XFILL_1__2694_ gnd vdd FILL
XFILL_1__2274_ gnd vdd FILL
XFILL_9__3587_ gnd vdd FILL
XFILL_3__3561_ gnd vdd FILL
XFILL_3__3141_ gnd vdd FILL
XFILL_5__3487_ gnd vdd FILL
XFILL_5__3067_ gnd vdd FILL
XFILL_1__3479_ gnd vdd FILL
XFILL_1__3059_ gnd vdd FILL
XFILL_8__2789_ gnd vdd FILL
XFILL_6__2771_ gnd vdd FILL
X_3490_ _1660_ alu_op[2] _1575_ _1576_ vdd gnd OAI21X1
XFILL_6__2351_ gnd vdd FILL
XFILL_8__2369_ gnd vdd FILL
X_3070_ _293_ _728_ _729_ vdd gnd NAND2X1
XFILL_2__2763_ gnd vdd FILL
XFILL_2__2343_ gnd vdd FILL
XFILL_4__2689_ gnd vdd FILL
XFILL_4__2269_ gnd vdd FILL
X_1803_ _892_ _909_ _955_ vdd gnd NOR2X1
XFILL_4__3210_ gnd vdd FILL
XFILL_0__2589_ gnd vdd FILL
XFILL_0__2169_ gnd vdd FILL
XFILL_6__3556_ gnd vdd FILL
XFILL_6__3136_ gnd vdd FILL
XFILL_2__3548_ gnd vdd FILL
XFILL_0__3530_ gnd vdd FILL
XFILL_0__3110_ gnd vdd FILL
XFILL_2__3128_ gnd vdd FILL
XFILL_5__1973_ gnd vdd FILL
XFILL_1__1965_ gnd vdd FILL
XFILL_7__2932_ gnd vdd FILL
XFILL_7__2512_ gnd vdd FILL
XFILL_3__2832_ gnd vdd FILL
XFILL_3__2412_ gnd vdd FILL
XFILL_5__2758_ gnd vdd FILL
XFILL_5__2338_ gnd vdd FILL
X_2761_ ADD[6] _325_ _338_ ABH[6] _478_ vdd 
+ gnd
+ AOI22X1
X_2341_ _853__bF$buf2 _1471_ _1376_ _1472_ vdd gnd OAI21X1
XFILL_5__2091_ gnd vdd FILL
XFILL_4__2901_ gnd vdd FILL
XFILL_6__2827_ gnd vdd FILL
X_3546_ _1627_ _1629_ _1626_ _1488_ vdd gnd OAI21X1
XFILL_6__2407_ gnd vdd FILL
X_3126_ _745_ _757_ _766_ _92_ vdd gnd OAI21X1
XFILL_1__2083_ gnd vdd FILL
XFILL_7__3470_ gnd vdd FILL
XFILL_7__3050_ gnd vdd FILL
XFILL_2__2819_ gnd vdd FILL
XFILL_0__2801_ gnd vdd FILL
XFILL_3__3370_ gnd vdd FILL
XFILL_6__2580_ gnd vdd FILL
XFILL_8__2598_ gnd vdd FILL
XFILL_6__2160_ gnd vdd FILL
XFILL_8__2178_ gnd vdd FILL
XFILL_2__2992_ gnd vdd FILL
XFILL_2__2572_ gnd vdd FILL
XFILL_2__2152_ gnd vdd FILL
XFILL_4__2498_ gnd vdd FILL
XFILL_4__2078_ gnd vdd FILL
XFILL_0__2398_ gnd vdd FILL
XFILL_6__3365_ gnd vdd FILL
XFILL_5__1782_ gnd vdd FILL
X_2817_ _1159_ _1162_ _520_ vdd gnd NOR2X1
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
XFILL_7__3526_ gnd vdd FILL
XFILL_1__2139_ gnd vdd FILL
XFILL_7__3106_ gnd vdd FILL
XFILL_1__3500_ gnd vdd FILL
XFILL_3__3426_ gnd vdd FILL
XFILL_3__3006_ gnd vdd FILL
XFILL_8__1869_ gnd vdd FILL
X_2990_ _607_ _1022_ _657_ _658_ vdd gnd OAI21X1
XFILL_6__1851_ gnd vdd FILL
X_2570_ _304_ _240_ _305_ _306_ vdd gnd OAI21X1
X_2150_ RDY_bF$buf3 _978_ _1285_ _1286_ vdd gnd OAI21X1
XFILL_2__1843_ gnd vdd FILL
XFILL_8__2810_ gnd vdd FILL
XFILL_4__1769_ gnd vdd FILL
XFILL_4__2710_ gnd vdd FILL
XFILL_6__2636_ gnd vdd FILL
XFILL_6__2216_ gnd vdd FILL
X_3355_ _108_ vdd _1__bF$buf5 clk_bF$buf2 ABL[7] vdd 
+ gnd
+ DFFSR
XFILL_0__2610_ gnd vdd FILL
XFILL_2__2628_ gnd vdd FILL
XFILL_2__2208_ gnd vdd FILL
XFILL_1__3097_ gnd vdd FILL
XFILL_3__1912_ gnd vdd FILL
XFILL_5__1838_ gnd vdd FILL
XCLKBUF1_insert28 clk clk_bF$buf10 vdd gnd CLKBUF1
XCLKBUF1_insert29 clk clk_bF$buf9 vdd gnd CLKBUF1
XFILL_2__2381_ gnd vdd FILL
X_1841_ _984_ _964_ _985_ vdd gnd NAND2X1
XFILL_6__3594_ gnd vdd FILL
XFILL_6__3174_ gnd vdd FILL
XFILL_2__3586_ gnd vdd FILL
XFILL_2__3166_ gnd vdd FILL
XFILL_6__1907_ gnd vdd FILL
X_2626_ ADD[2] _321_ _354_ _355_ vdd gnd AOI21X1
X_2206_ _1340_ cond_code[0] _1341_ vdd gnd XOR2X1
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
XFILL_4__1998_ gnd vdd FILL
XFILL_0__1898_ gnd vdd FILL
XFILL_6__2865_ gnd vdd FILL
XFILL_6__2445_ gnd vdd FILL
X_3584_ _1685_[13] AB[13] vdd gnd BUFX2
XFILL_6__2025_ gnd vdd FILL
X_3164_ _795_ _794_ _796_ vdd gnd AND2X2
XFILL_2__2857_ gnd vdd FILL
XFILL_2__2437_ gnd vdd FILL
XFILL_2__2017_ gnd vdd FILL
XFILL_8__3404_ gnd vdd FILL
XFILL_7__1821_ gnd vdd FILL
XFILL_3__1721_ gnd vdd FILL
XFILL_0__3204_ gnd vdd FILL
XFILL_7__2606_ gnd vdd FILL
XFILL_2__2190_ gnd vdd FILL
XFILL_3__2926_ gnd vdd FILL
XFILL_3__2506_ gnd vdd FILL
XFILL_2__3395_ gnd vdd FILL
X_2855_ _550_ _553_ _552_ _554_ vdd gnd OAI21X1
XFILL_6__1716_ gnd vdd FILL
X_2435_ _962_ _1052_ _186_ vdd gnd OR2X2
X_2015_ IRHOLD_valid_bF$buf3 IRHOLD[4] _1151_ vdd gnd NAND2X1
XFILL_2__1708_ gnd vdd FILL
XFILL_5__2185_ gnd vdd FILL
XFILL_1__2597_ gnd vdd FILL
XFILL_7__3564_ gnd vdd FILL
XFILL_1__2177_ gnd vdd FILL
XFILL_7__3144_ gnd vdd FILL
XFILL_3__3464_ gnd vdd FILL
XFILL_3__3044_ gnd vdd FILL
XFILL_2__1881_ gnd vdd FILL
XFILL_6__2674_ gnd vdd FILL
XFILL_6__2254_ gnd vdd FILL
X_3393_ _1662_ _1663_ _1659_ _1667_ vdd gnd OAI21X1
XFILL_2__2666_ gnd vdd FILL
XFILL181950x117150 gnd vdd FILL
XFILL_2__2246_ gnd vdd FILL
XFILL_8__3213_ gnd vdd FILL
X_1706_ _861_ DIMUX[5] vdd gnd INVX1
XFILL_4__3533_ gnd vdd FILL
XFILL_4__3113_ gnd vdd FILL
XFILL_6__3459_ gnd vdd FILL
XFILL_6__3039_ gnd vdd FILL
XFILL_3__1950_ gnd vdd FILL
XFILL_0__3433_ gnd vdd FILL
XFILL_0__3013_ gnd vdd FILL
XFILL_5__1876_ gnd vdd FILL
XFILL_1__1868_ gnd vdd FILL
XFILL_7__2835_ gnd vdd FILL
XFILL_7__2415_ gnd vdd FILL
XFILL_3__2735_ gnd vdd FILL
XFILL_3__2315_ gnd vdd FILL
XFILL_5__3602_ gnd vdd FILL
XFILL_6__1945_ gnd vdd FILL
X_2664_ _974_ _343_ _388_ _389_ vdd gnd OAI21X1
X_2244_ _1377_ _1375_ _1378_ vdd gnd NOR2X1
XFILL_2__1937_ gnd vdd FILL
XFILL_8__2904_ gnd vdd FILL
XFILL_4__2804_ gnd vdd FILL
X_3449_ _1524_ _1657_ _1531_ _1534_ _1535_ vdd 
+ gnd
+ OAI22X1
X_3029_ _692_ _1020_ _693_ vdd gnd NAND2X1
XFILL_7__3373_ gnd vdd FILL
XFILL_0__2704_ gnd vdd FILL
XFILL_5__3199_ gnd vdd FILL
XFILL_2__1690_ gnd vdd FILL
XFILL_6__2483_ gnd vdd FILL
XFILL_6__2063_ gnd vdd FILL
XFILL_2__2895_ gnd vdd FILL
XFILL_2__2475_ gnd vdd FILL
XFILL_8__3442_ gnd vdd FILL
XFILL_2__2055_ gnd vdd FILL
XFILL_8__3022_ gnd vdd FILL
X_1935_ _855_ _944_ _1076_ _1077_ vdd gnd OAI21X1
XFILL_7__2644_ gnd vdd FILL
XFILL_7__2224_ gnd vdd FILL
XFILL_3__2964_ gnd vdd FILL
XFILL_3__2544_ gnd vdd FILL
XFILL_3__2124_ gnd vdd FILL
XFILL_7__3429_ gnd vdd FILL
XFILL_5__3411_ gnd vdd FILL
XFILL_7__3009_ gnd vdd FILL
XFILL_1__3403_ gnd vdd FILL
X_2893_ index_y _580_ vdd gnd INVX1
XFILL_6__1754_ gnd vdd FILL
X_2473_ _970_ _208_ _221_ _222_ vdd gnd OAI21X1
X_2053_ _881_ _1183_ _1188_ _1189_ vdd gnd OAI21X1
XFILL_2__1746_ gnd vdd FILL
XFILL_8__2713_ gnd vdd FILL
XFILL_4__2613_ gnd vdd FILL
XFILL_6__2959_ gnd vdd FILL
XFILL_6__2539_ gnd vdd FILL
X_3258_ _20_ vdd _1__bF$buf10 clk_bF$buf6 cond_code[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2119_ gnd vdd FILL
XFILL_7__3182_ gnd vdd FILL
XFILL_0__2933_ gnd vdd FILL
XFILL_0__2513_ gnd vdd FILL
XFILL_3__3082_ gnd vdd FILL
XFILL_7__1915_ gnd vdd FILL
XFILL_3__1815_ gnd vdd FILL
XFILL_6__2292_ gnd vdd FILL
XFILL_2__2284_ gnd vdd FILL
X_1744_ _875_ _896_ _897_ vdd gnd NOR2X1
XFILL_4__3151_ gnd vdd FILL
XFILL_6__3497_ gnd vdd FILL
XFILL_6__3077_ gnd vdd FILL
XFILL_2__3489_ gnd vdd FILL
XFILL_0__3471_ gnd vdd FILL
XFILL_0__3051_ gnd vdd FILL
XFILL_2__3069_ gnd vdd FILL
X_2949_ reset _618_ IRHOLD[4] _625_ vdd gnd OAI21X1
X_2529_ _225_ DIMUX[1] _270_ _271_ vdd gnd AOI21X1
X_2109_ _918__bF$buf1 _996_ RDY_bF$buf7 _1245_ vdd gnd OAI21X1
XFILL_7__2873_ gnd vdd FILL
XFILL_7__2453_ gnd vdd FILL
XFILL_7__2033_ gnd vdd FILL
XFILL_3__2773_ gnd vdd FILL
XFILL_3__2353_ gnd vdd FILL
XFILL_5__2699_ gnd vdd FILL
XFILL_5__2279_ gnd vdd FILL
XFILL_5__3220_ gnd vdd FILL
XFILL_1__3212_ gnd vdd FILL
XFILL_3__3558_ gnd vdd FILL
XFILL_3__3138_ gnd vdd FILL
XFILL_6__1983_ gnd vdd FILL
X_2282_ _1213_ _1416_ vdd gnd INVX1
XFILL_2__1975_ gnd vdd FILL
XFILL_8__2942_ gnd vdd FILL
XFILL_8__2522_ gnd vdd FILL
XFILL_8__2102_ gnd vdd FILL
XFILL_4__2842_ gnd vdd FILL
XFILL_4__2422_ gnd vdd FILL
XFILL_4__2002_ gnd vdd FILL
XFILL_6__2768_ gnd vdd FILL
X_3487_ _1570_ _1547_ _1573_ vdd gnd NOR2X1
XFILL_6__2348_ gnd vdd FILL
X_3067_ adj_bcd adc_bcd CO _726_ vdd gnd NAND3X1
XFILL_0__2742_ gnd vdd FILL
XFILL_0__2322_ gnd vdd FILL
XFILL_7__1724_ gnd vdd FILL
XFILL_4__3207_ gnd vdd FILL
XFILL_0__3527_ gnd vdd FILL
XFILL_0__3107_ gnd vdd FILL
XFILL_7__2929_ gnd vdd FILL
XFILL_5__2911_ gnd vdd FILL
XFILL_7__2509_ gnd vdd FILL
XFILL_8__3480_ gnd vdd FILL
XFILL_2__2093_ gnd vdd FILL
XFILL_8__3060_ gnd vdd FILL
XFILL_1__2903_ gnd vdd FILL
XFILL_3__2829_ gnd vdd FILL
XFILL_3__2409_ gnd vdd FILL
X_1973_ _863_ _944_ _1110_ _1111_ vdd gnd OAI21X1
XFILL_4__3380_ gnd vdd FILL
X_2758_ _299_ _445_ _475_ vdd gnd NOR2X1
X_2338_ _1165_ _1128_ _1469_ vdd gnd AND2X2
XFILL_7__2682_ gnd vdd FILL
XFILL_7__2262_ gnd vdd FILL
XFILL183150x148350 gnd vdd FILL
XFILL_3__2582_ gnd vdd FILL
XFILL_3__2162_ gnd vdd FILL
XFILL_5__2088_ gnd vdd FILL
XFILL_7__3467_ gnd vdd FILL
XFILL_7__3047_ gnd vdd FILL
XFILL_1__3441_ gnd vdd FILL
XFILL_1__3021_ gnd vdd FILL
XFILL_3__3367_ gnd vdd FILL
XFILL_6__1792_ gnd vdd FILL
X_2091_ _886__bF$buf1 _955_ _1227_ vdd gnd NAND2X1
XFILL_2__1784_ gnd vdd FILL
XFILL_8__2751_ gnd vdd FILL
XFILL_8__2331_ gnd vdd FILL
XFILL_4__2651_ gnd vdd FILL
XFILL_4__2231_ gnd vdd FILL
XFILL_6__2997_ gnd vdd FILL
XFILL_6__2577_ gnd vdd FILL
X_3296_ DIMUX[6] vdd _1__bF$buf5 clk_bF$buf9 DIHOLD[6] vdd 
+ gnd
+ DFFSR
XFILL_6__2157_ gnd vdd FILL
XFILL_2__2989_ gnd vdd FILL
XFILL_0__2971_ gnd vdd FILL
XFILL_2__2569_ gnd vdd FILL
XFILL_0__2551_ gnd vdd FILL
XFILL_8__3536_ gnd vdd FILL
XFILL_2__2149_ gnd vdd FILL
XFILL_0__2131_ gnd vdd FILL
XFILL_8__3116_ gnd vdd FILL
XFILL_2__3510_ gnd vdd FILL
XFILL_7__1953_ gnd vdd FILL
XFILL_4__3436_ gnd vdd FILL
XFILL_4__3016_ gnd vdd FILL
XFILL_3__1853_ gnd vdd FILL
XFILL_5__1779_ gnd vdd FILL
XFILL_7__2738_ gnd vdd FILL
XFILL_5__2720_ gnd vdd FILL
XFILL_7__2318_ gnd vdd FILL
XFILL_5__2300_ gnd vdd FILL
XFILL_1__2712_ gnd vdd FILL
XFILL_3__2638_ gnd vdd FILL
XFILL_3__2218_ gnd vdd FILL
X_1782_ _926__bF$buf1 _928_ _934_ vdd gnd NAND2X1
XFILL_5__3505_ gnd vdd FILL
XFILL_4__1922_ gnd vdd FILL
X_2987_ I _651_ _656_ vdd gnd NAND2X1
XFILL_6__1848_ gnd vdd FILL
X_2567_ PC[15] _303_ vdd gnd INVX1
X_2147_ _853__bF$buf2 _1281_ _1282_ _1283_ vdd gnd OAI21X1
XFILL_7__2491_ gnd vdd FILL
XFILL_7__2071_ gnd vdd FILL
XFILL_0__1822_ gnd vdd FILL
XFILL_8__2807_ gnd vdd FILL
XFILL_3__2391_ gnd vdd FILL
XFILL_4__2707_ gnd vdd FILL
XFILL_0__2607_ gnd vdd FILL
XFILL_3__3596_ gnd vdd FILL
XFILL_3__3176_ gnd vdd FILL
XFILL_8__2980_ gnd vdd FILL
XFILL_8__2560_ gnd vdd FILL
XFILL_8__2140_ gnd vdd FILL
XFILL_3__1909_ gnd vdd FILL
XFILL_4__2880_ gnd vdd FILL
XFILL_4__2460_ gnd vdd FILL
XFILL_4__2040_ gnd vdd FILL
XFILL_6__2386_ gnd vdd FILL
XFILL_2__2798_ gnd vdd FILL
XFILL_0__2780_ gnd vdd FILL
XFILL_0__2360_ gnd vdd FILL
XFILL_2__2378_ gnd vdd FILL
X_1838_ _934_ _938_ _981_ _982_ vdd gnd NAND3X1
XFILL_7__1762_ gnd vdd FILL
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
XFILL_7__2547_ gnd vdd FILL
XFILL_7__2127_ gnd vdd FILL
XFILL_1__2941_ gnd vdd FILL
XFILL_1__2521_ gnd vdd FILL
XFILL_1__2101_ gnd vdd FILL
XFILL_3__2867_ gnd vdd FILL
XFILL_3__2447_ gnd vdd FILL
XFILL_3__2027_ gnd vdd FILL
XFILL_8__1831_ gnd vdd FILL
XFILL_4__1731_ gnd vdd FILL
X_2796_ _853__bF$buf1 _1002__bF$buf0 clc _505_ vdd gnd OAI21X1
X_2376_ _135_ _133_ _1687_ vdd gnd NAND2X1
XFILL_8__2616_ gnd vdd FILL
XFILL_4__2936_ gnd vdd FILL
XFILL_4__2516_ gnd vdd FILL
XFILL_7__3085_ gnd vdd FILL
XFILL_0__2836_ gnd vdd FILL
XFILL_0__2416_ gnd vdd FILL
XFILL_7__1818_ gnd vdd FILL
XFILL_5__1800_ gnd vdd FILL
XFILL_3__1718_ gnd vdd FILL
XFILL_6__2195_ gnd vdd FILL
XFILL_2__2187_ gnd vdd FILL
XFILL_8__3154_ gnd vdd FILL
XFILL_7__1991_ gnd vdd FILL
XFILL_4__3474_ gnd vdd FILL
XFILL_4__3054_ gnd vdd FILL
XFILL_3__1891_ gnd vdd FILL
XFILL_0__3374_ gnd vdd FILL
XFILL_7__2776_ gnd vdd FILL
XFILL184650x4050 gnd vdd FILL
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
X_2185_ _1296_ _1320_ vdd gnd INVX1
XFILL_0__1860_ gnd vdd FILL
XFILL_2__1878_ gnd vdd FILL
XFILL_8__2845_ gnd vdd FILL
XFILL_8__2425_ gnd vdd FILL
XFILL_8__2005_ gnd vdd FILL
XFILL_4__2745_ gnd vdd FILL
XFILL_4__2325_ gnd vdd FILL
XFILL_0__2645_ gnd vdd FILL
XFILL_0__2225_ gnd vdd FILL
XFILL_6_CLKBUF1_insert30 gnd vdd FILL
XFILL_6_CLKBUF1_insert31 gnd vdd FILL
XFILL_3__1947_ gnd vdd FILL
XFILL_6_CLKBUF1_insert32 gnd vdd FILL
XFILL_9__2914_ gnd vdd FILL
XFILL_6_CLKBUF1_insert33 gnd vdd FILL
XFILL_6_CLKBUF1_insert34 gnd vdd FILL
XFILL_6_CLKBUF1_insert35 gnd vdd FILL
XFILL_6_CLKBUF1_insert36 gnd vdd FILL
XFILL_6_CLKBUF1_insert37 gnd vdd FILL
XFILL_6_CLKBUF1_insert38 gnd vdd FILL
XFILL_5__2814_ gnd vdd FILL
XFILL_8__3383_ gnd vdd FILL
XFILL_1__2806_ gnd vdd FILL
X_1876_ _1019_ _1018_ _1016_ _1020_ vdd gnd AOI21X1
XFILL_0__3183_ gnd vdd FILL
XFILL_7__2585_ gnd vdd FILL
XFILL_7__2165_ gnd vdd FILL
XFILL_0__1916_ gnd vdd FILL
X_3602_ _1686_[7] DO[7] vdd gnd BUFX2
XFILL_3__2485_ gnd vdd FILL
XFILL_3__2065_ gnd vdd FILL
XFILL_9__3032_ gnd vdd FILL
XFILL_6__1695_ gnd vdd FILL
XFILL_8__2654_ gnd vdd FILL
XFILL_8__2234_ gnd vdd FILL
XFILL_4__2974_ gnd vdd FILL
XFILL_4__2554_ gnd vdd FILL
XFILL_4__2134_ gnd vdd FILL
X_3199_ _830__bF$buf1 _831_ vdd gnd INVX2
XFILL_0__2874_ gnd vdd FILL
XFILL_0__2454_ gnd vdd FILL
XFILL_0__2034_ gnd vdd FILL
XFILL_8__3439_ gnd vdd FILL
XFILL_6__3421_ gnd vdd FILL
XFILL_8__3019_ gnd vdd FILL
XFILL_6__3001_ gnd vdd FILL
XFILL_2__3413_ gnd vdd FILL
XFILL_7__1856_ gnd vdd FILL
XFILL_1__1830_ gnd vdd FILL
XFILL_3__1756_ gnd vdd FILL
XFILL_9__2723_ gnd vdd FILL
XFILL_5__2623_ gnd vdd FILL
XFILL_5__2203_ gnd vdd FILL
XFILL_8__3192_ gnd vdd FILL
XFILL_1__2615_ gnd vdd FILL
XFILL_4__3092_ gnd vdd FILL
XFILL_8__1925_ gnd vdd FILL
XFILL_5__3408_ gnd vdd FILL
XFILL_4__1825_ gnd vdd FILL
XFILL_7__2394_ gnd vdd FILL
XFILL_0__1725_ gnd vdd FILL
X_3411_ BI[5] _1674_ _1684_ _1497_ vdd gnd OAI21X1
XFILL_3__2294_ gnd vdd FILL
XFILL_7__3599_ gnd vdd FILL
XFILL_5__3581_ gnd vdd FILL
XFILL_5__3161_ gnd vdd FILL
XFILL_7__3179_ gnd vdd FILL
XFILL_1__3153_ gnd vdd FILL
XFILL_3__3499_ gnd vdd FILL
XFILL_3__3079_ gnd vdd FILL
XFILL_8__2883_ gnd vdd FILL
XFILL181950x105450 gnd vdd FILL
XFILL_8__2463_ gnd vdd FILL
XFILL_8__2043_ gnd vdd FILL
XFILL_4__2783_ gnd vdd FILL
XFILL_4__2363_ gnd vdd FILL
XFILL_6__2289_ gnd vdd FILL
XFILL_0__2683_ gnd vdd FILL
XFILL_0__2263_ gnd vdd FILL
XFILL_6__3230_ gnd vdd FILL
XFILL_2__3222_ gnd vdd FILL
XFILL_4__3148_ gnd vdd FILL
XFILL_3__1985_ gnd vdd FILL
XFILL_0__3468_ gnd vdd FILL
XFILL_0__3048_ gnd vdd FILL
XFILL_9__2532_ gnd vdd FILL
XFILL_5__2852_ gnd vdd FILL
XFILL_5__2432_ gnd vdd FILL
XFILL_5__2012_ gnd vdd FILL
XFILL_1__2844_ gnd vdd FILL
XFILL_1__2424_ gnd vdd FILL
XFILL_1__2004_ gnd vdd FILL
XFILL_8__1734_ gnd vdd FILL
XFILL_5__3217_ gnd vdd FILL
XFILL_1__3209_ gnd vdd FILL
X_2699_ _320_ _191_ _969_ _421_ vdd gnd AOI21X1
X_2279_ _878_ _1409_ _1412_ _1413_ vdd gnd AOI21X1
XFILL_0__1954_ gnd vdd FILL
XFILL_6__2921_ gnd vdd FILL
XFILL_8__2939_ gnd vdd FILL
XFILL_6__2501_ gnd vdd FILL
XFILL_8__2519_ gnd vdd FILL
X_3220_ _1685_[10] _830__bF$buf0 _842_ vdd gnd NAND2X1
XFILL_2__2913_ gnd vdd FILL
XFILL_4__2839_ gnd vdd FILL
XFILL_4__2419_ gnd vdd FILL
XFILL_5__3390_ gnd vdd FILL
XFILL_0__2739_ gnd vdd FILL
XFILL_0__2319_ gnd vdd FILL
XFILL_1__3382_ gnd vdd FILL
XFILL_5__1703_ gnd vdd FILL
XFILL_8__2692_ gnd vdd FILL
XFILL_8__2272_ gnd vdd FILL
XFILL_4__2592_ gnd vdd FILL
XFILL_4__2172_ gnd vdd FILL
XFILL_6__2098_ gnd vdd FILL
XFILL_5__2908_ gnd vdd FILL
XFILL_0__2492_ gnd vdd FILL
XFILL_8__3477_ gnd vdd FILL
XFILL_0__2072_ gnd vdd FILL
XFILL_8__3057_ gnd vdd FILL
XFILL_2__3451_ gnd vdd FILL
XFILL_2__3031_ gnd vdd FILL
XFILL_7__1894_ gnd vdd FILL
XFILL_4__3377_ gnd vdd FILL
X_2911_ _1400_ _595_ _594_ _596_ vdd gnd OAI21X1
XFILL_3__1794_ gnd vdd FILL
XFILL_5__2661_ gnd vdd FILL
XFILL_7__2679_ gnd vdd FILL
XFILL_7__2259_ gnd vdd FILL
XFILL_5__2241_ gnd vdd FILL
XFILL_1__2653_ gnd vdd FILL
XFILL_1__2233_ gnd vdd FILL
XFILL_7__3200_ gnd vdd FILL
XFILL_3__2999_ gnd vdd FILL
XFILL_3__2579_ gnd vdd FILL
XBUFX2_insert0 _926_ _926__bF$buf3 vdd gnd BUFX2
XFILL_9__3546_ gnd vdd FILL
XBUFX2_insert1 _926_ _926__bF$buf2 vdd gnd BUFX2
XFILL_3__2159_ gnd vdd FILL
XBUFX2_insert2 _926_ _926__bF$buf1 vdd gnd BUFX2
XBUFX2_insert3 _926_ _926__bF$buf0 vdd gnd BUFX2
XBUFX2_insert4 RDY RDY_bF$buf8 vdd gnd BUFX2
XBUFX2_insert5 RDY RDY_bF$buf7 vdd gnd BUFX2
XBUFX2_insert6 RDY RDY_bF$buf6 vdd gnd BUFX2
XBUFX2_insert7 RDY RDY_bF$buf5 vdd gnd BUFX2
XBUFX2_insert8 RDY RDY_bF$buf4 vdd gnd BUFX2
XBUFX2_insert9 RDY RDY_bF$buf3 vdd gnd BUFX2
XFILL_3__3520_ gnd vdd FILL
XFILL_3__3100_ gnd vdd FILL
XFILL_8__1963_ gnd vdd FILL
XFILL_5__3446_ gnd vdd FILL
XFILL_5__3026_ gnd vdd FILL
XFILL_1__3438_ gnd vdd FILL
XFILL_1__3018_ gnd vdd FILL
XFILL_4__1863_ gnd vdd FILL
XFILL_6__1789_ gnd vdd FILL
X_2088_ _882__bF$buf1 _1035_ _1224_ vdd gnd NOR2X1
XFILL_0__1763_ gnd vdd FILL
XFILL_8__2748_ gnd vdd FILL
XFILL_6__2730_ gnd vdd FILL
XFILL_6__2310_ gnd vdd FILL
XFILL_8__2328_ gnd vdd FILL
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
XFILL_8__2081_ gnd vdd FILL
XFILL_1__1924_ gnd vdd FILL
XFILL_5__2717_ gnd vdd FILL
XFILL_1__2709_ gnd vdd FILL
X_1779_ PC[0] _931_ vdd gnd INVX2
XFILL_4__3186_ gnd vdd FILL
X_2720_ _434_ _440_ _439_ _441_ vdd gnd NAND3X1
X_2300_ _853__bF$buf2 _1260_ _1432_ _1433_ vdd gnd OAI21X1
XFILL_0__3086_ gnd vdd FILL
XFILL_4__1919_ gnd vdd FILL
XFILL_5__2890_ gnd vdd FILL
XFILL_5__2470_ gnd vdd FILL
XFILL_7__2488_ gnd vdd FILL
XFILL_7__2068_ gnd vdd FILL
XFILL_5__2050_ gnd vdd FILL
XFILL_0__1819_ gnd vdd FILL
X_3505_ _1590_ _1591_ vdd gnd INVX1
XFILL_1__2882_ gnd vdd FILL
XFILL_1__2462_ gnd vdd FILL
XFILL_1__2042_ gnd vdd FILL
XFILL_3__2388_ gnd vdd FILL
XFILL_8__1772_ gnd vdd FILL
XFILL_0__1992_ gnd vdd FILL
XFILL_8__2977_ gnd vdd FILL
XFILL_8__2557_ gnd vdd FILL
XFILL_8__2137_ gnd vdd FILL
XFILL_2__2951_ gnd vdd FILL
XFILL_2__2531_ gnd vdd FILL
XFILL_2__2111_ gnd vdd FILL
XFILL_4__2877_ gnd vdd FILL
XFILL_4__2457_ gnd vdd FILL
XFILL_4__2037_ gnd vdd FILL
XFILL_0__2777_ gnd vdd FILL
XFILL_0__2357_ gnd vdd FILL
XFILL_7__1759_ gnd vdd FILL
XFILL_5__1741_ gnd vdd FILL
XFILL_1__1733_ gnd vdd FILL
XFILL_7__2700_ gnd vdd FILL
XFILL_3__2600_ gnd vdd FILL
XFILL_5__2946_ gnd vdd FILL
XFILL_5__2526_ gnd vdd FILL
XFILL_5__2106_ gnd vdd FILL
XFILL_8__3095_ gnd vdd FILL
XFILL_1__2938_ gnd vdd FILL
XFILL_1__2518_ gnd vdd FILL
XFILL_6__1810_ gnd vdd FILL
XFILL_8__1828_ gnd vdd FILL
XFILL_2__1802_ gnd vdd FILL
XFILL_4__1728_ gnd vdd FILL
XFILL_7__2297_ gnd vdd FILL
X_3314_ _68_ vdd _1__bF$buf8 clk_bF$buf9 backwards vdd 
+ gnd
+ DFFSR
XFILL_1__2691_ gnd vdd FILL
XFILL_1__2271_ gnd vdd FILL
XFILL_3__2197_ gnd vdd FILL
XFILL_5__3484_ gnd vdd FILL
XFILL_5__3064_ gnd vdd FILL
XFILL_1__3476_ gnd vdd FILL
XFILL_1__3056_ gnd vdd FILL
XFILL_8__2786_ gnd vdd FILL
XFILL_8__2366_ gnd vdd FILL
XFILL_2__2760_ gnd vdd FILL
XFILL_2__2340_ gnd vdd FILL
XFILL_4__2686_ gnd vdd FILL
XFILL_4__2266_ gnd vdd FILL
X_1800_ _951_ _952_ vdd gnd INVX1
XFILL_0__2586_ gnd vdd FILL
XFILL_6__3553_ gnd vdd FILL
XFILL_0__2166_ gnd vdd FILL
XFILL_6__3133_ gnd vdd FILL
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
XFILL_4__1957_ gnd vdd FILL
XFILL184050x74250 gnd vdd FILL
XFILL_0__1857_ gnd vdd FILL
XFILL_6__2824_ gnd vdd FILL
X_3543_ _1571_ _1559_ _1553_ _1627_ vdd gnd AOI21X1
XFILL_6__2404_ gnd vdd FILL
X_3123_ _691__bF$buf3 _758_ _AXYS[2]_[6] _765_ vdd gnd OAI21X1
XFILL_1__2080_ gnd vdd FILL
XFILL_2__2816_ gnd vdd FILL
XFILL_8__2595_ gnd vdd FILL
XFILL_8__2175_ gnd vdd FILL
XFILL_4__2495_ gnd vdd FILL
XFILL_4__2075_ gnd vdd FILL
XFILL_0__2395_ gnd vdd FILL
XFILL_7__1797_ gnd vdd FILL
X_2814_ _853__bF$buf7 _1002__bF$buf3 sei _518_ vdd gnd OAI21X1
XFILL_1__1771_ gnd vdd FILL
XFILL_3__1697_ gnd vdd FILL
XFILL_9__2664_ gnd vdd FILL
XFILL_5__2984_ gnd vdd FILL
XFILL_5__2564_ gnd vdd FILL
XFILL_5__2144_ gnd vdd FILL
XFILL_1__2976_ gnd vdd FILL
XFILL_1__2556_ gnd vdd FILL
XFILL_7__3523_ gnd vdd FILL
XFILL_1__2136_ gnd vdd FILL
XFILL_7__3103_ gnd vdd FILL
XFILL_3__3423_ gnd vdd FILL
XFILL_3__3003_ gnd vdd FILL
XFILL_8__1866_ gnd vdd FILL
XFILL_2__1840_ gnd vdd FILL
XFILL_4__1766_ gnd vdd FILL
XFILL_6__2633_ gnd vdd FILL
XFILL_6__2213_ gnd vdd FILL
X_3352_ _105_ vdd _1__bF$buf5 clk_bF$buf2 ABL[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2625_ gnd vdd FILL
XFILL_2__2205_ gnd vdd FILL
XFILL_6__3418_ gnd vdd FILL
XFILL_1__3094_ gnd vdd FILL
XFILL_5__1835_ gnd vdd FILL
XFILL_1__1827_ gnd vdd FILL
XFILL_6__3591_ gnd vdd FILL
XFILL_6__3171_ gnd vdd FILL
XFILL_8__3189_ gnd vdd FILL
XFILL_2__3583_ gnd vdd FILL
XFILL_2__3163_ gnd vdd FILL
XFILL_4__3089_ gnd vdd FILL
XFILL_6__1904_ gnd vdd FILL
X_2623_ res _1132_ _352_ vdd gnd NOR2X1
X_2203_ _1335_ _1337_ cond_code[1] _1338_ vdd gnd OAI21X1
XFILL_9__2473_ gnd vdd FILL
XFILL_5__2793_ gnd vdd FILL
XFILL_5__2373_ gnd vdd FILL
X_3408_ AI[5] _1679_ _1657_ _1682_ vdd gnd OAI21X1
XFILL_1__2785_ gnd vdd FILL
XFILL_1__2365_ gnd vdd FILL
XFILL_3__3232_ gnd vdd FILL
XFILL_5__3158_ gnd vdd FILL
XFILL_4__1995_ gnd vdd FILL
XFILL_0__1895_ gnd vdd FILL
XFILL_6__2862_ gnd vdd FILL
XFILL_6__2442_ gnd vdd FILL
X_3581_ _1685_[10] AB[10] vdd gnd BUFX2
XFILL_6__2022_ gnd vdd FILL
X_3161_ state[4] _941_ _792_ _793_ vdd gnd OAI21X1
XFILL_2__2854_ gnd vdd FILL
XFILL_2__2434_ gnd vdd FILL
XFILL_8__3401_ gnd vdd FILL
XFILL_2__2014_ gnd vdd FILL
XFILL_6__3227_ gnd vdd FILL
XFILL_0__3201_ gnd vdd FILL
XFILL_2__3219_ gnd vdd FILL
XFILL_7__2603_ gnd vdd FILL
XFILL_3__2923_ gnd vdd FILL
XFILL_3__2503_ gnd vdd FILL
XFILL_5__2849_ gnd vdd FILL
XFILL_5__2429_ gnd vdd FILL
XFILL_5__2009_ gnd vdd FILL
XFILL_2__3392_ gnd vdd FILL
X_2852_ _1220_ _550_ _551_ vdd gnd NOR2X1
XFILL_6__1713_ gnd vdd FILL
X_2432_ _886__bF$buf1 _953_ _183_ vdd gnd NAND2X1
X_2012_ _1145_ _1147_ _1148_ vdd gnd NAND2X1
XFILL_2__1705_ gnd vdd FILL
XFILL_5__2182_ gnd vdd FILL
XFILL_6__2918_ gnd vdd FILL
X_3217_ _1055_ _830__bF$buf3 _840_ _109_ vdd gnd OAI21X1
XFILL_1__2594_ gnd vdd FILL
XFILL_7__3561_ gnd vdd FILL
XFILL_1__2174_ gnd vdd FILL
XFILL_7__3141_ gnd vdd FILL
XFILL_9__3487_ gnd vdd FILL
XFILL_3__3461_ gnd vdd FILL
XFILL_3__3041_ gnd vdd FILL
XFILL_5__3387_ gnd vdd FILL
XFILL_1__3379_ gnd vdd FILL
XFILL_6__2671_ gnd vdd FILL
XFILL_8__2689_ gnd vdd FILL
X_3390_ _u_ALU8.BI7_ _1649__bF$buf0 _1665_ vdd gnd NAND2X1
XFILL_8__2269_ gnd vdd FILL
XFILL_6__2251_ gnd vdd FILL
XFILL_2__2663_ gnd vdd FILL
XFILL_2__2243_ gnd vdd FILL
XFILL_8__3210_ gnd vdd FILL
XFILL_4__2589_ gnd vdd FILL
XFILL_4__2169_ gnd vdd FILL
X_1703_ _859_ DIMUX[4] vdd gnd INVX1
XFILL_4__3530_ gnd vdd FILL
XFILL_4__3110_ gnd vdd FILL
XFILL_0__2489_ gnd vdd FILL
XFILL_6__3456_ gnd vdd FILL
XFILL_0__2069_ gnd vdd FILL
XFILL_6__3036_ gnd vdd FILL
XFILL_0__3430_ gnd vdd FILL
XFILL_2__3448_ gnd vdd FILL
XFILL_2__3028_ gnd vdd FILL
XFILL_0__3010_ gnd vdd FILL
XFILL_5__1873_ gnd vdd FILL
X_2908_ _544_ _1384_ _1129__bF$buf3 _593_ vdd gnd OAI21X1
XFILL_1__1865_ gnd vdd FILL
XFILL_7__2832_ gnd vdd FILL
XFILL_7__2412_ gnd vdd FILL
XFILL_3__2732_ gnd vdd FILL
XFILL_3__2312_ gnd vdd FILL
XFILL_5__2658_ gnd vdd FILL
XFILL_5__2238_ gnd vdd FILL
XFILL_3__3517_ gnd vdd FILL
XFILL_6__1942_ gnd vdd FILL
X_2661_ ABL[6] _386_ vdd gnd INVX1
X_2241_ _1374_ _1375_ vdd gnd INVX1
XFILL_2__1934_ gnd vdd FILL
XFILL_8__2901_ gnd vdd FILL
XFILL_4__2801_ gnd vdd FILL
XFILL_6__2727_ gnd vdd FILL
X_3446_ BI[1] _1532_ vdd gnd INVX1
XFILL_6__2307_ gnd vdd FILL
X_3026_ _689_ _690_ vdd gnd INVX1
XFILL_7__3370_ gnd vdd FILL
XFILL_0__2701_ gnd vdd FILL
XFILL_2__2719_ gnd vdd FILL
XFILL_5__3196_ gnd vdd FILL
XFILL_1__3188_ gnd vdd FILL
XFILL_5__1929_ gnd vdd FILL
XFILL_8__2498_ gnd vdd FILL
XFILL_6__2480_ gnd vdd FILL
XFILL_8__2078_ gnd vdd FILL
XFILL_6__2060_ gnd vdd FILL
XFILL_2__2892_ gnd vdd FILL
XFILL_2__2472_ gnd vdd FILL
XFILL_2__2052_ gnd vdd FILL
XFILL_4__2398_ gnd vdd FILL
X_1932_ _1073_ _1074_ vdd gnd INVX1
XFILL_0__2298_ gnd vdd FILL
X_2717_ _437_ _1267_ _1051__bF$buf3 _438_ vdd gnd OAI21X1
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
XFILL_7__3426_ gnd vdd FILL
XFILL_7__3006_ gnd vdd FILL
XFILL_1__3400_ gnd vdd FILL
X_2890_ _1148_ _1382_ _578_ vdd gnd NOR2X1
XFILL_8__1769_ gnd vdd FILL
XFILL_6__1751_ gnd vdd FILL
X_2470_ _190_ _197_ ADD[2] _219_ vdd gnd OAI21X1
X_2050_ _869__bF$buf0 _910_ _1186_ vdd gnd NAND2X1
XFILL_2__1743_ gnd vdd FILL
XFILL_8__2710_ gnd vdd FILL
XFILL_4__2610_ gnd vdd FILL
XFILL_0__1989_ gnd vdd FILL
XFILL_6__2956_ gnd vdd FILL
XFILL_6__2536_ gnd vdd FILL
XFILL_6__2116_ gnd vdd FILL
X_3255_ NMI vdd _1__bF$buf2 clk_bF$buf8 NMI_1 vdd 
+ gnd
+ DFFSR
XFILL183450x171750 gnd vdd FILL
XFILL_0__2930_ gnd vdd FILL
XFILL_2__2948_ gnd vdd FILL
XFILL_0__2510_ gnd vdd FILL
XFILL_2__2528_ gnd vdd FILL
XFILL_2__2108_ gnd vdd FILL
XFILL_7__1912_ gnd vdd FILL
XFILL_3__1812_ gnd vdd FILL
XFILL_5__1738_ gnd vdd FILL
XFILL_2__2281_ gnd vdd FILL
X_1741_ _886__bF$buf3 _893_ _894_ vdd gnd NAND2X1
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
X_2946_ _855_ _620_ _623_ _55_ vdd gnd OAI21X1
XFILL_6__1807_ gnd vdd FILL
X_2526_ _199_ _268_ vdd gnd INVX2
X_2106_ RDY_bF$buf7 _1238_ _1241_ _1242_ vdd gnd OAI21X1
XFILL_7__2870_ gnd vdd FILL
XFILL_7__2450_ gnd vdd FILL
XFILL_7__2030_ gnd vdd FILL
XFILL_3__2770_ gnd vdd FILL
XFILL_3__2350_ gnd vdd FILL
XFILL_5__2696_ gnd vdd FILL
XFILL_5__2276_ gnd vdd FILL
XFILL_1__2688_ gnd vdd FILL
XFILL_1__2268_ gnd vdd FILL
XFILL_3__3555_ gnd vdd FILL
XFILL_3__3135_ gnd vdd FILL
XFILL_8__1998_ gnd vdd FILL
XFILL_6__1980_ gnd vdd FILL
XFILL_2__1972_ gnd vdd FILL
XFILL_4__1898_ gnd vdd FILL
XFILL_0__1798_ gnd vdd FILL
XFILL_6__2765_ gnd vdd FILL
X_3484_ alu_op[2] BI[0] _1548_ _1570_ vdd gnd AOI21X1
XFILL_6__2345_ gnd vdd FILL
X_3064_ DIMUX[4] _981_ _723_ _724_ vdd gnd OAI21X1
XFILL_2__2757_ gnd vdd FILL
XFILL_2__2337_ gnd vdd FILL
XFILL_7__1721_ gnd vdd FILL
XFILL_4__3204_ gnd vdd FILL
XFILL_0__3524_ gnd vdd FILL
XFILL_0__3104_ gnd vdd FILL
XFILL_5__1967_ gnd vdd FILL
XFILL_1__1959_ gnd vdd FILL
XFILL_7__2926_ gnd vdd FILL
XFILL_7__2506_ gnd vdd FILL
XFILL_2__2090_ gnd vdd FILL
XFILL_1__2900_ gnd vdd FILL
XFILL_3__2826_ gnd vdd FILL
XFILL_3__2406_ gnd vdd FILL
X_1970_ ABH[6] _1108_ vdd gnd INVX1
X_2755_ PC[12] _323_ _472_ vdd gnd NAND2X1
X_2335_ _1466_ _1301_ _1467_ vdd gnd AND2X2
XFILL_5__2085_ gnd vdd FILL
XFILL_1__2497_ gnd vdd FILL
XFILL_7__3464_ gnd vdd FILL
XFILL_1__2077_ gnd vdd FILL
XFILL_7__3044_ gnd vdd FILL
XFILL_3__3364_ gnd vdd FILL
XFILL_2__1781_ gnd vdd FILL
XFILL_6__2994_ gnd vdd FILL
XFILL_6__2574_ gnd vdd FILL
XFILL_6__2154_ gnd vdd FILL
X_3293_ DIMUX[3] vdd _1__bF$buf3 clk_bF$buf9 DIHOLD[3] vdd 
+ gnd
+ DFFSR
XFILL_2__2986_ gnd vdd FILL
XFILL_2__2566_ gnd vdd FILL
XFILL_8__3533_ gnd vdd FILL
XFILL_2__2146_ gnd vdd FILL
XFILL_8__3113_ gnd vdd FILL
XFILL_7__1950_ gnd vdd FILL
XFILL_4__3433_ gnd vdd FILL
XFILL_4__3013_ gnd vdd FILL
XFILL_3__1850_ gnd vdd FILL
XFILL_5__1776_ gnd vdd FILL
XFILL_1__1768_ gnd vdd FILL
XFILL_7__2735_ gnd vdd FILL
XFILL_7__2315_ gnd vdd FILL
XFILL_3__2635_ gnd vdd FILL
XFILL_3__2215_ gnd vdd FILL
XFILL_9__3602_ gnd vdd FILL
XFILL_5__3502_ gnd vdd FILL
X_2984_ _437_ _951_ _649_ _653_ vdd gnd OAI21X1
XFILL_6__1845_ gnd vdd FILL
X_2564_ _1108_ _268_ _300_ _301_ vdd gnd OAI21X1
X_2144_ _1276_ _1273_ _1279_ _1280_ vdd gnd NAND3X1
XFILL_2__1837_ gnd vdd FILL
XFILL_8__2804_ gnd vdd FILL
XFILL_4__2704_ gnd vdd FILL
X_3349_ _102_ vdd _1__bF$buf5 clk_bF$buf2 ABL[1] vdd 
+ gnd
+ DFFSR
XFILL_0__2604_ gnd vdd FILL
XFILL_3__3593_ gnd vdd FILL
XFILL_3__3173_ gnd vdd FILL
XFILL_5__3099_ gnd vdd FILL
XFILL_3__1906_ gnd vdd FILL
XFILL_6__2383_ gnd vdd FILL
XFILL_2__2795_ gnd vdd FILL
XFILL_2__2375_ gnd vdd FILL
X_1835_ _976_ _977_ _978_ _979_ vdd gnd NAND3X1
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
XFILL_4_BUFX2_insert26 gnd vdd FILL
XFILL_4_BUFX2_insert27 gnd vdd FILL
XFILL_1__1997_ gnd vdd FILL
XFILL_7__2964_ gnd vdd FILL
XFILL_7__2544_ gnd vdd FILL
XFILL_7__2124_ gnd vdd FILL
XFILL_3__2864_ gnd vdd FILL
XFILL_3__2444_ gnd vdd FILL
XFILL_3__2024_ gnd vdd FILL
XBUFX2_insert80 _853_ _853__bF$buf0 vdd gnd BUFX2
XBUFX2_insert81 _1002_ _1002__bF$buf4 vdd gnd BUFX2
XBUFX2_insert82 _1002_ _1002__bF$buf3 vdd gnd BUFX2
XBUFX2_insert83 _1002_ _1002__bF$buf2 vdd gnd BUFX2
XBUFX2_insert84 _1002_ _1002__bF$buf1 vdd gnd BUFX2
XBUFX2_insert85 _1002_ _1002__bF$buf0 vdd gnd BUFX2
XBUFX2_insert86 _882_ _882__bF$buf3 vdd gnd BUFX2
XFILL183150x7950 gnd vdd FILL
XBUFX2_insert87 _882_ _882__bF$buf2 vdd gnd BUFX2
XBUFX2_insert88 _882_ _882__bF$buf1 vdd gnd BUFX2
XBUFX2_insert89 _882_ _882__bF$buf0 vdd gnd BUFX2
XFILL_3__3229_ gnd vdd FILL
X_2793_ _1324_ _503_ vdd gnd INVX1
X_2373_ _1191_ _130_ _133_ vdd gnd NOR2X1
XFILL_8__2613_ gnd vdd FILL
XFILL_4__2933_ gnd vdd FILL
XFILL_4__2513_ gnd vdd FILL
XFILL_6__2859_ gnd vdd FILL
X_3578_ _1496_ vdd _1484_ clk_bF$buf9 _u_ALU8.AI7_ vdd 
+ gnd
+ DFFSR
XFILL_6__2439_ gnd vdd FILL
XFILL_6__2019_ gnd vdd FILL
X_3158_ _1049_ _990_ _789_ _790_ vdd gnd NAND3X1
XFILL_7__3082_ gnd vdd FILL
XFILL_0__2833_ gnd vdd FILL
XFILL_0__2413_ gnd vdd FILL
XFILL_7__1815_ gnd vdd FILL
XFILL_3__1715_ gnd vdd FILL
XFILL_6__2192_ gnd vdd FILL
XFILL_2__2184_ gnd vdd FILL
XFILL_8__3151_ gnd vdd FILL
XFILL_4__3471_ gnd vdd FILL
XFILL_4__3051_ gnd vdd FILL
XFILL_6__3397_ gnd vdd FILL
XFILL_2__3389_ gnd vdd FILL
XFILL_0__3371_ gnd vdd FILL
X_2849_ _546_ _547_ _548_ vdd gnd NOR2X1
X_2429_ _129_ _180_ vdd gnd INVX1
X_2009_ _1143_ NMI_edge _1144_ _1145_ vdd gnd OAI21X1
XFILL_7__2773_ gnd vdd FILL
XFILL_7__2353_ gnd vdd FILL
XFILL_3__2673_ gnd vdd FILL
XFILL_3__2253_ gnd vdd FILL
XFILL_5__2599_ gnd vdd FILL
XFILL_5__2179_ gnd vdd FILL
XFILL_7__3558_ gnd vdd FILL
XFILL_5__3540_ gnd vdd FILL
XFILL_5__3120_ gnd vdd FILL
XFILL_7__3138_ gnd vdd FILL
XFILL_1__3532_ gnd vdd FILL
XFILL_1__3112_ gnd vdd FILL
XFILL183750x150 gnd vdd FILL
XFILL_3__3458_ gnd vdd FILL
XFILL_3__3038_ gnd vdd FILL
XFILL_6__1883_ gnd vdd FILL
X_2182_ _1164_ _1316_ _1317_ vdd gnd NAND2X1
XFILL_2__1875_ gnd vdd FILL
XFILL_8__2842_ gnd vdd FILL
XFILL_8__2422_ gnd vdd FILL
XFILL_8__2002_ gnd vdd FILL
XFILL183450x148350 gnd vdd FILL
XFILL_4__2742_ gnd vdd FILL
XFILL_4__2322_ gnd vdd FILL
XFILL_6__2668_ gnd vdd FILL
XFILL_6__2248_ gnd vdd FILL
X_3387_ alu_op[2] BI[7] _1661_ _1662_ vdd gnd AOI21X1
XFILL_0__2642_ gnd vdd FILL
XFILL_0__2222_ gnd vdd FILL
XFILL_8__3207_ gnd vdd FILL
XFILL_2__3601_ gnd vdd FILL
XFILL_4__3527_ gnd vdd FILL
XFILL_4__3107_ gnd vdd FILL
XFILL_3__1944_ gnd vdd FILL
XFILL_0__3427_ gnd vdd FILL
XFILL_0__3007_ gnd vdd FILL
XFILL_7__2829_ gnd vdd FILL
XFILL_5__2811_ gnd vdd FILL
XFILL_7__2409_ gnd vdd FILL
XFILL_8__3380_ gnd vdd FILL
XFILL_1__2803_ gnd vdd FILL
XFILL_3__2729_ gnd vdd FILL
XFILL_3__2309_ gnd vdd FILL
X_1873_ _1005_ _1009_ _1017_ vdd gnd AND2X2
XFILL_2__3198_ gnd vdd FILL
XFILL_0__3180_ gnd vdd FILL
XFILL_6__1939_ gnd vdd FILL
X_2658_ _383_ _367_ RDY_bF$buf4 _384_ vdd gnd OAI21X1
X_2238_ _1370_ _1371_ _1372_ vdd gnd NAND2X1
XFILL_7__2582_ gnd vdd FILL
XFILL_7__2162_ gnd vdd FILL
XFILL_0__1913_ gnd vdd FILL
XFILL_3__2482_ gnd vdd FILL
XFILL_3__2062_ gnd vdd FILL
XFILL_7__3367_ gnd vdd FILL
XFILL_6__1692_ gnd vdd FILL
XFILL_8__2651_ gnd vdd FILL
XFILL_8__2231_ gnd vdd FILL
XFILL_4__2971_ gnd vdd FILL
XFILL_4__2551_ gnd vdd FILL
XFILL_4__2131_ gnd vdd FILL
XFILL_6__2897_ gnd vdd FILL
XFILL_6__2477_ gnd vdd FILL
X_3196_ _786_ _827_ _825_ _818_ _828_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2057_ gnd vdd FILL
XFILL_2__2889_ gnd vdd FILL
XFILL_0__2871_ gnd vdd FILL
XFILL_0__2451_ gnd vdd FILL
XFILL_2__2469_ gnd vdd FILL
XFILL_8__3436_ gnd vdd FILL
XFILL_0__2031_ gnd vdd FILL
XFILL_2__2049_ gnd vdd FILL
XFILL_8__3016_ gnd vdd FILL
XFILL184650x43050 gnd vdd FILL
XFILL_2__3410_ gnd vdd FILL
X_1929_ _AXYS[2]_[2] _1023_ _1012_ _AXYS[3]_[2] _1071_ vdd 
+ gnd
+ AOI22X1
XFILL_7__1853_ gnd vdd FILL
XFILL_3__1753_ gnd vdd FILL
XFILL_7__2638_ gnd vdd FILL
XFILL_5__2620_ gnd vdd FILL
XFILL_5__2200_ gnd vdd FILL
XFILL_7__2218_ gnd vdd FILL
XFILL_1__2612_ gnd vdd FILL
XFILL_3__2958_ gnd vdd FILL
XFILL_3__2538_ gnd vdd FILL
XFILL_3__2118_ gnd vdd FILL
XFILL_8__1922_ gnd vdd FILL
XFILL_5__3405_ gnd vdd FILL
XFILL_4__1822_ gnd vdd FILL
X_2887_ _1129__bF$buf0 _1178_ _575_ vdd gnd NAND2X1
XFILL_6__1748_ gnd vdd FILL
X_2467_ _968_ _208_ _216_ _217_ vdd gnd OAI21X1
X_2047_ _1182_ _1183_ vdd gnd INVX1
XFILL_7__2391_ gnd vdd FILL
XFILL_0__1722_ gnd vdd FILL
XFILL_8__2707_ gnd vdd FILL
XFILL_3__2291_ gnd vdd FILL
XFILL_4__2607_ gnd vdd FILL
XFILL_7__3596_ gnd vdd FILL
XFILL_7__3176_ gnd vdd FILL
XFILL_0__2927_ gnd vdd FILL
XFILL_0__2507_ gnd vdd FILL
XFILL_1__3150_ gnd vdd FILL
XFILL_3__3496_ gnd vdd FILL
XFILL_3__3076_ gnd vdd FILL
XFILL_7__1909_ gnd vdd FILL
XFILL_8__2880_ gnd vdd FILL
XFILL_8__2460_ gnd vdd FILL
XFILL_8__2040_ gnd vdd FILL
XFILL_3__1809_ gnd vdd FILL
XFILL_4__2780_ gnd vdd FILL
XFILL_4__2360_ gnd vdd FILL
XFILL_6__2286_ gnd vdd FILL
XFILL_0__2680_ gnd vdd FILL
XFILL_2__2698_ gnd vdd FILL
XFILL_0__2260_ gnd vdd FILL
XFILL_2__2278_ gnd vdd FILL
X_1738_ _890_ _891_ vdd gnd INVX2
XFILL_4__3565_ gnd vdd FILL
XFILL_4__3145_ gnd vdd FILL
XFILL_3__1982_ gnd vdd FILL
XFILL_0__3465_ gnd vdd FILL
XFILL_0__3045_ gnd vdd FILL
XFILL_7__2867_ gnd vdd FILL
XFILL_7__2447_ gnd vdd FILL
XFILL_7__2027_ gnd vdd FILL
XFILL_1__2841_ gnd vdd FILL
XFILL_1__2421_ gnd vdd FILL
XFILL_1__2001_ gnd vdd FILL
XFILL_3__2767_ gnd vdd FILL
XFILL_3__2347_ gnd vdd FILL
XFILL_8__1731_ gnd vdd FILL
XFILL_5__3214_ gnd vdd FILL
XFILL_1__3206_ gnd vdd FILL
XFILL_6__1977_ gnd vdd FILL
X_2696_ _418_ _412_ RDY_bF$buf8 _419_ vdd gnd OAI21X1
X_2276_ _882__bF$buf2 _880_ _853__bF$buf2 _1410_ vdd gnd OAI21X1
XFILL_2__1969_ gnd vdd FILL
XFILL_0__1951_ gnd vdd FILL
XFILL_8__2936_ gnd vdd FILL
XFILL_8__2516_ gnd vdd FILL
XFILL_2__2910_ gnd vdd FILL
XFILL_4__2836_ gnd vdd FILL
XFILL_4__2416_ gnd vdd FILL
XFILL_0__2736_ gnd vdd FILL
XFILL_0__2316_ gnd vdd FILL
XFILL_5__1700_ gnd vdd FILL
XFILL_7__1718_ gnd vdd FILL
XFILL_6__2095_ gnd vdd FILL
XFILL_5__2905_ gnd vdd FILL
XFILL_8__3474_ gnd vdd FILL
XFILL_2__2087_ gnd vdd FILL
XFILL_8__3054_ gnd vdd FILL
X_1967_ _AXYS[0]_[6] _1020_ _1105_ vdd gnd NAND2X1
XFILL_7__1891_ gnd vdd FILL
XFILL_4__3374_ gnd vdd FILL
XFILL_3__1791_ gnd vdd FILL
XFILL_7__2676_ gnd vdd FILL
XFILL_7__2256_ gnd vdd FILL
XFILL_1__2650_ gnd vdd FILL
XFILL_1__2230_ gnd vdd FILL
XFILL_3__2996_ gnd vdd FILL
XFILL_3__2576_ gnd vdd FILL
XFILL_3__2156_ gnd vdd FILL
XFILL_8__1960_ gnd vdd FILL
XFILL_5__3443_ gnd vdd FILL
XFILL_5__3023_ gnd vdd FILL
XFILL_1__3435_ gnd vdd FILL
XFILL_1__3015_ gnd vdd FILL
XFILL_4__1860_ gnd vdd FILL
XFILL_6__1786_ gnd vdd FILL
X_2085_ _1220_ _1150_ _1221_ vdd gnd NAND2X1
XFILL_5_BUFX2_insert90 gnd vdd FILL
XFILL_5_BUFX2_insert91 gnd vdd FILL
XFILL_5_BUFX2_insert92 gnd vdd FILL
XFILL_5_BUFX2_insert93 gnd vdd FILL
XFILL_5_BUFX2_insert94 gnd vdd FILL
XFILL_5_BUFX2_insert95 gnd vdd FILL
XFILL_0__1760_ gnd vdd FILL
XFILL_2__1778_ gnd vdd FILL
XFILL_5_BUFX2_insert96 gnd vdd FILL
XFILL_8__2745_ gnd vdd FILL
XFILL_5_BUFX2_insert97 gnd vdd FILL
XFILL_8__2325_ gnd vdd FILL
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
X_1776_ _928_ _927_ _926__bF$buf1 _929_ vdd gnd OAI21X1
XFILL_4__3183_ gnd vdd FILL
XFILL_0__3083_ gnd vdd FILL
XFILL_4__1916_ gnd vdd FILL
XFILL_7__2485_ gnd vdd FILL
XFILL_7__2065_ gnd vdd FILL
XFILL_0__1816_ gnd vdd FILL
X_3502_ _1585_ _1569_ _1587_ _1588_ vdd gnd OAI21X1
XFILL_3__2385_ gnd vdd FILL
XFILL_8__2974_ gnd vdd FILL
XFILL_8__2554_ gnd vdd FILL
XFILL_8__2134_ gnd vdd FILL
XFILL_4__2874_ gnd vdd FILL
XFILL_4__2454_ gnd vdd FILL
XFILL_4__2034_ gnd vdd FILL
X_3099_ _691__bF$buf0 _748_ _AXYS[1]_[3] _752_ vdd gnd OAI21X1
XFILL_0__2774_ gnd vdd FILL
XFILL_0__2354_ gnd vdd FILL
XFILL_7__1756_ gnd vdd FILL
XFILL_1__1730_ gnd vdd FILL
XFILL_0__3559_ gnd vdd FILL
XFILL_0__3139_ gnd vdd FILL
XFILL_5__2943_ gnd vdd FILL
XFILL_5__2523_ gnd vdd FILL
XFILL_5__2103_ gnd vdd FILL
XFILL_8__3092_ gnd vdd FILL
XFILL_1__2935_ gnd vdd FILL
XFILL_1__2515_ gnd vdd FILL
XFILL_8__1825_ gnd vdd FILL
XFILL_4__1725_ gnd vdd FILL
XFILL_7__2294_ gnd vdd FILL
X_3311_ _65_ vdd _1__bF$buf3 clk_bF$buf5 N vdd 
+ gnd
+ DFFSR
XFILL_3__2194_ gnd vdd FILL
XFILL_5__3481_ gnd vdd FILL
XFILL_7__3499_ gnd vdd FILL
XFILL_5__3061_ gnd vdd FILL
XFILL_7__3079_ gnd vdd FILL
XFILL_1__3473_ gnd vdd FILL
XFILL_1__3053_ gnd vdd FILL
XFILL_3__3399_ gnd vdd FILL
XFILL_8__2783_ gnd vdd FILL
XFILL_8__2363_ gnd vdd FILL
XFILL_4__2683_ gnd vdd FILL
XFILL_4__2263_ gnd vdd FILL
XFILL_6__2189_ gnd vdd FILL
XFILL_0__2583_ gnd vdd FILL
XFILL_6__3550_ gnd vdd FILL
XFILL_0__2163_ gnd vdd FILL
XFILL_6__3130_ gnd vdd FILL
XFILL_8__3148_ gnd vdd FILL
XFILL_2__3542_ gnd vdd FILL
XFILL_2__3122_ gnd vdd FILL
XFILL_7__1985_ gnd vdd FILL
XFILL_4__3468_ gnd vdd FILL
XFILL_4__3048_ gnd vdd FILL
XFILL_3__1885_ gnd vdd FILL
XFILL_0__3368_ gnd vdd FILL
XFILL_5__2752_ gnd vdd FILL
XFILL_5__2332_ gnd vdd FILL
XFILL_1__2744_ gnd vdd FILL
XFILL_1__2324_ gnd vdd FILL
XFILL_5__3537_ gnd vdd FILL
XFILL_5__3117_ gnd vdd FILL
XFILL184350x78150 gnd vdd FILL
XFILL_1__3529_ gnd vdd FILL
XFILL_1__3109_ gnd vdd FILL
XFILL181950x35250 gnd vdd FILL
XFILL_4__1954_ gnd vdd FILL
X_2599_ _326_ _329_ _324_ _330_ vdd gnd NAND3X1
X_2179_ _1147_ _1145_ _1314_ vdd gnd AND2X2
XFILL_0__1854_ gnd vdd FILL
XFILL_8__2839_ gnd vdd FILL
XFILL_6__2821_ gnd vdd FILL
X_3540_ HC _1649__bF$buf3 _1625_ vdd gnd NAND2X1
XFILL_6__2401_ gnd vdd FILL
XFILL_8__2419_ gnd vdd FILL
X_3120_ _724_ _757_ _763_ _89_ vdd gnd OAI21X1
XFILL_2__2813_ gnd vdd FILL
XFILL_4__2739_ gnd vdd FILL
XFILL_4__2319_ gnd vdd FILL
XFILL_0__2639_ gnd vdd FILL
XFILL_0__2219_ gnd vdd FILL
XFILL_8__2592_ gnd vdd FILL
XFILL_8__2172_ gnd vdd FILL
XFILL_4__2492_ gnd vdd FILL
XFILL_4__2072_ gnd vdd FILL
XFILL_5__2808_ gnd vdd FILL
XFILL_0__2392_ gnd vdd FILL
XFILL_8__3377_ gnd vdd FILL
XFILL_7__1794_ gnd vdd FILL
X_2811_ _1163_ _516_ vdd gnd INVX1
XFILL_0__3597_ gnd vdd FILL
XFILL_3__1694_ gnd vdd FILL
XFILL_0__3177_ gnd vdd FILL
XFILL_7__2999_ gnd vdd FILL
XFILL_5__2981_ gnd vdd FILL
XFILL_7__2579_ gnd vdd FILL
XFILL_5__2561_ gnd vdd FILL
XFILL_5__2141_ gnd vdd FILL
XFILL_7__2159_ gnd vdd FILL
XFILL_1__2973_ gnd vdd FILL
XFILL_1__2553_ gnd vdd FILL
XFILL_7__3520_ gnd vdd FILL
XFILL_1__2133_ gnd vdd FILL
XFILL_7__3100_ gnd vdd FILL
XFILL_3__2899_ gnd vdd FILL
XFILL_3__2479_ gnd vdd FILL
XFILL_3__2059_ gnd vdd FILL
XFILL_3__3420_ gnd vdd FILL
XFILL_3__3000_ gnd vdd FILL
XFILL_8__1863_ gnd vdd FILL
XFILL_4__1763_ gnd vdd FILL
XFILL_6__1689_ gnd vdd FILL
XFILL_8__2648_ gnd vdd FILL
XFILL_6__2630_ gnd vdd FILL
XFILL_6__2210_ gnd vdd FILL
XFILL_8__2228_ gnd vdd FILL
XFILL_2__2622_ gnd vdd FILL
XFILL_2__2202_ gnd vdd FILL
XFILL_4__2968_ gnd vdd FILL
XFILL_4__2548_ gnd vdd FILL
XFILL_4__2128_ gnd vdd FILL
XFILL_0__2868_ gnd vdd FILL
XFILL_0__2448_ gnd vdd FILL
XFILL_0__2028_ gnd vdd FILL
XFILL_6__3415_ gnd vdd FILL
XFILL_1__3091_ gnd vdd FILL
XFILL_2__3407_ gnd vdd FILL
XFILL_5__1832_ gnd vdd FILL
XFILL_1__1824_ gnd vdd FILL
XFILL_5__2617_ gnd vdd FILL
XFILL_8__3186_ gnd vdd FILL
XFILL_1__2609_ gnd vdd FILL
XFILL_2__3580_ gnd vdd FILL
XFILL_2__3160_ gnd vdd FILL
XFILL_4__3086_ gnd vdd FILL
XFILL_8__1919_ gnd vdd FILL
XFILL_6__1901_ gnd vdd FILL
X_2620_ RDY_bF$buf8 _349_ _350_ vdd gnd NAND2X1
X_2200_ cond_code[2] Z _1335_ vdd gnd AND2X2
XFILL_4__1819_ gnd vdd FILL
XFILL_5__2790_ gnd vdd FILL
XFILL_5__2370_ gnd vdd FILL
XFILL_7__2388_ gnd vdd FILL
XFILL_0__1719_ gnd vdd FILL
X_3405_ _1653_ BI[5] _1679_ vdd gnd AND2X2
XFILL_1__2782_ gnd vdd FILL
XFILL_1__2362_ gnd vdd FILL
XFILL_3__2288_ gnd vdd FILL
XFILL_5__3155_ gnd vdd FILL
XFILL_1__3147_ gnd vdd FILL
XFILL_4__1992_ gnd vdd FILL
XFILL_0__1892_ gnd vdd FILL
XFILL_8__2877_ gnd vdd FILL
XFILL_8__2457_ gnd vdd FILL
XFILL_8__2037_ gnd vdd FILL
XFILL_2__2851_ gnd vdd FILL
XFILL_2__2431_ gnd vdd FILL
XFILL_2__2011_ gnd vdd FILL
XFILL_4__2777_ gnd vdd FILL
XFILL_4__2357_ gnd vdd FILL
XFILL_0__2677_ gnd vdd FILL
XFILL_0__2257_ gnd vdd FILL
XFILL_6__3224_ gnd vdd FILL
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
XFILL_6__1710_ gnd vdd FILL
XFILL_8__1728_ gnd vdd FILL
XFILL_2__1702_ gnd vdd FILL
XFILL_7__2197_ gnd vdd FILL
XFILL_0__1948_ gnd vdd FILL
XFILL_6__2915_ gnd vdd FILL
X_3214_ _802_ _829_ ABL[7] _839_ vdd gnd OAI21X1
XFILL_1__2591_ gnd vdd FILL
XFILL_1__2171_ gnd vdd FILL
XFILL_3__2097_ gnd vdd FILL
XFILL_2__2907_ gnd vdd FILL
XFILL_5__3384_ gnd vdd FILL
XFILL_1__3376_ gnd vdd FILL
XFILL_8__2686_ gnd vdd FILL
XFILL_8__2266_ gnd vdd FILL
XFILL184650x31350 gnd vdd FILL
XFILL_2__2660_ gnd vdd FILL
XFILL_2__2240_ gnd vdd FILL
XFILL_4__2586_ gnd vdd FILL
XFILL_4__2166_ gnd vdd FILL
X_1700_ _857_ DIMUX[3] vdd gnd INVX1
XFILL_0__2486_ gnd vdd FILL
XFILL_6__3453_ gnd vdd FILL
XFILL_0__2066_ gnd vdd FILL
XFILL_6__3033_ gnd vdd FILL
XFILL_2__3445_ gnd vdd FILL
XFILL_2__3025_ gnd vdd FILL
XFILL_5__1870_ gnd vdd FILL
XFILL_7__1888_ gnd vdd FILL
X_2905_ _590_ _591_ vdd gnd INVX1
XFILL_1__1862_ gnd vdd FILL
XFILL_3__1788_ gnd vdd FILL
XFILL_5__2655_ gnd vdd FILL
XFILL_5__2235_ gnd vdd FILL
XFILL_1__2647_ gnd vdd FILL
XFILL_1__2227_ gnd vdd FILL
XFILL_3__3514_ gnd vdd FILL
XFILL_8__1957_ gnd vdd FILL
XFILL_2__1931_ gnd vdd FILL
XFILL_4__1857_ gnd vdd FILL
XFILL_0__1757_ gnd vdd FILL
XFILL_6__2724_ gnd vdd FILL
X_3443_ _1528_ _1675_ _1529_ vdd gnd XOR2X1
XFILL_6__2304_ gnd vdd FILL
X_3023_ _607_ _633_ _687_ vdd gnd NOR2X1
XFILL_2__2716_ gnd vdd FILL
XFILL_5__3193_ gnd vdd FILL
XFILL_6__3509_ gnd vdd FILL
XFILL_1__3185_ gnd vdd FILL
XFILL_5__1926_ gnd vdd FILL
XFILL_8__2495_ gnd vdd FILL
XFILL_8__2075_ gnd vdd FILL
XFILL_1__1918_ gnd vdd FILL
XFILL_4__2395_ gnd vdd FILL
XFILL_0__2295_ gnd vdd FILL
XFILL_7__1697_ gnd vdd FILL
X_2714_ _273_ _1002__bF$buf4 _1145_ _435_ vdd gnd NOR3X1
XFILL_5__2884_ gnd vdd FILL
XFILL_5__2464_ gnd vdd FILL
XFILL_5__2044_ gnd vdd FILL
XFILL_1__2876_ gnd vdd FILL
XFILL_1__2456_ gnd vdd FILL
XFILL_1__2036_ gnd vdd FILL
XFILL_7__3423_ gnd vdd FILL
XFILL_7__3003_ gnd vdd FILL
XFILL_8__1766_ gnd vdd FILL
XFILL_2__1740_ gnd vdd FILL
XFILL_4_CLKBUF1_insert28 gnd vdd FILL
XFILL_4_CLKBUF1_insert29 gnd vdd FILL
XFILL_0__1986_ gnd vdd FILL
XFILL_6__2953_ gnd vdd FILL
XFILL_6__2533_ gnd vdd FILL
XFILL_6__2113_ gnd vdd FILL
X_3252_ _15_ vdd _1__bF$buf0 clk_bF$buf2 PC[13] vdd 
+ gnd
+ DFFSR
XFILL_2__2945_ gnd vdd FILL
XFILL_2__2525_ gnd vdd FILL
XFILL_2__2105_ gnd vdd FILL
XFILL_5__1735_ gnd vdd FILL
XFILL_1__1727_ gnd vdd FILL
XFILL_6__3491_ gnd vdd FILL
XFILL_8__3089_ gnd vdd FILL
XFILL_6__3071_ gnd vdd FILL
XFILL_0_BUFX2_insert40 gnd vdd FILL
XFILL_0_BUFX2_insert41 gnd vdd FILL
XFILL_2__3483_ gnd vdd FILL
XFILL_0_BUFX2_insert42 gnd vdd FILL
XFILL_0_BUFX2_insert43 gnd vdd FILL
XFILL_2__3063_ gnd vdd FILL
XFILL_0_BUFX2_insert44 gnd vdd FILL
XFILL_0_BUFX2_insert45 gnd vdd FILL
XFILL_0_BUFX2_insert46 gnd vdd FILL
XFILL_0_BUFX2_insert47 gnd vdd FILL
XFILL_0_BUFX2_insert48 gnd vdd FILL
XFILL_0_BUFX2_insert49 gnd vdd FILL
X_2943_ reset _618_ IRHOLD[1] _622_ vdd gnd OAI21X1
XFILL_6__1804_ gnd vdd FILL
X_2523_ _187_ _262_ _265_ _266_ vdd gnd NAND3X1
X_2103_ _926__bF$buf0 _1037_ _1239_ vdd gnd NAND2X1
XFILL184050x27450 gnd vdd FILL
XFILL_5__2693_ gnd vdd FILL
XFILL_5__2273_ gnd vdd FILL
X_3308_ _62_ vdd _1__bF$buf3 clk_bF$buf9 V vdd 
+ gnd
+ DFFSR
XFILL_1__2685_ gnd vdd FILL
XFILL_1__2265_ gnd vdd FILL
XFILL_7__3232_ gnd vdd FILL
XFILL_3__3552_ gnd vdd FILL
XFILL_3__3132_ gnd vdd FILL
XFILL_8__1995_ gnd vdd FILL
XFILL_5__3478_ gnd vdd FILL
XFILL_5__3058_ gnd vdd FILL
XFILL_4__1895_ gnd vdd FILL
XFILL_0__1795_ gnd vdd FILL
XFILL_6__2762_ gnd vdd FILL
X_3481_ _1566_ _1567_ vdd gnd INVX1
XFILL_6__2342_ gnd vdd FILL
X_3061_ _AXYS[0]_[3] _693_ _722_ vdd gnd NAND2X1
XFILL_2__2754_ gnd vdd FILL
XFILL_2__2334_ gnd vdd FILL
XFILL_4__3201_ gnd vdd FILL
XFILL_6__3547_ gnd vdd FILL
XFILL_6__3127_ gnd vdd FILL
XFILL_0__3521_ gnd vdd FILL
XFILL_2__3539_ gnd vdd FILL
XFILL_2__3119_ gnd vdd FILL
XFILL_0__3101_ gnd vdd FILL
XFILL_5__1964_ gnd vdd FILL
XFILL_1__1956_ gnd vdd FILL
XFILL_7__2923_ gnd vdd FILL
XFILL_7__2503_ gnd vdd FILL
XFILL_9__2429_ gnd vdd FILL
XFILL_3__2823_ gnd vdd FILL
XFILL_3__2403_ gnd vdd FILL
XFILL_5__2749_ gnd vdd FILL
XFILL_5__2329_ gnd vdd FILL
X_2752_ _459_ _460_ _470_ vdd gnd NAND2X1
X_2332_ _1226_ _1276_ _1243_ _1464_ vdd gnd NAND3X1
XFILL_5__2082_ gnd vdd FILL
XFILL_6__2818_ gnd vdd FILL
X_3537_ _1622_ _1619_ _1610_ _1623_ vdd gnd AOI21X1
X_3117_ _691__bF$buf3 _758_ _AXYS[2]_[3] _762_ vdd gnd OAI21X1
XFILL_1__2494_ gnd vdd FILL
XFILL_7__3461_ gnd vdd FILL
XFILL_1__2074_ gnd vdd FILL
XFILL_7__3041_ gnd vdd FILL
XFILL_6__2991_ gnd vdd FILL
XFILL_6__2571_ gnd vdd FILL
XFILL_8__2589_ gnd vdd FILL
XFILL_8__2169_ gnd vdd FILL
XFILL_6__2151_ gnd vdd FILL
X_3290_ DIMUX[0] vdd _1__bF$buf5 clk_bF$buf2 DIHOLD[0] vdd 
+ gnd
+ DFFSR
XFILL_2__2983_ gnd vdd FILL
XFILL_2__2563_ gnd vdd FILL
XFILL_8__3530_ gnd vdd FILL
XFILL_2__2143_ gnd vdd FILL
XFILL_8__3110_ gnd vdd FILL
XFILL_4__2489_ gnd vdd FILL
XFILL_4__2069_ gnd vdd FILL
XFILL_4__3430_ gnd vdd FILL
XFILL_4__3010_ gnd vdd FILL
XFILL_0__2389_ gnd vdd FILL
XFILL_5__1773_ gnd vdd FILL
X_2808_ sed _514_ vdd gnd INVX1
XFILL_1__1765_ gnd vdd FILL
XFILL_7__2732_ gnd vdd FILL
XFILL_7__2312_ gnd vdd FILL
XFILL_3__2632_ gnd vdd FILL
XFILL_3__2212_ gnd vdd FILL
XFILL_5__2978_ gnd vdd FILL
XFILL_5__2558_ gnd vdd FILL
XFILL_5__2138_ gnd vdd FILL
XFILL_7__3517_ gnd vdd FILL
XFILL_3__3417_ gnd vdd FILL
X_2981_ _630_ _978_ _632_ _650_ vdd gnd AOI21X1
XFILL_6__1842_ gnd vdd FILL
X_2561_ _291_ _208_ _298_ _1685_[13] vdd gnd OAI21X1
X_2141_ _990_ _1277_ vdd gnd INVX1
XFILL_2__1834_ gnd vdd FILL
XFILL_8__2801_ gnd vdd FILL
XFILL_4__2701_ gnd vdd FILL
XFILL_6__2627_ gnd vdd FILL
X_3346_ _99_ vdd _1__bF$buf9 clk_bF$buf10 _AXYS[3]_[6] vdd 
+ gnd
+ DFFSR
XFILL_6__2207_ gnd vdd FILL
XFILL_2__2619_ gnd vdd FILL
XFILL_0__2601_ gnd vdd FILL
XFILL_3__3590_ gnd vdd FILL
XFILL_3__3170_ gnd vdd FILL
XFILL_5__3096_ gnd vdd FILL
XFILL_1__3088_ gnd vdd FILL
XFILL_3__1903_ gnd vdd FILL
XFILL_5__1829_ gnd vdd FILL
XFILL_8__2398_ gnd vdd FILL
XFILL_6__2380_ gnd vdd FILL
XFILL_2__2792_ gnd vdd FILL
XFILL_2__2372_ gnd vdd FILL
XFILL_4__2298_ gnd vdd FILL
XFILL183750x171750 gnd vdd FILL
X_1832_ _886__bF$buf0 _926__bF$buf1 _953_ _976_ vdd gnd OAI21X1
XFILL_0__2198_ gnd vdd FILL
XFILL_6__3585_ gnd vdd FILL
XFILL_6__3165_ gnd vdd FILL
XFILL_2__3157_ gnd vdd FILL
X_2617_ _968_ _343_ _346_ _347_ vdd gnd OAI21X1
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
XBUFX2_insert50 IRHOLD_valid IRHOLD_valid_bF$buf1 vdd gnd BUFX2
XBUFX2_insert51 IRHOLD_valid IRHOLD_valid_bF$buf0 vdd gnd BUFX2
XBUFX2_insert52 _886_ _886__bF$buf3 vdd gnd BUFX2
XBUFX2_insert53 _886_ _886__bF$buf2 vdd gnd BUFX2
XBUFX2_insert54 _886_ _886__bF$buf1 vdd gnd BUFX2
XBUFX2_insert55 _886_ _886__bF$buf0 vdd gnd BUFX2
XBUFX2_insert56 _1649_ _1649__bF$buf3 vdd gnd BUFX2
XBUFX2_insert57 _1649_ _1649__bF$buf2 vdd gnd BUFX2
XBUFX2_insert58 _1649_ _1649__bF$buf1 vdd gnd BUFX2
XBUFX2_insert59 _1649_ _1649__bF$buf0 vdd gnd BUFX2
XFILL_3__3226_ gnd vdd FILL
X_2790_ _853__bF$buf7 _1159_ _501_ _21_ vdd gnd OAI21X1
X_2370_ _124_ _120_ _131_ alu_op[2] vdd gnd OAI21X1
XFILL_8__2610_ gnd vdd FILL
XFILL_4__1989_ gnd vdd FILL
XFILL_4__2930_ gnd vdd FILL
XFILL_4__2510_ gnd vdd FILL
XFILL_0__1889_ gnd vdd FILL
XFILL_6__2856_ gnd vdd FILL
X_3575_ _1493_ vdd _1484_ clk_bF$buf4 ADD[5] vdd 
+ gnd
+ DFFSR
XFILL_6__2436_ gnd vdd FILL
XFILL_6__2016_ gnd vdd FILL
X_3155_ _786_ _787_ vdd gnd INVX1
XFILL_2__2848_ gnd vdd FILL
XFILL_0__2830_ gnd vdd FILL
XFILL_2__2428_ gnd vdd FILL
XFILL_0__2410_ gnd vdd FILL
XFILL_2__2008_ gnd vdd FILL
XFILL_7__1812_ gnd vdd FILL
XFILL_3__1712_ gnd vdd FILL
XFILL_2__2181_ gnd vdd FILL
XFILL_3__2917_ gnd vdd FILL
XFILL_6__3394_ gnd vdd FILL
XFILL_2__3386_ gnd vdd FILL
X_2846_ _1384_ _544_ _543_ _545_ vdd gnd OAI21X1
XFILL_6__1707_ gnd vdd FILL
X_2426_ _975_ _128_ _177_ _178_ vdd gnd OAI21X1
X_2006_ IRHOLD_valid_bF$buf2 DIMUX[3] _1141_ _1142_ vdd gnd OAI21X1
XFILL_7__2770_ gnd vdd FILL
XFILL_7__2350_ gnd vdd FILL
XFILL_3__2670_ gnd vdd FILL
XFILL_3__2250_ gnd vdd FILL
XFILL_5__2596_ gnd vdd FILL
XFILL_5__2176_ gnd vdd FILL
XFILL_1__2588_ gnd vdd FILL
XFILL_1__2168_ gnd vdd FILL
XFILL_7__3555_ gnd vdd FILL
XFILL_7__3135_ gnd vdd FILL
XFILL_3__3455_ gnd vdd FILL
XFILL_3__3035_ gnd vdd FILL
XFILL_6__1880_ gnd vdd FILL
XFILL_8__1898_ gnd vdd FILL
XFILL_2__1872_ gnd vdd FILL
XFILL_4__1798_ gnd vdd FILL
XFILL_0__1698_ gnd vdd FILL
XFILL_6__2665_ gnd vdd FILL
X_3384_ _1658_ _1656_ _1650_ _1659_ vdd gnd OAI21X1
XFILL_6__2245_ gnd vdd FILL
XFILL_2__2657_ gnd vdd FILL
XFILL_2__2237_ gnd vdd FILL
XFILL_8__3204_ gnd vdd FILL
XFILL_4__3524_ gnd vdd FILL
XFILL_4__3104_ gnd vdd FILL
XFILL_3__1941_ gnd vdd FILL
XFILL_0__3424_ gnd vdd FILL
XFILL_0__3004_ gnd vdd FILL
XFILL_5__1867_ gnd vdd FILL
XFILL_1__1859_ gnd vdd FILL
XFILL_7__2826_ gnd vdd FILL
XFILL_7__2406_ gnd vdd FILL
XFILL_1__2800_ gnd vdd FILL
XFILL_3__2726_ gnd vdd FILL
XFILL_3__2306_ gnd vdd FILL
X_1870_ src_reg[1] _1014_ vdd gnd INVX1
XFILL_2__3195_ gnd vdd FILL
XFILL_6__1936_ gnd vdd FILL
X_2655_ PC[5] _336_ _381_ vdd gnd NAND2X1
X_2235_ RDY_bF$buf6 _943_ _1341_ _1369_ vdd gnd NAND3X1
XFILL_3_CLKBUF1_insert30 gnd vdd FILL
XFILL_3_CLKBUF1_insert31 gnd vdd FILL
XFILL_3_CLKBUF1_insert32 gnd vdd FILL
XFILL_3_CLKBUF1_insert33 gnd vdd FILL
XFILL_3_CLKBUF1_insert34 gnd vdd FILL
XFILL_3_CLKBUF1_insert35 gnd vdd FILL
XFILL_3_CLKBUF1_insert36 gnd vdd FILL
XFILL_3_CLKBUF1_insert37 gnd vdd FILL
XFILL_2__1928_ gnd vdd FILL
XFILL_0__1910_ gnd vdd FILL
XFILL_3_CLKBUF1_insert38 gnd vdd FILL
XFILL_1__2397_ gnd vdd FILL
XFILL_7__3364_ gnd vdd FILL
XFILL_6__2894_ gnd vdd FILL
XFILL_6__2474_ gnd vdd FILL
XFILL_6__2054_ gnd vdd FILL
X_3193_ _819_ _824_ _825_ vdd gnd NOR2X1
XFILL_2__2886_ gnd vdd FILL
XFILL_2__2466_ gnd vdd FILL
XFILL_8__3433_ gnd vdd FILL
XFILL_2__2046_ gnd vdd FILL
XFILL_8__3013_ gnd vdd FILL
X_1926_ _1054_ ADD[1] _1068_ _1069_ vdd gnd AOI21X1
XFILL_7__1850_ gnd vdd FILL
XFILL_3__1750_ gnd vdd FILL
XFILL_7__2635_ gnd vdd FILL
XFILL_7__2215_ gnd vdd FILL
XFILL_3__2955_ gnd vdd FILL
XFILL_3__2535_ gnd vdd FILL
XFILL_9__3502_ gnd vdd FILL
XFILL_3__2115_ gnd vdd FILL
XFILL_5__3402_ gnd vdd FILL
X_2884_ _1219__bF$buf0 _521_ _573_ _43_ vdd gnd OAI21X1
XFILL_6__1745_ gnd vdd FILL
X_2464_ _190_ _197_ ADD[1] _214_ vdd gnd OAI21X1
X_2044_ _1177_ _1179_ _1176_ _1180_ vdd gnd OAI21X1
XFILL_2__1737_ gnd vdd FILL
XFILL_8__2704_ gnd vdd FILL
XFILL_4__2604_ gnd vdd FILL
X_3249_ _12_ vdd _1__bF$buf0 clk_bF$buf7 PC[10] vdd 
+ gnd
+ DFFSR
XFILL_7__3593_ gnd vdd FILL
XFILL_7__3173_ gnd vdd FILL
XFILL_0__2924_ gnd vdd FILL
XFILL_0__2504_ gnd vdd FILL
XFILL_3__3493_ gnd vdd FILL
XFILL_3__3073_ gnd vdd FILL
XFILL_7__1906_ gnd vdd FILL
XFILL_3__1806_ gnd vdd FILL
XFILL_6__2283_ gnd vdd FILL
XFILL_2__2695_ gnd vdd FILL
XFILL_2__2275_ gnd vdd FILL
X_1735_ state[0] _888_ vdd gnd INVX1
XFILL_4__3562_ gnd vdd FILL
XFILL_4__3142_ gnd vdd FILL
XFILL_6__3488_ gnd vdd FILL
XFILL_6__3068_ gnd vdd FILL
XFILL_0__3462_ gnd vdd FILL
XFILL_0__3042_ gnd vdd FILL
XFILL_1__1897_ gnd vdd FILL
XFILL_7__2864_ gnd vdd FILL
XFILL_7__2444_ gnd vdd FILL
XFILL_7__2024_ gnd vdd FILL
XFILL_3__2764_ gnd vdd FILL
XFILL_3__2344_ gnd vdd FILL
XFILL_5__3211_ gnd vdd FILL
XFILL_7__3229_ gnd vdd FILL
XFILL_1__3203_ gnd vdd FILL
XFILL_3__3549_ gnd vdd FILL
XFILL_3__3129_ gnd vdd FILL
XFILL_6__1974_ gnd vdd FILL
X_2693_ PC[8] _415_ _414_ _416_ vdd gnd NAND3X1
X_2273_ _1388_ _1406_ _1398_ _1407_ vdd gnd NAND3X1
XFILL_2__1966_ gnd vdd FILL
XFILL_8__2933_ gnd vdd FILL
XFILL_8__2513_ gnd vdd FILL
XFILL_4__2833_ gnd vdd FILL
XFILL_4__2413_ gnd vdd FILL
XFILL_6__2759_ gnd vdd FILL
X_3478_ _1660_ _1529_ _1564_ vdd gnd NAND2X1
XFILL_6__2339_ gnd vdd FILL
X_3058_ _717_ _718_ _719_ vdd gnd AND2X2
XFILL_0__2733_ gnd vdd FILL
XFILL_0__2313_ gnd vdd FILL
XFILL_7__1715_ gnd vdd FILL
XFILL_0__3518_ gnd vdd FILL
XFILL_6__2092_ gnd vdd FILL
XFILL_5__2902_ gnd vdd FILL
XFILL183750x148350 gnd vdd FILL
XFILL_8__3471_ gnd vdd FILL
XFILL_2__2084_ gnd vdd FILL
XFILL_8__3051_ gnd vdd FILL
X_1964_ _1047_ _1099_ _1102_ AI[5] vdd gnd OAI21X1
XFILL_4__3371_ gnd vdd FILL
X_2749_ _466_ _464_ _467_ vdd gnd OR2X2
X_2329_ _1374_ _1204_ _1411_ _1461_ vdd gnd NAND3X1
XFILL_7__2673_ gnd vdd FILL
XFILL_7__2253_ gnd vdd FILL
XFILL_3__2993_ gnd vdd FILL
XFILL_3__2573_ gnd vdd FILL
XFILL_3__2153_ gnd vdd FILL
XFILL_9__3120_ gnd vdd FILL
XFILL_5__2499_ gnd vdd FILL
XFILL_5__2079_ gnd vdd FILL
XFILL_7__3458_ gnd vdd FILL
XFILL_5__3440_ gnd vdd FILL
XFILL_7__3038_ gnd vdd FILL
XFILL_5__3020_ gnd vdd FILL
XFILL_1__3432_ gnd vdd FILL
XFILL_1__3012_ gnd vdd FILL
XFILL_6__1783_ gnd vdd FILL
X_2082_ _853__bF$buf6 _1044_ _1217_ _1129__bF$buf4 _1218_ vdd 
+ gnd
+ AOI22X1
XFILL_5_BUFX2_insert60 gnd vdd FILL
XFILL_5_BUFX2_insert61 gnd vdd FILL
XFILL_5_BUFX2_insert62 gnd vdd FILL
XFILL_5_BUFX2_insert63 gnd vdd FILL
XFILL_5_BUFX2_insert64 gnd vdd FILL
XFILL_2__1775_ gnd vdd FILL
XFILL_5_BUFX2_insert65 gnd vdd FILL
XFILL_8__2742_ gnd vdd FILL
XFILL_5_BUFX2_insert66 gnd vdd FILL
XFILL_8__2322_ gnd vdd FILL
XFILL_5_BUFX2_insert67 gnd vdd FILL
XFILL_5_BUFX2_insert68 gnd vdd FILL
XFILL_5_BUFX2_insert69 gnd vdd FILL
XFILL_4__2642_ gnd vdd FILL
XFILL_4__2222_ gnd vdd FILL
XFILL_6__2988_ gnd vdd FILL
XFILL_6__2568_ gnd vdd FILL
X_3287_ _49_ vdd _1__bF$buf9 clk_bF$buf1 dst_reg[0] vdd 
+ gnd
+ DFFSR
XFILL_6__2148_ gnd vdd FILL
XFILL_0__2962_ gnd vdd FILL
XFILL_0__2542_ gnd vdd FILL
XFILL_8__3527_ gnd vdd FILL
XFILL_0__2122_ gnd vdd FILL
XFILL_8__3107_ gnd vdd FILL
XFILL_2__3501_ gnd vdd FILL
XFILL_7__1944_ gnd vdd FILL
XFILL_4__3427_ gnd vdd FILL
XFILL_4__3007_ gnd vdd FILL
XFILL_3__1844_ gnd vdd FILL
XFILL_9__2811_ gnd vdd FILL
XFILL_7__2729_ gnd vdd FILL
XFILL_5__2711_ gnd vdd FILL
XFILL_7__2309_ gnd vdd FILL
XFILL_1__2703_ gnd vdd FILL
XFILL_3__2629_ gnd vdd FILL
XFILL_3__2209_ gnd vdd FILL
X_1773_ state[5] _917_ _926_ vdd gnd NOR2X1
XFILL_4__3180_ gnd vdd FILL
XFILL_0__3080_ gnd vdd FILL
XFILL_2__3098_ gnd vdd FILL
XFILL_4__1913_ gnd vdd FILL
X_2978_ DIMUX[3] _647_ _1260_ _648_ vdd gnd MUX2X1
XFILL_6__1839_ gnd vdd FILL
X_2558_ ABH[5] _1075_ _295_ _296_ vdd gnd AOI21X1
X_2138_ _977_ _1274_ vdd gnd INVX1
XFILL_7__2482_ gnd vdd FILL
XFILL_7__2062_ gnd vdd FILL
XFILL_0__1813_ gnd vdd FILL
XFILL_3__2382_ gnd vdd FILL
XFILL_3__3587_ gnd vdd FILL
XFILL_3__3167_ gnd vdd FILL
XFILL_8__2971_ gnd vdd FILL
XFILL_8__2551_ gnd vdd FILL
XFILL_8__2131_ gnd vdd FILL
XFILL_4__2871_ gnd vdd FILL
XFILL_4__2451_ gnd vdd FILL
XFILL_4__2031_ gnd vdd FILL
XFILL_6__2797_ gnd vdd FILL
XFILL_6__2377_ gnd vdd FILL
X_3096_ _707_ _747_ _750_ _78_ vdd gnd OAI21X1
XFILL_2__2789_ gnd vdd FILL
XFILL_0__2771_ gnd vdd FILL
XFILL_0__2351_ gnd vdd FILL
XFILL_2__2369_ gnd vdd FILL
X_1829_ _974_ _933_ _863_ _967_ BI[6] vdd 
+ gnd
+ OAI22X1
XFILL_7__1753_ gnd vdd FILL
XFILL_0__3556_ gnd vdd FILL
XFILL_0__3136_ gnd vdd FILL
XFILL_9__2620_ gnd vdd FILL
XFILL_5__1999_ gnd vdd FILL
XFILL_5__2940_ gnd vdd FILL
XFILL_7__2958_ gnd vdd FILL
XFILL_5__2520_ gnd vdd FILL
XFILL_7__2538_ gnd vdd FILL
XFILL_7__2118_ gnd vdd FILL
XFILL_5__2100_ gnd vdd FILL
XFILL_1__2932_ gnd vdd FILL
XFILL_1__2512_ gnd vdd FILL
XFILL_3__2858_ gnd vdd FILL
XFILL_3__2438_ gnd vdd FILL
XFILL_3__2018_ gnd vdd FILL
XFILL_8__1822_ gnd vdd FILL
XFILL_4__1722_ gnd vdd FILL
X_2787_ cond_code[1] _853__bF$buf7 _500_ vdd gnd NAND2X1
X_2367_ _1036_ _1353_ _129_ vdd gnd NOR2X1
XFILL_7__2291_ gnd vdd FILL
XFILL_8__2607_ gnd vdd FILL
XFILL_3__2191_ gnd vdd FILL
XFILL_4__2927_ gnd vdd FILL
XFILL_4__2507_ gnd vdd FILL
XFILL_7__3496_ gnd vdd FILL
XFILL_7__3076_ gnd vdd FILL
XFILL_0__2827_ gnd vdd FILL
XFILL_0__2407_ gnd vdd FILL
XFILL_1__3470_ gnd vdd FILL
XFILL_1__3050_ gnd vdd FILL
XFILL_3__3396_ gnd vdd FILL
XFILL_7__1809_ gnd vdd FILL
XFILL_8__2780_ gnd vdd FILL
XFILL_8__2360_ gnd vdd FILL
XFILL_3__1709_ gnd vdd FILL
XFILL_4__2680_ gnd vdd FILL
XFILL_4__2260_ gnd vdd FILL
XFILL_6__2186_ gnd vdd FILL
XFILL_0__2580_ gnd vdd FILL
XFILL_2__2598_ gnd vdd FILL
XFILL_0__2160_ gnd vdd FILL
XFILL_8__3565_ gnd vdd FILL
XFILL_2__2178_ gnd vdd FILL
XFILL_8__3145_ gnd vdd FILL
XFILL_7__1982_ gnd vdd FILL
XFILL_4__3465_ gnd vdd FILL
XFILL_4__3045_ gnd vdd FILL
XFILL_3__1882_ gnd vdd FILL
XFILL_0__3365_ gnd vdd FILL
XFILL_7__2767_ gnd vdd FILL
XFILL_7__2347_ gnd vdd FILL
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
X_2596_ _1133_ ABL[0] _327_ vdd gnd AND2X2
X_2176_ _1196_ _1310_ _1311_ vdd gnd NOR2X1
XFILL_2__1869_ gnd vdd FILL
XFILL_0__1851_ gnd vdd FILL
XFILL_8__2836_ gnd vdd FILL
XFILL_8__2416_ gnd vdd FILL
XFILL_2__2810_ gnd vdd FILL
XFILL_4__2736_ gnd vdd FILL
XFILL_4__2316_ gnd vdd FILL
XFILL_0__2636_ gnd vdd FILL
XFILL_0__2216_ gnd vdd FILL
XFILL_6__3603_ gnd vdd FILL
XFILL_3__1938_ gnd vdd FILL
XFILL_5__2805_ gnd vdd FILL
XFILL_8__3374_ gnd vdd FILL
X_1867_ _1010_ src_reg[0] _1006_ _1011_ vdd gnd MUX2X1
XFILL_7__1791_ gnd vdd FILL
XFILL_0__3594_ gnd vdd FILL
XFILL_3__1691_ gnd vdd FILL
XFILL_0__3174_ gnd vdd FILL
XFILL184350x54750 gnd vdd FILL
XFILL_7__2996_ gnd vdd FILL
XFILL_7__2576_ gnd vdd FILL
XFILL_7__2156_ gnd vdd FILL
XFILL_0__1907_ gnd vdd FILL
XFILL_1__2970_ gnd vdd FILL
XFILL_1__2550_ gnd vdd FILL
XFILL_1__2130_ gnd vdd FILL
XFILL_3__2896_ gnd vdd FILL
XFILL_3__2476_ gnd vdd FILL
XFILL_9__3443_ gnd vdd FILL
XFILL_3__2056_ gnd vdd FILL
XFILL_8__1860_ gnd vdd FILL
XFILL_4__1760_ gnd vdd FILL
XFILL_8__2645_ gnd vdd FILL
XFILL_8__2225_ gnd vdd FILL
XFILL_4__2965_ gnd vdd FILL
XFILL_4__2545_ gnd vdd FILL
XFILL_4__2125_ gnd vdd FILL
XFILL_0__2865_ gnd vdd FILL
XFILL_0__2445_ gnd vdd FILL
XFILL_0__2025_ gnd vdd FILL
XFILL_6__3412_ gnd vdd FILL
XFILL_2__3404_ gnd vdd FILL
XFILL_7__1847_ gnd vdd FILL
XFILL_1__1821_ gnd vdd FILL
XFILL_3__1747_ gnd vdd FILL
XFILL_5__2614_ gnd vdd FILL
XFILL_8__3183_ gnd vdd FILL
XFILL_1__2606_ gnd vdd FILL
XFILL_4__3083_ gnd vdd FILL
XFILL_8__1916_ gnd vdd FILL
XFILL_4__1816_ gnd vdd FILL
XFILL_7__2385_ gnd vdd FILL
XFILL_0__1716_ gnd vdd FILL
X_3402_ alu_op[3] BI[6] _1675_ _1676_ vdd gnd OAI21X1
XFILL_3__2285_ gnd vdd FILL
XFILL_5__3152_ gnd vdd FILL
XFILL_1__3564_ gnd vdd FILL
XFILL_1__3144_ gnd vdd FILL
XFILL_8__2874_ gnd vdd FILL
XFILL_8__2454_ gnd vdd FILL
XFILL_8__2034_ gnd vdd FILL
XFILL_4__2774_ gnd vdd FILL
XFILL_4__2354_ gnd vdd FILL
XFILL_0__2674_ gnd vdd FILL
XFILL_0__2254_ gnd vdd FILL
XFILL_6__3221_ gnd vdd FILL
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
XFILL_8__1725_ gnd vdd FILL
XFILL_5__3208_ gnd vdd FILL
XFILL_7__2194_ gnd vdd FILL
XFILL_0__1945_ gnd vdd FILL
XFILL_6__2912_ gnd vdd FILL
X_3211_ _831_ _245_ _837_ _106_ vdd gnd OAI21X1
XFILL_3__2094_ gnd vdd FILL
XFILL_2__2904_ gnd vdd FILL
XFILL_5__3381_ gnd vdd FILL
XFILL_7__3399_ gnd vdd FILL
XFILL_1__3373_ gnd vdd FILL
XFILL_8__2683_ gnd vdd FILL
XFILL_8__2263_ gnd vdd FILL
XFILL_4__2583_ gnd vdd FILL
XFILL_4__2163_ gnd vdd FILL
XFILL_6__2089_ gnd vdd FILL
XFILL_0__2483_ gnd vdd FILL
XFILL_6__3450_ gnd vdd FILL
XFILL_8__3468_ gnd vdd FILL
XFILL_0__2063_ gnd vdd FILL
XFILL_8__3048_ gnd vdd FILL
XFILL_6__3030_ gnd vdd FILL
XFILL_2__3442_ gnd vdd FILL
XFILL_2__3022_ gnd vdd FILL
XFILL_7__1885_ gnd vdd FILL
XFILL_4__3368_ gnd vdd FILL
X_2902_ _1215_ _587_ _549_ _588_ vdd gnd OAI21X1
XFILL_3__1785_ gnd vdd FILL
XFILL_9__2752_ gnd vdd FILL
XFILL_5__2652_ gnd vdd FILL
XFILL_5__2232_ gnd vdd FILL
XFILL_1__2644_ gnd vdd FILL
XFILL_1__2224_ gnd vdd FILL
XFILL_3__3511_ gnd vdd FILL
XFILL_8__1954_ gnd vdd FILL
XFILL_5__3437_ gnd vdd FILL
XFILL_5__3017_ gnd vdd FILL
XFILL_1__3429_ gnd vdd FILL
XFILL_1__3009_ gnd vdd FILL
XFILL_4__1854_ gnd vdd FILL
X_2499_ _1098_ _182_ _244_ _245_ vdd gnd AOI21X1
X_2079_ _1214_ _1173_ _1215_ vdd gnd NAND2X1
XFILL_0__1754_ gnd vdd FILL
XFILL_8__2739_ gnd vdd FILL
XFILL_6__2721_ gnd vdd FILL
X_3440_ _1657_ _1525_ _1526_ vdd gnd NAND2X1
XFILL_6__2301_ gnd vdd FILL
XFILL_8__2319_ gnd vdd FILL
X_3020_ backwards _685_ vdd gnd INVX1
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
XFILL_8__2492_ gnd vdd FILL
XFILL_8__2072_ gnd vdd FILL
XFILL_1__1915_ gnd vdd FILL
XFILL_4__2392_ gnd vdd FILL
XFILL_5__2708_ gnd vdd FILL
XFILL_0__2292_ gnd vdd FILL
XFILL_4__3597_ gnd vdd FILL
XFILL_7__1694_ gnd vdd FILL
XFILL_4__3177_ gnd vdd FILL
X_2711_ RDY_bF$buf8 _267_ _432_ _428_ _11_ vdd 
+ gnd
+ OAI22X1
XFILL_0__3497_ gnd vdd FILL
XFILL_0__3077_ gnd vdd FILL
XFILL_9__2561_ gnd vdd FILL
XFILL_7__2899_ gnd vdd FILL
XFILL_5__2881_ gnd vdd FILL
XFILL_5__2461_ gnd vdd FILL
XFILL_7__2479_ gnd vdd FILL
XFILL_5__2041_ gnd vdd FILL
XFILL_7__2059_ gnd vdd FILL
XFILL_1__2873_ gnd vdd FILL
XFILL_1__2453_ gnd vdd FILL
XFILL_1__2033_ gnd vdd FILL
XFILL_7__3420_ gnd vdd FILL
XFILL_7__3000_ gnd vdd FILL
XFILL_3__2799_ gnd vdd FILL
XFILL_3__2379_ gnd vdd FILL
XFILL_8__1763_ gnd vdd FILL
XFILL_0__1983_ gnd vdd FILL
XFILL_6__2950_ gnd vdd FILL
XFILL_8__2968_ gnd vdd FILL
XFILL_8__2548_ gnd vdd FILL
XFILL_6__2530_ gnd vdd FILL
XFILL_6__2110_ gnd vdd FILL
XFILL_8__2128_ gnd vdd FILL
XFILL_2__2942_ gnd vdd FILL
XFILL_2__2522_ gnd vdd FILL
XFILL_2__2102_ gnd vdd FILL
XFILL_4__2868_ gnd vdd FILL
XFILL_4__2448_ gnd vdd FILL
XFILL_4__2028_ gnd vdd FILL
XFILL_0__2768_ gnd vdd FILL
XFILL_0__2348_ gnd vdd FILL
XFILL_5__1732_ gnd vdd FILL
XFILL_1__1724_ gnd vdd FILL
XFILL_5__2937_ gnd vdd FILL
XFILL_5__2517_ gnd vdd FILL
XFILL_8__3086_ gnd vdd FILL
XFILL_1__2929_ gnd vdd FILL
XFILL_1__2509_ gnd vdd FILL
XFILL_0_BUFX2_insert10 gnd vdd FILL
XFILL_0_BUFX2_insert11 gnd vdd FILL
XFILL_2__3480_ gnd vdd FILL
XFILL_0_BUFX2_insert12 gnd vdd FILL
X_1999_ IRHOLD_valid_bF$buf2 DIMUX[1] _1134_ _1135_ vdd gnd OAI21X1
XFILL_2__3060_ gnd vdd FILL
XFILL_0_BUFX2_insert13 gnd vdd FILL
XFILL_0_BUFX2_insert14 gnd vdd FILL
XFILL_0_BUFX2_insert15 gnd vdd FILL
XFILL_0_BUFX2_insert16 gnd vdd FILL
XFILL_0_BUFX2_insert17 gnd vdd FILL
XFILL_0_BUFX2_insert18 gnd vdd FILL
XFILL_0_BUFX2_insert19 gnd vdd FILL
X_2940_ _619_ _620_ vdd gnd INVX2
XFILL_8__1819_ gnd vdd FILL
XFILL_6__1801_ gnd vdd FILL
X_2520_ ADD[0] _263_ vdd gnd INVX1
X_2100_ RDY_bF$buf7 _1039_ _1236_ vdd gnd NAND2X1
XFILL_9__2370_ gnd vdd FILL
XFILL_4__1719_ gnd vdd FILL
XFILL_5__2690_ gnd vdd FILL
XFILL_5__2270_ gnd vdd FILL
XFILL_7__2288_ gnd vdd FILL
X_3305_ _59_ clk_bF$buf5 IRHOLD[6] vdd gnd DFFPOSX1
XFILL_1__2682_ gnd vdd FILL
XFILL_1__2262_ gnd vdd FILL
XFILL_3__2188_ gnd vdd FILL
XFILL_8__1992_ gnd vdd FILL
XFILL_5__3475_ gnd vdd FILL
XFILL_5__3055_ gnd vdd FILL
XFILL_1__3467_ gnd vdd FILL
XFILL_1__3047_ gnd vdd FILL
XFILL_4__1892_ gnd vdd FILL
XFILL_0__1792_ gnd vdd FILL
XFILL_8__2777_ gnd vdd FILL
XFILL_8__2357_ gnd vdd FILL
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
XFILL_1__1953_ gnd vdd FILL
XFILL_7__2920_ gnd vdd FILL
XFILL_7__2500_ gnd vdd FILL
XFILL_3__1879_ gnd vdd FILL
XFILL_3__2820_ gnd vdd FILL
XFILL_3__2400_ gnd vdd FILL
XFILL_5__2746_ gnd vdd FILL
XFILL_5__2326_ gnd vdd FILL
XFILL_1__2738_ gnd vdd FILL
XFILL_1__2318_ gnd vdd FILL
XFILL_4__1948_ gnd vdd FILL
XFILL_7__2097_ gnd vdd FILL
XFILL_0__1848_ gnd vdd FILL
XFILL_6__2815_ gnd vdd FILL
X_3534_ _1603_ _1598_ _1620_ vdd gnd NAND2X1
X_3114_ _707_ _757_ _760_ _86_ vdd gnd OAI21X1
XFILL_1__2491_ gnd vdd FILL
XFILL_1__2071_ gnd vdd FILL
XFILL_9__3384_ gnd vdd FILL
XFILL_2__2807_ gnd vdd FILL
XFILL_8__2586_ gnd vdd FILL
XFILL_8__2166_ gnd vdd FILL
XFILL_2__2980_ gnd vdd FILL
XFILL_2__2560_ gnd vdd FILL
XFILL_2__2140_ gnd vdd FILL
XFILL_4__2486_ gnd vdd FILL
XFILL_4__2066_ gnd vdd FILL
XFILL_0__2386_ gnd vdd FILL
XFILL_5__1770_ gnd vdd FILL
XFILL_7__1788_ gnd vdd FILL
X_2805_ _1159_ _1303_ _512_ vdd gnd NOR2X1
XFILL_1__1762_ gnd vdd FILL
XFILL_3__1688_ gnd vdd FILL
XFILL_5__2975_ gnd vdd FILL
XFILL_5__2555_ gnd vdd FILL
XFILL_5__2135_ gnd vdd FILL
XFILL_1__2967_ gnd vdd FILL
XFILL_1__2547_ gnd vdd FILL
XFILL_7__3514_ gnd vdd FILL
XFILL_1__2127_ gnd vdd FILL
XFILL_3__3414_ gnd vdd FILL
XFILL_8__1857_ gnd vdd FILL
XFILL_2__1831_ gnd vdd FILL
XFILL_4__1757_ gnd vdd FILL
XFILL184650x7950 gnd vdd FILL
XFILL_6__2624_ gnd vdd FILL
X_3343_ _96_ vdd _1__bF$buf1 clk_bF$buf3 _AXYS[3]_[3] vdd 
+ gnd
+ DFFSR
XFILL_6__2204_ gnd vdd FILL
XFILL_2__2616_ gnd vdd FILL
XFILL_5__3093_ gnd vdd FILL
XFILL_6__3409_ gnd vdd FILL
XFILL_1__3085_ gnd vdd FILL
XFILL_3__1900_ gnd vdd FILL
XFILL_5__1826_ gnd vdd FILL
XFILL_8__2395_ gnd vdd FILL
XFILL_1__1818_ gnd vdd FILL
XFILL_4__2295_ gnd vdd FILL
XFILL_0__2195_ gnd vdd FILL
XFILL_6__3582_ gnd vdd FILL
XFILL_6__3162_ gnd vdd FILL
XFILL_2__3154_ gnd vdd FILL
X_2614_ ABL[1] _338_ _344_ vdd gnd NAND2X1
XFILL_1__1991_ gnd vdd FILL
XFILL_5__2784_ gnd vdd FILL
XFILL_5__2364_ gnd vdd FILL
XFILL_1__2776_ gnd vdd FILL
XFILL184050x4050 gnd vdd FILL
XFILL_1__2356_ gnd vdd FILL
XBUFX2_insert20 _1_ _1__bF$buf7 vdd gnd BUFX2
XBUFX2_insert21 _1_ _1__bF$buf6 vdd gnd BUFX2
XBUFX2_insert22 _1_ _1__bF$buf5 vdd gnd BUFX2
XBUFX2_insert23 _1_ _1__bF$buf4 vdd gnd BUFX2
XBUFX2_insert24 _1_ _1__bF$buf3 vdd gnd BUFX2
XBUFX2_insert25 _1_ _1__bF$buf2 vdd gnd BUFX2
XBUFX2_insert26 _1_ _1__bF$buf1 vdd gnd BUFX2
XBUFX2_insert27 _1_ _1__bF$buf0 vdd gnd BUFX2
XFILL_3__3223_ gnd vdd FILL
XFILL_5__3149_ gnd vdd FILL
XFILL_4__1986_ gnd vdd FILL
XFILL_0__1886_ gnd vdd FILL
XFILL_6__2853_ gnd vdd FILL
X_3572_ _1490_ vdd _1484_ clk_bF$buf3 ADD[2] vdd 
+ gnd
+ DFFSR
XFILL_6__2433_ gnd vdd FILL
XFILL_6__2013_ gnd vdd FILL
X_3152_ _881_ _917_ _893_ _784_ vdd gnd OAI21X1
XFILL_2__2845_ gnd vdd FILL
XFILL_2__2425_ gnd vdd FILL
XFILL_2__2005_ gnd vdd FILL
XFILL_6__3218_ gnd vdd FILL
XFILL_3__2914_ gnd vdd FILL
XFILL_6__3391_ gnd vdd FILL
XFILL_2__3383_ gnd vdd FILL
X_2843_ _498_ _541_ _1350_ _542_ vdd gnd OAI21X1
XFILL_6__1704_ gnd vdd FILL
X_2423_ _133_ _1116_ _175_ vdd gnd NAND2X1
X_2003_ _1135_ _1138_ _1139_ vdd gnd NAND2X1
XFILL_5__2593_ gnd vdd FILL
XFILL_5__2173_ gnd vdd FILL
XFILL_6__2909_ gnd vdd FILL
X_3208_ _802_ _829_ ABL[4] _836_ vdd gnd OAI21X1
XFILL_1__2585_ gnd vdd FILL
XFILL_7__3552_ gnd vdd FILL
XFILL_1__2165_ gnd vdd FILL
XFILL_7__3132_ gnd vdd FILL
XFILL_3__3452_ gnd vdd FILL
XFILL_3__3032_ gnd vdd FILL
XFILL_8__1895_ gnd vdd FILL
XFILL_5__3378_ gnd vdd FILL
XFILL_4__1795_ gnd vdd FILL
XFILL_0__1695_ gnd vdd FILL
XFILL_6__2662_ gnd vdd FILL
X_3381_ _1651_ BI[7] _1655_ _1652_ _1656_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2242_ gnd vdd FILL
XFILL_2__2654_ gnd vdd FILL
XFILL_2__2234_ gnd vdd FILL
XFILL_8__3201_ gnd vdd FILL
XFILL_4__3521_ gnd vdd FILL
XFILL_4__3101_ gnd vdd FILL
XFILL_6__3447_ gnd vdd FILL
XFILL_6__3027_ gnd vdd FILL
XFILL_2__3439_ gnd vdd FILL
XFILL_0__3421_ gnd vdd FILL
XFILL_2__3019_ gnd vdd FILL
XFILL_0__3001_ gnd vdd FILL
XFILL_5__1864_ gnd vdd FILL
XFILL_1__1856_ gnd vdd FILL
XFILL_7__2823_ gnd vdd FILL
XFILL_7__2403_ gnd vdd FILL
XFILL_3__2723_ gnd vdd FILL
XFILL_3__2303_ gnd vdd FILL
XFILL_5__2649_ gnd vdd FILL
XFILL_5__2229_ gnd vdd FILL
XFILL_2__3192_ gnd vdd FILL
XFILL_3__3508_ gnd vdd FILL
XFILL_6__1933_ gnd vdd FILL
X_2652_ _973_ _343_ _377_ _378_ vdd gnd OAI21X1
X_2232_ _916_ _918__bF$buf0 _1365_ _1366_ vdd gnd OAI21X1
XFILL_2__1925_ gnd vdd FILL
XFILL_6__2718_ gnd vdd FILL
X_3437_ BI[2] _1523_ vdd gnd INVX1
X_3017_ _1260_ _681_ _682_ _683_ vdd gnd OAI21X1
XFILL_1__2394_ gnd vdd FILL
XFILL_1_BUFX2_insert80 gnd vdd FILL
XFILL_1_BUFX2_insert81 gnd vdd FILL
XFILL_1_BUFX2_insert82 gnd vdd FILL
XFILL_1_BUFX2_insert83 gnd vdd FILL
XFILL_1_BUFX2_insert84 gnd vdd FILL
XFILL_5__3187_ gnd vdd FILL
XFILL_1_BUFX2_insert85 gnd vdd FILL
XFILL_1_BUFX2_insert86 gnd vdd FILL
XFILL_1_BUFX2_insert87 gnd vdd FILL
XFILL_1_BUFX2_insert88 gnd vdd FILL
XFILL_1_BUFX2_insert89 gnd vdd FILL
XFILL_1__3599_ gnd vdd FILL
XFILL_1__3179_ gnd vdd FILL
XFILL_6__2891_ gnd vdd FILL
XFILL_8__2489_ gnd vdd FILL
XFILL_6__2471_ gnd vdd FILL
XFILL_8__2069_ gnd vdd FILL
XFILL_6__2051_ gnd vdd FILL
X_3190_ _821_ _935_ _822_ vdd gnd OR2X2
XFILL_2__2883_ gnd vdd FILL
XFILL_2__2463_ gnd vdd FILL
XFILL_8__3430_ gnd vdd FILL
XFILL_2__2043_ gnd vdd FILL
XFILL_8__3010_ gnd vdd FILL
XFILL_4__2389_ gnd vdd FILL
X_1923_ _1065_ _872_ _1066_ vdd gnd NOR2X1
XFILL_0__2289_ gnd vdd FILL
XFILL_0__3230_ gnd vdd FILL
X_2708_ _405_ _416_ _426_ _429_ _430_ vdd 
+ gnd
+ AOI22X1
XFILL_7__2632_ gnd vdd FILL
XFILL_7__2212_ gnd vdd FILL
XFILL_3__2952_ gnd vdd FILL
XFILL_3__2532_ gnd vdd FILL
XFILL_3__2112_ gnd vdd FILL
XFILL_5__2878_ gnd vdd FILL
XFILL_5__2458_ gnd vdd FILL
XFILL_5__2038_ gnd vdd FILL
XFILL_7__3417_ gnd vdd FILL
X_2881_ _1323_ _551_ _571_ _498_ _572_ vdd 
+ gnd
+ AOI22X1
XFILL_6__1742_ gnd vdd FILL
X_2461_ _931_ _208_ _211_ _212_ vdd gnd OAI21X1
X_2041_ _1138_ _1148_ _1177_ vdd gnd NAND2X1
XFILL_2__1734_ gnd vdd FILL
XFILL_8__2701_ gnd vdd FILL
XFILL_4__2601_ gnd vdd FILL
XFILL_6__2947_ gnd vdd FILL
XFILL_6__2527_ gnd vdd FILL
XFILL_6__2107_ gnd vdd FILL
X_3246_ _9_ vdd _1__bF$buf8 clk_bF$buf7 PC[7] vdd 
+ gnd
+ DFFSR
XFILL_7__3590_ gnd vdd FILL
XFILL_7__3170_ gnd vdd FILL
XFILL_0__2921_ gnd vdd FILL
XFILL_2__2939_ gnd vdd FILL
XFILL_0__2501_ gnd vdd FILL
XFILL_2__2519_ gnd vdd FILL
XFILL_3__3490_ gnd vdd FILL
XFILL_3__3070_ gnd vdd FILL
XFILL_7__1903_ gnd vdd FILL
XFILL_3__1803_ gnd vdd FILL
XFILL_5__1729_ gnd vdd FILL
XFILL_8__2298_ gnd vdd FILL
XFILL_6__2280_ gnd vdd FILL
XFILL_2__2692_ gnd vdd FILL
XFILL_2__2272_ gnd vdd FILL
XFILL_4__2198_ gnd vdd FILL
X_1732_ _884_ _872_ _885_ vdd gnd AND2X2
XFILL_6__3485_ gnd vdd FILL
XFILL_0__2098_ gnd vdd FILL
XFILL_6__3065_ gnd vdd FILL
XFILL_2__3477_ gnd vdd FILL
XFILL_2__3057_ gnd vdd FILL
X_2937_ _1002__bF$buf4 res _52_ vdd gnd AND2X2
X_2517_ PC[8] _260_ vdd gnd INVX1
XFILL_1__1894_ gnd vdd FILL
XFILL_7__2861_ gnd vdd FILL
XFILL_7__2441_ gnd vdd FILL
XFILL_7__2021_ gnd vdd FILL
XFILL_3__2761_ gnd vdd FILL
XFILL_3__2341_ gnd vdd FILL
XFILL_5__2687_ gnd vdd FILL
XFILL_5__2267_ gnd vdd FILL
XFILL_1__2679_ gnd vdd FILL
XFILL_1__2259_ gnd vdd FILL
XFILL_7__3226_ gnd vdd FILL
XFILL_1__3200_ gnd vdd FILL
XFILL_3__3546_ gnd vdd FILL
XFILL_3__3126_ gnd vdd FILL
XFILL_8__1989_ gnd vdd FILL
XFILL_6__1971_ gnd vdd FILL
X_2690_ _887__bF$buf1 _882__bF$buf3 _946_ _916_ _413_ vdd 
+ gnd
+ AOI22X1
X_2270_ _1150_ _1164_ _1217_ _1404_ vdd gnd AOI21X1
XFILL_2__1963_ gnd vdd FILL
XFILL_8__2930_ gnd vdd FILL
XFILL_8__2510_ gnd vdd FILL
XFILL_4__1889_ gnd vdd FILL
XFILL_4__2830_ gnd vdd FILL
XFILL_4__2410_ gnd vdd FILL
XFILL_0__1789_ gnd vdd FILL
XFILL_6__2756_ gnd vdd FILL
X_3475_ _1537_ _1535_ _1561_ vdd gnd NOR2X1
XFILL_6__2336_ gnd vdd FILL
X_3055_ _712_ _716_ vdd gnd INVX1
XFILL_2__2748_ gnd vdd FILL
XFILL_0__2730_ gnd vdd FILL
XFILL_0__2310_ gnd vdd FILL
XFILL_2__2328_ gnd vdd FILL
XFILL_7__1712_ gnd vdd FILL
XFILL_0__3515_ gnd vdd FILL
XFILL_5__1958_ gnd vdd FILL
XFILL_7__2917_ gnd vdd FILL
XFILL_2__2081_ gnd vdd FILL
XFILL_3__2817_ gnd vdd FILL
X_1961_ ABH[5] _1075_ _1100_ vdd gnd NAND2X1
X_2746_ _291_ _333_ _1100_ _464_ vdd gnd OAI21X1
X_2326_ _1415_ _1437_ _1458_ _1483_[3] vdd gnd OAI21X1
XFILL_7__2670_ gnd vdd FILL
XFILL_7__2250_ gnd vdd FILL
XFILL_3__2990_ gnd vdd FILL
XFILL_3__2570_ gnd vdd FILL
XFILL_3__2150_ gnd vdd FILL
XFILL_5__2496_ gnd vdd FILL
XFILL_5__2076_ gnd vdd FILL
XFILL_1__2488_ gnd vdd FILL
XFILL_7__3455_ gnd vdd FILL
XFILL_1__2068_ gnd vdd FILL
XFILL_7__3035_ gnd vdd FILL
XFILL_6__1780_ gnd vdd FILL
XFILL_8__1798_ gnd vdd FILL
XFILL_2__1772_ gnd vdd FILL
XFILL_5_BUFX2_insert39 gnd vdd FILL
XFILL_4__1698_ gnd vdd FILL
XFILL_6__2985_ gnd vdd FILL
XFILL_6__2565_ gnd vdd FILL
X_3284_ _46_ vdd _1__bF$buf10 clk_bF$buf6 index_y vdd 
+ gnd
+ DFFSR
XFILL_6__2145_ gnd vdd FILL
XFILL_2__2977_ gnd vdd FILL
XFILL_2__2557_ gnd vdd FILL
XFILL_8__3524_ gnd vdd FILL
XFILL_2__2137_ gnd vdd FILL
XFILL_8__3104_ gnd vdd FILL
XFILL184050x150 gnd vdd FILL
XFILL_7__1941_ gnd vdd FILL
XFILL_4__3424_ gnd vdd FILL
XFILL_4__3004_ gnd vdd FILL
XFILL_3__1841_ gnd vdd FILL
XFILL_5__1767_ gnd vdd FILL
XFILL_1__1759_ gnd vdd FILL
XFILL_7__2726_ gnd vdd FILL
XFILL_7__2306_ gnd vdd FILL
XFILL_1__2700_ gnd vdd FILL
XFILL_3__2626_ gnd vdd FILL
XFILL_3__2206_ gnd vdd FILL
X_1770_ rotate _922_ _919_ _923_ vdd gnd OAI21X1
XFILL184350x19650 gnd vdd FILL
XFILL_2__3095_ gnd vdd FILL
XFILL_4__1910_ gnd vdd FILL
X_2975_ D _644_ _645_ vdd gnd NAND2X1
XFILL_6__1836_ gnd vdd FILL
X_2555_ ADD[5] _293_ vdd gnd INVX1
X_2135_ _1266_ _1270_ _1258_ _1271_ vdd gnd NOR3X1
XFILL_0__1810_ gnd vdd FILL
XFILL_2__1828_ gnd vdd FILL
XFILL_1__2297_ gnd vdd FILL
XFILL_3__3584_ gnd vdd FILL
XFILL_3__3164_ gnd vdd FILL
XFILL_6__2794_ gnd vdd FILL
XFILL_6__2374_ gnd vdd FILL
X_3093_ _691__bF$buf2 _748_ _AXYS[1]_[0] _749_ vdd gnd OAI21X1
XFILL_2__2786_ gnd vdd FILL
XFILL_2__2366_ gnd vdd FILL
X_1826_ PC[5] _973_ vdd gnd INVX2
XFILL_7__1750_ gnd vdd FILL
XFILL_6__3579_ gnd vdd FILL
XFILL_6__3159_ gnd vdd FILL
XFILL_0__3553_ gnd vdd FILL
XFILL_0__3133_ gnd vdd FILL
XFILL_5__1996_ gnd vdd FILL
XFILL_1__1988_ gnd vdd FILL
XFILL_7__2955_ gnd vdd FILL
XFILL_7__2535_ gnd vdd FILL
XFILL_7__2115_ gnd vdd FILL
XFILL_3__2855_ gnd vdd FILL
XFILL_3__2435_ gnd vdd FILL
XFILL_3__2015_ gnd vdd FILL
X_2784_ _1297_ _498_ vdd gnd INVX2
X_2364_ _125_ _126_ vdd gnd INVX1
XFILL_8__2604_ gnd vdd FILL
XFILL_4__2924_ gnd vdd FILL
XFILL_4__2504_ gnd vdd FILL
X_3569_ _1487_ vdd _1484_ clk_bF$buf0 HC vdd 
+ gnd
+ DFFSR
X_3149_ _881_ _917_ _927_ _781_ vdd gnd OAI21X1
XFILL_7__3493_ gnd vdd FILL
XFILL_7__3073_ gnd vdd FILL
XFILL_0__2824_ gnd vdd FILL
XFILL_0__2404_ gnd vdd FILL
XFILL_3__3393_ gnd vdd FILL
XFILL_7__1806_ gnd vdd FILL
XFILL_3__1706_ gnd vdd FILL
XFILL_6__2183_ gnd vdd FILL
XFILL_2__2595_ gnd vdd FILL
XFILL_8__3562_ gnd vdd FILL
XFILL_2__2175_ gnd vdd FILL
XFILL_8__3142_ gnd vdd FILL
XFILL_4__3462_ gnd vdd FILL
XFILL_4__3042_ gnd vdd FILL
XFILL_6__3388_ gnd vdd FILL
XFILL184050x160050 gnd vdd FILL
XFILL_6_BUFX2_insert80 gnd vdd FILL
XFILL_6_BUFX2_insert81 gnd vdd FILL
XFILL_6_BUFX2_insert82 gnd vdd FILL
XFILL_6_BUFX2_insert83 gnd vdd FILL
XFILL_6_BUFX2_insert84 gnd vdd FILL
XFILL_6_BUFX2_insert85 gnd vdd FILL
XFILL_6_BUFX2_insert86 gnd vdd FILL
XFILL_6_BUFX2_insert87 gnd vdd FILL
XFILL_6_BUFX2_insert88 gnd vdd FILL
XFILL_6_BUFX2_insert89 gnd vdd FILL
XFILL_1__1797_ gnd vdd FILL
XFILL_7__2764_ gnd vdd FILL
XFILL_7__2344_ gnd vdd FILL
XFILL_3__2664_ gnd vdd FILL
XFILL_3__2244_ gnd vdd FILL
XFILL_7__3549_ gnd vdd FILL
XFILL_5__3531_ gnd vdd FILL
XFILL_7__3129_ gnd vdd FILL
XFILL_5__3111_ gnd vdd FILL
XFILL_1__3523_ gnd vdd FILL
XFILL_1__3103_ gnd vdd FILL
XFILL_3__3449_ gnd vdd FILL
XFILL_3__3029_ gnd vdd FILL
XFILL_6__1874_ gnd vdd FILL
X_2593_ _323_ _324_ vdd gnd INVX2
X_2173_ _1307_ _1301_ _1308_ vdd gnd NAND2X1
XFILL_2__1866_ gnd vdd FILL
XFILL_8__2833_ gnd vdd FILL
XFILL_8__2413_ gnd vdd FILL
XFILL_4__2733_ gnd vdd FILL
XFILL_4__2313_ gnd vdd FILL
XFILL_6__2659_ gnd vdd FILL
X_3378_ alu_op[0] _1653_ vdd gnd INVX2
XFILL_6__2239_ gnd vdd FILL
XFILL_0__2633_ gnd vdd FILL
XFILL_0__2213_ gnd vdd FILL
XFILL_6__3600_ gnd vdd FILL
XFILL_4__3518_ gnd vdd FILL
XFILL_3__1935_ gnd vdd FILL
XFILL_0__3418_ gnd vdd FILL
XFILL_5__2802_ gnd vdd FILL
XFILL_8__3371_ gnd vdd FILL
X_1864_ _1002__bF$buf2 _1008_ vdd gnd INVX2
XFILL_6__3197_ gnd vdd FILL
XFILL_0__3591_ gnd vdd FILL
XFILL_0__3171_ gnd vdd FILL
XFILL_2__3189_ gnd vdd FILL
XFILL184650x58650 gnd vdd FILL
X_2649_ _367_ _375_ vdd gnd INVX1
X_2229_ _1228_ _1363_ vdd gnd INVX1
XFILL_7__2993_ gnd vdd FILL
XFILL_7__2573_ gnd vdd FILL
XFILL_7__2153_ gnd vdd FILL
XFILL_0__1904_ gnd vdd FILL
XFILL_3__2893_ gnd vdd FILL
XFILL_3__2473_ gnd vdd FILL
XFILL_3__2053_ gnd vdd FILL
XFILL_5__2399_ gnd vdd FILL
XFILL_8__2642_ gnd vdd FILL
XFILL_8__2222_ gnd vdd FILL
XFILL_4__2962_ gnd vdd FILL
XFILL_4__2542_ gnd vdd FILL
XFILL_4__2122_ gnd vdd FILL
XFILL_6__2888_ gnd vdd FILL
XFILL_6__2468_ gnd vdd FILL
XFILL_6__2048_ gnd vdd FILL
X_3187_ _976_ _819_ vdd gnd INVX1
XFILL_0__2862_ gnd vdd FILL
XFILL_0__2442_ gnd vdd FILL
XFILL_8__3427_ gnd vdd FILL
XFILL_0__2022_ gnd vdd FILL
XFILL_8__3007_ gnd vdd FILL
XFILL_2__3401_ gnd vdd FILL
XFILL_7__1844_ gnd vdd FILL
XFILL_3__1744_ gnd vdd FILL
XFILL_0__3227_ gnd vdd FILL
XFILL_5__2611_ gnd vdd FILL
XFILL_7__2629_ gnd vdd FILL
XFILL_7__2209_ gnd vdd FILL
XFILL_8__3180_ gnd vdd FILL
XFILL_1__2603_ gnd vdd FILL
XFILL_3__2949_ gnd vdd FILL
XFILL_3__2529_ gnd vdd FILL
XFILL_3__2109_ gnd vdd FILL
XFILL_4__3080_ gnd vdd FILL
XFILL_8__1913_ gnd vdd FILL
XFILL_4__1813_ gnd vdd FILL
X_2878_ _569_ _566_ _568_ _41_ vdd gnd OAI21X1
XFILL_6__1739_ gnd vdd FILL
X_2458_ _190_ _197_ ADD[0] _209_ vdd gnd OAI21X1
X_2038_ _1135_ _1174_ vdd gnd INVX1
XFILL_7__2382_ gnd vdd FILL
XFILL_0__1713_ gnd vdd FILL
XFILL_3__2282_ gnd vdd FILL
XFILL_7__3587_ gnd vdd FILL
XFILL_7__3167_ gnd vdd FILL
XFILL_0__2918_ gnd vdd FILL
XFILL_1__3561_ gnd vdd FILL
XFILL_1__3141_ gnd vdd FILL
XFILL_3__3487_ gnd vdd FILL
XFILL_3__3067_ gnd vdd FILL
XFILL_8__2871_ gnd vdd FILL
XFILL_8__2451_ gnd vdd FILL
XFILL_8__2031_ gnd vdd FILL
XFILL_4__2771_ gnd vdd FILL
XFILL_4__2351_ gnd vdd FILL
XFILL_6__2697_ gnd vdd FILL
XFILL_6__2277_ gnd vdd FILL
XFILL_0__2671_ gnd vdd FILL
XFILL_2__2689_ gnd vdd FILL
XFILL_2__2269_ gnd vdd FILL
XFILL_0__2251_ gnd vdd FILL
XFILL_2__3210_ gnd vdd FILL
X_1729_ state[4] _881_ _882_ vdd gnd NAND2X1
XFILL_4__3556_ gnd vdd FILL
XFILL_4__3136_ gnd vdd FILL
XFILL_3__1973_ gnd vdd FILL
XFILL_0__3456_ gnd vdd FILL
XFILL_0__3036_ gnd vdd FILL
XFILL_5__1899_ gnd vdd FILL
XFILL_5__2840_ gnd vdd FILL
XFILL_7__2858_ gnd vdd FILL
XFILL_5__2420_ gnd vdd FILL
XFILL_7__2438_ gnd vdd FILL
XFILL_7__2018_ gnd vdd FILL
XFILL_5__2000_ gnd vdd FILL
XFILL_1__2832_ gnd vdd FILL
XFILL_1__2412_ gnd vdd FILL
XFILL_3__2758_ gnd vdd FILL
XFILL_3__2338_ gnd vdd FILL
XFILL_8__1722_ gnd vdd FILL
XFILL_5__3205_ gnd vdd FILL
XFILL_6__1968_ gnd vdd FILL
X_2687_ _382_ _409_ _410_ vdd gnd NAND2X1
X_2267_ _1350_ _1400_ _1401_ vdd gnd NAND2X1
XFILL_7__2191_ gnd vdd FILL
XFILL_0__1942_ gnd vdd FILL
XFILL_8__2927_ gnd vdd FILL
XFILL_8__2507_ gnd vdd FILL
XFILL_3__2091_ gnd vdd FILL
XFILL_2__2901_ gnd vdd FILL
XFILL_4__2827_ gnd vdd FILL
XFILL_4__2407_ gnd vdd FILL
XFILL_7__3396_ gnd vdd FILL
XFILL_0__2727_ gnd vdd FILL
XFILL_0__2307_ gnd vdd FILL
XFILL_1__3370_ gnd vdd FILL
XFILL_7__1709_ gnd vdd FILL
XFILL_8__2680_ gnd vdd FILL
XFILL_8__2260_ gnd vdd FILL
XFILL_4__2580_ gnd vdd FILL
XFILL_4__2160_ gnd vdd FILL
XFILL_6__2086_ gnd vdd FILL
XFILL_2__2498_ gnd vdd FILL
XFILL_0__2480_ gnd vdd FILL
XFILL_8__3465_ gnd vdd FILL
XFILL_2__2078_ gnd vdd FILL
XFILL_0__2060_ gnd vdd FILL
XFILL_8__3045_ gnd vdd FILL
X_1958_ _AXYS[0]_[5] _1020_ _1097_ vdd gnd NAND2X1
XFILL_7__1882_ gnd vdd FILL
XFILL_4__3365_ gnd vdd FILL
XFILL_3__1782_ gnd vdd FILL
XFILL_7__2667_ gnd vdd FILL
XFILL_7__2247_ gnd vdd FILL
XFILL_1__2641_ gnd vdd FILL
XFILL_1__2221_ gnd vdd FILL
XFILL_3__2987_ gnd vdd FILL
XFILL_3__2567_ gnd vdd FILL
XFILL_3__2147_ gnd vdd FILL
XFILL_8__1951_ gnd vdd FILL
XFILL_5__3434_ gnd vdd FILL
XFILL_5__3014_ gnd vdd FILL
XFILL_1__3426_ gnd vdd FILL
XFILL_1__3006_ gnd vdd FILL
XFILL_4__1851_ gnd vdd FILL
XFILL_6__1777_ gnd vdd FILL
X_2496_ ABL[5] _199_ _241_ _242_ vdd gnd AOI21X1
X_2076_ _1211_ _1197_ _1212_ vdd gnd AND2X2
XFILL_2__1769_ gnd vdd FILL
XFILL_0__1751_ gnd vdd FILL
XFILL_8__2736_ gnd vdd FILL
XFILL_8__2316_ gnd vdd FILL
XFILL_2__2710_ gnd vdd FILL
XFILL_4__2636_ gnd vdd FILL
XFILL_4__2216_ gnd vdd FILL
XFILL_0__2956_ gnd vdd FILL
XFILL_0__2536_ gnd vdd FILL
XFILL_6__3503_ gnd vdd FILL
XFILL_0__2116_ gnd vdd FILL
XFILL_7__1938_ gnd vdd FILL
XFILL_5__1920_ gnd vdd FILL
XFILL_1__1912_ gnd vdd FILL
XFILL_3__1838_ gnd vdd FILL
XFILL_5__2705_ gnd vdd FILL
X_1767_ compare _920_ vdd gnd INVX1
XFILL_4__3594_ gnd vdd FILL
XFILL_7__1691_ gnd vdd FILL
XFILL_4__3174_ gnd vdd FILL
XFILL_0__3494_ gnd vdd FILL
XFILL_0__3074_ gnd vdd FILL
XFILL_4__1907_ gnd vdd FILL
XFILL_7__2896_ gnd vdd FILL
XFILL_7__2476_ gnd vdd FILL
XFILL_7__2056_ gnd vdd FILL
XFILL_0__1807_ gnd vdd FILL
XFILL_1__2870_ gnd vdd FILL
XFILL_1__2450_ gnd vdd FILL
XFILL_1__2030_ gnd vdd FILL
XFILL_3__2796_ gnd vdd FILL
XFILL_3__2376_ gnd vdd FILL
XFILL_8__1760_ gnd vdd FILL
XFILL_2__1998_ gnd vdd FILL
XFILL_0__1980_ gnd vdd FILL
XFILL_8__2965_ gnd vdd FILL
XFILL_8__2545_ gnd vdd FILL
XFILL_8__2125_ gnd vdd FILL
XFILL_4__2865_ gnd vdd FILL
XFILL_4__2445_ gnd vdd FILL
XFILL_4__2025_ gnd vdd FILL
XFILL_0__2765_ gnd vdd FILL
XFILL_0__2345_ gnd vdd FILL
XFILL_7__1747_ gnd vdd FILL
XFILL_1__1721_ gnd vdd FILL
XFILL_1_CLKBUF1_insert28 gnd vdd FILL
XFILL_1_CLKBUF1_insert29 gnd vdd FILL
XFILL_5__2934_ gnd vdd FILL
XFILL_5__2514_ gnd vdd FILL
XFILL_8__3083_ gnd vdd FILL
XFILL_1__2926_ gnd vdd FILL
XFILL_1__2506_ gnd vdd FILL
XFILL184350x152250 gnd vdd FILL
X_1996_ NMI_edge _1132_ vdd gnd INVX1
XFILL_8__1816_ gnd vdd FILL
XFILL_4__1716_ gnd vdd FILL
XFILL_7__2285_ gnd vdd FILL
X_3302_ _56_ clk_bF$buf10 IRHOLD[3] vdd gnd DFFPOSX1
XFILL_3__2185_ gnd vdd FILL
XFILL_5__3472_ gnd vdd FILL
XFILL_5__3052_ gnd vdd FILL
XFILL_1__3464_ gnd vdd FILL
XFILL_1__3044_ gnd vdd FILL
XFILL_8__2774_ gnd vdd FILL
XFILL_8__2354_ gnd vdd FILL
XFILL_4__2674_ gnd vdd FILL
XFILL_4__2254_ gnd vdd FILL
XFILL_0__2994_ gnd vdd FILL
XFILL_0__2574_ gnd vdd FILL
XFILL_8__3559_ gnd vdd FILL
XFILL_6__3541_ gnd vdd FILL
XFILL_0__2154_ gnd vdd FILL
XFILL_6__3121_ gnd vdd FILL
XFILL_8__3139_ gnd vdd FILL
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
XFILL_1__2315_ gnd vdd FILL
XFILL_3__3602_ gnd vdd FILL
XFILL_5__3528_ gnd vdd FILL
XFILL_5__3108_ gnd vdd FILL
XFILL_4__1945_ gnd vdd FILL
XFILL_7__2094_ gnd vdd FILL
XFILL_0__1845_ gnd vdd FILL
XFILL_6__2812_ gnd vdd FILL
X_3531_ _1616_ _1615_ _1617_ vdd gnd NAND2X1
X_3111_ _691__bF$buf2 _758_ _AXYS[2]_[0] _759_ vdd gnd OAI21X1
XFILL_2__2804_ gnd vdd FILL
XFILL_3__3199_ gnd vdd FILL
XFILL_8__2583_ gnd vdd FILL
XFILL_8__2163_ gnd vdd FILL
XFILL_4__2483_ gnd vdd FILL
XFILL_4__2063_ gnd vdd FILL
XFILL_0__2383_ gnd vdd FILL
XFILL_8__3368_ gnd vdd FILL
XFILL_7__1785_ gnd vdd FILL
X_2802_ _1220_ _509_ _510_ vdd gnd NAND2X1
XFILL_0__3588_ gnd vdd FILL
XFILL_0__3168_ gnd vdd FILL
XFILL_5__2972_ gnd vdd FILL
XFILL_5__2552_ gnd vdd FILL
XFILL_5__2132_ gnd vdd FILL
XFILL_1__2964_ gnd vdd FILL
XFILL_1__2544_ gnd vdd FILL
XFILL_7__3511_ gnd vdd FILL
XFILL_1__2124_ gnd vdd FILL
XFILL_9__3017_ gnd vdd FILL
XFILL_3__3411_ gnd vdd FILL
XFILL_8__1854_ gnd vdd FILL
XFILL_4__1754_ gnd vdd FILL
X_2399_ _133_ _1082_ _155_ vdd gnd NAND2X1
XFILL_8__2639_ gnd vdd FILL
XFILL_6__2621_ gnd vdd FILL
X_3340_ _93_ vdd _1__bF$buf9 clk_bF$buf10 _AXYS[3]_[0] vdd 
+ gnd
+ DFFSR
XFILL_6__2201_ gnd vdd FILL
XFILL_8__2219_ gnd vdd FILL
XFILL_2__2613_ gnd vdd FILL
XFILL_4__2959_ gnd vdd FILL
XFILL_4__2539_ gnd vdd FILL
XFILL_4__2119_ gnd vdd FILL
XFILL_5__3090_ gnd vdd FILL
XFILL_0__2859_ gnd vdd FILL
XFILL_0__2439_ gnd vdd FILL
XFILL_0__2019_ gnd vdd FILL
XFILL_6__3406_ gnd vdd FILL
XFILL_1__3082_ gnd vdd FILL
XFILL_5__1823_ gnd vdd FILL
XFILL_8__2392_ gnd vdd FILL
XFILL_1__1815_ gnd vdd FILL
XFILL_9__2708_ gnd vdd FILL
XFILL_4__2292_ gnd vdd FILL
XFILL_5__2608_ gnd vdd FILL
XFILL_8__3597_ gnd vdd FILL
XFILL_0__2192_ gnd vdd FILL
XFILL_8__3177_ gnd vdd FILL
XFILL_2__3151_ gnd vdd FILL
XFILL_4__3497_ gnd vdd FILL
XFILL_4__3077_ gnd vdd FILL
X_2611_ RDY_bF$buf5 _341_ _342_ vdd gnd NAND2X1
XFILL_0__3397_ gnd vdd FILL
XFILL_7__2799_ gnd vdd FILL
XFILL_5__2781_ gnd vdd FILL
XFILL_5__2361_ gnd vdd FILL
XFILL_7__2379_ gnd vdd FILL
XFILL_1__2773_ gnd vdd FILL
XFILL_1__2353_ gnd vdd FILL
XFILL_3__2699_ gnd vdd FILL
XFILL_3__2279_ gnd vdd FILL
XFILL_3__3220_ gnd vdd FILL
XFILL_5__3566_ gnd vdd FILL
XFILL_5__3146_ gnd vdd FILL
XFILL_1__3558_ gnd vdd FILL
XFILL_1__3138_ gnd vdd FILL
XFILL_4__1983_ gnd vdd FILL
XFILL_0__1883_ gnd vdd FILL
XFILL_6__2850_ gnd vdd FILL
XFILL_8__2868_ gnd vdd FILL
XFILL_6__2430_ gnd vdd FILL
XFILL_8__2448_ gnd vdd FILL
XFILL_8__2028_ gnd vdd FILL
XFILL_6__2010_ gnd vdd FILL
XFILL_2__2842_ gnd vdd FILL
XFILL_2__2422_ gnd vdd FILL
XFILL_2__2002_ gnd vdd FILL
XFILL_4__2768_ gnd vdd FILL
XFILL_4__2348_ gnd vdd FILL
XFILL_0__2668_ gnd vdd FILL
XFILL_0__2248_ gnd vdd FILL
XFILL_6__3215_ gnd vdd FILL
XFILL_2__3207_ gnd vdd FILL
XFILL_9__2517_ gnd vdd FILL
XFILL_3__2911_ gnd vdd FILL
XFILL_5__2837_ gnd vdd FILL
XFILL_5__2417_ gnd vdd FILL
XFILL_1__2829_ gnd vdd FILL
XFILL_1__2409_ gnd vdd FILL
XFILL_2__3380_ gnd vdd FILL
X_1899_ _934_ _1043_ vdd gnd INVX1
XFILL182250x109350 gnd vdd FILL
X_2840_ _1383_ _539_ _1159_ _540_ vdd gnd OAI21X1
XFILL_6__1701_ gnd vdd FILL
XFILL_8__1719_ gnd vdd FILL
X_2420_ _974_ _128_ _172_ _173_ vdd gnd OAI21X1
X_2000_ IRHOLD[0] _1136_ vdd gnd INVX1
XFILL_5__2590_ gnd vdd FILL
XFILL_7__2188_ gnd vdd FILL
XFILL_5__2170_ gnd vdd FILL
XFILL_0__1939_ gnd vdd FILL
XFILL_6__2906_ gnd vdd FILL
X_3205_ _831_ _223_ _834_ _103_ vdd gnd OAI21X1
XFILL_1__2582_ gnd vdd FILL
XFILL_1__2162_ gnd vdd FILL
XFILL_3__2088_ gnd vdd FILL
XFILL_8__1892_ gnd vdd FILL
XFILL_5__3375_ gnd vdd FILL
XFILL_1__3367_ gnd vdd FILL
XFILL_4__1792_ gnd vdd FILL
XFILL_0__1692_ gnd vdd FILL
XFILL_8__2677_ gnd vdd FILL
XFILL_8__2257_ gnd vdd FILL
XFILL_2__2651_ gnd vdd FILL
XFILL_2__2231_ gnd vdd FILL
XFILL_4__2997_ gnd vdd FILL
XFILL_4__2577_ gnd vdd FILL
XFILL_4__2157_ gnd vdd FILL
XFILL_0__2897_ gnd vdd FILL
XFILL_0__2477_ gnd vdd FILL
XFILL_6__3444_ gnd vdd FILL
XFILL_0__2057_ gnd vdd FILL
XFILL_6__3024_ gnd vdd FILL
XFILL_2__3436_ gnd vdd FILL
XFILL_2__3016_ gnd vdd FILL
XFILL_7__1879_ gnd vdd FILL
XFILL_5__1861_ gnd vdd FILL
XFILL_1__1853_ gnd vdd FILL
XFILL_7__2820_ gnd vdd FILL
XFILL_7__2400_ gnd vdd FILL
XFILL_3__1779_ gnd vdd FILL
XFILL_9__2326_ gnd vdd FILL
XFILL_3__2720_ gnd vdd FILL
XFILL_3__2300_ gnd vdd FILL
XFILL_5__2646_ gnd vdd FILL
XFILL_5__2226_ gnd vdd FILL
XFILL_1__2638_ gnd vdd FILL
XFILL_1__2218_ gnd vdd FILL
XFILL_3__3505_ gnd vdd FILL
XFILL_8__1948_ gnd vdd FILL
XFILL_6__1930_ gnd vdd FILL
XFILL_2__1922_ gnd vdd FILL
XFILL_4__1848_ gnd vdd FILL
XFILL_0__1748_ gnd vdd FILL
XFILL_6__2715_ gnd vdd FILL
X_3434_ AI[3] alu_shift_right _1520_ vdd gnd NAND2X1
X_3014_ CO _673_ _680_ vdd gnd NAND2X1
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
XFILL_5__1917_ gnd vdd FILL
XFILL_0_CLKBUF1_insert31 gnd vdd FILL
XFILL_0_CLKBUF1_insert32 gnd vdd FILL
XFILL_0_CLKBUF1_insert33 gnd vdd FILL
XFILL_0_CLKBUF1_insert34 gnd vdd FILL
XFILL_0_CLKBUF1_insert35 gnd vdd FILL
XFILL_0_CLKBUF1_insert36 gnd vdd FILL
XFILL_0_CLKBUF1_insert37 gnd vdd FILL
XFILL_0_CLKBUF1_insert38 gnd vdd FILL
XFILL_8__2486_ gnd vdd FILL
XFILL_8__2066_ gnd vdd FILL
XFILL_1__1909_ gnd vdd FILL
XFILL_2__2880_ gnd vdd FILL
XFILL_2__2460_ gnd vdd FILL
XFILL_2__2040_ gnd vdd FILL
XFILL_4__2386_ gnd vdd FILL
X_1920_ _1060_ _1062_ _1061_ _1063_ vdd gnd NAND3X1
XFILL_0__2286_ gnd vdd FILL
XFILL_7__1688_ gnd vdd FILL
X_2705_ _267_ _324_ _426_ _427_ vdd gnd OAI21X1
XFILL_5__2875_ gnd vdd FILL
XFILL_5__2455_ gnd vdd FILL
XFILL_5__2035_ gnd vdd FILL
XFILL_1__2867_ gnd vdd FILL
XFILL_1__2447_ gnd vdd FILL
XFILL_1__2027_ gnd vdd FILL
XFILL_7__3414_ gnd vdd FILL
XFILL_8__1757_ gnd vdd FILL
XFILL_2__1731_ gnd vdd FILL
XFILL_0__1977_ gnd vdd FILL
XFILL_6__2944_ gnd vdd FILL
XFILL_6__2524_ gnd vdd FILL
XFILL_6__2104_ gnd vdd FILL
X_3243_ _6_ vdd _1__bF$buf5 clk_bF$buf2 PC[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2936_ gnd vdd FILL
XFILL_2__2516_ gnd vdd FILL
XFILL_7__1900_ gnd vdd FILL
XFILL_3__1800_ gnd vdd FILL
XFILL_5__1726_ gnd vdd FILL
XFILL_8__2295_ gnd vdd FILL
XFILL_1__1718_ gnd vdd FILL
XFILL_4__2195_ gnd vdd FILL
XFILL_6__3482_ gnd vdd FILL
XFILL_0__2095_ gnd vdd FILL
XFILL_6__3062_ gnd vdd FILL
XFILL_2__3474_ gnd vdd FILL
XFILL_2__3054_ gnd vdd FILL
X_2934_ _613_ _615_ _614_ _616_ vdd gnd NAND3X1
X_2514_ _975_ _208_ _257_ _258_ vdd gnd OAI21X1
XFILL_1__1891_ gnd vdd FILL
XFILL_5__2684_ gnd vdd FILL
XFILL_5__2264_ gnd vdd FILL
XFILL_1__2676_ gnd vdd FILL
XFILL_1__2256_ gnd vdd FILL
XFILL_7__3223_ gnd vdd FILL
XFILL_3__3543_ gnd vdd FILL
XFILL_3__3123_ gnd vdd FILL
XFILL_8__1986_ gnd vdd FILL
XFILL_5__3469_ gnd vdd FILL
XFILL_5__3049_ gnd vdd FILL
XFILL_2__1960_ gnd vdd FILL
XFILL_4__1886_ gnd vdd FILL
XFILL_0__1786_ gnd vdd FILL
XFILL_6__2753_ gnd vdd FILL
X_3472_ _1557_ _1556_ _1558_ vdd gnd NAND2X1
XFILL_6__2333_ gnd vdd FILL
X_3052_ DIMUX[2] _1281_ _713_ _711_ _714_ vdd 
+ gnd
+ AOI22X1
XFILL_2__2745_ gnd vdd FILL
XFILL_2__2325_ gnd vdd FILL
XFILL_6__3538_ gnd vdd FILL
XFILL_6__3118_ gnd vdd FILL
XFILL_0__3512_ gnd vdd FILL
XFILL_5__1955_ gnd vdd FILL
XFILL_1__1947_ gnd vdd FILL
XFILL_7__2914_ gnd vdd FILL
XFILL_3__2814_ gnd vdd FILL
XFILL182550x35250 gnd vdd FILL
X_2743_ RDY_bF$buf5 _461_ _462_ vdd gnd NAND2X1
X_2323_ _1308_ _1455_ _1456_ vdd gnd NOR2X1
XFILL_5__2493_ gnd vdd FILL
XFILL_5__2073_ gnd vdd FILL
XFILL_6__2809_ gnd vdd FILL
X_3528_ _1613_ _1611_ _1586_ _1614_ vdd gnd AOI21X1
X_3108_ _745_ _747_ _756_ _84_ vdd gnd OAI21X1
XFILL_1__2485_ gnd vdd FILL
XFILL_7__3452_ gnd vdd FILL
XFILL_1__2065_ gnd vdd FILL
XFILL_7__3032_ gnd vdd FILL
XFILL_8__1795_ gnd vdd FILL
XFILL_4__1695_ gnd vdd FILL
XFILL_6__2982_ gnd vdd FILL
XFILL_6__2562_ gnd vdd FILL
X_3281_ _43_ vdd _1__bF$buf7 clk_bF$buf1 load_only vdd 
+ gnd
+ DFFSR
XFILL_6__2142_ gnd vdd FILL
XFILL_2__2974_ gnd vdd FILL
XFILL_2__2554_ gnd vdd FILL
XFILL_8__3521_ gnd vdd FILL
XFILL_2__2134_ gnd vdd FILL
XFILL_8__3101_ gnd vdd FILL
XFILL_4__3421_ gnd vdd FILL
XFILL_4__3001_ gnd vdd FILL
XFILL_5__1764_ gnd vdd FILL
XFILL_1__1756_ gnd vdd FILL
XFILL_7__2723_ gnd vdd FILL
XFILL_7__2303_ gnd vdd FILL
XFILL_9__2649_ gnd vdd FILL
XFILL184350x140550 gnd vdd FILL
XFILL_3__2623_ gnd vdd FILL
XFILL_3__2203_ gnd vdd FILL
XFILL_5__2969_ gnd vdd FILL
XFILL_5__2549_ gnd vdd FILL
XFILL_5__2129_ gnd vdd FILL
XFILL_7__3508_ gnd vdd FILL
XFILL_2__3092_ gnd vdd FILL
XFILL_3__3408_ gnd vdd FILL
X_2972_ plp cld _642_ vdd gnd NOR2X1
XFILL_6__1833_ gnd vdd FILL
X_2552_ _283_ _208_ _290_ _1685_[12] vdd gnd OAI21X1
X_2132_ CO backwards _1268_ vdd gnd XOR2X1
XFILL_2__1825_ gnd vdd FILL
XFILL_6__2618_ gnd vdd FILL
X_3337_ _91_ vdd _1__bF$buf9 clk_bF$buf3 _AXYS[2]_[6] vdd 
+ gnd
+ DFFSR
XFILL_1__2294_ gnd vdd FILL
XFILL_3__3581_ gnd vdd FILL
XFILL_3__3161_ gnd vdd FILL
XFILL_5__3087_ gnd vdd FILL
XFILL_1__3499_ gnd vdd FILL
XFILL_1__3079_ gnd vdd FILL
XFILL_6__2791_ gnd vdd FILL
XFILL_6__2371_ gnd vdd FILL
XFILL_8__2389_ gnd vdd FILL
X_3090_ _693_ _745_ _746_ _76_ vdd gnd OAI21X1
XFILL_2__2783_ gnd vdd FILL
XFILL_2__2363_ gnd vdd FILL
XFILL_4__2289_ gnd vdd FILL
X_1823_ _971_ _933_ _857_ _967_ BI[3] vdd 
+ gnd
+ OAI22X1
XFILL_4__3230_ gnd vdd FILL
XFILL_0__2189_ gnd vdd FILL
XFILL_6__3156_ gnd vdd FILL
XFILL_0__3550_ gnd vdd FILL
XFILL_0__3130_ gnd vdd FILL
XFILL_2__3148_ gnd vdd FILL
XFILL_5__1993_ gnd vdd FILL
X_2608_ ABL[0] _338_ _321_ ADD[0] _339_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1985_ gnd vdd FILL
XFILL_7__2952_ gnd vdd FILL
XFILL_7__2532_ gnd vdd FILL
XFILL_7__2112_ gnd vdd FILL
XFILL_9__2458_ gnd vdd FILL
XFILL_3__2852_ gnd vdd FILL
XFILL_3__2432_ gnd vdd FILL
XFILL_3__2012_ gnd vdd FILL
XFILL_5__2778_ gnd vdd FILL
XFILL_5__2358_ gnd vdd FILL
XFILL_3__3217_ gnd vdd FILL
X_2781_ _918__bF$buf0 _961_ NMI_edge _496_ vdd gnd OAI21X1
X_2361_ _123_ _120_ _122_ alu_op[1] vdd gnd OAI21X1
XFILL_8__2601_ gnd vdd FILL
XFILL_4__2921_ gnd vdd FILL
XFILL_4__2501_ gnd vdd FILL
XFILL_6__2847_ gnd vdd FILL
X_3566_ RDY_bF$buf2 _1640_ _1641_ _1496_ vdd gnd OAI21X1
XFILL_6__2427_ gnd vdd FILL
XFILL_6__2007_ gnd vdd FILL
X_3146_ _1037_ _777_ _778_ vdd gnd NOR2X1
XFILL_7__3490_ gnd vdd FILL
XFILL_7__3070_ gnd vdd FILL
XFILL_2__2839_ gnd vdd FILL
XFILL_0__2821_ gnd vdd FILL
XFILL_0__2401_ gnd vdd FILL
XFILL_2__2419_ gnd vdd FILL
XFILL_3__3390_ gnd vdd FILL
XFILL_7__1803_ gnd vdd FILL
XFILL_3__1703_ gnd vdd FILL
XFILL_6__2180_ gnd vdd FILL
XFILL_8__2198_ gnd vdd FILL
XFILL_2__2592_ gnd vdd FILL
XFILL_2__2172_ gnd vdd FILL
XFILL_4__2098_ gnd vdd FILL
XFILL_3__2908_ gnd vdd FILL
XFILL_6__3385_ gnd vdd FILL
XFILL_6_BUFX2_insert50 gnd vdd FILL
XFILL_6_BUFX2_insert51 gnd vdd FILL
XFILL_6_BUFX2_insert52 gnd vdd FILL
XFILL_6_BUFX2_insert53 gnd vdd FILL
XFILL182850x74250 gnd vdd FILL
XFILL_6_BUFX2_insert54 gnd vdd FILL
XFILL_6_BUFX2_insert55 gnd vdd FILL
XFILL_6_BUFX2_insert56 gnd vdd FILL
XFILL_6_BUFX2_insert57 gnd vdd FILL
XFILL_2__3377_ gnd vdd FILL
XFILL_6_BUFX2_insert58 gnd vdd FILL
XFILL_6_BUFX2_insert59 gnd vdd FILL
X_2837_ _118_ _1219__bF$buf1 _534_ _537_ _32_ vdd 
+ gnd
+ AOI22X1
X_2417_ _133_ _1106_ _170_ vdd gnd NAND2X1
XFILL_1__1794_ gnd vdd FILL
XFILL_7__2761_ gnd vdd FILL
XFILL_7__2341_ gnd vdd FILL
XFILL_9__2267_ gnd vdd FILL
XFILL_3__2661_ gnd vdd FILL
XFILL_3__2241_ gnd vdd FILL
XFILL_5__2587_ gnd vdd FILL
XFILL_5__2167_ gnd vdd FILL
XFILL_1__2999_ gnd vdd FILL
XFILL_1__2579_ gnd vdd FILL
XFILL_7__3546_ gnd vdd FILL
XFILL_1__2159_ gnd vdd FILL
XFILL_7__3126_ gnd vdd FILL
XFILL_1__3520_ gnd vdd FILL
XFILL_1__3100_ gnd vdd FILL
XFILL_3__3446_ gnd vdd FILL
XFILL_3__3026_ gnd vdd FILL
XFILL_6__1871_ gnd vdd FILL
XFILL_8__1889_ gnd vdd FILL
X_2590_ _872_ _191_ _320_ _321_ vdd gnd NAND3X1
X_2170_ _1296_ _1304_ _1305_ vdd gnd NAND2X1
XFILL_2__1863_ gnd vdd FILL
XFILL_8__2830_ gnd vdd FILL
XFILL_8__2410_ gnd vdd FILL
XFILL_4__1789_ gnd vdd FILL
XFILL_4__2730_ gnd vdd FILL
XFILL_4__2310_ gnd vdd FILL
XFILL_0__1689_ gnd vdd FILL
XFILL_6__2656_ gnd vdd FILL
X_3375_ alu_shift_right CI _1650_ vdd gnd NAND2X1
XFILL_6__2236_ gnd vdd FILL
XFILL_2__2648_ gnd vdd FILL
XFILL_0__2630_ gnd vdd FILL
XFILL_0__2210_ gnd vdd FILL
XFILL_2__2228_ gnd vdd FILL
XFILL_4__3515_ gnd vdd FILL
XFILL_9__1958_ gnd vdd FILL
XFILL_3__1932_ gnd vdd FILL
XFILL_0__3415_ gnd vdd FILL
XFILL_5__1858_ gnd vdd FILL
XFILL_7__2817_ gnd vdd FILL
XFILL_3__2717_ gnd vdd FILL
X_1861_ _979_ _982_ _985_ _1005_ vdd gnd NOR3X1
XFILL_6__3194_ gnd vdd FILL
XFILL_2__3186_ gnd vdd FILL
XFILL_6__1927_ gnd vdd FILL
X_2646_ _972_ _343_ _372_ _373_ vdd gnd OAI21X1
X_2226_ _1349_ _1360_ _1361_ vdd gnd AND2X2
XFILL_7__2990_ gnd vdd FILL
XFILL_7__2570_ gnd vdd FILL
XFILL_7__2150_ gnd vdd FILL
XFILL_2__1919_ gnd vdd FILL
XFILL_0__1901_ gnd vdd FILL
XFILL_3__2890_ gnd vdd FILL
XFILL_3__2470_ gnd vdd FILL
XFILL_3__2050_ gnd vdd FILL
XFILL_5__2396_ gnd vdd FILL
XFILL_1__2388_ gnd vdd FILL
XFILL_8__1698_ gnd vdd FILL
XFILL_6__2885_ gnd vdd FILL
XFILL_6__2465_ gnd vdd FILL
XFILL_6__2045_ gnd vdd FILL
X_3184_ _815_ _814_ _816_ vdd gnd NOR2X1
XFILL_2__2877_ gnd vdd FILL
XFILL_2__2457_ gnd vdd FILL
XFILL_2__2037_ gnd vdd FILL
XFILL_8__3424_ gnd vdd FILL
XFILL_8__3004_ gnd vdd FILL
X_1917_ _AXYS[1]_[1] _1022_ _1060_ vdd gnd NAND2X1
XFILL_7__1841_ gnd vdd FILL
XFILL_3__1741_ gnd vdd FILL
XFILL_0__3224_ gnd vdd FILL
XFILL_7__2626_ gnd vdd FILL
XFILL_7__2206_ gnd vdd FILL
XFILL_1__2600_ gnd vdd FILL
XFILL_3__2946_ gnd vdd FILL
XFILL_3__2526_ gnd vdd FILL
XFILL_3__2106_ gnd vdd FILL
XFILL_8__1910_ gnd vdd FILL
XFILL_4__1810_ gnd vdd FILL
X_2875_ _1304_ _566_ _1175_ _568_ vdd gnd NAND3X1
XFILL_6__1736_ gnd vdd FILL
X_2455_ _205_ _203_ _206_ vdd gnd NAND2X1
X_2035_ _1169_ _857_ _1170_ _1171_ vdd gnd AOI21X1
XFILL_0__1710_ gnd vdd FILL
XFILL_2__1728_ gnd vdd FILL
XFILL_1__2197_ gnd vdd FILL
XFILL_7__3584_ gnd vdd FILL
XFILL_7__3164_ gnd vdd FILL
XFILL_0__2915_ gnd vdd FILL
XFILL_3__3484_ gnd vdd FILL
XFILL_3__3064_ gnd vdd FILL
XFILL_6__2694_ gnd vdd FILL
XFILL_6__2274_ gnd vdd FILL
XFILL_2__2686_ gnd vdd FILL
XFILL_2__2266_ gnd vdd FILL
X_1726_ state[1] state[0] _879_ vdd gnd NOR2X1
XFILL_4__3553_ gnd vdd FILL
XFILL_4__3133_ gnd vdd FILL
XFILL_6__3479_ gnd vdd FILL
XFILL_6__3059_ gnd vdd FILL
XFILL_3__1970_ gnd vdd FILL
XFILL_0__3453_ gnd vdd FILL
XFILL_0__3033_ gnd vdd FILL
XFILL_5__1896_ gnd vdd FILL
XFILL_1__1888_ gnd vdd FILL
XFILL184350x117150 gnd vdd FILL
XFILL_7__2855_ gnd vdd FILL
XFILL_7__2435_ gnd vdd FILL
XFILL_7__2015_ gnd vdd FILL
XFILL_3__2755_ gnd vdd FILL
XFILL_3__2335_ gnd vdd FILL
XFILL_5__3202_ gnd vdd FILL
XFILL_6__1965_ gnd vdd FILL
X_2684_ PC[6] _336_ _407_ vdd gnd NAND2X1
X_2264_ _1391_ _1397_ _1398_ vdd gnd NOR2X1
XFILL_2__1957_ gnd vdd FILL
XFILL_8__2924_ gnd vdd FILL
XFILL_8__2504_ gnd vdd FILL
XFILL_4__2824_ gnd vdd FILL
XFILL_4__2404_ gnd vdd FILL
X_3469_ BI[0] _1540_ _1555_ vdd gnd NAND2X1
X_3049_ _710_ _702_ _711_ vdd gnd NAND2X1
XFILL_7__3393_ gnd vdd FILL
XFILL_0__2724_ gnd vdd FILL
XFILL_0__2304_ gnd vdd FILL
XFILL_7__1706_ gnd vdd FILL
XFILL_0__3509_ gnd vdd FILL
XFILL_6__2083_ gnd vdd FILL
XFILL_2__2495_ gnd vdd FILL
XFILL_8__3462_ gnd vdd FILL
XFILL_2__2075_ gnd vdd FILL
XFILL_8__3042_ gnd vdd FILL
X_1955_ _1047_ _1091_ _1094_ AI[4] vdd gnd OAI21X1
XFILL_1__1697_ gnd vdd FILL
XFILL_7__2664_ gnd vdd FILL
XFILL_7__2244_ gnd vdd FILL
XFILL_3__2984_ gnd vdd FILL
XFILL_3__2564_ gnd vdd FILL
XFILL_9__3531_ gnd vdd FILL
XFILL_3__2144_ gnd vdd FILL
XFILL_5__3431_ gnd vdd FILL
XFILL_7__3449_ gnd vdd FILL
XFILL_7__3029_ gnd vdd FILL
XFILL_5__3011_ gnd vdd FILL
XFILL_1__3423_ gnd vdd FILL
XFILL_1__3003_ gnd vdd FILL
XFILL_6__1774_ gnd vdd FILL
X_2493_ ABL[5] _239_ vdd gnd INVX1
X_2073_ _1208_ _1207_ _1204_ _1209_ vdd gnd NAND3X1
XFILL_2__1766_ gnd vdd FILL
XFILL_8__2733_ gnd vdd FILL
XFILL_8__2313_ gnd vdd FILL
XFILL_4__2633_ gnd vdd FILL
XFILL_4__2213_ gnd vdd FILL
XFILL_6__2979_ gnd vdd FILL
XFILL_6__2559_ gnd vdd FILL
X_3278_ _40_ vdd _1__bF$buf3 clk_bF$buf5 adc_bcd vdd 
+ gnd
+ DFFSR
XFILL_6__2139_ gnd vdd FILL
XFILL_0__2953_ gnd vdd FILL
XFILL_0__2533_ gnd vdd FILL
XFILL_6__3500_ gnd vdd FILL
XFILL_8__3518_ gnd vdd FILL
XFILL_0__2113_ gnd vdd FILL
XFILL_7__1935_ gnd vdd FILL
XFILL_4__3418_ gnd vdd FILL
XFILL_3__1835_ gnd vdd FILL
XFILL_5__2702_ gnd vdd FILL
X_1764_ state[4] _917_ vdd gnd INVX4
XFILL_4__3591_ gnd vdd FILL
XFILL_4__3171_ gnd vdd FILL
XFILL_6__3097_ gnd vdd FILL
XFILL_0__3491_ gnd vdd FILL
XFILL_2__3089_ gnd vdd FILL
XFILL_0__3071_ gnd vdd FILL
XFILL_4__1904_ gnd vdd FILL
X_2969_ _634_ AV _639_ _640_ vdd gnd AOI21X1
X_2549_ ABH[4] _1075_ _287_ _288_ vdd gnd AOI21X1
X_2129_ RDY_bF$buf5 _1264_ _1263_ _1265_ vdd gnd OAI21X1
XFILL_7__2893_ gnd vdd FILL
XFILL_7__2473_ gnd vdd FILL
XFILL_7__2053_ gnd vdd FILL
XFILL_9__2399_ gnd vdd FILL
XFILL_0__1804_ gnd vdd FILL
XFILL_3__2793_ gnd vdd FILL
XFILL_3__2373_ gnd vdd FILL
XFILL_5__2299_ gnd vdd FILL
XFILL_1__3232_ gnd vdd FILL
XFILL_3__3158_ gnd vdd FILL
XFILL_2__1995_ gnd vdd FILL
XFILL_8__2962_ gnd vdd FILL
XFILL_8__2542_ gnd vdd FILL
XFILL_8__2122_ gnd vdd FILL
XFILL_4__2862_ gnd vdd FILL
XFILL_4__2442_ gnd vdd FILL
XFILL_4__2022_ gnd vdd FILL
XFILL_6__2788_ gnd vdd FILL
XFILL_6__2368_ gnd vdd FILL
X_3087_ _741_ _743_ _744_ vdd gnd XOR2X1
XFILL_0__2762_ gnd vdd FILL
XFILL_0__2342_ gnd vdd FILL
XFILL_7__1744_ gnd vdd FILL
XFILL_4__3227_ gnd vdd FILL
XFILL_0__3547_ gnd vdd FILL
XFILL_0__3127_ gnd vdd FILL
XFILL_5__2931_ gnd vdd FILL
XFILL_7__2949_ gnd vdd FILL
XFILL_5__2511_ gnd vdd FILL
XFILL_7__2529_ gnd vdd FILL
XFILL_7__2109_ gnd vdd FILL
XFILL_8__3080_ gnd vdd FILL
XFILL_1__2923_ gnd vdd FILL
XFILL_1__2503_ gnd vdd FILL
XFILL_3__2849_ gnd vdd FILL
XFILL_3__2429_ gnd vdd FILL
XFILL_3__2009_ gnd vdd FILL
X_1993_ _853__bF$buf1 _1002__bF$buf1 _1129_ vdd gnd NOR2X1
XFILL_8__1813_ gnd vdd FILL
XFILL_4__1713_ gnd vdd FILL
X_2778_ _853__bF$buf5 _492_ _493_ _17_ vdd gnd OAI21X1
X_2358_ _1002__bF$buf2 _121_ _120_ _122_ vdd gnd NAND3X1
XFILL_7__2282_ gnd vdd FILL
XFILL_3__2182_ gnd vdd FILL
XFILL_4__2918_ gnd vdd FILL
XFILL_7__3487_ gnd vdd FILL
XFILL_7__3067_ gnd vdd FILL
XFILL_0__2818_ gnd vdd FILL
XFILL_1__3461_ gnd vdd FILL
XFILL_1__3041_ gnd vdd FILL
XFILL_3__3387_ gnd vdd FILL
XFILL_8__2771_ gnd vdd FILL
XFILL_8__2351_ gnd vdd FILL
XFILL_4__2671_ gnd vdd FILL
XFILL_4__2251_ gnd vdd FILL
XFILL_6__2597_ gnd vdd FILL
XFILL_6__2177_ gnd vdd FILL
XFILL_0__2991_ gnd vdd FILL
XFILL_0__2571_ gnd vdd FILL
XFILL_2__2589_ gnd vdd FILL
XFILL_2__2169_ gnd vdd FILL
XFILL_8__3556_ gnd vdd FILL
XFILL_0__2151_ gnd vdd FILL
XFILL_8__3136_ gnd vdd FILL
XFILL_2__3530_ gnd vdd FILL
XFILL_2__3110_ gnd vdd FILL
XFILL_7__1973_ gnd vdd FILL
XFILL_4__3456_ gnd vdd FILL
XFILL_4__3036_ gnd vdd FILL
XFILL_9__1899_ gnd vdd FILL
XFILL_3__1873_ gnd vdd FILL
XFILL_5__1799_ gnd vdd FILL
XFILL_5__2740_ gnd vdd FILL
XFILL_7__2758_ gnd vdd FILL
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
X_2587_ _316_ _317_ _318_ vdd gnd NOR2X1
X_2167_ _894_ _1302_ vdd gnd INVX1
XFILL_7__2091_ gnd vdd FILL
XFILL_0__1842_ gnd vdd FILL
XFILL_8__2827_ gnd vdd FILL
XFILL_8__2407_ gnd vdd FILL
XFILL_2__2801_ gnd vdd FILL
XFILL_4__2727_ gnd vdd FILL
XFILL_4__2307_ gnd vdd FILL
XFILL_0__2627_ gnd vdd FILL
XFILL_0__2207_ gnd vdd FILL
XFILL183150x74250 gnd vdd FILL
XFILL_3__3196_ gnd vdd FILL
XFILL_8__2580_ gnd vdd FILL
XFILL_8__2160_ gnd vdd FILL
XFILL_3__1929_ gnd vdd FILL
XFILL_4__2480_ gnd vdd FILL
XFILL_4__2060_ gnd vdd FILL
XFILL_2__2398_ gnd vdd FILL
XFILL_0__2380_ gnd vdd FILL
XFILL_8__3365_ gnd vdd FILL
X_1858_ _879_ _914_ _869__bF$buf1 _1002_ vdd gnd NAND3X1
XFILL_7__1782_ gnd vdd FILL
XFILL_0__3585_ gnd vdd FILL
XFILL_0__3165_ gnd vdd FILL
XFILL_7__2987_ gnd vdd FILL
XFILL_7__2567_ gnd vdd FILL
XFILL_7__2147_ gnd vdd FILL
XFILL_1__2961_ gnd vdd FILL
XFILL_1__2541_ gnd vdd FILL
XFILL_1__2121_ gnd vdd FILL
XFILL_3__2887_ gnd vdd FILL
XFILL_3__2467_ gnd vdd FILL
XFILL_3__2047_ gnd vdd FILL
XFILL_8__1851_ gnd vdd FILL
XFILL_4__1751_ gnd vdd FILL
X_2396_ _970_ _128_ _152_ _153_ vdd gnd OAI21X1
XFILL_8__2636_ gnd vdd FILL
XFILL_8__2216_ gnd vdd FILL
XFILL_2__2610_ gnd vdd FILL
XFILL_4__2956_ gnd vdd FILL
XFILL_4__2536_ gnd vdd FILL
XFILL_4__2116_ gnd vdd FILL
XFILL_0__2856_ gnd vdd FILL
XFILL_0__2436_ gnd vdd FILL
XFILL_0__2016_ gnd vdd FILL
XFILL_6__3403_ gnd vdd FILL
XFILL_7__1838_ gnd vdd FILL
XFILL_5__1820_ gnd vdd FILL
XFILL_1__1812_ gnd vdd FILL
XFILL_3__1738_ gnd vdd FILL
XFILL_5__2605_ gnd vdd FILL
XFILL_8__3594_ gnd vdd FILL
XFILL_8__3174_ gnd vdd FILL
XFILL_4__3494_ gnd vdd FILL
XFILL_4__3074_ gnd vdd FILL
XFILL_8__1907_ gnd vdd FILL
XFILL_0__3394_ gnd vdd FILL
XFILL_4__1807_ gnd vdd FILL
XFILL_7__2796_ gnd vdd FILL
XFILL_7__2376_ gnd vdd FILL
XFILL_0__1707_ gnd vdd FILL
XFILL_1__2770_ gnd vdd FILL
XFILL_1__2350_ gnd vdd FILL
XFILL_3__2696_ gnd vdd FILL
XFILL_3__2276_ gnd vdd FILL
XFILL_5__3563_ gnd vdd FILL
XFILL_5__3143_ gnd vdd FILL
XFILL184650x152250 gnd vdd FILL
XFILL_1__3555_ gnd vdd FILL
XFILL_1__3135_ gnd vdd FILL
XFILL_4__1980_ gnd vdd FILL
XFILL_0__1880_ gnd vdd FILL
XFILL_2__1898_ gnd vdd FILL
XFILL_8__2865_ gnd vdd FILL
XFILL_8__2445_ gnd vdd FILL
XFILL_8__2025_ gnd vdd FILL
XFILL_4__2765_ gnd vdd FILL
XFILL_4__2345_ gnd vdd FILL
XFILL_0__2665_ gnd vdd FILL
XFILL_0__2245_ gnd vdd FILL
XFILL_6__3212_ gnd vdd FILL
XFILL_2__3204_ gnd vdd FILL
XFILL_3__1967_ gnd vdd FILL
XFILL_5__2834_ gnd vdd FILL
XFILL_5__2414_ gnd vdd FILL
XFILL_1__2826_ gnd vdd FILL
XFILL_1__2406_ gnd vdd FILL
X_1896_ _1036_ _1039_ _1040_ vdd gnd NOR2X1
XFILL_8__1716_ gnd vdd FILL
XFILL_7__2185_ gnd vdd FILL
XFILL_0__1936_ gnd vdd FILL
XFILL_6__2903_ gnd vdd FILL
X_3202_ _802_ _829_ ABL[1] _833_ vdd gnd OAI21X1
XFILL_9__3472_ gnd vdd FILL
XFILL_3__2085_ gnd vdd FILL
XFILL_5__3372_ gnd vdd FILL
XFILL_1__3364_ gnd vdd FILL
XFILL_8__2674_ gnd vdd FILL
XFILL_8__2254_ gnd vdd FILL
XFILL_4__2994_ gnd vdd FILL
XFILL_4__2574_ gnd vdd FILL
XFILL_4__2154_ gnd vdd FILL
XFILL_0__2894_ gnd vdd FILL
XFILL_0__2474_ gnd vdd FILL
XFILL_8__3459_ gnd vdd FILL
XFILL_6__3441_ gnd vdd FILL
XFILL_0__2054_ gnd vdd FILL
XFILL_8__3039_ gnd vdd FILL
XFILL_6__3021_ gnd vdd FILL
XFILL_2__3433_ gnd vdd FILL
XFILL_2__3013_ gnd vdd FILL
XFILL_7__1876_ gnd vdd FILL
XFILL_1__1850_ gnd vdd FILL
XFILL_3__1776_ gnd vdd FILL
XFILL_5__2643_ gnd vdd FILL
XFILL_5__2223_ gnd vdd FILL
XFILL_1__2635_ gnd vdd FILL
XFILL_1__2215_ gnd vdd FILL
XFILL_7__3602_ gnd vdd FILL
XFILL_3__3502_ gnd vdd FILL
XFILL_8__1945_ gnd vdd FILL
XFILL_5__3428_ gnd vdd FILL
XFILL_5__3008_ gnd vdd FILL
XFILL_4__1845_ gnd vdd FILL
XFILL_0__1745_ gnd vdd FILL
XFILL_6__2712_ gnd vdd FILL
X_3431_ _1514_ _1516_ _1517_ vdd gnd AND2X2
X_3011_ shift _1191_ _1260_ _677_ vdd gnd AOI21X1
XFILL_2__2704_ gnd vdd FILL
XFILL_1_BUFX2_insert20 gnd vdd FILL
XFILL_1_BUFX2_insert21 gnd vdd FILL
XFILL_1_BUFX2_insert22 gnd vdd FILL
XFILL_1_BUFX2_insert23 gnd vdd FILL
XFILL_1_BUFX2_insert24 gnd vdd FILL
XFILL_7__3199_ gnd vdd FILL
XFILL_5__3181_ gnd vdd FILL
XFILL_1_BUFX2_insert25 gnd vdd FILL
XFILL_1_BUFX2_insert26 gnd vdd FILL
XFILL_1_BUFX2_insert27 gnd vdd FILL
XFILL_1__3593_ gnd vdd FILL
XFILL_1__3173_ gnd vdd FILL
XFILL_3__3099_ gnd vdd FILL
XFILL_5__1914_ gnd vdd FILL
XFILL_8__2483_ gnd vdd FILL
XFILL_8__2063_ gnd vdd FILL
XFILL_1__1906_ gnd vdd FILL
XFILL_4__2383_ gnd vdd FILL
XFILL_0__2283_ gnd vdd FILL
XFILL184350x105450 gnd vdd FILL
XFILL_4__3588_ gnd vdd FILL
XFILL_4__3168_ gnd vdd FILL
X_2702_ ABH[1] _1133_ _1008_ _424_ vdd gnd NAND3X1
XFILL_0__3488_ gnd vdd FILL
XFILL_0__3068_ gnd vdd FILL
XFILL_5__2872_ gnd vdd FILL
XFILL_5__2452_ gnd vdd FILL
XFILL_5__2032_ gnd vdd FILL
XFILL_1__2864_ gnd vdd FILL
XFILL_1__2444_ gnd vdd FILL
XFILL_7__3411_ gnd vdd FILL
XFILL_1__2024_ gnd vdd FILL
XFILL_8__1754_ gnd vdd FILL
XFILL_1__3229_ gnd vdd FILL
X_2299_ _887__bF$buf0 _1035_ _853__bF$buf2 _1432_ vdd gnd OAI21X1
XFILL_0__1974_ gnd vdd FILL
XFILL_6__2941_ gnd vdd FILL
XFILL_8__2959_ gnd vdd FILL
XFILL_6__2521_ gnd vdd FILL
XFILL_8__2539_ gnd vdd FILL
XFILL_8__2119_ gnd vdd FILL
XFILL_6__2101_ gnd vdd FILL
X_3240_ _3_ vdd _1__bF$buf0 clk_bF$buf2 PC[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2933_ gnd vdd FILL
XFILL_2__2513_ gnd vdd FILL
XFILL_4__2859_ gnd vdd FILL
XFILL_4__2439_ gnd vdd FILL
XFILL_4__2019_ gnd vdd FILL
XFILL_0__2759_ gnd vdd FILL
XFILL_0__2339_ gnd vdd FILL
XFILL_5__1723_ gnd vdd FILL
XFILL_8__2292_ gnd vdd FILL
XFILL_1__1715_ gnd vdd FILL
XFILL_4__2192_ gnd vdd FILL
XFILL_5__2928_ gnd vdd FILL
XFILL_5__2508_ gnd vdd FILL
XFILL_8__3497_ gnd vdd FILL
XFILL_0__2092_ gnd vdd FILL
XFILL_8__3077_ gnd vdd FILL
XFILL_2__3471_ gnd vdd FILL
XFILL_2__3051_ gnd vdd FILL
XFILL_4__3397_ gnd vdd FILL
X_2931_ _1173_ _520_ _612_ _613_ vdd gnd NAND3X1
X_2511_ _197_ AN _254_ _255_ vdd gnd AOI21X1
XFILL_7__2699_ gnd vdd FILL
XFILL_5__2681_ gnd vdd FILL
XFILL_5__2261_ gnd vdd FILL
XFILL_7__2279_ gnd vdd FILL
XFILL_1__2673_ gnd vdd FILL
XFILL_1__2253_ gnd vdd FILL
XFILL_7__3220_ gnd vdd FILL
XFILL_3__2599_ gnd vdd FILL
XFILL_3__2179_ gnd vdd FILL
XFILL_3__3540_ gnd vdd FILL
XFILL_3__3120_ gnd vdd FILL
XFILL_8__1983_ gnd vdd FILL
XFILL_5__3466_ gnd vdd FILL
XFILL_5__3046_ gnd vdd FILL
XFILL182550x109350 gnd vdd FILL
XFILL_1__3458_ gnd vdd FILL
XFILL_1__3038_ gnd vdd FILL
XFILL_4__1883_ gnd vdd FILL
XFILL_0__1783_ gnd vdd FILL
XFILL_6__2750_ gnd vdd FILL
XFILL_8__2768_ gnd vdd FILL
XFILL_6__2330_ gnd vdd FILL
XFILL_8__2348_ gnd vdd FILL
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
XFILL_2_BUFX2_insert77 gnd vdd FILL
XFILL_1__2729_ gnd vdd FILL
XFILL_1__2309_ gnd vdd FILL
XFILL_2_BUFX2_insert78 gnd vdd FILL
XFILL_2_BUFX2_insert79 gnd vdd FILL
X_1799_ _887__bF$buf0 _880_ _951_ vdd gnd NOR2X1
X_2740_ _283_ _324_ _458_ _459_ vdd gnd OAI21X1
X_2320_ _1276_ _1357_ _1234_ _1453_ vdd gnd NAND3X1
XFILL_4__1939_ gnd vdd FILL
XFILL_5__2490_ gnd vdd FILL
XFILL_5__2070_ gnd vdd FILL
XFILL_7__2088_ gnd vdd FILL
XFILL_0__1839_ gnd vdd FILL
XFILL_6__2806_ gnd vdd FILL
X_3525_ _1568_ _1518_ _1611_ vdd gnd XOR2X1
X_3105_ _691__bF$buf2 _748_ _AXYS[1]_[6] _755_ vdd gnd OAI21X1
XFILL_1__2482_ gnd vdd FILL
XFILL_1__2062_ gnd vdd FILL
XFILL_8__1792_ gnd vdd FILL
XFILL_4__1692_ gnd vdd FILL
XFILL_8__2997_ gnd vdd FILL
XFILL_8__2577_ gnd vdd FILL
XFILL_8__2157_ gnd vdd FILL
XFILL_2__2971_ gnd vdd FILL
XFILL_2__2551_ gnd vdd FILL
XFILL_2__2131_ gnd vdd FILL
XFILL_4__2897_ gnd vdd FILL
XFILL_4__2477_ gnd vdd FILL
XFILL_4__2057_ gnd vdd FILL
XFILL184050x101550 gnd vdd FILL
XFILL_0__2797_ gnd vdd FILL
XFILL_0__2377_ gnd vdd FILL
XFILL_7__1779_ gnd vdd FILL
XFILL_5__1761_ gnd vdd FILL
XFILL_1__1753_ gnd vdd FILL
XFILL_7__2720_ gnd vdd FILL
XFILL_7__2300_ gnd vdd FILL
XFILL_3__2620_ gnd vdd FILL
XFILL_3__2200_ gnd vdd FILL
XFILL_5__2966_ gnd vdd FILL
XFILL_5__2546_ gnd vdd FILL
XFILL_5__2126_ gnd vdd FILL
XFILL_1__2958_ gnd vdd FILL
XFILL_1__2538_ gnd vdd FILL
XFILL_7__3505_ gnd vdd FILL
XFILL_1__2118_ gnd vdd FILL
XFILL_3__3405_ gnd vdd FILL
XFILL_6__1830_ gnd vdd FILL
XFILL_8__1848_ gnd vdd FILL
XFILL_2__1822_ gnd vdd FILL
XFILL_4__1748_ gnd vdd FILL
XFILL_6__2615_ gnd vdd FILL
X_3334_ _88_ vdd _1__bF$buf1 clk_bF$buf3 _AXYS[2]_[3] vdd 
+ gnd
+ DFFSR
XFILL_1__2291_ gnd vdd FILL
XFILL_2__2607_ gnd vdd FILL
XFILL_5__3084_ gnd vdd FILL
XFILL_1__3496_ gnd vdd FILL
XFILL_1__3076_ gnd vdd FILL
XFILL_5__1817_ gnd vdd FILL
XFILL_8__2386_ gnd vdd FILL
XFILL_1__1809_ gnd vdd FILL
XFILL_2__2780_ gnd vdd FILL
XFILL_2__2360_ gnd vdd FILL
XFILL_4__2286_ gnd vdd FILL
X_1820_ PC[2] _970_ vdd gnd INVX1
XFILL_0__2186_ gnd vdd FILL
XFILL_6__3153_ gnd vdd FILL
XFILL_2__3565_ gnd vdd FILL
XFILL_2__3145_ gnd vdd FILL
XFILL_5__1990_ gnd vdd FILL
X_2605_ _322_ _321_ _335_ _336_ vdd gnd OAI21X1
XFILL_1__1982_ gnd vdd FILL
XFILL_5__2775_ gnd vdd FILL
XFILL_5__2355_ gnd vdd FILL
XFILL_1__2767_ gnd vdd FILL
XFILL_1__2347_ gnd vdd FILL
XFILL_3__3214_ gnd vdd FILL
XFILL_4__1977_ gnd vdd FILL
XFILL_0__1877_ gnd vdd FILL
XFILL_6__2844_ gnd vdd FILL
X_3563_ _1638_ RDY_bF$buf2 _1639_ _1495_ vdd gnd OAI21X1
XFILL_6__2424_ gnd vdd FILL
X_3143_ _745_ _767_ _775_ _100_ vdd gnd OAI21X1
XFILL_6__2004_ gnd vdd FILL
XFILL_2__2836_ gnd vdd FILL
XFILL_2__2416_ gnd vdd FILL
XFILL_7__1800_ gnd vdd FILL
XFILL_6__3209_ gnd vdd FILL
XFILL_3__1700_ gnd vdd FILL
XFILL_0__3603_ gnd vdd FILL
XFILL_8__2195_ gnd vdd FILL
XFILL_4__2095_ gnd vdd FILL
XFILL_3__2905_ gnd vdd FILL
XFILL_6__3382_ gnd vdd FILL
XFILL_6_BUFX2_insert20 gnd vdd FILL
XFILL_6_BUFX2_insert21 gnd vdd FILL
XFILL_6_BUFX2_insert22 gnd vdd FILL
XFILL_6_BUFX2_insert23 gnd vdd FILL
XFILL_6_BUFX2_insert24 gnd vdd FILL
XFILL_6_BUFX2_insert25 gnd vdd FILL
XFILL_6_BUFX2_insert26 gnd vdd FILL
XFILL_2__3374_ gnd vdd FILL
XFILL_6_BUFX2_insert27 gnd vdd FILL
X_2834_ _531_ _535_ vdd gnd INVX1
X_2414_ _973_ _128_ _167_ _168_ vdd gnd OAI21X1
XFILL_1__1791_ gnd vdd FILL
XFILL_5__2584_ gnd vdd FILL
XFILL_5__2164_ gnd vdd FILL
XFILL_1__2996_ gnd vdd FILL
XFILL_1__2576_ gnd vdd FILL
XFILL_7__3543_ gnd vdd FILL
XFILL_1__2156_ gnd vdd FILL
XFILL_7__3123_ gnd vdd FILL
XFILL_3__3443_ gnd vdd FILL
XFILL_3__3023_ gnd vdd FILL
XFILL_8__1886_ gnd vdd FILL
XFILL_5__3369_ gnd vdd FILL
XFILL_2__1860_ gnd vdd FILL
XFILL_4__1786_ gnd vdd FILL
XFILL182550x7950 gnd vdd FILL
XFILL_6__2653_ gnd vdd FILL
X_3372_ _1647_ _1648_ AV vdd gnd XNOR2X1
XFILL_6__2233_ gnd vdd FILL
XFILL_2__2645_ gnd vdd FILL
XFILL_2__2225_ gnd vdd FILL
XFILL_4__3512_ gnd vdd FILL
XFILL_6__3438_ gnd vdd FILL
XFILL_6__3018_ gnd vdd FILL
XFILL_0__3412_ gnd vdd FILL
XFILL_5__1855_ gnd vdd FILL
XFILL_1__1847_ gnd vdd FILL
XFILL_7__2814_ gnd vdd FILL
XFILL_3__2714_ gnd vdd FILL
XFILL_6__3191_ gnd vdd FILL
XFILL_2__3183_ gnd vdd FILL
XFILL_6__1924_ gnd vdd FILL
X_2643_ ABL[4] _370_ vdd gnd INVX1
X_2223_ _869__bF$buf2 _927_ _1356_ _1358_ vdd gnd NAND3X1
XFILL_2__1916_ gnd vdd FILL
XFILL_5__2393_ gnd vdd FILL
XFILL184650x140550 gnd vdd FILL
XFILL_6__2709_ gnd vdd FILL
X_3428_ BI[3] _1674_ _1513_ _1514_ vdd gnd OAI21X1
X_3008_ plp clc _674_ vdd gnd NOR2X1
XFILL_1__2385_ gnd vdd FILL
XFILL_8__1695_ gnd vdd FILL
XFILL_5__3598_ gnd vdd FILL
XFILL_5__3178_ gnd vdd FILL
XFILL_6__2882_ gnd vdd FILL
XFILL_6__2462_ gnd vdd FILL
XFILL_6__2042_ gnd vdd FILL
X_3181_ _776_ _812_ _813_ vdd gnd NAND2X1
XFILL_2__2874_ gnd vdd FILL
XFILL_2__2454_ gnd vdd FILL
XFILL_2__2034_ gnd vdd FILL
XFILL_8__3421_ gnd vdd FILL
XFILL_8__3001_ gnd vdd FILL
X_1914_ _932_ _944_ _1057_ _1058_ vdd gnd OAI21X1
XFILL_0__3221_ gnd vdd FILL
XFILL_7__2623_ gnd vdd FILL
XFILL_7__2203_ gnd vdd FILL
XFILL_3__2943_ gnd vdd FILL
XFILL_3__2523_ gnd vdd FILL
XFILL_3__2103_ gnd vdd FILL
XFILL_5__2869_ gnd vdd FILL
XFILL_5__2449_ gnd vdd FILL
XFILL_5__2029_ gnd vdd FILL
XFILL_7__3408_ gnd vdd FILL
X_2872_ _1008_ _1036_ RDY_bF$buf1 _565_ vdd gnd OAI21X1
XFILL_6__1733_ gnd vdd FILL
X_2452_ _182_ _203_ vdd gnd INVX1
X_2032_ _1145_ _1152_ _1168_ vdd gnd NAND2X1
XFILL_2__1725_ gnd vdd FILL
XFILL_6__2938_ gnd vdd FILL
XFILL_6__2518_ gnd vdd FILL
X_3237_ _1483_[4] vdd _1__bF$buf10 clk_bF$buf6 state[4] vdd 
+ gnd
+ DFFSR
XFILL_1__2194_ gnd vdd FILL
XFILL_7__3581_ gnd vdd FILL
XFILL_7__3161_ gnd vdd FILL
XFILL_0__2912_ gnd vdd FILL
XFILL_3__3481_ gnd vdd FILL
XFILL_3__3061_ gnd vdd FILL
XFILL_1__3399_ gnd vdd FILL
XFILL_6__2691_ gnd vdd FILL
XFILL_6__2271_ gnd vdd FILL
XFILL_8__2289_ gnd vdd FILL
XFILL_2__2683_ gnd vdd FILL
XFILL_2__2263_ gnd vdd FILL
XFILL_8__3230_ gnd vdd FILL
XFILL_4__2189_ gnd vdd FILL
X_1723_ _875_ _874_ _876_ vdd gnd NOR2X1
XFILL_4__3550_ gnd vdd FILL
XFILL_4__3130_ gnd vdd FILL
XFILL_6__3476_ gnd vdd FILL
XFILL_0__2089_ gnd vdd FILL
XFILL_6__3056_ gnd vdd FILL
XFILL_0__3450_ gnd vdd FILL
XFILL_2__3468_ gnd vdd FILL
XFILL_2__3048_ gnd vdd FILL
XFILL_0__3030_ gnd vdd FILL
XFILL_5__1893_ gnd vdd FILL
X_2928_ _1320_ _1384_ _609_ _610_ vdd gnd OAI21X1
X_2508_ AN _190_ _252_ vdd gnd NAND2X1
XFILL_1__1885_ gnd vdd FILL
XFILL_7__2852_ gnd vdd FILL
XFILL_7__2432_ gnd vdd FILL
XFILL_7__2012_ gnd vdd FILL
XFILL_3__2752_ gnd vdd FILL
XFILL_3__2332_ gnd vdd FILL
XFILL_5__2678_ gnd vdd FILL
XFILL_5__2258_ gnd vdd FILL
XFILL_7__3217_ gnd vdd FILL
XFILL_3__3537_ gnd vdd FILL
XFILL_3__3117_ gnd vdd FILL
XFILL_6__1962_ gnd vdd FILL
X_2681_ _1051__bF$buf2 _402_ _403_ _404_ vdd gnd NAND3X1
X_2261_ _1394_ _1156_ _1395_ vdd gnd NOR2X1
XFILL_2__1954_ gnd vdd FILL
XFILL_8__2921_ gnd vdd FILL
XFILL_8__2501_ gnd vdd FILL
XFILL_4__2821_ gnd vdd FILL
XFILL_4__2401_ gnd vdd FILL
XFILL184350x179550 gnd vdd FILL
XFILL_6__2747_ gnd vdd FILL
X_3466_ _1660_ _1675_ CI _1552_ vdd gnd OAI21X1
XFILL_6__2327_ gnd vdd FILL
X_3046_ _693_ _707_ _708_ _70_ vdd gnd OAI21X1
XFILL_7__3390_ gnd vdd FILL
XFILL_2__2739_ gnd vdd FILL
XFILL_0__2721_ gnd vdd FILL
XFILL_0__2301_ gnd vdd FILL
XFILL_2__2319_ gnd vdd FILL
XFILL_7__1703_ gnd vdd FILL
XFILL_0__3506_ gnd vdd FILL
XFILL_5__1949_ gnd vdd FILL
XFILL_6__2080_ gnd vdd FILL
XFILL_8__2098_ gnd vdd FILL
XFILL_7__2908_ gnd vdd FILL
XFILL_2__2492_ gnd vdd FILL
XFILL_2__2072_ gnd vdd FILL
XFILL_3__2808_ gnd vdd FILL
X_1952_ ABH[4] _1075_ _1092_ vdd gnd NAND2X1
X_2737_ _284_ _359_ _455_ _456_ vdd gnd OAI21X1
X_2317_ _1449_ _1450_ vdd gnd INVX1
XFILL_1__1694_ gnd vdd FILL
XFILL_7__2661_ gnd vdd FILL
XFILL_7__2241_ gnd vdd FILL
XFILL_3__2981_ gnd vdd FILL
XFILL_3__2561_ gnd vdd FILL
XFILL_3__2141_ gnd vdd FILL
XFILL_5__2487_ gnd vdd FILL
XFILL_5__2067_ gnd vdd FILL
XFILL_1__2899_ gnd vdd FILL
XFILL_1__2479_ gnd vdd FILL
XFILL_7__3446_ gnd vdd FILL
XFILL_1__2059_ gnd vdd FILL
XFILL_7__3026_ gnd vdd FILL
XFILL_1__3420_ gnd vdd FILL
XFILL_1__3000_ gnd vdd FILL
XFILL_6__1771_ gnd vdd FILL
XFILL_8__1789_ gnd vdd FILL
X_2490_ _1090_ _182_ _236_ _237_ vdd gnd AOI21X1
X_2070_ _887__bF$buf4 _916_ _853__bF$buf0 _1206_ vdd gnd OAI21X1
XFILL_2__1763_ gnd vdd FILL
XFILL_8__2730_ gnd vdd FILL
XFILL_8__2310_ gnd vdd FILL
XFILL_4__1689_ gnd vdd FILL
XFILL_4__2630_ gnd vdd FILL
XFILL_4__2210_ gnd vdd FILL
XFILL_6__2976_ gnd vdd FILL
XFILL_6__2556_ gnd vdd FILL
X_3275_ _37_ vdd _1__bF$buf9 clk_bF$buf10 shift_right vdd 
+ gnd
+ DFFSR
XFILL_6__2136_ gnd vdd FILL
XFILL_0__2950_ gnd vdd FILL
XFILL_2__2968_ gnd vdd FILL
XFILL_2__2548_ gnd vdd FILL
XFILL_0__2530_ gnd vdd FILL
XFILL_8__3515_ gnd vdd FILL
XFILL_0__2110_ gnd vdd FILL
XFILL_2__2128_ gnd vdd FILL
XFILL_7__1932_ gnd vdd FILL
XFILL_4__3415_ gnd vdd FILL
XFILL_3__1832_ gnd vdd FILL
XFILL_5__1758_ gnd vdd FILL
XFILL_7__2717_ gnd vdd FILL
XFILL_3__2617_ gnd vdd FILL
X_1761_ state[2] state[3] _914_ vdd gnd AND2X2
XFILL_6__3094_ gnd vdd FILL
XFILL_2__3086_ gnd vdd FILL
XFILL_4__1901_ gnd vdd FILL
XFILL_6__1827_ gnd vdd FILL
X_2966_ _918__bF$buf3 _988_ DIMUX[6] _637_ vdd gnd OAI21X1
X_2546_ ADD[4] _285_ vdd gnd INVX1
X_2126_ RDY_bF$buf3 _1260_ _1261_ _1262_ vdd gnd OAI21X1
XFILL_7__2890_ gnd vdd FILL
XFILL_7__2470_ gnd vdd FILL
XFILL_7__2050_ gnd vdd FILL
XFILL_2__1819_ gnd vdd FILL
XFILL_0__1801_ gnd vdd FILL
XFILL_3__2790_ gnd vdd FILL
XFILL_3__2370_ gnd vdd FILL
XFILL_5__2296_ gnd vdd FILL
XFILL_1__2288_ gnd vdd FILL
XFILL_7_BUFX2_insert90 gnd vdd FILL
XFILL_7_BUFX2_insert91 gnd vdd FILL
XFILL_7_BUFX2_insert92 gnd vdd FILL
XFILL_7_BUFX2_insert93 gnd vdd FILL
XFILL_7_BUFX2_insert94 gnd vdd FILL
XFILL_3__3155_ gnd vdd FILL
XFILL_7_BUFX2_insert95 gnd vdd FILL
XFILL_7_BUFX2_insert96 gnd vdd FILL
XFILL_7_BUFX2_insert97 gnd vdd FILL
XFILL_2__1992_ gnd vdd FILL
XFILL_6__2785_ gnd vdd FILL
XFILL_6__2365_ gnd vdd FILL
X_3084_ _246_ _726_ _740_ _741_ vdd gnd OAI21X1
XFILL_2__2777_ gnd vdd FILL
XFILL_2__2357_ gnd vdd FILL
X_1817_ PC[1] _968_ vdd gnd INVX2
XFILL_7__1741_ gnd vdd FILL
XFILL_4__3224_ gnd vdd FILL
XFILL_0__3544_ gnd vdd FILL
XFILL_0__3124_ gnd vdd FILL
XFILL_5__1987_ gnd vdd FILL
XFILL_1__1979_ gnd vdd FILL
XFILL_7__2946_ gnd vdd FILL
XFILL_7__2526_ gnd vdd FILL
XFILL_7__2106_ gnd vdd FILL
XFILL_1__2920_ gnd vdd FILL
XFILL_1__2500_ gnd vdd FILL
XFILL_3__2846_ gnd vdd FILL
XFILL_3__2426_ gnd vdd FILL
XFILL_3__2006_ gnd vdd FILL
X_1990_ _883_ RDY_bF$buf1 _1126_ vdd gnd AND2X2
XFILL_8__1810_ gnd vdd FILL
XFILL_4__1710_ gnd vdd FILL
X_2775_ _474_ _490_ _460_ _491_ vdd gnd NAND3X1
X_2355_ _916_ _918__bF$buf3 _911_ _119_ vdd gnd OAI21X1
XFILL184050x175650 gnd vdd FILL
XFILL184650x117150 gnd vdd FILL
XFILL_4__2915_ gnd vdd FILL
XFILL_7__3484_ gnd vdd FILL
XFILL_1__2097_ gnd vdd FILL
XFILL_7__3064_ gnd vdd FILL
XFILL_0__2815_ gnd vdd FILL
XFILL_3__3384_ gnd vdd FILL
XFILL_6__2594_ gnd vdd FILL
XFILL_6__2174_ gnd vdd FILL
XFILL_2__2586_ gnd vdd FILL
XFILL_8__3553_ gnd vdd FILL
XFILL_2__2166_ gnd vdd FILL
XFILL_8__3133_ gnd vdd FILL
XFILL_7__1970_ gnd vdd FILL
XFILL_4__3453_ gnd vdd FILL
XFILL_4__3033_ gnd vdd FILL
XFILL_6__3379_ gnd vdd FILL
XFILL_3__1870_ gnd vdd FILL
XFILL_5__1796_ gnd vdd FILL
XFILL_1__1788_ gnd vdd FILL
XFILL_7__2755_ gnd vdd FILL
XFILL_7__2335_ gnd vdd FILL
XFILL_3__2655_ gnd vdd FILL
XFILL_3__2235_ gnd vdd FILL
XFILL_5__3522_ gnd vdd FILL
XFILL_5__3102_ gnd vdd FILL
XFILL_1__3514_ gnd vdd FILL
XFILL_6__1865_ gnd vdd FILL
X_2584_ _886__bF$buf0 _926__bF$buf3 _193_ _315_ vdd gnd OAI21X1
X_2164_ _1296_ _1298_ _1299_ vdd gnd NAND2X1
XFILL_2__1857_ gnd vdd FILL
XFILL_8__2824_ gnd vdd FILL
XFILL_8__2404_ gnd vdd FILL
XFILL_4__2724_ gnd vdd FILL
XFILL_4__2304_ gnd vdd FILL
X_3369_ _1642_ _1646_ AZ vdd gnd NOR2X1
XFILL184050x7950 gnd vdd FILL
XFILL_0__2624_ gnd vdd FILL
XFILL_0__2204_ gnd vdd FILL
XFILL_3__3193_ gnd vdd FILL
XFILL_4__3509_ gnd vdd FILL
XFILL_3__1926_ gnd vdd FILL
XFILL_0__3409_ gnd vdd FILL
XFILL_2__2395_ gnd vdd FILL
X_1855_ _918__bF$buf3 _988_ _998_ _999_ vdd gnd OAI21X1
XFILL_6__3188_ gnd vdd FILL
XFILL_0__3582_ gnd vdd FILL
XFILL_0__3162_ gnd vdd FILL
XFILL_7__2984_ gnd vdd FILL
XFILL_7__2564_ gnd vdd FILL
XFILL_7__2144_ gnd vdd FILL
XFILL_3__2884_ gnd vdd FILL
XFILL_3__2464_ gnd vdd FILL
XFILL_3__2044_ gnd vdd FILL
X_2393_ _133_ _1073_ _150_ vdd gnd NAND2X1
XFILL_8__2633_ gnd vdd FILL
XFILL_8__2213_ gnd vdd FILL
XFILL_4__2953_ gnd vdd FILL
XFILL_4__2533_ gnd vdd FILL
XFILL_4__2113_ gnd vdd FILL
XFILL_6__2879_ gnd vdd FILL
X_3598_ _1686_[3] DO[3] vdd gnd BUFX2
XFILL_6__2459_ gnd vdd FILL
XFILL_6__2039_ gnd vdd FILL
X_3178_ _809_ _992_ _810_ vdd gnd AND2X2
XFILL_0__2853_ gnd vdd FILL
XFILL_0__2433_ gnd vdd FILL
XFILL_0__2013_ gnd vdd FILL
XFILL_6__3400_ gnd vdd FILL
XFILL_8__3418_ gnd vdd FILL
XFILL_7__1835_ gnd vdd FILL
XFILL_3__1735_ gnd vdd FILL
XFILL_0__3218_ gnd vdd FILL
XFILL_5__2602_ gnd vdd FILL
XFILL_8__3591_ gnd vdd FILL
XFILL_8__3171_ gnd vdd FILL
XFILL_4__3491_ gnd vdd FILL
XFILL_4__3071_ gnd vdd FILL
XFILL_8__1904_ gnd vdd FILL
XFILL_0__3391_ gnd vdd FILL
XFILL_4__1804_ gnd vdd FILL
X_2869_ _920_ _1129__bF$buf3 _563_ _38_ vdd gnd OAI21X1
X_2449_ _1267_ _1123_ _1186_ _200_ vdd gnd NAND3X1
X_2029_ _1129__bF$buf2 _1150_ _1164_ _1165_ vdd gnd NAND3X1
XFILL_7__2793_ gnd vdd FILL
XFILL_7__2373_ gnd vdd FILL
XFILL_0__1704_ gnd vdd FILL
XFILL_3__2693_ gnd vdd FILL
XFILL_3__2273_ gnd vdd FILL
XFILL_5__2199_ gnd vdd FILL
XFILL_5__3560_ gnd vdd FILL
XFILL_5__3140_ gnd vdd FILL
XFILL_7__3158_ gnd vdd FILL
XFILL_0__2909_ gnd vdd FILL
XFILL_1__3552_ gnd vdd FILL
XFILL_1__3132_ gnd vdd FILL
XFILL_3__3478_ gnd vdd FILL
XFILL_3__3058_ gnd vdd FILL
XFILL_2__1895_ gnd vdd FILL
XFILL_8__2862_ gnd vdd FILL
XFILL_8__2442_ gnd vdd FILL
XFILL_8__2022_ gnd vdd FILL
XFILL_4__2762_ gnd vdd FILL
XFILL_4__2342_ gnd vdd FILL
XFILL_6__2688_ gnd vdd FILL
XFILL_6__2268_ gnd vdd FILL
XFILL_0__2662_ gnd vdd FILL
XFILL_0__2242_ gnd vdd FILL
XFILL_8__3227_ gnd vdd FILL
XFILL_2__3201_ gnd vdd FILL
XFILL_4__3547_ gnd vdd FILL
XFILL_4__3127_ gnd vdd FILL
XFILL181350x109350 gnd vdd FILL
XFILL_3__1964_ gnd vdd FILL
XFILL_0__3447_ gnd vdd FILL
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
X_1893_ _996_ _1037_ vdd gnd INVX2
XFILL_8__1713_ gnd vdd FILL
XFILL_6__1959_ gnd vdd FILL
X_2678_ _1055_ _872_ _260_ _333_ _401_ vdd 
+ gnd
+ OAI22X1
X_2258_ _1316_ _1392_ vdd gnd INVX1
XFILL_7__2182_ gnd vdd FILL
XFILL_0__1933_ gnd vdd FILL
XFILL_8__2918_ gnd vdd FILL
XFILL_6__2900_ gnd vdd FILL
XFILL_3__2082_ gnd vdd FILL
XFILL_4__2818_ gnd vdd FILL
XFILL_7__3387_ gnd vdd FILL
XFILL_0__2718_ gnd vdd FILL
XFILL_8__2671_ gnd vdd FILL
XFILL_8__2251_ gnd vdd FILL
XFILL_4__2991_ gnd vdd FILL
XFILL_4__2571_ gnd vdd FILL
XFILL_4__2151_ gnd vdd FILL
XFILL_6__2497_ gnd vdd FILL
XFILL_6__2077_ gnd vdd FILL
XFILL_0__2891_ gnd vdd FILL
XFILL_2__2489_ gnd vdd FILL
XFILL_0__2471_ gnd vdd FILL
XFILL_8__3456_ gnd vdd FILL
XFILL_2__2069_ gnd vdd FILL
XFILL_0__2051_ gnd vdd FILL
XFILL_8__3036_ gnd vdd FILL
XFILL_2__3430_ gnd vdd FILL
X_1949_ _AXYS[0]_[4] _1020_ _1089_ vdd gnd NAND2X1
XFILL_2__3010_ gnd vdd FILL
XFILL_7__1873_ gnd vdd FILL
XFILL_3__1773_ gnd vdd FILL
XFILL_5__1699_ gnd vdd FILL
XFILL_7__2658_ gnd vdd FILL
XFILL_5__2640_ gnd vdd FILL
XFILL_7__2238_ gnd vdd FILL
XFILL_5__2220_ gnd vdd FILL
XFILL_1__2632_ gnd vdd FILL
XFILL_1__2212_ gnd vdd FILL
XFILL_3__2978_ gnd vdd FILL
XFILL_3__2558_ gnd vdd FILL
XFILL_3__2138_ gnd vdd FILL
XFILL_8__1942_ gnd vdd FILL
XFILL_5__3425_ gnd vdd FILL
XFILL_5__3005_ gnd vdd FILL
XFILL_1__3417_ gnd vdd FILL
XFILL_4__1842_ gnd vdd FILL
XFILL_6__1768_ gnd vdd FILL
X_2487_ DIMUX[4] _204_ _202_ ABL[4] _234_ vdd 
+ gnd
+ AOI22X1
X_2067_ _882__bF$buf2 _916_ _853__bF$buf0 _1203_ vdd gnd OAI21X1
XFILL_0__1742_ gnd vdd FILL
XFILL_8__2727_ gnd vdd FILL
XFILL_8__2307_ gnd vdd FILL
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
XFILL_7__1929_ gnd vdd FILL
XFILL_5__1911_ gnd vdd FILL
XFILL_8__2480_ gnd vdd FILL
XFILL_8__2060_ gnd vdd FILL
XFILL_1__1903_ gnd vdd FILL
XFILL_3__1829_ gnd vdd FILL
XFILL_4__2380_ gnd vdd FILL
XFILL_2__2298_ gnd vdd FILL
XFILL_0__2280_ gnd vdd FILL
X_1758_ _876_ _910_ _886__bF$buf1 _911_ vdd gnd OAI21X1
XFILL_4__3585_ gnd vdd FILL
XFILL_4__3165_ gnd vdd FILL
XFILL_0__3485_ gnd vdd FILL
XFILL_0__3065_ gnd vdd FILL
XFILL_7__2887_ gnd vdd FILL
XFILL_7__2467_ gnd vdd FILL
XFILL_7__2047_ gnd vdd FILL
XFILL_1__2861_ gnd vdd FILL
XFILL_1__2441_ gnd vdd FILL
XFILL_1__2021_ gnd vdd FILL
XFILL_3__2787_ gnd vdd FILL
XFILL_3__2367_ gnd vdd FILL
XFILL_8__1751_ gnd vdd FILL
XFILL_1__3226_ gnd vdd FILL
XFILL184350x167850 gnd vdd FILL
XFILL_6__1997_ gnd vdd FILL
X_2296_ _1428_ _1361_ _1429_ vdd gnd NAND2X1
XFILL_2__1989_ gnd vdd FILL
XFILL_0__1971_ gnd vdd FILL
XFILL_8__2956_ gnd vdd FILL
XFILL_8__2536_ gnd vdd FILL
XFILL_8__2116_ gnd vdd FILL
XFILL_2__2930_ gnd vdd FILL
XFILL_2__2510_ gnd vdd FILL
XFILL_4__2856_ gnd vdd FILL
XFILL_4__2436_ gnd vdd FILL
XFILL_4__2016_ gnd vdd FILL
XFILL_0__2756_ gnd vdd FILL
XFILL_0__2336_ gnd vdd FILL
XFILL_7__1738_ gnd vdd FILL
XFILL_5__1720_ gnd vdd FILL
XFILL_1__1712_ gnd vdd FILL
XFILL_9__2605_ gnd vdd FILL
XFILL_5__2925_ gnd vdd FILL
XFILL_5__2505_ gnd vdd FILL
XFILL_8__3494_ gnd vdd FILL
XFILL_8__3074_ gnd vdd FILL
XFILL_1__2917_ gnd vdd FILL
X_1987_ _926__bF$buf1 _900_ _1123_ vdd gnd NAND2X1
XFILL_4__3394_ gnd vdd FILL
XFILL_8__1807_ gnd vdd FILL
XFILL_4__1707_ gnd vdd FILL
XFILL_7__2696_ gnd vdd FILL
XFILL_7__2276_ gnd vdd FILL
XFILL_1__2670_ gnd vdd FILL
XFILL_1__2250_ gnd vdd FILL
XFILL_3__2596_ gnd vdd FILL
XFILL_3__2176_ gnd vdd FILL
XFILL_8__1980_ gnd vdd FILL
XFILL_5__3463_ gnd vdd FILL
XFILL_5__3043_ gnd vdd FILL
XFILL_1__3455_ gnd vdd FILL
XFILL_1__3035_ gnd vdd FILL
XFILL_4__1880_ gnd vdd FILL
XFILL_0__1780_ gnd vdd FILL
XFILL_2__1798_ gnd vdd FILL
XFILL_8__2765_ gnd vdd FILL
XFILL_8__2345_ gnd vdd FILL
XFILL_4__2665_ gnd vdd FILL
XFILL_4__2245_ gnd vdd FILL
XFILL_0__2985_ gnd vdd FILL
XFILL_0__2565_ gnd vdd FILL
XFILL_6__3532_ gnd vdd FILL
XFILL_0__2145_ gnd vdd FILL
XFILL_6__3112_ gnd vdd FILL
XFILL_2__3524_ gnd vdd FILL
XFILL_2__3104_ gnd vdd FILL
XFILL_7__1967_ gnd vdd FILL
XFILL_1__1941_ gnd vdd FILL
XFILL_3__1867_ gnd vdd FILL
XFILL_9__2414_ gnd vdd FILL
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
XFILL_1__2306_ gnd vdd FILL
XFILL_2_BUFX2_insert48 gnd vdd FILL
XFILL_2_BUFX2_insert49 gnd vdd FILL
X_1796_ _940_ _947_ _948_ vdd gnd NOR2X1
XFILL_5__3519_ gnd vdd FILL
XFILL_4__1936_ gnd vdd FILL
XFILL_7__2085_ gnd vdd FILL
XFILL_0__1836_ gnd vdd FILL
XFILL_6__2803_ gnd vdd FILL
X_3522_ _1606_ _1607_ _1608_ vdd gnd XOR2X1
X_3102_ _724_ _747_ _753_ _81_ vdd gnd OAI21X1
XFILL_8__2994_ gnd vdd FILL
XFILL_8__2574_ gnd vdd FILL
XFILL_8__2154_ gnd vdd FILL
XFILL_4__2894_ gnd vdd FILL
XFILL_4__2474_ gnd vdd FILL
XFILL_4__2054_ gnd vdd FILL
XFILL_0__2794_ gnd vdd FILL
XFILL_0__2374_ gnd vdd FILL
XFILL_7__1776_ gnd vdd FILL
XFILL_1__1750_ gnd vdd FILL
XFILL_0__3579_ gnd vdd FILL
XFILL_0__3159_ gnd vdd FILL
XFILL_9__2223_ gnd vdd FILL
XFILL_5__2963_ gnd vdd FILL
XFILL_5__2543_ gnd vdd FILL
XFILL_5__2123_ gnd vdd FILL
XFILL_1__2955_ gnd vdd FILL
XFILL_1__2535_ gnd vdd FILL
XFILL_7__3502_ gnd vdd FILL
XFILL_1__2115_ gnd vdd FILL
XFILL_9__3428_ gnd vdd FILL
XFILL_3__3402_ gnd vdd FILL
XFILL184050x163950 gnd vdd FILL
XFILL_8__1845_ gnd vdd FILL
XFILL184650x105450 gnd vdd FILL
XFILL_4__1745_ gnd vdd FILL
XFILL_6__2612_ gnd vdd FILL
X_3331_ _85_ vdd _1__bF$buf9 clk_bF$buf10 _AXYS[2]_[0] vdd 
+ gnd
+ DFFSR
XFILL_2__2604_ gnd vdd FILL
XFILL_5__3081_ gnd vdd FILL
XFILL_7__3099_ gnd vdd FILL
XFILL_1__3493_ gnd vdd FILL
XFILL_1__3073_ gnd vdd FILL
XFILL_5__1814_ gnd vdd FILL
XFILL_8__2383_ gnd vdd FILL
XFILL_1__1806_ gnd vdd FILL
XFILL_4__2283_ gnd vdd FILL
XFILL_0__2183_ gnd vdd FILL
XFILL_8__3588_ gnd vdd FILL
XFILL_8__3168_ gnd vdd FILL
XFILL_6__3150_ gnd vdd FILL
XFILL_2__3562_ gnd vdd FILL
XFILL_2__3142_ gnd vdd FILL
XFILL_4__3488_ gnd vdd FILL
XFILL_4__3068_ gnd vdd FILL
X_2602_ _869__bF$buf1 _953_ _1145_ _333_ vdd gnd NAND3X1
XFILL_0__3388_ gnd vdd FILL
XFILL_5__2772_ gnd vdd FILL
XFILL_5__2352_ gnd vdd FILL
XFILL_1__2764_ gnd vdd FILL
XFILL_1__2344_ gnd vdd FILL
XFILL_3__3211_ gnd vdd FILL
XFILL_5__3557_ gnd vdd FILL
XFILL_5__3137_ gnd vdd FILL
XFILL_1__3549_ gnd vdd FILL
XFILL_1__3129_ gnd vdd FILL
XFILL_4__1974_ gnd vdd FILL
X_2199_ _853__bF$buf3 _938_ _1333_ _1334_ vdd gnd OAI21X1
XFILL_0__1874_ gnd vdd FILL
XFILL_6__2841_ gnd vdd FILL
XFILL_8__2859_ gnd vdd FILL
X_3560_ _1649__bF$buf1 _1622_ _1637_ _1494_ vdd gnd OAI21X1
XFILL_6__2421_ gnd vdd FILL
XFILL_8__2439_ gnd vdd FILL
X_3140_ _AXYS[3]_[6] _767_ _774_ vdd gnd NAND2X1
XFILL_8__2019_ gnd vdd FILL
XFILL_6__2001_ gnd vdd FILL
XFILL_2__2833_ gnd vdd FILL
XFILL_2__2413_ gnd vdd FILL
XFILL_4__2759_ gnd vdd FILL
XFILL_4__2339_ gnd vdd FILL
XFILL184350x150 gnd vdd FILL
XFILL_0__2659_ gnd vdd FILL
XFILL_0__2239_ gnd vdd FILL
XFILL_6__3206_ gnd vdd FILL
XFILL_0__3600_ gnd vdd FILL
XFILL182850x109350 gnd vdd FILL
XFILL_8__2192_ gnd vdd FILL
XFILL_4__2092_ gnd vdd FILL
XFILL_3__2902_ gnd vdd FILL
XFILL_5__2828_ gnd vdd FILL
XFILL_5__2408_ gnd vdd FILL
XFILL_8__3397_ gnd vdd FILL
XFILL_2__3371_ gnd vdd FILL
X_2831_ _531_ _526_ _532_ vdd gnd NOR2X1
X_2411_ _162_ _165_ _166_ vdd gnd AND2X2
XFILL_0__3197_ gnd vdd FILL
XFILL_5__2581_ gnd vdd FILL
XFILL_7__2599_ gnd vdd FILL
XFILL_5__2161_ gnd vdd FILL
XFILL_7__2179_ gnd vdd FILL
XFILL_1__2993_ gnd vdd FILL
XFILL_1__2573_ gnd vdd FILL
XFILL_7__3540_ gnd vdd FILL
XFILL_1__2153_ gnd vdd FILL
XFILL_7__3120_ gnd vdd FILL
XFILL_3__2499_ gnd vdd FILL
XFILL_3__2079_ gnd vdd FILL
XFILL_3__3440_ gnd vdd FILL
XFILL_3__3020_ gnd vdd FILL
XFILL_8__1883_ gnd vdd FILL
XFILL_5__3366_ gnd vdd FILL
XFILL_4__1783_ gnd vdd FILL
XFILL_6__2650_ gnd vdd FILL
XFILL_8__2668_ gnd vdd FILL
XFILL_8__2248_ gnd vdd FILL
XFILL_6__2230_ gnd vdd FILL
XFILL_2__2642_ gnd vdd FILL
XFILL_2__2222_ gnd vdd FILL
XFILL_4__2988_ gnd vdd FILL
XFILL_4__2568_ gnd vdd FILL
XFILL_4__2148_ gnd vdd FILL
XFILL_0__2888_ gnd vdd FILL
XFILL_0__2468_ gnd vdd FILL
XFILL_6__3435_ gnd vdd FILL
XFILL_0__2048_ gnd vdd FILL
XFILL_6__3015_ gnd vdd FILL
XFILL_2__3427_ gnd vdd FILL
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
X_1699_ _853__bF$buf4 DI[3] _856_ _857_ vdd gnd OAI21X1
XFILL_8__1939_ gnd vdd FILL
XFILL_6__1921_ gnd vdd FILL
X_2640_ RDY_bF$buf4 _367_ _368_ vdd gnd NAND2X1
X_2220_ RDY_bF$buf3 _1353_ _1354_ _1355_ vdd gnd OAI21X1
XFILL_2__1913_ gnd vdd FILL
XFILL_4__1839_ gnd vdd FILL
XFILL_5__2390_ gnd vdd FILL
XFILL_0__1739_ gnd vdd FILL
XFILL_6__2706_ gnd vdd FILL
X_3425_ AI[3] _1508_ _1657_ _1511_ vdd gnd OAI21X1
X_3005_ _666_ _670_ _671_ _66_ vdd gnd OAI21X1
XFILL_1__2382_ gnd vdd FILL
XFILL_5__3595_ gnd vdd FILL
XFILL_8__1692_ gnd vdd FILL
XFILL_5__3175_ gnd vdd FILL
XFILL_1__3587_ gnd vdd FILL
XFILL_1__3167_ gnd vdd FILL
XFILL_5__1908_ gnd vdd FILL
XFILL_8__2897_ gnd vdd FILL
XFILL_8__2477_ gnd vdd FILL
XFILL_8__2057_ gnd vdd FILL
XFILL_2__2871_ gnd vdd FILL
XFILL_2__2451_ gnd vdd FILL
XFILL_2__2031_ gnd vdd FILL
XFILL_4__2797_ gnd vdd FILL
XFILL_4__2377_ gnd vdd FILL
X_1911_ ABH[0] _1055_ vdd gnd INVX1
XFILL_0__2697_ gnd vdd FILL
XFILL_0__2277_ gnd vdd FILL
XFILL_7__2620_ gnd vdd FILL
XFILL_7__2200_ gnd vdd FILL
XFILL_3__1999_ gnd vdd FILL
XFILL_9__2546_ gnd vdd FILL
XFILL_3__2940_ gnd vdd FILL
XFILL_3__2520_ gnd vdd FILL
XFILL_3__2100_ gnd vdd FILL
XFILL_5__2866_ gnd vdd FILL
XFILL_5__2446_ gnd vdd FILL
XFILL_5__2026_ gnd vdd FILL
XFILL_1__2858_ gnd vdd FILL
XFILL_1__2438_ gnd vdd FILL
XFILL_1__2018_ gnd vdd FILL
XFILL_7__3405_ gnd vdd FILL
XFILL_6__1730_ gnd vdd FILL
XFILL_8__1748_ gnd vdd FILL
XFILL_2__1722_ gnd vdd FILL
XFILL_0__1968_ gnd vdd FILL
XFILL_6__2935_ gnd vdd FILL
XFILL_6__2515_ gnd vdd FILL
X_3234_ _1483_[1] vdd _1__bF$buf2 clk_bF$buf8 state[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2191_ gnd vdd FILL
XFILL_2__2927_ gnd vdd FILL
XFILL_2__2507_ gnd vdd FILL
XFILL_1__3396_ gnd vdd FILL
XFILL_5__1717_ gnd vdd FILL
XFILL_8__2286_ gnd vdd FILL
XFILL_1__1709_ gnd vdd FILL
XFILL_2__2680_ gnd vdd FILL
XFILL_2__2260_ gnd vdd FILL
XFILL_4__2186_ gnd vdd FILL
X_1720_ state[2] _873_ vdd gnd INVX1
XFILL_6__3473_ gnd vdd FILL
XFILL_0__2086_ gnd vdd FILL
XFILL_6__3053_ gnd vdd FILL
XFILL_2__3465_ gnd vdd FILL
XFILL_2__3045_ gnd vdd FILL
XFILL_5__1890_ gnd vdd FILL
X_2925_ load_reg _607_ vdd gnd INVX1
X_2505_ _974_ _208_ _249_ _250_ vdd gnd OAI21X1
XFILL_1__1882_ gnd vdd FILL
XFILL_9__2355_ gnd vdd FILL
XFILL_5__2675_ gnd vdd FILL
XFILL_5__2255_ gnd vdd FILL
XFILL_1__2667_ gnd vdd FILL
XFILL_1__2247_ gnd vdd FILL
XFILL_7__3214_ gnd vdd FILL
XFILL_3__3534_ gnd vdd FILL
XFILL_3__3114_ gnd vdd FILL
XFILL_8__1977_ gnd vdd FILL
XFILL_2__1951_ gnd vdd FILL
XFILL_4__1877_ gnd vdd FILL
XFILL_0__1777_ gnd vdd FILL
XFILL_6__2744_ gnd vdd FILL
X_3463_ _1548_ _1549_ vdd gnd INVX1
XFILL_6__2324_ gnd vdd FILL
X_3043_ _969_ _981_ _705_ _706_ vdd gnd OAI21X1
XFILL_2__2736_ gnd vdd FILL
XFILL_2__2316_ gnd vdd FILL
XFILL_7__1700_ gnd vdd FILL
XFILL_4__3603_ gnd vdd FILL
XFILL_6__3529_ gnd vdd FILL
XFILL_6__3109_ gnd vdd FILL
XFILL_0__3503_ gnd vdd FILL
XFILL_5__1946_ gnd vdd FILL
XFILL_8__2095_ gnd vdd FILL
XFILL_1__1938_ gnd vdd FILL
XFILL_7__2905_ gnd vdd FILL
XFILL_3__2805_ gnd vdd FILL
X_2734_ RDY_bF$buf8 _277_ _453_ _451_ _13_ vdd 
+ gnd
+ OAI22X1
X_2314_ _1403_ _1446_ _1441_ _1447_ vdd gnd NAND3X1
XFILL_1__1691_ gnd vdd FILL
XFILL_9__2164_ gnd vdd FILL
XFILL_5__2484_ gnd vdd FILL
XFILL_5__2064_ gnd vdd FILL
X_3519_ _1659_ _1662_ _1667_ _1605_ vdd gnd OAI21X1
XFILL_1__2896_ gnd vdd FILL
XFILL_1__2476_ gnd vdd FILL
XFILL_7__3443_ gnd vdd FILL
XFILL_1__2056_ gnd vdd FILL
XFILL_7__3023_ gnd vdd FILL
XFILL_9__3369_ gnd vdd FILL
XFILL_8__1786_ gnd vdd FILL
XFILL_2__1760_ gnd vdd FILL
XFILL_6__2973_ gnd vdd FILL
XFILL_6__2553_ gnd vdd FILL
X_3272_ _34_ vdd _1__bF$buf9 clk_bF$buf1 op[2] vdd 
+ gnd
+ DFFSR
XFILL_6__2133_ gnd vdd FILL
XFILL_2__2965_ gnd vdd FILL
XFILL_2__2545_ gnd vdd FILL
XFILL_8__3512_ gnd vdd FILL
XFILL_2__2125_ gnd vdd FILL
XFILL_4__3412_ gnd vdd FILL
XFILL_5__1755_ gnd vdd FILL
XFILL_1__1747_ gnd vdd FILL
XFILL_7__2714_ gnd vdd FILL
XFILL_3__2614_ gnd vdd FILL
XFILL_6__3091_ gnd vdd FILL
XFILL_2__3083_ gnd vdd FILL
X_2963_ clv _633_ _634_ vdd gnd NOR2X1
XFILL_6__1824_ gnd vdd FILL
X_2543_ _277_ _208_ _282_ _1685_[11] vdd gnd OAI21X1
X_2123_ _960_ _868_ _1259_ vdd gnd NAND2X1
XFILL_2__1816_ gnd vdd FILL
XFILL_5__2293_ gnd vdd FILL
XFILL_6__2609_ gnd vdd FILL
X_3328_ _82_ vdd _1__bF$buf1 clk_bF$buf3 _AXYS[1]_[5] vdd 
+ gnd
+ DFFSR
XFILL_1__2285_ gnd vdd FILL
XFILL_7_BUFX2_insert60 gnd vdd FILL
XFILL_7_BUFX2_insert61 gnd vdd FILL
XFILL_7_BUFX2_insert62 gnd vdd FILL
XFILL_7_BUFX2_insert63 gnd vdd FILL
XFILL_7_BUFX2_insert64 gnd vdd FILL
XFILL_3__3152_ gnd vdd FILL
XFILL_7_BUFX2_insert65 gnd vdd FILL
XFILL_7_BUFX2_insert66 gnd vdd FILL
XFILL_7_BUFX2_insert67 gnd vdd FILL
XFILL_5__3498_ gnd vdd FILL
XFILL_7_BUFX2_insert68 gnd vdd FILL
XFILL_5__3078_ gnd vdd FILL
XFILL_7_BUFX2_insert69 gnd vdd FILL
XFILL_6__2782_ gnd vdd FILL
XFILL_6__2362_ gnd vdd FILL
X_3081_ _AXYS[0]_[6] _693_ _739_ vdd gnd NAND2X1
XFILL_2__2774_ gnd vdd FILL
XFILL_2__2354_ gnd vdd FILL
X_1814_ _965_ _963_ _966_ vdd gnd NOR2X1
XFILL_4__3221_ gnd vdd FILL
XFILL_6__3147_ gnd vdd FILL
XFILL_2__3559_ gnd vdd FILL
XFILL_0__3541_ gnd vdd FILL
XFILL_0__3121_ gnd vdd FILL
XFILL_2__3139_ gnd vdd FILL
XFILL_5__1984_ gnd vdd FILL
XFILL_1__1976_ gnd vdd FILL
XFILL_7__2943_ gnd vdd FILL
XFILL_7__2523_ gnd vdd FILL
XFILL_7__2103_ gnd vdd FILL
XFILL_3__2843_ gnd vdd FILL
XFILL_3__2423_ gnd vdd FILL
XFILL_3__2003_ gnd vdd FILL
XFILL_5__2769_ gnd vdd FILL
XFILL_5__2349_ gnd vdd FILL
XFILL_3__3208_ gnd vdd FILL
X_2772_ DIMUX[7] _446_ _487_ _488_ vdd gnd AOI21X1
X_2352_ _1252_ _1408_ _1482_ _117_ vdd gnd NAND3X1
XFILL_4__2912_ gnd vdd FILL
XFILL_6__2838_ gnd vdd FILL
X_3557_ ADD[5] _1649__bF$buf1 _1636_ vdd gnd NAND2X1
XFILL_6__2418_ gnd vdd FILL
X_3137_ _724_ _767_ _772_ _97_ vdd gnd OAI21X1
XFILL_7__3481_ gnd vdd FILL
XFILL_1__2094_ gnd vdd FILL
XFILL_7__3061_ gnd vdd FILL
XFILL_0__2812_ gnd vdd FILL
XFILL_3__3381_ gnd vdd FILL
XFILL_6__2591_ gnd vdd FILL
XFILL_8__2189_ gnd vdd FILL
XFILL_6__2171_ gnd vdd FILL
XFILL_2__2583_ gnd vdd FILL
XFILL_8__3550_ gnd vdd FILL
XFILL_2__2163_ gnd vdd FILL
XFILL_8__3130_ gnd vdd FILL
XFILL184650x179550 gnd vdd FILL
XFILL_4__2089_ gnd vdd FILL
XFILL_4__3450_ gnd vdd FILL
XFILL_4__3030_ gnd vdd FILL
XFILL_6__3376_ gnd vdd FILL
XFILL_2__3368_ gnd vdd FILL
XFILL_5__1793_ gnd vdd FILL
X_2828_ _528_ _1175_ _529_ vdd gnd AND2X2
X_2408_ _918__bF$buf3 _1035_ _981_ _163_ vdd gnd OAI21X1
XFILL_1__1785_ gnd vdd FILL
XFILL_7__2752_ gnd vdd FILL
XFILL_7__2332_ gnd vdd FILL
XFILL_3__2652_ gnd vdd FILL
XFILL_3__2232_ gnd vdd FILL
XFILL_5__2998_ gnd vdd FILL
XFILL_5__2578_ gnd vdd FILL
XFILL_5__2158_ gnd vdd FILL
XFILL_7__3537_ gnd vdd FILL
XFILL_7__3117_ gnd vdd FILL
XFILL_1__3511_ gnd vdd FILL
XFILL_3__3437_ gnd vdd FILL
XFILL_3__3017_ gnd vdd FILL
XFILL_6__1862_ gnd vdd FILL
X_2581_ _900_ _1037_ _869__bF$buf3 _312_ vdd gnd OAI21X1
X_2161_ _1158_ _1152_ _1145_ _1296_ vdd gnd OAI21X1
XFILL_2__1854_ gnd vdd FILL
XFILL_8__2821_ gnd vdd FILL
XFILL_8__2401_ gnd vdd FILL
XFILL_4__2721_ gnd vdd FILL
XFILL_4__2301_ gnd vdd FILL
XFILL_6__2647_ gnd vdd FILL
XFILL_6__2227_ gnd vdd FILL
X_3366_ AN ADD[6] _1644_ vdd gnd NOR2X1
XFILL_2__2639_ gnd vdd FILL
XFILL_0__2621_ gnd vdd FILL
XFILL_0__2201_ gnd vdd FILL
XFILL_2__2219_ gnd vdd FILL
XFILL_3__3190_ gnd vdd FILL
XFILL_4__3506_ gnd vdd FILL
XFILL_3__1923_ gnd vdd FILL
XFILL_0__3406_ gnd vdd FILL
XFILL_5__1849_ gnd vdd FILL
XFILL_7__2808_ gnd vdd FILL
XFILL_2__2392_ gnd vdd FILL
XFILL_3__2708_ gnd vdd FILL
X_1852_ _995_ _879_ _996_ vdd gnd NAND2X1
XFILL_6__3185_ gnd vdd FILL
XFILL_2__3597_ gnd vdd FILL
XFILL_2__3177_ gnd vdd FILL
XFILL_6__1918_ gnd vdd FILL
X_2637_ PC[3] _336_ _365_ vdd gnd NAND2X1
X_2217_ _1219__bF$buf2 _1168_ _1352_ vdd gnd NOR2X1
XFILL_7__2981_ gnd vdd FILL
XFILL_7__2561_ gnd vdd FILL
XFILL_7__2141_ gnd vdd FILL
XFILL_9__2487_ gnd vdd FILL
XFILL_3__2881_ gnd vdd FILL
XFILL_3__2461_ gnd vdd FILL
XFILL_3__2041_ gnd vdd FILL
XFILL_5__2387_ gnd vdd FILL
XFILL_1__2799_ gnd vdd FILL
XFILL_1__2379_ gnd vdd FILL
XFILL_8__1689_ gnd vdd FILL
X_2390_ _968_ _128_ _147_ _148_ vdd gnd OAI21X1
XFILL_8__2630_ gnd vdd FILL
XFILL_8__2210_ gnd vdd FILL
XFILL_4__2950_ gnd vdd FILL
XFILL_4__2530_ gnd vdd FILL
XFILL_4__2110_ gnd vdd FILL
XFILL_6__2876_ gnd vdd FILL
XFILL_6__2456_ gnd vdd FILL
X_3595_ _1686_[0] DO[0] vdd gnd BUFX2
XFILL_6__2036_ gnd vdd FILL
X_3175_ _806_ _804_ _807_ vdd gnd AND2X2
XFILL_0__2850_ gnd vdd FILL
XFILL_2__2868_ gnd vdd FILL
XFILL_0__2430_ gnd vdd FILL
XFILL_2__2448_ gnd vdd FILL
XFILL_2__2028_ gnd vdd FILL
XFILL_0__2010_ gnd vdd FILL
XFILL_8__3415_ gnd vdd FILL
X_1908_ _887__bF$buf1 _891_ _1051__bF$buf3 _1052_ vdd gnd OAI21X1
XFILL_7__1832_ gnd vdd FILL
XFILL_3__1732_ gnd vdd FILL
XFILL_0__3215_ gnd vdd FILL
XFILL_7__2617_ gnd vdd FILL
XFILL_3__2937_ gnd vdd FILL
XFILL_3__2517_ gnd vdd FILL
XFILL_8__1901_ gnd vdd FILL
XFILL_4__1801_ gnd vdd FILL
X_2866_ _311_ _1219__bF$buf1 _558_ _37_ vdd gnd AOI21X1
XFILL_6__1727_ gnd vdd FILL
X_2446_ _918__bF$buf3 _891_ _196_ _197_ vdd gnd OAI21X1
X_2026_ _1161_ _1145_ _1162_ vdd gnd AND2X2
XFILL_7__2790_ gnd vdd FILL
XFILL_7__2370_ gnd vdd FILL
XFILL_9__2296_ gnd vdd FILL
XFILL_0__1701_ gnd vdd FILL
XFILL_2__1719_ gnd vdd FILL
XFILL_3__2690_ gnd vdd FILL
XFILL_3__2270_ gnd vdd FILL
XFILL_5__2196_ gnd vdd FILL
XFILL_1__2188_ gnd vdd FILL
XFILL_7__3155_ gnd vdd FILL
XFILL_0__2906_ gnd vdd FILL
XFILL_3__3475_ gnd vdd FILL
XFILL_3__3055_ gnd vdd FILL
XFILL_2__1892_ gnd vdd FILL
XFILL_6__2685_ gnd vdd FILL
XFILL_6__2265_ gnd vdd FILL
XFILL_2__2677_ gnd vdd FILL
XFILL_2__2257_ gnd vdd FILL
XFILL_8__3224_ gnd vdd FILL
X_1717_ state[1] _870_ vdd gnd INVX1
XFILL_4__3544_ gnd vdd FILL
XFILL_4__3124_ gnd vdd FILL
XFILL_9__1987_ gnd vdd FILL
XFILL_3__1961_ gnd vdd FILL
XFILL_0__3444_ gnd vdd FILL
XFILL_0__3024_ gnd vdd FILL
XFILL_5__1887_ gnd vdd FILL
XFILL_1__1879_ gnd vdd FILL
XFILL_7__2846_ gnd vdd FILL
XFILL_7__2426_ gnd vdd FILL
XFILL_7__2006_ gnd vdd FILL
XFILL_1__2820_ gnd vdd FILL
XFILL_1__2400_ gnd vdd FILL
XFILL_3__2746_ gnd vdd FILL
XFILL_3__2326_ gnd vdd FILL
X_1890_ _886__bF$buf1 _926__bF$buf2 _893_ _1034_ vdd gnd OAI21X1
XFILL_8__1710_ gnd vdd FILL
XFILL_6__1956_ gnd vdd FILL
X_2675_ RDY_bF$buf4 _398_ _397_ _399_ vdd gnd NAND3X1
X_2255_ _1150_ _1323_ _1321_ _1389_ vdd gnd OAI21X1
XFILL_2__1948_ gnd vdd FILL
XFILL_0__1930_ gnd vdd FILL
XFILL_8__2915_ gnd vdd FILL
XFILL_4__2815_ gnd vdd FILL
XFILL_7__3384_ gnd vdd FILL
XFILL_0__2715_ gnd vdd FILL
XFILL_6__2494_ gnd vdd FILL
XFILL_6__2074_ gnd vdd FILL
XFILL_2__2486_ gnd vdd FILL
XFILL_8__3453_ gnd vdd FILL
XFILL_2__2066_ gnd vdd FILL
XFILL_8__3033_ gnd vdd FILL
X_1946_ _1047_ _1083_ _1086_ AI[3] vdd gnd OAI21X1
XFILL_7__1870_ gnd vdd FILL
XFILL_9__1796_ gnd vdd FILL
XFILL_3__1770_ gnd vdd FILL
XFILL_5__1696_ gnd vdd FILL
XFILL_1__1688_ gnd vdd FILL
XFILL_7__2655_ gnd vdd FILL
XFILL_7__2235_ gnd vdd FILL
XFILL_3__2975_ gnd vdd FILL
XFILL_3__2555_ gnd vdd FILL
XFILL_3__2135_ gnd vdd FILL
XFILL_5__3422_ gnd vdd FILL
XFILL_5__3002_ gnd vdd FILL
XFILL_1__3414_ gnd vdd FILL
XFILL_6__1765_ gnd vdd FILL
X_2484_ _1082_ _182_ _231_ _232_ vdd gnd AOI21X1
X_2064_ write_back _1125_ _1200_ vdd gnd NOR2X1
XFILL_2__1757_ gnd vdd FILL
XFILL_8__2724_ gnd vdd FILL
XFILL_8__2304_ gnd vdd FILL
XFILL_4__2624_ gnd vdd FILL
XFILL_4__2204_ gnd vdd FILL
X_3269_ _31_ vdd _1__bF$buf6 clk_bF$buf5 bit_ins vdd 
+ gnd
+ DFFSR
XFILL_7__3193_ gnd vdd FILL
XFILL_0__2944_ gnd vdd FILL
XFILL_0__2524_ gnd vdd FILL
XFILL_0__2104_ gnd vdd FILL
XFILL_8__3509_ gnd vdd FILL
XFILL_3__3093_ gnd vdd FILL
XFILL_7__1926_ gnd vdd FILL
XFILL_4__3409_ gnd vdd FILL
XFILL_1__1900_ gnd vdd FILL
XFILL_3__1826_ gnd vdd FILL
XFILL_2__2295_ gnd vdd FILL
X_1755_ rotate _908_ vdd gnd INVX1
XFILL_4__3582_ gnd vdd FILL
XFILL_4__3162_ gnd vdd FILL
XFILL_6__3088_ gnd vdd FILL
XFILL_0__3482_ gnd vdd FILL
XFILL_0__3062_ gnd vdd FILL
XFILL_7__2884_ gnd vdd FILL
XFILL_7__2464_ gnd vdd FILL
XFILL_7__2044_ gnd vdd FILL
XFILL_3__2784_ gnd vdd FILL
XFILL_3__2364_ gnd vdd FILL
XFILL_5__3231_ gnd vdd FILL
XFILL_1__3223_ gnd vdd FILL
XFILL_3__3149_ gnd vdd FILL
XFILL_6__1994_ gnd vdd FILL
X_2293_ _853__bF$buf3 _1274_ _1425_ _1426_ vdd gnd OAI21X1
XFILL_2__1986_ gnd vdd FILL
XFILL_8__2953_ gnd vdd FILL
XFILL_8__2533_ gnd vdd FILL
XFILL_8__2113_ gnd vdd FILL
XFILL_4__2853_ gnd vdd FILL
XFILL_4__2433_ gnd vdd FILL
XFILL_4__2013_ gnd vdd FILL
XFILL_6__2779_ gnd vdd FILL
X_3498_ _1582_ _1581_ _1583_ _1584_ vdd gnd NAND3X1
XFILL_6__2359_ gnd vdd FILL
X_3078_ _730_ _734_ _735_ _736_ vdd gnd OAI21X1
XFILL_0__2753_ gnd vdd FILL
XFILL_0__2333_ gnd vdd FILL
XFILL_7__1735_ gnd vdd FILL
XFILL_4__3218_ gnd vdd FILL
XFILL_0__3538_ gnd vdd FILL
XFILL_0__3118_ gnd vdd FILL
XFILL_5__2922_ gnd vdd FILL
XFILL_5__2502_ gnd vdd FILL
XFILL_8__3491_ gnd vdd FILL
XFILL_8__3071_ gnd vdd FILL
XFILL_1__2914_ gnd vdd FILL
X_1984_ _864_ _944_ _1120_ _1121_ vdd gnd OAI21X1
XFILL_4__3391_ gnd vdd FILL
XFILL_8__1804_ gnd vdd FILL
XFILL181650x109350 gnd vdd FILL
XFILL_4__1704_ gnd vdd FILL
X_2769_ _484_ _485_ _16_ vdd gnd AND2X2
X_2349_ _1230_ _1237_ _1480_ vdd gnd NOR2X1
XFILL_7__2693_ gnd vdd FILL
XFILL_7__2273_ gnd vdd FILL
XFILL_3__2593_ gnd vdd FILL
XFILL_3__2173_ gnd vdd FILL
XFILL_5__2099_ gnd vdd FILL
XFILL_4__2909_ gnd vdd FILL
XFILL_7__3478_ gnd vdd FILL
XFILL_5__3460_ gnd vdd FILL
XFILL_7__3058_ gnd vdd FILL
XFILL_5__3040_ gnd vdd FILL
XFILL_0__2809_ gnd vdd FILL
XFILL_1__3452_ gnd vdd FILL
XFILL_1__3032_ gnd vdd FILL
XFILL_3__3378_ gnd vdd FILL
XFILL_2__1795_ gnd vdd FILL
XFILL_8__2762_ gnd vdd FILL
XFILL_8__2342_ gnd vdd FILL
XFILL_4__2662_ gnd vdd FILL
XFILL_4__2242_ gnd vdd FILL
XFILL_6__2588_ gnd vdd FILL
XFILL_6__2168_ gnd vdd FILL
XFILL_0__2982_ gnd vdd FILL
XFILL_0__2562_ gnd vdd FILL
XFILL_8__3547_ gnd vdd FILL
XFILL_0__2142_ gnd vdd FILL
XFILL_8__3127_ gnd vdd FILL
XFILL_2__3521_ gnd vdd FILL
XFILL_2__3101_ gnd vdd FILL
XFILL_7__1964_ gnd vdd FILL
XFILL_4__3447_ gnd vdd FILL
XFILL_4__3027_ gnd vdd FILL
XFILL_3__1864_ gnd vdd FILL
XFILL_7__2749_ gnd vdd FILL
XFILL_5__2731_ gnd vdd FILL
XFILL_5__2311_ gnd vdd FILL
XFILL_7__2329_ gnd vdd FILL
XFILL_2_BUFX2_insert10 gnd vdd FILL
XFILL_2_BUFX2_insert11 gnd vdd FILL
XFILL_2_BUFX2_insert12 gnd vdd FILL
XFILL_2_BUFX2_insert13 gnd vdd FILL
XFILL_2_BUFX2_insert14 gnd vdd FILL
XFILL_2_BUFX2_insert15 gnd vdd FILL
XFILL_2_BUFX2_insert16 gnd vdd FILL
XFILL_2_BUFX2_insert17 gnd vdd FILL
XFILL_1__2723_ gnd vdd FILL
XFILL_2_BUFX2_insert18 gnd vdd FILL
XFILL_1__2303_ gnd vdd FILL
XFILL_2_BUFX2_insert19 gnd vdd FILL
XFILL_3__2649_ gnd vdd FILL
XFILL_3__2229_ gnd vdd FILL
X_1793_ state[2] _866_ _945_ vdd gnd NOR2X1
XFILL_5__3516_ gnd vdd FILL
XFILL_1__3508_ gnd vdd FILL
XFILL_4__1933_ gnd vdd FILL
XFILL_6__1859_ gnd vdd FILL
X_2998_ _659_ _664_ _665_ _65_ vdd gnd OAI21X1
X_2578_ shift_right _311_ vdd gnd INVX1
X_2158_ _1293_ _1249_ _1213_ _1294_ vdd gnd NOR3X1
XFILL_7__2082_ gnd vdd FILL
XFILL_0__1833_ gnd vdd FILL
XFILL_8__2818_ gnd vdd FILL
XFILL_6__2800_ gnd vdd FILL
XFILL_4__2718_ gnd vdd FILL
XFILL_0__2618_ gnd vdd FILL
XFILL183150x101550 gnd vdd FILL
XFILL_3__3187_ gnd vdd FILL
XFILL_8__2991_ gnd vdd FILL
XFILL_8__2571_ gnd vdd FILL
XFILL_8__2151_ gnd vdd FILL
XFILL_4__2891_ gnd vdd FILL
XFILL_4__2471_ gnd vdd FILL
XFILL_4__2051_ gnd vdd FILL
XFILL_6__2397_ gnd vdd FILL
XFILL_0__2791_ gnd vdd FILL
XFILL_0__2371_ gnd vdd FILL
XFILL_2__2389_ gnd vdd FILL
X_1849_ _881_ _917_ _993_ vdd gnd NOR2X1
XFILL_7__1773_ gnd vdd FILL
XFILL_0__3156_ gnd vdd FILL
XFILL_7__2978_ gnd vdd FILL
XFILL_5__2960_ gnd vdd FILL
XFILL_5__2540_ gnd vdd FILL
XFILL_7__2558_ gnd vdd FILL
XFILL_5__2120_ gnd vdd FILL
XFILL_7__2138_ gnd vdd FILL
XFILL_1__2952_ gnd vdd FILL
XFILL_1__2532_ gnd vdd FILL
XFILL_1__2112_ gnd vdd FILL
XFILL_3__2878_ gnd vdd FILL
XFILL_3__2458_ gnd vdd FILL
XFILL_3__2038_ gnd vdd FILL
XFILL_8__1842_ gnd vdd FILL
XFILL_4__1742_ gnd vdd FILL
X_2387_ _133_ _1063_ _145_ vdd gnd NAND2X1
XFILL_8__2627_ gnd vdd FILL
XFILL_8__2207_ gnd vdd FILL
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
XFILL_8__2380_ gnd vdd FILL
XFILL184650x167850 gnd vdd FILL
XFILL_1__1803_ gnd vdd FILL
XFILL_3__1729_ gnd vdd FILL
XFILL_4__2280_ gnd vdd FILL
XFILL_0__2180_ gnd vdd FILL
XFILL_2__2198_ gnd vdd FILL
XFILL_8__3585_ gnd vdd FILL
XFILL_8__3165_ gnd vdd FILL
XFILL_4__3485_ gnd vdd FILL
XFILL_4__3065_ gnd vdd FILL
XFILL_0__3385_ gnd vdd FILL
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
X_2196_ _1330_ _1326_ _1328_ _1331_ vdd gnd OAI21X1
XFILL_0__1871_ gnd vdd FILL
XFILL_2__1889_ gnd vdd FILL
XFILL_8__2856_ gnd vdd FILL
XFILL_8__2436_ gnd vdd FILL
XFILL_8__2016_ gnd vdd FILL
XFILL_2__2830_ gnd vdd FILL
XFILL_2__2410_ gnd vdd FILL
XFILL_4__2756_ gnd vdd FILL
XFILL_4__2336_ gnd vdd FILL
XFILL_0__2656_ gnd vdd FILL
XFILL_0__2236_ gnd vdd FILL
XFILL_6__3203_ gnd vdd FILL
XFILL_3__1958_ gnd vdd FILL
XFILL_5__2825_ gnd vdd FILL
XFILL_5__2405_ gnd vdd FILL
XFILL_8__3394_ gnd vdd FILL
XFILL_1__2817_ gnd vdd FILL
X_1887_ _919_ _1031_ vdd gnd INVX1
XFILL_8__1707_ gnd vdd FILL
XFILL_0__3194_ gnd vdd FILL
XFILL_7__2596_ gnd vdd FILL
XFILL_7__2176_ gnd vdd FILL
XFILL_0__1927_ gnd vdd FILL
XFILL_1__2990_ gnd vdd FILL
XFILL_1__2570_ gnd vdd FILL
XFILL_1__2150_ gnd vdd FILL
XFILL_3__2496_ gnd vdd FILL
XFILL_3__2076_ gnd vdd FILL
XFILL_8__1880_ gnd vdd FILL
XFILL_4__1780_ gnd vdd FILL
XFILL_2__1698_ gnd vdd FILL
XFILL_8__2665_ gnd vdd FILL
XFILL_8__2245_ gnd vdd FILL
XFILL_4__2985_ gnd vdd FILL
XFILL_4__2565_ gnd vdd FILL
XFILL_4__2145_ gnd vdd FILL
XFILL_0__2885_ gnd vdd FILL
XFILL_0__2465_ gnd vdd FILL
XFILL_6__3432_ gnd vdd FILL
XFILL_0__2045_ gnd vdd FILL
XFILL_6__3012_ gnd vdd FILL
XFILL_2__3424_ gnd vdd FILL
XFILL_2__3004_ gnd vdd FILL
XFILL_7__1867_ gnd vdd FILL
XFILL_1__1841_ gnd vdd FILL
XFILL_3__1767_ gnd vdd FILL
XFILL_5__2634_ gnd vdd FILL
XFILL_5__2214_ gnd vdd FILL
XFILL_1__2626_ gnd vdd FILL
XFILL_1__2206_ gnd vdd FILL
X_1696_ _853__bF$buf4 DI[2] _854_ _855_ vdd gnd OAI21X1
XFILL_8__1936_ gnd vdd FILL
XFILL_5__3419_ gnd vdd FILL
XFILL_2__1910_ gnd vdd FILL
XFILL_4__1836_ gnd vdd FILL
XFILL_0__1736_ gnd vdd FILL
XFILL_6__2703_ gnd vdd FILL
X_3422_ _1653_ BI[3] _1508_ vdd gnd AND2X2
X_3002_ _1260_ _667_ _668_ _669_ vdd gnd OAI21X1
XFILL_5__3592_ gnd vdd FILL
XFILL_5__3172_ gnd vdd FILL
XFILL_1__3584_ gnd vdd FILL
XFILL_1__3164_ gnd vdd FILL
XFILL_5__1905_ gnd vdd FILL
XFILL_8__2894_ gnd vdd FILL
XFILL_8__2474_ gnd vdd FILL
XFILL_8__2054_ gnd vdd FILL
XFILL_4__2794_ gnd vdd FILL
XFILL_4__2374_ gnd vdd FILL
XFILL_0__2694_ gnd vdd FILL
XFILL_0__2274_ gnd vdd FILL
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
XFILL_7__3402_ gnd vdd FILL
XFILL_1__2015_ gnd vdd FILL
XFILL_8__1745_ gnd vdd FILL
XFILL_5__3228_ gnd vdd FILL
XFILL_0__1965_ gnd vdd FILL
XFILL_6__2932_ gnd vdd FILL
XFILL_6__2512_ gnd vdd FILL
X_3231_ _1685_[15] _830__bF$buf2 _848_ vdd gnd NAND2X1
XFILL_3_BUFX2_insert80 gnd vdd FILL
XFILL_3_BUFX2_insert81 gnd vdd FILL
XFILL_3_BUFX2_insert82 gnd vdd FILL
XFILL_2__2924_ gnd vdd FILL
XFILL_3_BUFX2_insert83 gnd vdd FILL
XFILL_3_BUFX2_insert84 gnd vdd FILL
XFILL_2__2504_ gnd vdd FILL
XFILL_3_BUFX2_insert85 gnd vdd FILL
XFILL_3_BUFX2_insert86 gnd vdd FILL
XFILL_3_BUFX2_insert87 gnd vdd FILL
XFILL_3_BUFX2_insert88 gnd vdd FILL
XFILL_3_BUFX2_insert89 gnd vdd FILL
XFILL_1__3393_ gnd vdd FILL
XFILL_5__1714_ gnd vdd FILL
XFILL_8__2283_ gnd vdd FILL
XFILL_1__1706_ gnd vdd FILL
XFILL_4__2183_ gnd vdd FILL
XFILL_5__2919_ gnd vdd FILL
XFILL_8__3488_ gnd vdd FILL
XFILL_0__2083_ gnd vdd FILL
XFILL_6__3470_ gnd vdd FILL
XFILL_6__3050_ gnd vdd FILL
XFILL_8__3068_ gnd vdd FILL
XFILL_2__3462_ gnd vdd FILL
XFILL_2__3042_ gnd vdd FILL
XFILL_4__3388_ gnd vdd FILL
X_2922_ _1172_ _594_ _604_ _605_ vdd gnd OAI21X1
X_2502_ DIMUX[6] _204_ _202_ ABL[6] _247_ vdd 
+ gnd
+ AOI22X1
XFILL_5__2672_ gnd vdd FILL
XFILL_5__2252_ gnd vdd FILL
XFILL_1__2664_ gnd vdd FILL
XFILL_1__2244_ gnd vdd FILL
XFILL_7__3211_ gnd vdd FILL
XFILL_3__3531_ gnd vdd FILL
XFILL_3__3111_ gnd vdd FILL
XFILL_8__1974_ gnd vdd FILL
XFILL_5__3457_ gnd vdd FILL
XFILL_5__3037_ gnd vdd FILL
XFILL_1__3449_ gnd vdd FILL
XFILL_1__3029_ gnd vdd FILL
XFILL_4__1874_ gnd vdd FILL
X_2099_ _993_ _935_ _1235_ vdd gnd NAND2X1
XFILL_0__1774_ gnd vdd FILL
XFILL_8__2759_ gnd vdd FILL
XFILL_6__2741_ gnd vdd FILL
X_3460_ alu_shift_right AI[1] _1546_ vdd gnd NAND2X1
XFILL_8__2339_ gnd vdd FILL
XFILL_6__2321_ gnd vdd FILL
X_3040_ _702_ _703_ vdd gnd INVX1
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
XFILL_0__3500_ gnd vdd FILL
XFILL_2__3518_ gnd vdd FILL
XFILL_5__1943_ gnd vdd FILL
XFILL_8__2092_ gnd vdd FILL
XFILL_1__1935_ gnd vdd FILL
XFILL_7__2902_ gnd vdd FILL
XFILL_3__2802_ gnd vdd FILL
XFILL_5__2728_ gnd vdd FILL
XFILL_5__2308_ gnd vdd FILL
XFILL_4__3197_ gnd vdd FILL
X_2731_ _444_ _441_ _450_ _451_ vdd gnd AOI21X1
X_2311_ _1164_ _1444_ vdd gnd INVX1
XFILL_0__3097_ gnd vdd FILL
XFILL_7__2499_ gnd vdd FILL
XFILL_5__2481_ gnd vdd FILL
XFILL_7__2079_ gnd vdd FILL
XFILL_5__2061_ gnd vdd FILL
X_3516_ _1673_ _1601_ _1599_ _1602_ vdd gnd OAI21X1
XFILL_1__2893_ gnd vdd FILL
XFILL_1__2473_ gnd vdd FILL
XFILL_7__3440_ gnd vdd FILL
XFILL_1__2053_ gnd vdd FILL
XFILL_7__3020_ gnd vdd FILL
XFILL_3__2399_ gnd vdd FILL
XFILL_8__1783_ gnd vdd FILL
XFILL_6__2970_ gnd vdd FILL
XFILL_8__2988_ gnd vdd FILL
XFILL_8__2568_ gnd vdd FILL
XFILL_6__2550_ gnd vdd FILL
XFILL_6__2130_ gnd vdd FILL
XFILL_8__2148_ gnd vdd FILL
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
X_2960_ _524_ _1031_ _630_ _631_ vdd gnd OAI21X1
XFILL_6__1821_ gnd vdd FILL
XFILL_8__1839_ gnd vdd FILL
X_2540_ _279_ _278_ _280_ vdd gnd AND2X2
X_2120_ _918__bF$buf1 _989_ RDY_bF$buf0 _1256_ vdd gnd OAI21X1
XFILL_2__1813_ gnd vdd FILL
XFILL_4__1739_ gnd vdd FILL
XFILL_5__2290_ gnd vdd FILL
XFILL_6__2606_ gnd vdd FILL
X_3325_ _79_ vdd _1__bF$buf4 clk_bF$buf0 _AXYS[1]_[2] vdd 
+ gnd
+ DFFSR
XFILL_1__2282_ gnd vdd FILL
XFILL_5__3495_ gnd vdd FILL
XFILL_5__3075_ gnd vdd FILL
XFILL_7_BUFX2_insert39 gnd vdd FILL
XFILL_1__3487_ gnd vdd FILL
XFILL_1__3067_ gnd vdd FILL
XFILL_5__1808_ gnd vdd FILL
XFILL_8__2797_ gnd vdd FILL
XFILL_8__2377_ gnd vdd FILL
XFILL_2__2771_ gnd vdd FILL
XFILL_2__2351_ gnd vdd FILL
XFILL_4__2697_ gnd vdd FILL
XFILL_4__2277_ gnd vdd FILL
X_1811_ _962_ _959_ _963_ vdd gnd OR2X2
XFILL_0__2597_ gnd vdd FILL
XFILL_6__3564_ gnd vdd FILL
XFILL_0__2177_ gnd vdd FILL
XFILL_6__3144_ gnd vdd FILL
XFILL_2__3556_ gnd vdd FILL
XFILL_2__3136_ gnd vdd FILL
XFILL_7__1999_ gnd vdd FILL
XFILL_5__1981_ gnd vdd FILL
XFILL_1__1973_ gnd vdd FILL
XFILL_7__2940_ gnd vdd FILL
XFILL_7__2520_ gnd vdd FILL
XFILL_7__2100_ gnd vdd FILL
XFILL_3__1899_ gnd vdd FILL
XFILL183150x175650 gnd vdd FILL
XFILL_3__2840_ gnd vdd FILL
XFILL_3__2420_ gnd vdd FILL
XFILL_3__2000_ gnd vdd FILL
XFILL_5__2766_ gnd vdd FILL
XFILL_5__2346_ gnd vdd FILL
XFILL_1__2758_ gnd vdd FILL
XFILL_1__2338_ gnd vdd FILL
XFILL_3__3205_ gnd vdd FILL
XFILL_4__1968_ gnd vdd FILL
XFILL183750x160050 gnd vdd FILL
XFILL_0__1868_ gnd vdd FILL
XFILL_6__2835_ gnd vdd FILL
X_3554_ _1593_ _1588_ _1634_ vdd gnd NOR2X1
XFILL_6__2415_ gnd vdd FILL
X_3134_ _AXYS[3]_[3] _767_ _771_ vdd gnd NAND2X1
XFILL_1__2091_ gnd vdd FILL
XFILL_2__2827_ gnd vdd FILL
XFILL_2__2407_ gnd vdd FILL
XFILL_8__2186_ gnd vdd FILL
XFILL_2__2580_ gnd vdd FILL
XFILL_2__2160_ gnd vdd FILL
XFILL_4__2086_ gnd vdd FILL
XFILL_6__3373_ gnd vdd FILL
XFILL_2__3365_ gnd vdd FILL
XFILL_5__1790_ gnd vdd FILL
X_2825_ _1219__bF$buf2 _526_ _527_ vdd gnd NOR2X1
X_2405_ _133_ _160_ vdd gnd INVX1
XFILL_1__1782_ gnd vdd FILL
XFILL_5__2995_ gnd vdd FILL
XFILL_5__2575_ gnd vdd FILL
XFILL_5__2155_ gnd vdd FILL
XFILL_1__2987_ gnd vdd FILL
XFILL_1__2567_ gnd vdd FILL
XFILL_7__3534_ gnd vdd FILL
XFILL_1__2147_ gnd vdd FILL
XFILL_7__3114_ gnd vdd FILL
XFILL_3__3434_ gnd vdd FILL
XFILL_3__3014_ gnd vdd FILL
XFILL_8__1877_ gnd vdd FILL
XFILL_2__1851_ gnd vdd FILL
XFILL_4__1777_ gnd vdd FILL
XFILL_6__2644_ gnd vdd FILL
XFILL_6__2224_ gnd vdd FILL
X_3363_ _116_ vdd _1__bF$buf2 clk_bF$buf8 ABH[7] vdd 
+ gnd
+ DFFSR
XFILL_2__2636_ gnd vdd FILL
XFILL_2__2216_ gnd vdd FILL
XFILL_8__3603_ gnd vdd FILL
XFILL_4__3503_ gnd vdd FILL
XFILL_6__3429_ gnd vdd FILL
XFILL_6__3009_ gnd vdd FILL
XFILL_3__1920_ gnd vdd FILL
XFILL_0__3403_ gnd vdd FILL
XFILL_5__1846_ gnd vdd FILL
XFILL_1__1838_ gnd vdd FILL
XFILL_7__2805_ gnd vdd FILL
XFILL_3__2705_ gnd vdd FILL
XFILL_8_BUFX2_insert80 gnd vdd FILL
XFILL_8_BUFX2_insert81 gnd vdd FILL
XFILL_8_BUFX2_insert82 gnd vdd FILL
XFILL_8_BUFX2_insert83 gnd vdd FILL
XFILL_8_BUFX2_insert84 gnd vdd FILL
XFILL_8_BUFX2_insert85 gnd vdd FILL
XFILL_8_BUFX2_insert86 gnd vdd FILL
XFILL_8_BUFX2_insert87 gnd vdd FILL
XFILL_8_BUFX2_insert88 gnd vdd FILL
XFILL_8_BUFX2_insert89 gnd vdd FILL
XFILL_6__3182_ gnd vdd FILL
XFILL_2__3594_ gnd vdd FILL
XFILL_2__3174_ gnd vdd FILL
XFILL_6__1915_ gnd vdd FILL
X_2634_ _971_ _343_ _361_ _362_ vdd gnd OAI21X1
X_2214_ _853__bF$buf6 _1347_ _1348_ _1129__bF$buf4 _1349_ vdd 
+ gnd
+ AOI22X1
XFILL_2__1907_ gnd vdd FILL
XFILL_5__2384_ gnd vdd FILL
X_3419_ alu_op[3] BI[4] _1675_ _1505_ vdd gnd OAI21X1
XFILL_1__2796_ gnd vdd FILL
XFILL_1__2376_ gnd vdd FILL
XFILL_5__3589_ gnd vdd FILL
XFILL_5__3169_ gnd vdd FILL
XFILL_6__2873_ gnd vdd FILL
X_3592_ _1685_[7] AB[7] vdd gnd BUFX2
XFILL_6__2453_ gnd vdd FILL
XFILL_6__2033_ gnd vdd FILL
X_3172_ _803_ _798_ _804_ vdd gnd AND2X2
XFILL_2__2865_ gnd vdd FILL
XFILL_2__2445_ gnd vdd FILL
XFILL_2__2025_ gnd vdd FILL
XFILL_8__3412_ gnd vdd FILL
X_1905_ _1048_ _1049_ vdd gnd INVX1
XFILL_0__3212_ gnd vdd FILL
XFILL_7__2614_ gnd vdd FILL
XFILL_3__2934_ gnd vdd FILL
XFILL_3__2514_ gnd vdd FILL
X_2863_ _132_ _1129__bF$buf3 _560_ _35_ vdd gnd OAI21X1
XFILL_6__1724_ gnd vdd FILL
X_2443_ _926__bF$buf3 _193_ _194_ vdd gnd NAND2X1
X_2023_ _1145_ _1158_ _1159_ vdd gnd NAND2X1
XFILL_2__1716_ gnd vdd FILL
XFILL_5__2193_ gnd vdd FILL
XFILL_6__2929_ gnd vdd FILL
XFILL_6__2509_ gnd vdd FILL
X_3228_ _292_ _830__bF$buf3 _846_ _114_ vdd gnd OAI21X1
XFILL_1__2185_ gnd vdd FILL
XFILL_7__3152_ gnd vdd FILL
XFILL_0__2903_ gnd vdd FILL
XFILL_3__3472_ gnd vdd FILL
XFILL_3__3052_ gnd vdd FILL
XFILL_5__3398_ gnd vdd FILL
XFILL_6__2682_ gnd vdd FILL
XFILL_6__2262_ gnd vdd FILL
XFILL_2__2674_ gnd vdd FILL
XFILL_2__2254_ gnd vdd FILL
XFILL_8__3221_ gnd vdd FILL
X_1714_ state[2] _866_ _867_ vdd gnd NAND2X1
XFILL_4__3541_ gnd vdd FILL
XFILL_4__3121_ gnd vdd FILL
XFILL_6__3467_ gnd vdd FILL
XFILL_6__3047_ gnd vdd FILL
XFILL_2__3459_ gnd vdd FILL
XFILL_0__3441_ gnd vdd FILL
XFILL_2__3039_ gnd vdd FILL
XFILL_0__3021_ gnd vdd FILL
XFILL_5__1884_ gnd vdd FILL
X_2919_ _598_ _1219__bF$buf1 _602_ _49_ vdd gnd AOI21X1
XFILL_1__1876_ gnd vdd FILL
XFILL_7__2843_ gnd vdd FILL
XFILL_7__2423_ gnd vdd FILL
XFILL_7__2003_ gnd vdd FILL
XFILL_3__2743_ gnd vdd FILL
XFILL_3__2323_ gnd vdd FILL
XFILL_5__2669_ gnd vdd FILL
XFILL_5__2249_ gnd vdd FILL
XFILL_7__3208_ gnd vdd FILL
XFILL_1__3602_ gnd vdd FILL
XFILL_3__3528_ gnd vdd FILL
XFILL_3__3108_ gnd vdd FILL
XFILL_6__1953_ gnd vdd FILL
X_2672_ _395_ _396_ vdd gnd INVX1
X_2252_ _1168_ _1180_ _1385_ _1386_ vdd gnd AOI21X1
XFILL_2__1945_ gnd vdd FILL
XFILL_8__2912_ gnd vdd FILL
XFILL_4__2812_ gnd vdd FILL
XFILL_6__2738_ gnd vdd FILL
X_3457_ AI[0] _1543_ vdd gnd INVX1
XFILL_6__2318_ gnd vdd FILL
X_3037_ _697_ _700_ vdd gnd INVX1
XFILL_7__3381_ gnd vdd FILL
XFILL_0__2712_ gnd vdd FILL
XFILL_1__3199_ gnd vdd FILL
XFILL_6__2491_ gnd vdd FILL
XFILL_6__2071_ gnd vdd FILL
XFILL_8__2089_ gnd vdd FILL
XFILL_2__2483_ gnd vdd FILL
XFILL_8__3450_ gnd vdd FILL
XFILL_2__2063_ gnd vdd FILL
XFILL_8__3030_ gnd vdd FILL
X_1943_ ABH[3] _1075_ _1084_ vdd gnd NAND2X1
XFILL_5__1693_ gnd vdd FILL
X_2728_ _1051__bF$buf1 _1084_ _447_ _448_ vdd gnd NAND3X1
X_2308_ _1440_ _1430_ _1441_ vdd gnd NOR2X1
XFILL_7__2652_ gnd vdd FILL
XFILL_7__2232_ gnd vdd FILL
XFILL_3__2972_ gnd vdd FILL
XFILL_3__2552_ gnd vdd FILL
XFILL_3__2132_ gnd vdd FILL
XFILL_5__2898_ gnd vdd FILL
XFILL_5__2478_ gnd vdd FILL
XFILL_5__2058_ gnd vdd FILL
XFILL_7__3437_ gnd vdd FILL
XFILL_7__3017_ gnd vdd FILL
XFILL_1__3411_ gnd vdd FILL
XFILL_6__1762_ gnd vdd FILL
X_2481_ _857_ _205_ _228_ _201_ _229_ vdd 
+ gnd
+ OAI22X1
X_2061_ RDY_bF$buf6 _1196_ _1190_ _1197_ vdd gnd NAND3X1
XFILL_2__1754_ gnd vdd FILL
XFILL_8__2721_ gnd vdd FILL
XFILL_8__2301_ gnd vdd FILL
XFILL_4__2621_ gnd vdd FILL
XFILL_4__2201_ gnd vdd FILL
XFILL_6__2967_ gnd vdd FILL
XFILL_6__2547_ gnd vdd FILL
X_3266_ _28_ vdd _1__bF$buf6 clk_bF$buf5 cli vdd 
+ gnd
+ DFFSR
XFILL_6__2127_ gnd vdd FILL
XFILL_7__3190_ gnd vdd FILL
XFILL_0__2941_ gnd vdd FILL
XFILL_2__2959_ gnd vdd FILL
XFILL_0__2521_ gnd vdd FILL
XFILL_2__2539_ gnd vdd FILL
XFILL_8__3506_ gnd vdd FILL
XFILL_2__2119_ gnd vdd FILL
XFILL_0__2101_ gnd vdd FILL
XFILL_3__3090_ gnd vdd FILL
XFILL_7__1923_ gnd vdd FILL
XFILL_4__3406_ gnd vdd FILL
XFILL_3__1823_ gnd vdd FILL
XFILL_5__1749_ gnd vdd FILL
XFILL_7__2708_ gnd vdd FILL
XFILL_2__2292_ gnd vdd FILL
XFILL_3__2608_ gnd vdd FILL
X_1752_ _875_ _867_ _905_ vdd gnd NOR2X1
XFILL_6__3085_ gnd vdd FILL
XFILL_2__3497_ gnd vdd FILL
XFILL_2__3077_ gnd vdd FILL
X_2957_ _1169_ _1129__bF$buf3 _618_ _61_ vdd gnd OAI21X1
XFILL_6__1818_ gnd vdd FILL
X_2537_ PC[11] _277_ vdd gnd INVX1
X_2117_ _1148_ _1171_ _1253_ vdd gnd NOR2X1
XFILL_7__2881_ gnd vdd FILL
XFILL_7__2461_ gnd vdd FILL
XFILL_7__2041_ gnd vdd FILL
XFILL_3__2781_ gnd vdd FILL
XFILL_3__2361_ gnd vdd FILL
XFILL_5__2287_ gnd vdd FILL
XFILL_1__2699_ gnd vdd FILL
XFILL_1__2279_ gnd vdd FILL
XFILL_1__3220_ gnd vdd FILL
XFILL_3__3566_ gnd vdd FILL
XFILL_3__3146_ gnd vdd FILL
XFILL_6__1991_ gnd vdd FILL
X_2290_ _1422_ _1421_ _1423_ vdd gnd NAND2X1
XFILL_2__1983_ gnd vdd FILL
XFILL_8__2950_ gnd vdd FILL
XFILL_8__2530_ gnd vdd FILL
XFILL_8__2110_ gnd vdd FILL
XFILL_4__2850_ gnd vdd FILL
XFILL_4__2430_ gnd vdd FILL
XFILL_4__2010_ gnd vdd FILL
XFILL_6__2776_ gnd vdd FILL
X_3495_ _1580_ _1578_ _1581_ vdd gnd NAND2X1
XFILL_6__2356_ gnd vdd FILL
X_3075_ _693_ _732_ _733_ _74_ vdd gnd OAI21X1
XFILL_0__2750_ gnd vdd FILL
XFILL_2__2768_ gnd vdd FILL
XFILL_0__2330_ gnd vdd FILL
XFILL_2__2348_ gnd vdd FILL
X_1808_ _875_ _960_ vdd gnd INVX1
XFILL_7__1732_ gnd vdd FILL
XFILL_4__3215_ gnd vdd FILL
XFILL_0__3535_ gnd vdd FILL
XFILL_0__3115_ gnd vdd FILL
XFILL_5__1978_ gnd vdd FILL
XFILL_7__2937_ gnd vdd FILL
XFILL_7__2517_ gnd vdd FILL
XFILL_1__2911_ gnd vdd FILL
XFILL_3__2837_ gnd vdd FILL
XFILL_3__2417_ gnd vdd FILL
X_1981_ ABH[7] _1118_ vdd gnd INVX1
XFILL_8__1801_ gnd vdd FILL
XFILL_4__1701_ gnd vdd FILL
X_2766_ _475_ _479_ _482_ _483_ vdd gnd OAI21X1
X_2346_ _1334_ _1476_ _1477_ vdd gnd NOR2X1
XFILL_7__2690_ gnd vdd FILL
XFILL_7__2270_ gnd vdd FILL
XFILL_3__2590_ gnd vdd FILL
XFILL_3__2170_ gnd vdd FILL
XFILL_5__2096_ gnd vdd FILL
XFILL_4__2906_ gnd vdd FILL
XFILL_7__3475_ gnd vdd FILL
XFILL_1__2088_ gnd vdd FILL
XFILL_7__3055_ gnd vdd FILL
XFILL_0__2806_ gnd vdd FILL
XFILL_3__3375_ gnd vdd FILL
XFILL_2__1792_ gnd vdd FILL
XFILL_6__2585_ gnd vdd FILL
XFILL_6__2165_ gnd vdd FILL
XFILL_2__2997_ gnd vdd FILL
XFILL_2__2577_ gnd vdd FILL
XFILL_8__3544_ gnd vdd FILL
XFILL_2__2157_ gnd vdd FILL
XFILL_8__3124_ gnd vdd FILL
XFILL_7__1961_ gnd vdd FILL
XFILL_4__3444_ gnd vdd FILL
XFILL_4__3024_ gnd vdd FILL
XFILL_3__1861_ gnd vdd FILL
XFILL_5__1787_ gnd vdd FILL
XFILL_1__1779_ gnd vdd FILL
XFILL_7__2746_ gnd vdd FILL
XFILL_7__2326_ gnd vdd FILL
XFILL_1__2720_ gnd vdd FILL
XFILL_1__2300_ gnd vdd FILL
XFILL_3__2646_ gnd vdd FILL
XFILL_3__2226_ gnd vdd FILL
X_1790_ _887__bF$buf2 _941_ _942_ vdd gnd NOR2X1
XFILL_5__3513_ gnd vdd FILL
XFILL_1__3505_ gnd vdd FILL
XFILL_4__1930_ gnd vdd FILL
X_2995_ _632_ _1191_ _662_ _663_ vdd gnd OAI21X1
XFILL_6__1856_ gnd vdd FILL
X_2575_ adc_sbc D _0_ vdd gnd AND2X2
X_2155_ _1283_ _1290_ _1291_ vdd gnd NAND2X1
XFILL_0__1830_ gnd vdd FILL
XFILL_2__1848_ gnd vdd FILL
XFILL_8__2815_ gnd vdd FILL
XFILL_4__2715_ gnd vdd FILL
XFILL_0__2615_ gnd vdd FILL
XFILL_3__3184_ gnd vdd FILL
XFILL_3__1917_ gnd vdd FILL
XFILL_6__2394_ gnd vdd FILL
XFILL_2__2386_ gnd vdd FILL
X_1846_ _926__bF$buf2 _876_ _990_ vdd gnd NAND2X1
XFILL_7__1770_ gnd vdd FILL
XFILL_6__3599_ gnd vdd FILL
XFILL_6__3179_ gnd vdd FILL
XFILL183150x163950 gnd vdd FILL
XFILL_0__3153_ gnd vdd FILL
XFILL_7__2975_ gnd vdd FILL
XFILL_7__2555_ gnd vdd FILL
XFILL_7__2135_ gnd vdd FILL
XFILL_3__2875_ gnd vdd FILL
XFILL_3__2455_ gnd vdd FILL
XFILL_3__2035_ gnd vdd FILL
X_2384_ _931_ _128_ _142_ _143_ vdd gnd OAI21X1
XFILL_8__2624_ gnd vdd FILL
XFILL_8__2204_ gnd vdd FILL
XFILL_4__2944_ gnd vdd FILL
XFILL_4__2524_ gnd vdd FILL
XFILL_4__2104_ gnd vdd FILL
X_3589_ _1685_[4] AB[4] vdd gnd BUFX2
X_3169_ _796_ _800_ _791_ _801_ vdd gnd NAND3X1
XFILL_7__3093_ gnd vdd FILL
XFILL_0__2844_ gnd vdd FILL
XFILL_0__2424_ gnd vdd FILL
XFILL_0__2004_ gnd vdd FILL
XFILL_8__3409_ gnd vdd FILL
XFILL184350x43050 gnd vdd FILL
XFILL_7__1826_ gnd vdd FILL
XFILL_1__1800_ gnd vdd FILL
XFILL_3__1726_ gnd vdd FILL
XFILL_0__3209_ gnd vdd FILL
XFILL_2__2195_ gnd vdd FILL
XFILL_8__3582_ gnd vdd FILL
XFILL_8__3162_ gnd vdd FILL
XFILL_4__3482_ gnd vdd FILL
XFILL_4__3062_ gnd vdd FILL
XFILL_0__3382_ gnd vdd FILL
XFILL_7__2784_ gnd vdd FILL
XFILL_7__2364_ gnd vdd FILL
XFILL_3__2684_ gnd vdd FILL
XFILL_3__2264_ gnd vdd FILL
XFILL_5__3551_ gnd vdd FILL
XFILL_5__3131_ gnd vdd FILL
XFILL_7__3149_ gnd vdd FILL
XFILL_1__3543_ gnd vdd FILL
XFILL_1__3123_ gnd vdd FILL
XFILL_3__3469_ gnd vdd FILL
XFILL_3__3049_ gnd vdd FILL
XFILL_6__1894_ gnd vdd FILL
X_2193_ _942_ _1327_ RDY_bF$buf0 _1328_ vdd gnd MUX2X1
XFILL_2__1886_ gnd vdd FILL
XFILL181950x109350 gnd vdd FILL
XFILL_8__2853_ gnd vdd FILL
XFILL_8__2433_ gnd vdd FILL
XFILL_8__2013_ gnd vdd FILL
XFILL_4__2753_ gnd vdd FILL
XFILL_4__2333_ gnd vdd FILL
XFILL_6__2679_ gnd vdd FILL
XFILL_6__2259_ gnd vdd FILL
X_3398_ AI[6] _1669_ _1657_ _1672_ vdd gnd OAI21X1
XFILL_0__2653_ gnd vdd FILL
XFILL_0__2233_ gnd vdd FILL
XFILL_6__3200_ gnd vdd FILL
XFILL_8__3218_ gnd vdd FILL
XFILL_4__3538_ gnd vdd FILL
XFILL_4__3118_ gnd vdd FILL
XFILL_3__1955_ gnd vdd FILL
XFILL_0__3438_ gnd vdd FILL
XFILL_0__3018_ gnd vdd FILL
XFILL_9__2502_ gnd vdd FILL
XFILL_5__2822_ gnd vdd FILL
XFILL_5__2402_ gnd vdd FILL
XFILL_8__3391_ gnd vdd FILL
XFILL_1__2814_ gnd vdd FILL
X_1884_ _887__bF$buf3 _901_ _1027_ _1028_ vdd gnd OAI21X1
XFILL_8__1704_ gnd vdd FILL
XFILL_0__3191_ gnd vdd FILL
X_2669_ _253_ _359_ _1051__bF$buf0 _393_ vdd gnd OAI21X1
X_2249_ _1135_ _1382_ _1383_ vdd gnd NOR2X1
XFILL_7__2593_ gnd vdd FILL
XFILL_7__2173_ gnd vdd FILL
XFILL_0__1924_ gnd vdd FILL
XFILL_8__2909_ gnd vdd FILL
XFILL_3__2493_ gnd vdd FILL
XFILL_3__2073_ gnd vdd FILL
XFILL_4__2809_ gnd vdd FILL
XFILL_7__3378_ gnd vdd FILL
XFILL_0__2709_ gnd vdd FILL
XFILL_2__1695_ gnd vdd FILL
XFILL_8__2662_ gnd vdd FILL
XFILL_8__2242_ gnd vdd FILL
XFILL_4__2982_ gnd vdd FILL
XFILL_4__2562_ gnd vdd FILL
XFILL_4__2142_ gnd vdd FILL
XFILL_6__2488_ gnd vdd FILL
XFILL_6__2068_ gnd vdd FILL
XFILL_0__2882_ gnd vdd FILL
XFILL_0__2462_ gnd vdd FILL
XFILL_0__2042_ gnd vdd FILL
XFILL_8__3447_ gnd vdd FILL
XFILL_8__3027_ gnd vdd FILL
XFILL_2__3421_ gnd vdd FILL
XFILL_2__3001_ gnd vdd FILL
XFILL_7__1864_ gnd vdd FILL
XFILL183450x101550 gnd vdd FILL
XFILL_3__1764_ gnd vdd FILL
XFILL_9__2311_ gnd vdd FILL
XFILL_7__2649_ gnd vdd FILL
XFILL_5__2631_ gnd vdd FILL
XFILL_5__2211_ gnd vdd FILL
XFILL_7__2229_ gnd vdd FILL
XFILL_1__2623_ gnd vdd FILL
XFILL_1__2203_ gnd vdd FILL
XFILL_3__2969_ gnd vdd FILL
XFILL_3__2549_ gnd vdd FILL
XFILL_9__3516_ gnd vdd FILL
XFILL_3__2129_ gnd vdd FILL
X_1693_ RDY_bF$buf8 _851_ _852_ DIMUX[1] vdd gnd OAI21X1
XFILL_8__1933_ gnd vdd FILL
XFILL_5__3416_ gnd vdd FILL
XFILL_1__3408_ gnd vdd FILL
XFILL_4__1833_ gnd vdd FILL
X_2898_ _580_ _1129__bF$buf1 _584_ _46_ vdd gnd OAI21X1
XFILL_6__1759_ gnd vdd FILL
X_2478_ _1075_ _225_ _226_ vdd gnd NOR2X1
X_2058_ _886__bF$buf2 _926__bF$buf2 _1193_ _1194_ vdd gnd OAI21X1
XFILL_0__1733_ gnd vdd FILL
XFILL_6__2700_ gnd vdd FILL
XFILL_8__2718_ gnd vdd FILL
XFILL_4__2618_ gnd vdd FILL
XFILL_7__3187_ gnd vdd FILL
XFILL_0__2938_ gnd vdd FILL
XFILL_0__2518_ gnd vdd FILL
XFILL_1__3581_ gnd vdd FILL
XFILL_1__3161_ gnd vdd FILL
XFILL_3__3087_ gnd vdd FILL
XFILL_5__1902_ gnd vdd FILL
XFILL_8__2891_ gnd vdd FILL
XFILL_8__2471_ gnd vdd FILL
XFILL184650x82050 gnd vdd FILL
XFILL_8__2051_ gnd vdd FILL
XFILL_4__2791_ gnd vdd FILL
XFILL_4__2371_ gnd vdd FILL
XFILL_6__2297_ gnd vdd FILL
XFILL_0__2691_ gnd vdd FILL
XFILL_0__2271_ gnd vdd FILL
XFILL_2__2289_ gnd vdd FILL
XFILL_2__3230_ gnd vdd FILL
X_1749_ _887__bF$buf3 _901_ _898_ _902_ vdd gnd OAI21X1
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
XFILL_8__1742_ gnd vdd FILL
XFILL_5__3225_ gnd vdd FILL
XFILL_1__3217_ gnd vdd FILL
XFILL_6__1988_ gnd vdd FILL
X_2287_ _1415_ _1420_ _1483_[2] vdd gnd OR2X2
XFILL_0__1962_ gnd vdd FILL
XFILL_8__2947_ gnd vdd FILL
XFILL_8__2527_ gnd vdd FILL
XFILL_8__2107_ gnd vdd FILL
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
XFILL_4__2847_ gnd vdd FILL
XFILL_3_BUFX2_insert58 gnd vdd FILL
XFILL_3_BUFX2_insert59 gnd vdd FILL
XFILL_4__2427_ gnd vdd FILL
XFILL_4__2007_ gnd vdd FILL
XFILL_0__2747_ gnd vdd FILL
XFILL_0__2327_ gnd vdd FILL
XFILL_1__3390_ gnd vdd FILL
XFILL_5__1711_ gnd vdd FILL
XFILL_7__1729_ gnd vdd FILL
XFILL_8__2280_ gnd vdd FILL
XFILL_1__1703_ gnd vdd FILL
XFILL_4__2180_ gnd vdd FILL
XFILL_5__2916_ gnd vdd FILL
XFILL_8__3485_ gnd vdd FILL
XFILL_0__2080_ gnd vdd FILL
XFILL_2__2098_ gnd vdd FILL
XFILL_8__3065_ gnd vdd FILL
XFILL_1__2908_ gnd vdd FILL
X_1978_ _AXYS[0]_[7] _1020_ _1115_ vdd gnd NAND2X1
XFILL_4__3385_ gnd vdd FILL
XFILL_7__2687_ gnd vdd FILL
XFILL_7__2267_ gnd vdd FILL
XFILL_1__2661_ gnd vdd FILL
XFILL_1__2241_ gnd vdd FILL
XFILL_3__2587_ gnd vdd FILL
XFILL_3__2167_ gnd vdd FILL
XFILL_8__1971_ gnd vdd FILL
XFILL_5__3454_ gnd vdd FILL
XFILL_5__3034_ gnd vdd FILL
XFILL_1__3446_ gnd vdd FILL
XFILL_1__3026_ gnd vdd FILL
XFILL_4__1871_ gnd vdd FILL
XFILL_6__1797_ gnd vdd FILL
X_2096_ RDY_bF$buf7 _1049_ _1231_ _1232_ vdd gnd OAI21X1
XFILL_0__1771_ gnd vdd FILL
XFILL_2__1789_ gnd vdd FILL
XFILL_8__2756_ gnd vdd FILL
XFILL_8__2336_ gnd vdd FILL
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
X_1787_ _887__bF$buf2 _936_ _938_ _939_ vdd gnd OAI21X1
XFILL_4__3194_ gnd vdd FILL
XFILL_0__3094_ gnd vdd FILL
XFILL_4__1927_ gnd vdd FILL
XFILL181650x35250 gnd vdd FILL
XFILL_7__2496_ gnd vdd FILL
XFILL_7__2076_ gnd vdd FILL
XFILL_0__1827_ gnd vdd FILL
X_3513_ _1677_ _1673_ _1599_ vdd gnd NAND2X1
XFILL_1__2890_ gnd vdd FILL
XFILL_1__2470_ gnd vdd FILL
XFILL_1__2050_ gnd vdd FILL
XFILL_3__2396_ gnd vdd FILL
XFILL_8__1780_ gnd vdd FILL
XFILL_8__2985_ gnd vdd FILL
XFILL_8__2565_ gnd vdd FILL
XFILL_8__2145_ gnd vdd FILL
XFILL_4__2885_ gnd vdd FILL
XFILL_4__2465_ gnd vdd FILL
XFILL_4__2045_ gnd vdd FILL
XFILL_0__2785_ gnd vdd FILL
XFILL_0__2365_ gnd vdd FILL
XFILL_7__1767_ gnd vdd FILL
XFILL_1__1741_ gnd vdd FILL
XFILL_5__2954_ gnd vdd FILL
XFILL_5__2534_ gnd vdd FILL
XFILL_5__2114_ gnd vdd FILL
XFILL_1__2946_ gnd vdd FILL
XFILL_1__2526_ gnd vdd FILL
XFILL_1__2106_ gnd vdd FILL
XFILL_8__1836_ gnd vdd FILL
XFILL_2__1810_ gnd vdd FILL
XFILL_4__1736_ gnd vdd FILL
XFILL_6__2603_ gnd vdd FILL
X_3322_ _76_ vdd _1__bF$buf1 clk_bF$buf3 _AXYS[0]_[7] vdd 
+ gnd
+ DFFSR
XFILL_5__3492_ gnd vdd FILL
XFILL_5__3072_ gnd vdd FILL
XFILL_1__3484_ gnd vdd FILL
XFILL_1__3064_ gnd vdd FILL
XFILL_5__1805_ gnd vdd FILL
XFILL_8__2794_ gnd vdd FILL
XFILL_8__2374_ gnd vdd FILL
XFILL_4__2694_ gnd vdd FILL
XFILL_4__2274_ gnd vdd FILL
XFILL_0__2594_ gnd vdd FILL
XFILL_6__3561_ gnd vdd FILL
XFILL_0__2174_ gnd vdd FILL
XFILL_8__3579_ gnd vdd FILL
XFILL_6__3141_ gnd vdd FILL
XFILL_8__3159_ gnd vdd FILL
XFILL_2__3553_ gnd vdd FILL
XFILL_2__3133_ gnd vdd FILL
XFILL_7__1996_ gnd vdd FILL
XFILL_4__3479_ gnd vdd FILL
XFILL_4__3059_ gnd vdd FILL
XFILL_1__1970_ gnd vdd FILL
XFILL_3__1896_ gnd vdd FILL
XFILL_0__3379_ gnd vdd FILL
XFILL_9__2443_ gnd vdd FILL
XFILL_5__2763_ gnd vdd FILL
XFILL_5__2343_ gnd vdd FILL
XFILL_1__2755_ gnd vdd FILL
XFILL_1__2335_ gnd vdd FILL
XFILL_3__3202_ gnd vdd FILL
XFILL_5__3548_ gnd vdd FILL
XFILL_5__3128_ gnd vdd FILL
XFILL_4__1965_ gnd vdd FILL
XFILL_0__1865_ gnd vdd FILL
XFILL_6__2832_ gnd vdd FILL
X_3551_ ADD[3] _1649__bF$buf0 _1632_ vdd gnd NAND2X1
XFILL_6__2412_ gnd vdd FILL
X_3131_ _707_ _767_ _769_ _94_ vdd gnd OAI21X1
XFILL_2__2824_ gnd vdd FILL
XFILL_2__2404_ gnd vdd FILL
XFILL_8__2183_ gnd vdd FILL
XFILL_4__2083_ gnd vdd FILL
XFILL_5__2819_ gnd vdd FILL
XFILL_8__3388_ gnd vdd FILL
XFILL_6__3370_ gnd vdd FILL
X_2822_ bit_ins _524_ vdd gnd INVX1
X_2402_ _971_ _128_ _157_ _158_ vdd gnd OAI21X1
XFILL_0__3188_ gnd vdd FILL
XFILL_9__2252_ gnd vdd FILL
XFILL_5__2992_ gnd vdd FILL
XFILL_5__2572_ gnd vdd FILL
XFILL_5__2152_ gnd vdd FILL
XFILL181950x74250 gnd vdd FILL
XFILL_1__2984_ gnd vdd FILL
XFILL_1__2564_ gnd vdd FILL
XFILL_7__3531_ gnd vdd FILL
XFILL_1__2144_ gnd vdd FILL
XFILL_7__3111_ gnd vdd FILL
XFILL_3__3431_ gnd vdd FILL
XFILL_3__3011_ gnd vdd FILL
XFILL_8__1874_ gnd vdd FILL
XFILL_4__1774_ gnd vdd FILL
XFILL_8__2659_ gnd vdd FILL
XFILL_6__2641_ gnd vdd FILL
XFILL_8__2239_ gnd vdd FILL
XFILL_6__2221_ gnd vdd FILL
X_3360_ _113_ vdd _1__bF$buf2 clk_bF$buf8 ABH[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2633_ gnd vdd FILL
XFILL_2__2213_ gnd vdd FILL
XFILL_8__3600_ gnd vdd FILL
XFILL_4__2979_ gnd vdd FILL
XFILL_4__2559_ gnd vdd FILL
XFILL_4__2139_ gnd vdd FILL
XFILL_4__3500_ gnd vdd FILL
XFILL_0__2879_ gnd vdd FILL
XFILL_0__2459_ gnd vdd FILL
XFILL_9__1943_ gnd vdd FILL
XFILL_0__2039_ gnd vdd FILL
XFILL_6__3426_ gnd vdd FILL
XFILL_6__3006_ gnd vdd FILL
XFILL_0__3400_ gnd vdd FILL
XFILL_2__3418_ gnd vdd FILL
XFILL_5__1843_ gnd vdd FILL
XFILL_1__1835_ gnd vdd FILL
XFILL_7__2802_ gnd vdd FILL
XFILL_3__2702_ gnd vdd FILL
XFILL_8_BUFX2_insert50 gnd vdd FILL
XFILL_8_BUFX2_insert51 gnd vdd FILL
XFILL_5__2628_ gnd vdd FILL
XFILL_5__2208_ gnd vdd FILL
XFILL_8_BUFX2_insert52 gnd vdd FILL
XFILL_8_BUFX2_insert53 gnd vdd FILL
XFILL_8_BUFX2_insert54 gnd vdd FILL
XFILL_8_BUFX2_insert55 gnd vdd FILL
XFILL_8_BUFX2_insert56 gnd vdd FILL
XFILL_8_BUFX2_insert57 gnd vdd FILL
XFILL_8_BUFX2_insert58 gnd vdd FILL
XFILL_8_BUFX2_insert59 gnd vdd FILL
XFILL_8__3197_ gnd vdd FILL
XFILL_2__3591_ gnd vdd FILL
XFILL_2__3171_ gnd vdd FILL
XFILL_4__3097_ gnd vdd FILL
XFILL_6__1912_ gnd vdd FILL
X_2631_ _338_ _359_ vdd gnd INVX2
X_2211_ _1319_ _1308_ _1345_ _1346_ vdd gnd NOR3X1
XFILL_9__2061_ gnd vdd FILL
XFILL_2__1904_ gnd vdd FILL
XFILL_7__2399_ gnd vdd FILL
XFILL_5__2381_ gnd vdd FILL
X_3416_ _1651_ BI[4] _1501_ _1652_ _1502_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2793_ gnd vdd FILL
XFILL_1__2373_ gnd vdd FILL
XFILL_3__2299_ gnd vdd FILL
XFILL_5__3586_ gnd vdd FILL
XFILL_5__3166_ gnd vdd FILL
XFILL_1__3158_ gnd vdd FILL
XFILL_6__2870_ gnd vdd FILL
XFILL_8__2888_ gnd vdd FILL
XFILL_8__2468_ gnd vdd FILL
XFILL_6__2450_ gnd vdd FILL
XFILL_6__2030_ gnd vdd FILL
XFILL_8__2048_ gnd vdd FILL
XFILL_2__2862_ gnd vdd FILL
XFILL_2__2442_ gnd vdd FILL
XFILL_2__2022_ gnd vdd FILL
XFILL_4__2788_ gnd vdd FILL
XFILL_4__2368_ gnd vdd FILL
X_1902_ _1030_ _1045_ _1042_ _1046_ vdd gnd NAND3X1
XFILL_0__2688_ gnd vdd FILL
XFILL_0__2268_ gnd vdd FILL
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
X_2860_ _536_ _558_ _559_ vdd gnd AND2X2
XFILL_8__1739_ gnd vdd FILL
XFILL_6__1721_ gnd vdd FILL
X_2440_ _926__bF$buf3 _905_ _191_ vdd gnd NAND2X1
X_2020_ _1155_ _1156_ vdd gnd INVX1
XFILL_2__1713_ gnd vdd FILL
XFILL_5__2190_ gnd vdd FILL
XFILL_0__1959_ gnd vdd FILL
XFILL_6__2926_ gnd vdd FILL
XFILL_6__2506_ gnd vdd FILL
XFILL183450x175650 gnd vdd FILL
X_3225_ _1685_[12] _830__bF$buf2 _845_ vdd gnd NAND2X1
XFILL_1__2182_ gnd vdd FILL
XFILL_2__2918_ gnd vdd FILL
XFILL_0__2900_ gnd vdd FILL
XFILL_5__3395_ gnd vdd FILL
XFILL_1__3387_ gnd vdd FILL
XFILL_5__1708_ gnd vdd FILL
XFILL_8__2697_ gnd vdd FILL
XFILL_8__2277_ gnd vdd FILL
XFILL_2__2671_ gnd vdd FILL
XFILL_2__2251_ gnd vdd FILL
XFILL_4__2597_ gnd vdd FILL
XFILL_4__2177_ gnd vdd FILL
X_1711_ _864_ DIMUX[7] vdd gnd INVX1
XFILL_0__2497_ gnd vdd FILL
XFILL_6__3464_ gnd vdd FILL
XFILL_0__2077_ gnd vdd FILL
XFILL_6__3044_ gnd vdd FILL
XFILL_2__3456_ gnd vdd FILL
XFILL_2__3036_ gnd vdd FILL
XFILL_5__1881_ gnd vdd FILL
XFILL_7__1899_ gnd vdd FILL
X_2916_ _521_ _599_ _549_ _600_ vdd gnd OAI21X1
XFILL_1__1873_ gnd vdd FILL
XFILL_7__2840_ gnd vdd FILL
XFILL_7__2420_ gnd vdd FILL
XFILL_7__2000_ gnd vdd FILL
XFILL_3__1799_ gnd vdd FILL
XFILL_3__2740_ gnd vdd FILL
XFILL_3__2320_ gnd vdd FILL
XFILL_5__2666_ gnd vdd FILL
XFILL_5__2246_ gnd vdd FILL
XFILL_1__2658_ gnd vdd FILL
XFILL_1__2238_ gnd vdd FILL
XFILL_7__3205_ gnd vdd FILL
XFILL_3__3525_ gnd vdd FILL
XFILL_3__3105_ gnd vdd FILL
XFILL_8__1968_ gnd vdd FILL
XFILL_6__1950_ gnd vdd FILL
XFILL_2__1942_ gnd vdd FILL
XFILL_4__1868_ gnd vdd FILL
XFILL_0__1768_ gnd vdd FILL
XFILL_6__2735_ gnd vdd FILL
X_3454_ alu_op[1] AI[0] _1540_ vdd gnd NAND2X1
XFILL_6__2315_ gnd vdd FILL
X_3034_ adj_bcd adc_bcd HC _697_ vdd gnd NAND3X1
XFILL_2__2727_ gnd vdd FILL
XFILL_2__2307_ gnd vdd FILL
XFILL184650x70350 gnd vdd FILL
XFILL_1__3196_ gnd vdd FILL
XFILL_5__1937_ gnd vdd FILL
XFILL_8__2086_ gnd vdd FILL
XFILL_1__1929_ gnd vdd FILL
XFILL_2__2480_ gnd vdd FILL
XFILL_2__2060_ gnd vdd FILL
X_1940_ _AXYS[0]_[3] _1020_ _1081_ vdd gnd NAND2X1
XFILL_5__1690_ gnd vdd FILL
X_2725_ _1008_ _1145_ _414_ _415_ _445_ vdd 
+ gnd
+ AOI22X1
X_2305_ _1219__bF$buf3 _1217_ _1438_ vdd gnd NOR2X1
XFILL_5__2895_ gnd vdd FILL
XFILL_5__2475_ gnd vdd FILL
XFILL_5__2055_ gnd vdd FILL
XFILL_1__2887_ gnd vdd FILL
XFILL_1__2467_ gnd vdd FILL
XFILL_7__3434_ gnd vdd FILL
XFILL_1__2047_ gnd vdd FILL
XFILL_7__3014_ gnd vdd FILL
XFILL_8__1777_ gnd vdd FILL
XFILL_2__1751_ gnd vdd FILL
XFILL_0__1997_ gnd vdd FILL
XFILL_6__2964_ gnd vdd FILL
XFILL_6__2544_ gnd vdd FILL
X_3263_ _25_ vdd _1__bF$buf7 clk_bF$buf5 sec vdd 
+ gnd
+ DFFSR
XFILL_6__2124_ gnd vdd FILL
XFILL_2__2956_ gnd vdd FILL
XFILL_2__2536_ gnd vdd FILL
XFILL_8__3503_ gnd vdd FILL
XFILL_2__2116_ gnd vdd FILL
XFILL_7__1920_ gnd vdd FILL
XFILL_4__3403_ gnd vdd FILL
XFILL_3__1820_ gnd vdd FILL
XFILL_5__1746_ gnd vdd FILL
XFILL_1__1738_ gnd vdd FILL
XFILL_7__2705_ gnd vdd FILL
XFILL_3__2605_ gnd vdd FILL
XFILL_6__3082_ gnd vdd FILL
XFILL_2__3494_ gnd vdd FILL
XFILL_2__3074_ gnd vdd FILL
X_2954_ _863_ _620_ _627_ _59_ vdd gnd OAI21X1
XFILL_6__1815_ gnd vdd FILL
X_2534_ _273_ _268_ _274_ _275_ vdd gnd OAI21X1
X_2114_ write_back _1250_ vdd gnd INVX1
XFILL_9__2384_ gnd vdd FILL
XFILL_2__1807_ gnd vdd FILL
XFILL_5__2284_ gnd vdd FILL
X_3319_ _73_ vdd _1__bF$buf3 clk_bF$buf0 _AXYS[0]_[4] vdd 
+ gnd
+ DFFSR
XFILL_1__2696_ gnd vdd FILL
XFILL_1__2276_ gnd vdd FILL
XFILL_3__3563_ gnd vdd FILL
XFILL_3__3143_ gnd vdd FILL
XFILL_5__3489_ gnd vdd FILL
XFILL_5__3069_ gnd vdd FILL
XFILL_2__1980_ gnd vdd FILL
XFILL_6__2773_ gnd vdd FILL
X_3492_ _1577_ _1574_ _1578_ vdd gnd NAND2X1
XFILL_6__2353_ gnd vdd FILL
X_3072_ _1281_ _730_ _731_ vdd gnd NOR2X1
XFILL_2__2765_ gnd vdd FILL
XFILL_2__2345_ gnd vdd FILL
X_1805_ _952_ _954_ _956_ _957_ vdd gnd NAND3X1
XFILL_4__3212_ gnd vdd FILL
XFILL_6__3558_ gnd vdd FILL
XFILL_6__3138_ gnd vdd FILL
XFILL_0__3532_ gnd vdd FILL
XFILL_0__3112_ gnd vdd FILL
XFILL_5__1975_ gnd vdd FILL
XFILL_1__1967_ gnd vdd FILL
XFILL_7__2934_ gnd vdd FILL
XFILL_7__2514_ gnd vdd FILL
XFILL_3__2834_ gnd vdd FILL
XFILL_3__2414_ gnd vdd FILL
X_2763_ _479_ _475_ _480_ vdd gnd NOR2X1
X_2343_ _1473_ _1472_ _1474_ vdd gnd NOR2X1
XFILL_9__2193_ gnd vdd FILL
XFILL_5__2093_ gnd vdd FILL
XFILL_4__2903_ gnd vdd FILL
XFILL_6__2829_ gnd vdd FILL
X_3548_ _1649__bF$buf2 _1581_ _1630_ _1489_ vdd gnd OAI21X1
XFILL_6__2409_ gnd vdd FILL
X_3128_ _AXYS[3]_[0] _767_ _768_ vdd gnd NAND2X1
XFILL_7__3472_ gnd vdd FILL
XFILL_1__2085_ gnd vdd FILL
XFILL_7__3052_ gnd vdd FILL
XFILL_0__2803_ gnd vdd FILL
XFILL_3__3372_ gnd vdd FILL
XFILL_6__2582_ gnd vdd FILL
XFILL_6__2162_ gnd vdd FILL
XFILL_2__2994_ gnd vdd FILL
XFILL_2__2574_ gnd vdd FILL
XFILL_8__3541_ gnd vdd FILL
XFILL_2__2154_ gnd vdd FILL
XFILL_8__3121_ gnd vdd FILL
XFILL_4__3441_ gnd vdd FILL
XFILL_4__3021_ gnd vdd FILL
XFILL_9__1884_ gnd vdd FILL
XFILL_6__3367_ gnd vdd FILL
XFILL_5__1784_ gnd vdd FILL
X_2819_ _1168_ _521_ _522_ vdd gnd NOR2X1
XFILL_1__1776_ gnd vdd FILL
XFILL_7__2743_ gnd vdd FILL
XFILL_7__2323_ gnd vdd FILL
XFILL_3__2643_ gnd vdd FILL
XFILL_3__2223_ gnd vdd FILL
XFILL_5__2989_ gnd vdd FILL
XFILL_5__2569_ gnd vdd FILL
XFILL_5__2149_ gnd vdd FILL
XFILL_7__3528_ gnd vdd FILL
XFILL_5__3510_ gnd vdd FILL
XFILL_7__3108_ gnd vdd FILL
XFILL_1__3502_ gnd vdd FILL
XFILL_3__3428_ gnd vdd FILL
XFILL_3__3008_ gnd vdd FILL
X_2992_ _502_ AN _1008_ _660_ vdd gnd OAI21X1
XFILL_6__1853_ gnd vdd FILL
X_2572_ _1118_ _268_ _307_ _308_ vdd gnd OAI21X1
X_2152_ _853__bF$buf0 _1287_ _1288_ vdd gnd NAND2X1
XFILL_2__1845_ gnd vdd FILL
XFILL_8__2812_ gnd vdd FILL
XFILL_4__2712_ gnd vdd FILL
XFILL_6__2638_ gnd vdd FILL
XFILL_6__2218_ gnd vdd FILL
X_3357_ _110_ vdd _1__bF$buf2 clk_bF$buf8 ABH[1] vdd 
+ gnd
+ DFFSR
XFILL_0__2612_ gnd vdd FILL
XFILL_3__3181_ gnd vdd FILL
XFILL_1__3099_ gnd vdd FILL
XFILL_3__1914_ gnd vdd FILL
XFILL_6__2391_ gnd vdd FILL
XFILL_2__2383_ gnd vdd FILL
X_1843_ _980_ _983_ _986_ _987_ vdd gnd NAND3X1
XFILL_6__3596_ gnd vdd FILL
XFILL_9__1693_ gnd vdd FILL
XFILL_6__3176_ gnd vdd FILL
XFILL_2__3588_ gnd vdd FILL
XFILL_2__3168_ gnd vdd FILL
XFILL_0__3150_ gnd vdd FILL
XFILL_7_CLKBUF1_insert28 gnd vdd FILL
XFILL_7_CLKBUF1_insert29 gnd vdd FILL
XFILL_6__1909_ gnd vdd FILL
X_2628_ _349_ _356_ _357_ vdd gnd XOR2X1
X_2208_ RDY_bF$buf6 _872_ _1342_ _1341_ _1343_ vdd 
+ gnd
+ OAI22X1
XFILL_7__2972_ gnd vdd FILL
XFILL_7__2552_ gnd vdd FILL
XFILL_7__2132_ gnd vdd FILL
XFILL_3__2872_ gnd vdd FILL
XFILL_3__2452_ gnd vdd FILL
XFILL_3__2032_ gnd vdd FILL
XFILL_5__2798_ gnd vdd FILL
XFILL_5__2378_ gnd vdd FILL
X_2381_ php _140_ vdd gnd INVX1
XFILL_8__2621_ gnd vdd FILL
XFILL_8__2201_ gnd vdd FILL
XFILL_4__2941_ gnd vdd FILL
XFILL_4__2521_ gnd vdd FILL
XFILL_4__2101_ gnd vdd FILL
XFILL_6__2867_ gnd vdd FILL
XFILL_6__2447_ gnd vdd FILL
X_3586_ _1685_[15] AB[15] vdd gnd BUFX2
XFILL_6__2027_ gnd vdd FILL
X_3166_ _1193_ _926__bF$buf3 _881_ _905_ _798_ vdd 
+ gnd
+ AOI22X1
XFILL_7__3090_ gnd vdd FILL
XFILL_0__2841_ gnd vdd FILL
XFILL_2__2859_ gnd vdd FILL
XFILL_0__2421_ gnd vdd FILL
XFILL_2__2439_ gnd vdd FILL
XFILL_2__2019_ gnd vdd FILL
XFILL_0__2001_ gnd vdd FILL
XFILL_8__3406_ gnd vdd FILL
XFILL_7__1823_ gnd vdd FILL
XFILL_3__1723_ gnd vdd FILL
XFILL_0__3206_ gnd vdd FILL
XFILL_7__2608_ gnd vdd FILL
XFILL_2__2192_ gnd vdd FILL
XFILL_3__2928_ gnd vdd FILL
XFILL_3__2508_ gnd vdd FILL
XFILL_2__3397_ gnd vdd FILL
X_2857_ _1162_ _549_ _555_ _556_ vdd gnd OAI21X1
XFILL_6__1718_ gnd vdd FILL
X_2437_ _898_ _990_ _1235_ _188_ vdd gnd NAND3X1
X_2017_ IRHOLD_valid_bF$buf0 IRHOLD[5] _1153_ vdd gnd NAND2X1
XFILL_7__2781_ gnd vdd FILL
XFILL_7__2361_ gnd vdd FILL
XFILL_3__2681_ gnd vdd FILL
XFILL_3__2261_ gnd vdd FILL
XFILL_5__2187_ gnd vdd FILL
XFILL_1__2599_ gnd vdd FILL
XFILL_1__2179_ gnd vdd FILL
XFILL_7__3566_ gnd vdd FILL
XFILL_7__3146_ gnd vdd FILL
XFILL_1__3540_ gnd vdd FILL
XFILL_1__3120_ gnd vdd FILL
XFILL_3__3466_ gnd vdd FILL
XFILL_3__3046_ gnd vdd FILL
XFILL_6__1891_ gnd vdd FILL
X_2190_ RDY_bF$buf6 _934_ _1324_ _1322_ _1325_ vdd 
+ gnd
+ OAI22X1
XFILL_2__1883_ gnd vdd FILL
XFILL_8__2850_ gnd vdd FILL
XFILL_8__2430_ gnd vdd FILL
XFILL_8__2010_ gnd vdd FILL
XFILL_4__2750_ gnd vdd FILL
XFILL_4__2330_ gnd vdd FILL
XFILL_6__2676_ gnd vdd FILL
XFILL_6__2256_ gnd vdd FILL
X_3395_ _1653_ BI[6] _1669_ vdd gnd AND2X2
XFILL_0__2650_ gnd vdd FILL
XFILL_2__2668_ gnd vdd FILL
XFILL_2__2248_ gnd vdd FILL
XFILL_0__2230_ gnd vdd FILL
XFILL_8__3215_ gnd vdd FILL
X_1708_ _853__bF$buf4 DI[6] _862_ _863_ vdd gnd OAI21X1
XFILL_4__3535_ gnd vdd FILL
XFILL_4__3115_ gnd vdd FILL
XFILL_3__1952_ gnd vdd FILL
XFILL_0__3435_ gnd vdd FILL
XFILL_0__3015_ gnd vdd FILL
XFILL_5__1878_ gnd vdd FILL
XFILL_7__2837_ gnd vdd FILL
XFILL_7__2417_ gnd vdd FILL
XFILL_1__2811_ gnd vdd FILL
XFILL_3__2737_ gnd vdd FILL
XFILL_3__2317_ gnd vdd FILL
X_1881_ _1013_ _1021_ _1024_ _1025_ vdd gnd NAND3X1
XFILL_8__1701_ gnd vdd FILL
XFILL_6__1947_ gnd vdd FILL
X_2666_ _389_ _385_ _391_ vdd gnd NAND2X1
X_2246_ _1311_ _1368_ _1379_ _1380_ vdd gnd AOI21X1
XFILL_7__2590_ gnd vdd FILL
XFILL_7__2170_ gnd vdd FILL
XFILL_2__1939_ gnd vdd FILL
XFILL_0__1921_ gnd vdd FILL
XFILL_8__2906_ gnd vdd FILL
XFILL_3__2490_ gnd vdd FILL
XFILL_3__2070_ gnd vdd FILL
XFILL_4__2806_ gnd vdd FILL
XFILL_7__3375_ gnd vdd FILL
XFILL_0__2706_ gnd vdd FILL
XFILL_2__1692_ gnd vdd FILL
XFILL_6__2485_ gnd vdd FILL
XFILL_6__2065_ gnd vdd FILL
XFILL_2__2897_ gnd vdd FILL
XFILL_2__2477_ gnd vdd FILL
XFILL_8__3444_ gnd vdd FILL
XFILL_2__2057_ gnd vdd FILL
XFILL_8__3024_ gnd vdd FILL
X_1937_ _1047_ _1074_ _1078_ AI[2] vdd gnd OAI21X1
XFILL_7__1861_ gnd vdd FILL
XFILL_3__1761_ gnd vdd FILL
XFILL_7__2646_ gnd vdd FILL
XFILL_7__2226_ gnd vdd FILL
XFILL_1__2620_ gnd vdd FILL
XFILL_1__2200_ gnd vdd FILL
XFILL_3__2966_ gnd vdd FILL
XFILL_3__2546_ gnd vdd FILL
XFILL_3__2126_ gnd vdd FILL
X_1690_ RDY_bF$buf4 _849_ _850_ DIMUX[0] vdd gnd OAI21X1
XFILL_8__1930_ gnd vdd FILL
XFILL_5__3413_ gnd vdd FILL
XFILL_1__3405_ gnd vdd FILL
XFILL_4__1830_ gnd vdd FILL
X_2895_ _541_ _581_ _582_ vdd gnd NOR2X1
XFILL_6__1756_ gnd vdd FILL
X_2475_ _223_ _1685_[2] vdd gnd INVX1
XFILL183450x163950 gnd vdd FILL
X_2055_ _887__bF$buf4 _989_ _1191_ vdd gnd NOR2X1
XFILL_0__1730_ gnd vdd FILL
XFILL_2__1748_ gnd vdd FILL
XFILL_8__2715_ gnd vdd FILL
XFILL_4__2615_ gnd vdd FILL
XFILL_7__3184_ gnd vdd FILL
XFILL_0__2935_ gnd vdd FILL
XFILL_0__2515_ gnd vdd FILL
XFILL184650x150 gnd vdd FILL
XFILL_3__3084_ gnd vdd FILL
XFILL_7__1917_ gnd vdd FILL
XFILL_3__1817_ gnd vdd FILL
XFILL_6__2294_ gnd vdd FILL
XFILL_2__2286_ gnd vdd FILL
X_1746_ state[0] _870_ _899_ vdd gnd NAND2X1
XFILL_4__3153_ gnd vdd FILL
XFILL_6__3499_ gnd vdd FILL
XFILL_6__3079_ gnd vdd FILL
XFILL_3__1990_ gnd vdd FILL
XFILL_0__3473_ gnd vdd FILL
XFILL_0__3053_ gnd vdd FILL
XFILL_7__2875_ gnd vdd FILL
XFILL_7__2455_ gnd vdd FILL
XFILL_7__2035_ gnd vdd FILL
XFILL_3__2775_ gnd vdd FILL
XFILL_3__2355_ gnd vdd FILL
XFILL_5__3222_ gnd vdd FILL
XFILL_1__3214_ gnd vdd FILL
XFILL_6__1985_ gnd vdd FILL
X_2284_ _1223_ _1276_ _1418_ vdd gnd AND2X2
XFILL_2__1977_ gnd vdd FILL
XFILL_8__2944_ gnd vdd FILL
XFILL_8__2524_ gnd vdd FILL
XFILL_8__2104_ gnd vdd FILL
XFILL_3_BUFX2_insert20 gnd vdd FILL
XFILL_3_BUFX2_insert21 gnd vdd FILL
XFILL_3_BUFX2_insert22 gnd vdd FILL
XFILL_3_BUFX2_insert23 gnd vdd FILL
XFILL_3_BUFX2_insert24 gnd vdd FILL
XFILL_3_BUFX2_insert25 gnd vdd FILL
XFILL_3_BUFX2_insert26 gnd vdd FILL
XFILL_3_BUFX2_insert27 gnd vdd FILL
XFILL_4__2844_ gnd vdd FILL
XFILL_4__2424_ gnd vdd FILL
XFILL_4__2004_ gnd vdd FILL
X_3489_ _1537_ _1575_ vdd gnd INVX1
X_3069_ _727_ _728_ vdd gnd INVX1
XFILL_0__2744_ gnd vdd FILL
XFILL_0__2324_ gnd vdd FILL
XFILL_7__1726_ gnd vdd FILL
XFILL_4__3209_ gnd vdd FILL
XFILL_1__1700_ gnd vdd FILL
XFILL_0__3529_ gnd vdd FILL
XFILL_0__3109_ gnd vdd FILL
XFILL_5__2913_ gnd vdd FILL
XFILL_8__3482_ gnd vdd FILL
XFILL_2__2095_ gnd vdd FILL
XFILL_8__3062_ gnd vdd FILL
XFILL_1__2905_ gnd vdd FILL
X_1975_ _1047_ _1107_ _1112_ AI[6] vdd gnd OAI21X1
XFILL_4__3382_ gnd vdd FILL
XFILL_7__2684_ gnd vdd FILL
XFILL_7__2264_ gnd vdd FILL
XFILL_3__2584_ gnd vdd FILL
XFILL_3__2164_ gnd vdd FILL
XFILL_5__3451_ gnd vdd FILL
XFILL_7__3469_ gnd vdd FILL
XFILL_5__3031_ gnd vdd FILL
XFILL_7__3049_ gnd vdd FILL
XFILL_1__3443_ gnd vdd FILL
XFILL_1__3023_ gnd vdd FILL
XFILL_3__3369_ gnd vdd FILL
XFILL_6__1794_ gnd vdd FILL
X_2093_ _853__bF$buf3 _1228_ _1229_ vdd gnd NAND2X1
XFILL_2__1786_ gnd vdd FILL
XFILL_8__2753_ gnd vdd FILL
XFILL_8__2333_ gnd vdd FILL
XFILL_4__2653_ gnd vdd FILL
XFILL_4__2233_ gnd vdd FILL
XFILL_6__2999_ gnd vdd FILL
XFILL_6__2579_ gnd vdd FILL
X_3298_ _52_ _1__bF$buf8 vdd clk_bF$buf7 res vdd 
+ gnd
+ DFFSR
XFILL_6__2159_ gnd vdd FILL
XFILL_0__2973_ gnd vdd FILL
XFILL_0__2553_ gnd vdd FILL
XFILL_6__3520_ gnd vdd FILL
XFILL_8__3538_ gnd vdd FILL
XFILL_0__2133_ gnd vdd FILL
XFILL_8__3118_ gnd vdd FILL
XFILL_6__3100_ gnd vdd FILL
XFILL_2__3512_ gnd vdd FILL
XFILL_7__1955_ gnd vdd FILL
XFILL_4__3438_ gnd vdd FILL
XFILL_4__3018_ gnd vdd FILL
XFILL_3__1855_ gnd vdd FILL
XFILL_5__2722_ gnd vdd FILL
XFILL_5__2302_ gnd vdd FILL
XFILL_1__2714_ gnd vdd FILL
X_1784_ _935_ _936_ vdd gnd INVX2
XFILL_4__3191_ gnd vdd FILL
XFILL_5__3507_ gnd vdd FILL
XFILL_0__3091_ gnd vdd FILL
XFILL183750x101550 gnd vdd FILL
XFILL_4__1924_ gnd vdd FILL
X_2989_ compare _633_ _657_ vdd gnd NOR2X1
X_2569_ _192_ _195_ DIMUX[7] _305_ vdd gnd OAI21X1
X_2149_ RDY_bF$buf3 _1284_ _1285_ vdd gnd NAND2X1
XFILL_7__2493_ gnd vdd FILL
XFILL_7__2073_ gnd vdd FILL
XFILL_0__1824_ gnd vdd FILL
XFILL_8__2809_ gnd vdd FILL
X_3510_ _1595_ _1596_ vdd gnd INVX1
XFILL_3__2393_ gnd vdd FILL
XFILL_4__2709_ gnd vdd FILL
XFILL_0__2609_ gnd vdd FILL
XFILL_3__3598_ gnd vdd FILL
XFILL_3__3178_ gnd vdd FILL
XFILL_8__2982_ gnd vdd FILL
XFILL_8__2562_ gnd vdd FILL
XFILL_8__2142_ gnd vdd FILL
XFILL_4__2882_ gnd vdd FILL
XFILL_4__2462_ gnd vdd FILL
XFILL_4__2042_ gnd vdd FILL
XFILL_6__2388_ gnd vdd FILL
XFILL_0__2782_ gnd vdd FILL
XFILL_0__2362_ gnd vdd FILL
XFILL_7__1764_ gnd vdd FILL
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
XFILL_5__2951_ gnd vdd FILL
XFILL_4_BUFX2_insert79 gnd vdd FILL
XFILL_7__2969_ gnd vdd FILL
XFILL_7__2549_ gnd vdd FILL
XFILL_5__2531_ gnd vdd FILL
XFILL_5__2111_ gnd vdd FILL
XFILL_7__2129_ gnd vdd FILL
XFILL184050x54750 gnd vdd FILL
XFILL_1__2943_ gnd vdd FILL
XFILL_1__2523_ gnd vdd FILL
XFILL_1__2103_ gnd vdd FILL
XFILL_3__2869_ gnd vdd FILL
XFILL_3__2449_ gnd vdd FILL
XFILL_3__2029_ gnd vdd FILL
XFILL_8__1833_ gnd vdd FILL
XFILL_4__1733_ gnd vdd FILL
X_2798_ _1215_ _1394_ _507_ vdd gnd OR2X2
X_2378_ _1036_ _1281_ PC[8] _137_ vdd gnd OAI21X1
XFILL_6__2600_ gnd vdd FILL
XFILL_8__2618_ gnd vdd FILL
XFILL_4__2938_ gnd vdd FILL
XFILL_4__2518_ gnd vdd FILL
XFILL_7__3087_ gnd vdd FILL
XFILL_0__2838_ gnd vdd FILL
XFILL_0__2418_ gnd vdd FILL
XFILL_1__3481_ gnd vdd FILL
XFILL_1__3061_ gnd vdd FILL
XFILL_5__1802_ gnd vdd FILL
XFILL_8__2791_ gnd vdd FILL
XFILL_8__2371_ gnd vdd FILL
XFILL_4__2691_ gnd vdd FILL
XFILL_4__2271_ gnd vdd FILL
XFILL_6__2197_ gnd vdd FILL
XFILL_0__2591_ gnd vdd FILL
XFILL_2__2189_ gnd vdd FILL
XFILL_0__2171_ gnd vdd FILL
XFILL_8__3156_ gnd vdd FILL
XFILL_2__3550_ gnd vdd FILL
XFILL_2__3130_ gnd vdd FILL
XFILL_7__1993_ gnd vdd FILL
XFILL_4__3476_ gnd vdd FILL
XFILL_4__3056_ gnd vdd FILL
XFILL_3__1893_ gnd vdd FILL
XFILL_0__3376_ gnd vdd FILL
XFILL_5__2760_ gnd vdd FILL
XFILL_7__2778_ gnd vdd FILL
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
X_2187_ _1321_ _1322_ vdd gnd INVX1
XFILL_0__1862_ gnd vdd FILL
XFILL_8__2847_ gnd vdd FILL
XFILL_8__2427_ gnd vdd FILL
XFILL_8__2007_ gnd vdd FILL
XFILL_2__2821_ gnd vdd FILL
XFILL_2__2401_ gnd vdd FILL
XFILL_4__2747_ gnd vdd FILL
XFILL_4__2327_ gnd vdd FILL
XFILL_0__2647_ gnd vdd FILL
XFILL_0__2227_ gnd vdd FILL
XFILL_8__2180_ gnd vdd FILL
XFILL_3__1949_ gnd vdd FILL
XFILL_4__2080_ gnd vdd FILL
XFILL_5__2816_ gnd vdd FILL
XFILL_8__3385_ gnd vdd FILL
XFILL_1__2808_ gnd vdd FILL
X_1878_ _1016_ _1011_ _1022_ vdd gnd NOR2X1
XFILL_0__3185_ gnd vdd FILL
XFILL_7__2587_ gnd vdd FILL
XFILL_7__2167_ gnd vdd FILL
XFILL_0__1918_ gnd vdd FILL
XFILL_1__2981_ gnd vdd FILL
XFILL_1__2561_ gnd vdd FILL
XFILL_1__2141_ gnd vdd FILL
XFILL_3__2487_ gnd vdd FILL
XFILL_3__2067_ gnd vdd FILL
XFILL_8__1871_ gnd vdd FILL
XFILL_4__1771_ gnd vdd FILL
XFILL_6__1697_ gnd vdd FILL
XFILL_2__1689_ gnd vdd FILL
XFILL_8__2656_ gnd vdd FILL
XFILL_8__2236_ gnd vdd FILL
XFILL184650x35250 gnd vdd FILL
XFILL_2__2630_ gnd vdd FILL
XFILL_2__2210_ gnd vdd FILL
XFILL_4__2976_ gnd vdd FILL
XFILL_4__2556_ gnd vdd FILL
XFILL_4__2136_ gnd vdd FILL
XFILL_0__2876_ gnd vdd FILL
XFILL_0__2456_ gnd vdd FILL
XFILL_0__2036_ gnd vdd FILL
XFILL_6__3423_ gnd vdd FILL
XFILL_6__3003_ gnd vdd FILL
XFILL_2__3415_ gnd vdd FILL
XFILL_5__1840_ gnd vdd FILL
XFILL_7__1858_ gnd vdd FILL
XFILL_1__1832_ gnd vdd FILL
XFILL_3__1758_ gnd vdd FILL
XFILL_8_BUFX2_insert20 gnd vdd FILL
XFILL_8_BUFX2_insert21 gnd vdd FILL
XFILL_5__2625_ gnd vdd FILL
XFILL_5__2205_ gnd vdd FILL
XFILL_8_BUFX2_insert22 gnd vdd FILL
XFILL_8_BUFX2_insert23 gnd vdd FILL
XFILL_8_BUFX2_insert24 gnd vdd FILL
XFILL_8_BUFX2_insert25 gnd vdd FILL
XFILL_8_BUFX2_insert26 gnd vdd FILL
XFILL_8_BUFX2_insert27 gnd vdd FILL
XFILL_8__3194_ gnd vdd FILL
XFILL_1__2617_ gnd vdd FILL
XFILL_4__3094_ gnd vdd FILL
XFILL_8__1927_ gnd vdd FILL
XFILL_2__1901_ gnd vdd FILL
XFILL_4__1827_ gnd vdd FILL
XFILL_7__2396_ gnd vdd FILL
XFILL_0__1727_ gnd vdd FILL
X_3413_ alu_shift_right AI[5] _1499_ vdd gnd NAND2X1
XFILL_1__2790_ gnd vdd FILL
XFILL_1__2370_ gnd vdd FILL
XFILL_3__2296_ gnd vdd FILL
XFILL_5__3583_ gnd vdd FILL
XFILL_5__3163_ gnd vdd FILL
XFILL_1__3155_ gnd vdd FILL
XFILL_8__2885_ gnd vdd FILL
XFILL_8__2465_ gnd vdd FILL
XFILL_8__2045_ gnd vdd FILL
XFILL_4__2785_ gnd vdd FILL
XFILL_4__2365_ gnd vdd FILL
XFILL_0__2685_ gnd vdd FILL
XFILL_0__2265_ gnd vdd FILL
XFILL_6__3232_ gnd vdd FILL
XFILL_2__3224_ gnd vdd FILL
XFILL_3__1987_ gnd vdd FILL
XFILL_5__2854_ gnd vdd FILL
XFILL_5__2434_ gnd vdd FILL
XFILL_5__2014_ gnd vdd FILL
XFILL_1__2846_ gnd vdd FILL
XFILL_1__2426_ gnd vdd FILL
XFILL_1__2006_ gnd vdd FILL
XFILL_8__1736_ gnd vdd FILL
XFILL_5__3219_ gnd vdd FILL
XFILL_2__1710_ gnd vdd FILL
XFILL_0__1956_ gnd vdd FILL
XFILL_6__2923_ gnd vdd FILL
XFILL_6__2503_ gnd vdd FILL
X_3222_ ABH[3] _843_ vdd gnd INVX1
XFILL_2__2915_ gnd vdd FILL
XFILL_5__3392_ gnd vdd FILL
XFILL_1__3384_ gnd vdd FILL
XFILL_5__1705_ gnd vdd FILL
XFILL_8__2694_ gnd vdd FILL
XFILL_8__2274_ gnd vdd FILL
XFILL_4__2594_ gnd vdd FILL
XFILL_4__2174_ gnd vdd FILL
XFILL_0__2494_ gnd vdd FILL
XFILL_8__3479_ gnd vdd FILL
XFILL_6__3461_ gnd vdd FILL
XFILL_0__2074_ gnd vdd FILL
XFILL_8__3059_ gnd vdd FILL
XFILL_6__3041_ gnd vdd FILL
XFILL_2__3453_ gnd vdd FILL
XFILL_2__3033_ gnd vdd FILL
XFILL_7__1896_ gnd vdd FILL
XFILL_4__3379_ gnd vdd FILL
X_2913_ _1014_ _1219__bF$buf0 _589_ _597_ _48_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1870_ gnd vdd FILL
XFILL_3__1796_ gnd vdd FILL
XFILL_5__2663_ gnd vdd FILL
XFILL_5__2243_ gnd vdd FILL
XFILL_1__2655_ gnd vdd FILL
XFILL_1__2235_ gnd vdd FILL
XFILL_7__3202_ gnd vdd FILL
XFILL_3__3522_ gnd vdd FILL
XFILL_3__3102_ gnd vdd FILL
XFILL_8__1965_ gnd vdd FILL
XFILL_5__3448_ gnd vdd FILL
XFILL_5__3028_ gnd vdd FILL
XFILL_4__1865_ gnd vdd FILL
XFILL_0__1765_ gnd vdd FILL
XFILL_6__2732_ gnd vdd FILL
X_3451_ alu_op[2] BI[1] _1536_ _1537_ vdd gnd AOI21X1
XFILL_6__2312_ gnd vdd FILL
X_3031_ DIMUX[0] _981_ _694_ _695_ vdd gnd OAI21X1
XFILL_2__2724_ gnd vdd FILL
XFILL_2__2304_ gnd vdd FILL
XFILL_6__3517_ gnd vdd FILL
XFILL_1__3193_ gnd vdd FILL
XFILL_2__3509_ gnd vdd FILL
XFILL_5__1934_ gnd vdd FILL
XFILL_8__2083_ gnd vdd FILL
XFILL_1__1926_ gnd vdd FILL
XFILL_5__2719_ gnd vdd FILL
XFILL_4__3188_ gnd vdd FILL
X_2722_ _442_ _441_ _443_ vdd gnd XOR2X1
X_2302_ _1433_ _1431_ _1434_ _1435_ vdd gnd NAND3X1
XFILL_0__3088_ gnd vdd FILL
XFILL_5__2892_ gnd vdd FILL
XFILL_5__2472_ gnd vdd FILL
XFILL_5__2052_ gnd vdd FILL
X_3507_ _1592_ _1593_ vdd gnd INVX1
XFILL_1__2884_ gnd vdd FILL
XFILL_1__2464_ gnd vdd FILL
XFILL_7__3431_ gnd vdd FILL
XFILL_1__2044_ gnd vdd FILL
XFILL_7__3011_ gnd vdd FILL
XFILL_8__1774_ gnd vdd FILL
XFILL_0__1994_ gnd vdd FILL
XFILL_8__2979_ gnd vdd FILL
XFILL_6__2961_ gnd vdd FILL
XFILL_6__2541_ gnd vdd FILL
XFILL_8__2559_ gnd vdd FILL
X_3260_ _22_ vdd _1__bF$buf6 clk_bF$buf6 plp vdd 
+ gnd
+ DFFSR
XFILL_8__2139_ gnd vdd FILL
XFILL_6__2121_ gnd vdd FILL
XFILL_2__2953_ gnd vdd FILL
XFILL_2__2533_ gnd vdd FILL
XFILL_8__3500_ gnd vdd FILL
XFILL_2__2113_ gnd vdd FILL
XFILL_4__2879_ gnd vdd FILL
XFILL_4__2459_ gnd vdd FILL
XFILL_4__2039_ gnd vdd FILL
XFILL_4__3400_ gnd vdd FILL
XFILL_0__2779_ gnd vdd FILL
XFILL_0__2359_ gnd vdd FILL
XFILL_5__1743_ gnd vdd FILL
XFILL_1__1735_ gnd vdd FILL
XFILL_7__2702_ gnd vdd FILL
XFILL_9__2208_ gnd vdd FILL
XFILL_3__2602_ gnd vdd FILL
XFILL_5__2948_ gnd vdd FILL
XFILL_5__2528_ gnd vdd FILL
XFILL_5__2108_ gnd vdd FILL
XFILL_8__3097_ gnd vdd FILL
XFILL_2__3491_ gnd vdd FILL
XFILL_2__3071_ gnd vdd FILL
X_2951_ reset _618_ IRHOLD[5] _626_ vdd gnd OAI21X1
XFILL_6__1812_ gnd vdd FILL
X_2531_ PC[10] _272_ vdd gnd INVX1
X_2111_ _1243_ _1246_ _1247_ vdd gnd AND2X2
XFILL_2__1804_ gnd vdd FILL
XFILL_5__2281_ gnd vdd FILL
XFILL_7__2299_ gnd vdd FILL
X_3316_ _70_ vdd _1__bF$buf4 clk_bF$buf0 _AXYS[0]_[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2693_ gnd vdd FILL
XFILL_1__2273_ gnd vdd FILL
XFILL_3__2199_ gnd vdd FILL
XFILL_3__3560_ gnd vdd FILL
XFILL_3__3140_ gnd vdd FILL
XFILL_5__3486_ gnd vdd FILL
XFILL_5__3066_ gnd vdd FILL
XFILL_1__3478_ gnd vdd FILL
XFILL_1__3058_ gnd vdd FILL
XFILL_8__2788_ gnd vdd FILL
XFILL_6__2770_ gnd vdd FILL
XFILL_6__2350_ gnd vdd FILL
XFILL_8__2368_ gnd vdd FILL
XFILL_2__2762_ gnd vdd FILL
XFILL_2__2342_ gnd vdd FILL
XFILL_4__2688_ gnd vdd FILL
XFILL_4__2268_ gnd vdd FILL
XFILL183750x175650 gnd vdd FILL
X_1802_ _926__bF$buf2 _953_ _954_ vdd gnd NAND2X1
XFILL_0__2588_ gnd vdd FILL
XFILL_0__2168_ gnd vdd FILL
XFILL_6__3555_ gnd vdd FILL
XFILL_6__3135_ gnd vdd FILL
XFILL_2__3547_ gnd vdd FILL
XFILL_2__3127_ gnd vdd FILL
XFILL_5__1972_ gnd vdd FILL
XFILL_1__1964_ gnd vdd FILL
XFILL_7__2931_ gnd vdd FILL
XFILL_7__2511_ gnd vdd FILL
XFILL_3__2831_ gnd vdd FILL
XFILL_3__2411_ gnd vdd FILL
XFILL_5__2757_ gnd vdd FILL
XFILL_5__2337_ gnd vdd FILL
XFILL_1__2749_ gnd vdd FILL
XFILL_1__2329_ gnd vdd FILL
X_2760_ _1284_ _1109_ _477_ vdd gnd NOR2X1
X_2340_ _942_ _1471_ vdd gnd INVX1
XFILL_4__1959_ gnd vdd FILL
XFILL_5__2090_ gnd vdd FILL
XFILL_4__2900_ gnd vdd FILL
XFILL_0__1859_ gnd vdd FILL
XFILL_6__2826_ gnd vdd FILL
X_3545_ _1572_ _1628_ RDY_bF$buf2 _1629_ vdd gnd OAI21X1
XFILL_6__2406_ gnd vdd FILL
X_3125_ _691__bF$buf3 _758_ _AXYS[2]_[7] _766_ vdd gnd OAI21X1
XFILL_1__2082_ gnd vdd FILL
XFILL_9_BUFX2_insert97 gnd vdd FILL
XFILL_2__2818_ gnd vdd FILL
XFILL_0__2800_ gnd vdd FILL
XFILL_8__2597_ gnd vdd FILL
XFILL_8__2177_ gnd vdd FILL
XFILL_2__2991_ gnd vdd FILL
XFILL_2__2571_ gnd vdd FILL
XFILL_2__2151_ gnd vdd FILL
XFILL_4__2497_ gnd vdd FILL
XFILL_4__2077_ gnd vdd FILL
XFILL_0__2397_ gnd vdd FILL
XFILL_6__3364_ gnd vdd FILL
XFILL_7__1799_ gnd vdd FILL
XFILL_5__1781_ gnd vdd FILL
X_2816_ _853__bF$buf1 _1002__bF$buf1 clv _519_ vdd gnd OAI21X1
XFILL_1__1773_ gnd vdd FILL
XFILL_7__2740_ gnd vdd FILL
XFILL_7__2320_ gnd vdd FILL
XFILL_3__1699_ gnd vdd FILL
XFILL_3__2640_ gnd vdd FILL
XFILL_3__2220_ gnd vdd FILL
XFILL_5__2986_ gnd vdd FILL
XFILL_5__2566_ gnd vdd FILL
XFILL_5__2146_ gnd vdd FILL
XFILL_1__2978_ gnd vdd FILL
XFILL_1__2558_ gnd vdd FILL
XFILL_7__3525_ gnd vdd FILL
XFILL_1__2138_ gnd vdd FILL
XFILL_7__3105_ gnd vdd FILL
XFILL_3__3425_ gnd vdd FILL
XFILL_3__3005_ gnd vdd FILL
XFILL_8__1868_ gnd vdd FILL
XFILL_6__1850_ gnd vdd FILL
XFILL_2__1842_ gnd vdd FILL
XFILL_4__1768_ gnd vdd FILL
XFILL_6__2635_ gnd vdd FILL
XFILL_6__2215_ gnd vdd FILL
X_3354_ _107_ vdd _1__bF$buf5 clk_bF$buf9 ABL[6] vdd 
+ gnd
+ DFFSR
XFILL_2__2627_ gnd vdd FILL
XFILL_2__2207_ gnd vdd FILL
XFILL_1__3096_ gnd vdd FILL
XFILL_3__1911_ gnd vdd FILL
XFILL_5__1837_ gnd vdd FILL
XFILL_1__1829_ gnd vdd FILL
XFILL_2__2380_ gnd vdd FILL
X_1840_ _917_ _955_ _984_ vdd gnd NAND2X1
XFILL_6__3593_ gnd vdd FILL
XFILL_6__3173_ gnd vdd FILL
XFILL_2__3585_ gnd vdd FILL
XFILL_2__3165_ gnd vdd FILL
XFILL_6__1906_ gnd vdd FILL
X_2625_ _1051__bF$buf1 _352_ _353_ _354_ vdd gnd OAI21X1
X_2205_ cond_code[1] _1339_ _1338_ _1340_ vdd gnd OAI21X1
XFILL_5__2795_ gnd vdd FILL
XFILL_5__2375_ gnd vdd FILL
XFILL_1__2787_ gnd vdd FILL
XFILL_1__2367_ gnd vdd FILL
XFILL_4__1997_ gnd vdd FILL
XFILL_0__1897_ gnd vdd FILL
XFILL_6__2864_ gnd vdd FILL
XFILL_6__2444_ gnd vdd FILL
X_3583_ _1685_[12] AB[12] vdd gnd BUFX2
XFILL_6__2024_ gnd vdd FILL
X_3163_ _943_ _937_ _795_ vdd gnd NOR2X1
XFILL_2__2856_ gnd vdd FILL
XFILL_2__2436_ gnd vdd FILL
XFILL_2__2016_ gnd vdd FILL
XFILL_8__3403_ gnd vdd FILL
XFILL_7__1820_ gnd vdd FILL
XFILL183450x7950 gnd vdd FILL
XFILL_6__3229_ gnd vdd FILL
XFILL_3__1720_ gnd vdd FILL
XFILL_0__3203_ gnd vdd FILL
XFILL_7__2605_ gnd vdd FILL
XFILL_3__2925_ gnd vdd FILL
XFILL_3__2505_ gnd vdd FILL
XFILL_2__3394_ gnd vdd FILL
X_2854_ _1142_ _1168_ _1214_ _553_ vdd gnd NAND3X1
XFILL_6__1715_ gnd vdd FILL
X_2434_ _183_ _1227_ _184_ _185_ vdd gnd NAND3X1
X_2014_ _1139_ _1149_ _1150_ vdd gnd NOR2X1
XFILL_2__1707_ gnd vdd FILL
XFILL_5__2184_ gnd vdd FILL
X_3219_ _1065_ _830__bF$buf3 _841_ _110_ vdd gnd OAI21X1
XFILL_1__2596_ gnd vdd FILL
XFILL_7__3563_ gnd vdd FILL
XFILL_1__2176_ gnd vdd FILL
XFILL_7__3143_ gnd vdd FILL
XFILL_3__3463_ gnd vdd FILL
XFILL_3__3043_ gnd vdd FILL
XFILL_5__3389_ gnd vdd FILL
XFILL184650x23550 gnd vdd FILL
XFILL_2__1880_ gnd vdd FILL
XFILL_6__2673_ gnd vdd FILL
XFILL_6__2253_ gnd vdd FILL
X_3392_ CO _1666_ vdd gnd INVX1
XFILL_2__2665_ gnd vdd FILL
XFILL_2__2245_ gnd vdd FILL
XFILL_8__3212_ gnd vdd FILL
X_1705_ _853__bF$buf4 DI[5] _860_ _861_ vdd gnd OAI21X1
XFILL_4__3532_ gnd vdd FILL
XFILL_4__3112_ gnd vdd FILL
XFILL_6__3458_ gnd vdd FILL
XFILL_6__3038_ gnd vdd FILL
XFILL_0__3432_ gnd vdd FILL
XFILL_0__3012_ gnd vdd FILL
XFILL_5__1875_ gnd vdd FILL
XFILL_1__1867_ gnd vdd FILL
XFILL_7__2834_ gnd vdd FILL
XFILL_7__2414_ gnd vdd FILL
XFILL_3__2734_ gnd vdd FILL
XFILL_3__2314_ gnd vdd FILL
XFILL_5__3601_ gnd vdd FILL
XFILL_3__3519_ gnd vdd FILL
XFILL_6__1944_ gnd vdd FILL
X_2663_ ADD[6] _321_ _387_ _388_ vdd gnd AOI21X1
X_2243_ RDY_bF$buf1 _1002__bF$buf2 _1376_ _1377_ vdd gnd OAI21X1
XFILL_2__1936_ gnd vdd FILL
XFILL_8__2903_ gnd vdd FILL
XFILL_4__2803_ gnd vdd FILL
XFILL_6__2729_ gnd vdd FILL
X_3448_ AI[1] _1533_ _1657_ _1534_ vdd gnd OAI21X1
XFILL_6__2309_ gnd vdd FILL
X_3028_ _691__bF$buf2 _692_ vdd gnd INVX1
XFILL_7__3372_ gnd vdd FILL
XFILL_0__2703_ gnd vdd FILL
XFILL_5__3198_ gnd vdd FILL
XFILL_6__2482_ gnd vdd FILL
XFILL_6__2062_ gnd vdd FILL
XFILL_2__2894_ gnd vdd FILL
XFILL_2__2474_ gnd vdd FILL
XFILL_8__3441_ gnd vdd FILL
XFILL_2__2054_ gnd vdd FILL
XFILL_8__3021_ gnd vdd FILL
X_1934_ ABH[2] _1075_ _1076_ vdd gnd NAND2X1
X_2719_ PC[10] _415_ _414_ _440_ vdd gnd NAND3X1
XFILL_7__2643_ gnd vdd FILL
XFILL_7__2223_ gnd vdd FILL
XFILL_9__2149_ gnd vdd FILL
XFILL_3__2963_ gnd vdd FILL
XFILL_3__2543_ gnd vdd FILL
XFILL_3__2123_ gnd vdd FILL
XFILL_5__2889_ gnd vdd FILL
XFILL_5__2469_ gnd vdd FILL
XFILL_5__2049_ gnd vdd FILL
XFILL_7__3428_ gnd vdd FILL
XFILL_5__3410_ gnd vdd FILL
XFILL_7__3008_ gnd vdd FILL
XFILL_1__3402_ gnd vdd FILL
X_2892_ _575_ _579_ _576_ _45_ vdd gnd OAI21X1
XFILL_6__1753_ gnd vdd FILL
X_2472_ _219_ _220_ _221_ vdd gnd AND2X2
X_2052_ _1185_ _1187_ _1188_ vdd gnd NOR2X1
XFILL_2__1745_ gnd vdd FILL
XFILL_8__2712_ gnd vdd FILL
XFILL_4__2612_ gnd vdd FILL
XFILL_6__2958_ gnd vdd FILL
XFILL_6__2538_ gnd vdd FILL
XFILL_6__2118_ gnd vdd FILL
X_3257_ _19_ vdd _1__bF$buf6 clk_bF$buf6 cond_code[0] vdd 
+ gnd
+ DFFSR
XFILL_7__3181_ gnd vdd FILL
XFILL_0__2932_ gnd vdd FILL
XFILL_0__2512_ gnd vdd FILL
XFILL_3__3081_ gnd vdd FILL
XFILL_7__1914_ gnd vdd FILL
XFILL_3__1814_ gnd vdd FILL
XFILL_6__2291_ gnd vdd FILL
XFILL_2__2283_ gnd vdd FILL
X_1743_ state[2] state[3] _896_ vdd gnd NAND2X1
XFILL_4__3150_ gnd vdd FILL
XFILL_6__3496_ gnd vdd FILL
XFILL_6__3076_ gnd vdd FILL
XFILL_0_BUFX2_insert90 gnd vdd FILL
XFILL_0_BUFX2_insert91 gnd vdd FILL
XFILL_2__3488_ gnd vdd FILL
XFILL_0__3470_ gnd vdd FILL
XFILL_0_BUFX2_insert92 gnd vdd FILL
XFILL_0_BUFX2_insert93 gnd vdd FILL
XFILL_0__3050_ gnd vdd FILL
XFILL_2__3068_ gnd vdd FILL
XFILL_0_BUFX2_insert94 gnd vdd FILL
XFILL_0_BUFX2_insert95 gnd vdd FILL
XFILL_0_BUFX2_insert96 gnd vdd FILL
XFILL_0_BUFX2_insert97 gnd vdd FILL
X_2948_ _857_ _620_ _624_ _56_ vdd gnd OAI21X1
XFILL_6__1809_ gnd vdd FILL
X_2528_ _1065_ _268_ _269_ _270_ vdd gnd OAI21X1
X_2108_ _918__bF$buf2 _936_ _1244_ vdd gnd NOR2X1
XFILL_7__2872_ gnd vdd FILL
XFILL_7__2452_ gnd vdd FILL
XFILL_7__2032_ gnd vdd FILL
XFILL_3__2772_ gnd vdd FILL
XFILL_3__2352_ gnd vdd FILL
XFILL_5__2698_ gnd vdd FILL
XFILL_5__2278_ gnd vdd FILL
XFILL_1__3211_ gnd vdd FILL
XFILL_3__3557_ gnd vdd FILL
XFILL_3__3137_ gnd vdd FILL
XFILL_6__1982_ gnd vdd FILL
X_2281_ _1380_ _1414_ _1407_ _1415_ vdd gnd NAND3X1
XFILL_2__1974_ gnd vdd FILL
XFILL_8__2941_ gnd vdd FILL
XFILL_8__2521_ gnd vdd FILL
XFILL_8__2101_ gnd vdd FILL
XFILL_4__2841_ gnd vdd FILL
XFILL_4__2421_ gnd vdd FILL
XFILL_4__2001_ gnd vdd FILL
XFILL_6__2767_ gnd vdd FILL
X_3486_ _1553_ _1572_ vdd gnd INVX1
XFILL_6__2347_ gnd vdd FILL
X_3066_ _693_ _724_ _725_ _73_ vdd gnd OAI21X1
XFILL_2__2759_ gnd vdd FILL
XFILL_0__2741_ gnd vdd FILL
XFILL_2__2339_ gnd vdd FILL
XFILL_0__2321_ gnd vdd FILL
XFILL_7__1723_ gnd vdd FILL
XFILL_4__3206_ gnd vdd FILL
XFILL_0__3526_ gnd vdd FILL
XFILL_0__3106_ gnd vdd FILL
XFILL_5__1969_ gnd vdd FILL
XFILL_5__2910_ gnd vdd FILL
XFILL_7__2928_ gnd vdd FILL
XFILL_7__2508_ gnd vdd FILL
XFILL_2__2092_ gnd vdd FILL
XFILL_1__2902_ gnd vdd FILL
XFILL_3__2828_ gnd vdd FILL
XFILL_3__2408_ gnd vdd FILL
X_1972_ _1109_ _1110_ vdd gnd INVX1
X_2757_ _458_ _472_ _468_ _473_ _474_ vdd 
+ gnd
+ AOI22X1
X_2337_ _1460_ _1468_ _1467_ _1483_[4] vdd gnd NAND3X1
XFILL_7__2681_ gnd vdd FILL
XFILL_7__2261_ gnd vdd FILL
XFILL_3__2581_ gnd vdd FILL
XFILL_3__2161_ gnd vdd FILL
XFILL_5__2087_ gnd vdd FILL
XFILL_1__2499_ gnd vdd FILL
XFILL_1__2079_ gnd vdd FILL
XFILL_7__3466_ gnd vdd FILL
XFILL_7__3046_ gnd vdd FILL
XFILL_1__3440_ gnd vdd FILL
XFILL_1__3020_ gnd vdd FILL
XFILL_3__3366_ gnd vdd FILL
XFILL_6__1791_ gnd vdd FILL
X_2090_ _853__bF$buf6 _1224_ _1225_ _1226_ vdd gnd OAI21X1
XFILL_2__1783_ gnd vdd FILL
XFILL_8__2750_ gnd vdd FILL
XFILL_8__2330_ gnd vdd FILL
XFILL_4__2650_ gnd vdd FILL
XFILL_4__2230_ gnd vdd FILL
XFILL_6__2996_ gnd vdd FILL
XFILL_6__2576_ gnd vdd FILL
XFILL_6__2156_ gnd vdd FILL
X_3295_ DIMUX[5] vdd _1__bF$buf5 clk_bF$buf2 DIHOLD[5] vdd 
+ gnd
+ DFFSR
XFILL_0__2970_ gnd vdd FILL
XFILL_2__2988_ gnd vdd FILL
XFILL_2__2568_ gnd vdd FILL
XFILL_0__2550_ gnd vdd FILL
XFILL_8__3535_ gnd vdd FILL
XFILL_0__2130_ gnd vdd FILL
XFILL_2__2148_ gnd vdd FILL
XFILL_8__3115_ gnd vdd FILL
XFILL_7__1952_ gnd vdd FILL
XFILL_4__3435_ gnd vdd FILL
XFILL_4__3015_ gnd vdd FILL
XFILL_3__1852_ gnd vdd FILL
XFILL_5__1778_ gnd vdd FILL
XFILL_7__2737_ gnd vdd FILL
XFILL_7__2317_ gnd vdd FILL
XFILL_1__2711_ gnd vdd FILL
XFILL_3__2637_ gnd vdd FILL
XFILL_3__2217_ gnd vdd FILL
X_1781_ _869__bF$buf2 _900_ _933_ vdd gnd NAND2X1
XFILL_5__3504_ gnd vdd FILL
XFILL_4__1921_ gnd vdd FILL
X_2986_ _653_ _652_ _654_ _655_ vdd gnd AOI21X1
XFILL_6__1847_ gnd vdd FILL
X_2566_ _299_ _208_ _302_ _1685_[14] vdd gnd OAI21X1
X_2146_ _882__bF$buf2 _961_ _853__bF$buf2 _1282_ vdd gnd OAI21X1
XFILL_7__2490_ gnd vdd FILL
XFILL_7__2070_ gnd vdd FILL
XFILL_0__1821_ gnd vdd FILL
XFILL_2__1839_ gnd vdd FILL
XFILL_8__2806_ gnd vdd FILL
XFILL_3__2390_ gnd vdd FILL
XFILL_4__2706_ gnd vdd FILL
XFILL_0__2606_ gnd vdd FILL
XFILL_3__3595_ gnd vdd FILL
XFILL_3__3175_ gnd vdd FILL
XFILL183750x163950 gnd vdd FILL
XFILL_3__1908_ gnd vdd FILL
XFILL_6__2385_ gnd vdd FILL
XFILL_2__2797_ gnd vdd FILL
XFILL_2__2377_ gnd vdd FILL
X_1837_ _926__bF$buf1 _893_ _981_ vdd gnd NAND2X1
XFILL_7__1761_ gnd vdd FILL
XFILL_0__3564_ gnd vdd FILL
XFILL_0__3144_ gnd vdd FILL
XFILL_4_BUFX2_insert40 gnd vdd FILL
XFILL_4_BUFX2_insert41 gnd vdd FILL
XFILL_4_BUFX2_insert42 gnd vdd FILL
XFILL_4_BUFX2_insert43 gnd vdd FILL
XFILL_4_BUFX2_insert44 gnd vdd FILL
XFILL_4_BUFX2_insert45 gnd vdd FILL
XFILL184350x58650 gnd vdd FILL
XFILL_4_BUFX2_insert46 gnd vdd FILL
XFILL_4_BUFX2_insert47 gnd vdd FILL
XFILL_4_BUFX2_insert48 gnd vdd FILL
XFILL_1__1999_ gnd vdd FILL
XFILL_4_BUFX2_insert49 gnd vdd FILL
XFILL_7__2966_ gnd vdd FILL
XFILL_7__2546_ gnd vdd FILL
XFILL_7__2126_ gnd vdd FILL
XFILL_1__2940_ gnd vdd FILL
XFILL_1__2520_ gnd vdd FILL
XFILL_1__2100_ gnd vdd FILL
XFILL_3__2866_ gnd vdd FILL
XFILL_3__2446_ gnd vdd FILL
XFILL_3__2026_ gnd vdd FILL
XFILL_9__3413_ gnd vdd FILL
XFILL_8__1830_ gnd vdd FILL
XFILL_4__1730_ gnd vdd FILL
X_2795_ _140_ _1129__bF$buf1 _504_ _23_ vdd gnd OAI21X1
X_2375_ _1182_ _134_ store _135_ vdd gnd OAI21X1
XFILL_8__2615_ gnd vdd FILL
XFILL_4__2935_ gnd vdd FILL
XFILL_4__2515_ gnd vdd FILL
XFILL_7__3084_ gnd vdd FILL
XFILL_0__2835_ gnd vdd FILL
XFILL_0__2415_ gnd vdd FILL
XFILL_7__1817_ gnd vdd FILL
XFILL_3__1717_ gnd vdd FILL
XFILL_6__2194_ gnd vdd FILL
XFILL_2__2186_ gnd vdd FILL
XFILL_8__3153_ gnd vdd FILL
XFILL_7__1990_ gnd vdd FILL
XFILL_4__3473_ gnd vdd FILL
XFILL_4__3053_ gnd vdd FILL
XFILL_6__3399_ gnd vdd FILL
XFILL_3__1890_ gnd vdd FILL
XFILL_0__3373_ gnd vdd FILL
XFILL_7__2775_ gnd vdd FILL
XFILL_7__2355_ gnd vdd FILL
XFILL_3__2675_ gnd vdd FILL
XFILL_3__2255_ gnd vdd FILL
XFILL_5__3542_ gnd vdd FILL
XFILL_5__3122_ gnd vdd FILL
XFILL_1__3534_ gnd vdd FILL
XFILL_1__3114_ gnd vdd FILL
XFILL_6__1885_ gnd vdd FILL
X_2184_ _1312_ _1313_ _1318_ _1319_ vdd gnd NAND3X1
XFILL_2__1877_ gnd vdd FILL
XFILL_8__2844_ gnd vdd FILL
XFILL_8__2424_ gnd vdd FILL
XFILL_8__2004_ gnd vdd FILL
XFILL_4__2744_ gnd vdd FILL
XFILL_4__2324_ gnd vdd FILL
X_3389_ _1659_ _1663_ _1662_ _1664_ vdd gnd AOI21X1
XFILL_0__2644_ gnd vdd FILL
XFILL_0__2224_ gnd vdd FILL
XFILL_8__3209_ gnd vdd FILL
XFILL_2__3603_ gnd vdd FILL
XFILL_4__3529_ gnd vdd FILL
XFILL_4__3109_ gnd vdd FILL
XFILL_3__1946_ gnd vdd FILL
XFILL_0__3429_ gnd vdd FILL
XFILL_0__3009_ gnd vdd FILL
XFILL_6_CLKBUF1_insert28 gnd vdd FILL
XFILL_6_CLKBUF1_insert29 gnd vdd FILL
XFILL_5__2813_ gnd vdd FILL
XFILL_8__3382_ gnd vdd FILL
XFILL_1__2805_ gnd vdd FILL
X_1875_ _1006_ src_reg[0] _1019_ vdd gnd OR2X2
XFILL_0__3182_ gnd vdd FILL
XFILL_7__2584_ gnd vdd FILL
XFILL_7__2164_ gnd vdd FILL
XFILL_0__1915_ gnd vdd FILL
X_3601_ _1686_[6] DO[6] vdd gnd BUFX2
XFILL_3__2484_ gnd vdd FILL
XFILL_3__2064_ gnd vdd FILL
XFILL_7__3369_ gnd vdd FILL
XFILL_6__1694_ gnd vdd FILL
XFILL_8__2653_ gnd vdd FILL
XFILL_8__2233_ gnd vdd FILL
XFILL_4__2973_ gnd vdd FILL
XFILL_4__2553_ gnd vdd FILL
XFILL_4__2133_ gnd vdd FILL
XFILL_6__2899_ gnd vdd FILL
XFILL_6__2479_ gnd vdd FILL
XFILL_6__2059_ gnd vdd FILL
X_3198_ _802_ _829_ _830_ vdd gnd NOR2X1
XFILL_0__2873_ gnd vdd FILL
XFILL_0__2453_ gnd vdd FILL
XFILL_0__2033_ gnd vdd FILL
XFILL_6__3420_ gnd vdd FILL
XFILL_8__3438_ gnd vdd FILL
XFILL_8__3018_ gnd vdd FILL
XFILL_6__3000_ gnd vdd FILL
XFILL_2__3412_ gnd vdd FILL
XFILL_7__1855_ gnd vdd FILL
XFILL_3__1755_ gnd vdd FILL
XFILL_5__2622_ gnd vdd FILL
XFILL_5__2202_ gnd vdd FILL
XFILL184650x97650 gnd vdd FILL
XFILL_8__3191_ gnd vdd FILL
XFILL_1__2614_ gnd vdd FILL
XFILL_4__3091_ gnd vdd FILL
XFILL_8__1924_ gnd vdd FILL
XFILL_5__3407_ gnd vdd FILL
XFILL_4__1824_ gnd vdd FILL
X_2889_ _1154_ _1161_ _1145_ _577_ vdd gnd OAI21X1
X_2469_ _218_ _1685_[1] vdd gnd INVX1
X_2049_ _1184_ _1185_ vdd gnd INVX1
XFILL_7__2393_ gnd vdd FILL
XFILL_0__1724_ gnd vdd FILL
XFILL_8__2709_ gnd vdd FILL
X_3410_ alu_op[3] BI[5] _1675_ _1684_ vdd gnd OAI21X1
XFILL_3__2293_ gnd vdd FILL
XFILL_4__2609_ gnd vdd FILL
XFILL184650x11850 gnd vdd FILL
XFILL_7__3598_ gnd vdd FILL
XFILL_5__3580_ gnd vdd FILL
XFILL_5__3160_ gnd vdd FILL
XFILL_7__3178_ gnd vdd FILL
XFILL_0__2929_ gnd vdd FILL
XFILL_0__2509_ gnd vdd FILL
XFILL_1__3152_ gnd vdd FILL
XFILL_3__3498_ gnd vdd FILL
XFILL_3__3078_ gnd vdd FILL
XFILL_8__2882_ gnd vdd FILL
XFILL_8__2462_ gnd vdd FILL
XFILL_8__2042_ gnd vdd FILL
XFILL_4__2782_ gnd vdd FILL
XFILL_4__2362_ gnd vdd FILL
XFILL_6__2288_ gnd vdd FILL
XFILL_0__2682_ gnd vdd FILL
XFILL_0__2262_ gnd vdd FILL
XFILL_2__3221_ gnd vdd FILL
XFILL_4__3147_ gnd vdd FILL
XFILL_3__1984_ gnd vdd FILL
XFILL_0__3467_ gnd vdd FILL
XFILL_0__3047_ gnd vdd FILL
XFILL_5__2851_ gnd vdd FILL
XFILL_7__2869_ gnd vdd FILL
XFILL_7__2449_ gnd vdd FILL
XFILL_5__2431_ gnd vdd FILL
XFILL_5__2011_ gnd vdd FILL
XFILL_7__2029_ gnd vdd FILL
XFILL_1__2843_ gnd vdd FILL
XFILL_1__2423_ gnd vdd FILL
XFILL_1__2003_ gnd vdd FILL
XFILL_3__2769_ gnd vdd FILL
XFILL_3__2349_ gnd vdd FILL
XFILL_8__1733_ gnd vdd FILL
XFILL_5__3216_ gnd vdd FILL
XFILL_1__3208_ gnd vdd FILL
XFILL_6__1979_ gnd vdd FILL
X_2698_ _398_ _420_ vdd gnd INVX1
X_2278_ RDY_bF$buf3 _1186_ _1411_ _1412_ vdd gnd OAI21X1
XFILL_0__1953_ gnd vdd FILL
XFILL_6__2920_ gnd vdd FILL
XFILL_8__2938_ gnd vdd FILL
XFILL_6__2500_ gnd vdd FILL
XFILL_8__2518_ gnd vdd FILL
XFILL_2__2912_ gnd vdd FILL
XFILL_4__2838_ gnd vdd FILL
XFILL_4__2418_ gnd vdd FILL
XFILL_0__2738_ gnd vdd FILL
XFILL_0__2318_ gnd vdd FILL
XFILL_1__3381_ gnd vdd FILL
XFILL_5__1702_ gnd vdd FILL
XFILL_8__2691_ gnd vdd FILL
XFILL_8__2271_ gnd vdd FILL
XFILL_4__2591_ gnd vdd FILL
XFILL_4__2171_ gnd vdd FILL
XFILL_6__2097_ gnd vdd FILL
XFILL_5__2907_ gnd vdd FILL
XFILL_0__2491_ gnd vdd FILL
XFILL_8__3476_ gnd vdd FILL
XFILL_0__2071_ gnd vdd FILL
XFILL_2__2089_ gnd vdd FILL
XFILL_8__3056_ gnd vdd FILL
XFILL_2__3450_ gnd vdd FILL
X_1969_ _1106_ _1107_ vdd gnd INVX1
XFILL_2__3030_ gnd vdd FILL
XFILL_7__1893_ gnd vdd FILL
XFILL_4__3376_ gnd vdd FILL
X_2910_ _1149_ _1297_ _520_ _595_ vdd gnd NAND3X1
XFILL_3__1793_ gnd vdd FILL
XFILL_9__2340_ gnd vdd FILL
XFILL_5__2660_ gnd vdd FILL
XFILL_7__2678_ gnd vdd FILL
XFILL_7__2258_ gnd vdd FILL
XFILL_5__2240_ gnd vdd FILL
XFILL_1__2652_ gnd vdd FILL
XFILL_1__2232_ gnd vdd FILL
XFILL_3__2998_ gnd vdd FILL
XFILL_3__2578_ gnd vdd FILL
XFILL_3__2158_ gnd vdd FILL
XFILL_8__1962_ gnd vdd FILL
XFILL_5__3445_ gnd vdd FILL
XFILL_5__3025_ gnd vdd FILL
XFILL_1__3437_ gnd vdd FILL
XFILL_1__3017_ gnd vdd FILL
XFILL_4__1862_ gnd vdd FILL
XFILL_6__1788_ gnd vdd FILL
X_2087_ _853__bF$buf6 _943_ _1222_ _1223_ vdd gnd AOI21X1
XFILL_0__1762_ gnd vdd FILL
XFILL_8__2747_ gnd vdd FILL
XFILL_8__2327_ gnd vdd FILL
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
XFILL_7__1949_ gnd vdd FILL
XFILL_8__2080_ gnd vdd FILL
XFILL_1__1923_ gnd vdd FILL
XFILL_3__1849_ gnd vdd FILL
XFILL_5__2716_ gnd vdd FILL
XFILL_1__2708_ gnd vdd FILL
X_1778_ _904_ _930_ CI vdd gnd OR2X2
XFILL_4__3185_ gnd vdd FILL
XFILL_0__3085_ gnd vdd FILL
XFILL_4__1918_ gnd vdd FILL
XFILL_7__2487_ gnd vdd FILL
XFILL_7__2067_ gnd vdd FILL
XFILL_0__1818_ gnd vdd FILL
X_3504_ _1660_ alu_op[2] _1506_ _1590_ vdd gnd OAI21X1
XFILL_1__2881_ gnd vdd FILL
XFILL_1__2461_ gnd vdd FILL
XFILL_1__2041_ gnd vdd FILL
XFILL_3__2387_ gnd vdd FILL
XFILL_8__1771_ gnd vdd FILL
XFILL_0__1991_ gnd vdd FILL
XFILL_8__2976_ gnd vdd FILL
XFILL_8__2556_ gnd vdd FILL
XFILL_8__2136_ gnd vdd FILL
XFILL_2__2950_ gnd vdd FILL
XFILL_2__2530_ gnd vdd FILL
XFILL_2__2110_ gnd vdd FILL
XFILL_4__2876_ gnd vdd FILL
XFILL_4__2456_ gnd vdd FILL
XFILL_4__2036_ gnd vdd FILL
XFILL_0__2776_ gnd vdd FILL
XFILL_0__2356_ gnd vdd FILL
XFILL_9__1840_ gnd vdd FILL
XFILL_7__1758_ gnd vdd FILL
XFILL_5__1740_ gnd vdd FILL
XFILL_1__1732_ gnd vdd FILL
XFILL_5__2945_ gnd vdd FILL
XFILL_5__2525_ gnd vdd FILL
XFILL_5__2105_ gnd vdd FILL
XFILL_8__3094_ gnd vdd FILL
XFILL_1__2937_ gnd vdd FILL
XFILL_1__2517_ gnd vdd FILL
XFILL_8__1827_ gnd vdd FILL
XFILL_2__1801_ gnd vdd FILL
XFILL_4__1727_ gnd vdd FILL
XFILL_7__2296_ gnd vdd FILL
X_3313_ _67_ vdd _1__bF$buf10 clk_bF$buf5 C vdd 
+ gnd
+ DFFSR
XFILL_1__2690_ gnd vdd FILL
XFILL_1__2270_ gnd vdd FILL
XFILL_3__2196_ gnd vdd FILL
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
XFILL_8__2785_ gnd vdd FILL
XFILL_5_CLKBUF1_insert36 gnd vdd FILL
XFILL_5_CLKBUF1_insert37 gnd vdd FILL
XFILL_8__2365_ gnd vdd FILL
XFILL_5_CLKBUF1_insert38 gnd vdd FILL
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
XFILL_1__2326_ gnd vdd FILL
XFILL_5__3539_ gnd vdd FILL
XFILL_5__3119_ gnd vdd FILL
XFILL_4__1956_ gnd vdd FILL
XFILL_0__1856_ gnd vdd FILL
XFILL_6__2823_ gnd vdd FILL
X_3542_ ADD[0] _1649__bF$buf2 _1626_ vdd gnd NAND2X1
XFILL_6__2403_ gnd vdd FILL
X_3122_ _732_ _757_ _764_ _90_ vdd gnd OAI21X1
XFILL_2__2815_ gnd vdd FILL
XFILL_9_BUFX2_insert68 gnd vdd FILL
XFILL_8__2594_ gnd vdd FILL
XFILL_8__2174_ gnd vdd FILL
XFILL_4__2494_ gnd vdd FILL
XFILL_4__2074_ gnd vdd FILL
XFILL_0__2394_ gnd vdd FILL
XFILL_8__3379_ gnd vdd FILL
XFILL_7__1796_ gnd vdd FILL
X_2813_ _515_ _1129__bF$buf1 _506_ _517_ _28_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1770_ gnd vdd FILL
XFILL_3__1696_ gnd vdd FILL
XFILL_0__3599_ gnd vdd FILL
XFILL_0__3179_ gnd vdd FILL
XFILL_5__2983_ gnd vdd FILL
XFILL_5__2563_ gnd vdd FILL
XFILL_5__2143_ gnd vdd FILL
XFILL_1__2975_ gnd vdd FILL
XFILL_1__2555_ gnd vdd FILL
XFILL_7__3522_ gnd vdd FILL
XFILL_1__2135_ gnd vdd FILL
XFILL_7__3102_ gnd vdd FILL
XFILL_3__3422_ gnd vdd FILL
XFILL_3__3002_ gnd vdd FILL
XFILL_8__1865_ gnd vdd FILL
XFILL_4__1765_ gnd vdd FILL
XFILL_6__2632_ gnd vdd FILL
XFILL_6__2212_ gnd vdd FILL
X_3351_ _104_ vdd _1__bF$buf8 clk_bF$buf2 ABL[3] vdd 
+ gnd
+ DFFSR
XFILL_2__2624_ gnd vdd FILL
XFILL_2__2204_ gnd vdd FILL
XFILL_6__3417_ gnd vdd FILL
XFILL_1__3093_ gnd vdd FILL
XFILL_2__3409_ gnd vdd FILL
XFILL_5__1834_ gnd vdd FILL
XFILL_1__1826_ gnd vdd FILL
XFILL_5__2619_ gnd vdd FILL
XFILL_6__3590_ gnd vdd FILL
XFILL_8__3188_ gnd vdd FILL
XFILL_6__3170_ gnd vdd FILL
XFILL_2__3582_ gnd vdd FILL
XFILL_2__3162_ gnd vdd FILL
XFILL_4__3088_ gnd vdd FILL
XFILL_6__1903_ gnd vdd FILL
X_2622_ PC[2] _853__bF$buf5 _351_ vdd gnd NAND2X1
X_2202_ cond_code[2] _1336_ _1337_ vdd gnd NOR2X1
XFILL_5__2792_ gnd vdd FILL
XFILL_5__2372_ gnd vdd FILL
X_3407_ _1651_ BI[5] _1680_ _1652_ _1681_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2784_ gnd vdd FILL
XFILL_1__2364_ gnd vdd FILL
XFILL_3__3231_ gnd vdd FILL
XFILL_5__3157_ gnd vdd FILL
XFILL_1__3149_ gnd vdd FILL
XFILL_4__1994_ gnd vdd FILL
XFILL_0__1894_ gnd vdd FILL
XFILL_6__2861_ gnd vdd FILL
XFILL_8__2879_ gnd vdd FILL
XFILL_8__2459_ gnd vdd FILL
X_3580_ _1685_[1] AB[1] vdd gnd BUFX2
XFILL_6__2441_ gnd vdd FILL
XFILL_8__2039_ gnd vdd FILL
XFILL_6__2021_ gnd vdd FILL
X_3160_ _886__bF$buf2 _926__bF$buf0 _900_ _792_ vdd gnd OAI21X1
XFILL_2__2853_ gnd vdd FILL
XFILL_2__2433_ gnd vdd FILL
XFILL_2__2013_ gnd vdd FILL
XFILL_8__3400_ gnd vdd FILL
XFILL_4__2779_ gnd vdd FILL
XFILL_4__2359_ gnd vdd FILL
XFILL_0__2679_ gnd vdd FILL
XFILL_0__2259_ gnd vdd FILL
XFILL_6__3226_ gnd vdd FILL
XFILL_0__3200_ gnd vdd FILL
XFILL_2__3218_ gnd vdd FILL
XFILL_7__2602_ gnd vdd FILL
XFILL_3__2922_ gnd vdd FILL
XFILL_3__2502_ gnd vdd FILL
XFILL_5__2848_ gnd vdd FILL
XFILL_5__2428_ gnd vdd FILL
XFILL_5__2008_ gnd vdd FILL
XFILL_2__3391_ gnd vdd FILL
X_2851_ _512_ _550_ vdd gnd INVX1
XFILL_6__1712_ gnd vdd FILL
X_2431_ _180_ _181_ _182_ vdd gnd OR2X2
X_2011_ IRHOLD_valid_bF$buf1 _855_ _1146_ _1147_ vdd gnd OAI21X1
XFILL_9__2281_ gnd vdd FILL
XFILL_2__1704_ gnd vdd FILL
XFILL_5__2181_ gnd vdd FILL
XFILL_7__2199_ gnd vdd FILL
XFILL_6__2917_ gnd vdd FILL
X_3216_ _261_ _266_ _830__bF$buf3 _840_ vdd gnd OAI21X1
XFILL_1__2593_ gnd vdd FILL
XFILL_7__3560_ gnd vdd FILL
XFILL_1__2173_ gnd vdd FILL
XFILL_7__3140_ gnd vdd FILL
XFILL_3__2099_ gnd vdd FILL
XFILL_2__2909_ gnd vdd FILL
XFILL_3__3460_ gnd vdd FILL
XFILL_3__3040_ gnd vdd FILL
XFILL_5__3386_ gnd vdd FILL
XFILL_1__3378_ gnd vdd FILL
XFILL_6__2670_ gnd vdd FILL
XFILL_8__2688_ gnd vdd FILL
XFILL_6__2250_ gnd vdd FILL
XFILL_8__2268_ gnd vdd FILL
XFILL_2__2662_ gnd vdd FILL
XFILL_2__2242_ gnd vdd FILL
XFILL_4__2588_ gnd vdd FILL
XFILL_4__2168_ gnd vdd FILL
X_1702_ _853__bF$buf4 DI[4] _858_ _859_ vdd gnd OAI21X1
XFILL_9__1972_ gnd vdd FILL
XFILL_0__2488_ gnd vdd FILL
XFILL_6__3455_ gnd vdd FILL
XFILL_0__2068_ gnd vdd FILL
XFILL_6__3035_ gnd vdd FILL
XFILL_2__3447_ gnd vdd FILL
XFILL_2__3027_ gnd vdd FILL
XFILL_5__1872_ gnd vdd FILL
XFILL184650x85950 gnd vdd FILL
X_2907_ _1219__bF$buf0 _591_ _592_ _47_ vdd gnd OAI21X1
XFILL_1__1864_ gnd vdd FILL
XFILL_7__2831_ gnd vdd FILL
XFILL_7__2411_ gnd vdd FILL
XFILL182250x148350 gnd vdd FILL
XFILL_3__2731_ gnd vdd FILL
XFILL_3__2311_ gnd vdd FILL
XFILL_5__2657_ gnd vdd FILL
XFILL_5__2237_ gnd vdd FILL
XFILL_1__2649_ gnd vdd FILL
XFILL_1__2229_ gnd vdd FILL
XFILL_3__3516_ gnd vdd FILL
XFILL_6__1941_ gnd vdd FILL
XFILL_8__1959_ gnd vdd FILL
X_2660_ _383_ _367_ _385_ vdd gnd NOR2X1
X_2240_ RDY_bF$buf3 _1029_ _1373_ _1374_ vdd gnd OAI21X1
XFILL_9__2090_ gnd vdd FILL
XFILL_2__1933_ gnd vdd FILL
XFILL_8__2900_ gnd vdd FILL
XFILL_4__1859_ gnd vdd FILL
XFILL_4__2800_ gnd vdd FILL
XFILL_0__1759_ gnd vdd FILL
XFILL_6__2726_ gnd vdd FILL
XFILL_6__2306_ gnd vdd FILL
X_3445_ _1651_ BI[1] _1530_ _1652_ _1531_ vdd 
+ gnd
+ AOI22X1
X_3025_ _979_ _688_ _689_ vdd gnd NOR2X1
XFILL_0__2700_ gnd vdd FILL
XFILL_2__2718_ gnd vdd FILL
XFILL_5__3195_ gnd vdd FILL
XFILL_1__3187_ gnd vdd FILL
XFILL_5__1928_ gnd vdd FILL
XFILL_8__2497_ gnd vdd FILL
XFILL_8__2077_ gnd vdd FILL
XFILL_2__2891_ gnd vdd FILL
XFILL_2__2471_ gnd vdd FILL
XFILL_2__2051_ gnd vdd FILL
XFILL_4__2397_ gnd vdd FILL
X_1931_ _1070_ _1072_ _1071_ _1073_ vdd gnd NAND3X1
XFILL_0__2297_ gnd vdd FILL
XFILL_9__1781_ gnd vdd FILL
XFILL182250x35250 gnd vdd FILL
XFILL_7__1699_ gnd vdd FILL
X_2716_ ADD[2] _437_ vdd gnd INVX1
XFILL_7__2640_ gnd vdd FILL
XFILL_7__2220_ gnd vdd FILL
XFILL_3__2960_ gnd vdd FILL
XFILL_3__2540_ gnd vdd FILL
XFILL_3__2120_ gnd vdd FILL
XFILL_5__2886_ gnd vdd FILL
XFILL_5__2466_ gnd vdd FILL
XFILL_5__2046_ gnd vdd FILL
XFILL_1__2878_ gnd vdd FILL
XFILL_1__2458_ gnd vdd FILL
XFILL_1__2038_ gnd vdd FILL
XFILL_7__3425_ gnd vdd FILL
XFILL_7__3005_ gnd vdd FILL
XFILL_8__1768_ gnd vdd FILL
XFILL_6__1750_ gnd vdd FILL
XFILL_2__1742_ gnd vdd FILL
XFILL_0__1988_ gnd vdd FILL
XFILL_6__2955_ gnd vdd FILL
XFILL_6__2535_ gnd vdd FILL
XFILL_6__2115_ gnd vdd FILL
X_3254_ _17_ vdd _1__bF$buf0 clk_bF$buf7 PC[15] vdd 
+ gnd
+ DFFSR
XFILL_2__2947_ gnd vdd FILL
XFILL_2__2527_ gnd vdd FILL
XFILL_2__2107_ gnd vdd FILL
XFILL_7__1911_ gnd vdd FILL
XFILL_3__1811_ gnd vdd FILL
XFILL_5__1737_ gnd vdd FILL
XFILL_1__1729_ gnd vdd FILL
XFILL_2__2280_ gnd vdd FILL
X_1740_ _889_ _892_ _893_ vdd gnd NOR2X1
XFILL_6__3493_ gnd vdd FILL
XFILL_6__3073_ gnd vdd FILL
XFILL_0_BUFX2_insert60 gnd vdd FILL
XFILL_0_BUFX2_insert61 gnd vdd FILL
XFILL_2__3485_ gnd vdd FILL
XFILL_0_BUFX2_insert62 gnd vdd FILL
XFILL_2__3065_ gnd vdd FILL
XFILL_0_BUFX2_insert63 gnd vdd FILL
XFILL_0_BUFX2_insert64 gnd vdd FILL
XFILL_0_BUFX2_insert65 gnd vdd FILL
XFILL_0_BUFX2_insert66 gnd vdd FILL
XFILL_0_BUFX2_insert67 gnd vdd FILL
XFILL_0_BUFX2_insert68 gnd vdd FILL
XFILL_0_BUFX2_insert69 gnd vdd FILL
X_2945_ reset _618_ IRHOLD[2] _623_ vdd gnd OAI21X1
XFILL_6__1806_ gnd vdd FILL
X_2525_ PC[9] _267_ vdd gnd INVX1
X_2105_ RDY_bF$buf7 _1240_ _1241_ vdd gnd NAND2X1
XFILL_5__2695_ gnd vdd FILL
XFILL_5__2275_ gnd vdd FILL
XFILL_1__2687_ gnd vdd FILL
XFILL_1__2267_ gnd vdd FILL
XFILL_3__3554_ gnd vdd FILL
XFILL_3__3134_ gnd vdd FILL
XFILL_8__1997_ gnd vdd FILL
XFILL_2__1971_ gnd vdd FILL
XFILL_4__1897_ gnd vdd FILL
XFILL_0__1797_ gnd vdd FILL
XFILL_6__2764_ gnd vdd FILL
X_3483_ _1568_ _1519_ _1569_ vdd gnd XOR2X1
XFILL_6__2344_ gnd vdd FILL
X_3063_ _917_ _949_ _285_ _723_ vdd gnd OAI21X1
XFILL_2__2756_ gnd vdd FILL
XFILL_2__2336_ gnd vdd FILL
XFILL_7__1720_ gnd vdd FILL
XFILL_4__3203_ gnd vdd FILL
XFILL_6__3549_ gnd vdd FILL
XFILL_6__3129_ gnd vdd FILL
XFILL_0__3523_ gnd vdd FILL
XFILL_0__3103_ gnd vdd FILL
XFILL_5__1966_ gnd vdd FILL
XFILL_1__1958_ gnd vdd FILL
XFILL_7__2925_ gnd vdd FILL
XFILL_7__2505_ gnd vdd FILL
XFILL_3__2825_ gnd vdd FILL
XFILL_3__2405_ gnd vdd FILL
X_2754_ _853__bF$buf5 _471_ _463_ _15_ vdd gnd OAI21X1
X_2334_ _1461_ _1465_ _1466_ vdd gnd NOR2X1
XFILL_5__2084_ gnd vdd FILL
X_3539_ _1666_ _1649__bF$buf3 _1624_ _1608_ _1486_ vdd 
+ gnd
+ AOI22X1
X_3119_ _691__bF$buf0 _758_ _AXYS[2]_[4] _763_ vdd gnd OAI21X1
XFILL_1__2496_ gnd vdd FILL
XFILL_7__3463_ gnd vdd FILL
XFILL_1__2076_ gnd vdd FILL
XFILL_7__3043_ gnd vdd FILL
XFILL_2__1780_ gnd vdd FILL
XFILL_6__2993_ gnd vdd FILL
XFILL_6__2573_ gnd vdd FILL
X_3292_ DIMUX[2] vdd _1__bF$buf5 clk_bF$buf9 DIHOLD[2] vdd 
+ gnd
+ DFFSR
XFILL_6__2153_ gnd vdd FILL
XFILL_2__2985_ gnd vdd FILL
XFILL_2__2565_ gnd vdd FILL
XFILL_8__3532_ gnd vdd FILL
XFILL_2__2145_ gnd vdd FILL
XFILL_8__3112_ gnd vdd FILL
XFILL_4__3432_ gnd vdd FILL
XFILL_4__3012_ gnd vdd FILL
XFILL_5__1775_ gnd vdd FILL
XFILL182550x74250 gnd vdd FILL
XFILL_1__1767_ gnd vdd FILL
XFILL_7__2734_ gnd vdd FILL
XFILL_7__2314_ gnd vdd FILL
XFILL_3__2634_ gnd vdd FILL
XFILL_3__2214_ gnd vdd FILL
XFILL_5__3501_ gnd vdd FILL
XFILL_7__3519_ gnd vdd FILL
XFILL_3__3419_ gnd vdd FILL
X_2983_ _1260_ _652_ vdd gnd INVX1
XFILL_6__1844_ gnd vdd FILL
X_2563_ _200_ ADD[6] _1109_ _300_ vdd gnd AOI21X1
X_2143_ RDY_bF$buf0 _1277_ _1278_ _1279_ vdd gnd OAI21X1
XFILL_2__1836_ gnd vdd FILL
XFILL_8__2803_ gnd vdd FILL
XFILL_4__2703_ gnd vdd FILL
XFILL_6__2629_ gnd vdd FILL
XFILL_6__2209_ gnd vdd FILL
X_3348_ _101_ vdd _1__bF$buf8 clk_bF$buf8 ABL[0] vdd 
+ gnd
+ DFFSR
XFILL_0__2603_ gnd vdd FILL
XFILL_3__3592_ gnd vdd FILL
XFILL_3__3172_ gnd vdd FILL
XFILL_5__3098_ gnd vdd FILL
XFILL_3__1905_ gnd vdd FILL
XFILL_6__2382_ gnd vdd FILL
XFILL_2__2794_ gnd vdd FILL
XFILL_2__2374_ gnd vdd FILL
X_1834_ _869__bF$buf1 _906_ _978_ vdd gnd NAND2X1
XFILL_6__3587_ gnd vdd FILL
XFILL_6__3167_ gnd vdd FILL
XFILL_0__3561_ gnd vdd FILL
XFILL_2__3579_ gnd vdd FILL
XFILL_0__3141_ gnd vdd FILL
XFILL_2__3159_ gnd vdd FILL
XFILL_4_BUFX2_insert10 gnd vdd FILL
XFILL_4_BUFX2_insert11 gnd vdd FILL
XFILL_4_BUFX2_insert12 gnd vdd FILL
XFILL_4_BUFX2_insert13 gnd vdd FILL
XFILL_4_BUFX2_insert14 gnd vdd FILL
XFILL_4_BUFX2_insert15 gnd vdd FILL
XFILL_4_BUFX2_insert16 gnd vdd FILL
XFILL_4_BUFX2_insert17 gnd vdd FILL
X_2619_ _347_ _340_ _349_ vdd gnd NAND2X1
XFILL_4_BUFX2_insert18 gnd vdd FILL
XFILL_1__1996_ gnd vdd FILL
XFILL_7__2963_ gnd vdd FILL
XFILL_4_BUFX2_insert19 gnd vdd FILL
XFILL_7__2543_ gnd vdd FILL
XFILL_7__2123_ gnd vdd FILL
XFILL_3__2863_ gnd vdd FILL
XFILL_3__2443_ gnd vdd FILL
XFILL_3__2023_ gnd vdd FILL
XFILL_5__2789_ gnd vdd FILL
XFILL_5__2369_ gnd vdd FILL
XBUFX2_insert70 _918_ _918__bF$buf2 vdd gnd BUFX2
XBUFX2_insert71 _918_ _918__bF$buf1 vdd gnd BUFX2
XBUFX2_insert72 _918_ _918__bF$buf0 vdd gnd BUFX2
XBUFX2_insert73 _853_ _853__bF$buf7 vdd gnd BUFX2
XBUFX2_insert74 _853_ _853__bF$buf6 vdd gnd BUFX2
XBUFX2_insert75 _853_ _853__bF$buf5 vdd gnd BUFX2
XBUFX2_insert76 _853_ _853__bF$buf4 vdd gnd BUFX2
XBUFX2_insert77 _853_ _853__bF$buf3 vdd gnd BUFX2
XBUFX2_insert78 _853_ _853__bF$buf2 vdd gnd BUFX2
XBUFX2_insert79 _853_ _853__bF$buf1 vdd gnd BUFX2
XFILL_3__3228_ gnd vdd FILL
X_2792_ _502_ _1129__bF$buf1 _1299_ _1324_ _22_ vdd 
+ gnd
+ OAI22X1
X_2372_ _132_ _120_ alu_op[3] vdd gnd NOR2X1
XFILL_8__2612_ gnd vdd FILL
XFILL_4__2932_ gnd vdd FILL
XFILL_4__2512_ gnd vdd FILL
XFILL_6__2858_ gnd vdd FILL
X_3577_ _1495_ vdd _1484_ clk_bF$buf0 AN vdd 
+ gnd
+ DFFSR
XFILL_6__2438_ gnd vdd FILL
XFILL_6__2018_ gnd vdd FILL
X_3157_ _869__bF$buf0 _906_ _1044_ _789_ vdd gnd AOI21X1
XFILL_7__3081_ gnd vdd FILL
XFILL_0__2832_ gnd vdd FILL
XFILL_0__2412_ gnd vdd FILL
XFILL_7__1814_ gnd vdd FILL
XFILL_3__1714_ gnd vdd FILL
XFILL_6__2191_ gnd vdd FILL
XFILL_2__2183_ gnd vdd FILL
XFILL_8__3150_ gnd vdd FILL
XFILL_3__2919_ gnd vdd FILL
XFILL_4__3470_ gnd vdd FILL
XFILL_4__3050_ gnd vdd FILL
XFILL_6__3396_ gnd vdd FILL
XFILL_2__3388_ gnd vdd FILL
XFILL_0__3370_ gnd vdd FILL
X_2848_ _1168_ _1323_ _547_ vdd gnd NAND2X1
XFILL_6__1709_ gnd vdd FILL
X_2428_ _176_ _179_ _175_ _1686_[7] vdd gnd NAND3X1
X_2008_ _1131_ _1132_ _1144_ vdd gnd NAND2X1
XFILL_7__2772_ gnd vdd FILL
XFILL_7__2352_ gnd vdd FILL
XFILL_3__2672_ gnd vdd FILL
XFILL_3__2252_ gnd vdd FILL
XFILL_5__2598_ gnd vdd FILL
XFILL_5__2178_ gnd vdd FILL
XFILL_7__3557_ gnd vdd FILL
XFILL_7__3137_ gnd vdd FILL
XFILL_1__3531_ gnd vdd FILL
XFILL_1__3111_ gnd vdd FILL
XFILL_3__3457_ gnd vdd FILL
XFILL_3__3037_ gnd vdd FILL
XFILL_6__1882_ gnd vdd FILL
X_2181_ _1139_ _1315_ _1316_ vdd gnd NOR2X1
XFILL_2__1874_ gnd vdd FILL
XFILL_8__2841_ gnd vdd FILL
XFILL_8__2421_ gnd vdd FILL
XFILL_8__2001_ gnd vdd FILL
XFILL_4__2741_ gnd vdd FILL
XFILL_4__2321_ gnd vdd FILL
XFILL_6__2667_ gnd vdd FILL
X_3386_ alu_op[2] BI[7] _1660_ _1661_ vdd gnd OAI21X1
XFILL_6__2247_ gnd vdd FILL
XFILL_2__2659_ gnd vdd FILL
XFILL_0__2641_ gnd vdd FILL
XFILL_2__2239_ gnd vdd FILL
XFILL_0__2221_ gnd vdd FILL
XFILL_8__3206_ gnd vdd FILL
XFILL_2__3600_ gnd vdd FILL
XFILL_4__3526_ gnd vdd FILL
XFILL_4__3106_ gnd vdd FILL
XFILL_3__1943_ gnd vdd FILL
XFILL_0__3426_ gnd vdd FILL
XFILL_0__3006_ gnd vdd FILL
XFILL_5__1869_ gnd vdd FILL
XFILL_7__2828_ gnd vdd FILL
XFILL_5__2810_ gnd vdd FILL
XFILL_7__2408_ gnd vdd FILL
XFILL_1__2802_ gnd vdd FILL
XFILL_3__2728_ gnd vdd FILL
XFILL_3__2308_ gnd vdd FILL
X_1872_ _1014_ _1006_ _1015_ _1016_ vdd gnd OAI21X1
XFILL_2__3197_ gnd vdd FILL
XFILL_6__1938_ gnd vdd FILL
X_2657_ _382_ _383_ vdd gnd INVX1
X_2237_ _1268_ _872_ _1371_ vdd gnd NOR2X1
XFILL_7__2581_ gnd vdd FILL
XFILL_7__2161_ gnd vdd FILL
XFILL_0__1912_ gnd vdd FILL
XFILL_3__2481_ gnd vdd FILL
XFILL_3__2061_ gnd vdd FILL
XFILL_1__2399_ gnd vdd FILL
XFILL_7__3366_ gnd vdd FILL
XFILL_6__1691_ gnd vdd FILL
XFILL_8__2650_ gnd vdd FILL
XFILL_8__2230_ gnd vdd FILL
XFILL_4__2970_ gnd vdd FILL
XFILL_4__2550_ gnd vdd FILL
XFILL_4__2130_ gnd vdd FILL
XFILL_6__2896_ gnd vdd FILL
XFILL_6__2476_ gnd vdd FILL
XFILL_6__2056_ gnd vdd FILL
X_3195_ _826_ _1183_ _827_ vdd gnd AND2X2
XFILL_0__2870_ gnd vdd FILL
XFILL_2__2888_ gnd vdd FILL
XFILL_2__2468_ gnd vdd FILL
XFILL_0__2450_ gnd vdd FILL
XFILL_8__3435_ gnd vdd FILL
XFILL_0__2030_ gnd vdd FILL
XFILL_2__2048_ gnd vdd FILL
XFILL_8__3015_ gnd vdd FILL
X_1928_ _AXYS[1]_[2] _1022_ _1070_ vdd gnd NAND2X1
XFILL_7__1852_ gnd vdd FILL
XFILL_3__1752_ gnd vdd FILL
XFILL_7__2637_ gnd vdd FILL
XFILL_7__2217_ gnd vdd FILL
XFILL_1__2611_ gnd vdd FILL
XFILL_3__2957_ gnd vdd FILL
XFILL_3__2537_ gnd vdd FILL
XFILL_3__2117_ gnd vdd FILL
XFILL_8__1921_ gnd vdd FILL
XFILL_5__3404_ gnd vdd FILL
XFILL_4__1821_ gnd vdd FILL
X_2886_ _1250_ _1129__bF$buf2 _520_ _574_ _44_ vdd 
+ gnd
+ OAI22X1
XFILL_6__1747_ gnd vdd FILL
X_2466_ _214_ _215_ _216_ vdd gnd AND2X2
X_2046_ _917_ _936_ _1182_ vdd gnd NOR2X1
XFILL_7__2390_ gnd vdd FILL
XFILL_2__1739_ gnd vdd FILL
XFILL_0__1721_ gnd vdd FILL
XFILL_8__2706_ gnd vdd FILL
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
X_1737_ _867_ _889_ _890_ vdd gnd NOR2X1
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
XFILL_8__1730_ gnd vdd FILL
XFILL_5__3213_ gnd vdd FILL
XFILL_1__3205_ gnd vdd FILL
XFILL_6__1976_ gnd vdd FILL
X_2695_ _405_ _416_ _417_ _418_ vdd gnd AOI21X1
X_2275_ _853__bF$buf7 _1200_ _1409_ vdd gnd NOR2X1
XFILL_2__1968_ gnd vdd FILL
XFILL_0__1950_ gnd vdd FILL
XFILL_8__2935_ gnd vdd FILL
XFILL_8__2515_ gnd vdd FILL
XFILL_4__2835_ gnd vdd FILL
XFILL_4__2415_ gnd vdd FILL
XFILL_0__2735_ gnd vdd FILL
XFILL_0__2315_ gnd vdd FILL
XFILL_7__1717_ gnd vdd FILL
XFILL_6__2094_ gnd vdd FILL
XFILL_5__2904_ gnd vdd FILL
XFILL_8__3473_ gnd vdd FILL
XFILL_2__2086_ gnd vdd FILL
XFILL_8__3053_ gnd vdd FILL
XFILL184350x156150 gnd vdd FILL
X_1966_ _AXYS[2]_[6] _1023_ _1012_ _AXYS[3]_[6] _1104_ vdd 
+ gnd
+ AOI22X1
XFILL_7__1890_ gnd vdd FILL
XFILL_4__3373_ gnd vdd FILL
XFILL_3__1790_ gnd vdd FILL
XFILL_7__2675_ gnd vdd FILL
XFILL_7__2255_ gnd vdd FILL
XFILL_3__2995_ gnd vdd FILL
XFILL_3__2575_ gnd vdd FILL
XFILL_3__2155_ gnd vdd FILL
XFILL_5__3442_ gnd vdd FILL
XFILL_5__3022_ gnd vdd FILL
XFILL_1__3434_ gnd vdd FILL
XFILL_1__3014_ gnd vdd FILL
XFILL_6__1785_ gnd vdd FILL
X_2084_ _1168_ _1220_ vdd gnd INVX2
XFILL_5_BUFX2_insert80 gnd vdd FILL
XFILL_5_BUFX2_insert81 gnd vdd FILL
XFILL_5_BUFX2_insert82 gnd vdd FILL
XFILL_5_BUFX2_insert83 gnd vdd FILL
XFILL_5_BUFX2_insert84 gnd vdd FILL
XFILL_5_BUFX2_insert85 gnd vdd FILL
XFILL_2__1777_ gnd vdd FILL
XFILL_5_BUFX2_insert86 gnd vdd FILL
XFILL_8__2744_ gnd vdd FILL
XFILL_8__2324_ gnd vdd FILL
XFILL_5_BUFX2_insert87 gnd vdd FILL
XFILL_5_BUFX2_insert88 gnd vdd FILL
XFILL_5_BUFX2_insert89 gnd vdd FILL
XFILL_4__2644_ gnd vdd FILL
XFILL_4__2224_ gnd vdd FILL
X_3289_ _51_ vdd _1__bF$buf7 clk_bF$buf1 load_reg vdd 
+ gnd
+ DFFSR
XFILL_0__2964_ gnd vdd FILL
XFILL_0__2544_ gnd vdd FILL
XFILL_6__3511_ gnd vdd FILL
XFILL_8__3529_ gnd vdd FILL
XFILL_0__2124_ gnd vdd FILL
XFILL_8__3109_ gnd vdd FILL
XFILL_2__3503_ gnd vdd FILL
XFILL_7__1946_ gnd vdd FILL
XFILL_4__3429_ gnd vdd FILL
XFILL_4__3009_ gnd vdd FILL
XFILL_1__1920_ gnd vdd FILL
XFILL_3__1846_ gnd vdd FILL
XFILL_5__2713_ gnd vdd FILL
XFILL_1__2705_ gnd vdd FILL
X_1775_ _896_ _889_ _928_ vdd gnd NOR2X1
XFILL_4__3182_ gnd vdd FILL
XFILL_0__3082_ gnd vdd FILL
XFILL_4__1915_ gnd vdd FILL
XFILL_7__2484_ gnd vdd FILL
XFILL_7__2064_ gnd vdd FILL
XFILL_0__1815_ gnd vdd FILL
X_3501_ _1586_ _1587_ vdd gnd INVX1
XFILL_3__2384_ gnd vdd FILL
XFILL_3__3589_ gnd vdd FILL
XFILL_3__3169_ gnd vdd FILL
XFILL_8__2973_ gnd vdd FILL
XFILL_8__2553_ gnd vdd FILL
XFILL_8__2133_ gnd vdd FILL
XFILL_4__2873_ gnd vdd FILL
XFILL_4__2453_ gnd vdd FILL
XFILL_4__2033_ gnd vdd FILL
XFILL_6__2799_ gnd vdd FILL
XFILL_6__2379_ gnd vdd FILL
X_3098_ _714_ _747_ _751_ _79_ vdd gnd OAI21X1
XFILL_0__2773_ gnd vdd FILL
XFILL_0__2353_ gnd vdd FILL
XFILL_7__1755_ gnd vdd FILL
XFILL_0__3558_ gnd vdd FILL
XFILL_0__3138_ gnd vdd FILL
XFILL_5__2942_ gnd vdd FILL
XFILL_5__2522_ gnd vdd FILL
XFILL_5__2102_ gnd vdd FILL
XFILL_8__3091_ gnd vdd FILL
XFILL_1__2934_ gnd vdd FILL
XFILL_1__2514_ gnd vdd FILL
XFILL_8__1824_ gnd vdd FILL
XFILL_4__1724_ gnd vdd FILL
X_2789_ cond_code[2] _853__bF$buf7 _501_ vdd gnd NAND2X1
X_2369_ backwards _1075_ _130_ _131_ vdd gnd AOI21X1
XFILL_7__2293_ gnd vdd FILL
XFILL_8__2609_ gnd vdd FILL
X_3310_ _64_ vdd _1__bF$buf10 clk_bF$buf9 I vdd 
+ gnd
+ DFFSR
XFILL_3__2193_ gnd vdd FILL
XFILL_4__2929_ gnd vdd FILL
XFILL_4__2509_ gnd vdd FILL
XFILL_7__3498_ gnd vdd FILL
XFILL_5__3480_ gnd vdd FILL
XFILL_5__3060_ gnd vdd FILL
XFILL_7__3078_ gnd vdd FILL
XFILL_0__2829_ gnd vdd FILL
XFILL_0__2409_ gnd vdd FILL
XFILL_1__3472_ gnd vdd FILL
XFILL_1__3052_ gnd vdd FILL
XFILL_3__3398_ gnd vdd FILL
XFILL_8__2782_ gnd vdd FILL
XFILL_8__2362_ gnd vdd FILL
XFILL_4__2682_ gnd vdd FILL
XFILL_4__2262_ gnd vdd FILL
XFILL_6__2188_ gnd vdd FILL
XFILL_0__2582_ gnd vdd FILL
XFILL_0__2162_ gnd vdd FILL
XFILL_8__3147_ gnd vdd FILL
XFILL_2__3541_ gnd vdd FILL
XFILL_2__3121_ gnd vdd FILL
XFILL_7__1984_ gnd vdd FILL
XFILL_4__3467_ gnd vdd FILL
XFILL_4__3047_ gnd vdd FILL
XFILL_3__1884_ gnd vdd FILL
XFILL_0__3367_ gnd vdd FILL
XFILL_7__2769_ gnd vdd FILL
XFILL_5__2751_ gnd vdd FILL
XFILL_5__2331_ gnd vdd FILL
XFILL_7__2349_ gnd vdd FILL
XFILL_1__2743_ gnd vdd FILL
XFILL_1__2323_ gnd vdd FILL
XFILL_3__2669_ gnd vdd FILL
XFILL_3__2249_ gnd vdd FILL
XFILL_5__3536_ gnd vdd FILL
XFILL_5__3116_ gnd vdd FILL
XFILL_1__3528_ gnd vdd FILL
XFILL_1__3108_ gnd vdd FILL
XFILL_4__1953_ gnd vdd FILL
XFILL_6__1879_ gnd vdd FILL
X_2598_ _328_ _327_ _1008_ _329_ vdd gnd OAI21X1
X_2178_ _853__bF$buf3 _926__bF$buf0 _890_ _1313_ vdd gnd NAND3X1
XFILL_0__1853_ gnd vdd FILL
XFILL_6__2820_ gnd vdd FILL
XFILL_8__2838_ gnd vdd FILL
XFILL_6__2400_ gnd vdd FILL
XFILL_8__2418_ gnd vdd FILL
XFILL_2__2812_ gnd vdd FILL
XFILL_9_BUFX2_insert39 gnd vdd FILL
XFILL_4__2738_ gnd vdd FILL
XFILL_4__2318_ gnd vdd FILL
XFILL_0__2638_ gnd vdd FILL
XFILL_0__2218_ gnd vdd FILL
XFILL_8__2591_ gnd vdd FILL
XFILL_8__2171_ gnd vdd FILL
XFILL_4__2491_ gnd vdd FILL
XFILL_4__2071_ gnd vdd FILL
XFILL_5__2807_ gnd vdd FILL
XFILL_0__2391_ gnd vdd FILL
XFILL_8__3376_ gnd vdd FILL
X_1869_ _AXYS[3]_[0] _1012_ _1013_ vdd gnd NAND2X1
XFILL_7__1793_ gnd vdd FILL
X_2810_ cli _515_ vdd gnd INVX1
XFILL_0__3596_ gnd vdd FILL
XFILL_3__1693_ gnd vdd FILL
XFILL_0__3176_ gnd vdd FILL
XFILL_5__2980_ gnd vdd FILL
XFILL_7__2998_ gnd vdd FILL
XFILL_7__2578_ gnd vdd FILL
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
XFILL_8__1862_ gnd vdd FILL
XFILL_4__1762_ gnd vdd FILL
XFILL_6__1688_ gnd vdd FILL
XFILL_8__2647_ gnd vdd FILL
XFILL_8__2227_ gnd vdd FILL
XFILL_2__2621_ gnd vdd FILL
XFILL_2__2201_ gnd vdd FILL
XFILL_4__2967_ gnd vdd FILL
XFILL_4__2547_ gnd vdd FILL
XFILL_4__2127_ gnd vdd FILL
XFILL_0__2867_ gnd vdd FILL
XFILL_0__2447_ gnd vdd FILL
XFILL_0__2027_ gnd vdd FILL
XFILL_6__3414_ gnd vdd FILL
XFILL_1__3090_ gnd vdd FILL
XFILL_2__3406_ gnd vdd FILL
XFILL_5__1831_ gnd vdd FILL
XFILL_7__1849_ gnd vdd FILL
XFILL_1__1823_ gnd vdd FILL
XFILL_3__1749_ gnd vdd FILL
XFILL_5__2616_ gnd vdd FILL
XFILL_8__3185_ gnd vdd FILL
XFILL_1__2608_ gnd vdd FILL
XFILL_4__3085_ gnd vdd FILL
XFILL_8__1918_ gnd vdd FILL
XFILL_6__1900_ gnd vdd FILL
XFILL_4__1818_ gnd vdd FILL
XFILL_7__2387_ gnd vdd FILL
XFILL_0__1718_ gnd vdd FILL
X_3404_ alu_shift_right AI[6] _1678_ vdd gnd NAND2X1
XFILL_1__2781_ gnd vdd FILL
XFILL_1__2361_ gnd vdd FILL
XFILL_3__2287_ gnd vdd FILL
XFILL_5__3154_ gnd vdd FILL
XFILL_1__3566_ gnd vdd FILL
XFILL_1__3146_ gnd vdd FILL
XFILL_4__1991_ gnd vdd FILL
XFILL_0__1891_ gnd vdd FILL
XFILL_8__2876_ gnd vdd FILL
XFILL_8__2456_ gnd vdd FILL
XFILL_8__2036_ gnd vdd FILL
XFILL_2__2850_ gnd vdd FILL
XFILL_2__2430_ gnd vdd FILL
XFILL_2__2010_ gnd vdd FILL
XFILL_4__2776_ gnd vdd FILL
XFILL184350x4050 gnd vdd FILL
XFILL_4__2356_ gnd vdd FILL
XFILL_0__2676_ gnd vdd FILL
XFILL_0__2256_ gnd vdd FILL
XFILL_6__3223_ gnd vdd FILL
XFILL_2__3215_ gnd vdd FILL
XFILL_3__1978_ gnd vdd FILL
XFILL_9__2105_ gnd vdd FILL
XFILL_5__2845_ gnd vdd FILL
XFILL_5__2425_ gnd vdd FILL
XFILL_5__2005_ gnd vdd FILL
XFILL_1__2837_ gnd vdd FILL
XFILL_1__2417_ gnd vdd FILL
XFILL_8__1727_ gnd vdd FILL
XFILL_2__1701_ gnd vdd FILL
XFILL_7__2196_ gnd vdd FILL
XFILL_0__1947_ gnd vdd FILL
XFILL_6__2914_ gnd vdd FILL
X_3213_ _831_ _251_ _838_ _107_ vdd gnd OAI21X1
XFILL_1__2590_ gnd vdd FILL
XFILL_1__2170_ gnd vdd FILL
XFILL_3__2096_ gnd vdd FILL
XFILL_2__2906_ gnd vdd FILL
XFILL_5__3383_ gnd vdd FILL
XFILL_1__3375_ gnd vdd FILL
XFILL_8__2685_ gnd vdd FILL
XFILL_8__2265_ gnd vdd FILL
XFILL_4__2585_ gnd vdd FILL
XFILL_4__2165_ gnd vdd FILL
XFILL_0__2485_ gnd vdd FILL
XFILL_6__3452_ gnd vdd FILL
XFILL_0__2065_ gnd vdd FILL
XFILL_6__3032_ gnd vdd FILL
XFILL_2__3444_ gnd vdd FILL
XFILL_2__3024_ gnd vdd FILL
XFILL_7__1887_ gnd vdd FILL
X_2904_ _1384_ _523_ _589_ _590_ vdd gnd OAI21X1
XFILL_1__1861_ gnd vdd FILL
XFILL_3__1787_ gnd vdd FILL
XFILL_5__2654_ gnd vdd FILL
XFILL_5__2234_ gnd vdd FILL
XFILL_1__2646_ gnd vdd FILL
XFILL_1__2226_ gnd vdd FILL
XFILL_3__3513_ gnd vdd FILL
XFILL_8__1956_ gnd vdd FILL
XFILL_5__3439_ gnd vdd FILL
XFILL_5__3019_ gnd vdd FILL
XFILL_2__1930_ gnd vdd FILL
XFILL_4__1856_ gnd vdd FILL
XFILL_0__1756_ gnd vdd FILL
XFILL_6__2723_ gnd vdd FILL
X_3442_ BI[2] alu_op[3] _1528_ vdd gnd NOR2X1
XFILL_6__2303_ gnd vdd FILL
X_3022_ RDY_bF$buf1 _685_ _686_ _68_ vdd gnd OAI21X1
XFILL_2__2715_ gnd vdd FILL
XFILL_5__3192_ gnd vdd FILL
XFILL_6__3508_ gnd vdd FILL
XFILL_1__3184_ gnd vdd FILL
XFILL_5__1925_ gnd vdd FILL
XFILL_8__2494_ gnd vdd FILL
XFILL_8__2074_ gnd vdd FILL
XFILL_1__1917_ gnd vdd FILL
XFILL_4__2394_ gnd vdd FILL
XFILL_0__2294_ gnd vdd FILL
XFILL_7__1696_ gnd vdd FILL
XFILL_4__3599_ gnd vdd FILL
XFILL_4__3179_ gnd vdd FILL
X_2713_ _1264_ _413_ DIMUX[2] _434_ vdd gnd OAI21X1
XFILL_0__3499_ gnd vdd FILL
XFILL_0__3079_ gnd vdd FILL
XFILL_5__2883_ gnd vdd FILL
XFILL_5__2463_ gnd vdd FILL
XFILL_5__2043_ gnd vdd FILL
XFILL_1__2875_ gnd vdd FILL
XFILL_1__2455_ gnd vdd FILL
XFILL_1__2035_ gnd vdd FILL
XFILL_7__3422_ gnd vdd FILL
XFILL_7__3002_ gnd vdd FILL
XFILL_8__1765_ gnd vdd FILL
XFILL_0__1985_ gnd vdd FILL
XFILL_6__2952_ gnd vdd FILL
XFILL_6__2532_ gnd vdd FILL
XFILL_6__2112_ gnd vdd FILL
X_3251_ _14_ vdd _1__bF$buf8 clk_bF$buf7 PC[12] vdd 
+ gnd
+ DFFSR
XFILL_2__2944_ gnd vdd FILL
XFILL_2__2524_ gnd vdd FILL
XFILL_2__2104_ gnd vdd FILL
XFILL_8_BUFX2_insert0 gnd vdd FILL
XFILL_8_BUFX2_insert1 gnd vdd FILL
XFILL_8_BUFX2_insert2 gnd vdd FILL
XFILL_8_BUFX2_insert3 gnd vdd FILL
XFILL_8_BUFX2_insert4 gnd vdd FILL
XFILL_8_BUFX2_insert5 gnd vdd FILL
XFILL_8_BUFX2_insert6 gnd vdd FILL
XFILL_8_BUFX2_insert7 gnd vdd FILL
XFILL_8_BUFX2_insert8 gnd vdd FILL
XFILL_5__1734_ gnd vdd FILL
XFILL_8_BUFX2_insert9 gnd vdd FILL
XFILL_1__1726_ gnd vdd FILL
XFILL184350x144450 gnd vdd FILL
XFILL_5__2939_ gnd vdd FILL
XFILL_5__2519_ gnd vdd FILL
XFILL_6__3490_ gnd vdd FILL
XFILL_8__3088_ gnd vdd FILL
XFILL_6__3070_ gnd vdd FILL
XFILL_2__3482_ gnd vdd FILL
XFILL_2__3062_ gnd vdd FILL
XFILL_0_BUFX2_insert39 gnd vdd FILL
X_2942_ _932_ _620_ _621_ _53_ vdd gnd OAI21X1
XFILL_6__1803_ gnd vdd FILL
X_2522_ _225_ DIMUX[0] _264_ _265_ vdd gnd AOI21X1
X_2102_ _926__bF$buf0 _935_ _1238_ vdd gnd NAND2X1
XFILL_5__2692_ gnd vdd FILL
XFILL_5__2272_ gnd vdd FILL
X_3307_ _61_ vdd _1__bF$buf9 clk_bF$buf1 IRHOLD_valid vdd 
+ gnd
+ DFFSR
XFILL_1__2684_ gnd vdd FILL
XFILL_1__2264_ gnd vdd FILL
XFILL_7__3231_ gnd vdd FILL
XFILL_3__3551_ gnd vdd FILL
XFILL_3__3131_ gnd vdd FILL
XFILL_8__1994_ gnd vdd FILL
XFILL_5__3477_ gnd vdd FILL
XFILL_5__3057_ gnd vdd FILL
XFILL_1__3469_ gnd vdd FILL
XFILL_1__3049_ gnd vdd FILL
XFILL_4__1894_ gnd vdd FILL
XFILL_0__1794_ gnd vdd FILL
XFILL_6__2761_ gnd vdd FILL
XFILL_8__2779_ gnd vdd FILL
X_3480_ _1527_ _1565_ _1563_ _1566_ vdd gnd OAI21X1
XFILL_8__2359_ gnd vdd FILL
XFILL_6__2341_ gnd vdd FILL
X_3060_ DIMUX[3] _981_ _720_ _719_ _721_ vdd 
+ gnd
+ OAI22X1
XFILL_2__2753_ gnd vdd FILL
XFILL_2__2333_ gnd vdd FILL
XFILL_4__2679_ gnd vdd FILL
XFILL_4__2259_ gnd vdd FILL
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
XFILL_7__2502_ gnd vdd FILL
XFILL_3__2822_ gnd vdd FILL
XFILL_3__2402_ gnd vdd FILL
XFILL_5__2748_ gnd vdd FILL
XFILL_5__2328_ gnd vdd FILL
X_2751_ _291_ _324_ _468_ _469_ vdd gnd OAI21X1
X_2331_ _1265_ _1127_ _1462_ _1463_ vdd gnd NAND3X1
XFILL_5__2081_ gnd vdd FILL
XFILL_7__2099_ gnd vdd FILL
XFILL182550x148350 gnd vdd FILL
XFILL_6__2817_ gnd vdd FILL
X_3536_ _1621_ _1620_ _1622_ vdd gnd NAND2X1
X_3116_ _714_ _757_ _761_ _87_ vdd gnd OAI21X1
XFILL_1__2493_ gnd vdd FILL
XFILL_7__3460_ gnd vdd FILL
XFILL_1__2073_ gnd vdd FILL
XFILL_7__3040_ gnd vdd FILL
XFILL_2__2809_ gnd vdd FILL
XFILL_6__2990_ gnd vdd FILL
XFILL_6__2570_ gnd vdd FILL
XFILL_8__2588_ gnd vdd FILL
XFILL_8__2168_ gnd vdd FILL
XFILL_6__2150_ gnd vdd FILL
XFILL_2__2982_ gnd vdd FILL
XFILL_2__2562_ gnd vdd FILL
XFILL_2__2142_ gnd vdd FILL
XFILL_4__2488_ gnd vdd FILL
XFILL_4__2068_ gnd vdd FILL
XFILL_0__2388_ gnd vdd FILL
XFILL_5__1772_ gnd vdd FILL
X_2807_ _506_ _513_ _511_ _26_ vdd gnd OAI21X1
XFILL_1__1764_ gnd vdd FILL
XFILL_7__2731_ gnd vdd FILL
XFILL_7__2311_ gnd vdd FILL
XFILL_9__2237_ gnd vdd FILL
XFILL_3__2631_ gnd vdd FILL
XFILL_3__2211_ gnd vdd FILL
XFILL_5__2977_ gnd vdd FILL
XFILL_5__2557_ gnd vdd FILL
XFILL_5__2137_ gnd vdd FILL
XFILL_1__2969_ gnd vdd FILL
XFILL_1__2549_ gnd vdd FILL
XFILL_7__3516_ gnd vdd FILL
XFILL_1__2129_ gnd vdd FILL
XFILL_3__3416_ gnd vdd FILL
XFILL_8__1859_ gnd vdd FILL
X_2980_ _515_ _951_ _649_ vdd gnd NAND2X1
XFILL_6__1841_ gnd vdd FILL
X_2560_ _297_ _298_ vdd gnd INVX1
X_2140_ RDY_bF$buf0 _1274_ _1275_ _1276_ vdd gnd OAI21X1
XFILL_2__1833_ gnd vdd FILL
XFILL_8__2800_ gnd vdd FILL
XFILL_4__1759_ gnd vdd FILL
XFILL_4__2700_ gnd vdd FILL
XFILL_6__2626_ gnd vdd FILL
X_3345_ _98_ vdd _1__bF$buf4 clk_bF$buf4 _AXYS[3]_[5] vdd 
+ gnd
+ DFFSR
XFILL_6__2206_ gnd vdd FILL
XFILL_0__2600_ gnd vdd FILL
XFILL_2__2618_ gnd vdd FILL
XFILL_5__3095_ gnd vdd FILL
XFILL_9__1928_ gnd vdd FILL
XFILL_1__3087_ gnd vdd FILL
XFILL_3__1902_ gnd vdd FILL
XFILL184050x140550 gnd vdd FILL
XFILL_5__1828_ gnd vdd FILL
XFILL_8__2397_ gnd vdd FILL
XFILL_2__2791_ gnd vdd FILL
XFILL_2__2371_ gnd vdd FILL
XFILL_4__2297_ gnd vdd FILL
X_1831_ _975_ _933_ _864_ _967_ BI[7] vdd 
+ gnd
+ OAI22X1
XFILL_0__2197_ gnd vdd FILL
XFILL_6__3584_ gnd vdd FILL
XFILL_6__3164_ gnd vdd FILL
XFILL_2__3156_ gnd vdd FILL
X_2616_ ADD[1] _321_ _345_ _346_ vdd gnd AOI21X1
XFILL_1__1993_ gnd vdd FILL
XFILL_7__2960_ gnd vdd FILL
XFILL_7__2540_ gnd vdd FILL
XFILL_7__2120_ gnd vdd FILL
XFILL_9__2046_ gnd vdd FILL
XFILL_3__2860_ gnd vdd FILL
XFILL_3__2440_ gnd vdd FILL
XFILL_3__2020_ gnd vdd FILL
XFILL_5__2786_ gnd vdd FILL
XFILL_5__2366_ gnd vdd FILL
XFILL_1__2778_ gnd vdd FILL
XFILL_1__2358_ gnd vdd FILL
XBUFX2_insert40 _887_ _887__bF$buf3 vdd gnd BUFX2
XBUFX2_insert41 _887_ _887__bF$buf2 vdd gnd BUFX2
XBUFX2_insert42 _887_ _887__bF$buf1 vdd gnd BUFX2
XBUFX2_insert43 _887_ _887__bF$buf0 vdd gnd BUFX2
XBUFX2_insert44 _869_ _869__bF$buf3 vdd gnd BUFX2
XBUFX2_insert45 _869_ _869__bF$buf2 vdd gnd BUFX2
XBUFX2_insert46 _869_ _869__bF$buf1 vdd gnd BUFX2
XBUFX2_insert47 _869_ _869__bF$buf0 vdd gnd BUFX2
XBUFX2_insert48 IRHOLD_valid IRHOLD_valid_bF$buf3 vdd gnd BUFX2
XBUFX2_insert49 IRHOLD_valid IRHOLD_valid_bF$buf2 vdd gnd BUFX2
XFILL_3__3225_ gnd vdd FILL
XFILL_4__1988_ gnd vdd FILL
XFILL_0__1888_ gnd vdd FILL
XFILL_6__2855_ gnd vdd FILL
X_3574_ _1492_ vdd _1484_ clk_bF$buf0 ADD[4] vdd 
+ gnd
+ DFFSR
XFILL_6__2435_ gnd vdd FILL
XFILL_6__2015_ gnd vdd FILL
X_3154_ _785_ _782_ _786_ vdd gnd NOR2X1
XFILL_2__2847_ gnd vdd FILL
XFILL_2__2427_ gnd vdd FILL
XFILL_2__2007_ gnd vdd FILL
XFILL_7__1811_ gnd vdd FILL
XFILL_9__1737_ gnd vdd FILL
XFILL_3__1711_ gnd vdd FILL
XFILL_2__2180_ gnd vdd FILL
XFILL_3__2916_ gnd vdd FILL
XFILL_6__3393_ gnd vdd FILL
XFILL_2__3385_ gnd vdd FILL
X_2845_ _1155_ _512_ _544_ vdd gnd NAND2X1
XFILL_6__1706_ gnd vdd FILL
X_2425_ N _141_ _177_ vdd gnd NAND2X1
X_2005_ IRHOLD_valid_bF$buf2 _1140_ _1133_ _1141_ vdd gnd AOI21X1
XFILL_5__2595_ gnd vdd FILL
XFILL_5__2175_ gnd vdd FILL
XFILL_1__2587_ gnd vdd FILL
XFILL_7__3554_ gnd vdd FILL
XFILL_1__2167_ gnd vdd FILL
XFILL_7__3134_ gnd vdd FILL
XFILL_3__3454_ gnd vdd FILL
XFILL_3__3034_ gnd vdd FILL
XFILL_8__1897_ gnd vdd FILL
XFILL_2__1871_ gnd vdd FILL
XFILL_4__1797_ gnd vdd FILL
XFILL_0__1697_ gnd vdd FILL
XFILL_6__2664_ gnd vdd FILL
X_3383_ AI[7] _1654_ _1657_ _1658_ vdd gnd OAI21X1
XFILL_6__2244_ gnd vdd FILL
XFILL_2__2656_ gnd vdd FILL
XFILL_2__2236_ gnd vdd FILL
XFILL_8__3203_ gnd vdd FILL
XFILL_4__3523_ gnd vdd FILL
XFILL_4__3103_ gnd vdd FILL
XFILL_6__3449_ gnd vdd FILL
XFILL_6__3029_ gnd vdd FILL
XFILL_3__1940_ gnd vdd FILL
XFILL_0__3423_ gnd vdd FILL
XFILL_0__3003_ gnd vdd FILL
XFILL_5__1866_ gnd vdd FILL
XFILL_1__1858_ gnd vdd FILL
XFILL_7__2825_ gnd vdd FILL
XFILL_7__2405_ gnd vdd FILL
XFILL_3__2725_ gnd vdd FILL
XFILL_3__2305_ gnd vdd FILL
XFILL_2__3194_ gnd vdd FILL
XFILL_6__1935_ gnd vdd FILL
X_2654_ PC[4] _336_ _380_ vdd gnd NAND2X1
X_2234_ _1363_ _1364_ _1367_ _1368_ vdd gnd NAND3X1
XFILL_2__1927_ gnd vdd FILL
XFILL_3_CLKBUF1_insert28 gnd vdd FILL
XFILL_3_CLKBUF1_insert29 gnd vdd FILL
X_3439_ alu_op[0] _1523_ _1524_ _1525_ vdd gnd OAI21X1
X_3019_ _678_ _683_ _684_ _67_ vdd gnd OAI21X1
XFILL_1__2396_ gnd vdd FILL
XFILL_5__3189_ gnd vdd FILL
XFILL_6__2893_ gnd vdd FILL
XFILL_6__2473_ gnd vdd FILL
XFILL_6__2053_ gnd vdd FILL
X_3192_ _934_ _783_ _823_ _824_ vdd gnd NAND3X1
XFILL_2__2885_ gnd vdd FILL
XFILL_2__2465_ gnd vdd FILL
XFILL_8__3432_ gnd vdd FILL
XFILL_2__2045_ gnd vdd FILL
XFILL_8__3012_ gnd vdd FILL
X_1925_ _969_ _944_ _1067_ _1068_ vdd gnd OAI21X1
XFILL_0__3232_ gnd vdd FILL
XFILL_7__2634_ gnd vdd FILL
XFILL_7__2214_ gnd vdd FILL
XFILL_3__2954_ gnd vdd FILL
XFILL_3__2534_ gnd vdd FILL
XFILL_3__2114_ gnd vdd FILL
XFILL_5__3401_ gnd vdd FILL
XFILL_7__3419_ gnd vdd FILL
X_2883_ _853__bF$buf1 _1002__bF$buf0 load_only _573_ vdd gnd OAI21X1
XFILL_6__1744_ gnd vdd FILL
X_2463_ _213_ _1685_[0] vdd gnd INVX1
X_2043_ _1142_ _1178_ _1179_ vdd gnd NAND2X1
XFILL_2__1736_ gnd vdd FILL
XFILL_8__2703_ gnd vdd FILL
XFILL_4__2603_ gnd vdd FILL
XFILL_6__2949_ gnd vdd FILL
XFILL_6__2529_ gnd vdd FILL
XFILL_6__2109_ gnd vdd FILL
X_3248_ _11_ vdd _1__bF$buf0 clk_bF$buf7 PC[9] vdd 
+ gnd
+ DFFSR
XFILL_7__3592_ gnd vdd FILL
XFILL_7__3172_ gnd vdd FILL
XFILL_0__2923_ gnd vdd FILL
XFILL_0__2503_ gnd vdd FILL
XFILL_3__3492_ gnd vdd FILL
XFILL_3__3072_ gnd vdd FILL
XFILL_7__1905_ gnd vdd FILL
XFILL_3__1805_ gnd vdd FILL
XFILL_6__2282_ gnd vdd FILL
XFILL_2__2694_ gnd vdd FILL
XFILL_2__2274_ gnd vdd FILL
X_1734_ _886__bF$buf3 _887_ vdd gnd INVX8
XFILL_4__3561_ gnd vdd FILL
XFILL_4__3141_ gnd vdd FILL
XFILL_6__3487_ gnd vdd FILL
XFILL_6__3067_ gnd vdd FILL
XFILL_2__3479_ gnd vdd FILL
XFILL_0__3461_ gnd vdd FILL
XFILL_2__3059_ gnd vdd FILL
XFILL_0__3041_ gnd vdd FILL
X_2939_ reset _618_ _619_ vdd gnd NOR2X1
X_2519_ ABH[0] _199_ _182_ _262_ vdd gnd AOI21X1
XFILL_1__1896_ gnd vdd FILL
XFILL_7__2863_ gnd vdd FILL
XFILL_7__2443_ gnd vdd FILL
XFILL_7__2023_ gnd vdd FILL
XFILL_3__2763_ gnd vdd FILL
XFILL_3__2343_ gnd vdd FILL
XFILL_5__2689_ gnd vdd FILL
XFILL_5__2269_ gnd vdd FILL
XFILL_5__3210_ gnd vdd FILL
XFILL_7__3228_ gnd vdd FILL
XFILL_1__3202_ gnd vdd FILL
XFILL_3__3548_ gnd vdd FILL
XFILL_3__3128_ gnd vdd FILL
XFILL_6__1973_ gnd vdd FILL
X_2692_ _322_ _415_ vdd gnd INVX1
X_2272_ _1405_ _1406_ vdd gnd INVX1
XFILL_2__1965_ gnd vdd FILL
XFILL_8__2932_ gnd vdd FILL
XFILL_8__2512_ gnd vdd FILL
XFILL_4__2832_ gnd vdd FILL
XFILL_4__2412_ gnd vdd FILL
XFILL_6__2758_ gnd vdd FILL
X_3477_ _1529_ _1527_ _1563_ vdd gnd NAND2X1
XFILL_6__2338_ gnd vdd FILL
X_3057_ _701_ ADD[3] _718_ vdd gnd XNOR2X1
XFILL_0__2732_ gnd vdd FILL
XFILL_0__2312_ gnd vdd FILL
XFILL_7__1714_ gnd vdd FILL
XFILL184050x117150 gnd vdd FILL
XFILL_0__3517_ gnd vdd FILL
XFILL_6__2091_ gnd vdd FILL
XFILL_7__2919_ gnd vdd FILL
XFILL_5__2901_ gnd vdd FILL
XFILL_2__2083_ gnd vdd FILL
XFILL_8__3470_ gnd vdd FILL
XFILL_8__3050_ gnd vdd FILL
XFILL_3__2819_ gnd vdd FILL
X_1963_ _1054_ ADD[5] _1101_ _1102_ vdd gnd AOI21X1
XFILL_4__3370_ gnd vdd FILL
X_2748_ _292_ _359_ _465_ _466_ vdd gnd OAI21X1
X_2328_ _1319_ _1459_ _1460_ vdd gnd NOR2X1
XFILL_7__2672_ gnd vdd FILL
XFILL_7__2252_ gnd vdd FILL
XFILL_9__2178_ gnd vdd FILL
XFILL_3__2992_ gnd vdd FILL
XFILL_3__2572_ gnd vdd FILL
XFILL_3__2152_ gnd vdd FILL
XFILL_5__2498_ gnd vdd FILL
XFILL_5__2078_ gnd vdd FILL
XFILL_7__3457_ gnd vdd FILL
XFILL_7__3037_ gnd vdd FILL
XFILL_1__3431_ gnd vdd FILL
XFILL_1__3011_ gnd vdd FILL
XFILL_6__1782_ gnd vdd FILL
X_2081_ _1216_ _1215_ _1217_ vdd gnd NOR2X1
XFILL_5_BUFX2_insert50 gnd vdd FILL
XFILL_5_BUFX2_insert51 gnd vdd FILL
XFILL_5_BUFX2_insert52 gnd vdd FILL
XFILL_5_BUFX2_insert53 gnd vdd FILL
XFILL_5_BUFX2_insert54 gnd vdd FILL
XFILL_5_BUFX2_insert55 gnd vdd FILL
XFILL_2__1774_ gnd vdd FILL
XFILL_5_BUFX2_insert56 gnd vdd FILL
XFILL_8__2741_ gnd vdd FILL
XFILL_5_BUFX2_insert57 gnd vdd FILL
XFILL_8__2321_ gnd vdd FILL
XFILL_5_BUFX2_insert58 gnd vdd FILL
XFILL_5_BUFX2_insert59 gnd vdd FILL
XFILL_4__2641_ gnd vdd FILL
XFILL_4__2221_ gnd vdd FILL
XFILL_6__2987_ gnd vdd FILL
XFILL_6__2567_ gnd vdd FILL
X_3286_ _48_ vdd _1__bF$buf7 clk_bF$buf1 src_reg[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2147_ gnd vdd FILL
XFILL_2__2979_ gnd vdd FILL
XFILL_0__2961_ gnd vdd FILL
XFILL_0__2541_ gnd vdd FILL
XFILL_2__2559_ gnd vdd FILL
XFILL_8__3526_ gnd vdd FILL
XFILL_2__2139_ gnd vdd FILL
XFILL_0__2121_ gnd vdd FILL
XFILL_8__3106_ gnd vdd FILL
XFILL_2__3500_ gnd vdd FILL
XFILL_7__1943_ gnd vdd FILL
XFILL_4__3426_ gnd vdd FILL
XFILL_4__3006_ gnd vdd FILL
XFILL_9__1869_ gnd vdd FILL
XFILL_3__1843_ gnd vdd FILL
XFILL_5__1769_ gnd vdd FILL
XFILL_7__2728_ gnd vdd FILL
XFILL_5__2710_ gnd vdd FILL
XFILL_7__2308_ gnd vdd FILL
XFILL_1__2702_ gnd vdd FILL
XFILL_3__2628_ gnd vdd FILL
XFILL_3__2208_ gnd vdd FILL
X_1772_ C _908_ _924_ _925_ vdd gnd OAI21X1
XFILL_2__3097_ gnd vdd FILL
XFILL_4__1912_ gnd vdd FILL
X_2977_ plp cld _646_ _647_ vdd gnd OAI21X1
XFILL_6__1838_ gnd vdd FILL
X_2557_ _293_ _240_ _294_ _295_ vdd gnd OAI21X1
X_2137_ RDY_bF$buf0 _878_ _1272_ _1273_ vdd gnd OAI21X1
XFILL_7__2481_ gnd vdd FILL
XFILL_7__2061_ gnd vdd FILL
XFILL_0__1812_ gnd vdd FILL
XFILL_3__2381_ gnd vdd FILL
XFILL_1__2299_ gnd vdd FILL
XFILL_3__3586_ gnd vdd FILL
XFILL_3__3166_ gnd vdd FILL
XFILL_8__2970_ gnd vdd FILL
XFILL_8__2550_ gnd vdd FILL
XFILL_8__2130_ gnd vdd FILL
XFILL_4__2870_ gnd vdd FILL
XFILL_4__2450_ gnd vdd FILL
XFILL_4__2030_ gnd vdd FILL
XFILL_6__2796_ gnd vdd FILL
XFILL_6__2376_ gnd vdd FILL
X_3095_ _691__bF$buf1 _748_ _AXYS[1]_[1] _750_ vdd gnd OAI21X1
XFILL_2__2788_ gnd vdd FILL
XFILL_0__2770_ gnd vdd FILL
XFILL_0__2350_ gnd vdd FILL
XFILL_2__2368_ gnd vdd FILL
X_1828_ PC[6] _974_ vdd gnd INVX2
XFILL_7__1752_ gnd vdd FILL
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
XFILL_8__1821_ gnd vdd FILL
XFILL_4__1721_ gnd vdd FILL
X_2786_ RDY_bF$buf6 _497_ _499_ _19_ vdd gnd OAI21X1
X_2366_ _127_ _128_ vdd gnd INVX2
XFILL_7__2290_ gnd vdd FILL
XFILL_8__2606_ gnd vdd FILL
XFILL_3__2190_ gnd vdd FILL
XFILL_4__2926_ gnd vdd FILL
XFILL_4__2506_ gnd vdd FILL
XFILL_7__3495_ gnd vdd FILL
XFILL_7__3075_ gnd vdd FILL
XFILL_0__2826_ gnd vdd FILL
XFILL_0__2406_ gnd vdd FILL
XFILL_3__3395_ gnd vdd FILL
XFILL_7__1808_ gnd vdd FILL
XFILL_3__1708_ gnd vdd FILL
XFILL_6__2185_ gnd vdd FILL
XFILL_2__2597_ gnd vdd FILL
XFILL_8__3564_ gnd vdd FILL
XFILL_2__2177_ gnd vdd FILL
XFILL_8__3144_ gnd vdd FILL
XFILL_7__1981_ gnd vdd FILL
XFILL_4__3464_ gnd vdd FILL
XFILL_4__3044_ gnd vdd FILL
XFILL_3__1881_ gnd vdd FILL
XFILL_0__3364_ gnd vdd FILL
XFILL_2_CLKBUF1_insert30 gnd vdd FILL
XFILL_2_CLKBUF1_insert31 gnd vdd FILL
XFILL_2_CLKBUF1_insert32 gnd vdd FILL
XFILL_2_CLKBUF1_insert33 gnd vdd FILL
XFILL_2_CLKBUF1_insert34 gnd vdd FILL
XFILL_2_CLKBUF1_insert35 gnd vdd FILL
XFILL_2_CLKBUF1_insert36 gnd vdd FILL
XFILL_2_CLKBUF1_insert37 gnd vdd FILL
XFILL_2_CLKBUF1_insert38 gnd vdd FILL
XFILL_1__1799_ gnd vdd FILL
XFILL_7__2766_ gnd vdd FILL
XFILL_7__2346_ gnd vdd FILL
XFILL_1__2740_ gnd vdd FILL
XFILL_1__2320_ gnd vdd FILL
XFILL_3__2666_ gnd vdd FILL
XFILL_3__2246_ gnd vdd FILL
XFILL_5__3533_ gnd vdd FILL
XFILL_5__3113_ gnd vdd FILL
XFILL184650x156150 gnd vdd FILL
XFILL_1__3525_ gnd vdd FILL
XFILL_1__3105_ gnd vdd FILL
XFILL_4__1950_ gnd vdd FILL
XFILL_6__1876_ gnd vdd FILL
X_2595_ PC[0] _325_ _321_ ADD[0] _326_ vdd 
+ gnd
+ AOI22X1
X_2175_ RDY_bF$buf3 _1235_ _1188_ _1310_ vdd gnd NAND3X1
XFILL_2__1868_ gnd vdd FILL
XFILL_0__1850_ gnd vdd FILL
XFILL_8__2835_ gnd vdd FILL
XFILL_8__2415_ gnd vdd FILL
XFILL_4__2735_ gnd vdd FILL
XFILL_4__2315_ gnd vdd FILL
XFILL_0__2635_ gnd vdd FILL
XFILL_0__2215_ gnd vdd FILL
XFILL_6__3602_ gnd vdd FILL
XFILL_3__1937_ gnd vdd FILL
XFILL_5__2804_ gnd vdd FILL
XFILL_8__3373_ gnd vdd FILL
X_1866_ _1007_ _1009_ _1005_ _1010_ vdd gnd NAND3X1
XFILL_7__1790_ gnd vdd FILL
XFILL_6__3199_ gnd vdd FILL
XFILL_3__1690_ gnd vdd FILL
XFILL_0__3593_ gnd vdd FILL
XFILL_0__3173_ gnd vdd FILL
XFILL_7__2995_ gnd vdd FILL
XFILL_7__2575_ gnd vdd FILL
XFILL_7__2155_ gnd vdd FILL
XFILL_0__1906_ gnd vdd FILL
XFILL_3__2895_ gnd vdd FILL
XFILL_3__2475_ gnd vdd FILL
XFILL_3__2055_ gnd vdd FILL
XFILL_8__2644_ gnd vdd FILL
XFILL_8__2224_ gnd vdd FILL
XFILL_4__2964_ gnd vdd FILL
XFILL_4__2544_ gnd vdd FILL
XFILL_4__2124_ gnd vdd FILL
X_3189_ _946_ _993_ _933_ _821_ vdd gnd OAI21X1
XFILL_0__2864_ gnd vdd FILL
XFILL_0__2444_ gnd vdd FILL
XFILL_8__3429_ gnd vdd FILL
XFILL_6__3411_ gnd vdd FILL
XFILL_0__2024_ gnd vdd FILL
XFILL_8__3009_ gnd vdd FILL
XFILL_2__3403_ gnd vdd FILL
XFILL_7__1846_ gnd vdd FILL
XFILL_1__1820_ gnd vdd FILL
XFILL_3__1746_ gnd vdd FILL
XFILL_0__3229_ gnd vdd FILL
XFILL_5__2613_ gnd vdd FILL
XFILL_8__3182_ gnd vdd FILL
XFILL_1__2605_ gnd vdd FILL
XFILL_4__3082_ gnd vdd FILL
XFILL_8__1915_ gnd vdd FILL
XFILL_4__1815_ gnd vdd FILL
XFILL_7__2384_ gnd vdd FILL
XFILL_0__1715_ gnd vdd FILL
X_3401_ alu_op[2] _1675_ vdd gnd INVX2
XFILL_3__2284_ gnd vdd FILL
XFILL_7__3589_ gnd vdd FILL
XFILL_7__3169_ gnd vdd FILL
XFILL_5__3151_ gnd vdd FILL
XFILL_1__3563_ gnd vdd FILL
XFILL_1__3143_ gnd vdd FILL
XFILL_3__3489_ gnd vdd FILL
XFILL_3__3069_ gnd vdd FILL
XFILL_8__2873_ gnd vdd FILL
XFILL_8__2453_ gnd vdd FILL
XFILL_8__2033_ gnd vdd FILL
XFILL_4__2773_ gnd vdd FILL
XFILL_4__2353_ gnd vdd FILL
XFILL_6__2699_ gnd vdd FILL
XFILL_6__2279_ gnd vdd FILL
XFILL_0__2673_ gnd vdd FILL
XFILL_0__2253_ gnd vdd FILL
XFILL_6__3220_ gnd vdd FILL
XFILL_2__3212_ gnd vdd FILL
XFILL184350x109350 gnd vdd FILL
XFILL_4__3558_ gnd vdd FILL
XFILL_4__3138_ gnd vdd FILL
XFILL_3__1975_ gnd vdd FILL
XFILL_0__3458_ gnd vdd FILL
XFILL_0__3038_ gnd vdd FILL
XFILL_5__2842_ gnd vdd FILL
XFILL_5__2422_ gnd vdd FILL
XFILL_5__2002_ gnd vdd FILL
XFILL_1__2834_ gnd vdd FILL
XFILL_1__2414_ gnd vdd FILL
XFILL_8__1724_ gnd vdd FILL
XFILL_5__3207_ gnd vdd FILL
X_2689_ _406_ _411_ _412_ vdd gnd NOR2X1
X_2269_ _1401_ _1402_ _1399_ _1316_ _1403_ vdd 
+ gnd
+ AOI22X1
XFILL_7__2193_ gnd vdd FILL
XFILL_0__1944_ gnd vdd FILL
XFILL_8__2929_ gnd vdd FILL
XFILL_6__2911_ gnd vdd FILL
XFILL_8__2509_ gnd vdd FILL
X_3210_ _802_ _829_ ABL[5] _837_ vdd gnd OAI21X1
XFILL_3__2093_ gnd vdd FILL
XFILL_2__2903_ gnd vdd FILL
XFILL_4__2829_ gnd vdd FILL
XFILL_4__2409_ gnd vdd FILL
XFILL_5__3380_ gnd vdd FILL
XFILL_7__3398_ gnd vdd FILL
XFILL_0__2729_ gnd vdd FILL
XFILL_0__2309_ gnd vdd FILL
XFILL_1__3372_ gnd vdd FILL
XFILL_8__2682_ gnd vdd FILL
XFILL_8__2262_ gnd vdd FILL
XFILL_4__2582_ gnd vdd FILL
XFILL_4__2162_ gnd vdd FILL
XFILL_6__2088_ gnd vdd FILL
XFILL_0__2482_ gnd vdd FILL
XFILL_8__3467_ gnd vdd FILL
XFILL_0__2062_ gnd vdd FILL
XFILL_8__3047_ gnd vdd FILL
XFILL_2__3441_ gnd vdd FILL
XFILL_2__3021_ gnd vdd FILL
XFILL_7__1884_ gnd vdd FILL
XFILL_4__3367_ gnd vdd FILL
X_2901_ _581_ _498_ _587_ vdd gnd OR2X2
XFILL_3__1784_ gnd vdd FILL
XFILL_5__2651_ gnd vdd FILL
XFILL_7__2669_ gnd vdd FILL
XFILL_7__2249_ gnd vdd FILL
XFILL_5__2231_ gnd vdd FILL
XFILL_1__2643_ gnd vdd FILL
XFILL_1__2223_ gnd vdd FILL
XFILL_3__2989_ gnd vdd FILL
XFILL_3__2569_ gnd vdd FILL
XFILL_3__2149_ gnd vdd FILL
XFILL_3__3510_ gnd vdd FILL
XFILL_8__1953_ gnd vdd FILL
XFILL_5__3436_ gnd vdd FILL
XFILL_5__3016_ gnd vdd FILL
XFILL_1__3428_ gnd vdd FILL
XFILL_1__3008_ gnd vdd FILL
XFILL_4__1853_ gnd vdd FILL
XFILL_6__1779_ gnd vdd FILL
X_2498_ _973_ _208_ _243_ _244_ vdd gnd OAI21X1
X_2078_ _1139_ _1214_ vdd gnd INVX1
XFILL_0__1753_ gnd vdd FILL
XFILL_8__2738_ gnd vdd FILL
XFILL_6__2720_ gnd vdd FILL
XFILL_8__2318_ gnd vdd FILL
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
XFILL_8__2491_ gnd vdd FILL
XFILL_8__2071_ gnd vdd FILL
XFILL_1__1914_ gnd vdd FILL
XFILL_4__2391_ gnd vdd FILL
XFILL183750x70350 gnd vdd FILL
XFILL_5__2707_ gnd vdd FILL
XFILL_0__2291_ gnd vdd FILL
X_1769_ load_only _921_ _920_ _922_ vdd gnd OAI21X1
XFILL_4__3596_ gnd vdd FILL
XFILL_7__1693_ gnd vdd FILL
XFILL_4__3176_ gnd vdd FILL
X_2710_ _431_ _398_ RDY_bF$buf8 _432_ vdd gnd OAI21X1
XFILL_0__3496_ gnd vdd FILL
XFILL_0__3076_ gnd vdd FILL
XFILL_4__1909_ gnd vdd FILL
XFILL_5__2880_ gnd vdd FILL
XFILL_7__2898_ gnd vdd FILL
XFILL_5__2460_ gnd vdd FILL
XFILL_7__2478_ gnd vdd FILL
XFILL_5__2040_ gnd vdd FILL
XFILL_7__2058_ gnd vdd FILL
XFILL_0__1809_ gnd vdd FILL
XFILL_1__2872_ gnd vdd FILL
XFILL_1__2452_ gnd vdd FILL
XFILL_1__2032_ gnd vdd FILL
XFILL_3__2798_ gnd vdd FILL
XFILL_3__2378_ gnd vdd FILL
XFILL_8__1762_ gnd vdd FILL
XFILL_0__1982_ gnd vdd FILL
XFILL_8__2967_ gnd vdd FILL
XFILL_8__2547_ gnd vdd FILL
XFILL_8__2127_ gnd vdd FILL
XFILL_2__2941_ gnd vdd FILL
XFILL_2__2521_ gnd vdd FILL
XFILL_2__2101_ gnd vdd FILL
XFILL_4__2867_ gnd vdd FILL
XFILL_4__2447_ gnd vdd FILL
XFILL_4__2027_ gnd vdd FILL
XFILL184050x105450 gnd vdd FILL
XFILL_0__2767_ gnd vdd FILL
XFILL_0__2347_ gnd vdd FILL
XFILL_5__1731_ gnd vdd FILL
XFILL_7__1749_ gnd vdd FILL
XFILL_1__1723_ gnd vdd FILL
XFILL_5__2936_ gnd vdd FILL
XFILL_5__2516_ gnd vdd FILL
XFILL_8__3085_ gnd vdd FILL
XFILL_1__2928_ gnd vdd FILL
XFILL_1__2508_ gnd vdd FILL
X_1998_ IRHOLD_valid_bF$buf2 _1130_ _1133_ _1134_ vdd gnd AOI21X1
XFILL_8__1818_ gnd vdd FILL
XFILL_6__1800_ gnd vdd FILL
XFILL_4__1718_ gnd vdd FILL
XFILL_7__2287_ gnd vdd FILL
X_3304_ _58_ clk_bF$buf10 IRHOLD[5] vdd gnd DFFPOSX1
XFILL_1__2681_ gnd vdd FILL
XFILL_1__2261_ gnd vdd FILL
XFILL_3__2187_ gnd vdd FILL
XFILL_8__1991_ gnd vdd FILL
XFILL_5__3474_ gnd vdd FILL
XFILL_5__3054_ gnd vdd FILL
XFILL_1__3466_ gnd vdd FILL
XFILL_1__3046_ gnd vdd FILL
XFILL_4__1891_ gnd vdd FILL
XFILL_0__1791_ gnd vdd FILL
XFILL_8__2776_ gnd vdd FILL
XFILL_8__2356_ gnd vdd FILL
XFILL_2__2750_ gnd vdd FILL
XFILL_2__2330_ gnd vdd FILL
XFILL_4__2676_ gnd vdd FILL
XFILL_4__2256_ gnd vdd FILL
XFILL_0__2996_ gnd vdd FILL
XFILL_0__2576_ gnd vdd FILL
XFILL_6__3543_ gnd vdd FILL
XFILL_0__2156_ gnd vdd FILL
XFILL_6__3123_ gnd vdd FILL
XFILL_2__3535_ gnd vdd FILL
XFILL_2__3115_ gnd vdd FILL
XFILL_7__1978_ gnd vdd FILL
XFILL_5__1960_ gnd vdd FILL
XFILL_1__1952_ gnd vdd FILL
XFILL_3__1878_ gnd vdd FILL
XFILL_5__2745_ gnd vdd FILL
XFILL_5__2325_ gnd vdd FILL
XFILL_1__2737_ gnd vdd FILL
XFILL_1__2317_ gnd vdd FILL
XFILL_4__1947_ gnd vdd FILL
XFILL_7__2096_ gnd vdd FILL
XFILL_0__1847_ gnd vdd FILL
XFILL_6__2814_ gnd vdd FILL
X_3533_ _1618_ _1617_ _1619_ vdd gnd NAND2X1
X_3113_ _691__bF$buf0 _758_ _AXYS[2]_[1] _760_ vdd gnd OAI21X1
XFILL_1__2490_ gnd vdd FILL
XFILL_1__2070_ gnd vdd FILL
XFILL_2__2806_ gnd vdd FILL
XFILL_8__2585_ gnd vdd FILL
XFILL_8__2165_ gnd vdd FILL
XFILL_4__2485_ gnd vdd FILL
XFILL_4__2065_ gnd vdd FILL
XFILL_0__2385_ gnd vdd FILL
XFILL_7__1787_ gnd vdd FILL
X_2804_ _853__bF$buf1 _1002__bF$buf3 cld _511_ vdd gnd OAI21X1
XFILL_1__1761_ gnd vdd FILL
XFILL_5__2974_ gnd vdd FILL
XFILL_5__2554_ gnd vdd FILL
XFILL_5__2134_ gnd vdd FILL
XFILL_1__2966_ gnd vdd FILL
XFILL_1__2546_ gnd vdd FILL
XFILL_7__3513_ gnd vdd FILL
XFILL_1__2126_ gnd vdd FILL
XFILL_3__3413_ gnd vdd FILL
XFILL_8__1856_ gnd vdd FILL
XFILL_2__1830_ gnd vdd FILL
XFILL_4__1756_ gnd vdd FILL
XFILL_6__2623_ gnd vdd FILL
X_3342_ _95_ vdd _1__bF$buf4 clk_bF$buf4 _AXYS[3]_[2] vdd 
+ gnd
+ DFFSR
XFILL_6__2203_ gnd vdd FILL
XFILL_2__2615_ gnd vdd FILL
XFILL_5__3092_ gnd vdd FILL
XFILL_6__3408_ gnd vdd FILL
XFILL_1__3084_ gnd vdd FILL
XFILL_5__1825_ gnd vdd FILL
XFILL_8__2394_ gnd vdd FILL
XFILL_1__1817_ gnd vdd FILL
XFILL_4__2294_ gnd vdd FILL
XFILL_0__2194_ gnd vdd FILL
XFILL_8__3599_ gnd vdd FILL
XFILL_6__3581_ gnd vdd FILL
XFILL_6__3161_ gnd vdd FILL
XFILL_8__3179_ gnd vdd FILL
XFILL_2__3153_ gnd vdd FILL
XFILL_4__3499_ gnd vdd FILL
XFILL_4__3079_ gnd vdd FILL
X_2613_ _336_ _343_ vdd gnd INVX2
XFILL_1__1990_ gnd vdd FILL
XFILL_0__3399_ gnd vdd FILL
XFILL_5__2783_ gnd vdd FILL
XFILL_5__2363_ gnd vdd FILL
XFILL184650x144450 gnd vdd FILL
XFILL_1__2775_ gnd vdd FILL
XFILL_1__2355_ gnd vdd FILL
XBUFX2_insert10 RDY RDY_bF$buf2 vdd gnd BUFX2
XBUFX2_insert11 RDY RDY_bF$buf1 vdd gnd BUFX2
XBUFX2_insert12 RDY RDY_bF$buf0 vdd gnd BUFX2
XBUFX2_insert13 _1051_ _1051__bF$buf3 vdd gnd BUFX2
XBUFX2_insert14 _1051_ _1051__bF$buf2 vdd gnd BUFX2
XBUFX2_insert15 _1051_ _1051__bF$buf1 vdd gnd BUFX2
XBUFX2_insert16 _1051_ _1051__bF$buf0 vdd gnd BUFX2
XBUFX2_insert17 _1_ _1__bF$buf10 vdd gnd BUFX2
XBUFX2_insert18 _1_ _1__bF$buf9 vdd gnd BUFX2
XBUFX2_insert19 _1_ _1__bF$buf8 vdd gnd BUFX2
XFILL_3__3222_ gnd vdd FILL
XFILL_5__3148_ gnd vdd FILL
XFILL_4__1985_ gnd vdd FILL
XFILL_0__1885_ gnd vdd FILL
XFILL_6__2852_ gnd vdd FILL
X_3571_ _1489_ vdd _1484_ clk_bF$buf3 ADD[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2432_ gnd vdd FILL
XFILL_6__2012_ gnd vdd FILL
X_3151_ _890_ _1327_ _994_ _783_ vdd gnd OAI21X1
XFILL_2__2844_ gnd vdd FILL
XFILL_2__2424_ gnd vdd FILL
XFILL_2__2004_ gnd vdd FILL
XFILL_6__3217_ gnd vdd FILL
XFILL_2__3209_ gnd vdd FILL
XFILL_3__2913_ gnd vdd FILL
XFILL_5__2839_ gnd vdd FILL
XFILL_5__2419_ gnd vdd FILL
XFILL_6__3390_ gnd vdd FILL
XFILL_2__3382_ gnd vdd FILL
X_2842_ _1314_ _1383_ _541_ vdd gnd NAND2X1
XFILL_6__1703_ gnd vdd FILL
X_2422_ _171_ _174_ _170_ _1686_[6] vdd gnd NAND3X1
X_2002_ IRHOLD_valid_bF$buf3 DIMUX[0] _1137_ _1138_ vdd gnd OAI21X1
XFILL_5__2592_ gnd vdd FILL
XFILL_5__2172_ gnd vdd FILL
XFILL_6__2908_ gnd vdd FILL
X_3207_ _831_ _232_ _835_ _104_ vdd gnd OAI21X1
XFILL_1__2584_ gnd vdd FILL
XFILL_7__3551_ gnd vdd FILL
XFILL_1__2164_ gnd vdd FILL
XFILL_7__3131_ gnd vdd FILL
XFILL_3__3451_ gnd vdd FILL
XFILL_3__3031_ gnd vdd FILL
XFILL_8__1894_ gnd vdd FILL
XFILL_5__3377_ gnd vdd FILL
XFILL_1__3369_ gnd vdd FILL
XFILL_4__1794_ gnd vdd FILL
XFILL_0__1694_ gnd vdd FILL
XFILL_6__2661_ gnd vdd FILL
XFILL_8__2679_ gnd vdd FILL
XFILL_8__2259_ gnd vdd FILL
X_3380_ AI[7] _1654_ _1655_ vdd gnd NAND2X1
XFILL_6__2241_ gnd vdd FILL
XFILL_2__2653_ gnd vdd FILL
XFILL182850x148350 gnd vdd FILL
XFILL_2__2233_ gnd vdd FILL
XFILL_8__3200_ gnd vdd FILL
XFILL_4__2999_ gnd vdd FILL
XFILL_4__2579_ gnd vdd FILL
XFILL_4__2159_ gnd vdd FILL
XFILL_4__3520_ gnd vdd FILL
XFILL_4__3100_ gnd vdd FILL
XFILL_0__2899_ gnd vdd FILL
XFILL_0__2479_ gnd vdd FILL
XFILL_6__3446_ gnd vdd FILL
XFILL_0__2059_ gnd vdd FILL
XFILL_6__3026_ gnd vdd FILL
XFILL_0__3420_ gnd vdd FILL
XFILL_2__3438_ gnd vdd FILL
XFILL_2__3018_ gnd vdd FILL
XFILL_0__3000_ gnd vdd FILL
XFILL_5__1863_ gnd vdd FILL
XFILL_1__1855_ gnd vdd FILL
XFILL_7__2822_ gnd vdd FILL
XFILL_7__2402_ gnd vdd FILL
XFILL_3__2722_ gnd vdd FILL
XFILL_3__2302_ gnd vdd FILL
XFILL_5__2648_ gnd vdd FILL
XFILL_5__2228_ gnd vdd FILL
XFILL_2__3191_ gnd vdd FILL
XFILL_3__3507_ gnd vdd FILL
XFILL_6__1932_ gnd vdd FILL
X_2651_ ADD[5] _321_ _376_ _377_ vdd gnd AOI21X1
X_2231_ _881_ _905_ _1365_ vdd gnd NAND2X1
XFILL_2__1924_ gnd vdd FILL
XFILL_6__2717_ gnd vdd FILL
X_3436_ BI[2] _1651_ _1521_ _1652_ _1522_ vdd 
+ gnd
+ AOI22X1
X_3016_ _932_ _1260_ _682_ vdd gnd NAND2X1
XFILL_1__2393_ gnd vdd FILL
XFILL_2__2709_ gnd vdd FILL
XFILL_1_BUFX2_insert70 gnd vdd FILL
XFILL_1_BUFX2_insert71 gnd vdd FILL
XFILL_1_BUFX2_insert72 gnd vdd FILL
XFILL_1_BUFX2_insert73 gnd vdd FILL
XFILL_1_BUFX2_insert74 gnd vdd FILL
XFILL_5__3186_ gnd vdd FILL
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
XFILL_8__2488_ gnd vdd FILL
XFILL_8__2068_ gnd vdd FILL
XFILL_6__2050_ gnd vdd FILL
XFILL_2__2882_ gnd vdd FILL
XFILL_2__2462_ gnd vdd FILL
XFILL_2__2042_ gnd vdd FILL
XFILL_4__2388_ gnd vdd FILL
X_1922_ ABH[1] _1065_ vdd gnd INVX1
XFILL_0__2288_ gnd vdd FILL
X_2707_ PC[9] _415_ _414_ _429_ vdd gnd NAND3X1
XFILL_7__2631_ gnd vdd FILL
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
XFILL_7__3416_ gnd vdd FILL
X_2880_ _550_ _541_ _571_ vdd gnd NOR2X1
XFILL_8__1759_ gnd vdd FILL
XFILL_6__1741_ gnd vdd FILL
X_2460_ _209_ _210_ _211_ vdd gnd AND2X2
X_2040_ _1175_ _1173_ _1176_ vdd gnd NAND2X1
XFILL_2__1733_ gnd vdd FILL
XFILL_8__2700_ gnd vdd FILL
XFILL_4__2600_ gnd vdd FILL
XFILL_0__1979_ gnd vdd FILL
XFILL_6__2946_ gnd vdd FILL
XFILL_6__2526_ gnd vdd FILL
XFILL_6__2106_ gnd vdd FILL
X_3245_ _8_ vdd _1__bF$buf8 clk_bF$buf7 PC[6] vdd 
+ gnd
+ DFFSR
XFILL_0__2920_ gnd vdd FILL
XFILL_2__2938_ gnd vdd FILL
XFILL_0__2500_ gnd vdd FILL
XFILL_2__2518_ gnd vdd FILL
XFILL_7__1902_ gnd vdd FILL
XFILL_3__1802_ gnd vdd FILL
XFILL_5__1728_ gnd vdd FILL
XFILL_8__2297_ gnd vdd FILL
XFILL_2__2691_ gnd vdd FILL
XFILL_2__2271_ gnd vdd FILL
XFILL_4__2197_ gnd vdd FILL
X_1731_ _883_ _878_ _884_ vdd gnd NOR2X1
XFILL_6__3484_ gnd vdd FILL
XFILL_0__2097_ gnd vdd FILL
XFILL_6__3064_ gnd vdd FILL
XFILL_2__3476_ gnd vdd FILL
XFILL_2__3056_ gnd vdd FILL
X_2936_ _607_ _1219__bF$buf0 _611_ _617_ _51_ vdd 
+ gnd
+ AOI22X1
X_2516_ _259_ _1685_[7] vdd gnd INVX1
XFILL_1__1893_ gnd vdd FILL
XFILL_7__2860_ gnd vdd FILL
XFILL_7__2440_ gnd vdd FILL
XFILL_7__2020_ gnd vdd FILL
XFILL_3__2760_ gnd vdd FILL
XFILL_3__2340_ gnd vdd FILL
XFILL_5__2686_ gnd vdd FILL
XFILL_5__2266_ gnd vdd FILL
XFILL_1__2678_ gnd vdd FILL
XFILL_1__2258_ gnd vdd FILL
XFILL_7__3225_ gnd vdd FILL
XFILL_3__3545_ gnd vdd FILL
XFILL_3__3125_ gnd vdd FILL
XFILL_8__1988_ gnd vdd FILL
XFILL_6__1970_ gnd vdd FILL
XFILL_2__1962_ gnd vdd FILL
XFILL_4__1888_ gnd vdd FILL
XFILL_0__1788_ gnd vdd FILL
XFILL_6__2755_ gnd vdd FILL
X_3474_ _1547_ _1551_ _1559_ _1553_ _1560_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2335_ gnd vdd FILL
X_3054_ _693_ _714_ _715_ _71_ vdd gnd OAI21X1
XFILL_2__2747_ gnd vdd FILL
XFILL_2__2327_ gnd vdd FILL
XFILL_7__1711_ gnd vdd FILL
XFILL_0__3514_ gnd vdd FILL
XFILL_5__1957_ gnd vdd FILL
XFILL_1__1949_ gnd vdd FILL
XFILL_7__2916_ gnd vdd FILL
XFILL_2__2080_ gnd vdd FILL
XFILL_3__2816_ gnd vdd FILL
X_1960_ _1098_ _1099_ vdd gnd INVX1
X_2745_ PC[13] _853__bF$buf5 _463_ vdd gnd NAND2X1
X_2325_ _1448_ _1457_ _1458_ vdd gnd NOR2X1
XFILL_5__2495_ gnd vdd FILL
XFILL_5__2075_ gnd vdd FILL
XFILL_1__2487_ gnd vdd FILL
XFILL_7__3454_ gnd vdd FILL
XFILL_1__2067_ gnd vdd FILL
XFILL_7__3034_ gnd vdd FILL
XFILL_8__1797_ gnd vdd FILL
XFILL_5_BUFX2_insert20 gnd vdd FILL
XFILL_5_BUFX2_insert21 gnd vdd FILL
XFILL_5_BUFX2_insert22 gnd vdd FILL
XFILL_5_BUFX2_insert23 gnd vdd FILL
XFILL_5_BUFX2_insert24 gnd vdd FILL
XFILL_2__1771_ gnd vdd FILL
XFILL_5_BUFX2_insert25 gnd vdd FILL
XFILL_5_BUFX2_insert26 gnd vdd FILL
XFILL_5_BUFX2_insert27 gnd vdd FILL
XFILL_4__1697_ gnd vdd FILL
XFILL_6__2984_ gnd vdd FILL
XFILL_6__2564_ gnd vdd FILL
X_3283_ _45_ vdd _1__bF$buf7 clk_bF$buf1 store vdd 
+ gnd
+ DFFSR
XFILL_6__2144_ gnd vdd FILL
XFILL_2__2976_ gnd vdd FILL
XFILL_2__2556_ gnd vdd FILL
XFILL_8__3523_ gnd vdd FILL
XFILL_2__2136_ gnd vdd FILL
XFILL_8__3103_ gnd vdd FILL
XFILL_7__1940_ gnd vdd FILL
XFILL_4__3423_ gnd vdd FILL
XFILL_4__3003_ gnd vdd FILL
XFILL_3__1840_ gnd vdd FILL
XFILL_5__1766_ gnd vdd FILL
XFILL_1__1758_ gnd vdd FILL
XFILL_7__2725_ gnd vdd FILL
XFILL_7__2305_ gnd vdd FILL
XFILL_3__2625_ gnd vdd FILL
XFILL_3__2205_ gnd vdd FILL
XFILL_2__3094_ gnd vdd FILL
X_2974_ _1002__bF$buf3 _643_ _629_ _644_ vdd gnd OAI21X1
XFILL_6__1835_ gnd vdd FILL
X_2554_ ABH[5] _292_ vdd gnd INVX1
X_2134_ _872_ _1269_ RDY_bF$buf1 _1267_ _1270_ vdd 
+ gnd
+ OAI22X1
XFILL_2__1827_ gnd vdd FILL
X_3339_ _0_ vdd _1__bF$buf3 clk_bF$buf0 adj_bcd vdd 
+ gnd
+ DFFSR
XFILL_1__2296_ gnd vdd FILL
XFILL_3__3583_ gnd vdd FILL
XFILL_3__3163_ gnd vdd FILL
XFILL_5__3089_ gnd vdd FILL
XFILL_6__2793_ gnd vdd FILL
XFILL_6__2373_ gnd vdd FILL
X_3092_ _1022_ _748_ vdd gnd INVX2
XFILL_2__2785_ gnd vdd FILL
XFILL_2__2365_ gnd vdd FILL
X_1825_ _972_ _933_ _859_ _967_ BI[4] vdd 
+ gnd
+ OAI22X1
XFILL_4__3232_ gnd vdd FILL
XFILL_6__3158_ gnd vdd FILL
XFILL_0__3552_ gnd vdd FILL
XFILL_0__3132_ gnd vdd FILL
XFILL_5__1995_ gnd vdd FILL
XFILL_1__1987_ gnd vdd FILL
XFILL_7__2954_ gnd vdd FILL
XFILL_7__2534_ gnd vdd FILL
XFILL_7__2114_ gnd vdd FILL
XFILL_3__2854_ gnd vdd FILL
XFILL_3__2434_ gnd vdd FILL
XFILL_3__2014_ gnd vdd FILL
XFILL_3__3219_ gnd vdd FILL
X_2783_ cond_code[0] _497_ vdd gnd INVX1
X_2363_ _882__bF$buf0 _961_ _125_ vdd gnd NOR2X1
XFILL_8__2603_ gnd vdd FILL
XFILL_4__2923_ gnd vdd FILL
XFILL_4__2503_ gnd vdd FILL
XFILL_6__2849_ gnd vdd FILL
X_3568_ _1486_ vdd _1484_ clk_bF$buf0 CO vdd 
+ gnd
+ DFFSR
XFILL_6__2429_ gnd vdd FILL
XFILL_6__2009_ gnd vdd FILL
X_3148_ _779_ _951_ _780_ vdd gnd NOR2X1
XFILL_7__3492_ gnd vdd FILL
XFILL_7__3072_ gnd vdd FILL
XFILL_0__2823_ gnd vdd FILL
XFILL_0__2403_ gnd vdd FILL
XFILL_3__3392_ gnd vdd FILL
XFILL_7__1805_ gnd vdd FILL
XFILL_3__1705_ gnd vdd FILL
XFILL_6__2182_ gnd vdd FILL
XFILL_2__2594_ gnd vdd FILL
XFILL_8__3561_ gnd vdd FILL
XFILL_2__2174_ gnd vdd FILL
XFILL_8__3141_ gnd vdd FILL
XFILL_4__3461_ gnd vdd FILL
XFILL_4__3041_ gnd vdd FILL
XFILL_6__3387_ gnd vdd FILL
XFILL_6_BUFX2_insert70 gnd vdd FILL
XFILL_6_BUFX2_insert71 gnd vdd FILL
XFILL_6_BUFX2_insert72 gnd vdd FILL
XFILL_6_BUFX2_insert73 gnd vdd FILL
XFILL_6_BUFX2_insert74 gnd vdd FILL
XFILL_6_BUFX2_insert75 gnd vdd FILL
XFILL_6_BUFX2_insert76 gnd vdd FILL
XFILL_2__3379_ gnd vdd FILL
XFILL_6_BUFX2_insert77 gnd vdd FILL
XFILL_6_BUFX2_insert78 gnd vdd FILL
XFILL_6_BUFX2_insert79 gnd vdd FILL
X_2839_ _538_ _1350_ _539_ vdd gnd NOR2X1
X_2419_ V _141_ _172_ vdd gnd NAND2X1
XFILL_1__1796_ gnd vdd FILL
XFILL_7__2763_ gnd vdd FILL
XFILL_7__2343_ gnd vdd FILL
XFILL_3__2663_ gnd vdd FILL
XFILL_3__2243_ gnd vdd FILL
XFILL_5__2589_ gnd vdd FILL
XFILL_5__2169_ gnd vdd FILL
XFILL_7__3548_ gnd vdd FILL
XFILL_5__3530_ gnd vdd FILL
XFILL_5__3110_ gnd vdd FILL
XFILL_7__3128_ gnd vdd FILL
XFILL_1__3522_ gnd vdd FILL
XFILL_1__3102_ gnd vdd FILL
XFILL_3__3448_ gnd vdd FILL
XFILL_3__3028_ gnd vdd FILL
XFILL_6__1873_ gnd vdd FILL
X_2592_ _322_ _321_ _323_ vdd gnd NOR2X1
X_2172_ _853__bF$buf7 _1302_ _1306_ _1129__bF$buf4 _1307_ vdd 
+ gnd
+ AOI22X1
XFILL_2__1865_ gnd vdd FILL
XFILL_8__2832_ gnd vdd FILL
XFILL_8__2412_ gnd vdd FILL
XFILL_4__2732_ gnd vdd FILL
XFILL_4__2312_ gnd vdd FILL
XFILL_6__2658_ gnd vdd FILL
X_3377_ alu_op[0] _1651_ _1652_ vdd gnd NAND2X1
XFILL_6__2238_ gnd vdd FILL
XFILL_0__2632_ gnd vdd FILL
XFILL_0__2212_ gnd vdd FILL
XFILL_4__3517_ gnd vdd FILL
XFILL_3__1934_ gnd vdd FILL
XFILL_0__3417_ gnd vdd FILL
XFILL_7__2819_ gnd vdd FILL
XFILL_5__2801_ gnd vdd FILL
XFILL_8__3370_ gnd vdd FILL
XFILL_3__2719_ gnd vdd FILL
X_1863_ _991_ _997_ index_y _1007_ vdd gnd OAI21X1
XFILL_6__3196_ gnd vdd FILL
XFILL_0__3590_ gnd vdd FILL
XFILL_2__3188_ gnd vdd FILL
XFILL_0__3170_ gnd vdd FILL
XFILL184650x132750 gnd vdd FILL
XFILL_6__1929_ gnd vdd FILL
X_2648_ _853__bF$buf4 _374_ _369_ _6_ vdd gnd OAI21X1
X_2228_ _1362_ _1293_ _1483_[1] vdd gnd OR2X2
XFILL_7__2992_ gnd vdd FILL
XFILL_7__2572_ gnd vdd FILL
XFILL_7__2152_ gnd vdd FILL
XFILL_0__1903_ gnd vdd FILL
XFILL_3__2892_ gnd vdd FILL
XFILL_3__2472_ gnd vdd FILL
XFILL_3__2052_ gnd vdd FILL
XFILL_5__2398_ gnd vdd FILL
XFILL_8__2641_ gnd vdd FILL
XFILL_8__2221_ gnd vdd FILL
XFILL_4__2961_ gnd vdd FILL
XFILL_4__2541_ gnd vdd FILL
XFILL_4__2121_ gnd vdd FILL
XFILL_6__2887_ gnd vdd FILL
XFILL_6__2467_ gnd vdd FILL
XFILL_6__2047_ gnd vdd FILL
X_3186_ _813_ _817_ _811_ _818_ vdd gnd OAI21X1
XFILL_0__2861_ gnd vdd FILL
XFILL_2__2879_ gnd vdd FILL
XFILL_2__2459_ gnd vdd FILL
XFILL_0__2441_ gnd vdd FILL
XFILL_2__2039_ gnd vdd FILL
XFILL_0__2021_ gnd vdd FILL
XFILL_8__3426_ gnd vdd FILL
XFILL_8__3006_ gnd vdd FILL
XFILL_2__3400_ gnd vdd FILL
X_1919_ _AXYS[0]_[1] _1020_ _1062_ vdd gnd NAND2X1
XFILL_7__1843_ gnd vdd FILL
XFILL183750x35250 gnd vdd FILL
XFILL_3__1743_ gnd vdd FILL
XFILL_0__3226_ gnd vdd FILL
XFILL_5__2610_ gnd vdd FILL
XFILL_7__2628_ gnd vdd FILL
XFILL_7__2208_ gnd vdd FILL
XFILL_1__2602_ gnd vdd FILL
XFILL_3__2948_ gnd vdd FILL
XFILL_3__2528_ gnd vdd FILL
XFILL_3__2108_ gnd vdd FILL
XFILL_8__1912_ gnd vdd FILL
XFILL_4__1812_ gnd vdd FILL
X_2877_ adc_sbc _569_ vdd gnd INVX1
XFILL_6__1738_ gnd vdd FILL
X_2457_ _198_ _207_ _208_ vdd gnd NAND2X1
X_2037_ _1172_ _1173_ vdd gnd INVX1
XFILL_7__2381_ gnd vdd FILL
XFILL_0__1712_ gnd vdd FILL
XFILL_3__2281_ gnd vdd FILL
XFILL_1__2199_ gnd vdd FILL
XFILL_7__3586_ gnd vdd FILL
XFILL_7__3166_ gnd vdd FILL
XFILL_0__2917_ gnd vdd FILL
XFILL_1__3560_ gnd vdd FILL
XFILL_1__3140_ gnd vdd FILL
XFILL_3__3486_ gnd vdd FILL
XFILL_3__3066_ gnd vdd FILL
XFILL_8__2870_ gnd vdd FILL
XFILL_8__2450_ gnd vdd FILL
XFILL_8__2030_ gnd vdd FILL
XFILL_4__2770_ gnd vdd FILL
XFILL_4__2350_ gnd vdd FILL
XFILL_6__2696_ gnd vdd FILL
XFILL_6__2276_ gnd vdd FILL
XFILL_0__2670_ gnd vdd FILL
XFILL_2__2688_ gnd vdd FILL
XFILL_0__2250_ gnd vdd FILL
XFILL_2__2268_ gnd vdd FILL
X_1728_ state[5] _881_ vdd gnd INVX2
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
XFILL_8__1721_ gnd vdd FILL
XFILL_5__3204_ gnd vdd FILL
XFILL_6__1967_ gnd vdd FILL
X_2686_ _407_ _388_ _408_ _394_ _409_ vdd 
+ gnd
+ AOI22X1
X_2266_ _1383_ _1400_ vdd gnd INVX1
XFILL_7__2190_ gnd vdd FILL
XFILL_0__1941_ gnd vdd FILL
XFILL_2__1959_ gnd vdd FILL
XFILL_8__2926_ gnd vdd FILL
XFILL_8__2506_ gnd vdd FILL
XFILL_3__2090_ gnd vdd FILL
XFILL_2__2900_ gnd vdd FILL
XFILL_4__2826_ gnd vdd FILL
XFILL_4__2406_ gnd vdd FILL
XFILL_7__3395_ gnd vdd FILL
XFILL_0__2726_ gnd vdd FILL
XFILL_0__2306_ gnd vdd FILL
XFILL_7__1708_ gnd vdd FILL
XFILL_6__2085_ gnd vdd FILL
XFILL_2__2497_ gnd vdd FILL
XFILL_8__3464_ gnd vdd FILL
XFILL_2__2077_ gnd vdd FILL
XFILL_8__3044_ gnd vdd FILL
X_1957_ _AXYS[2]_[5] _1023_ _1012_ _AXYS[3]_[5] _1096_ vdd 
+ gnd
+ AOI22X1
XFILL_7__1881_ gnd vdd FILL
XFILL_4__3364_ gnd vdd FILL
XFILL_3__1781_ gnd vdd FILL
XFILL_1__1699_ gnd vdd FILL
XFILL_7__2666_ gnd vdd FILL
XFILL_7__2246_ gnd vdd FILL
XFILL_1__2640_ gnd vdd FILL
XFILL_1__2220_ gnd vdd FILL
XFILL_3__2986_ gnd vdd FILL
XFILL_3__2566_ gnd vdd FILL
XFILL_3__2146_ gnd vdd FILL
XFILL_8__1950_ gnd vdd FILL
XFILL_5__3433_ gnd vdd FILL
XFILL_5__3013_ gnd vdd FILL
XFILL_1__3425_ gnd vdd FILL
XFILL_1__3005_ gnd vdd FILL
XFILL_4__1850_ gnd vdd FILL
XFILL_6__1776_ gnd vdd FILL
X_2495_ _861_ _205_ _239_ _240_ _241_ vdd 
+ gnd
+ OAI22X1
X_2075_ _1189_ _1198_ _1210_ _1211_ vdd gnd AOI21X1
XFILL_2__1768_ gnd vdd FILL
XFILL_0__1750_ gnd vdd FILL
XFILL_8__2735_ gnd vdd FILL
XFILL_8__2315_ gnd vdd FILL
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
X_1766_ _918__bF$buf2 _916_ _919_ vdd gnd NOR2X1
XFILL_7__1690_ gnd vdd FILL
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
XFILL_2__1997_ gnd vdd FILL
XFILL_8__2964_ gnd vdd FILL
XFILL_8__2544_ gnd vdd FILL
XFILL_8__2124_ gnd vdd FILL
XFILL_4__2864_ gnd vdd FILL
XFILL_4__2444_ gnd vdd FILL
XFILL_4__2024_ gnd vdd FILL
X_3089_ _AXYS[0]_[7] _693_ _746_ vdd gnd NAND2X1
XFILL_0__2764_ gnd vdd FILL
XFILL_0__2344_ gnd vdd FILL
XFILL_7__1746_ gnd vdd FILL
XFILL_4__3229_ gnd vdd FILL
XFILL_1__1720_ gnd vdd FILL
XFILL_0__3549_ gnd vdd FILL
XFILL_0__3129_ gnd vdd FILL
XFILL_5__2933_ gnd vdd FILL
XFILL_5__2513_ gnd vdd FILL
XFILL_8__3082_ gnd vdd FILL
XFILL_1__2925_ gnd vdd FILL
XFILL_1__2505_ gnd vdd FILL
X_1995_ IRQ _1131_ vdd gnd INVX1
XFILL184050x167850 gnd vdd FILL
XFILL_8__1815_ gnd vdd FILL
XFILL184650x109350 gnd vdd FILL
XFILL_4__1715_ gnd vdd FILL
XFILL_7__2284_ gnd vdd FILL
X_3301_ _55_ clk_bF$buf10 IRHOLD[2] vdd gnd DFFPOSX1
XFILL_3__2184_ gnd vdd FILL
XFILL_7__3489_ gnd vdd FILL
XFILL_5__3471_ gnd vdd FILL
XFILL_5__3051_ gnd vdd FILL
XFILL_7__3069_ gnd vdd FILL
XFILL_1__3463_ gnd vdd FILL
XFILL_1__3043_ gnd vdd FILL
XFILL_3__3389_ gnd vdd FILL
XFILL_8__2773_ gnd vdd FILL
XFILL_8__2353_ gnd vdd FILL
XFILL_4__2673_ gnd vdd FILL
XFILL_4__2253_ gnd vdd FILL
XFILL_6__2599_ gnd vdd FILL
XFILL_6__2179_ gnd vdd FILL
XFILL_0__2993_ gnd vdd FILL
XFILL_0__2573_ gnd vdd FILL
XFILL_8__3558_ gnd vdd FILL
XFILL_6__3540_ gnd vdd FILL
XFILL_0__2153_ gnd vdd FILL
XFILL_6__3120_ gnd vdd FILL
XFILL_8__3138_ gnd vdd FILL
XFILL_2__3532_ gnd vdd FILL
XFILL_2__3112_ gnd vdd FILL
XFILL_7__1975_ gnd vdd FILL
XFILL_4__3458_ gnd vdd FILL
XFILL_4__3038_ gnd vdd FILL
XFILL_3__1875_ gnd vdd FILL
XFILL_9__2002_ gnd vdd FILL
XFILL_5__2742_ gnd vdd FILL
XFILL_5__2322_ gnd vdd FILL
XFILL_1__2734_ gnd vdd FILL
XFILL181650x148350 gnd vdd FILL
XFILL_1__2314_ gnd vdd FILL
XFILL_3__3601_ gnd vdd FILL
XFILL_5__3527_ gnd vdd FILL
XFILL_5__3107_ gnd vdd FILL
XFILL_1__3519_ gnd vdd FILL
XFILL_4__1944_ gnd vdd FILL
X_2589_ _886__bF$buf0 _926__bF$buf3 _1193_ _193_ _320_ vdd 
+ gnd
+ OAI22X1
X_2169_ _1297_ _1303_ _1304_ vdd gnd NOR2X1
XFILL_7__2093_ gnd vdd FILL
XFILL_0__1844_ gnd vdd FILL
XFILL_8__2829_ gnd vdd FILL
XFILL_6__2811_ gnd vdd FILL
X_3530_ _1597_ _1616_ vdd gnd INVX1
XFILL_8__2409_ gnd vdd FILL
X_3110_ _1023_ _758_ vdd gnd INVX2
XFILL_2__2803_ gnd vdd FILL
XFILL_4__2729_ gnd vdd FILL
XFILL_4__2309_ gnd vdd FILL
XFILL_0__2629_ gnd vdd FILL
XFILL_0__2209_ gnd vdd FILL
XFILL_3__3198_ gnd vdd FILL
XFILL_8__2582_ gnd vdd FILL
XFILL_8__2162_ gnd vdd FILL
XFILL_4__2482_ gnd vdd FILL
XFILL_4__2062_ gnd vdd FILL
XFILL_0__2382_ gnd vdd FILL
XFILL_8__3367_ gnd vdd FILL
XFILL_7__1784_ gnd vdd FILL
X_2801_ _1002__bF$buf1 _499_ _509_ vdd gnd NOR2X1
XFILL_0__3587_ gnd vdd FILL
XFILL_0__3167_ gnd vdd FILL
XFILL_7__2989_ gnd vdd FILL
XFILL_5__2971_ gnd vdd FILL
XFILL_7__2569_ gnd vdd FILL
XFILL_5__2551_ gnd vdd FILL
XFILL_7__2149_ gnd vdd FILL
XFILL_5__2131_ gnd vdd FILL
XFILL_1__2963_ gnd vdd FILL
XFILL_1__2543_ gnd vdd FILL
XFILL_7__3510_ gnd vdd FILL
XFILL_1__2123_ gnd vdd FILL
XFILL_3__2889_ gnd vdd FILL
XFILL_3__2469_ gnd vdd FILL
XFILL_3__2049_ gnd vdd FILL
XFILL_3__3410_ gnd vdd FILL
XFILL_8__1853_ gnd vdd FILL
XFILL_4__1753_ gnd vdd FILL
X_2398_ _151_ _154_ _150_ _1686_[2] vdd gnd NAND3X1
XFILL183150x140550 gnd vdd FILL
XFILL_8__2638_ gnd vdd FILL
XFILL_6__2620_ gnd vdd FILL
XFILL_6__2200_ gnd vdd FILL
XFILL_8__2218_ gnd vdd FILL
XFILL_2__2612_ gnd vdd FILL
XFILL_4__2958_ gnd vdd FILL
XFILL_4__2538_ gnd vdd FILL
XFILL_4__2118_ gnd vdd FILL
XFILL_0__2858_ gnd vdd FILL
XFILL_0__2438_ gnd vdd FILL
XFILL_0__2018_ gnd vdd FILL
XFILL_6__3405_ gnd vdd FILL
XFILL_1__3081_ gnd vdd FILL
XFILL_5__1822_ gnd vdd FILL
XFILL_8__2391_ gnd vdd FILL
XFILL_1__1814_ gnd vdd FILL
XFILL_4__2291_ gnd vdd FILL
XFILL_5__2607_ gnd vdd FILL
XFILL_0__2191_ gnd vdd FILL
XFILL_8__3596_ gnd vdd FILL
XFILL_8__3176_ gnd vdd FILL
XFILL_2__3150_ gnd vdd FILL
XFILL_4__3496_ gnd vdd FILL
XFILL_4__3076_ gnd vdd FILL
XFILL_8__1909_ gnd vdd FILL
X_2610_ _340_ _341_ vdd gnd INVX1
XFILL_0__3396_ gnd vdd FILL
XFILL_4__1809_ gnd vdd FILL
XFILL_7__2798_ gnd vdd FILL
XFILL_5__2780_ gnd vdd FILL
XFILL_5__2360_ gnd vdd FILL
XFILL_7__2378_ gnd vdd FILL
XFILL_0__1709_ gnd vdd FILL
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
XFILL_8__2867_ gnd vdd FILL
XFILL_8__2447_ gnd vdd FILL
XFILL_8__2027_ gnd vdd FILL
XFILL_2__2841_ gnd vdd FILL
XFILL_2__2421_ gnd vdd FILL
XFILL_2__2001_ gnd vdd FILL
XFILL_4__2767_ gnd vdd FILL
XFILL_4__2347_ gnd vdd FILL
XFILL_0__2667_ gnd vdd FILL
XFILL_0__2247_ gnd vdd FILL
XFILL_6__3214_ gnd vdd FILL
XFILL_2__3206_ gnd vdd FILL
XFILL_3__1969_ gnd vdd FILL
XFILL_3__2910_ gnd vdd FILL
XFILL_5__2836_ gnd vdd FILL
XFILL_5__2416_ gnd vdd FILL
XFILL_1__2828_ gnd vdd FILL
XFILL_1__2408_ gnd vdd FILL
X_1898_ _1033_ _1041_ _1042_ vdd gnd NOR2X1
XFILL_6__1700_ gnd vdd FILL
XFILL_8__1718_ gnd vdd FILL
XFILL_7__2187_ gnd vdd FILL
XFILL_0__1938_ gnd vdd FILL
XFILL_6__2905_ gnd vdd FILL
X_3204_ _802_ _829_ ABL[2] _834_ vdd gnd OAI21X1
XFILL_1__2581_ gnd vdd FILL
XFILL_1__2161_ gnd vdd FILL
XFILL_3__2087_ gnd vdd FILL
XFILL_8__1891_ gnd vdd FILL
XFILL_5__3374_ gnd vdd FILL
XFILL_1__3366_ gnd vdd FILL
XFILL_4__1791_ gnd vdd FILL
XFILL_0__1691_ gnd vdd FILL
XFILL_8__2676_ gnd vdd FILL
XFILL_8__2256_ gnd vdd FILL
XFILL_2__2650_ gnd vdd FILL
XFILL_2__2230_ gnd vdd FILL
XFILL_4__2996_ gnd vdd FILL
XFILL_4__2576_ gnd vdd FILL
XFILL_4__2156_ gnd vdd FILL
XFILL_0__2896_ gnd vdd FILL
XFILL_0__2476_ gnd vdd FILL
XFILL_6__3443_ gnd vdd FILL
XFILL_0__2056_ gnd vdd FILL
XFILL_6__3023_ gnd vdd FILL
XFILL_2__3435_ gnd vdd FILL
XFILL_2__3015_ gnd vdd FILL
XFILL_5__1860_ gnd vdd FILL
XFILL_7__1878_ gnd vdd FILL
XFILL_1__1852_ gnd vdd FILL
XFILL_3__1778_ gnd vdd FILL
XFILL_5__2645_ gnd vdd FILL
XFILL_5__2225_ gnd vdd FILL
XFILL_1__2637_ gnd vdd FILL
XFILL_1__2217_ gnd vdd FILL
XFILL_3__3504_ gnd vdd FILL
XFILL_8__1947_ gnd vdd FILL
XFILL_2__1921_ gnd vdd FILL
XFILL_4__1847_ gnd vdd FILL
XFILL_0__1747_ gnd vdd FILL
XFILL_6__2714_ gnd vdd FILL
X_3433_ _1518_ _1519_ vdd gnd INVX1
X_3013_ plp ADD[0] _674_ _679_ vdd gnd AOI21X1
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
XFILL_0_CLKBUF1_insert28 gnd vdd FILL
XFILL_0_CLKBUF1_insert29 gnd vdd FILL
XFILL_8__2485_ gnd vdd FILL
XFILL_8__2065_ gnd vdd FILL
XFILL_1__1908_ gnd vdd FILL
XFILL_4__2385_ gnd vdd FILL
XFILL_0__2285_ gnd vdd FILL
X_2704_ _422_ _425_ _421_ _426_ vdd gnd NOR3X1
XFILL_9__2134_ gnd vdd FILL
XFILL_5__2874_ gnd vdd FILL
XFILL_5__2454_ gnd vdd FILL
XFILL_5__2034_ gnd vdd FILL
XFILL_1__2866_ gnd vdd FILL
XFILL_1__2446_ gnd vdd FILL
XFILL_1__2026_ gnd vdd FILL
XFILL_7__3413_ gnd vdd FILL
XFILL_8__1756_ gnd vdd FILL
XFILL_2__1730_ gnd vdd FILL
XFILL_0__1976_ gnd vdd FILL
XFILL_6__2943_ gnd vdd FILL
XFILL_6__2523_ gnd vdd FILL
XFILL_6__2103_ gnd vdd FILL
X_3242_ _5_ vdd _1__bF$buf0 clk_bF$buf2 PC[3] vdd 
+ gnd
+ DFFSR
XFILL_2__2935_ gnd vdd FILL
XFILL_2__2515_ gnd vdd FILL
XFILL_9__1825_ gnd vdd FILL
XFILL_5__1725_ gnd vdd FILL
XFILL_8__2294_ gnd vdd FILL
XFILL_1__1717_ gnd vdd FILL
XFILL_4__2194_ gnd vdd FILL
XFILL_6__3481_ gnd vdd FILL
XFILL_8__3499_ gnd vdd FILL
XFILL_0__2094_ gnd vdd FILL
XFILL_6__3061_ gnd vdd FILL
XFILL_8__3079_ gnd vdd FILL
XFILL_2__3473_ gnd vdd FILL
XFILL_2__3053_ gnd vdd FILL
XFILL_4__3399_ gnd vdd FILL
X_2933_ _498_ _1159_ _1175_ _615_ vdd gnd OAI21X1
X_2513_ _256_ _257_ vdd gnd INVX1
XFILL_1__1890_ gnd vdd FILL
XFILL_5__2683_ gnd vdd FILL
XFILL_5__2263_ gnd vdd FILL
XFILL_1__2675_ gnd vdd FILL
XFILL_1__2255_ gnd vdd FILL
XFILL_7__3222_ gnd vdd FILL
XFILL_3__3542_ gnd vdd FILL
XFILL_3__3122_ gnd vdd FILL
XFILL_8__1985_ gnd vdd FILL
XFILL_5__3468_ gnd vdd FILL
XFILL_5__3048_ gnd vdd FILL
XFILL_4__1885_ gnd vdd FILL
XFILL183150x117150 gnd vdd FILL
XFILL_0__1785_ gnd vdd FILL
XFILL_6__2752_ gnd vdd FILL
X_3471_ _1539_ _1543_ alu_shift_right _1557_ vdd gnd AOI21X1
XFILL_6__2332_ gnd vdd FILL
X_3051_ _1281_ _712_ _713_ vdd gnd NOR2X1
XFILL_2__2744_ gnd vdd FILL
XFILL_2__2324_ gnd vdd FILL
XFILL_6__3537_ gnd vdd FILL
XFILL_6__3117_ gnd vdd FILL
XFILL_0__3511_ gnd vdd FILL
XFILL_2__3529_ gnd vdd FILL
XFILL_2__3109_ gnd vdd FILL
XFILL_5__1954_ gnd vdd FILL
XFILL_1__1946_ gnd vdd FILL
XFILL_7__2913_ gnd vdd FILL
XFILL_3__2813_ gnd vdd FILL
XFILL_5__2739_ gnd vdd FILL
XFILL_5__2319_ gnd vdd FILL
XFILL_2_BUFX2_insert90 gnd vdd FILL
XFILL_2_BUFX2_insert91 gnd vdd FILL
XFILL_2_BUFX2_insert92 gnd vdd FILL
XFILL_2_BUFX2_insert93 gnd vdd FILL
XFILL_2_BUFX2_insert94 gnd vdd FILL
XFILL_2_BUFX2_insert95 gnd vdd FILL
XFILL_2_BUFX2_insert96 gnd vdd FILL
XFILL_2_BUFX2_insert97 gnd vdd FILL
X_2742_ _460_ _459_ _461_ vdd gnd XOR2X1
X_2322_ _1332_ _1455_ vdd gnd INVX1
XFILL_5__2492_ gnd vdd FILL
XFILL_5__2072_ gnd vdd FILL
XFILL_6__2808_ gnd vdd FILL
X_3527_ _1612_ _1581_ _1610_ _1613_ vdd gnd AOI21X1
X_3107_ _691__bF$buf3 _748_ _AXYS[1]_[7] _756_ vdd gnd OAI21X1
XFILL_1__2484_ gnd vdd FILL
XFILL_7__3451_ gnd vdd FILL
XFILL_1__2064_ gnd vdd FILL
XFILL_7__3031_ gnd vdd FILL
XFILL_8__1794_ gnd vdd FILL
XFILL_4__1694_ gnd vdd FILL
XFILL_8__2999_ gnd vdd FILL
XFILL_6__2981_ gnd vdd FILL
XFILL_8__2579_ gnd vdd FILL
XFILL_6__2561_ gnd vdd FILL
X_3280_ _42_ vdd _1__bF$buf6 clk_bF$buf6 inc vdd 
+ gnd
+ DFFSR
XFILL_6__2141_ gnd vdd FILL
XFILL_8__2159_ gnd vdd FILL
XFILL_2__2973_ gnd vdd FILL
XFILL_2__2553_ gnd vdd FILL
XFILL_8__3520_ gnd vdd FILL
XFILL_2__2133_ gnd vdd FILL
XFILL_8__3100_ gnd vdd FILL
XFILL_4__2899_ gnd vdd FILL
XFILL_4__2479_ gnd vdd FILL
XFILL_4__2059_ gnd vdd FILL
XFILL_4__3420_ gnd vdd FILL
XFILL_4__3000_ gnd vdd FILL
XFILL_0__2799_ gnd vdd FILL
XFILL_0__2379_ gnd vdd FILL
XFILL_5__1763_ gnd vdd FILL
XFILL_1__1755_ gnd vdd FILL
XFILL_7__2722_ gnd vdd FILL
XFILL_7__2302_ gnd vdd FILL
XFILL_3__2622_ gnd vdd FILL
XFILL_3__2202_ gnd vdd FILL
XFILL_5__2968_ gnd vdd FILL
XFILL_5__2548_ gnd vdd FILL
XFILL_5__2128_ gnd vdd FILL
XFILL_7__3507_ gnd vdd FILL
XFILL_2__3091_ gnd vdd FILL
XFILL_3__3407_ gnd vdd FILL
X_2971_ _636_ _640_ _641_ _62_ vdd gnd OAI21X1
XFILL_6__1832_ gnd vdd FILL
X_2551_ _289_ _290_ vdd gnd INVX1
X_2131_ _869__bF$buf1 _905_ _1267_ vdd gnd NAND2X1
XFILL_2__1824_ gnd vdd FILL
XFILL_6__2617_ gnd vdd FILL
X_3336_ _90_ vdd _1__bF$buf1 clk_bF$buf4 _AXYS[2]_[5] vdd 
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
XFILL_8__2388_ gnd vdd FILL
XFILL_2__2782_ gnd vdd FILL
XFILL_2__2362_ gnd vdd FILL
XFILL_4__2288_ gnd vdd FILL
X_1822_ PC[3] _971_ vdd gnd INVX2
XFILL_0__2188_ gnd vdd FILL
XFILL_6__3155_ gnd vdd FILL
XFILL_2__3147_ gnd vdd FILL
XFILL_5__1992_ gnd vdd FILL
X_2607_ _1002__bF$buf4 _1145_ _338_ vdd gnd NOR2X1
XFILL_1__1984_ gnd vdd FILL
XFILL_7__2951_ gnd vdd FILL
XFILL_7__2531_ gnd vdd FILL
XFILL_7__2111_ gnd vdd FILL
XFILL_3__2851_ gnd vdd FILL
XFILL_3__2431_ gnd vdd FILL
XFILL_3__2011_ gnd vdd FILL
XFILL_5__2777_ gnd vdd FILL
XFILL_5__2357_ gnd vdd FILL
XFILL_1__2769_ gnd vdd FILL
XFILL_1__2349_ gnd vdd FILL
XFILL_3__3216_ gnd vdd FILL
X_2780_ NMI _494_ _495_ vdd gnd NAND2X1
X_2360_ op[1] _123_ vdd gnd INVX1
XFILL_8__2600_ gnd vdd FILL
XFILL_4__1979_ gnd vdd FILL
XFILL_4__2920_ gnd vdd FILL
XFILL_4__2500_ gnd vdd FILL
XFILL_0__1879_ gnd vdd FILL
XFILL_6__2846_ gnd vdd FILL
X_3565_ AI[7] RDY_bF$buf2 _1641_ vdd gnd NAND2X1
XFILL_6__2426_ gnd vdd FILL
XFILL_6__2006_ gnd vdd FILL
X_3145_ state[4] _1035_ _776_ _777_ vdd gnd OAI21X1
XFILL_0__2820_ gnd vdd FILL
XFILL_2__2838_ gnd vdd FILL
XFILL_0__2400_ gnd vdd FILL
XFILL_2__2418_ gnd vdd FILL
XFILL_7__1802_ gnd vdd FILL
XFILL_3__1702_ gnd vdd FILL
XFILL_8__2197_ gnd vdd FILL
XFILL_2__2591_ gnd vdd FILL
XFILL_2__2171_ gnd vdd FILL
XFILL_4__2097_ gnd vdd FILL
XFILL_3__2907_ gnd vdd FILL
XFILL_6__3384_ gnd vdd FILL
XFILL_6_BUFX2_insert40 gnd vdd FILL
XFILL_6_BUFX2_insert41 gnd vdd FILL
XFILL_6_BUFX2_insert42 gnd vdd FILL
XFILL_6_BUFX2_insert43 gnd vdd FILL
XFILL_6_BUFX2_insert44 gnd vdd FILL
XFILL_6_BUFX2_insert45 gnd vdd FILL
XFILL_6_BUFX2_insert46 gnd vdd FILL
XFILL_2__3376_ gnd vdd FILL
XFILL_6_BUFX2_insert47 gnd vdd FILL
XFILL_6_BUFX2_insert48 gnd vdd FILL
XFILL_6_BUFX2_insert49 gnd vdd FILL
X_2836_ _536_ _535_ _1219__bF$buf1 _537_ vdd gnd AOI21X1
X_2416_ _160_ _1099_ _169_ _1686_[5] vdd gnd OAI21X1
XFILL_1__1793_ gnd vdd FILL
XFILL_7__2760_ gnd vdd FILL
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
XFILL_3__3445_ gnd vdd FILL
XFILL_3__3025_ gnd vdd FILL
XFILL_6__1870_ gnd vdd FILL
XFILL_8__1888_ gnd vdd FILL
XFILL_2__1862_ gnd vdd FILL
XFILL_4__1788_ gnd vdd FILL
XFILL_0__1688_ gnd vdd FILL
XFILL_6__2655_ gnd vdd FILL
X_3374_ RDY_bF$buf2 _1649_ vdd gnd INVX4
XFILL_6__2235_ gnd vdd FILL
XFILL_2__2647_ gnd vdd FILL
XFILL_2__2227_ gnd vdd FILL
XFILL_4__3514_ gnd vdd FILL
XFILL_3__1931_ gnd vdd FILL
XFILL_0__3414_ gnd vdd FILL
XFILL_5__1857_ gnd vdd FILL
XFILL_1__1849_ gnd vdd FILL
XFILL_7__2816_ gnd vdd FILL
XFILL184350x7950 gnd vdd FILL
XFILL_3__2716_ gnd vdd FILL
X_1860_ _1000_ src_reg[1] _1003_ _1004_ vdd gnd AOI21X1
XFILL_6__3193_ gnd vdd FILL
XFILL_2__3185_ gnd vdd FILL
XFILL_6__1926_ gnd vdd FILL
X_2645_ ADD[4] _321_ _371_ _372_ vdd gnd AOI21X1
X_2225_ _1351_ _1352_ _1359_ _1360_ vdd gnd AOI21X1
XFILL_9__2075_ gnd vdd FILL
XFILL_2__1918_ gnd vdd FILL
XFILL_0__1900_ gnd vdd FILL
XFILL_5__2395_ gnd vdd FILL
XFILL_1__2387_ gnd vdd FILL
XFILL_8__1697_ gnd vdd FILL
XFILL_6__2884_ gnd vdd FILL
XFILL_6__2464_ gnd vdd FILL
XFILL_6__2044_ gnd vdd FILL
X_3183_ state[4] _1032_ _1227_ _815_ vdd gnd OAI21X1
XFILL_2__2876_ gnd vdd FILL
XFILL_2__2456_ gnd vdd FILL
XFILL_2__2036_ gnd vdd FILL
XFILL_8__3423_ gnd vdd FILL
XFILL_8__3003_ gnd vdd FILL
X_1916_ _1047_ _1026_ _1059_ AI[0] vdd gnd OAI21X1
XFILL_7__1840_ gnd vdd FILL
XFILL_9__1766_ gnd vdd FILL
XFILL_3__1740_ gnd vdd FILL
XFILL_0__3223_ gnd vdd FILL
XFILL_7__2625_ gnd vdd FILL
XFILL_7__2205_ gnd vdd FILL
XFILL_3__2945_ gnd vdd FILL
XFILL_3__2525_ gnd vdd FILL
XFILL_3__2105_ gnd vdd FILL
X_2874_ D _1159_ _567_ vdd gnd NAND2X1
XFILL_6__1735_ gnd vdd FILL
X_2454_ _204_ _205_ vdd gnd INVX1
X_2034_ _1169_ IRHOLD[3] _1145_ _1170_ vdd gnd OAI21X1
XFILL_2__1727_ gnd vdd FILL
X_3239_ _2_ vdd _1__bF$buf8 clk_bF$buf8 PC[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2196_ gnd vdd FILL
XFILL_7__3583_ gnd vdd FILL
XFILL_7__3163_ gnd vdd FILL
XFILL_0__2914_ gnd vdd FILL
XFILL_3__3483_ gnd vdd FILL
XFILL_3__3063_ gnd vdd FILL
XFILL_6__2693_ gnd vdd FILL
XFILL_6__2273_ gnd vdd FILL
XFILL_2__2685_ gnd vdd FILL
XFILL_2__2265_ gnd vdd FILL
XFILL_8__3232_ gnd vdd FILL
X_1725_ _877_ _878_ vdd gnd INVX1
XFILL_4__3552_ gnd vdd FILL
XFILL_4__3132_ gnd vdd FILL
XFILL_6__3478_ gnd vdd FILL
XFILL_6__3058_ gnd vdd FILL
XFILL_0__3452_ gnd vdd FILL
XFILL_0__3032_ gnd vdd FILL
XFILL_5__1895_ gnd vdd FILL
XFILL_1__1887_ gnd vdd FILL
XFILL_7__2854_ gnd vdd FILL
XFILL_7__2434_ gnd vdd FILL
XFILL_7__2014_ gnd vdd FILL
XFILL_3__2754_ gnd vdd FILL
XFILL_3__2334_ gnd vdd FILL
XFILL_5__3201_ gnd vdd FILL
XFILL_7__3219_ gnd vdd FILL
XFILL_3__3539_ gnd vdd FILL
XFILL_3__3119_ gnd vdd FILL
XFILL_6__1964_ gnd vdd FILL
X_2683_ _260_ _324_ _405_ _406_ vdd gnd OAI21X1
X_2263_ _1330_ _1396_ _1393_ _1397_ vdd gnd NAND3X1
XFILL_2__1956_ gnd vdd FILL
XFILL_8__2923_ gnd vdd FILL
XFILL_8__2503_ gnd vdd FILL
XFILL_4__2823_ gnd vdd FILL
XFILL_4__2403_ gnd vdd FILL
XFILL_6__2749_ gnd vdd FILL
X_3468_ alu_op[1] _1542_ alu_op[0] _1554_ vdd gnd MUX2X1
XFILL_6__2329_ gnd vdd FILL
X_3048_ _709_ _710_ vdd gnd INVX1
XFILL_7__3392_ gnd vdd FILL
XFILL_0__2723_ gnd vdd FILL
XFILL_0__2303_ gnd vdd FILL
XFILL_7__1705_ gnd vdd FILL
XFILL_0__3508_ gnd vdd FILL
XFILL_6__2082_ gnd vdd FILL
XFILL_2__2494_ gnd vdd FILL
XFILL_8__3461_ gnd vdd FILL
XFILL_2__2074_ gnd vdd FILL
XFILL_8__3041_ gnd vdd FILL
X_1954_ _1054_ ADD[4] _1093_ _1094_ vdd gnd AOI21X1
X_2739_ DIMUX[4] _446_ _457_ _458_ vdd gnd AOI21X1
X_2319_ _1258_ _1291_ _1452_ vdd gnd OR2X2
XFILL_1__1696_ gnd vdd FILL
XFILL_7__2663_ gnd vdd FILL
XFILL_7__2243_ gnd vdd FILL
XFILL_3__2983_ gnd vdd FILL
XFILL_3__2563_ gnd vdd FILL
XFILL_3__2143_ gnd vdd FILL
XFILL_5__2489_ gnd vdd FILL
XFILL_5__2069_ gnd vdd FILL
XFILL_5__3430_ gnd vdd FILL
XFILL_7__3448_ gnd vdd FILL
XFILL_7__3028_ gnd vdd FILL
XFILL_5__3010_ gnd vdd FILL
XFILL_1__3422_ gnd vdd FILL
XFILL_1__3002_ gnd vdd FILL
XFILL_6__1773_ gnd vdd FILL
X_2492_ _190_ _197_ ADD[5] _238_ vdd gnd OAI21X1
X_2072_ _853__bF$buf0 _919_ _1208_ vdd gnd NAND2X1
XFILL_2__1765_ gnd vdd FILL
XFILL_8__2732_ gnd vdd FILL
XFILL_8__2312_ gnd vdd FILL
XFILL_4__2632_ gnd vdd FILL
XFILL_4__2212_ gnd vdd FILL
XFILL_6__2978_ gnd vdd FILL
XFILL_6__2558_ gnd vdd FILL
X_3277_ _39_ vdd _1__bF$buf6 clk_bF$buf6 shift vdd 
+ gnd
+ DFFSR
XFILL_6__2138_ gnd vdd FILL
XFILL_0__2952_ gnd vdd FILL
XFILL_0__2532_ gnd vdd FILL
XFILL_0__2112_ gnd vdd FILL
XFILL_8__3517_ gnd vdd FILL
XFILL_7__1934_ gnd vdd FILL
XFILL_4__3417_ gnd vdd FILL
XFILL_3__1834_ gnd vdd FILL
XFILL_5__2701_ gnd vdd FILL
XFILL_7__2719_ gnd vdd FILL
XFILL_3__2619_ gnd vdd FILL
X_1763_ _914_ _915_ _916_ vdd gnd NAND2X1
XFILL_4__3590_ gnd vdd FILL
XFILL_4__3170_ gnd vdd FILL
XFILL_6__3096_ gnd vdd FILL
XFILL_0__3490_ gnd vdd FILL
XFILL_2__3088_ gnd vdd FILL
XFILL_0__3070_ gnd vdd FILL
XFILL_4__1903_ gnd vdd FILL
XFILL_6__1829_ gnd vdd FILL
X_2968_ _1002__bF$buf2 _638_ _637_ _639_ vdd gnd OAI21X1
X_2548_ _285_ _240_ _286_ _287_ vdd gnd OAI21X1
X_2128_ _875_ _867_ _882__bF$buf3 _1264_ vdd gnd NOR3X1
XFILL_7__2892_ gnd vdd FILL
XFILL_7__2472_ gnd vdd FILL
XFILL_7__2052_ gnd vdd FILL
XFILL_0__1803_ gnd vdd FILL
XFILL_3__2792_ gnd vdd FILL
XFILL_3__2372_ gnd vdd FILL
XFILL_5__2298_ gnd vdd FILL
XFILL183150x105450 gnd vdd FILL
XFILL_1__3231_ gnd vdd FILL
XFILL_3__3157_ gnd vdd FILL
XFILL_2__1994_ gnd vdd FILL
XFILL_8__2961_ gnd vdd FILL
XFILL_8__2541_ gnd vdd FILL
XFILL_8__2121_ gnd vdd FILL
XFILL_4__2861_ gnd vdd FILL
XFILL_4__2441_ gnd vdd FILL
XFILL_4__2021_ gnd vdd FILL
XFILL_6__2787_ gnd vdd FILL
XFILL_6__2367_ gnd vdd FILL
X_3086_ _742_ AN _743_ vdd gnd XOR2X1
XFILL_0__2761_ gnd vdd FILL
XFILL_2__2779_ gnd vdd FILL
XFILL_2__2359_ gnd vdd FILL
XFILL_0__2341_ gnd vdd FILL
X_1819_ _968_ _933_ _969_ _967_ BI[1] vdd 
+ gnd
+ OAI22X1
XFILL_7__1743_ gnd vdd FILL
XFILL_4__3226_ gnd vdd FILL
XFILL_0__3546_ gnd vdd FILL
XFILL_0__3126_ gnd vdd FILL
XFILL_5__1989_ gnd vdd FILL
XFILL_5__2930_ gnd vdd FILL
XFILL_7__2948_ gnd vdd FILL
XFILL_5__2510_ gnd vdd FILL
XFILL_7__2528_ gnd vdd FILL
XFILL_7__2108_ gnd vdd FILL
XFILL_1__2922_ gnd vdd FILL
XFILL_1__2502_ gnd vdd FILL
XFILL_3__2848_ gnd vdd FILL
XFILL_3__2428_ gnd vdd FILL
XFILL_3__2008_ gnd vdd FILL
X_1992_ _938_ RDY_bF$buf6 _1128_ vdd gnd OR2X2
XFILL_8__1812_ gnd vdd FILL
XFILL_4__1712_ gnd vdd FILL
X_2777_ PC[15] _853__bF$buf5 _493_ vdd gnd NAND2X1
X_2357_ _1244_ _121_ vdd gnd INVX1
XFILL_7__2281_ gnd vdd FILL
XFILL_3__2181_ gnd vdd FILL
XFILL_4__2917_ gnd vdd FILL
XFILL_7__3486_ gnd vdd FILL
XFILL_1__2099_ gnd vdd FILL
XFILL_7__3066_ gnd vdd FILL
XFILL_0__2817_ gnd vdd FILL
XFILL_1__3460_ gnd vdd FILL
XFILL_1__3040_ gnd vdd FILL
XFILL_3__3386_ gnd vdd FILL
XFILL_8__2770_ gnd vdd FILL
XFILL_8__2350_ gnd vdd FILL
XFILL_4__2670_ gnd vdd FILL
XFILL_4__2250_ gnd vdd FILL
XFILL_6__2596_ gnd vdd FILL
XFILL_6__2176_ gnd vdd FILL
XFILL_0__2990_ gnd vdd FILL
XFILL_0__2570_ gnd vdd FILL
XFILL_2__2588_ gnd vdd FILL
XFILL_2__2168_ gnd vdd FILL
XFILL_8__3555_ gnd vdd FILL
XFILL_0__2150_ gnd vdd FILL
XFILL_8__3135_ gnd vdd FILL
XFILL_7__1972_ gnd vdd FILL
XFILL_4__3455_ gnd vdd FILL
XFILL_4__3035_ gnd vdd FILL
XFILL_3__1872_ gnd vdd FILL
XFILL_5__1798_ gnd vdd FILL
XFILL_7__2757_ gnd vdd FILL
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
X_2586_ _978_ _1365_ _992_ _317_ vdd gnd NAND3X1
X_2166_ _853__bF$buf6 _1281_ _1300_ _1129__bF$buf4 _1301_ vdd 
+ gnd
+ AOI22X1
XFILL_7__2090_ gnd vdd FILL
XFILL_2__1859_ gnd vdd FILL
XFILL_0__1841_ gnd vdd FILL
XFILL_8__2826_ gnd vdd FILL
XFILL_8__2406_ gnd vdd FILL
XFILL_2__2800_ gnd vdd FILL
XFILL_4__2726_ gnd vdd FILL
XFILL_4__2306_ gnd vdd FILL
XFILL_0__2626_ gnd vdd FILL
XFILL_0__2206_ gnd vdd FILL
XFILL_3__3195_ gnd vdd FILL
XFILL_3__1928_ gnd vdd FILL
XFILL_2__2397_ gnd vdd FILL
XFILL_8__3364_ gnd vdd FILL
X_1857_ dst_reg[1] _1001_ vdd gnd INVX1
XFILL_7__1781_ gnd vdd FILL
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
XFILL_8__1850_ gnd vdd FILL
XFILL_4__1750_ gnd vdd FILL
X_2395_ I _141_ _152_ vdd gnd NAND2X1
XFILL_8__2635_ gnd vdd FILL
XFILL_8__2215_ gnd vdd FILL
XFILL_4__2955_ gnd vdd FILL
XFILL_4__2535_ gnd vdd FILL
XFILL_4__2115_ gnd vdd FILL
XFILL_0__2855_ gnd vdd FILL
XFILL_0__2435_ gnd vdd FILL
XFILL_6__3402_ gnd vdd FILL
XFILL_0__2015_ gnd vdd FILL
XFILL_7__1837_ gnd vdd FILL
XFILL_1__1811_ gnd vdd FILL
XFILL_3__1737_ gnd vdd FILL
XFILL_5__2604_ gnd vdd FILL
XFILL_8__3593_ gnd vdd FILL
XFILL_8__3173_ gnd vdd FILL
XFILL_4__3493_ gnd vdd FILL
XFILL_4__3073_ gnd vdd FILL
XFILL_8__1906_ gnd vdd FILL
XFILL_0__3393_ gnd vdd FILL
XFILL_4__1806_ gnd vdd FILL
XFILL_7__2795_ gnd vdd FILL
XFILL_7__2375_ gnd vdd FILL
XFILL_0__1706_ gnd vdd FILL
XFILL_3__2695_ gnd vdd FILL
XFILL_3__2275_ gnd vdd FILL
XFILL_5__3562_ gnd vdd FILL
XFILL_5__3142_ gnd vdd FILL
XFILL_1__3554_ gnd vdd FILL
XFILL_1__3134_ gnd vdd FILL
XFILL_2__1897_ gnd vdd FILL
XFILL_8__2864_ gnd vdd FILL
XFILL_8__2444_ gnd vdd FILL
XFILL_8__2024_ gnd vdd FILL
XFILL184350x82050 gnd vdd FILL
XFILL_4__2764_ gnd vdd FILL
XFILL_4__2344_ gnd vdd FILL
XFILL_0__2664_ gnd vdd FILL
XFILL_0__2244_ gnd vdd FILL
XFILL_6__3211_ gnd vdd FILL
XFILL_8__3229_ gnd vdd FILL
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
X_1895_ _1038_ _1039_ vdd gnd INVX1
XFILL_8__1715_ gnd vdd FILL
XFILL_7__2184_ gnd vdd FILL
XFILL_0__1935_ gnd vdd FILL
XFILL_6__2902_ gnd vdd FILL
X_3201_ _831_ _213_ _832_ _101_ vdd gnd OAI21X1
XFILL_3__2084_ gnd vdd FILL
XFILL181950x148350 gnd vdd FILL
XFILL_7__3389_ gnd vdd FILL
XFILL_5__3371_ gnd vdd FILL
XFILL_8__2673_ gnd vdd FILL
XFILL_8__2253_ gnd vdd FILL
XFILL_4__2993_ gnd vdd FILL
XFILL_4__2573_ gnd vdd FILL
XFILL_4__2153_ gnd vdd FILL
XFILL_6__2499_ gnd vdd FILL
XFILL_6__2079_ gnd vdd FILL
XFILL_0__2893_ gnd vdd FILL
XFILL_0__2473_ gnd vdd FILL
XFILL_8__3458_ gnd vdd FILL
XFILL_6__3440_ gnd vdd FILL
XFILL_0__2053_ gnd vdd FILL
XFILL_8__3038_ gnd vdd FILL
XFILL_6__3020_ gnd vdd FILL
XFILL_2__3432_ gnd vdd FILL
XFILL_2__3012_ gnd vdd FILL
XFILL_7__1875_ gnd vdd FILL
XFILL_3__1775_ gnd vdd FILL
XFILL_5__2642_ gnd vdd FILL
XFILL_5__2222_ gnd vdd FILL
XFILL_1__2634_ gnd vdd FILL
XFILL_1__2214_ gnd vdd FILL
XFILL_7__3601_ gnd vdd FILL
XFILL_3__3501_ gnd vdd FILL
XFILL_8__1944_ gnd vdd FILL
XFILL_5__3427_ gnd vdd FILL
XFILL_5__3007_ gnd vdd FILL
XFILL_1__3419_ gnd vdd FILL
XFILL_4__1844_ gnd vdd FILL
X_2489_ _972_ _208_ _235_ _236_ vdd gnd OAI21X1
X_2069_ _988_ _887__bF$buf4 RDY_bF$buf1 _1205_ vdd gnd OAI21X1
XFILL_0__1744_ gnd vdd FILL
XFILL_8__2729_ gnd vdd FILL
XFILL_6__2711_ gnd vdd FILL
X_3430_ _1663_ _1516_ vdd gnd INVX1
XFILL_8__2309_ gnd vdd FILL
X_3010_ _673_ _675_ _672_ _676_ vdd gnd OAI21X1
XFILL_2__2703_ gnd vdd FILL
XFILL_4__2629_ gnd vdd FILL
XFILL_4__2209_ gnd vdd FILL
XFILL_1_BUFX2_insert10 gnd vdd FILL
XFILL_1_BUFX2_insert11 gnd vdd FILL
XFILL_1_BUFX2_insert12 gnd vdd FILL
XFILL_1_BUFX2_insert13 gnd vdd FILL
XFILL_1_BUFX2_insert14 gnd vdd FILL
XFILL_7__3198_ gnd vdd FILL
XFILL_5__3180_ gnd vdd FILL
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
XFILL_8__2482_ gnd vdd FILL
XFILL_8__2062_ gnd vdd FILL
XFILL_1__1905_ gnd vdd FILL
XFILL183450x140550 gnd vdd FILL
XFILL_4__2382_ gnd vdd FILL
XFILL_0__2282_ gnd vdd FILL
XFILL_4__3587_ gnd vdd FILL
XFILL_4__3167_ gnd vdd FILL
X_2701_ ADD[1] _869__bF$buf3 _905_ _423_ vdd gnd NAND3X1
XFILL_0__3487_ gnd vdd FILL
XFILL_0__3067_ gnd vdd FILL
XFILL_7__2889_ gnd vdd FILL
XFILL_5__2871_ gnd vdd FILL
XFILL_5__2451_ gnd vdd FILL
XFILL_7__2469_ gnd vdd FILL
XFILL_5__2031_ gnd vdd FILL
XFILL_7__2049_ gnd vdd FILL
XFILL181350x35250 gnd vdd FILL
XFILL_1__2863_ gnd vdd FILL
XFILL_1__2443_ gnd vdd FILL
XFILL_1__2023_ gnd vdd FILL
XFILL_7__3410_ gnd vdd FILL
XFILL_3__2789_ gnd vdd FILL
XFILL_3__2369_ gnd vdd FILL
XFILL_8__1753_ gnd vdd FILL
XFILL_1__3228_ gnd vdd FILL
XFILL_6__1999_ gnd vdd FILL
X_2298_ _853__bF$buf6 _1224_ _1430_ _1129__bF$buf4 _1431_ vdd 
+ gnd
+ AOI22X1
XFILL_0__1973_ gnd vdd FILL
XFILL_6__2940_ gnd vdd FILL
XFILL_8__2958_ gnd vdd FILL
XFILL_6__2520_ gnd vdd FILL
XFILL_8__2538_ gnd vdd FILL
XFILL_8__2118_ gnd vdd FILL
XFILL_6__2100_ gnd vdd FILL
XFILL_2__2932_ gnd vdd FILL
XFILL_2__2512_ gnd vdd FILL
XFILL_4__2858_ gnd vdd FILL
XFILL_4__2438_ gnd vdd FILL
XFILL_4__2018_ gnd vdd FILL
XFILL_0__2758_ gnd vdd FILL
XFILL_0__2338_ gnd vdd FILL
XFILL_5__1722_ gnd vdd FILL
XFILL_8__2291_ gnd vdd FILL
XFILL_1__1714_ gnd vdd FILL
XFILL_4__2191_ gnd vdd FILL
XFILL_5__2927_ gnd vdd FILL
XFILL_5__2507_ gnd vdd FILL
XFILL_8__3496_ gnd vdd FILL
XFILL_0__2091_ gnd vdd FILL
XFILL_8__3076_ gnd vdd FILL
XFILL_1__2919_ gnd vdd FILL
XFILL_2__3470_ gnd vdd FILL
XFILL_2__3050_ gnd vdd FILL
X_1989_ CO store _1125_ vdd gnd OR2X2
XFILL_4__3396_ gnd vdd FILL
X_2930_ _1382_ _498_ _612_ vdd gnd NOR2X1
XFILL_8__1809_ gnd vdd FILL
X_2510_ _864_ _205_ _253_ _201_ _254_ vdd 
+ gnd
+ OAI22X1
XFILL_4__1709_ gnd vdd FILL
XFILL_5__2680_ gnd vdd FILL
XFILL_7__2698_ gnd vdd FILL
XFILL_5__2260_ gnd vdd FILL
XFILL_7__2278_ gnd vdd FILL
XFILL_1__2672_ gnd vdd FILL
XFILL_1__2252_ gnd vdd FILL
XFILL_3__2598_ gnd vdd FILL
XFILL_3__2178_ gnd vdd FILL
XFILL_8__1982_ gnd vdd FILL
XFILL_5__3465_ gnd vdd FILL
XFILL_5__3045_ gnd vdd FILL
XFILL_1__3457_ gnd vdd FILL
XFILL_1__3037_ gnd vdd FILL
XFILL_4__1882_ gnd vdd FILL
XFILL_0__1782_ gnd vdd FILL
XFILL_8__2767_ gnd vdd FILL
XFILL_8__2347_ gnd vdd FILL
XFILL_2__2741_ gnd vdd FILL
XFILL_2__2321_ gnd vdd FILL
XFILL_4__2667_ gnd vdd FILL
XFILL_4__2247_ gnd vdd FILL
XFILL_0__2987_ gnd vdd FILL
XFILL_0__2567_ gnd vdd FILL
XFILL_6__3534_ gnd vdd FILL
XFILL_0__2147_ gnd vdd FILL
XFILL_6__3114_ gnd vdd FILL
XFILL_2__3526_ gnd vdd FILL
XFILL_2__3106_ gnd vdd FILL
XFILL_7__1969_ gnd vdd FILL
XFILL_5__1951_ gnd vdd FILL
XFILL_1__1943_ gnd vdd FILL
XFILL_7__2910_ gnd vdd FILL
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
XFILL_1__2308_ gnd vdd FILL
XFILL_2_BUFX2_insert68 gnd vdd FILL
XFILL_2_BUFX2_insert69 gnd vdd FILL
X_1798_ _949_ _950_ vdd gnd INVX1
XFILL_4__1938_ gnd vdd FILL
XFILL_7__2087_ gnd vdd FILL
XFILL_0__1838_ gnd vdd FILL
XFILL_6__2805_ gnd vdd FILL
X_3524_ _u_ALU8.BCD_ _1610_ vdd gnd INVX1
X_3104_ _732_ _747_ _754_ _82_ vdd gnd OAI21X1
XFILL_1__2481_ gnd vdd FILL
XFILL_1__2061_ gnd vdd FILL
XFILL_8__1791_ gnd vdd FILL
XFILL_4__1691_ gnd vdd FILL
XFILL_8__2996_ gnd vdd FILL
XFILL_8__2576_ gnd vdd FILL
XFILL_8__2156_ gnd vdd FILL
XFILL_2__2970_ gnd vdd FILL
XFILL_2__2550_ gnd vdd FILL
XFILL_2__2130_ gnd vdd FILL
XFILL_4__2896_ gnd vdd FILL
XFILL_4__2476_ gnd vdd FILL
XFILL_4__2056_ gnd vdd FILL
XFILL_0__2796_ gnd vdd FILL
XFILL_0__2376_ gnd vdd FILL
XFILL_5__1760_ gnd vdd FILL
XFILL_7__1778_ gnd vdd FILL
XFILL_1__1752_ gnd vdd FILL
XFILL_5__2965_ gnd vdd FILL
XFILL_5__2545_ gnd vdd FILL
XFILL_5__2125_ gnd vdd FILL
XFILL_1__2957_ gnd vdd FILL
XFILL_1__2537_ gnd vdd FILL
XFILL_1__2117_ gnd vdd FILL
XFILL_7__3504_ gnd vdd FILL
XFILL181650x74250 gnd vdd FILL
XFILL_3__3404_ gnd vdd FILL
XFILL_8__1847_ gnd vdd FILL
XFILL_2__1821_ gnd vdd FILL
XFILL_4__1747_ gnd vdd FILL
XFILL_6__2614_ gnd vdd FILL
X_3333_ _87_ vdd _1__bF$buf4 clk_bF$buf4 _AXYS[2]_[2] vdd 
+ gnd
+ DFFSR
XFILL_1__2290_ gnd vdd FILL
XFILL_2__2606_ gnd vdd FILL
XFILL_5__3083_ gnd vdd FILL
XFILL_1__3495_ gnd vdd FILL
XFILL_1__3075_ gnd vdd FILL
XFILL_5__1816_ gnd vdd FILL
XFILL_8__2385_ gnd vdd FILL
XFILL_1__1808_ gnd vdd FILL
XFILL_4__2285_ gnd vdd FILL
XFILL_0__2185_ gnd vdd FILL
XFILL_6__3152_ gnd vdd FILL
XFILL_2__3564_ gnd vdd FILL
XFILL_2__3144_ gnd vdd FILL
X_2604_ _334_ _335_ vdd gnd INVX1
XFILL_1__1981_ gnd vdd FILL
XFILL_5__2774_ gnd vdd FILL
XFILL_5__2354_ gnd vdd FILL
XFILL_1__2766_ gnd vdd FILL
XFILL_1__2346_ gnd vdd FILL
XFILL_3__3213_ gnd vdd FILL
XFILL_5__3559_ gnd vdd FILL
XFILL_5__3139_ gnd vdd FILL
XFILL_4__1976_ gnd vdd FILL
XFILL_0__1876_ gnd vdd FILL
XFILL_6__2843_ gnd vdd FILL
X_3562_ RDY_bF$buf2 _1609_ _1639_ vdd gnd NAND2X1
XFILL_6__2423_ gnd vdd FILL
X_3142_ _AXYS[3]_[7] _767_ _775_ vdd gnd NAND2X1
XFILL_6__2003_ gnd vdd FILL
XFILL_2__2835_ gnd vdd FILL
XFILL_2__2415_ gnd vdd FILL
XFILL_6__3208_ gnd vdd FILL
XFILL_0__3602_ gnd vdd FILL
XFILL_8__2194_ gnd vdd FILL
XFILL183450x117150 gnd vdd FILL
XFILL_4__2094_ gnd vdd FILL
XFILL_3__2904_ gnd vdd FILL
XFILL_6__3381_ gnd vdd FILL
XFILL_8__3399_ gnd vdd FILL
XFILL_6_BUFX2_insert10 gnd vdd FILL
XFILL_6_BUFX2_insert11 gnd vdd FILL
XFILL_6_BUFX2_insert12 gnd vdd FILL
XFILL_6_BUFX2_insert13 gnd vdd FILL
XFILL_6_BUFX2_insert14 gnd vdd FILL
XFILL_6_BUFX2_insert15 gnd vdd FILL
XFILL_6_BUFX2_insert16 gnd vdd FILL
XFILL_2__3373_ gnd vdd FILL
XFILL_6_BUFX2_insert17 gnd vdd FILL
XFILL_6_BUFX2_insert18 gnd vdd FILL
XFILL_6_BUFX2_insert19 gnd vdd FILL
X_2833_ _533_ _534_ vdd gnd INVX1
X_2413_ _164_ ADD[5] PC[13] _163_ _167_ vdd 
+ gnd
+ AOI22X1
XFILL_1__1790_ gnd vdd FILL
XFILL_0__3199_ gnd vdd FILL
XFILL_5__2583_ gnd vdd FILL
XFILL_5__2163_ gnd vdd FILL
XFILL_1__2995_ gnd vdd FILL
XFILL_1__2575_ gnd vdd FILL
XFILL_7__3542_ gnd vdd FILL
XFILL_1__2155_ gnd vdd FILL
XFILL_7__3122_ gnd vdd FILL
XFILL_3__3442_ gnd vdd FILL
XFILL_3__3022_ gnd vdd FILL
XFILL_8__1885_ gnd vdd FILL
XFILL_5__3368_ gnd vdd FILL
XFILL_4__1785_ gnd vdd FILL
XFILL_6__2652_ gnd vdd FILL
X_3371_ AN _u_ALU8.BI7_ _1648_ vdd gnd XNOR2X1
XFILL_6__2232_ gnd vdd FILL
XFILL_2__2644_ gnd vdd FILL
XFILL_2__2224_ gnd vdd FILL
XFILL_4__3511_ gnd vdd FILL
XFILL_6__3437_ gnd vdd FILL
XFILL_6__3017_ gnd vdd FILL
XFILL_2__3429_ gnd vdd FILL
XFILL_0__3411_ gnd vdd FILL
XFILL_2__3009_ gnd vdd FILL
XFILL_5__1854_ gnd vdd FILL
XFILL_1__1846_ gnd vdd FILL
XFILL_7__2813_ gnd vdd FILL
XFILL_3__2713_ gnd vdd FILL
XFILL_5__2639_ gnd vdd FILL
XFILL_5__2219_ gnd vdd FILL
XFILL_6__3190_ gnd vdd FILL
XFILL_2__3182_ gnd vdd FILL
XFILL_6__1923_ gnd vdd FILL
X_2642_ PC[4] _853__bF$buf4 _369_ vdd gnd NAND2X1
X_2222_ RDY_bF$buf7 _1284_ _1356_ _1357_ vdd gnd OAI21X1
XFILL_2__1915_ gnd vdd FILL
XFILL_5__2392_ gnd vdd FILL
XFILL_6__2708_ gnd vdd FILL
X_3427_ alu_op[3] BI[3] _1675_ _1513_ vdd gnd OAI21X1
X_3007_ _569_ _912_ _920_ _673_ vdd gnd NAND3X1
XFILL_1__2384_ gnd vdd FILL
XFILL_5__3597_ gnd vdd FILL
XFILL_8__1694_ gnd vdd FILL
XFILL_5__3177_ gnd vdd FILL
XFILL184350x70350 gnd vdd FILL
XFILL_1__3589_ gnd vdd FILL
XFILL_1__3169_ gnd vdd FILL
XFILL_8__2899_ gnd vdd FILL
XFILL_6__2881_ gnd vdd FILL
XFILL_6__2461_ gnd vdd FILL
XFILL_8__2479_ gnd vdd FILL
XFILL_6__2041_ gnd vdd FILL
XFILL_8__2059_ gnd vdd FILL
X_3180_ _779_ _812_ vdd gnd INVX1
XFILL_2__2873_ gnd vdd FILL
XFILL_2__2453_ gnd vdd FILL
XFILL_2__2033_ gnd vdd FILL
XFILL_8__3420_ gnd vdd FILL
XFILL_8__3000_ gnd vdd FILL
XFILL_4__2799_ gnd vdd FILL
XFILL_4__2379_ gnd vdd FILL
X_1913_ _1056_ _1057_ vdd gnd INVX1
XFILL_0__2699_ gnd vdd FILL
XFILL_0__2279_ gnd vdd FILL
XFILL_0__3220_ gnd vdd FILL
XFILL_7__2622_ gnd vdd FILL
XFILL_7__2202_ gnd vdd FILL
XFILL_3__2942_ gnd vdd FILL
XFILL_3__2522_ gnd vdd FILL
XFILL_3__2102_ gnd vdd FILL
XFILL_5__2868_ gnd vdd FILL
XFILL_5__2448_ gnd vdd FILL
XFILL_5__2028_ gnd vdd FILL
XFILL_7__3407_ gnd vdd FILL
X_2871_ _912_ _1129__bF$buf1 _1329_ _564_ _39_ vdd 
+ gnd
+ OAI22X1
XFILL_6__1732_ gnd vdd FILL
X_2451_ _201_ _202_ vdd gnd INVX2
X_2031_ _1166_ _1167_ vdd gnd INVX1
XFILL_2__1724_ gnd vdd FILL
XFILL_6__2937_ gnd vdd FILL
XFILL_6__2517_ gnd vdd FILL
X_3236_ _1483_[3] _1__bF$buf10 vdd clk_bF$buf8 state[3] vdd 
+ gnd
+ DFFSR
XFILL_7__3580_ gnd vdd FILL
XFILL_1__2193_ gnd vdd FILL
XFILL_7__3160_ gnd vdd FILL
XFILL_2__2929_ gnd vdd FILL
XFILL_0__2911_ gnd vdd FILL
XFILL_2__2509_ gnd vdd FILL
XFILL_3__3480_ gnd vdd FILL
XFILL_3__3060_ gnd vdd FILL
XFILL_1__3398_ gnd vdd FILL
XFILL_5__1719_ gnd vdd FILL
XFILL_6__2690_ gnd vdd FILL
XFILL_6__2270_ gnd vdd FILL
XFILL_8__2288_ gnd vdd FILL
XFILL_2__2682_ gnd vdd FILL
XFILL_2__2262_ gnd vdd FILL
XFILL_4__2188_ gnd vdd FILL
X_1722_ state[1] state[0] _875_ vdd gnd NAND2X1
XFILL_6__3475_ gnd vdd FILL
XFILL_0__2088_ gnd vdd FILL
XFILL_6__3055_ gnd vdd FILL
XFILL_2__3467_ gnd vdd FILL
XFILL_2__3047_ gnd vdd FILL
XFILL_5__1892_ gnd vdd FILL
X_2927_ _578_ _522_ _609_ vdd gnd NAND2X1
X_2507_ _251_ _1685_[6] vdd gnd INVX1
XFILL_1__1884_ gnd vdd FILL
XFILL_7__2851_ gnd vdd FILL
XFILL_7__2431_ gnd vdd FILL
XFILL_7__2011_ gnd vdd FILL
XFILL_3__2751_ gnd vdd FILL
XFILL_3__2331_ gnd vdd FILL
XFILL_5__2677_ gnd vdd FILL
XFILL_5__2257_ gnd vdd FILL
XFILL_1__2669_ gnd vdd FILL
XFILL_1__2249_ gnd vdd FILL
XFILL_7__3216_ gnd vdd FILL
XFILL_3__3536_ gnd vdd FILL
XFILL_3__3116_ gnd vdd FILL
XFILL_8__1979_ gnd vdd FILL
XFILL_6__1961_ gnd vdd FILL
X_2680_ ABH[0] _1133_ _1008_ _403_ vdd gnd NAND3X1
X_2260_ _1159_ _1303_ _1394_ vdd gnd NAND2X1
XFILL_2__1953_ gnd vdd FILL
XFILL_8__2920_ gnd vdd FILL
XFILL_8__2500_ gnd vdd FILL
XFILL_4__1879_ gnd vdd FILL
XFILL_4__2820_ gnd vdd FILL
XFILL_4__2400_ gnd vdd FILL
XFILL_0__1779_ gnd vdd FILL
XFILL_6__2746_ gnd vdd FILL
X_3465_ _1660_ alu_op[2] _1550_ _1551_ vdd gnd OAI21X1
XFILL_6__2326_ gnd vdd FILL
X_3045_ _AXYS[0]_[1] _693_ _708_ vdd gnd NAND2X1
XFILL_2__2738_ gnd vdd FILL
XFILL_0__2720_ gnd vdd FILL
XFILL_2__2318_ gnd vdd FILL
XFILL_0__2300_ gnd vdd FILL
XFILL_7__1702_ gnd vdd FILL
XFILL_0__3505_ gnd vdd FILL
XFILL_5__1948_ gnd vdd FILL
XFILL_8__2097_ gnd vdd FILL
XFILL_7__2907_ gnd vdd FILL
XFILL_2__2491_ gnd vdd FILL
XFILL_2__2071_ gnd vdd FILL
XFILL_3__2807_ gnd vdd FILL
X_1951_ _1090_ _1091_ vdd gnd INVX1
X_2736_ ADD[4] _325_ _1284_ _455_ vdd gnd AOI21X1
X_2316_ _1433_ _1431_ _1449_ vdd gnd NAND2X1
XFILL_1__1693_ gnd vdd FILL
XFILL_7__2660_ gnd vdd FILL
XFILL_7__2240_ gnd vdd FILL
XFILL_3__2980_ gnd vdd FILL
XFILL_3__2560_ gnd vdd FILL
XFILL_3__2140_ gnd vdd FILL
XFILL_5__2486_ gnd vdd FILL
XFILL_5__2066_ gnd vdd FILL
XFILL_1__2898_ gnd vdd FILL
XFILL_1__2478_ gnd vdd FILL
XFILL_7__3445_ gnd vdd FILL
XFILL_1__2058_ gnd vdd FILL
XFILL_7__3025_ gnd vdd FILL
XFILL_6__1770_ gnd vdd FILL
XFILL_8__1788_ gnd vdd FILL
XFILL_2__1762_ gnd vdd FILL
XFILL_4__1688_ gnd vdd FILL
XFILL_6__2975_ gnd vdd FILL
XFILL_6__2555_ gnd vdd FILL
X_3274_ _36_ vdd _1__bF$buf6 clk_bF$buf6 rotate vdd 
+ gnd
+ DFFSR
XFILL_6__2135_ gnd vdd FILL
XFILL_2__2967_ gnd vdd FILL
XFILL_2__2547_ gnd vdd FILL
XFILL_8__3514_ gnd vdd FILL
XFILL_2__2127_ gnd vdd FILL
XFILL_7__1931_ gnd vdd FILL
XFILL_4__3414_ gnd vdd FILL
XFILL_3__1831_ gnd vdd FILL
XFILL_5__1757_ gnd vdd FILL
XFILL_1__1749_ gnd vdd FILL
XFILL_7__2716_ gnd vdd FILL
XFILL_3__2616_ gnd vdd FILL
X_1760_ _912_ inc rotate _913_ vdd gnd AOI21X1
XFILL_6__3093_ gnd vdd FILL
XFILL_2__3085_ gnd vdd FILL
XFILL_4__1900_ gnd vdd FILL
X_2965_ adc_sbc _635_ _631_ _636_ vdd gnd OAI21X1
XFILL_6__1826_ gnd vdd FILL
X_2545_ ABH[4] _284_ vdd gnd INVX1
X_2125_ _887__bF$buf0 _891_ RDY_bF$buf3 _1261_ vdd gnd OAI21X1
XFILL_2__1818_ gnd vdd FILL
XFILL_0__1800_ gnd vdd FILL
XFILL_5__2295_ gnd vdd FILL
XFILL_1__2287_ gnd vdd FILL
XFILL_7_BUFX2_insert80 gnd vdd FILL
XFILL_7_BUFX2_insert81 gnd vdd FILL
XFILL_7_BUFX2_insert82 gnd vdd FILL
XFILL_7_BUFX2_insert83 gnd vdd FILL
XFILL_7_BUFX2_insert84 gnd vdd FILL
XFILL_3__3154_ gnd vdd FILL
XFILL_7_BUFX2_insert85 gnd vdd FILL
XFILL_7_BUFX2_insert86 gnd vdd FILL
XFILL_7_BUFX2_insert87 gnd vdd FILL
XFILL_7_BUFX2_insert88 gnd vdd FILL
XFILL_7_BUFX2_insert89 gnd vdd FILL
XFILL_2__1991_ gnd vdd FILL
XFILL_6__2784_ gnd vdd FILL
XFILL_6__2364_ gnd vdd FILL
X_3083_ _734_ _730_ _740_ vdd gnd NAND2X1
XFILL_2__2776_ gnd vdd FILL
XFILL_2__2356_ gnd vdd FILL
X_1816_ _931_ _933_ _932_ _967_ BI[0] vdd 
+ gnd
+ OAI22X1
XFILL_7__1740_ gnd vdd FILL
XFILL_4__3223_ gnd vdd FILL
XFILL_6__3149_ gnd vdd FILL
XFILL183150x167850 gnd vdd FILL
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
X_2774_ _480_ _490_ vdd gnd INVX1
X_2354_ op[0] _118_ vdd gnd INVX1
XFILL_4__2914_ gnd vdd FILL
X_3559_ ADD[6] _1649__bF$buf1 _1637_ vdd gnd NAND2X1
X_3139_ _732_ _767_ _773_ _98_ vdd gnd OAI21X1
XFILL_7__3483_ gnd vdd FILL
XFILL_1__2096_ gnd vdd FILL
XFILL_7__3063_ gnd vdd FILL
XFILL_0__2814_ gnd vdd FILL
XFILL_3__3383_ gnd vdd FILL
XFILL_6__2593_ gnd vdd FILL
XFILL_6__2173_ gnd vdd FILL
XFILL_2__2585_ gnd vdd FILL
XFILL_8__3552_ gnd vdd FILL
XFILL_2__2165_ gnd vdd FILL
XFILL_8__3132_ gnd vdd FILL
XFILL_4__3452_ gnd vdd FILL
XFILL_4__3032_ gnd vdd FILL
XFILL_6__3378_ gnd vdd FILL
XFILL_5__1795_ gnd vdd FILL
XFILL_1__1787_ gnd vdd FILL
XFILL_7__2754_ gnd vdd FILL
XFILL_7__2334_ gnd vdd FILL
XFILL_3__2654_ gnd vdd FILL
XFILL_3__2234_ gnd vdd FILL
XFILL_5__3521_ gnd vdd FILL
XFILL_7__3539_ gnd vdd FILL
XFILL_7__3119_ gnd vdd FILL
XFILL_5__3101_ gnd vdd FILL
XFILL_1__3513_ gnd vdd FILL
XFILL_3__3439_ gnd vdd FILL
XFILL_3__3019_ gnd vdd FILL
XFILL_6__1864_ gnd vdd FILL
X_2583_ _917_ _1193_ _313_ _314_ vdd gnd AOI21X1
X_2163_ _1297_ _1162_ _1298_ vdd gnd NOR2X1
XFILL_2__1856_ gnd vdd FILL
XFILL_8__2823_ gnd vdd FILL
XFILL_8__2403_ gnd vdd FILL
XFILL_4__2723_ gnd vdd FILL
XFILL_4__2303_ gnd vdd FILL
XFILL_6__2649_ gnd vdd FILL
X_3368_ _1643_ _1644_ _1645_ _1646_ vdd gnd NAND3X1
XFILL_6__2229_ gnd vdd FILL
XFILL_0__2623_ gnd vdd FILL
XFILL_0__2203_ gnd vdd FILL
XFILL_3__3192_ gnd vdd FILL
XFILL_4__3508_ gnd vdd FILL
XFILL_3__1925_ gnd vdd FILL
XFILL_0__3408_ gnd vdd FILL
XFILL_2__2394_ gnd vdd FILL
X_1854_ _991_ _997_ _998_ vdd gnd NOR2X1
XFILL_6__3187_ gnd vdd FILL
XFILL_2__3599_ gnd vdd FILL
XFILL_0__3581_ gnd vdd FILL
XFILL_0__3161_ gnd vdd FILL
XFILL_2__3179_ gnd vdd FILL
X_2639_ _347_ _340_ _366_ _367_ vdd gnd NAND3X1
X_2219_ _887__bF$buf0 _936_ RDY_bF$buf3 _1354_ vdd gnd OAI21X1
XFILL_7__2983_ gnd vdd FILL
XFILL_7__2563_ gnd vdd FILL
XFILL_7__2143_ gnd vdd FILL
XFILL_3__2883_ gnd vdd FILL
XFILL_3__2463_ gnd vdd FILL
XFILL_3__2043_ gnd vdd FILL
XFILL_5__2389_ gnd vdd FILL
X_2392_ _146_ _149_ _145_ _1686_[1] vdd gnd NAND3X1
XFILL_8__2632_ gnd vdd FILL
XFILL_8__2212_ gnd vdd FILL
XFILL_4__2952_ gnd vdd FILL
XFILL_4__2532_ gnd vdd FILL
XFILL_4__2112_ gnd vdd FILL
XFILL_6__2878_ gnd vdd FILL
X_3597_ _1686_[2] DO[2] vdd gnd BUFX2
XFILL_6__2458_ gnd vdd FILL
XFILL_6__2038_ gnd vdd FILL
X_3177_ _1347_ _1284_ _809_ vdd gnd NOR2X1
XFILL_0__2852_ gnd vdd FILL
XFILL_0__2432_ gnd vdd FILL
XFILL_0__2012_ gnd vdd FILL
XFILL_8__3417_ gnd vdd FILL
XFILL_7__1834_ gnd vdd FILL
XFILL183450x105450 gnd vdd FILL
XFILL_3__1734_ gnd vdd FILL
XFILL_0__3217_ gnd vdd FILL
XFILL_7__2619_ gnd vdd FILL
XFILL_5__2601_ gnd vdd FILL
XFILL_8__3590_ gnd vdd FILL
XFILL_8__3170_ gnd vdd FILL
XFILL_3__2939_ gnd vdd FILL
XFILL_3__2519_ gnd vdd FILL
XFILL_4__3490_ gnd vdd FILL
XFILL_4__3070_ gnd vdd FILL
XFILL_8__1903_ gnd vdd FILL
XFILL_0__3390_ gnd vdd FILL
XFILL_4__1803_ gnd vdd FILL
X_2868_ _562_ _554_ _1129__bF$buf3 _563_ vdd gnd OAI21X1
XFILL_6__1729_ gnd vdd FILL
X_2448_ _887__bF$buf1 _989_ _911_ _199_ vdd gnd OAI21X1
X_2028_ _1156_ _1163_ _1164_ vdd gnd NOR2X1
XFILL_7__2792_ gnd vdd FILL
XFILL_7__2372_ gnd vdd FILL
XFILL_0__1703_ gnd vdd FILL
XFILL_3__2692_ gnd vdd FILL
XFILL_3__2272_ gnd vdd FILL
XFILL_5__2198_ gnd vdd FILL
XFILL_7__3157_ gnd vdd FILL
XFILL_0__2908_ gnd vdd FILL
XFILL_1__3551_ gnd vdd FILL
XFILL_1__3131_ gnd vdd FILL
XFILL_3__3477_ gnd vdd FILL
XFILL_3__3057_ gnd vdd FILL
XFILL_2__1894_ gnd vdd FILL
XFILL_8__2861_ gnd vdd FILL
XFILL_8__2441_ gnd vdd FILL
XFILL_8__2021_ gnd vdd FILL
XFILL_4__2761_ gnd vdd FILL
XFILL_4__2341_ gnd vdd FILL
XFILL_6__2687_ gnd vdd FILL
XFILL_6__2267_ gnd vdd FILL
XFILL_0__2661_ gnd vdd FILL
XFILL_2__2679_ gnd vdd FILL
XFILL_2__2259_ gnd vdd FILL
XFILL_0__2241_ gnd vdd FILL
XFILL_8__3226_ gnd vdd FILL
XFILL_2__3200_ gnd vdd FILL
X_1719_ _869__bF$buf1 _871_ _868_ _872_ vdd gnd NAND3X1
XFILL_4__3546_ gnd vdd FILL
XFILL_4__3126_ gnd vdd FILL
XFILL_3__1963_ gnd vdd FILL
XFILL_0__3446_ gnd vdd FILL
XFILL_0__3026_ gnd vdd FILL
XFILL_5__1889_ gnd vdd FILL
XFILL_7__2848_ gnd vdd FILL
XFILL_5__2830_ gnd vdd FILL
XFILL_7__2428_ gnd vdd FILL
XFILL_5__2410_ gnd vdd FILL
XFILL_7__2008_ gnd vdd FILL
XFILL_1__2822_ gnd vdd FILL
XFILL_1__2402_ gnd vdd FILL
XFILL_3__2748_ gnd vdd FILL
XFILL_3__2328_ gnd vdd FILL
X_1892_ _918__bF$buf2 _1035_ _1036_ vdd gnd NOR2X1
XFILL_8__1712_ gnd vdd FILL
XFILL_6__1958_ gnd vdd FILL
X_2677_ _320_ _191_ _932_ _400_ vdd gnd AOI21X1
X_2257_ _1221_ _1390_ _1389_ _1391_ vdd gnd NAND3X1
XFILL_7__2181_ gnd vdd FILL
XFILL_0__1932_ gnd vdd FILL
XFILL_8__2917_ gnd vdd FILL
XFILL_3__2081_ gnd vdd FILL
XFILL_4__2817_ gnd vdd FILL
XFILL_7__3386_ gnd vdd FILL
XFILL_0__2717_ gnd vdd FILL
XFILL_8__2670_ gnd vdd FILL
XFILL_8__2250_ gnd vdd FILL
XFILL_4__2990_ gnd vdd FILL
XFILL_4__2570_ gnd vdd FILL
XFILL_4__2150_ gnd vdd FILL
XFILL_6__2496_ gnd vdd FILL
XFILL_6__2076_ gnd vdd FILL
XFILL_0__2890_ gnd vdd FILL
XFILL_0__2470_ gnd vdd FILL
XFILL_2__2488_ gnd vdd FILL
XFILL_8__3455_ gnd vdd FILL
XFILL_2__2068_ gnd vdd FILL
XFILL_0__2050_ gnd vdd FILL
XFILL_8__3035_ gnd vdd FILL
X_1948_ _AXYS[2]_[4] _1023_ _1012_ _AXYS[3]_[4] _1088_ vdd 
+ gnd
+ AOI22X1
XFILL_7__1872_ gnd vdd FILL
XFILL_3__1772_ gnd vdd FILL
XFILL_5__1698_ gnd vdd FILL
XFILL_7__2657_ gnd vdd FILL
XFILL_7__2237_ gnd vdd FILL
XFILL_1__2631_ gnd vdd FILL
XFILL_1__2211_ gnd vdd FILL
XFILL_3__2977_ gnd vdd FILL
XFILL_3__2557_ gnd vdd FILL
XFILL_3__2137_ gnd vdd FILL
XFILL_8__1941_ gnd vdd FILL
XFILL_5__3424_ gnd vdd FILL
XFILL_5__3004_ gnd vdd FILL
XFILL_1__3416_ gnd vdd FILL
XFILL_4__1841_ gnd vdd FILL
XFILL_6__1767_ gnd vdd FILL
X_2486_ _190_ _197_ ADD[4] _233_ vdd gnd OAI21X1
X_2066_ _1125_ _1199_ _1201_ _1202_ vdd gnd OAI21X1
XFILL_2__1759_ gnd vdd FILL
XFILL_0__1741_ gnd vdd FILL
XFILL_8__2726_ gnd vdd FILL
XFILL_8__2306_ gnd vdd FILL
XFILL_2__2700_ gnd vdd FILL
XFILL_4__2626_ gnd vdd FILL
XFILL_4__2206_ gnd vdd FILL
XFILL_7__3195_ gnd vdd FILL
XFILL_0__2946_ gnd vdd FILL
XFILL_0__2526_ gnd vdd FILL
XFILL_0__2106_ gnd vdd FILL
XFILL_3__3095_ gnd vdd FILL
XFILL_7__1928_ gnd vdd FILL
XFILL_5__1910_ gnd vdd FILL
XFILL_1__1902_ gnd vdd FILL
XFILL_3__1828_ gnd vdd FILL
XFILL_2__2297_ gnd vdd FILL
X_1757_ _867_ _909_ _910_ vdd gnd NOR2X1
XFILL_4__3584_ gnd vdd FILL
XFILL_4__3164_ gnd vdd FILL
XFILL_0__3484_ gnd vdd FILL
XFILL_0__3064_ gnd vdd FILL
XFILL_7__2886_ gnd vdd FILL
XFILL_7__2466_ gnd vdd FILL
XFILL_7__2046_ gnd vdd FILL
XFILL_1__2860_ gnd vdd FILL
XFILL_1__2440_ gnd vdd FILL
XFILL_1__2020_ gnd vdd FILL
XFILL_3__2786_ gnd vdd FILL
XFILL_3__2366_ gnd vdd FILL
XFILL_8__1750_ gnd vdd FILL
XFILL_1__3225_ gnd vdd FILL
XFILL_6__1996_ gnd vdd FILL
X_2295_ _1427_ _1423_ _1428_ vdd gnd NOR2X1
XFILL_2__1988_ gnd vdd FILL
XFILL_0__1970_ gnd vdd FILL
XFILL_8__2955_ gnd vdd FILL
XFILL_8__2535_ gnd vdd FILL
XFILL_8__2115_ gnd vdd FILL
XFILL_4__2855_ gnd vdd FILL
XFILL_4__2435_ gnd vdd FILL
XFILL_4__2015_ gnd vdd FILL
XFILL_0__2755_ gnd vdd FILL
XFILL_0__2335_ gnd vdd FILL
XFILL_7__1737_ gnd vdd FILL
XFILL_1__1711_ gnd vdd FILL
XFILL_5__2924_ gnd vdd FILL
XFILL_5__2504_ gnd vdd FILL
XFILL_8__3493_ gnd vdd FILL
XFILL_8__3073_ gnd vdd FILL
XFILL_1__2916_ gnd vdd FILL
X_1986_ _1047_ _1117_ _1122_ AI[7] vdd gnd OAI21X1
XFILL_5_BUFX2_insert0 gnd vdd FILL
XFILL_4__3393_ gnd vdd FILL
XFILL_5_BUFX2_insert1 gnd vdd FILL
XFILL_5_BUFX2_insert2 gnd vdd FILL
XFILL_5_BUFX2_insert3 gnd vdd FILL
XFILL_5_BUFX2_insert4 gnd vdd FILL
XFILL_5_BUFX2_insert5 gnd vdd FILL
XFILL_5_BUFX2_insert6 gnd vdd FILL
XFILL_5_BUFX2_insert7 gnd vdd FILL
XFILL_5_BUFX2_insert8 gnd vdd FILL
XFILL_5_BUFX2_insert9 gnd vdd FILL
XFILL_8__1806_ gnd vdd FILL
XFILL_4__1706_ gnd vdd FILL
XFILL_7__2695_ gnd vdd FILL
XFILL_7__2275_ gnd vdd FILL
XFILL_3__2595_ gnd vdd FILL
XFILL_3__2175_ gnd vdd FILL
XFILL_5__3462_ gnd vdd FILL
XFILL_5__3042_ gnd vdd FILL
XFILL_1__3454_ gnd vdd FILL
XFILL_1__3034_ gnd vdd FILL
XFILL_2__1797_ gnd vdd FILL
XFILL_8__2764_ gnd vdd FILL
XFILL_8__2344_ gnd vdd FILL
XFILL_4__2664_ gnd vdd FILL
XFILL_4__2244_ gnd vdd FILL
XFILL_0__2984_ gnd vdd FILL
XFILL_0__2564_ gnd vdd FILL
XFILL_8__3549_ gnd vdd FILL
XFILL_6__3531_ gnd vdd FILL
XFILL_0__2144_ gnd vdd FILL
XFILL_8__3129_ gnd vdd FILL
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
XFILL_1__2305_ gnd vdd FILL
XFILL_2_BUFX2_insert39 gnd vdd FILL
X_1795_ _918__bF$buf2 _946_ _944_ _947_ vdd gnd OAI21X1
XFILL_5__3518_ gnd vdd FILL
XFILL_4__1935_ gnd vdd FILL
XFILL_7__2084_ gnd vdd FILL
XFILL_0__1835_ gnd vdd FILL
XFILL_6__2802_ gnd vdd FILL
X_3521_ alu_shift_right AI[0] _1607_ vdd gnd NAND2X1
X_3101_ _691__bF$buf1 _748_ _AXYS[1]_[4] _753_ vdd gnd OAI21X1
XFILL_3__3189_ gnd vdd FILL
XFILL_8__2993_ gnd vdd FILL
XFILL_8__2573_ gnd vdd FILL
XFILL_8__2153_ gnd vdd FILL
XFILL_4__2893_ gnd vdd FILL
XFILL_4__2473_ gnd vdd FILL
XFILL_4__2053_ gnd vdd FILL
XFILL_6__2399_ gnd vdd FILL
XFILL_0__2793_ gnd vdd FILL
XFILL_0__2373_ gnd vdd FILL
XFILL_7__1775_ gnd vdd FILL
XFILL_0__3158_ gnd vdd FILL
XFILL_5__2962_ gnd vdd FILL
XFILL_5__2542_ gnd vdd FILL
XFILL_5__2122_ gnd vdd FILL
XFILL183750x140550 gnd vdd FILL
XFILL_1__2954_ gnd vdd FILL
XFILL_1__2534_ gnd vdd FILL
XFILL_7__3501_ gnd vdd FILL
XFILL_1__2114_ gnd vdd FILL
XFILL_3__3401_ gnd vdd FILL
XFILL_8__1844_ gnd vdd FILL
XFILL_4__1744_ gnd vdd FILL
X_2389_ Z _141_ _147_ vdd gnd NAND2X1
XFILL_6__2611_ gnd vdd FILL
XFILL_8__2629_ gnd vdd FILL
X_3330_ _84_ vdd _1__bF$buf1 clk_bF$buf4 _AXYS[1]_[7] vdd 
+ gnd
+ DFFSR
XFILL_8__2209_ gnd vdd FILL
XFILL_2__2603_ gnd vdd FILL
XFILL184350x35250 gnd vdd FILL
XFILL_4__2949_ gnd vdd FILL
XFILL_4__2529_ gnd vdd FILL
XFILL_4__2109_ gnd vdd FILL
XFILL_5__3080_ gnd vdd FILL
XFILL_7__3098_ gnd vdd FILL
XFILL_0__2849_ gnd vdd FILL
XFILL_0__2429_ gnd vdd FILL
XFILL_9__1913_ gnd vdd FILL
XFILL_0__2009_ gnd vdd FILL
XFILL_1__3492_ gnd vdd FILL
XFILL_1__3072_ gnd vdd FILL
XFILL_5__1813_ gnd vdd FILL
XFILL_8__2382_ gnd vdd FILL
XFILL_1__1805_ gnd vdd FILL
XFILL_4__2282_ gnd vdd FILL
XFILL_0__2182_ gnd vdd FILL
XFILL_8__3587_ gnd vdd FILL
XFILL_8__3167_ gnd vdd FILL
XFILL_2__3561_ gnd vdd FILL
XFILL_2__3141_ gnd vdd FILL
XFILL_4__3487_ gnd vdd FILL
XFILL_4__3067_ gnd vdd FILL
X_2601_ _330_ _331_ _319_ _332_ vdd gnd AOI21X1
XFILL_0__3387_ gnd vdd FILL
XFILL_9__2031_ gnd vdd FILL
XFILL_7__2789_ gnd vdd FILL
XFILL_5__2771_ gnd vdd FILL
XFILL_5__2351_ gnd vdd FILL
XFILL_7__2369_ gnd vdd FILL
XFILL_1__2763_ gnd vdd FILL
XFILL_1__2343_ gnd vdd FILL
XFILL_3__2689_ gnd vdd FILL
XFILL_3__2269_ gnd vdd FILL
XFILL_3__3210_ gnd vdd FILL
XFILL_5__3556_ gnd vdd FILL
XFILL_5__3136_ gnd vdd FILL
XFILL_1__3548_ gnd vdd FILL
XFILL_1__3128_ gnd vdd FILL
XFILL_4__1973_ gnd vdd FILL
XFILL_6__1899_ gnd vdd FILL
X_2198_ _853__bF$buf3 _886__bF$buf2 _890_ _1333_ vdd gnd NAND3X1
XFILL_0__1873_ gnd vdd FILL
XFILL_6__2840_ gnd vdd FILL
XFILL_8__2858_ gnd vdd FILL
XFILL_6__2420_ gnd vdd FILL
XFILL_8__2438_ gnd vdd FILL
XFILL_8__2018_ gnd vdd FILL
XFILL_6__2000_ gnd vdd FILL
XFILL_2__2832_ gnd vdd FILL
XFILL_2__2412_ gnd vdd FILL
XFILL_4__2758_ gnd vdd FILL
XFILL_4__2338_ gnd vdd FILL
XFILL_0__2658_ gnd vdd FILL
XFILL_0__2238_ gnd vdd FILL
XFILL_9__1722_ gnd vdd FILL
XFILL_6__3205_ gnd vdd FILL
XFILL_8__2191_ gnd vdd FILL
XFILL_4__2091_ gnd vdd FILL
XFILL_3__2901_ gnd vdd FILL
XFILL_5__2827_ gnd vdd FILL
XFILL_5__2407_ gnd vdd FILL
XFILL_8__3396_ gnd vdd FILL
XFILL_1__2819_ gnd vdd FILL
XFILL_2__3370_ gnd vdd FILL
X_1889_ state[4] _1032_ load_only _1031_ _1033_ vdd 
+ gnd
+ OAI22X1
X_2830_ _1178_ _1400_ _531_ vdd gnd NOR2X1
XFILL_8__1709_ gnd vdd FILL
X_2410_ _164_ ADD[4] PC[12] _163_ _165_ vdd 
+ gnd
+ AOI22X1
XFILL_0__3196_ gnd vdd FILL
XFILL_7_BUFX2_insert0 gnd vdd FILL
XFILL_7_BUFX2_insert1 gnd vdd FILL
XFILL_7_BUFX2_insert2 gnd vdd FILL
XFILL_7_BUFX2_insert3 gnd vdd FILL
XFILL_7_BUFX2_insert4 gnd vdd FILL
XFILL_7_BUFX2_insert5 gnd vdd FILL
XFILL_7_BUFX2_insert6 gnd vdd FILL
XFILL_7_BUFX2_insert7 gnd vdd FILL
XFILL_7_BUFX2_insert8 gnd vdd FILL
XFILL_7_BUFX2_insert9 gnd vdd FILL
XFILL_5__2580_ gnd vdd FILL
XFILL_7__2598_ gnd vdd FILL
XFILL_5__2160_ gnd vdd FILL
XFILL_7__2178_ gnd vdd FILL
XFILL_0__1929_ gnd vdd FILL
XFILL_1__2992_ gnd vdd FILL
XFILL_1__2572_ gnd vdd FILL
XFILL_1__2152_ gnd vdd FILL
XFILL_3__2498_ gnd vdd FILL
XFILL_3__2078_ gnd vdd FILL
XFILL_8__1882_ gnd vdd FILL
XFILL_5__3365_ gnd vdd FILL
XFILL_4__1782_ gnd vdd FILL
XFILL_8__2667_ gnd vdd FILL
XFILL_8__2247_ gnd vdd FILL
XFILL_2__2641_ gnd vdd FILL
XFILL_2__2221_ gnd vdd FILL
XFILL_4__2987_ gnd vdd FILL
XFILL_4__2567_ gnd vdd FILL
XFILL_4__2147_ gnd vdd FILL
XFILL_0__2887_ gnd vdd FILL
XFILL_0__2467_ gnd vdd FILL
XFILL_6__3434_ gnd vdd FILL
XFILL_0__2047_ gnd vdd FILL
XFILL_6__3014_ gnd vdd FILL
XFILL_2__3426_ gnd vdd FILL
XFILL_2__3006_ gnd vdd FILL
XFILL_7__1869_ gnd vdd FILL
XFILL_5__1851_ gnd vdd FILL
XFILL_1__1843_ gnd vdd FILL
XFILL_7__2810_ gnd vdd FILL
XFILL_3__1769_ gnd vdd FILL
XFILL_3__2710_ gnd vdd FILL
XFILL_5__2636_ gnd vdd FILL
XFILL_5__2216_ gnd vdd FILL
XFILL_1__2628_ gnd vdd FILL
XFILL_1__2208_ gnd vdd FILL
X_1698_ RDY_bF$buf5 DIHOLD[3] _856_ vdd gnd OR2X2
XFILL_8__1938_ gnd vdd FILL
XFILL_6__1920_ gnd vdd FILL
XFILL_2__1912_ gnd vdd FILL
XFILL_4__1838_ gnd vdd FILL
XFILL_0__1738_ gnd vdd FILL
XFILL_6__2705_ gnd vdd FILL
X_3424_ _1651_ BI[3] _1509_ _1652_ _1510_ vdd 
+ gnd
+ AOI22X1
X_3004_ Z _666_ _671_ vdd gnd NAND2X1
XFILL_1__2381_ gnd vdd FILL
XFILL_5__3594_ gnd vdd FILL
XFILL_8__1691_ gnd vdd FILL
XFILL184650x74250 gnd vdd FILL
XFILL_5__3174_ gnd vdd FILL
XFILL_1__3586_ gnd vdd FILL
XFILL_1__3166_ gnd vdd FILL
XFILL_5__1907_ gnd vdd FILL
XFILL_8__2896_ gnd vdd FILL
XFILL_8__2476_ gnd vdd FILL
XFILL_8__2056_ gnd vdd FILL
XFILL_2__2870_ gnd vdd FILL
XFILL_2__2450_ gnd vdd FILL
XFILL_2__2030_ gnd vdd FILL
XFILL_4__2796_ gnd vdd FILL
XFILL_4__2376_ gnd vdd FILL
X_1910_ _1049_ _1053_ _1050_ _1054_ vdd gnd NAND3X1
XFILL_0__2696_ gnd vdd FILL
XFILL_0__2276_ gnd vdd FILL
XFILL_3__1998_ gnd vdd FILL
XFILL_5__2865_ gnd vdd FILL
XFILL_5__2445_ gnd vdd FILL
XFILL_5__2025_ gnd vdd FILL
XFILL_1__2857_ gnd vdd FILL
XFILL_1__2437_ gnd vdd FILL
XFILL_1__2017_ gnd vdd FILL
XFILL_7__3404_ gnd vdd FILL
XFILL_8__1747_ gnd vdd FILL
XFILL_2__1721_ gnd vdd FILL
XFILL_0__1967_ gnd vdd FILL
XFILL_6__2934_ gnd vdd FILL
XFILL_6__2514_ gnd vdd FILL
X_3233_ _1483_[0] vdd _1__bF$buf2 clk_bF$buf8 state[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2190_ gnd vdd FILL
XFILL_2__2926_ gnd vdd FILL
XFILL_2__2506_ gnd vdd FILL
XFILL_1__3395_ gnd vdd FILL
XFILL_5__1716_ gnd vdd FILL
XFILL_8__2285_ gnd vdd FILL
XFILL_1__1708_ gnd vdd FILL
XFILL_4__2185_ gnd vdd FILL
XFILL_6__3472_ gnd vdd FILL
XFILL_0__2085_ gnd vdd FILL
XFILL_6__3052_ gnd vdd FILL
XFILL_2__3464_ gnd vdd FILL
XFILL_2__3044_ gnd vdd FILL
X_2924_ _1001_ _1219__bF$buf0 _606_ _50_ vdd gnd AOI21X1
X_2504_ ADD[6] _190_ _248_ _249_ vdd gnd AOI21X1
XFILL_1__1881_ gnd vdd FILL
XFILL183750x117150 gnd vdd FILL
XFILL_5__2674_ gnd vdd FILL
XFILL_5__2254_ gnd vdd FILL
XFILL_1__2666_ gnd vdd FILL
XFILL_1__2246_ gnd vdd FILL
XFILL_7__3213_ gnd vdd FILL
XFILL_3__3533_ gnd vdd FILL
XFILL_3__3113_ gnd vdd FILL
XFILL_8__1976_ gnd vdd FILL
XFILL_5__3459_ gnd vdd FILL
XFILL_5__3039_ gnd vdd FILL
XFILL_2__1950_ gnd vdd FILL
XFILL_4__1876_ gnd vdd FILL
XFILL_0__1776_ gnd vdd FILL
XFILL_6__2743_ gnd vdd FILL
X_3462_ alu_op[2] BI[0] _1660_ _1548_ vdd gnd OAI21X1
XFILL_6__2323_ gnd vdd FILL
X_3042_ ADD[1] _699_ _704_ _705_ vdd gnd OAI21X1
XFILL_2__2735_ gnd vdd FILL
XFILL_2__2315_ gnd vdd FILL
XFILL_4__3602_ gnd vdd FILL
XFILL_6__3528_ gnd vdd FILL
XFILL_6__3108_ gnd vdd FILL
XFILL_0__3502_ gnd vdd FILL
XFILL_5__1945_ gnd vdd FILL
XFILL_8__2094_ gnd vdd FILL
XFILL_1__1937_ gnd vdd FILL
XFILL_7__2904_ gnd vdd FILL
XFILL_3__2804_ gnd vdd FILL
XFILL_4__3199_ gnd vdd FILL
X_2733_ _452_ _398_ RDY_bF$buf8 _453_ vdd gnd OAI21X1
X_2313_ _1443_ _1445_ _1446_ vdd gnd NOR2X1
XFILL_1__1690_ gnd vdd FILL
XFILL_0__3099_ gnd vdd FILL
XFILL_5__2483_ gnd vdd FILL
XFILL_5__2063_ gnd vdd FILL
X_3518_ _1673_ _1677_ _1598_ _1603_ _1604_ vdd 
+ gnd
+ AOI22X1
XFILL_1__2895_ gnd vdd FILL
XFILL_1__2475_ gnd vdd FILL
XFILL_7__3442_ gnd vdd FILL
XFILL_1__2055_ gnd vdd FILL
XFILL_7__3022_ gnd vdd FILL
XFILL_9_BUFX2_insert9 gnd vdd FILL
XFILL_8__1785_ gnd vdd FILL
XFILL_6__2972_ gnd vdd FILL
XFILL_6__2552_ gnd vdd FILL
X_3271_ _33_ vdd _1__bF$buf7 clk_bF$buf1 op[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2132_ gnd vdd FILL
XFILL_2__2964_ gnd vdd FILL
XFILL_2__2544_ gnd vdd FILL
XFILL_8__3511_ gnd vdd FILL
XFILL_2__2124_ gnd vdd FILL
XFILL_4__3411_ gnd vdd FILL
XFILL_9__1854_ gnd vdd FILL
XFILL_5__1754_ gnd vdd FILL
XFILL_1__1746_ gnd vdd FILL
XFILL_7__2713_ gnd vdd FILL
XFILL_3__2613_ gnd vdd FILL
XFILL_5__2959_ gnd vdd FILL
XFILL_5__2539_ gnd vdd FILL
XFILL_5__2119_ gnd vdd FILL
XFILL_6__3090_ gnd vdd FILL
XFILL_2__3082_ gnd vdd FILL
X_2962_ _632_ _633_ vdd gnd INVX1
XFILL_6__1823_ gnd vdd FILL
X_2542_ _281_ _282_ vdd gnd INVX1
X_2122_ _1257_ _1255_ _1258_ vdd gnd NAND2X1
XFILL_2__1815_ gnd vdd FILL
XFILL_5__2292_ gnd vdd FILL
XFILL_6__2608_ gnd vdd FILL
X_3327_ _81_ vdd _1__bF$buf3 clk_bF$buf0 _AXYS[1]_[4] vdd 
+ gnd
+ DFFSR
XFILL_1__2284_ gnd vdd FILL
XFILL_7_BUFX2_insert50 gnd vdd FILL
XFILL_7_BUFX2_insert51 gnd vdd FILL
XFILL_7_BUFX2_insert52 gnd vdd FILL
XFILL_7_BUFX2_insert53 gnd vdd FILL
XFILL_3__3151_ gnd vdd FILL
XFILL_7_BUFX2_insert54 gnd vdd FILL
XFILL_7_BUFX2_insert55 gnd vdd FILL
XFILL_7_BUFX2_insert56 gnd vdd FILL
XFILL_7_BUFX2_insert57 gnd vdd FILL
XFILL_5__3497_ gnd vdd FILL
XFILL_7_BUFX2_insert58 gnd vdd FILL
XFILL_7_BUFX2_insert59 gnd vdd FILL
XFILL_5__3077_ gnd vdd FILL
XFILL_1__3489_ gnd vdd FILL
XFILL_1__3069_ gnd vdd FILL
XFILL_8__2799_ gnd vdd FILL
XFILL_6__2781_ gnd vdd FILL
XFILL_6__2361_ gnd vdd FILL
XFILL_8__2379_ gnd vdd FILL
X_3080_ _737_ _738_ vdd gnd INVX1
XFILL_2__2773_ gnd vdd FILL
XFILL_2__2353_ gnd vdd FILL
XFILL_4__2699_ gnd vdd FILL
XFILL_4__2279_ gnd vdd FILL
X_1813_ state[4] _891_ _964_ _965_ vdd gnd OAI21X1
XFILL_4__3220_ gnd vdd FILL
XFILL_0__2599_ gnd vdd FILL
XFILL_0__2179_ gnd vdd FILL
XFILL_6__3566_ gnd vdd FILL
XFILL_6__3146_ gnd vdd FILL
XFILL_2__3558_ gnd vdd FILL
XFILL_0__3540_ gnd vdd FILL
XFILL_0__3120_ gnd vdd FILL
XFILL_2__3138_ gnd vdd FILL
XFILL_5__1983_ gnd vdd FILL
XFILL_1__1975_ gnd vdd FILL
XFILL_7__2942_ gnd vdd FILL
XFILL_7__2522_ gnd vdd FILL
XFILL_7__2102_ gnd vdd FILL
XFILL_3__2842_ gnd vdd FILL
XFILL_3__2422_ gnd vdd FILL
XFILL_3__2002_ gnd vdd FILL
XFILL_5__2768_ gnd vdd FILL
XFILL_5__2348_ gnd vdd FILL
XFILL_3__3207_ gnd vdd FILL
X_2771_ _1051__bF$buf2 _486_ _1120_ _487_ vdd gnd NAND3X1
X_2351_ _1475_ _1481_ _1482_ vdd gnd NOR2X1
XFILL_4__2911_ gnd vdd FILL
XFILL_6__2837_ gnd vdd FILL
X_3556_ _1634_ _1635_ _1633_ _1492_ vdd gnd OAI21X1
XFILL_6__2417_ gnd vdd FILL
X_3136_ _AXYS[3]_[4] _767_ _772_ vdd gnd NAND2X1
XFILL_7__3480_ gnd vdd FILL
XFILL_1__2093_ gnd vdd FILL
XFILL_7__3060_ gnd vdd FILL
XFILL_2__2829_ gnd vdd FILL
XFILL_0__2811_ gnd vdd FILL
XFILL_2__2409_ gnd vdd FILL
XFILL_3__3380_ gnd vdd FILL
XFILL_6__2590_ gnd vdd FILL
XFILL_8__2188_ gnd vdd FILL
XFILL_6__2170_ gnd vdd FILL
XFILL_2__2582_ gnd vdd FILL
XFILL_2__2162_ gnd vdd FILL
XFILL_4__2088_ gnd vdd FILL
XFILL_6__3375_ gnd vdd FILL
XFILL_2__3367_ gnd vdd FILL
XFILL_5__1792_ gnd vdd FILL
X_2827_ _1178_ _1304_ _528_ vdd gnd NOR2X1
X_2407_ _127_ PC[4] _161_ _162_ vdd gnd AOI21X1
XFILL_1__1784_ gnd vdd FILL
XFILL_7__2751_ gnd vdd FILL
XFILL_7__2331_ gnd vdd FILL
XFILL_3__2651_ gnd vdd FILL
XFILL_3__2231_ gnd vdd FILL
XFILL_5__2997_ gnd vdd FILL
XFILL_5__2577_ gnd vdd FILL
XFILL_5__2157_ gnd vdd FILL
XFILL_1__2989_ gnd vdd FILL
XFILL_1__2569_ gnd vdd FILL
XFILL_7__3536_ gnd vdd FILL
XFILL_1__2149_ gnd vdd FILL
XFILL_7__3116_ gnd vdd FILL
XFILL_1__3510_ gnd vdd FILL
XFILL_3__3436_ gnd vdd FILL
XFILL_3__3016_ gnd vdd FILL
XFILL_8__1879_ gnd vdd FILL
XFILL_6__1861_ gnd vdd FILL
X_2580_ reset _1_ vdd gnd INVX8
X_2160_ _1150_ _1295_ vdd gnd INVX1
XFILL_2__1853_ gnd vdd FILL
XFILL_8__2820_ gnd vdd FILL
XFILL_8__2400_ gnd vdd FILL
XFILL184350x23550 gnd vdd FILL
XFILL_4__1779_ gnd vdd FILL
XFILL_4__2720_ gnd vdd FILL
XFILL_4__2300_ gnd vdd FILL
XFILL_6__2646_ gnd vdd FILL
XFILL_6__2226_ gnd vdd FILL
X_3365_ ADD[5] ADD[4] _1643_ vdd gnd NOR2X1
XFILL_2__2638_ gnd vdd FILL
XFILL_0__2620_ gnd vdd FILL
XFILL_0__2200_ gnd vdd FILL
XFILL_2__2218_ gnd vdd FILL
XFILL_4__3505_ gnd vdd FILL
XFILL_3__1922_ gnd vdd FILL
XFILL_0__3405_ gnd vdd FILL
XFILL_5__1848_ gnd vdd FILL
XFILL_7__2807_ gnd vdd FILL
XFILL_2__2391_ gnd vdd FILL
XFILL_3__2707_ gnd vdd FILL
X_1851_ state[2] state[3] _995_ vdd gnd NOR2X1
XFILL_6__3184_ gnd vdd FILL
XFILL_2__3596_ gnd vdd FILL
XFILL_2__3176_ gnd vdd FILL
XFILL_6__1917_ gnd vdd FILL
X_2636_ PC[2] _336_ _364_ vdd gnd NAND2X1
X_2216_ _1172_ _1350_ _1315_ _1351_ vdd gnd OAI21X1
XFILL_7__2980_ gnd vdd FILL
XFILL_7__2560_ gnd vdd FILL
XFILL_7__2140_ gnd vdd FILL
XFILL_2__1909_ gnd vdd FILL
XFILL_3__2880_ gnd vdd FILL
XFILL_3__2460_ gnd vdd FILL
XFILL_3__2040_ gnd vdd FILL
XFILL_5__2386_ gnd vdd FILL
XFILL_1__2798_ gnd vdd FILL
XFILL_1__2378_ gnd vdd FILL
XFILL_8__1688_ gnd vdd FILL
XFILL_6__2875_ gnd vdd FILL
XFILL_6__2455_ gnd vdd FILL
X_3594_ _1685_[9] AB[9] vdd gnd BUFX2
XFILL_6__2035_ gnd vdd FILL
X_3174_ _963_ _805_ _806_ vdd gnd NOR2X1
XFILL_2__2867_ gnd vdd FILL
XFILL_2__2447_ gnd vdd FILL
XFILL_2__2027_ gnd vdd FILL
XFILL_8__3414_ gnd vdd FILL
X_1907_ _869__bF$buf3 _893_ _1051_ vdd gnd NAND2X1
XFILL_7__1831_ gnd vdd FILL
XFILL_3__1731_ gnd vdd FILL
XFILL_0__3214_ gnd vdd FILL
XFILL_7__2616_ gnd vdd FILL
XFILL_3__2936_ gnd vdd FILL
XFILL_3__2516_ gnd vdd FILL
XFILL_8__1900_ gnd vdd FILL
XFILL_4__1800_ gnd vdd FILL
X_2865_ _908_ _1129__bF$buf0 _561_ _535_ _36_ vdd 
+ gnd
+ OAI22X1
XFILL_6__1726_ gnd vdd FILL
XFILL183450x167850 gnd vdd FILL
X_2445_ _192_ _195_ _196_ vdd gnd NOR2X1
X_2025_ IRHOLD_valid_bF$buf3 _863_ _1160_ _1161_ vdd gnd OAI21X1
XFILL_0__1700_ gnd vdd FILL
XFILL_2__1718_ gnd vdd FILL
XFILL_5__2195_ gnd vdd FILL
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
XFILL_8__3223_ gnd vdd FILL
X_1716_ state[5] state[4] _869_ vdd gnd NOR2X1
XFILL_4__3543_ gnd vdd FILL
XFILL_4__3123_ gnd vdd FILL
XFILL_6__3469_ gnd vdd FILL
XFILL_6__3049_ gnd vdd FILL
XFILL_3__1960_ gnd vdd FILL
XFILL_0__3443_ gnd vdd FILL
XFILL_0__3023_ gnd vdd FILL
XFILL_5__1886_ gnd vdd FILL
XFILL_1__1878_ gnd vdd FILL
XFILL_7__2845_ gnd vdd FILL
XFILL_7__2425_ gnd vdd FILL
XFILL_7__2005_ gnd vdd FILL
XFILL_3__2745_ gnd vdd FILL
XFILL_3__2325_ gnd vdd FILL
XFILL_6__1955_ gnd vdd FILL
X_2674_ _389_ _395_ _385_ _398_ vdd gnd NAND3X1
X_2254_ _1387_ _1388_ vdd gnd INVX1
XFILL_2__1947_ gnd vdd FILL
XFILL_8__2914_ gnd vdd FILL
XFILL184650x62550 gnd vdd FILL
XFILL_4__2814_ gnd vdd FILL
X_3459_ _1657_ _1544_ _1545_ vdd gnd NAND2X1
X_3039_ _700_ _701_ ADD[1] _702_ vdd gnd OAI21X1
XFILL_7__3383_ gnd vdd FILL
XFILL_0__2714_ gnd vdd FILL
XFILL_6__2493_ gnd vdd FILL
XFILL_6__2073_ gnd vdd FILL
XFILL_2__2485_ gnd vdd FILL
XFILL_8__3452_ gnd vdd FILL
XFILL_2__2065_ gnd vdd FILL
XFILL_8__3032_ gnd vdd FILL
X_1945_ _1054_ ADD[3] _1085_ _1086_ vdd gnd AOI21X1
XFILL_5__1695_ gnd vdd FILL
XFILL_7__2654_ gnd vdd FILL
XFILL_7__2234_ gnd vdd FILL
XFILL_3__2974_ gnd vdd FILL
XFILL_3__2554_ gnd vdd FILL
XFILL_3__2134_ gnd vdd FILL
XFILL_7__3439_ gnd vdd FILL
XFILL_5__3421_ gnd vdd FILL
XFILL_7__3019_ gnd vdd FILL
XFILL_5__3001_ gnd vdd FILL
XFILL_1__3413_ gnd vdd FILL
XFILL_6__1764_ gnd vdd FILL
X_2483_ _971_ _208_ _230_ _231_ vdd gnd OAI21X1
X_2063_ RDY_bF$buf1 _883_ _1199_ vdd gnd NAND2X1
XFILL_2__1756_ gnd vdd FILL
XFILL_8__2723_ gnd vdd FILL
XFILL_8__2303_ gnd vdd FILL
XFILL_4__2623_ gnd vdd FILL
XFILL_4__2203_ gnd vdd FILL
XFILL_6__2969_ gnd vdd FILL
XFILL_6__2549_ gnd vdd FILL
X_3268_ _30_ vdd _1__bF$buf6 clk_bF$buf6 clv vdd 
+ gnd
+ DFFSR
XFILL_6__2129_ gnd vdd FILL
XFILL_7__3192_ gnd vdd FILL
XFILL_0__2943_ gnd vdd FILL
XFILL_0__2523_ gnd vdd FILL
XFILL_8__3508_ gnd vdd FILL
XFILL_0__2103_ gnd vdd FILL
XFILL_3__3092_ gnd vdd FILL
XFILL_7__1925_ gnd vdd FILL
XFILL_4__3408_ gnd vdd FILL
XFILL_3__1825_ gnd vdd FILL
XFILL_2__2294_ gnd vdd FILL
X_1754_ _905_ _906_ _886__bF$buf0 _907_ vdd gnd OAI21X1
XFILL_4__3581_ gnd vdd FILL
XFILL_4__3161_ gnd vdd FILL
XFILL_6__3087_ gnd vdd FILL
XFILL_0__3481_ gnd vdd FILL
XFILL_2__3499_ gnd vdd FILL
XFILL_0__3061_ gnd vdd FILL
XFILL_2__3079_ gnd vdd FILL
XFILL183750x105450 gnd vdd FILL
X_2959_ _629_ _630_ vdd gnd INVX1
X_2539_ ABH[3] _1075_ _200_ ADD[3] _279_ vdd 
+ gnd
+ AOI22X1
X_2119_ _853__bF$buf6 _1185_ _1254_ _1253_ _1255_ vdd 
+ gnd
+ AOI22X1
XFILL_7__2883_ gnd vdd FILL
XFILL_7__2463_ gnd vdd FILL
XFILL_7__2043_ gnd vdd FILL
XFILL_3__2783_ gnd vdd FILL
XFILL_3__2363_ gnd vdd FILL
XFILL_5__2289_ gnd vdd FILL
XFILL_5__3230_ gnd vdd FILL
XFILL_1__3222_ gnd vdd FILL
XFILL_3__3148_ gnd vdd FILL
XFILL_6__1993_ gnd vdd FILL
X_2292_ _996_ _887__bF$buf2 _853__bF$buf3 _1425_ vdd gnd OAI21X1
XFILL_2__1985_ gnd vdd FILL
XFILL_8__2952_ gnd vdd FILL
XFILL_8__2532_ gnd vdd FILL
XFILL_8__2112_ gnd vdd FILL
XFILL_4__2852_ gnd vdd FILL
XFILL_4__2432_ gnd vdd FILL
XFILL_4__2012_ gnd vdd FILL
XFILL_6__2778_ gnd vdd FILL
X_3497_ _1538_ _1567_ _1578_ _1583_ vdd gnd NAND3X1
XFILL_6__2358_ gnd vdd FILL
X_3077_ _730_ _734_ _1281_ _735_ vdd gnd AOI21X1
XFILL_0__2752_ gnd vdd FILL
XFILL_0__2332_ gnd vdd FILL
XFILL_7__1734_ gnd vdd FILL
XFILL_4__3217_ gnd vdd FILL
XFILL_0__3537_ gnd vdd FILL
XFILL_0__3117_ gnd vdd FILL
XFILL_5__2921_ gnd vdd FILL
XFILL_7__2939_ gnd vdd FILL
XFILL_5__2501_ gnd vdd FILL
XFILL_7__2519_ gnd vdd FILL
XFILL_8__3490_ gnd vdd FILL
XFILL_8__3070_ gnd vdd FILL
XFILL_1__2913_ gnd vdd FILL
XFILL_3__2839_ gnd vdd FILL
XFILL_3__2419_ gnd vdd FILL
X_1983_ _1119_ _1120_ vdd gnd INVX1
XFILL_4__3390_ gnd vdd FILL
XFILL_8__1803_ gnd vdd FILL
XFILL_4__1703_ gnd vdd FILL
X_2768_ _853__bF$buf4 _299_ _485_ vdd gnd NAND2X1
X_2348_ _1478_ _1262_ _1479_ vdd gnd AND2X2
XFILL_7__2692_ gnd vdd FILL
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
XFILL_3__3377_ gnd vdd FILL
XFILL_2__1794_ gnd vdd FILL
XFILL_8__2761_ gnd vdd FILL
XFILL_8__2341_ gnd vdd FILL
XFILL_4__2661_ gnd vdd FILL
XFILL_4__2241_ gnd vdd FILL
XFILL_6__2587_ gnd vdd FILL
XFILL_6__2167_ gnd vdd FILL
XFILL_2__2999_ gnd vdd FILL
XFILL_0__2981_ gnd vdd FILL
XFILL_2__2579_ gnd vdd FILL
XFILL_0__2561_ gnd vdd FILL
XFILL_8__3546_ gnd vdd FILL
XFILL_0__2141_ gnd vdd FILL
XFILL_2__2159_ gnd vdd FILL
XFILL_8__3126_ gnd vdd FILL
XFILL_2__3520_ gnd vdd FILL
XFILL_2__3100_ gnd vdd FILL
XFILL_7__1963_ gnd vdd FILL
XFILL_4__3446_ gnd vdd FILL
XFILL_4__3026_ gnd vdd FILL
XFILL_3__1863_ gnd vdd FILL
XFILL_5__1789_ gnd vdd FILL
XFILL_7__2748_ gnd vdd FILL
XFILL_5__2730_ gnd vdd FILL
XFILL_5__2310_ gnd vdd FILL
XFILL_7__2328_ gnd vdd FILL
XFILL_1__2722_ gnd vdd FILL
XFILL_1__2302_ gnd vdd FILL
XFILL_3__2648_ gnd vdd FILL
XFILL_3__2228_ gnd vdd FILL
X_1792_ _943_ _942_ _944_ vdd gnd NOR2X1
XFILL_5__3515_ gnd vdd FILL
XFILL_1__3507_ gnd vdd FILL
XFILL_4__1932_ gnd vdd FILL
X_2997_ N _659_ _665_ vdd gnd NAND2X1
XFILL_6__1858_ gnd vdd FILL
X_2577_ _310_ _1031_ _u_ALU8.BCD_ vdd gnd NOR2X1
X_2157_ _1252_ _1292_ _1271_ _1293_ vdd gnd NAND3X1
XFILL_7__2081_ gnd vdd FILL
XFILL_0__1832_ gnd vdd FILL
XFILL_8__2817_ gnd vdd FILL
XFILL_4__2717_ gnd vdd FILL
XFILL_0__2617_ gnd vdd FILL
XFILL_3__3186_ gnd vdd FILL
XFILL_8__2990_ gnd vdd FILL
XFILL_8__2570_ gnd vdd FILL
XFILL_8__2150_ gnd vdd FILL
XFILL_3__1919_ gnd vdd FILL
XFILL_4__2890_ gnd vdd FILL
XFILL_4__2470_ gnd vdd FILL
XFILL_4__2050_ gnd vdd FILL
XFILL_6__2396_ gnd vdd FILL
XFILL_0__2790_ gnd vdd FILL
XFILL_0__2370_ gnd vdd FILL
XFILL_2__2388_ gnd vdd FILL
X_1848_ _869__bF$buf2 _927_ _992_ vdd gnd NAND2X1
XFILL_7__1772_ gnd vdd FILL
XFILL_0__3155_ gnd vdd FILL
XFILL_7__2977_ gnd vdd FILL
XFILL_7__2557_ gnd vdd FILL
XFILL_7__2137_ gnd vdd FILL
XFILL_1__2951_ gnd vdd FILL
XFILL_1__2531_ gnd vdd FILL
XFILL_1__2111_ gnd vdd FILL
XFILL_3__2877_ gnd vdd FILL
XFILL_3__2457_ gnd vdd FILL
XFILL_3__2037_ gnd vdd FILL
XFILL_8__1841_ gnd vdd FILL
XFILL_4__1741_ gnd vdd FILL
X_2386_ _137_ _144_ _136_ _1686_[0] vdd gnd NAND3X1
XFILL_8__2626_ gnd vdd FILL
XFILL_8__2206_ gnd vdd FILL
XFILL184650x39150 gnd vdd FILL
XFILL_2__2600_ gnd vdd FILL
XFILL_4__2946_ gnd vdd FILL
XFILL_4__2526_ gnd vdd FILL
XFILL_4__2106_ gnd vdd FILL
XFILL_7__3095_ gnd vdd FILL
XFILL_0__2846_ gnd vdd FILL
XFILL_0__2426_ gnd vdd FILL
XFILL_0__2006_ gnd vdd FILL
XFILL_5__1810_ gnd vdd FILL
XFILL_7__1828_ gnd vdd FILL
XFILL_1__1802_ gnd vdd FILL
XFILL_3__1728_ gnd vdd FILL
XFILL_2__2197_ gnd vdd FILL
XFILL_8__3584_ gnd vdd FILL
XFILL_8__3164_ gnd vdd FILL
XFILL184350x97650 gnd vdd FILL
XFILL_4__3484_ gnd vdd FILL
XFILL_4__3064_ gnd vdd FILL
XFILL_0__3384_ gnd vdd FILL
XFILL_7__2786_ gnd vdd FILL
XFILL_7__2366_ gnd vdd FILL
XFILL_1__2760_ gnd vdd FILL
XFILL_1__2340_ gnd vdd FILL
XFILL_3__2686_ gnd vdd FILL
XFILL_3__2266_ gnd vdd FILL
XFILL_5__3553_ gnd vdd FILL
XFILL_5__3133_ gnd vdd FILL
XFILL184350x11850 gnd vdd FILL
XFILL_1__3545_ gnd vdd FILL
XFILL_1__3125_ gnd vdd FILL
XFILL_4__1970_ gnd vdd FILL
XFILL_6__1896_ gnd vdd FILL
X_2195_ _1175_ _1329_ _1330_ vdd gnd NAND2X1
XFILL_0__1870_ gnd vdd FILL
XFILL_2__1888_ gnd vdd FILL
XFILL_8__2855_ gnd vdd FILL
XFILL_8__2435_ gnd vdd FILL
XFILL_8__2015_ gnd vdd FILL
XFILL_4__2755_ gnd vdd FILL
XFILL_4__2335_ gnd vdd FILL
XFILL_0__2655_ gnd vdd FILL
XFILL_0__2235_ gnd vdd FILL
XFILL_6__3202_ gnd vdd FILL
XFILL_3__1957_ gnd vdd FILL
XFILL_5__2824_ gnd vdd FILL
XFILL_5__2404_ gnd vdd FILL
XFILL_8__3393_ gnd vdd FILL
XFILL_1__2816_ gnd vdd FILL
X_1886_ _1029_ _951_ _1030_ vdd gnd NOR2X1
XFILL_8__1706_ gnd vdd FILL
XFILL_0__3193_ gnd vdd FILL
XFILL_7__2595_ gnd vdd FILL
XFILL_7__2175_ gnd vdd FILL
XFILL_0__1926_ gnd vdd FILL
XFILL_3__2495_ gnd vdd FILL
XFILL_3__2075_ gnd vdd FILL
XFILL_2__1697_ gnd vdd FILL
XFILL_8__2664_ gnd vdd FILL
XFILL_8__2244_ gnd vdd FILL
XFILL_4__2984_ gnd vdd FILL
XFILL_4__2564_ gnd vdd FILL
XFILL_4__2144_ gnd vdd FILL
XFILL_0__2884_ gnd vdd FILL
XFILL_0__2464_ gnd vdd FILL
XFILL_6__3431_ gnd vdd FILL
XFILL_0__2044_ gnd vdd FILL
XFILL_8__3449_ gnd vdd FILL
XFILL_8__3029_ gnd vdd FILL
XFILL_6__3011_ gnd vdd FILL
XFILL_2__3423_ gnd vdd FILL
XFILL_2__3003_ gnd vdd FILL
XFILL_7__1866_ gnd vdd FILL
XFILL_1__1840_ gnd vdd FILL
XFILL_3__1766_ gnd vdd FILL
XFILL_5__2633_ gnd vdd FILL
XFILL_5__2213_ gnd vdd FILL
XFILL_1__2625_ gnd vdd FILL
XFILL_1__2205_ gnd vdd FILL
X_1695_ RDY_bF$buf2 DIHOLD[2] _854_ vdd gnd OR2X2
XFILL_8__1935_ gnd vdd FILL
XFILL_5__3418_ gnd vdd FILL
XFILL_4__1835_ gnd vdd FILL
XFILL_0__1735_ gnd vdd FILL
XFILL_6__2702_ gnd vdd FILL
X_3421_ alu_shift_right AI[4] _1507_ vdd gnd NAND2X1
X_3001_ DIMUX[1] _1260_ _668_ vdd gnd NAND2X1
XFILL_5__3591_ gnd vdd FILL
XFILL_5__3171_ gnd vdd FILL
XFILL_7__3189_ gnd vdd FILL
XFILL_1__3583_ gnd vdd FILL
XFILL_1__3163_ gnd vdd FILL
XFILL_3__3089_ gnd vdd FILL
XFILL_5__1904_ gnd vdd FILL
XFILL_8__2893_ gnd vdd FILL
XFILL_8__2473_ gnd vdd FILL
XFILL_8__2053_ gnd vdd FILL
XFILL_4__2793_ gnd vdd FILL
XFILL_4__2373_ gnd vdd FILL
XFILL_6__2299_ gnd vdd FILL
XFILL_0__2693_ gnd vdd FILL
XFILL_0__2273_ gnd vdd FILL
XFILL_2__3232_ gnd vdd FILL
XFILL_4__3158_ gnd vdd FILL
XFILL_3__1995_ gnd vdd FILL
XFILL_0__3478_ gnd vdd FILL
XFILL_0__3058_ gnd vdd FILL
XFILL_5__2862_ gnd vdd FILL
XFILL_5__2442_ gnd vdd FILL
XFILL_5__2022_ gnd vdd FILL
XFILL_1__2854_ gnd vdd FILL
XFILL_1__2434_ gnd vdd FILL
XFILL_7__3401_ gnd vdd FILL
XFILL_1__2014_ gnd vdd FILL
XFILL_8__1744_ gnd vdd FILL
XFILL_5__3227_ gnd vdd FILL
XFILL_1__3219_ gnd vdd FILL
X_2289_ _1240_ _959_ _853__bF$buf3 _1422_ vdd gnd MUX2X1
XFILL_0__1964_ gnd vdd FILL
XFILL_6__2931_ gnd vdd FILL
XFILL_8__2949_ gnd vdd FILL
XFILL_6__2511_ gnd vdd FILL
XFILL_8__2529_ gnd vdd FILL
XFILL_8__2109_ gnd vdd FILL
X_3230_ _1108_ _830__bF$buf1 _847_ _115_ vdd gnd OAI21X1
XFILL_3_BUFX2_insert70 gnd vdd FILL
XFILL_3_BUFX2_insert71 gnd vdd FILL
XFILL_3_BUFX2_insert72 gnd vdd FILL
XFILL_2__2923_ gnd vdd FILL
XFILL_3_BUFX2_insert73 gnd vdd FILL
XFILL_3_BUFX2_insert74 gnd vdd FILL
XFILL_2__2503_ gnd vdd FILL
XFILL_3_BUFX2_insert75 gnd vdd FILL
XFILL_3_BUFX2_insert76 gnd vdd FILL
XFILL_3_BUFX2_insert77 gnd vdd FILL
XFILL_4__2849_ gnd vdd FILL
XFILL_3_BUFX2_insert78 gnd vdd FILL
XFILL_3_BUFX2_insert79 gnd vdd FILL
XFILL_4__2429_ gnd vdd FILL
XFILL_4__2009_ gnd vdd FILL
XFILL_0__2749_ gnd vdd FILL
XFILL_0__2329_ gnd vdd FILL
XFILL_1__3392_ gnd vdd FILL
XFILL_5__1713_ gnd vdd FILL
XFILL_8__2282_ gnd vdd FILL
XFILL_1__1705_ gnd vdd FILL
XFILL_4__2182_ gnd vdd FILL
XFILL_5__2918_ gnd vdd FILL
XFILL_8__3487_ gnd vdd FILL
XFILL_0__2082_ gnd vdd FILL
XFILL_8__3067_ gnd vdd FILL
XFILL_2__3461_ gnd vdd FILL
XFILL_2__3041_ gnd vdd FILL
XFILL_4__3387_ gnd vdd FILL
X_2921_ _1383_ _603_ _593_ _604_ vdd gnd AOI21X1
X_2501_ ADD[6] _246_ vdd gnd INVX1
XFILL_5__2671_ gnd vdd FILL
XFILL_7__2689_ gnd vdd FILL
XFILL_7__2269_ gnd vdd FILL
XFILL_5__2251_ gnd vdd FILL
XFILL_1__2663_ gnd vdd FILL
XFILL_1__2243_ gnd vdd FILL
XFILL_7__3210_ gnd vdd FILL
XFILL_3__2589_ gnd vdd FILL
XFILL_3__2169_ gnd vdd FILL
XFILL_3__3530_ gnd vdd FILL
XFILL_3__3110_ gnd vdd FILL
XFILL_8__1973_ gnd vdd FILL
XFILL_5__3456_ gnd vdd FILL
XFILL_5__3036_ gnd vdd FILL
XFILL_1__3448_ gnd vdd FILL
XFILL_1__3028_ gnd vdd FILL
XFILL_4__1873_ gnd vdd FILL
XFILL_6__1799_ gnd vdd FILL
X_2098_ _1233_ _1226_ _1234_ vdd gnd AND2X2
XFILL_0__1773_ gnd vdd FILL
XFILL_6__2740_ gnd vdd FILL
XFILL_8__2758_ gnd vdd FILL
XFILL_8__2338_ gnd vdd FILL
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
XFILL_8__2091_ gnd vdd FILL
XFILL_1__1934_ gnd vdd FILL
XFILL_7__2901_ gnd vdd FILL
XFILL_3__2801_ gnd vdd FILL
XFILL_5__2727_ gnd vdd FILL
XFILL_5__2307_ gnd vdd FILL
XFILL_1__2719_ gnd vdd FILL
X_1789_ _876_ _941_ vdd gnd INVX1
XFILL_4__3196_ gnd vdd FILL
X_2730_ _277_ _445_ _449_ _450_ vdd gnd OAI21X1
X_2310_ _1442_ _1389_ _1443_ vdd gnd NAND2X1
XFILL_0__3096_ gnd vdd FILL
XFILL_4__1929_ gnd vdd FILL
XFILL_7__2498_ gnd vdd FILL
XFILL_5__2480_ gnd vdd FILL
XFILL_7__2078_ gnd vdd FILL
XFILL_5__2060_ gnd vdd FILL
XFILL_0__1829_ gnd vdd FILL
X_3515_ _1600_ _1601_ vdd gnd INVX1
XFILL_1__2892_ gnd vdd FILL
XFILL_1__2472_ gnd vdd FILL
XFILL_1__2052_ gnd vdd FILL
XFILL_3__2398_ gnd vdd FILL
XFILL_8__1782_ gnd vdd FILL
XFILL_8__2987_ gnd vdd FILL
XFILL_8__2567_ gnd vdd FILL
XFILL_8__2147_ gnd vdd FILL
XFILL_2__2961_ gnd vdd FILL
XFILL_2__2541_ gnd vdd FILL
XFILL_2__2121_ gnd vdd FILL
XFILL_4__2887_ gnd vdd FILL
XFILL_4__2467_ gnd vdd FILL
XFILL_4__2047_ gnd vdd FILL
XFILL_0__2787_ gnd vdd FILL
XFILL_0__2367_ gnd vdd FILL
XFILL_7__1769_ gnd vdd FILL
XFILL_5__1751_ gnd vdd FILL
XFILL_1__1743_ gnd vdd FILL
XFILL_7__2710_ gnd vdd FILL
XFILL_3__2610_ gnd vdd FILL
XFILL_5__2956_ gnd vdd FILL
XFILL_5__2536_ gnd vdd FILL
XFILL_5__2116_ gnd vdd FILL
XFILL_1__2948_ gnd vdd FILL
XFILL_1__2528_ gnd vdd FILL
XFILL_1__2108_ gnd vdd FILL
XFILL_8__1838_ gnd vdd FILL
XFILL_6__1820_ gnd vdd FILL
XFILL_2__1812_ gnd vdd FILL
XFILL_4__1738_ gnd vdd FILL
XFILL_6__2605_ gnd vdd FILL
X_3324_ _78_ vdd _1__bF$buf4 clk_bF$buf0 _AXYS[1]_[1] vdd 
+ gnd
+ DFFSR
XFILL_1__2281_ gnd vdd FILL
XFILL_7_BUFX2_insert20 gnd vdd FILL
XFILL_7_BUFX2_insert21 gnd vdd FILL
XFILL_7_BUFX2_insert22 gnd vdd FILL
XFILL_7_BUFX2_insert23 gnd vdd FILL
XFILL_7_BUFX2_insert24 gnd vdd FILL
XFILL_7_BUFX2_insert25 gnd vdd FILL
XFILL_7_BUFX2_insert26 gnd vdd FILL
XFILL_7_BUFX2_insert27 gnd vdd FILL
XFILL_5__3494_ gnd vdd FILL
XFILL_5__3074_ gnd vdd FILL
XFILL_1__3486_ gnd vdd FILL
XFILL_1__3066_ gnd vdd FILL
XFILL_5__1807_ gnd vdd FILL
XFILL_8__2796_ gnd vdd FILL
XFILL_8__2376_ gnd vdd FILL
XFILL_2__2770_ gnd vdd FILL
XFILL_2__2350_ gnd vdd FILL
XFILL_4__2696_ gnd vdd FILL
XFILL_4__2276_ gnd vdd FILL
X_1810_ _882__bF$buf0 _961_ _907_ _962_ vdd gnd OAI21X1
XFILL_0__2596_ gnd vdd FILL
XFILL_6__3563_ gnd vdd FILL
XFILL_0__2176_ gnd vdd FILL
XFILL_6__3143_ gnd vdd FILL
XFILL_2__3555_ gnd vdd FILL
XFILL_2__3135_ gnd vdd FILL
XFILL_7__1998_ gnd vdd FILL
XFILL_5__1980_ gnd vdd FILL
XFILL_1__1972_ gnd vdd FILL
XFILL_3__1898_ gnd vdd FILL
XFILL_5__2765_ gnd vdd FILL
XFILL_5__2345_ gnd vdd FILL
XFILL_1__2757_ gnd vdd FILL
XFILL_1__2337_ gnd vdd FILL
XFILL_3__3204_ gnd vdd FILL
XFILL_4__1967_ gnd vdd FILL
XFILL_0__1867_ gnd vdd FILL
XFILL_6__2834_ gnd vdd FILL
X_3553_ ADD[4] _1649__bF$buf3 _1633_ vdd gnd NAND2X1
XFILL_6__2414_ gnd vdd FILL
X_3133_ _714_ _767_ _770_ _95_ vdd gnd OAI21X1
XFILL_1__2090_ gnd vdd FILL
XFILL_2__2826_ gnd vdd FILL
XFILL_2__2406_ gnd vdd FILL
XFILL_8__2185_ gnd vdd FILL
XFILL_4__2085_ gnd vdd FILL
XFILL_6__3372_ gnd vdd FILL
XFILL_2__3364_ gnd vdd FILL
X_2824_ _1139_ _525_ _526_ vdd gnd NOR2X1
X_2404_ _156_ _159_ _155_ _1686_[3] vdd gnd NAND3X1
XFILL_1__1781_ gnd vdd FILL
XFILL_5__2994_ gnd vdd FILL
XFILL_5__2574_ gnd vdd FILL
XFILL_5__2154_ gnd vdd FILL
XFILL_1__2986_ gnd vdd FILL
XFILL_1__2566_ gnd vdd FILL
XFILL_7__3533_ gnd vdd FILL
XFILL_1__2146_ gnd vdd FILL
XFILL_7__3113_ gnd vdd FILL
XFILL_3__3433_ gnd vdd FILL
XFILL_3__3013_ gnd vdd FILL
XFILL_8__1876_ gnd vdd FILL
XFILL184650x27450 gnd vdd FILL
XFILL_2__1850_ gnd vdd FILL
XFILL_4__1776_ gnd vdd FILL
XFILL_6__2643_ gnd vdd FILL
XFILL_6__2223_ gnd vdd FILL
X_3362_ _115_ vdd _1__bF$buf8 clk_bF$buf7 ABH[6] vdd 
+ gnd
+ DFFSR
XFILL_2__2635_ gnd vdd FILL
XFILL_2__2215_ gnd vdd FILL
XFILL_8__3602_ gnd vdd FILL
XFILL_4__3502_ gnd vdd FILL
XFILL_6__3428_ gnd vdd FILL
XFILL_6__3008_ gnd vdd FILL
XFILL_0__3402_ gnd vdd FILL
XFILL_5__1845_ gnd vdd FILL
XFILL_1__1837_ gnd vdd FILL
XFILL_7__2804_ gnd vdd FILL
XFILL184350x85950 gnd vdd FILL
XFILL_3__2704_ gnd vdd FILL
XFILL_8_BUFX2_insert70 gnd vdd FILL
XFILL_8_BUFX2_insert71 gnd vdd FILL
XFILL_8_BUFX2_insert72 gnd vdd FILL
XFILL_8_BUFX2_insert73 gnd vdd FILL
XFILL_8_BUFX2_insert74 gnd vdd FILL
XFILL_8_BUFX2_insert75 gnd vdd FILL
XFILL_8_BUFX2_insert76 gnd vdd FILL
XFILL_8_BUFX2_insert77 gnd vdd FILL
XFILL_8_BUFX2_insert78 gnd vdd FILL
XFILL_8_BUFX2_insert79 gnd vdd FILL
XFILL_8__3199_ gnd vdd FILL
XFILL_6__3181_ gnd vdd FILL
XFILL_2__3593_ gnd vdd FILL
XFILL_2__3173_ gnd vdd FILL
XFILL_4__3099_ gnd vdd FILL
XFILL_6__1914_ gnd vdd FILL
X_2633_ ADD[3] _321_ _360_ _361_ vdd gnd AOI21X1
X_2213_ _1168_ _1330_ _1348_ vdd gnd NOR2X1
XFILL_2__1906_ gnd vdd FILL
XFILL_5__2383_ gnd vdd FILL
X_3418_ _1503_ _1502_ _1499_ _1504_ vdd gnd OAI21X1
XFILL_1__2795_ gnd vdd FILL
XFILL_1__2375_ gnd vdd FILL
XFILL_5__3588_ gnd vdd FILL
XFILL_5__3168_ gnd vdd FILL
XFILL_6__2872_ gnd vdd FILL
X_3591_ _1685_[6] AB[6] vdd gnd BUFX2
XFILL_6__2452_ gnd vdd FILL
XFILL_6__2032_ gnd vdd FILL
X_3171_ _1185_ _1277_ _803_ vdd gnd NOR2X1
XFILL_2__2864_ gnd vdd FILL
XFILL_2__2444_ gnd vdd FILL
XFILL_8__3411_ gnd vdd FILL
XFILL_2__2024_ gnd vdd FILL
X_1904_ _918__bF$buf1 _946_ _1048_ vdd gnd NOR2X1
XFILL_0__3211_ gnd vdd FILL
XFILL_2__3229_ gnd vdd FILL
XFILL_7__2613_ gnd vdd FILL
XFILL_9__2959_ gnd vdd FILL
XFILL_9__2119_ gnd vdd FILL
XFILL_3__2933_ gnd vdd FILL
XFILL_3__2513_ gnd vdd FILL
XFILL_5__2859_ gnd vdd FILL
XFILL_5__2439_ gnd vdd FILL
XFILL_5__2019_ gnd vdd FILL
X_2862_ _537_ _560_ vdd gnd INVX1
XFILL_6__1723_ gnd vdd FILL
X_2442_ _899_ _892_ _193_ vdd gnd NOR2X1
X_2022_ IRHOLD_valid_bF$buf1 _864_ _1157_ _1158_ vdd gnd OAI21X1
XFILL_8_CLKBUF1_insert30 gnd vdd FILL
XFILL_8_CLKBUF1_insert31 gnd vdd FILL
XFILL_8_CLKBUF1_insert32 gnd vdd FILL
XFILL_8_CLKBUF1_insert33 gnd vdd FILL
XFILL_8_CLKBUF1_insert34 gnd vdd FILL
XFILL_8_CLKBUF1_insert35 gnd vdd FILL
XFILL_8_CLKBUF1_insert36 gnd vdd FILL
XFILL_8_CLKBUF1_insert37 gnd vdd FILL
XFILL_8_CLKBUF1_insert38 gnd vdd FILL
XFILL_2__1715_ gnd vdd FILL
XFILL_5__2192_ gnd vdd FILL
XFILL_6__2928_ gnd vdd FILL
XFILL_6__2508_ gnd vdd FILL
X_3227_ _1685_[13] _830__bF$buf0 _846_ vdd gnd NAND2X1
XFILL_1__2184_ gnd vdd FILL
XFILL_7__3151_ gnd vdd FILL
XFILL_0__2902_ gnd vdd FILL
XFILL_3__3471_ gnd vdd FILL
XFILL_3__3051_ gnd vdd FILL
XFILL_5__3397_ gnd vdd FILL
XFILL_1__3389_ gnd vdd FILL
XFILL_8__2699_ gnd vdd FILL
XFILL_6__2681_ gnd vdd FILL
XFILL_6__2261_ gnd vdd FILL
XFILL_8__2279_ gnd vdd FILL
XFILL_2__2673_ gnd vdd FILL
XFILL_2__2253_ gnd vdd FILL
XFILL_8__3220_ gnd vdd FILL
XFILL_4__2599_ gnd vdd FILL
XFILL_4__2179_ gnd vdd FILL
X_1713_ state[3] _866_ vdd gnd INVX1
XFILL_4__3540_ gnd vdd FILL
XFILL_4__3120_ gnd vdd FILL
XFILL_0__2499_ gnd vdd FILL
XFILL_0__2079_ gnd vdd FILL
XFILL_6__3466_ gnd vdd FILL
XFILL_6__3046_ gnd vdd FILL
XFILL_2__3458_ gnd vdd FILL
XFILL_0__3440_ gnd vdd FILL
XFILL_2__3038_ gnd vdd FILL
XFILL_0__3020_ gnd vdd FILL
XFILL_5__1883_ gnd vdd FILL
X_2918_ _600_ _601_ _602_ vdd gnd NOR2X1
XFILL_1__1875_ gnd vdd FILL
XFILL_7__2842_ gnd vdd FILL
XFILL_7__2422_ gnd vdd FILL
XFILL_7__2002_ gnd vdd FILL
XFILL_3__2742_ gnd vdd FILL
XFILL_3__2322_ gnd vdd FILL
XFILL_5__2668_ gnd vdd FILL
XFILL_5__2248_ gnd vdd FILL
XFILL_7__3207_ gnd vdd FILL
XFILL_1__3601_ gnd vdd FILL
XFILL_3__3527_ gnd vdd FILL
XFILL_3__3107_ gnd vdd FILL
XFILL_6__1952_ gnd vdd FILL
X_2671_ _975_ _343_ _394_ _395_ vdd gnd OAI21X1
X_2251_ _1296_ _1215_ _1384_ _1385_ vdd gnd OAI21X1
XFILL_2__1944_ gnd vdd FILL
XFILL_8__2911_ gnd vdd FILL
XFILL_4__2811_ gnd vdd FILL
XFILL_6__2737_ gnd vdd FILL
X_3456_ BI[0] _1542_ vdd gnd INVX1
XFILL_6__2317_ gnd vdd FILL
X_3036_ HC _698_ _697_ _699_ vdd gnd OAI21X1
XFILL_7__3380_ gnd vdd FILL
XFILL_2__2729_ gnd vdd FILL
XFILL_0__2711_ gnd vdd FILL
XFILL_2__2309_ gnd vdd FILL
XFILL_1__3198_ gnd vdd FILL
XFILL_5__1939_ gnd vdd FILL
XFILL_6__2490_ gnd vdd FILL
XFILL_6__2070_ gnd vdd FILL
XFILL_8__2088_ gnd vdd FILL
XFILL_2__2482_ gnd vdd FILL
XFILL_2__2062_ gnd vdd FILL
X_1942_ _1082_ _1083_ vdd gnd INVX1
XFILL_5__1692_ gnd vdd FILL
X_2727_ ADD[3] _325_ _338_ ABH[3] _447_ vdd 
+ gnd
+ AOI22X1
X_2307_ _1396_ _1317_ _1440_ vdd gnd NAND2X1
XFILL_7__2651_ gnd vdd FILL
XFILL_7__2231_ gnd vdd FILL
XFILL_3__2971_ gnd vdd FILL
XFILL_3__2551_ gnd vdd FILL
XFILL_3__2131_ gnd vdd FILL
XFILL_5__2897_ gnd vdd FILL
XFILL_5__2477_ gnd vdd FILL
XFILL_5__2057_ gnd vdd FILL
XFILL_1__2889_ gnd vdd FILL
XFILL_1__2469_ gnd vdd FILL
XFILL_7__3436_ gnd vdd FILL
XFILL_1__2049_ gnd vdd FILL
XFILL_7__3016_ gnd vdd FILL
XFILL_1__3410_ gnd vdd FILL
XFILL182250x101550 gnd vdd FILL
XFILL_8__1779_ gnd vdd FILL
XFILL_6__1761_ gnd vdd FILL
X_2480_ ABL[3] _228_ vdd gnd INVX1
X_2060_ _1194_ _1195_ _1192_ _1196_ vdd gnd NAND3X1
XFILL_2__1753_ gnd vdd FILL
XFILL_8__2720_ gnd vdd FILL
XFILL_8__2300_ gnd vdd FILL
XFILL_4__2620_ gnd vdd FILL
XFILL_4__2200_ gnd vdd FILL
XFILL_0__1999_ gnd vdd FILL
XFILL_6__2966_ gnd vdd FILL
XFILL_6__2546_ gnd vdd FILL
X_3265_ _27_ vdd _1__bF$buf6 clk_bF$buf6 sed vdd 
+ gnd
+ DFFSR
XFILL_6__2126_ gnd vdd FILL
XFILL_0__2940_ gnd vdd FILL
XFILL_2__2958_ gnd vdd FILL
XFILL_0__2520_ gnd vdd FILL
XFILL_2__2538_ gnd vdd FILL
XFILL_8__3505_ gnd vdd FILL
XFILL_2__2118_ gnd vdd FILL
XFILL_0__2100_ gnd vdd FILL
XFILL_7__1922_ gnd vdd FILL
XFILL_4__3405_ gnd vdd FILL
XFILL_3__1822_ gnd vdd FILL
XFILL_5__1748_ gnd vdd FILL
XFILL182250x74250 gnd vdd FILL
XFILL_7__2707_ gnd vdd FILL
XFILL_2__2291_ gnd vdd FILL
XFILL_3__2607_ gnd vdd FILL
X_1751_ _865_ _885_ _903_ _904_ vdd gnd OAI21X1
XFILL_6__3084_ gnd vdd FILL
XFILL_2__3496_ gnd vdd FILL
XFILL_2__3076_ gnd vdd FILL
X_2956_ _864_ _620_ _628_ _60_ vdd gnd OAI21X1
XFILL_6__1817_ gnd vdd FILL
X_2536_ _272_ _208_ _276_ _1685_[10] vdd gnd OAI21X1
X_2116_ RDY_bF$buf6 _942_ _1251_ _1252_ vdd gnd OAI21X1
XFILL_7__2880_ gnd vdd FILL
XFILL_7__2460_ gnd vdd FILL
XFILL_7__2040_ gnd vdd FILL
XFILL_2__1809_ gnd vdd FILL
XFILL_3__2780_ gnd vdd FILL
XFILL_3__2360_ gnd vdd FILL
XFILL_5__2286_ gnd vdd FILL
XFILL_1__2698_ gnd vdd FILL
XFILL_1__2278_ gnd vdd FILL
XFILL184350x121050 gnd vdd FILL
XFILL_3__3565_ gnd vdd FILL
XFILL_3__3145_ gnd vdd FILL
XFILL_6__1990_ gnd vdd FILL
XFILL_2__1982_ gnd vdd FILL
XFILL183750x167850 gnd vdd FILL
XFILL_6__2775_ gnd vdd FILL
X_3494_ _1560_ _1579_ _1580_ vdd gnd NAND2X1
XFILL_6__2355_ gnd vdd FILL
X_3074_ _AXYS[0]_[5] _693_ _733_ vdd gnd NAND2X1
XFILL_2__2767_ gnd vdd FILL
XFILL_2__2347_ gnd vdd FILL
X_1807_ _898_ _959_ vdd gnd INVX1
XFILL_7__1731_ gnd vdd FILL
XFILL_4__3214_ gnd vdd FILL
XFILL_0__3534_ gnd vdd FILL
XFILL_0__3114_ gnd vdd FILL
XFILL_5__1977_ gnd vdd FILL
XFILL_1__1969_ gnd vdd FILL
XFILL_7__2936_ gnd vdd FILL
XFILL_7__2516_ gnd vdd FILL
XFILL_1__2910_ gnd vdd FILL
XFILL_3__2836_ gnd vdd FILL
XFILL_3__2416_ gnd vdd FILL
X_1980_ _1116_ _1117_ vdd gnd INVX1
XFILL_8__1800_ gnd vdd FILL
XFILL_4__1700_ gnd vdd FILL
X_2765_ _474_ _460_ _482_ vdd gnd NAND2X1
X_2345_ _1433_ _1355_ _1476_ vdd gnd NAND2X1
XFILL_5__2095_ gnd vdd FILL
XFILL_4__2905_ gnd vdd FILL
XFILL_7__3474_ gnd vdd FILL
XFILL_1__2087_ gnd vdd FILL
XFILL_7__3054_ gnd vdd FILL
XFILL_0__2805_ gnd vdd FILL
XFILL_3__3374_ gnd vdd FILL
XFILL_2__1791_ gnd vdd FILL
XFILL_6__2584_ gnd vdd FILL
XFILL_6__2164_ gnd vdd FILL
XFILL_2__2996_ gnd vdd FILL
XFILL_2__2576_ gnd vdd FILL
XFILL_8__3543_ gnd vdd FILL
XFILL_2__2156_ gnd vdd FILL
XFILL_8__3123_ gnd vdd FILL
XFILL_7__1960_ gnd vdd FILL
XFILL_4__3443_ gnd vdd FILL
XFILL_4__3023_ gnd vdd FILL
XFILL_6__3369_ gnd vdd FILL
XFILL_3__1860_ gnd vdd FILL
XFILL_5__1786_ gnd vdd FILL
XFILL_1__1778_ gnd vdd FILL
XFILL_7__2745_ gnd vdd FILL
XFILL_7__2325_ gnd vdd FILL
XFILL_3__2645_ gnd vdd FILL
XFILL_3__2225_ gnd vdd FILL
XFILL_5__3512_ gnd vdd FILL
XFILL_1__3504_ gnd vdd FILL
X_2994_ AN _662_ vdd gnd INVX1
XFILL_6__1855_ gnd vdd FILL
X_2574_ _303_ _208_ _309_ _1685_[15] vdd gnd OAI21X1
X_2154_ _1289_ _1286_ _1290_ vdd gnd NOR2X1
XFILL_2__1847_ gnd vdd FILL
XFILL_8__2814_ gnd vdd FILL
XFILL_4__2714_ gnd vdd FILL
X_3359_ _112_ vdd _1__bF$buf8 clk_bF$buf7 ABH[3] vdd 
+ gnd
+ DFFSR
XFILL_0__2614_ gnd vdd FILL
XFILL_3__3183_ gnd vdd FILL
XFILL_3__1916_ gnd vdd FILL
XFILL_6__2393_ gnd vdd FILL
XFILL_2__2385_ gnd vdd FILL
X_1845_ _914_ _871_ _989_ vdd gnd NAND2X1
XFILL_6__3598_ gnd vdd FILL
XFILL_6__3178_ gnd vdd FILL
XFILL_0__3152_ gnd vdd FILL
XFILL_7__2974_ gnd vdd FILL
XFILL_7__2554_ gnd vdd FILL
XFILL_7__2134_ gnd vdd FILL
XFILL_3__2874_ gnd vdd FILL
XFILL_3__2454_ gnd vdd FILL
XFILL_3__2034_ gnd vdd FILL
X_2383_ C _141_ _142_ vdd gnd NAND2X1
XFILL_8__2623_ gnd vdd FILL
XFILL_8__2203_ gnd vdd FILL
XFILL_4__2943_ gnd vdd FILL
XFILL_4__2523_ gnd vdd FILL
XFILL_4__2103_ gnd vdd FILL
XFILL_6__2869_ gnd vdd FILL
X_3588_ _1685_[3] AB[3] vdd gnd BUFX2
XFILL_6__2449_ gnd vdd FILL
XFILL_6__2029_ gnd vdd FILL
X_3168_ _799_ _963_ _800_ vdd gnd NOR2X1
XFILL_7__3092_ gnd vdd FILL
XFILL_0__2843_ gnd vdd FILL
XFILL_0__2423_ gnd vdd FILL
XFILL_0__2003_ gnd vdd FILL
XFILL_8__3408_ gnd vdd FILL
XFILL_7__1825_ gnd vdd FILL
XFILL_3__1725_ gnd vdd FILL
XFILL_0__3208_ gnd vdd FILL
XFILL_2__2194_ gnd vdd FILL
XFILL_8__3581_ gnd vdd FILL
XFILL_8__3161_ gnd vdd FILL
XFILL_4__3481_ gnd vdd FILL
XFILL_4__3061_ gnd vdd FILL
XFILL_0__3381_ gnd vdd FILL
XFILL_2__3399_ gnd vdd FILL
X_2859_ _516_ _1383_ _1219__bF$buf2 _558_ vdd gnd AOI21X1
X_2439_ _189_ _187_ _190_ vdd gnd NAND2X1
X_2019_ _1152_ _1154_ _1145_ _1155_ vdd gnd OAI21X1
XFILL_7__2783_ gnd vdd FILL
XFILL_7__2363_ gnd vdd FILL
XFILL_3__2683_ gnd vdd FILL
XFILL_3__2263_ gnd vdd FILL
XFILL_5__2189_ gnd vdd FILL
XFILL184650x15750 gnd vdd FILL
XFILL_5__3550_ gnd vdd FILL
XFILL_5__3130_ gnd vdd FILL
XFILL_7__3148_ gnd vdd FILL
XFILL_1__3542_ gnd vdd FILL
XFILL_1__3122_ gnd vdd FILL
XFILL_3__3468_ gnd vdd FILL
XFILL_3__3048_ gnd vdd FILL
XFILL_6__1893_ gnd vdd FILL
X_2192_ state[4] _989_ _1327_ vdd gnd NOR2X1
XFILL_2__1885_ gnd vdd FILL
XFILL_8__2852_ gnd vdd FILL
XFILL_8__2432_ gnd vdd FILL
XFILL_8__2012_ gnd vdd FILL
XFILL_4__2752_ gnd vdd FILL
XFILL_4__2332_ gnd vdd FILL
XFILL_6__2678_ gnd vdd FILL
XFILL_6__2258_ gnd vdd FILL
X_3397_ _1651_ BI[6] _1670_ _1652_ _1671_ vdd 
+ gnd
+ AOI22X1
XFILL_0__2652_ gnd vdd FILL
XFILL_0__2232_ gnd vdd FILL
XFILL_8__3217_ gnd vdd FILL
XFILL_4__3537_ gnd vdd FILL
XFILL_4__3117_ gnd vdd FILL
XFILL_3__1954_ gnd vdd FILL
XFILL_0__3437_ gnd vdd FILL
XFILL_0__3017_ gnd vdd FILL
XFILL_7__2839_ gnd vdd FILL
XFILL_5__2821_ gnd vdd FILL
XFILL_5__2401_ gnd vdd FILL
XFILL_7__2419_ gnd vdd FILL
XFILL_8__3390_ gnd vdd FILL
XFILL_1__2813_ gnd vdd FILL
XFILL_3__2739_ gnd vdd FILL
XFILL_3__2319_ gnd vdd FILL
X_1883_ _991_ _1027_ vdd gnd INVX1
XFILL_8__1703_ gnd vdd FILL
XFILL_0__3190_ gnd vdd FILL
XFILL_6__1949_ gnd vdd FILL
X_2668_ RDY_bF$buf4 _974_ _390_ _392_ _8_ vdd 
+ gnd
+ OAI22X1
X_2248_ _1138_ _1382_ vdd gnd INVX1
XFILL_7__2592_ gnd vdd FILL
XFILL_7__2172_ gnd vdd FILL
XFILL_0__1923_ gnd vdd FILL
XFILL_8__2908_ gnd vdd FILL
XFILL_3__2492_ gnd vdd FILL
XFILL_3__2072_ gnd vdd FILL
XFILL_4__2808_ gnd vdd FILL
XFILL_7__3377_ gnd vdd FILL
XFILL_0__2708_ gnd vdd FILL
XFILL_2__1694_ gnd vdd FILL
XFILL_8__2661_ gnd vdd FILL
XFILL_8__2241_ gnd vdd FILL
XFILL_4__2981_ gnd vdd FILL
XFILL_4__2561_ gnd vdd FILL
XFILL_4__2141_ gnd vdd FILL
XFILL_6__2487_ gnd vdd FILL
XFILL_6__2067_ gnd vdd FILL
XFILL_2__2899_ gnd vdd FILL
XFILL_0__2881_ gnd vdd FILL
XFILL_0__2461_ gnd vdd FILL
XFILL_2__2479_ gnd vdd FILL
XFILL_0__2041_ gnd vdd FILL
XFILL_8__3446_ gnd vdd FILL
XFILL_2__2059_ gnd vdd FILL
XFILL_8__3026_ gnd vdd FILL
XFILL_2__3420_ gnd vdd FILL
X_1939_ _AXYS[2]_[3] _1023_ _1012_ _AXYS[3]_[3] _1080_ vdd 
+ gnd
+ AOI22X1
XFILL_2__3000_ gnd vdd FILL
XFILL_7__1863_ gnd vdd FILL
XFILL_3__1763_ gnd vdd FILL
XFILL_5__1689_ gnd vdd FILL
XFILL_7__2648_ gnd vdd FILL
XFILL_5__2630_ gnd vdd FILL
XFILL_5__2210_ gnd vdd FILL
XFILL_7__2228_ gnd vdd FILL
XFILL_1__2622_ gnd vdd FILL
XFILL_1__2202_ gnd vdd FILL
XFILL_3__2968_ gnd vdd FILL
XFILL_3__2548_ gnd vdd FILL
XFILL_3__2128_ gnd vdd FILL
X_1692_ RDY_bF$buf8 DI[1] _852_ vdd gnd NAND2X1
XFILL_8__1932_ gnd vdd FILL
XFILL_5__3415_ gnd vdd FILL
XFILL_1__3407_ gnd vdd FILL
XFILL_4__1832_ gnd vdd FILL
X_2897_ _583_ _582_ _1129__bF$buf2 _584_ vdd gnd OAI21X1
XFILL_6__1758_ gnd vdd FILL
X_2477_ _195_ _192_ _225_ vdd gnd OR2X2
X_2057_ _896_ _899_ _1193_ vdd gnd NOR2X1
XFILL_0__1732_ gnd vdd FILL
XFILL_8__2717_ gnd vdd FILL
XFILL_4__2617_ gnd vdd FILL
XFILL_7__3186_ gnd vdd FILL
XFILL_0__2937_ gnd vdd FILL
XFILL_0__2517_ gnd vdd FILL
XFILL_1__3580_ gnd vdd FILL
XFILL_1__3160_ gnd vdd FILL
XFILL_3__3086_ gnd vdd FILL
XFILL_7__1919_ gnd vdd FILL
XFILL_5__1901_ gnd vdd FILL
XFILL_8__2890_ gnd vdd FILL
XFILL_8__2470_ gnd vdd FILL
XFILL_8__2050_ gnd vdd FILL
XFILL_3__1819_ gnd vdd FILL
XFILL_4__2790_ gnd vdd FILL
XFILL_4__2370_ gnd vdd FILL
XFILL_6__2296_ gnd vdd FILL
XFILL_0__2690_ gnd vdd FILL
XFILL_0__2270_ gnd vdd FILL
XFILL_2__2288_ gnd vdd FILL
X_1748_ _900_ _901_ vdd gnd INVX1
XFILL_4__3155_ gnd vdd FILL
XFILL_3__1992_ gnd vdd FILL
XFILL_0__3475_ gnd vdd FILL
XFILL_0__3055_ gnd vdd FILL
XFILL_7__2877_ gnd vdd FILL
XFILL_7__2457_ gnd vdd FILL
XFILL_7__2037_ gnd vdd FILL
XFILL_1__2851_ gnd vdd FILL
XFILL_1__2431_ gnd vdd FILL
XFILL_1__2011_ gnd vdd FILL
XFILL_3__2777_ gnd vdd FILL
XFILL_3__2357_ gnd vdd FILL
XFILL_8__1741_ gnd vdd FILL
XFILL_5__3224_ gnd vdd FILL
XFILL_1__3216_ gnd vdd FILL
XFILL_6__1987_ gnd vdd FILL
X_2286_ _1416_ _1417_ _1419_ _1420_ vdd gnd NAND3X1
XFILL_2__1979_ gnd vdd FILL
XFILL_0__1961_ gnd vdd FILL
XFILL_8__2946_ gnd vdd FILL
XFILL_8__2526_ gnd vdd FILL
XFILL_8__2106_ gnd vdd FILL
XFILL_3_BUFX2_insert40 gnd vdd FILL
XFILL_3_BUFX2_insert41 gnd vdd FILL
XFILL_3_BUFX2_insert42 gnd vdd FILL
XFILL_2__2920_ gnd vdd FILL
XFILL_3_BUFX2_insert43 gnd vdd FILL
XFILL_2__2500_ gnd vdd FILL
XFILL_3_BUFX2_insert44 gnd vdd FILL
XFILL_3_BUFX2_insert45 gnd vdd FILL
XFILL_3_BUFX2_insert46 gnd vdd FILL
XFILL_3_BUFX2_insert47 gnd vdd FILL
XFILL_4__2846_ gnd vdd FILL
XFILL_3_BUFX2_insert48 gnd vdd FILL
XFILL_3_BUFX2_insert49 gnd vdd FILL
XFILL_4__2426_ gnd vdd FILL
XFILL_4__2006_ gnd vdd FILL
XFILL_0__2746_ gnd vdd FILL
XFILL_0__2326_ gnd vdd FILL
XFILL_9__1810_ gnd vdd FILL
XFILL_5__1710_ gnd vdd FILL
XFILL_7__1728_ gnd vdd FILL
XFILL_1__1702_ gnd vdd FILL
XFILL_5__2915_ gnd vdd FILL
XFILL_8__3484_ gnd vdd FILL
XFILL_2__2097_ gnd vdd FILL
XFILL_8__3064_ gnd vdd FILL
XFILL_1__2907_ gnd vdd FILL
X_1977_ _AXYS[2]_[7] _1023_ _1012_ _AXYS[3]_[7] _1114_ vdd 
+ gnd
+ AOI22X1
XFILL_4__3384_ gnd vdd FILL
XFILL_7__2686_ gnd vdd FILL
XFILL_7__2266_ gnd vdd FILL
XFILL_1__2660_ gnd vdd FILL
XFILL_1__2240_ gnd vdd FILL
XFILL_3__2586_ gnd vdd FILL
XFILL_3__2166_ gnd vdd FILL
XFILL_8__1970_ gnd vdd FILL
XFILL_5__3453_ gnd vdd FILL
XFILL_5__3033_ gnd vdd FILL
XFILL_1__3445_ gnd vdd FILL
XFILL_1__3025_ gnd vdd FILL
XFILL_4__1870_ gnd vdd FILL
XFILL_6__1796_ gnd vdd FILL
X_2095_ RDY_bF$buf7 _1036_ _1231_ vdd gnd NAND2X1
XFILL_0__1770_ gnd vdd FILL
XFILL_2__1788_ gnd vdd FILL
XFILL_8__2755_ gnd vdd FILL
XFILL_8__2335_ gnd vdd FILL
XFILL_4__2655_ gnd vdd FILL
XFILL_4__2235_ gnd vdd FILL
XFILL_0__2975_ gnd vdd FILL
XFILL_0__2555_ gnd vdd FILL
XFILL_6__3522_ gnd vdd FILL
XFILL_0__2135_ gnd vdd FILL
XFILL_6__3102_ gnd vdd FILL
XFILL_2__3514_ gnd vdd FILL
XFILL_7__1957_ gnd vdd FILL
XFILL_1__1931_ gnd vdd FILL
XFILL_3__1857_ gnd vdd FILL
XFILL_5__2724_ gnd vdd FILL
XFILL_5__2304_ gnd vdd FILL
XFILL_1__2716_ gnd vdd FILL
X_1786_ _886__bF$buf2 _900_ _938_ vdd gnd NAND2X1
XFILL_4__3193_ gnd vdd FILL
XFILL_5__3509_ gnd vdd FILL
XFILL_0__3093_ gnd vdd FILL
XFILL_4__1926_ gnd vdd FILL
XFILL_7__2495_ gnd vdd FILL
XFILL_7__2075_ gnd vdd FILL
XFILL_0__1826_ gnd vdd FILL
X_3512_ _1597_ _1594_ _1498_ _1598_ vdd gnd OAI21X1
XFILL_3__2395_ gnd vdd FILL
XFILL_8__2984_ gnd vdd FILL
XFILL_8__2564_ gnd vdd FILL
XFILL_8__2144_ gnd vdd FILL
XFILL_4__2884_ gnd vdd FILL
XFILL_4__2464_ gnd vdd FILL
XFILL_4__2044_ gnd vdd FILL
XFILL_0__2784_ gnd vdd FILL
XFILL_0__2364_ gnd vdd FILL
XFILL_7__1766_ gnd vdd FILL
XFILL_1__1740_ gnd vdd FILL
XFILL_0__3149_ gnd vdd FILL
XFILL_4_BUFX2_insert90 gnd vdd FILL
XFILL_4_BUFX2_insert91 gnd vdd FILL
XFILL_4_BUFX2_insert92 gnd vdd FILL
XFILL_4_BUFX2_insert93 gnd vdd FILL
XFILL_4_BUFX2_insert94 gnd vdd FILL
XFILL_4_BUFX2_insert95 gnd vdd FILL
XFILL_4_BUFX2_insert96 gnd vdd FILL
XFILL_4_BUFX2_insert97 gnd vdd FILL
XFILL_5__2953_ gnd vdd FILL
XFILL_5__2533_ gnd vdd FILL
XFILL_5__2113_ gnd vdd FILL
XFILL_1__2945_ gnd vdd FILL
XFILL_1__2525_ gnd vdd FILL
XFILL_1__2105_ gnd vdd FILL
XFILL_8__1835_ gnd vdd FILL
XFILL_4__1735_ gnd vdd FILL
XFILL_6__2602_ gnd vdd FILL
X_3321_ _75_ vdd _1__bF$buf9 clk_bF$buf10 _AXYS[0]_[6] vdd 
+ gnd
+ DFFSR
XFILL_5__3491_ gnd vdd FILL
XFILL_7__3089_ gnd vdd FILL
XFILL_5__3071_ gnd vdd FILL
XFILL_1__3483_ gnd vdd FILL
XFILL_1__3063_ gnd vdd FILL
XFILL_5__1804_ gnd vdd FILL
XFILL_8__2793_ gnd vdd FILL
XFILL_8__2373_ gnd vdd FILL
XFILL181950x7950 gnd vdd FILL
XFILL_4__2693_ gnd vdd FILL
XFILL_4__2273_ gnd vdd FILL
XFILL_6__2199_ gnd vdd FILL
XFILL_0__2593_ gnd vdd FILL
XFILL_6__3560_ gnd vdd FILL
XFILL_0__2173_ gnd vdd FILL
XFILL_6__3140_ gnd vdd FILL
XFILL_8__3158_ gnd vdd FILL
XFILL_2__3552_ gnd vdd FILL
XFILL_2__3132_ gnd vdd FILL
XFILL_7__1995_ gnd vdd FILL
XFILL_4__3478_ gnd vdd FILL
XFILL_4__3058_ gnd vdd FILL
XFILL_3__1895_ gnd vdd FILL
XFILL_0__3378_ gnd vdd FILL
XFILL_5__2762_ gnd vdd FILL
XFILL_5__2342_ gnd vdd FILL
XFILL_1__2754_ gnd vdd FILL
XFILL_1__2334_ gnd vdd FILL
XFILL_3__3201_ gnd vdd FILL
XFILL_5__3547_ gnd vdd FILL
XFILL_5__3127_ gnd vdd FILL
XFILL_1__3539_ gnd vdd FILL
XFILL_1__3119_ gnd vdd FILL
XFILL_4__1964_ gnd vdd FILL
X_2189_ _1129__bF$buf2 _1323_ _1324_ vdd gnd NAND2X1
XFILL_0__1864_ gnd vdd FILL
XFILL_8__2849_ gnd vdd FILL
XFILL_6__2831_ gnd vdd FILL
X_3550_ _1649__bF$buf2 _1612_ _1631_ _1490_ vdd gnd OAI21X1
XFILL_8__2429_ gnd vdd FILL
XFILL_6__2411_ gnd vdd FILL
X_3130_ _AXYS[3]_[1] _767_ _769_ vdd gnd NAND2X1
XFILL_8__2009_ gnd vdd FILL
XFILL_2__2823_ gnd vdd FILL
XFILL_2__2403_ gnd vdd FILL
XFILL_4__2749_ gnd vdd FILL
XFILL_4__2329_ gnd vdd FILL
XFILL_0__2649_ gnd vdd FILL
XFILL_0__2229_ gnd vdd FILL
XFILL_8__2182_ gnd vdd FILL
XFILL_4__2082_ gnd vdd FILL
XFILL_5__2818_ gnd vdd FILL
XFILL_8__3387_ gnd vdd FILL
X_2821_ _1324_ _523_ _519_ _30_ vdd gnd OAI21X1
X_2401_ D _141_ _157_ vdd gnd NAND2X1
XFILL_0__3187_ gnd vdd FILL
XFILL_5__2991_ gnd vdd FILL
XFILL_5__2571_ gnd vdd FILL
XFILL_7__2589_ gnd vdd FILL
XFILL_7__2169_ gnd vdd FILL
XFILL_5__2151_ gnd vdd FILL
XFILL_1__2983_ gnd vdd FILL
XFILL_1__2563_ gnd vdd FILL
XFILL_7__3530_ gnd vdd FILL
XFILL_1__2143_ gnd vdd FILL
XFILL_7__3110_ gnd vdd FILL
XFILL_3__2489_ gnd vdd FILL
XFILL_3__2069_ gnd vdd FILL
XFILL_3__3430_ gnd vdd FILL
XFILL_3__3010_ gnd vdd FILL
XFILL_8__1873_ gnd vdd FILL
XFILL_4__1773_ gnd vdd FILL
XFILL_6__1699_ gnd vdd FILL
XFILL_8__2658_ gnd vdd FILL
XFILL_6__2640_ gnd vdd FILL
XFILL_8__2238_ gnd vdd FILL
XFILL_6__2220_ gnd vdd FILL
XFILL_2__2632_ gnd vdd FILL
XFILL_2__2212_ gnd vdd FILL
XFILL_4__2978_ gnd vdd FILL
XFILL_4__2558_ gnd vdd FILL
XFILL_4__2138_ gnd vdd FILL
XFILL_0__2878_ gnd vdd FILL
XFILL_0__2458_ gnd vdd FILL
XFILL_0__2038_ gnd vdd FILL
XFILL_6__3425_ gnd vdd FILL
XFILL_6__3005_ gnd vdd FILL
XFILL_2__3417_ gnd vdd FILL
XFILL_5__1842_ gnd vdd FILL
XFILL184650x89850 gnd vdd FILL
XFILL_1__1834_ gnd vdd FILL
XFILL_7__2801_ gnd vdd FILL
XFILL_3__2701_ gnd vdd FILL
XFILL_8_BUFX2_insert40 gnd vdd FILL
XFILL_8_BUFX2_insert41 gnd vdd FILL
XFILL_5__2627_ gnd vdd FILL
XFILL_5__2207_ gnd vdd FILL
XFILL_8_BUFX2_insert42 gnd vdd FILL
XFILL_8_BUFX2_insert43 gnd vdd FILL
XFILL_8_BUFX2_insert44 gnd vdd FILL
XFILL_8_BUFX2_insert45 gnd vdd FILL
XFILL_8_BUFX2_insert46 gnd vdd FILL
XFILL_8_BUFX2_insert47 gnd vdd FILL
XFILL_8_BUFX2_insert48 gnd vdd FILL
XFILL_8_BUFX2_insert49 gnd vdd FILL
XFILL_8__3196_ gnd vdd FILL
XFILL_1__2619_ gnd vdd FILL
XFILL_2__3590_ gnd vdd FILL
XFILL_2__3170_ gnd vdd FILL
X_1689_ DI[0] RDY_bF$buf4 _850_ vdd gnd NAND2X1
XFILL_4__3096_ gnd vdd FILL
XFILL_8__1929_ gnd vdd FILL
XFILL_6__1911_ gnd vdd FILL
X_2630_ _349_ _358_ vdd gnd INVX1
X_2210_ _1344_ _1332_ _1345_ vdd gnd NAND2X1
XFILL_2__1903_ gnd vdd FILL
XFILL_4__1829_ gnd vdd FILL
XFILL_7__2398_ gnd vdd FILL
XFILL_5__2380_ gnd vdd FILL
XFILL_0__1729_ gnd vdd FILL
X_3415_ AI[4] _1500_ _1501_ vdd gnd NAND2X1
XFILL_1__2792_ gnd vdd FILL
XFILL_1__2372_ gnd vdd FILL
XFILL_3__2298_ gnd vdd FILL
XFILL_5__3585_ gnd vdd FILL
XFILL_5__3165_ gnd vdd FILL
XFILL_1__3157_ gnd vdd FILL
XFILL_8__2887_ gnd vdd FILL
XFILL_8__2467_ gnd vdd FILL
XFILL_8__2047_ gnd vdd FILL
XFILL_2__2861_ gnd vdd FILL
XFILL_2__2441_ gnd vdd FILL
XFILL_2__2021_ gnd vdd FILL
XFILL_4__2787_ gnd vdd FILL
XFILL_4__2367_ gnd vdd FILL
X_1901_ _1043_ _1044_ _1045_ vdd gnd NOR2X1
XFILL_0__2687_ gnd vdd FILL
XFILL_0__2267_ gnd vdd FILL
XFILL_9__1751_ gnd vdd FILL
XFILL_2__3226_ gnd vdd FILL
XFILL_7__2610_ gnd vdd FILL
XFILL_3__1989_ gnd vdd FILL
XFILL_3__2930_ gnd vdd FILL
XFILL_3__2510_ gnd vdd FILL
XFILL_5__2856_ gnd vdd FILL
XFILL_5__2436_ gnd vdd FILL
XFILL_5__2016_ gnd vdd FILL
XFILL_1__2848_ gnd vdd FILL
XFILL_1__2428_ gnd vdd FILL
XFILL_1__2008_ gnd vdd FILL
XFILL_8__1738_ gnd vdd FILL
XFILL_6__1720_ gnd vdd FILL
XFILL_2__1712_ gnd vdd FILL
XFILL_0__1958_ gnd vdd FILL
XFILL_6__2925_ gnd vdd FILL
XFILL_6__2505_ gnd vdd FILL
X_3224_ _843_ _830__bF$buf1 _844_ _112_ vdd gnd OAI21X1
XFILL_1__2181_ gnd vdd FILL
XFILL_2__2917_ gnd vdd FILL
XFILL_5__3394_ gnd vdd FILL
XFILL_1__3386_ gnd vdd FILL
XFILL_5__1707_ gnd vdd FILL
XFILL_8__2696_ gnd vdd FILL
XFILL_8__2276_ gnd vdd FILL
XFILL_2__2670_ gnd vdd FILL
XFILL_2__2250_ gnd vdd FILL
XFILL_4__2596_ gnd vdd FILL
XFILL_4__2176_ gnd vdd FILL
X_1710_ DI[7] DIHOLD[7] RDY_bF$buf5 _864_ vdd gnd MUX2X1
XFILL_0__2496_ gnd vdd FILL
XFILL_6__3463_ gnd vdd FILL
XFILL_0__2076_ gnd vdd FILL
XFILL_6__3043_ gnd vdd FILL
XFILL_2__3455_ gnd vdd FILL
XFILL_2__3035_ gnd vdd FILL
XFILL_5__1880_ gnd vdd FILL
XFILL_7__1898_ gnd vdd FILL
X_2915_ _1314_ _1168_ _1214_ _599_ vdd gnd OAI21X1
XFILL_1__1872_ gnd vdd FILL
XFILL_3__1798_ gnd vdd FILL
XFILL_5__2665_ gnd vdd FILL
XFILL_5__2245_ gnd vdd FILL
XFILL_1__2657_ gnd vdd FILL
XFILL_1__2237_ gnd vdd FILL
XFILL_7__3204_ gnd vdd FILL
XFILL_3__3524_ gnd vdd FILL
XFILL_3__3104_ gnd vdd FILL
XFILL_8__1967_ gnd vdd FILL
XFILL_2__1941_ gnd vdd FILL
XFILL_4__1867_ gnd vdd FILL
XFILL_0__1767_ gnd vdd FILL
XFILL_6__2734_ gnd vdd FILL
X_3453_ BI[0] _1653_ _1539_ vdd gnd NAND2X1
XFILL_6__2314_ gnd vdd FILL
X_3033_ _693_ _695_ _696_ _69_ vdd gnd OAI21X1
XFILL_2__2726_ gnd vdd FILL
XFILL_2__2306_ gnd vdd FILL
XFILL_6__3519_ gnd vdd FILL
XFILL_1__3195_ gnd vdd FILL
XFILL_5__1936_ gnd vdd FILL
XFILL_8__2085_ gnd vdd FILL
XFILL_1__1928_ gnd vdd FILL
X_2724_ _431_ _398_ _444_ vdd gnd NOR2X1
X_2304_ _1346_ _1436_ _1294_ _1437_ vdd gnd NAND3X1
XFILL_5__2894_ gnd vdd FILL
XFILL_5__2474_ gnd vdd FILL
XFILL_5__2054_ gnd vdd FILL
X_3509_ _1660_ alu_op[2] _1497_ _1595_ vdd gnd OAI21X1
XFILL_1__2886_ gnd vdd FILL
XFILL_1__2466_ gnd vdd FILL
XFILL_7__3433_ gnd vdd FILL
XFILL_1__2046_ gnd vdd FILL
XFILL_7__3013_ gnd vdd FILL
XFILL_8__1776_ gnd vdd FILL
XFILL_2__1750_ gnd vdd FILL
XFILL_0__1996_ gnd vdd FILL
XFILL_6__2963_ gnd vdd FILL
XFILL_6__2543_ gnd vdd FILL
X_3262_ _24_ vdd _1__bF$buf7 clk_bF$buf1 clc vdd 
+ gnd
+ DFFSR
XFILL_6__2123_ gnd vdd FILL
XFILL_2__2955_ gnd vdd FILL
XFILL_2__2535_ gnd vdd FILL
XFILL_8__3502_ gnd vdd FILL
XFILL_2__2115_ gnd vdd FILL
XFILL_4__3402_ gnd vdd FILL
XFILL182250x163950 gnd vdd FILL
XFILL_5__1745_ gnd vdd FILL
XFILL_1__1737_ gnd vdd FILL
XFILL_7__2704_ gnd vdd FILL
XFILL_3__2604_ gnd vdd FILL
XFILL_6__3081_ gnd vdd FILL
XFILL_8__3099_ gnd vdd FILL
XFILL_2__3493_ gnd vdd FILL
XFILL_2__3073_ gnd vdd FILL
X_2953_ reset _618_ IRHOLD[6] _627_ vdd gnd OAI21X1
XFILL_6__1814_ gnd vdd FILL
X_2533_ ABH[2] _1075_ _200_ ADD[2] _274_ vdd 
+ gnd
+ AOI22X1
X_2113_ _1218_ _1223_ _1248_ _1249_ vdd gnd NAND3X1
XFILL_2__1806_ gnd vdd FILL
XFILL_5__2283_ gnd vdd FILL
X_3318_ _72_ vdd _1__bF$buf1 clk_bF$buf3 _AXYS[0]_[3] vdd 
+ gnd
+ DFFSR
XFILL_1__2695_ gnd vdd FILL
XFILL_1__2275_ gnd vdd FILL
XFILL_3__3562_ gnd vdd FILL
XFILL_3__3142_ gnd vdd FILL
XFILL_5__3488_ gnd vdd FILL
XFILL_5__3068_ gnd vdd FILL
XFILL_6__2772_ gnd vdd FILL
X_3491_ _1576_ _1575_ _1535_ _1577_ vdd gnd MUX2X1
XFILL_6__2352_ gnd vdd FILL
X_3071_ _293_ _728_ _730_ vdd gnd NOR2X1
XFILL_2__2764_ gnd vdd FILL
XFILL_2__2344_ gnd vdd FILL
X_1804_ _953_ _955_ _869__bF$buf3 _956_ vdd gnd OAI21X1
XFILL_4__3211_ gnd vdd FILL
XFILL_6__3557_ gnd vdd FILL
XFILL_6__3137_ gnd vdd FILL
XFILL_2__3549_ gnd vdd FILL
XFILL_0__3531_ gnd vdd FILL
XFILL_2__3129_ gnd vdd FILL
XFILL_0__3111_ gnd vdd FILL
XFILL_5__1974_ gnd vdd FILL
XFILL_1__1966_ gnd vdd FILL
XFILL_7__2933_ gnd vdd FILL
XFILL_7__2513_ gnd vdd FILL
XFILL_3__2833_ gnd vdd FILL
XFILL_3__2413_ gnd vdd FILL
XFILL_5__2759_ gnd vdd FILL
XFILL_5__2339_ gnd vdd FILL
X_2762_ _476_ _478_ _477_ _479_ vdd gnd NAND3X1
X_2342_ RDY_bF$buf0 _1192_ _1426_ _1473_ vdd gnd OAI21X1
XFILL_5__2092_ gnd vdd FILL
XFILL_4__2902_ gnd vdd FILL
XFILL_6__2828_ gnd vdd FILL
X_3547_ ADD[1] _1649__bF$buf2 _1630_ vdd gnd NAND2X1
XFILL_6__2408_ gnd vdd FILL
X_3127_ _692_ _1012_ _767_ vdd gnd NAND2X1
XFILL_7__3471_ gnd vdd FILL
XFILL_1__2084_ gnd vdd FILL
XFILL_7__3051_ gnd vdd FILL
XFILL_0__2802_ gnd vdd FILL
XFILL_3__3371_ gnd vdd FILL
XFILL_6__2581_ gnd vdd FILL
XFILL_8__2599_ gnd vdd FILL
XFILL_6__2161_ gnd vdd FILL
XFILL_8__2179_ gnd vdd FILL
XFILL_2__2993_ gnd vdd FILL
XFILL_2__2573_ gnd vdd FILL
XFILL_8__3540_ gnd vdd FILL
XFILL_2__2153_ gnd vdd FILL
XFILL_8__3120_ gnd vdd FILL
XFILL_4__2499_ gnd vdd FILL
XFILL_4__2079_ gnd vdd FILL
XFILL_4__3440_ gnd vdd FILL
XFILL_4__3020_ gnd vdd FILL
XFILL_0__2399_ gnd vdd FILL
XFILL_6__3366_ gnd vdd FILL
XFILL_5__1783_ gnd vdd FILL
X_2818_ _498_ _520_ _521_ vdd gnd NAND2X1
XFILL_1__1775_ gnd vdd FILL
XFILL_7__2742_ gnd vdd FILL
XFILL_7__2322_ gnd vdd FILL
XFILL_3__2642_ gnd vdd FILL
XFILL_3__2222_ gnd vdd FILL
XFILL_5__2988_ gnd vdd FILL
XFILL_5__2568_ gnd vdd FILL
XFILL_5__2148_ gnd vdd FILL
XFILL_7__3527_ gnd vdd FILL
XFILL_7__3107_ gnd vdd FILL
XFILL_1__3501_ gnd vdd FILL
XFILL_3__3427_ gnd vdd FILL
XFILL_3__3007_ gnd vdd FILL
X_2991_ _1191_ _631_ _658_ _659_ vdd gnd OAI21X1
XFILL_6__1852_ gnd vdd FILL
X_2571_ _1119_ _306_ _307_ vdd gnd NOR2X1
X_2151_ _887__bF$buf4 _961_ _1287_ vdd gnd NOR2X1
XFILL_2__1844_ gnd vdd FILL
XFILL_8__2811_ gnd vdd FILL
XFILL_4__2711_ gnd vdd FILL
XFILL_6__2637_ gnd vdd FILL
XFILL_6__2217_ gnd vdd FILL
X_3356_ _109_ vdd _1__bF$buf2 clk_bF$buf8 ABH[0] vdd 
+ gnd
+ DFFSR
XFILL_0__2611_ gnd vdd FILL
XFILL_2__2629_ gnd vdd FILL
XFILL_2__2209_ gnd vdd FILL
XFILL_3__3180_ gnd vdd FILL
XFILL182550x101550 gnd vdd FILL
XFILL_1__3098_ gnd vdd FILL
XFILL_3__1913_ gnd vdd FILL
XFILL_5__1839_ gnd vdd FILL
XFILL_6__2390_ gnd vdd FILL
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
X_1842_ _985_ _986_ vdd gnd INVX1
XFILL_6__3595_ gnd vdd FILL
XFILL_6__3175_ gnd vdd FILL
XFILL_2__3587_ gnd vdd FILL
XFILL_2__3167_ gnd vdd FILL
XFILL_6__1908_ gnd vdd FILL
X_2627_ _970_ _343_ _355_ _356_ vdd gnd OAI21X1
X_2207_ RDY_bF$buf6 _943_ _1342_ vdd gnd NAND2X1
XFILL_7__2971_ gnd vdd FILL
XFILL_7__2551_ gnd vdd FILL
XFILL_7__2131_ gnd vdd FILL
XFILL_3__2871_ gnd vdd FILL
XFILL_3__2451_ gnd vdd FILL
XFILL_3__2031_ gnd vdd FILL
XFILL_5__2797_ gnd vdd FILL
XFILL_5__2377_ gnd vdd FILL
XFILL_1__2789_ gnd vdd FILL
XFILL_1__2369_ gnd vdd FILL
X_2380_ php _138_ _1192_ _139_ vdd gnd OAI21X1
XFILL_8__2620_ gnd vdd FILL
XFILL_8__2200_ gnd vdd FILL
XFILL_4__1999_ gnd vdd FILL
XFILL_4__2940_ gnd vdd FILL
XFILL_4__2520_ gnd vdd FILL
XFILL_4__2100_ gnd vdd FILL
XFILL_0__1899_ gnd vdd FILL
XFILL_6__2866_ gnd vdd FILL
XFILL_6__2446_ gnd vdd FILL
X_3585_ _1685_[14] AB[14] vdd gnd BUFX2
XFILL_6__2026_ gnd vdd FILL
X_3165_ _917_ _1193_ _797_ vdd gnd NAND2X1
XFILL_0__2840_ gnd vdd FILL
XFILL_2__2858_ gnd vdd FILL
XFILL_0__2420_ gnd vdd FILL
XFILL_2__2438_ gnd vdd FILL
XFILL_2__2018_ gnd vdd FILL
XFILL_0__2000_ gnd vdd FILL
XFILL_8__3405_ gnd vdd FILL
XFILL184650x121050 gnd vdd FILL
XFILL_7__1822_ gnd vdd FILL
XFILL_3__1722_ gnd vdd FILL
XFILL_0__3205_ gnd vdd FILL
XFILL_7__2607_ gnd vdd FILL
XFILL_2__2191_ gnd vdd FILL
XFILL_3__2927_ gnd vdd FILL
XFILL_3__2507_ gnd vdd FILL
XFILL_2__3396_ gnd vdd FILL
X_2856_ _554_ _555_ vdd gnd INVX1
XFILL_6__1717_ gnd vdd FILL
X_2436_ _185_ _186_ _187_ vdd gnd NOR2X1
X_2016_ IRHOLD_valid_bF$buf0 _859_ _1151_ _1152_ vdd gnd OAI21X1
XFILL_7__2780_ gnd vdd FILL
XFILL_7__2360_ gnd vdd FILL
XFILL_2__1709_ gnd vdd FILL
XFILL_3__2680_ gnd vdd FILL
XFILL_3__2260_ gnd vdd FILL
XFILL_5__2186_ gnd vdd FILL
XFILL_1__2598_ gnd vdd FILL
XFILL_7__3565_ gnd vdd FILL
XFILL_1__2178_ gnd vdd FILL
XFILL_7__3145_ gnd vdd FILL
XFILL_3__3465_ gnd vdd FILL
XFILL_3__3045_ gnd vdd FILL
XFILL_6__1890_ gnd vdd FILL
XFILL_2__1882_ gnd vdd FILL
XFILL_6__2675_ gnd vdd FILL
XFILL_6__2255_ gnd vdd FILL
X_3394_ alu_shift_right AI[7] _1668_ vdd gnd NAND2X1
XFILL_2__2667_ gnd vdd FILL
XFILL_2__2247_ gnd vdd FILL
XFILL_8__3214_ gnd vdd FILL
X_1707_ RDY_bF$buf2 DIHOLD[6] _862_ vdd gnd OR2X2
XFILL_4__3534_ gnd vdd FILL
XFILL_4__3114_ gnd vdd FILL
XFILL_3__1951_ gnd vdd FILL
XFILL_0__3434_ gnd vdd FILL
XFILL_0__3014_ gnd vdd FILL
XFILL_5__1877_ gnd vdd FILL
XFILL_1__1869_ gnd vdd FILL
XFILL_7__2836_ gnd vdd FILL
XFILL_7__2416_ gnd vdd FILL
XFILL_1__2810_ gnd vdd FILL
XFILL_3__2736_ gnd vdd FILL
XFILL_3__2316_ gnd vdd FILL
X_1880_ _AXYS[2]_[0] _1023_ _1022_ _AXYS[1]_[0] _1024_ vdd 
+ gnd
+ AOI22X1
XFILL_8__1700_ gnd vdd FILL
XFILL_5__3603_ gnd vdd FILL
XFILL_6__1946_ gnd vdd FILL
X_2665_ _389_ _385_ _390_ vdd gnd NOR2X1
X_2245_ _1369_ _1372_ _1378_ _1379_ vdd gnd NAND3X1
XFILL_2__1938_ gnd vdd FILL
XFILL_0__1920_ gnd vdd FILL
XFILL_8__2905_ gnd vdd FILL
XFILL_4__2805_ gnd vdd FILL
XFILL_7__3374_ gnd vdd FILL
XFILL_0__2705_ gnd vdd FILL
XFILL_2__1691_ gnd vdd FILL
XFILL_6__2484_ gnd vdd FILL
XFILL_6__2064_ gnd vdd FILL
XFILL_2__2896_ gnd vdd FILL
XFILL_2__2476_ gnd vdd FILL
XFILL_8__3443_ gnd vdd FILL
XFILL_2__2056_ gnd vdd FILL
XFILL_8__3023_ gnd vdd FILL
X_1936_ _1054_ ADD[2] _1077_ _1078_ vdd gnd AOI21X1
XFILL_7__1860_ gnd vdd FILL
XFILL_3__1760_ gnd vdd FILL
XFILL_7__2645_ gnd vdd FILL
XFILL_7__2225_ gnd vdd FILL
XFILL_3__2965_ gnd vdd FILL
XFILL_3__2545_ gnd vdd FILL
XFILL_3__2125_ gnd vdd FILL
XFILL_5__3412_ gnd vdd FILL
XFILL_1__3404_ gnd vdd FILL
X_2894_ _1220_ _520_ _581_ vdd gnd NAND2X1
XFILL_6__1755_ gnd vdd FILL
X_2474_ _1073_ _182_ _222_ _223_ vdd gnd AOI21X1
X_2054_ _1189_ _1190_ vdd gnd INVX1
XFILL_2__1747_ gnd vdd FILL
XFILL_8__2714_ gnd vdd FILL
XFILL_4__2614_ gnd vdd FILL
X_3259_ _21_ vdd _1__bF$buf10 clk_bF$buf5 cond_code[2] vdd 
+ gnd
+ DFFSR
XFILL_7__3183_ gnd vdd FILL
XFILL_0__2934_ gnd vdd FILL
XFILL_0__2514_ gnd vdd FILL
XFILL_3__3083_ gnd vdd FILL
XFILL_7__1916_ gnd vdd FILL
XFILL_3__1816_ gnd vdd FILL
XFILL_6__2293_ gnd vdd FILL
XFILL_2__2285_ gnd vdd FILL
X_1745_ _869__bF$buf0 _897_ _898_ vdd gnd NAND2X1
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
XFILL_5__3221_ gnd vdd FILL
XFILL_1__3213_ gnd vdd FILL
XFILL_3__3559_ gnd vdd FILL
XFILL_3__3139_ gnd vdd FILL
XFILL_6__1984_ gnd vdd FILL
X_2283_ _1319_ _1345_ _1417_ vdd gnd NOR2X1
XFILL_2__1976_ gnd vdd FILL
XFILL_8__2943_ gnd vdd FILL
XFILL_8__2523_ gnd vdd FILL
XFILL_8__2103_ gnd vdd FILL
XFILL_3_BUFX2_insert10 gnd vdd FILL
XFILL_3_BUFX2_insert11 gnd vdd FILL
XFILL_3_BUFX2_insert12 gnd vdd FILL
XFILL_3_BUFX2_insert13 gnd vdd FILL
XFILL_3_BUFX2_insert14 gnd vdd FILL
XFILL_3_BUFX2_insert15 gnd vdd FILL
XFILL_3_BUFX2_insert16 gnd vdd FILL
XFILL_3_BUFX2_insert17 gnd vdd FILL
XFILL_3_BUFX2_insert18 gnd vdd FILL
XFILL_4__2843_ gnd vdd FILL
XFILL_4__2423_ gnd vdd FILL
XFILL_3_BUFX2_insert19 gnd vdd FILL
XFILL_4__2003_ gnd vdd FILL
XFILL_6__2769_ gnd vdd FILL
X_3488_ _1572_ _1573_ _1571_ _1574_ vdd gnd OAI21X1
XFILL_6__2349_ gnd vdd FILL
X_3068_ CO _698_ _726_ _727_ vdd gnd OAI21X1
XFILL_0__2743_ gnd vdd FILL
XFILL_0__2323_ gnd vdd FILL
XFILL_7__1725_ gnd vdd FILL
XFILL_4__3208_ gnd vdd FILL
XFILL_0__3528_ gnd vdd FILL
XFILL_0__3108_ gnd vdd FILL
XFILL_5__2912_ gnd vdd FILL
XFILL_8__3481_ gnd vdd FILL
XFILL_2__2094_ gnd vdd FILL
XFILL_8__3061_ gnd vdd FILL
XFILL_1__2904_ gnd vdd FILL
X_1974_ _1054_ ADD[6] _1111_ _1112_ vdd gnd AOI21X1
XFILL_4__3381_ gnd vdd FILL
X_2759_ _1264_ _413_ DIMUX[6] _476_ vdd gnd OAI21X1
X_2339_ _1469_ _1218_ _1307_ _1470_ vdd gnd NAND3X1
XFILL_7__2683_ gnd vdd FILL
XFILL_7__2263_ gnd vdd FILL
XFILL_3__2583_ gnd vdd FILL
XFILL_3__2163_ gnd vdd FILL
XFILL_5__2089_ gnd vdd FILL
XFILL_5__3450_ gnd vdd FILL
XFILL_7__3468_ gnd vdd FILL
XFILL_7__3048_ gnd vdd FILL
XFILL_5__3030_ gnd vdd FILL
XFILL_1__3442_ gnd vdd FILL
XFILL_1__3022_ gnd vdd FILL
XFILL_3__3368_ gnd vdd FILL
XFILL_6__1793_ gnd vdd FILL
X_2092_ _887__bF$buf2 _946_ _1228_ vdd gnd NOR2X1
XFILL_2__1785_ gnd vdd FILL
XFILL_8__2752_ gnd vdd FILL
XFILL_8__2332_ gnd vdd FILL
XFILL_4__2652_ gnd vdd FILL
XFILL_4__2232_ gnd vdd FILL
XFILL_6__2998_ gnd vdd FILL
XFILL_6__2578_ gnd vdd FILL
XFILL_6__2158_ gnd vdd FILL
X_3297_ DIMUX[7] vdd _1__bF$buf3 clk_bF$buf9 DIHOLD[7] vdd 
+ gnd
+ DFFSR
XFILL184050x156150 gnd vdd FILL
XFILL_0__2972_ gnd vdd FILL
XFILL_0__2552_ gnd vdd FILL
XFILL_8__3537_ gnd vdd FILL
XFILL_0__2132_ gnd vdd FILL
XFILL_8__3117_ gnd vdd FILL
XFILL_2__3511_ gnd vdd FILL
XFILL_7__1954_ gnd vdd FILL
XFILL_4__3437_ gnd vdd FILL
XFILL_4__3017_ gnd vdd FILL
XFILL_3__1854_ gnd vdd FILL
XFILL_7__2739_ gnd vdd FILL
XFILL_5__2721_ gnd vdd FILL
XFILL_5__2301_ gnd vdd FILL
XFILL_7__2319_ gnd vdd FILL
XFILL_1__2713_ gnd vdd FILL
XFILL_3__2639_ gnd vdd FILL
XFILL_3__2219_ gnd vdd FILL
X_1783_ _899_ _874_ _935_ vdd gnd NOR2X1
XFILL_4__3190_ gnd vdd FILL
XFILL_5__3506_ gnd vdd FILL
XFILL_0__3090_ gnd vdd FILL
XFILL_4__1923_ gnd vdd FILL
X_2988_ _651_ _655_ _656_ _64_ vdd gnd OAI21X1
XFILL_6__1849_ gnd vdd FILL
X_2568_ AN _304_ vdd gnd INVX1
X_2148_ _1051__bF$buf3 _1284_ vdd gnd INVX2
XFILL_7__2492_ gnd vdd FILL
XFILL_7__2072_ gnd vdd FILL
XFILL_0__1823_ gnd vdd FILL
XFILL_8__2808_ gnd vdd FILL
XFILL_3__2392_ gnd vdd FILL
XFILL_4__2708_ gnd vdd FILL
XFILL_0__2608_ gnd vdd FILL
XFILL_3__3597_ gnd vdd FILL
XFILL_3__3177_ gnd vdd FILL
XFILL_8__2981_ gnd vdd FILL
XFILL_8__2561_ gnd vdd FILL
XFILL_8__2141_ gnd vdd FILL
XFILL_4__2881_ gnd vdd FILL
XFILL_4__2461_ gnd vdd FILL
XFILL_4__2041_ gnd vdd FILL
XFILL184350x171750 gnd vdd FILL
XFILL_6__2387_ gnd vdd FILL
XFILL_2__2799_ gnd vdd FILL
XFILL_0__2781_ gnd vdd FILL
XFILL_0__2361_ gnd vdd FILL
XFILL_2__2379_ gnd vdd FILL
X_1839_ _982_ _983_ vdd gnd INVX1
XFILL_7__1763_ gnd vdd FILL
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
XFILL_7__2968_ gnd vdd FILL
XFILL_4_BUFX2_insert69 gnd vdd FILL
XFILL_7__2548_ gnd vdd FILL
XFILL_5__2530_ gnd vdd FILL
XFILL_5__2110_ gnd vdd FILL
XFILL_7__2128_ gnd vdd FILL
XFILL_1__2942_ gnd vdd FILL
XFILL_1__2522_ gnd vdd FILL
XFILL_1__2102_ gnd vdd FILL
XFILL_3__2868_ gnd vdd FILL
XFILL_3__2448_ gnd vdd FILL
XFILL_3__2028_ gnd vdd FILL
XFILL_8__1832_ gnd vdd FILL
XFILL_4__1732_ gnd vdd FILL
X_2797_ _1297_ _1352_ _506_ vdd gnd NAND2X1
X_2377_ _133_ _1025_ _136_ vdd gnd NAND2X1
XFILL_8__2617_ gnd vdd FILL
XFILL_4__2937_ gnd vdd FILL
XFILL_4__2517_ gnd vdd FILL
XFILL_7__3086_ gnd vdd FILL
XFILL_0__2837_ gnd vdd FILL
XFILL_0__2417_ gnd vdd FILL
XFILL_1__3480_ gnd vdd FILL
XFILL_1__3060_ gnd vdd FILL
XFILL_7__1819_ gnd vdd FILL
XFILL_5__1801_ gnd vdd FILL
XFILL_8__2790_ gnd vdd FILL
XFILL_8__2370_ gnd vdd FILL
XFILL_3__1719_ gnd vdd FILL
XFILL_4__2690_ gnd vdd FILL
XFILL_4__2270_ gnd vdd FILL
XFILL_6__2196_ gnd vdd FILL
XFILL_0__2590_ gnd vdd FILL
XFILL_2__2188_ gnd vdd FILL
XFILL_0__2170_ gnd vdd FILL
XFILL_8__3155_ gnd vdd FILL
XFILL_7__1992_ gnd vdd FILL
XFILL_4__3475_ gnd vdd FILL
XFILL_4__3055_ gnd vdd FILL
XFILL_3__1892_ gnd vdd FILL
XFILL_0__3375_ gnd vdd FILL
XFILL_7__2777_ gnd vdd FILL
XFILL_7__2357_ gnd vdd FILL
XFILL_1__2751_ gnd vdd FILL
XFILL_1__2331_ gnd vdd FILL
XFILL_3__2677_ gnd vdd FILL
XFILL_3__2257_ gnd vdd FILL
XFILL_9__3224_ gnd vdd FILL
XFILL_5__3544_ gnd vdd FILL
XFILL_5__3124_ gnd vdd FILL
XFILL_1__3536_ gnd vdd FILL
XFILL_1__3116_ gnd vdd FILL
XFILL_4__1961_ gnd vdd FILL
XFILL_6__1887_ gnd vdd FILL
X_2186_ _1297_ _1320_ _1321_ vdd gnd NOR2X1
XFILL_2__1879_ gnd vdd FILL
XFILL_0__1861_ gnd vdd FILL
XFILL_8__2846_ gnd vdd FILL
XFILL_8__2426_ gnd vdd FILL
XFILL_8__2006_ gnd vdd FILL
XFILL_2__2820_ gnd vdd FILL
XFILL_2__2400_ gnd vdd FILL
XFILL_4__2746_ gnd vdd FILL
XFILL_4__2326_ gnd vdd FILL
XFILL_0__2646_ gnd vdd FILL
XFILL_0__2226_ gnd vdd FILL
XFILL_3__1948_ gnd vdd FILL
XFILL_5__2815_ gnd vdd FILL
XFILL_8__3384_ gnd vdd FILL
XFILL_1__2807_ gnd vdd FILL
X_1877_ _AXYS[0]_[0] _1020_ _1021_ vdd gnd NAND2X1
XFILL_0__3184_ gnd vdd FILL
XFILL_7__2586_ gnd vdd FILL
XFILL_7__2166_ gnd vdd FILL
XFILL_0__1917_ gnd vdd FILL
X_3603_ _1687_ WE vdd gnd BUFX2
XFILL_1__2980_ gnd vdd FILL
XFILL_1__2560_ gnd vdd FILL
XFILL_1__2140_ gnd vdd FILL
XFILL_3__2486_ gnd vdd FILL
XFILL_3__2066_ gnd vdd FILL
XFILL_8__1870_ gnd vdd FILL
XFILL_4__1770_ gnd vdd FILL
XFILL_6__1696_ gnd vdd FILL
XFILL_2__1688_ gnd vdd FILL
XFILL_8__2655_ gnd vdd FILL
XFILL_8__2235_ gnd vdd FILL
XFILL_4__2975_ gnd vdd FILL
XFILL_4__2555_ gnd vdd FILL
XFILL_4__2135_ gnd vdd FILL
XFILL_0__2875_ gnd vdd FILL
XFILL_0__2455_ gnd vdd FILL
XFILL_0__2035_ gnd vdd FILL
XFILL_6__3422_ gnd vdd FILL
XFILL_6__3002_ gnd vdd FILL
XFILL_2__3414_ gnd vdd FILL
XFILL_7__1857_ gnd vdd FILL
XFILL_1__1831_ gnd vdd FILL
XFILL_3__1757_ gnd vdd FILL
XFILL_8_BUFX2_insert10 gnd vdd FILL
XFILL_8_BUFX2_insert11 gnd vdd FILL
XFILL_5__2624_ gnd vdd FILL
XFILL_5__2204_ gnd vdd FILL
XFILL_8_BUFX2_insert12 gnd vdd FILL
XFILL_8_BUFX2_insert13 gnd vdd FILL
XFILL_8_BUFX2_insert14 gnd vdd FILL
XFILL_8_BUFX2_insert15 gnd vdd FILL
XFILL_8_BUFX2_insert16 gnd vdd FILL
XFILL_8_BUFX2_insert17 gnd vdd FILL
XFILL_8_BUFX2_insert18 gnd vdd FILL
XFILL_8_BUFX2_insert19 gnd vdd FILL
XFILL_8__3193_ gnd vdd FILL
XFILL_1__2616_ gnd vdd FILL
XFILL_4__3093_ gnd vdd FILL
XFILL_8__1926_ gnd vdd FILL
XFILL_5__3409_ gnd vdd FILL
XFILL_2__1900_ gnd vdd FILL
XFILL_4__1826_ gnd vdd FILL
XFILL_7__2395_ gnd vdd FILL
XFILL_0__1726_ gnd vdd FILL
X_3412_ _1497_ _1683_ _1498_ vdd gnd NAND2X1
XFILL_3__2295_ gnd vdd FILL
XFILL_5__3582_ gnd vdd FILL
XFILL_5__3162_ gnd vdd FILL
XFILL_1__3154_ gnd vdd FILL
XFILL_8__2884_ gnd vdd FILL
XFILL_8__2464_ gnd vdd FILL
XFILL_8__2044_ gnd vdd FILL
XFILL_4__2784_ gnd vdd FILL
XFILL_4__2364_ gnd vdd FILL
XFILL_0__2684_ gnd vdd FILL
XFILL_0__2264_ gnd vdd FILL
XFILL_6__3231_ gnd vdd FILL
XFILL_2__3223_ gnd vdd FILL
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
XFILL_8__1735_ gnd vdd FILL
XFILL_5__3218_ gnd vdd FILL
XFILL_0__1955_ gnd vdd FILL
XFILL_6__2922_ gnd vdd FILL
XFILL_6__2502_ gnd vdd FILL
X_3221_ _273_ _830__bF$buf0 _842_ _111_ vdd gnd OAI21X1
XFILL_2__2914_ gnd vdd FILL
XFILL_5__3391_ gnd vdd FILL
XFILL_1__3383_ gnd vdd FILL
XFILL_5__1704_ gnd vdd FILL
XFILL_8__2693_ gnd vdd FILL
XFILL_8__2273_ gnd vdd FILL
XFILL184350x148350 gnd vdd FILL
XFILL_4__2593_ gnd vdd FILL
XFILL_4__2173_ gnd vdd FILL
XFILL_6__2099_ gnd vdd FILL
XFILL_5__2909_ gnd vdd FILL
XFILL_0__2493_ gnd vdd FILL
XFILL_8__3478_ gnd vdd FILL
XFILL_6__3460_ gnd vdd FILL
XFILL_0__2073_ gnd vdd FILL
XFILL_8__3058_ gnd vdd FILL
XFILL_6__3040_ gnd vdd FILL
XFILL_2__3452_ gnd vdd FILL
XFILL_2__3032_ gnd vdd FILL
XFILL_7__1895_ gnd vdd FILL
XFILL_4__3378_ gnd vdd FILL
X_2912_ _593_ _596_ _597_ vdd gnd NOR2X1
XFILL_3__1795_ gnd vdd FILL
XFILL_5__2662_ gnd vdd FILL
XFILL_5__2242_ gnd vdd FILL
XFILL_1__2654_ gnd vdd FILL
XFILL_1__2234_ gnd vdd FILL
XFILL_7__3201_ gnd vdd FILL
XFILL_3__3521_ gnd vdd FILL
XFILL_3__3101_ gnd vdd FILL
XFILL_8__1964_ gnd vdd FILL
XFILL_5__3447_ gnd vdd FILL
XFILL_5__3027_ gnd vdd FILL
XFILL_1__3439_ gnd vdd FILL
XFILL_1__3019_ gnd vdd FILL
XFILL_4__1864_ gnd vdd FILL
X_2089_ _882__bF$buf1 _946_ _853__bF$buf6 _1225_ vdd gnd OAI21X1
XFILL_0__1764_ gnd vdd FILL
XFILL_8__2749_ gnd vdd FILL
XFILL_6__2731_ gnd vdd FILL
X_3450_ alu_op[2] BI[1] _1660_ _1536_ vdd gnd OAI21X1
XFILL_6__2311_ gnd vdd FILL
XFILL_8__2329_ gnd vdd FILL
X_3030_ _917_ _949_ _263_ _694_ vdd gnd OAI21X1
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
XFILL_8__2082_ gnd vdd FILL
XFILL_1__1925_ gnd vdd FILL
XFILL_5__2718_ gnd vdd FILL
XFILL_4__3187_ gnd vdd FILL
X_2721_ _430_ _417_ _442_ vdd gnd NAND2X1
X_2301_ _1403_ _1219__bF$buf3 _1434_ vdd gnd OR2X2
XFILL_0__3087_ gnd vdd FILL
XFILL_5__2891_ gnd vdd FILL
XFILL_7__2489_ gnd vdd FILL
XFILL_5__2471_ gnd vdd FILL
XFILL_7__2069_ gnd vdd FILL
XFILL_5__2051_ gnd vdd FILL
X_3506_ _1504_ _1591_ _1589_ _1592_ vdd gnd OAI21X1
XFILL_1__2883_ gnd vdd FILL
XFILL_1__2463_ gnd vdd FILL
XFILL_7__3430_ gnd vdd FILL
XFILL_1__2043_ gnd vdd FILL
XFILL_7__3010_ gnd vdd FILL
XFILL_3__2389_ gnd vdd FILL
XFILL_8__1773_ gnd vdd FILL
XFILL_0__1993_ gnd vdd FILL
XFILL_8__2978_ gnd vdd FILL
XFILL_6__2960_ gnd vdd FILL
XFILL_6__2540_ gnd vdd FILL
XFILL_8__2558_ gnd vdd FILL
XFILL_6__2120_ gnd vdd FILL
XFILL_8__2138_ gnd vdd FILL
XFILL_2__2952_ gnd vdd FILL
XFILL_2__2532_ gnd vdd FILL
XFILL_2__2112_ gnd vdd FILL
XFILL_4__2878_ gnd vdd FILL
XFILL_4__2458_ gnd vdd FILL
XFILL_4__2038_ gnd vdd FILL
XFILL_0__2778_ gnd vdd FILL
XFILL_0__2358_ gnd vdd FILL
XFILL_5__1742_ gnd vdd FILL
XFILL_1__1734_ gnd vdd FILL
XFILL_7__2701_ gnd vdd FILL
XFILL_3__2601_ gnd vdd FILL
XFILL_5__2947_ gnd vdd FILL
XFILL_5__2527_ gnd vdd FILL
XFILL_5__2107_ gnd vdd FILL
XFILL_8__3096_ gnd vdd FILL
XFILL_1__2939_ gnd vdd FILL
XFILL_1__2519_ gnd vdd FILL
XFILL_2__3490_ gnd vdd FILL
XFILL_2__3070_ gnd vdd FILL
X_2950_ _859_ _620_ _625_ _57_ vdd gnd OAI21X1
XFILL_8__1829_ gnd vdd FILL
XFILL_6__1811_ gnd vdd FILL
X_2530_ _267_ _208_ _271_ _1685_[9] vdd gnd OAI21X1
X_2110_ RDY_bF$buf7 _1244_ _1245_ _1246_ vdd gnd OAI21X1
XFILL_2__1803_ gnd vdd FILL
XFILL_4__1729_ gnd vdd FILL
XFILL_7__2298_ gnd vdd FILL
XFILL_5__2280_ gnd vdd FILL
X_3315_ _69_ vdd _1__bF$buf3 clk_bF$buf0 _AXYS[0]_[0] vdd 
+ gnd
+ DFFSR
XFILL_1__2692_ gnd vdd FILL
XFILL_1__2272_ gnd vdd FILL
XFILL_3__2198_ gnd vdd FILL
XFILL_9__3165_ gnd vdd FILL
XFILL_5__3485_ gnd vdd FILL
XFILL_5__3065_ gnd vdd FILL
XFILL_1__3477_ gnd vdd FILL
XFILL_1__3057_ gnd vdd FILL
XFILL_8__2787_ gnd vdd FILL
XFILL_8__2367_ gnd vdd FILL
XFILL_2__2761_ gnd vdd FILL
XFILL_2__2341_ gnd vdd FILL
XFILL_4__2687_ gnd vdd FILL
XFILL_4__2267_ gnd vdd FILL
X_1801_ _914_ _879_ _953_ vdd gnd AND2X2
XFILL_0__2587_ gnd vdd FILL
XFILL_6__3554_ gnd vdd FILL
XFILL_0__2167_ gnd vdd FILL
XFILL_6__3134_ gnd vdd FILL
XFILL_2__3546_ gnd vdd FILL
XFILL_2__3126_ gnd vdd FILL
XFILL_7__1989_ gnd vdd FILL
XFILL_5__1971_ gnd vdd FILL
XFILL_1__1963_ gnd vdd FILL
XFILL_7__2930_ gnd vdd FILL
XFILL_7__2510_ gnd vdd FILL
XFILL_3__1889_ gnd vdd FILL
XFILL_9__2856_ gnd vdd FILL
XFILL_9__2016_ gnd vdd FILL
XFILL_3__2830_ gnd vdd FILL
XFILL_3__2410_ gnd vdd FILL
XFILL_5__2756_ gnd vdd FILL
XFILL_5__2336_ gnd vdd FILL
XFILL_1__2748_ gnd vdd FILL
XFILL_1__2328_ gnd vdd FILL
XFILL_4__1958_ gnd vdd FILL
XFILL_0__1858_ gnd vdd FILL
XFILL_6__2825_ gnd vdd FILL
X_3544_ _1547_ _1570_ _1571_ _1628_ vdd gnd OAI21X1
XFILL_6__2405_ gnd vdd FILL
X_3124_ _738_ _757_ _765_ _91_ vdd gnd OAI21X1
XFILL_1__2081_ gnd vdd FILL
XFILL_9_BUFX2_insert83 gnd vdd FILL
XFILL_2__2817_ gnd vdd FILL
XFILL_9__1707_ gnd vdd FILL
XFILL_8__2596_ gnd vdd FILL
XFILL_8__2176_ gnd vdd FILL
XFILL_2__2990_ gnd vdd FILL
XFILL_2__2570_ gnd vdd FILL
XFILL_2__2150_ gnd vdd FILL
XFILL_4__2496_ gnd vdd FILL
XFILL_4__2076_ gnd vdd FILL
XFILL_0__2396_ gnd vdd FILL
XFILL_5__1780_ gnd vdd FILL
XFILL_7__1798_ gnd vdd FILL
X_2815_ _517_ _510_ _518_ _29_ vdd gnd OAI21X1
XFILL_1__1772_ gnd vdd FILL
XFILL_3__1698_ gnd vdd FILL
XFILL_5__2985_ gnd vdd FILL
XFILL_5__2565_ gnd vdd FILL
XFILL_5__2145_ gnd vdd FILL
XFILL_1__2977_ gnd vdd FILL
XFILL_1__2557_ gnd vdd FILL
XFILL_7__3524_ gnd vdd FILL
XFILL_1__2137_ gnd vdd FILL
XFILL_7__3104_ gnd vdd FILL
XFILL_3__3424_ gnd vdd FILL
XFILL_3__3004_ gnd vdd FILL
XFILL_8__1867_ gnd vdd FILL
XFILL_2__1841_ gnd vdd FILL
XFILL_4__1767_ gnd vdd FILL
XFILL_6__2634_ gnd vdd FILL
XFILL_6__2214_ gnd vdd FILL
X_3353_ _106_ vdd _1__bF$buf3 clk_bF$buf9 ABL[5] vdd 
+ gnd
+ DFFSR
XFILL_2__2626_ gnd vdd FILL
XFILL_2__2206_ gnd vdd FILL
XFILL_6__3419_ gnd vdd FILL
XFILL_1__3095_ gnd vdd FILL
XFILL_3__1910_ gnd vdd FILL
XFILL_5__1836_ gnd vdd FILL
XFILL_1__1828_ gnd vdd FILL
XFILL_6__3592_ gnd vdd FILL
XFILL_6__3172_ gnd vdd FILL
XFILL_2__3584_ gnd vdd FILL
XFILL_2__3164_ gnd vdd FILL
XFILL_6__1905_ gnd vdd FILL
X_2624_ ABL[2] _338_ _353_ vdd gnd NAND2X1
X_2204_ C N cond_code[2] _1339_ vdd gnd MUX2X1
XFILL182550x163950 gnd vdd FILL
XFILL_5__2794_ gnd vdd FILL
XFILL_5__2374_ gnd vdd FILL
X_3409_ _1682_ _1681_ _1678_ _1683_ vdd gnd OAI21X1
XFILL_1__2786_ gnd vdd FILL
XFILL_1__2366_ gnd vdd FILL
XFILL_5__3579_ gnd vdd FILL
XFILL_5__3159_ gnd vdd FILL
XFILL_4__1996_ gnd vdd FILL
XFILL_0__1896_ gnd vdd FILL
XFILL_6__2863_ gnd vdd FILL
XFILL_6__2443_ gnd vdd FILL
X_3582_ _1685_[11] AB[11] vdd gnd BUFX2
XFILL_6__2023_ gnd vdd FILL
X_3162_ _793_ _794_ vdd gnd INVX1
XFILL_2__2855_ gnd vdd FILL
XFILL_2__2435_ gnd vdd FILL
XFILL_8__3402_ gnd vdd FILL
XFILL_2__2015_ gnd vdd FILL
XFILL_6__3228_ gnd vdd FILL
XFILL_0__3202_ gnd vdd FILL
XFILL_7__2604_ gnd vdd FILL
XFILL_3__2924_ gnd vdd FILL
XFILL_3__2504_ gnd vdd FILL
XFILL_2__3393_ gnd vdd FILL
X_2853_ _1316_ _551_ _552_ vdd gnd NAND2X1
XFILL_6__1714_ gnd vdd FILL
X_2433_ _1274_ _1048_ _184_ vdd gnd NOR2X1
X_2013_ _1142_ _1148_ _1149_ vdd gnd NAND2X1
XFILL_2__1706_ gnd vdd FILL
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
X_3218_ _1685_[9] _830__bF$buf3 _841_ vdd gnd NAND2X1
XFILL_1__2595_ gnd vdd FILL
XFILL_7__3562_ gnd vdd FILL
XFILL_1__2175_ gnd vdd FILL
XFILL_7__3142_ gnd vdd FILL
XFILL_3__3462_ gnd vdd FILL
XFILL_3__3042_ gnd vdd FILL
XFILL_5__3388_ gnd vdd FILL
XFILL_6__2672_ gnd vdd FILL
X_3391_ _1649__bF$buf0 _1664_ _1665_ _1485_ vdd gnd OAI21X1
XFILL_6__2252_ gnd vdd FILL
XFILL_2__2664_ gnd vdd FILL
XFILL_2__2244_ gnd vdd FILL
XFILL_8__3211_ gnd vdd FILL
X_1704_ RDY_bF$buf4 DIHOLD[5] _860_ vdd gnd OR2X2
XFILL_4__3531_ gnd vdd FILL
XFILL_4__3111_ gnd vdd FILL
XFILL_6__3457_ gnd vdd FILL
XFILL_6__3037_ gnd vdd FILL
XFILL_0__3431_ gnd vdd FILL
XFILL_2__3449_ gnd vdd FILL
XFILL_2__3029_ gnd vdd FILL
XFILL_0__3011_ gnd vdd FILL
XFILL_5__1874_ gnd vdd FILL
X_2909_ _1214_ _498_ _551_ _594_ vdd gnd NAND3X1
XFILL_1__1866_ gnd vdd FILL
XFILL_7__2833_ gnd vdd FILL
XFILL_7__2413_ gnd vdd FILL
XFILL_3__2733_ gnd vdd FILL
XFILL_3__2313_ gnd vdd FILL
XFILL_5__2659_ gnd vdd FILL
XFILL_5__2239_ gnd vdd FILL
XFILL_5__3600_ gnd vdd FILL
XFILL_3__3518_ gnd vdd FILL
XFILL_6__1943_ gnd vdd FILL
X_2662_ _386_ _359_ _1051__bF$buf0 _387_ vdd gnd OAI21X1
X_2242_ _853__bF$buf0 _1287_ _1370_ _1376_ vdd gnd OAI21X1
XFILL_2__1935_ gnd vdd FILL
XFILL_8__2902_ gnd vdd FILL
XFILL_4__2802_ gnd vdd FILL
XFILL_6__2728_ gnd vdd FILL
X_3447_ alu_op[0] _1532_ _1533_ vdd gnd NOR2X1
XFILL_6__2308_ gnd vdd FILL
X_3027_ _687_ _690_ RDY_bF$buf2 _691_ vdd gnd OAI21X1
XFILL_7__3371_ gnd vdd FILL
XFILL_0__2702_ gnd vdd FILL
XFILL_5__3197_ gnd vdd FILL
XFILL_1__3189_ gnd vdd FILL
XFILL_8__2499_ gnd vdd FILL
XFILL_6__2481_ gnd vdd FILL
XFILL_8__2079_ gnd vdd FILL
XFILL_6__2061_ gnd vdd FILL
XFILL_2__2893_ gnd vdd FILL
XFILL_2__2473_ gnd vdd FILL
XFILL_8__3440_ gnd vdd FILL
XFILL_2__2053_ gnd vdd FILL
XFILL_8__3020_ gnd vdd FILL
XFILL_4__2399_ gnd vdd FILL
X_1933_ _867_ _918__bF$buf0 _889_ _1075_ vdd gnd NOR3X1
XFILL_0__2299_ gnd vdd FILL
XFILL182850x101550 gnd vdd FILL
X_2718_ _435_ _438_ _436_ _439_ vdd gnd NOR3X1
XFILL_7__2642_ gnd vdd FILL
XFILL_7__2222_ gnd vdd FILL
XFILL_9__2988_ gnd vdd FILL
XFILL_3__2962_ gnd vdd FILL
XFILL_3__2542_ gnd vdd FILL
XFILL_3__2122_ gnd vdd FILL
XFILL_5__2888_ gnd vdd FILL
XFILL_5__2468_ gnd vdd FILL
XFILL_5__2048_ gnd vdd FILL
XFILL_7__3427_ gnd vdd FILL
XFILL_7__3007_ gnd vdd FILL
XFILL_1__3401_ gnd vdd FILL
X_2891_ _1175_ _578_ _577_ _579_ vdd gnd OAI21X1
XFILL_6__1752_ gnd vdd FILL
X_2471_ DIMUX[2] _204_ _202_ ABL[2] _220_ vdd 
+ gnd
+ AOI22X1
X_2051_ _918__bF$buf2 _936_ _1186_ _1187_ vdd gnd OAI21X1
XFILL_2__1744_ gnd vdd FILL
XFILL_8__2711_ gnd vdd FILL
XFILL_4__2611_ gnd vdd FILL
XFILL_6__2957_ gnd vdd FILL
XFILL_6__2537_ gnd vdd FILL
XFILL_6__2117_ gnd vdd FILL
X_3256_ _18_ vdd _1__bF$buf2 clk_bF$buf8 NMI_edge vdd 
+ gnd
+ DFFSR
XFILL_7__3180_ gnd vdd FILL
XFILL_0__2931_ gnd vdd FILL
XFILL_2__2949_ gnd vdd FILL
XFILL_0__2511_ gnd vdd FILL
XFILL_2__2529_ gnd vdd FILL
XFILL_2__2109_ gnd vdd FILL
XFILL_3__3080_ gnd vdd FILL
XFILL_7__1913_ gnd vdd FILL
XFILL184350x136650 gnd vdd FILL
XFILL_3__1813_ gnd vdd FILL
XFILL_5__1739_ gnd vdd FILL
XFILL_6__2290_ gnd vdd FILL
XFILL_2__2282_ gnd vdd FILL
X_1742_ _887__bF$buf3 _891_ _894_ _895_ vdd gnd OAI21X1
XFILL_6__3495_ gnd vdd FILL
XFILL_6__3075_ gnd vdd FILL
XFILL_0_BUFX2_insert80 gnd vdd FILL
XFILL_0_BUFX2_insert81 gnd vdd FILL
XFILL_2__3487_ gnd vdd FILL
XFILL_0_BUFX2_insert82 gnd vdd FILL
XFILL_2__3067_ gnd vdd FILL
XFILL_0_BUFX2_insert83 gnd vdd FILL
XFILL_0_BUFX2_insert84 gnd vdd FILL
XFILL_0_BUFX2_insert85 gnd vdd FILL
XFILL_0_BUFX2_insert86 gnd vdd FILL
XFILL_0_BUFX2_insert87 gnd vdd FILL
XFILL_0_BUFX2_insert88 gnd vdd FILL
XFILL_0_BUFX2_insert89 gnd vdd FILL
X_2947_ reset _618_ IRHOLD[3] _624_ vdd gnd OAI21X1
XFILL_6__1808_ gnd vdd FILL
X_2527_ _200_ ADD[1] _1066_ _269_ vdd gnd AOI21X1
X_2107_ _1237_ _1242_ _1243_ vdd gnd NOR2X1
XFILL_7__2871_ gnd vdd FILL
XFILL_7__2451_ gnd vdd FILL
XFILL_7__2031_ gnd vdd FILL
XFILL_9__2797_ gnd vdd FILL
XFILL_3__2771_ gnd vdd FILL
XFILL_3__2351_ gnd vdd FILL
XFILL_5__2697_ gnd vdd FILL
XFILL_5__2277_ gnd vdd FILL
XFILL_1__2689_ gnd vdd FILL
XFILL_1__2269_ gnd vdd FILL
XFILL_1__3210_ gnd vdd FILL
XFILL_3__3556_ gnd vdd FILL
XFILL_3__3136_ gnd vdd FILL
XFILL_8__1999_ gnd vdd FILL
XFILL_6__1981_ gnd vdd FILL
X_2280_ _1408_ _1413_ _1414_ vdd gnd AND2X2
XFILL_2__1973_ gnd vdd FILL
XFILL_8__2940_ gnd vdd FILL
XFILL_8__2520_ gnd vdd FILL
XFILL_8__2100_ gnd vdd FILL
XFILL_4__1899_ gnd vdd FILL
XFILL_4__2840_ gnd vdd FILL
XFILL_4__2420_ gnd vdd FILL
XFILL_4__2000_ gnd vdd FILL
XFILL_0__1799_ gnd vdd FILL
XFILL_6__2766_ gnd vdd FILL
X_3485_ _1663_ _1570_ _1547_ _1571_ vdd gnd OAI21X1
XFILL_6__2346_ gnd vdd FILL
X_3065_ _AXYS[0]_[4] _693_ _725_ vdd gnd NAND2X1
XFILL_0__2740_ gnd vdd FILL
XFILL_2__2758_ gnd vdd FILL
XFILL_2__2338_ gnd vdd FILL
XFILL_0__2320_ gnd vdd FILL
XFILL_7__1722_ gnd vdd FILL
XFILL_4__3205_ gnd vdd FILL
XFILL_0__3525_ gnd vdd FILL
XFILL_0__3105_ gnd vdd FILL
XFILL_5__1968_ gnd vdd FILL
XFILL_7__2927_ gnd vdd FILL
XFILL_7__2507_ gnd vdd FILL
XFILL_2__2091_ gnd vdd FILL
XFILL_1__2901_ gnd vdd FILL
XFILL_3__2827_ gnd vdd FILL
XFILL_3__2407_ gnd vdd FILL
X_1971_ _1108_ _872_ _1109_ vdd gnd NOR2X1
X_2756_ PC[13] _323_ _473_ vdd gnd NAND2X1
X_2336_ _1423_ _1325_ _1468_ vdd gnd NOR2X1
XFILL_7__2680_ gnd vdd FILL
XFILL_7__2260_ gnd vdd FILL
XFILL_3__2580_ gnd vdd FILL
XFILL_3__2160_ gnd vdd FILL
XFILL_5__2086_ gnd vdd FILL
XFILL_2_BUFX2_insert0 gnd vdd FILL
XFILL_1__2498_ gnd vdd FILL
XFILL_2_BUFX2_insert1 gnd vdd FILL
XFILL_7__3465_ gnd vdd FILL
XFILL_1__2078_ gnd vdd FILL
XFILL_2_BUFX2_insert2 gnd vdd FILL
XFILL_7__3045_ gnd vdd FILL
XFILL_2_BUFX2_insert3 gnd vdd FILL
XFILL_2_BUFX2_insert4 gnd vdd FILL
XFILL_2_BUFX2_insert5 gnd vdd FILL
XFILL_2_BUFX2_insert6 gnd vdd FILL
XFILL_2_BUFX2_insert7 gnd vdd FILL
XFILL_2_BUFX2_insert8 gnd vdd FILL
XFILL_2_BUFX2_insert9 gnd vdd FILL
XFILL_3__3365_ gnd vdd FILL
XFILL_6__1790_ gnd vdd FILL
XFILL_2__1782_ gnd vdd FILL
XFILL_6__2995_ gnd vdd FILL
XFILL_6__2575_ gnd vdd FILL
XFILL_6__2155_ gnd vdd FILL
X_3294_ DIMUX[4] vdd _1__bF$buf5 clk_bF$buf9 DIHOLD[4] vdd 
+ gnd
+ DFFSR
XFILL_2__2987_ gnd vdd FILL
XFILL_2__2567_ gnd vdd FILL
XFILL_8__3534_ gnd vdd FILL
XFILL_2__2147_ gnd vdd FILL
XFILL_8__3114_ gnd vdd FILL
XFILL_7__1951_ gnd vdd FILL
XFILL_4__3434_ gnd vdd FILL
XFILL_4__3014_ gnd vdd FILL
XFILL_3__1851_ gnd vdd FILL
XFILL_5__1777_ gnd vdd FILL
XFILL_1__1769_ gnd vdd FILL
XFILL_7__2736_ gnd vdd FILL
XFILL_7__2316_ gnd vdd FILL
XFILL_1__2710_ gnd vdd FILL
XFILL_3__2636_ gnd vdd FILL
XFILL_3__2216_ gnd vdd FILL
X_1780_ DIMUX[0] _932_ vdd gnd INVX1
XFILL_5__3503_ gnd vdd FILL
XFILL_4__1920_ gnd vdd FILL
X_2985_ _855_ _652_ _978_ _654_ vdd gnd OAI21X1
XFILL_6__1846_ gnd vdd FILL
X_2565_ _225_ DIMUX[6] _301_ _302_ vdd gnd AOI21X1
X_2145_ _981_ _1281_ vdd gnd INVX4
XFILL_2__1838_ gnd vdd FILL
XFILL_0__1820_ gnd vdd FILL
XFILL_8__2805_ gnd vdd FILL
XFILL_4__2705_ gnd vdd FILL
XFILL_0__2605_ gnd vdd FILL
XFILL_3__3594_ gnd vdd FILL
XFILL_3__3174_ gnd vdd FILL
XFILL_3__1907_ gnd vdd FILL
XFILL_6__2384_ gnd vdd FILL
XFILL_2__2796_ gnd vdd FILL
XFILL_2__2376_ gnd vdd FILL
X_1836_ _979_ _980_ vdd gnd INVX1
XFILL_7__1760_ gnd vdd FILL
XFILL_6__3589_ gnd vdd FILL
XFILL_6__3169_ gnd vdd FILL
XFILL_0__3563_ gnd vdd FILL
XFILL_0__3143_ gnd vdd FILL
XFILL_1__1998_ gnd vdd FILL
XFILL_7__2965_ gnd vdd FILL
XFILL_4_BUFX2_insert39 gnd vdd FILL
XFILL_7__2545_ gnd vdd FILL
XFILL_7__2125_ gnd vdd FILL
XFILL_3__2865_ gnd vdd FILL
XFILL_3__2445_ gnd vdd FILL
XFILL_3__2025_ gnd vdd FILL
XBUFX2_insert90 _691_ _691__bF$buf3 vdd gnd BUFX2
XBUFX2_insert91 _691_ _691__bF$buf2 vdd gnd BUFX2
XBUFX2_insert92 _691_ _691__bF$buf1 vdd gnd BUFX2
XBUFX2_insert93 _691_ _691__bF$buf0 vdd gnd BUFX2
XBUFX2_insert94 _1219_ _1219__bF$buf3 vdd gnd BUFX2
XBUFX2_insert95 _1219_ _1219__bF$buf2 vdd gnd BUFX2
XBUFX2_insert96 _1219_ _1219__bF$buf1 vdd gnd BUFX2
XBUFX2_insert97 _1219_ _1219__bF$buf0 vdd gnd BUFX2
X_2794_ _1395_ _503_ _504_ vdd gnd NAND2X1
X_2374_ _882__bF$buf0 _901_ _1188_ _134_ vdd gnd OAI21X1
XFILL_8__2614_ gnd vdd FILL
XFILL_4__2934_ gnd vdd FILL
XFILL_4__2514_ gnd vdd FILL
X_3579_ _1685_[0] AB[0] vdd gnd BUFX2
X_3159_ _788_ _790_ _791_ vdd gnd NOR2X1
XFILL_7__3083_ gnd vdd FILL
XFILL_0__2834_ gnd vdd FILL
XFILL_0__2414_ gnd vdd FILL
XFILL_7__1816_ gnd vdd FILL
XFILL183450x35250 gnd vdd FILL
XFILL_3__1716_ gnd vdd FILL
XFILL_6__2193_ gnd vdd FILL
XFILL_2__2185_ gnd vdd FILL
XFILL_8__3152_ gnd vdd FILL
XFILL_4__3472_ gnd vdd FILL
XFILL_4__3052_ gnd vdd FILL
XFILL_6__3398_ gnd vdd FILL
XFILL_0__3372_ gnd vdd FILL
XFILL_7__2774_ gnd vdd FILL
XFILL_7__2354_ gnd vdd FILL
XFILL_3__2674_ gnd vdd FILL
XFILL_3__2254_ gnd vdd FILL
XFILL_7__3559_ gnd vdd FILL
XFILL_5__3541_ gnd vdd FILL
XFILL_5__3121_ gnd vdd FILL
XFILL_7__3139_ gnd vdd FILL
XFILL_1__3533_ gnd vdd FILL
XFILL_1__3113_ gnd vdd FILL
XFILL_3__3459_ gnd vdd FILL
XFILL_3__3039_ gnd vdd FILL
XFILL_6__1884_ gnd vdd FILL
X_2183_ _1317_ _1219__bF$buf3 _1318_ vdd gnd OR2X2
XFILL_2__1876_ gnd vdd FILL
XFILL_8__2843_ gnd vdd FILL
XFILL_8__2423_ gnd vdd FILL
XFILL_8__2003_ gnd vdd FILL
XFILL_4__2743_ gnd vdd FILL
XFILL_4__2323_ gnd vdd FILL
XFILL_6__2669_ gnd vdd FILL
X_3388_ alu_op[2] _1660_ _1663_ vdd gnd NOR2X1
XFILL_6__2249_ gnd vdd FILL
XFILL_0__2643_ gnd vdd FILL
XFILL_0__2223_ gnd vdd FILL
XFILL_8__3208_ gnd vdd FILL
XFILL_2__3602_ gnd vdd FILL
XFILL_4__3528_ gnd vdd FILL
XFILL_4__3108_ gnd vdd FILL
XFILL_3__1945_ gnd vdd FILL
XFILL_0__3428_ gnd vdd FILL
XFILL_0__3008_ gnd vdd FILL
XFILL_5__2812_ gnd vdd FILL
XFILL_8__3381_ gnd vdd FILL
XFILL_1__2804_ gnd vdd FILL
X_1874_ _1006_ _1007_ _1017_ _1018_ vdd gnd NAND3X1
XFILL_2__3199_ gnd vdd FILL
XFILL_0__3181_ gnd vdd FILL
X_2659_ RDY_bF$buf4 _973_ _384_ _379_ _7_ vdd 
+ gnd
+ OAI22X1
X_2239_ _882__bF$buf2 _961_ RDY_bF$buf3 _1373_ vdd gnd OAI21X1
XFILL_7__2583_ gnd vdd FILL
XFILL_7__2163_ gnd vdd FILL
XFILL_0__1914_ gnd vdd FILL
X_3600_ _1686_[5] DO[5] vdd gnd BUFX2
XFILL_3__2483_ gnd vdd FILL
XFILL_3__2063_ gnd vdd FILL
XFILL_7__3368_ gnd vdd FILL
XFILL_6__1693_ gnd vdd FILL
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
XFILL_8__2652_ gnd vdd FILL
XFILL_8__2232_ gnd vdd FILL
XFILL_4__2972_ gnd vdd FILL
XFILL_4__2552_ gnd vdd FILL
XFILL_4__2132_ gnd vdd FILL
XFILL_6__2898_ gnd vdd FILL
XFILL_6__2478_ gnd vdd FILL
XFILL_6__2058_ gnd vdd FILL
X_3197_ _808_ _828_ RDY_bF$buf5 _829_ vdd gnd OAI21X1
XFILL_0__2872_ gnd vdd FILL
XFILL_0__2452_ gnd vdd FILL
XFILL_0__2032_ gnd vdd FILL
XFILL_8__3437_ gnd vdd FILL
XFILL_8__3017_ gnd vdd FILL
XFILL_2__3411_ gnd vdd FILL
XFILL_7__1854_ gnd vdd FILL
XFILL_3__1754_ gnd vdd FILL
XFILL_7__2639_ gnd vdd FILL
XFILL_5__2621_ gnd vdd FILL
XFILL_5__2201_ gnd vdd FILL
XFILL_7__2219_ gnd vdd FILL
XFILL_8__3190_ gnd vdd FILL
XFILL_1__2613_ gnd vdd FILL
XFILL184650x171750 gnd vdd FILL
XFILL_3__2959_ gnd vdd FILL
XFILL_3__2539_ gnd vdd FILL
XFILL_3__2119_ gnd vdd FILL
XFILL_4__3090_ gnd vdd FILL
XFILL_8__1923_ gnd vdd FILL
XFILL_5__3406_ gnd vdd FILL
XFILL_4__1823_ gnd vdd FILL
X_2888_ _853__bF$buf1 _1002__bF$buf1 store _576_ vdd gnd OAI21X1
XFILL_6__1749_ gnd vdd FILL
X_2468_ _1063_ _182_ _217_ _218_ vdd gnd AOI21X1
X_2048_ _886__bF$buf3 _897_ _1184_ vdd gnd NAND2X1
XFILL_7__2392_ gnd vdd FILL
XFILL_0__1723_ gnd vdd FILL
XFILL_8__2708_ gnd vdd FILL
XFILL_3__2292_ gnd vdd FILL
XFILL_4__2608_ gnd vdd FILL
XFILL_7__3597_ gnd vdd FILL
XFILL_7__3177_ gnd vdd FILL
XFILL_0__2928_ gnd vdd FILL
XFILL_0__2508_ gnd vdd FILL
XFILL_1__3151_ gnd vdd FILL
XFILL_3__3497_ gnd vdd FILL
XFILL_3__3077_ gnd vdd FILL
XFILL_8__2881_ gnd vdd FILL
XFILL_8__2461_ gnd vdd FILL
XFILL_8__2041_ gnd vdd FILL
XFILL_4__2781_ gnd vdd FILL
XFILL_4__2361_ gnd vdd FILL
XFILL183750x74250 gnd vdd FILL
XFILL_6__2287_ gnd vdd FILL
XFILL_2__2699_ gnd vdd FILL
XFILL_0__2681_ gnd vdd FILL
XFILL_0__2261_ gnd vdd FILL
XFILL_2__2279_ gnd vdd FILL
XFILL_2__3220_ gnd vdd FILL
X_1739_ state[3] _873_ _892_ vdd gnd NAND2X1
XFILL_4__3566_ gnd vdd FILL
XFILL_4__3146_ gnd vdd FILL
XFILL_3__1983_ gnd vdd FILL
XFILL_0__3466_ gnd vdd FILL
XFILL_0__3046_ gnd vdd FILL
XFILL_5__2850_ gnd vdd FILL
XFILL_7__2868_ gnd vdd FILL
XFILL_5__2430_ gnd vdd FILL
XFILL_7__2448_ gnd vdd FILL
XFILL_7__2028_ gnd vdd FILL
XFILL_5__2010_ gnd vdd FILL
XFILL_1__2842_ gnd vdd FILL
XFILL_1__2422_ gnd vdd FILL
XFILL_1__2002_ gnd vdd FILL
XFILL_3__2768_ gnd vdd FILL
XFILL_3__2348_ gnd vdd FILL
XFILL_8__1732_ gnd vdd FILL
XFILL_5__3215_ gnd vdd FILL
XFILL_1__3207_ gnd vdd FILL
XFILL_6__1978_ gnd vdd FILL
X_2697_ RDY_bF$buf8 _260_ _419_ _10_ vdd gnd OAI21X1
X_2277_ _853__bF$buf2 _1277_ _1410_ _1411_ vdd gnd OAI21X1
XFILL_0__1952_ gnd vdd FILL
XFILL_8__2937_ gnd vdd FILL
XFILL_8__2517_ gnd vdd FILL
XFILL_2__2911_ gnd vdd FILL
XFILL_4__2837_ gnd vdd FILL
XFILL_4__2417_ gnd vdd FILL
XFILL184050x109350 gnd vdd FILL
XFILL_0__2737_ gnd vdd FILL
XFILL_0__2317_ gnd vdd FILL
XFILL_1__3380_ gnd vdd FILL
XFILL_5__1701_ gnd vdd FILL
XFILL_7__1719_ gnd vdd FILL
XFILL_8__2690_ gnd vdd FILL
XFILL_8__2270_ gnd vdd FILL
XFILL_4__2590_ gnd vdd FILL
XFILL_4__2170_ gnd vdd FILL
XFILL_6__2096_ gnd vdd FILL
XFILL_5__2906_ gnd vdd FILL
XFILL_0__2490_ gnd vdd FILL
XFILL_8__3475_ gnd vdd FILL
XFILL_0__2070_ gnd vdd FILL
XFILL_2__2088_ gnd vdd FILL
XFILL_8__3055_ gnd vdd FILL
X_1968_ _1103_ _1105_ _1104_ _1106_ vdd gnd NAND3X1
XFILL_7__1892_ gnd vdd FILL
XFILL_4__3375_ gnd vdd FILL
XFILL_3__1792_ gnd vdd FILL
XFILL_7__2677_ gnd vdd FILL
XFILL_7__2257_ gnd vdd FILL
XFILL_1__2651_ gnd vdd FILL
XFILL_1__2231_ gnd vdd FILL
XFILL_3__2997_ gnd vdd FILL
XFILL_3__2577_ gnd vdd FILL
XFILL_3__2157_ gnd vdd FILL
XFILL_8__1961_ gnd vdd FILL
XFILL_5__3444_ gnd vdd FILL
XFILL_5__3024_ gnd vdd FILL
XFILL_1__3436_ gnd vdd FILL
XFILL_1__3016_ gnd vdd FILL
XFILL_4__1861_ gnd vdd FILL
XFILL_6__1787_ gnd vdd FILL
X_2086_ _1219__bF$buf3 _1221_ _1222_ vdd gnd NOR2X1
XFILL_2__1779_ gnd vdd FILL
XFILL_0__1761_ gnd vdd FILL
XFILL_8__2746_ gnd vdd FILL
XFILL_8__2326_ gnd vdd FILL
XFILL_2__2720_ gnd vdd FILL
XFILL_2__2300_ gnd vdd FILL
XFILL_4__2646_ gnd vdd FILL
XFILL_4__2226_ gnd vdd FILL
XFILL184350x124950 gnd vdd FILL
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
X_1777_ _907_ _929_ _925_ _930_ vdd gnd NAND3X1
XFILL_4__3184_ gnd vdd FILL
XFILL_0__3084_ gnd vdd FILL
XFILL_4__1917_ gnd vdd FILL
XFILL_7__2486_ gnd vdd FILL
XFILL_7__2066_ gnd vdd FILL
XFILL_0__1817_ gnd vdd FILL
X_3503_ _1506_ _1504_ _1589_ vdd gnd NAND2X1
XFILL_1__2880_ gnd vdd FILL
XFILL_1__2460_ gnd vdd FILL
XFILL_1__2040_ gnd vdd FILL
XFILL_3__2386_ gnd vdd FILL
XFILL_8__1770_ gnd vdd FILL
XFILL_0__1990_ gnd vdd FILL
XFILL_8__2975_ gnd vdd FILL
XFILL_8__2555_ gnd vdd FILL
XFILL_8__2135_ gnd vdd FILL
XFILL_6_BUFX2_insert0 gnd vdd FILL
XFILL_6_BUFX2_insert1 gnd vdd FILL
XFILL_6_BUFX2_insert2 gnd vdd FILL
XFILL_4__2875_ gnd vdd FILL
XFILL_6_BUFX2_insert3 gnd vdd FILL
XFILL_4__2455_ gnd vdd FILL
XFILL_6_BUFX2_insert4 gnd vdd FILL
XFILL_4__2035_ gnd vdd FILL
XFILL_6_BUFX2_insert5 gnd vdd FILL
XFILL_6_BUFX2_insert6 gnd vdd FILL
XFILL_6_BUFX2_insert7 gnd vdd FILL
XFILL_6_BUFX2_insert8 gnd vdd FILL
XFILL_6_BUFX2_insert9 gnd vdd FILL
XFILL_0__2775_ gnd vdd FILL
XFILL_0__2355_ gnd vdd FILL
XFILL_7__1757_ gnd vdd FILL
XFILL_1__1731_ gnd vdd FILL
XFILL_5__2944_ gnd vdd FILL
XFILL_5__2524_ gnd vdd FILL
XFILL_5__2104_ gnd vdd FILL
XFILL_8__3093_ gnd vdd FILL
XFILL_1__2936_ gnd vdd FILL
XFILL_1__2516_ gnd vdd FILL
XFILL_8__1826_ gnd vdd FILL
XFILL_2__1800_ gnd vdd FILL
XFILL_4__1726_ gnd vdd FILL
XFILL_7__2295_ gnd vdd FILL
X_3312_ _66_ vdd _1__bF$buf10 clk_bF$buf9 Z vdd 
+ gnd
+ DFFSR
XFILL_3__2195_ gnd vdd FILL
XFILL_5__3482_ gnd vdd FILL
XFILL_5__3062_ gnd vdd FILL
XFILL_1__3474_ gnd vdd FILL
XFILL_1__3054_ gnd vdd FILL
XFILL_8__2784_ gnd vdd FILL
XFILL_8__2364_ gnd vdd FILL
XFILL_5_CLKBUF1_insert28 gnd vdd FILL
XFILL_5_CLKBUF1_insert29 gnd vdd FILL
XFILL_4__2684_ gnd vdd FILL
XFILL_4__2264_ gnd vdd FILL
XFILL_0__2584_ gnd vdd FILL
XFILL_6__3551_ gnd vdd FILL
XFILL_0__2164_ gnd vdd FILL
XFILL_6__3131_ gnd vdd FILL
XFILL_8__3149_ gnd vdd FILL
XFILL_2__3543_ gnd vdd FILL
XFILL_2__3123_ gnd vdd FILL
XFILL_7__1986_ gnd vdd FILL
XFILL_4__3469_ gnd vdd FILL
XFILL_4__3049_ gnd vdd FILL
XFILL_1__1960_ gnd vdd FILL
XFILL_3__1886_ gnd vdd FILL
XFILL_0__3369_ gnd vdd FILL
XFILL_5__2753_ gnd vdd FILL
XFILL_5__2333_ gnd vdd FILL
XFILL184650x148350 gnd vdd FILL
XFILL_1__2745_ gnd vdd FILL
XFILL_1__2325_ gnd vdd FILL
XFILL_5__3538_ gnd vdd FILL
XFILL_5__3118_ gnd vdd FILL
XFILL_4__1955_ gnd vdd FILL
XFILL_0__1855_ gnd vdd FILL
XFILL_6__2822_ gnd vdd FILL
X_3541_ _1649__bF$buf3 _1614_ _1625_ _1487_ vdd gnd OAI21X1
XFILL_6__2402_ gnd vdd FILL
X_3121_ _691__bF$buf0 _758_ _AXYS[2]_[5] _764_ vdd gnd OAI21X1
XFILL_9_BUFX2_insert53 gnd vdd FILL
XFILL_2__2814_ gnd vdd FILL
XFILL_8__2593_ gnd vdd FILL
XFILL_8__2173_ gnd vdd FILL
XFILL_4__2493_ gnd vdd FILL
XFILL_4__2073_ gnd vdd FILL
XFILL_5__2809_ gnd vdd FILL
XFILL_0__2393_ gnd vdd FILL
XFILL_8__3378_ gnd vdd FILL
XFILL_7__1795_ gnd vdd FILL
X_2812_ _516_ _1323_ _517_ vdd gnd NAND2X1
XFILL_3__1695_ gnd vdd FILL
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
XFILL_3__3421_ gnd vdd FILL
XFILL_3__3001_ gnd vdd FILL
XFILL_8__1864_ gnd vdd FILL
XFILL_4__1764_ gnd vdd FILL
XFILL_8__2649_ gnd vdd FILL
XFILL_6__2631_ gnd vdd FILL
XFILL_6__2211_ gnd vdd FILL
X_3350_ _103_ vdd _1__bF$buf5 clk_bF$buf9 ABL[2] vdd 
+ gnd
+ DFFSR
XFILL_8__2229_ gnd vdd FILL
XFILL_2__2623_ gnd vdd FILL
XFILL_2__2203_ gnd vdd FILL
XFILL_4__2969_ gnd vdd FILL
XFILL_4__2549_ gnd vdd FILL
XFILL_4__2129_ gnd vdd FILL
XFILL_0__2869_ gnd vdd FILL
XFILL_0__2449_ gnd vdd FILL
XFILL_0__2029_ gnd vdd FILL
XFILL_6__3416_ gnd vdd FILL
XFILL_1__3092_ gnd vdd FILL
XFILL_2__3408_ gnd vdd FILL
XFILL_5__1833_ gnd vdd FILL
XFILL_1__1825_ gnd vdd FILL
XFILL_5__2618_ gnd vdd FILL
XFILL_8__3187_ gnd vdd FILL
XFILL_2__3581_ gnd vdd FILL
XFILL_2__3161_ gnd vdd FILL
XFILL_4__3087_ gnd vdd FILL
XFILL_6__1902_ gnd vdd FILL
X_2621_ RDY_bF$buf8 _968_ _348_ _350_ _3_ vdd 
+ gnd
+ OAI22X1
X_2201_ V _1336_ vdd gnd INVX1
XFILL_5__2791_ gnd vdd FILL
XFILL_5__2371_ gnd vdd FILL
XFILL_7__2389_ gnd vdd FILL
X_3406_ AI[5] _1679_ _1680_ vdd gnd NAND2X1
XFILL_1__2783_ gnd vdd FILL
XFILL_1__2363_ gnd vdd FILL
XFILL_3__2289_ gnd vdd FILL
XFILL_3__3230_ gnd vdd FILL
XFILL_5__3156_ gnd vdd FILL
XFILL_1__3148_ gnd vdd FILL
XFILL_4__1993_ gnd vdd FILL
XFILL_0__1893_ gnd vdd FILL
XFILL_6__2860_ gnd vdd FILL
XFILL_8__2878_ gnd vdd FILL
XFILL_8__2458_ gnd vdd FILL
XFILL_6__2440_ gnd vdd FILL
XFILL_8__2038_ gnd vdd FILL
XFILL_6__2020_ gnd vdd FILL
XFILL_2__2852_ gnd vdd FILL
XFILL_2__2432_ gnd vdd FILL
XFILL_2__2012_ gnd vdd FILL
XFILL_4__2778_ gnd vdd FILL
XFILL_4__2358_ gnd vdd FILL
XFILL_0__2678_ gnd vdd FILL
XFILL_0__2258_ gnd vdd FILL
XFILL_6__3225_ gnd vdd FILL
XFILL_2__3217_ gnd vdd FILL
XFILL_7__2601_ gnd vdd FILL
XFILL_3__2921_ gnd vdd FILL
XFILL_3__2501_ gnd vdd FILL
XFILL_5__2847_ gnd vdd FILL
XFILL_5__2427_ gnd vdd FILL
XFILL_5__2007_ gnd vdd FILL
XFILL_1__2839_ gnd vdd FILL
XFILL_1__2419_ gnd vdd FILL
XFILL_2__3390_ gnd vdd FILL
X_2850_ _548_ _549_ vdd gnd INVX1
XFILL_6__1711_ gnd vdd FILL
XFILL_8__1729_ gnd vdd FILL
X_2430_ _887__bF$buf3 _901_ _1034_ _181_ vdd gnd OAI21X1
X_2010_ IRHOLD_valid_bF$buf1 IRHOLD[2] _1146_ vdd gnd NAND2X1
XFILL_2__1703_ gnd vdd FILL
XFILL_5__2180_ gnd vdd FILL
XFILL_7__2198_ gnd vdd FILL
XFILL_0__1949_ gnd vdd FILL
XFILL_6__2916_ gnd vdd FILL
X_3215_ _831_ _259_ _839_ _108_ vdd gnd OAI21X1
XFILL_1__2592_ gnd vdd FILL
XFILL_1__2172_ gnd vdd FILL
XFILL_3__2098_ gnd vdd FILL
XFILL_2__2908_ gnd vdd FILL
XFILL_5__3385_ gnd vdd FILL
XFILL_1__3377_ gnd vdd FILL
XFILL_8__2687_ gnd vdd FILL
XFILL_8__2267_ gnd vdd FILL
XFILL_2__2661_ gnd vdd FILL
XFILL_2__2241_ gnd vdd FILL
XFILL_4__2587_ gnd vdd FILL
XFILL_4__2167_ gnd vdd FILL
X_1701_ RDY_bF$buf4 DIHOLD[4] _858_ vdd gnd OR2X2
XFILL_0__2487_ gnd vdd FILL
XFILL_6__3454_ gnd vdd FILL
XFILL_0__2067_ gnd vdd FILL
XFILL_6__3034_ gnd vdd FILL
XFILL_2__3446_ gnd vdd FILL
XFILL_2__3026_ gnd vdd FILL
XFILL_5__1871_ gnd vdd FILL
XFILL_7__1889_ gnd vdd FILL
X_2906_ _853__bF$buf1 _1002__bF$buf0 src_reg[0] _592_ vdd gnd OAI21X1
XFILL_1__1863_ gnd vdd FILL
XFILL_7__2830_ gnd vdd FILL
XFILL_7__2410_ gnd vdd FILL
XFILL_3__1789_ gnd vdd FILL
XFILL_3__2730_ gnd vdd FILL
XFILL_3__2310_ gnd vdd FILL
XFILL_5__2656_ gnd vdd FILL
XFILL_5__2236_ gnd vdd FILL
XFILL_1__2648_ gnd vdd FILL
XFILL_1__2228_ gnd vdd FILL
XFILL_3__3515_ gnd vdd FILL
XFILL_6__1940_ gnd vdd FILL
XFILL_8__1958_ gnd vdd FILL
XFILL_2__1932_ gnd vdd FILL
XFILL_4__1858_ gnd vdd FILL
XFILL_0__1758_ gnd vdd FILL
XFILL_6__2725_ gnd vdd FILL
XFILL_6__2305_ gnd vdd FILL
X_3444_ BI[1] AI[1] _1653_ _1530_ vdd gnd NAND3X1
X_3024_ _887__bF$buf1 _1035_ _981_ _688_ vdd gnd OAI21X1
XFILL_2__2717_ gnd vdd FILL
XFILL_5__3194_ gnd vdd FILL
XFILL_1__3186_ gnd vdd FILL
XFILL_5__1927_ gnd vdd FILL
XFILL_8__2496_ gnd vdd FILL
XFILL_8__2076_ gnd vdd FILL
XFILL_1__1919_ gnd vdd FILL
XFILL_2__2890_ gnd vdd FILL
XFILL_2__2470_ gnd vdd FILL
XFILL_2__2050_ gnd vdd FILL
XFILL_4__2396_ gnd vdd FILL
X_1930_ _AXYS[0]_[2] _1020_ _1072_ vdd gnd NAND2X1
XFILL_0__2296_ gnd vdd FILL
XFILL_7__1698_ gnd vdd FILL
X_2715_ _272_ _333_ _1076_ _436_ vdd gnd OAI21X1
XFILL_5__2885_ gnd vdd FILL
XFILL_5__2465_ gnd vdd FILL
XFILL_5__2045_ gnd vdd FILL
XFILL_1__2877_ gnd vdd FILL
XFILL_1__2457_ gnd vdd FILL
XFILL_1__2037_ gnd vdd FILL
XFILL_7__3424_ gnd vdd FILL
XFILL_7__3004_ gnd vdd FILL
XFILL_8__1767_ gnd vdd FILL
XFILL_2__1741_ gnd vdd FILL
XFILL_4_CLKBUF1_insert30 gnd vdd FILL
XFILL_4_CLKBUF1_insert31 gnd vdd FILL
XFILL_4_CLKBUF1_insert32 gnd vdd FILL
XFILL_4_CLKBUF1_insert33 gnd vdd FILL
XFILL_4_CLKBUF1_insert34 gnd vdd FILL
XFILL_4_CLKBUF1_insert35 gnd vdd FILL
XFILL182850x163950 gnd vdd FILL
XFILL_4_CLKBUF1_insert36 gnd vdd FILL
XFILL_4_CLKBUF1_insert37 gnd vdd FILL
XFILL_4_CLKBUF1_insert38 gnd vdd FILL
XFILL_0__1987_ gnd vdd FILL
XFILL_6__2954_ gnd vdd FILL
XFILL_6__2534_ gnd vdd FILL
XFILL_6__2114_ gnd vdd FILL
X_3253_ _16_ vdd _1__bF$buf0 clk_bF$buf7 PC[14] vdd 
+ gnd
+ DFFSR
XFILL_2__2946_ gnd vdd FILL
XFILL_2__2526_ gnd vdd FILL
XFILL_2__2106_ gnd vdd FILL
XFILL_7__1910_ gnd vdd FILL
XFILL_3__1810_ gnd vdd FILL
XFILL_5__1736_ gnd vdd FILL
XFILL_1__1728_ gnd vdd FILL
XFILL_6__3492_ gnd vdd FILL
XFILL_6__3072_ gnd vdd FILL
XFILL_0_BUFX2_insert50 gnd vdd FILL
XFILL_0_BUFX2_insert51 gnd vdd FILL
XFILL_2__3484_ gnd vdd FILL
XFILL_0_BUFX2_insert52 gnd vdd FILL
XFILL_2__3064_ gnd vdd FILL
XFILL_0_BUFX2_insert53 gnd vdd FILL
XFILL_0_BUFX2_insert54 gnd vdd FILL
XFILL_0_BUFX2_insert55 gnd vdd FILL
XFILL_0_BUFX2_insert56 gnd vdd FILL
XFILL_0_BUFX2_insert57 gnd vdd FILL
XFILL_0_BUFX2_insert58 gnd vdd FILL
XFILL_0_BUFX2_insert59 gnd vdd FILL
X_2944_ _969_ _620_ _622_ _54_ vdd gnd OAI21X1
XFILL_6__1805_ gnd vdd FILL
X_2524_ _261_ _266_ _1685_[8] vdd gnd OR2X2
X_2104_ _1239_ _1240_ vdd gnd INVX1
XFILL_5__2694_ gnd vdd FILL
XFILL_5__2274_ gnd vdd FILL
X_3309_ _63_ vdd _1__bF$buf3 clk_bF$buf5 D vdd 
+ gnd
+ DFFSR
XFILL_1__2686_ gnd vdd FILL
XFILL_1__2266_ gnd vdd FILL
XFILL_3__3553_ gnd vdd FILL
XFILL_3__3133_ gnd vdd FILL
XFILL_8__1996_ gnd vdd FILL
XFILL_5__3479_ gnd vdd FILL
XFILL_5__3059_ gnd vdd FILL
XFILL_2__1970_ gnd vdd FILL
XFILL_4__1896_ gnd vdd FILL
XFILL_0__1796_ gnd vdd FILL
XFILL_6__2763_ gnd vdd FILL
X_3482_ _1527_ _1529_ _1562_ _1567_ _1568_ vdd 
+ gnd
+ AOI22X1
XFILL_6__2343_ gnd vdd FILL
X_3062_ _693_ _721_ _722_ _72_ vdd gnd OAI21X1
XFILL_2__2755_ gnd vdd FILL
XFILL_2__2335_ gnd vdd FILL
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
X_2753_ _470_ _469_ _471_ vdd gnd XOR2X1
X_2333_ _1464_ _1463_ _1465_ vdd gnd OR2X2
XFILL_5__2083_ gnd vdd FILL
XFILL_6__2819_ gnd vdd FILL
X_3538_ _1609_ _1623_ _1649__bF$buf3 _1624_ vdd gnd AOI21X1
X_3118_ _721_ _757_ _762_ _88_ vdd gnd OAI21X1
XFILL_1__2495_ gnd vdd FILL
XFILL_7__3462_ gnd vdd FILL
XFILL_1__2075_ gnd vdd FILL
XFILL_7__3042_ gnd vdd FILL
XFILL_6__2992_ gnd vdd FILL
XFILL_6__2572_ gnd vdd FILL
XFILL_6__2152_ gnd vdd FILL
X_3291_ DIMUX[1] vdd _1__bF$buf0 clk_bF$buf2 DIHOLD[1] vdd 
+ gnd
+ DFFSR
XFILL_2__2984_ gnd vdd FILL
XFILL_2__2564_ gnd vdd FILL
XFILL_8__3531_ gnd vdd FILL
XFILL_2__2144_ gnd vdd FILL
XFILL_8__3111_ gnd vdd FILL
XFILL_4__3431_ gnd vdd FILL
XFILL_4__3011_ gnd vdd FILL
XFILL_5__1774_ gnd vdd FILL
X_2809_ _514_ _1129__bF$buf0 _513_ _510_ _27_ vdd 
+ gnd
+ OAI22X1
XFILL_1__1766_ gnd vdd FILL
XFILL_7__2733_ gnd vdd FILL
XFILL_7__2313_ gnd vdd FILL
XFILL_3__2633_ gnd vdd FILL
XFILL_3__2213_ gnd vdd FILL
XFILL_5__2979_ gnd vdd FILL
XFILL_5__2559_ gnd vdd FILL
XFILL_5__2139_ gnd vdd FILL
XFILL_5__3500_ gnd vdd FILL
XFILL_7__3518_ gnd vdd FILL
XFILL_3__3418_ gnd vdd FILL
X_2982_ sei _649_ _951_ _650_ _651_ vdd 
+ gnd
+ OAI22X1
XFILL_6__1843_ gnd vdd FILL
X_2562_ PC[14] _299_ vdd gnd INVX1
X_2142_ _882__bF$buf1 _1032_ RDY_bF$buf0 _1278_ vdd gnd OAI21X1
XFILL_2__1835_ gnd vdd FILL
XFILL_8__2802_ gnd vdd FILL
XFILL_4__2702_ gnd vdd FILL
XFILL_6__2628_ gnd vdd FILL
X_3347_ _100_ vdd _1__bF$buf1 clk_bF$buf3 _AXYS[3]_[7] vdd 
+ gnd
+ DFFSR
XFILL_6__2208_ gnd vdd FILL
XFILL_0__2602_ gnd vdd FILL
XFILL_3__3591_ gnd vdd FILL
XFILL_3__3171_ gnd vdd FILL
XFILL_5__3097_ gnd vdd FILL
XFILL_1__3089_ gnd vdd FILL
XFILL_3__1904_ gnd vdd FILL
XFILL_8__2399_ gnd vdd FILL
XFILL_6__2381_ gnd vdd FILL
XFILL_2__2793_ gnd vdd FILL
XFILL_2__2373_ gnd vdd FILL
XFILL_4__2299_ gnd vdd FILL
X_1833_ _926__bF$buf2 _897_ _977_ vdd gnd NAND2X1
XFILL_0__2199_ gnd vdd FILL
XFILL_6__3586_ gnd vdd FILL
XFILL_6__3166_ gnd vdd FILL
XFILL_0__3560_ gnd vdd FILL
XFILL_0__3140_ gnd vdd FILL
XFILL_2__3158_ gnd vdd FILL
XFILL184650x136650 gnd vdd FILL
X_2618_ _347_ _340_ _348_ vdd gnd NOR2X1
XFILL_1__1995_ gnd vdd FILL
XFILL_7__2962_ gnd vdd FILL
XFILL_7__2542_ gnd vdd FILL
XFILL_7__2122_ gnd vdd FILL
XFILL_3__2862_ gnd vdd FILL
XFILL_3__2442_ gnd vdd FILL
XFILL_3__2022_ gnd vdd FILL
XFILL_5__2788_ gnd vdd FILL
XFILL_5__2368_ gnd vdd FILL
XBUFX2_insert60 _1129_ _1129__bF$buf4 vdd gnd BUFX2
XBUFX2_insert61 _1129_ _1129__bF$buf3 vdd gnd BUFX2
XBUFX2_insert62 _1129_ _1129__bF$buf2 vdd gnd BUFX2
XBUFX2_insert63 _1129_ _1129__bF$buf1 vdd gnd BUFX2
XBUFX2_insert64 _1129_ _1129__bF$buf0 vdd gnd BUFX2
XBUFX2_insert65 _830_ _830__bF$buf3 vdd gnd BUFX2
XBUFX2_insert66 _830_ _830__bF$buf2 vdd gnd BUFX2
XBUFX2_insert67 _830_ _830__bF$buf1 vdd gnd BUFX2
XBUFX2_insert68 _830_ _830__bF$buf0 vdd gnd BUFX2
XBUFX2_insert69 _918_ _918__bF$buf3 vdd gnd BUFX2
XFILL_3__3227_ gnd vdd FILL
X_2791_ plp _502_ vdd gnd INVX1
X_2371_ op[3] _132_ vdd gnd INVX1
XFILL_8__2611_ gnd vdd FILL
XFILL_4__2931_ gnd vdd FILL
XFILL_4__2511_ gnd vdd FILL
XFILL_6__2857_ gnd vdd FILL
X_3576_ _1494_ vdd _1484_ clk_bF$buf4 ADD[6] vdd 
+ gnd
+ DFFSR
XFILL_6__2437_ gnd vdd FILL
XFILL_6__2017_ gnd vdd FILL
X_3156_ _917_ _936_ _1184_ _788_ vdd gnd OAI21X1
XFILL_7__3080_ gnd vdd FILL
XFILL_2__2849_ gnd vdd FILL
XFILL_0__2831_ gnd vdd FILL
XFILL_2__2429_ gnd vdd FILL
XFILL_0__2411_ gnd vdd FILL
XFILL_2__2009_ gnd vdd FILL
XFILL_7__1813_ gnd vdd FILL
XFILL_3__1713_ gnd vdd FILL
XFILL_6__2190_ gnd vdd FILL
XFILL_2__2182_ gnd vdd FILL
XFILL_3__2918_ gnd vdd FILL
XFILL_6__3395_ gnd vdd FILL
XFILL_2__3387_ gnd vdd FILL
X_2847_ _1297_ _1178_ _546_ vdd gnd NAND2X1
XFILL_6__1708_ gnd vdd FILL
X_2427_ AN _139_ _178_ _179_ vdd gnd AOI21X1
X_2007_ I _1143_ vdd gnd INVX1
XFILL_7__2771_ gnd vdd FILL
XFILL_7__2351_ gnd vdd FILL
XFILL_3__2671_ gnd vdd FILL
XFILL_3__2251_ gnd vdd FILL
XFILL_5__2597_ gnd vdd FILL
XFILL_5__2177_ gnd vdd FILL
XFILL_1__2589_ gnd vdd FILL
XFILL_1__2169_ gnd vdd FILL
XFILL_7__3556_ gnd vdd FILL
XFILL_7__3136_ gnd vdd FILL
XFILL_1__3530_ gnd vdd FILL
XFILL_1__3110_ gnd vdd FILL
XFILL_3__3456_ gnd vdd FILL
XFILL_3__3036_ gnd vdd FILL
XFILL_6__1881_ gnd vdd FILL
XFILL_8__1899_ gnd vdd FILL
X_2180_ _1171_ _1314_ _1315_ vdd gnd NAND2X1
XFILL_2__1873_ gnd vdd FILL
XFILL_8__2840_ gnd vdd FILL
XFILL_8__2420_ gnd vdd FILL
XFILL_8__2000_ gnd vdd FILL
XFILL_4__1799_ gnd vdd FILL
XFILL_4__2740_ gnd vdd FILL
XFILL_4__2320_ gnd vdd FILL
XFILL_0__1699_ gnd vdd FILL
XFILL_6__2666_ gnd vdd FILL
X_3385_ alu_op[3] _1660_ vdd gnd INVX4
XFILL_6__2246_ gnd vdd FILL
XFILL_2__2658_ gnd vdd FILL
XFILL_0__2640_ gnd vdd FILL
XFILL_2__2238_ gnd vdd FILL
XFILL_0__2220_ gnd vdd FILL
XFILL_8__3205_ gnd vdd FILL
XFILL_4__3525_ gnd vdd FILL
XFILL_4__3105_ gnd vdd FILL
XFILL_3__1942_ gnd vdd FILL
XFILL_0__3425_ gnd vdd FILL
XFILL_0__3005_ gnd vdd FILL
XFILL_5__1868_ gnd vdd FILL
XFILL_7__2827_ gnd vdd FILL
XFILL_7__2407_ gnd vdd FILL
XFILL_1__2801_ gnd vdd FILL
XFILL_3__2727_ gnd vdd FILL
XFILL_3__2307_ gnd vdd FILL
X_1871_ _1003_ _1015_ vdd gnd INVX1
XFILL_2__3196_ gnd vdd FILL
XFILL_6__1937_ gnd vdd FILL
X_2656_ _380_ _372_ _381_ _377_ _382_ vdd 
+ gnd
+ AOI22X1
X_2236_ _988_ _887__bF$buf4 _853__bF$buf0 _1370_ vdd gnd OAI21X1
XFILL_7__2580_ gnd vdd FILL
XFILL_7__2160_ gnd vdd FILL
XFILL_2__1929_ gnd vdd FILL
XFILL_0__1911_ gnd vdd FILL
XFILL_3__2480_ gnd vdd FILL
XFILL_3__2060_ gnd vdd FILL
XFILL_1__2398_ gnd vdd FILL
XFILL_7__3365_ gnd vdd FILL
XFILL_6__1690_ gnd vdd FILL
XFILL_6__2895_ gnd vdd FILL
XFILL_6__2475_ gnd vdd FILL
XFILL_6__2055_ gnd vdd FILL
X_3194_ _937_ _821_ _822_ _826_ vdd gnd OAI21X1
XFILL_2__2887_ gnd vdd FILL
XFILL_2__2467_ gnd vdd FILL
XFILL_8__3434_ gnd vdd FILL
XFILL_2__2047_ gnd vdd FILL
XFILL_8__3014_ gnd vdd FILL
X_1927_ _1047_ _1064_ _1069_ AI[1] vdd gnd OAI21X1
XFILL_7__1851_ gnd vdd FILL
XFILL_3__1751_ gnd vdd FILL
XFILL_7__2636_ gnd vdd FILL
XFILL_7__2216_ gnd vdd FILL
XFILL_1__2610_ gnd vdd FILL
XFILL_3__2956_ gnd vdd FILL
XFILL_3__2536_ gnd vdd FILL
XFILL_3__2116_ gnd vdd FILL
XFILL_8__1920_ gnd vdd FILL
XFILL_5__3403_ gnd vdd FILL
XFILL_4__1820_ gnd vdd FILL
X_2885_ _541_ _1219__bF$buf2 _574_ vdd gnd OR2X2
XFILL_6__1746_ gnd vdd FILL
X_2465_ DIMUX[1] _204_ _202_ ABL[1] _215_ vdd 
+ gnd
+ AOI22X1
X_2045_ _1129__bF$buf2 _1168_ _1180_ _1181_ vdd gnd NAND3X1
XFILL_2__1738_ gnd vdd FILL
XFILL_0__1720_ gnd vdd FILL
XFILL_8__2705_ gnd vdd FILL
XFILL_4__2605_ gnd vdd FILL
XFILL_7__3594_ gnd vdd FILL
XFILL_7__3174_ gnd vdd FILL
XFILL_0__2925_ gnd vdd FILL
XFILL_0__2505_ gnd vdd FILL
XFILL_3__3494_ gnd vdd FILL
XFILL_3__3074_ gnd vdd FILL
XFILL_7__1907_ gnd vdd FILL
XFILL_3__1807_ gnd vdd FILL
XFILL_6__2284_ gnd vdd FILL
XFILL_2__2696_ gnd vdd FILL
XFILL_2__2276_ gnd vdd FILL
X_1736_ state[1] _888_ _889_ vdd gnd NAND2X1
XFILL_4__3563_ gnd vdd FILL
XFILL_4__3143_ gnd vdd FILL
XFILL_6__3489_ gnd vdd FILL
XFILL_6__3069_ gnd vdd FILL
XFILL_3__1980_ gnd vdd FILL
XFILL_0__3463_ gnd vdd FILL
XFILL_0__3043_ gnd vdd FILL
XFILL_1__1898_ gnd vdd FILL
XFILL_7__2865_ gnd vdd FILL
XFILL_7__2445_ gnd vdd FILL
XFILL_7__2025_ gnd vdd FILL
XFILL_3__2765_ gnd vdd FILL
XFILL_3__2345_ gnd vdd FILL
XFILL_5__3212_ gnd vdd FILL
XFILL_1__3204_ gnd vdd FILL
XFILL_6__1975_ gnd vdd FILL
X_2694_ _410_ _367_ _417_ vdd gnd NOR2X1
X_2274_ _853__bF$buf7 _951_ _1385_ _1129__bF$buf4 _1408_ vdd 
+ gnd
+ AOI22X1
XFILL_2__1967_ gnd vdd FILL
XFILL_8__2934_ gnd vdd FILL
XFILL_8__2514_ gnd vdd FILL
XFILL_4__2834_ gnd vdd FILL
XFILL_4__2414_ gnd vdd FILL
X_3479_ _1564_ _1565_ vdd gnd INVX1
X_3059_ _718_ _717_ _981_ _720_ vdd gnd OAI21X1
XFILL_0__2734_ gnd vdd FILL
XFILL_0__2314_ gnd vdd FILL
XFILL_7__1716_ gnd vdd FILL
XFILL_0__3519_ gnd vdd FILL
XFILL_6__2093_ gnd vdd FILL
XFILL_5__2903_ gnd vdd FILL
XFILL_8__3472_ gnd vdd FILL
XFILL_2__2085_ gnd vdd FILL
XFILL_8__3052_ gnd vdd FILL
X_1965_ _AXYS[1]_[6] _1022_ _1103_ vdd gnd NAND2X1
XFILL_4__3372_ gnd vdd FILL
XFILL_7__2674_ gnd vdd FILL
XFILL_7__2254_ gnd vdd FILL
XFILL_3__2994_ gnd vdd FILL
XFILL_3__2574_ gnd vdd FILL
XFILL_3__2154_ gnd vdd FILL
XFILL_7__3459_ gnd vdd FILL
XFILL_5__3441_ gnd vdd FILL
XFILL_7__3039_ gnd vdd FILL
XFILL_5__3021_ gnd vdd FILL
XFILL_1__3433_ gnd vdd FILL
XFILL_1__3013_ gnd vdd FILL
XFILL_6__1784_ gnd vdd FILL
X_2083_ _1129__bF$buf3 _1219_ vdd gnd INVX8
XFILL_5_BUFX2_insert70 gnd vdd FILL
XFILL_5_BUFX2_insert71 gnd vdd FILL
XFILL_5_BUFX2_insert72 gnd vdd FILL
XFILL_5_BUFX2_insert73 gnd vdd FILL
XFILL_5_BUFX2_insert74 gnd vdd FILL
XFILL_2__1776_ gnd vdd FILL
XFILL_5_BUFX2_insert75 gnd vdd FILL
XFILL_5_BUFX2_insert76 gnd vdd FILL
XFILL_8__2743_ gnd vdd FILL
XFILL_8__2323_ gnd vdd FILL
XFILL_5_BUFX2_insert77 gnd vdd FILL
XFILL_5_BUFX2_insert78 gnd vdd FILL
XFILL_5_BUFX2_insert79 gnd vdd FILL
XFILL_4__2643_ gnd vdd FILL
XFILL_4__2223_ gnd vdd FILL
XFILL_6__2989_ gnd vdd FILL
XFILL_6__2569_ gnd vdd FILL
X_3288_ _50_ vdd _1__bF$buf7 clk_bF$buf1 dst_reg[1] vdd 
+ gnd
+ DFFSR
XFILL_6__2149_ gnd vdd FILL
XFILL_0__2963_ gnd vdd FILL
XFILL_0__2543_ gnd vdd FILL
XFILL_8__3528_ gnd vdd FILL
XFILL_6__3510_ gnd vdd FILL
XFILL_0__2123_ gnd vdd FILL
XFILL_8__3108_ gnd vdd FILL
XFILL_2__3502_ gnd vdd FILL
XFILL_7__1945_ gnd vdd FILL
XFILL_4__3428_ gnd vdd FILL
XFILL_4__3008_ gnd vdd FILL
XFILL_3__1845_ gnd vdd FILL
XFILL_5__2712_ gnd vdd FILL
XFILL_1__2704_ gnd vdd FILL
X_1774_ _889_ _874_ _927_ vdd gnd NOR2X1
XFILL_4__3181_ gnd vdd FILL
XFILL_0__3081_ gnd vdd FILL
XFILL_2__3099_ gnd vdd FILL
XFILL_4__1914_ gnd vdd FILL
X_2979_ _644_ _648_ _645_ _63_ vdd gnd OAI21X1
X_2559_ _292_ _268_ _296_ _297_ vdd gnd OAI21X1
X_2139_ _882__bF$buf1 _989_ RDY_bF$buf0 _1275_ vdd gnd OAI21X1
XFILL_7__2483_ gnd vdd FILL
XFILL_7__2063_ gnd vdd FILL
XFILL_0__1814_ gnd vdd FILL
X_3500_ _1518_ _1568_ _1515_ _1586_ vdd gnd OAI21X1
XFILL_3__2383_ gnd vdd FILL
XFILL_3__3588_ gnd vdd FILL
XFILL_3__3168_ gnd vdd FILL
XFILL_8__2972_ gnd vdd FILL
XFILL_8__2552_ gnd vdd FILL
XFILL_8__2132_ gnd vdd FILL
XFILL_4__2872_ gnd vdd FILL
XFILL_4__2452_ gnd vdd FILL
XFILL_4__2032_ gnd vdd FILL
XFILL_6__2798_ gnd vdd FILL
XFILL_6__2378_ gnd vdd FILL
X_3097_ _691__bF$buf1 _748_ _AXYS[1]_[2] _751_ vdd gnd OAI21X1
XFILL_0__2772_ gnd vdd FILL
XFILL_0__2352_ gnd vdd FILL
XFILL_7__1754_ gnd vdd FILL
XFILL_0__3557_ gnd vdd FILL
XFILL_0__3137_ gnd vdd FILL
XFILL_5__2941_ gnd vdd FILL
XFILL_7__2959_ gnd vdd FILL
XFILL_5__2521_ gnd vdd FILL
XFILL_7__2539_ gnd vdd FILL
XFILL_7__2119_ gnd vdd FILL
XFILL_5__2101_ gnd vdd FILL
XFILL_8__3090_ gnd vdd FILL
XFILL_1__2933_ gnd vdd FILL
XFILL_1__2513_ gnd vdd FILL
XFILL_3__2859_ gnd vdd FILL
XFILL_3__2439_ gnd vdd FILL
XFILL_3__2019_ gnd vdd FILL
XFILL_8__1823_ gnd vdd FILL
XFILL_4__1723_ gnd vdd FILL
X_2788_ _853__bF$buf7 _1303_ _500_ _20_ vdd gnd OAI21X1
X_2368_ _949_ _129_ _128_ _130_ vdd gnd NAND3X1
XFILL_7__2292_ gnd vdd FILL
XFILL_8__2608_ gnd vdd FILL
XFILL_3__2192_ gnd vdd FILL
XFILL_4__2928_ gnd vdd FILL
XFILL_4__2508_ gnd vdd FILL
XFILL_7__3497_ gnd vdd FILL
XFILL_7__3077_ gnd vdd FILL
XFILL_0__2828_ gnd vdd FILL
XFILL_0__2408_ gnd vdd FILL
XFILL_1__3471_ gnd vdd FILL
XFILL_1__3051_ gnd vdd FILL
XFILL_3__3397_ gnd vdd FILL
XFILL_8__2781_ gnd vdd FILL
XFILL_8__2361_ gnd vdd FILL
XFILL_4__2681_ gnd vdd FILL
XFILL_4__2261_ gnd vdd FILL
XFILL_6__2187_ gnd vdd FILL
XFILL_0__2581_ gnd vdd FILL
XFILL_2__2599_ gnd vdd FILL
XFILL_0__2161_ gnd vdd FILL
XFILL_2__2179_ gnd vdd FILL
XFILL_8__3566_ gnd vdd FILL
XFILL_8__3146_ gnd vdd FILL
XFILL_2__3540_ gnd vdd FILL
XFILL_2__3120_ gnd vdd FILL
XFILL_7__1983_ gnd vdd FILL
XFILL_4__3466_ gnd vdd FILL
XFILL_4__3046_ gnd vdd FILL
XFILL_3__1883_ gnd vdd FILL
XFILL_0__3366_ gnd vdd FILL
XFILL_5__2750_ gnd vdd FILL
XFILL_7__2768_ gnd vdd FILL
XFILL_5__2330_ gnd vdd FILL
XFILL_7__2348_ gnd vdd FILL
XFILL_1__2742_ gnd vdd FILL
XFILL_1__2322_ gnd vdd FILL
XFILL_3__2668_ gnd vdd FILL
XFILL_3__2248_ gnd vdd FILL
XFILL_5__3535_ gnd vdd FILL
XFILL_5__3115_ gnd vdd FILL
XFILL_1__3527_ gnd vdd FILL
XFILL_1__3107_ gnd vdd FILL
XFILL_4__1952_ gnd vdd FILL
XFILL_6__1878_ gnd vdd FILL
X_2597_ _931_ _1133_ _328_ vdd gnd NOR2X1
X_2177_ _1309_ _1311_ _1312_ vdd gnd NAND2X1
XFILL_0__1852_ gnd vdd FILL
XFILL_8__2837_ gnd vdd FILL
XFILL_8__2417_ gnd vdd FILL
XFILL_9_BUFX2_insert24 gnd vdd FILL
XFILL_2__2811_ gnd vdd FILL
XFILL_4__2737_ gnd vdd FILL
XFILL_4__2317_ gnd vdd FILL
XFILL_0__2637_ gnd vdd FILL
XFILL_0__2217_ gnd vdd FILL
XFILL_8__2590_ gnd vdd FILL
XFILL_8__2170_ gnd vdd FILL
XFILL_3__1939_ gnd vdd FILL
XFILL_4__2490_ gnd vdd FILL
XFILL_4__2070_ gnd vdd FILL
XFILL_5__2806_ gnd vdd FILL
XFILL_0__2390_ gnd vdd FILL
XFILL_8__3375_ gnd vdd FILL
XFILL184650x124950 gnd vdd FILL
X_1868_ _1004_ _1011_ _1012_ vdd gnd NOR2X1
XFILL_7__1792_ gnd vdd FILL
XFILL_0__3595_ gnd vdd FILL
XFILL_3__1692_ gnd vdd FILL
XFILL_0__3175_ gnd vdd FILL
XFILL_7__2997_ gnd vdd FILL
XFILL_7__2577_ gnd vdd FILL
XFILL_7__2157_ gnd vdd FILL
XFILL_0__1908_ gnd vdd FILL
XFILL_1__2971_ gnd vdd FILL
XFILL_1__2551_ gnd vdd FILL
XFILL_1__2131_ gnd vdd FILL
XFILL_3__2897_ gnd vdd FILL
XFILL_3__2477_ gnd vdd FILL
XFILL_3__2057_ gnd vdd FILL
XFILL_8__1861_ gnd vdd FILL
XFILL_4__1761_ gnd vdd FILL

.ends
.end
