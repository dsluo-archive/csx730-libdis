# csx730-libdis Library Disassembly Activity

### References

* [`setjmp(3)`, `longjmp(3)` - performing a nonlocal goto](http://man7.org/linux/man-pages/man3/setjmp.3.html)
* [`ldd(1)` - print shared object dependencies](http://man7.org/linux/man-pages/man1/ldd.1.html)
* [`vdso(7)` - overview of the virtual ELF dynamic shared object](http://man7.org/linux/man-pages/man7/vdso.7.html)
* [`libc(7)` - overview of standard C libraries on Linux](http://man7.org/linux/man-pages/man7/libc.7.html)
* [`ld.so(8)` - dynamic linker/loader](http://man7.org/linux/man-pages/man8/ld.so.8.html)
* [`nm(1)` - list symbols from object files](http://man7.org/linux/man-pages/man1/nm.1.html)

### Getting Started

1. Form into **small groups of two or three** people. These instructions assume that at least one group 
   member is logged into the Nike. 

1. Use Git to clone the repository for this exercise onto Nike into a subdirectory called `csx730-libdis`:

   ```
   $ git clone https://github.com/cs1730/csx730-libdis.git
   ```

1. Change into the `csx730-libdis` directory that was just created and look around. There should be a
   couple different files already present.
   
### Activity Questions

This activity is open book, open notes, and asking your instructor questions is allowed. You may
find the assembly notes provided in recent lecture modules on eLC useful. 

1. Modify `SUBMISSION.md` to include the name, UGA ID number, course number (4730 or 6730) 
   for each group member. Then, **sign the piece of paper that your instructor has at the front 
   of the room.**
   
1. In `main.c` write and test simple C program that prints the numbers `0` through `100` (exclusive)
   using `setjmp` and `longjmp` instead of loops or recursion. Your code shoul make use of the
   return value of `setjmp` to increment the number. A simple `Makefile` is provided to make 
   compiling easier.
   
**CHECKPOINT:** Ask your instructor if you have any questions.

1. In `SUBMISSION.md`, include a list of the list symbols from `main.o` and `main`.

1. In `SUBMISSION.md`, include a list of the shared library dependencies for `main`.

**CHECKPOINT:** Ask your instructor if you have any questions.

1. In `SUBMISSION.md`, indicate the file where the machine code for `setjmp` is defined.
   You should probably note the command(s) you used to find it.
   
1. Use `objdump` or `gdb` to find the assembly code for `setjmp`. Follow the chain of
   calls or jumps that are all labeled `setjmp` or similar and include their assembly in the
   `SUBMISSION.md` file. You may copy/paste.
   
1. Use `objdump` or `gdb` to find the assembly code for `longjmp`. Follow the chain of
   calls or jumps that are all labeled `longjmp` or similar and include their assembly in the
   `SUBMISSION.md` file. You may copy/paste.

1. **Before 3:15 PM (or 11:55 for partial)**, double check that your group member names are listed in 
   `SUBMISSION.md` as well as the piece of paper that your instructor has at the front of the room, then
   submit your activity attempt using the `submit` command. From the parent directory:
   
   ```
   $ submit csx730-libdis csx730
   ```

<hr/>

[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by-nc-nd/4.0/)

<small>
Copyright &copy; Michael E. Cotterell, Brad Barnes, and the University of Georgia.
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a> to students and the public.
The content and opinions expressed on this Web page do not necessarily reflect the views of nor are they endorsed by the University of Georgia or the University System of Georgia.
</small>
