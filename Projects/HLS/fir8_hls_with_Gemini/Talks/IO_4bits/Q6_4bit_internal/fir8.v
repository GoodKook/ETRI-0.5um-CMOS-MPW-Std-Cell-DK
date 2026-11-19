module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 입력 데이터 상위 4비트 유효 신호 (1클록 펄스)
    input  wire [3:0]  x,          // 4비트 분할 입력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [3:0]  y           // 4비트 분할 출력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
);

    // --- 1. 4비트 분할 시프트 레지스터 (8비트 조립 없음) ---
    // 메모리와 면적을 줄이기 위해 입력된 4비트 조각들을 상/하위로 나누어 즉시 시프트합니다.
    reg [3:0] shift_reg_h [0:7];
    reg [3:0] shift_reg_l [0:7];
    reg       in_phase;
    reg       in_ready;
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            in_phase <= 1'b0;
            in_ready <= 1'b0;
            for (i = 0; i < 8; i = i + 1) begin
                shift_reg_h[i] <= 4'd0;
                shift_reg_l[i] <= 4'd0;
            end
        end else begin
            if (in_valid) begin
                in_phase <= 1'b1;
                in_ready <= 1'b0;
                shift_reg_h[0] <= x; // 상위 4비트 시프트
                for (i = 1; i < 8; i = i + 1) shift_reg_h[i] <= shift_reg_h[i-1];
            end else if (in_phase) begin
                in_phase <= 1'b0;
                in_ready <= 1'b1;     // 상/하위 한 쌍 수신 완료 신호
                shift_reg_l[0] <= x; // 하위 4비트 시프트
                for (i = 1; i < 8; i = i + 1) shift_reg_l[i] <= shift_reg_l[i-1];
            end else begin
                in_ready <= 1'b0;
            end
        end
    end

    // --- 2. 4비트 고속 직렬 시퀀서 카운터 (총 16단계) ---
    reg [4:0] calc_cnt;
    reg       calc_running;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_cnt     <= 5'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_ready) begin
                calc_cnt     <= 5'd0;
                calc_running <= 1'b1;
            end else if (calc_running) begin
                calc_cnt <= calc_cnt + 5'd1;
                if (calc_cnt == 5'd15) begin // 8개 탭 × 2단계 분할 연산 완료
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 3. 시간 분할 4비트 복합 멀티플렉서 ---
    // 계수 상수 수치: h0=4, h1=12, h2=25, h3=34, h4=34, h5=25, h6=12, h7=4
    wire [2:0] tap_idx   = calc_cnt[3:1]; // 0~7 탭 선택
    wire       stage_sel = calc_cnt[0];   // 0: 하위 연산 스테이지, 1: 상위 연산 스테이지

    reg [3:0] current_coef_h;
    reg [3:0] current_coef_l;
    
    always @(*) begin
        case (tap_idx)
            3'd0: {current_coef_h, current_coef_l} = 8'd4;
            3'd1: {current_coef_h, current_coef_l} = 8'd12;
            3'd2: {current_coef_h, current_coef_l} = 8'd25;
            3'd3: {current_coef_h, current_coef_l} = 8'd34;
            3'd4: {current_coef_h, current_coef_l} = 8'd34;
            3'd5: {current_coef_h, current_coef_l} = 8'd25;
            3'd6: {current_coef_h, current_coef_l} = 8'd12;
            3'd7: {current_coef_h, current_coef_l} = 8'd4;
            default: {current_coef_h, current_coef_l} = 8'd0;
        endcase
    end

    // 매 클록 4비트 데이터패스 연산 자원 매핑
    wire [3:0] mux_data = (stage_sel) ? shift_reg_h[tap_idx]  : shift_reg_l[tap_idx];
    wire [3:0] mux_coef = (stage_sel) ? current_coef_h        : current_coef_l;

    // --- 4. 4비트 단일 초소형 MAC 데이터패스 ---
    // 8비트 곱셈기를 제거하고, 단 하나의 4비트 × 4비트 곱셈기(8비트 결과)만 배치
    wire [7:0] mult_out_4bit = mux_data * mux_coef;
    
    // 시프트 레벨 보정을 유기적으로 결합한 16비트 누산기
    // 가산 및 시프트 로직도 4비트 레벨 연산 장치를 공유하여 단가 절감
    wire [15:0] shifted_mult = (stage_sel) ? ({{4{1'b0}}, mult_out_4bit, {4{1'b0}}}) 
                                           : ({{8{1'b0}}, mult_out_4bit});
    reg [15:0]  acc_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_reg <= 16'd0;
        end else begin
            if (in_ready) begin
                acc_reg <= 16'd64; // 반올림 정밀도 보정 기본값 초기화
            end else if (calc_running) begin
                acc_reg <= acc_reg + shifted_mult;
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
            
            // 16클록의 분할 연산이 완전히 완료된 타이밍 (상위 4비트 즉시 출력)
            if (calc_running_d1 && !calc_running) begin
                out_valid <= 1'b1;
                out_phase <= 1'b1; // 다음 클록에 하위 4비트 연속 출력 예약
                
                // 7비트 우측 스케일링(>>7) 및 포화 검증
                if (acc_reg[15:7] > 9'd255) begin
                    y           <= 4'hF;         // 상위 4비트 출력
                    y_saturated <= 8'hFF;
                end else begin
                    y           <= acc_reg[14:11]; // 상위 4비트 출력
                    y_saturated <= acc_reg[14:7];
                end
            end else if (out_phase) begin
                // 연속된 두 번째 클록 연동: 하위 4비트 출력
                out_valid <= 1'b0;
                out_phase <= 1'b0;
                y         <= y_saturated[3:0];   // 하위 4비트 출력
            end else begin
                out_valid <= 1'b0;
                y         <= 4'd0;
            end
        end
    end

endmodule
