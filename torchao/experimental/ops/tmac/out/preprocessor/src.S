	.text
	.file	"TVMMod"
	.globl	preprocessor_t4_int8_m8192_k4096_n1_b2
	.p2align	2
	.type	preprocessor_t4_int8_m8192_k4096_n1_b2,@function
preprocessor_t4_int8_m8192_k4096_n1_b2:
.Lfunc_begin0:
	.file	1 "./IRModule.CodeGenLLVM"
	.loc	1 0 0
	.cfi_startproc
	str	x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -16
.Ltmp0:
	cmp	w2, #4
	b.ne	.LBB0_69
.Ltmp1:
	cbz	x0, .LBB0_70
.Ltmp2:
	cbz	x1, .LBB0_71
.Ltmp3:
	ldr	w8, [x1]
.Ltmp4:
	cmp	w8, #13
	b.hi	.LBB0_65
.Ltmp5:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp6:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_65
.Ltmp7:
	ldr	w8, [x1, #4]
.Ltmp8:
	cmp	w8, #13
	b.hi	.LBB0_66
.Ltmp9:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp10:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_66
.Ltmp11:
	ldr	w8, [x1, #8]
.Ltmp12:
	cmp	w8, #13
	b.hi	.LBB0_67
.Ltmp13:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp14:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_67
.Ltmp15:
	ldr	w8, [x1, #12]
.Ltmp16:
	cmp	w8, #13
	b.hi	.LBB0_68
.Ltmp17:
	mov	w9, #1
	lsl	w8, w9, w8
.Ltmp18:
	mov	w9, #8344
	tst	w8, w9
	b.eq	.LBB0_68
.Ltmp19:
	ldr	x16, [x0]
.Ltmp20:
	cbz	x16, .LBB0_72
.Ltmp21:
	ldr	w8, [x16, #16]
	cmp	w8, #2
	b.ne	.LBB0_73
.Ltmp22:
	ldr	x13, [x0, #8]
.Ltmp23:
	cbz	x13, .LBB0_74
.Ltmp24:
	ldr	w8, [x13, #16]
	cmp	w8, #2
	b.ne	.LBB0_75
.Ltmp25:
	ldr	x10, [x0, #16]
.Ltmp26:
	cbz	x10, .LBB0_76
.Ltmp27:
	ldr	w8, [x10, #16]
	cmp	w8, #2
	b.ne	.LBB0_77
.Ltmp28:
	ldr	x8, [x0, #24]
.Ltmp29:
	cbz	x8, .LBB0_78
.Ltmp30:
	ldr	w9, [x8, #16]
	cmp	w9, #3
	b.ne	.LBB0_79
.Ltmp31:
	ldrb	w9, [x16, #20]
	cmp	w9, #2
	b.ne	.LBB0_80
.Ltmp32:
	ldrb	w9, [x16, #21]
	cmp	w9, #16
	b.ne	.LBB0_80
.Ltmp33:
	ldrh	w9, [x16, #22]
	cmp	w9, #1
	b.ne	.LBB0_80
.Ltmp34:
	ldr	x9, [x16, #24]
.Ltmp35:
	ldr	w11, [x9]
	cmp	w11, #1
	b.ne	.LBB0_81
.Ltmp36:
	ldr	w9, [x9, #8]
.Ltmp37:
	cmp	w9, #1, lsl #12
	b.ne	.LBB0_82
.Ltmp38:
	ldp	x18, x17, [x13, #24]
.Ltmp39:
	ldp	x15, x14, [x10, #24]
.Ltmp40:
	ldp	x12, x11, [x8, #24]
.Ltmp41:
	ldr	x4, [x16, #32]
.Ltmp42:
	ldr	w9, [x16, #12]
.Ltmp43:
	ldr	x1, [x16]
.Ltmp44:
	ldr	x0, [x13]
.Ltmp45:
	ldr	x3, [x10]
.Ltmp46:
	ldr	x2, [x8]
.Ltmp47:
	cbz	x4, .LBB0_26
.Ltmp48:
	ldr	w4, [x4, #8]
.Ltmp49:
	cmp	w4, #1
	b.ne	.LBB0_83
.Ltmp50:
.LBB0_26:
	ldr	x4, [x16, #40]
	cbnz	x4, .LBB0_84
.Ltmp51:
	ldr	w16, [x16, #8]
.Ltmp52:
	cmp	w16, #1
	b.ne	.LBB0_85
.Ltmp53:
	cbz	x1, .LBB0_86
.Ltmp54:
	ldrb	w16, [x13, #20]
	cmp	w16, #2
	b.ne	.LBB0_87
.Ltmp55:
	ldrb	w16, [x13, #21]
	cmp	w16, #16
	b.ne	.LBB0_87
.Ltmp56:
	ldrh	w16, [x13, #22]
	cmp	w16, #1
	b.ne	.LBB0_87
.Ltmp57:
	ldr	w16, [x18]
	cmp	w16, #1
	b.ne	.LBB0_88
.Ltmp58:
	ldr	w16, [x18, #8]
	cmp	w16, #64
	b.ne	.LBB0_89
.Ltmp59:
	cbz	x17, .LBB0_36
.Ltmp60:
	ldr	w16, [x17, #8]
	cmp	w16, #1
	b.ne	.LBB0_90
.Ltmp61:
.LBB0_36:
	ldr	x16, [x13, #40]
	cbnz	x16, .LBB0_91
.Ltmp62:
	ldr	w16, [x13, #8]
	cmp	w16, #1
	b.ne	.LBB0_92
.Ltmp63:
	ldr	w13, [x13, #12]
.Ltmp64:
	cmp	w9, w13
	b.ne	.LBB0_93
.Ltmp65:
	cbz	x0, .LBB0_94
.Ltmp66:
	ldrb	w13, [x10, #20]
	cmp	w13, #2
	b.ne	.LBB0_95
.Ltmp67:
	ldrb	w13, [x10, #21]
	cmp	w13, #16
	b.ne	.LBB0_95
.Ltmp68:
	ldrh	w13, [x10, #22]
	cmp	w13, #1
	b.ne	.LBB0_95
.Ltmp69:
	ldr	w13, [x15]
	cmp	w13, #1
	b.ne	.LBB0_96
.Ltmp70:
	ldr	w13, [x15, #8]
	cmp	w13, #64
	b.ne	.LBB0_97
.Ltmp71:
	cbz	x14, .LBB0_47
.Ltmp72:
	ldr	w13, [x14, #8]
	cmp	w13, #1
	b.ne	.LBB0_98
.Ltmp73:
.LBB0_47:
	ldr	x13, [x10, #40]
	cbnz	x13, .LBB0_99
.Ltmp74:
	ldr	w13, [x10, #8]
	cmp	w13, #1
	b.ne	.LBB0_100
.Ltmp75:
	ldr	w10, [x10, #12]
.Ltmp76:
	cmp	w9, w10
	b.ne	.LBB0_101
.Ltmp77:
	cbz	x3, .LBB0_102
.Ltmp78:
	ldrb	w10, [x8, #20]
	cbnz	w10, .LBB0_103
.Ltmp79:
	ldrb	w10, [x8, #21]
	cmp	w10, #8
	b.ne	.LBB0_103
.Ltmp80:
	ldrh	w10, [x8, #22]
	cmp	w10, #1
	b.ne	.LBB0_103
.Ltmp81:
	ldr	w10, [x12]
	cmp	w10, #1
	b.ne	.LBB0_104
.Ltmp82:
	ldr	w10, [x12, #8]
	cmp	w10, #1024
	b.ne	.LBB0_105
.Ltmp83:
	ldr	w10, [x12, #16]
	cmp	w10, #16
	b.ne	.LBB0_106
.Ltmp84:
	cbz	x11, .LBB0_60
.Ltmp85:
	ldr	w10, [x11, #16]
	cmp	w10, #1
	b.ne	.LBB0_107
.Ltmp86:
	ldr	w10, [x11, #8]
	cmp	w10, #16
	b.ne	.LBB0_107
.Ltmp87:
.LBB0_60:
	ldr	x10, [x8, #40]
	cbnz	x10, .LBB0_108
.Ltmp88:
	ldr	w10, [x8, #8]
	cmp	w10, #1
	b.ne	.LBB0_109
.Ltmp89:
	ldr	w8, [x8, #12]
.Ltmp90:
	cmp	w9, w8
	b.ne	.LBB0_110
.Ltmp91:
	cbz	x2, .LBB0_111
.Ltmp92:
	bl	preprocessor_t4_int8_m8192_k4096_n1_b2_compute_
.Ltmp93:
	mov	w0, wzr
	ldr	x30, [sp], #16
	ret
.Ltmp94:
.LBB0_65:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.3
.Ltmp95:
	add	x0, x0, :lo12:.L.str.3
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp96:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp97:
.LBB0_66:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.4
.Ltmp98:
	add	x0, x0, :lo12:.L.str.4
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp99:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp100:
.LBB0_67:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.5
.Ltmp101:
	add	x0, x0, :lo12:.L.str.5
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp102:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp103:
.LBB0_68:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.6
.Ltmp104:
	add	x0, x0, :lo12:.L.str.6
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp105:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp106:
.LBB0_69:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str
.Ltmp107:
	add	x0, x0, :lo12:.L.str
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp108:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp109:
.LBB0_70:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.1
.Ltmp110:
	add	x0, x0, :lo12:.L.str.1
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp111:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp112:
.LBB0_71:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.2
.Ltmp113:
	add	x0, x0, :lo12:.L.str.2
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp114:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp115:
.LBB0_72:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.7
.Ltmp116:
	add	x0, x0, :lo12:.L.str.7
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp117:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp118:
.LBB0_73:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.8
.Ltmp119:
	add	x0, x0, :lo12:.L.str.8
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp120:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp121:
.LBB0_74:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.9
.Ltmp122:
	add	x0, x0, :lo12:.L.str.9
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp123:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp124:
.LBB0_75:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.10
.Ltmp125:
	add	x0, x0, :lo12:.L.str.10
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp126:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp127:
.LBB0_76:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.11
.Ltmp128:
	add	x0, x0, :lo12:.L.str.11
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp129:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp130:
.LBB0_77:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.12
.Ltmp131:
	add	x0, x0, :lo12:.L.str.12
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp132:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp133:
.LBB0_78:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp134:
	adrp	x0, .L.str.13
.Ltmp135:
	add	x0, x0, :lo12:.L.str.13
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp136:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp137:
.LBB0_79:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp138:
	adrp	x0, .L.str.14
.Ltmp139:
	add	x0, x0, :lo12:.L.str.14
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp140:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp141:
.LBB0_80:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp142:
	adrp	x0, .L.str.15
.Ltmp143:
	add	x0, x0, :lo12:.L.str.15
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp144:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp145:
.LBB0_81:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp146:
	adrp	x0, .L.str.16
.Ltmp147:
	add	x0, x0, :lo12:.L.str.16
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp148:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp149:
.LBB0_82:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp150:
	adrp	x0, .L.str.17
.Ltmp151:
	add	x0, x0, :lo12:.L.str.17
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp152:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp153:
.LBB0_83:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp154:
	adrp	x0, .L.str.18
.Ltmp155:
	add	x0, x0, :lo12:.L.str.18
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp156:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp157:
.LBB0_84:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp158:
	adrp	x0, .L.str.19
.Ltmp159:
	add	x0, x0, :lo12:.L.str.19
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp160:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp161:
.LBB0_85:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp162:
	adrp	x0, .L.str.20
.Ltmp163:
	add	x0, x0, :lo12:.L.str.20
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp164:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp165:
.LBB0_86:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp166:
	adrp	x0, .L.str.21
.Ltmp167:
	add	x0, x0, :lo12:.L.str.21
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp168:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp169:
.LBB0_87:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp170:
	adrp	x0, .L.str.22
.Ltmp171:
	add	x0, x0, :lo12:.L.str.22
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp172:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp173:
.LBB0_88:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp174:
	adrp	x0, .L.str.23
.Ltmp175:
	add	x0, x0, :lo12:.L.str.23
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp176:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp177:
.LBB0_89:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp178:
	adrp	x0, .L.str.24
.Ltmp179:
	add	x0, x0, :lo12:.L.str.24
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp180:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp181:
.LBB0_90:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp182:
	adrp	x0, .L.str.25
.Ltmp183:
	add	x0, x0, :lo12:.L.str.25
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp184:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp185:
.LBB0_91:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp186:
	adrp	x0, .L.str.26
.Ltmp187:
	add	x0, x0, :lo12:.L.str.26
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp188:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp189:
.LBB0_92:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp190:
	adrp	x0, .L.str.27
.Ltmp191:
	add	x0, x0, :lo12:.L.str.27
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp192:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp193:
.LBB0_93:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp194:
	adrp	x0, .L.str.28
.Ltmp195:
	add	x0, x0, :lo12:.L.str.28
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp196:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp197:
.LBB0_94:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp198:
	adrp	x0, .L.str.29
.Ltmp199:
	add	x0, x0, :lo12:.L.str.29
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp200:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp201:
.LBB0_95:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp202:
	adrp	x0, .L.str.30
.Ltmp203:
	add	x0, x0, :lo12:.L.str.30
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp204:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp205:
.LBB0_96:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp206:
	adrp	x0, .L.str.31
.Ltmp207:
	add	x0, x0, :lo12:.L.str.31
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp208:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp209:
.LBB0_97:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp210:
	adrp	x0, .L.str.32
.Ltmp211:
	add	x0, x0, :lo12:.L.str.32
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp212:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp213:
.LBB0_98:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp214:
	adrp	x0, .L.str.33
.Ltmp215:
	add	x0, x0, :lo12:.L.str.33
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp216:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp217:
.LBB0_99:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp218:
	adrp	x0, .L.str.34
.Ltmp219:
	add	x0, x0, :lo12:.L.str.34
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp220:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp221:
.LBB0_100:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp222:
	adrp	x0, .L.str.35
.Ltmp223:
	add	x0, x0, :lo12:.L.str.35
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp224:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp225:
.LBB0_101:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp226:
	adrp	x0, .L.str.36
.Ltmp227:
	add	x0, x0, :lo12:.L.str.36
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp228:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp229:
.LBB0_102:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp230:
	adrp	x0, .L.str.37
.Ltmp231:
	add	x0, x0, :lo12:.L.str.37
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp232:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp233:
.LBB0_103:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp234:
	adrp	x0, .L.str.38
.Ltmp235:
	add	x0, x0, :lo12:.L.str.38
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp236:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp237:
.LBB0_104:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp238:
	adrp	x0, .L.str.39
.Ltmp239:
	add	x0, x0, :lo12:.L.str.39
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp240:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp241:
.LBB0_105:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp242:
	adrp	x0, .L.str.40
.Ltmp243:
	add	x0, x0, :lo12:.L.str.40
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp244:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp245:
.LBB0_106:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp246:
	adrp	x0, .L.str.41
.Ltmp247:
	add	x0, x0, :lo12:.L.str.41
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp248:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp249:
.LBB0_107:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp250:
	adrp	x0, .L.str.42
.Ltmp251:
	add	x0, x0, :lo12:.L.str.42
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp252:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp253:
.LBB0_108:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp254:
	adrp	x0, .L.str.43
.Ltmp255:
	add	x0, x0, :lo12:.L.str.43
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp256:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp257:
.LBB0_109:
	adrp	x8, :got:__TVMAPISetLastError
.Ltmp258:
	adrp	x0, .L.str.44
.Ltmp259:
	add	x0, x0, :lo12:.L.str.44
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp260:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp261:
.LBB0_110:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.45
.Ltmp262:
	add	x0, x0, :lo12:.L.str.45
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp263:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp264:
.LBB0_111:
	adrp	x8, :got:__TVMAPISetLastError
	adrp	x0, .L.str.46
.Ltmp265:
	add	x0, x0, :lo12:.L.str.46
	ldr	x8, [x8, :got_lo12:__TVMAPISetLastError]
	ldr	x8, [x8]
	blr	x8
.Ltmp266:
	mov	w0, #-1
	ldr	x30, [sp], #16
	ret
.Ltmp267:
.Lfunc_end0:
	.size	preprocessor_t4_int8_m8192_k4096_n1_b2, .Lfunc_end0-preprocessor_t4_int8_m8192_k4096_n1_b2
	.cfi_endproc

	.section	.rodata,"a",@progbits
	.p2align	1
.LCPI1_0:
	.hword	0x57f0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_1:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	0
	.byte	8
.LCPI1_2:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	0
	.byte	8
	.byte	255
	.byte	255
.LCPI1_3:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	0
	.byte	8
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_4:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	0
	.byte	8
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_8:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	1
	.byte	9
.LCPI1_9:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	1
	.byte	9
	.byte	255
	.byte	255
.LCPI1_10:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	1
	.byte	9
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_14:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	2
	.byte	10
.LCPI1_15:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	2
	.byte	10
	.byte	255
	.byte	255
.LCPI1_16:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	2
	.byte	10
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_17:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	2
	.byte	10
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_21:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	3
	.byte	11
.LCPI1_22:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	3
	.byte	11
	.byte	255
	.byte	255
.LCPI1_23:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	3
	.byte	11
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_27:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	4
	.byte	12
.LCPI1_28:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	4
	.byte	12
	.byte	255
	.byte	255
.LCPI1_29:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	4
	.byte	12
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_30:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	4
	.byte	12
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_33:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	5
	.byte	13
.LCPI1_34:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	5
	.byte	13
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_35:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	5
	.byte	13
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_38:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	6
	.byte	14
.LCPI1_39:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	6
	.byte	14
	.byte	255
	.byte	255
.LCPI1_40:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	6
	.byte	14
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_41:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	6
	.byte	14
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_44:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	7
	.byte	15
	.byte	255
	.byte	255
.LCPI1_45:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	7
	.byte	15
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_46:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	7
	.byte	15
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_5:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	0
	.byte	8
.LCPI1_6:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	0
	.byte	8
	.byte	255
	.byte	255
.LCPI1_7:
	.byte	255
	.byte	255
	.byte	0
	.byte	8
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_11:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	1
	.byte	9
.LCPI1_12:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	1
	.byte	9
	.byte	255
	.byte	255
.LCPI1_13:
	.byte	255
	.byte	255
	.byte	1
	.byte	9
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_18:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	2
	.byte	10
.LCPI1_19:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	2
	.byte	10
	.byte	255
	.byte	255
.LCPI1_20:
	.byte	2
	.byte	10
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_24:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	3
	.byte	11
.LCPI1_25:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	3
	.byte	11
	.byte	255
	.byte	255
.LCPI1_26:
	.byte	3
	.byte	11
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_31:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	4
	.byte	12
.LCPI1_32:
	.byte	255
	.byte	255
	.byte	4
	.byte	12
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_36:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	5
	.byte	13
.LCPI1_37:
	.byte	5
	.byte	13
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_42:
	.byte	255
	.byte	255
	.byte	6
	.byte	14
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_43:
	.byte	6
	.byte	14
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_47:
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	7
	.byte	15
	.byte	255
	.byte	255
.LCPI1_48:
	.byte	255
	.byte	255
	.byte	7
	.byte	15
	.byte	255
	.byte	255
	.byte	255
	.byte	255
.LCPI1_49:
	.byte	7
	.byte	15
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.text
	.p2align	2
	.type	preprocessor_t4_int8_m8192_k4096_n1_b2_compute_,@function
preprocessor_t4_int8_m8192_k4096_n1_b2_compute_:
.Lfunc_begin1:
	.loc	1 0 0
	.cfi_startproc
	stp	d15, d14, [sp, #-80]!
	stp	d13, d12, [sp, #16]
	stp	d11, d10, [sp, #32]
	stp	d9, d8, [sp, #48]
	str	x29, [sp, #64]
	sub	sp, sp, #672
	.cfi_def_cfa_offset 752
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	.cfi_offset b10, -40
	.cfi_offset b11, -48
	.cfi_offset b12, -56
	.cfi_offset b13, -64
	.cfi_offset b14, -72
	.cfi_offset b15, -80
	adrp	x9, .LCPI1_0
	movi	d0, #0000000000000000
	mov	x8, xzr
	ldr	h1, [x9, :lo12:.LCPI1_0]
.Ltmp268:
.LBB1_1:
	add	x9, x1, x8, lsl #6
	ld4	{ v2.8h, v3.8h, v4.8h, v5.8h }, [x9], #64
	fabs	v6.8h, v2.8h
	fabs	v7.8h, v3.8h
	fabs	v20.8h, v4.8h
	fabs	v2.8h, v5.8h
	fadd	v6.8h, v6.8h, v7.8h
	fadd	v3.8h, v20.8h, v6.8h
	ld4	{ v16.8h, v17.8h, v18.8h, v19.8h }, [x9]
	fadd	v2.8h, v2.8h, v3.8h
	fmaxv	h2, v2.8h
	fabs	v7.8h, v16.8h
	fdiv	h2, h2, h1
	fabs	v21.8h, v17.8h
	fabs	v5.8h, v18.8h
	fadd	v4.8h, v7.8h, v21.8h
	fmaxnm	h2, h2, h0
	fadd	v3.8h, v5.8h, v4.8h
	fabs	v4.8h, v19.8h
	fadd	v3.8h, v4.8h, v3.8h
	fmaxv	h3, v3.8h
	fdiv	h3, h3, h1
	fcmp	h2, h3
	fcsel	h2, h3, h2, mi
	str	h2, [x0, x8]
	add	x8, x8, #2
	cmp	x8, #128
	b.ne	.LBB1_1
.Ltmp269:
	adrp	x10, .LCPI1_2
	adrp	x11, .LCPI1_3
	adrp	x9, .LCPI1_1
	adrp	x12, .LCPI1_4
	mov	x8, xzr
	ldr	q21, [x10, :lo12:.LCPI1_2]
	adrp	x10, .LCPI1_6
	ldr	q22, [x11, :lo12:.LCPI1_3]
	adrp	x11, .LCPI1_7
	ldr	q20, [x9, :lo12:.LCPI1_1]
	adrp	x9, .LCPI1_5
	ldr	d0, [x10, :lo12:.LCPI1_6]
	adrp	x10, .LCPI1_9
	ldr	q23, [x12, :lo12:.LCPI1_4]
	adrp	x12, .LCPI1_36
	ldr	d24, [x9, :lo12:.LCPI1_5]
	adrp	x9, .LCPI1_8
	str	d0, [sp, #16]
	ldr	d0, [x11, :lo12:.LCPI1_7]
	adrp	x11, .LCPI1_10
	ldr	d9, [x12, :lo12:.LCPI1_36]
	ldr	q12, [x9, :lo12:.LCPI1_8]
	adrp	x9, .LCPI1_11
	str	d0, [sp, #8]
	ldr	q0, [x10, :lo12:.LCPI1_9]
	adrp	x10, .LCPI1_12
	adrp	x12, .LCPI1_40
	stp	q21, q20, [sp, #624]
	str	q0, [sp, #544]
	ldr	q0, [x11, :lo12:.LCPI1_10]
	adrp	x11, .LCPI1_13
	stp	q23, q22, [sp, #592]
	str	d24, [sp, #584]
	str	q0, [sp, #528]
	ldr	d0, [x9, :lo12:.LCPI1_11]
	adrp	x9, .LCPI1_14
	str	q12, [sp, #560]
	str	d0, [sp, #520]
	ldr	d0, [x10, :lo12:.LCPI1_12]
	adrp	x10, .LCPI1_15
	str	d0, [sp, #512]
	ldr	d0, [x11, :lo12:.LCPI1_13]
	adrp	x11, .LCPI1_16
	str	d0, [sp, #504]
	ldr	q0, [x9, :lo12:.LCPI1_14]
	adrp	x9, .LCPI1_17
	str	q0, [sp, #480]
	ldr	q0, [x10, :lo12:.LCPI1_15]
	adrp	x10, .LCPI1_18
	str	q0, [sp, #464]
	ldr	q0, [x11, :lo12:.LCPI1_16]
	adrp	x11, .LCPI1_19
	str	q0, [sp, #448]
	ldr	q0, [x9, :lo12:.LCPI1_17]
	adrp	x9, .LCPI1_20
	str	q0, [sp, #432]
	ldr	d0, [x10, :lo12:.LCPI1_18]
	adrp	x10, .LCPI1_21
	str	d0, [sp, #424]
	ldr	d0, [x11, :lo12:.LCPI1_19]
	adrp	x11, .LCPI1_22
	str	d0, [sp, #416]
	ldr	d0, [x9, :lo12:.LCPI1_20]
	adrp	x9, .LCPI1_23
	str	d0, [sp, #408]
	ldr	q0, [x10, :lo12:.LCPI1_21]
	adrp	x10, .LCPI1_24
	str	q0, [sp, #384]
	ldr	q0, [x11, :lo12:.LCPI1_22]
	adrp	x11, .LCPI1_25
	str	q0, [sp, #368]
	ldr	q0, [x9, :lo12:.LCPI1_23]
	adrp	x9, .LCPI1_26
	str	q0, [sp, #352]
	ldr	d0, [x10, :lo12:.LCPI1_24]
	adrp	x10, .LCPI1_27
	str	d0, [sp, #344]
	ldr	d0, [x11, :lo12:.LCPI1_25]
	adrp	x11, .LCPI1_28
	str	d0, [sp, #336]
	ldr	d0, [x9, :lo12:.LCPI1_26]
	adrp	x9, .LCPI1_29
	str	d0, [sp, #328]
	ldr	q0, [x10, :lo12:.LCPI1_27]
	adrp	x10, .LCPI1_30
	str	q0, [sp, #304]
	ldr	q0, [x11, :lo12:.LCPI1_28]
	adrp	x11, .LCPI1_31
	str	q0, [sp, #288]
	ldr	q0, [x9, :lo12:.LCPI1_29]
	adrp	x9, .LCPI1_32
	str	q0, [sp, #272]
	ldr	q0, [x10, :lo12:.LCPI1_30]
	adrp	x10, .LCPI1_33
	str	q0, [sp, #256]
	ldr	d0, [x11, :lo12:.LCPI1_31]
	adrp	x11, .LCPI1_34
	str	d0, [sp, #248]
	ldr	d0, [x9, :lo12:.LCPI1_32]
	adrp	x9, .LCPI1_35
	str	d0, [sp, #240]
	ldr	q0, [x10, :lo12:.LCPI1_33]
	ldr	q27, [x9, :lo12:.LCPI1_35]
	adrp	x9, .LCPI1_39
	adrp	x10, .LCPI1_37
	str	q0, [sp, #224]
	ldr	q0, [x11, :lo12:.LCPI1_34]
	adrp	x11, .LCPI1_38
	str	q27, [sp, #192]
	ldr	d13, [x10, :lo12:.LCPI1_37]
	adrp	x10, .LCPI1_41
	str	q0, [sp, #208]
	ldr	q0, [x9, :lo12:.LCPI1_39]
	ldr	q14, [x11, :lo12:.LCPI1_38]
	adrp	x11, .LCPI1_42
	adrp	x9, .LCPI1_43
	ldr	q15, [x10, :lo12:.LCPI1_41]
	str	q0, [sp, #144]
	ldr	q0, [x12, :lo12:.LCPI1_40]
	adrp	x12, .LCPI1_44
	adrp	x10, .LCPI1_45
	stp	d13, d9, [sp, #176]
	str	q0, [sp, #128]
	ldr	d0, [x11, :lo12:.LCPI1_42]
	adrp	x11, .LCPI1_46
	ldr	q30, [x12, :lo12:.LCPI1_44]
	adrp	x12, .LCPI1_48
	ldr	q31, [x10, :lo12:.LCPI1_45]
	str	d0, [sp, #104]
	ldr	d0, [x9, :lo12:.LCPI1_43]
	adrp	x9, .LCPI1_47
	adrp	x10, .LCPI1_49
	ldr	q25, [x11, :lo12:.LCPI1_46]
	str	q14, [sp, #160]
	str	d0, [sp, #96]
	ldr	d11, [x12, :lo12:.LCPI1_48]
	ldr	d10, [x9, :lo12:.LCPI1_47]
	add	x9, x2, #63
	ldr	d0, [x10, :lo12:.LCPI1_49]
	str	q15, [sp, #112]
	stp	q31, q30, [sp, #64]
	str	q25, [sp, #48]
	stp	d0, d11, [sp, #24]
	str	d10, [sp, #40]
.Ltmp270:
.LBB1_3:
	ldr	h1, [x0, x8, lsl #1]
	fmov	h0, #1.00000000
	movi	d2, #0000000000000000
	mov	x10, xzr
	mov	x11, x9
	fdiv	h0, h0, h1
	fcmp	h1, #0.0
	str	h1, [sp, #748]
	fcsel	h8, h0, h2, ne
.Ltmp271:
.LBB1_4:
	add	x12, x1, x10
	str	h2, [sp, #750]
	add	x10, x10, #64
	cmp	x10, #128
	ld4	{ v16.8h, v17.8h, v18.8h, v19.8h }, [x12]
	fsub	v0.8h, v16.8h, v17.8h
	fadd	v1.8h, v16.8h, v17.8h
	fsub	v4.8h, v0.8h, v18.8h
	fsub	v6.8h, v1.8h, v18.8h
	fadd	v7.8h, v18.8h, v0.8h
	fadd	v3.8h, v18.8h, v1.8h
	fsub	v25.8h, v4.8h, v19.8h
	fsub	v0.8h, v6.8h, v19.8h
	fsub	v1.8h, v7.8h, v19.8h
	fadd	v5.8h, v19.8h, v4.8h
	fadd	v4.8h, v19.8h, v7.8h
	fneg	v7.8h, v25.8h
	fsub	v2.8h, v3.8h, v19.8h
	fadd	v3.8h, v19.8h, v3.8h
	fadd	v6.8h, v19.8h, v6.8h
	fmul	v18.8h, v25.8h, v8.h[0]
	fmul	v19.8h, v7.8h, v8.h[0]
	fneg	v30.8h, v0.8h
	fmul	v0.8h, v0.8h, v8.h[0]
	fneg	v16.8h, v6.8h
	fcvtns	v7.8h, v18.8h
	fcvtns	v18.8h, v19.8h
	fmul	v31.8h, v3.8h, v8.h[0]
	fneg	v19.8h, v1.8h
	fmul	v30.8h, v30.8h, v8.h[0]
	fneg	v27.8h, v3.8h
	fneg	v25.8h, v5.8h
	fneg	v28.8h, v2.8h
	fmul	v2.8h, v2.8h, v8.h[0]
	fmul	v16.8h, v16.8h, v8.h[0]
	fmul	v19.8h, v19.8h, v8.h[0]
	fcvtns	v3.8h, v0.8h
	fcvtns	v0.8h, v30.8h
	fneg	v17.8h, v4.8h
	fmul	v1.8h, v1.8h, v8.h[0]
	sqxtn	v26.8b, v18.8h
	fmul	v6.8h, v6.8h, v8.h[0]
	fmul	v4.8h, v4.8h, v8.h[0]
	fmul	v25.8h, v25.8h, v8.h[0]
	fmul	v28.8h, v28.8h, v8.h[0]
	fcvtns	v29.8h, v2.8h
	fcvtns	v30.8h, v16.8h
	fcvtns	v16.8h, v19.8h
	sqxtn	v2.8b, v0.8h
	fmul	v17.8h, v17.8h, v8.h[0]
	fmul	v18.8h, v5.8h, v8.h[0]
	str	q26, [sp, #656]
	fcvtns	v5.8h, v1.8h
	fcvtns	v1.8h, v6.8h
	fcvtns	v6.8h, v4.8h
	fcvtns	v31.8h, v31.8h
	fcvtns	v19.8h, v25.8h
	fcvtns	v25.8h, v28.8h
	sqxtn	v16.8b, v16.8h
	fcvtns	v17.8h, v17.8h
	mov	v28.16b, v26.16b
	sqxtn	v13.8b, v30.8h
	mov	v30.16b, v2.16b
	fmul	v9.8h, v27.8h, v8.h[0]
	sqxtn2	v28.16b, v31.8h
	mov	v31.16b, v16.16b
	sqxtn2	v30.16b, v6.8h
	sqxtn	v6.8b, v25.8h
	sqxtn	v0.8b, v17.8h
	sqxtn2	v31.16b, v1.8h
	fcvtns	v1.8h, v18.8h
	mov	v25.16b, v6.16b
	fcvtns	v4.8h, v9.8h
	mov	v10.16b, v13.16b
	mov	v11.16b, v0.16b
	sqxtn	v15.8b, v19.8h
	tbl	v18.16b, { v31.16b }, v22.16b
	sqxtn2	v25.16b, v1.8h
	ldp	d22, d1, [sp, #8]
	sqxtn	v14.8b, v7.8h
	sqxtn	v4.8b, v4.8h
	sqxtn2	v10.16b, v5.8h
	sqxtn2	v11.16b, v3.8h
	mov	v9.16b, v15.16b
	tbl	v17.16b, { v30.16b }, v21.16b
	tbl	v21.8b, { v10.16b }, v1.8b
	zip1	v1.8b, v4.8b, v14.8b
	tbl	v22.8b, { v11.16b }, v22.8b
	tbl	v19.16b, { v28.16b }, v20.16b
	sqxtn2	v9.16b, v29.8h
	tbl	v20.16b, { v25.16b }, v23.16b
	mov	v1.h[1], v22.h[1]
	mov	v22.16b, v25.16b
	mov	v17.h[7], v19.h[7]
	tbl	v19.8b, { v9.16b }, v24.8b
	mov	v20.h[5], v18.h[5]
	ldp	q18, q24, [sp, #528]
	mov	v22.b[8], v6.b[1]
	ldr	d6, [sp, #520]
	tbl	v23.16b, { v28.16b }, v12.16b
	ldr	q12, [sp, #560]
	mov	v21.h[3], v19.h[3]
	tbl	v19.8b, { v9.16b }, v6.8b
	ldp	d26, d6, [sp, #504]
	tbl	v24.16b, { v30.16b }, v24.16b
	tbl	v18.16b, { v31.16b }, v18.16b
	mov	v20.s[3], v17.s[3]
	tbl	v26.8b, { v11.16b }, v26.8b
	mov	v24.h[7], v23.h[7]
	tbl	v23.8b, { v10.16b }, v6.8b
	mov	v22.h[5], v18.h[5]
	ldr	q18, [sp, #432]
	trn2	v6.8b, v4.8b, v14.8b
	mov	v1.s[1], v21.s[1]
	mov	v23.h[3], v19.h[3]
	tbl	v19.16b, { v25.16b }, v18.16b
	ldp	q18, q17, [sp, #464]
	mov	v6.h[1], v26.h[1]
	mov	v22.s[3], v24.s[3]
	mov	v1.d[1], v20.d[1]
	tbl	v21.16b, { v30.16b }, v18.16b
	sqxtn	v18.8b, v3.8h
	tbl	v17.16b, { v28.16b }, v17.16b
	mov	v3.16b, v4.16b
	stur	q1, [x11, #-63]
	mov	v6.s[1], v23.s[1]
	mov	v26.16b, v0.16b
	mov	v21.h[7], v17.h[7]
	ldr	q17, [sp, #448]
	sqxtn2	v3.16b, v7.8h
	ldr	d7, [sp, #424]
	ldp	q23, q24, [sp, #352]
	tbl	v17.16b, { v31.16b }, v17.16b
	zip2	v4.8b, v4.8b, v14.8b
	tbl	v20.8b, { v9.16b }, v7.8b
	mov	v6.d[1], v22.d[1]
	mov	v26.b[3], v18.b[2]
	mov	v19.h[5], v17.h[5]
	ldr	d7, [sp, #416]
	mov	v17.16b, v31.16b
	stur	q6, [x11, #-47]
	tbl	v23.16b, { v25.16b }, v23.16b
	tbl	v22.8b, { v10.16b }, v7.8b
	ldr	d7, [sp, #408]
	tbl	v24.16b, { v30.16b }, v24.16b
	mov	v17.b[10], v16.b[3]
	ldr	q16, [sp, #272]
	tbl	v7.8b, { v3.16b }, v7.8b
	mov	v22.h[3], v20.h[3]
	ldr	q20, [sp, #384]
	mov	v19.s[3], v21.s[3]
	mov	v23.h[5], v17.h[5]
	mov	v7.h[1], v26.h[1]
	tbl	v20.16b, { v28.16b }, v20.16b
	tbl	v26.16b, { v31.16b }, v16.16b
	ldp	d17, d16, [sp, #336]
	trn2	v21.8b, v0.8b, v18.8b
	zip2	v0.8b, v0.8b, v18.8b
	mov	v24.h[7], v20.h[7]
	mov	v7.s[1], v22.s[1]
	tbl	v20.8b, { v10.16b }, v17.8b
	ldr	d17, [sp, #328]
	tbl	v16.8b, { v9.16b }, v16.8b
	fcvtl	v22.4s, v27.4h
	mov	v23.s[3], v24.s[3]
	mov	h24, v27.h[2]
	tbl	v17.8b, { v3.16b }, v17.8b
	mov	v7.d[1], v19.d[1]
	mov	v20.h[3], v16.h[3]
	ldr	q16, [sp, #256]
	sqxtn	v5.8b, v5.8h
	mov	v17.h[1], v21.h[1]
	faddp	s21, v22.2s
	stur	q7, [x11, #-31]
	fcvt	s22, h24
	mov	h24, v27.h[5]
	tbl	v16.16b, { v25.16b }, v16.16b
	trn2	v18.8b, v13.8b, v5.8b
	mov	v17.s[1], v20.s[1]
	ldp	q20, q19, [sp, #288]
	fadd	s21, s21, s22
	mov	v16.h[5], v26.h[5]
	mov	v17.d[1], v23.d[1]
	mov	h23, v27.h[3]
	tbl	v20.16b, { v30.16b }, v20.16b
	tbl	v19.16b, { v28.16b }, v19.16b
	mov	v6.16b, v15.16b
	stur	q17, [x11, #-15]
	fcvt	s22, h23
	mov	h23, v27.h[4]
	mov	v20.h[7], v19.h[7]
	mov	v19.16b, v13.16b
	fadd	s21, s21, s22
	ldp	d26, d22, [sp, #240]
	fcvt	s23, h23
	mov	v19.b[5], v5.b[4]
	zip2	v5.8b, v13.8b, v5.8b
	mov	v16.s[3], v20.s[3]
	ldr	q20, [sp, #208]
	tbl	v26.8b, { v11.16b }, v26.8b
	tbl	v22.8b, { v9.16b }, v22.8b
	fadd	s21, s21, s23
	fcvt	s23, h24
	mov	h24, v27.h[6]
	tbl	v20.16b, { v31.16b }, v20.16b
	mov	v4.h[1], v26.h[1]
	ldr	d26, [sp, #24]
	mov	v19.h[3], v22.h[3]
	mov	v22.16b, v30.16b
	fadd	s21, s21, s23
	fcvt	s23, h24
	mov	h24, v27.h[7]
	ldr	q27, [sp, #192]
	mov	v22.b[12], v2.b[5]
	ldr	q2, [sp, #224]
	mov	v4.s[1], v19.s[1]
	fadd	s21, s21, s23
	tbl	v14.16b, { v28.16b }, v2.16b
	fcvt	s23, h24
	tbl	v2.16b, { v25.16b }, v27.16b
	ldr	d24, [sp, #584]
	mov	v4.d[1], v16.d[1]
	mov	v22.h[7], v14.h[7]
	mov	v2.h[5], v20.h[5]
	fadd	s20, s21, s23
	ldr	h23, [sp, #750]
	ldp	d13, d21, [sp, #176]
	stur	q4, [x11, #1]
	mov	v2.s[3], v22.s[3]
	fcvt	s23, h23
	ldp	q19, q14, [sp, #144]
	tbl	v1.8b, { v3.16b }, v13.8b
	tbl	v21.8b, { v9.16b }, v21.8b
	fadd	s20, s20, s23
	tbl	v19.16b, { v30.16b }, v19.16b
	mov	v1.h[1], v0.h[1]
	mov	v18.h[3], v21.h[3]
	ldr	q0, [sp, #128]
	sqxtn	v21.8b, v29.8h
	ldp	d23, d7, [sp, #96]
	tbl	v0.16b, { v31.16b }, v0.16b
	mov	v1.s[1], v18.s[1]
	zip2	v22.8b, v15.8b, v21.8b
	ldr	q15, [sp, #112]
	mov	v6.b[7], v21.b[6]
	tbl	v23.8b, { v3.16b }, v23.8b
	tbl	v18.16b, { v28.16b }, v14.16b
	tbl	v21.16b, { v25.16b }, v15.16b
	tbl	v7.8b, { v11.16b }, v7.8b
	mov	v5.h[3], v6.h[3]
	tbl	v3.8b, { v3.16b }, v26.8b
	mov	v19.h[7], v18.h[7]
	mov	v21.h[5], v0.h[5]
	ldr	q0, [sp, #656]
	ldp	d18, d17, [sp, #32]
	mov	v23.h[1], v7.h[1]
	mov	v28.b[14], v0.b[7]
	ldr	q7, [sp, #48]
	ldp	q6, q0, [sp, #64]
	tbl	v18.8b, { v11.16b }, v18.8b
	tbl	v7.16b, { v25.16b }, v7.16b
	tbl	v17.8b, { v10.16b }, v17.8b
	mov	v21.s[3], v19.s[3]
	tbl	v6.16b, { v31.16b }, v6.16b
	mov	v3.h[1], v18.h[1]
	tbl	v0.16b, { v30.16b }, v0.16b
	mov	v17.h[3], v22.h[3]
	mov	v7.h[5], v6.h[5]
	mov	v23.s[1], v5.s[1]
	mov	v0.h[7], v28.h[7]
	mov	v3.s[1], v17.s[1]
	mov	v1.d[1], v2.d[1]
	mov	v23.d[1], v21.d[1]
	mov	v7.s[3], v0.s[3]
	ldp	q22, q21, [sp, #608]
	fcvt	h2, s20
	stur	q1, [x11, #17]
	stur	q23, [x11, #33]
	mov	v3.d[1], v7.d[1]
	ldr	q23, [sp, #592]
	stur	q3, [x11, #49]
	ldr	q20, [sp, #640]
	add	x11, x11, #128
	b.ne	.LBB1_4
.Ltmp272:
	lsl	x10, x8, #1
	add	x8, x8, #1
.Ltmp273:
	add	x1, x1, #128
.Ltmp274:
	add	x9, x9, #256
	ldr	h0, [sp, #748]
	cmp	x8, #64
	str	h2, [x3, x10]
	str	h0, [x0, x10]
	b.ne	.LBB1_3
.Ltmp275:
	add	sp, sp, #672
	ldp	d9, d8, [sp, #48]
	ldp	d11, d10, [sp, #32]
	ldp	d13, d12, [sp, #16]
	ldr	x29, [sp, #64]
	ldp	d15, d14, [sp], #80
	ret
.Ltmp276:
.Lfunc_end1:
	.size	preprocessor_t4_int8_m8192_k4096_n1_b2_compute_, .Lfunc_end1-preprocessor_t4_int8_m8192_k4096_n1_b2_compute_
	.cfi_endproc

	.section	.text.tvm.fp16.conv,"ax",@progbits
	.weak	__truncsfhf2
	.p2align	2
	.type	__truncsfhf2,@function
__truncsfhf2:
.Lfunc_begin2:
	.cfi_startproc
	fmov	w8, s0
	mov	w10, #-947912704
	mov	w11, #-1199570944
	and	w9, w8, #0x7fffffff
	add	w10, w9, w10
	add	w11, w9, w11
	cmp	w10, w11
	b.hs	.LBB2_4
	ubfx	w10, w8, #13, #16
	and	w11, w8, #0x1fff
	sub	w9, w10, #28, lsl #12
	cmp	w11, #1, lsl #12
	b.ls	.LBB2_6
	mov	w9, #16384
	movk	w9, #65534, lsl #16
	add	w9, w9, w10
	add	w9, w9, #1
.LBB2_3:
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB2_4:
	mov	w10, #1
	movk	w10, #32640, lsl #16
	cmp	w9, w10
	b.lo	.LBB2_8
	mov	w9, #32256
	bfxil	w9, w8, #13, #9
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB2_6:
	b.ne	.LBB2_3
	ubfx	w10, w8, #13, #1
	add	w9, w10, w9, uxth
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB2_8:
	lsr	w10, w9, #23
	cmp	w10, #142
	b.ls	.LBB2_10
	mov	w9, #31744
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB2_10:
	lsr	w9, w9, #24
	cmp	w9, #45
	b.hs	.LBB2_12
	mov	w9, wzr
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB2_12:
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
	b.ls	.LBB2_14
	add	w9, w9, #1
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.LBB2_14:
	b.ne	.LBB2_3
	ubfx	w10, w10, #13, #1
	add	w9, w10, w9
	lsr	w8, w8, #16
	and	w8, w8, #0x8000
	orr	w0, w9, w8
	ret
.Lfunc_end2:
	.size	__truncsfhf2, .Lfunc_end2-__truncsfhf2
	.cfi_endproc

	.weak	__extendhfsf2
	.p2align	2
	.type	__extendhfsf2,@function
__extendhfsf2:
.Lfunc_begin3:
	.cfi_startproc
	and	w9, w0, #0x7fff
	and	w8, w0, #0xffff
	sub	w10, w9, #1024
	lsr	w10, w10, #11
	cmp	w10, #14
	b.hi	.LBB3_3
	mov	w10, #939524096
	add	w9, w10, w9, lsl #13
.LBB3_2:
	and	w8, w8, #0x8000
	orr	w8, w9, w8, lsl #16
	fmov	s0, w8
	ret
.LBB3_3:
	lsr	w10, w9, #10
	cmp	w10, #31
	b.lo	.LBB3_5
	lsl	w9, w9, #13
	orr	w9, w9, #0x7f800000
	and	w8, w8, #0x8000
	orr	w8, w9, w8, lsl #16
	fmov	s0, w8
	ret
.LBB3_5:
	cbz	w9, .LBB3_2
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
.Lfunc_end3:
	.size	__extendhfsf2, .Lfunc_end3-__extendhfsf2
	.cfi_endproc

	.type	__TVMAPISetLastError,@object
	.bss
	.weak	__TVMAPISetLastError
	.p2align	3
__TVMAPISetLastError:
	.xword	0
	.size	__TVMAPISetLastError, 8

	.type	.L.str,@object
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	"Assert fail: num_args == 4, preprocessor_t4_int8_m8192_k4096_n1_b2: num_args should be 4"
	.size	.L.str, 89

	.type	.L.str.1,@object
.L.str.1:
	.asciz	"Assert fail: not T.isnullptr(args), preprocessor_t4_int8_m8192_k4096_n1_b2: TVMValue* arg pointer was NULL"
	.size	.L.str.1, 107

	.type	.L.str.2,@object
.L.str.2:
	.asciz	"Assert fail: not T.isnullptr(arg_type_ids), preprocessor_t4_int8_m8192_k4096_n1_b2: int* type_codes was NULL"
	.size	.L.str.2, 109

	.type	.L.str.3,@object
.L.str.3:
	.asciz	"Assert fail: B_code == 3 or B_code == 13 or B_code == 7 or B_code == 4, preprocessor_t4_int8_m8192_k4096_n1_b2: Expect arg[0] to be pointer"
	.size	.L.str.3, 140

	.type	.L.str.4,@object
.L.str.4:
	.asciz	"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, preprocessor_t4_int8_m8192_k4096_n1_b2: Expect arg[1] to be pointer"
	.size	.L.str.4, 176

	.type	.L.str.5,@object
.L.str.5:
	.asciz	"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, preprocessor_t4_int8_m8192_k4096_n1_b2: Expect arg[2] to be pointer"
	.size	.L.str.5, 176

	.type	.L.str.6,@object
.L.str.6:
	.asciz	"Assert fail: QLUT_code == 3 or QLUT_code == 13 or QLUT_code == 7 or QLUT_code == 4, preprocessor_t4_int8_m8192_k4096_n1_b2: Expect arg[3] to be pointer"
	.size	.L.str.6, 152

	.type	.L.str.7,@object
.L.str.7:
	.asciz	"Assert fail: not T.isnullptr(B), preprocessor_t4_int8_m8192_k4096_n1_b2.B is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.7, 121

	.type	.L.str.8,@object
.L.str.8:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(B, 0, 4, \"int32\"), preprocessor_t4_int8_m8192_k4096_n1_b2.B.ndim is expected to equal 2"
	.size	.L.str.8, 123

	.type	.L.str.9,@object
.L.str.9:
	.asciz	"Assert fail: not T.isnullptr(LUT_Scales), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.9, 139

	.type	.L.str.10,@object
.L.str.10:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \"int32\"), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.ndim is expected to equal 2"
	.size	.L.str.10, 141

	.type	.L.str.11,@object
.L.str.11:
	.asciz	"Assert fail: not T.isnullptr(LUT_Biases), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.11, 139

	.type	.L.str.12,@object
.L.str.12:
	.asciz	"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \"int32\"), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.ndim is expected to equal 2"
	.size	.L.str.12, 141

	.type	.L.str.13,@object
.L.str.13:
	.asciz	"Assert fail: not T.isnullptr(QLUT), preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT is expected to have non-NULL DLTensor* pointer"
	.size	.L.str.13, 127

	.type	.L.str.14,@object
.L.str.14:
	.asciz	"Assert fail: 3 == T.tvm_struct_get(QLUT, 0, 4, \"int32\"), preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.ndim is expected to equal 3"
	.size	.L.str.14, 129

	.type	.L.str.15,@object
.L.str.15:
	.asciz	"Assert fail: T.tvm_struct_get(B, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(B, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(B, 0, 7, \"uint16\") == T.uint16(1), preprocessor_t4_int8_m8192_k4096_n1_b2.B.dtype is expected to be float16"
	.size	.L.str.15, 245

	.type	.L.str.16,@object
.L.str.16:
	.asciz	"Assert fail: T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_B_shape[0]) == 1, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.B.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_B_shape[0])"
	.size	.L.str.16, 248

	.type	.L.str.17,@object
.L.str.17:
	.asciz	"Assert fail: T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_B_shape[1]) == 4096, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.B.shape[1] has an unsatisfied constraint: 4096 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_B_shape[1])"
	.size	.L.str.17, 254

	.type	.L.str.18,@object
.L.str.18:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_B_strides[1]), preprocessor_t4_int8_m8192_k4096_n1_b2.B.strides: expected to be compact array"
	.size	.L.str.18, 167

	.type	.L.str.19,@object
.L.str.19:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(B, 0, 8, \"uint64\"), Argument preprocessor_t4_int8_m8192_k4096_n1_b2.B.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(B, 0, 8, \"uint64\")"
	.size	.L.str.19, 209

	.type	.L.str.20,@object
.L.str.20:
	.asciz	"Assert fail: T.tvm_struct_get(B, 0, 10, \"int32\") == 1, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.B.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(B, 0, 10, \"int32\")"
	.size	.L.str.20, 189

	.type	.L.str.21,@object
.L.str.21:
	.asciz	"Assert fail: not T.isnullptr(B), preprocessor_t4_int8_m8192_k4096_n1_b2.B is expected to have non-NULL data pointer"
	.size	.L.str.21, 116

	.type	.L.str.22,@object
.L.str.22:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \"uint16\") == T.uint16(1), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.dtype is expected to be float16"
	.size	.L.str.22, 281

	.type	.L.str.23,@object
.L.str.23:
	.asciz	"Assert fail: T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[0]) == 1, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[0])"
	.size	.L.str.23, 275

	.type	.L.str.24,@object
.L.str.24:
	.asciz	"Assert fail: T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[1]) == 64, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 64 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Scales_shape[1])"
	.size	.L.str.24, 277

	.type	.L.str.25,@object
.L.str.25:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Scales_strides[1]), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides: expected to be compact array"
	.size	.L.str.25, 185

	.type	.L.str.26,@object
.L.str.26:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \"uint64\"), Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \"uint64\")"
	.size	.L.str.26, 236

	.type	.L.str.27,@object
.L.str.27:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \"int32\") == 1, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \"int32\")"
	.size	.L.str.27, 216

	.type	.L.str.28,@object
.L.str.28:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \"int32\"), Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \"int32\")"
	.size	.L.str.28, 222

	.type	.L.str.29,@object
.L.str.29:
	.asciz	"Assert fail: not T.isnullptr(LUT_Scales), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales is expected to have non-NULL data pointer"
	.size	.L.str.29, 134

	.type	.L.str.30,@object
.L.str.30:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \"uint8\") == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \"uint8\") == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \"uint16\") == T.uint16(1), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.dtype is expected to be float16"
	.size	.L.str.30, 281

	.type	.L.str.31,@object
.L.str.31:
	.asciz	"Assert fail: T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[0]) == 1, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[0])"
	.size	.L.str.31, 275

	.type	.L.str.32,@object
.L.str.32:
	.asciz	"Assert fail: T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[1]) == 64, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 64 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Biases_shape[1])"
	.size	.L.str.32, 277

	.type	.L.str.33,@object
.L.str.33:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_LUT_Biases_strides[1]), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides: expected to be compact array"
	.size	.L.str.33, 185

	.type	.L.str.34,@object
.L.str.34:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \"uint64\"), Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \"uint64\")"
	.size	.L.str.34, 236

	.type	.L.str.35,@object
.L.str.35:
	.asciz	"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \"int32\") == 1, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \"int32\")"
	.size	.L.str.35, 216

	.type	.L.str.36,@object
.L.str.36:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \"int32\"), Argument preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \"int32\")"
	.size	.L.str.36, 222

	.type	.L.str.37,@object
.L.str.37:
	.asciz	"Assert fail: not T.isnullptr(LUT_Biases), preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases is expected to have non-NULL data pointer"
	.size	.L.str.37, 134

	.type	.L.str.38,@object
.L.str.38:
	.asciz	"Assert fail: T.tvm_struct_get(QLUT, 0, 5, \"uint8\") == T.uint8(0) and T.tvm_struct_get(QLUT, 0, 6, \"uint8\") == T.uint8(8) and T.tvm_struct_get(QLUT, 0, 7, \"uint16\") == T.uint16(1), preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.dtype is expected to be int8"
	.size	.L.str.38, 253

	.type	.L.str.39,@object
.L.str.39:
	.asciz	"Assert fail: T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_shape[0]) == 1, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_shape[0])"
	.size	.L.str.39, 257

	.type	.L.str.40,@object
.L.str.40:
	.asciz	"Assert fail: T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_shape[1]) == 1024, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_shape[1])"
	.size	.L.str.40, 263

	.type	.L.str.41,@object
.L.str.41:
	.asciz	"Assert fail: T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_shape[2]) == 16, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_shape[2])"
	.size	.L.str.41, 259

	.type	.L.str.42,@object
.L.str.42:
	.asciz	"Assert fail: 1 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_strides[2]) and 16 == T.Cast(\"int32\", preprocessor_t4_int8_m8192_k4096_n1_b2_QLUT_strides[1]), preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.strides: expected to be compact array"
	.size	.L.str.42, 255

	.type	.L.str.43,@object
.L.str.43:
	.asciz	"Assert fail: T.uint64(0) == T.tvm_struct_get(QLUT, 0, 8, \"uint64\"), Argument preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(QLUT, 0, 8, \"uint64\")"
	.size	.L.str.43, 218

	.type	.L.str.44,@object
.L.str.44:
	.asciz	"Assert fail: T.tvm_struct_get(QLUT, 0, 10, \"int32\") == 1, Argument preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(QLUT, 0, 10, \"int32\")"
	.size	.L.str.44, 198

	.type	.L.str.45,@object
.L.str.45:
	.asciz	"Assert fail: dev_id == T.tvm_struct_get(QLUT, 0, 9, \"int32\"), Argument preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(QLUT, 0, 9, \"int32\")"
	.size	.L.str.45, 204

	.type	.L.str.46,@object
.L.str.46:
	.asciz	"Assert fail: not T.isnullptr(QLUT), preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT is expected to have non-NULL data pointer"
	.size	.L.str.46, 122

	.type	__tvm_main__,@object
	.weak	__tvm_main__
__tvm_main__:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2"
	.size	__tvm_main__, 39

	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.xword	.Lfunc_begin0-.Lfunc_begin0
	.xword	.Ltmp45-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp45-.Lfunc_begin0
	.xword	.Ltmp94-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp95-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp95-.Lfunc_begin0
	.xword	.Ltmp97-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp98-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp98-.Lfunc_begin0
	.xword	.Ltmp100-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp100-.Lfunc_begin0
	.xword	.Ltmp101-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp101-.Lfunc_begin0
	.xword	.Ltmp103-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp103-.Lfunc_begin0
	.xword	.Ltmp104-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp104-.Lfunc_begin0
	.xword	.Ltmp106-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp106-.Lfunc_begin0
	.xword	.Ltmp107-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp107-.Lfunc_begin0
	.xword	.Ltmp109-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp109-.Lfunc_begin0
	.xword	.Ltmp110-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp110-.Lfunc_begin0
	.xword	.Ltmp112-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp112-.Lfunc_begin0
	.xword	.Ltmp113-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp113-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp116-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp116-.Lfunc_begin0
	.xword	.Ltmp118-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp118-.Lfunc_begin0
	.xword	.Ltmp119-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp119-.Lfunc_begin0
	.xword	.Ltmp121-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp121-.Lfunc_begin0
	.xword	.Ltmp122-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp122-.Lfunc_begin0
	.xword	.Ltmp124-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp124-.Lfunc_begin0
	.xword	.Ltmp125-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp125-.Lfunc_begin0
	.xword	.Ltmp127-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp127-.Lfunc_begin0
	.xword	.Ltmp128-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp128-.Lfunc_begin0
	.xword	.Ltmp130-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp131-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp131-.Lfunc_begin0
	.xword	.Ltmp133-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp135-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp135-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp139-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp139-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp143-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp143-.Lfunc_begin0
	.xword	.Ltmp145-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp147-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp147-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	80
	.byte	159
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp151-.Lfunc_begin0
	.hword	1
	.byte	80
	.xword	.Ltmp151-.Lfunc_begin0
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
	.xword	.Ltmp44-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp44-.Lfunc_begin0
	.xword	.Ltmp94-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp97-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp99-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp99-.Lfunc_begin0
	.xword	.Ltmp100-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp100-.Lfunc_begin0
	.xword	.Ltmp102-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp102-.Lfunc_begin0
	.xword	.Ltmp103-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp103-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp105-.Lfunc_begin0
	.xword	.Ltmp106-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp106-.Lfunc_begin0
	.xword	.Ltmp108-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp108-.Lfunc_begin0
	.xword	.Ltmp109-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp109-.Lfunc_begin0
	.xword	.Ltmp111-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp111-.Lfunc_begin0
	.xword	.Ltmp112-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp112-.Lfunc_begin0
	.xword	.Ltmp114-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp114-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp117-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp117-.Lfunc_begin0
	.xword	.Ltmp118-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp118-.Lfunc_begin0
	.xword	.Ltmp120-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp120-.Lfunc_begin0
	.xword	.Ltmp121-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp121-.Lfunc_begin0
	.xword	.Ltmp123-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp124-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp124-.Lfunc_begin0
	.xword	.Ltmp126-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp126-.Lfunc_begin0
	.xword	.Ltmp127-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp127-.Lfunc_begin0
	.xword	.Ltmp129-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp129-.Lfunc_begin0
	.xword	.Ltmp130-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp132-.Lfunc_begin0
	.xword	.Ltmp133-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp140-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp140-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp144-.Lfunc_begin0
	.xword	.Ltmp145-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp148-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp152-.Lfunc_begin0
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
	.xword	.Ltmp47-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp47-.Lfunc_begin0
	.xword	.Ltmp94-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp97-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp99-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp99-.Lfunc_begin0
	.xword	.Ltmp100-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp100-.Lfunc_begin0
	.xword	.Ltmp102-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp102-.Lfunc_begin0
	.xword	.Ltmp103-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp103-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp105-.Lfunc_begin0
	.xword	.Ltmp106-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp106-.Lfunc_begin0
	.xword	.Ltmp108-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp108-.Lfunc_begin0
	.xword	.Ltmp109-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp109-.Lfunc_begin0
	.xword	.Ltmp111-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp111-.Lfunc_begin0
	.xword	.Ltmp112-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp112-.Lfunc_begin0
	.xword	.Ltmp114-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp114-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp117-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp117-.Lfunc_begin0
	.xword	.Ltmp118-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp118-.Lfunc_begin0
	.xword	.Ltmp120-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp120-.Lfunc_begin0
	.xword	.Ltmp121-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp121-.Lfunc_begin0
	.xword	.Ltmp123-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp124-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp124-.Lfunc_begin0
	.xword	.Ltmp126-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp126-.Lfunc_begin0
	.xword	.Ltmp127-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp127-.Lfunc_begin0
	.xword	.Ltmp129-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp129-.Lfunc_begin0
	.xword	.Ltmp130-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp132-.Lfunc_begin0
	.xword	.Ltmp133-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp140-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp140-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp144-.Lfunc_begin0
	.xword	.Ltmp145-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp148-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	82
	.byte	159
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	1
	.byte	82
	.xword	.Ltmp152-.Lfunc_begin0
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
	.xword	.Ltmp46-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp46-.Lfunc_begin0
	.xword	.Ltmp94-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp97-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp99-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp99-.Lfunc_begin0
	.xword	.Ltmp100-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp100-.Lfunc_begin0
	.xword	.Ltmp102-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp102-.Lfunc_begin0
	.xword	.Ltmp103-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp103-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp105-.Lfunc_begin0
	.xword	.Ltmp106-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp106-.Lfunc_begin0
	.xword	.Ltmp108-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp108-.Lfunc_begin0
	.xword	.Ltmp109-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp109-.Lfunc_begin0
	.xword	.Ltmp111-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp111-.Lfunc_begin0
	.xword	.Ltmp112-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp112-.Lfunc_begin0
	.xword	.Ltmp114-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp114-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp117-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp117-.Lfunc_begin0
	.xword	.Ltmp118-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp118-.Lfunc_begin0
	.xword	.Ltmp120-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp120-.Lfunc_begin0
	.xword	.Ltmp121-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp121-.Lfunc_begin0
	.xword	.Ltmp123-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp124-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp124-.Lfunc_begin0
	.xword	.Ltmp126-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp126-.Lfunc_begin0
	.xword	.Ltmp127-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp127-.Lfunc_begin0
	.xword	.Ltmp129-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp129-.Lfunc_begin0
	.xword	.Ltmp130-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp132-.Lfunc_begin0
	.xword	.Ltmp133-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp140-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp140-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp144-.Lfunc_begin0
	.xword	.Ltmp145-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp148-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	83
	.byte	159
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	1
	.byte	83
	.xword	.Ltmp152-.Lfunc_begin0
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
	.xword	.Ltmp42-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp42-.Lfunc_begin0
	.xword	.Ltmp94-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp97-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp99-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp99-.Lfunc_begin0
	.xword	.Ltmp100-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp100-.Lfunc_begin0
	.xword	.Ltmp102-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp102-.Lfunc_begin0
	.xword	.Ltmp103-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp103-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp105-.Lfunc_begin0
	.xword	.Ltmp106-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp106-.Lfunc_begin0
	.xword	.Ltmp108-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp108-.Lfunc_begin0
	.xword	.Ltmp109-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp109-.Lfunc_begin0
	.xword	.Ltmp111-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp111-.Lfunc_begin0
	.xword	.Ltmp112-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp112-.Lfunc_begin0
	.xword	.Ltmp114-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp114-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp117-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp117-.Lfunc_begin0
	.xword	.Ltmp118-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp118-.Lfunc_begin0
	.xword	.Ltmp120-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp120-.Lfunc_begin0
	.xword	.Ltmp121-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp121-.Lfunc_begin0
	.xword	.Ltmp123-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp124-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp124-.Lfunc_begin0
	.xword	.Ltmp126-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp126-.Lfunc_begin0
	.xword	.Ltmp127-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp127-.Lfunc_begin0
	.xword	.Ltmp129-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp129-.Lfunc_begin0
	.xword	.Ltmp130-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp132-.Lfunc_begin0
	.xword	.Ltmp133-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp140-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp140-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp144-.Lfunc_begin0
	.xword	.Ltmp145-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp148-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	84
	.byte	159
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	1
	.byte	84
	.xword	.Ltmp152-.Lfunc_begin0
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
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp93-.Lfunc_begin0
	.xword	.Ltmp94-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp94-.Lfunc_begin0
	.xword	.Ltmp96-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp96-.Lfunc_begin0
	.xword	.Ltmp97-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp97-.Lfunc_begin0
	.xword	.Ltmp99-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp99-.Lfunc_begin0
	.xword	.Ltmp100-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp100-.Lfunc_begin0
	.xword	.Ltmp102-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp102-.Lfunc_begin0
	.xword	.Ltmp103-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp103-.Lfunc_begin0
	.xword	.Ltmp105-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp105-.Lfunc_begin0
	.xword	.Ltmp106-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp106-.Lfunc_begin0
	.xword	.Ltmp108-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp108-.Lfunc_begin0
	.xword	.Ltmp109-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp109-.Lfunc_begin0
	.xword	.Ltmp111-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp111-.Lfunc_begin0
	.xword	.Ltmp112-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp112-.Lfunc_begin0
	.xword	.Ltmp114-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp114-.Lfunc_begin0
	.xword	.Ltmp115-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp117-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp117-.Lfunc_begin0
	.xword	.Ltmp118-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp118-.Lfunc_begin0
	.xword	.Ltmp120-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp120-.Lfunc_begin0
	.xword	.Ltmp121-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp121-.Lfunc_begin0
	.xword	.Ltmp123-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp123-.Lfunc_begin0
	.xword	.Ltmp124-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp124-.Lfunc_begin0
	.xword	.Ltmp126-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp126-.Lfunc_begin0
	.xword	.Ltmp127-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp127-.Lfunc_begin0
	.xword	.Ltmp129-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp129-.Lfunc_begin0
	.xword	.Ltmp130-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp132-.Lfunc_begin0
	.xword	.Ltmp133-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp136-.Lfunc_begin0
	.xword	.Ltmp137-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp140-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp140-.Lfunc_begin0
	.xword	.Ltmp141-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp144-.Lfunc_begin0
	.xword	.Ltmp145-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp148-.Lfunc_begin0
	.xword	.Ltmp149-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp152-.Lfunc_begin0
	.xword	.Ltmp153-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp156-.Lfunc_begin0
	.xword	.Ltmp157-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp160-.Lfunc_begin0
	.xword	.Ltmp161-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp164-.Lfunc_begin0
	.xword	.Ltmp165-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp168-.Lfunc_begin0
	.xword	.Ltmp169-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp172-.Lfunc_begin0
	.xword	.Ltmp173-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp176-.Lfunc_begin0
	.xword	.Ltmp177-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp180-.Lfunc_begin0
	.xword	.Ltmp181-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp184-.Lfunc_begin0
	.xword	.Ltmp185-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp188-.Lfunc_begin0
	.xword	.Ltmp189-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp192-.Lfunc_begin0
	.xword	.Ltmp193-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp196-.Lfunc_begin0
	.xword	.Ltmp197-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp200-.Lfunc_begin0
	.xword	.Ltmp201-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp204-.Lfunc_begin0
	.xword	.Ltmp205-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp208-.Lfunc_begin0
	.xword	.Ltmp209-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp212-.Lfunc_begin0
	.xword	.Ltmp213-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp216-.Lfunc_begin0
	.xword	.Ltmp217-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp220-.Lfunc_begin0
	.xword	.Ltmp221-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp224-.Lfunc_begin0
	.xword	.Ltmp225-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp228-.Lfunc_begin0
	.xword	.Ltmp229-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp232-.Lfunc_begin0
	.xword	.Ltmp233-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp236-.Lfunc_begin0
	.xword	.Ltmp237-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp240-.Lfunc_begin0
	.xword	.Ltmp241-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp244-.Lfunc_begin0
	.xword	.Ltmp245-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp248-.Lfunc_begin0
	.xword	.Ltmp249-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp252-.Lfunc_begin0
	.xword	.Ltmp253-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp256-.Lfunc_begin0
	.xword	.Ltmp257-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp260-.Lfunc_begin0
	.xword	.Ltmp261-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp263-.Lfunc_begin0
	.xword	.Ltmp264-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	85
	.byte	159
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	1
	.byte	85
	.xword	.Ltmp266-.Lfunc_begin0
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
	.xword	.Ltmp29-.Lfunc_begin0
	.xword	.Ltmp90-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp134-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp138-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp142-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp146-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp150-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp154-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp158-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp162-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp166-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp170-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp174-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp178-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp182-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp186-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp190-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp194-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp198-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp202-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp206-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp210-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp214-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp218-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp222-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp226-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp230-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp234-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp238-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp242-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp246-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp250-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp254-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp258-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc11:
	.xword	.Ltmp26-.Lfunc_begin0
	.xword	.Ltmp76-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp127-.Lfunc_begin0
	.xword	.Ltmp129-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp140-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	122
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc12:
	.xword	.Ltmp23-.Lfunc_begin0
	.xword	.Ltmp64-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp121-.Lfunc_begin0
	.xword	.Ltmp123-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp124-.Lfunc_begin0
	.xword	.Ltmp126-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp127-.Lfunc_begin0
	.xword	.Ltmp129-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp140-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	125
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc13:
	.xword	.Ltmp20-.Lfunc_begin0
	.xword	.Ltmp52-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp115-.Lfunc_begin0
	.xword	.Ltmp117-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp118-.Lfunc_begin0
	.xword	.Ltmp120-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp121-.Lfunc_begin0
	.xword	.Ltmp123-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp124-.Lfunc_begin0
	.xword	.Ltmp126-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp127-.Lfunc_begin0
	.xword	.Ltmp129-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp130-.Lfunc_begin0
	.xword	.Ltmp132-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp133-.Lfunc_begin0
	.xword	.Ltmp136-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp137-.Lfunc_begin0
	.xword	.Ltmp140-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp141-.Lfunc_begin0
	.xword	.Ltmp144-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp149-.Lfunc_begin0
	.xword	.Ltmp152-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	128
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc14:
	.xword	.Ltmp44-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	113
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc15:
	.xword	.Ltmp43-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc16:
	.xword	.Ltmp42-.Lfunc_begin0
	.xword	.Ltmp49-.Lfunc_begin0
	.hword	2
	.byte	116
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc17:
	.xword	.Ltmp35-.Lfunc_begin0
	.xword	.Ltmp37-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	.Ltmp145-.Lfunc_begin0
	.xword	.Ltmp148-.Lfunc_begin0
	.hword	2
	.byte	121
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc18:
	.xword	.Ltmp45-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp155-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp159-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp163-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp167-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp171-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp175-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp179-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp183-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp187-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp191-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp195-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp199-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp203-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp207-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp211-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp215-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp219-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp223-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp227-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp231-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp235-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp239-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp243-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp247-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp251-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp255-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp259-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp262-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp265-.Lfunc_begin0
	.hword	2
	.byte	112
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc19:
	.xword	.Ltmp39-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	129
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc20:
	.xword	.Ltmp39-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	130
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc21:
	.xword	.Ltmp46-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	115
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc22:
	.xword	.Ltmp40-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	126
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc23:
	.xword	.Ltmp40-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	127
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc24:
	.xword	.Ltmp41-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	124
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc25:
	.xword	.Ltmp41-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	123
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc26:
	.xword	.Ltmp47-.Lfunc_begin0
	.xword	.Ltmp93-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp153-.Lfunc_begin0
	.xword	.Ltmp156-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp157-.Lfunc_begin0
	.xword	.Ltmp160-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp161-.Lfunc_begin0
	.xword	.Ltmp164-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp165-.Lfunc_begin0
	.xword	.Ltmp168-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp169-.Lfunc_begin0
	.xword	.Ltmp172-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp173-.Lfunc_begin0
	.xword	.Ltmp176-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp177-.Lfunc_begin0
	.xword	.Ltmp180-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp181-.Lfunc_begin0
	.xword	.Ltmp184-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp185-.Lfunc_begin0
	.xword	.Ltmp188-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp189-.Lfunc_begin0
	.xword	.Ltmp192-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp193-.Lfunc_begin0
	.xword	.Ltmp196-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp197-.Lfunc_begin0
	.xword	.Ltmp200-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp201-.Lfunc_begin0
	.xword	.Ltmp204-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp205-.Lfunc_begin0
	.xword	.Ltmp208-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp209-.Lfunc_begin0
	.xword	.Ltmp212-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp213-.Lfunc_begin0
	.xword	.Ltmp216-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp217-.Lfunc_begin0
	.xword	.Ltmp220-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp221-.Lfunc_begin0
	.xword	.Ltmp224-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp225-.Lfunc_begin0
	.xword	.Ltmp228-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp229-.Lfunc_begin0
	.xword	.Ltmp232-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp233-.Lfunc_begin0
	.xword	.Ltmp236-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp237-.Lfunc_begin0
	.xword	.Ltmp240-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp241-.Lfunc_begin0
	.xword	.Ltmp244-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp245-.Lfunc_begin0
	.xword	.Ltmp248-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp249-.Lfunc_begin0
	.xword	.Ltmp252-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp253-.Lfunc_begin0
	.xword	.Ltmp256-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp257-.Lfunc_begin0
	.xword	.Ltmp260-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp261-.Lfunc_begin0
	.xword	.Ltmp263-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	.Ltmp264-.Lfunc_begin0
	.xword	.Ltmp266-.Lfunc_begin0
	.hword	2
	.byte	114
	.byte	0
	.xword	0
	.xword	0
.Ldebug_loc27:
	.xword	.Lfunc_begin1-.Lfunc_begin0
	.xword	.Ltmp270-.Lfunc_begin0
	.hword	1
	.byte	81
	.xword	.Ltmp274-.Lfunc_begin0
	.xword	.Ltmp275-.Lfunc_begin0
	.hword	4
	.byte	243
	.byte	1
	.byte	81
	.byte	159
	.xword	0
	.xword	0
.Ldebug_loc28:
	.xword	.Ltmp273-.Lfunc_begin0
	.xword	.Lfunc_end1-.Lfunc_begin0
	.hword	2
	.byte	120
	.byte	0
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
	.byte	5
	.byte	0
	.byte	2
	.byte	24
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	6
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
	.byte	7
	.byte	15
	.byte	0
	.byte	0
	.byte	0
	.byte	8
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
	.word	500
	.byte	3
	.word	.Ldebug_loc0
	.word	.Linfo_string6
	.word	507
	.byte	3
	.word	.Ldebug_loc1
	.word	.Linfo_string7
	.word	508
	.byte	3
	.word	.Ldebug_loc2
	.word	.Linfo_string8
	.word	500
	.byte	3
	.word	.Ldebug_loc3
	.word	.Linfo_string9
	.word	507
	.byte	3
	.word	.Ldebug_loc4
	.word	.Linfo_string10
	.word	508
	.byte	3
	.word	.Ldebug_loc5
	.word	.Linfo_string11
	.word	507
	.byte	4
	.word	.Ldebug_loc6
	.word	.Linfo_string12
	.word	500
	.byte	4
	.word	.Ldebug_loc7
	.word	.Linfo_string13
	.word	500
	.byte	4
	.word	.Ldebug_loc8
	.word	.Linfo_string14
	.word	500
	.byte	4
	.word	.Ldebug_loc9
	.word	.Linfo_string15
	.word	500
	.byte	4
	.word	.Ldebug_loc10
	.word	.Linfo_string16
	.word	507
	.byte	4
	.word	.Ldebug_loc11
	.word	.Linfo_string17
	.word	507
	.byte	4
	.word	.Ldebug_loc12
	.word	.Linfo_string18
	.word	507
	.byte	4
	.word	.Ldebug_loc13
	.word	.Linfo_string19
	.word	507
	.byte	4
	.word	.Ldebug_loc14
	.word	.Linfo_string19
	.word	513
	.byte	4
	.word	.Ldebug_loc15
	.word	.Linfo_string21
	.word	500
	.byte	4
	.word	.Ldebug_loc16
	.word	.Linfo_string22
	.word	525
	.byte	4
	.word	.Ldebug_loc17
	.word	.Linfo_string24
	.word	525
	.byte	4
	.word	.Ldebug_loc18
	.word	.Linfo_string18
	.word	513
	.byte	4
	.word	.Ldebug_loc19
	.word	.Linfo_string25
	.word	525
	.byte	4
	.word	.Ldebug_loc20
	.word	.Linfo_string26
	.word	525
	.byte	4
	.word	.Ldebug_loc21
	.word	.Linfo_string17
	.word	513
	.byte	4
	.word	.Ldebug_loc22
	.word	.Linfo_string27
	.word	525
	.byte	4
	.word	.Ldebug_loc23
	.word	.Linfo_string28
	.word	525
	.byte	4
	.word	.Ldebug_loc24
	.word	.Linfo_string29
	.word	525
	.byte	4
	.word	.Ldebug_loc25
	.word	.Linfo_string30
	.word	525
	.byte	4
	.word	.Ldebug_loc26
	.word	.Linfo_string16
	.word	537
	.byte	0
	.byte	2
	.xword	.Lfunc_begin1
	.word	.Lfunc_end1-.Lfunc_begin1
	.byte	1
	.byte	111
	.word	.Linfo_string5
	.word	500
	.byte	5
	.byte	1
	.byte	80
	.word	.Linfo_string18
	.word	513
	.byte	3
	.word	.Ldebug_loc27
	.word	.Linfo_string19
	.word	513
	.byte	5
	.byte	1
	.byte	82
	.word	.Linfo_string16
	.word	537
	.byte	5
	.byte	1
	.byte	83
	.word	.Linfo_string17
	.word	513
	.byte	4
	.word	.Ldebug_loc28
	.word	.Linfo_string32
	.word	500
	.byte	0
	.byte	6
	.word	.Linfo_string4
	.byte	5
	.byte	4
	.byte	7
	.byte	8
	.word	500
	.byte	8
	.word	518
	.byte	6
	.word	.Linfo_string20
	.byte	4
	.byte	2
	.byte	8
	.word	530
	.byte	6
	.word	.Linfo_string23
	.byte	5
	.byte	8
	.byte	8
	.word	542
	.byte	6
	.word	.Linfo_string31
	.byte	5
	.byte	1
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
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2"
.Linfo_string4:
	.asciz	"int32"
.Linfo_string5:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2_compute_"
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
	.asciz	"B.code"
.Linfo_string13:
	.asciz	"LUT_Scales.code"
.Linfo_string14:
	.asciz	"LUT_Biases.code"
.Linfo_string15:
	.asciz	"QLUT.code"
.Linfo_string16:
	.asciz	"QLUT"
.Linfo_string17:
	.asciz	"LUT_Biases"
.Linfo_string18:
	.asciz	"LUT_Scales"
.Linfo_string19:
	.asciz	"B"
.Linfo_string20:
	.asciz	"float16"
.Linfo_string21:
	.asciz	"dev_id"
.Linfo_string22:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2.B.strides"
.Linfo_string23:
	.asciz	"int64"
.Linfo_string24:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2.B.shape"
.Linfo_string25:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.strides"
.Linfo_string26:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Scales.shape"
.Linfo_string27:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.strides"
.Linfo_string28:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2.LUT_Biases.shape"
.Linfo_string29:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.shape"
.Linfo_string30:
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2.QLUT.strides"
.Linfo_string31:
	.asciz	"int8"
.Linfo_string32:
	.asciz	"k.outer"
	.section	.debug_pubnames,"",@progbits
	.word	.LpubNames_end0-.LpubNames_start0
.LpubNames_start0:
	.hword	2
	.word	.Lcu_begin0
	.word	550
	.word	417
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2_compute_"
	.word	42
	.asciz	"preprocessor_t4_int8_m8192_k4096_n1_b2"
	.word	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.word	.LpubTypes_end0-.LpubTypes_start0
.LpubTypes_start0:
	.hword	2
	.word	.Lcu_begin0
	.word	550
	.word	500
	.asciz	"int32"
	.word	542
	.asciz	"int8"
	.word	530
	.asciz	"int64"
	.word	518
	.asciz	"float16"
	.word	0
.LpubTypes_end0:
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
