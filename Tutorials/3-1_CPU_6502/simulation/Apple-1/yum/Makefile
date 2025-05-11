# "make native" will build for local machine (e.g. Linux desktop).
# "make yum.mon" will build for Replica 1 using CC65.

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
default: yum.bin

yum.bin: yum.c
	cl65 -O -l -vm -m yum.map -t replica1 -o yum.bin -I$(CC65_INC) -L$(LD65_LIB) yum.c

# SEND is a script I wrote.
upload: yum.mon
	SEND yum.mon

native: yum

yum:	yum.c Makefile
	gcc -g -Wall -o yum yum.c

release: yum.mon
	zip yum-1.0.zip yum.c Makefile yum.mon README.txt LICENSE-2.0.txt

clean:
	$(RM) yum.o yum.lst yum.map yum.bin yum.mon yum

distclean: clean
	$(RM) yum.mon

copy: yum.bin
	cp yum.bin ../program.bin
	