# 12T cell interfaces

I=input, O=output, B=inout. Port names are case-sensitive. All 38 have LEF and GDS.
All cells have VDD/VSS in Liberty pg_pin, LEF and GDS labels; CDL omits fillers. GDS connectivity unknown.

| Cell | Kind | Liberty signals | Verilog signals | LEF differences | CDL | LEF size (um) |
|---|---|---|---|---|---|---|
| AND2X1 | functional-combinational | A:I, B:I, Y:O | A:I, B:I, Y:O | none | present | 12.8 BY 36 |
| AND2X2 | functional-combinational | A:I, B:I, Y:O | A:I, B:I, Y:O | none | present | 16 BY 36 |
| AOI21X1 | functional-combinational | A:I, B:I, C:I, Y:O | A:I, B:I, C:I, Y:O | none | present | 12.8 BY 36 |
| AOI22X1 | functional-combinational | A:I, B:I, C:I, D:I, Y:O | A:I, B:I, C:I, D:I, Y:O | none | present | 16 BY 36 |
| BUFX2 | functional-combinational | A:I, Y:O | A:I, Y:O | none | present | 9.6 BY 36 |
| BUFX4 | functional-combinational | A:I, Y:O | A:I, Y:O | none | present | 12.8 BY 36 |
| CLKBUFX1 | functional-combinational | A:I, Y:O | A:I, Y:O | none | present | 16 BY 36 |
| CLKBUFX2 | functional-combinational | A:I, Y:O | A:I, Y:O | none | present | 25.6 BY 36 |
| CLKBUFX4 | functional-combinational | A:I, Y:O | A:I, Y:O | none | present | 32 BY 36 |
| DFFNEGX1 | functional-sequential | CLK:I, D:I, Q:O | CLK:I, D:I, Q:O | none | present | 35.2 BY 36 |
| DFFPOSX1 | functional-sequential | CLK:I, D:I, Q:O | CLK:I, D:I, Q:O | none | present | 35.2 BY 36 |
| DFFSRX1 | functional-sequential | CLK:I, D:I, Q:O, R:I, S:I | CLK:I, D:I, Q:O, R:I, S:I | none | present | 60.8 BY 36 |
| FAX1 | functional-combinational | A:I, B:I, CI:I, CO:O, S:O | A:I, B:I, CI:I, CO:O, S:O | S:INPUT | present | 41.6 BY 36 |
| FILLX1 | physical-only | none | absent (filler) | none | absent (filler) | 3.2 BY 36 |
| FILLX2 | physical-only | none | absent (filler) | none | absent (filler) | 6.4 BY 36 |
| FILLX3 | physical-only | none | absent (filler) | none | absent (filler) | 9.6 BY 36 |
| FILLX4 | physical-only | none | absent (filler) | none | absent (filler) | 12.8 BY 36 |
| HAX1 | functional-combinational | A:I, B:I, CO:O, S:O | A:I, B:I, CO:O, S:O | S:INPUT | present | 22.4 BY 36 |
| INVX1 | functional-combinational | A:I, Y:O | A:I, Y:O | none | present | 6.4 BY 36 |
| INVX2 | functional-combinational | A:I, Y:O | A:I, Y:O | none | present | 9.6 BY 36 |
| INVX4 | functional-combinational | A:I, Y:O | A:I, Y:O | none | present | 16 BY 36 |
| INVX8 | functional-combinational | A:I, Y:O | A:I, Y:O | none | present | 25.6 BY 36 |
| LATCHX1 | functional-sequential | CLK:I, D:I, Q:O | D:I, G:I, Q:O | none | present | 19.2 BY 36 |
| MUX2X1 | functional-combinational | A:I, B:I, S:I, Y:O | A:I, B:I, S:I, Y:O | none | present | 16 BY 36 |
| NAND2X1 | functional-combinational | A:I, B:I, Y:O | A:I, B:I, Y:O | none | present | 9.6 BY 36 |
| NAND3X1 | functional-combinational | A:I, B:I, C:I, Y:O | A:I, B:I, C:I, Y:O | none | present | 12.8 BY 36 |
| NOR2X1 | functional-combinational | A:I, B:I, Y:O | A:I, B:I, Y:O | none | present | 9.6 BY 36 |
| NOR3X1 | functional-combinational | A:I, B:I, C:I, Y:O | A:I, B:I, C:I, Y:O | none | present | 12.8 BY 36 |
| OAI21X1 | functional-combinational | A:I, B:I, C:I, Y:O | A:I, B:I, C:I, Y:O | none | present | 12.8 BY 36 |
| OAI22X1 | functional-combinational | A:I, B:I, C:I, D:I, Y:O | A:I, B:I, C:I, D:I, Y:O | none | present | 16 BY 36 |
| OR2X1 | functional-combinational | A:I, B:I, Y:O | A:I, B:I, Y:O | none | present | 12.8 BY 36 |
| OR2X2 | functional-combinational | A:I, B:I, Y:O | A:I, B:I, Y:O | none | present | 16 BY 36 |
| TBUFX1 | functional-combinational | A:I, EN:I, Y:O | A:I, E:I, Y:O | none | present | 12.8 BY 36 |
| TBUFX2 | functional-combinational | A:I, EN:I, Y:O | A:I, E:I, Y:O | none | present | 16 BY 36 |
| TIEHIX1 | functional-constant | Y:O | Y:O | none | present | 6.4 BY 36 |
| TIELOX1 | functional-constant | Y:O | Y:O | none | present | 6.4 BY 36 |
| XNOR2X1 | functional-combinational | A:I, B:I, Y:O | A:I, B:I, Y:O | none | present | 19.2 BY 36 |
| XOR2X1 | functional-combinational | A:I, B:I, Y:O | A:I, B:I, Y:O | none | present | 19.2 BY 36 |
