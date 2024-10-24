# LDS variable splitting miscompile

**tl;dr:** `make test`, and notice that the new code is correct at
`-O0` and incorrect at `-O1`, and that the old code is correct as
`-O1`. You will need to edit the Makefile to set `LLVM_BUILD_BIN_DIR`
on the first line.

The code in this reproduction bundle is a matrix multiplication
(C = A^T * B) with M = 64, K = 32, and N = 1, operating on 16-bit
floats.

The miscompilation was revealed by [rocMLIR PR #1025](https://github.com/ROCmSoftwarePlatform/rocMLIR/pull/1025)
which, primarily, introduced fp8 support to our GEMM operator. In
order to do this, our LDS buffer usage was changed from using one
allocation to hold tiles of matrices A and B to having one variable
for A and one for B - which was needed to allow mixed-type (fp8 * bf8)
GEMM.

I believe the underlying code change is correct because:
- The relevant LLVM IR runs correctly when compiled at -O0.
- Inspection an `llvm-diff` on said IR doesn't show semantically
  different code.
- Our tests, including more extensive nightly tests, passed on it.
  This correctness problem was only revealed when a weekly parameter sweep
  dedicated to checking all tuning parameter combinations stumbled on
  it.
- The problem appears with fp16, but goes away for fp32, and the
  rocMLIR change doesn't do anything different on those two types.

## The files
`old-code-opt.ll` and `new-code-opt.ll` are LLVM IR extracted from the
beginning of the backend pipeline (I passed our compilation driver
`--print-before=pre-isel-intrinsic-lowering` and redirected it to a
file). The only difference between how these LLVM IR files were
generated is that the old code had the "one LDS variable" system and
the new code has two LDS variables.

`driver.cpp` is the code for loading and running compiled instances of
this function.

Running `make` will, in addition to the HSA code object produce
assembly files for both the old and new code at -O1.

## Affected architectures

`gfx908` and `gfx90a`

## Suspicious things
Looking at `new-code-O1.s`, there's a `offset:2048` that doesn't
immediately line up with anything in the old code.
