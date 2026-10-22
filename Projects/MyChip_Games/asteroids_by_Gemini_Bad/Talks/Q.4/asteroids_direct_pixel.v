module asteroids_direct_pixel (
    input wire clk,             // 시스템 클럭 (타이밍에 맞는 픽셀 클럭 분주 필요)
    input wire rst_n,           // 리셋 (Active Low)
    
    // 조작 키 입력 (디바운싱 완료 신호 가정)
    input wire btn_left,        // 좌회전
    input wire btn_right,       // 우회전
    input wire btn_thrust,      // 전진 가속
    input wire btn_fire,        // 총알 발사
    
    // 128x64 타이밍 출력 신호
    output reg hsync,           // 수평 동기 신호
    output reg vsync,           // 수직 동기 신호
    output reg pixel_data       // 실시간 픽셀 데이터 출력 (1: On, 0: Off)
);

    //========================================================================
    // 1. 128x64 표준 디스플레이 타이밍 파라미터 정의 (예시: 128x64 @ 60Hz 규격)
    //========================================================================
    // 실제 연결할 디스플레이 패널(LCD/OLED)의 데이터시트 타이밍에 맞춰 수정 가능합니다.
    localparam H_ACTIVE = 128;
    localparam H_FRONT  = 4;
    localparam H_SYNC   = 12;
    localparam H_BACK   = 16;
    localparam H_TOTAL  = H_ACTIVE + H_FRONT + H_SYNC + H_BACK; // 160

    localparam V_ACTIVE = 64;
    localparam V_FRONT  = 2;
    localparam V_SYNC   = 4;
    localparam V_BACK   = 10;
    localparam V_TOTAL  = V_ACTIVE + V_FRONT + V_SYNC + V_BACK; // 80

    reg [7:0] h_cnt; // 0 ~ 159
    reg [6:0] v_cnt; // 0 ~ 79

    wire video_on = (h_cnt < H_ACTIVE) && (v_cnt < V_ACTIVE);
    wire [6:0] pixel_x = h_cnt[6:0]; // 0 ~ 127
    wire [5:0] pixel_y = v_cnt[5:0]; // 0 ~ 63

    // 타이밍 카운터 구동
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            h_cnt <= 0;
            v_cnt <= 0;
        end begin
            if (h_cnt == H_TOTAL - 1) begin
                h_cnt <= 0;
                if (v_cnt == V_TOTAL - 1) v_cnt <= 0;
                else v_cnt <= v_cnt + 1'b1;
            end else begin
                h_cnt <= h_cnt + 1'b1;
            end
        end
    end

    // 싱크 신호 생성 (일반적인 Negative Sync 기준)
    always @(posedge clk) begin
        hsync <= ~((h_cnt >= H_ACTIVE + H_FRONT) && (h_cnt < H_ACTIVE + H_FRONT + H_SYNC));
        vsync <= ~((v_cnt >= V_ACTIVE + V_FRONT) && (v_cnt < V_ACTIVE + V_FRONT + V_SYNC));
    end


    //========================================================================
    // 2. 게임 객체 변수 및 고정소수점 데이터 정의 (정수 + 소수점 이하 8비트)
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
    reg signed [7:0] acc_x [0:7];
    reg signed [7:0] acc_y [0:7];
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
    // 3. 물리 엔진 및 오브젝트 업데이트 (V싱크 타이밍에 동기화)
    //========================================================================
    // 화면 전체 출력이 끝나고 VSYNC가 시작되는 시점에 딱 1번 프레임을 갱신합니다.
    wire frame_tick = (h_cnt == H_ACTIVE) && (v_cnt == V_ACTIVE);
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            btn_fire_old <= 1'b0;
            ship_px <= 15'd64 << 8;  ship_py <= 14'd32 << 8;
            ship_vx <= 0;            ship_vy <= 0;
            ship_angle <= 0;

            ast_px[0] <= 15'd20 << 8;  ast_py[0] <= 14'd15 << 8;  ast_vx[0] <= 8'sd8;   ast_vy[0] <= 8'sd4;   ast_active[0] <= 1'b1;
            ast_px[1] <= 15'd100 << 8; ast_py[1] <= 14'd45 << 8;  ast_vx[1] <= -8'sd6;  ast_vy[1] <= -8'sd8;  ast_active[1] <= 1'b1;
            ast_px[2] <= 15'd40 << 8;  ast_py[2] <= 14'd50 << 8;  ast_vx[2] <= 8'sd10;  ast_vy[2] <= -8'sd4;  ast_active[2] <= 1'b1;

            for(i=0; i<3; i=i+1) bul_life[i] <= 0;
        end else begin
            btn_fire_old <= btn_fire;

            if (frame_tick) begin
                // A. 우주선 이동 및 회전
                if (btn_left)  ship_angle <= ship_angle - 1'b1;
                if (btn_right) ship_angle <= ship_angle + 1'b1;
                if (btn_thrust) begin
                    ship_vx <= ship_vx + acc_x[ship_angle];
                    ship_vy <= ship_vy + acc_y[ship_angle];
                end
                ship_px <= ship_px + ship_vx;
                ship_py <= ship_py + ship_vy;

                // 우주선 랩핑
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

                // C. 총알 발사 처리
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

                // D. 총알 이동 및 수명 감소, 충돌 연산
                for(i=0; i<3; i=i+1) begin
                    if (bul_life[i] > 0) begin
                        bul_px[i] <= bul_px[i] + bul_vx[i];
                        bul_py[i] <= bul_py[i] + bul_vy[i];
                        bul_life[i] <= bul_life[i] - 1'b1;

                        if (bul_px[i][14:8] >= 128) bul_px[i] <= 0;
                        else if (bul_px[i] < 0)     bul_px[i] <= 15'd127 << 8;
                        if (bul_py[i][13:8] >= 64)  bul_py[i] <= 0;
                        else if (bul_py[i] < 0)     bul_py[i] <= 14'd63 << 8;
                        
                        // 총알-소행성 충돌 판정 (범위 4픽셀 이내)
                        if (ast_active[0] && (bul_px[i][14:8] >= ast_px[0][14:8]-2 && bul_px[i][14:8] <= ast_px[0][14:8]+2) && (bul_py[i][13:8] >= ast_py[0][13:8]-2 && bul_py[i][13:8] <= ast_py[0][13:8]+2)) begin ast_active[0] <= 0; bul_life[i] <= 0; end
                        if (ast_active[1] && (bul_px[i][14:8] >= ast_px[1][14:8]-2 && bul_px[i][14:8] <= ast_px[1][14:8]+2) && (bul_py[i][13:8] >= ast_py[1][13:8]-2 && bul_py[i][13:8] <= ast_py[1][13:8]+2)) begin ast_active[1] <= 0; bul_life[i] <= 0; end
                        if (ast_active[2] && (bul_px[i][14:8] >= ast_px[2][14:8]-2 && bul_px[i][14:8] <= ast_px[2][14:8]+2) && (bul_py[i][13:8] >= ast_py[2][13:8]-2 && bul_py[i][13:8] <= ast_py[2][13:8]+2)) begin ast_active[2] <= 0; bul_life[i] <= 0; end
                    end
                end
            end
        end
    end


    //========================================================================
    // 4. 실시간 픽셀 매핑 및 출력 (조합 회로 방식)
    //========================================================================
    wire [6:0] s_x = ship_px[14:8];
    wire [5:0] s_y = ship_py[13:8];

    reg ship_on;
    reg ast_on;
    reg bul_on;

    always @(*) begin
        // A. 우주선 비디오 마스크 (십자선 형태)
        ship_on = (pixel_x == s_x && pixel_y == s_y) ||
                  (pixel_x == s_x-1 && pixel_y == s_y) ||
                  (pixel_x == s_x+1 && pixel_y == s_y) ||
                  (pixel_x == s_x && pixel_y == s_y-1);

        // B. 소행성 비디오 마스크 (활성화된 소행성을 3x3 사각형으로 실시간 조합)
        ast_on = (ast_active[0] && (pixel_x >= ast_px[0][14:8]-1 && pixel_x <= ast_px[0][14:8]+1) && (pixel_y >= ast_py[0][13:8]-1 && pixel_y <= ast_py[0][13:8]+1)) ||
                 (ast_active[1] && (pixel_x >= ast_px[1][14:8]-1 && pixel_x <= ast_px[1][14:8]+1) && (pixel_y >= ast_py[1][13:8]-1 && pixel_y <= ast_py[1][13:8]+1)) ||
                 (ast_active[2] && (pixel_x >= ast_px[2][14:8]-1 && pixel_x <= ast_px[2][14:8]+1) && (pixel_y >= ast_py[2][13:8]-1 && pixel_y <= ast_py[2][13:8]+1));

        // C. 총알 비디오 마스크 (살아있는 총알을 1픽셀 점으로 실시간 조합)
        bul_on = (bul_life[0] > 0 && pixel_x == bul_px[0][14:8] && pixel_y == bul_py[0][13:8]) ||
                 (bul_life[1] > 0 && pixel_x == bul_px[1][14:8] && pixel_y == bul_py[1][13:8]) ||
코드를 사용할 때는 주의가 필요합니다.
(bul_life[2] > 0 && pixel_x == bul_px[2][14:8] && pixel_y == bul_py[2][13:8]);
// 최종 픽셀 데이터 출력 생성
if (video_on && (ship_on || ast_on || bul_on))
pixel_data = 1'b1;
else
pixel_data = 1'b0;
end
endmodule
