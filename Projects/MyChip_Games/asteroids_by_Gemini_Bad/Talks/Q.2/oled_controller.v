module oled_controller (
    input wire clk,          // 시스템 클럭 (예: 50MHz)
    input wire rst_n,        // 리셋
    
    // 게임 로직 인터페이스 (프레임 버퍼 쓰기)
    input wire write_en,
    input wire [6:0] write_x, // 0 ~ 127
    input wire [5:0] write_y, // 0 ~ 63
    input wire write_data,
    
    // OLED 하드웨어 인터페이스 (4-wire SPI 방식)
    output reg oled_sclk,
    output reg oled_sdin,
    output reg oled_dc,      // Data/Command 제어 (0: 명령, 1: 데이터)
    output reg oled_res      // 하드웨어 리셋
);

    // 1. 128x64 단색 프레임 버퍼 (Dual-port RAM 구성)
    // SSD1306은 세로 8픽셀을 1바이트(Page)로 묶어 처리하므로 배열을 [7:0] memory[1023:0]로 구성하면 편리합니다.
    reg [7:0] frame_buffer [0:1023];
    wire [9:0] write_addr = {write_y[5:3], write_x}; // Page(3bit) + X(7bit)
    wire [2:0] bit_pos    = write_y[2:0];

    always @(posedge clk) begin
        if (write_en) begin
            if (write_data)
                frame_buffer[write_addr][bit_pos] <= 1'b1;
            else
                frame_buffer[write_addr][bit_pos] <= 1'b0;
        end
    end

    // 2. SPI 클럭 분주 (SSD1306 SPI는 보통 수 MHz 대역에서 안정적)
    reg [3:0] clk_div;
    wire spi_tick = (clk_div == 4'd12); // 약 2MHz SPI 클럭 생성
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) clk_div <= 0;
        else clk_div <= (spi_tick) ? 4'd0 : clk_div + 1'b1;
    end

    // 3. OLED 초기화 및 전송 상태 머신 (FSM)
    localparam STATE_INIT      = 3'd0;
    localparam STATE_SET_PAGE  = 3'd1;
    localparam STATE_SET_COL   = 3'd2;
    localparam STATE_SEND_DATA = 3'd3;
    localparam STATE_DELAY     = 3'd4;

    reg [2:0] state;
    reg [9:0] read_addr;    // 0 ~ 1023 버퍼 읽기 주소
    reg [7:0] shift_reg;    // SPI 출력용 쉬프트 레지스터
    reg [3:0] bit_cnt;      // 8비트 카운터
    reg [15:0] delay_cnt;

    // OLED 초기화 명령 배열 (일부 필수 명령만 요약)
    reg [7:0] init_cmds [0:4];
    initial begin
        init_cmds[0] = 8'hAE; // 디스플레이 꺼짐
        init_cmds[1] = 8'h20; // 주소 지정 모드 설정
        init_cmds[2] = 8'h02; // Page Addressing Mode
        init_cmds[3] = 8'h8D; // 차지 펌프 설정
        init_cmds[4] = 8'h14; // 차지 펌프 켜기
    end

    reg [2:0] init_idx;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= STATE_INIT;
            oled_res <= 1'b0;
            oled_sclk <= 1'b1;
            oled_dc <= 1'b0;
            init_idx <= 0;
            read_addr <= 0;
            bit_cnt <= 0;
            delay_cnt <= 0;
        end else if (spi_tick) begin
            oled_res <= 1'b1; // 리셋 해제

            case (state)
                STATE_INIT: begin
                    oled_dc <= 1'b0; // 명령 모드
                    if (bit_cnt == 0) begin
                        shift_reg <= init_cmds[init_idx];
                        bit_cnt <= 4'd8;
                    end else begin
                        // 1비트씩 SPI 전송
                        oled_sclk <= ~oled_sclk;
                        if (!oled_sclk) begin
                            oled_sdin <= shift_reg[7];
                            shift_reg <= {shift_reg[6:0], 1'b0};
                            bit_cnt <= bit_cnt - 1'b1;
                            if (bit_cnt == 1) begin
                                init_idx <= init_idx + 1'b1;
                                if (init_idx == 4) state <= STATE_SET_PAGE;
                            end
                        end
                    end
                end

                STATE_SET_PAGE: begin
                    oled_dc <= 1'b0;
                    // SSD1306 Page 주소 설정 명령 (0xB0 ~ 0xB7)
                    if (bit_cnt == 0) begin
                        shift_reg <= 8'hB0 + read_addr[9:7]; // 현재 주소의 Page 계산
                        bit_cnt <= 4'd8;
                    end else begin
                        oled_sclk <= ~oled_sclk;
                        if (!oled_sclk) begin
                            oled_sdin <= shift_reg[7];
                            shift_reg <= {shift_reg[6:0], 1'b0};
                            bit_cnt <= bit_cnt - 1'b1;
                            if (bit_cnt == 1) state <= STATE_SET_COL;
                        end
                    end
                end

                STATE_SET_COL: begin
                    oled_dc <= 1'b0;
                    // 컬럼 하위/상위 주소 초기화 (0x00, 0x10 -> Column 0 설정)
                    // (간소화를 위해 내부 로직 생략, 컬럼 초기화 후 STATE_SEND_DATA로 이동)
                    state <= STATE_SEND_DATA;
                end

                STATE_SEND_DATA: begin
                    oled_dc <= 1'b1; // 데이터 모드 (픽셀 켜기)
                    if (bit_cnt == 0) begin
                        shift_reg <= frame_buffer[read_addr];
                        bit_cnt <= 4'd8;
                    end else begin
                        oled_sclk <= ~oled_sclk;
                        if (!oled_sclk) begin
                            oled_sdin <= shift_reg[7];
                            shift_reg <= {shift_reg[6:0], 1'b0};
                            bit_cnt <= bit_cnt - 1'b1;
                            if (bit_cnt == 1) begin
                                read_addr <= read_addr + 1'b1;
                                // 한 페이지(128바이트) 전송 완료 시 다시 주소 설정
                                if (read_addr[6:0] == 7'd127) state <= STATE_SET_PAGE;
                                // 1024바이트 전체 전송 완료 시 처음부터 다시 화면 갱신
                                if (read_addr == 1023) read_addr <= 0;
                            end
                        end
                    end
                end
            endcase
        end
    end
endmodule
