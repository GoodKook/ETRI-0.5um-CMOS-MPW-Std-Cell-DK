v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -380 420 -380 {
lab=B}
N 380 -230 380 -90 {
lab=B}
N 380 -90 420 -90 {
lab=B}
N 460 -350 460 -320 {
lab=#net1}
N 460 -260 460 -250 {
lab=Y}
N 460 -250 660 -250 {
lab=Y}
N 660 -260 660 -250 {
lab=Y}
N 660 -350 660 -320 {
lab=#net2}
N 460 -430 460 -410 {
lab=VDD}
N 660 -430 660 -410 {
lab=VDD}
N 700 -380 740 -380 {
lab=A}
N 740 -230 740 -90 {
lab=A}
N 700 -90 740 -90 {
lab=A}
N 460 -140 460 -120 {
lab=#net3}
N 660 -140 660 -120 {
lab=#net4}
N 460 -210 460 -190 {
lab=Y}
N 460 -210 660 -210 {
lab=Y}
N 660 -210 660 -200 {
lab=Y}
N 660 -230 660 -210 {
lab=Y}
N 240 -430 240 -370 {
lab=VDD}
N 180 -340 200 -340 {
lab=B}
N 180 -250 180 -140 {
lab=B}
N 180 -140 200 -140 {
lab=B}
N 240 -250 240 -170 {
lab=S_Bar}
N 240 -250 300 -250 {
lab=S_Bar}
N 240 -110 240 -40 {
lab=GND}
N 570 -290 620 -290 {
lab=S_Bar}
N 500 -290 530 -290 {
lab=S}
N 570 -220 570 -170 {
lab=S}
N 570 -170 620 -170 {
lab=S}
N 530 -240 570 -220 {
lab=S}
N 530 -290 530 -240 {
lab=S}
N 570 -290 570 -240 {
lab=S_Bar}
N 530 -220 570 -240 {
lab=S_Bar}
N 530 -220 530 -170 {
lab=S_Bar}
N 500 -170 530 -170 {
lab=S_Bar}
N 460 -60 460 -40 {
lab=GND}
N 660 -60 660 -40 {
lab=GND}
N 180 -340 180 -250 {
lab=B}
N 240 -310 240 -250 {
lab=S_Bar}
N 740 -380 740 -230 {
lab=A}
N 660 -250 660 -230 {
lab=Y}
N 380 -380 380 -230 {
lab=B}
C {gnd.sym} 460 -40 0 0 {name=l1 lab=GND}
C {vdd.sym} 240 -430 0 0 {name=l2 lab=VDD}
C {nmos-sub.sym} 220 -140 0 0 {name=M1 model=nfet substrate=GND w=3u l=0.6u m=1}
C {pmos-sub.sym} 220 -340 0 0 {name=M2 model=pfet substrate=VDD w=6u l=0.6u m=1}
C {pmos-sub.sym} 440 -380 0 0 {name=M3 model=pfet substrate=VDD w=12u l=0.6u m=1}
C {pmos-sub.sym} 480 -290 2 0 {name=M4 model=pfet substrate=VDD w=12u l=0.6u m=1}
C {pmos-sub.sym} 680 -380 2 0 {name=M5 model=pfet substrate=VDD w=12u l=0.6u m=1}
C {pmos-sub.sym} 640 -290 0 0 {name=M6 model=pfet substrate=VDD w=12u l=0.6u m=1}
C {nmos-sub.sym} 480 -170 2 0 {name=M7 model=nfet substrate=GND w=6u l=0.6u m=1}
C {nmos-sub.sym} 640 -170 0 0 {name=M8 model=nfet substrate=GND w=6u l=0.6u m=1}
C {nmos-sub.sym} 680 -90 2 0 {name=M9 model=nfet substrate=GND w=6u l=0.6u m=1}
C {nmos-sub.sym} 440 -90 0 0 {name=M10 model=nfet substrate=GND w=6u l=0.6u m=1}
C {vdd.sym} 460 -430 0 0 {name=l3 lab=VDD}
C {vdd.sym} 660 -430 0 0 {name=l4 lab=VDD}
C {lab_wire.sym} 600 -290 0 0 {name=p4 sig_type=std_logic lab=S_Bar}
C {lab_wire.sym} 600 -170 0 0 {name=p5 sig_type=std_logic lab=S}
C {gnd.sym} 240 -40 0 0 {name=l5 lab=GND}
C {gnd.sym} 660 -40 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 300 -250 0 0 {name=p6 sig_type=std_logic lab=S_Bar}
C {opin.sym} 660 -230 0 0 {name=p8 lab=Y}
C {ipin.sym} 740 -230 0 1 {name=p2 lab=A}
C {ipin.sym} 380 -230 0 0 {name=p1 lab=B}
C {ipin.sym} 180 -250 0 0 {name=p3 lab=S}
