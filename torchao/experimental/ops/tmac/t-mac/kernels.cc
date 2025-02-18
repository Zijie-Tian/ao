#include "t-mac/kernels.h"
#ifndef INTRINSIC_TYPES_H
#define INTRINSIC_TYPES_H

#ifdef __ARM_NEON
#include <arm_neon.h>
#elif defined __AVX2__
#include <immintrin.h>
#endif

#ifdef __ARM_NEON
typedef float16_t float_type;
#else
#include <stdint.h>
typedef float float_type;
#endif

#endif

#include "string.h"
#include <type_traits>

template <bool has_scale, int K, int Bits>
inline int32_t tbl_g4_float_float_update_impl(int32_t m, float_type* c, float_type* lut, uint8_t* a, float_type* scales) {
#ifdef __ARM_NEON
    const uint8x16_t vec_mask = vdupq_n_u8(0x0f);
    uint8x16x2_t vec_lut[K];

#pragma unroll
    for (int k = 0; k < K; k++) {
        vec_lut[k] = vld2q_u8(reinterpret_cast<uint8_t*>(lut + k * 16));
    }

    float16x8_t vec_c0, vec_c1, vec_c2, vec_c3;
    float16x8_t vec_s0, vec_s1, vec_s2, vec_s3;
    for (int i = 0; i < m / 2; i += 16) {
        float16x8_t vec_c0 = vld1q_f16(c + i * 2);
        float16x8_t vec_c1 = vld1q_f16(c + i * 2 + 8);
        float16x8_t vec_c2 = vld1q_f16(c + i * 2 + 16);
        float16x8_t vec_c3 = vld1q_f16(c + i * 2 + 24);
        // Currently assume K * 4 weights share the same group of scale
        float16x8_t vec_s0 = vld1q_f16(scales + i * 2);
        float16x8_t vec_s1 = vld1q_f16(scales + i * 2 + 8);
        float16x8_t vec_s2 = vld1q_f16(scales + i * 2 + 16);
        float16x8_t vec_s3 = vld1q_f16(scales + i * 2 + 24);

#pragma unroll
        for (int k = 0; k < K; k++) {
            // (M // bm, KK / K / 4, bm / 16 / 2, K * 16)
            uint8x16_t vec_as = vld1q_u8(a + i * K + k * 16);
            uint8x16_t vec_a_bot = vandq_u8(vec_as, vec_mask);
            uint8x16_t vec_a_top = vshrq_n_u8(vec_as, 4);

            uint8x16_t vec_v_bot_low = vqtbl1q_u8(vec_lut[k].val[0], vec_a_bot);
            uint8x16_t vec_v_bot_high = vqtbl1q_u8(vec_lut[k].val[1], vec_a_bot);
            uint8x16x2_t vec_v_bot = vzipq_u8(vec_v_bot_low, vec_v_bot_high);

            uint8x16_t vec_v_top_low = vqtbl1q_u8(vec_lut[k].val[0], vec_a_top);
            uint8x16_t vec_v_top_high = vqtbl1q_u8(vec_lut[k].val[1], vec_a_top);
            uint8x16x2_t vec_v_top = vzipq_u8(vec_v_top_low, vec_v_top_high);

            if (has_scale) {
                // TODO: optimize scales
                vec_c0 += vreinterpretq_f16_u8(vec_v_bot.val[0]) * vec_s0;
                vec_c1 += vreinterpretq_f16_u8(vec_v_bot.val[1]) * vec_s1;
                vec_c2 += vreinterpretq_f16_u8(vec_v_top.val[0]) * vec_s2;
                vec_c3 += vreinterpretq_f16_u8(vec_v_top.val[1]) * vec_s3;
            } else {
                vec_c0 += vreinterpretq_f16_u8(vec_v_bot.val[0]);
                vec_c1 += vreinterpretq_f16_u8(vec_v_bot.val[1]);
                vec_c2 += vreinterpretq_f16_u8(vec_v_top.val[0]);
                vec_c3 += vreinterpretq_f16_u8(vec_v_top.val[1]);
            }
        }

        vst1q_f16(c + i * 2, vec_c0);
        vst1q_f16(c + i * 2 + 8, vec_c1);
        vst1q_f16(c + i * 2 + 16, vec_c2);
        vst1q_f16(c + i * 2 + 24, vec_c3);
    }
#endif

    return 0;
}

#ifdef __ARM_NEON
template <int N>
struct SignedHalvingAdder {
    SignedHalvingAdder<N / 2> adder;
    int8x16_t lhs;

    inline void push(int8x16_t v, int k) {
        if (k < N / 2) {
            adder.push(v, k);
            if (k == N / 2 - 1) {
                lhs = adder.get();
            }
        } else {
            adder.push(v, k - N / 2);
            if (k == N - 1) {
                lhs = vrhaddq_s8(lhs, adder.get());
            }
        }
    }

    inline int8x16_t get() {
        return lhs;
    }

    inline int16x8_t get_low() {
        return vmovl_s8(vget_low_s8(lhs));
    }

    inline int16x8_t get_high() {
        return vmovl_high_s8(lhs);
    }
};

template <>
struct SignedHalvingAdder<2> {
    int8x16_t lhs;

    inline void push(int8x16_t v, int k) {
        if (k == 0) {
            lhs = v;
        } else {
            lhs = vrhaddq_s8(lhs, v);
        }
    }

    inline int8x16_t get() {
        return lhs;
    }

    inline int16x8_t get_low() {
        return vmovl_s8(vget_low_s8(lhs));
    }

    inline int16x8_t get_high() {
        return vmovl_high_s8(lhs);
    }
};

struct SignedLongAdder {
    int16x8_t lhs_low;
    int16x8_t lhs_high;
    int8x16_t lhs;

    inline void push(int8x16_t v, int k) {
        if (k == 0) {
            lhs = v;
        } else {
            lhs_low = vaddl_s8(vget_low_s8(lhs), vget_low_s8(v));
            lhs_high = vaddl_high_s8(lhs, v);
        }
    }

    inline int16x8_t get_low() {
        return lhs_low;
    }

    inline int16x8_t get_high() {
        return lhs_high;
    }
};

template <int N>
struct SignedWideningAdder {
    SignedLongAdder adder;
    int16x8_t lhs_low;
    int16x8_t lhs_high;

    inline void push(int8x16_t v, int k) {
        if (k % 2 == 0) {
            adder.push(v, 0);
        } else {
            adder.push(v, 1);
            if (k == 1) {
                lhs_low = adder.get_low();
                lhs_high = adder.get_high();
            } else {
                lhs_low += adder.get_low();
                lhs_high += adder.get_high();
            }
        }
    }

    inline int16x8_t get_low() {
        return lhs_low;
    }

    inline int16x8_t get_high() {
        return lhs_high;
    }
};
#elif defined __AVX2__
#define extract_low_epi8_epi16(v) _mm256_cvtepi8_epi16(_mm256_castsi256_si128(v))
#define extract_high_epi8_epi16(v) _mm256_cvtepi8_epi16(_mm256_extracti128_si256(v, 1))
#define extract_low_epi16_epi32(v) _mm256_cvtepi16_epi32(_mm256_castsi256_si128(v))
#define extract_high_epi16_epi32(v) _mm256_cvtepi16_epi32(_mm256_extracti128_si256(v, 1))

template <int N>
struct SignedHalvingAdder {
    SignedHalvingAdder<N / 2> adder;
    __m256i lhs;

    inline void push(__m256i v, int k) {
        if (k < N / 2) {
            adder.push(v, k);
            if (k == N / 2 - 1) {
                lhs = adder.get();
            }
        } else {
            adder.push(v, k - N / 2);
            if (k == N - 1) {
                lhs = _mm256_avg_epu8(lhs, adder.get());
            }
        }
    }

    inline __m256i get() {
        return lhs;
    }

    inline __m256i get_low() {
        return extract_low_epi8_epi16(lhs);
    }

    inline __m256i get_high() {
        return extract_high_epi8_epi16(lhs);
    }
};

template <>
struct SignedHalvingAdder<2> {
    __m256i lhs;

    inline void push(__m256i v, int k) {
        if (k == 0) {
            lhs = v;
        } else {
            lhs = _mm256_avg_epu8(lhs, v);
        }
    }

    inline __m256i get() {
        return lhs;
    }

    inline __m256i get_low() {
        return extract_low_epi8_epi16(lhs);
    }

    inline __m256i get_high() {
        return extract_high_epi8_epi16(lhs);
    }
};

template <int N>
struct SignedWideningAdder {
    __m256i lhs_low;
    __m256i lhs_high;

    inline void push(__m256i v, int k) {
        if (k == 0) {
            lhs_low = extract_low_epi8_epi16(v);
            lhs_high = extract_high_epi8_epi16(v);
        } else {
            lhs_low = _mm256_add_epi16(lhs_low, extract_low_epi8_epi16(v));
            lhs_high = _mm256_add_epi16(lhs_high, extract_high_epi8_epi16(v));
        }
    }

    inline __m256i get_low() {
        return lhs_low;
    }

    inline __m256i get_high() {
        return lhs_high;
    }
};

#endif

template <bool FastAggregation, int ActK>
using SignedAdder = std::conditional_t<FastAggregation, SignedHalvingAdder<ActK>, SignedWideningAdder<ActK>>;

template <int K>
struct mylog2 {
    enum {
        value = 1 + mylog2<K / 2>::value
    };
};

template <>
struct mylog2<0> {
    enum {
        value = -1
    };
};

constexpr int get_bias_scale(int bits) {
    // The bias scale will be added to the first bit
    // 15 = (1/2 + 1 + 2 + 4) / (1/2)
    // 7 = (1/2 + 1 + 2) / (1/2)
    // 3 = (1/2 + 1) / (1/2)
    // 1 = (1/2) / (1/2)
    if (bits == 4) {
        return 15;
    } else if (bits == 3) {
        return 7;
    } else if (bits == 2) {
        return 3;
    } else if (bits == 1) {
        return 1;
    } else {
        return 0;
    }
}


// When FastAggregation is enabled, FastAggregationK = ActK
// zero_points is merged into scales to maintain API
template <bool has_scale, int K, int Bits, int ActK = 16, bool FastAggregation = false, bool ZeroPoint = false, bool OneScale = false>
inline int32_t tbl_g4_int8_float_update_impl(int32_t m, float_type* c, int8_t* lut, uint8_t* a, float_type* scales, float_type* lut_scales, float_type* lut_biases) {
#ifdef __ARM_NEON
    const uint8x16_t vec_mask = vdupq_n_u8(0x0f);
    int8x16_t vec_lut[K];

#pragma unroll
    for (int k = 0; k < K; k++) {
        vec_lut[k] = vld1q_s8(lut + k * 16);
    }

    SignedAdder<FastAggregation, ActK> adder_bot, adder_top;
    for (int i = 0; i < m / 2; i += 16) {
        float16x8_t vec_c0, vec_c1, vec_c2, vec_c3;

        float_type partial_sum = (float_type) -0.0f;
#pragma unroll
        for (int kk = 0; kk < K; kk += ActK) {
#pragma unroll
            for (int k = 0; k < ActK; k++) {
                // (M // bm, KK / K / 4, bm / 16 / 2, K * 16)
                uint8x16_t vec_as = vld1q_u8(a + i * K + (kk + k) * 16);
                uint8x16_t vec_a_top = vshrq_n_u8(vec_as, 4);
                uint8x16_t vec_a_bot = vandq_u8(vec_as, vec_mask);

                int8x16_t vec_v_bot_tmp = vqtbl1q_s8(vec_lut[kk + k], vec_a_bot);
                int8x16_t vec_v_top_tmp = vqtbl1q_s8(vec_lut[kk + k], vec_a_top);
                adder_bot.push(vec_v_bot_tmp, k);
                adder_top.push(vec_v_top_tmp, k);
            }

            float16x8_t vec_v_bot_low  = vcvtq_f16_s16(adder_bot.get_low());
            float16x8_t vec_v_bot_high = vcvtq_f16_s16(adder_bot.get_high());
            float16x8_t vec_v_top_low  = vcvtq_f16_s16(adder_top.get_low());
            float16x8_t vec_v_top_high = vcvtq_f16_s16(adder_top.get_high());

            float_type lut_s = lut_scales[kk / ActK];
            float_type lut_b = lut_biases[kk / ActK];

            // lut_b = -sum(xi for i in range(ActK * 4))
            if (ZeroPoint) {
                partial_sum += lut_b;
            }

            // https://arxiv.org/pdf/2106.10860.pdf
            // Fast aggregation bias: -FastAggregationK * log2(FastAggregationK) / 4 * (act_k / FastAggregationK)
            if (FastAggregation) {
                lut_s = lut_s * ActK;
                lut_b -= lut_s * (mylog2<ActK>::value / 4 * get_bias_scale(Bits));
            }

#define lut_fma(vs, ib) \
    ((ib) % Bits) ? ((vs) * lut_s) \
                  : ((vs) * lut_s + lut_b)
            if (kk == 0) {
                vec_c0  = lut_fma(vec_v_bot_low,  (i / 4    ));
                vec_c1  = lut_fma(vec_v_bot_high, (i / 4 + 1));
                vec_c2  = lut_fma(vec_v_top_low,  (i / 4 + 2));
                vec_c3  = lut_fma(vec_v_top_high, (i / 4 + 3));
            } else {
                vec_c0 += lut_fma(vec_v_bot_low,  (i / 4    ));
                vec_c1 += lut_fma(vec_v_bot_high, (i / 4 + 1));
                vec_c2 += lut_fma(vec_v_top_low,  (i / 4 + 2));
                vec_c3 += lut_fma(vec_v_top_high, (i / 4 + 3));
            }
#undef lut_fma
        }

        if (ZeroPoint) {
            // OneScale mode is disabled for ZeroPoint = True
            float16x8_t vec_s0 = vld1q_f16(scales + ((i / 4    ) / Bits) * 16);
            float16x8_t vec_s1 = vld1q_f16(scales + ((i / 4 + 1) / Bits) * 16);
            float16x8_t vec_s2 = vld1q_f16(scales + ((i / 4 + 2) / Bits) * 16);
            float16x8_t vec_s3 = vld1q_f16(scales + ((i / 4 + 3) / Bits) * 16);
            // default_zero = 2 ** (bits - 1)
            // w = (w - default_zero - (zeros - default_zero)) * scales
            vec_c0 = vld1q_f16(c + i * 2)      + vec_c0 * vec_s0;
            vec_c1 = vld1q_f16(c + i * 2 + 8)  + vec_c1 * vec_s1;
            vec_c2 = vld1q_f16(c + i * 2 + 16) + vec_c2 * vec_s2;
            vec_c3 = vld1q_f16(c + i * 2 + 24) + vec_c3 * vec_s3;
            float16x8_t vec_z0 = vld1q_f16(scales + ((i / 4    ) / Bits) * 16 + 8);
            float16x8_t vec_z1 = vld1q_f16(scales + ((i / 4 + 1) / Bits) * 16 + 8);
            float16x8_t vec_z2 = vld1q_f16(scales + ((i / 4 + 2) / Bits) * 16 + 8);
            float16x8_t vec_z3 = vld1q_f16(scales + ((i / 4 + 3) / Bits) * 16 + 8);
            partial_sum *= 2;
#define add_zero(cs, zs, ib) \
    ((ib) % Bits) ? ((cs)) \
                  : ((cs) + zs * partial_sum)
            vst1q_f16(c + i * 2,      add_zero(vec_c0, vec_z0, (i / 4    )));
            vst1q_f16(c + i * 2 + 8,  add_zero(vec_c1, vec_z1, (i / 4 + 1)));
            vst1q_f16(c + i * 2 + 16, add_zero(vec_c2, vec_z2, (i / 4 + 2)));
            vst1q_f16(c + i * 2 + 24, add_zero(vec_c3, vec_z3, (i / 4 + 3)));
#undef add_zero
        } else {
            if (OneScale) {
                float_type vec_s = scales[0];
                vst1q_f16(c + i * 2,      vld1q_f16(c + i * 2     ) + vec_c0 * vec_s);
                vst1q_f16(c + i * 2 + 8,  vld1q_f16(c + i * 2 + 8 ) + vec_c1 * vec_s);
                vst1q_f16(c + i * 2 + 16, vld1q_f16(c + i * 2 + 16) + vec_c2 * vec_s);
                vst1q_f16(c + i * 2 + 24, vld1q_f16(c + i * 2 + 24) + vec_c3 * vec_s);
            } else {
                float16x8_t vec_s0 = vld1q_f16(scales + ((i / 4    ) / Bits) * 8);
                float16x8_t vec_s1 = vld1q_f16(scales + ((i / 4 + 1) / Bits) * 8);
                float16x8_t vec_s2 = vld1q_f16(scales + ((i / 4 + 2) / Bits) * 8);
                float16x8_t vec_s3 = vld1q_f16(scales + ((i / 4 + 3) / Bits) * 8);
                vst1q_f16(c + i * 2,      vld1q_f16(c + i * 2     ) + vec_c0 * vec_s0);
                vst1q_f16(c + i * 2 + 8,  vld1q_f16(c + i * 2 + 8 ) + vec_c1 * vec_s1);
                vst1q_f16(c + i * 2 + 16, vld1q_f16(c + i * 2 + 16) + vec_c2 * vec_s2);
                vst1q_f16(c + i * 2 + 24, vld1q_f16(c + i * 2 + 24) + vec_c3 * vec_s3);
            }
        }
    }
#elif defined __AVX2__
    const __m128i vec_mask = _mm_set1_epi8(0x0f);
    __m128i vec_lut[K];

#pragma unroll
    for (int k = 0; k < K; k++) {
        vec_lut[k] = _mm_loadu_si128(reinterpret_cast<__m128i*>(lut + k * 16));
    }

    SignedAdder<FastAggregation, ActK> adder;
    for (int i = 0; i < m / 2; i += 16) {
        __m256 vec_c0, vec_c1, vec_c2, vec_c3;

        float_type partial_sum = (float_type)-0.0f;
#pragma unroll
        for (int kk = 0; kk < K; kk += ActK) {
#pragma unroll
            for (int k = 0; k < ActK; k++) {
                // (M // bm, KK / K / 4, bm / 16 / 2, K * 16)
                __m128i vec_as = _mm_loadu_si128(reinterpret_cast<__m128i*>(a + i * K + (kk + k) * 16));
                __m128i vec_a_bot = _mm_and_si128(vec_as, vec_mask);
                __m128i vec_a_top = _mm_and_si128(_mm_srli_epi16(vec_as, 4), vec_mask);

                __m256i vec_lut_ = _mm256_set_m128i(vec_lut[kk + k], vec_lut[kk + k]);
                __m256i vec_a = _mm256_set_m128i(vec_a_top, vec_a_bot);
                __m256i vec_v = _mm256_shuffle_epi8(vec_lut_, vec_a);
                adder.push(vec_v, k);
            }

            __m256 vec_v_low_low = _mm256_cvtepi32_ps(extract_low_epi16_epi32(adder.get_low()));
            __m256 vec_v_low_high = _mm256_cvtepi32_ps(extract_high_epi16_epi32(adder.get_low()));
            __m256 vec_v_high_low = _mm256_cvtepi32_ps(extract_low_epi16_epi32(adder.get_high()));
            __m256 vec_v_high_high = _mm256_cvtepi32_ps(extract_high_epi16_epi32(adder.get_high()));

            float_type lut_s = lut_scales[kk / ActK];
            float_type lut_b = lut_biases[kk / ActK];

            partial_sum += lut_b;

            if (FastAggregation) {
                lut_s = lut_s * ActK;
                lut_b -= lut_s * (mylog2<ActK>::value / 4 * get_bias_scale(Bits));
            }

#define lut_fma(vs, ib) \
    ((ib) % Bits) ? (_mm256_mul_ps((vs),   _mm256_set1_ps(lut_s))) \
                  : (_mm256_fmadd_ps((vs), _mm256_set1_ps(lut_s), _mm256_set1_ps(lut_b)))
            if (kk == 0) {
                vec_c0 = lut_fma(vec_v_low_low,   (i / 4    ));
                vec_c1 = lut_fma(vec_v_low_high,  (i / 4 + 1));
                vec_c2 = lut_fma(vec_v_high_low,  (i / 4 + 2));
                vec_c3 = lut_fma(vec_v_high_high, (i / 4 + 3));
            } else {
                vec_c0 = _mm256_add_ps(vec_c0, lut_fma(vec_v_low_low,   (i / 4    )));
                vec_c1 = _mm256_add_ps(vec_c1, lut_fma(vec_v_low_high,  (i / 4 + 1)));
                vec_c2 = _mm256_add_ps(vec_c2, lut_fma(vec_v_high_low,  (i / 4 + 2)));
                vec_c3 = _mm256_add_ps(vec_c3, lut_fma(vec_v_high_high, (i / 4 + 3)));
            }
#undef lut_fma
        }

        if (ZeroPoint) {
            __m256 vec_s0 = _mm256_loadu_ps(scales + ((i / 4    ) / Bits) * 16);
            __m256 vec_s1 = _mm256_loadu_ps(scales + ((i / 4 + 1) / Bits) * 16);
            __m256 vec_s2 = _mm256_loadu_ps(scales + ((i / 4 + 2) / Bits) * 16);
            __m256 vec_s3 = _mm256_loadu_ps(scales + ((i / 4 + 3) / Bits) * 16);
            vec_c0 = _mm256_fmadd_ps(vec_c0, vec_s0, _mm256_loadu_ps(c + i * 2));
            vec_c1 = _mm256_fmadd_ps(vec_c1, vec_s1, _mm256_loadu_ps(c + i * 2 + 8));
            vec_c2 = _mm256_fmadd_ps(vec_c2, vec_s2, _mm256_loadu_ps(c + i * 2 + 16));
            vec_c3 = _mm256_fmadd_ps(vec_c3, vec_s3, _mm256_loadu_ps(c + i * 2 + 24));
            __m256 vec_z0 = _mm256_loadu_ps(scales + ((i / 4    ) / Bits) * 16 + 8);
            __m256 vec_z1 = _mm256_loadu_ps(scales + ((i / 4 + 1) / Bits) * 16 + 8);
            __m256 vec_z2 = _mm256_loadu_ps(scales + ((i / 4 + 2) / Bits) * 16 + 8);
            __m256 vec_z3 = _mm256_loadu_ps(scales + ((i / 4 + 3) / Bits) * 16 + 8);
            partial_sum *= 2;
#define add_zero(cs, zs, ib) \
    ((ib) % Bits) ? ((cs)) \
                  : (_mm256_fmadd_ps((zs), _mm256_set1_ps(partial_sum), (cs)))
            _mm256_storeu_ps(c + i * 2,      add_zero(vec_c0, vec_z0, (i / 4    )));
            _mm256_storeu_ps(c + i * 2 + 8,  add_zero(vec_c1, vec_z1, (i / 4 + 1)));
            _mm256_storeu_ps(c + i * 2 + 16, add_zero(vec_c2, vec_z2, (i / 4 + 2)));
            _mm256_storeu_ps(c + i * 2 + 24, add_zero(vec_c3, vec_z3, (i / 4 + 3)));
#undef add_zero
        } else {
            __m256 vec_s0 = _mm256_loadu_ps(scales + ((i / 4    ) / Bits) * 8);
            __m256 vec_s1 = _mm256_loadu_ps(scales + ((i / 4 + 1) / Bits) * 8);
            __m256 vec_s2 = _mm256_loadu_ps(scales + ((i / 4 + 2) / Bits) * 8);
            __m256 vec_s3 = _mm256_loadu_ps(scales + ((i / 4 + 3) / Bits) * 8);
            _mm256_storeu_ps(c + i * 2,      _mm256_fmadd_ps(vec_c0, vec_s0, _mm256_loadu_ps(c + i * 2)));
            _mm256_storeu_ps(c + i * 2 + 8,  _mm256_fmadd_ps(vec_c1, vec_s1, _mm256_loadu_ps(c + i * 2 + 8)));
            _mm256_storeu_ps(c + i * 2 + 16, _mm256_fmadd_ps(vec_c2, vec_s2, _mm256_loadu_ps(c + i * 2 + 16)));
            _mm256_storeu_ps(c + i * 2 + 24, _mm256_fmadd_ps(vec_c3, vec_s3, _mm256_loadu_ps(c + i * 2 + 24)));
        }
    }
#endif

    return 0;
}

