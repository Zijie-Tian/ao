; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.1.0"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%4 = type { ptr, i32 }
%closure_loop_parallel_m.outer = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [87 x i8] c"Assert fail: num_args == 6, qgemm_lut_t4_int8_m8192_k14336_n1_b2: num_args should be 6\00", align 1
@.str.1 = private constant [105 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t4_int8_m8192_k14336_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [107 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t4_int8_m8192_k14336_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [138 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [146 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [158 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [174 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [174 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [138 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [119 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [121 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [123 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [125 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [129 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [131 x i8] c"Assert fail: 3 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.ndim is expected to equal 3\00", align 1
@.str.15 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [139 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [139 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [119 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [121 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [240 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [244 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[0]) == 32, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape[0] has an unsatisfied constraint: 32 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[1]) == 3584, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape[1] has an unsatisfied constraint: 3584 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [246 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[2]) == 128, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape[2] has an unsatisfied constraint: 128 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [322 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_strides[2]) and 128 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_strides[1]) and 458752 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_strides[0]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [207 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [187 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [114 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [247 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[1]) == 3584, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape[1] has an unsatisfied constraint: 3584 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [250 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [246 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_strides[1]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [213 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [193 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [199 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [118 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [263 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [259 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[0]) == 32, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape[0] has an unsatisfied constraint: 32 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[0])\00", align 1
@.str.40 = private constant [261 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[1]) == 112, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape[1] has an unsatisfied constraint: 112 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[1])\00", align 1
@.str.41 = private constant [261 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[2]) == 256, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape[2] has an unsatisfied constraint: 256 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[2])\00", align 1
@.str.42 = private constant [341 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_strides[2]) and 256 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_strides[1]) and 28672 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_strides[0]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides: expected to be compact array\00", align 1
@.str.43 = private constant [222 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.44 = private constant [202 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.45 = private constant [208 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.46 = private constant [124 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.47 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.48 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.49 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape[1]) == 224, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 224 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.50 = private constant [181 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.51 = private constant [234 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.52 = private constant [214 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.53 = private constant [220 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.54 = private constant [132 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.55 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.56 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.57 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape[1]) == 224, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 224 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.58 = private constant [181 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.59 = private constant [234 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.60 = private constant [214 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.61 = private constant [220 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.62 = private constant [132 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.63 = private constant [243 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.dtype is expected to be float16\00", align 1
@.str.64 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_shape[0])\00", align 1
@.str.65 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_shape[1]) == 4096, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape[1] has an unsatisfied constraint: 4096 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_shape[1])\00", align 1
@.str.66 = private constant [163 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_strides[1]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.strides: expected to be compact array\00", align 1
@.str.67 = private constant [207 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.68 = private constant [187 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.69 = private constant [193 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.70 = private constant [114 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C is expected to have non-NULL data pointer\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [37 x i8] c"qgemm_lut_t4_int8_m8192_k14336_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t4_int8_m8192_k14336_n1_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !18, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !19, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !20, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !21, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = icmp eq i32 %num_args, 6, !dbg !24
  br i1 %0, label %assert_end, label %assert_fail, !dbg !24, !prof !25

common.ret:                                       ; preds = %assert_end162, %assert_fail161, %assert_fail159, %assert_fail157, %assert_fail155, %assert_fail153, %assert_fail149, %assert_fail147, %assert_fail145, %assert_fail143, %assert_fail141, %assert_fail139, %assert_fail137, %assert_fail135, %assert_fail131, %assert_fail129, %assert_fail127, %assert_fail125, %assert_fail123, %assert_fail121, %assert_fail119, %assert_fail117, %assert_fail113, %assert_fail111, %assert_fail109, %assert_fail107, %assert_fail105, %assert_fail103, %assert_fail101, %assert_fail99, %assert_fail95, %assert_fail93, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail83, %assert_fail81, %assert_fail79, %assert_fail75, %assert_fail73, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail61, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail49, %assert_fail47, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail93 ], [ -1, %assert_fail95 ], [ -1, %assert_fail99 ], [ -1, %assert_fail101 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ -1, %assert_fail107 ], [ -1, %assert_fail109 ], [ -1, %assert_fail111 ], [ -1, %assert_fail113 ], [ -1, %assert_fail117 ], [ -1, %assert_fail119 ], [ -1, %assert_fail121 ], [ -1, %assert_fail123 ], [ -1, %assert_fail125 ], [ -1, %assert_fail127 ], [ -1, %assert_fail129 ], [ -1, %assert_fail131 ], [ -1, %assert_fail135 ], [ -1, %assert_fail137 ], [ -1, %assert_fail139 ], [ -1, %assert_fail141 ], [ -1, %assert_fail143 ], [ -1, %assert_fail145 ], [ -1, %assert_fail147 ], [ -1, %assert_fail149 ], [ -1, %assert_fail153 ], [ -1, %assert_fail155 ], [ -1, %assert_fail157 ], [ -1, %assert_fail159 ], [ -1, %assert_fail161 ], [ %331, %assert_end162 ]
  ret i32 %common.ret.op, !dbg !24

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %1(ptr nonnull @.str), !dbg !24
  br label %common.ret

assert_end:                                       ; preds = %entry
  %.not = icmp eq ptr %args, null, !dbg !24
  br i1 %.not, label %assert_fail1, label %assert_end2, !dbg !24, !prof !29

assert_fail1:                                     ; preds = %assert_end
  %2 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %2(ptr nonnull @.str.1), !dbg !24
  br label %common.ret

assert_end2:                                      ; preds = %assert_end
  %.not169 = icmp eq ptr %arg_type_ids, null, !dbg !24
  br i1 %.not169, label %assert_fail3, label %assert_end4, !dbg !24, !prof !29

assert_fail3:                                     ; preds = %assert_end2
  %3 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %3(ptr nonnull @.str.2), !dbg !24
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2
  %A.code = load i32, ptr %arg_type_ids, align 4, !dbg !24, !tbaa !30
  call void @llvm.dbg.declare(metadata i32 %A.code, metadata !41, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %A.code, metadata !41, metadata !DIExpression()), !dbg !24
  switch i32 %A.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !24

assert_fail5:                                     ; preds = %assert_end4
  %4 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %4(ptr nonnull @.str.3), !dbg !24
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %5 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !24
  %LUT.code = load i32, ptr %5, align 4, !dbg !24, !tbaa !42
  call void @llvm.dbg.declare(metadata i32 %LUT.code, metadata !44, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %LUT.code, metadata !44, metadata !DIExpression()), !dbg !24
  switch i32 %LUT.code, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ], !dbg !24

assert_fail7:                                     ; preds = %assert_end6
  %6 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %6(ptr nonnull @.str.4), !dbg !24
  br label %common.ret

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %7 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !24
  %Scales.code = load i32, ptr %7, align 4, !dbg !24, !tbaa !45
  call void @llvm.dbg.declare(metadata i32 %Scales.code, metadata !48, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %Scales.code, metadata !48, metadata !DIExpression()), !dbg !24
  switch i32 %Scales.code, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ], !dbg !24

assert_fail9:                                     ; preds = %assert_end8
  %8 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %8(ptr nonnull @.str.5), !dbg !24
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  %9 = getelementptr inbounds i32, ptr %arg_type_ids, i64 3, !dbg !24
  %LUT_Scales.code = load i32, ptr %9, align 4, !dbg !24, !tbaa !49
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !51, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !51, metadata !DIExpression()), !dbg !24
  switch i32 %LUT_Scales.code, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ], !dbg !24

assert_fail11:                                    ; preds = %assert_end10
  %10 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %10(ptr nonnull @.str.6), !dbg !24
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %11 = getelementptr inbounds i32, ptr %arg_type_ids, i64 4, !dbg !24
  %LUT_Biases.code = load i32, ptr %11, align 4, !dbg !24, !tbaa !52
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !56, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !56, metadata !DIExpression()), !dbg !24
  switch i32 %LUT_Biases.code, label %assert_fail13 [
    i32 13, label %assert_end14
    i32 7, label %assert_end14
    i32 4, label %assert_end14
    i32 3, label %assert_end14
  ], !dbg !24

assert_fail13:                                    ; preds = %assert_end12
  %12 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %12(ptr nonnull @.str.7), !dbg !24
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12, %assert_end12, %assert_end12, %assert_end12
  %13 = getelementptr inbounds i32, ptr %arg_type_ids, i64 5, !dbg !24
  %C.code = load i32, ptr %13, align 4, !dbg !24, !tbaa !57
  call void @llvm.dbg.declare(metadata i32 %C.code, metadata !59, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %C.code, metadata !59, metadata !DIExpression()), !dbg !24
  switch i32 %C.code, label %assert_fail15 [
    i32 13, label %assert_end16
    i32 7, label %assert_end16
    i32 4, label %assert_end16
    i32 3, label %assert_end16
  ], !dbg !24

assert_fail15:                                    ; preds = %assert_end14
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %14(ptr nonnull @.str.8), !dbg !24
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14, %assert_end14, %assert_end14, %assert_end14
  %A = load ptr, ptr %args, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A, metadata !60, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A, metadata !60, metadata !DIExpression()), !dbg !24
  %15 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !24
  %LUT = load ptr, ptr %15, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT, metadata !61, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT, metadata !61, metadata !DIExpression()), !dbg !24
  %16 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !24
  %Scales = load ptr, ptr %16, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales, metadata !62, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales, metadata !62, metadata !DIExpression()), !dbg !24
  %17 = getelementptr inbounds %0, ptr %args, i64 3, !dbg !24
  %LUT_Scales = load ptr, ptr %17, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales, metadata !63, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales, metadata !63, metadata !DIExpression()), !dbg !24
  %18 = getelementptr inbounds %0, ptr %args, i64 4, !dbg !24
  %LUT_Biases = load ptr, ptr %18, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases, metadata !64, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases, metadata !64, metadata !DIExpression()), !dbg !24
  %19 = getelementptr inbounds %0, ptr %args, i64 5, !dbg !24
  %C = load ptr, ptr %19, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C, metadata !65, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C, metadata !65, metadata !DIExpression()), !dbg !24
  %.not170 = icmp eq ptr %A, null, !dbg !24
  br i1 %.not170, label %assert_fail17, label %assert_end18, !dbg !24, !prof !29

assert_fail17:                                    ; preds = %assert_end16
  %20 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %20(ptr nonnull @.str.9), !dbg !24
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %21 = getelementptr inbounds %1, ptr %A, i64 0, i32 2, !dbg !24
  %22 = load i32, ptr %21, align 4, !dbg !24
  %23 = icmp eq i32 %22, 3, !dbg !24
  br i1 %23, label %assert_end20, label %assert_fail19, !dbg !24, !prof !25

assert_fail19:                                    ; preds = %assert_end18
  %24 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %24(ptr nonnull @.str.10), !dbg !24
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %25 = getelementptr inbounds %1, ptr %A, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  %27 = getelementptr inbounds %1, ptr %A, i64 0, i32 1, i32 1, !dbg !24
  %dev_id = load i32, ptr %27, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !70, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !70, metadata !DIExpression()), !dbg !24
  %A164 = load ptr, ptr %A, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A164, metadata !71, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A164, metadata !71, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %A164, i64 64) ], !dbg !24
  %.not171 = icmp eq ptr %LUT, null, !dbg !24
  br i1 %.not171, label %assert_fail23, label %assert_end24, !dbg !24, !prof !29

assert_fail23:                                    ; preds = %assert_end20
  %28 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %28(ptr nonnull @.str.11), !dbg !24
  br label %common.ret

assert_end24:                                     ; preds = %assert_end20
  %29 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 2, !dbg !24
  %30 = load i32, ptr %29, align 4, !dbg !24
  %31 = icmp eq i32 %30, 3, !dbg !24
  br i1 %31, label %assert_end26, label %assert_fail25, !dbg !24, !prof !25

assert_fail25:                                    ; preds = %assert_end24
  %32 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %32(ptr nonnull @.str.12), !dbg !24
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %33 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  %LUT163 = load ptr, ptr %LUT, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT163, metadata !76, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT163, metadata !76, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT163, i64 64) ], !dbg !24
  %.not172 = icmp eq ptr %Scales, null, !dbg !24
  br i1 %.not172, label %assert_fail29, label %assert_end30, !dbg !24, !prof !29

assert_fail29:                                    ; preds = %assert_end26
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %35(ptr nonnull @.str.13), !dbg !24
  br label %common.ret

assert_end30:                                     ; preds = %assert_end26
  %36 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 2, !dbg !24
  %37 = load i32, ptr %36, align 4, !dbg !24
  %38 = icmp eq i32 %37, 3, !dbg !24
  br i1 %38, label %assert_end32, label %assert_fail31, !dbg !24, !prof !25

assert_fail31:                                    ; preds = %assert_end30
  %39 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %39(ptr nonnull @.str.14), !dbg !24
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %40 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  %41 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides = load ptr, ptr %41, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides, metadata !80, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides, metadata !80, metadata !DIExpression()), !dbg !24
  %Scales165 = load ptr, ptr %Scales, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales165, metadata !81, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales165, metadata !81, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %Scales165, i64 64) ], !dbg !24
  %.not173 = icmp eq ptr %LUT_Scales, null, !dbg !24
  br i1 %.not173, label %assert_fail35, label %assert_end36, !dbg !24, !prof !29

assert_fail35:                                    ; preds = %assert_end32
  %42 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %42(ptr nonnull @.str.15), !dbg !24
  br label %common.ret

assert_end36:                                     ; preds = %assert_end32
  %43 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 2, !dbg !24
  %44 = load i32, ptr %43, align 4, !dbg !24
  %45 = icmp eq i32 %44, 2, !dbg !24
  br i1 %45, label %assert_end38, label %assert_fail37, !dbg !24, !prof !25

assert_fail37:                                    ; preds = %assert_end36
  %46 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %46(ptr nonnull @.str.16), !dbg !24
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %47 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %48 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.strides = load ptr, ptr %48, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  %LUT_Scales166 = load ptr, ptr %LUT_Scales, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales166, metadata !86, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales166, metadata !86, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT_Scales166, i64 64) ], !dbg !24
  %.not174 = icmp eq ptr %LUT_Biases, null, !dbg !24
  br i1 %.not174, label %assert_fail41, label %assert_end42, !dbg !24, !prof !29

assert_fail41:                                    ; preds = %assert_end38
  %49 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %49(ptr nonnull @.str.17), !dbg !24
  br label %common.ret

assert_end42:                                     ; preds = %assert_end38
  %50 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 2, !dbg !24
  %51 = load i32, ptr %50, align 4, !dbg !24
  %52 = icmp eq i32 %51, 2, !dbg !24
  br i1 %52, label %assert_end44, label %assert_fail43, !dbg !24, !prof !25

assert_fail43:                                    ; preds = %assert_end42
  %53 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %53(ptr nonnull @.str.18), !dbg !24
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %54 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %55 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.strides = load ptr, ptr %55, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  %LUT_Biases167 = load ptr, ptr %LUT_Biases, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases167, metadata !89, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases167, metadata !89, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT_Biases167, i64 64) ], !dbg !24
  %.not175 = icmp eq ptr %C, null, !dbg !24
  br i1 %.not175, label %assert_fail47, label %assert_end48, !dbg !24, !prof !29

assert_fail47:                                    ; preds = %assert_end44
  %56 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %56(ptr nonnull @.str.19), !dbg !24
  br label %common.ret

assert_end48:                                     ; preds = %assert_end44
  %57 = getelementptr inbounds %1, ptr %C, i64 0, i32 2, !dbg !24
  %58 = load i32, ptr %57, align 4, !dbg !24
  %59 = icmp eq i32 %58, 2, !dbg !24
  br i1 %59, label %assert_end50, label %assert_fail49, !dbg !24, !prof !25

assert_fail49:                                    ; preds = %assert_end48
  %60 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %60(ptr nonnull @.str.20), !dbg !24
  br label %common.ret

assert_end50:                                     ; preds = %assert_end48
  %61 = getelementptr inbounds %1, ptr %C, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %62 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.strides = load ptr, ptr %62, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  %C168 = load ptr, ptr %C, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C168, metadata !92, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C168, metadata !92, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %C168, i64 64) ], !dbg !24
  %63 = getelementptr inbounds %1, ptr %A, i64 0, i32 3, i32 0, !dbg !24
  %64 = load i8, ptr %63, align 1, !dbg !24
  %65 = icmp eq i8 %64, 1, !dbg !24
  %66 = getelementptr inbounds %1, ptr %A, i64 0, i32 3, i32 1, !dbg !24
  %67 = load i8, ptr %66, align 1, !dbg !24
  %68 = icmp eq i8 %67, 8, !dbg !24
  %69 = and i1 %65, %68, !dbg !24
  %70 = getelementptr inbounds %1, ptr %A, i64 0, i32 3, i32 2, !dbg !24
  %71 = load i16, ptr %70, align 2, !dbg !24
  %72 = icmp eq i16 %71, 1, !dbg !24
  %73 = and i1 %69, %72, !dbg !24
  br i1 %73, label %assert_end54, label %assert_fail53, !dbg !24, !prof !25

assert_fail53:                                    ; preds = %assert_end50
  %74 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %74(ptr nonnull @.str.21), !dbg !24
  br label %common.ret

assert_end54:                                     ; preds = %assert_end50
  %75 = load i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %76 = and i64 %75, 4294967295, !dbg !24
  %77 = icmp eq i64 %76, 32, !dbg !24
  br i1 %77, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %78(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %79 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape, i64 1, !dbg !24
  %80 = load i64, ptr %79, align 8, !dbg !24, !tbaa !103
  %81 = and i64 %80, 4294967295, !dbg !24
  %82 = icmp eq i64 %81, 3584, !dbg !24
  br i1 %82, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %83(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %84 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape, i64 2, !dbg !24
  %85 = load i64, ptr %84, align 8, !dbg !24, !tbaa !105
  %86 = and i64 %85, 4294967295, !dbg !24
  %87 = icmp eq i64 %86, 128, !dbg !24
  br i1 %87, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %88 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %88(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not176 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides, null, !dbg !24
  br i1 %.not176, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %89 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides, i64 2, !dbg !24
  %90 = load i64, ptr %89, align 8, !dbg !24, !tbaa !108
  %91 = and i64 %90, 4294967295, !dbg !24
  %92 = icmp eq i64 %91, 1, !dbg !24
  %93 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides, i64 1, !dbg !24
  %94 = load i64, ptr %93, align 8, !dbg !24, !tbaa !118
  %95 = and i64 %94, 4294967295, !dbg !24
  %96 = icmp eq i64 %95, 128, !dbg !24
  %97 = and i1 %92, %96, !dbg !24
  %98 = load i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides, align 8, !dbg !24, !tbaa !121
  %99 = and i64 %98, 4294967295, !dbg !24
  %100 = icmp eq i64 %99, 458752, !dbg !24
  %101 = and i1 %97, %100, !dbg !24
  br i1 %101, label %if_end, label %assert_fail61, !dbg !24, !prof !25

if_end:                                           ; preds = %if_then, %assert_end60
  %102 = getelementptr inbounds %1, ptr %A, i64 0, i32 6, !dbg !24
  %103 = load i64, ptr %102, align 8, !dbg !24
  %104 = icmp eq i64 %103, 0, !dbg !24
  br i1 %104, label %assert_end64, label %assert_fail63, !dbg !24, !prof !25

assert_fail61:                                    ; preds = %if_then
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %105(ptr nonnull @.str.25), !dbg !24
  br label %common.ret

assert_fail63:                                    ; preds = %if_end
  %106 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %106(ptr nonnull @.str.26), !dbg !24
  br label %common.ret

assert_end64:                                     ; preds = %if_end
  %107 = getelementptr inbounds %1, ptr %A, i64 0, i32 1, i32 0, !dbg !24
  %108 = load i32, ptr %107, align 4, !dbg !24
  %109 = icmp eq i32 %108, 1, !dbg !24
  br i1 %109, label %assert_end66, label %assert_fail65, !dbg !24, !prof !25

assert_fail65:                                    ; preds = %assert_end64
  %110 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %110(ptr nonnull @.str.27), !dbg !24
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %.not177 = icmp eq ptr %A164, null, !dbg !24
  br i1 %.not177, label %assert_fail67, label %assert_end68, !dbg !24, !prof !29

assert_fail67:                                    ; preds = %assert_end66
  %111 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %111(ptr nonnull @.str.28), !dbg !24
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %112 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 0, !dbg !24
  %113 = load i8, ptr %112, align 1, !dbg !24
  %114 = icmp eq i8 %113, 0, !dbg !24
  %115 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 1, !dbg !24
  %116 = load i8, ptr %115, align 1, !dbg !24
  %117 = icmp eq i8 %116, 8, !dbg !24
  %118 = and i1 %114, %117, !dbg !24
  %119 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 2, !dbg !24
  %120 = load i16, ptr %119, align 2, !dbg !24
  %121 = icmp eq i16 %120, 1, !dbg !24
  %122 = and i1 %118, %121, !dbg !24
  br i1 %122, label %assert_end70, label %assert_fail69, !dbg !24, !prof !25

assert_fail69:                                    ; preds = %assert_end68
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %123(ptr nonnull @.str.29), !dbg !24
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %124 = load i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape, align 8, !dbg !24, !tbaa !123
  %125 = and i64 %124, 4294967295, !dbg !24
  %126 = icmp eq i64 %125, 1, !dbg !24
  br i1 %126, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %127 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %127(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %128 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape, i64 1, !dbg !24
  %129 = load i64, ptr %128, align 8, !dbg !24, !tbaa !133
  %130 = and i64 %129, 4294967295, !dbg !24
  %131 = icmp eq i64 %130, 3584, !dbg !24
  br i1 %131, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %132 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %132(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %133 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape, i64 2, !dbg !24
  %134 = load i64, ptr %133, align 8, !dbg !24, !tbaa !135
  %135 = and i64 %134, 4294967295, !dbg !24
  %136 = icmp eq i64 %135, 16, !dbg !24
  br i1 %136, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %137 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %137(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not178 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides, null, !dbg !24
  br i1 %.not178, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %138 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides, i64 2, !dbg !24
  %139 = load i64, ptr %138, align 8, !dbg !24, !tbaa !138
  %140 = and i64 %139, 4294967295, !dbg !24
  %141 = icmp eq i64 %140, 1, !dbg !24
  %142 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides, i64 1, !dbg !24
  %143 = load i64, ptr %142, align 8, !dbg !24, !tbaa !148
  %144 = and i64 %143, 4294967295, !dbg !24
  %145 = icmp eq i64 %144, 16, !dbg !24
  %146 = and i1 %141, %145, !dbg !24
  br i1 %146, label %if_end78, label %assert_fail79, !dbg !24, !prof !25

if_end78:                                         ; preds = %if_then77, %assert_end76
  %147 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 6, !dbg !24
  %148 = load i64, ptr %147, align 8, !dbg !24
  %149 = icmp eq i64 %148, 0, !dbg !24
  br i1 %149, label %assert_end82, label %assert_fail81, !dbg !24, !prof !25

assert_fail79:                                    ; preds = %if_then77
  %150 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %150(ptr nonnull @.str.33), !dbg !24
  br label %common.ret

assert_fail81:                                    ; preds = %if_end78
  %151 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %151(ptr nonnull @.str.34), !dbg !24
  br label %common.ret

assert_end82:                                     ; preds = %if_end78
  %152 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 0, !dbg !24
  %153 = load i32, ptr %152, align 4, !dbg !24
  %154 = icmp eq i32 %153, 1, !dbg !24
  br i1 %154, label %assert_end84, label %assert_fail83, !dbg !24, !prof !25

assert_fail83:                                    ; preds = %assert_end82
  %155 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %155(ptr nonnull @.str.35), !dbg !24
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %156 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 1, !dbg !24
  %157 = load i32, ptr %156, align 4, !dbg !24
  %158 = icmp eq i32 %dev_id, %157, !dbg !24
  br i1 %158, label %assert_end86, label %assert_fail85, !dbg !24, !prof !25

assert_fail85:                                    ; preds = %assert_end84
  %159 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %159(ptr nonnull @.str.36), !dbg !24
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %.not179 = icmp eq ptr %LUT163, null, !dbg !24
  br i1 %.not179, label %assert_fail87, label %assert_end88, !dbg !24, !prof !29

assert_fail87:                                    ; preds = %assert_end86
  %160 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %160(ptr nonnull @.str.37), !dbg !24
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %161 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 0, !dbg !24
  %162 = load i8, ptr %161, align 1, !dbg !24
  %163 = icmp eq i8 %162, 2, !dbg !24
  %164 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 1, !dbg !24
  %165 = load i8, ptr %164, align 1, !dbg !24
  %166 = icmp eq i8 %165, 16, !dbg !24
  %167 = and i1 %163, %166, !dbg !24
  %168 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 2, !dbg !24
  %169 = load i16, ptr %168, align 2, !dbg !24
  %170 = icmp eq i16 %169, 1, !dbg !24
  %171 = and i1 %167, %170, !dbg !24
  br i1 %171, label %assert_end90, label %assert_fail89, !dbg !24, !prof !25

assert_fail89:                                    ; preds = %assert_end88
  %172 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %172(ptr nonnull @.str.38), !dbg !24
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %173 = load i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape, align 8, !dbg !24, !tbaa !151
  %174 = and i64 %173, 4294967295, !dbg !24
  %175 = icmp eq i64 %174, 32, !dbg !24
  br i1 %175, label %assert_end92, label %assert_fail91, !dbg !24, !prof !25

assert_fail91:                                    ; preds = %assert_end90
  %176 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %176(ptr nonnull @.str.39), !dbg !24
  br label %common.ret

assert_end92:                                     ; preds = %assert_end90
  %177 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape, i64 1, !dbg !24
  %178 = load i64, ptr %177, align 8, !dbg !24, !tbaa !161
  %179 = and i64 %178, 4294967295, !dbg !24
  %180 = icmp eq i64 %179, 112, !dbg !24
  br i1 %180, label %assert_end94, label %assert_fail93, !dbg !24, !prof !25

assert_fail93:                                    ; preds = %assert_end92
  %181 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %181(ptr nonnull @.str.40), !dbg !24
  br label %common.ret

assert_end94:                                     ; preds = %assert_end92
  %182 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape, i64 2, !dbg !24
  %183 = load i64, ptr %182, align 8, !dbg !24, !tbaa !163
  %184 = and i64 %183, 4294967295, !dbg !24
  %185 = icmp eq i64 %184, 256, !dbg !24
  br i1 %185, label %assert_end96, label %assert_fail95, !dbg !24, !prof !25

assert_fail95:                                    ; preds = %assert_end94
  %186 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %186(ptr nonnull @.str.41), !dbg !24
  br label %common.ret

assert_end96:                                     ; preds = %assert_end94
  %.not180 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides, null, !dbg !24
  br i1 %.not180, label %if_end98, label %if_then97, !dbg !24, !prof !29

if_then97:                                        ; preds = %assert_end96
  %187 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides, i64 2, !dbg !24
  %188 = load i64, ptr %187, align 8, !dbg !24, !tbaa !166
  %189 = and i64 %188, 4294967295, !dbg !24
  %190 = icmp eq i64 %189, 1, !dbg !24
  %191 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides, i64 1, !dbg !24
  %192 = load i64, ptr %191, align 8, !dbg !24, !tbaa !176
  %193 = and i64 %192, 4294967295, !dbg !24
  %194 = icmp eq i64 %193, 256, !dbg !24
  %195 = and i1 %190, %194, !dbg !24
  %196 = load i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides, align 8, !dbg !24, !tbaa !179
  %197 = and i64 %196, 4294967295, !dbg !24
  %198 = icmp eq i64 %197, 28672, !dbg !24
  %199 = and i1 %195, %198, !dbg !24
  br i1 %199, label %if_end98, label %assert_fail99, !dbg !24, !prof !25

if_end98:                                         ; preds = %if_then97, %assert_end96
  %200 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 6, !dbg !24
  %201 = load i64, ptr %200, align 8, !dbg !24
  %202 = icmp eq i64 %201, 0, !dbg !24
  br i1 %202, label %assert_end102, label %assert_fail101, !dbg !24, !prof !25

assert_fail99:                                    ; preds = %if_then97
  %203 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %203(ptr nonnull @.str.42), !dbg !24
  br label %common.ret

assert_fail101:                                   ; preds = %if_end98
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %204(ptr nonnull @.str.43), !dbg !24
  br label %common.ret

assert_end102:                                    ; preds = %if_end98
  %205 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 0, !dbg !24
  %206 = load i32, ptr %205, align 4, !dbg !24
  %207 = icmp eq i32 %206, 1, !dbg !24
  br i1 %207, label %assert_end104, label %assert_fail103, !dbg !24, !prof !25

assert_fail103:                                   ; preds = %assert_end102
  %208 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %208(ptr nonnull @.str.44), !dbg !24
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %209 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 1, !dbg !24
  %210 = load i32, ptr %209, align 4, !dbg !24
  %211 = icmp eq i32 %dev_id, %210, !dbg !24
  br i1 %211, label %assert_end106, label %assert_fail105, !dbg !24, !prof !25

assert_fail105:                                   ; preds = %assert_end104
  %212 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %212(ptr nonnull @.str.45), !dbg !24
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  %.not181 = icmp eq ptr %Scales165, null, !dbg !24
  br i1 %.not181, label %assert_fail107, label %assert_end108, !dbg !24, !prof !29

assert_fail107:                                   ; preds = %assert_end106
  %213 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %213(ptr nonnull @.str.46), !dbg !24
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %214 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 0, !dbg !24
  %215 = load i8, ptr %214, align 1, !dbg !24
  %216 = icmp eq i8 %215, 2, !dbg !24
  %217 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 1, !dbg !24
  %218 = load i8, ptr %217, align 1, !dbg !24
  %219 = icmp eq i8 %218, 16, !dbg !24
  %220 = and i1 %216, %219, !dbg !24
  %221 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 2, !dbg !24
  %222 = load i16, ptr %221, align 2, !dbg !24
  %223 = icmp eq i16 %222, 1, !dbg !24
  %224 = and i1 %220, %223, !dbg !24
  br i1 %224, label %assert_end110, label %assert_fail109, !dbg !24, !prof !25

assert_fail109:                                   ; preds = %assert_end108
  %225 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %225(ptr nonnull @.str.47), !dbg !24
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %226 = load i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !181
  %227 = and i64 %226, 4294967295, !dbg !24
  %228 = icmp eq i64 %227, 1, !dbg !24
  br i1 %228, label %assert_end112, label %assert_fail111, !dbg !24, !prof !25

assert_fail111:                                   ; preds = %assert_end110
  %229 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %229(ptr nonnull @.str.48), !dbg !24
  br label %common.ret

assert_end112:                                    ; preds = %assert_end110
  %230 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape, i64 1, !dbg !24
  %231 = load i64, ptr %230, align 8, !dbg !24, !tbaa !191
  %232 = and i64 %231, 4294967295, !dbg !24
  %233 = icmp eq i64 %232, 224, !dbg !24
  br i1 %233, label %assert_end114, label %assert_fail113, !dbg !24, !prof !25

assert_fail113:                                   ; preds = %assert_end112
  %234 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %234(ptr nonnull @.str.49), !dbg !24
  br label %common.ret

assert_end114:                                    ; preds = %assert_end112
  %.not182 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not182, label %if_end116, label %if_then115, !dbg !24, !prof !29

if_then115:                                       ; preds = %assert_end114
  %235 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.strides, i64 1, !dbg !24
  %236 = load i64, ptr %235, align 8, !dbg !24, !tbaa !193
  %237 = and i64 %236, 4294967295, !dbg !24
  %238 = icmp eq i64 %237, 1, !dbg !24
  br i1 %238, label %if_end116, label %assert_fail117, !dbg !24, !prof !25

if_end116:                                        ; preds = %if_then115, %assert_end114
  %239 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 6, !dbg !24
  %240 = load i64, ptr %239, align 8, !dbg !24
  %241 = icmp eq i64 %240, 0, !dbg !24
  br i1 %241, label %assert_end120, label %assert_fail119, !dbg !24, !prof !25

assert_fail117:                                   ; preds = %if_then115
  %242 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %242(ptr nonnull @.str.50), !dbg !24
  br label %common.ret

assert_fail119:                                   ; preds = %if_end116
  %243 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %243(ptr nonnull @.str.51), !dbg !24
  br label %common.ret

assert_end120:                                    ; preds = %if_end116
  %244 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 0, !dbg !24
  %245 = load i32, ptr %244, align 4, !dbg !24
  %246 = icmp eq i32 %245, 1, !dbg !24
  br i1 %246, label %assert_end122, label %assert_fail121, !dbg !24, !prof !25

assert_fail121:                                   ; preds = %assert_end120
  %247 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %247(ptr nonnull @.str.52), !dbg !24
  br label %common.ret

assert_end122:                                    ; preds = %assert_end120
  %248 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 1, !dbg !24
  %249 = load i32, ptr %248, align 4, !dbg !24
  %250 = icmp eq i32 %dev_id, %249, !dbg !24
  br i1 %250, label %assert_end124, label %assert_fail123, !dbg !24, !prof !25

assert_fail123:                                   ; preds = %assert_end122
  %251 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %251(ptr nonnull @.str.53), !dbg !24
  br label %common.ret

assert_end124:                                    ; preds = %assert_end122
  %.not183 = icmp eq ptr %LUT_Scales166, null, !dbg !24
  br i1 %.not183, label %assert_fail125, label %assert_end126, !dbg !24, !prof !29

assert_fail125:                                   ; preds = %assert_end124
  %252 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %252(ptr nonnull @.str.54), !dbg !24
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %253 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 0, !dbg !24
  %254 = load i8, ptr %253, align 1, !dbg !24
  %255 = icmp eq i8 %254, 2, !dbg !24
  %256 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 1, !dbg !24
  %257 = load i8, ptr %256, align 1, !dbg !24
  %258 = icmp eq i8 %257, 16, !dbg !24
  %259 = and i1 %255, %258, !dbg !24
  %260 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 2, !dbg !24
  %261 = load i16, ptr %260, align 2, !dbg !24
  %262 = icmp eq i16 %261, 1, !dbg !24
  %263 = and i1 %259, %262, !dbg !24
  br i1 %263, label %assert_end128, label %assert_fail127, !dbg !24, !prof !25

assert_fail127:                                   ; preds = %assert_end126
  %264 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %264(ptr nonnull @.str.55), !dbg !24
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %265 = load i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !203
  %266 = and i64 %265, 4294967295, !dbg !24
  %267 = icmp eq i64 %266, 1, !dbg !24
  br i1 %267, label %assert_end130, label %assert_fail129, !dbg !24, !prof !25

assert_fail129:                                   ; preds = %assert_end128
  %268 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %268(ptr nonnull @.str.56), !dbg !24
  br label %common.ret

assert_end130:                                    ; preds = %assert_end128
  %269 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape, i64 1, !dbg !24
  %270 = load i64, ptr %269, align 8, !dbg !24, !tbaa !213
  %271 = and i64 %270, 4294967295, !dbg !24
  %272 = icmp eq i64 %271, 224, !dbg !24
  br i1 %272, label %assert_end132, label %assert_fail131, !dbg !24, !prof !25

assert_fail131:                                   ; preds = %assert_end130
  %273 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %273(ptr nonnull @.str.57), !dbg !24
  br label %common.ret

assert_end132:                                    ; preds = %assert_end130
  %.not184 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not184, label %if_end134, label %if_then133, !dbg !24, !prof !29

if_then133:                                       ; preds = %assert_end132
  %274 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.strides, i64 1, !dbg !24
  %275 = load i64, ptr %274, align 8, !dbg !24, !tbaa !215
  %276 = and i64 %275, 4294967295, !dbg !24
  %277 = icmp eq i64 %276, 1, !dbg !24
  br i1 %277, label %if_end134, label %assert_fail135, !dbg !24, !prof !25

if_end134:                                        ; preds = %if_then133, %assert_end132
  %278 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 6, !dbg !24
  %279 = load i64, ptr %278, align 8, !dbg !24
  %280 = icmp eq i64 %279, 0, !dbg !24
  br i1 %280, label %assert_end138, label %assert_fail137, !dbg !24, !prof !25

assert_fail135:                                   ; preds = %if_then133
  %281 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %281(ptr nonnull @.str.58), !dbg !24
  br label %common.ret

assert_fail137:                                   ; preds = %if_end134
  %282 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %282(ptr nonnull @.str.59), !dbg !24
  br label %common.ret

assert_end138:                                    ; preds = %if_end134
  %283 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 0, !dbg !24
  %284 = load i32, ptr %283, align 4, !dbg !24
  %285 = icmp eq i32 %284, 1, !dbg !24
  br i1 %285, label %assert_end140, label %assert_fail139, !dbg !24, !prof !25

assert_fail139:                                   ; preds = %assert_end138
  %286 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %286(ptr nonnull @.str.60), !dbg !24
  br label %common.ret

assert_end140:                                    ; preds = %assert_end138
  %287 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 1, !dbg !24
  %288 = load i32, ptr %287, align 4, !dbg !24
  %289 = icmp eq i32 %dev_id, %288, !dbg !24
  br i1 %289, label %assert_end142, label %assert_fail141, !dbg !24, !prof !25

assert_fail141:                                   ; preds = %assert_end140
  %290 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %290(ptr nonnull @.str.61), !dbg !24
  br label %common.ret

assert_end142:                                    ; preds = %assert_end140
  %.not185 = icmp eq ptr %LUT_Biases167, null, !dbg !24
  br i1 %.not185, label %assert_fail143, label %assert_end144, !dbg !24, !prof !29

assert_fail143:                                   ; preds = %assert_end142
  %291 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %291(ptr nonnull @.str.62), !dbg !24
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %292 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 0, !dbg !24
  %293 = load i8, ptr %292, align 1, !dbg !24
  %294 = icmp eq i8 %293, 2, !dbg !24
  %295 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 1, !dbg !24
  %296 = load i8, ptr %295, align 1, !dbg !24
  %297 = icmp eq i8 %296, 16, !dbg !24
  %298 = and i1 %294, %297, !dbg !24
  %299 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 2, !dbg !24
  %300 = load i16, ptr %299, align 2, !dbg !24
  %301 = icmp eq i16 %300, 1, !dbg !24
  %302 = and i1 %298, %301, !dbg !24
  br i1 %302, label %assert_end146, label %assert_fail145, !dbg !24, !prof !25

assert_fail145:                                   ; preds = %assert_end144
  %303 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %303(ptr nonnull @.str.63), !dbg !24
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %304 = load i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape, align 8, !dbg !24, !tbaa !225
  %305 = and i64 %304, 4294967295, !dbg !24
  %306 = icmp eq i64 %305, 1, !dbg !24
  br i1 %306, label %assert_end148, label %assert_fail147, !dbg !24, !prof !25

assert_fail147:                                   ; preds = %assert_end146
  %307 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %307(ptr nonnull @.str.64), !dbg !24
  br label %common.ret

assert_end148:                                    ; preds = %assert_end146
  %308 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape, i64 1, !dbg !24
  %309 = load i64, ptr %308, align 8, !dbg !24, !tbaa !235
  %310 = and i64 %309, 4294967295, !dbg !24
  %311 = icmp eq i64 %310, 4096, !dbg !24
  br i1 %311, label %assert_end150, label %assert_fail149, !dbg !24, !prof !25

assert_fail149:                                   ; preds = %assert_end148
  %312 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %312(ptr nonnull @.str.65), !dbg !24
  br label %common.ret

assert_end150:                                    ; preds = %assert_end148
  %.not186 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.strides, null, !dbg !24
  br i1 %.not186, label %if_end152, label %if_then151, !dbg !24, !prof !29

if_then151:                                       ; preds = %assert_end150
  %313 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.strides, i64 1, !dbg !24
  %314 = load i64, ptr %313, align 8, !dbg !24, !tbaa !237
  %315 = and i64 %314, 4294967295, !dbg !24
  %316 = icmp eq i64 %315, 1, !dbg !24
  br i1 %316, label %if_end152, label %assert_fail153, !dbg !24, !prof !25

if_end152:                                        ; preds = %if_then151, %assert_end150
  %317 = getelementptr inbounds %1, ptr %C, i64 0, i32 6, !dbg !24
  %318 = load i64, ptr %317, align 8, !dbg !24
  %319 = icmp eq i64 %318, 0, !dbg !24
  br i1 %319, label %assert_end156, label %assert_fail155, !dbg !24, !prof !25

assert_fail153:                                   ; preds = %if_then151
  %320 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %320(ptr nonnull @.str.66), !dbg !24
  br label %common.ret

assert_fail155:                                   ; preds = %if_end152
  %321 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %321(ptr nonnull @.str.67), !dbg !24
  br label %common.ret

assert_end156:                                    ; preds = %if_end152
  %322 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 0, !dbg !24
  %323 = load i32, ptr %322, align 4, !dbg !24
  %324 = icmp eq i32 %323, 1, !dbg !24
  br i1 %324, label %assert_end158, label %assert_fail157, !dbg !24, !prof !25

assert_fail157:                                   ; preds = %assert_end156
  %325 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %325(ptr nonnull @.str.68), !dbg !24
  br label %common.ret

assert_end158:                                    ; preds = %assert_end156
  %326 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 1, !dbg !24
  %327 = load i32, ptr %326, align 4, !dbg !24
  %328 = icmp eq i32 %dev_id, %327, !dbg !24
  br i1 %328, label %assert_end160, label %assert_fail159, !dbg !24, !prof !25

assert_fail159:                                   ; preds = %assert_end158
  %329 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %329(ptr nonnull @.str.69), !dbg !24
  br label %common.ret

assert_end160:                                    ; preds = %assert_end158
  %.not187 = icmp eq ptr %C168, null, !dbg !24
  br i1 %.not187, label %assert_fail161, label %assert_end162, !dbg !24, !prof !29

assert_fail161:                                   ; preds = %assert_end160
  %330 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %330(ptr nonnull @.str.70), !dbg !24
  br label %common.ret

assert_end162:                                    ; preds = %assert_end160
  %331 = tail call fastcc i32 @qgemm_lut_t4_int8_m8192_k14336_n1_b2_compute_(ptr nonnull %LUT163, ptr nonnull %A164, ptr nonnull %Scales165, ptr nonnull %LUT_Scales166, ptr nonnull %LUT_Biases167, ptr nonnull %C168), !dbg !24
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t4_int8_m8192_k14336_n1_b2_compute_(ptr noalias align 64 %LUT, ptr noalias align 64 %A, ptr noalias align 64 %Scales, ptr noalias align 64 %LUT_Scales, ptr noalias align 64 %LUT_Biases, ptr noalias align 64 %C) unnamed_addr #3 !dbg !247 {
entry:
  call void @llvm.dbg.value(metadata ptr %LUT, metadata !251, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %A, metadata !252, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %Scales, metadata !253, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !254, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !255, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.value(metadata ptr %C, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = alloca %closure_loop_parallel_m.outer, align 8, !dbg !257
  store ptr %LUT, ptr %0, align 8, !dbg !257
  %1 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 1, !dbg !257
  store ptr %A, ptr %1, align 8, !dbg !257
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 2, !dbg !257
  store ptr %Scales, ptr %2, align 8, !dbg !257
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 3, !dbg !257
  store ptr %LUT_Scales, ptr %3, align 8, !dbg !257
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 4, !dbg !257
  store ptr %LUT_Biases, ptr %4, align 8, !dbg !257
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 5, !dbg !257
  store ptr %C, ptr %5, align 8, !dbg !257
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !257, !tbaa !26
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %0, i32 0), !dbg !257
  ret i32 %7, !dbg !257
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #4 {
parallel_closure_entry:
  %CBits2 = alloca [256 x half], align 16, !dbg !257
  %LUT = load ptr, ptr %1, align 8, !dbg !257
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 1, !dbg !257
  %A = load ptr, ptr %2, align 8, !dbg !257
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 2, !dbg !257
  %Scales = load ptr, ptr %3, align 8, !dbg !257
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 3, !dbg !257
  %LUT_Scales = load ptr, ptr %4, align 8, !dbg !257
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 4, !dbg !257
  %LUT_Biases = load ptr, ptr %5, align 8, !dbg !257
  %6 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 5, !dbg !257
  %C = load ptr, ptr %6, align 8, !dbg !257
  %7 = getelementptr inbounds %4, ptr %0, i64 0, i32 1, !dbg !257
  %num_task = load i32, ptr %7, align 4, !dbg !257
  %8 = add nsw i32 %num_task, 31, !dbg !257
  %9 = sdiv i32 %8, %num_task, !dbg !257
  %10 = mul i32 %9, %task_id, !dbg !257
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 32), !dbg !257
  %12 = add nsw i32 %task_id, 1, !dbg !257
  %13 = mul nsw i32 %9, %12, !dbg !257
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 32), !dbg !257
  call void @llvm.dbg.declare(metadata i32 %11, metadata !258, metadata !DIExpression()), !dbg !257
  %15 = icmp slt i32 %11, %14, !dbg !257
  br i1 %15, label %for_body_m.outer.preheader, label %for_end_m.outer, !dbg !257, !prof !25

for_body_m.outer.preheader:                       ; preds = %parallel_closure_entry
  %16 = tail call i32 @llvm.smin.i32(i32 %10, i32 32), !dbg !257
  %smin = sext i32 %16 to i64, !dbg !257
  %17 = add i32 %14, %16, !dbg !257
  %18 = sub i32 %17, %11, !dbg !257
  %19 = getelementptr inbounds half, ptr %CBits2, i64 8, !dbg !257
  %20 = getelementptr inbounds half, ptr %CBits2, i64 16
  %21 = getelementptr inbounds half, ptr %CBits2, i64 24
  %22 = getelementptr inbounds half, ptr %CBits2, i64 32
  %23 = getelementptr inbounds half, ptr %CBits2, i64 40
  %24 = getelementptr inbounds half, ptr %CBits2, i64 48
  %25 = getelementptr inbounds half, ptr %CBits2, i64 56
  %26 = getelementptr inbounds half, ptr %CBits2, i64 64
  %27 = getelementptr inbounds half, ptr %CBits2, i64 72
  %28 = getelementptr inbounds half, ptr %CBits2, i64 80
  %29 = getelementptr inbounds half, ptr %CBits2, i64 88
  %30 = getelementptr inbounds half, ptr %CBits2, i64 96
  %31 = getelementptr inbounds half, ptr %CBits2, i64 104
  %32 = getelementptr inbounds half, ptr %CBits2, i64 112
  %33 = getelementptr inbounds half, ptr %CBits2, i64 120
  %34 = getelementptr inbounds half, ptr %CBits2, i64 128
  %35 = getelementptr inbounds half, ptr %CBits2, i64 136
  %36 = getelementptr inbounds half, ptr %CBits2, i64 144
  %37 = getelementptr inbounds half, ptr %CBits2, i64 152
  %38 = getelementptr inbounds half, ptr %CBits2, i64 160
  %39 = getelementptr inbounds half, ptr %CBits2, i64 168
  %40 = getelementptr inbounds half, ptr %CBits2, i64 176
  %41 = getelementptr inbounds half, ptr %CBits2, i64 184
  %42 = getelementptr inbounds half, ptr %CBits2, i64 192
  %43 = getelementptr inbounds half, ptr %CBits2, i64 200
  %44 = getelementptr inbounds half, ptr %CBits2, i64 208
  %45 = getelementptr inbounds half, ptr %CBits2, i64 216
  %46 = getelementptr inbounds half, ptr %CBits2, i64 224
  %47 = getelementptr inbounds half, ptr %CBits2, i64 232
  %48 = getelementptr inbounds half, ptr %CBits2, i64 240
  %49 = getelementptr inbounds half, ptr %CBits2, i64 248
  br label %for_body_m.outer, !dbg !257

for_body_m.outer:                                 ; preds = %for_body_m.outer.preheader, %for_body_m.c.outer
  %indvars.iv20 = phi i64 [ %smin, %for_body_m.outer.preheader ], [ %indvars.iv.next21, %for_body_m.c.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv20, metadata !258, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata ptr %CBits2, metadata !259, metadata !DIExpression()), !dbg !257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %CBits2, i8 0, i64 512, i1 false), !dbg !257
  %50 = mul nsw i64 %indvars.iv20, 458752
  %51 = mul nsw i64 %indvars.iv20, 28672
  call void @llvm.dbg.declare(metadata i32 0, metadata !260, metadata !DIExpression()), !dbg !257
  br label %for_body_k.outer, !dbg !257

for_end_m.outer:                                  ; preds = %for_body_m.c.outer, %parallel_closure_entry
  ret i32 0, !dbg !257

for_body_k.outer:                                 ; preds = %for_body_m.outer, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_ztrue_osfalse.exit
  %indvars.iv = phi i64 [ 0, %for_body_m.outer ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_ztrue_osfalse.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !260, metadata !DIExpression()), !dbg !257
  %52 = shl nuw nsw i64 %indvars.iv, 8, !dbg !257
  %53 = getelementptr inbounds i8, ptr %LUT, i64 %52, !dbg !257
  %54 = shl nuw nsw i64 %indvars.iv, 11, !dbg !257
  %55 = add nsw i64 %54, %50, !dbg !257
  %56 = getelementptr inbounds i8, ptr %A, i64 %55, !dbg !257
  %57 = shl i64 %indvars.iv, 7, !dbg !257
  %58 = and i64 %57, 2147483392, !dbg !257
  %59 = add nsw i64 %58, %51, !dbg !257
  %60 = getelementptr inbounds half, ptr %Scales, i64 %59, !dbg !257
  %61 = getelementptr inbounds half, ptr %LUT_Scales, i64 %indvars.iv, !dbg !257
  %62 = getelementptr inbounds half, ptr %LUT_Biases, i64 %indvars.iv, !dbg !257
  %63 = load <16 x i8>, ptr %53, align 1, !dbg !257
  %64 = getelementptr inbounds i8, ptr %53, i64 16, !dbg !257
  %65 = load <16 x i8>, ptr %64, align 1, !dbg !257
  %66 = getelementptr inbounds i8, ptr %53, i64 32, !dbg !257
  %67 = load <16 x i8>, ptr %66, align 1, !dbg !257
  %68 = getelementptr inbounds i8, ptr %53, i64 48, !dbg !257
  %69 = load <16 x i8>, ptr %68, align 1, !dbg !257
  %70 = getelementptr inbounds i8, ptr %53, i64 64, !dbg !257
  %71 = load <16 x i8>, ptr %70, align 1, !dbg !257
  %72 = getelementptr inbounds i8, ptr %53, i64 80, !dbg !257
  %73 = load <16 x i8>, ptr %72, align 1, !dbg !257
  %74 = getelementptr inbounds i8, ptr %53, i64 96, !dbg !257
  %75 = load <16 x i8>, ptr %74, align 1, !dbg !257
  %76 = getelementptr inbounds i8, ptr %53, i64 112, !dbg !257
  %77 = load <16 x i8>, ptr %76, align 1, !dbg !257
  %78 = getelementptr inbounds i8, ptr %53, i64 128, !dbg !257
  %79 = load <16 x i8>, ptr %78, align 1, !dbg !257
  %80 = getelementptr inbounds i8, ptr %53, i64 144, !dbg !257
  %81 = load <16 x i8>, ptr %80, align 1, !dbg !257
  %82 = getelementptr inbounds i8, ptr %53, i64 160, !dbg !257
  %83 = load <16 x i8>, ptr %82, align 1, !dbg !257
  %84 = getelementptr inbounds i8, ptr %53, i64 176, !dbg !257
  %85 = load <16 x i8>, ptr %84, align 1, !dbg !257
  %86 = getelementptr inbounds i8, ptr %53, i64 192, !dbg !257
  %87 = load <16 x i8>, ptr %86, align 1, !dbg !257
  %88 = getelementptr inbounds i8, ptr %53, i64 208, !dbg !257
  %89 = load <16 x i8>, ptr %88, align 1, !dbg !257
  %90 = getelementptr inbounds i8, ptr %53, i64 224, !dbg !257
  %91 = load <16 x i8>, ptr %90, align 1, !dbg !257
  %92 = getelementptr inbounds i8, ptr %53, i64 240, !dbg !257
  %93 = load <16 x i8>, ptr %92, align 1, !dbg !257
  %94 = load half, ptr %61, align 2, !tbaa !261
  %95 = load half, ptr %62, align 2, !tbaa !261
  %96 = insertelement <8 x half> poison, half %94, i64 0
  %97 = insertelement <8 x half> poison, half %95, i64 0
  %98 = shufflevector <8 x half> %96, <8 x half> poison, <8 x i32> zeroinitializer
  %99 = shufflevector <8 x half> %97, <8 x half> poison, <8 x i32> zeroinitializer
  %100 = fmul half %95, 0xH4000
  %101 = insertelement <8 x half> poison, half %100, i64 0
  %102 = shufflevector <8 x half> %101, <8 x half> poison, <8 x i32> zeroinitializer
  br label %103, !dbg !257

103:                                              ; preds = %103, %for_body_k.outer
  %104 = phi i64 [ 0, %for_body_k.outer ], [ %422, %103 ], !dbg !257
  %105 = shl nuw nsw i64 %104, 4, !dbg !257
  %106 = getelementptr inbounds i8, ptr %56, i64 %105, !dbg !257
  %107 = load <16 x i8>, ptr %106, align 1, !dbg !257
  %108 = lshr <16 x i8> %107, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %109 = and <16 x i8> %107, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %110 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %63, <16 x i8> %109), !dbg !257
  %111 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %63, <16 x i8> %108), !dbg !257
  %112 = getelementptr inbounds i8, ptr %106, i64 16, !dbg !257
  %113 = load <16 x i8>, ptr %112, align 1, !dbg !257
  %114 = lshr <16 x i8> %113, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %115 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %65, <16 x i8> %114), !dbg !257
  %116 = and <16 x i8> %113, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %117 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %65, <16 x i8> %116), !dbg !257
  %118 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %119 = shufflevector <16 x i8> %117, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %120 = sext <8 x i8> %118 to <8 x i16>, !dbg !257
  %121 = sext <8 x i8> %119 to <8 x i16>, !dbg !257
  %122 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %123 = sext <8 x i8> %122 to <8 x i16>, !dbg !257
  %124 = shufflevector <16 x i8> %117, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %125 = sext <8 x i8> %124 to <8 x i16>, !dbg !257
  %126 = add nsw <8 x i16> %121, %120, !dbg !257
  %127 = add nsw <8 x i16> %125, %123, !dbg !257
  %128 = shufflevector <16 x i8> %111, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %129 = shufflevector <16 x i8> %115, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %130 = sext <8 x i8> %128 to <8 x i16>, !dbg !257
  %131 = sext <8 x i8> %129 to <8 x i16>, !dbg !257
  %132 = shufflevector <16 x i8> %111, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %133 = sext <8 x i8> %132 to <8 x i16>, !dbg !257
  %134 = shufflevector <16 x i8> %115, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %135 = sext <8 x i8> %134 to <8 x i16>, !dbg !257
  %136 = getelementptr inbounds i8, ptr %106, i64 32, !dbg !257
  %137 = load <16 x i8>, ptr %136, align 1, !dbg !257
  %138 = lshr <16 x i8> %137, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %139 = and <16 x i8> %137, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %140 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %67, <16 x i8> %139), !dbg !257
  %141 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %67, <16 x i8> %138), !dbg !257
  %142 = getelementptr inbounds i8, ptr %106, i64 48, !dbg !257
  %143 = load <16 x i8>, ptr %142, align 1, !dbg !257
  %144 = and <16 x i8> %143, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %145 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %69, <16 x i8> %144), !dbg !257
  %146 = shufflevector <16 x i8> %140, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %147 = shufflevector <16 x i8> %145, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %148 = sext <8 x i8> %146 to <8 x i16>, !dbg !257
  %149 = sext <8 x i8> %147 to <8 x i16>, !dbg !257
  %150 = shufflevector <16 x i8> %140, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %151 = sext <8 x i8> %150 to <8 x i16>, !dbg !257
  %152 = shufflevector <16 x i8> %145, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %153 = sext <8 x i8> %152 to <8 x i16>, !dbg !257
  %154 = add nsw <8 x i16> %126, %148, !dbg !257
  %155 = add nsw <8 x i16> %154, %149, !dbg !257
  %156 = add nsw <8 x i16> %127, %151, !dbg !257
  %157 = add nsw <8 x i16> %156, %153, !dbg !257
  %158 = lshr <16 x i8> %143, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %159 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %69, <16 x i8> %158), !dbg !257
  %160 = shufflevector <16 x i8> %159, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %161 = sext <8 x i8> %160 to <8 x i16>, !dbg !257
  %162 = shufflevector <16 x i8> %141, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %163 = sext <8 x i8> %162 to <8 x i16>, !dbg !257
  %164 = shufflevector <16 x i8> %159, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %165 = sext <8 x i8> %164 to <8 x i16>, !dbg !257
  %166 = shufflevector <16 x i8> %141, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %167 = sext <8 x i8> %166 to <8 x i16>, !dbg !257
  %168 = getelementptr inbounds i8, ptr %106, i64 64, !dbg !257
  %169 = load <16 x i8>, ptr %168, align 1, !dbg !257
  %170 = lshr <16 x i8> %169, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %171 = and <16 x i8> %169, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %172 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %71, <16 x i8> %171), !dbg !257
  %173 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %71, <16 x i8> %170), !dbg !257
  %174 = getelementptr inbounds i8, ptr %106, i64 80, !dbg !257
  %175 = load <16 x i8>, ptr %174, align 1, !dbg !257
  %176 = and <16 x i8> %175, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %177 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %73, <16 x i8> %176), !dbg !257
  %178 = shufflevector <16 x i8> %172, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %179 = shufflevector <16 x i8> %177, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %180 = sext <8 x i8> %178 to <8 x i16>, !dbg !257
  %181 = sext <8 x i8> %179 to <8 x i16>, !dbg !257
  %182 = shufflevector <16 x i8> %172, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %183 = sext <8 x i8> %182 to <8 x i16>, !dbg !257
  %184 = shufflevector <16 x i8> %177, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %185 = sext <8 x i8> %184 to <8 x i16>, !dbg !257
  %186 = add nsw <8 x i16> %155, %180, !dbg !257
  %187 = add nsw <8 x i16> %186, %181, !dbg !257
  %188 = add nsw <8 x i16> %157, %183, !dbg !257
  %189 = add nsw <8 x i16> %188, %185, !dbg !257
  %190 = lshr <16 x i8> %175, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %191 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %73, <16 x i8> %190), !dbg !257
  %192 = shufflevector <16 x i8> %191, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %193 = sext <8 x i8> %192 to <8 x i16>, !dbg !257
  %194 = shufflevector <16 x i8> %173, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %195 = sext <8 x i8> %194 to <8 x i16>, !dbg !257
  %196 = shufflevector <16 x i8> %191, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %197 = sext <8 x i8> %196 to <8 x i16>, !dbg !257
  %198 = shufflevector <16 x i8> %173, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %199 = sext <8 x i8> %198 to <8 x i16>, !dbg !257
  %200 = getelementptr inbounds i8, ptr %106, i64 96, !dbg !257
  %201 = load <16 x i8>, ptr %200, align 1, !dbg !257
  %202 = lshr <16 x i8> %201, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %203 = and <16 x i8> %201, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %204 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %75, <16 x i8> %203), !dbg !257
  %205 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %75, <16 x i8> %202), !dbg !257
  %206 = getelementptr inbounds i8, ptr %106, i64 112, !dbg !257
  %207 = load <16 x i8>, ptr %206, align 1, !dbg !257
  %208 = and <16 x i8> %207, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %209 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %77, <16 x i8> %208), !dbg !257
  %210 = shufflevector <16 x i8> %204, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %211 = shufflevector <16 x i8> %209, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %212 = sext <8 x i8> %210 to <8 x i16>, !dbg !257
  %213 = sext <8 x i8> %211 to <8 x i16>, !dbg !257
  %214 = shufflevector <16 x i8> %204, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %215 = sext <8 x i8> %214 to <8 x i16>, !dbg !257
  %216 = shufflevector <16 x i8> %209, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %217 = sext <8 x i8> %216 to <8 x i16>, !dbg !257
  %218 = add nsw <8 x i16> %187, %212, !dbg !257
  %219 = add <8 x i16> %218, %213, !dbg !257
  %220 = add nsw <8 x i16> %189, %215, !dbg !257
  %221 = add <8 x i16> %220, %217, !dbg !257
  %222 = lshr <16 x i8> %207, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %223 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %77, <16 x i8> %222), !dbg !257
  %224 = shufflevector <16 x i8> %223, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %225 = sext <8 x i8> %224 to <8 x i16>, !dbg !257
  %226 = shufflevector <16 x i8> %205, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %227 = sext <8 x i8> %226 to <8 x i16>, !dbg !257
  %228 = shufflevector <16 x i8> %223, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %229 = sext <8 x i8> %228 to <8 x i16>, !dbg !257
  %230 = shufflevector <16 x i8> %205, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %231 = sext <8 x i8> %230 to <8 x i16>, !dbg !257
  %232 = getelementptr inbounds i8, ptr %106, i64 128, !dbg !257
  %233 = load <16 x i8>, ptr %232, align 1, !dbg !257
  %234 = lshr <16 x i8> %233, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %235 = and <16 x i8> %233, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %236 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %79, <16 x i8> %235), !dbg !257
  %237 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %79, <16 x i8> %234), !dbg !257
  %238 = getelementptr inbounds i8, ptr %106, i64 144, !dbg !257
  %239 = load <16 x i8>, ptr %238, align 1, !dbg !257
  %240 = and <16 x i8> %239, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %241 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %81, <16 x i8> %240), !dbg !257
  %242 = shufflevector <16 x i8> %236, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %243 = shufflevector <16 x i8> %241, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %244 = sext <8 x i8> %242 to <8 x i16>, !dbg !257
  %245 = sext <8 x i8> %243 to <8 x i16>, !dbg !257
  %246 = shufflevector <16 x i8> %236, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %247 = sext <8 x i8> %246 to <8 x i16>, !dbg !257
  %248 = shufflevector <16 x i8> %241, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %249 = sext <8 x i8> %248 to <8 x i16>, !dbg !257
  %250 = add <8 x i16> %219, %244, !dbg !257
  %251 = add <8 x i16> %250, %245, !dbg !257
  %252 = add <8 x i16> %221, %247, !dbg !257
  %253 = add <8 x i16> %252, %249, !dbg !257
  %254 = lshr <16 x i8> %239, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %255 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %81, <16 x i8> %254), !dbg !257
  %256 = shufflevector <16 x i8> %255, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %257 = sext <8 x i8> %256 to <8 x i16>, !dbg !257
  %258 = shufflevector <16 x i8> %237, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %259 = sext <8 x i8> %258 to <8 x i16>, !dbg !257
  %260 = shufflevector <16 x i8> %255, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %261 = sext <8 x i8> %260 to <8 x i16>, !dbg !257
  %262 = shufflevector <16 x i8> %237, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %263 = sext <8 x i8> %262 to <8 x i16>, !dbg !257
  %264 = getelementptr inbounds i8, ptr %106, i64 160, !dbg !257
  %265 = load <16 x i8>, ptr %264, align 1, !dbg !257
  %266 = lshr <16 x i8> %265, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %267 = and <16 x i8> %265, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %268 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %83, <16 x i8> %267), !dbg !257
  %269 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %83, <16 x i8> %266), !dbg !257
  %270 = getelementptr inbounds i8, ptr %106, i64 176, !dbg !257
  %271 = load <16 x i8>, ptr %270, align 1, !dbg !257
  %272 = and <16 x i8> %271, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %273 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %85, <16 x i8> %272), !dbg !257
  %274 = shufflevector <16 x i8> %268, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %275 = shufflevector <16 x i8> %273, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %276 = sext <8 x i8> %274 to <8 x i16>, !dbg !257
  %277 = sext <8 x i8> %275 to <8 x i16>, !dbg !257
  %278 = shufflevector <16 x i8> %268, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %279 = sext <8 x i8> %278 to <8 x i16>, !dbg !257
  %280 = shufflevector <16 x i8> %273, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %281 = sext <8 x i8> %280 to <8 x i16>, !dbg !257
  %282 = add <8 x i16> %251, %276, !dbg !257
  %283 = add <8 x i16> %282, %277, !dbg !257
  %284 = add <8 x i16> %253, %279, !dbg !257
  %285 = add <8 x i16> %284, %281, !dbg !257
  %286 = lshr <16 x i8> %271, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %287 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %85, <16 x i8> %286), !dbg !257
  %288 = shufflevector <16 x i8> %287, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %289 = sext <8 x i8> %288 to <8 x i16>, !dbg !257
  %290 = shufflevector <16 x i8> %269, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %291 = sext <8 x i8> %290 to <8 x i16>, !dbg !257
  %292 = shufflevector <16 x i8> %287, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %293 = sext <8 x i8> %292 to <8 x i16>, !dbg !257
  %294 = shufflevector <16 x i8> %269, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %295 = sext <8 x i8> %294 to <8 x i16>, !dbg !257
  %296 = getelementptr inbounds i8, ptr %106, i64 192, !dbg !257
  %297 = load <16 x i8>, ptr %296, align 1, !dbg !257
  %298 = lshr <16 x i8> %297, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %299 = and <16 x i8> %297, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %300 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %87, <16 x i8> %299), !dbg !257
  %301 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %87, <16 x i8> %298), !dbg !257
  %302 = getelementptr inbounds i8, ptr %106, i64 208, !dbg !257
  %303 = load <16 x i8>, ptr %302, align 1, !dbg !257
  %304 = and <16 x i8> %303, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %305 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %89, <16 x i8> %304), !dbg !257
  %306 = shufflevector <16 x i8> %300, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %307 = shufflevector <16 x i8> %305, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %308 = sext <8 x i8> %306 to <8 x i16>, !dbg !257
  %309 = sext <8 x i8> %307 to <8 x i16>, !dbg !257
  %310 = shufflevector <16 x i8> %300, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %311 = sext <8 x i8> %310 to <8 x i16>, !dbg !257
  %312 = shufflevector <16 x i8> %305, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %313 = sext <8 x i8> %312 to <8 x i16>, !dbg !257
  %314 = add <8 x i16> %283, %308, !dbg !257
  %315 = add <8 x i16> %314, %309, !dbg !257
  %316 = add <8 x i16> %285, %311, !dbg !257
  %317 = add <8 x i16> %316, %313, !dbg !257
  %318 = lshr <16 x i8> %303, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %319 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %89, <16 x i8> %318), !dbg !257
  %320 = shufflevector <16 x i8> %319, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %321 = sext <8 x i8> %320 to <8 x i16>, !dbg !257
  %322 = shufflevector <16 x i8> %301, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %323 = sext <8 x i8> %322 to <8 x i16>, !dbg !257
  %324 = shufflevector <16 x i8> %319, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %325 = sext <8 x i8> %324 to <8 x i16>, !dbg !257
  %326 = shufflevector <16 x i8> %301, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %327 = sext <8 x i8> %326 to <8 x i16>, !dbg !257
  %328 = getelementptr inbounds i8, ptr %106, i64 224, !dbg !257
  %329 = load <16 x i8>, ptr %328, align 1, !dbg !257
  %330 = lshr <16 x i8> %329, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %331 = and <16 x i8> %329, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %332 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %91, <16 x i8> %331), !dbg !257
  %333 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %91, <16 x i8> %330), !dbg !257
  %334 = getelementptr inbounds i8, ptr %106, i64 240, !dbg !257
  %335 = load <16 x i8>, ptr %334, align 1, !dbg !257
  %336 = and <16 x i8> %335, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %337 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %93, <16 x i8> %336), !dbg !257
  %338 = shufflevector <16 x i8> %332, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %339 = shufflevector <16 x i8> %337, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %340 = sext <8 x i8> %338 to <8 x i16>, !dbg !257
  %341 = sext <8 x i8> %339 to <8 x i16>, !dbg !257
  %342 = shufflevector <16 x i8> %332, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %343 = sext <8 x i8> %342 to <8 x i16>, !dbg !257
  %344 = shufflevector <16 x i8> %337, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %345 = sext <8 x i8> %344 to <8 x i16>, !dbg !257
  %346 = add <8 x i16> %315, %340, !dbg !257
  %347 = add <8 x i16> %346, %341, !dbg !257
  %348 = add <8 x i16> %317, %343, !dbg !257
  %349 = add <8 x i16> %348, %345, !dbg !257
  %350 = lshr <16 x i8> %335, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %351 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %93, <16 x i8> %350), !dbg !257
  %352 = shufflevector <16 x i8> %351, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %353 = sext <8 x i8> %352 to <8 x i16>, !dbg !257
  %354 = shufflevector <16 x i8> %333, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %355 = sext <8 x i8> %354 to <8 x i16>, !dbg !257
  %356 = add nsw <8 x i16> %135, %133, !dbg !257
  %357 = add nsw <8 x i16> %356, %163, !dbg !257
  %358 = add nsw <8 x i16> %357, %161, !dbg !257
  %359 = add nsw <8 x i16> %358, %195, !dbg !257
  %360 = add nsw <8 x i16> %359, %193, !dbg !257
  %361 = add nsw <8 x i16> %360, %227, !dbg !257
  %362 = add <8 x i16> %361, %225, !dbg !257
  %363 = add <8 x i16> %362, %259, !dbg !257
  %364 = add <8 x i16> %363, %257, !dbg !257
  %365 = add <8 x i16> %364, %291, !dbg !257
  %366 = add <8 x i16> %365, %289, !dbg !257
  %367 = add <8 x i16> %366, %323, !dbg !257
  %368 = add <8 x i16> %367, %321, !dbg !257
  %369 = add <8 x i16> %368, %355, !dbg !257
  %370 = add <8 x i16> %369, %353, !dbg !257
  %371 = shufflevector <16 x i8> %351, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %372 = sext <8 x i8> %371 to <8 x i16>, !dbg !257
  %373 = shufflevector <16 x i8> %333, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %374 = sext <8 x i8> %373 to <8 x i16>, !dbg !257
  %375 = add nsw <8 x i16> %131, %130, !dbg !257
  %376 = add nsw <8 x i16> %375, %167, !dbg !257
  %377 = add nsw <8 x i16> %376, %165, !dbg !257
  %378 = add nsw <8 x i16> %377, %199, !dbg !257
  %379 = add nsw <8 x i16> %378, %197, !dbg !257
  %380 = add nsw <8 x i16> %379, %231, !dbg !257
  %381 = add <8 x i16> %380, %229, !dbg !257
  %382 = add <8 x i16> %381, %263, !dbg !257
  %383 = add <8 x i16> %382, %261, !dbg !257
  %384 = add <8 x i16> %383, %295, !dbg !257
  %385 = add <8 x i16> %384, %293, !dbg !257
  %386 = add <8 x i16> %385, %327, !dbg !257
  %387 = add <8 x i16> %386, %325, !dbg !257
  %388 = add <8 x i16> %387, %374, !dbg !257
  %389 = add <8 x i16> %388, %372, !dbg !257
  %390 = sitofp <8 x i16> %347 to <8 x half>, !dbg !257
  %391 = sitofp <8 x i16> %349 to <8 x half>, !dbg !257
  %392 = sitofp <8 x i16> %389 to <8 x half>, !dbg !257
  %393 = sitofp <8 x i16> %370 to <8 x half>, !dbg !257
  %394 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %390, <8 x half> %98, <8 x half> %99), !dbg !257
  %395 = fmul <8 x half> %98, %391, !dbg !257
  %396 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %392, <8 x half> %98, <8 x half> %99), !dbg !257
  %397 = fmul <8 x half> %98, %393, !dbg !257
  %398 = shl nuw nsw i64 %104, 1, !dbg !257
  %399 = getelementptr inbounds half, ptr %60, i64 %398, !dbg !257
  %400 = load <8 x half>, ptr %399, align 2, !dbg !257
  %401 = or i64 %398, 16, !dbg !257
  %402 = getelementptr inbounds half, ptr %60, i64 %401, !dbg !257
  %403 = load <8 x half>, ptr %402, align 2, !dbg !257
  %404 = getelementptr inbounds half, ptr %CBits2, i64 %398, !dbg !257
  %405 = load <8 x half>, ptr %404, align 16, !dbg !257
  %406 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %394, <8 x half> %400, <8 x half> %405), !dbg !257
  %407 = getelementptr inbounds half, ptr %404, i64 8, !dbg !257
  %408 = load <8 x half>, ptr %407, align 16, !dbg !257
  %409 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %395, <8 x half> %400, <8 x half> %408), !dbg !257
  %410 = getelementptr inbounds half, ptr %404, i64 16, !dbg !257
  %411 = load <8 x half>, ptr %410, align 16, !dbg !257
  %412 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %396, <8 x half> %403, <8 x half> %411), !dbg !257
  %413 = getelementptr inbounds half, ptr %404, i64 24, !dbg !257
  %414 = load <8 x half>, ptr %413, align 16, !dbg !257
  %415 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %397, <8 x half> %403, <8 x half> %414), !dbg !257
  %416 = getelementptr inbounds half, ptr %402, i64 8, !dbg !257
  %417 = load <8 x half>, ptr %416, align 2, !dbg !257
  %418 = getelementptr inbounds half, ptr %399, i64 8, !dbg !257
  %419 = load <8 x half>, ptr %418, align 2, !dbg !257
  %420 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %419, <8 x half> %102, <8 x half> %406), !dbg !257
  store <8 x half> %420, ptr %404, align 16, !dbg !257
  store <8 x half> %409, ptr %407, align 16, !dbg !257
  %421 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %417, <8 x half> %102, <8 x half> %412), !dbg !257
  store <8 x half> %421, ptr %410, align 16, !dbg !257
  store <8 x half> %415, ptr %413, align 16, !dbg !257
  %422 = add nuw nsw i64 %104, 16, !dbg !257
  %423 = icmp ult i64 %104, 112, !dbg !257
  br i1 %423, label %103, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_ztrue_osfalse.exit, !dbg !257, !llvm.loop !265

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_ztrue_osfalse.exit: ; preds = %103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !257
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !260, metadata !DIExpression()), !dbg !257
  %exitcond.not = icmp eq i64 %indvars.iv.next, 224, !dbg !257
  br i1 %exitcond.not, label %for_body_m.c.outer, label %for_body_k.outer, !dbg !257, !prof !29

