// Q8a. 외계인도 공격할 수 있도록 하라
//-------------------------------------------------------------------
// Filename: space_invaders_engine_glcd.v
// 5x5 외계인 부대 및 외계인 반격 미사일 기능이 탑재된 아케이드 엔진
//-------------------------------------------------------------------

module space_invaders_engine_glcd (
    input wire clk,           // 시스템 클럭 (50MHz)
    input wire rst_n,         // Active-low 리셋
    input wire btn_left,      // 플레이어 왼쪽 이동
    input wire btn_right,     // 플레이어 오른쪽 이동
    input wire btn_fire,      // 미사일 발사

    // DPI-C 테스트벤치 및 가상 LCD 연동 버스 인터페이스
    output reg        lcd_write_en, 
    output reg [6:0]  lcd_x,        
    output reg [5:0]  lcd_y,        
    output reg        lcd_data      
);

    // 128x64 해상도 맞춤 파라미터
    localparam SCREEN_WIDTH  = 7'd128;
    localparam SCREEN_HEIGHT = 6'd64;

    // 아케이드 오브젝트 축소 크기
    localparam CANNON_WIDTH   = 7'd10;
    localparam CANNON_HEIGHT  = 6'd4;
    localparam INVADER_WIDTH  = 7'd6;   
    localparam INVADER_HEIGHT = 6'd4;   
    localparam BULLET_WIDTH   = 7'd1;
    localparam BULLET_HEIGHT  = 6'd3;

    // 5x5 외계인 레이아웃 간격 파라미터
    localparam INVADER_SPACING_X = 7'd10; 
    localparam INVADER_SPACING_Y = 6'd6;  
    localparam GRID_WIDTH        = (4 * INVADER_SPACING_X) + INVADER_WIDTH; 

    localparam CANNON_Y = SCREEN_HEIGHT - 6'd6;

    // 게임 상태 머신 정의
    localparam STATE_START = 2'b00;
    localparam STATE_PLAY  = 2'b01;
    localparam STATE_OVER  = 2'b10;
    reg [1:0] current_state, next_state;

    // 하드웨어 내부 게임 좌표 레지스터
    reg [6:0] cannon_x;
    
    // 플레이어 미사일 레지스터
    reg [6:0] bullet_x;
    reg [5:0] bullet_y;
    reg       bullet_active;

    // 💡 외계인 미사일 레지스터 (추가)
    reg [6:0] inv_bullet_x;
    reg [5:0] inv_bullet_y;
    reg       inv_bullet_active;

    // 5x5 외계인 부대 제어 레지스터
    reg [6:0] group_x;          
    reg [5:0] group_y;          
    reg [24:0] invader_alive;   
    reg       invader_dir;      

    // 내부 연산 클럭 디바이더 (게임 메인 루프 연산 속도 제어: 약 60Hz)
    reg [19:0] game_tick_counter;
    wire game_tick = (game_tick_counter == 20'd833333); 

    // 💡 하드웨어 의사 난수용 자유 가동 카운터 (추가)
    reg [7:0] rand_counter;
    always @(posedge clk)
        rand_counter <= rand_counter + 1'b1;

    // 화면 전체를 연속적으로 스캔하며 LCD 버스에 데이터를 뿌려주는 드로잉 카운터
    reg [6:0] scan_x;
    reg [5:0] scan_y;

    // --- 1. 클럭 분주기 및 상태 머신 ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            game_tick_counter <= 20'b0;
        else if (game_tick)
            game_tick_counter <= 20'b0;
        else
            game_tick_counter <= game_tick_counter + 1'b1;
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= STATE_START;
        else
            current_state <= next_state;
    end

    always @(*) begin
        next_state = current_state;
        case (current_state)
            STATE_START:
                if (btn_fire)
                    next_state = STATE_PLAY;
            // 25마리 전멸 시 승리 엔딩 처리
            STATE_PLAY:
                if (invader_alive == 25'b0)
                    next_state = STATE_OVER;
            STATE_OVER:
                if (btn_fire)
                    next_state = STATE_START;
            default:
                    next_state = STATE_START;
        endcase
    end

    // --- 2. 메인 게임 핵심 로직 (60Hz 동기화 연산) ---
    integer r, c; 
    reg [6:0] t_invader_x;
    reg [5:0] t_invader_y;
    reg       hit_detected;
    reg [2:0] shoot_col; // 발사할 외계인 열 선택용

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cannon_x          <= 7'd59;
            bullet_active     <= 1'b0;
            bullet_x          <= 7'b0;
            bullet_y          <= 6'b0;
            inv_bullet_active <= 1'b0;
            inv_bullet_x      <= 7'b0;
            inv_bullet_y      <= 6'b0;
            
            group_x       <= 7'd10; 
            group_y       <= 6'd6;  
            invader_dir   <= 1'b1;  
            invader_alive <= 25'b11111_11111_11111_11111_11111; 
        end 
        else if (current_state == STATE_PLAY && game_tick) begin
            // [A] 플레이어 우주선 이동 제어
            if (btn_left && (cannon_x > 7'd1))
                cannon_x <= cannon_x - 1'b1;
            if (btn_right && (cannon_x < SCREEN_WIDTH - CANNON_WIDTH - 7'd1))
                cannon_x <= cannon_x + 1'b1;

            // [B] 아군 미사일 상향 물리 이동
            if (btn_fire && !bullet_active) begin
                bullet_active <= 1'b1;
                bullet_x      <= cannon_x + 7'd4;
                bullet_y      <= CANNON_Y - BULLET_HEIGHT;
            end 
            else if (bullet_active) begin
                if (bullet_y <= 6'd2)
                    bullet_active <= 1'b0;
                else
                    bullet_y <= bullet_y - 1'b1;
            end

            // [C] 외계인 부대 좌우 왕복 및 전체 하강 이동
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

            // [D] 💡 외계인 공격 발사 생성 로직 (추가)
            // 약 1초에 한두 번꼴로 무작위 타이밍(rand_counter 이용)에 외계인이 하향 미사일을 발사합니다.
            if (!inv_bullet_active && (rand_counter[4:0] == 5'h1F)) begin
                shoot_col = rand_counter[7:5] % 5; // 0~4열 무작위 선택
                
                // 선택된 열의 최하단에 살아있는 외계인을 찾아 미사일 생성 위치 지정
                hit_detected = 1'b0;
                for (r = 4; r >= 0; r = r - 1) begin
                    if (!hit_detected && invader_alive[r*5 + shoot_col]) begin
                        inv_bullet_active <= 1'b1;
                        inv_bullet_x      <= group_x + (shoot_col * INVADER_SPACING_X) + (INVADER_WIDTH / 2);
                        inv_bullet_y      <= group_y + (r * INVADER_SPACING_Y) + INVADER_HEIGHT;
                        hit_detected       = 1'b1;
                    end
                end
            end

            // [E] 💡 외계인 미사일 하향 물리 이동 (추가)
            if (inv_bullet_active) begin
                if (inv_bullet_y >= SCREEN_HEIGHT - 6'd3) begin
                    inv_bullet_active <= 1'b0; // 바닥에 닿으면 소멸
                end else begin
                    inv_bullet_y <= inv_bullet_y + 1'b1; // 매 틱마다 아래로 전진
                end
            end

            // [F] 아군 미사일 -> 외계인 부대 충돌 감지 매트릭스 연산
            if (bullet_active) begin
                hit_detected = 1'b0;
                for (r = 0; r < 5; r = r + 1) begin
                    for (c = 0; c < 5; c = c + 1) begin
                        if (!hit_detected && invader_alive[r*5 + c]) begin
                            t_invader_x = group_x + (c * INVADER_SPACING_X);
                            t_invader_y = group_y + (r * INVADER_SPACING_Y);
                            
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

            // [G] 💡 외계인 미사일 -> 플레이어 아군 우주선 충돌 감지 (추가)
            if (inv_bullet_active) begin
                if ((inv_bullet_x >= cannon_x) && (inv_bullet_x <= cannon_x + CANNON_WIDTH) &&
                    (inv_bullet_y >= CANNON_Y) && (inv_bullet_y <= CANNON_Y + CANNON_HEIGHT)) begin
                    inv_bullet_active <= 1'b0;
                    current_state     <= STATE_OVER; // 💡 격추당하면 즉시 게임오버 상태머신 전환
                end
            end
        end
    end

    // --- 3. LCD 스트리밍 주소 카운터 (128x64 스캔 유지) ---
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

    // 그리기 판정 레이어 계산
    wire draw_cannon = (scan_x >= cannon_x) && (scan_x < cannon_x + CANNON_WIDTH) &&
                       (scan_y >= CANNON_Y) && (scan_y < CANNON_Y + CANNON_HEIGHT);
                       
    wire draw_bullet = bullet_active && 
                       (scan_x >= bullet_x) && (scan_x < bullet_x + BULLET_WIDTH) &&
                       (scan_y >= bullet_y) && (scan_y < bullet_y + BULLET_HEIGHT);

    // 💡 외계인 미사일 그리기 판정 추가
    wire draw_inv_bullet = inv_bullet_active &&
                           (scan_x >= inv_bullet_x) && (scan_x < inv_bullet_x + BULLET_WIDTH) &&
                           (scan_y >= inv_bullet_y) && (scan_y < inv_bullet_y + BULLET_HEIGHT);

    // 5x5 외계인 부대 화면 픽셀 매핑 연산
    reg draw_invader;
    reg [6:0] curr_inv_x;
    reg [5:0] curr_inv_y;
    
    always @(*) begin
        draw_invader = 1'b0;
        for (r = 0; r < 5; r = r + 1) begin
            for (c = 0; c < 5; c = c + 1) begin
                if (invader_alive[r*5 + c]) begin
                    curr_inv_x = group_x + (c * INVADER_SPACING_X);
                    curr_inv_y = group_y + (r * INVADER_SPACING_Y);
                    
                    if ((scan_x >= curr_inv_x) && (scan_x < curr_inv_x + INVADER_WIDTH) &&
                        (scan_y >= curr_inv_y) && (scan_y < curr_inv_y + INVADER_HEIGHT)) begin
                        draw_invader = 1'b1;
                    end
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
        end
        else begin
            lcd_write_en <= 1'b1;
            lcd_x <= scan_x;
            lcd_y <= scan_y;
            if (current_state == STATE_PLAY) begin
                // 아군 미사일, 외계인 부대 외에 적 미사일(draw_inv_bullet)도 레이어에 합성합니다.
                lcd_data <= (draw_cannon || draw_bullet || draw_invader || draw_inv_bullet);
            end else if (current_state == STATE_START) begin
                lcd_data <= (scan_x ^ scan_y);
            end else begin
                lcd_data <= (scan_x == 7'd0 || scan_x == SCREEN_WIDTH-1 || scan_y == 6'd0 || scan_y == SCREEN_HEIGHT-1);
            end
        end
    end
endmodule

