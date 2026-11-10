module fir8 (
    input wire clk,          // 시스템 클록
    input wire rst_n,        // 비동기 액티브 로우 리셋
    input wire in_valid,     // 입력 데이터 유효 신호 (최소 8사이클 간격 필요)
    input wire [7:0] x,      // 8비트 입력 데이터
    output reg out_valid,    // 출력 데이터 유효 신호
    output reg [7:0] y       // 8비트 최적화 출력 데이터
);

    // --- [내부 RAM 정의 및 Shift 레지스터 최적화] ---
    reg [7:0] data_ram [0:7];
    integer i;

    // --- [시퀀스 제어 카운터 및 제어 플래그] ---
    reg [2:0] cnt;
    reg       busy;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt  <= 3'd0;
            busy <= 1'b0;
            for (i = 0; i < 8; i = i + 1) begin
                data_ram[i] <= 8'd0;
            end
        end else begin
            if (in_valid) begin
                busy <= 1'b1;
                cnt  <= 3'd0;
                // 새 데이터 입력 시 기존 데이터를 한 칸씩 시프트 (최소 면적 SRL 매핑 유도)
                data_ram[0] <= x;
                data_ram[1] <= data_ram[0];
                data_ram[2] <= data_ram[1];
                data_ram[3] <= data_ram[2];
                data_ram[4] <= data_ram[3];
                data_ram[5] <= data_ram[4];
                data_ram[6] <= data_ram[5];
                data_ram[7] <= data_ram[6];
            end else if (busy) begin
                cnt <= cnt + 1'b1;
                if (cnt == 3'd7) begin
                    busy <= 1'b0;
                end
            end
        end
    end

    // --- [RAM 읽기 주소 생성 (Read Latency = 1 클록)] ---
    reg [7:0] ram_rd_data;
    always @(posedge clk) begin
        if (in_valid || busy) begin
            ram_rd_data <= data_ram[cnt];
        end
    end

    // --- [조합 회로 기반 계수 선택 (MUX)] ---
    // RAM 주소 인가 타이밍(cnt)과 완벽하게 발을 맞추는 순수 조합 회로 MUX입니다.
    // cnt가 바뀔 때 계수도 실시간으로 함께 변하므로 RAM에서 나오는 데이터와 클록 타이밍이 일치하게 됩니다.
    reg [7:0] coef_mux;
    always @(*) begin
        case (cnt)
            3'd0: coef_mux = 8'd4;   // x[n]   * COEF_0
            3'd1: coef_mux = 8'd12;  // x[n-1] * COEF_1
            3'd2: coef_mux = 8'd25;  // x[n-2] * COEF_2
            3'd3: coef_mux = 8'd34;  // x[n-3] * COEF_3
            3'd4: coef_mux = 8'd34;  // x[n-4] * COEF_4
            3'd5: coef_mux = 8'd25;  // x[n-5] * COEF_5
            3'd6: coef_mux = 8'd12;  // x[n-6] * COEF_6
            3'd7: coef_mux = 8'd4;   // x[n-7] * COEF_7
            default: coef_mux = 8'd0;
        endcase
    end

    // --- [파이프라인 제어 신호 시프트] ---
    reg       busy_d1, busy_d2;
    reg [2:0] cnt_d1,  cnt_d2;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            busy_d1 <= 1'b0;
            busy_d2 <= 1'b0;
            cnt_d1  <= 3'd0;
            cnt_d2  <= 3'd0;
        end else begin
            busy_d1 <= in_valid || busy;
            busy_d2 <= busy_d1;
            cnt_d1  <= cnt;
            cnt_d2  <= cnt_d1;
        end
    end

    // --- [Stage 1: 공유 곱셈기] ---
    // 클록 엣지에서 ram_rd_data(RAM 출력 레지스터 값)와 coef_mux(실시간 조합 회로 값)가 
    // 완벽히 정렬되어 prod 레지스터로 정확한 연산 결과가 래치(Latch)됩니다.
    reg [15:0] prod;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            prod <= 16'd0;
        end else if (busy_d1) begin
            prod <= ram_rd_data * coef_mux;
        end
    end

    // --- [Stage 2: 시리얼 누산기 (Accumulator)] ---
    reg [18:0] acc;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc <= 19'd0;
        end else if (busy_d2) begin
            if (cnt_d2 == 3'd0) begin
                acc <= 19'd64 + prod; // 반올림 값(+64) 초기화 후 첫 번째 곱셈 탭 결과(x[n]*4) 적재
            end else begin
                acc <= acc + prod;    // 나머지 탭 연속 누산
            end
        end
    end

    // --- [Stage 3: 포화 연산 및 최종 출력] ---
    wire [11:0] shifted_sum = acc[18:7];
    wire        out_valid_pulse = busy_d2 && (cnt_d2 == 3'd7); 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y         <= 8'd0;
            out_valid <= 1'b0;
        end else begin
            out_valid <= out_valid_pulse;
            if (out_valid_pulse) begin
                if (shifted_sum > 12'd255) begin
                    y <= 8'hFF;
                end else begin
                    y <= shifted_sum[7:0];
                end
            end
        end
    end

endmodule
