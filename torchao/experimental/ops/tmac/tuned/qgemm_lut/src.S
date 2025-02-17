	.text
	.file	"TVMMod"
	.globl	qgemm_lut_t4_int8_m6400_k3200_n1_b2
	.p2align	2
	.type	qgemm_lut_t4_int8_m6400_k3200_n1_b2,@function
qgemm_lut_t4_int8_m6400_k3200_n1_b2:
.Lfunc_begin0:
	.file	1 "./IRModule.CodeGenLLVM"
	.loc	1 0 0
	.cfi_startproc
	stp	x30, x23, [sp, #-48]!
	stp	x22, x21, [sp, #16]
	stp	x20, x19, [sp, #32]
	.cfi_def_cfa_offset 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -24
	.cfi_offset w22, -32
	.cfi_offset w23, -40
	.cfi_offset w30, -48
.Ltmp0:
	cmp	w2, #6
	b.ne	.LBB0_102
.Ltmp1:
	cbz	x0, .LBB0_103
.Ltmp2:
	cbz	x1, .LBB0_104
.Ltmp3:
	ldr	w8, [x1]
.Ltmp4:
	cmp	w8, #13
	b.hi	.LBB0_95
.Ltmp5:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp6:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_95
.Ltmp7:
	ldr	w8, [x1, #4]
.Ltmp8:
	cmp	w8, #13
	b.hi	.LBB0_96
.Ltmp9:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp10:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_96
.Ltmp11:
	ldr	w8, [x1, #8]
.Ltmp12:
	cmp	w8, #13
	b.hi	.LBB0_97
.Ltmp13:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp14:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_97
.Ltmp15:
	ldr	w8, [x1, #12]
.Ltmp16:
	cmp	w8, #13
	b.hi	.LBB0_98
.Ltmp17:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp18:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_98
.Ltmp19:
	ldr	w8, [x1, #16]
.Ltmp20:
	cmp	w8, #13
	b.hi	.LBB0_99
.Ltmp21:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp22:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_99
.Ltmp23:
	ldr	w8, [x1, #20]
.Ltmp24:
	cmp	w8, #13
	b.hi	.LBB0_100
.Ltmp25:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp26:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_100
.Ltmp27:
	ldr	x7, [x0]
.Ltmp28:
	cbz	x7, .LBB0_105
.Ltmp29:
	ldr	w8, [x7, #16]
	cmp	w8, #3
	b.ne	.LBB0_106
.Ltmp30:
	ldr	x17, [x0, #8]
.Ltmp31:
	cbz	x17, .LBB0_107
.Ltmp32:
	ldr	w8, [x17, #16]
	cmp	w8, #3
	b.ne	.LBB0_108
.Ltmp33:
	ldr	x15, [x0, #16]
.Ltmp34:
	cbz	x15, .LBB0_109
.Ltmp35:
	ldr	w8, [x15, #16]
	cmp	w8, #1
	b.ne	.LBB0_110
.Ltmp36:
	ldr	x13, [x0, #24]
.Ltmp37:
	cbz	x13, .LBB0_111
.Ltmp38:
	ldr	w8, [x13, #16]
	cmp	w8, #2
	b.ne	.LBB0_112
.Ltmp39:
	ldr	x9, [x0, #32]
.Ltmp40:
	cbz	x9, .LBB0_113
.Ltmp41:
	ldr	w8, [x9, #16]
	cmp	w8, #2
	b.ne	.LBB0_114
.Ltmp42:
	ldr	x8, [x0, #40]
.Ltmp43:
	cbz	x8, .LBB0_115
.Ltmp44:
	ldr	w10, [x8, #16]
	cmp	w10, #2
	b.ne	.LBB0_116
.Ltmp45:
	ldrb	w10, [x7, #20]
	cmp	w10, #1
	b.ne	.LBB0_117
.Ltmp46:
	ldrb	w10, [x7, #21]
	cmp	w10, #8
	b.ne	.LBB0_117
.Ltmp47:
	ldrh	w10, [x7, #22]
	cmp	w10, #1
	b.ne	.LBB0_117
.Ltmp48:
	ldr	x10, [x7, #24]
.Ltmp49:
	ldr	w11, [x10]
	cmp	w11, #50
	b.ne	.LBB0_118
.Ltmp50:
	ldr	w11, [x10, #8]
	cmp	w11, #800
	b.ne	.LBB0_119
.Ltmp51:
	ldr	w10, [x10, #16]
.Ltmp52:
	cmp	w10, #64
	b.ne	.LBB0_120
.Ltmp53:
	ldp	x21, x20, [x17, #24]
.Ltmp54:
	ldp	x6, x18, [x13, #24]
.Ltmp55:
	ldp	x16, x14, [x9, #24]
.Ltmp56:
	ldp	x12, x11, [x8, #24]
.Ltmp57:
	ldr	x22, [x7, #32]
.Ltmp58:
	ldr	w10, [x7, #12]
.Ltmp59:
	ldr	x1, [x7]
.Ltmp60:
	ldr	x0, [x17]
.Ltmp61:
	ldr	x19, [x15, #24]
.Ltmp62:
	ldr	x2, [x15]
.Ltmp63:
	ldr	x3, [x13]
.Ltmp64:
	ldr	x4, [x9]
.Ltmp65:
	ldr	x5, [x8]
.Ltmp66:
	cbz	x22, .LBB0_37
.Ltmp67:
	ldr	w23, [x22, #16]
	cmp	w23, #1
	b.ne	.LBB0_121
.Ltmp68:
	ldr	w23, [x22, #8]
	cmp	w23, #64
	b.ne	.LBB0_121
.Ltmp69:
	ldr	w22, [x22]
.Ltmp70:
	mov	w23, #51200
	cmp	w22, w23
	b.ne	.LBB0_121
.Ltmp71:
.LBB0_37:
	ldr	x22, [x7, #40]
	cbnz	x22, .LBB0_122
.Ltmp72:
	ldr	w7, [x7, #8]
.Ltmp73:
	cmp	w7, #1
	b.ne	.LBB0_123
.Ltmp74:
	cbz	x1, .LBB0_124
.Ltmp75:
	ldrb	w7, [x17, #20]
	cbnz	w7, .LBB0_125
.Ltmp76:
	ldrb	w7, [x17, #21]
	cmp	w7, #8
	b.ne	.LBB0_125
.Ltmp77:
	ldrh	w7, [x17, #22]
	cmp	w7, #1
	b.ne	.LBB0_125
.Ltmp78:
	ldr	w7, [x21]
	cmp	w7, #1
	b.ne	.LBB0_126
.Ltmp79:
	ldr	w7, [x21, #8]
	cmp	w7, #800
	b.ne	.LBB0_127
.Ltmp80:
	ldr	w7, [x21, #16]
	cmp	w7, #16
	b.ne	.LBB0_128
.Ltmp81:
	cbz	x20, .LBB0_49
.Ltmp82:
	ldr	w7, [x20, #16]
	cmp	w7, #1
	b.ne	.LBB0_129
.Ltmp83:
	ldr	w7, [x20, #8]
	cmp	w7, #16
	b.ne	.LBB0_129
.Ltmp84:
.LBB0_49:
	ldr	x7, [x17, #40]
	cbnz	x7, .LBB0_130
.Ltmp85:
	ldr	w7, [x17, #8]
	cmp	w7, #1
	b.ne	.LBB0_131
.Ltmp86:
	ldr	w17, [x17, #12]
.Ltmp87:
	cmp	w10, w17
	b.ne	.LBB0_132
.Ltmp88:
	cbz	x0, .LBB0_133
.Ltmp89:
	ldrb	w17, [x15, #20]
	cmp	w17, #2
	b.ne	.LBB0_134
.Ltmp90:
	ldrb	w17, [x15, #21]
	cmp	w17, #16
	b.ne	.LBB0_134
.Ltmp91:
	ldrh	w17, [x15, #22]
	cmp	w17, #1
	b.ne	.LBB0_134
.Ltmp92:
	ldr	w17, [x19]
	cmp	w17, #1
	b.ne	.LBB0_135
.Ltmp93:
	ldr	x17, [x15, #40]
	cbnz	x17, .LBB0_136
.Ltmp94:
	ldr	w17, [x15, #8]
	cmp	w17, #1
	b.ne	.LBB0_137
.Ltmp95:
	ldr	w15, [x15, #12]
.Ltmp96:
	cmp	w10, w15
	b.ne	.LBB0_138
.Ltmp97:
	cbz	x2, .LBB0_139
.Ltmp98:
	ldrb	w15, [x13, #20]
	cmp	w15, #2
	b.ne	.LBB0_140
.Ltmp99:
	ldrb	w15, [x13, #21]
	cmp	w15, #16
	b.ne	.LBB0_140
.Ltmp100:
	ldrh	w15, [x13, #22]
	cmp	w15, #1
	b.ne	.LBB0_140
.Ltmp101:
	ldr	w15, [x6]
	cmp	w15, #1
	b.ne	.LBB0_141
.Ltmp102:
	ldr	w15, [x6, #8]
	cmp	w15, #50
	b.ne	.LBB0_142
.Ltmp103:
	cbz	x18, .LBB0_68
.Ltmp104:
	ldr	w15, [x18, #8]
	cmp	w15, #1
	b.ne	.LBB0_143
.Ltmp105:
.LBB0_68:
	ldr	x15, [x13, #40]
	cbnz	x15, .LBB0_144
.Ltmp106:
	ldr	w15, [x13, #8]
	cmp	w15, #1
	b.ne	.LBB0_145
.Ltmp107:
	ldr	w13, [x13, #12]
.Ltmp108:
	cmp	w10, w13
	b.ne	.LBB0_146
.Ltmp109:
	cbz	x3, .LBB0_147
.Ltmp110:
	ldrb	w13, [x9, #20]
	cmp	w13, #2
	b.ne	.LBB0_148
.Ltmp111:
	ldrb	w13, [x9, #21]
	cmp	w13, #16
	b.ne	.LBB0_148
.Ltmp112:
	ldrh	w13, [x9, #22]
	cmp	w13, #1
	b.ne	.LBB0_148
.Ltmp113:
	ldr	w13, [x16]
	cmp	w13, #1
	b.ne	.LBB0_149
.Ltmp114:
	ldr	w13, [x16, #8]
	cmp	w13, #50
	b.ne	.LBB0_150
.Ltmp115:
	cbz	x14, .LBB0_79
.Ltmp116:
	ldr	w13, [x14, #8]
	cmp	w13, #1
	b.ne	.LBB0_151
.Ltmp117:
.LBB0_79:
	ldr	x13, [x9, #40]
	cbnz	x13, .LBB0_152
.Ltmp118:
	ldr	w13, [x9, #8]
	cmp	w13, #1
	b.ne	.LBB0_153
.Ltmp119:
	ldr	w9, [x9, #12]
.Ltmp120:
	cmp	w10, w9
	b.ne	.LBB0_154
.Ltmp121:
	cbz	x4, .LBB0_155
.Ltmp122:
	ldrb	w9, [x8, #20]
	cmp	w9, #2
	b.ne	.LBB0_156
.Ltmp123:
	ldrb	w9, [x8, #21]
	cmp	w9, #16
	b.ne	.LBB0_156
.Ltmp124:
	ldrh	w9, [x8, #22]
	cmp	w9, #1
	b.ne	.LBB0_156
.Ltmp125:
	ldr	w9, [x12]
	cmp	w9, #1
	b.ne	.LBB0_157
.Ltmp126:
	ldr	w9, [x12, #8]
	cmp	w9, #3200
	b.ne	.LBB0_158
.Ltmp127:
	cbz	x11, .LBB0_90
.Ltmp128:
	ldr	w9, [x11, #8]
	cmp	w9, #1
	b.ne	.LBB0_159
.Ltmp129:
.LBB0_90:
	ldr	x9, [x8, #40]
	cbnz	x9, .LBB0_160
.Ltmp130:
	ldr	w9, [x8, #8]
	cmp	w9, #1
	b.ne	.LBB0_161
.Ltmp131:
	ldr	w8, [x8, #12]
.Ltmp132:
	cmp	w10, w8
	b.ne	.LBB0_162
.Ltmp133:
	cbz	x5, .LBB0_163
.Ltmp134:
	ldp	x20, x19, [sp, #32]
.Ltmp135:
	ldp	x22, x21, [sp, #16]
.Ltmp136:
	ldp	x30, x23, [sp], #48
	b	qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_
.Ltmp137:
.LBB0_95:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.3
.Ltmp138:
	add	x0, x0, :lo12:.L.str.3
	b	.LBB0_101
.Ltmp139:
.LBB0_96:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.4
.Ltmp140:
	add	x0, x0, :lo12:.L.str.4
	b	.LBB0_101
.Ltmp141:
.LBB0_97:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.5
.Ltmp142:
	add	x0, x0, :lo12:.L.str.5
	b	.LBB0_101
.Ltmp143:
.LBB0_98:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.6
.Ltmp144:
	add	x0, x0, :lo12:.L.str.6
	b	.LBB0_101
.Ltmp145:
.LBB0_99:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.7
.Ltmp146:
	add	x0, x0, :lo12:.L.str.7
	b	.LBB0_101
.Ltmp147:
.LBB0_100:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.8
.Ltmp148:
	add	x0, x0, :lo12:.L.str.8
.Ltmp149:
.LBB0_101:
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
	ldp	x20, x19, [sp, #32]
	mov	w0, #-1
	ldp	x22, x21, [sp, #16]
	ldp	x30, x23, [sp], #48
	ret
.Ltmp150:
.LBB0_102:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str
.Ltmp151:
	add	x0, x0, :lo12:.L.str
	b	.LBB0_101
.Ltmp152:
.LBB0_103:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.1
.Ltmp153:
	add	x0, x0, :lo12:.L.str.1
	b	.LBB0_101
.Ltmp154:
.LBB0_104:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.2
.Ltmp155:
	add	x0, x0, :lo12:.L.str.2
	b	.LBB0_101
.Ltmp156:
.LBB0_105:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.9
.Ltmp157:
	add	x0, x0, :lo12:.L.str.9
	b	.LBB0_101
.Ltmp158:
.LBB0_106:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.10
.Ltmp159:
	add	x0, x0, :lo12:.L.str.10
	b	.LBB0_101
.Ltmp160:
.LBB0_107:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.11
.Ltmp161:
	add	x0, x0, :lo12:.L.str.11
	b	.LBB0_101
.Ltmp162:
.LBB0_108:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.12
.Ltmp163:
	add	x0, x0, :lo12:.L.str.12
	b	.LBB0_101
.Ltmp164:
.LBB0_109:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.13
.Ltmp165:
	add	x0, x0, :lo12:.L.str.13
	b	.LBB0_101
.Ltmp166:
.LBB0_110:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.14
.Ltmp167:
	add	x0, x0, :lo12:.L.str.14
	b	.LBB0_101
.Ltmp168:
.LBB0_111:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.15
.Ltmp169:
	add	x0, x0, :lo12:.L.str.15
	b	.LBB0_101
.Ltmp170:
.LBB0_112:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.16
.Ltmp171:
	add	x0, x0, :lo12:.L.str.16
	b	.LBB0_101
.Ltmp172:
.LBB0_113:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.17
.Ltmp173:
	add	x0, x0, :lo12:.L.str.17
	b	.LBB0_101
.Ltmp174:
.LBB0_114:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.18
.Ltmp175:
	add	x0, x0, :lo12:.L.str.18
	b	.LBB0_101
.Ltmp176:
.LBB0_115:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp177:
	adrp	x0, .L.str.19
.Ltmp178:
	add	x0, x0, :lo12:.L.str.19
	b	.LBB0_101
.Ltmp179:
.LBB0_116:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp180:
	adrp	x0, .L.str.20
.Ltmp181:
	add	x0, x0, :lo12:.L.str.20
	b	.LBB0_101
.Ltmp182:
.LBB0_117:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp183:
	adrp	x0, .L.str.21
.Ltmp184:
	add	x0, x0, :lo12:.L.str.21
	b	.LBB0_101
.Ltmp185:
.LBB0_118:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp186:
	adrp	x0, .L.str.22
.Ltmp187:
	add	x0, x0, :lo12:.L.str.22
	b	.LBB0_101
.Ltmp188:
.LBB0_119:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp189:
	adrp	x0, .L.str.23
.Ltmp190:
	add	x0, x0, :lo12:.L.str.23
	b	.LBB0_101
.Ltmp191:
.LBB0_120:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp192:
	adrp	x0, .L.str.24
.Ltmp193:
	add	x0, x0, :lo12:.L.str.24
	b	.LBB0_101
.Ltmp194:
.LBB0_121:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp195:
	adrp	x0, .L.str.25
.Ltmp196:
	add	x0, x0, :lo12:.L.str.25
	b	.LBB0_101
.Ltmp197:
.LBB0_122:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp198:
	adrp	x0, .L.str.26
.Ltmp199:
	add	x0, x0, :lo12:.L.str.26
	b	.LBB0_101
.Ltmp200:
.LBB0_123:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp201:
	adrp	x0, .L.str.27
.Ltmp202:
	add	x0, x0, :lo12:.L.str.27
	b	.LBB0_101
.Ltmp203:
.LBB0_124:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp204:
	adrp	x0, .L.str.28
.Ltmp205:
	add	x0, x0, :lo12:.L.str.28
	b	.LBB0_101
.Ltmp206:
.LBB0_125:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp207:
	adrp	x0, .L.str.29
.Ltmp208:
	add	x0, x0, :lo12:.L.str.29
	b	.LBB0_101
.Ltmp209:
.LBB0_126:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp210:
	adrp	x0, .L.str.30
.Ltmp211:
	add	x0, x0, :lo12:.L.str.30
	b	.LBB0_101
.Ltmp212:
.LBB0_127:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp213:
	adrp	x0, .L.str.31
.Ltmp214:
	add	x0, x0, :lo12:.L.str.31
	b	.LBB0_101
.Ltmp215:
.LBB0_128:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp216:
	adrp	x0, .L.str.32
.Ltmp217:
	add	x0, x0, :lo12:.L.str.32
	b	.LBB0_101
.Ltmp218:
.LBB0_129:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp219:
	adrp	x0, .L.str.33
.Ltmp220:
	add	x0, x0, :lo12:.L.str.33
	b	.LBB0_101
.Ltmp221:
.LBB0_130:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp222:
	adrp	x0, .L.str.34
.Ltmp223:
	add	x0, x0, :lo12:.L.str.34
	b	.LBB0_101
.Ltmp224:
.LBB0_131:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp225:
	adrp	x0, .L.str.35
.Ltmp226:
	add	x0, x0, :lo12:.L.str.35
	b	.LBB0_101
.Ltmp227:
.LBB0_132:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp228:
	adrp	x0, .L.str.36
.Ltmp229:
	add	x0, x0, :lo12:.L.str.36
	b	.LBB0_101
.Ltmp230:
.LBB0_133:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp231:
	adrp	x0, .L.str.37
.Ltmp232:
	add	x0, x0, :lo12:.L.str.37
	b	.LBB0_101
.Ltmp233:
.LBB0_134:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp234:
	adrp	x0, .L.str.38
.Ltmp235:
	add	x0, x0, :lo12:.L.str.38
	b	.LBB0_101
.Ltmp236:
.LBB0_135:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp237:
	adrp	x0, .L.str.39
.Ltmp238:
	add	x0, x0, :lo12:.L.str.39
	b	.LBB0_101
.Ltmp239:
.LBB0_136:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp240:
	adrp	x0, .L.str.41
.Ltmp241:
	add	x0, x0, :lo12:.L.str.41
	b	.LBB0_101
.Ltmp242:
.LBB0_137:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp243:
	adrp	x0, .L.str.42
.Ltmp244:
	add	x0, x0, :lo12:.L.str.42
	b	.LBB0_101
.Ltmp245:
.LBB0_138:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp246:
	adrp	x0, .L.str.43
.Ltmp247:
	add	x0, x0, :lo12:.L.str.43
	b	.LBB0_101
.Ltmp248:
.LBB0_139:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp249:
	adrp	x0, .L.str.44
.Ltmp250:
	add	x0, x0, :lo12:.L.str.44
	b	.LBB0_101
.Ltmp251:
.LBB0_140:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp252:
	adrp	x0, .L.str.45
.Ltmp253:
	add	x0, x0, :lo12:.L.str.45
	b	.LBB0_101
.Ltmp254:
.LBB0_141:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp255:
	adrp	x0, .L.str.46
.Ltmp256:
	add	x0, x0, :lo12:.L.str.46
	b	.LBB0_101
.Ltmp257:
.LBB0_142:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp258:
	adrp	x0, .L.str.47
.Ltmp259:
	add	x0, x0, :lo12:.L.str.47
	b	.LBB0_101
.Ltmp260:
.LBB0_143:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp261:
	adrp	x0, .L.str.48
.Ltmp262:
	add	x0, x0, :lo12:.L.str.48
	b	.LBB0_101
.Ltmp263:
.LBB0_144:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp264:
	adrp	x0, .L.str.49
.Ltmp265:
	add	x0, x0, :lo12:.L.str.49
	b	.LBB0_101
.Ltmp266:
.LBB0_145:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp267:
	adrp	x0, .L.str.50
.Ltmp268:
	add	x0, x0, :lo12:.L.str.50
	b	.LBB0_101
.Ltmp269:
.LBB0_146:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp270:
	adrp	x0, .L.str.51
.Ltmp271:
	add	x0, x0, :lo12:.L.str.51
	b	.LBB0_101
.Ltmp272:
.LBB0_147:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp273:
	adrp	x0, .L.str.52
.Ltmp274:
	add	x0, x0, :lo12:.L.str.52
	b	.LBB0_101
.Ltmp275:
.LBB0_148:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp276:
	adrp	x0, .L.str.53
.Ltmp277:
	add	x0, x0, :lo12:.L.str.53
	b	.LBB0_101
.Ltmp278:
.LBB0_149:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp279:
	adrp	x0, .L.str.54
.Ltmp280:
	add	x0, x0, :lo12:.L.str.54
	b	.LBB0_101
.Ltmp281:
.LBB0_150:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp282:
	adrp	x0, .L.str.55
.Ltmp283:
	add	x0, x0, :lo12:.L.str.55
	b	.LBB0_101
.Ltmp284:
.LBB0_151:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp285:
	adrp	x0, .L.str.56
.Ltmp286:
	add	x0, x0, :lo12:.L.str.56
	b	.LBB0_101
.Ltmp287:
.LBB0_152:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp288:
	adrp	x0, .L.str.57
.Ltmp289:
	add	x0, x0, :lo12:.L.str.57
	b	.LBB0_101
.Ltmp290:
.LBB0_153:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp291:
	adrp	x0, .L.str.58
.Ltmp292:
	add	x0, x0, :lo12:.L.str.58
	b	.LBB0_101
.Ltmp293:
.LBB0_154:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp294:
	adrp	x0, .L.str.59
.Ltmp295:
	add	x0, x0, :lo12:.L.str.59
	b	.LBB0_101
.Ltmp296:
.LBB0_155:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp297:
	adrp	x0, .L.str.60
.Ltmp298:
	add	x0, x0, :lo12:.L.str.60
	b	.LBB0_101
.Ltmp299:
.LBB0_156:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp300:
	adrp	x0, .L.str.61
.Ltmp301:
	add	x0, x0, :lo12:.L.str.61
	b	.LBB0_101
.Ltmp302:
.LBB0_157:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp303:
	adrp	x0, .L.str.62
.Ltmp304:
	add	x0, x0, :lo12:.L.str.62
	b	.LBB0_101
.Ltmp305:
.LBB0_158:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp306:
	adrp	x0, .L.str.63
.Ltmp307:
	add	x0, x0, :lo12:.L.str.63
	b	.LBB0_101
.Ltmp308:
.LBB0_159:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp309:
	adrp	x0, .L.str.64
.Ltmp310:
	add	x0, x0, :lo12:.L.str.64
	b	.LBB0_101
.Ltmp311:
.LBB0_160:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp312:
	adrp	x0, .L.str.65
.Ltmp313:
	add	x0, x0, :lo12:.L.str.65
	b	.LBB0_101
.Ltmp314:
.LBB0_161:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp315:
	adrp	x0, .L.str.66
.Ltmp316:
	add	x0, x0, :lo12:.L.str.66
	b	.LBB0_101
.Ltmp317:
.LBB0_162:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.67
.Ltmp318:
	add	x0, x0, :lo12:.L.str.67
	b	.LBB0_101
.Ltmp319:
.LBB0_163:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.68
.Ltmp320:
	add	x0, x0, :lo12:.L.str.68
	b	.LBB0_101
.Ltmp321:
.Lfunc_end0:
	.size	qgemm_lut_t4_int8_m6400_k3200_n1_b2, .Lfunc_end0-qgemm_lut_t4_int8_m6400_k3200_n1_b2
	.cfi_endproc

	.p2align	2
	.type	qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_,@function
qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_:
.Lfunc_begin1:
	.loc	1 0 0
	.cfi_startproc
	sub	sp, sp, #64
	str	x30, [sp, #48]
	.cfi_def_cfa_offset 64
	.cfi_offset w30, -16
.Ltmp322:
	adrp	x8, :got:__TVMBackendParallelLaunch
	ldr	x8, [x8, :got_lo12:__TVMBackendParallelLaunch]
	str	x0, [sp]
	adrp	x0, .L__tvm_parallel_lambda
.Ltmp323:
	stp	x1, x2, [sp, #8]
	add	x0, x0, :lo12:.L__tvm_parallel_lambda
	mov	x1, sp
.Ltmp324:
	ldr	x8, [x8]
	mov	w2, wzr
.Ltmp325:
	stp	x3, x4, [sp, #24]
	str	x5, [sp, #40]
	blr	x8
.Ltmp326:
	ldr	x30, [sp, #48]
	add	sp, sp, #64
	ret
.Ltmp327:
.Lfunc_end1:
	.size	qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_, .Lfunc_end1-qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_
	.cfi_endproc

	.p2align	2
	.type	.L__tvm_parallel_lambda,@function
.L__tvm_parallel_lambda:
.Lfunc_begin2:
	.cfi_startproc
	stp	d15, d14, [sp, #-80]!
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	str	x29, [sp, #64]
	sub	sp, sp, #560
	.cfi_def_cfa_offset 640
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	.cfi_offset b10, -40
	.cfi_offset b11, -48
	.cfi_offset b12, -56
	.cfi_offset b13, -64
	.cfi_offset b14, -72
	.cfi_offset b15, -80
	ldr	w9, [x1, #8]
	mov	w8, #50
	add	w10, w9, #49
	sdiv	w9, w10, w9
	mul	w10, w9, w0
	cmp	w10, #50
	add	w9, w9, w10
	csel	w15, w10, w8, lt
	cmp	w9, #50
	csel	w14, w9, w8, lt
	cmp	w15, w14
	b.ge	.LBB2_7
	ldp	x9, x16, [x2]
	mov	w11, #51200
	sxtw	x10, w15
	ldp	x12, x13, [x2, #16]
	add	x18, sp, #176
	add	x8, sp, #432
	movi	v1.16b, #15
	sxtw	x14, w14
	smaddl	x17, w15, w11, x16
	add	x18, x18, #32
	ldp	x15, x16, [x2, #32]
	add	x17, x17, #128
.LBB2_2:
	movi	v0.2d, #0000000000000000
	ld1r	{ v3.8h }, [x12]
	mov	x0, xzr
	mov	x1, x17
	stp	q0, q0, [sp, #400]
	stp	q0, q0, [sp, #368]
	stp	q0, q0, [sp, #336]
	stp	q0, q0, [sp, #304]
	stp	q0, q0, [sp, #272]
	stp	q0, q0, [sp, #240]
	stp	q0, q0, [sp, #208]
	stp	q0, q0, [sp, #176]
.LBB2_3:
	add	x4, x9, x0, lsl #8
	lsl	x2, x0, #1
	add	x3, x13, x2
	add	x2, x15, x2
	ldp	q2, q0, [x4]
	ldp	q24, q25, [x4, #192]
	stp	q0, q2, [sp, #144]
	ldp	q2, q0, [x4, #32]
	ldp	q28, q29, [x4, #224]
	stp	q0, q2, [sp, #112]
	ldp	q2, q0, [x4, #64]
	ld1r	{ v26.8h }, [x3]
	mov	x3, x18
	ld1r	{ v27.8h }, [x2]
	mov	x2, #-16
	stp	q0, q2, [sp, #80]
	ldp	q2, q0, [x4, #96]
	stp	q0, q2, [sp, #48]
	ldp	q2, q0, [x4, #128]
	stp	q0, q2, [sp, #16]
	ldp	q0, q23, [x4, #160]
	mov	x4, x1
	str	q0, [sp]
.LBB2_4:
	ldp	q0, q2, [x4, #-128]
	add	x2, x2, #16
	cmp	x2, #48
	and	v9.16b, v0.16b, v1.16b
	ushr	v0.16b, v0.16b, #4
	ldp	q16, q7, [sp, #144]
	and	v10.16b, v2.16b, v1.16b
	ushr	v2.16b, v2.16b, #4
	tbl	v13.16b, { v16.16b }, v10.16b
	ldp	q4, q30, [x4, #-96]
	tbl	v12.16b, { v7.16b }, v9.16b
	tbl	v2.16b, { v16.16b }, v2.16b
	and	v11.16b, v4.16b, v1.16b
	saddl2	v15.8h, v13.16b, v12.16b
	ldp	q18, q17, [sp, #112]
	and	v14.16b, v30.16b, v1.16b
	saddl	v12.8h, v13.8b, v12.8b
	ushr	v4.16b, v4.16b, #4
	tbl	v14.16b, { v18.16b }, v14.16b
	ldp	q8, q31, [x4, #-64]
	tbl	v11.16b, { v17.16b }, v11.16b
	and	v13.16b, v8.16b, v1.16b
	saddw2	v15.8h, v15.8h, v11.16b
	ldp	q20, q19, [sp, #80]
	saddw	v11.8h, v12.8h, v11.8b
	and	v5.16b, v31.16b, v1.16b
	saddw2	v15.8h, v15.8h, v14.16b
	ushr	v31.16b, v31.16b, #4
	saddw	v14.8h, v11.8h, v14.8b
	tbl	v13.16b, { v19.16b }, v13.16b
	ldp	q10, q9, [x4, #-32]
	tbl	v5.16b, { v20.16b }, v5.16b
	tbl	v31.16b, { v20.16b }, v31.16b
	saddw2	v15.8h, v15.8h, v13.16b
	saddw	v13.8h, v14.8h, v13.8b
	and	v14.16b, v10.16b, v1.16b
	ldp	q22, q21, [sp, #48]
	saddw2	v6.8h, v15.8h, v5.16b
	saddw	v5.8h, v13.8h, v5.8b
	and	v13.16b, v9.16b, v1.16b
	tbl	v15.16b, { v7.16b }, v0.16b
	ushr	v10.16b, v10.16b, #4
	ldp	q12, q11, [x4]
	tbl	v14.16b, { v21.16b }, v14.16b
	tbl	v7.16b, { v22.16b }, v13.16b
	tbl	v13.16b, { v17.16b }, v4.16b
	and	v4.16b, v12.16b, v1.16b
	saddw2	v0.8h, v6.8h, v14.16b
	ldp	q17, q16, [sp, #16]
	saddw	v5.8h, v5.8h, v14.8b
	and	v6.16b, v11.16b, v1.16b
	saddw2	v0.8h, v0.8h, v7.16b
	tbl	v10.16b, { v21.16b }, v10.16b
	saddw	v14.8h, v5.8h, v7.8b
	saddl	v5.8h, v2.8b, v15.8b
	saddl2	v2.8h, v2.16b, v15.16b
	tbl	v4.16b, { v16.16b }, v4.16b
	ushr	v7.16b, v30.16b, #4
	ushr	v30.16b, v8.16b, #4
	tbl	v6.16b, { v17.16b }, v6.16b
	saddw2	v0.8h, v0.8h, v4.16b
	tbl	v7.16b, { v18.16b }, v7.16b
	ldr	q18, [sp]
	saddw	v4.8h, v14.8h, v4.8b
	saddw	v5.8h, v5.8h, v13.8b
	saddw2	v2.8h, v2.8h, v13.16b
	tbl	v30.16b, { v19.16b }, v30.16b
	saddw2	v0.8h, v0.8h, v6.16b
	saddw	v4.8h, v4.8h, v6.8b
	ldp	q8, q6, [x4, #32]
	saddw	v5.8h, v5.8h, v7.8b
	saddw2	v2.8h, v2.8h, v7.16b
	ushr	v9.16b, v9.16b, #4
	and	v13.16b, v8.16b, v1.16b
	saddw	v5.8h, v5.8h, v30.8b
	saddw2	v2.8h, v2.8h, v30.16b
	and	v7.16b, v6.16b, v1.16b
	tbl	v13.16b, { v18.16b }, v13.16b
	saddw	v5.8h, v5.8h, v31.8b
	saddw2	v2.8h, v2.8h, v31.16b
	tbl	v7.16b, { v23.16b }, v7.16b
	saddw2	v0.8h, v0.8h, v13.16b
	saddw	v4.8h, v4.8h, v13.8b
	ushr	v12.16b, v12.16b, #4
	tbl	v9.16b, { v22.16b }, v9.16b
	saddw	v5.8h, v5.8h, v10.8b
	saddw2	v2.8h, v2.8h, v10.16b
	saddw2	v0.8h, v0.8h, v7.16b
	saddw	v4.8h, v4.8h, v7.8b
	ldp	q13, q7, [x4, #64]
	tbl	v12.16b, { v16.16b }, v12.16b
	saddw	v5.8h, v5.8h, v9.8b
	saddw2	v2.8h, v2.8h, v9.16b
	ushr	v9.16b, v11.16b, #4
	and	v30.16b, v13.16b, v1.16b
	saddw	v5.8h, v5.8h, v12.8b
	ushr	v8.16b, v8.16b, #4
	tbl	v9.16b, { v17.16b }, v9.16b
	and	v31.16b, v7.16b, v1.16b
	tbl	v30.16b, { v24.16b }, v30.16b
	saddw2	v2.8h, v2.8h, v12.16b
	tbl	v8.16b, { v18.16b }, v8.16b
	saddw	v5.8h, v5.8h, v9.8b
	ushr	v6.16b, v6.16b, #4
	tbl	v31.16b, { v25.16b }, v31.16b
	saddw2	v0.8h, v0.8h, v30.16b
	saddw	v4.8h, v4.8h, v30.8b
	saddw2	v2.8h, v2.8h, v9.16b
	ushr	v9.16b, v13.16b, #4
	saddw	v5.8h, v5.8h, v8.8b
	tbl	v6.16b, { v23.16b }, v6.16b
	saddw2	v0.8h, v0.8h, v31.16b
	saddw	v4.8h, v4.8h, v31.8b
	ldp	q30, q31, [x4, #96]
	saddw2	v2.8h, v2.8h, v8.16b
	add	x4, x4, #256
	tbl	v8.16b, { v24.16b }, v9.16b
	ushr	v7.16b, v7.16b, #4
	saddw	v5.8h, v5.8h, v6.8b
	and	v10.16b, v30.16b, v1.16b
	ushr	v30.16b, v30.16b, #4
	saddw2	v2.8h, v2.8h, v6.16b
	tbl	v6.16b, { v25.16b }, v7.16b
	saddw	v5.8h, v5.8h, v8.8b
	tbl	v10.16b, { v28.16b }, v10.16b
	tbl	v7.16b, { v28.16b }, v30.16b
	saddw2	v2.8h, v2.8h, v8.16b
	and	v30.16b, v31.16b, v1.16b
	ushr	v31.16b, v31.16b, #4
	saddw	v5.8h, v5.8h, v6.8b
	saddw	v4.8h, v4.8h, v10.8b
	saddw2	v2.8h, v2.8h, v6.16b
	tbl	v6.16b, { v29.16b }, v30.16b
	tbl	v30.16b, { v29.16b }, v31.16b
	saddw	v5.8h, v5.8h, v7.8b
	saddw2	v0.8h, v0.8h, v10.16b
	saddw	v4.8h, v4.8h, v6.8b
	saddw2	v2.8h, v2.8h, v7.16b
	saddw	v5.8h, v5.8h, v30.8b
	saddw2	v0.8h, v0.8h, v6.16b
	scvtf	v4.8h, v4.8h
	mov	v6.16b, v27.16b
	scvtf	v5.8h, v5.8h
	mov	v7.16b, v27.16b
	scvtf	v0.8h, v0.8h
	saddw2	v2.8h, v2.8h, v30.16b
	fmla	v6.8h, v26.8h, v4.8h
	fmla	v7.8h, v26.8h, v5.8h
	ldp	q4, q5, [x3, #-32]
	scvtf	v2.8h, v2.8h
	fmul	v0.8h, v26.8h, v0.8h
	fmla	v4.8h, v3.8h, v6.8h
	fmul	v2.8h, v26.8h, v2.8h
	ldp	q30, q6, [x3]
	fmla	v5.8h, v3.8h, v0.8h
	fmla	v30.8h, v3.8h, v7.8h
	stp	q4, q5, [x3, #-32]
	fmla	v6.8h, v3.8h, v2.8h
	stp	q30, q6, [x3], #64
	b.lo	.LBB2_4
	add	x0, x0, #1
	add	x1, x1, #1024
	cmp	x0, #50
	b.ne	.LBB2_3
	ldp	q3, q4, [sp, #208]
	movi	v25.4s, #63, lsl #24
	lsl	w0, w10, #6
	sxtw	x1, w10
	add	x10, x10, #1
	add	x0, x16, w0, sxtw #1
	add	x17, x17, x11
	fcvtl2	v7.4s, v3.8h
	fcvtl	v3.4s, v3.4h
	add	x1, x16, x1, lsl #7
	cmp	x10, x14
	fcvtl2	v16.4s, v4.8h
	fcvtl	v4.4s, v4.4h
	ldp	q0, q2, [sp, #176]
	fmla	v16.4s, v25.4s, v7.4s
	fmla	v4.4s, v25.4s, v3.4s
	fcvtl2	v5.4s, v0.8h
	fcvtl	v0.4s, v0.4h
	fcvtl2	v6.4s, v2.8h
	fcvtl	v2.4s, v2.4h
	fcvtn	v7.4h, v16.4s
	fcvtn	v4.4h, v4.4s
	ldp	q16, q17, [sp, #272]
	fmla	v2.4s, v25.4s, v0.4s
	fmla	v6.4s, v25.4s, v5.4s
	mov	v4.d[1], v7.d[0]
	fcvtl2	v21.4s, v16.8h
	fcvtl	v16.4s, v16.4h
	ldp	q19, q20, [sp, #304]
	fcvtl2	v22.4s, v17.8h
	fcvtl	v17.4s, v17.4h
	fcvtn	v6.4h, v6.4s
	fcvtn	v2.4h, v2.4s
	fcvtl2	v23.4s, v19.8h
	fcvtl	v19.4s, v19.4h
	fmla	v22.4s, v25.4s, v21.4s
	fmla	v17.4s, v25.4s, v16.4s
	ldp	q0, q3, [sp, #240]
	fcvtl2	v24.4s, v20.8h
	fcvtl	v20.4s, v20.4h
	mov	v2.d[1], v6.d[0]
	fcvtn	v6.4h, v22.4s
	fcvtl2	v5.4s, v0.8h
	fcvtl	v0.4s, v0.4h
	fmla	v24.4s, v25.4s, v23.4s
	fmla	v20.4s, v25.4s, v19.4s
	fcvtl2	v18.4s, v3.8h
	fcvtl	v3.4s, v3.4h
	fcvtn	v7.4h, v17.4s
	stp	q2, q4, [sp, #432]
	ldp	q2, q4, [sp, #336]
	fcvtn	v16.4h, v24.4s
	fmla	v18.4s, v25.4s, v5.4s
	fmla	v3.4s, v25.4s, v0.4s
	fcvtn	v0.4h, v20.4s
	mov	v7.d[1], v6.d[0]
	fcvtn	v5.4h, v18.4s
	fcvtn	v3.4h, v3.4s
	mov	v0.d[1], v16.d[0]
	fcvtl2	v17.4s, v4.8h
	ldp	q6, q16, [sp, #368]
	fcvtl	v4.4s, v4.4h
	mov	v3.d[1], v5.d[0]
	fcvtl2	v5.4s, v2.8h
	fcvtl	v2.4s, v2.4h
	fcvtl2	v20.4s, v6.8h
	fcvtl	v6.4s, v6.4h
	ldp	q18, q19, [sp, #400]
	fcvtl2	v21.4s, v16.8h
	fcvtl	v16.4s, v16.4h
	fmla	v4.4s, v25.4s, v2.4s
	fmla	v17.4s, v25.4s, v5.4s
	stp	q3, q7, [sp, #464]
	fcvtl2	v22.4s, v18.8h
	fcvtl	v18.4s, v18.4h
	fmla	v16.4s, v25.4s, v6.4s
	fmla	v21.4s, v25.4s, v20.4s
	fcvtl2	v23.4s, v19.8h
	fcvtl	v19.4s, v19.4h
	fcvtn	v2.4h, v17.4s
	fcvtn	v3.4h, v4.4s
	ldr	h17, [sp, #434]
	fcvtn	v4.4h, v21.4s
	fcvtn	v5.4h, v16.4s
	fmla	v23.4s, v25.4s, v22.4s
	fmla	v19.4s, v25.4s, v18.4s
	ldr	h16, [sp, #432]
	mov	v3.d[1], v2.d[0]
	mov	v5.d[1], v4.d[0]
	fcvtn	v6.4h, v23.4s
	str	h16, [x0]
	fcvtn	v7.4h, v19.4s
	str	h17, [x1, #2]
	ldr	w1, [sp, #436]
	stp	q0, q3, [sp, #496]
	mov	v7.d[1], v6.d[0]
	stp	q5, q7, [sp, #528]
	str	w1, [x0, #4]
	ldr	h0, [sp, #440]
	ldr	h2, [sp, #442]
	ldr	h3, [sp, #444]
	str	h0, [x0, #8]
	ldr	h0, [sp, #446]
	str	h2, [x0, #10]
	str	h3, [x0, #12]
	str	h0, [x0, #14]
	ldr	w1, [sp, #448]
	str	w1, [x0, #16]
	ldr	h0, [sp, #452]
	ldr	h2, [sp, #454]
	ldr	h3, [sp, #456]
	str	h0, [x0, #20]
	str	h2, [x0, #22]
	str	h3, [x0, #24]
	ldur	w1, [x8, #26]
	stur	w1, [x0, #26]
	ldur	x1, [x8, #30]
	stur	x1, [x0, #30]
	ldur	w1, [x8, #38]
	stur	w1, [x0, #38]
	ldr	h0, [sp, #474]
	ldr	h2, [sp, #476]
	ldr	h3, [sp, #478]
	str	h0, [x0, #42]
	ldr	h0, [sp, #480]
	str	h2, [x0, #44]
	ldr	h2, [sp, #482]
	str	h3, [x0, #46]
	ldr	h3, [sp, #484]
	str	h0, [x0, #48]
	ldr	h0, [sp, #486]
	str	h2, [x0, #50]
	ldr	h2, [sp, #488]
	str	h3, [x0, #52]
	ldr	h3, [sp, #490]
	str	h0, [x0, #54]
	ldr	h0, [sp, #492]
	str	h2, [x0, #56]
	ldr	h2, [sp, #494]
	str	h3, [x0, #58]
	ldr	h3, [sp, #496]
	str	h0, [x0, #60]
	ldr	h0, [sp, #498]
	str	h2, [x0, #62]
	ldr	h2, [sp, #500]
	str	h3, [x0, #64]
	ldr	h3, [sp, #502]
	str	h0, [x0, #66]
	ldr	h0, [sp, #504]
	str	h2, [x0, #68]
	ldr	h2, [sp, #506]
	str	h3, [x0, #70]
	ldr	h3, [sp, #508]
	str	h0, [x0, #72]
	ldr	h0, [sp, #510]
	str	h2, [x0, #74]
	ldr	h2, [sp, #512]
	str	h3, [x0, #76]
	ldr	h3, [sp, #514]
	str	h0, [x0, #78]
	ldr	h0, [sp, #516]
	str	h2, [x0, #80]
	ldr	h2, [sp, #518]
	str	h3, [x0, #82]
	ldr	h3, [sp, #520]
	str	h0, [x0, #84]
	ldr	h0, [sp, #522]
	str	h2, [x0, #86]
	ldr	h2, [sp, #524]
	str	h3, [x0, #88]
	ldr	h3, [sp, #526]
	str	h0, [x0, #90]
	ldr	h0, [sp, #528]
	str	h2, [x0, #92]
	ldr	h2, [sp, #530]
	str	h3, [x0, #94]
	ldr	h3, [sp, #532]
	str	h0, [x0, #96]
	ldr	h0, [sp, #534]
	str	h2, [x0, #98]
	ldr	h2, [sp, #536]
	str	h3, [x0, #100]
	ldr	h3, [sp, #538]
	str	h0, [x0, #102]
	ldr	h0, [sp, #540]
	str	h2, [x0, #104]
	ldr	h2, [sp, #542]
	str	h3, [x0, #106]
	ldr	h3, [sp, #544]
	str	h0, [x0, #108]
	ldr	h0, [sp, #546]
	str	h2, [x0, #110]
	ldr	h2, [sp, #548]
	str	h3, [x0, #112]
	ldr	h3, [sp, #550]
	str	h0, [x0, #114]
	ldr	h0, [sp, #552]
	str	h2, [x0, #116]
	ldr	h2, [sp, #554]
	str	h3, [x0, #118]
	str	h0, [x0, #120]
	ldr	h0, [sp, #556]
	str	h2, [x0, #122]
	ldr	h2, [sp, #558]
	str	h0, [x0, #124]
	str	h2, [x0, #126]
	b.ne	.LBB2_2
.LBB2_7:
	mov	w0, wzr
	add	sp, sp, #560
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	ldr	x29, [sp, #64]
	ldp	d15, d14, [sp], #80
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
	.asciz	"Assert fail: num_args == 6, qgemm_lut_t4_int8_m6400_k3200_n1_b2: num_args should be 6"
	.size	.L.str, 86

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"Assert fail: not T.isnullptr(args), qgemm_lut_t4_int8_m6400_k3200_n1_b2: TVMValue* arg pointer was NULL"
	.size	.L.str.1, 104

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t4_int8_m6400_k3200_n1_b2: int* type_codes was NULL"
	.size	.L.str.2, 106

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[0] to be pointer"
	.size	.L.str.3, 137

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[1] to be pointer"
	.size	.L.str.4, 145

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[2] to be pointer"
	.size	.L.str.5, 157

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[3] to be pointer"
	.size	.L.str.6, 173

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[4] to be pointer"
	.size	.L.str.7, 173

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t4_int8_m6400_k3200_n1_b2: Expect arg[5] to be pointer"
	.size	.L.str.8, 137

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.9, 118

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \"int32\"), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.ndim is expected to equal 3"
	.size	.L.str.10, 120

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.11, 122

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \"int32\"), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.ndim is expected to equal 3"
	.size	.L.str.12, 124

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.13, 128

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"Assert fail: 1 == T.tvm_struct_get(Scales, 0, 4, \"int32\"), qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.ndim is expected to equal 1"
	.size	.L.str.14, 130

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.15, 136

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \"int32\"), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.ndim is expected to equal 2"
	.size	.L.str.16, 138

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.17, 136

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \"int32\"), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.ndim is expected to equal 2"
	.size	.L.str.18, 138

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.19, 118

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \"int32\"), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.ndim is expected to equal 2"
	.size	.L.str.20, 120

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"Assert fail: T.tvm_struct_get(A, 0, 5, \"uint8\") == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \"uint8\") == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.dtype is expected to be uint8"
	.size	.L.str.21, 239

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[0]) == 50, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape[0] has an unsatisfied constraint: 50 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[0])"
	.size	.L.str.22, 241

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[1]) == 800, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape[1] has an unsatisfied constraint: 800 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[1])"
	.size	.L.str.23, 243

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[2]) == 64, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape[2] has an unsatisfied constraint: 64 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_shape[2])"
	.size	.L.str.24, 241

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_strides[2]) and 64 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_strides[1]) and 51200 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_A_strides[0]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides: expected to be compact array"
	.size	.L.str.25, 316

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \"uint64\")"
	.size	.L.str.26, 206

	.type	.L.str.27,@object
.L.str.27:
	.asciz	"Assert fail: T.tvm_struct_get(A, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \"int32\")"
	.size	.L.str.27, 186

	.type	.L.str.28,@object
.L.str.28:
	.asciz	"Assert fail: not T.isnullptr(A), qgemm_lut_t4_int8_m6400_k3200_n1_b2.A is expected to have non-NULL data pointer"
	.size	.L.str.28, 113

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"Assert fail: T.tvm_struct_get(LUT, 0, 5, \"uint8\") == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \"uint8\") == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.dtype is expected to be int8"
	.size	.L.str.29, 246

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[0])"
	.size	.L.str.30, 245

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[1]) == 800, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape[1] has an unsatisfied constraint: 800 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[1])"
	.size	.L.str.31, 249

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_shape[2])"
	.size	.L.str.32, 247

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_strides[2]) and 16 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_strides[1]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides: expected to be compact array"
	.size	.L.str.33, 243

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \"uint64\")"
	.size	.L.str.34, 212

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"Assert fail: T.tvm_struct_get(LUT, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \"int32\")"
	.size	.L.str.35, 192

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \"int32\")"
	.size	.L.str.36, 198

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"Assert fail: not T.isnullptr(LUT), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT is expected to have non-NULL data pointer"
	.size	.L.str.37, 117

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"Assert fail: T.tvm_struct_get(Scales, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.dtype is expected to be float16"
	.size	.L.str.38, 262

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_Scales_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_Scales_shape[0])"
	.size	.L.str.39, 254

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \"uint64\")"
	.size	.L.str.41, 221

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"Assert fail: T.tvm_struct_get(Scales, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \"int32\")"
	.size	.L.str.42, 201

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \"int32\")"
	.size	.L.str.43, 207

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"Assert fail: not T.isnullptr(Scales), qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales is expected to have non-NULL data pointer"
	.size	.L.str.44, 123

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.dtype is expected to be float16"
	.size	.L.str.45, 278

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[0])"
	.size	.L.str.46, 266

	.type	.L.str.47,@object
.L.str.47:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[1]) == 50, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 50 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_shape[1])"
	.size	.L.str.47, 268

	.type	.L.str.48,@object
.L.str.48:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides: expected to be compact array"
	.size	.L.str.48, 179

	.type	.L.str.49,@object
.L.str.49:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \"uint64\")"
	.size	.L.str.49, 233

	.type	.L.str.50,@object
.L.str.50:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \"int32\")"
	.size	.L.str.50, 213

	.type	.L.str.51,@object
.L.str.51:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \"int32\")"
	.size	.L.str.51, 219

	.type	.L.str.52,@object
.L.str.52:
	.asciz	"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales is expected to have non-NULL data pointer"
	.size	.L.str.52, 131

	.type	.L.str.53,@object
.L.str.53:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.dtype is expected to be float16"
	.size	.L.str.53, 278

	.type	.L.str.54,@object
.L.str.54:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[0])"
	.size	.L.str.54, 266

	.type	.L.str.55,@object
.L.str.55:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[1]) == 50, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 50 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_shape[1])"
	.size	.L.str.55, 268

	.type	.L.str.56,@object
.L.str.56:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides: expected to be compact array"
	.size	.L.str.56, 179

	.type	.L.str.57,@object
.L.str.57:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \"uint64\")"
	.size	.L.str.57, 233

	.type	.L.str.58,@object
.L.str.58:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \"int32\")"
	.size	.L.str.58, 213

	.type	.L.str.59,@object
.L.str.59:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \"int32\")"
	.size	.L.str.59, 219

	.type	.L.str.60,@object
.L.str.60:
	.asciz	"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases is expected to have non-NULL data pointer"
	.size	.L.str.60, 131

	.type	.L.str.61,@object
.L.str.61:
	.asciz	"Assert fail: T.tvm_struct_get(C, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \"uint16\") == T.uint16(1), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.dtype is expected to be float16"
	.size	.L.str.61, 242

	.type	.L.str.62,@object
.L.str.62:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_shape[0])"
	.size	.L.str.62, 239

	.type	.L.str.63,@object
.L.str.63:
	.asciz	"Assert fail: T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_shape[1]) == 3200, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape[1] has an unsatisfied constraint: 3200 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_shape[1])"
	.size	.L.str.63, 245

	.type	.L.str.64,@object
.L.str.64:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", qgemm_lut_t4_int8_m6400_k3200_n1_b2_C_strides[1]), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides: expected to be compact array"
	.size	.L.str.64, 161

	.type	.L.str.65,@object
.L.str.65:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \"uint64\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \"uint64\")"
	.size	.L.str.65, 206

	.type	.L.str.66,@object
.L.str.66:
	.asciz	"Assert fail: T.tvm_struct_get(C, 0, 10, \"int32\") == 1, Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \"int32\")"
	.size	.L.str.66, 186

	.type	.L.str.67,@object
.L.str.67:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \"int32\"), Argument qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \"int32\")"
	.size	.L.str.67, 192

	.type	.L.str.68,@object
.L.str.68:
	.asciz	"Assert fail: not T.isnullptr(C), qgemm_lut_t4_int8_m6400_k3200_n1_b2.C is expected to have non-NULL data pointer"
	.size	.L.str.68, 113

	.type	__tvm_main__,@object
	.weak	__tvm_main__
__tvm_main__:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2"
	.size	__tvm_main__, 36

	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp61-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp61-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp138-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp138-.Lfunc_begin0
	.xword	.Ltmp139-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp139-.Lfunc_begin0
	.xword	.Ltmp140-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp140-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp142-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp142-.Lfunc_begin0
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
	.xword	.Ltmp150-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp150-.Lfunc_begin0
	.xword	.Ltmp151-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp151-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp152-.Lfunc_begin0
	.xword	.Ltmp153-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp154-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp154-.Lfunc_begin0
	.xword	.Ltmp155-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp155-.Lfunc_begin0
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
	.xword	.Ltmp178-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp178-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp179-.Lfunc_begin0
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
	.xword	.Ltmp60-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp60-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp150-.Lfunc_begin0
	.xword	.Ltmp194-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp194-.Lfunc_begin0
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
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp150-.Lfunc_begin0
	.xword	.Ltmp194-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp194-.Lfunc_begin0
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
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp150-.Lfunc_begin0
	.xword	.Ltmp194-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp194-.Lfunc_begin0
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
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp150-.Lfunc_begin0
	.xword	.Ltmp194-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp194-.Lfunc_begin0
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
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp150-.Lfunc_begin0
	.xword	.Ltmp194-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp194-.Lfunc_begin0
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
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp176-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp179-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
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
	.xword	0
	.xword	0
.Ldebug_loc13:
	.xword	.Ltmp40-.Lfunc_begin0
	.xword	.Ltmp120-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp172-.Lfunc_begin0
	.xword	.Ltmp293-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc14:
	.xword	.Ltmp37-.Lfunc_begin0
	.xword	.Ltmp108-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp168-.Lfunc_begin0
	.xword	.Ltmp269-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc15:
	.xword	.Ltmp34-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp164-.Lfunc_begin0
	.xword	.Ltmp245-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc16:
	.xword	.Ltmp31-.Lfunc_begin0
	.xword	.Ltmp87-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp227-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc17:
	.xword	.Ltmp28-.Lfunc_begin0
	.xword	.Ltmp73-.Lfunc_begin0
	.hword	2
	.byte	119
	.byte	0
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	119
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc18:
	.xword	.Ltmp60-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc19:
	.xword	.Ltmp59-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc20:
	.xword	.Ltmp58-.Lfunc_begin0
	.xword	.Ltmp70-.Lfunc_begin0
	.hword	2
	.byte	134
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc21:
	.xword	.Ltmp49-.Lfunc_begin0
	.xword	.Ltmp52-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp191-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc22:
	.xword	.Ltmp61-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp199-.Lfunc_begin0
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
	.xword	.Ltmp318-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp319-.Lfunc_begin0
	.xword	.Ltmp320-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc23:
	.xword	.Ltmp54-.Lfunc_begin0
	.xword	.Ltmp135-.Lfunc_begin0
	.hword	2
	.byte	132
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	132
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc24:
	.xword	.Ltmp54-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	2
	.byte	133
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	133
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc25:
	.xword	.Ltmp63-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc26:
	.xword	.Ltmp62-.Lfunc_begin0
	.xword	.Ltmp135-.Lfunc_begin0
	.hword	2
	.byte	131
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	131
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc27:
	.xword	.Ltmp64-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc28:
	.xword	.Ltmp55-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc29:
	.xword	.Ltmp55-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	118
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	118
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc30:
	.xword	.Ltmp65-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	116
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	116
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc31:
	.xword	.Ltmp56-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc32:
	.xword	.Ltmp56-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc33:
	.xword	.Ltmp57-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc34:
	.xword	.Ltmp57-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc35:
	.xword	.Ltmp66-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	2
	.byte	117
	.byte	0
	.xword	.Ltmp194-.Lfunc_begin0
	.xword	.Lfunc_end0-.Lfunc_begin0
	.hword	2
	.byte	117
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc36:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp323-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp323-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc37:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp324-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp324-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc38:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp325-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp325-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc39:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp326-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp326-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc40:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp326-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp326-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc41:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp326-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp326-.Lfunc_begin0
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
	.word	636
	.byte	3
	.word	.Ldebug_loc0
	.word	.Linfo_string6
	.word	643
	.byte	3
	.word	.Ldebug_loc1
	.word	.Linfo_string7
	.word	644
	.byte	3
	.word	.Ldebug_loc2
	.word	.Linfo_string8
	.word	636
	.byte	3
	.word	.Ldebug_loc3
	.word	.Linfo_string9
	.word	643
	.byte	3
	.word	.Ldebug_loc4
	.word	.Linfo_string10
	.word	644
	.byte	3
	.word	.Ldebug_loc5
	.word	.Linfo_string11
	.word	643
	.byte	4
	.word	.Ldebug_loc6
	.word	.Linfo_string12
	.word	636
	.byte	4
	.word	.Ldebug_loc7
	.word	.Linfo_string13
	.word	636
	.byte	4
	.word	.Ldebug_loc8
	.word	.Linfo_string14
	.word	636
	.byte	4
	.word	.Ldebug_loc9
	.word	.Linfo_string15
	.word	636
	.byte	4
	.word	.Ldebug_loc10
	.word	.Linfo_string16
	.word	636
	.byte	4
	.word	.Ldebug_loc11
	.word	.Linfo_string17
	.word	636
	.byte	4
	.word	.Ldebug_loc12
	.word	.Linfo_string18
	.word	643
	.byte	4
	.word	.Ldebug_loc13
	.word	.Linfo_string19
	.word	643
	.byte	4
	.word	.Ldebug_loc14
	.word	.Linfo_string20
	.word	643
	.byte	4
	.word	.Ldebug_loc15
	.word	.Linfo_string21
	.word	643
	.byte	4
	.word	.Ldebug_loc16
	.word	.Linfo_string22
	.word	643
	.byte	4
	.word	.Ldebug_loc17
	.word	.Linfo_string23
	.word	643
	.byte	4
	.word	.Ldebug_loc18
	.word	.Linfo_string23
	.word	649
	.byte	4
	.word	.Ldebug_loc19
	.word	.Linfo_string25
	.word	636
	.byte	4
	.word	.Ldebug_loc20
	.word	.Linfo_string26
	.word	661
	.byte	4
	.word	.Ldebug_loc21
	.word	.Linfo_string28
	.word	661
	.byte	4
	.word	.Ldebug_loc22
	.word	.Linfo_string22
	.word	673
	.byte	4
	.word	.Ldebug_loc23
	.word	.Linfo_string30
	.word	661
	.byte	4
	.word	.Ldebug_loc24
	.word	.Linfo_string31
	.word	661
	.byte	4
	.word	.Ldebug_loc25
	.word	.Linfo_string21
	.word	685
	.byte	4
	.word	.Ldebug_loc26
	.word	.Linfo_string33
	.word	661
	.byte	4
	.word	.Ldebug_loc27
	.word	.Linfo_string20
	.word	685
	.byte	4
	.word	.Ldebug_loc28
	.word	.Linfo_string34
	.word	661
	.byte	4
	.word	.Ldebug_loc29
	.word	.Linfo_string35
	.word	661
	.byte	4
	.word	.Ldebug_loc30
	.word	.Linfo_string19
	.word	685
	.byte	4
	.word	.Ldebug_loc31
	.word	.Linfo_string36
	.word	661
	.byte	4
	.word	.Ldebug_loc32
	.word	.Linfo_string37
	.word	661
	.byte	4
	.word	.Ldebug_loc33
	.word	.Linfo_string38
	.word	661
	.byte	4
	.word	.Ldebug_loc34
	.word	.Linfo_string39
	.word	661
	.byte	4
	.word	.Ldebug_loc35
	.word	.Linfo_string18
	.word	685
	.byte	0
	.byte	2
	.xword	.Lfunc_begin1
	.word	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	111
	.word	.Linfo_string5
	.word	636
	.byte	3
	.word	.Ldebug_loc36
	.word	.Linfo_string22
	.word	673
	.byte	3
	.word	.Ldebug_loc37
	.word	.Linfo_string23
	.word	649
	.byte	3
	.word	.Ldebug_loc38
	.word	.Linfo_string21
	.word	685
	.byte	3
	.word	.Ldebug_loc39
	.word	.Linfo_string20
	.word	685
	.byte	3
	.word	.Ldebug_loc40
	.word	.Linfo_string19
	.word	685
	.byte	3
	.word	.Ldebug_loc41
	.word	.Linfo_string18
	.word	685
	.byte	0
	.byte	5
	.word	.Linfo_string4
	.byte	5
	.byte	4
	.byte	6
	.byte	7
	.word	636
	.byte	7
	.word	654
	.byte	5
	.word	.Linfo_string24
	.byte	7
	.byte	1
	.byte	7
	.word	666
	.byte	5
	.word	.Linfo_string27
	.byte	5
	.byte	8
	.byte	7
	.word	678
	.byte	5
	.word	.Linfo_string29
	.byte	5
	.byte	1
	.byte	7
	.word	690
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
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2"
.Linfo_string4:
	.asciz	"int32"
.Linfo_string5:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_"
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
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.strides"
.Linfo_string27:
	.asciz	"int64"
.Linfo_string28:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.A.shape"
.Linfo_string29:
	.asciz	"int8"
.Linfo_string30:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.strides"
.Linfo_string31:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT.shape"
.Linfo_string32:
	.asciz	"float16"
.Linfo_string33:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.Scales.shape"
.Linfo_string34:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.strides"
.Linfo_string35:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Scales.shape"
.Linfo_string36:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.strides"
.Linfo_string37:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.LUT_Biases.shape"
.Linfo_string38:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.shape"
.Linfo_string39:
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2.C.strides"
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.hword	2
	.word	.Lcu_begin0
	.word	698
	.word	534
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2_compute_"
	.word	42
	.asciz	"qgemm_lut_t4_int8_m6400_k3200_n1_b2"
	.word	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.hword	2
	.word	.Lcu_begin0
	.word	698
	.word	636
	.asciz	"int32"
	.word	678
	.asciz	"int8"
	.word	666
	.asciz	"int64"
	.word	654
	.asciz	"uint8"
	.word	690
	.asciz	"float16"
	.word	0
.LpubTypes_end0:
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
