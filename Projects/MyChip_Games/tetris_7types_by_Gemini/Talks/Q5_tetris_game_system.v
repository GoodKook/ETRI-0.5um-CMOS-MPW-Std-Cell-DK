module tetris_game_system (
    input  wire        clk,        // 시스템 메인 클럭 (예: 25MHz)
    input  wire        rst_n,      // 전체 시스템 리셋 (Active Low)
    
    // 외부에서 동기화 및 에지 검출이 완료된 1클럭 펄스 버튼 입력
    input  wire        btn_up,     // 블록 회전 (Rotate)
    input  wire        btn_down,   // 빠른 하강 (Soft Drop)
    input  wire        btn_left,   // 왼쪽 이동 (Move Left)
    input  wire        btn_right,  // 오른쪽 이동 (Move Right)
    
    // 래스터 스캔 비디오 인터페이스 출력
    output wire        h_sync,     // 수평 동기 신호
    output wire        v_sync,     // 수직 동기 신호
    output wire        video_active,
    output wire        pixel_data, // 128x64 디스플레이 픽셀 데이터
    
    // 게임 상태 출력
    output wire        game_over,
    output wire [15:0] score
);

    // --- 게임 타이머 (하강 속도 제어) ---
    reg [24:0] timer_cnt;
    reg        tick_reg;
    
    // 25MHz 클럭 기준 약 0.5초마다 1번씩 하강 틱 펄스 발생
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            timer_cnt <= 25'd0;
            tick_reg  <= 1'b0;
        end else begin
            if (timer_cnt == 25'd12500000) begin
                timer_cnt <= 25'd0;
                tick_reg  <= 1'b1;
            end else begin
                timer_cnt <= timer_cnt + 1'b1;
                tick_reg  <= 1'b0;
            end
        end
    end

    // --- 내부 인터페이스 와이어 ---
    wire        game_board [0:9][0:19];
    wire [3:0]  blk_x;
    wire [4:0]  blk_y;
    wire        tetromino_shape [0:1][0:1];

    // --- 테트리스 핵심 게임 컨트롤러 (FSM 엔진) ---
    tetris_core_engine u_game_core (
        .clk(clk),
        .rst_n(rst_n),
        .tick_i(tick_reg),
        .move_left(btn_left),     // 외부 펄스 직접 연결
        .move_right(btn_right),   // 외부 펄스 직접 연결
        .rotate(btn_up),          // 외부 펄스 직접 연결
        .drop_fast(btn_down),     // 외부 펄스 직접 연결
        .board_out(game_board),
        .current_block_x(blk_x),
        .current_block_y(blk_y),
        .tetromino_out(tetromino_shape),
        .game_over(game_over),
        .score(score)
    );

    // --- 래스터 스캔 디스플레이 렌더러 ---
    tetris_raster_scaler u_video_render (
        .clk(clk),
        .rst_n(rst_n),
        .board(game_board),
        .current_block_x(blk_x),
        .current_block_y(blk_y),
        .tetromino(tetromino_shape),
        .h_sync(h_sync),
        .v_sync(v_sync),
        .video_active(video_active),
        .pixel_data(pixel_data)
    );

endmodule


// ====================================================================
// 하위 컴포넌트: 게임 코어 엔진 및 데이터 패스
// ====================================================================
module tetris_core_engine (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        tick_i,
    input  wire        move_left,
    input  wire        move_right,
    input  wire        rotate,
    input  wire        drop_fast,
    
    output reg         board_out [0:9][0:19],
    output reg  [3:0]  current_block_x,
    output reg  [4:0]  current_block_y,
    output reg         tetromino_out [0:1][0:1],
    output reg         game_over,
    output reg  [15:0] score
);
    // 상태 정의
    localparam S_SPAWN   = 2'b00;
    localparam S_PLAY    = 2'b01;
    localparam S_LOCK    = 2'b10;
    localparam S_GAMEOVER = 2'b11;
    
    reg [1:0] state;
    integer x, y;

    // 경계면 충돌 감지 조건
    wire left_collide  = (current_block_x == 4'd0);
    wire right_collide = (current_block_x >= 4'd8);
    wire floor_collide = (current_block_y >= 5'd18);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state           <= S_SPAWN;
            game_over       <= 1'b0;
            score           <= 16'd0;
            current_block_x <= 4'd4;
            current_block_y <= 5'd0;
            
            for(x=0; x<10; x=x+1)
                for(y=0; y<20; y=y+1)
                    board_out[x][y] <= 1'b0;
        end else begin
            case (state)
                S_SPAWN: begin
                    current_block_x <= 4'd4;
                    current_block_y <= 5'd0;
                    // 기본 2x2 네모 블록 모양 채우기
                    tetromino_out[0][0] <= 1'b1; tetromino_out[1][0] <= 1'b1;
                    tetromino_out[0][1] <= 1'b1; tetromino_out[1][1] <= 1'b1;
                    
                    if (board_out[4][0] || board_out[5][0])
                        state <= S_GAMEOVER;
                    else
                        state <= S_PLAY;
                end

                S_PLAY: begin
                    // 1. 좌우 이동 및 회전 처리 (외부 1클럭 펄스로 즉각 반응)
                    if (move_left && !left_collide)
                        current_block_x <= current_block_x - 1'b1;
                    else if (move_right && !right_collide)
                        current_block_x <= current_block_x + 1'b1;
                    else if (rotate) begin
                        // 2x2 기본 회전 (스왑 매핑 예시)
                        tetromino_out[0][0] <= tetromino_out[0][1];
                        tetromino_out[0][1] <= tetromino_out[1][1];
                        tetromino_out[1][1] <= tetromino_out[1][0];
                        tetromino_out[1][0] <= tetromino_out[0][0];
                    end
                    
                    // 2. 주기적 하강(Tick) 또는 하강 버튼 펄스 입력 시 처리
                    if (tick_i || drop_fast) begin
                        if (floor_collide || board_out[current_block_x][current_block_y+2] || board_out[current_block_x+1][current_block_y+2]) begin
                            state <= S_LOCK; 
                        end else begin
                            current_block_y <= current_block_y + 1'b1;
                        end
                    end
                end

                S_LOCK: begin
                    // 고정된 보드판 레지스터에 현재 위치의 블록 각인
                    board_out[current_block_x][current_block_y]     <= board_out[current_block_x][current_block_y]     | tetromino_out[0][0];
                    board_out[current_block_x+1][current_block_y]   <= board_out[current_block_x+1][current_block_y]   | tetromino_out[1][0];
                    board_out[current_block_x][current_block_y+1]   <= board_out[current_block_x][current_block_y+1]   | tetromino_out[0][1];
                    board_out[current_block_x+1][current_block_y+1] <= board_out[current_block_x+1][current_block_y+1] | tetromino_out[1][1];
                    
                    score <= score + 16'd10;
                    state <= S_SPAWN;
                end

                S_GAMEOVER: begin
                    game_over <= 1'b1;
                end
            endcase
        end
    end
endmodule
