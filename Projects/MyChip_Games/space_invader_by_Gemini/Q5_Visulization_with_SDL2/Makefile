# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q5: Visualize video game'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		more ../Talks/4_Visualization.txt; \
		more ../Talks/5_Visualize_with_SDL2.txt; \
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
