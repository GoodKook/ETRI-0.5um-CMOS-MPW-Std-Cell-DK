`timescale 1ns / 1ps

module tb_space_invaders();

    // 💡 1. DPI-C 함수 및 태스크 선언 (C++ -> Verilog 입력 추가)
    import "DPI-C" function void dpi_init_sdl();
    import "DPI-C" function void dpi_write_pixel(input int x, input int y, input int color);
    import "DPI-C" function void dpi_refresh_screen();
    import "DPI-C" function void dpi_close_sdl();
    
    // 💡 C++의 SDL_PollEvent 결과값을 읽어와 하드웨어 핀 상태를 갱신하는 엑스포트용 태스크
    import "DPI-C" function void dpi_poll_keyboard(
        output bit out_left, 
        output bit out_right, 
        output bit out_fire
    );

    // 테스트벤치 인터페이스 신호 레지스터/와이어 선언
    reg clk;
    reg rst_n;
    
    // 💡 키보드 입력과 연동될 하드웨어 버튼 레지스터
    reg btn_left;
    reg btn_right;
    reg btn_fire;

    wire lcd_write_en;
    wire [6:0] lcd_x;
    wire [5:0] lcd_y;
    wire lcd_data;

    // 🏛️ UUT (Unit Under Test) 인스턴스화
    space_invaders_engine uut (
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

    // 50MHz 시스템 마스터 클럭 생성 (주기 20ns)
    always begin
        #10 clk = ~clk;
    end

    // 💡 2. 매 프레임 스캔 완료 시점마다 키보드 입력 폴링 및 화면 리프레시
    // 화면의 가장 마지막 픽셀(127, 63) 타이밍에 무대 뒤에서 SDL 윈도우 조작
    always @(posedge clk) begin
        if (lcd_write_en) begin
            dpi_write_pixel(lcd_x, lcd_y, lcd_data);
            
            if (lcd_x == 7'd127 && lcd_y == 6'd63) begin
                // A. 실시간 화면 다시 그리기
                dpi_refresh_screen();

                // B. 💡 사용자의 실제 키보드 입력(좌/우/스페이스바)을 읽어와 RTL 핀에 바인딩
                // C++ 함수가 아웃풋으로 뱉어주는 bit 데이터(0 또는 1)를 직접 맵핑합니다.
                dpi_poll_keyboard(btn_left, btn_right, btn_fire);
            end
        end
    end

    // 💡 3. 시뮬레이션 기본 자극(Stimulus) 및 초기화 시퀀스
    initial begin
        // 하드웨어 신호 초기화 (초기에는 아무 키도 안 눌린 상태)
        clk       = 0;
        rst_n     = 0;
        btn_left  = 0;
        btn_right = 0;
        btn_fire  = 0;

        // SDL2 윈도우 그래픽 프레임버퍼 활성화
        dpi_init_sdl();
        $display("[SYSTEM] ========================================================");
        $display("[SYSTEM]  SDL2 실시간 키보드 입력 아케이드 시스템이 시작되었습니다.");
        $display("[SYSTEM]  - 방향키 [<- / ->] : 플레이어 좌우 이동");
        $display("[SYSTEM]  - [Spacebar]       : 미사일 발사 (또는 게임 시작)");
        $display("[SYSTEM] ========================================================");

        // 하드웨어 전원 리셋 해제 (100ns 후 가동시작)
        #100;
        rst_n = 1; 

        // 💡 Verilator 환경에서 키보드 입력 제어권을 유지하기 위해 무한 시뮬레이션 수행
        // 사용자가 창을 닫거나 콘솔에서 강제 중단할 때까지 키보드로 조작이 가능합니다.
        forever begin
            #1000;
        end
    end

    // 시뮬레이션 예외 안전 종료 처리
    final begin
        dpi_close_sdl();
        $display("[SYSTEM] 시뮬레이션이 성공적으로 안전 종료되었습니다.");
    end

endmodule

