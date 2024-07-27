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
x1=2.8149244e-08
x2=3.9893295e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout"
color="5 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 530 -110 1330 290 {flags=graph
y1=-0.00017
y2=-5e-12
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.8149244e-08
x2=3.9893295e-08
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
C {vdd.sym} 290 -360 0 0 {name=l1 lab=VDD}
C {gnd.sym} 290 -240 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 170 -300 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {vsource.sym} 100 -370 0 0 {name=Vdd value=5 savecurrent=false}
C {vdd.sym} 100 -400 0 0 {name=l3 lab=VDD}
C {gnd.sym} 100 -340 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} 50 -150 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.include ~/ETRI050_DesignKit/devel/tech/05cmos_model_240201.lib
.dc vin 0 5 0.01
.tran 0.01 70n
.save all
"}
C {res.sym} 460 -330 0 0 {name=R1
value=1mega
footprint=1206
device=resistor
m=1}
C {vdd.sym} 460 -360 0 0 {name=l6 lab=VDD}
C {lab_wire.sym} 430 -300 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {lab_wire.sym} 100 -280 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {gnd.sym} 100 -220 0 0 {name=l5 lab=GND}
C {vsource.sym} 100 -250 0 0 {name=Vin value="pulse(0 5 0 1n 1n 5n 12n)" savecurrent=false}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-2_Inverter_Magic/inverter_x1.sym} -260 -200 0 0 {name=x1}
