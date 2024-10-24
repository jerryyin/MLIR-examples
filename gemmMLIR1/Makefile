LLVM_BUILD_BIN_DIR ?= /var/kdrewnia/llvm-project/build/bin
LLC := ${LLVM_BUILD_BIN_DIR}/llc
MC := ${LLVM_BUILD_BIN_DIR}/llvm-mc

ROCM_ROOT := $(shell hipconfig -R)
LLD := ${ROCM_ROOT}/llvm/bin/ld.lld
CXX := ${ROCM_ROOT}/llvm/bin/clang++

# Save you the bother of editing for your system
GPU := $(shell ${ROCM_ROOT}/bin/rocm_agent_enumerator | grep -v gfx000 | head -n 1)

# Common flags
LLCFLAGS ?= -mtriple=amdgcn-amd-amdhsa -mcpu=${GPU}
MCFLAGS ?= --triple=amdgcn-amd-amdhsa -mcpu=${GPU}

HIP_CXXFLAGS := $(shell hipconfig -C)
CXXFLAGS += -std=c++17 -Wall -Wextra -O2 -g ${HIP_CXXFLAGS}
LDFLAGS += -L${ROCM_ROOT}/lib -lamdhip64 -Wl,-rpath=${ROCM_ROOT}/lib

tests = old-code-O0.hsaco old-code-O1.hsaco new-code-O0.hsaco new-code-O1.hsaco new-code-gisel-O1.hsaco new-code-gisel-O3.hsaco

all: driver ${tests}

test: all
	./driver ./old-code-O0.hsaco
	./driver ./old-code-O1.hsaco
	./driver ./new-code-O0.hsaco
	./driver ./new-code-gisel-O1.hsaco
	./driver ./new-code-gisel-O3.hsaco
	./driver ./new-code-O1.hsaco

old-code-O0.s: old-code-opt.ll
	${LLC} ${LLCFLAGS} -O0 -o $@ $^
old-code-O1.s: old-code-opt.ll
	${LLC} ${LLCFLAGS} -O1 -o $@ $^
new-code-O0.s: new-code-opt.ll
	${LLC} ${LLCFLAGS} -O0 -o $@ $^
new-code-gisel-O1.s: new-code-opt.ll
	${LLC} ${LLCFLAGS} -global-isel -O1 -o $@ $^
new-code-gisel-O3.s: new-code-opt.ll
	${LLC} ${LLCFLAGS} -global-isel -O3 -o $@ $^
new-code-O1.s: new-code-opt.ll
	${LLC} ${LLCFLAGS} -O1 -o $@ $^

%.o: %.s
	${MC} ${MCFLAGS} --filetype=obj -o $@ $^
%.hsaco: %.o
	${LLD} -shared -o $@ $^

driver: driver.o
	${CXX} ${LDFLAGS} -o $@ $^
driver.o: driver.cpp
	${CXX} ${CXXFLAGS} -c -o $@ $^

clean:
	rm *.o *.s *.hsaco driver

.PHONY: all clean test
