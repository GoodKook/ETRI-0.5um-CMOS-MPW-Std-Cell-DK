module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 새로운 입력 데이터 x가 유효함을 알리는 1클록 펄스
    input  wire [7:0]  x,          // 8비트 입력 데이터
    output reg         out_valid,  // 출력 데이터 y가 유효함을 알리는 1클록 펄스
    output reg  [7:0]  y           // 8비트 최적화 출력 데이터 (레이턴시: 9클록)
);

    // --- 1. 시프트 레지스터 (새로운 입력이 올 때만 업데이트) ---
    reg [7:0] shift_reg [0:7];
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) begin
                shift_reg[i] <= 8'd0;
            end
        end else if (in_valid) begin
            shift_reg[0] <= x;
            shift_reg[1] <= shift_reg[0];
            shift_reg[2] <= shift_reg[1];
            shift_reg[3] <= shift_reg[2];
            shift_reg[4] <= shift_reg[3];
            shift_reg[5] <= shift_reg[4];
            shift_reg[6] <= shift_reg[5];
            shift_reg[7] <= shift_reg[6];
        end
    end

    // --- 2. 시퀀셜 제어 상태 머신 (FSM) 및 카운터 ---
    reg [2:0] state_cnt;
    reg       calc_running;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state_cnt    <= 3'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_valid) begin
                state_cnt    <= 3'd0;
                calc_running <= 1'b1;
            end else if (calc_running) begin
                state_cnt    <= state_cnt + 3'd1;
                if (state_cnt == 3'd7) begin
                    calc_running <= 1'b0; // 8번의 MAC 연산 완료 후 정지
                end
            end
        end
    end

    // --- 3. ROM 형태로 구현된 필터 계수 선택 (Mux 구조) ---
    reg [7:0] current_coef;
    always @(*) begin
        case (state_cnt)
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

    // --- 4. 시리얼 시프트 레지스터 데이터 선택 (Mux 구조) ---
    reg [7:0] current_data;
    always @(*) begin
        case (state_cnt)
            3'd0: current_data = shift_reg[0];
            3'd1: current_data = shift_reg[1];
            3'd2: current_data = shift_reg[2];
            3'd3: current_data = shift_reg[3];
            3'd4: current_data = shift_reg[4];
            3'd5: current_data = shift_reg[5];
            3'd6: current_data = shift_reg[6];
            3'd7: current_data = shift_reg[7];
            default: current_data = 8'd0;
        endcase
    end

    // --- 5. 단일 곱셈기 및 누적기 (Single Multiplier & Accumulator) ---
    reg [15:0] prod_reg;  // 파이프라인 타이밍용 곱셈 결과 레지스터
    reg [18:0] acc_reg;   // 반올림 상수(64) 및 오버플로우 방지용 19비트 누적기

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            prod_reg <= 16'd0;
            acc_reg  <= 19'd0;
        end else if (calc_running || in_valid) begin
            // 하드웨어 자원: 단 1개의 8x8 곱셈기 사용
            prod_reg <= current_data * current_coef;
            
            // 첫 번째 연산 시작 시에는 반올림 값(64)으로 누적기 초기화, 이후에는 누적합 진행
            if (state_cnt == 3'd0) begin
                acc_reg <= 19'd64 + prod_reg; 
            end else begin
                acc_reg <= acc_reg + prod_reg;
            end
        end
    end

    // --- 6. 출력 파이프라인 (7비트 우측 시프트 및 포화 연산) ---
    reg       calc_done_d1;
    wire      calc_done;
    
    // 연산이 끝나고 마지막 데이터가 acc_reg에 반영되는 시점 감지
    assign calc_done = (state_cnt == 3'd7) && calc_running; 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_done_d1 <= 1'b0;
            y            <= 8'd0;
            out_valid    <= 1'b0;
        end begin
            calc_done_d1 <= calc_done;
            
            if (calc_done_d1) begin
                out_valid <= 1'b1;
                // 7비트 우측 시프트 연산 수행 및 안전성 확보를 위한 포화 연산(Saturation)
                if (acc_reg[18:7] > 12'd255) begin
                    y <= 8'hFF;
                end else begin
                    y <= acc_reg[14:7]; // 7비트 시프트 결과 슬라이싱
                end
            end else begin
                out_valid <= 1'b0;
            end
        end
    end

endmodule
