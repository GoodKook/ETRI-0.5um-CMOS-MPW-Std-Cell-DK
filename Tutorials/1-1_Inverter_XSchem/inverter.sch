v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 160 -170 160 -140 {
lab=Y}
N 160 -160 190 -160 {
lab=Y}
N 160 -180 160 -170 {
lab=Y}
N 100 -210 120 -210 {
lab=A}
N 100 -210 100 -110 {
lab=A}
N 100 -110 120 -110 {
lab=A}
N 160 -80 160 -70 {
lab=GND}
N 160 -250 160 -240 {
lab=VDD}
N 160 -210 170 -210 {
lab=VDD}
N 170 -240 170 -210 {
lab=VDD}
N 160 -240 170 -240 {
lab=VDD}
N 160 -110 170 -110 {
lab=GND}
N 170 -110 170 -80 {
lab=GND}
N 160 -80 170 -80 {
lab=GND}
N 80 -160 100 -160 {
lab=A}
N 160 -70 160 -50 {
lab=GND}
N 150 -50 160 -50 {
lab=GND}
N 150 -260 160 -260 {
lab=VDD}
N 160 -260 160 -250 {
lab=VDD}
C {ipin.sym} 80 -160 0 0 {name=p1 lab=A}
C {opin.sym} 190 -160 0 0 {name=p2 lab=Y}
C {iopin.sym} 150 -260 0 1 {name=p4 lab=VDD}
C {iopin.sym} 150 -50 0 1 {name=p3 lab=GND}
C {pmos4.sym} 140 -210 0 0 {name=M2 model=pfet w=2.0u l=0.6u del=0 m=1}
C {nmos4.sym} 140 -110 0 0 {name=M1 model=nfet w=2.0u l=0.6u del=0 m=1}