for_body_m.c.outer:                               ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_ztrue_osfalse.exit
  call void @llvm.dbg.declare(metadata i64 0, metadata !267, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 0, metadata !268, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 0, metadata !268, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 0, metadata !269, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 0, metadata !269, metadata !DIExpression()), !dbg !257
  %424 = load <8 x half>, ptr %CBits2, align 16, !dbg !257, !tbaa !270
  %425 = fpext <8 x half> %424 to <8 x float>, !dbg !257
  %426 = load <8 x half>, ptr %19, align 16, !dbg !257, !tbaa !270
  %427 = fpext <8 x half> %426 to <8 x float>, !dbg !257
  %428 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %425, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %427), !dbg !257
  %429 = fptrunc <8 x float> %428 to <8 x half>, !dbg !257
  call void @llvm.dbg.value(metadata <8 x half> %429, metadata !272, metadata !DIExpression()), !dbg !257
  %430 = load <8 x half>, ptr %20, align 16, !dbg !257, !tbaa !270
  %431 = fpext <8 x half> %430 to <8 x float>, !dbg !257
  %432 = load <8 x half>, ptr %21, align 16, !dbg !257, !tbaa !270
  %433 = fpext <8 x half> %432 to <8 x float>, !dbg !257
  %434 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %431, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %433), !dbg !257
  %435 = fptrunc <8 x float> %434 to <8 x half>, !dbg !257
  %436 = load <8 x half>, ptr %22, align 16, !dbg !257, !tbaa !270
  %437 = fpext <8 x half> %436 to <8 x float>, !dbg !257
  %438 = load <8 x half>, ptr %23, align 16, !dbg !257, !tbaa !270
  %439 = fpext <8 x half> %438 to <8 x float>, !dbg !257
  %440 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %437, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %439), !dbg !257
  %441 = fptrunc <8 x float> %440 to <8 x half>, !dbg !257
  %442 = load <8 x half>, ptr %24, align 16, !dbg !257, !tbaa !270
  %443 = fpext <8 x half> %442 to <8 x float>, !dbg !257
  %444 = load <8 x half>, ptr %25, align 16, !dbg !257, !tbaa !270
  %445 = fpext <8 x half> %444 to <8 x float>, !dbg !257
  %446 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %443, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %445), !dbg !257
  %447 = fptrunc <8 x float> %446 to <8 x half>, !dbg !257
  call void @llvm.dbg.declare(metadata i64 1, metadata !267, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 1, metadata !267, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 64, metadata !268, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 64, metadata !268, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 32, metadata !269, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 32, metadata !269, metadata !DIExpression()), !dbg !257
  %448 = load <8 x half>, ptr %26, align 16, !dbg !257, !tbaa !270
  %449 = fpext <8 x half> %448 to <8 x float>, !dbg !257
  %450 = load <8 x half>, ptr %27, align 16, !dbg !257, !tbaa !270
  %451 = fpext <8 x half> %450 to <8 x float>, !dbg !257
  %452 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %449, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %451), !dbg !257
  %453 = fptrunc <8 x float> %452 to <8 x half>, !dbg !257
  %454 = load <8 x half>, ptr %28, align 16, !dbg !257, !tbaa !270
  %455 = fpext <8 x half> %454 to <8 x float>, !dbg !257
  %456 = load <8 x half>, ptr %29, align 16, !dbg !257, !tbaa !270
  %457 = fpext <8 x half> %456 to <8 x float>, !dbg !257
  %458 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %455, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %457), !dbg !257
  %459 = fptrunc <8 x float> %458 to <8 x half>, !dbg !257
  %460 = load <8 x half>, ptr %30, align 16, !dbg !257, !tbaa !270
  %461 = fpext <8 x half> %460 to <8 x float>, !dbg !257
  %462 = load <8 x half>, ptr %31, align 16, !dbg !257, !tbaa !270
  %463 = fpext <8 x half> %462 to <8 x float>, !dbg !257
  %464 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %461, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %463), !dbg !257
  %465 = fptrunc <8 x float> %464 to <8 x half>, !dbg !257
  %466 = load <8 x half>, ptr %32, align 16, !dbg !257, !tbaa !270
  %467 = fpext <8 x half> %466 to <8 x float>, !dbg !257
  %468 = load <8 x half>, ptr %33, align 16, !dbg !257, !tbaa !270
  %469 = fpext <8 x half> %468 to <8 x float>, !dbg !257
  %470 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %467, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %469), !dbg !257
  %471 = fptrunc <8 x float> %470 to <8 x half>, !dbg !257
  call void @llvm.dbg.declare(metadata i64 2, metadata !267, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 2, metadata !267, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 128, metadata !268, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 128, metadata !268, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 64, metadata !269, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 64, metadata !269, metadata !DIExpression()), !dbg !257
  %472 = load <8 x half>, ptr %34, align 16, !dbg !257, !tbaa !270
  %473 = fpext <8 x half> %472 to <8 x float>, !dbg !257
  %474 = load <8 x half>, ptr %35, align 16, !dbg !257, !tbaa !270
  %475 = fpext <8 x half> %474 to <8 x float>, !dbg !257
  %476 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %473, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %475), !dbg !257
  %477 = fptrunc <8 x float> %476 to <8 x half>, !dbg !257
  %478 = load <8 x half>, ptr %36, align 16, !dbg !257, !tbaa !270
  %479 = fpext <8 x half> %478 to <8 x float>, !dbg !257
  %480 = load <8 x half>, ptr %37, align 16, !dbg !257, !tbaa !270
  %481 = fpext <8 x half> %480 to <8 x float>, !dbg !257
  %482 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %479, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %481), !dbg !257
  %483 = fptrunc <8 x float> %482 to <8 x half>, !dbg !257
  %484 = load <8 x half>, ptr %38, align 16, !dbg !257, !tbaa !270
  %485 = fpext <8 x half> %484 to <8 x float>, !dbg !257
  %486 = load <8 x half>, ptr %39, align 16, !dbg !257, !tbaa !270
  %487 = fpext <8 x half> %486 to <8 x float>, !dbg !257
  %488 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %485, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %487), !dbg !257
  %489 = fptrunc <8 x float> %488 to <8 x half>, !dbg !257
  %490 = load <8 x half>, ptr %40, align 16, !dbg !257, !tbaa !270
  %491 = fpext <8 x half> %490 to <8 x float>, !dbg !257
  %492 = load <8 x half>, ptr %41, align 16, !dbg !257, !tbaa !270
  %493 = fpext <8 x half> %492 to <8 x float>, !dbg !257
  %494 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %491, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %493), !dbg !257
  %495 = fptrunc <8 x float> %494 to <8 x half>, !dbg !257
  call void @llvm.dbg.declare(metadata i64 3, metadata !267, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 3, metadata !267, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 192, metadata !268, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 192, metadata !268, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 96, metadata !269, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 96, metadata !269, metadata !DIExpression()), !dbg !257
  %496 = load <8 x half>, ptr %42, align 16, !dbg !257, !tbaa !270
  %497 = fpext <8 x half> %496 to <8 x float>, !dbg !257
  %498 = load <8 x half>, ptr %43, align 16, !dbg !257, !tbaa !270
  %499 = fpext <8 x half> %498 to <8 x float>, !dbg !257
  %500 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %497, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %499), !dbg !257
  %501 = fptrunc <8 x float> %500 to <8 x half>, !dbg !257
  %502 = load <8 x half>, ptr %44, align 16, !dbg !257, !tbaa !270
  %503 = fpext <8 x half> %502 to <8 x float>, !dbg !257
  %504 = load <8 x half>, ptr %45, align 16, !dbg !257, !tbaa !270
  %505 = fpext <8 x half> %504 to <8 x float>, !dbg !257
  %506 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %503, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %505), !dbg !257
  %507 = fptrunc <8 x float> %506 to <8 x half>, !dbg !257
  %508 = load <8 x half>, ptr %46, align 16, !dbg !257, !tbaa !270
  %509 = fpext <8 x half> %508 to <8 x float>, !dbg !257
  %510 = load <8 x half>, ptr %47, align 16, !dbg !257, !tbaa !270
  %511 = fpext <8 x half> %510 to <8 x float>, !dbg !257
  %512 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %509, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %511), !dbg !257
  %513 = fptrunc <8 x float> %512 to <8 x half>, !dbg !257
  %514 = load <8 x half>, ptr %48, align 16, !dbg !257, !tbaa !270
  %515 = fpext <8 x half> %514 to <8 x float>, !dbg !257
  %516 = load <8 x half>, ptr %49, align 16, !dbg !257, !tbaa !270
  %517 = fpext <8 x half> %516 to <8 x float>, !dbg !257
  %518 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %515, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %517), !dbg !257
  %519 = fptrunc <8 x float> %518 to <8 x half>, !dbg !257
  call void @llvm.dbg.declare(metadata i64 4, metadata !267, metadata !DIExpression()), !dbg !257
  %520 = trunc i64 %indvars.iv20 to i32
  %521 = shl nsw i32 %520, 7
  call void @llvm.dbg.declare(metadata i32 0, metadata !273, metadata !DIExpression()), !dbg !257
  %522 = sext i32 %521 to i64, !dbg !257
  call void @llvm.dbg.declare(metadata i64 0, metadata !273, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 0, metadata !274, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 0, metadata !274, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 %522, metadata !275, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 %522, metadata !275, metadata !DIExpression()), !dbg !257
  %C.global1.sroa.0.0.vec.extract = extractelement <8 x half> %429, i64 0, !dbg !257
  %523 = getelementptr inbounds half, ptr %C, i64 %522, !dbg !257
  store half %C.global1.sroa.0.0.vec.extract, ptr %523, align 64, !dbg !257, !tbaa !276
  %C.global1.sroa.0.2.vec.extract = extractelement <8 x half> %429, i64 1, !dbg !257
  %524 = or i32 %521, 1, !dbg !257
  %525 = sext i32 %524 to i64, !dbg !257
  %526 = getelementptr inbounds half, ptr %C, i64 %525, !dbg !257
  store half %C.global1.sroa.0.2.vec.extract, ptr %526, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.0.4.vec.extract = extractelement <8 x half> %429, i64 2, !dbg !257
  %527 = or i32 %521, 2, !dbg !257
  %528 = sext i32 %527 to i64, !dbg !257
  %529 = getelementptr inbounds half, ptr %C, i64 %528, !dbg !257
  store half %C.global1.sroa.0.4.vec.extract, ptr %529, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.0.6.vec.extract = extractelement <8 x half> %429, i64 3, !dbg !257
  %530 = or i32 %521, 3, !dbg !257
  %531 = sext i32 %530 to i64, !dbg !257
  %532 = getelementptr inbounds half, ptr %C, i64 %531, !dbg !257
  store half %C.global1.sroa.0.6.vec.extract, ptr %532, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.0.8.vec.extract = extractelement <8 x half> %429, i64 4, !dbg !257
  %533 = or i32 %521, 4, !dbg !257
  %534 = sext i32 %533 to i64, !dbg !257
  %535 = getelementptr inbounds half, ptr %C, i64 %534, !dbg !257
  store half %C.global1.sroa.0.8.vec.extract, ptr %535, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.0.10.vec.extract = extractelement <8 x half> %429, i64 5, !dbg !257
  %536 = or i32 %521, 5, !dbg !257
  %537 = sext i32 %536 to i64, !dbg !257
  %538 = getelementptr inbounds half, ptr %C, i64 %537, !dbg !257
  store half %C.global1.sroa.0.10.vec.extract, ptr %538, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.0.12.vec.extract = extractelement <8 x half> %429, i64 6, !dbg !257
  %539 = or i32 %521, 6, !dbg !257
  %540 = sext i32 %539 to i64, !dbg !257
  %541 = getelementptr inbounds half, ptr %C, i64 %540, !dbg !257
  store half %C.global1.sroa.0.12.vec.extract, ptr %541, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.0.14.vec.extract = extractelement <8 x half> %429, i64 7, !dbg !257
  %542 = or i32 %521, 7, !dbg !257
  %543 = sext i32 %542 to i64, !dbg !257
  %544 = getelementptr inbounds half, ptr %C, i64 %543, !dbg !257
  store half %C.global1.sroa.0.14.vec.extract, ptr %544, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.9.16.vec.extract = extractelement <8 x half> %435, i64 0, !dbg !257
  %545 = or i32 %521, 8, !dbg !257
  %546 = sext i32 %545 to i64, !dbg !257
  %547 = getelementptr inbounds half, ptr %C, i64 %546, !dbg !257
  store half %C.global1.sroa.9.16.vec.extract, ptr %547, align 16, !dbg !257, !tbaa !276
  %C.global1.sroa.9.18.vec.extract = extractelement <8 x half> %435, i64 1, !dbg !257
  %548 = or i32 %521, 9, !dbg !257
  %549 = sext i32 %548 to i64, !dbg !257
  %550 = getelementptr inbounds half, ptr %C, i64 %549, !dbg !257
  store half %C.global1.sroa.9.18.vec.extract, ptr %550, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.9.20.vec.extract = extractelement <8 x half> %435, i64 2, !dbg !257
  %551 = or i32 %521, 10, !dbg !257
  %552 = sext i32 %551 to i64, !dbg !257
  %553 = getelementptr inbounds half, ptr %C, i64 %552, !dbg !257
  store half %C.global1.sroa.9.20.vec.extract, ptr %553, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.9.22.vec.extract = extractelement <8 x half> %435, i64 3, !dbg !257
  %554 = or i32 %521, 11, !dbg !257
  %555 = sext i32 %554 to i64, !dbg !257
  %556 = getelementptr inbounds half, ptr %C, i64 %555, !dbg !257
  store half %C.global1.sroa.9.22.vec.extract, ptr %556, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.9.24.vec.extract = extractelement <8 x half> %435, i64 4, !dbg !257
  %557 = or i32 %521, 12, !dbg !257
  %558 = sext i32 %557 to i64, !dbg !257
  %559 = getelementptr inbounds half, ptr %C, i64 %558, !dbg !257
  store half %C.global1.sroa.9.24.vec.extract, ptr %559, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.9.26.vec.extract = extractelement <8 x half> %435, i64 5, !dbg !257
  %560 = or i32 %521, 13, !dbg !257
  %561 = sext i32 %560 to i64, !dbg !257
  %562 = getelementptr inbounds half, ptr %C, i64 %561, !dbg !257
  store half %C.global1.sroa.9.26.vec.extract, ptr %562, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.9.28.vec.extract = extractelement <8 x half> %435, i64 6, !dbg !257
  %563 = or i32 %521, 14, !dbg !257
  %564 = sext i32 %563 to i64, !dbg !257
  %565 = getelementptr inbounds half, ptr %C, i64 %564, !dbg !257
  store half %C.global1.sroa.9.28.vec.extract, ptr %565, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.9.30.vec.extract = extractelement <8 x half> %435, i64 7, !dbg !257
  %566 = or i32 %521, 15, !dbg !257
  %567 = sext i32 %566 to i64, !dbg !257
  %568 = getelementptr inbounds half, ptr %C, i64 %567, !dbg !257
  store half %C.global1.sroa.9.30.vec.extract, ptr %568, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.18.32.vec.extract = extractelement <8 x half> %441, i64 0, !dbg !257
  %569 = or i32 %521, 16, !dbg !257
  %570 = sext i32 %569 to i64, !dbg !257
  %571 = getelementptr inbounds half, ptr %C, i64 %570, !dbg !257
  store half %C.global1.sroa.18.32.vec.extract, ptr %571, align 32, !dbg !257, !tbaa !276
  %C.global1.sroa.18.34.vec.extract = extractelement <8 x half> %441, i64 1, !dbg !257
  %572 = or i32 %521, 17, !dbg !257
  %573 = sext i32 %572 to i64, !dbg !257
  %574 = getelementptr inbounds half, ptr %C, i64 %573, !dbg !257
  store half %C.global1.sroa.18.34.vec.extract, ptr %574, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.18.36.vec.extract = extractelement <8 x half> %441, i64 2, !dbg !257
  %575 = or i32 %521, 18, !dbg !257
  %576 = sext i32 %575 to i64, !dbg !257
  %577 = getelementptr inbounds half, ptr %C, i64 %576, !dbg !257
  store half %C.global1.sroa.18.36.vec.extract, ptr %577, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.18.38.vec.extract = extractelement <8 x half> %441, i64 3, !dbg !257
  %578 = or i32 %521, 19, !dbg !257
  %579 = sext i32 %578 to i64, !dbg !257
  %580 = getelementptr inbounds half, ptr %C, i64 %579, !dbg !257
  store half %C.global1.sroa.18.38.vec.extract, ptr %580, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.18.40.vec.extract = extractelement <8 x half> %441, i64 4, !dbg !257
  %581 = or i32 %521, 20, !dbg !257
  %582 = sext i32 %581 to i64, !dbg !257
  %583 = getelementptr inbounds half, ptr %C, i64 %582, !dbg !257
  store half %C.global1.sroa.18.40.vec.extract, ptr %583, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.18.42.vec.extract = extractelement <8 x half> %441, i64 5, !dbg !257
  %584 = or i32 %521, 21, !dbg !257
  %585 = sext i32 %584 to i64, !dbg !257
  %586 = getelementptr inbounds half, ptr %C, i64 %585, !dbg !257
  store half %C.global1.sroa.18.42.vec.extract, ptr %586, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.18.44.vec.extract = extractelement <8 x half> %441, i64 6, !dbg !257
  %587 = or i32 %521, 22, !dbg !257
  %588 = sext i32 %587 to i64, !dbg !257
  %589 = getelementptr inbounds half, ptr %C, i64 %588, !dbg !257
  store half %C.global1.sroa.18.44.vec.extract, ptr %589, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.18.46.vec.extract = extractelement <8 x half> %441, i64 7, !dbg !257
  %590 = or i32 %521, 23, !dbg !257
  %591 = sext i32 %590 to i64, !dbg !257
  %592 = getelementptr inbounds half, ptr %C, i64 %591, !dbg !257
  store half %C.global1.sroa.18.46.vec.extract, ptr %592, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.27.48.vec.extract = extractelement <8 x half> %447, i64 0, !dbg !257
  %593 = or i32 %521, 24, !dbg !257
  %594 = sext i32 %593 to i64, !dbg !257
  %595 = getelementptr inbounds half, ptr %C, i64 %594, !dbg !257
  store half %C.global1.sroa.27.48.vec.extract, ptr %595, align 16, !dbg !257, !tbaa !276
  %C.global1.sroa.27.50.vec.extract = extractelement <8 x half> %447, i64 1, !dbg !257
  %596 = or i32 %521, 25, !dbg !257
  %597 = sext i32 %596 to i64, !dbg !257
  %598 = getelementptr inbounds half, ptr %C, i64 %597, !dbg !257
  store half %C.global1.sroa.27.50.vec.extract, ptr %598, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.27.52.vec.extract = extractelement <8 x half> %447, i64 2, !dbg !257
  %599 = or i32 %521, 26, !dbg !257
  %600 = sext i32 %599 to i64, !dbg !257
  %601 = getelementptr inbounds half, ptr %C, i64 %600, !dbg !257
  store half %C.global1.sroa.27.52.vec.extract, ptr %601, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.27.54.vec.extract = extractelement <8 x half> %447, i64 3, !dbg !257
  %602 = or i32 %521, 27, !dbg !257
  %603 = sext i32 %602 to i64, !dbg !257
  %604 = getelementptr inbounds half, ptr %C, i64 %603, !dbg !257
  store half %C.global1.sroa.27.54.vec.extract, ptr %604, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.27.56.vec.extract = extractelement <8 x half> %447, i64 4, !dbg !257
  %605 = or i32 %521, 28, !dbg !257
  %606 = sext i32 %605 to i64, !dbg !257
  %607 = getelementptr inbounds half, ptr %C, i64 %606, !dbg !257
  store half %C.global1.sroa.27.56.vec.extract, ptr %607, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.27.58.vec.extract = extractelement <8 x half> %447, i64 5, !dbg !257
  %608 = or i32 %521, 29, !dbg !257
  %609 = sext i32 %608 to i64, !dbg !257
  %610 = getelementptr inbounds half, ptr %C, i64 %609, !dbg !257
  store half %C.global1.sroa.27.58.vec.extract, ptr %610, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.27.60.vec.extract = extractelement <8 x half> %447, i64 6, !dbg !257
  %611 = or i32 %521, 30, !dbg !257
  %612 = sext i32 %611 to i64, !dbg !257
  %613 = getelementptr inbounds half, ptr %C, i64 %612, !dbg !257
  store half %C.global1.sroa.27.60.vec.extract, ptr %613, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.27.62.vec.extract = extractelement <8 x half> %447, i64 7, !dbg !257
  %614 = or i32 %521, 31, !dbg !257
  %615 = sext i32 %614 to i64, !dbg !257
  %616 = getelementptr inbounds half, ptr %C, i64 %615, !dbg !257
  store half %C.global1.sroa.27.62.vec.extract, ptr %616, align 2, !dbg !257, !tbaa !276
  call void @llvm.dbg.declare(metadata i64 1, metadata !273, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 1, metadata !273, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 32, metadata !274, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 32, metadata !274, metadata !DIExpression()), !dbg !257
  %617 = or i64 %522, 32, !dbg !257
  call void @llvm.dbg.declare(metadata i64 %617, metadata !275, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 %617, metadata !275, metadata !DIExpression()), !dbg !257
  %C.global1.sroa.36.64.vec.extract = extractelement <8 x half> %453, i64 0, !dbg !257
  %618 = getelementptr inbounds half, ptr %C, i64 %617, !dbg !257
  store half %C.global1.sroa.36.64.vec.extract, ptr %618, align 64, !dbg !257, !tbaa !276
  %C.global1.sroa.36.66.vec.extract = extractelement <8 x half> %453, i64 1, !dbg !257
  %619 = or i32 %521, 33, !dbg !257
  %620 = sext i32 %619 to i64, !dbg !257
  %621 = getelementptr inbounds half, ptr %C, i64 %620, !dbg !257
  store half %C.global1.sroa.36.66.vec.extract, ptr %621, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.36.68.vec.extract = extractelement <8 x half> %453, i64 2, !dbg !257
  %622 = or i32 %521, 34, !dbg !257
  %623 = sext i32 %622 to i64, !dbg !257
  %624 = getelementptr inbounds half, ptr %C, i64 %623, !dbg !257
  store half %C.global1.sroa.36.68.vec.extract, ptr %624, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.36.70.vec.extract = extractelement <8 x half> %453, i64 3, !dbg !257
  %625 = or i32 %521, 35, !dbg !257
  %626 = sext i32 %625 to i64, !dbg !257
  %627 = getelementptr inbounds half, ptr %C, i64 %626, !dbg !257
  store half %C.global1.sroa.36.70.vec.extract, ptr %627, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.36.72.vec.extract = extractelement <8 x half> %453, i64 4, !dbg !257
  %628 = or i32 %521, 36, !dbg !257
  %629 = sext i32 %628 to i64, !dbg !257
  %630 = getelementptr inbounds half, ptr %C, i64 %629, !dbg !257
  store half %C.global1.sroa.36.72.vec.extract, ptr %630, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.36.74.vec.extract = extractelement <8 x half> %453, i64 5, !dbg !257
  %631 = or i32 %521, 37, !dbg !257
  %632 = sext i32 %631 to i64, !dbg !257
  %633 = getelementptr inbounds half, ptr %C, i64 %632, !dbg !257
  store half %C.global1.sroa.36.74.vec.extract, ptr %633, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.36.76.vec.extract = extractelement <8 x half> %453, i64 6, !dbg !257
  %634 = or i32 %521, 38, !dbg !257
  %635 = sext i32 %634 to i64, !dbg !257
  %636 = getelementptr inbounds half, ptr %C, i64 %635, !dbg !257
  store half %C.global1.sroa.36.76.vec.extract, ptr %636, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.36.78.vec.extract = extractelement <8 x half> %453, i64 7, !dbg !257
  %637 = or i32 %521, 39, !dbg !257
  %638 = sext i32 %637 to i64, !dbg !257
  %639 = getelementptr inbounds half, ptr %C, i64 %638, !dbg !257
  store half %C.global1.sroa.36.78.vec.extract, ptr %639, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.45.80.vec.extract = extractelement <8 x half> %459, i64 0, !dbg !257
  %640 = or i32 %521, 40, !dbg !257
  %641 = sext i32 %640 to i64, !dbg !257
  %642 = getelementptr inbounds half, ptr %C, i64 %641, !dbg !257
  store half %C.global1.sroa.45.80.vec.extract, ptr %642, align 16, !dbg !257, !tbaa !276
  %C.global1.sroa.45.82.vec.extract = extractelement <8 x half> %459, i64 1, !dbg !257
  %643 = or i32 %521, 41, !dbg !257
  %644 = sext i32 %643 to i64, !dbg !257
  %645 = getelementptr inbounds half, ptr %C, i64 %644, !dbg !257
  store half %C.global1.sroa.45.82.vec.extract, ptr %645, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.45.84.vec.extract = extractelement <8 x half> %459, i64 2, !dbg !257
  %646 = or i32 %521, 42, !dbg !257
  %647 = sext i32 %646 to i64, !dbg !257
  %648 = getelementptr inbounds half, ptr %C, i64 %647, !dbg !257
  store half %C.global1.sroa.45.84.vec.extract, ptr %648, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.45.86.vec.extract = extractelement <8 x half> %459, i64 3, !dbg !257
  %649 = or i32 %521, 43, !dbg !257
  %650 = sext i32 %649 to i64, !dbg !257
  %651 = getelementptr inbounds half, ptr %C, i64 %650, !dbg !257
  store half %C.global1.sroa.45.86.vec.extract, ptr %651, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.45.88.vec.extract = extractelement <8 x half> %459, i64 4, !dbg !257
  %652 = or i32 %521, 44, !dbg !257
  %653 = sext i32 %652 to i64, !dbg !257
  %654 = getelementptr inbounds half, ptr %C, i64 %653, !dbg !257
  store half %C.global1.sroa.45.88.vec.extract, ptr %654, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.45.90.vec.extract = extractelement <8 x half> %459, i64 5, !dbg !257
  %655 = or i32 %521, 45, !dbg !257
  %656 = sext i32 %655 to i64, !dbg !257
  %657 = getelementptr inbounds half, ptr %C, i64 %656, !dbg !257
  store half %C.global1.sroa.45.90.vec.extract, ptr %657, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.45.92.vec.extract = extractelement <8 x half> %459, i64 6, !dbg !257
  %658 = or i32 %521, 46, !dbg !257
  %659 = sext i32 %658 to i64, !dbg !257
  %660 = getelementptr inbounds half, ptr %C, i64 %659, !dbg !257
  store half %C.global1.sroa.45.92.vec.extract, ptr %660, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.45.94.vec.extract = extractelement <8 x half> %459, i64 7, !dbg !257
  %661 = or i32 %521, 47, !dbg !257
  %662 = sext i32 %661 to i64, !dbg !257
  %663 = getelementptr inbounds half, ptr %C, i64 %662, !dbg !257
  store half %C.global1.sroa.45.94.vec.extract, ptr %663, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.54.96.vec.extract = extractelement <8 x half> %465, i64 0, !dbg !257
  %664 = or i32 %521, 48, !dbg !257
  %665 = sext i32 %664 to i64, !dbg !257
  %666 = getelementptr inbounds half, ptr %C, i64 %665, !dbg !257
  store half %C.global1.sroa.54.96.vec.extract, ptr %666, align 32, !dbg !257, !tbaa !276
  %C.global1.sroa.54.98.vec.extract = extractelement <8 x half> %465, i64 1, !dbg !257
  %667 = or i32 %521, 49, !dbg !257
  %668 = sext i32 %667 to i64, !dbg !257
  %669 = getelementptr inbounds half, ptr %C, i64 %668, !dbg !257
  store half %C.global1.sroa.54.98.vec.extract, ptr %669, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.54.100.vec.extract = extractelement <8 x half> %465, i64 2, !dbg !257
  %670 = or i32 %521, 50, !dbg !257
  %671 = sext i32 %670 to i64, !dbg !257
  %672 = getelementptr inbounds half, ptr %C, i64 %671, !dbg !257
  store half %C.global1.sroa.54.100.vec.extract, ptr %672, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.54.102.vec.extract = extractelement <8 x half> %465, i64 3, !dbg !257
  %673 = or i32 %521, 51, !dbg !257
  %674 = sext i32 %673 to i64, !dbg !257
  %675 = getelementptr inbounds half, ptr %C, i64 %674, !dbg !257
  store half %C.global1.sroa.54.102.vec.extract, ptr %675, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.54.104.vec.extract = extractelement <8 x half> %465, i64 4, !dbg !257
  %676 = or i32 %521, 52, !dbg !257
  %677 = sext i32 %676 to i64, !dbg !257
  %678 = getelementptr inbounds half, ptr %C, i64 %677, !dbg !257
  store half %C.global1.sroa.54.104.vec.extract, ptr %678, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.54.106.vec.extract = extractelement <8 x half> %465, i64 5, !dbg !257
  %679 = or i32 %521, 53, !dbg !257
  %680 = sext i32 %679 to i64, !dbg !257
  %681 = getelementptr inbounds half, ptr %C, i64 %680, !dbg !257
  store half %C.global1.sroa.54.106.vec.extract, ptr %681, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.54.108.vec.extract = extractelement <8 x half> %465, i64 6, !dbg !257
  %682 = or i32 %521, 54, !dbg !257
  %683 = sext i32 %682 to i64, !dbg !257
  %684 = getelementptr inbounds half, ptr %C, i64 %683, !dbg !257
  store half %C.global1.sroa.54.108.vec.extract, ptr %684, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.54.110.vec.extract = extractelement <8 x half> %465, i64 7, !dbg !257
  %685 = or i32 %521, 55, !dbg !257
  %686 = sext i32 %685 to i64, !dbg !257
  %687 = getelementptr inbounds half, ptr %C, i64 %686, !dbg !257
  store half %C.global1.sroa.54.110.vec.extract, ptr %687, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.63.112.vec.extract = extractelement <8 x half> %471, i64 0, !dbg !257
  %688 = or i32 %521, 56, !dbg !257
  %689 = sext i32 %688 to i64, !dbg !257
  %690 = getelementptr inbounds half, ptr %C, i64 %689, !dbg !257
  store half %C.global1.sroa.63.112.vec.extract, ptr %690, align 16, !dbg !257, !tbaa !276
  %C.global1.sroa.63.114.vec.extract = extractelement <8 x half> %471, i64 1, !dbg !257
  %691 = or i32 %521, 57, !dbg !257
  %692 = sext i32 %691 to i64, !dbg !257
  %693 = getelementptr inbounds half, ptr %C, i64 %692, !dbg !257
  store half %C.global1.sroa.63.114.vec.extract, ptr %693, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.63.116.vec.extract = extractelement <8 x half> %471, i64 2, !dbg !257
  %694 = or i32 %521, 58, !dbg !257
  %695 = sext i32 %694 to i64, !dbg !257
  %696 = getelementptr inbounds half, ptr %C, i64 %695, !dbg !257
  store half %C.global1.sroa.63.116.vec.extract, ptr %696, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.63.118.vec.extract = extractelement <8 x half> %471, i64 3, !dbg !257
  %697 = or i32 %521, 59, !dbg !257
  %698 = sext i32 %697 to i64, !dbg !257
  %699 = getelementptr inbounds half, ptr %C, i64 %698, !dbg !257
  store half %C.global1.sroa.63.118.vec.extract, ptr %699, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.63.120.vec.extract = extractelement <8 x half> %471, i64 4, !dbg !257
  %700 = or i32 %521, 60, !dbg !257
  %701 = sext i32 %700 to i64, !dbg !257
  %702 = getelementptr inbounds half, ptr %C, i64 %701, !dbg !257
  store half %C.global1.sroa.63.120.vec.extract, ptr %702, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.63.122.vec.extract = extractelement <8 x half> %471, i64 5, !dbg !257
  %703 = or i32 %521, 61, !dbg !257
  %704 = sext i32 %703 to i64, !dbg !257
  %705 = getelementptr inbounds half, ptr %C, i64 %704, !dbg !257
  store half %C.global1.sroa.63.122.vec.extract, ptr %705, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.63.124.vec.extract = extractelement <8 x half> %471, i64 6, !dbg !257
  %706 = or i32 %521, 62, !dbg !257
  %707 = sext i32 %706 to i64, !dbg !257
  %708 = getelementptr inbounds half, ptr %C, i64 %707, !dbg !257
  store half %C.global1.sroa.63.124.vec.extract, ptr %708, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.63.126.vec.extract = extractelement <8 x half> %471, i64 7, !dbg !257
  %709 = or i32 %521, 63, !dbg !257
  %710 = sext i32 %709 to i64, !dbg !257
  %711 = getelementptr inbounds half, ptr %C, i64 %710, !dbg !257
  store half %C.global1.sroa.63.126.vec.extract, ptr %711, align 2, !dbg !257, !tbaa !276
  call void @llvm.dbg.declare(metadata i64 2, metadata !273, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 2, metadata !273, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 64, metadata !274, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 64, metadata !274, metadata !DIExpression()), !dbg !257
  %712 = or i64 %522, 64, !dbg !257
  call void @llvm.dbg.declare(metadata i64 %712, metadata !275, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 %712, metadata !275, metadata !DIExpression()), !dbg !257
  %C.global1.sroa.72.128.vec.extract = extractelement <8 x half> %477, i64 0, !dbg !257
  %713 = getelementptr inbounds half, ptr %C, i64 %712, !dbg !257
  store half %C.global1.sroa.72.128.vec.extract, ptr %713, align 64, !dbg !257, !tbaa !276
  %C.global1.sroa.72.130.vec.extract = extractelement <8 x half> %477, i64 1, !dbg !257
  %714 = or i32 %521, 65, !dbg !257
  %715 = sext i32 %714 to i64, !dbg !257
  %716 = getelementptr inbounds half, ptr %C, i64 %715, !dbg !257
  store half %C.global1.sroa.72.130.vec.extract, ptr %716, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.72.132.vec.extract = extractelement <8 x half> %477, i64 2, !dbg !257
  %717 = or i32 %521, 66, !dbg !257
  %718 = sext i32 %717 to i64, !dbg !257
  %719 = getelementptr inbounds half, ptr %C, i64 %718, !dbg !257
  store half %C.global1.sroa.72.132.vec.extract, ptr %719, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.72.134.vec.extract = extractelement <8 x half> %477, i64 3, !dbg !257
  %720 = or i32 %521, 67, !dbg !257
  %721 = sext i32 %720 to i64, !dbg !257
  %722 = getelementptr inbounds half, ptr %C, i64 %721, !dbg !257
  store half %C.global1.sroa.72.134.vec.extract, ptr %722, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.72.136.vec.extract = extractelement <8 x half> %477, i64 4, !dbg !257
  %723 = or i32 %521, 68, !dbg !257
  %724 = sext i32 %723 to i64, !dbg !257
  %725 = getelementptr inbounds half, ptr %C, i64 %724, !dbg !257
  store half %C.global1.sroa.72.136.vec.extract, ptr %725, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.72.138.vec.extract = extractelement <8 x half> %477, i64 5, !dbg !257
  %726 = or i32 %521, 69, !dbg !257
  %727 = sext i32 %726 to i64, !dbg !257
  %728 = getelementptr inbounds half, ptr %C, i64 %727, !dbg !257
  store half %C.global1.sroa.72.138.vec.extract, ptr %728, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.72.140.vec.extract = extractelement <8 x half> %477, i64 6, !dbg !257
  %729 = or i32 %521, 70, !dbg !257
  %730 = sext i32 %729 to i64, !dbg !257
  %731 = getelementptr inbounds half, ptr %C, i64 %730, !dbg !257
  store half %C.global1.sroa.72.140.vec.extract, ptr %731, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.72.142.vec.extract = extractelement <8 x half> %477, i64 7, !dbg !257
  %732 = or i32 %521, 71, !dbg !257
  %733 = sext i32 %732 to i64, !dbg !257
  %734 = getelementptr inbounds half, ptr %C, i64 %733, !dbg !257
  store half %C.global1.sroa.72.142.vec.extract, ptr %734, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.81.144.vec.extract = extractelement <8 x half> %483, i64 0, !dbg !257
  %735 = or i32 %521, 72, !dbg !257
  %736 = sext i32 %735 to i64, !dbg !257
  %737 = getelementptr inbounds half, ptr %C, i64 %736, !dbg !257
  store half %C.global1.sroa.81.144.vec.extract, ptr %737, align 16, !dbg !257, !tbaa !276
  %C.global1.sroa.81.146.vec.extract = extractelement <8 x half> %483, i64 1, !dbg !257
  %738 = or i32 %521, 73, !dbg !257
  %739 = sext i32 %738 to i64, !dbg !257
  %740 = getelementptr inbounds half, ptr %C, i64 %739, !dbg !257
  store half %C.global1.sroa.81.146.vec.extract, ptr %740, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.81.148.vec.extract = extractelement <8 x half> %483, i64 2, !dbg !257
  %741 = or i32 %521, 74, !dbg !257
  %742 = sext i32 %741 to i64, !dbg !257
  %743 = getelementptr inbounds half, ptr %C, i64 %742, !dbg !257
  store half %C.global1.sroa.81.148.vec.extract, ptr %743, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.81.150.vec.extract = extractelement <8 x half> %483, i64 3, !dbg !257
  %744 = or i32 %521, 75, !dbg !257
  %745 = sext i32 %744 to i64, !dbg !257
  %746 = getelementptr inbounds half, ptr %C, i64 %745, !dbg !257
  store half %C.global1.sroa.81.150.vec.extract, ptr %746, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.81.152.vec.extract = extractelement <8 x half> %483, i64 4, !dbg !257
  %747 = or i32 %521, 76, !dbg !257
  %748 = sext i32 %747 to i64, !dbg !257
  %749 = getelementptr inbounds half, ptr %C, i64 %748, !dbg !257
  store half %C.global1.sroa.81.152.vec.extract, ptr %749, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.81.154.vec.extract = extractelement <8 x half> %483, i64 5, !dbg !257
  %750 = or i32 %521, 77, !dbg !257
  %751 = sext i32 %750 to i64, !dbg !257
  %752 = getelementptr inbounds half, ptr %C, i64 %751, !dbg !257
  store half %C.global1.sroa.81.154.vec.extract, ptr %752, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.81.156.vec.extract = extractelement <8 x half> %483, i64 6, !dbg !257
  %753 = or i32 %521, 78, !dbg !257
  %754 = sext i32 %753 to i64, !dbg !257
  %755 = getelementptr inbounds half, ptr %C, i64 %754, !dbg !257
  store half %C.global1.sroa.81.156.vec.extract, ptr %755, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.81.158.vec.extract = extractelement <8 x half> %483, i64 7, !dbg !257
  %756 = or i32 %521, 79, !dbg !257
  %757 = sext i32 %756 to i64, !dbg !257
  %758 = getelementptr inbounds half, ptr %C, i64 %757, !dbg !257
  store half %C.global1.sroa.81.158.vec.extract, ptr %758, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.90.160.vec.extract = extractelement <8 x half> %489, i64 0, !dbg !257
  %759 = or i32 %521, 80, !dbg !257
  %760 = sext i32 %759 to i64, !dbg !257
  %761 = getelementptr inbounds half, ptr %C, i64 %760, !dbg !257
  store half %C.global1.sroa.90.160.vec.extract, ptr %761, align 32, !dbg !257, !tbaa !276
  %C.global1.sroa.90.162.vec.extract = extractelement <8 x half> %489, i64 1, !dbg !257
  %762 = or i32 %521, 81, !dbg !257
  %763 = sext i32 %762 to i64, !dbg !257
  %764 = getelementptr inbounds half, ptr %C, i64 %763, !dbg !257
  store half %C.global1.sroa.90.162.vec.extract, ptr %764, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.90.164.vec.extract = extractelement <8 x half> %489, i64 2, !dbg !257
  %765 = or i32 %521, 82, !dbg !257
  %766 = sext i32 %765 to i64, !dbg !257
  %767 = getelementptr inbounds half, ptr %C, i64 %766, !dbg !257
  store half %C.global1.sroa.90.164.vec.extract, ptr %767, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.90.166.vec.extract = extractelement <8 x half> %489, i64 3, !dbg !257
  %768 = or i32 %521, 83, !dbg !257
  %769 = sext i32 %768 to i64, !dbg !257
  %770 = getelementptr inbounds half, ptr %C, i64 %769, !dbg !257
  store half %C.global1.sroa.90.166.vec.extract, ptr %770, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.90.168.vec.extract = extractelement <8 x half> %489, i64 4, !dbg !257
  %771 = or i32 %521, 84, !dbg !257
  %772 = sext i32 %771 to i64, !dbg !257
  %773 = getelementptr inbounds half, ptr %C, i64 %772, !dbg !257
  store half %C.global1.sroa.90.168.vec.extract, ptr %773, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.90.170.vec.extract = extractelement <8 x half> %489, i64 5, !dbg !257
  %774 = or i32 %521, 85, !dbg !257
  %775 = sext i32 %774 to i64, !dbg !257
  %776 = getelementptr inbounds half, ptr %C, i64 %775, !dbg !257
  store half %C.global1.sroa.90.170.vec.extract, ptr %776, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.90.172.vec.extract = extractelement <8 x half> %489, i64 6, !dbg !257
  %777 = or i32 %521, 86, !dbg !257
  %778 = sext i32 %777 to i64, !dbg !257
  %779 = getelementptr inbounds half, ptr %C, i64 %778, !dbg !257
  store half %C.global1.sroa.90.172.vec.extract, ptr %779, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.90.174.vec.extract = extractelement <8 x half> %489, i64 7, !dbg !257
  %780 = or i32 %521, 87, !dbg !257
  %781 = sext i32 %780 to i64, !dbg !257
  %782 = getelementptr inbounds half, ptr %C, i64 %781, !dbg !257
  store half %C.global1.sroa.90.174.vec.extract, ptr %782, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.99.176.vec.extract = extractelement <8 x half> %495, i64 0, !dbg !257
  %783 = or i32 %521, 88, !dbg !257
  %784 = sext i32 %783 to i64, !dbg !257
  %785 = getelementptr inbounds half, ptr %C, i64 %784, !dbg !257
  store half %C.global1.sroa.99.176.vec.extract, ptr %785, align 16, !dbg !257, !tbaa !276
  %C.global1.sroa.99.178.vec.extract = extractelement <8 x half> %495, i64 1, !dbg !257
  %786 = or i32 %521, 89, !dbg !257
  %787 = sext i32 %786 to i64, !dbg !257
  %788 = getelementptr inbounds half, ptr %C, i64 %787, !dbg !257
  store half %C.global1.sroa.99.178.vec.extract, ptr %788, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.99.180.vec.extract = extractelement <8 x half> %495, i64 2, !dbg !257
  %789 = or i32 %521, 90, !dbg !257
  %790 = sext i32 %789 to i64, !dbg !257
  %791 = getelementptr inbounds half, ptr %C, i64 %790, !dbg !257
  store half %C.global1.sroa.99.180.vec.extract, ptr %791, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.99.182.vec.extract = extractelement <8 x half> %495, i64 3, !dbg !257
  %792 = or i32 %521, 91, !dbg !257
  %793 = sext i32 %792 to i64, !dbg !257
  %794 = getelementptr inbounds half, ptr %C, i64 %793, !dbg !257
  store half %C.global1.sroa.99.182.vec.extract, ptr %794, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.99.184.vec.extract = extractelement <8 x half> %495, i64 4, !dbg !257
  %795 = or i32 %521, 92, !dbg !257
  %796 = sext i32 %795 to i64, !dbg !257
  %797 = getelementptr inbounds half, ptr %C, i64 %796, !dbg !257
  store half %C.global1.sroa.99.184.vec.extract, ptr %797, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.99.186.vec.extract = extractelement <8 x half> %495, i64 5, !dbg !257
  %798 = or i32 %521, 93, !dbg !257
  %799 = sext i32 %798 to i64, !dbg !257
  %800 = getelementptr inbounds half, ptr %C, i64 %799, !dbg !257
  store half %C.global1.sroa.99.186.vec.extract, ptr %800, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.99.188.vec.extract = extractelement <8 x half> %495, i64 6, !dbg !257
  %801 = or i32 %521, 94, !dbg !257
  %802 = sext i32 %801 to i64, !dbg !257
  %803 = getelementptr inbounds half, ptr %C, i64 %802, !dbg !257
  store half %C.global1.sroa.99.188.vec.extract, ptr %803, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.99.190.vec.extract = extractelement <8 x half> %495, i64 7, !dbg !257
  %804 = or i32 %521, 95, !dbg !257
  %805 = sext i32 %804 to i64, !dbg !257
  %806 = getelementptr inbounds half, ptr %C, i64 %805, !dbg !257
  store half %C.global1.sroa.99.190.vec.extract, ptr %806, align 2, !dbg !257, !tbaa !276
  call void @llvm.dbg.declare(metadata i64 3, metadata !273, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 3, metadata !273, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 96, metadata !274, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 96, metadata !274, metadata !DIExpression()), !dbg !257
  %807 = or i64 %522, 96, !dbg !257
  call void @llvm.dbg.declare(metadata i64 %807, metadata !275, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i64 %807, metadata !275, metadata !DIExpression()), !dbg !257
  %C.global1.sroa.108.192.vec.extract = extractelement <8 x half> %501, i64 0, !dbg !257
  %808 = getelementptr inbounds half, ptr %C, i64 %807, !dbg !257
  store half %C.global1.sroa.108.192.vec.extract, ptr %808, align 64, !dbg !257, !tbaa !276
  %C.global1.sroa.108.194.vec.extract = extractelement <8 x half> %501, i64 1, !dbg !257
  %809 = or i32 %521, 97, !dbg !257
  %810 = sext i32 %809 to i64, !dbg !257
  %811 = getelementptr inbounds half, ptr %C, i64 %810, !dbg !257
  store half %C.global1.sroa.108.194.vec.extract, ptr %811, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.108.196.vec.extract = extractelement <8 x half> %501, i64 2, !dbg !257
  %812 = or i32 %521, 98, !dbg !257
  %813 = sext i32 %812 to i64, !dbg !257
  %814 = getelementptr inbounds half, ptr %C, i64 %813, !dbg !257
  store half %C.global1.sroa.108.196.vec.extract, ptr %814, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.108.198.vec.extract = extractelement <8 x half> %501, i64 3, !dbg !257
  %815 = or i32 %521, 99, !dbg !257
  %816 = sext i32 %815 to i64, !dbg !257
  %817 = getelementptr inbounds half, ptr %C, i64 %816, !dbg !257
  store half %C.global1.sroa.108.198.vec.extract, ptr %817, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.108.200.vec.extract = extractelement <8 x half> %501, i64 4, !dbg !257
  %818 = or i32 %521, 100, !dbg !257
  %819 = sext i32 %818 to i64, !dbg !257
  %820 = getelementptr inbounds half, ptr %C, i64 %819, !dbg !257
  store half %C.global1.sroa.108.200.vec.extract, ptr %820, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.108.202.vec.extract = extractelement <8 x half> %501, i64 5, !dbg !257
  %821 = or i32 %521, 101, !dbg !257
  %822 = sext i32 %821 to i64, !dbg !257
  %823 = getelementptr inbounds half, ptr %C, i64 %822, !dbg !257
  store half %C.global1.sroa.108.202.vec.extract, ptr %823, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.108.204.vec.extract = extractelement <8 x half> %501, i64 6, !dbg !257
  %824 = or i32 %521, 102, !dbg !257
  %825 = sext i32 %824 to i64, !dbg !257
  %826 = getelementptr inbounds half, ptr %C, i64 %825, !dbg !257
  store half %C.global1.sroa.108.204.vec.extract, ptr %826, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.108.206.vec.extract = extractelement <8 x half> %501, i64 7, !dbg !257
  %827 = or i32 %521, 103, !dbg !257
  %828 = sext i32 %827 to i64, !dbg !257
  %829 = getelementptr inbounds half, ptr %C, i64 %828, !dbg !257
  store half %C.global1.sroa.108.206.vec.extract, ptr %829, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.117.208.vec.extract = extractelement <8 x half> %507, i64 0, !dbg !257
  %830 = or i32 %521, 104, !dbg !257
  %831 = sext i32 %830 to i64, !dbg !257
  %832 = getelementptr inbounds half, ptr %C, i64 %831, !dbg !257
  store half %C.global1.sroa.117.208.vec.extract, ptr %832, align 16, !dbg !257, !tbaa !276
  %C.global1.sroa.117.210.vec.extract = extractelement <8 x half> %507, i64 1, !dbg !257
  %833 = or i32 %521, 105, !dbg !257
  %834 = sext i32 %833 to i64, !dbg !257
  %835 = getelementptr inbounds half, ptr %C, i64 %834, !dbg !257
  store half %C.global1.sroa.117.210.vec.extract, ptr %835, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.117.212.vec.extract = extractelement <8 x half> %507, i64 2, !dbg !257
  %836 = or i32 %521, 106, !dbg !257
  %837 = sext i32 %836 to i64, !dbg !257
  %838 = getelementptr inbounds half, ptr %C, i64 %837, !dbg !257
  store half %C.global1.sroa.117.212.vec.extract, ptr %838, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.117.214.vec.extract = extractelement <8 x half> %507, i64 3, !dbg !257
  %839 = or i32 %521, 107, !dbg !257
  %840 = sext i32 %839 to i64, !dbg !257
  %841 = getelementptr inbounds half, ptr %C, i64 %840, !dbg !257
  store half %C.global1.sroa.117.214.vec.extract, ptr %841, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.117.216.vec.extract = extractelement <8 x half> %507, i64 4, !dbg !257
  %842 = or i32 %521, 108, !dbg !257
  %843 = sext i32 %842 to i64, !dbg !257
  %844 = getelementptr inbounds half, ptr %C, i64 %843, !dbg !257
  store half %C.global1.sroa.117.216.vec.extract, ptr %844, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.117.218.vec.extract = extractelement <8 x half> %507, i64 5, !dbg !257
  %845 = or i32 %521, 109, !dbg !257
  %846 = sext i32 %845 to i64, !dbg !257
  %847 = getelementptr inbounds half, ptr %C, i64 %846, !dbg !257
  store half %C.global1.sroa.117.218.vec.extract, ptr %847, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.117.220.vec.extract = extractelement <8 x half> %507, i64 6, !dbg !257
  %848 = or i32 %521, 110, !dbg !257
  %849 = sext i32 %848 to i64, !dbg !257
  %850 = getelementptr inbounds half, ptr %C, i64 %849, !dbg !257
  store half %C.global1.sroa.117.220.vec.extract, ptr %850, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.117.222.vec.extract = extractelement <8 x half> %507, i64 7, !dbg !257
  %851 = or i32 %521, 111, !dbg !257
  %852 = sext i32 %851 to i64, !dbg !257
  %853 = getelementptr inbounds half, ptr %C, i64 %852, !dbg !257
  store half %C.global1.sroa.117.222.vec.extract, ptr %853, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.126.224.vec.extract = extractelement <8 x half> %513, i64 0, !dbg !257
  %854 = or i32 %521, 112, !dbg !257
  %855 = sext i32 %854 to i64, !dbg !257
  %856 = getelementptr inbounds half, ptr %C, i64 %855, !dbg !257
  store half %C.global1.sroa.126.224.vec.extract, ptr %856, align 32, !dbg !257, !tbaa !276
  %C.global1.sroa.126.226.vec.extract = extractelement <8 x half> %513, i64 1, !dbg !257
  %857 = or i32 %521, 113, !dbg !257
  %858 = sext i32 %857 to i64, !dbg !257
  %859 = getelementptr inbounds half, ptr %C, i64 %858, !dbg !257
  store half %C.global1.sroa.126.226.vec.extract, ptr %859, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.126.228.vec.extract = extractelement <8 x half> %513, i64 2, !dbg !257
  %860 = or i32 %521, 114, !dbg !257
  %861 = sext i32 %860 to i64, !dbg !257
  %862 = getelementptr inbounds half, ptr %C, i64 %861, !dbg !257
  store half %C.global1.sroa.126.228.vec.extract, ptr %862, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.126.230.vec.extract = extractelement <8 x half> %513, i64 3, !dbg !257
  %863 = or i32 %521, 115, !dbg !257
  %864 = sext i32 %863 to i64, !dbg !257
  %865 = getelementptr inbounds half, ptr %C, i64 %864, !dbg !257
  store half %C.global1.sroa.126.230.vec.extract, ptr %865, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.126.232.vec.extract = extractelement <8 x half> %513, i64 4, !dbg !257
  %866 = or i32 %521, 116, !dbg !257
  %867 = sext i32 %866 to i64, !dbg !257
  %868 = getelementptr inbounds half, ptr %C, i64 %867, !dbg !257
  store half %C.global1.sroa.126.232.vec.extract, ptr %868, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.126.234.vec.extract = extractelement <8 x half> %513, i64 5, !dbg !257
  %869 = or i32 %521, 117, !dbg !257
  %870 = sext i32 %869 to i64, !dbg !257
  %871 = getelementptr inbounds half, ptr %C, i64 %870, !dbg !257
  store half %C.global1.sroa.126.234.vec.extract, ptr %871, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.126.236.vec.extract = extractelement <8 x half> %513, i64 6, !dbg !257
  %872 = or i32 %521, 118, !dbg !257
  %873 = sext i32 %872 to i64, !dbg !257
  %874 = getelementptr inbounds half, ptr %C, i64 %873, !dbg !257
  store half %C.global1.sroa.126.236.vec.extract, ptr %874, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.126.238.vec.extract = extractelement <8 x half> %513, i64 7, !dbg !257
  %875 = or i32 %521, 119, !dbg !257
  %876 = sext i32 %875 to i64, !dbg !257
  %877 = getelementptr inbounds half, ptr %C, i64 %876, !dbg !257
  store half %C.global1.sroa.126.238.vec.extract, ptr %877, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.135.240.vec.extract = extractelement <8 x half> %519, i64 0, !dbg !257
  %878 = or i32 %521, 120, !dbg !257
  %879 = sext i32 %878 to i64, !dbg !257
  %880 = getelementptr inbounds half, ptr %C, i64 %879, !dbg !257
  store half %C.global1.sroa.135.240.vec.extract, ptr %880, align 16, !dbg !257, !tbaa !276
  %C.global1.sroa.135.242.vec.extract = extractelement <8 x half> %519, i64 1, !dbg !257
  %881 = or i32 %521, 121, !dbg !257
  %882 = sext i32 %881 to i64, !dbg !257
  %883 = getelementptr inbounds half, ptr %C, i64 %882, !dbg !257
  store half %C.global1.sroa.135.242.vec.extract, ptr %883, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.135.244.vec.extract = extractelement <8 x half> %519, i64 2, !dbg !257
  %884 = or i32 %521, 122, !dbg !257
  %885 = sext i32 %884 to i64, !dbg !257
  %886 = getelementptr inbounds half, ptr %C, i64 %885, !dbg !257
  store half %C.global1.sroa.135.244.vec.extract, ptr %886, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.135.246.vec.extract = extractelement <8 x half> %519, i64 3, !dbg !257
  %887 = or i32 %521, 123, !dbg !257
  %888 = sext i32 %887 to i64, !dbg !257
  %889 = getelementptr inbounds half, ptr %C, i64 %888, !dbg !257
  store half %C.global1.sroa.135.246.vec.extract, ptr %889, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.135.248.vec.extract = extractelement <8 x half> %519, i64 4, !dbg !257
  %890 = or i32 %521, 124, !dbg !257
  %891 = sext i32 %890 to i64, !dbg !257
  %892 = getelementptr inbounds half, ptr %C, i64 %891, !dbg !257
  store half %C.global1.sroa.135.248.vec.extract, ptr %892, align 8, !dbg !257, !tbaa !276
  %C.global1.sroa.135.250.vec.extract = extractelement <8 x half> %519, i64 5, !dbg !257
  %893 = or i32 %521, 125, !dbg !257
  %894 = sext i32 %893 to i64, !dbg !257
  %895 = getelementptr inbounds half, ptr %C, i64 %894, !dbg !257
  store half %C.global1.sroa.135.250.vec.extract, ptr %895, align 2, !dbg !257, !tbaa !276
  %C.global1.sroa.135.252.vec.extract = extractelement <8 x half> %519, i64 6, !dbg !257
  %896 = or i32 %521, 126, !dbg !257
  %897 = sext i32 %896 to i64, !dbg !257
  %898 = getelementptr inbounds half, ptr %C, i64 %897, !dbg !257
  store half %C.global1.sroa.135.252.vec.extract, ptr %898, align 4, !dbg !257, !tbaa !276
  %C.global1.sroa.135.254.vec.extract = extractelement <8 x half> %519, i64 7, !dbg !257
  %899 = or i32 %521, 127, !dbg !257
  %900 = sext i32 %899 to i64, !dbg !257
  %901 = getelementptr inbounds half, ptr %C, i64 %900, !dbg !257
  store half %C.global1.sroa.135.254.vec.extract, ptr %901, align 2, !dbg !257, !tbaa !276
  call void @llvm.dbg.declare(metadata i64 4, metadata !273, metadata !DIExpression()), !dbg !257
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1, !dbg !257
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next21, metadata !258, metadata !DIExpression()), !dbg !257
  %lftr.wideiv = trunc i64 %indvars.iv.next21 to i32, !dbg !257
  %exitcond22.not = icmp eq i32 %18, %lftr.wideiv, !dbg !257
  br i1 %exitcond22.not, label %for_end_m.outer, label %for_body_m.outer, !dbg !257, !prof !29
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local i16 @__truncsfhf2(float %a0) local_unnamed_addr #5 {
b0:
  %v0 = bitcast float %a0 to i32
  %v1 = and i32 %v0, 2147483647
  %v2 = add nsw i32 %v1, -947912704
  %v3 = add nsw i32 %v1, -1199570944
  %v4 = icmp ult i32 %v2, %v3
  br i1 %v4, label %b1, label %b5

