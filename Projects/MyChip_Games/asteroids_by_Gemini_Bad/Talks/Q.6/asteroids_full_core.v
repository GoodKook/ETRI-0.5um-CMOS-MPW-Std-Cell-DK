verilog
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
    output reg pixel_data       
);

    //========================================================================
    // 1. 128x64 표준 디스플레이 타이밍 파라미터 정의
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

    wire video_on = (h_cnt < H_ACTIVE) && (v_cnt < V_ACTIVE);
    wire [6:0] pixel_x = h_cnt[6:0]; 
    wire [5:0] pixel_y = v_cnt[5:0]; 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin h_cnt <= 0; v_cnt <= 0; end 
        else begin
            if (h_cnt == H_TOTAL - 1) begin
                h_cnt <= 0;
                if (v_cnt == V_TOTAL - 1) v_cnt <= 0;
                else v_cnt <= v_cnt + 1'b1;
            end else begin
                h_cnt <= h_cnt + 1'b1;
            end
        end
    end

    always @(posedge clk) begin
        hsync <= ~((h_cnt >= H_ACTIVE + H_FRONT) && (h_cnt < H_ACTIVE + H_FRONT + H_SYNC));
        vsync <= ~((v_cnt >= V_ACTIVE + V_FRONT) && (v_cnt < V_ACTIVE + V_FRONT + V_SYNC));
    end

    //========================================================================
    // 2. LFSR (난수 생성기)
    //========================================================================
    reg [14:0] lfsr;
    wire lfsr_tap = lfsr[14] ^ lfsr[13]; 
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) lfsr <= 15'h7FFF;
        else lfsr <= {lfsr[13:0], lfsr_tap};
    end

    //========================================================================
    // 3. 게임 상태 정의 및 관리 레지스터
    //========================================================================
    localparam STATE_PLAY     = 2'b00;
    localparam STATE_RESPAWN  = 2'b01; // 충돌 후 잠시 무적/대기
    localparam STATE_GAMEOVER = 2'b10;

    reg [1:0]  game_state;
    reg [1:0]  lives;             // 플레이어 라이프 (최대 3)
    reg [5:0]  respawn_timer;     // 부활 후 무적 타이머 카운터

    // 게임 오브젝트 데이터 (정수 + 소수점 이하 8비트)
    reg signed [14:0] ship_px; reg signed [13:0] ship_py; 
    reg signed [7:0]  ship_vx, ship_vy;
    reg [2:0]         ship_angle; 

    reg signed [14:0] ast_px [0:2]; reg signed [13:0] ast_py [0:2];
    reg signed [7:0]  ast_vx [0:2]; reg signed [7:0]  ast_vy [0:2];
    reg               ast_active [0:2];

    reg signed [14:0] bul_px [0:2]; reg signed [13:0] bul_py [0:2];
    reg signed [7:0]  bul_vx [0:2]; reg signed [7:0]  bul_vy [0:2];
    reg [5:0]         bul_life [0:2];

    reg btn_fire_old;

    // 가속도 벡터 룩업테이블 (LUT)
    reg signed [7:0] acc_x [0:7]; reg signed [7:0] acc_y [0:7];
    initial begin
        acc_x = 8'sb00000000; acc_y = -8'sb00000100; // 0: 위
        acc_x = 8'sb00000011; acc_y = -8'sb00000011; // 1: 우상
        acc_x = 8'sb00000100; acc_y = 8'sb00000000;  // 2: 우
        acc_x = 8'sb00000011; acc_y = 8'sb00000011;  // 3: 우하
        acc_x = 8'sb00000000; acc_y = 8'sb00000100;  // 4: 아래
        acc_x = -8'sb00000011; acc_y = 8'sb00000011; // 5: 좌하
        acc_x = -8'sb00000100; acc_y = 8'sb00000000; // 6: 좌
        acc_x = -8'sb00000011; acc_y = -8'sb00000011;// 7: 좌상
    end

    //========================================================================
    // 4. 메인 게임 논리 회로 (V싱크 타이밍 동기화)
    //========================================================================
    wire frame_tick = (h_cnt == H_ACTIVE) && (v_cnt == V_ACTIVE);
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            game_state <= STATE_PLAY;
            lives <= 2'd3;
            respawn_timer <= 0;
            btn_fire_old <= 1'b0;
            
            // 오브젝트 초기화 공통 서브루틴 대용
            ship_px <= 15'd64 << 8;   ship_py <= 14'd32 << 8;
            ship_vx <= 0;             ship_vy <= 0; ship_angle <= 0;
            ast_px[0] <= 15'd20 << 8;  ast_py[0] <= 14'd15 << 8;  ast_vx[0] <= 8'sd6;   ast_vy[0] <= 8'sd4;   ast_active[0] <= 1'b1;
            ast_px[1] <= 15'd100 << 8; ast_py[1] <= 14'd45 << 8;  ast_vx[1] <= -8'sd4;  ast_vy[1] <= -8'sd6;  ast_active[1] <= 1'b1;
            ast_px[2] <= 15'd40 << 8;  ast_py[2] <= 14'd50 << 8;  ast_vx[2] <= 8'sd5;   ast_vy[2] <= -8'sd5;  ast_active[2] <= 1'b1;
            for(i=0; i<3; i=i+1) bul_life[i] <= 0;
        end else begin
            btn_fire_old <= btn_fire;

            if (frame_tick) begin
                case (game_state)
                    // -------------------------------------------------------
                    // [STATE: PLAY] 일반적인 인게임 구동 및 충돌 감지
                    // -------------------------------------------------------
                    STATE_PLAY, STATE_RESPAWN: begin
                        if (game_state == STATE_RESPAWN) begin
                            if (respawn_timer == 0) game_state <= STATE_PLAY;
                            else respawn_timer <= respawn_timer - 1'b1;
                        end

                        // A. 우주선 이동 제어
                        if (btn_left)  ship_angle <= ship_angle - 1'b1;
                        if (btn_right) ship_angle <= ship_angle + 1'b1;
                        if (btn_thrust) begin
                            ship_vx <= ship_vx + acc_x[ship_angle];
                            ship_vy <= ship_vy + acc_y[ship_angle];
                        end
                        ship_px <= ship_px + ship_vx; ship_py <= ship_py + ship_vy;

                        if (ship_px[14:8] >= 128) ship_px <= 0;
                        else if (ship_px < 0)     ship_px <= 15'd127 << 8;
                        if (ship_py[13:8] >= 64)  ship_py <= 0;
                        else if (ship_py < 0)     ship_py <= 14'd63 << 8;

                        // B. 소행성 이동 및 파괴 시 난수 리스폰
                        for(i=0; i<3; i=i+1) begin
                            if (ast_active[i]) begin
                                ast_px[i] <= ast_px[i] + ast_vx[i];
                                ast_py[i] <= ast_py[i] + ast_vy[i];

                                if (ast_px[i][14:8] >= 128) ast_px[i] <= 0;
                                else if (ast_px[i] < 0)     ast_px[i] <= 15'd127 << 8;
                                if (ast_py[i][13:8] >= 64)  ast_py[i] <= 0;
                                else if (ast_py[i] < 0)     ast_py[i] <= 14'd63 << 8;
                                
                                // [추가] 우주선-소행성 충돌 감지 (PLAY 상태일 때만 판단, 바운딩 크기 4)
                                if (game_state == STATE_PLAY &&
                                    (ship_px[14:8] >= ast_px[i][14:8]-4 && ship_px[14:8] <= ast_px[i][14:8]+4) &&
                                    (ship_py[13:8] >= ast_py[i][13:8]-4 && ship_py[13:8] <= ast_py[i][13:8]+4)) begin
                                    
                                    if (lives == 2'd1) begin
                                        lives <= 0;
                                        game_state <= STATE_GAMEOVER;
                                    end else begin
                                        lives <= lives - 1'b1;
                                        game_state <= STATE_RESPAWN;
                                        respawn_timer <= 6'd50; // 부활 후 약 0.8초간 무적 대기
                                        // 우주선 위치 및 속도 초기화
                                        ship_px <= 15'd64 << 8; ship_py <= 14'd32 << 8;
                                        ship_vx <= 0; ship_vy <= 0;
                                    end
                                end
                            end else begin
                                ast_px[i] <= {1'b0, lfsr[6:0], 8'h00};
                                ast_py[i] <= {2'b00, lfsr[11:7] ^ lfsr[5:1], 8'h00};
                                ast_vx[i] <= (lfsr[0] ? 8'sd4 : -8'sd4) + lfsr[2:1];
                                ast_vy[i] <= (lfsr[1] ? 8'sd3 : -8'sd3) - lfsr[4:3];
                                ast_active[i] <= 1'b1;
                            end
                        end

                        // C. 총알 발사 로직
                        if (btn_fire && !btn_fire_old) begin
                            if (bul_life[0] == 0) begin
                                bul_px[0] <= ship_px; bul_py[0] <= ship_py;
                                bul_vx[0] <= ship_vx + (acc_x[ship_angle] << 2); bul_vy[0] <= ship_vy + (acc_y[ship_angle] << 2);
                                bul_life[0] <= 6'd35;
                            end else if (bul_life[1] == 0) begin
                                bul_px[1] <= ship_px; bul_py[1] <= ship_py;
                                bul_vx[1] <= ship_vx + (acc_x[ship_angle] << 2); bul_vy[1] <= ship_vy + (acc_y[ship_angle] << 2);
                                bul_life[1] <= 6'd35;
                            end else if (bul_life[2] == 0) begin
                                bul_px[2] <= ship_px; bul_py[2] <= ship_py;
                                bul_vx[2] <= ship_vx + (acc_x[ship_angle] << 2); bul_vy[2] <= ship_vy + (acc_y[ship_angle] << 2);
                                bul_life[2] <= 6'd35;
                            end
                        end

                        // D. 총알 이동 및 소행성 피격 판정
                        for(i=0; i<3; i=i+1) begin
                            if (bul_life[i] > 0) begin
코드를 사용할 때는 주의가 필요합니다.
bul_px[i] <= bul_px[i] + bul_vx[i];
bul_py[i] <= bul_py[i] + bul_vy[i];
bul_life[i] <= bul_life[i] - 1'b1;
if (bul_px[i][14:8] >= 128) bul_px[i] <= 0;
else if (bul_px[i] < 0)     bul_px[i] <= 15'd127 << 8;
if (bul_py[i][13:8] >= 64)  bul_py[i] <= 0;
else if (bul_py[i] < 0)     bul_py[i] <= 14'd63 << 8;
for(integer j=0; j<3; j=j+1) begin
if (ast_active[j] && (bul_px[i][14:8] >= ast_px[j][14:8]-3 && bul_px[i][14:8] <= ast_px[j][14:8]+3) && (bul_py[i][13:8] >= ast_py[j][13:8]-3 && bul_py[i][13:8] <= ast_py[j][13:8]+3)) begin
ast_active[j] <= 0;
bul_life[i] <= 0;
end
end
end
end
end
// -------------------------------------------------------
// [STATE: GAMEOVER] 게임 중지 및 재시작 대기
// -------------------------------------------------------
STATE_GAMEOVER: begin
if (btn_start) begin
lives <= 2'd3;
game_state <= STATE_PLAY;
ship_px <= 15'd64 << 8; ship_py <= 14'd32 << 8;
ship_vx <= 0; ship_vy <= 0;
ast_active[0] <= 0; ast_active[1] <= 0; ast_active[2] <= 0; // 강제 리스폰 유도
end
end
endcase
end
end
end
//========================================================================
// 5. 비디오 파이프라인 픽셀 결합 매퍼 (삼각형 우주선 + 돌멩이 LUT 조합)
//========================================================================
wire [6:0] s_x = ship_px[14:8]; wire [5:0] s_y = ship_py[13:8];
reg ship_on; reg ast_on; reg bul_on;
reg [2:0] ast_shape_match;
always @(*) begin
// A. 8방향 회전 삼각형 우주선 비디오 컴포넌트 마스크
if (game_state == STATE_GAMEOVER || (game_state == STATE_RESPAWN && respawn_timer[1])) begin
ship_on = 1'b0; // 게임오버거나 무적 상태일 때 깜빡임 효과 적용
end else begin
case(ship_angle)
3'd0: ship_on = (pixel_x == s_x && pixel_y == s_y-3) || (pixel_x >= s_x-1 && pixel_x <= s_x+1 && pixel_y == s_y-2) || (pixel_x >= s_x-2 && pixel_x <= s_x+2 && pixel_y == s_y-1) || (pixel_x == s_x-2 && pixel_y == s_y) || (pixel_x == s_x+2 && pixel_y == s_y);
3'd1: ship_on = (pixel_x == s_x+2 && pixel_y == s_y-2) || (pixel_x >= s_x && pixel_x <= s_x+1 && pixel_y == s_y-1) || (pixel_x >= s_x-1 && pixel_x <= s_x && pixel_y == s_y) || (pixel_x == s_x-2 && pixel_y == s_y) || (pixel_x == s_x && pixel_y == s_y+1);
3'd2: ship_on = (pixel_x == s_x+3 && pixel_y == s_y) || (pixel_x == s_x+2 && pixel_y >= s_y-1 && pixel_y <= s_y+1) || (pixel_x == s_x+1 && pixel_y >= s_y-2 && pixel_y <= s_y+2) || (pixel_x == s_x && (pixel_y == s_y-2 || pixel_y == s_y+2));
3'd3: ship_on = (pixel_x == s_x+2 && pixel_y == s_y+2) || (pixel_x >= s_x && pixel_x <= s_x+1 && pixel_y == s_y+1) || (pixel_x >= s_x-1 && pixel_x <= s_x && pixel_y == s_y) || (pixel_x == s_x-2 && pixel_y == s_y) || (pixel_x == s_x && pixel_y == s_y-1);
3'd4: ship_on = (pixel_x == s_x && pixel_y == s_y+3) || (pixel_x >= s_x-1 && pixel_x <= s_x+1 && pixel_y == s_y+2) || (pixel_x >= s_x-2 && pixel_x <= s_x+2 && pixel_y == s_y+1) || (pixel_x == s_x-2 && pixel_y == s_y) || (pixel_x == s_x+2 && pixel_y == s_y);
3'd5: ship_on = (pixel_x == s_x-2 && pixel_y == s_y+2) || (pixel_x >= s_x-1 && pixel_x <= s_x && pixel_y == s_y+1) || (pixel_x >= s_x && pixel_x <= s_x+1 && pixel_y == s_y) || (pixel_x == s_x+2 && pixel_y == s_y) || (pixel_x == s_x && pixel_y == s_y-1);
3'd6: ship_on = (pixel_x == s_x-3 && pixel_y == s_y) || (pixel_x == s_x-2 && pixel_y >= s_y-1 && pixel_y <= s_y+1) || (pixel_x == s_x-1 && pixel_y >= s_y-2 && pixel_y <= s_y+2) || (pixel_x == s_x && (pixel_y == s_y-2 || pixel_y == s_y+2));
3'd7: ship_on = (pixel_x == s_x-2 && pixel_y == s_y-2) || (pixel_x >= s_x-1 && pixel_x <= s_x && pixel_y == s_y-1) || (pixel_x >= s_x && pixel_x <= s_x+1 && pixel_y == s_y) || (pixel_x == s_x+2 && pixel_y == s_y) || (pixel_x == s_x && pixel_y == s_y+1);
default: ship_on = 1'b0;
endcase
end
// B. [고도화] 소행성 깨진 돌멩이 모양 (3x3 LUT 마스크) 구조화
// 사각형의 네 모서리(Corner)를 깎아 울퉁불퉁한 돌멩이 파편 형태 구현
for(integer j=0; j<3; j=j+1) begin
wire signed [7:0] dx = pixel_x - ast_px[j][14:8];
wire signed [7:0] dy = pixel_y - ast_py[j][13:8];
// 중심 기준 거리가 3x3 범위 안이면서 각 모서리가 아닌 영역만 통과 (돌모양 십자 변형)
ast_shape_match[j] = ast_active[j] &&
(dx >= -2 && dx <= 2 && dy >= -2 && dy <= 2) &&
~((dx == -2 && dy == -2) || (dx == 2 && dy == -2) || (dx == -2 && dy == 2) || (dx == 2 && dy == 2));
end
ast_on = |ast_shape_match;
// C. 총알 마스크
bul_on = (bul_life[0] > 0 && pixel_x == bul_px[0][14:8] && pixel_y == bul_py[0][13:8]) ||
(bul_life[1] > 0 && pixel_x == bul_px[1][14:8] && pixel_y == bul_py[1][13:8]) ||
(bul_life[2] > 0 && pixel_x == bul_px[2][14:8] && pixel_y == bul_py[2][13:8]);
// 최종 비디오 제어 신호 게이팅
if (video_on && (ship_on || ast_on || bul_on))
pixel_data = 1'b1;
else
pixel_data = 1'b0;
end
endmodule
