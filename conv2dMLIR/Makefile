ARCH = gfx906

LLC = /opt/rocm/llvm/bin/llc
LLVMMC = /opt/rocm/llvm/bin/llvm-mc
LLD = /opt/rocm/llvm/bin/ld.lld
CXX = /opt/rocm/hip/bin/hipcc

CXXFLAGS = -Wall
CXXFLAGS += -Werror 

TESTMLIR_SOURCE=test_mlir.cpp

# TO populate conv.ll:
# ./bin/mlir-miopen-driver -p | ./bin/mlir-opt -miopen-lowering -miopen-affine-transform -miopen-affix-params -miopen-lowering-step2 -miopen-lowering-step3 -miopen-lowering-step4 -miopen-lowering-step5 -convert-miopen-to-gpu -convert-gpu-to-rocdl | ./bin/mlir-translate -mlir-to-rocdlir | ./bin/opt -O3 -S &> conv.ll

conv.s : conv.ll
	$(LLC) -mcpu=$(ARCH) -o $@ $^

conv.o : conv.s
	$(LLVMMC) --triple=amdgcn-amd-amdhsa -mcpu=$(ARCH) --filetype=obj -o $@ $^

conv.hsaco : conv.o
	$(LLD) -shared $^ -o $@

testmlir : conv.hsaco
	$(CXX) $(CXXFLAGS) $(TESTMLIR_SOURCE) -o $@

clean :
	rm -rf dump* *.log core conv.s conv.o conv.hsaco testmlir

