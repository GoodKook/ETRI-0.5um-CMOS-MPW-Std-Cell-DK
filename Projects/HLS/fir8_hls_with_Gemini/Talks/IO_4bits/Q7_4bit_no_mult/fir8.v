module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 입력 데이터 상위 4비트 유효 신호 (1클록 펄스)
    input  wire [3:0]  x,          // 4비트 분할 입력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [3:0]  y           // 4비트 분할 출력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
);

    // --- 1. 4비트 분할 시프트 레지스터 ---
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
                shift_reg_h[0] <= x;
                for (i = 1; i < 8; i = i + 1) shift_reg_h[i] <= shift_reg_h[i-1];
            end else if (in_phase) begin
                in_phase <= 1'b0;
                in_ready <= 1'b1;
                shift_reg_l[0] <= x;
                for (i = 1; i < 8; i = i + 1) shift_reg_l[i] <= shift_reg_l[i-1];
            end else begin
                in_ready <= 1'b0;
            end
        end
    end

    // --- 2. 직렬 시프트 및 가산 제어 시퀀서 (16단계) ---
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
                if (calc_cnt == 4'd15) begin // 16클록 연산 후 종료
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 3. 곱셈기 없는 시프트-가산 데이터패스 기획 ---
    // 계수 매핑 요약 (8비트 복원 기준 시프트 가중치 계산)
    // h0=4(bit2), h1=12(bit2,3), h2=25(bit0,3,4), h3=34(bit1,5)
    // 내부 4비트 shift_reg_h(상위)와 shift_reg_l(하위)의 조합을 시프트 값에 반영합니다.

    reg [15:0] add_operand;
    wire [2:0] tap_idx = calc_cnt[3:1]; // 8개 탭 순차 선택 (0~7)
    wire       sub_step = calc_cnt[0];   // 탭당 2클록씩 분할 처리

    always @(*) begin
        add_operand = 16'd0;
        case (tap_idx)
            // h0 = 4 (Bit 2) / h7 = 4 (Bit 2)
            3'd0, 3'd7: begin
                if (!sub_step) add_operand = {{10{1'b0}}, shift_reg_l[tap_idx]} << 2; // 하위 * 4
                else           add_operand = {{6{1'b0}},  shift_reg_h[tap_idx]} << 6; // 상위 * 4 (<<4 추가)
            end
            
            // h1 = 12 (Bit 2, 3) / h6 = 12 (Bit 2, 3)
            3'd1, 3'd6: begin
                if (!sub_step) add_operand = ({{10{1'b0}}, shift_reg_l[tap_idx]} << 2) + ({{10{1'b0}}, shift_reg_l[tap_idx]} << 3);
                else           add_operand = ({{6{1'b0}},  shift_reg_h[tap_idx]} << 6) + ({{6{1'b0}},  shift_reg_h[tap_idx]} << 7);
            end

            // h2 = 25 (Bit 0, 3, 4) / h5 = 25 (Bit 0, 3, 4)
            3'd2, 3'd5: begin
                if (!sub_step) add_operand = ({{10{1'b0}}, shift_reg_l[tap_idx]} << 0) + ({{10{1'b0}}, shift_reg_l[tap_idx]} << 3) + ({{10{1'b0}}, shift_reg_l[tap_idx]} << 4);
                else           add_operand = ({{6{1'b0}},  shift_reg_h[tap_idx]} << 4) + ({{6{1'b0}},  shift_reg_h[tap_idx]} << 7) + ({{6{1'b0}},  shift_reg_h[tap_idx]} << 8);
            end

            // h3 = 34 (Bit 1, 5) / h4 = 34 (Bit 1, 5)
            3'd3, 3'd4: begin
                if (!sub_step) add_operand = ({{10{1'b0}}, shift_reg_l[tap_idx]} << 1) + ({{10{1'b0}}, shift_reg_l[tap_idx]} << 5);
                else           add_operand = ({{6{1'b0}},  shift_reg_h[tap_idx]} << 5) + ({{6{1'b0}},  shift_reg_h[tap_idx]} << 9);
            end
        endcase
    end

    // --- 4. 단일 직렬 누산기 ---
    reg [15:0] acc_reg;

    always @(posedge clk or megedge rst_n) begin
        if (!rst_n) begin
            acc_reg <= 16'd0;
        end else begin
            if (in_ready) begin
                acc_reg <= 16'd64; // 반올림 보정 기본값 초기화 (+64)
            end else if (calc_running) begin
                acc_reg <= acc_reg + add_operand; // 곱셈기 없이 가산기만으로 누적
            end
        end
    end

    // --- 5. 최종 포화 연산 및 4비트 분할 출력 ---
    reg       calc_running_d1;
    reg [7:0] y_saturated;
    reg       out_phase;

    always @(posedge clk or megedge rst_n) begin
        if (!rst_n) begin
            calc_running_d1 <= 1'b0;
            out_valid       <= 1'b0;
            y               <= 4'd0;
            y_saturated     <= 8'd0;
            out_phase       <= 1'b0;
        end else begin
            calc_running_d1 <= calc_running;
            
            // 16클록 연산 완료 시점 포착 (상위 4비트 출력)
            if (calc_running_d1 && !calc_running) begin
                out_valid <= 1'b1;
                out_phase <= 1'b1; 
                
                if (acc_reg[15:7] > 9'd255) begin
                    y           <= 4'hF;
                    y_saturated <= 8'hFF;
                end else begin
                    y           <= acc_reg[14:11]; 
                    y_saturated <= acc_reg[14:7];
                end
            end else if (out_phase) begin
                // 다음 클록: 하위 4비트 출력
                out_valid <= 1'b0;
                out_phase <= 1'b0;
                y         <= y_saturated[3:0];
            end else begin
                out_valid <= 1'b0;
                y         <= 4'd0;
            end
        end
    end

endmodule
