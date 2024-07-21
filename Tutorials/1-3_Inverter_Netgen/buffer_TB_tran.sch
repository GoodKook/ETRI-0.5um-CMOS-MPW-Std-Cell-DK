v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1240 -670 2040 -270 {flags=graph
y1=-0.14
y2=5.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.4434523e-08
x2=2.2823131e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout
vout_layout"
color="5 4 6"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1240 -230 2040 170 {flags=graph
y1=-0.00054
y2=2.4e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.4434523e-08
x2=2.2823131e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vdd_x1)
i(vdd)"
color="6 4"
dataset=-1
unitx=1
logx=0
logy=0
}
N 170 -300 200 -300 {
lab=Vin}
N 380 -300 460 -300 {
lab=Vout}
N 380 -100 460 -100 {
lab=Vout_Layout}
N 180 -100 200 -100 {
lab=Vin}
N 180 -300 180 -100 {
lab=Vin}
N 290 -360 460 -360 {
lab=VDD}
N 290 -160 460 -160 {
lab=VDD_X1}
C {gnd.sym} 290 -240 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 170 -300 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {vsource.sym} 40 -330 0 0 {name=Vdd value=5 savecurrent=false}
C {gnd.sym} 40 -300 0 0 {name=l4 lab=GND}
C {simulator_commands_shown.sym} 20 -590 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.include ~/ETRI050_DesignKit/devel/tech/05cmos_model_240201.lib
*.dc vin 0 5 0.01
.tran 0.01n 50n
.save all
"}
C {res.sym} 460 -330 0 0 {name=R1
value=1mega
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 430 -300 0 0 {name=p2 sig_type=std_logic lab=Vout}
C {gnd.sym} 290 -40 0 0 {name=l8 lab=GND}
C {res.sym} 460 -130 0 0 {name=R2
value=1mega
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 430 -100 0 0 {name=p4 sig_type=std_logic lab=Vout_Layout}
C {lab_wire.sym} 40 -240 0 1 {name=p3 sig_type=std_logic lab=Vin}
C {gnd.sym} 40 -180 0 0 {name=l5 lab=GND}
C {vsource.sym} 40 -210 0 0 {name=Vin value="pulse(0 5 0 1n 1n 5n 15n)" savecurrent=false}
C {vsource.sym} 40 -80 0 0 {name=Vdd_X1 value=5 savecurrent=false}
C {gnd.sym} 40 -50 0 0 {name=l11 lab=GND}
C {lab_wire.sym} 400 -360 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 40 -360 0 1 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 400 -160 0 0 {name=p7 sig_type=std_logic lab=VDD_X1}
C {lab_wire.sym} 40 -110 0 1 {name=p8 sig_type=std_logic lab=VDD_X1}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-3_Inverter_Netgen/buffer_x1.sym} -260 0 0 0 {name=x9}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-3_Inverter_Netgen/buffer.sym} 60 -140 0 0 {name=X10}
