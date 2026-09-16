# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo '-----------------------------------------------------------'
	@echo 'Q2: Write Testbench'
	@echo -n "AI: [Y/n] "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q2_Write_Testbench.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "See AI generated Testbench? [Y/n] "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./tb_space_invaders_engine.v; \
	fi
	@echo
	@echo '-----------------------------------------------------------'
	@echo 'make run'
	@echo 'make wave'
	@echo '-----------------------------------------------------------'

# Build --------------------------------------------------------
run: tb_$(DUT_MODULE)
	./tb_$(DUT_MODULE)

tb_$(DUT_MODULE): tb_$(DUT_MODULE).v ../Q.01_Space_Invaders_in_Verilog_RTL/$(DUT_MODULE).v
	$(IVERILOG) -o tb_$(DUT_MODULE) tb_$(DUT_MODULE).v ../Q.01_Space_Invaders_in_Verilog_RTL/$(DUT_MODULE).v

wave :
	gtkwave tb_$(DUT_MODULE).vcd --save=tb_$(DUT_MODULE).gtkw &

# Cleaning ----------------------------------------------------------------
clean :
	rm -f *.vcd
	rm -f tb_$(DUT_MODULE)
