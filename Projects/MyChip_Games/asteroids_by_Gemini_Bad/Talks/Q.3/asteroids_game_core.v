verilog
module asteroids_game_core (
    input wire clk,             // 시스템 클럭
    input wire rst_n,           // 리셋 (Active Low)
    
    // 조작 키 입력 (디바운싱 완료된 신호 가정)
    input wire btn_left,        // 좌회전
    input wire btn_right,       // 우회전
    input wire btn_thrust,      // 전진 가속
    input wire btn_fire,        // 총알 발사
    
    // 프레임 동기화 신호 (OLED나 외부 디스플레이가 1프레임을 다 그렸을 때 주는 1클럭 펄스)
    input wire frame_sync,      
    
    // 외부에 있는 프레임 버퍼(Dual-port RAM) 제어 인터페이스
    output reg fb_we,           // Frame Buffer Write Enable
    output reg [6:0] fb_x,      // 0 ~ 127
    output reg [5:0] fb_y,      // 0 ~ 63
    output reg fb_data          // 1: Pixel On, 0: Pixel Off
);

    //========================================================================
    // 1. 게임 상태 정의 (FSM)
    //========================================================================
    localparam ST_IDLE       = 3'd0;
    localparam ST_CLEAR      = 3'd1;
    localparam ST_UPDATE     = 3'd2;
    localparam ST_DRAW_SHIP  = 3'd3;
    localparam ST_DRAW_AST   = 3'd4;
    localparam ST_DRAW_BUL   = 3'd5;
    localparam ST_DONE       = 3'd6;

    reg [2:0] state;
    reg [6:0] clear_x;
    reg [5:0] clear_y;

    //========================================================================
    // 2. 게임 객체 변수 및 고정소수점 데이터 정의 (정수 + 소수점 이하 8비트)
    //========================================================================
    // (A) 우주선 (Ship)
    reg signed [14:0] ship_px; // 7비트 정수 + 8비트 소수
    reg signed [13:0] ship_py; // 6비트 정수 + 8비트 소수
    reg signed [7:0]  ship_vx, ship_vy;
    reg [2:0]         ship_angle; // 8방향 (0~7)

    // (B) 소행성 (Asteroids - 3개 배열 관리)
    reg signed [14:0] ast_px [0:2];
    reg signed [13:0] ast_py [0:2];
    reg signed [7:0]  ast_vx [0:2];
    reg signed [7:0]  ast_vy [0:2];
    reg               ast_active [0:2];

    // (C) 총알 (Bullets - 최대 3발 관리)
    reg signed [14:0] bul_px [0:2];
    reg signed [13:0] bul_py [0:2];
    reg signed [7:0]  bul_vx [0:2];
    reg signed [7:0]  bul_vy [0:2];
    reg [5:0]         bul_life [0:2]; // 총알 수명 (프레임 카운트)

    // 루프/인덱스용 카운터
    reg [1:0] draw_idx;
    reg btn_fire_old;

    //========================================================================
    // 3. 이동 및 물리 연산 룩업테이블 (LUT)
    //========================================================================
    reg signed [7:0] acc_x [0:7];
    reg signed [7:0] acc_y [0:7];
    initial begin
        // 가속도 벡터 벡터 (정수 1비트 + 소수 7비트)
        acc_x[0] = 8'sb00000000; acc_y[0] = -8'sb00000100; // 0: 위
        acc_x[1] = 8'sb00000011; acc_y[1] = -8'sb00000011; // 1: 우상
        acc_x[2] = 8'sb00000100; acc_y[2] = 8'sb00000000;  // 2: 우
        acc_x[3] = 8'sb00000011; acc_y[3] = 8'sb00000011;  // 3: 우하
        acc_x[4] = 8'sb00000000; acc_y[4] = 8'sb00000100;  // 4: 아래
        acc_x[5] = -8'sb00000011; acc_y[5] = 8'sb00000011; // 5: 좌하
        acc_x[6] = -8'sb00000100; acc_y[6] = 8'sb00000000; // 6: 좌
        acc_x[7] = -8'sb00000011; acc_y[7] = -8'sb00000011;// 7: 좌상
    end

    //========================================================================
    // 4. 메인 게임 제어 상태 머신 (FSM) 및 로직
    //========================================================================
    integer i;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= ST_IDLE;
            fb_we <= 1'b0;
            fb_x <= 0; fb_y <= 0; fb_data <= 1'b0;
            clear_x <= 0; clear_y <= 0;
            draw_idx <= 0;
            btn_fire_old <= 1'b0;

            // 초기 위치 설정
            ship_px <= 15'd64 << 8;  ship_py <= 14'd32 << 8;
            ship_vx <= 0;            ship_vy <= 0;
            ship_angle <= 0;

            // 소행성 초기 설정 (무작위 위치 및 속도 예시)
            ast_px[0] <= 15'd20 << 8;  ast_py[0] <= 14'd15 << 8;
            ast_vx[0] <= 8'sd12;       ast_vy[0] <= 8'sd8;
            ast_active[0] <= 1'b1;

            ast_px[1] <= 15'd100 << 8; ast_py[1] <= 14'd45 << 8;
            ast_vx[1] <= -8'sd8;       ast_vy[1] <= -8'sd12;
            ast_active[1] <= 1'b1;

            ast_px[2] <= 15'd40 << 8;  ast_py[2] <= 14'd50 << 8;
            ast_vx[2] <= 8'sd16;       ast_vy[2] <= -8'sd6;
            ast_active[2] <= 1'b1;

            for(i=0; i<3; i=i+1) begin
                bul_life[i] <= 0;
            end

        end else begin
            btn_fire_old <= btn_fire;

            case (state)
                ST_IDLE: begin
                    fb_we <= 1'b0;
                    if (frame_sync) begin
                        clear_x <= 0;
                        clear_y <= 0;
                        state <= ST_CLEAR;
                    end
                end

                // -----------------------------------------------------------
                // [STEP 1] 화면 버퍼 초기화 (128x64 픽셀 순회 회로)
                // -----------------------------------------------------------
                ST_CLEAR: begin
                    fb_we <= 1'b1;
                    fb_x <= clear_x;
                    fb_y <= clear_y;
                    fb_data <= 1'b0; // 0으로 밀어버림

                    if (clear_x == 127) begin
                        clear_x <= 0;
                        if (clear_y == 63) begin
                            state <= ST_UPDATE;
                        end else begin
                            clear_y <= clear_y + 1'b1;
                        end
                    end else begin
                        clear_x <= clear_x + 1'b1;
                    end
                end

                // -----------------------------------------------------------
                // [STEP 2] 게임 오브젝트 물리 법칙 / 충돌 연산
                // -----------------------------------------------------------
                ST_UPDATE: begin
                    fb_we <= 1'b0;

                    // A. 우주선 각도 및 이동
                    if (btn_left)  ship_angle <= ship_angle - 1'b1;
                    if (btn_right) ship_angle <= ship_angle + 1'b1;
                    if (btn_thrust) begin
                        ship_vx <= ship_vx + acc_x[ship_angle];
                        ship_vy <= ship_vy + acc_y[ship_angle];
                    end
                    ship_px <= ship_px + ship_vx;
                    ship_py <= ship_py + ship_vy;

                    // 우주선 Screen Wrapping (128x64 boundary)
                    if (ship_px[14:8] >= 128) ship_px <= 0;
                    else if (ship_px < 0)     ship_px <= 15'd127 << 8;
                    if (ship_py[13:8] >= 64)  ship_py <= 0;
                    else if (ship_py < 0)     ship_py <= 14'd63 << 8;

                    // B. 소행성 이동 및 랩핑
                    for(i=0; i<3; i=i+1) begin
                        if (ast_active[i]) begin
                            ast_px[i] <= ast_px[i] + ast_vx[i];
                            ast_py[i] <= ast_py[i] + ast_vy[i];

                            if (ast_px[i][14:8] >= 128) ast_px[i] <= 0;
                            else if (ast_px[i] < 0)     ast_px[i] <= 15'd127 << 8;
                            if (ast_py[i][13:8] >= 64)  ast_py[i] <= 0;
                            else if (ast_py[i] < 0)     ast_py[i] <= 14'd63 << 8;
                        end
                    end

                    // C. 총알 발사 처리 (Edge Trigger)
                    if (btn_fire && !btn_fire_old) begin
                        // 비어있는 총알 슬롯 탐색
                        if (bul_life[0] == 0) begin
                            bul_px[0] <= ship_px; bul_py[0] <= ship_py;
                            bul_vx[0] <= ship_vx + (acc_x[ship_angle] << 2); // 우주선 속도 + 탄속
                            bul_vy[0] <= ship_vy + (acc_y[ship_angle] << 2);
                            bul_life[0] <= 6'd40; // 40프레임 동안 생존
                        end else if (bul_life[1] == 0) begin
                            bul_px[1] <= ship_px; bul_py[1] <= ship_py;
                            bul_vx[1] <= ship_vx + (acc_x[ship_angle] << 2);
                            bul_vy[1] <= ship_vy + (acc_y[ship_angle] << 2);
                            bul_life[1] <= 6'd40;
                        end else if (bul_life[2] == 0) begin
                            bul_px[2] <= ship_px; bul_py[2] <= ship_py;
                            bul_vx[2] <= ship_vx + (acc_x[ship_angle] << 2);
                            bul_vy[2] <= ship_vy + (acc_y[ship_angle] << 2);
                            bul_life[2] <= 6'd40;
                        end
                    end

                    // D. 총알 이동 및 수명 차감
                    for(i=0; i<3; i=i+1) begin
                        if (bul_life[i] > 0) begin
                            bul_px[i] <= bul_px[i] + bul_vx[i];
                            bul_py[i] <= bul_py[i] + bul_vy[i];
                            bul_life[i] <= bul_life[i] - 1'b1;

                            if (bul_px[i][14:8] >= 128) bul_px[i] <= 0;
                            else if (bul_px[i] < 0)     bul_px[i] <= 15'd127 << 8;
                            if (bul_py[i][13:8] >= 64)  bul_py[i] <= 0;
                            else if (bul_py[i] < 0)     bul_py[i] <= 14'd63 << 8;
                        end
                    end

                    // E. 간단한 충돌 판정 (총알과 소행성 거리 연산 - 바운딩 박스)
                    for(i=0; i<3; i=i+1) begin // 소행성 루프
                        if (ast_active[i]) begin
                            // 총알과 비교
                            if (bul_life[0] > 0 && 
                                (bul_px[0][14:8] >= ast_px[i][14:8]-3 && bul_px[0][14:8] <= ast_px[i][14:8]+3) &&
                                (bul_py[0][13:8] >= ast_py[i][13:8]-3 && bul_py[0][13:8] <= ast_py[i][13:8]+3)) begin
                                ast_active[i] <= 1'b0; bul_life[0] <= 0;
                            end
                            if (bul_life[1] > 0 && 
                                (bul_px[1][14:8] >= ast_px[i][14:8]-3 && bul_px[1][14:8] <= ast_px[i][14:8]+3) &&
                                (bul_py[1][13:8] >= ast_py[i][13:8]-3 && bul_py[1][13:8] <= ast_py[i][13:8]+3)) begin
