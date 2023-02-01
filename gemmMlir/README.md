## Gemm binary interface showcase example

The given example show case a minimal example that invoke into MLIR generated conv2d gemm kernels. The example is mostly self-explanatary. 

To build:
```makefile
make testmlir
```

To clean:
```makefile
make clean
```

### Experiment 1: llc -O3

Use the default option to compile and run. Validation will fail because incorrect ISA is populated.

### Experiment 2: llc -O0

Amend the Makefile and comment out line 16-17, uncomment 19-29 to make optimization level drop to -O0. Validation will pass. This confirms the correctness of the llvm ir gemm.ll.

### Experiment 3: gemmAlternative.ll

To help debugging, I provide a slightly modified llvm ir, gemmAlternative.ll. Swapping this with gemm.ll and redo the validation, both -O0 and -O3 will pass. This alternative IR will populate very similar ISA compared with the original problemetic version. It is helpful to compare the two versions of ISA and identify why amdgpu backend does not function correctly in the gemm.ll -O3 case.
