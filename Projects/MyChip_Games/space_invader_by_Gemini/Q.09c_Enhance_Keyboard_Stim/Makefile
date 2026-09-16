# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q9c. 키보드 입력을 처리해 줄 sc_invaders_TB.cpp 의 SystemC 입력 자극 시나리오를 작성하라'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q9c_Import_Verilog_into_SystemC_TB.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Diff. sc_invaders_TB.cpp ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;diff -y -W 128 ../Q.09b_Import_into_SystemC_All/sc_invaders_TB.cpp ./sc_invaders_TB.cpp | less; \
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
