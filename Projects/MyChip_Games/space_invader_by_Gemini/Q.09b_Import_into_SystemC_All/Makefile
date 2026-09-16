# Verilog Simulation Env. --------------------------------------
IVERILOG = iverilog
DUT_MODULE = space_invaders_engine

# Build Rules --------------------------------------------------
all :
	@echo
	@echo '"$(DUT_MODULE)" with Gemini AI'
	@echo
	@echo 'Q9b. 빌드에 필요한 파일들을 모두 보여달라'
	@echo -n "Gemini: [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./Q9b_Import_Verilog_into_SystemC_TB.txt; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "See generated codes? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		clear;less ./space_invaders_engine_glcd.v; \
		clear;less ./sc_glcd128x64_TLM.h; \
		clear;less ./sc_glcd128x64_TLM.cpp; \
		clear;less ./sc_invaders_TB.h; \
		clear;less ./sc_invaders_TB.cpp; \
		clear;less ./Makefile.mk; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Build & Run? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		make -f ./Makefile.mk; \
	fi
	@echo '-----------------------------------------------------------'
	@echo -n "Clean up? [Y/n]: "
	@read answer; : $${answer:=y}; \
	if [ "$$answer" = "y" ] || [ "$$answer" = "Y" ]; then \
		make -f ./Makefile.mk clean; \
	fi

clean:
	rm -rf obj_dir
