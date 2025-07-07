# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
# Tool Version Limit: 2024.11
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
__SIM_FPO__ = 1
__SIM_MATHHLS__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1
__USE_VCXX_CLANG__ = 1

__USE_CLANG__ = 1

__COSIM_FLOW__ = 1


DIRECTORY := $(shell basename $(CURDIR))
ifeq ($(DIRECTORY), wrapc_pc)
  override TARGET := cosim.pc.exe
  WFLAG += -DPOST_CHECK
else
  override TARGET := cosim.tv.exe
endif
IRWRAPPER  := $(basename $(wildcard *.ll))
CPPWRAPPER := $(IRWRAPPER:_ir=)
APATB_UTIL := $(basename $(wildcard $(IRWRAPPER:_ir=_util).cpp))

AUTOPILOT_ROOT := C:/Xilinx_2024_ent/Vitis/2024.2
AUTOPILOT_MACH := win64

ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx_2024_ent/Vitis/2024.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL = ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH = ${AUTOPILOT_ROOT}/common/technology
  AP_CLANG_PATH := C:/Xilinx_2024_ent/Vitis/2024.2/vcxx/libexec/
TOOLCHAIN += --sysroot=C:/Xilinx_2024_ent/Vitis/2024.2/tps/mingw/10.0.0/win64.o/nt
LFLAG += --sysroot=C:/Xilinx_2024_ent/Vitis/2024.2/tps/mingw/10.0.0/win64.o/nt
CCFLAG += -Werror=uninitialized
CCFLAG += -Wno-error=c++11-narrowing
CCFLAG += -Wno-error=sometimes-uninitialized

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -D__VITIS_HLS__
IFLAG += -D__HLS_COSIM__
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
IFLAG += -D__DSP48E2__
WFLAG += -DUSE_BINARY_TV_FILE
IFLAG += -DNT
LFLAG += -Wl,--stack,0x40000000
LFLAG += -lpthread
LFLAG += -L C:/Xilinx_2024_ent/Vitis/2024.2/vcxx/lib/clang/14.0.6/lib/windows -lclang_rt.builtins-x86_64
IFLAG += -D__RTL_SIMULATION__
IFLAG += -D__xilinx_ip_top=
DFLAG += -DAESL_PIPELINE
LFLAG += -Wl,--enable-auto-import

include ./Makefile.rules

APATB_OBJECTS := $(addprefix $(ObjDir)/, $(addsuffix .o, $(CPPWRAPPER) $(IRWRAPPER) $(APATB_UTIL)))
OBJECTS := $(filter-out $(APATB_OBJECTS), $(OBJECTS)) $(APATB_OBJECTS)

all : $(TARGET)

$(ObjDir)/$(CPPWRAPPER).o: $(CPPWRAPPER).cpp
	$(Echo) "   Compiling $<" $(AVE_DIR_DLOG)
	$(Verb) $(CXX) -fno-builtin-isinf -fno-builtin-isnan -c $(TOOLCHAIN) $(IFLAG) $(WFLAG) $< -o $@

$(ObjDir)/matrix_tb.cpp_pre.cpp.tb.o : matrix_tb.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling matrix_tb.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++14 -fno-builtin-isinf -fno-builtin-isnan -c -Wno-unknown-pragmas -Wno-unknown-pragmas $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/matrix.cpp_pre.cpp.tb.o : matrix.cpp_pre.cpp.tb.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling matrix.cpp_pre.cpp.tb.cpp" $(AVE_DIR_DLOG)
	$(Verb) $(CC) ${CCFLAG} ${TOOLCHAIN} -std=gnu++14 -fno-builtin-isinf -fno-builtin-isnan -c  $(IFLAG) $(DFLAG) $< -o $@; \
