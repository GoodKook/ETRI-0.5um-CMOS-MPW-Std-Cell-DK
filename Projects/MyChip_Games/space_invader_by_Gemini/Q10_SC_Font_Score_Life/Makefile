# ====================================================================
# [SystemC 3.0 규격] Verilator + SystemC 3.0 + SDL2 통합 빌드 자동화 Makefile
# ====================================================================

VERILATOR = verilator

# 💡 사용자의 호스트 환경 시스템 내 SystemC 3.0 설치 절대 경로 매핑
# (만약 패키지 매니저로 /usr 규격 표준 경로에 심겨있다면 빈칸으로 처리하거나 알맞게 타깃 수정)
#SYSTEMC_HOME ?= /opt/systemc

export SYSTEMC=/opt/systemc
export SYSTEMC_HOME=$(SYSTEMC)
export SYSTEMC_INCLUDE=$(SYSTEMC_HOME)/include
export SYSTEMC_LIBDIR=$(SYSTEMC_HOME)/lib
export LD_LIBRARY_PATH:=$(LD_LIBRARY_PATH):$(SYSTEMC_LIBDIR)

# 호스트 시스템 내에 튜닝 설치된 SDL2 패키지 컴파일/링킹 파라미터 자동 추출
SDL_CFLAGS = $(shell sdl2-config --cflags)
SDL_LIBS   = $(shell sdl2-config --libs)

# SystemC 3.0 전용 인클루드 패스 및 공유 라이브러리 타깃 선언
SYSTEMC_INC = -I$(SYSTEMC_HOME)/include
SYSTEMC_LDFLAGS = -L$(SYSTEMC_HOME)/lib-linux64 -lsystemc

# Verilator 환경 빌드 제어 플래그
# --sc  : 입력된 Verilog 하드웨어를 SystemC 모듈 클래스로 자동 이식 번역
# --exe : C++ 런타임 최상위 드라이버 링크 설정 명시
VERILATOR_FLAGS = --sc --exe -Wall -Wno-fatal

# 상호 검증에 필요한 프로젝트 소스 리스트
RTL_SRC = space_invaders_engine_glcd.v
CPP_SRC = ../Q9_SystemC_Env/sc_main.cpp ../Q9_SystemC_Env/sc_glcd128x64_TLM.cpp ../Q9_SystemC_Env/sc_invaders_TB.cpp

all: compile_and_run

compile_and_run:
	@echo "[BUILD STAGE 1] Verilator 가동 -> Verilog 하드웨어를 SystemC 3.0 C++ 소스로 코딩 이식 복사"
	$(VERILATOR) $(VERILATOR_FLAGS) \
		-I. \
		--pins-sc-uint \
		$(CPP_SRC) $(RTL_SRC) \
		-LDFLAGS "$(SDL_LIBS) $(SYSTEMC_LDFLAGS)" \
		-CFLAGS "-std=c++17 $(SDL_CFLAGS) $(SYSTEMC_INC)" \
		--Mdir obj_dir

	@echo "[BUILD STAGE 2] 번역 완료된 소스 및 SDL2 결합 시스템 런타임 바이너리 링킹 처리"
	$(MAKE) -j -C obj_dir -f Vspace_invaders_engine_glcd.mk Vspace_invaders_engine_glcd
	@echo ""
	@echo "========================================================================="
	@echo "[SUCCESS] 아케이드 빌드가 성공적으로 완수되었습니다!"
	@echo "-> 실행 바이너리 실행 지점 명령: './obj_dir/Vspace_invaders_engine'"
	@echo "========================================================================="
	@echo ""
	./obj_dir/Vspace_invaders_engine_glcd

clean:
	rm -rf obj_dir
	rm -f *.vcd
	@echo "[CLEAN] 시뮬레이션 중간 산출 및 빌드 파편 청소 완료."
