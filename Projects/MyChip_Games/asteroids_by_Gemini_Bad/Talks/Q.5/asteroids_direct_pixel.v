verilog
module asteroids_direct_pixel (
    input wire clk,             // 시스템 픽셀 클럭 (예: 약 768kHz)
    input wire rst_n,           // 리셋 (Active Low)
    
    // 조작 키 입력 (디바운싱 완료 신호 가정)
    input wire btn_left,        // 좌회전
    input wire btn_right,       // 우회전
    input wire btn_thrust,      // 전진 가속
    input wire btn_fire,        // 총알 발사
    
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
    // 2. LFSR(Linear Feedback Shift Register) 무작위 수 생성기
    //========================================================================
    reg [14:0] lfsr;
    wire lfsr_tap = lfsr[14] ^ lfsr[13]; // 15비트 표준 피드백 탭
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) lfsr <= 15'h7FFF; // 0이 아닌 시드값
        else lfsr <= {lfsr[13:0], lfsr_tap};
    end

    //========================================================================
    // 3. 게임 객체 레지스터 정의 (정수 + 소수점 이하 8비트)
    //========================================================================
    // (A) 우주선 (Ship)
    reg signed [14:0] ship_px; 
    reg signed [13:0] ship_py; 
    reg signed [7:0]  ship_vx, ship_vy;
    reg [2:0]         ship_angle; 

    // (B) 소행성 (Asteroids - 3개)
    reg signed [14:0] ast_px [0:2];
    reg signed [13:0] ast_py [0:2];
    reg signed [7:0]  ast_vx [0:2];
    reg signed [7:0]  ast_vy [0:2];
    reg               ast_active [0:2];

    // (C) 총알 (Bullets - 최대 3발)
    reg signed [14:0] bul_px [0:2];
    reg signed [13:0] bul_py [0:2];
    reg signed [7:0]  bul_vx [0:2];
    reg signed [7:0]  bul_vy [0:2];
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
    // 4. 물리 엔진 및 오브젝트 업데이트 (V싱크 타이밍 동기화)
    //========================================================================
    wire frame_tick = (h_cnt == H_ACTIVE) && (v_cnt == V_ACTIVE);
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            btn_fire_old <= 1'b0;
            ship_px <= 15'd64 << 8;  ship_py <= 14'd32 << 8;
            ship_vx <= 0;            ship_vy <= 0;
            ship_angle <= 0;

            ast_px <= 15'd20 << 8;  ast_py <= 14'd15 << 8;  ast_vx <= 8'sd6;   ast_vy <= 8'sd4;   ast_active <= 1'b1;
            ast_px <= 15'd100 << 8; ast_py <= 14'd45 << 8;  ast_vx <= -8'sd4;  ast_vy <= -8'sd6;  ast_active <= 1'b1;
            ast_px <= 15'd40 << 8;  ast_py <= 14'd50 << 8;  ast_vx <= 8'sd5;   ast_vy <= -8'sd5;  ast_active <= 1'b1;

            for(i=0; i<3; i=i+1) bul_life[i] <= 0;
        end else begin
            btn_fire_old <= btn_fire;

            if (frame_tick) begin
                // A. 우주선 회전 및 이동
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

                // B. 소행성 업데이트 및 파괴 시 LFSR 무작위 리스폰
                for(i=0; i<3; i=i+1) begin
                    if (ast_active[i]) begin
                        ast_px[i] <= ast_px[i] + ast_vx[i];
                        ast_py[i] <= ast_py[i] + ast_vy[i];

                        if (ast_px[i][14:8] >= 128) ast_px[i] <= 0;
                        else if (ast_px[i] < 0)     ast_px[i] <= 15'd127 << 8;
                        if (ast_py[i][13:8] >= 64)  ast_py[i] <= 0;
                        else if (ast_py[i] < 0)     ast_py[i] <= 14'd63 << 8;
                    end else begin
                        // 파괴 상태 시 LFSR 난수를 좌표 범위(128x64)에 우겨넣어 즉시 리스폰
                        ast_px[i] <= {1'b0, lfsr[6:0], 8'h00}; // X: 0 ~ 127
                        ast_py[i] <= {2'b00, lfsr[11:7] ^ lfsr[5:1], 8'h00}; // Y: 0 ~ 63 (비트 결합 난수화)
                        ast_vx[i] <= (lfsr[2] ? 8'sd5 : -8'sd5) + lfsr[1:0];  // 속도 가변화
                        ast_vy[i] <= (lfsr[5] ? 8'sd4 : -8'sd4) - lfsr[4:3];
                        ast_active[i] <= 1'b1; // 재생성 완료
                    end
                end

                // C. 총알 발사 처리
                if (btn_fire && !btn_fire_old) begin
                    if (bul_life == 0) begin
                        bul_px <= ship_px; bul_py <= ship_py;
                        bul_vx <= ship_vx + (acc_x[ship_angle] << 2); bul_vy <= ship_vy + (acc_y[ship_angle] << 2);
                        bul_life <= 6'd35;
                    end else if (bul_life == 0) begin
                        bul_px <= ship_px; bul_py <= ship_py;
                        bul_vx <= ship_vx + (acc_x[ship_angle] << 2); bul_vy <= ship_vy + (acc_y[ship_angle] << 2);
                        bul_life <= 6'd35;
                    end else if (bul_life == 0) begin
                        bul_px <= ship_px; bul_py <= ship_py;
                        bul_vx <= ship_vx + (acc_x[ship_angle] << 2); bul_vy <= ship_vy + (acc_y[ship_angle] << 2);
                        bul_life <= 6'd35;
                    end
                end

                // D. 총알 이동 및 충돌 시 파괴 처리 플래그 트리거
                for(i=0; i<3; i=i+1) begin
                    if (bul_life[i] > 0) begin
                        bul_px[i] <= bul_px[i] + bul_vx[i];
                        bul_py[i] <= bul_py[i] + bul_vy[i];
                        bul_life[i] <= bul_life[i] - 1'b1;

                        if (bul_px[i][14:8] >= 128) bul_px[i] <= 0;
                        else if (bul_px[i] < 0)     bul_px[i] <= 15'd127 << 8;
                        if (bul_py[i][13:8] >= 64)  bul_py[i] <= 0;
                        else if (bul_py[i] < 0)     bul_py[i] <= 14'd63 << 8;
                        
                        // 충돌 판정 -> 충돌 시 active를 꺼버려 다음 클럭 사이클에 리스폰 가동
                        if (ast_active && (bul_px[i][14:8] >= ast_px[14:8]-3 && bul_px[i][14:8] <= ast_px[14:8]+3) && (bul_py[i][13:8] >= ast_py[13:8]-3 && bul_py[i][13:8] <= ast_py[13:8]+3)) begin ast_active <= 0; bul_life[i] <= 0; end
                        if (ast_active && (bul_px[i][14:8] >= ast_px[14:8]-3 && bul_px[i][14:8] <= ast_px[14:8]+3) && (bul_py[i][13:8] >= ast_py[13:8]-3 && bul_py[i][13:8] <= ast_py[13:8]+3)) begin ast_active <= 0; bul_life[i] <= 0; end
                        if (ast_active && (bul_px[i][14:8] >= ast_px[14:8]-3 && bul_px[i][14:8] <= ast_px[14:8]+3) && (bul_py[i][13:8] >= ast_py[13:8]-3 && bul_py[i][13:8] <= ast_py[13:8]+3)) begin ast_active <= 0; bul_life[i] <= 0; end
                    end
                end
            end
        end
    end

    //========================================================================
    // 5. 실시간 8방향 회전 삼각형 우주선 픽셀 매핑 및 결합 마스크
    //========================================================================
    wire [6:0] s_x = ship_px[14:8];
    wire [5:0] s_y = ship_py[13:8];

    reg ship_on;
    reg ast_on;
    reg bul_on;

    // 각도(ship_angle)별 삼각형 모양 실시간 생성기
    always @(*) begin
        case(ship_angle)
            3'd0: begin // 0: 위 (▲ 모양)
                ship_on = (pixel_x == s_x   && pixel_y == s_y-3) ||
                          (pixel_x >= s_x-1 && pixel_x <= s_x+1 && pixel_y == s_y-2) ||
                          (pixel_x >= s_x-2 && pixel_x <= s_x+2 && pixel_y == s_y-1) ||
                          (pixel_x == s_x-2 && pixel_y == s_y) || (pixel_x == s_x+2 && pixel_y == s_y);
            end
            3'd1: begin // 1: 우상 (↗ 모양)
                ship_on = (pixel_x == s_x+2 && pixel_y == s_y-2) ||
                          (pixel_x >= s_x   && pixel_x <= s_x+1 && pixel_y == s_y-1) ||
