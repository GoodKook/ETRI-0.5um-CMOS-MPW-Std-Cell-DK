v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 380 -380 420 -380 {
lab=B}
N 380 -380 380 -90 {
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
N 740 -380 740 -90 {
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
N 660 -250 660 -210 {
lab=Y}
N 240 -430 240 -370 {
lab=VDD}
N 180 -340 200 -340 {
lab=S}
N 180 -340 180 -140 {
lab=S}
N 180 -140 200 -140 {
lab=S}
N 160 -250 180 -250 {
lab=S}
N 240 -310 240 -170 {
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
N -270 -350 -270 -330 {
lab=A}
N -270 -350 -180 -350 {
lab=A}
N -270 -230 -270 -210 {
lab=B}
N -270 -230 -180 -230 {
lab=B}
N -270 -100 -270 -80 {
lab=S}
N -270 -100 -180 -100 {
lab=S}
N 740 -230 800 -230 {
lab=A}
N 660 -230 700 -230 {
lab=Y}
N 360 -230 380 -230 {
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
C {/home/goodkook/ETRI050_DesignKit/devel/sch/fet_models.sym} 900 -470 0 0 {
name=FET_MODELS(AMIc5)
only_toplevel=false
value=".option wnflag=1
.MODEL nfet NMOS (
+LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.4E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = 0.6484638
+K1      = 0.8874212      K2      = -0.0978537     K3      = 24.0034885
+K3B     = -7.2553705     W0      = 1.268969E-8    NLX     = 1E-9
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 3.8899304      DVT1    = 0.4295545      DVT2    = -0.0862625
+U0      = 454.7269155    UA      = 1E-13          UB      = 1.362113E-18
+UC      = 1.430811E-11   VSAT    = 1.629926E5     A0      = 0.6165742
+AGS     = 0.1163052      B0      = 2.433887E-6    B1      = 5E-6
+KETA    = -2.051055E-3   A1      = 6.710587E-5    A2      = 0.37115
+RDSW    = 1.342046E3     PRWG    = 0.0525473      PRWB    = 0.0422162
+WR      = 1              WINT    = 2.317656E-7    LINT    = 3.438422E-8
+XL      = 0              XW      = 0              DWG     = -1.197811E-8
+DWB     = 6.032429E-8    VOFF    = 0              NFACTOR = 0.684939
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.0323024      ETAB    = -1.472177E-3
+DSUB    = 0.2796903      PCLM    = 2.5557332      PDIBLC1 = -0.2401157
+PDIBLC2 = 2.505188E-3    PDIBLCB = -0.0520225     DROUT   = 0.5945619
+PSCBE1  = 5.499244E8     PSCBE2  = 4.527916E-5    PVAG    = 0
+DELTA   = 0.01           RSH     = 80.3           MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.1E-10        CGSO    = 2.1E-10        CGBO    = 1E-9
+CJ      = 4.156656E-4    PB      = 0.99           MJ      = 0.4479288
+CJSW    = 3.399348E-10   PBSW    = 0.1            MJSW    = 0.1142026
+CJSWG   = 1.64E-10       PBSWG   = 0.1            MJSWG   = 0.1142026
+CF      = 0              PVTH0   = 0.0959658      PRDSW   = 103.9415756
+PK2     = -0.034767      WKETA   = -0.0168116     LKETA   = 1.239789E-3     )


.MODEL pfet PMOS (
+LEVEL   = 49
+VERSION = 3.1            TNOM    = 27             TOX     = 1.4E-8
+XJ      = 1.5E-7         NCH     = 1.7E17         VTH0    = -0.9500724
+K1      = 0.5456507      K2      = 0.0105576      K3      = 4.5052654
+K3B     = -0.931974      W0      = 1.127003E-7    NLX     = 3.819935E-8
+DVT0W   = 0              DVT1W   = 0              DVT2W   = 0
+DVT0    = 2.7369297      DVT1    = 0.4803414      DVT2    = -0.0786477
+U0      = 212.1726489    UA      = 2.800492E-9    UB      = 1.059959E-21
+UC      = -6.21265E-11   VSAT    = 2E5            A0      = 0.894794
+AGS     = 0.1277092      B0      = 5.079049E-7    B1      = 5E-6
+KETA    = -1.969136E-3   A1      = 0              A2      = 0.3
+RDSW    = 2.51727E3      PRWG    = -3.93537E-3    PRWB    = -6.474415E-3
+WR      = 1              WINT    = 2.846891E-7    LINT    = 5.207504E-8
+XL      = 0              XW      = 0              DWG     = -1.894994E-8
+DWB     = 1.793161E-8    VOFF    = -0.0589646     NFACTOR = 0.9229882
+CIT     = 0              CDSC    = 2.4E-4         CDSCD   = 0
+CDSCB   = 0              ETA0    = 0.3701754      ETAB    = -0.0747353
+DSUB    = 1              PCLM    = 2.0661973      PDIBLC1 = 0.0491197
+PDIBLC2 = 4.022205E-3    PDIBLCB = -0.0622551     DROUT   = 0.2243213
+PSCBE1  = 5.126179E9     PSCBE2  = 5.004119E-10   PVAG    = 0.0167107
+DELTA   = 0.01           RSH     = 101.7          MOBMOD  = 1
+PRT     = 0              UTE     = -1.5           KT1     = -0.11
+KT1L    = 0              KT2     = 0.022          UA1     = 4.31E-9
+UB1     = -7.61E-18      UC1     = -5.6E-11       AT      = 3.3E4
+WL      = 0              WLN     = 1              WW      = 0
+WWN     = 1              WWL     = 0              LL      = 0
+LLN     = 1              LW      = 0              LWN     = 1
+LWL     = 0              CAPMOD  = 2              XPART   = 0.5
+CGDO    = 2.89E-10       CGSO    = 2.89E-10       CGBO    = 1E-9
+CJ      = 7.264536E-4    PB      = 0.9566163      MJ      = 0.4977596
+CJSW    = 2.873502E-10   PBSW    = 0.99           MJSW    = 0.3106308
+CJSWG   = 6.4E-11        PBSWG   = 0.99           MJSWG   = 0.3106308
+CF      = 0              PVTH0   = 5.98016E-3     PRDSW   = 14.8598424
+PK2     = 3.73981E-3     WKETA   = 3.685103E-3    LKETA   = -4.456587E-3    )
*
"
}
C {code_shown.sym} 900 -170 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 500n
.save all"}
C {vsource.sym} 50 -400 0 0 {name=VDD value=5 savecurrent=false}
C {vdd.sym} 50 -430 0 0 {name=l7 lab=VDD}
C {gnd.sym} 50 -370 0 0 {name=l8 lab=GND}
C {vsource.sym} -270 -300 0 0 {name=VA_in savecurrent=false  value="pwl(0n 0 99n 0 100n 5 199n 5 200n 0 299n 0 300n 5 399n 5 400n 0)"}
C {gnd.sym} -270 -270 0 0 {name=l10 lab=GND}
C {lab_wire.sym} -180 -350 0 0 {name=p8 sig_type=std_logic lab=A}
C {vsource.sym} -270 -180 0 0 {name=VB_in savecurrent=false  value="pwl(0n 5 99n 5 100n 0 199n 0 200n 5 299n 5 300n 0 399n 0 400n 5)"}
C {gnd.sym} -270 -150 0 0 {name=l9 lab=GND}
C {lab_wire.sym} -180 -230 0 0 {name=p9 sig_type=std_logic lab=B
}
C {vsource.sym} -270 -50 0 0 {name=VS_in savecurrent=false  value="pwl(0n 0 199n 0 200n 5)"}
C {gnd.sym} -270 -20 0 0 {name=l11 lab=GND}
C {lab_wire.sym} -180 -100 0 0 {name=p10 sig_type=std_logic lab=S
}
C {lab_wire.sym} 790 -230 0 0 {name=p1 sig_type=std_logic lab=A}
C {lab_wire.sym} 700 -230 0 0 {name=p2 sig_type=std_logic lab=Y}
C {lab_wire.sym} 370 -230 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_wire.sym} 170 -250 0 0 {name=p7 sig_type=std_logic lab=S}
