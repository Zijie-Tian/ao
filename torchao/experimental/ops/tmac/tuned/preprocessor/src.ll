; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-linux-gnu"

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [89 x i8] c"Assert fail: num_args == 4, preprocessor_t4_int8_m6400_k3200_n1_b2: num_args should be 4\00", align 1
@.str.1 = private constant [107 x i8] c"Assert fail: not T.isnullptr(args), preprocessor_t4_int8_m6400_k3200_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [109 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), preprocessor_t4_int8_m6400_k3200_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [140 x i8] c"Assert fail: B_code == 3 or B_code == 13 or B_code == 7 or B_code == 4, preprocessor_t4_int8_m6400_k3200_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [176 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, preprocessor_t4_int8_m6400_k3200_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [176 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, preprocessor_t4_int8_m6400_k3200_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [152 x i8] c"Assert fail: QLUT_code == 3 or QLUT_code == 13 or QLUT_code == 7 or QLUT_code == 4, preprocessor_t4_int8_m6400_k3200_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [121 x i8] c"Assert fail: not T.isnullptr(B), preprocessor_t4_int8_m6400_k3200_n1_b2.B is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.8 = private constant [123 x i8] c"Assert fail: 2 == T.tvm_struct_get(B, 0, 4, \22int32\22), preprocessor_t4_int8_m6400_k3200_n1_b2.B.ndim is expected to equal 2\00", align 1
@.str.9 = private constant [139 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [141 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.11 = private constant [139 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [141 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.13 = private constant [127 x i8] c"Assert fail: not T.isnullptr(QLUT), preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [129 x i8] c"Assert fail: 3 == T.tvm_struct_get(QLUT, 0, 4, \22int32\22), preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.ndim is expected to equal 3\00", align 1
@.str.15 = private constant [245 x i8] c"Assert fail: T.tvm_struct_get(B, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(B, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(B, 0, 7, \22uint16\22) == T.uint16(1), preprocessor_t4_int8_m6400_k3200_n1_b2.B.dtype is expected to be float16\00", align 1
@.str.16 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_B_shape[0]) == 1, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.B.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_B_shape[0])\00", align 1
@.str.17 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_B_shape[1]) == 3200, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.B.shape[1] has an unsatisfied constraint: 3200 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_B_shape[1])\00", align 1
@.str.18 = private constant [167 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_B_strides[1]), preprocessor_t4_int8_m6400_k3200_n1_b2.B.strides: expected to be compact array\00", align 1
@.str.19 = private constant [209 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(B, 0, 8, \22uint64\22), Argument preprocessor_t4_int8_m6400_k3200_n1_b2.B.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(B, 0, 8, \22uint64\22)\00", align 1
@.str.20 = private constant [189 x i8] c"Assert fail: T.tvm_struct_get(B, 0, 10, \22int32\22) == 1, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.B.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(B, 0, 10, \22int32\22)\00", align 1
@.str.21 = private constant [116 x i8] c"Assert fail: not T.isnullptr(B), preprocessor_t4_int8_m6400_k3200_n1_b2.B is expected to have non-NULL data pointer\00", align 1
@.str.22 = private constant [281 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.23 = private constant [275 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[0]) == 1, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.24 = private constant [277 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[1]) == 50, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.25 = private constant [185 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Scales_strides[1]), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.26 = private constant [236 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [216 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [222 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.29 = private constant [134 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.30 = private constant [281 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.31 = private constant [275 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[0]) == 1, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.32 = private constant [277 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[1]) == 50, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.33 = private constant [185 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_LUT_Biases_strides[1]), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.34 = private constant [236 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [216 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [222 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [134 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [253 x i8] c"Assert fail: T.tvm_struct_get(QLUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(QLUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(QLUT, 0, 7, \22uint16\22) == T.uint16(1), preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.dtype is expected to be int8\00", align 1
@.str.39 = private constant [257 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_QLUT_shape[0]) == 1, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_QLUT_shape[0])\00", align 1
@.str.40 = private constant [261 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_QLUT_shape[1]) == 800, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_QLUT_shape[1])\00", align 1
@.str.41 = private constant [259 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_QLUT_shape[2]) == 16, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_QLUT_shape[2])\00", align 1
@.str.42 = private constant [255 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_QLUT_strides[2]) and 16 == T.Cast(\22int32\22, preprocessor_t4_int8_m6400_k3200_n1_b2_QLUT_strides[1]), preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.strides: expected to be compact array\00", align 1
@.str.43 = private constant [218 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(QLUT, 0, 8, \22uint64\22), Argument preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(QLUT, 0, 8, \22uint64\22)\00", align 1
@.str.44 = private constant [198 x i8] c"Assert fail: T.tvm_struct_get(QLUT, 0, 10, \22int32\22) == 1, Argument preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(QLUT, 0, 10, \22int32\22)\00", align 1
@.str.45 = private constant [204 x i8] c"Assert fail: dev_id == T.tvm_struct_get(QLUT, 0, 9, \22int32\22), Argument preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(QLUT, 0, 9, \22int32\22)\00", align 1
@.str.46 = private constant [122 x i8] c"Assert fail: not T.isnullptr(QLUT), preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT is expected to have non-NULL data pointer\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [39 x i8] c"preprocessor_t4_int8_m6400_k3200_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @preprocessor_t4_int8_m6400_k3200_n1_b2(i8* noalias readonly %args, i32* noalias readonly %arg_type_ids, i32 %num_args, i8* noalias nocapture readnone %out_ret_value, i32* noalias nocapture readnone %out_ret_tcode, i8* noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !15 {
entry:
  call void @llvm.dbg.value(metadata i8* %args, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32* %arg_type_ids, metadata !23, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !24, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %out_ret_value, metadata !25, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i32* %out_ret_tcode, metadata !26, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.value(metadata i8* %resource_handle, metadata !27, metadata !DIExpression()), !dbg !28
  %0 = icmp eq i32 %num_args, 4, !dbg !28
  br i1 %0, label %assert_end, label %assert_fail, !dbg !28, !prof !29

common.ret:                                       ; preds = %assert_end106, %assert_fail105, %assert_fail103, %assert_fail101, %assert_fail99, %assert_fail97, %assert_fail93, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail83, %assert_fail81, %assert_fail79, %assert_fail77, %assert_fail73, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail61, %assert_fail59, %assert_fail55, %assert_fail53, %assert_fail51, %assert_fail49, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail37, %assert_fail33, %assert_fail31, %assert_fail27, %assert_fail25, %assert_fail21, %assert_fail19, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail51 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail77 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail93 ], [ -1, %assert_fail97 ], [ -1, %assert_fail99 ], [ -1, %assert_fail101 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ 0, %assert_end106 ]
  ret i32 %common.ret.op, !dbg !28

assert_fail:                                      ; preds = %entry
  %1 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %1(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end:                                       ; preds = %entry
  %.not = icmp eq i8* %args, null, !dbg !28
  br i1 %.not, label %assert_fail1, label %assert_end2, !dbg !28, !prof !33

assert_fail1:                                     ; preds = %assert_end
  %2 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %2(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end2:                                      ; preds = %assert_end
  %.not111 = icmp eq i32* %arg_type_ids, null, !dbg !28
  br i1 %.not111, label %assert_fail3, label %assert_end4, !dbg !28, !prof !33

assert_fail3:                                     ; preds = %assert_end2
  %3 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %3(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.2, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2
  %B.code = load i32, i32* %arg_type_ids, align 4, !dbg !28, !tbaa !34
  call void @llvm.dbg.declare(metadata i32 %B.code, metadata !45, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %B.code, metadata !45, metadata !DIExpression()), !dbg !28
  switch i32 %B.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !28

assert_fail5:                                     ; preds = %assert_end4
  %4 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %4(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.3, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %5 = getelementptr inbounds i32, i32* %arg_type_ids, i64 1, !dbg !28
  %LUT_Scales.code = load i32, i32* %5, align 4, !dbg !28, !tbaa !46
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !48, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !48, metadata !DIExpression()), !dbg !28
  switch i32 %LUT_Scales.code, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ], !dbg !28

assert_fail7:                                     ; preds = %assert_end6
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %6(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.4, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %7 = getelementptr inbounds i32, i32* %arg_type_ids, i64 2, !dbg !28
  %LUT_Biases.code = load i32, i32* %7, align 4, !dbg !28, !tbaa !49
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !52, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !52, metadata !DIExpression()), !dbg !28
  switch i32 %LUT_Biases.code, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ], !dbg !28

assert_fail9:                                     ; preds = %assert_end8
  %8 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %8(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.5, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  %9 = getelementptr inbounds i32, i32* %arg_type_ids, i64 3, !dbg !28
  %QLUT.code = load i32, i32* %9, align 4, !dbg !28, !tbaa !53
  call void @llvm.dbg.declare(metadata i32 %QLUT.code, metadata !55, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %QLUT.code, metadata !55, metadata !DIExpression()), !dbg !28
  switch i32 %QLUT.code, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ], !dbg !28

assert_fail11:                                    ; preds = %assert_end10
  %10 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %10(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %11 = bitcast i8* %args to i8**, !dbg !28
  %B = load i8*, i8** %11, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %B, metadata !56, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %B, metadata !56, metadata !DIExpression()), !dbg !28
  %12 = getelementptr inbounds i8, i8* %args, i64 8, !dbg !28
  %13 = bitcast i8* %12 to i8**, !dbg !28
  %LUT_Scales = load i8*, i8** %13, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT_Scales, metadata !57, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT_Scales, metadata !57, metadata !DIExpression()), !dbg !28
  %14 = getelementptr inbounds i8, i8* %args, i64 16, !dbg !28
  %15 = bitcast i8* %14 to i8**, !dbg !28
  %LUT_Biases = load i8*, i8** %15, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT_Biases, metadata !58, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %LUT_Biases, metadata !58, metadata !DIExpression()), !dbg !28
  %16 = getelementptr inbounds i8, i8* %args, i64 24, !dbg !28
  %17 = bitcast i8* %16 to i8**, !dbg !28
  %QLUT = load i8*, i8** %17, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %QLUT, metadata !59, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %QLUT, metadata !59, metadata !DIExpression()), !dbg !28
  %.not112 = icmp eq i8* %B, null, !dbg !28
  br i1 %.not112, label %assert_fail13, label %assert_end14, !dbg !28, !prof !33

assert_fail13:                                    ; preds = %assert_end12
  %18 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %18(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.7, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %19 = getelementptr inbounds i8, i8* %B, i64 16, !dbg !28
  %20 = bitcast i8* %19 to i32*, !dbg !28
  %21 = load i32, i32* %20, align 4, !dbg !28
  %22 = icmp eq i32 %21, 2, !dbg !28
  br i1 %22, label %assert_end16, label %assert_fail15, !dbg !28, !prof !29

assert_fail15:                                    ; preds = %assert_end14
  %23 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %23(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.8, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %24 = getelementptr inbounds i8, i8* %B, i64 24, !dbg !28
  %25 = bitcast i8* %24 to i64**, !dbg !28
  %preprocessor_t4_int8_m6400_k3200_n1_b2.B.shape = load i64*, i64** %25, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.B.shape, metadata !60, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.B.shape, metadata !60, metadata !DIExpression()), !dbg !28
  %26 = getelementptr inbounds i8, i8* %B, i64 32, !dbg !28
  %27 = bitcast i8* %26 to i64**, !dbg !28
  %preprocessor_t4_int8_m6400_k3200_n1_b2.B.strides = load i64*, i64** %27, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.B.strides, metadata !63, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.B.strides, metadata !63, metadata !DIExpression()), !dbg !28
  %28 = getelementptr inbounds i8, i8* %B, i64 12, !dbg !28
  %29 = bitcast i8* %28 to i32*, !dbg !28
  %dev_id = load i32, i32* %29, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !64, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !64, metadata !DIExpression()), !dbg !28
  %30 = bitcast i8* %B to half**, !dbg !28
  %B_void_ptr113 = load half*, half** %30, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %B_void_ptr113, metadata !65, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %B_void_ptr113, metadata !65, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %B_void_ptr113, i64 64) ], !dbg !28
  %.not114 = icmp eq i8* %LUT_Scales, null, !dbg !28
  br i1 %.not114, label %assert_fail19, label %assert_end20, !dbg !28, !prof !33

assert_fail19:                                    ; preds = %assert_end16
  %31 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %31(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.9, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end20:                                     ; preds = %assert_end16
  %32 = getelementptr inbounds i8, i8* %LUT_Scales, i64 16, !dbg !28
  %33 = bitcast i8* %32 to i32*, !dbg !28
  %34 = load i32, i32* %33, align 4, !dbg !28
  %35 = icmp eq i32 %34, 2, !dbg !28
  br i1 %35, label %assert_end22, label %assert_fail21, !dbg !28, !prof !29

assert_fail21:                                    ; preds = %assert_end20
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %36(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.10, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %37 = getelementptr inbounds i8, i8* %LUT_Scales, i64 24, !dbg !28
  %38 = bitcast i8* %37 to i64**, !dbg !28
  %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape = load i64*, i64** %38, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, metadata !68, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, metadata !68, metadata !DIExpression()), !dbg !28
  %39 = getelementptr inbounds i8, i8* %LUT_Scales, i64 32, !dbg !28
  %40 = bitcast i8* %39 to i64**, !dbg !28
  %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides = load i64*, i64** %40, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, metadata !69, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, metadata !69, metadata !DIExpression()), !dbg !28
  %41 = bitcast i8* %LUT_Scales to half**, !dbg !28
  %LUT_Scales_void_ptr115 = load half*, half** %41, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Scales_void_ptr115, metadata !70, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Scales_void_ptr115, metadata !70, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %LUT_Scales_void_ptr115, i64 64) ], !dbg !28
  %.not116 = icmp eq i8* %LUT_Biases, null, !dbg !28
  br i1 %.not116, label %assert_fail25, label %assert_end26, !dbg !28, !prof !33

assert_fail25:                                    ; preds = %assert_end22
  %42 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %42(i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.11, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end26:                                     ; preds = %assert_end22
  %43 = getelementptr inbounds i8, i8* %LUT_Biases, i64 16, !dbg !28
  %44 = bitcast i8* %43 to i32*, !dbg !28
  %45 = load i32, i32* %44, align 4, !dbg !28
  %46 = icmp eq i32 %45, 2, !dbg !28
  br i1 %46, label %assert_end28, label %assert_fail27, !dbg !28, !prof !29

assert_fail27:                                    ; preds = %assert_end26
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %47(i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.12, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %48 = getelementptr inbounds i8, i8* %LUT_Biases, i64 24, !dbg !28
  %49 = bitcast i8* %48 to i64**, !dbg !28
  %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape = load i64*, i64** %49, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, metadata !71, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, metadata !71, metadata !DIExpression()), !dbg !28
  %50 = getelementptr inbounds i8, i8* %LUT_Biases, i64 32, !dbg !28
  %51 = bitcast i8* %50 to i64**, !dbg !28
  %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides = load i64*, i64** %51, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, metadata !72, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, metadata !72, metadata !DIExpression()), !dbg !28
  %52 = bitcast i8* %LUT_Biases to half**, !dbg !28
  %LUT_Biases_void_ptr117 = load half*, half** %52, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Biases_void_ptr117, metadata !73, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata half* %LUT_Biases_void_ptr117, metadata !73, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(half* %LUT_Biases_void_ptr117, i64 64) ], !dbg !28
  %.not118 = icmp eq i8* %QLUT, null, !dbg !28
  br i1 %.not118, label %assert_fail31, label %assert_end32, !dbg !28, !prof !33

assert_fail31:                                    ; preds = %assert_end28
  %53 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %53(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.13, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end32:                                     ; preds = %assert_end28
  %54 = getelementptr inbounds i8, i8* %QLUT, i64 16, !dbg !28
  %55 = bitcast i8* %54 to i32*, !dbg !28
  %56 = load i32, i32* %55, align 4, !dbg !28
  %57 = icmp eq i32 %56, 3, !dbg !28
  br i1 %57, label %assert_end34, label %assert_fail33, !dbg !28, !prof !29

assert_fail33:                                    ; preds = %assert_end32
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %58(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.14, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %59 = getelementptr inbounds i8, i8* %QLUT, i64 24, !dbg !28
  %60 = bitcast i8* %59 to i64**, !dbg !28
  %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape = load i64*, i64** %60, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape, metadata !74, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape, metadata !74, metadata !DIExpression()), !dbg !28
  %61 = getelementptr inbounds i8, i8* %QLUT, i64 32, !dbg !28
  %62 = bitcast i8* %61 to i64**, !dbg !28
  %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.strides = load i64*, i64** %62, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.strides, metadata !75, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.strides, metadata !75, metadata !DIExpression()), !dbg !28
  %63 = bitcast i8* %QLUT to i8**, !dbg !28
  %QLUT109 = load i8*, i8** %63, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8* %QLUT109, metadata !76, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i8* %QLUT109, metadata !76, metadata !DIExpression()), !dbg !28
  call void @llvm.assume(i1 true) [ "align"(i8* %QLUT109, i64 64) ], !dbg !28
  %64 = getelementptr inbounds i8, i8* %B, i64 20, !dbg !28
  %65 = load i8, i8* %64, align 1, !dbg !28
  %66 = icmp eq i8 %65, 2, !dbg !28
  %67 = getelementptr inbounds i8, i8* %B, i64 21, !dbg !28
  %68 = load i8, i8* %67, align 1, !dbg !28
  %69 = icmp eq i8 %68, 16, !dbg !28
  %70 = and i1 %66, %69, !dbg !28
  %71 = getelementptr inbounds i8, i8* %B, i64 22, !dbg !28
  %72 = bitcast i8* %71 to i16*, !dbg !28
  %73 = load i16, i16* %72, align 2, !dbg !28
  %74 = icmp eq i16 %73, 1, !dbg !28
  %75 = and i1 %70, %74, !dbg !28
  br i1 %75, label %assert_end38, label %assert_fail37, !dbg !28, !prof !29

assert_fail37:                                    ; preds = %assert_end34
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %76(i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.15, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end38:                                     ; preds = %assert_end34
  %77 = load i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.B.shape, align 8, !dbg !28, !tbaa !79
  %78 = trunc i64 %77 to i32, !dbg !28
  %79 = icmp eq i32 %78, 1, !dbg !28
  br i1 %79, label %assert_end40, label %assert_fail39, !dbg !28, !prof !29

assert_fail39:                                    ; preds = %assert_end38
  %80 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %80(i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str.16, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end40:                                     ; preds = %assert_end38
  %81 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.B.shape, i64 1, !dbg !28
  %82 = load i64, i64* %81, align 8, !dbg !28, !tbaa !89
  %83 = trunc i64 %82 to i32, !dbg !28
  %84 = icmp eq i32 %83, 3200, !dbg !28
  br i1 %84, label %assert_end42, label %assert_fail41, !dbg !28, !prof !29

assert_fail41:                                    ; preds = %assert_end40
  %85 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %85(i8* getelementptr inbounds ([254 x i8], [254 x i8]* @.str.17, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %.not119 = icmp eq i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.B.strides, null, !dbg !28
  br i1 %.not119, label %if_end, label %if_then, !dbg !28, !prof !33

if_then:                                          ; preds = %assert_end42
  %86 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.B.strides, i64 1, !dbg !28
  %87 = load i64, i64* %86, align 8, !dbg !28, !tbaa !91
  %88 = trunc i64 %87 to i32, !dbg !28
  %89 = icmp eq i32 %88, 1, !dbg !28
  br i1 %89, label %if_end, label %assert_fail43, !dbg !28, !prof !29

if_end:                                           ; preds = %if_then, %assert_end42
  %90 = getelementptr inbounds i8, i8* %B, i64 40, !dbg !28
  %91 = bitcast i8* %90 to i64*, !dbg !28
  %92 = load i64, i64* %91, align 8, !dbg !28
  %93 = icmp eq i64 %92, 0, !dbg !28
  br i1 %93, label %assert_end46, label %assert_fail45, !dbg !28, !prof !29

assert_fail43:                                    ; preds = %if_then
  %94 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %94(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.18, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail45:                                    ; preds = %if_end
  %95 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %95(i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.19, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end46:                                     ; preds = %if_end
  %96 = getelementptr inbounds i8, i8* %B, i64 8, !dbg !28
  %97 = bitcast i8* %96 to i32*, !dbg !28
  %98 = load i32, i32* %97, align 4, !dbg !28
  %99 = icmp eq i32 %98, 1, !dbg !28
  br i1 %99, label %assert_end48, label %assert_fail47, !dbg !28, !prof !29

assert_fail47:                                    ; preds = %assert_end46
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %100(i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.20, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %.not120 = icmp eq half* %B_void_ptr113, null, !dbg !28
  br i1 %.not120, label %assert_fail49, label %assert_end50, !dbg !28, !prof !33

assert_fail49:                                    ; preds = %assert_end48
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %101(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.21, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end50:                                     ; preds = %assert_end48
  %102 = getelementptr inbounds i8, i8* %LUT_Scales, i64 20, !dbg !28
  %103 = load i8, i8* %102, align 1, !dbg !28
  %104 = icmp eq i8 %103, 2, !dbg !28
  %105 = getelementptr inbounds i8, i8* %LUT_Scales, i64 21, !dbg !28
  %106 = load i8, i8* %105, align 1, !dbg !28
  %107 = icmp eq i8 %106, 16, !dbg !28
  %108 = and i1 %104, %107, !dbg !28
  %109 = getelementptr inbounds i8, i8* %LUT_Scales, i64 22, !dbg !28
  %110 = bitcast i8* %109 to i16*, !dbg !28
  %111 = load i16, i16* %110, align 2, !dbg !28
  %112 = icmp eq i16 %111, 1, !dbg !28
  %113 = and i1 %108, %112, !dbg !28
  br i1 %113, label %assert_end52, label %assert_fail51, !dbg !28, !prof !29

assert_fail51:                                    ; preds = %assert_end50
  %114 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %114(i8* getelementptr inbounds ([281 x i8], [281 x i8]* @.str.22, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end52:                                     ; preds = %assert_end50
  %115 = load i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, align 8, !dbg !28, !tbaa !101
  %116 = trunc i64 %115 to i32, !dbg !28
  %117 = icmp eq i32 %116, 1, !dbg !28
  br i1 %117, label %assert_end54, label %assert_fail53, !dbg !28, !prof !29

assert_fail53:                                    ; preds = %assert_end52
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %118(i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.23, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end54:                                     ; preds = %assert_end52
  %119 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape, i64 1, !dbg !28
  %120 = load i64, i64* %119, align 8, !dbg !28, !tbaa !111
  %121 = trunc i64 %120 to i32, !dbg !28
  %122 = icmp eq i32 %121, 50, !dbg !28
  br i1 %122, label %assert_end56, label %assert_fail55, !dbg !28, !prof !29

assert_fail55:                                    ; preds = %assert_end54
  %123 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %123(i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.24, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %.not121 = icmp eq i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, null, !dbg !28
  br i1 %.not121, label %if_end58, label %if_then57, !dbg !28, !prof !33

if_then57:                                        ; preds = %assert_end56
  %124 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides, i64 1, !dbg !28
  %125 = load i64, i64* %124, align 8, !dbg !28, !tbaa !113
  %126 = trunc i64 %125 to i32, !dbg !28
  %127 = icmp eq i32 %126, 1, !dbg !28
  br i1 %127, label %if_end58, label %assert_fail59, !dbg !28, !prof !29

if_end58:                                         ; preds = %if_then57, %assert_end56
  %128 = getelementptr inbounds i8, i8* %LUT_Scales, i64 40, !dbg !28
  %129 = bitcast i8* %128 to i64*, !dbg !28
  %130 = load i64, i64* %129, align 8, !dbg !28
  %131 = icmp eq i64 %130, 0, !dbg !28
  br i1 %131, label %assert_end62, label %assert_fail61, !dbg !28, !prof !29

assert_fail59:                                    ; preds = %if_then57
  %132 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %132(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.25, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail61:                                    ; preds = %if_end58
  %133 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %133(i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.26, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end62:                                     ; preds = %if_end58
  %134 = getelementptr inbounds i8, i8* %LUT_Scales, i64 8, !dbg !28
  %135 = bitcast i8* %134 to i32*, !dbg !28
  %136 = load i32, i32* %135, align 4, !dbg !28
  %137 = icmp eq i32 %136, 1, !dbg !28
  br i1 %137, label %assert_end64, label %assert_fail63, !dbg !28, !prof !29

assert_fail63:                                    ; preds = %assert_end62
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %138(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.27, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end64:                                     ; preds = %assert_end62
  %139 = getelementptr inbounds i8, i8* %LUT_Scales, i64 12, !dbg !28
  %140 = bitcast i8* %139 to i32*, !dbg !28
  %141 = load i32, i32* %140, align 4, !dbg !28
  %142 = icmp eq i32 %dev_id, %141, !dbg !28
  br i1 %142, label %assert_end66, label %assert_fail65, !dbg !28, !prof !29

assert_fail65:                                    ; preds = %assert_end64
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %143(i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.28, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %.not122 = icmp eq half* %LUT_Scales_void_ptr115, null, !dbg !28
  br i1 %.not122, label %assert_fail67, label %assert_end68, !dbg !28, !prof !33

assert_fail67:                                    ; preds = %assert_end66
  %144 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %144(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.29, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %145 = getelementptr inbounds i8, i8* %LUT_Biases, i64 20, !dbg !28
  %146 = load i8, i8* %145, align 1, !dbg !28
  %147 = icmp eq i8 %146, 2, !dbg !28
  %148 = getelementptr inbounds i8, i8* %LUT_Biases, i64 21, !dbg !28
  %149 = load i8, i8* %148, align 1, !dbg !28
  %150 = icmp eq i8 %149, 16, !dbg !28
  %151 = and i1 %147, %150, !dbg !28
  %152 = getelementptr inbounds i8, i8* %LUT_Biases, i64 22, !dbg !28
  %153 = bitcast i8* %152 to i16*, !dbg !28
  %154 = load i16, i16* %153, align 2, !dbg !28
  %155 = icmp eq i16 %154, 1, !dbg !28
  %156 = and i1 %151, %155, !dbg !28
  br i1 %156, label %assert_end70, label %assert_fail69, !dbg !28, !prof !29

assert_fail69:                                    ; preds = %assert_end68
  %157 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %157(i8* getelementptr inbounds ([281 x i8], [281 x i8]* @.str.30, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %158 = load i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, align 8, !dbg !28, !tbaa !123
  %159 = trunc i64 %158 to i32, !dbg !28
  %160 = icmp eq i32 %159, 1, !dbg !28
  br i1 %160, label %assert_end72, label %assert_fail71, !dbg !28, !prof !29

assert_fail71:                                    ; preds = %assert_end70
  %161 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %161(i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.31, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %162 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape, i64 1, !dbg !28
  %163 = load i64, i64* %162, align 8, !dbg !28, !tbaa !133
  %164 = trunc i64 %163 to i32, !dbg !28
  %165 = icmp eq i32 %164, 50, !dbg !28
  br i1 %165, label %assert_end74, label %assert_fail73, !dbg !28, !prof !29

assert_fail73:                                    ; preds = %assert_end72
  %166 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %166(i8* getelementptr inbounds ([277 x i8], [277 x i8]* @.str.32, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %.not123 = icmp eq i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, null, !dbg !28
  br i1 %.not123, label %if_end76, label %if_then75, !dbg !28, !prof !33

if_then75:                                        ; preds = %assert_end74
  %167 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides, i64 1, !dbg !28
  %168 = load i64, i64* %167, align 8, !dbg !28, !tbaa !135
  %169 = trunc i64 %168 to i32, !dbg !28
  %170 = icmp eq i32 %169, 1, !dbg !28
  br i1 %170, label %if_end76, label %assert_fail77, !dbg !28, !prof !29

if_end76:                                         ; preds = %if_then75, %assert_end74
  %171 = getelementptr inbounds i8, i8* %LUT_Biases, i64 40, !dbg !28
  %172 = bitcast i8* %171 to i64*, !dbg !28
  %173 = load i64, i64* %172, align 8, !dbg !28
  %174 = icmp eq i64 %173, 0, !dbg !28
  br i1 %174, label %assert_end80, label %assert_fail79, !dbg !28, !prof !29

assert_fail77:                                    ; preds = %if_then75
  %175 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %175(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.33, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail79:                                    ; preds = %if_end76
  %176 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %176(i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.34, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end80:                                     ; preds = %if_end76
  %177 = getelementptr inbounds i8, i8* %LUT_Biases, i64 8, !dbg !28
  %178 = bitcast i8* %177 to i32*, !dbg !28
  %179 = load i32, i32* %178, align 4, !dbg !28
  %180 = icmp eq i32 %179, 1, !dbg !28
  br i1 %180, label %assert_end82, label %assert_fail81, !dbg !28, !prof !29

assert_fail81:                                    ; preds = %assert_end80
  %181 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %181(i8* getelementptr inbounds ([216 x i8], [216 x i8]* @.str.35, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end82:                                     ; preds = %assert_end80
  %182 = getelementptr inbounds i8, i8* %LUT_Biases, i64 12, !dbg !28
  %183 = bitcast i8* %182 to i32*, !dbg !28
  %184 = load i32, i32* %183, align 4, !dbg !28
  %185 = icmp eq i32 %dev_id, %184, !dbg !28
  br i1 %185, label %assert_end84, label %assert_fail83, !dbg !28, !prof !29

assert_fail83:                                    ; preds = %assert_end82
  %186 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %186(i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.36, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %.not124 = icmp eq half* %LUT_Biases_void_ptr117, null, !dbg !28
  br i1 %.not124, label %assert_fail85, label %assert_end86, !dbg !28, !prof !33

assert_fail85:                                    ; preds = %assert_end84
  %187 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %187(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str.37, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %188 = getelementptr inbounds i8, i8* %QLUT, i64 20, !dbg !28
  %189 = load i8, i8* %188, align 1, !dbg !28
  %190 = icmp eq i8 %189, 0, !dbg !28
  %191 = getelementptr inbounds i8, i8* %QLUT, i64 21, !dbg !28
  %192 = load i8, i8* %191, align 1, !dbg !28
  %193 = icmp eq i8 %192, 8, !dbg !28
  %194 = and i1 %190, %193, !dbg !28
  %195 = getelementptr inbounds i8, i8* %QLUT, i64 22, !dbg !28
  %196 = bitcast i8* %195 to i16*, !dbg !28
  %197 = load i16, i16* %196, align 2, !dbg !28
  %198 = icmp eq i16 %197, 1, !dbg !28
  %199 = and i1 %194, %198, !dbg !28
  br i1 %199, label %assert_end88, label %assert_fail87, !dbg !28, !prof !29

assert_fail87:                                    ; preds = %assert_end86
  %200 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %200(i8* getelementptr inbounds ([253 x i8], [253 x i8]* @.str.38, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %201 = load i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape, align 8, !dbg !28, !tbaa !145
  %202 = trunc i64 %201 to i32, !dbg !28
  %203 = icmp eq i32 %202, 1, !dbg !28
  br i1 %203, label %assert_end90, label %assert_fail89, !dbg !28, !prof !29

assert_fail89:                                    ; preds = %assert_end88
  %204 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %204(i8* getelementptr inbounds ([257 x i8], [257 x i8]* @.str.39, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %205 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape, i64 1, !dbg !28
  %206 = load i64, i64* %205, align 8, !dbg !28, !tbaa !155
  %207 = trunc i64 %206 to i32, !dbg !28
  %208 = icmp eq i32 %207, 800, !dbg !28
  br i1 %208, label %assert_end92, label %assert_fail91, !dbg !28, !prof !29

assert_fail91:                                    ; preds = %assert_end90
  %209 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %209(i8* getelementptr inbounds ([261 x i8], [261 x i8]* @.str.40, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end92:                                     ; preds = %assert_end90
  %210 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape, i64 2, !dbg !28
  %211 = load i64, i64* %210, align 8, !dbg !28, !tbaa !157
  %212 = trunc i64 %211 to i32, !dbg !28
  %213 = icmp eq i32 %212, 16, !dbg !28
  br i1 %213, label %assert_end94, label %assert_fail93, !dbg !28, !prof !29

assert_fail93:                                    ; preds = %assert_end92
  %214 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %214(i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str.41, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end94:                                     ; preds = %assert_end92
  %.not125 = icmp eq i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.strides, null, !dbg !28
  br i1 %.not125, label %if_end96, label %if_then95, !dbg !28, !prof !33

if_then95:                                        ; preds = %assert_end94
  %215 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.strides, i64 2, !dbg !28
  %216 = load i64, i64* %215, align 8, !dbg !28, !tbaa !160
  %217 = trunc i64 %216 to i32, !dbg !28
  %218 = icmp eq i32 %217, 1, !dbg !28
  %219 = getelementptr inbounds i64, i64* %preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.strides, i64 1, !dbg !28
  %220 = load i64, i64* %219, align 8, !dbg !28, !tbaa !170
  %221 = trunc i64 %220 to i32, !dbg !28
  %222 = icmp eq i32 %221, 16, !dbg !28
  %223 = and i1 %218, %222, !dbg !28
  br i1 %223, label %if_end96, label %assert_fail97, !dbg !28, !prof !29

if_end96:                                         ; preds = %if_then95, %assert_end94
  %224 = getelementptr inbounds i8, i8* %QLUT, i64 40, !dbg !28
  %225 = bitcast i8* %224 to i64*, !dbg !28
  %226 = load i64, i64* %225, align 8, !dbg !28
  %227 = icmp eq i64 %226, 0, !dbg !28
  br i1 %227, label %assert_end100, label %assert_fail99, !dbg !28, !prof !29

assert_fail97:                                    ; preds = %if_then95
  %228 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %228(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @.str.42, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_fail99:                                    ; preds = %if_end96
  %229 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %229(i8* getelementptr inbounds ([218 x i8], [218 x i8]* @.str.43, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end100:                                    ; preds = %if_end96
  %230 = getelementptr inbounds i8, i8* %QLUT, i64 8, !dbg !28
  %231 = bitcast i8* %230 to i32*, !dbg !28
  %232 = load i32, i32* %231, align 4, !dbg !28
  %233 = icmp eq i32 %232, 1, !dbg !28
  br i1 %233, label %assert_end102, label %assert_fail101, !dbg !28, !prof !29

assert_fail101:                                   ; preds = %assert_end100
  %234 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %234(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.44, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end102:                                    ; preds = %assert_end100
  %235 = getelementptr inbounds i8, i8* %QLUT, i64 12, !dbg !28
  %236 = bitcast i8* %235 to i32*, !dbg !28
  %237 = load i32, i32* %236, align 4, !dbg !28
  %238 = icmp eq i32 %dev_id, %237, !dbg !28
  br i1 %238, label %assert_end104, label %assert_fail103, !dbg !28, !prof !29

assert_fail103:                                   ; preds = %assert_end102
  %239 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %239(i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.45, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %.not126 = icmp eq i8* %QLUT109, null, !dbg !28
  br i1 %.not126, label %assert_fail105, label %assert_end106, !dbg !28, !prof !33

assert_fail105:                                   ; preds = %assert_end104
  %240 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !dbg !28, !tbaa !30
  tail call void %240(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.46, i64 0, i64 0)), !dbg !28
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  tail call fastcc void @preprocessor_t4_int8_m6400_k3200_n1_b2_compute_(half* nonnull %LUT_Scales_void_ptr115, half* nonnull %B_void_ptr113, i8* nonnull %QLUT109, half* nonnull %LUT_Biases_void_ptr117), !dbg !28
  br label %common.ret
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nofree noinline nosync nounwind
define internal fastcc void @preprocessor_t4_int8_m6400_k3200_n1_b2_compute_(half* noalias nocapture align 64 %LUT_Scales, half* noalias align 64 %B, i8* noalias writeonly align 64 %QLUT, half* noalias nocapture writeonly align 64 %LUT_Biases) unnamed_addr #3 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata half* %LUT_Scales, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata half* %B, metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i8* %QLUT, metadata !179, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata half* %LUT_Biases, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i32 0, metadata !182, metadata !DIExpression()), !dbg !181
  br label %for_body_kk.outer, !dbg !181

for_body_kk.outer:                                ; preds = %entry, %for_body_kk.outer
  %indvars.iv12 = phi i64 [ 0, %entry ], [ %indvars.iv.next13, %for_body_kk.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv12, metadata !182, metadata !DIExpression()), !dbg !181
  %0 = getelementptr inbounds half, half* %LUT_Scales, i64 %indvars.iv12, !dbg !181
  %1 = shl nsw i64 %indvars.iv12, 6
  call void @llvm.dbg.declare(metadata i32 0, metadata !183, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !181
  %2 = getelementptr inbounds half, half* %B, i64 %1, !dbg !181
  %3 = bitcast half* %2 to <8 x half>*, !dbg !181
  %4 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0v8f16(<8 x half>* %3) #8, !dbg !181
  %5 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %4, 0, !dbg !181
  %6 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %4, 1, !dbg !181
  %7 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %4, 2, !dbg !181
  %8 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %4, 3, !dbg !181
  %9 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %5) #8, !dbg !181
  %10 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %6) #8, !dbg !181
  %11 = fadd <8 x half> %9, %10, !dbg !181
  %12 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %7) #8, !dbg !181
  %13 = fadd <8 x half> %12, %11, !dbg !181
  %14 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %8) #8, !dbg !181
  %15 = fadd <8 x half> %14, %13, !dbg !181
  %16 = tail call half @llvm.aarch64.neon.fmaxv.f16.v8f16(<8 x half> %15) #8, !dbg !181
  %17 = fdiv half %16, 0xH57F0, !dbg !181
  %18 = fcmp ogt half %17, 0xH0000, !dbg !181
  %19 = select i1 %18, half %17, half 0xH0000, !dbg !181
  call void @llvm.dbg.declare(metadata i64 1, metadata !183, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata i64 1, metadata !183, metadata !DIExpression()), !dbg !181
  %20 = or i64 %1, 32, !dbg !181
  %21 = getelementptr inbounds half, half* %B, i64 %20, !dbg !181
  %22 = bitcast half* %21 to <8 x half>*, !dbg !181
  %23 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0v8f16(<8 x half>* nonnull %22) #8, !dbg !181
  %24 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %23, 0, !dbg !181
  %25 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %23, 1, !dbg !181
  %26 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %23, 2, !dbg !181
  %27 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %23, 3, !dbg !181
  %28 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %24) #8, !dbg !181
  %29 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %25) #8, !dbg !181
  %30 = fadd <8 x half> %28, %29, !dbg !181
  %31 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %26) #8, !dbg !181
  %32 = fadd <8 x half> %31, %30, !dbg !181
  %33 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %27) #8, !dbg !181
  %34 = fadd <8 x half> %33, %32, !dbg !181
  %35 = tail call half @llvm.aarch64.neon.fmaxv.f16.v8f16(<8 x half> %34) #8, !dbg !181
  %36 = fdiv half %35, 0xH57F0, !dbg !181
  %37 = fcmp olt half %19, %36, !dbg !181
  %38 = select i1 %37, half %36, half %19, !dbg !181
  call void @llvm.dbg.declare(metadata i64 2, metadata !183, metadata !DIExpression()), !dbg !181
  store half %38, half* %0, align 2, !dbg !181, !tbaa !184
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !181
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next13, metadata !182, metadata !DIExpression()), !dbg !181
  %exitcond15.not = icmp eq i64 %indvars.iv.next13, 50, !dbg !181
  br i1 %exitcond15.not, label %for_body_k.outer2, label %for_body_kk.outer, !dbg !181, !prof !33

for_body_k.outer2:                                ; preds = %for_body_kk.outer, %lut_ctor_g4_int8_k0_b2.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %lut_ctor_g4_int8_k0_b2.exit ], [ 0, %for_body_kk.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !183, metadata !DIExpression()), !dbg !181
  %39 = shl nuw nsw i64 %indvars.iv, 8, !dbg !181
  %40 = getelementptr inbounds i8, i8* %QLUT, i64 %39, !dbg !181
  %41 = shl nuw nsw i64 %indvars.iv, 6, !dbg !181
  %42 = getelementptr inbounds half, half* %B, i64 %41, !dbg !181
  %43 = getelementptr inbounds half, half* %LUT_Scales, i64 %indvars.iv, !dbg !181
  %44 = load half, half* %43, align 2, !dbg !181, !tbaa !184
  %45 = fcmp une half %44, 0xH0000, !dbg !181
  %46 = fdiv half 0xH3C00, %44, !dbg !181
  %47 = select i1 %45, half %46, half 0xH0000, !dbg !181
  %48 = insertelement <8 x half> undef, half %47, i64 0, !dbg !181
  %49 = shufflevector <8 x half> %48, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !181
  br label %50, !dbg !181

50:                                               ; preds = %50, %for_body_k.outer2
  %51 = phi i64 [ 0, %for_body_k.outer2 ], [ %414, %50 ], !dbg !181
  %52 = phi half [ 0xH0000, %for_body_k.outer2 ], [ %413, %50 ], !dbg !181
  %53 = shl nsw i64 %51, 5, !dbg !181
  %54 = getelementptr inbounds half, half* %42, i64 %53, !dbg !181
  %55 = bitcast half* %54 to <8 x half>*, !dbg !181
  %56 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0v8f16(<8 x half>* %55) #8, !dbg !181
  %57 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %56, 0, !dbg !181
  %58 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %56, 1, !dbg !181
  %59 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %56, 2, !dbg !181
  %60 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %56, 3, !dbg !181
  %61 = fsub <8 x half> %57, %58, !dbg !181
  %62 = fsub <8 x half> %61, %59, !dbg !181
  %63 = fsub <8 x half> %62, %60, !dbg !181
  %64 = fadd <8 x half> %57, %58, !dbg !181
  %65 = fsub <8 x half> %64, %59, !dbg !181
  %66 = fsub <8 x half> %65, %60, !dbg !181
  %67 = fadd <8 x half> %59, %61, !dbg !181
  %68 = fsub <8 x half> %67, %60, !dbg !181
  %69 = fadd <8 x half> %59, %64, !dbg !181
  %70 = fsub <8 x half> %69, %60, !dbg !181
  %71 = fadd <8 x half> %60, %62, !dbg !181
  %72 = fadd <8 x half> %60, %65, !dbg !181
  %73 = fadd <8 x half> %60, %67, !dbg !181
  %74 = fadd <8 x half> %60, %69, !dbg !181
  %75 = fneg <8 x half> %74, !dbg !181
  %76 = fneg <8 x half> %73, !dbg !181
  %77 = fneg <8 x half> %72, !dbg !181
  %78 = fneg <8 x half> %71, !dbg !181
  %79 = fneg <8 x half> %70, !dbg !181
  %80 = fneg <8 x half> %68, !dbg !181
  %81 = fneg <8 x half> %66, !dbg !181
  %82 = fneg <8 x half> %63, !dbg !181
  %83 = shufflevector <8 x half> %75, <8 x half> undef, <2 x i32> <i32 0, i32 1>, !dbg !181
  %84 = fpext <2 x half> %83 to <2 x float>, !dbg !181
  %85 = shufflevector <2 x float> %84, <2 x float> poison, <2 x i32> <i32 1, i32 undef>, !dbg !181
  %86 = fadd <2 x float> %85, %84, !dbg !181
  %87 = extractelement <2 x float> %86, i64 0, !dbg !181
  %88 = extractelement <8 x half> %75, i64 2, !dbg !181
  %89 = fpext half %88 to float, !dbg !181
  %90 = fadd float %87, %89, !dbg !181
  %91 = extractelement <8 x half> %75, i64 3, !dbg !181
  %92 = fpext half %91 to float, !dbg !181
  %93 = fadd float %90, %92, !dbg !181
  %94 = extractelement <8 x half> %75, i64 4, !dbg !181
  %95 = fpext half %94 to float, !dbg !181
  %96 = fadd float %93, %95, !dbg !181
  %97 = extractelement <8 x half> %75, i64 5, !dbg !181
  %98 = fpext half %97 to float, !dbg !181
  %99 = fadd float %96, %98, !dbg !181
  %100 = extractelement <8 x half> %75, i64 6, !dbg !181
  %101 = fpext half %100 to float, !dbg !181
  %102 = fadd float %99, %101, !dbg !181
  %103 = extractelement <8 x half> %75, i64 7, !dbg !181
  %104 = fpext half %103 to float, !dbg !181
  %105 = fadd float %102, %104, !dbg !181
  %106 = fpext half %52 to float, !dbg !181
  %107 = fadd float %105, %106, !dbg !181
  %108 = fmul <8 x half> %49, %75, !dbg !181
  %109 = fmul <8 x half> %49, %63, !dbg !181
  %110 = fmul <8 x half> %49, %76, !dbg !181
  %111 = fmul <8 x half> %49, %66, !dbg !181
  %112 = fmul <8 x half> %49, %77, !dbg !181
  %113 = fmul <8 x half> %49, %68, !dbg !181
  %114 = fmul <8 x half> %49, %78, !dbg !181
  %115 = fmul <8 x half> %49, %70, !dbg !181
  %116 = fmul <8 x half> %49, %79, !dbg !181
  %117 = fmul <8 x half> %49, %71, !dbg !181
  %118 = fmul <8 x half> %49, %80, !dbg !181
  %119 = fmul <8 x half> %49, %72, !dbg !181
  %120 = fmul <8 x half> %49, %81, !dbg !181
  %121 = fmul <8 x half> %49, %73, !dbg !181
  %122 = fmul <8 x half> %49, %82, !dbg !181
  %123 = fmul <8 x half> %49, %74, !dbg !181
  %124 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %108) #8, !dbg !181
  %125 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %124) #8, !dbg !181
  %126 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %109) #8, !dbg !181
  %127 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %126) #8, !dbg !181
  %128 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %110) #8, !dbg !181
  %129 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %128) #8, !dbg !181
  %130 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %111) #8, !dbg !181
  %131 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %130) #8, !dbg !181
  %132 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %112) #8, !dbg !181
  %133 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %132) #8, !dbg !181
  %134 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %113) #8, !dbg !181
  %135 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %134) #8, !dbg !181
  %136 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %114) #8, !dbg !181
  %137 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %136) #8, !dbg !181
  %138 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %115) #8, !dbg !181
  %139 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %138) #8, !dbg !181
  %140 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %116) #8, !dbg !181
  %141 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %140) #8, !dbg !181
  %142 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %117) #8, !dbg !181
  %143 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %142) #8, !dbg !181
  %144 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %118) #8, !dbg !181
  %145 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %144) #8, !dbg !181
  %146 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %119) #8, !dbg !181
  %147 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %146) #8, !dbg !181
  %148 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %120) #8, !dbg !181
  %149 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %148) #8, !dbg !181
  %150 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %121) #8, !dbg !181
  %151 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %150) #8, !dbg !181
  %152 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %122) #8, !dbg !181
  %153 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %152) #8, !dbg !181
  %154 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %123) #8, !dbg !181
  %155 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %154) #8, !dbg !181
  %156 = shl i64 %51, 7, !dbg !181
  %157 = getelementptr inbounds i8, i8* %40, i64 %156, !dbg !181
  %158 = extractelement <8 x i8> %125, i64 0, !dbg !181
  store i8 %158, i8* %157, align 64, !dbg !181
  %159 = getelementptr inbounds i8, i8* %157, i64 1, !dbg !181
  %160 = extractelement <8 x i8> %127, i64 0, !dbg !181
  store i8 %160, i8* %159, align 1, !dbg !181
  %161 = getelementptr inbounds i8, i8* %157, i64 2, !dbg !181
  %162 = extractelement <8 x i8> %129, i64 0, !dbg !181
  store i8 %162, i8* %161, align 2, !dbg !181
  %163 = getelementptr inbounds i8, i8* %157, i64 3, !dbg !181
  %164 = extractelement <8 x i8> %131, i64 0, !dbg !181
  store i8 %164, i8* %163, align 1, !dbg !181
  %165 = getelementptr inbounds i8, i8* %157, i64 4, !dbg !181
  %166 = extractelement <8 x i8> %133, i64 0, !dbg !181
  store i8 %166, i8* %165, align 4, !dbg !181
  %167 = getelementptr inbounds i8, i8* %157, i64 5, !dbg !181
  %168 = extractelement <8 x i8> %135, i64 0, !dbg !181
  store i8 %168, i8* %167, align 1, !dbg !181
  %169 = getelementptr inbounds i8, i8* %157, i64 6, !dbg !181
  %170 = extractelement <8 x i8> %137, i64 0, !dbg !181
  store i8 %170, i8* %169, align 2, !dbg !181
  %171 = getelementptr inbounds i8, i8* %157, i64 7, !dbg !181
  %172 = extractelement <8 x i8> %139, i64 0, !dbg !181
  store i8 %172, i8* %171, align 1, !dbg !181
  %173 = getelementptr inbounds i8, i8* %157, i64 8, !dbg !181
  %174 = extractelement <8 x i8> %141, i64 0, !dbg !181
  store i8 %174, i8* %173, align 8, !dbg !181
  %175 = getelementptr inbounds i8, i8* %157, i64 9, !dbg !181
  %176 = extractelement <8 x i8> %143, i64 0, !dbg !181
  store i8 %176, i8* %175, align 1, !dbg !181
  %177 = getelementptr inbounds i8, i8* %157, i64 10, !dbg !181
  %178 = extractelement <8 x i8> %145, i64 0, !dbg !181
  store i8 %178, i8* %177, align 2, !dbg !181
  %179 = getelementptr inbounds i8, i8* %157, i64 11, !dbg !181
  %180 = extractelement <8 x i8> %147, i64 0, !dbg !181
  store i8 %180, i8* %179, align 1, !dbg !181
  %181 = getelementptr inbounds i8, i8* %157, i64 12, !dbg !181
  %182 = extractelement <8 x i8> %149, i64 0, !dbg !181
  store i8 %182, i8* %181, align 4, !dbg !181
  %183 = getelementptr inbounds i8, i8* %157, i64 13, !dbg !181
  %184 = extractelement <8 x i8> %151, i64 0, !dbg !181
  store i8 %184, i8* %183, align 1, !dbg !181
  %185 = getelementptr inbounds i8, i8* %157, i64 14, !dbg !181
  %186 = extractelement <8 x i8> %153, i64 0, !dbg !181
  store i8 %186, i8* %185, align 2, !dbg !181
  %187 = getelementptr inbounds i8, i8* %157, i64 15, !dbg !181
  %188 = extractelement <8 x i8> %155, i64 0, !dbg !181
  store i8 %188, i8* %187, align 1, !dbg !181
  %189 = getelementptr inbounds i8, i8* %157, i64 16, !dbg !181
  %190 = extractelement <8 x i8> %125, i64 1, !dbg !181
  store i8 %190, i8* %189, align 16, !dbg !181
  %191 = getelementptr inbounds i8, i8* %189, i64 1, !dbg !181
  %192 = extractelement <8 x i8> %127, i64 1, !dbg !181
  store i8 %192, i8* %191, align 1, !dbg !181
  %193 = getelementptr inbounds i8, i8* %189, i64 2, !dbg !181
  %194 = extractelement <8 x i8> %129, i64 1, !dbg !181
  store i8 %194, i8* %193, align 2, !dbg !181
  %195 = getelementptr inbounds i8, i8* %189, i64 3, !dbg !181
  %196 = extractelement <8 x i8> %131, i64 1, !dbg !181
  store i8 %196, i8* %195, align 1, !dbg !181
  %197 = getelementptr inbounds i8, i8* %189, i64 4, !dbg !181
  %198 = extractelement <8 x i8> %133, i64 1, !dbg !181
  store i8 %198, i8* %197, align 4, !dbg !181
  %199 = getelementptr inbounds i8, i8* %189, i64 5, !dbg !181
  %200 = extractelement <8 x i8> %135, i64 1, !dbg !181
  store i8 %200, i8* %199, align 1, !dbg !181
  %201 = getelementptr inbounds i8, i8* %189, i64 6, !dbg !181
  %202 = extractelement <8 x i8> %137, i64 1, !dbg !181
  store i8 %202, i8* %201, align 2, !dbg !181
  %203 = getelementptr inbounds i8, i8* %189, i64 7, !dbg !181
  %204 = extractelement <8 x i8> %139, i64 1, !dbg !181
  store i8 %204, i8* %203, align 1, !dbg !181
  %205 = getelementptr inbounds i8, i8* %189, i64 8, !dbg !181
  %206 = extractelement <8 x i8> %141, i64 1, !dbg !181
  store i8 %206, i8* %205, align 8, !dbg !181
  %207 = getelementptr inbounds i8, i8* %189, i64 9, !dbg !181
  %208 = extractelement <8 x i8> %143, i64 1, !dbg !181
  store i8 %208, i8* %207, align 1, !dbg !181
  %209 = getelementptr inbounds i8, i8* %189, i64 10, !dbg !181
  %210 = extractelement <8 x i8> %145, i64 1, !dbg !181
  store i8 %210, i8* %209, align 2, !dbg !181
  %211 = getelementptr inbounds i8, i8* %189, i64 11, !dbg !181
  %212 = extractelement <8 x i8> %147, i64 1, !dbg !181
  store i8 %212, i8* %211, align 1, !dbg !181
  %213 = getelementptr inbounds i8, i8* %189, i64 12, !dbg !181
  %214 = extractelement <8 x i8> %149, i64 1, !dbg !181
  store i8 %214, i8* %213, align 4, !dbg !181
  %215 = getelementptr inbounds i8, i8* %189, i64 13, !dbg !181
  %216 = extractelement <8 x i8> %151, i64 1, !dbg !181
  store i8 %216, i8* %215, align 1, !dbg !181
  %217 = getelementptr inbounds i8, i8* %189, i64 14, !dbg !181
  %218 = extractelement <8 x i8> %153, i64 1, !dbg !181
  store i8 %218, i8* %217, align 2, !dbg !181
  %219 = getelementptr inbounds i8, i8* %189, i64 15, !dbg !181
  %220 = extractelement <8 x i8> %155, i64 1, !dbg !181
  store i8 %220, i8* %219, align 1, !dbg !181
  %221 = getelementptr inbounds i8, i8* %157, i64 32, !dbg !181
  %222 = extractelement <8 x i8> %125, i64 2, !dbg !181
  store i8 %222, i8* %221, align 32, !dbg !181
  %223 = getelementptr inbounds i8, i8* %221, i64 1, !dbg !181
  %224 = extractelement <8 x i8> %127, i64 2, !dbg !181
  store i8 %224, i8* %223, align 1, !dbg !181
  %225 = getelementptr inbounds i8, i8* %221, i64 2, !dbg !181
  %226 = extractelement <8 x i8> %129, i64 2, !dbg !181
  store i8 %226, i8* %225, align 2, !dbg !181
  %227 = getelementptr inbounds i8, i8* %221, i64 3, !dbg !181
  %228 = extractelement <8 x i8> %131, i64 2, !dbg !181
  store i8 %228, i8* %227, align 1, !dbg !181
  %229 = getelementptr inbounds i8, i8* %221, i64 4, !dbg !181
  %230 = extractelement <8 x i8> %133, i64 2, !dbg !181
  store i8 %230, i8* %229, align 4, !dbg !181
  %231 = getelementptr inbounds i8, i8* %221, i64 5, !dbg !181
  %232 = extractelement <8 x i8> %135, i64 2, !dbg !181
  store i8 %232, i8* %231, align 1, !dbg !181
  %233 = getelementptr inbounds i8, i8* %221, i64 6, !dbg !181
  %234 = extractelement <8 x i8> %137, i64 2, !dbg !181
  store i8 %234, i8* %233, align 2, !dbg !181
  %235 = getelementptr inbounds i8, i8* %221, i64 7, !dbg !181
  %236 = extractelement <8 x i8> %139, i64 2, !dbg !181
  store i8 %236, i8* %235, align 1, !dbg !181
  %237 = getelementptr inbounds i8, i8* %221, i64 8, !dbg !181
  %238 = extractelement <8 x i8> %141, i64 2, !dbg !181
  store i8 %238, i8* %237, align 8, !dbg !181
  %239 = getelementptr inbounds i8, i8* %221, i64 9, !dbg !181
  %240 = extractelement <8 x i8> %143, i64 2, !dbg !181
  store i8 %240, i8* %239, align 1, !dbg !181
  %241 = getelementptr inbounds i8, i8* %221, i64 10, !dbg !181
  %242 = extractelement <8 x i8> %145, i64 2, !dbg !181
  store i8 %242, i8* %241, align 2, !dbg !181
  %243 = getelementptr inbounds i8, i8* %221, i64 11, !dbg !181
  %244 = extractelement <8 x i8> %147, i64 2, !dbg !181
  store i8 %244, i8* %243, align 1, !dbg !181
  %245 = getelementptr inbounds i8, i8* %221, i64 12, !dbg !181
  %246 = extractelement <8 x i8> %149, i64 2, !dbg !181
  store i8 %246, i8* %245, align 4, !dbg !181
  %247 = getelementptr inbounds i8, i8* %221, i64 13, !dbg !181
  %248 = extractelement <8 x i8> %151, i64 2, !dbg !181
  store i8 %248, i8* %247, align 1, !dbg !181
  %249 = getelementptr inbounds i8, i8* %221, i64 14, !dbg !181
  %250 = extractelement <8 x i8> %153, i64 2, !dbg !181
  store i8 %250, i8* %249, align 2, !dbg !181
  %251 = getelementptr inbounds i8, i8* %221, i64 15, !dbg !181
  %252 = extractelement <8 x i8> %155, i64 2, !dbg !181
  store i8 %252, i8* %251, align 1, !dbg !181
  %253 = getelementptr inbounds i8, i8* %157, i64 48, !dbg !181
  %254 = extractelement <8 x i8> %125, i64 3, !dbg !181
  store i8 %254, i8* %253, align 16, !dbg !181
  %255 = getelementptr inbounds i8, i8* %253, i64 1, !dbg !181
  %256 = extractelement <8 x i8> %127, i64 3, !dbg !181
  store i8 %256, i8* %255, align 1, !dbg !181
  %257 = getelementptr inbounds i8, i8* %253, i64 2, !dbg !181
  %258 = extractelement <8 x i8> %129, i64 3, !dbg !181
  store i8 %258, i8* %257, align 2, !dbg !181
  %259 = getelementptr inbounds i8, i8* %253, i64 3, !dbg !181
  %260 = extractelement <8 x i8> %131, i64 3, !dbg !181
  store i8 %260, i8* %259, align 1, !dbg !181
  %261 = getelementptr inbounds i8, i8* %253, i64 4, !dbg !181
  %262 = extractelement <8 x i8> %133, i64 3, !dbg !181
  store i8 %262, i8* %261, align 4, !dbg !181
  %263 = getelementptr inbounds i8, i8* %253, i64 5, !dbg !181
  %264 = extractelement <8 x i8> %135, i64 3, !dbg !181
  store i8 %264, i8* %263, align 1, !dbg !181
  %265 = getelementptr inbounds i8, i8* %253, i64 6, !dbg !181
  %266 = extractelement <8 x i8> %137, i64 3, !dbg !181
  store i8 %266, i8* %265, align 2, !dbg !181
  %267 = getelementptr inbounds i8, i8* %253, i64 7, !dbg !181
  %268 = extractelement <8 x i8> %139, i64 3, !dbg !181
  store i8 %268, i8* %267, align 1, !dbg !181
  %269 = getelementptr inbounds i8, i8* %253, i64 8, !dbg !181
  %270 = extractelement <8 x i8> %141, i64 3, !dbg !181
  store i8 %270, i8* %269, align 8, !dbg !181
  %271 = getelementptr inbounds i8, i8* %253, i64 9, !dbg !181
  %272 = extractelement <8 x i8> %143, i64 3, !dbg !181
  store i8 %272, i8* %271, align 1, !dbg !181
  %273 = getelementptr inbounds i8, i8* %253, i64 10, !dbg !181
  %274 = extractelement <8 x i8> %145, i64 3, !dbg !181
  store i8 %274, i8* %273, align 2, !dbg !181
  %275 = getelementptr inbounds i8, i8* %253, i64 11, !dbg !181
  %276 = extractelement <8 x i8> %147, i64 3, !dbg !181
  store i8 %276, i8* %275, align 1, !dbg !181
  %277 = getelementptr inbounds i8, i8* %253, i64 12, !dbg !181
  %278 = extractelement <8 x i8> %149, i64 3, !dbg !181
  store i8 %278, i8* %277, align 4, !dbg !181
  %279 = getelementptr inbounds i8, i8* %253, i64 13, !dbg !181
  %280 = extractelement <8 x i8> %151, i64 3, !dbg !181
  store i8 %280, i8* %279, align 1, !dbg !181
  %281 = getelementptr inbounds i8, i8* %253, i64 14, !dbg !181
  %282 = extractelement <8 x i8> %153, i64 3, !dbg !181
  store i8 %282, i8* %281, align 2, !dbg !181
  %283 = getelementptr inbounds i8, i8* %253, i64 15, !dbg !181
  %284 = extractelement <8 x i8> %155, i64 3, !dbg !181
  store i8 %284, i8* %283, align 1, !dbg !181
  %285 = getelementptr inbounds i8, i8* %157, i64 64, !dbg !181
  %286 = extractelement <8 x i8> %125, i64 4, !dbg !181
  store i8 %286, i8* %285, align 64, !dbg !181
  %287 = getelementptr inbounds i8, i8* %285, i64 1, !dbg !181
  %288 = extractelement <8 x i8> %127, i64 4, !dbg !181
  store i8 %288, i8* %287, align 1, !dbg !181
  %289 = getelementptr inbounds i8, i8* %285, i64 2, !dbg !181
  %290 = extractelement <8 x i8> %129, i64 4, !dbg !181
  store i8 %290, i8* %289, align 2, !dbg !181
  %291 = getelementptr inbounds i8, i8* %285, i64 3, !dbg !181
  %292 = extractelement <8 x i8> %131, i64 4, !dbg !181
  store i8 %292, i8* %291, align 1, !dbg !181
  %293 = getelementptr inbounds i8, i8* %285, i64 4, !dbg !181
  %294 = extractelement <8 x i8> %133, i64 4, !dbg !181
  store i8 %294, i8* %293, align 4, !dbg !181
  %295 = getelementptr inbounds i8, i8* %285, i64 5, !dbg !181
  %296 = extractelement <8 x i8> %135, i64 4, !dbg !181
  store i8 %296, i8* %295, align 1, !dbg !181
  %297 = getelementptr inbounds i8, i8* %285, i64 6, !dbg !181
  %298 = extractelement <8 x i8> %137, i64 4, !dbg !181
  store i8 %298, i8* %297, align 2, !dbg !181
  %299 = getelementptr inbounds i8, i8* %285, i64 7, !dbg !181
  %300 = extractelement <8 x i8> %139, i64 4, !dbg !181
  store i8 %300, i8* %299, align 1, !dbg !181
  %301 = getelementptr inbounds i8, i8* %285, i64 8, !dbg !181
  %302 = extractelement <8 x i8> %141, i64 4, !dbg !181
  store i8 %302, i8* %301, align 8, !dbg !181
  %303 = getelementptr inbounds i8, i8* %285, i64 9, !dbg !181
  %304 = extractelement <8 x i8> %143, i64 4, !dbg !181
  store i8 %304, i8* %303, align 1, !dbg !181
  %305 = getelementptr inbounds i8, i8* %285, i64 10, !dbg !181
  %306 = extractelement <8 x i8> %145, i64 4, !dbg !181
  store i8 %306, i8* %305, align 2, !dbg !181
  %307 = getelementptr inbounds i8, i8* %285, i64 11, !dbg !181
  %308 = extractelement <8 x i8> %147, i64 4, !dbg !181
  store i8 %308, i8* %307, align 1, !dbg !181
  %309 = getelementptr inbounds i8, i8* %285, i64 12, !dbg !181
  %310 = extractelement <8 x i8> %149, i64 4, !dbg !181
  store i8 %310, i8* %309, align 4, !dbg !181
  %311 = getelementptr inbounds i8, i8* %285, i64 13, !dbg !181
  %312 = extractelement <8 x i8> %151, i64 4, !dbg !181
  store i8 %312, i8* %311, align 1, !dbg !181
  %313 = getelementptr inbounds i8, i8* %285, i64 14, !dbg !181
  %314 = extractelement <8 x i8> %153, i64 4, !dbg !181
  store i8 %314, i8* %313, align 2, !dbg !181
  %315 = getelementptr inbounds i8, i8* %285, i64 15, !dbg !181
  %316 = extractelement <8 x i8> %155, i64 4, !dbg !181
  store i8 %316, i8* %315, align 1, !dbg !181
  %317 = getelementptr inbounds i8, i8* %157, i64 80, !dbg !181
  %318 = extractelement <8 x i8> %125, i64 5, !dbg !181
  store i8 %318, i8* %317, align 16, !dbg !181
  %319 = getelementptr inbounds i8, i8* %317, i64 1, !dbg !181
  %320 = extractelement <8 x i8> %127, i64 5, !dbg !181
  store i8 %320, i8* %319, align 1, !dbg !181
  %321 = getelementptr inbounds i8, i8* %317, i64 2, !dbg !181
  %322 = extractelement <8 x i8> %129, i64 5, !dbg !181
  store i8 %322, i8* %321, align 2, !dbg !181
  %323 = getelementptr inbounds i8, i8* %317, i64 3, !dbg !181
  %324 = extractelement <8 x i8> %131, i64 5, !dbg !181
  store i8 %324, i8* %323, align 1, !dbg !181
  %325 = getelementptr inbounds i8, i8* %317, i64 4, !dbg !181
  %326 = extractelement <8 x i8> %133, i64 5, !dbg !181
  store i8 %326, i8* %325, align 4, !dbg !181
  %327 = getelementptr inbounds i8, i8* %317, i64 5, !dbg !181
  %328 = extractelement <8 x i8> %135, i64 5, !dbg !181
  store i8 %328, i8* %327, align 1, !dbg !181
  %329 = getelementptr inbounds i8, i8* %317, i64 6, !dbg !181
  %330 = extractelement <8 x i8> %137, i64 5, !dbg !181
  store i8 %330, i8* %329, align 2, !dbg !181
  %331 = getelementptr inbounds i8, i8* %317, i64 7, !dbg !181
  %332 = extractelement <8 x i8> %139, i64 5, !dbg !181
  store i8 %332, i8* %331, align 1, !dbg !181
  %333 = getelementptr inbounds i8, i8* %317, i64 8, !dbg !181
  %334 = extractelement <8 x i8> %141, i64 5, !dbg !181
  store i8 %334, i8* %333, align 8, !dbg !181
  %335 = getelementptr inbounds i8, i8* %317, i64 9, !dbg !181
  %336 = extractelement <8 x i8> %143, i64 5, !dbg !181
  store i8 %336, i8* %335, align 1, !dbg !181
  %337 = getelementptr inbounds i8, i8* %317, i64 10, !dbg !181
  %338 = extractelement <8 x i8> %145, i64 5, !dbg !181
  store i8 %338, i8* %337, align 2, !dbg !181
  %339 = getelementptr inbounds i8, i8* %317, i64 11, !dbg !181
  %340 = extractelement <8 x i8> %147, i64 5, !dbg !181
  store i8 %340, i8* %339, align 1, !dbg !181
  %341 = getelementptr inbounds i8, i8* %317, i64 12, !dbg !181
  %342 = extractelement <8 x i8> %149, i64 5, !dbg !181
  store i8 %342, i8* %341, align 4, !dbg !181
  %343 = getelementptr inbounds i8, i8* %317, i64 13, !dbg !181
  %344 = extractelement <8 x i8> %151, i64 5, !dbg !181
  store i8 %344, i8* %343, align 1, !dbg !181
  %345 = getelementptr inbounds i8, i8* %317, i64 14, !dbg !181
  %346 = extractelement <8 x i8> %153, i64 5, !dbg !181
  store i8 %346, i8* %345, align 2, !dbg !181
  %347 = getelementptr inbounds i8, i8* %317, i64 15, !dbg !181
  %348 = extractelement <8 x i8> %155, i64 5, !dbg !181
  store i8 %348, i8* %347, align 1, !dbg !181
  %349 = getelementptr inbounds i8, i8* %157, i64 96, !dbg !181
  %350 = extractelement <8 x i8> %125, i64 6, !dbg !181
  store i8 %350, i8* %349, align 32, !dbg !181
  %351 = getelementptr inbounds i8, i8* %349, i64 1, !dbg !181
  %352 = extractelement <8 x i8> %127, i64 6, !dbg !181
  store i8 %352, i8* %351, align 1, !dbg !181
  %353 = getelementptr inbounds i8, i8* %349, i64 2, !dbg !181
  %354 = extractelement <8 x i8> %129, i64 6, !dbg !181
  store i8 %354, i8* %353, align 2, !dbg !181
  %355 = getelementptr inbounds i8, i8* %349, i64 3, !dbg !181
  %356 = extractelement <8 x i8> %131, i64 6, !dbg !181
  store i8 %356, i8* %355, align 1, !dbg !181
  %357 = getelementptr inbounds i8, i8* %349, i64 4, !dbg !181
  %358 = extractelement <8 x i8> %133, i64 6, !dbg !181
  store i8 %358, i8* %357, align 4, !dbg !181
  %359 = getelementptr inbounds i8, i8* %349, i64 5, !dbg !181
  %360 = extractelement <8 x i8> %135, i64 6, !dbg !181
  store i8 %360, i8* %359, align 1, !dbg !181
  %361 = getelementptr inbounds i8, i8* %349, i64 6, !dbg !181
  %362 = extractelement <8 x i8> %137, i64 6, !dbg !181
  store i8 %362, i8* %361, align 2, !dbg !181
  %363 = getelementptr inbounds i8, i8* %349, i64 7, !dbg !181
  %364 = extractelement <8 x i8> %139, i64 6, !dbg !181
  store i8 %364, i8* %363, align 1, !dbg !181
  %365 = getelementptr inbounds i8, i8* %349, i64 8, !dbg !181
  %366 = extractelement <8 x i8> %141, i64 6, !dbg !181
  store i8 %366, i8* %365, align 8, !dbg !181
  %367 = getelementptr inbounds i8, i8* %349, i64 9, !dbg !181
  %368 = extractelement <8 x i8> %143, i64 6, !dbg !181
  store i8 %368, i8* %367, align 1, !dbg !181
  %369 = getelementptr inbounds i8, i8* %349, i64 10, !dbg !181
  %370 = extractelement <8 x i8> %145, i64 6, !dbg !181
  store i8 %370, i8* %369, align 2, !dbg !181
  %371 = getelementptr inbounds i8, i8* %349, i64 11, !dbg !181
  %372 = extractelement <8 x i8> %147, i64 6, !dbg !181
  store i8 %372, i8* %371, align 1, !dbg !181
  %373 = getelementptr inbounds i8, i8* %349, i64 12, !dbg !181
  %374 = extractelement <8 x i8> %149, i64 6, !dbg !181
  store i8 %374, i8* %373, align 4, !dbg !181
  %375 = getelementptr inbounds i8, i8* %349, i64 13, !dbg !181
  %376 = extractelement <8 x i8> %151, i64 6, !dbg !181
  store i8 %376, i8* %375, align 1, !dbg !181
  %377 = getelementptr inbounds i8, i8* %349, i64 14, !dbg !181
  %378 = extractelement <8 x i8> %153, i64 6, !dbg !181
  store i8 %378, i8* %377, align 2, !dbg !181
  %379 = getelementptr inbounds i8, i8* %349, i64 15, !dbg !181
  %380 = extractelement <8 x i8> %155, i64 6, !dbg !181
  store i8 %380, i8* %379, align 1, !dbg !181
  %381 = getelementptr inbounds i8, i8* %157, i64 112, !dbg !181
  %382 = extractelement <8 x i8> %125, i64 7, !dbg !181
  store i8 %382, i8* %381, align 16, !dbg !181
  %383 = getelementptr inbounds i8, i8* %381, i64 1, !dbg !181
  %384 = extractelement <8 x i8> %127, i64 7, !dbg !181
  store i8 %384, i8* %383, align 1, !dbg !181
  %385 = getelementptr inbounds i8, i8* %381, i64 2, !dbg !181
  %386 = extractelement <8 x i8> %129, i64 7, !dbg !181
  store i8 %386, i8* %385, align 2, !dbg !181
  %387 = getelementptr inbounds i8, i8* %381, i64 3, !dbg !181
  %388 = extractelement <8 x i8> %131, i64 7, !dbg !181
  store i8 %388, i8* %387, align 1, !dbg !181
  %389 = getelementptr inbounds i8, i8* %381, i64 4, !dbg !181
  %390 = extractelement <8 x i8> %133, i64 7, !dbg !181
  store i8 %390, i8* %389, align 4, !dbg !181
  %391 = getelementptr inbounds i8, i8* %381, i64 5, !dbg !181
  %392 = extractelement <8 x i8> %135, i64 7, !dbg !181
  store i8 %392, i8* %391, align 1, !dbg !181
  %393 = getelementptr inbounds i8, i8* %381, i64 6, !dbg !181
  %394 = extractelement <8 x i8> %137, i64 7, !dbg !181
  store i8 %394, i8* %393, align 2, !dbg !181
  %395 = getelementptr inbounds i8, i8* %381, i64 7, !dbg !181
  %396 = extractelement <8 x i8> %139, i64 7, !dbg !181
  store i8 %396, i8* %395, align 1, !dbg !181
  %397 = getelementptr inbounds i8, i8* %381, i64 8, !dbg !181
  %398 = extractelement <8 x i8> %141, i64 7, !dbg !181
  store i8 %398, i8* %397, align 8, !dbg !181
  %399 = getelementptr inbounds i8, i8* %381, i64 9, !dbg !181
  %400 = extractelement <8 x i8> %143, i64 7, !dbg !181
  store i8 %400, i8* %399, align 1, !dbg !181
  %401 = getelementptr inbounds i8, i8* %381, i64 10, !dbg !181
  %402 = extractelement <8 x i8> %145, i64 7, !dbg !181
  store i8 %402, i8* %401, align 2, !dbg !181
  %403 = getelementptr inbounds i8, i8* %381, i64 11, !dbg !181
  %404 = extractelement <8 x i8> %147, i64 7, !dbg !181
  store i8 %404, i8* %403, align 1, !dbg !181
  %405 = getelementptr inbounds i8, i8* %381, i64 12, !dbg !181
  %406 = extractelement <8 x i8> %149, i64 7, !dbg !181
  store i8 %406, i8* %405, align 4, !dbg !181
  %407 = getelementptr inbounds i8, i8* %381, i64 13, !dbg !181
  %408 = extractelement <8 x i8> %151, i64 7, !dbg !181
  store i8 %408, i8* %407, align 1, !dbg !181
  %409 = getelementptr inbounds i8, i8* %381, i64 14, !dbg !181
  %410 = extractelement <8 x i8> %153, i64 7, !dbg !181
  store i8 %410, i8* %409, align 2, !dbg !181
  %411 = getelementptr inbounds i8, i8* %381, i64 15, !dbg !181
  %412 = extractelement <8 x i8> %155, i64 7, !dbg !181
  store i8 %412, i8* %411, align 1, !dbg !181
  %413 = fptrunc float %107 to half, !dbg !181
  %414 = add nuw nsw i64 %51, 1, !dbg !181
  %415 = icmp eq i64 %414, 2, !dbg !181
  br i1 %415, label %lut_ctor_g4_int8_k0_b2.exit, label %50, !dbg !181, !llvm.loop !188

lut_ctor_g4_int8_k0_b2.exit:                      ; preds = %50
  %416 = getelementptr inbounds half, half* %LUT_Biases, i64 %indvars.iv, !dbg !181
  store half %44, half* %43, align 2, !dbg !181, !tbaa !184
  store half %413, half* %416, align 2, !dbg !181, !tbaa !184
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !181
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !183, metadata !DIExpression()), !dbg !181
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50, !dbg !181
  br i1 %exitcond.not, label %for_end_k.outer3, label %for_body_k.outer2, !dbg !181, !prof !33

for_end_k.outer3:                                 ; preds = %lut_ctor_g4_int8_k0_b2.exit
  ret void, !dbg !181
}

