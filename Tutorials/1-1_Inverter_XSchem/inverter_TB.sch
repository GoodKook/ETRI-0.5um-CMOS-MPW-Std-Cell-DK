v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 530 -540 1330 -140 {flags=graph
y1=0
y2=5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 530 -100 1330 300 {flags=graph
y1=-0.00017
y2=-5e-12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vdd)
color=5
dataset=-1
unitx=1
logx=0
logy=0
}
N 170 -300 200 -300 {
lab=Vin}
N 380 -300 460 -300 {
lab=Vout}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-1_Inverter_XSchem/inverter.sym} 60 -140 0 0 {name=X1}
C {vdd.sym} 290 -360 0 0 {name=l1 lab=VDD}
C {gnd.sym} 290 -240 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 170 -300 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {vsource.sym} 70 -370 0 0 {name=Vdd value=5 savecurrent=false}
C {vdd.sym} 70 -400 0 0 {name=l3 lab=VDD}
C {gnd.sym} 70 -340 0 0 {name=l4 lab=GND}
C {vsource.sym} 70 -270 0 0 {name=Vin value=0 savecurrent=false}
C {gnd.sym} 70 -240 0 0 {name=l5 lab=GND}
C {lab_wire.sym} 70 -300 0 1 {name=p3 sig_type=std_logic lab=Vin}
C {simulator_commands_shown.sym} 10 -150 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.include ~/ETRI050_DesignKit/devel/tech/05cmos_model_240201.lib
.dc vin 0 5 0.01
.save all
"}
C {res.sym} 460 -330 0 0 {name=R1
value=1mega
footprint=1206
device=resistor
m=1}
C {vdd.sym} 460 -360 0 0 {name=l6 lab=VDD}
C {lab_wire.sym} 430 -300 0 0 {name=p2 sig_type=std_logic lab=Vout}
