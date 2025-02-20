# Assembly Memory Access Violation Bug

This repository demonstrates a common error in assembly programming: accessing memory outside of allocated bounds. The bug occurs in `bug.asm`, while the solution is provided in `bugSolution.asm`.

## Bug Description
The `bug.asm` file contains an instruction that calculates a memory address using registers `ebx`, `ecx`, and an offset.  If the values in these registers are incorrect, the calculated address might point to a region of memory that the program is not allowed to access. This results in a segmentation fault or other unpredictable behavior.

## Solution
The `bugSolution.asm` file addresses this by adding comprehensive bounds checking before attempting to access memory.  It checks the calculated address against the allocated memory region to prevent out-of-bounds accesses.

## How to Reproduce
1. Assemble `bug.asm` using your preferred assembler (NASM, MASM, etc.).
2. Run the resulting executable. You will likely observe a segmentation fault or similar crash.
3. Assemble `bugSolution.asm`.
4. Run the resulting executable. This should execute without crashing.

## Lesson Learned
Always perform bounds checking in assembly programming when working with dynamically allocated memory or arrays.  Failing to do so can lead to serious vulnerabilities and unpredictable program behavior.