
/* verilator lint_off UNUSEDPARAM */

`timescale 1ns / 1ps

module pixel_gen
#(  // Parameters for Playground
    parameter TABLE_WIDTH       = 640,
    parameter TABLE_HEIGHT      = 480,
    parameter WALL_THICKNESS    = 8,
    parameter PADDLE_HEIGHT     = TABLE_HEIGHT/4,
    parameter PADDLE_VELOCITY   = 4,
    parameter BALL_VELOCITY_POS = +2,
    parameter BALL_VELOCITY_NEG = -2,
    parameter X_BIT_WIDTH = 10,
    parameter Y_BIT_WIDTH = 10
)
(   // Ports
    input clk,  
    input reset,    
    input up,
    input down,
    input video_on,
    input [X_BIT_WIDTH-1:0] x,
    input [Y_BIT_WIDTH-1:0] y,
    output reg [11:0] rgb
);

    // maximum x, y values in display area
    localparam X_MAX = TABLE_WIDTH-1;
    localparam Y_MAX = TABLE_HEIGHT-1;

    // create refresh tick
    wire refresh_tick;
    assign refresh_tick = ((y == Y_BIT_WIDTH'(TABLE_HEIGHT+1)) && (x == 0)) ? 1 : 0; // start of vsync(vertical retrace)

    // WALL
    // wall boundaries
    localparam X_WALL_L = TABLE_WIDTH/20;    
    localparam X_WALL_R = X_WALL_L + WALL_THICKNESS;
    
    // PADDLE
    // paddle horizontal boundaries
    localparam X_PAD_L = TABLE_WIDTH - X_WALL_L;
    localparam X_PAD_R = X_PAD_L + (WALL_THICKNESS/2);
    // paddle vertical boundary signals
    wire [Y_BIT_WIDTH-1:0] y_pad_t, y_pad_b;
    localparam PAD_HEIGHT = PADDLE_HEIGHT;
    // register to track top boundary and buffer
    reg [Y_BIT_WIDTH-1:0] y_pad_reg, y_pad_next;
    // paddle moving velocity when a button is pressed
    localparam PAD_VELOCITY = PADDLE_VELOCITY;     // change to speed up or slow down paddle movement
    
    // BALL
    // square rom boundaries
    localparam BALL_SIZE = 8;
    // ball horizontal boundary signals
    wire [X_BIT_WIDTH-1:0] x_ball_l, x_ball_r;
    // ball vertical boundary signals
    wire [Y_BIT_WIDTH-1:0] y_ball_t, y_ball_b;
    // register to track top left position
    reg [Y_BIT_WIDTH-1:0] y_ball_reg;
    reg [X_BIT_WIDTH-1:0] x_ball_reg;
    // signals for register buffer
    wire [Y_BIT_WIDTH-1:0] y_ball_next;
    reg [X_BIT_WIDTH-1:0] x_ball_next;
    // registers to track ball speed and buffers
    reg [X_BIT_WIDTH-1:0] x_delta_reg, x_delta_next;
    reg [Y_BIT_WIDTH-1:0] y_delta_reg, y_delta_next;
    // round ball from square image
    wire [2:0] rom_addr, rom_col;   // 3-bit rom address and rom column
    reg [7:0] rom_data;             // data at current rom address
    wire rom_bit;                   // signify when rom data is 1 or 0 for ball rgb control
    
    // Register Control
    always @(posedge clk or posedge reset)
        if(reset) begin
            y_pad_reg   <= 0;
            x_ball_reg  <= 0;
            y_ball_reg  <= 0;
            x_delta_reg <= 2;
            y_delta_reg <= 2;
        end
        else begin
            y_pad_reg   <= y_pad_next;
            x_ball_reg  <= x_ball_next;
            y_ball_reg  <= y_ball_next;
            x_delta_reg <= x_delta_next;
            y_delta_reg <= y_delta_next;
        end
    
    // ball rom
    always @*
        case(rom_addr)
            3'b000 :    rom_data = 8'b00111100; //   ****  
            3'b001 :    rom_data = 8'b01111110; //  ******
            3'b010 :    rom_data = 8'b11111111; // ********
            3'b011 :    rom_data = 8'b11111111; // ********
            3'b100 :    rom_data = 8'b11111111; // ********
            3'b101 :    rom_data = 8'b11111111; // ********
            3'b110 :    rom_data = 8'b01111110; //  ******
            3'b111 :    rom_data = 8'b00111100; //   ****
        endcase
    
    // OBJECT STATUS SIGNALS
    wire wall_on, pad_on, sq_ball_on, ball_on;
    wire [11:0] wall_rgb, pad_rgb, ball_rgb, bg_rgb;
    
    // pixel within wall boundaries
    assign wall_on = ((X_BIT_WIDTH'(X_WALL_L) <= x) && (x <= X_BIT_WIDTH'(X_WALL_R))) ? 1 : 0;
    
    // assign object colors
    assign wall_rgb = 12'hAAA;      // gray wall
    assign pad_rgb  = 12'hAAA;      // gray paddle
    assign ball_rgb = 12'hFFF;      // white ball
    assign bg_rgb   = 12'h111;      // close to black background

    // paddle 
    assign y_pad_t  = y_pad_reg;                             // paddle top position
    assign y_pad_b  = y_pad_t + Y_BIT_WIDTH'(PAD_HEIGHT) - 1;              // paddle bottom position
    assign pad_on   = (X_BIT_WIDTH'(X_PAD_L) <= x) && (x <= X_BIT_WIDTH'(X_PAD_R)) &&     // pixel within paddle boundaries
                      (y_pad_t <= y) && (y <= y_pad_b);

    // Paddle Control
    always @* begin
        y_pad_next = y_pad_reg;     // no move
        if(refresh_tick)
            if(up & (y_pad_t > Y_BIT_WIDTH'(PAD_VELOCITY)))
                y_pad_next = y_pad_reg - Y_BIT_WIDTH'(PAD_VELOCITY);  // move up
            else if(down & (y_pad_b < Y_BIT_WIDTH'(Y_MAX - PAD_VELOCITY)))
                y_pad_next = y_pad_reg + Y_BIT_WIDTH'(PAD_VELOCITY);  // move down
    end
    
    // rom data square boundaries
    assign x_ball_l = x_ball_reg;
    assign y_ball_t = y_ball_reg;
    assign x_ball_r = x_ball_l + BALL_SIZE - 1;
    assign y_ball_b = y_ball_t + BALL_SIZE - 1;
    // pixel within rom square boundaries
    assign sq_ball_on = (x_ball_l <= x) && (x <= x_ball_r) &&
                        (y_ball_t <= y) && (y <= y_ball_b);
    // map current pixel location to rom addr/col
    assign rom_addr = y[2:0] - y_ball_t[2:0];   // 3-bit address
    assign rom_col = x[2:0] - x_ball_l[2:0];    // 3-bit column index
    assign rom_bit = rom_data[rom_col];         // 1-bit signal rom data by column
    // pixel within round ball
    assign ball_on = sq_ball_on & rom_bit;      // within square boundaries AND rom data bit == 1
    // new ball position
    assign y_ball_next = (refresh_tick) ? y_ball_reg + y_delta_reg : y_ball_reg;
    //assign x_ball_next = (refresh_tick) ? x_ball_reg + x_delta_reg : x_ball_reg;
    always @*
    begin
        x_ball_next = x_ball_reg;
        if (refresh_tick)
        begin
            if ((x_ball_reg + x_delta_reg) > X_BIT_WIDTH'(TABLE_WIDTH))
                x_ball_next = 0;
            else
                x_ball_next = x_ball_reg + x_delta_reg;
        end
    end

    // change ball direction after collision
    always @* begin
        x_delta_next = x_delta_reg;
        y_delta_next = y_delta_reg;
        if(y_ball_t < 1)                                            // collide with top
            y_delta_next = Y_BIT_WIDTH'(BALL_VELOCITY_POS);         //  move down
        else if(y_ball_b > Y_BIT_WIDTH'(Y_MAX))                     // collide with bottom
            y_delta_next = Y_BIT_WIDTH'(BALL_VELOCITY_NEG);         //  move up
        else if(x_ball_l <= X_BIT_WIDTH'(X_WALL_R))                 // collide with wall
            x_delta_next = X_BIT_WIDTH'(BALL_VELOCITY_POS);         //  move right
        else if((X_BIT_WIDTH'(X_PAD_L) <= x_ball_r) &&
                (x_ball_r <= X_BIT_WIDTH'(X_PAD_R)) &&
                (y_pad_t <= y_ball_b) &&
                (y_ball_t <= y_pad_b))                              // collide with paddle
            x_delta_next = X_BIT_WIDTH'(BALL_VELOCITY_NEG);         //  move left
    end

    // rgb multiplexing circuit
    always @*
        if(~video_on)
            rgb = 12'h000;      // no value, blank
        else
            if(wall_on)
                rgb = wall_rgb;     // wall color
            else if(pad_on)
                rgb = pad_rgb;      // paddle color
            else if(ball_on)
                rgb = ball_rgb;     // ball color
            else
                rgb = bg_rgb;       // background
       
endmodule
