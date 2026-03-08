//
// Vitis-HLS Project: fir
//    Core Top wrapper

module fir_hls(clk, rst, ready, x, y);
    input           clk;
    input           rst;
    output          ready;
    input  [7:0]    x;
    output [7:0]    y;

    wire ap_start, ap_done, ap_idle, y_ap_vld;
    
    assign ap_start = 1;
    
    fir u_fir(
            .ap_clk(clk),
            .ap_rst(rst),
            .ap_start(ap_start),
            .ap_done(ap_done),
            .ap_idle(ap_idle),
            .ap_ready(ready),
            .y(y),
            .y_ap_vld(y_ap_vld),
            .x(x));
endmodule

