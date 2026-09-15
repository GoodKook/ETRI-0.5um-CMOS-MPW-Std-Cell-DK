#include "sc_glcd128x64_TLM.h"
#include <iostream>
#include <verilated.h> // Verilator 시스템 종료 제어 플래그용 헤더 인클루드

sc_glcd128x64_TLM::sc_glcd128x64_TLM(sc_module_name name) 
    : sc_module(name), m_window(NULL), m_renderer(NULL), m_texture(NULL) {
    
    // 128x64 해상도 사양 가상 비디오 RAM(VRAM) 초기 버퍼 비우기 (0: Black)
    for(int y = 0; y < 64; y++) {
        for(int x = 0; x < 128; x++) {
            m_screen_buffer[y][x] = false;
        }
    }

    // SDL2 멀티미디어 서브시스템 초기화 활성화
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_EVENTS) < 0) {
        std::cerr << "[GLCD ERROR] SDL2 엔진 하드웨어 초기화 실패: " << SDL_GetError() << std::endl;
        return;
    }

    // 💡 실제 임베디드 도트 비율인 128x64 물리 해상도를 1:1로 맞춘 정밀 윈도우 생성
    m_window = SDL_CreateWindow("SystemC Space Invaders 128x64 GLCD",
                                SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                                128, 64, SDL_WINDOW_SHOWN);
    if (!m_window) {
        std::cerr << "[GLCD ERROR] 그래픽 창 할당 실패: " << SDL_GetError() << std::endl;
        return;
    }

    // GPU 하드웨어 가속기 및 프레임 수직동기화(PRESENTVSYNC) 제어 레이어 바인딩
    m_renderer = SDL_CreateRenderer(m_window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!m_renderer) {
         m_renderer = SDL_CreateRenderer(m_window, -1, SDL_RENDERER_SOFTWARE);
    }

    // 실시간 비디오 픽셀 업데이트를 위한 ARGB 스트리밍 텍스처 메모리 매핑
    m_texture = SDL_CreateTexture(m_renderer, SDL_PIXELFORMAT_ARGB8888, 
                                  SDL_TEXTUREACCESS_STREAMING, 128, 64);

    // RTL 데이터 버스 유효 신호 감지용 SC_METHOD 등록 (클럭 동기식 데이터 스트리밍)
    SC_METHOD(write_data_process);
    sensitive << clk.pos();

    // 독자 구동형 실시간 60Hz 그래픽 하드웨어 디스플레이 시현 스레드 가동
    SC_THREAD(update_screen_process);
}

// 소멸자: 에뮬레이터 종료 요청 시 OS에 그래픽 커널 컨텍스트 자원 안전하게 반환
sc_glcd128x64_TLM::~sc_glcd128x64_TLM() {
    if (m_texture)  SDL_DestroyTexture(m_texture);
    if (m_renderer) SDL_DestroyRenderer(m_renderer);
    if (m_window)   SDL_DestroyWindow(m_window);
    SDL_Quit();
}

// 동기식 버스 모니터링: Verilog RTL이 스캔하여 찍어주는 주소를 추적해 가상 메모리에 기록
void sc_glcd128x64_TLM::write_data_process() {
    if (rst_n.read() == false) {
        for(int y = 0; y < 64; y++) {
            for(int x = 0; x < 128; x++) {
                m_screen_buffer[y][x] = false;
            }
        }
    } 
    else if (lcd_write_en.read() == true) {
        unsigned int x = lcd_x.read().to_uint();
        unsigned int y = lcd_y.read().to_uint();
        if (x < 128 && y < 64) {
            m_screen_buffer[y][x] = lcd_data.read();
        }
    }
}

// 60Hz 디스플레이 재생 스레드: 가상 비디오 버퍼를 ARGB 비트맵으로 벼려 화면에 시현
void sc_glcd128x64_TLM::update_screen_process() {
    Uint32 pixels[128 * 64];

    while (true) {
        wait(16.6, SC_MS); // 가상 임베디드 패널 사양 규격인 60Hz 연동 대기 스케줄링

        // [윈도우 관리 이벤트 처리 루프] 창 이동이나 최소화 시 발생하는 호스트 프리징 현상 해결
        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            if (event.type == SDL_QUIT) {
                std::cout << "[GLCD] 사용자가 시뮬레이터 창을 닫아 프로세스를 조기 종료합니다." << std::endl;
                // Verilator 시뮬레이션 종료 동기화 플래그 참(true) 주입
                Verilated::gotFinish(true); 
                sc_stop();
                return;
            }
        }

        // 논리 플래그 메모리 상태를 SDL 드라이브용 아케이드 컬러 매핑으로 번역
        for (int y = 0; y < 64; ++y) {
            for (int x = 0; x < 128; ++x) {
                // 도트 온(1) : 흰색(0xFFFFFFFF), 도트 오프(0) : 검은색(0xFF000000)
                pixels[y * 128 + x] = m_screen_buffer[y][x] ? 0xFFFFFFFF : 0xFF000000;
            }
        }

        // 텍스처 프레임 갱신 및 1:1 하드웨어 렌더 가동
        SDL_UpdateTexture(m_texture, NULL, pixels, 128 * sizeof(Uint32));
        SDL_RenderClear(m_renderer);
        SDL_RenderCopy(m_renderer, m_texture, NULL, NULL);
        SDL_RenderPresent(m_renderer);
    }
}
