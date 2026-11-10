module fir8 (
    input wire clk,          // 시스템 클록
    input wire rst_n,        // 비동기 액티브 로우 리셋
    input wire in_valid,     // 입력 데이터 유효 신호 (최소 8사이클 간격 필요)
    input wire [7:0] x,      // 8비트 입력 데이터
    output reg out_valid,    // 출력 데이터 유효 신호
    output reg [7:0] y       // 8비트 최적화 출력 데이터
);

    // --- [내부 RAM 정의] ---
    reg [7:0] data_ram [0:7];
    reg [2:0] wr_ptr; 

    // --- [시퀀스 제어 카운터 및 제어 플래그] ---
    reg [2:0] cnt;
    reg       busy;
    reg [2:0] start_ptr; // 연산 시작 시점의 wr_ptr를 저장하는 레지스터

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt       <= 3'd0;
            busy      <= 1'b0;
            wr_ptr    <= 3'd0;
            start_ptr <= 3'd0;
        end else begin
            if (in_valid) begin
                busy      <= 1'b1;
                cnt       <= 3'd0;
                start_ptr <= wr_ptr;   // 방금 데이터가 저장된 위치를 캡처
                wr_ptr    <= wr_ptr + 1'b1; // 다음 데이터를 위해 포인터 미리 증가
            end else if (busy) begin
                cnt <= cnt + 1'b1;
                if (cnt == 3'd7) begin
                    busy <= 1'b0;
                end
            end
        end
    end

    // --- [RAM 쓰기 로직] ---
    always @(posedge clk) begin
        if (in_valid) begin
            data_ram[wr_ptr] <= x;
        end
    end

    // --- [RAM 읽기 주소 생성] ---
    // cnt가 0일 때 가장 오래된 데이터(start_ptr + 1)를 읽고,
    // cnt가 7일 때 가장 최신 데이터(start_ptr)를 순서대로 읽습니다.
    wire [2:0] rd_ptr = start_ptr + 3'd1 + cnt;
    reg [7:0]  ram_rd_data;

    always @(posedge clk) begin
        if (in_valid || busy) begin
            ram_rd_data <= data_ram[rd_ptr];
        end
    end

    // --- [파이프라인 제어 신호 시프트] ---
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

    // --- [ROM 계수 파이프라인 매핑] ---
    // cnt=0일 때 가장 오래된 데이터를 읽으므로 COEF_7(4)과 곱해져야 하고,
    // cnt=7일 때 가장 최신 데이터를 읽으므로 COEF_0(4)과 곱해집니다.
    reg [7:0] coef_mux;
    always @(*) begin
        case (cnt_d1)
            3'd0: coef_mux = 8'd4;   // x[n-7] * COEF_7
            3'd1: coef_mux = 8'd12;  // x[n-6] * COEF_6
            3'd2: coef_mux = 8'd25;  // x[n-5] * COEF_5
            3'd3: coef_mux = 8'd34;  // x[n-4] * COEF_4
            3'd4: coef_mux = 8'd34;  // x[n-3] * COEF_3
            3'd5: coef_mux = 8'd25;  // x[n-2] * COEF_2
            3'd6: coef_mux = 8'd12;  // x[n-1] * COEF_1
            3'd7: coef_mux = 8'd4;   // x[n]   * COEF_0
            default: coef_mux = 8'd0;
        endcase
    end

    // --- [Stage 1: 공유 곱셈기] ---
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
                acc <= 19'd64 + prod; // 반올림 값(+64) 초기화 후 첫 번째 결과 누적
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

