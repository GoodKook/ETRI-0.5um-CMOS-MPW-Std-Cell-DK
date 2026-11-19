module fir8 (
    input wire clk,          // 시스템 클록
    input wire rst_n,        // 비동기 액티브 로우 리셋
    input wire in_valid,     // 입력 데이터 유효 신호 (최소 8사이클 간격 필요)
    input wire [7:0] x,      // 8비트 입력 데이터
    output reg out_valid,    // 출력 데이터 유효 신호
    output reg [7:0] y       // 8비트 최적화 출력 데이터
);

    // --- [내부 동기식 RAM 및 주소 포인터 선언] ---
    reg [7:0] data_ram [0:7];
    reg [2:0] wr_ptr; 
    integer i;

    // --- [시퀀스 제어 카운터 및 제어 플래그] ---
    reg [2:0] cnt;
    reg       busy;
    reg [2:0] last_wr_ptr; // 방금 데이터가 써진 RAM의 절대 주소를 기억하는 레지스터

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt         <= 3'd0;
            busy        <= 1'b0;
            wr_ptr      <= 3'd0;
            last_wr_ptr <= 3'd0;
            for (i = 0; i < 8; i = i + 1) begin
                data_ram[i] <= 8'd0;
            end
        end else begin
            if (in_valid) begin
                busy             <= 1'b1;
                cnt              <= 3'd0;
                data_ram[wr_ptr] <= x;             // 동기식 RAM에 현재 위치 쓰기
                last_wr_ptr      <= wr_ptr;        // 방금 쓴 절대 주소를 박제 (최신 데이터 위치)
                wr_ptr           <= wr_ptr + 1'b1; // 다음 쓰기 주소 이동
            end else if (busy) begin
                cnt <= cnt + 1'b1;
                if (cnt == 3'd7) begin
                    busy <= 1'b0;
                end
            end
        end
    end

    // --- [RAM 읽기 주소 생성: 역순 절대 주소 스캔] ---
    // 최신 데이터 주소(last_wr_ptr)에서 시작하여 cnt가 증가함에 따라 과거 데이터 방향(-cnt)으로 스캔합니다.
    // 3비트 unsigned 연산이므로 링 버퍼 범위를 알아서 순환합니다.
    wire [2:0] rd_ptr = last_wr_ptr - cnt;
    reg [7:0]  ram_rd_data;

    always @(posedge clk) begin
        if (in_valid || busy) begin
            ram_rd_data <= data_ram[rd_ptr];
        end
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

    // --- [조합 회로 기반 계수 선택 (MUX) - 타이밍 버그 해결] ---
    // RAM 주소 인가(cnt) 후 1사이클 뒤인 cnt_d1 시점에 데이터가 나오므로,
    // 계수 MUX 역시 cnt_d1을 바라보게 하여 시간축 데이터와 완벽히 일치시킵니다.
    // cnt_d1=0 일 때 최신 데이터(x[n])가 나오므로 COEF_0(4)과 곱해집니다.
    reg [7:0] coef_mux;
    always @(*) begin
        case (cnt_d1)
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

    // --- [Stage 1: 단일 공유 곱셈기] ---
    // busy_d1 사이클 동안 RAM 출력 레지스터(ram_rd_data)와 계수(coef_mux)가 정확히 만나 곱해집니다.
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
            // 곱셈 결과인 prod가 완성되어 도달하는 시점(cnt_d2)을 기준으로 제어합니다.
            if (cnt_d2 == 3'd0) begin
                acc <= 19'd64 + prod; // x[n]*COEF_0 결과가 prod에 안착했을 때 반올림 값(+64)과 함께 초기화
            end else begin
                acc <= acc + prod;    // 나머지 탭 결과 연속 누산
            end
        end
    end

    // --- [Stage 3: 포화 연산 및 최종 출력] ---
    wire [11:0] shifted_sum = acc[18:7];
    // 모든 8개 탭의 누산(cnt_d2 = 7)이 acc에 최종 반영된 바로 다음 클록(cnt_d3 = 0 이 되는 시점)에 출력을 내보냅니다.
    wire        out_valid_pulse = busy_d3 && (cnt_d3 == 3'd0); 

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