코드를 사용할 때는 주의가 필요합니다.
(pixel_x >= s_x-1 && pixel_x <= s_x   && pixel_y == s_y)   ||
(pixel_x == s_x-2 && pixel_y == s_y) || (pixel_x == s_x && pixel_y == s_y+1);
end
3'd2: begin // 2: 오른쪽 (▶ 모양)
ship_on = (pixel_x == s_x+3 && pixel_y == s_y) ||
(pixel_x == s_x+2 && pixel_y >= s_y-1 && pixel_y <= s_y+1) ||
(pixel_x == s_x+1 && pixel_y >= s_y-2 && pixel_y <= s_y+2) ||
(pixel_x == s_x   && (pixel_y == s_y-2 || pixel_y <= s_y+2));
end
3'd3: begin // 3: 우하 (↘ 모양)
ship_on = (pixel_x == s_x+2 && pixel_y == s_y+2) ||
(pixel_x >= s_x   && pixel_x <= s_x+1 && pixel_y == s_y+1) ||
(pixel_x >= s_x-1 && pixel_x <= s_x   && pixel_y == s_y)   ||
(pixel_x == s_x-2 && pixel_y == s_y) || (pixel_x == s_x && pixel_y == s_y-1);
end
3'd4: begin // 4: 아래 (▼ 모양)
ship_on = (pixel_x == s_x   && pixel_y == s_y+3) ||
(pixel_x >= s_x-1 && pixel_x <= s_x+1 && pixel_y == s_y+2) ||
(pixel_x >= s_x-2 && pixel_x <= s_x+2 && pixel_y == s_y+1) ||
(pixel_x == s_x-2 && pixel_y == s_y) || (pixel_x == s_x+2 && pixel_y == s_y);
end
3'd5: begin // 5: 좌하 (↙ 모양)
ship_on = (pixel_x == s_x-2 && pixel_y == s_y+2) ||
(pixel_x >= s_x-1 && pixel_x <= s_x   && pixel_y == s_y+1) ||
(pixel_x >= s_x   && pixel_x <= s_x+1 && pixel_y == s_y)   ||
(pixel_x == s_x+2 && pixel_y == s_y) || (pixel_x == s_x && pixel_y == s_y-1);
end
3'd6: begin // 6: 왼쪽 (◀ 모양)
ship_on = (pixel_x == s_x-3 && pixel_y == s_y) ||
(pixel_x == s_x-2 && pixel_y >= s_y-1 && pixel_y <= s_y+1) ||
(pixel_x == s_x-1 && pixel_y >= s_y-2 && pixel_y <= s_y+2) ||
(pixel_x == s_x   && (pixel_y == s_y-2 || pixel_y <= s_y+2));
end
3'd7: begin // 7: 좌상 (↖ 모양)
ship_on = (pixel_x == s_x-2 && pixel_y == s_y-2) ||
(pixel_x >= s_x-1 && pixel_x <= s_x   && pixel_y == s_y-1) ||
(pixel_x >= s_x   && pixel_x <= s_x+1 && pixel_y == s_y)   ||
(pixel_x == s_x+2 && pixel_y == s_y) || (pixel_x == s_x && pixel_y == s_y+1);
end
default: ship_on = 1'b0;
endcase
// 소행성 3x3 사각형 마스크 검사
ast_on = (ast_active && (pixel_x >= ast_px[14:8]-1 && pixel_x <= ast_px[14:8]+1) && (pixel_y >= ast_py[13:8]-1 && pixel_y <= ast_py[13:8]+1)) ||
(ast_active && (pixel_x >= ast_px[14:8]-1 && pixel_x <= ast_px[14:8]+1) && (pixel_y >= ast_py[13:8]-1 && pixel_y <= ast_py[13:8]+1)) ||
(ast_active && (pixel_x >= ast_px[14:8]-1 && pixel_x <= ast_px[14:8]+1) && (pixel_y >= ast_py[13:8]-1 && pixel_y <= ast_py[13:8]+1));
// 총알 1픽셀 마스크 검사
bul_on = (bul_life > 0 && pixel_x == bul_px[14:8] && pixel_y == bul_py[13:8]) ||
(bul_life > 0 && pixel_x == bul_px[14:8] && pixel_y == bul_py[13:8]) ||
(bul_life > 0 && pixel_x == bul_px[14:8] && pixel_y == bul_py[13:8]);
// 컴바이너: 유효 비디오 영역이면서 마스크 중 하나라도 참이면 하이(1) 출력
if (video_on && (ship_on || ast_on || bul_on))
pixel_data = 1'b1;
else
pixel_data = 1'b0;
end
endmodule
