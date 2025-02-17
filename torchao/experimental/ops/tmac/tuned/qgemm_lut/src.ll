; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-linux-gnu"

%0 = type { i32*, i32 }
%closure_loop_parallel_m.outer = type { i8*, i8*, half*, half*, half*, half* }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
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
@.str.22 = private constant [241 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[0]) == 50, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape[0] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [243 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[1]) == 800, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [241 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[2]) == 64, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape[2] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [316 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_strides[2]) and 64 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_strides[1]) and 51200 == T.Cast(\22int32\22, qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_strides[0]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides: expected to be compact array\00", align 1
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
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @qgemm_lut_t4_int8_m6400_k3200_n1_b2(i8* noalias readonly %args, i32* noalias readonly %arg_type_ids, i32 %num_args, i8* noalias nocapture readnone %out_ret_value, i32* noalias nocapture readnone %out_ret_tcode, i8* noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !15 {
entry:
  call void @llvm.dbg.value(metadata i8* %args, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32* %arg_type_ids, metadata !23, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %out_ret_value, metadata !25, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32* %out_ret_tcode, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %resource_handle, metadata !27, metadata !DIExpression()), !dbg !28
  %0 = icmp eq i32 %num_args, 6, !dbg !28
  br i1 %0, label %assert_end, label %assert_fail, !dbg !28, !prof !29

common.ret:                                       ; preds = %assert_end158, %assert_fail157, %assert_fail155, %assert_fail153, %assert_fail151, %assert_fail149, %assert_fail145, %assert_fail143, %assert_fail141, %assert_fail139, %assert_fail137, %assert_fail135, %assert_fail133, %assert_fail131, %assert_fail127, %assert_fail125, %assert_fail123, %assert_fail121, %assert_fail119, %assert_fail117, %assert_fail115, %assert_fail113, %assert_fail109, %assert_fail107, %assert_fail105, %assert_fail103, %assert_fail101, %assert_fail99, %assert_fail97, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail83, %assert_fail81, %assert_fail79, %assert_fail75, %assert_fail73, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail61, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail49, %assert_fail47, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail97 ], [ -1, %assert_fail99 ], [ -1, %assert_fail101 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ -1, %assert_fail107 ], [ -1, %assert_fail109 ], [ -1, %assert_fail113 ], [ -1, %assert_fail115 ], [ -1, %assert_fail117 ], [ -1, %assert_fail119 ], [ -1, %assert_fail121 ], [ -1, %assert_fail123 ], [ -1, %assert_fail125 ], [ -1, %assert_fail127 ], [ -1, %assert_fail131 ], [ -1, %assert_fail133 ], [ -1, %assert_fail135 ], [ -1, %assert_fail137 ], [ -1, %assert_fail139 ], [ -1, %assert_fail141 ], [ -1, %assert_fail143 ], [ -1, %assert_fail145 ], [ -1, %assert_fail149 ], [ -1, %assert_fail151 ], [ -1, %assert_fail153 ], [ -1, %assert_fail155 ], [ -1, %assert_fail157 ], [ %359, %assert_end158 ]
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
  %.not165 = icmp eq i32* %arg_type_ids, null, !dbg !28
  br i1 %.not165, label %assert_fail3, label %assert_end4, !dbg !28, !prof !33

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
  %.not166 = icmp eq i8* %A, null, !dbg !28
  br i1 %.not166, label %assert_fail17, label %assert_end18, !dbg !28, !prof !33

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
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape = load i64*, i64** %33, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, metadata !70, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, metadata !70, metadata !DIExpression()), !dbg !28
  %34 = getelementptr inbounds i8, i8* %A, i64 32, !dbg !28
  %35 = bitcast i8* %34 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides = load i64*, i64** %35, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, metadata !73, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, metadata !73, metadata !DIExpression()), !dbg !28
  %36 = getelementptr inbounds i8, i8* %A, i64 12, !dbg !28
  %37 = bitcast i8* %36 to i32*, !dbg !28
  %dev_id = load i32, i32* %37, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !74, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !74, metadata !DIExpression()), !dbg !28
  %38 = bitcast i8* %A to i8**, !dbg !28
  %A160 = load i8*, i8** %38, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %A160, metadata !75, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %A160, metadata !75, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(i8* %A160, i64 64) ], !dbg !28
  %.not167 = icmp eq i8* %LUT, null, !dbg !28
  br i1 %.not167, label %assert_fail23, label %assert_end24, !dbg !28, !prof !33

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
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape = load i64*, i64** %46, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, metadata !78, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, metadata !78, metadata !DIExpression()), !dbg !28
  %47 = getelementptr inbounds i8, i8* %LUT, i64 32, !dbg !28
  %48 = bitcast i8* %47 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides = load i64*, i64** %48, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, metadata !79, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, metadata !79, metadata !DIExpression()), !dbg !28
  %49 = bitcast i8* %LUT to i8**, !dbg !28
  %LUT159 = load i8*, i8** %49, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT159, metadata !80, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT159, metadata !80, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(i8* %LUT159, i64 64) ], !dbg !28
  %.not168 = icmp eq i8* %Scales, null, !dbg !28
  br i1 %.not168, label %assert_fail29, label %assert_end30, !dbg !28, !prof !33

assert_fail29:                                    ; preds = %assert_end26
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %50(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.13, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end30:                                     ; preds = %assert_end26
  %51 = getelementptr inbounds i8, i8* %Scales, i64 16, !dbg !28
  %52 = bitcast i8* %51 to i32*, !dbg !28
  %53 = load i32, i32* %52, align 4, !dbg !28
  %54 = icmp eq i32 %53, 1, !dbg !28
  br i1 %54, label %assert_end32, label %assert_fail31, !dbg !28, !prof !29

assert_fail31:                                    ; preds = %assert_end30
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %55(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.14, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %56 = getelementptr inbounds i8, i8* %Scales, i64 24, !dbg !28
  %57 = bitcast i8* %56 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape = load i64*, i64** %57, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape, metadata !83, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape, metadata !83, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* undef, metadata !84, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* undef, metadata !84, metadata !DIExpression()), !dbg !28
  %58 = bitcast i8* %Scales to half**, !dbg !28
  %Scales_void_ptr169 = load half*, half** %58, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %Scales_void_ptr169, metadata !85, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %Scales_void_ptr169, metadata !85, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %Scales_void_ptr169, i64 64) ], !dbg !28
  %.not170 = icmp eq i8* %LUT_Scales, null, !dbg !28
  br i1 %.not170, label %assert_fail35, label %assert_end36, !dbg !28, !prof !33

assert_fail35:                                    ; preds = %assert_end32
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %59(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.15, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end36:                                     ; preds = %assert_end32
  %60 = getelementptr inbounds i8, i8* %LUT_Scales, i64 16, !dbg !28
  %61 = bitcast i8* %60 to i32*, !dbg !28
  %62 = load i32, i32* %61, align 4, !dbg !28
  %63 = icmp eq i32 %62, 2, !dbg !28
  br i1 %63, label %assert_end38, label %assert_fail37, !dbg !28, !prof !29

assert_fail37:                                    ; preds = %assert_end36
  %64 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %64(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.16, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %65 = getelementptr inbounds i8, i8* %LUT_Scales, i64 24, !dbg !28
  %66 = bitcast i8* %65 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape = load i64*, i64** %66, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, metadata !88, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, metadata !88, metadata !DIExpression()), !dbg !28
  %67 = getelementptr inbounds i8, i8* %LUT_Scales, i64 32, !dbg !28
  %68 = bitcast i8* %67 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides = load i64*, i64** %68, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, metadata !89, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, metadata !89, metadata !DIExpression()), !dbg !28
  %69 = bitcast i8* %LUT_Scales to half**, !dbg !28
  %LUT_Scales_void_ptr171 = load half*, half** %69, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Scales_void_ptr171, metadata !90, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Scales_void_ptr171, metadata !90, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %LUT_Scales_void_ptr171, i64 64) ], !dbg !28
  %.not172 = icmp eq i8* %LUT_Biases, null, !dbg !28
  br i1 %.not172, label %assert_fail41, label %assert_end42, !dbg !28, !prof !33

assert_fail41:                                    ; preds = %assert_end38
  %70 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %70(i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.17, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end42:                                     ; preds = %assert_end38
  %71 = getelementptr inbounds i8, i8* %LUT_Biases, i64 16, !dbg !28
  %72 = bitcast i8* %71 to i32*, !dbg !28
  %73 = load i32, i32* %72, align 4, !dbg !28
  %74 = icmp eq i32 %73, 2, !dbg !28
  br i1 %74, label %assert_end44, label %assert_fail43, !dbg !28, !prof !29

assert_fail43:                                    ; preds = %assert_end42
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %75(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.18, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %76 = getelementptr inbounds i8, i8* %LUT_Biases, i64 24, !dbg !28
  %77 = bitcast i8* %76 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape = load i64*, i64** %77, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, metadata !91, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, metadata !91, metadata !DIExpression()), !dbg !28
  %78 = getelementptr inbounds i8, i8* %LUT_Biases, i64 32, !dbg !28
  %79 = bitcast i8* %78 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides = load i64*, i64** %79, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, metadata !92, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, metadata !92, metadata !DIExpression()), !dbg !28
  %80 = bitcast i8* %LUT_Biases to half**, !dbg !28
  %LUT_Biases_void_ptr173 = load half*, half** %80, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Biases_void_ptr173, metadata !93, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Biases_void_ptr173, metadata !93, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %LUT_Biases_void_ptr173, i64 64) ], !dbg !28
  %.not174 = icmp eq i8* %C, null, !dbg !28
  br i1 %.not174, label %assert_fail47, label %assert_end48, !dbg !28, !prof !33

assert_fail47:                                    ; preds = %assert_end44
  %81 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %81(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str.19, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end48:                                     ; preds = %assert_end44
  %82 = getelementptr inbounds i8, i8* %C, i64 16, !dbg !28
  %83 = bitcast i8* %82 to i32*, !dbg !28
  %84 = load i32, i32* %83, align 4, !dbg !28
  %85 = icmp eq i32 %84, 2, !dbg !28
  br i1 %85, label %assert_end50, label %assert_fail49, !dbg !28, !prof !29

assert_fail49:                                    ; preds = %assert_end48
  %86 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %86(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.20, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end50:                                     ; preds = %assert_end48
  %87 = getelementptr inbounds i8, i8* %C, i64 24, !dbg !28
  %88 = bitcast i8* %87 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape = load i64*, i64** %88, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape, metadata !94, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape, metadata !94, metadata !DIExpression()), !dbg !28
  %89 = getelementptr inbounds i8, i8* %C, i64 32, !dbg !28
  %90 = bitcast i8* %89 to i64**, !dbg !28
  %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides = load i64*, i64** %90, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides, metadata !95, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides, metadata !95, metadata !DIExpression()), !dbg !28
  %91 = bitcast i8* %C to half**, !dbg !28
  %C_void_ptr175 = load half*, half** %91, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %C_void_ptr175, metadata !96, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %C_void_ptr175, metadata !96, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %C_void_ptr175, i64 64) ], !dbg !28
  %92 = getelementptr inbounds i8, i8* %A, i64 20, !dbg !28
  %93 = load i8, i8* %92, align 1, !dbg !28
  %94 = icmp eq i8 %93, 1, !dbg !28
  %95 = getelementptr inbounds i8, i8* %A, i64 21, !dbg !28
  %96 = load i8, i8* %95, align 1, !dbg !28
  %97 = icmp eq i8 %96, 8, !dbg !28
  %98 = and i1 %94, %97, !dbg !28
  %99 = getelementptr inbounds i8, i8* %A, i64 22, !dbg !28
  %100 = bitcast i8* %99 to i16*, !dbg !28
  %101 = load i16, i16* %100, align 2, !dbg !28
  %102 = icmp eq i16 %101, 1, !dbg !28
  %103 = and i1 %98, %102, !dbg !28
  br i1 %103, label %assert_end54, label %assert_fail53, !dbg !28, !prof !29

