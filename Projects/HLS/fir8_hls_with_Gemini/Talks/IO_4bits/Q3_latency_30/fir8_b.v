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

    // --- 2. 하드웨어 세이빙 카운터 (연산 주기 8클록으로 단축) ---
    reg [3:0] calc_cnt;
    reg       calc_running;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_cnt     <= 4'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_phase) begin // 입력이 완전히 조립된 클록 다음 단계에서 시작
                calc_cnt     <= 4'd0;
                calc_running <= 1'b1;
            end else if (calc_running) begin
                calc_cnt <= calc_cnt + 4'd1;
                if (calc_cnt == 4'd15) begin // 가산 트리 파이프라인 정렬 감안하여 총 16클록 실행
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 3. 듀얼 4비트 분할 연산 데이터패스 ---
    reg [3:0] coef;
    wire [2:0] tap_idx = calc_cnt[2:0];

    always @(*) begin
        case (tap_idx)
            3'd0: coef = 4'd4;
            3'd1: coef = 4'd12;
            3'd2: coef = 4'd25;
            3'd3: coef = 4'd34;
            3'd4: coef = 4'd34;
            3'd5: coef = 4'd25;
            3'd6: coef = 4'd12;
            3'd7: coef = 4'd4;
            default: coef = 4'd0;
        endcase
    end

    // 하위/상위 비트용 4비트 독립 곱셈/누산기 구성 (면적은 유지하되 레이턴시 반감)
    reg [11:0] acc_l; 
    reg [11:0] acc_h;
    wire [7:0] prod_l = shift_reg_l[tap_idx] * coef;
    wire [7:0] prod_h = shift_reg_h[tap_idx] * coef;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_l <= 12'd0;
            acc_h <= 12'd0;
        end else if (in_phase) begin
            acc_l <= 12'd64; // 반올림 기본값 스케일링 보정 (+64)
            acc_h <= 12'd0;
        end else if (calc_running && (calc_cnt < 8)) begin
            acc_l <= acc_l + prod_l;
            acc_h <= acc_h + prod_h;
        end
    end

    // --- 4. 최종 스케일 변환 결합 및 포화 연산 ---
    reg [15:0] total_sum;
    reg        calc_done_d1;
    reg [3:0]  y_out_h;
    reg [3:0]  y_out_l;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            total_sum    <= 16'd0;
            calc_done_d1 <= 1'b0;
            y_out_h      <= 4'd0;
            y_out_l      <= 4'd0;
        end else begin
            // 8클록의 가산이 종료되는 시점에 상위/하위 누산 결과 취합
            if (calc_running && (calc_cnt == 4'd8)) begin
                total_sum <= acc_l + (acc_h << 4);
            end
            
            // 파이프라인 정렬 및 비트 추출 처리
            if (calc_running && (calc_cnt == 4'd9)) begin
                calc_done_d1 <= 1'b1;
                if (total_sum[15:11] != 5'd0) begin // 포화 연산(Overflow) 처리
                    y_out_h <= 4'hF;
                    y_out_l <= 4'hF;
                end else begin
                    y_out_h <= total_sum[14:11]; // 최종 스케일링 변환 완료된 상위 4비트
                    y_out_l <= total_sum[10:7];  // 최종 스케일링 변환 완료된 하위 4비트
                end
            end else begin
                calc_done_d1 <= 1'b0;
            end
        end
    end

    // --- 5. 4비트 연속 출력 제어 블록 ---
    reg out_phase;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out_valid <= 1'b0;
            y         <= 4'd0;
            out_phase <= 1'b0;
        end else begin
            if (calc_done_d1) begin
                out_valid <= 1'b1;
                out_phase <= 1'b1;
                y         <= y_out_h; // 18클록째 첫 번째 상위 4비트 출력
            end else if (out_phase) begin
                out_valid <= 1'b0;
                out_phase <= 1'b0;
                y         <= y_out_l; // 19클록째 연속된 하위 4비트 출력
            end else begin
                out_valid <= 1'b0;
                y         <= 4'd0;
            end
        end
    end

endmodule
