module asteroids_top (
    input wire clk,           // 도트 픽셀 클럭 입력
    input wire rst_n,         // 리셋 신호
    // 직관적으로 분리된 개별 버튼 입력
    input wire btn_left,      // 좌회전
    input wire btn_right,     // 우회전
    input wire btn_thrust,    // 우주선 전진 추진
    input wire btn_fire,      // 미사일 발사
    // 래스터 스트림 출력
    output wire pixel_valid,  // 하드웨어 싱크용 유효 플래그 출력
    output wire pixel_data    // 스트리밍 픽셀 데이터 도트 출력
);

    wire frame_tick;

    // 1. 유효 구간 및 프레임 틱 제어 타이머
    display_timing u_timing (
        .clk(clk),
        .rst_n(rst_n),
        .pixel_valid(pixel_valid),
        .frame_tick(frame_tick)
    );

    // 2. 동기화된 내부 스캔 기반 게임 코어
    asteroids_game u_game (
        .clk(clk),
        .rst_n(rst_n),
        .frame_tick(frame_tick),
        // 분리된 버튼 포트를 일대일로 투명하게 연결
        .btn_left(btn_left),
        .btn_right(btn_right),
        .btn_thrust(btn_thrust),
        .btn_fire(btn_fire),
        .pixel_data(pixel_data)
    );

endmodule
