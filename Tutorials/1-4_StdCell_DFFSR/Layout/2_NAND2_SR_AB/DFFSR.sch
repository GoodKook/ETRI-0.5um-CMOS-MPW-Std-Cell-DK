v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -670 300 -600 {
lab=C_Bar}
N 410 -670 460 -670 {
lab=C}
N 160 -670 190 -670 {
lab=CLK}
N 300 -600 470 -600 {
lab=C_Bar}
N 470 -280 470 -210 {
lab=#net1}
N 410 -280 410 -210 {
lab=#net2}
N 290 -430 420 -430 {
lab=#net2}
N 290 -430 290 -280 {
lab=#net2}
N 260 -280 290 -280 {
lab=#net2}
N 260 -320 260 -250 {
lab=#net2}
N 290 -280 290 -240 {
lab=#net2}
N 730 -440 730 -360 {
lab=#net3}
N 540 -410 730 -410 {
lab=#net3}
N 610 -410 610 -360 {
lab=#net3}
N 790 -440 790 -360 {
lab=#net4}
N 290 -240 410 -240 {
lab=#net2}
N 470 -240 630 -240 {
lab=#net1}
N 200 -320 200 -250 {
lab=#net5}
N 150 -280 200 -280 {
lab=#net5}
N 340 -390 420 -390 {
lab=S}
N 340 -390 340 -110 {
lab=S}
N 150 -110 340 -110 {
lab=S}
N 650 -540 650 -360 {
lab=R}
N 160 -540 650 -540 {
lab=R}
N 900 -310 900 -240 {
lab=#net4}
N 960 -310 960 -240 {
lab=#net6}
N 790 -410 1100 -410 {
lab=#net4}
N 860 -280 900 -280 {
lab=#net4}
N 860 -410 860 -280 {
lab=#net4}
N 840 -450 1100 -450 {
lab=R}
N 840 -540 840 -450 {
lab=R}
N 650 -540 840 -540 {
lab=R}
N 960 -280 1100 -280 {
lab=#net6}
N 1220 -300 1260 -300 {
lab=#net7}
N 1220 -260 1260 -260 {
lab=S}
N 1260 -260 1260 -110 {
lab=S}
N 340 -110 1260 -110 {
lab=S}
N 1260 -430 1260 -300 {
lab=#net7}
N 1220 -430 1290 -430 {
lab=#net7}
N 230 -630 230 -610 {
lab=gnd}
N 340 -630 340 -610 {
lab=gnd}
N 80 -240 80 -220 {
lab=gnd}
N 1330 -390 1330 -370 {
lab=gnd}
N 150 -780 190 -780 {
lab=vdd}
N 150 -740 190 -740 {
lab=gnd}
C {pmos-sub.sym} 440 -190 3 0 {name=M1 model=pfet substrate=VDD w=3u l=0.6u m=1}
C {nmos-sub.sym} 440 -300 1 0 {name=M2 model=nfet substrate=GND w=3u l=0.6u m=1}
C {pmos-sub.sym} 230 -340 1 0 {name=M3 model=pfet substrate=VDD w=3u l=0.6u m=1}
C {nmos-sub.sym} 230 -230 3 0 {name=M4 model=nfet substrate=GND w=3u l=0.6u m=1}
C {lab_pin.sym} 230 -210 0 0 {name=p67 sig_type=std_logic lab=C_Bar}
C {lab_pin.sym} 440 -170 2 1 {name=p68 sig_type=std_logic lab=C_Bar}
C {lab_pin.sym} 440 -320 0 0 {name=p69 sig_type=std_logic lab=C}
C {lab_pin.sym} 230 -360 2 1 {name=p70 sig_type=std_logic lab=C}
C {pmos-sub.sym} 760 -340 3 0 {name=M6 model=pfet substrate=VDD w=3u l=0.6u m=1}
C {nmos-sub.sym} 760 -460 1 0 {name=M5 model=nfet substrate=GND w=3u l=0.6u m=1}
C {lab_pin.sym} 760 -320 2 0 {name=p71 sig_type=std_logic lab=C_Bar}
C {lab_pin.sym} 760 -480 0 0 {name=p72 sig_type=std_logic lab=C}
C {pmos-sub.sym} 930 -330 1 0 {name=M7 model=pfet substrate=VDD w=3u l=0.6u m=1}
C {nmos-sub.sym} 930 -220 3 0 {name=M8 model=nfet substrate=GND w=3u l=0.6u m=1}
C {lab_pin.sym} 460 -670 2 0 {name=p81 sig_type=std_logic lab=C}
C {lab_pin.sym} 470 -600 2 0 {name=p82 sig_type=std_logic lab=C_Bar}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/INVX1.sym} 190 -620 0 0 {name=x1}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/INVX1.sym} 300 -620 0 0 {name=x2}
C {ipin.sym} 160 -670 0 0 {name=p1 lab=CLK}
C {ipin.sym} 40 -280 0 0 {name=p2 lab=D}
C {opin.sym} 1400 -430 0 0 {name=p3 lab=Q}
C {ipin.sym} 150 -110 0 0 {name=p4 lab=S}
C {ipin.sym} 160 -540 0 0 {name=p5 lab=R}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/NAND2X1.sym} 410 -340 0 0 {name=x4}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/NAND2X1.sym} 700 -370 3 1 {name=x6}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/NAND2X1.sym} 1090 -360 0 0 {name=x7}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/NAND2X1.sym} 1230 -210 0 1 {name=x8}
C {lab_pin.sym} 930 -350 2 1 {name=p6 sig_type=std_logic lab=C}
C {lab_pin.sym} 930 -200 2 1 {name=p7 sig_type=std_logic lab=C_Bar}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/INVX1.sym} 40 -230 0 0 {name=x3}
C {/home/goodkook/ETRI050_DesignKit/Tutorials/1-4_StdCell_DFFSR/Sch/INVX1.sym} 1290 -380 0 0 {name=x5}
C {iopin.sym} 150 -780 2 0 {name=p8 lab=vdd}
C {lab_wire.sym} 230 -710 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 340 -710 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 80 -320 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 460 -470 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 570 -320 1 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1140 -490 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1180 -340 0 0 {name=p15 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 190 -780 0 1 {name=p17 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 340 -610 0 1 {name=p18 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 230 -610 0 1 {name=p19 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 80 -220 0 1 {name=p16 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 460 -360 0 0 {name=p20 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 680 -320 3 1 {name=p21 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 1180 -230 0 1 {name=p22 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 1140 -380 0 0 {name=p23 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 1330 -470 0 0 {name=p24 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 1330 -370 0 0 {name=p25 sig_type=std_logic lab=gnd}
C {iopin.sym} 150 -740 2 0 {name=p26 lab=gnd}
C {lab_wire.sym} 190 -740 0 1 {name=p27 sig_type=std_logic lab=gnd}
