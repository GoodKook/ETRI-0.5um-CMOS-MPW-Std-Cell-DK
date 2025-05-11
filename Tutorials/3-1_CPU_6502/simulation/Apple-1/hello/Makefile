CC65_PATH = ../cc65-2.13.3
CC65_HOME = $(CC65_PATH)/lib/cc65
CA65_INC  = $(CC65_PATH)/lib/cc65/asminc
CC65_INC  = $(CC65_PATH)/lib/cc65/include
LD65_CFG  = $(CC65_PATH)/lib/cc65/cfg
LD65_LIB  = $(CC65_PATH)/lib/cc65/lib
LD65_OBJ  = $(CC65_PATH)/lib/cc65/obj

export PATH := $(PATH):$(CC65_PATH)/bin

all: hello1.bin hello2.bin nqueens.bin sieve.bin

hello1.bin: hello1.c
	cl65 -O -l -vm -m hello1.map -t replica1 -I$(CC65_INC) -L$(LD65_LIB) -o hello1.bin hello1.c

hello2.bin: hello2.c
	cl65 -O -l -vm -m hello2.map -t replica1 -I$(CC65_INC) -L$(LD65_LIB) -o hello2.bin hello2.c

nqueens.bin: nqueens.c
	cl65 -O -l -vm -m nqueens.map -t replica1 -I$(CC65_INC) -L$(LD65_LIB) -o nqueens.bin nqueens.c

sieve.bin: sieve.c
	cl65 -O -l -vm -m sieve.map -t replica1 -I$(CC65_INC) -L$(LD65_LIB) -o sieve.bin sieve.c

clean:
	$(RM) *.o *.lst *.map *.mon

distclean: clean
	$(RM) *.mon
