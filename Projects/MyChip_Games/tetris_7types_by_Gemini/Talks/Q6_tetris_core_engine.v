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

    // --- FSM 상태 정의 ---
    localparam S_SPAWN       = 3'b000;
    localparam S_PLAY        = 3'b001;
    localparam S_LOCK        = 3'b010;
    localparam S_CHECK_LINE  = 3'b011; // 라인이 가득 찼는지 검사
    localparam S_CLEAR_LINE  = 3'b100; // 가득 찬 라인 삭제 및 하강 연산
    localparam S_GAMEOVER    = 3'b101;
    
    reg [2:0] state;

    // --- 내부 연산용 변수 및 레지스터 ---
    integer x, y, k;
    reg [4:0] check_row;       // 현재 검사 중인 행 (0 ~ 19)
    reg [2:0] cleared_lines;   // 한 턴에 지워진 총 라인 수 (0 ~ 4)
    reg       row_full;        // 현재 행이 꽉 찼음을 알리는 플래그

    // 경계면 및 바닥 충돌 감지 조건
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
                
                // 1. 새 블록 스폰
                S_SPAWN: begin
                    current_block_x <= 4'd4;
                    current_block_y <= 5'd0;
                    cleared_lines   <= 3'd0;
                    
                    // 기본 2x2 네모 블록 모양 채우기
                    tetromino_out[0][0] <= 1'b1; tetromino_out[1][0] <= 1'b1;
                    tetromino_out[0][1] <= 1'b1; tetromino_out[1][1] <= 1'b1;
                    
                    if (board_out[4][0] || board_out[5][0] || board_out[4][1] || board_out[5][1])
                        state <= S_GAMEOVER;
                    else
                        state <= S_PLAY;
                end

                // 2. 플레이어 조작 및 하강 진행
                S_PLAY: begin
                    // 좌우 이동 및 회전
                    if (move_left && !left_collide)
                        current_block_x <= current_block_x - 1'b1;
                    else if (move_right && !right_collide)
                        current_block_x <= current_block_x + 1'b1;
                    else if (rotate) begin
                        // 2x2 회전 가상 매핑
                        tetromino_out[0][0] <= tetromino_out[0][1];
                        tetromino_out[0][1] <= tetromino_out[1][1];
                        tetromino_out[1][1] <= tetromino_out[1][0];
                        tetromino_out[1][0] <= tetromino_out[0][0];
                    end
                    
                    // 주기적 틱 또는 하강 버튼 입력 시
                    if (tick_i || drop_fast) begin
                        if (floor_collide || board_out[current_block_x][current_block_y+2] || board_out[current_block_x+1][current_block_y+2]) begin
                            state <= S_LOCK; 
                        end else begin
                            current_block_y <= current_block_y + 1'b1;
                        end
                    end
                end

                // 3. 블록 고정 (Lock)
                S_LOCK: begin
                    board_out[current_block_x][current_block_y]     <= board_out[current_block_x][current_block_y]     | tetromino_out[0][0];
                    board_out[current_block_x+1][current_block_y]   <= board_out[current_block_x+1][current_block_y]   | tetromino_out[1][0];
                    board_out[current_block_x][current_block_y+1]   <= board_out[current_block_x][current_block_y+1]   | tetromino_out[0][1];
                    board_out[current_block_x+1][current_block_y+1] <= board_out[current_block_x+1][current_block_y+1] | tetromino_out[1][1];
                    
                    // 블록 안착 후 최하단 행(19번)부터 위로 스캔 준비
                    check_row <= 5'd19; 
                    state     <= S_CHECK_LINE;
                end

                // 4. 라인 검사 (Line Check Loop)
                S_CHECK_LINE: begin
                    // 현재 행(check_row)의 10칸이 모두 1인지 순차 회로로 검사
                    row_full = board_out[0][check_row] && board_out[1][check_row] && 
                               board_out[2][check_row] && board_out[3][check_row] &&
                               board_out[4][check_row] && board_out[5][check_row] && 
                               board_out[6][check_row] && board_out[7][check_row] &&
                               board_out[8][check_row] && board_out[9][check_row];

                    if (row_full) begin
                        state <= S_CLEAR_LINE; // 가득 찼다면 삭제 및 드롭 처리 상태로 이동
                    end else begin
                        if (check_row == 5'd0) begin
                            // 모든 행(0~19) 검사가 끝났다면 점수 합산 진행
                            case (cleared_lines)
                                3'd1: score <= score + 16'd100;  // Single Clear
                                3'd2: score <= score + 16'd300;  // Double Clear
                                3'd3: score <= score + 16'd500;  // Triple Clear
                                3'd4: score <= score + 16'd800;  // Tetris!
                                default: score <= score + 16'd10; // 지운 라인 없음 (단순 안착 점수)
                            endcase
                            state <= S_SPAWN;
                        end else begin
                            check_row <= check_row - 1'b1; // 위쪽 행으로 이동
                        end
                    end
                end

                // 5. 라인 지우기 및 상단 블록 아래로 시프트 (Line Clear & Shift Down)
                S_CLEAR_LINE: begin
                    cleared_lines <= cleared_lines + 1'b1; // 지워진 라인 카운트 증가
                    
                    // 현재 가득 찬 행(check_row)을 기준으로 위의 행들을 한 칸씩 끌어내림
                    // 단단한 하드웨어 시프트를 루프 형태로 처리
                    for (y = 19; y >= 0; y = y - 1) begin
                        if (y <= check_row) begin
                            for (x = 0; x < 10; x = x + 1) begin
                                if (y == 0)
                                    board_out[x][y] <= 1'b0; // 최상단은 빈 공간으로 채움
                                else
                                    board_out[x][y] <= board_out[x][y-1]; // 한 칸 위의 데이터를 복사
                            end
                        end
                    end
                    
                    // 라인을 한 칸 밀어내렸으므로, 현재 위치(check_row)를 다시 재검사해야 함
                    // (위에서 내려온 라인도 이미 가득 차 있을 수 있기 때문)
                    state <= S_CHECK_LINE;
                end

                // 6. 게임 오버
                S_GAMEOVER: begin
                    game_over <= 1'b1;
                end
                
                default: state <= S_SPAWN;
            endcase
        end
    end
endmodule
