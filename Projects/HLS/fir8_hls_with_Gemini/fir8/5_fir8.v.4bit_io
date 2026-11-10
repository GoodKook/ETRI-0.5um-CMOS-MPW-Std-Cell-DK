module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 입력 데이터 상위 4비트 유효 신호 (1클록 펄스)
    input  wire [3:0]  x,          // 4비트 분할 입력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [3:0]  y           // 4비트 분할 출력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
);

    // --- 1. 4비트 입력 인터페이스 및 8비트 합성 ---
    reg [7:0] x_assembled;
    reg       in_phase;
    reg       in_ready;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            x_assembled <= 8'd0;
            in_phase    <= 1'b0;
            in_ready    <= 1'b0;
        end else begin
            if (in_valid) begin
                x_assembled[7:4] <= x;
                in_phase         <= 1'b1;
                in_ready         <= 1'b0;
            end else if (in_phase) begin
                x_assembled[3:0] <= x;
                in_phase         <= 1'b0;
                in_ready         <= 1'b1; // 8비트 조립 완료 (2클록 소요)
            end else begin
                in_ready         <= 1'b0;
            end
        end
    end

    // --- 2. 8비트 기반 시프트 레지스터 ---
    reg [7:0] shift_reg [0:7];
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) shift_reg[i] <= 8'd0;
        end else if (in_ready) begin
            shift_reg[0] <= x_assembled;
            for (i = 1; i < 8; i = i + 1) shift_reg[i] <= shift_reg[i-1];
        end
    end

    // --- 3. 초소형 시퀀서 카운터 (8클록 제어) ---
    reg [2:0] calc_cnt;
    reg       calc_running;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_cnt     <= 3'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_ready) begin
                calc_cnt     <= 3'd0;
                calc_running <= 1'b1;
            end else if (calc_running) begin
                calc_cnt <= calc_cnt + 3'd1;
                if (calc_cnt == 3'd7) begin // 8개 탭 순회 완료 후 종료
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 4. 시간 분할 다중화(TDM) 기반 단일 MAC 데이터패스 ---
    // 대형 가산 트리 대신 멀티플렉서 1개와 곱셈기 1개, 가산기 1개만 사용하여 면적 최적화
    reg [7:0] current_coef;
    wire [7:0] current_data = shift_reg[calc_cnt];

    always @(*) begin
        case (calc_cnt)
            3'd0: current_coef = 8'd4;
            3'd1: current_coef = 8'd12;
            3'd2: current_coef = 8'd25;
            3'd3: current_coef = 8'd34;
            3'd4: current_coef = 8'd34;
            3'd5: current_coef = 8'd25;
            3'd6: current_coef = 8'd12;
            3'd7: current_coef = 8'd4;
            default: current_coef = 8'd0;
        endcase
    end

    // 8비트 × 8비트 곱셈 = 16비트 결과 생성
    wire [15:0] mult_out = current_data * current_coef;
    
    // 누산기 비트 폭을 19비트에서 12비트(포화 및 스케일링 반영 크기) 수준으로 최소화
    reg [15:0] acc_reg; 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_reg <= 16'd0;
        end else begin
            if (in_ready) begin
                acc_reg <= 16'd64; // 반올림 보정 기본값 초기화
            end else if (calc_running) begin
                acc_reg <= acc_reg + mult_out; // 매 클록 1개 탭씩 누산
            end
        end
    end

    // --- 5. 최종 포화 연산 및 4비트 분할 출력 ---
    reg       calc_running_d1;
    reg [7:0] y_saturated;
    reg       out_phase;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_running_d1 <= 1'b0;
            out_valid       <= 1'b0;
            y               <= 4'd0;
            y_saturated     <= 8'd0;
            out_phase       <= 1'b0;
        end else begin
            calc_running_d1 <= calc_running;
            
            // 8클록의 연산이 정확히 끝나는 타이밍 포착 (상위 4비트 즉시 출력)
            if (calc_running_d1 && !calc_running) begin
                out_valid <= 1'b1;
                out_phase <= 1'b1; // 다음 클록에 하위 4비트 출력 예약
                
                // 7비트 우측 시프트(>>7) 및 상한 포화 연산
                if (acc_reg[15:7] > 9'd255) begin
                    y           <= 4'hF;
                    y_saturated <= 8'hFF;
                end else begin
                    y           <= acc_reg[14:11]; // 상위 4비트 출력
                    y_saturated <= acc_reg[14:7];
                end
            end else if (out_phase) begin
                // 연속된 다음 클록: 하위 4비트 출력 완료
                out_valid <= 1'b0;
                out_phase <= 1'b0;
                y         <= y_saturated[3:0]; // 하위 4비트 출력
            end else begin
                out_valid <= 1'b0;
                y         <= 4'd0;
            end
        end
    end

endmodule
