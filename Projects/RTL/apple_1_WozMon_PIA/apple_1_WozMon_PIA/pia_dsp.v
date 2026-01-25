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
    parameter sWait   = 3'b001;
    parameter sAck_0  = 3'b010;
    parameter sAck_1  = 3'b100;

    reg [2:0] state;
    reg [7:0] Dsp_Reg;

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
                    else
                        state <= sWait;
                sAck_0:
                    if (dsp_ack)
                        state <= sAck_1;
                    else
                        state <= sAck_0;
                sAck_1:
                    if (!dsp_ack)
                    begin
                        Dsp_Reg[7] <= 1'b0;
                        state <= sWait;
                    end
                    else
                        state <= sAck_1;
                default:
                    state <= sWait;
            endcase
        end
    end
    assign dsp_rdy  = Dsp_Reg[7];
    assign dsp_data = Dsp_Reg[6:0];
    assign Data_Out = Dsp_Reg;

endmodule

