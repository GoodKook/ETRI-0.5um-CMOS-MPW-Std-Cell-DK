module ship_module(
    input wire clk,
    input wire rst_n,
    input wire btn_left,
    input wire btn_right,
    input wire btn_thrust,
    input wire [9:0] pixel_x,
    input wire [9:0] pixel_y,
    output reg ship_draw
);

    // 고정 소수점(Fixed-point) 사용 (정수 10비트, 소수점 이하 8비트)
    reg signed [17:0] pos_x, pos_y;
    reg signed [9:0] vx, vy; // 속도
    reg [3:0] angle;          // 0~15도 (16방향 표현)

    // 화면 프레임 갱신 타이밍 (60Hz 틱 신호 가정)
    wire update_tick;
    assign update_tick = (pixel_x == 0 && pixel_y == 0); 

    // 1. 각도 제어 (회전)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) angle <= 0;
        else if (update_tick) begin
            if (btn_left)  angle <= angle + 1'b1;
            else if (btn_right) angle <= angle - 1'b1;
        end
    end

    // 2. 가속도 LUT (각도에 따른 X, Y 가속도 성분)
    reg signed [7:0] acc_x_lut [0:15];
    reg signed [7:0] acc_y_lut [0:15];
    initial begin
        // 간단한 16방향의 sin, cos 근사값 초기화 기입 필요
        acc_x_lut[0] = 8'd0;   acc_y_lut[0] = -8'd10; // 위쪽
        acc_x_lut[4] = 8'd10;  acc_y_lut[4] = 8'd0;   // 오른쪽
        // ... 나머지 방향 설정 생략
    end

    // 3. 이동 로직 (관성 및 Screen Wrapping)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pos_x <= 18'd320 << 8; // 화면 중앙
            pos_y <= 18'd240 << 8;
            vx <= 0; vy <= 0;
        end else if (update_tick) begin
            // 추진력 적용
            if (btn_thrust) begin
                vx <= vx + acc_x_lut[angle];
                vy <= vy + acc_y_lut[angle];
            end
            
            // 위치 업데이트
            pos_x <= pos_x + vx;
            pos_y <= pos_y + vy;

            // Screen Wrapping (화면 밖으로 나가면 반대편으로 나옴)
            if (pos_x[17:8] >= 640) pos_x <= 0;
            else if (pos_x[17:8] < 0) pos_x <= 18'd639 << 8;

            if (pos_y[17:8] >= 480) pos_y <= 0;
            else if (pos_y[17:8] < 0) pos_y <= 18'd479 << 8;
        end
    end

    // 4. 우주선 그리기 그리기 (간단한 박스 형태로 표현, 실제로는 각도별 픽셀 마스크 필요)
    wire [9:0] current_ship_x = pos_x[17:8];
    wire [9:0] current_ship_y = pos_y[17:8];

    always @(*) begin
        if ((pixel_x >= current_ship_x - 5) && (pixel_x <= current_ship_x + 5) &&
            (pixel_y >= current_ship_y - 5) && (pixel_y <= current_ship_y + 5))
            ship_draw = 1'b1;
        else
            ship_draw = 1'b0;
    end

endmodule