// Unified scale
// TODO: implement fast aggregation for unified scale
template <int K, int Bits>
inline int32_t tbl_g4_int8_int32_update_impl(int32_t m, int32_t* c, int8_t* lut, uint8_t* a) {
#ifdef __ARM_NEON
    const uint8x16_t vec_mask = vdupq_n_u8(0x0f);
    int8x16_t vec_lut[K];

#pragma unroll
    for (int k = 0; k < K; k++) {
        vec_lut[k] = vld1q_s8(lut + k * 16);
    }

    SignedAdder<false, K> adder_bot, adder_top;
    for (int i = 0; i < m / 2; i += 16) {
#pragma unroll
        for (int k = 0; k < K; k++) {
            // (M // bm, KK / K / 4, bm / 16 / 2, K * 16)
            uint8x16_t vec_as = vld1q_u8(a + i * K + k * 16);
            uint8x16_t vec_a_top = vshrq_n_u8(vec_as, 4);
            uint8x16_t vec_a_bot = vandq_u8(vec_as, vec_mask);

            int8x16_t vec_v_bot_tmp = vqtbl1q_s8(vec_lut[k], vec_a_bot);
            int8x16_t vec_v_top_tmp = vqtbl1q_s8(vec_lut[k], vec_a_top);
            adder_bot.push(vec_v_bot_tmp, k);
            adder_top.push(vec_v_top_tmp, k);
        }

        int16x8_t vec_v_bot_low  = adder_bot.get_low();
        int16x8_t vec_v_bot_high = adder_bot.get_high();
        int16x8_t vec_v_top_low  = adder_top.get_low();
        int16x8_t vec_v_top_high = adder_top.get_high();

        int32x4_t vec_v_bot_low_low = vmovl_s16(vget_low_s16(vec_v_bot_low));
        int32x4_t vec_v_bot_low_high = vmovl_high_s16(vec_v_bot_low);
        int32x4_t vec_v_bot_high_low = vmovl_s16(vget_low_s16(vec_v_bot_high));
        int32x4_t vec_v_bot_high_high = vmovl_high_s16(vec_v_bot_high);
        int32x4_t vec_v_top_low_low = vmovl_s16(vget_low_s16(vec_v_top_low));
        int32x4_t vec_v_top_low_high = vmovl_high_s16(vec_v_top_low);
        int32x4_t vec_v_top_high_low = vmovl_s16(vget_low_s16(vec_v_top_high));
        int32x4_t vec_v_top_high_high = vmovl_high_s16(vec_v_top_high);

        vst1q_s32(c + i * 2,      vld1q_s32(c + i * 2     ) + vec_v_bot_low_low  );
        vst1q_s32(c + i * 2 + 4,  vld1q_s32(c + i * 2 + 4 ) + vec_v_bot_low_high );
        vst1q_s32(c + i * 2 + 8,  vld1q_s32(c + i * 2 + 8 ) + vec_v_bot_high_low );
        vst1q_s32(c + i * 2 + 12, vld1q_s32(c + i * 2 + 12) + vec_v_bot_high_high);
        vst1q_s32(c + i * 2 + 16, vld1q_s32(c + i * 2 + 16) + vec_v_top_low_low  );
        vst1q_s32(c + i * 2 + 20, vld1q_s32(c + i * 2 + 20) + vec_v_top_low_high );
        vst1q_s32(c + i * 2 + 24, vld1q_s32(c + i * 2 + 24) + vec_v_top_high_low );
        vst1q_s32(c + i * 2 + 28, vld1q_s32(c + i * 2 + 28) + vec_v_top_high_high);
    }

#elif defined __AVX2__
    const __m128i vec_mask = _mm_set1_epi8(0x0f);
    __m128i vec_lut[K];

#pragma unroll
    for (int k = 0; k < K; k++) {
        vec_lut[k] = _mm_loadu_si128(reinterpret_cast<__m128i*>(lut + k * 16));
    }

    SignedAdder<false, K> adder;
    for (int i = 0; i < m / 2; i += 16) {
#pragma unroll
        for (int k = 0; k < K; k++) {
            // (M // bm, KK / K / 4, bm / 16 / 2, K * 16)
            __m128i vec_as = _mm_loadu_si128(reinterpret_cast<__m128i*>(a + i * K + k * 16));
            __m128i vec_a_bot = _mm_and_si128(vec_as, vec_mask);
            __m128i vec_a_top = _mm_and_si128(_mm_srli_epi16(vec_as, 4), vec_mask);

            __m256i vec_lut_ = _mm256_set_m128i(vec_lut[k], vec_lut[k]);
            __m256i vec_a = _mm256_set_m128i(vec_a_top, vec_a_bot);
            __m256i vec_v = _mm256_shuffle_epi8(vec_lut_, vec_a);
            adder.push(vec_v, k);
        }

        __m256i vec_v_low_low   = extract_low_epi16_epi32(adder.get_low());
        __m256i vec_v_low_high  = extract_high_epi16_epi32(adder.get_low());
        __m256i vec_v_high_low  = extract_low_epi16_epi32(adder.get_high());
        __m256i vec_v_high_high = extract_high_epi16_epi32(adder.get_high());
        __m256i vec_c0 = _mm256_loadu_si256(reinterpret_cast<__m256i*>(c + i * 2));
        __m256i vec_c1 = _mm256_loadu_si256(reinterpret_cast<__m256i*>(c + i * 2 + 8));
        __m256i vec_c2 = _mm256_loadu_si256(reinterpret_cast<__m256i*>(c + i * 2 + 16));
        __m256i vec_c3 = _mm256_loadu_si256(reinterpret_cast<__m256i*>(c + i * 2 + 24));
        vec_c0 = _mm256_add_epi32(vec_c0, vec_v_low_low);
        vec_c1 = _mm256_add_epi32(vec_c1, vec_v_low_high);
        vec_c2 = _mm256_add_epi32(vec_c2, vec_v_high_low);
        vec_c3 = _mm256_add_epi32(vec_c3, vec_v_high_high);
        _mm256_storeu_si256(reinterpret_cast<__m256i*>(c + i * 2     ), vec_c0);
        _mm256_storeu_si256(reinterpret_cast<__m256i*>(c + i * 2 + 8 ), vec_c1);
        _mm256_storeu_si256(reinterpret_cast<__m256i*>(c + i * 2 + 16), vec_c2);
        _mm256_storeu_si256(reinterpret_cast<__m256i*>(c + i * 2 + 24), vec_c3);
    }

#endif
    return 0;
}

template <int K, int Bits>
inline int32_t tbl_g4_int8_int16_update_impl(int32_t m, int16_t* c, int8_t* lut, uint8_t* a) {
#ifdef __ARM_NEON
    const uint8x16_t vec_mask = vdupq_n_u8(0x0f);
    int8x16_t vec_lut[K];

#pragma unroll
    for (int k = 0; k < K; k++) {
        vec_lut[k] = vld1q_s8(lut + k * 16);
    }

    SignedAdder<false, K> adder_bot, adder_top;
    for (int i = 0; i < m / 2; i += 16) {
#pragma unroll
        for (int k = 0; k < K; k++) {
            // (M // bm, KK / K / 4, bm / 16 / 2, K * 16)
            uint8x16_t vec_as = vld1q_u8(a + i * K + k * 16);
            uint8x16_t vec_a_top = vshrq_n_u8(vec_as, 4);
            uint8x16_t vec_a_bot = vandq_u8(vec_as, vec_mask);

            int8x16_t vec_v_bot_tmp = vqtbl1q_s8(vec_lut[k], vec_a_bot);
            int8x16_t vec_v_top_tmp = vqtbl1q_s8(vec_lut[k], vec_a_top);
            adder_bot.push(vec_v_bot_tmp, k);
            adder_top.push(vec_v_top_tmp, k);
        }

        int16x8_t vec_v_bot_low  = adder_bot.get_low();
        int16x8_t vec_v_bot_high = adder_bot.get_high();
        int16x8_t vec_v_top_low  = adder_top.get_low();
        int16x8_t vec_v_top_high = adder_top.get_high();
        vst1q_s16(c + i * 2,      vld1q_s16(c + i * 2     ) + vec_v_bot_low);
        vst1q_s16(c + i * 2 + 8,  vld1q_s16(c + i * 2 + 8 ) + vec_v_bot_high);
        vst1q_s16(c + i * 2 + 16, vld1q_s16(c + i * 2 + 16) + vec_v_top_low);
        vst1q_s16(c + i * 2 + 24, vld1q_s16(c + i * 2 + 24) + vec_v_top_high);
    }
#elif defined __AVX2__
    // TODO: implement this
#endif
}

// TODO: refactor function naming
#define tbl_g4_float_float_update(s, k, b, ak, fa, z, os)                                                                                                       \
    int32_t tbl_g4_float_float_update_s##s##_k##k##_b##b##_ak##ak##_fa##fa##_z##z##_os##os(int32_t m, void* c, void* lut, uint8_t* a, void* scales) {  \
        return tbl_g4_float_float_update_impl<s, k, b>(m, (float_type*)c, (float_type*)lut, a, (float_type*)scales);                                                                            \
    }

#define tbl_g4_int8_float_update(s, k, b, ak, fa, z, os)                                                                                                                                                   \
    int32_t tbl_g4_int8_float_update_s##s##_k##k##_b##b##_ak##ak##_fa##fa##_z##z##_os##os(int32_t m, void* c, int8_t* lut, uint8_t* a, void* scales, void* lut_scales, void* lut_biases) {  \
        return tbl_g4_int8_float_update_impl<s, k, b, ak, fa, z, os>(m, (float_type*)c, lut, a, (float_type*)scales, (float_type*)lut_scales, (float_type*)lut_biases);                                                                                        \
    }

#define tbl_g4_int8_int32_update(s, k, b, ak, fa, z, os)                                                                            \
    int32_t tbl_g4_int8_int32_update_s##s##_k##k##_b##b##_ak##ak##_fa##fa##_z##z##_os##os(int32_t m, int32_t* c, int8_t* lut, uint8_t* a) {  \
        return tbl_g4_int8_int32_update_impl<k, b>(m, c, lut, a);                                                        \
    }

#define tbl_g4_int8_int16_update(s, k, b, ak, fa, z, os)                                                                            \
    int32_t tbl_g4_int8_int16_update_s##s##_k##k##_b##b##_ak##ak##_fa##fa##_z##z##_os##os(int32_t m, int16_t* c, int8_t* lut, uint8_t* a) {  \
        return tbl_g4_int8_int16_update_impl<k, b>(m, c, lut, a);                                                        \
    }

#ifdef __cplusplus
extern "C" {
#endif

int32_t tbl_int8_reset(int32_t m, int8_t* c) {
    memset(c, 0, m);
    return 0;
}

int32_t tbl_float_reset(int32_t m, void* c) {
    memset(c, 0, m * sizeof(float_type));
    return 0;
}

int32_t tbl_int32_reset(int32_t m, int32_t* c) {
    memset(c, 0, m * sizeof(int32_t));
    return 0;
}

int32_t tbl_int16_reset(int32_t m, int16_t* c) {
    memset(c, 0, m * sizeof(int16_t));
    return 0;
}

#ifdef __cplusplus
}
#endif
#ifndef INTRINSIC_TYPES_H
#define INTRINSIC_TYPES_H

