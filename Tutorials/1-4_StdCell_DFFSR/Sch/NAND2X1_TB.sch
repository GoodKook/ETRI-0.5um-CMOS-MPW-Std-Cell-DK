v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 800 -850 1600 -450 {flags=graph
y1=-0.14
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.4238175e-08
x2=2.7345375e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=b
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
B 2 800 0 1600 400 {flags=graph
y1=-0.00084
y2=0.00022
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.4238175e-08
x2=2.7345375e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vdd)
color=9
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 800 -420 1600 -20 {flags=graph
y1=-0.08
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.4238175e-08
x2=2.7345375e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=y
color=5
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
B 2 800 -1260 1600 -860 {flags=graph
y1=-0.14
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.4238175e-08
x2=2.7345375e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=a
color=6
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
T {NAND2X1 Testbench} 240 -740 0 0 0.4 0.4 {}
N 290 -640 320 -640 {
lab=A}
N 440 -620 470 -620 {
lab=Y}
N 130 -540 130 -520 {
lab=A}
N 470 -620 540 -620 {
lab=Y}
N 290 -600 320 -600 {
lab=B}
N 130 -400 130 -380 {
lab=B}
C {lab_pin.sym} 290 -640 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 540 -620 0 1 {name=p5 sig_type=std_logic lab=Y}
C {vsource.sym} 130 -610 0 0 {name=Vdd value=5 savecurrent=false}
C {vdd.sym} 130 -640 0 0 {name=l1 lab=VDD}
C {gnd.sym} 130 -580 0 0 {name=l2 lab=GND}
C {vsource.sym} 130 -490 0 0 {name=VAin value="pwl(0 0 5n 0 6n 5 15n 5 16n 0 20n 0 21n 5 25n 5 26n 0 30n 0 31n 5 40n 5 41n 0)" savecurrent=false}
C {lab_pin.sym} 130 -540 0 1 {name=p9 sig_type=std_logic lab=A}
C {gnd.sym} 130 -460 0 0 {name=l6 lab=GND}
C {res.sym} 510 -650 0 0 {name=R1
value=1Mega
footprint=1206
device=resistor
m=1}
C {vdd.sym} 510 -680 0 0 {name=l7 lab=VDD}
C {simulator_commands_shown.sym} 110 -210 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include ~/ETRI050_DesignKit/tech/05cmos_model_240201.lib
.tran 0.01 50n
*.dc VAin 0 5 0.01
.save all
"}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/NAND2X1.sym} 310 -550 0 0 {name=x1}
C {lab_pin.sym} 290 -600 0 0 {name=p2 sig_type=std_logic lab=B}
C {vsource.sym} 130 -350 0 0 {name=VBin value="pwl(0 0 5n 0 6n 5 15n 5 16n 0 20n 0 21n 5 35n 5 36n 0)" savecurrent=false}
C {lab_pin.sym} 130 -400 0 1 {name=p3 sig_type=std_logic lab=B}
C {gnd.sym} 130 -320 0 0 {name=l3 lab=GND}
C {vdd.sym} 360 -680 0 0 {name=l4 lab=VDD}
C {gnd.sym} 360 -570 0 0 {name=l5 lab=GND}
