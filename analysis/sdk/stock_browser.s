.file "sdk/platform/opxy-1.2.1/stock_browser.cpp";
.text;
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_14noopEPNS2_8DelegateE, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_14noopEPNS2_8DelegateE:
	rts;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_14noopEPNS2_8DelegateE, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_14noopEPNS2_8DelegateE
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE:
	R0 = 0 (X);
	rts;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_13keyEPNS2_8DelegateEPKm, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_13keyEPNS2_8DelegateEPKm:
	P2 = R1;
	cc =P2==0;
	if cc jump .L6;
	R1 = 7 (X);
	R0 = [P2];
	cc =R0==R1;
	R0 = CC;
	rts;
.L6:
	R0 = 0 (X);
	rts;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_13keyEPNS2_8DelegateEPKm, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_13keyEPNS2_8DelegateEPKm
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_19highlightEPNS2_8DelegateEml, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_19highlightEPNS2_8DelegateEml:
	P2 = R0;
	cc =P2==0;
	if cc jump .L7;
	P1.H = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE;
	P1.L = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE;
	P2 = [P2+4];
	P1 = [P1];
	cc =P2==P1;
	if cc jump .L15;
.L7:
	rts;
.L15:
	cc =P2==0;
	if cc jump .L7;
	nop;
	nop;
	nop;
	R0 = B [P2+65] (Z);
	cc =R0==0;
	if !cc jump .L7 (bp);
	R0 = B [P2+64] (Z);
	cc =R0==0;
	if !cc jump .L7 (bp);
	cc =R1==0;
	if !cc jump .L7 (bp);
	cc =R2<0;
	if cc jump .L7;
	nop;
	nop;
	nop;
	R0 = [P2+56];
	cc =R0<=R2 (iu);
	if cc jump .L7 (bp);
	[P2+60] = R2;
	rts;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_19highlightEPNS2_8DelegateEml, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_19highlightEPNS2_8DelegateEml
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15clickEPNS2_8DelegateEm, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15clickEPNS2_8DelegateEm:
	P2 = R0;
	[--SP] = RETS;
	SP += -12;
	cc =P2==0;
	if cc jump .L23;
	P1.H = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE;
	P1.L = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE;
	P2 = [P2+4];
	P1 = [P1];
	cc =P2==P1;
	if cc jump .L28;
.L23:
	R0 = 1 (X);
.L16:
	SP += 12;
	RETS = [SP++];
	rts;
.L28:
	cc =P2==0;
	if cc jump .L23;
	nop;
	nop;
	nop;
	R0 = B [P2+65] (Z);
	cc =R0==0;
	if !cc jump .L23;
	cc =R1==0;
	if !cc jump .L29 (bp);
.L18:
	R0 = B [P2+64] (Z);
	cc =R0==0;
	if !cc jump .L24;
	nop;
	R0 = 1 (X);
	B [P2+64] = R0;
	R1 = [P2+60];
	R0 = [P2+28];
	P2 = [P2+32];
	call (P2);
	SP += 12;
	RETS = [SP++];
	R0 = 0 (X);
	rts;
.L29:
	cc =R1==3;
	if !cc jump .L23 (bp);
	jump.s .L18;
.L24:
	R0 = 0 (X);
	jump.s .L16;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15clickEPNS2_8DelegateEm, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15clickEPNS2_8DelegateEm
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15leaveEPNS2_8DelegateE, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15leaveEPNS2_8DelegateE:
	[--sp] = ( p5:4 );

	P5 = R0;
	[--SP] = RETS;
	SP += -12;
	cc =P5==0;
	if cc jump .L30;
	P4.H = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE;
	P4.L = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE;
	P2 = [P5+4];
	P1 = [P4];
	cc =P2==P1;
	if cc jump .L42;
.L30:
	SP += 12;
	RETS = [SP++];
	( p5:4 ) = [sp++];

	rts;
.L42:
	cc =P2==0;
	if cc jump .L30;
	nop;
	nop;
	nop;
	R0 = B [P2+65] (Z);
	cc =R0==0;
	if !cc jump .L30;
	nop;
	R0 = 1 (X);
	B [P2+65] = R0;
	R0 = B [P2+64] (Z);
	cc =R0==0;
	if !cc jump .L32 (bp);
	P1 = [P2+36];
	cc =P1==0;
	if cc jump .L32;
	nop;
	nop;
	nop;
	R0 = [P2+28];
	call (P1);
