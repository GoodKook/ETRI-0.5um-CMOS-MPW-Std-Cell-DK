module fir8 (
    input wire clk,          // 시스템 클록
    input wire rst_n,        // 비동기 액티브 로우 리셋
    input wire in_valid,     // 입력 데이터 유효 신호 (최소 8사이클 간격 필요)
    input wire [7:0] x,      // 8비트 입력 데이터
    output reg out_valid,    // 출력 데이터 유효 신호
    output reg [7:0] y       // 8비트 최적화 출력 데이터
);

    // --- [시프트 레지스터 입력 데이터 보존] ---
    reg [7:0] shift_reg [0:7];
    integer i;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) begin
                shift_reg[i] <= 8'd0;
            end
        end else if (in_valid) begin
            shift_reg[0] <= x;
            shift_reg[1] <= shift_reg[0];
            shift_reg[2] <= shift_reg[1];
            shift_reg[3] <= shift_reg[2];
            shift_reg[4] <= shift_reg[3];
            shift_reg[5] <= shift_reg[4];
            shift_reg[6] <= shift_reg[5];
            shift_reg[7] <= shift_reg[6];
        end
    end

    // --- [시퀀스 제어 카운터] ---
    reg [2:0] cnt;
    reg       busy; // 현재 직렬 연산이 수행 중임을 나타내는 플래그

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt  <= 3'd0;
            busy <= 1'b0;
        end else begin
            if (in_valid) begin
                busy <= 1'b1;
                cnt  <= 3'd0;
            end else if (busy) begin
                cnt <= cnt + 1'b1;
                if (cnt == 3'd7) begin
                    busy <= 1'b0; // 8번의 연산이 끝나면 종료
                end
            end
        end
    end

    // --- [ROM 인터페이스: 멀티플렉서를 이용한 계수 선택] ---
    reg [7:0] coef_mux;
    always @(*) begin
        case (cnt)
            3'd0: coef_mux = 8'd4;
            3'd1: coef_mux = 8'd12;
            3'd2: coef_mux = 8'd25;
            3'd3: coef_mux = 8'd34;
            3'd4: coef_mux = 8'd34;
            3'd5: coef_mux = 8'd25;
            3'd6: coef_mux = 8'd12;
            3'd7: coef_mux = 8'd4;
            default: coef_mux = 8'd0;
        endcase
    end

    // 데이터 멀티플렉서 선택
    wire [7:0] data_mux = shift_reg[cnt];

    // --- [Stage 1: 공유 곱셈기 (단 1개만 생성)] ---
    reg [15:0] prod;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            prod <= 16'd0;
        end else if (in_valid || busy) begin
            prod <= data_mux * coef_mux;
        end
    end

    // --- [Stage 2: 시리얼 누산기 (Accumulator)] ---
    reg [18:0] acc;
    reg        prod_valid;
    reg [2:0]  cnt_d1;

    // 파이프라인 지연 매핑
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            prod_valid <= 1'b0;
            cnt_d1     <= 3'd0;
        end else begin
            prod_valid <= in_valid || busy;
            cnt_d1     <= cnt;
        end
    end

    // 누산 로직 (첫 번째 연산 시 반올림 초기값인 64부터 시작)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc <= 19'd0;
        end else if (prod_valid) begin
            if (cnt_d1 == 3'd0) begin
                acc <= 19'd64 + prod; // 첫 번째 탭 연산 시 반올림 값(+64)으로 초기화하며 누산 시작
            end else begin
                acc <= acc + prod;    // 이후 탭들은 누적
            end
        end
    end

    // --- [Stage 3: 포화 연산 및 최종 출력] ---
    reg out_valid_next;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out_valid_next <= 1'b0;
        end else begin
            // cnt_d1이 7인 사이클의 다음 클록에 모든 누산이 완료됩니다.
            out_valid_next <= prod_valid && (cnt_d1 == 3'd7);
        end
    end

    wire [11:0] shifted_sum = acc[18:7];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y         <= 8'd0;
            out_valid <= 1'b0;
        end else begin
            out_valid <= out_valid_next;
            if (out_valid_next) begin
                if (shifted_sum > 12'd255) begin
                    y <= 8'hFF;
                end else begin
                    y <= shifted_sum[7:0];
                end
            end
        end
    end

endmodule
