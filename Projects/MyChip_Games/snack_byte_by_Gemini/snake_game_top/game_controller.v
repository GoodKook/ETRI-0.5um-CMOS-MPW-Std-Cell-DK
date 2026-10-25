module game_controller (
    input  wire         clk,
    input  wire         rst_n,
    input  wire         btn_up,
    input  wire         btn_down,
    input  wire         btn_left,
    input  wire         btn_right,
    output reg  [3:0]   apple_grid_x,    // 사과의 그리드 X 좌표 (0~15)
    output reg  [2:0]   apple_grid_y,    // 사과의 그리드 Y 좌표 (0~7)
    output reg  [1:0]   current_dir,     // 00:우, 01:좌, 10:상, 11:하
    output reg  [4:0]   snake_len,       // 뱀 길이 (초기 3, 최대 16)
    output wire [111:0] snake_body_regs, // 상위 전송용 패킹 버스
    output reg          game_over
);

    // 뱀 마디 배열: 상위 4비트는 X 그리드, 하위 3비트는 Y 그리드
    reg [6:0] body_array [0:15]; 
    
    // 1차원 버스로 데이터 구조 병합
    genvar i;
    generate
        for(i=0; i<16; i=i+1) begin: BODY_BUS
            assign snake_body_regs[i*7 +: 7] = body_array[i];
        end
    endgenerate

    // FSM 상태 인코딩
    localparam S_IDLE     = 2'b00,
               S_PLAY     = 2'b01,
               S_GAMEOVER = 2'b10;
    reg [1:0] state, next_state;

    // 게임 루프 속도 제어 타이머 (0.15초 단위 전진)
    reg [23:0] move_tick_counter;
    wire       move_tick = (move_tick_counter == 24'd7_500_000);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)               move_tick_counter <= 24'd0;
        else if (state != S_PLAY) move_tick_counter <= 24'd0;
        else if (move_tick)       move_tick_counter <= 24'd0;
        else                      move_tick_counter <= move_tick_counter + 1'b1;
    end

    wire any_btn = btn_up || btn_down || btn_left || btn_right;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) state <= S_IDLE;
        else        state <= next_state;
    end

    // 다음 클럭에 뱀 머리가 위치할 미래 그리드 계산 조합 회로
    reg [3:0] next_head_grid_x;
    reg [2:0] next_head_grid_y;
    always @(*) begin
        next_head_grid_x = body_array[0][6:3];
        next_head_grid_y = body_array[0][2:0];
        case (current_dir)
            2'b10: next_head_grid_y = body_array[0][2:0] - 1'b1; // 상
            2'b11: next_head_grid_y = body_array[0][2:0] + 1'b1; // 하
            2'b01: next_head_grid_x = body_array[0][6:3] - 1'b1; // 좌
            2'b00: next_head_grid_x = body_array[0][6:3] + 1'b1; // 우
        endcase
    end

    // 8x8 격자 기반 벽 충돌 조건 (외곽 경계 인덱스 0번 및 마지막 칸 터치 검사)
    wire wall_collision = (current_dir == 2'b10 && body_array[0][2:0] <= 3'd1) || // 상단 벽
                           (current_dir == 2'b11 && body_array[0][2:0] >= 3'd6) || // 하단 벽
                           (current_dir == 2'b01 && body_array[0][6:3] <= 4'd1) || // 좌측 벽
                           (current_dir == 2'b00 && body_array[0][6:3] >= 4'd14);  // 우측 벽

    // 자기 몸통 충돌 검사 
    reg body_collision;
    integer c;
    always @(*) begin
        body_collision = 1'b0;
        for (c = 1; c < 16; c = c + 1) begin
            if (c < snake_len) begin
                if ((next_head_grid_x == body_array[c][6:3]) && (next_head_grid_y == body_array[c][2:0])) begin
                    body_collision = 1'b1;
                end
            end
        end
    end

    // FSM 상태 제어 조합 로직
    always @(*) begin
        next_state = state;
        case (state)
            S_IDLE:     if (any_btn) next_state = S_PLAY;
            S_PLAY:     if (move_tick && (wall_collision || body_collision)) next_state = S_GAMEOVER;
            S_GAMEOVER: if (any_btn) next_state = S_IDLE;
            default:    next_state = S_IDLE;
        endcase
    end

    // 상태 동기식 레지스터 제어 및 배열 연산
    integer k;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            game_over    <= 1'b0; 
            current_dir  <= 2'b00; 
            snake_len    <= 5'd3;
            body_array[0] <= {4'd4, 3'd4}; // 머리 초기 위치
            body_array[1] <= {4'd3, 3'd4}; // 몸통 초기 위치
            body_array[2] <= {4'd2, 3'd4}; // 꼬리 초기 위치
            for(k=3; k<16; k=k+1) body_array[k] <= 7'd0;
            apple_grid_x  <= 4'd10; 
            apple_grid_y  <= 3'd2;
        end else begin
            case (state)
                S_IDLE: begin
                    game_over    <= 1'b0; 
                    snake_len    <= 5'd3;
                    body_array[0] <= {4'd4, 3'd4};
                    body_array[1] <= {4'd3, 3'd4};
                    body_array[2] <= {4'd2, 3'd4};
                    for(k=3; k<16; k=k+1) body_array[k] <= 7'd0;
                    if (btn_up)    current_dir <= 2'b10;
                    if (btn_down)  current_dir <= 2'b11;
                    if (btn_left)  current_dir <= 2'b01;
                    if (btn_right) current_dir <= 2'b00;
                end
                
                S_PLAY: begin
                    if      (btn_up    && current_dir != 2'b11) current_dir <= 2'b10;
                    else if (btn_down  && current_dir != 2'b10) current_dir <= 2'b11;
                    else if (btn_left  && current_dir != 2'b00) current_dir <= 2'b01;
                    else if (btn_right && current_dir != 2'b01) current_dir <= 2'b00;

                    if (move_tick) begin
                        // 사과 습득 처리
                        if ((body_array[0][6:3] == apple_grid_x) && (body_array[0][2:0] == apple_grid_y)) begin
                            if (snake_len < 5'd15) snake_len <= snake_len + 1'b1;
                            // 외곽 벽이 없는 내부(1~14, 1~6) 구역에 사과 배치 알고리즘
                            apple_grid_x <= 4'd1 + ((apple_grid_x + 4'd7) % 4'd14);
                            apple_grid_y <= 3'd1 + ((apple_grid_y + 3'd3) % 3'd6);
                        end

                        // 파이프라인 쉬프트 이동
                        for(k=15; k>0; k=k-1) body_array[k] <= body_array[k-1];
                        body_array[0] <= {next_head_grid_x, next_head_grid_y};
                    end
                end

                S_GAMEOVER: begin
                    game_over <= 1'b1;
                end
                
                default: begin
                    game_over <= 1'b0;
                end
            endcase
        end
    end

endmodule