assert_fail53:                                    ; preds = %assert_end50
  %104 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %104(i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.21, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end54:                                     ; preds = %assert_end50
  %105 = load i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, align 8, !dbg !28, !tbaa !97
  %106 = trunc i64 %105 to i32, !dbg !28
  %107 = icmp eq i32 %106, 50, !dbg !28
  br i1 %107, label %assert_end56, label %assert_fail55, !dbg !28, !prof !29

assert_fail55:                                    ; preds = %assert_end54
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %108(i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.22, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %109 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, i64 1, !dbg !28
  %110 = load i64, i64* %109, align 8, !dbg !28, !tbaa !107
  %111 = trunc i64 %110 to i32, !dbg !28
  %112 = icmp eq i32 %111, 800, !dbg !28
  br i1 %112, label %assert_end58, label %assert_fail57, !dbg !28, !prof !29

assert_fail57:                                    ; preds = %assert_end56
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %113(i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.23, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %114 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape, i64 2, !dbg !28
  %115 = load i64, i64* %114, align 8, !dbg !28, !tbaa !109
  %116 = trunc i64 %115 to i32, !dbg !28
  %117 = icmp eq i32 %116, 64, !dbg !28
  br i1 %117, label %assert_end60, label %assert_fail59, !dbg !28, !prof !29

assert_fail59:                                    ; preds = %assert_end58
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %118(i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.24, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not176 = icmp eq i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, null, !dbg !28
  br i1 %.not176, label %if_end, label %if_then, !dbg !28, !prof !33

if_then:                                          ; preds = %assert_end60
  %119 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, i64 2, !dbg !28
  %120 = load i64, i64* %119, align 8, !dbg !28, !tbaa !112
  %121 = trunc i64 %120 to i32, !dbg !28
  %122 = icmp eq i32 %121, 1, !dbg !28
  %123 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, i64 1, !dbg !28
  %124 = load i64, i64* %123, align 8, !dbg !28, !tbaa !122
  %125 = trunc i64 %124 to i32, !dbg !28
  %126 = icmp eq i32 %125, 64, !dbg !28
  %127 = and i1 %122, %126, !dbg !28
  %128 = load i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides, align 8, !dbg !28, !tbaa !125
  %129 = trunc i64 %128 to i32, !dbg !28
  %130 = icmp eq i32 %129, 51200, !dbg !28
  %131 = and i1 %127, %130, !dbg !28
  br i1 %131, label %if_end, label %assert_fail61, !dbg !28, !prof !29

if_end:                                           ; preds = %if_then, %assert_end60
  %132 = getelementptr inbounds i8, i8* %A, i64 40, !dbg !28
  %133 = bitcast i8* %132 to i64*, !dbg !28
  %134 = load i64, i64* %133, align 8, !dbg !28
  %135 = icmp eq i64 %134, 0, !dbg !28
  br i1 %135, label %assert_end64, label %assert_fail63, !dbg !28, !prof !29

assert_fail61:                                    ; preds = %if_then
  %136 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %136(i8* getelementptr inbounds ([316 x i8], [316 x i8]* @.str.25, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail63:                                    ; preds = %if_end
  %137 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %137(i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.26, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end64:                                     ; preds = %if_end
  %138 = getelementptr inbounds i8, i8* %A, i64 8, !dbg !28
  %139 = bitcast i8* %138 to i32*, !dbg !28
  %140 = load i32, i32* %139, align 4, !dbg !28
  %141 = icmp eq i32 %140, 1, !dbg !28
  br i1 %141, label %assert_end66, label %assert_fail65, !dbg !28, !prof !29

assert_fail65:                                    ; preds = %assert_end64
  %142 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %142(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.27, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %.not177 = icmp eq i8* %A160, null, !dbg !28
  br i1 %.not177, label %assert_fail67, label %assert_end68, !dbg !28, !prof !33

assert_fail67:                                    ; preds = %assert_end66
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %143(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.28, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %144 = getelementptr inbounds i8, i8* %LUT, i64 20, !dbg !28
  %145 = load i8, i8* %144, align 1, !dbg !28
  %146 = icmp eq i8 %145, 0, !dbg !28
  %147 = getelementptr inbounds i8, i8* %LUT, i64 21, !dbg !28
  %148 = load i8, i8* %147, align 1, !dbg !28
  %149 = icmp eq i8 %148, 8, !dbg !28
  %150 = and i1 %146, %149, !dbg !28
  %151 = getelementptr inbounds i8, i8* %LUT, i64 22, !dbg !28
  %152 = bitcast i8* %151 to i16*, !dbg !28
  %153 = load i16, i16* %152, align 2, !dbg !28
  %154 = icmp eq i16 %153, 1, !dbg !28
  %155 = and i1 %150, %154, !dbg !28
  br i1 %155, label %assert_end70, label %assert_fail69, !dbg !28, !prof !29

assert_fail69:                                    ; preds = %assert_end68
  %156 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %156(i8* getelementptr inbounds ([246 x i8], [246 x i8]* @.str.29, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %157 = load i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, align 8, !dbg !28, !tbaa !127
  %158 = trunc i64 %157 to i32, !dbg !28
  %159 = icmp eq i32 %158, 1, !dbg !28
  br i1 %159, label %assert_end72, label %assert_fail71, !dbg !28, !prof !29

assert_fail71:                                    ; preds = %assert_end70
  %160 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %160(i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.30, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %161 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, i64 1, !dbg !28
  %162 = load i64, i64* %161, align 8, !dbg !28, !tbaa !137
  %163 = trunc i64 %162 to i32, !dbg !28
  %164 = icmp eq i32 %163, 800, !dbg !28
  br i1 %164, label %assert_end74, label %assert_fail73, !dbg !28, !prof !29

assert_fail73:                                    ; preds = %assert_end72
  %165 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %165(i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.31, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %166 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape, i64 2, !dbg !28
  %167 = load i64, i64* %166, align 8, !dbg !28, !tbaa !139
  %168 = trunc i64 %167 to i32, !dbg !28
  %169 = icmp eq i32 %168, 16, !dbg !28
  br i1 %169, label %assert_end76, label %assert_fail75, !dbg !28, !prof !29

assert_fail75:                                    ; preds = %assert_end74
  %170 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %170(i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.32, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not178 = icmp eq i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, null, !dbg !28
  br i1 %.not178, label %if_end78, label %if_then77, !dbg !28, !prof !33

if_then77:                                        ; preds = %assert_end76
  %171 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, i64 2, !dbg !28
  %172 = load i64, i64* %171, align 8, !dbg !28, !tbaa !142
  %173 = trunc i64 %172 to i32, !dbg !28
  %174 = icmp eq i32 %173, 1, !dbg !28
  %175 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides, i64 1, !dbg !28
  %176 = load i64, i64* %175, align 8, !dbg !28, !tbaa !152
  %177 = trunc i64 %176 to i32, !dbg !28
  %178 = icmp eq i32 %177, 16, !dbg !28
  %179 = and i1 %174, %178, !dbg !28
  br i1 %179, label %if_end78, label %assert_fail79, !dbg !28, !prof !29

if_end78:                                         ; preds = %if_then77, %assert_end76
  %180 = getelementptr inbounds i8, i8* %LUT, i64 40, !dbg !28
  %181 = bitcast i8* %180 to i64*, !dbg !28
  %182 = load i64, i64* %181, align 8, !dbg !28
  %183 = icmp eq i64 %182, 0, !dbg !28
  br i1 %183, label %assert_end82, label %assert_fail81, !dbg !28, !prof !29

assert_fail79:                                    ; preds = %if_then77
  %184 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %184(i8* getelementptr inbounds ([243 x i8], [243 x i8]* @.str.33, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail81:                                    ; preds = %if_end78
  %185 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %185(i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.34, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end82:                                     ; preds = %if_end78
  %186 = getelementptr inbounds i8, i8* %LUT, i64 8, !dbg !28
  %187 = bitcast i8* %186 to i32*, !dbg !28
  %188 = load i32, i32* %187, align 4, !dbg !28
  %189 = icmp eq i32 %188, 1, !dbg !28
  br i1 %189, label %assert_end84, label %assert_fail83, !dbg !28, !prof !29

assert_fail83:                                    ; preds = %assert_end82
  %190 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %190(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.35, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %191 = getelementptr inbounds i8, i8* %LUT, i64 12, !dbg !28
  %192 = bitcast i8* %191 to i32*, !dbg !28
  %193 = load i32, i32* %192, align 4, !dbg !28
  %194 = icmp eq i32 %dev_id, %193, !dbg !28
  br i1 %194, label %assert_end86, label %assert_fail85, !dbg !28, !prof !29

assert_fail85:                                    ; preds = %assert_end84
  %195 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %195(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.36, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %.not179 = icmp eq i8* %LUT159, null, !dbg !28
  br i1 %.not179, label %assert_fail87, label %assert_end88, !dbg !28, !prof !33

assert_fail87:                                    ; preds = %assert_end86
  %196 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %196(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.37, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %197 = getelementptr inbounds i8, i8* %Scales, i64 20, !dbg !28
  %198 = load i8, i8* %197, align 1, !dbg !28
  %199 = icmp eq i8 %198, 2, !dbg !28
  %200 = getelementptr inbounds i8, i8* %Scales, i64 21, !dbg !28
  %201 = load i8, i8* %200, align 1, !dbg !28
  %202 = icmp eq i8 %201, 16, !dbg !28
  %203 = and i1 %199, %202, !dbg !28
  %204 = getelementptr inbounds i8, i8* %Scales, i64 22, !dbg !28
  %205 = bitcast i8* %204 to i16*, !dbg !28
  %206 = load i16, i16* %205, align 2, !dbg !28
  %207 = icmp eq i16 %206, 1, !dbg !28
  %208 = and i1 %203, %207, !dbg !28
  br i1 %208, label %assert_end90, label %assert_fail89, !dbg !28, !prof !29

assert_fail89:                                    ; preds = %assert_end88
  %209 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %209(i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.38, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %210 = load i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape, align 8, !dbg !28, !tbaa !155
  %211 = trunc i64 %210 to i32, !dbg !28
  %212 = icmp eq i32 %211, 1, !dbg !28
  br i1 %212, label %if_end94, label %assert_fail91, !dbg !28, !prof !29

assert_fail91:                                    ; preds = %assert_end90
  %213 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %213(i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.39, i64 0, i64 0)), !dbg !28
  br label %common.ret

if_end94:                                         ; preds = %assert_end90
  %214 = getelementptr inbounds i8, i8* %Scales, i64 40, !dbg !28
  %215 = bitcast i8* %214 to i64*, !dbg !28
  %216 = load i64, i64* %215, align 8, !dbg !28
  %217 = icmp eq i64 %216, 0, !dbg !28
  br i1 %217, label %assert_end98, label %assert_fail97, !dbg !28, !prof !29

assert_fail97:                                    ; preds = %if_end94
  %218 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %218(i8* getelementptr inbounds ([221 x i8], [221 x i8]* @.str.41, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end98:                                     ; preds = %if_end94
  %219 = getelementptr inbounds i8, i8* %Scales, i64 8, !dbg !28
  %220 = bitcast i8* %219 to i32*, !dbg !28
  %221 = load i32, i32* %220, align 4, !dbg !28
  %222 = icmp eq i32 %221, 1, !dbg !28
  br i1 %222, label %assert_end100, label %assert_fail99, !dbg !28, !prof !29

assert_fail99:                                    ; preds = %assert_end98
  %223 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %223(i8* getelementptr inbounds ([201 x i8], [201 x i8]* @.str.42, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end100:                                    ; preds = %assert_end98
  %224 = getelementptr inbounds i8, i8* %Scales, i64 12, !dbg !28
  %225 = bitcast i8* %224 to i32*, !dbg !28
  %226 = load i32, i32* %225, align 4, !dbg !28
  %227 = icmp eq i32 %dev_id, %226, !dbg !28
  br i1 %227, label %assert_end102, label %assert_fail101, !dbg !28, !prof !29

assert_fail101:                                   ; preds = %assert_end100
  %228 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %228(i8* getelementptr inbounds ([207 x i8], [207 x i8]* @.str.43, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end102:                                    ; preds = %assert_end100
  %.not180 = icmp eq half* %Scales_void_ptr169, null, !dbg !28
  br i1 %.not180, label %assert_fail103, label %assert_end104, !dbg !28, !prof !33

assert_fail103:                                   ; preds = %assert_end102
  %229 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %229(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.44, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %230 = getelementptr inbounds i8, i8* %LUT_Scales, i64 20, !dbg !28
  %231 = load i8, i8* %230, align 1, !dbg !28
  %232 = icmp eq i8 %231, 2, !dbg !28
  %233 = getelementptr inbounds i8, i8* %LUT_Scales, i64 21, !dbg !28
  %234 = load i8, i8* %233, align 1, !dbg !28
  %235 = icmp eq i8 %234, 16, !dbg !28
  %236 = and i1 %232, %235, !dbg !28
  %237 = getelementptr inbounds i8, i8* %LUT_Scales, i64 22, !dbg !28
  %238 = bitcast i8* %237 to i16*, !dbg !28
  %239 = load i16, i16* %238, align 2, !dbg !28
  %240 = icmp eq i16 %239, 1, !dbg !28
  %241 = and i1 %236, %240, !dbg !28
  br i1 %241, label %assert_end106, label %assert_fail105, !dbg !28, !prof !29

assert_fail105:                                   ; preds = %assert_end104
  %242 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %242(i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.45, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  %243 = load i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, align 8, !dbg !28, !tbaa !165
  %244 = trunc i64 %243 to i32, !dbg !28
  %245 = icmp eq i32 %244, 1, !dbg !28
  br i1 %245, label %assert_end108, label %assert_fail107, !dbg !28, !prof !29

assert_fail107:                                   ; preds = %assert_end106
  %246 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %246(i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.46, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %247 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, i64 1, !dbg !28
  %248 = load i64, i64* %247, align 8, !dbg !28, !tbaa !175
  %249 = trunc i64 %248 to i32, !dbg !28
  %250 = icmp eq i32 %249, 50, !dbg !28
  br i1 %250, label %assert_end110, label %assert_fail109, !dbg !28, !prof !29

assert_fail109:                                   ; preds = %assert_end108
  %251 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %251(i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.47, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %.not181 = icmp eq i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, null, !dbg !28
  br i1 %.not181, label %if_end112, label %if_then111, !dbg !28, !prof !33

if_then111:                                       ; preds = %assert_end110
  %252 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, i64 1, !dbg !28
  %253 = load i64, i64* %252, align 8, !dbg !28, !tbaa !177
  %254 = trunc i64 %253 to i32, !dbg !28
  %255 = icmp eq i32 %254, 1, !dbg !28
  br i1 %255, label %if_end112, label %assert_fail113, !dbg !28, !prof !29

if_end112:                                        ; preds = %if_then111, %assert_end110
  %256 = getelementptr inbounds i8, i8* %LUT_Scales, i64 40, !dbg !28
  %257 = bitcast i8* %256 to i64*, !dbg !28
  %258 = load i64, i64* %257, align 8, !dbg !28
  %259 = icmp eq i64 %258, 0, !dbg !28
  br i1 %259, label %assert_end116, label %assert_fail115, !dbg !28, !prof !29

assert_fail113:                                   ; preds = %if_then111
  %260 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %260(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.48, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail115:                                   ; preds = %if_end112
  %261 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %261(i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str.49, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end116:                                    ; preds = %if_end112
  %262 = getelementptr inbounds i8, i8* %LUT_Scales, i64 8, !dbg !28
  %263 = bitcast i8* %262 to i32*, !dbg !28
  %264 = load i32, i32* %263, align 4, !dbg !28
  %265 = icmp eq i32 %264, 1, !dbg !28
  br i1 %265, label %assert_end118, label %assert_fail117, !dbg !28, !prof !29

assert_fail117:                                   ; preds = %assert_end116
  %266 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %266(i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.50, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end118:                                    ; preds = %assert_end116
  %267 = getelementptr inbounds i8, i8* %LUT_Scales, i64 12, !dbg !28
  %268 = bitcast i8* %267 to i32*, !dbg !28
  %269 = load i32, i32* %268, align 4, !dbg !28
  %270 = icmp eq i32 %dev_id, %269, !dbg !28
  br i1 %270, label %assert_end120, label %assert_fail119, !dbg !28, !prof !29

assert_fail119:                                   ; preds = %assert_end118
  %271 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %271(i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.51, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end120:                                    ; preds = %assert_end118
  %.not182 = icmp eq half* %LUT_Scales_void_ptr171, null, !dbg !28
  br i1 %.not182, label %assert_fail121, label %assert_end122, !dbg !28, !prof !33

assert_fail121:                                   ; preds = %assert_end120
  %272 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %272(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.52, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end122:                                    ; preds = %assert_end120
  %273 = getelementptr inbounds i8, i8* %LUT_Biases, i64 20, !dbg !28
  %274 = load i8, i8* %273, align 1, !dbg !28
  %275 = icmp eq i8 %274, 2, !dbg !28
  %276 = getelementptr inbounds i8, i8* %LUT_Biases, i64 21, !dbg !28
  %277 = load i8, i8* %276, align 1, !dbg !28
  %278 = icmp eq i8 %277, 16, !dbg !28
  %279 = and i1 %275, %278, !dbg !28
  %280 = getelementptr inbounds i8, i8* %LUT_Biases, i64 22, !dbg !28
  %281 = bitcast i8* %280 to i16*, !dbg !28
  %282 = load i16, i16* %281, align 2, !dbg !28
  %283 = icmp eq i16 %282, 1, !dbg !28
  %284 = and i1 %279, %283, !dbg !28
  br i1 %284, label %assert_end124, label %assert_fail123, !dbg !28, !prof !29

assert_fail123:                                   ; preds = %assert_end122
  %285 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %285(i8* getelementptr inbounds ([278 x i8], [278 x i8]* @.str.53, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end124:                                    ; preds = %assert_end122
  %286 = load i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, align 8, !dbg !28, !tbaa !187
  %287 = trunc i64 %286 to i32, !dbg !28
  %288 = icmp eq i32 %287, 1, !dbg !28
  br i1 %288, label %assert_end126, label %assert_fail125, !dbg !28, !prof !29

assert_fail125:                                   ; preds = %assert_end124
  %289 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %289(i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.54, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %290 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, i64 1, !dbg !28
  %291 = load i64, i64* %290, align 8, !dbg !28, !tbaa !197
  %292 = trunc i64 %291 to i32, !dbg !28
  %293 = icmp eq i32 %292, 50, !dbg !28
  br i1 %293, label %assert_end128, label %assert_fail127, !dbg !28, !prof !29

assert_fail127:                                   ; preds = %assert_end126
  %294 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %294(i8* getelementptr inbounds ([268 x i8], [268 x i8]* @.str.55, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %.not183 = icmp eq i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, null, !dbg !28
  br i1 %.not183, label %if_end130, label %if_then129, !dbg !28, !prof !33

if_then129:                                       ; preds = %assert_end128
  %295 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, i64 1, !dbg !28
  %296 = load i64, i64* %295, align 8, !dbg !28, !tbaa !199
  %297 = trunc i64 %296 to i32, !dbg !28
  %298 = icmp eq i32 %297, 1, !dbg !28
  br i1 %298, label %if_end130, label %assert_fail131, !dbg !28, !prof !29

if_end130:                                        ; preds = %if_then129, %assert_end128
  %299 = getelementptr inbounds i8, i8* %LUT_Biases, i64 40, !dbg !28
  %300 = bitcast i8* %299 to i64*, !dbg !28
  %301 = load i64, i64* %300, align 8, !dbg !28
  %302 = icmp eq i64 %301, 0, !dbg !28
  br i1 %302, label %assert_end134, label %assert_fail133, !dbg !28, !prof !29

assert_fail131:                                   ; preds = %if_then129
  %303 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %303(i8* getelementptr inbounds ([179 x i8], [179 x i8]* @.str.56, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail133:                                   ; preds = %if_end130
  %304 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %304(i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str.57, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end134:                                    ; preds = %if_end130
  %305 = getelementptr inbounds i8, i8* %LUT_Biases, i64 8, !dbg !28
  %306 = bitcast i8* %305 to i32*, !dbg !28
  %307 = load i32, i32* %306, align 4, !dbg !28
  %308 = icmp eq i32 %307, 1, !dbg !28
  br i1 %308, label %assert_end136, label %assert_fail135, !dbg !28, !prof !29

assert_fail135:                                   ; preds = %assert_end134
  %309 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %309(i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str.58, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end136:                                    ; preds = %assert_end134
  %310 = getelementptr inbounds i8, i8* %LUT_Biases, i64 12, !dbg !28
  %311 = bitcast i8* %310 to i32*, !dbg !28
  %312 = load i32, i32* %311, align 4, !dbg !28
  %313 = icmp eq i32 %dev_id, %312, !dbg !28
  br i1 %313, label %assert_end138, label %assert_fail137, !dbg !28, !prof !29

assert_fail137:                                   ; preds = %assert_end136
  %314 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %314(i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.59, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end138:                                    ; preds = %assert_end136
  %.not184 = icmp eq half* %LUT_Biases_void_ptr173, null, !dbg !28
  br i1 %.not184, label %assert_fail139, label %assert_end140, !dbg !28, !prof !33

assert_fail139:                                   ; preds = %assert_end138
  %315 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %315(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.60, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end140:                                    ; preds = %assert_end138
  %316 = getelementptr inbounds i8, i8* %C, i64 20, !dbg !28
  %317 = load i8, i8* %316, align 1, !dbg !28
  %318 = icmp eq i8 %317, 2, !dbg !28
  %319 = getelementptr inbounds i8, i8* %C, i64 21, !dbg !28
  %320 = load i8, i8* %319, align 1, !dbg !28
  %321 = icmp eq i8 %320, 16, !dbg !28
  %322 = and i1 %318, %321, !dbg !28
  %323 = getelementptr inbounds i8, i8* %C, i64 22, !dbg !28
  %324 = bitcast i8* %323 to i16*, !dbg !28
  %325 = load i16, i16* %324, align 2, !dbg !28
  %326 = icmp eq i16 %325, 1, !dbg !28
  %327 = and i1 %322, %326, !dbg !28
  br i1 %327, label %assert_end142, label %assert_fail141, !dbg !28, !prof !29

assert_fail141:                                   ; preds = %assert_end140
  %328 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %328(i8* getelementptr inbounds ([242 x i8], [242 x i8]* @.str.61, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end142:                                    ; preds = %assert_end140
  %329 = load i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape, align 8, !dbg !28, !tbaa !209
  %330 = trunc i64 %329 to i32, !dbg !28
  %331 = icmp eq i32 %330, 1, !dbg !28
  br i1 %331, label %assert_end144, label %assert_fail143, !dbg !28, !prof !29

assert_fail143:                                   ; preds = %assert_end142
  %332 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %332(i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.62, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %333 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape, i64 1, !dbg !28
  %334 = load i64, i64* %333, align 8, !dbg !28, !tbaa !219
  %335 = trunc i64 %334 to i32, !dbg !28
  %336 = icmp eq i32 %335, 3200, !dbg !28
  br i1 %336, label %assert_end146, label %assert_fail145, !dbg !28, !prof !29

assert_fail145:                                   ; preds = %assert_end144
  %337 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %337(i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.63, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %.not185 = icmp eq i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides, null, !dbg !28
  br i1 %.not185, label %if_end148, label %if_then147, !dbg !28, !prof !33

if_then147:                                       ; preds = %assert_end146
  %338 = getelementptr inbounds i64, i64* %qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides, i64 1, !dbg !28
  %339 = load i64, i64* %338, align 8, !dbg !28, !tbaa !221
  %340 = trunc i64 %339 to i32, !dbg !28
  %341 = icmp eq i32 %340, 1, !dbg !28
  br i1 %341, label %if_end148, label %assert_fail149, !dbg !28, !prof !29

if_end148:                                        ; preds = %if_then147, %assert_end146
  %342 = getelementptr inbounds i8, i8* %C, i64 40, !dbg !28
  %343 = bitcast i8* %342 to i64*, !dbg !28
  %344 = load i64, i64* %343, align 8, !dbg !28
  %345 = icmp eq i64 %344, 0, !dbg !28
  br i1 %345, label %assert_end152, label %assert_fail151, !dbg !28, !prof !29

assert_fail149:                                   ; preds = %if_then147
  %346 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %346(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.64, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail151:                                   ; preds = %if_end148
  %347 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %347(i8* getelementptr inbounds ([206 x i8], [206 x i8]* @.str.65, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end152:                                    ; preds = %if_end148
  %348 = getelementptr inbounds i8, i8* %C, i64 8, !dbg !28
  %349 = bitcast i8* %348 to i32*, !dbg !28
  %350 = load i32, i32* %349, align 4, !dbg !28
  %351 = icmp eq i32 %350, 1, !dbg !28
  br i1 %351, label %assert_end154, label %assert_fail153, !dbg !28, !prof !29

assert_fail153:                                   ; preds = %assert_end152
  %352 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %352(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.66, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end154:                                    ; preds = %assert_end152
  %353 = getelementptr inbounds i8, i8* %C, i64 12, !dbg !28
  %354 = bitcast i8* %353 to i32*, !dbg !28
  %355 = load i32, i32* %354, align 4, !dbg !28
  %356 = icmp eq i32 %dev_id, %355, !dbg !28
  br i1 %356, label %assert_end156, label %assert_fail155, !dbg !28, !prof !29

assert_fail155:                                   ; preds = %assert_end154
  %357 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %357(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.67, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end156:                                    ; preds = %assert_end154
  %.not186 = icmp eq half* %C_void_ptr175, null, !dbg !28
  br i1 %.not186, label %assert_fail157, label %assert_end158, !dbg !28, !prof !33

assert_fail157:                                   ; preds = %assert_end156
  %358 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %358(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.68, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end158:                                    ; preds = %assert_end156
  %359 = tail call fastcc i32 @qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_(i8* nonnull %LUT159, i8* nonnull %A160, half* nonnull %Scales_void_ptr169, half* nonnull %LUT_Scales_void_ptr171, half* nonnull %LUT_Biases_void_ptr173, half* nonnull %C_void_ptr175), !dbg !28
  br label %common.ret
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_(i8* noalias align 64 %LUT, i8* noalias align 64 %A, half* noalias align 64 %Scales, half* noalias align 64 %LUT_Scales, half* noalias align 64 %LUT_Biases, half* noalias align 64 %C) unnamed_addr #3 !dbg !231 {
entry:
  call void @llvm.dbg.value(metadata i8* %LUT, metadata !235, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i8* %A, metadata !236, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata half* %Scales, metadata !237, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata half* %LUT_Scales, metadata !238, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata half* %LUT_Biases, metadata !239, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata half* %C, metadata !240, metadata !DIExpression()), !dbg !241
  %0 = alloca %closure_loop_parallel_m.outer, align 8, !dbg !241
  %1 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 0, !dbg !241
  store i8* %LUT, i8** %1, align 8, !dbg !241
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 1, !dbg !241
  store i8* %A, i8** %2, align 8, !dbg !241
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 2, !dbg !241
  store half* %Scales, half** %3, align 8, !dbg !241
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 3, !dbg !241
  store half* %LUT_Scales, half** %4, align 8, !dbg !241
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 4, !dbg !241
  store half* %LUT_Biases, half** %5, align 8, !dbg !241
  %6 = getelementptr inbounds %closure_loop_parallel_m.outer, %closure_loop_parallel_m.outer* %0, i64 0, i32 5, !dbg !241
  store half* %C, half** %6, align 8, !dbg !241
  %7 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !dbg !241, !tbaa !30
  %8 = bitcast %closure_loop_parallel_m.outer* %0 to i8*, !dbg !241
  %9 = call i32 %7(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %8, i32 0), !dbg !241
  ret i32 %9, !dbg !241
}

; Function Attrs: nofree nosync nounwind
define private i32 @__tvm_parallel_lambda(i32 %task_id, %0* nocapture readonly %0, i8* nocapture readonly %1) #4 {
parallel_closure_entry:
  %C.global1 = alloca [64 x half], align 16, !dbg !241
  %CBits2 = alloca [128 x half], align 16, !dbg !241
  %2 = bitcast i8* %1 to i8**, !dbg !241
  %LUT = load i8*, i8** %2, align 8, !dbg !241
  %3 = getelementptr inbounds i8, i8* %1, i64 8, !dbg !241
  %4 = bitcast i8* %3 to i8**, !dbg !241
  %A = load i8*, i8** %4, align 8, !dbg !241
  %5 = getelementptr inbounds i8, i8* %1, i64 16, !dbg !241
  %6 = bitcast i8* %5 to half**, !dbg !241
  %Scales34 = load half*, half** %6, align 8, !dbg !241
  %7 = getelementptr inbounds i8, i8* %1, i64 24, !dbg !241
  %8 = bitcast i8* %7 to half**, !dbg !241
  %LUT_Scales = load half*, half** %8, align 8, !dbg !241
  %9 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !241
  %10 = bitcast i8* %9 to half**, !dbg !241
  %LUT_Biases = load half*, half** %10, align 8, !dbg !241
  %11 = getelementptr inbounds i8, i8* %1, i64 40, !dbg !241
  %12 = bitcast i8* %11 to half**, !dbg !241
  %C = load half*, half** %12, align 8, !dbg !241
  %13 = getelementptr inbounds %0, %0* %0, i64 0, i32 1, !dbg !241
  %num_task = load i32, i32* %13, align 4, !dbg !241
  %14 = add nsw i32 %num_task, 49, !dbg !241
  %15 = sdiv i32 %14, %num_task, !dbg !241
  %16 = mul nsw i32 %15, %task_id, !dbg !241
  %17 = icmp slt i32 %16, 50, !dbg !241
  %18 = select i1 %17, i32 %16, i32 50, !dbg !241
  %19 = add nsw i32 %task_id, 1, !dbg !241
  %20 = mul nsw i32 %15, %19, !dbg !241
  %21 = icmp slt i32 %20, 50, !dbg !241
  %22 = select i1 %21, i32 %20, i32 50, !dbg !241
  call void @llvm.dbg.declare(metadata i32 %18, metadata !242, metadata !DIExpression()), !dbg !241
  %23 = icmp slt i32 %18, %22, !dbg !241
  br i1 %23, label %for_body_m.outer.lr.ph, label %for_end_m.outer, !dbg !241, !prof !29

for_body_m.outer.lr.ph:                           ; preds = %parallel_closure_entry
  %24 = bitcast [128 x half]* %CBits2 to i8*
  %25 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 0, !dbg !241
  %26 = sext i32 %18 to i64, !dbg !241
  %wide.trip.count = sext i32 %22 to i64, !dbg !241
  %27 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 1
  %28 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 2
  %29 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 3
  %30 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 4
  %31 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 5
  %32 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 6
  %33 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 7
  %34 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 8
  %35 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 9
  %36 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 10
  %37 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 11
  %38 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 12
  %39 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 13
  %40 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 14
  %41 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 15
  %42 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 16
  %43 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 17
  %44 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 18
  %45 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 19
  %46 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 20
  %47 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 21
  %48 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 22
  %49 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 23
  %50 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 24
  %51 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 25
  %52 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 26
  %53 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 27
  %54 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 28
  %55 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 29
  %56 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 30
  %57 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 31
  %58 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 32
  %59 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 33
  %60 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 34
  %61 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 35
  %62 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 36
  %63 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 37
  %64 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 38
  %65 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 39
  %66 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 40
  %67 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 41
  %68 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 42
  %69 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 43
  %70 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 44
  %71 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 45
  %72 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 46
  %73 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 47
  %74 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 48
  %75 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 49
  %76 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 50
  %77 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 51
  %78 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 52
  %79 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 53
  %80 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 54
  %81 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 55
  %82 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 56
  %83 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 57
  %84 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 58
  %85 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 59
  %86 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 60
  %87 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 61
  %88 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 62
  %89 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 63
  %90 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 8, !dbg !241
  %91 = bitcast [128 x half]* %CBits2 to <8 x half>*, !dbg !241
  %92 = bitcast half* %90 to <8 x half>*
  %93 = bitcast [64 x half]* %C.global1 to <8 x half>*
  %94 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 16
  %95 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 24
  %96 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 8
  %97 = bitcast half* %94 to <8 x half>*
  %98 = bitcast half* %95 to <8 x half>*
  %99 = bitcast half* %96 to <8 x half>*
  %100 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 32
  %101 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 40
  %102 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 16
  %103 = bitcast half* %100 to <8 x half>*
  %104 = bitcast half* %101 to <8 x half>*
  %105 = bitcast half* %102 to <8 x half>*
  %106 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 48
  %107 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 56
  %108 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 24
  %109 = bitcast half* %106 to <8 x half>*
  %110 = bitcast half* %107 to <8 x half>*
  %111 = bitcast half* %108 to <8 x half>*
  %112 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 64
  %113 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 72
  %114 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 32
  %115 = bitcast half* %112 to <8 x half>*
  %116 = bitcast half* %113 to <8 x half>*
  %117 = bitcast half* %114 to <8 x half>*
  %118 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 80
  %119 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 88
  %120 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 40
  %121 = bitcast half* %118 to <8 x half>*
  %122 = bitcast half* %119 to <8 x half>*
  %123 = bitcast half* %120 to <8 x half>*
  %124 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 96
  %125 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 104
  %126 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 48
  %127 = bitcast half* %124 to <8 x half>*
  %128 = bitcast half* %125 to <8 x half>*
  %129 = bitcast half* %126 to <8 x half>*
  %130 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 112
  %131 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 120
  %132 = getelementptr inbounds [64 x half], [64 x half]* %C.global1, i64 0, i64 56
  %133 = bitcast half* %130 to <8 x half>*
  %134 = bitcast half* %131 to <8 x half>*
  %135 = bitcast half* %132 to <8 x half>*
  br label %for_body_m.outer, !dbg !241

for_body_m.outer:                                 ; preds = %for_body_m.outer.lr.ph, %for_body_m.c.outer
  %indvars.iv20 = phi i64 [ %26, %for_body_m.outer.lr.ph ], [ %indvars.iv.next21, %for_body_m.c.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv20, metadata !242, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata [128 x half]* %CBits2, metadata !243, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata [64 x half]* %C.global1, metadata !244, metadata !DIExpression()), !dbg !241
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(256) %24, i8 0, i64 256, i1 false) #10, !dbg !241
  %136 = mul nsw i64 %indvars.iv20, 51200
  call void @llvm.dbg.declare(metadata i32 0, metadata !245, metadata !DIExpression()), !dbg !241
  %137 = load half, half* %Scales34, align 2, !tbaa !246
  %138 = insertelement <8 x half> poison, half %137, i64 0
  %139 = shufflevector <8 x half> %138, <8 x half> poison, <8 x i32> zeroinitializer
  br label %for_body_k.outer, !dbg !241

for_end_m.outer:                                  ; preds = %for_body_m.c.outer, %parallel_closure_entry
  ret i32 0, !dbg !241

for_body_k.outer:                                 ; preds = %for_body_m.outer, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  %indvars.iv = phi i64 [ 0, %for_body_m.outer ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !245, metadata !DIExpression()), !dbg !241
  %140 = shl nuw nsw i64 %indvars.iv, 8, !dbg !241
  %141 = getelementptr inbounds i8, i8* %LUT, i64 %140, !dbg !241
  %142 = shl nuw nsw i64 %indvars.iv, 10, !dbg !241
  %143 = add nsw i64 %142, %136, !dbg !241
  %144 = getelementptr inbounds i8, i8* %A, i64 %143, !dbg !241
  %145 = getelementptr inbounds half, half* %LUT_Scales, i64 %indvars.iv, !dbg !241
  %146 = getelementptr inbounds half, half* %LUT_Biases, i64 %indvars.iv, !dbg !241
  %147 = bitcast i8* %141 to <16 x i8>*, !dbg !241
  %148 = load <16 x i8>, <16 x i8>* %147, align 1, !dbg !241
  %149 = getelementptr inbounds i8, i8* %141, i64 16, !dbg !241
  %150 = bitcast i8* %149 to <16 x i8>*, !dbg !241
  %151 = load <16 x i8>, <16 x i8>* %150, align 1, !dbg !241
  %152 = getelementptr inbounds i8, i8* %141, i64 32, !dbg !241
  %153 = bitcast i8* %152 to <16 x i8>*, !dbg !241
  %154 = load <16 x i8>, <16 x i8>* %153, align 1, !dbg !241
  %155 = getelementptr inbounds i8, i8* %141, i64 48, !dbg !241
  %156 = bitcast i8* %155 to <16 x i8>*, !dbg !241
  %157 = load <16 x i8>, <16 x i8>* %156, align 1, !dbg !241
  %158 = getelementptr inbounds i8, i8* %141, i64 64, !dbg !241
  %159 = bitcast i8* %158 to <16 x i8>*, !dbg !241
  %160 = load <16 x i8>, <16 x i8>* %159, align 1, !dbg !241
  %161 = getelementptr inbounds i8, i8* %141, i64 80, !dbg !241
  %162 = bitcast i8* %161 to <16 x i8>*, !dbg !241
  %163 = load <16 x i8>, <16 x i8>* %162, align 1, !dbg !241
  %164 = getelementptr inbounds i8, i8* %141, i64 96, !dbg !241
  %165 = bitcast i8* %164 to <16 x i8>*, !dbg !241
  %166 = load <16 x i8>, <16 x i8>* %165, align 1, !dbg !241
  %167 = getelementptr inbounds i8, i8* %141, i64 112, !dbg !241
  %168 = bitcast i8* %167 to <16 x i8>*, !dbg !241
  %169 = load <16 x i8>, <16 x i8>* %168, align 1, !dbg !241
  %170 = getelementptr inbounds i8, i8* %141, i64 128, !dbg !241
  %171 = bitcast i8* %170 to <16 x i8>*, !dbg !241
  %172 = load <16 x i8>, <16 x i8>* %171, align 1, !dbg !241
  %173 = getelementptr inbounds i8, i8* %141, i64 144, !dbg !241
  %174 = bitcast i8* %173 to <16 x i8>*, !dbg !241
  %175 = load <16 x i8>, <16 x i8>* %174, align 1, !dbg !241
  %176 = getelementptr inbounds i8, i8* %141, i64 160, !dbg !241
  %177 = bitcast i8* %176 to <16 x i8>*, !dbg !241
  %178 = load <16 x i8>, <16 x i8>* %177, align 1, !dbg !241
  %179 = getelementptr inbounds i8, i8* %141, i64 176, !dbg !241
  %180 = bitcast i8* %179 to <16 x i8>*, !dbg !241
  %181 = load <16 x i8>, <16 x i8>* %180, align 1, !dbg !241
  %182 = getelementptr inbounds i8, i8* %141, i64 192, !dbg !241
  %183 = bitcast i8* %182 to <16 x i8>*, !dbg !241
  %184 = load <16 x i8>, <16 x i8>* %183, align 1, !dbg !241
  %185 = getelementptr inbounds i8, i8* %141, i64 208, !dbg !241
  %186 = bitcast i8* %185 to <16 x i8>*, !dbg !241
  %187 = load <16 x i8>, <16 x i8>* %186, align 1, !dbg !241
  %188 = getelementptr inbounds i8, i8* %141, i64 224, !dbg !241
  %189 = bitcast i8* %188 to <16 x i8>*, !dbg !241
  %190 = load <16 x i8>, <16 x i8>* %189, align 1, !dbg !241
  %191 = getelementptr inbounds i8, i8* %141, i64 240, !dbg !241
  %192 = bitcast i8* %191 to <16 x i8>*, !dbg !241
  %193 = load <16 x i8>, <16 x i8>* %192, align 1, !dbg !241
  %194 = load half, half* %145, align 2, !tbaa !246
  %195 = load half, half* %146, align 2, !tbaa !246
  %196 = insertelement <8 x half> poison, half %194, i64 0
  %197 = insertelement <8 x half> poison, half %195, i64 0
  %198 = shufflevector <8 x half> %196, <8 x half> poison, <8 x i32> zeroinitializer
  %199 = shufflevector <8 x half> %197, <8 x half> poison, <8 x i32> zeroinitializer
  br label %200, !dbg !241

200:                                              ; preds = %200, %for_body_k.outer
  %201 = phi i64 [ 0, %for_body_k.outer ], [ %528, %200 ], !dbg !241
  %202 = shl nuw nsw i64 %201, 4, !dbg !241
  %203 = getelementptr inbounds i8, i8* %144, i64 %202, !dbg !241
  %204 = bitcast i8* %203 to <16 x i8>*, !dbg !241
  %205 = load <16 x i8>, <16 x i8>* %204, align 1, !dbg !241
  %206 = lshr <16 x i8> %205, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %207 = and <16 x i8> %205, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %208 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %148, <16 x i8> %207) #10, !dbg !241
  %209 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %148, <16 x i8> %206) #10, !dbg !241
  %210 = getelementptr inbounds i8, i8* %203, i64 16, !dbg !241
  %211 = bitcast i8* %210 to <16 x i8>*, !dbg !241
  %212 = load <16 x i8>, <16 x i8>* %211, align 1, !dbg !241
  %213 = lshr <16 x i8> %212, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %214 = and <16 x i8> %212, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %215 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %151, <16 x i8> %214) #10, !dbg !241
  %216 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %151, <16 x i8> %213) #10, !dbg !241
  %217 = shufflevector <16 x i8> %208, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %218 = shufflevector <16 x i8> %215, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %219 = sext <8 x i8> %217 to <8 x i16>, !dbg !241
  %220 = sext <8 x i8> %218 to <8 x i16>, !dbg !241
  %221 = shufflevector <16 x i8> %208, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %222 = sext <8 x i8> %221 to <8 x i16>, !dbg !241
  %223 = shufflevector <16 x i8> %215, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %224 = sext <8 x i8> %223 to <8 x i16>, !dbg !241
  %225 = add nsw <8 x i16> %220, %219, !dbg !241
  %226 = add nsw <8 x i16> %224, %222, !dbg !241
  %227 = shufflevector <16 x i8> %209, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %228 = shufflevector <16 x i8> %216, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %229 = sext <8 x i8> %227 to <8 x i16>, !dbg !241
  %230 = sext <8 x i8> %228 to <8 x i16>, !dbg !241
  %231 = shufflevector <16 x i8> %209, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %232 = sext <8 x i8> %231 to <8 x i16>, !dbg !241
  %233 = shufflevector <16 x i8> %216, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %234 = sext <8 x i8> %233 to <8 x i16>, !dbg !241
  %235 = getelementptr inbounds i8, i8* %203, i64 32, !dbg !241
  %236 = bitcast i8* %235 to <16 x i8>*, !dbg !241
  %237 = load <16 x i8>, <16 x i8>* %236, align 1, !dbg !241
  %238 = lshr <16 x i8> %237, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %239 = and <16 x i8> %237, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %240 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %154, <16 x i8> %239) #10, !dbg !241
  %241 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %154, <16 x i8> %238) #10, !dbg !241
  %242 = getelementptr inbounds i8, i8* %203, i64 48, !dbg !241
  %243 = bitcast i8* %242 to <16 x i8>*, !dbg !241
  %244 = load <16 x i8>, <16 x i8>* %243, align 1, !dbg !241
  %245 = lshr <16 x i8> %244, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %246 = and <16 x i8> %244, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %247 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %157, <16 x i8> %246) #10, !dbg !241
  %248 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %157, <16 x i8> %245) #10, !dbg !241
  %249 = shufflevector <16 x i8> %248, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %250 = sext <8 x i8> %249 to <8 x i16>, !dbg !241
  %251 = shufflevector <16 x i8> %241, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %252 = sext <8 x i8> %251 to <8 x i16>, !dbg !241
  %253 = shufflevector <16 x i8> %248, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %254 = sext <8 x i8> %253 to <8 x i16>, !dbg !241
  %255 = shufflevector <16 x i8> %241, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %256 = sext <8 x i8> %255 to <8 x i16>, !dbg !241
  %257 = shufflevector <16 x i8> %240, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %258 = sext <8 x i8> %257 to <8 x i16>, !dbg !241
  %259 = add nsw <8 x i16> %226, %258, !dbg !241
  %260 = shufflevector <16 x i8> %247, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %261 = sext <8 x i8> %260 to <8 x i16>, !dbg !241
  %262 = add nsw <8 x i16> %259, %261, !dbg !241
  %263 = shufflevector <16 x i8> %240, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %264 = sext <8 x i8> %263 to <8 x i16>, !dbg !241
  %265 = add nsw <8 x i16> %225, %264, !dbg !241
  %266 = shufflevector <16 x i8> %247, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %267 = sext <8 x i8> %266 to <8 x i16>, !dbg !241
  %268 = add nsw <8 x i16> %265, %267, !dbg !241
  %269 = getelementptr inbounds i8, i8* %203, i64 64, !dbg !241
  %270 = bitcast i8* %269 to <16 x i8>*, !dbg !241
  %271 = load <16 x i8>, <16 x i8>* %270, align 1, !dbg !241
  %272 = lshr <16 x i8> %271, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %273 = and <16 x i8> %271, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %274 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %160, <16 x i8> %273) #10, !dbg !241
  %275 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %160, <16 x i8> %272) #10, !dbg !241
  %276 = getelementptr inbounds i8, i8* %203, i64 80, !dbg !241
  %277 = bitcast i8* %276 to <16 x i8>*, !dbg !241
  %278 = load <16 x i8>, <16 x i8>* %277, align 1, !dbg !241
  %279 = lshr <16 x i8> %278, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %280 = and <16 x i8> %278, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %281 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %163, <16 x i8> %280) #10, !dbg !241
  %282 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %163, <16 x i8> %279) #10, !dbg !241
  %283 = shufflevector <16 x i8> %282, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %284 = sext <8 x i8> %283 to <8 x i16>, !dbg !241
  %285 = shufflevector <16 x i8> %275, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %286 = sext <8 x i8> %285 to <8 x i16>, !dbg !241
  %287 = shufflevector <16 x i8> %282, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %288 = sext <8 x i8> %287 to <8 x i16>, !dbg !241
  %289 = shufflevector <16 x i8> %275, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %290 = sext <8 x i8> %289 to <8 x i16>, !dbg !241
  %291 = shufflevector <16 x i8> %274, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %292 = sext <8 x i8> %291 to <8 x i16>, !dbg !241
  %293 = add nsw <8 x i16> %262, %292, !dbg !241
  %294 = shufflevector <16 x i8> %281, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %295 = sext <8 x i8> %294 to <8 x i16>, !dbg !241
  %296 = add nsw <8 x i16> %293, %295, !dbg !241
  %297 = shufflevector <16 x i8> %274, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %298 = sext <8 x i8> %297 to <8 x i16>, !dbg !241
  %299 = add nsw <8 x i16> %268, %298, !dbg !241
  %300 = shufflevector <16 x i8> %281, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %301 = sext <8 x i8> %300 to <8 x i16>, !dbg !241
  %302 = add nsw <8 x i16> %299, %301, !dbg !241
  %303 = getelementptr inbounds i8, i8* %203, i64 96, !dbg !241
  %304 = bitcast i8* %303 to <16 x i8>*, !dbg !241
  %305 = load <16 x i8>, <16 x i8>* %304, align 1, !dbg !241
  %306 = lshr <16 x i8> %305, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %307 = and <16 x i8> %305, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %308 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %166, <16 x i8> %307) #10, !dbg !241
  %309 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %166, <16 x i8> %306) #10, !dbg !241
  %310 = getelementptr inbounds i8, i8* %203, i64 112, !dbg !241
  %311 = bitcast i8* %310 to <16 x i8>*, !dbg !241
  %312 = load <16 x i8>, <16 x i8>* %311, align 1, !dbg !241
  %313 = lshr <16 x i8> %312, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %314 = and <16 x i8> %312, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %315 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %169, <16 x i8> %314) #10, !dbg !241
  %316 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %169, <16 x i8> %313) #10, !dbg !241
  %317 = shufflevector <16 x i8> %316, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %318 = sext <8 x i8> %317 to <8 x i16>, !dbg !241
  %319 = shufflevector <16 x i8> %309, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %320 = sext <8 x i8> %319 to <8 x i16>, !dbg !241
  %321 = shufflevector <16 x i8> %316, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %322 = sext <8 x i8> %321 to <8 x i16>, !dbg !241
  %323 = shufflevector <16 x i8> %309, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %324 = sext <8 x i8> %323 to <8 x i16>, !dbg !241
  %325 = shufflevector <16 x i8> %308, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %326 = sext <8 x i8> %325 to <8 x i16>, !dbg !241
  %327 = add nsw <8 x i16> %296, %326, !dbg !241
  %328 = shufflevector <16 x i8> %315, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %329 = sext <8 x i8> %328 to <8 x i16>, !dbg !241
  %330 = add <8 x i16> %327, %329, !dbg !241
  %331 = shufflevector <16 x i8> %308, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %332 = sext <8 x i8> %331 to <8 x i16>, !dbg !241
  %333 = add nsw <8 x i16> %302, %332, !dbg !241
  %334 = shufflevector <16 x i8> %315, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %335 = sext <8 x i8> %334 to <8 x i16>, !dbg !241
  %336 = add <8 x i16> %333, %335, !dbg !241
  %337 = getelementptr inbounds i8, i8* %203, i64 128, !dbg !241
  %338 = bitcast i8* %337 to <16 x i8>*, !dbg !241
  %339 = load <16 x i8>, <16 x i8>* %338, align 1, !dbg !241
  %340 = lshr <16 x i8> %339, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %341 = and <16 x i8> %339, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %342 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %172, <16 x i8> %341) #10, !dbg !241
  %343 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %172, <16 x i8> %340) #10, !dbg !241
  %344 = getelementptr inbounds i8, i8* %203, i64 144, !dbg !241
  %345 = bitcast i8* %344 to <16 x i8>*, !dbg !241
  %346 = load <16 x i8>, <16 x i8>* %345, align 1, !dbg !241
  %347 = lshr <16 x i8> %346, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %348 = and <16 x i8> %346, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %349 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %175, <16 x i8> %348) #10, !dbg !241
  %350 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %175, <16 x i8> %347) #10, !dbg !241
  %351 = shufflevector <16 x i8> %350, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %352 = sext <8 x i8> %351 to <8 x i16>, !dbg !241
  %353 = shufflevector <16 x i8> %343, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %354 = sext <8 x i8> %353 to <8 x i16>, !dbg !241
  %355 = shufflevector <16 x i8> %350, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %356 = sext <8 x i8> %355 to <8 x i16>, !dbg !241
  %357 = shufflevector <16 x i8> %343, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %358 = sext <8 x i8> %357 to <8 x i16>, !dbg !241
  %359 = shufflevector <16 x i8> %342, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %360 = sext <8 x i8> %359 to <8 x i16>, !dbg !241
  %361 = add <8 x i16> %330, %360, !dbg !241
  %362 = shufflevector <16 x i8> %349, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %363 = sext <8 x i8> %362 to <8 x i16>, !dbg !241
  %364 = add <8 x i16> %361, %363, !dbg !241
  %365 = shufflevector <16 x i8> %342, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %366 = sext <8 x i8> %365 to <8 x i16>, !dbg !241
  %367 = add <8 x i16> %336, %366, !dbg !241
  %368 = shufflevector <16 x i8> %349, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %369 = sext <8 x i8> %368 to <8 x i16>, !dbg !241
  %370 = add <8 x i16> %367, %369, !dbg !241
  %371 = getelementptr inbounds i8, i8* %203, i64 160, !dbg !241
  %372 = bitcast i8* %371 to <16 x i8>*, !dbg !241
  %373 = load <16 x i8>, <16 x i8>* %372, align 1, !dbg !241
  %374 = lshr <16 x i8> %373, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %375 = and <16 x i8> %373, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %376 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %178, <16 x i8> %375) #10, !dbg !241
  %377 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %178, <16 x i8> %374) #10, !dbg !241
  %378 = getelementptr inbounds i8, i8* %203, i64 176, !dbg !241
  %379 = bitcast i8* %378 to <16 x i8>*, !dbg !241
  %380 = load <16 x i8>, <16 x i8>* %379, align 1, !dbg !241
  %381 = lshr <16 x i8> %380, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %382 = and <16 x i8> %380, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %383 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %181, <16 x i8> %382) #10, !dbg !241
  %384 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %181, <16 x i8> %381) #10, !dbg !241
  %385 = shufflevector <16 x i8> %384, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %386 = sext <8 x i8> %385 to <8 x i16>, !dbg !241
  %387 = shufflevector <16 x i8> %377, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %388 = sext <8 x i8> %387 to <8 x i16>, !dbg !241
  %389 = shufflevector <16 x i8> %384, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %390 = sext <8 x i8> %389 to <8 x i16>, !dbg !241
  %391 = shufflevector <16 x i8> %377, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %392 = sext <8 x i8> %391 to <8 x i16>, !dbg !241
  %393 = shufflevector <16 x i8> %376, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %394 = sext <8 x i8> %393 to <8 x i16>, !dbg !241
  %395 = add <8 x i16> %364, %394, !dbg !241
  %396 = shufflevector <16 x i8> %383, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %397 = sext <8 x i8> %396 to <8 x i16>, !dbg !241
  %398 = add <8 x i16> %395, %397, !dbg !241
  %399 = shufflevector <16 x i8> %376, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %400 = sext <8 x i8> %399 to <8 x i16>, !dbg !241
  %401 = add <8 x i16> %370, %400, !dbg !241
  %402 = shufflevector <16 x i8> %383, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %403 = sext <8 x i8> %402 to <8 x i16>, !dbg !241
  %404 = add <8 x i16> %401, %403, !dbg !241
  %405 = getelementptr inbounds i8, i8* %203, i64 192, !dbg !241
  %406 = bitcast i8* %405 to <16 x i8>*, !dbg !241
  %407 = load <16 x i8>, <16 x i8>* %406, align 1, !dbg !241
  %408 = lshr <16 x i8> %407, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %409 = and <16 x i8> %407, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %410 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %184, <16 x i8> %409) #10, !dbg !241
  %411 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %184, <16 x i8> %408) #10, !dbg !241
  %412 = getelementptr inbounds i8, i8* %203, i64 208, !dbg !241
  %413 = bitcast i8* %412 to <16 x i8>*, !dbg !241
  %414 = load <16 x i8>, <16 x i8>* %413, align 1, !dbg !241
  %415 = lshr <16 x i8> %414, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %416 = and <16 x i8> %414, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %417 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %187, <16 x i8> %416) #10, !dbg !241
  %418 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %187, <16 x i8> %415) #10, !dbg !241
  %419 = shufflevector <16 x i8> %418, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %420 = sext <8 x i8> %419 to <8 x i16>, !dbg !241
  %421 = shufflevector <16 x i8> %411, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %422 = sext <8 x i8> %421 to <8 x i16>, !dbg !241
  %423 = shufflevector <16 x i8> %418, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %424 = sext <8 x i8> %423 to <8 x i16>, !dbg !241
  %425 = shufflevector <16 x i8> %411, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %426 = sext <8 x i8> %425 to <8 x i16>, !dbg !241
  %427 = shufflevector <16 x i8> %410, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %428 = sext <8 x i8> %427 to <8 x i16>, !dbg !241
  %429 = add <8 x i16> %398, %428, !dbg !241
  %430 = shufflevector <16 x i8> %417, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %431 = sext <8 x i8> %430 to <8 x i16>, !dbg !241
  %432 = add <8 x i16> %429, %431, !dbg !241
  %433 = shufflevector <16 x i8> %410, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %434 = sext <8 x i8> %433 to <8 x i16>, !dbg !241
  %435 = add <8 x i16> %404, %434, !dbg !241
  %436 = shufflevector <16 x i8> %417, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %437 = sext <8 x i8> %436 to <8 x i16>, !dbg !241
  %438 = add <8 x i16> %435, %437, !dbg !241
  %439 = getelementptr inbounds i8, i8* %203, i64 224, !dbg !241
  %440 = bitcast i8* %439 to <16 x i8>*, !dbg !241
  %441 = load <16 x i8>, <16 x i8>* %440, align 1, !dbg !241
  %442 = lshr <16 x i8> %441, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %443 = and <16 x i8> %441, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %444 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %190, <16 x i8> %443) #10, !dbg !241
  %445 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %190, <16 x i8> %442) #10, !dbg !241
  %446 = getelementptr inbounds i8, i8* %203, i64 240, !dbg !241
  %447 = bitcast i8* %446 to <16 x i8>*, !dbg !241
  %448 = load <16 x i8>, <16 x i8>* %447, align 1, !dbg !241
  %449 = lshr <16 x i8> %448, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !241
  %450 = and <16 x i8> %448, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !241
  %451 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %193, <16 x i8> %450) #10, !dbg !241
  %452 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %193, <16 x i8> %449) #10, !dbg !241
  %453 = shufflevector <16 x i8> %452, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %454 = sext <8 x i8> %453 to <8 x i16>, !dbg !241
  %455 = shufflevector <16 x i8> %445, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %456 = sext <8 x i8> %455 to <8 x i16>, !dbg !241
  %457 = shufflevector <16 x i8> %452, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %458 = sext <8 x i8> %457 to <8 x i16>, !dbg !241
  %459 = shufflevector <16 x i8> %445, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %460 = sext <8 x i8> %459 to <8 x i16>, !dbg !241
  %461 = shufflevector <16 x i8> %444, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %462 = sext <8 x i8> %461 to <8 x i16>, !dbg !241
  %463 = add <8 x i16> %432, %462, !dbg !241
  %464 = shufflevector <16 x i8> %451, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !241
  %465 = sext <8 x i8> %464 to <8 x i16>, !dbg !241
  %466 = add <8 x i16> %463, %465, !dbg !241
  %467 = shufflevector <16 x i8> %444, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %468 = sext <8 x i8> %467 to <8 x i16>, !dbg !241
  %469 = add <8 x i16> %438, %468, !dbg !241
  %470 = shufflevector <16 x i8> %451, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !241
  %471 = sext <8 x i8> %470 to <8 x i16>, !dbg !241
  %472 = add <8 x i16> %469, %471, !dbg !241
  %473 = add nsw <8 x i16> %230, %229, !dbg !241
  %474 = add nsw <8 x i16> %473, %256, !dbg !241
  %475 = add nsw <8 x i16> %474, %254, !dbg !241
  %476 = add nsw <8 x i16> %475, %290, !dbg !241
  %477 = add nsw <8 x i16> %476, %288, !dbg !241
  %478 = add nsw <8 x i16> %477, %324, !dbg !241
  %479 = add <8 x i16> %478, %322, !dbg !241
  %480 = add <8 x i16> %479, %358, !dbg !241
  %481 = add <8 x i16> %480, %356, !dbg !241
  %482 = add <8 x i16> %481, %392, !dbg !241
  %483 = add <8 x i16> %482, %390, !dbg !241
  %484 = add <8 x i16> %483, %426, !dbg !241
  %485 = add <8 x i16> %484, %424, !dbg !241
  %486 = add <8 x i16> %485, %460, !dbg !241
  %487 = add <8 x i16> %486, %458, !dbg !241
  %488 = add nsw <8 x i16> %234, %232, !dbg !241
  %489 = add nsw <8 x i16> %488, %252, !dbg !241
  %490 = add nsw <8 x i16> %489, %250, !dbg !241
  %491 = add nsw <8 x i16> %490, %286, !dbg !241
  %492 = add nsw <8 x i16> %491, %284, !dbg !241
  %493 = add nsw <8 x i16> %492, %320, !dbg !241
  %494 = add <8 x i16> %493, %318, !dbg !241
  %495 = add <8 x i16> %494, %354, !dbg !241
  %496 = add <8 x i16> %495, %352, !dbg !241
  %497 = add <8 x i16> %496, %388, !dbg !241
  %498 = add <8 x i16> %497, %386, !dbg !241
  %499 = add <8 x i16> %498, %422, !dbg !241
  %500 = add <8 x i16> %499, %420, !dbg !241
  %501 = add <8 x i16> %500, %456, !dbg !241
  %502 = add <8 x i16> %501, %454, !dbg !241
  %503 = sitofp <8 x i16> %472 to <8 x half>, !dbg !241
  %504 = sitofp <8 x i16> %466 to <8 x half>, !dbg !241
  %505 = sitofp <8 x i16> %487 to <8 x half>, !dbg !241
  %506 = sitofp <8 x i16> %502 to <8 x half>, !dbg !241
  %507 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %503, <8 x half> %198, <8 x half> %199) #10, !dbg !241
  %508 = fmul <8 x half> %198, %504, !dbg !241
  %509 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %505, <8 x half> %198, <8 x half> %199) #10, !dbg !241
  %510 = fmul <8 x half> %198, %506, !dbg !241
  %511 = shl nuw nsw i64 %201, 1, !dbg !241
  %512 = getelementptr inbounds [128 x half], [128 x half]* %CBits2, i64 0, i64 %511, !dbg !241
  %513 = bitcast half* %512 to <8 x half>*, !dbg !241
  %514 = load <8 x half>, <8 x half>* %513, align 16, !dbg !241
  %515 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %507, <8 x half> %139, <8 x half> %514) #10, !dbg !241
  store <8 x half> %515, <8 x half>* %513, align 16, !dbg !241
  %516 = getelementptr inbounds half, half* %512, i64 8, !dbg !241
  %517 = bitcast half* %516 to <8 x half>*, !dbg !241
  %518 = load <8 x half>, <8 x half>* %517, align 16, !dbg !241
  %519 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %508, <8 x half> %139, <8 x half> %518) #10, !dbg !241
  store <8 x half> %519, <8 x half>* %517, align 16, !dbg !241
  %520 = getelementptr inbounds half, half* %512, i64 16, !dbg !241
  %521 = bitcast half* %520 to <8 x half>*, !dbg !241
  %522 = load <8 x half>, <8 x half>* %521, align 16, !dbg !241
  %523 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %509, <8 x half> %139, <8 x half> %522) #10, !dbg !241
  store <8 x half> %523, <8 x half>* %521, align 16, !dbg !241
  %524 = getelementptr inbounds half, half* %512, i64 24, !dbg !241
  %525 = bitcast half* %524 to <8 x half>*, !dbg !241
  %526 = load <8 x half>, <8 x half>* %525, align 16, !dbg !241
  %527 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %510, <8 x half> %139, <8 x half> %526) #10, !dbg !241
  store <8 x half> %527, <8 x half>* %525, align 16, !dbg !241
  %528 = add nuw nsw i64 %201, 16, !dbg !241
  %529 = icmp ult i64 %201, 48, !dbg !241
  br i1 %529, label %200, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, !dbg !241, !llvm.loop !250

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit: ; preds = %200
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !241
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !245, metadata !DIExpression()), !dbg !241
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50, !dbg !241
  br i1 %exitcond.not, label %for_body_m.c.outer, label %for_body_k.outer, !dbg !241, !prof !33

for_body_m.c.outer:                               ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  call void @llvm.dbg.declare(metadata i64 0, metadata !252, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 0, metadata !253, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 0, metadata !253, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !241
  %530 = load <8 x half>, <8 x half>* %91, align 16, !dbg !241, !tbaa !255
  %531 = fpext <8 x half> %530 to <8 x float>, !dbg !241
  %532 = load <8 x half>, <8 x half>* %92, align 16, !dbg !241, !tbaa !255
  %533 = fpext <8 x half> %532 to <8 x float>, !dbg !241
  %534 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %531, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %533), !dbg !241
  %535 = fptrunc <8 x float> %534 to <8 x half>, !dbg !241
  store <8 x half> %535, <8 x half>* %93, align 16, !dbg !241, !tbaa !257
  %536 = load <8 x half>, <8 x half>* %97, align 16, !dbg !241, !tbaa !255
  %537 = fpext <8 x half> %536 to <8 x float>, !dbg !241
  %538 = load <8 x half>, <8 x half>* %98, align 16, !dbg !241, !tbaa !255
  %539 = fpext <8 x half> %538 to <8 x float>, !dbg !241
  %540 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %537, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %539), !dbg !241
  %541 = fptrunc <8 x float> %540 to <8 x half>, !dbg !241
  store <8 x half> %541, <8 x half>* %99, align 16, !dbg !241, !tbaa !257
  %542 = load <8 x half>, <8 x half>* %103, align 16, !dbg !241, !tbaa !255
  %543 = fpext <8 x half> %542 to <8 x float>, !dbg !241
  %544 = load <8 x half>, <8 x half>* %104, align 16, !dbg !241, !tbaa !255
  %545 = fpext <8 x half> %544 to <8 x float>, !dbg !241
  %546 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %543, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %545), !dbg !241
  %547 = fptrunc <8 x float> %546 to <8 x half>, !dbg !241
  store <8 x half> %547, <8 x half>* %105, align 16, !dbg !241, !tbaa !257
  %548 = load <8 x half>, <8 x half>* %109, align 16, !dbg !241, !tbaa !255
  %549 = fpext <8 x half> %548 to <8 x float>, !dbg !241
  %550 = load <8 x half>, <8 x half>* %110, align 16, !dbg !241, !tbaa !255
  %551 = fpext <8 x half> %550 to <8 x float>, !dbg !241
  %552 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %549, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %551), !dbg !241
  %553 = fptrunc <8 x float> %552 to <8 x half>, !dbg !241
  store <8 x half> %553, <8 x half>* %111, align 16, !dbg !241, !tbaa !257
  call void @llvm.dbg.declare(metadata i64 0, metadata !252, metadata !DIExpression(DW_OP_plus_uconst, 1)), !dbg !241
  call void @llvm.dbg.declare(metadata i64 1, metadata !252, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 64, metadata !253, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 64, metadata !253, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 32, metadata !254, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 32, metadata !254, metadata !DIExpression()), !dbg !241
  %554 = load <8 x half>, <8 x half>* %115, align 16, !dbg !241, !tbaa !255
  %555 = fpext <8 x half> %554 to <8 x float>, !dbg !241
  %556 = load <8 x half>, <8 x half>* %116, align 16, !dbg !241, !tbaa !255
  %557 = fpext <8 x half> %556 to <8 x float>, !dbg !241
  %558 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %555, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %557), !dbg !241
  %559 = fptrunc <8 x float> %558 to <8 x half>, !dbg !241
  store <8 x half> %559, <8 x half>* %117, align 16, !dbg !241, !tbaa !257
  %560 = load <8 x half>, <8 x half>* %121, align 16, !dbg !241, !tbaa !255
  %561 = fpext <8 x half> %560 to <8 x float>, !dbg !241
  %562 = load <8 x half>, <8 x half>* %122, align 16, !dbg !241, !tbaa !255
  %563 = fpext <8 x half> %562 to <8 x float>, !dbg !241
  %564 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %561, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %563), !dbg !241
  %565 = fptrunc <8 x float> %564 to <8 x half>, !dbg !241
  store <8 x half> %565, <8 x half>* %123, align 16, !dbg !241, !tbaa !257
  %566 = load <8 x half>, <8 x half>* %127, align 16, !dbg !241, !tbaa !255
  %567 = fpext <8 x half> %566 to <8 x float>, !dbg !241
  %568 = load <8 x half>, <8 x half>* %128, align 16, !dbg !241, !tbaa !255
  %569 = fpext <8 x half> %568 to <8 x float>, !dbg !241
  %570 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %567, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %569), !dbg !241
  %571 = fptrunc <8 x float> %570 to <8 x half>, !dbg !241
  store <8 x half> %571, <8 x half>* %129, align 16, !dbg !241, !tbaa !257
  %572 = load <8 x half>, <8 x half>* %133, align 16, !dbg !241, !tbaa !255
  %573 = fpext <8 x half> %572 to <8 x float>, !dbg !241
  %574 = load <8 x half>, <8 x half>* %134, align 16, !dbg !241, !tbaa !255
  %575 = fpext <8 x half> %574 to <8 x float>, !dbg !241
  %576 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %573, <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, <8 x float> %575), !dbg !241
  %577 = fptrunc <8 x float> %576 to <8 x half>, !dbg !241
  store <8 x half> %577, <8 x half>* %135, align 16, !dbg !241, !tbaa !257
  call void @llvm.dbg.declare(metadata i64 1, metadata !252, metadata !DIExpression(DW_OP_plus_uconst, 1)), !dbg !241
  %578 = trunc i64 %indvars.iv20 to i32
  %579 = shl nsw i32 %578, 6
  call void @llvm.dbg.declare(metadata i32 0, metadata !259, metadata !DIExpression()), !dbg !241
  %580 = sext i32 %579 to i64, !dbg !241
  call void @llvm.dbg.declare(metadata i64 0, metadata !259, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 0, metadata !260, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 0, metadata !260, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 %580, metadata !261, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 %580, metadata !261, metadata !DIExpression()), !dbg !241
  %581 = load half, half* %25, align 16, !dbg !241, !tbaa !257
  %582 = getelementptr inbounds half, half* %C, i64 %580, !dbg !241
  store half %581, half* %582, align 64, !dbg !241, !tbaa !262
  %583 = load half, half* %27, align 2, !dbg !241, !tbaa !257
  %584 = or i32 %579, 1, !dbg !241
  %585 = sext i32 %584 to i64, !dbg !241
  %586 = getelementptr inbounds half, half* %C, i64 %585, !dbg !241
  store half %583, half* %586, align 2, !dbg !241, !tbaa !262
  %587 = load half, half* %28, align 4, !dbg !241, !tbaa !257
  %588 = or i32 %579, 2, !dbg !241
  %589 = sext i32 %588 to i64, !dbg !241
  %590 = getelementptr inbounds half, half* %C, i64 %589, !dbg !241
  store half %587, half* %590, align 4, !dbg !241, !tbaa !262
  %591 = load half, half* %29, align 2, !dbg !241, !tbaa !257
  %592 = or i32 %579, 3, !dbg !241
  %593 = sext i32 %592 to i64, !dbg !241
  %594 = getelementptr inbounds half, half* %C, i64 %593, !dbg !241
  store half %591, half* %594, align 2, !dbg !241, !tbaa !262
  %595 = load half, half* %30, align 8, !dbg !241, !tbaa !257
  %596 = or i32 %579, 4, !dbg !241
  %597 = sext i32 %596 to i64, !dbg !241
  %598 = getelementptr inbounds half, half* %C, i64 %597, !dbg !241
  store half %595, half* %598, align 8, !dbg !241, !tbaa !262
  %599 = load half, half* %31, align 2, !dbg !241, !tbaa !257
  %600 = or i32 %579, 5, !dbg !241
  %601 = sext i32 %600 to i64, !dbg !241
  %602 = getelementptr inbounds half, half* %C, i64 %601, !dbg !241
  store half %599, half* %602, align 2, !dbg !241, !tbaa !262
  %603 = load half, half* %32, align 4, !dbg !241, !tbaa !257
  %604 = or i32 %579, 6, !dbg !241
  %605 = sext i32 %604 to i64, !dbg !241
  %606 = getelementptr inbounds half, half* %C, i64 %605, !dbg !241
  store half %603, half* %606, align 4, !dbg !241, !tbaa !262
  %607 = load half, half* %33, align 2, !dbg !241, !tbaa !257
  %608 = or i32 %579, 7, !dbg !241
  %609 = sext i32 %608 to i64, !dbg !241
  %610 = getelementptr inbounds half, half* %C, i64 %609, !dbg !241
  store half %607, half* %610, align 2, !dbg !241, !tbaa !262
  %611 = load half, half* %34, align 16, !dbg !241, !tbaa !257
  %612 = or i32 %579, 8, !dbg !241
  %613 = sext i32 %612 to i64, !dbg !241
  %614 = getelementptr inbounds half, half* %C, i64 %613, !dbg !241
  store half %611, half* %614, align 16, !dbg !241, !tbaa !262
  %615 = load half, half* %35, align 2, !dbg !241, !tbaa !257
  %616 = or i32 %579, 9, !dbg !241
  %617 = sext i32 %616 to i64, !dbg !241
  %618 = getelementptr inbounds half, half* %C, i64 %617, !dbg !241
  store half %615, half* %618, align 2, !dbg !241, !tbaa !262
  %619 = load half, half* %36, align 4, !dbg !241, !tbaa !257
  %620 = or i32 %579, 10, !dbg !241
  %621 = sext i32 %620 to i64, !dbg !241
  %622 = getelementptr inbounds half, half* %C, i64 %621, !dbg !241
  store half %619, half* %622, align 4, !dbg !241, !tbaa !262
  %623 = load half, half* %37, align 2, !dbg !241, !tbaa !257
  %624 = or i32 %579, 11, !dbg !241
  %625 = sext i32 %624 to i64, !dbg !241
  %626 = getelementptr inbounds half, half* %C, i64 %625, !dbg !241
  store half %623, half* %626, align 2, !dbg !241, !tbaa !262
  %627 = load half, half* %38, align 8, !dbg !241, !tbaa !257
  %628 = or i32 %579, 12, !dbg !241
  %629 = sext i32 %628 to i64, !dbg !241
  %630 = getelementptr inbounds half, half* %C, i64 %629, !dbg !241
  store half %627, half* %630, align 8, !dbg !241, !tbaa !262
  %631 = load half, half* %39, align 2, !dbg !241, !tbaa !257
  %632 = or i32 %579, 13, !dbg !241
  %633 = sext i32 %632 to i64, !dbg !241
  %634 = getelementptr inbounds half, half* %C, i64 %633, !dbg !241
  store half %631, half* %634, align 2, !dbg !241, !tbaa !262
  %635 = load half, half* %40, align 4, !dbg !241, !tbaa !257
  %636 = or i32 %579, 14, !dbg !241
  %637 = sext i32 %636 to i64, !dbg !241
  %638 = getelementptr inbounds half, half* %C, i64 %637, !dbg !241
  store half %635, half* %638, align 4, !dbg !241, !tbaa !262
  %639 = load half, half* %41, align 2, !dbg !241, !tbaa !257
  %640 = or i32 %579, 15, !dbg !241
  %641 = sext i32 %640 to i64, !dbg !241
  %642 = getelementptr inbounds half, half* %C, i64 %641, !dbg !241
  store half %639, half* %642, align 2, !dbg !241, !tbaa !262
  %643 = load half, half* %42, align 16, !dbg !241, !tbaa !257
  %644 = or i32 %579, 16, !dbg !241
  %645 = sext i32 %644 to i64, !dbg !241
  %646 = getelementptr inbounds half, half* %C, i64 %645, !dbg !241
  store half %643, half* %646, align 32, !dbg !241, !tbaa !262
  %647 = load half, half* %43, align 2, !dbg !241, !tbaa !257
  %648 = or i32 %579, 17, !dbg !241
  %649 = sext i32 %648 to i64, !dbg !241
  %650 = getelementptr inbounds half, half* %C, i64 %649, !dbg !241
  store half %647, half* %650, align 2, !dbg !241, !tbaa !262
  %651 = load half, half* %44, align 4, !dbg !241, !tbaa !257
  %652 = or i32 %579, 18, !dbg !241
  %653 = sext i32 %652 to i64, !dbg !241
  %654 = getelementptr inbounds half, half* %C, i64 %653, !dbg !241
  store half %651, half* %654, align 4, !dbg !241, !tbaa !262
  %655 = load half, half* %45, align 2, !dbg !241, !tbaa !257
  %656 = or i32 %579, 19, !dbg !241
  %657 = sext i32 %656 to i64, !dbg !241
  %658 = getelementptr inbounds half, half* %C, i64 %657, !dbg !241
  store half %655, half* %658, align 2, !dbg !241, !tbaa !262
  %659 = load half, half* %46, align 8, !dbg !241, !tbaa !257
  %660 = or i32 %579, 20, !dbg !241
  %661 = sext i32 %660 to i64, !dbg !241
  %662 = getelementptr inbounds half, half* %C, i64 %661, !dbg !241
  store half %659, half* %662, align 8, !dbg !241, !tbaa !262
  %663 = load half, half* %47, align 2, !dbg !241, !tbaa !257
  %664 = or i32 %579, 21, !dbg !241
  %665 = sext i32 %664 to i64, !dbg !241
  %666 = getelementptr inbounds half, half* %C, i64 %665, !dbg !241
  store half %663, half* %666, align 2, !dbg !241, !tbaa !262
  %667 = load half, half* %48, align 4, !dbg !241, !tbaa !257
  %668 = or i32 %579, 22, !dbg !241
  %669 = sext i32 %668 to i64, !dbg !241
  %670 = getelementptr inbounds half, half* %C, i64 %669, !dbg !241
  store half %667, half* %670, align 4, !dbg !241, !tbaa !262
  %671 = load half, half* %49, align 2, !dbg !241, !tbaa !257
  %672 = or i32 %579, 23, !dbg !241
  %673 = sext i32 %672 to i64, !dbg !241
  %674 = getelementptr inbounds half, half* %C, i64 %673, !dbg !241
  store half %671, half* %674, align 2, !dbg !241, !tbaa !262
  %675 = load half, half* %50, align 16, !dbg !241, !tbaa !257
  %676 = or i32 %579, 24, !dbg !241
  %677 = sext i32 %676 to i64, !dbg !241
  %678 = getelementptr inbounds half, half* %C, i64 %677, !dbg !241
  store half %675, half* %678, align 16, !dbg !241, !tbaa !262
  %679 = load half, half* %51, align 2, !dbg !241, !tbaa !257
  %680 = or i32 %579, 25, !dbg !241
  %681 = sext i32 %680 to i64, !dbg !241
  %682 = getelementptr inbounds half, half* %C, i64 %681, !dbg !241
  store half %679, half* %682, align 2, !dbg !241, !tbaa !262
  %683 = load half, half* %52, align 4, !dbg !241, !tbaa !257
  %684 = or i32 %579, 26, !dbg !241
  %685 = sext i32 %684 to i64, !dbg !241
  %686 = getelementptr inbounds half, half* %C, i64 %685, !dbg !241
  store half %683, half* %686, align 4, !dbg !241, !tbaa !262
  %687 = load half, half* %53, align 2, !dbg !241, !tbaa !257
  %688 = or i32 %579, 27, !dbg !241
  %689 = sext i32 %688 to i64, !dbg !241
  %690 = getelementptr inbounds half, half* %C, i64 %689, !dbg !241
  store half %687, half* %690, align 2, !dbg !241, !tbaa !262
  %691 = load half, half* %54, align 8, !dbg !241, !tbaa !257
  %692 = or i32 %579, 28, !dbg !241
  %693 = sext i32 %692 to i64, !dbg !241
  %694 = getelementptr inbounds half, half* %C, i64 %693, !dbg !241
  store half %691, half* %694, align 8, !dbg !241, !tbaa !262
  %695 = load half, half* %55, align 2, !dbg !241, !tbaa !257
  %696 = or i32 %579, 29, !dbg !241
  %697 = sext i32 %696 to i64, !dbg !241
  %698 = getelementptr inbounds half, half* %C, i64 %697, !dbg !241
  store half %695, half* %698, align 2, !dbg !241, !tbaa !262
  %699 = load half, half* %56, align 4, !dbg !241, !tbaa !257
  %700 = or i32 %579, 30, !dbg !241
  %701 = sext i32 %700 to i64, !dbg !241
  %702 = getelementptr inbounds half, half* %C, i64 %701, !dbg !241
  store half %699, half* %702, align 4, !dbg !241, !tbaa !262
  %703 = load half, half* %57, align 2, !dbg !241, !tbaa !257
  %704 = or i32 %579, 31, !dbg !241
  %705 = sext i32 %704 to i64, !dbg !241
  %706 = getelementptr inbounds half, half* %C, i64 %705, !dbg !241
  store half %703, half* %706, align 2, !dbg !241, !tbaa !262
  call void @llvm.dbg.declare(metadata i64 1, metadata !259, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 1, metadata !259, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 32, metadata !260, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 32, metadata !260, metadata !DIExpression()), !dbg !241
  %707 = or i64 %580, 32, !dbg !241
  call void @llvm.dbg.declare(metadata i64 %707, metadata !261, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i64 %707, metadata !261, metadata !DIExpression()), !dbg !241
  %708 = load half, half* %58, align 16, !dbg !241, !tbaa !257
  %709 = getelementptr inbounds half, half* %C, i64 %707, !dbg !241
  store half %708, half* %709, align 64, !dbg !241, !tbaa !262
  %710 = load half, half* %59, align 2, !dbg !241, !tbaa !257
  %711 = or i32 %579, 33, !dbg !241
  %712 = sext i32 %711 to i64, !dbg !241
  %713 = getelementptr inbounds half, half* %C, i64 %712, !dbg !241
  store half %710, half* %713, align 2, !dbg !241, !tbaa !262
  %714 = load half, half* %60, align 4, !dbg !241, !tbaa !257
  %715 = or i32 %579, 34, !dbg !241
  %716 = sext i32 %715 to i64, !dbg !241
  %717 = getelementptr inbounds half, half* %C, i64 %716, !dbg !241
  store half %714, half* %717, align 4, !dbg !241, !tbaa !262
  %718 = load half, half* %61, align 2, !dbg !241, !tbaa !257
  %719 = or i32 %579, 35, !dbg !241
  %720 = sext i32 %719 to i64, !dbg !241
  %721 = getelementptr inbounds half, half* %C, i64 %720, !dbg !241
  store half %718, half* %721, align 2, !dbg !241, !tbaa !262
  %722 = load half, half* %62, align 8, !dbg !241, !tbaa !257
  %723 = or i32 %579, 36, !dbg !241
  %724 = sext i32 %723 to i64, !dbg !241
  %725 = getelementptr inbounds half, half* %C, i64 %724, !dbg !241
  store half %722, half* %725, align 8, !dbg !241, !tbaa !262
  %726 = load half, half* %63, align 2, !dbg !241, !tbaa !257
  %727 = or i32 %579, 37, !dbg !241
  %728 = sext i32 %727 to i64, !dbg !241
  %729 = getelementptr inbounds half, half* %C, i64 %728, !dbg !241
  store half %726, half* %729, align 2, !dbg !241, !tbaa !262
  %730 = load half, half* %64, align 4, !dbg !241, !tbaa !257
  %731 = or i32 %579, 38, !dbg !241
  %732 = sext i32 %731 to i64, !dbg !241
  %733 = getelementptr inbounds half, half* %C, i64 %732, !dbg !241
  store half %730, half* %733, align 4, !dbg !241, !tbaa !262
  %734 = load half, half* %65, align 2, !dbg !241, !tbaa !257
  %735 = or i32 %579, 39, !dbg !241
  %736 = sext i32 %735 to i64, !dbg !241
  %737 = getelementptr inbounds half, half* %C, i64 %736, !dbg !241
  store half %734, half* %737, align 2, !dbg !241, !tbaa !262
  %738 = load half, half* %66, align 16, !dbg !241, !tbaa !257
  %739 = or i32 %579, 40, !dbg !241
  %740 = sext i32 %739 to i64, !dbg !241
  %741 = getelementptr inbounds half, half* %C, i64 %740, !dbg !241
  store half %738, half* %741, align 16, !dbg !241, !tbaa !262
  %742 = load half, half* %67, align 2, !dbg !241, !tbaa !257
  %743 = or i32 %579, 41, !dbg !241
  %744 = sext i32 %743 to i64, !dbg !241
  %745 = getelementptr inbounds half, half* %C, i64 %744, !dbg !241
  store half %742, half* %745, align 2, !dbg !241, !tbaa !262
  %746 = load half, half* %68, align 4, !dbg !241, !tbaa !257
  %747 = or i32 %579, 42, !dbg !241
  %748 = sext i32 %747 to i64, !dbg !241
  %749 = getelementptr inbounds half, half* %C, i64 %748, !dbg !241
  store half %746, half* %749, align 4, !dbg !241, !tbaa !262
  %750 = load half, half* %69, align 2, !dbg !241, !tbaa !257
  %751 = or i32 %579, 43, !dbg !241
  %752 = sext i32 %751 to i64, !dbg !241
  %753 = getelementptr inbounds half, half* %C, i64 %752, !dbg !241
  store half %750, half* %753, align 2, !dbg !241, !tbaa !262
  %754 = load half, half* %70, align 8, !dbg !241, !tbaa !257
  %755 = or i32 %579, 44, !dbg !241
  %756 = sext i32 %755 to i64, !dbg !241
  %757 = getelementptr inbounds half, half* %C, i64 %756, !dbg !241
  store half %754, half* %757, align 8, !dbg !241, !tbaa !262
  %758 = load half, half* %71, align 2, !dbg !241, !tbaa !257
  %759 = or i32 %579, 45, !dbg !241
  %760 = sext i32 %759 to i64, !dbg !241
  %761 = getelementptr inbounds half, half* %C, i64 %760, !dbg !241
  store half %758, half* %761, align 2, !dbg !241, !tbaa !262
  %762 = load half, half* %72, align 4, !dbg !241, !tbaa !257
  %763 = or i32 %579, 46, !dbg !241
  %764 = sext i32 %763 to i64, !dbg !241
  %765 = getelementptr inbounds half, half* %C, i64 %764, !dbg !241
  store half %762, half* %765, align 4, !dbg !241, !tbaa !262
  %766 = load half, half* %73, align 2, !dbg !241, !tbaa !257
  %767 = or i32 %579, 47, !dbg !241
  %768 = sext i32 %767 to i64, !dbg !241
  %769 = getelementptr inbounds half, half* %C, i64 %768, !dbg !241
  store half %766, half* %769, align 2, !dbg !241, !tbaa !262
  %770 = load half, half* %74, align 16, !dbg !241, !tbaa !257
  %771 = or i32 %579, 48, !dbg !241
  %772 = sext i32 %771 to i64, !dbg !241
  %773 = getelementptr inbounds half, half* %C, i64 %772, !dbg !241
  store half %770, half* %773, align 32, !dbg !241, !tbaa !262
  %774 = load half, half* %75, align 2, !dbg !241, !tbaa !257
  %775 = or i32 %579, 49, !dbg !241
  %776 = sext i32 %775 to i64, !dbg !241
  %777 = getelementptr inbounds half, half* %C, i64 %776, !dbg !241
  store half %774, half* %777, align 2, !dbg !241, !tbaa !262
  %778 = load half, half* %76, align 4, !dbg !241, !tbaa !257
  %779 = or i32 %579, 50, !dbg !241
  %780 = sext i32 %779 to i64, !dbg !241
  %781 = getelementptr inbounds half, half* %C, i64 %780, !dbg !241
  store half %778, half* %781, align 4, !dbg !241, !tbaa !262
  %782 = load half, half* %77, align 2, !dbg !241, !tbaa !257
  %783 = or i32 %579, 51, !dbg !241
  %784 = sext i32 %783 to i64, !dbg !241
  %785 = getelementptr inbounds half, half* %C, i64 %784, !dbg !241
  store half %782, half* %785, align 2, !dbg !241, !tbaa !262
  %786 = load half, half* %78, align 8, !dbg !241, !tbaa !257
  %787 = or i32 %579, 52, !dbg !241
  %788 = sext i32 %787 to i64, !dbg !241
  %789 = getelementptr inbounds half, half* %C, i64 %788, !dbg !241
  store half %786, half* %789, align 8, !dbg !241, !tbaa !262
  %790 = load half, half* %79, align 2, !dbg !241, !tbaa !257
  %791 = or i32 %579, 53, !dbg !241
  %792 = sext i32 %791 to i64, !dbg !241
  %793 = getelementptr inbounds half, half* %C, i64 %792, !dbg !241
  store half %790, half* %793, align 2, !dbg !241, !tbaa !262
  %794 = load half, half* %80, align 4, !dbg !241, !tbaa !257
  %795 = or i32 %579, 54, !dbg !241
  %796 = sext i32 %795 to i64, !dbg !241
  %797 = getelementptr inbounds half, half* %C, i64 %796, !dbg !241
  store half %794, half* %797, align 4, !dbg !241, !tbaa !262
  %798 = load half, half* %81, align 2, !dbg !241, !tbaa !257
  %799 = or i32 %579, 55, !dbg !241
  %800 = sext i32 %799 to i64, !dbg !241
  %801 = getelementptr inbounds half, half* %C, i64 %800, !dbg !241
  store half %798, half* %801, align 2, !dbg !241, !tbaa !262
  %802 = load half, half* %82, align 16, !dbg !241, !tbaa !257
  %803 = or i32 %579, 56, !dbg !241
  %804 = sext i32 %803 to i64, !dbg !241
  %805 = getelementptr inbounds half, half* %C, i64 %804, !dbg !241
  store half %802, half* %805, align 16, !dbg !241, !tbaa !262
  %806 = load half, half* %83, align 2, !dbg !241, !tbaa !257
  %807 = or i32 %579, 57, !dbg !241
  %808 = sext i32 %807 to i64, !dbg !241
  %809 = getelementptr inbounds half, half* %C, i64 %808, !dbg !241
  store half %806, half* %809, align 2, !dbg !241, !tbaa !262
  %810 = load half, half* %84, align 4, !dbg !241, !tbaa !257
  %811 = or i32 %579, 58, !dbg !241
  %812 = sext i32 %811 to i64, !dbg !241
  %813 = getelementptr inbounds half, half* %C, i64 %812, !dbg !241
  store half %810, half* %813, align 4, !dbg !241, !tbaa !262
  %814 = load half, half* %85, align 2, !dbg !241, !tbaa !257
  %815 = or i32 %579, 59, !dbg !241
  %816 = sext i32 %815 to i64, !dbg !241
  %817 = getelementptr inbounds half, half* %C, i64 %816, !dbg !241
  store half %814, half* %817, align 2, !dbg !241, !tbaa !262
  %818 = load half, half* %86, align 8, !dbg !241, !tbaa !257
  %819 = or i32 %579, 60, !dbg !241
  %820 = sext i32 %819 to i64, !dbg !241
  %821 = getelementptr inbounds half, half* %C, i64 %820, !dbg !241
  store half %818, half* %821, align 8, !dbg !241, !tbaa !262
  %822 = load half, half* %87, align 2, !dbg !241, !tbaa !257
  %823 = or i32 %579, 61, !dbg !241
  %824 = sext i32 %823 to i64, !dbg !241
  %825 = getelementptr inbounds half, half* %C, i64 %824, !dbg !241
  store half %822, half* %825, align 2, !dbg !241, !tbaa !262
  %826 = load half, half* %88, align 4, !dbg !241, !tbaa !257
  %827 = or i32 %579, 62, !dbg !241
  %828 = sext i32 %827 to i64, !dbg !241
  %829 = getelementptr inbounds half, half* %C, i64 %828, !dbg !241
  store half %826, half* %829, align 4, !dbg !241, !tbaa !262
  %830 = load half, half* %89, align 2, !dbg !241, !tbaa !257
  %831 = or i32 %579, 63, !dbg !241
  %832 = sext i32 %831 to i64, !dbg !241
  %833 = getelementptr inbounds half, half* %C, i64 %832, !dbg !241
  store half %830, half* %833, align 2, !dbg !241, !tbaa !262
  call void @llvm.dbg.declare(metadata i64 2, metadata !259, metadata !DIExpression()), !dbg !241
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1, !dbg !241
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next21, metadata !242, metadata !DIExpression()), !dbg !241
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count, !dbg !241
  br i1 %exitcond23.not, label %for_end_m.outer, label %for_body_m.outer, !dbg !241, !prof !33
}

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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

attributes #0 = { "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { noinline "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #4 = { nofree nosync nounwind "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #5 = { nofree nosync nounwind readnone "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #6 = { alwaysinline argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { alwaysinline mustprogress nofree nosync nounwind readnone willreturn }
attributes #8 = { alwaysinline mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
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
!15 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2", scope: !1, file: !1, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
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
!35 = !{!"0x2ca3c4e0.w4.b0", !36, i64 0}
!36 = !{!"0x2ca3c4e0.w8.b0", !37, i64 0}
!37 = !{!"0x2ca3c4e0.w16.b0", !38, i64 0}
!38 = !{!"0x2ca3c4e0.w32.b0", !39, i64 0}
!39 = !{!"0x2ca3c4e0.w64.b0", !40, i64 0}
!40 = !{!"0x2ca3c4e0.w128.b0", !41, i64 0}
!41 = !{!"0x2ca3c4e0.w256.b0", !42, i64 0}
!42 = !{!"0x2ca3c4e0.w512.b0", !43, i64 0}
!43 = !{!"0x2ca3c4e0.w1024.b0", !44, i64 0}
!44 = !{!"0x2ca3c4e0", !32, i64 0}
!45 = !DILocalVariable(name: "A.code", scope: !15, file: !1, type: !18)
!46 = !{!47, !47, i64 0}
!47 = !{!"0x2ca3c4e0.w4.b4", !36, i64 0}
!48 = !DILocalVariable(name: "LUT.code", scope: !15, file: !1, type: !18)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x2ca3c4e0.w4.b8", !51, i64 0}
!51 = !{!"0x2ca3c4e0.w8.b8", !37, i64 0}
!52 = !DILocalVariable(name: "Scales.code", scope: !15, file: !1, type: !18)
!53 = !{!54, !54, i64 0}
!54 = !{!"0x2ca3c4e0.w4.b12", !51, i64 0}
!55 = !DILocalVariable(name: "LUT_Scales.code", scope: !15, file: !1, type: !18)
!56 = !{!57, !57, i64 0}
!57 = !{!"0x2ca3c4e0.w4.b16", !58, i64 0}
!58 = !{!"0x2ca3c4e0.w8.b16", !59, i64 0}
!59 = !{!"0x2ca3c4e0.w16.b16", !38, i64 0}
!60 = !DILocalVariable(name: "LUT_Biases.code", scope: !15, file: !1, type: !18)
!61 = !{!62, !62, i64 0}
!62 = !{!"0x2ca3c4e0.w4.b20", !58, i64 0}
!63 = !DILocalVariable(name: "C.code", scope: !15, file: !1, type: !18)
!64 = !DILocalVariable(name: "A", scope: !15, file: !1, type: !19)
!65 = !DILocalVariable(name: "LUT", scope: !15, file: !1, type: !19)
!66 = !DILocalVariable(name: "Scales", scope: !15, file: !1, type: !19)
!67 = !DILocalVariable(name: "LUT_Scales", scope: !15, file: !1, type: !19)
!68 = !DILocalVariable(name: "LUT_Biases", scope: !15, file: !1, type: !19)
!69 = !DILocalVariable(name: "C", scope: !15, file: !1, type: !19)
!70 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape", scope: !15, file: !1, type: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72)
!72 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!73 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides", scope: !15, file: !1, type: !71)
!74 = !DILocalVariable(name: "dev_id", scope: !15, file: !1, type: !18)
!75 = !DILocalVariable(name: "A", scope: !15, file: !1, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77)
!77 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!78 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape", scope: !15, file: !1, type: !71)
!79 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides", scope: !15, file: !1, type: !71)
!80 = !DILocalVariable(name: "LUT", scope: !15, file: !1, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82)
!82 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!83 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape", scope: !15, file: !1, type: !71)
!84 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.strides", scope: !15, file: !1, type: !71)
!85 = !DILocalVariable(name: "Scales", scope: !15, file: !1, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87)
!87 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!88 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape", scope: !15, file: !1, type: !71)
!89 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides", scope: !15, file: !1, type: !71)
!90 = !DILocalVariable(name: "LUT_Scales", scope: !15, file: !1, type: !86)
!91 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape", scope: !15, file: !1, type: !71)
!92 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides", scope: !15, file: !1, type: !71)
!93 = !DILocalVariable(name: "LUT_Biases", scope: !15, file: !1, type: !86)
!94 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape", scope: !15, file: !1, type: !71)
!95 = !DILocalVariable(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides", scope: !15, file: !1, type: !71)
!96 = !DILocalVariable(name: "C", scope: !15, file: !1, type: !86)
!97 = !{!98, !98, i64 0}
!98 = !{!"0x2cbf9bf0.w8.b0", !99, i64 0}
!99 = !{!"0x2cbf9bf0.w16.b0", !100, i64 0}
!100 = !{!"0x2cbf9bf0.w32.b0", !101, i64 0}
!101 = !{!"0x2cbf9bf0.w64.b0", !102, i64 0}
!102 = !{!"0x2cbf9bf0.w128.b0", !103, i64 0}
!103 = !{!"0x2cbf9bf0.w256.b0", !104, i64 0}
!104 = !{!"0x2cbf9bf0.w512.b0", !105, i64 0}
!105 = !{!"0x2cbf9bf0.w1024.b0", !106, i64 0}
!106 = !{!"0x2cbf9bf0", !32, i64 0}
!107 = !{!108, !108, i64 0}
!108 = !{!"0x2cbf9bf0.w8.b8", !99, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x2cbf9bf0.w8.b16", !111, i64 0}
!111 = !{!"0x2cbf9bf0.w16.b16", !100, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"0x2cb71f80.w8.b16", !114, i64 0}
!114 = !{!"0x2cb71f80.w16.b16", !115, i64 0}
!115 = !{!"0x2cb71f80.w32.b0", !116, i64 0}
!116 = !{!"0x2cb71f80.w64.b0", !117, i64 0}
!117 = !{!"0x2cb71f80.w128.b0", !118, i64 0}
!118 = !{!"0x2cb71f80.w256.b0", !119, i64 0}
!119 = !{!"0x2cb71f80.w512.b0", !120, i64 0}
!120 = !{!"0x2cb71f80.w1024.b0", !121, i64 0}
!121 = !{!"0x2cb71f80", !32, i64 0}
!122 = !{!123, !123, i64 0}
!123 = !{!"0x2cb71f80.w8.b8", !124, i64 0}
!124 = !{!"0x2cb71f80.w16.b0", !115, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"0x2cb71f80.w8.b0", !124, i64 0}
!127 = !{!128, !128, i64 0}
!128 = !{!"0x2cd37a10.w8.b0", !129, i64 0}
!129 = !{!"0x2cd37a10.w16.b0", !130, i64 0}
!130 = !{!"0x2cd37a10.w32.b0", !131, i64 0}
!131 = !{!"0x2cd37a10.w64.b0", !132, i64 0}
!132 = !{!"0x2cd37a10.w128.b0", !133, i64 0}
!133 = !{!"0x2cd37a10.w256.b0", !134, i64 0}
!134 = !{!"0x2cd37a10.w512.b0", !135, i64 0}
!135 = !{!"0x2cd37a10.w1024.b0", !136, i64 0}
!136 = !{!"0x2cd37a10", !32, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"0x2cd37a10.w8.b8", !129, i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"0x2cd37a10.w8.b16", !141, i64 0}
!141 = !{!"0x2cd37a10.w16.b16", !130, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"0x2cd646e0.w8.b16", !144, i64 0}
!144 = !{!"0x2cd646e0.w16.b16", !145, i64 0}
!145 = !{!"0x2cd646e0.w32.b0", !146, i64 0}
!146 = !{!"0x2cd646e0.w64.b0", !147, i64 0}
!147 = !{!"0x2cd646e0.w128.b0", !148, i64 0}
!148 = !{!"0x2cd646e0.w256.b0", !149, i64 0}
!149 = !{!"0x2cd646e0.w512.b0", !150, i64 0}
!150 = !{!"0x2cd646e0.w1024.b0", !151, i64 0}
!151 = !{!"0x2cd646e0", !32, i64 0}
!152 = !{!153, !153, i64 0}
!153 = !{!"0x2cd646e0.w8.b8", !154, i64 0}
!154 = !{!"0x2cd646e0.w16.b0", !145, i64 0}
!155 = !{!156, !156, i64 0}
!156 = !{!"0x2ccd3f60.w8.b0", !157, i64 0}
!157 = !{!"0x2ccd3f60.w16.b0", !158, i64 0}
!158 = !{!"0x2ccd3f60.w32.b0", !159, i64 0}
!159 = !{!"0x2ccd3f60.w64.b0", !160, i64 0}
!160 = !{!"0x2ccd3f60.w128.b0", !161, i64 0}
!161 = !{!"0x2ccd3f60.w256.b0", !162, i64 0}
!162 = !{!"0x2ccd3f60.w512.b0", !163, i64 0}
!163 = !{!"0x2ccd3f60.w1024.b0", !164, i64 0}
!164 = !{!"0x2ccd3f60", !32, i64 0}
!165 = !{!166, !166, i64 0}
!166 = !{!"0x2ca50580.w8.b0", !167, i64 0}
!167 = !{!"0x2ca50580.w16.b0", !168, i64 0}
!168 = !{!"0x2ca50580.w32.b0", !169, i64 0}
!169 = !{!"0x2ca50580.w64.b0", !170, i64 0}
!170 = !{!"0x2ca50580.w128.b0", !171, i64 0}
!171 = !{!"0x2ca50580.w256.b0", !172, i64 0}
!172 = !{!"0x2ca50580.w512.b0", !173, i64 0}
!173 = !{!"0x2ca50580.w1024.b0", !174, i64 0}
!174 = !{!"0x2ca50580", !32, i64 0}
!175 = !{!176, !176, i64 0}
!176 = !{!"0x2ca50580.w8.b8", !167, i64 0}
!177 = !{!178, !178, i64 0}
!178 = !{!"0x2cb6c120.w8.b8", !179, i64 0}
!179 = !{!"0x2cb6c120.w16.b0", !180, i64 0}
!180 = !{!"0x2cb6c120.w32.b0", !181, i64 0}
!181 = !{!"0x2cb6c120.w64.b0", !182, i64 0}
!182 = !{!"0x2cb6c120.w128.b0", !183, i64 0}
!183 = !{!"0x2cb6c120.w256.b0", !184, i64 0}
!184 = !{!"0x2cb6c120.w512.b0", !185, i64 0}
!185 = !{!"0x2cb6c120.w1024.b0", !186, i64 0}
!186 = !{!"0x2cb6c120", !32, i64 0}
!187 = !{!188, !188, i64 0}
!188 = !{!"0x2caad0b0.w8.b0", !189, i64 0}
!189 = !{!"0x2caad0b0.w16.b0", !190, i64 0}
!190 = !{!"0x2caad0b0.w32.b0", !191, i64 0}
!191 = !{!"0x2caad0b0.w64.b0", !192, i64 0}
!192 = !{!"0x2caad0b0.w128.b0", !193, i64 0}
!193 = !{!"0x2caad0b0.w256.b0", !194, i64 0}
!194 = !{!"0x2caad0b0.w512.b0", !195, i64 0}
!195 = !{!"0x2caad0b0.w1024.b0", !196, i64 0}
!196 = !{!"0x2caad0b0", !32, i64 0}
!197 = !{!198, !198, i64 0}
!198 = !{!"0x2caad0b0.w8.b8", !189, i64 0}
!199 = !{!200, !200, i64 0}
!200 = !{!"0x2caae040.w8.b8", !201, i64 0}
!201 = !{!"0x2caae040.w16.b0", !202, i64 0}
!202 = !{!"0x2caae040.w32.b0", !203, i64 0}
!203 = !{!"0x2caae040.w64.b0", !204, i64 0}
!204 = !{!"0x2caae040.w128.b0", !205, i64 0}
!205 = !{!"0x2caae040.w256.b0", !206, i64 0}
!206 = !{!"0x2caae040.w512.b0", !207, i64 0}
!207 = !{!"0x2caae040.w1024.b0", !208, i64 0}
!208 = !{!"0x2caae040", !32, i64 0}
!209 = !{!210, !210, i64 0}
!210 = !{!"0x2cd3efc0.w8.b0", !211, i64 0}
!211 = !{!"0x2cd3efc0.w16.b0", !212, i64 0}
!212 = !{!"0x2cd3efc0.w32.b0", !213, i64 0}
!213 = !{!"0x2cd3efc0.w64.b0", !214, i64 0}
!214 = !{!"0x2cd3efc0.w128.b0", !215, i64 0}
!215 = !{!"0x2cd3efc0.w256.b0", !216, i64 0}
!216 = !{!"0x2cd3efc0.w512.b0", !217, i64 0}
!217 = !{!"0x2cd3efc0.w1024.b0", !218, i64 0}
!218 = !{!"0x2cd3efc0", !32, i64 0}
!219 = !{!220, !220, i64 0}
!220 = !{!"0x2cd3efc0.w8.b8", !211, i64 0}
!221 = !{!222, !222, i64 0}
!222 = !{!"0x2cbaedc0.w8.b8", !223, i64 0}
!223 = !{!"0x2cbaedc0.w16.b0", !224, i64 0}
!224 = !{!"0x2cbaedc0.w32.b0", !225, i64 0}
!225 = !{!"0x2cbaedc0.w64.b0", !226, i64 0}
!226 = !{!"0x2cbaedc0.w128.b0", !227, i64 0}
!227 = !{!"0x2cbaedc0.w256.b0", !228, i64 0}
!228 = !{!"0x2cbaedc0.w512.b0", !229, i64 0}
!229 = !{!"0x2cbaedc0.w1024.b0", !230, i64 0}
!230 = !{!"0x2cbaedc0", !32, i64 0}
!231 = distinct !DISubprogram(name: "qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_", scope: !1, file: !1, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !234)
!232 = !DISubroutineType(types: !233)
!233 = !{!18, !81, !76, !86, !86, !86, !86}
!234 = !{!235, !236, !237, !238, !239, !240}
!235 = !DILocalVariable(name: "LUT", arg: 1, scope: !231, file: !1, type: !81)
!236 = !DILocalVariable(name: "A", arg: 2, scope: !231, file: !1, type: !76)
!237 = !DILocalVariable(name: "Scales", arg: 3, scope: !231, file: !1, type: !86)
!238 = !DILocalVariable(name: "LUT_Scales", arg: 4, scope: !231, file: !1, type: !86)
!239 = !DILocalVariable(name: "LUT_Biases", arg: 5, scope: !231, file: !1, type: !86)
!240 = !DILocalVariable(name: "C", arg: 6, scope: !231, file: !1, type: !86)
!241 = !DILocation(line: 0, scope: !231)
!242 = !DILocalVariable(name: "m.outer", scope: !231, file: !1, type: !18)
!243 = !DILocalVariable(name: "CBits", scope: !231, file: !1, type: !86)
!244 = !DILocalVariable(name: "C.global", scope: !231, file: !1, type: !86)
!245 = !DILocalVariable(name: "k.outer", scope: !231, file: !1, type: !18)
!246 = !{!247, !247, i64 0}
!247 = !{!"__fp16", !248, i64 0}
!248 = !{!"omnipotent char", !249, i64 0}
!249 = !{!"Simple C++ TBAA"}
!250 = distinct !{!250, !251}
!251 = !{!"llvm.loop.mustprogress"}
!252 = !DILocalVariable(name: "m.c.outer", scope: !231, file: !1, type: !18)
!253 = !DILocalVariable(name: "cse_var_2", scope: !231, file: !1, type: !18)
!254 = !DILocalVariable(name: "cse_var_1", scope: !231, file: !1, type: !18)
!255 = !{!256, !256, i64 0}
!256 = !{!"0x2cb72f70", !32, i64 0}
!257 = !{!258, !258, i64 0}
!258 = !{!"0x2ca05980", !32, i64 0}
!259 = !DILocalVariable(name: "m.inner.outer", scope: !231, file: !1, type: !18)
!260 = !DILocalVariable(name: "cse_var_4", scope: !231, file: !1, type: !18)
!261 = !DILocalVariable(name: "cse_var_3", scope: !231, file: !1, type: !18)
!262 = !{!263, !263, i64 0}
!263 = !{!"0x2c97ebb0", !32, i64 0}
