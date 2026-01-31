//
// Apple-1 PIA/Keyboard
//
`include "PIA_ADDR.vh"

module pia_kbd(clk, reset, Address_Bus, WE, Data_Out, kbd_rdy, kbd_ack, kbd_data);
    input           clk;
    input           reset;
    input [15:0]    Address_Bus;
    input           WE;
    output [7:0]    Data_Out;
    input           kbd_rdy;
    output          kbd_ack;
    input  [6:0]    kbd_data;   // ASCII



    // FSM for Load-Exec-Out Control //////////////////////////////////////////
    parameter sWait = 3'b001;
    parameter sAck_0= 3'b010;
    parameter sAck_1= 3'b100;

    reg [2:0] state;
    reg [7:0] Kbd_Reg;
    reg       kbd_ack;

    always@(posedge clk or posedge reset)
    begin : FSM_STATE
        if(reset) begin
            kbd_ack <= 1'b0;
            Kbd_Reg <= 0;
            state   <= sWait;
        end
        else begin
            case(state)
                sWait:
                    if (kbd_rdy)
                    begin
                        kbd_ack <= 1'b0;
                        Kbd_Reg  <= {1'b1, kbd_data};
                        state    <= sAck_0;
                    end
                sAck_0:
                    if (Address_Bus==`PIA_KBD_CTL && !WE)
                    begin
                        kbd_ack <= 1'b1;
                        Kbd_Reg[7] <= {1'b0};
                        state <= sAck_1;
                    end
                sAck_1:
                    if (!kbd_rdy)
                    begin
                        kbd_ack <= 1'b0;
                        state <= sWait;
                    end
                default:
                        state <= sWait;
            endcase
        end
    end
    assign Data_Out = Kbd_Reg;

endmodule

