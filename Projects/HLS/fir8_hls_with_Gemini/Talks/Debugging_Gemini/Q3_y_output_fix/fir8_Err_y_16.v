module fir8 (
    input wire clk,          // 시스템 클록
    input wire rst_n,        // 비동기 액티브 로우 리셋
    input wire in_valid,     // 입력 데이터 유효 신호 (최소 8사이클 간격 필요)
    input wire [7:0] x,      // 8비트 입력 데이터
    output reg out_valid,    // 출력 데이터 유효 신호
    output reg [7:0] y       // 8비트 최적화 출력 데이터
);

    // --- [내부 데이터 메모리 (SRL 매핑 유도)] ---
    reg [7:0] data_mem [0:7];
    integer i;

    // --- [시퀀스 제어 카운터 및 제어 플래그] ---
    reg [2:0] cnt;
    reg       busy;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt  <= 3'd0;
            busy <= 1'b0;
            for (i = 0; i < 8; i = i + 1) begin
                data_mem[i] <= 8'd0;
            end
        end else begin
            if (in_valid) begin
                busy <= 1'b1;
                cnt  <= 3'd0;
                // 새 데이터 유입 시 기존 데이터를 한 칸씩 시프트
                data_mem <= x;
                data_mem <= data_mem;
                data_mem <= data_mem;
                data_mem <= data_mem;
                data_mem <= data_mem;
                data_mem <= data_mem;
                data_mem <= data_mem;
                data_mem <= data_mem;
            end else if (busy) begin
                cnt <= cnt + 1'b1;
                if (cnt == 3'd7) begin
                    busy <= 1'b0;
                end
            end
        end
    end

    // --- [조합 회로 기반 데이터 MUX] ---
    reg [7:0] selected_data;
    always @(*) begin
        case (cnt)
            3'd0: selected_data = data_mem; // x[n]
            3'd1: selected_data = data_mem; // x[n-1]
            3'd2: selected_data = data_mem; // x[n-2]
            3'd3: selected_data = data_mem; // x[n-3]
            3'd4: selected_data = data_mem; // x[n-4]
            3'd5: selected_data = data_mem; // x[n-5]
            3'd6: selected_data = data_mem; // x[n-6]
            3'd7: selected_data = data_mem; // x[n-7]
            default: selected_data = 8'd0;
        endcase
    end

    // --- [조합 회로 기반 계수 MUX] ---
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
    reg       busy_d1, busy_d2, busy_d3;
    reg [2:0] cnt_d1,  cnt_d2,  cnt_d3;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            busy_d1 <= 1'b0; busy_d2 <= 1'b0; busy_d3 <= 1'b0;
            cnt_d1  <= 3'd0; cnt_d2  <= 3'd0; cnt_d3  <= 3'd0;
        end else begin
            busy_d1 <= in_valid || busy;
            busy_d2 <= busy_d1;
            busy_d3 <= busy_d2;
            
            cnt_d1  <= cnt;
            cnt_d2  <= cnt_d1;
            cnt_d3  <= cnt_d2;
        end
    end

    // --- [Stage 1: 단일 공유 곱셈기] ---
    reg [15:0] prod;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            prod <= 16'd0;
        end else if (busy_d1) begin
            prod <= selected_data * coef_mux;
        end
    end

    // --- [Stage 2: 시리얼 누산기 (Accumulator)] ---
    reg [18:0] acc;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc <= 19'd0;
        end else if (busy_d2) begin
            if (cnt_d2 == 3'd0) begin
                acc <= 19'd64 + prod; // 첫 번째 연산 결과 적재 및 반올림 초기화
            end else begin
                acc <= acc + prod;    // 순차 누산
            end
        end
    end

    // --- [Stage 3: 포화 연산 및 최종 출력 - out_valid 유실 버그 수정] ---
    wire [11:0] shifted_sum = acc[18:7];
    
    // busy_d2 사이클의 cnt_d2=7 에서 마지막 누산이 이루어지므로,
    // 바로 다음 클록 엣지에서 busy_d3가 켜져있고 cnt_d3가 7인 그 시점이 최종 합산값이 레지스터에 보존된 유효 구간입니다.
    wire        out_valid_pulse = busy_d3 && (cnt_d3 == 3'd7); 

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
