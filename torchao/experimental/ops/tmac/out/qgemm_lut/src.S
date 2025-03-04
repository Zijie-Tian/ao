	.text
	.file	"TVMMod"
	.globl	qgemm_lut_t4_int8_m8192_k4096_n1_b2
	.p2align	2
	.type	qgemm_lut_t4_int8_m8192_k4096_n1_b2,@function
qgemm_lut_t4_int8_m8192_k4096_n1_b2:
.Lfunc_begin0:
	.file	1 "./IRModule.CodeGenLLVM"
	.loc	1 0 0
	.cfi_startproc
	str	x30, [sp, #-64]!
	stp	x24, x23, [sp, #16]
	stp	x22, x21, [sp, #32]
	stp	x20, x19, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w24, -48
	.cfi_offset w30, -64
.Ltmp0:
	cmp	w2, #6
	b.ne	.LBB0_108
.Ltmp1:
	cbz	x0, .LBB0_109
.Ltmp2:
	cbz	x1, .LBB0_110
.Ltmp3:
	ldr	w8, [x1]
.Ltmp4:
	cmp	w8, #13
	b.hi	.LBB0_101
.Ltmp5:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp6:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_101
.Ltmp7:
	ldr	w8, [x1, #4]
.Ltmp8:
	cmp	w8, #13
	b.hi	.LBB0_102
.Ltmp9:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp10:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_102
.Ltmp11:
	ldr	w8, [x1, #8]
.Ltmp12:
	cmp	w8, #13
	b.hi	.LBB0_103
.Ltmp13:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp14:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_103
.Ltmp15:
	ldr	w8, [x1, #12]
.Ltmp16:
	cmp	w8, #13
	b.hi	.LBB0_104
.Ltmp17:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp18:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_104
.Ltmp19:
	ldr	w8, [x1, #16]
.Ltmp20:
	cmp	w8, #13
	b.hi	.LBB0_105
.Ltmp21:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp22:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_105
.Ltmp23:
	ldr	w8, [x1, #20]
.Ltmp24:
	cmp	w8, #13
	b.hi	.LBB0_106
.Ltmp25:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp26:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_106
.Ltmp27:
	ldr	x19, [x0]
.Ltmp28:
	cbz	x19, .LBB0_111
.Ltmp29:
	ldr	w8, [x19, #16]
	cmp	w8, #3
	b.ne	.LBB0_112
.Ltmp30:
	ldr	x6, [x0, #8]
.Ltmp31:
	cbz	x6, .LBB0_113
.Ltmp32:
	ldr	w8, [x6, #16]
	cmp	w8, #3
	b.ne	.LBB0_114
.Ltmp33:
	ldr	x15, [x0, #16]
.Ltmp34:
	cbz	x15, .LBB0_115
.Ltmp35:
	ldr	w8, [x15, #16]
	cmp	w8, #3
	b.ne	.LBB0_116
.Ltmp36:
	ldr	x13, [x0, #24]
.Ltmp37:
	cbz	x13, .LBB0_117
.Ltmp38:
	ldr	w8, [x13, #16]
	cmp	w8, #2
	b.ne	.LBB0_118
.Ltmp39:
	ldr	x9, [x0, #32]
.Ltmp40:
	cbz	x9, .LBB0_119
.Ltmp41:
	ldr	w8, [x9, #16]
	cmp	w8, #2
	b.ne	.LBB0_120
.Ltmp42:
	ldr	x8, [x0, #40]
.Ltmp43:
	cbz	x8, .LBB0_121
.Ltmp44:
	ldr	w10, [x8, #16]
	cmp	w10, #2
	b.ne	.LBB0_122
.Ltmp45:
	ldrb	w10, [x19, #20]
	cmp	w10, #1
	b.ne	.LBB0_123
.Ltmp46:
	ldrb	w10, [x19, #21]
	cmp	w10, #8
	b.ne	.LBB0_123
.Ltmp47:
	ldrh	w10, [x19, #22]
	cmp	w10, #1
	b.ne	.LBB0_123
.Ltmp48:
	ldr	x10, [x19, #24]
.Ltmp49:
	ldr	w11, [x10]
	cmp	w11, #32
	b.ne	.LBB0_124
.Ltmp50:
	ldr	w11, [x10, #8]
	cmp	w11, #1024
	b.ne	.LBB0_125
.Ltmp51:
	ldr	w10, [x10, #16]
.Ltmp52:
	cmp	w10, #128
	b.ne	.LBB0_126
.Ltmp53:
	ldp	x22, x21, [x6, #24]
.Ltmp54:
	ldp	x20, x7, [x15, #24]
.Ltmp55:
	ldp	x18, x17, [x13, #24]
.Ltmp56:
	ldp	x16, x14, [x9, #24]
.Ltmp57:
	ldp	x12, x11, [x8, #24]
.Ltmp58:
	ldr	x23, [x19, #32]
.Ltmp59:
	ldr	w10, [x19, #12]
.Ltmp60:
	ldr	x1, [x19]
.Ltmp61:
	ldr	x0, [x6]
.Ltmp62:
	ldr	x2, [x15]
.Ltmp63:
	ldr	x3, [x13]
.Ltmp64:
	ldr	x4, [x9]
.Ltmp65:
	ldr	x5, [x8]
.Ltmp66:
	cbz	x23, .LBB0_37
.Ltmp67:
	ldr	w24, [x23, #16]
	cmp	w24, #1
	b.ne	.LBB0_127
.Ltmp68:
	ldr	w24, [x23, #8]
	cmp	w24, #128
	b.ne	.LBB0_127
.Ltmp69:
	ldr	w23, [x23]
.Ltmp70:
	cmp	w23, #32, lsl #12
	b.ne	.LBB0_127
.Ltmp71:
.LBB0_37:
	ldr	x23, [x19, #40]
	cbnz	x23, .LBB0_128
.Ltmp72:
	ldr	w19, [x19, #8]
.Ltmp73:
	cmp	w19, #1
	b.ne	.LBB0_129
.Ltmp74:
	cbz	x1, .LBB0_130
.Ltmp75:
	ldrb	w19, [x6, #20]
	cbnz	w19, .LBB0_131
.Ltmp76:
	ldrb	w19, [x6, #21]
	cmp	w19, #8
	b.ne	.LBB0_131
.Ltmp77:
	ldrh	w19, [x6, #22]
	cmp	w19, #1
	b.ne	.LBB0_131
.Ltmp78:
	ldr	w19, [x22]
	cmp	w19, #1
	b.ne	.LBB0_132
.Ltmp79:
	ldr	w19, [x22, #8]
	cmp	w19, #1024
	b.ne	.LBB0_133
.Ltmp80:
	ldr	w19, [x22, #16]
	cmp	w19, #16
	b.ne	.LBB0_134
.Ltmp81:
	cbz	x21, .LBB0_49
.Ltmp82:
	ldr	w19, [x21, #16]
	cmp	w19, #1
	b.ne	.LBB0_135
.Ltmp83:
	ldr	w19, [x21, #8]
	cmp	w19, #16
	b.ne	.LBB0_135
.Ltmp84:
.LBB0_49:
	ldr	x19, [x6, #40]
	cbnz	x19, .LBB0_136
.Ltmp85:
	ldr	w19, [x6, #8]
	cmp	w19, #1
	b.ne	.LBB0_137
.Ltmp86:
	ldr	w6, [x6, #12]
.Ltmp87:
	cmp	w10, w6
	b.ne	.LBB0_138
.Ltmp88:
	cbz	x0, .LBB0_139
.Ltmp89:
	ldrb	w6, [x15, #20]
	cmp	w6, #2
	b.ne	.LBB0_140
.Ltmp90:
	ldrb	w6, [x15, #21]
	cmp	w6, #16
	b.ne	.LBB0_140
.Ltmp91:
	ldrh	w6, [x15, #22]
	cmp	w6, #1
	b.ne	.LBB0_140
.Ltmp92:
	ldr	w6, [x20]
	cmp	w6, #32
	b.ne	.LBB0_141
.Ltmp93:
	ldr	w6, [x20, #8]
	cmp	w6, #32
	b.ne	.LBB0_142
.Ltmp94:
	ldr	w6, [x20, #16]
	cmp	w6, #128
	b.ne	.LBB0_143
.Ltmp95:
	cbz	x7, .LBB0_63
.Ltmp96:
	ldr	w6, [x7, #16]
	cmp	w6, #1
	b.ne	.LBB0_144
.Ltmp97:
	ldr	w6, [x7, #8]
	cmp	w6, #128
	b.ne	.LBB0_144
.Ltmp98:
	ldr	w6, [x7]
	cmp	w6, #1, lsl #12
	b.ne	.LBB0_144
.Ltmp99:
.LBB0_63:
	ldr	x6, [x15, #40]
	cbnz	x6, .LBB0_145
.Ltmp100:
	ldr	w6, [x15, #8]
	cmp	w6, #1
	b.ne	.LBB0_146
.Ltmp101:
	ldr	w15, [x15, #12]
.Ltmp102:
	cmp	w10, w15
	b.ne	.LBB0_147
.Ltmp103:
	cbz	x2, .LBB0_148
.Ltmp104:
	ldrb	w15, [x13, #20]
	cmp	w15, #2
	b.ne	.LBB0_149
.Ltmp105:
	ldrb	w15, [x13, #21]
	cmp	w15, #16
	b.ne	.LBB0_149
.Ltmp106:
	ldrh	w15, [x13, #22]
	cmp	w15, #1
	b.ne	.LBB0_149
.Ltmp107:
	ldr	w15, [x18]
	cmp	w15, #1
	b.ne	.LBB0_150
.Ltmp108:
	ldr	w15, [x18, #8]
	cmp	w15, #64
	b.ne	.LBB0_151
.Ltmp109:
	cbz	x17, .LBB0_74
.Ltmp110:
	ldr	w15, [x17, #8]
	cmp	w15, #1
	b.ne	.LBB0_152
.Ltmp111:
.LBB0_74:
	ldr	x15, [x13, #40]
	cbnz	x15, .LBB0_153
.Ltmp112:
	ldr	w15, [x13, #8]
	cmp	w15, #1
	b.ne	.LBB0_154
.Ltmp113:
	ldr	w13, [x13, #12]
.Ltmp114:
	cmp	w10, w13
	b.ne	.LBB0_155
.Ltmp115:
	cbz	x3, .LBB0_156
.Ltmp116:
	ldrb	w13, [x9, #20]
	cmp	w13, #2
	b.ne	.LBB0_157
.Ltmp117:
	ldrb	w13, [x9, #21]
	cmp	w13, #16
	b.ne	.LBB0_157
.Ltmp118:
	ldrh	w13, [x9, #22]
	cmp	w13, #1
	b.ne	.LBB0_157
.Ltmp119:
	ldr	w13, [x16]
	cmp	w13, #1
	b.ne	.LBB0_158
.Ltmp120:
	ldr	w13, [x16, #8]
	cmp	w13, #64
	b.ne	.LBB0_159
.Ltmp121:
	cbz	x14, .LBB0_85
.Ltmp122:
	ldr	w13, [x14, #8]
	cmp	w13, #1
	b.ne	.LBB0_160
.Ltmp123:
.LBB0_85:
	ldr	x13, [x9, #40]
	cbnz	x13, .LBB0_161
.Ltmp124:
	ldr	w13, [x9, #8]
	cmp	w13, #1
	b.ne	.LBB0_162
.Ltmp125:
	ldr	w9, [x9, #12]
.Ltmp126:
	cmp	w10, w9
	b.ne	.LBB0_163
.Ltmp127:
	cbz	x4, .LBB0_164
.Ltmp128:
	ldrb	w9, [x8, #20]
	cmp	w9, #2
	b.ne	.LBB0_165
.Ltmp129:
	ldrb	w9, [x8, #21]
	cmp	w9, #16
	b.ne	.LBB0_165
.Ltmp130:
	ldrh	w9, [x8, #22]
	cmp	w9, #1
	b.ne	.LBB0_165
.Ltmp131:
	ldr	w9, [x12]
	cmp	w9, #1
	b.ne	.LBB0_166
.Ltmp132:
	ldr	w9, [x12, #8]
	cmp	w9, #1, lsl #12
	b.ne	.LBB0_167
.Ltmp133:
	cbz	x11, .LBB0_96
.Ltmp134:
	ldr	w9, [x11, #8]
	cmp	w9, #1
	b.ne	.LBB0_168
.Ltmp135:
.LBB0_96:
	ldr	x9, [x8, #40]
	cbnz	x9, .LBB0_169
.Ltmp136:
	ldr	w9, [x8, #8]
	cmp	w9, #1
	b.ne	.LBB0_170
.Ltmp137:
	ldr	w8, [x8, #12]
.Ltmp138:
	cmp	w10, w8
	b.ne	.LBB0_171
.Ltmp139:
	cbz	x5, .LBB0_172
.Ltmp140:
	ldp	x20, x19, [sp, #48]
.Ltmp141:
	ldp	x22, x21, [sp, #32]
.Ltmp142:
	ldp	x24, x23, [sp, #16]
	ldr	x30, [sp], #64
	b	qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_
.Ltmp143:
.LBB0_101:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.3
.Ltmp144:
	add	x0, x0, :lo12:.L.str.3
	b	.LBB0_107
.Ltmp145:
.LBB0_102:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.4
.Ltmp146:
	add	x0, x0, :lo12:.L.str.4
	b	.LBB0_107
.Ltmp147:
.LBB0_103:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.5
.Ltmp148:
	add	x0, x0, :lo12:.L.str.5
	b	.LBB0_107
.Ltmp149:
.LBB0_104:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.6
.Ltmp150:
	add	x0, x0, :lo12:.L.str.6
	b	.LBB0_107
.Ltmp151:
.LBB0_105:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.7
.Ltmp152:
	add	x0, x0, :lo12:.L.str.7
	b	.LBB0_107
.Ltmp153:
.LBB0_106:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.8
.Ltmp154:
	add	x0, x0, :lo12:.L.str.8
.Ltmp155:
.LBB0_107:
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
	ldp	x20, x19, [sp, #48]
	mov	w0, #-1
	ldp	x22, x21, [sp, #32]
	ldp	x24, x23, [sp, #16]
	ldr	x30, [sp], #64
	ret
.Ltmp156:
.LBB0_108:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str
.Ltmp157:
	add	x0, x0, :lo12:.L.str
	b	.LBB0_107
.Ltmp158:
.LBB0_109:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.1
.Ltmp159:
	add	x0, x0, :lo12:.L.str.1
	b	.LBB0_107
.Ltmp160:
.LBB0_110:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.2
.Ltmp161:
	add	x0, x0, :lo12:.L.str.2
	b	.LBB0_107
.Ltmp162:
.LBB0_111:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.9
.Ltmp163:
	add	x0, x0, :lo12:.L.str.9
	b	.LBB0_107
.Ltmp164:
.LBB0_112:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.10
.Ltmp165:
	add	x0, x0, :lo12:.L.str.10
	b	.LBB0_107
.Ltmp166:
.LBB0_113:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.11
.Ltmp167:
	add	x0, x0, :lo12:.L.str.11
	b	.LBB0_107
.Ltmp168:
.LBB0_114:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.12
.Ltmp169:
	add	x0, x0, :lo12:.L.str.12
	b	.LBB0_107
.Ltmp170:
.LBB0_115:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.13
.Ltmp171:
	add	x0, x0, :lo12:.L.str.13
	b	.LBB0_107
.Ltmp172:
.LBB0_116:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.14
.Ltmp173:
	add	x0, x0, :lo12:.L.str.14
	b	.LBB0_107
.Ltmp174:
.LBB0_117:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.15
.Ltmp175:
	add	x0, x0, :lo12:.L.str.15
	b	.LBB0_107
.Ltmp176:
.LBB0_118:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.16
.Ltmp177:
	add	x0, x0, :lo12:.L.str.16
	b	.LBB0_107
.Ltmp178:
.LBB0_119:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.17
.Ltmp179:
	add	x0, x0, :lo12:.L.str.17
	b	.LBB0_107
.Ltmp180:
.LBB0_120:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.18
.Ltmp181:
	add	x0, x0, :lo12:.L.str.18
	b	.LBB0_107
.Ltmp182:
.LBB0_121:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp183:
	adrp	x0, .L.str.19
.Ltmp184:
	add	x0, x0, :lo12:.L.str.19
	b	.LBB0_107
.Ltmp185:
.LBB0_122:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp186:
	adrp	x0, .L.str.20
.Ltmp187:
	add	x0, x0, :lo12:.L.str.20
	b	.LBB0_107
.Ltmp188:
.LBB0_123:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp189:
	adrp	x0, .L.str.21
.Ltmp190:
	add	x0, x0, :lo12:.L.str.21
	b	.LBB0_107
.Ltmp191:
.LBB0_124:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp192:
	adrp	x0, .L.str.22
.Ltmp193:
	add	x0, x0, :lo12:.L.str.22
	b	.LBB0_107
.Ltmp194:
.LBB0_125:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp195:
	adrp	x0, .L.str.23
.Ltmp196:
	add	x0, x0, :lo12:.L.str.23
	b	.LBB0_107
.Ltmp197:
.LBB0_126:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp198:
	adrp	x0, .L.str.24
.Ltmp199:
	add	x0, x0, :lo12:.L.str.24
	b	.LBB0_107
.Ltmp200:
.LBB0_127:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp201:
	adrp	x0, .L.str.25
.Ltmp202:
	add	x0, x0, :lo12:.L.str.25
	b	.LBB0_107
.Ltmp203:
.LBB0_128:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp204:
	adrp	x0, .L.str.26
.Ltmp205:
	add	x0, x0, :lo12:.L.str.26
	b	.LBB0_107
.Ltmp206:
.LBB0_129:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp207:
	adrp	x0, .L.str.27
.Ltmp208:
	add	x0, x0, :lo12:.L.str.27
	b	.LBB0_107
.Ltmp209:
.LBB0_130:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp210:
	adrp	x0, .L.str.28
.Ltmp211:
	add	x0, x0, :lo12:.L.str.28
	b	.LBB0_107
.Ltmp212:
.LBB0_131:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp213:
	adrp	x0, .L.str.29
.Ltmp214:
	add	x0, x0, :lo12:.L.str.29
	b	.LBB0_107
.Ltmp215:
.LBB0_132:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp216:
	adrp	x0, .L.str.30
.Ltmp217:
	add	x0, x0, :lo12:.L.str.30
	b	.LBB0_107
.Ltmp218:
.LBB0_133:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp219:
	adrp	x0, .L.str.31
.Ltmp220:
	add	x0, x0, :lo12:.L.str.31
	b	.LBB0_107
.Ltmp221:
.LBB0_134:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp222:
	adrp	x0, .L.str.32
.Ltmp223:
	add	x0, x0, :lo12:.L.str.32
	b	.LBB0_107
.Ltmp224:
.LBB0_135:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp225:
	adrp	x0, .L.str.33
.Ltmp226:
	add	x0, x0, :lo12:.L.str.33
	b	.LBB0_107
.Ltmp227:
.LBB0_136:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp228:
	adrp	x0, .L.str.34
.Ltmp229:
	add	x0, x0, :lo12:.L.str.34
	b	.LBB0_107
.Ltmp230:
.LBB0_137:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp231:
	adrp	x0, .L.str.35
.Ltmp232:
	add	x0, x0, :lo12:.L.str.35
	b	.LBB0_107
.Ltmp233:
.LBB0_138:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp234:
	adrp	x0, .L.str.36
.Ltmp235:
	add	x0, x0, :lo12:.L.str.36
	b	.LBB0_107
.Ltmp236:
.LBB0_139:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp237:
	adrp	x0, .L.str.37
.Ltmp238:
	add	x0, x0, :lo12:.L.str.37
	b	.LBB0_107
.Ltmp239:
.LBB0_140:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp240:
	adrp	x0, .L.str.38
.Ltmp241:
	add	x0, x0, :lo12:.L.str.38
	b	.LBB0_107
.Ltmp242:
.LBB0_141:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp243:
	adrp	x0, .L.str.39
.Ltmp244:
	add	x0, x0, :lo12:.L.str.39
	b	.LBB0_107
.Ltmp245:
.LBB0_142:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp246:
	adrp	x0, .L.str.40
.Ltmp247:
	add	x0, x0, :lo12:.L.str.40
	b	.LBB0_107
.Ltmp248:
.LBB0_143:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp249:
	adrp	x0, .L.str.41
.Ltmp250:
	add	x0, x0, :lo12:.L.str.41
	b	.LBB0_107
.Ltmp251:
.LBB0_144:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp252:
	adrp	x0, .L.str.42
.Ltmp253:
	add	x0, x0, :lo12:.L.str.42
	b	.LBB0_107
.Ltmp254:
.LBB0_145:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp255:
	adrp	x0, .L.str.43
.Ltmp256:
	add	x0, x0, :lo12:.L.str.43
	b	.LBB0_107
.Ltmp257:
.LBB0_146:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp258:
	adrp	x0, .L.str.44
.Ltmp259:
	add	x0, x0, :lo12:.L.str.44
	b	.LBB0_107
.Ltmp260:
.LBB0_147:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp261:
	adrp	x0, .L.str.45
.Ltmp262:
	add	x0, x0, :lo12:.L.str.45
	b	.LBB0_107
.Ltmp263:
.LBB0_148:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp264:
	adrp	x0, .L.str.46
.Ltmp265:
	add	x0, x0, :lo12:.L.str.46
	b	.LBB0_107
.Ltmp266:
.LBB0_149:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp267:
	adrp	x0, .L.str.47
.Ltmp268:
	add	x0, x0, :lo12:.L.str.47
	b	.LBB0_107
.Ltmp269:
.LBB0_150:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp270:
	adrp	x0, .L.str.48
.Ltmp271:
	add	x0, x0, :lo12:.L.str.48
	b	.LBB0_107
.Ltmp272:
.LBB0_151:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp273:
	adrp	x0, .L.str.49
.Ltmp274:
	add	x0, x0, :lo12:.L.str.49
	b	.LBB0_107
.Ltmp275:
.LBB0_152:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp276:
	adrp	x0, .L.str.50
.Ltmp277:
	add	x0, x0, :lo12:.L.str.50
	b	.LBB0_107
.Ltmp278:
.LBB0_153:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp279:
	adrp	x0, .L.str.51
.Ltmp280:
	add	x0, x0, :lo12:.L.str.51
	b	.LBB0_107
.Ltmp281:
.LBB0_154:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp282:
	adrp	x0, .L.str.52
.Ltmp283:
	add	x0, x0, :lo12:.L.str.52
	b	.LBB0_107
.Ltmp284:
.LBB0_155:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp285:
	adrp	x0, .L.str.53
.Ltmp286:
	add	x0, x0, :lo12:.L.str.53
	b	.LBB0_107
.Ltmp287:
.LBB0_156:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp288:
	adrp	x0, .L.str.54
.Ltmp289:
	add	x0, x0, :lo12:.L.str.54
	b	.LBB0_107
.Ltmp290:
.LBB0_157:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp291:
	adrp	x0, .L.str.55
.Ltmp292:
	add	x0, x0, :lo12:.L.str.55
	b	.LBB0_107
.Ltmp293:
.LBB0_158:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp294:
	adrp	x0, .L.str.56
.Ltmp295:
	add	x0, x0, :lo12:.L.str.56
	b	.LBB0_107
.Ltmp296:
.LBB0_159:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp297:
	adrp	x0, .L.str.57
.Ltmp298:
	add	x0, x0, :lo12:.L.str.57
	b	.LBB0_107
.Ltmp299:
.LBB0_160:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp300:
	adrp	x0, .L.str.58
.Ltmp301:
	add	x0, x0, :lo12:.L.str.58
	b	.LBB0_107
.Ltmp302:
.LBB0_161:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp303:
	adrp	x0, .L.str.59
.Ltmp304:
	add	x0, x0, :lo12:.L.str.59
	b	.LBB0_107
.Ltmp305:
.LBB0_162:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp306:
	adrp	x0, .L.str.60
.Ltmp307:
	add	x0, x0, :lo12:.L.str.60
	b	.LBB0_107
.Ltmp308:
.LBB0_163:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp309:
	adrp	x0, .L.str.61
.Ltmp310:
	add	x0, x0, :lo12:.L.str.61
	b	.LBB0_107
.Ltmp311:
.LBB0_164:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp312:
	adrp	x0, .L.str.62
.Ltmp313:
	add	x0, x0, :lo12:.L.str.62
	b	.LBB0_107
.Ltmp314:
.LBB0_165:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp315:
	adrp	x0, .L.str.63
.Ltmp316:
	add	x0, x0, :lo12:.L.str.63
	b	.LBB0_107
.Ltmp317:
.LBB0_166:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp318:
	adrp	x0, .L.str.64
.Ltmp319:
	add	x0, x0, :lo12:.L.str.64
	b	.LBB0_107
.Ltmp320:
.LBB0_167:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp321:
	adrp	x0, .L.str.65
.Ltmp322:
	add	x0, x0, :lo12:.L.str.65
	b	.LBB0_107
.Ltmp323:
.LBB0_168:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp324:
	adrp	x0, .L.str.66
.Ltmp325:
	add	x0, x0, :lo12:.L.str.66
	b	.LBB0_107
.Ltmp326:
.LBB0_169:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp327:
	adrp	x0, .L.str.67
.Ltmp328:
	add	x0, x0, :lo12:.L.str.67
	b	.LBB0_107
.Ltmp329:
.LBB0_170:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp330:
	adrp	x0, .L.str.68
.Ltmp331:
	add	x0, x0, :lo12:.L.str.68
	b	.LBB0_107
.Ltmp332:
.LBB0_171:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.69
.Ltmp333:
	add	x0, x0, :lo12:.L.str.69
	b	.LBB0_107
.Ltmp334:
.LBB0_172:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.70
.Ltmp335:
	add	x0, x0, :lo12:.L.str.70
	b	.LBB0_107
.Ltmp336:
.Lfunc_end0:
	.size	qgemm_lut_t4_int8_m8192_k4096_n1_b2, .Lfunc_end0-qgemm_lut_t4_int8_m8192_k4096_n1_b2
	.cfi_endproc

	.p2align	2
	.type	qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_,@function
qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_:
.Lfunc_begin1:
	.loc	1 0 0
	.cfi_startproc
	sub	sp, sp, #64
	str	x30, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w30, -16
.Ltmp337:
	adrp	x8, :got:__TVMBackendParallelLaunch
	ldr	x8, [x8, :got_lo12:__TVMBackendParallelLaunch]
	str	x0, [sp]
	adrp	x0, .L__tvm_parallel_lambda
.Ltmp338:
	stp	x1, x2, [sp, #8]
	add	x0, x0, :lo12:.L__tvm_parallel_lambda
	mov	x1, sp
.Ltmp339:
	ldr	x8, [x8]
	mov	w2, wzr
.Ltmp340:
	stp	x3, x4, [sp, #24]
	str	x5, [sp, #40]
	blr	x8
.Ltmp341:
	ldr	x30, [sp, #48]
	add	sp, sp, #64
	ret
.Ltmp342:
.Lfunc_end1:
	.size	qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_, .Lfunc_end1-qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI2_0:
	.word	52
	.word	53
	.word	54
	.word	55
.LCPI2_1:
	.word	48
	.word	49
	.word	50
	.word	51
.LCPI2_2:
	.word	36
	.word	37
	.word	38
	.word	39
.LCPI2_3:
	.word	32
	.word	33
	.word	34
	.word	35
.LCPI2_4:
	.word	20
	.word	21
	.word	22
	.word	23
.LCPI2_5:
	.word	16
	.word	17
	.word	18
	.word	19
.LCPI2_6:
	.word	4
	.word	5
	.word	6
	.word	7
.LCPI2_7:
	.zero	4
	.word	1
	.word	2
	.word	3
.LCPI2_8:
	.word	60
	.word	61
	.word	62
	.word	63
.LCPI2_9:
	.word	56
	.word	57
	.word	58
	.word	59
.LCPI2_10:
	.word	44
	.word	45
	.word	46
	.word	47
.LCPI2_11:
	.word	40
	.word	41
	.word	42
	.word	43
.LCPI2_12:
	.word	28
	.word	29
	.word	30
	.word	31
.LCPI2_13:
	.word	24
	.word	25
	.word	26
	.word	27
.LCPI2_14:
	.word	12
	.word	13
	.word	14
	.word	15
.LCPI2_15:
	.word	8
	.word	9
	.word	10
	.word	11
	.text
	.p2align	2
	.type	.L__tvm_parallel_lambda,@function
.L__tvm_parallel_lambda:
.Lfunc_begin2:
	.cfi_startproc
	stp	d15, d14, [sp, #-128]!
	sub	x9, sp, #1280
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	stp	x29, x30, [sp, #64]
	add	x29, sp, #64
	str	x23, [sp, #80]
	stp	x22, x21, [sp, #96]
	stp	x20, x19, [sp, #112]
	and	sp, x9, #0xffffffffffffffc0
	.cfi_def_cfa w29, 64
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -48
	.cfi_offset w30, -56
	.cfi_offset w29, -64
	.cfi_offset b8, -72
	.cfi_offset b9, -80
	.cfi_offset b10, -88
	.cfi_offset b11, -96
	.cfi_offset b12, -104
	.cfi_offset b13, -112
	.cfi_offset b14, -120
	.cfi_offset b15, -128
	ldr	w8, [x1, #8]
	mov	w9, #32
	add	w10, w8, #31
	sdiv	w8, w10, w8
	mul	w10, w8, w0
	cmp	w10, #32
	add	w11, w8, w10
	csel	w8, w10, w9, lt
	cmp	w11, #32
	csel	w9, w11, w9, lt
	subs	w9, w9, w8
	b.le	.LBB2_9
	ldp	x14, x15, [x2, #8]
	adrp	x1, .LCPI2_1
	adrp	x0, .LCPI2_0
	ldr	x11, [x2]
	adrp	x3, .LCPI2_12
	ldp	x13, x16, [x2, #24]
	movi	v24.16b, #15
	mov	w10, wzr
	ldr	x17, [x2, #40]
	adrp	x2, .LCPI2_2
	ldr	q19, [x1, :lo12:.LCPI2_1]
	adrp	x1, .LCPI2_4
	ldr	q18, [x0, :lo12:.LCPI2_0]
	adrp	x0, .LCPI2_3
	ldr	q20, [x2, :lo12:.LCPI2_2]
	adrp	x2, .LCPI2_5
	ldr	q23, [x1, :lo12:.LCPI2_4]
	adrp	x1, .LCPI2_7
	ldr	q21, [x0, :lo12:.LCPI2_3]
	adrp	x0, .LCPI2_6
	ldr	q25, [x2, :lo12:.LCPI2_5]
	adrp	x2, .LCPI2_8
	ldr	q29, [x1, :lo12:.LCPI2_7]
	adrp	x1, .LCPI2_10
	ldr	q26, [x0, :lo12:.LCPI2_6]
	adrp	x0, .LCPI2_9
	ldr	q30, [x2, :lo12:.LCPI2_8]
	adrp	x2, .LCPI2_11
	ldr	q8, [x1, :lo12:.LCPI2_10]
	adrp	x1, .LCPI2_13
	ldr	q31, [x0, :lo12:.LCPI2_9]
	add	x0, sp, #512
	ldr	q9, [x2, :lo12:.LCPI2_11]
	adrp	x2, .LCPI2_14
	lsl	w12, w8, #17
	add	x14, x14, #128
	add	x15, x15, #16
	lsl	w18, w8, #12
	ldr	q12, [x2, :lo12:.LCPI2_14]
	adrp	x2, .LCPI2_15
	ldr	q10, [x3, :lo12:.LCPI2_12]
	stp	q19, q18, [sp, #240]
	ldr	q11, [x1, :lo12:.LCPI2_13]
	add	x1, x0, #32
	ldr	q14, [x2, :lo12:.LCPI2_15]
	add	x2, sp, #1024
	stp	q21, q20, [sp, #208]
	stp	q25, q23, [sp, #176]
	stp	q29, q26, [sp, #144]
	stp	q31, q30, [sp, #112]
	stp	q9, q8, [sp, #80]
	stp	q11, q10, [sp, #48]
	stp	q14, q12, [sp, #16]
.LBB2_2:
	add	w3, w8, w10
	mov	w4, wzr
	lsl	w3, w3, #7
	mov	x5, xzr
	movi	v0.2d, #0000000000000000
	add	x6, x14, w12, sxtw
	add	x3, x17, w3, sxtw #1
	stp	q0, q0, [sp, #992]
	stp	q0, q0, [sp, #960]
	stp	q0, q0, [sp, #928]
	stp	q0, q0, [sp, #896]
	stp	q0, q0, [sp, #864]
	stp	q0, q0, [sp, #832]
	stp	q0, q0, [sp, #800]
	stp	q0, q0, [sp, #768]
	stp	q0, q0, [sp, #736]
	stp	q0, q0, [sp, #704]
	stp	q0, q0, [sp, #672]
	stp	q0, q0, [sp, #640]
	stp	q0, q0, [sp, #608]
	stp	q0, q0, [sp, #576]
	stp	q0, q0, [sp, #544]
	stp	q0, q0, [sp, #512]
.LBB2_3:
	add	x21, x11, x5, lsl #8
	ubfx	w7, w4, #7, #24
	mov	x19, #-16
	mov	x20, x1
	add	w7, w18, w7, lsl #7
	ldp	q1, q0, [x21]
	add	x7, x15, w7, sxtw #1
	stp	q0, q1, [sp, #480]
	ldp	q1, q0, [x21, #32]
	stp	q0, q1, [sp, #448]
	ldp	q1, q0, [x21, #64]
	stp	q0, q1, [sp, #416]
	ldp	q1, q0, [x21, #96]
	stp	q0, q1, [sp, #384]
	ldp	q1, q0, [x21, #128]
	stp	q0, q1, [sp, #352]
	ldp	q1, q0, [x21, #160]
	stp	q0, q1, [sp, #320]
	ldp	q1, q0, [x21, #192]
	stp	q0, q1, [sp, #288]
	ldp	q0, q1, [x21, #224]
	mov	x21, x6
	str	q0, [sp, #272]
.LBB2_4:
	ldp	q4, q5, [x21, #-128]
	lsl	x22, x5, #1
	add	x19, x19, #16
	add	x23, x16, x22
	cmp	x19, #112
	and	v18.16b, v4.16b, v24.16b
	ushr	v4.16b, v4.16b, #4
	ldp	q30, q29, [sp, #480]
	and	v19.16b, v5.16b, v24.16b
	ushr	v5.16b, v5.16b, #4
	tbl	v26.16b, { v30.16b }, v19.16b
	ldp	q16, q17, [x21, #-96]
	tbl	v23.16b, { v29.16b }, v18.16b
	tbl	v4.16b, { v29.16b }, v4.16b
	tbl	v5.16b, { v30.16b }, v5.16b
	and	v21.16b, v16.16b, v24.16b
	saddl2	v28.8h, v26.16b, v23.16b
	ldp	q8, q31, [sp, #448]
	and	v25.16b, v17.16b, v24.16b
	saddl	v23.8h, v26.8b, v23.8b
	ushr	v16.16b, v16.16b, #4
	ushr	v17.16b, v17.16b, #4
	tbl	v25.16b, { v8.16b }, v25.16b
	ldp	q2, q3, [x21, #-64]
	tbl	v27.16b, { v31.16b }, v21.16b
	tbl	v16.16b, { v31.16b }, v16.16b
	and	v26.16b, v2.16b, v24.16b
	saddw2	v28.8h, v28.8h, v27.16b
	ldp	q10, q9, [sp, #416]
	saddw	v23.8h, v23.8h, v27.8b
	and	v27.16b, v3.16b, v24.16b
	saddw2	v28.8h, v28.8h, v25.16b
	ushr	v2.16b, v2.16b, #4
	saddw	v23.8h, v23.8h, v25.8b
	ldp	q6, q7, [x21, #-32]
	tbl	v26.16b, { v9.16b }, v26.16b
	tbl	v27.16b, { v10.16b }, v27.16b
	tbl	v2.16b, { v9.16b }, v2.16b
	and	v25.16b, v6.16b, v24.16b
	saddw2	v28.8h, v28.8h, v26.16b
	ldp	q12, q11, [sp, #384]
	saddw	v23.8h, v23.8h, v26.8b
	and	v26.16b, v7.16b, v24.16b
	saddw2	v28.8h, v28.8h, v27.16b
	ushr	v3.16b, v3.16b, #4
	saddw	v23.8h, v23.8h, v27.8b
	ldp	q18, q19, [x21]
	tbl	v25.16b, { v11.16b }, v25.16b
	tbl	v26.16b, { v12.16b }, v26.16b
	tbl	v3.16b, { v10.16b }, v3.16b
	and	v27.16b, v18.16b, v24.16b
	saddw2	v28.8h, v28.8h, v25.16b
	ldp	q14, q13, [sp, #352]
	saddw	v23.8h, v23.8h, v25.8b
	and	v25.16b, v19.16b, v24.16b
	saddw2	v28.8h, v28.8h, v26.16b
	saddw	v23.8h, v23.8h, v26.8b
	ldp	q20, q21, [x21, #32]
	tbl	v27.16b, { v13.16b }, v27.16b
	tbl	v25.16b, { v14.16b }, v25.16b
	and	v26.16b, v20.16b, v24.16b
	saddw2	v28.8h, v28.8h, v27.16b
	ldp	q22, q15, [sp, #320]
	saddw	v23.8h, v23.8h, v27.8b
	and	v27.16b, v21.16b, v24.16b
	saddw2	v28.8h, v28.8h, v25.16b
	saddw	v23.8h, v23.8h, v25.8b
	tbl	v26.16b, { v15.16b }, v26.16b
	ldr	q0, [sp, #304]
	tbl	v25.16b, { v22.16b }, v27.16b
	saddw2	v27.8h, v28.8h, v26.16b
	saddw	v23.8h, v23.8h, v26.8b
	ldp	q26, q28, [x21, #64]
	saddw2	v27.8h, v27.8h, v25.16b
	saddw	v23.8h, v23.8h, v25.8b
	and	v25.16b, v26.16b, v24.16b
	tbl	v25.16b, { v0.16b }, v25.16b
	saddw2	v27.8h, v27.8h, v25.16b
	saddw	v23.8h, v23.8h, v25.8b
	saddl	v25.8h, v5.8b, v4.8b
	saddl2	v4.8h, v5.16b, v4.16b
	tbl	v5.16b, { v8.16b }, v17.16b
	saddw	v17.8h, v25.8h, v16.8b
	saddw2	v4.8h, v4.8h, v16.16b
	saddw	v16.8h, v17.8h, v5.8b
	saddw2	v4.8h, v4.8h, v5.16b
	ushr	v5.16b, v6.16b, #4
	saddw	v6.8h, v16.8h, v2.8b
	saddw2	v2.8h, v4.8h, v2.16b
	tbl	v4.16b, { v11.16b }, v5.16b
	ushr	v5.16b, v7.16b, #4
	saddw	v6.8h, v6.8h, v3.8b
	saddw2	v2.8h, v2.8h, v3.16b
	ushr	v3.16b, v18.16b, #4
	tbl	v5.16b, { v12.16b }, v5.16b
	saddw	v6.8h, v6.8h, v4.8b
	saddw2	v2.8h, v2.8h, v4.16b
	tbl	v3.16b, { v13.16b }, v3.16b
	ushr	v4.16b, v19.16b, #4
	saddw	v6.8h, v6.8h, v5.8b
	saddw2	v2.8h, v2.8h, v5.16b
	ushr	v5.16b, v20.16b, #4
	tbl	v4.16b, { v14.16b }, v4.16b
	saddw	v6.8h, v6.8h, v3.8b
	saddw2	v2.8h, v2.8h, v3.16b
	tbl	v3.16b, { v15.16b }, v5.16b
	ushr	v5.16b, v21.16b, #4
	saddw	v6.8h, v6.8h, v4.8b
	saddw2	v2.8h, v2.8h, v4.16b
	ushr	v7.16b, v26.16b, #4
	tbl	v5.16b, { v22.16b }, v5.16b
	saddw	v6.8h, v6.8h, v3.8b
	saddw2	v2.8h, v2.8h, v3.16b
	ld1r	{ v3.8h }, [x23]
	and	v4.16b, v28.16b, v24.16b
	tbl	v7.16b, { v0.16b }, v7.16b
	ldp	q0, q19, [sp, #272]
	ushr	v16.16b, v28.16b, #4
	saddw	v6.8h, v6.8h, v5.8b
	saddw2	v2.8h, v2.8h, v5.16b
	ldp	q5, q18, [x21, #96]
	tbl	v4.16b, { v19.16b }, v4.16b
	add	x21, x21, #256
	tbl	v16.16b, { v19.16b }, v16.16b
	saddw	v6.8h, v6.8h, v7.8b
	saddw2	v2.8h, v2.8h, v7.16b
	ushr	v7.16b, v5.16b, #4
	and	v5.16b, v5.16b, v24.16b
	saddw2	v17.8h, v27.8h, v4.16b
	saddw	v4.8h, v23.8h, v4.8b
	saddw	v6.8h, v6.8h, v16.8b
	saddw2	v2.8h, v2.8h, v16.16b
	and	v16.16b, v18.16b, v24.16b
	ushr	v18.16b, v18.16b, #4
	tbl	v5.16b, { v0.16b }, v5.16b
	tbl	v7.16b, { v0.16b }, v7.16b
	tbl	v16.16b, { v1.16b }, v16.16b
	tbl	v18.16b, { v1.16b }, v18.16b
	saddw	v4.8h, v4.8h, v5.8b
	saddw	v6.8h, v6.8h, v7.8b
	saddw2	v5.8h, v17.8h, v5.16b
	saddw2	v2.8h, v2.8h, v7.16b
	ldr	h7, [x13, x22]
	saddw	v4.8h, v4.8h, v16.8b
	saddw	v6.8h, v6.8h, v18.8b
	saddw2	v5.8h, v5.8h, v16.16b
	saddw2	v2.8h, v2.8h, v18.16b
	scvtf	v4.8h, v4.8h
	mov	v16.16b, v3.16b
	scvtf	v6.8h, v6.8h
	scvtf	v5.8h, v5.8h
	scvtf	v2.8h, v2.8h
	fmla	v16.8h, v4.8h, v7.h[0]
	fmla	v3.8h, v6.8h, v7.h[0]
	ldp	q17, q4, [x7, #-16]
	fmul	v5.8h, v5.8h, v7.h[0]
	fmul	v2.8h, v2.8h, v7.h[0]
	add	x7, x7, #32
	ldp	q18, q6, [x20, #-32]
	fmla	v18.8h, v17.8h, v16.8h
	ldp	q7, q16, [x20]
	fmla	v6.8h, v17.8h, v5.8h
	fmla	v7.8h, v4.8h, v3.8h
	stp	q18, q6, [x20, #-32]
	fmla	v16.8h, v4.8h, v2.8h
	stp	q7, q16, [x20], #64
	b.lo	.LBB2_4
	add	x5, x5, #1
	add	x6, x6, #2048
	add	w4, w4, #64
	cmp	x5, #64
	b.ne	.LBB2_3
	ldp	q19, q18, [sp, #240]
	movi	v13.8h, #56, lsl #8
	mov	x4, xzr
	ldp	q21, q20, [sp, #208]
	ldp	q25, q23, [sp, #176]
	ldp	q29, q26, [sp, #144]
	ldp	q31, q30, [sp, #112]
	ldp	q9, q8, [sp, #80]
	ldp	q11, q10, [sp, #48]
	ldp	q14, q12, [sp, #16]
.LBB2_7:
	dup	v22.4s, w4
	ldr	h28, [x0, x4, lsl #1]
	orr	v4.16b, v22.16b, v21.16b
	orr	v2.16b, v22.16b, v19.16b
	orr	v1.16b, v22.16b, v25.16b
	orr	v3.16b, v22.16b, v29.16b
	fmov	w20, s4
	mov	w21, v2.s[1]
	fmov	w22, s2
	mov	w7, v1.s[1]
	mov	w6, v1.s[2]
	mov	w5, v1.s[3]
	ldr	h0, [x0, w20, uxtw #1]
	fmov	w20, s1
	ldr	h1, [x0, w22, uxtw #1]
	add	x21, x0, w21, uxtw #1
	mov	w19, v4.s[1]
	add	x7, x0, w7, uxtw #1
	mov	w22, v4.s[2]
	ldr	h27, [x0, w20, uxtw #1]
	mov	w20, v4.s[3]
	ld1	{ v1.h }[1], [x21]
	mov	w21, v2.s[2]
	add	x19, x0, w19, uxtw #1
	add	x6, x0, w6, uxtw #1
	orr	v4.16b, v22.16b, v18.16b
	add	x22, x0, w22, uxtw #1
	ld1	{ v27.h }[1], [x7]
	mov	w7, v2.s[3]
	add	x21, x0, w21, uxtw #1
	ld1	{ v0.h }[1], [x19]
	mov	w19, v3.s[1]
	add	x20, x0, w20, uxtw #1
	orr	v5.16b, v22.16b, v20.16b
	add	x5, x0, w5, uxtw #1
	ld1	{ v1.h }[2], [x21]
	add	x7, x0, w7, uxtw #1
	ld1	{ v0.h }[2], [x22]
	fmov	w22, s4
	orr	v2.16b, v22.16b, v23.16b
	mov	w21, v4.s[1]
	add	x19, x0, w19, uxtw #1
	ld1	{ v27.h }[2], [x6]
	ld1	{ v1.h }[3], [x7]
	add	x22, x0, w22, uxtw #1
	ld1	{ v0.h }[3], [x20]
	fmov	w20, s5
	ld1	{ v28.h }[1], [x19]
	mov	w19, v4.s[2]
	add	x21, x0, w21, uxtw #1
	ld1	{ v27.h }[3], [x5]
	ld1	{ v1.h }[4], [x22]
	fmov	w22, s2
	add	x20, x0, w20, uxtw #1
	mov	w7, v2.s[1]
	mov	w5, v5.s[1]
	add	x19, x0, w19, uxtw #1
	add	x22, x0, w22, uxtw #1
	mov	w6, v2.s[2]
	ld1	{ v1.h }[5], [x21]
	mov	w21, v4.s[3]
	ld1	{ v0.h }[4], [x20]
	mov	w20, v3.s[2]
	ld1	{ v27.h }[4], [x22]
	mov	w22, v3.s[3]
	add	x5, x0, w5, uxtw #1
	add	x7, x0, w7, uxtw #1
	ld1	{ v1.h }[6], [x19]
	mov	w19, v5.s[2]
	orr	v3.16b, v22.16b, v26.16b
	add	x20, x0, w20, uxtw #1
	ld1	{ v0.h }[5], [x5]
	add	x22, x0, w22, uxtw #1
	ld1	{ v27.h }[5], [x7]
	add	x6, x0, w6, uxtw #1
	ld1	{ v28.h }[2], [x20]
	add	x19, x0, w19, uxtw #1
	orr	v4.16b, v22.16b, v31.16b
	fmov	w20, s3
	add	x21, x0, w21, uxtw #1
	mov	w5, v5.s[3]
	ld1	{ v0.h }[6], [x19]
	mov	w7, v3.s[2]
	ld1	{ v28.h }[3], [x22]
	add	x19, x0, w20, uxtw #1
	ld1	{ v27.h }[6], [x6]
	mov	w6, v4.s[1]
	fmov	w20, s4
	ld1	{ v1.h }[7], [x21]
	mov	w21, v3.s[1]
	mov	w22, v2.s[3]
	ld1	{ v28.h }[4], [x19]
	mov	w19, v4.s[2]
	ldr	h2, [x0, w20, uxtw #1]
	add	x6, x0, w6, uxtw #1
	add	x5, x0, w5, uxtw #1
	mov	w20, v4.s[3]
	add	x21, x0, w21, uxtw #1
	add	x22, x0, w22, uxtw #1
	orr	v6.16b, v22.16b, v9.16b
	add	x7, x0, w7, uxtw #1
	ld1	{ v2.h }[1], [x6]
	add	x6, x0, w19, uxtw #1
	ld1	{ v28.h }[5], [x21]
	ld1	{ v0.h }[7], [x5]
	mov	w5, v3.s[3]
	orr	v5.16b, v22.16b, v30.16b
	ld1	{ v27.h }[7], [x22]
	orr	v7.16b, v22.16b, v14.16b
	ld1	{ v2.h }[2], [x6]
	fmov	w22, s6
	ld1	{ v28.h }[6], [x7]
	mov	w19, v6.s[1]
	add	x6, x0, w20, uxtw #1
	orr	v16.16b, v22.16b, v11.16b
	add	x5, x0, w5, uxtw #1
	ldr	h3, [x0, w22, uxtw #1]
	fmov	w20, s5
	fmov	w22, s7
	ld1	{ v2.h }[3], [x6]
	ld1	{ v28.h }[7], [x5]
	add	x5, x0, w19, uxtw #1
	add	x20, x0, w20, uxtw #1
	mov	w19, v16.s[1]
	ldr	h4, [x0, w22, uxtw #1]
	fmov	w22, s16
	mov	w6, v5.s[1]
	mov	w7, v7.s[1]
	mov	w21, v6.s[2]
	ld1	{ v2.h }[4], [x20]
	mov	w20, v7.s[2]
	ld1	{ v3.h }[1], [x5]
	mov	w5, v7.s[3]
	ldr	h7, [x0, w22, uxtw #1]
	mov	w22, v16.s[2]
	add	x19, x0, w19, uxtw #1
	add	x6, x0, w6, uxtw #1
	add	x7, x0, w7, uxtw #1
	add	x21, x0, w21, uxtw #1
	add	x20, x0, w20, uxtw #1
	ld1	{ v7.h }[1], [x19]
	mov	w19, v5.s[2]
	ld1	{ v2.h }[5], [x6]
	mov	w6, v16.s[3]
	add	x22, x0, w22, uxtw #1
	ld1	{ v4.h }[1], [x7]
	ld1	{ v3.h }[2], [x21]
	mov	w21, v6.s[3]
	orr	v6.16b, v22.16b, v8.16b
	add	x19, x0, w19, uxtw #1
	orr	v16.16b, v22.16b, v12.16b
	ld1	{ v7.h }[2], [x22]
	orr	v17.16b, v22.16b, v10.16b
	add	x6, x0, w6, uxtw #1
	ld1	{ v4.h }[2], [x20]
	add	x21, x0, w21, uxtw #1
	add	x5, x0, w5, uxtw #1
	fmov	w22, s6
	ld1	{ v2.h }[6], [x19]
	mov	w7, v16.s[1]
	fmov	w19, s17
	ld1	{ v7.h }[3], [x6]
	fmov	w6, s16
	ld1	{ v3.h }[3], [x21]
	ld1	{ v4.h }[3], [x5]
	mov	w21, v6.s[1]
	mov	w20, v17.s[1]
	add	x22, x0, w22, uxtw #1
	add	x19, x0, w19, uxtw #1
	add	x6, x0, w6, uxtw #1
	mov	w5, v17.s[2]
	add	x7, x0, w7, uxtw #1
	ld1	{ v3.h }[4], [x22]
	mov	w22, v16.s[2]
	ld1	{ v7.h }[4], [x19]
	add	x21, x0, w21, uxtw #1
	ld1	{ v4.h }[4], [x6]
	mov	w19, v6.s[2]
	add	x20, x0, w20, uxtw #1
	mov	w6, v17.s[3]
	ld1	{ v3.h }[5], [x21]
	mov	w21, v5.s[3]
	add	x5, x0, w5, uxtw #1
	add	x22, x0, w22, uxtw #1
	ld1	{ v7.h }[5], [x20]
	mov	w20, v6.s[3]
	ld1	{ v4.h }[5], [x7]
	add	x19, x0, w19, uxtw #1
	mov	w7, v16.s[3]
	add	x6, x0, w6, uxtw #1
	ld1	{ v3.h }[6], [x19]
	add	x19, x0, w21, uxtw #1
	ld1	{ v7.h }[6], [x5]
	add	x5, x0, w20, uxtw #1
	ld1	{ v4.h }[6], [x22]
	add	x7, x0, w7, uxtw #1
	ld1	{ v2.h }[7], [x19]
	ld1	{ v3.h }[7], [x5]
	add	x5, x2, x4
	ld1	{ v7.h }[7], [x6]
	add	x4, x4, #64
	ld1	{ v4.h }[7], [x7]
	cmp	x4, #256
	fmla	v2.8h, v13.8h, v1.8h
	fmla	v3.8h, v13.8h, v0.8h
	fmla	v7.8h, v13.8h, v27.8h
	fmla	v4.8h, v13.8h, v28.8h
	stp	q3, q2, [x5, #32]
	stp	q4, q7, [x5]
	b.ne	.LBB2_7
	ldr	q0, [sp, #1216]
	add	w10, w10, #1
	ldr	q1, [sp, #1232]
	add	w12, w12, #32, lsl #12
	ldr	q2, [sp, #1248]
	add	w18, w18, #1, lsl #12
	ldr	q3, [sp, #1264]
	cmp	w10, w9
	stp	q0, q1, [x3, #192]
	ldr	q0, [sp, #1152]
	ldr	q1, [sp, #1168]
	stp	q2, q3, [x3, #224]
	ldr	q2, [sp, #1184]
	ldr	q3, [sp, #1200]
	stp	q0, q1, [x3, #128]
	ldr	q0, [sp, #1088]
	ldr	q1, [sp, #1104]
	stp	q2, q3, [x3, #160]
	ldr	q2, [sp, #1120]
	ldr	q3, [sp, #1136]
	stp	q0, q1, [x3, #64]
	ldr	q0, [sp, #1024]
	ldr	q1, [sp, #1040]
	stp	q2, q3, [x3, #96]
	stp	q0, q1, [x3]
	ldr	q0, [sp, #1056]
	ldr	q1, [sp, #1072]
	stp	q0, q1, [x3, #32]
	b.ne	.LBB2_2
.LBB2_9:
	mov	w0, wzr
	sub	sp, x29, #64
	ldp	x20, x19, [sp, #112]
	ldp	x22, x21, [sp, #96]
	ldp	x29, x30, [sp, #64]
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	ldr	x23, [sp, #80]
	ldp	d15, d14, [sp], #128
	ret
.Lfunc_end2:
	.size	.L__tvm_parallel_lambda, .Lfunc_end2-.L__tvm_parallel_lambda
	.cfi_endproc

	.section	.text.tvm.fp16.conv,"ax",@progbits
	.weak	__truncsfhf2
	.p2align	2
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin3:
	.cfi_startproc
	fmov	w8, s0
	mov	w10, #-947912704
	mov	w11, #-1199570944
	and	w9, w8, #0x7fffffff
	add	w10, w9, w10
	add	w11, w9, w11
	cmp	w10, w11
	b.hs	.LBB3_4
	ubfx	w10, w8, #13, #16
	and	w11, w8, #0x1fff
	sub	w9, w10, #28, lsl #12
	cmp	w11, #1, lsl #12
	b.ls	.LBB3_6
	mov	w9, #16384
	movk	w9, #65534, lsl #16
	add	w9, w9, w10
	add	w9, w9, #1
.LBB3_3:
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB3_4:
	mov	w10, #1
	movk	w10, #32640, lsl #16
	cmp	w9, w10
	b.lo	.LBB3_8
	mov	w9, #32256
	bfxil	w9, w8, #13, #9
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB3_6:
	b.ne	.LBB3_3
	ubfx	w10, w8, #13, #1
	add	w9, w10, w9, uxth
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB3_8:
	lsr	w10, w9, #23
	cmp	w10, #142
	b.ls	.LBB3_10
	mov	w9, #31744
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB3_10:
	lsr	w9, w9, #24
	cmp	w9, #45
	b.hs	.LBB3_12
	mov	w9, wzr
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB3_12:
	mov	w9, #113
	sub	w11, w10, #81
	sub	w9, w9, w10
	mov	w10, #8388608
	bfxil	w10, w8, #0, #23
	lsl	w11, w10, w11
	cmp	w11, #0
	lsr	w10, w10, w9
	cset	w11, ne
	and	w12, w10, #0x1fff
	lsr	w9, w10, #13
	orr	w11, w12, w11
	cmp	w11, #1, lsl #12
	b.ls	.LBB3_14
	add	w9, w9, #1
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB3_14:
	b.ne	.LBB3_3
	ubfx	w10, w10, #13, #1
	add	w9, w10, w9
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.Lfunc_end3:
	.size	__truncsfhf2, .Lfunc_end3-__truncsfhf2
	.cfi_endproc

	.weak	__extendhfsf2
	.p2align	2
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin4:
	.cfi_startproc
	and	w9, w0, #0x7fff
	and	w8, w0, #0xffff
	sub	w10, w9, #1024
	lsr	w10, w10, #11
	cmp	w10, #14
	b.hi	.LBB4_3
	mov	w10, #939524096
	add	w9, w10, w9, lsl #13
.LBB4_2:
	and	w8, w8, #0x8000
	orr	w8, w9, w8, lsl #16
	fmov	s0, w8
	ret
.LBB4_3:
	lsr	w10, w9, #10
	cmp	w10, #31
	b.lo	.LBB4_5
	lsl	w9, w9, #13
	orr	w9, w9, #0x7f800000
	and	w8, w8, #0x8000
	orr	w8, w9, w8, lsl #16
	fmov	s0, w8
	ret
.LBB4_5:
	cbz	w9, .LBB4_2
	lsr	w10, w9, #8
	cmp	w9, #256
	mov	w11, #24
	mov	w12, #32
	csel	w10, w9, w10, lo
	csel	w11, w12, w11, lo
	lsr	w12, w10, #4
	cmp	w10, #16
	sub	w13, w11, #4
	csel	w10, w10, w12, lo
	csel	w11, w11, w13, lo
	lsr	w12, w10, #2
	cmp	w10, #4
	sub	w13, w11, #2
	csel	w10, w10, w12, lo
	csel	w11, w11, w13, lo
	cmp	w10, #2
	mov	w12, #-2
	csneg	w10, w12, w10, hs
	add	w10, w10, w11
	sub	w11, w10, #8
	lsl	w9, w9, w11
	mov	w11, #1124073472
	eor	w9, w9, #0x800000
	sub	w10, w11, w10, lsl #23
	orr	w9, w9, w10
	and	w8, w8, #0x8000
	orr	w8, w9, w8, lsl #16
	fmov	s0, w8
	ret
.Lfunc_end4:
	.size	__extendhfsf2, .Lfunc_end4-__extendhfsf2
	.cfi_endproc

	.type	__TVMAPISetLastError,@object
	.bss
	.weak	__TVMAPISetLastError
	.p2align	3
__TVMAPISetLastError:
	.xword	0
	.size	__TVMAPISetLastError, 8

	.type	__TVMBackendParallelLaunch,@object
	.weak	__TVMBackendParallelLaunch
	.p2align	3
__TVMBackendParallelLaunch:
	.xword	0
	.size	__TVMBackendParallelLaunch, 8

	.type	.L.str,@object
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	"Assert fail: num_args == 6, qgemm_lut_t4_int8_m8192_k4096_n1_b2: num_args should be 6"
	.size	.L.str, 86

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"Assert fail: not T.isnullptr(args), qgemm_lut_t4_int8_m8192_k4096_n1_b2: TVMValue* arg pointer was NULL"
	.size	.L.str.1, 104

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t4_int8_m8192_k4096_n1_b2: int* type_codes was NULL"
	.size	.L.str.2, 106

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[0] to be pointer"
	.size	.L.str.3, 137

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[1] to be pointer"
	.size	.L.str.4, 145

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[2] to be pointer"
	.size	.L.str.5, 157

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[3] to be pointer"
	.size	.L.str.6, 173

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[4] to be pointer"
	.size	.L.str.7, 173

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t4_int8_m8192_k4096_n1_b2: Expect arg[5] to be pointer"
	.size	.L.str.8, 137

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.9, 118

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.ndim is expected to equal 3"
	.size	.L.str.10, 120

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.11, 122

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.ndim is expected to equal 3"
	.size	.L.str.12, 124

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.13, 128

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"Assert fail: 3 == T.tvm_struct_get(Scales, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.ndim is expected to equal 3"
	.size	.L.str.14, 130

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.15, 136

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.ndim is expected to equal 2"
	.size	.L.str.16, 138

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.17, 136

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.ndim is expected to equal 2"
	.size	.L.str.18, 138

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.19, 118

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \"int32\"), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.ndim is expected to equal 2"
	.size	.L.str.20, 120

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"Assert fail: T.tvm_struct_get(A, 0, 5, \"uint8\") == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \"uint8\") == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.dtype is expected to be uint8"
	.size	.L.str.21, 239

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[0]) == 32, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape[0] has an unsatisfied constraint: 32 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[0])"
	.size	.L.str.22, 241

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[1]) == 1024, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[1])"
	.size	.L.str.23, 245

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[2]) == 128, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape[2] has an unsatisfied constraint: 128 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_shape[2])"
	.size	.L.str.24, 243

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_strides[2]) and 128 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_strides[1]) and 131072 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_A_strides[0]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides: expected to be compact array"
	.size	.L.str.25, 318

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \"uint64\")"
	.size	.L.str.26, 206

	.type	.L.str.27,@object
.L.str.27:
	.asciz	"Assert fail: T.tvm_struct_get(A, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \"int32\")"
	.size	.L.str.27, 186

	.type	.L.str.28,@object
.L.str.28:
	.asciz	"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m8192_k4096_n1_b2.A is expected to have non-NULL data pointer"
	.size	.L.str.28, 113

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"Assert fail: T.tvm_struct_get(LUT, 0, 5, \"uint8\") == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \"uint8\") == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.dtype is expected to be int8"
	.size	.L.str.29, 246

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[0])"
	.size	.L.str.30, 245

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[1]) == 1024, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[1])"
	.size	.L.str.31, 251

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_shape[2])"
	.size	.L.str.32, 247

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_strides[2]) and 16 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_strides[1]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides: expected to be compact array"
	.size	.L.str.33, 243

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \"uint64\")"
	.size	.L.str.34, 212

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"Assert fail: T.tvm_struct_get(LUT, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \"int32\")"
	.size	.L.str.35, 192

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \"int32\")"
	.size	.L.str.36, 198

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT is expected to have non-NULL data pointer"
	.size	.L.str.37, 117

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"Assert fail: T.tvm_struct_get(Scales, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.dtype is expected to be float16"
	.size	.L.str.38, 262

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[0]) == 32, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape[0] has an unsatisfied constraint: 32 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[0])"
	.size	.L.str.39, 256

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[1]) == 32, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape[1] has an unsatisfied constraint: 32 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[1])"
	.size	.L.str.40, 256

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[2]) == 128, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape[2] has an unsatisfied constraint: 128 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_shape[2])"
	.size	.L.str.41, 258

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_strides[2]) and 128 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_strides[1]) and 4096 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_Scales_strides[0]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides: expected to be compact array"
	.size	.L.str.42, 336

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \"uint64\")"
	.size	.L.str.43, 221

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"Assert fail: T.tvm_struct_get(Scales, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \"int32\")"
	.size	.L.str.44, 201

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \"int32\")"
	.size	.L.str.45, 207

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales is expected to have non-NULL data pointer"
	.size	.L.str.46, 123

	.type	.L.str.47,@object
.L.str.47:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.dtype is expected to be float16"
	.size	.L.str.47, 278

	.type	.L.str.48,@object
.L.str.48:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[0])"
	.size	.L.str.48, 266

	.type	.L.str.49,@object
.L.str.49:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[1]) == 64, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 64 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[1])"
	.size	.L.str.49, 268

	.type	.L.str.50,@object
.L.str.50:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides: expected to be compact array"
	.size	.L.str.50, 179

	.type	.L.str.51,@object
.L.str.51:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \"uint64\")"
	.size	.L.str.51, 233

	.type	.L.str.52,@object
.L.str.52:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \"int32\")"
	.size	.L.str.52, 213

	.type	.L.str.53,@object
.L.str.53:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \"int32\")"
	.size	.L.str.53, 219

	.type	.L.str.54,@object
.L.str.54:
	.asciz	"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales is expected to have non-NULL data pointer"
	.size	.L.str.54, 131

	.type	.L.str.55,@object
.L.str.55:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.dtype is expected to be float16"
	.size	.L.str.55, 278

	.type	.L.str.56,@object
.L.str.56:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[0])"
	.size	.L.str.56, 266

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[1]) == 64, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 64 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[1])"
	.size	.L.str.57, 268

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides: expected to be compact array"
	.size	.L.str.58, 179

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \"uint64\")"
	.size	.L.str.59, 233

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \"int32\")"
	.size	.L.str.60, 213

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \"int32\")"
	.size	.L.str.61, 219

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases is expected to have non-NULL data pointer"
	.size	.L.str.62, 131

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"Assert fail: T.tvm_struct_get(C, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.dtype is expected to be float16"
	.size	.L.str.63, 242

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_shape[0])"
	.size	.L.str.64, 239

	.type	.L.str.65,@object
.L.str.65:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_shape[1]) == 4096, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape[1] has an unsatisfied constraint: 4096 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_shape[1])"
	.size	.L.str.65, 245

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m8192_k4096_n1_b2_C_strides[1]), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides: expected to be compact array"
	.size	.L.str.66, 161

	.type	.L.str.67,@object
.L.str.67:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \"uint64\")"
	.size	.L.str.67, 206

	.type	.L.str.68,@object
.L.str.68:
	.asciz	"Assert fail: T.tvm_struct_get(C, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \"int32\")"
	.size	.L.str.68, 186

	.type	.L.str.69,@object
.L.str.69:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \"int32\")"
	.size	.L.str.69, 192

	.type	.L.str.70,@object
.L.str.70:
	.asciz	"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m8192_k4096_n1_b2.C is expected to have non-NULL data pointer"
	.size	.L.str.70, 113

	.type	__tvm_main__,@object
	.weak	__tvm_main__
__tvm_main__:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2"
	.size	__tvm_main__, 36

	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp62-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp62-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp143-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp144-.Lfunc_begin0
	.xword	.Ltmp145-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp146-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp146-.Lfunc_begin0
	.xword	.Ltmp147-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp147-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp148-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp150-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp150-.Lfunc_begin0
	.xword	.Ltmp151-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp151-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp152-.Lfunc_begin0
	.xword	.Ltmp153-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp154-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp154-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp157-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp158-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp158-.Lfunc_begin0
	.xword	.Ltmp159-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp159-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp161-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp162-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp163-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp163-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp164-.Lfunc_begin0
	.xword	.Ltmp165-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp166-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp166-.Lfunc_begin0
	.xword	.Ltmp167-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp167-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp168-.Lfunc_begin0
	.xword	.Ltmp169-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp170-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp170-.Lfunc_begin0
	.xword	.Ltmp171-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp171-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp172-.Lfunc_begin0
	.xword	.Ltmp173-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp174-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp174-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp175-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp176-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp178-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp178-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp180-.Lfunc_begin0
	.xword	.Ltmp181-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp182-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp182-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp184-.Lfunc_begin0
	.xword	.Ltmp185-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp187-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp187-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp188-.Lfunc_begin0
	.xword	.Ltmp190-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp190-.Lfunc_begin0
	.xword	.Ltmp191-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp191-.Lfunc_begin0
	.xword	.Ltmp193-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp194-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp196-.Lfunc_begin0
	.xword	.Ltmp197-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp199-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp199-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc1:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp61-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp61-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp143-.Lfunc_begin0
	.xword	.Ltmp155-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc2:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp63-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp63-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp143-.Lfunc_begin0
	.xword	.Ltmp155-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc3:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp64-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp64-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp143-.Lfunc_begin0
	.xword	.Ltmp155-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc4:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp65-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp65-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp143-.Lfunc_begin0
	.xword	.Ltmp155-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc5:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp66-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp66-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp143-.Lfunc_begin0
	.xword	.Ltmp155-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc6:
	.xword	.Ltmp4-.Lfunc_begin0
	.xword	.Ltmp6-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc7:
	.xword	.Ltmp8-.Lfunc_begin0
	.xword	.Ltmp10-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc8:
	.xword	.Ltmp12-.Lfunc_begin0
	.xword	.Ltmp14-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc9:
	.xword	.Ltmp16-.Lfunc_begin0
	.xword	.Ltmp18-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc10:
	.xword	.Ltmp20-.Lfunc_begin0
	.xword	.Ltmp22-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc11:
	.xword	.Ltmp24-.Lfunc_begin0
	.xword	.Ltmp26-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc12:
	.xword	.Ltmp43-.Lfunc_begin0
	.xword	.Ltmp138-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp182-.Lfunc_begin0
	.xword	.Ltmp183-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp186-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp188-.Lfunc_begin0
	.xword	.Ltmp189-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp191-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Ltmp195-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp198-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Ltmp201-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp203-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp206-.Lfunc_begin0
	.xword	.Ltmp207-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp210-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp212-.Lfunc_begin0
	.xword	.Ltmp213-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp215-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp218-.Lfunc_begin0
	.xword	.Ltmp219-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp222-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp224-.Lfunc_begin0
	.xword	.Ltmp225-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp230-.Lfunc_begin0
	.xword	.Ltmp231-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp234-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp236-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp239-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp243-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp246-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp248-.Lfunc_begin0
	.xword	.Ltmp249-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp251-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp254-.Lfunc_begin0
	.xword	.Ltmp255-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp258-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp260-.Lfunc_begin0
	.xword	.Ltmp261-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp263-.Lfunc_begin0
	.xword	.Ltmp264-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp266-.Lfunc_begin0
	.xword	.Ltmp267-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp269-.Lfunc_begin0
	.xword	.Ltmp270-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp272-.Lfunc_begin0
	.xword	.Ltmp273-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp276-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp278-.Lfunc_begin0
	.xword	.Ltmp279-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp281-.Lfunc_begin0
	.xword	.Ltmp282-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp284-.Lfunc_begin0
	.xword	.Ltmp285-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp287-.Lfunc_begin0
	.xword	.Ltmp288-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp291-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp293-.Lfunc_begin0
	.xword	.Ltmp294-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp296-.Lfunc_begin0
	.xword	.Ltmp297-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp299-.Lfunc_begin0
	.xword	.Ltmp300-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp302-.Lfunc_begin0
	.xword	.Ltmp303-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp305-.Lfunc_begin0
	.xword	.Ltmp306-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp308-.Lfunc_begin0
	.xword	.Ltmp309-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp311-.Lfunc_begin0
	.xword	.Ltmp312-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp314-.Lfunc_begin0
	.xword	.Ltmp315-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp317-.Lfunc_begin0
	.xword	.Ltmp318-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp320-.Lfunc_begin0
	.xword	.Ltmp321-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Ltmp324-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp326-.Lfunc_begin0
	.xword	.Ltmp327-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp329-.Lfunc_begin0
	.xword	.Ltmp330-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc13:
	.xword	.Ltmp40-.Lfunc_begin0
	.xword	.Ltmp126-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp178-.Lfunc_begin0
	.xword	.Ltmp308-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc14:
	.xword	.Ltmp37-.Lfunc_begin0
	.xword	.Ltmp114-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp174-.Lfunc_begin0
	.xword	.Ltmp284-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc15:
	.xword	.Ltmp34-.Lfunc_begin0
	.xword	.Ltmp102-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp170-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc16:
	.xword	.Ltmp31-.Lfunc_begin0
	.xword	.Ltmp87-.Lfunc_begin0
	.hword	2
	.byte	118
	.byte	0
	.xword	.Ltmp166-.Lfunc_begin0
	.xword	.Ltmp233-.Lfunc_begin0
	.hword	2
	.byte	118
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc17:
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	.Ltmp73-.Lfunc_begin0
	.hword	2
	.byte	131
	.byte	0
	.xword	.Ltmp162-.Lfunc_begin0
	.xword	.Ltmp206-.Lfunc_begin0
	.hword	2
	.byte	131
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc18:
	.xword	.Ltmp61-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc19:
	.xword	.Ltmp60-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc20:
	.xword	.Ltmp59-.Lfunc_begin0
	.xword	.Ltmp70-.Lfunc_begin0
	.hword	2
	.byte	135
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc21:
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp52-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp191-.Lfunc_begin0
	.xword	.Ltmp197-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc22:
	.xword	.Ltmp62-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Ltmp202-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp203-.Lfunc_begin0
	.xword	.Ltmp205-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp206-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp211-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp212-.Lfunc_begin0
	.xword	.Ltmp214-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp215-.Lfunc_begin0
	.xword	.Ltmp217-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp218-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp224-.Lfunc_begin0
	.xword	.Ltmp226-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp227-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp230-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp235-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp236-.Lfunc_begin0
	.xword	.Ltmp238-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp239-.Lfunc_begin0
	.xword	.Ltmp241-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp242-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp248-.Lfunc_begin0
	.xword	.Ltmp250-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp251-.Lfunc_begin0
	.xword	.Ltmp253-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp254-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp259-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp260-.Lfunc_begin0
	.xword	.Ltmp262-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp263-.Lfunc_begin0
	.xword	.Ltmp265-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp266-.Lfunc_begin0
	.xword	.Ltmp268-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp269-.Lfunc_begin0
	.xword	.Ltmp271-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp272-.Lfunc_begin0
	.xword	.Ltmp274-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp275-.Lfunc_begin0
	.xword	.Ltmp277-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp278-.Lfunc_begin0
	.xword	.Ltmp280-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp281-.Lfunc_begin0
	.xword	.Ltmp283-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp284-.Lfunc_begin0
	.xword	.Ltmp286-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp287-.Lfunc_begin0
	.xword	.Ltmp289-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp290-.Lfunc_begin0
	.xword	.Ltmp292-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp293-.Lfunc_begin0
	.xword	.Ltmp295-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp296-.Lfunc_begin0
	.xword	.Ltmp298-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp299-.Lfunc_begin0
	.xword	.Ltmp301-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp302-.Lfunc_begin0
	.xword	.Ltmp304-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp305-.Lfunc_begin0
	.xword	.Ltmp307-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp308-.Lfunc_begin0
	.xword	.Ltmp310-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp311-.Lfunc_begin0
	.xword	.Ltmp313-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp314-.Lfunc_begin0
	.xword	.Ltmp316-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp317-.Lfunc_begin0
	.xword	.Ltmp319-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp320-.Lfunc_begin0
	.xword	.Ltmp322-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Ltmp325-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp326-.Lfunc_begin0
	.xword	.Ltmp328-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp329-.Lfunc_begin0
	.xword	.Ltmp331-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp332-.Lfunc_begin0
	.xword	.Ltmp333-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp334-.Lfunc_begin0
	.xword	.Ltmp335-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc23:
	.xword	.Ltmp54-.Lfunc_begin0
	.xword	.Ltmp142-.Lfunc_begin0
	.hword	2
	.byte	133
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	133
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc24:
	.xword	.Ltmp54-.Lfunc_begin0
	.xword	.Ltmp142-.Lfunc_begin0
	.hword	2
	.byte	134
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	134
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc25:
	.xword	.Ltmp63-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc26:
	.xword	.Ltmp55-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	119
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	119
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc27:
	.xword	.Ltmp55-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	2
	.byte	132
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	132
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc28:
	.xword	.Ltmp64-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc29:
	.xword	.Ltmp56-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc30:
	.xword	.Ltmp56-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc31:
	.xword	.Ltmp65-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	116
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	116
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc32:
	.xword	.Ltmp57-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc33:
	.xword	.Ltmp57-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc34:
	.xword	.Ltmp58-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc35:
	.xword	.Ltmp58-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc36:
	.xword	.Ltmp66-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	2
	.byte	117
	.byte	0
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	117
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc37:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp338-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp338-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc38:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp339-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp339-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc39:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp340-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp340-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc40:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp341-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp341-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc41:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp341-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp341-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc42:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp341-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp341-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	0
	.xword	0
	.section	.debug_abbrev,"",@progbits
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
	.byte	23
	.byte	27
	.byte	14
	.ascii	"\264B"
	.byte	25
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	6
	.byte	64
	.byte	24
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	3
	.byte	5
	.byte	0
	.byte	2
	.byte	23
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
	.byte	23
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
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0
.Ldebug_info_start0:
	.hword	4
	.word	.debug_abbrev
	.byte	8
	.byte	1
	.word	.Linfo_string0
	.hword	2
	.word	.Linfo_string1
	.word	.Lline_table_start0
	.word	.Linfo_string2

	.xword	.Lfunc_begin0
	.word	.Lfunc_end1-.Lfunc_begin0
	.byte	2
	.xword	.Lfunc_begin0
	.word	.Lfunc_end0-.Lfunc_begin0
	.byte	1
	.byte	111
	.word	.Linfo_string3
	.word	649
	.byte	3
	.word	.Ldebug_loc0
	.word	.Linfo_string6
	.word	656
	.byte	3
	.word	.Ldebug_loc1
	.word	.Linfo_string7
	.word	657
	.byte	3
	.word	.Ldebug_loc2
	.word	.Linfo_string8
	.word	649
	.byte	3
	.word	.Ldebug_loc3
	.word	.Linfo_string9
	.word	656
	.byte	3
	.word	.Ldebug_loc4
	.word	.Linfo_string10
	.word	657
	.byte	3
	.word	.Ldebug_loc5
	.word	.Linfo_string11
	.word	656
	.byte	4
	.word	.Ldebug_loc6
	.word	.Linfo_string12
	.word	649
	.byte	4
	.word	.Ldebug_loc7
	.word	.Linfo_string13
	.word	649
	.byte	4
	.word	.Ldebug_loc8
	.word	.Linfo_string14
	.word	649
	.byte	4
	.word	.Ldebug_loc9
	.word	.Linfo_string15
	.word	649
	.byte	4
	.word	.Ldebug_loc10
	.word	.Linfo_string16
	.word	649
	.byte	4
	.word	.Ldebug_loc11
	.word	.Linfo_string17
	.word	649
	.byte	4
	.word	.Ldebug_loc12
	.word	.Linfo_string18
	.word	656
	.byte	4
	.word	.Ldebug_loc13
	.word	.Linfo_string19
	.word	656
	.byte	4
	.word	.Ldebug_loc14
	.word	.Linfo_string20
	.word	656
	.byte	4
	.word	.Ldebug_loc15
	.word	.Linfo_string21
	.word	656
	.byte	4
	.word	.Ldebug_loc16
	.word	.Linfo_string22
	.word	656
	.byte	4
	.word	.Ldebug_loc17
	.word	.Linfo_string23
	.word	656
	.byte	4
	.word	.Ldebug_loc18
	.word	.Linfo_string23
	.word	662
	.byte	4
	.word	.Ldebug_loc19
	.word	.Linfo_string25
	.word	649
	.byte	4
	.word	.Ldebug_loc20
	.word	.Linfo_string26
	.word	674
	.byte	4
	.word	.Ldebug_loc21
	.word	.Linfo_string28
	.word	674
	.byte	4
	.word	.Ldebug_loc22
	.word	.Linfo_string22
	.word	686
	.byte	4
	.word	.Ldebug_loc23
	.word	.Linfo_string30
	.word	674
	.byte	4
	.word	.Ldebug_loc24
	.word	.Linfo_string31
	.word	674
	.byte	4
	.word	.Ldebug_loc25
	.word	.Linfo_string21
	.word	698
	.byte	4
	.word	.Ldebug_loc26
	.word	.Linfo_string33
	.word	674
	.byte	4
	.word	.Ldebug_loc27
	.word	.Linfo_string34
	.word	674
	.byte	4
	.word	.Ldebug_loc28
	.word	.Linfo_string20
	.word	698
	.byte	4
	.word	.Ldebug_loc29
	.word	.Linfo_string35
	.word	674
	.byte	4
	.word	.Ldebug_loc30
	.word	.Linfo_string36
	.word	674
	.byte	4
	.word	.Ldebug_loc31
	.word	.Linfo_string19
	.word	698
	.byte	4
	.word	.Ldebug_loc32
	.word	.Linfo_string37
	.word	674
	.byte	4
	.word	.Ldebug_loc33
	.word	.Linfo_string38
	.word	674
	.byte	4
	.word	.Ldebug_loc34
	.word	.Linfo_string39
	.word	674
	.byte	4
	.word	.Ldebug_loc35
	.word	.Linfo_string40
	.word	674
	.byte	4
	.word	.Ldebug_loc36
	.word	.Linfo_string18
	.word	698
	.byte	0
	.byte	2
	.xword	.Lfunc_begin1
	.word	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	111
	.word	.Linfo_string5
	.word	649
	.byte	3
	.word	.Ldebug_loc37
	.word	.Linfo_string22
	.word	686
	.byte	3
	.word	.Ldebug_loc38
	.word	.Linfo_string23
	.word	662
	.byte	3
	.word	.Ldebug_loc39
	.word	.Linfo_string21
	.word	698
	.byte	3
	.word	.Ldebug_loc40
	.word	.Linfo_string20
	.word	698
	.byte	3
	.word	.Ldebug_loc41
	.word	.Linfo_string19
	.word	698
	.byte	3
	.word	.Ldebug_loc42
	.word	.Linfo_string18
	.word	698
	.byte	0
	.byte	5
	.word	.Linfo_string4
	.byte	5
	.byte	4
	.byte	6
	.byte	7
	.word	649
	.byte	7
	.word	667
	.byte	5
	.word	.Linfo_string24
	.byte	7
	.byte	1
	.byte	7
	.word	679
	.byte	5
	.word	.Linfo_string27
	.byte	5
	.byte	8
	.byte	7
	.word	691
	.byte	5
	.word	.Linfo_string29
	.byte	5
	.byte	1
	.byte	7
	.word	703
	.byte	5
	.word	.Linfo_string32
	.byte	4
	.byte	2
	.byte	0
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"TVM"
.Linfo_string1:
	.asciz	"IRModule.CodeGenLLVM"
.Linfo_string2:
	.asciz	"."
.Linfo_string3:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2"
.Linfo_string4:
	.asciz	"int32"
.Linfo_string5:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_"
.Linfo_string6:
	.asciz	"args"
.Linfo_string7:
	.asciz	"arg_type_ids"
.Linfo_string8:
	.asciz	"num_args"
.Linfo_string9:
	.asciz	"out_ret_value"
.Linfo_string10:
	.asciz	"out_ret_tcode"
.Linfo_string11:
	.asciz	"resource_handle"
.Linfo_string12:
	.asciz	"A.code"
.Linfo_string13:
	.asciz	"LUT.code"
.Linfo_string14:
	.asciz	"Scales.code"
.Linfo_string15:
	.asciz	"LUT_Scales.code"
.Linfo_string16:
	.asciz	"LUT_Biases.code"
.Linfo_string17:
	.asciz	"C.code"
.Linfo_string18:
	.asciz	"C"
.Linfo_string19:
	.asciz	"LUT_Biases"
.Linfo_string20:
	.asciz	"LUT_Scales"
.Linfo_string21:
	.asciz	"Scales"
.Linfo_string22:
	.asciz	"LUT"
.Linfo_string23:
	.asciz	"A"
.Linfo_string24:
	.asciz	"uint8"
.Linfo_string25:
	.asciz	"dev_id"
.Linfo_string26:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.strides"
.Linfo_string27:
	.asciz	"int64"
.Linfo_string28:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.A.shape"
.Linfo_string29:
	.asciz	"int8"
.Linfo_string30:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.strides"
.Linfo_string31:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT.shape"
.Linfo_string32:
	.asciz	"float16"
.Linfo_string33:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.strides"
.Linfo_string34:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.Scales.shape"
.Linfo_string35:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides"
.Linfo_string36:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape"
.Linfo_string37:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides"
.Linfo_string38:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape"
.Linfo_string39:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.shape"
.Linfo_string40:
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2.C.strides"
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.hword	2
	.word	.Lcu_begin0
	.word	711
	.word	42
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2"
	.word	547
	.asciz	"qgemm_lut_t4_int8_m8192_k4096_n1_b2_compute_"
	.word	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.hword	2
	.word	.Lcu_begin0
	.word	711
	.word	649
	.asciz	"int32"
	.word	691
	.asciz	"int8"
	.word	679
	.asciz	"int64"
	.word	667
	.asciz	"uint8"
	.word	703
	.asciz	"float16"
	.word	0
.LpubTypes_end0:
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
