
all: interbank.disa bank0.disa

interbank.rom: cqfd.rom
	dd if=cqfd.rom of=interbank.rom bs=8192 skip=1 count=1

interbank.disa: cqfd.control interbank.rom interbank.control
	dasm05 $< > $@

bank0.disa: bank0.control cqfd.rom interbank.control
	dasm05 $< > $@

clean:
	rm interbank.disa bank0.disa interbank.rom

# vim:ft=make
#
