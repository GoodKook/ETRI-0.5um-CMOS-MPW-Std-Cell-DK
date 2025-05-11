# "make native" will build for local machine (e.g. Linux desktop).
# "make adventure.mon" will build for Replica 1 using CC65.
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
default: adventure.bin

adventure.bin: adventure.c
	cl65 -O -l -vm -m adventure.map -t replica1 -I$(CC65_INC) -L$(LD65_LIB) -o adventure.bin adventure.c
#	cl65 -O -l adventure.lst -vm -m adventure.map -t apple2enh adventure.c

native: adventure.c
	gcc -Wall -o adventure adventure.c

clean:
	$(RM) adventure.o adventure.lst adventure.map adventure.bin adventure.mon adventure

copy: adventure.bin
	cp adventure.bin ../program.bin
	
distclean: clean
	$(RM) adventure.mon
