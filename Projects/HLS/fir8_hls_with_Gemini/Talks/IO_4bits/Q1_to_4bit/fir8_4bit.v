module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 새로운 입력 데이터의 상위 4비트 유효 신호 (1클록 펄스)
    input  wire [3:0]  x,          // 4비트 분할 입력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
    output reg         out_valid,  // 출력 데이터 y 유효 신호 (상위 4비트 출력 시 1클록 펄스)
    output reg  [3:0]  y           // 4비트 분할 출력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
);

    // --- 0. 4비트 입력 -> 8비트 데이터 합성 로직 ---
    reg [7:0] x_reg;
    reg       in_phase; // 0: 상위 4비트 수신 대기, 1: 하위 4비트 수신 대기
    reg       in_valid_d1;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            x_reg       <= 8'd0;
            in_phase    <= 1'b0;
            in_valid_d1 <= 1'b0;
        end else begin
            in_valid_d1 <= in_valid;
            if (in_valid) begin
                x_reg[7:4] <= x;        // 첫 번째 클록: 상위 4비트 저장
                in_phase   <= 1'b1;
            end else if (in_phase) begin
                x_reg[3:0] <= x;        // 두 번째 클록: 하위 4비트 저장 완료
                in_phase   <= 1'b0;
            end
        end
    end

    // --- 1. 단순 플립플롭(FF) 기반 시프트 레지스터 ---
    // 8비트 입력이 완전히 조립된 시점(in_valid_d1)에 시프트 레지스터 갱신
    reg [7:0] shift_reg [0:7];
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) begin
                shift_reg[i] <= 8'd0;
            end
        end else if (in_valid_d1) begin
            shift_reg[0] <= x_reg;
            shift_reg[1] <= shift_reg[0];
            shift_reg[2] <= shift_reg[1];
            shift_reg[3] <= shift_reg[2];
            shift_reg[4] <= shift_reg[3];
            shift_reg[5] <= shift_reg[4];
            shift_reg[6] <= shift_reg[5];
            shift_reg[7] <= shift_reg[6];
        end
    end

    // --- 2. 카운터 및 제어 로직 ---
    // 입력 조립 완료(in_valid_d1) 후 연산 시작
    reg [3:0] calc_cnt;
    reg       calc_running;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_cnt     <= 4'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_valid_d1) begin
                calc_cnt     <= 4'd0;
                calc_running <= 1'b1;
            end else if (calc_running) begin
                calc_cnt <= calc_cnt + 4'd1;
                if (calc_cnt == 4'd10) begin // 총 11클록 연산 완료 후 종료
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 3. 하드웨어 가산/시프트 덧셈 트리 ---
    reg [18:0] acc_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_reg <= 19'd64;
        end else begin
            if (in_valid_d1) begin
                acc_reg <= 19'd64; // 반올림 기본값(+64) 초기화
            end else if (calc_running) begin
                case (calc_cnt)
                    4'd0: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[2]} << 0)
                                             + ({{11{1'b0}}, shift_reg[5]} << 0);
                    
                    4'd1: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[3]} << 1)
                                             + ({{11{1'b0}}, shift_reg[4]} << 1);
                    
                    4'd2: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[0]} << 2)
                                             + ({{11{1'b0}}, shift_reg[1]} << 2)
                                             + ({{11{1'b0}}, shift_reg[6]} << 2)
                                             + ({{11{1'b0}}, shift_reg[7]} << 2);
                    
                    3'd3: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[1]} << 3)
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

    // --- 4. 최종 포화 연산 및 4비트 2회 분할 출력 로직 ---
    reg       calc_running_d1;
    reg [7:0] y_full;
    reg       out_phase;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_running_d1 <= 1'b0;
            out_valid       <= 1'b0;
            y               <= 4'd0;
            y_full          <= 8'd0;
            out_phase       <= 1'b0;
        end else begin
            calc_running_d1 <= calc_running;
            
            // 연산 완료 시점 포착 (8비트 최종 결과물 생성 및 상위 4비트 즉시 출력)
            if (calc_running_d1 && !calc_running) begin
                out_valid <= 1'b1;
                out_phase <= 1'b1; // 다음 클록에 하위 4비트 출력 지시
                
                // 포화 연산 및 8비트 결과 임시 저장
                if (acc_reg[18:7] > 12'd255) begin
                    y      <= 4'hF;     // 상위 4비트 분할 출력
                    y_full <= 8'hFF;
                end else begin
                    y      <= acc_reg[14:11]; // 상위 4비트 분할 출력
                    y_full <= acc_reg[14:7];
                end
            end else if (out_phase) begin
                // 연속된 두 번째 클록: 하위 4비트 출력
                out_valid <= 1'b0;
                out_phase <= 1'b0;
                y         <= y_full[3:0];
            end else begin
                out_valid <= 1'b0;
                y         <= 4'd0;
            end
        end
    end

endmodule

