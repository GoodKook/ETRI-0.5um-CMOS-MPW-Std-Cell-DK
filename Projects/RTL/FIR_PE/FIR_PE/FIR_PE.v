// Filename : FIR_PE.v
// Purpose  : Processing Element for FIR_PE
// Author   : goodkook@gmail.com
// History  : Mar. 2024, First Release

module FIR_PE (clk, Cin, Xin, Xout, Yin, Yout, Rdy, Vld);
    input           clk;
    input   [5:0]   Cin;
    input   [3:0]   Xin;
    output  [3:0]   Xout;
    input   [3:0]   Yin;
    output  [3:0]   Yout;
    input           Rdy;
    output          Vld;

    // Load Control --------------------------------------------
    integer i;
    reg     [4:0]   LoadCtl;
    always @(posedge clk)
    begin
        LoadCtl[0] <= Rdy;
        for (i=0; i<4; i=i+1)
            LoadCtl[i+1] <= LoadCtl[i];
    end
    assign Vld = LoadCtl[4];

    // Xin -----------------------------------------------------
    reg     [3:0]   XinL, XinH;
    always @(posedge clk)
    begin
        if (LoadCtl[0])         XinL <= Xin;
        else if (LoadCtl[1])    XinH <= Xin;
    end
    // Yin -----------------------------------------------------
    reg     [3:0]   Yin3, Yin2, Yin1, Yin0;
    always @(posedge clk)
    begin
        if (LoadCtl[0])         Yin0 <= Yin;
        else if (LoadCtl[1])    Yin1 <= Yin;
        else if (LoadCtl[2])    Yin2 <= Yin;
        else if (LoadCtl[3])    Yin3 <= Yin;
    end
    // Mult-Acc ------------------------------------------------
    reg     [15:0]  rYin, mul, y;
    wire    [7:0]   XinHL   = {XinH, XinL};
    wire    [15:0]  Yin3210 = {Yin3, Yin2, Yin1, Yin0};
    always @(posedge clk)
    begin
        if (LoadCtl[4]) begin
            rYin <= Yin3210;
            mul  <= XinHL * {2'b00, Cin[5:0]};
            y    <= rYin + mul;
        end
    end
    // Xout & Yout ---------------------------------------------
    reg     [3:0]   Xout, Yout;
    always @*
    begin
        if (LoadCtl[0]) begin
            Xout = XinL;
            Yout = y[3:0];
        end
        else if (LoadCtl[1]) begin
            Xout = XinH;
            Yout = y[7:4];
        end
        else if (LoadCtl[2]) begin
            Xout = 4'bxxxx;
            Yout = y[11:8];
        end
        else if (LoadCtl[3]) begin
            Xout = 4'bxxxx;
            Yout = y[15:12];
        end
        else begin
            Xout = 4'bxxxx;
            Yout = 4'bxxxx;
        end
    end
endmodule
