# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q9f. Verilator 명령줄 아규먼트에 --pins-sc-uint 를 넣어야 한다'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q9f_Import_Verilog_into_SystemC_TB.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Diff. Makefile ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;diff -y -W 128 ../Q.09e_SystemC_Env_Quiz/Makefile.mk ./Makefile.mk | less; \
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
