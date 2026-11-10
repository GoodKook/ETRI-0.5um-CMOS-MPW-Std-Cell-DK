module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 입력 데이터 상위 4비트 유효 신호 (1클록 펄스)
    input  wire [3:0]  x,          // 4비트 분할 입력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [3:0]  y           // 4비트 분할 출력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
);

    // --- 1. 4비트 입력 버퍼링 및 시프트 레지스터 ---
    reg [3:0] shift_reg_h [0:7]; // 8개 탭의 상위 4비트
    reg [3:0] shift_reg_l [0:7]; // 8개 탭의 하위 4비트
    reg       in_phase;
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            in_phase <= 1'b0;
            for (i = 0; i < 8; i = i + 1) begin
                shift_reg_h[i] <= 4'd0;
                shift_reg_l[i] <= 4'd0;
            end
        end else begin
            if (in_valid) begin
                // 새로운 샘플 입력 시작 (상위 4비트 시프트)
                in_phase <= 1'b1;
                shift_reg_h[0] <= x;
                for (i = 1; i < 8; i = i + 1) shift_reg_h[i] <= shift_reg_h[i-1];
            end else if (in_phase) begin
                // 연속된 다음 클록 (하위 4비트 시프트)
                in_phase <= 1'b0;
                shift_reg_l[0] <= x;
                for (i = 1; i < 8; i = i + 1) shift_reg_l[i] <= shift_reg_l[i-1];
            end
        end
    end

    // --- 2. 직렬 제어용 고집적 시퀀서 카운터 ---
    // 8개 탭을 순차 순회(0~7)하며 하위/상위 비트 연산을 수행하기 위해 카운터를 확장합니다.
    reg [5:0] seq_cnt;
    reg       calc_running;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            seq_cnt      <= 6'd0;
            calc_running <= 1'b0;
        end else begin
            // 하위 4비트까지 완전히 조립 완료된 시점에 연산 시동
            if (in_phase) begin
                seq_cnt      <= 6'd0;
                calc_running <= 1'b1;
            end else if (calc_running) begin
                seq_cnt <= seq_cnt + 6'd1;
                if (seq_cnt == 6'd33) begin // 시간 분할 직렬 연산 주기 완료
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 3. 4비트 초소형 데이터패스 및 직렬 누산기 ---
    // 대형 가산 트리 대신 오직 4비트 가산기(Adder) 1개와 캐리 플래그만 사용합니다.
    reg [3:0] acc_4bit;
    reg       carry;
    reg       overflow;
    
    reg [3:0] current_tap_data;
    reg [3:0] coef_weight;

    // 계수 매핑 (시간 분할 다중화용 멀티플렉서 인터페이스)
    // h0=4, h1=12, h2=25, h3=34, h4=34, h5=25, h6=12, h7=4
    wire [2:0] tap_sel = seq_cnt[3:1]; // 8개 탭 순차 선택
    wire       hl_sel  = seq_cnt[0];   // 0: 하위 4비트, 1: 상위 4비트 연산

    always @(*) begin
        case (tap_sel)
            3'd0: coef_weight = 4'd4;
            3'd1: coef_weight = 4'd12;
            3'd2: coef_weight = 4'd25;
            3'd3: coef_weight = 4'd34;
            3'd4: coef_weight = 4'd34;
            3'd5: coef_weight = 4'd25;
            3'd6: coef_weight = 4'd12;
            3'd7: coef_weight = 4'd4;
            default: coef_weight = 4'd0;
        endcase

        // 선택된 탭의 상/하위 4비트 데이터 추출
        current_tap_data = (hl_sel) ? shift_reg_h[tap_sel] : shift_reg_l[tap_sel];
    end

    // 4비트 직렬 곱셈-누산 연산부 (Shift-and-Add 구현)
    wire [7:0] prod_8bit = current_tap_data * coef_weight;
    wire [4:0] adder_out = (hl_sel) ? (acc_4bit + prod_8bit[7:4] + carry) 
                                    : (acc_4bit + prod_8bit[3:0] + carry);

    // 반올림 상수 처리를 포함한 직렬 누산 파이프라인
    reg [3:0] final_y_h;
    reg [3:0] final_y_l;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_4bit  <= 4'd0;
            carry     <= 1'b0;
            overflow  <= 1'b0;
            final_y_h <= 4'd0;
            final_y_l <= 4'd0;
        end else if (in_phase) begin
            // 초기화: 정밀도 스케일링 보정용 반올림 기본값(+64)을 4비트 단위로 쪼개어 셋업
            acc_4bit  <= 4'd4; // 64의 4비트 하위 세그먼트 성분 보정값
            carry     <= 1'b0;
            overflow  <= 1'b0;
        end else if (calc_running) begin
            if (seq_cnt < 6'd16) begin
                // 1단계: 탭 데이터와 계수 간 4비트 직렬 부분곱 누적
                acc_4bit <= adder_out[3:0];
                carry    <= adder_out[4];
                if (adder_out[4] && (seq_cnt == 6'd15)) begin
                    overflow <= 1'b1; // 연산 중 한계치 초과 발생 감지
                end
            end else if (seq_cnt == 6'd16) begin
                // 중간 스케일 변환 결과(하위 4비트 분할 분) 고정 저장
                final_y_l <= acc_4bit;
                acc_4bit  <= {3'b0, carry};
                carry     <= 1'b0;
            end else if (seq_cnt < 6'd32) begin
                // 2단계: 남은 상위 파트 부분곱 누적 연산 진행
                acc_4bit <= adder_out[3:0];
                carry    <= adder_out[4];
            end else if (seq_cnt == 6'd32) begin
                // 최종 상위 4비트 결과 확정 및 상한 검증
                final_y_h <= acc_4bit;
                if (carry) overflow <= 1'b1;
            end
        end
    end

    // --- 4. 4비트 시간 분할 연속 출력 로직 ---
    reg [1:0] out_state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out_state <= 2'd0;
            out_valid <= 1'b0;
            y         <= 4'd0;
        end else begin
            case (out_state)
                2'd0: begin
                    // 연산 제어 시퀀스가 끝나는 시점에 출력 개시
                    if (calc_running && (seq_cnt == 6'd33)) begin
                        out_valid <= 1'b1;
                        out_state <= 2'd1;
                        // 포화 연산 적용된 상위 4비트 송신
                        y <= (overflow || (final_y_h > 4'hF)) ? 4'hF : final_y_h;
                    end else begin
                        out_valid <= 1'b0;
                        y         <= 4'd0;
                    end
                end

                2'd1: begin
                    // 두 번째 클록: 하위 4비트 연속 송신 완료
                    out_valid <= 1'b0;
                    out_state <= 2'd0;
                    y         <= (overflow) ? 4'hF : final_y_l;
                end
                
                default: out_state <= 2'd0;
            endcase
        end
    end

endmodule
