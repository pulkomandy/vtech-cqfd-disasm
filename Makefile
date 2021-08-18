
all: interbank.disa bank0.disa bank1.disa bank2.disa

interbank.rom: cqfd.rom
	dd if=$< of=$@ bs=8192 skip=1 count=1

bank1.rom: cqfd.rom
	dd if=$< of=$@ bs=16384 skip=1 count=1

bank2.rom: cqfd.rom
	dd if=$< of=$@ bs=16384 skip=2 count=1

interbank.disa: cqfd.control interbank.rom interbank.control
	dasm05 $< -o $@

bank0.disa: bank0.control cqfd.rom interbank.control
	dasm05 $< -o $@

%.disa: %.control %.rom interbank.control
	dasm05 $< -o $@

clean:
	rm *.disa interbank.rom bank?.rom

# vim:ft=make
#
