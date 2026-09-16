// Q12. 고전 아케이드 게임 Space Invader를 합성 가능한 베릴로그 코드로 작성하라. 테스트벤치는 C++ 의 DPI 로 작성 하여야 하며 그래픽 처리에 SDL2를 사용하여 테스트 벤치에 내장할것. 외계인을 처치할 때마다 점수가 누적되어 상단에 표출되는 점수(Score) 카운터 레지스터 및 폰트 매핑하고 단순 사각형 도트가 아닌, 8비트 고전 아케이드 에일리언 외형을 렌더링하기 위한 Sprite ROM 내부 배열 추가하며 아군 우주선이 피격당했을 때 기회가 차감되는 목숨(Life) 시스템 FSM 보완한 전체 코드를 작성하라. 베릴로그 RTL 코드는 물론 테스트벤치와 Makefile를 모두 보여다오.
// ---------------------------------------------------------
// Filename: tb_space_invaders.v
// ---------------------------------------------------------

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
