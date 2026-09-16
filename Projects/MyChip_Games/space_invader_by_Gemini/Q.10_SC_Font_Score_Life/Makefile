# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q10. 외계인을 처치할 때마다 점수가 누적되어 상단에 표출되는 점수(Score) 카운터 레지스터 및 폰트 매핑하고 단순 사각형 도트가 아닌, 8비트 고전 아케이드 에일리언 외형을 렌더링하기 위한 Sprite ROM 내부 배열 추가하며 아군 우주선이 피격당했을 때 기회가 차감되는 목숨(Life) 시스템 FSM 보완한 전체 코드를 작성하라'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q10_SC_Font_Score_Life.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "See re-generated RTL ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less space_invaders_engine_glcd.v; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Diff. space_invaders_engine_glcd.v ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;diff -y -W 128 ../Q.09b_Import_into_SystemC_All/space_invaders_engine_glcd.v ./space_invaders_engine_glcd.v | less; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Build & Run? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		make -f ./Makefile.mk; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Clean up? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		make -f ./Makefile.mk clean; \
	fi
