// ====================================================================
// 2. CORE ENGINE MODULE: LFSR 난수 및 4x4 표준 7종 블록 제어기
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
    output reg         tetromino_out [0:3][0:3], // 4x4 표준 영역
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
    wire [2:0] rand_block_type = lfsr_reg[2:0]; // 0~7 발생

    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n) begin
            lfsr_reg <= 8'hA5; // 초기 시드값 (0이 아니어야 함)
        end else begin
            // 최대 길이 피드백 다항식: x^8 + x^6 + x^5 + x^4 + 1
            lfsr_reg <= {lfsr_reg[6:0], lfsr_reg[7] ^ lfsr_reg[5] ^ lfsr_reg[4] ^ lfsr_reg[3]};
        end
    end

    // --- 동적 충돌 감지 태스크 (Task) 정의 ---
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
                        // 1. 벽면 경계면 이탈 체크
                        if ((bx + i < 0) || (bx + i >= 10) || (by + j >= 20))
                        begin
                            col_detected = 1'b1;
                        end
                        // 2. 기존 보드판 블록과 충돌 체크 (보드 내 유효 좌표일 때만)
                        else if ((bx + i >= 0) && (bx + i < 10) && (by + j >= 0) && (by + j < 20))
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
    reg [2:0] tick_cnt; // 하강 속도 조절용 카운터
    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            state           <= S_SPAWN;
            game_over       <= 1'b0;
            score           <= 16'd0;
            current_block_x <= 4'd3;
            current_block_y <= 5'd0;
            check_row       <= 5'd0;
            cleared_lines   <= 3'd0;
            
            for(x=0; x<10; x=x+1)
                for(y=0; y<20; y=y+1)
                    board_out[x][y] <= 1'b0;

            for(i=0; i<4; i=i+1)
                for(j=0; j<4; j=j+1)
                    tetromino_out[i][j] <= 1'b0;

            tick_cnt <= 4'd0;
        end
        else
        begin
            case (state)
                // 1. 무작위 블록 종류 생성 및 스폰
                S_SPAWN:
                begin
                    current_block_x <= 4'd3; 
                    current_block_y <= 5'd0;
                    cleared_lines   <= 3'd0;
                    
                    // 4x4 초기화
                    for(i=0; i<4; i=i+1)
                        for(j=0; j<4; j=j+1)
                            tetromino_out[i][j] = 1'b0;

                    // LFSR 값에 따른 7대 테트리미노 형상 매핑 (0~6)
                    case (rand_block_type == 3'd7 ? lfsr_reg[5:3] : rand_block_type)
                        3'd0:   // I 블록
                        begin
                            tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1; tetromino_out[3][1]=1;
                        end
                        3'd1:   // J 블록
                        begin
                            tetromino_out[0][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1;
                        end
                        3'd2:   // L 블록
                        begin
                            tetromino_out[2][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1;
                        end
                        3'd3:   // O 블록
                        begin
                            tetromino_out[1][0]=1; tetromino_out[2][0]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1;
                        end
                        3'd4:   // S 블록
                        begin
                            tetromino_out[1][0]=1; tetromino_out[2][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1;
                        end
                        3'd5:   // T 블록
                        begin
                            tetromino_out[1][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1;
                        end
                        default:    // Z 블록 (3'd6)
                        begin
                            tetromino_out[0][0]=1; tetromino_out[1][0]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1;
                        end
                    endcase
                    
                    // 스폰 충돌 확인 -> 게임 오버 판정
                    check_collision(4'd3, 5'd0, tetromino_out);
                    if (col_detected)
                        state <= S_GAMEOVER;
                    else
                        state <= S_PLAY;
                end

                // 2. 플레이어 이동, 회전 조작 및 하강 처리
                S_PLAY:
                begin
                    // A. 왼쪽 이동
                    if (tick_i && move_left)
                    begin
                        check_collision(current_block_x - 1'b1, current_block_y, tetromino_out);
                        if (!col_detected) current_block_x <= current_block_x - 1'b1;
                    end
                    // B. 오른쪽 이동
                    else if (tick_i && move_right)
                    begin
                        check_collision(current_block_x + 1'b1, current_block_y, tetromino_out);
                        if (!col_detected) current_block_x <= current_block_x + 1'b1;
                    end
                    // C. 블록 회전 (행렬 90도 회전 연산)
                    else if (tick_i && rotate)
                    begin
                        for(i=0; i<4; i=i+1)
                            for(j=0; j<4; j=j+1)
                                temp_rot[j][3-i] = tetromino_out[i][j];
                        
                        check_collision(current_block_x, current_block_y, temp_rot);
                        if (!col_detected)
                        begin
                            for(i=0; i<4; i=i+1)
                                for(j=0; j<4; j=j+1)
                                    tetromino_out[i][j] <= temp_rot[i][j];
                        end
                    end
                    // D. 주기적 하강(Tick) 또는 소프트 드롭 처리
                    if ((tick_i && drop_fast) || tick_cnt == 3'd7) // tick_cnt를 이용한 하강 속도 조절
                    begin
                        check_collision(current_block_x, current_block_y + 1'b1, tetromino_out);
                        if (col_detected)
                        begin
                            state <= S_LOCK; 
                        end
                        else
                        begin
                            current_block_y <= current_block_y + 1'b1;
                        end
                        tick_cnt <= 0;
                    end
                    else if (tick_i)    // Tick Counter
                    begin 
                        tick_cnt <= tick_cnt + 1'b1;
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
                                if ((current_block_x + i >= 0) && (current_block_x + i < 10) && 
                                    (current_block_y + j >= 0) && (current_block_y + j < 20))
                                begin
                                    board_out[current_block_x + i][current_block_y + j] <= 1'b1;
                                end
                            end
                        end
                    end
                    check_row <= 5'd19;
                    state     <= S_CHECK_LINE;
                end

                // 4. 가득 찬 라인 검사
                S_CHECK_LINE:
                begin
                    row_full =  board_out[0][check_row] && board_out[1][check_row] &&
                                board_out[2][check_row] && board_out[3][check_row] &&
                                board_out[4][check_row] && board_out[5][check_row] &&
                                board_out[6][check_row] && board_out[7][check_row] &&
                                board_out[8][check_row] && board_out[9][check_row];
                    if (row_full)
                    begin
                        state <= S_CLEAR_LINE;
                    end
                    else
                    begin
                        if (check_row == 5'd0)
                        begin
                            case (cleared_lines)
                                3'd1:   score <= score + 16'd100;
                                3'd2:   score <= score + 16'd300;
                                3'd3:   score <= score + 16'd500;
                                3'd4:   score <= score + 16'd800;
                                default:score <= score + 16'd10;
                            endcase
                            state <= S_SPAWN;
                        end
                        else
                        begin
                            check_row <= check_row - 1'b1;
                        end
                    end
                end

                // 5. 라인 폭파 및 윗줄 하강 다운 시프트 연산
                S_CLEAR_LINE:
                begin
                    cleared_lines <= cleared_lines + 1'b1;
                    for (y = 19; y >= 0; y = y - 1)
                    begin
                        if (y <= check_row)
                        begin
                            for (x = 0; x < 10; x = x + 1)
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

                // 6. 게임 오버 루프
                S_GAMEOVER:
                begin
                    game_over <= 1'b1;
                end

                default: state <= S_SPAWN;
            endcase
        end
    end

endmodule
