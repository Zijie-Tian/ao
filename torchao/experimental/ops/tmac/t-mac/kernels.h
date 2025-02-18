#include "stdint.h"
#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m6144_k4096_n1_b4(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m6144_k4096_n1_b4(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m3072_k4096_n1_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m3072_k4096_n1_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m16384_k4096_n1_b4(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m16384_k4096_n1_b4(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m8192_k4096_n1_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m8192_k4096_n1_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m57344_k4096_n1_b4(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m57344_k4096_n1_b4(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m28672_k4096_n1_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m28672_k4096_n1_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m16384_k14336_n1_b4(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m16384_k14336_n1_b4(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m8192_k14336_n1_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m8192_k14336_n1_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);inline int qgemm_lut_int8(int m, int k, int n, int b, void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {

    if (m == 6144 && k == 4096 && n == 1 && b == 4) return qgemm_lut_t4_int8_m6144_k4096_n1_b4(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 3072 && k == 4096 && n == 1 && b == 2) return qgemm_lut_t4_int8_m3072_k4096_n1_b2(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 16384 && k == 4096 && n == 1 && b == 4) return qgemm_lut_t4_int8_m16384_k4096_n1_b4(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 8192 && k == 4096 && n == 1 && b == 2) return qgemm_lut_t4_int8_m8192_k4096_n1_b2(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 57344 && k == 4096 && n == 1 && b == 4) return qgemm_lut_t4_int8_m57344_k4096_n1_b4(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 28672 && k == 4096 && n == 1 && b == 2) return qgemm_lut_t4_int8_m28672_k4096_n1_b2(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 16384 && k == 14336 && n == 1 && b == 4) return qgemm_lut_t4_int8_m16384_k14336_n1_b4(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 8192 && k == 14336 && n == 1 && b == 2) return qgemm_lut_t4_int8_m8192_k14336_n1_b2(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    return -1;
}
inline int preprocessor_int8(int m, int k, int n, int b, void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {

    if (m == 6144 && k == 4096 && n == 1 && b == 4) return preprocessor_t4_int8_m6144_k4096_n1_b4(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 3072 && k == 4096 && n == 1 && b == 2) return preprocessor_t4_int8_m3072_k4096_n1_b2(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 16384 && k == 4096 && n == 1 && b == 4) return preprocessor_t4_int8_m16384_k4096_n1_b4(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 8192 && k == 4096 && n == 1 && b == 2) return preprocessor_t4_int8_m8192_k4096_n1_b2(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 57344 && k == 4096 && n == 1 && b == 4) return preprocessor_t4_int8_m57344_k4096_n1_b4(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 28672 && k == 4096 && n == 1 && b == 2) return preprocessor_t4_int8_m28672_k4096_n1_b2(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 16384 && k == 14336 && n == 1 && b == 4) return preprocessor_t4_int8_m16384_k14336_n1_b4(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 8192 && k == 14336 && n == 1 && b == 2) return preprocessor_t4_int8_m8192_k14336_n1_b2(B, LUT_Scales, LUT_Biases, QLUT);

    return -1;
}