b1:                                               ; preds = %b0
  %v5 = lshr i32 %v0, 13
  %v6 = and i32 %v5, 65535
  %v7 = add nuw nsw i32 %v6, -114688
  %v8 = and i32 %v0, 8191
  %v9 = icmp ugt i32 %v8, 4096
  br i1 %v9, label %b2, label %b3

b2:                                               ; preds = %b1
  %v10 = add nuw nsw i32 %v6, -114687
  br label %b13

b3:                                               ; preds = %b1
  %v11 = icmp eq i32 %v8, 4096
  br i1 %v11, label %b4, label %b13

b4:                                               ; preds = %b3
  %v12 = and i32 %v7, 65535
  %v13 = and i32 %v5, 1
  %v14 = add nuw nsw i32 %v12, %v13
  br label %b13

b5:                                               ; preds = %b0
  %v15 = icmp ugt i32 %v1, 2139095040
  br i1 %v15, label %b6, label %b7

b6:                                               ; preds = %b5
  %v16 = lshr i32 %v0, 13
  %v17 = and i32 %v16, 511
  %v18 = or i32 %v17, 32256
  br label %b13

b7:                                               ; preds = %b5
  %v19 = icmp ugt i32 %v1, 1199570943
  br i1 %v19, label %b13, label %b8

