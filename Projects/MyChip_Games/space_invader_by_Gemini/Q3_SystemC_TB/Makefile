# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q3: Write Testbench in SystemC ?'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q3_Write_Testbench_in_SystemC.txt; \
	fi
	@echo
	@echo '-----------------------------------------------------------'
	@echo -n "See AI generated Testbench? [Y/n] "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./tb_space_invaders.h; \
		clear;less ./tb_space_invaders.cpp; \
		clear;less ./sc_main.cpp; \
	fi
	@echo
