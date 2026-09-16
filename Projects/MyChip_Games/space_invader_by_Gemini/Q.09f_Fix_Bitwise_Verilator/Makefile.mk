## 🛠️ --pins-sc-uint가 반영된 최종 수정형 Makefile
# VERILATOR_FLAGS 변수에 해당 옵션을 확실하게 포함하여 교정한 Makefile 본문입니다.

# ====================================================================
# [SystemC 3.0 규격] Verilator + SystemC 3.0 + SDL2 통합 빌드 자동화 Makefile
# ====================================================================

VERILATOR = verilator
# 사용자의 호스트 환경 시스템 내 SystemC 3.0 설치 절대 경로 매핑
SYSTEMC_HOME ?= /usr/local/systemc-3.0.0
# 호스트 시스템 내에 설치된 SDL2 패키지 컴파일/링킹 파라미터 자동 추출
SDL_CFLAGS = $(shell sdl2-config --cflags)
SDL_LIBS   = $(shell sdl2-config --libs)
# SystemC 3.0 전용 인클루드 패스 및 공유 라이브러리 타깃 선언
SYSTEMC_INC = -I$(SYSTEMC_HOME)/include
SYSTEMC_LDFLAGS = -L$(SYSTEMC_HOME)/lib-linux64 -lsystemc
# 💡 Verilator 환경 빌드 제어 플래그 보완
# --sc             : 입력된 Verilog 하드웨어를 SystemC 모듈 클래스로 자동 이식 번역
# --exe            : C++ 런타임 최상위 드라이버 링크 설정 명시
# --pins-sc-uint   : 2비트 이상의 다중 비트 벡터 포트를 sc_uint 타입으로 변환 강제 지정 (필수!)
VERILATOR_FLAGS = --sc --exe --pins-sc-uint -Wall -Wno-fatal
# 상호 검증에 필요한 프로젝트 소스 리스트
RTL_SRC = \
	../Q.09b_Import_into_SystemC_All/space_invaders_engine_glcd.v
CPP_SRC = \
	../Q.09b_Import_into_SystemC_All/sc_main.cpp \
	../Q.09b_Import_into_SystemC_All/sc_invaders_TB.cpp \
	../Q.09d_Enhance_GLCD_TLM/sc_glcd128x64_TLM.cpp

all: compile_and_run

compile_and_run:
	@echo "[BUILD STAGE 1] Verilator 가동 -> --pins-sc-uint 옵션을 결합하여 SystemC 3.0 포트 변환 규칙 적용"
	$(VERILATOR) $(VERILATOR_FLAGS) \
		-I. \
		$(CPP_SRC) $(RTL_SRC) \
		-LDFLAGS "$(SDL_LIBS) $(SYSTEMC_LDFLAGS)" \
		-CFLAGS "-std=c++17 $(SDL_CFLAGS) $(SYSTEMC_INC) -I../../Q.09b_Import_into_SystemC_All" \
		--Mdir obj_dir

	@echo "[BUILD STAGE 2] 번역 완료된 소스 및 SDL2 결합 시스템 런타임 바이너리 링킹 처리"
	$(MAKE) -j -C obj_dir -f Vspace_invaders_engine_glcd.mk Vspace_invaders_engine_glcd
	./obj_dir/Vspace_invaders_engine_glcd
	@echo ""
	@echo "========================================================================="
	@echo "[SUCCESS] 아케이드 빌드가 성공적으로 완수되었습니다!"
	@echo "-> 실행 바이너리 실행 지점 명령: './obj_dir/Vspace_invaders_engine_glcd'"
	@echo "========================================================================="
	@echo ""

clean:
	rm -rf obj_dir
	rm -f *.vcd
	@echo "[CLEAN] 시뮬레이션 중간 산출 및 빌드 파편 청소 완료."
