# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q7. 3마리로 배치된 외계인의 개수를 늘려 실제 오락실 게임처럼 외계인 부대 대형(예: 5행 5열 등)으로 Verilog 로직을 리팩토링하라'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q7_Alien_5x5.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "See re-generated RTL codes? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./space_invaders_engine_glcd.v; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Diff. space_invaders_engine_glcd.v ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		diff -y ../Q5_Visulization_with_SDL2/space_invaders_engine_glcd.v ./space_invaders_engine_glcd.v|less; \
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
