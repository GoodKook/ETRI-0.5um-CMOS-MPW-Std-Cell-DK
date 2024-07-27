v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1240 280 1240 320 {
lab=Y}
N 1160 350 1200 350 {
lab=A}
N 1160 250 1160 350 {
lab=A}
N 1160 250 1200 250 {
lab=A}
N 1120 300 1160 300 {
lab=A}
N 1240 300 1280 300 {
lab=Y}
N 1240 200 1240 220 {
lab=#net1}
N 1240 380 1240 400 {
lab=#net2}
C {nmos-sub.sym} 1220 350 0 0 {name=M1 model=nfet substrate=GND w=3u l=0.6u m=1}
C {pmos-sub.sym} 1220 250 0 0 {name=M2 model=pfet substrate=VDD w=6u l=0.6u m=1}
C {ipin.sym} 1120 300 0 0 {name=p1 lab=A pinnum=0}
C {opin.sym} 1280 300 0 0 {name=p2 lab=Y pinnum=1}
C {iopin.sym} 1240 200 0 0 {name=p3 lab=vdd}
C {iopin.sym} 1240 400 0 0 {name=p4 lab=gnd}
