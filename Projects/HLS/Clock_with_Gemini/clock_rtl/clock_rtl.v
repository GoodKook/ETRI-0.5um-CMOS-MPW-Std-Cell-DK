module clock_rtl (
    input  wire       clk,      // 시스템 클락
    input  wire       rst_n,    // 비동기 액티브 로우 리셋 (하드웨어 초기화)
    input  wire       clear,    // 시계 초기화 신호 (00:00:00)
    input  wire       start,    // 시계 가동 신호 (1 = 매 클락마다 1초씩 증가)
    output reg  [4:0] hh,       // 시간 출력 (0 ~ 23 표현을 위해 5비트)
    output reg  [5:0] mm,       // 분 출력 (0 ~ 59 표현을 위해 6비트)
    output reg  [5:0] ss        // 초 출력 (0 ~ 59 표현을 위해 6비트)
);

    // C++의 static 변수에 대응하는 내부 레지스터 선언
    reg [4:0] r_hh;
    reg [5:0] r_mm;
    reg [5:0] r_ss;

    // 시계 카운터 로직
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            r_hh <= 5'd0;
            r_mm <= 6'd0;
            r_ss <= 6'd0;
        end
        else if (clear) begin
            r_hh <= 5'd0;
            r_mm <= 6'd0;
            r_ss <= 6'd0;
        end
        else if (start) begin
            if (r_ss == 6'd59) begin
                r_ss <= 6'd0;
                if (r_mm == 6'd59) begin
                    r_mm <= 6'd0;
                    if (r_hh == 5'd23) begin
                        r_hh <= 5'd0;
                    end
                    else begin
                        r_hh <= r_hh + 5'd1;
                    end
                end
                else begin
                    r_mm <= r_mm + 6'd1;
                end
            end
            else begin
                r_ss <= r_ss + 6'd1;
            end
        end
    end

    assign hh = r_hh;
    assign mm = r_mm;
    assign ss = r_ss;

//    // 출력 연결 (조합 회로 또는 레지스터 할당)
//    always @(posedge clk or negedge rst_n) begin
//        if (!rst_n) begin
//            hh <= 5'd0;
//            mm <= 6'd0;
//            ss <= 6'd0;
//        end
//        else begin
//            hh <= r_hh;
//            mm <= r_mm;
//            ss <= r_ss;
//        end
//    end

endmodule
