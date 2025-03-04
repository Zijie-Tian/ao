; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-linux-gnu"

%0 = type { i32*, i32 }
%closure_loop_parallel_m.outer = type { i8*, i8*, half*, half*, half*, half* }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
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
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @qgemm_lut_t4_int8_m8192_k4096_n1_b2(i8* noalias readonly %args, i32* noalias readonly %arg_type_ids, i32 %num_args, i8* noalias nocapture readnone %out_ret_value, i32* noalias nocapture readnone %out_ret_tcode, i8* noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !15 {
entry:
  call void @llvm.dbg.value(metadata i8* %args, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32* %arg_type_ids, metadata !23, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %out_ret_value, metadata !25, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32* %out_ret_tcode, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %resource_handle, metadata !27, metadata !DIExpression()), !dbg !28
  %0 = icmp eq i32 %num_args, 6, !dbg !28
  br i1 %0, label %assert_end, label %assert_fail, !dbg !28, !prof !29

common.ret:                                       ; preds = %assert_end162, %assert_fail161, %assert_fail159, %assert_fail157, %assert_fail155, %assert_fail153, %assert_fail149, %assert_fail147, %assert_fail145, %assert_fail143, %assert_fail141, %assert_fail139, %assert_fail137, %assert_fail135, %assert_fail131, %assert_fail129, %assert_fail127, %assert_fail125, %assert_fail123, %assert_fail121, %assert_fail119, %assert_fail117, %assert_fail113, %assert_fail111, %assert_fail109, %assert_fail107, %assert_fail105, %assert_fail103, %assert_fail101, %assert_fail99, %assert_fail95, %assert_fail93, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail83, %assert_fail81, %assert_fail79, %assert_fail75, %assert_fail73, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail61, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail49, %assert_fail47, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail93 ], [ -1, %assert_fail95 ], [ -1, %assert_fail99 ], [ -1, %assert_fail101 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ -1, %assert_fail107 ], [ -1, %assert_fail109 ], [ -1, %assert_fail111 ], [ -1, %assert_fail113 ], [ -1, %assert_fail117 ], [ -1, %assert_fail119 ], [ -1, %assert_fail121 ], [ -1, %assert_fail123 ], [ -1, %assert_fail125 ], [ -1, %assert_fail127 ], [ -1, %assert_fail129 ], [ -1, %assert_fail131 ], [ -1, %assert_fail135 ], [ -1, %assert_fail137 ], [ -1, %assert_fail139 ], [ -1, %assert_fail141 ], [ -1, %assert_fail143 ], [ -1, %assert_fail145 ], [ -1, %assert_fail147 ], [ -1, %assert_fail149 ], [ -1, %assert_fail153 ], [ -1, %assert_fail155 ], [ -1, %assert_fail157 ], [ -1, %assert_fail159 ], [ -1, %assert_fail161 ], [ %385, %assert_end162 ]
  ret i32 %common.ret.op, !dbg !28

assert_fail:                                      ; preds = %entry
  %1 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %1(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end:                                       ; preds = %entry
  %.not = icmp eq i8* %args, null, !dbg !28
  br i1 %.not, label %assert_fail1, label %assert_end2, !dbg !28, !prof !33

assert_fail1:                                     ; preds = %assert_end
  %2 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %2(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end2:                                      ; preds = %assert_end
  %.not169 = icmp eq i32* %arg_type_ids, null, !dbg !28
  br i1 %.not169, label %assert_fail3, label %assert_end4, !dbg !28, !prof !33

assert_fail3:                                     ; preds = %assert_end2
  %3 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %3(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2
  %A.code = load i32, i32* %arg_type_ids, align 4, !dbg !28, !tbaa !34
  call void @llvm.dbg.declare(metadata i32 %A.code, metadata !45, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %A.code, metadata !45, metadata !DIExpression()), !dbg !28
  switch i32 %A.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !28

assert_fail5:                                     ; preds = %assert_end4
  %4 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %4(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.3, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %5 = getelementptr inbounds i32, i32* %arg_type_ids, i64 1, !dbg !28
  %LUT.code = load i32, i32* %5, align 4, !dbg !28, !tbaa !46
  call void @llvm.dbg.declare(metadata i32 %LUT.code, metadata !48, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %LUT.code, metadata !48, metadata !DIExpression()), !dbg !28
  switch i32 %LUT.code, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ], !dbg !28

assert_fail7:                                     ; preds = %assert_end6
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %6(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str.4, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %7 = getelementptr inbounds i32, i32* %arg_type_ids, i64 2, !dbg !28
  %Scales.code = load i32, i32* %7, align 4, !dbg !28, !tbaa !49
  call void @llvm.dbg.declare(metadata i32 %Scales.code, metadata !52, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %Scales.code, metadata !52, metadata !DIExpression()), !dbg !28
  switch i32 %Scales.code, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ], !dbg !28

assert_fail9:                                     ; preds = %assert_end8
  %8 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %8(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.5, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  %9 = getelementptr inbounds i32, i32* %arg_type_ids, i64 3, !dbg !28
  %LUT_Scales.code = load i32, i32* %9, align 4, !dbg !28, !tbaa !53
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !55, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !55, metadata !DIExpression()), !dbg !28
  switch i32 %LUT_Scales.code, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ], !dbg !28

assert_fail11:                                    ; preds = %assert_end10
  %10 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %10(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.6, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %11 = getelementptr inbounds i32, i32* %arg_type_ids, i64 4, !dbg !28
  %LUT_Biases.code = load i32, i32* %11, align 4, !dbg !28, !tbaa !56
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !60, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !60, metadata !DIExpression()), !dbg !28
  switch i32 %LUT_Biases.code, label %assert_fail13 [
    i32 13, label %assert_end14
    i32 7, label %assert_end14
    i32 4, label %assert_end14
    i32 3, label %assert_end14
  ], !dbg !28

assert_fail13:                                    ; preds = %assert_end12
  %12 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %12(i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.7, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12, %assert_end12, %assert_end12, %assert_end12
  %13 = getelementptr inbounds i32, i32* %arg_type_ids, i64 5, !dbg !28
  %C.code = load i32, i32* %13, align 4, !dbg !28, !tbaa !61
  call void @llvm.dbg.declare(metadata i32 %C.code, metadata !63, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %C.code, metadata !63, metadata !DIExpression()), !dbg !28
  switch i32 %C.code, label %assert_fail15 [
    i32 13, label %assert_end16
    i32 7, label %assert_end16
    i32 4, label %assert_end16
    i32 3, label %assert_end16
  ], !dbg !28

assert_fail15:                                    ; preds = %assert_end14
  %14 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %14(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.8, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14, %assert_end14, %assert_end14, %assert_end14
  %15 = bitcast i8* %args to i8**, !dbg !28
  %A = load i8*, i8** %15, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %A, metadata !64, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %A, metadata !64, metadata !DIExpression()), !dbg !28
  %16 = getelementptr inbounds i8, i8* %args, i64 8, !dbg !28
  %17 = bitcast i8* %16 to i8**, !dbg !28
  %LUT = load i8*, i8** %17, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT, metadata !65, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT, metadata !65, metadata !DIExpression()), !dbg !28
  %18 = getelementptr inbounds i8, i8* %args, i64 16, !dbg !28
  %19 = bitcast i8* %18 to i8**, !dbg !28
  %Scales = load i8*, i8** %19, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %Scales, metadata !66, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %Scales, metadata !66, metadata !DIExpression()), !dbg !28
  %20 = getelementptr inbounds i8, i8* %args, i64 24, !dbg !28
  %21 = bitcast i8* %20 to i8**, !dbg !28
  %LUT_Scales = load i8*, i8** %21, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT_Scales, metadata !67, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT_Scales, metadata !67, metadata !DIExpression()), !dbg !28
  %22 = getelementptr inbounds i8, i8* %args, i64 32, !dbg !28
  %23 = bitcast i8* %22 to i8**, !dbg !28
  %LUT_Biases = load i8*, i8** %23, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT_Biases, metadata !68, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT_Biases, metadata !68, metadata !DIExpression()), !dbg !28
  %24 = getelementptr inbounds i8, i8* %args, i64 40, !dbg !28
  %25 = bitcast i8* %24 to i8**, !dbg !28
  %C = load i8*, i8** %25, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %C, metadata !69, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %C, metadata !69, metadata !DIExpression()), !dbg !28
  %.not170 = icmp eq i8* %A, null, !dbg !28
  br i1 %.not170, label %assert_fail17, label %assert_end18, !dbg !28, !prof !33

assert_fail17:                                    ; preds = %assert_end16
  %26 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %26(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.9, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %27 = getelementptr inbounds i8, i8* %A, i64 16, !dbg !28
  %28 = bitcast i8* %27 to i32*, !dbg !28
  %29 = load i32, i32* %28, align 4, !dbg !28
  %30 = icmp eq i32 %29, 3, !dbg !28
  br i1 %30, label %assert_end20, label %assert_fail19, !dbg !28, !prof !29

assert_fail19:                                    ; preds = %assert_end18
  %31 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %31(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.10, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %32 = getelementptr inbounds i8, i8* %A, i64 24, !dbg !28
  %33 = bitcast i8* %32 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape = load i64*, i64** %33, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, metadata !70, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, metadata !70, metadata !DIExpression()), !dbg !28
  %34 = getelementptr inbounds i8, i8* %A, i64 32, !dbg !28
  %35 = bitcast i8* %34 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides = load i64*, i64** %35, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, metadata !73, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, metadata !73, metadata !DIExpression()), !dbg !28
  %36 = getelementptr inbounds i8, i8* %A, i64 12, !dbg !28
  %37 = bitcast i8* %36 to i32*, !dbg !28
  %dev_id = load i32, i32* %37, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !74, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !74, metadata !DIExpression()), !dbg !28
  %38 = bitcast i8* %A to i8**, !dbg !28
  %A164 = load i8*, i8** %38, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %A164, metadata !75, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %A164, metadata !75, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(i8* %A164, i64 64) ], !dbg !28
  %.not171 = icmp eq i8* %LUT, null, !dbg !28
  br i1 %.not171, label %assert_fail23, label %assert_end24, !dbg !28, !prof !33

assert_fail23:                                    ; preds = %assert_end20
  %39 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %39(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.11, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end24:                                     ; preds = %assert_end20
  %40 = getelementptr inbounds i8, i8* %LUT, i64 16, !dbg !28
  %41 = bitcast i8* %40 to i32*, !dbg !28
  %42 = load i32, i32* %41, align 4, !dbg !28
  %43 = icmp eq i32 %42, 3, !dbg !28
  br i1 %43, label %assert_end26, label %assert_fail25, !dbg !28, !prof !29

assert_fail25:                                    ; preds = %assert_end24
  %44 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %44(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.12, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %45 = getelementptr inbounds i8, i8* %LUT, i64 24, !dbg !28
  %46 = bitcast i8* %45 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape = load i64*, i64** %46, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, metadata !78, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, metadata !78, metadata !DIExpression()), !dbg !28
  %47 = getelementptr inbounds i8, i8* %LUT, i64 32, !dbg !28
  %48 = bitcast i8* %47 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides = load i64*, i64** %48, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, metadata !79, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, metadata !79, metadata !DIExpression()), !dbg !28
  %49 = bitcast i8* %LUT to i8**, !dbg !28
  %LUT163 = load i8*, i8** %49, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT163, metadata !80, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT163, metadata !80, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(i8* %LUT163, i64 64) ], !dbg !28
  %.not172 = icmp eq i8* %Scales, null, !dbg !28
  br i1 %.not172, label %assert_fail29, label %assert_end30, !dbg !28, !prof !33

assert_fail29:                                    ; preds = %assert_end26
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %50(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.13, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end30:                                     ; preds = %assert_end26
  %51 = getelementptr inbounds i8, i8* %Scales, i64 16, !dbg !28
  %52 = bitcast i8* %51 to i32*, !dbg !28
  %53 = load i32, i32* %52, align 4, !dbg !28
  %54 = icmp eq i32 %53, 3, !dbg !28
  br i1 %54, label %assert_end32, label %assert_fail31, !dbg !28, !prof !29

assert_fail31:                                    ; preds = %assert_end30
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %55(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.14, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %56 = getelementptr inbounds i8, i8* %Scales, i64 24, !dbg !28
  %57 = bitcast i8* %56 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape = load i64*, i64** %57, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, metadata !83, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, metadata !83, metadata !DIExpression()), !dbg !28
  %58 = getelementptr inbounds i8, i8* %Scales, i64 32, !dbg !28
  %59 = bitcast i8* %58 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides = load i64*, i64** %59, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, metadata !84, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, metadata !84, metadata !DIExpression()), !dbg !28
  %60 = bitcast i8* %Scales to half**, !dbg !28
  %Scales_void_ptr173 = load half*, half** %60, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %Scales_void_ptr173, metadata !85, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %Scales_void_ptr173, metadata !85, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %Scales_void_ptr173, i64 64) ], !dbg !28
  %.not174 = icmp eq i8* %LUT_Scales, null, !dbg !28
  br i1 %.not174, label %assert_fail35, label %assert_end36, !dbg !28, !prof !33

assert_fail35:                                    ; preds = %assert_end32
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %61(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.15, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end36:                                     ; preds = %assert_end32
  %62 = getelementptr inbounds i8, i8* %LUT_Scales, i64 16, !dbg !28
  %63 = bitcast i8* %62 to i32*, !dbg !28
  %64 = load i32, i32* %63, align 4, !dbg !28
  %65 = icmp eq i32 %64, 2, !dbg !28
  br i1 %65, label %assert_end38, label %assert_fail37, !dbg !28, !prof !29

assert_fail37:                                    ; preds = %assert_end36
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %66(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.16, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %67 = getelementptr inbounds i8, i8* %LUT_Scales, i64 24, !dbg !28
  %68 = bitcast i8* %67 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape = load i64*, i64** %68, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape, metadata !88, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape, metadata !88, metadata !DIExpression()), !dbg !28
  %69 = getelementptr inbounds i8, i8* %LUT_Scales, i64 32, !dbg !28
  %70 = bitcast i8* %69 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides = load i64*, i64** %70, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides, metadata !89, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides, metadata !89, metadata !DIExpression()), !dbg !28
  %71 = bitcast i8* %LUT_Scales to half**, !dbg !28
  %LUT_Scales_void_ptr175 = load half*, half** %71, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Scales_void_ptr175, metadata !90, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Scales_void_ptr175, metadata !90, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %LUT_Scales_void_ptr175, i64 64) ], !dbg !28
  %.not176 = icmp eq i8* %LUT_Biases, null, !dbg !28
  br i1 %.not176, label %assert_fail41, label %assert_end42, !dbg !28, !prof !33

assert_fail41:                                    ; preds = %assert_end38
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %72(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.17, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end42:                                     ; preds = %assert_end38
  %73 = getelementptr inbounds i8, i8* %LUT_Biases, i64 16, !dbg !28
  %74 = bitcast i8* %73 to i32*, !dbg !28
  %75 = load i32, i32* %74, align 4, !dbg !28
  %76 = icmp eq i32 %75, 2, !dbg !28
  br i1 %76, label %assert_end44, label %assert_fail43, !dbg !28, !prof !29

assert_fail43:                                    ; preds = %assert_end42
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %77(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.18, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %78 = getelementptr inbounds i8, i8* %LUT_Biases, i64 24, !dbg !28
  %79 = bitcast i8* %78 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape = load i64*, i64** %79, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape, metadata !91, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape, metadata !91, metadata !DIExpression()), !dbg !28
  %80 = getelementptr inbounds i8, i8* %LUT_Biases, i64 32, !dbg !28
  %81 = bitcast i8* %80 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides = load i64*, i64** %81, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides, metadata !92, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides, metadata !92, metadata !DIExpression()), !dbg !28
  %82 = bitcast i8* %LUT_Biases to half**, !dbg !28
  %LUT_Biases_void_ptr177 = load half*, half** %82, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Biases_void_ptr177, metadata !93, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Biases_void_ptr177, metadata !93, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %LUT_Biases_void_ptr177, i64 64) ], !dbg !28
  %.not178 = icmp eq i8* %C, null, !dbg !28
  br i1 %.not178, label %assert_fail47, label %assert_end48, !dbg !28, !prof !33

