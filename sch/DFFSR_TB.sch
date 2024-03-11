v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {DFF Testbench} 20 -260 0 0 0.4 0.4 {}
N 20 -90 50 -90 {
lab=D}
N 20 30 50 30 {
lab=CLK}
N 210 -90 240 -90 {
lab=D}
N 130 -180 130 -160 {
lab=S}
N 20 -180 130 -180 {
lab=S}
N 130 90 130 100 {
lab=R}
N 20 100 130 100 {
lab=R}
C {/home/goodkook/ETRI050_DesignKit/devel/sch/DFFSR.sym} 130 -30 0 0 {name=x1}
C {lab_pin.sym} 20 -180 0 0 {name=p1 sig_type=std_logic lab=S}
C {lab_pin.sym} 20 -90 0 0 {name=p2 sig_type=std_logic lab=D}
C {lab_pin.sym} 20 30 0 0 {name=p3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 20 100 0 0 {name=p4 sig_type=std_logic lab=R}
C {lab_pin.sym} 240 -90 0 1 {name=p5 sig_type=std_logic lab=Q}
