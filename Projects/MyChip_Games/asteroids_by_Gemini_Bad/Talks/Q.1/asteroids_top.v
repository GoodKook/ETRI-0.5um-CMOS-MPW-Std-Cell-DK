module asteroids_top(
    input wire clk,           // 50MHz 또는 100MHz 시스템 클럭
    input wire rst_n,         // 리셋 (Active Low)
    input wire btn_left,      // 좌회전 버튼
    input wire btn_right,     // 우회전 버튼
    input wire btn_thrust,    // 추진(앞으로 이동) 버튼
    input wire btn_fire,      // 총알 발사 버튼
    output wire hsync,        // VGA HSYNC
    output wire vsync,        // VGA VSYNC
    output list [3:0] vga_r,  // VGA Red 4bit
    output list [3:0] vga_g,  // VGA Green 4bit
    output list [3:0] vga_b   // VGA Blue 4bit
);

    // 클럭 분주 (50MHz -> 25MHz VGA 픽셀 클럭)
    reg pix_clk;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) pix_clk <= 0;
        else pix_clk <= ~pix_clk;
    end

    wire [9:0] pixel_x, pixel_y;
    wire video_on;
    
    // 1. VGA 컨트롤러 인스턴스
    vga_controller vga_inst (
        .clk(pix_clk), .rst_n(rst_n),
        .hsync(hsync), .vsync(vsync),
        .pixel_x(pixel_x), .pixel_y(pixel_y),
        .video_on(video_on)
    );

    // 우주선 위치 및 그리기 신호
    wire [9:0] ship_x, ship_y;
    wire ship_draw;

    // 2. 우주선 모듈 인스턴스
    ship_module ship_inst (
        .clk(clk), .rst_n(rst_n),
        .btn_left(btn_left), .btn_right(btn_right), .btn_thrust(btn_thrust),
        .pixel_x(pixel_x), .pixel_y(pixel_y),
        .ship_draw(ship_draw)
    );

    // 3. RGB 출력 제어 (간단한 색상 지정)
    assign vga_r = (video_on && ship_draw) ? 4'hF : 4'h0; // 우주선은 빨간색
    assign vga_g = (video_on && ship_draw) ? 4'hF : 4'h0;
    assign vga_b = (video_on && ship_draw) ? 4'hF : 4'h0;

endmodule
