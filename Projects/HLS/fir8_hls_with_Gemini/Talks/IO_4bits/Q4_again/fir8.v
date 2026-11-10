module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 입력 데이터 상위 4비트 유효 신호 (1클록 펄스)
    input  wire [3:0]  x,          // 4비트 분할 입력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [3:0]  y           // 4비트 분할 출력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
);

    // --- 1. 4비트 입력 인터페이스 및 8비트 조립 ---
    reg [7:0] x_assembled;
    reg       in_phase;
    reg       in_ready; // 8비트 데이터가 완전히 조립되었음을 알리는 내부 신호

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            x_assembled <= 8'd0;
            in_phase    <= 1'b0;
            in_ready    <= 1'b0;
        end else begin
            if (in_valid) begin
                x_assembled[7:4] <= x;        // 1클록째: 상위 4비트 래치
                in_phase         <= 1'b1;
                in_ready         <= 1'b0;
            end else if (in_phase) begin
                x_assembled[3:0] <= x;        // 2클록째: 하위 4비트 래치 완료
                in_phase         <= 1'b0;
                in_ready         <= 1'b1;     // 조립 완료 펄스 발생
            end else begin
                in_ready         <= 1'b0;
            end
        end
    end

    // --- 2. 8비트 기반 시프트 레지스터 (연산 독립성 확보) ---
    reg [7:0] shift_reg [0:7];
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) begin
                shift_reg[i] <= 8'd0;
            end
        end else if (in_ready) begin
            shift_reg[0] <= x_assembled;
            for (i = 1; i < 8; i = i + 1) begin
                shift_reg[i] <= shift_reg[i-1];
            end
        end
    end

    // --- 3. 연산 제어 스퀀서 카운터 ---
    reg [3:0] calc_cnt;
    reg       calc_running;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_cnt     <= 4'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_ready) begin
                calc_cnt     <= 4'd0;
                calc_running <= 1'b1;
            end else if (calc_running) begin
                calc_cnt <= calc_cnt + 4'd1;
                if (calc_cnt == 4'd10) begin // 정확히 11클록 연산 후 종료
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 4. 고속 하드웨어 가산/시프트 트리 (원본 연산 정밀도 유지) ---
    reg [18:0] acc_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_reg <= 19'd64;
        end else begin
            if (in_ready) begin
                acc_reg <= 19'd64; // 반올림 보정 기본값 초기화
            end else if (calc_running) begin
                case (calc_cnt)
                    4'd0: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[2]} << 0)   // h2 비트 성분 가산
                                             + ({{11{1'b0}}, shift_reg[5]} << 0);  
                    
                    4'd1: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[3]} << 1)   // h3 비트 성분 가산
                                             + ({{11{1'b0}}, shift_reg[4]} << 1);  
                    
                    4'd2: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[0]} << 2)   // h0, h1, h6, h7 성분
                                             + ({{11{1'b0}}, shift_reg[1]} << 2)   
                                             + ({{11{1'b0}}, shift_reg[6]} << 2)   
                                             + ({{11{1'b0}}, shift_reg[7]} << 2);  
                    
                    4'd3: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[1]} << 3)   
                                             + ({{11{1'b0}}, shift_reg[2]} << 3)   
                                             + ({{11{1'b0}}, shift_reg[5]} << 3)   
                                             + ({{11{1'b0}}, shift_reg[6]} << 3);  
                    
                    4'd4: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[2]} << 4)   
                                             + ({{11{1'b0}}, shift_reg[5]} << 4);  
                    
                    4'd5: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[3]} << 5)   
                                             + ({{11{1'b0}}, shift_reg[4]} << 5);  
                    
                    default: acc_reg <= acc_reg;
                endcase
            end
        end
    end

    // --- 5. 최종 포화 연산 및 4비트 분할 출력 인터페이스 ---
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
            
            // 11클록째 연산이 끝나는 타이밍 포착 (상위 4비트 즉시 출력)
            if (calc_running_d1 && !calc_running) begin
                out_valid <= 1'b1;
                out_phase <= 1'b1; // 다음 클록에 하위 4비트 출력 예약
                
                // 8비트 포화 연산 및 스케일링 적용
                if (acc_reg[18:7] > 12'd255) begin
                    y           <= 4'hF;     // 상위 4비트
                    y_saturated <= 8'hFF;
                end else begin
                    y           <= acc_reg[14:11]; // 상위 4비트
                    y_saturated <= acc_reg[14:7];
                end
            end else if (out_phase) begin
                // 연속된 다음 클록: 하위 4비트 출력
                out_valid <= 1'b0;
                out_phase <= 1'b0;
                y         <= y_saturated[3:0]; // 하위 4비트
            end else begin
                out_valid <= 1'b0;
                y         <= 4'd0;
            end
        end
    end

endmodule
