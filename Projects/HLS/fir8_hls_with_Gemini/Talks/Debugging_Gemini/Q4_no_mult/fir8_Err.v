module fir8 (
    input wire clk,          // 시스템 클록
    input wire rst_n,        // 비동기 액티브 로우 리셋
    input wire in_valid,     // 입력 데이터 유효 신호 (최소 8사이클 간격 필요)
    input wire [7:0] x,      // 8비트 입력 데이터
    output reg out_valid,    // 출력 데이터 유효 신호
    output reg [7:0] y       // 8비트 최적화 출력 데이터
);

    // --- [내부 데이터 메모리: SRL 자원 매핑 유도] ---
    reg [7:0] data_mem [0:7];
    integer i;

    // --- [시퀀스 제어 카운터 및 busy 플래그] ---
    reg [2:0] cnt;
    reg       busy;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt  <= 3'd0;
            busy <= 1'b0;
            for (i = 0; i < 8; i = i + 1) begin
                data_mem[i] <= 8'd0;
            end
        end else begin
            if (in_valid) begin
                busy <= 1'b1;
                cnt  <= 3'd0;
                // 새 데이터 유입 시 순차 시프트
                data_mem[0] <= x;
                data_mem[1] <= data_mem[0];
                data_mem[2] <= data_mem[1];
                data_mem[3] <= data_mem[2];
                data_mem[4] <= data_mem[3];
                data_mem[5] <= data_mem[4];
                data_mem[6] <= data_mem[5];
                data_mem[7] <= data_mem[6];
            end else if (busy) begin
                cnt <= cnt + 1'b1;
                if (cnt == 3'd7) begin
                    busy <= 1'b0;
                end
            end
        end
    end

    // --- [조합 회로 기반 데이터 MUX] ---
    reg [7:0] selected_data;
    always @(*) begin
        case (cnt)
            3'd0: selected_data = data_mem[0]; // x[n]
            3'd1: selected_data = data_mem[1]; // x[n-1]
            3'd2: selected_data = data_mem[2]; // x[n-2]
            3'd3: selected_data = data_mem[3]; // x[n-3]
            3'd4: selected_data = data_mem[4]; // x[n-4]
            3'd5: selected_data = data_mem[5]; // x[n-5]
            3'd6: selected_data = data_mem[6]; // x[n-6]
            3'd7: selected_data = data_mem[7]; // x[n-7]
            default: selected_data = 8'd0;
        endcase
    end

    // --- [조합 회로 기반 Shift-Add 분해 로직] ---
    // 각 데이터 블록을 계수 형태에 맞춰 미리 시프트한 후 합산 값을 구합니다.
    // 입력이 8비트이므로 최대 5비트 시프트(<<5)를 고려하여 14비트로 확장합니다.
    reg [13:0] shifted_val;
    always @(*) begin
        case (cnt)
            // COEF_0, COEF_7 = 4 (<<2)
            3'd0, 3'd7: shifted_val = {6'd0, selected_data} << 2;
            
            // COEF_1, COEF_6 = 12 (<<3 + <<2)
            3'd1, 3'd6: shifted_val = ({6'd0, selected_data} << 3) + ({6'd0, selected_data} << 2);
            
            // COEF_2, COEF_5 = 25 (<<4 + <<3 + x)
            3'd2, 3'd5: shifted_val = ({6'd0, selected_data} << 4) + ({6'd0, selected_data} << 3) + {6'd0, selected_data};
            
            // COEF_3, COEF_4 = 34 (<<5 + <<1)
            3'd3, 3'd4: shifted_val = ({6'd0, selected_data} << 5) + ({6'd0, selected_data} << 1);
            
            default:    shifted_val = 14'd0;
        endcase
    end

    // --- [파이프라인 제어 신호 지연] ---
    // 곱셈기 레지스터 단이 생략되었으므로, 제어 신호는 1단계만 지연(d1)하여 누산기로 보냅니다.
    reg       busy_d1;
    reg [2:0] cnt_d1;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            busy_d1 <= 1'b0;
            cnt_d1  <= 3'd0;
        end else begin
            busy_d1 <= in_valid || busy;
            cnt_d1  <= cnt;
        end
    end

    // --- [시리얼 누산기 (Accumulator)] ---
    // shifted_val(조합회로 결과)이 다음 클록 엣지에서 acc 레지스터에 누적됩니다.
    reg [18:0] acc;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc <= 19'd0;
        end else if (busy_d1) begin
            if (cnt_d1 == 3'd0) begin
                acc <= 19'd64 + {5'd0, shifted_val}; // 첫 탭(x[n]*4) 진입 시 반올림 초기값(+64) 세팅
            end else begin
                acc <= acc + {5'd0, shifted_sum_target}; // 1~7번 탭 결과 순차 누산
            end
        end
    end
    
    // 코드 가독성을 위해 누산 처리에 매핑할 내부 와이어 선언
    wire [13:0] shifted_sum_target = shifted_val;

    // --- [포화 연산 및 최종 출력] ---
    wire [11:0] shifted_sum = acc[18:7];
    // cnt_d1이 7일 때 마지막 탭 연산이 acc 레지스터에 저장 완료됩니다.
    wire        out_valid_pulse = busy_d1 && (cnt_d1 == 3'd7); 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y         <= 8'd0;
            out_valid <= 1'b0;
        end else begin
            out_valid <= out_valid_pulse;
            if (out_valid_pulse) begin
                if (shifted_sum > 12'd255) begin
                    y <= 8'hFF;
                end else begin
                    y <= shifted_sum[7:0];
                end
            end
        end
    end

endmodule
