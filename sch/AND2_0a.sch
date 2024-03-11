v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 240 -350 240 -330 {
lab=#net1}
N 240 -330 340 -330 {
lab=#net1}
N 340 -350 340 -330 {
lab=#net1}
N 300 -330 300 -280 {
lab=#net1}
N 300 -220 300 -200 {
lab=#net2}
N 470 -340 490 -340 {
lab=#net1}
N 470 -340 470 -240 {
lab=#net1}
N 470 -240 490 -240 {
lab=#net1}
N 300 -300 470 -300 {
lab=#net1}
N 530 -310 530 -270 {
lab=Y}
N 530 -290 570 -290 {
lab=Y}
N 380 -380 420 -380 {
lab=B}
N 240 -440 240 -410 {
lab=VDD}
N 340 -440 340 -410 {
lab=VDD}
N 300 -140 300 -120 {
lab=GND}
N 180 -250 260 -250 {
lab=A}
N 180 -380 180 -250 {
lab=A}
N 160 -380 200 -380 {
lab=A}
N 340 -170 390 -170 {
lab=B}
N 390 -380 390 -170 {
lab=B}
N 240 -440 340 -440 {
lab=VDD}
N 530 -400 530 -370 {
lab=VDD}
N 530 -210 530 -180 {
lab=GND}
C {pmos-sub.sym} 220 -380 0 0 {name=M7 model=pfet substrate=VDD w=5u l=0.18u m=1}
C {nmos-sub.sym} 320 -170 2 0 {name=M8 model=nfet substrate=GND w=5u l=0.18u m=1}
C {pmos-sub.sym} 360 -380 2 0 {name=M9 model=pfet substrate=VDD w=5u l=0.18u m=1}
C {pmos-sub.sym} 510 -340 0 0 {name=M10 model=pfet substrate=VDD w=5u l=0.18u m=1}
C {nmos-sub.sym} 280 -250 2 1 {name=M11 model=nfet substrate=GND w=5u l=0.18u m=1}
C {gnd.sym} 300 -120 0 0 {name=l3 lab=GND}
C {vdd.sym} 290 -440 0 0 {name=l4 lab=VDD}
C {nmos-sub.sym} 510 -240 2 1 {name=M12 model=nfet substrate=GND w=5u l=0.18u m=1}
C {ipin.sym} 160 -380 0 0 {name=p4 lab=A}
C {ipin.sym} 420 -380 0 1 {name=p5 lab=B}
C {opin.sym} 570 -290 0 0 {name=p6 lab=Y}
C {vdd.sym} 530 -400 0 0 {name=l5 lab=VDD}
C {gnd.sym} 530 -180 0 0 {name=l6 lab=GND}
