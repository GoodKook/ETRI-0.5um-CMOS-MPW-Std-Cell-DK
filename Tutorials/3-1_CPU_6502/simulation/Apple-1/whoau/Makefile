AS65   = ../assembler/as65

all:
	@echo 'Select one of target: khu_lion_0 khu_magnolia whoau'

# khu_lion_0.hex khu_lion_1.hex khu_magnolia.hex whoau.hex

khu_lion_0: khu_lion_0.a65
	$(AS65) -l -m -s2 -oprogram.hex khu_lion_0.a65

khu_magnolia: khu_magnolia.a65
	$(AS65) -l -m -s2 -oprogram.hex khu_magnolia.a65

whoau: whoau.a65
	$(AS65) -l -m -s2 -oprogram.hex whoau.a65

clean:
	$(RM) *.lst *.hex

copy:
	cp program.hex ..
