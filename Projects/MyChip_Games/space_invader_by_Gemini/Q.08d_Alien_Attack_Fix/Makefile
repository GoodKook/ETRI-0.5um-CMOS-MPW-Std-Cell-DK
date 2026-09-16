# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q8d. 외계인이 공격하지 않는다'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q8d_Alien_Attack.txt; \
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
		diff -y ../Q.08a_Alien_Attack/space_invaders_engine_glcd.v ./space_invaders_engine_glcd.v|less; \
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
