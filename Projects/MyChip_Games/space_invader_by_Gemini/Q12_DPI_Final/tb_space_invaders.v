`timescale 1ns / 1ps

module tb_space_invaders();

    import "DPI-C" function void dpi_init_sdl();
    import "DPI-C" function void dpi_write_pixel(input int x, input int y, input int color);
    import "DPI-C" function void dpi_refresh_screen();
    import "DPI-C" function void dpi_close_sdl();
    import "DPI-C" function void dpi_poll_keyboard(output bit out_left, output bit out_right, output bit out_fire);

    reg clk;
    reg rst_n;
    reg btn_left;
    reg btn_right;
    reg btn_fire;

    wire lcd_write_en;
    wire [6:0] lcd_x;
    wire [5:0] lcd_y;
    wire lcd_data;

    space_invaders_engine_glcd uut (
        .clk(clk),
        .rst_n(rst_n),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .btn_fire(btn_fire),
        .lcd_write_en(lcd_write_en),
        .lcd_x(lcd_x),
        .lcd_y(lcd_y),
        .lcd_data(lcd_data)
    );

    always begin
        #10 clk = ~clk; // 50MHz 클럭 생성
    end

    // 💡 래스터 주소 버스를 실시간 모니터링하여 가상 DPI 메모리에 데이터 투하
    always @(posedge clk) begin
        if (lcd_write_en) begin
            dpi_write_pixel(lcd_x, lcd_y, lcd_data);
            if (lcd_x == 7'd127 && lcd_y == 6'd63) begin
                dpi_refresh_screen();
            end
        end
    end

    initial begin
        clk   = 0;
        rst_n = 0;
        dpi_init_sdl();

        #100;
        rst_n = 1;

        // 실행 도중 강제 중단을 맞이하기 전까지 무한 루프 구동
        forever begin
            #1000;
        end
    end

    // 💡 매 클럭 보정 시점마다 키 상태를 읽어와 와이어 변수에 피드백 가동
    always @(posedge clk) begin
        dpi_poll_keyboard(btn_left, btn_right, btn_fire);
    end

    final begin
        dpi_close_sdl();
    end

endmodule