.L32:
	SP += 12;
	R0 = 0 (X);
	RETS = [SP++];
	[P5+4] = R0;
	[P4] = R0;
	( p5:4 ) = [sp++];

	rts;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15leaveEPNS2_8DelegateE, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15leaveEPNS2_8DelegateE
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_18auditionEPNS2_8DelegateEl, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_18auditionEPNS2_8DelegateEl:
	rts;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_18auditionEPNS2_8DelegateEl, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_18auditionEPNS2_8DelegateEl
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_17optionsEPNS2_6VectorINS2_6StringEEEPNS2_8DelegateE, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_17optionsEPNS2_6VectorINS2_6StringEEEPNS2_8DelegateE:
	P2 = R0;
	P1 = R0;
	R1 = 0 (X);
	[P2++] = R1;
	P2 += 4;
	[P1+4] = R1;
	[P2++] = R1;
	[P2] = R1;
	rts;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_17optionsEPNS2_6VectorINS2_6StringEEEPNS2_8DelegateE, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_17optionsEPNS2_6VectorINS2_6StringEEEPNS2_8DelegateE
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_110set_optionEPNS2_8DelegateEm, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_110set_optionEPNS2_8DelegateEm:
	rts;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_110set_optionEPNS2_8DelegateEm, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_110set_optionEPNS2_8DelegateEm
	.align 4
.type __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_16lengthEPKc.part.0, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_16lengthEPKc.part.0:
	P1 = R0;
	P2 = 16 (X);
	R0 = 0 (X);
	LSETUP (.L48, .L54) LC1 = P2;
.L48:
	R1 = B [P1++] (X);
	R2 = R1.B (Z);
	cc =R2==0;
	if cc jump .L46;
	R1 += -32;
	R1 = R1.B (Z);
	R2 = 94 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L49;
.L54:
	R0 += 1;
.L49:
	R0 = 0 (X);
.L46:
	rts;
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_16lengthEPKc.part.0, .-__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_16lengthEPKc.part.0
	.align 4
.global __ZN4opxy8platform13stock_browser6detail4openERNS2_7SessionEPNS2_3RowEmPKcPKS8_mNS1_9CallbacksE;
.type __ZN4opxy8platform13stock_browser6detail4openERNS2_7SessionEPNS2_3RowEmPKcPKS8_mNS1_9CallbacksE, STT_FUNC;
__ZN4opxy8platform13stock_browser6detail4openERNS2_7SessionEPNS2_3RowEmPKcPKS8_mNS1_9CallbacksE:
	[--sp] = ( r7:4, p5:3 );

	P5.H = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE;
	P5.L = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE;
	LINK 36;
	FP = R0;
	R0 = [P5];
	cc =R0==0;
	R7 = R1;
	R5 = R2;
	if cc jump .L56;
.L58:
	R0 = 0 (X);
.L55:
	SP += 36;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L56:
	P1.H = 33792;
	P1.L = 47568;
	R0 = [P1];
	R1 = 9 (X);
	cc =R0==R1;
	if cc jump .L58;
	cc =R7==0;
	if cc jump .L58;
	cc =R2==0;
	if cc jump .L58;
	R2 = [SP+92];
	cc =R5<=R2 (iu);
	if cc jump .L58;
	R0 = [SP+100];
	cc =R0==0;
	if cc jump .L58;
	R0 = [SP+88];
	cc =R0==0;
	if cc jump .L58;
	R1 = [SP+84];
	cc =R1==0;
	if cc jump .L58;
	R0 = R1;
	call __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_16lengthEPKc.part.0;
	cc =R0==0;
	R6 = R0;
	if cc jump .L58;
	nop;
	nop;
	P2 = [SP+88];
	R0 = [P2];
	cc =R0==0;
	if cc jump .L58;
	P4 = P2;
	P4 += 4;
	R4 = 0 (X);
	jump.s .L59;
.L110:
	R4 += 1;
	cc =R5==R4;
	if cc jump .L109;
	nop;
	nop;
	nop;
	R0 = [P4++];
	cc =R0==0;
	if cc jump .L58;
.L59:
	call __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_16lengthEPKc.part.0;
	cc =R0==0;
	if !cc jump .L110 (bp);
	jump.s .L58;
.L109:
	P1.H = 35849;
	P1.L = 56360;
	call (P1);
	P1.H = 36181;
	[SP+32] = R0;
	P1.L = 3696;
	call (P1);
	[SP+28] = R0;
	R0 = [SP+32];
	cc =R0==0;
	if cc jump .L58;
	R1 = [SP+28];
	cc =R1==0;
	if cc jump .L58;
	R3 = R7;
	R5 = 0 (X);
	P2 = [SP+88];
	[SP+24] = P2;
	jump.s .L64;
