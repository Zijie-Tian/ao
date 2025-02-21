; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.1.0"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [86 x i8] c"Assert fail: num_args == 6, qgemm_lut_t1_int8_m8192_k4096_n1_b2: num_args should be 6\00", align 1
@.str.1 = private constant [104 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t1_int8_m8192_k4096_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [106 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t1_int8_m8192_k4096_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [137 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t1_int8_m8192_k4096_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [145 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t1_int8_m8192_k4096_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [157 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t1_int8_m8192_k4096_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [173 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t1_int8_m8192_k4096_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [173 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t1_int8_m8192_k4096_n1_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [137 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t1_int8_m8192_k4096_n1_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [118 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t1_int8_m8192_k4096_n1_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [120 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [122 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [124 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [128 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [130 x i8] c"Assert fail: 3 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.ndim is expected to equal 3\00", align 1
@.str.15 = private constant [136 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [138 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [136 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [138 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [118 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t1_int8_m8192_k4096_n1_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [120 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [239 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [239 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_A_shape[0]) == 8, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape[0] has an unsatisfied constraint: 8 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_A_shape[1]) == 1024, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [243 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_A_shape[2]) == 512, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape[2] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [318 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_A_strides[2]) and 512 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_A_strides[1]) and 524288 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_A_strides[0]), qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [206 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [186 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [113 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t1_int8_m8192_k4096_n1_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [246 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [251 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_shape[1]) == 1024, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [247 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [243 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_strides[1]), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [212 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [192 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [198 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [117 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [262 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_Scales_shape[0]) == 8, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape[0] has an unsatisfied constraint: 8 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_Scales_shape[0])\00", align 1
@.str.40 = private constant [256 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_Scales_shape[1]) == 32, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape[1] has an unsatisfied constraint: 32 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_Scales_shape[1])\00", align 1
@.str.41 = private constant [258 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_Scales_shape[2]) == 512, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape[2] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_Scales_shape[2])\00", align 1
@.str.42 = private constant [337 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_Scales_strides[2]) and 512 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_Scales_strides[1]) and 16384 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_Scales_strides[0]), qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.strides: expected to be compact array\00", align 1
@.str.43 = private constant [221 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.44 = private constant [201 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.45 = private constant [207 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.46 = private constant [123 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.47 = private constant [278 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.48 = private constant [266 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.49 = private constant [268 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Scales_shape[1]) == 64, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.50 = private constant [179 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.51 = private constant [233 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.52 = private constant [213 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.53 = private constant [219 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.54 = private constant [131 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.55 = private constant [278 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.56 = private constant [266 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.57 = private constant [268 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Biases_shape[1]) == 64, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.58 = private constant [179 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.59 = private constant [233 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.60 = private constant [213 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.61 = private constant [219 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.62 = private constant [131 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.63 = private constant [242 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.dtype is expected to be float16\00", align 1
@.str.64 = private constant [239 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_C_shape[0])\00", align 1
@.str.65 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_C_shape[1]) == 4096, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.shape[1] has an unsatisfied constraint: 4096 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_C_shape[1])\00", align 1
@.str.66 = private constant [161 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m8192_k4096_n1_b2_C_strides[1]), qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.strides: expected to be compact array\00", align 1
@.str.67 = private constant [206 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.68 = private constant [186 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.69 = private constant [192 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.70 = private constant [113 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t1_int8_m8192_k4096_n1_b2.C is expected to have non-NULL data pointer\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__tvm_main__ = weak dllexport local_unnamed_addr constant [36 x i8] c"qgemm_lut_t1_int8_m8192_k4096_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t1_int8_m8192_k4096_n1_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
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
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  %41 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.strides = load ptr, ptr %41, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.strides, metadata !80, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.strides, metadata !80, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.shape = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %48 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.strides = load ptr, ptr %48, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.shape = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %55 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.strides = load ptr, ptr %55, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.shape = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %62 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.strides = load ptr, ptr %62, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
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
  %75 = load i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %76 = and i64 %75, 4294967295, !dbg !24
  %77 = icmp eq i64 %76, 8, !dbg !24
  br i1 %77, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %78 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %78(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %79 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape, i64 1, !dbg !24
  %80 = load i64, ptr %79, align 8, !dbg !24, !tbaa !103
  %81 = and i64 %80, 4294967295, !dbg !24
  %82 = icmp eq i64 %81, 1024, !dbg !24
  br i1 %82, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %83 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %83(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %84 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape, i64 2, !dbg !24
  %85 = load i64, ptr %84, align 8, !dbg !24, !tbaa !105
  %86 = and i64 %85, 4294967295, !dbg !24
  %87 = icmp eq i64 %86, 512, !dbg !24
  br i1 %87, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %88 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %88(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not176 = icmp eq ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.strides, null, !dbg !24
  br i1 %.not176, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %89 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.strides, i64 2, !dbg !24
  %90 = load i64, ptr %89, align 8, !dbg !24, !tbaa !108
  %91 = and i64 %90, 4294967295, !dbg !24
  %92 = icmp eq i64 %91, 1, !dbg !24
  %93 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.strides, i64 1, !dbg !24
  %94 = load i64, ptr %93, align 8, !dbg !24, !tbaa !118
  %95 = and i64 %94, 4294967295, !dbg !24
  %96 = icmp eq i64 %95, 512, !dbg !24
  %97 = and i1 %92, %96, !dbg !24
  %98 = load i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.strides, align 8, !dbg !24, !tbaa !121
  %99 = and i64 %98, 4294967295, !dbg !24
  %100 = icmp eq i64 %99, 524288, !dbg !24
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
  %124 = load i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape, align 8, !dbg !24, !tbaa !123
  %125 = and i64 %124, 4294967295, !dbg !24
  %126 = icmp eq i64 %125, 1, !dbg !24
  br i1 %126, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %127 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %127(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %128 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape, i64 1, !dbg !24
  %129 = load i64, ptr %128, align 8, !dbg !24, !tbaa !133
  %130 = and i64 %129, 4294967295, !dbg !24
  %131 = icmp eq i64 %130, 1024, !dbg !24
  br i1 %131, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %132 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %132(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %133 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape, i64 2, !dbg !24
  %134 = load i64, ptr %133, align 8, !dbg !24, !tbaa !135
  %135 = and i64 %134, 4294967295, !dbg !24
  %136 = icmp eq i64 %135, 16, !dbg !24
  br i1 %136, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %137 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %137(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not178 = icmp eq ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.strides, null, !dbg !24
  br i1 %.not178, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %138 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.strides, i64 2, !dbg !24
  %139 = load i64, ptr %138, align 8, !dbg !24, !tbaa !138
  %140 = and i64 %139, 4294967295, !dbg !24
  %141 = icmp eq i64 %140, 1, !dbg !24
  %142 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.strides, i64 1, !dbg !24
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
  %173 = load i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape, align 8, !dbg !24, !tbaa !151
  %174 = and i64 %173, 4294967295, !dbg !24
  %175 = icmp eq i64 %174, 8, !dbg !24
  br i1 %175, label %assert_end92, label %assert_fail91, !dbg !24, !prof !25

assert_fail91:                                    ; preds = %assert_end90
  %176 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %176(ptr nonnull @.str.39), !dbg !24
  br label %common.ret

assert_end92:                                     ; preds = %assert_end90
  %177 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape, i64 1, !dbg !24
  %178 = load i64, ptr %177, align 8, !dbg !24, !tbaa !161
  %179 = and i64 %178, 4294967295, !dbg !24
  %180 = icmp eq i64 %179, 32, !dbg !24
  br i1 %180, label %assert_end94, label %assert_fail93, !dbg !24, !prof !25

assert_fail93:                                    ; preds = %assert_end92
  %181 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %181(ptr nonnull @.str.40), !dbg !24
  br label %common.ret

assert_end94:                                     ; preds = %assert_end92
  %182 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape, i64 2, !dbg !24
  %183 = load i64, ptr %182, align 8, !dbg !24, !tbaa !163
  %184 = and i64 %183, 4294967295, !dbg !24
  %185 = icmp eq i64 %184, 512, !dbg !24
  br i1 %185, label %assert_end96, label %assert_fail95, !dbg !24, !prof !25

assert_fail95:                                    ; preds = %assert_end94
  %186 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %186(ptr nonnull @.str.41), !dbg !24
  br label %common.ret

assert_end96:                                     ; preds = %assert_end94
  %.not180 = icmp eq ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.strides, null, !dbg !24
  br i1 %.not180, label %if_end98, label %if_then97, !dbg !24, !prof !29

if_then97:                                        ; preds = %assert_end96
  %187 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.strides, i64 2, !dbg !24
  %188 = load i64, ptr %187, align 8, !dbg !24, !tbaa !166
  %189 = and i64 %188, 4294967295, !dbg !24
  %190 = icmp eq i64 %189, 1, !dbg !24
  %191 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.strides, i64 1, !dbg !24
  %192 = load i64, ptr %191, align 8, !dbg !24, !tbaa !176
  %193 = and i64 %192, 4294967295, !dbg !24
  %194 = icmp eq i64 %193, 512, !dbg !24
  %195 = and i1 %190, %194, !dbg !24
  %196 = load i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.strides, align 8, !dbg !24, !tbaa !179
  %197 = and i64 %196, 4294967295, !dbg !24
  %198 = icmp eq i64 %197, 16384, !dbg !24
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
  %226 = load i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !181
  %227 = and i64 %226, 4294967295, !dbg !24
  %228 = icmp eq i64 %227, 1, !dbg !24
  br i1 %228, label %assert_end112, label %assert_fail111, !dbg !24, !prof !25

assert_fail111:                                   ; preds = %assert_end110
  %229 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %229(ptr nonnull @.str.48), !dbg !24
  br label %common.ret

assert_end112:                                    ; preds = %assert_end110
  %230 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.shape, i64 1, !dbg !24
  %231 = load i64, ptr %230, align 8, !dbg !24, !tbaa !191
  %232 = and i64 %231, 4294967295, !dbg !24
  %233 = icmp eq i64 %232, 64, !dbg !24
  br i1 %233, label %assert_end114, label %assert_fail113, !dbg !24, !prof !25

assert_fail113:                                   ; preds = %assert_end112
  %234 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %234(ptr nonnull @.str.49), !dbg !24
  br label %common.ret

assert_end114:                                    ; preds = %assert_end112
  %.not182 = icmp eq ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not182, label %if_end116, label %if_then115, !dbg !24, !prof !29

if_then115:                                       ; preds = %assert_end114
  %235 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.strides, i64 1, !dbg !24
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
  %265 = load i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !203
  %266 = and i64 %265, 4294967295, !dbg !24
  %267 = icmp eq i64 %266, 1, !dbg !24
  br i1 %267, label %assert_end130, label %assert_fail129, !dbg !24, !prof !25

assert_fail129:                                   ; preds = %assert_end128
  %268 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %268(ptr nonnull @.str.56), !dbg !24
  br label %common.ret

assert_end130:                                    ; preds = %assert_end128
  %269 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.shape, i64 1, !dbg !24
  %270 = load i64, ptr %269, align 8, !dbg !24, !tbaa !213
  %271 = and i64 %270, 4294967295, !dbg !24
  %272 = icmp eq i64 %271, 64, !dbg !24
  br i1 %272, label %assert_end132, label %assert_fail131, !dbg !24, !prof !25

assert_fail131:                                   ; preds = %assert_end130
  %273 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %273(ptr nonnull @.str.57), !dbg !24
  br label %common.ret

assert_end132:                                    ; preds = %assert_end130
  %.not184 = icmp eq ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not184, label %if_end134, label %if_then133, !dbg !24, !prof !29

if_then133:                                       ; preds = %assert_end132
  %274 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.strides, i64 1, !dbg !24
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
  %304 = load i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.shape, align 8, !dbg !24, !tbaa !225
  %305 = and i64 %304, 4294967295, !dbg !24
  %306 = icmp eq i64 %305, 1, !dbg !24
  br i1 %306, label %assert_end148, label %assert_fail147, !dbg !24, !prof !25

assert_fail147:                                   ; preds = %assert_end146
  %307 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %307(ptr nonnull @.str.64), !dbg !24
  br label %common.ret

assert_end148:                                    ; preds = %assert_end146
  %308 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.shape, i64 1, !dbg !24
  %309 = load i64, ptr %308, align 8, !dbg !24, !tbaa !235
  %310 = and i64 %309, 4294967295, !dbg !24
  %311 = icmp eq i64 %310, 4096, !dbg !24
  br i1 %311, label %assert_end150, label %assert_fail149, !dbg !24, !prof !25

assert_fail149:                                   ; preds = %assert_end148
  %312 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %312(ptr nonnull @.str.65), !dbg !24
  br label %common.ret

assert_end150:                                    ; preds = %assert_end148
  %.not186 = icmp eq ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.strides, null, !dbg !24
  br i1 %.not186, label %if_end152, label %if_then151, !dbg !24, !prof !29

if_then151:                                       ; preds = %assert_end150
  %313 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.strides, i64 1, !dbg !24
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
  %331 = tail call fastcc i32 @qgemm_lut_t1_int8_m8192_k4096_n1_b2_compute_(i32 %dev_id, ptr nonnull %LUT163, ptr nonnull %A164, ptr nonnull %Scales165, ptr nonnull %LUT_Scales166, ptr nonnull %LUT_Biases167, ptr nonnull %C168), !dbg !24, !range !247
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t1_int8_m8192_k4096_n1_b2_compute_(i32 %dev_id, ptr noalias nocapture readonly align 64 %LUT, ptr noalias nocapture readonly align 64 %A, ptr noalias nocapture readonly align 64 %Scales, ptr noalias nocapture readonly align 64 %LUT_Scales, ptr noalias nocapture readonly align 64 %LUT_Biases, ptr noalias nocapture writeonly align 64 %C) unnamed_addr #3 !dbg !248 {
entry:
  call void @llvm.dbg.value(metadata i32 %dev_id, metadata !252, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %LUT, metadata !253, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %A, metadata !254, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %Scales, metadata !255, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata ptr %C, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = load ptr, ptr @__TVMBackendAllocWorkspace, align 8, !dbg !259, !tbaa !26
  %CBits = tail call ptr %0(i32 1, i32 %dev_id, i64 2048, i32 2, i32 16), !dbg !259
  call void @llvm.dbg.declare(metadata ptr %CBits, metadata !260, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata ptr %CBits, metadata !260, metadata !DIExpression()), !dbg !259
  call void @llvm.assume(i1 true) [ "align"(ptr %CBits, i64 64) ], !dbg !259
  %1 = icmp eq ptr %CBits, null, !dbg !259
  br i1 %1, label %common.ret, label %if_end, !dbg !259, !prof !25

common.ret:                                       ; preds = %if_end5, %for_end_m.outer, %if_end, %entry
  %common.ret.op = phi i32 [ -1, %entry ], [ -1, %if_end ], [ -1, %for_end_m.outer ], [ %., %if_end5 ]
  ret i32 %common.ret.op, !dbg !259

if_end:                                           ; preds = %entry
  %2 = load ptr, ptr @__TVMBackendAllocWorkspace, align 8, !dbg !259, !tbaa !26
  %C.global = tail call ptr %2(i32 1, i32 %dev_id, i64 1024, i32 2, i32 16), !dbg !259
  call void @llvm.dbg.declare(metadata ptr %C.global, metadata !261, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata ptr %C.global, metadata !261, metadata !DIExpression()), !dbg !259
  call void @llvm.assume(i1 true) [ "align"(ptr %C.global, i64 64) ], !dbg !259
  %3 = icmp eq ptr %C.global, null, !dbg !259
  br i1 %3, label %common.ret, label %for_body_m.outer, !dbg !259, !prof !25

for_body_m.outer:                                 ; preds = %if_end, %for_end_m.inner.outer
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for_end_m.inner.outer ], [ 0, %if_end ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv28, metadata !262, metadata !DIExpression()), !dbg !259
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) %CBits, i8 0, i64 2048, i1 false), !dbg !259
  %4 = shl nsw i64 %indvars.iv28, 19
  call void @llvm.dbg.declare(metadata i32 0, metadata !263, metadata !DIExpression()), !dbg !259
  %5 = shl i64 %indvars.iv28, 14
  br label %for_body_k.outer, !dbg !259

for_end_m.outer:                                  ; preds = %for_end_m.inner.outer
  %6 = load ptr, ptr @__TVMBackendFreeWorkspace, align 8, !dbg !259, !tbaa !26
  %7 = tail call i32 %6(i32 1, i32 %dev_id, ptr nonnull %C.global), !dbg !259
  %.not = icmp eq i32 %7, 0, !dbg !259
  br i1 %.not, label %if_end5, label %common.ret, !dbg !259, !prof !29

for_body_k.outer:                                 ; preds = %for_body_m.outer, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit
  %indvars.iv = phi i64 [ 0, %for_body_m.outer ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !263, metadata !DIExpression()), !dbg !259
  %8 = shl nuw nsw i64 %indvars.iv, 8, !dbg !259
  %9 = getelementptr inbounds i8, ptr %LUT, i64 %8, !dbg !259
  %10 = shl nuw nsw i64 %indvars.iv, 13, !dbg !259
  %11 = add nuw nsw i64 %10, %4, !dbg !259
  %12 = getelementptr inbounds i8, ptr %A, i64 %11, !dbg !259
  %13 = and i64 %8, 2147483136, !dbg !259
  %14 = add i64 %13, %5, !dbg !259
  %15 = and i64 %14, 4294966784, !dbg !259
  %16 = getelementptr inbounds half, ptr %Scales, i64 %15, !dbg !259
  %17 = getelementptr inbounds half, ptr %LUT_Scales, i64 %indvars.iv, !dbg !259
  %18 = getelementptr inbounds half, ptr %LUT_Biases, i64 %indvars.iv, !dbg !259
  %19 = load <16 x i8>, ptr %9, align 64, !dbg !259
  %20 = getelementptr inbounds i8, ptr %9, i64 16, !dbg !259
  %21 = load <16 x i8>, ptr %20, align 16, !dbg !259
  %22 = getelementptr inbounds i8, ptr %9, i64 32, !dbg !259
  %23 = load <16 x i8>, ptr %22, align 32, !dbg !259
  %24 = getelementptr inbounds i8, ptr %9, i64 48, !dbg !259
  %25 = load <16 x i8>, ptr %24, align 16, !dbg !259
  %26 = getelementptr inbounds i8, ptr %9, i64 64, !dbg !259
  %27 = load <16 x i8>, ptr %26, align 64, !dbg !259
  %28 = getelementptr inbounds i8, ptr %9, i64 80, !dbg !259
  %29 = load <16 x i8>, ptr %28, align 16, !dbg !259
  %30 = getelementptr inbounds i8, ptr %9, i64 96, !dbg !259
  %31 = load <16 x i8>, ptr %30, align 32, !dbg !259
  %32 = getelementptr inbounds i8, ptr %9, i64 112, !dbg !259
  %33 = load <16 x i8>, ptr %32, align 16, !dbg !259
  %34 = getelementptr inbounds i8, ptr %9, i64 128, !dbg !259
  %35 = load <16 x i8>, ptr %34, align 64, !dbg !259
  %36 = getelementptr inbounds i8, ptr %9, i64 144, !dbg !259
  %37 = load <16 x i8>, ptr %36, align 16, !dbg !259
  %38 = getelementptr inbounds i8, ptr %9, i64 160, !dbg !259
  %39 = load <16 x i8>, ptr %38, align 32, !dbg !259
  %40 = getelementptr inbounds i8, ptr %9, i64 176, !dbg !259
  %41 = load <16 x i8>, ptr %40, align 16, !dbg !259
  %42 = getelementptr inbounds i8, ptr %9, i64 192, !dbg !259
  %43 = load <16 x i8>, ptr %42, align 64, !dbg !259
  %44 = getelementptr inbounds i8, ptr %9, i64 208, !dbg !259
  %45 = load <16 x i8>, ptr %44, align 16, !dbg !259
  %46 = getelementptr inbounds i8, ptr %9, i64 224, !dbg !259
  %47 = load <16 x i8>, ptr %46, align 32, !dbg !259
  %48 = getelementptr inbounds i8, ptr %9, i64 240, !dbg !259
  %49 = load <16 x i8>, ptr %48, align 16, !dbg !259
  %50 = load half, ptr %17, align 2, !tbaa !264
  %51 = load half, ptr %18, align 2, !tbaa !264
  %52 = insertelement <8 x half> poison, half %50, i64 0
  %53 = insertelement <8 x half> poison, half %51, i64 0
  %54 = shufflevector <8 x half> %52, <8 x half> poison, <8 x i32> zeroinitializer
  %55 = shufflevector <8 x half> %53, <8 x half> poison, <8 x i32> zeroinitializer
  br label %56, !dbg !259

56:                                               ; preds = %56, %for_body_k.outer
  %57 = phi i64 [ 0, %for_body_k.outer ], [ %369, %56 ], !dbg !259
  %58 = shl nuw nsw i64 %57, 4, !dbg !259
  %59 = getelementptr inbounds i8, ptr %12, i64 %58, !dbg !259
  %60 = load <16 x i8>, ptr %59, align 64, !dbg !259
  %61 = lshr <16 x i8> %60, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %62 = and <16 x i8> %60, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %63 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %19, <16 x i8> %62), !dbg !259
  %64 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %19, <16 x i8> %61), !dbg !259
  %65 = getelementptr inbounds i8, ptr %59, i64 16, !dbg !259
  %66 = load <16 x i8>, ptr %65, align 16, !dbg !259
  %67 = lshr <16 x i8> %66, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %68 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %21, <16 x i8> %67), !dbg !259
  %69 = and <16 x i8> %66, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %70 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %21, <16 x i8> %69), !dbg !259
  %71 = shufflevector <16 x i8> %63, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %72 = shufflevector <16 x i8> %70, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %73 = sext <8 x i8> %71 to <8 x i16>, !dbg !259
  %74 = sext <8 x i8> %72 to <8 x i16>, !dbg !259
  %75 = shufflevector <16 x i8> %63, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %76 = sext <8 x i8> %75 to <8 x i16>, !dbg !259
  %77 = shufflevector <16 x i8> %70, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %78 = sext <8 x i8> %77 to <8 x i16>, !dbg !259
  %79 = add nsw <8 x i16> %74, %73, !dbg !259
  %80 = add nsw <8 x i16> %78, %76, !dbg !259
  %81 = shufflevector <16 x i8> %64, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %82 = shufflevector <16 x i8> %68, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %83 = sext <8 x i8> %81 to <8 x i16>, !dbg !259
  %84 = sext <8 x i8> %82 to <8 x i16>, !dbg !259
  %85 = shufflevector <16 x i8> %64, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %86 = sext <8 x i8> %85 to <8 x i16>, !dbg !259
  %87 = shufflevector <16 x i8> %68, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %88 = sext <8 x i8> %87 to <8 x i16>, !dbg !259
  %89 = getelementptr inbounds i8, ptr %59, i64 32, !dbg !259
  %90 = load <16 x i8>, ptr %89, align 32, !dbg !259
  %91 = lshr <16 x i8> %90, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %92 = and <16 x i8> %90, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %93 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %23, <16 x i8> %92), !dbg !259
  %94 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %23, <16 x i8> %91), !dbg !259
  %95 = getelementptr inbounds i8, ptr %59, i64 48, !dbg !259
  %96 = load <16 x i8>, ptr %95, align 16, !dbg !259
  %97 = and <16 x i8> %96, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %98 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %25, <16 x i8> %97), !dbg !259
  %99 = shufflevector <16 x i8> %93, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %100 = shufflevector <16 x i8> %98, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %101 = sext <8 x i8> %99 to <8 x i16>, !dbg !259
  %102 = sext <8 x i8> %100 to <8 x i16>, !dbg !259
  %103 = shufflevector <16 x i8> %93, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %104 = sext <8 x i8> %103 to <8 x i16>, !dbg !259
  %105 = shufflevector <16 x i8> %98, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %106 = sext <8 x i8> %105 to <8 x i16>, !dbg !259
  %107 = add nsw <8 x i16> %79, %101, !dbg !259
  %108 = add nsw <8 x i16> %107, %102, !dbg !259
  %109 = add nsw <8 x i16> %80, %104, !dbg !259
  %110 = add nsw <8 x i16> %109, %106, !dbg !259
  %111 = lshr <16 x i8> %96, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %112 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %25, <16 x i8> %111), !dbg !259
  %113 = shufflevector <16 x i8> %112, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %114 = sext <8 x i8> %113 to <8 x i16>, !dbg !259
  %115 = shufflevector <16 x i8> %94, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %116 = sext <8 x i8> %115 to <8 x i16>, !dbg !259
  %117 = shufflevector <16 x i8> %112, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %118 = sext <8 x i8> %117 to <8 x i16>, !dbg !259
  %119 = shufflevector <16 x i8> %94, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %120 = sext <8 x i8> %119 to <8 x i16>, !dbg !259
  %121 = getelementptr inbounds i8, ptr %59, i64 64, !dbg !259
  %122 = load <16 x i8>, ptr %121, align 64, !dbg !259
  %123 = lshr <16 x i8> %122, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %124 = and <16 x i8> %122, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %125 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %27, <16 x i8> %124), !dbg !259
  %126 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %27, <16 x i8> %123), !dbg !259
  %127 = getelementptr inbounds i8, ptr %59, i64 80, !dbg !259
  %128 = load <16 x i8>, ptr %127, align 16, !dbg !259
  %129 = and <16 x i8> %128, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %130 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %29, <16 x i8> %129), !dbg !259
  %131 = shufflevector <16 x i8> %125, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %132 = shufflevector <16 x i8> %130, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %133 = sext <8 x i8> %131 to <8 x i16>, !dbg !259
  %134 = sext <8 x i8> %132 to <8 x i16>, !dbg !259
  %135 = shufflevector <16 x i8> %125, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %136 = sext <8 x i8> %135 to <8 x i16>, !dbg !259
  %137 = shufflevector <16 x i8> %130, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %138 = sext <8 x i8> %137 to <8 x i16>, !dbg !259
  %139 = add nsw <8 x i16> %108, %133, !dbg !259
  %140 = add nsw <8 x i16> %139, %134, !dbg !259
  %141 = add nsw <8 x i16> %110, %136, !dbg !259
  %142 = add nsw <8 x i16> %141, %138, !dbg !259
  %143 = lshr <16 x i8> %128, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %144 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %29, <16 x i8> %143), !dbg !259
  %145 = shufflevector <16 x i8> %144, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %146 = sext <8 x i8> %145 to <8 x i16>, !dbg !259
  %147 = shufflevector <16 x i8> %126, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %148 = sext <8 x i8> %147 to <8 x i16>, !dbg !259
  %149 = shufflevector <16 x i8> %144, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %150 = sext <8 x i8> %149 to <8 x i16>, !dbg !259
  %151 = shufflevector <16 x i8> %126, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %152 = sext <8 x i8> %151 to <8 x i16>, !dbg !259
  %153 = getelementptr inbounds i8, ptr %59, i64 96, !dbg !259
  %154 = load <16 x i8>, ptr %153, align 32, !dbg !259
  %155 = lshr <16 x i8> %154, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %156 = and <16 x i8> %154, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %157 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %31, <16 x i8> %156), !dbg !259
  %158 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %31, <16 x i8> %155), !dbg !259
  %159 = getelementptr inbounds i8, ptr %59, i64 112, !dbg !259
  %160 = load <16 x i8>, ptr %159, align 16, !dbg !259
  %161 = and <16 x i8> %160, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %162 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %33, <16 x i8> %161), !dbg !259
  %163 = shufflevector <16 x i8> %157, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %164 = shufflevector <16 x i8> %162, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %165 = sext <8 x i8> %163 to <8 x i16>, !dbg !259
  %166 = sext <8 x i8> %164 to <8 x i16>, !dbg !259
  %167 = shufflevector <16 x i8> %157, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %168 = sext <8 x i8> %167 to <8 x i16>, !dbg !259
  %169 = shufflevector <16 x i8> %162, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %170 = sext <8 x i8> %169 to <8 x i16>, !dbg !259
  %171 = add nsw <8 x i16> %140, %165, !dbg !259
  %172 = add <8 x i16> %171, %166, !dbg !259
  %173 = add nsw <8 x i16> %142, %168, !dbg !259
  %174 = add <8 x i16> %173, %170, !dbg !259
  %175 = lshr <16 x i8> %160, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %176 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %33, <16 x i8> %175), !dbg !259
  %177 = shufflevector <16 x i8> %176, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %178 = sext <8 x i8> %177 to <8 x i16>, !dbg !259
  %179 = shufflevector <16 x i8> %158, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %180 = sext <8 x i8> %179 to <8 x i16>, !dbg !259
  %181 = shufflevector <16 x i8> %176, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %182 = sext <8 x i8> %181 to <8 x i16>, !dbg !259
  %183 = shufflevector <16 x i8> %158, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %184 = sext <8 x i8> %183 to <8 x i16>, !dbg !259
  %185 = getelementptr inbounds i8, ptr %59, i64 128, !dbg !259
  %186 = load <16 x i8>, ptr %185, align 64, !dbg !259
  %187 = lshr <16 x i8> %186, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %188 = and <16 x i8> %186, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %189 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %35, <16 x i8> %188), !dbg !259
  %190 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %35, <16 x i8> %187), !dbg !259
  %191 = getelementptr inbounds i8, ptr %59, i64 144, !dbg !259
  %192 = load <16 x i8>, ptr %191, align 16, !dbg !259
  %193 = and <16 x i8> %192, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %194 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %37, <16 x i8> %193), !dbg !259
  %195 = shufflevector <16 x i8> %189, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %196 = shufflevector <16 x i8> %194, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %197 = sext <8 x i8> %195 to <8 x i16>, !dbg !259
  %198 = sext <8 x i8> %196 to <8 x i16>, !dbg !259
  %199 = shufflevector <16 x i8> %189, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %200 = sext <8 x i8> %199 to <8 x i16>, !dbg !259
  %201 = shufflevector <16 x i8> %194, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %202 = sext <8 x i8> %201 to <8 x i16>, !dbg !259
  %203 = add <8 x i16> %172, %197, !dbg !259
  %204 = add <8 x i16> %203, %198, !dbg !259
  %205 = add <8 x i16> %174, %200, !dbg !259
  %206 = add <8 x i16> %205, %202, !dbg !259
  %207 = lshr <16 x i8> %192, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %208 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %37, <16 x i8> %207), !dbg !259
  %209 = shufflevector <16 x i8> %208, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %210 = sext <8 x i8> %209 to <8 x i16>, !dbg !259
  %211 = shufflevector <16 x i8> %190, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %212 = sext <8 x i8> %211 to <8 x i16>, !dbg !259
  %213 = shufflevector <16 x i8> %208, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %214 = sext <8 x i8> %213 to <8 x i16>, !dbg !259
  %215 = shufflevector <16 x i8> %190, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %216 = sext <8 x i8> %215 to <8 x i16>, !dbg !259
  %217 = getelementptr inbounds i8, ptr %59, i64 160, !dbg !259
  %218 = load <16 x i8>, ptr %217, align 32, !dbg !259
  %219 = lshr <16 x i8> %218, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %220 = and <16 x i8> %218, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %221 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %39, <16 x i8> %220), !dbg !259
  %222 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %39, <16 x i8> %219), !dbg !259
  %223 = getelementptr inbounds i8, ptr %59, i64 176, !dbg !259
  %224 = load <16 x i8>, ptr %223, align 16, !dbg !259
  %225 = and <16 x i8> %224, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %226 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %41, <16 x i8> %225), !dbg !259
  %227 = shufflevector <16 x i8> %221, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %228 = shufflevector <16 x i8> %226, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %229 = sext <8 x i8> %227 to <8 x i16>, !dbg !259
  %230 = sext <8 x i8> %228 to <8 x i16>, !dbg !259
  %231 = shufflevector <16 x i8> %221, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %232 = sext <8 x i8> %231 to <8 x i16>, !dbg !259
  %233 = shufflevector <16 x i8> %226, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %234 = sext <8 x i8> %233 to <8 x i16>, !dbg !259
  %235 = add <8 x i16> %204, %229, !dbg !259
  %236 = add <8 x i16> %235, %230, !dbg !259
  %237 = add <8 x i16> %206, %232, !dbg !259
  %238 = add <8 x i16> %237, %234, !dbg !259
  %239 = lshr <16 x i8> %224, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %240 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %41, <16 x i8> %239), !dbg !259
  %241 = shufflevector <16 x i8> %240, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %242 = sext <8 x i8> %241 to <8 x i16>, !dbg !259
  %243 = shufflevector <16 x i8> %222, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %244 = sext <8 x i8> %243 to <8 x i16>, !dbg !259
  %245 = shufflevector <16 x i8> %240, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %246 = sext <8 x i8> %245 to <8 x i16>, !dbg !259
  %247 = shufflevector <16 x i8> %222, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %248 = sext <8 x i8> %247 to <8 x i16>, !dbg !259
  %249 = getelementptr inbounds i8, ptr %59, i64 192, !dbg !259
  %250 = load <16 x i8>, ptr %249, align 64, !dbg !259
  %251 = lshr <16 x i8> %250, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %252 = and <16 x i8> %250, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %253 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %43, <16 x i8> %252), !dbg !259
  %254 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %43, <16 x i8> %251), !dbg !259
  %255 = getelementptr inbounds i8, ptr %59, i64 208, !dbg !259
  %256 = load <16 x i8>, ptr %255, align 16, !dbg !259
  %257 = and <16 x i8> %256, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %258 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %45, <16 x i8> %257), !dbg !259
  %259 = shufflevector <16 x i8> %253, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %260 = shufflevector <16 x i8> %258, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %261 = sext <8 x i8> %259 to <8 x i16>, !dbg !259
  %262 = sext <8 x i8> %260 to <8 x i16>, !dbg !259
  %263 = shufflevector <16 x i8> %253, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %264 = sext <8 x i8> %263 to <8 x i16>, !dbg !259
  %265 = shufflevector <16 x i8> %258, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %266 = sext <8 x i8> %265 to <8 x i16>, !dbg !259
  %267 = add <8 x i16> %236, %261, !dbg !259
  %268 = add <8 x i16> %267, %262, !dbg !259
  %269 = add <8 x i16> %238, %264, !dbg !259
  %270 = add <8 x i16> %269, %266, !dbg !259
  %271 = lshr <16 x i8> %256, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %272 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %45, <16 x i8> %271), !dbg !259
  %273 = shufflevector <16 x i8> %272, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %274 = sext <8 x i8> %273 to <8 x i16>, !dbg !259
  %275 = shufflevector <16 x i8> %254, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %276 = sext <8 x i8> %275 to <8 x i16>, !dbg !259
  %277 = shufflevector <16 x i8> %272, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %278 = sext <8 x i8> %277 to <8 x i16>, !dbg !259
  %279 = shufflevector <16 x i8> %254, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %280 = sext <8 x i8> %279 to <8 x i16>, !dbg !259
  %281 = getelementptr inbounds i8, ptr %59, i64 224, !dbg !259
  %282 = load <16 x i8>, ptr %281, align 32, !dbg !259
  %283 = lshr <16 x i8> %282, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %284 = and <16 x i8> %282, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %285 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %47, <16 x i8> %284), !dbg !259
  %286 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %47, <16 x i8> %283), !dbg !259
  %287 = getelementptr inbounds i8, ptr %59, i64 240, !dbg !259
  %288 = load <16 x i8>, ptr %287, align 16, !dbg !259
  %289 = and <16 x i8> %288, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !259
  %290 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %49, <16 x i8> %289), !dbg !259
  %291 = shufflevector <16 x i8> %285, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %292 = shufflevector <16 x i8> %290, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %293 = sext <8 x i8> %291 to <8 x i16>, !dbg !259
  %294 = sext <8 x i8> %292 to <8 x i16>, !dbg !259
  %295 = shufflevector <16 x i8> %285, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %296 = sext <8 x i8> %295 to <8 x i16>, !dbg !259
  %297 = shufflevector <16 x i8> %290, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %298 = sext <8 x i8> %297 to <8 x i16>, !dbg !259
  %299 = add <8 x i16> %268, %293, !dbg !259
  %300 = add <8 x i16> %299, %294, !dbg !259
  %301 = add <8 x i16> %270, %296, !dbg !259
  %302 = add <8 x i16> %301, %298, !dbg !259
  %303 = lshr <16 x i8> %288, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !259
  %304 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %49, <16 x i8> %303), !dbg !259
  %305 = shufflevector <16 x i8> %304, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %306 = sext <8 x i8> %305 to <8 x i16>, !dbg !259
  %307 = shufflevector <16 x i8> %286, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !259
  %308 = sext <8 x i8> %307 to <8 x i16>, !dbg !259
  %309 = add nsw <8 x i16> %88, %86, !dbg !259
  %310 = add nsw <8 x i16> %309, %116, !dbg !259
  %311 = add nsw <8 x i16> %310, %114, !dbg !259
  %312 = add nsw <8 x i16> %311, %148, !dbg !259
  %313 = add nsw <8 x i16> %312, %146, !dbg !259
  %314 = add nsw <8 x i16> %313, %180, !dbg !259
  %315 = add <8 x i16> %314, %178, !dbg !259
  %316 = add <8 x i16> %315, %212, !dbg !259
  %317 = add <8 x i16> %316, %210, !dbg !259
  %318 = add <8 x i16> %317, %244, !dbg !259
  %319 = add <8 x i16> %318, %242, !dbg !259
  %320 = add <8 x i16> %319, %276, !dbg !259
  %321 = add <8 x i16> %320, %274, !dbg !259
  %322 = add <8 x i16> %321, %308, !dbg !259
  %323 = add <8 x i16> %322, %306, !dbg !259
  %324 = shufflevector <16 x i8> %304, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %325 = sext <8 x i8> %324 to <8 x i16>, !dbg !259
  %326 = shufflevector <16 x i8> %286, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !259
  %327 = sext <8 x i8> %326 to <8 x i16>, !dbg !259
  %328 = add nsw <8 x i16> %84, %83, !dbg !259
  %329 = add nsw <8 x i16> %328, %120, !dbg !259
  %330 = add nsw <8 x i16> %329, %118, !dbg !259
  %331 = add nsw <8 x i16> %330, %152, !dbg !259
  %332 = add nsw <8 x i16> %331, %150, !dbg !259
  %333 = add nsw <8 x i16> %332, %184, !dbg !259
  %334 = add <8 x i16> %333, %182, !dbg !259
  %335 = add <8 x i16> %334, %216, !dbg !259
  %336 = add <8 x i16> %335, %214, !dbg !259
  %337 = add <8 x i16> %336, %248, !dbg !259
  %338 = add <8 x i16> %337, %246, !dbg !259
  %339 = add <8 x i16> %338, %280, !dbg !259
  %340 = add <8 x i16> %339, %278, !dbg !259
  %341 = add <8 x i16> %340, %327, !dbg !259
  %342 = add <8 x i16> %341, %325, !dbg !259
  %343 = sitofp <8 x i16> %300 to <8 x half>, !dbg !259
  %344 = sitofp <8 x i16> %302 to <8 x half>, !dbg !259
  %345 = sitofp <8 x i16> %342 to <8 x half>, !dbg !259
  %346 = sitofp <8 x i16> %323 to <8 x half>, !dbg !259
  %347 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %343, <8 x half> %54, <8 x half> %55), !dbg !259
  %348 = fmul <8 x half> %54, %344, !dbg !259
  %349 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %345, <8 x half> %54, <8 x half> %55), !dbg !259
  %350 = fmul <8 x half> %54, %346, !dbg !259
  %351 = getelementptr inbounds half, ptr %16, i64 %57, !dbg !259
  %352 = load <8 x half>, ptr %351, align 32, !dbg !259
  %353 = or i64 %57, 8, !dbg !259
  %354 = getelementptr inbounds half, ptr %16, i64 %353, !dbg !259
  %355 = load <8 x half>, ptr %354, align 16, !dbg !259
  %356 = shl nuw nsw i64 %57, 1, !dbg !259
  %357 = getelementptr inbounds half, ptr %CBits, i64 %356, !dbg !259
  %358 = load <8 x half>, ptr %357, align 64, !dbg !259
  %359 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %347, <8 x half> %352, <8 x half> %358), !dbg !259
  store <8 x half> %359, ptr %357, align 64, !dbg !259
  %360 = getelementptr inbounds half, ptr %357, i64 8, !dbg !259
  %361 = load <8 x half>, ptr %360, align 16, !dbg !259
  %362 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %348, <8 x half> %352, <8 x half> %361), !dbg !259
  store <8 x half> %362, ptr %360, align 16, !dbg !259
  %363 = getelementptr inbounds half, ptr %357, i64 16, !dbg !259
  %364 = load <8 x half>, ptr %363, align 32, !dbg !259
  %365 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %349, <8 x half> %355, <8 x half> %364), !dbg !259
  store <8 x half> %365, ptr %363, align 32, !dbg !259
  %366 = getelementptr inbounds half, ptr %357, i64 24, !dbg !259
  %367 = load <8 x half>, ptr %366, align 16, !dbg !259
  %368 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %350, <8 x half> %355, <8 x half> %367), !dbg !259
  store <8 x half> %368, ptr %366, align 16, !dbg !259
  %369 = add nuw nsw i64 %57, 16, !dbg !259
  %370 = icmp ult i64 %57, 496, !dbg !259
  br i1 %370, label %56, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit, !dbg !259, !llvm.loop !268

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit: ; preds = %56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !259
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !263, metadata !DIExpression()), !dbg !259
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !259
  br i1 %exitcond.not, label %for_body_m.c.outer, label %for_body_k.outer, !dbg !259, !prof !29

for_begin_m.inner.outer.preheader:                ; preds = %for_body_m.c.outer
  %371 = shl nsw i64 %indvars.iv28, 9
  call void @llvm.dbg.declare(metadata i32 0, metadata !270, metadata !DIExpression()), !dbg !259
  br label %for_body_m.inner.outer, !dbg !259

for_body_m.c.outer:                               ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit, %for_body_m.c.outer
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for_body_m.c.outer ], [ 0, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv16, metadata !271, metadata !DIExpression()), !dbg !259
  %372 = shl nuw nsw i64 %indvars.iv16, 6, !dbg !259
  call void @llvm.dbg.declare(metadata i64 %372, metadata !272, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i64 %372, metadata !272, metadata !DIExpression()), !dbg !259
  %373 = shl nuw nsw i64 %indvars.iv16, 5, !dbg !259
  call void @llvm.dbg.declare(metadata i64 %373, metadata !273, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i64 %373, metadata !273, metadata !DIExpression()), !dbg !259
  %374 = getelementptr inbounds half, ptr %CBits, i64 %372, !dbg !259
  %375 = or i64 %372, 8, !dbg !259
  %376 = getelementptr inbounds half, ptr %CBits, i64 %375, !dbg !259
  %377 = getelementptr inbounds half, ptr %C.global, i64 %373, !dbg !259
  %378 = load <8 x half>, ptr %374, align 64, !dbg !259, !tbaa !274
  %379 = fpext <8 x half> %378 to <8 x float>, !dbg !259
  %380 = load <8 x half>, ptr %376, align 16, !dbg !259, !tbaa !274
  %381 = fpext <8 x half> %380 to <8 x float>, !dbg !259
  %382 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %379, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %381), !dbg !259
  %383 = fptrunc <8 x float> %382 to <8 x half>, !dbg !259
  store <8 x half> %383, ptr %377, align 64, !dbg !259, !tbaa !276
  %384 = or i64 %372, 16, !dbg !259
  %385 = getelementptr inbounds half, ptr %CBits, i64 %384, !dbg !259
  %386 = or i64 %372, 24, !dbg !259
  %387 = getelementptr inbounds half, ptr %CBits, i64 %386, !dbg !259
  %388 = or i64 %373, 8, !dbg !259
  %389 = getelementptr inbounds half, ptr %C.global, i64 %388, !dbg !259
  %390 = load <8 x half>, ptr %385, align 32, !dbg !259, !tbaa !274
  %391 = fpext <8 x half> %390 to <8 x float>, !dbg !259
  %392 = load <8 x half>, ptr %387, align 16, !dbg !259, !tbaa !274
  %393 = fpext <8 x half> %392 to <8 x float>, !dbg !259
  %394 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %391, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %393), !dbg !259
  %395 = fptrunc <8 x float> %394 to <8 x half>, !dbg !259
  store <8 x half> %395, ptr %389, align 16, !dbg !259, !tbaa !276
  %396 = or i64 %372, 32, !dbg !259
  %397 = getelementptr inbounds half, ptr %CBits, i64 %396, !dbg !259
  %398 = or i64 %372, 40, !dbg !259
  %399 = getelementptr inbounds half, ptr %CBits, i64 %398, !dbg !259
  %400 = or i64 %373, 16, !dbg !259
  %401 = getelementptr inbounds half, ptr %C.global, i64 %400, !dbg !259
  %402 = load <8 x half>, ptr %397, align 64, !dbg !259, !tbaa !274
  %403 = fpext <8 x half> %402 to <8 x float>, !dbg !259
  %404 = load <8 x half>, ptr %399, align 16, !dbg !259, !tbaa !274
  %405 = fpext <8 x half> %404 to <8 x float>, !dbg !259
  %406 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %403, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %405), !dbg !259
  %407 = fptrunc <8 x float> %406 to <8 x half>, !dbg !259
  store <8 x half> %407, ptr %401, align 32, !dbg !259, !tbaa !276
  %408 = or i64 %372, 48, !dbg !259
  %409 = getelementptr inbounds half, ptr %CBits, i64 %408, !dbg !259
  %410 = or i64 %372, 56, !dbg !259
  %411 = getelementptr inbounds half, ptr %CBits, i64 %410, !dbg !259
  %412 = or i64 %373, 24, !dbg !259
  %413 = getelementptr inbounds half, ptr %C.global, i64 %412, !dbg !259
  %414 = load <8 x half>, ptr %409, align 32, !dbg !259, !tbaa !274
  %415 = fpext <8 x half> %414 to <8 x float>, !dbg !259
  %416 = load <8 x half>, ptr %411, align 16, !dbg !259, !tbaa !274
  %417 = fpext <8 x half> %416 to <8 x float>, !dbg !259
  %418 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %415, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %417), !dbg !259
  %419 = fptrunc <8 x float> %418 to <8 x half>, !dbg !259
  store <8 x half> %419, ptr %413, align 16, !dbg !259, !tbaa !276
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !259
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next17, metadata !271, metadata !DIExpression()), !dbg !259
  %exitcond21.not = icmp eq i64 %indvars.iv.next17, 16, !dbg !259
  br i1 %exitcond21.not, label %for_begin_m.inner.outer.preheader, label %for_body_m.c.outer, !dbg !259, !prof !29

for_body_m.inner.outer:                           ; preds = %for_begin_m.inner.outer.preheader, %for_body_m.inner.outer
  %indvars.iv22 = phi i64 [ 0, %for_begin_m.inner.outer.preheader ], [ %indvars.iv.next23, %for_body_m.inner.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv22, metadata !270, metadata !DIExpression()), !dbg !259
  %420 = shl nuw nsw i64 %indvars.iv22, 5, !dbg !259
  call void @llvm.dbg.declare(metadata i64 %420, metadata !278, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i64 %420, metadata !278, metadata !DIExpression()), !dbg !259
  %421 = add nuw nsw i64 %420, %371, !dbg !259
  call void @llvm.dbg.declare(metadata i64 %421, metadata !279, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i64 %421, metadata !279, metadata !DIExpression()), !dbg !259
  %422 = getelementptr inbounds half, ptr %C.global, i64 %420, !dbg !259
  %423 = getelementptr inbounds half, ptr %C, i64 %421, !dbg !259
  %424 = load <8 x half>, ptr %422, align 64, !dbg !259, !tbaa !276
  store <8 x half> %424, ptr %423, align 64, !dbg !259, !tbaa !280
  %425 = or i64 %420, 8, !dbg !259
  %426 = getelementptr inbounds half, ptr %C.global, i64 %425, !dbg !259
  %427 = or i64 %421, 8, !dbg !259
  %428 = getelementptr inbounds half, ptr %C, i64 %427, !dbg !259
  %429 = load <8 x half>, ptr %426, align 16, !dbg !259, !tbaa !276
  store <8 x half> %429, ptr %428, align 16, !dbg !259, !tbaa !280
  %430 = or i64 %420, 16, !dbg !259
  %431 = getelementptr inbounds half, ptr %C.global, i64 %430, !dbg !259
  %432 = or i64 %421, 16, !dbg !259
  %433 = getelementptr inbounds half, ptr %C, i64 %432, !dbg !259
  %434 = load <8 x half>, ptr %431, align 32, !dbg !259, !tbaa !276
  store <8 x half> %434, ptr %433, align 32, !dbg !259, !tbaa !280
  %435 = or i64 %420, 24, !dbg !259
  %436 = getelementptr inbounds half, ptr %C.global, i64 %435, !dbg !259
  %437 = or i64 %421, 24, !dbg !259
  %438 = getelementptr inbounds half, ptr %C, i64 %437, !dbg !259
  %439 = load <8 x half>, ptr %436, align 16, !dbg !259, !tbaa !276
  store <8 x half> %439, ptr %438, align 16, !dbg !259, !tbaa !280
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !259
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next23, metadata !270, metadata !DIExpression()), !dbg !259
  %exitcond27.not = icmp eq i64 %indvars.iv.next23, 16, !dbg !259
  br i1 %exitcond27.not, label %for_end_m.inner.outer, label %for_body_m.inner.outer, !dbg !259, !prof !29

