v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1020 330 1080 330 {
lab=#net1}
N 1170 330 1170 380 {
lab=A}
N 1020 380 1170 380 {
lab=A}
N 1120 360 1120 400 {
lab=Y}
N 1120 400 1220 400 {
lab=Y}
N 1220 360 1220 400 {
lab=Y}
N 1160 400 1160 420 {
lab=Y}
N 1120 280 1120 300 {
lab=vdd}
N 1120 280 1220 280 {
lab=vdd}
N 1220 280 1220 300 {
lab=vdd}
N 1160 480 1160 490 {
lab=#net2}
N 1220 400 1260 400 {
lab=Y}
N 1170 330 1180 330 {
lab=A}
N 1160 250 1160 280 {
lab=vdd}
N 1160 550 1160 570 {
lab=gnd}
N 1060 450 1120 450 {
lab=#net1}
N 1060 330 1060 450 {
lab=#net1}
N 1040 520 1120 520 {
lab=A}
N 1040 380 1040 520 {
lab=A}
C {nmos-sub.sym} 1140 450 0 0 {name=M1 model=nfet substrate=GND w=6u l=0.6u m=1}
C {pmos-sub.sym} 1100 330 0 0 {name=M2 model=pfet substrate=VDD w=6u l=0.6u m=1}
C {nmos-sub.sym} 1140 520 0 0 {name=M3 model=nfet substrate=GND w=6u l=0.6u m=1}
C {pmos-sub.sym} 1200 330 0 0 {name=M4 model=pfet substrate=VDD w=6u l=0.6u m=1}
C {ipin.sym} 1020 380 0 0 {name=p1 lab=A}
C {ipin.sym} 1020 330 0 0 {name=p2 lab=B}
C {opin.sym} 1260 400 0 0 {name=p3 lab=Y}
C {iopin.sym} 1160 250 0 1 {name=p4 lab=vdd}
C {iopin.sym} 1160 570 0 1 {name=p5 lab=gnd}