.L63:
	R2 = P1;
	cc =R1<=R2 (iu);
	if cc jump .L113 (bp);
	P3 = R0;
	P4 = P3 + P1;
	R2 = B [P4] (X);
.L62:
	B [P0++] = R2;
	P1 += 1;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L63;
	P2 = R3;
	R0 = 72 (X);
	R3 = R3 + R0;
	[P2+28] = R5;
	R5 += 1;
	cc =R4<=R5 (iu);
	if cc jump .L111;
.L64:
	R0 = R3;
	R2 = 72 (X);
	R1 = 0 (X);
	call _memset;
	P3 = [SP+24];
	R3 = R0;
	R0 = [P3++];
	cc =R0==0;
	[SP+24] = P3;
	if cc jump .L67;
	[SP+20] = R3;
	call __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_16lengthEPKc.part.0;
	R1 = ROT R0 BY 0 ||
	R3 = [SP+20] ||
	nop;
.L61:
	P2 = R3;
	P3 = 15 (X);
	P0 = R3;
	P1 = 0 (X);
	[P2+20] = R1;
	[P2+24] = P3;
	P2 = [SP+24];
	P0 += 4;
	R0 = [P2+-4];
	P2 = 16 (X);
	jump.s .L63;
.L113:
	R2 = 0 (X);
	jump.s .L62;
.L67:
	R1 = 0 (X);
	jump.s .L61;
.L111:
	R0 = R4 << 3 ||
	[FP+4] = R7 ||
	nop;
	R0 = R0 + R4;
	R0 <<= 3;
	R0 = R7 + R0;
	[FP+8] = R0;
	[FP+12] = R0;
	R0.H = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_1L7methodsE;
	R0.L = __ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_1L7methodsE;
	[FP+20] = R0;
	R0 = [SP+96];
	[FP+28] = R0;
	R2 = FP;
	R0 = [SP+100];
	R1 = R1 -|- R1 ||
	[FP+32] = R0 ||
	nop;
	R2 += 40;
	R0 = [SP+104];
	[FP] = R1;
	[FP+16] = R1;
	[FP+24] = FP;
	[FP+36] = R0;
	P4 = R2;
	P1 = 0 (X);
	P0 = 16 (X);
	LSETUP (.L66, .L114) LC1 = P0;
.L66:
	R1 = P1;
	cc =R6<=R1 (iu);
	if cc jump .L69 (bp);
	P2 = [SP+84];
	P3 = P2 + P1;
	R0 = B [P3] (X);
.L65:
	B [P4++] = R0;
.L114:
	P1 += 1;
	P3 = [SP+92];
	R0 = 0 (X);
	P1.H = 36181;
	P1.L = 7240;
	W [FP+64] = R0;
	R1 = -1 (X);
	R0 = [SP+28];
	[FP+56] = R4;
	[FP+60] = P3;
	[P5] = FP;
	call (P1);
	R0 = 0 (X);
	[SP+16] = R0;
	R0 = FP;
	R0 += 20;
	P2.H = 35850;
	[SP+12] = R0;
	R2 = P3;
	R1 = FP;
	R0 = [SP+32];
	P2.L = 2960;
	call (P2);
	P2.H = 36181;
	R0 = [SP+28];
	R1 = 0 (X);
	P2.L = 492;
	call (P2);
	R0 = 1 (X);
	jump.s .L55;
.L69:
	R0 = 0 (X);
	jump.s .L65;
	.size	__ZN4opxy8platform13stock_browser6detail4openERNS2_7SessionEPNS2_3RowEmPKcPKS8_mNS1_9CallbacksE, .-__ZN4opxy8platform13stock_browser6detail4openERNS2_7SessionEPNS2_3RowEmPKcPKS8_mNS1_9CallbacksE
	.section	.rodata
	.align 4
	.type	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_1L7methodsE, @object
	.size	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_1L7methodsE, 64
__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_1L7methodsE:
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_14noopEPNS2_8DelegateE
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_13keyEPNS2_8DelegateEPKm
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_13keyEPNS2_8DelegateEPKm
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_19highlightEPNS2_8DelegateEml
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15clickEPNS2_8DelegateEm
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_14noopEPNS2_8DelegateE
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15leaveEPNS2_8DelegateE
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_18auditionEPNS2_8DelegateEl
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_17optionsEPNS2_6VectorINS2_6StringEEEPNS2_8DelegateE
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_110set_optionEPNS2_8DelegateEm
	.long	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_12noEPNS2_8DelegateE
	.local	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE
	.comm	__ZN4opxy8platform13stock_browser6detail12_GLOBAL__N_15ownerE,4,4
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
