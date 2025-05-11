# "make native" will build for local machine (e.g. Linux desktop).
# "make adventure2.mon" will build for Replica 1 using CC65.
CC65_PATH = ../cc65-2.13.3
CC65_HOME = $(CC65_PATH)/lib/cc65
CA65_INC  = $(CC65_PATH)/lib/cc65/asminc
CC65_INC  = $(CC65_PATH)/lib/cc65/include
LD65_CFG  = $(CC65_PATH)/lib/cc65/cfg
LD65_LIB  = $(CC65_PATH)/lib/cc65/lib
LD65_OBJ  = $(CC65_PATH)/lib/cc65/obj

export PATH := $(PATH):$(CC65_PATH)/bin

all: default

#default: native
default: adventure2.bin

adventure2.bin: adventure2.c
	cl65 -O -l -vm -m adventure2.map -t replica1 -I$(CC65_INC) -L$(LD65_LIB) -o adventure2.bin adventure2.c

native: adventure2.c
	gcc -Wall -o adventure2 adventure2.c

clean:
	$(RM) adventure2.o adventure2.lst adventure2.map adventure2.bin adventure2.mon adventure2

copy: adventure2.bin
	cp adventure2.bin ../program.bin
	