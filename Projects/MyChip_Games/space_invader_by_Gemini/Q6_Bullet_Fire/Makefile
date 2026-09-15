# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q6a. 외계인의 공격을과 키보드를 사용하여 총알 발사를 구현하라. 베릴로그 테스트벤치를 보여달라'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q6a_Bullet_Fire.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo 'Q6b. 이 테스트벤치와 연동되는 sim_display.cpp 전체 통합 소스 코드가 필요하다'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q6b_Bullet_Fire.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "See source codes? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./sim_display.cpp; \
		clear;less ./tb_space_invaders.v; \
		clear;less ../Q5_Visulization_with_SDL2/space_invaders_engine_glcd.v; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Diff. sim_display.cpp ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		diff -y ../Q5_Visulization_with_SDL2/sim_display.cpp ./sim_display.cpp|less; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Diff. tb_space_invaders.v ? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		diff -y ../Q5_Visulization_with_SDL2/tb_space_invaders.v ./tb_space_invaders.v|less; \
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
