Challenge Description:

	Vulnerable Program: rop_it

	Create a ROP chain payload to leverage execution flow and
	pop a new shell. This challenge plays off of level 0 but is
	a bit more complicated. The new_shell function is "password"
	protected and only called if you're the root user... or is it?

	Concepts to Understand:
		- Effective User ID (euid) and Real User ID (uid)

		- setuid()

		- Calling system() in a set user id (suid) program
			Not to be confused with the setuid() function

		- Dropping privileges

		- bash vs. sh vs. dash and is /bin/sh really just /bin/sh ?

	Useful Tools:
		- id: command is useful for viewing your id numbers

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


