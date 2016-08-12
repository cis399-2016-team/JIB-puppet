Challenge Description:

	Vulnerable Program: popREGSnotCAPS

	Create a simple ROP chain payload to leverage execution flow and
	pop a new shell. An exec call to /bin/dash has generously been
	written into the program.

	Useful Tools:
		- gdb: (as always).

		- Python: useful for writting your payloads.
			Remember byte-order is little endian here :)

		- objdump: useful for scavenging for ROP gadgets.
			The "-M" flag can be used for setting disassembly 
			syntax b/w Intel and AT&T.

		- grep: useful in combination with objdump for sorting out
			specific functions and gadgets.
			The "-A" flag can be used to specify how many lines
			following a match will be printed out.

	Hint:
		Try '$ objdump -D -M intel <progName> | grep -A5 pop'
		You might find some useful ROP gadgets...