#ifdef __ARM_NEON
#include <arm_neon.h>
#elif defined __AVX2__
#include <immintrin.h>
#endif

#ifdef __ARM_NEON
typedef float16_t float_type;
#else
#include <stdint.h>
typedef float float_type;
#endif

#endif

#include <algorithm>

#ifdef __ARM_NEON
#define vaddvq_f16(v) \
    ((v)[0] + (v)[1] + (v)[2] + (v)[3] + (v)[4] + (v)[5] + (v)[6] + (v)[7])
#elif defined __AVX2__
static inline float _mm256_addv_ps(const __m256 v) {
    __m128 res = _mm256_extractf128_ps(v, 1);
    res = _mm_add_ps(res, _mm256_castps256_ps128(v));
    res = _mm_add_ps(res, _mm_movehl_ps(res, res));
    res = _mm_add_ss(res, _mm_movehdup_ps(res));
    return _mm_cvtss_f32(res);
}
#endif

// Current implementation requires (K * 4) == act_group_size and K >= 8
// s0 = -1, s1 = 1
// TODO: loop K
// Still preserve FastAggregationK althougth it's unused for compatibility
template <int FastAggregationK = 16, int Bits = 4>
inline int32_t lut_ctor_g4_int8_impl(int32_t act_k, int8_t* qlut, float_type* b, float_type* lut_scales, float_type* lut_biases) {
#ifdef __ARM_NEON
    float16x8_t vec_lut[16];
    float16_t biases = 0.0;
    float16_t scales = *lut_scales;
    float16_t t_scales = scales ? 1.0 / scales : 0.0;

    for (int k = 0; k < act_k / 32; ++k) {
        float16x8x4_t vec_bs = vld4q_f16(b + k * 32);

#pragma unroll
        for (int g = 1; g < 16; g += 2) {
            vec_lut[g] = vec_bs.val[0];
            if (g & 0b0010) {
                vec_lut[g] = vec_lut[g] + vec_bs.val[1];
            } else {
                vec_lut[g] = vec_lut[g] - vec_bs.val[1];
            }
            if (g & 0b0100) {
                vec_lut[g] = vec_lut[g] + vec_bs.val[2];
            } else {
                vec_lut[g] = vec_lut[g] - vec_bs.val[2];
            }
            if (g & 0b1000) {
                vec_lut[g] = vec_lut[g] + vec_bs.val[3];
            } else {
                vec_lut[g] = vec_lut[g] - vec_bs.val[3];
            }
        }
#pragma unroll
        for (int g = 0; g < 16; g += 2) {
            vec_lut[g] = -vec_lut[15 - g];
        }

        biases += vaddvq_f16(vec_lut[0]);
#undef vaddvq_f16

#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vec_lut[g] = vmulq_n_f16(vec_lut[g], t_scales);
        }

        int8x8_t vec_qlut[16];
#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vec_qlut[g] = vqmovn_s16(vcvtnq_s16_f16(vec_lut[g]));
        }

#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vst1_lane_s8(qlut + k * 8 * 16          + g, vec_qlut[g], 0);
        }
#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vst1_lane_s8(qlut + k * 8 * 16 + 16     + g, vec_qlut[g], 1);
        }
#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vst1_lane_s8(qlut + k * 8 * 16 + 16 * 2 + g, vec_qlut[g], 2);
        }
#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vst1_lane_s8(qlut + k * 8 * 16 + 16 * 3 + g, vec_qlut[g], 3);
        }
#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vst1_lane_s8(qlut + k * 8 * 16 + 16 * 4 + g, vec_qlut[g], 4);
        }
#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vst1_lane_s8(qlut + k * 8 * 16 + 16 * 5 + g, vec_qlut[g], 5);
        }
#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vst1_lane_s8(qlut + k * 8 * 16 + 16 * 6 + g, vec_qlut[g], 6);
        }
#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vst1_lane_s8(qlut + k * 8 * 16 + 16 * 7 + g, vec_qlut[g], 7);
        }
    }
#elif defined __AVX2__
    __m256 vec_lut[16];
    float biases = 0.0;
    const __m256i vec_bi = _mm256_set_epi32(112, 96, 80, 64, 48, 32, 16, 0);
    float scales = *lut_scales;
    float t_scales = scales ? 1.0f / scales : 0.0f;

    for (int k = 0; k < act_k / 32; ++k) {
        __m256 vec_b0 = _mm256_i32gather_ps(b + k * 32 + 0, vec_bi, 1);
        __m256 vec_b1 = _mm256_i32gather_ps(b + k * 32 + 1, vec_bi, 1);
        __m256 vec_b2 = _mm256_i32gather_ps(b + k * 32 + 2, vec_bi, 1);
        __m256 vec_b3 = _mm256_i32gather_ps(b + k * 32 + 3, vec_bi, 1);

#pragma unroll
        for (int g = 1; g < 16; g += 2) {
            vec_lut[g] = vec_b0;
            if (g & 0b0010) {
                vec_lut[g] = _mm256_add_ps(vec_lut[g], vec_b1);
            } else {
                vec_lut[g] = _mm256_sub_ps(vec_lut[g], vec_b1);
            }
            if (g & 0b0100) {
                vec_lut[g] = _mm256_add_ps(vec_lut[g], vec_b2);
            } else {
                vec_lut[g] = _mm256_sub_ps(vec_lut[g], vec_b2);
            }
            if (g & 0b1000) {
                vec_lut[g] = _mm256_add_ps(vec_lut[g], vec_b3);
            } else {
                vec_lut[g] = _mm256_sub_ps(vec_lut[g], vec_b3);
            }
        }
#pragma unroll
        for (int g = 0; g < 16; g += 2) {
            vec_lut[g] = -vec_lut[15 - g];
        }

        biases += _mm256_addv_ps(vec_lut[0]);

#pragma unroll
        for (int g = 0; g < 16; ++g) {
            vec_lut[g] = _mm256_mul_ps(vec_lut[g], _mm256_set1_ps(t_scales));
        }

        __m256i vec_qlut[4];
        const __m256i shuf = _mm256_setr_epi8(0, 4, 8, 12, 1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15,
                                              0, 4, 8, 12, 1, 5, 9, 13, 2, 6, 10, 14, 3, 7, 11, 15);
#pragma unroll
        for (int g = 0; g < 4; g += 1) {
            __m256i i0 = _mm256_cvtps_epi32(_mm256_round_ps(vec_lut[g * 4 + 0], _MM_FROUND_TO_NEAREST_INT | _MM_FROUND_NO_EXC));
            __m256i i1 = _mm256_cvtps_epi32(_mm256_round_ps(vec_lut[g * 4 + 1], _MM_FROUND_TO_NEAREST_INT | _MM_FROUND_NO_EXC));
            __m256i i2 = _mm256_cvtps_epi32(_mm256_round_ps(vec_lut[g * 4 + 2], _MM_FROUND_TO_NEAREST_INT | _MM_FROUND_NO_EXC));
            __m256i i3 = _mm256_cvtps_epi32(_mm256_round_ps(vec_lut[g * 4 + 3], _MM_FROUND_TO_NEAREST_INT | _MM_FROUND_NO_EXC));

            i0 = _mm256_packs_epi32(i0, i1);	         // 0, 1, 2, 3,  8, 9, 10, 11,  4, 5, 6, 7, 12, 13, 14, 15
            i2 = _mm256_packs_epi32(i2, i3);	         // 16, 17, 18, 19,  24, 25, 26, 27,  20, 21, 22, 23, 28, 29, 30, 31
                                                         // Convert int16 to int8
            i0 = _mm256_packs_epi16(i0, i2);	         // 0, 1, 2, 3,  8, 9, 10, 11,  16, 17, 18, 19,  24, 25, 26, 27,  4, 5, 6, 7,  12, 13, 14, 15,  20, 21, 22, 23,  28, 29, 30, 31
            vec_qlut[g] = _mm256_shuffle_epi8(i0, shuf);  // 0, 8, 16, 24,  1, 9, 17, 25,  2, 10, 18, 26,  3, 11, 19, 27,  4, 12, 20, 28,  5, 13, 21, 29,  6, 14, 22, 30,  7, 15, 23, 31
        }

        int32_t* qlut_i32 = reinterpret_cast<int32_t*>(qlut);
#pragma unroll
        for (int g = 0; g < 4; ++g) {
            qlut_i32[k * 32 + 0 * 4 + g] = _mm256_extract_epi32(vec_qlut[g], 0);
        }
#pragma unroll
        for (int g = 0; g < 4; ++g) {
            qlut_i32[k * 32 + 1 * 4 + g] = _mm256_extract_epi32(vec_qlut[g], 1);
        }
#pragma unroll
        for (int g = 0; g < 4; ++g) {
            qlut_i32[k * 32 + 2 * 4 + g] = _mm256_extract_epi32(vec_qlut[g], 2);
        }
#pragma unroll
        for (int g = 0; g < 4; ++g) {
            qlut_i32[k * 32 + 3 * 4 + g] = _mm256_extract_epi32(vec_qlut[g], 3);
        }
#pragma unroll
        for (int g = 0; g < 4; ++g) {
            qlut_i32[k * 32 + 4 * 4 + g] = _mm256_extract_epi32(vec_qlut[g], 4);
        }
#pragma unroll
        for (int g = 0; g < 4; ++g) {
            qlut_i32[k * 32 + 5 * 4 + g] = _mm256_extract_epi32(vec_qlut[g], 5);
        }
#pragma unroll
        for (int g = 0; g < 4; ++g) {
            qlut_i32[k * 32 + 6 * 4 + g] = _mm256_extract_epi32(vec_qlut[g], 6);
        }
#pragma unroll
        for (int g = 0; g < 4; ++g) {
            qlut_i32[k * 32 + 7 * 4 + g] = _mm256_extract_epi32(vec_qlut[g], 7);
        }
    }
#endif

    *lut_scales = scales;
    *lut_biases = biases;

    return 0;
}

#define lut_ctor(fak, bits)                                                                                                      \
    int32_t lut_ctor_g4_int8_k##fak##_b##bits(int32_t act_k, int8_t* qlut, void* b, void* lut_scales, void* lut_biases) {        \
        return lut_ctor_g4_int8_impl<fak, bits>(act_k, qlut, (float_type*)b, (float_type*)lut_scales, (float_type*)lut_biases);  \
    }

#ifdef __cplusplus
extern "C" {
#endif

int32_t partial_max_g4_int8_k8(void* lut_scales_, void* b_) {
    float_type* lut_scales = (float_type*)lut_scales_;
    float_type* b = (float_type*)b_;
#ifdef __ARM_NEON
    float16x8x4_t vec_bs = vld4q_f16(b);
    float16x8_t abssum = vabsq_f16(vec_bs.val[0]) + vabsq_f16(vec_bs.val[1]) + vabsq_f16(vec_bs.val[2]) + vabsq_f16(vec_bs.val[3]);
    float16_t scales = vmaxvq_f16(abssum) / 127;
    *lut_scales = std::max(*lut_scales, scales);
#elif defined __AVX2__
    const __m256i vec_bi = _mm256_set_epi32(112, 96, 80, 64, 48, 32, 16, 0);
    __m256 vec_b0 = _mm256_i32gather_ps(b + 0, vec_bi, 1);
    __m256 vec_b1 = _mm256_i32gather_ps(b + 1, vec_bi, 1);
    __m256 vec_b2 = _mm256_i32gather_ps(b + 2, vec_bi, 1);
    __m256 vec_b3 = _mm256_i32gather_ps(b + 3, vec_bi, 1);
    const __m256 vec_sign = _mm256_set1_ps(-0.0f);
    __m256 vec_babs0 = _mm256_andnot_ps(vec_sign, vec_b0);
    __m256 vec_babs1 = _mm256_andnot_ps(vec_sign, vec_b1);
    __m256 vec_babs2 = _mm256_andnot_ps(vec_sign, vec_b2);
    __m256 vec_babs3 = _mm256_andnot_ps(vec_sign, vec_b3);
    __m256 abssum = _mm256_add_ps(_mm256_add_ps(vec_babs0, vec_babs1), _mm256_add_ps(vec_babs2, vec_babs3));
    __m128 max4 = _mm_max_ps(_mm256_extractf128_ps(abssum, 1), _mm256_castps256_ps128(abssum));
    max4 = _mm_max_ps(max4, _mm_movehl_ps(max4, max4));
    max4 = _mm_max_ss(max4, _mm_movehdup_ps(max4));
    float scales = _mm_cvtss_f32(max4) / 127;
    *lut_scales = std::max(*lut_scales, scales);
#endif

    return 0;
}

int32_t partial_max_reset(void* lut_scales_) {
    float_type* lut_scales = (float_type*)lut_scales_;
    *lut_scales = 0.0;
    return 0;
}

#ifdef __cplusplus
}
#endif

tbl_g4_int8_float_update(true, 16, 4, 16, false, true, false)

lut_ctor(0, 4)

tbl_g4_int8_float_update(true, 16, 2, 16, false, true, false)

lut_ctor(0, 2)

#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>



