// Q5. space_invaders_engine의 베릴로그 테스트벤치에 SDL을 사용하여 시각화 할 수 있도록 할것
//----------------------------------------------------------------------
// Filename: sim_display.cpp
//----------------------------------------------------------------------

#include <SDL2/SDL.h>
#include <iostream>

// Verilog 호환 인터페이스 선언 (DPI-C 영문 매핑 코드)
extern "C" void dpi_init_sdl();
extern "C" void dpi_write_pixel(int x, int y, int color);
extern "C" void dpi_refresh_screen();
extern "C" void dpi_close_sdl();

static SDL_Window*   window   = nullptr;
static SDL_Renderer* renderer = nullptr;
static SDL_Texture*  texture  = nullptr;
static Uint32        pixel_buffer[128 * 64]; // 128x64 픽셀 버퍼

void dpi_init_sdl() {
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        std::cerr << "SDL 초기화 실패: " << SDL_GetError() << std::endl;
        return;
    }
    // 시각적으로 확인하기 좋게 4배 확대(512x256)하여 창 생성
    window = SDL_CreateWindow("Verilog RTL Space Invaders - SDL2 Realtime Display",
                              SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
                              512, 256, SDL_WINDOW_SHOWN);
    renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);
    texture  = SDL_CreateTexture(renderer, SDL_PIXELFORMAT_ARGB8888, 
                                 SDL_TEXTUREACCESS_STREAMING, 128, 64);
    
    // 버퍼 초기화 (검은색)
    memset(pixel_buffer, 0, sizeof(pixel_buffer));
}

void dpi_write_pixel(int x, int y, int color) {
    if (x >= 0 && x < 128 && y >= 0 && y < 64) {
        // 컬러가 1이면 흰색(0xFFFFFFFF), 0이면 검은색(0xFF000000)
        pixel_buffer[y * 128 + x] = color ? 0xFFFFFFFF : 0xFF000000;
    }
}

void dpi_refresh_screen() {
    // SDL 이벤트 처리 (창을 끌 때 강제 중단 방지용)
    SDL_Event event;
    while (SDL_PollEvent(&event)) {
        if (event.type == SDL_QUIT) {
            dpi_close_sdl();
            exit(0);
        }
    }

    // 텍스처 업데이트 및 스케일 렌더링 시현
    SDL_UpdateTexture(texture, nullptr, pixel_buffer, 128 * sizeof(Uint32));
    SDL_RenderClear(renderer);
    SDL_RenderCopy(renderer, texture, nullptr, nullptr);
    SDL_RenderPresent(renderer);
}

void dpi_close_sdl() {
    if (texture)  SDL_DestroyTexture(texture);
    if (renderer) SDL_DestroyRenderer(renderer);
    if (window)   SDL_DestroyWindow(window);
    SDL_Quit();
}
