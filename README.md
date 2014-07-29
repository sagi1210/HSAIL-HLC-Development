LLVM-to-HSAIL-Test-Compiler-
============================

LLVM to HSAIL Test Compiler for early testing. 

This patch has the necessary files for patching pristine LLVM-3.2 downloaded from 
LLVM.ORG and build the LLVM-HSAIL compiler. You need "hsail-tools" or the libHSAIL
from the HSA github to complete the build. The source also has "tests" directory
which has set of OpenCL kernel files, which could be converted to HSAIL. There is
a script which runs the tests for all the given files. The bin directory in the
tests has the other necessary binaries like CLC (front-end) and HSAIL tools 
(assembler/disassembler).

Steps to build the LLVM-HSAIL directory (using the Target-HSAIL):

1. Download the sources into a directory. Download the LLVM sources (3.2) from LLVM.ORG.
2. Copy the HSAIL.tar directory into LLVM_SRC/lib/Target and untar it there
3. Run the script given after setting the two path variables in the script, LLVM_SRC and PATCH, 
pointing to LLVM-3.2 source directory and the patch source files (from where the sources will be copied)
4. Make sure you have "hsail-tools" (libHSAIL) directory is there at the level of llvm directory
5. Change the directory in the LLVM_SRC/CMakeLists.txt to point to correct hsail-tools directory 
(in both LLVM_SRC directory and in LLVM_SRC/tools/llc)
6. Create the build directory under LLVM_SRC 
7. Build the hsail-tools (by reading the README in libHSAIL)
8. Go to build directory and run "cmake .." and then "make"
9. Go to tests directory and run the test after pointing the PATH (in the "run_tests")

07/29/2014 - Updated with latest D2 compiler to fix issues with C++AMP (MCW):

This D2 compiler update has the LLVM sources with D2 changes only. Please take llvm-3.2.src
or tar file and build using your native compiler.

You need to use the latest HSAIL-Tools-private for HSAIL tools with this compiler (which is 
1.0P compliant).

The existing binaries CLC2 could be used with this too.