#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m6144_k4096_n1_b4(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {
  
  
  
  
  
  
  
  
  
  
  
  
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_A_shape = (NULL);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_A_strides = (NULL);
  int32_t dev_id = (0);
  void* A_1 = (A);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_LUT_shape = (NULL);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_LUT_strides = (NULL);
  void* LUT_1 = (LUT);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_Scales_strides = (NULL);
  void* Scales_1 = (Scales);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_LUT_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_LUT_Biases_shape = (NULL);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_C_shape = (NULL);
  void* qgemm_lut_t4_int8_m6144_k4096_n1_b4_C_strides = (NULL);
  void* C_1 = (C);
  if (!(qgemm_lut_t4_int8_m6144_k4096_n1_b4_A_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m6144_k4096_n1_b4_LUT_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m6144_k4096_n1_b4_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m6144_k4096_n1_b4_LUT_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m6144_k4096_n1_b4_LUT_Biases_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m6144_k4096_n1_b4_C_strides == NULL)) {
  }
  for (int32_t m_outer = 0; m_outer < 24; ++m_outer) {
    alignas(32) half CBits[256];
    alignas(32) half C_global[64];
    tbl_float_reset(256, (&(CBits[0])));
    for (int32_t k_outer = 0; k_outer < 64; ++k_outer) {
      tbl_g4_int8_float_update_strue_k16_b4_ak16_fafalse_ztrue_osfalse(256, (&(CBits[0])), (&(((int8_t*)LUT_1)[(k_outer * 256)])), (&(((uint8_t*)A_1)[((m_outer * 131072) + (k_outer * 2048))])), (&(((half*)Scales_1)[((m_outer * 4096) + ((k_outer >> 1) * 128))])), (&(((half*)LUT_Scales_1)[k_outer])), (&(((half*)LUT_Biases_1)[k_outer])));
    }
    for (int32_t m_c_outer = 0; m_c_outer < 2; ++m_c_outer) {
      int32_t cse_var_2 = (m_c_outer * 32);
      int32_t cse_var_1 = (m_c_outer * 128);
      C_global[cse_var_2] = ((half)((((((float)CBits[cse_var_1]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 8)])) + (((float)CBits[(cse_var_1 + 16)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 24)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 1)] = ((half)((((((float)CBits[(cse_var_1 + 1)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 9)])) + (((float)CBits[(cse_var_1 + 17)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 25)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 2)] = ((half)((((((float)CBits[(cse_var_1 + 2)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 10)])) + (((float)CBits[(cse_var_1 + 18)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 26)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 3)] = ((half)((((((float)CBits[(cse_var_1 + 3)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 11)])) + (((float)CBits[(cse_var_1 + 19)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 27)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 4)] = ((half)((((((float)CBits[(cse_var_1 + 4)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 12)])) + (((float)CBits[(cse_var_1 + 20)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 28)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 5)] = ((half)((((((float)CBits[(cse_var_1 + 5)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 13)])) + (((float)CBits[(cse_var_1 + 21)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 29)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 6)] = ((half)((((((float)CBits[(cse_var_1 + 6)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 14)])) + (((float)CBits[(cse_var_1 + 22)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 30)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 7)] = ((half)((((((float)CBits[(cse_var_1 + 7)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 15)])) + (((float)CBits[(cse_var_1 + 23)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 31)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 8)] = ((half)((((((float)CBits[(cse_var_1 + 32)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 40)])) + (((float)CBits[(cse_var_1 + 48)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 56)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 9)] = ((half)((((((float)CBits[(cse_var_1 + 33)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 41)])) + (((float)CBits[(cse_var_1 + 49)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 57)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 10)] = ((half)((((((float)CBits[(cse_var_1 + 34)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 42)])) + (((float)CBits[(cse_var_1 + 50)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 58)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 11)] = ((half)((((((float)CBits[(cse_var_1 + 35)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 43)])) + (((float)CBits[(cse_var_1 + 51)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 59)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 12)] = ((half)((((((float)CBits[(cse_var_1 + 36)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 44)])) + (((float)CBits[(cse_var_1 + 52)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 60)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 13)] = ((half)((((((float)CBits[(cse_var_1 + 37)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 45)])) + (((float)CBits[(cse_var_1 + 53)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 61)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 14)] = ((half)((((((float)CBits[(cse_var_1 + 38)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 46)])) + (((float)CBits[(cse_var_1 + 54)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 62)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 15)] = ((half)((((((float)CBits[(cse_var_1 + 39)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 47)])) + (((float)CBits[(cse_var_1 + 55)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 63)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 16)] = ((half)((((((float)CBits[(cse_var_1 + 64)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 72)])) + (((float)CBits[(cse_var_1 + 80)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 88)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 17)] = ((half)((((((float)CBits[(cse_var_1 + 65)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 73)])) + (((float)CBits[(cse_var_1 + 81)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 89)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 18)] = ((half)((((((float)CBits[(cse_var_1 + 66)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 74)])) + (((float)CBits[(cse_var_1 + 82)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 90)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 19)] = ((half)((((((float)CBits[(cse_var_1 + 67)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 75)])) + (((float)CBits[(cse_var_1 + 83)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 91)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 20)] = ((half)((((((float)CBits[(cse_var_1 + 68)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 76)])) + (((float)CBits[(cse_var_1 + 84)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 92)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 21)] = ((half)((((((float)CBits[(cse_var_1 + 69)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 77)])) + (((float)CBits[(cse_var_1 + 85)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 93)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 22)] = ((half)((((((float)CBits[(cse_var_1 + 70)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 78)])) + (((float)CBits[(cse_var_1 + 86)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 94)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 23)] = ((half)((((((float)CBits[(cse_var_1 + 71)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 79)])) + (((float)CBits[(cse_var_1 + 87)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 95)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 24)] = ((half)((((((float)CBits[(cse_var_1 + 96)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 104)])) + (((float)CBits[(cse_var_1 + 112)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 120)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 25)] = ((half)((((((float)CBits[(cse_var_1 + 97)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 105)])) + (((float)CBits[(cse_var_1 + 113)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 121)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 26)] = ((half)((((((float)CBits[(cse_var_1 + 98)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 106)])) + (((float)CBits[(cse_var_1 + 114)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 122)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 27)] = ((half)((((((float)CBits[(cse_var_1 + 99)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 107)])) + (((float)CBits[(cse_var_1 + 115)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 123)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 28)] = ((half)((((((float)CBits[(cse_var_1 + 100)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 108)])) + (((float)CBits[(cse_var_1 + 116)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 124)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 29)] = ((half)((((((float)CBits[(cse_var_1 + 101)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 109)])) + (((float)CBits[(cse_var_1 + 117)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 125)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 30)] = ((half)((((((float)CBits[(cse_var_1 + 102)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 110)])) + (((float)CBits[(cse_var_1 + 118)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 126)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 31)] = ((half)((((((float)CBits[(cse_var_1 + 103)]) * 5.000000e-01f) + ((float)CBits[(cse_var_1 + 111)])) + (((float)CBits[(cse_var_1 + 119)]) * 2.000000e+00f)) + (((float)CBits[(cse_var_1 + 127)]) * 4.000000e+00f)));
    }
    for (int32_t m_inner_outer = 0; m_inner_outer < 2; ++m_inner_outer) {
      int32_t cse_var_4 = (m_inner_outer * 32);
      int32_t cse_var_3 = ((m_outer * 64) + cse_var_4);
      ((half*)C_1)[cse_var_3] = C_global[cse_var_4];
      ((half*)C_1)[(cse_var_3 + 1)] = C_global[(cse_var_4 + 1)];
      ((half*)C_1)[(cse_var_3 + 2)] = C_global[(cse_var_4 + 2)];
      ((half*)C_1)[(cse_var_3 + 3)] = C_global[(cse_var_4 + 3)];
      ((half*)C_1)[(cse_var_3 + 4)] = C_global[(cse_var_4 + 4)];
      ((half*)C_1)[(cse_var_3 + 5)] = C_global[(cse_var_4 + 5)];
      ((half*)C_1)[(cse_var_3 + 6)] = C_global[(cse_var_4 + 6)];
      ((half*)C_1)[(cse_var_3 + 7)] = C_global[(cse_var_4 + 7)];
      ((half*)C_1)[(cse_var_3 + 8)] = C_global[(cse_var_4 + 8)];
      ((half*)C_1)[(cse_var_3 + 9)] = C_global[(cse_var_4 + 9)];
      ((half*)C_1)[(cse_var_3 + 10)] = C_global[(cse_var_4 + 10)];
      ((half*)C_1)[(cse_var_3 + 11)] = C_global[(cse_var_4 + 11)];
      ((half*)C_1)[(cse_var_3 + 12)] = C_global[(cse_var_4 + 12)];
      ((half*)C_1)[(cse_var_3 + 13)] = C_global[(cse_var_4 + 13)];
      ((half*)C_1)[(cse_var_3 + 14)] = C_global[(cse_var_4 + 14)];
      ((half*)C_1)[(cse_var_3 + 15)] = C_global[(cse_var_4 + 15)];
      ((half*)C_1)[(cse_var_3 + 16)] = C_global[(cse_var_4 + 16)];
      ((half*)C_1)[(cse_var_3 + 17)] = C_global[(cse_var_4 + 17)];
      ((half*)C_1)[(cse_var_3 + 18)] = C_global[(cse_var_4 + 18)];
      ((half*)C_1)[(cse_var_3 + 19)] = C_global[(cse_var_4 + 19)];
      ((half*)C_1)[(cse_var_3 + 20)] = C_global[(cse_var_4 + 20)];
      ((half*)C_1)[(cse_var_3 + 21)] = C_global[(cse_var_4 + 21)];
      ((half*)C_1)[(cse_var_3 + 22)] = C_global[(cse_var_4 + 22)];
      ((half*)C_1)[(cse_var_3 + 23)] = C_global[(cse_var_4 + 23)];
      ((half*)C_1)[(cse_var_3 + 24)] = C_global[(cse_var_4 + 24)];
      ((half*)C_1)[(cse_var_3 + 25)] = C_global[(cse_var_4 + 25)];
      ((half*)C_1)[(cse_var_3 + 26)] = C_global[(cse_var_4 + 26)];
      ((half*)C_1)[(cse_var_3 + 27)] = C_global[(cse_var_4 + 27)];
      ((half*)C_1)[(cse_var_3 + 28)] = C_global[(cse_var_4 + 28)];
      ((half*)C_1)[(cse_var_3 + 29)] = C_global[(cse_var_4 + 29)];
      ((half*)C_1)[(cse_var_3 + 30)] = C_global[(cse_var_4 + 30)];
      ((half*)C_1)[(cse_var_3 + 31)] = C_global[(cse_var_4 + 31)];
    }
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>




#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m6144_k4096_n1_b4(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {
  
  
  
  
  
  
  
  
  void* preprocessor_t4_int8_m6144_k4096_n1_b4_B_shape = (NULL);
  void* preprocessor_t4_int8_m6144_k4096_n1_b4_B_strides = (NULL);
  int32_t dev_id = (0);
  void* B_1 = (B);
  void* preprocessor_t4_int8_m6144_k4096_n1_b4_LUT_Scales_shape = (NULL);
  void* preprocessor_t4_int8_m6144_k4096_n1_b4_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* preprocessor_t4_int8_m6144_k4096_n1_b4_LUT_Biases_shape = (NULL);
  void* preprocessor_t4_int8_m6144_k4096_n1_b4_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* preprocessor_t4_int8_m6144_k4096_n1_b4_QLUT_shape = (NULL);
  void* preprocessor_t4_int8_m6144_k4096_n1_b4_QLUT_strides = (NULL);
  void* QLUT_1 = (QLUT);
  if (!(preprocessor_t4_int8_m6144_k4096_n1_b4_B_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m6144_k4096_n1_b4_LUT_Scales_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m6144_k4096_n1_b4_LUT_Biases_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m6144_k4096_n1_b4_QLUT_strides == NULL)) {
  }
  for (int32_t kk_outer = 0; kk_outer < 64; ++kk_outer) {
    partial_max_reset((&(((half*)LUT_Scales_1)[kk_outer])));
    for (int32_t k_outer = 0; k_outer < 2; ++k_outer) {
      partial_max_g4_int8_k8((&(((half*)LUT_Scales_1)[kk_outer])), (&(((half*)B_1)[((kk_outer * 64) + (k_outer * 32))])));
    }
  }
  for (int32_t k_outer_1 = 0; k_outer_1 < 64; ++k_outer_1) {
    lut_ctor_g4_int8_k0_b4(64, (&(((int8_t*)QLUT_1)[(k_outer_1 * 256)])), (&(((half*)B_1)[(k_outer_1 * 64)])), (&(((half*)LUT_Scales_1)[k_outer_1])), (&(((half*)LUT_Biases_1)[k_outer_1])));
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>



#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m3072_k4096_n1_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {
  
  
  
  
  
  
  
  
  
  
  
  
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_A_shape = (NULL);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_A_strides = (NULL);
  int32_t dev_id = (0);
  void* A_1 = (A);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_LUT_shape = (NULL);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_LUT_strides = (NULL);
  void* LUT_1 = (LUT);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_Scales_strides = (NULL);
  void* Scales_1 = (Scales);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_LUT_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_LUT_Biases_shape = (NULL);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_C_shape = (NULL);
  void* qgemm_lut_t4_int8_m3072_k4096_n1_b2_C_strides = (NULL);
  void* C_1 = (C);
  if (!(qgemm_lut_t4_int8_m3072_k4096_n1_b2_A_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m3072_k4096_n1_b2_LUT_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m3072_k4096_n1_b2_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m3072_k4096_n1_b2_LUT_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m3072_k4096_n1_b2_LUT_Biases_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m3072_k4096_n1_b2_C_strides == NULL)) {
  }
  for (int32_t m_outer = 0; m_outer < 24; ++m_outer) {
    alignas(32) half CBits[128];
    alignas(32) half C_global[64];
    tbl_float_reset(128, (&(CBits[0])));
    for (int32_t k_outer = 0; k_outer < 64; ++k_outer) {
      tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_ztrue_osfalse(128, (&(CBits[0])), (&(((int8_t*)LUT_1)[(k_outer * 256)])), (&(((uint8_t*)A_1)[((m_outer * 65536) + (k_outer * 1024))])), (&(((half*)Scales_1)[((m_outer * 4096) + ((k_outer >> 1) * 128))])), (&(((half*)LUT_Scales_1)[k_outer])), (&(((half*)LUT_Biases_1)[k_outer])));
    }
    for (int32_t m_c_outer = 0; m_c_outer < 2; ++m_c_outer) {
      int32_t cse_var_2 = (m_c_outer * 64);
      int32_t cse_var_1 = (m_c_outer * 32);
      C_global[cse_var_1] = ((half)((((float)CBits[cse_var_2]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 8)])));
      C_global[(cse_var_1 + 1)] = ((half)((((float)CBits[(cse_var_2 + 1)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 9)])));
      C_global[(cse_var_1 + 2)] = ((half)((((float)CBits[(cse_var_2 + 2)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 10)])));
      C_global[(cse_var_1 + 3)] = ((half)((((float)CBits[(cse_var_2 + 3)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 11)])));
      C_global[(cse_var_1 + 4)] = ((half)((((float)CBits[(cse_var_2 + 4)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 12)])));
      C_global[(cse_var_1 + 5)] = ((half)((((float)CBits[(cse_var_2 + 5)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 13)])));
      C_global[(cse_var_1 + 6)] = ((half)((((float)CBits[(cse_var_2 + 6)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 14)])));
      C_global[(cse_var_1 + 7)] = ((half)((((float)CBits[(cse_var_2 + 7)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 15)])));
      C_global[(cse_var_1 + 8)] = ((half)((((float)CBits[(cse_var_2 + 16)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 24)])));
      C_global[(cse_var_1 + 9)] = ((half)((((float)CBits[(cse_var_2 + 17)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 25)])));
      C_global[(cse_var_1 + 10)] = ((half)((((float)CBits[(cse_var_2 + 18)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 26)])));
      C_global[(cse_var_1 + 11)] = ((half)((((float)CBits[(cse_var_2 + 19)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 27)])));
      C_global[(cse_var_1 + 12)] = ((half)((((float)CBits[(cse_var_2 + 20)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 28)])));
      C_global[(cse_var_1 + 13)] = ((half)((((float)CBits[(cse_var_2 + 21)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 29)])));
      C_global[(cse_var_1 + 14)] = ((half)((((float)CBits[(cse_var_2 + 22)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 30)])));
      C_global[(cse_var_1 + 15)] = ((half)((((float)CBits[(cse_var_2 + 23)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 31)])));
      C_global[(cse_var_1 + 16)] = ((half)((((float)CBits[(cse_var_2 + 32)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 40)])));
      C_global[(cse_var_1 + 17)] = ((half)((((float)CBits[(cse_var_2 + 33)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 41)])));
      C_global[(cse_var_1 + 18)] = ((half)((((float)CBits[(cse_var_2 + 34)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 42)])));
      C_global[(cse_var_1 + 19)] = ((half)((((float)CBits[(cse_var_2 + 35)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 43)])));
      C_global[(cse_var_1 + 20)] = ((half)((((float)CBits[(cse_var_2 + 36)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 44)])));
      C_global[(cse_var_1 + 21)] = ((half)((((float)CBits[(cse_var_2 + 37)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 45)])));
      C_global[(cse_var_1 + 22)] = ((half)((((float)CBits[(cse_var_2 + 38)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 46)])));
      C_global[(cse_var_1 + 23)] = ((half)((((float)CBits[(cse_var_2 + 39)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 47)])));
      C_global[(cse_var_1 + 24)] = ((half)((((float)CBits[(cse_var_2 + 48)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 56)])));
      C_global[(cse_var_1 + 25)] = ((half)((((float)CBits[(cse_var_2 + 49)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 57)])));
      C_global[(cse_var_1 + 26)] = ((half)((((float)CBits[(cse_var_2 + 50)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 58)])));
      C_global[(cse_var_1 + 27)] = ((half)((((float)CBits[(cse_var_2 + 51)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 59)])));
      C_global[(cse_var_1 + 28)] = ((half)((((float)CBits[(cse_var_2 + 52)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 60)])));
      C_global[(cse_var_1 + 29)] = ((half)((((float)CBits[(cse_var_2 + 53)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 61)])));
      C_global[(cse_var_1 + 30)] = ((half)((((float)CBits[(cse_var_2 + 54)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 62)])));
      C_global[(cse_var_1 + 31)] = ((half)((((float)CBits[(cse_var_2 + 55)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 63)])));
    }
    for (int32_t m_inner_outer = 0; m_inner_outer < 2; ++m_inner_outer) {
      int32_t cse_var_4 = (m_inner_outer * 32);
      int32_t cse_var_3 = ((m_outer * 64) + cse_var_4);
      ((half*)C_1)[cse_var_3] = C_global[cse_var_4];
      ((half*)C_1)[(cse_var_3 + 1)] = C_global[(cse_var_4 + 1)];
      ((half*)C_1)[(cse_var_3 + 2)] = C_global[(cse_var_4 + 2)];
      ((half*)C_1)[(cse_var_3 + 3)] = C_global[(cse_var_4 + 3)];
      ((half*)C_1)[(cse_var_3 + 4)] = C_global[(cse_var_4 + 4)];
      ((half*)C_1)[(cse_var_3 + 5)] = C_global[(cse_var_4 + 5)];
      ((half*)C_1)[(cse_var_3 + 6)] = C_global[(cse_var_4 + 6)];
      ((half*)C_1)[(cse_var_3 + 7)] = C_global[(cse_var_4 + 7)];
      ((half*)C_1)[(cse_var_3 + 8)] = C_global[(cse_var_4 + 8)];
      ((half*)C_1)[(cse_var_3 + 9)] = C_global[(cse_var_4 + 9)];
      ((half*)C_1)[(cse_var_3 + 10)] = C_global[(cse_var_4 + 10)];
      ((half*)C_1)[(cse_var_3 + 11)] = C_global[(cse_var_4 + 11)];
      ((half*)C_1)[(cse_var_3 + 12)] = C_global[(cse_var_4 + 12)];
      ((half*)C_1)[(cse_var_3 + 13)] = C_global[(cse_var_4 + 13)];
      ((half*)C_1)[(cse_var_3 + 14)] = C_global[(cse_var_4 + 14)];
      ((half*)C_1)[(cse_var_3 + 15)] = C_global[(cse_var_4 + 15)];
      ((half*)C_1)[(cse_var_3 + 16)] = C_global[(cse_var_4 + 16)];
      ((half*)C_1)[(cse_var_3 + 17)] = C_global[(cse_var_4 + 17)];
      ((half*)C_1)[(cse_var_3 + 18)] = C_global[(cse_var_4 + 18)];
      ((half*)C_1)[(cse_var_3 + 19)] = C_global[(cse_var_4 + 19)];
      ((half*)C_1)[(cse_var_3 + 20)] = C_global[(cse_var_4 + 20)];
      ((half*)C_1)[(cse_var_3 + 21)] = C_global[(cse_var_4 + 21)];
      ((half*)C_1)[(cse_var_3 + 22)] = C_global[(cse_var_4 + 22)];
      ((half*)C_1)[(cse_var_3 + 23)] = C_global[(cse_var_4 + 23)];
      ((half*)C_1)[(cse_var_3 + 24)] = C_global[(cse_var_4 + 24)];
      ((half*)C_1)[(cse_var_3 + 25)] = C_global[(cse_var_4 + 25)];
      ((half*)C_1)[(cse_var_3 + 26)] = C_global[(cse_var_4 + 26)];
      ((half*)C_1)[(cse_var_3 + 27)] = C_global[(cse_var_4 + 27)];
      ((half*)C_1)[(cse_var_3 + 28)] = C_global[(cse_var_4 + 28)];
      ((half*)C_1)[(cse_var_3 + 29)] = C_global[(cse_var_4 + 29)];
      ((half*)C_1)[(cse_var_3 + 30)] = C_global[(cse_var_4 + 30)];
      ((half*)C_1)[(cse_var_3 + 31)] = C_global[(cse_var_4 + 31)];
    }
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>




#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m3072_k4096_n1_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {
  
  
  
  
  
  
  
  
  void* preprocessor_t4_int8_m3072_k4096_n1_b2_B_shape = (NULL);
  void* preprocessor_t4_int8_m3072_k4096_n1_b2_B_strides = (NULL);
  int32_t dev_id = (0);
  void* B_1 = (B);
  void* preprocessor_t4_int8_m3072_k4096_n1_b2_LUT_Scales_shape = (NULL);
  void* preprocessor_t4_int8_m3072_k4096_n1_b2_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* preprocessor_t4_int8_m3072_k4096_n1_b2_LUT_Biases_shape = (NULL);
  void* preprocessor_t4_int8_m3072_k4096_n1_b2_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* preprocessor_t4_int8_m3072_k4096_n1_b2_QLUT_shape = (NULL);
  void* preprocessor_t4_int8_m3072_k4096_n1_b2_QLUT_strides = (NULL);
  void* QLUT_1 = (QLUT);
  if (!(preprocessor_t4_int8_m3072_k4096_n1_b2_B_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m3072_k4096_n1_b2_LUT_Scales_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m3072_k4096_n1_b2_LUT_Biases_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m3072_k4096_n1_b2_QLUT_strides == NULL)) {
  }
  for (int32_t kk_outer = 0; kk_outer < 64; ++kk_outer) {
    partial_max_reset((&(((half*)LUT_Scales_1)[kk_outer])));
    for (int32_t k_outer = 0; k_outer < 2; ++k_outer) {
      partial_max_g4_int8_k8((&(((half*)LUT_Scales_1)[kk_outer])), (&(((half*)B_1)[((kk_outer * 64) + (k_outer * 32))])));
    }
  }
  for (int32_t k_outer_1 = 0; k_outer_1 < 64; ++k_outer_1) {
    lut_ctor_g4_int8_k0_b2(64, (&(((int8_t*)QLUT_1)[(k_outer_1 * 256)])), (&(((half*)B_1)[(k_outer_1 * 64)])), (&(((half*)LUT_Scales_1)[k_outer_1])), (&(((half*)LUT_Biases_1)[k_outer_1])));
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>



#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m16384_k4096_n1_b4(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {
  
  
  
  
  
  
  
  
  
  
  
  
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_A_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_A_strides = (NULL);
  int32_t dev_id = (0);
  void* A_1 = (A);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_LUT_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_LUT_strides = (NULL);
  void* LUT_1 = (LUT);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_Scales_strides = (NULL);
  void* Scales_1 = (Scales);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_LUT_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_LUT_Biases_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_C_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k4096_n1_b4_C_strides = (NULL);
  void* C_1 = (C);
  if (!(qgemm_lut_t4_int8_m16384_k4096_n1_b4_A_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k4096_n1_b4_LUT_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k4096_n1_b4_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k4096_n1_b4_LUT_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k4096_n1_b4_LUT_Biases_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k4096_n1_b4_C_strides == NULL)) {
  }
  for (int32_t m_outer = 0; m_outer < 16; ++m_outer) {
    alignas(32) uint64_t temp_CBits[256]; void* CBits = (void*)temp_CBits;
    if (CBits == NULL) {
      return -1;
    }
    alignas(32) half C_global[256];
    tbl_float_reset(1024, (&(((half*)CBits)[0])));
    for (int32_t k_outer = 0; k_outer < 64; ++k_outer) {
      tbl_g4_int8_float_update_strue_k16_b4_ak16_fafalse_ztrue_osfalse(1024, (&(((half*)CBits)[0])), (&(((int8_t*)LUT_1)[(k_outer * 256)])), (&(((uint8_t*)A_1)[((m_outer * 524288) + (k_outer * 8192))])), (&(((half*)Scales_1)[((m_outer * 16384) + ((k_outer >> 1) * 512))])), (&(((half*)LUT_Scales_1)[k_outer])), (&(((half*)LUT_Biases_1)[k_outer])));
    }
    for (int32_t m_c_outer = 0; m_c_outer < 8; ++m_c_outer) {
      int32_t cse_var_2 = (m_c_outer * 32);
      int32_t cse_var_1 = (m_c_outer * 128);
      C_global[cse_var_2] = ((half)((((((float)((half*)CBits)[cse_var_1]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 8)])) + (((float)((half*)CBits)[(cse_var_1 + 16)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 24)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 1)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 1)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 9)])) + (((float)((half*)CBits)[(cse_var_1 + 17)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 25)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 2)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 2)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 10)])) + (((float)((half*)CBits)[(cse_var_1 + 18)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 26)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 3)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 3)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 11)])) + (((float)((half*)CBits)[(cse_var_1 + 19)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 27)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 4)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 4)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 12)])) + (((float)((half*)CBits)[(cse_var_1 + 20)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 28)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 5)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 5)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 13)])) + (((float)((half*)CBits)[(cse_var_1 + 21)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 29)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 6)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 6)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 14)])) + (((float)((half*)CBits)[(cse_var_1 + 22)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 30)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 7)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 7)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 15)])) + (((float)((half*)CBits)[(cse_var_1 + 23)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 31)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 8)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 32)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 40)])) + (((float)((half*)CBits)[(cse_var_1 + 48)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 56)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 9)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 33)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 41)])) + (((float)((half*)CBits)[(cse_var_1 + 49)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 57)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 10)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 34)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 42)])) + (((float)((half*)CBits)[(cse_var_1 + 50)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 58)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 11)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 35)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 43)])) + (((float)((half*)CBits)[(cse_var_1 + 51)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 59)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 12)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 36)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 44)])) + (((float)((half*)CBits)[(cse_var_1 + 52)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 60)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 13)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 37)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 45)])) + (((float)((half*)CBits)[(cse_var_1 + 53)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 61)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 14)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 38)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 46)])) + (((float)((half*)CBits)[(cse_var_1 + 54)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 62)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 15)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 39)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 47)])) + (((float)((half*)CBits)[(cse_var_1 + 55)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 63)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 16)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 64)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 72)])) + (((float)((half*)CBits)[(cse_var_1 + 80)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 88)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 17)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 65)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 73)])) + (((float)((half*)CBits)[(cse_var_1 + 81)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 89)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 18)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 66)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 74)])) + (((float)((half*)CBits)[(cse_var_1 + 82)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 90)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 19)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 67)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 75)])) + (((float)((half*)CBits)[(cse_var_1 + 83)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 91)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 20)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 68)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 76)])) + (((float)((half*)CBits)[(cse_var_1 + 84)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 92)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 21)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 69)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 77)])) + (((float)((half*)CBits)[(cse_var_1 + 85)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 93)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 22)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 70)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 78)])) + (((float)((half*)CBits)[(cse_var_1 + 86)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 94)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 23)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 71)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 79)])) + (((float)((half*)CBits)[(cse_var_1 + 87)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 95)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 24)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 96)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 104)])) + (((float)((half*)CBits)[(cse_var_1 + 112)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 120)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 25)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 97)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 105)])) + (((float)((half*)CBits)[(cse_var_1 + 113)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 121)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 26)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 98)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 106)])) + (((float)((half*)CBits)[(cse_var_1 + 114)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 122)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 27)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 99)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 107)])) + (((float)((half*)CBits)[(cse_var_1 + 115)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 123)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 28)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 100)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 108)])) + (((float)((half*)CBits)[(cse_var_1 + 116)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 124)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 29)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 101)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 109)])) + (((float)((half*)CBits)[(cse_var_1 + 117)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 125)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 30)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 102)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 110)])) + (((float)((half*)CBits)[(cse_var_1 + 118)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 126)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 31)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 103)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 111)])) + (((float)((half*)CBits)[(cse_var_1 + 119)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 127)]) * 4.000000e+00f)));
    }
    for (int32_t m_inner_outer = 0; m_inner_outer < 8; ++m_inner_outer) {
      int32_t cse_var_4 = (m_inner_outer * 32);
      int32_t cse_var_3 = ((m_outer * 256) + cse_var_4);
      ((half*)C_1)[cse_var_3] = C_global[cse_var_4];
      ((half*)C_1)[(cse_var_3 + 1)] = C_global[(cse_var_4 + 1)];
      ((half*)C_1)[(cse_var_3 + 2)] = C_global[(cse_var_4 + 2)];
      ((half*)C_1)[(cse_var_3 + 3)] = C_global[(cse_var_4 + 3)];
      ((half*)C_1)[(cse_var_3 + 4)] = C_global[(cse_var_4 + 4)];
      ((half*)C_1)[(cse_var_3 + 5)] = C_global[(cse_var_4 + 5)];
      ((half*)C_1)[(cse_var_3 + 6)] = C_global[(cse_var_4 + 6)];
      ((half*)C_1)[(cse_var_3 + 7)] = C_global[(cse_var_4 + 7)];
      ((half*)C_1)[(cse_var_3 + 8)] = C_global[(cse_var_4 + 8)];
      ((half*)C_1)[(cse_var_3 + 9)] = C_global[(cse_var_4 + 9)];
      ((half*)C_1)[(cse_var_3 + 10)] = C_global[(cse_var_4 + 10)];
      ((half*)C_1)[(cse_var_3 + 11)] = C_global[(cse_var_4 + 11)];
      ((half*)C_1)[(cse_var_3 + 12)] = C_global[(cse_var_4 + 12)];
      ((half*)C_1)[(cse_var_3 + 13)] = C_global[(cse_var_4 + 13)];
      ((half*)C_1)[(cse_var_3 + 14)] = C_global[(cse_var_4 + 14)];
      ((half*)C_1)[(cse_var_3 + 15)] = C_global[(cse_var_4 + 15)];
      ((half*)C_1)[(cse_var_3 + 16)] = C_global[(cse_var_4 + 16)];
      ((half*)C_1)[(cse_var_3 + 17)] = C_global[(cse_var_4 + 17)];
      ((half*)C_1)[(cse_var_3 + 18)] = C_global[(cse_var_4 + 18)];
      ((half*)C_1)[(cse_var_3 + 19)] = C_global[(cse_var_4 + 19)];
      ((half*)C_1)[(cse_var_3 + 20)] = C_global[(cse_var_4 + 20)];
      ((half*)C_1)[(cse_var_3 + 21)] = C_global[(cse_var_4 + 21)];
      ((half*)C_1)[(cse_var_3 + 22)] = C_global[(cse_var_4 + 22)];
      ((half*)C_1)[(cse_var_3 + 23)] = C_global[(cse_var_4 + 23)];
      ((half*)C_1)[(cse_var_3 + 24)] = C_global[(cse_var_4 + 24)];
      ((half*)C_1)[(cse_var_3 + 25)] = C_global[(cse_var_4 + 25)];
      ((half*)C_1)[(cse_var_3 + 26)] = C_global[(cse_var_4 + 26)];
      ((half*)C_1)[(cse_var_3 + 27)] = C_global[(cse_var_4 + 27)];
      ((half*)C_1)[(cse_var_3 + 28)] = C_global[(cse_var_4 + 28)];
      ((half*)C_1)[(cse_var_3 + 29)] = C_global[(cse_var_4 + 29)];
      ((half*)C_1)[(cse_var_3 + 30)] = C_global[(cse_var_4 + 30)];
      ((half*)C_1)[(cse_var_3 + 31)] = C_global[(cse_var_4 + 31)];
    }
    if (0 != 0) {
      return -1;
    }
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>




