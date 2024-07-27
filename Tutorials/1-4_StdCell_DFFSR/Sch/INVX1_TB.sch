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
x1=1.6897666e-08
x2=2.6292907e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
y"
color="5 4"
dataset=-1
unitx=1
logx=0
logy=0
sim_type=tran}
B 2 800 -430 1600 -30 {flags=graph
y1=-0.00049
y2=0.00013
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.6897666e-08
x2=2.6292907e-08
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
T {INVX1 Testbench} 320 -760 0 0 0.4 0.4 {}
N 280 -620 310 -620 {
lab=A}
N 420 -620 450 -620 {
lab=Y}
N 130 -540 130 -520 {
lab=A}
N 450 -620 520 -620 {
lab=Y}
C {lab_pin.sym} 280 -620 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} 520 -620 0 1 {name=p5 sig_type=std_logic lab=Y}
C {vsource.sym} 130 -610 0 0 {name=Vdd value=5 savecurrent=false}
C {vdd.sym} 130 -640 0 0 {name=l1 lab=VDD}
C {gnd.sym} 130 -580 0 0 {name=l2 lab=GND}
C {vsource.sym} 130 -490 0 0 {name=VAin value="pulse(0 5 0 1n 1n 5n 12n)" savecurrent=false}
C {lab_pin.sym} 130 -540 0 1 {name=p9 sig_type=std_logic lab=A}
C {gnd.sym} 130 -460 0 0 {name=l6 lab=GND}
C {res.sym} 490 -650 0 0 {name=R1
value=1Mega
footprint=1206
device=resistor
m=1}
C {vdd.sym} 490 -680 0 0 {name=l7 lab=VDD}
C {simulator_commands_shown.sym} 210 -380 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include ~/ETRI050_DesignKit/tech/05cmos_model_240201.lib
.tran 0.01 70n
.dc VAin 0 5 0.01
.save all
"}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/INVX1.sym} 310 -570 0 0 {name=x1}
C {vdd.sym} 350 -660 0 0 {name=l3 lab=VDD}
C {gnd.sym} 350 -580 0 0 {name=l4 lab=GND}
