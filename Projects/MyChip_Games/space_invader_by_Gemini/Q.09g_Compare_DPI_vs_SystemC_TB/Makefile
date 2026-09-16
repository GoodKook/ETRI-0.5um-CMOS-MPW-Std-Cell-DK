# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q9g. 성공적으로 구동이 완료되었다. 이제 앞서 했던 DPI 와 SystemC 방법을 비교하고 장단점에 대하여 논하라'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q9g_Import_Verilog_into_SystemC_TB.txt; \
	fi
