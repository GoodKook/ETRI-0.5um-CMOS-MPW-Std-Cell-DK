//
// Filename: sim_display.cpp
//
//---------------------------------------------------------------------
#include <SDL2/SDL.h>
#include <iostream>
#include <cstring>

// ---------------------------------------------------------------------
// 💡 Verilog DPI-C 링크용 외부 함수 프로토타입 선언 (C-Linkage 규칙 명시)
// ---------------------------------------------------------------------
extern "C" void dpi_init_sdl();
extern "C" void dpi_write_pixel(int x, int y, int color);
extern "C" void dpi_refresh_screen();
extern "C" void dpi_close_sdl();
extern "C" void dpi_poll_keyboard(unsigned char* out_left, unsigned char* out_right, unsigned char* out_fire);

// 가상 디스플레이 내부 상태 관리 전역 변수
static SDL_Window*   window   = nullptr;
static SDL_Renderer* renderer = nullptr;
static SDL_Texture*  texture  = nullptr;

// 128x64 크기의 32비트 ARGB 가상 프레임 버퍼
static Uint32 pixel_buffer[128 * 64]; 

// ---------------------------------------------------------------------
// 1. SDL2 그래픽스 및 가상 서브시스템 초기화
// ---------------------------------------------------------------------
void dpi_init_sdl() {
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        std::cerr << "[DPI ERROR] SDL 초기화 실패: " << SDL_GetError() << std::endl;
        return;
    }

    // 128x64 픽셀은 눈에 너무 작으므로 화면 가독성을 위해 4배 확대(512x256) 창 생성
    window = SDL_CreateWindow("Verilog Space Invaders - SDL2 Realtime Emulator",
                              SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                              512, 256, SDL_WINDOW_SHOWN);
    if (!window) {
        std::cerr << "[DPI ERROR] 윈도우 생성 실패: " << SDL_GetError() << std::endl;
        return;
    }

    renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    if (!renderer) {
        std::cerr << "[DPI ERROR] 렌더러 생성 실패: " << SDL_GetError() << std::endl;
        return;
    }

    // 128x64 오리지널 도트 해상도로 스트리밍 텍스처 바인딩
    texture = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_ARGB8888, 
                                 SDL_TEXTUREACCESS_STREAMING, 128, 64);
    if (!texture) {
        std::cerr << "[DPI ERROR] 텍스처 생성 실패: " << SDL_GetError() << std::endl;
        return;
    }

    // 검은색 화면으로 버퍼 초기화
    std::memset(pixel_buffer, 0, sizeof(pixel_buffer));
    std::cout << "[DPI SUCCESS] SDL2 윈도우 스크린 디스플레이 초기화 완료." << std::endl;
}

// ---------------------------------------------------------------------
// 2. RTL 스캔 좌표 기반 픽셀 기록 함수
// ---------------------------------------------------------------------
void dpi_write_pixel(int x, int y, int color) {
    if (x >= 0 && x < 128 && y >= 0 && y < 64) {
        // Verilog에서 넘어온 픽셀 신호가 1이면 흰색(0xFFFFFFFF), 0이면 검은색(0xFF000000)
        pixel_buffer[y * 128 + x] = color ? 0xFFFFFFFF : 0xFF000000;
    }
}

// ---------------------------------------------------------------------
// 3. 디스플레이 화면 리프레시 및 시현
// ---------------------------------------------------------------------
void dpi_refresh_screen() {
    // 텍스처 메모리를 현재 시뮬레이션 프레임버퍼 데이터로 업데이트
    SDL_UpdateTexture(texture, nullptr, pixel_buffer, 128 * sizeof(Uint32));
    
    // 화면 초기화 후 128x64 비트맵을 512x256 해상도 스케일로 늘려 하드웨어 보정 복사
    SDL_RenderClear(renderer);
    SDL_RenderCopy(renderer, texture, nullptr, nullptr);
    SDL_RenderPresent(renderer);
}

// ---------------------------------------------------------------------
// 4. 💡 호스트 PC 키보드 상태 감시 및 Verilog 입력 레지스터 피드백 매핑
// ---------------------------------------------------------------------
void dpi_poll_keyboard(unsigned char* out_left, unsigned char* out_right, unsigned char* out_fire) {
    SDL_Event event;

    // 창 닫기 버튼(X) 등의 비정상 프로세스 인터럽트 이벤트 핸들링 예외 처리
    while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            std::cout << "[DPI] 사용자가 윈도우 창을 종료하여 시뮬레이션을 중단합니다." << std::endl;
            dpi_close_sdl();
            std::exit(0);
        }
    }

    // 💡 호스트 시스템 키보드의 물리적 비동기 입력 상태 스냅샷 로드
    const Uint8* state = SDL_GetKeyboardState(nullptr);

    // SDL 스캔코드를 감지하여 참이면 Verilog 아웃풋 포인터 핀에 High(1) 신호 브로드캐스트
    // 거짓(안 누름)이면 Low(0) 신호를 주입합니다.
    *out_left  = state[SDL_SCANCODE_LEFT]  ? 1 : 0;
    *out_right = state[SDL_SCANCODE_RIGHT] ? 1 : 0;
    *out_fire  = state[SDL_SCANCODE_SPACE] ? 1 : 0;
}

// ---------------------------------------------------------------------
// 5. 시뮬레이션 종료 시 그래픽 엔진 자원 완전히 반환
// ---------------------------------------------------------------------
void dpi_close_sdl() {
    if (texture)  { SDL_DestroyTexture(texture);  texture  = nullptr; }
    if (renderer) { SDL_DestroyRenderer(renderer); renderer = nullptr; }
    if (window)   { SDL_DestroyWindow(window);   window   = nullptr; }
    SDL_Quit();
    std::cout << "[DPI] SDL2 서브시스템 자원 반환 완료." << std::endl;
}
