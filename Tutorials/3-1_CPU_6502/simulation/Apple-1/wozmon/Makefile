CC65_PATH = ../cc65-2.13.3/bin

all:	wozmon.mon

wozmon.mon: wozmon.bin
	$(CC65_PATH)/bintomon -v `./getaddress` wozmon.bin >wozmon.mon

wozmon.bin: wozmon.o
	$(CC65_PATH)/ld65 -t none -vm -m wozmon.map -o wozmon.bin wozmon.o

wozmon.o:	wozmon.s
	$(CC65_PATH)/ca65 -g -l wozmon.s

clean:
	$(RM) *.o *.lst *.map *.bin

distclean: clean
	$(RM) *.mon
