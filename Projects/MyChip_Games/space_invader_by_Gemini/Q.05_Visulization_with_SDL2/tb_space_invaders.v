// Q5. space_invaders_engine의 베릴로그 테스트벤치에 SDL을 사용하여 시각화 할 수 있도록 할것
//----------------------------------------------------------------------
// Filename: tb_space_invaders.v
//----------------------------------------------------------------------

`timescale 1ns / 1ps

module tb_space_invaders();

    // 💡 DPI-C 함수 가져오기
    import "DPI-C" function void dpi_init_sdl();
    import "DPI-C" function void dpi_write_pixel(input int x, input int y, input int color);
    import "DPI-C" function void dpi_refresh_screen();
    import "DPI-C" function void dpi_close_sdl();

    // 테스트벤치 연결 와이어/레지스터 선언
    reg clk;
    reg rst_n;
    reg btn_left;
    reg btn_right;
    reg btn_fire;

    wire lcd_write_en;
    wire [6:0] lcd_x;
    wire [5:0] lcd_y;
    wire lcd_data;

    // UUT 인스턴스화
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

    // 50MHz 클럭 생성 (주기 20ns)
    always begin
        #10 clk = ~clk;
    end

    // 💡 모니터링 로직: RTL이 뿌려주는 주소 타이밍에 실시간으로 DPI-C 함수 호출
    always @(posedge clk) begin
        if (lcd_write_en) begin
            // 픽셀 값 전송
            dpi_write_pixel(lcd_x, lcd_y, lcd_data);
            
            // 화면의 우측 맨 하단 끝(127, 63) 픽셀 스캔이 완료되면 SDL 화면 갱신
            if (lcd_x == 7'd127 && lcd_y == 6'd63) begin
                dpi_refresh_screen();
            end
        end
    end

    // 시뮬레이션 자극 입력
    initial begin
        // 초기화
        clk       = 0;
        rst_n     = 0;
        btn_left  = 0;
        btn_right = 0;
        btn_fire  = 0;

        // 💡 시뮬레이션 시작 시 SDL 창 초기화
        dpi_init_sdl();
        $display("[TB] SDL2 실시간 그래픽 디스플레이 모듈이 활성화되었습니다.");

        #100;
        rst_n = 1; // 리셋 해제 -> START (체크무늬 대기화면) 진입

        // 대기 화면 관찰을 위해 잠깐 대기
        #5_000_000;

        // 미사일 버튼(btn_fire) 입력하여 PLAY 상태로 전환
        $display("[TB] btn_fire 입력 -> PLAY 모드 시작");
        btn_fire = 1; #40; btn_fire = 0;

        // 플레이어 우로우측 이동 시뮬레이션
        btn_right = 1;
        #10_000_000;
        btn_right = 0;

        // 미사일 발사 공격 시뮬레이션
        btn_fire = 1; #40; btn_fire = 0;
        
        // 외계인들이 좌우로 이동하는 모습을 그래픽 화면으로 관찰할 수 있도록 긴 시간 유지
        #50_000_000_000;

        // 시뮬레이션 종료 처리 및 자원 반환
        $display("[TB] 테스트벤치 시뮬레이션 완료.");
        dpi_close_sdl();
        $finish;
    end

endmodule