코드를 사용할 때는 주의가 필요합니다.
ast_active[i] <= 1'b0; bul_life[1] <= 0;
end
if (bul_life[2] > 0 &&
(bul_px[2][14:8] >= ast_px[i][14:8]-3 && bul_px[2][14:8] <= ast_px[i][14:8]+3) &&
(bul_py[2][13:8] >= ast_py[i][13:8]-3 && bul_py[2][13:8] <= ast_py[i][13:8]+3)) begin
ast_active[i] <= 1'b0; bul_life[2] <= 0;
end
end
end
draw_idx <= 0;
state <= ST_DRAW_SHIP;
end
// -----------------------------------------------------------
// [STEP 3] 버퍼에 객체 그리기 (Draw 연산 블록들)
// -----------------------------------------------------------
ST_DRAW_SHIP: begin
fb_we <= 1'b1;
fb_data <= 1'b1;
// 우주선은 십자선(+) 모양 간이 렌더링 (순차 주소 적용)
if (draw_idx == 0) begin fb_x <= ship_px[14:8];     fb_y <= ship_py[13:8];     draw_idx <= 1; end
if (draw_idx == 1) begin fb_x <= ship_px[14:8] - 1; fb_y <= ship_py[13:8];     draw_idx <= 2; end
if (draw_idx == 2) begin fb_x <= ship_px[14:8] + 1; fb_y <= ship_py[13:8];     draw_idx <= 3; end
if (draw_idx == 3) begin fb_x <= ship_px[14:8];     fb_y <= ship_py[13:8] - 1; draw_idx <= 0; state <= ST_DRAW_AST; end
end
ST_DRAW_AST: begin
fb_we <= 1'b1;
fb_data <= 1'b1;
// 활성화된 소행성을 3x3 사각형 블록으로 그리기
if (ast_active[draw_idx]) begin
fb_x <= ast_px[draw_idx][14:8];
fb_y <= ast_py[draw_idx][13:8];
// (간소화를 위해 중심점 1픽셀만 표기, 필요시 draw_idx 서브 카운터로 확장 가능)
end
if (draw_idx == 2) begin
draw_idx <= 0;
state <= ST_DRAW_BUL;
end else begin
draw_idx <= draw_idx + 1'b1;
end
end
ST_DRAW_BUL: begin
fb_we <= 1'b1;
fb_data <= 1'b1;
// 살아있는 총알을 1픽셀 점으로 렌더링
if (bul_life[draw_idx] > 0) begin
fb_x <= bul_px[draw_idx][14:8];
fb_y <= bul_py[draw_idx][13:8];
end else begin
fb_we <= 1'b0; // 그리지 않음
end
if (draw_idx == 2) begin
state <= ST_DONE;
end else begin
draw_idx <= draw_idx + 1'b1;
end
end
// -----------------------------------------------------------
// [STEP 4] 1프레임 렌더링 연산 끝, 다음 화면 동기화 대기
// -----------------------------------------------------------
ST_DONE: begin
fb_we <= 1'b0;
state <= ST_IDLE; // 다시 프레임 동기화 대기
end
endcase
end
end
endmodule
