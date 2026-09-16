// Q3. Write testbench in SystemC
//-----------------------------------------------------------------------------
// Filename: tb_space_invaders.cpp
//-----------------------------------------------------------------------------

#include "tb_space_invaders.h"

// 1. 25MHz 클럭 생성 (40ns 주기)
void tb_space_invaders::clock_process() {
    while (true) {
        clk.write(false);
        wait(20, SC_NS);
        clk.write(true);
        wait(20, SC_NS);
    }
}

// 2. 가상 VGA 디스플레이 래스터 스캔 시뮬레이션 (640x480 테두리 영역 포함)
void tb_space_invaders::vga_scan_process() {
    vga_x.write(0);
    vga_y.write(0);
    video_on.write(false);

    // 리셋 해제될 때까지 대기
    wait(rst_n.value_changed_to(true));

    while (true) {
        for (int v = 0; v < 525; v++) {        // 480 활성 + 45 블랭킹
            for (int h = 0; h < 800; h++) {    // 640 활성 + 160 블랭킹
                vga_x.write(h);
                vga_y.write(v);

                if (h < 640 && v < 480)
                    video_on.write(true);
                else
                    video_on.write(false);

                wait(clk.pos()); // 다음 클럭 에지까지 대기
            }
        }
    }
}

// 3. 테스트 시나리오 시극(Stimulus) 제어
void tb_space_invaders::stimulus_process() {
    // 초기 핀 상태 설정
    rst_n.write(false);
    btn_left.write(false);
    btn_right.write(false);
    btn_fire.write(false);
    wait(100, SC_NS);

    // 리셋 해제 -> START 상태 진입
    rst_n.write(true);
    cout << "@ " << sc_time_stamp() << " [STATUS] 리셋 해제 -> START 상태" << endl;
    wait(200, SC_NS);

    // --- 시나리오 1: 미사일 키를 눌러 게임 시작 (PLAY 상태 전환) ---
    btn_fire.write(true);
    wait(80, SC_NS);
    btn_fire.write(false);
    cout << "@ " << sc_time_stamp() << " [ACTION] Fire 입력 -> PLAY 상태 전환 유도" << endl;
    wait(500, SC_NS);

    // --- 시나리오 2: 우측 이동 기능 테스트 ---
    btn_right.write(true);
    cout << "@ " << sc_time_stamp() << " [ACTION] 우측 이동(btn_right) 활성화" << endl;
    wait(5000, SC_NS);
    btn_right.write(false);
    wait(1000, SC_NS);

    // --- 시나리오 3: 게임 도중 공격 미사일 발사 ---
    btn_fire.write(true);
    cout << "@ " << sc_time_stamp() << " [ACTION] 미사일 공격(btn_fire)" << endl;
    wait(80, SC_NS);
    btn_fire.write(false);

    // 하드웨어 로직 변동(외계인 이동 등)을 관찰하기 위해 충분히 시뮬레이션 유지
    wait(100, SC_US);

    cout << "@ " << sc_time_stamp() << " [STATUS] SystemC 시뮬레이션 시나리오 종료" << endl;
    sc_stop(); 
}

// 4. 데이터 모니터링 (출력값 검증 로그)
void tb_space_invaders::monitor_process() {
    // 플레이어 전투기가 조준선 근처(예: X=320, Y=440)를 스캔할 때 출력 데이터 감시
    if (video_on.read() && (vga_y.read() == 440) && (vga_x.read() == 320)) {
        cout << "@ " << sc_time_stamp() 
             << " [MONITOR] 좌표 (320, 440) | RGB 출력값: " 
             << rgb.read().to_string(SC_BIN) << endl;
    }
}
