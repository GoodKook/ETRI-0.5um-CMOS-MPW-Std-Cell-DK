module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 입력 데이터 유효 신호
    input  wire [7:0]  x,          // 8비트 입력 데이터 (data_t)
    output reg         out_valid,  // 출력 데이터 유효 신호
    output reg  [7:0]  y           // 8비트 최적화 출력 데이터 (data_t)
);

    // 필터 계수 정의 (8비트 8탭, 고정값)
    localparam [7:0] COEF_0 = 8'd4;
    localparam [7:0] COEF_1 = 8'd12;
    localparam [7:0] COEF_2 = 8'd25;
    localparam [7:0] COEF_3 = 8'd34;
    localparam [7:0] COEF_4 = 8'd34;
    localparam [7:0] COEF_5 = 8'd25;
    localparam [7:0] COEF_6 = 8'd12;
    localparam [7:0] COEF_7 = 8'd4;

    // --- [Stage 1] 시프트 레지스터 (Shift Register Update) ---
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

    // --- [Stage 2] 곱셈 연산 (Multiplication: 8-bit * 8-bit = 16-bit) ---
    // 합성 툴이 DSP 블록을 효율적으로 매핑할 수 있도록 파이프라인 레지스터 배치
    reg [15:0] prod [0:7];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) begin
                prod[i] <= 16'd0;
            end
        end else if (in_valid) begin
            prod[0] <= shift_reg[0] * COEF_0;
            prod[1] <= shift_reg[1] * COEF_1;
            prod[2] <= shift_reg[2] * COEF_2;
            prod[3] <= shift_reg[3] * COEF_3;
            prod[4] <= shift_reg[4] * COEF_4;
            prod[5] <= shift_reg[5] * COEF_5;
            prod[6] <= shift_reg[6] * COEF_6;
            prod[7] <= shift_reg[7] * COEF_7;
        end
    end

    // --- [Stage 3] 누적 및 반올림 연산 (MAC & Rounding Bit Shift) ---
    // 16비트 곱셈 결과 8개를 모두 더하므로, 오버플로우 방지를 위해 비트 확장 (16비트 + 3비트 = 19비트)
    // C 코드의 반올림 값(+64) 처리를 위해 미리 초기값으로 64를 인스턴스화
    reg [18:0] sum_acc;
    wire [18:0] final_sum;

    assign final_sum = prod[0] + prod[1] + prod[2] + prod[3] + 
                       prod[4] + prod[5] + prod[6] + prod[7] + 19'd64;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sum_acc <= 19'd0;
        end else if (in_valid) begin
            sum_acc <= final_sum;
        end
    end

    // --- [Stage 4] 7비트 우측 시프트 및 8비트 포화 연산 출력 ---
    // sum_acc를 7비트 우측 시프트(>>7)한 값의 유효 상위 비트 확인 후 출력
    wire [11:0] shifted_sum;
    assign shifted_sum = sum_acc[18:7];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y         <= 8'd0;
            out_valid <= 1'b0;
        end else begin
            out_valid <= in_valid; // 유효 신호 파이프라인 동기화
            if (in_valid) begin
                // 시프트 결과가 8비트 상한(255)을 초과하는지 체크하여 안전장치 마련
                if (shifted_sum > 12'd255) begin
                    y <= 8'hFF;
                end else begin
                    y <= shifted_sum[7:0];
                end
            end
        end
    end

endmodule
