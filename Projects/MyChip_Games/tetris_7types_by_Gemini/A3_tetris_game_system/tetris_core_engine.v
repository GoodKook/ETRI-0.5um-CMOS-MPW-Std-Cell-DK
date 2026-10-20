// ====================================================================
// 2. CORE ENGINE MODULE: 가로 14, 세로 20 맞춤형 제어 및 충돌 감지
// ====================================================================
module tetris_core_engine (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        tick_i,
    input  wire        move_left,
    input  wire        move_right,
    input  wire        rotate,
    input  wire        drop_fast,
    
    output reg         board_out [0:13][0:19], // 가로 14, 세로 20 보드 배열
    output reg  [3:0]  current_block_x,
    output reg  [4:0]  current_block_y,
    output reg         tetromino_out [0:3][0:3], 
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

    // 내부 연산 및 임시 버퍼 변수
    integer x, y, i, j;
    reg [4:0] check_row;       
    reg [2:0] cleared_lines;   
    reg       row_full;
    reg       temp_rot [0:3][0:3];

    // --- LFSR 기반 무작위 블록 타입 생성기 (8비트 LFSR) ---
    reg [7:0] lfsr_reg;
    wire [2:0] rand_block_type = lfsr_reg[2:0];

    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
            lfsr_reg <= 8'hA5;
        else
            lfsr_reg <= {lfsr_reg[6:0], lfsr_reg[7] ^ lfsr_reg[5] ^ lfsr_reg[4] ^ lfsr_reg[3]};
    end

    // --- 동적 충돌 감지 태스크 (Task) 정의: 14x20 국한 경계 반영 ---
    reg col_detected;
    task check_collision;
        input [3:0] bx;
        input [4:0] by;
        input       shape[0:3][0:3];
        begin
            col_detected = 1'b0;
            for (i = 0; i < 4; i = i + 1)
            begin
                for (j = 0; j < 4; j = j + 1)
                begin
                    if (shape[i][j])
                    begin
                        // 1. 벽면 경계면 이탈 체크 (가로 14, 세로 20 제한)
                        if ((bx + i < 0) || (bx + i >= 14) || (by + j >= 20))
                        begin
                            col_detected = 1'b1;
                        end
                        // 2. 기존 보드판 블록과 충돌 체크
                        else if ((bx + i >= 0) && (bx + i < 14) && (by + j >= 0) && (by + j < 20))
                        begin
                            if (board_out[bx + i][by + j])
                                col_detected = 1'b1;
                        end
                    end
                end
            end
        end
    endtask

    // 메인 상태 제어 시퀀서
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            state           <= S_SPAWN;
            game_over       <= 1'b0;
            score           <= 16'd0;
            current_block_x <= 4'd5;  // 가로 14칸의 중앙 부근(5)으로 스폰 위치 변경
            current_block_y <= 5'd0;
            check_row       <= 5'd0;
            cleared_lines   <= 3'd0;
            
            for(x=0; x<14; x=x+1)
                for(y=0; y<20; y=y+1)
                    board_out[x][y] <= 1'b0;

            for(i=0; i<4; i=i+1)
                for(j=0; j<4; j=j+1)
                    tetromino_out[i][j] <= 1'b0;
        end
        else
        begin
            case (state)
                
                // 1. 무작위 블록 종류 생성 및 스폰
                S_SPAWN: begin
                    current_block_x <= 4'd5; // 가로 14칸 규격 중앙 스폰 위치
                    current_block_y <= 5'd0;
                    cleared_lines   <= 3'd0;
                    
                    for(i=0; i<4; i=i+1)
                        for(j=0; j<4; j=j+1)
                            tetromino_out[i][j] = 1'b0;

                    case ((rand_block_type == 3'd7)? lfsr_reg[5:3] : rand_block_type)
                        3'd0: begin tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1; tetromino_out[3][1]=1; end // I
                        3'd1: begin tetromino_out[0][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1; end // J
                        3'd2: begin tetromino_out[2][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1; end // L
                        3'd3: begin tetromino_out[1][0]=1; tetromino_out[2][0]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1; end // O
                        3'd4: begin tetromino_out[1][0]=1; tetromino_out[2][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; end // S
                        3'd5: begin tetromino_out[1][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1; end // T
                        default: begin tetromino_out[0][0]=1; tetromino_out[1][0]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1; end // Z
                    endcase
                    
                    check_collision(4'd5, 5'd0, tetromino_out);
                    if (col_detected)
                        state <= S_GAMEOVER;
                    else
                        state <= S_PLAY;
                end

                // 2. 플레이어 이동, 회전 조작 및 하강 처리
                S_PLAY:
                begin
                    if (move_left)
                    begin
                        check_collision(current_block_x - 1'b1, current_block_y, tetromino_out);
                        if (!col_detected) current_block_x <= current_block_x - 1'b1;
                    end
                    else if (move_right)
                    begin
                        check_collision(current_block_x + 1'b1, current_block_y, tetromino_out);
                        if (!col_detected) current_block_x <= current_block_x + 1'b1;
                    end
                    else if (rotate)
                    begin
                        for(i=0; i<4; i=i+1)
                            for(j=0; j<4; j=j+1)
                                temp_rot[j][3-i] = tetromino_out[i][j];
                        
                        check_collision(current_block_x, current_block_y, temp_rot);
                        if (!col_detected) begin
                            for(i=0; i<4; i=i+1)
                                for(j=0; j<4; j=j+1)
                                    tetromino_out[i][j] <= temp_rot[i][j];
                        end
                    end
                    
                    if (tick_i || drop_fast)
                    begin
                        check_collision(current_block_x, current_block_y + 1'b1, tetromino_out);
                        if (col_detected)
                            state <= S_LOCK;
                        else
                            current_block_y <= current_block_y + 1'b1;
                    end
                end

                // 3. 쌓인 블록 보드 배열에 누적
                S_LOCK:
                begin
                    for (i = 0; i < 4; i = i + 1)
                    begin
                        for (j = 0; j < 4; j = j + 1)
                        begin
                            if (tetromino_out[i][j])
                            begin
                                if ((current_block_x + i >= 0) && (current_block_x + i < 14) && 
                                    (current_block_y + j >= 0) && (current_block_y + j < 20))
                                begin
                                    board_out[current_block_x + i][current_block_y + j] <= 1'b1;
                                end
                            end
                        end
                    end
                    check_row <= 5'd19; // 최하단 행 스캔 대기 설정
                    state     <= S_CHECK_LINE;
                end

                // 4. 가득 찬 라인 검사 (가로 14칸 조건식으로 축소 변경)
                S_CHECK_LINE:
                begin
                    row_full =  board_out[0][check_row] && board_out[1][check_row] &&
                                board_out[2][check_row] && board_out[3][check_row] &&
                                board_out[4][check_row] && board_out[5][check_row] &&
                                board_out[6][check_row] && board_out[7][check_row] &&
                                board_out[8][check_row] && board_out[9][check_row] &&
                                board_out[10][check_row] && board_out[11][check_row] &&
                                board_out[12][check_row] && board_out[13][check_row];
                    if (row_full)
                    begin
                        state <= S_CLEAR_LINE;
                    end
                    else
                    begin
                        if (check_row == 5'd0)
                        begin
                            case (cleared_lines)
                                3'd1: score <= score + 16'd100;
                                3'd2: score <= score + 16'd300;
                                3'd3: score <= score + 16'd500;
                                3'd4: score <= score + 16'd800;
                                default: score <= score + 16'd10;
                            endcase
                            state <= S_SPAWN;
                        end
                        else
                        begin
                            check_row <= check_row - 1'b1;
                        end
                    end
                end

                // 5. 라인 폭파 및 다운 시프트 (가로 14칸 반영)
                S_CLEAR_LINE:
                begin
                    cleared_lines <= cleared_lines + 1'b1;
                    for (y = 19; y >= 0; y = y - 1)
                    begin
                        if (y <= check_row)
                        begin
                            for (x = 0; x < 14; x = x + 1)
                            begin
                                if (y == 0)
                                    board_out[x][y] <= 1'b0;
                                else
                                    board_out[x][y] <= board_out[x][y-1];
                            end
                        end
                    end
                    state <= S_CHECK_LINE;
                end

                // 6. 게임 오버
                S_GAMEOVER:
                begin
                    game_over <= 1'b1;
                end

                default: state <= S_SPAWN;
            endcase
        end
    end
endmodule
