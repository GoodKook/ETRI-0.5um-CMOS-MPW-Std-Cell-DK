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
