module ship_logic (
    input wire clk,
    input wire rst_n,
    input wire btn_left,
    input wire btn_right,
    input wire btn_thrust,
    input wire frame_trigger,     // 게임 프레임 갱신 타이밍 (예: 60Hz 펄스)
    output reg [6:0] ship_x,      // 0 ~ 127 범위
    output reg [5:0] ship_y       // 0 ~ 63 범위
);
    // 고정 소수점 연산 (정수부 + 소수점 이하 8비트)
    reg signed [14:0] pos_x; // 7비트 정수 + 8비트 소수
    reg signed [13:0] pos_y; // 6비트 정수 + 8비트 소수
    reg signed [7:0]  vx, vy;  // 속도 (관성)
    reg [2:0] angle;          // 8방향 회전 (0~7)

    // 8방향 가속도 LUT (정수 1비트 + 소수 7비트 고정소수점)
    reg signed [7:0] acc_x [0:7];
    reg signed [7:0] acc_y [0:7];
    initial begin
        acc_x[0] = 8'd0;   acc_y[0] = -8'd4;  // 0: 위 (Up)
        acc_x[1] = 8'd3;   acc_y[1] = -8'd3;  // 1: 우상
        acc_x[2] = 8'd4;   acc_y[2] = 8'd0;   // 2: 우 (Right)
        // ... 나머지 8방향 벡터 정의
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pos_x <= 15'd64 << 8;  // 화면 중앙 (128 / 2 = 64)
            pos_y <= 14'd32 << 8;  // 화면 중앙 (64 / 2 = 32)
            vx <= 0; vy <= 0;
            angle <= 0;
        end else if (frame_trigger) begin
            // 1. 회전
            if (btn_left)  angle <= angle - 1'b1;
            if (btn_right) angle <= angle + 1'b1;

            // 2. 가속 및 관성
            if (btn_thrust) begin
                vx <= vx + acc_x[angle];
                vy <= vy + acc_y[angle];
            end

            // 3. 위치 업데이트
            pos_x <= pos_x + vx;
            pos_y <= pos_y + vy;

            // 4. Screen Wrapping (128x64 경계 처리)
            if (pos_x[14:8] >= 128) pos_x <= 0;
            else if (pos_x < 0)     pos_x <= 15'd127 << 8;

            if (pos_y[13:8] >= 64)  pos_y <= 0;
            else if (pos_y < 0)     pos_y <= 14'd63 << 8;
        end
    end

    // 정수부만 최종 출력으로 전달
    always @(*) begin
        ship_x = pos_x[14:8];
        ship_y = pos_y[13:8];
    end
endmodule
