#include <iostream>
#include <iomanip>
#include <numeric>
#include <vector>

// hip header file
//#include "hip/hip_fp16.h"
#include "hip/hip_runtime.h"

using DataType_t = float;

#define HIP_CHECK(status)                                                             \
    if (status != hipSuccess) {                                                       \
	    std::cout << "Got Status: " << status << " at Line: " << __LINE__ << std::endl; \
	    exit(0);                                                                        \
    }

void gemmGpu(DataType_t *gemmADevice, DataType_t *gemmBDevice,
             DataType_t *outputDevice, int gridSize, int blockSize) {
  hipModule_t Module;
  hipFunction_t Function;
  HIP_CHECK(hipModuleLoad(&Module, "gemm.hsaco"));
  HIP_CHECK(hipModuleGetFunction(&Function, Module, "rock_gemm"));

  struct {
    void *gemmA;
    void *gemmB;
    void *output;
  } args;

  args.gemmA = gemmADevice;
  args.gemmB = gemmBDevice;
  args.output = outputDevice;

  size_t size = sizeof(args);
  void* config[] = { HIP_LAUNCH_PARAM_BUFFER_POINTER, &args, 
    HIP_LAUNCH_PARAM_BUFFER_SIZE, &size, HIP_LAUNCH_PARAM_END };

  HIP_CHECK(hipModuleLaunchKernel(Function, gridSize, 1, 1, blockSize, 1, 1, 0,
                                  0, NULL, (void **)&config));
}

void printV(std::string vName, const std::vector<DataType_t> &V) {
  std::cout << vName << ": ";                              
  for (auto v : V){                                        
    std::cout << v << ",";                               
  }                                                        
  std::cout << std::endl;
}

void fillPattern(std::vector<DataType_t> &data) {
  std::vector<DataType_t> pattern{2, 1};
  for (int i = 0; i < data.size(); ++i) {
    data[i] = pattern[i % pattern.size()];
  }
}

void gemmCpu(const std::vector<DataType_t> &gemmA,
             const std::vector<DataType_t> &gemmB,
             std::vector<DataType_t> &output, int M, int N, int K) {
  for (int m = 0; m < M; m++) {
    for (int n = 0; n < N; n++) {
      for (int k = 0; k < K; k++) {
        output[m * N + n] += gemmA[m * K + k] * gemmB[k * N + n];
      }
    }
  }
}

void validate(const std::vector<DataType_t> &cpu,
              const std::vector<DataType_t> &gpu) {
  assert(cpu.size() == gpu.size());

  bool success = true;
  for (int i = 0; i < cpu.size(); ++i) {
    if (cpu[i] != gpu[i]) {
      success = false;
      std::cout << "index: " << i << ", " << cpu[i] << " != " << gpu[i]
                << std::endl;
    }
  }
  std::cout << "Validation result " << success << std::endl;
}

int main()
{
  hipDeviceProp_t devProp;
  hipGetDeviceProperties(&devProp, 0);
  // std::cout << "Device name " << devProp.name << std::endl;

  int M = 2;
  int K = 4;
  int N = 34;
  int GRID = 1;
  int BLOCK = 128;
  std::cout << "gemm dimension "
            << "M " << M << " N " << N << " K " << K << std::endl;

  std::vector<int64_t> gemmADims = {M, K};
  std::vector<int64_t> gemmBDims = {K, N};
  std::vector<int64_t> outputDims = {M, N};

  DataType_t* gemmADevice = nullptr;
  DataType_t* gemmBDevice = nullptr;
  DataType_t* outputDevice = nullptr;

  auto getSize = [](std::vector<int64_t> dims) {
    return std::accumulate(dims.begin(), dims.end(), 1, std::multiplies<int64_t>());
  };

  auto getSizeInBytes = [&](std::vector<int64_t> dims) {
    return sizeof(DataType_t) * getSize(dims);
  };

  // allocate the memory on the device side
  hipMalloc((void **)&gemmADevice, getSizeInBytes(gemmADims));
  hipMalloc((void **)&gemmBDevice, getSizeInBytes(gemmBDims));
  hipMalloc((void **)&outputDevice, getSizeInBytes(outputDims));

  std::vector<DataType_t> gemmA(getSize(gemmADims), 1);
  std::vector<DataType_t> gemmB(getSize(gemmBDims), 1);
  std::vector<DataType_t> outputH(getSize(outputDims), 0);
  fillPattern(gemmA);
  fillPattern(gemmB);

  hipMemcpyHtoD(gemmADevice, gemmA.data(), getSizeInBytes(gemmADims));
  hipMemcpyHtoD(gemmBDevice, gemmB.data(), getSizeInBytes(gemmBDims));
  hipMemcpyHtoD(outputDevice, outputH.data(), getSizeInBytes(outputDims));

  gemmGpu(gemmADevice, gemmBDevice, outputDevice, GRID, BLOCK);
  hipMemcpyDtoH(outputH.data(), outputDevice, getSizeInBytes(outputDims));

  std::vector<DataType_t> gemmC(outputH.size(), 0);
  gemmCpu(gemmA, gemmB, gemmC, M, N, K);

  validate(gemmC, outputH);

  // free the resources on device side
  hipFree(gemmADevice);
  hipFree(gemmBDevice);
  hipFree(outputDevice);

  return 0;
}
