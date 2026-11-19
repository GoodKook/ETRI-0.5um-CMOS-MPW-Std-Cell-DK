module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 새로운 입력 데이터 x 유효 신호 (1클록 펄스)
    input  wire [7:0]  x,          // 8비트 입력 데이터
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [7:0]  y           // 8비트 최적화 출력 데이터
);

    // --- 1. 원형 버퍼(Circular Buffer)용 포인터 및 제어 로직 ---
    // 거대한 시프트 레지스터 대신, 주소 포인터 변경만으로 데이터를 관리하여 면적 극대화 축소
    reg [2:0] wr_ptr;          // RAM 쓰기 포인터 (가장 오래된 데이터 위치)
    reg [2:0] rd_ptr;          // RAM 읽기 포인터
    reg [2:0] calc_cnt;        // 0~7 연산 카운터
    reg       calc_running;    // 필터 연산 상태 플래그

    // --- 2. 초소형 분산 RAM (8 x 8-bit = 총 64비트 분량) ---
    // FPGA 합성 툴이 플립플롭이 아닌 LUT RAM(Distributed RAM)으로 매핑하여 로직 면적을 거의 소모하지 않음
    reg [7:0] data_ram [0:7];
    reg [7:0] ram_rd_data;

    // RAM 쓰기 및 포화 제어 FSM
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_ptr       <= 3'd0;
            rd_ptr       <= 3'd0;
            calc_cnt     <= 3'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_valid) begin
                data_ram[wr_ptr] <= x;          // 가장 오래된 데이터 자리에 새 데이터 덮어쓰기
                rd_ptr           <= wr_ptr;     // 최신 데이터 주소부터 읽기 시작
                wr_ptr           <= wr_ptr + 3'd1; // 다음 데이터가 저장될 위치 (원형 회전)
                calc_cnt         <= 3'd0;
                calc_running     <= 1'b1;
            end else if (calc_running) begin
                rd_ptr   <= rd_ptr - 3'd1;      // 원형 버퍼를 역순으로 읽어 내려감
                calc_cnt <= calc_cnt + 3'd1;
                if (calc_cnt == 3'd7) begin
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // RAM 읽기 데이터 동기화
    always @(posedge clk) begin
        ram_rd_data <= data_ram[rd_ptr];
    end

    // --- 3. ROM이 필요 없는 순차 계수 발생기 (Mux 면적 최소화) ---
    // 거대한 8:1 조합회로 Mux 대신 카운터 기반으로 순차 매핑하여 게이트 수 절감
    reg [7:0] current_coef;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            current_coef <= 8'd0;
        end else if (in_valid || calc_running) begin
            case (calc_cnt)
                3'd0: current_coef <= 8'd4;
                3'd1: current_coef <= 8'd12;
                3'd2: current_coef <= 8'd25;
                3'd3: current_coef <= 8'd34;
                3'd4: current_coef <= 8'd34;
                3'd5: current_coef <= 8'd25;
                3'd6: current_coef <= 8'd12;
                3'd7: current_coef <= 8'd4;
            endcase
        end
    end

    // --- 4. 단일 MAC (Multiplier-Accumulator) 연산 단 ---
    // 공유 곱셈기 1개 유지
    reg [15:0] prod_reg;
    reg [18:0] acc_reg;
    reg [2:0]  calc_cnt_d1;
    reg        calc_running_d1;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_cnt_d1     <= 3'd0;
            calc_running_d1 <= 1'b0;
            prod_reg        <= 16'd0;
            acc_reg         <= 19'd0;
        end else begin
            calc_cnt_d1     <= calc_cnt;
            calc_running_d1 <= calc_running;

            if (calc_running_d1) begin
                prod_reg <= ram_rd_data * current_coef; // 단일 8x8 곱셈기 공유

                if (calc_cnt_d1 == 3'd1) begin
                    acc_reg <= 19'd64 + prod_reg; // 반올림 기본값(64) 세팅 및 첫 누적
                end else begin
                    acc_reg <= acc_reg + prod_reg;
                end
            end
        end
    end

    // --- 5. 최종 시프트 출력 단 (포화 연산 안전장치 포함) ---
    reg calc_running_d2;
    reg [2:0] calc_cnt_d2;

    always @(posedge clk) begin
        calc_running_d2 <= calc_running_d1;
        calc_cnt_d2     <= calc_cnt_d1;
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y         <= 8'd0;
            out_valid <= 1'b0;
        end else begin
            // 모든 파이프라인 연산이 끝나고 RAM 연산이 반영 완료되는 시점 (10클록 레이턴시)
            if (calc_cnt_d2 == 3'd0 && !calc_running_d2 && out_valid == 1'b0) begin
                out_valid <= 1'b1;
                // 정밀도 향상을 위한 7비트 우측 시프트(>>7) 및 포화 연산(Saturation)
                if (acc_reg[18:7] > 12'd255) begin
                    y <= 8'hFF;
                end else begin
                    y <= acc_reg[14:7];
                end
            end else begin
                out_valid <= 1'b0;
            end
        end
    end

endmodule
