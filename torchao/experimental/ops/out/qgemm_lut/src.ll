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
@.str = private constant [86 x i8] c"Assert fail: num_args == 6, qgemm_lut_t4_int8_m8192_k4096_n1_b2: num_args should be 6\00", align 1
@.str.1 = private constant [104 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t4_int8_m8192_k4096_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [106 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t4_int8_m8192_k4096_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [137 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [145 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [157 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [173 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [173 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [137 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [118 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [120 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [122 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [124 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [128 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [130 x i8] c"Assert fail: 3 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.ndim is expected to equal 3\00", align 1
@.str.15 = private constant [136 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [138 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [136 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [138 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [118 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [120 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [239 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [241 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[0]) == 32, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape[0] has an unsatisfied constraint: 32 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[1]) == 1024, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [243 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[2]) == 128, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape[2] has an unsatisfied constraint: 128 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [318 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_strides[2]) and 128 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_strides[1]) and 131072 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_strides[0]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [206 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [186 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [113 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [246 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [251 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[1]) == 1024, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [247 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [243 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_strides[1]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [212 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [192 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [198 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [117 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [262 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [256 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[0]) == 32, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape[0] has an unsatisfied constraint: 32 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[0])\00", align 1
@.str.40 = private constant [256 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[1]) == 32, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape[1] has an unsatisfied constraint: 32 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[1])\00", align 1
@.str.41 = private constant [258 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[2]) == 128, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape[2] has an unsatisfied constraint: 128 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[2])\00", align 1
@.str.42 = private constant [336 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_strides[2]) and 128 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_strides[1]) and 4096 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_strides[0]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides: expected to be compact array\00", align 1
@.str.43 = private constant [221 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.44 = private constant [201 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.45 = private constant [207 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.46 = private constant [123 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.47 = private constant [278 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.48 = private constant [266 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.49 = private constant [268 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[1]) == 64, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.50 = private constant [179 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.51 = private constant [233 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.52 = private constant [213 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.53 = private constant [219 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.54 = private constant [131 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.55 = private constant [278 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.56 = private constant [266 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.57 = private constant [268 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[1]) == 64, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.58 = private constant [179 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.59 = private constant [233 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.60 = private constant [213 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.61 = private constant [219 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.62 = private constant [131 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.63 = private constant [242 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.dtype is expected to be float16\00", align 1
@.str.64 = private constant [239 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_shape[0])\00", align 1
@.str.65 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_shape[1]) == 4096, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape[1] has an unsatisfied constraint: 4096 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_shape[1])\00", align 1
@.str.66 = private constant [161 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_strides[1]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides: expected to be compact array\00", align 1
@.str.67 = private constant [206 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.68 = private constant [186 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.69 = private constant [192 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.70 = private constant [113 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C is expected to have non-NULL data pointer\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [36 x i8] c"qgemm_lut_t4_int8_m8192_k4096_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t4_int8_m8192_k4096_n1_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
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
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  %41 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides = load ptr, ptr %41, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, metadata !80, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, metadata !80, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %48 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides = load ptr, ptr %48, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %55 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides = load ptr, ptr %55, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %62 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides = load ptr, ptr %62, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
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
  %75 = load i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %76 = and i64 %75, 4294967295, !dbg !24
  %77 = icmp eq i64 %76, 32, !dbg !24
  br i1 %77, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %78(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %79 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, i64 1, !dbg !24
  %80 = load i64, ptr %79, align 8, !dbg !24, !tbaa !103
  %81 = and i64 %80, 4294967295, !dbg !24
  %82 = icmp eq i64 %81, 1024, !dbg !24
  br i1 %82, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %83(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %84 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, i64 2, !dbg !24
  %85 = load i64, ptr %84, align 8, !dbg !24, !tbaa !105
  %86 = and i64 %85, 4294967295, !dbg !24
  %87 = icmp eq i64 %86, 128, !dbg !24
  br i1 %87, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %88 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %88(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not176 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, null, !dbg !24
  br i1 %.not176, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %89 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, i64 2, !dbg !24
  %90 = load i64, ptr %89, align 8, !dbg !24, !tbaa !108
  %91 = and i64 %90, 4294967295, !dbg !24
  %92 = icmp eq i64 %91, 1, !dbg !24
  %93 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, i64 1, !dbg !24
  %94 = load i64, ptr %93, align 8, !dbg !24, !tbaa !118
  %95 = and i64 %94, 4294967295, !dbg !24
  %96 = icmp eq i64 %95, 128, !dbg !24
  %97 = and i1 %92, %96, !dbg !24
  %98 = load i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, align 8, !dbg !24, !tbaa !121
  %99 = and i64 %98, 4294967295, !dbg !24
  %100 = icmp eq i64 %99, 131072, !dbg !24
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
  %124 = load i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, align 8, !dbg !24, !tbaa !123
  %125 = and i64 %124, 4294967295, !dbg !24
  %126 = icmp eq i64 %125, 1, !dbg !24
  br i1 %126, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %127 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %127(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %128 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, i64 1, !dbg !24
  %129 = load i64, ptr %128, align 8, !dbg !24, !tbaa !133
  %130 = and i64 %129, 4294967295, !dbg !24
  %131 = icmp eq i64 %130, 1024, !dbg !24
  br i1 %131, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %132 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %132(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %133 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, i64 2, !dbg !24
  %134 = load i64, ptr %133, align 8, !dbg !24, !tbaa !135
  %135 = and i64 %134, 4294967295, !dbg !24
  %136 = icmp eq i64 %135, 16, !dbg !24
  br i1 %136, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %137 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %137(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not178 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, null, !dbg !24
  br i1 %.not178, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %138 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, i64 2, !dbg !24
  %139 = load i64, ptr %138, align 8, !dbg !24, !tbaa !138
  %140 = and i64 %139, 4294967295, !dbg !24
  %141 = icmp eq i64 %140, 1, !dbg !24
  %142 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, i64 1, !dbg !24
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
  %173 = load i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, align 8, !dbg !24, !tbaa !151
  %174 = and i64 %173, 4294967295, !dbg !24
  %175 = icmp eq i64 %174, 32, !dbg !24
  br i1 %175, label %assert_end92, label %assert_fail91, !dbg !24, !prof !25

assert_fail91:                                    ; preds = %assert_end90
  %176 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %176(ptr nonnull @.str.39), !dbg !24
  br label %common.ret

assert_end92:                                     ; preds = %assert_end90
  %177 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, i64 1, !dbg !24
  %178 = load i64, ptr %177, align 8, !dbg !24, !tbaa !161
  %179 = and i64 %178, 4294967295, !dbg !24
  %180 = icmp eq i64 %179, 32, !dbg !24
  br i1 %180, label %assert_end94, label %assert_fail93, !dbg !24, !prof !25

assert_fail93:                                    ; preds = %assert_end92
  %181 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %181(ptr nonnull @.str.40), !dbg !24
  br label %common.ret

assert_end94:                                     ; preds = %assert_end92
  %182 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, i64 2, !dbg !24
  %183 = load i64, ptr %182, align 8, !dbg !24, !tbaa !163
  %184 = and i64 %183, 4294967295, !dbg !24
  %185 = icmp eq i64 %184, 128, !dbg !24
  br i1 %185, label %assert_end96, label %assert_fail95, !dbg !24, !prof !25

assert_fail95:                                    ; preds = %assert_end94
  %186 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %186(ptr nonnull @.str.41), !dbg !24
  br label %common.ret

assert_end96:                                     ; preds = %assert_end94
  %.not180 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, null, !dbg !24
  br i1 %.not180, label %if_end98, label %if_then97, !dbg !24, !prof !29

if_then97:                                        ; preds = %assert_end96
  %187 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, i64 2, !dbg !24
  %188 = load i64, ptr %187, align 8, !dbg !24, !tbaa !166
  %189 = and i64 %188, 4294967295, !dbg !24
  %190 = icmp eq i64 %189, 1, !dbg !24
  %191 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, i64 1, !dbg !24
  %192 = load i64, ptr %191, align 8, !dbg !24, !tbaa !176
  %193 = and i64 %192, 4294967295, !dbg !24
  %194 = icmp eq i64 %193, 128, !dbg !24
  %195 = and i1 %190, %194, !dbg !24
  %196 = load i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, align 8, !dbg !24, !tbaa !179
  %197 = and i64 %196, 4294967295, !dbg !24
  %198 = icmp eq i64 %197, 4096, !dbg !24
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
  %226 = load i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !181
  %227 = and i64 %226, 4294967295, !dbg !24
  %228 = icmp eq i64 %227, 1, !dbg !24
  br i1 %228, label %assert_end112, label %assert_fail111, !dbg !24, !prof !25

assert_fail111:                                   ; preds = %assert_end110
  %229 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %229(ptr nonnull @.str.48), !dbg !24
  br label %common.ret

assert_end112:                                    ; preds = %assert_end110
  %230 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape, i64 1, !dbg !24
  %231 = load i64, ptr %230, align 8, !dbg !24, !tbaa !191
  %232 = and i64 %231, 4294967295, !dbg !24
  %233 = icmp eq i64 %232, 64, !dbg !24
  br i1 %233, label %assert_end114, label %assert_fail113, !dbg !24, !prof !25

assert_fail113:                                   ; preds = %assert_end112
  %234 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %234(ptr nonnull @.str.49), !dbg !24
  br label %common.ret

assert_end114:                                    ; preds = %assert_end112
  %.not182 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not182, label %if_end116, label %if_then115, !dbg !24, !prof !29

if_then115:                                       ; preds = %assert_end114
  %235 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides, i64 1, !dbg !24
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
  %265 = load i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !203
  %266 = and i64 %265, 4294967295, !dbg !24
  %267 = icmp eq i64 %266, 1, !dbg !24
  br i1 %267, label %assert_end130, label %assert_fail129, !dbg !24, !prof !25

assert_fail129:                                   ; preds = %assert_end128
  %268 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %268(ptr nonnull @.str.56), !dbg !24
  br label %common.ret

assert_end130:                                    ; preds = %assert_end128
  %269 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape, i64 1, !dbg !24
  %270 = load i64, ptr %269, align 8, !dbg !24, !tbaa !213
  %271 = and i64 %270, 4294967295, !dbg !24
  %272 = icmp eq i64 %271, 64, !dbg !24
  br i1 %272, label %assert_end132, label %assert_fail131, !dbg !24, !prof !25

assert_fail131:                                   ; preds = %assert_end130
  %273 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %273(ptr nonnull @.str.57), !dbg !24
  br label %common.ret

assert_end132:                                    ; preds = %assert_end130
  %.not184 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not184, label %if_end134, label %if_then133, !dbg !24, !prof !29

if_then133:                                       ; preds = %assert_end132
  %274 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides, i64 1, !dbg !24
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
  %304 = load i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape, align 8, !dbg !24, !tbaa !225
  %305 = and i64 %304, 4294967295, !dbg !24
  %306 = icmp eq i64 %305, 1, !dbg !24
  br i1 %306, label %assert_end148, label %assert_fail147, !dbg !24, !prof !25

assert_fail147:                                   ; preds = %assert_end146
  %307 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %307(ptr nonnull @.str.64), !dbg !24
  br label %common.ret

assert_end148:                                    ; preds = %assert_end146
  %308 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape, i64 1, !dbg !24
  %309 = load i64, ptr %308, align 8, !dbg !24, !tbaa !235
  %310 = and i64 %309, 4294967295, !dbg !24
  %311 = icmp eq i64 %310, 4096, !dbg !24
  br i1 %311, label %assert_end150, label %assert_fail149, !dbg !24, !prof !25

assert_fail149:                                   ; preds = %assert_end148
  %312 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %312(ptr nonnull @.str.65), !dbg !24
  br label %common.ret

assert_end150:                                    ; preds = %assert_end148
  %.not186 = icmp eq ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides, null, !dbg !24
  br i1 %.not186, label %if_end152, label %if_then151, !dbg !24, !prof !29

if_then151:                                       ; preds = %assert_end150
  %313 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides, i64 1, !dbg !24
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
  %331 = tail call fastcc i32 @qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_(ptr nonnull %LUT163, ptr nonnull %A164, ptr nonnull %Scales165, ptr nonnull %LUT_Scales166, ptr nonnull %LUT_Biases167, ptr nonnull %C168), !dbg !24
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_(ptr noalias align 64 %LUT, ptr noalias align 64 %A, ptr noalias align 64 %Scales, ptr noalias align 64 %LUT_Scales, ptr noalias align 64 %LUT_Biases, ptr noalias align 64 %C) unnamed_addr #3 !dbg !247 {
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
  %C.global1 = alloca [4 x <32 x half>], align 64, !dbg !257
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
  %17 = sub i32 %14, %11, !dbg !257
  br label %for_body_m.outer, !dbg !257

for_body_m.outer:                                 ; preds = %for_body_m.outer.preheader, %for_begin_m.inner.outer.preheader
  %indvars.iv15 = phi i64 [ %smin, %for_body_m.outer.preheader ], [ %indvars.iv.next16, %for_begin_m.inner.outer.preheader ]
  %indvar = phi i32 [ 0, %for_body_m.outer.preheader ], [ %indvar.next, %for_begin_m.inner.outer.preheader ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv15, metadata !258, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata ptr %CBits2, metadata !259, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata ptr %C.global1, metadata !260, metadata !DIExpression()), !dbg !257
  %18 = add i32 %11, %indvar, !dbg !257
  %19 = shl i32 %18, 7, !dbg !257
  %20 = sext i32 %19 to i64, !dbg !257
  %21 = shl nsw i64 %20, 1, !dbg !257
  %scevgep = getelementptr i8, ptr %C, i64 %21, !dbg !257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %CBits2, i8 0, i64 512, i1 false), !dbg !257
  %22 = trunc i64 %indvars.iv15 to i32
  %23 = shl nsw i32 %22, 17
  %24 = shl nsw i32 %22, 12
  call void @llvm.dbg.declare(metadata i32 0, metadata !263, metadata !DIExpression()), !dbg !257
  %25 = sext i32 %23 to i64, !dbg !257
  br label %for_body_k.outer, !dbg !257

for_end_m.outer:                                  ; preds = %for_begin_m.inner.outer.preheader, %parallel_closure_entry
  ret i32 0, !dbg !257

for_body_k.outer:                                 ; preds = %for_body_m.outer, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit
  %indvars.iv = phi i64 [ 0, %for_body_m.outer ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !263, metadata !DIExpression()), !dbg !257
  %26 = shl nuw nsw i64 %indvars.iv, 8, !dbg !257
  %27 = getelementptr inbounds i8, ptr %LUT, i64 %26, !dbg !257
  %28 = shl nuw nsw i64 %indvars.iv, 11, !dbg !257
  %29 = add nuw nsw i64 %28, %25, !dbg !257
  %30 = getelementptr inbounds i8, ptr %A, i64 %29, !dbg !257
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !257
  %31 = shl i32 %indvars.iv.tr, 6, !dbg !257
  %32 = and i32 %31, 2147483520, !dbg !257
  %33 = add nuw nsw i32 %32, %24, !dbg !257
  %34 = sext i32 %33 to i64, !dbg !257
  %35 = getelementptr inbounds half, ptr %Scales, i64 %34, !dbg !257
  %36 = getelementptr inbounds half, ptr %LUT_Scales, i64 %indvars.iv, !dbg !257
  %37 = getelementptr inbounds half, ptr %LUT_Biases, i64 %indvars.iv, !dbg !257
  %38 = load <16 x i8>, ptr %27, align 1, !dbg !257
  %39 = getelementptr inbounds i8, ptr %27, i64 16, !dbg !257
  %40 = load <16 x i8>, ptr %39, align 1, !dbg !257
  %41 = getelementptr inbounds i8, ptr %27, i64 32, !dbg !257
  %42 = load <16 x i8>, ptr %41, align 1, !dbg !257
  %43 = getelementptr inbounds i8, ptr %27, i64 48, !dbg !257
  %44 = load <16 x i8>, ptr %43, align 1, !dbg !257
  %45 = getelementptr inbounds i8, ptr %27, i64 64, !dbg !257
  %46 = load <16 x i8>, ptr %45, align 1, !dbg !257
  %47 = getelementptr inbounds i8, ptr %27, i64 80, !dbg !257
  %48 = load <16 x i8>, ptr %47, align 1, !dbg !257
  %49 = getelementptr inbounds i8, ptr %27, i64 96, !dbg !257
  %50 = load <16 x i8>, ptr %49, align 1, !dbg !257
  %51 = getelementptr inbounds i8, ptr %27, i64 112, !dbg !257
  %52 = load <16 x i8>, ptr %51, align 1, !dbg !257
  %53 = getelementptr inbounds i8, ptr %27, i64 128, !dbg !257
  %54 = load <16 x i8>, ptr %53, align 1, !dbg !257
  %55 = getelementptr inbounds i8, ptr %27, i64 144, !dbg !257
  %56 = load <16 x i8>, ptr %55, align 1, !dbg !257
  %57 = getelementptr inbounds i8, ptr %27, i64 160, !dbg !257
  %58 = load <16 x i8>, ptr %57, align 1, !dbg !257
  %59 = getelementptr inbounds i8, ptr %27, i64 176, !dbg !257
  %60 = load <16 x i8>, ptr %59, align 1, !dbg !257
  %61 = getelementptr inbounds i8, ptr %27, i64 192, !dbg !257
  %62 = load <16 x i8>, ptr %61, align 1, !dbg !257
  %63 = getelementptr inbounds i8, ptr %27, i64 208, !dbg !257
  %64 = load <16 x i8>, ptr %63, align 1, !dbg !257
  %65 = getelementptr inbounds i8, ptr %27, i64 224, !dbg !257
  %66 = load <16 x i8>, ptr %65, align 1, !dbg !257
  %67 = getelementptr inbounds i8, ptr %27, i64 240, !dbg !257
  %68 = load <16 x i8>, ptr %67, align 1, !dbg !257
  br label %69, !dbg !257

69:                                               ; preds = %69, %for_body_k.outer
  %70 = phi i64 [ 0, %for_body_k.outer ], [ %388, %69 ], !dbg !257
  %71 = shl nuw nsw i64 %70, 4, !dbg !257
  %72 = getelementptr inbounds i8, ptr %30, i64 %71, !dbg !257
  %73 = load half, ptr %36, align 2, !dbg !257, !tbaa !264
  %74 = load half, ptr %37, align 2, !dbg !257, !tbaa !264
  %75 = insertelement <8 x half> poison, half %73, i64 0, !dbg !257
  %76 = insertelement <8 x half> poison, half %74, i64 0, !dbg !257
  %77 = load <16 x i8>, ptr %72, align 1, !dbg !257
  %78 = lshr <16 x i8> %77, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %79 = and <16 x i8> %77, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %80 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %38, <16 x i8> %79), !dbg !257
  %81 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %38, <16 x i8> %78), !dbg !257
  %82 = getelementptr inbounds i8, ptr %72, i64 16, !dbg !257
  %83 = load <16 x i8>, ptr %82, align 1, !dbg !257
  %84 = lshr <16 x i8> %83, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %85 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %40, <16 x i8> %84), !dbg !257
  %86 = and <16 x i8> %83, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %87 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %40, <16 x i8> %86), !dbg !257
  %88 = shufflevector <16 x i8> %80, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %89 = shufflevector <16 x i8> %87, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %90 = sext <8 x i8> %88 to <8 x i16>, !dbg !257
  %91 = sext <8 x i8> %89 to <8 x i16>, !dbg !257
  %92 = shufflevector <16 x i8> %80, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %93 = sext <8 x i8> %92 to <8 x i16>, !dbg !257
  %94 = shufflevector <16 x i8> %87, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %95 = sext <8 x i8> %94 to <8 x i16>, !dbg !257
  %96 = add nsw <8 x i16> %91, %90, !dbg !257
  %97 = add nsw <8 x i16> %95, %93, !dbg !257
  %98 = shufflevector <16 x i8> %81, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %99 = shufflevector <16 x i8> %85, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %100 = sext <8 x i8> %98 to <8 x i16>, !dbg !257
  %101 = sext <8 x i8> %99 to <8 x i16>, !dbg !257
  %102 = shufflevector <16 x i8> %81, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %103 = sext <8 x i8> %102 to <8 x i16>, !dbg !257
  %104 = shufflevector <16 x i8> %85, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %105 = sext <8 x i8> %104 to <8 x i16>, !dbg !257
  %106 = getelementptr inbounds i8, ptr %72, i64 32, !dbg !257
  %107 = load <16 x i8>, ptr %106, align 1, !dbg !257
  %108 = lshr <16 x i8> %107, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %109 = and <16 x i8> %107, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %110 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %42, <16 x i8> %109), !dbg !257
  %111 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %42, <16 x i8> %108), !dbg !257
  %112 = getelementptr inbounds i8, ptr %72, i64 48, !dbg !257
  %113 = load <16 x i8>, ptr %112, align 1, !dbg !257
  %114 = and <16 x i8> %113, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %115 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %44, <16 x i8> %114), !dbg !257
  %116 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %117 = shufflevector <16 x i8> %115, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %118 = sext <8 x i8> %116 to <8 x i16>, !dbg !257
  %119 = sext <8 x i8> %117 to <8 x i16>, !dbg !257
  %120 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %121 = sext <8 x i8> %120 to <8 x i16>, !dbg !257
  %122 = shufflevector <16 x i8> %115, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %123 = sext <8 x i8> %122 to <8 x i16>, !dbg !257
  %124 = add nsw <8 x i16> %96, %118, !dbg !257
  %125 = add nsw <8 x i16> %124, %119, !dbg !257
  %126 = add nsw <8 x i16> %97, %121, !dbg !257
  %127 = add nsw <8 x i16> %126, %123, !dbg !257
  %128 = lshr <16 x i8> %113, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %129 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %44, <16 x i8> %128), !dbg !257
  %130 = shufflevector <16 x i8> %129, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %131 = sext <8 x i8> %130 to <8 x i16>, !dbg !257
  %132 = shufflevector <16 x i8> %111, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %133 = sext <8 x i8> %132 to <8 x i16>, !dbg !257
  %134 = shufflevector <16 x i8> %129, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %135 = sext <8 x i8> %134 to <8 x i16>, !dbg !257
  %136 = shufflevector <16 x i8> %111, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %137 = sext <8 x i8> %136 to <8 x i16>, !dbg !257
  %138 = getelementptr inbounds i8, ptr %72, i64 64, !dbg !257
  %139 = load <16 x i8>, ptr %138, align 1, !dbg !257
  %140 = lshr <16 x i8> %139, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %141 = and <16 x i8> %139, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %142 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %46, <16 x i8> %141), !dbg !257
  %143 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %46, <16 x i8> %140), !dbg !257
  %144 = getelementptr inbounds i8, ptr %72, i64 80, !dbg !257
  %145 = load <16 x i8>, ptr %144, align 1, !dbg !257
  %146 = and <16 x i8> %145, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %147 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %48, <16 x i8> %146), !dbg !257
  %148 = shufflevector <16 x i8> %142, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %149 = shufflevector <16 x i8> %147, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %150 = sext <8 x i8> %148 to <8 x i16>, !dbg !257
  %151 = sext <8 x i8> %149 to <8 x i16>, !dbg !257
  %152 = shufflevector <16 x i8> %142, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %153 = sext <8 x i8> %152 to <8 x i16>, !dbg !257
  %154 = shufflevector <16 x i8> %147, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %155 = sext <8 x i8> %154 to <8 x i16>, !dbg !257
  %156 = add nsw <8 x i16> %125, %150, !dbg !257
  %157 = add nsw <8 x i16> %156, %151, !dbg !257
  %158 = add nsw <8 x i16> %127, %153, !dbg !257
  %159 = add nsw <8 x i16> %158, %155, !dbg !257
  %160 = lshr <16 x i8> %145, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %161 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %48, <16 x i8> %160), !dbg !257
  %162 = shufflevector <16 x i8> %161, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %163 = sext <8 x i8> %162 to <8 x i16>, !dbg !257
  %164 = shufflevector <16 x i8> %143, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %165 = sext <8 x i8> %164 to <8 x i16>, !dbg !257
  %166 = shufflevector <16 x i8> %161, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %167 = sext <8 x i8> %166 to <8 x i16>, !dbg !257
  %168 = shufflevector <16 x i8> %143, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %169 = sext <8 x i8> %168 to <8 x i16>, !dbg !257
  %170 = getelementptr inbounds i8, ptr %72, i64 96, !dbg !257
  %171 = load <16 x i8>, ptr %170, align 1, !dbg !257
  %172 = lshr <16 x i8> %171, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %173 = and <16 x i8> %171, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %174 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %50, <16 x i8> %173), !dbg !257
  %175 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %50, <16 x i8> %172), !dbg !257
  %176 = getelementptr inbounds i8, ptr %72, i64 112, !dbg !257
  %177 = load <16 x i8>, ptr %176, align 1, !dbg !257
  %178 = and <16 x i8> %177, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %179 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %52, <16 x i8> %178), !dbg !257
  %180 = shufflevector <16 x i8> %174, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %181 = shufflevector <16 x i8> %179, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %182 = sext <8 x i8> %180 to <8 x i16>, !dbg !257
  %183 = sext <8 x i8> %181 to <8 x i16>, !dbg !257
  %184 = shufflevector <16 x i8> %174, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %185 = sext <8 x i8> %184 to <8 x i16>, !dbg !257
  %186 = shufflevector <16 x i8> %179, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %187 = sext <8 x i8> %186 to <8 x i16>, !dbg !257
  %188 = add nsw <8 x i16> %157, %182, !dbg !257
  %189 = add <8 x i16> %188, %183, !dbg !257
  %190 = add nsw <8 x i16> %159, %185, !dbg !257
  %191 = add <8 x i16> %190, %187, !dbg !257
  %192 = lshr <16 x i8> %177, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %193 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %52, <16 x i8> %192), !dbg !257
  %194 = shufflevector <16 x i8> %193, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %195 = sext <8 x i8> %194 to <8 x i16>, !dbg !257
  %196 = shufflevector <16 x i8> %175, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %197 = sext <8 x i8> %196 to <8 x i16>, !dbg !257
  %198 = shufflevector <16 x i8> %193, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %199 = sext <8 x i8> %198 to <8 x i16>, !dbg !257
  %200 = shufflevector <16 x i8> %175, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %201 = sext <8 x i8> %200 to <8 x i16>, !dbg !257
  %202 = getelementptr inbounds i8, ptr %72, i64 128, !dbg !257
  %203 = load <16 x i8>, ptr %202, align 1, !dbg !257
  %204 = lshr <16 x i8> %203, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %205 = and <16 x i8> %203, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %206 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %54, <16 x i8> %205), !dbg !257
  %207 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %54, <16 x i8> %204), !dbg !257
  %208 = getelementptr inbounds i8, ptr %72, i64 144, !dbg !257
  %209 = load <16 x i8>, ptr %208, align 1, !dbg !257
  %210 = and <16 x i8> %209, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %211 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %56, <16 x i8> %210), !dbg !257
  %212 = shufflevector <16 x i8> %206, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %213 = shufflevector <16 x i8> %211, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %214 = sext <8 x i8> %212 to <8 x i16>, !dbg !257
  %215 = sext <8 x i8> %213 to <8 x i16>, !dbg !257
  %216 = shufflevector <16 x i8> %206, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %217 = sext <8 x i8> %216 to <8 x i16>, !dbg !257
  %218 = shufflevector <16 x i8> %211, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %219 = sext <8 x i8> %218 to <8 x i16>, !dbg !257
  %220 = add <8 x i16> %189, %214, !dbg !257
  %221 = add <8 x i16> %220, %215, !dbg !257
  %222 = add <8 x i16> %191, %217, !dbg !257
  %223 = add <8 x i16> %222, %219, !dbg !257
  %224 = lshr <16 x i8> %209, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %225 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %56, <16 x i8> %224), !dbg !257
  %226 = shufflevector <16 x i8> %225, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %227 = sext <8 x i8> %226 to <8 x i16>, !dbg !257
  %228 = shufflevector <16 x i8> %207, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %229 = sext <8 x i8> %228 to <8 x i16>, !dbg !257
  %230 = shufflevector <16 x i8> %225, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %231 = sext <8 x i8> %230 to <8 x i16>, !dbg !257
  %232 = shufflevector <16 x i8> %207, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %233 = sext <8 x i8> %232 to <8 x i16>, !dbg !257
  %234 = getelementptr inbounds i8, ptr %72, i64 160, !dbg !257
  %235 = load <16 x i8>, ptr %234, align 1, !dbg !257
  %236 = lshr <16 x i8> %235, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %237 = and <16 x i8> %235, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %238 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %58, <16 x i8> %237), !dbg !257
  %239 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %58, <16 x i8> %236), !dbg !257
  %240 = getelementptr inbounds i8, ptr %72, i64 176, !dbg !257
  %241 = load <16 x i8>, ptr %240, align 1, !dbg !257
  %242 = and <16 x i8> %241, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %243 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %60, <16 x i8> %242), !dbg !257
  %244 = shufflevector <16 x i8> %238, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %245 = shufflevector <16 x i8> %243, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %246 = sext <8 x i8> %244 to <8 x i16>, !dbg !257
  %247 = sext <8 x i8> %245 to <8 x i16>, !dbg !257
  %248 = shufflevector <16 x i8> %238, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %249 = sext <8 x i8> %248 to <8 x i16>, !dbg !257
  %250 = shufflevector <16 x i8> %243, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %251 = sext <8 x i8> %250 to <8 x i16>, !dbg !257
  %252 = add <8 x i16> %221, %246, !dbg !257
  %253 = add <8 x i16> %252, %247, !dbg !257
  %254 = add <8 x i16> %223, %249, !dbg !257
  %255 = add <8 x i16> %254, %251, !dbg !257
  %256 = lshr <16 x i8> %241, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %257 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %60, <16 x i8> %256), !dbg !257
  %258 = shufflevector <16 x i8> %257, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %259 = sext <8 x i8> %258 to <8 x i16>, !dbg !257
  %260 = shufflevector <16 x i8> %239, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %261 = sext <8 x i8> %260 to <8 x i16>, !dbg !257
  %262 = shufflevector <16 x i8> %257, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %263 = sext <8 x i8> %262 to <8 x i16>, !dbg !257
  %264 = shufflevector <16 x i8> %239, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %265 = sext <8 x i8> %264 to <8 x i16>, !dbg !257
  %266 = getelementptr inbounds i8, ptr %72, i64 192, !dbg !257
  %267 = load <16 x i8>, ptr %266, align 1, !dbg !257
  %268 = lshr <16 x i8> %267, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %269 = and <16 x i8> %267, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %270 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %62, <16 x i8> %269), !dbg !257
  %271 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %62, <16 x i8> %268), !dbg !257
  %272 = getelementptr inbounds i8, ptr %72, i64 208, !dbg !257
  %273 = load <16 x i8>, ptr %272, align 1, !dbg !257
  %274 = and <16 x i8> %273, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %275 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %64, <16 x i8> %274), !dbg !257
  %276 = shufflevector <16 x i8> %270, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %277 = shufflevector <16 x i8> %275, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %278 = sext <8 x i8> %276 to <8 x i16>, !dbg !257
  %279 = sext <8 x i8> %277 to <8 x i16>, !dbg !257
  %280 = shufflevector <16 x i8> %270, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %281 = sext <8 x i8> %280 to <8 x i16>, !dbg !257
  %282 = shufflevector <16 x i8> %275, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %283 = sext <8 x i8> %282 to <8 x i16>, !dbg !257
  %284 = add <8 x i16> %253, %278, !dbg !257
  %285 = add <8 x i16> %284, %279, !dbg !257
  %286 = add <8 x i16> %255, %281, !dbg !257
  %287 = add <8 x i16> %286, %283, !dbg !257
  %288 = lshr <16 x i8> %273, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %289 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %64, <16 x i8> %288), !dbg !257
  %290 = shufflevector <16 x i8> %289, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %291 = sext <8 x i8> %290 to <8 x i16>, !dbg !257
  %292 = shufflevector <16 x i8> %271, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %293 = sext <8 x i8> %292 to <8 x i16>, !dbg !257
  %294 = shufflevector <16 x i8> %289, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %295 = sext <8 x i8> %294 to <8 x i16>, !dbg !257
  %296 = shufflevector <16 x i8> %271, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %297 = sext <8 x i8> %296 to <8 x i16>, !dbg !257
  %298 = getelementptr inbounds i8, ptr %72, i64 224, !dbg !257
  %299 = load <16 x i8>, ptr %298, align 1, !dbg !257
  %300 = lshr <16 x i8> %299, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %301 = and <16 x i8> %299, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %302 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %66, <16 x i8> %301), !dbg !257
  %303 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %66, <16 x i8> %300), !dbg !257
  %304 = getelementptr inbounds i8, ptr %72, i64 240, !dbg !257
  %305 = load <16 x i8>, ptr %304, align 1, !dbg !257
  %306 = and <16 x i8> %305, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !257
  %307 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %68, <16 x i8> %306), !dbg !257
  %308 = shufflevector <16 x i8> %302, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %309 = shufflevector <16 x i8> %307, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %310 = sext <8 x i8> %308 to <8 x i16>, !dbg !257
  %311 = sext <8 x i8> %309 to <8 x i16>, !dbg !257
  %312 = shufflevector <16 x i8> %302, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %313 = sext <8 x i8> %312 to <8 x i16>, !dbg !257
  %314 = shufflevector <16 x i8> %307, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %315 = sext <8 x i8> %314 to <8 x i16>, !dbg !257
  %316 = add <8 x i16> %285, %310, !dbg !257
  %317 = add <8 x i16> %316, %311, !dbg !257
  %318 = add <8 x i16> %287, %313, !dbg !257
  %319 = add <8 x i16> %318, %315, !dbg !257
  %320 = lshr <16 x i8> %305, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !257
  %321 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %68, <16 x i8> %320), !dbg !257
  %322 = shufflevector <16 x i8> %321, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %323 = sext <8 x i8> %322 to <8 x i16>, !dbg !257
  %324 = shufflevector <16 x i8> %303, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !257
  %325 = sext <8 x i8> %324 to <8 x i16>, !dbg !257
  %326 = add nsw <8 x i16> %105, %103, !dbg !257
  %327 = add nsw <8 x i16> %326, %133, !dbg !257
  %328 = add nsw <8 x i16> %327, %131, !dbg !257
  %329 = add nsw <8 x i16> %328, %165, !dbg !257
  %330 = add nsw <8 x i16> %329, %163, !dbg !257
  %331 = add nsw <8 x i16> %330, %197, !dbg !257
  %332 = add <8 x i16> %331, %195, !dbg !257
  %333 = add <8 x i16> %332, %229, !dbg !257
  %334 = add <8 x i16> %333, %227, !dbg !257
  %335 = add <8 x i16> %334, %261, !dbg !257
  %336 = add <8 x i16> %335, %259, !dbg !257
  %337 = add <8 x i16> %336, %293, !dbg !257
  %338 = add <8 x i16> %337, %291, !dbg !257
  %339 = add <8 x i16> %338, %325, !dbg !257
  %340 = add <8 x i16> %339, %323, !dbg !257
  %341 = shufflevector <16 x i8> %321, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %342 = sext <8 x i8> %341 to <8 x i16>, !dbg !257
  %343 = shufflevector <16 x i8> %303, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !257
  %344 = sext <8 x i8> %343 to <8 x i16>, !dbg !257
  %345 = add nsw <8 x i16> %101, %100, !dbg !257
  %346 = add nsw <8 x i16> %345, %137, !dbg !257
  %347 = add nsw <8 x i16> %346, %135, !dbg !257
  %348 = add nsw <8 x i16> %347, %169, !dbg !257
  %349 = add nsw <8 x i16> %348, %167, !dbg !257
  %350 = add nsw <8 x i16> %349, %201, !dbg !257
  %351 = add <8 x i16> %350, %199, !dbg !257
  %352 = add <8 x i16> %351, %233, !dbg !257
  %353 = add <8 x i16> %352, %231, !dbg !257
  %354 = add <8 x i16> %353, %265, !dbg !257
  %355 = add <8 x i16> %354, %263, !dbg !257
  %356 = add <8 x i16> %355, %297, !dbg !257
  %357 = add <8 x i16> %356, %295, !dbg !257
  %358 = add <8 x i16> %357, %344, !dbg !257
  %359 = add <8 x i16> %358, %342, !dbg !257
  %360 = shufflevector <8 x half> %75, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !257
  %361 = shufflevector <8 x half> %76, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !257
  %362 = sitofp <8 x i16> %317 to <8 x half>, !dbg !257
  %363 = sitofp <8 x i16> %319 to <8 x half>, !dbg !257
  %364 = sitofp <8 x i16> %359 to <8 x half>, !dbg !257
  %365 = sitofp <8 x i16> %340 to <8 x half>, !dbg !257
  %366 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %362, <8 x half> %360, <8 x half> %361), !dbg !257
  %367 = fmul <8 x half> %360, %363, !dbg !257
  %368 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %364, <8 x half> %360, <8 x half> %361), !dbg !257
  %369 = fmul <8 x half> %360, %365, !dbg !257
  %370 = getelementptr inbounds half, ptr %35, i64 %70, !dbg !257
  %371 = load <8 x half>, ptr %370, align 2, !dbg !257
  %372 = or i64 %70, 8, !dbg !257
  %373 = getelementptr inbounds half, ptr %35, i64 %372, !dbg !257
  %374 = load <8 x half>, ptr %373, align 2, !dbg !257
  %375 = shl nuw nsw i64 %70, 1, !dbg !257
  %376 = getelementptr inbounds half, ptr %CBits2, i64 %375, !dbg !257
  %377 = load <8 x half>, ptr %376, align 16, !dbg !257
  %378 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %366, <8 x half> %371, <8 x half> %377), !dbg !257
  store <8 x half> %378, ptr %376, align 16, !dbg !257
  %379 = getelementptr inbounds half, ptr %376, i64 8, !dbg !257
  %380 = load <8 x half>, ptr %379, align 16, !dbg !257
  %381 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %367, <8 x half> %371, <8 x half> %380), !dbg !257
  store <8 x half> %381, ptr %379, align 16, !dbg !257
  %382 = getelementptr inbounds half, ptr %376, i64 16, !dbg !257
  %383 = load <8 x half>, ptr %382, align 16, !dbg !257
  %384 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %368, <8 x half> %374, <8 x half> %383), !dbg !257
  store <8 x half> %384, ptr %382, align 16, !dbg !257
  %385 = getelementptr inbounds half, ptr %376, i64 24, !dbg !257
  %386 = load <8 x half>, ptr %385, align 16, !dbg !257
  %387 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %369, <8 x half> %374, <8 x half> %386), !dbg !257
  store <8 x half> %387, ptr %385, align 16, !dbg !257
  %388 = add nuw nsw i64 %70, 16, !dbg !257
  %389 = icmp ult i64 %70, 112, !dbg !257
  br i1 %389, label %69, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit, !dbg !257, !llvm.loop !268

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit: ; preds = %69
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !257
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !263, metadata !DIExpression()), !dbg !257
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !257
  br i1 %exitcond.not, label %for_body_m.c.outer, label %for_body_k.outer, !dbg !257, !prof !29

for_begin_m.inner.outer.preheader:                ; preds = %for_body_m.c.outer
  call void @llvm.dbg.declare(metadata i32 0, metadata !270, metadata !DIExpression()), !dbg !257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(256) %scevgep, ptr noundef nonnull align 64 dereferenceable(256) %C.global1, i64 256, i1 false), !dbg !257
  call void @llvm.dbg.declare(metadata i64 poison, metadata !270, metadata !DIExpression()), !dbg !257
  %indvars.iv.next16 = add nsw i64 %indvars.iv15, 1, !dbg !257
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next16, metadata !258, metadata !DIExpression()), !dbg !257
  %indvar.next = add nuw i32 %indvar, 1, !dbg !257
  %exitcond17.not = icmp eq i32 %indvar.next, %17, !dbg !257
  br i1 %exitcond17.not, label %for_end_m.outer, label %for_body_m.outer, !dbg !257, !prof !29

for_body_m.c.outer:                               ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit, %for_body_m.c.outer
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for_body_m.c.outer ], [ 0, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv8, metadata !271, metadata !DIExpression()), !dbg !257
  %390 = shl nuw nsw i64 %indvars.iv8, 6, !dbg !257
  %391 = trunc i64 %390 to i32, !dbg !257
  %392 = insertelement <32 x i32> undef, i32 %391, i64 0, !dbg !257
  %393 = shufflevector <32 x i32> %392, <32 x i32> undef, <32 x i32> zeroinitializer, !dbg !257
  %cse_var_1 = or <32 x i32> %393, <i32 poison, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>, !dbg !257
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_1, metadata !272, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_1, metadata !272, metadata !DIExpression()), !dbg !257
  %394 = getelementptr inbounds half, ptr %CBits2, i64 %390, !dbg !257
  %395 = load half, ptr %394, align 16, !dbg !257, !tbaa !274
  %396 = extractelement <32 x i32> %cse_var_1, i64 1, !dbg !257
  %397 = zext i32 %396 to i64, !dbg !257
  %398 = getelementptr inbounds half, ptr %CBits2, i64 %397, !dbg !257
  %399 = load half, ptr %398, align 2, !dbg !257, !tbaa !274
  %400 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 2, i32 3>, !dbg !257
  %401 = zext <2 x i32> %400 to <2 x i64>, !dbg !257
  %402 = extractelement <2 x i64> %401, i64 0, !dbg !257
  %403 = getelementptr inbounds half, ptr %CBits2, i64 %402, !dbg !257
  %404 = load half, ptr %403, align 2, !dbg !257, !tbaa !274
  %405 = extractelement <2 x i64> %401, i64 1, !dbg !257
  %406 = getelementptr inbounds half, ptr %CBits2, i64 %405, !dbg !257
  %407 = load half, ptr %406, align 2, !dbg !257, !tbaa !274
  %408 = extractelement <32 x i32> %cse_var_1, i64 4, !dbg !257
  %409 = zext i32 %408 to i64, !dbg !257
  %410 = getelementptr inbounds half, ptr %CBits2, i64 %409, !dbg !257
  %411 = load half, ptr %410, align 2, !dbg !257, !tbaa !274
  %412 = extractelement <32 x i32> %cse_var_1, i64 5, !dbg !257
  %413 = zext i32 %412 to i64, !dbg !257
  %414 = getelementptr inbounds half, ptr %CBits2, i64 %413, !dbg !257
  %415 = load half, ptr %414, align 2, !dbg !257, !tbaa !274
  %416 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 6, i32 7>, !dbg !257
  %417 = zext <2 x i32> %416 to <2 x i64>, !dbg !257
  %418 = extractelement <2 x i64> %417, i64 0, !dbg !257
  %419 = getelementptr inbounds half, ptr %CBits2, i64 %418, !dbg !257
  %420 = load half, ptr %419, align 2, !dbg !257, !tbaa !274
  %421 = extractelement <2 x i64> %417, i64 1, !dbg !257
  %422 = getelementptr inbounds half, ptr %CBits2, i64 %421, !dbg !257
  %423 = load half, ptr %422, align 2, !dbg !257, !tbaa !274
  %424 = extractelement <32 x i32> %cse_var_1, i64 8, !dbg !257
  %425 = zext i32 %424 to i64, !dbg !257
  %426 = getelementptr inbounds half, ptr %CBits2, i64 %425, !dbg !257
  %427 = load half, ptr %426, align 2, !dbg !257, !tbaa !274
  %428 = extractelement <32 x i32> %cse_var_1, i64 9, !dbg !257
  %429 = zext i32 %428 to i64, !dbg !257
  %430 = getelementptr inbounds half, ptr %CBits2, i64 %429, !dbg !257
  %431 = load half, ptr %430, align 2, !dbg !257, !tbaa !274
  %432 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 10, i32 11>, !dbg !257
  %433 = zext <2 x i32> %432 to <2 x i64>, !dbg !257
  %434 = extractelement <2 x i64> %433, i64 0, !dbg !257
  %435 = getelementptr inbounds half, ptr %CBits2, i64 %434, !dbg !257
  %436 = load half, ptr %435, align 2, !dbg !257, !tbaa !274
  %437 = extractelement <2 x i64> %433, i64 1, !dbg !257
  %438 = getelementptr inbounds half, ptr %CBits2, i64 %437, !dbg !257
  %439 = load half, ptr %438, align 2, !dbg !257, !tbaa !274
  %440 = extractelement <32 x i32> %cse_var_1, i64 12, !dbg !257
  %441 = zext i32 %440 to i64, !dbg !257
  %442 = getelementptr inbounds half, ptr %CBits2, i64 %441, !dbg !257
  %443 = load half, ptr %442, align 2, !dbg !257, !tbaa !274
  %444 = extractelement <32 x i32> %cse_var_1, i64 13, !dbg !257
  %445 = zext i32 %444 to i64, !dbg !257
  %446 = getelementptr inbounds half, ptr %CBits2, i64 %445, !dbg !257
  %447 = load half, ptr %446, align 2, !dbg !257, !tbaa !274
  %448 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 14, i32 15>, !dbg !257
  %449 = zext <2 x i32> %448 to <2 x i64>, !dbg !257
  %450 = extractelement <2 x i64> %449, i64 0, !dbg !257
  %451 = getelementptr inbounds half, ptr %CBits2, i64 %450, !dbg !257
  %452 = load half, ptr %451, align 2, !dbg !257, !tbaa !274
  %453 = extractelement <2 x i64> %449, i64 1, !dbg !257
  %454 = getelementptr inbounds half, ptr %CBits2, i64 %453, !dbg !257
  %455 = load half, ptr %454, align 2, !dbg !257, !tbaa !274
  %456 = extractelement <32 x i32> %cse_var_1, i64 16, !dbg !257
  %457 = zext i32 %456 to i64, !dbg !257
  %458 = getelementptr inbounds half, ptr %CBits2, i64 %457, !dbg !257
  %459 = load half, ptr %458, align 2, !dbg !257, !tbaa !274
  %460 = extractelement <32 x i32> %cse_var_1, i64 17, !dbg !257
  %461 = zext i32 %460 to i64, !dbg !257
  %462 = getelementptr inbounds half, ptr %CBits2, i64 %461, !dbg !257
  %463 = load half, ptr %462, align 2, !dbg !257, !tbaa !274
  %464 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 18, i32 19>, !dbg !257
  %465 = zext <2 x i32> %464 to <2 x i64>, !dbg !257
  %466 = extractelement <2 x i64> %465, i64 0, !dbg !257
  %467 = getelementptr inbounds half, ptr %CBits2, i64 %466, !dbg !257
  %468 = load half, ptr %467, align 2, !dbg !257, !tbaa !274
  %469 = extractelement <2 x i64> %465, i64 1, !dbg !257
  %470 = getelementptr inbounds half, ptr %CBits2, i64 %469, !dbg !257
  %471 = load half, ptr %470, align 2, !dbg !257, !tbaa !274
  %472 = extractelement <32 x i32> %cse_var_1, i64 20, !dbg !257
  %473 = zext i32 %472 to i64, !dbg !257
  %474 = getelementptr inbounds half, ptr %CBits2, i64 %473, !dbg !257
  %475 = load half, ptr %474, align 2, !dbg !257, !tbaa !274
  %476 = extractelement <32 x i32> %cse_var_1, i64 21, !dbg !257
  %477 = zext i32 %476 to i64, !dbg !257
  %478 = getelementptr inbounds half, ptr %CBits2, i64 %477, !dbg !257
  %479 = load half, ptr %478, align 2, !dbg !257, !tbaa !274
  %480 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 22, i32 23>, !dbg !257
  %481 = zext <2 x i32> %480 to <2 x i64>, !dbg !257
  %482 = extractelement <2 x i64> %481, i64 0, !dbg !257
  %483 = getelementptr inbounds half, ptr %CBits2, i64 %482, !dbg !257
  %484 = load half, ptr %483, align 2, !dbg !257, !tbaa !274
  %485 = extractelement <2 x i64> %481, i64 1, !dbg !257
  %486 = getelementptr inbounds half, ptr %CBits2, i64 %485, !dbg !257
  %487 = load half, ptr %486, align 2, !dbg !257, !tbaa !274
  %488 = extractelement <32 x i32> %cse_var_1, i64 24, !dbg !257
  %489 = zext i32 %488 to i64, !dbg !257
  %490 = getelementptr inbounds half, ptr %CBits2, i64 %489, !dbg !257
  %491 = load half, ptr %490, align 2, !dbg !257, !tbaa !274
  %492 = extractelement <32 x i32> %cse_var_1, i64 25, !dbg !257
  %493 = zext i32 %492 to i64, !dbg !257
  %494 = getelementptr inbounds half, ptr %CBits2, i64 %493, !dbg !257
  %495 = load half, ptr %494, align 2, !dbg !257, !tbaa !274
  %496 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 26, i32 27>, !dbg !257
  %497 = zext <2 x i32> %496 to <2 x i64>, !dbg !257
  %498 = extractelement <2 x i64> %497, i64 0, !dbg !257
  %499 = getelementptr inbounds half, ptr %CBits2, i64 %498, !dbg !257
  %500 = load half, ptr %499, align 2, !dbg !257, !tbaa !274
  %501 = extractelement <2 x i64> %497, i64 1, !dbg !257
  %502 = getelementptr inbounds half, ptr %CBits2, i64 %501, !dbg !257
  %503 = load half, ptr %502, align 2, !dbg !257, !tbaa !274
  %504 = extractelement <32 x i32> %cse_var_1, i64 28, !dbg !257
  %505 = zext i32 %504 to i64, !dbg !257
  %506 = getelementptr inbounds half, ptr %CBits2, i64 %505, !dbg !257
  %507 = load half, ptr %506, align 2, !dbg !257, !tbaa !274
  %508 = extractelement <32 x i32> %cse_var_1, i64 29, !dbg !257
  %509 = zext i32 %508 to i64, !dbg !257
  %510 = getelementptr inbounds half, ptr %CBits2, i64 %509, !dbg !257
  %511 = load half, ptr %510, align 2, !dbg !257, !tbaa !274
  %512 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 30, i32 31>, !dbg !257
  %513 = zext <2 x i32> %512 to <2 x i64>, !dbg !257
  %514 = extractelement <2 x i64> %513, i64 0, !dbg !257
  %515 = getelementptr inbounds half, ptr %CBits2, i64 %514, !dbg !257
  %516 = load half, ptr %515, align 2, !dbg !257, !tbaa !274
  %517 = extractelement <2 x i64> %513, i64 1, !dbg !257
  %518 = getelementptr inbounds half, ptr %CBits2, i64 %517, !dbg !257
  %519 = load half, ptr %518, align 2, !dbg !257, !tbaa !274
  %520 = insertelement <32 x half> undef, half %395, i64 0, !dbg !257
  %521 = insertelement <32 x half> %520, half %399, i64 1, !dbg !257
  %522 = insertelement <32 x half> %521, half %404, i64 2, !dbg !257
  %523 = insertelement <32 x half> %522, half %407, i64 3, !dbg !257
  %524 = insertelement <32 x half> %523, half %411, i64 4, !dbg !257
  %525 = insertelement <32 x half> %524, half %415, i64 5, !dbg !257
  %526 = insertelement <32 x half> %525, half %420, i64 6, !dbg !257
  %527 = insertelement <32 x half> %526, half %423, i64 7, !dbg !257
  %528 = insertelement <32 x half> %527, half %427, i64 8, !dbg !257
  %529 = insertelement <32 x half> %528, half %431, i64 9, !dbg !257
  %530 = insertelement <32 x half> %529, half %436, i64 10, !dbg !257
  %531 = insertelement <32 x half> %530, half %439, i64 11, !dbg !257
  %532 = insertelement <32 x half> %531, half %443, i64 12, !dbg !257
  %533 = insertelement <32 x half> %532, half %447, i64 13, !dbg !257
  %534 = insertelement <32 x half> %533, half %452, i64 14, !dbg !257
  %535 = insertelement <32 x half> %534, half %455, i64 15, !dbg !257
  %536 = insertelement <32 x half> %535, half %459, i64 16, !dbg !257
  %537 = insertelement <32 x half> %536, half %463, i64 17, !dbg !257
  %538 = insertelement <32 x half> %537, half %468, i64 18, !dbg !257
  %539 = insertelement <32 x half> %538, half %471, i64 19, !dbg !257
  %540 = insertelement <32 x half> %539, half %475, i64 20, !dbg !257
  %541 = insertelement <32 x half> %540, half %479, i64 21, !dbg !257
  %542 = insertelement <32 x half> %541, half %484, i64 22, !dbg !257
  %543 = insertelement <32 x half> %542, half %487, i64 23, !dbg !257
  %544 = insertelement <32 x half> %543, half %491, i64 24, !dbg !257
  %545 = insertelement <32 x half> %544, half %495, i64 25, !dbg !257
  %546 = insertelement <32 x half> %545, half %500, i64 26, !dbg !257
  %547 = insertelement <32 x half> %546, half %503, i64 27, !dbg !257
  %548 = insertelement <32 x half> %547, half %507, i64 28, !dbg !257
  %549 = insertelement <32 x half> %548, half %511, i64 29, !dbg !257
  %550 = insertelement <32 x half> %549, half %516, i64 30, !dbg !257
  %551 = insertelement <32 x half> %550, half %519, i64 31, !dbg !257
  %552 = fpext <32 x half> %551 to <32 x float>, !dbg !257
  %553 = or <32 x i32> %393, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>, !dbg !257
  %554 = extractelement <32 x i32> %553, i64 0, !dbg !257
  %555 = zext i32 %554 to i64, !dbg !257
  %556 = getelementptr inbounds half, ptr %CBits2, i64 %555, !dbg !257
  %557 = load half, ptr %556, align 2, !dbg !257, !tbaa !274
  %558 = extractelement <32 x i32> %553, i64 1, !dbg !257
  %559 = zext i32 %558 to i64, !dbg !257
  %560 = getelementptr inbounds half, ptr %CBits2, i64 %559, !dbg !257
  %561 = load half, ptr %560, align 2, !dbg !257, !tbaa !274
  %562 = shufflevector <32 x i32> %553, <32 x i32> poison, <2 x i32> <i32 2, i32 3>, !dbg !257
  %563 = zext <2 x i32> %562 to <2 x i64>, !dbg !257
  %564 = extractelement <2 x i64> %563, i64 0, !dbg !257
  %565 = getelementptr inbounds half, ptr %CBits2, i64 %564, !dbg !257
  %566 = load half, ptr %565, align 2, !dbg !257, !tbaa !274
  %567 = extractelement <2 x i64> %563, i64 1, !dbg !257
  %568 = getelementptr inbounds half, ptr %CBits2, i64 %567, !dbg !257
  %569 = load half, ptr %568, align 2, !dbg !257, !tbaa !274
  %570 = extractelement <32 x i32> %553, i64 4, !dbg !257
  %571 = zext i32 %570 to i64, !dbg !257
  %572 = getelementptr inbounds half, ptr %CBits2, i64 %571, !dbg !257
  %573 = load half, ptr %572, align 2, !dbg !257, !tbaa !274
  %574 = extractelement <32 x i32> %553, i64 5, !dbg !257
  %575 = zext i32 %574 to i64, !dbg !257
  %576 = getelementptr inbounds half, ptr %CBits2, i64 %575, !dbg !257
  %577 = load half, ptr %576, align 2, !dbg !257, !tbaa !274
  %578 = shufflevector <32 x i32> %553, <32 x i32> poison, <2 x i32> <i32 6, i32 7>, !dbg !257
  %579 = zext <2 x i32> %578 to <2 x i64>, !dbg !257
  %580 = extractelement <2 x i64> %579, i64 0, !dbg !257
  %581 = getelementptr inbounds half, ptr %CBits2, i64 %580, !dbg !257
  %582 = load half, ptr %581, align 2, !dbg !257, !tbaa !274
  %583 = extractelement <2 x i64> %579, i64 1, !dbg !257
  %584 = getelementptr inbounds half, ptr %CBits2, i64 %583, !dbg !257
  %585 = load half, ptr %584, align 2, !dbg !257, !tbaa !274
  %586 = extractelement <32 x i32> %553, i64 8, !dbg !257
  %587 = zext i32 %586 to i64, !dbg !257
  %588 = getelementptr inbounds half, ptr %CBits2, i64 %587, !dbg !257
  %589 = load half, ptr %588, align 2, !dbg !257, !tbaa !274
  %590 = extractelement <32 x i32> %553, i64 9, !dbg !257
  %591 = zext i32 %590 to i64, !dbg !257
  %592 = getelementptr inbounds half, ptr %CBits2, i64 %591, !dbg !257
  %593 = load half, ptr %592, align 2, !dbg !257, !tbaa !274
  %594 = shufflevector <32 x i32> %553, <32 x i32> poison, <2 x i32> <i32 10, i32 11>, !dbg !257
  %595 = zext <2 x i32> %594 to <2 x i64>, !dbg !257
  %596 = extractelement <2 x i64> %595, i64 0, !dbg !257
  %597 = getelementptr inbounds half, ptr %CBits2, i64 %596, !dbg !257
  %598 = load half, ptr %597, align 2, !dbg !257, !tbaa !274
  %599 = extractelement <2 x i64> %595, i64 1, !dbg !257
  %600 = getelementptr inbounds half, ptr %CBits2, i64 %599, !dbg !257
  %601 = load half, ptr %600, align 2, !dbg !257, !tbaa !274
  %602 = extractelement <32 x i32> %553, i64 12, !dbg !257
  %603 = zext i32 %602 to i64, !dbg !257
  %604 = getelementptr inbounds half, ptr %CBits2, i64 %603, !dbg !257
  %605 = load half, ptr %604, align 2, !dbg !257, !tbaa !274
  %606 = extractelement <32 x i32> %553, i64 13, !dbg !257
  %607 = zext i32 %606 to i64, !dbg !257
  %608 = getelementptr inbounds half, ptr %CBits2, i64 %607, !dbg !257
  %609 = load half, ptr %608, align 2, !dbg !257, !tbaa !274
  %610 = shufflevector <32 x i32> %553, <32 x i32> poison, <2 x i32> <i32 14, i32 15>, !dbg !257
  %611 = zext <2 x i32> %610 to <2 x i64>, !dbg !257
  %612 = extractelement <2 x i64> %611, i64 0, !dbg !257
  %613 = getelementptr inbounds half, ptr %CBits2, i64 %612, !dbg !257
  %614 = load half, ptr %613, align 2, !dbg !257, !tbaa !274
  %615 = extractelement <2 x i64> %611, i64 1, !dbg !257
  %616 = getelementptr inbounds half, ptr %CBits2, i64 %615, !dbg !257
  %617 = load half, ptr %616, align 2, !dbg !257, !tbaa !274
  %618 = extractelement <32 x i32> %553, i64 16, !dbg !257
  %619 = zext i32 %618 to i64, !dbg !257
  %620 = getelementptr inbounds half, ptr %CBits2, i64 %619, !dbg !257
  %621 = load half, ptr %620, align 2, !dbg !257, !tbaa !274
  %622 = extractelement <32 x i32> %553, i64 17, !dbg !257
  %623 = zext i32 %622 to i64, !dbg !257
  %624 = getelementptr inbounds half, ptr %CBits2, i64 %623, !dbg !257
  %625 = load half, ptr %624, align 2, !dbg !257, !tbaa !274
  %626 = shufflevector <32 x i32> %553, <32 x i32> poison, <2 x i32> <i32 18, i32 19>, !dbg !257
  %627 = zext <2 x i32> %626 to <2 x i64>, !dbg !257
  %628 = extractelement <2 x i64> %627, i64 0, !dbg !257
  %629 = getelementptr inbounds half, ptr %CBits2, i64 %628, !dbg !257
  %630 = load half, ptr %629, align 2, !dbg !257, !tbaa !274
  %631 = extractelement <2 x i64> %627, i64 1, !dbg !257
  %632 = getelementptr inbounds half, ptr %CBits2, i64 %631, !dbg !257
  %633 = load half, ptr %632, align 2, !dbg !257, !tbaa !274
  %634 = extractelement <32 x i32> %553, i64 20, !dbg !257
  %635 = zext i32 %634 to i64, !dbg !257
  %636 = getelementptr inbounds half, ptr %CBits2, i64 %635, !dbg !257
  %637 = load half, ptr %636, align 2, !dbg !257, !tbaa !274
  %638 = extractelement <32 x i32> %553, i64 21, !dbg !257
  %639 = zext i32 %638 to i64, !dbg !257
  %640 = getelementptr inbounds half, ptr %CBits2, i64 %639, !dbg !257
  %641 = load half, ptr %640, align 2, !dbg !257, !tbaa !274
  %642 = shufflevector <32 x i32> %553, <32 x i32> poison, <2 x i32> <i32 22, i32 23>, !dbg !257
  %643 = zext <2 x i32> %642 to <2 x i64>, !dbg !257
  %644 = extractelement <2 x i64> %643, i64 0, !dbg !257
  %645 = getelementptr inbounds half, ptr %CBits2, i64 %644, !dbg !257
  %646 = load half, ptr %645, align 2, !dbg !257, !tbaa !274
  %647 = extractelement <2 x i64> %643, i64 1, !dbg !257
  %648 = getelementptr inbounds half, ptr %CBits2, i64 %647, !dbg !257
  %649 = load half, ptr %648, align 2, !dbg !257, !tbaa !274
  %650 = extractelement <32 x i32> %553, i64 24, !dbg !257
  %651 = zext i32 %650 to i64, !dbg !257
  %652 = getelementptr inbounds half, ptr %CBits2, i64 %651, !dbg !257
  %653 = load half, ptr %652, align 2, !dbg !257, !tbaa !274
  %654 = extractelement <32 x i32> %553, i64 25, !dbg !257
  %655 = zext i32 %654 to i64, !dbg !257
  %656 = getelementptr inbounds half, ptr %CBits2, i64 %655, !dbg !257
  %657 = load half, ptr %656, align 2, !dbg !257, !tbaa !274
  %658 = shufflevector <32 x i32> %553, <32 x i32> poison, <2 x i32> <i32 26, i32 27>, !dbg !257
  %659 = zext <2 x i32> %658 to <2 x i64>, !dbg !257
  %660 = extractelement <2 x i64> %659, i64 0, !dbg !257
  %661 = getelementptr inbounds half, ptr %CBits2, i64 %660, !dbg !257
  %662 = load half, ptr %661, align 2, !dbg !257, !tbaa !274
  %663 = extractelement <2 x i64> %659, i64 1, !dbg !257
  %664 = getelementptr inbounds half, ptr %CBits2, i64 %663, !dbg !257
  %665 = load half, ptr %664, align 2, !dbg !257, !tbaa !274
  %666 = extractelement <32 x i32> %553, i64 28, !dbg !257
  %667 = zext i32 %666 to i64, !dbg !257
  %668 = getelementptr inbounds half, ptr %CBits2, i64 %667, !dbg !257
  %669 = load half, ptr %668, align 2, !dbg !257, !tbaa !274
  %670 = extractelement <32 x i32> %553, i64 29, !dbg !257
  %671 = zext i32 %670 to i64, !dbg !257
  %672 = getelementptr inbounds half, ptr %CBits2, i64 %671, !dbg !257
  %673 = load half, ptr %672, align 2, !dbg !257, !tbaa !274
  %674 = shufflevector <32 x i32> %553, <32 x i32> poison, <2 x i32> <i32 30, i32 31>, !dbg !257
  %675 = zext <2 x i32> %674 to <2 x i64>, !dbg !257
  %676 = extractelement <2 x i64> %675, i64 0, !dbg !257
  %677 = getelementptr inbounds half, ptr %CBits2, i64 %676, !dbg !257
  %678 = load half, ptr %677, align 2, !dbg !257, !tbaa !274
  %679 = extractelement <2 x i64> %675, i64 1, !dbg !257
  %680 = getelementptr inbounds half, ptr %CBits2, i64 %679, !dbg !257
  %681 = load half, ptr %680, align 2, !dbg !257, !tbaa !274
  %682 = insertelement <32 x half> undef, half %557, i64 0, !dbg !257
  %683 = insertelement <32 x half> %682, half %561, i64 1, !dbg !257
  %684 = insertelement <32 x half> %683, half %566, i64 2, !dbg !257
  %685 = insertelement <32 x half> %684, half %569, i64 3, !dbg !257
  %686 = insertelement <32 x half> %685, half %573, i64 4, !dbg !257
  %687 = insertelement <32 x half> %686, half %577, i64 5, !dbg !257
  %688 = insertelement <32 x half> %687, half %582, i64 6, !dbg !257
  %689 = insertelement <32 x half> %688, half %585, i64 7, !dbg !257
  %690 = insertelement <32 x half> %689, half %589, i64 8, !dbg !257
  %691 = insertelement <32 x half> %690, half %593, i64 9, !dbg !257
  %692 = insertelement <32 x half> %691, half %598, i64 10, !dbg !257
  %693 = insertelement <32 x half> %692, half %601, i64 11, !dbg !257
  %694 = insertelement <32 x half> %693, half %605, i64 12, !dbg !257
  %695 = insertelement <32 x half> %694, half %609, i64 13, !dbg !257
  %696 = insertelement <32 x half> %695, half %614, i64 14, !dbg !257
  %697 = insertelement <32 x half> %696, half %617, i64 15, !dbg !257
  %698 = insertelement <32 x half> %697, half %621, i64 16, !dbg !257
  %699 = insertelement <32 x half> %698, half %625, i64 17, !dbg !257
  %700 = insertelement <32 x half> %699, half %630, i64 18, !dbg !257
  %701 = insertelement <32 x half> %700, half %633, i64 19, !dbg !257
  %702 = insertelement <32 x half> %701, half %637, i64 20, !dbg !257
  %703 = insertelement <32 x half> %702, half %641, i64 21, !dbg !257
  %704 = insertelement <32 x half> %703, half %646, i64 22, !dbg !257
  %705 = insertelement <32 x half> %704, half %649, i64 23, !dbg !257
  %706 = insertelement <32 x half> %705, half %653, i64 24, !dbg !257
  %707 = insertelement <32 x half> %706, half %657, i64 25, !dbg !257
  %708 = insertelement <32 x half> %707, half %662, i64 26, !dbg !257
  %709 = insertelement <32 x half> %708, half %665, i64 27, !dbg !257
  %710 = insertelement <32 x half> %709, half %669, i64 28, !dbg !257
  %711 = insertelement <32 x half> %710, half %673, i64 29, !dbg !257
  %712 = insertelement <32 x half> %711, half %678, i64 30, !dbg !257
  %713 = insertelement <32 x half> %712, half %681, i64 31, !dbg !257
  %714 = fpext <32 x half> %713 to <32 x float>, !dbg !257
  %715 = tail call <32 x float> @llvm.fmuladd.v32f32(<32 x float> %552, <32 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <32 x float> %714), !dbg !257
  %716 = fptrunc <32 x float> %715 to <32 x half>, !dbg !257
  %717 = getelementptr inbounds <32 x half>, ptr %C.global1, i64 %indvars.iv8, !dbg !257
  store <32 x half> %716, ptr %717, align 64, !dbg !257, !tbaa !276
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !257
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next9, metadata !271, metadata !DIExpression()), !dbg !257
  %exitcond11.not = icmp eq i64 %indvars.iv.next9, 4, !dbg !257
  br i1 %exitcond11.not, label %for_begin_m.inner.outer.preheader, label %for_body_m.c.outer, !dbg !257, !prof !29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x float> @llvm.fmuladd.v32f32(<32 x float>, <32 x float>, <32 x float>) #1

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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

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
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!11 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
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
!31 = !{!"0x60000031b690.w4.b0", !32, i64 0}
!32 = !{!"0x60000031b690.w8.b0", !33, i64 0}
!33 = !{!"0x60000031b690.w16.b0", !34, i64 0}
!34 = !{!"0x60000031b690.w32.b0", !35, i64 0}
!35 = !{!"0x60000031b690.w64.b0", !36, i64 0}
!36 = !{!"0x60000031b690.w128.b0", !37, i64 0}
!37 = !{!"0x60000031b690.w256.b0", !38, i64 0}
!38 = !{!"0x60000031b690.w512.b0", !39, i64 0}
!39 = !{!"0x60000031b690.w1024.b0", !40, i64 0}
!40 = !{!"0x60000031b690", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x60000031b690.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x60000031b690.w4.b8", !47, i64 0}
!47 = !{!"0x60000031b690.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x60000031b690.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x60000031b690.w4.b16", !54, i64 0}
!54 = !{!"0x60000031b690.w8.b16", !55, i64 0}
!55 = !{!"0x60000031b690.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x60000031b690.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x600000316610.w8.b0", !95, i64 0}
!95 = !{!"0x600000316610.w16.b0", !96, i64 0}
!96 = !{!"0x600000316610.w32.b0", !97, i64 0}
!97 = !{!"0x600000316610.w64.b0", !98, i64 0}
!98 = !{!"0x600000316610.w128.b0", !99, i64 0}
!99 = !{!"0x600000316610.w256.b0", !100, i64 0}
!100 = !{!"0x600000316610.w512.b0", !101, i64 0}
!101 = !{!"0x600000316610.w1024.b0", !102, i64 0}
!102 = !{!"0x600000316610", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x600000316610.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x600000316610.w8.b16", !107, i64 0}
!107 = !{!"0x600000316610.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x600000333600.w8.b16", !110, i64 0}
!110 = !{!"0x600000333600.w16.b16", !111, i64 0}
!111 = !{!"0x600000333600.w32.b0", !112, i64 0}
!112 = !{!"0x600000333600.w64.b0", !113, i64 0}
!113 = !{!"0x600000333600.w128.b0", !114, i64 0}
!114 = !{!"0x600000333600.w256.b0", !115, i64 0}
!115 = !{!"0x600000333600.w512.b0", !116, i64 0}
!116 = !{!"0x600000333600.w1024.b0", !117, i64 0}
!117 = !{!"0x600000333600", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x600000333600.w8.b8", !120, i64 0}
!120 = !{!"0x600000333600.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x600000333600.w8.b0", !120, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x60000008e820.w8.b0", !125, i64 0}
!125 = !{!"0x60000008e820.w16.b0", !126, i64 0}
!126 = !{!"0x60000008e820.w32.b0", !127, i64 0}
!127 = !{!"0x60000008e820.w64.b0", !128, i64 0}
!128 = !{!"0x60000008e820.w128.b0", !129, i64 0}
!129 = !{!"0x60000008e820.w256.b0", !130, i64 0}
!130 = !{!"0x60000008e820.w512.b0", !131, i64 0}
!131 = !{!"0x60000008e820.w1024.b0", !132, i64 0}
!132 = !{!"0x60000008e820", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x60000008e820.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x60000008e820.w8.b16", !137, i64 0}
!137 = !{!"0x60000008e820.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x60000031e5e0.w8.b16", !140, i64 0}
!140 = !{!"0x60000031e5e0.w16.b16", !141, i64 0}
!141 = !{!"0x60000031e5e0.w32.b0", !142, i64 0}
!142 = !{!"0x60000031e5e0.w64.b0", !143, i64 0}
!143 = !{!"0x60000031e5e0.w128.b0", !144, i64 0}
!144 = !{!"0x60000031e5e0.w256.b0", !145, i64 0}
!145 = !{!"0x60000031e5e0.w512.b0", !146, i64 0}
!146 = !{!"0x60000031e5e0.w1024.b0", !147, i64 0}
!147 = !{!"0x60000031e5e0", !28, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x60000031e5e0.w8.b8", !150, i64 0}
!150 = !{!"0x60000031e5e0.w16.b0", !141, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x60000031ea90.w8.b0", !153, i64 0}
!153 = !{!"0x60000031ea90.w16.b0", !154, i64 0}
!154 = !{!"0x60000031ea90.w32.b0", !155, i64 0}
!155 = !{!"0x60000031ea90.w64.b0", !156, i64 0}
!156 = !{!"0x60000031ea90.w128.b0", !157, i64 0}
!157 = !{!"0x60000031ea90.w256.b0", !158, i64 0}
!158 = !{!"0x60000031ea90.w512.b0", !159, i64 0}
!159 = !{!"0x60000031ea90.w1024.b0", !160, i64 0}
!160 = !{!"0x60000031ea90", !28, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"0x60000031ea90.w8.b8", !153, i64 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"0x60000031ea90.w8.b16", !165, i64 0}
!165 = !{!"0x60000031ea90.w16.b16", !154, i64 0}
!166 = !{!167, !167, i64 0}
!167 = !{!"0x60000008e580.w8.b16", !168, i64 0}
!168 = !{!"0x60000008e580.w16.b16", !169, i64 0}
!169 = !{!"0x60000008e580.w32.b0", !170, i64 0}
!170 = !{!"0x60000008e580.w64.b0", !171, i64 0}
!171 = !{!"0x60000008e580.w128.b0", !172, i64 0}
!172 = !{!"0x60000008e580.w256.b0", !173, i64 0}
!173 = !{!"0x60000008e580.w512.b0", !174, i64 0}
!174 = !{!"0x60000008e580.w1024.b0", !175, i64 0}
!175 = !{!"0x60000008e580", !28, i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"0x60000008e580.w8.b8", !178, i64 0}
!178 = !{!"0x60000008e580.w16.b0", !169, i64 0}
!179 = !{!180, !180, i64 0}
!180 = !{!"0x60000008e580.w8.b0", !178, i64 0}
!181 = !{!182, !182, i64 0}
!182 = !{!"0x60000031d4d0.w8.b0", !183, i64 0}
!183 = !{!"0x60000031d4d0.w16.b0", !184, i64 0}
!184 = !{!"0x60000031d4d0.w32.b0", !185, i64 0}
!185 = !{!"0x60000031d4d0.w64.b0", !186, i64 0}
!186 = !{!"0x60000031d4d0.w128.b0", !187, i64 0}
!187 = !{!"0x60000031d4d0.w256.b0", !188, i64 0}
!188 = !{!"0x60000031d4d0.w512.b0", !189, i64 0}
!189 = !{!"0x60000031d4d0.w1024.b0", !190, i64 0}
!190 = !{!"0x60000031d4d0", !28, i64 0}
!191 = !{!192, !192, i64 0}
!192 = !{!"0x60000031d4d0.w8.b8", !183, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x60000030bd80.w8.b8", !195, i64 0}
!195 = !{!"0x60000030bd80.w16.b0", !196, i64 0}
!196 = !{!"0x60000030bd80.w32.b0", !197, i64 0}
!197 = !{!"0x60000030bd80.w64.b0", !198, i64 0}
!198 = !{!"0x60000030bd80.w128.b0", !199, i64 0}
!199 = !{!"0x60000030bd80.w256.b0", !200, i64 0}
!200 = !{!"0x60000030bd80.w512.b0", !201, i64 0}
!201 = !{!"0x60000030bd80.w1024.b0", !202, i64 0}
!202 = !{!"0x60000030bd80", !28, i64 0}
!203 = !{!204, !204, i64 0}
!204 = !{!"0x60000031c4e0.w8.b0", !205, i64 0}
!205 = !{!"0x60000031c4e0.w16.b0", !206, i64 0}
!206 = !{!"0x60000031c4e0.w32.b0", !207, i64 0}
!207 = !{!"0x60000031c4e0.w64.b0", !208, i64 0}
!208 = !{!"0x60000031c4e0.w128.b0", !209, i64 0}
!209 = !{!"0x60000031c4e0.w256.b0", !210, i64 0}
!210 = !{!"0x60000031c4e0.w512.b0", !211, i64 0}
!211 = !{!"0x60000031c4e0.w1024.b0", !212, i64 0}
!212 = !{!"0x60000031c4e0", !28, i64 0}
!213 = !{!214, !214, i64 0}
!214 = !{!"0x60000031c4e0.w8.b8", !205, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x600000373e40.w8.b8", !217, i64 0}
!217 = !{!"0x600000373e40.w16.b0", !218, i64 0}
!218 = !{!"0x600000373e40.w32.b0", !219, i64 0}
!219 = !{!"0x600000373e40.w64.b0", !220, i64 0}
!220 = !{!"0x600000373e40.w128.b0", !221, i64 0}
!221 = !{!"0x600000373e40.w256.b0", !222, i64 0}
!222 = !{!"0x600000373e40.w512.b0", !223, i64 0}
!223 = !{!"0x600000373e40.w1024.b0", !224, i64 0}
!224 = !{!"0x600000373e40", !28, i64 0}
!225 = !{!226, !226, i64 0}
!226 = !{!"0x60000030cb10.w8.b0", !227, i64 0}
!227 = !{!"0x60000030cb10.w16.b0", !228, i64 0}
!228 = !{!"0x60000030cb10.w32.b0", !229, i64 0}
!229 = !{!"0x60000030cb10.w64.b0", !230, i64 0}
!230 = !{!"0x60000030cb10.w128.b0", !231, i64 0}
!231 = !{!"0x60000030cb10.w256.b0", !232, i64 0}
!232 = !{!"0x60000030cb10.w512.b0", !233, i64 0}
!233 = !{!"0x60000030cb10.w1024.b0", !234, i64 0}
!234 = !{!"0x60000030cb10", !28, i64 0}
!235 = !{!236, !236, i64 0}
!236 = !{!"0x60000030cb10.w8.b8", !227, i64 0}
!237 = !{!238, !238, i64 0}
!238 = !{!"0x60000030d4d0.w8.b8", !239, i64 0}
!239 = !{!"0x60000030d4d0.w16.b0", !240, i64 0}
!240 = !{!"0x60000030d4d0.w32.b0", !241, i64 0}
!241 = !{!"0x60000030d4d0.w64.b0", !242, i64 0}
!242 = !{!"0x60000030d4d0.w128.b0", !243, i64 0}
!243 = !{!"0x60000030d4d0.w256.b0", !244, i64 0}
!244 = !{!"0x60000030d4d0.w512.b0", !245, i64 0}
!245 = !{!"0x60000030d4d0.w1024.b0", !246, i64 0}
!246 = !{!"0x60000030d4d0", !28, i64 0}
!247 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_", scope: !1, file: !1, type: !248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !250)
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
!260 = !DILocalVariable(name: "C.global", scope: !247, file: !1, type: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262)
!262 = !DIBasicType(name: "float16x32", size: 512, encoding: DW_ATE_float)
!263 = !DILocalVariable(name: "k.outer", scope: !247, file: !1, type: !14)
!264 = !{!265, !265, i64 0}
!265 = !{!"__fp16", !266, i64 0}
!266 = !{!"omnipotent char", !267, i64 0}
!267 = !{!"Simple C++ TBAA"}
!268 = distinct !{!268, !269}
!269 = !{!"llvm.loop.mustprogress"}
!270 = !DILocalVariable(name: "m.inner.outer", scope: !247, file: !1, type: !14)
!271 = !DILocalVariable(name: "m.c.outer", scope: !247, file: !1, type: !14)
!272 = !DILocalVariable(name: "cse_var_1", scope: !247, file: !1, type: !273)
!273 = !DIBasicType(name: "int32x32", size: 1024, encoding: DW_ATE_signed)
!274 = !{!275, !275, i64 0}
!275 = !{!"0x6000003183c0", !28, i64 0}
!276 = !{!277, !277, i64 0}
!277 = !{!"0x60000031a310", !28, i64 0}