assert_fail47:                                    ; preds = %assert_end44
  %83 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %83(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.19, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end48:                                     ; preds = %assert_end44
  %84 = getelementptr inbounds i8, i8* %C, i64 16, !dbg !28
  %85 = bitcast i8* %84 to i32*, !dbg !28
  %86 = load i32, i32* %85, align 4, !dbg !28
  %87 = icmp eq i32 %86, 2, !dbg !28
  br i1 %87, label %assert_end50, label %assert_fail49, !dbg !28, !prof !29

assert_fail49:                                    ; preds = %assert_end48
  %88 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %88(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.20, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end50:                                     ; preds = %assert_end48
  %89 = getelementptr inbounds i8, i8* %C, i64 24, !dbg !28
  %90 = bitcast i8* %89 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape = load i64*, i64** %90, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape, metadata !94, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape, metadata !94, metadata !DIExpression()), !dbg !28
  %91 = getelementptr inbounds i8, i8* %C, i64 32, !dbg !28
  %92 = bitcast i8* %91 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides = load i64*, i64** %92, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides, metadata !95, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides, metadata !95, metadata !DIExpression()), !dbg !28
  %93 = bitcast i8* %C to half**, !dbg !28
  %C_void_ptr179 = load half*, half** %93, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %C_void_ptr179, metadata !96, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %C_void_ptr179, metadata !96, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %C_void_ptr179, i64 64) ], !dbg !28
  %94 = getelementptr inbounds i8, i8* %A, i64 20, !dbg !28
  %95 = load i8, i8* %94, align 1, !dbg !28
  %96 = icmp eq i8 %95, 1, !dbg !28
  %97 = getelementptr inbounds i8, i8* %A, i64 21, !dbg !28
  %98 = load i8, i8* %97, align 1, !dbg !28
  %99 = icmp eq i8 %98, 8, !dbg !28
  %100 = and i1 %96, %99, !dbg !28
  %101 = getelementptr inbounds i8, i8* %A, i64 22, !dbg !28
  %102 = bitcast i8* %101 to i16*, !dbg !28
  %103 = load i16, i16* %102, align 2, !dbg !28
  %104 = icmp eq i16 %103, 1, !dbg !28
  %105 = and i1 %100, %104, !dbg !28
  br i1 %105, label %assert_end54, label %assert_fail53, !dbg !28, !prof !29

