LLVM-to-HSAIL-Test-Compiler-
============================

LLVM to HSAIL Test Compiler for early testing. 


07/29/2014 - Updated with latest D2 compiler to fix issues with C++AMP (MCW):

This D2 compiler update has the LLVM sources with D2 changes only. Please take llvm-3.2.src
or tar file and build using your native compiler.

You need to use the latest HSAIL-Tools-private for HSAIL tools with this compiler (which is 
1.0P compliant).

The existing binaries CLC2 could be used with this too.

This compiler needs to use the supplied builtins file only (and not the older builtins file)

Steps to build the LLVM-HSAIL directory (using the Target-HSAIL):
 1. Download the sources into a directory. 
 2. Download the HSAIL-tools-private (latest drop on GITUB)
 3. Change the directory in the LLVM_SRC/CMakeLists.txt to point to the HSAIL-tools-private directory
 in both LLVM_SRC directory and in LLVM_SRC/tools/llc)
 4. Create the build directory under LLVM_SRC 
 5. Build the hsail-tools (by reading the README there)
 6. Go to build directory and run "cmake .." and then "make"
 7. Go to tests directory and run the test after pointing the PATH (in the "run_tests")
