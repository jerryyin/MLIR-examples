ARCH = gfx90a

LLC = /opt/rocm/llvm/bin/llc
LLVMMC = /opt/rocm/llvm/bin/llvm-mc
LLD = /opt/rocm/llvm/bin/ld.lld
CXX = /opt/rocm/hip/bin/hipcc

CXXFLAGS = -Wall
CXXFLAGS += -Werror 

TESTMLIR_SOURCE=test_mlir.cpp

# TO populate conv.ll:
# ./bin/rocmlir-gen -operation gemm -t f32 --arch gfx90a -g 1 -m 2 -k 8 -n 34 -perf_config=64,64,2,64,32,2,1,1 | ./bin/rocmlir-driver -kernel-pipeline=gpu,rocdl | ./bin/rocmlir-translate -gpu-module-to-rocdlir | ./external/llvm-project/llvm/bin/opt -passes='default<O3>,strip' -S  &> gemm.ll
#
gemm.s : gemm.ll
	$(LLC) -mcpu=$(ARCH) -o $@ $^

gemm.o : gemm.s
	$(LLVMMC) --triple=amdgcn-amd-amdhsa -mcpu=$(ARCH) --filetype=obj -o $@ $^

gemm.hsaco : gemm.o
	$(LLD) -shared $^ -o $@

testmlir : gemm.hsaco
	$(CXX) $(CXXFLAGS) $(TESTMLIR_SOURCE) -o $@

clean :
	rm -rf dump* *.log core gemm.s gemm.o gemm.hsaco testmlir

