#include "hip/hip_fp16.h"
#include "hip/hip_runtime.h"

#include <iostream>
#include <vector>

using std::vector;

#define HIP_CHECK(func)                                                        \
  do {                                                                         \
    hipError_t status = func;                                                \
    if (status != hipSuccess) {                                                \
      std::cerr << "HIP error: " << hipGetErrorString(status)                  \
                << " calling " #func "at Line: " << __LINE__ << "\n";   \
      exit(1);                                                                 \
    }                                                                          \
  } while (0)


using elem_t = half;

static constexpr uint32_t K = 32;
static constexpr uint32_t M = 64;
static constexpr uint32_t N = 1;

static constexpr uint32_t numWorkgroups = 1;
static constexpr uint32_t lanesPerWorkgroup = 128;

void fillArray(vector<elem_t> &buffer) {
    static const vector<elem_t> pattern = {0.5, -1.0, 0.75};
    for (size_t i = 0, e = buffer.size(); i < e; ++i) {
      buffer[i] = pattern[i % pattern.size()];
    }
}

bool validate(const vector<elem_t>& cpu, const vector<elem_t>& gpu) {
    bool success = true;
    for (size_t m = 0; m < M; ++m) {
        for (size_t n = 0; n < N; ++n) {
          if (cpu[n + N * m] != gpu[n + N * m]) {
            success = false;
            std::cout << "At (" << m << ", " << n << ") expected "
                      << cpu[n + N * m] << " but got " << gpu[n + N * m] << "\n";
          }
        }
    }
    return success;
}

void gemmCpu(const vector<elem_t>& a, const vector<elem_t>& b, vector<elem_t>& c) {
    for (size_t m = 0; m < M; ++m) {
        for (size_t n = 0; n < N; ++n) {
          float accum = 0.0;
          for (size_t k = 0; k < K; ++k) {
              accum += (float)(a[m + M * k] * b[n + N * k]);
          }
          c[n + N * m] = accum;
        }
    }
}

void gemmGpu(elem_t *aDevice, elem_t *bDevice, elem_t *cDevice, const char *filename) {
  hipModule_t Module;
  hipFunction_t Function;
  HIP_CHECK(hipModuleLoad(&Module, filename));
  HIP_CHECK(hipModuleGetFunction(&Function, Module, "rock_gemm"));

  struct {
    void *a;
    void *b;
    void *c;
  } args;

  args.a = aDevice;
  args.b = bDevice;
  args.c = cDevice;

  size_t size = sizeof(args);
  void* config[] = { HIP_LAUNCH_PARAM_BUFFER_POINTER, &args,
    HIP_LAUNCH_PARAM_BUFFER_SIZE, &size, HIP_LAUNCH_PARAM_END };

  HIP_CHECK(hipModuleLaunchKernel(Function, numWorkgroups, 1, 1, lanesPerWorkgroup, 1, 1, 0,
                                  0, NULL, (void **)&config));
}

elem_t* pushToDevice(const vector<elem_t> &hostVal) {
    elem_t* ret = nullptr;
    size_t nBytes = hostVal.size() * sizeof(elem_t);
    HIP_CHECK(hipMalloc((void**)&ret, nBytes));
    HIP_CHECK(hipMemcpyHtoD(ret, (void*)hostVal.data(), nBytes));
    return ret;
}

vector<elem_t> slurpFromDevice(elem_t *deviceBuf, size_t length) {
    vector<elem_t> ret(length, std::nanf(""));
    HIP_CHECK(hipMemcpyDtoH(ret.data(), deviceBuf, length * sizeof(elem_t)));
    return ret;
}

bool test(const char *filename) {
    constexpr uint32_t aSize = K * M;
    constexpr uint32_t bSize = K * N;
    constexpr uint32_t cSize = M * N;

    vector<elem_t> a(aSize, 1.0);
    vector<elem_t> b(bSize, 1.0);
    vector<elem_t> c(cSize, 0.0);

    fillArray(a);
    fillArray(b);

    elem_t *aDevice = pushToDevice(a);
    elem_t *bDevice = pushToDevice(b);
    elem_t *cDevice = pushToDevice(c);

    gemmGpu(aDevice, bDevice, cDevice, filename);
    vector<elem_t> cGpu = slurpFromDevice(cDevice, cSize);
    HIP_CHECK(hipFree(aDevice));
    HIP_CHECK(hipFree(bDevice));
    HIP_CHECK(hipFree(cDevice));

    gemmCpu(a, b, c);
    return validate(c, cGpu);
}

int main(int argc, const char **argv) {
    if (argc != 2) {
        std::cerr << "Usage: " << argv[0] <<
        " path_to_assembled_module.hsaco\n";
        return 1;
    }
    const char *filename = argv[1];
    std::cout << filename << " ... ";
    bool ret = test(filename);
    std::cout << (ret ? "pass\n" : "FAIL!\n");
    return !ret;
}
