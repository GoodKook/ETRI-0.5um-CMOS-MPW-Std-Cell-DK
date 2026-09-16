# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q5. space_invaders_engine의 베릴로그 테스트벤치에 SDL을 사용하여 시각화 할 수 있도록 할 것'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q5_Visualize_with_SDL2.txt; \
		clear;less ./space_invaders_engine_glcd.v; \
		clear;less ./sim_display.cpp; \
		clear;less ./tb_space_invaders.v; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Build & Run ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		bash run.sh; \
	fi

# Cleaning ----------------------------------------------------------------
clean :
	rm -rf ./obj_dir
