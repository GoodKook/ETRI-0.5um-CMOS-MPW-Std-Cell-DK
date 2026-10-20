module tetris_video_renderer (
    input  wire        clk,          // 시스템 클럭 (픽셀 클럭 또는 동기화 클럭)
    input  wire        rst_n,        // Active Low 리셋
    
    // 디스플레이 컨트롤러로부터 오는 현재 픽셀 스캔 좌표
    input  wire [6:0]  pixel_x,      // 0 ~ 127
    input  wire [5:0]  pixel_y,      // 0 ~ 63
    
    // 게임 엔진(컨트롤러)으로부터 받는 상태 데이터
    input  wire        board[0:9][0:19],      // 10x20 게임 보드 고정 블록 배열
    input  wire [3:0]  current_block_x,       // 현재 조종 중인 블록 X (0~9)
    input  wire [4:0]  current_block_y,       // 현재 조종 중인 블록 Y (0~19)
    input  wire        tetromino[0:1][0:1],   // 현재 조종 중인 2x2 블록 모양
    
    // 최종 디스플레이 출력 신호 (흑백/단색 기준 1이면 켜짐, 0이면 꺼짐)
    output reg         video_out
);

    // --- 상수 정의 (블록 1개의 크기를 3x3 픽셀로 설정) ---
    localparam BLOCK_SIZE   = 3;
    localparam BOARD_X_OFF  = 10; // 게임 보드 시작 X 좌표
    localparam BOARD_Y_OFF  = 2;  // 게임 보드 시작 Y 좌표

    // 현재 스캔 중인 픽셀이 게임 보드 기준 몇 번째 칸(Grid)인지 계산
    wire [3:0] grid_x;
    wire [4:0] grid_y;
    
    assign grid_x = (pixel_x - BOARD_X_OFF) / BLOCK_SIZE;
    assign grid_y = (pixel_y - BOARD_Y_OFF) / BLOCK_SIZE;

    // 현재 스캔 중인 픽셀이 조종 중인 테트리미노 내부의 좌표인지 계산
    wire [1:0] block_inner_x;
    wire [1:0] block_inner_y;
    
    assign block_inner_x = grid_x - current_block_x;
    assign block_inner_y = grid_y - current_block_y;

    // 픽셀 렌더링 파이프라인/조합 회로
    always @(*) begin
        // 기본값은 배경 오프(0)
        video_out = 1'b0;
        
        // 1. 테트리스 게임 보드 영역 내부인 경우 (30x60 영역 테두리 그리기 포함)
        if (pixel_x >= (BOARD_X_OFF - 1) && pixel_x <= (BOARD_X_OFF + 30) &&
            pixel_y >= (BOARD_Y_OFF - 1) && pixel_y <= (BOARD_Y_OFF + 60)) begin
            
            // 외곽 테두리선 그리기 (박스 라인)
            if (pixel_x == (BOARD_X_OFF - 1) || pixel_x == (BOARD_X_OFF + 30) ||
                pixel_y == (BOARD_Y_OFF - 1) || pixel_y == (BOARD_Y_OFF + 60)) begin
                video_out = 1'b1;
            end
            // 보드 내부 내부 픽셀 처리
            else begin
                // A. 이미 바닥에 쌓여서 고정된 블록(`board`)이 있는지 확인
                if (board[grid_x][grid_y]) begin
                    video_out = 1'b1;
                end
                // B. 현재 낙하하며 조종 중인 블록(`tetromino`) 범위 안인지 확인
                else if (grid_x >= current_block_x && grid_x < (current_block_x + 2) &&
                         grid_y >= current_block_y && grid_y < (current_block_y + 2)) begin
                    
                    if (tetromino[block_inner_x][block_inner_y]) begin
                        video_out = 1'b1;
                    end
                end
            end
        end
        
        // 2. 우측 텍스트/UI 영역 스캔 (예시: 간단한 GUI 점선 그리기 등)
        // 실제 점수 숫자를 그리려면 폰트 ROM을 참조하는 로직이 추가되어야 합니다.
        else if (pixel_x == 45) begin
            video_out = pixel_y[1]; // 점선 UI 연출
        end
    end

endmodule
