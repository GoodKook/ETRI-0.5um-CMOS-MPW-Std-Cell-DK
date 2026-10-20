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

    always @(posedge clk or negedge rst_n)
    begin
        if (!rst_n)
        begin
            pixel_data <= 1'b0;
        end
        else if (video_active)
        begin
            if (pixel_x >= (BOARD_X_OFF - 1) && pixel_x <= (BOARD_X_OFF + 30) &&
                    pixel_y >= (BOARD_Y_OFF - 1) && pixel_y <= (BOARD_Y_OFF + 60))
            begin
                // 보드 테두리 아웃라인
                if (pixel_x == (BOARD_X_OFF - 1) || pixel_x == (BOARD_X_OFF + 30) ||
                    pixel_y == (BOARD_Y_OFF - 1) || pixel_y == (BOARD_Y_OFF + 60))
                begin
                    pixel_data <= 1'b1;
                end
                // 보드 내부 필드 스캔 및 동적 활성 픽셀 매핑
                else
                begin
                    if (board[grid_x][grid_y])
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
            else if (pixel_x == 7'd42)
            begin
                pixel_data <= pixel_y; // 경계 영역용 점선 가이드
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
