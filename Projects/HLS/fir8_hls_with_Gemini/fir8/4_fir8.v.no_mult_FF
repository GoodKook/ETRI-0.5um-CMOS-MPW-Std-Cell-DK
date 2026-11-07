module fir8 (
    input  wire        clk,        // 시스템 클록
    input  wire        rst_n,      // 비동기 액티브 로우 리셋
    input  wire        in_valid,   // 새로운 입력 데이터 x 유효 신호 (1클록 펄스)
    input  wire [7:0]  x,          // 8비트 입력 데이터
    output reg         out_valid,  // 출력 데이터 y 유효 신호
    output reg  [7:0]  y           // 8비트 최적화 출력 데이터 (레이턴시: 11클록)
);

    // --- 1. 단순 플립플롭(FF) 기반 시프트 레지스터 ---
    // RAM 제어용 주소 포인터 및 디코더 로직을 전부 제거하여 주변 면적 최소화
    reg [7:0] shift_reg [0:7];
    integer i;

    always @(posedge clk or megedge rst_n) begin
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

    // --- 2. 하드웨어 세이빙을 위한 카운터 및 제어 로직 ---
    // 탭 카운터를 없애고 비트 단위 카운터(0~10) 하나로 모든 연산 흐름 제어
    reg [3:0] calc_cnt;
    reg       calc_running;

    always @(posedge clk or megedge rst_n) begin
        if (!rst_n) begin
            calc_cnt     <= 4'd0;
            calc_running <= 1'b0;
        end else begin
            if (in_valid) begin
                calc_cnt     <= 4'd0;
                calc_running <= 1'b1;
            end else if (calc_running) begin
                calc_cnt <= calc_cnt + 4'd1;
                if (calc_cnt == 4'd10) begin // 총 11클록 연산 후 종료
                    calc_running <= 1'b0;
                end
            end
        end
    end

    // --- 3. 곱셈기 제로(0): 하드웨어 가산/시프트 덧셈 트리 ---
    // 각 탭의 데이터(shift_reg)를 계수의 비트 위치만큼 미리 시프트한 뒤, 
    // 해당 비트가 1인 성분들만 조건부로 누적하는 단일 가산기(Adder) 구조입니다.
    // 계수 상수: h0=4(bit2), h1=12(bit2,3), h2=25(bit0,3,4), h3=34(bit1,5), h4=34(bit1,5), h5=25(bit0,3,4), h6=12(bit2,3), h7=4(bit2)
    
    reg [18:0] acc_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_reg <= 19'd64;
        end else begin
            if (in_valid) begin
                acc_reg <= 19'd64; // 반올림 기본값(+64)으로 매 샘플링마다 초기화
            end else if (calc_running) begin
                // 대형 곱셈기나 순차 멀티플렉서 대신, 카운터 단계별로 필수 비트 가산만 수행
                case (calc_cnt)
                    // 계수들의 Bit 0 성분 가산
                    4'd0: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[2]} << 0)   // h2 = 25 (Bit 0)
                                             + ({{11{1'b0}}, shift_reg[5]} << 0);  // h5 = 25 (Bit 0)
                    
                    // 계수들의 Bit 1 성분 가산
                    4'd1: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[3]} << 1)   // h3 = 34 (Bit 1)
                                             + ({{11{1'b0}}, shift_reg[4]} << 1);  // h4 = 34 (Bit 1)
                    
                    // 계수들의 Bit 2 성분 가산
                    4'd2: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[0]} << 2)   // h0 = 4  (Bit 2)
                                             + ({{11{1'b0}}, shift_reg[1]} << 2)   // h1 = 12 (Bit 2)
                                             + ({{11{1'b0}}, shift_reg[6]} << 2)   // h6 = 12 (Bit 2)
                                             + ({{11{1'b0}}, shift_reg[7]} << 2);  // h7 = 4  (Bit 2)
                    
                    // 계수들의 Bit 3 성분 가산
                    4'd3: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[1]} << 3)   // h1 = 12 (Bit 3)
                                             + ({{11{1'b0}}, shift_reg[2]} << 3)   // h2 = 25 (Bit 3)
                                             + ({{11{1'b0}}, shift_reg[5]} << 3)   // h5 = 25 (Bit 3)
                                             + ({{11{1'b0}}, shift_reg[6]} << 3);  // h6 = 12 (Bit 3)
                    
                    // 계수들의 Bit 4 성분 가산
                    4'd4: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[2]} << 4)   // h2 = 25 (Bit 4)
                                             + ({{11{1'b0}}, shift_reg[5]} << 4);  // h5 = 25 (Bit 4)
                    
                    // 계수들의 Bit 5 성분 가산
                    4'd5: acc_reg <= acc_reg + ({{11{1'b0}}, shift_reg[3]} << 5)   // h3 = 34 (Bit 5)
                                             + ({{11{1'b0}}, shift_reg[4]} << 5);  // h4 = 34 (Bit 5)
                    
                    default: acc_reg <= acc_reg; // 나머지 비트(Bit 6, 7)는 모든 계수가 0이므로 가산 생략 (면적 절감)
                endcase
            end
        end
    end

    // --- 4. 최종 스케일 변환 및 포화 연산 출력 ---
    reg calc_running_d1;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            calc_running_d1 <= 1'b0;
            out_valid       <= 1'b0;
            y               <= 8'd0;
        end else begin
            calc_running_d1 <= calc_running;
            
            // 연산 상태가 종료되는 시점 포착 (in_valid 인가 후 딱 11클록째 출력)
            if (calc_running_d1 && !calc_running) begin
                out_valid <= 1'b1;
                // 정밀도 유지를 위한 7비트 우측 시프트(>>7) 및 상한 포화 연산
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
