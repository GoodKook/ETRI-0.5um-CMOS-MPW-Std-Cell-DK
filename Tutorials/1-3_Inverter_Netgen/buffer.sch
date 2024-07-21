v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -210 760 -210 {
lab=VDD}
N 220 -90 760 -90 {
lab=GND}
N 120 -150 130 -150 {
lab=A}
N 850 -150 860 -150 {
lab=Y}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-1_Inverter_XSchem/inverter.sym} -10 10 0 0 {name=X6}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-1_Inverter_XSchem/inverter.sym} 170 10 0 0 {name=X1}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-1_Inverter_XSchem/inverter.sym} 350 10 0 0 {name=X5}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-1_Inverter_XSchem/inverter.sym} 530 10 0 0 {name=X2}
C {ipin.sym} 120 -150 0 0 {name=p4 lab=A}
C {opin.sym} 860 -150 0 0 {name=p1 lab=Y}
C {iopin.sym} 220 -210 0 1 {name=p2 lab=VDD}
C {iopin.sym} 220 -90 0 1 {name=p5 lab=GND}
