v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 200 -280 200 -240 {
lab=Vout}
N 140 -310 160 -310 {
lab=Vin}
N 140 -310 140 -210 {
lab=Vin}
N 140 -210 160 -210 {
lab=Vin}
N 200 -260 260 -260 {
lab=Vout}
N 100 -260 140 -260 {
lab=Vin}
C {nmos-sub.sym} 180 -210 0 0 {name=M1 model=nfet substrate=GND w=5u l=0.18u m=1}
C {pmos-sub.sym} 180 -310 0 0 {name=M2 model=pfet substrate=VDD w=5u l=0.18u m=1}
C {vdd.sym} 200 -340 0 0 {name=l1 lab=VDD}
C {gnd.sym} 200 -180 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 100 -260 0 0 {name=p1 sig_type=std_logic lab=Vin
}
C {lab_wire.sym} 260 -260 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {vsource.sym} 30 -310 0 0 {name=vdd value=5 savecurrent=false}
C {vsource.sym} 70 -190 0 0 {name=vin value=0 savecurrent=false}
C {gnd.sym} 30 -280 0 0 {name=l3 lab=GND}
C {vdd.sym} 30 -340 0 0 {name=l4 lab=VDD}
C {lab_wire.sym} 70 -220 0 0 {name=p3 sig_type=std_logic lab=Vin
}
C {gnd.sym} 70 -160 0 0 {name=l5 lab=GND}
C {simulator_commands_shown.sym} 10 -90 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.include ~/ETRI050_DesignKit/tech/05cmos_model_240201.lib
.dc vin 0 5.0 0.01
.save all
"}
