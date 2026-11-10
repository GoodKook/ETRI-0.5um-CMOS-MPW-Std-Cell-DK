module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 입력 데이터 상위 4비트 유효 신호 (1클록 펄스)
    input  wire [3:0]  x,          // 4비트 분할 입력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [3:0]  y           // 4비트 분할 출력 데이터 (첫 클록: 상위 4비트, 다음 클록: 하위 4비트)
);

    // --- 1. 4비트 분할 시프트 레지스터 ---
    // 내부 8비트 조립 버퍼를 없애고 4비트 상/하위 레지스터 풀을 직접 제어하여 면적을 줄입니다.
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
                in_ready <= 1'b1;     // 상/하위 한 쌍 수신 및 시프트 완료
                shift_reg_l[0] <= x;
                for (i = 1; i < 8; i = i + 1) shift_reg_l[i] <= shift_reg_l[i-1];
            end else begin
                in_ready <= 1'b0;
            end
        end
    end

    // --- 2. 4비트 완전 직렬 제어용 시퀀서 카운터 (총 16단계) ---
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
                if (calc_cnt == 4'd15) begin // 8개 탭 × 2단계(상/하위) 분할 연산 완료
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 3. 곱셈기 제로(0): 4비트 시프트 및 조건부 가산 구조 ---
    // 계수 상수 정보: h0=4(bit2), h1=12(bit2,3), h2=25(bit0,3,4), h3=34(bit1,5)
    wire [2:0] tap_idx  = calc_cnt[3:1]; // 8개 탭 순차 순회 (0~7)
    wire       is_upper = calc_cnt[0];   // 0: 하위 4비트 연산 단계, 1: 상위 4비트 연산 단계

    reg [3:0] current_data;
    reg [5:0] bit_mask; // 계수 비트 매핑용 버퍼

    always @(*) begin
        // 현재 제어 단계에 맞는 4비트 데이터 세그먼트 선택
        current_data = (is_upper) ? shift_reg_h[tap_idx] : shift_reg_l[tap_idx];
        
        // 시간 분할용 계수 상수 비트 마스크 지정
        case (tap_idx)
            3'd0, 3'd7: bit_mask = 6'b000100; // h0, h7 = 4  (Bit 2)
            3'd1, 3'd6: bit_mask = 6'b001100; // h1, h6 = 12 (Bit 2, 3)
            3'd2, 3'd5: bit_mask = 6'b011001; // h2, h5 = 25 (Bit 0, 3, 4)
            3'd3, 3'd4: bit_mask = 6'b100010; // h3, h4 = 34 (Bit 1, 5)
            default:    bit_mask = 6'b000000;
        endcase
    end

    // 곱셈기 대신 오직 시프트 연산 가중치 결합 유닛만 배치 (배선 유닛으로 면적 0)
    reg [7:0] part_sum;
    always @(*) begin
        part_sum = 8'd0;
        // 곱셈 연산 대신 각 비트 위치가 1인 성분들을 하드와이어드 시프트(<<) 가산으로 대체
        if (bit_mask[0]) part_sum = part_sum + {4'b0, current_data};
        if (bit_mask[1]) part_sum = part_sum + ({3'b0, current_data} << 1);
        if (bit_mask[2]) part_sum = part_sum + ({2'b0, current_data} << 2);
        if (bit_mask[3]) part_sum = part_sum + ({1'b0, current_data} << 3);
        if (bit_mask[4]) part_sum = part_sum + (current_data << 4);
        if (bit_mask[5]) part_sum = part_sum + ((current_data[2:0]) << 5); // 오버플로우 한계 마스킹
    end

    // --- 4. 4비트 세그먼트 단위 직렬 누산기 ---
    // 가산 및 시프트 데이터 통로 크기도 4비트 스케일 단위로 가공 및 공유합니다.
    wire [15:0] scaled_part_sum = (is_upper) ? (part_sum << 4) : {8'b0, part_sum};
    reg  [15:0] acc_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_reg <= 16'd0;
        end else begin
            if (in_ready) begin
                acc_reg <= 16'd64; // 반올림 정밀도 스케일링 보정 기본값 초기화
            end else if (calc_running) begin
                acc_reg <= acc_reg + scaled_part_sum; // 단일 가산 누적
            end
        end
    end

    // --- 5. 최종 포화 연산 및 4비트 분할 연속 출력 ---
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
            
            // 16클록의 4비트 직렬 연산 시퀀스가 완전히 끝나는 타이밍 (상위 4비트 즉시 출력)
            if (calc_running_d1 && !calc_running) begin
                out_valid <= 1'b1;
                out_phase <= 1'b1; // 다음 클록에 하위 4비트 연속 출력 셋업
                
                // 7비트 우측 시프트(>>7) 및 디지털 포화 연산
                if (acc_reg[15:7] > 9'd255) begin
                    y           <= 4'hF;         // 상위 4비트 출력
                    y_saturated <= 8'hFF;
                end else begin
                    y           <= acc_reg[14:11]; // 상위 4비트 출력
                    y_saturated <= acc_reg[14:7];
                end
            end else if (out_phase) begin
                // 연속된 두 번째 클록: 하위 4비트 분할 출력 완료
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
