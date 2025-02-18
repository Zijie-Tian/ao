	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 15, 2
	.globl	_qgemm_lut_t4_int8_m8192_k14336_n1_b2
	.p2align	2
_qgemm_lut_t4_int8_m8192_k14336_n1_b2:
Lfunc_begin0:
	.file	1 "." "IRModule.CodeGenLLVM"
	.loc	1 0 0
	.cfi_startproc
	stp	x26, x25, [sp, #-80]!
	stp	x24, x23, [sp, #16]
	stp	x22, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	stp	x29, x30, [sp, #64]
	.cfi_def_cfa_offset 80
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
Ltmp0:
	cmp	w2, #6
	b.ne	LBB0_107
Ltmp1:
	cbz	x0, LBB0_108
Ltmp2:
	cbz	x1, LBB0_109
Ltmp3:
	ldr	w8, [x1]
Ltmp4:
	cmp	w8, #13
	mov	w9, #1
	lsl	w8, w9, w8
Ltmp5:
	mov	w9, #8344
	and	w8, w8, w9
	ccmp	w8, #0, #4, ls
	b.eq	LBB0_100
Ltmp6:
	ldr	w8, [x1, #4]
Ltmp7:
	cmp	w8, #13
	b.hi	LBB0_101
Ltmp8:
	mov	w9, #1
	lsl	w8, w9, w8
Ltmp9:
	mov	w9, #8344
	tst	w8, w9
	b.eq	LBB0_101
Ltmp10:
	ldr	w8, [x1, #8]
Ltmp11:
	cmp	w8, #13
	b.hi	LBB0_102
Ltmp12:
	mov	w9, #1
	lsl	w8, w9, w8
Ltmp13:
	mov	w9, #8344
	tst	w8, w9
	b.eq	LBB0_102
Ltmp14:
	ldr	w8, [x1, #12]
Ltmp15:
	cmp	w8, #13
	b.hi	LBB0_103
Ltmp16:
	mov	w9, #1
	lsl	w8, w9, w8
Ltmp17:
	mov	w9, #8344
	tst	w8, w9
	b.eq	LBB0_103
Ltmp18:
	ldr	w8, [x1, #16]
Ltmp19:
	cmp	w8, #13
	b.hi	LBB0_104
Ltmp20:
	mov	w9, #1
	lsl	w8, w9, w8
Ltmp21:
	mov	w9, #8344
	tst	w8, w9
	b.eq	LBB0_104
Ltmp22:
	ldr	w8, [x1, #20]
Ltmp23:
	cmp	w8, #13
	b.hi	LBB0_105
Ltmp24:
	mov	w9, #1
	lsl	w8, w9, w8
Ltmp25:
	mov	w9, #8344
	tst	w8, w9
	b.eq	LBB0_105
Ltmp26:
	ldr	x20, [x0]
Ltmp27:
	cbz	x20, LBB0_110
Ltmp28:
	ldr	w8, [x20, #16]
	cmp	w8, #3
	b.ne	LBB0_111
Ltmp29:
	ldr	x7, [x0, #8]
Ltmp30:
	cbz	x7, LBB0_112
Ltmp31:
	ldr	w8, [x7, #16]
	cmp	w8, #3
	b.ne	LBB0_113
Ltmp32:
	ldr	x15, [x0, #16]
Ltmp33:
	cbz	x15, LBB0_114
Ltmp34:
	ldr	w8, [x15, #16]
	cmp	w8, #3
	b.ne	LBB0_115
Ltmp35:
	ldr	x13, [x0, #24]
Ltmp36:
	cbz	x13, LBB0_116
Ltmp37:
	ldr	w8, [x13, #16]
	cmp	w8, #2
	b.ne	LBB0_117
Ltmp38:
	ldr	x9, [x0, #32]
Ltmp39:
	cbz	x9, LBB0_118
Ltmp40:
	ldr	w8, [x9, #16]
	cmp	w8, #2
	b.ne	LBB0_119
Ltmp41:
	ldr	x8, [x0, #40]
Ltmp42:
	cbz	x8, LBB0_120
Ltmp43:
	ldr	w10, [x8, #16]
	cmp	w10, #2
	b.ne	LBB0_121
Ltmp44:
	ldrb	w10, [x20, #20]
	cmp	w10, #1
	b.ne	LBB0_122
Ltmp45:
	ldrb	w10, [x20, #21]
	cmp	w10, #8
	b.ne	LBB0_122
Ltmp46:
	ldrh	w10, [x20, #22]
	cmp	w10, #1
	b.ne	LBB0_122
Ltmp47:
	ldr	x10, [x20, #24]
Ltmp48:
	ldr	w11, [x10]
	cmp	w11, #32
	b.ne	LBB0_123
Ltmp49:
	ldr	w11, [x10, #8]
	cmp	w11, #3584
	b.ne	LBB0_124
Ltmp50:
	ldr	w10, [x10, #16]
Ltmp51:
	cmp	w10, #128
	b.ne	LBB0_125
Ltmp52:
	ldr	x24, [x20, #32]
Ltmp53:
	ldr	w10, [x20, #12]
Ltmp54:
	ldr	x1, [x20]
Ltmp55:
	ldp	x23, x22, [x7, #24]
Ltmp56:
	ldr	x0, [x7]
Ltmp57:
	ldp	x21, x19, [x15, #24]
Ltmp58:
	ldr	x2, [x15]
Ltmp59:
	ldp	x6, x17, [x13, #24]
Ltmp60:
	ldr	x3, [x13]
Ltmp61:
	ldp	x16, x14, [x9, #24]
Ltmp62:
	ldr	x4, [x9]
Ltmp63:
	ldp	x12, x11, [x8, #24]
Ltmp64:
	ldr	x5, [x8]
Ltmp65:
	cbz	x24, LBB0_36
Ltmp66:
	ldr	w25, [x24, #16]
	cmp	w25, #1
	b.ne	LBB0_126
Ltmp67:
	ldr	w25, [x24, #8]
	cmp	x25, #128
	b.ne	LBB0_126
Ltmp68:
	ldr	w24, [x24]
Ltmp69:
	cmp	x24, #112, lsl #12
	b.ne	LBB0_126
Ltmp70:
LBB0_36:
	ldr	x24, [x20, #40]
	cbnz	x24, LBB0_127
Ltmp71:
	ldr	w20, [x20, #8]
Ltmp72:
	cmp	w20, #1
	b.ne	LBB0_128
Ltmp73:
	cbz	x1, LBB0_129
Ltmp74:
	ldrb	w20, [x7, #20]
	cbnz	w20, LBB0_130
Ltmp75:
	ldrb	w20, [x7, #21]
	cmp	w20, #8
	b.ne	LBB0_130
Ltmp76:
	ldrh	w20, [x7, #22]
	cmp	w20, #1
	b.ne	LBB0_130
Ltmp77:
	ldr	w20, [x23]
	cmp	w20, #1
	b.ne	LBB0_131
Ltmp78:
	ldr	w20, [x23, #8]
	cmp	w20, #3584
	b.ne	LBB0_132
Ltmp79:
	ldr	w20, [x23, #16]
	cmp	w20, #16
	b.ne	LBB0_133
Ltmp80:
	cbz	x22, LBB0_48
Ltmp81:
	ldr	w20, [x22, #16]
	cmp	w20, #1
	b.ne	LBB0_134
Ltmp82:
	ldr	w20, [x22, #8]
	cmp	x20, #16
	b.ne	LBB0_134
Ltmp83:
LBB0_48:
	ldr	x20, [x7, #40]
	cbnz	x20, LBB0_135
Ltmp84:
	ldr	w20, [x7, #8]
	cmp	w20, #1
	b.ne	LBB0_136
Ltmp85:
	ldr	w7, [x7, #12]
Ltmp86:
	cmp	w10, w7
	b.ne	LBB0_137
Ltmp87:
	cbz	x0, LBB0_138
Ltmp88:
	ldrb	w7, [x15, #20]
	cmp	w7, #2
	b.ne	LBB0_139
Ltmp89:
	ldrb	w7, [x15, #21]
	cmp	w7, #16
	b.ne	LBB0_139
Ltmp90:
	ldrh	w7, [x15, #22]
	cmp	w7, #1
	b.ne	LBB0_139
Ltmp91:
	ldr	w7, [x21]
	cmp	w7, #32
	b.ne	LBB0_140
Ltmp92:
	ldr	w7, [x21, #8]
	cmp	w7, #112
	b.ne	LBB0_141
Ltmp93:
	ldr	w7, [x21, #16]
	cmp	w7, #256
	b.ne	LBB0_142
Ltmp94:
	cbz	x19, LBB0_62
Ltmp95:
	ldr	w7, [x19, #16]
	cmp	w7, #1
	b.ne	LBB0_143
Ltmp96:
	ldr	w7, [x19, #8]
	cmp	x7, #256
	b.ne	LBB0_143
Ltmp97:
	ldr	w7, [x19]
	cmp	x7, #7, lsl #12
	b.ne	LBB0_143
Ltmp98:
LBB0_62:
	ldr	x7, [x15, #40]
	cbnz	x7, LBB0_144
Ltmp99:
	ldr	w7, [x15, #8]
	cmp	w7, #1
	b.ne	LBB0_145
Ltmp100:
	ldr	w15, [x15, #12]
Ltmp101:
	cmp	w10, w15
	b.ne	LBB0_146
Ltmp102:
	cbz	x2, LBB0_147
Ltmp103:
	ldrb	w15, [x13, #20]
	cmp	w15, #2
	b.ne	LBB0_148
Ltmp104:
	ldrb	w15, [x13, #21]
	cmp	w15, #16
	b.ne	LBB0_148
Ltmp105:
	ldrh	w15, [x13, #22]
	cmp	w15, #1
	b.ne	LBB0_148
Ltmp106:
	ldr	w15, [x6]
	cmp	w15, #1
	b.ne	LBB0_149
Ltmp107:
	ldr	w15, [x6, #8]
	cmp	w15, #224
	b.ne	LBB0_150
Ltmp108:
	cbz	x17, LBB0_73
Ltmp109:
	ldr	w15, [x17, #8]
	cmp	w15, #1
	b.ne	LBB0_151
Ltmp110:
LBB0_73:
	ldr	x15, [x13, #40]
	cbnz	x15, LBB0_152
Ltmp111:
	ldr	w15, [x13, #8]
	cmp	w15, #1
	b.ne	LBB0_153
Ltmp112:
	ldr	w13, [x13, #12]
Ltmp113:
	cmp	w10, w13
	b.ne	LBB0_154
Ltmp114:
	cbz	x3, LBB0_155
Ltmp115:
	ldrb	w13, [x9, #20]
	cmp	w13, #2
	b.ne	LBB0_156
Ltmp116:
	ldrb	w13, [x9, #21]
	cmp	w13, #16
	b.ne	LBB0_156
Ltmp117:
	ldrh	w13, [x9, #22]
	cmp	w13, #1
	b.ne	LBB0_156
Ltmp118:
	ldr	w13, [x16]
	cmp	w13, #1
	b.ne	LBB0_157
Ltmp119:
	ldr	w13, [x16, #8]
	cmp	w13, #224
	b.ne	LBB0_158
Ltmp120:
	cbz	x14, LBB0_84
Ltmp121:
	ldr	w13, [x14, #8]
	cmp	w13, #1
	b.ne	LBB0_159
Ltmp122:
LBB0_84:
	ldr	x13, [x9, #40]
	cbnz	x13, LBB0_160
Ltmp123:
	ldr	w13, [x9, #8]
	cmp	w13, #1
	b.ne	LBB0_161
Ltmp124:
	ldr	w9, [x9, #12]
Ltmp125:
	cmp	w10, w9
	b.ne	LBB0_162
Ltmp126:
	cbz	x4, LBB0_163
Ltmp127:
	ldrb	w9, [x8, #20]
	cmp	w9, #2
	b.ne	LBB0_164
Ltmp128:
	ldrb	w9, [x8, #21]
	cmp	w9, #16
	b.ne	LBB0_164
Ltmp129:
	ldrh	w9, [x8, #22]
	cmp	w9, #1
	b.ne	LBB0_164
Ltmp130:
	ldr	w9, [x12]
	cmp	w9, #1
	b.ne	LBB0_165
Ltmp131:
	ldr	w9, [x12, #8]
	cmp	w9, #1, lsl #12
	b.ne	LBB0_166
Ltmp132:
	cbz	x11, LBB0_95
Ltmp133:
	ldr	w9, [x11, #8]
	cmp	w9, #1
	b.ne	LBB0_167
Ltmp134:
LBB0_95:
	ldr	x9, [x8, #40]
	cbnz	x9, LBB0_168
Ltmp135:
	ldr	w9, [x8, #8]
	cmp	w9, #1
	b.ne	LBB0_169
Ltmp136:
	ldr	w8, [x8, #12]
Ltmp137:
	cmp	w10, w8
	b.ne	LBB0_170
Ltmp138:
	cbz	x5, LBB0_171
Ltmp139:
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
Ltmp140:
	ldp	x22, x21, [sp, #32]
Ltmp141:
	ldp	x24, x23, [sp, #16]
Ltmp142:
	ldp	x26, x25, [sp], #80
	b	_qgemm_lut_t4_int8_m8192_k14336_n1_b2_compute_
Ltmp143:
LBB0_100:
Lloh0:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
Lloh3:
	adrp	x0, l_.str.3@PAGE
Ltmp144:
Lloh4:
	add	x0, x0, l_.str.3@PAGEOFF
	b	LBB0_106
Ltmp145:
LBB0_101:
Lloh5:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh6:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh7:
	ldr	x8, [x8]
Lloh8:
	adrp	x0, l_.str.4@PAGE
Ltmp146:
Lloh9:
	add	x0, x0, l_.str.4@PAGEOFF
	b	LBB0_106
Ltmp147:
LBB0_102:
Lloh10:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh11:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh12:
	ldr	x8, [x8]
Lloh13:
	adrp	x0, l_.str.5@PAGE
Ltmp148:
Lloh14:
	add	x0, x0, l_.str.5@PAGEOFF
	b	LBB0_106
Ltmp149:
LBB0_103:
Lloh15:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh16:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh17:
	ldr	x8, [x8]
Lloh18:
	adrp	x0, l_.str.6@PAGE
Ltmp150:
Lloh19:
	add	x0, x0, l_.str.6@PAGEOFF
	b	LBB0_106
Ltmp151:
LBB0_104:
Lloh20:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh21:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh22:
	ldr	x8, [x8]
Lloh23:
	adrp	x0, l_.str.7@PAGE
Ltmp152:
Lloh24:
	add	x0, x0, l_.str.7@PAGEOFF
	b	LBB0_106
Ltmp153:
LBB0_105:
Lloh25:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh26:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh27:
	ldr	x8, [x8]
Lloh28:
	adrp	x0, l_.str.8@PAGE
Ltmp154:
Lloh29:
	add	x0, x0, l_.str.8@PAGEOFF
Ltmp155:
LBB0_106:
	blr	x8
	mov	w0, #-1
	ldp	x29, x30, [sp, #64]
	ldp	x20, x19, [sp, #48]
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldp	x26, x25, [sp], #80
	ret
Ltmp156:
LBB0_107:
Lloh30:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh31:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh32:
	ldr	x8, [x8]
Lloh33:
	adrp	x0, l_.str@PAGE
Ltmp157:
Lloh34:
	add	x0, x0, l_.str@PAGEOFF
	b	LBB0_106
Ltmp158:
LBB0_108:
Lloh35:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh36:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh37:
	ldr	x8, [x8]
Lloh38:
	adrp	x0, l_.str.1@PAGE
Ltmp159:
Lloh39:
	add	x0, x0, l_.str.1@PAGEOFF
	b	LBB0_106
Ltmp160:
LBB0_109:
Lloh40:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh41:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh42:
	ldr	x8, [x8]
Lloh43:
	adrp	x0, l_.str.2@PAGE
Ltmp161:
Lloh44:
	add	x0, x0, l_.str.2@PAGEOFF
	b	LBB0_106
Ltmp162:
LBB0_110:
Lloh45:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh46:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh47:
	ldr	x8, [x8]
Lloh48:
	adrp	x0, l_.str.9@PAGE
Ltmp163:
Lloh49:
	add	x0, x0, l_.str.9@PAGEOFF
	b	LBB0_106
Ltmp164:
LBB0_111:
Lloh50:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh51:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh52:
	ldr	x8, [x8]
Lloh53:
	adrp	x0, l_.str.10@PAGE
Ltmp165:
Lloh54:
	add	x0, x0, l_.str.10@PAGEOFF
	b	LBB0_106
Ltmp166:
LBB0_112:
Lloh55:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh56:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh57:
	ldr	x8, [x8]
Lloh58:
	adrp	x0, l_.str.11@PAGE
Ltmp167:
Lloh59:
	add	x0, x0, l_.str.11@PAGEOFF
	b	LBB0_106
Ltmp168:
LBB0_113:
Lloh60:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh61:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh62:
	ldr	x8, [x8]
Lloh63:
	adrp	x0, l_.str.12@PAGE
Ltmp169:
Lloh64:
	add	x0, x0, l_.str.12@PAGEOFF
	b	LBB0_106
Ltmp170:
LBB0_114:
Lloh65:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh66:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh67:
	ldr	x8, [x8]
Lloh68:
	adrp	x0, l_.str.13@PAGE
Ltmp171:
Lloh69:
	add	x0, x0, l_.str.13@PAGEOFF
	b	LBB0_106
Ltmp172:
LBB0_115:
Lloh70:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh71:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh72:
	ldr	x8, [x8]
Lloh73:
	adrp	x0, l_.str.14@PAGE
Ltmp173:
Lloh74:
	add	x0, x0, l_.str.14@PAGEOFF
	b	LBB0_106
Ltmp174:
LBB0_116:
Lloh75:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh76:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh77:
	ldr	x8, [x8]
Lloh78:
	adrp	x0, l_.str.15@PAGE
Ltmp175:
Lloh79:
	add	x0, x0, l_.str.15@PAGEOFF
	b	LBB0_106
Ltmp176:
LBB0_117:
Lloh80:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh81:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh82:
	ldr	x8, [x8]
Lloh83:
	adrp	x0, l_.str.16@PAGE
Ltmp177:
Lloh84:
	add	x0, x0, l_.str.16@PAGEOFF
	b	LBB0_106
Ltmp178:
LBB0_118:
Lloh85:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh86:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh87:
	ldr	x8, [x8]
Lloh88:
	adrp	x0, l_.str.17@PAGE
Ltmp179:
Lloh89:
	add	x0, x0, l_.str.17@PAGEOFF
	b	LBB0_106
Ltmp180:
LBB0_119:
Lloh90:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh91:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh92:
	ldr	x8, [x8]
Lloh93:
	adrp	x0, l_.str.18@PAGE
Ltmp181:
Lloh94:
	add	x0, x0, l_.str.18@PAGEOFF
	b	LBB0_106
Ltmp182:
LBB0_120:
Lloh95:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp183:
Lloh96:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh97:
	ldr	x8, [x8]
Lloh98:
	adrp	x0, l_.str.19@PAGE
Ltmp184:
Lloh99:
	add	x0, x0, l_.str.19@PAGEOFF
	b	LBB0_106
Ltmp185:
LBB0_121:
Lloh100:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp186:
Lloh101:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh102:
	ldr	x8, [x8]
Lloh103:
	adrp	x0, l_.str.20@PAGE
Ltmp187:
Lloh104:
	add	x0, x0, l_.str.20@PAGEOFF
	b	LBB0_106
Ltmp188:
LBB0_122:
Lloh105:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp189:
Lloh106:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh107:
	ldr	x8, [x8]
Lloh108:
	adrp	x0, l_.str.21@PAGE
Ltmp190:
Lloh109:
	add	x0, x0, l_.str.21@PAGEOFF
	b	LBB0_106
Ltmp191:
LBB0_123:
Lloh110:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp192:
Lloh111:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh112:
	ldr	x8, [x8]
Lloh113:
	adrp	x0, l_.str.22@PAGE
Ltmp193:
Lloh114:
	add	x0, x0, l_.str.22@PAGEOFF
	b	LBB0_106
Ltmp194:
LBB0_124:
Lloh115:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp195:
Lloh116:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh117:
	ldr	x8, [x8]
Lloh118:
	adrp	x0, l_.str.23@PAGE
Ltmp196:
Lloh119:
	add	x0, x0, l_.str.23@PAGEOFF
	b	LBB0_106
Ltmp197:
LBB0_125:
Lloh120:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp198:
Lloh121:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh122:
	ldr	x8, [x8]
Lloh123:
	adrp	x0, l_.str.24@PAGE
Ltmp199:
Lloh124:
	add	x0, x0, l_.str.24@PAGEOFF
	b	LBB0_106
Ltmp200:
LBB0_126:
Lloh125:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp201:
Lloh126:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh127:
	ldr	x8, [x8]
Lloh128:
	adrp	x0, l_.str.25@PAGE
Ltmp202:
Lloh129:
	add	x0, x0, l_.str.25@PAGEOFF
	b	LBB0_106
Ltmp203:
LBB0_127:
Lloh130:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp204:
Lloh131:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh132:
	ldr	x8, [x8]
Lloh133:
	adrp	x0, l_.str.26@PAGE
Ltmp205:
Lloh134:
	add	x0, x0, l_.str.26@PAGEOFF
	b	LBB0_106
Ltmp206:
LBB0_128:
Lloh135:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp207:
Lloh136:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh137:
	ldr	x8, [x8]
Lloh138:
	adrp	x0, l_.str.27@PAGE
Ltmp208:
Lloh139:
	add	x0, x0, l_.str.27@PAGEOFF
	b	LBB0_106
Ltmp209:
LBB0_129:
Lloh140:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp210:
Lloh141:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh142:
	ldr	x8, [x8]
Lloh143:
	adrp	x0, l_.str.28@PAGE
Ltmp211:
Lloh144:
	add	x0, x0, l_.str.28@PAGEOFF
	b	LBB0_106
Ltmp212:
LBB0_130:
Lloh145:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp213:
Lloh146:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh147:
	ldr	x8, [x8]
Lloh148:
	adrp	x0, l_.str.29@PAGE
Ltmp214:
Lloh149:
	add	x0, x0, l_.str.29@PAGEOFF
	b	LBB0_106
Ltmp215:
LBB0_131:
Lloh150:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp216:
Lloh151:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh152:
	ldr	x8, [x8]
Lloh153:
	adrp	x0, l_.str.30@PAGE
Ltmp217:
Lloh154:
	add	x0, x0, l_.str.30@PAGEOFF
	b	LBB0_106
Ltmp218:
LBB0_132:
Lloh155:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp219:
Lloh156:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh157:
	ldr	x8, [x8]
Lloh158:
	adrp	x0, l_.str.31@PAGE
Ltmp220:
Lloh159:
	add	x0, x0, l_.str.31@PAGEOFF
	b	LBB0_106
Ltmp221:
LBB0_133:
Lloh160:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp222:
Lloh161:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh162:
	ldr	x8, [x8]
Lloh163:
	adrp	x0, l_.str.32@PAGE
Ltmp223:
Lloh164:
	add	x0, x0, l_.str.32@PAGEOFF
	b	LBB0_106
Ltmp224:
LBB0_134:
Lloh165:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp225:
Lloh166:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh167:
	ldr	x8, [x8]
Lloh168:
	adrp	x0, l_.str.33@PAGE
Ltmp226:
Lloh169:
	add	x0, x0, l_.str.33@PAGEOFF
	b	LBB0_106
Ltmp227:
LBB0_135:
Lloh170:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp228:
Lloh171:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh172:
	ldr	x8, [x8]
Lloh173:
	adrp	x0, l_.str.34@PAGE
Ltmp229:
Lloh174:
	add	x0, x0, l_.str.34@PAGEOFF
	b	LBB0_106
Ltmp230:
LBB0_136:
Lloh175:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp231:
Lloh176:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh177:
	ldr	x8, [x8]
Lloh178:
	adrp	x0, l_.str.35@PAGE
Ltmp232:
Lloh179:
	add	x0, x0, l_.str.35@PAGEOFF
	b	LBB0_106
Ltmp233:
LBB0_137:
Lloh180:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp234:
Lloh181:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh182:
	ldr	x8, [x8]
Lloh183:
	adrp	x0, l_.str.36@PAGE
Ltmp235:
Lloh184:
	add	x0, x0, l_.str.36@PAGEOFF
	b	LBB0_106
Ltmp236:
LBB0_138:
Lloh185:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp237:
Lloh186:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh187:
	ldr	x8, [x8]
Lloh188:
	adrp	x0, l_.str.37@PAGE
Ltmp238:
Lloh189:
	add	x0, x0, l_.str.37@PAGEOFF
	b	LBB0_106
Ltmp239:
LBB0_139:
Lloh190:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp240:
Lloh191:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh192:
	ldr	x8, [x8]
Lloh193:
	adrp	x0, l_.str.38@PAGE
Ltmp241:
Lloh194:
	add	x0, x0, l_.str.38@PAGEOFF
	b	LBB0_106
Ltmp242:
LBB0_140:
Lloh195:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp243:
Lloh196:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh197:
	ldr	x8, [x8]
Lloh198:
	adrp	x0, l_.str.39@PAGE
Ltmp244:
Lloh199:
	add	x0, x0, l_.str.39@PAGEOFF
	b	LBB0_106
Ltmp245:
LBB0_141:
Lloh200:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp246:
Lloh201:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh202:
	ldr	x8, [x8]
Lloh203:
	adrp	x0, l_.str.40@PAGE
Ltmp247:
Lloh204:
	add	x0, x0, l_.str.40@PAGEOFF
	b	LBB0_106
Ltmp248:
LBB0_142:
Lloh205:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp249:
Lloh206:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh207:
	ldr	x8, [x8]
Lloh208:
	adrp	x0, l_.str.41@PAGE
Ltmp250:
Lloh209:
	add	x0, x0, l_.str.41@PAGEOFF
	b	LBB0_106
Ltmp251:
LBB0_143:
Lloh210:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp252:
Lloh211:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh212:
	ldr	x8, [x8]
Lloh213:
	adrp	x0, l_.str.42@PAGE
Ltmp253:
Lloh214:
	add	x0, x0, l_.str.42@PAGEOFF
	b	LBB0_106
Ltmp254:
LBB0_144:
Lloh215:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp255:
Lloh216:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh217:
	ldr	x8, [x8]
Lloh218:
	adrp	x0, l_.str.43@PAGE
Ltmp256:
Lloh219:
	add	x0, x0, l_.str.43@PAGEOFF
	b	LBB0_106
Ltmp257:
LBB0_145:
Lloh220:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp258:
Lloh221:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh222:
	ldr	x8, [x8]
Lloh223:
	adrp	x0, l_.str.44@PAGE
Ltmp259:
Lloh224:
	add	x0, x0, l_.str.44@PAGEOFF
	b	LBB0_106
Ltmp260:
LBB0_146:
Lloh225:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp261:
Lloh226:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh227:
	ldr	x8, [x8]
Lloh228:
	adrp	x0, l_.str.45@PAGE
Ltmp262:
Lloh229:
	add	x0, x0, l_.str.45@PAGEOFF
	b	LBB0_106
Ltmp263:
LBB0_147:
Lloh230:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp264:
Lloh231:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh232:
	ldr	x8, [x8]
Lloh233:
	adrp	x0, l_.str.46@PAGE
Ltmp265:
Lloh234:
	add	x0, x0, l_.str.46@PAGEOFF
	b	LBB0_106
Ltmp266:
LBB0_148:
Lloh235:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp267:
Lloh236:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh237:
	ldr	x8, [x8]
Lloh238:
	adrp	x0, l_.str.47@PAGE
Ltmp268:
Lloh239:
	add	x0, x0, l_.str.47@PAGEOFF
	b	LBB0_106
Ltmp269:
LBB0_149:
Lloh240:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp270:
Lloh241:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh242:
	ldr	x8, [x8]
Lloh243:
	adrp	x0, l_.str.48@PAGE
Ltmp271:
Lloh244:
	add	x0, x0, l_.str.48@PAGEOFF
	b	LBB0_106
Ltmp272:
LBB0_150:
Lloh245:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp273:
Lloh246:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh247:
	ldr	x8, [x8]
Lloh248:
	adrp	x0, l_.str.49@PAGE
Ltmp274:
Lloh249:
	add	x0, x0, l_.str.49@PAGEOFF
	b	LBB0_106
Ltmp275:
LBB0_151:
Lloh250:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp276:
Lloh251:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh252:
	ldr	x8, [x8]
Lloh253:
	adrp	x0, l_.str.50@PAGE
Ltmp277:
Lloh254:
	add	x0, x0, l_.str.50@PAGEOFF
	b	LBB0_106
Ltmp278:
LBB0_152:
Lloh255:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp279:
Lloh256:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh257:
	ldr	x8, [x8]
Lloh258:
	adrp	x0, l_.str.51@PAGE
Ltmp280:
Lloh259:
	add	x0, x0, l_.str.51@PAGEOFF
	b	LBB0_106
Ltmp281:
LBB0_153:
Lloh260:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp282:
Lloh261:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh262:
	ldr	x8, [x8]
Lloh263:
	adrp	x0, l_.str.52@PAGE
Ltmp283:
Lloh264:
	add	x0, x0, l_.str.52@PAGEOFF
	b	LBB0_106
Ltmp284:
LBB0_154:
Lloh265:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp285:
Lloh266:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh267:
	ldr	x8, [x8]
Lloh268:
	adrp	x0, l_.str.53@PAGE
Ltmp286:
Lloh269:
	add	x0, x0, l_.str.53@PAGEOFF
	b	LBB0_106
Ltmp287:
LBB0_155:
Lloh270:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp288:
Lloh271:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh272:
	ldr	x8, [x8]
Lloh273:
	adrp	x0, l_.str.54@PAGE
Ltmp289:
Lloh274:
	add	x0, x0, l_.str.54@PAGEOFF
	b	LBB0_106
Ltmp290:
LBB0_156:
Lloh275:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp291:
Lloh276:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh277:
	ldr	x8, [x8]
Lloh278:
	adrp	x0, l_.str.55@PAGE
Ltmp292:
Lloh279:
	add	x0, x0, l_.str.55@PAGEOFF
	b	LBB0_106
Ltmp293:
LBB0_157:
Lloh280:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp294:
Lloh281:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh282:
	ldr	x8, [x8]
Lloh283:
	adrp	x0, l_.str.56@PAGE
Ltmp295:
Lloh284:
	add	x0, x0, l_.str.56@PAGEOFF
	b	LBB0_106
Ltmp296:
LBB0_158:
Lloh285:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp297:
Lloh286:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh287:
	ldr	x8, [x8]
Lloh288:
	adrp	x0, l_.str.57@PAGE
Ltmp298:
Lloh289:
	add	x0, x0, l_.str.57@PAGEOFF
	b	LBB0_106
Ltmp299:
LBB0_159:
Lloh290:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp300:
Lloh291:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh292:
	ldr	x8, [x8]
Lloh293:
	adrp	x0, l_.str.58@PAGE
Ltmp301:
Lloh294:
	add	x0, x0, l_.str.58@PAGEOFF
	b	LBB0_106
Ltmp302:
LBB0_160:
Lloh295:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp303:
Lloh296:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh297:
	ldr	x8, [x8]
Lloh298:
	adrp	x0, l_.str.59@PAGE
Ltmp304:
Lloh299:
	add	x0, x0, l_.str.59@PAGEOFF
	b	LBB0_106
Ltmp305:
LBB0_161:
Lloh300:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp306:
Lloh301:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh302:
	ldr	x8, [x8]
Lloh303:
	adrp	x0, l_.str.60@PAGE
Ltmp307:
Lloh304:
	add	x0, x0, l_.str.60@PAGEOFF
	b	LBB0_106
Ltmp308:
LBB0_162:
Lloh305:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp309:
Lloh306:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh307:
	ldr	x8, [x8]
Lloh308:
	adrp	x0, l_.str.61@PAGE
Ltmp310:
Lloh309:
	add	x0, x0, l_.str.61@PAGEOFF
	b	LBB0_106
Ltmp311:
LBB0_163:
Lloh310:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp312:
Lloh311:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh312:
	ldr	x8, [x8]
Lloh313:
	adrp	x0, l_.str.62@PAGE
Ltmp313:
Lloh314:
	add	x0, x0, l_.str.62@PAGEOFF
	b	LBB0_106
Ltmp314:
LBB0_164:
Lloh315:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp315:
Lloh316:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh317:
	ldr	x8, [x8]
Lloh318:
	adrp	x0, l_.str.63@PAGE
Ltmp316:
Lloh319:
	add	x0, x0, l_.str.63@PAGEOFF
	b	LBB0_106
Ltmp317:
LBB0_165:
Lloh320:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp318:
Lloh321:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh322:
	ldr	x8, [x8]
Lloh323:
	adrp	x0, l_.str.64@PAGE
Ltmp319:
Lloh324:
	add	x0, x0, l_.str.64@PAGEOFF
	b	LBB0_106
Ltmp320:
LBB0_166:
Lloh325:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp321:
Lloh326:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh327:
	ldr	x8, [x8]
Lloh328:
	adrp	x0, l_.str.65@PAGE
Ltmp322:
Lloh329:
	add	x0, x0, l_.str.65@PAGEOFF
	b	LBB0_106
Ltmp323:
LBB0_167:
Lloh330:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp324:
Lloh331:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh332:
	ldr	x8, [x8]
Lloh333:
	adrp	x0, l_.str.66@PAGE
Ltmp325:
Lloh334:
	add	x0, x0, l_.str.66@PAGEOFF
	b	LBB0_106
Ltmp326:
LBB0_168:
Lloh335:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp327:
Lloh336:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh337:
	ldr	x8, [x8]
Lloh338:
	adrp	x0, l_.str.67@PAGE
Ltmp328:
Lloh339:
	add	x0, x0, l_.str.67@PAGEOFF
	b	LBB0_106
Ltmp329:
LBB0_169:
Lloh340:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Ltmp330:
Lloh341:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh342:
	ldr	x8, [x8]
Lloh343:
	adrp	x0, l_.str.68@PAGE
Ltmp331:
Lloh344:
	add	x0, x0, l_.str.68@PAGEOFF
	b	LBB0_106
Ltmp332:
LBB0_170:
Lloh345:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh346:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh347:
	ldr	x8, [x8]
Lloh348:
	adrp	x0, l_.str.69@PAGE
Ltmp333:
Lloh349:
	add	x0, x0, l_.str.69@PAGEOFF
	b	LBB0_106
Ltmp334:
LBB0_171:
Lloh350:
	adrp	x8, ___TVMAPISetLastError@GOTPAGE
Lloh351:
	ldr	x8, [x8, ___TVMAPISetLastError@GOTPAGEOFF]
Lloh352:
	ldr	x8, [x8]
Lloh353:
	adrp	x0, l_.str.70@PAGE
Ltmp335:
Lloh354:
	add	x0, x0, l_.str.70@PAGEOFF
	b	LBB0_106
Ltmp336:
	.loh AdrpAdd	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGotLdr	Lloh5, Lloh6, Lloh7
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpLdrGotLdr	Lloh10, Lloh11, Lloh12
	.loh AdrpAdd	Lloh18, Lloh19
	.loh AdrpLdrGotLdr	Lloh15, Lloh16, Lloh17
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpLdrGotLdr	Lloh20, Lloh21, Lloh22
	.loh AdrpAdd	Lloh28, Lloh29
	.loh AdrpLdrGotLdr	Lloh25, Lloh26, Lloh27
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpLdrGotLdr	Lloh30, Lloh31, Lloh32
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpLdrGotLdr	Lloh35, Lloh36, Lloh37
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpLdrGotLdr	Lloh40, Lloh41, Lloh42
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpLdrGotLdr	Lloh45, Lloh46, Lloh47
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpLdrGotLdr	Lloh50, Lloh51, Lloh52
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpLdrGotLdr	Lloh55, Lloh56, Lloh57
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpLdrGotLdr	Lloh60, Lloh61, Lloh62
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpLdrGotLdr	Lloh65, Lloh66, Lloh67
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpLdrGotLdr	Lloh70, Lloh71, Lloh72
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpLdrGotLdr	Lloh75, Lloh76, Lloh77
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpLdrGotLdr	Lloh80, Lloh81, Lloh82
	.loh AdrpAdd	Lloh88, Lloh89
	.loh AdrpLdrGotLdr	Lloh85, Lloh86, Lloh87
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpLdrGotLdr	Lloh90, Lloh91, Lloh92
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpLdrGotLdr	Lloh95, Lloh96, Lloh97
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpLdrGotLdr	Lloh100, Lloh101, Lloh102
	.loh AdrpAdd	Lloh108, Lloh109
	.loh AdrpLdrGotLdr	Lloh105, Lloh106, Lloh107
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpLdrGotLdr	Lloh110, Lloh111, Lloh112
	.loh AdrpAdd	Lloh118, Lloh119
	.loh AdrpLdrGotLdr	Lloh115, Lloh116, Lloh117
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpLdrGotLdr	Lloh120, Lloh121, Lloh122
	.loh AdrpAdd	Lloh128, Lloh129
	.loh AdrpLdrGotLdr	Lloh125, Lloh126, Lloh127
	.loh AdrpAdd	Lloh133, Lloh134
	.loh AdrpLdrGotLdr	Lloh130, Lloh131, Lloh132
	.loh AdrpAdd	Lloh138, Lloh139
	.loh AdrpLdrGotLdr	Lloh135, Lloh136, Lloh137
	.loh AdrpAdd	Lloh143, Lloh144
	.loh AdrpLdrGotLdr	Lloh140, Lloh141, Lloh142
	.loh AdrpAdd	Lloh148, Lloh149
	.loh AdrpLdrGotLdr	Lloh145, Lloh146, Lloh147
	.loh AdrpAdd	Lloh153, Lloh154
	.loh AdrpLdrGotLdr	Lloh150, Lloh151, Lloh152
	.loh AdrpAdd	Lloh158, Lloh159
	.loh AdrpLdrGotLdr	Lloh155, Lloh156, Lloh157
	.loh AdrpAdd	Lloh163, Lloh164
	.loh AdrpLdrGotLdr	Lloh160, Lloh161, Lloh162
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpLdrGotLdr	Lloh165, Lloh166, Lloh167
	.loh AdrpAdd	Lloh173, Lloh174
	.loh AdrpLdrGotLdr	Lloh170, Lloh171, Lloh172
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpLdrGotLdr	Lloh175, Lloh176, Lloh177
	.loh AdrpAdd	Lloh183, Lloh184
	.loh AdrpLdrGotLdr	Lloh180, Lloh181, Lloh182
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpLdrGotLdr	Lloh185, Lloh186, Lloh187
	.loh AdrpAdd	Lloh193, Lloh194
	.loh AdrpLdrGotLdr	Lloh190, Lloh191, Lloh192
	.loh AdrpAdd	Lloh198, Lloh199
	.loh AdrpLdrGotLdr	Lloh195, Lloh196, Lloh197
	.loh AdrpAdd	Lloh203, Lloh204
	.loh AdrpLdrGotLdr	Lloh200, Lloh201, Lloh202
	.loh AdrpAdd	Lloh208, Lloh209
	.loh AdrpLdrGotLdr	Lloh205, Lloh206, Lloh207
	.loh AdrpAdd	Lloh213, Lloh214
	.loh AdrpLdrGotLdr	Lloh210, Lloh211, Lloh212
	.loh AdrpAdd	Lloh218, Lloh219
	.loh AdrpLdrGotLdr	Lloh215, Lloh216, Lloh217
	.loh AdrpAdd	Lloh223, Lloh224
	.loh AdrpLdrGotLdr	Lloh220, Lloh221, Lloh222
	.loh AdrpAdd	Lloh228, Lloh229
	.loh AdrpLdrGotLdr	Lloh225, Lloh226, Lloh227
	.loh AdrpAdd	Lloh233, Lloh234
	.loh AdrpLdrGotLdr	Lloh230, Lloh231, Lloh232
	.loh AdrpAdd	Lloh238, Lloh239
	.loh AdrpLdrGotLdr	Lloh235, Lloh236, Lloh237
	.loh AdrpAdd	Lloh243, Lloh244
	.loh AdrpLdrGotLdr	Lloh240, Lloh241, Lloh242
	.loh AdrpAdd	Lloh248, Lloh249
	.loh AdrpLdrGotLdr	Lloh245, Lloh246, Lloh247
	.loh AdrpAdd	Lloh253, Lloh254
	.loh AdrpLdrGotLdr	Lloh250, Lloh251, Lloh252
	.loh AdrpAdd	Lloh258, Lloh259
	.loh AdrpLdrGotLdr	Lloh255, Lloh256, Lloh257
	.loh AdrpAdd	Lloh263, Lloh264
	.loh AdrpLdrGotLdr	Lloh260, Lloh261, Lloh262
	.loh AdrpAdd	Lloh268, Lloh269
	.loh AdrpLdrGotLdr	Lloh265, Lloh266, Lloh267
	.loh AdrpAdd	Lloh273, Lloh274
	.loh AdrpLdrGotLdr	Lloh270, Lloh271, Lloh272
	.loh AdrpAdd	Lloh278, Lloh279
	.loh AdrpLdrGotLdr	Lloh275, Lloh276, Lloh277
	.loh AdrpAdd	Lloh283, Lloh284
	.loh AdrpLdrGotLdr	Lloh280, Lloh281, Lloh282
	.loh AdrpAdd	Lloh288, Lloh289
	.loh AdrpLdrGotLdr	Lloh285, Lloh286, Lloh287
	.loh AdrpAdd	Lloh293, Lloh294
	.loh AdrpLdrGotLdr	Lloh290, Lloh291, Lloh292
	.loh AdrpAdd	Lloh298, Lloh299
	.loh AdrpLdrGotLdr	Lloh295, Lloh296, Lloh297
	.loh AdrpAdd	Lloh303, Lloh304
	.loh AdrpLdrGotLdr	Lloh300, Lloh301, Lloh302
	.loh AdrpAdd	Lloh308, Lloh309
	.loh AdrpLdrGotLdr	Lloh305, Lloh306, Lloh307
	.loh AdrpAdd	Lloh313, Lloh314
	.loh AdrpLdrGotLdr	Lloh310, Lloh311, Lloh312
	.loh AdrpAdd	Lloh318, Lloh319
	.loh AdrpLdrGotLdr	Lloh315, Lloh316, Lloh317
	.loh AdrpAdd	Lloh323, Lloh324
	.loh AdrpLdrGotLdr	Lloh320, Lloh321, Lloh322
	.loh AdrpAdd	Lloh328, Lloh329
	.loh AdrpLdrGotLdr	Lloh325, Lloh326, Lloh327
	.loh AdrpAdd	Lloh333, Lloh334
	.loh AdrpLdrGotLdr	Lloh330, Lloh331, Lloh332
	.loh AdrpAdd	Lloh338, Lloh339
	.loh AdrpLdrGotLdr	Lloh335, Lloh336, Lloh337
	.loh AdrpAdd	Lloh343, Lloh344
	.loh AdrpLdrGotLdr	Lloh340, Lloh341, Lloh342
	.loh AdrpAdd	Lloh348, Lloh349
	.loh AdrpLdrGotLdr	Lloh345, Lloh346, Lloh347
	.loh AdrpAdd	Lloh353, Lloh354
	.loh AdrpLdrGotLdr	Lloh350, Lloh351, Lloh352
Lfunc_end0:
	.cfi_endproc

	.p2align	2
_qgemm_lut_t4_int8_m8192_k14336_n1_b2_compute_:
Lfunc_begin1:
	.loc	1 0 0
	.cfi_startproc
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Ltmp337:
	stp	x0, x1, [sp]
	stp	x2, x3, [sp, #16]
	stp	x4, x5, [sp, #32]
Lloh355:
	adrp	x8, ___TVMBackendParallelLaunch@GOTPAGE
Lloh356:
	ldr	x8, [x8, ___TVMBackendParallelLaunch@GOTPAGEOFF]
Lloh357:
	ldr	x8, [x8]
Lloh358:
	adrp	x0, l___tvm_parallel_lambda@PAGE
Ltmp338:
Lloh359:
	add	x0, x0, l___tvm_parallel_lambda@PAGEOFF
	mov	x1, sp
Ltmp339:
	mov	w2, #0
Ltmp340:
	blr	x8
Ltmp341:
	ldp	x29, x30, [sp, #48]
	add	sp, sp, #64
	ret
Ltmp342:
	.loh AdrpAdd	Lloh358, Lloh359
	.loh AdrpLdrGotLdr	Lloh355, Lloh356, Lloh357
Lfunc_end1:
	.cfi_endproc

	.p2align	2
l___tvm_parallel_lambda:
Lfunc_begin2:
	.cfi_startproc
	ldr	w8, [x1, #8]
	add	w9, w8, #31
	sdiv	w8, w9, w8
	mul	w12, w8, w0
	mov	w14, #32
	cmp	w12, #32
	csel	w13, w12, w14, lt
	add	w8, w8, w12
	cmp	w8, #32
	csel	w15, w8, w14, lt
	cmp	w13, w15
	b.ge	LBB2_8
	stp	d15, d14, [sp, #-80]!
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	stp	x28, x27, [sp, #64]
	sub	sp, sp, #560
	.cfi_def_cfa_offset 640
	.cfi_offset w27, -8
	.cfi_offset w28, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	.cfi_offset b10, -40
	.cfi_offset b11, -48
	.cfi_offset b12, -56
	.cfi_offset b13, -64
	.cfi_offset b14, -72
	.cfi_offset b15, -80
	ldp	x8, x16, [x2]
	ldp	x17, x9, [x2, #16]
	ldp	x10, x11, [x2, #32]
	cmp	w12, #32
	csel	w0, w12, w14, lt
	sxtw	x12, w0
	add	w14, w15, w0
	sub	w13, w14, w13
	mov	w14, #458752
	smaddl	x14, w0, w14, x16
	add	x14, x14, #128
	mov	w15, #57344
	smaddl	x15, w0, w15, x17
	add	x15, x15, #48
	movi.16b	v1, #15
	add	x16, sp, #48
LBB2_2:
	mov	x17, #0
	mov	x0, #0
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [sp, #528]
	stp	q0, q0, [sp, #496]
	stp	q0, q0, [sp, #464]
	stp	q0, q0, [sp, #432]
	stp	q0, q0, [sp, #400]
	stp	q0, q0, [sp, #368]
	stp	q0, q0, [sp, #336]
	stp	q0, q0, [sp, #304]
	stp	q0, q0, [sp, #272]
	stp	q0, q0, [sp, #240]
	stp	q0, q0, [sp, #208]
	stp	q0, q0, [sp, #176]
	stp	q0, q0, [sp, #144]
	stp	q0, q0, [sp, #112]
	stp	q0, q0, [sp, #80]
	mov	x1, x14
	stp	q0, q0, [sp, #48]
LBB2_3:
	mov	x2, #0
	lsl	x4, x0, #1
	ldr	h0, [x10, x4]
	lsr	x3, x17, #8
	add	x3, x15, x3, lsl #9
	add	x5, x8, x0, lsl #8
	add	x4, x9, x4
	ldp	q3, q2, [x5]
	stp	q2, q3, [sp, #16]
	ldp	q2, q6, [x5, #32]
	str	q2, [sp]
	ldp	q7, q16, [x5, #64]
	ldp	q17, q18, [x5, #96]
	ldp	q19, q20, [x5, #128]
	ldp	q21, q22, [x5, #160]
	ldp	q23, q24, [x5, #192]
	ld1r.8h	{ v25 }, [x4]
	dup.8h	v26, v0[0]
	ldp	q27, q28, [x5, #224]
	fadd	h0, h0, h0
	mov	x4, #-16
	mov	x5, x1
	dup.8h	v29, v0[0]
LBB2_4:
	ldp	q0, q2, [x5, #-128]
	ushr.16b	v30, v0, #4
	and.16b	v0, v0, v1
	ldr	q3, [sp, #32]
	tbl.16b	v0, { v3 }, v0
	tbl.16b	v30, { v3 }, v30
	ushr.16b	v31, v2, #4
	ldr	q3, [sp, #16]
	tbl.16b	v31, { v3 }, v31
	and.16b	v2, v2, v1
	tbl.16b	v2, { v3 }, v2
	ldp	q8, q10, [x5, #-96]
	saddl.8h	v9, v2, v0
	ushr.16b	v11, v8, #4
	and.16b	v8, v8, v1
	ldr	q3, [sp]
	tbl.16b	v12, { v3 }, v8
	tbl.16b	v8, { v3 }, v11
	saddl2.8h	v0, v2, v0
	and.16b	v2, v10, v1
	tbl.16b	v2, { v6 }, v2
	saddw.8h	v11, v9, v12
	saddw2.8h	v0, v0, v12
	ushr.16b	v9, v10, #4
	saddw.8h	v12, v11, v2
	ldp	q10, q11, [x5, #-64]
	and.16b	v13, v10, v1
	tbl.16b	v13, { v7 }, v13
	and.16b	v14, v11, v1
	saddw2.8h	v0, v0, v2
	tbl.16b	v2, { v16 }, v14
	saddw.8h	v12, v12, v13
	saddw.8h	v14, v12, v2
	saddw2.8h	v0, v0, v13
	ldp	q12, q13, [x5, #-32]
	saddw2.8h	v0, v0, v2
	and.16b	v2, v12, v1
	tbl.16b	v2, { v17 }, v2
	and.16b	v15, v13, v1
	tbl.16b	v3, { v18 }, v15
	saddw.8h	v14, v14, v2
	saddw.8h	v4, v14, v3
	saddw2.8h	v0, v0, v2
	ldp	q15, q14, [x5]
	and.16b	v2, v15, v1
	saddw2.8h	v0, v0, v3
	tbl.16b	v2, { v19 }, v2
	and.16b	v3, v14, v1
	tbl.16b	v3, { v20 }, v3
	saddw.8h	v4, v4, v2
	saddw2.8h	v0, v0, v2
	saddw.8h	v4, v4, v3
	saddw2.8h	v3, v0, v3
	ldp	q0, q2, [x5, #32]
	and.16b	v5, v0, v1
	tbl.16b	v5, { v21 }, v5
	saddw.8h	v4, v4, v5
	saddw2.8h	v3, v3, v5
	and.16b	v5, v2, v1
	tbl.16b	v5, { v22 }, v5
	saddw.8h	v4, v4, v5
	saddw2.8h	v3, v3, v5
	saddl2.8h	v5, v31, v30
	saddw2.8h	v5, v5, v8
	saddl.8h	v30, v31, v30
	saddw.8h	v30, v30, v8
	ldp	q31, q8, [x5, #64]
	tbl.16b	v9, { v6 }, v9
	saddw2.8h	v5, v5, v9
	saddw.8h	v30, v30, v9
	and.16b	v9, v31, v1
	tbl.16b	v9, { v23 }, v9
	saddw.8h	v4, v4, v9
	saddw2.8h	v3, v3, v9
	ushr.16b	v9, v10, #4
	tbl.16b	v9, { v7 }, v9
	saddw2.8h	v5, v5, v9
	saddw.8h	v30, v30, v9
	ushr.16b	v9, v11, #4
	tbl.16b	v9, { v16 }, v9
	saddw2.8h	v5, v5, v9
	saddw.8h	v30, v30, v9
	and.16b	v9, v8, v1
	tbl.16b	v9, { v24 }, v9
	saddw.8h	v4, v4, v9
	saddw2.8h	v3, v3, v9
	ushr.16b	v9, v12, #4
	tbl.16b	v9, { v17 }, v9
	ushr.16b	v10, v13, #4
	tbl.16b	v10, { v18 }, v10
	ushr.16b	v11, v15, #4
	saddw2.8h	v5, v5, v9
	saddw2.8h	v5, v5, v10
	saddw.8h	v30, v30, v9
	saddw.8h	v30, v30, v10
	ldp	q9, q10, [x5, #96]
	tbl.16b	v11, { v19 }, v11
	saddw2.8h	v5, v5, v11
	saddw.8h	v30, v30, v11
	and.16b	v11, v9, v1
	tbl.16b	v11, { v27 }, v11
	saddw.8h	v4, v4, v11
	saddw2.8h	v3, v3, v11
	ushr.16b	v11, v14, #4
	tbl.16b	v11, { v20 }, v11
	saddw2.8h	v5, v5, v11
	saddw.8h	v30, v30, v11
	ushr.16b	v0, v0, #4
	tbl.16b	v0, { v21 }, v0
	saddw2.8h	v5, v5, v0
	saddw.8h	v0, v30, v0
	and.16b	v30, v10, v1
	tbl.16b	v30, { v28 }, v30
	saddw.8h	v4, v4, v30
	saddw2.8h	v3, v3, v30
	ushr.16b	v2, v2, #4
	tbl.16b	v2, { v22 }, v2
	saddw2.8h	v5, v5, v2
	saddw.8h	v0, v0, v2
	ushr.16b	v2, v31, #4
	tbl.16b	v2, { v23 }, v2
	ushr.16b	v30, v8, #4
	tbl.16b	v30, { v24 }, v30
	ushr.16b	v31, v9, #4
	tbl.16b	v31, { v27 }, v31
	ushr.16b	v8, v10, #4
	tbl.16b	v8, { v28 }, v8
	saddw2.8h	v5, v5, v2
	saddw2.8h	v5, v5, v30
	saddw2.8h	v5, v5, v31
	saddw.8h	v0, v0, v2
	saddw.8h	v0, v0, v30
	saddw2.8h	v2, v5, v8
	saddw.8h	v0, v0, v31
	saddw.8h	v0, v0, v8
	scvtf.8h	v4, v4
	scvtf.8h	v3, v3
	mov.16b	v5, v26
	scvtf.8h	v0, v0
	fmla.8h	v5, v25, v4
	mov.16b	v4, v26
	add	x6, x3, x2
	add	x7, x16, x2
	fmla.8h	v4, v25, v0
	ldp	q30, q0, [x7]
	ldp	q31, q8, [x6, #-48]
	fmla.8h	v30, v31, v5
	ldur	q5, [x6, #-16]
	fmul.8h	v3, v25, v3
	fmla.8h	v0, v31, v3
	ldp	q3, q31, [x7, #32]
	fmla.8h	v3, v5, v4
	scvtf.8h	v2, v2
	fmul.8h	v2, v25, v2
	fmla.8h	v31, v5, v2
	fmla.8h	v30, v29, v8
	ldr	q2, [x6]
	fmla.8h	v3, v29, v2
	stp	q30, q0, [x7]
	stp	q3, q31, [x7, #32]
	add	x4, x4, #16
	add	x5, x5, #256
	add	x2, x2, #64
	cmp	x4, #112
	b.lo	LBB2_4
	add	x0, x0, #1
	add	x1, x1, #2048
	add	x17, x17, #128
	cmp	x0, #224
	b.ne	LBB2_3
	ldp	q0, q2, [sp, #48]
	fcvtl	v4.4s, v0.4h
	fcvtl2	v0.4s, v0.8h
	fcvtl	v5.4s, v2.4h
	fcvtl2	v3.4s, v2.8h
	movi.4s	v13, #63, lsl #24
	fmla.4s	v3, v13, v0
	fmla.4s	v5, v13, v4
	fcvtn	v4.4h, v5.4s
	sxtw	x0, w12
	lsl	w17, w12, #7
	add	x17, x11, w17, sxtw #1
	str	h4, [x17]
	add	x0, x11, x0, lsl #8
	add	x0, x0, #2
	st1.h	{ v4 }[1], [x0]
	add	x0, x17, #4
	st1.h	{ v4 }[2], [x0]
	add	x0, x17, #6
	st1.h	{ v4 }[3], [x0]
	fcvtn2	v4.8h, v3.4s
	fcvtn	v0.4h, v3.4s
	ldp	q2, q3, [sp, #80]
	fcvtl	v5.4s, v2.4h
	fcvtl2	v2.4s, v2.8h
	fcvtl	v6.4s, v3.4h
	fcvtl2	v7.4s, v3.8h
	fmla.4s	v7, v13, v2
	fmla.4s	v6, v13, v5
	fcvtn	v2.4h, v6.4s
	fcvtn	v3.4h, v7.4s
	ext.8b	v3, v2, v3, #2
	fcvtn2	v2.8h, v7.4s
	ldp	q5, q6, [sp, #112]
	fcvtl	v7.4s, v5.4h
	fcvtl2	v5.4s, v5.8h
	fcvtl	v16.4s, v6.4h
	fcvtl2	v17.4s, v6.8h
	fmla.4s	v17, v13, v5
	fmla.4s	v16, v13, v7
	fcvtn	v5.4h, v16.4s
	fcvtn	v6.4h, v17.4s
	ext.8b	v6, v5, v6, #2
	fcvtn2	v5.8h, v17.4s
	ldp	q7, q16, [sp, #144]
	fcvtl	v17.4s, v7.4h
	fcvtl2	v7.4s, v7.8h
	fcvtl	v18.4s, v16.4h
	fcvtl2	v19.4s, v16.8h
	fmla.4s	v19, v13, v7
	fmla.4s	v18, v13, v17
	fcvtn	v7.4h, v18.4s
	fcvtn	v16.4h, v19.4s
	ext.8b	v16, v7, v16, #2
	fcvtn2	v7.8h, v19.4s
	ldp	q17, q18, [sp, #176]
	fcvtl	v19.4s, v17.4h
	fcvtl2	v17.4s, v17.8h
	fcvtl	v20.4s, v18.4h
	fcvtl2	v18.4s, v18.8h
	fmla.4s	v18, v13, v17
	fmla.4s	v20, v13, v19
	fcvtn	v17.4h, v20.4s
	fcvtn	v19.4h, v18.4s
	ext.8b	v19, v17, v19, #2
	fcvtn2	v17.8h, v18.4s
	ldp	q18, q20, [sp, #208]
	fcvtl	v21.4s, v18.4h
	fcvtl2	v18.4s, v18.8h
	fcvtl	v22.4s, v20.4h
	fcvtl2	v20.4s, v20.8h
	fmla.4s	v20, v13, v18
	fmla.4s	v22, v13, v21
	fcvtn	v18.4h, v22.4s
	fcvtn	v21.4h, v20.4s
	ext.8b	v21, v18, v21, #2
	fcvtn2	v18.8h, v20.4s
	ldp	q20, q22, [sp, #240]
	fcvtl	v23.4s, v20.4h
	fcvtl2	v20.4s, v20.8h
	fcvtl	v24.4s, v22.4h
	fcvtl2	v22.4s, v22.8h
	fmla.4s	v22, v13, v20
	fmla.4s	v24, v13, v23
	fcvtn	v20.4h, v24.4s
	fcvtn	v23.4h, v22.4s
	ext.8b	v23, v20, v23, #2
	fcvtn2	v20.8h, v22.4s
	ldp	q22, q24, [sp, #272]
	fcvtl	v25.4s, v22.4h
	fcvtl2	v22.4s, v22.8h
	fcvtl	v26.4s, v24.4h
	fcvtl2	v24.4s, v24.8h
	fmla.4s	v24, v13, v22
	fmla.4s	v26, v13, v25
	ldp	q22, q25, [sp, #304]
	fcvtl2	v27.4s, v22.8h
	fcvtl	v22.4s, v22.4h
	fcvtl2	v28.4s, v25.8h
	fcvtl	v25.4s, v25.4h
	fmla.4s	v25, v13, v22
	fmla.4s	v28, v13, v27
	ldp	q22, q27, [sp, #336]
	fcvtl2	v29.4s, v22.8h
	fcvtl	v22.4s, v22.4h
	fcvtl2	v30.4s, v27.8h
	fcvtl	v27.4s, v27.4h
	fmla.4s	v27, v13, v22
	fmla.4s	v30, v13, v29
	ldp	q22, q29, [sp, #368]
	fcvtl2	v31.4s, v22.8h
	fcvtl	v22.4s, v22.4h
	fcvtl2	v8.4s, v29.8h
	fcvtl	v29.4s, v29.4h
	fmla.4s	v29, v13, v22
	fmla.4s	v8, v13, v31
	ldp	q22, q31, [sp, #400]
	fcvtl2	v9.4s, v22.8h
	fcvtl	v22.4s, v22.4h
	fcvtl2	v10.4s, v31.8h
	fcvtl	v31.4s, v31.4h
	fmla.4s	v31, v13, v22
	fmla.4s	v10, v13, v9
	ldp	q22, q9, [sp, #432]
	fcvtl2	v11.4s, v22.8h
	fcvtl	v22.4s, v22.4h
	fcvtl2	v12.4s, v9.8h
	fcvtl	v9.4s, v9.4h
	fmla.4s	v9, v13, v22
	fmla.4s	v12, v13, v11
	ldp	q22, q11, [sp, #464]
	str	h0, [x17, #8]
	fcvtl2	v0.4s, v22.8h
	fcvtl	v22.4s, v22.4h
	ext.16b	v4, v4, v2, #10
	stur	d4, [x17, #10]
	fcvtl2	v4.4s, v11.8h
	fcvtl	v11.4s, v11.4h
	fmla.4s	v11, v13, v22
	fmla.4s	v4, v13, v0
	ldp	q0, q22, [sp, #496]
	stur	d3, [x17, #18]
	fcvtl2	v3.4s, v0.8h
	fcvtl	v0.4s, v0.4h
	ext.16b	v2, v2, v5, #10
	stur	d2, [x17, #26]
	fcvtl2	v2.4s, v22.8h
	fcvtl	v22.4s, v22.4h
	fmla.4s	v22, v13, v0
	fmla.4s	v2, v13, v3
	ldp	q0, q3, [sp, #528]
	stur	d6, [x17, #34]
	fcvtl	v6.4s, v0.4h
	ext.16b	v5, v5, v7, #10
	stur	d5, [x17, #42]
	fcvtl	v5.4s, v3.4h
	fmla.4s	v5, v13, v6
	stur	d16, [x17, #50]
	ext.16b	v6, v7, v17, #10
	stur	d6, [x17, #58]
	stur	d19, [x17, #66]
	ext.16b	v6, v17, v18, #10
	stur	d6, [x17, #74]
	stur	d21, [x17, #82]
	ext.16b	v6, v18, v20, #10
	stur	d6, [x17, #90]
	stur	d23, [x17, #98]
	fcvtn	v6.4h, v26.4s
	add	x0, x17, #114
	st1.h	{ v6 }[1], [x0]
	add	x0, x17, #116
	st1.h	{ v6 }[2], [x0]
	add	x0, x17, #118
	st1.h	{ v6 }[3], [x0]
	fcvtn2	v6.8h, v24.4s
	ext.16b	v6, v20, v6, #10
	stur	d6, [x17, #106]
	fcvtn	v6.4h, v24.4s
	fcvtn2	v6.8h, v25.4s
	stur	q6, [x17, #120]
	fcvtn	v6.4h, v28.4s
	fcvtn2	v6.8h, v27.4s
	stur	q6, [x17, #136]
	fcvtn	v6.4h, v30.4s
	fcvtn2	v6.8h, v29.4s
	stur	q6, [x17, #152]
	fcvtn	v6.4h, v8.4s
	fcvtn2	v6.8h, v31.4s
	stur	q6, [x17, #168]
	fcvtn	v6.4h, v10.4s
	fcvtn2	v6.8h, v9.4s
	stur	q6, [x17, #184]
	fcvtn	v6.4h, v12.4s
	fcvtn2	v6.8h, v11.4s
	stur	q6, [x17, #200]
	fcvtn	v4.4h, v4.4s
	fcvtn2	v4.8h, v22.4s
	stur	q4, [x17, #216]
	fcvtn	v2.4h, v2.4s
	fcvtn2	v2.8h, v5.4s
	stur	q2, [x17, #232]
	fcvtl2	v0.4s, v0.8h
	fcvtl2	v2.4s, v3.8h
	fmla.4s	v2, v13, v0
	fcvtn	v0.4h, v2.4s
	str	d0, [x17, #248]
	add	x12, x12, #1
	add	x14, x14, #112, lsl #12
	add	x15, x15, #14, lsl #12
	cmp	w13, w12
	b.ne	LBB2_2
	add	sp, sp, #560
	ldp	x28, x27, [sp, #64]
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	ldp	d15, d14, [sp], #80
LBB2_8:
	mov	w0, #0
	ret
Lfunc_end2:
	.cfi_endproc

	.globl	___truncsfhf2
	.weak_definition	___truncsfhf2
	.p2align	2
___truncsfhf2:
Lfunc_begin3:
	.cfi_startproc
	fmov	w8, s0
	and	w9, w8, #0x7fffffff
	mov	w10, #-947912704
	add	w10, w9, w10
	mov	w11, #-1199570944
	add	w11, w9, w11
	cmp	w10, w11
	b.hs	LBB3_2
	mov	w9, #16384
	movk	w9, #65534, lsl #16
	ubfx	w10, w8, #13, #16
	sub	w11, w10, #28, lsl #12
	and	w12, w8, #0x1fff
	ubfx	w13, w8, #13, #1
	add	w13, w13, w11, uxth
	cmp	w12, #1, lsl #12
	csel	w11, w11, w13, ne
	add	w9, w9, w10
	cmp	w12, #1, lsl #12
	csinc	w9, w11, w9, ls
	lsr	w8, w8, #31
	orr	w0, w9, w8, lsl #15
	ret
LBB3_2:
	mov	w10, #1
	movk	w10, #32640, lsl #16
	cmp	w9, w10
	b.lo	LBB3_4
	mov	w9, #32256
	bfxil	w9, w8, #13, #9
	lsr	w8, w8, #31
	orr	w0, w9, w8, lsl #15
	ret
LBB3_4:
	lsr	w10, w9, #23
	cmp	w10, #142
	b.ls	LBB3_6
	mov	w9, #31744
	lsr	w8, w8, #31
	orr	w0, w9, w8, lsl #15
	ret
LBB3_6:
	lsr	w9, w9, #24
	cmp	w9, #45
	b.hs	LBB3_8
	mov	w9, #0
	lsr	w8, w8, #31
	orr	w0, w9, w8, lsl #15
	ret
LBB3_8:
	mov	w9, #113
	sub	w9, w9, w10
	mov	w11, #8388608
	bfxil	w11, w8, #0, #23
	sub	w10, w10, #81
	lsl	w10, w11, w10
	cmp	w10, #0
	cset	w10, ne
	lsr	w9, w11, w9
	lsr	w11, w9, #13
	and	w12, w9, #0x1fff
	orr	w10, w12, w10
	ubfx	w9, w9, #13, #1
	add	w9, w9, w11
	cmp	w10, #1, lsl #12
	csel	w9, w11, w9, ne
	cmp	w10, #1, lsl #12
	csinc	w9, w9, w11, ls
	lsr	w8, w8, #31
	orr	w0, w9, w8, lsl #15
	ret
Lfunc_end3:
	.cfi_endproc

	.globl	___extendhfsf2
	.weak_definition	___extendhfsf2
	.p2align	2
___extendhfsf2:
Lfunc_begin4:
	.cfi_startproc
	and	w8, w0, #0xffff
	and	w9, w0, #0x7fff
	sub	w10, w9, #1024
	lsr	w10, w10, #11
	cmp	w10, #14
	b.hi	LBB4_3
	mov	w10, #939524096
	add	w9, w10, w9, lsl #13
LBB4_2:
	and	w8, w8, #0x8000
	orr	w8, w9, w8, lsl #16
	fmov	s0, w8
	ret
LBB4_3:
	lsr	w10, w9, #10
	cmp	w10, #31
	b.lo	LBB4_5
	lsl	w9, w9, #13
	orr	w9, w9, #0x7f800000
	and	w8, w8, #0x8000
	orr	w8, w9, w8, lsl #16
	fmov	s0, w8
	ret
LBB4_5:
	cbz	w9, LBB4_2
	lsr	w10, w9, #8
	cmp	w9, #256
	csel	w10, w9, w10, lo
	mov	w11, #24
	mov	w12, #32
	csel	w11, w12, w11, lo
	lsr	w12, w10, #4
	sub	w13, w11, #4
	cmp	w10, #16
	csel	w10, w10, w12, lo
	csel	w11, w11, w13, lo
	lsr	w12, w10, #2
	sub	w13, w11, #2
	cmp	w10, #4
	csel	w10, w10, w12, lo
	csel	w11, w11, w13, lo
	cmp	w10, #2
	mov	w12, #-2
	csneg	w10, w12, w10, hs
	add	w10, w10, w11
	sub	w11, w10, #8
	lsl	w9, w9, w11
	eor	w9, w9, #0x800000
	mov	w11, #1124073472
	sub	w10, w11, w10, lsl #23
	orr	w9, w9, w10
	and	w8, w8, #0x8000
	orr	w8, w9, w8, lsl #16
	fmov	s0, w8
	ret
Lfunc_end4:
	.cfi_endproc

	.section	__DATA,__data
	.globl	___TVMAPISetLastError
	.weak_definition	___TVMAPISetLastError
	.p2align	3, 0x0
___TVMAPISetLastError:
	.quad	0

	.globl	___TVMBackendParallelLaunch
	.weak_definition	___TVMBackendParallelLaunch
	.p2align	3, 0x0
___TVMBackendParallelLaunch:
	.quad	0

	.section	__TEXT,__const
l_.str:
	.asciz	"Assert fail: num_args == 6, qgemm_lut_t4_int8_m8192_k14336_n1_b2: num_args should be 6"

l_.str.1:
	.asciz	"Assert fail: not T.isnullptr(args), qgemm_lut_t4_int8_m8192_k14336_n1_b2: TVMValue* arg pointer was NULL"

l_.str.2:
	.asciz	"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t4_int8_m8192_k14336_n1_b2: int* type_codes was NULL"

l_.str.3:
	.asciz	"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[0] to be pointer"

l_.str.4:
	.asciz	"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[1] to be pointer"

l_.str.5:
	.asciz	"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[2] to be pointer"

l_.str.6:
	.asciz	"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[3] to be pointer"

l_.str.7:
	.asciz	"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[4] to be pointer"

l_.str.8:
	.asciz	"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t4_int8_m8192_k14336_n1_b2: Expect arg[5] to be pointer"

l_.str.9:
	.asciz	"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A is expected to have non-NULL DLTensor* pointer"

l_.str.10:
	.asciz	"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.ndim is expected to equal 3"

l_.str.11:
	.asciz	"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT is expected to have non-NULL DLTensor* pointer"

l_.str.12:
	.asciz	"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.ndim is expected to equal 3"

l_.str.13:
	.asciz	"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales is expected to have non-NULL DLTensor* pointer"

l_.str.14:
	.asciz	"Assert fail: 3 == T.tvm_struct_get(Scales, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.ndim is expected to equal 3"

l_.str.15:
	.asciz	"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer"

l_.str.16:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.ndim is expected to equal 2"

l_.str.17:
	.asciz	"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer"

l_.str.18:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.ndim is expected to equal 2"

l_.str.19:
	.asciz	"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C is expected to have non-NULL DLTensor* pointer"

l_.str.20:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.ndim is expected to equal 2"

l_.str.21:
	.asciz	"Assert fail: T.tvm_struct_get(A, 0, 5, \"uint8\") == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \"uint8\") == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.dtype is expected to be uint8"

l_.str.22:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[0]) == 32, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape[0] has an unsatisfied constraint: 32 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[0])"

l_.str.23:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[1]) == 3584, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape[1] has an unsatisfied constraint: 3584 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[1])"

l_.str.24:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[2]) == 128, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape[2] has an unsatisfied constraint: 128 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_shape[2])"

l_.str.25:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_strides[2]) and 128 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_strides[1]) and 458752 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_A_strides[0]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides: expected to be compact array"

l_.str.26:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \"uint64\")"

l_.str.27:
	.asciz	"Assert fail: T.tvm_struct_get(A, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \"int32\")"

l_.str.28:
	.asciz	"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m8192_k14336_n1_b2.A is expected to have non-NULL data pointer"

l_.str.29:
	.asciz	"Assert fail: T.tvm_struct_get(LUT, 0, 5, \"uint8\") == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \"uint8\") == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.dtype is expected to be int8"

l_.str.30:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[0])"

l_.str.31:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[1]) == 3584, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape[1] has an unsatisfied constraint: 3584 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[1])"

l_.str.32:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_shape[2])"

l_.str.33:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_strides[2]) and 16 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_strides[1]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides: expected to be compact array"

l_.str.34:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \"uint64\")"

l_.str.35:
	.asciz	"Assert fail: T.tvm_struct_get(LUT, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \"int32\")"

l_.str.36:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \"int32\")"

l_.str.37:
	.asciz	"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT is expected to have non-NULL data pointer"

l_.str.38:
	.asciz	"Assert fail: T.tvm_struct_get(Scales, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.dtype is expected to be float16"

l_.str.39:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[0]) == 32, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape[0] has an unsatisfied constraint: 32 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[0])"

l_.str.40:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[1]) == 112, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape[1] has an unsatisfied constraint: 112 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[1])"

l_.str.41:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[2]) == 256, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape[2] has an unsatisfied constraint: 256 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_shape[2])"

l_.str.42:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_strides[2]) and 256 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_strides[1]) and 28672 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_Scales_strides[0]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides: expected to be compact array"

l_.str.43:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \"uint64\")"

l_.str.44:
	.asciz	"Assert fail: T.tvm_struct_get(Scales, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \"int32\")"

l_.str.45:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \"int32\")"

l_.str.46:
	.asciz	"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales is expected to have non-NULL data pointer"

l_.str.47:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.dtype is expected to be float16"

l_.str.48:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape[0])"

l_.str.49:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape[1]) == 224, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 224 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_shape[1])"

l_.str.50:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.strides: expected to be compact array"

l_.str.51:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \"uint64\")"

l_.str.52:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \"int32\")"

l_.str.53:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \"int32\")"

l_.str.54:
	.asciz	"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales is expected to have non-NULL data pointer"

l_.str.55:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.dtype is expected to be float16"

l_.str.56:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape[0])"

l_.str.57:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape[1]) == 224, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 224 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_shape[1])"

l_.str.58:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.strides: expected to be compact array"

l_.str.59:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \"uint64\")"

l_.str.60:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \"int32\")"

l_.str.61:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \"int32\")"

l_.str.62:
	.asciz	"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases is expected to have non-NULL data pointer"

l_.str.63:
	.asciz	"Assert fail: T.tvm_struct_get(C, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.dtype is expected to be float16"

l_.str.64:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_shape[0])"

l_.str.65:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_shape[1]) == 4096, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape[1] has an unsatisfied constraint: 4096 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_shape[1])"

l_.str.66:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k14336_n1_b2_C_strides[1]), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.strides: expected to be compact array"

l_.str.67:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \"uint64\")"

l_.str.68:
	.asciz	"Assert fail: T.tvm_struct_get(C, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \"int32\")"

l_.str.69:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \"int32\")"

l_.str.70:
	.asciz	"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m8192_k14336_n1_b2.C is expected to have non-NULL data pointer"

	.globl	___tvm_main__
	.weak_definition	___tvm_main__
___tvm_main__:
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2"

	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp57-Lfunc_begin0
	.quad	Lset1
	.short	1
	.byte	80
.set Lset2, Ltmp57-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp143-Lfunc_begin0
	.quad	Lset3
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset4, Ltmp143-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp144-Lfunc_begin0
	.quad	Lset5
	.short	1
	.byte	80
.set Lset6, Ltmp144-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp145-Lfunc_begin0
	.quad	Lset7
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset8, Ltmp145-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp146-Lfunc_begin0
	.quad	Lset9
	.short	1
	.byte	80
.set Lset10, Ltmp146-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp147-Lfunc_begin0
	.quad	Lset11
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset12, Ltmp147-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp148-Lfunc_begin0
	.quad	Lset13
	.short	1
	.byte	80
.set Lset14, Ltmp148-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp149-Lfunc_begin0
	.quad	Lset15
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset16, Ltmp149-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp150-Lfunc_begin0
	.quad	Lset17
	.short	1
	.byte	80
.set Lset18, Ltmp150-Lfunc_begin0
	.quad	Lset18
.set Lset19, Ltmp151-Lfunc_begin0
	.quad	Lset19
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset20, Ltmp151-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp152-Lfunc_begin0
	.quad	Lset21
	.short	1
	.byte	80
.set Lset22, Ltmp152-Lfunc_begin0
	.quad	Lset22
.set Lset23, Ltmp153-Lfunc_begin0
	.quad	Lset23
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset24, Ltmp153-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp154-Lfunc_begin0
	.quad	Lset25
	.short	1
	.byte	80
.set Lset26, Ltmp154-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp156-Lfunc_begin0
	.quad	Lset27
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset28, Ltmp156-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp157-Lfunc_begin0
	.quad	Lset29
	.short	1
	.byte	80
.set Lset30, Ltmp157-Lfunc_begin0
	.quad	Lset30
.set Lset31, Ltmp158-Lfunc_begin0
	.quad	Lset31
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset32, Ltmp158-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp159-Lfunc_begin0
	.quad	Lset33
	.short	1
	.byte	80
.set Lset34, Ltmp159-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp160-Lfunc_begin0
	.quad	Lset35
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset36, Ltmp160-Lfunc_begin0
	.quad	Lset36
.set Lset37, Ltmp161-Lfunc_begin0
	.quad	Lset37
	.short	1
	.byte	80
.set Lset38, Ltmp161-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp162-Lfunc_begin0
	.quad	Lset39
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset40, Ltmp162-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp163-Lfunc_begin0
	.quad	Lset41
	.short	1
	.byte	80
.set Lset42, Ltmp163-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp164-Lfunc_begin0
	.quad	Lset43
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset44, Ltmp164-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp165-Lfunc_begin0
	.quad	Lset45
	.short	1
	.byte	80
.set Lset46, Ltmp165-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp166-Lfunc_begin0
	.quad	Lset47
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset48, Ltmp166-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp167-Lfunc_begin0
	.quad	Lset49
	.short	1
	.byte	80
.set Lset50, Ltmp167-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp168-Lfunc_begin0
	.quad	Lset51
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset52, Ltmp168-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp169-Lfunc_begin0
	.quad	Lset53
	.short	1
	.byte	80
.set Lset54, Ltmp169-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp170-Lfunc_begin0
	.quad	Lset55
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset56, Ltmp170-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp171-Lfunc_begin0
	.quad	Lset57
	.short	1
	.byte	80
.set Lset58, Ltmp171-Lfunc_begin0
	.quad	Lset58
.set Lset59, Ltmp172-Lfunc_begin0
	.quad	Lset59
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset60, Ltmp172-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp173-Lfunc_begin0
	.quad	Lset61
	.short	1
	.byte	80
.set Lset62, Ltmp173-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp174-Lfunc_begin0
	.quad	Lset63
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset64, Ltmp174-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp175-Lfunc_begin0
	.quad	Lset65
	.short	1
	.byte	80
.set Lset66, Ltmp175-Lfunc_begin0
	.quad	Lset66
.set Lset67, Ltmp176-Lfunc_begin0
	.quad	Lset67
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset68, Ltmp176-Lfunc_begin0
	.quad	Lset68
.set Lset69, Ltmp177-Lfunc_begin0
	.quad	Lset69
	.short	1
	.byte	80
.set Lset70, Ltmp177-Lfunc_begin0
	.quad	Lset70
.set Lset71, Ltmp178-Lfunc_begin0
	.quad	Lset71
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset72, Ltmp178-Lfunc_begin0
	.quad	Lset72
.set Lset73, Ltmp179-Lfunc_begin0
	.quad	Lset73
	.short	1
	.byte	80
.set Lset74, Ltmp179-Lfunc_begin0
	.quad	Lset74
.set Lset75, Ltmp180-Lfunc_begin0
	.quad	Lset75
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset76, Ltmp180-Lfunc_begin0
	.quad	Lset76
.set Lset77, Ltmp181-Lfunc_begin0
	.quad	Lset77
	.short	1
	.byte	80
.set Lset78, Ltmp181-Lfunc_begin0
	.quad	Lset78
.set Lset79, Ltmp182-Lfunc_begin0
	.quad	Lset79
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset80, Ltmp182-Lfunc_begin0
	.quad	Lset80
.set Lset81, Ltmp184-Lfunc_begin0
	.quad	Lset81
	.short	1
	.byte	80
.set Lset82, Ltmp184-Lfunc_begin0
	.quad	Lset82
.set Lset83, Ltmp185-Lfunc_begin0
	.quad	Lset83
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset84, Ltmp185-Lfunc_begin0
	.quad	Lset84
.set Lset85, Ltmp187-Lfunc_begin0
	.quad	Lset85
	.short	1
	.byte	80
.set Lset86, Ltmp187-Lfunc_begin0
	.quad	Lset86
.set Lset87, Ltmp188-Lfunc_begin0
	.quad	Lset87
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset88, Ltmp188-Lfunc_begin0
	.quad	Lset88
.set Lset89, Ltmp190-Lfunc_begin0
	.quad	Lset89
	.short	1
	.byte	80
.set Lset90, Ltmp190-Lfunc_begin0
	.quad	Lset90
.set Lset91, Ltmp191-Lfunc_begin0
	.quad	Lset91
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset92, Ltmp191-Lfunc_begin0
	.quad	Lset92
.set Lset93, Ltmp193-Lfunc_begin0
	.quad	Lset93
	.short	1
	.byte	80
.set Lset94, Ltmp193-Lfunc_begin0
	.quad	Lset94
.set Lset95, Ltmp194-Lfunc_begin0
	.quad	Lset95
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset96, Ltmp194-Lfunc_begin0
	.quad	Lset96
.set Lset97, Ltmp196-Lfunc_begin0
	.quad	Lset97
	.short	1
	.byte	80
.set Lset98, Ltmp196-Lfunc_begin0
	.quad	Lset98
.set Lset99, Ltmp197-Lfunc_begin0
	.quad	Lset99
	.short	3
	.byte	163
	.byte	1
	.byte	80
.set Lset100, Ltmp197-Lfunc_begin0
	.quad	Lset100
.set Lset101, Ltmp199-Lfunc_begin0
	.quad	Lset101
	.short	1
	.byte	80
.set Lset102, Ltmp199-Lfunc_begin0
	.quad	Lset102
.set Lset103, Lfunc_end0-Lfunc_begin0
	.quad	Lset103
	.short	3
	.byte	163
	.byte	1
	.byte	80
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset104, Lfunc_begin0-Lfunc_begin0
	.quad	Lset104
.set Lset105, Ltmp55-Lfunc_begin0
	.quad	Lset105
	.short	1
	.byte	81
.set Lset106, Ltmp55-Lfunc_begin0
	.quad	Lset106
.set Lset107, Ltmp143-Lfunc_begin0
	.quad	Lset107
	.short	3
	.byte	163
	.byte	1
	.byte	81
.set Lset108, Ltmp143-Lfunc_begin0
	.quad	Lset108
.set Lset109, Ltmp155-Lfunc_begin0
	.quad	Lset109
	.short	1
	.byte	81
.set Lset110, Ltmp156-Lfunc_begin0
	.quad	Lset110
.set Lset111, Ltmp200-Lfunc_begin0
	.quad	Lset111
	.short	1
	.byte	81
.set Lset112, Ltmp200-Lfunc_begin0
	.quad	Lset112
.set Lset113, Lfunc_end0-Lfunc_begin0
	.quad	Lset113
	.short	3
	.byte	163
	.byte	1
	.byte	81
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset114, Lfunc_begin0-Lfunc_begin0
	.quad	Lset114
.set Lset115, Ltmp59-Lfunc_begin0
	.quad	Lset115
	.short	1
	.byte	82
.set Lset116, Ltmp59-Lfunc_begin0
	.quad	Lset116
.set Lset117, Ltmp143-Lfunc_begin0
	.quad	Lset117
	.short	3
	.byte	163
	.byte	1
	.byte	82
.set Lset118, Ltmp143-Lfunc_begin0
	.quad	Lset118
.set Lset119, Ltmp155-Lfunc_begin0
	.quad	Lset119
	.short	1
	.byte	82
.set Lset120, Ltmp156-Lfunc_begin0
	.quad	Lset120
.set Lset121, Ltmp200-Lfunc_begin0
	.quad	Lset121
	.short	1
	.byte	82
.set Lset122, Ltmp200-Lfunc_begin0
	.quad	Lset122
.set Lset123, Lfunc_end0-Lfunc_begin0
	.quad	Lset123
	.short	3
	.byte	163
	.byte	1
	.byte	82
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset124, Lfunc_begin0-Lfunc_begin0
	.quad	Lset124
.set Lset125, Ltmp61-Lfunc_begin0
	.quad	Lset125
	.short	1
	.byte	83
.set Lset126, Ltmp61-Lfunc_begin0
	.quad	Lset126
.set Lset127, Ltmp143-Lfunc_begin0
	.quad	Lset127
	.short	3
	.byte	163
	.byte	1
	.byte	83
.set Lset128, Ltmp143-Lfunc_begin0
	.quad	Lset128
.set Lset129, Ltmp155-Lfunc_begin0
	.quad	Lset129
	.short	1
	.byte	83
.set Lset130, Ltmp156-Lfunc_begin0
	.quad	Lset130
.set Lset131, Ltmp200-Lfunc_begin0
	.quad	Lset131
	.short	1
	.byte	83
.set Lset132, Ltmp200-Lfunc_begin0
	.quad	Lset132
.set Lset133, Lfunc_end0-Lfunc_begin0
	.quad	Lset133
	.short	3
	.byte	163
	.byte	1
	.byte	83
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset134, Lfunc_begin0-Lfunc_begin0
	.quad	Lset134
.set Lset135, Ltmp63-Lfunc_begin0
	.quad	Lset135
	.short	1
	.byte	84
.set Lset136, Ltmp63-Lfunc_begin0
	.quad	Lset136
.set Lset137, Ltmp143-Lfunc_begin0
	.quad	Lset137
	.short	3
	.byte	163
	.byte	1
	.byte	84
.set Lset138, Ltmp143-Lfunc_begin0
	.quad	Lset138
.set Lset139, Ltmp155-Lfunc_begin0
	.quad	Lset139
	.short	1
	.byte	84
.set Lset140, Ltmp156-Lfunc_begin0
	.quad	Lset140
.set Lset141, Ltmp200-Lfunc_begin0
	.quad	Lset141
	.short	1
	.byte	84
.set Lset142, Ltmp200-Lfunc_begin0
	.quad	Lset142
.set Lset143, Lfunc_end0-Lfunc_begin0
	.quad	Lset143
	.short	3
	.byte	163
	.byte	1
	.byte	84
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset144, Lfunc_begin0-Lfunc_begin0
	.quad	Lset144
.set Lset145, Ltmp65-Lfunc_begin0
	.quad	Lset145
	.short	1
	.byte	85
.set Lset146, Ltmp65-Lfunc_begin0
	.quad	Lset146
.set Lset147, Ltmp143-Lfunc_begin0
	.quad	Lset147
	.short	3
	.byte	163
	.byte	1
	.byte	85
.set Lset148, Ltmp143-Lfunc_begin0
	.quad	Lset148
.set Lset149, Ltmp155-Lfunc_begin0
	.quad	Lset149
	.short	1
	.byte	85
.set Lset150, Ltmp156-Lfunc_begin0
	.quad	Lset150
.set Lset151, Ltmp200-Lfunc_begin0
	.quad	Lset151
	.short	1
	.byte	85
.set Lset152, Ltmp200-Lfunc_begin0
	.quad	Lset152
.set Lset153, Lfunc_end0-Lfunc_begin0
	.quad	Lset153
	.short	3
	.byte	163
	.byte	1
	.byte	85
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset154, Ltmp4-Lfunc_begin0
	.quad	Lset154
.set Lset155, Ltmp5-Lfunc_begin0
	.quad	Lset155
	.short	2
	.byte	120
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset156, Ltmp7-Lfunc_begin0
	.quad	Lset156
.set Lset157, Ltmp9-Lfunc_begin0
	.quad	Lset157
	.short	2
	.byte	120
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset158, Ltmp11-Lfunc_begin0
	.quad	Lset158
.set Lset159, Ltmp13-Lfunc_begin0
	.quad	Lset159
	.short	2
	.byte	120
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset160, Ltmp15-Lfunc_begin0
	.quad	Lset160
.set Lset161, Ltmp17-Lfunc_begin0
	.quad	Lset161
	.short	2
	.byte	120
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset162, Ltmp19-Lfunc_begin0
	.quad	Lset162
.set Lset163, Ltmp21-Lfunc_begin0
	.quad	Lset163
	.short	2
	.byte	120
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset164, Ltmp23-Lfunc_begin0
	.quad	Lset164
.set Lset165, Ltmp25-Lfunc_begin0
	.quad	Lset165
	.short	2
	.byte	120
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset166, Ltmp42-Lfunc_begin0
	.quad	Lset166
.set Lset167, Ltmp137-Lfunc_begin0
	.quad	Lset167
	.short	2
	.byte	120
	.byte	0
.set Lset168, Ltmp182-Lfunc_begin0
	.quad	Lset168
.set Lset169, Ltmp183-Lfunc_begin0
	.quad	Lset169
	.short	2
	.byte	120
	.byte	0
.set Lset170, Ltmp185-Lfunc_begin0
	.quad	Lset170
.set Lset171, Ltmp186-Lfunc_begin0
	.quad	Lset171
	.short	2
	.byte	120
	.byte	0
.set Lset172, Ltmp188-Lfunc_begin0
	.quad	Lset172
.set Lset173, Ltmp189-Lfunc_begin0
	.quad	Lset173
	.short	2
	.byte	120
	.byte	0
.set Lset174, Ltmp191-Lfunc_begin0
	.quad	Lset174
.set Lset175, Ltmp192-Lfunc_begin0
	.quad	Lset175
	.short	2
	.byte	120
	.byte	0
.set Lset176, Ltmp194-Lfunc_begin0
	.quad	Lset176
.set Lset177, Ltmp195-Lfunc_begin0
	.quad	Lset177
	.short	2
	.byte	120
	.byte	0
.set Lset178, Ltmp197-Lfunc_begin0
	.quad	Lset178
.set Lset179, Ltmp198-Lfunc_begin0
	.quad	Lset179
	.short	2
	.byte	120
	.byte	0
.set Lset180, Ltmp200-Lfunc_begin0
	.quad	Lset180
.set Lset181, Ltmp201-Lfunc_begin0
	.quad	Lset181
	.short	2
	.byte	120
	.byte	0
.set Lset182, Ltmp203-Lfunc_begin0
	.quad	Lset182
.set Lset183, Ltmp204-Lfunc_begin0
	.quad	Lset183
	.short	2
	.byte	120
	.byte	0
.set Lset184, Ltmp206-Lfunc_begin0
	.quad	Lset184
.set Lset185, Ltmp207-Lfunc_begin0
	.quad	Lset185
	.short	2
	.byte	120
	.byte	0
.set Lset186, Ltmp209-Lfunc_begin0
	.quad	Lset186
.set Lset187, Ltmp210-Lfunc_begin0
	.quad	Lset187
	.short	2
	.byte	120
	.byte	0
.set Lset188, Ltmp212-Lfunc_begin0
	.quad	Lset188
.set Lset189, Ltmp213-Lfunc_begin0
	.quad	Lset189
	.short	2
	.byte	120
	.byte	0
.set Lset190, Ltmp215-Lfunc_begin0
	.quad	Lset190
.set Lset191, Ltmp216-Lfunc_begin0
	.quad	Lset191
	.short	2
	.byte	120
	.byte	0
.set Lset192, Ltmp218-Lfunc_begin0
	.quad	Lset192
.set Lset193, Ltmp219-Lfunc_begin0
	.quad	Lset193
	.short	2
	.byte	120
	.byte	0
.set Lset194, Ltmp221-Lfunc_begin0
	.quad	Lset194
.set Lset195, Ltmp222-Lfunc_begin0
	.quad	Lset195
	.short	2
	.byte	120
	.byte	0
.set Lset196, Ltmp224-Lfunc_begin0
	.quad	Lset196
.set Lset197, Ltmp225-Lfunc_begin0
	.quad	Lset197
	.short	2
	.byte	120
	.byte	0
.set Lset198, Ltmp227-Lfunc_begin0
	.quad	Lset198
.set Lset199, Ltmp228-Lfunc_begin0
	.quad	Lset199
	.short	2
	.byte	120
	.byte	0
.set Lset200, Ltmp230-Lfunc_begin0
	.quad	Lset200
.set Lset201, Ltmp231-Lfunc_begin0
	.quad	Lset201
	.short	2
	.byte	120
	.byte	0
.set Lset202, Ltmp233-Lfunc_begin0
	.quad	Lset202
.set Lset203, Ltmp234-Lfunc_begin0
	.quad	Lset203
	.short	2
	.byte	120
	.byte	0
.set Lset204, Ltmp236-Lfunc_begin0
	.quad	Lset204
.set Lset205, Ltmp237-Lfunc_begin0
	.quad	Lset205
	.short	2
	.byte	120
	.byte	0
.set Lset206, Ltmp239-Lfunc_begin0
	.quad	Lset206
.set Lset207, Ltmp240-Lfunc_begin0
	.quad	Lset207
	.short	2
	.byte	120
	.byte	0
.set Lset208, Ltmp242-Lfunc_begin0
	.quad	Lset208
.set Lset209, Ltmp243-Lfunc_begin0
	.quad	Lset209
	.short	2
	.byte	120
	.byte	0
.set Lset210, Ltmp245-Lfunc_begin0
	.quad	Lset210
.set Lset211, Ltmp246-Lfunc_begin0
	.quad	Lset211
	.short	2
	.byte	120
	.byte	0
.set Lset212, Ltmp248-Lfunc_begin0
	.quad	Lset212
.set Lset213, Ltmp249-Lfunc_begin0
	.quad	Lset213
	.short	2
	.byte	120
	.byte	0
.set Lset214, Ltmp251-Lfunc_begin0
	.quad	Lset214
.set Lset215, Ltmp252-Lfunc_begin0
	.quad	Lset215
	.short	2
	.byte	120
	.byte	0
.set Lset216, Ltmp254-Lfunc_begin0
	.quad	Lset216
.set Lset217, Ltmp255-Lfunc_begin0
	.quad	Lset217
	.short	2
	.byte	120
	.byte	0
.set Lset218, Ltmp257-Lfunc_begin0
	.quad	Lset218
.set Lset219, Ltmp258-Lfunc_begin0
	.quad	Lset219
	.short	2
	.byte	120
	.byte	0
.set Lset220, Ltmp260-Lfunc_begin0
	.quad	Lset220
.set Lset221, Ltmp261-Lfunc_begin0
	.quad	Lset221
	.short	2
	.byte	120
	.byte	0
.set Lset222, Ltmp263-Lfunc_begin0
	.quad	Lset222
.set Lset223, Ltmp264-Lfunc_begin0
	.quad	Lset223
	.short	2
	.byte	120
	.byte	0
.set Lset224, Ltmp266-Lfunc_begin0
	.quad	Lset224
.set Lset225, Ltmp267-Lfunc_begin0
	.quad	Lset225
	.short	2
	.byte	120
	.byte	0
.set Lset226, Ltmp269-Lfunc_begin0
	.quad	Lset226
.set Lset227, Ltmp270-Lfunc_begin0
	.quad	Lset227
	.short	2
	.byte	120
	.byte	0
.set Lset228, Ltmp272-Lfunc_begin0
	.quad	Lset228
.set Lset229, Ltmp273-Lfunc_begin0
	.quad	Lset229
	.short	2
	.byte	120
	.byte	0
.set Lset230, Ltmp275-Lfunc_begin0
	.quad	Lset230
.set Lset231, Ltmp276-Lfunc_begin0
	.quad	Lset231
	.short	2
	.byte	120
	.byte	0
.set Lset232, Ltmp278-Lfunc_begin0
	.quad	Lset232
.set Lset233, Ltmp279-Lfunc_begin0
	.quad	Lset233
	.short	2
	.byte	120
	.byte	0
.set Lset234, Ltmp281-Lfunc_begin0
	.quad	Lset234
.set Lset235, Ltmp282-Lfunc_begin0
	.quad	Lset235
	.short	2
	.byte	120
	.byte	0
.set Lset236, Ltmp284-Lfunc_begin0
	.quad	Lset236
.set Lset237, Ltmp285-Lfunc_begin0
	.quad	Lset237
	.short	2
	.byte	120
	.byte	0
.set Lset238, Ltmp287-Lfunc_begin0
	.quad	Lset238
.set Lset239, Ltmp288-Lfunc_begin0
	.quad	Lset239
	.short	2
	.byte	120
	.byte	0
.set Lset240, Ltmp290-Lfunc_begin0
	.quad	Lset240
.set Lset241, Ltmp291-Lfunc_begin0
	.quad	Lset241
	.short	2
	.byte	120
	.byte	0
.set Lset242, Ltmp293-Lfunc_begin0
	.quad	Lset242
.set Lset243, Ltmp294-Lfunc_begin0
	.quad	Lset243
	.short	2
	.byte	120
	.byte	0
.set Lset244, Ltmp296-Lfunc_begin0
	.quad	Lset244
.set Lset245, Ltmp297-Lfunc_begin0
	.quad	Lset245
	.short	2
	.byte	120
	.byte	0
.set Lset246, Ltmp299-Lfunc_begin0
	.quad	Lset246
.set Lset247, Ltmp300-Lfunc_begin0
	.quad	Lset247
	.short	2
	.byte	120
	.byte	0
.set Lset248, Ltmp302-Lfunc_begin0
	.quad	Lset248
.set Lset249, Ltmp303-Lfunc_begin0
	.quad	Lset249
	.short	2
	.byte	120
	.byte	0
.set Lset250, Ltmp305-Lfunc_begin0
	.quad	Lset250
.set Lset251, Ltmp306-Lfunc_begin0
	.quad	Lset251
	.short	2
	.byte	120
	.byte	0
.set Lset252, Ltmp308-Lfunc_begin0
	.quad	Lset252
.set Lset253, Ltmp309-Lfunc_begin0
	.quad	Lset253
	.short	2
	.byte	120
	.byte	0
.set Lset254, Ltmp311-Lfunc_begin0
	.quad	Lset254
.set Lset255, Ltmp312-Lfunc_begin0
	.quad	Lset255
	.short	2
	.byte	120
	.byte	0
.set Lset256, Ltmp314-Lfunc_begin0
	.quad	Lset256
.set Lset257, Ltmp315-Lfunc_begin0
	.quad	Lset257
	.short	2
	.byte	120
	.byte	0
.set Lset258, Ltmp317-Lfunc_begin0
	.quad	Lset258
.set Lset259, Ltmp318-Lfunc_begin0
	.quad	Lset259
	.short	2
	.byte	120
	.byte	0
.set Lset260, Ltmp320-Lfunc_begin0
	.quad	Lset260
.set Lset261, Ltmp321-Lfunc_begin0
	.quad	Lset261
	.short	2
	.byte	120
	.byte	0
.set Lset262, Ltmp323-Lfunc_begin0
	.quad	Lset262
.set Lset263, Ltmp324-Lfunc_begin0
	.quad	Lset263
	.short	2
	.byte	120
	.byte	0
.set Lset264, Ltmp326-Lfunc_begin0
	.quad	Lset264
.set Lset265, Ltmp327-Lfunc_begin0
	.quad	Lset265
	.short	2
	.byte	120
	.byte	0
.set Lset266, Ltmp329-Lfunc_begin0
	.quad	Lset266
.set Lset267, Ltmp330-Lfunc_begin0
	.quad	Lset267
	.short	2
	.byte	120
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc13:
.set Lset268, Ltmp39-Lfunc_begin0
	.quad	Lset268
.set Lset269, Ltmp125-Lfunc_begin0
	.quad	Lset269
	.short	2
	.byte	121
	.byte	0
.set Lset270, Ltmp178-Lfunc_begin0
	.quad	Lset270
.set Lset271, Ltmp308-Lfunc_begin0
	.quad	Lset271
	.short	2
	.byte	121
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc14:
.set Lset272, Ltmp36-Lfunc_begin0
	.quad	Lset272
.set Lset273, Ltmp113-Lfunc_begin0
	.quad	Lset273
	.short	2
	.byte	125
	.byte	0
.set Lset274, Ltmp174-Lfunc_begin0
	.quad	Lset274
.set Lset275, Ltmp284-Lfunc_begin0
	.quad	Lset275
	.short	2
	.byte	125
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc15:
.set Lset276, Ltmp33-Lfunc_begin0
	.quad	Lset276
.set Lset277, Ltmp101-Lfunc_begin0
	.quad	Lset277
	.short	2
	.byte	127
	.byte	0
.set Lset278, Ltmp170-Lfunc_begin0
	.quad	Lset278
.set Lset279, Ltmp260-Lfunc_begin0
	.quad	Lset279
	.short	2
	.byte	127
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc16:
.set Lset280, Ltmp30-Lfunc_begin0
	.quad	Lset280
.set Lset281, Ltmp86-Lfunc_begin0
	.quad	Lset281
	.short	2
	.byte	119
	.byte	0
.set Lset282, Ltmp166-Lfunc_begin0
	.quad	Lset282
.set Lset283, Ltmp233-Lfunc_begin0
	.quad	Lset283
	.short	2
	.byte	119
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc17:
.set Lset284, Ltmp27-Lfunc_begin0
	.quad	Lset284
.set Lset285, Ltmp72-Lfunc_begin0
	.quad	Lset285
	.short	2
	.byte	132
	.byte	0
.set Lset286, Ltmp162-Lfunc_begin0
	.quad	Lset286
.set Lset287, Ltmp206-Lfunc_begin0
	.quad	Lset287
	.short	2
	.byte	132
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc18:
.set Lset288, Ltmp55-Lfunc_begin0
	.quad	Lset288
.set Lset289, Ltmp143-Lfunc_begin0
	.quad	Lset289
	.short	2
	.byte	113
	.byte	0
.set Lset290, Ltmp200-Lfunc_begin0
	.quad	Lset290
.set Lset291, Lfunc_end0-Lfunc_begin0
	.quad	Lset291
	.short	2
	.byte	113
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc19:
.set Lset292, Ltmp54-Lfunc_begin0
	.quad	Lset292
.set Lset293, Ltmp143-Lfunc_begin0
	.quad	Lset293
	.short	2
	.byte	122
	.byte	0
.set Lset294, Ltmp200-Lfunc_begin0
	.quad	Lset294
.set Lset295, Lfunc_end0-Lfunc_begin0
	.quad	Lset295
	.short	2
	.byte	122
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc20:
.set Lset296, Ltmp53-Lfunc_begin0
	.quad	Lset296
.set Lset297, Ltmp69-Lfunc_begin0
	.quad	Lset297
	.short	2
	.byte	136
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc21:
.set Lset298, Ltmp48-Lfunc_begin0
	.quad	Lset298
.set Lset299, Ltmp51-Lfunc_begin0
	.quad	Lset299
	.short	2
	.byte	122
	.byte	0
.set Lset300, Ltmp191-Lfunc_begin0
	.quad	Lset300
.set Lset301, Ltmp197-Lfunc_begin0
	.quad	Lset301
	.short	2
	.byte	122
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc22:
.set Lset302, Ltmp57-Lfunc_begin0
	.quad	Lset302
.set Lset303, Ltmp143-Lfunc_begin0
	.quad	Lset303
	.short	2
	.byte	112
	.byte	0
.set Lset304, Ltmp200-Lfunc_begin0
	.quad	Lset304
.set Lset305, Ltmp202-Lfunc_begin0
	.quad	Lset305
	.short	2
	.byte	112
	.byte	0
.set Lset306, Ltmp203-Lfunc_begin0
	.quad	Lset306
.set Lset307, Ltmp205-Lfunc_begin0
	.quad	Lset307
	.short	2
	.byte	112
	.byte	0
.set Lset308, Ltmp206-Lfunc_begin0
	.quad	Lset308
.set Lset309, Ltmp208-Lfunc_begin0
	.quad	Lset309
	.short	2
	.byte	112
	.byte	0
.set Lset310, Ltmp209-Lfunc_begin0
	.quad	Lset310
.set Lset311, Ltmp211-Lfunc_begin0
	.quad	Lset311
	.short	2
	.byte	112
	.byte	0
.set Lset312, Ltmp212-Lfunc_begin0
	.quad	Lset312
.set Lset313, Ltmp214-Lfunc_begin0
	.quad	Lset313
	.short	2
	.byte	112
	.byte	0
.set Lset314, Ltmp215-Lfunc_begin0
	.quad	Lset314
.set Lset315, Ltmp217-Lfunc_begin0
	.quad	Lset315
	.short	2
	.byte	112
	.byte	0
.set Lset316, Ltmp218-Lfunc_begin0
	.quad	Lset316
.set Lset317, Ltmp220-Lfunc_begin0
	.quad	Lset317
	.short	2
	.byte	112
	.byte	0
.set Lset318, Ltmp221-Lfunc_begin0
	.quad	Lset318
.set Lset319, Ltmp223-Lfunc_begin0
	.quad	Lset319
	.short	2
	.byte	112
	.byte	0
.set Lset320, Ltmp224-Lfunc_begin0
	.quad	Lset320
.set Lset321, Ltmp226-Lfunc_begin0
	.quad	Lset321
	.short	2
	.byte	112
	.byte	0
.set Lset322, Ltmp227-Lfunc_begin0
	.quad	Lset322
.set Lset323, Ltmp229-Lfunc_begin0
	.quad	Lset323
	.short	2
	.byte	112
	.byte	0
.set Lset324, Ltmp230-Lfunc_begin0
	.quad	Lset324
.set Lset325, Ltmp232-Lfunc_begin0
	.quad	Lset325
	.short	2
	.byte	112
	.byte	0
.set Lset326, Ltmp233-Lfunc_begin0
	.quad	Lset326
.set Lset327, Ltmp235-Lfunc_begin0
	.quad	Lset327
	.short	2
	.byte	112
	.byte	0
.set Lset328, Ltmp236-Lfunc_begin0
	.quad	Lset328
.set Lset329, Ltmp238-Lfunc_begin0
	.quad	Lset329
	.short	2
	.byte	112
	.byte	0
.set Lset330, Ltmp239-Lfunc_begin0
	.quad	Lset330
.set Lset331, Ltmp241-Lfunc_begin0
	.quad	Lset331
	.short	2
	.byte	112
	.byte	0
.set Lset332, Ltmp242-Lfunc_begin0
	.quad	Lset332
.set Lset333, Ltmp244-Lfunc_begin0
	.quad	Lset333
	.short	2
	.byte	112
	.byte	0
.set Lset334, Ltmp245-Lfunc_begin0
	.quad	Lset334
.set Lset335, Ltmp247-Lfunc_begin0
	.quad	Lset335
	.short	2
	.byte	112
	.byte	0
.set Lset336, Ltmp248-Lfunc_begin0
	.quad	Lset336
.set Lset337, Ltmp250-Lfunc_begin0
	.quad	Lset337
	.short	2
	.byte	112
	.byte	0
.set Lset338, Ltmp251-Lfunc_begin0
	.quad	Lset338
.set Lset339, Ltmp253-Lfunc_begin0
	.quad	Lset339
	.short	2
	.byte	112
	.byte	0
.set Lset340, Ltmp254-Lfunc_begin0
	.quad	Lset340
.set Lset341, Ltmp256-Lfunc_begin0
	.quad	Lset341
	.short	2
	.byte	112
	.byte	0
.set Lset342, Ltmp257-Lfunc_begin0
	.quad	Lset342
.set Lset343, Ltmp259-Lfunc_begin0
	.quad	Lset343
	.short	2
	.byte	112
	.byte	0
.set Lset344, Ltmp260-Lfunc_begin0
	.quad	Lset344
.set Lset345, Ltmp262-Lfunc_begin0
	.quad	Lset345
	.short	2
	.byte	112
	.byte	0
.set Lset346, Ltmp263-Lfunc_begin0
	.quad	Lset346
.set Lset347, Ltmp265-Lfunc_begin0
	.quad	Lset347
	.short	2
	.byte	112
	.byte	0
.set Lset348, Ltmp266-Lfunc_begin0
	.quad	Lset348
.set Lset349, Ltmp268-Lfunc_begin0
	.quad	Lset349
	.short	2
	.byte	112
	.byte	0
.set Lset350, Ltmp269-Lfunc_begin0
	.quad	Lset350
.set Lset351, Ltmp271-Lfunc_begin0
	.quad	Lset351
	.short	2
	.byte	112
	.byte	0
.set Lset352, Ltmp272-Lfunc_begin0
	.quad	Lset352
.set Lset353, Ltmp274-Lfunc_begin0
	.quad	Lset353
	.short	2
	.byte	112
	.byte	0
.set Lset354, Ltmp275-Lfunc_begin0
	.quad	Lset354
.set Lset355, Ltmp277-Lfunc_begin0
	.quad	Lset355
	.short	2
	.byte	112
	.byte	0
.set Lset356, Ltmp278-Lfunc_begin0
	.quad	Lset356
.set Lset357, Ltmp280-Lfunc_begin0
	.quad	Lset357
	.short	2
	.byte	112
	.byte	0
.set Lset358, Ltmp281-Lfunc_begin0
	.quad	Lset358
.set Lset359, Ltmp283-Lfunc_begin0
	.quad	Lset359
	.short	2
	.byte	112
	.byte	0
.set Lset360, Ltmp284-Lfunc_begin0
	.quad	Lset360
.set Lset361, Ltmp286-Lfunc_begin0
	.quad	Lset361
	.short	2
	.byte	112
	.byte	0
.set Lset362, Ltmp287-Lfunc_begin0
	.quad	Lset362
.set Lset363, Ltmp289-Lfunc_begin0
	.quad	Lset363
	.short	2
	.byte	112
	.byte	0
.set Lset364, Ltmp290-Lfunc_begin0
	.quad	Lset364
.set Lset365, Ltmp292-Lfunc_begin0
	.quad	Lset365
	.short	2
	.byte	112
	.byte	0
.set Lset366, Ltmp293-Lfunc_begin0
	.quad	Lset366
.set Lset367, Ltmp295-Lfunc_begin0
	.quad	Lset367
	.short	2
	.byte	112
	.byte	0
.set Lset368, Ltmp296-Lfunc_begin0
	.quad	Lset368
.set Lset369, Ltmp298-Lfunc_begin0
	.quad	Lset369
	.short	2
	.byte	112
	.byte	0
.set Lset370, Ltmp299-Lfunc_begin0
	.quad	Lset370
.set Lset371, Ltmp301-Lfunc_begin0
	.quad	Lset371
	.short	2
	.byte	112
	.byte	0
.set Lset372, Ltmp302-Lfunc_begin0
	.quad	Lset372
.set Lset373, Ltmp304-Lfunc_begin0
	.quad	Lset373
	.short	2
	.byte	112
	.byte	0
.set Lset374, Ltmp305-Lfunc_begin0
	.quad	Lset374
.set Lset375, Ltmp307-Lfunc_begin0
	.quad	Lset375
	.short	2
	.byte	112
	.byte	0
.set Lset376, Ltmp308-Lfunc_begin0
	.quad	Lset376
.set Lset377, Ltmp310-Lfunc_begin0
	.quad	Lset377
	.short	2
	.byte	112
	.byte	0
.set Lset378, Ltmp311-Lfunc_begin0
	.quad	Lset378
.set Lset379, Ltmp313-Lfunc_begin0
	.quad	Lset379
	.short	2
	.byte	112
	.byte	0
.set Lset380, Ltmp314-Lfunc_begin0
	.quad	Lset380
.set Lset381, Ltmp316-Lfunc_begin0
	.quad	Lset381
	.short	2
	.byte	112
	.byte	0
.set Lset382, Ltmp317-Lfunc_begin0
	.quad	Lset382
.set Lset383, Ltmp319-Lfunc_begin0
	.quad	Lset383
	.short	2
	.byte	112
	.byte	0
.set Lset384, Ltmp320-Lfunc_begin0
	.quad	Lset384
.set Lset385, Ltmp322-Lfunc_begin0
	.quad	Lset385
	.short	2
	.byte	112
	.byte	0
.set Lset386, Ltmp323-Lfunc_begin0
	.quad	Lset386
.set Lset387, Ltmp325-Lfunc_begin0
	.quad	Lset387
	.short	2
	.byte	112
	.byte	0
.set Lset388, Ltmp326-Lfunc_begin0
	.quad	Lset388
.set Lset389, Ltmp328-Lfunc_begin0
	.quad	Lset389
	.short	2
	.byte	112
	.byte	0
.set Lset390, Ltmp329-Lfunc_begin0
	.quad	Lset390
.set Lset391, Ltmp331-Lfunc_begin0
	.quad	Lset391
	.short	2
	.byte	112
	.byte	0
.set Lset392, Ltmp332-Lfunc_begin0
	.quad	Lset392
.set Lset393, Ltmp333-Lfunc_begin0
	.quad	Lset393
	.short	2
	.byte	112
	.byte	0
.set Lset394, Ltmp334-Lfunc_begin0
	.quad	Lset394
.set Lset395, Ltmp335-Lfunc_begin0
	.quad	Lset395
	.short	2
	.byte	112
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc23:
.set Lset396, Ltmp56-Lfunc_begin0
	.quad	Lset396
.set Lset397, Ltmp141-Lfunc_begin0
	.quad	Lset397
	.short	2
	.byte	134
	.byte	0
.set Lset398, Ltmp200-Lfunc_begin0
	.quad	Lset398
.set Lset399, Lfunc_end0-Lfunc_begin0
	.quad	Lset399
	.short	2
	.byte	134
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc24:
.set Lset400, Ltmp56-Lfunc_begin0
	.quad	Lset400
.set Lset401, Ltmp142-Lfunc_begin0
	.quad	Lset401
	.short	2
	.byte	135
	.byte	0
.set Lset402, Ltmp200-Lfunc_begin0
	.quad	Lset402
.set Lset403, Lfunc_end0-Lfunc_begin0
	.quad	Lset403
	.short	2
	.byte	135
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc25:
.set Lset404, Ltmp59-Lfunc_begin0
	.quad	Lset404
.set Lset405, Ltmp143-Lfunc_begin0
	.quad	Lset405
	.short	2
	.byte	114
	.byte	0
.set Lset406, Ltmp200-Lfunc_begin0
	.quad	Lset406
.set Lset407, Lfunc_end0-Lfunc_begin0
	.quad	Lset407
	.short	2
	.byte	114
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc26:
.set Lset408, Ltmp58-Lfunc_begin0
	.quad	Lset408
.set Lset409, Ltmp140-Lfunc_begin0
	.quad	Lset409
	.short	2
	.byte	131
	.byte	0
.set Lset410, Ltmp200-Lfunc_begin0
	.quad	Lset410
.set Lset411, Lfunc_end0-Lfunc_begin0
	.quad	Lset411
	.short	2
	.byte	131
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc27:
.set Lset412, Ltmp58-Lfunc_begin0
	.quad	Lset412
.set Lset413, Ltmp141-Lfunc_begin0
	.quad	Lset413
	.short	2
	.byte	133
	.byte	0
.set Lset414, Ltmp200-Lfunc_begin0
	.quad	Lset414
.set Lset415, Lfunc_end0-Lfunc_begin0
	.quad	Lset415
	.short	2
	.byte	133
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc28:
.set Lset416, Ltmp61-Lfunc_begin0
	.quad	Lset416
.set Lset417, Ltmp143-Lfunc_begin0
	.quad	Lset417
	.short	2
	.byte	115
	.byte	0
.set Lset418, Ltmp200-Lfunc_begin0
	.quad	Lset418
.set Lset419, Lfunc_end0-Lfunc_begin0
	.quad	Lset419
	.short	2
	.byte	115
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc29:
.set Lset420, Ltmp60-Lfunc_begin0
	.quad	Lset420
.set Lset421, Ltmp143-Lfunc_begin0
	.quad	Lset421
	.short	2
	.byte	129
	.byte	0
.set Lset422, Ltmp200-Lfunc_begin0
	.quad	Lset422
.set Lset423, Lfunc_end0-Lfunc_begin0
	.quad	Lset423
	.short	2
	.byte	129
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc30:
.set Lset424, Ltmp60-Lfunc_begin0
	.quad	Lset424
.set Lset425, Ltmp143-Lfunc_begin0
	.quad	Lset425
	.short	2
	.byte	118
	.byte	0
.set Lset426, Ltmp200-Lfunc_begin0
	.quad	Lset426
.set Lset427, Lfunc_end0-Lfunc_begin0
	.quad	Lset427
	.short	2
	.byte	118
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc31:
.set Lset428, Ltmp63-Lfunc_begin0
	.quad	Lset428
.set Lset429, Ltmp143-Lfunc_begin0
	.quad	Lset429
	.short	2
	.byte	116
	.byte	0
.set Lset430, Ltmp200-Lfunc_begin0
	.quad	Lset430
.set Lset431, Lfunc_end0-Lfunc_begin0
	.quad	Lset431
	.short	2
	.byte	116
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc32:
.set Lset432, Ltmp62-Lfunc_begin0
	.quad	Lset432
.set Lset433, Ltmp143-Lfunc_begin0
	.quad	Lset433
	.short	2
	.byte	126
	.byte	0
.set Lset434, Ltmp200-Lfunc_begin0
	.quad	Lset434
.set Lset435, Lfunc_end0-Lfunc_begin0
	.quad	Lset435
	.short	2
	.byte	126
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc33:
.set Lset436, Ltmp62-Lfunc_begin0
	.quad	Lset436
.set Lset437, Ltmp143-Lfunc_begin0
	.quad	Lset437
	.short	2
	.byte	128
	.byte	0
.set Lset438, Ltmp200-Lfunc_begin0
	.quad	Lset438
.set Lset439, Lfunc_end0-Lfunc_begin0
	.quad	Lset439
	.short	2
	.byte	128
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc34:
.set Lset440, Ltmp64-Lfunc_begin0
	.quad	Lset440
.set Lset441, Ltmp143-Lfunc_begin0
	.quad	Lset441
	.short	2
	.byte	124
	.byte	0
.set Lset442, Ltmp200-Lfunc_begin0
	.quad	Lset442
.set Lset443, Lfunc_end0-Lfunc_begin0
	.quad	Lset443
	.short	2
	.byte	124
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc35:
.set Lset444, Ltmp64-Lfunc_begin0
	.quad	Lset444
.set Lset445, Ltmp143-Lfunc_begin0
	.quad	Lset445
	.short	2
	.byte	123
	.byte	0
.set Lset446, Ltmp200-Lfunc_begin0
	.quad	Lset446
.set Lset447, Lfunc_end0-Lfunc_begin0
	.quad	Lset447
	.short	2
	.byte	123
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc36:
.set Lset448, Ltmp65-Lfunc_begin0
	.quad	Lset448
.set Lset449, Ltmp143-Lfunc_begin0
	.quad	Lset449
	.short	2
	.byte	117
	.byte	0
.set Lset450, Ltmp200-Lfunc_begin0
	.quad	Lset450
.set Lset451, Lfunc_end0-Lfunc_begin0
	.quad	Lset451
	.short	2
	.byte	117
	.byte	0
	.quad	0
	.quad	0
Ldebug_loc37:
.set Lset452, Lfunc_begin1-Lfunc_begin0
	.quad	Lset452
.set Lset453, Ltmp338-Lfunc_begin0
	.quad	Lset453
	.short	1
	.byte	80
.set Lset454, Ltmp338-Lfunc_begin0
	.quad	Lset454
.set Lset455, Lfunc_end1-Lfunc_begin0
	.quad	Lset455
	.short	3
	.byte	163
	.byte	1
	.byte	80
	.quad	0
	.quad	0
Ldebug_loc38:
.set Lset456, Lfunc_begin1-Lfunc_begin0
	.quad	Lset456
.set Lset457, Ltmp339-Lfunc_begin0
	.quad	Lset457
	.short	1
	.byte	81
.set Lset458, Ltmp339-Lfunc_begin0
	.quad	Lset458
.set Lset459, Lfunc_end1-Lfunc_begin0
	.quad	Lset459
	.short	3
	.byte	163
	.byte	1
	.byte	81
	.quad	0
	.quad	0
Ldebug_loc39:
.set Lset460, Lfunc_begin1-Lfunc_begin0
	.quad	Lset460
.set Lset461, Ltmp340-Lfunc_begin0
	.quad	Lset461
	.short	1
	.byte	82
.set Lset462, Ltmp340-Lfunc_begin0
	.quad	Lset462
.set Lset463, Lfunc_end1-Lfunc_begin0
	.quad	Lset463
	.short	3
	.byte	163
	.byte	1
	.byte	82
	.quad	0
	.quad	0
Ldebug_loc40:
.set Lset464, Lfunc_begin1-Lfunc_begin0
	.quad	Lset464
.set Lset465, Ltmp341-Lfunc_begin0
	.quad	Lset465
	.short	1
	.byte	83
.set Lset466, Ltmp341-Lfunc_begin0
	.quad	Lset466
.set Lset467, Lfunc_end1-Lfunc_begin0
	.quad	Lset467
	.short	3
	.byte	163
	.byte	1
	.byte	83
	.quad	0
	.quad	0
Ldebug_loc41:
.set Lset468, Lfunc_begin1-Lfunc_begin0
	.quad	Lset468
.set Lset469, Ltmp341-Lfunc_begin0
	.quad	Lset469
	.short	1
	.byte	84
.set Lset470, Ltmp341-Lfunc_begin0
	.quad	Lset470
.set Lset471, Lfunc_end1-Lfunc_begin0
	.quad	Lset471
	.short	3
	.byte	163
	.byte	1
	.byte	84
	.quad	0
	.quad	0
Ldebug_loc42:
.set Lset472, Lfunc_begin1-Lfunc_begin0
	.quad	Lset472
.set Lset473, Ltmp341-Lfunc_begin0
	.quad	Lset473
	.short	1
	.byte	85
.set Lset474, Ltmp341-Lfunc_begin0
	.quad	Lset474
.set Lset475, Lfunc_end1-Lfunc_begin0
	.quad	Lset475
	.short	3
	.byte	163
	.byte	1
	.byte	85
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	6
	.byte	27
	.byte	14
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.ascii	"\347\177"
	.byte	12
	.byte	64
	.byte	10
	.byte	3
	.byte	14
	.byte	39
	.byte	12
	.byte	73
	.byte	19
	.ascii	"\341\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	3
	.byte	5
	.byte	0
	.byte	2
	.byte	6
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	4
	.byte	52
	.byte	0
	.byte	2
	.byte	6
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	5
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	6
	.byte	15
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	0
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset476, Ldebug_info_end0-Ldebug_info_start0
	.long	Lset476
Ldebug_info_start0:
	.short	2
.set Lset477, Lsection_abbrev-Lsection_abbrev
	.long	Lset477
	.byte	8
	.byte	1
	.long	0
	.short	2
	.long	4
.set Lset478, Lline_table_start0-Lsection_line
	.long	Lset478
	.long	25
	.quad	Lfunc_begin0
	.quad	Lfunc_end1
	.byte	2
	.quad	Lfunc_begin0
	.quad	Lfunc_end0
	.byte	1
	.byte	1
	.byte	111
	.long	27
	.byte	1
	.long	667
	.byte	1
	.byte	3
.set Lset479, Ldebug_loc0-Lsection_debug_loc
	.long	Lset479
	.long	116
	.long	674
	.byte	3
.set Lset480, Ldebug_loc1-Lsection_debug_loc
	.long	Lset480
	.long	121
	.long	675
	.byte	3
.set Lset481, Ldebug_loc2-Lsection_debug_loc
	.long	Lset481
	.long	134
	.long	667
	.byte	3
.set Lset482, Ldebug_loc3-Lsection_debug_loc
	.long	Lset482
	.long	143
	.long	674
	.byte	3
.set Lset483, Ldebug_loc4-Lsection_debug_loc
	.long	Lset483
	.long	157
	.long	675
	.byte	3
.set Lset484, Ldebug_loc5-Lsection_debug_loc
	.long	Lset484
	.long	171
	.long	674
	.byte	4
.set Lset485, Ldebug_loc6-Lsection_debug_loc
	.long	Lset485
	.long	187
	.long	667
	.byte	4
.set Lset486, Ldebug_loc7-Lsection_debug_loc
	.long	Lset486
	.long	194
	.long	667
	.byte	4
.set Lset487, Ldebug_loc8-Lsection_debug_loc
	.long	Lset487
	.long	203
	.long	667
	.byte	4
.set Lset488, Ldebug_loc9-Lsection_debug_loc
	.long	Lset488
	.long	215
	.long	667
	.byte	4
.set Lset489, Ldebug_loc10-Lsection_debug_loc
	.long	Lset489
	.long	231
	.long	667
	.byte	4
.set Lset490, Ldebug_loc11-Lsection_debug_loc
	.long	Lset490
	.long	247
	.long	667
	.byte	4
.set Lset491, Ldebug_loc12-Lsection_debug_loc
	.long	Lset491
	.long	254
	.long	674
	.byte	4
.set Lset492, Ldebug_loc13-Lsection_debug_loc
	.long	Lset492
	.long	256
	.long	674
	.byte	4
.set Lset493, Ldebug_loc14-Lsection_debug_loc
	.long	Lset493
	.long	267
	.long	674
	.byte	4
.set Lset494, Ldebug_loc15-Lsection_debug_loc
	.long	Lset494
	.long	278
	.long	674
	.byte	4
.set Lset495, Ldebug_loc16-Lsection_debug_loc
	.long	Lset495
	.long	285
	.long	674
	.byte	4
.set Lset496, Ldebug_loc17-Lsection_debug_loc
	.long	Lset496
	.long	289
	.long	674
	.byte	4
.set Lset497, Ldebug_loc18-Lsection_debug_loc
	.long	Lset497
	.long	289
	.long	680
	.byte	4
.set Lset498, Ldebug_loc19-Lsection_debug_loc
	.long	Lset498
	.long	297
	.long	667
	.byte	4
.set Lset499, Ldebug_loc20-Lsection_debug_loc
	.long	Lset499
	.long	304
	.long	692
	.byte	4
.set Lset500, Ldebug_loc21-Lsection_debug_loc
	.long	Lset500
	.long	357
	.long	692
	.byte	4
.set Lset501, Ldebug_loc22-Lsection_debug_loc
	.long	Lset501
	.long	285
	.long	704
	.byte	4
.set Lset502, Ldebug_loc23-Lsection_debug_loc
	.long	Lset502
	.long	407
	.long	692
	.byte	4
.set Lset503, Ldebug_loc24-Lsection_debug_loc
	.long	Lset503
	.long	456
	.long	692
	.byte	4
.set Lset504, Ldebug_loc25-Lsection_debug_loc
	.long	Lset504
	.long	278
	.long	716
	.byte	4
.set Lset505, Ldebug_loc26-Lsection_debug_loc
	.long	Lset505
	.long	511
	.long	692
	.byte	4
.set Lset506, Ldebug_loc27-Lsection_debug_loc
	.long	Lset506
	.long	563
	.long	692
	.byte	4
.set Lset507, Ldebug_loc28-Lsection_debug_loc
	.long	Lset507
	.long	267
	.long	716
	.byte	4
.set Lset508, Ldebug_loc29-Lsection_debug_loc
	.long	Lset508
	.long	613
	.long	692
	.byte	4
.set Lset509, Ldebug_loc30-Lsection_debug_loc
	.long	Lset509
	.long	669
	.long	692
	.byte	4
.set Lset510, Ldebug_loc31-Lsection_debug_loc
	.long	Lset510
	.long	256
	.long	716
	.byte	4
.set Lset511, Ldebug_loc32-Lsection_debug_loc
	.long	Lset511
	.long	723
	.long	692
	.byte	4
.set Lset512, Ldebug_loc33-Lsection_debug_loc
	.long	Lset512
	.long	779
	.long	692
	.byte	4
.set Lset513, Ldebug_loc34-Lsection_debug_loc
	.long	Lset513
	.long	833
	.long	692
	.byte	4
.set Lset514, Ldebug_loc35-Lsection_debug_loc
	.long	Lset514
	.long	878
	.long	692
	.byte	4
.set Lset515, Ldebug_loc36-Lsection_debug_loc
	.long	Lset515
	.long	254
	.long	716
	.byte	0
	.byte	2
	.quad	Lfunc_begin1
	.quad	Lfunc_end1
	.byte	1
	.byte	1
	.byte	111
	.long	64
	.byte	1
	.long	667
	.byte	1
	.byte	3
.set Lset516, Ldebug_loc37-Lsection_debug_loc
	.long	Lset516
	.long	285
	.long	704
	.byte	3
.set Lset517, Ldebug_loc38-Lsection_debug_loc
	.long	Lset517
	.long	289
	.long	680
	.byte	3
.set Lset518, Ldebug_loc39-Lsection_debug_loc
	.long	Lset518
	.long	278
	.long	716
	.byte	3
.set Lset519, Ldebug_loc40-Lsection_debug_loc
	.long	Lset519
	.long	267
	.long	716
	.byte	3
.set Lset520, Ldebug_loc41-Lsection_debug_loc
	.long	Lset520
	.long	256
	.long	716
	.byte	3
.set Lset521, Ldebug_loc42-Lsection_debug_loc
	.long	Lset521
	.long	254
	.long	716
	.byte	0
	.byte	5
	.long	110
	.byte	5
	.byte	4
	.byte	6
	.byte	7
	.long	667
	.byte	7
	.long	685
	.byte	5
	.long	291
	.byte	7
	.byte	1
	.byte	7
	.long	697
	.byte	5
	.long	351
	.byte	5
	.byte	8
	.byte	7
	.long	709
	.byte	5
	.long	402
	.byte	5
	.byte	1
	.byte	7
	.long	721
	.byte	5
	.long	503
	.byte	4
	.byte	2
	.byte	0
Ldebug_info_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"TVM"
	.asciz	"IRModule.CodeGenLLVM"
	.asciz	"."
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2_compute_"
	.asciz	"int32"
	.asciz	"args"
	.asciz	"arg_type_ids"
	.asciz	"num_args"
	.asciz	"out_ret_value"
	.asciz	"out_ret_tcode"
	.asciz	"resource_handle"
	.asciz	"A.code"
	.asciz	"LUT.code"
	.asciz	"Scales.code"
	.asciz	"LUT_Scales.code"
	.asciz	"LUT_Biases.code"
	.asciz	"C.code"
	.asciz	"C"
	.asciz	"LUT_Biases"
	.asciz	"LUT_Scales"
	.asciz	"Scales"
	.asciz	"LUT"
	.asciz	"A"
	.asciz	"uint8"
	.asciz	"dev_id"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.strides"
	.asciz	"int64"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.A.shape"
	.asciz	"int8"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.strides"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT.shape"
	.asciz	"float16"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.strides"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.Scales.shape"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.strides"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Scales.shape"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.strides"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.LUT_Biases.shape"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.shape"
	.asciz	"qgemm_lut_t4_int8_m8192_k14336_n1_b2.C.strides"
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712
	.short	1
	.short	0
	.long	2
	.long	2
	.long	12
	.long	0
	.long	1
	.short	1
	.short	6
	.long	0
	.long	1
	.long	-951974224
	.long	-308280107
.set Lset522, LNames1-Lnames_begin
	.long	Lset522
.set Lset523, LNames0-Lnames_begin
	.long	Lset523
LNames1:
	.long	64
	.long	1
	.long	558
	.long	0
LNames0:
	.long	27
	.long	1
	.long	46
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712
	.short	1
	.short	0
	.long	1
	.long	0
	.long	12
	.long	0
	.long	1
	.short	1
	.short	6
	.long	-1
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712
	.short	1
	.short	0
	.long	1
	.long	0
	.long	12
	.long	0
	.long	1
	.short	1
	.short	6
	.long	-1
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712
	.short	1
	.short	0
	.long	5
	.long	5
	.long	20
	.long	0
	.long	3
	.short	1
	.short	6
	.short	3
	.short	5
	.short	4
	.short	11
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	276802045
	.long	262755061
	.long	262755162
	.long	-1284457758
	.long	2090370664
.set Lset524, Ltypes1-Ltypes_begin
	.long	Lset524
.set Lset525, Ltypes0-Ltypes_begin
	.long	Lset525
.set Lset526, Ltypes2-Ltypes_begin
	.long	Lset526
.set Lset527, Ltypes4-Ltypes_begin
	.long	Lset527
.set Lset528, Ltypes3-Ltypes_begin
	.long	Lset528
Ltypes1:
	.long	291
	.long	1
	.long	685
	.short	36
	.byte	0
	.long	0
Ltypes0:
	.long	110
	.long	1
	.long	667
	.short	36
	.byte	0
	.long	0
Ltypes2:
	.long	351
	.long	1
	.long	697
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	503
	.long	1
	.long	721
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	402
	.long	1
	.long	709
	.short	36
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
