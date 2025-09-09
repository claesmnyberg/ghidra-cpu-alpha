## Alpha CPU for Ghidra (Claes M Nyberg, 2019)
The reason for this project was to be able to read OpenVMS binaries more comfortable than using objdump. 
Christer Oberg implemented the binary loader and I did the Alpha CPU.

This implementaion support Linux GCC and OpenVMS DEC Compiler for DEC Alpha 21064A.
Just edit the Makefile and set the path to the root of your Ghidra installation and run 'make'. 
