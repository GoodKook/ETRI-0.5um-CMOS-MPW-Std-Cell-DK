# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q3: Write Testbench in SystemC ?'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		more ../Talks/3_Write_Testbench_in_SystemC.txt; \
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
