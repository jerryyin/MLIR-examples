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

void conv2dDevice(
    DataType_t* gemmBDevice,
    DataType_t* gemmADevice,
    DataType_t* outputDevice)
{
  hipModule_t Module;
  hipFunction_t Function;
  HIP_CHECK(hipModuleLoad(&Module, "gemm.hsaco"));
  HIP_CHECK(hipModuleGetFunction(&Function, Module, "rock_gemm"));

  struct {
	  void* filter;
	  void* input;
	  void* output;
  } args;

  args.filter = gemmADevice;
  args.input = gemmBDevice;
  args.output = outputDevice;

  size_t size = sizeof(args);
  void* config[] = { HIP_LAUNCH_PARAM_BUFFER_POINTER, &args, 
    HIP_LAUNCH_PARAM_BUFFER_SIZE, &size, HIP_LAUNCH_PARAM_END };

  HIP_CHECK(hipModuleLaunchKernel(Function, 1, 1, 1, 128, 1, 1,
	  0, 0, NULL, (void**)&config));
}

void printV(std::string vName, const std::vector<int64_t>& V){
  std::cout << vName << ": ";                              
  for (auto v : V){                                        
    std::cout << v << ",";                               
  }                                                        
  std::cout << std::endl;                                  
}                                                            

int main()
{
  hipDeviceProp_t devProp;
  hipGetDeviceProperties(&devProp, 0);

  std::cout << "Device name " << devProp.name << std::endl;

  std::vector<int64_t> gemmADims = {2, 8};
  std::vector<int64_t> gemmBDims = {8, 34};
  std::vector<int64_t> outputDims = {2, 34};

  DataType_t* gemmADevice = nullptr;
  DataType_t* gemmBDevice = nullptr;
  DataType_t* outputDevice = nullptr;

  auto getSize = [](std::vector<int64_t> dims) {
    return std::accumulate(dims.begin(), dims.end(), 1, std::multiplies<int64_t>());
  };

  auto getSizeInBytes = [](int64_t size) {
    return sizeof(DataType_t) * size;
  };

  // allocate the memory on the device side
  hipMalloc((void**)&gemmBDevice, getSizeInBytes(getSize(gemmBDims)));
  hipMalloc((void**)&gemmADevice, getSizeInBytes(getSize(gemmADims)));
  hipMalloc((void**)&outputDevice, getSizeInBytes(getSize(outputDims)));

  std::vector<DataType_t> inputH(getSize(gemmBDims), 1);
  std::vector<DataType_t> filterH(getSize(gemmADims), 1);
  std::vector<DataType_t> outputH(getSize(outputDims), 0);

  hipMemcpyHtoD(gemmBDevice, inputH.data(), getSizeInBytes(getSize(gemmBDims)));
  hipMemcpyHtoD(gemmADevice, filterH.data(), getSizeInBytes(getSize(gemmADims)));
  hipMemcpyHtoD(outputDevice, outputH.data(), getSizeInBytes(getSize(outputDims)));

  printV("filter dims: ", gemmADims);
  printV("input dims: ", gemmBDims);
  printV("output dims: ", outputDims);

  conv2dDevice(gemmBDevice, gemmADevice, outputDevice);

  hipMemcpyDtoH(outputH.data(), outputDevice, getSizeInBytes(getSize(outputDims)));
  //for (int i = 0; i < getSize(outputDims); ++i){
  for (int i = 0; i < 68; ++i) {
    std::cout << outputH[i] << " ";
  }
  std::cout << std::endl;

  // free the resources on device side
  hipFree(gemmADevice);
  hipFree(gemmBDevice);
  hipFree(outputDevice);

  return 0;
}
