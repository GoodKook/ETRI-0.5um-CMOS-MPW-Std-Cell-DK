AFLAGS  = 
LFLAGS  = -C replica1.cfg
BINFILE = applesoft-lite.bin
OBJS    = applesoft-lite.o io.o cffa1.o wozmon.o

EXEC_PATH = ../../cc65-2.13.3/bin

$(BINFILE): $(OBJS)
	$(EXEC_PATH)/ld65 $(LFLAGS) $(OBJS) -o $(BINFILE)

applesoft-lite.o: applesoft-lite.s
	$(EXEC_PATH)/ca65 $(AFLAGS) $<

wozmon.o: wozmon.s
	$(EXEC_PATH)/ca65 $(AFLAGS) $<

cffa1.o: cffa1.s
	$(EXEC_PATH)/ca65 $(AFLAGS) $<

io.o: io.s
	$(EXEC_PATH)/ca65 $(AFLAGS) $<

clean:
	rm $(OBJS) $(BINFILE)

