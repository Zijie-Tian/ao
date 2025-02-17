# 在文件顶部添加编译器选择
CXX = clang++  # 明确指定使用clang编译器
CC = clang     # 同时指定C编译器（如有需要）

ROOT_DIR:=$(shell dirname $(dir $(realpath $(firstword $(MAKEFILE_LIST)))))

PKG_CFLAGS = -std=c++17 -O3 -fPIC\
	-I${TVM_ROOT}/include\
	-I${TVM_ROOT}/3rdparty/dmlc-core/include\
	-I${TVM_ROOT}/3rdparty/dlpack/include\
	-I${ROOT_DIR}/tmac\
	-DDMLC_USE_LOGGING_LIBRARY=\<tvm/runtime/logging.h\> \
	-DTMAC_USE_TVM_THREADPOOL \
	-march=armv8.2-a+fp16 -mfpu=neon-fp-armv8

PKG_LDFLAGS = -L${TVM_ROOT}/build -ldl -pthread

.PHONY: clean all

all: build/benchmark

build/kernels.o: compile.py
	echo $(ROOT_DIR)
	echo $(TVM_ROOT)
	@mkdir -p $(@D)
	python compile.py -o tuned -da -nt 4 -d jetson -ags 64 -t -gc -zp -m hf-bitnet-3b  
	# python compile.py -o tuned -da -nt 4 -d jetson -ags 64 -t -m test
	$(CXX) $(PKG_CFLAGS) -c ./tuned/kernels.cc -o $@
	# mv ./tuned/kernels.o $@

build/benchmark: benchmark.cc build/kernels.o
	@mkdir -p $(@D)
	$(CXX) $(PKG_CFLAGS) -o $@  $^ -ltvm_runtime $(PKG_LDFLAGS)

clean:
	rm -rf build
