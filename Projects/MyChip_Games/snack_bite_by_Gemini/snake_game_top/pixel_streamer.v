module pixel_streamer (
    input  wire         clk,
    input  wire         rst_n,
    input  wire         frame_start,
    input  wire [3:0]   apple_grid_x,
    input  wire [2:0]   apple_grid_y,
    input  wire [1:0]   current_dir,
    input  wire [4:0]   snake_len,
    input  wire [111:0] snake_body_regs,
    input  wire         game_over,
    output reg          pixel_valid,
    output reg          pixel_out
);

    // 128x64 내부 탐색용 주소 스캔 카운터
    reg [6:0] scan_x;
    reg [5:0] scan_y;
    reg       is_streaming;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            scan_x <= 7'd0; scan_y <= 6'd0; is_streaming <= 1'b0; pixel_valid <= 1'b0;
        end else if (frame_start) begin
            scan_x <= 7'd0; scan_y <= 6'd0; is_streaming <= 1'b1; pixel_valid <= 1'b1;
        end else if (is_streaming) begin
            if (scan_x == 7'd127) begin
                scan_x <= 7'd0;
                if (scan_y == 6'd63) begin
                    scan_y <= 6'd0; is_streaming <= 1'b0; pixel_valid <= 1'b0;
                end else scan_y <= scan_y + 1'b1;
            end else scan_x <= scan_x + 1'b1;
        end else pixel_valid <= 1'b0;
    end

    // 레지스터 버스 압축 해제
    wire [6:0] body_pos [0:15];
    genvar j;
    generate
        for(j=0; j<16; j=j+1) begin: DECODE_BUS
            assign body_pos[j] = snake_body_regs[j*7 +: 7];
        end
    endgenerate

    // 8픽셀 크기(2^3) 나누기 대용 비트 슬라이싱 연산으로 타겟 그리드 구하기
    wire [3:0] curr_grid_x = scan_x[6:3];
    wire [2:0] curr_grid_y = scan_y[5:3];

    // 현재 그리드가 오브젝트나 외부 벽 환경에 속하는지 체크
    wire is_wall  = (curr_grid_x == 4'd0 || curr_grid_x == 4'd15 || curr_grid_y == 3'd0 || curr_grid_y == 3'd7);
    wire is_apple = (curr_grid_x == apple_grid_x) && (curr_grid_y == apple_grid_y);

    // 뱀 파트 도달 연산 루프
    reg        hit_snake;
    reg [3:0]  hit_index;
    integer m;
    always @(*) begin
        hit_snake = 1'b0;
        hit_index = 4'd0;
        for (m = 0; m < 16; m = m + 1) begin
            if (m < snake_len) begin
                if ((curr_grid_x == body_pos[m][6:3]) && (curr_grid_y == body_pos[m][2:0])) begin
                    hit_snake = 1'b1;
                    hit_index = m[3:0];
                end
            end
        end
    end

    // 8x8 크기 스프라이트 롬 주소 연산용 하위 오프셋 추출
    wire [2:0] spr_x = scan_x[2:0];
    wire [2:0] spr_y = scan_y[2:0];

    // 스프라이트 도트 패턴 데이터 처리부
    reg spr_pixel;
    always @(*) begin
        spr_pixel = 1'b0;
        if (is_apple) begin
            // 8x8 사과 도트 매핑
            case (spr_y)
                3'd0: spr_pixel = (spr_x == 3'd4 || spr_x == 3'd5);
                3'd1: spr_pixel = (spr_x == 3'd3);
                3'd2: spr_pixel = (spr_x >= 3'd2 && spr_x <= 3'd5);
                3'd3: spr_pixel = (spr_x >= 3'd1 && spr_x <= 3'd6);
                3'd4: spr_pixel = (spr_x >= 3'd1 && spr_x <= 3'd6);
                3'd5: spr_pixel = (spr_x >= 3'd1 && spr_x <= 3'd6);
                3'd6: spr_pixel = (spr_x >= 3'd2 && spr_x <= 3'd5);
                3'd7: spr_pixel = (spr_x == 3'd3 || spr_x == 3'd4);
            endcase
        end else if (hit_snake) begin
            if (hit_index == 4'd0) begin 
                // 1. 머리 스프라이트 (방향별 눈 구멍 탈색 구현)
                spr_pixel = 1'b1;
                case (current_dir)
                    2'b00: if ((spr_y == 3'd2 || spr_y == 3'd5) && (spr_x == 3'd5 || spr_x == 3'd6)) spr_pixel = 1'b0; // 우
                    2'b01: if ((spr_y == 3'd2 || spr_y == 3'd5) && (spr_x == 3'd1 || spr_x == 3'd2)) spr_pixel = 1'b0; // 좌
                    2'b10: if ((spr_x == 3'd2 || spr_x == 3'd5) && (spr_y == 3'd1 || spr_y == 3'd2)) spr_pixel = 1'b0; // 상
                    2'b11: if ((spr_x == 3'd2 || spr_x == 3'd5) && (spr_y == 3'd5 || spr_y == 3'd6)) spr_pixel = 1'b0; // 하
                endcase
            end else if (hit_index == snake_len - 1'b1) begin 
                // 2. 꼬리 스프라이트 (진행 대비 뾰족한 화살표 함수 연산)
                case (current_dir)
                    2'b00: spr_pixel = (spr_x >= spr_y) && (spr_x >= (3'd7 - spr_y));
                    2'b01: spr_pixel = (spr_x <= spr_y) && (spr_x <= (3'd7 - spr_x));
                    2'b10: spr_pixel = (spr_y <= spr_x) && (spr_y <= (3'd7 - spr_x));
                    2'b11: spr_pixel = (spr_y >= spr_x) && (spr_y >= (3'd7 - spr_x));
                endcase
            end else begin 
                // 3. 몸통 스프라이트 (가운데 교차 무늬를 파낸 비늘 질감 디자인)
                if ((spr_y >= 3'd2 && spr_y <= 3'd5) && (spr_x >= 3'd2 && spr_x <= 3'd5)) begin
                    spr_pixel = (spr_y == spr_x || spr_y == (3'd7 - spr_x)) ? 1'b1 : 1'b0;
                end else spr_pixel = 1'b1;
            end
        end
    end

    // 데이터 병합 출력 제어
    always @(*) begin
        if (!pixel_valid)   pixel_out = 1'b0;
        else if (game_over) pixel_out = scan_x ^ scan_y; // 게임 오버 시 지지직거리는 체커보드 스크린 연출
        else if (is_wall)   pixel_out = 1'b1;
        else                pixel_out = spr_pixel;
    end

endmodule
