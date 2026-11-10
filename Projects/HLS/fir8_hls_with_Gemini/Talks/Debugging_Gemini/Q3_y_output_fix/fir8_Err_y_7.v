verilog
module fir8 (
    input wire clk,          // 시스템 클록
    input wire rst_n,        // 비동기 액티브 로우 리셋
    input wire in_valid,     // 입력 데이터 유효 신호 (최소 8사이클 간격 필요)
    input wire [7:0] x,      // 8비트 입력 데이터
    output reg out_valid,    // 출력 데이터 유효 신호
    output reg [7:0] y       // 8비트 최적화 출력 데이터
);

    // --- [내부 RAM 정의 및 SRL 최적화 구조] ---
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
                // 새 데이터 유입 시 기존 데이터를 한 칸씩 밀어 저장 (SRL 아키텍처 유도)
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

    // --- [RAM 읽기 데이터 출력 (Read Latency = 1 클록)] ---
    // 주소 인가(cnt) 후 다음 클록에 ram_rd_data 레지스터로 데이터가 출력됩니다.
    reg [7:0] ram_rd_data;
    always @(posedge clk) begin
        if (in_valid || busy) begin
            ram_rd_data <= data_ram[cnt];
        end
    end

    // --- [조합 회로 기반 계수 선택 (MUX)] ---
    // 현재 읽고 있는 RAM 주소(cnt)와 정확히 1:1 동기화되는 조합 회로입니다.
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

    // --- [파이프라인 제어 신호 지연] ---
    reg       busy_d1, busy_d2;
    reg [2:0] cnt_d1,  cnt_d2;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            busy_d1 <= 1'b0; busy_d2 <= 1'b0;
            cnt_d1  <= 3'd0; cnt_d2  <= 3'd0;
        end else begin
            busy_d1 <= in_valid || busy;
            busy_d2 <= busy_d1;
            cnt_d1  <= cnt;
            cnt_d2  <= cnt_d1;
        end
    end

    // --- [Stage 1: 공유 곱셈기] ---
    // ram_rd_data와 coef_mux가 곱해져 다음 클록에 prod 레지스터에 저장됩니다.
    reg [15:0] prod;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            prod <= 16'd0;
        end else if (busy_d1) begin
            prod <= ram_rd_data * coef_mux;
        end
    end

    // --- [Stage 2: 시리얼 누산기 (Accumulator) - 타이밍 완전 수정] ---
    reg [18:0] acc;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc <= 19'd0;
        end else if (busy_d2) begin
            // 곱셈기 결과(prod)가 타겟 데이터 연산 결과를 가리키는 시점(cnt_d2)을 기준으로 제어합니다.
            if (cnt_d2 == 3'd0) begin
                acc <= 19'd64 + prod; // x[n]*4 결과가 prod에 안착했을 때 반올림 값(+64)과 함께 초기화
            end else begin
                acc <= acc + prod;    // 나머지 1~7번 탭 결과 순차 누산
            end
        end
    end

    // --- [Stage 3: 포화 연산 및 최종 출력] ---
    wire [11:0] shifted_sum = acc[18:7];
    // 모든 8개 탭의 누산(cnt_d2 = 7)이 acc에 최종 반영된 다음 클록에 출력을 내보냅니다.
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
