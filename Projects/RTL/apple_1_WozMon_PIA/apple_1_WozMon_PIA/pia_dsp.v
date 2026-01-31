//
// Apple-1 PIA/Display
//
`include "PIA_ADDR.vh"

module pia_dsp(clk, reset, Address_Bus, WE, Data_In, Data_Out, dsp_rdy, dsp_ack, dsp_data);
    input           clk;
    input           reset;
    input [15:0]    Address_Bus;
    input           WE;
    input  [7:0]    Data_In;
    output [7:0]    Data_Out;
    output          dsp_rdy;
    input           dsp_ack;
    output [6:0]    dsp_data;   // ASCII

    // FSM for Load-Exec-Out Control //////////////////////////////////////////
    parameter sWait  = 4'b0001;
    parameter sAck_0 = 4'b0010;
    parameter sAck_1 = 4'b0100;
    parameter sAck_2 = 4'b1000;

    reg [3:0] state;
    reg [7:0] Dsp_Reg;
    reg       dsp_rdy;

    always@(posedge clk or posedge reset)
    begin : FSM_STATE
        if(reset) begin
            Dsp_Reg <= 0;
            state   <= sWait;
        end
        else begin
            case(state)
                sWait:
                    if (Address_Bus==`PIA_DSP_REG && WE)
                    begin
                        Dsp_Reg <= {1'b1, Data_In[6:0]};
                        state <= sAck_0;
                    end
                sAck_0:
                    begin
                        dsp_rdy <= 1'b1;
                        state <= sAck_1;
                    end
                sAck_1:
                    if (dsp_ack)
                    begin
                        dsp_rdy <= 1'b0;
                        state <= sAck_2;
                    end
                sAck_2:
                    if (!dsp_ack)
                    begin
                        Dsp_Reg[7] <= 1'b0;
                        state <= sWait;
                    end
                default:
                    state <= sWait;
            endcase
        end
    end
    assign dsp_data = Dsp_Reg[6:0];
    assign Data_Out = Dsp_Reg;

endmodule

