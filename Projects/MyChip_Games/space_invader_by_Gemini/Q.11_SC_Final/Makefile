VERILATOR = verilator
SYSTEMC_HOME ?= /opt/systemc

SDL_CFLAGS = $(shell sdl2-config --cflags)
SDL_LIBS   = $(shell sdl2-config --libs)

SYSTEMC_INC = -I$(SYSTEMC_HOME)/include
SYSTEMC_LDFLAGS = -L$(SYSTEMC_HOME)/lib-linux64 -lsystemc

# 💡 --pins-sc-uint 옵션을 필수 지정하여 다중 비트 버스 데이터 형식 미스매치를 예방합니다.
VERILATOR_FLAGS = --sc --exe --pins-sc-uint -Wall -Wno-fatal

RTL_SRC = space_invaders_engine_glcd.v
CPP_SRC = sc_main.cpp sc_glcd128x64_TLM.cpp sc_invaders_TB.cpp

all: compile_and_run

compile_and_run:
	$(VERILATOR) $(VERILATOR_FLAGS) \
		-I. \
		$(CPP_SRC) $(RTL_SRC) \
		-LDFLAGS "$(SDL_LIBS) $(SYSTEMC_LDFLAGS)" \
		-CFLAGS "-std=c++17 $(SDL_CFLAGS) $(SYSTEMC_INC)" \
		--Mdir obj_dir
	$(MAKE) -j -C obj_dir -f Vspace_invaders_engine_glcd.mk Vspace_invaders_engine_glcd
	./obj_dir/Vspace_invaders_engine_glcd

clean:
	rm -rf obj_dir
