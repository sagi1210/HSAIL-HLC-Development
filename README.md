HSAIL-HLC-Development Compiler
===============================

LLVM to HSAIL Open Source Development HSAIL Compiler. 


This open source compiler is HSAIL code generator based on LLVM 3.2. It has added
Target/HSAIL backend along with with a few relevant changes to LLVM core.  The changes
are marked "OPENCL" tag so it will be easy to search the changes done in the LLVM source 
base. HLC means High Level Compiler, which means LLVM to HSAIL code generator and NOT
ISA generator.

The built binaries are also given. There are some test cases provided to generate
HSAIL from the BC files (LLVMIR). There is also a front-end provided (CLC2) which is
CLANG based front end. 

You need the HSAIL-Tools (provided in the GITHUB) to build this compiler.

Steps to build the LLVM-HSAIL directory (using the Target-HSAIL):

 1. Download the sources into a directory. 
 2. Download the HSAIL-tools (latest drop on GITUB)
 3. Change the directory in the LLVM_SRC/CMakeLists.txt to point to the HSAIL-tools-private directory
 in both LLVM_SRC directory and in LLVM_SRC/tools/llc)
 4. Create the build directory under LLVM_SRC 
 5. Go to build directory and run "cmake .." and then "make"
 6. It may fail when it reached building target HSAIL. That is due to the fact that libHSAIL is not yet built.
 7. Build the HSAIL-tools (by reading the README there and by setting the LLVM_SRC and LLVM_BUILD paths)
 8. Continue the LLVM build again by giving "make" in build directory
 9. Go to tests directory and run the test after pointing the PATH (in the "run_tests"). Make sure you use
the builtins file given in the drop (and not use the one given in "Stable" compiler binaries).

Intended usage:

This compiler is expected to be used by compiler writers for various languages and those developers who would like to develop HSA applications using CLOC tool. Since this is open sourced too, the user can make required changes to the compiler (like adding meta data or different passes etc) as per their needs.

The repo also contains diffs between this source base and the pristine LLVM 3.2. This diff is obtained by command "diff -ur" between these two directories. This could be applied as git patch on LLVM 3.2. too.

It is the output of 

diff -ur llvm-3.2.src/ ~llvm-3.2.org/ > diff

Sept 03, 2014

Updated with some cleanup in LLVM core sources. Updated the binaries too after testing.
