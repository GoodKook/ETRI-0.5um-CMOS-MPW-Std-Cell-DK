//
// Filename: space_invaders_engine.v
//
//----------------------------------------------------------------------------
// Core Game Logic and Display Matrix for Space Invaders

module space_invaders_engine (
    input wire clk,           // System clock (e.g., 25MHz or 50MHz)
    input wire rst_n,         // Active-low reset
    input wire btn_left,      // Player move left
    input wire btn_right,     // Player move right
    input wire btn_fire,      // Player shoot
    input wire [9:0] vga_x,   // Current VGA horizontal pixel coordinate (0-639)
    input wire [9:0] vga_y,   // Current VGA vertical pixel coordinate (0-479)
    input wire video_on,      // VGA video active region indicator
    output reg [2:0] rgb      // Output Color to DAC: [2]=Red, [1]=Green, [0]=Blue
);

    // Screen Resolution Parameters (640x480 standard)
    localparam SCREEN_WIDTH  = 10'd640;
    localparam SCREEN_HEIGHT = 10'd480;

    // Game Object Dimensions
    localparam CANNON_WIDTH   = 10'd30;
    localparam CANNON_HEIGHT  = 10'd12;
    localparam INVADER_WIDTH  = 10'd20;
    localparam INVADER_HEIGHT = 10'd16;
    localparam BULLET_WIDTH   = 10'd3;
    localparam BULLET_HEIGHT  = 10'd8;

    // Game Speeds & Frame Timing
    localparam CANNON_SPEED   = 10'd3;
    localparam BULLET_SPEED   = 10'd6;
    
    // Game States
    localparam STATE_START = 2'b00;
    localparam STATE_PLAY  = 2'b01;
    localparam STATE_OVER  = 2'b10;
    reg [1:0] current_state, next_state;

    // --- Object Positions & States ---
    reg [9:0] cannon_x;
    localparam CANNON_Y = SCREEN_HEIGHT - 10'd40;

    // Single Player Bullet Configuration
    reg [9:0] bullet_x;
    reg [9:0] bullet_y;
    reg bullet_active;

    // Invader Grid Configuration (Single row example for simplicity)
    // 5 Invaders tracked via simple presence bits
    reg [9:0] invader_x [0:4];
    reg [9:0] invader_y;
    reg [4:0] invader_alive; 
    reg invader_dir; // 0 = Left, 1 = Right

    // Game Refresh Registers (64Hz tick)
    reg [19:0] frame_counter;
    wire frame_tick = (frame_counter == 20'd400000); // Scaled based on clock speed

    // --- Hardware Logic ---

    // 1. Clock & Frame Dividers
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            frame_counter <= 20'b0;
        else if (frame_counter >= 20'd400000)
            frame_counter <= 20'b0;
        else
            frame_counter <= frame_counter + 1'b1;
    end

    // 2. Finite State Machine (FSM)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= STATE_START;
        else
            current_state <= next_state;
    end

    always @(*) begin
        next_state = current_state;
        case (current_state)
            STATE_START: if (btn_fire) next_state = STATE_PLAY;
            STATE_PLAY:  if (invader_alive == 5'b00000) next_state = STATE_OVER; // Win/Loss shortcut
            STATE_OVER:  if (btn_fire) next_state = STATE_START;
            default:     next_state = STATE_START;
        endcase
    end

    // 3. Game Engine Registers & Motion Logic
    integer i;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cannon_x      <= (SCREEN_WIDTH / 2) - (CANNON_WIDTH / 2);
            bullet_active <= 1'b0;
            bullet_x      <= 10'b0;
            bullet_y      <= 10'b0;
            invader_y     <= 10'd50;
            invader_dir   <= 1'b1;
            invader_alive <= 5'b11111;
            
            for(i=0; i<5; i=i+1) begin
                invader_x[i] <= 10'd50 + (i * 40);
            end
        end 
        else if (current_state == STATE_PLAY && frame_tick) begin
            
            // --- Player Movement ---
            if (btn_left && (cannon_x > CANNON_SPEED))
                cannon_x <= cannon_x - CANNON_SPEED;
            if (btn_right && (cannon_x < SCREEN_WIDTH - CANNON_WIDTH - CANNON_SPEED))
                cannon_x <= cannon_x + CANNON_SPEED;

            // --- Player Bullet Logic ---
            if (btn_fire && !bullet_active) begin
                bullet_active <= 1'b1;
                bullet_x      <= cannon_x + (CANNON_WIDTH / 2);
                bullet_y      <= CANNON_Y - BULLET_HEIGHT;
            end 
            else if (bullet_active) begin
                if (bullet_y <= BULLET_SPEED)
                    bullet_active <= 1'b0;
                else
                    bullet_y <= bullet_y - BULLET_SPEED;
            end

            // --- Invaders Global Horizontal Movement ---
            if (invader_dir == 1'b1) begin // Move Right
                if (invader_x[4] >= SCREEN_WIDTH - INVADER_WIDTH - 10'd5) begin
                    invader_dir <= 1'b0;
                    invader_y   <= invader_y + 10'd10; // Drop down
                end else begin
                    for(i=0; i<5; i=i+1) invader_x[i] <= invader_x[i] + 1'b1;
                end
            end 
            else begin // Move Left
                if (invader_x[0] <= 10'd5) begin
                    invader_dir <= 1'b1;
                    invader_y   <= invader_y + 10'd10; // Drop down
                end else begin
                    for(i=0; i<5; i=i+1) invader_x[i] <= invader_x[i] - 1'b1;
                end
            end

            // --- Collision Matrix (Bullet vs Invaders) ---
            if (bullet_active) begin
                for(i=0; i<5; i=i+1) begin
                    if (invader_alive[i]) begin
                        if ((bullet_x >= invader_x[i]) && (bullet_x <= invader_x[i] + INVADER_WIDTH) &&
                            (bullet_y >= invader_y) && (bullet_y <= invader_y + INVADER_HEIGHT)) begin
                            invader_alive[i] <= 1'b0;  // Kill Invader
                            bullet_active    <= 1'b0;  // Destroy Bullet
                        end
                    end
                end
            end
            
        end
    end

    // 4. Video Generation & Pixel Multiplexer (On-The-Fly Generation)
    wire cannon_draw = (vga_x >= cannon_x) && (vga_x < cannon_x + CANNON_WIDTH) &&
                       (vga_y >= CANNON_Y) && (vga_y < CANNON_Y + CANNON_HEIGHT);
                       
    wire bullet_draw = bullet_active && 
                       (vga_x >= bullet_x) && (vga_x < bullet_x + BULLET_WIDTH) &&
                       (vga_y >= bullet_y) && (vga_y < bullet_y + BULLET_HEIGHT);

    reg invader_draw;
    always @(*) begin
        invader_draw = 1'b0;
        for(i=0; i<5; i=i+1) begin
            if (invader_alive[i]) begin
                if ((vga_x >= invader_x[i]) && (vga_x < invader_x[i] + INVADER_WIDTH) &&
                    (vga_y >= invader_y) && (vga_y < invader_y + INVADER_HEIGHT)) begin
                    invader_draw = 1'b1;
                end
            end
        end
    end

    // Assign dynamic RGB values relative to grid space scanning
    always @(*) begin
        if (!video_on) begin
            rgb = 3'b000; // Blanking phase (Black)
        end 
        else begin
            case (current_state)
                STATE_START: begin
                    rgb = 3'b001; // Solid blue splash screen
                end
                
                STATE_PLAY: begin
                    if (cannon_draw)
                        rgb = 3'b010; // Player Cannon is Green
                    else if (bullet_draw)
                        rgb = 3'b111; // Bullet is White
                    else if (invader_draw)
                        rgb = 3'b100; // Invader Grid is Red
                    else
                        rgb = 3'b000; // Background is Black
                end
                
                STATE_OVER: begin
                    rgb = 3'b100; // Game Over Screen (Solid Red)
                end
                
                default: rgb = 3'b000;
            endcase
        end
    end

endmodule
