# Verilog Simulation Env. --------------------------------------
# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Making "Space Invader Game" with Gemini AI'
	@echo
	@echo 'Q1: Write Space Invader game in Verilog RTL'
	@echo 'Q3: Write SystemC Testbench'
	@echo 'Q5: Visualize video game'
	@echo 'Q6: Defender move & Fire'
	@echo 'Q7: Alien 5x5'
	@echo 'Q8: Alien can drop bomb'
	@echo '-----------------------------------------------------'
	@echo -n "Select[1,3,5,6,7,8]? "
	@read answer; : $${answer:=1}; \
	if [ "$$answer" = "1" ]; then \
		make -C ./Q1_Space_Invaders_in_Verilog; \
	elif [ "$$answer" = "3" ]; then \
		make -C ./Q3_SystemC_TB; \
	fi
	@echo

Q1:
	make -C ./Q1_Space_Invaders_in_Verilog run
	make -C ./Q1_Space_Invaders_in_Verilog wave

Q3:
	make -C ./Q3_SystemC_TB

Q5:
	make -C ./Q5_Visulization_with_SDL2

Q6:
	make -C ./Q6_Bullet_Fire

Q7:
	make -C ./Q7_Alien_5x5

Q8:
	make -C ./Q8_Alien_Attack

# Cleaning ----------------------------------------------------------------
clean :
	make -C ./Q1_Space_Invaders_in_Verilog clean
