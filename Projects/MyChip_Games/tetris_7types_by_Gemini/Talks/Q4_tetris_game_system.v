module tetris_game_system (
    input  wire        clk,        // 시스템 메인 클럭 (예: 25MHz 또는 50MHz)
    input  wire        rst_n,      // 전체 시스템 리셋 (Active Low)
    
    // 하드웨어 푸시 버튼 입력 (상, 하, 좌, 우)
    input  wire        btn_up,     // 블록 회전 (Rotate)
    input  wire        btn_down,   // 빠른 하강 (Soft Drop / Fast Drop)
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

    // --- [1] 버튼 디바운싱 및 동기화 회로 ---
    // 실제 하드웨어 버튼의 채터링(노이즈)을 잡고 1클럭 펄스로 변환합니다.
    wire move_left, move_right, rotate, drop_fast;

    button_driver btn_inst_left  (.clk(clk), .rst_n(rst_n), .btn_in(btn_left),  .pulse_out(move_left));
    button_driver btn_inst_right (.clk(clk), .rst_n(rst_n), .btn_in(btn_right), .pulse_out(move_right));
    button_driver btn_inst_up    (.clk(clk), .rst_n(rst_n), .btn_in(btn_up),    .pulse_out(rotate));
    button_driver btn_inst_down  (.clk(clk), .rst_n(rst_n), .btn_in(btn_down),  .pulse_out(drop_fast));


    // --- [2] 게임 타이머 (하강 속도 제어) ---
    // 블록이 주기적으로 아래로 떨어지게 만드는 속도 제어용 틱 제너레이터입니다.
    reg [24:0] timer_cnt;
    reg        tick_reg;
    
    // 예시: 25MHz 클럭 기준 약 0.5초마다 1번씩 펄스 발생 (25,000,000 / 2)
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


    // --- [3] 상호 연결용 내부 인터페이스 와이어 ---
    // 게임 코어 배열 상태를 1차원으로 풀어 비디오 탑 모듈과 와이어 연결합니다.
    wire        game_board [0:9][0:19];
    wire [3:0]  blk_x;
    wire [4:0]  blk_y;
    wire        tetromino_shape [0:1][0:1];


    // --- [4] 테트리스 핵심 게임 컨트롤러 (FSM 엔진) ---
    tetris_core_engine u_game_core (
        .clk(clk),
        .rst_n(rst_n),
        .tick_i(tick_reg),
        .move_left(move_left),
        .move_right(move_right),
        .rotate(rotate),
        .drop_fast(drop_fast),
        .board_out(game_board),
        .current_block_x(blk_x),
        .current_block_y(blk_y),
        .tetromino_out(tetromino_shape),
        .game_over(game_over),
        .score(score)
    );


    // --- [5] 래스터 스캔 디스플레이 렌더러 ---
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
// 하위 컴포넌트 1: 안정적인 버튼 처리를 위한 드라이버 (디바운서 + 에지 검출)
// ====================================================================
module button_driver (
    input  wire clk,
    input  wire rst_n,
    input  wire btn_in,
    output reg  pulse_out
);
    // 디바운스 카운터 (약 20ms 지연)
    reg [19:0] db_cnt;
    reg        btn_state;
    reg        btn_sync_0, btn_sync_1;

    // 비동기 입력 동기화 (Metastability 방지)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            btn_sync_0 <= 1'b0;
            btn_sync_1 <= 1'b0;
        end else begin
            btn_sync_0 <= btn_in;
            btn_sync_1 <= btn_sync_0;
        end
    end

    // 카운터 기반 노이즈 제거
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            db_cnt    <= 20'd0;
            btn_state <= 1'b0;
        end else begin
            if (btn_sync_1 != btn_state) begin
                db_cnt <= db_cnt + 1'b1;
                if (db_cnt == 20'd500000) begin // 클럭 속도에 맞추어 카운트 조절
                    btn_state <= btn_sync_1;
                    db_cnt    <= 20'd0;
                end
            end else begin
                db_cnt <= 20'd0;
            end
        end
    end

    // 상승 에지 검출기 (버튼을 누르는 순간 딱 1클럭 펄스만 생성)
    reg btn_state_delay;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            btn_state_delay <= 1'b0;
            pulse_out       <= 1'b0;
        end else begin
            btn_state_delay <= btn_state;
            pulse_out       <= (btn_state && !btn_state_delay);
        end
    end
endmodule


// ====================================================================
// 하위 컴포넌트 2: 게임 코어 엔진 및 데이터 패스
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
    localparam S_SPAWN  = 2'b00;
    localparam S_PLAY   = 2'b01;
    localparam S_LOCK   = 2'b10;
    localparam S_GAMEOVER = 2'b11;
    
    reg [1:0] state;
    integer x, y;

    // 간단한 충돌 감지 함수 로직
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
                    // 기본 2x2 네모 블록 모양 생성
                    tetromino_out[0][0] <= 1'b1; tetromino_out[0][1] <= 1'b1;
                    tetromino_out[1][0] <= 1'b1; tetromino_out[1][1] <= 1'b1;
                    
                    // 스폰하자마자 바닥에 막혀있으면 게임 오버
                    if (board_out[4][0] || board_out[5][0])
                        state <= S_GAMEOVER;
                    else
                        state <= S_PLAY;
                end

                S_PLAY: begin
                    // 1. 사용자 조작 입력 처리
                    if (move_left && !left_collide)
                        current_block_x <= current_block_x - 1'b1;
                    else if (move_right && !right_collide)
                        current_block_x <= current_block_x + 1'b1;
                    else if (rotate) begin
                        // 2x2 블록의 회전 처리 (여기서는 단순 예시화 유지)
                        tetromino_out[0][0] <= tetromino_out[1][0];
                        tetromino_out[0][1] <= tetromino_out[0][0];
                        tetromino_out[1][0] <= tetromino_out[1][1];
                        tetromino_out[1][1] <= tetromino_out[0][1];
                    end
                    
                    // 2. 시간 흐름(Tick) 또는 하 버튼(Soft Drop)에 의한 하강 처리
                    if (tick_i || drop_fast) begin
                        if (floor_collide || board_out[current_block_x][current_block_y+2] || board_out[current_block_x+1][current_block_y+2]) begin
                            state <= S_LOCK; // 바닥이나 다른 블록에 닿으면 고정 단계 진입
                        end else begin
                            current_block_y <= current_block_y + 1'b1;
                        end
                    end
                end

                S_LOCK: begin
                    // 보드 배열에 현재 블록 박아넣기
                    board_out[current_block_x][current_block_y]     <= board_out[current_block_x][current_block_y]     | tetromino_out[0][0];
                    board_out[current_block_x+1][current_block_y]   <= board_out[current_block_x+1][current_block_y]   | tetromino_out[1][0];
                    board_out[current_block_x][current_block_y+1]   <= board_out[current_block_x][current_block_y+1]   | tetromino_out[0][1];
                    board_out[current_block_x+1][current_block_y+1] <= board_out[current_block_x+1][current_block_y+1] | tetromino_out[1][1];
                    
                    score <= score + 16'd10; // 블록 안착 점수
                    state <= S_SPAWN;        // 새로운 블록 소환
                end

                S_GAMEOVER: begin
                    game_over <= 1'b1;
                end
            endcase
        end
    end
endmodule
