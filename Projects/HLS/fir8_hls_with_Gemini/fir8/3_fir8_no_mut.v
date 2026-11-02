module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 새로운 입력 데이터 x 유효 신호 (1클록 펄스)
    input  wire [7:0]  x,          // 8비트 입력 데이터
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [7:0]  y           // 8비트 최적화 출력 데이터 (레이턴시: 18클록)
);

    // --- 1. 원형 버퍼(Circular Buffer) RAM 데이터 관리 ---
    reg [2:0] wr_ptr;
    reg [2:0] rd_ptr;
    reg [2:0] tap_cnt;         // 0~7 필터 탭 순차 제어 카운터
    reg [2:0] bit_cnt;         // 0~7 Shift-and-Add용 비트 카운터
    reg       calc_running;    // 전체 필터 연산 구동 플래그

    reg [7:0] data_ram [0:7];
    reg [7:0] current_data;

    // 제어 상태 머신 (FSM)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_ptr       <= 3'd0;
            rd_ptr       <= 3'd0;
            tap_cnt      <= 3'd0;
            bit_cnt      <= 3'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_valid) begin
                data_ram[wr_ptr] <= x;          // 최신 입력 데이터 RAM 저장
                rd_ptr           <= wr_ptr;     // 최신 데이터 주소부터 역순 읽기 준비
                wr_ptr           <= wr_ptr + 3'd1;
                tap_cnt          <= 3'd0;
                bit_cnt          <= 3'd0;
                calc_running     <= 1'b1;
            end else if (calc_running) begin
                bit_cnt <= bit_cnt + 3'd1;
                if (bit_cnt == 3'd7) begin      // 1개 데이터에 대한 8비트 곱셈(Shift-and-Add) 완료
                    tap_cnt <= tap_cnt + 3'd1;
                    rd_ptr  <= rd_ptr - 3'd1;   // 다음 탭 데이터 주소로 이동
                    if (tap_cnt == 3'd7) begin  // 8개 탭 연산 모두 완료
                        calc_running <= 1'b0;
                    end
                end
            end
        end
    end

    // RAM 데이터 로딩 (연산 중에만 동기화 읽기)
    always @(posedge clk) begin
        if (in_valid || calc_running) begin
            current_data <= data_ram[rd_ptr];
        end
    end

    // --- 2. 순차 필터 계수 발생기 (시분할 공유용) ---
    reg [7:0] current_coef;
    always @(*) begin
        case (tap_cnt)
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

    // --- 3. 비트-시리얼 곱셈 및 누적 (Shift-and-Add MAC) 단 ---
    reg [15:0] partial_prod;   // Shift-and-Add 중간 연산 보관
    reg [18:0] acc_reg;        // 전체 탭 결과 누적기 (초기값 반올림용 64 장착)

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            partial_prod <= 16'd0;
            acc_reg      <= 19'd64; // 초기 반올림 값 설정
        end else begin
            if (in_valid) begin
                partial_prod <= 16'd0;
                acc_reg      <= 19'd64; // 새로운 입력 유입 시 누적기 초기화 (+64)
            end else if (calc_running) begin
                // [핵심] 곱셈기 없이 계수(current_coef)의 각 비트가 1인지 체크하여 덧셈 여부 결정
                if (current_coef[bit_cnt]) begin
                    // 비트 자릿수(bit_cnt)만큼 데이터를 왼쪽으로 시프트하여 누적기 가산
                    acc_reg <= acc_reg + ({{11{1'b0}}, current_data} << bit_cnt);
                end
            end
        end
    end

    // --- 4. 최종 시프트 출력 단 (포화 연산 안전장치 및 동기화) ---
    reg calc_running_d1;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_running_d1 <= 1'b0;
            out_valid       <= 1'b0;
            y               <= 8'd0;
        end else begin
            calc_running_d1 <= calc_running;
            
            // 연산 구동 플래그가 하강하는 시점 (연산 완료 하강에지 감지)
            if (calc_running_d1 && !calc_running) begin
                out_valid <= 1'b1;
                // 정밀도 복원을 위한 7비트 우측 시프트(>>7) 및 상한값 제한(Saturation)
                if (acc_reg[18:7] > 12'd255) begin
                    y <= 8'hFF;
                end else begin
                    y <= acc_reg[14:7];
                end
            end else begin
                out_valid <= 1'b0;
            end
        end
    end

endmodule