#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m16384_k4096_n1_b4(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {
  
  
  
  
  
  
  
  
  void* preprocessor_t4_int8_m16384_k4096_n1_b4_B_shape = (NULL);
  void* preprocessor_t4_int8_m16384_k4096_n1_b4_B_strides = (NULL);
  int32_t dev_id = (0);
  void* B_1 = (B);
  void* preprocessor_t4_int8_m16384_k4096_n1_b4_LUT_Scales_shape = (NULL);
  void* preprocessor_t4_int8_m16384_k4096_n1_b4_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* preprocessor_t4_int8_m16384_k4096_n1_b4_LUT_Biases_shape = (NULL);
  void* preprocessor_t4_int8_m16384_k4096_n1_b4_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* preprocessor_t4_int8_m16384_k4096_n1_b4_QLUT_shape = (NULL);
  void* preprocessor_t4_int8_m16384_k4096_n1_b4_QLUT_strides = (NULL);
  void* QLUT_1 = (QLUT);
  if (!(preprocessor_t4_int8_m16384_k4096_n1_b4_B_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m16384_k4096_n1_b4_LUT_Scales_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m16384_k4096_n1_b4_LUT_Biases_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m16384_k4096_n1_b4_QLUT_strides == NULL)) {
  }
  for (int32_t kk_outer = 0; kk_outer < 64; ++kk_outer) {
    partial_max_reset((&(((half*)LUT_Scales_1)[kk_outer])));
    for (int32_t k_outer = 0; k_outer < 2; ++k_outer) {
      partial_max_g4_int8_k8((&(((half*)LUT_Scales_1)[kk_outer])), (&(((half*)B_1)[((kk_outer * 64) + (k_outer * 32))])));
    }
  }
  for (int32_t k_outer_1 = 0; k_outer_1 < 64; ++k_outer_1) {
    lut_ctor_g4_int8_k0_b4(64, (&(((int8_t*)QLUT_1)[(k_outer_1 * 256)])), (&(((half*)B_1)[(k_outer_1 * 64)])), (&(((half*)LUT_Scales_1)[k_outer_1])), (&(((half*)LUT_Biases_1)[k_outer_1])));
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>



#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m8192_k4096_n1_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {
  
  
  
  
  
  
  
  
  
  
  
  
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_strides = (NULL);
  int32_t dev_id = (0);
  void* A_1 = (A);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_strides = (NULL);
  void* LUT_1 = (LUT);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_strides = (NULL);
  void* Scales_1 = (Scales);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_strides = (NULL);
  void* C_1 = (C);
  if (!(qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_strides == NULL)) {
  }
  for (int32_t m_outer = 0; m_outer < 16; ++m_outer) {
    alignas(32) uint64_t temp_CBits[128]; void* CBits = (void*)temp_CBits;
    if (CBits == NULL) {
      return -1;
    }
    alignas(32) half C_global[256];
    tbl_float_reset(512, (&(((half*)CBits)[0])));
    for (int32_t k_outer = 0; k_outer < 64; ++k_outer) {
      tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_ztrue_osfalse(512, (&(((half*)CBits)[0])), (&(((int8_t*)LUT_1)[(k_outer * 256)])), (&(((uint8_t*)A_1)[((m_outer * 262144) + (k_outer * 4096))])), (&(((half*)Scales_1)[((m_outer * 16384) + ((k_outer >> 1) * 512))])), (&(((half*)LUT_Scales_1)[k_outer])), (&(((half*)LUT_Biases_1)[k_outer])));
    }
    for (int32_t m_c_outer = 0; m_c_outer < 8; ++m_c_outer) {
      int32_t cse_var_2 = (m_c_outer * 64);
      int32_t cse_var_1 = (m_c_outer * 32);
      C_global[cse_var_1] = ((half)((((float)((half*)CBits)[cse_var_2]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 8)])));
      C_global[(cse_var_1 + 1)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 1)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 9)])));
      C_global[(cse_var_1 + 2)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 2)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 10)])));
      C_global[(cse_var_1 + 3)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 3)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 11)])));
      C_global[(cse_var_1 + 4)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 4)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 12)])));
      C_global[(cse_var_1 + 5)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 5)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 13)])));
      C_global[(cse_var_1 + 6)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 6)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 14)])));
      C_global[(cse_var_1 + 7)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 7)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 15)])));
      C_global[(cse_var_1 + 8)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 16)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 24)])));
      C_global[(cse_var_1 + 9)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 17)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 25)])));
      C_global[(cse_var_1 + 10)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 18)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 26)])));
      C_global[(cse_var_1 + 11)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 19)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 27)])));
      C_global[(cse_var_1 + 12)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 20)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 28)])));
      C_global[(cse_var_1 + 13)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 21)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 29)])));
      C_global[(cse_var_1 + 14)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 22)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 30)])));
      C_global[(cse_var_1 + 15)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 23)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 31)])));
      C_global[(cse_var_1 + 16)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 32)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 40)])));
      C_global[(cse_var_1 + 17)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 33)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 41)])));
      C_global[(cse_var_1 + 18)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 34)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 42)])));
      C_global[(cse_var_1 + 19)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 35)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 43)])));
      C_global[(cse_var_1 + 20)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 36)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 44)])));
      C_global[(cse_var_1 + 21)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 37)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 45)])));
      C_global[(cse_var_1 + 22)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 38)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 46)])));
      C_global[(cse_var_1 + 23)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 39)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 47)])));
      C_global[(cse_var_1 + 24)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 48)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 56)])));
      C_global[(cse_var_1 + 25)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 49)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 57)])));
      C_global[(cse_var_1 + 26)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 50)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 58)])));
      C_global[(cse_var_1 + 27)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 51)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 59)])));
      C_global[(cse_var_1 + 28)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 52)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 60)])));
      C_global[(cse_var_1 + 29)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 53)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 61)])));
      C_global[(cse_var_1 + 30)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 54)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 62)])));
      C_global[(cse_var_1 + 31)] = ((half)((((float)((half*)CBits)[(cse_var_2 + 55)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_2 + 63)])));
    }
    for (int32_t m_inner_outer = 0; m_inner_outer < 8; ++m_inner_outer) {
      int32_t cse_var_4 = (m_inner_outer * 32);
      int32_t cse_var_3 = ((m_outer * 256) + cse_var_4);
      ((half*)C_1)[cse_var_3] = C_global[cse_var_4];
      ((half*)C_1)[(cse_var_3 + 1)] = C_global[(cse_var_4 + 1)];
      ((half*)C_1)[(cse_var_3 + 2)] = C_global[(cse_var_4 + 2)];
      ((half*)C_1)[(cse_var_3 + 3)] = C_global[(cse_var_4 + 3)];
      ((half*)C_1)[(cse_var_3 + 4)] = C_global[(cse_var_4 + 4)];
      ((half*)C_1)[(cse_var_3 + 5)] = C_global[(cse_var_4 + 5)];
      ((half*)C_1)[(cse_var_3 + 6)] = C_global[(cse_var_4 + 6)];
      ((half*)C_1)[(cse_var_3 + 7)] = C_global[(cse_var_4 + 7)];
      ((half*)C_1)[(cse_var_3 + 8)] = C_global[(cse_var_4 + 8)];
      ((half*)C_1)[(cse_var_3 + 9)] = C_global[(cse_var_4 + 9)];
      ((half*)C_1)[(cse_var_3 + 10)] = C_global[(cse_var_4 + 10)];
      ((half*)C_1)[(cse_var_3 + 11)] = C_global[(cse_var_4 + 11)];
      ((half*)C_1)[(cse_var_3 + 12)] = C_global[(cse_var_4 + 12)];
      ((half*)C_1)[(cse_var_3 + 13)] = C_global[(cse_var_4 + 13)];
      ((half*)C_1)[(cse_var_3 + 14)] = C_global[(cse_var_4 + 14)];
      ((half*)C_1)[(cse_var_3 + 15)] = C_global[(cse_var_4 + 15)];
      ((half*)C_1)[(cse_var_3 + 16)] = C_global[(cse_var_4 + 16)];
      ((half*)C_1)[(cse_var_3 + 17)] = C_global[(cse_var_4 + 17)];
      ((half*)C_1)[(cse_var_3 + 18)] = C_global[(cse_var_4 + 18)];
      ((half*)C_1)[(cse_var_3 + 19)] = C_global[(cse_var_4 + 19)];
      ((half*)C_1)[(cse_var_3 + 20)] = C_global[(cse_var_4 + 20)];
      ((half*)C_1)[(cse_var_3 + 21)] = C_global[(cse_var_4 + 21)];
      ((half*)C_1)[(cse_var_3 + 22)] = C_global[(cse_var_4 + 22)];
      ((half*)C_1)[(cse_var_3 + 23)] = C_global[(cse_var_4 + 23)];
      ((half*)C_1)[(cse_var_3 + 24)] = C_global[(cse_var_4 + 24)];
      ((half*)C_1)[(cse_var_3 + 25)] = C_global[(cse_var_4 + 25)];
      ((half*)C_1)[(cse_var_3 + 26)] = C_global[(cse_var_4 + 26)];
      ((half*)C_1)[(cse_var_3 + 27)] = C_global[(cse_var_4 + 27)];
      ((half*)C_1)[(cse_var_3 + 28)] = C_global[(cse_var_4 + 28)];
      ((half*)C_1)[(cse_var_3 + 29)] = C_global[(cse_var_4 + 29)];
      ((half*)C_1)[(cse_var_3 + 30)] = C_global[(cse_var_4 + 30)];
      ((half*)C_1)[(cse_var_3 + 31)] = C_global[(cse_var_4 + 31)];
    }
    if (0 != 0) {
      return -1;
    }
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>




