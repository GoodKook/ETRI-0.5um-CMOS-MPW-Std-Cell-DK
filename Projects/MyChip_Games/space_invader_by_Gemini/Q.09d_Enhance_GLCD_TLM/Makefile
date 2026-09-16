# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q9d. 임베디드 그래픽 LCD 연동을 완성할 sc_glcd128x64_TLM.cpp 의 SDL2 연동 시현 스레드 보완'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q9d_Import_Verilog_into_SystemC_TB.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Diff. sc_glcd128x64_TLM.cpp ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;diff -y -W 128 ../Q.09b_Import_into_SystemC_All/sc_glcd128x64_TLM.cpp ./sc_glcd128x64_TLM.cpp | less; \
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
