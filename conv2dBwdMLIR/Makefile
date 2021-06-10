ARCH = gfx908

LLC = /opt/rocm/llvm/bin/llc
LLVMMC = /opt/rocm/llvm/bin/llvm-mc
LLD = /opt/rocm/llvm/bin/ld.lld
CXX = /opt/rocm/hip/bin/hipcc

CXXFLAGS = -Wall
CXXFLAGS += -Werror 

TESTMLIR_SOURCE=test_mlir.cpp

# TO populate conv.ll:
# ./bin/mlir-miopen-driver -p | ./bin/mlir-opt -miopen-lowering -miopen-affine-transform -miopen-affix-params -miopen-lowering-step2 -miopen-lowering-step3 -miopen-lowering-step4 -miopen-lowering-step5 -convert-miopen-to-gpu -convert-gpu-to-rocdl | ./bin/mlir-translate -mlir-to-rocdlir | ./bin/opt -O3 -S &> conv.ll

#conv.s : conv.ll
#	$(LLC) -mcpu=$(ARCH) -o $@ $^
#
#conv.o : conv.s
#	$(LLVMMC) --triple=amdgcn-amd-amdhsa -mcpu=$(ARCH) --filetype=obj -o $@ $^
#
#conv.hsaco : conv.o
#	$(LLD) -shared $^ -o $@
#
# To populate conv.hsaco
# ./bin/mlir-miopen-lib-test --args "--operation conv2d_bwd_data --kernel_id 0 --num_cu 120 --arch gfx908 --groupsize 1 --fil_layout GNCHW --fil_type fp32 --in_layout NGCHW --in_type fp32 --out_layout NGCHW --out_type fp32 --batchsize 256 --in_channels 1024 --out_channels 256 --in_h 14 --in_w 14 --out_h 14 --out_w 14 --fil_h 1 --fil_w 1 --dilation_h 1 --dilation_w 1 --conv_stride_h 1 --conv_stride_w 1 --padding_h 0 --padding_w 0 --kernel_name mlir_gen_igemm_conv2d_v4r1_bwd0" --option bin &> conv.hsaco
testmlir : conv.hsaco
	$(CXX) $(CXXFLAGS) $(TESTMLIR_SOURCE) -o $@

clean :
	rm -rf dump* *.log core conv.s conv.o conv.hsaco testmlir