for_end_m.inner.outer:                            ; preds = %for_body_m.inner.outer
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !259
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next29, metadata !262, metadata !DIExpression()), !dbg !259
  %exitcond31.not = icmp eq i64 %indvars.iv.next29, 8, !dbg !259
  br i1 %exitcond31.not, label %for_end_m.outer, label %for_body_m.outer, !dbg !259, !prof !29

if_end5:                                          ; preds = %for_end_m.outer
  %440 = load ptr, ptr @__TVMBackendFreeWorkspace, align 8, !dbg !259, !tbaa !26
  %441 = tail call i32 %440(i32 1, i32 %dev_id, ptr nonnull %CBits), !dbg !259
  %.not10 = icmp ne i32 %441, 0, !dbg !259
  %. = sext i1 %.not10 to i32
  br label %common.ret
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local i16 @__truncsfhf2(float %a0) local_unnamed_addr #4 {
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
define weak dso_local float @__extendhfsf2(i16 %a0) local_unnamed_addr #4 {
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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8>, <16 x i8>) #6

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x half> @llvm.fmuladd.v8f16(<8 x half>, <8 x half>, <8 x half>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #8

attributes #0 = { "target-cpu"="apple-m2" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { noinline "probe-stack"="__chkstk_darwin" "target-cpu"="apple-m2" }
attributes #4 = { nofree nosync nounwind memory(none) "target-cpu"="apple-m2" "target-features" }
attributes #5 = { alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!11 = distinct !DISubprogram(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
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
!31 = !{!"0x600002f2dc80.w4.b0", !32, i64 0}
!32 = !{!"0x600002f2dc80.w8.b0", !33, i64 0}
!33 = !{!"0x600002f2dc80.w16.b0", !34, i64 0}
!34 = !{!"0x600002f2dc80.w32.b0", !35, i64 0}
!35 = !{!"0x600002f2dc80.w64.b0", !36, i64 0}
!36 = !{!"0x600002f2dc80.w128.b0", !37, i64 0}
!37 = !{!"0x600002f2dc80.w256.b0", !38, i64 0}
!38 = !{!"0x600002f2dc80.w512.b0", !39, i64 0}
!39 = !{!"0x600002f2dc80.w1024.b0", !40, i64 0}
!40 = !{!"0x600002f2dc80", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x600002f2dc80.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x600002f2dc80.w4.b8", !47, i64 0}
!47 = !{!"0x600002f2dc80.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x600002f2dc80.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x600002f2dc80.w4.b16", !54, i64 0}
!54 = !{!"0x600002f2dc80.w8.b16", !55, i64 0}
!55 = !{!"0x600002f2dc80.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x600002f2dc80.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x600002f2c960.w8.b0", !95, i64 0}
!95 = !{!"0x600002f2c960.w16.b0", !96, i64 0}
!96 = !{!"0x600002f2c960.w32.b0", !97, i64 0}
!97 = !{!"0x600002f2c960.w64.b0", !98, i64 0}
!98 = !{!"0x600002f2c960.w128.b0", !99, i64 0}
!99 = !{!"0x600002f2c960.w256.b0", !100, i64 0}
!100 = !{!"0x600002f2c960.w512.b0", !101, i64 0}
!101 = !{!"0x600002f2c960.w1024.b0", !102, i64 0}
!102 = !{!"0x600002f2c960", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x600002f2c960.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x600002f2c960.w8.b16", !107, i64 0}
!107 = !{!"0x600002f2c960.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x600002f28cc0.w8.b16", !110, i64 0}
!110 = !{!"0x600002f28cc0.w16.b16", !111, i64 0}
!111 = !{!"0x600002f28cc0.w32.b0", !112, i64 0}
!112 = !{!"0x600002f28cc0.w64.b0", !113, i64 0}
!113 = !{!"0x600002f28cc0.w128.b0", !114, i64 0}
!114 = !{!"0x600002f28cc0.w256.b0", !115, i64 0}
!115 = !{!"0x600002f28cc0.w512.b0", !116, i64 0}
!116 = !{!"0x600002f28cc0.w1024.b0", !117, i64 0}
!117 = !{!"0x600002f28cc0", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x600002f28cc0.w8.b8", !120, i64 0}
!120 = !{!"0x600002f28cc0.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x600002f28cc0.w8.b0", !120, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x600002f2bfc0.w8.b0", !125, i64 0}
!125 = !{!"0x600002f2bfc0.w16.b0", !126, i64 0}
!126 = !{!"0x600002f2bfc0.w32.b0", !127, i64 0}
!127 = !{!"0x600002f2bfc0.w64.b0", !128, i64 0}
!128 = !{!"0x600002f2bfc0.w128.b0", !129, i64 0}
!129 = !{!"0x600002f2bfc0.w256.b0", !130, i64 0}
!130 = !{!"0x600002f2bfc0.w512.b0", !131, i64 0}
!131 = !{!"0x600002f2bfc0.w1024.b0", !132, i64 0}
!132 = !{!"0x600002f2bfc0", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x600002f2bfc0.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x600002f2bfc0.w8.b16", !137, i64 0}
!137 = !{!"0x600002f2bfc0.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x600002f2aca0.w8.b16", !140, i64 0}
!140 = !{!"0x600002f2aca0.w16.b16", !141, i64 0}
!141 = !{!"0x600002f2aca0.w32.b0", !142, i64 0}
!142 = !{!"0x600002f2aca0.w64.b0", !143, i64 0}
!143 = !{!"0x600002f2aca0.w128.b0", !144, i64 0}
!144 = !{!"0x600002f2aca0.w256.b0", !145, i64 0}
!145 = !{!"0x600002f2aca0.w512.b0", !146, i64 0}
!146 = !{!"0x600002f2aca0.w1024.b0", !147, i64 0}
!147 = !{!"0x600002f2aca0", !28, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x600002f2aca0.w8.b8", !150, i64 0}
!150 = !{!"0x600002f2aca0.w16.b0", !141, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x600002f29d40.w8.b0", !153, i64 0}
!153 = !{!"0x600002f29d40.w16.b0", !154, i64 0}
!154 = !{!"0x600002f29d40.w32.b0", !155, i64 0}
!155 = !{!"0x600002f29d40.w64.b0", !156, i64 0}
!156 = !{!"0x600002f29d40.w128.b0", !157, i64 0}
!157 = !{!"0x600002f29d40.w256.b0", !158, i64 0}
!158 = !{!"0x600002f29d40.w512.b0", !159, i64 0}
!159 = !{!"0x600002f29d40.w1024.b0", !160, i64 0}
!160 = !{!"0x600002f29d40", !28, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"0x600002f29d40.w8.b8", !153, i64 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"0x600002f29d40.w8.b16", !165, i64 0}
!165 = !{!"0x600002f29d40.w16.b16", !154, i64 0}
!166 = !{!167, !167, i64 0}
!167 = !{!"0x600002f131b0.w8.b16", !168, i64 0}
!168 = !{!"0x600002f131b0.w16.b16", !169, i64 0}
!169 = !{!"0x600002f131b0.w32.b0", !170, i64 0}
!170 = !{!"0x600002f131b0.w64.b0", !171, i64 0}
!171 = !{!"0x600002f131b0.w128.b0", !172, i64 0}
!172 = !{!"0x600002f131b0.w256.b0", !173, i64 0}
!173 = !{!"0x600002f131b0.w512.b0", !174, i64 0}
!174 = !{!"0x600002f131b0.w1024.b0", !175, i64 0}
!175 = !{!"0x600002f131b0", !28, i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"0x600002f131b0.w8.b8", !178, i64 0}
!178 = !{!"0x600002f131b0.w16.b0", !169, i64 0}
!179 = !{!180, !180, i64 0}
!180 = !{!"0x600002f131b0.w8.b0", !178, i64 0}
!181 = !{!182, !182, i64 0}
!182 = !{!"0x600002f2d3e0.w8.b0", !183, i64 0}
!183 = !{!"0x600002f2d3e0.w16.b0", !184, i64 0}
!184 = !{!"0x600002f2d3e0.w32.b0", !185, i64 0}
!185 = !{!"0x600002f2d3e0.w64.b0", !186, i64 0}
!186 = !{!"0x600002f2d3e0.w128.b0", !187, i64 0}
!187 = !{!"0x600002f2d3e0.w256.b0", !188, i64 0}
!188 = !{!"0x600002f2d3e0.w512.b0", !189, i64 0}
!189 = !{!"0x600002f2d3e0.w1024.b0", !190, i64 0}
!190 = !{!"0x600002f2d3e0", !28, i64 0}
!191 = !{!192, !192, i64 0}
!192 = !{!"0x600002f2d3e0.w8.b8", !183, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x600002f23660.w8.b8", !195, i64 0}
!195 = !{!"0x600002f23660.w16.b0", !196, i64 0}
!196 = !{!"0x600002f23660.w32.b0", !197, i64 0}
!197 = !{!"0x600002f23660.w64.b0", !198, i64 0}
!198 = !{!"0x600002f23660.w128.b0", !199, i64 0}
!199 = !{!"0x600002f23660.w256.b0", !200, i64 0}
!200 = !{!"0x600002f23660.w512.b0", !201, i64 0}
!201 = !{!"0x600002f23660.w1024.b0", !202, i64 0}
!202 = !{!"0x600002f23660", !28, i64 0}
!203 = !{!204, !204, i64 0}
!204 = !{!"0x600002f39b00.w8.b0", !205, i64 0}
!205 = !{!"0x600002f39b00.w16.b0", !206, i64 0}
!206 = !{!"0x600002f39b00.w32.b0", !207, i64 0}
!207 = !{!"0x600002f39b00.w64.b0", !208, i64 0}
!208 = !{!"0x600002f39b00.w128.b0", !209, i64 0}
!209 = !{!"0x600002f39b00.w256.b0", !210, i64 0}
!210 = !{!"0x600002f39b00.w512.b0", !211, i64 0}
!211 = !{!"0x600002f39b00.w1024.b0", !212, i64 0}
!212 = !{!"0x600002f39b00", !28, i64 0}
!213 = !{!214, !214, i64 0}
!214 = !{!"0x600002f39b00.w8.b8", !205, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x600002fc0150.w8.b8", !217, i64 0}
!217 = !{!"0x600002fc0150.w16.b0", !218, i64 0}
!218 = !{!"0x600002fc0150.w32.b0", !219, i64 0}
!219 = !{!"0x600002fc0150.w64.b0", !220, i64 0}
!220 = !{!"0x600002fc0150.w128.b0", !221, i64 0}
!221 = !{!"0x600002fc0150.w256.b0", !222, i64 0}
!222 = !{!"0x600002fc0150.w512.b0", !223, i64 0}
!223 = !{!"0x600002fc0150.w1024.b0", !224, i64 0}
!224 = !{!"0x600002fc0150", !28, i64 0}
!225 = !{!226, !226, i64 0}
!226 = !{!"0x600002fc12f0.w8.b0", !227, i64 0}
!227 = !{!"0x600002fc12f0.w16.b0", !228, i64 0}
!228 = !{!"0x600002fc12f0.w32.b0", !229, i64 0}
!229 = !{!"0x600002fc12f0.w64.b0", !230, i64 0}
!230 = !{!"0x600002fc12f0.w128.b0", !231, i64 0}
!231 = !{!"0x600002fc12f0.w256.b0", !232, i64 0}
!232 = !{!"0x600002fc12f0.w512.b0", !233, i64 0}
!233 = !{!"0x600002fc12f0.w1024.b0", !234, i64 0}
!234 = !{!"0x600002fc12f0", !28, i64 0}
!235 = !{!236, !236, i64 0}
!236 = !{!"0x600002fc12f0.w8.b8", !227, i64 0}
!237 = !{!238, !238, i64 0}
!238 = !{!"0x600002fc1cb0.w8.b8", !239, i64 0}
!239 = !{!"0x600002fc1cb0.w16.b0", !240, i64 0}
!240 = !{!"0x600002fc1cb0.w32.b0", !241, i64 0}
!241 = !{!"0x600002fc1cb0.w64.b0", !242, i64 0}
!242 = !{!"0x600002fc1cb0.w128.b0", !243, i64 0}
!243 = !{!"0x600002fc1cb0.w256.b0", !244, i64 0}
!244 = !{!"0x600002fc1cb0.w512.b0", !245, i64 0}
!245 = !{!"0x600002fc1cb0.w1024.b0", !246, i64 0}
!246 = !{!"0x600002fc1cb0", !28, i64 0}
!247 = !{i32 -1, i32 1}
!248 = distinct !DISubprogram(name: "qgemm_lut_t1_int8_m8192_k4096_n1_b2_compute_", scope: !1, file: !1, type: !249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{!14, !14, !77, !72, !82, !82, !82, !82}
!251 = !{!252, !253, !254, !255, !256, !257, !258}
!252 = !DILocalVariable(name: "dev_id", arg: 1, scope: !248, file: !1, type: !14)
!253 = !DILocalVariable(name: "LUT", arg: 2, scope: !248, file: !1, type: !77)
!254 = !DILocalVariable(name: "A", arg: 3, scope: !248, file: !1, type: !72)
!255 = !DILocalVariable(name: "Scales", arg: 4, scope: !248, file: !1, type: !82)
!256 = !DILocalVariable(name: "LUT_Scales", arg: 5, scope: !248, file: !1, type: !82)
!257 = !DILocalVariable(name: "LUT_Biases", arg: 6, scope: !248, file: !1, type: !82)
!258 = !DILocalVariable(name: "C", arg: 7, scope: !248, file: !1, type: !82)
!259 = !DILocation(line: 0, scope: !248)
!260 = !DILocalVariable(name: "CBits", scope: !248, file: !1, type: !82)
!261 = !DILocalVariable(name: "C.global", scope: !248, file: !1, type: !82)
!262 = !DILocalVariable(name: "m.outer", scope: !248, file: !1, type: !14)
!263 = !DILocalVariable(name: "k.outer", scope: !248, file: !1, type: !14)
!264 = !{!265, !265, i64 0}
!265 = !{!"__fp16", !266, i64 0}
!266 = !{!"omnipotent char", !267, i64 0}
!267 = !{!"Simple C++ TBAA"}
!268 = distinct !{!268, !269}
!269 = !{!"llvm.loop.mustprogress"}
!270 = !DILocalVariable(name: "m.inner.outer", scope: !248, file: !1, type: !14)
!271 = !DILocalVariable(name: "m.c.outer", scope: !248, file: !1, type: !14)
!272 = !DILocalVariable(name: "cse_var_2", scope: !248, file: !1, type: !14)
!273 = !DILocalVariable(name: "cse_var_1", scope: !248, file: !1, type: !14)
!274 = !{!275, !275, i64 0}
!275 = !{!"0x600002f29350", !28, i64 0}
!276 = !{!277, !277, i64 0}
!277 = !{!"0x600002f2e880", !28, i64 0}
!278 = !DILocalVariable(name: "cse_var_4", scope: !248, file: !1, type: !14)
!279 = !DILocalVariable(name: "cse_var_3", scope: !248, file: !1, type: !14)
!280 = !{!281, !281, i64 0}
!281 = !{!"0x600002f2fae0", !28, i64 0}
