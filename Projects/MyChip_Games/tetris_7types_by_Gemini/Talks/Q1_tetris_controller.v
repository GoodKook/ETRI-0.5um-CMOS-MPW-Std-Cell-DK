module tetris_controller (
    input  wire        clk,          // 시스템 클럭 (예: 50MHz)
    input  wire        rst_n,        // 비동기 리셋 (Active Low)
    input  wire        tick_i,       // 블록 하강 타이머 신호 (예: 0.5초마다 1클럭 펄스)
    // 사용자 입력 (Debounced 1클럭 펄스 신호)
    input  wire        move_left,    
    input  wire        move_right,   
    input  wire        rotate,       
    input  wire        drop_fast,    
    // 게임 상태 출력
    output reg         game_over,
    output reg  [15:0] score
);

    // --- 상수 정의 ---
    localparam BOARD_WIDTH  = 10;
    localparam BOARD_HEIGHT = 20;
    
    // FSM 상태 정의
    localparam STATE_IDLE      = 3'b000;
    localparam STATE_SPAWN     = 3'b001;
    localparam STATE_WAIT_TICK = 3'b010;
    localparam STATE_MOVE      = 3'b011;
    localparam STATE_COLLISION = 3'b100;
    localparam STATE_CLEAR_LINE= 3'b101;
    localparam STATE_GAMEOVER  = 3'b110;

    reg [2:0] current_state, next_state;

    // --- 게임 보드 레지스터 (1이면 블록이 고정되어 있음을 의미) ---
    reg board [0:BOARD_WIDTH-1][0:BOARD_HEIGHT-1];

    // --- 현재 낙하 중인 블록(테트리미노) 정보 ---
    // 간소화를 위해 2x2 영역 내의 블록 배열로 가정 (예: O형 또는 임의의 모양)
    reg [1:0] tetromino [0:1]; 
    reg [3:0] block_x; // 현재 블록의 X 좌표 (0~9)
    reg [4:0] block_y; // 현재 블록의 Y 좌표 (0~19)

    // 내부 상태 제어용 와이어 및 레지스터
    wire is_collision;
    integer i, j;

    // --- 1. FSM 상태 천이 로직 ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= STATE_IDLE;
        else
            current_state <= next_state;
    end

    // --- 2. FSM 다음 상태 결정 로직 ---
    always @(*) begin
        case (current_state)
            STATE_IDLE: next_state = STATE_SPAWN;
            
            STATE_SPAWN: begin
                if (is_collision) // 생성하자마자 충돌하면 게임 오버
                    next_state = STATE_GAMEOVER;
                else
                    next_state = STATE_WAIT_TICK;
            end
            
            STATE_WAIT_TICK: begin
                if (tick_i || drop_fast)
                    next_state = STATE_COLLISION; // 아래로 내린 뒤 충돌 체크
                else if (move_left || move_right || rotate)
                    next_state = STATE_MOVE;
                else
                    next_state = STATE_WAIT_TICK;
            end
            
            STATE_MOVE: begin
                next_state = STATE_WAIT_TICK;
            end
            
            STATE_COLLISION: begin
                if (is_collision) // 바닥이나 다른 블록에 부딪힘
                    next_state = STATE_CLEAR_LINE;
                else
                    next_state = STATE_WAIT_TICK;
            end
            
            STATE_CLEAR_LINE: begin
                next_state = STATE_SPAWN; // 줄 삭제 후 새 블록 생성
            end
            
            STATE_GAMEOVER: begin
                next_state = STATE_GAMEOVER;
            end
            
            default: next_state = STATE_IDLE;
        endcase
    end

    // --- 3. 충돌 감지 조합회로 (Collision Detection) ---
    // 블록이 보드 벽면을 벗어나거나 기존 블록과 겹치는지 체크
    assign is_collision = ((block_y + 1 >= BOARD_HEIGHT) && tetromino[1][0]) || // 예시 바닥 충돌 조건
                          (block_x == 0 && move_left) || 
                          (block_x >= BOARD_WIDTH-2 && move_right); 

    // --- 4. 게임 순차 로직 (데이터패스) ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            game_over <= 1'b0;
            score     <= 16'h0000;
            block_x   <= 4'd4;
            block_y   <= 5'd0;
            
            // 보드 초기화
            for (i = 0; i < BOARD_WIDTH; i = i + 1) begin
                for (j = 0; j < BOARD_HEIGHT; j = j + 1) begin
                    board[i][j] <= 1'b0;
                end
            end
        end else begin
            case (current_state)
                STATE_SPAWN: begin
                    block_x <= 4'd4; // 중앙 상단에서 생성
                    block_y <= 5'd0;
                    // 테스트용 2x2 스퀘어 블록 채우기
                    tetromino[0] <= 2'b11;
                    tetromino[1] <= 2'b11;
                end
                
                STATE_MOVE: begin
                    if (move_left && !is_collision)
                        block_x <= block_x - 1'b1;
                    else if (move_right && !is_collision)
                        block_x <= block_x + 1'b1;
                    else if (rotate) begin
                        // 2x2 회전 예시 (원래는 전치 및 반전 연산 필요)
                        tetromino[0] <= {tetromino[1][0], tetromino[0][0]};
                        tetromino[1] <= {tetromino[1][1], tetromino[0][1]};
                    end
                end
                
                STATE_COLLISION: begin
                    if (!is_collision && (tick_i || drop_fast)) begin
                        block_y <= block_y + 1'b1; // 충돌 없으면 하강
                    end else if (is_collision) begin
                        // 충돌 시 현재 위치의 보드 레지스터에 고정(Lock)
                        board[block_x][block_y]     <= board[block_x][block_y]     | tetromino[0][0];
                        board[block_x+1][block_y]   <= board[block_x+1][block_y]   | tetromino[0][1];
                        board[block_x][block_y+1]   <= board[block_x][block_y+1]   | tetromino[1][0];
                        board[block_x+1][block_y+1] <= board[block_x+1][block_y+1] | tetromino[1][1];
                    end
                end
                
                STATE_CLEAR_LINE: begin
                    // 줄이 가득 찼는지 검사하고 지우는 로직 (간소화 뼈대)
                    // 실제 구현 시 가득 찬 행(Row)을 지우고 위의 행들을 한 칸씩 아래로 복사해야 합니다.
                    score <= score + 16'd100; // 예시 점수 추가
                end
                
                STATE_GAMEOVER: begin
                    game_over <= 1'b1;
                end
            endcase
        end
    end

endmodule
