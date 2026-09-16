// Q12. 고전 아케이드 게임 Space Invader를 합성 가능한 베릴로그 코드로 작성하라. 테스트벤치는 C++ 의 DPI 로 작성 하여야 하며 그래픽 처리에 SDL2를 사용하여 테스트 벤치에 내장할것. 외계인을 처치할 때마다 점수가 누적되어 상단에 표출되는 점수(Score) 카운터 레지스터 및 폰트 매핑하고 단순 사각형 도트가 아닌, 8비트 고전 아케이드 에일리언 외형을 렌더링하기 위한 Sprite ROM 내부 배열 추가하며 아군 우주선이 피격당했을 때 기회가 차감되는 목숨(Life) 시스템 FSM 보완한 전체 코드를 작성하라. 베릴로그 RTL 코드는 물론 테스트벤치와 Makefile를 모두 보여다오.
// ---------------------------------------------------------
// Filename: sim_display.cpp
// ---------------------------------------------------------

#include <SDL2/SDL.h>
#include <iostream>
#include <cstring>

extern "C" void dpi_init_sdl();
extern "C" void dpi_write_pixel(int x, int y, int color);
extern "C" void dpi_refresh_screen();
extern "C" void dpi_close_sdl();
extern "C" void dpi_poll_keyboard(unsigned char* out_left, unsigned char* out_right, unsigned char* out_fire);

static SDL_Window*   window   = nullptr;
static SDL_Renderer* renderer = nullptr;
static SDL_Texture*  texture  = nullptr;
static Uint32        pixel_buffer[128 * 64]; 

void dpi_init_sdl() {
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_EVENTS) < 0) {
        std::cerr << "[DPI ERROR] SDL 초기화 실패: " << SDL_GetError() << std::endl;
        return;
    }
    // 1:1 오리지널 물리 해상도 매핑 창 생성
    window = SDL_CreateWindow("Verilog Space Invaders - DPI-C SDL2",
                              SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                              128, 64, SDL_WINDOW_SHOWN);
    renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
    if (!renderer) renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_SOFTWARE);
    texture  = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_ARGB8888, SDL_TEXTUREACCESS_STREAMING, 128, 64);
    std::memset(pixel_buffer, 0, sizeof(pixel_buffer));
}

void dpi_write_pixel(int x, int y, int color) {
    if (x >= 0 && x < 128 && y >= 0 && y < 64) {
        pixel_buffer[y * 128 + x] = color ? 0xFFFFFFFF : 0xFF000000;
    }
}

void dpi_refresh_screen() {
    SDL_UpdateTexture(texture, nullptr, pixel_buffer, 128 * sizeof(Uint32));
    SDL_RenderClear(renderer);
    SDL_RenderCopy(renderer, texture, nullptr, nullptr);
    SDL_RenderPresent(renderer);
}

void dpi_poll_keyboard(unsigned char* out_left, unsigned char* out_right, unsigned char* out_fire) {
    SDL_Event event;
    while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            dpi_close_sdl();
            std::exit(0);
        }
    }
    const Uint8* state = SDL_GetKeyboardState(nullptr);
    *out_left  = state[SDL_SCANCODE_LEFT]  ? 1 : 0;
    *out_right = state[SDL_SCANCODE_RIGHT] ? 1 : 0;
    *out_fire  = state[SDL_SCANCODE_SPACE] ? 1 : 0;
}

void dpi_close_sdl() {
    if (texture)  SDL_DestroyTexture(texture);
    if (renderer) SDL_DestroyRenderer(renderer);
    if (window)   SDL_DestroyWindow(window);
    SDL_Quit();
}
