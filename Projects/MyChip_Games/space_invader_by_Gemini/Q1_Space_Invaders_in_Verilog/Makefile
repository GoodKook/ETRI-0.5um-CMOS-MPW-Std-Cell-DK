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
		more ../Talks/1_Can_you_write_Space_Invader_game_in_Verilog_RTL.txt; \
		more ../Talks/2_Write_Testbench.txt; \
	fi
	@echo

# Build --------------------------------------------------------
run: tb_$(DUT_MODULE)
	./tb_$(DUT_MODULE)

tb_$(DUT_MODULE): tb_$(DUT_MODULE).v $(DUT_MODULE).v
	$(IVERILOG) -o tb_$(DUT_MODULE) tb_$(DUT_MODULE).v $(DUT_MODULE).v

wave :
	gtkwave tb_$(DUT_MODULE).vcd --save=tb_$(DUT_MODULE).gtkw &

# Cleaning ----------------------------------------------------------------
clean :
	rm -f *.vcd
	rm -f tb_$(DUT_MODULE)
