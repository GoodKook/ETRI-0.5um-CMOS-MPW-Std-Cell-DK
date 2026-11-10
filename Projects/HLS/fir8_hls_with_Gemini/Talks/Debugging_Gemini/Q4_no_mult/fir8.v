module fir8 (
    input wire clk,          // 시스템 클록
    input wire rst_n,        // 비동기 액티브 로우 리셋
    input wire in_valid,     // 입력 데이터 유효 신호
    input wire [7:0] x,      // 8비트 입력 데이터
    output reg out_valid,    // 출력 데이터 유효 신호
    output reg [7:0] y       // 8비트 최적화 출력 데이터
);

    // 필터 계수 정의
    localparam [7:0] COEF_0 = 8'd4;
    localparam [7:0] COEF_1 = 8'd12;
    localparam [7:0] COEF_2 = 8'd25;
    localparam [7:0] COEF_3 = 8'd34;
    localparam [7:0] COEF_4 = 8'd34;
    localparam [7:0] COEF_5 = 8'd25;
    localparam [7:0] COEF_6 = 8'd12;
    localparam [7:0] COEF_7 = 8'd4;

    // --- [Valid Signal Pipeline] ---
    // 데이터 파이프라인 레이턴시(4 사이클)에 맞춰 유효 신호를 지연시킵니다.
    reg v_stage1, v_stage2, v_stage3, v_stage4;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            v_stage1 <= 1'b0;
            v_stage2 <= 1'b0;
            v_stage3 <= 1'b0;
            v_stage4 <= 1'b0;
        end else begin
            v_stage1 <= in_valid;
            v_stage2 <= v_stage1;
            v_stage3 <= v_stage2;
            v_stage4 <= v_stage3;
        end
    end

    // --- [Stage 1] 시프트 레지스터 (Shift Register Update) ---
    reg [7:0] shift_reg [0:7];
    integer i;
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) begin
                shift_reg[i] <= 8'd0;
            end
        end else if (in_valid) begin
            // 입력을 받아 순차적으로 시프트
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

    // --- [Stage 2] 곱셈 연산 (Multiplication) ---
    // 데이터 유수(Stall) 방지를 위해 조건문 없이 매 클록마다 연산이 흐르도록 설정
    reg [15:0] prod [0:7];
    
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 8; i = i + 1) begin
                prod[i] <= 16'd0;
            end
        end else begin
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

    // --- [Stage 3] 누적 및 반올림 연산 (MAC & Rounding) ---
    reg [18:0] sum_acc;
    wire [18:0] final_sum;
    
    assign final_sum = prod[0] + prod[1] + prod[2] + prod[3] + 
                       prod[4] + prod[5] + prod[6] + prod[7] + 19'd64;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sum_acc <= 19'd0;
        end else begin
            sum_acc <= final_sum;
        end
    end

    // --- [Stage 4] 포화 연산 및 최종 출력 ---
    wire [11:0] shifted_sum;
    assign shifted_sum = sum_acc[18:7];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y         <= 8'd0;
            out_valid <= 1'b0;
        end else begin
            out_valid <= v_stage4; // 4사이클 지연된 최종 유효 신호 매핑
            
            // 데이터 포화 연산(Saturation) 처리
            if (shifted_sum > 12'd255) begin
                y <= 8'hFF;
            end else begin
                y <= shifted_sum[7:0];
            end
        end
    end

endmodule