b8:                                               ; preds = %b7
  %v20 = icmp ult i32 %v1, 754974720
  br i1 %v20, label %b13, label %b9

b9:                                               ; preds = %b8
  %v21 = lshr i32 %v1, 23
  %v22 = sub nsw i32 113, %v21
  %v23 = and i32 %v0, 8388607
  %v24 = or i32 %v23, 8388608
  %v25 = add nsw i32 %v21, -81
  %v26 = shl i32 %v24, %v25
  %v27 = icmp ne i32 %v26, 0
  %v28 = lshr i32 %v24, %v22
  %v29 = zext i1 %v27 to i32
  %v30 = lshr i32 %v28, 13
  %v31 = and i32 %v28, 8191
  %v32 = or i32 %v31, %v29
  %v33 = icmp ugt i32 %v32, 4096
  br i1 %v33, label %b10, label %b11

b10:                                              ; preds = %b9
  %v34 = add nuw nsw i32 %v30, 1
  br label %b13

b11:                                              ; preds = %b9
  %v35 = icmp eq i32 %v32, 4096
  br i1 %v35, label %b12, label %b13

b12:                                              ; preds = %b11
  %v36 = and i32 %v30, 1
  %v37 = add nuw nsw i32 %v36, %v30
  br label %b13

b13:                                              ; preds = %b12, %b11, %b10, %b8, %b7, %b6, %b4, %b3, %b2
  %v38 = phi i32 [ %v18, %b6 ], [ %v10, %b2 ], [ %v14, %b4 ], [ %v7, %b3 ], [ 31744, %b7 ], [ 0, %b8 ], [ %v34, %b10 ], [ %v37, %b12 ], [ %v30, %b11 ]
  %v39 = lshr i32 %v0, 16
  %v40 = and i32 %v39, 32768
  %v41 = or i32 %v38, %v40
  %vlast = trunc i32 %v41 to i16
  ret i16 %vlast
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local float @__extendhfsf2(i16 %a0) local_unnamed_addr #5 {
b0:
  %v1 = and i16 %a0, 32767
  %v2 = zext i16 %v1 to i32
  %v3 = add nsw i16 %v1, -1024
  %v4 = icmp ult i16 %v3, 30720
  br i1 %v4, label %b1, label %b2