assert_fail53:                                    ; preds = %assert_end50
  %106 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %106(i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.21, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end54:                                     ; preds = %assert_end50
  %107 = load i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, align 8, !dbg !28, !tbaa !97
  %108 = trunc i64 %107 to i32, !dbg !28
  %109 = icmp eq i32 %108, 32, !dbg !28
  br i1 %109, label %assert_end56, label %assert_fail55, !dbg !28, !prof !29

assert_fail55:                                    ; preds = %assert_end54
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %110(i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.22, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %111 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, i64 1, !dbg !28
  %112 = load i64, i64* %111, align 8, !dbg !28, !tbaa !107
  %113 = trunc i64 %112 to i32, !dbg !28
  %114 = icmp eq i32 %113, 1024, !dbg !28
  br i1 %114, label %assert_end58, label %assert_fail57, !dbg !28, !prof !29

assert_fail57:                                    ; preds = %assert_end56
  %115 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %115(i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.23, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %116 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape, i64 2, !dbg !28
  %117 = load i64, i64* %116, align 8, !dbg !28, !tbaa !109
  %118 = trunc i64 %117 to i32, !dbg !28
  %119 = icmp eq i32 %118, 128, !dbg !28
  br i1 %119, label %assert_end60, label %assert_fail59, !dbg !28, !prof !29

assert_fail59:                                    ; preds = %assert_end58
  %120 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %120(i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.24, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not180 = icmp eq i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, null, !dbg !28
  br i1 %.not180, label %if_end, label %if_then, !dbg !28, !prof !33

if_then:                                          ; preds = %assert_end60
  %121 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, i64 2, !dbg !28
  %122 = load i64, i64* %121, align 8, !dbg !28, !tbaa !112
  %123 = trunc i64 %122 to i32, !dbg !28
  %124 = icmp eq i32 %123, 1, !dbg !28
  %125 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, i64 1, !dbg !28
  %126 = load i64, i64* %125, align 8, !dbg !28, !tbaa !122
  %127 = trunc i64 %126 to i32, !dbg !28
  %128 = icmp eq i32 %127, 128, !dbg !28
  %129 = and i1 %124, %128, !dbg !28
  %130 = load i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides, align 8, !dbg !28, !tbaa !125
  %131 = trunc i64 %130 to i32, !dbg !28
  %132 = icmp eq i32 %131, 131072, !dbg !28
  %133 = and i1 %129, %132, !dbg !28
  br i1 %133, label %if_end, label %assert_fail61, !dbg !28, !prof !29

if_end:                                           ; preds = %if_then, %assert_end60
  %134 = getelementptr inbounds i8, i8* %A, i64 40, !dbg !28
  %135 = bitcast i8* %134 to i64*, !dbg !28
  %136 = load i64, i64* %135, align 8, !dbg !28
  %137 = icmp eq i64 %136, 0, !dbg !28
  br i1 %137, label %assert_end64, label %assert_fail63, !dbg !28, !prof !29

assert_fail61:                                    ; preds = %if_then
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %138(i8* getelementptr inbounds ([318 x i8], [318 x i8]* @.str.25, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail63:                                    ; preds = %if_end
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %139(i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.26, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end64:                                     ; preds = %if_end
  %140 = getelementptr inbounds i8, i8* %A, i64 8, !dbg !28
  %141 = bitcast i8* %140 to i32*, !dbg !28
  %142 = load i32, i32* %141, align 4, !dbg !28
  %143 = icmp eq i32 %142, 1, !dbg !28
  br i1 %143, label %assert_end66, label %assert_fail65, !dbg !28, !prof !29

assert_fail65:                                    ; preds = %assert_end64
  %144 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %144(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.27, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %.not181 = icmp eq i8* %A164, null, !dbg !28
  br i1 %.not181, label %assert_fail67, label %assert_end68, !dbg !28, !prof !33

assert_fail67:                                    ; preds = %assert_end66
  %145 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %145(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.28, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %146 = getelementptr inbounds i8, i8* %LUT, i64 20, !dbg !28
  %147 = load i8, i8* %146, align 1, !dbg !28
  %148 = icmp eq i8 %147, 0, !dbg !28
  %149 = getelementptr inbounds i8, i8* %LUT, i64 21, !dbg !28
  %150 = load i8, i8* %149, align 1, !dbg !28
  %151 = icmp eq i8 %150, 8, !dbg !28
  %152 = and i1 %148, %151, !dbg !28
  %153 = getelementptr inbounds i8, i8* %LUT, i64 22, !dbg !28
  %154 = bitcast i8* %153 to i16*, !dbg !28
  %155 = load i16, i16* %154, align 2, !dbg !28
  %156 = icmp eq i16 %155, 1, !dbg !28
  %157 = and i1 %152, %156, !dbg !28
  br i1 %157, label %assert_end70, label %assert_fail69, !dbg !28, !prof !29

assert_fail69:                                    ; preds = %assert_end68
  %158 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %158(i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.29, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %159 = load i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, align 8, !dbg !28, !tbaa !127
  %160 = trunc i64 %159 to i32, !dbg !28
  %161 = icmp eq i32 %160, 1, !dbg !28
  br i1 %161, label %assert_end72, label %assert_fail71, !dbg !28, !prof !29

assert_fail71:                                    ; preds = %assert_end70
  %162 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %162(i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.30, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %163 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, i64 1, !dbg !28
  %164 = load i64, i64* %163, align 8, !dbg !28, !tbaa !137
  %165 = trunc i64 %164 to i32, !dbg !28
  %166 = icmp eq i32 %165, 1024, !dbg !28
  br i1 %166, label %assert_end74, label %assert_fail73, !dbg !28, !prof !29

assert_fail73:                                    ; preds = %assert_end72
  %167 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %167(i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.31, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %168 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape, i64 2, !dbg !28
  %169 = load i64, i64* %168, align 8, !dbg !28, !tbaa !139
  %170 = trunc i64 %169 to i32, !dbg !28
  %171 = icmp eq i32 %170, 16, !dbg !28
  br i1 %171, label %assert_end76, label %assert_fail75, !dbg !28, !prof !29

assert_fail75:                                    ; preds = %assert_end74
  %172 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %172(i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.32, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not182 = icmp eq i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, null, !dbg !28
  br i1 %.not182, label %if_end78, label %if_then77, !dbg !28, !prof !33

if_then77:                                        ; preds = %assert_end76
  %173 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, i64 2, !dbg !28
  %174 = load i64, i64* %173, align 8, !dbg !28, !tbaa !142
  %175 = trunc i64 %174 to i32, !dbg !28
  %176 = icmp eq i32 %175, 1, !dbg !28
  %177 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides, i64 1, !dbg !28
  %178 = load i64, i64* %177, align 8, !dbg !28, !tbaa !152
  %179 = trunc i64 %178 to i32, !dbg !28
  %180 = icmp eq i32 %179, 16, !dbg !28
  %181 = and i1 %176, %180, !dbg !28
  br i1 %181, label %if_end78, label %assert_fail79, !dbg !28, !prof !29

if_end78:                                         ; preds = %if_then77, %assert_end76
  %182 = getelementptr inbounds i8, i8* %LUT, i64 40, !dbg !28
  %183 = bitcast i8* %182 to i64*, !dbg !28
  %184 = load i64, i64* %183, align 8, !dbg !28
  %185 = icmp eq i64 %184, 0, !dbg !28
  br i1 %185, label %assert_end82, label %assert_fail81, !dbg !28, !prof !29

assert_fail79:                                    ; preds = %if_then77
  %186 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %186(i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.33, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail81:                                    ; preds = %if_end78
  %187 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %187(i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.34, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end82:                                     ; preds = %if_end78
  %188 = getelementptr inbounds i8, i8* %LUT, i64 8, !dbg !28
  %189 = bitcast i8* %188 to i32*, !dbg !28
  %190 = load i32, i32* %189, align 4, !dbg !28
  %191 = icmp eq i32 %190, 1, !dbg !28
  br i1 %191, label %assert_end84, label %assert_fail83, !dbg !28, !prof !29

assert_fail83:                                    ; preds = %assert_end82
  %192 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %192(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.35, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %193 = getelementptr inbounds i8, i8* %LUT, i64 12, !dbg !28
  %194 = bitcast i8* %193 to i32*, !dbg !28
  %195 = load i32, i32* %194, align 4, !dbg !28
  %196 = icmp eq i32 %dev_id, %195, !dbg !28
  br i1 %196, label %assert_end86, label %assert_fail85, !dbg !28, !prof !29

assert_fail85:                                    ; preds = %assert_end84
  %197 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %197(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.36, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %.not183 = icmp eq i8* %LUT163, null, !dbg !28
  br i1 %.not183, label %assert_fail87, label %assert_end88, !dbg !28, !prof !33

assert_fail87:                                    ; preds = %assert_end86
  %198 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %198(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.37, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %199 = getelementptr inbounds i8, i8* %Scales, i64 20, !dbg !28
  %200 = load i8, i8* %199, align 1, !dbg !28
  %201 = icmp eq i8 %200, 2, !dbg !28
  %202 = getelementptr inbounds i8, i8* %Scales, i64 21, !dbg !28
  %203 = load i8, i8* %202, align 1, !dbg !28
  %204 = icmp eq i8 %203, 16, !dbg !28
  %205 = and i1 %201, %204, !dbg !28
  %206 = getelementptr inbounds i8, i8* %Scales, i64 22, !dbg !28
  %207 = bitcast i8* %206 to i16*, !dbg !28
  %208 = load i16, i16* %207, align 2, !dbg !28
  %209 = icmp eq i16 %208, 1, !dbg !28
  %210 = and i1 %205, %209, !dbg !28
  br i1 %210, label %assert_end90, label %assert_fail89, !dbg !28, !prof !29

assert_fail89:                                    ; preds = %assert_end88
  %211 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %211(i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.38, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %212 = load i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, align 8, !dbg !28, !tbaa !155
  %213 = trunc i64 %212 to i32, !dbg !28
  %214 = icmp eq i32 %213, 32, !dbg !28
  br i1 %214, label %assert_end92, label %assert_fail91, !dbg !28, !prof !29

assert_fail91:                                    ; preds = %assert_end90
  %215 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %215(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.39, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end92:                                     ; preds = %assert_end90
  %216 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, i64 1, !dbg !28
  %217 = load i64, i64* %216, align 8, !dbg !28, !tbaa !165
  %218 = trunc i64 %217 to i32, !dbg !28
  %219 = icmp eq i32 %218, 32, !dbg !28
  br i1 %219, label %assert_end94, label %assert_fail93, !dbg !28, !prof !29

assert_fail93:                                    ; preds = %assert_end92
  %220 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %220(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @.str.40, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end94:                                     ; preds = %assert_end92
  %221 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape, i64 2, !dbg !28
  %222 = load i64, i64* %221, align 8, !dbg !28, !tbaa !167
  %223 = trunc i64 %222 to i32, !dbg !28
  %224 = icmp eq i32 %223, 128, !dbg !28
  br i1 %224, label %assert_end96, label %assert_fail95, !dbg !28, !prof !29

assert_fail95:                                    ; preds = %assert_end94
  %225 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %225(i8* getelementptr inbounds ([258 x i8], [258 x i8]* @.str.41, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end96:                                     ; preds = %assert_end94
  %.not184 = icmp eq i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, null, !dbg !28
  br i1 %.not184, label %if_end98, label %if_then97, !dbg !28, !prof !33

if_then97:                                        ; preds = %assert_end96
  %226 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, i64 2, !dbg !28
  %227 = load i64, i64* %226, align 8, !dbg !28, !tbaa !170
  %228 = trunc i64 %227 to i32, !dbg !28
  %229 = icmp eq i32 %228, 1, !dbg !28
  %230 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, i64 1, !dbg !28
  %231 = load i64, i64* %230, align 8, !dbg !28, !tbaa !180
  %232 = trunc i64 %231 to i32, !dbg !28
  %233 = icmp eq i32 %232, 128, !dbg !28
  %234 = and i1 %229, %233, !dbg !28
  %235 = load i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides, align 8, !dbg !28, !tbaa !183
  %236 = trunc i64 %235 to i32, !dbg !28
  %237 = icmp eq i32 %236, 4096, !dbg !28
  %238 = and i1 %234, %237, !dbg !28
  br i1 %238, label %if_end98, label %assert_fail99, !dbg !28, !prof !29

if_end98:                                         ; preds = %if_then97, %assert_end96
  %239 = getelementptr inbounds i8, i8* %Scales, i64 40, !dbg !28
  %240 = bitcast i8* %239 to i64*, !dbg !28
  %241 = load i64, i64* %240, align 8, !dbg !28
  %242 = icmp eq i64 %241, 0, !dbg !28
  br i1 %242, label %assert_end102, label %assert_fail101, !dbg !28, !prof !29

assert_fail99:                                    ; preds = %if_then97
  %243 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %243(i8* getelementptr inbounds ([336 x i8], [336 x i8]* @.str.42, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail101:                                   ; preds = %if_end98
  %244 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %244(i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str.43, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end102:                                    ; preds = %if_end98
  %245 = getelementptr inbounds i8, i8* %Scales, i64 8, !dbg !28
  %246 = bitcast i8* %245 to i32*, !dbg !28
  %247 = load i32, i32* %246, align 4, !dbg !28
  %248 = icmp eq i32 %247, 1, !dbg !28
  br i1 %248, label %assert_end104, label %assert_fail103, !dbg !28, !prof !29

assert_fail103:                                   ; preds = %assert_end102
  %249 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %249(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.44, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %250 = getelementptr inbounds i8, i8* %Scales, i64 12, !dbg !28
  %251 = bitcast i8* %250 to i32*, !dbg !28
  %252 = load i32, i32* %251, align 4, !dbg !28
  %253 = icmp eq i32 %dev_id, %252, !dbg !28
  br i1 %253, label %assert_end106, label %assert_fail105, !dbg !28, !prof !29

assert_fail105:                                   ; preds = %assert_end104
  %254 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %254(i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.45, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  %.not185 = icmp eq half* %Scales_void_ptr173, null, !dbg !28
  br i1 %.not185, label %assert_fail107, label %assert_end108, !dbg !28, !prof !33

assert_fail107:                                   ; preds = %assert_end106
  %255 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %255(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.46, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %256 = getelementptr inbounds i8, i8* %LUT_Scales, i64 20, !dbg !28
  %257 = load i8, i8* %256, align 1, !dbg !28
  %258 = icmp eq i8 %257, 2, !dbg !28
  %259 = getelementptr inbounds i8, i8* %LUT_Scales, i64 21, !dbg !28
  %260 = load i8, i8* %259, align 1, !dbg !28
  %261 = icmp eq i8 %260, 16, !dbg !28
  %262 = and i1 %258, %261, !dbg !28
  %263 = getelementptr inbounds i8, i8* %LUT_Scales, i64 22, !dbg !28
  %264 = bitcast i8* %263 to i16*, !dbg !28
  %265 = load i16, i16* %264, align 2, !dbg !28
  %266 = icmp eq i16 %265, 1, !dbg !28
  %267 = and i1 %262, %266, !dbg !28
  br i1 %267, label %assert_end110, label %assert_fail109, !dbg !28, !prof !29

assert_fail109:                                   ; preds = %assert_end108
  %268 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %268(i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.47, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %269 = load i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape, align 8, !dbg !28, !tbaa !185
  %270 = trunc i64 %269 to i32, !dbg !28
  %271 = icmp eq i32 %270, 1, !dbg !28
  br i1 %271, label %assert_end112, label %assert_fail111, !dbg !28, !prof !29

assert_fail111:                                   ; preds = %assert_end110
  %272 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %272(i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.48, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end112:                                    ; preds = %assert_end110
  %273 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape, i64 1, !dbg !28
  %274 = load i64, i64* %273, align 8, !dbg !28, !tbaa !195
  %275 = trunc i64 %274 to i32, !dbg !28
  %276 = icmp eq i32 %275, 64, !dbg !28
  br i1 %276, label %assert_end114, label %assert_fail113, !dbg !28, !prof !29

assert_fail113:                                   ; preds = %assert_end112
  %277 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %277(i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.49, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end114:                                    ; preds = %assert_end112
  %.not186 = icmp eq i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides, null, !dbg !28
  br i1 %.not186, label %if_end116, label %if_then115, !dbg !28, !prof !33

if_then115:                                       ; preds = %assert_end114
  %278 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides, i64 1, !dbg !28
  %279 = load i64, i64* %278, align 8, !dbg !28, !tbaa !197
  %280 = trunc i64 %279 to i32, !dbg !28
  %281 = icmp eq i32 %280, 1, !dbg !28
  br i1 %281, label %if_end116, label %assert_fail117, !dbg !28, !prof !29

if_end116:                                        ; preds = %if_then115, %assert_end114
  %282 = getelementptr inbounds i8, i8* %LUT_Scales, i64 40, !dbg !28
  %283 = bitcast i8* %282 to i64*, !dbg !28
  %284 = load i64, i64* %283, align 8, !dbg !28
  %285 = icmp eq i64 %284, 0, !dbg !28
  br i1 %285, label %assert_end120, label %assert_fail119, !dbg !28, !prof !29

assert_fail117:                                   ; preds = %if_then115
  %286 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %286(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.50, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail119:                                   ; preds = %if_end116
  %287 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %287(i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str.51, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end120:                                    ; preds = %if_end116
  %288 = getelementptr inbounds i8, i8* %LUT_Scales, i64 8, !dbg !28
  %289 = bitcast i8* %288 to i32*, !dbg !28
  %290 = load i32, i32* %289, align 4, !dbg !28
  %291 = icmp eq i32 %290, 1, !dbg !28
  br i1 %291, label %assert_end122, label %assert_fail121, !dbg !28, !prof !29

assert_fail121:                                   ; preds = %assert_end120
  %292 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %292(i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.52, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end122:                                    ; preds = %assert_end120
  %293 = getelementptr inbounds i8, i8* %LUT_Scales, i64 12, !dbg !28
  %294 = bitcast i8* %293 to i32*, !dbg !28
  %295 = load i32, i32* %294, align 4, !dbg !28
  %296 = icmp eq i32 %dev_id, %295, !dbg !28
  br i1 %296, label %assert_end124, label %assert_fail123, !dbg !28, !prof !29

assert_fail123:                                   ; preds = %assert_end122
  %297 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %297(i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.53, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end124:                                    ; preds = %assert_end122
  %.not187 = icmp eq half* %LUT_Scales_void_ptr175, null, !dbg !28
  br i1 %.not187, label %assert_fail125, label %assert_end126, !dbg !28, !prof !33

assert_fail125:                                   ; preds = %assert_end124
  %298 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %298(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.54, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %299 = getelementptr inbounds i8, i8* %LUT_Biases, i64 20, !dbg !28
  %300 = load i8, i8* %299, align 1, !dbg !28
  %301 = icmp eq i8 %300, 2, !dbg !28
  %302 = getelementptr inbounds i8, i8* %LUT_Biases, i64 21, !dbg !28
  %303 = load i8, i8* %302, align 1, !dbg !28
  %304 = icmp eq i8 %303, 16, !dbg !28
  %305 = and i1 %301, %304, !dbg !28
  %306 = getelementptr inbounds i8, i8* %LUT_Biases, i64 22, !dbg !28
  %307 = bitcast i8* %306 to i16*, !dbg !28
  %308 = load i16, i16* %307, align 2, !dbg !28
  %309 = icmp eq i16 %308, 1, !dbg !28
  %310 = and i1 %305, %309, !dbg !28
  br i1 %310, label %assert_end128, label %assert_fail127, !dbg !28, !prof !29

assert_fail127:                                   ; preds = %assert_end126
  %311 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %311(i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.55, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %312 = load i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape, align 8, !dbg !28, !tbaa !207
  %313 = trunc i64 %312 to i32, !dbg !28
  %314 = icmp eq i32 %313, 1, !dbg !28
  br i1 %314, label %assert_end130, label %assert_fail129, !dbg !28, !prof !29

assert_fail129:                                   ; preds = %assert_end128
  %315 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %315(i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.56, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end130:                                    ; preds = %assert_end128
  %316 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape, i64 1, !dbg !28
  %317 = load i64, i64* %316, align 8, !dbg !28, !tbaa !217
  %318 = trunc i64 %317 to i32, !dbg !28
  %319 = icmp eq i32 %318, 64, !dbg !28
  br i1 %319, label %assert_end132, label %assert_fail131, !dbg !28, !prof !29

assert_fail131:                                   ; preds = %assert_end130
  %320 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %320(i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.57, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end132:                                    ; preds = %assert_end130
  %.not188 = icmp eq i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides, null, !dbg !28
  br i1 %.not188, label %if_end134, label %if_then133, !dbg !28, !prof !33

if_then133:                                       ; preds = %assert_end132
  %321 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides, i64 1, !dbg !28
  %322 = load i64, i64* %321, align 8, !dbg !28, !tbaa !219
  %323 = trunc i64 %322 to i32, !dbg !28
  %324 = icmp eq i32 %323, 1, !dbg !28
  br i1 %324, label %if_end134, label %assert_fail135, !dbg !28, !prof !29

if_end134:                                        ; preds = %if_then133, %assert_end132
  %325 = getelementptr inbounds i8, i8* %LUT_Biases, i64 40, !dbg !28
  %326 = bitcast i8* %325 to i64*, !dbg !28
  %327 = load i64, i64* %326, align 8, !dbg !28
  %328 = icmp eq i64 %327, 0, !dbg !28
  br i1 %328, label %assert_end138, label %assert_fail137, !dbg !28, !prof !29

assert_fail135:                                   ; preds = %if_then133
  %329 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %329(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.58, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail137:                                   ; preds = %if_end134
  %330 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %330(i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str.59, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end138:                                    ; preds = %if_end134
  %331 = getelementptr inbounds i8, i8* %LUT_Biases, i64 8, !dbg !28
  %332 = bitcast i8* %331 to i32*, !dbg !28
  %333 = load i32, i32* %332, align 4, !dbg !28
  %334 = icmp eq i32 %333, 1, !dbg !28
  br i1 %334, label %assert_end140, label %assert_fail139, !dbg !28, !prof !29

assert_fail139:                                   ; preds = %assert_end138
  %335 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %335(i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.60, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end140:                                    ; preds = %assert_end138
  %336 = getelementptr inbounds i8, i8* %LUT_Biases, i64 12, !dbg !28
  %337 = bitcast i8* %336 to i32*, !dbg !28
  %338 = load i32, i32* %337, align 4, !dbg !28
  %339 = icmp eq i32 %dev_id, %338, !dbg !28
  br i1 %339, label %assert_end142, label %assert_fail141, !dbg !28, !prof !29

assert_fail141:                                   ; preds = %assert_end140
  %340 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %340(i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.61, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end142:                                    ; preds = %assert_end140
  %.not189 = icmp eq half* %LUT_Biases_void_ptr177, null, !dbg !28
  br i1 %.not189, label %assert_fail143, label %assert_end144, !dbg !28, !prof !33

assert_fail143:                                   ; preds = %assert_end142
  %341 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %341(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.62, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %342 = getelementptr inbounds i8, i8* %C, i64 20, !dbg !28
  %343 = load i8, i8* %342, align 1, !dbg !28
  %344 = icmp eq i8 %343, 2, !dbg !28
  %345 = getelementptr inbounds i8, i8* %C, i64 21, !dbg !28
  %346 = load i8, i8* %345, align 1, !dbg !28
  %347 = icmp eq i8 %346, 16, !dbg !28
  %348 = and i1 %344, %347, !dbg !28
  %349 = getelementptr inbounds i8, i8* %C, i64 22, !dbg !28
  %350 = bitcast i8* %349 to i16*, !dbg !28
  %351 = load i16, i16* %350, align 2, !dbg !28
  %352 = icmp eq i16 %351, 1, !dbg !28
  %353 = and i1 %348, %352, !dbg !28
  br i1 %353, label %assert_end146, label %assert_fail145, !dbg !28, !prof !29

assert_fail145:                                   ; preds = %assert_end144
  %354 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %354(i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str.63, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %355 = load i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape, align 8, !dbg !28, !tbaa !229
  %356 = trunc i64 %355 to i32, !dbg !28
  %357 = icmp eq i32 %356, 1, !dbg !28
  br i1 %357, label %assert_end148, label %assert_fail147, !dbg !28, !prof !29

assert_fail147:                                   ; preds = %assert_end146
  %358 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %358(i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.64, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end148:                                    ; preds = %assert_end146
  %359 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape, i64 1, !dbg !28
  %360 = load i64, i64* %359, align 8, !dbg !28, !tbaa !239
  %361 = trunc i64 %360 to i32, !dbg !28
  %362 = icmp eq i32 %361, 4096, !dbg !28
  br i1 %362, label %assert_end150, label %assert_fail149, !dbg !28, !prof !29

assert_fail149:                                   ; preds = %assert_end148
  %363 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %363(i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.65, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end150:                                    ; preds = %assert_end148
  %.not190 = icmp eq i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides, null, !dbg !28
  br i1 %.not190, label %if_end152, label %if_then151, !dbg !28, !prof !33

if_then151:                                       ; preds = %assert_end150
  %364 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides, i64 1, !dbg !28
  %365 = load i64, i64* %364, align 8, !dbg !28, !tbaa !241
  %366 = trunc i64 %365 to i32, !dbg !28
  %367 = icmp eq i32 %366, 1, !dbg !28
  br i1 %367, label %if_end152, label %assert_fail153, !dbg !28, !prof !29

if_end152:                                        ; preds = %if_then151, %assert_end150
  %368 = getelementptr inbounds i8, i8* %C, i64 40, !dbg !28
  %369 = bitcast i8* %368 to i64*, !dbg !28
  %370 = load i64, i64* %369, align 8, !dbg !28
  %371 = icmp eq i64 %370, 0, !dbg !28
  br i1 %371, label %assert_end156, label %assert_fail155, !dbg !28, !prof !29

assert_fail153:                                   ; preds = %if_then151
  %372 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %372(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.66, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail155:                                   ; preds = %if_end152
  %373 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %373(i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.67, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end156:                                    ; preds = %if_end152
  %374 = getelementptr inbounds i8, i8* %C, i64 8, !dbg !28
  %375 = bitcast i8* %374 to i32*, !dbg !28
  %376 = load i32, i32* %375, align 4, !dbg !28
  %377 = icmp eq i32 %376, 1, !dbg !28
  br i1 %377, label %assert_end158, label %assert_fail157, !dbg !28, !prof !29

assert_fail157:                                   ; preds = %assert_end156
  %378 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %378(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.68, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end158:                                    ; preds = %assert_end156
  %379 = getelementptr inbounds i8, i8* %C, i64 12, !dbg !28
  %380 = bitcast i8* %379 to i32*, !dbg !28
  %381 = load i32, i32* %380, align 4, !dbg !28
  %382 = icmp eq i32 %dev_id, %381, !dbg !28
  br i1 %382, label %assert_end160, label %assert_fail159, !dbg !28, !prof !29

assert_fail159:                                   ; preds = %assert_end158
  %383 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %383(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.69, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end160:                                    ; preds = %assert_end158
  %.not191 = icmp eq half* %C_void_ptr179, null, !dbg !28
  br i1 %.not191, label %assert_fail161, label %assert_end162, !dbg !28, !prof !33

assert_fail161:                                   ; preds = %assert_end160
  %384 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %384(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.70, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end162:                                    ; preds = %assert_end160
  %385 = tail call fastcc i32 @qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_(i8* nonnull %LUT163, i8* nonnull %A164, half* nonnull %Scales_void_ptr173, half* nonnull %LUT_Scales_void_ptr175, half* nonnull %LUT_Biases_void_ptr177, half* nonnull %C_void_ptr179), !dbg !28
  br label %common.ret
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_(i8* noalias align 64 %LUT, i8* noalias align 64 %A, half* noalias align 64 %Scales, half* noalias align 64 %LUT_Scales, half* noalias align 64 %LUT_Biases, half* noalias align 64 %C) unnamed_addr #3 !dbg !251 {
entry:
  call void @llvm.dbg.value(metadata i8* %LUT, metadata !255, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata i8* %A, metadata !256, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata half* %Scales, metadata !257, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata half* %LUT_Scales, metadata !258, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata half* %LUT_Biases, metadata !259, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.value(metadata half* %C, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = alloca %closure_loop_parallel_m.outer, align 8, !dbg !261
  %1 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 0, !dbg !261
  store i8* %LUT, i8** %1, align 8, !dbg !261
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 1, !dbg !261
  store i8* %A, i8** %2, align 8, !dbg !261
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 2, !dbg !261
  store half* %Scales, half** %3, align 8, !dbg !261
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 3, !dbg !261
  store half* %LUT_Scales, half** %4, align 8, !dbg !261
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 4, !dbg !261
  store half* %LUT_Biases, half** %5, align 8, !dbg !261
  %6 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 5, !dbg !261
  store half* %C, half** %6, align 8, !dbg !261
  %7 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !dbg !261, !tbaa !30
  %8 = bitcast %closure_loop_parallel_m.outer* %0 to i8*, !dbg !261
  %9 = call i32 %7(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %8, i32 0), !dbg !261
  ret i32 %9, !dbg !261
}

; Function Attrs: nofree nosync nounwind
define private i32 @__tvm_parallel_lambda(i32 %task_id, %0* nocapture readonly %0, i8* nocapture readonly %1) #4 {
parallel_closure_entry:
  %C.global1 = alloca [4 x <32 x half>], align 64, !dbg !261
  %C.global113 = bitcast [4 x <32 x half>]* %C.global1 to i8*, !dbg !261
  %CBits2 = alloca [256 x half], align 16, !dbg !261
  %2 = bitcast i8* %1 to i8**, !dbg !261
  %LUT = load i8*, i8** %2, align 8, !dbg !261
  %3 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !261
  %4 = bitcast i8* %3 to i8**, !dbg !261
  %A = load i8*, i8** %4, align 8, !dbg !261
  %5 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !261
  %6 = bitcast i8* %5 to half**, !dbg !261
  %Scales = load half*, half** %6, align 8, !dbg !261
  %7 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !261
  %8 = bitcast i8* %7 to half**, !dbg !261
  %LUT_Scales = load half*, half** %8, align 8, !dbg !261
  %9 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !261
  %10 = bitcast i8* %9 to half**, !dbg !261
  %LUT_Biases = load half*, half** %10, align 8, !dbg !261
  %11 = getelementptr inbounds i8, i8* %1, i64 40, !dbg !261
  %12 = bitcast i8* %11 to half**, !dbg !261
  %C = load half*, half** %12, align 8, !dbg !261
  %13 = getelementptr inbounds %0, %0* %0, i64 0, i32 1, !dbg !261
  %num_task = load i32, i32* %13, align 4, !dbg !261
  %14 = add nsw i32 %num_task, 31, !dbg !261
  %15 = sdiv i32 %14, %num_task, !dbg !261
  %16 = mul nsw i32 %15, %task_id, !dbg !261
  %17 = icmp slt i32 %16, 32, !dbg !261
  %18 = select i1 %17, i32 %16, i32 32, !dbg !261
  %19 = add nsw i32 %task_id, 1, !dbg !261
  %20 = mul nsw i32 %15, %19, !dbg !261
  %21 = icmp slt i32 %20, 32, !dbg !261
  %22 = select i1 %21, i32 %20, i32 32, !dbg !261
  call void @llvm.dbg.declare(metadata i32 %18, metadata !262, metadata !DIExpression()), !dbg !261
  %23 = icmp sgt i32 %22, %18, !dbg !261
  br i1 %23, label %for_body_m.outer.lr.ph, label %for_end_m.outer, !dbg !261, !prof !29

for_body_m.outer.lr.ph:                           ; preds = %parallel_closure_entry
  %24 = bitcast [256 x half]* %CBits2 to i8*
  %25 = zext i32 %18 to i64, !dbg !261
  %26 = sub i32 %22, %18, !dbg !261
  br label %for_body_m.outer, !dbg !261

for_body_m.outer:                                 ; preds = %for_body_m.outer.lr.ph, %for_begin_m.inner.outer.preheader
  %indvars.iv17 = phi i64 [ %25, %for_body_m.outer.lr.ph ], [ %indvars.iv.next18, %for_begin_m.inner.outer.preheader ]
  %indvar = phi i32 [ 0, %for_body_m.outer.lr.ph ], [ %indvar.next, %for_begin_m.inner.outer.preheader ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv17, metadata !262, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata [256 x half]* %CBits2, metadata !263, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata [4 x <32 x half>]* %C.global1, metadata !264, metadata !DIExpression()), !dbg !261
  %27 = add i32 %18, %indvar, !dbg !261
  %28 = shl i32 %27, 7, !dbg !261
  %29 = sext i32 %28 to i64, !dbg !261
  %scevgep = getelementptr half, half* %C, i64 %29, !dbg !261
  %scevgep12 = bitcast half* %scevgep to i8*, !dbg !261
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(512) %24, i8 0, i64 512, i1 false) #10, !dbg !261
  %30 = trunc i64 %indvars.iv17 to i32
  %31 = shl nsw i32 %30, 17
  %32 = shl nsw i32 %30, 12
  call void @llvm.dbg.declare(metadata i32 0, metadata !267, metadata !DIExpression()), !dbg !261
  %33 = sext i32 %31 to i64, !dbg !261
  br label %for_body_k.outer, !dbg !261

for_end_m.outer:                                  ; preds = %for_begin_m.inner.outer.preheader, %parallel_closure_entry
  ret i32 0, !dbg !261

for_body_k.outer:                                 ; preds = %for_body_m.outer, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit
  %indvars.iv = phi i64 [ 0, %for_body_m.outer ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !267, metadata !DIExpression()), !dbg !261
  %34 = shl nuw nsw i64 %indvars.iv, 8, !dbg !261
  %35 = getelementptr inbounds i8, i8* %LUT, i64 %34, !dbg !261
  %36 = shl nuw nsw i64 %indvars.iv, 11, !dbg !261
  %37 = add nuw nsw i64 %36, %33, !dbg !261
  %38 = getelementptr inbounds i8, i8* %A, i64 %37, !dbg !261
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !261
  %39 = shl i32 %indvars.iv.tr, 6, !dbg !261
  %40 = and i32 %39, 2147483520, !dbg !261
  %41 = add nuw nsw i32 %40, %32, !dbg !261
  %42 = sext i32 %41 to i64, !dbg !261
  %43 = getelementptr inbounds half, half* %Scales, i64 %42, !dbg !261
  %44 = getelementptr inbounds half, half* %LUT_Scales, i64 %indvars.iv, !dbg !261
  %45 = getelementptr inbounds half, half* %LUT_Biases, i64 %indvars.iv, !dbg !261
  %46 = bitcast i8* %35 to <16 x i8>*, !dbg !261
  %47 = load <16 x i8>, <16 x i8>* %46, align 1, !dbg !261
  %48 = getelementptr inbounds i8, i8* %35, i64 16, !dbg !261
  %49 = bitcast i8* %48 to <16 x i8>*, !dbg !261
  %50 = load <16 x i8>, <16 x i8>* %49, align 1, !dbg !261
  %51 = getelementptr inbounds i8, i8* %35, i64 32, !dbg !261
  %52 = bitcast i8* %51 to <16 x i8>*, !dbg !261
  %53 = load <16 x i8>, <16 x i8>* %52, align 1, !dbg !261
  %54 = getelementptr inbounds i8, i8* %35, i64 48, !dbg !261
  %55 = bitcast i8* %54 to <16 x i8>*, !dbg !261
  %56 = load <16 x i8>, <16 x i8>* %55, align 1, !dbg !261
  %57 = getelementptr inbounds i8, i8* %35, i64 64, !dbg !261
  %58 = bitcast i8* %57 to <16 x i8>*, !dbg !261
  %59 = load <16 x i8>, <16 x i8>* %58, align 1, !dbg !261
  %60 = getelementptr inbounds i8, i8* %35, i64 80, !dbg !261
  %61 = bitcast i8* %60 to <16 x i8>*, !dbg !261
  %62 = load <16 x i8>, <16 x i8>* %61, align 1, !dbg !261
  %63 = getelementptr inbounds i8, i8* %35, i64 96, !dbg !261
  %64 = bitcast i8* %63 to <16 x i8>*, !dbg !261
  %65 = load <16 x i8>, <16 x i8>* %64, align 1, !dbg !261
  %66 = getelementptr inbounds i8, i8* %35, i64 112, !dbg !261
  %67 = bitcast i8* %66 to <16 x i8>*, !dbg !261
  %68 = load <16 x i8>, <16 x i8>* %67, align 1, !dbg !261
  %69 = getelementptr inbounds i8, i8* %35, i64 128, !dbg !261
  %70 = bitcast i8* %69 to <16 x i8>*, !dbg !261
  %71 = load <16 x i8>, <16 x i8>* %70, align 1, !dbg !261
  %72 = getelementptr inbounds i8, i8* %35, i64 144, !dbg !261
  %73 = bitcast i8* %72 to <16 x i8>*, !dbg !261
  %74 = load <16 x i8>, <16 x i8>* %73, align 1, !dbg !261
  %75 = getelementptr inbounds i8, i8* %35, i64 160, !dbg !261
  %76 = bitcast i8* %75 to <16 x i8>*, !dbg !261
  %77 = load <16 x i8>, <16 x i8>* %76, align 1, !dbg !261
  %78 = getelementptr inbounds i8, i8* %35, i64 176, !dbg !261
  %79 = bitcast i8* %78 to <16 x i8>*, !dbg !261
  %80 = load <16 x i8>, <16 x i8>* %79, align 1, !dbg !261
  %81 = getelementptr inbounds i8, i8* %35, i64 192, !dbg !261
  %82 = bitcast i8* %81 to <16 x i8>*, !dbg !261
  %83 = load <16 x i8>, <16 x i8>* %82, align 1, !dbg !261
  %84 = getelementptr inbounds i8, i8* %35, i64 208, !dbg !261
  %85 = bitcast i8* %84 to <16 x i8>*, !dbg !261
  %86 = load <16 x i8>, <16 x i8>* %85, align 1, !dbg !261
  %87 = getelementptr inbounds i8, i8* %35, i64 224, !dbg !261
  %88 = bitcast i8* %87 to <16 x i8>*, !dbg !261
  %89 = load <16 x i8>, <16 x i8>* %88, align 1, !dbg !261
  %90 = getelementptr inbounds i8, i8* %35, i64 240, !dbg !261
  %91 = bitcast i8* %90 to <16 x i8>*, !dbg !261
  %92 = load <16 x i8>, <16 x i8>* %91, align 1, !dbg !261
  br label %93, !dbg !261

93:                                               ; preds = %93, %for_body_k.outer
  %94 = phi i64 [ 0, %for_body_k.outer ], [ %434, %93 ], !dbg !261
  %95 = shl nuw nsw i64 %94, 4, !dbg !261
  %96 = getelementptr inbounds i8, i8* %38, i64 %95, !dbg !261
  %97 = load half, half* %44, align 2, !dbg !261, !tbaa !268
  %98 = load half, half* %45, align 2, !dbg !261, !tbaa !268
  %99 = insertelement <8 x half> poison, half %97, i64 0, !dbg !261
  %100 = insertelement <8 x half> poison, half %98, i64 0, !dbg !261
  %101 = bitcast i8* %96 to <16 x i8>*, !dbg !261
  %102 = load <16 x i8>, <16 x i8>* %101, align 1, !dbg !261
  %103 = lshr <16 x i8> %102, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %104 = and <16 x i8> %102, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %105 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %47, <16 x i8> %104) #10, !dbg !261
  %106 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %47, <16 x i8> %103) #10, !dbg !261
  %107 = getelementptr inbounds i8, i8* %96, i64 16, !dbg !261
  %108 = bitcast i8* %107 to <16 x i8>*, !dbg !261
  %109 = load <16 x i8>, <16 x i8>* %108, align 1, !dbg !261
  %110 = lshr <16 x i8> %109, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %111 = and <16 x i8> %109, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %112 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %50, <16 x i8> %111) #10, !dbg !261
  %113 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %50, <16 x i8> %110) #10, !dbg !261
  %114 = shufflevector <16 x i8> %105, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %115 = shufflevector <16 x i8> %112, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %116 = sext <8 x i8> %114 to <8 x i16>, !dbg !261
  %117 = sext <8 x i8> %115 to <8 x i16>, !dbg !261
  %118 = shufflevector <16 x i8> %105, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %119 = sext <8 x i8> %118 to <8 x i16>, !dbg !261
  %120 = shufflevector <16 x i8> %112, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %121 = sext <8 x i8> %120 to <8 x i16>, !dbg !261
  %122 = add nsw <8 x i16> %117, %116, !dbg !261
  %123 = add nsw <8 x i16> %121, %119, !dbg !261
  %124 = shufflevector <16 x i8> %106, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %125 = shufflevector <16 x i8> %113, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %126 = sext <8 x i8> %124 to <8 x i16>, !dbg !261
  %127 = sext <8 x i8> %125 to <8 x i16>, !dbg !261
  %128 = shufflevector <16 x i8> %106, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %129 = sext <8 x i8> %128 to <8 x i16>, !dbg !261
  %130 = shufflevector <16 x i8> %113, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %131 = sext <8 x i8> %130 to <8 x i16>, !dbg !261
  %132 = getelementptr inbounds i8, i8* %96, i64 32, !dbg !261
  %133 = bitcast i8* %132 to <16 x i8>*, !dbg !261
  %134 = load <16 x i8>, <16 x i8>* %133, align 1, !dbg !261
  %135 = lshr <16 x i8> %134, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %136 = and <16 x i8> %134, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %137 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %53, <16 x i8> %136) #10, !dbg !261
  %138 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %53, <16 x i8> %135) #10, !dbg !261
  %139 = getelementptr inbounds i8, i8* %96, i64 48, !dbg !261
  %140 = bitcast i8* %139 to <16 x i8>*, !dbg !261
  %141 = load <16 x i8>, <16 x i8>* %140, align 1, !dbg !261
  %142 = lshr <16 x i8> %141, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %143 = and <16 x i8> %141, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %144 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %56, <16 x i8> %143) #10, !dbg !261
  %145 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %56, <16 x i8> %142) #10, !dbg !261
  %146 = shufflevector <16 x i8> %145, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %147 = sext <8 x i8> %146 to <8 x i16>, !dbg !261
  %148 = shufflevector <16 x i8> %138, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %149 = sext <8 x i8> %148 to <8 x i16>, !dbg !261
  %150 = shufflevector <16 x i8> %145, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %151 = sext <8 x i8> %150 to <8 x i16>, !dbg !261
  %152 = shufflevector <16 x i8> %138, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %153 = sext <8 x i8> %152 to <8 x i16>, !dbg !261
  %154 = shufflevector <16 x i8> %137, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %155 = sext <8 x i8> %154 to <8 x i16>, !dbg !261
  %156 = add nsw <8 x i16> %123, %155, !dbg !261
  %157 = shufflevector <16 x i8> %144, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %158 = sext <8 x i8> %157 to <8 x i16>, !dbg !261
  %159 = add nsw <8 x i16> %156, %158, !dbg !261
  %160 = shufflevector <16 x i8> %137, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %161 = sext <8 x i8> %160 to <8 x i16>, !dbg !261
  %162 = add nsw <8 x i16> %122, %161, !dbg !261
  %163 = shufflevector <16 x i8> %144, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %164 = sext <8 x i8> %163 to <8 x i16>, !dbg !261
  %165 = add nsw <8 x i16> %162, %164, !dbg !261
  %166 = getelementptr inbounds i8, i8* %96, i64 64, !dbg !261
  %167 = bitcast i8* %166 to <16 x i8>*, !dbg !261
  %168 = load <16 x i8>, <16 x i8>* %167, align 1, !dbg !261
  %169 = lshr <16 x i8> %168, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %170 = and <16 x i8> %168, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %171 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %59, <16 x i8> %170) #10, !dbg !261
  %172 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %59, <16 x i8> %169) #10, !dbg !261
  %173 = getelementptr inbounds i8, i8* %96, i64 80, !dbg !261
  %174 = bitcast i8* %173 to <16 x i8>*, !dbg !261
  %175 = load <16 x i8>, <16 x i8>* %174, align 1, !dbg !261
  %176 = lshr <16 x i8> %175, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %177 = and <16 x i8> %175, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %178 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %62, <16 x i8> %177) #10, !dbg !261
  %179 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %62, <16 x i8> %176) #10, !dbg !261
  %180 = shufflevector <16 x i8> %179, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %181 = sext <8 x i8> %180 to <8 x i16>, !dbg !261
  %182 = shufflevector <16 x i8> %172, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %183 = sext <8 x i8> %182 to <8 x i16>, !dbg !261
  %184 = shufflevector <16 x i8> %179, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %185 = sext <8 x i8> %184 to <8 x i16>, !dbg !261
  %186 = shufflevector <16 x i8> %172, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %187 = sext <8 x i8> %186 to <8 x i16>, !dbg !261
  %188 = shufflevector <16 x i8> %171, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %189 = sext <8 x i8> %188 to <8 x i16>, !dbg !261
  %190 = add nsw <8 x i16> %159, %189, !dbg !261
  %191 = shufflevector <16 x i8> %178, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %192 = sext <8 x i8> %191 to <8 x i16>, !dbg !261
  %193 = add nsw <8 x i16> %190, %192, !dbg !261
  %194 = shufflevector <16 x i8> %171, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %195 = sext <8 x i8> %194 to <8 x i16>, !dbg !261
  %196 = add nsw <8 x i16> %165, %195, !dbg !261
  %197 = shufflevector <16 x i8> %178, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %198 = sext <8 x i8> %197 to <8 x i16>, !dbg !261
  %199 = add nsw <8 x i16> %196, %198, !dbg !261
  %200 = getelementptr inbounds i8, i8* %96, i64 96, !dbg !261
  %201 = bitcast i8* %200 to <16 x i8>*, !dbg !261
  %202 = load <16 x i8>, <16 x i8>* %201, align 1, !dbg !261
  %203 = lshr <16 x i8> %202, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %204 = and <16 x i8> %202, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %205 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %65, <16 x i8> %204) #10, !dbg !261
  %206 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %65, <16 x i8> %203) #10, !dbg !261
  %207 = getelementptr inbounds i8, i8* %96, i64 112, !dbg !261
  %208 = bitcast i8* %207 to <16 x i8>*, !dbg !261
  %209 = load <16 x i8>, <16 x i8>* %208, align 1, !dbg !261
  %210 = lshr <16 x i8> %209, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %211 = and <16 x i8> %209, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %212 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %68, <16 x i8> %211) #10, !dbg !261
  %213 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %68, <16 x i8> %210) #10, !dbg !261
  %214 = shufflevector <16 x i8> %213, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %215 = sext <8 x i8> %214 to <8 x i16>, !dbg !261
  %216 = shufflevector <16 x i8> %206, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %217 = sext <8 x i8> %216 to <8 x i16>, !dbg !261
  %218 = shufflevector <16 x i8> %213, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %219 = sext <8 x i8> %218 to <8 x i16>, !dbg !261
  %220 = shufflevector <16 x i8> %206, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %221 = sext <8 x i8> %220 to <8 x i16>, !dbg !261
  %222 = shufflevector <16 x i8> %205, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %223 = sext <8 x i8> %222 to <8 x i16>, !dbg !261
  %224 = add nsw <8 x i16> %193, %223, !dbg !261
  %225 = shufflevector <16 x i8> %212, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %226 = sext <8 x i8> %225 to <8 x i16>, !dbg !261
  %227 = add <8 x i16> %224, %226, !dbg !261
  %228 = shufflevector <16 x i8> %205, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %229 = sext <8 x i8> %228 to <8 x i16>, !dbg !261
  %230 = add nsw <8 x i16> %199, %229, !dbg !261
  %231 = shufflevector <16 x i8> %212, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %232 = sext <8 x i8> %231 to <8 x i16>, !dbg !261
  %233 = add <8 x i16> %230, %232, !dbg !261
  %234 = getelementptr inbounds i8, i8* %96, i64 128, !dbg !261
  %235 = bitcast i8* %234 to <16 x i8>*, !dbg !261
  %236 = load <16 x i8>, <16 x i8>* %235, align 1, !dbg !261
  %237 = lshr <16 x i8> %236, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %238 = and <16 x i8> %236, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %239 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %71, <16 x i8> %238) #10, !dbg !261
  %240 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %71, <16 x i8> %237) #10, !dbg !261
  %241 = getelementptr inbounds i8, i8* %96, i64 144, !dbg !261
  %242 = bitcast i8* %241 to <16 x i8>*, !dbg !261
  %243 = load <16 x i8>, <16 x i8>* %242, align 1, !dbg !261
  %244 = lshr <16 x i8> %243, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %245 = and <16 x i8> %243, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %246 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %74, <16 x i8> %245) #10, !dbg !261
  %247 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %74, <16 x i8> %244) #10, !dbg !261
  %248 = shufflevector <16 x i8> %247, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %249 = sext <8 x i8> %248 to <8 x i16>, !dbg !261
  %250 = shufflevector <16 x i8> %240, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %251 = sext <8 x i8> %250 to <8 x i16>, !dbg !261
  %252 = shufflevector <16 x i8> %247, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %253 = sext <8 x i8> %252 to <8 x i16>, !dbg !261
  %254 = shufflevector <16 x i8> %240, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %255 = sext <8 x i8> %254 to <8 x i16>, !dbg !261
  %256 = shufflevector <16 x i8> %239, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %257 = sext <8 x i8> %256 to <8 x i16>, !dbg !261
  %258 = add <8 x i16> %227, %257, !dbg !261
  %259 = shufflevector <16 x i8> %246, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %260 = sext <8 x i8> %259 to <8 x i16>, !dbg !261
  %261 = add <8 x i16> %258, %260, !dbg !261
  %262 = shufflevector <16 x i8> %239, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %263 = sext <8 x i8> %262 to <8 x i16>, !dbg !261
  %264 = add <8 x i16> %233, %263, !dbg !261
  %265 = shufflevector <16 x i8> %246, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %266 = sext <8 x i8> %265 to <8 x i16>, !dbg !261
  %267 = add <8 x i16> %264, %266, !dbg !261
  %268 = getelementptr inbounds i8, i8* %96, i64 160, !dbg !261
  %269 = bitcast i8* %268 to <16 x i8>*, !dbg !261
  %270 = load <16 x i8>, <16 x i8>* %269, align 1, !dbg !261
  %271 = lshr <16 x i8> %270, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %272 = and <16 x i8> %270, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %273 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %77, <16 x i8> %272) #10, !dbg !261
  %274 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %77, <16 x i8> %271) #10, !dbg !261
  %275 = getelementptr inbounds i8, i8* %96, i64 176, !dbg !261
  %276 = bitcast i8* %275 to <16 x i8>*, !dbg !261
  %277 = load <16 x i8>, <16 x i8>* %276, align 1, !dbg !261
  %278 = lshr <16 x i8> %277, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %279 = and <16 x i8> %277, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %280 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %80, <16 x i8> %279) #10, !dbg !261
  %281 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %80, <16 x i8> %278) #10, !dbg !261
  %282 = shufflevector <16 x i8> %281, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %283 = sext <8 x i8> %282 to <8 x i16>, !dbg !261
  %284 = shufflevector <16 x i8> %274, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %285 = sext <8 x i8> %284 to <8 x i16>, !dbg !261
  %286 = shufflevector <16 x i8> %281, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %287 = sext <8 x i8> %286 to <8 x i16>, !dbg !261
  %288 = shufflevector <16 x i8> %274, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %289 = sext <8 x i8> %288 to <8 x i16>, !dbg !261
  %290 = shufflevector <16 x i8> %273, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %291 = sext <8 x i8> %290 to <8 x i16>, !dbg !261
  %292 = add <8 x i16> %261, %291, !dbg !261
  %293 = shufflevector <16 x i8> %280, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %294 = sext <8 x i8> %293 to <8 x i16>, !dbg !261
  %295 = add <8 x i16> %292, %294, !dbg !261
  %296 = shufflevector <16 x i8> %273, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %297 = sext <8 x i8> %296 to <8 x i16>, !dbg !261
  %298 = add <8 x i16> %267, %297, !dbg !261
  %299 = shufflevector <16 x i8> %280, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %300 = sext <8 x i8> %299 to <8 x i16>, !dbg !261
  %301 = add <8 x i16> %298, %300, !dbg !261
  %302 = getelementptr inbounds i8, i8* %96, i64 192, !dbg !261
  %303 = bitcast i8* %302 to <16 x i8>*, !dbg !261
  %304 = load <16 x i8>, <16 x i8>* %303, align 1, !dbg !261
  %305 = lshr <16 x i8> %304, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %306 = and <16 x i8> %304, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %307 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %83, <16 x i8> %306) #10, !dbg !261
  %308 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %83, <16 x i8> %305) #10, !dbg !261
  %309 = getelementptr inbounds i8, i8* %96, i64 208, !dbg !261
  %310 = bitcast i8* %309 to <16 x i8>*, !dbg !261
  %311 = load <16 x i8>, <16 x i8>* %310, align 1, !dbg !261
  %312 = lshr <16 x i8> %311, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %313 = and <16 x i8> %311, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %314 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %86, <16 x i8> %313) #10, !dbg !261
  %315 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %86, <16 x i8> %312) #10, !dbg !261
  %316 = shufflevector <16 x i8> %315, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %317 = sext <8 x i8> %316 to <8 x i16>, !dbg !261
  %318 = shufflevector <16 x i8> %308, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %319 = sext <8 x i8> %318 to <8 x i16>, !dbg !261
  %320 = shufflevector <16 x i8> %315, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %321 = sext <8 x i8> %320 to <8 x i16>, !dbg !261
  %322 = shufflevector <16 x i8> %308, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %323 = sext <8 x i8> %322 to <8 x i16>, !dbg !261
  %324 = shufflevector <16 x i8> %307, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %325 = sext <8 x i8> %324 to <8 x i16>, !dbg !261
  %326 = add <8 x i16> %295, %325, !dbg !261
  %327 = shufflevector <16 x i8> %314, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %328 = sext <8 x i8> %327 to <8 x i16>, !dbg !261
  %329 = add <8 x i16> %326, %328, !dbg !261
  %330 = shufflevector <16 x i8> %307, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %331 = sext <8 x i8> %330 to <8 x i16>, !dbg !261
  %332 = add <8 x i16> %301, %331, !dbg !261
  %333 = shufflevector <16 x i8> %314, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %334 = sext <8 x i8> %333 to <8 x i16>, !dbg !261
  %335 = add <8 x i16> %332, %334, !dbg !261
  %336 = getelementptr inbounds i8, i8* %96, i64 224, !dbg !261
  %337 = bitcast i8* %336 to <16 x i8>*, !dbg !261
  %338 = load <16 x i8>, <16 x i8>* %337, align 1, !dbg !261
  %339 = lshr <16 x i8> %338, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %340 = and <16 x i8> %338, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %341 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %89, <16 x i8> %340) #10, !dbg !261
  %342 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %89, <16 x i8> %339) #10, !dbg !261
  %343 = getelementptr inbounds i8, i8* %96, i64 240, !dbg !261
  %344 = bitcast i8* %343 to <16 x i8>*, !dbg !261
  %345 = load <16 x i8>, <16 x i8>* %344, align 1, !dbg !261
  %346 = lshr <16 x i8> %345, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !261
  %347 = and <16 x i8> %345, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !261
  %348 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %92, <16 x i8> %347) #10, !dbg !261
  %349 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %92, <16 x i8> %346) #10, !dbg !261
  %350 = shufflevector <16 x i8> %349, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %351 = sext <8 x i8> %350 to <8 x i16>, !dbg !261
  %352 = shufflevector <16 x i8> %342, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %353 = sext <8 x i8> %352 to <8 x i16>, !dbg !261
  %354 = shufflevector <16 x i8> %349, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %355 = sext <8 x i8> %354 to <8 x i16>, !dbg !261
  %356 = shufflevector <16 x i8> %342, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %357 = sext <8 x i8> %356 to <8 x i16>, !dbg !261
  %358 = shufflevector <16 x i8> %341, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %359 = sext <8 x i8> %358 to <8 x i16>, !dbg !261
  %360 = add <8 x i16> %329, %359, !dbg !261
  %361 = shufflevector <16 x i8> %348, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !261
  %362 = sext <8 x i8> %361 to <8 x i16>, !dbg !261
  %363 = add <8 x i16> %360, %362, !dbg !261
  %364 = shufflevector <16 x i8> %341, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %365 = sext <8 x i8> %364 to <8 x i16>, !dbg !261
  %366 = add <8 x i16> %335, %365, !dbg !261
  %367 = shufflevector <16 x i8> %348, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !261
  %368 = sext <8 x i8> %367 to <8 x i16>, !dbg !261
  %369 = add <8 x i16> %366, %368, !dbg !261
  %370 = add nsw <8 x i16> %127, %126, !dbg !261
  %371 = add nsw <8 x i16> %370, %153, !dbg !261
  %372 = add nsw <8 x i16> %371, %151, !dbg !261
  %373 = add nsw <8 x i16> %372, %187, !dbg !261
  %374 = add nsw <8 x i16> %373, %185, !dbg !261
  %375 = add nsw <8 x i16> %374, %221, !dbg !261
  %376 = add <8 x i16> %375, %219, !dbg !261
  %377 = add <8 x i16> %376, %255, !dbg !261
  %378 = add <8 x i16> %377, %253, !dbg !261
  %379 = add <8 x i16> %378, %289, !dbg !261
  %380 = add <8 x i16> %379, %287, !dbg !261
  %381 = add <8 x i16> %380, %323, !dbg !261
  %382 = add <8 x i16> %381, %321, !dbg !261
  %383 = add <8 x i16> %382, %357, !dbg !261
  %384 = add <8 x i16> %383, %355, !dbg !261
  %385 = add nsw <8 x i16> %131, %129, !dbg !261
  %386 = add nsw <8 x i16> %385, %149, !dbg !261
  %387 = add nsw <8 x i16> %386, %147, !dbg !261
  %388 = add nsw <8 x i16> %387, %183, !dbg !261
  %389 = add nsw <8 x i16> %388, %181, !dbg !261
  %390 = add nsw <8 x i16> %389, %217, !dbg !261
  %391 = add <8 x i16> %390, %215, !dbg !261
  %392 = add <8 x i16> %391, %251, !dbg !261
  %393 = add <8 x i16> %392, %249, !dbg !261
  %394 = add <8 x i16> %393, %285, !dbg !261
  %395 = add <8 x i16> %394, %283, !dbg !261
  %396 = add <8 x i16> %395, %319, !dbg !261
  %397 = add <8 x i16> %396, %317, !dbg !261
  %398 = add <8 x i16> %397, %353, !dbg !261
  %399 = add <8 x i16> %398, %351, !dbg !261
  %400 = shufflevector <8 x half> %99, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !261
  %401 = shufflevector <8 x half> %100, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !261
  %402 = sitofp <8 x i16> %369 to <8 x half>, !dbg !261
  %403 = sitofp <8 x i16> %363 to <8 x half>, !dbg !261
  %404 = sitofp <8 x i16> %384 to <8 x half>, !dbg !261
  %405 = sitofp <8 x i16> %399 to <8 x half>, !dbg !261
  %406 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %402, <8 x half> %400, <8 x half> %401) #10, !dbg !261
  %407 = fmul <8 x half> %400, %403, !dbg !261
  %408 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %404, <8 x half> %400, <8 x half> %401) #10, !dbg !261
  %409 = fmul <8 x half> %400, %405, !dbg !261
  %410 = getelementptr inbounds half, half* %43, i64 %94, !dbg !261
  %411 = bitcast half* %410 to <8 x half>*, !dbg !261
  %412 = load <8 x half>, <8 x half>* %411, align 2, !dbg !261
  %413 = or i64 %94, 8, !dbg !261
  %414 = getelementptr inbounds half, half* %43, i64 %413, !dbg !261
  %415 = bitcast half* %414 to <8 x half>*, !dbg !261
  %416 = load <8 x half>, <8 x half>* %415, align 2, !dbg !261
  %417 = shl nuw nsw i64 %94, 1, !dbg !261
  %418 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %417, !dbg !261
  %419 = bitcast half* %418 to <8 x half>*, !dbg !261
  %420 = load <8 x half>, <8 x half>* %419, align 16, !dbg !261
  %421 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %406, <8 x half> %412, <8 x half> %420) #10, !dbg !261
  store <8 x half> %421, <8 x half>* %419, align 16, !dbg !261
  %422 = getelementptr inbounds half, half* %418, i64 8, !dbg !261
  %423 = bitcast half* %422 to <8 x half>*, !dbg !261
  %424 = load <8 x half>, <8 x half>* %423, align 16, !dbg !261
  %425 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %407, <8 x half> %412, <8 x half> %424) #10, !dbg !261
  store <8 x half> %425, <8 x half>* %423, align 16, !dbg !261
  %426 = getelementptr inbounds half, half* %418, i64 16, !dbg !261
  %427 = bitcast half* %426 to <8 x half>*, !dbg !261
  %428 = load <8 x half>, <8 x half>* %427, align 16, !dbg !261
  %429 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %408, <8 x half> %416, <8 x half> %428) #10, !dbg !261
  store <8 x half> %429, <8 x half>* %427, align 16, !dbg !261
  %430 = getelementptr inbounds half, half* %418, i64 24, !dbg !261
  %431 = bitcast half* %430 to <8 x half>*, !dbg !261
  %432 = load <8 x half>, <8 x half>* %431, align 16, !dbg !261
  %433 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %409, <8 x half> %416, <8 x half> %432) #10, !dbg !261
  store <8 x half> %433, <8 x half>* %431, align 16, !dbg !261
  %434 = add nuw nsw i64 %94, 16, !dbg !261
  %435 = icmp ult i64 %94, 112, !dbg !261
  br i1 %435, label %93, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit, !dbg !261, !llvm.loop !272

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit: ; preds = %93
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !261
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !267, metadata !DIExpression()), !dbg !261
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !261
  br i1 %exitcond.not, label %for_body_m.c.outer, label %for_body_k.outer, !dbg !261, !prof !33

for_begin_m.inner.outer.preheader:                ; preds = %for_body_m.c.outer
  call void @llvm.dbg.declare(metadata i32 0, metadata !274, metadata !DIExpression()), !dbg !261
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 64 dereferenceable(256) %scevgep12, i8* noundef nonnull align 64 dereferenceable(256) %C.global113, i64 256, i1 false), !dbg !261
  call void @llvm.dbg.value(metadata i32 undef, metadata !274, metadata !DIExpression(DW_OP_plus_uconst, 1)), !dbg !261
  %indvars.iv.next18 = add i64 %indvars.iv17, 1, !dbg !261
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next18, metadata !262, metadata !DIExpression()), !dbg !261
  %indvar.next = add nuw i32 %indvar, 1, !dbg !261
  %exitcond20.not = icmp eq i32 %indvar.next, %26, !dbg !261
  br i1 %exitcond20.not, label %for_end_m.outer, label %for_body_m.outer, !dbg !261, !prof !33

for_body_m.c.outer:                               ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit, %for_body_m.c.outer
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for_body_m.c.outer ], [ 0, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_osfalse.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv8, metadata !275, metadata !DIExpression()), !dbg !261
  %436 = shl nuw nsw i64 %indvars.iv8, 6, !dbg !261
  %437 = trunc i64 %436 to i32, !dbg !261
  %438 = insertelement <32 x i32> undef, i32 %437, i64 0, !dbg !261
  %439 = shufflevector <32 x i32> %438, <32 x i32> undef, <32 x i32> zeroinitializer, !dbg !261
  %cse_var_1 = or <32 x i32> %439, <i32 poison, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>, !dbg !261
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_1, metadata !276, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_1, metadata !276, metadata !DIExpression()), !dbg !261
  %440 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %436, !dbg !261
  %441 = load half, half* %440, align 16, !dbg !261, !tbaa !278
  %442 = extractelement <32 x i32> %cse_var_1, i64 1, !dbg !261
  %443 = zext i32 %442 to i64, !dbg !261
  %444 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %443, !dbg !261
  %445 = load half, half* %444, align 2, !dbg !261, !tbaa !278
  %446 = extractelement <32 x i32> %cse_var_1, i64 2, !dbg !261
  %447 = zext i32 %446 to i64, !dbg !261
  %448 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %447, !dbg !261
  %449 = load half, half* %448, align 2, !dbg !261, !tbaa !278
  %450 = extractelement <32 x i32> %cse_var_1, i64 3, !dbg !261
  %451 = zext i32 %450 to i64, !dbg !261
  %452 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %451, !dbg !261
  %453 = load half, half* %452, align 2, !dbg !261, !tbaa !278
  %454 = extractelement <32 x i32> %cse_var_1, i64 4, !dbg !261
  %455 = zext i32 %454 to i64, !dbg !261
  %456 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %455, !dbg !261
  %457 = load half, half* %456, align 2, !dbg !261, !tbaa !278
  %458 = extractelement <32 x i32> %cse_var_1, i64 5, !dbg !261
  %459 = zext i32 %458 to i64, !dbg !261
  %460 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %459, !dbg !261
  %461 = load half, half* %460, align 2, !dbg !261, !tbaa !278
  %462 = extractelement <32 x i32> %cse_var_1, i64 6, !dbg !261
  %463 = zext i32 %462 to i64, !dbg !261
  %464 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %463, !dbg !261
  %465 = load half, half* %464, align 2, !dbg !261, !tbaa !278
  %466 = extractelement <32 x i32> %cse_var_1, i64 7, !dbg !261
  %467 = zext i32 %466 to i64, !dbg !261
  %468 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %467, !dbg !261
  %469 = load half, half* %468, align 2, !dbg !261, !tbaa !278
  %470 = extractelement <32 x i32> %cse_var_1, i64 8, !dbg !261
  %471 = zext i32 %470 to i64, !dbg !261
  %472 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %471, !dbg !261
  %473 = load half, half* %472, align 2, !dbg !261, !tbaa !278
  %474 = extractelement <32 x i32> %cse_var_1, i64 9, !dbg !261
  %475 = zext i32 %474 to i64, !dbg !261
  %476 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %475, !dbg !261
  %477 = load half, half* %476, align 2, !dbg !261, !tbaa !278
  %478 = extractelement <32 x i32> %cse_var_1, i64 10, !dbg !261
  %479 = zext i32 %478 to i64, !dbg !261
  %480 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %479, !dbg !261
  %481 = load half, half* %480, align 2, !dbg !261, !tbaa !278
  %482 = extractelement <32 x i32> %cse_var_1, i64 11, !dbg !261
  %483 = zext i32 %482 to i64, !dbg !261
  %484 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %483, !dbg !261
  %485 = load half, half* %484, align 2, !dbg !261, !tbaa !278
  %486 = extractelement <32 x i32> %cse_var_1, i64 12, !dbg !261
  %487 = zext i32 %486 to i64, !dbg !261
  %488 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %487, !dbg !261
  %489 = load half, half* %488, align 2, !dbg !261, !tbaa !278
  %490 = extractelement <32 x i32> %cse_var_1, i64 13, !dbg !261
  %491 = zext i32 %490 to i64, !dbg !261
  %492 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %491, !dbg !261
  %493 = load half, half* %492, align 2, !dbg !261, !tbaa !278
  %494 = extractelement <32 x i32> %cse_var_1, i64 14, !dbg !261
  %495 = zext i32 %494 to i64, !dbg !261
  %496 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %495, !dbg !261
  %497 = load half, half* %496, align 2, !dbg !261, !tbaa !278
  %498 = extractelement <32 x i32> %cse_var_1, i64 15, !dbg !261
  %499 = zext i32 %498 to i64, !dbg !261
  %500 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %499, !dbg !261
  %501 = load half, half* %500, align 2, !dbg !261, !tbaa !278
  %502 = extractelement <32 x i32> %cse_var_1, i64 16, !dbg !261
  %503 = zext i32 %502 to i64, !dbg !261
  %504 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %503, !dbg !261
  %505 = load half, half* %504, align 2, !dbg !261, !tbaa !278
  %506 = extractelement <32 x i32> %cse_var_1, i64 17, !dbg !261
  %507 = zext i32 %506 to i64, !dbg !261
  %508 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %507, !dbg !261
  %509 = load half, half* %508, align 2, !dbg !261, !tbaa !278
  %510 = extractelement <32 x i32> %cse_var_1, i64 18, !dbg !261
  %511 = zext i32 %510 to i64, !dbg !261
  %512 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %511, !dbg !261
  %513 = load half, half* %512, align 2, !dbg !261, !tbaa !278
  %514 = extractelement <32 x i32> %cse_var_1, i64 19, !dbg !261
  %515 = zext i32 %514 to i64, !dbg !261
  %516 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %515, !dbg !261
  %517 = load half, half* %516, align 2, !dbg !261, !tbaa !278
  %518 = extractelement <32 x i32> %cse_var_1, i64 20, !dbg !261
  %519 = zext i32 %518 to i64, !dbg !261
  %520 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %519, !dbg !261
  %521 = load half, half* %520, align 2, !dbg !261, !tbaa !278
  %522 = extractelement <32 x i32> %cse_var_1, i64 21, !dbg !261
  %523 = zext i32 %522 to i64, !dbg !261
  %524 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %523, !dbg !261
  %525 = load half, half* %524, align 2, !dbg !261, !tbaa !278
  %526 = extractelement <32 x i32> %cse_var_1, i64 22, !dbg !261
  %527 = zext i32 %526 to i64, !dbg !261
  %528 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %527, !dbg !261
  %529 = load half, half* %528, align 2, !dbg !261, !tbaa !278
  %530 = extractelement <32 x i32> %cse_var_1, i64 23, !dbg !261
  %531 = zext i32 %530 to i64, !dbg !261
  %532 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %531, !dbg !261
  %533 = load half, half* %532, align 2, !dbg !261, !tbaa !278
  %534 = extractelement <32 x i32> %cse_var_1, i64 24, !dbg !261
  %535 = zext i32 %534 to i64, !dbg !261
  %536 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %535, !dbg !261
  %537 = load half, half* %536, align 2, !dbg !261, !tbaa !278
  %538 = extractelement <32 x i32> %cse_var_1, i64 25, !dbg !261
  %539 = zext i32 %538 to i64, !dbg !261
  %540 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %539, !dbg !261
  %541 = load half, half* %540, align 2, !dbg !261, !tbaa !278
  %542 = extractelement <32 x i32> %cse_var_1, i64 26, !dbg !261
  %543 = zext i32 %542 to i64, !dbg !261
  %544 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %543, !dbg !261
  %545 = load half, half* %544, align 2, !dbg !261, !tbaa !278
  %546 = extractelement <32 x i32> %cse_var_1, i64 27, !dbg !261
  %547 = zext i32 %546 to i64, !dbg !261
  %548 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %547, !dbg !261
  %549 = load half, half* %548, align 2, !dbg !261, !tbaa !278
  %550 = extractelement <32 x i32> %cse_var_1, i64 28, !dbg !261
  %551 = zext i32 %550 to i64, !dbg !261
  %552 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %551, !dbg !261
  %553 = load half, half* %552, align 2, !dbg !261, !tbaa !278
  %554 = extractelement <32 x i32> %cse_var_1, i64 29, !dbg !261
  %555 = zext i32 %554 to i64, !dbg !261
  %556 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %555, !dbg !261
  %557 = load half, half* %556, align 2, !dbg !261, !tbaa !278
  %558 = extractelement <32 x i32> %cse_var_1, i64 30, !dbg !261
  %559 = zext i32 %558 to i64, !dbg !261
  %560 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %559, !dbg !261
  %561 = load half, half* %560, align 2, !dbg !261, !tbaa !278
  %562 = extractelement <32 x i32> %cse_var_1, i64 31, !dbg !261
  %563 = zext i32 %562 to i64, !dbg !261
  %564 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %563, !dbg !261
  %565 = load half, half* %564, align 2, !dbg !261, !tbaa !278
  %566 = insertelement <32 x half> undef, half %441, i64 0, !dbg !261
  %567 = insertelement <32 x half> %566, half %445, i64 1, !dbg !261
  %568 = insertelement <32 x half> %567, half %449, i64 2, !dbg !261
  %569 = insertelement <32 x half> %568, half %453, i64 3, !dbg !261
  %570 = insertelement <32 x half> %569, half %457, i64 4, !dbg !261
  %571 = insertelement <32 x half> %570, half %461, i64 5, !dbg !261
  %572 = insertelement <32 x half> %571, half %465, i64 6, !dbg !261
  %573 = insertelement <32 x half> %572, half %469, i64 7, !dbg !261
  %574 = insertelement <32 x half> %573, half %473, i64 8, !dbg !261
  %575 = insertelement <32 x half> %574, half %477, i64 9, !dbg !261
  %576 = insertelement <32 x half> %575, half %481, i64 10, !dbg !261
  %577 = insertelement <32 x half> %576, half %485, i64 11, !dbg !261
  %578 = insertelement <32 x half> %577, half %489, i64 12, !dbg !261
  %579 = insertelement <32 x half> %578, half %493, i64 13, !dbg !261
  %580 = insertelement <32 x half> %579, half %497, i64 14, !dbg !261
  %581 = insertelement <32 x half> %580, half %501, i64 15, !dbg !261
  %582 = insertelement <32 x half> %581, half %505, i64 16, !dbg !261
  %583 = insertelement <32 x half> %582, half %509, i64 17, !dbg !261
  %584 = insertelement <32 x half> %583, half %513, i64 18, !dbg !261
  %585 = insertelement <32 x half> %584, half %517, i64 19, !dbg !261
  %586 = insertelement <32 x half> %585, half %521, i64 20, !dbg !261
  %587 = insertelement <32 x half> %586, half %525, i64 21, !dbg !261
  %588 = insertelement <32 x half> %587, half %529, i64 22, !dbg !261
  %589 = insertelement <32 x half> %588, half %533, i64 23, !dbg !261
  %590 = insertelement <32 x half> %589, half %537, i64 24, !dbg !261
  %591 = insertelement <32 x half> %590, half %541, i64 25, !dbg !261
  %592 = insertelement <32 x half> %591, half %545, i64 26, !dbg !261
  %593 = insertelement <32 x half> %592, half %549, i64 27, !dbg !261
  %594 = insertelement <32 x half> %593, half %553, i64 28, !dbg !261
  %595 = insertelement <32 x half> %594, half %557, i64 29, !dbg !261
  %596 = insertelement <32 x half> %595, half %561, i64 30, !dbg !261
  %597 = insertelement <32 x half> %596, half %565, i64 31, !dbg !261
  %598 = or <32 x i32> %439, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>, !dbg !261
  %599 = extractelement <32 x i32> %598, i64 0, !dbg !261
  %600 = zext i32 %599 to i64, !dbg !261
  %601 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %600, !dbg !261
  %602 = load half, half* %601, align 2, !dbg !261, !tbaa !278
  %603 = extractelement <32 x i32> %598, i64 1, !dbg !261
  %604 = zext i32 %603 to i64, !dbg !261
  %605 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %604, !dbg !261
  %606 = load half, half* %605, align 2, !dbg !261, !tbaa !278
  %607 = extractelement <32 x i32> %598, i64 2, !dbg !261
  %608 = zext i32 %607 to i64, !dbg !261
  %609 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %608, !dbg !261
  %610 = load half, half* %609, align 2, !dbg !261, !tbaa !278
  %611 = extractelement <32 x i32> %598, i64 3, !dbg !261
  %612 = zext i32 %611 to i64, !dbg !261
  %613 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %612, !dbg !261
  %614 = load half, half* %613, align 2, !dbg !261, !tbaa !278
  %615 = extractelement <32 x i32> %598, i64 4, !dbg !261
  %616 = zext i32 %615 to i64, !dbg !261
  %617 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %616, !dbg !261
  %618 = load half, half* %617, align 2, !dbg !261, !tbaa !278
  %619 = extractelement <32 x i32> %598, i64 5, !dbg !261
  %620 = zext i32 %619 to i64, !dbg !261
  %621 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %620, !dbg !261
  %622 = load half, half* %621, align 2, !dbg !261, !tbaa !278
  %623 = extractelement <32 x i32> %598, i64 6, !dbg !261
  %624 = zext i32 %623 to i64, !dbg !261
  %625 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %624, !dbg !261
  %626 = load half, half* %625, align 2, !dbg !261, !tbaa !278
  %627 = extractelement <32 x i32> %598, i64 7, !dbg !261
  %628 = zext i32 %627 to i64, !dbg !261
  %629 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %628, !dbg !261
  %630 = load half, half* %629, align 2, !dbg !261, !tbaa !278
  %631 = extractelement <32 x i32> %598, i64 8, !dbg !261
  %632 = zext i32 %631 to i64, !dbg !261
  %633 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %632, !dbg !261
  %634 = load half, half* %633, align 2, !dbg !261, !tbaa !278
  %635 = extractelement <32 x i32> %598, i64 9, !dbg !261
  %636 = zext i32 %635 to i64, !dbg !261
  %637 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %636, !dbg !261
  %638 = load half, half* %637, align 2, !dbg !261, !tbaa !278
  %639 = extractelement <32 x i32> %598, i64 10, !dbg !261
  %640 = zext i32 %639 to i64, !dbg !261
  %641 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %640, !dbg !261
  %642 = load half, half* %641, align 2, !dbg !261, !tbaa !278
  %643 = extractelement <32 x i32> %598, i64 11, !dbg !261
  %644 = zext i32 %643 to i64, !dbg !261
  %645 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %644, !dbg !261
  %646 = load half, half* %645, align 2, !dbg !261, !tbaa !278
  %647 = extractelement <32 x i32> %598, i64 12, !dbg !261
  %648 = zext i32 %647 to i64, !dbg !261
  %649 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %648, !dbg !261
  %650 = load half, half* %649, align 2, !dbg !261, !tbaa !278
  %651 = extractelement <32 x i32> %598, i64 13, !dbg !261
  %652 = zext i32 %651 to i64, !dbg !261
  %653 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %652, !dbg !261
  %654 = load half, half* %653, align 2, !dbg !261, !tbaa !278
  %655 = extractelement <32 x i32> %598, i64 14, !dbg !261
  %656 = zext i32 %655 to i64, !dbg !261
  %657 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %656, !dbg !261
  %658 = load half, half* %657, align 2, !dbg !261, !tbaa !278
  %659 = extractelement <32 x i32> %598, i64 15, !dbg !261
  %660 = zext i32 %659 to i64, !dbg !261
  %661 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %660, !dbg !261
  %662 = load half, half* %661, align 2, !dbg !261, !tbaa !278
  %663 = extractelement <32 x i32> %598, i64 16, !dbg !261
  %664 = zext i32 %663 to i64, !dbg !261
  %665 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %664, !dbg !261
  %666 = load half, half* %665, align 2, !dbg !261, !tbaa !278
  %667 = extractelement <32 x i32> %598, i64 17, !dbg !261
  %668 = zext i32 %667 to i64, !dbg !261
  %669 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %668, !dbg !261
  %670 = load half, half* %669, align 2, !dbg !261, !tbaa !278
  %671 = extractelement <32 x i32> %598, i64 18, !dbg !261
  %672 = zext i32 %671 to i64, !dbg !261
  %673 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %672, !dbg !261
  %674 = load half, half* %673, align 2, !dbg !261, !tbaa !278
  %675 = extractelement <32 x i32> %598, i64 19, !dbg !261
  %676 = zext i32 %675 to i64, !dbg !261
  %677 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %676, !dbg !261
  %678 = load half, half* %677, align 2, !dbg !261, !tbaa !278
  %679 = extractelement <32 x i32> %598, i64 20, !dbg !261
  %680 = zext i32 %679 to i64, !dbg !261
  %681 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %680, !dbg !261
  %682 = load half, half* %681, align 2, !dbg !261, !tbaa !278
  %683 = extractelement <32 x i32> %598, i64 21, !dbg !261
  %684 = zext i32 %683 to i64, !dbg !261
  %685 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %684, !dbg !261
  %686 = load half, half* %685, align 2, !dbg !261, !tbaa !278
  %687 = extractelement <32 x i32> %598, i64 22, !dbg !261
  %688 = zext i32 %687 to i64, !dbg !261
  %689 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %688, !dbg !261
  %690 = load half, half* %689, align 2, !dbg !261, !tbaa !278
  %691 = extractelement <32 x i32> %598, i64 23, !dbg !261
  %692 = zext i32 %691 to i64, !dbg !261
  %693 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %692, !dbg !261
  %694 = load half, half* %693, align 2, !dbg !261, !tbaa !278
  %695 = extractelement <32 x i32> %598, i64 24, !dbg !261
  %696 = zext i32 %695 to i64, !dbg !261
  %697 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %696, !dbg !261
  %698 = load half, half* %697, align 2, !dbg !261, !tbaa !278
  %699 = extractelement <32 x i32> %598, i64 25, !dbg !261
  %700 = zext i32 %699 to i64, !dbg !261
  %701 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %700, !dbg !261
  %702 = load half, half* %701, align 2, !dbg !261, !tbaa !278
  %703 = extractelement <32 x i32> %598, i64 26, !dbg !261
  %704 = zext i32 %703 to i64, !dbg !261
  %705 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %704, !dbg !261
  %706 = load half, half* %705, align 2, !dbg !261, !tbaa !278
  %707 = extractelement <32 x i32> %598, i64 27, !dbg !261
  %708 = zext i32 %707 to i64, !dbg !261
  %709 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %708, !dbg !261
  %710 = load half, half* %709, align 2, !dbg !261, !tbaa !278
  %711 = extractelement <32 x i32> %598, i64 28, !dbg !261
  %712 = zext i32 %711 to i64, !dbg !261
  %713 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %712, !dbg !261
  %714 = load half, half* %713, align 2, !dbg !261, !tbaa !278
  %715 = extractelement <32 x i32> %598, i64 29, !dbg !261
  %716 = zext i32 %715 to i64, !dbg !261
  %717 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %716, !dbg !261
  %718 = load half, half* %717, align 2, !dbg !261, !tbaa !278
  %719 = extractelement <32 x i32> %598, i64 30, !dbg !261
  %720 = zext i32 %719 to i64, !dbg !261
  %721 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %720, !dbg !261
  %722 = load half, half* %721, align 2, !dbg !261, !tbaa !278
  %723 = extractelement <32 x i32> %598, i64 31, !dbg !261
  %724 = zext i32 %723 to i64, !dbg !261
  %725 = getelementptr inbounds [256 x half], [256 x half]* %CBits2, i64 0, i64 %724, !dbg !261
  %726 = load half, half* %725, align 2, !dbg !261, !tbaa !278
  %727 = insertelement <32 x half> undef, half %602, i64 0, !dbg !261
  %728 = insertelement <32 x half> %727, half %606, i64 1, !dbg !261
  %729 = insertelement <32 x half> %728, half %610, i64 2, !dbg !261
  %730 = insertelement <32 x half> %729, half %614, i64 3, !dbg !261
  %731 = insertelement <32 x half> %730, half %618, i64 4, !dbg !261
  %732 = insertelement <32 x half> %731, half %622, i64 5, !dbg !261
  %733 = insertelement <32 x half> %732, half %626, i64 6, !dbg !261
  %734 = insertelement <32 x half> %733, half %630, i64 7, !dbg !261
  %735 = insertelement <32 x half> %734, half %634, i64 8, !dbg !261
  %736 = insertelement <32 x half> %735, half %638, i64 9, !dbg !261
  %737 = insertelement <32 x half> %736, half %642, i64 10, !dbg !261
  %738 = insertelement <32 x half> %737, half %646, i64 11, !dbg !261
  %739 = insertelement <32 x half> %738, half %650, i64 12, !dbg !261
  %740 = insertelement <32 x half> %739, half %654, i64 13, !dbg !261
  %741 = insertelement <32 x half> %740, half %658, i64 14, !dbg !261
  %742 = insertelement <32 x half> %741, half %662, i64 15, !dbg !261
  %743 = insertelement <32 x half> %742, half %666, i64 16, !dbg !261
  %744 = insertelement <32 x half> %743, half %670, i64 17, !dbg !261
  %745 = insertelement <32 x half> %744, half %674, i64 18, !dbg !261
  %746 = insertelement <32 x half> %745, half %678, i64 19, !dbg !261
  %747 = insertelement <32 x half> %746, half %682, i64 20, !dbg !261
  %748 = insertelement <32 x half> %747, half %686, i64 21, !dbg !261
  %749 = insertelement <32 x half> %748, half %690, i64 22, !dbg !261
  %750 = insertelement <32 x half> %749, half %694, i64 23, !dbg !261
  %751 = insertelement <32 x half> %750, half %698, i64 24, !dbg !261
  %752 = insertelement <32 x half> %751, half %702, i64 25, !dbg !261
  %753 = insertelement <32 x half> %752, half %706, i64 26, !dbg !261
  %754 = insertelement <32 x half> %753, half %710, i64 27, !dbg !261
  %755 = insertelement <32 x half> %754, half %714, i64 28, !dbg !261
  %756 = insertelement <32 x half> %755, half %718, i64 29, !dbg !261
  %757 = insertelement <32 x half> %756, half %722, i64 30, !dbg !261
  %758 = insertelement <32 x half> %757, half %726, i64 31, !dbg !261
  %759 = tail call <32 x half> @llvm.fmuladd.v32f16(<32 x half> %597, <32 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <32 x half> %758), !dbg !261
  %760 = getelementptr inbounds [4 x <32 x half>], [4 x <32 x half>]* %C.global1, i64 0, i64 %indvars.iv8, !dbg !261
  store <32 x half> %759, <32 x half>* %760, align 64, !dbg !261, !tbaa !280
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !261
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next9, metadata !275, metadata !DIExpression()), !dbg !261
  %exitcond11.not = icmp eq i64 %indvars.iv.next9, 4, !dbg !261
  br i1 %exitcond11.not, label %for_begin_m.inner.outer.preheader, label %for_body_m.c.outer, !dbg !261, !prof !33
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <32 x half> @llvm.fmuladd.v32f16(<32 x half>, <32 x half>, <32 x half>) #1

; Function Attrs: nofree nosync nounwind readnone
define weak dso_local i16 @__truncsfhf2(float %a0) local_unnamed_addr #5 section ".text.tvm.fp16.conv" {
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

; Function Attrs: nofree nosync nounwind readnone
define weak dso_local float @__extendhfsf2(i16 %a0) local_unnamed_addr #5 section ".text.tvm.fp16.conv" {
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
  %v32.neg = mul i32 %v28, -8388608
  %v33 = add i32 %v32.neg, 1124073472
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

; Function Attrs: alwaysinline argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind readnone willreturn
declare <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <8 x half> @llvm.fmuladd.v8f16(<8 x half>, <8 x half>, <8 x half>) #8

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #4 = { nofree nosync nounwind "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #5 = { nofree nosync nounwind readnone "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #6 = { alwaysinline argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { alwaysinline mustprogress nofree nosync nounwind readnone willreturn }
attributes #8 = { alwaysinline mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "IRModule.CodeGenLLVM", directory: ".")
!2 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{i32 1, !"branch-target-enforcement", i32 0}
!5 = !{i32 1, !"sign-return-address", i32 0}
!6 = !{i32 1, !"sign-return-address-all", i32 0}
!7 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"PIC Level", i32 2}
!9 = !{i32 7, !"PIE Level", i32 2}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 1}
!12 = !{i32 2, !"tvm_target", !"llvm -mtriple=aarch64-linux-gnu -mattr=+v8.2a,+fullfp16,+fp-armv8,+neon"}
!13 = !{i32 4, !"Debug Info Version", i32 3}
!14 = !{i32 4, !"Dwarf Version", i32 4}
!15 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2", scope: !1, file: !1, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !20, !18, !19, !20, !19}
!18 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18)
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DILocalVariable(name: "args", arg: 1, scope: !15, file: !1, type: !19)
!23 = !DILocalVariable(name: "arg_type_ids", arg: 2, scope: !15, file: !1, type: !20)
!24 = !DILocalVariable(name: "num_args", arg: 3, scope: !15, file: !1, type: !18)
!25 = !DILocalVariable(name: "out_ret_value", arg: 4, scope: !15, file: !1, type: !19)
!26 = !DILocalVariable(name: "out_ret_tcode", arg: 5, scope: !15, file: !1, type: !20)
!27 = !DILocalVariable(name: "resource_handle", arg: 6, scope: !15, file: !1, type: !19)
!28 = !DILocation(line: 0, scope: !15)
!29 = !{!"branch_weights", i32 1048576, i32 1}
!30 = !{!31, !31, i64 0}
!31 = !{!"ctx_ptr", !32, i64 0}
!32 = !{!"tvm-tbaa"}
!33 = !{!"branch_weights", i32 1, i32 1048576}
!34 = !{!35, !35, i64 0}
!35 = !{!"0x3fc92dd0.w4.b0", !36, i64 0}
!36 = !{!"0x3fc92dd0.w8.b0", !37, i64 0}
!37 = !{!"0x3fc92dd0.w16.b0", !38, i64 0}
!38 = !{!"0x3fc92dd0.w32.b0", !39, i64 0}
!39 = !{!"0x3fc92dd0.w64.b0", !40, i64 0}
!40 = !{!"0x3fc92dd0.w128.b0", !41, i64 0}
!41 = !{!"0x3fc92dd0.w256.b0", !42, i64 0}
!42 = !{!"0x3fc92dd0.w512.b0", !43, i64 0}
!43 = !{!"0x3fc92dd0.w1024.b0", !44, i64 0}
!44 = !{!"0x3fc92dd0", !32, i64 0}
!45 = !DILocalVariable(name: "A.code", scope: !15, file: !1, type: !18)
!46 = !{!47, !47, i64 0}
!47 = !{!"0x3fc92dd0.w4.b4", !36, i64 0}
!48 = !DILocalVariable(name: "LUT.code", scope: !15, file: !1, type: !18)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x3fc92dd0.w4.b8", !51, i64 0}
!51 = !{!"0x3fc92dd0.w8.b8", !37, i64 0}
!52 = !DILocalVariable(name: "Scales.code", scope: !15, file: !1, type: !18)
!53 = !{!54, !54, i64 0}
!54 = !{!"0x3fc92dd0.w4.b12", !51, i64 0}
!55 = !DILocalVariable(name: "LUT_Scales.code", scope: !15, file: !1, type: !18)
!56 = !{!57, !57, i64 0}
!57 = !{!"0x3fc92dd0.w4.b16", !58, i64 0}
!58 = !{!"0x3fc92dd0.w8.b16", !59, i64 0}
!59 = !{!"0x3fc92dd0.w16.b16", !38, i64 0}
!60 = !DILocalVariable(name: "LUT_Biases.code", scope: !15, file: !1, type: !18)
!61 = !{!62, !62, i64 0}
!62 = !{!"0x3fc92dd0.w4.b20", !58, i64 0}
!63 = !DILocalVariable(name: "C.code", scope: !15, file: !1, type: !18)
!64 = !DILocalVariable(name: "A", scope: !15, file: !1, type: !19)
!65 = !DILocalVariable(name: "LUT", scope: !15, file: !1, type: !19)
!66 = !DILocalVariable(name: "Scales", scope: !15, file: !1, type: !19)
!67 = !DILocalVariable(name: "LUT_Scales", scope: !15, file: !1, type: !19)
!68 = !DILocalVariable(name: "LUT_Biases", scope: !15, file: !1, type: !19)
!69 = !DILocalVariable(name: "C", scope: !15, file: !1, type: !19)
!70 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape", scope: !15, file: !1, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72)
!72 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!73 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides", scope: !15, file: !1, type: !71)
!74 = !DILocalVariable(name: "dev_id", scope: !15, file: !1, type: !18)
!75 = !DILocalVariable(name: "A", scope: !15, file: !1, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77)
!77 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!78 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape", scope: !15, file: !1, type: !71)
!79 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides", scope: !15, file: !1, type: !71)
!80 = !DILocalVariable(name: "LUT", scope: !15, file: !1, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82)
!82 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!83 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape", scope: !15, file: !1, type: !71)
!84 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides", scope: !15, file: !1, type: !71)
!85 = !DILocalVariable(name: "Scales", scope: !15, file: !1, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87)
!87 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!88 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape", scope: !15, file: !1, type: !71)
!89 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides", scope: !15, file: !1, type: !71)
!90 = !DILocalVariable(name: "LUT_Scales", scope: !15, file: !1, type: !86)
!91 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape", scope: !15, file: !1, type: !71)
!92 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides", scope: !15, file: !1, type: !71)
!93 = !DILocalVariable(name: "LUT_Biases", scope: !15, file: !1, type: !86)
!94 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape", scope: !15, file: !1, type: !71)
!95 = !DILocalVariable(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides", scope: !15, file: !1, type: !71)
!96 = !DILocalVariable(name: "C", scope: !15, file: !1, type: !86)
!97 = !{!98, !98, i64 0}
!98 = !{!"0x3fd23620.w8.b0", !99, i64 0}
!99 = !{!"0x3fd23620.w16.b0", !100, i64 0}
!100 = !{!"0x3fd23620.w32.b0", !101, i64 0}
!101 = !{!"0x3fd23620.w64.b0", !102, i64 0}
!102 = !{!"0x3fd23620.w128.b0", !103, i64 0}
!103 = !{!"0x3fd23620.w256.b0", !104, i64 0}
!104 = !{!"0x3fd23620.w512.b0", !105, i64 0}
!105 = !{!"0x3fd23620.w1024.b0", !106, i64 0}
!106 = !{!"0x3fd23620", !32, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"0x3fd23620.w8.b8", !99, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x3fd23620.w8.b16", !111, i64 0}
!111 = !{!"0x3fd23620.w16.b16", !100, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"0x3ffc6da0.w8.b16", !114, i64 0}
!114 = !{!"0x3ffc6da0.w16.b16", !115, i64 0}
!115 = !{!"0x3ffc6da0.w32.b0", !116, i64 0}
!116 = !{!"0x3ffc6da0.w64.b0", !117, i64 0}
!117 = !{!"0x3ffc6da0.w128.b0", !118, i64 0}
!118 = !{!"0x3ffc6da0.w256.b0", !119, i64 0}
!119 = !{!"0x3ffc6da0.w512.b0", !120, i64 0}
!120 = !{!"0x3ffc6da0.w1024.b0", !121, i64 0}
!121 = !{!"0x3ffc6da0", !32, i64 0}
!122 = !{!123, !123, i64 0}
!123 = !{!"0x3ffc6da0.w8.b8", !124, i64 0}
!124 = !{!"0x3ffc6da0.w16.b0", !115, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"0x3ffc6da0.w8.b0", !124, i64 0}
!127 = !{!128, !128, i64 0}
!128 = !{!"0x3fcb0e30.w8.b0", !129, i64 0}
!129 = !{!"0x3fcb0e30.w16.b0", !130, i64 0}
!130 = !{!"0x3fcb0e30.w32.b0", !131, i64 0}
!131 = !{!"0x3fcb0e30.w64.b0", !132, i64 0}
!132 = !{!"0x3fcb0e30.w128.b0", !133, i64 0}
!133 = !{!"0x3fcb0e30.w256.b0", !134, i64 0}
!134 = !{!"0x3fcb0e30.w512.b0", !135, i64 0}
!135 = !{!"0x3fcb0e30.w1024.b0", !136, i64 0}
!136 = !{!"0x3fcb0e30", !32, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"0x3fcb0e30.w8.b8", !129, i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"0x3fcb0e30.w8.b16", !141, i64 0}
!141 = !{!"0x3fcb0e30.w16.b16", !130, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"0x3fcca050.w8.b16", !144, i64 0}
!144 = !{!"0x3fcca050.w16.b16", !145, i64 0}
!145 = !{!"0x3fcca050.w32.b0", !146, i64 0}
!146 = !{!"0x3fcca050.w64.b0", !147, i64 0}
!147 = !{!"0x3fcca050.w128.b0", !148, i64 0}
!148 = !{!"0x3fcca050.w256.b0", !149, i64 0}
!149 = !{!"0x3fcca050.w512.b0", !150, i64 0}
!150 = !{!"0x3fcca050.w1024.b0", !151, i64 0}
!151 = !{!"0x3fcca050", !32, i64 0}
!152 = !{!153, !153, i64 0}
!153 = !{!"0x3fcca050.w8.b8", !154, i64 0}
!154 = !{!"0x3fcca050.w16.b0", !145, i64 0}
!155 = !{!156, !156, i64 0}
!156 = !{!"0x3fcfa630.w8.b0", !157, i64 0}
!157 = !{!"0x3fcfa630.w16.b0", !158, i64 0}
!158 = !{!"0x3fcfa630.w32.b0", !159, i64 0}
!159 = !{!"0x3fcfa630.w64.b0", !160, i64 0}
!160 = !{!"0x3fcfa630.w128.b0", !161, i64 0}
!161 = !{!"0x3fcfa630.w256.b0", !162, i64 0}
!162 = !{!"0x3fcfa630.w512.b0", !163, i64 0}
!163 = !{!"0x3fcfa630.w1024.b0", !164, i64 0}
!164 = !{!"0x3fcfa630", !32, i64 0}
!165 = !{!166, !166, i64 0}
!166 = !{!"0x3fcfa630.w8.b8", !157, i64 0}
!167 = !{!168, !168, i64 0}
!168 = !{!"0x3fcfa630.w8.b16", !169, i64 0}
!169 = !{!"0x3fcfa630.w16.b16", !158, i64 0}
!170 = !{!171, !171, i64 0}
!171 = !{!"0x3fe2af20.w8.b16", !172, i64 0}
!172 = !{!"0x3fe2af20.w16.b16", !173, i64 0}
!173 = !{!"0x3fe2af20.w32.b0", !174, i64 0}
!174 = !{!"0x3fe2af20.w64.b0", !175, i64 0}
!175 = !{!"0x3fe2af20.w128.b0", !176, i64 0}
!176 = !{!"0x3fe2af20.w256.b0", !177, i64 0}
!177 = !{!"0x3fe2af20.w512.b0", !178, i64 0}
!178 = !{!"0x3fe2af20.w1024.b0", !179, i64 0}
!179 = !{!"0x3fe2af20", !32, i64 0}
!180 = !{!181, !181, i64 0}
!181 = !{!"0x3fe2af20.w8.b8", !182, i64 0}
!182 = !{!"0x3fe2af20.w16.b0", !173, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x3fe2af20.w8.b0", !182, i64 0}
!185 = !{!186, !186, i64 0}
!186 = !{!"0x3fcb7c00.w8.b0", !187, i64 0}
!187 = !{!"0x3fcb7c00.w16.b0", !188, i64 0}
!188 = !{!"0x3fcb7c00.w32.b0", !189, i64 0}
!189 = !{!"0x3fcb7c00.w64.b0", !190, i64 0}
!190 = !{!"0x3fcb7c00.w128.b0", !191, i64 0}
!191 = !{!"0x3fcb7c00.w256.b0", !192, i64 0}
!192 = !{!"0x3fcb7c00.w512.b0", !193, i64 0}
!193 = !{!"0x3fcb7c00.w1024.b0", !194, i64 0}
!194 = !{!"0x3fcb7c00", !32, i64 0}
!195 = !{!196, !196, i64 0}
!196 = !{!"0x3fcb7c00.w8.b8", !187, i64 0}
!197 = !{!198, !198, i64 0}
!198 = !{!"0x3ffe4a20.w8.b8", !199, i64 0}
!199 = !{!"0x3ffe4a20.w16.b0", !200, i64 0}
!200 = !{!"0x3ffe4a20.w32.b0", !201, i64 0}
!201 = !{!"0x3ffe4a20.w64.b0", !202, i64 0}
!202 = !{!"0x3ffe4a20.w128.b0", !203, i64 0}
!203 = !{!"0x3ffe4a20.w256.b0", !204, i64 0}
!204 = !{!"0x3ffe4a20.w512.b0", !205, i64 0}
!205 = !{!"0x3ffe4a20.w1024.b0", !206, i64 0}
!206 = !{!"0x3ffe4a20", !32, i64 0}
!207 = !{!208, !208, i64 0}
!208 = !{!"0x3fe00d60.w8.b0", !209, i64 0}
!209 = !{!"0x3fe00d60.w16.b0", !210, i64 0}
!210 = !{!"0x3fe00d60.w32.b0", !211, i64 0}
!211 = !{!"0x3fe00d60.w64.b0", !212, i64 0}
!212 = !{!"0x3fe00d60.w128.b0", !213, i64 0}
!213 = !{!"0x3fe00d60.w256.b0", !214, i64 0}
!214 = !{!"0x3fe00d60.w512.b0", !215, i64 0}
!215 = !{!"0x3fe00d60.w1024.b0", !216, i64 0}
!216 = !{!"0x3fe00d60", !32, i64 0}
!217 = !{!218, !218, i64 0}
!218 = !{!"0x3fe00d60.w8.b8", !209, i64 0}
!219 = !{!220, !220, i64 0}
!220 = !{!"0x3fcad410.w8.b8", !221, i64 0}
!221 = !{!"0x3fcad410.w16.b0", !222, i64 0}
!222 = !{!"0x3fcad410.w32.b0", !223, i64 0}
!223 = !{!"0x3fcad410.w64.b0", !224, i64 0}
!224 = !{!"0x3fcad410.w128.b0", !225, i64 0}
!225 = !{!"0x3fcad410.w256.b0", !226, i64 0}
!226 = !{!"0x3fcad410.w512.b0", !227, i64 0}
!227 = !{!"0x3fcad410.w1024.b0", !228, i64 0}
!228 = !{!"0x3fcad410", !32, i64 0}
!229 = !{!230, !230, i64 0}
!230 = !{!"0x400a3880.w8.b0", !231, i64 0}
!231 = !{!"0x400a3880.w16.b0", !232, i64 0}
!232 = !{!"0x400a3880.w32.b0", !233, i64 0}
!233 = !{!"0x400a3880.w64.b0", !234, i64 0}
!234 = !{!"0x400a3880.w128.b0", !235, i64 0}
!235 = !{!"0x400a3880.w256.b0", !236, i64 0}
!236 = !{!"0x400a3880.w512.b0", !237, i64 0}
!237 = !{!"0x400a3880.w1024.b0", !238, i64 0}
!238 = !{!"0x400a3880", !32, i64 0}
!239 = !{!240, !240, i64 0}
!240 = !{!"0x400a3880.w8.b8", !231, i64 0}
!241 = !{!242, !242, i64 0}
!242 = !{!"0x3fc6fed0.w8.b8", !243, i64 0}
!243 = !{!"0x3fc6fed0.w16.b0", !244, i64 0}
!244 = !{!"0x3fc6fed0.w32.b0", !245, i64 0}
!245 = !{!"0x3fc6fed0.w64.b0", !246, i64 0}
!246 = !{!"0x3fc6fed0.w128.b0", !247, i64 0}
!247 = !{!"0x3fc6fed0.w256.b0", !248, i64 0}
!248 = !{!"0x3fc6fed0.w512.b0", !249, i64 0}
!249 = !{!"0x3fc6fed0.w1024.b0", !250, i64 0}
!250 = !{!"0x3fc6fed0", !32, i64 0}
!251 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_", scope: !1, file: !1, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !254)
!252 = !DISubroutineType(types: !253)
!253 = !{!18, !81, !76, !86, !86, !86, !86}
!254 = !{!255, !256, !257, !258, !259, !260}
!255 = !DILocalVariable(name: "LUT", arg: 1, scope: !251, file: !1, type: !81)
!256 = !DILocalVariable(name: "A", arg: 2, scope: !251, file: !1, type: !76)
!257 = !DILocalVariable(name: "Scales", arg: 3, scope: !251, file: !1, type: !86)
!258 = !DILocalVariable(name: "LUT_Scales", arg: 4, scope: !251, file: !1, type: !86)
!259 = !DILocalVariable(name: "LUT_Biases", arg: 5, scope: !251, file: !1, type: !86)
!260 = !DILocalVariable(name: "C", arg: 6, scope: !251, file: !1, type: !86)
!261 = !DILocation(line: 0, scope: !251)
!262 = !DILocalVariable(name: "m.outer", scope: !251, file: !1, type: !18)
!263 = !DILocalVariable(name: "CBits", scope: !251, file: !1, type: !86)
!264 = !DILocalVariable(name: "C.global", scope: !251, file: !1, type: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266)
!266 = !DIBasicType(name: "float16x32", size: 512, encoding: DW_ATE_float)
!267 = !DILocalVariable(name: "k.outer", scope: !251, file: !1, type: !18)
!268 = !{!269, !269, i64 0}
!269 = !{!"__fp16", !270, i64 0}
!270 = !{!"omnipotent char", !271, i64 0}
!271 = !{!"Simple C++ TBAA"}
!272 = distinct !{!272, !273}
!273 = !{!"llvm.loop.mustprogress"}
!274 = !DILocalVariable(name: "m.inner.outer", scope: !251, file: !1, type: !18)
!275 = !DILocalVariable(name: "m.c.outer", scope: !251, file: !1, type: !18)
!276 = !DILocalVariable(name: "cse_var_1", scope: !251, file: !1, type: !277)
!277 = !DIBasicType(name: "int32x32", size: 1024, encoding: DW_ATE_signed)
!278 = !{!279, !279, i64 0}
!279 = !{!"0x3fca1680", !32, i64 0}
!280 = !{!281, !281, i64 0}
!281 = !{!"0x3fca1580", !32, i64 0}
