## Conv2d binary interface showcase example

The given example show case a minimal example that invoke into MLIR generated conv2d gpu kernels. The example is mostly self-explanatary. 

Please note: test_mlir.h is a code snippet from MLIR project's CRunnerUtils.h.

To build:
```makefile
make testmlir
```

To clean:
```makefile
make clean
```

### Passing attempts:

0. MIOpen test result:
```
$ cleanup; MIOPEN_DRIVER_USE_GPU_REFERENCE=1 MIOPEN_FIND_MODE=1 MIOPEN_DEBUG_FIND_ONLY_SOLVER=ConvMlirIgemmFwd  bin/MIOpenDriver conv  -F 1 -V 1 -n 256 -c 1024 -H 7 -W 7 -k 1024 -y 3 -x 3 -p 1 -q 1 -u 1 -v 1 -l 1 -j 1 -g 1 -t 1

MIOpenDriver conv -F 1 -V 1 -n 256 -c 1024 -H 7 -W 7 -k 1024 -y 3 -x 3 -p 1 -q 1 -u 1 -v 1 -l 1 -j 1 -g 1 -t 1
MIOpen(HIP): Warning [SQLiteBase] Unable to read system database file:/opt/rocm/miopen/share/miopen/db/miopen.db Performance may degrade
local size: 256 global_size: 200704
hsaco path: /tmp/miopen-mlir_gen_igemm_conv2d_v4r4_fwd.mlir-4145-7e81-e9e0-c2f2/mlir_gen_igemm_conv2d_v4r4_fwd.mlir.o
MIOpen Forward Conv. Algorithm: 5, Solution: 98/ConvMlirIgemmFwd
GPU Kernel Time Forward Conv. Elapsed: 36.705635 ms (average)
stats: name, n, c, ho, wo, x, y, k, flopCnt, bytesRead, bytesWritten, GFLOPs, GB/s, timeMs
stats: fwd-conv3x3u1, 256, 1024, 7, 7, 3, 3, 1024,  236760072192, 89128960, 51380224, 6450, 4, 36.705635
Forward Convolution Verifies OK on GPU reference (2.87131e-07)
```

1. Populate the kernel:
```bash
./bin/mlir-miopen-lib-test --args "--operation conv2d_bwd_data --kernel_id 0 --num_cu 120 --arch gfx908 --groupsize 1 --fil_layout GNCHW --fil_type fp32 --in_layout NGCHW --in_type fp32 --out_layout NGCHW --out_type fp32 --batchsize 256 --in_channels 1024 --out_channels 1024 --in_h 7 --in_w 7 --out_h 7 --out_w 7 --fil_h 3 --fil_w 3 --dilation_h 1 --dilation_w 1 --conv_stride_h 1 --conv_stride_w 1 --padding_h 1 --padding_w 1 --kernel_name mlir_gen_igemm_conv2d_v4r1_bwd0" --option bin &> conv.hsaco
```

2. Run the kernel with the following updates to the source code. No crash observed.
```cpp
# Launch params
# 784 = 200704 / 256
  HIP_CHECK(hipModuleLaunchKernel(Function, 784, 1, 1, 256, 1, 1,
	  0, 0, NULL, (void**)&config));

# Dimensions
  std::vector<int64_t> inputDims = { 256, 1, 1024, 7, 7 };
  std::vector<int64_t> filterDims = { 1, 1024, 1024, 3, 3 };
  std::vector<int64_t> outputDims = { 256, 1, 1024, 7, 7 };
```

### Failing attempts

0. MIOpen test result
```
$ cleanup; MIOPEN_DRIVER_USE_GPU_REFERENCE=1 MIOPEN_FIND_MODE=1 MIOPEN_DEBUG_FIND_ONLY_SOLVER=ConvMlirIgemmBwd  bin/MIOpenDriver conv  -F 2 -V 1 -n 256 -c 1024 -H 14 -W 14 -k 256 -y 1 -x 1 -p 0 -q 0 -u 1 -v 1 -l 1 -j 1 -g 1 -t 1

MIOpenDriver conv -F 2 -V 1 -n 256 -c 1024 -H 14 -W 14 -k 256 -y 1 -x 1 -p 0 -q 0 -u 1 -v 1 -l 1 -j 1 -g 1 -t 1
MIOpen(HIP): Warning [SQLiteBase] Unable to read system database file:/opt/rocm/miopen/share/miopen/db/miopen.db Performance may degrade
local size: 256 global_size: 802816
Memory access fault by GPU node-2 (Agent handle: 0x1c3a3b0) on address 0x7fee5ab66000. Reason: Page not present or supervisor privilege.
[1]    22220 abort (core dumped)  MIOPEN_DRIVER_USE_GPU_REFERENCE=1 MIOPEN_FIND_MODE=1 =ConvMlirIgemmBwd  conv
```

1. Populate the kernel
```bash
./bin/mlir-miopen-lib-test --args "--operation conv2d_bwd_data --kernel_id 0 --num_cu 120 --arch gfx908 --groupsize 1 --fil_layout GNCHW --fil_type fp32 --in_layout NGCHW --in_type fp32 --out_layout NGCHW --out_type fp32 --batchsize 256 --in_channels 1024 --out_channels 256 --in_h 14 --in_w 14 --out_h 14 --out_w 14 --fil_h 1 --fil_w 1 --dilation_h 1 --dilation_w 1 --conv_stride_h 1 --conv_stride_w 1 --padding_h 0 --padding_w 0 --kernel_name mlir_gen_igemm_conv2d_v4r1_bwd0" --option bin &> conv.hsaco
```

2. Run the kernel with the following updates to the source code. No crash observed.
```cpp
# Launch params
# 3136 = 802816 / 256
  HIP_CHECK(hipModuleLaunchKernel(Function, 3136, 1, 1, 256, 1, 1,
	  0, 0, NULL, (void**)&config));

# Dimensions
  std::vector<int64_t> inputDims = { 256, 1, 1024, 14, 14 };
  std::vector<int64_t> filterDims = { 1, 256, 1024 1, 1 };
  std::vector<int64_t> outputDims = { 256, 1, 256, 14, 14 };
```


