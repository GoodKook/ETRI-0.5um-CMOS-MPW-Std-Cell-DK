module asteroids_full_core (
    input wire clk,             // 시스템 픽셀 클럭 (예: 약 768kHz)
    input wire rst_n,           // 리셋 (Active Low)
    
    // 조작 키 입력 (디바운싱 완료 신호 가정)
    input wire btn_left,        // 좌회전
    input wire btn_right,       // 우회전
    input wire btn_thrust,      // 전진 가속
    input wire btn_fire,        // 총알 발사
    input wire btn_start,       // 게임 오버 후 재시작 버튼
    
    // 128x64 타이밍 및 데이터 출력 신호
    output reg hsync,           
    output reg vsync,           
    output wire video_on,       // 유효 픽셀 데이터 활성화 신호 (Data Enable)
    output reg pixel_data       
);

    //========================================================================
    // 1. 128x64 표준 디스플레이 타이밍 발생기
    //========================================================================
    localparam H_ACTIVE = 128;
    localparam H_FRONT  = 4;
    localparam H_SYNC   = 12;
    localparam H_BACK   = 16;
    localparam H_TOTAL  = 160;

    localparam V_ACTIVE = 64;
    localparam V_FRONT  = 2;
    localparam V_SYNC   = 4;
    localparam V_BACK   = 10;
    localparam V_TOTAL  = 80;

    reg [7:0] h_cnt; 
    reg [6:0] v_cnt; 

    assign video_on = (h_cnt < H_ACTIVE) && (v_cnt < V_ACTIVE);
    
    wire [6:0] pixel_x = h_cnt[6:0]; 
    wire [5:0] pixel_y = v_cnt[5:0]; 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin 
            h_cnt <= 8'd0; 
            v_cnt <= 7'd0; 
        end else begin
            if (h_cnt == H_TOTAL - 1) begin
                h_cnt <= 8'd0;
                if (v_cnt == V_TOTAL - 1) v_cnt <= 7'd0;
                else v_cnt <= v_cnt + 1'b1;
            end else begin
                h_cnt <= h_cnt + 1'b1;
            end
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            hsync <= 1'b1;
            vsync <= 1'b1;
        end else begin
            hsync <= ~((h_cnt >= H_ACTIVE + H_FRONT) && (h_cnt < H_ACTIVE + H_FRONT + H_SYNC));
            vsync <= ~((v_cnt >= V_ACTIVE + V_FRONT) && (v_cnt < V_ACTIVE + V_FRONT + V_SYNC));
        end
    end

    //========================================================================
    // 2. LFSR (난수 생성기)
    //========================================================================
    reg [14:0] lfsr;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) lfsr <= 15'h7FFF;
        else lfsr <= {lfsr[13:0], lfsr[14] ^ lfsr[13]};
    end

    //========================================================================
    // 3. 게임 상태 및 조작 동기화 레지스터
    //========================================================================
    localparam STATE_PLAY     = 2'b00;
    localparam STATE_RESPAWN  = 2'b01; 
    localparam STATE_GAMEOVER = 2'b10;

    reg [1:0]  game_state;
    reg [1:0]  lives;             
    reg [5:0]  respawn_timer;     

    reg reg_left, reg_right, reg_thrust, reg_fire, reg_start, reg_fire_old;
    reg bul_fired;

    //========================================================================
    // 4. 안전 가속도 및 부호 제어용 객체 레지스터 (물리 변수 스케일 재가공)
    //========================================================================
    // 직관적인 픽셀 렌더링을 위해 위치 정수부(7비트/6비트)와 소수부(6비트) 분리 설계
    reg [6:0] ship_x;      reg [5:0] ship_y;
    reg signed [7:0] ship_vx; reg signed [7:0] ship_vy;
    reg [5:0] ship_x_frac; reg [5:0] ship_y_frac;
    reg [2:0] ship_angle;

    reg [6:0] ast_x0, ast_x1, ast_x2;
    reg [5:0] ast_y0, ast_y1, ast_y2;
    reg signed [5:0] ast_vx0, ast_vx1, ast_vx2;
    reg signed [5:0] ast_vy0, ast_vy1, ast_vy2;
    reg [5:0] ast_xf0, ast_xf1, ast_xf2;
    reg [5:0] ast_yf0, ast_yf1, ast_yf2;
    reg       ast_active0, ast_active1, ast_active2;

    reg [6:0] bul_x0, bul_x1, bul_x2;
    reg [5:0] bul_y0, bul_y1, bul_y2;
    reg signed [6:0] bul_vx0, bul_vx1, bul_vx2;
    reg signed [6:0] bul_vy0, bul_vy1, bul_vy2;
    reg [5:0] bul_life0, bul_life1, bul_life2;

    reg signed [4:0] acc_x_val;
    reg signed [4:0] acc_y_val;
    always @(*) begin
        case (ship_angle)
            3'd0: begin acc_x_val = 5'sd0;  acc_y_val = -5'sd16; end
            3'd1: begin acc_x_val = 5'sd11; acc_y_val = -5'sd11; end
            3'd2: begin acc_x_val = 5'sd16; acc_y_val = 5'sd0;   end
            3'd3: begin acc_x_val = 5'sd11; acc_y_val = 5'sd11;  end
            3'd4: begin acc_x_val = 5'sd0;  acc_y_val = 5'sd16;  end
            3'd5: begin acc_x_val = -5'sd11; acc_y_val = 5'sd11;  end
            3'd6: begin acc_x_val = -5'sd16; acc_y_val = 5'sd0;   end
            3'd7: begin acc_x_val = -5'sd11; acc_y_val = -5'sd11; end
            default: begin acc_x_val = 5'sd0; acc_y_val = 5'sd0; end
        endcase
    end

    //========================================================================
    // 5. 메인 핵심 동기 물리 연산 엔진 (V-Blank 안정한 구역 진입점 튜닝)
    //========================================================================
    // 화면 주사가 끝나는 v_cnt == 64 시점에 연산을 돌려 프리징을 원천 제거합니다.
    wire frame_update_tick = (h_cnt == 8'd0) && (v_cnt == 7'd64);
    reg signed [13:0] calc_x, calc_y;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            game_state     <= STATE_PLAY;
            lives          <= 2'd3;
            respawn_timer  <= 6'd0;
            reg_left <= 1'b0; reg_right <= 1'b0; reg_thrust <= 1'b0; reg_fire <= 1'b0; reg_start <= 1'b0; reg_fire_old <= 1'b0; bul_fired <= 1'b0;
            
            ship_x <= 7'd64; ship_y <= 6'd32; ship_vx <= 8'sd0; ship_vy <= 8'sd0; ship_x_frac <= 6'd0; ship_y_frac <= 6'd0; ship_angle <= 3'd0;
            
            ast_x0 <= 7'd20;  ast_y0 <= 6'd25; ast_vx0 <= 6'sd16; ast_vy0 <= 6'sd8;  ast_xf0 <= 6'd0; ast_yf0 <= 6'd0; ast_active0 <= 1'b1;
            ast_x1 <= 7'd100; ast_y1 <= 6'd45; ast_vx1 <= -6'sd12; ast_vy1 <= -6'sd16; ast_xf1 <= 6'd0; ast_yf1 <= 6'd0; ast_active1 <= 1'b1;
            ast_x2 <= 7'd40;  ast_y2 <= 6'd50; ast_vx2 <= 6'sd8;  ast_vy2 <= -6'sd12; ast_xf2 <= 6'd0; ast_yf2 <= 6'd0; ast_active2 <= 1'b1;
            
            bul_life0 <= 6'd0; bul_life1 <= 6'd0; bul_life2 <= 6'd0;
            bul_x0 <= 7'd0; bul_y0 <= 6'd0; bul_vx0 <= 7'sd0; bul_vy0 <= 7'sd0;
            bul_x1 <= 7'd0; bul_y1 <= 6'd0; bul_vx1 <= 7'sd0; bul_vy1 <= 7'sd0;
            bul_x2 <= 7'd0; bul_y2 <= 6'd0; bul_vx2 <= 7'sd0; bul_vy2 <= 7'sd0;
        end else begin
            if (frame_update_tick) begin
                reg_left     <= btn_left;
                reg_right    <= btn_right;
                reg_thrust   <= btn_thrust;
                reg_fire     <= btn_fire;
                reg_start    <= btn_start;
                reg_fire_old <= reg_fire;

                case (game_state)
                    STATE_PLAY, STATE_RESPAWN: begin
                        if (game_state == STATE_RESPAWN) begin
                            if (respawn_timer == 6'd0) game_state <= STATE_PLAY;
                            else respawn_timer <= respawn_timer - 1'b1;
                        end

                        // A. 우주선 회전 및 추진 물리 연산
                        if (reg_left)   ship_angle <= ship_angle - 1'b1;
                        if (reg_right)  ship_angle <= ship_angle + 1'b1;
                        
                        if (reg_thrust) begin
                            ship_vx <= ship_vx + acc_x_val;
                            ship_vy <= ship_vy + acc_y_val;
                        end else begin
                            ship_vx <= ship_vx - (ship_vx >>> 4);
                            ship_vy <= ship_vy - (ship_vy >>> 4);
                        end

                        // Fractional 구조의 정밀 위치 가산 및 부호 없는 랩핑 안전망 연산
                        calc_x = {ship_x, ship_x_frac} + $signed({{6{ship_vx[7]}}, ship_vx});
                        calc_y = {ship_y, ship_y_frac} + $signed({{6{ship_vy[7]}}, ship_vy});
                        
                        ship_x_frac <= calc_x[5:0];
                        ship_y_frac <= calc_y[5:0];
                        
                        if (calc_x[12:6] >= 13'd128) ship_x <= 7'd0;
                        else if (calc_x[12])        ship_x <= 7'd127;
                        else                         ship_x <= calc_x[12:6];

                        if (calc_y[11:6] >= 13'd64)  ship_y <= 6'd7;
                        else if (calc_y[11])        ship_y <= 6'd63;
                        else if (calc_y[11:6] < 7)   ship_y <= 6'd63;
                        else                         ship_y <= calc_y[11:6];

                        // B. 소행성 0단 물리 제어
                        if (ast_active0) begin
                            calc_x = {ast_x0, ast_xf0} + $signed({{7{ast_vx0[5]}}, ast_vx0});
                            calc_y = {ast_y0, ast_yf0} + $signed({{7{ast_vy0[5]}}, ast_vy0});
                            ast_xf0 <= calc_x[5:0]; ast_yf0 <= calc_y[5:0];
                            if (calc_x[12:6] >= 13'd128) ast_x0 <= 7'd0; else if (calc_x[12]) ast_x0 <= 7'd127; else ast_x0 <= calc_x[12:6];
                            if (calc_y[11:6] >= 13'd64) ast_y0 <= 6'd7; else if (calc_y[11] || calc_y[11:6] < 7) ast_y0 <= 6'd63; else ast_y0 <= calc_y[11:6];
                        end else begin
                            ast_x0 <= lfsr[6:0] % 120 + 4; ast_y0 <= lfsr[11:7] % 45 + 10;
                            ast_vx0 <= lfsr[1] ? 6'sd12 : -6'sd12; ast_vy0 <= lfsr[2] ? 6'sd8 : -6'sd8; ast_active0 <= 1'b1;
                        end

                        // 소행성 1단 물리 제어
                        if (ast_active1) begin
                            calc_x = {ast_x1, ast_xf1} + $signed({{7{ast_vx1[5]}}, ast_vx1});
                            calc_y = {ast_y1, ast_yf1} + $signed({{7{ast_vy1[5]}}, ast_vy1});
                            ast_xf1 <= calc_x[5:0]; ast_yf1 <= calc_y[5:0];
                            if (calc_x[12:6] >= 13'd128) ast_x1 <= 7'd0; else if (calc_x[12]) ast_x1 <= 7'd127; else ast_x1 <= calc_x[12:6];

if (calc_y[11:6] >= 13'd64) ast_y1 <= 6'd7; else if (calc_y[11] || calc_y[11:6] < 7) ast_y1 <= 6'd63; else ast_y1 <= calc_y[11:6];
end else begin
ast_x1 <= lfsr[8:2] % 120 + 4; ast_y1 <= lfsr[13:9] % 45 + 10;
ast_vx1 <= lfsr[3] ? 6'sd10 : -6'sd14; ast_vy1 <= lfsr[4] ? 6'sd12 : -6'sd10; ast_active1 <= 1'b1;
end
// 소행성 2단 물리 제어
if (ast_active2) begin
calc_x = {ast_x2, ast_xf2} + $signed({{7{ast_vx2[5]}}, ast_vx2});
calc_y = {ast_y2, ast_yf2} + $signed({{7{ast_vy2[5]}}, ast_vy2});
ast_xf2 <= calc_x[5:0]; ast_yf2 <= calc_y[5:0];
if (calc_x[12:6] >= 13'd128) ast_x2 <= 7'd0; else if (calc_x[12]) ast_x2 <= 7'd127; else ast_x2 <= calc_x[12:6];
if (calc_y[11:6] >= 13'd64) ast_y2 <= 6'd7; else if (calc_y[11] || calc_y[11:6] < 7) ast_y2 <= 6'd63; else ast_y2 <= calc_y[11:6];
end else begin
ast_x2 <= lfsr[12:6] % 120 + 4; ast_y2 <= lfsr[10:6] % 45 + 10;
ast_vx2 <= lfsr[5] ? 6'sd14 : -6'sd8; ast_vy2 <= lfsr[0] ? 6'sd6 : -6'sd14; ast_active2 <= 1'b1;
end
// C. 충돌 체크 (안전 영역 판정)
if (game_state == STATE_PLAY) begin
if ((ast_active0 && ship_x >= ast_x0-4 && ship_x <= ast_x0+4 && ship_y >= ast_y0-4 && ship_y <= ast_y0+4) ||
(ast_active1 && ship_x >= ast_x1-4 && ship_x <= ast_x1+4 && ship_y >= ast_y1-4 && ship_y <= ast_y1+4) ||
(ast_active2 && ship_x >= ast_x2-4 && ship_x <= ast_x2+4 && ship_y >= ast_y2-4 && ship_y <= ast_y2+4)) begin
if (lives == 2'd1) begin
lives <= 2'd0; game_state <= STATE_GAMEOVER;
end else begin
lives <= lives - 1'b1; game_state <= STATE_RESPAWN; respawn_timer <= 6'd50;
ship_x <= 7'd64; ship_y <= 6'd32; ship_vx <= 8'sd0; ship_vy <= 8'sd0;
end
end
end
// D. 총알 발사 처리
bul_fired = 1'b0;
if (reg_fire && !reg_fire_old) begin
if (bul_life0 == 6'd0 && !bul_fired) begin
bul_x0 <= ship_x; bul_y0 <= ship_y;
bul_vx0 <= ship_vx + (acc_x_val << 1); bul_vy0 <= ship_vy + (acc_y_val << 1);
bul_life0 <= 6'd35; bul_fired = 1'b1;
end
if (bul_life1 == 6'd0 && !bul_fired) begin
bul_x1 <= ship_x; bul_y1 <= ship_y;
bul_vx1 <= ship_vx + (acc_x_val << 1); bul_vy1 <= ship_vy + (acc_y_val << 1);
bul_life1 <= 6'd35; bul_fired = 1'b1;
end
if (bul_life2 == 6'd0 && !bul_fired) begin
bul_x2 <= ship_x; bul_y2 <= ship_y;
bul_vx2 <= ship_vx + (acc_x_val << 1); bul_vy2 <= ship_vy + (acc_y_val << 1);
bul_life2 <= 6'd35; bul_fired = 1'b1;
end
end
// E. 총알 제어 및 파괴 매핑
if (bul_life0 > 6'd0) begin
calc_x = {bul_x0, 6'd0} + $signed({{6{bul_vx0[6]}}, bul_vx0});
calc_y = {bul_y0, 6'd0} + $signed({{6{bul_vy0[6]}}, bul_vy0});
bul_life0 <= bul_life0 - 1'b1;
if (calc_x[12:6] >= 13'd128) bul_x0 <= 7'd0; else if (calc_x[12]) bul_x0 <= 7'd127; else bul_x0 <= calc_x[12:6];
if (calc_y[11:6] >= 13'd64) bul_y0 <= 6'd7; else if (calc_y[11] || calc_y[11:6] < 7) bul_y0 <= 6'd63; else bul_y0 <= calc_y[11:6];
if (ast_active0 && bul_x0 >= ast_x0-3 && bul_x0 <= ast_x0+3 && bul_y0 >= ast_y0-3 && bul_y0 <= ast_y0+3) begin ast_active0 <= 1'b0; bul_life0 <= 6'd0; end
if (ast_active1 && bul_x0 >= ast_x1-3 && bul_x0 <= ast_x1+3 && bul_y0 >= ast_y1-3 && bul_y0 <= ast_y1+3) begin ast_active1 <= 1'b0; bul_life0 <= 6'd0; end
if (ast_active2 && bul_x0 >= ast_x2-3 && bul_x0 <= ast_x2+3 && bul_y0 >= ast_y2-3 && bul_y0 <= ast_y2+3) begin ast_active2 <= 1'b0; bul_life0 <= 6'd0; end
end
if (bul_life1 > 6'd0) begin
calc_x = {bul_x1, 6'd0} + $signed({{6{bul_vx1[6]}}, bul_vx1});
calc_y = {bul_y1, 6'd0} + $signed({{6{bul_vy1[6]}}, bul_vy1});
bul_life1 <= bul_life1 - 1'b1;
if (calc_x[12:6] >= 13'd128) bul_x1 <= 7'd0; else if (calc_x[12]) bul_x1 <= 7'd127; else bul_x1 <= calc_x[12:6];
if (calc_y[11:6] >= 13'd64) bul_y1 <= 6'd7; else if (calc_y[11] || calc_y[11:6] < 7) bul_y1 <= 6'd63; else bul_y1 <= calc_y[11:6];
if (ast_active0 && bul_x1 >= ast_x0-3 && bul_x1 <= ast_x0+3 && bul_y1 >= ast_y0-3 && bul_y1 <= ast_y0+3) begin ast_active0 <= 1'b0; bul_life1 <= 6'd0; end
if (ast_active1 && bul_x1 >= ast_x1-3 && bul_x1 <= ast_x1+3 && bul_y1 >= ast_y1-3 && bul_y1 <= ast_y1+3) begin ast_active1 <= 1'b0; bul_life1 <= 6'd0; end
if (ast_active2 && bul_x1 >= ast_x2-3 && bul_x1 <= ast_x2+3 && bul_y1 >= ast_y2-3 && bul_y1 <= ast_y2+3) begin ast_active2 <= 1'b0; bul_life1 <= 6'd0; end
end
if (bul_life2 > 6'd0) begin
calc_x = {bul_x2, 6'd0} + $signed({{6{bul_vx2[6]}}, bul_vx2});
calc_y = {bul_y2, 6'd0} + $signed({{6{bul_vy2[6]}}, bul_vy2});
bul_life2 <= bul_life2 - 1'b1;
if (calc_x[12:6] >= 13'd128) bul_x2 <= 7'd0; else if (calc_x[12]) bul_x2 <= 7'd127; else bul_x2 <= calc_x[12:6];
if (calc_y[11:6] >= 13'd64) bul_y2 <= 6'd7; else if (calc_y[11] || calc_y[11:6] < 7) bul_y2 <= 6'd63; else bul_y2 <= calc_y[11:6];
if (ast_active0 && bul_x2 >= ast_x0-3 && bul_x2 <= ast_x0+3 && bul_y2 >= ast_y0-3 && bul_y2 <= ast_y0+3) begin ast_active0 <= 1'b0; bul_life2 <= 6'd0; end
if (ast_active1 && bul_x2 >= ast_x1-3 && bul_x2 <= ast_x1+3 && bul_y2 >= ast_y1-3 && bul_y2 <= ast_y1+3) begin ast_active1 <= 1'b0; bul_life2 <= 6'd0; end
if (ast_active2 && bul_x2 >= ast_x2-3 && bul_x2 <= ast_x2+3 && bul_y2 >= ast_y2-3 && bul_y2 <= ast_y2+3) begin ast_active2 <= 1'b0; bul_life2 <= 6'd0; end
end
end
STATE_GAMEOVER: begin
ship_vx <= 8'sd0; ship_vy <= 8'sd0;
bul_life0 <= 6'd0; bul_life1 <= 6'd0; bul_life2 <= 6'd0;
if (reg_start) begin
lives          <= 2'd3;
game_state     <= STATE_PLAY;
ship_x         <= 7'd64; ship_y <= 6'd32;
ast_active0    <= 1'b0; ast_active1 <= 1'b0; ast_active2 <= 1'b0;
end
end
default: game_state <= STATE_PLAY;
endcase
end
end
end
//========================================================================
// 6. 비디오 파이프라인 픽셀 결합 매퍼 (128x64 실시간 마스크 동사 구동)
//========================================================================
reg ship_on; reg ast_on; reg bul_on; reg ui_on;
function draw_heart;
input [6:0] px; input [5:0] py;
input [6:0] h_x; input [5:0] h_y;
begin
draw_heart = ((py == h_y)   && (px == h_x+1 || px == h_x+3)) ||
((py == h_y+1) && (px >= h_x   && px <= h_x+4)) ||
((py == h_y+2) && (px >= h_x   && px <= h_x+4)) ||
((py == h_y+3) && (px >= h_x+1 && px <= h_x+3)) ||
((py == h_y+4) && (px == h_x+2));
end
endfunction
reg signed [7:0] dx0, dx1, dx2;
reg signed [7:0] dy0, dy1, dy2;
always @(*) begin
// A. 상단 하트 UI 마스크
ui_on = (lives >= 2'd1 && draw_heart(pixel_x, pixel_y, 7'd122, 6'd1)) ||
(lives >= 2'd2 && draw_heart(pixel_x, pixel_y, 7'd116, 6'd1)) ||
(lives >= 2'd3 && draw_heart(pixel_x, pixel_y, 7'd110, 6'd1)) ||
(pixel_y == 6'd6);
// B. 8방향 회전 삼각형 우주선 마스크
if (game_state == STATE_GAMEOVER || (game_state == STATE_RESPAWN && respawn_timer) || pixel_y < 7) begin
ship_on = 1'b0;
end else begin
case(ship_angle)
3'd0: ship_on = (pixel_x == ship_x && pixel_y == ship_y-3) || (pixel_x >= ship_x-1 && pixel_x <= ship_x+1 && pixel_y == ship_y-2) || (pixel_x >= ship_x-2 && pixel_x <= ship_x+2 && pixel_y == ship_y-1) || (pixel_x == ship_x-2 && pixel_y == ship_y) || (pixel_x == ship_x+2 && pixel_y == ship_y);
3'd1: ship_on = (pixel_x == ship_x+2 && pixel_y == ship_y-2) || (pixel_x >= ship_x && pixel_x <= ship_x+1 && pixel_y == ship_y-1) || (pixel_x >= ship_x-1 && pixel_x <= ship_x && pixel_y == ship_y) || (pixel_x == ship_x-2 && pixel_y == ship_y) || (pixel_x == ship_x && pixel_y == ship_y+1);
3'd2: ship_on = (pixel_x == ship_x+3 && pixel_y == ship_y) || (pixel_x == ship_x+2 && pixel_y >= ship_y-1 && pixel_y <= ship_y+1) || (pixel_x == ship_x+1 && pixel_y >= ship_y-2 && pixel_y <= ship_y+2) || (pixel_x == ship_x && (pixel_y == ship_y-2 || pixel_y == ship_y+2));
3'd3: ship_on = (pixel_x == ship_x+2 && pixel_y == ship_y+2) || (pixel_x >= ship_x && pixel_x <= ship_x+1 && pixel_y == ship_y+1) || (pixel_x >= ship_x-1 && pixel_x <= ship_x && pixel_y == ship_y) || (pixel_x == ship_x-2 && pixel_y == ship_y) || (pixel_x == ship_x && pixel_y == ship_y-1);
3'd4: ship_on = (pixel_x == ship_x && pixel_y == ship_y+3) || (pixel_x >= ship_x-1 && pixel_x <= ship_x+1 && pixel_y == ship_y+2) || (pixel_x >= ship_x-2 && pixel_x <= ship_x+2 && pixel_y == ship_y+1) || (pixel_x == ship_x-2 && pixel_y == ship_y) || (pixel_x == ship_x+2 && pixel_y == ship_y);
3'd5: ship_on = (pixel_x == ship_x-2 && pixel_y == ship_y+2) || (pixel_x >= ship_x-1 && pixel_x <= ship_x && pixel_y == ship_y+1) || (pixel_x >= ship_x && pixel_x <= ship_x+1 && pixel_y == ship_y) || (pixel_x == ship_x+2 && pixel_y == ship_y) || (pixel_x == ship_x && pixel_y == ship_y-1);
3'd6: ship_on = (pixel_x == ship_x-3 && pixel_y == ship_y) || (pixel_x == ship_x-2 && pixel_y >= ship_y-1 && pixel_y <= ship_y+1) || (pixel_x == ship_x-1 && pixel_y >= ship_y-2 && pixel_y <= ship_y+2) || (pixel_x == ship_x && (pixel_y == ship_y-2 || pixel_y == ship_y+2));
3'd7: ship_on = (pixel_x == ship_x-2 && pixel_y == ship_y-2) || (pixel_x >= ship_x-1 && pixel_x <= ship_x && pixel_y == ship_y-1) || (pixel_x >= ship_x && pixel_x <= ship_x+1 && pixel_y == ship_y) || (pixel_x == ship_x+2 && pixel_y == ship_y) || (pixel_x == ship_x && pixel_y == ship_y+1);
default: ship_on = 1'b0;
endcase
end
// C. 소행성 깨진 돌멩이 모양 (모서리 커팅 3x3 마스크)
dx0 = pixel_x - ast_x0; dy0 = pixel_y - ast_y0;
dx1 = pixel_x - ast_x1; dy1 = pixel_y - ast_y1;
dx2 = pixel_x - ast_x2; dy2 = pixel_y - ast_y2;
ast_on = (ast_active0 && (pixel_y >= 7) && (dx0 >= -2 && dx0 <= 2 && dy0 >= -2 && dy0 <= 2) && ~((dx0 == -2 && dy0 == -2) || (dx0 == 2 && dy0 == -2) || (dx0 == -2 && dy0 == 2) || (dx0 == 2 && dy0 == 2))) ||
(ast_active1 && (pixel_y >= 7) && (dx1 >= -2 && dx1 <= 2 && dy1 >= -2 && dy1 <= 2) && ~((dx1 == -2 && dy1 == -2) || (dx1 == 2 && dy1 == -2) || (dx1 == -2 && dy1 == 2) || (dx1 == 2 && dy1 == 2))) ||
(ast_active2 && (pixel_y >= 7) && (dx2 >= -2 && dx2 <= 2 && dy2 >= -2 && dy2 <= 2) && ~((dx2 == -2 && dy2 == -2) || (dx2 == 2 && dy2 == -2) || (dx2 == -2 && dy2 == 2) || (dx2 == 2 && dy2 == 2)));
// D. 총알 마스크
bul_on = (pixel_y >= 7) && (
(bul_life0 > 6'd0 && pixel_x == bul_x0 && pixel_y == bul_y0) ||
(bul_life1 > 6'd0 && pixel_x == bul_x1 && pixel_y == bul_y1) ||
(bul_life2 > 6'd0 && pixel_x == bul_x2 && pixel_y == bul_y2));
if (video_on && (ui_on || ship_on || ast_on || bul_on))
pixel_data = 1'b1;
else
pixel_data = 1'b0;
end
endmodule
