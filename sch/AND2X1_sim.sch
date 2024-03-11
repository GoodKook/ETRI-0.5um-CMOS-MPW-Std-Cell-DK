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
N 100 -130 110 -130 {
lab=#net1}
N 100 -180 100 -130 {
lab=#net1}
N 100 -180 360 -180 {
lab=#net1}
N 190 -200 250 -200 {
lab=B}
N -140 -170 -140 -150 {
lab=A}
N -140 -170 -90 -170 {
lab=A}
N -110 -30 -110 -10 {
lab=B}
N -110 -30 -60 -30 {
lab=B}
N 400 -220 450 -220 {
lab=Y}
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
C {opin.sym} 450 -220 0 0 {name=p3 lab=Y}
C {code_shown.sym} 490 -110 0 0 {name=SPICE only_toplevel=false value=".tran 0.01n 250n
.save all"}
C {vsource.sym} 30 -310 0 0 {name=VDD value=5 savecurrent=false}
C {gnd.sym} 30 -280 0 0 {name=l3 lab=GND}
C {vdd.sym} 30 -340 0 0 {name=l4 lab=VDD}
C {vsource.sym} -140 -120 0 0 {name=VAin value="pulse(0 5.0 10n 10n 10n 100n 220n)" savecurrent=false}
C {gnd.sym} -140 -90 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -100 -170 0 0 {name=p4 sig_type=std_logic lab=A
}
C {vsource.sym} -110 20 0 0 {name=VBin value="pulse(0 5.0 50n 10n 10n 100n 220n)" savecurrent=false}
C {gnd.sym} -110 50 0 0 {name=l6 lab=GND}
C {lab_wire.sym} -70 -30 0 0 {name=p8 sig_type=std_logic lab=B
}
C {/home/goodkook/ETRI050_DesignKit/devel/sch/fet_models.sym} 510 -370 0 0 {
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
