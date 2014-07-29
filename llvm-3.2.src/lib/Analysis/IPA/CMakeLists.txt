add_llvm_library(LLVMipa
  CallGraph.cpp
  CallGraphSCCPass.cpp
  FindUsedTypes.cpp
  GlobalsModRef.cpp
  IPA.cpp
  AMDOpenCLSymbols.cpp
  )

add_dependencies(LLVMipa intrinsics_gen)
