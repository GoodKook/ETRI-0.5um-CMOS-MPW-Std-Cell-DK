module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 입력 데이터 상위 4비트 유효 신호 (1클록 펄스)
    input  wire [3:0]  x,          // 4비트 분할 입력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [3:0]  y           // 4비트 분할 출력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
);

    // --- 1. 4비트 입력 버퍼링 및 시프트 레지스터 ---
    reg [3:0] shift_reg_h [0:7];
    reg [3:0] shift_reg_l [0:7];
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
                in_phase <= 1'b1;
                shift_reg_h[0] <= x;
                for (i = 1; i < 8; i = i + 1) shift_reg_h[i] <= shift_reg_h[i-1];
            end else if (in_phase) begin
                in_phase <= 1'b0;
                shift_reg_l[0] <= x;
                for (i = 1; i < 8; i = i + 1) shift_reg_l[i] <= shift_reg_l[i-1];
            end
        end
    end

    // --- 2. 병렬화 제어용 시퀀서 카운터 (0~16) ---
    reg [4:0] seq_cnt;
    reg       calc_running;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            seq_cnt      <= 5'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_phase) begin // 하위 비트 조립이 끝나는 타이밍에 연산 시작
                seq_cnt      <= 5'd0;
                calc_running <= 1'b1;
            end else if (calc_running) begin
                seq_cnt <= seq_cnt + 5'd1;
                if (seq_cnt == 5'd16) begin // 17클록 연산 주기 후 종료 (18클록째 출력)
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 3. 듀얼 4비트 데이터패스 (상/하위 독립 병렬 누산) ---
    reg [3:0] acc_l; // 하위 누산기
    reg [3:0] acc_h; // 상위 누산기
    reg       carry_l;
    reg       carry_h;
    reg       overflow;
    
    reg [3:0] coef_weight;

    // 계수 매핑 (TDM 구조)
    // h0=4, h1=12, h2=25, h3=34, h4=34, h5=25, h6=12, h7=4
    // seq_cnt의 bit[3:1]을 사용하여 각 탭당 2클록씩 할당
    wire [2:0] tap_sel = seq_cnt[3:1]; 
    wire       step_sel = seq_cnt[0];  // 한 탭 내에서 곱셈 분할 처리용

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
    end

    // 현재 선택된 탭의 상/하위 입력 데이터 분할 추출
    wire [3:0] cur_data_l = shift_reg_l[tap_sel];
    wire [3:0] cur_data_h = shift_reg_h[tap_sel];

    // 하위/상위 곱셈 결과 산출 (4비트 x 4비트 = 8비트 곱셈기 2개 배치)
    wire [7:0] prod_l = cur_data_l * coef_weight;
    wire [7:0] prod_h = cur_data_h * coef_weight;

    // 가산기 입력 매핑 (2스텝 분할 누산)
    // step_sel == 0: 각 곱셈 결과의 하위 4비트 누적
    // step_sel == 1: 각 곱셈 결과의 상위 4비트 누적 + 이전 캐리
    wire [3:0] add_in_l = (step_sel) ? prod_l[7:4] : prod_l[3:0];
    wire [3:0] add_in_h = (step_sel) ? prod_h[7:4] : prod_h[3:0];

    wire [4:0] adder_out_l = acc_l + add_in_l + ((step_sel) ? carry_l : 1'b0);
    // 하위 가산기에서 발생하는 캐리가 상위 가산기에 영향을 주므로 연계 구조 설계
    wire [4:0] adder_out_h = acc_h + add_in_h + ((step_sel) ? (carry_h + adder_out_l[4]) : adder_out_l[4]);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_l    <= 4'd0;
            acc_h    <= 4'd0;
            carry_l  <= 1'b0;
            carry_h  <= 1'b0;
            overflow <= 1'b0;
        end else if (in_phase) begin
            // 초기화: 반올림 보정값(+64) 하위/상위 분할 셋업
            acc_l    <= 4'd4; 
            acc_h    <= 4'd0;
            carry_l  <= 1'b0;
            carry_h  <= 1'b0;
            overflow <= 1'b0;
        end else if (calc_running && (seq_cnt < 5'd16)) begin
            acc_l <= adder_out_l[3:0];
            acc_h <= adder_out_h[3:0];
            
            if (!step_sel) begin
                // 첫 번째 스텝 캐리 임시 보존
                carry_l <= adder_out_l[4];
                carry_h <= adder_out_h[4];
            end else begin
                carry_l <= 1'b0;
                carry_h <= 1'b0;
                if (adder_out_h[4]) overflow <= 1'b1; // 상한 오버플로우 감지
            end
        end
    end

    // --- 4. 4비트 시간 분할 출력 로직 ---
    reg [1:0] out_state;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out_state <= 2'd0;
            out_valid <= 1'b0;
            y         <= 4'd0;
        end else begin
            case (out_state)
                2'd0: begin
                    // seq_cnt가 16에 도달하는 18클록째에 동시 출력 개시
                    if (calc_running && (seq_cnt == 5'd16)) begin
                        out_valid <= 1'b1;
                        out_state <= 2'd1;
                        // 포화 연산 적용된 상위 4비트 출력
                        y <= (overflow || (acc_h > 4'hF)) ? 4'hF : acc_h;
                    end else begin
                        out_valid <= 1'b0;
                        y         <= 4'd0;
                    end
                end

                2'd1: begin
                    // 19클록째: 하위 4비트 연속 출력 및 종료
                    out_valid <= 1'b0;
                    out_state <= 2'd0;
                    y         <= (overflow) ? 4'hF : acc_l;
                end
                
                default: out_state <= 2'd0;
            endcase
        end
    end

endmodule
