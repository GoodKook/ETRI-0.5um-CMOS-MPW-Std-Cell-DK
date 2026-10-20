
module tetris_raster_scaler (
    input  wire        clk,            // 시스템/픽셀 클럭
    input  wire        rst_n,          // Active Low 리셋
    
    // 게임 엔진(컨트롤러) 상태 데이터 입력
    input  wire        board[0:9][0:19],      // 10x20 게임 보드 고정 블록
    input  wire [3:0]  current_block_x,       // 현재 블록 X (0~9)
    input  wire [4:0]  current_block_y,       // 현재 블록 Y (0~19)
    input  wire        tetromino[0:1][0:1],   // 현재 조종 중인 2x2 블록 모양
    
    // 래스터 스캔 표준 비디오 인터페이스 출력
    output reg         h_sync,         // 수평 동기 신호
    output reg         v_sync,         // 수직 동기 신호
    output reg         video_active,   // 현재 유효 디스플레이 영역 표시 (Blanking 반대)
    output reg         pixel_data      // 최종 픽셀 출력 (흑백 기준 1: On, 0: Off)
);

    // --- 128x64 해상도 래스터 스캔 타이밍 파라미터 정의 ---
    // (임의의 가상 디스플레이 타이밍 예시 사양입니다.)
    localparam H_ACTIVE   = 128;
    localparam H_FRONT    = 4;
    localparam H_SYNC_P   = 12;
    localparam H_BACK     = 16;
    localparam H_TOTAL    = H_ACTIVE + H_FRONT + H_SYNC_P + H_BACK; // 160

    localparam V_ACTIVE   = 64;
    localparam V_FRONT    = 2;
    localparam V_SYNC_P   = 4;
    localparam V_BACK     = 10;
    localparam V_TOTAL    = V_ACTIVE + V_FRONT + V_SYNC_P + V_BACK; // 80

    // --- 래스터 스캔 카운터 레지스터 ---
    reg [7:0] h_count; // 0 ~ H_TOTAL-1
    reg [6:0] v_count; // 0 ~ V_TOTAL-1

    // --- 픽셀 카운터 (래스터 스캔 제어) ---
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

    // --- 동기 신호 및 유효 화면(Active Area) 생성 ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            h_sync       <= 1'b1;
            v_sync       <= 1'b1;
            video_active <= 1'b0;
        end else begin
            // H_SYNC (Active Low 기준)
            h_sync <= ~((h_count >= (H_ACTIVE + H_FRONT)) && (h_count < (H_ACTIVE + H_FRONT + H_SYNC_P)));
            
            // V_SYNC (Active Low 기준)
            v_sync <= ~((v_count >= (V_ACTIVE + V_FRONT)) && (v_count < (V_ACTIVE + V_FRONT + V_SYNC_P)));
            
            // 유효 화면 구간 검사 (0 <= X < 128 이고 0 <= Y < 64 일 때만 1)
            video_active <= (h_count < H_ACTIVE) && (v_count < V_ACTIVE);
        end
    end

    // --- 렌더링 좌표 매핑 파라미터 (블록 크기 3x3 픽셀) ---
    localparam BLOCK_SIZE   = 3;
    localparam BOARD_X_OFF  = 10; // 게임 보드 화면 오프셋 X
    localparam BOARD_Y_OFF  = 2;  // 게임 보드 화면 오프셋 Y

    // 현재 래스터 스캔 위치 가독성 변수 변환
    wire [6:0] pixel_x = h_count[6:0];
    wire [5:0] pixel_y = v_count[5:0];

    // 현재 스캔 좌표가 테트리스 보드의 몇 번째 칸(Grid)인지 계산
    wire [3:0] grid_x = (pixel_x - BOARD_X_OFF) / BLOCK_SIZE;
    wire [4:0] grid_y = (pixel_y - BOARD_Y_OFF) / BLOCK_SIZE;

    // 현재 스캔 좌표가 떨어지는 테트리미노(2x2) 내부의 상대 좌표인지 계산
    wire [1:0] block_inner_x = grid_x - current_block_x;
    wire [1:0] block_inner_y = grid_y - current_block_y;

    // --- 실시간 픽셀 파이프라인 출력 생성 ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pixel_data <= 1'b0;
        end else if (video_active) begin
            // 1. 테트리스 보드 프레임 및 내부 블록 렌더링 영역
            if (pixel_x >= (BOARD_X_OFF - 1) && pixel_x <= (BOARD_X_OFF + 30) &&
                pixel_y >= (BOARD_Y_OFF - 1) && pixel_y <= (BOARD_Y_OFF + 60)) begin
                
                // 보드 경계 테두리선 그리기
                if (pixel_x == (BOARD_X_OFF - 1) || pixel_x == (BOARD_X_OFF + 30) ||
                    pixel_y == (BOARD_Y_OFF - 1) || pixel_y == (BOARD_Y_OFF + 60)) begin
                    pixel_data <= 1'b1;
                end
                // 보드 내부 픽셀 검사
                else begin
                    // A. 이미 바닥에 고정된 블록 배열 확인
                    if (board[grid_x][grid_y]) begin
                        pixel_data <= 1'b1;
                    end
                    // B. 실시간으로 조종하며 떨어지는 블록 영역 확인
                    else if (grid_x >= current_block_x && grid_x < (current_block_x + 2) &&
                             grid_y >= current_block_y && grid_y < (current_block_y + 2)) begin
                        
                        if (tetromino[block_inner_x][block_inner_y])
                            pixel_data <= 1'b1;
                        else
                            pixel_data <= 1'b0;
                    end else begin
                        pixel_data <= 1'b0;
                    end
                end
            end
            // 2. 게임 보드 외부 UI 데코레이션 레이아웃 (예: 경계선 분할)
            else if (pixel_x == 7'd42) begin
                pixel_data <= pixel_y[1]; // 점선 가이드라인 출력
            end else begin
                pixel_data <= 1'b0; // 그 외 배경 영역 암전
            end
        end else begin
            pixel_data <= 1'b0; // 블랭킹(Blanking) 구간은 반드시 0 출력
        end
    end

endmodule
