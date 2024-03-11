v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -330 280 -280 {
lab=VDD}
N 110 -330 280 -330 {
lab=VDD}
N 110 -330 110 -280 {
lab=VDD}
N 170 -280 220 -280 {
lab=#net1}
N 330 -330 330 -280 {
lab=VDD}
N 280 -330 330 -330 {
lab=VDD}
N 140 -240 140 -170 {
lab=A}
N 80 -210 140 -210 {
lab=A}
N 250 -240 250 -170 {
lab=B}
N 170 -130 220 -130 {
lab=#net2}
N 190 -280 190 -220 {
lab=#net1}
N 190 -220 360 -220 {
lab=#net1}
N 360 -240 360 -170 {
lab=#net1}
N 390 -280 400 -280 {
lab=Y}
N 400 -280 400 -130 {
lab=Y}
N 390 -130 400 -130 {
lab=Y}
N 280 -130 330 -130 {
lab=GND}
N 300 -130 300 -100 {
lab=GND}
N 400 -220 420 -220 {
lab=Y}
N 100 -130 110 -130 {
lab=#net1}
N 100 -180 100 -130 {
lab=#net1}
N 100 -180 360 -180 {
lab=#net1}
N 190 -200 250 -200 {
lab=B}
C {nmos-sub.sym} 140 -150 1 0 {name=M1 model=nfet substrate=GND w=6u l=0.6u m=1}
C {pmos-sub.sym} 140 -260 3 0 {name=M2 model=pfet substrate=VDD w=6u l=0.6u m=1}
C {pmos-sub.sym} 250 -260 1 1 {name=M3 model=pfet substrate=VDD w=6u l=0.6u m=1}
C {pmos-sub.sym} 360 -260 3 0 {name=M4 model=pfet substrate=VDD w=6u l=0.6u m=1}
C {nmos-sub.sym} 250 -150 1 0 {name=M5 model=nfet substrate=GND w=6u l=0.6u m=1}
C {nmos-sub.sym} 360 -150 3 1 {name=M6 model=nfet substrate=GND w=3u l=0.6u m=1}
C {gnd.sym} 300 -100 0 0 {name=l1 lab=GND}
C {vdd.sym} 280 -330 0 0 {name=l2 lab=VDD}
C {ipin.sym} 80 -210 0 0 {name=p1 lab=A}
C {ipin.sym} 190 -200 0 0 {name=p2 lab=B}
C {opin.sym} 420 -220 0 0 {name=p3 lab=Y}
