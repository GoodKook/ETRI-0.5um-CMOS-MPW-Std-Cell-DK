v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 920 -870 1720 -470 {flags=graph
y1=0
y2=5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.2472368e-08
x2=9.179397e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=clk
color=5
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1780 -880 2580 -480 {flags=graph
y1=0
y2=5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.2472368e-08
x2=9.179397e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="6 8"
node="r
s"}
B 2 920 -470 1720 -70 {flags=graph
y1=-0.084
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.2472368e-08
x2=9.179397e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=d
color=21
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1780 -440 2580 -40 {flags=graph
y1=-0.0024
y2=0.00034
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.2472368e-08
x2=9.179397e-08
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
B 2 920 -70 1720 330 {flags=graph
y1=-0.082
y2=5.1
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5.2472368e-08
x2=9.179397e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=q
color=6
dataset=-1
unitx=1
logx=0
logy=0
}
T {DFFSR74 Testbench} 280 -760 0 0 0.4 0.4 {}
N 270 -620 300 -620 {
lab=D}
N 270 -530 300 -530 {
lab=CLK}
N 270 -590 300 -590 {
lab=R}
N 270 -560 300 -560 {
lab=S}
N 420 -620 450 -620 {
lab=Q}
N 650 -420 650 -400 {
lab=D}
N 170 -420 170 -400 {
lab=R}
N 410 -420 410 -400 {
lab=S}
N 130 -540 130 -520 {
lab=CLK}
N 450 -620 520 -620 {
lab=Q}
C {lab_pin.sym} 270 -560 0 0 {name=p1 sig_type=std_logic lab=S}
C {lab_pin.sym} 270 -620 0 0 {name=p2 sig_type=std_logic lab=D}
C {lab_pin.sym} 270 -530 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 270 -590 0 0 {name=p4 sig_type=std_logic lab=R}
C {lab_pin.sym} 520 -620 0 1 {name=p5 sig_type=std_logic lab=Q}
C {vsource.sym} 130 -610 0 0 {name=Vdd value=5 savecurrent=false}
C {vdd.sym} 130 -640 0 0 {name=l1 lab=VDD}
C {gnd.sym} 130 -580 0 0 {name=l2 lab=GND}
C {vsource.sym} 490 -470 0 0 {name=VDin value="pwl(0 5 21n 5 22n 0 60n 0 61n 5 72n 5 73n 0 84n 0 85n 5)" savecurrent=false}
C {lab_pin.sym} 650 -420 0 1 {name=p6 sig_type=std_logic lab=D}
C {gnd.sym} 650 -340 0 0 {name=l3 lab=GND}
C {vsource.sym} 170 -370 0 0 {name=VRin value="pwl(0 5 9n 5 10n 0 19n 0 20n 5)" savecurrent=false}
C {lab_pin.sym} 170 -420 0 1 {name=p7 sig_type=std_logic lab=R}
C {gnd.sym} 170 -340 0 0 {name=l4 lab=GND}
C {vsource.sym} 410 -370 0 0 {name=VSin value="pwl(0 5 27n 5 28n 0 33n 0 34n 5)" savecurrent=false}
C {lab_pin.sym} 410 -420 0 1 {name=p8 sig_type=std_logic lab=S}
C {gnd.sym} 410 -340 0 0 {name=l5 lab=GND}
C {vsource.sym} 130 -490 0 0 {name=VCLK value="pulse(0 5 0 1n 1n 5n 12n)" savecurrent=false}
C {lab_pin.sym} 130 -540 0 1 {name=p9 sig_type=std_logic lab=CLK}
C {gnd.sym} 130 -460 0 0 {name=l6 lab=GND}
C {res.sym} 490 -650 0 0 {name=R1
value=1Mega
footprint=1206
device=resistor
m=1}
C {vdd.sym} 490 -680 0 0 {name=l7 lab=VDD}
C {simulator_commands_shown.sym} 200 -240 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include ~/ETRI050_DesignKit/tech/05cmos_model_240201.lib
.tran 0.01 100n
.save all
"}
C {vdd.sym} 340 -670 0 0 {name=l8 lab=VDD}
C {gnd.sym} 340 -490 0 0 {name=l9 lab=GND}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Layout/DFFSR74.sym} 290 -490 0 0 {name=x1}