b1:                                               ; preds = %b0
  %v5 = shl nuw nsw i32 %v2, 13
  %v6 = add nuw nsw i32 %v5, 939524096
  br label %b6

b2:                                               ; preds = %b0
  %v7 = icmp ugt i16 %v1, 31743
  br i1 %v7, label %b3, label %b4

b3:                                               ; preds = %b2
  %v8 = shl nuw nsw i32 %v2, 13
  %v9 = or i32 %v8, 2139095040
  br label %b6

b4:                                               ; preds = %b2
  %v10 = icmp eq i16 %v1, 0
  br i1 %v10, label %b6, label %b5

b5:                                               ; preds = %b4
  %v11 = icmp ult i16 %v1, 256
  %v12 = lshr i32 %v2, 8
  %v13 = select i1 %v11, i32 %v2, i32 %v12
  %v14 = select i1 %v11, i32 32, i32 24
  %v15 = icmp ult i32 %v13, 16
  %v16 = lshr i32 %v13, 4
  %v17 = add nsw i32 %v14, -4
  %v18 = select i1 %v15, i32 %v13, i32 %v16
  %v19 = select i1 %v15, i32 %v14, i32 %v17
  %v20 = icmp ult i32 %v18, 4
  %v21 = lshr i32 %v18, 2
  %v22 = add nsw i32 %v19, -2
  %v23 = select i1 %v20, i32 %v18, i32 %v21
  %v24 = select i1 %v20, i32 %v19, i32 %v22
  %v25 = icmp ult i32 %v23, 2
  %v26 = sub nsw i32 0, %v23
  %v27 = select i1 %v25, i32 %v26, i32 -2
  %v28 = add nsw i32 %v27, %v24
  %v29 = add nsw i32 %v28, -8
  %v30 = shl i32 %v2, %v29
  %v31 = xor i32 %v30, 8388608
  %v32 = shl i32 %v28, 23
  %v33 = sub i32 1124073472, %v32
  %v34 = or i32 %v31, %v33
  br label %b6

