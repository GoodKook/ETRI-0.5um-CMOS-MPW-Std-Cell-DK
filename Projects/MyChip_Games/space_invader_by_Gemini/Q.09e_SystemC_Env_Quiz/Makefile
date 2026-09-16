# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q9e. 키보드 입력을 처리해 줄 sc_invaders_TB.cpp 의 SystemC 입력 자극 시나리오를 작성하고 임베디드 그래픽 LCD 연동을 완성할 sc_glcd128x64_TLM.cpp 의 SDL2 연동 시현 스레드 보완한 온전한 파일들과 Makefile을 모두 보여달라'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q9e_Import_Verilog_into_SystemC_TB.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Diff. sc_invaders_TB.cpp ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;diff -y -W 128 ../Q.09c_Enhance_Keyboard_Stim/sc_invaders_TB.cpp ./sc_invaders_TB.cpp | less; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Diff. sc_glcd128x64_TLM.cpp ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;diff -y -W 128 ../Q.09d_Enhance_GLCD_TLM/sc_glcd128x64_TLM.cpp ./sc_glcd128x64_TLM.cpp | less; \
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
