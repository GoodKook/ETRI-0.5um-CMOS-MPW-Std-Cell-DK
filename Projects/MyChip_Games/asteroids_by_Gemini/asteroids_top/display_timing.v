module display_timing (
    input wire clk,
    input wire rst_n,
    output reg        pixel_valid, // 1: 현재 출력중인 픽셀이 유효함, 0: 무효(Blanking 구간 등)
    output wire       frame_tick   // 1프레임(128x64 픽셀) 출력이 완전히 끝나는 순간의 티커
);

    // 128x64 카운터 (외부로는 좌표를 빼지 않고 내부 연산용으로만 활용)
    reg [6:0] internal_x;
    reg [5:0] internal_y;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            internal_x  <= 7'd0;
            internal_y  <= 6'd0;
            pixel_valid <= 1'b0;
        end else begin
            // 연속적인 래스터 스캔 구동이므로 상시 유효 상태 진입
            // (만약 별도의 Blanking 타임이 필요한 하드웨어라면 이 영역에 조건문을 추가합니다)
            pixel_valid <= 1'b1; 

            if (internal_x == 7'd127) begin
                internal_x <= 7'd0;
                if (internal_y == 6'd63) begin
                    internal_y <= 6'd0;
                end else begin
                    internal_y <= internal_y + 1'b1;
                end
            end else begin
                internal_x <= internal_x + 1'b1;
            end
        end
    end

    // 128x64 화면의 가장 마지막 픽셀 스트림 위치 감지
    assign frame_tick = (internal_x == 7'd127 && internal_y == 6'd63);

endmodule
