#---------------------------------------------------------------
TOP_MODULE = fir8

# SystemC testbench Reuse --------------------------------------
SRCS =  \
	./cnoise.cpp \
	./$(TOP_MODULE).cpp \
	./$(TOP_MODULE)_TB.cpp

LIBS = -lgsl

ifeq ($(Y16), YES)
	__Y16__ = -D__Y16__
else
	__Y16__ =
endif

ifeq ($(FIX_SATURATION), YES)
	__FIX_SATURATION__ = -DFIX_SATURATION
else
	__FIX_SATURATION__ =
endif

# Build Rules --------------------------------------------------
all :
	@echo
	@echo 'Makefile for un-timed C simulation of $(TOP_MODULE)'
	@echo
	@echo '    TOP_MODULE=$(TOP_MODULE) make build'
	@echo '    TOP_MODULE=$(TOP_MODULE) make run'
	@echo '    TOP_MODULE=$(TOP_MODULE) make plot'
	@echo '    TOP_MODULE=$(TOP_MODULE) make clean'
	@echo
	@echo '    * Env. Y16=YES|[NO] & FIX_SATURATION=YES|[NO] effect on build'
	@echo
	@echo 'CC BY-NC, by GoodKook, goodkook@gmail.com'
	@echo

build : $(TOP_MODULE)_TB

$(TOP_MODULE)_TB : $(SRCS) $(HDRS)
	$(CXX) \
		-o $(TOP_MODULE)_TB \
		$(__Y16__) \
		$(__FIX_SATURATION__) \
		$(SRCS) \
		$(LIBS)

run : $(TOP_MODULE)_TB
	python3 ./sc_plotDFT.py &
	./$(TOP_MODULE)_TB

#	./$(TOP_MODULE)_TB | tee $(TOP_MODULE)_TB.txt

$(TOP_MODULE)_TB.txt: $(TOP_MODULE)_TB
	./$(TOP_MODULE)_TB | tee $(TOP_MODULE)_TB.txt

plot: $(TOP_MODULE)_TB.txt
	python3 plotDFT.py $(TOP_MODULE)_TB.txt &

clean :
	rm -f $(TOP_MODULE)_TB
	rm -f $(TOP_MODULE)_TB.txt
	rm -f fir8_fifo

debug : $(TOP_MODULE)_TB
	ddd $(TOP_MODULE)_TB)
