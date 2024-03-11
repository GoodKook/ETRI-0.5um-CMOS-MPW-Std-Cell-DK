# IRSIM simulation for DFFSR

l gnd
h vdd

analyzer

ana CLK D S R Q

every 250 {toggle CLK}

l CLK
l D
h R
h S

s 500
l S
s 500
h S
s 500
l R
s 500
h R
s 500
l D
s 500
h D
s 1000
l R
s 500
h R
s 500

s 10000

