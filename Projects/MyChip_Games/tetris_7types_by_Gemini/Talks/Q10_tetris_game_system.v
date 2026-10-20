// ====================================================================
// 1. TOP MODULE: 7대 테트리미노 지원 픽셀 클럭 동기식 테트리스 통합 시스템
// ====================================================================
module tetris_game_system (
    input  wire        clk,          // 픽셀 클럭 (매 클럭마다 1픽셀 데이터 출력)
    input  wire        rst_n,        // 전체 시스템 리셋 (Active Low)
    
    // 외부 제어 및 타이머 신호 (1클럭 폭의 동기화 펄스)
    input  wire        tick_i,       // 블록 자동 하강 틱 (외부 타이머 입력)
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

    // --- 모듈 간 신호 연결 인터페이스 와이어 ---
    wire        game_board [0:9][0:19];
    wire [3:0]  blk_x;
    wire [4:0]  blk_y;
    wire        tetromino_shape [0:3][0:3]; // 4x4 확장

    // --- [인스턴스 1] 테트리스 게임 코어 엔진 ---
    tetris_core_engine u_game_core (
        .clk(clk),
        .rst_n(rst_n),
        .tick_i(tick_i),
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

    // --- [인스턴스 2] 래스터 스캔 비디오 그래픽 스케일러 (4x4 테트리미노 대응) ---
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
    wire [2:0] rand_block_type = lfsr_reg[2:0]; // 0~7 발생 (7일 경우 다시 매핑)

    always @(posedge clk or negedge rst_n) begin
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
            for (i = 0; i < 4; i = i + 1) begin
                for (j = 0; j < 4; j = j + 1) begin
                    if (shape[i][j]) begin
                        // 1. 벽면 경계면 이탈 체크
                        if ((bx + i < 0) || (bx + i >= 10) || (by + j >= 20)) begin
                            col_detected = 1'b1;
                        end
                        // 2. 기존 보드판 블록과 충돌 체크 (보드 내 유효 좌표일 때만)
                        else if ((bx + i >= 0) && (bx + i < 10) && (by + j >= 0) && (by + j < 20)) begin
                            if (board_out[bx + i][by + j])
                                col_detected = 1'b1;
                        end
                    end
                end
            end
        end
    endtask

    // 메인 상태 제어 시퀀서
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
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
        end else begin
            case (state)
                
                // 1. 무작위 블록 종류 생성 및 스폰
                S_SPAWN: begin
                    current_block_x <= 4'd3; // 중앙 스폰 위치 조정
                    current_block_y <= 5'd0;
                    cleared_lines   <= 3'd0;
                    
                    // 4x4 초기화
                    for(i=0; i<4; i=i+1)
                        for(j=0; j<4; j=j+1)
                            tetromino_out[i][j] = 1'b0;

                    // LFSR 값에 따른 7대 테트리미노 형상 매핑 (0~6)
                    case (rand_block_type == 3'd7 ? lfsr_reg[5:3] : rand_block_type)
                        3'd0: begin // I 블록
                            tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1; tetromino_out[3][1]=1;
                        end
                        3'd1: begin // J 블록
                            tetromino_out[0][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1;
                        end
                        3'd2: begin // L 블록
                            tetromino_out[2][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1;
                        end
                        3'd3: begin // O 블록
                            tetromino_out[1][0]=1; tetromino_out[2][0]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1;
                        end
                        3'd4: begin // S 블록
                            tetromino_out[1][0]=1; tetromino_out[2][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1;
                        end
                        3'd5: begin // T 블록
                            tetromino_out[1][0]=1; tetromino_out[0][1]=1; tetromino_out[1][1]=1; tetromino_out[2][1]=1;
                        end
                        default: begin // Z 블록 (3'd6)
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
                S_PLAY: begin
                    // A. 왼쪽 이동
                    if (move_left) begin
                        check_collision(current_block_x - 1'b1, current_block_y, tetromino_out);
                        if (!col_detected) current_block_x <= current_block_x - 1'b1;
                    end
                    // B. 오른쪽 이동
                    else if (move_right) begin
                        check_collision(current_block_x + 1'b1, current_block_y, tetromino_out);
                        if (!col_detected) current_block_x <= current_block_x + 1'b1;
                    end
                    // C. 블록 회전 (행렬 90도 회전 연산)
                    else if (rotate) begin
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
                    
                    // D. 주기적 하강(Tick) 또는 소프트 드롭 처리
                    if (tick_i || drop_fast) begin
                        check_collision(current_block_x, current_block_y + 1'b1, tetromino_out);
                        if (col_detected) begin
                            state <= S_LOCK; // 아래 칸에 무언가 걸리면 고정 시퀀스 진입
                        end else begin
                            current_block_y <= current_block_y + 1'b1;
                        end
                    end
                end

                // 3. 쌓인 블록 보드 배열에 누적
                S_LOCK: begin
                    for (i = 0; i < 4; i = i + 1) begin
                        for (j = 0; j < 4; j = j + 1) begin
                            if (tetromino_out[i][j]) begin
                                if ((current_block_x + i >= 0) && (current_block_x + i < 10) && 
                                    (current_block_y + j >= 0) && (current_block_y + j < 20)) begin
                                    board_out[current_block_x + i][current_block_y + j] <= 1'b1;
코드를 사용할 때는 주의가 필요합니다.
end
end
end
end
check_row <= 5'd19; // 최하단 행 스캔 대기
state     <= S_CHECK_LINE;
end
// 4. 가득 찬 라인 검사
S_CHECK_LINE: begin
row_full = board_out[0][check_row] && board_out[1][check_row] &&
board_out[2][check_row] && board_out[3][check_row] &&
board_out[4][check_row] && board_out[5][check_row] &&
board_out[6][check_row] && board_out[7][check_row] &&
board_out[8][check_row] && board_out[9][check_row];
if (row_full) begin
state <= S_CLEAR_LINE;
end else begin
if (check_row == 5'd0) begin
// 클리어 라인 수별 가산 스케일링 반영
case (cleared_lines)
3'd1: score <= score + 16'd100;
3'd2: score <= score + 16'd300;
3'd3: score <= score + 16'd500;
3'd4: score <= score + 16'd800; // 4줄 동시 제거: TETRIS!
default: score <= score + 16'd10;
endcase
state <= S_SPAWN;
end else begin
check_row <= check_row - 1'b1;
end
end
end
// 5. 라인 폭파 및 윗줄 하강 다운 시프트 연산
S_CLEAR_LINE: begin
cleared_lines <= cleared_lines + 1'b1;
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
state <= S_CHECK_LINE; // 지워진 행 위치 재정비 후 스캔 연속성 유지
end
// 6. 게임 오버 루프
S_GAMEOVER: begin
game_over <= 1'b1;
end
default: state <= S_SPAWN;
endcase
end
end
endmodule
// ====================================================================
// 3. GRAPHIC SCALER MODULE: 4x4 매핑 지원 래스터 스캔 비디오 드라이버
// ====================================================================
module tetris_raster_scaler (
input  wire        clk,
input  wire        rst_n,
input  wire        board[0:9][0:19],
input  wire [3:0]  current_block_x,
input  wire [4:0]  current_block_y,
input  wire        tetromino[0:3][0:3], // 4x4 확장 매핑
output reg         h_sync,
output reg         v_sync,
output reg         video_active,
output reg         pixel_data
);
// 128x64 비디오 포맷 표준 프레임 타이밍 설정
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
// 4x4 상대 격자 범위 산출 변수
wire [1:0] block_inner_x = grid_x - current_block_x;
wire [1:0] block_inner_y = grid_y - current_block_y;
always @(posedge clk or negedge rst_n) begin
if (!rst_n) begin
pixel_data <= 1'b0;
end else if (video_active) begin
if (pixel_x >= (BOARD_X_OFF - 1) && pixel_x <= (BOARD_X_OFF + 30) &&
pixel_y >= (BOARD_Y_OFF - 1) && pixel_y <= (BOARD_Y_OFF + 60)) begin
// 보드 테두리 아웃라인
if (pixel_x == (BOARD_X_OFF - 1) || pixel_x == (BOARD_X_OFF + 30) ||
pixel_y == (BOARD_Y_OFF - 1) || pixel_y == (BOARD_Y_OFF + 60)) begin
pixel_data <= 1'b1;
end
// 보드 내부 필드 스캔 및 동적 활성 픽셀 매핑
else begin
if (board[grid_x][grid_y]) begin
pixel_data <= 1'b1;
end
else if (grid_x >= current_block_x && grid_x < (current_block_x + 4) &&
grid_y >= current_block_y && grid_y < (current_block_y + 4)) begin
pixel_data <= tetromino[block_inner_x][block_inner_y];
end else begin
pixel_data <= 1'b0;
end
end
end
else if (pixel_x == 7'd42) begin
pixel_data <= pixel_y; // 경계 영역용 점선 가이드
end else begin
pixel_data <= 1'b0;
end
end else begin
pixel_data <= 1'b0;
end
end
endmodule
