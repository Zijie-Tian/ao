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
@.str = private constant [86 x i8] c"Assert fail: num_args == 6, qgemm_lut_t4_int8_m6400_k3200_n1_b2: num_args should be 6\00", align 1
@.str.1 = private constant [104 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t4_int8_m6400_k3200_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [106 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t4_int8_m6400_k3200_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [137 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [145 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [157 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [173 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [173 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [137 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [118 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [120 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [122 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [124 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [128 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [130 x i8] c"Assert fail: 1 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.ndim is expected to equal 1\00", align 1
@.str.15 = private constant [136 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [138 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [136 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [138 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [118 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [120 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [239 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [241 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[0]) == 25, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape[0] has an unsatisfied constraint: 25 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [243 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[1]) == 800, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [243 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[2]) == 128, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape[2] has an unsatisfied constraint: 128 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [318 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_strides[2]) and 128 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_strides[1]) and 102400 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_strides[0]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [206 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [186 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [113 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [246 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [249 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[1]) == 800, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [247 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [243 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_strides[1]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [212 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [192 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [198 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [117 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [262 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_Scales_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_Scales_shape[0])\00", align 1
@.str.41 = private constant [221 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.42 = private constant [201 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.43 = private constant [207 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.44 = private constant [123 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.45 = private constant [278 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.46 = private constant [266 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.47 = private constant [268 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[1]) == 50, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.48 = private constant [179 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.49 = private constant [233 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.50 = private constant [213 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.51 = private constant [219 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.52 = private constant [131 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.53 = private constant [278 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.54 = private constant [266 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.55 = private constant [268 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[1]) == 50, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.56 = private constant [179 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.57 = private constant [233 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.58 = private constant [213 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.59 = private constant [219 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.60 = private constant [131 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.61 = private constant [242 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.dtype is expected to be float16\00", align 1
@.str.62 = private constant [239 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_shape[0])\00", align 1
@.str.63 = private constant [245 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_shape[1]) == 3200, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape[1] has an unsatisfied constraint: 3200 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_shape[1])\00", align 1
@.str.64 = private constant [161 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_strides[1]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides: expected to be compact array\00", align 1
@.str.65 = private constant [206 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.66 = private constant [186 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.67 = private constant [192 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.68 = private constant [113 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C is expected to have non-NULL data pointer\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [36 x i8] c"qgemm_lut_t4_int8_m6400_k3200_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t4_int8_m6400_k3200_n1_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !18, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !19, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !20, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !21, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = icmp eq i32 %num_args, 6, !dbg !24
  br i1 %0, label %assert_end, label %assert_fail, !dbg !24, !prof !25

common.ret:                                       ; preds = %assert_end158, %assert_fail157, %assert_fail155, %assert_fail153, %assert_fail151, %assert_fail149, %assert_fail145, %assert_fail143, %assert_fail141, %assert_fail139, %assert_fail137, %assert_fail135, %assert_fail133, %assert_fail131, %assert_fail127, %assert_fail125, %assert_fail123, %assert_fail121, %assert_fail119, %assert_fail117, %assert_fail115, %assert_fail113, %assert_fail109, %assert_fail107, %assert_fail105, %assert_fail103, %assert_fail101, %assert_fail99, %assert_fail97, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail83, %assert_fail81, %assert_fail79, %assert_fail75, %assert_fail73, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail61, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail49, %assert_fail47, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail97 ], [ -1, %assert_fail99 ], [ -1, %assert_fail101 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ -1, %assert_fail107 ], [ -1, %assert_fail109 ], [ -1, %assert_fail113 ], [ -1, %assert_fail115 ], [ -1, %assert_fail117 ], [ -1, %assert_fail119 ], [ -1, %assert_fail121 ], [ -1, %assert_fail123 ], [ -1, %assert_fail125 ], [ -1, %assert_fail127 ], [ -1, %assert_fail131 ], [ -1, %assert_fail133 ], [ -1, %assert_fail135 ], [ -1, %assert_fail137 ], [ -1, %assert_fail139 ], [ -1, %assert_fail141 ], [ -1, %assert_fail143 ], [ -1, %assert_fail145 ], [ -1, %assert_fail149 ], [ -1, %assert_fail151 ], [ -1, %assert_fail153 ], [ -1, %assert_fail155 ], [ -1, %assert_fail157 ], [ %306, %assert_end158 ]
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
  %.not165 = icmp eq ptr %arg_type_ids, null, !dbg !24
  br i1 %.not165, label %assert_fail3, label %assert_end4, !dbg !24, !prof !29

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
  %.not166 = icmp eq ptr %A, null, !dbg !24
  br i1 %.not166, label %assert_fail17, label %assert_end18, !dbg !24, !prof !29

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
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  %27 = getelementptr inbounds %1, ptr %A, i64 0, i32 1, i32 1, !dbg !24
  %dev_id = load i32, ptr %27, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !70, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !70, metadata !DIExpression()), !dbg !24
  %A160 = load ptr, ptr %A, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A160, metadata !71, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A160, metadata !71, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %A160, i64 64) ], !dbg !24
  %.not167 = icmp eq ptr %LUT, null, !dbg !24
  br i1 %.not167, label %assert_fail23, label %assert_end24, !dbg !24, !prof !29

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
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  %LUT159 = load ptr, ptr %LUT, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT159, metadata !76, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT159, metadata !76, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT159, i64 64) ], !dbg !24
  %.not168 = icmp eq ptr %Scales, null, !dbg !24
  br i1 %.not168, label %assert_fail29, label %assert_end30, !dbg !24, !prof !29

assert_fail29:                                    ; preds = %assert_end26
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %35(ptr nonnull @.str.13), !dbg !24
  br label %common.ret

assert_end30:                                     ; preds = %assert_end26
  %36 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 2, !dbg !24
  %37 = load i32, ptr %36, align 4, !dbg !24
  %38 = icmp eq i32 %37, 1, !dbg !24
  br i1 %38, label %assert_end32, label %assert_fail31, !dbg !24, !prof !25

assert_fail31:                                    ; preds = %assert_end30
  %39 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %39(ptr nonnull @.str.14), !dbg !24
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %40 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr poison, metadata !80, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr poison, metadata !80, metadata !DIExpression()), !dbg !24
  %Scales161 = load ptr, ptr %Scales, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales161, metadata !81, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales161, metadata !81, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %Scales161, i64 64) ], !dbg !24
  %.not169 = icmp eq ptr %LUT_Scales, null, !dbg !24
  br i1 %.not169, label %assert_fail35, label %assert_end36, !dbg !24, !prof !29

assert_fail35:                                    ; preds = %assert_end32
  %41 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %41(ptr nonnull @.str.15), !dbg !24
  br label %common.ret

assert_end36:                                     ; preds = %assert_end32
  %42 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 2, !dbg !24
  %43 = load i32, ptr %42, align 4, !dbg !24
  %44 = icmp eq i32 %43, 2, !dbg !24
  br i1 %44, label %assert_end38, label %assert_fail37, !dbg !24, !prof !25

assert_fail37:                                    ; preds = %assert_end36
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %45(ptr nonnull @.str.16), !dbg !24
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %46 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape = load ptr, ptr %46, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %47 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  %LUT_Scales162 = load ptr, ptr %LUT_Scales, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales162, metadata !86, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales162, metadata !86, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT_Scales162, i64 64) ], !dbg !24
  %.not170 = icmp eq ptr %LUT_Biases, null, !dbg !24
  br i1 %.not170, label %assert_fail41, label %assert_end42, !dbg !24, !prof !29

assert_fail41:                                    ; preds = %assert_end38
  %48 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %48(ptr nonnull @.str.17), !dbg !24
  br label %common.ret

assert_end42:                                     ; preds = %assert_end38
  %49 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 2, !dbg !24
  %50 = load i32, ptr %49, align 4, !dbg !24
  %51 = icmp eq i32 %50, 2, !dbg !24
  br i1 %51, label %assert_end44, label %assert_fail43, !dbg !24, !prof !25

assert_fail43:                                    ; preds = %assert_end42
  %52 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %52(ptr nonnull @.str.18), !dbg !24
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %53 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape = load ptr, ptr %53, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %54 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  %LUT_Biases163 = load ptr, ptr %LUT_Biases, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases163, metadata !89, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases163, metadata !89, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT_Biases163, i64 64) ], !dbg !24
  %.not171 = icmp eq ptr %C, null, !dbg !24
  br i1 %.not171, label %assert_fail47, label %assert_end48, !dbg !24, !prof !29

assert_fail47:                                    ; preds = %assert_end44
  %55 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %55(ptr nonnull @.str.19), !dbg !24
  br label %common.ret

assert_end48:                                     ; preds = %assert_end44
  %56 = getelementptr inbounds %1, ptr %C, i64 0, i32 2, !dbg !24
  %57 = load i32, ptr %56, align 4, !dbg !24
  %58 = icmp eq i32 %57, 2, !dbg !24
  br i1 %58, label %assert_end50, label %assert_fail49, !dbg !24, !prof !25

assert_fail49:                                    ; preds = %assert_end48
  %59 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %59(ptr nonnull @.str.20), !dbg !24
  br label %common.ret

assert_end50:                                     ; preds = %assert_end48
  %60 = getelementptr inbounds %1, ptr %C, i64 0, i32 4, !dbg !24
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape = load ptr, ptr %60, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %61 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  %C164 = load ptr, ptr %C, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C164, metadata !92, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C164, metadata !92, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %C164, i64 64) ], !dbg !24
  %62 = getelementptr inbounds %1, ptr %A, i64 0, i32 3, i32 0, !dbg !24
  %63 = load i8, ptr %62, align 1, !dbg !24
  %64 = icmp eq i8 %63, 1, !dbg !24
  %65 = getelementptr inbounds %1, ptr %A, i64 0, i32 3, i32 1, !dbg !24
  %66 = load i8, ptr %65, align 1, !dbg !24
  %67 = icmp eq i8 %66, 8, !dbg !24
  %68 = and i1 %64, %67, !dbg !24
  %69 = getelementptr inbounds %1, ptr %A, i64 0, i32 3, i32 2, !dbg !24
  %70 = load i16, ptr %69, align 2, !dbg !24
  %71 = icmp eq i16 %70, 1, !dbg !24
  %72 = and i1 %68, %71, !dbg !24
  br i1 %72, label %assert_end54, label %assert_fail53, !dbg !24, !prof !25

assert_fail53:                                    ; preds = %assert_end50
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %73(ptr nonnull @.str.21), !dbg !24
  br label %common.ret

assert_end54:                                     ; preds = %assert_end50
  %74 = load i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %75 = and i64 %74, 4294967295, !dbg !24
  %76 = icmp eq i64 %75, 25, !dbg !24
  br i1 %76, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %77(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %78 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, i64 1, !dbg !24
  %79 = load i64, ptr %78, align 8, !dbg !24, !tbaa !103
  %80 = and i64 %79, 4294967295, !dbg !24
  %81 = icmp eq i64 %80, 800, !dbg !24
  br i1 %81, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %82(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %83 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, i64 2, !dbg !24
  %84 = load i64, ptr %83, align 8, !dbg !24, !tbaa !105
  %85 = and i64 %84, 4294967295, !dbg !24
  %86 = icmp eq i64 %85, 128, !dbg !24
  br i1 %86, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %87(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not172 = icmp eq ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, null, !dbg !24
  br i1 %.not172, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %88 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, i64 2, !dbg !24
  %89 = load i64, ptr %88, align 8, !dbg !24, !tbaa !108
  %90 = and i64 %89, 4294967295, !dbg !24
  %91 = icmp eq i64 %90, 1, !dbg !24
  %92 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, i64 1, !dbg !24
  %93 = load i64, ptr %92, align 8, !dbg !24, !tbaa !118
  %94 = and i64 %93, 4294967295, !dbg !24
  %95 = icmp eq i64 %94, 128, !dbg !24
  %96 = and i1 %91, %95, !dbg !24
  %97 = load i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, align 8, !dbg !24, !tbaa !121
  %98 = and i64 %97, 4294967295, !dbg !24
  %99 = icmp eq i64 %98, 102400, !dbg !24
  %100 = and i1 %96, %99, !dbg !24
  br i1 %100, label %if_end, label %assert_fail61, !dbg !24, !prof !25

if_end:                                           ; preds = %if_then, %assert_end60
  %101 = getelementptr inbounds %1, ptr %A, i64 0, i32 6, !dbg !24
  %102 = load i64, ptr %101, align 8, !dbg !24
  %103 = icmp eq i64 %102, 0, !dbg !24
  br i1 %103, label %assert_end64, label %assert_fail63, !dbg !24, !prof !25

assert_fail61:                                    ; preds = %if_then
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %104(ptr nonnull @.str.25), !dbg !24
  br label %common.ret

assert_fail63:                                    ; preds = %if_end
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %105(ptr nonnull @.str.26), !dbg !24
  br label %common.ret

assert_end64:                                     ; preds = %if_end
  %106 = getelementptr inbounds %1, ptr %A, i64 0, i32 1, i32 0, !dbg !24
  %107 = load i32, ptr %106, align 4, !dbg !24
  %108 = icmp eq i32 %107, 1, !dbg !24
  br i1 %108, label %assert_end66, label %assert_fail65, !dbg !24, !prof !25

assert_fail65:                                    ; preds = %assert_end64
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %109(ptr nonnull @.str.27), !dbg !24
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %.not173 = icmp eq ptr %A160, null, !dbg !24
  br i1 %.not173, label %assert_fail67, label %assert_end68, !dbg !24, !prof !29

assert_fail67:                                    ; preds = %assert_end66
  %110 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %110(ptr nonnull @.str.28), !dbg !24
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %111 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 0, !dbg !24
  %112 = load i8, ptr %111, align 1, !dbg !24
  %113 = icmp eq i8 %112, 0, !dbg !24
  %114 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 1, !dbg !24
  %115 = load i8, ptr %114, align 1, !dbg !24
  %116 = icmp eq i8 %115, 8, !dbg !24
  %117 = and i1 %113, %116, !dbg !24
  %118 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 2, !dbg !24
  %119 = load i16, ptr %118, align 2, !dbg !24
  %120 = icmp eq i16 %119, 1, !dbg !24
  %121 = and i1 %117, %120, !dbg !24
  br i1 %121, label %assert_end70, label %assert_fail69, !dbg !24, !prof !25

assert_fail69:                                    ; preds = %assert_end68
  %122 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %122(ptr nonnull @.str.29), !dbg !24
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %123 = load i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, align 8, !dbg !24, !tbaa !123
  %124 = and i64 %123, 4294967295, !dbg !24
  %125 = icmp eq i64 %124, 1, !dbg !24
  br i1 %125, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %126 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %126(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %127 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, i64 1, !dbg !24
  %128 = load i64, ptr %127, align 8, !dbg !24, !tbaa !133
  %129 = and i64 %128, 4294967295, !dbg !24
  %130 = icmp eq i64 %129, 800, !dbg !24
  br i1 %130, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %131 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %131(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %132 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, i64 2, !dbg !24
  %133 = load i64, ptr %132, align 8, !dbg !24, !tbaa !135
  %134 = and i64 %133, 4294967295, !dbg !24
  %135 = icmp eq i64 %134, 16, !dbg !24
  br i1 %135, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %136 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %136(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not174 = icmp eq ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, null, !dbg !24
  br i1 %.not174, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %137 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, i64 2, !dbg !24
  %138 = load i64, ptr %137, align 8, !dbg !24, !tbaa !138
  %139 = and i64 %138, 4294967295, !dbg !24
  %140 = icmp eq i64 %139, 1, !dbg !24
  %141 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, i64 1, !dbg !24
  %142 = load i64, ptr %141, align 8, !dbg !24, !tbaa !148
  %143 = and i64 %142, 4294967295, !dbg !24
  %144 = icmp eq i64 %143, 16, !dbg !24
  %145 = and i1 %140, %144, !dbg !24
  br i1 %145, label %if_end78, label %assert_fail79, !dbg !24, !prof !25

if_end78:                                         ; preds = %if_then77, %assert_end76
  %146 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 6, !dbg !24
  %147 = load i64, ptr %146, align 8, !dbg !24
  %148 = icmp eq i64 %147, 0, !dbg !24
  br i1 %148, label %assert_end82, label %assert_fail81, !dbg !24, !prof !25

assert_fail79:                                    ; preds = %if_then77
  %149 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %149(ptr nonnull @.str.33), !dbg !24
  br label %common.ret

assert_fail81:                                    ; preds = %if_end78
  %150 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %150(ptr nonnull @.str.34), !dbg !24
  br label %common.ret

assert_end82:                                     ; preds = %if_end78
  %151 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 0, !dbg !24
  %152 = load i32, ptr %151, align 4, !dbg !24
  %153 = icmp eq i32 %152, 1, !dbg !24
  br i1 %153, label %assert_end84, label %assert_fail83, !dbg !24, !prof !25

assert_fail83:                                    ; preds = %assert_end82
  %154 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %154(ptr nonnull @.str.35), !dbg !24
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %155 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 1, !dbg !24
  %156 = load i32, ptr %155, align 4, !dbg !24
  %157 = icmp eq i32 %dev_id, %156, !dbg !24
  br i1 %157, label %assert_end86, label %assert_fail85, !dbg !24, !prof !25

assert_fail85:                                    ; preds = %assert_end84
  %158 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %158(ptr nonnull @.str.36), !dbg !24
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %.not175 = icmp eq ptr %LUT159, null, !dbg !24
  br i1 %.not175, label %assert_fail87, label %assert_end88, !dbg !24, !prof !29

assert_fail87:                                    ; preds = %assert_end86
  %159 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %159(ptr nonnull @.str.37), !dbg !24
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %160 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 0, !dbg !24
  %161 = load i8, ptr %160, align 1, !dbg !24
  %162 = icmp eq i8 %161, 2, !dbg !24
  %163 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 1, !dbg !24
  %164 = load i8, ptr %163, align 1, !dbg !24
  %165 = icmp eq i8 %164, 16, !dbg !24
  %166 = and i1 %162, %165, !dbg !24
  %167 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 2, !dbg !24
  %168 = load i16, ptr %167, align 2, !dbg !24
  %169 = icmp eq i16 %168, 1, !dbg !24
  %170 = and i1 %166, %169, !dbg !24
  br i1 %170, label %assert_end90, label %assert_fail89, !dbg !24, !prof !25

assert_fail89:                                    ; preds = %assert_end88
  %171 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %171(ptr nonnull @.str.38), !dbg !24
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %172 = load i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape, align 8, !dbg !24, !tbaa !151
  %173 = and i64 %172, 4294967295, !dbg !24
  %174 = icmp eq i64 %173, 1, !dbg !24
  br i1 %174, label %if_end94, label %assert_fail91, !dbg !24, !prof !25

assert_fail91:                                    ; preds = %assert_end90
  %175 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %175(ptr nonnull @.str.39), !dbg !24
  br label %common.ret

if_end94:                                         ; preds = %assert_end90
  %176 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 6, !dbg !24
  %177 = load i64, ptr %176, align 8, !dbg !24
  %178 = icmp eq i64 %177, 0, !dbg !24
  br i1 %178, label %assert_end98, label %assert_fail97, !dbg !24, !prof !25

assert_fail97:                                    ; preds = %if_end94
  %179 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %179(ptr nonnull @.str.41), !dbg !24
  br label %common.ret

assert_end98:                                     ; preds = %if_end94
  %180 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 0, !dbg !24
  %181 = load i32, ptr %180, align 4, !dbg !24
  %182 = icmp eq i32 %181, 1, !dbg !24
  br i1 %182, label %assert_end100, label %assert_fail99, !dbg !24, !prof !25

assert_fail99:                                    ; preds = %assert_end98
  %183 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %183(ptr nonnull @.str.42), !dbg !24
  br label %common.ret

assert_end100:                                    ; preds = %assert_end98
  %184 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 1, !dbg !24
  %185 = load i32, ptr %184, align 4, !dbg !24
  %186 = icmp eq i32 %dev_id, %185, !dbg !24
  br i1 %186, label %assert_end102, label %assert_fail101, !dbg !24, !prof !25

assert_fail101:                                   ; preds = %assert_end100
  %187 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %187(ptr nonnull @.str.43), !dbg !24
  br label %common.ret

assert_end102:                                    ; preds = %assert_end100
  %.not176 = icmp eq ptr %Scales161, null, !dbg !24
  br i1 %.not176, label %assert_fail103, label %assert_end104, !dbg !24, !prof !29

assert_fail103:                                   ; preds = %assert_end102
  %188 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %188(ptr nonnull @.str.44), !dbg !24
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %189 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 0, !dbg !24
  %190 = load i8, ptr %189, align 1, !dbg !24
  %191 = icmp eq i8 %190, 2, !dbg !24
  %192 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 1, !dbg !24
  %193 = load i8, ptr %192, align 1, !dbg !24
  %194 = icmp eq i8 %193, 16, !dbg !24
  %195 = and i1 %191, %194, !dbg !24
  %196 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 2, !dbg !24
  %197 = load i16, ptr %196, align 2, !dbg !24
  %198 = icmp eq i16 %197, 1, !dbg !24
  %199 = and i1 %195, %198, !dbg !24
  br i1 %199, label %assert_end106, label %assert_fail105, !dbg !24, !prof !25

assert_fail105:                                   ; preds = %assert_end104
  %200 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %200(ptr nonnull @.str.45), !dbg !24
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  %201 = load i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !161
  %202 = and i64 %201, 4294967295, !dbg !24
  %203 = icmp eq i64 %202, 1, !dbg !24
  br i1 %203, label %assert_end108, label %assert_fail107, !dbg !24, !prof !25

assert_fail107:                                   ; preds = %assert_end106
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %204(ptr nonnull @.str.46), !dbg !24
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %205 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, i64 1, !dbg !24
  %206 = load i64, ptr %205, align 8, !dbg !24, !tbaa !171
  %207 = and i64 %206, 4294967295, !dbg !24
  %208 = icmp eq i64 %207, 50, !dbg !24
  br i1 %208, label %assert_end110, label %assert_fail109, !dbg !24, !prof !25

assert_fail109:                                   ; preds = %assert_end108
  %209 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %209(ptr nonnull @.str.47), !dbg !24
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %.not177 = icmp eq ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not177, label %if_end112, label %if_then111, !dbg !24, !prof !29

if_then111:                                       ; preds = %assert_end110
  %210 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, i64 1, !dbg !24
  %211 = load i64, ptr %210, align 8, !dbg !24, !tbaa !173
  %212 = and i64 %211, 4294967295, !dbg !24
  %213 = icmp eq i64 %212, 1, !dbg !24
  br i1 %213, label %if_end112, label %assert_fail113, !dbg !24, !prof !25

if_end112:                                        ; preds = %if_then111, %assert_end110
  %214 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 6, !dbg !24
  %215 = load i64, ptr %214, align 8, !dbg !24
  %216 = icmp eq i64 %215, 0, !dbg !24
  br i1 %216, label %assert_end116, label %assert_fail115, !dbg !24, !prof !25

assert_fail113:                                   ; preds = %if_then111
  %217 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %217(ptr nonnull @.str.48), !dbg !24
  br label %common.ret

assert_fail115:                                   ; preds = %if_end112
  %218 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %218(ptr nonnull @.str.49), !dbg !24
  br label %common.ret

assert_end116:                                    ; preds = %if_end112
  %219 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 0, !dbg !24
  %220 = load i32, ptr %219, align 4, !dbg !24
  %221 = icmp eq i32 %220, 1, !dbg !24
  br i1 %221, label %assert_end118, label %assert_fail117, !dbg !24, !prof !25

assert_fail117:                                   ; preds = %assert_end116
  %222 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %222(ptr nonnull @.str.50), !dbg !24
  br label %common.ret

assert_end118:                                    ; preds = %assert_end116
  %223 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 1, !dbg !24
  %224 = load i32, ptr %223, align 4, !dbg !24
  %225 = icmp eq i32 %dev_id, %224, !dbg !24
  br i1 %225, label %assert_end120, label %assert_fail119, !dbg !24, !prof !25

assert_fail119:                                   ; preds = %assert_end118
  %226 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %226(ptr nonnull @.str.51), !dbg !24
  br label %common.ret

assert_end120:                                    ; preds = %assert_end118
  %.not178 = icmp eq ptr %LUT_Scales162, null, !dbg !24
  br i1 %.not178, label %assert_fail121, label %assert_end122, !dbg !24, !prof !29

assert_fail121:                                   ; preds = %assert_end120
  %227 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %227(ptr nonnull @.str.52), !dbg !24
  br label %common.ret

assert_end122:                                    ; preds = %assert_end120
  %228 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 0, !dbg !24
  %229 = load i8, ptr %228, align 1, !dbg !24
  %230 = icmp eq i8 %229, 2, !dbg !24
  %231 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 1, !dbg !24
  %232 = load i8, ptr %231, align 1, !dbg !24
  %233 = icmp eq i8 %232, 16, !dbg !24
  %234 = and i1 %230, %233, !dbg !24
  %235 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 2, !dbg !24
  %236 = load i16, ptr %235, align 2, !dbg !24
  %237 = icmp eq i16 %236, 1, !dbg !24
  %238 = and i1 %234, %237, !dbg !24
  br i1 %238, label %assert_end124, label %assert_fail123, !dbg !24, !prof !25

assert_fail123:                                   ; preds = %assert_end122
  %239 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %239(ptr nonnull @.str.53), !dbg !24
  br label %common.ret

assert_end124:                                    ; preds = %assert_end122
  %240 = load i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !183
  %241 = and i64 %240, 4294967295, !dbg !24
  %242 = icmp eq i64 %241, 1, !dbg !24
  br i1 %242, label %assert_end126, label %assert_fail125, !dbg !24, !prof !25

assert_fail125:                                   ; preds = %assert_end124
  %243 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %243(ptr nonnull @.str.54), !dbg !24
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %244 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, i64 1, !dbg !24
  %245 = load i64, ptr %244, align 8, !dbg !24, !tbaa !193
  %246 = and i64 %245, 4294967295, !dbg !24
  %247 = icmp eq i64 %246, 50, !dbg !24
  br i1 %247, label %assert_end128, label %assert_fail127, !dbg !24, !prof !25

assert_fail127:                                   ; preds = %assert_end126
  %248 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %248(ptr nonnull @.str.55), !dbg !24
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %.not179 = icmp eq ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not179, label %if_end130, label %if_then129, !dbg !24, !prof !29

if_then129:                                       ; preds = %assert_end128
  %249 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, i64 1, !dbg !24
  %250 = load i64, ptr %249, align 8, !dbg !24, !tbaa !195
  %251 = and i64 %250, 4294967295, !dbg !24
  %252 = icmp eq i64 %251, 1, !dbg !24
  br i1 %252, label %if_end130, label %assert_fail131, !dbg !24, !prof !25

if_end130:                                        ; preds = %if_then129, %assert_end128
  %253 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 6, !dbg !24
  %254 = load i64, ptr %253, align 8, !dbg !24
  %255 = icmp eq i64 %254, 0, !dbg !24
  br i1 %255, label %assert_end134, label %assert_fail133, !dbg !24, !prof !25

assert_fail131:                                   ; preds = %if_then129
  %256 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %256(ptr nonnull @.str.56), !dbg !24
  br label %common.ret

assert_fail133:                                   ; preds = %if_end130
  %257 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %257(ptr nonnull @.str.57), !dbg !24
  br label %common.ret

assert_end134:                                    ; preds = %if_end130
  %258 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 0, !dbg !24
  %259 = load i32, ptr %258, align 4, !dbg !24
  %260 = icmp eq i32 %259, 1, !dbg !24
  br i1 %260, label %assert_end136, label %assert_fail135, !dbg !24, !prof !25

assert_fail135:                                   ; preds = %assert_end134
  %261 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %261(ptr nonnull @.str.58), !dbg !24
  br label %common.ret

assert_end136:                                    ; preds = %assert_end134
  %262 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 1, !dbg !24
  %263 = load i32, ptr %262, align 4, !dbg !24
  %264 = icmp eq i32 %dev_id, %263, !dbg !24
  br i1 %264, label %assert_end138, label %assert_fail137, !dbg !24, !prof !25

assert_fail137:                                   ; preds = %assert_end136
  %265 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %265(ptr nonnull @.str.59), !dbg !24
  br label %common.ret

assert_end138:                                    ; preds = %assert_end136
  %.not180 = icmp eq ptr %LUT_Biases163, null, !dbg !24
  br i1 %.not180, label %assert_fail139, label %assert_end140, !dbg !24, !prof !29

assert_fail139:                                   ; preds = %assert_end138
  %266 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %266(ptr nonnull @.str.60), !dbg !24
  br label %common.ret

assert_end140:                                    ; preds = %assert_end138
  %267 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 0, !dbg !24
  %268 = load i8, ptr %267, align 1, !dbg !24
  %269 = icmp eq i8 %268, 2, !dbg !24
  %270 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 1, !dbg !24
  %271 = load i8, ptr %270, align 1, !dbg !24
  %272 = icmp eq i8 %271, 16, !dbg !24
  %273 = and i1 %269, %272, !dbg !24
  %274 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 2, !dbg !24
  %275 = load i16, ptr %274, align 2, !dbg !24
  %276 = icmp eq i16 %275, 1, !dbg !24
  %277 = and i1 %273, %276, !dbg !24
  br i1 %277, label %assert_end142, label %assert_fail141, !dbg !24, !prof !25

assert_fail141:                                   ; preds = %assert_end140
  %278 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %278(ptr nonnull @.str.61), !dbg !24
  br label %common.ret

assert_end142:                                    ; preds = %assert_end140
  %279 = load i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape, align 8, !dbg !24, !tbaa !205
  %280 = and i64 %279, 4294967295, !dbg !24
  %281 = icmp eq i64 %280, 1, !dbg !24
  br i1 %281, label %assert_end144, label %assert_fail143, !dbg !24, !prof !25

assert_fail143:                                   ; preds = %assert_end142
  %282 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %282(ptr nonnull @.str.62), !dbg !24
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %283 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape, i64 1, !dbg !24
  %284 = load i64, ptr %283, align 8, !dbg !24, !tbaa !215
  %285 = and i64 %284, 4294967295, !dbg !24
  %286 = icmp eq i64 %285, 3200, !dbg !24
  br i1 %286, label %assert_end146, label %assert_fail145, !dbg !24, !prof !25

assert_fail145:                                   ; preds = %assert_end144
  %287 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %287(ptr nonnull @.str.63), !dbg !24
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %.not181 = icmp eq ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides, null, !dbg !24
  br i1 %.not181, label %if_end148, label %if_then147, !dbg !24, !prof !29

if_then147:                                       ; preds = %assert_end146
  %288 = getelementptr inbounds i64, ptr %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides, i64 1, !dbg !24
  %289 = load i64, ptr %288, align 8, !dbg !24, !tbaa !217
  %290 = and i64 %289, 4294967295, !dbg !24
  %291 = icmp eq i64 %290, 1, !dbg !24
  br i1 %291, label %if_end148, label %assert_fail149, !dbg !24, !prof !25

if_end148:                                        ; preds = %if_then147, %assert_end146
  %292 = getelementptr inbounds %1, ptr %C, i64 0, i32 6, !dbg !24
  %293 = load i64, ptr %292, align 8, !dbg !24
  %294 = icmp eq i64 %293, 0, !dbg !24
  br i1 %294, label %assert_end152, label %assert_fail151, !dbg !24, !prof !25

assert_fail149:                                   ; preds = %if_then147
  %295 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %295(ptr nonnull @.str.64), !dbg !24
  br label %common.ret

assert_fail151:                                   ; preds = %if_end148
  %296 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %296(ptr nonnull @.str.65), !dbg !24
  br label %common.ret

assert_end152:                                    ; preds = %if_end148
  %297 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 0, !dbg !24
  %298 = load i32, ptr %297, align 4, !dbg !24
  %299 = icmp eq i32 %298, 1, !dbg !24
  br i1 %299, label %assert_end154, label %assert_fail153, !dbg !24, !prof !25

assert_fail153:                                   ; preds = %assert_end152
  %300 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %300(ptr nonnull @.str.66), !dbg !24
  br label %common.ret

assert_end154:                                    ; preds = %assert_end152
  %301 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 1, !dbg !24
  %302 = load i32, ptr %301, align 4, !dbg !24
  %303 = icmp eq i32 %dev_id, %302, !dbg !24
  br i1 %303, label %assert_end156, label %assert_fail155, !dbg !24, !prof !25

assert_fail155:                                   ; preds = %assert_end154
  %304 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %304(ptr nonnull @.str.67), !dbg !24
  br label %common.ret

assert_end156:                                    ; preds = %assert_end154
  %.not182 = icmp eq ptr %C164, null, !dbg !24
  br i1 %.not182, label %assert_fail157, label %assert_end158, !dbg !24, !prof !29

assert_fail157:                                   ; preds = %assert_end156
  %305 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %305(ptr nonnull @.str.68), !dbg !24
  br label %common.ret

assert_end158:                                    ; preds = %assert_end156
  %306 = tail call fastcc i32 @qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_(ptr nonnull %LUT159, ptr nonnull %A160, ptr nonnull %Scales161, ptr nonnull %LUT_Scales162, ptr nonnull %LUT_Biases163, ptr nonnull %C164), !dbg !24
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_(ptr noalias align 64 %LUT, ptr noalias align 64 %A, ptr noalias align 64 %Scales, ptr noalias align 64 %LUT_Scales, ptr noalias align 64 %LUT_Biases, ptr noalias align 64 %C) unnamed_addr #3 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata ptr %LUT, metadata !231, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %A, metadata !232, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %Scales, metadata !233, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !235, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %C, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = alloca %closure_loop_parallel_m.outer, align 8, !dbg !237
  store ptr %LUT, ptr %0, align 8, !dbg !237
  %1 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 1, !dbg !237
  store ptr %A, ptr %1, align 8, !dbg !237
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 2, !dbg !237
  store ptr %Scales, ptr %2, align 8, !dbg !237
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 3, !dbg !237
  store ptr %LUT_Scales, ptr %3, align 8, !dbg !237
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 4, !dbg !237
  store ptr %LUT_Biases, ptr %4, align 8, !dbg !237
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 5, !dbg !237
  store ptr %C, ptr %5, align 8, !dbg !237
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !237, !tbaa !26
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %0, i32 0), !dbg !237
  ret i32 %7, !dbg !237
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #4 {
parallel_closure_entry:
  %CBits2 = alloca [256 x half], align 16, !dbg !237
  %LUT = load ptr, ptr %1, align 8, !dbg !237
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 1, !dbg !237
  %A = load ptr, ptr %2, align 8, !dbg !237
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 2, !dbg !237
  %Scales = load ptr, ptr %3, align 8, !dbg !237
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 3, !dbg !237
  %LUT_Scales = load ptr, ptr %4, align 8, !dbg !237
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 4, !dbg !237
  %LUT_Biases = load ptr, ptr %5, align 8, !dbg !237
  %6 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 5, !dbg !237
  %C = load ptr, ptr %6, align 8, !dbg !237
  %7 = getelementptr inbounds %4, ptr %0, i64 0, i32 1, !dbg !237
  %num_task = load i32, ptr %7, align 4, !dbg !237
  %8 = add nsw i32 %num_task, 24, !dbg !237
  %9 = sdiv i32 %8, %num_task, !dbg !237
  %10 = mul i32 %9, %task_id, !dbg !237
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 25), !dbg !237
  %12 = add nsw i32 %task_id, 1, !dbg !237
  %13 = mul nsw i32 %9, %12, !dbg !237
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 25), !dbg !237
  call void @llvm.dbg.declare(metadata i32 %11, metadata !238, metadata !DIExpression()), !dbg !237
  %15 = icmp slt i32 %11, %14, !dbg !237
  br i1 %15, label %for_body_m.outer.preheader, label %for_end_m.outer, !dbg !237, !prof !25

for_body_m.outer.preheader:                       ; preds = %parallel_closure_entry
  %16 = tail call i32 @llvm.smin.i32(i32 %10, i32 25), !dbg !237
  %smin = sext i32 %16 to i64, !dbg !237
  %17 = add i32 %14, %16, !dbg !237
  %18 = sub i32 %17, %11, !dbg !237
  %19 = getelementptr inbounds half, ptr %CBits2, i64 8, !dbg !237
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
  br label %for_body_m.outer, !dbg !237

for_body_m.outer:                                 ; preds = %for_body_m.outer.preheader, %for_body_m.c.outer
  %indvars.iv20 = phi i64 [ %smin, %for_body_m.outer.preheader ], [ %indvars.iv.next21, %for_body_m.c.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv20, metadata !238, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata ptr %CBits2, metadata !239, metadata !DIExpression()), !dbg !237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %CBits2, i8 0, i64 512, i1 false), !dbg !237
  %50 = mul nsw i64 %indvars.iv20, 102400
  call void @llvm.dbg.declare(metadata i32 0, metadata !240, metadata !DIExpression()), !dbg !237
  %51 = load half, ptr %Scales, align 2, !tbaa !241
  %52 = insertelement <8 x half> poison, half %51, i64 0
  %53 = shufflevector <8 x half> %52, <8 x half> poison, <8 x i32> zeroinitializer
  br label %for_body_k.outer, !dbg !237

for_end_m.outer:                                  ; preds = %for_body_m.c.outer, %parallel_closure_entry
  ret i32 0, !dbg !237

for_body_k.outer:                                 ; preds = %for_body_m.outer, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  %indvars.iv = phi i64 [ 0, %for_body_m.outer ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !240, metadata !DIExpression()), !dbg !237
  %54 = shl nuw nsw i64 %indvars.iv, 8, !dbg !237
  %55 = getelementptr inbounds i8, ptr %LUT, i64 %54, !dbg !237
  %56 = shl nuw nsw i64 %indvars.iv, 11, !dbg !237
  %57 = add nsw i64 %56, %50, !dbg !237
  %58 = getelementptr inbounds i8, ptr %A, i64 %57, !dbg !237
  %59 = getelementptr inbounds half, ptr %LUT_Scales, i64 %indvars.iv, !dbg !237
  %60 = getelementptr inbounds half, ptr %LUT_Biases, i64 %indvars.iv, !dbg !237
  %61 = load <16 x i8>, ptr %55, align 1, !dbg !237
  %62 = getelementptr inbounds i8, ptr %55, i64 16, !dbg !237
  %63 = load <16 x i8>, ptr %62, align 1, !dbg !237
  %64 = getelementptr inbounds i8, ptr %55, i64 32, !dbg !237
  %65 = load <16 x i8>, ptr %64, align 1, !dbg !237
  %66 = getelementptr inbounds i8, ptr %55, i64 48, !dbg !237
  %67 = load <16 x i8>, ptr %66, align 1, !dbg !237
  %68 = getelementptr inbounds i8, ptr %55, i64 64, !dbg !237
  %69 = load <16 x i8>, ptr %68, align 1, !dbg !237
  %70 = getelementptr inbounds i8, ptr %55, i64 80, !dbg !237
  %71 = load <16 x i8>, ptr %70, align 1, !dbg !237
  %72 = getelementptr inbounds i8, ptr %55, i64 96, !dbg !237
  %73 = load <16 x i8>, ptr %72, align 1, !dbg !237
  %74 = getelementptr inbounds i8, ptr %55, i64 112, !dbg !237
  %75 = load <16 x i8>, ptr %74, align 1, !dbg !237
  %76 = getelementptr inbounds i8, ptr %55, i64 128, !dbg !237
  %77 = load <16 x i8>, ptr %76, align 1, !dbg !237
  %78 = getelementptr inbounds i8, ptr %55, i64 144, !dbg !237
  %79 = load <16 x i8>, ptr %78, align 1, !dbg !237
  %80 = getelementptr inbounds i8, ptr %55, i64 160, !dbg !237
  %81 = load <16 x i8>, ptr %80, align 1, !dbg !237
  %82 = getelementptr inbounds i8, ptr %55, i64 176, !dbg !237
  %83 = load <16 x i8>, ptr %82, align 1, !dbg !237
  %84 = getelementptr inbounds i8, ptr %55, i64 192, !dbg !237
  %85 = load <16 x i8>, ptr %84, align 1, !dbg !237
  %86 = getelementptr inbounds i8, ptr %55, i64 208, !dbg !237
  %87 = load <16 x i8>, ptr %86, align 1, !dbg !237
  %88 = getelementptr inbounds i8, ptr %55, i64 224, !dbg !237
  %89 = load <16 x i8>, ptr %88, align 1, !dbg !237
  %90 = getelementptr inbounds i8, ptr %55, i64 240, !dbg !237
  %91 = load <16 x i8>, ptr %90, align 1, !dbg !237
  %92 = load half, ptr %59, align 2, !tbaa !241
  %93 = load half, ptr %60, align 2, !tbaa !241
  %94 = insertelement <8 x half> poison, half %92, i64 0
  %95 = insertelement <8 x half> poison, half %93, i64 0
  %96 = shufflevector <8 x half> %94, <8 x half> poison, <8 x i32> zeroinitializer
  %97 = shufflevector <8 x half> %95, <8 x half> poison, <8 x i32> zeroinitializer
  br label %98, !dbg !237

98:                                               ; preds = %98, %for_body_k.outer
  %99 = phi i64 [ 0, %for_body_k.outer ], [ %406, %98 ], !dbg !237
  %100 = shl nuw nsw i64 %99, 4, !dbg !237
  %101 = getelementptr inbounds i8, ptr %58, i64 %100, !dbg !237
  %102 = load <16 x i8>, ptr %101, align 1, !dbg !237
  %103 = lshr <16 x i8> %102, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %104 = and <16 x i8> %102, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %105 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %61, <16 x i8> %104), !dbg !237
  %106 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %61, <16 x i8> %103), !dbg !237
  %107 = getelementptr inbounds i8, ptr %101, i64 16, !dbg !237
  %108 = load <16 x i8>, ptr %107, align 1, !dbg !237
  %109 = lshr <16 x i8> %108, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %110 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %63, <16 x i8> %109), !dbg !237
  %111 = and <16 x i8> %108, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %112 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %63, <16 x i8> %111), !dbg !237
  %113 = shufflevector <16 x i8> %105, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %114 = shufflevector <16 x i8> %112, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %115 = sext <8 x i8> %113 to <8 x i16>, !dbg !237
  %116 = sext <8 x i8> %114 to <8 x i16>, !dbg !237
  %117 = shufflevector <16 x i8> %105, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %118 = sext <8 x i8> %117 to <8 x i16>, !dbg !237
  %119 = shufflevector <16 x i8> %112, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %120 = sext <8 x i8> %119 to <8 x i16>, !dbg !237
  %121 = add nsw <8 x i16> %116, %115, !dbg !237
  %122 = add nsw <8 x i16> %120, %118, !dbg !237
  %123 = shufflevector <16 x i8> %106, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %124 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %125 = sext <8 x i8> %123 to <8 x i16>, !dbg !237
  %126 = sext <8 x i8> %124 to <8 x i16>, !dbg !237
  %127 = shufflevector <16 x i8> %106, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %128 = sext <8 x i8> %127 to <8 x i16>, !dbg !237
  %129 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %130 = sext <8 x i8> %129 to <8 x i16>, !dbg !237
  %131 = getelementptr inbounds i8, ptr %101, i64 32, !dbg !237
  %132 = load <16 x i8>, ptr %131, align 1, !dbg !237
  %133 = lshr <16 x i8> %132, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %134 = and <16 x i8> %132, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %135 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %65, <16 x i8> %134), !dbg !237
  %136 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %65, <16 x i8> %133), !dbg !237
  %137 = getelementptr inbounds i8, ptr %101, i64 48, !dbg !237
  %138 = load <16 x i8>, ptr %137, align 1, !dbg !237
  %139 = and <16 x i8> %138, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %140 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %67, <16 x i8> %139), !dbg !237
  %141 = shufflevector <16 x i8> %135, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %142 = shufflevector <16 x i8> %140, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %143 = sext <8 x i8> %141 to <8 x i16>, !dbg !237
  %144 = sext <8 x i8> %142 to <8 x i16>, !dbg !237
  %145 = shufflevector <16 x i8> %135, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %146 = sext <8 x i8> %145 to <8 x i16>, !dbg !237
  %147 = shufflevector <16 x i8> %140, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %148 = sext <8 x i8> %147 to <8 x i16>, !dbg !237
  %149 = add nsw <8 x i16> %121, %143, !dbg !237
  %150 = add nsw <8 x i16> %149, %144, !dbg !237
  %151 = add nsw <8 x i16> %122, %146, !dbg !237
  %152 = add nsw <8 x i16> %151, %148, !dbg !237
  %153 = lshr <16 x i8> %138, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %154 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %67, <16 x i8> %153), !dbg !237
  %155 = shufflevector <16 x i8> %154, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %156 = sext <8 x i8> %155 to <8 x i16>, !dbg !237
  %157 = shufflevector <16 x i8> %136, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %158 = sext <8 x i8> %157 to <8 x i16>, !dbg !237
  %159 = shufflevector <16 x i8> %154, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %160 = sext <8 x i8> %159 to <8 x i16>, !dbg !237
  %161 = shufflevector <16 x i8> %136, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %162 = sext <8 x i8> %161 to <8 x i16>, !dbg !237
  %163 = getelementptr inbounds i8, ptr %101, i64 64, !dbg !237
  %164 = load <16 x i8>, ptr %163, align 1, !dbg !237
  %165 = lshr <16 x i8> %164, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %166 = and <16 x i8> %164, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %167 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %69, <16 x i8> %166), !dbg !237
  %168 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %69, <16 x i8> %165), !dbg !237
  %169 = getelementptr inbounds i8, ptr %101, i64 80, !dbg !237
  %170 = load <16 x i8>, ptr %169, align 1, !dbg !237
  %171 = and <16 x i8> %170, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %172 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %71, <16 x i8> %171), !dbg !237
  %173 = shufflevector <16 x i8> %167, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %174 = shufflevector <16 x i8> %172, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %175 = sext <8 x i8> %173 to <8 x i16>, !dbg !237
  %176 = sext <8 x i8> %174 to <8 x i16>, !dbg !237
  %177 = shufflevector <16 x i8> %167, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %178 = sext <8 x i8> %177 to <8 x i16>, !dbg !237
  %179 = shufflevector <16 x i8> %172, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %180 = sext <8 x i8> %179 to <8 x i16>, !dbg !237
  %181 = add nsw <8 x i16> %150, %175, !dbg !237
  %182 = add nsw <8 x i16> %181, %176, !dbg !237
  %183 = add nsw <8 x i16> %152, %178, !dbg !237
  %184 = add nsw <8 x i16> %183, %180, !dbg !237
  %185 = lshr <16 x i8> %170, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %186 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %71, <16 x i8> %185), !dbg !237
  %187 = shufflevector <16 x i8> %186, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %188 = sext <8 x i8> %187 to <8 x i16>, !dbg !237
  %189 = shufflevector <16 x i8> %168, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %190 = sext <8 x i8> %189 to <8 x i16>, !dbg !237
  %191 = shufflevector <16 x i8> %186, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %192 = sext <8 x i8> %191 to <8 x i16>, !dbg !237
  %193 = shufflevector <16 x i8> %168, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %194 = sext <8 x i8> %193 to <8 x i16>, !dbg !237
  %195 = getelementptr inbounds i8, ptr %101, i64 96, !dbg !237
  %196 = load <16 x i8>, ptr %195, align 1, !dbg !237
  %197 = lshr <16 x i8> %196, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %198 = and <16 x i8> %196, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %199 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %73, <16 x i8> %198), !dbg !237
  %200 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %73, <16 x i8> %197), !dbg !237
  %201 = getelementptr inbounds i8, ptr %101, i64 112, !dbg !237
  %202 = load <16 x i8>, ptr %201, align 1, !dbg !237
  %203 = and <16 x i8> %202, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %204 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %75, <16 x i8> %203), !dbg !237
  %205 = shufflevector <16 x i8> %199, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %206 = shufflevector <16 x i8> %204, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %207 = sext <8 x i8> %205 to <8 x i16>, !dbg !237
  %208 = sext <8 x i8> %206 to <8 x i16>, !dbg !237
  %209 = shufflevector <16 x i8> %199, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %210 = sext <8 x i8> %209 to <8 x i16>, !dbg !237
  %211 = shufflevector <16 x i8> %204, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %212 = sext <8 x i8> %211 to <8 x i16>, !dbg !237
  %213 = add nsw <8 x i16> %182, %207, !dbg !237
  %214 = add <8 x i16> %213, %208, !dbg !237
  %215 = add nsw <8 x i16> %184, %210, !dbg !237
  %216 = add <8 x i16> %215, %212, !dbg !237
  %217 = lshr <16 x i8> %202, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %218 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %75, <16 x i8> %217), !dbg !237
  %219 = shufflevector <16 x i8> %218, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %220 = sext <8 x i8> %219 to <8 x i16>, !dbg !237
  %221 = shufflevector <16 x i8> %200, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %222 = sext <8 x i8> %221 to <8 x i16>, !dbg !237
  %223 = shufflevector <16 x i8> %218, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %224 = sext <8 x i8> %223 to <8 x i16>, !dbg !237
  %225 = shufflevector <16 x i8> %200, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %226 = sext <8 x i8> %225 to <8 x i16>, !dbg !237
  %227 = getelementptr inbounds i8, ptr %101, i64 128, !dbg !237
  %228 = load <16 x i8>, ptr %227, align 1, !dbg !237
  %229 = lshr <16 x i8> %228, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %230 = and <16 x i8> %228, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %231 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %77, <16 x i8> %230), !dbg !237
  %232 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %77, <16 x i8> %229), !dbg !237
  %233 = getelementptr inbounds i8, ptr %101, i64 144, !dbg !237
  %234 = load <16 x i8>, ptr %233, align 1, !dbg !237
  %235 = and <16 x i8> %234, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %236 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %79, <16 x i8> %235), !dbg !237
  %237 = shufflevector <16 x i8> %231, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %238 = shufflevector <16 x i8> %236, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %239 = sext <8 x i8> %237 to <8 x i16>, !dbg !237
  %240 = sext <8 x i8> %238 to <8 x i16>, !dbg !237
  %241 = shufflevector <16 x i8> %231, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %242 = sext <8 x i8> %241 to <8 x i16>, !dbg !237
  %243 = shufflevector <16 x i8> %236, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %244 = sext <8 x i8> %243 to <8 x i16>, !dbg !237
  %245 = add <8 x i16> %214, %239, !dbg !237
  %246 = add <8 x i16> %245, %240, !dbg !237
  %247 = add <8 x i16> %216, %242, !dbg !237
  %248 = add <8 x i16> %247, %244, !dbg !237
  %249 = lshr <16 x i8> %234, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %250 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %79, <16 x i8> %249), !dbg !237
  %251 = shufflevector <16 x i8> %250, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %252 = sext <8 x i8> %251 to <8 x i16>, !dbg !237
  %253 = shufflevector <16 x i8> %232, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %254 = sext <8 x i8> %253 to <8 x i16>, !dbg !237
  %255 = shufflevector <16 x i8> %250, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %256 = sext <8 x i8> %255 to <8 x i16>, !dbg !237
  %257 = shufflevector <16 x i8> %232, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %258 = sext <8 x i8> %257 to <8 x i16>, !dbg !237
  %259 = getelementptr inbounds i8, ptr %101, i64 160, !dbg !237
  %260 = load <16 x i8>, ptr %259, align 1, !dbg !237
  %261 = lshr <16 x i8> %260, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %262 = and <16 x i8> %260, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %263 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %81, <16 x i8> %262), !dbg !237
  %264 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %81, <16 x i8> %261), !dbg !237
  %265 = getelementptr inbounds i8, ptr %101, i64 176, !dbg !237
  %266 = load <16 x i8>, ptr %265, align 1, !dbg !237
  %267 = and <16 x i8> %266, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %268 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %83, <16 x i8> %267), !dbg !237
  %269 = shufflevector <16 x i8> %263, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %270 = shufflevector <16 x i8> %268, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %271 = sext <8 x i8> %269 to <8 x i16>, !dbg !237
  %272 = sext <8 x i8> %270 to <8 x i16>, !dbg !237
  %273 = shufflevector <16 x i8> %263, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %274 = sext <8 x i8> %273 to <8 x i16>, !dbg !237
  %275 = shufflevector <16 x i8> %268, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %276 = sext <8 x i8> %275 to <8 x i16>, !dbg !237
  %277 = add <8 x i16> %246, %271, !dbg !237
  %278 = add <8 x i16> %277, %272, !dbg !237
  %279 = add <8 x i16> %248, %274, !dbg !237
  %280 = add <8 x i16> %279, %276, !dbg !237
  %281 = lshr <16 x i8> %266, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %282 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %83, <16 x i8> %281), !dbg !237
  %283 = shufflevector <16 x i8> %282, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %284 = sext <8 x i8> %283 to <8 x i16>, !dbg !237
  %285 = shufflevector <16 x i8> %264, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %286 = sext <8 x i8> %285 to <8 x i16>, !dbg !237
  %287 = shufflevector <16 x i8> %282, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %288 = sext <8 x i8> %287 to <8 x i16>, !dbg !237
  %289 = shufflevector <16 x i8> %264, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %290 = sext <8 x i8> %289 to <8 x i16>, !dbg !237
  %291 = getelementptr inbounds i8, ptr %101, i64 192, !dbg !237
  %292 = load <16 x i8>, ptr %291, align 1, !dbg !237
  %293 = lshr <16 x i8> %292, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %294 = and <16 x i8> %292, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %295 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %85, <16 x i8> %294), !dbg !237
  %296 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %85, <16 x i8> %293), !dbg !237
  %297 = getelementptr inbounds i8, ptr %101, i64 208, !dbg !237
  %298 = load <16 x i8>, ptr %297, align 1, !dbg !237
  %299 = and <16 x i8> %298, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %300 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %87, <16 x i8> %299), !dbg !237
  %301 = shufflevector <16 x i8> %295, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %302 = shufflevector <16 x i8> %300, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %303 = sext <8 x i8> %301 to <8 x i16>, !dbg !237
  %304 = sext <8 x i8> %302 to <8 x i16>, !dbg !237
  %305 = shufflevector <16 x i8> %295, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %306 = sext <8 x i8> %305 to <8 x i16>, !dbg !237
  %307 = shufflevector <16 x i8> %300, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %308 = sext <8 x i8> %307 to <8 x i16>, !dbg !237
  %309 = add <8 x i16> %278, %303, !dbg !237
  %310 = add <8 x i16> %309, %304, !dbg !237
  %311 = add <8 x i16> %280, %306, !dbg !237
  %312 = add <8 x i16> %311, %308, !dbg !237
  %313 = lshr <16 x i8> %298, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %314 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %87, <16 x i8> %313), !dbg !237
  %315 = shufflevector <16 x i8> %314, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %316 = sext <8 x i8> %315 to <8 x i16>, !dbg !237
  %317 = shufflevector <16 x i8> %296, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %318 = sext <8 x i8> %317 to <8 x i16>, !dbg !237
  %319 = shufflevector <16 x i8> %314, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %320 = sext <8 x i8> %319 to <8 x i16>, !dbg !237
  %321 = shufflevector <16 x i8> %296, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %322 = sext <8 x i8> %321 to <8 x i16>, !dbg !237
  %323 = getelementptr inbounds i8, ptr %101, i64 224, !dbg !237
  %324 = load <16 x i8>, ptr %323, align 1, !dbg !237
  %325 = lshr <16 x i8> %324, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %326 = and <16 x i8> %324, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %327 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %89, <16 x i8> %326), !dbg !237
  %328 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %89, <16 x i8> %325), !dbg !237
  %329 = getelementptr inbounds i8, ptr %101, i64 240, !dbg !237
  %330 = load <16 x i8>, ptr %329, align 1, !dbg !237
  %331 = and <16 x i8> %330, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %332 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %91, <16 x i8> %331), !dbg !237
  %333 = shufflevector <16 x i8> %327, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %334 = shufflevector <16 x i8> %332, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %335 = sext <8 x i8> %333 to <8 x i16>, !dbg !237
  %336 = sext <8 x i8> %334 to <8 x i16>, !dbg !237
  %337 = shufflevector <16 x i8> %327, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %338 = sext <8 x i8> %337 to <8 x i16>, !dbg !237
  %339 = shufflevector <16 x i8> %332, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %340 = sext <8 x i8> %339 to <8 x i16>, !dbg !237
  %341 = add <8 x i16> %310, %335, !dbg !237
  %342 = add <8 x i16> %341, %336, !dbg !237
  %343 = add <8 x i16> %312, %338, !dbg !237
  %344 = add <8 x i16> %343, %340, !dbg !237
  %345 = lshr <16 x i8> %330, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %346 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %91, <16 x i8> %345), !dbg !237
  %347 = shufflevector <16 x i8> %346, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %348 = sext <8 x i8> %347 to <8 x i16>, !dbg !237
  %349 = shufflevector <16 x i8> %328, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %350 = sext <8 x i8> %349 to <8 x i16>, !dbg !237
  %351 = add nsw <8 x i16> %130, %128, !dbg !237
  %352 = add nsw <8 x i16> %351, %158, !dbg !237
  %353 = add nsw <8 x i16> %352, %156, !dbg !237
  %354 = add nsw <8 x i16> %353, %190, !dbg !237
  %355 = add nsw <8 x i16> %354, %188, !dbg !237
  %356 = add nsw <8 x i16> %355, %222, !dbg !237
  %357 = add <8 x i16> %356, %220, !dbg !237
  %358 = add <8 x i16> %357, %254, !dbg !237
  %359 = add <8 x i16> %358, %252, !dbg !237
  %360 = add <8 x i16> %359, %286, !dbg !237
  %361 = add <8 x i16> %360, %284, !dbg !237
  %362 = add <8 x i16> %361, %318, !dbg !237
  %363 = add <8 x i16> %362, %316, !dbg !237
  %364 = add <8 x i16> %363, %350, !dbg !237
  %365 = add <8 x i16> %364, %348, !dbg !237
  %366 = shufflevector <16 x i8> %346, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %367 = sext <8 x i8> %366 to <8 x i16>, !dbg !237
  %368 = shufflevector <16 x i8> %328, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %369 = sext <8 x i8> %368 to <8 x i16>, !dbg !237
  %370 = add nsw <8 x i16> %126, %125, !dbg !237
  %371 = add nsw <8 x i16> %370, %162, !dbg !237
  %372 = add nsw <8 x i16> %371, %160, !dbg !237
  %373 = add nsw <8 x i16> %372, %194, !dbg !237
  %374 = add nsw <8 x i16> %373, %192, !dbg !237
  %375 = add nsw <8 x i16> %374, %226, !dbg !237
  %376 = add <8 x i16> %375, %224, !dbg !237
  %377 = add <8 x i16> %376, %258, !dbg !237
  %378 = add <8 x i16> %377, %256, !dbg !237
  %379 = add <8 x i16> %378, %290, !dbg !237
  %380 = add <8 x i16> %379, %288, !dbg !237
  %381 = add <8 x i16> %380, %322, !dbg !237
  %382 = add <8 x i16> %381, %320, !dbg !237
  %383 = add <8 x i16> %382, %369, !dbg !237
  %384 = add <8 x i16> %383, %367, !dbg !237
  %385 = sitofp <8 x i16> %342 to <8 x half>, !dbg !237
  %386 = sitofp <8 x i16> %344 to <8 x half>, !dbg !237
  %387 = sitofp <8 x i16> %384 to <8 x half>, !dbg !237
  %388 = sitofp <8 x i16> %365 to <8 x half>, !dbg !237
  %389 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %385, <8 x half> %96, <8 x half> %97), !dbg !237
  %390 = fmul <8 x half> %96, %386, !dbg !237
  %391 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %387, <8 x half> %96, <8 x half> %97), !dbg !237
  %392 = fmul <8 x half> %96, %388, !dbg !237
  %393 = shl nuw nsw i64 %99, 1, !dbg !237
  %394 = getelementptr inbounds half, ptr %CBits2, i64 %393, !dbg !237
  %395 = load <8 x half>, ptr %394, align 16, !dbg !237
  %396 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %389, <8 x half> %53, <8 x half> %395), !dbg !237
  store <8 x half> %396, ptr %394, align 16, !dbg !237
  %397 = getelementptr inbounds half, ptr %394, i64 8, !dbg !237
  %398 = load <8 x half>, ptr %397, align 16, !dbg !237
  %399 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %390, <8 x half> %53, <8 x half> %398), !dbg !237
  store <8 x half> %399, ptr %397, align 16, !dbg !237
  %400 = getelementptr inbounds half, ptr %394, i64 16, !dbg !237
  %401 = load <8 x half>, ptr %400, align 16, !dbg !237
  %402 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %391, <8 x half> %53, <8 x half> %401), !dbg !237
  store <8 x half> %402, ptr %400, align 16, !dbg !237
  %403 = getelementptr inbounds half, ptr %394, i64 24, !dbg !237
  %404 = load <8 x half>, ptr %403, align 16, !dbg !237
  %405 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %392, <8 x half> %53, <8 x half> %404), !dbg !237
  store <8 x half> %405, ptr %403, align 16, !dbg !237
  %406 = add nuw nsw i64 %99, 16, !dbg !237
  %407 = icmp ult i64 %99, 112, !dbg !237
  br i1 %407, label %98, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, !dbg !237, !llvm.loop !245

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit: ; preds = %98
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !240, metadata !DIExpression()), !dbg !237
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50, !dbg !237
  br i1 %exitcond.not, label %for_body_m.c.outer, label %for_body_k.outer, !dbg !237, !prof !29

