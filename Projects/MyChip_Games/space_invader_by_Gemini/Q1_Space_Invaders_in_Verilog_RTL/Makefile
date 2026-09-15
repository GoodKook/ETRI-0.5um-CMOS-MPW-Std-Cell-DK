# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q1: Write Space Invader game in Verilog RTL?'
	@echo -n "AI: [Y/n] "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q1_Can_you_write_Space_Invader_game_in_Verilog_RTL.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "See AI generated RTL? [Y/n] "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./space_invaders_engine.v; \
	fi