#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m8192_k4096_n1_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {
  
  
  
  
  
  
  
  
  void* preprocessor_t4_int8_m8192_k4096_n1_b2_B_shape = (NULL);
  void* preprocessor_t4_int8_m8192_k4096_n1_b2_B_strides = (NULL);
  int32_t dev_id = (0);
  void* B_1 = (B);
  void* preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape = (NULL);
  void* preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape = (NULL);
  void* preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_shape = (NULL);
  void* preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_strides = (NULL);
  void* QLUT_1 = (QLUT);
  if (!(preprocessor_t4_int8_m8192_k4096_n1_b2_B_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Scales_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Biases_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_strides == NULL)) {
  }
  for (int32_t kk_outer = 0; kk_outer < 64; ++kk_outer) {
    partial_max_reset((&(((half*)LUT_Scales_1)[kk_outer])));
    for (int32_t k_outer = 0; k_outer < 2; ++k_outer) {
      partial_max_g4_int8_k8((&(((half*)LUT_Scales_1)[kk_outer])), (&(((half*)B_1)[((kk_outer * 64) + (k_outer * 32))])));
    }
  }
  for (int32_t k_outer_1 = 0; k_outer_1 < 64; ++k_outer_1) {
    lut_ctor_g4_int8_k0_b2(64, (&(((int8_t*)QLUT_1)[(k_outer_1 * 256)])), (&(((half*)B_1)[(k_outer_1 * 64)])), (&(((half*)LUT_Scales_1)[k_outer_1])), (&(((half*)LUT_Biases_1)[k_outer_1])));
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>



#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m57344_k4096_n1_b4(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {
  
  
  
  
  
  
  
  
  
  
  
  
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_A_shape = (NULL);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_A_strides = (NULL);
  int32_t dev_id = (0);
  void* A_1 = (A);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_LUT_shape = (NULL);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_LUT_strides = (NULL);
  void* LUT_1 = (LUT);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_Scales_strides = (NULL);
  void* Scales_1 = (Scales);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_LUT_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_LUT_Biases_shape = (NULL);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_C_shape = (NULL);
  void* qgemm_lut_t4_int8_m57344_k4096_n1_b4_C_strides = (NULL);
  void* C_1 = (C);
  if (!(qgemm_lut_t4_int8_m57344_k4096_n1_b4_A_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m57344_k4096_n1_b4_LUT_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m57344_k4096_n1_b4_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m57344_k4096_n1_b4_LUT_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m57344_k4096_n1_b4_LUT_Biases_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m57344_k4096_n1_b4_C_strides == NULL)) {
  }
  for (int32_t m_outer = 0; m_outer < 112; ++m_outer) {
    alignas(32) uint64_t temp_CBits[128]; void* CBits = (void*)temp_CBits;
    if (CBits == NULL) {
      return -1;
    }
    alignas(32) half C_global[128];
    tbl_float_reset(512, (&(((half*)CBits)[0])));
    for (int32_t k_outer = 0; k_outer < 64; ++k_outer) {
      tbl_g4_int8_float_update_strue_k16_b4_ak16_fafalse_ztrue_osfalse(512, (&(((half*)CBits)[0])), (&(((int8_t*)LUT_1)[(k_outer * 256)])), (&(((uint8_t*)A_1)[((m_outer * 262144) + (k_outer * 4096))])), (&(((half*)Scales_1)[((m_outer * 8192) + ((k_outer >> 1) * 256))])), (&(((half*)LUT_Scales_1)[k_outer])), (&(((half*)LUT_Biases_1)[k_outer])));
    }
    for (int32_t m_c_outer = 0; m_c_outer < 4; ++m_c_outer) {
      int32_t cse_var_2 = (m_c_outer * 32);
      int32_t cse_var_1 = (m_c_outer * 128);
      C_global[cse_var_2] = ((half)((((((float)((half*)CBits)[cse_var_1]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 8)])) + (((float)((half*)CBits)[(cse_var_1 + 16)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 24)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 1)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 1)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 9)])) + (((float)((half*)CBits)[(cse_var_1 + 17)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 25)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 2)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 2)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 10)])) + (((float)((half*)CBits)[(cse_var_1 + 18)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 26)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 3)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 3)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 11)])) + (((float)((half*)CBits)[(cse_var_1 + 19)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 27)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 4)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 4)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 12)])) + (((float)((half*)CBits)[(cse_var_1 + 20)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 28)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 5)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 5)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 13)])) + (((float)((half*)CBits)[(cse_var_1 + 21)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 29)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 6)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 6)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 14)])) + (((float)((half*)CBits)[(cse_var_1 + 22)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 30)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 7)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 7)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 15)])) + (((float)((half*)CBits)[(cse_var_1 + 23)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 31)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 8)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 32)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 40)])) + (((float)((half*)CBits)[(cse_var_1 + 48)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 56)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 9)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 33)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 41)])) + (((float)((half*)CBits)[(cse_var_1 + 49)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 57)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 10)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 34)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 42)])) + (((float)((half*)CBits)[(cse_var_1 + 50)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 58)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 11)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 35)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 43)])) + (((float)((half*)CBits)[(cse_var_1 + 51)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 59)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 12)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 36)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 44)])) + (((float)((half*)CBits)[(cse_var_1 + 52)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 60)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 13)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 37)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 45)])) + (((float)((half*)CBits)[(cse_var_1 + 53)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 61)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 14)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 38)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 46)])) + (((float)((half*)CBits)[(cse_var_1 + 54)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 62)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 15)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 39)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 47)])) + (((float)((half*)CBits)[(cse_var_1 + 55)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 63)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 16)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 64)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 72)])) + (((float)((half*)CBits)[(cse_var_1 + 80)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 88)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 17)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 65)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 73)])) + (((float)((half*)CBits)[(cse_var_1 + 81)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 89)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 18)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 66)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 74)])) + (((float)((half*)CBits)[(cse_var_1 + 82)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 90)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 19)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 67)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 75)])) + (((float)((half*)CBits)[(cse_var_1 + 83)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 91)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 20)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 68)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 76)])) + (((float)((half*)CBits)[(cse_var_1 + 84)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 92)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 21)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 69)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 77)])) + (((float)((half*)CBits)[(cse_var_1 + 85)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 93)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 22)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 70)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 78)])) + (((float)((half*)CBits)[(cse_var_1 + 86)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 94)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 23)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 71)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 79)])) + (((float)((half*)CBits)[(cse_var_1 + 87)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 95)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 24)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 96)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 104)])) + (((float)((half*)CBits)[(cse_var_1 + 112)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 120)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 25)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 97)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 105)])) + (((float)((half*)CBits)[(cse_var_1 + 113)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 121)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 26)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 98)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 106)])) + (((float)((half*)CBits)[(cse_var_1 + 114)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 122)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 27)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 99)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 107)])) + (((float)((half*)CBits)[(cse_var_1 + 115)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 123)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 28)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 100)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 108)])) + (((float)((half*)CBits)[(cse_var_1 + 116)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 124)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 29)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 101)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 109)])) + (((float)((half*)CBits)[(cse_var_1 + 117)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 125)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 30)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 102)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 110)])) + (((float)((half*)CBits)[(cse_var_1 + 118)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 126)]) * 4.000000e+00f)));
      C_global[(cse_var_2 + 31)] = ((half)((((((float)((half*)CBits)[(cse_var_1 + 103)]) * 5.000000e-01f) + ((float)((half*)CBits)[(cse_var_1 + 111)])) + (((float)((half*)CBits)[(cse_var_1 + 119)]) * 2.000000e+00f)) + (((float)((half*)CBits)[(cse_var_1 + 127)]) * 4.000000e+00f)));
    }
    for (int32_t m_inner_outer = 0; m_inner_outer < 4; ++m_inner_outer) {
      int32_t cse_var_4 = (m_inner_outer * 32);
      int32_t cse_var_3 = ((m_outer * 128) + cse_var_4);
      ((half*)C_1)[cse_var_3] = C_global[cse_var_4];
      ((half*)C_1)[(cse_var_3 + 1)] = C_global[(cse_var_4 + 1)];
      ((half*)C_1)[(cse_var_3 + 2)] = C_global[(cse_var_4 + 2)];
      ((half*)C_1)[(cse_var_3 + 3)] = C_global[(cse_var_4 + 3)];
      ((half*)C_1)[(cse_var_3 + 4)] = C_global[(cse_var_4 + 4)];
      ((half*)C_1)[(cse_var_3 + 5)] = C_global[(cse_var_4 + 5)];
      ((half*)C_1)[(cse_var_3 + 6)] = C_global[(cse_var_4 + 6)];
      ((half*)C_1)[(cse_var_3 + 7)] = C_global[(cse_var_4 + 7)];
      ((half*)C_1)[(cse_var_3 + 8)] = C_global[(cse_var_4 + 8)];
      ((half*)C_1)[(cse_var_3 + 9)] = C_global[(cse_var_4 + 9)];
      ((half*)C_1)[(cse_var_3 + 10)] = C_global[(cse_var_4 + 10)];
      ((half*)C_1)[(cse_var_3 + 11)] = C_global[(cse_var_4 + 11)];
      ((half*)C_1)[(cse_var_3 + 12)] = C_global[(cse_var_4 + 12)];
      ((half*)C_1)[(cse_var_3 + 13)] = C_global[(cse_var_4 + 13)];
      ((half*)C_1)[(cse_var_3 + 14)] = C_global[(cse_var_4 + 14)];
      ((half*)C_1)[(cse_var_3 + 15)] = C_global[(cse_var_4 + 15)];
      ((half*)C_1)[(cse_var_3 + 16)] = C_global[(cse_var_4 + 16)];
      ((half*)C_1)[(cse_var_3 + 17)] = C_global[(cse_var_4 + 17)];
      ((half*)C_1)[(cse_var_3 + 18)] = C_global[(cse_var_4 + 18)];
      ((half*)C_1)[(cse_var_3 + 19)] = C_global[(cse_var_4 + 19)];
      ((half*)C_1)[(cse_var_3 + 20)] = C_global[(cse_var_4 + 20)];
      ((half*)C_1)[(cse_var_3 + 21)] = C_global[(cse_var_4 + 21)];
      ((half*)C_1)[(cse_var_3 + 22)] = C_global[(cse_var_4 + 22)];
      ((half*)C_1)[(cse_var_3 + 23)] = C_global[(cse_var_4 + 23)];
      ((half*)C_1)[(cse_var_3 + 24)] = C_global[(cse_var_4 + 24)];
      ((half*)C_1)[(cse_var_3 + 25)] = C_global[(cse_var_4 + 25)];
      ((half*)C_1)[(cse_var_3 + 26)] = C_global[(cse_var_4 + 26)];
      ((half*)C_1)[(cse_var_3 + 27)] = C_global[(cse_var_4 + 27)];
      ((half*)C_1)[(cse_var_3 + 28)] = C_global[(cse_var_4 + 28)];
      ((half*)C_1)[(cse_var_3 + 29)] = C_global[(cse_var_4 + 29)];
      ((half*)C_1)[(cse_var_3 + 30)] = C_global[(cse_var_4 + 30)];
      ((half*)C_1)[(cse_var_3 + 31)] = C_global[(cse_var_4 + 31)];
    }
    if (0 != 0) {
      return -1;
    }
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>