for_body_m.c.outer:                               ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  call void @llvm.dbg.declare(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !237
  %408 = load <8 x half>, ptr %CBits2, align 16, !dbg !237, !tbaa !250
  %409 = fpext <8 x half> %408 to <8 x float>, !dbg !237
  %410 = load <8 x half>, ptr %19, align 16, !dbg !237, !tbaa !250
  %411 = fpext <8 x half> %410 to <8 x float>, !dbg !237
  %412 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %409, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %411), !dbg !237
  %413 = fptrunc <8 x float> %412 to <8 x half>, !dbg !237
  call void @llvm.dbg.value(metadata <8 x half> %413, metadata !252, metadata !DIExpression()), !dbg !237
  %414 = load <8 x half>, ptr %20, align 16, !dbg !237, !tbaa !250
  %415 = fpext <8 x half> %414 to <8 x float>, !dbg !237
  %416 = load <8 x half>, ptr %21, align 16, !dbg !237, !tbaa !250
  %417 = fpext <8 x half> %416 to <8 x float>, !dbg !237
  %418 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %415, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %417), !dbg !237
  %419 = fptrunc <8 x float> %418 to <8 x half>, !dbg !237
  %420 = load <8 x half>, ptr %22, align 16, !dbg !237, !tbaa !250
  %421 = fpext <8 x half> %420 to <8 x float>, !dbg !237
  %422 = load <8 x half>, ptr %23, align 16, !dbg !237, !tbaa !250
  %423 = fpext <8 x half> %422 to <8 x float>, !dbg !237
  %424 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %421, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %423), !dbg !237
  %425 = fptrunc <8 x float> %424 to <8 x half>, !dbg !237
  %426 = load <8 x half>, ptr %24, align 16, !dbg !237, !tbaa !250
  %427 = fpext <8 x half> %426 to <8 x float>, !dbg !237
  %428 = load <8 x half>, ptr %25, align 16, !dbg !237, !tbaa !250
  %429 = fpext <8 x half> %428 to <8 x float>, !dbg !237
  %430 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %427, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %429), !dbg !237
  %431 = fptrunc <8 x float> %430 to <8 x half>, !dbg !237
  call void @llvm.dbg.declare(metadata i64 1, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 1, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 64, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 64, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 32, metadata !249, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 32, metadata !249, metadata !DIExpression()), !dbg !237
  %432 = load <8 x half>, ptr %26, align 16, !dbg !237, !tbaa !250
  %433 = fpext <8 x half> %432 to <8 x float>, !dbg !237
  %434 = load <8 x half>, ptr %27, align 16, !dbg !237, !tbaa !250
  %435 = fpext <8 x half> %434 to <8 x float>, !dbg !237
  %436 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %433, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %435), !dbg !237
  %437 = fptrunc <8 x float> %436 to <8 x half>, !dbg !237
  %438 = load <8 x half>, ptr %28, align 16, !dbg !237, !tbaa !250
  %439 = fpext <8 x half> %438 to <8 x float>, !dbg !237
  %440 = load <8 x half>, ptr %29, align 16, !dbg !237, !tbaa !250
  %441 = fpext <8 x half> %440 to <8 x float>, !dbg !237
  %442 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %439, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %441), !dbg !237
  %443 = fptrunc <8 x float> %442 to <8 x half>, !dbg !237
  %444 = load <8 x half>, ptr %30, align 16, !dbg !237, !tbaa !250
  %445 = fpext <8 x half> %444 to <8 x float>, !dbg !237
  %446 = load <8 x half>, ptr %31, align 16, !dbg !237, !tbaa !250
  %447 = fpext <8 x half> %446 to <8 x float>, !dbg !237
  %448 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %445, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %447), !dbg !237
  %449 = fptrunc <8 x float> %448 to <8 x half>, !dbg !237
  %450 = load <8 x half>, ptr %32, align 16, !dbg !237, !tbaa !250
  %451 = fpext <8 x half> %450 to <8 x float>, !dbg !237
  %452 = load <8 x half>, ptr %33, align 16, !dbg !237, !tbaa !250
  %453 = fpext <8 x half> %452 to <8 x float>, !dbg !237
  %454 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %451, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %453), !dbg !237
  %455 = fptrunc <8 x float> %454 to <8 x half>, !dbg !237
  call void @llvm.dbg.declare(metadata i64 2, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 2, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 128, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 128, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 64, metadata !249, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 64, metadata !249, metadata !DIExpression()), !dbg !237
  %456 = load <8 x half>, ptr %34, align 16, !dbg !237, !tbaa !250
  %457 = fpext <8 x half> %456 to <8 x float>, !dbg !237
  %458 = load <8 x half>, ptr %35, align 16, !dbg !237, !tbaa !250
  %459 = fpext <8 x half> %458 to <8 x float>, !dbg !237
  %460 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %457, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %459), !dbg !237
  %461 = fptrunc <8 x float> %460 to <8 x half>, !dbg !237
  %462 = load <8 x half>, ptr %36, align 16, !dbg !237, !tbaa !250
  %463 = fpext <8 x half> %462 to <8 x float>, !dbg !237
  %464 = load <8 x half>, ptr %37, align 16, !dbg !237, !tbaa !250
  %465 = fpext <8 x half> %464 to <8 x float>, !dbg !237
  %466 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %463, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %465), !dbg !237
  %467 = fptrunc <8 x float> %466 to <8 x half>, !dbg !237
  %468 = load <8 x half>, ptr %38, align 16, !dbg !237, !tbaa !250
  %469 = fpext <8 x half> %468 to <8 x float>, !dbg !237
  %470 = load <8 x half>, ptr %39, align 16, !dbg !237, !tbaa !250
  %471 = fpext <8 x half> %470 to <8 x float>, !dbg !237
  %472 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %469, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %471), !dbg !237
  %473 = fptrunc <8 x float> %472 to <8 x half>, !dbg !237
  %474 = load <8 x half>, ptr %40, align 16, !dbg !237, !tbaa !250
  %475 = fpext <8 x half> %474 to <8 x float>, !dbg !237
  %476 = load <8 x half>, ptr %41, align 16, !dbg !237, !tbaa !250
  %477 = fpext <8 x half> %476 to <8 x float>, !dbg !237
  %478 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %475, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %477), !dbg !237
  %479 = fptrunc <8 x float> %478 to <8 x half>, !dbg !237
  call void @llvm.dbg.declare(metadata i64 3, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 3, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 192, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 192, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 96, metadata !249, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 96, metadata !249, metadata !DIExpression()), !dbg !237
  %480 = load <8 x half>, ptr %42, align 16, !dbg !237, !tbaa !250
  %481 = fpext <8 x half> %480 to <8 x float>, !dbg !237
  %482 = load <8 x half>, ptr %43, align 16, !dbg !237, !tbaa !250
  %483 = fpext <8 x half> %482 to <8 x float>, !dbg !237
  %484 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %481, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %483), !dbg !237
  %485 = fptrunc <8 x float> %484 to <8 x half>, !dbg !237
  %486 = load <8 x half>, ptr %44, align 16, !dbg !237, !tbaa !250
  %487 = fpext <8 x half> %486 to <8 x float>, !dbg !237
  %488 = load <8 x half>, ptr %45, align 16, !dbg !237, !tbaa !250
  %489 = fpext <8 x half> %488 to <8 x float>, !dbg !237
  %490 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %487, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %489), !dbg !237
  %491 = fptrunc <8 x float> %490 to <8 x half>, !dbg !237
  %492 = load <8 x half>, ptr %46, align 16, !dbg !237, !tbaa !250
  %493 = fpext <8 x half> %492 to <8 x float>, !dbg !237
  %494 = load <8 x half>, ptr %47, align 16, !dbg !237, !tbaa !250
  %495 = fpext <8 x half> %494 to <8 x float>, !dbg !237
  %496 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %493, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %495), !dbg !237
  %497 = fptrunc <8 x float> %496 to <8 x half>, !dbg !237
  %498 = load <8 x half>, ptr %48, align 16, !dbg !237, !tbaa !250
  %499 = fpext <8 x half> %498 to <8 x float>, !dbg !237
  %500 = load <8 x half>, ptr %49, align 16, !dbg !237, !tbaa !250
  %501 = fpext <8 x half> %500 to <8 x float>, !dbg !237
  %502 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %499, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %501), !dbg !237
  %503 = fptrunc <8 x float> %502 to <8 x half>, !dbg !237
  call void @llvm.dbg.declare(metadata i64 4, metadata !247, metadata !DIExpression()), !dbg !237
  %504 = trunc i64 %indvars.iv20 to i32
  %505 = shl nsw i32 %504, 7
  call void @llvm.dbg.declare(metadata i32 0, metadata !253, metadata !DIExpression()), !dbg !237
  %506 = sext i32 %505 to i64, !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 %506, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 %506, metadata !255, metadata !DIExpression()), !dbg !237
  %C.global1.sroa.0.0.vec.extract = extractelement <8 x half> %413, i64 0, !dbg !237
  %507 = getelementptr inbounds half, ptr %C, i64 %506, !dbg !237
  store half %C.global1.sroa.0.0.vec.extract, ptr %507, align 64, !dbg !237, !tbaa !256
  %C.global1.sroa.0.2.vec.extract = extractelement <8 x half> %413, i64 1, !dbg !237
  %508 = or i32 %505, 1, !dbg !237
  %509 = sext i32 %508 to i64, !dbg !237
  %510 = getelementptr inbounds half, ptr %C, i64 %509, !dbg !237
  store half %C.global1.sroa.0.2.vec.extract, ptr %510, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.0.4.vec.extract = extractelement <8 x half> %413, i64 2, !dbg !237
  %511 = or i32 %505, 2, !dbg !237
  %512 = sext i32 %511 to i64, !dbg !237
  %513 = getelementptr inbounds half, ptr %C, i64 %512, !dbg !237
  store half %C.global1.sroa.0.4.vec.extract, ptr %513, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.0.6.vec.extract = extractelement <8 x half> %413, i64 3, !dbg !237
  %514 = or i32 %505, 3, !dbg !237
  %515 = sext i32 %514 to i64, !dbg !237
  %516 = getelementptr inbounds half, ptr %C, i64 %515, !dbg !237
  store half %C.global1.sroa.0.6.vec.extract, ptr %516, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.0.8.vec.extract = extractelement <8 x half> %413, i64 4, !dbg !237
  %517 = or i32 %505, 4, !dbg !237
  %518 = sext i32 %517 to i64, !dbg !237
  %519 = getelementptr inbounds half, ptr %C, i64 %518, !dbg !237
  store half %C.global1.sroa.0.8.vec.extract, ptr %519, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.0.10.vec.extract = extractelement <8 x half> %413, i64 5, !dbg !237
  %520 = or i32 %505, 5, !dbg !237
  %521 = sext i32 %520 to i64, !dbg !237
  %522 = getelementptr inbounds half, ptr %C, i64 %521, !dbg !237
  store half %C.global1.sroa.0.10.vec.extract, ptr %522, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.0.12.vec.extract = extractelement <8 x half> %413, i64 6, !dbg !237
  %523 = or i32 %505, 6, !dbg !237
  %524 = sext i32 %523 to i64, !dbg !237
  %525 = getelementptr inbounds half, ptr %C, i64 %524, !dbg !237
  store half %C.global1.sroa.0.12.vec.extract, ptr %525, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.0.14.vec.extract = extractelement <8 x half> %413, i64 7, !dbg !237
  %526 = or i32 %505, 7, !dbg !237
  %527 = sext i32 %526 to i64, !dbg !237
  %528 = getelementptr inbounds half, ptr %C, i64 %527, !dbg !237
  store half %C.global1.sroa.0.14.vec.extract, ptr %528, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.9.16.vec.extract = extractelement <8 x half> %419, i64 0, !dbg !237
  %529 = or i32 %505, 8, !dbg !237
  %530 = sext i32 %529 to i64, !dbg !237
  %531 = getelementptr inbounds half, ptr %C, i64 %530, !dbg !237
  store half %C.global1.sroa.9.16.vec.extract, ptr %531, align 16, !dbg !237, !tbaa !256
  %C.global1.sroa.9.18.vec.extract = extractelement <8 x half> %419, i64 1, !dbg !237
  %532 = or i32 %505, 9, !dbg !237
  %533 = sext i32 %532 to i64, !dbg !237
  %534 = getelementptr inbounds half, ptr %C, i64 %533, !dbg !237
  store half %C.global1.sroa.9.18.vec.extract, ptr %534, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.9.20.vec.extract = extractelement <8 x half> %419, i64 2, !dbg !237
  %535 = or i32 %505, 10, !dbg !237
  %536 = sext i32 %535 to i64, !dbg !237
  %537 = getelementptr inbounds half, ptr %C, i64 %536, !dbg !237
  store half %C.global1.sroa.9.20.vec.extract, ptr %537, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.9.22.vec.extract = extractelement <8 x half> %419, i64 3, !dbg !237
  %538 = or i32 %505, 11, !dbg !237
  %539 = sext i32 %538 to i64, !dbg !237
  %540 = getelementptr inbounds half, ptr %C, i64 %539, !dbg !237
  store half %C.global1.sroa.9.22.vec.extract, ptr %540, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.9.24.vec.extract = extractelement <8 x half> %419, i64 4, !dbg !237
  %541 = or i32 %505, 12, !dbg !237
  %542 = sext i32 %541 to i64, !dbg !237
  %543 = getelementptr inbounds half, ptr %C, i64 %542, !dbg !237
  store half %C.global1.sroa.9.24.vec.extract, ptr %543, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.9.26.vec.extract = extractelement <8 x half> %419, i64 5, !dbg !237
  %544 = or i32 %505, 13, !dbg !237
  %545 = sext i32 %544 to i64, !dbg !237
  %546 = getelementptr inbounds half, ptr %C, i64 %545, !dbg !237
  store half %C.global1.sroa.9.26.vec.extract, ptr %546, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.9.28.vec.extract = extractelement <8 x half> %419, i64 6, !dbg !237
  %547 = or i32 %505, 14, !dbg !237
  %548 = sext i32 %547 to i64, !dbg !237
  %549 = getelementptr inbounds half, ptr %C, i64 %548, !dbg !237
  store half %C.global1.sroa.9.28.vec.extract, ptr %549, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.9.30.vec.extract = extractelement <8 x half> %419, i64 7, !dbg !237
  %550 = or i32 %505, 15, !dbg !237
  %551 = sext i32 %550 to i64, !dbg !237
  %552 = getelementptr inbounds half, ptr %C, i64 %551, !dbg !237
  store half %C.global1.sroa.9.30.vec.extract, ptr %552, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.18.32.vec.extract = extractelement <8 x half> %425, i64 0, !dbg !237
  %553 = or i32 %505, 16, !dbg !237
  %554 = sext i32 %553 to i64, !dbg !237
  %555 = getelementptr inbounds half, ptr %C, i64 %554, !dbg !237
  store half %C.global1.sroa.18.32.vec.extract, ptr %555, align 32, !dbg !237, !tbaa !256
  %C.global1.sroa.18.34.vec.extract = extractelement <8 x half> %425, i64 1, !dbg !237
  %556 = or i32 %505, 17, !dbg !237
  %557 = sext i32 %556 to i64, !dbg !237
  %558 = getelementptr inbounds half, ptr %C, i64 %557, !dbg !237
  store half %C.global1.sroa.18.34.vec.extract, ptr %558, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.18.36.vec.extract = extractelement <8 x half> %425, i64 2, !dbg !237
  %559 = or i32 %505, 18, !dbg !237
  %560 = sext i32 %559 to i64, !dbg !237
  %561 = getelementptr inbounds half, ptr %C, i64 %560, !dbg !237
  store half %C.global1.sroa.18.36.vec.extract, ptr %561, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.18.38.vec.extract = extractelement <8 x half> %425, i64 3, !dbg !237
  %562 = or i32 %505, 19, !dbg !237
  %563 = sext i32 %562 to i64, !dbg !237
  %564 = getelementptr inbounds half, ptr %C, i64 %563, !dbg !237
  store half %C.global1.sroa.18.38.vec.extract, ptr %564, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.18.40.vec.extract = extractelement <8 x half> %425, i64 4, !dbg !237
  %565 = or i32 %505, 20, !dbg !237
  %566 = sext i32 %565 to i64, !dbg !237
  %567 = getelementptr inbounds half, ptr %C, i64 %566, !dbg !237
  store half %C.global1.sroa.18.40.vec.extract, ptr %567, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.18.42.vec.extract = extractelement <8 x half> %425, i64 5, !dbg !237
  %568 = or i32 %505, 21, !dbg !237
  %569 = sext i32 %568 to i64, !dbg !237
  %570 = getelementptr inbounds half, ptr %C, i64 %569, !dbg !237
  store half %C.global1.sroa.18.42.vec.extract, ptr %570, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.18.44.vec.extract = extractelement <8 x half> %425, i64 6, !dbg !237
  %571 = or i32 %505, 22, !dbg !237
  %572 = sext i32 %571 to i64, !dbg !237
  %573 = getelementptr inbounds half, ptr %C, i64 %572, !dbg !237
  store half %C.global1.sroa.18.44.vec.extract, ptr %573, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.18.46.vec.extract = extractelement <8 x half> %425, i64 7, !dbg !237
  %574 = or i32 %505, 23, !dbg !237
  %575 = sext i32 %574 to i64, !dbg !237
  %576 = getelementptr inbounds half, ptr %C, i64 %575, !dbg !237
  store half %C.global1.sroa.18.46.vec.extract, ptr %576, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.27.48.vec.extract = extractelement <8 x half> %431, i64 0, !dbg !237
  %577 = or i32 %505, 24, !dbg !237
  %578 = sext i32 %577 to i64, !dbg !237
  %579 = getelementptr inbounds half, ptr %C, i64 %578, !dbg !237
  store half %C.global1.sroa.27.48.vec.extract, ptr %579, align 16, !dbg !237, !tbaa !256
  %C.global1.sroa.27.50.vec.extract = extractelement <8 x half> %431, i64 1, !dbg !237
  %580 = or i32 %505, 25, !dbg !237
  %581 = sext i32 %580 to i64, !dbg !237
  %582 = getelementptr inbounds half, ptr %C, i64 %581, !dbg !237
  store half %C.global1.sroa.27.50.vec.extract, ptr %582, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.27.52.vec.extract = extractelement <8 x half> %431, i64 2, !dbg !237
  %583 = or i32 %505, 26, !dbg !237
  %584 = sext i32 %583 to i64, !dbg !237
  %585 = getelementptr inbounds half, ptr %C, i64 %584, !dbg !237
  store half %C.global1.sroa.27.52.vec.extract, ptr %585, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.27.54.vec.extract = extractelement <8 x half> %431, i64 3, !dbg !237
  %586 = or i32 %505, 27, !dbg !237
  %587 = sext i32 %586 to i64, !dbg !237
  %588 = getelementptr inbounds half, ptr %C, i64 %587, !dbg !237
  store half %C.global1.sroa.27.54.vec.extract, ptr %588, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.27.56.vec.extract = extractelement <8 x half> %431, i64 4, !dbg !237
  %589 = or i32 %505, 28, !dbg !237
  %590 = sext i32 %589 to i64, !dbg !237
  %591 = getelementptr inbounds half, ptr %C, i64 %590, !dbg !237
  store half %C.global1.sroa.27.56.vec.extract, ptr %591, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.27.58.vec.extract = extractelement <8 x half> %431, i64 5, !dbg !237
  %592 = or i32 %505, 29, !dbg !237
  %593 = sext i32 %592 to i64, !dbg !237
  %594 = getelementptr inbounds half, ptr %C, i64 %593, !dbg !237
  store half %C.global1.sroa.27.58.vec.extract, ptr %594, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.27.60.vec.extract = extractelement <8 x half> %431, i64 6, !dbg !237
  %595 = or i32 %505, 30, !dbg !237
  %596 = sext i32 %595 to i64, !dbg !237
  %597 = getelementptr inbounds half, ptr %C, i64 %596, !dbg !237
  store half %C.global1.sroa.27.60.vec.extract, ptr %597, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.27.62.vec.extract = extractelement <8 x half> %431, i64 7, !dbg !237
  %598 = or i32 %505, 31, !dbg !237
  %599 = sext i32 %598 to i64, !dbg !237
  %600 = getelementptr inbounds half, ptr %C, i64 %599, !dbg !237
  store half %C.global1.sroa.27.62.vec.extract, ptr %600, align 2, !dbg !237, !tbaa !256
  call void @llvm.dbg.declare(metadata i64 1, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 1, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 32, metadata !254, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 32, metadata !254, metadata !DIExpression()), !dbg !237
  %601 = or i64 %506, 32, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %601, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 %601, metadata !255, metadata !DIExpression()), !dbg !237
  %C.global1.sroa.36.64.vec.extract = extractelement <8 x half> %437, i64 0, !dbg !237
  %602 = getelementptr inbounds half, ptr %C, i64 %601, !dbg !237
  store half %C.global1.sroa.36.64.vec.extract, ptr %602, align 64, !dbg !237, !tbaa !256
  %C.global1.sroa.36.66.vec.extract = extractelement <8 x half> %437, i64 1, !dbg !237
  %603 = or i32 %505, 33, !dbg !237
  %604 = sext i32 %603 to i64, !dbg !237
  %605 = getelementptr inbounds half, ptr %C, i64 %604, !dbg !237
  store half %C.global1.sroa.36.66.vec.extract, ptr %605, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.36.68.vec.extract = extractelement <8 x half> %437, i64 2, !dbg !237
  %606 = or i32 %505, 34, !dbg !237
  %607 = sext i32 %606 to i64, !dbg !237
  %608 = getelementptr inbounds half, ptr %C, i64 %607, !dbg !237
  store half %C.global1.sroa.36.68.vec.extract, ptr %608, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.36.70.vec.extract = extractelement <8 x half> %437, i64 3, !dbg !237
  %609 = or i32 %505, 35, !dbg !237
  %610 = sext i32 %609 to i64, !dbg !237
  %611 = getelementptr inbounds half, ptr %C, i64 %610, !dbg !237
  store half %C.global1.sroa.36.70.vec.extract, ptr %611, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.36.72.vec.extract = extractelement <8 x half> %437, i64 4, !dbg !237
  %612 = or i32 %505, 36, !dbg !237
  %613 = sext i32 %612 to i64, !dbg !237
  %614 = getelementptr inbounds half, ptr %C, i64 %613, !dbg !237
  store half %C.global1.sroa.36.72.vec.extract, ptr %614, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.36.74.vec.extract = extractelement <8 x half> %437, i64 5, !dbg !237
  %615 = or i32 %505, 37, !dbg !237
  %616 = sext i32 %615 to i64, !dbg !237
  %617 = getelementptr inbounds half, ptr %C, i64 %616, !dbg !237
  store half %C.global1.sroa.36.74.vec.extract, ptr %617, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.36.76.vec.extract = extractelement <8 x half> %437, i64 6, !dbg !237
  %618 = or i32 %505, 38, !dbg !237
  %619 = sext i32 %618 to i64, !dbg !237
  %620 = getelementptr inbounds half, ptr %C, i64 %619, !dbg !237
  store half %C.global1.sroa.36.76.vec.extract, ptr %620, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.36.78.vec.extract = extractelement <8 x half> %437, i64 7, !dbg !237
  %621 = or i32 %505, 39, !dbg !237
  %622 = sext i32 %621 to i64, !dbg !237
  %623 = getelementptr inbounds half, ptr %C, i64 %622, !dbg !237
  store half %C.global1.sroa.36.78.vec.extract, ptr %623, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.45.80.vec.extract = extractelement <8 x half> %443, i64 0, !dbg !237
  %624 = or i32 %505, 40, !dbg !237
  %625 = sext i32 %624 to i64, !dbg !237
  %626 = getelementptr inbounds half, ptr %C, i64 %625, !dbg !237
  store half %C.global1.sroa.45.80.vec.extract, ptr %626, align 16, !dbg !237, !tbaa !256
  %C.global1.sroa.45.82.vec.extract = extractelement <8 x half> %443, i64 1, !dbg !237
  %627 = or i32 %505, 41, !dbg !237
  %628 = sext i32 %627 to i64, !dbg !237
  %629 = getelementptr inbounds half, ptr %C, i64 %628, !dbg !237
  store half %C.global1.sroa.45.82.vec.extract, ptr %629, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.45.84.vec.extract = extractelement <8 x half> %443, i64 2, !dbg !237
  %630 = or i32 %505, 42, !dbg !237
  %631 = sext i32 %630 to i64, !dbg !237
  %632 = getelementptr inbounds half, ptr %C, i64 %631, !dbg !237
  store half %C.global1.sroa.45.84.vec.extract, ptr %632, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.45.86.vec.extract = extractelement <8 x half> %443, i64 3, !dbg !237
  %633 = or i32 %505, 43, !dbg !237
  %634 = sext i32 %633 to i64, !dbg !237
  %635 = getelementptr inbounds half, ptr %C, i64 %634, !dbg !237
  store half %C.global1.sroa.45.86.vec.extract, ptr %635, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.45.88.vec.extract = extractelement <8 x half> %443, i64 4, !dbg !237
  %636 = or i32 %505, 44, !dbg !237
  %637 = sext i32 %636 to i64, !dbg !237
  %638 = getelementptr inbounds half, ptr %C, i64 %637, !dbg !237
  store half %C.global1.sroa.45.88.vec.extract, ptr %638, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.45.90.vec.extract = extractelement <8 x half> %443, i64 5, !dbg !237
  %639 = or i32 %505, 45, !dbg !237
  %640 = sext i32 %639 to i64, !dbg !237
  %641 = getelementptr inbounds half, ptr %C, i64 %640, !dbg !237
  store half %C.global1.sroa.45.90.vec.extract, ptr %641, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.45.92.vec.extract = extractelement <8 x half> %443, i64 6, !dbg !237
  %642 = or i32 %505, 46, !dbg !237
  %643 = sext i32 %642 to i64, !dbg !237
  %644 = getelementptr inbounds half, ptr %C, i64 %643, !dbg !237
  store half %C.global1.sroa.45.92.vec.extract, ptr %644, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.45.94.vec.extract = extractelement <8 x half> %443, i64 7, !dbg !237
  %645 = or i32 %505, 47, !dbg !237
  %646 = sext i32 %645 to i64, !dbg !237
  %647 = getelementptr inbounds half, ptr %C, i64 %646, !dbg !237
  store half %C.global1.sroa.45.94.vec.extract, ptr %647, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.54.96.vec.extract = extractelement <8 x half> %449, i64 0, !dbg !237
  %648 = or i32 %505, 48, !dbg !237
  %649 = sext i32 %648 to i64, !dbg !237
  %650 = getelementptr inbounds half, ptr %C, i64 %649, !dbg !237
  store half %C.global1.sroa.54.96.vec.extract, ptr %650, align 32, !dbg !237, !tbaa !256
  %C.global1.sroa.54.98.vec.extract = extractelement <8 x half> %449, i64 1, !dbg !237
  %651 = or i32 %505, 49, !dbg !237
  %652 = sext i32 %651 to i64, !dbg !237
  %653 = getelementptr inbounds half, ptr %C, i64 %652, !dbg !237
  store half %C.global1.sroa.54.98.vec.extract, ptr %653, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.54.100.vec.extract = extractelement <8 x half> %449, i64 2, !dbg !237
  %654 = or i32 %505, 50, !dbg !237
  %655 = sext i32 %654 to i64, !dbg !237
  %656 = getelementptr inbounds half, ptr %C, i64 %655, !dbg !237
  store half %C.global1.sroa.54.100.vec.extract, ptr %656, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.54.102.vec.extract = extractelement <8 x half> %449, i64 3, !dbg !237
  %657 = or i32 %505, 51, !dbg !237
  %658 = sext i32 %657 to i64, !dbg !237
  %659 = getelementptr inbounds half, ptr %C, i64 %658, !dbg !237
  store half %C.global1.sroa.54.102.vec.extract, ptr %659, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.54.104.vec.extract = extractelement <8 x half> %449, i64 4, !dbg !237
  %660 = or i32 %505, 52, !dbg !237
  %661 = sext i32 %660 to i64, !dbg !237
  %662 = getelementptr inbounds half, ptr %C, i64 %661, !dbg !237
  store half %C.global1.sroa.54.104.vec.extract, ptr %662, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.54.106.vec.extract = extractelement <8 x half> %449, i64 5, !dbg !237
  %663 = or i32 %505, 53, !dbg !237
  %664 = sext i32 %663 to i64, !dbg !237
  %665 = getelementptr inbounds half, ptr %C, i64 %664, !dbg !237
  store half %C.global1.sroa.54.106.vec.extract, ptr %665, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.54.108.vec.extract = extractelement <8 x half> %449, i64 6, !dbg !237
  %666 = or i32 %505, 54, !dbg !237
  %667 = sext i32 %666 to i64, !dbg !237
  %668 = getelementptr inbounds half, ptr %C, i64 %667, !dbg !237
  store half %C.global1.sroa.54.108.vec.extract, ptr %668, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.54.110.vec.extract = extractelement <8 x half> %449, i64 7, !dbg !237
  %669 = or i32 %505, 55, !dbg !237
  %670 = sext i32 %669 to i64, !dbg !237
  %671 = getelementptr inbounds half, ptr %C, i64 %670, !dbg !237
  store half %C.global1.sroa.54.110.vec.extract, ptr %671, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.63.112.vec.extract = extractelement <8 x half> %455, i64 0, !dbg !237
  %672 = or i32 %505, 56, !dbg !237
  %673 = sext i32 %672 to i64, !dbg !237
  %674 = getelementptr inbounds half, ptr %C, i64 %673, !dbg !237
  store half %C.global1.sroa.63.112.vec.extract, ptr %674, align 16, !dbg !237, !tbaa !256
  %C.global1.sroa.63.114.vec.extract = extractelement <8 x half> %455, i64 1, !dbg !237
  %675 = or i32 %505, 57, !dbg !237
  %676 = sext i32 %675 to i64, !dbg !237
  %677 = getelementptr inbounds half, ptr %C, i64 %676, !dbg !237
  store half %C.global1.sroa.63.114.vec.extract, ptr %677, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.63.116.vec.extract = extractelement <8 x half> %455, i64 2, !dbg !237
  %678 = or i32 %505, 58, !dbg !237
  %679 = sext i32 %678 to i64, !dbg !237
  %680 = getelementptr inbounds half, ptr %C, i64 %679, !dbg !237
  store half %C.global1.sroa.63.116.vec.extract, ptr %680, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.63.118.vec.extract = extractelement <8 x half> %455, i64 3, !dbg !237
  %681 = or i32 %505, 59, !dbg !237
  %682 = sext i32 %681 to i64, !dbg !237
  %683 = getelementptr inbounds half, ptr %C, i64 %682, !dbg !237
  store half %C.global1.sroa.63.118.vec.extract, ptr %683, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.63.120.vec.extract = extractelement <8 x half> %455, i64 4, !dbg !237
  %684 = or i32 %505, 60, !dbg !237
  %685 = sext i32 %684 to i64, !dbg !237
  %686 = getelementptr inbounds half, ptr %C, i64 %685, !dbg !237
  store half %C.global1.sroa.63.120.vec.extract, ptr %686, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.63.122.vec.extract = extractelement <8 x half> %455, i64 5, !dbg !237
  %687 = or i32 %505, 61, !dbg !237
  %688 = sext i32 %687 to i64, !dbg !237
  %689 = getelementptr inbounds half, ptr %C, i64 %688, !dbg !237
  store half %C.global1.sroa.63.122.vec.extract, ptr %689, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.63.124.vec.extract = extractelement <8 x half> %455, i64 6, !dbg !237
  %690 = or i32 %505, 62, !dbg !237
  %691 = sext i32 %690 to i64, !dbg !237
  %692 = getelementptr inbounds half, ptr %C, i64 %691, !dbg !237
  store half %C.global1.sroa.63.124.vec.extract, ptr %692, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.63.126.vec.extract = extractelement <8 x half> %455, i64 7, !dbg !237
  %693 = or i32 %505, 63, !dbg !237
  %694 = sext i32 %693 to i64, !dbg !237
  %695 = getelementptr inbounds half, ptr %C, i64 %694, !dbg !237
  store half %C.global1.sroa.63.126.vec.extract, ptr %695, align 2, !dbg !237, !tbaa !256
  call void @llvm.dbg.declare(metadata i64 2, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 2, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 64, metadata !254, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 64, metadata !254, metadata !DIExpression()), !dbg !237
  %696 = or i64 %506, 64, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %696, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 %696, metadata !255, metadata !DIExpression()), !dbg !237
  %C.global1.sroa.72.128.vec.extract = extractelement <8 x half> %461, i64 0, !dbg !237
  %697 = getelementptr inbounds half, ptr %C, i64 %696, !dbg !237
  store half %C.global1.sroa.72.128.vec.extract, ptr %697, align 64, !dbg !237, !tbaa !256
  %C.global1.sroa.72.130.vec.extract = extractelement <8 x half> %461, i64 1, !dbg !237
  %698 = or i32 %505, 65, !dbg !237
  %699 = sext i32 %698 to i64, !dbg !237
  %700 = getelementptr inbounds half, ptr %C, i64 %699, !dbg !237
  store half %C.global1.sroa.72.130.vec.extract, ptr %700, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.72.132.vec.extract = extractelement <8 x half> %461, i64 2, !dbg !237
  %701 = or i32 %505, 66, !dbg !237
  %702 = sext i32 %701 to i64, !dbg !237
  %703 = getelementptr inbounds half, ptr %C, i64 %702, !dbg !237
  store half %C.global1.sroa.72.132.vec.extract, ptr %703, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.72.134.vec.extract = extractelement <8 x half> %461, i64 3, !dbg !237
  %704 = or i32 %505, 67, !dbg !237
  %705 = sext i32 %704 to i64, !dbg !237
  %706 = getelementptr inbounds half, ptr %C, i64 %705, !dbg !237
  store half %C.global1.sroa.72.134.vec.extract, ptr %706, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.72.136.vec.extract = extractelement <8 x half> %461, i64 4, !dbg !237
  %707 = or i32 %505, 68, !dbg !237
  %708 = sext i32 %707 to i64, !dbg !237
  %709 = getelementptr inbounds half, ptr %C, i64 %708, !dbg !237
  store half %C.global1.sroa.72.136.vec.extract, ptr %709, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.72.138.vec.extract = extractelement <8 x half> %461, i64 5, !dbg !237
  %710 = or i32 %505, 69, !dbg !237
  %711 = sext i32 %710 to i64, !dbg !237
  %712 = getelementptr inbounds half, ptr %C, i64 %711, !dbg !237
  store half %C.global1.sroa.72.138.vec.extract, ptr %712, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.72.140.vec.extract = extractelement <8 x half> %461, i64 6, !dbg !237
  %713 = or i32 %505, 70, !dbg !237
  %714 = sext i32 %713 to i64, !dbg !237
  %715 = getelementptr inbounds half, ptr %C, i64 %714, !dbg !237
  store half %C.global1.sroa.72.140.vec.extract, ptr %715, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.72.142.vec.extract = extractelement <8 x half> %461, i64 7, !dbg !237
  %716 = or i32 %505, 71, !dbg !237
  %717 = sext i32 %716 to i64, !dbg !237
  %718 = getelementptr inbounds half, ptr %C, i64 %717, !dbg !237
  store half %C.global1.sroa.72.142.vec.extract, ptr %718, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.81.144.vec.extract = extractelement <8 x half> %467, i64 0, !dbg !237
  %719 = or i32 %505, 72, !dbg !237
  %720 = sext i32 %719 to i64, !dbg !237
  %721 = getelementptr inbounds half, ptr %C, i64 %720, !dbg !237
  store half %C.global1.sroa.81.144.vec.extract, ptr %721, align 16, !dbg !237, !tbaa !256
  %C.global1.sroa.81.146.vec.extract = extractelement <8 x half> %467, i64 1, !dbg !237
  %722 = or i32 %505, 73, !dbg !237
  %723 = sext i32 %722 to i64, !dbg !237
  %724 = getelementptr inbounds half, ptr %C, i64 %723, !dbg !237
  store half %C.global1.sroa.81.146.vec.extract, ptr %724, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.81.148.vec.extract = extractelement <8 x half> %467, i64 2, !dbg !237
  %725 = or i32 %505, 74, !dbg !237
  %726 = sext i32 %725 to i64, !dbg !237
  %727 = getelementptr inbounds half, ptr %C, i64 %726, !dbg !237
  store half %C.global1.sroa.81.148.vec.extract, ptr %727, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.81.150.vec.extract = extractelement <8 x half> %467, i64 3, !dbg !237
  %728 = or i32 %505, 75, !dbg !237
  %729 = sext i32 %728 to i64, !dbg !237
  %730 = getelementptr inbounds half, ptr %C, i64 %729, !dbg !237
  store half %C.global1.sroa.81.150.vec.extract, ptr %730, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.81.152.vec.extract = extractelement <8 x half> %467, i64 4, !dbg !237
  %731 = or i32 %505, 76, !dbg !237
  %732 = sext i32 %731 to i64, !dbg !237
  %733 = getelementptr inbounds half, ptr %C, i64 %732, !dbg !237
  store half %C.global1.sroa.81.152.vec.extract, ptr %733, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.81.154.vec.extract = extractelement <8 x half> %467, i64 5, !dbg !237
  %734 = or i32 %505, 77, !dbg !237
  %735 = sext i32 %734 to i64, !dbg !237
  %736 = getelementptr inbounds half, ptr %C, i64 %735, !dbg !237
  store half %C.global1.sroa.81.154.vec.extract, ptr %736, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.81.156.vec.extract = extractelement <8 x half> %467, i64 6, !dbg !237
  %737 = or i32 %505, 78, !dbg !237
  %738 = sext i32 %737 to i64, !dbg !237
  %739 = getelementptr inbounds half, ptr %C, i64 %738, !dbg !237
  store half %C.global1.sroa.81.156.vec.extract, ptr %739, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.81.158.vec.extract = extractelement <8 x half> %467, i64 7, !dbg !237
  %740 = or i32 %505, 79, !dbg !237
  %741 = sext i32 %740 to i64, !dbg !237
  %742 = getelementptr inbounds half, ptr %C, i64 %741, !dbg !237
  store half %C.global1.sroa.81.158.vec.extract, ptr %742, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.90.160.vec.extract = extractelement <8 x half> %473, i64 0, !dbg !237
  %743 = or i32 %505, 80, !dbg !237
  %744 = sext i32 %743 to i64, !dbg !237
  %745 = getelementptr inbounds half, ptr %C, i64 %744, !dbg !237
  store half %C.global1.sroa.90.160.vec.extract, ptr %745, align 32, !dbg !237, !tbaa !256
  %C.global1.sroa.90.162.vec.extract = extractelement <8 x half> %473, i64 1, !dbg !237
  %746 = or i32 %505, 81, !dbg !237
  %747 = sext i32 %746 to i64, !dbg !237
  %748 = getelementptr inbounds half, ptr %C, i64 %747, !dbg !237
  store half %C.global1.sroa.90.162.vec.extract, ptr %748, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.90.164.vec.extract = extractelement <8 x half> %473, i64 2, !dbg !237
  %749 = or i32 %505, 82, !dbg !237
  %750 = sext i32 %749 to i64, !dbg !237
  %751 = getelementptr inbounds half, ptr %C, i64 %750, !dbg !237
  store half %C.global1.sroa.90.164.vec.extract, ptr %751, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.90.166.vec.extract = extractelement <8 x half> %473, i64 3, !dbg !237
  %752 = or i32 %505, 83, !dbg !237
  %753 = sext i32 %752 to i64, !dbg !237
  %754 = getelementptr inbounds half, ptr %C, i64 %753, !dbg !237
  store half %C.global1.sroa.90.166.vec.extract, ptr %754, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.90.168.vec.extract = extractelement <8 x half> %473, i64 4, !dbg !237
  %755 = or i32 %505, 84, !dbg !237
  %756 = sext i32 %755 to i64, !dbg !237
  %757 = getelementptr inbounds half, ptr %C, i64 %756, !dbg !237
  store half %C.global1.sroa.90.168.vec.extract, ptr %757, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.90.170.vec.extract = extractelement <8 x half> %473, i64 5, !dbg !237
  %758 = or i32 %505, 85, !dbg !237
  %759 = sext i32 %758 to i64, !dbg !237
  %760 = getelementptr inbounds half, ptr %C, i64 %759, !dbg !237
  store half %C.global1.sroa.90.170.vec.extract, ptr %760, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.90.172.vec.extract = extractelement <8 x half> %473, i64 6, !dbg !237
  %761 = or i32 %505, 86, !dbg !237
  %762 = sext i32 %761 to i64, !dbg !237
  %763 = getelementptr inbounds half, ptr %C, i64 %762, !dbg !237
  store half %C.global1.sroa.90.172.vec.extract, ptr %763, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.90.174.vec.extract = extractelement <8 x half> %473, i64 7, !dbg !237
  %764 = or i32 %505, 87, !dbg !237
  %765 = sext i32 %764 to i64, !dbg !237
  %766 = getelementptr inbounds half, ptr %C, i64 %765, !dbg !237
  store half %C.global1.sroa.90.174.vec.extract, ptr %766, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.99.176.vec.extract = extractelement <8 x half> %479, i64 0, !dbg !237
  %767 = or i32 %505, 88, !dbg !237
  %768 = sext i32 %767 to i64, !dbg !237
  %769 = getelementptr inbounds half, ptr %C, i64 %768, !dbg !237
  store half %C.global1.sroa.99.176.vec.extract, ptr %769, align 16, !dbg !237, !tbaa !256
  %C.global1.sroa.99.178.vec.extract = extractelement <8 x half> %479, i64 1, !dbg !237
  %770 = or i32 %505, 89, !dbg !237
  %771 = sext i32 %770 to i64, !dbg !237
  %772 = getelementptr inbounds half, ptr %C, i64 %771, !dbg !237
  store half %C.global1.sroa.99.178.vec.extract, ptr %772, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.99.180.vec.extract = extractelement <8 x half> %479, i64 2, !dbg !237
  %773 = or i32 %505, 90, !dbg !237
  %774 = sext i32 %773 to i64, !dbg !237
  %775 = getelementptr inbounds half, ptr %C, i64 %774, !dbg !237
  store half %C.global1.sroa.99.180.vec.extract, ptr %775, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.99.182.vec.extract = extractelement <8 x half> %479, i64 3, !dbg !237
  %776 = or i32 %505, 91, !dbg !237
  %777 = sext i32 %776 to i64, !dbg !237
  %778 = getelementptr inbounds half, ptr %C, i64 %777, !dbg !237
  store half %C.global1.sroa.99.182.vec.extract, ptr %778, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.99.184.vec.extract = extractelement <8 x half> %479, i64 4, !dbg !237
  %779 = or i32 %505, 92, !dbg !237
  %780 = sext i32 %779 to i64, !dbg !237
  %781 = getelementptr inbounds half, ptr %C, i64 %780, !dbg !237
  store half %C.global1.sroa.99.184.vec.extract, ptr %781, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.99.186.vec.extract = extractelement <8 x half> %479, i64 5, !dbg !237
  %782 = or i32 %505, 93, !dbg !237
  %783 = sext i32 %782 to i64, !dbg !237
  %784 = getelementptr inbounds half, ptr %C, i64 %783, !dbg !237
  store half %C.global1.sroa.99.186.vec.extract, ptr %784, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.99.188.vec.extract = extractelement <8 x half> %479, i64 6, !dbg !237
  %785 = or i32 %505, 94, !dbg !237
  %786 = sext i32 %785 to i64, !dbg !237
  %787 = getelementptr inbounds half, ptr %C, i64 %786, !dbg !237
  store half %C.global1.sroa.99.188.vec.extract, ptr %787, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.99.190.vec.extract = extractelement <8 x half> %479, i64 7, !dbg !237
  %788 = or i32 %505, 95, !dbg !237
  %789 = sext i32 %788 to i64, !dbg !237
  %790 = getelementptr inbounds half, ptr %C, i64 %789, !dbg !237
  store half %C.global1.sroa.99.190.vec.extract, ptr %790, align 2, !dbg !237, !tbaa !256
  call void @llvm.dbg.declare(metadata i64 3, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 3, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 96, metadata !254, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 96, metadata !254, metadata !DIExpression()), !dbg !237
  %791 = or i64 %506, 96, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %791, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 %791, metadata !255, metadata !DIExpression()), !dbg !237
  %C.global1.sroa.108.192.vec.extract = extractelement <8 x half> %485, i64 0, !dbg !237
  %792 = getelementptr inbounds half, ptr %C, i64 %791, !dbg !237
  store half %C.global1.sroa.108.192.vec.extract, ptr %792, align 64, !dbg !237, !tbaa !256
  %C.global1.sroa.108.194.vec.extract = extractelement <8 x half> %485, i64 1, !dbg !237
  %793 = or i32 %505, 97, !dbg !237
  %794 = sext i32 %793 to i64, !dbg !237
  %795 = getelementptr inbounds half, ptr %C, i64 %794, !dbg !237
  store half %C.global1.sroa.108.194.vec.extract, ptr %795, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.108.196.vec.extract = extractelement <8 x half> %485, i64 2, !dbg !237
  %796 = or i32 %505, 98, !dbg !237
  %797 = sext i32 %796 to i64, !dbg !237
  %798 = getelementptr inbounds half, ptr %C, i64 %797, !dbg !237
  store half %C.global1.sroa.108.196.vec.extract, ptr %798, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.108.198.vec.extract = extractelement <8 x half> %485, i64 3, !dbg !237
  %799 = or i32 %505, 99, !dbg !237
  %800 = sext i32 %799 to i64, !dbg !237
  %801 = getelementptr inbounds half, ptr %C, i64 %800, !dbg !237
  store half %C.global1.sroa.108.198.vec.extract, ptr %801, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.108.200.vec.extract = extractelement <8 x half> %485, i64 4, !dbg !237
  %802 = or i32 %505, 100, !dbg !237
  %803 = sext i32 %802 to i64, !dbg !237
  %804 = getelementptr inbounds half, ptr %C, i64 %803, !dbg !237
  store half %C.global1.sroa.108.200.vec.extract, ptr %804, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.108.202.vec.extract = extractelement <8 x half> %485, i64 5, !dbg !237
  %805 = or i32 %505, 101, !dbg !237
  %806 = sext i32 %805 to i64, !dbg !237
  %807 = getelementptr inbounds half, ptr %C, i64 %806, !dbg !237
  store half %C.global1.sroa.108.202.vec.extract, ptr %807, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.108.204.vec.extract = extractelement <8 x half> %485, i64 6, !dbg !237
  %808 = or i32 %505, 102, !dbg !237
  %809 = sext i32 %808 to i64, !dbg !237
  %810 = getelementptr inbounds half, ptr %C, i64 %809, !dbg !237
  store half %C.global1.sroa.108.204.vec.extract, ptr %810, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.108.206.vec.extract = extractelement <8 x half> %485, i64 7, !dbg !237
  %811 = or i32 %505, 103, !dbg !237
  %812 = sext i32 %811 to i64, !dbg !237
  %813 = getelementptr inbounds half, ptr %C, i64 %812, !dbg !237
  store half %C.global1.sroa.108.206.vec.extract, ptr %813, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.117.208.vec.extract = extractelement <8 x half> %491, i64 0, !dbg !237
  %814 = or i32 %505, 104, !dbg !237
  %815 = sext i32 %814 to i64, !dbg !237
  %816 = getelementptr inbounds half, ptr %C, i64 %815, !dbg !237
  store half %C.global1.sroa.117.208.vec.extract, ptr %816, align 16, !dbg !237, !tbaa !256
  %C.global1.sroa.117.210.vec.extract = extractelement <8 x half> %491, i64 1, !dbg !237
  %817 = or i32 %505, 105, !dbg !237
  %818 = sext i32 %817 to i64, !dbg !237
  %819 = getelementptr inbounds half, ptr %C, i64 %818, !dbg !237
  store half %C.global1.sroa.117.210.vec.extract, ptr %819, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.117.212.vec.extract = extractelement <8 x half> %491, i64 2, !dbg !237
  %820 = or i32 %505, 106, !dbg !237
  %821 = sext i32 %820 to i64, !dbg !237
  %822 = getelementptr inbounds half, ptr %C, i64 %821, !dbg !237
  store half %C.global1.sroa.117.212.vec.extract, ptr %822, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.117.214.vec.extract = extractelement <8 x half> %491, i64 3, !dbg !237
  %823 = or i32 %505, 107, !dbg !237
  %824 = sext i32 %823 to i64, !dbg !237
  %825 = getelementptr inbounds half, ptr %C, i64 %824, !dbg !237
  store half %C.global1.sroa.117.214.vec.extract, ptr %825, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.117.216.vec.extract = extractelement <8 x half> %491, i64 4, !dbg !237
  %826 = or i32 %505, 108, !dbg !237
  %827 = sext i32 %826 to i64, !dbg !237
  %828 = getelementptr inbounds half, ptr %C, i64 %827, !dbg !237
  store half %C.global1.sroa.117.216.vec.extract, ptr %828, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.117.218.vec.extract = extractelement <8 x half> %491, i64 5, !dbg !237
  %829 = or i32 %505, 109, !dbg !237
  %830 = sext i32 %829 to i64, !dbg !237
  %831 = getelementptr inbounds half, ptr %C, i64 %830, !dbg !237
  store half %C.global1.sroa.117.218.vec.extract, ptr %831, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.117.220.vec.extract = extractelement <8 x half> %491, i64 6, !dbg !237
  %832 = or i32 %505, 110, !dbg !237
  %833 = sext i32 %832 to i64, !dbg !237
  %834 = getelementptr inbounds half, ptr %C, i64 %833, !dbg !237
  store half %C.global1.sroa.117.220.vec.extract, ptr %834, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.117.222.vec.extract = extractelement <8 x half> %491, i64 7, !dbg !237
  %835 = or i32 %505, 111, !dbg !237
  %836 = sext i32 %835 to i64, !dbg !237
  %837 = getelementptr inbounds half, ptr %C, i64 %836, !dbg !237
  store half %C.global1.sroa.117.222.vec.extract, ptr %837, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.126.224.vec.extract = extractelement <8 x half> %497, i64 0, !dbg !237
  %838 = or i32 %505, 112, !dbg !237
  %839 = sext i32 %838 to i64, !dbg !237
  %840 = getelementptr inbounds half, ptr %C, i64 %839, !dbg !237
  store half %C.global1.sroa.126.224.vec.extract, ptr %840, align 32, !dbg !237, !tbaa !256
  %C.global1.sroa.126.226.vec.extract = extractelement <8 x half> %497, i64 1, !dbg !237
  %841 = or i32 %505, 113, !dbg !237
  %842 = sext i32 %841 to i64, !dbg !237
  %843 = getelementptr inbounds half, ptr %C, i64 %842, !dbg !237
  store half %C.global1.sroa.126.226.vec.extract, ptr %843, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.126.228.vec.extract = extractelement <8 x half> %497, i64 2, !dbg !237
  %844 = or i32 %505, 114, !dbg !237
  %845 = sext i32 %844 to i64, !dbg !237
  %846 = getelementptr inbounds half, ptr %C, i64 %845, !dbg !237
  store half %C.global1.sroa.126.228.vec.extract, ptr %846, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.126.230.vec.extract = extractelement <8 x half> %497, i64 3, !dbg !237
  %847 = or i32 %505, 115, !dbg !237
  %848 = sext i32 %847 to i64, !dbg !237
  %849 = getelementptr inbounds half, ptr %C, i64 %848, !dbg !237
  store half %C.global1.sroa.126.230.vec.extract, ptr %849, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.126.232.vec.extract = extractelement <8 x half> %497, i64 4, !dbg !237
  %850 = or i32 %505, 116, !dbg !237
  %851 = sext i32 %850 to i64, !dbg !237
  %852 = getelementptr inbounds half, ptr %C, i64 %851, !dbg !237
  store half %C.global1.sroa.126.232.vec.extract, ptr %852, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.126.234.vec.extract = extractelement <8 x half> %497, i64 5, !dbg !237
  %853 = or i32 %505, 117, !dbg !237
  %854 = sext i32 %853 to i64, !dbg !237
  %855 = getelementptr inbounds half, ptr %C, i64 %854, !dbg !237
  store half %C.global1.sroa.126.234.vec.extract, ptr %855, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.126.236.vec.extract = extractelement <8 x half> %497, i64 6, !dbg !237
  %856 = or i32 %505, 118, !dbg !237
  %857 = sext i32 %856 to i64, !dbg !237
  %858 = getelementptr inbounds half, ptr %C, i64 %857, !dbg !237
  store half %C.global1.sroa.126.236.vec.extract, ptr %858, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.126.238.vec.extract = extractelement <8 x half> %497, i64 7, !dbg !237
  %859 = or i32 %505, 119, !dbg !237
  %860 = sext i32 %859 to i64, !dbg !237
  %861 = getelementptr inbounds half, ptr %C, i64 %860, !dbg !237
  store half %C.global1.sroa.126.238.vec.extract, ptr %861, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.135.240.vec.extract = extractelement <8 x half> %503, i64 0, !dbg !237
  %862 = or i32 %505, 120, !dbg !237
  %863 = sext i32 %862 to i64, !dbg !237
  %864 = getelementptr inbounds half, ptr %C, i64 %863, !dbg !237
  store half %C.global1.sroa.135.240.vec.extract, ptr %864, align 16, !dbg !237, !tbaa !256
  %C.global1.sroa.135.242.vec.extract = extractelement <8 x half> %503, i64 1, !dbg !237
  %865 = or i32 %505, 121, !dbg !237
  %866 = sext i32 %865 to i64, !dbg !237
  %867 = getelementptr inbounds half, ptr %C, i64 %866, !dbg !237
  store half %C.global1.sroa.135.242.vec.extract, ptr %867, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.135.244.vec.extract = extractelement <8 x half> %503, i64 2, !dbg !237
  %868 = or i32 %505, 122, !dbg !237
  %869 = sext i32 %868 to i64, !dbg !237
  %870 = getelementptr inbounds half, ptr %C, i64 %869, !dbg !237
  store half %C.global1.sroa.135.244.vec.extract, ptr %870, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.135.246.vec.extract = extractelement <8 x half> %503, i64 3, !dbg !237
  %871 = or i32 %505, 123, !dbg !237
  %872 = sext i32 %871 to i64, !dbg !237
  %873 = getelementptr inbounds half, ptr %C, i64 %872, !dbg !237
  store half %C.global1.sroa.135.246.vec.extract, ptr %873, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.135.248.vec.extract = extractelement <8 x half> %503, i64 4, !dbg !237
  %874 = or i32 %505, 124, !dbg !237
  %875 = sext i32 %874 to i64, !dbg !237
  %876 = getelementptr inbounds half, ptr %C, i64 %875, !dbg !237
  store half %C.global1.sroa.135.248.vec.extract, ptr %876, align 8, !dbg !237, !tbaa !256
  %C.global1.sroa.135.250.vec.extract = extractelement <8 x half> %503, i64 5, !dbg !237
  %877 = or i32 %505, 125, !dbg !237
  %878 = sext i32 %877 to i64, !dbg !237
  %879 = getelementptr inbounds half, ptr %C, i64 %878, !dbg !237
  store half %C.global1.sroa.135.250.vec.extract, ptr %879, align 2, !dbg !237, !tbaa !256
  %C.global1.sroa.135.252.vec.extract = extractelement <8 x half> %503, i64 6, !dbg !237
  %880 = or i32 %505, 126, !dbg !237
  %881 = sext i32 %880 to i64, !dbg !237
  %882 = getelementptr inbounds half, ptr %C, i64 %881, !dbg !237
  store half %C.global1.sroa.135.252.vec.extract, ptr %882, align 4, !dbg !237, !tbaa !256
  %C.global1.sroa.135.254.vec.extract = extractelement <8 x half> %503, i64 7, !dbg !237
  %883 = or i32 %505, 127, !dbg !237
  %884 = sext i32 %883 to i64, !dbg !237
  %885 = getelementptr inbounds half, ptr %C, i64 %884, !dbg !237
  store half %C.global1.sroa.135.254.vec.extract, ptr %885, align 2, !dbg !237, !tbaa !256
  call void @llvm.dbg.declare(metadata i64 4, metadata !253, metadata !DIExpression()), !dbg !237
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next21, metadata !238, metadata !DIExpression()), !dbg !237
  %lftr.wideiv = trunc i64 %indvars.iv.next21 to i32, !dbg !237
  %exitcond22.not = icmp eq i32 %18, %lftr.wideiv, !dbg !237
  br i1 %exitcond22.not, label %for_end_m.outer, label %for_body_m.outer, !dbg !237, !prof !29
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
!11 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
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
!31 = !{!"0x6000030bf390.w4.b0", !32, i64 0}
!32 = !{!"0x6000030bf390.w8.b0", !33, i64 0}
!33 = !{!"0x6000030bf390.w16.b0", !34, i64 0}
!34 = !{!"0x6000030bf390.w32.b0", !35, i64 0}
!35 = !{!"0x6000030bf390.w64.b0", !36, i64 0}
!36 = !{!"0x6000030bf390.w128.b0", !37, i64 0}
!37 = !{!"0x6000030bf390.w256.b0", !38, i64 0}
!38 = !{!"0x6000030bf390.w512.b0", !39, i64 0}
!39 = !{!"0x6000030bf390.w1024.b0", !40, i64 0}
!40 = !{!"0x6000030bf390", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x6000030bf390.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x6000030bf390.w4.b8", !47, i64 0}
!47 = !{!"0x6000030bf390.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x6000030bf390.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x6000030bf390.w4.b16", !54, i64 0}
!54 = !{!"0x6000030bf390.w8.b16", !55, i64 0}
!55 = !{!"0x6000030bf390.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x6000030bf390.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x6000031da790.w8.b0", !95, i64 0}
!95 = !{!"0x6000031da790.w16.b0", !96, i64 0}
!96 = !{!"0x6000031da790.w32.b0", !97, i64 0}
!97 = !{!"0x6000031da790.w64.b0", !98, i64 0}
!98 = !{!"0x6000031da790.w128.b0", !99, i64 0}
!99 = !{!"0x6000031da790.w256.b0", !100, i64 0}
!100 = !{!"0x6000031da790.w512.b0", !101, i64 0}
!101 = !{!"0x6000031da790.w1024.b0", !102, i64 0}
!102 = !{!"0x6000031da790", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x6000031da790.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x6000031da790.w8.b16", !107, i64 0}
!107 = !{!"0x6000031da790.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x600003055800.w8.b16", !110, i64 0}
!110 = !{!"0x600003055800.w16.b16", !111, i64 0}
!111 = !{!"0x600003055800.w32.b0", !112, i64 0}
!112 = !{!"0x600003055800.w64.b0", !113, i64 0}
!113 = !{!"0x600003055800.w128.b0", !114, i64 0}
!114 = !{!"0x600003055800.w256.b0", !115, i64 0}
!115 = !{!"0x600003055800.w512.b0", !116, i64 0}
!116 = !{!"0x600003055800.w1024.b0", !117, i64 0}
!117 = !{!"0x600003055800", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x600003055800.w8.b8", !120, i64 0}
!120 = !{!"0x600003055800.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x600003055800.w8.b0", !120, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x600003057300.w8.b0", !125, i64 0}
!125 = !{!"0x600003057300.w16.b0", !126, i64 0}
!126 = !{!"0x600003057300.w32.b0", !127, i64 0}
!127 = !{!"0x600003057300.w64.b0", !128, i64 0}
!128 = !{!"0x600003057300.w128.b0", !129, i64 0}
!129 = !{!"0x600003057300.w256.b0", !130, i64 0}
!130 = !{!"0x600003057300.w512.b0", !131, i64 0}
!131 = !{!"0x600003057300.w1024.b0", !132, i64 0}
!132 = !{!"0x600003057300", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x600003057300.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x600003057300.w8.b16", !137, i64 0}
!137 = !{!"0x600003057300.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x6000030578d0.w8.b16", !140, i64 0}
!140 = !{!"0x6000030578d0.w16.b16", !141, i64 0}
!141 = !{!"0x6000030578d0.w32.b0", !142, i64 0}
!142 = !{!"0x6000030578d0.w64.b0", !143, i64 0}
!143 = !{!"0x6000030578d0.w128.b0", !144, i64 0}
!144 = !{!"0x6000030578d0.w256.b0", !145, i64 0}
!145 = !{!"0x6000030578d0.w512.b0", !146, i64 0}
!146 = !{!"0x6000030578d0.w1024.b0", !147, i64 0}
!147 = !{!"0x6000030578d0", !28, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x6000030578d0.w8.b8", !150, i64 0}
!150 = !{!"0x6000030578d0.w16.b0", !141, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x600003056c70.w8.b0", !153, i64 0}
!153 = !{!"0x600003056c70.w16.b0", !154, i64 0}
!154 = !{!"0x600003056c70.w32.b0", !155, i64 0}
!155 = !{!"0x600003056c70.w64.b0", !156, i64 0}
!156 = !{!"0x600003056c70.w128.b0", !157, i64 0}
!157 = !{!"0x600003056c70.w256.b0", !158, i64 0}
!158 = !{!"0x600003056c70.w512.b0", !159, i64 0}
!159 = !{!"0x600003056c70.w1024.b0", !160, i64 0}
!160 = !{!"0x600003056c70", !28, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"0x600003044060.w8.b0", !163, i64 0}
!163 = !{!"0x600003044060.w16.b0", !164, i64 0}
!164 = !{!"0x600003044060.w32.b0", !165, i64 0}
!165 = !{!"0x600003044060.w64.b0", !166, i64 0}
!166 = !{!"0x600003044060.w128.b0", !167, i64 0}
!167 = !{!"0x600003044060.w256.b0", !168, i64 0}
!168 = !{!"0x600003044060.w512.b0", !169, i64 0}
!169 = !{!"0x600003044060.w1024.b0", !170, i64 0}
!170 = !{!"0x600003044060", !28, i64 0}
!171 = !{!172, !172, i64 0}
!172 = !{!"0x600003044060.w8.b8", !163, i64 0}
!173 = !{!174, !174, i64 0}
!174 = !{!"0x600003044960.w8.b8", !175, i64 0}
!175 = !{!"0x600003044960.w16.b0", !176, i64 0}
!176 = !{!"0x600003044960.w32.b0", !177, i64 0}
!177 = !{!"0x600003044960.w64.b0", !178, i64 0}
!178 = !{!"0x600003044960.w128.b0", !179, i64 0}
!179 = !{!"0x600003044960.w256.b0", !180, i64 0}
!180 = !{!"0x600003044960.w512.b0", !181, i64 0}
!181 = !{!"0x600003044960.w1024.b0", !182, i64 0}
!182 = !{!"0x600003044960", !28, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x600003045560.w8.b0", !185, i64 0}
!185 = !{!"0x600003045560.w16.b0", !186, i64 0}
!186 = !{!"0x600003045560.w32.b0", !187, i64 0}
!187 = !{!"0x600003045560.w64.b0", !188, i64 0}
!188 = !{!"0x600003045560.w128.b0", !189, i64 0}
!189 = !{!"0x600003045560.w256.b0", !190, i64 0}
!190 = !{!"0x600003045560.w512.b0", !191, i64 0}
!191 = !{!"0x600003045560.w1024.b0", !192, i64 0}
!192 = !{!"0x600003045560", !28, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x600003045560.w8.b8", !185, i64 0}
!195 = !{!196, !196, i64 0}
!196 = !{!"0x600003045e60.w8.b8", !197, i64 0}
!197 = !{!"0x600003045e60.w16.b0", !198, i64 0}
!198 = !{!"0x600003045e60.w32.b0", !199, i64 0}
!199 = !{!"0x600003045e60.w64.b0", !200, i64 0}
!200 = !{!"0x600003045e60.w128.b0", !201, i64 0}
!201 = !{!"0x600003045e60.w256.b0", !202, i64 0}
!202 = !{!"0x600003045e60.w512.b0", !203, i64 0}
!203 = !{!"0x600003045e60.w1024.b0", !204, i64 0}
!204 = !{!"0x600003045e60", !28, i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"0x600003046a00.w8.b0", !207, i64 0}
!207 = !{!"0x600003046a00.w16.b0", !208, i64 0}
!208 = !{!"0x600003046a00.w32.b0", !209, i64 0}
!209 = !{!"0x600003046a00.w64.b0", !210, i64 0}
!210 = !{!"0x600003046a00.w128.b0", !211, i64 0}
!211 = !{!"0x600003046a00.w256.b0", !212, i64 0}
!212 = !{!"0x600003046a00.w512.b0", !213, i64 0}
!213 = !{!"0x600003046a00.w1024.b0", !214, i64 0}
!214 = !{!"0x600003046a00", !28, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x600003046a00.w8.b8", !207, i64 0}
!217 = !{!218, !218, i64 0}
!218 = !{!"0x6000030473c0.w8.b8", !219, i64 0}
!219 = !{!"0x6000030473c0.w16.b0", !220, i64 0}
!220 = !{!"0x6000030473c0.w32.b0", !221, i64 0}
!221 = !{!"0x6000030473c0.w64.b0", !222, i64 0}
!222 = !{!"0x6000030473c0.w128.b0", !223, i64 0}
!223 = !{!"0x6000030473c0.w256.b0", !224, i64 0}
!224 = !{!"0x6000030473c0.w512.b0", !225, i64 0}
!225 = !{!"0x6000030473c0.w1024.b0", !226, i64 0}
!226 = !{!"0x6000030473c0", !28, i64 0}
!227 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_", scope: !1, file: !1, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!14, !77, !72, !82, !82, !82, !82}
!230 = !{!231, !232, !233, !234, !235, !236}
!231 = !DILocalVariable(name: "LUT", arg: 1, scope: !227, file: !1, type: !77)
!232 = !DILocalVariable(name: "A", arg: 2, scope: !227, file: !1, type: !72)
!233 = !DILocalVariable(name: "Scales", arg: 3, scope: !227, file: !1, type: !82)
!234 = !DILocalVariable(name: "LUT_Scales", arg: 4, scope: !227, file: !1, type: !82)
!235 = !DILocalVariable(name: "LUT_Biases", arg: 5, scope: !227, file: !1, type: !82)
!236 = !DILocalVariable(name: "C", arg: 6, scope: !227, file: !1, type: !82)
!237 = !DILocation(line: 0, scope: !227)
!238 = !DILocalVariable(name: "m.outer", scope: !227, file: !1, type: !14)
!239 = !DILocalVariable(name: "CBits", scope: !227, file: !1, type: !82)
!240 = !DILocalVariable(name: "k.outer", scope: !227, file: !1, type: !14)
!241 = !{!242, !242, i64 0}
!242 = !{!"__fp16", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C++ TBAA"}
!245 = distinct !{!245, !246}
!246 = !{!"llvm.loop.mustprogress"}
!247 = !DILocalVariable(name: "m.c.outer", scope: !227, file: !1, type: !14)
!248 = !DILocalVariable(name: "cse_var_2", scope: !227, file: !1, type: !14)
!249 = !DILocalVariable(name: "cse_var_1", scope: !227, file: !1, type: !14)
!250 = !{!251, !251, i64 0}
!251 = !{!"0x60000312bf00", !28, i64 0}
!252 = !DILocalVariable(name: "C.global", scope: !227, file: !1, type: !82)
!253 = !DILocalVariable(name: "m.inner.outer", scope: !227, file: !1, type: !14)
!254 = !DILocalVariable(name: "cse_var_4", scope: !227, file: !1, type: !14)
!255 = !DILocalVariable(name: "cse_var_3", scope: !227, file: !1, type: !14)
!256 = !{!257, !257, i64 0}
!257 = !{!"0x600003176ee0", !28, i64 0}
