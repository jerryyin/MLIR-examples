#include <iostream>
#include <iomanip>
#include <numeric>
#include <vector>

// hip header file
//#include "hip/hip_fp16.h"
#include "hip/hip_runtime.h"

#include "test_mlir.h"

struct StridedMemRef5D {
  void *basePtr;
  void *data;
  int64_t offset;
  int64_t sizes[5];
  int64_t strides[5];
};

using DataType_t = float;
//using MemRef5DFp32 = StridedMemRefType<float, 5>;
using MemRef5DFp32 = StridedMemRef5D;

#define HIP_CHECK(status)                                                             \
    if (status != hipSuccess) {                                                       \
	    std::cout << "Got Status: " << status << " at Line: " << __LINE__ << std::endl; \
	    exit(0);                                                                        \
    }

void conv2dDevice(
    DataType_t* inputD, const std::vector<int64_t>& inputDims,
    const std::vector<int64_t>& inputStrides,
    DataType_t* filterD, const std::vector<int64_t>& filterDims,
    const std::vector<int64_t>& filterStrides,
    DataType_t* outputD, const std::vector<int64_t>& outputDims,
    const std::vector<int64_t>& outputStrides)
{
  hipModule_t Module;
  hipFunction_t Function;
  HIP_CHECK(hipModuleLoad(&Module, "conv.hsaco"));
  HIP_CHECK(hipModuleGetFunction(&Function, Module, "mlir_gen_igemm_conv2d_v4r1_bwd0"));

  struct {
	  MemRef5DFp32 filter;
	  MemRef5DFp32 input;
	  MemRef5DFp32 output;
  } args;

  auto cpyToMemRef = [](DataType_t* ptr, const std::vector<int64_t>& dims,
		   const std::vector<int64_t>& strides, MemRef5DFp32& target) {
	  target.basePtr = ptr;
	  target.data = ptr;
	  target.offset = 0;
	  std::copy(dims.begin(), dims.end(), &target.sizes[0]);
	  std::copy(strides.begin(), strides.end(), &target.strides[0]);
  };

  cpyToMemRef(filterD, filterDims, filterStrides, args.filter);
  cpyToMemRef(inputD, inputDims, inputStrides, args.input);
  cpyToMemRef(outputD, outputDims, outputStrides, args.output);

  size_t size = sizeof(args);
  void* config[] = { HIP_LAUNCH_PARAM_BUFFER_POINTER, &args, 
    HIP_LAUNCH_PARAM_BUFFER_SIZE, &size, HIP_LAUNCH_PARAM_END };


  //std::cout << std::hex << std::setfill('0');  // needs to be set only once
  //auto *ptr = reinterpret_cast<unsigned char *>(&args);
  //for (int i = 0; i < size; i++, ptr++) {
  //    if (i % sizeof(unsigned long long) == 0) {
  //            std::cout << std::endl;
  //        }
  //    std::cout << std::setw(2) << static_cast<unsigned>(*ptr) << " ";
  //}

  //HIP_CHECK(hipModuleLaunchKernel(Function, 784, 1, 1, 256, 1, 1,
  HIP_CHECK(hipModuleLaunchKernel(Function, 3136, 1, 1, 256, 1, 1,
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

  std::vector<int64_t> inputDims = { 256, 1, 1024, 14, 14 };
  std::vector<int64_t> filterDims = { 1, 256, 1024, 1, 1 };
  std::vector<int64_t> outputDims = { 256, 1, 256, 14, 14 };

  DataType_t* filterD = nullptr;
  DataType_t* inputD = nullptr;
  DataType_t* outputD = nullptr;

  auto getSize = [](std::vector<int64_t> dims) {
    return std::accumulate(dims.begin(), dims.end(), 1, std::multiplies<int64_t>());
  };

  auto getSizeInBytes = [](int64_t size) {
    return sizeof(DataType_t) * size;
  };

  // allocate the memory on the device side
  hipMalloc((void**)&inputD, getSizeInBytes(getSize(inputDims)));
  hipMalloc((void**)&filterD, getSizeInBytes(getSize(filterDims)));
  hipMalloc((void**)&outputD, getSizeInBytes(getSize(outputDims)));

  std::vector<DataType_t> inputH(getSize(inputDims), 1);
  std::vector<DataType_t> filterH(getSize(filterDims), 1);
  std::vector<DataType_t> outputH(getSize(outputDims), 0);

  hipMemcpyHtoD(inputD, inputH.data(), getSizeInBytes(getSize(inputDims)));
  hipMemcpyHtoD(filterD, filterH.data(), getSizeInBytes(getSize(filterDims)));
  hipMemcpyHtoD(outputD, outputH.data(), getSizeInBytes(getSize(outputDims)));

  auto stridesFromDims = [](std::vector<int64_t> dims) {
    std::vector<int64_t> strides;
    strides.push_back(1);
    for (auto it = dims.rbegin(); it != dims.rend() - 1; ++it) {
        strides.push_back(strides.back() * (*it));
    }
    std::reverse(strides.begin(), strides.end());
    return strides;
  };

  std::vector<int64_t> inputStrides = stridesFromDims(inputDims);
  std::vector<int64_t> filterStrides = stridesFromDims(filterDims);
  std::vector<int64_t> outputStrides = stridesFromDims(outputDims);

  printV("filter dims: ", filterDims);
  printV("filter strides: ", filterStrides);
  printV("input dims: ", inputDims);
  printV("input strides: ", inputStrides);
  printV("output dims: ", outputDims);
  printV("output strides: ", outputStrides);

  conv2dDevice(inputD, inputDims, inputStrides, filterD, filterDims,
    filterStrides, outputD, outputDims, outputStrides);

  hipMemcpyDtoH(outputH.data(), outputD, getSizeInBytes(getSize(outputDims)));
  //for (int i = 0; i < getSize(outputDims); ++i){
  for (int i = 0; i < 10; ++i) {
    std::cout << outputH[i] << " ";
  }
  std::cout << std::endl;

  // free the resources on device side
  hipFree(filterD);
  hipFree(inputD);
  hipFree(outputD);

  return 0;
}
