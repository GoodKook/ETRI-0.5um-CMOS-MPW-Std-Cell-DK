module space_invaders_engine_glcd (
    input wire clk,           // 시스템 클럭 (50MHz)
    input wire rst_n,         // Active-low 리셋
    input wire btn_left,      // 플레이어 왼쪽 이동
    input wire btn_right,     // 플레이어 오른쪽 이동
    input wire btn_fire,      // 미사일 발사

    // SDL2 및 SystemC 가상 LCD 연동용 버스 인터페이스
    output reg        lcd_write_en, 
    output reg [6:0]  lcd_x,        
    output reg [5:0]  lcd_y,        
    output reg        lcd_data      
);

    localparam SCREEN_WIDTH  = 7'd128;
    localparam SCREEN_HEIGHT = 6'd64;

    localparam CANNON_WIDTH   = 7'd10;
    localparam CANNON_HEIGHT  = 6'd4;
    localparam INVADER_WIDTH  = 7'd6;   
    localparam INVADER_HEIGHT = 6'd4;   
    localparam BULLET_WIDTH   = 7'd1;
    localparam BULLET_HEIGHT  = 6'd3;

    localparam INVADER_SPACING_X = 7'd10; 
    localparam INVADER_SPACING_Y = 6'd6;  
    localparam GRID_WIDTH        = (7'd4 * INVADER_SPACING_X) + INVADER_WIDTH; 

    localparam CANNON_Y = SCREEN_HEIGHT - 6'd6;

    localparam STATE_START = 2'b00;
    localparam STATE_PLAY  = 2'b01;
    localparam STATE_OVER  = 2'b10;
    reg [1:0] current_state, next_state;

    reg [6:0] cannon_x;
    reg [6:0] bullet_x;
    reg [5:0] bullet_y;
    reg       bullet_active;

    reg [6:0] inv_bullet_x;
    reg [5:0] inv_bullet_y;
    reg       inv_bullet_active;

    reg [6:0] group_x;          
    reg [5:0] group_y;          
    reg [24:0] invader_alive;   
    reg       invader_dir;      

    reg [19:0] game_tick_counter;
    wire game_tick = (game_tick_counter == 20'd833333); 

    reg [7:0] rand_counter;
    reg [6:0] scan_x;
    reg [5:0] scan_y;

    integer r, c; 
    reg [6:0] t_invader_x;
    reg [5:0] t_invader_y;
    reg       hit_detected;
    
    reg [2:0] shoot_col; 
    reg [2:0] shoot_row;

    wire draw_cannon;
    wire draw_bullet;
    wire draw_inv_bullet;
    reg  draw_invader;

    reg [6:0] curr_inv_x;
    reg [5:0] curr_inv_y;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            game_tick_counter <= 20'b0;
            rand_counter      <= 8'b0;
        end else begin
            rand_counter      <= rand_counter + 1'b1;
            if (game_tick) game_tick_counter <= 20'b0;
            else           game_tick_counter <= game_tick_counter + 1'b1;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) current_state <= STATE_START;
        else        current_state <= next_state;
    end

    always @(*) begin
        next_state = current_state;
        case (current_state)
            STATE_START: if (btn_fire) next_state = STATE_PLAY;
            STATE_PLAY:  if (invader_alive == 25'b0) next_state = STATE_OVER;
            STATE_OVER:  if (btn_fire) next_state = STATE_START;
            default:     next_state = STATE_START;
        endcase
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cannon_x          <= 7'd59;
            bullet_active     <= 1'b0;
            bullet_x          <= 7'b0;
            bullet_y          <= 6'b0;
            inv_bullet_active <= 1'b0;
            inv_bullet_x      <= 7'b0;
            inv_bullet_y      <= 6'b0;
            group_x           <= 7'd10; 
            group_y           <= 6'd6;  
            invader_dir       <= 1'b1;  
            invader_alive     <= 25'h1FFFFFF; 
        end 
        else if (current_state == STATE_PLAY && game_tick) begin
            if (btn_left && (cannon_x > 7'd1))
                cannon_x <= cannon_x - 1'b1;
            if (btn_right && (cannon_x < SCREEN_WIDTH - CANNON_WIDTH - 7'd1))
                cannon_x <= cannon_x + 1'b1;

            if (btn_fire && !bullet_active) begin
                bullet_active <= 1'b1;
                bullet_x      <= cannon_x + 7'd4;
                bullet_y      <= CANNON_Y - BULLET_HEIGHT;
            end 
            else if (bullet_active) begin
                if (bullet_y <= 6'd2) bullet_active <= 1'b0;
                else                  bullet_y <= bullet_y - 1'b1;
            end

            if (invader_dir) begin
                if (group_x >= SCREEN_WIDTH - GRID_WIDTH - 7'd2) begin
                    invader_dir <= 1'b0;
                    group_y     <= group_y + 6'd2; 
                end else begin
                    group_x <= group_x + 1'b1;
                end
            end else begin
                if (group_x <= 7'd2) begin
                    invader_dir <= 1'b1;
                    group_y     <= group_y + 6'd2; 
                end else begin
                    group_x <= group_x - 1'b1;
                end
            end

            if (!inv_bullet_active && (rand_counter[3:0] == 4'hF)) begin
                shoot_col = (rand_counter[6:4] >= 3'd5) ? (rand_counter[6:4] - 3'd5) : rand_counter[6:4]; 
                hit_detected = 1'b0;
                for (r = 4; r >= 0; r = r - 1) begin
                    if (!hit_detected) begin
                        shoot_row = r[2:0];
                        if (invader_alive[(shoot_row * 3'd5) + shoot_col]) begin
                            inv_bullet_active <= 1'b1;
                            inv_bullet_x      <= group_x + ({4'b0, shoot_col} * INVADER_SPACING_X) + 7'd2;
                            inv_bullet_y      <= group_y + ({3'b0, shoot_row} * INVADER_SPACING_Y) + INVADER_HEIGHT;
                            hit_detected       = 1'b1;
                        end
                    end
                end
            end

            if (inv_bullet_active) begin
                if (inv_bullet_y >= SCREEN_HEIGHT - 6'd2) begin
                    inv_bullet_active <= 1'b0; 
                end else begin
                    inv_bullet_y <= inv_bullet_y + 1'b1; 
                end
            end

            if (bullet_active) begin
                hit_detected = 1'b0;
                for (r = 0; r < 5; r = r + 1) begin
                    for (c = 0; c < 5; c = c + 1) begin
                        if (!hit_detected && invader_alive[r*5 + c]) begin
                            t_invader_x = group_x + (c[6:0] * INVADER_SPACING_X);
                            t_invader_y = group_y + (r[5:0] * INVADER_SPACING_Y);
                            
                            if ((bullet_x >= t_invader_x) && (bullet_x <= t_invader_x + INVADER_WIDTH) &&
                                (bullet_y >= t_invader_y) && (bullet_y <= t_invader_y + INVADER_HEIGHT)) begin
                                invader_alive[r*5 + c] <= 1'b0; 
                                bullet_active          <= 1'b0; 
                                hit_detected           = 1'b1;  
                            end
                        end
                    end
                end
            end

            if (inv_bullet_active) begin
                if ((inv_bullet_x >= cannon_x) && (inv_bullet_x <= cannon_x + CANNON_WIDTH) &&
                    (inv_bullet_y >= CANNON_Y) && (inv_bullet_y <= CANNON_Y + CANNON_HEIGHT)) begin
                    inv_bullet_active <= 1'b0;
                    current_state     <= STATE_OVER; 
                end
            end
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            scan_x <= 7'b0;
            scan_y <= 6'b0;
        end else begin
            if (scan_x == SCREEN_WIDTH - 1'b1) begin
                scan_x <= 7'b0;
                if (scan_y == SCREEN_HEIGHT - 1'b1) scan_y <= 6'b0;
                else                                scan_y <= scan_y + 1'b1;
            end else begin
                scan_x <= scan_x + 1'b1;
            end
        end
    end

    assign draw_cannon = (scan_x >= cannon_x) && (scan_x < cannon_x + CANNON_WIDTH) &&
                         (scan_y >= CANNON_Y) && (scan_y < CANNON_Y + CANNON_HEIGHT);
                       
    assign draw_bullet = bullet_active && 
                         (scan_x >= bullet_x) && (scan_x < bullet_x + BULLET_WIDTH) &&
                         (scan_y >= bullet_y) && (scan_y < bullet_y + BULLET_HEIGHT);

    assign draw_inv_bullet = inv_bullet_active &&
                             (scan_x >= inv_bullet_x) && (scan_x < inv_bullet_x + BULLET_WIDTH) &&
                             (scan_y >= inv_bullet_y) && (scan_y < inv_bullet_y + BULLET_HEIGHT);

    always @(*) begin
        draw_invader = 1'b0;
        curr_inv_x   = 7'b0;
        curr_inv_y   = 6'b0;
        for (r = 0; r < 5; r = r + 1) begin
            for (c = 0; c < 5; c = c + 1) begin
                if (invader_alive[r*5 + c]) begin
                    curr_inv_x = group_x + (c[6:0] * INVADER_SPACING_X);
                    curr_inv_y = group_y + (r[5:0] * INVADER_SPACING_Y);
                    
                    if ((scan_x >= curr_inv_x) && (scan_x < curr_inv_x + INVADER_WIDTH) &&
                        (scan_y >= curr_inv_y) && (scan_y < curr_inv_y + INVADER_HEIGHT)) begin
                        draw_invader = 1'b1;
                    end
                end
            end
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            lcd_write_en <= 1'b0;
            lcd_x        <= 7'b0;
            lcd_y        <= 6'b0;
            lcd_data     <= 1'b0;
        end else begin
            lcd_write_en <= 1'b1; 
            lcd_x        <= scan_x;
            lcd_y        <= scan_y;

            if (current_state == STATE_PLAY) begin
                lcd_data <= (draw_cannon || draw_bullet || draw_invader || draw_inv_bullet);
            end else if (current_state == STATE_START) begin
                lcd_data <= (scan_x ^ scan_y); 
            end else begin
                lcd_data <= (scan_x == 7'd0 || scan_x == SCREEN_WIDTH - 1'b1 || scan_y == 6'd0 || scan_y == SCREEN_HEIGHT - 1'b1);
            end
        end
    end
endmodule
