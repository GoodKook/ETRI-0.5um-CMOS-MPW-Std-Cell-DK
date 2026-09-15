# ====================================================================
# [DPI-C 규격] Verilator 단독 가동 + SDL2 그래픽 링킹 Makefile
# ====================================================================

VERILATOR = verilator

# 호스트 디바이스 내에 심겨진 SDL2 패키지 옵션 추출
SDL_CFLAGS = $(shell sdl2-config --cflags)
SDL_LIBS   = $(shell sdl2-config --libs)

# --binary 플래그: Verilator가 자체 main 구문을 빌드하여 단독 ELF로 자동 컴파일하도록 지시
VERILATOR_FLAGS = --binary -Wall -Wno-fatal --top-module tb_space_invaders

RTL_SRC = ../Q11_SC_Final/space_invaders_engine_glcd.v tb_space_invaders.v
DPI_SRC = sim_display.cpp

all: compile_and_run

compile_and_run:
	@echo "[BUILD STEP 1] Verilator 단독 컴파일러 구동 및 DPI 소스 자동 링킹"
	$(VERILATOR) $(VERILATOR_FLAGS) \
		$(RTL_SRC) $(DPI_SRC) \
		-LDFLAGS "$(SDL_LIBS)" \
		-CFLAGS "-std=c++17 $(SDL_CFLAGS)" \
		--Mdir obj_dir
	@echo ""
	@echo "========================================================================="
	@echo "[SUCCESS] DPI-C 통합 아케이드 에뮬레이터 빌드가 완료되었습니다!"
	@echo "-> 구동 명령어 지점: './obj_dir/Vtb_space_invaders'"
	@echo "========================================================================="
	@echo ""

clean:
	rm -rf obj_dir
	rm -f *.vcd
