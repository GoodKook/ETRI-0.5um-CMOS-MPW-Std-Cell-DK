// ====================================================================
// 1. TOP MODULE: 시스템 통합 및 클럭/타이머 분주
// ====================================================================
module tetris_game_system (
    input  wire        clk,          // 시스템 메인 클럭 (25MHz 가정)
    input  wire        rst_n,        // 전체 시스템 리셋 (Active Low)
    
    // 외부에서 동기화 및 1클럭 펄스화가 완료된 버튼 입력
    input  wire        btn_up,       // 블록 회전 (Rotate)
    input  wire        btn_down,     // 빠른 하강 (Soft Drop)
    input  wire        btn_left,     // 왼쪽 이동 (Move Left)
    input  wire        btn_right,    // 오른쪽 이동 (Move Right)
    
    // 래스터 스캔 표준 비디오 인터페이스 출력
    output wire        h_sync,       // 수평 동기 신호
    output wire        v_sync,       // 수직 동기 신호
    output wire        video_active, // 유효 화면 구간 플래그
    output wire        pixel_data,   // 128x64 해상도 실시간 픽셀 데이터
    
    // 게임 상태 및 데이터 출력
    output wire        game_over,
    output wire [15:0] score
);

    // --- 게임 타이머 (자동 하강 속도 제어) ---
    reg [24:0] timer_cnt;
    reg        tick_reg;
    
    // 25MHz 클럭 기준 약 0.5초마다 1번씩 자동 하강 틱 펄스(1클럭 폭) 발생
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

    // --- 모듈 간 신호 연결 인터페이스 와이어 ---
    wire        game_board [0:9][0:19];
    wire [3:0]  blk_x;
    wire [4:0]  blk_y;
    wire        tetromino_shape [0:1][0:1];

    // --- [인스턴스 1] 테트리스 게임 코어 엔진 ---
    tetris_core_engine u_game_core (
        .clk(clk),
        .rst_n(rst_n),
        .tick_i(tick_reg),
        .move_left(btn_left),
        .move_right(btn_right),
        .rotate(btn_up),
        .drop_fast(btn_down),
        .board_out(game_board),
        .current_block_x(blk_x),
        .current_block_y(blk_y),
        .tetromino_out(tetromino_shape),
        .game_over(game_over),
        .score(score)
    );

    // --- [인스턴스 2] 래스터 스캔 비디오 그래픽 스케일러 ---
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
// 2. CORE ENGINE MODULE: 라인 삭제 및 점수 판정 내장 게임 제어기
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
    localparam S_SPAWN       = 3'b000;
    localparam S_PLAY        = 3'b001;
    localparam S_LOCK        = 3'b010;
    localparam S_CHECK_LINE  = 3'b011;
    localparam S_CLEAR_LINE  = 3'b100;
    localparam S_GAMEOVER    = 3'b101;
    
    reg [2:0] state;

    // 내부 연산 변수
    integer x, y;
    reg [4:0] check_row;       
    reg [2:0] cleared_lines;   
    reg       row_full;        

    // 경계 충돌 조건 (2x2 블록 기준)
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
            check_row       <= 5'd0;
            cleared_lines   <= 3'd0;
            
            for(x=0; x<10; x=x+1)
                for(y=0; y<20; y=y+1)
                    board_out[x][y] <= 1'b0;
        end else begin
            case (state)
                S_SPAWN: begin
                    current_block_x <= 4'd4;
                    current_block_y <= 5'd0;
                    cleared_lines   <= 3'd0;
                    
                    // 기본 2x2 블록 스폰
                    tetromino_out <= 1'b1; tetromino_out <= 1'b1;
                    tetromino_out <= 1'b1; tetromino_out <= 1'b1;
                    
                    if (board_out || board_out || board_out || board_out)
                        state <= S_GAMEOVER;
                    else
                        state <= S_PLAY;
                end

                S_PLAY: begin
                    if (move_left && !left_collide)
                        current_block_x <= current_block_x - 1'b1;
                    else if (move_right && !right_collide)
                        current_block_x <= current_block_x + 1'b1;
                    else if (rotate) begin
                        // 블록 회전 동작 매핑
                        tetromino_out <= tetromino_out;
                        tetromino_out <= tetromino_out;
                        tetromino_out <= tetromino_out;
                        tetromino_out <= tetromino_out;
                    end
                    
                    if (tick_i || drop_fast) begin
                        if (floor_collide || board_out[current_block_x][current_block_y+2] || board_out[current_block_x+1][current_block_y+2]) begin
                            state <= S_LOCK; 
                        end else begin
                            current_block_y <= current_block_y + 1'b1;
                        end
                    end
                end

                S_LOCK: begin
                    // 고정 보드판에 각인
                    board_out[current_block_x][current_block_y]     <= board_out[current_block_x][current_block_y]     | tetromino_out;
                    board_out[current_block_x+1][current_block_y]   <= board_out[current_block_x+1][current_block_y]   | tetromino_out;
                    board_out[current_block_x][current_block_y+1]   <= board_out[current_block_x][current_block_y+1]   | tetromino_out;
                    board_out[current_block_x+1][current_block_y+1] <= board_out[current_block_x+1][current_block_y+1] | tetromino_out;
                    
                    check_row <= 5'd19; // 맨 하단부터 검사 준비
                    state     <= S_CHECK_LINE;
                end

                S_CHECK_LINE: begin
                    row_full = board_out[check_row] && board_out[check_row] && 
                               board_out[check_row] && board_out[check_row] &&
                               board_out[check_row] && board_out[check_row] && 
                               board_out[check_row] && board_out[check_row] &&
                               board_out[check_row] && board_out[check_row];

                    if (row_full) begin
                        state <= S_CLEAR_LINE;
                    end else begin
                        if (check_row == 5'd0) begin
                            // 최종 누적 스케일링 점수 반영
                            case (cleared_lines)
                                3'd1: score <= score + 16'd100;
                                3'd2: score <= score + 16'd300;
                                3'd3: score <= score + 16'd500;
                                3'd4: score <= score + 16'd800;
                                default: score <= score + 16'd10;
                            endcase
                            state <= S_SPAWN;
                        end else begin
                            check_row <= check_row - 1'b1;
                        end
                    end
                end

                S_CLEAR_LINE: begin
                    cleared_lines <= cleared_lines + 1'b1;
                    
                    // 하드웨어 시프트 루프 (위에서 한 칸씩 끌어내림)
                    for (y = 19; y >= 0; y = y - 1) begin
                        if (y <= check_row) begin
                            for (x = 0; x < 10; x = x + 1) begin
                                if (y == 0)
                                    board_out[x][y] <= 1'b0;
                                else
                                    board_out[x][y] <= board_out[x][y-1];
                            end
                        end
                    end
                    state <= S_CHECK_LINE; // 동일 행 재검사 (연속 콤보 방지/대비)
                end

                S_GAMEOVER: begin
                    game_over <= 1'b1;
                end
                
                default: state <= S_SPAWN;
            endcase
        end
    end
endmodule


// ====================================================================
// 3. GRAPHIC SCALER MODULE: 래스터 스캔 128x64 비디오 제어기
// ====================================================================
module tetris_raster_scaler (
    input  wire        clk,
    input  wire        rst_n,
    
    input  wire        board[0:9][0:19],
    input  wire [3:0]  current_block_x,
    input  wire [4:0]  current_block_y,
    input  wire        tetromino[0:1][0:1],
    
    output reg         h_sync,
    output reg         v_sync,
    output reg         video_active,
    output reg         pixel_data
);

    // --- 래스터 타이밍 설정 ---
    localparam H_ACTIVE   = 128;
    localparam H_FRONT    = 4;
    localparam H_SYNC_P   = 12;
    localparam H_BACK     = 16;
    localparam H_TOTAL    = 160;

    localparam V_ACTIVE   = 64;
    localparam V_FRONT    = 2;
    localparam V_SYNC_P   = 4;
    localparam V_BACK     = 10;
    localparam V_TOTAL    = 80;

    reg [7:0] h_count; 
    reg [6:0] v_count; 

코드를 사용할 때는 주의가 필요합니다.
// 래스터 2차원 카운터
always @(posedge clk or negedge rst_n) begin
if (!rst_n) begin
h_count <= 8'd0;
v_count <= 7'd0;
end else begin
if (h_count == H_TOTAL - 1) begin
h_count <= 8'd0;
if (v_count == V_TOTAL - 1)
v_count <= 7'd0;
else
v_count <= v_count + 1'b1;
end else begin
h_count <= h_count + 1'b1;
end
end
end
// 동기 신호 제어
always @(posedge clk or negedge rst_n) begin
if (!rst_n) begin
h_sync       <= 1'b1;
v_sync       <= 1'b1;
video_active <= 1'b0;
end else begin
h_sync       <= ~((h_count >= (H_ACTIVE + H_FRONT)) && (h_count < (H_ACTIVE + H_FRONT + H_SYNC_P)));
v_sync       <= ~((v_count >= (V_ACTIVE + V_FRONT)) && (v_count < (V_ACTIVE + V_FRONT + V_SYNC_P)));
video_active <= (h_count < H_ACTIVE) && (v_count < V_ACTIVE);
end
end
// 픽셀 맵 변환 매개변수 (3x3 스케일러)
localparam BLOCK_SIZE   = 3;
localparam BOARD_X_OFF  = 10;
localparam BOARD_Y_OFF  = 2;
wire [6:0] pixel_x = h_count[6:0];
wire [5:0] pixel_y = v_count[5:0];
wire [3:0] grid_x = (pixel_x - BOARD_X_OFF) / BLOCK_SIZE;
wire [4:0] grid_y = (pixel_y - BOARD_Y_OFF) / BLOCK_SIZE;
wire [1:0] block_inner_x = grid_x - current_block_x;
wire [1:0] block_inner_y = grid_y - current_block_y;
// 실시간 비디오 픽셀 파이프라인 매핑
always @(posedge clk or negedge rst_n) begin
if (!rst_n) begin
pixel_data <= 1'b0;
end else if (video_active) begin
if (pixel_x >= (BOARD_X_OFF - 1) && pixel_x <= (BOARD_X_OFF + 30) &&
pixel_y >= (BOARD_Y_OFF - 1) && pixel_y <= (BOARD_Y_OFF + 60)) begin
// 보드 테두리선
if (pixel_x == (BOARD_X_OFF - 1) || pixel_x == (BOARD_X_OFF + 30) ||
pixel_y == (BOARD_Y_OFF - 1) || pixel_y == (BOARD_Y_OFF + 60)) begin
pixel_data <= 1'b1;
end
// 보드 내부 픽셀 렌더링
else begin
if (board[grid_x][grid_y]) begin
pixel_data <= 1'b1;
end
else if (grid_x >= current_block_x && grid_x < (current_block_x + 2) &&
grid_y >= current_block_y && grid_y < (current_block_y + 2)) begin
pixel_data <= tetromino[block_inner_x][block_inner_y];
end else begin
pixel_data <= 1'b0;
end
end
end
else if (pixel_x == 7'd42) begin
pixel_data <= pixel_y; // 영역 구분 점선 가이드
end else begin
pixel_data <= 1'b0;
end
end else begin
pixel_data <= 1'b0; // Blanking 영역 안전 고정
end
end
endmodule