; Function Attrs: nofree nosync nounwind readnone
define weak dso_local i16 @__truncsfhf2(float %a0) local_unnamed_addr #4 section ".text.tvm.fp16.conv" {
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
define weak dso_local float @__extendhfsf2(i16 %a0) local_unnamed_addr #4 section ".text.tvm.fp16.conv" {
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

; Function Attrs: alwaysinline argmemonly mustprogress nofree nosync nounwind readonly willreturn
declare { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0v8f16(<8 x half>*) #5

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <8 x half> @llvm.fabs.v8f16(<8 x half>) #6

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind readnone willreturn
declare half @llvm.aarch64.neon.fmaxv.f16.v8f16(<8 x half>) #7

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind readnone willreturn
declare <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half>) #7

; Function Attrs: alwaysinline mustprogress nofree nosync nounwind readnone willreturn
declare <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16>) #7

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #3 = { nofree noinline nosync nounwind "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #4 = { nofree nosync nounwind readnone "target-cpu"="generic" "target-features"="+v8.2a,+fullfp16,+fp-armv8,+neon" }
attributes #5 = { alwaysinline argmemonly mustprogress nofree nosync nounwind readonly willreturn }
attributes #6 = { alwaysinline mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { alwaysinline mustprogress nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2, !2}
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
!15 = distinct !DISubprogram(name: "preprocessor_t4_int8_m6400_k3200_n1_b2", scope: !1, file: !1, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
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
!35 = !{!"0x2cd320b0.w4.b0", !36, i64 0}
!36 = !{!"0x2cd320b0.w8.b0", !37, i64 0}
!37 = !{!"0x2cd320b0.w16.b0", !38, i64 0}
!38 = !{!"0x2cd320b0.w32.b0", !39, i64 0}
!39 = !{!"0x2cd320b0.w64.b0", !40, i64 0}
!40 = !{!"0x2cd320b0.w128.b0", !41, i64 0}
!41 = !{!"0x2cd320b0.w256.b0", !42, i64 0}
!42 = !{!"0x2cd320b0.w512.b0", !43, i64 0}
!43 = !{!"0x2cd320b0.w1024.b0", !44, i64 0}
!44 = !{!"0x2cd320b0", !32, i64 0}
!45 = !DILocalVariable(name: "B.code", scope: !15, file: !1, type: !18)
!46 = !{!47, !47, i64 0}
!47 = !{!"0x2cd320b0.w4.b4", !36, i64 0}
!48 = !DILocalVariable(name: "LUT_Scales.code", scope: !15, file: !1, type: !18)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x2cd320b0.w4.b8", !51, i64 0}
!51 = !{!"0x2cd320b0.w8.b8", !37, i64 0}
!52 = !DILocalVariable(name: "LUT_Biases.code", scope: !15, file: !1, type: !18)
!53 = !{!54, !54, i64 0}
!54 = !{!"0x2cd320b0.w4.b12", !51, i64 0}
!55 = !DILocalVariable(name: "QLUT.code", scope: !15, file: !1, type: !18)
!56 = !DILocalVariable(name: "B", scope: !15, file: !1, type: !19)
!57 = !DILocalVariable(name: "LUT_Scales", scope: !15, file: !1, type: !19)
!58 = !DILocalVariable(name: "LUT_Biases", scope: !15, file: !1, type: !19)
!59 = !DILocalVariable(name: "QLUT", scope: !15, file: !1, type: !19)
!60 = !DILocalVariable(name: "preprocessor_t4_int8_m6400_k3200_n1_b2.B.shape", scope: !15, file: !1, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62)
!62 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!63 = !DILocalVariable(name: "preprocessor_t4_int8_m6400_k3200_n1_b2.B.strides", scope: !15, file: !1, type: !61)
!64 = !DILocalVariable(name: "dev_id", scope: !15, file: !1, type: !18)
!65 = !DILocalVariable(name: "B", scope: !15, file: !1, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67)
!67 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!68 = !DILocalVariable(name: "preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape", scope: !15, file: !1, type: !61)
!69 = !DILocalVariable(name: "preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides", scope: !15, file: !1, type: !61)
!70 = !DILocalVariable(name: "LUT_Scales", scope: !15, file: !1, type: !66)
!71 = !DILocalVariable(name: "preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape", scope: !15, file: !1, type: !61)
!72 = !DILocalVariable(name: "preprocessor_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides", scope: !15, file: !1, type: !61)
!73 = !DILocalVariable(name: "LUT_Biases", scope: !15, file: !1, type: !66)
!74 = !DILocalVariable(name: "preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.shape", scope: !15, file: !1, type: !61)
!75 = !DILocalVariable(name: "preprocessor_t4_int8_m6400_k3200_n1_b2.QLUT.strides", scope: !15, file: !1, type: !61)
!76 = !DILocalVariable(name: "QLUT", scope: !15, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !{!80, !80, i64 0}
!80 = !{!"0x2ccaac90.w8.b0", !81, i64 0}
!81 = !{!"0x2ccaac90.w16.b0", !82, i64 0}
!82 = !{!"0x2ccaac90.w32.b0", !83, i64 0}
!83 = !{!"0x2ccaac90.w64.b0", !84, i64 0}
!84 = !{!"0x2ccaac90.w128.b0", !85, i64 0}
!85 = !{!"0x2ccaac90.w256.b0", !86, i64 0}
!86 = !{!"0x2ccaac90.w512.b0", !87, i64 0}
!87 = !{!"0x2ccaac90.w1024.b0", !88, i64 0}
!88 = !{!"0x2ccaac90", !32, i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"0x2ccaac90.w8.b8", !81, i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"0x2c9f3d80.w8.b8", !93, i64 0}
!93 = !{!"0x2c9f3d80.w16.b0", !94, i64 0}
!94 = !{!"0x2c9f3d80.w32.b0", !95, i64 0}
!95 = !{!"0x2c9f3d80.w64.b0", !96, i64 0}
!96 = !{!"0x2c9f3d80.w128.b0", !97, i64 0}
!97 = !{!"0x2c9f3d80.w256.b0", !98, i64 0}
!98 = !{!"0x2c9f3d80.w512.b0", !99, i64 0}
!99 = !{!"0x2c9f3d80.w1024.b0", !100, i64 0}
!100 = !{!"0x2c9f3d80", !32, i64 0}
!101 = !{!102, !102, i64 0}
!102 = !{!"0x2cb9d080.w8.b0", !103, i64 0}
!103 = !{!"0x2cb9d080.w16.b0", !104, i64 0}
!104 = !{!"0x2cb9d080.w32.b0", !105, i64 0}
!105 = !{!"0x2cb9d080.w64.b0", !106, i64 0}
!106 = !{!"0x2cb9d080.w128.b0", !107, i64 0}
!107 = !{!"0x2cb9d080.w256.b0", !108, i64 0}
!108 = !{!"0x2cb9d080.w512.b0", !109, i64 0}
!109 = !{!"0x2cb9d080.w1024.b0", !110, i64 0}
!110 = !{!"0x2cb9d080", !32, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x2cb9d080.w8.b8", !103, i64 0}
!113 = !{!114, !114, i64 0}
!114 = !{!"0x2c723f80.w8.b8", !115, i64 0}
!115 = !{!"0x2c723f80.w16.b0", !116, i64 0}
!116 = !{!"0x2c723f80.w32.b0", !117, i64 0}
!117 = !{!"0x2c723f80.w64.b0", !118, i64 0}
!118 = !{!"0x2c723f80.w128.b0", !119, i64 0}
!119 = !{!"0x2c723f80.w256.b0", !120, i64 0}
!120 = !{!"0x2c723f80.w512.b0", !121, i64 0}
!121 = !{!"0x2c723f80.w1024.b0", !122, i64 0}
!122 = !{!"0x2c723f80", !32, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x2cd3f0d0.w8.b0", !125, i64 0}
!125 = !{!"0x2cd3f0d0.w16.b0", !126, i64 0}
!126 = !{!"0x2cd3f0d0.w32.b0", !127, i64 0}
!127 = !{!"0x2cd3f0d0.w64.b0", !128, i64 0}
!128 = !{!"0x2cd3f0d0.w128.b0", !129, i64 0}
!129 = !{!"0x2cd3f0d0.w256.b0", !130, i64 0}
!130 = !{!"0x2cd3f0d0.w512.b0", !131, i64 0}
!131 = !{!"0x2cd3f0d0.w1024.b0", !132, i64 0}
!132 = !{!"0x2cd3f0d0", !32, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x2cd3f0d0.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x2cc51230.w8.b8", !137, i64 0}
!137 = !{!"0x2cc51230.w16.b0", !138, i64 0}
!138 = !{!"0x2cc51230.w32.b0", !139, i64 0}
!139 = !{!"0x2cc51230.w64.b0", !140, i64 0}
!140 = !{!"0x2cc51230.w128.b0", !141, i64 0}
!141 = !{!"0x2cc51230.w256.b0", !142, i64 0}
!142 = !{!"0x2cc51230.w512.b0", !143, i64 0}
!143 = !{!"0x2cc51230.w1024.b0", !144, i64 0}
!144 = !{!"0x2cc51230", !32, i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"0x2ccd0970.w8.b0", !147, i64 0}
!147 = !{!"0x2ccd0970.w16.b0", !148, i64 0}
!148 = !{!"0x2ccd0970.w32.b0", !149, i64 0}
!149 = !{!"0x2ccd0970.w64.b0", !150, i64 0}
!150 = !{!"0x2ccd0970.w128.b0", !151, i64 0}
!151 = !{!"0x2ccd0970.w256.b0", !152, i64 0}
!152 = !{!"0x2ccd0970.w512.b0", !153, i64 0}
!153 = !{!"0x2ccd0970.w1024.b0", !154, i64 0}
!154 = !{!"0x2ccd0970", !32, i64 0}
!155 = !{!156, !156, i64 0}
!156 = !{!"0x2ccd0970.w8.b8", !147, i64 0}
!157 = !{!158, !158, i64 0}
!158 = !{!"0x2ccd0970.w8.b16", !159, i64 0}
!159 = !{!"0x2ccd0970.w16.b16", !148, i64 0}
!160 = !{!161, !161, i64 0}
!161 = !{!"0x2cb3fd10.w8.b16", !162, i64 0}
!162 = !{!"0x2cb3fd10.w16.b16", !163, i64 0}
!163 = !{!"0x2cb3fd10.w32.b0", !164, i64 0}
!164 = !{!"0x2cb3fd10.w64.b0", !165, i64 0}
!165 = !{!"0x2cb3fd10.w128.b0", !166, i64 0}
!166 = !{!"0x2cb3fd10.w256.b0", !167, i64 0}
!167 = !{!"0x2cb3fd10.w512.b0", !168, i64 0}
!168 = !{!"0x2cb3fd10.w1024.b0", !169, i64 0}
!169 = !{!"0x2cb3fd10", !32, i64 0}
!170 = !{!171, !171, i64 0}
!171 = !{!"0x2cb3fd10.w8.b8", !172, i64 0}
!172 = !{!"0x2cb3fd10.w16.b0", !163, i64 0}
!173 = distinct !DISubprogram(name: "preprocessor_t4_int8_m6400_k3200_n1_b2_compute_", scope: !1, file: !1, type: !174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{!18, !66, !66, !77, !66}
!176 = !{!177, !178, !179, !180}
!177 = !DILocalVariable(name: "LUT_Scales", arg: 1, scope: !173, file: !1, type: !66)
!178 = !DILocalVariable(name: "B", arg: 2, scope: !173, file: !1, type: !66)
!179 = !DILocalVariable(name: "QLUT", arg: 3, scope: !173, file: !1, type: !77)
!180 = !DILocalVariable(name: "LUT_Biases", arg: 4, scope: !173, file: !1, type: !66)
!181 = !DILocation(line: 0, scope: !173)
!182 = !DILocalVariable(name: "kk.outer", scope: !173, file: !1, type: !18)
!183 = !DILocalVariable(name: "k.outer", scope: !173, file: !1, type: !18)
!184 = !{!185, !185, i64 0}
!185 = !{!"__fp16", !186, i64 0}
!186 = !{!"omnipotent char", !187, i64 0}
!187 = !{!"Simple C++ TBAA"}
!188 = distinct !{!188, !189}
!189 = !{!"llvm.loop.mustprogress"}
