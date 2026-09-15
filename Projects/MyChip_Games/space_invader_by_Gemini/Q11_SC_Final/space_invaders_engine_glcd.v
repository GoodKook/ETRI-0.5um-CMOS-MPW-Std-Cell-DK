// space_invaders_engine_glcd.v
module space_invaders_engine_glcd (
    input wire clk,           // 시스템 클럭 (50MHz)
    input wire rst_n,         // Active-low 리셋
    input wire btn_left,      // 플레이어 왼쪽 이동
    input wire btn_right,     // 플레이어 오른쪽 이동
    input wire btn_fire,      // 미사일 발사

    // SystemC 가상 LCD 인터페이스 출력 버스
    output reg        lcd_write_en, 
    output reg [6:0]  lcd_x,        // 0 ~ 127
    output reg [5:0]  lcd_y,        // 0 ~ 63
    output reg        lcd_data      
);

    localparam SCREEN_WIDTH  = 7'd128;
    localparam SCREEN_HEIGHT = 6'd64;

    localparam OBJ_WIDTH      = 7'd8;
    localparam OBJ_HEIGHT     = 6'd8;
    localparam BULLET_WIDTH   = 7'd1;
    localparam BULLET_HEIGHT  = 6'd3;

    localparam INVADER_SPACING_X = 7'd12; 
    localparam INVADER_SPACING_Y = 6'd8;  
    localparam GRID_WIDTH        = (7'd4 * INVADER_SPACING_X) + OBJ_WIDTH; 

    localparam CANNON_Y = SCREEN_HEIGHT - 6'd10; 

    localparam STATE_START = 2'b00;
    localparam STATE_PLAY  = 2'b01;
    localparam STATE_DIE   = 2'b10; 
    localparam STATE_OVER  = 2'b11; 
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

    reg [7:0] score_bcd;        
    reg [1:0] player_lives;     

    reg [19:0] game_tick_counter;
    wire game_tick = (game_tick_counter == 20'd833333); 
    reg [7:0] rand_counter;
    reg [5:0] die_timer;        

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
    reg  draw_hud_score;
    reg  draw_hud_life;

    reg [6:0] curr_inv_x;
    reg [5:0] curr_inv_y;

    reg [7:0] sprite_invader [0:7];
    reg [7:0] sprite_cannon  [0:7];
    reg [7:0] font_rom       [0:79]; 

    initial begin
        sprite_invader[0] = 8'b00011000; sprite_invader[1] = 8'b00111100;
        sprite_invader[2] = 8'b01111110; sprite_invader[3] = 8'b11011011;
        sprite_invader[4] = 8'b11111111; sprite_invader[5] = 8'b00100100;
        sprite_invader[6] = 8'b01011010; sprite_invader[7] = 8'b10100101;

        sprite_cannon[0]  = 8'b00001000; sprite_cannon[1]  = 8'b00011100;
        sprite_cannon[2]  = 8'b00011100; sprite_cannon[3]  = 8'b01111111;
        sprite_cannon[4]  = 8'b11111111; sprite_cannon[5]  = 8'b11111111;
        sprite_cannon[6]  = 8'b11111111; sprite_cannon[7]  = 8'b11111111;

        font_rom[0]=8'b01111100; font_rom[1]=8'b11000110; font_rom[2]=8'b11000110; font_rom[3]=8'b11000110; font_rom[4]=8'b11000110; font_rom[5]=8'b11000110; font_rom[6]=8'b11000110; font_rom[7]=8'b01111100;
        font_rom[8]=8'b00011000; font_rom[9]=8'b00111000; font_rom[10]=8'b00011000; font_rom[11]=8'b00011000; font_rom[12]=8'b00011000; font_rom[13]=8'b00011000; font_rom[14]=8'b00011000; font_rom[15]=8'b00111100;
        font_rom[16]=8'b01111100; font_rom[17]=8'b11000110; font_rom[18]=8'b00000110; font_rom[19]=8'b00001100; font_rom[20]=8'b00110000; font_rom[21]=8'b01100000; font_rom[22]=8'b11000000; font_rom[23]=8'b11111111;
        font_rom[24]=8'b11111111; font_rom[25]=8'b00000110; font_rom[26]=8'b00001100; font_rom[27]=8'b00011100; font_rom[28]=8'b00001100; font_rom[29]=8'b00000110; font_rom[30]=8'b11000110; font_rom[31]=8'b01111100;
        font_rom[32]=8'b00001100; font_rom[33]=8'b00011100; font_rom[34]=8'b00101100; font_rom[35]=8'b01001100; font_rom[36]=8'b11111111; font_rom[37]=8'b00001100; font_rom[38]=8'b00001100; font_rom[39]=8'b00001100;
        font_rom[40]=8'b11111111; font_rom[41]=8'b11000000; font_rom[42]=8'b11111100; font_rom[43]=8'b00000110; font_rom[44]=8'b00000110; font_rom[45]=8'b00000110; font_rom[46]=8'b11000110; font_rom[47]=8'b01111100;
        font_rom[48]=8'b00111100; font_rom[49]=8'b01100000; font_rom[50]=8'b11000000; font_rom[51]=8'b11111100; font_rom[52]=8'b11000110; font_rom[53]=8'b11000110; font_rom[54]=8'b11000110; font_rom[55]=8'b01111100;
        font_rom[56]=8'b11111111; font_rom[57]=8'b00000110; font_rom[58]=8'b00001100; font_rom[59]=8'b00010000; font_rom[60]=8'b00100000; font_rom[61]=8'b01000000; font_rom[62]=8'b01000000; font_rom[63]=8'b01000000;
        font_rom[64]=8'b01111100; font_rom[65]=8'b11000110; font_rom[66]=8'b11000110; font_rom[67]=8'b01111100; font_rom[68]=8'b11000110; font_rom[69]=8'b11000110; font_rom[70]=8'b11000110; font_rom[71]=8'b01111100;
        font_rom[72]=8'b01111100; font_rom[73]=8'b11000110; font_rom[74]=8'b11000110; font_rom[75]=8'b11111110; font_rom[76]=8'b00000110; font_rom[77]=8'b00000110; font_rom[78]=8'b11001100; font_rom[79]=8'b01111000;
    end

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
            STATE_DIE:   if (die_timer == 6'd60) begin
                             if (player_lives == 2'b0) next_state = STATE_OVER;
                             else                      next_state = STATE_PLAY;
                         end
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
            group_y           <= 6'd10; 
            invader_dir       <= 1'b1;  
            invader_alive     <= 25'h1FFFFFF; 
            score_bcd         <= 8'h00; 
            player_lives      <= 2'd3;  
            die_timer         <= 6'b0;
        end 
        else begin
            case (current_state)
                STATE_START: begin
                    player_lives      <= 2'd3;
                    score_bcd         <= 8'h00;
                    invader_alive     <= 25'h1FFFFFF;
                    group_x           <= 7'd10;
                    group_y           <= 6'd10;
                    bullet_active     <= 1'b0;
                    inv_bullet_active <= 1'b0;
                    die_timer         <= 6'b0;
                    cannon_x          <= 7'd59; 
                end

                STATE_PLAY: begin
                    die_timer <= 6'b0;

                    if (btn_left && (cannon_x > 7'd1))
                        cannon_x <= cannon_x - 1'b1; 
                    if (btn_right && (cannon_x < (SCREEN_WIDTH - OBJ_WIDTH - 7'd2)))
                        cannon_x <= cannon_x + 1'b1; 

                    if (btn_fire && !bullet_active) begin
                        bullet_active <= 1'b1;
                        bullet_x      <= cannon_x + 7'd3;
                        bullet_y      <= CANNON_Y - BULLET_HEIGHT;
                    end 
                    else if (bullet_active) begin
                        if (bullet_y <= 6'd2) bullet_active <= 1'b0;
                        else                  bullet_y <= bullet_y - 1'b1;
                    end

                    if (game_tick) begin
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
                    end

                    if (!inv_bullet_active && (rand_counter[3:0] == 4'hF) && game_tick) begin
                        shoot_col = (rand_counter[6:4] >= 3'd5) ? (rand_counter[6:4] - 3'd5) : rand_counter[6:4]; 
                        hit_detected = 1'b0;
                        for (r = 4; r >= 0; r = r - 1) begin
                            if (!hit_detected) begin
                                shoot_row = r[2:0];
                                if (invader_alive[(shoot_row * 3'd5) + shoot_col]) begin
                                    inv_bullet_active <= 1'b1;
                                    inv_bullet_x      <= group_x + ({4'b0, shoot_col} * INVADER_SPACING_X) + 7'd3;
                                    inv_bullet_y      <= group_y + ({3'b0, shoot_row} * INVADER_SPACING_Y) + OBJ_HEIGHT;
                                    hit_detected       = 1'b1;
                                end
                            end
                        end
                    end

                    if (inv_bullet_active && game_tick) begin
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
                                    if ((bullet_x >= t_invader_x) && (bullet_x <= t_invader_x + OBJ_WIDTH) &&
                                            (bullet_y >= t_invader_y) && (bullet_y <= t_invader_y + OBJ_HEIGHT)) begin
                                        invader_alive[r*5 + c] <= 1'b0;
                                        bullet_active          <= 1'b0;
                                        hit_detected           = 1'b1;
                                        if (score_bcd[3:0] == 4'd9) begin
                                            score_bcd[3:0] <= 4'd0;
                                            score_bcd[7:4] <= score_bcd[7:4] + 1'b1;
                                        end else begin
                                            score_bcd[3:0] <= score_bcd[3:0] + 1'b1;
                                        end
                                    end
                                end
                            end
                        end
                    end
                    if (inv_bullet_active) begin
                        if ((inv_bullet_x >= cannon_x) && (inv_bullet_x <= cannon_x + OBJ_WIDTH) &&
                                (inv_bullet_y >= CANNON_Y) && (inv_bullet_y <= CANNON_Y + OBJ_HEIGHT)) begin
                            inv_bullet_active <= 1'b0;
                            player_lives      <= player_lives - 1'b1;
                            current_state     <= STATE_DIE;
                        end
                    end
                end
                
                STATE_DIE: begin
                    bullet_active     <= 1'b0;
                    inv_bullet_active <= 1'b0;
                    if (game_tick) begin
                        die_timer <= die_timer + 1'b1;
                    end
                end
                
                STATE_OVER: begin
                end
            endcase
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

    assign draw_bullet = bullet_active &&
                        (scan_x >= bullet_x) && (scan_x < bullet_x + BULLET_WIDTH) &&
                        (scan_y >= bullet_y) && (scan_y < bullet_y + BULLET_HEIGHT);

    assign draw_inv_bullet = inv_bullet_active &&
                        (scan_x >= inv_bullet_x) && (scan_x < inv_bullet_x + BULLET_WIDTH) &&
                        (scan_y >= inv_bullet_y) && (scan_y < inv_bullet_y + BULLET_HEIGHT);
                        
    assign draw_cannon = (current_state != STATE_DIE) &&
                        (scan_x >= cannon_x) && (scan_x < cannon_x + OBJ_WIDTH) &&
                        (scan_y >= CANNON_Y) && (scan_y < CANNON_Y + OBJ_HEIGHT) &&
                        sprite_cannon[scan_y - CANNON_Y][3'd7 - (scan_x - cannon_x)];

    always @(*) begin
        draw_invader = 1'b0;
        curr_inv_x   = 7'b0;
        curr_inv_y   = 6'b0;
        for (r = 0; r < 5; r = r + 1) begin
            for (c = 0; c < 5; c = c + 1) begin
                if (invader_alive[r*5 + c]) begin
                    curr_inv_x = group_x + (c[6:0] * INVADER_SPACING_X);
                    curr_inv_y = group_y + (r[5:0] * INVADER_SPACING_Y);
                    if ((scan_x >= curr_inv_x) && (scan_x < curr_inv_x + OBJ_WIDTH) &&
                            (scan_y >= curr_inv_y) && (scan_y < curr_inv_y + OBJ_HEIGHT)) begin
                        if (sprite_invader[scan_y - curr_inv_y][3'd7 - (scan_x - curr_inv_x)])
                            draw_invader = 1'b1;
                    end
                end
            end
        end
    end
    
    reg [3:0] active_digit;
    always @(*) begin
        draw_hud_score = 1'b0;
        active_digit   = 4'd0;
        if (scan_y >= 6'd1 && scan_y < 6'd9) begin
            if (scan_x >= 7'd2 && scan_x < 7'd10) begin
                active_digit = score_bcd[7:4];
                if (font_rom[({28'b0, active_digit} * 4'd8) + (scan_y - 6'd1)][3'd7 - (scan_x - 7'd2)])
                    draw_hud_score = 1'b1;
            end
            else if (scan_x >= 7'd11 && scan_x < 7'd19) begin
                active_digit = score_bcd[3:0];
                if (font_rom[({28'b0, active_digit} * 4'd8) + (scan_y - 6'd1)][3'd7 - (scan_x - 7'd11)])
                    draw_hud_score = 1'b1;
            end
        end
    end
    
    always @(*) begin
        draw_hud_life = 1'b0;
        if (scan_y >= 6'd1 && scan_y < 6'd9) begin
            if (player_lives >= 2'd1 && scan_x >= 7'd100 && scan_x < 7'd108) begin
                if (sprite_cannon[scan_y - 6'd1][3'd7 - (scan_x - 7'd100)]) draw_hud_life = 1'b1;
            end
            if (player_lives >= 2'd2 && scan_x >= 7'd110 && scan_x < 7'd118) begin
                if (sprite_cannon[scan_y - 6'd1][3'd7 - (scan_x - 7'd110)]) draw_hud_life = 1'b1;
            end
            if (player_lives >= 2'd3 && scan_x >= 7'd120 && scan_x < 7'd128) begin
                if (sprite_cannon[scan_y - 6'd1][3'd7 - (scan_x - 7'd120)]) draw_hud_life = 1'b1;
            end
        end
    end
    
    always @(posedge clk) begin
        lcd_write_en <= 1'b1;
        lcd_x        <= scan_x;
        lcd_y        <= scan_y;
        if (current_state == STATE_PLAY || current_state == STATE_DIE) begin
            lcd_data <= (draw_cannon || draw_bullet || draw_invader || draw_inv_bullet || draw_hud_score || draw_hud_life);
        end else if (current_state == STATE_START) begin
            lcd_data <= (scan_x ^ scan_y);
        end else begin
            lcd_data <= (scan_x == 7'd0 || scan_x == SCREEN_WIDTH - 1'b1 || scan_y == 6'd0 || scan_y == SCREEN_HEIGHT - 1'b1 || draw_hud_score);
        end
    end

endmodule
