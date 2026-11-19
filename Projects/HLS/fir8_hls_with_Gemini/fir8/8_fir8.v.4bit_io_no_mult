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
                in_ready <= 1'b1;     // 상/하위 데이터 수신 완료
                shift_reg_l[0] <= x;
                for (i = 1; i < 8; i = i + 1) shift_reg_l[i] <= shift_reg_l[i-1];
            end else begin
                in_ready <= 1'b0;
            end
        end
    end

    // --- 2. 오류 수정용 정밀 시퀀서 카운터 (총 16단계) ---
    // 8개 탭을 처리하며, 내부에서 하위/상위 연산을 확실히 이원화합니다.
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
                if (calc_cnt == 4'd15) begin // 16클록 제어 도달 시 종료
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 3. 정밀 하드와이어드 시프트 가산 구조 (곱셈기 완전 배제) ---
    // 계수 매핑 수치: h0=4, h1=12, h2=25, h3=34, h4=34, h5=25, h6=12, h7=4
    wire [2:0] tap_idx  = calc_cnt[3:1]; // 0~7 탭 선택
    wire       is_upper = calc_cnt[0];   // 0: 하위 4비트 데이터 연산, 1: 상위 4비트 데이터 연산

    reg [3:0]  target_data;
    reg [15:0] add_shifted;

    always @(*) begin
        // 현재 스케줄에 맞는 4비트 데이터 조각 선택
        target_data = (is_upper) ? shift_reg_h[tap_idx] : shift_reg_l[tap_idx];
        add_shifted = 16'd0;

        if (calc_running) begin
            case (tap_idx)
                // h0, h7 = 4 (Bit 2만 1)
                3'd0, 3'd7: begin
                    if (!is_upper) add_shifted = {{10{1'b0}}, target_data} << 2;  // 하위 조각 * 4
                    else           add_shifted = {{10{1'b0}}, target_data} << 6;  // 상위 조각 * 4 (<<4 반영)
                end

                // h1, h6 = 12 (Bit 2, 3이 1 -> 즉, 데이터*4 + 데이터*8)
                3'd1, 3'd6: begin
                    if (!is_upper) add_shifted = ({{10{1'b0}}, target_data} << 2) + ({{10{1'b0}}, target_data} << 3);
                    else           add_shifted = ({{10{1'b0}}, target_data} << 6) + ({{10{1'b0}}, target_data} << 7);
                end

                // h2, h5 = 25 (Bit 0, 3, 4가 1 -> 즉, 데이터*1 + 데이터*8 + 데이터*16)
                3'd2, 3'd5: begin
                    if (!is_upper) add_shifted = ({{10{1'b0}}, target_data} << 0) + ({{10{1'b0}}, target_data} << 3) + ({{10{1'b0}}, target_data} << 4);
                    else           add_shifted = ({{10{1'b0}}, target_data} << 4) + ({{10{1'b0}}, target_data} << 7) + ({{10{1'b0}}, target_data} << 8);
                end

                // h3, h4 = 34 (Bit 1, 5가 1 -> 즉, 데이터*2 + 데이터*32)
                3'd3, 3'd4: begin
                    if (!is_upper) add_shifted = ({{10{1'b0}}, target_data} << 1) + ({{10{1'b0}}, target_data} << 5);
                    else           add_shifted = ({{10{1'b0}}, target_data} << 5) + ({{10{1'b0}}, target_data} << 9);
                end
            endcase
        end
    end

    // --- 4. 16비트 정밀 누산 회로 ---
    reg [15:0] acc_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_reg <= 16'd0;
        end else begin
            if (in_ready) begin
                acc_reg <= 16'd64; // 반올림 기본값 정밀도 보정 초기화 (+64)
            end else if (calc_running) begin
                acc_reg <= acc_reg + add_shifted; // 누산기 오류 교정 가산 완료
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
            
            // 16클록의 정밀 교정 연산 시퀀스가 완전히 끝나는 시점
            if (calc_running_d1 && !calc_running) begin
                out_valid <= 1'b1;
                out_phase <= 1'b1; 
                
                // 정밀도 복원을 위한 7비트 우측 시프트(>>7) 및 상한 포화 연산
                if (acc_reg[15:7] > 9'd255) begin
                    y           <= 4'hF;         // 상위 4비트 출력
                    y_saturated <= 8'hFF;
                end else begin
                    y           <= acc_reg[14:11]; // 상위 4비트 출력
                    y_saturated <= acc_reg[14:7];
                end
            end else if (out_phase) begin
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