b6:                                               ; preds = %b5, %b4, %b3, %b1
  %v35 = phi i32 [ %v6, %b1 ], [ %v9, %b3 ], [ %v34, %b5 ], [ 0, %b4 ]
  %v36 = and i16 %a0, -32768
  %v37 = zext i16 %v36 to i32
  %v38 = shl nuw i32 %v37, 16
  %v39 = or i32 %v35, %v38
  %v40 = bitcast i32 %v39 to float
  ret float %v40
}

; Function Attrs: alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x half> @llvm.fmuladd.v8f16(<8 x half>, <8 x half>, <8 x half>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

attributes #0 = { "target-cpu"="apple-m2" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { noinline "target-cpu"="apple-m2" }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) "probe-stack"="__chkstk_darwin" "target-cpu"="apple-m2" }
attributes #5 = { nofree nosync nounwind memory(none) "target-cpu"="apple-m2" "target-features" }
attributes #6 = { alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "IRModule.CodeGenLLVM", directory: ".")
!2 = !{!"Apple clang version 16.0.0 (clang-1600.0.26.6)"}
!3 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 2]}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 1}
!8 = !{i32 2, !"tvm_target", !"llvm -mtriple=arm64-apple-darwin23.1.0 -mcpu=apple-m2"}
!9 = !{i32 4, !"Debug Info Version", i32 3}
!10 = !{i32 4, !"Dwarf Version", i32 2}
!11 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !16, !14, !15, !16, !15}
!14 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14)
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DILocalVariable(name: "args", arg: 1, scope: !11, file: !1, type: !15)
!19 = !DILocalVariable(name: "arg_type_ids", arg: 2, scope: !11, file: !1, type: !16)
!20 = !DILocalVariable(name: "num_args", arg: 3, scope: !11, file: !1, type: !14)
!21 = !DILocalVariable(name: "out_ret_value", arg: 4, scope: !11, file: !1, type: !15)
!22 = !DILocalVariable(name: "out_ret_tcode", arg: 5, scope: !11, file: !1, type: !16)
!23 = !DILocalVariable(name: "resource_handle", arg: 6, scope: !11, file: !1, type: !15)
!24 = !DILocation(line: 0, scope: !11)
!25 = !{!"branch_weights", i32 1048576, i32 1}
!26 = !{!27, !27, i64 0}
!27 = !{!"ctx_ptr", !28, i64 0}
!28 = !{!"tvm-tbaa"}
!29 = !{!"branch_weights", i32 1, i32 1048576}
!30 = !{!31, !31, i64 0}
!31 = !{!"0x600000c14d50.w4.b0", !32, i64 0}
!32 = !{!"0x600000c14d50.w8.b0", !33, i64 0}
!33 = !{!"0x600000c14d50.w16.b0", !34, i64 0}
!34 = !{!"0x600000c14d50.w32.b0", !35, i64 0}
!35 = !{!"0x600000c14d50.w64.b0", !36, i64 0}
!36 = !{!"0x600000c14d50.w128.b0", !37, i64 0}
!37 = !{!"0x600000c14d50.w256.b0", !38, i64 0}
!38 = !{!"0x600000c14d50.w512.b0", !39, i64 0}
!39 = !{!"0x600000c14d50.w1024.b0", !40, i64 0}
!40 = !{!"0x600000c14d50", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x600000c14d50.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x600000c14d50.w4.b8", !47, i64 0}
!47 = !{!"0x600000c14d50.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x600000c14d50.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x600000c14d50.w4.b16", !54, i64 0}
!54 = !{!"0x600000c14d50.w8.b16", !55, i64 0}
!55 = !{!"0x600000c14d50.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x600000c14d50.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x600000fada70.w8.b0", !95, i64 0}
!95 = !{!"0x600000fada70.w16.b0", !96, i64 0}
!96 = !{!"0x600000fada70.w32.b0", !97, i64 0}
!97 = !{!"0x600000fada70.w64.b0", !98, i64 0}
!98 = !{!"0x600000fada70.w128.b0", !99, i64 0}
!99 = !{!"0x600000fada70.w256.b0", !100, i64 0}
!100 = !{!"0x600000fada70.w512.b0", !101, i64 0}
!101 = !{!"0x600000fada70.w1024.b0", !102, i64 0}
!102 = !{!"0x600000fada70", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x600000fada70.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x600000fada70.w8.b16", !107, i64 0}
!107 = !{!"0x600000fada70.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x600000cec360.w8.b16", !110, i64 0}
!110 = !{!"0x600000cec360.w16.b16", !111, i64 0}
!111 = !{!"0x600000cec360.w32.b0", !112, i64 0}
!112 = !{!"0x600000cec360.w64.b0", !113, i64 0}
!113 = !{!"0x600000cec360.w128.b0", !114, i64 0}
!114 = !{!"0x600000cec360.w256.b0", !115, i64 0}
!115 = !{!"0x600000cec360.w512.b0", !116, i64 0}
!116 = !{!"0x600000cec360.w1024.b0", !117, i64 0}
!117 = !{!"0x600000cec360", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x600000cec360.w8.b8", !120, i64 0}
!120 = !{!"0x600000cec360.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x600000cec360.w8.b0", !120, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x600000ceeeb0.w8.b0", !125, i64 0}
!125 = !{!"0x600000ceeeb0.w16.b0", !126, i64 0}
!126 = !{!"0x600000ceeeb0.w32.b0", !127, i64 0}
!127 = !{!"0x600000ceeeb0.w64.b0", !128, i64 0}
!128 = !{!"0x600000ceeeb0.w128.b0", !129, i64 0}
!129 = !{!"0x600000ceeeb0.w256.b0", !130, i64 0}
!130 = !{!"0x600000ceeeb0.w512.b0", !131, i64 0}
!131 = !{!"0x600000ceeeb0.w1024.b0", !132, i64 0}
!132 = !{!"0x600000ceeeb0", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x600000ceeeb0.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x600000ceeeb0.w8.b16", !137, i64 0}
!137 = !{!"0x600000ceeeb0.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x600000cee430.w8.b16", !140, i64 0}
!140 = !{!"0x600000cee430.w16.b16", !141, i64 0}
!141 = !{!"0x600000cee430.w32.b0", !142, i64 0}
!142 = !{!"0x600000cee430.w64.b0", !143, i64 0}
!143 = !{!"0x600000cee430.w128.b0", !144, i64 0}
!144 = !{!"0x600000cee430.w256.b0", !145, i64 0}
!145 = !{!"0x600000cee430.w512.b0", !146, i64 0}
!146 = !{!"0x600000cee430.w1024.b0", !147, i64 0}
!147 = !{!"0x600000cee430", !28, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x600000cee430.w8.b8", !150, i64 0}
!150 = !{!"0x600000cee430.w16.b0", !141, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x600000ceda10.w8.b0", !153, i64 0}
!153 = !{!"0x600000ceda10.w16.b0", !154, i64 0}
!154 = !{!"0x600000ceda10.w32.b0", !155, i64 0}
!155 = !{!"0x600000ceda10.w64.b0", !156, i64 0}
!156 = !{!"0x600000ceda10.w128.b0", !157, i64 0}
!157 = !{!"0x600000ceda10.w256.b0", !158, i64 0}
!158 = !{!"0x600000ceda10.w512.b0", !159, i64 0}
!159 = !{!"0x600000ceda10.w1024.b0", !160, i64 0}
!160 = !{!"0x600000ceda10", !28, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"0x600000ceda10.w8.b8", !153, i64 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"0x600000ceda10.w8.b16", !165, i64 0}
!165 = !{!"0x600000ceda10.w16.b16", !154, i64 0}
!166 = !{!167, !167, i64 0}
!167 = !{!"0x600000cecff0.w8.b16", !168, i64 0}
!168 = !{!"0x600000cecff0.w16.b16", !169, i64 0}
!169 = !{!"0x600000cecff0.w32.b0", !170, i64 0}
!170 = !{!"0x600000cecff0.w64.b0", !171, i64 0}
!171 = !{!"0x600000cecff0.w128.b0", !172, i64 0}
!172 = !{!"0x600000cecff0.w256.b0", !173, i64 0}
!173 = !{!"0x600000cecff0.w512.b0", !174, i64 0}
!174 = !{!"0x600000cecff0.w1024.b0", !175, i64 0}
!175 = !{!"0x600000cecff0", !28, i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"0x600000cecff0.w8.b8", !178, i64 0}
!178 = !{!"0x600000cecff0.w16.b0", !169, i64 0}
!179 = !{!180, !180, i64 0}
!180 = !{!"0x600000cecff0.w8.b0", !178, i64 0}
!181 = !{!182, !182, i64 0}
!182 = !{!"0x600000ceb3c0.w8.b0", !183, i64 0}
!183 = !{!"0x600000ceb3c0.w16.b0", !184, i64 0}
!184 = !{!"0x600000ceb3c0.w32.b0", !185, i64 0}
!185 = !{!"0x600000ceb3c0.w64.b0", !186, i64 0}
!186 = !{!"0x600000ceb3c0.w128.b0", !187, i64 0}
!187 = !{!"0x600000ceb3c0.w256.b0", !188, i64 0}
!188 = !{!"0x600000ceb3c0.w512.b0", !189, i64 0}
!189 = !{!"0x600000ceb3c0.w1024.b0", !190, i64 0}
!190 = !{!"0x600000ceb3c0", !28, i64 0}
!191 = !{!192, !192, i64 0}
!192 = !{!"0x600000ceb3c0.w8.b8", !183, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x600000cd0210.w8.b8", !195, i64 0}
!195 = !{!"0x600000cd0210.w16.b0", !196, i64 0}
!196 = !{!"0x600000cd0210.w32.b0", !197, i64 0}
!197 = !{!"0x600000cd0210.w64.b0", !198, i64 0}
!198 = !{!"0x600000cd0210.w128.b0", !199, i64 0}
!199 = !{!"0x600000cd0210.w256.b0", !200, i64 0}
!200 = !{!"0x600000cd0210.w512.b0", !201, i64 0}
!201 = !{!"0x600000cd0210.w1024.b0", !202, i64 0}
!202 = !{!"0x600000cd0210", !28, i64 0}
!203 = !{!204, !204, i64 0}
!204 = !{!"0x600000cd1320.w8.b0", !205, i64 0}
!205 = !{!"0x600000cd1320.w16.b0", !206, i64 0}
!206 = !{!"0x600000cd1320.w32.b0", !207, i64 0}
!207 = !{!"0x600000cd1320.w64.b0", !208, i64 0}
!208 = !{!"0x600000cd1320.w128.b0", !209, i64 0}
!209 = !{!"0x600000cd1320.w256.b0", !210, i64 0}
!210 = !{!"0x600000cd1320.w512.b0", !211, i64 0}
!211 = !{!"0x600000cd1320.w1024.b0", !212, i64 0}
!212 = !{!"0x600000cd1320", !28, i64 0}
!213 = !{!214, !214, i64 0}
!214 = !{!"0x600000cd1320.w8.b8", !205, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x600000cd1c20.w8.b8", !217, i64 0}
!217 = !{!"0x600000cd1c20.w16.b0", !218, i64 0}
!218 = !{!"0x600000cd1c20.w32.b0", !219, i64 0}
!219 = !{!"0x600000cd1c20.w64.b0", !220, i64 0}
!220 = !{!"0x600000cd1c20.w128.b0", !221, i64 0}
!221 = !{!"0x600000cd1c20.w256.b0", !222, i64 0}
!222 = !{!"0x600000cd1c20.w512.b0", !223, i64 0}
!223 = !{!"0x600000cd1c20.w1024.b0", !224, i64 0}
!224 = !{!"0x600000cd1c20", !28, i64 0}
!225 = !{!226, !226, i64 0}
!226 = !{!"0x600000cd27c0.w8.b0", !227, i64 0}
!227 = !{!"0x600000cd27c0.w16.b0", !228, i64 0}
!228 = !{!"0x600000cd27c0.w32.b0", !229, i64 0}
!229 = !{!"0x600000cd27c0.w64.b0", !230, i64 0}
!230 = !{!"0x600000cd27c0.w128.b0", !231, i64 0}
!231 = !{!"0x600000cd27c0.w256.b0", !232, i64 0}
!232 = !{!"0x600000cd27c0.w512.b0", !233, i64 0}
!233 = !{!"0x600000cd27c0.w1024.b0", !234, i64 0}
!234 = !{!"0x600000cd27c0", !28, i64 0}
!235 = !{!236, !236, i64 0}
!236 = !{!"0x600000cd27c0.w8.b8", !227, i64 0}
!237 = !{!238, !238, i64 0}
!238 = !{!"0x600000cd3180.w8.b8", !239, i64 0}
!239 = !{!"0x600000cd3180.w16.b0", !240, i64 0}
!240 = !{!"0x600000cd3180.w32.b0", !241, i64 0}
!241 = !{!"0x600000cd3180.w64.b0", !242, i64 0}
!242 = !{!"0x600000cd3180.w128.b0", !243, i64 0}
!243 = !{!"0x600000cd3180.w256.b0", !244, i64 0}
!244 = !{!"0x600000cd3180.w512.b0", !245, i64 0}
!245 = !{!"0x600000cd3180.w1024.b0", !246, i64 0}
!246 = !{!"0x600000cd3180", !28, i64 0}
!247 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m8192_k14336_n1_b2_compute_", scope: !1, file: !1, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{!14, !77, !72, !82, !82, !82, !82}
!250 = !{!251, !252, !253, !254, !255, !256}
!251 = !DILocalVariable(name: "LUT", arg: 1, scope: !247, file: !1, type: !77)
!252 = !DILocalVariable(name: "A", arg: 2, scope: !247, file: !1, type: !72)
!253 = !DILocalVariable(name: "Scales", arg: 3, scope: !247, file: !1, type: !82)
!254 = !DILocalVariable(name: "LUT_Scales", arg: 4, scope: !247, file: !1, type: !82)
!255 = !DILocalVariable(name: "LUT_Biases", arg: 5, scope: !247, file: !1, type: !82)
!256 = !DILocalVariable(name: "C", arg: 6, scope: !247, file: !1, type: !82)
!257 = !DILocation(line: 0, scope: !247)
!258 = !DILocalVariable(name: "m.outer", scope: !247, file: !1, type: !14)
!259 = !DILocalVariable(name: "CBits", scope: !247, file: !1, type: !82)
!260 = !DILocalVariable(name: "k.outer", scope: !247, file: !1, type: !14)
!261 = !{!262, !262, i64 0}
!262 = !{!"__fp16", !263, i64 0}
!263 = !{!"omnipotent char", !264, i64 0}
!264 = !{!"Simple C++ TBAA"}
!265 = distinct !{!265, !266}
!266 = !{!"llvm.loop.mustprogress"}
!267 = !DILocalVariable(name: "m.c.outer", scope: !247, file: !1, type: !14)
!268 = !DILocalVariable(name: "cse_var_2", scope: !247, file: !1, type: !14)
!269 = !DILocalVariable(name: "cse_var_1", scope: !247, file: !1, type: !14)
!270 = !{!271, !271, i64 0}
!271 = !{!"0x600000c196e0", !28, i64 0}
!272 = !DILocalVariable(name: "C.global", scope: !247, file: !1, type: !82)
!273 = !DILocalVariable(name: "m.inner.outer", scope: !247, file: !1, type: !14)
!274 = !DILocalVariable(name: "cse_var_4", scope: !247, file: !1, type: !14)
!275 = !DILocalVariable(name: "cse_var_3", scope: !247, file: !1, type: !14)
!276 = !{!277, !277, i64 0}
!277 = !{!"0x600000eaa490", !28, i64 0}
