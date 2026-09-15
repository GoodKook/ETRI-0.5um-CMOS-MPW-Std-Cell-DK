// space_invaders_engine_glcd.v
// 128x64 Graphic LCD Bus Interface를 탑재한 아케이드 게임 엔진

module space_invaders_engine (
    input wire clk,           // 시스템 클럭 (예: 50MHz)
    input wire rst_n,         // Active-low 리셋
    input wire btn_left,      // 플레이어 왼쪽 이동
    input wire btn_right,     // 플레이어 오른쪽 이동
    input wire btn_fire,      // 미사일 발사

    // SDL2 가상 LCD 모듈 및 DPI-C 테스트벤치로 직접 데이터를 밀어넣는 그래픽 버스 인터페이스
    output reg        lcd_write_en, // LCD 메모리 쓰기 신호
    output reg [6:0]  lcd_x,        // 0 ~ 127 수평 주소
    output reg [5:0]  lcd_y,        // 0 ~ 63 수직 주소
    output reg        lcd_data      // 1-bit 픽셀 데이터 (1: 켬, 0: 끔)
);

    // 128x64 해상도 맞춤 파라미터
    localparam SCREEN_WIDTH  = 7'd128;
    localparam SCREEN_HEIGHT = 6'd64;

    // 아케이드 오브젝트 축소 크기 (128x64 해상도 비율에 맞춤)
    localparam CANNON_WIDTH   = 7'd10;
    localparam CANNON_HEIGHT  = 6'd4;
    localparam INVADER_WIDTH  = 7'd8;
    localparam INVADER_HEIGHT = 6'd6;
    localparam BULLET_WIDTH   = 7'd1;
    localparam BULLET_HEIGHT  = 6'd3;

    localparam CANNON_Y = SCREEN_HEIGHT - 6'd6;

    // 게임 상태 머신 정의
    localparam STATE_START = 2'b00;
    localparam STATE_PLAY  = 2'b01;
    localparam STATE_OVER  = 2'b10;
    reg [1:0] current_state, next_state;

    // 하드웨어 내부 게임 좌표 레지스터
    reg [6:0] cannon_x;
    reg [6:0] bullet_x;
    reg [5:0] bullet_y;
    reg       bullet_active;

    // 3마리의 외계인 대형 배치 예시
    reg [6:0] invader_x [0:2];
    reg [5:0] invader_y;
    reg [2:0] invader_alive;
    reg       invader_dir; 

    // 내부 연산 클럭 디바이더 (게임 메인 루프 연산 속도 제어: 약 60Hz)
    reg [19:0] game_tick_counter;
    wire game_tick = (game_tick_counter == 20'd833333); // 50MHz 기준 약 60Hz

    // 화면 전체를 연속적으로 스캔하며 LCD 버스에 데이터를 뿌려주는 드로잉 카운터
    reg [6:0] scan_x;
    reg [5:0] scan_y;

    // --- 1. 클럭 분주기 및 상태 머신 ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) game_tick_counter <= 20'b0;
        else if (game_tick) game_tick_counter <= 20'b0;
        else game_tick_counter <= game_tick_counter + 1'b1;
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) current_state <= STATE_START;
        else        current_state <= next_state;
    end

    always @(*) begin
        next_state = current_state;
        case (current_state)
            STATE_START: if (btn_fire) next_state = STATE_PLAY;
            STATE_PLAY:  if (invader_alive == 3'b000) next_state = STATE_OVER;
            STATE_OVER:  if (btn_fire) next_state = STATE_START;
            default:     next_state = STATE_START;
        endcase
    end

    // --- 2. 게임 메인 게임 로직 (60Hz 동기화 연산) ---
    integer i;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cannon_x      <= 7'd59;
            bullet_active <= 1'b0;
            bullet_x      <= 7'b0;
            bullet_y      <= 6'b0;
            invader_y     <= 6'd10;
            invader_dir   <= 1'b1;
            invader_alive <= 3'b111;
            invader_x[0]  <= 7'd20; 
            invader_x[1]  <= 7'd50; 
            invader_x[2]  <= 7'd80;
        end 
        else if (current_state == STATE_PLAY && game_tick) begin
            // 패들 이동 제어
            if (btn_left && (cannon_x > 7'd1))
                cannon_x <= cannon_x - 1'b1;
            if (btn_right && (cannon_x < SCREEN_WIDTH - CANNON_WIDTH - 7'd1))
                cannon_x <= cannon_x + 1'b1;

            // 아군 미사일 로직
            if (btn_fire && !bullet_active) begin
                bullet_active <= 1'b1;
                bullet_x      <= cannon_x + 7'd4;
                bullet_y      <= CANNON_Y - BULLET_HEIGHT;
            end 
            else if (bullet_active) begin
                if (bullet_y <= 6'd2) bullet_active <= 1'b0;
                else                  bullet_y <= bullet_y - 1'b1;
            end

            // 외계인 좌우 이동 및 하강 (대형의 가장 왼쪽 외계인 기준으로 바운스 판정)
            if (invader_dir) begin
                if (invader_x[2] >= SCREEN_WIDTH - INVADER_WIDTH - 7'd2) begin
                    invader_dir <= 1'b0;
                    invader_y   <= invader_y + 6'd2;
                end else begin
                    for(i=0; i<3; i=i+1) invader_x[i] <= invader_x[i] + 1'b1;
                end
            end else begin
                if (invader_x[0] <= 7'd2) begin
                    invader_dir <= 1'b1;
                    invader_y   <= invader_y + 6'd2;
                end else begin
                    for(i=0; i<3; i=i+1) invader_x[i] <= invader_x[i] - 1'b1;
                end
            end

            // 충돌 감지 피드백
            if (bullet_active) begin
                for(i=0; i<3; i=i+1) begin
                    if (invader_alive[i]) begin
                        if ((bullet_x >= invader_x[i]) && (bullet_x <= invader_x[i] + INVADER_WIDTH) &&
                            (bullet_y >= invader_y) && (bullet_y <= invader_y + INVADER_HEIGHT)) begin
                            invader_alive[i] <= 1'b0;
                            bullet_active    <= 1'b0;
                        end
                    end
                end
            end
        end
    end

    // --- 3. LCD 스트리밍 주소 카운터 및 데이터 브로드캐스트 ---
    // 하드웨어 자체적으로 128x64를 무한 반복 스캔하며 가상 LCD에 그리기 신호를 보냅니다.
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            scan_x <= 7'b0;
            scan_y <= 6'b0;
        end else begin
            if (scan_x == SCREEN_WIDTH - 1'b1) begin
                scan_x <= 7'b0;
                if (scan_y == SCREEN_HEIGHT - 1'b1)
                    scan_y <= 6'b0;
                else
                    scan_y <= scan_y + 1'b1;
            end else begin
                scan_x <= scan_x + 1'b1;
            end
        end
    end

    // 그리기 판정 레이어 계산 (현재 스캔 좌표 기준)
    wire draw_cannon = (scan_x >= cannon_x) && (scan_x < cannon_x + CANNON_WIDTH) &&
                       (scan_y >= CANNON_Y) && (scan_y < CANNON_Y + CANNON_HEIGHT);
                       
    wire draw_bullet = bullet_active && 
                       (scan_x >= bullet_x) && (scan_x < bullet_x + BULLET_WIDTH) &&
                       (scan_y >= bullet_y) && (scan_y < bullet_y + BULLET_HEIGHT);

    reg draw_invader;
    always @(*) begin
        draw_invader = 1'b0;
        for(i=0; i<3; i=i+1) begin
            if (invader_alive[i]) begin
                if ((scan_x >= invader_x[i]) && (scan_x < invader_x[i] + INVADER_WIDTH) &&
                    (scan_y >= invader_y) && (scan_y < invader_y + INVADER_HEIGHT)) begin
                    draw_invader = 1'b1;
                end
            end
        end
    end

    // 버스 출력 핀 드라이브 처리
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            lcd_write_en <= 1'b0;
            lcd_x        <= 7'b0;
            lcd_y        <= 6'b0;
            lcd_data     <= 1'b0;
        end else begin
            // 매 사이클마다 지속적으로 데이터 유효를 알림
            lcd_write_en <= 1'b1; 
            lcd_x        <= scan_x;
            lcd_y        <= scan_y;

            if (current_state == STATE_PLAY) begin
                // 오브젝트 중 하나라도 걸리면 픽셀을 켬(1), 빈 공간이면 끔(0)
                lcd_data <= (draw_cannon || draw_bullet || draw_invader);
            end else if (current_state == STATE_START) begin
                // 시작 대기 화면: 바둑판무늬 대기 스크린 예시
                lcd_data <= (scan_x[2] ^ scan_y[2]); 
            end else begin
                // 게임 오버 화면: 외곽 테두리만 격자로 채우기
                lcd_data <= (scan_x == 7'd0 || scan_x == SCREEN_WIDTH-1 || scan_y == 6'd0 || scan_y == SCREEN_HEIGHT-1);
            end
        end
    end

endmodule
