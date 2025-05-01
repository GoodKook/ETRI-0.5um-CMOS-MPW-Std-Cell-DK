# IRSIM simulation for fir_pe_Core


vector Cin {Cin[5]} {Cin[4]} {Cin[3]} {Cin[2]} {Cin[1]} {Cin[0]}
vector Xin {Xin[3]} {Xin[2]} {Xin[1]} {Xin[0]}
vector Yin {Yin[3]} {Yin[2]} {Yin[1]} {Yin[0]}
vector Xout {Xout[3]} {Xout[2]} {Xout[1]} {Xout[0]}
vector Yout {Yout[3]} {Yout[2]} {Yout[1]} {Yout[0]}

proc help {} {
    puts {sim Cin Xin Yin}
}

proc sim {dCin dXin dYin} {
#------------------------------------
    h clk

    # Delayed inputs
    s 1
    h Rdy
    setvector Cin 0d$dCin
    setvector Xin xxxx
    setvector Yin xxxx
    d Cin Xin Yin Xout Yout
    s 49

    l clk
    s 50
#------------------------------------
    h clk

    # Delayed inputs
    s 1
    l Rdy
    setvector Xin 0d[expr ($dXin>>0)%16]
    setvector Yin 0d[expr ($dYin>>0)%16]
    d Cin Xin Yin Xout Yout
    s 49

    l clk
    s 50
#------------------------------------
    h clk

    # Delayed inputs
    s 1
    setvector Xin 0d[expr ($dXin>>4)%16]
    setvector Yin 0d[expr ($dYin>>4)%16]
    d Cin Xin Yin Xout Yout
    s 49

    l clk
    s 50
#------------------------------------
    h clk

    # Delayed inputs
    s 1
    setvector Xin 0d[expr ($dXin>>8)%16]
    setvector Yin 0d[expr ($dYin>>8)%16]
    d Cin Xin Yin Xout Yout
    s 49

    l clk
    s 50
#------------------------------------
    h clk

    # Delayed inputs
    s 1
    setvector Xin 0d[expr ($dXin>>12)%16]
    setvector Yin 0d[expr ($dYin>>12)%16]
    d Cin Xin Yin Xout Yout
    s 49
    
    l clk
    s 50
#------------------------------------
}

analyzer

ana clk Rdy Cin Xin Yin Vld Xout Yout

base set Xin hex
base set Yin hex
base set Xout hex
base set Yout hex

clock clk 0 1

l gnd
h vdd

h clk
l Rdy
setvector Cin 000000
setvector Xin 0000
setvector Yin 0000


