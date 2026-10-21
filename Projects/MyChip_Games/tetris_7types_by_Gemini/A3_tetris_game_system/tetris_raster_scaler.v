// ====================================================================
// 3. GRAPHIC SCALER MODULE: 3픽셀 매핑 및 14x20 크기 아웃라인 드라이버
// ====================================================================
module tetris_raster_scaler (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        board[0:13][0:19],    // 포트 선언 가로 14칸으로 수정
    input  wire [3:0]  current_block_x,
    input  wire [4:0]  current_block_y,
    input  wire        tetromino[0:3][0:3],
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

    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            h_count <= 8'd0;
            v_count <= 7'd0;
        end
        else
        begin
            if (h_count == H_TOTAL - 1)
            begin
                h_count <= 8'd0;
                if (v_count == V_TOTAL - 1)
                    v_count <= 7'd0;
                else
                    v_count <= v_count + 1'b1;
            end
            else
            begin
                h_count <= h_count + 1'b1;
            end
        end
    end

    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            h_sync       <= 1'b1;
            v_sync       <= 1'b1;
            video_active <= 1'b0;
        end
        else
        begin
            h_sync       <= ~((h_count >= (H_ACTIVE + H_FRONT)) && (h_count < (H_ACTIVE + H_FRONT + H_SYNC_P)));
            v_sync       <= ~((v_count >= (V_ACTIVE + V_FRONT)) && (v_count < (V_ACTIVE + V_FRONT + V_SYNC_P)));
            video_active <= (h_count < H_ACTIVE) && (v_count < V_ACTIVE);
        end
    end

    // 요구사항 반영: BLOCK_SIZE 고정 및 새로운 가로 14칸 화면 배치 레이아웃 계산
    // 14칸 * BLOCK_SIZE(3) = 42픽셀 폭 (128 화면 기준 중앙 배치를 위해 X 오프셋 계산: (128-42)/2 = 43)
    // 20칸 * BLOCK_SIZE(3) = 60픽셀 높이 (64 화면 기준 중앙 배치를 위해 Y 오프셋 계산: (64-60)/2 = 2)
    localparam BLOCK_SIZE   = 3;
    localparam BOARD_X_OFF  = 43; // 가로 중앙 정렬
    localparam BOARD_Y_OFF  = 2;  // 세로 중앙 정렬

    wire [6:0] pixel_x = h_count[6:0];
    wire [5:0] pixel_y = v_count[5:0];
    wire [3:0] grid_x = (pixel_x - BOARD_X_OFF) / BLOCK_SIZE;
    wire [4:0] grid_y = (pixel_y - BOARD_Y_OFF) / BLOCK_SIZE;

    // 4x4 상대 격자 범위 산출 변수
    wire [1:0] block_inner_x = grid_x - current_block_x;
    wire [1:0] block_inner_y = grid_y - current_block_y;

    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            pixel_data <= 1'b0;
        end
        else if (video_active)
        begin
            // 아웃라인 영역 검사식 수정 (가로 오프셋+14칸*3 = 42픽셀 범위)
            if (pixel_x >= (BOARD_X_OFF - 1) && pixel_x <= (BOARD_X_OFF + 42) &&
                pixel_y >= (BOARD_Y_OFF - 1) && pixel_y <= (BOARD_Y_OFF + 60))
            begin
                // 보드 테두리 아웃라인 경계선 조건 업데이트
                if (pixel_x == (BOARD_X_OFF - 1) || pixel_x == (BOARD_X_OFF + 42) ||
                    pixel_y == (BOARD_Y_OFF - 1) || pixel_y == (BOARD_Y_OFF + 60))
                begin
                    pixel_data <= 1'b1;
                end
                // 보드 내부 필드 스캔 및 동적 활성 픽셀 매핑
                else
                begin
                    if (grid_x < 14 && grid_y < 20 && board[grid_x][grid_y])
                    begin
                        pixel_data <= 1'b1;
                    end
                    else if (grid_x >= current_block_x && grid_x < (current_block_x + 4) &&
                                grid_y >= current_block_y && grid_y < (current_block_y + 4))
                    begin
                        pixel_data <= tetromino[block_inner_x][block_inner_y];
                    end
                    else
                    begin
                        pixel_data <= 1'b0;
                    end
                end
            end
            else if (pixel_x == 7'd64) // 중앙 분할 가이드 점선 위치 (128해상도 절반 지점)
            begin
                pixel_data <= pixel_y;
            end
            else
            begin
                pixel_data <= 1'b0;
            end
        end
        else
        begin
        pixel_data <= 1'b0;
        end
    end

endmodule
