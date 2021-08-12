CQFD Scientus ROM disassembly and documentation project
=======================================================

I have dumped the ROM of the CQFD Scientus. This is a project to disassemble the ROM and
understand how it operates, and document the thing a bit, hopefully resulting in someone
implementing it in MAME or something.

This machine is designed by VTech, who at the time decided to use the CQFD brand name in
France for some of their products.

What you need
-------------

- The dasmxx disassembler from https://github.com/nejohnson/dasmxx
- The ROM dump (not included here for copyright reasons)

How it works
------------

- Install dasmxx (more specifically dasm05 for the 68hc05 CPU)
- Copy the ROM in here as cqfd.rom
- Run make

The makefile will take care of cutting the ROM in separate pieces for each memory bank, and
disassemble each of them with the appropriate "control" file, which adds the labels and
comments to make the disassembly readable.
