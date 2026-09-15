// Gemini generate testbench,
//  $ iverilog -o tb_space_invaders_engine tb_space_invaders_engine.v ../space_invaders_engine/space_invaders_engine.v
//  $ ./tb_space_invaders_engine
// ------------------------------------------------------------------

`timescale 1ns / 1ps

module tb_space_invaders_engine();

    // 1. 테스트벤치 입력 신호 선언 (Reg)
    reg clk;
    reg rst_n;
    reg btn_left;
    reg btn_right;
    reg btn_fire;
    reg [9:0] vga_x;
    reg [9:0] vga_y;
    reg video_on;

    // 2. 테스트벤치 출력 신호 선언 (Wire)
    wire [2:0] rgb;

    // 3. UUT (Unit Under Test) 인스턴스화
    space_invaders_engine uut (
        .clk(clk),
        .rst_n(rst_n),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .btn_fire(btn_fire),
        .vga_x(vga_x),
        .vga_y(vga_y),
        .video_on(video_on),
        .rgb(rgb)
    );

    // 4. 클럭 생성 (25MHz 가정: 주기 40ns)
    always begin
        #20 clk = ~clk;
    end

    // 5. VGA 가상 스캔 루프 (640x480 화면 스캔 시뮬레이션)
    // 주 동기화 프로세스와 별개로 동작하여 비디오 출력을 모니터링합니다.
    integer h, v;
    initial begin
        vga_x = 0;
        vga_y = 0;
        video_on = 0;
        
        // rst_n이 풀린 이후부터 VGA 스캔 시작하도록 대기
        @(posedge rst_n);
        
        forever begin
            for (v = 0; v < 525; v = v + 1) begin        // 480 활성 + 45 블랭킹
                for (h = 0; h < 800; h = h + 1) begin    // 640 활성 + 160 블랭킹
                    vga_x = h;
                    vga_y = v;
                    
                    // 640x480 활성 영역 내부일 때만 video_on 활성화
                    if (h < 640 && v < 480)
                        video_on = 1;
                    else
                        video_on = 0;
                        
                    @(posedge clk);
                end
            end
        end
    end

    // 6. 테스트 시나리오 자극(Stimulus) 입력
    initial begin
        // 초기값 설정
        clk       = 0;
        rst_n     = 0;
        btn_left  = 0;
        btn_right = 0;
        btn_fire  = 0;

        // 시스템 리셋 대기 (100ns)
        #100;
        rst_n = 1;
        $display("[STATUS] 시스템 리셋 해제 - START 상태 진입");

        // --- 시나리오 1: START 화면에서 게임 시작 버튼(Fire) 누르기 ---
        #200;
        btn_fire = 1;
        #80; // 클럭 몇 주기 동안 누름 유지
        btn_fire = 0;
        $display("[STATUS] Fire 버튼 입력 - PLAY 상태로 전환 완료");

        // --- 시나리오 2: 플레이어 우측 이동 테스트 ---
        #500;
        btn_right = 1;
        $display("[ACTION] 오른쪽 이동 버튼(btn_right) 활성화");
        #5000; // 플레이어가 오른쪽으로 이동하도록 충분히 대기
        btn_right = 0;

        // --- 시나리오 3: 미사일 발사 및 충돌 감지 테스트 ---
        #1000;
        btn_fire = 1;
        $display("[ACTION] 미사일 발사(btn_fire) 활성화");
        #80;
        btn_fire = 0;

        // --- 시나리오 4: 게임이 진행되는 동안 출력을 모니터링하기 위해 장시간 대기 ---
        // 프레임 틱(frame_tick)이 발생하고 외계인이 움직이는 것을 관찰하기 위해 시뮬레이션 시간 확보
        #24000000;

        // 시뮬레이션 종료
        $display("[STATUS] 테스트벤치 시뮬레이션 완료");
        $finish;
    end

    // 7. 모니터링 및 디버깅 로그 출력
    // 특정 좌표(예: 플레이어 전투기가 위치한 화면 아래쪽)를 지나갈 때 RGB 색상 변화 확인
    always @(posedge clk) begin
        if (video_on && (rgb==3'b100))  // Invader
        begin
            $display("[MONITOR] Time: %0t | Coord: (%0d, %0d) | RGB Output: %b (Invader)", 
                      $time, vga_x, vga_y, rgb);
        end
        if (video_on && (rgb==3'b010))  // Cannon
        begin
            $display("[MONITOR] Time: %0t | Coord: (%0d, %0d) | RGB Output: %b (Cannon)", 
                      $time, vga_x, vga_y, rgb);
        end
        if (video_on && (rgb==3'b111))  // Bullet
        begin
            $display("[MONITOR] Time: %0t | Coord: (%0d, %0d) | RGB Output: %b (Cannon)", 
                      $time, vga_x, vga_y, rgb);
        end
    end

    initial begin
        $dumpfile("tb_space_invaders_engine.vcd");
        $dumpvars(2, uut);
    end

endmodule
