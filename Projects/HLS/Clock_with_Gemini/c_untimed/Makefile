#---------------------------------------------------------------
TOP_MODULE    = Clock
TOP_MODULE_TB = $(TOP_MODULE)_TB

# SystemC testbench Reuse --------------------------------------
SRCS =  \
	./$(TOP_MODULE).cpp \
	./$(TOP_MODULE)_TB.cpp

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for un-timed C simulation of $(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make build'
	@echo '    TOP_MODULE=$(TOP_MODULE) make run'
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build : $(TOP_MODULE_TB)
$(TOP_MODULE_TB) : $(SRCS) $(HDRS)
	$(CXX) -I$(SYSTEMC_INCLUDE) -L$(SYSTEMC_LIBDIR) \
		-o $(TOP_MODULE_TB) \
		-D$(HW_STYLE)_SC \
		$(SRCS) \
		$(LIBS)

run : $(TOP_MODULE_TB)
	./$(TOP_MODULE_TB)

clean :
	rm -rf $(TOP_MODULE_TB)

debug : $(TOP_MODULE_TB)
	ddd $(TOP_MODULE_TB)
