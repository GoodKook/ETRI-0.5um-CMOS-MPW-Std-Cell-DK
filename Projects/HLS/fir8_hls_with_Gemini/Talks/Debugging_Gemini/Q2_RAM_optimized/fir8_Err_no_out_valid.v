module fir8 (
    input wire clk,          // 시스템 클록
    input wire rst_n,        // 비동기 액티브 로우 리셋
    input wire in_valid,     // 입력 데이터 유효 신호 (최소 8사이클 간격 필요)
    input wire [7:0] x,      // 8비트 입력 데이터
    output reg out_valid,    // 출력 데이터 유효 신호
    output reg [7:0] y       // 8비트 최적화 출력 데이터
);

    // --- [내부 RAM 정의] ---
    // 합성 툴(Synthesis Tool)이 전용 RAM 블록으로 유도하도록 선언된 2차원 배열
    reg [7:0] data_ram [0:7];
    reg [2:0] wr_ptr; // RAM에 새로운 데이터가 써질 위치를 가리키는 포인터

    // --- [시퀀스 제어 카운터 및 제어 플래그] ---
    reg [2:0] cnt;
    reg       busy;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            cnt    <= 3'd0;
            busy   <= 1'b0;
            wr_ptr <= 3'd0;
        end else begin
            if (in_valid) begin
                busy   <= 1'b1;
                cnt    <= 3'd0;
                wr_ptr <= wr_ptr + 1'b1; // 새로운 데이터 유입 시 포인터 증가 (링 버퍼)
            end else if (busy) begin
                cnt <= cnt + 1'b1;
                if (cnt == 3'd7) begin
                    busy <= 1'b0;
                end
            end
        end
    end

    // --- [RAM 쓰기 로직] ---
    always @(posedge clk) begin
        if (in_valid) begin
            data_ram[wr_ptr] <= x;
        end
    end

    // --- [RAM 읽기 주소 생성 및 데이터 출력] ---
    // 최신 데이터(방금 입력된 wr_ptr 위치)부터 역순으로 읽어와 COEF_0~7과 매핑되도록 주소 계산
    // 1클록 지연되어 나오는 RAM 데이터의 타이밍을 맞추기 위해 주소를 미리 계산합니다.
    wire [2:0] rd_ptr = wr_ptr - cnt;
    reg [7:0]  ram_rd_data;

    always @(posedge clk) begin
        if (in_valid || busy) begin
            ram_rd_data <= data_ram[rd_ptr];
        end
    end

    // --- [ROM 계수 파이프라인 매핑] ---
    // RAM에서 데이터를 읽어오는 데 1사이클이 소요되므로, 계수도 카운터의 1사이클 지연 값(cnt_d1)으로 선택합니다.
    reg [2:0] cnt_d1;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) cnt_d1 <= 3'd0;
        else        cnt_d1 <= cnt;
    end

    reg [7:0] coef_mux;
    always @(*) begin
        case (cnt_d1)
            3'd0: coef_mux = 8'd4;
            3'd1: coef_mux = 8'd12;
            3'd2: coef_mux = 8'd25;
            3'd3: coef_mux = 8'd34;
            3'd4: coef_mux = 8'd34;
            3'd5: coef_mux = 8'd25;
            3'd6: coef_mux = 8'd12;
            3'd7: coef_mux = 8'd4;
            default: coef_mux = 8'd0;
        endcase
    end

    // --- [Stage 1: 공유 곱셈기] ---
    reg [15:0] prod;
    reg        prod_valid;
    reg [2:0]  cnt_d2;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            prod       <= 16'd0;
            prod_valid <= 1'b0;
            cnt_d2     <= 3'd0;
        end else begin
            // RAM 읽기 유효구간 신호를 1사이클 지연시켜 곱셈기 유효 신호로 활용
            prod_valid <= (cnt_d1 == 3'd0 && busy) ? 1'b1 : busy; 
            cnt_d2     <= cnt_d1;
            
            if (prod_valid) begin
                prod <= ram_rd_data * coef_mux;
            end
        end
    end

    // --- [Stage 2: 시리얼 누산기 (Accumulator)] ---
    reg [18:0] acc;
    reg        acc_valid;
    reg [2:0]  cnt_d3;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc_valid <= 1'b0;
            cnt_d3     <= 3'd0;
        end else begin
            acc_valid <= prod_valid;
            cnt_d3     <= cnt_d2;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            acc <= 19'd0;
        end else if (acc_valid) begin
            if (cnt_d3 == 3'd0) begin
                acc <= 19'd64 + prod; // 반올림 값 초기화 후 첫 번째 연산 누적
            end else begin
                acc <= acc + prod;    // 연속 누산
            end
        end
    end

    // --- [Stage 3: 포화 연산 및 최종 출력] ---
    reg out_valid_next;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out_valid_next <= 1'b0;
        end else begin
            // 모든 탭(0~7)의 곱셈이 누산기에 최종 반영되는 순간 타이밍 캐치
            out_valid_next <= acc_valid && (cnt_d3 == 3'd7);
        end
    end

    wire [11:0] shifted_sum = acc[18:7];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            y         <= 8'd0;
            out_valid <= 1'b0;
        end else begin
            out_valid <= out_valid_next;
            if (out_valid_next) begin
                if (shifted_sum > 12'd255) begin
                    y <= 8'hFF;
                end else begin
                    y <= shifted_sum[7:0];
                end
            end
        end
    end

endmodule