#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m57344_k4096_n1_b4(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {
  
  
  
  
  
  
  
  
  void* preprocessor_t4_int8_m57344_k4096_n1_b4_B_shape = (NULL);
  void* preprocessor_t4_int8_m57344_k4096_n1_b4_B_strides = (NULL);
  int32_t dev_id = (0);
  void* B_1 = (B);
  void* preprocessor_t4_int8_m57344_k4096_n1_b4_LUT_Scales_shape = (NULL);
  void* preprocessor_t4_int8_m57344_k4096_n1_b4_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* preprocessor_t4_int8_m57344_k4096_n1_b4_LUT_Biases_shape = (NULL);
  void* preprocessor_t4_int8_m57344_k4096_n1_b4_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* preprocessor_t4_int8_m57344_k4096_n1_b4_QLUT_shape = (NULL);
  void* preprocessor_t4_int8_m57344_k4096_n1_b4_QLUT_strides = (NULL);
  void* QLUT_1 = (QLUT);
  if (!(preprocessor_t4_int8_m57344_k4096_n1_b4_B_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m57344_k4096_n1_b4_LUT_Scales_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m57344_k4096_n1_b4_LUT_Biases_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m57344_k4096_n1_b4_QLUT_strides == NULL)) {
  }
  for (int32_t kk_outer = 0; kk_outer < 64; ++kk_outer) {
    partial_max_reset((&(((half*)LUT_Scales_1)[kk_outer])));
    for (int32_t k_outer = 0; k_outer < 2; ++k_outer) {
      partial_max_g4_int8_k8((&(((half*)LUT_Scales_1)[kk_outer])), (&(((half*)B_1)[((kk_outer * 64) + (k_outer * 32))])));
    }
  }
  for (int32_t k_outer_1 = 0; k_outer_1 < 64; ++k_outer_1) {
    lut_ctor_g4_int8_k0_b4(64, (&(((int8_t*)QLUT_1)[(k_outer_1 * 256)])), (&(((half*)B_1)[(k_outer_1 * 64)])), (&(((half*)LUT_Scales_1)[k_outer_1])), (&(((half*)LUT_Biases_1)[k_outer_1])));
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>



#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m28672_k4096_n1_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {
  
  
  
  
  
  
  
  
  
  
  
  
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_A_shape = (NULL);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_A_strides = (NULL);
  int32_t dev_id = (0);
  void* A_1 = (A);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_LUT_shape = (NULL);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_LUT_strides = (NULL);
  void* LUT_1 = (LUT);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_Scales_strides = (NULL);
  void* Scales_1 = (Scales);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_LUT_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_LUT_Biases_shape = (NULL);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_C_shape = (NULL);
  void* qgemm_lut_t4_int8_m28672_k4096_n1_b2_C_strides = (NULL);
  void* C_1 = (C);
  if (!(qgemm_lut_t4_int8_m28672_k4096_n1_b2_A_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m28672_k4096_n1_b2_LUT_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m28672_k4096_n1_b2_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m28672_k4096_n1_b2_LUT_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m28672_k4096_n1_b2_LUT_Biases_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m28672_k4096_n1_b2_C_strides == NULL)) {
  }
  for (int32_t m_outer = 0; m_outer < 224; ++m_outer) {
    alignas(32) half CBits[128];
    alignas(32) half C_global[64];
    tbl_float_reset(128, (&(CBits[0])));
    for (int32_t k_outer = 0; k_outer < 64; ++k_outer) {
      tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_ztrue_osfalse(128, (&(CBits[0])), (&(((int8_t*)LUT_1)[(k_outer * 256)])), (&(((uint8_t*)A_1)[((m_outer * 65536) + (k_outer * 1024))])), (&(((half*)Scales_1)[((m_outer * 4096) + ((k_outer >> 1) * 128))])), (&(((half*)LUT_Scales_1)[k_outer])), (&(((half*)LUT_Biases_1)[k_outer])));
    }
    for (int32_t m_c_outer = 0; m_c_outer < 2; ++m_c_outer) {
      int32_t cse_var_2 = (m_c_outer * 64);
      int32_t cse_var_1 = (m_c_outer * 32);
      C_global[cse_var_1] = ((half)((((float)CBits[cse_var_2]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 8)])));
      C_global[(cse_var_1 + 1)] = ((half)((((float)CBits[(cse_var_2 + 1)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 9)])));
      C_global[(cse_var_1 + 2)] = ((half)((((float)CBits[(cse_var_2 + 2)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 10)])));
      C_global[(cse_var_1 + 3)] = ((half)((((float)CBits[(cse_var_2 + 3)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 11)])));
      C_global[(cse_var_1 + 4)] = ((half)((((float)CBits[(cse_var_2 + 4)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 12)])));
      C_global[(cse_var_1 + 5)] = ((half)((((float)CBits[(cse_var_2 + 5)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 13)])));
      C_global[(cse_var_1 + 6)] = ((half)((((float)CBits[(cse_var_2 + 6)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 14)])));
      C_global[(cse_var_1 + 7)] = ((half)((((float)CBits[(cse_var_2 + 7)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 15)])));
      C_global[(cse_var_1 + 8)] = ((half)((((float)CBits[(cse_var_2 + 16)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 24)])));
      C_global[(cse_var_1 + 9)] = ((half)((((float)CBits[(cse_var_2 + 17)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 25)])));
      C_global[(cse_var_1 + 10)] = ((half)((((float)CBits[(cse_var_2 + 18)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 26)])));
      C_global[(cse_var_1 + 11)] = ((half)((((float)CBits[(cse_var_2 + 19)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 27)])));
      C_global[(cse_var_1 + 12)] = ((half)((((float)CBits[(cse_var_2 + 20)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 28)])));
      C_global[(cse_var_1 + 13)] = ((half)((((float)CBits[(cse_var_2 + 21)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 29)])));
      C_global[(cse_var_1 + 14)] = ((half)((((float)CBits[(cse_var_2 + 22)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 30)])));
      C_global[(cse_var_1 + 15)] = ((half)((((float)CBits[(cse_var_2 + 23)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 31)])));
      C_global[(cse_var_1 + 16)] = ((half)((((float)CBits[(cse_var_2 + 32)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 40)])));
      C_global[(cse_var_1 + 17)] = ((half)((((float)CBits[(cse_var_2 + 33)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 41)])));
      C_global[(cse_var_1 + 18)] = ((half)((((float)CBits[(cse_var_2 + 34)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 42)])));
      C_global[(cse_var_1 + 19)] = ((half)((((float)CBits[(cse_var_2 + 35)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 43)])));
      C_global[(cse_var_1 + 20)] = ((half)((((float)CBits[(cse_var_2 + 36)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 44)])));
      C_global[(cse_var_1 + 21)] = ((half)((((float)CBits[(cse_var_2 + 37)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 45)])));
      C_global[(cse_var_1 + 22)] = ((half)((((float)CBits[(cse_var_2 + 38)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 46)])));
      C_global[(cse_var_1 + 23)] = ((half)((((float)CBits[(cse_var_2 + 39)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 47)])));
      C_global[(cse_var_1 + 24)] = ((half)((((float)CBits[(cse_var_2 + 48)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 56)])));
      C_global[(cse_var_1 + 25)] = ((half)((((float)CBits[(cse_var_2 + 49)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 57)])));
      C_global[(cse_var_1 + 26)] = ((half)((((float)CBits[(cse_var_2 + 50)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 58)])));
      C_global[(cse_var_1 + 27)] = ((half)((((float)CBits[(cse_var_2 + 51)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 59)])));
      C_global[(cse_var_1 + 28)] = ((half)((((float)CBits[(cse_var_2 + 52)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 60)])));
      C_global[(cse_var_1 + 29)] = ((half)((((float)CBits[(cse_var_2 + 53)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 61)])));
      C_global[(cse_var_1 + 30)] = ((half)((((float)CBits[(cse_var_2 + 54)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 62)])));
      C_global[(cse_var_1 + 31)] = ((half)((((float)CBits[(cse_var_2 + 55)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 63)])));
    }
    for (int32_t m_inner_outer = 0; m_inner_outer < 2; ++m_inner_outer) {
      int32_t cse_var_4 = (m_inner_outer * 32);
      int32_t cse_var_3 = ((m_outer * 64) + cse_var_4);
      ((half*)C_1)[cse_var_3] = C_global[cse_var_4];
      ((half*)C_1)[(cse_var_3 + 1)] = C_global[(cse_var_4 + 1)];
      ((half*)C_1)[(cse_var_3 + 2)] = C_global[(cse_var_4 + 2)];
      ((half*)C_1)[(cse_var_3 + 3)] = C_global[(cse_var_4 + 3)];
      ((half*)C_1)[(cse_var_3 + 4)] = C_global[(cse_var_4 + 4)];
      ((half*)C_1)[(cse_var_3 + 5)] = C_global[(cse_var_4 + 5)];
      ((half*)C_1)[(cse_var_3 + 6)] = C_global[(cse_var_4 + 6)];
      ((half*)C_1)[(cse_var_3 + 7)] = C_global[(cse_var_4 + 7)];
      ((half*)C_1)[(cse_var_3 + 8)] = C_global[(cse_var_4 + 8)];
      ((half*)C_1)[(cse_var_3 + 9)] = C_global[(cse_var_4 + 9)];
      ((half*)C_1)[(cse_var_3 + 10)] = C_global[(cse_var_4 + 10)];
      ((half*)C_1)[(cse_var_3 + 11)] = C_global[(cse_var_4 + 11)];
      ((half*)C_1)[(cse_var_3 + 12)] = C_global[(cse_var_4 + 12)];
      ((half*)C_1)[(cse_var_3 + 13)] = C_global[(cse_var_4 + 13)];
      ((half*)C_1)[(cse_var_3 + 14)] = C_global[(cse_var_4 + 14)];
      ((half*)C_1)[(cse_var_3 + 15)] = C_global[(cse_var_4 + 15)];
      ((half*)C_1)[(cse_var_3 + 16)] = C_global[(cse_var_4 + 16)];
      ((half*)C_1)[(cse_var_3 + 17)] = C_global[(cse_var_4 + 17)];
      ((half*)C_1)[(cse_var_3 + 18)] = C_global[(cse_var_4 + 18)];
      ((half*)C_1)[(cse_var_3 + 19)] = C_global[(cse_var_4 + 19)];
      ((half*)C_1)[(cse_var_3 + 20)] = C_global[(cse_var_4 + 20)];
      ((half*)C_1)[(cse_var_3 + 21)] = C_global[(cse_var_4 + 21)];
      ((half*)C_1)[(cse_var_3 + 22)] = C_global[(cse_var_4 + 22)];
      ((half*)C_1)[(cse_var_3 + 23)] = C_global[(cse_var_4 + 23)];
      ((half*)C_1)[(cse_var_3 + 24)] = C_global[(cse_var_4 + 24)];
      ((half*)C_1)[(cse_var_3 + 25)] = C_global[(cse_var_4 + 25)];
      ((half*)C_1)[(cse_var_3 + 26)] = C_global[(cse_var_4 + 26)];
      ((half*)C_1)[(cse_var_3 + 27)] = C_global[(cse_var_4 + 27)];
      ((half*)C_1)[(cse_var_3 + 28)] = C_global[(cse_var_4 + 28)];
      ((half*)C_1)[(cse_var_3 + 29)] = C_global[(cse_var_4 + 29)];
      ((half*)C_1)[(cse_var_3 + 30)] = C_global[(cse_var_4 + 30)];
      ((half*)C_1)[(cse_var_3 + 31)] = C_global[(cse_var_4 + 31)];
    }
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>




#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m28672_k4096_n1_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {
  
  
  
  
  
  
  
  
  void* preprocessor_t4_int8_m28672_k4096_n1_b2_B_shape = (NULL);
  void* preprocessor_t4_int8_m28672_k4096_n1_b2_B_strides = (NULL);
  int32_t dev_id = (0);
  void* B_1 = (B);
  void* preprocessor_t4_int8_m28672_k4096_n1_b2_LUT_Scales_shape = (NULL);
  void* preprocessor_t4_int8_m28672_k4096_n1_b2_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* preprocessor_t4_int8_m28672_k4096_n1_b2_LUT_Biases_shape = (NULL);
  void* preprocessor_t4_int8_m28672_k4096_n1_b2_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* preprocessor_t4_int8_m28672_k4096_n1_b2_QLUT_shape = (NULL);
  void* preprocessor_t4_int8_m28672_k4096_n1_b2_QLUT_strides = (NULL);
  void* QLUT_1 = (QLUT);
  if (!(preprocessor_t4_int8_m28672_k4096_n1_b2_B_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m28672_k4096_n1_b2_LUT_Scales_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m28672_k4096_n1_b2_LUT_Biases_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m28672_k4096_n1_b2_QLUT_strides == NULL)) {
  }
  for (int32_t kk_outer = 0; kk_outer < 64; ++kk_outer) {
    partial_max_reset((&(((half*)LUT_Scales_1)[kk_outer])));
    for (int32_t k_outer = 0; k_outer < 2; ++k_outer) {
      partial_max_g4_int8_k8((&(((half*)LUT_Scales_1)[kk_outer])), (&(((half*)B_1)[((kk_outer * 64) + (k_outer * 32))])));
    }
  }
  for (int32_t k_outer_1 = 0; k_outer_1 < 64; ++k_outer_1) {
    lut_ctor_g4_int8_k0_b2(64, (&(((int8_t*)QLUT_1)[(k_outer_1 * 256)])), (&(((half*)B_1)[(k_outer_1 * 64)])), (&(((half*)LUT_Scales_1)[k_outer_1])), (&(((half*)LUT_Biases_1)[k_outer_1])));
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>



#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m16384_k14336_n1_b4(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {
  
  
  
  
  
  
  
  
  
  
  
  
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_A_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_A_strides = (NULL);
  int32_t dev_id = (0);
  void* A_1 = (A);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_LUT_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_LUT_strides = (NULL);
  void* LUT_1 = (LUT);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_Scales_strides = (NULL);
  void* Scales_1 = (Scales);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_LUT_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_LUT_Biases_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_C_shape = (NULL);
  void* qgemm_lut_t4_int8_m16384_k14336_n1_b4_C_strides = (NULL);
  void* C_1 = (C);
  if (!(qgemm_lut_t4_int8_m16384_k14336_n1_b4_A_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k14336_n1_b4_LUT_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k14336_n1_b4_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k14336_n1_b4_LUT_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k14336_n1_b4_LUT_Biases_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m16384_k14336_n1_b4_C_strides == NULL)) {
  }
  for (int32_t m_outer = 0; m_outer < 128; ++m_outer) {
    int32_t cse_var_1 = (m_outer * 32);
    alignas(32) half CBits[128];
    alignas(32) half C_global[32];
    tbl_float_reset(128, (&(CBits[0])));
    for (int32_t k_outer = 0; k_outer < 224; ++k_outer) {
      tbl_g4_int8_float_update_strue_k16_b4_ak16_fafalse_ztrue_osfalse(128, (&(CBits[0])), (&(((int8_t*)LUT_1)[(k_outer * 256)])), (&(((uint8_t*)A_1)[((m_outer * 229376) + (k_outer * 1024))])), (&(((half*)Scales_1)[((m_outer * 7168) + ((k_outer >> 1) * 64))])), (&(((half*)LUT_Scales_1)[k_outer])), (&(((half*)LUT_Biases_1)[k_outer])));
    }
    C_global[0] = ((half)((((((float)CBits[0]) * 5.000000e-01f) + ((float)CBits[8])) + (((float)CBits[16]) * 2.000000e+00f)) + (((float)CBits[24]) * 4.000000e+00f)));
    C_global[1] = ((half)((((((float)CBits[1]) * 5.000000e-01f) + ((float)CBits[9])) + (((float)CBits[17]) * 2.000000e+00f)) + (((float)CBits[25]) * 4.000000e+00f)));
    C_global[2] = ((half)((((((float)CBits[2]) * 5.000000e-01f) + ((float)CBits[10])) + (((float)CBits[18]) * 2.000000e+00f)) + (((float)CBits[26]) * 4.000000e+00f)));
    C_global[3] = ((half)((((((float)CBits[3]) * 5.000000e-01f) + ((float)CBits[11])) + (((float)CBits[19]) * 2.000000e+00f)) + (((float)CBits[27]) * 4.000000e+00f)));
    C_global[4] = ((half)((((((float)CBits[4]) * 5.000000e-01f) + ((float)CBits[12])) + (((float)CBits[20]) * 2.000000e+00f)) + (((float)CBits[28]) * 4.000000e+00f)));
    C_global[5] = ((half)((((((float)CBits[5]) * 5.000000e-01f) + ((float)CBits[13])) + (((float)CBits[21]) * 2.000000e+00f)) + (((float)CBits[29]) * 4.000000e+00f)));
    C_global[6] = ((half)((((((float)CBits[6]) * 5.000000e-01f) + ((float)CBits[14])) + (((float)CBits[22]) * 2.000000e+00f)) + (((float)CBits[30]) * 4.000000e+00f)));
    C_global[7] = ((half)((((((float)CBits[7]) * 5.000000e-01f) + ((float)CBits[15])) + (((float)CBits[23]) * 2.000000e+00f)) + (((float)CBits[31]) * 4.000000e+00f)));
    C_global[8] = ((half)((((((float)CBits[32]) * 5.000000e-01f) + ((float)CBits[40])) + (((float)CBits[48]) * 2.000000e+00f)) + (((float)CBits[56]) * 4.000000e+00f)));
    C_global[9] = ((half)((((((float)CBits[33]) * 5.000000e-01f) + ((float)CBits[41])) + (((float)CBits[49]) * 2.000000e+00f)) + (((float)CBits[57]) * 4.000000e+00f)));
    C_global[10] = ((half)((((((float)CBits[34]) * 5.000000e-01f) + ((float)CBits[42])) + (((float)CBits[50]) * 2.000000e+00f)) + (((float)CBits[58]) * 4.000000e+00f)));
    C_global[11] = ((half)((((((float)CBits[35]) * 5.000000e-01f) + ((float)CBits[43])) + (((float)CBits[51]) * 2.000000e+00f)) + (((float)CBits[59]) * 4.000000e+00f)));
    C_global[12] = ((half)((((((float)CBits[36]) * 5.000000e-01f) + ((float)CBits[44])) + (((float)CBits[52]) * 2.000000e+00f)) + (((float)CBits[60]) * 4.000000e+00f)));
    C_global[13] = ((half)((((((float)CBits[37]) * 5.000000e-01f) + ((float)CBits[45])) + (((float)CBits[53]) * 2.000000e+00f)) + (((float)CBits[61]) * 4.000000e+00f)));
    C_global[14] = ((half)((((((float)CBits[38]) * 5.000000e-01f) + ((float)CBits[46])) + (((float)CBits[54]) * 2.000000e+00f)) + (((float)CBits[62]) * 4.000000e+00f)));
    C_global[15] = ((half)((((((float)CBits[39]) * 5.000000e-01f) + ((float)CBits[47])) + (((float)CBits[55]) * 2.000000e+00f)) + (((float)CBits[63]) * 4.000000e+00f)));
    C_global[16] = ((half)((((((float)CBits[64]) * 5.000000e-01f) + ((float)CBits[72])) + (((float)CBits[80]) * 2.000000e+00f)) + (((float)CBits[88]) * 4.000000e+00f)));
    C_global[17] = ((half)((((((float)CBits[65]) * 5.000000e-01f) + ((float)CBits[73])) + (((float)CBits[81]) * 2.000000e+00f)) + (((float)CBits[89]) * 4.000000e+00f)));
    C_global[18] = ((half)((((((float)CBits[66]) * 5.000000e-01f) + ((float)CBits[74])) + (((float)CBits[82]) * 2.000000e+00f)) + (((float)CBits[90]) * 4.000000e+00f)));
    C_global[19] = ((half)((((((float)CBits[67]) * 5.000000e-01f) + ((float)CBits[75])) + (((float)CBits[83]) * 2.000000e+00f)) + (((float)CBits[91]) * 4.000000e+00f)));
    C_global[20] = ((half)((((((float)CBits[68]) * 5.000000e-01f) + ((float)CBits[76])) + (((float)CBits[84]) * 2.000000e+00f)) + (((float)CBits[92]) * 4.000000e+00f)));
    C_global[21] = ((half)((((((float)CBits[69]) * 5.000000e-01f) + ((float)CBits[77])) + (((float)CBits[85]) * 2.000000e+00f)) + (((float)CBits[93]) * 4.000000e+00f)));
    C_global[22] = ((half)((((((float)CBits[70]) * 5.000000e-01f) + ((float)CBits[78])) + (((float)CBits[86]) * 2.000000e+00f)) + (((float)CBits[94]) * 4.000000e+00f)));
    C_global[23] = ((half)((((((float)CBits[71]) * 5.000000e-01f) + ((float)CBits[79])) + (((float)CBits[87]) * 2.000000e+00f)) + (((float)CBits[95]) * 4.000000e+00f)));
    C_global[24] = ((half)((((((float)CBits[96]) * 5.000000e-01f) + ((float)CBits[104])) + (((float)CBits[112]) * 2.000000e+00f)) + (((float)CBits[120]) * 4.000000e+00f)));
    C_global[25] = ((half)((((((float)CBits[97]) * 5.000000e-01f) + ((float)CBits[105])) + (((float)CBits[113]) * 2.000000e+00f)) + (((float)CBits[121]) * 4.000000e+00f)));
    C_global[26] = ((half)((((((float)CBits[98]) * 5.000000e-01f) + ((float)CBits[106])) + (((float)CBits[114]) * 2.000000e+00f)) + (((float)CBits[122]) * 4.000000e+00f)));
    C_global[27] = ((half)((((((float)CBits[99]) * 5.000000e-01f) + ((float)CBits[107])) + (((float)CBits[115]) * 2.000000e+00f)) + (((float)CBits[123]) * 4.000000e+00f)));
    C_global[28] = ((half)((((((float)CBits[100]) * 5.000000e-01f) + ((float)CBits[108])) + (((float)CBits[116]) * 2.000000e+00f)) + (((float)CBits[124]) * 4.000000e+00f)));
    C_global[29] = ((half)((((((float)CBits[101]) * 5.000000e-01f) + ((float)CBits[109])) + (((float)CBits[117]) * 2.000000e+00f)) + (((float)CBits[125]) * 4.000000e+00f)));
    C_global[30] = ((half)((((((float)CBits[102]) * 5.000000e-01f) + ((float)CBits[110])) + (((float)CBits[118]) * 2.000000e+00f)) + (((float)CBits[126]) * 4.000000e+00f)));
    C_global[31] = ((half)((((((float)CBits[103]) * 5.000000e-01f) + ((float)CBits[111])) + (((float)CBits[119]) * 2.000000e+00f)) + (((float)CBits[127]) * 4.000000e+00f)));
    ((half*)C_1)[cse_var_1] = C_global[0];
    ((half*)C_1)[(cse_var_1 + 1)] = C_global[1];
    ((half*)C_1)[(cse_var_1 + 2)] = C_global[2];
    ((half*)C_1)[(cse_var_1 + 3)] = C_global[3];
    ((half*)C_1)[(cse_var_1 + 4)] = C_global[4];
    ((half*)C_1)[(cse_var_1 + 5)] = C_global[5];
    ((half*)C_1)[(cse_var_1 + 6)] = C_global[6];
    ((half*)C_1)[(cse_var_1 + 7)] = C_global[7];
    ((half*)C_1)[(cse_var_1 + 8)] = C_global[8];
    ((half*)C_1)[(cse_var_1 + 9)] = C_global[9];
    ((half*)C_1)[(cse_var_1 + 10)] = C_global[10];
    ((half*)C_1)[(cse_var_1 + 11)] = C_global[11];
    ((half*)C_1)[(cse_var_1 + 12)] = C_global[12];
    ((half*)C_1)[(cse_var_1 + 13)] = C_global[13];
    ((half*)C_1)[(cse_var_1 + 14)] = C_global[14];
    ((half*)C_1)[(cse_var_1 + 15)] = C_global[15];
    ((half*)C_1)[(cse_var_1 + 16)] = C_global[16];
    ((half*)C_1)[(cse_var_1 + 17)] = C_global[17];
    ((half*)C_1)[(cse_var_1 + 18)] = C_global[18];
    ((half*)C_1)[(cse_var_1 + 19)] = C_global[19];
    ((half*)C_1)[(cse_var_1 + 20)] = C_global[20];
    ((half*)C_1)[(cse_var_1 + 21)] = C_global[21];
    ((half*)C_1)[(cse_var_1 + 22)] = C_global[22];
    ((half*)C_1)[(cse_var_1 + 23)] = C_global[23];
    ((half*)C_1)[(cse_var_1 + 24)] = C_global[24];
    ((half*)C_1)[(cse_var_1 + 25)] = C_global[25];
    ((half*)C_1)[(cse_var_1 + 26)] = C_global[26];
    ((half*)C_1)[(cse_var_1 + 27)] = C_global[27];
    ((half*)C_1)[(cse_var_1 + 28)] = C_global[28];
    ((half*)C_1)[(cse_var_1 + 29)] = C_global[29];
    ((half*)C_1)[(cse_var_1 + 30)] = C_global[30];
    ((half*)C_1)[(cse_var_1 + 31)] = C_global[31];
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>




#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m16384_k14336_n1_b4(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {
  
  
  
  
  
  
  
  
  void* preprocessor_t4_int8_m16384_k14336_n1_b4_B_shape = (NULL);
  void* preprocessor_t4_int8_m16384_k14336_n1_b4_B_strides = (NULL);
  int32_t dev_id = (0);
  void* B_1 = (B);
  void* preprocessor_t4_int8_m16384_k14336_n1_b4_LUT_Scales_shape = (NULL);
  void* preprocessor_t4_int8_m16384_k14336_n1_b4_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* preprocessor_t4_int8_m16384_k14336_n1_b4_LUT_Biases_shape = (NULL);
  void* preprocessor_t4_int8_m16384_k14336_n1_b4_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* preprocessor_t4_int8_m16384_k14336_n1_b4_QLUT_shape = (NULL);
  void* preprocessor_t4_int8_m16384_k14336_n1_b4_QLUT_strides = (NULL);
  void* QLUT_1 = (QLUT);
  if (!(preprocessor_t4_int8_m16384_k14336_n1_b4_B_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m16384_k14336_n1_b4_LUT_Scales_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m16384_k14336_n1_b4_LUT_Biases_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m16384_k14336_n1_b4_QLUT_strides == NULL)) {
  }
  for (int32_t kk_outer = 0; kk_outer < 224; ++kk_outer) {
    partial_max_reset((&(((half*)LUT_Scales_1)[kk_outer])));
    for (int32_t k_outer = 0; k_outer < 2; ++k_outer) {
      partial_max_g4_int8_k8((&(((half*)LUT_Scales_1)[kk_outer])), (&(((half*)B_1)[((kk_outer * 64) + (k_outer * 32))])));
    }
  }
  for (int32_t k_outer_1 = 0; k_outer_1 < 224; ++k_outer_1) {
    lut_ctor_g4_int8_k0_b4(64, (&(((int8_t*)QLUT_1)[(k_outer_1 * 256)])), (&(((half*)B_1)[(k_outer_1 * 64)])), (&(((half*)LUT_Scales_1)[k_outer_1])), (&(((half*)LUT_Biases_1)[k_outer_1])));
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>



#ifdef __cplusplus
extern "C"
#endif
 int32_t qgemm_lut_t4_int8_m8192_k14336_n1_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {
  
  
  
  
  
  
  
  
  
  
  
  
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_strides = (NULL);
  int32_t dev_id = (0);
  void* A_1 = (A);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_strides = (NULL);
  void* LUT_1 = (LUT);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_strides = (NULL);
  void* Scales_1 = (Scales);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_shape = (NULL);
  void* qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_strides = (NULL);
  void* C_1 = (C);
  if (!(qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_strides == NULL)) {
  }
  if (!(qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_strides == NULL)) {
  }
  for (int32_t m_outer = 0; m_outer < 32; ++m_outer) {
    alignas(32) half CBits[256];
    alignas(32) half C_global[128];
    tbl_float_reset(256, (&(CBits[0])));
    for (int32_t k_outer = 0; k_outer < 224; ++k_outer) {
      tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_ztrue_osfalse(256, (&(CBits[0])), (&(((int8_t*)LUT_1)[(k_outer * 256)])), (&(((uint8_t*)A_1)[((m_outer * 458752) + (k_outer * 2048))])), (&(((half*)Scales_1)[((m_outer * 28672) + ((k_outer >> 1) * 256))])), (&(((half*)LUT_Scales_1)[k_outer])), (&(((half*)LUT_Biases_1)[k_outer])));
    }
    for (int32_t m_c_outer = 0; m_c_outer < 4; ++m_c_outer) {
      int32_t cse_var_2 = (m_c_outer * 64);
      int32_t cse_var_1 = (m_c_outer * 32);
      C_global[cse_var_1] = ((half)((((float)CBits[cse_var_2]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 8)])));
      C_global[(cse_var_1 + 1)] = ((half)((((float)CBits[(cse_var_2 + 1)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 9)])));
      C_global[(cse_var_1 + 2)] = ((half)((((float)CBits[(cse_var_2 + 2)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 10)])));
      C_global[(cse_var_1 + 3)] = ((half)((((float)CBits[(cse_var_2 + 3)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 11)])));
      C_global[(cse_var_1 + 4)] = ((half)((((float)CBits[(cse_var_2 + 4)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 12)])));
      C_global[(cse_var_1 + 5)] = ((half)((((float)CBits[(cse_var_2 + 5)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 13)])));
      C_global[(cse_var_1 + 6)] = ((half)((((float)CBits[(cse_var_2 + 6)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 14)])));
      C_global[(cse_var_1 + 7)] = ((half)((((float)CBits[(cse_var_2 + 7)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 15)])));
      C_global[(cse_var_1 + 8)] = ((half)((((float)CBits[(cse_var_2 + 16)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 24)])));
      C_global[(cse_var_1 + 9)] = ((half)((((float)CBits[(cse_var_2 + 17)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 25)])));
      C_global[(cse_var_1 + 10)] = ((half)((((float)CBits[(cse_var_2 + 18)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 26)])));
      C_global[(cse_var_1 + 11)] = ((half)((((float)CBits[(cse_var_2 + 19)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 27)])));
      C_global[(cse_var_1 + 12)] = ((half)((((float)CBits[(cse_var_2 + 20)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 28)])));
      C_global[(cse_var_1 + 13)] = ((half)((((float)CBits[(cse_var_2 + 21)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 29)])));
      C_global[(cse_var_1 + 14)] = ((half)((((float)CBits[(cse_var_2 + 22)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 30)])));
      C_global[(cse_var_1 + 15)] = ((half)((((float)CBits[(cse_var_2 + 23)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 31)])));
      C_global[(cse_var_1 + 16)] = ((half)((((float)CBits[(cse_var_2 + 32)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 40)])));
      C_global[(cse_var_1 + 17)] = ((half)((((float)CBits[(cse_var_2 + 33)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 41)])));
      C_global[(cse_var_1 + 18)] = ((half)((((float)CBits[(cse_var_2 + 34)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 42)])));
      C_global[(cse_var_1 + 19)] = ((half)((((float)CBits[(cse_var_2 + 35)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 43)])));
      C_global[(cse_var_1 + 20)] = ((half)((((float)CBits[(cse_var_2 + 36)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 44)])));
      C_global[(cse_var_1 + 21)] = ((half)((((float)CBits[(cse_var_2 + 37)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 45)])));
      C_global[(cse_var_1 + 22)] = ((half)((((float)CBits[(cse_var_2 + 38)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 46)])));
      C_global[(cse_var_1 + 23)] = ((half)((((float)CBits[(cse_var_2 + 39)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 47)])));
      C_global[(cse_var_1 + 24)] = ((half)((((float)CBits[(cse_var_2 + 48)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 56)])));
      C_global[(cse_var_1 + 25)] = ((half)((((float)CBits[(cse_var_2 + 49)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 57)])));
      C_global[(cse_var_1 + 26)] = ((half)((((float)CBits[(cse_var_2 + 50)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 58)])));
      C_global[(cse_var_1 + 27)] = ((half)((((float)CBits[(cse_var_2 + 51)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 59)])));
      C_global[(cse_var_1 + 28)] = ((half)((((float)CBits[(cse_var_2 + 52)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 60)])));
      C_global[(cse_var_1 + 29)] = ((half)((((float)CBits[(cse_var_2 + 53)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 61)])));
      C_global[(cse_var_1 + 30)] = ((half)((((float)CBits[(cse_var_2 + 54)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 62)])));
      C_global[(cse_var_1 + 31)] = ((half)((((float)CBits[(cse_var_2 + 55)]) * 5.000000e-01f) + ((float)CBits[(cse_var_2 + 63)])));
    }
    for (int32_t m_inner_outer = 0; m_inner_outer < 4; ++m_inner_outer) {
      int32_t cse_var_4 = (m_inner_outer * 32);
      int32_t cse_var_3 = ((m_outer * 128) + cse_var_4);
      ((half*)C_1)[cse_var_3] = C_global[cse_var_4];
      ((half*)C_1)[(cse_var_3 + 1)] = C_global[(cse_var_4 + 1)];
      ((half*)C_1)[(cse_var_3 + 2)] = C_global[(cse_var_4 + 2)];
      ((half*)C_1)[(cse_var_3 + 3)] = C_global[(cse_var_4 + 3)];
      ((half*)C_1)[(cse_var_3 + 4)] = C_global[(cse_var_4 + 4)];
      ((half*)C_1)[(cse_var_3 + 5)] = C_global[(cse_var_4 + 5)];
      ((half*)C_1)[(cse_var_3 + 6)] = C_global[(cse_var_4 + 6)];
      ((half*)C_1)[(cse_var_3 + 7)] = C_global[(cse_var_4 + 7)];
      ((half*)C_1)[(cse_var_3 + 8)] = C_global[(cse_var_4 + 8)];
      ((half*)C_1)[(cse_var_3 + 9)] = C_global[(cse_var_4 + 9)];
      ((half*)C_1)[(cse_var_3 + 10)] = C_global[(cse_var_4 + 10)];
      ((half*)C_1)[(cse_var_3 + 11)] = C_global[(cse_var_4 + 11)];
      ((half*)C_1)[(cse_var_3 + 12)] = C_global[(cse_var_4 + 12)];
      ((half*)C_1)[(cse_var_3 + 13)] = C_global[(cse_var_4 + 13)];
      ((half*)C_1)[(cse_var_3 + 14)] = C_global[(cse_var_4 + 14)];
      ((half*)C_1)[(cse_var_3 + 15)] = C_global[(cse_var_4 + 15)];
      ((half*)C_1)[(cse_var_3 + 16)] = C_global[(cse_var_4 + 16)];
      ((half*)C_1)[(cse_var_3 + 17)] = C_global[(cse_var_4 + 17)];
      ((half*)C_1)[(cse_var_3 + 18)] = C_global[(cse_var_4 + 18)];
      ((half*)C_1)[(cse_var_3 + 19)] = C_global[(cse_var_4 + 19)];
      ((half*)C_1)[(cse_var_3 + 20)] = C_global[(cse_var_4 + 20)];
      ((half*)C_1)[(cse_var_3 + 21)] = C_global[(cse_var_4 + 21)];
      ((half*)C_1)[(cse_var_3 + 22)] = C_global[(cse_var_4 + 22)];
      ((half*)C_1)[(cse_var_3 + 23)] = C_global[(cse_var_4 + 23)];
      ((half*)C_1)[(cse_var_3 + 24)] = C_global[(cse_var_4 + 24)];
      ((half*)C_1)[(cse_var_3 + 25)] = C_global[(cse_var_4 + 25)];
      ((half*)C_1)[(cse_var_3 + 26)] = C_global[(cse_var_4 + 26)];
      ((half*)C_1)[(cse_var_3 + 27)] = C_global[(cse_var_4 + 27)];
      ((half*)C_1)[(cse_var_3 + 28)] = C_global[(cse_var_4 + 28)];
      ((half*)C_1)[(cse_var_3 + 29)] = C_global[(cse_var_4 + 29)];
      ((half*)C_1)[(cse_var_3 + 30)] = C_global[(cse_var_4 + 30)];
      ((half*)C_1)[(cse_var_3 + 31)] = C_global[(cse_var_4 + 31)];
    }
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function


#ifndef TMAC_HALF_TYPEDEF_H
#define TMAC_HALF_TYPEDEF_H

#ifndef __AVX2__
typedef _Float16 half;
#endif
#endif
// tvm target: c -keys=cpu 



#include <math.h>
#include <stdbool.h>




#ifdef __cplusplus
extern "C"
#endif
 int32_t preprocessor_t4_int8_m8192_k14336_n1_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {
  
  
  
  
  
  
  
  
  void* preprocessor_t4_int8_m8192_k14336_n1_b2_B_shape = (NULL);
  void* preprocessor_t4_int8_m8192_k14336_n1_b2_B_strides = (NULL);
  int32_t dev_id = (0);
  void* B_1 = (B);
  void* preprocessor_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape = (NULL);
  void* preprocessor_t4_int8_m8192_k14336_n1_b2_LUT_Scales_strides = (NULL);
  void* LUT_Scales_1 = (LUT_Scales);
  void* preprocessor_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape = (NULL);
  void* preprocessor_t4_int8_m8192_k14336_n1_b2_LUT_Biases_strides = (NULL);
  void* LUT_Biases_1 = (LUT_Biases);
  void* preprocessor_t4_int8_m8192_k14336_n1_b2_QLUT_shape = (NULL);
  void* preprocessor_t4_int8_m8192_k14336_n1_b2_QLUT_strides = (NULL);
  void* QLUT_1 = (QLUT);
  if (!(preprocessor_t4_int8_m8192_k14336_n1_b2_B_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m8192_k14336_n1_b2_LUT_Scales_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m8192_k14336_n1_b2_LUT_Biases_strides == NULL)) {
  }
  if (!(preprocessor_t4_int8_m8192_k14336_n1_b2_QLUT_strides == NULL)) {
  }
  for (int32_t kk_outer = 0; kk_outer < 224; ++kk_outer) {
    partial_max_reset((&(((half*)LUT_Scales_1)[kk_outer])));
    for (int32_t k_outer = 0; k_outer < 2; ++k_outer) {
      partial_max_g4_int8_k8((&(((half*)LUT_Scales_1)[kk_outer])), (&(((half*)B_1)[((kk_outer * 64) + (k_outer * 32))])));
    }
  }
  for (int32_t k_outer_1 = 0; k_outer_1 < 224; ++k_outer_1) {
    lut_ctor_g4_int8_k0_b2(64, (&(((int8_t*)QLUT_1)[(k_outer_1 * 256)])), (&(((half*)B_1)[(k_outer_1 * 64)])), (&(((half*)LUT_Scales_1)[k_outer_1])), (&(((half*)LUT_Biases_1)[k_outer_1])));
  }
  return 0;
}

// CodegenC: NOTE: Auto-generated entry function
