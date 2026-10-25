module snake_game_top (
    input  wire       clk,          // 시스템 클럭
    input  wire       rst_n,        // 비동기 리셋 (Active Low)
    input  wire       btn_up,       // 상 방향 버튼
    input  wire       btn_down,     // 하 방향 버튼
    input  wire       btn_left,     // 좌 방향 버튼
    input  wire       btn_right,    // 우 방향 버튼
    
    input  wire       frame_start,  // 새 프레임 시작 동기화 신호
    output wire       pixel_valid,  // 현재 스트리밍 픽셀의 유효 구간 표시
    output wire       pixel_out,    // 클럭당 순차 출력되는 1비트 픽셀 데이터
    output wire       game_over     // 게임 오버 상태 전송 출력
);

    // 내부 제어 신호 및 인덱스 인터페이스
    wire [3:0] apple_grid_x;
    wire [2:0] apple_grid_y;
    wire [1:0] current_dir;
    wire [4:0] snake_len;
    
    // 7비트 * 16마디 = 총 112비트 압축 몸통 좌표 버스
    wire [111:0] snake_body_regs;

    // 1. 게임 제어 로직, 충돌 감지 및 상태 제어 FSM
    game_controller u_game_controller (
        .clk(clk),
        .rst_n(rst_n),
        .btn_up(btn_up),
        .btn_down(btn_down),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .apple_grid_x(apple_grid_x),
        .apple_grid_y(apple_grid_y),
        .current_dir(current_dir),
        .snake_len(snake_len),
        .snake_body_regs(snake_body_regs),
        .game_over(game_over)
    );

    // 2. 8x8 스프라이트 디코더 및 픽셀 데이터 스트리머
    pixel_streamer u_pixel_streamer (
        .clk(clk),
        .rst_n(rst_n),
        .frame_start(frame_start),
        .apple_grid_x(apple_grid_x),
        .apple_grid_y(apple_grid_y),
        .current_dir(current_dir),
        .snake_len(snake_len),
        .snake_body_regs(snake_body_regs),
        .game_over(game_over),
        .pixel_valid(pixel_valid),
        .pixel_out(pixel_out)
    );

endmodule
