.file "sdk/platform/opxy-1.2.1/project_companion.cpp";
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"rb"
.text;
	.align 4
.type __ZN12_GLOBAL__N_17measureEPKcPhRmS3_, STT_FUNC;
__ZN12_GLOBAL__N_17measureEPKcPhRmS3_:
	[--sp] = ( r7:4, p5:3 );

	LINK 16;
	FP = R2;
	R6 = R1;
	P2.H = 36845;
	R1.H = .LC0;
	R1.L = .LC0;
	P2.L = 840;
	P5 = [SP+64];
	call (P2);
	cc =R0==0;
	R5 = R0;
	if cc jump .L11;
	P3.H = __ZN12_GLOBAL__N_19crc_tableE;
	R0 = 0 (X);
	P3.L = __ZN12_GLOBAL__N_19crc_tableE;
	P4 = 1024 (X);
	R7.H = 60856;
	[P5] = R0;
	P4 = P3 + P4;
	[FP] = R0;
	R7.L = 33568;
.L10:
	P2.H = 36845;
	[SP+12] = R5;
	R2 = 4096 (X);
	R1 = 1 (X);
	R0 = R6;
	P2.L = 1468;
	call (P2);
	cc =R0==0;
	R4 = R0;
	if cc jump .L3;
	nop;
	R1 = [P3+4];
	cc =R1==0;
	R0 = [P5];
	if !cc jump .L8 (bp);
	P0.H = __ZN12_GLOBAL__N_19crc_tableE;
	P0.L = __ZN12_GLOBAL__N_19crc_tableE;
	P1 = 0 (X);
	R3 = 1 (X);
.L9:
	R1 = P1;
	P2 = 8 (X);
.L7:
	R2 = R1 & R3;
	cc =R2==0;
	R1 >>= 1;
	if cc jump .L6 (bp);
	R1 = R1 ^ R7;
.L6:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L7;
	[P0++] = R1;
	cc =P4==P0;
	P1 += 1;
	if !cc jump .L9 (bp);
.L8:
	R2 = ~R0;
	P0 = R6;
	P1 = R4;
	LSETUP (.L5, .L18) LC1 = P1;
.L5:
	R1 = B [P0++] (Z);
	R1 = R1 ^ R2;
	R1 = R1.B (Z);
	P2 = R1;
	R2 >>= 8;
	P2 = P3 + (P2 << 2);
	R1 = [P2];
.L18:
	R2 = R1 ^ R2;
	R2 = ~R2;
	[P5] = R2;
	R1 = [FP];
	R1 = R1 + R4;
	[FP] = R1;
	jump.s .L10;
.L3:
	P2.H = 36845;
	R0 = R5;
	P2.L = 174;
	call (P2);
	SP += 16;
	FP = [SP++];
	R0 = 1 (X);
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L11:
	SP += 16;
	FP = [SP++];
	R0 = 0 (X);
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	__ZN12_GLOBAL__N_17measureEPKcPhRmS3_, .-__ZN12_GLOBAL__N_17measureEPKcPhRmS3_
	.align 4
.type __ZN12_GLOBAL__N_114companion_pathEPKcPc, STT_FUNC;
__ZN12_GLOBAL__N_114companion_pathEPKcPc:
	[--sp] = ( p5:3 );

	P5 = R0;
	R0 = B [P5] (X);
	R2 = R0.B (X);
	cc =R2==0;
	if cc jump .L30;
	P4 = P5;
	P4 += 1;
	P1 = P4;
	P2 = 0 (X);
	jump.s .L21;
.L25:
	P2 = P0;
.L21:
	R2 = B [P1++] (X);
	P0 = P2;
	cc =R2==0;
	P0 += 1;
	if !cc jump .L25 (bp);
	cc =P0<=3 (iu);
	if cc jump .L30;
	R2 = P2;
	R2 += 3;
	R3 = 255 (X);
	cc =R2<=R3 (iu);
	if !cc jump .L30;
	nop;
	P1 = P5 + P2;
	R3 = 46 (X);
	R2 = B [P1+-2] (X);
	cc =R2==R3;
	if !cc jump .L30 (bp);
	P3 = P2;
	P3 += -1;
	P5 = P5 + P3;
	R2 = B [P5] (X);
	R3 = 120 (X);
	cc =R2==R3;
	if !cc jump .L30 (bp);
	R2 = B [P1] (X);
	R3 = 121 (X);
	cc =R2==R3;
	if !cc jump .L30 (bp);
	P5 = R1;
	P1 = P3;
.L23:
	B [P5++] = R0;
	P1 += -1;
	cc =P1==0;
	if !cc jump .L31;
	P1 = R1;
	R0 = 111 (X);
	P3 = P1 + P3;
	B [P3] = R0;
	P2 = P1 + P2;
	R0 = 120 (X);
	B [P2] = R0;
	P0 = P1 + P0;
	R0 = 121 (X);
	B [P0] = R0;
	R0 = 0 (X);
	B [P2+2] = R0;
	R0 = 1 (X);
	jump.s .L19;
.L30:
	R0 = 0 (X);
.L19:
	( p5:3 ) = [sp++];

	rts;
.L31:
	R0 = B [P4++] (X);
	jump.s .L23;
	.size	__ZN12_GLOBAL__N_114companion_pathEPKcPc, .-__ZN12_GLOBAL__N_114companion_pathEPKcPc
	.align 4
.type __ZN12_GLOBAL__N_16Source4peekEv, STT_FUNC;
__ZN12_GLOBAL__N_16Source4peekEv:
	[--sp] = ( p5:5 );

	P5 = R0;
	[--SP] = RETS;
	SP += -16;
	P1 = [P5+4];
	R0 = [P5+8];
	R1 = P1;
	cc =R1==R0;
	if cc jump .L41;
.L34:
	P2.H = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2 = P2 + P1;
	R0 = B [P2] (Z);
.L33:
	SP += 16;
	RETS = [SP++];
	( p5:5 ) = [sp++];

	rts;
.L41:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L37;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L36;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if !cc jump .L36;
	nop;
	nop;
	nop;
	P1 = [P5+4];
	jump.s .L34;
.L36:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R0 = -1 (X);
	jump.s .L33;
.L37:
	R0 = -1 (X);
	jump.s .L33;
	.size	__ZN12_GLOBAL__N_16Source4peekEv, .-__ZN12_GLOBAL__N_16Source4peekEv
	.align 4
.type __ZN12_GLOBAL__N_16Parser3putERNS_4TextEm, STT_FUNC;
__ZN12_GLOBAL__N_16Parser3putERNS_4TextEm:
	P0 = R0;
	R0 = 127 (X);
	[--sp] = ( r7:7, p5:3 );

	cc =R1<=R0 (iu);
	SP += -4;
	if !cc jump .L43 (bp);
	B [SP] = R1;
	R7 = 1 (X);
.L44:
	R3 = [P0+64];
	R7 = R7 + R3;
	R0 = R7 - R3;
	R1 = R3;
	P2 = R0;
	LSETUP (.L50, .L53) LC1 = P2;
.L50:
	R2 = 63 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L49 (bp);
	R2 = R1 - R3;
	P1 = R1;
	P4 = R2;
	P3 = 0 (X);
	P3 = P3 + SP;
	P5 = P0 + P1;
	P1 = P3 + P4;
	R0 = B [P1] (X);
	B [P5] = R0;
.L49:
.L53:
	R1 += 1;
	SP += 4;
	[P0+64] = R7;
	( r7:7, p5:3 ) = [sp++];

	rts;
.L43:
	R2 = 2047 (X);
	cc =R1<=R2 (iu);
	if cc jump .L45 (bp);
	R0 = 65535 (Z);
	cc =R1<=R0 (iu);
	if cc jump .L46 (bp);
	R0 = R1 >> 18;
	R2 = -16 (X);
	R0 = R0 | R2;
	B [SP] = R0;
	P2 = 2 (X);
.L47:
	P1 = P2 + (P2 << 1);
	R3 = P1;
	P1 = SP;
	R3 <<= 1;
	P1 += 1;
	R7 = 63 (X);
	R0 = -128 (X);
.L48:
	R2 = R1;
	R2 >>= R3;
	R2 = R2 & R7;
	R2 = R2 | R0;
	B [P1++] = R2;
	R3 += -6;
	R2 = -6 (X);
	cc =R3==R2;
	if !cc jump .L48 (bp);
	R7 = P2;
	R7 += 2;
	jump.s .L44;
.L45:
	R0 = R1 >> 6;
	R2 = -64 (X);
	R0 = R0 | R2;
	B [SP] = R0;
	R0 = 63 (X);
	R1 = R1 & R0;
	R0 = -128 (X);
	R1 = R1 | R0;
	B [SP+1] = R1;
	R7 = 2 (X);
	jump.s .L44;
.L46:
	R0 = R1 >> 12;
	R2 = -32 (X);
	R0 = R0 | R2;
	B [SP] = R0;
	P2 = 1 (X);
	jump.s .L47;
	.size	__ZN12_GLOBAL__N_16Parser3putERNS_4TextEm, .-__ZN12_GLOBAL__N_16Parser3putERNS_4TextEm
	.align 4
.type __ZN12_GLOBAL__N_16Parser4peekEv, STT_FUNC;
__ZN12_GLOBAL__N_16Parser4peekEv:
	[--sp] = ( r7:7, p5:3 );

	P5 = R0;
	[--SP] = RETS;
	SP += -16;
	P2 = [P5+4];
	R0 = [P5+8];
	R1 = P2;
	cc =R1==R0;
	if cc jump .L90;
.L55:
	P1.H = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1 = P1 + P2;
	R1 = B [P1] (Z);
.L56:
	P3.H = 36845;
	P4.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	P3.L = 1468;
	P4.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L70;
.L61:
	P2 += 1;
	[P5+4] = P2;
.L65:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L91;
	nop;
	nop;
.L66:
	P1 = P4 + P2;
	R1 = B [P1] (Z);
.L70:
	R2 = 32 (X);
	cc =R1==R2;
	if cc jump .L59;
	R2 = 9 (X);
	cc =R1==R2;
	if cc jump .L59;
	R2 = 10 (X);
	cc =R1==R2;
	if cc jump .L59;
	R2 = 13 (X);
	cc =R1==R2;
	if !cc jump .L60;
.L59:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L61 (bp);
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L74;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P4;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L64;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L61 (bp);
.L64:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	[P5+8] = R7;
	R0 = 0 (X);
	jump.s .L65;
.L91:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L74;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P4;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L69;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L69;
	nop;
	nop;
	nop;
	P2 = [P5+4];
	jump.s .L66;
.L69:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P2 = [P5+4] ||
	nop;
	[P5+8] = R0;
.L60:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L92;
.L71:
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1 = R0;
	P2 = P1 + P2;
	R0 = B [P2] (Z);
.L54:
	SP += 16;
	RETS = [SP++];
	( r7:7, p5:3 ) = [sp++];

	rts;
.L90:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L73;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P2.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L58;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L55 (bp);
.L58:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R1 = -1 (X);
	jump.s .L56;
.L92:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L74;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L72;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L72;
	nop;
	nop;
	nop;
	P2 = [P5+4];
	jump.s .L71;
.L74:
	R0 = -1 (X);
	jump.s .L54;
.L72:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R0 = -1 (X);
	jump.s .L54;
.L73:
	R1 = -1 (X);
	jump.s .L56;
	.size	__ZN12_GLOBAL__N_16Parser4peekEv, .-__ZN12_GLOBAL__N_16Parser4peekEv
	.align 4
.type __ZN12_GLOBAL__N_16Parser6stringERNS_4TextE, STT_FUNC;
__ZN12_GLOBAL__N_16Parser6stringERNS_4TextE:
	[--sp] = ( r7:4, p5:3 );

	P4 = R1;
	P3 = R0;
	R1 = 0 (X);
	LINK 28;
	[P4+64] = R1;
	P2 = [P3+4];
	R0 = [P3+8];
	R2 = P2;
	cc =R2==R0;
	if cc jump .L257;
.L94:
	P1.H = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1 = P1 + P2;
	R1 = B [P1] (Z);
.L95:
	P5.H = 36845;
	FP.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	P5.L = 1468;
	FP.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L108;
.L100:
	P2 += 1;
	[P3+4] = P2;
.L104:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L258;
	nop;
	nop;
.L105:
	P1 = FP + P2;
	R1 = B [P1] (Z);
.L108:
	R2 = 32 (X);
	cc =R1==R2;
	if cc jump .L98;
	R2 = 9 (X);
	cc =R1==R2;
	if cc jump .L98;
	R2 = 10 (X);
	cc =R1==R2;
	if cc jump .L98;
	R2 = 13 (X);
	cc =R1==R2;
	if !cc jump .L99;
.L98:
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L100 (bp);
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L101;
	[P3+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = FP;
	call (P5);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P2 = [P3+4];
	if cc jump .L103;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L100 (bp);
.L103:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	[P3+8] = R7;
	R0 = 0 (X);
	jump.s .L104;
.L258:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L101;
	[P3+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = FP;
	call (P5);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P2 = [P3+4];
	if cc jump .L107;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L105 (bp);
.L107:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
.L99:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L259;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1 = R6;
	R2 = 34 (X);
	P0 = P1 + P2;
	R1 = B [P0] (Z);
	cc =R1==R2;
	if cc jump .L113;
.L101:
	R5 = 0 (X);
.L93:
	SP += 28;
	R0 = R5;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L259:
	R5 = B [P3+16] (X);
	R0 = R5.B (Z);
	cc =R0==0;
	if !cc jump .L101;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	R0 = [P3];
	P5.H = 36845;
	[SP+12] = R0;
	R1 = 1 (X);
	[P3+4] = R7;
	P5.L = 1468;
	R2 = 4096 (X);
	R0 = R6;
	call (P5);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L110;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L110;
	P1 = R6;
	R2 = 34 (X);
	P2 = [P3+4];
	P0 = P1 + P2;
	R1 = B [P0] (Z);
	cc =R1==R2;
	if !cc jump .L101 (bp);
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L113;
	nop;
	nop;
	nop;
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L193;
	[P3+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = R6;
	call (P5);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L115;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L115;
	P2 = [P3+4];
.L113:
	P2 += 1;
	[P3+4] = P2;
.L116:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L260;
.L117:
	P1 = R6;
	R1 = 31 (X);
	P0 = P1 + P2;
	R0 = B [P0] (X);
	R3 = R0.B (Z);
	P2 += 1;
	cc =R3<=R1;
	[P3+4] = P2;
	if cc jump .L101;
	R2 = 34 (X);
	cc =R3==R2;
	if !cc jump 4 (bp); jump.s .L194;
	R1 = 92 (X);
	cc =R3==R1;
	if cc jump .L261;
	R1 = 127 (X);
	cc =R3<=R1;
	if cc jump .L174 (bp);
	R1 = -194 (X);
	R1 = R3 + R1;
	R2 = 29 (X);
	cc =R1<=R2 (iu);
	if cc jump .L262;
	R1 = -224 (X);
	R1 = R3 + R1;
	R2 = 15 (X);
	cc =R1<=R2 (iu);
	if cc jump .L263 (bp);
	R1 = -240 (X);
	R3 = R3 + R1;
	cc =R3<=4 (iu);
	if !cc jump .L101;
	R3 = 7 (X);
	P5.H = 1;
	R3 = R0 & R3;
	P5.L = 0;
	R4 = 2 (X);
.L176:
	R7.H = __ZN12_GLOBAL__N_110read_chunkE;
	FP = 0 (X);
	R7.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L180;
.L178:
	P1 = R6;
	R1 = 192 (X);
	R2 = 128 (X);
	P0 = P1 + P2;
	R0 = B [P0] (X);
	R1 = R0 & R1;
	P2 += 1;
	cc =R1==R2;
	[P3+4] = P2;
	if !cc jump .L101;
	R1 = 63 (X);
	R0 = R0 & R1;
	R3 <<= 6;
	R3 = R3 | R0;
	cc =R4==0;
	R0 = R4;
	R0 += -1;
	if cc jump .L264;
	nop;
	R4 = R0;
.L180:
	R1 = P2;
	R0 = [P3+8];
	cc =R0==R1;
	if !cc jump .L178 (bp);
	R5 = B [P3+16] (X);
	R0 = R5.B (Z);
	cc =R0==0;
	if !cc jump .L101;
	P0.H = 36845;
	R1 = 1 (X);
	[SP+16] = R3;
	R0 = [P3];
	[SP+12] = R0;
	[P3+4] = FP;
	R2 = 4096 (X);
	R0 = R7;
	P0.L = 1468;
	call (P0);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	R3 = [SP+16];
	if !cc jump 4 (bp); jump.s .L179;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L179;
	P2 = [P3+4];
	jump.s .L178;
.L174:
	R1 = 127 (X);
	cc =R3<=R1 (iu);
	R2 = [P4+64];
	if !cc jump .L183;
.L134:
	B [SP+24] = R0;
	R3 = 1 (X);
.L182:
	R3 = R3 + R2;
	R1 = R3 - R2;
	R0 = R2;
	P2 = R1;
	LSETUP (.L188, .L276) LC1 = P2;
.L188:
	R1 = 63 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L187 (bp);
	R1 = R0 - R2;
	P0 = R0;
	P5 = R1;
	P1 = 24 (X);
	P1 = P1 + SP;
	FP = P4 + P0;
	P0 = P1 + P5;
	R1 = B [P0] (X);
	B [FP] = R1;
.L187:
.L276:
	R0 += 1;
	[P4+64] = R3;
	P2 = [P3+4];
	R0 = [P3+8];
	jump.s .L116;
.L260:
	R5 = B [P3+16] (X);
	R0 = R5.B (Z);
	cc =R0==0;
	if !cc jump .L101;
	[P3+4] = R0;
	P0.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P0.L = 1468;
	call (P0);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L179;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L179;
	P2 = [P3+4];
	jump.s .L117;
.L257:
	R2 = B [P3+16] (Z);
	cc =R2==0;
	if cc jump 4 (bp); jump.s .L192;
	P2.H = 36845;
	[P3+4] = R1;
	P2.L = 1468;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P2);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P2 = [P3+4];
	if cc jump .L97;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L94 (bp);
.L97:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	R1 = -1 (X);
	jump.s .L95;
.L261:
	R0 = [P3+8];
	R2 = P2;
	cc =R2==R0;
	if cc jump .L265;
.L120:
	P1 = R6;
	R2 = 117 (X);
	P0 = P1 + P2;
	R0 = B [P0] (X);
	R1 = R0.B (Z);
	P2 += 1;
	cc =R1==R2;
	[P3+4] = P2;
	if cc jump .L195;
	R2 = 98 (X);
	cc =R1==R2;
	if !cc jump 4 (bp); jump.s .L123;
	cc =R1<=R2 (iu);
	if cc jump .L266;
	R0 = 110 (X);
	cc =R1==R0;
	if !cc jump 4 (bp); jump.s .L129;
	cc =R1<=R0 (iu);
	if cc jump .L267;
	R0 = 114 (X);
	cc =R1==R0;
	if !cc jump 4 (bp); jump.s .L132;
	R2 = 116 (X);
	cc =R1==R2;
	if !cc jump .L101;
	nop;
	nop;
	R0 = 9 (X);
	R2 = [P4+64];
	jump.s .L134;
.L263:
	R3 = 15 (X);
	R3 = R0 & R3;
	P5 = 2048 (X);
	R4 = 1 (X);
	jump.s .L176;
.L265:
	R5 = B [P3+16] (X);
	R0 = R5.B (Z);
	cc =R0==0;
	if !cc jump .L101;
	[P3+4] = R0;
	P0.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P0.L = 1468;
	call (P0);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L179;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L179;
	P2 = [P3+4];
	jump.s .L120;
.L267:
	R2 = 102 (X);
	cc =R1==R2;
	if !cc jump .L101;
	nop;
	nop;
	R0 = 12 (X);
	R2 = [P4+64];
	jump.s .L134;
.L266:
	R2 = 47 (X);
	cc =R1==R2;
	if cc jump .L127;
	R2 = 92 (X);
	cc =R1==R2;
	if cc jump .L127;
	R2 = 34 (X);
	cc =R1==R2;
	if !cc jump .L101 (bp);
.L127:
	R2 = [P4+64];
	jump.s .L134;
.L183:
	R1 = R3 >> 6;
	R0 = -64 (X);
	P0 = 0 (X);
.L185:
	P2 = P0 + (P0 << 1);
	R0 = R0 | R1;
	R1 = P2;
	P2 = SP;
	B [SP+24] = R0;
	R1 <<= 1;
	P2 += 25;
	R5 = 63 (X);
	R7 = -128 (X);
.L186:
	R0 = R3;
	R0 >>= R1;
	R0 = R0 & R5;
	R0 = R0 | R7;
	B [P2++] = R0;
	R1 += -6;
	R0 = -6 (X);
	cc =R1==R0;
	if !cc jump .L186 (bp);
	R3 = P0;
	R3 += 2;
	jump.s .L182;
.L264:
	R0 = P5;
	cc =R3<R0 (iu);
	if cc jump .L101;
	R1 = 65535 (Z);
	BITSET (R1, 20);
	cc =R3<=R1 (iu);
	if !cc jump .L101;
	R0 = -27 (X);
	R0 <<= 11;
	R0 = R3 + R0;
	R2 = 2047 (X);
	cc =R0<=R2 (iu);
	if cc jump .L101;
	nop;
	nop;
	nop;
	R2 = [P4+64];
.L181:
	R1 = 2047 (X);
	cc =R3<=R1 (iu);
	if cc jump .L183;
.L191:
	R0 = 65535 (Z);
	cc =R3<=R0 (iu);
	if cc jump .L268;
	R1 = R3 >> 18;
	R0 = -16 (X);
	P0 = 2 (X);
	jump.s .L185;
.L262:
	R3 = 31 (X);
	R3 = R0 & R3;
	P5 = 128 (X);
	R4 = 0 (X);
	jump.s .L176;
.L195:
	R4.H = __ZN12_GLOBAL__N_110read_chunkE;
	R5 = 4 (X);
	R7 = 0 (X);
	R4.L = __ZN12_GLOBAL__N_110read_chunkE;
.L122:
	R1 = P2;
	R0 = [P3+8];
	cc =R0==R1;
	if cc jump .L269;
.L135:
	P1 = R6;
	R2 = 9 (X);
	P0 = P1 + P2;
	R1 = B [P0] (Z);
	R0 = R1;
	R0 += -48;
	P2 += 1;
	cc =R0<=R2 (iu);
	[P3+4] = P2;
	if cc jump .L139 (bp);
	R2 = -97 (X);
	R0 = R1 + R2;
	cc =R0<=5 (iu);
	if !cc jump .L140;
	R0 = -87 (X);
	R0 = R1 + R0;
.L139:
	R5 += -1;
	R7 <<= 4;
	cc =R5==0;
	R7 = R7 | R0;
	if !cc jump .L122 (bp);
	R5 = -27 (X);
	R5 <<= 11;
	R5 = R7 + R5;
	R0 = 1023 (X);
	cc =R5<=R0 (iu);
	if cc jump 4 (bp); jump.s .L141;
	P5.H = __ZN12_GLOBAL__N_110read_chunkE;
	P5.L = __ZN12_GLOBAL__N_110read_chunkE;
.L172:
	nop;
	P2 = [P3+4];
	R0 = [P3+8];
	R1 = P2;
	cc =R1==R0;
	if cc jump .L270;
	P1 = R6;
	R2 = 92 (X);
	P0 = P1 + P2;
	R1 = B [P0] (Z);
	cc =R1==R2;
	if !cc jump .L255;
.L148:
	P2 += 1;
	R1 = P2;
	cc =R1==R0;
	[P3+4] = P2;
	if cc jump .L271;
.L154:
	P1 = R6;
	R1 = 117 (X);
	P0 = P1 + P2;
	R0 = B [P0] (Z);
	P2 += 1;
	cc =R0==R1;
	[P3+4] = P2;
	if !cc jump .L155;
	R4 = 4 (X);
	R3 = 0 (X);
.L158:
	R2 = P2;
	R0 = [P3+8];
	cc =R2==R0;
	if cc jump .L272;
.L163:
	P0 = R6;
	R2 = 9 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	R0 = R1;
	R0 += -48;
	P2 += 1;
	cc =R0<=R2 (iu);
	[P3+4] = P2;
	if cc jump .L167 (bp);
	R2 = -97 (X);
	R0 = R1 + R2;
	cc =R0<=5 (iu);
	if !cc jump .L168;
	R0 = -87 (X);
	R0 = R1 + R0;
.L167:
	R4 += -1;
	R3 <<= 4;
	cc =R4==0;
	R3 = R3 | R0;
	if !cc jump .L158 (bp);
	R0 = -55 (X);
	R0 <<= 10;
	R0 = R3 + R0;
	R1 = 1023 (X);
	cc =R0<=R1 (iu);
	if cc jump .L273;
	R0 = -19 (X);
	R1 = R7 >> 6;
	B [SP+24] = R0;
	R0 = 63 (X);
	R2 = -128 (X);
	R1 = R1 & R0;
	R0 = R7 & R0;
	R7 = [P4+64];
	R0 = R0 | R2;
	R1 = R1 | R2;
	R2 = R7;
	B [SP+26] = R0;
	B [SP+25] = R1;
	R2 += 3;
	R0 = R7;
.L171:
	R1 = 63 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L170 (bp);
	P1 = R0;
	R1 = R0 - R7;
	FP = 24 (X);
	FP = FP + SP;
	P0 = P4 + P1;
	P1 = R1;
	P2 = FP + P1;
	R1 = B [P2] (X);
	B [P0] = R1;
.L170:
	R0 += 1;
	cc =R2==R0;
	if !cc jump .L171 (bp);
	R5 = -27 (X);
	R5 <<= 11;
	R5 = R3 + R5;
	R0 = 1023 (X);
	cc =R5<=R0 (iu);
	[P4+64] = R2;
	R7 = R3;
	if cc jump .L172 (bp);
.L173:
	R0 = 127 (X);
	cc =R3<=R0 (iu);
	if !cc jump .L181;
	R0 = R3;
	jump.s .L134;
.L272:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L101;
	[P3+4] = R0;
	P0.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	[SP+16] = R3;
	R2 = 4096 (X);
	R0 = P5;
	P0.L = 1468;
	call (P0);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	R3 = [SP+16];
	if cc jump .L165;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if !cc jump .L165;
	nop;
	nop;
	nop;
	P2 = [P3+4];
	jump.s .L163;
.L168:
	R2 = -65 (X);
	R0 = R1 + R2;
	cc =R0<=5 (iu);
	if cc jump 4 (bp); jump.s .L101;
	R0 += 10;
	jump.s .L167;
.L270:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L255;
	R4 = 0 (X);
	P0.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	[P3+4] = R4;
	R2 = 4096 (X);
	R0 = P5;
	P0.L = 1468;
	call (P0);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if cc jump .L144;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L144;
	nop;
	P1 = R6;
	R2 = 92 (X);
	P2 = [P3+4];
	P0 = P1 + P2;
	R1 = B [P0] (Z);
	cc =R1==R2;
	if !cc jump .L255;
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L148;
	nop;
	nop;
	nop;
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L254;
	P0.H = 36845;
	R1 = 1 (X);
	[P3+4] = R4;
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = P5;
	P0.L = 1468;
	call (P0);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P2 = [P3+4];
	if cc jump .L153;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L148 (bp);
.L153:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[P3+8] = R0;
	if !cc jump .L154 (bp);
.L254:
	R0 = -1 (X);
.L155:
	R1 = -19 (X);
	R2 = R7 >> 6;
	B [SP+24] = R1;
	R1 = 63 (X);
	R3 = -128 (X);
	R2 = R2 & R1;
	R2 = R2 | R3;
	R1 = R7 & R1;
	R7 = [P4+64];
	R1 = R1 | R3;
	B [SP+25] = R2;
	R2 = R7;
	B [SP+26] = R1;
	R2 += 3;
	R3 = R7;
.L160:
	R1 = 63 (X);
	cc =R3<=R1 (iu);
	if !cc jump .L159 (bp);
	R1 = R3 - R7;
	FP = R1;
	P1 = R3;
	P5 = 24 (X);
	P5 = P5 + SP;
	P2 = P5 + FP;
	P0 = P4 + P1;
	R1 = B [P2] (X);
	B [P0] = R1;
.L159:
	R3 += 1;
	cc =R3==R2;
	if !cc jump .L160 (bp);
	R1 = 98 (X);
	cc =R0==R1;
	[P4+64] = R2;
	if cc jump .L197;
	cc =R0<=R1;
	if cc jump .L274;
	R1 = 110 (X);
	cc =R0==R1;
	if cc jump .L201;
	cc =R0<=R1;
	if cc jump .L275;
	R1 = 114 (X);
	cc =R0==R1;
	if cc jump .L203;
	R1 = 116 (X);
	cc =R0==R1;
	if cc jump 4 (bp); jump.s .L101;
	R0 = 9 (X);
	jump.s .L134;
.L271:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L254;
	R0 = 0 (X);
	[P3+4] = R0;
	P0.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = P5;
	P0.L = 1468;
	call (P0);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if cc jump .L157;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if !cc jump .L157;
	nop;
	nop;
	nop;
	P2 = [P3+4];
	jump.s .L154;
.L269:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L101;
	[P3+4] = R0;
	P0.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R4;
	P0.L = 1468;
	call (P0);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if cc jump .L165;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if !cc jump .L165;
	nop;
	nop;
	nop;
	P2 = [P3+4];
	jump.s .L135;
.L268:
	R1 = R3 >> 12;
	R0 = -32 (X);
	P0 = 1 (X);
	jump.s .L185;
.L140:
	R0 = -65 (X);
	R0 = R1 + R0;
	cc =R0<=5 (iu);
	if cc jump 4 (bp); jump.s .L101;
	R0 += 10;
	jump.s .L139;
.L179:
	R2 = 1 (X);
	R0 = 1 (X);
	R2 <<= 16;
	B [P3+16] = R0;
	cc =R1<=R2 (iu);
.L256:
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L93;
.L194:
	R5 = 1 (X);
	jump.s .L93;
.L123:
	R2 = [P4+64];
	R0 = 8 (X);
	jump.s .L134;
.L132:
	R2 = [P4+64];
	R0 = 13 (X);
	jump.s .L134;
.L129:
	R2 = [P4+64];
	R0 = 10 (X);
	jump.s .L134;
.L165:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L101;
.L273:
	R0 = 9216 (X);
	R5 <<= 10;
	R3 = R3 + R0;
	R3 = R5 + R3;
	R2 = [P4+64];
	jump.s .L191;
.L110:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	jump.s .L256;
.L275:
	R1 = 102 (X);
	cc =R0==R1;
	if cc jump 4 (bp); jump.s .L101;
	R0 = 12 (X);
	jump.s .L134;
.L274:
	R1 = 47 (X);
	cc =R0==R1;
	if cc jump .L198;
	R1 = 92 (X);
	cc =R0==R1;
	if cc jump .L199;
	R1 = 34 (X);
	cc =R0==R1;
	if cc jump 4; jump.s .L101;
	R0 = 34 (X);
	jump.s .L134;
.L255:
	R2 = [P4+64];
	R3 = R7;
	jump.s .L191;
.L203:
	R0 = 13 (X);
	jump.s .L134;
.L199:
	R0 = 92 (X);
	jump.s .L134;
.L201:
	R0 = 10 (X);
	jump.s .L134;
.L198:
	R0 = 47 (X);
	jump.s .L134;
.L115:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P2 = [P3+4] ||
	nop;
	[P3+8] = R0;
	jump.s .L116;
.L157:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	R0 = -1 (X);
	jump.s .L155;
.L144:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	R2 = [P4+64];
	R3 = R7;
	jump.s .L191;
.L141:
	R2 = [P4+64];
	R3 = R7;
	jump.s .L173;
.L192:
	R1 = -1 (X);
	jump.s .L95;
.L193:
	R0 = P2;
	jump.s .L116;
.L197:
	R0 = 8 (X);
	jump.s .L134;
	.size	__ZN12_GLOBAL__N_16Parser6stringERNS_4TextE, .-__ZN12_GLOBAL__N_16Parser6stringERNS_4TextE
	.align 4
.type __ZN12_GLOBAL__N_16Parser6numberERNS_6NumberE, STT_FUNC;
__ZN12_GLOBAL__N_16Parser6numberERNS_6NumberE:
	[--sp] = ( r7:5, p5:3 );

	P5 = R0;
	P4 = R1;
	R0 = 1 (X);
	LINK 16;
	R2 = 0 (X);
	P2 = [P5+4];
	W [P4] = R0;
	R0 = [P5+8];
	[P4+4] = R2;
	R1 = P2;
	cc =R1==R0;
	P0 = P2;
	if !cc jump 4 (bp); jump.s .L492;
.L278:
	P1.H = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1 = P1 + P0;
	R1 = B [P1] (Z);
.L279:
	P3.H = 36845;
	FP.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	P3.L = 1468;
	FP.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L292;
.L284:
	P2 += 1;
	[P5+4] = P2;
.L288:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L493;
	nop;
	nop;
.L289:
	P1 = FP + P2;
	R1 = B [P1] (Z);
.L292:
	R2 = 32 (X);
	cc =R1==R2;
	if cc jump .L282;
	R3 = 9 (X);
	cc =R1==R3;
	if cc jump .L282;
	R2 = 10 (X);
	cc =R1==R2;
	if cc jump .L282;
	R3 = 13 (X);
	cc =R1==R3;
	if !cc jump .L283;
.L282:
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L284 (bp);
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L285;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = FP;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L287;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L284 (bp);
.L287:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	[P5+8] = R7;
	R0 = 0 (X);
	jump.s .L288;
.L493:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L285;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = FP;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L291;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L289 (bp);
.L291:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
.L283:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L494;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	P0 = R6;
	R2 = 45 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if !cc jump 4 (bp); jump.s .L487;
.L304:
	R0 = R1;
	R0 += -48;
	R2 = 9 (X);
	P2 += 1;
	cc =R0<=R2 (iu);
	[P5+4] = P2;
	if !cc jump .L297;
	R3 = 48 (X);
	cc =R1==R3;
	[P4+4] = R0;
	R0 = [P5+8];
	if cc jump .L307;
	R7.H = 52428;
	FP.H = 36845;
	P3.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7.L = 52429;
	FP.L = 1468;
	P3.L = __ZN12_GLOBAL__N_110read_chunkE;
.L319:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L495;
	P0 = R6;
	R2 = 9 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	R1 += -48;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L496;
.L317:
	R2 = ~R1;
	A1 = R2.L * R7.L (FU);
	A1 = A1 >> 16;
	A0 = R2.H * R7.H, A1 += R2.H * R7.L (FU);
	A1 += R7.H * R2.L (FU);
	A1 = A1 >> 16;
	A0 += A1;
	P2 += 1;
	R2 = A0 (FU) ||
	[P5+4] = P2 ||
	nop;
	R2 >>= 3;
.L314:
	P1 = [P4+4];
	R3 = P1;
	cc =R3<=R2 (iu);
	if !cc jump .L392 (bp);
	P0 = R1;
	P1 = P1 + (P1 << 2);
	P1 = P0 + (P1 << 1);
	[P4+4] = P1;
	jump.s .L319;
.L325:
	R0 = 0 (X);
	B [P4] = R0;
.L387:
	R7 = B [P5+16] (X);
	R0 = R7.B (Z);
	cc =R0==0;
	if !cc jump .L297;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L375;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L375;
	P0 = R6;
	R1 = 9 (X);
	P2 = [P5+4];
	P1 = P0 + P2;
	R0 = B [P1] (Z);
	R0 += -48;
	cc =R0<=R1 (iu);
	if !cc jump 4; jump.s .L497;
.L297:
	R7 = 0 (X);
.L277:
	SP += 16;
	FP = [SP++];
	R0 = R7;
	RETS = [SP++];
	( r7:5, p5:3 ) = [sp++];

	rts;
.L311:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
.L307:
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L320;
	nop;
	nop;
	nop;
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L348;
	R7 = 0 (X);
	P3.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	[P5+4] = R7;
	P3.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L321;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L321;
	P0 = R6;
	R2 = 46 (X);
	P2 = [P5+4];
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if !cc jump 4 (bp); jump.s .L498;
.L323:
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L339;
	nop;
	nop;
	nop;
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L348;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P2.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if !cc jump 4 (bp); jump.s .L344;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L344;
	P0 = R6;
	R2 = 101 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if !cc jump 4 (bp); jump.s .L347;
.L389:
	R3 = P2;
	cc =R3==R0;
	if !cc jump .L349;
	nop;
	nop;
	nop;
	R1 = B [P5+16] (Z);
.L348:
	cc =R1==0;
	if !cc jump .L490;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L350;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L350;
	P2 = [P5+4];
.L346:
	P0 = R6;
	R1 = 69 (X);
	P1 = P0 + P2;
	R0 = B [P1] (Z);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L499;
.L490:
	R7 = 1 (X);
.L506:
	SP += 16;
	R0 = R7;
	FP = [SP++];
	RETS = [SP++];
	( r7:5, p5:3 ) = [sp++];

	rts;
.L320:
	P0 = R6;
	R2 = 46 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump .L324;
.L339:
	P0 = R6;
	R2 = 101 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump .L351;
.L349:
	R3 = 69 (X);
	cc =R1==R3;
	if !cc jump .L490 (bp);
.L351:
	P2 += 1;
	[P5+4] = P2;
.L355:
	R1 = 0 (X);
	B [P4] = R1;
	R1 = P2;
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L500;
	P0 = R6;
	R2 = 43 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if !cc jump 4 (bp); jump.s .L372;
.L367:
	P0 = R6;
	R2 = 45 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if !cc jump 4 (bp); jump.s .L372;
.L374:
	P0 = R6;
	R1 = 9 (X);
	P1 = P0 + P2;
	R0 = B [P1] (Z);
	R0 += -48;
	cc =R0<=R1 (iu);
	if !cc jump .L297;
	P3.H = 36845;
	P4.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	R0 = [P5+8];
	P3.L = 1468;
	P4.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L380;
.L376:
	P0 = R6;
	R2 = 9 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	R1 += -48;
	cc =R1<=R2 (iu);
	if !cc jump .L490;
.L379:
	P2 += 1;
	[P5+4] = P2;
.L380:
	R2 = P2;
	cc =R0==R2;
	if !cc jump .L376 (bp);
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L490;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P4;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L377;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if cc jump 4 (bp); jump.s .L377;
	P0 = R6;
	R2 = 9 (X);
	P2 = [P5+4];
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	R1 += -48;
	cc =R1<=R2 (iu);
	if !cc jump .L490;
	R3 = P2;
	cc =R0==R3;
	if !cc jump .L379;
	nop;
	nop;
	nop;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L394;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P4;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L381;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L381;
	P2 = [P5+4];
	jump.s .L379;
.L392:
	P1 = -1 (X);
	[P4+4] = P1;
	jump.s .L319;
.L495:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L348;
	R5 = 0 (X);
	R1 = 1 (X);
	[P5+4] = R5;
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = P3;
	call (FP);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L311;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L311;
	P0 = R6;
	R2 = 9 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	R1 += -48;
	cc =R1<=R2 (iu);
	if !cc jump .L307;
	R3 = P2;
	cc =R3==R0;
	if !cc jump .L317;
	nop;
	nop;
	nop;
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L391;
	[P5+4] = R5;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P3;
	call (FP);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if !cc jump 4 (bp); jump.s .L316;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L316;
	P0 = R6;
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	R1 += -48;
	jump.s .L317;
.L494:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L285;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	R0 = [P5];
	P3.H = 36845;
	[SP+12] = R0;
	R1 = 1 (X);
	[P5+4] = R7;
	P3.L = 1468;
	R2 = 4096 (X);
	R0 = R6;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L295;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P0 = P2;
	if !cc jump .L295;
	FP = R6;
	R2 = 45 (X);
	P1 = FP + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump .L501;
.L299:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L478;
	nop;
	nop;
	nop;
.L285:
	R7 = B [P5+16] (X);
	R0 = R7.B (Z);
	cc =R0==0;
	if !cc jump .L297;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	[P5+4] = R0;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	R0 = [P5];
	P2.H = 36845;
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L305;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L305;
	P0 = R6;
	P2 = [P5+4];
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	jump.s .L304;
.L492:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L390;
	P2.H = 36845;
	[P5+4] = R2;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L502;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P0 = [P5+4];
	P2 = P0;
	if !cc jump 4; jump.s .L278;
.L281:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R1 = -1 (X);
	jump.s .L279;
.L496:
	R1 = B [P1] (Z);
	R3 = 46 (X);
	cc =R1==R3;
	if !cc jump .L323 (bp);
.L324:
	P2 += 1;
	[P5+4] = P2;
.L327:
	R1 = 0 (X);
	B [P4] = R1;
	R1 = P2;
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L387;
	P0 = R6;
	R1 = 9 (X);
	P1 = P0 + P2;
	R0 = B [P1] (Z);
	R0 += -48;
	cc =R0<=R1 (iu);
	if cc jump .L497 (bp);
	jump.s .L297;
.L501:
	R3 = P2;
	cc =R0==R3;
	if !cc jump .L300;
	nop;
	nop;
	nop;
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L302;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = R6;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L303;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L303;
.L487:
	P0 = [P5+4];
.L300:
	P2 = P0;
	P2 += 1;
	[P5+4] = P2;
.L302:
	R1 = 1 (X);
	B [P4+1] = R1;
	jump.s .L299;
.L497:
	FP.H = 36845;
	P3.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0 = [P5+8];
	R7 = 0 (X);
	FP.L = 1468;
	P3.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L335;
.L330:
	P0 = R6;
	R2 = 9 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	R1 += -48;
	cc =R1<=R2 (iu);
	if !cc jump .L503;
.L334:
	P2 += 1;
	[P5+4] = P2;
.L335:
	R2 = P2;
	cc =R0==R2;
	if !cc jump .L330 (bp);
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L348;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P3;
	call (FP);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L332;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if !cc jump .L332;
	P0 = R6;
	R2 = 9 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	R1 += -48;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L323;
	R3 = P2;
	cc =R0==R3;
	if !cc jump .L334;
	nop;
	nop;
	nop;
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L393;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P3;
	call (FP);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L336;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L336;
	nop;
	nop;
	nop;
	P2 = [P5+4];
	jump.s .L334;
.L295:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[P5+8] = R0;
	if !cc jump 4 (bp); jump.s .L297;
.L478:
	P0 = R6;
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	jump.s .L304;
.L498:
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L324;
	nop;
	nop;
	nop;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L325;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L504;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = [P5+4];
	P0 = P2;
	if cc jump .L324 (bp);
.L326:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = P0;
	jump.s .L327;
.L500:
	R1 = B [P5+16] (Z);
.L388:
	cc =R1==0;
	if !cc jump .L357;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P2.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L362;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L362;
	P0 = R6;
	R2 = 43 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump .L365;
.L364:
	R3 = P2;
	cc =R3==R0;
	if cc jump 4 (bp); jump.s .L367;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L297;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L505;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = [P5+4];
	P0 = P2;
	if !cc jump .L368;
	P0 = R6;
	R2 = 45 (X);
	P1 = P0 + P2;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if !cc jump .L371 (bp);
.L365:
	R3 = P2;
	cc =R0==R3;
	if !cc jump .L372;
	nop;
	nop;
	nop;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L297;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L373;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L373;
	nop;
	nop;
	nop;
	P2 = [P5+4];
.L372:
	P2 += 1;
	[P5+4] = P2;
.L371:
	R1 = P2;
	cc =R0==R1;
	if cc jump 4; jump.s .L374;
.L357:
	R7 = B [P5+16] (X);
	R0 = R7.B (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L297;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L375;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L375;
	nop;
	nop;
	nop;
	P2 = [P5+4];
	jump.s .L374;
.L499:
	R0 = [P5+8];
.L347:
	R2 = P2;
	cc =R2==R0;
	if cc jump 4 (bp); jump.s .L351;
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L352;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P2.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L354;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if !cc jump 4; jump.s .L351;
.L354:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L355;
.L503:
	R1 = B [P1] (Z);
	R2 = 101 (X);
	cc =R1==R2;
	if cc jump 4; jump.s .L389;
	jump.s .L351;
.L377:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
.L489:
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R7 = 1 (X);
	jump.s .L506;
.L381:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	[P5+8] = R7;
	P2 = [P5+4];
	R0 = 0 (X);
	jump.s .L380;
.L316:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R1 = -49 (X);
	R2 = 4 (X);
	jump.s .L314;
.L336:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	[P5+8] = R7;
	P2 = [P5+4];
	R0 = 0 (X);
	jump.s .L335;
.L332:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L323;
.L305:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
.L488:
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L277;
.L321:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P2 = [P5+4] ||
	nop;
	[P5+8] = R0;
	jump.s .L323;
.L502:
	P2 = [P5+4];
	jump.s .L281;
.L375:
	R3 = 1 (X);
	R0 = 1 (X);
	R3 <<= 16;
	B [P5+16] = R0;
	cc =R1<=R3 (iu);
	jump.s .L488;
.L344:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[P5+8] = R0;
	if cc jump 4; jump.s .L346;
	R7 = 1 (X);
	jump.s .L506;
.L394:
	R0 = P2;
	jump.s .L380;
.L393:
	R0 = P2;
	jump.s .L335;
.L303:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P2 = [P5+4] ||
	nop;
	[P5+8] = R0;
	jump.s .L302;
.L373:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P5+4] ||
	nop;
	[P5+8] = R0;
.L370:
	cc =P0==0;
	P2 = P0;
	if cc jump 4; jump.s .L374;
	jump.s .L297;
.L350:
	R2 = 1 (X);
	R0 = 1 (X);
	R2 <<= 16;
	B [P5+16] = R0;
	cc =R1<=R2 (iu);
	jump.s .L489;
.L391:
	P2 = R0;
	R1 = -49 (X);
	R2 = 4 (X);
	jump.s .L314;
.L362:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L364;
.L505:
	P0 = [P5+4];
.L368:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L370;
.L504:
	P0 = [P5+4];
	jump.s .L326;
.L390:
	R1 = -1 (X);
	jump.s .L279;
.L352:
	R0 = 0 (X);
	B [P4] = R0;
	jump.s .L388;
	.size	__ZN12_GLOBAL__N_16Parser6numberERNS_6NumberE, .-__ZN12_GLOBAL__N_16Parser6numberERNS_6NumberE
	.section	.rodata.str1.4
	.align 4
.LC1:
	.string	"true"
	.align 4
.LC2:
	.string	"false"
	.align 4
.LC3:
	.string	"null"
.text;
	.align 4
.type __ZN12_GLOBAL__N_16Parser4skipEm, STT_FUNC;
__ZN12_GLOBAL__N_16Parser4skipEm:
	[--sp] = ( r7:4, p5:3 );

	P5 = R0;
	R6 = R1;
	LINK 100;
	P2 = [P5+4];
	R0 = [P5+8];
	R1 = P2;
	cc =R1==R0;
	P1 = P2;
	if cc jump .L1241;
.L508:
	R1.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1.L = __ZN12_GLOBAL__N_110read_chunkE;
	P0 = R1;
	P1 = P0 + P1;
	R1 = B [P1] (Z);
.L509:
	P4.H = 36845;
	P3.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	P4.L = 1468;
	P3.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L521;
.L514:
	P2 += 1;
	[P5+4] = P2;
.L518:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1242;
	nop;
	nop;
.L519:
	P1 = P3 + P2;
	R1 = B [P1] (Z);
.L521:
	R2 = 32 (X);
	cc =R1==R2;
	if cc jump .L512;
	R3 = 9 (X);
	cc =R1==R3;
	if cc jump .L512;
	R2 = 10 (X);
	cc =R1==R2;
	if cc jump .L512;
	R3 = 13 (X);
	cc =R1==R3;
	if !cc jump .L513;
.L512:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L514 (bp);
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L1236;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P3;
	call (P4);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L517;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L514 (bp);
.L517:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	[P5+8] = R7;
	R0 = 0 (X);
	jump.s .L518;
.L1242:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L1236;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P3;
	call (P4);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L520;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L520;
	nop;
	nop;
	nop;
	P2 = [P5+4];
	jump.s .L519;
.L520:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P2 = [P5+4] ||
	nop;
	[P5+8] = R0;
.L513:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L1243;
.L522:
	P4.H = __ZN12_GLOBAL__N_110read_chunkE;
	P4.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1 = P4 + P2;
	R0 = B [P1] (Z);
	R3 = 34 (X);
	cc =R0==R3;
	if cc jump .L1244;
	R1 = 45 (X);
	cc =R0==R1;
	if cc jump .L623;
	R1 = R0;
	R1 += -48;
	R2 = 9 (X);
	cc =R1<=R2 (iu);
	if cc jump .L623 (bp);
	R3 = 116 (X);
	cc =R0==R3;
	if !cc jump 4 (bp); jump.s .L1245;
	R1 = 102 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L1246;
	R1 = 110 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L1247;
	cc =R6==0;
	if cc jump .L1236;
	R1 = 123 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L1248;
	R2 = 91 (X);
	cc =R0==R2;
	if !cc jump 4 (bp); jump.s .L1249;
.L1236:
	FP = 0 (X);
.L1267:
	SP += 60;
	SP += 40;
	R0 = FP;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L623:
	R1 = SP;
	R1 += 32;
	R0 = P5;
	call __ZN12_GLOBAL__N_16Parser6numberERNS_6NumberE;
	FP = R0;
.L507:
	SP += 60;
	SP += 40;
	R0 = FP;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L1241:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L904;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L1250;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P1 = [P5+4];
	P2 = P1;
	if cc jump .L508 (bp);
.L511:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R1 = -1 (X);
	jump.s .L509;
.L1243:
	R2 = B [P5+16] (X);
	R0 = R2.B (Z);
	cc =R0==0;
	FP = R2;
	if !cc jump .L1236;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L722;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L722;
	P2 = [P5+4];
	jump.s .L522;
.L1244:
	R0 = [P5+8];
	R2 = P2;
	R1 = 0 (X);
	cc =R0==R2;
	[SP+96] = R1;
	if cc jump .L1251;
	nop;
.L527:
	P1 = P4 + P2;
	R3 = 34 (X);
	R1 = B [P1] (Z);
	cc =R1==R3;
	if !cc jump .L1236 (bp);
.L544:
	P2 += 1;
	[P5+4] = P2;
.L547:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1252;
.L548:
	P1 = P4 + P2;
	R3 = 31 (X);
	P2 += 1;
	R5 = B [P1] (X);
	R7 = R5.B (Z);
	cc =R7<=R3;
	[P5+4] = P2;
	if cc jump .L1236;
	R0 = 34 (X);
	cc =R7==R0;
	if cc jump .L1238;
	R1 = 92 (X);
	cc =R7==R1;
	if !cc jump 4 (bp); jump.s .L1253;
	R1 = 127 (X);
	cc =R7<=R1;
	if cc jump .L608 (bp);
	R0 = -194 (X);
	R0 = R7 + R0;
	R2 = 29 (X);
	cc =R0<=R2 (iu);
	if !cc jump 4 (bp); jump.s .L1254;
	R0 = -224 (X);
	R0 = R7 + R0;
	R1 = 15 (X);
	cc =R0<=R1 (iu);
	if !cc jump 4; jump.s .L1255;
	R0 = -240 (X);
	R7 = R7 + R0;
	cc =R7<=4 (iu);
	if !cc jump .L1236;
	R3 = 1 (X);
	R7 = 7 (X);
	R3 <<= 16;
	R7 = R5 & R7;
	[SP+24] = R3;
	R4 = 2 (X);
.L610:
	P3.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R5 = 0 (X);
	P3.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L614;
.L612:
	P1 = P4 + P2;
	R0 = B [P1] (X);
	R1 = 192 (X);
	R1 = R0 & R1;
	R3 = 128 (X);
	P2 += 1;
	cc =R1==R3;
	[P5+4] = P2;
	if !cc jump .L1236;
	R1 = 63 (X);
	R0 = R0 & R1;
	R7 <<= 6;
	R7 = R7 | R0;
	cc =R4==0;
	R0 = R4;
	R0 += -1;
	if !cc jump 4 (bp); jump.s .L1256;
	R4 = R0;
.L614:
	R1 = P2;
	R0 = [P5+8];
	cc =R0==R1;
	if !cc jump .L612 (bp);
	R2 = B [P5+16] (X);
	R0 = R2.B (Z);
	cc =R0==0;
	FP = R2;
	if !cc jump .L1236;
	[P5+4] = R5;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = R6;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L722;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L722;
	P2 = [P5+4];
	jump.s .L612;
.L1251:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L528;
	P3.H = 36845;
	[P5+4] = R1;
	P3.L = 1468;
	R0 = [P5];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = P4;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L529;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if cc jump 6 (bp); jump.l .L529;
	R7 = 19 (X);
	BITSET (R7, 23);
	R6 = P4;
	P2 = [P5+4];
	P1 = P4 + P2;
	R1 = B [P1] (Z);
.L530:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L1257 (bp);
.L531:
	R1 = P2;
	cc =R1==R0;
	if !cc jump .L527;
	nop;
	nop;
	nop;
	R2 = B [P5+16] (X);
	R0 = R2.B (Z);
	cc =R0==0;
	FP = R2;
	if !cc jump .L1236;
	R7 = 0 (X);
	P3.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	[P5+4] = R7;
	P3.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L541;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L541;
	R3 = 34 (X);
	P2 = [P5+4];
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	cc =R1==R3;
	if !cc jump .L1236 (bp);
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L544;
	nop;
	nop;
	nop;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L905;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L546;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L546;
	P2 = [P5+4];
	jump.s .L544;
.L1257:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L531;
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1258;
.L532:
	P2 += 1;
	[P5+4] = P2;
.L536:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1259;
	nop;
	nop;
.L537:
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	jump.s .L530;
.L1258:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L1236;
	[P5+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = R6;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L535;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L532 (bp);
.L535:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L536;
.L1259:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L1236;
	[P5+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = R6;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L539;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L537 (bp);
.L539:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[P5+8] = R0;
	if cc jump .L1236;
	nop;
	P1 = P4 + P2;
	R3 = 34 (X);
	R0 = B [P1] (Z);
	cc =R0==R3;
	if !cc jump .L1236 (bp);
	R0 = 0 (X);
	jump.s .L544;
.L864:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
.L1238:
	FP = 1 (X);
	jump.s .L507;
.L608:
	R3 = 127 (X);
	cc =R7<=R3 (iu);
	R0 = [P5+8];
	R2 = [SP+96];
	if cc jump 4 (bp); jump.s .L617;
.L565:
	B [SP+28] = R5;
	R7 = 1 (X);
.L616:
	R7 = R7 + R2;
	R3 = R7 - R2;
	R1 = R2;
	P1 = R3;
	LSETUP (.L622, .L1334) LC1 = P1;
.L622:
	R3 = 63 (X);
	cc =R1<=R3 (iu);
	if !cc jump .L621 (bp);
	R3 = SP;
	R3 += 32;
	R6 = R3 + R1;
	R3 = R1 - R2;
	FP = R3;
	P3 = 28 (X);
	P3 = P3 + SP;
	P0 = P3 + FP;
	R3 = B [P0] (X);
	P0 = R6;
	B [P0] = R3;
.L621:
.L1334:
	R1 += 1;
	[SP+96] = R7;
	jump.s .L547;
.L1252:
	R2 = B [P5+16] (X);
	R0 = R2.B (Z);
	cc =R0==0;
	FP = R2;
	if cc jump 4 (bp); jump.s .L1236;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L722;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L722;
	P2 = [P5+4];
	jump.s .L548;
.L1245:
	FP.H = .LC1+1;
	P3.H = 36845;
	FP.L = .LC1+1;
	R7 = R3;
	P3.L = 1468;
	R6 = P4;
	jump.s .L626;
.L628:
	P1 = P4 + P2;
	P2 += 1;
	R0 = B [P1] (Z);
	[P5+4] = P2;
.L629:
	cc =R7==R0;
	if cc jump 4 (bp); jump.s .L1236;
	R7 = B [FP++] (X);
	cc =R7==0;
	if cc jump .L1238;
	nop;
	nop;
	nop;
	P2 = [P5+4];
.L626:
	R0 = [P5+8];
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L628 (bp);
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L910;
	[P5+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = R6;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L630;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L630;
	P2 = [P5+4];
	jump.s .L628;
.L1246:
	FP.H = .LC2+1;
	P3.H = 36845;
	FP.L = .LC2+1;
	R7 = R1;
	P3.L = 1468;
	R6 = P4;
	jump.s .L633;
.L635:
	P1 = P4 + P2;
	P2 += 1;
	R0 = B [P1] (Z);
	[P5+4] = P2;
.L636:
	cc =R7==R0;
	if cc jump 4 (bp); jump.s .L1236;
	R7 = B [FP++] (X);
	cc =R7==0;
	if cc jump .L1238;
	nop;
	nop;
	nop;
	P2 = [P5+4];
.L633:
	R0 = [P5+8];
	R2 = P2;
	cc =R2==R0;
	if !cc jump .L635 (bp);
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L911;
	[P5+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = R6;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L637;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if cc jump 6 (bp); jump.l .L637;
	P2 = [P5+4];
	jump.s .L635;
.L1247:
	P3.H = .LC3+1;
	FP.H = 36845;
	P3.L = .LC3+1;
	R7 = R1;
	FP.L = 1468;
	R6 = P4;
	jump.s .L640;
.L641:
	P1 = P4 + P2;
	P2 += 1;
	R0 = B [P1] (Z);
	[P5+4] = P2;
.L642:
	cc =R7==R0;
	if cc jump 4 (bp); jump.s .L1236;
	R7 = B [P3++] (X);
	cc =R7==0;
	if cc jump .L1238;
	nop;
	nop;
	nop;
	P2 = [P5+4];
.L640:
	R0 = [P5+8];
	R2 = P2;
	cc =R2==R0;
	if !cc jump .L641 (bp);
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L912;
	[P5+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = R6;
	call (FP);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L643;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if cc jump 6 (bp); jump.l .L643;
	P2 = [P5+4];
	jump.s .L641;
.L1249:
	R2 = [P5+8];
	R3 = P2;
	cc =R3==R2;
	R0 = R2;
	if !cc jump 6 (bp); jump.l .L1260;
.L835:
	P2 += 1;
	R1 = P2;
	cc =R1==R0;
	[P5+4] = P2;
	if !cc jump 6 (bp); jump.l .L1261;
.L840:
	P1 = P4 + P2;
	R7 = 19 (X);
	P3.H = 36845;
	R5.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P3.L = 1468;
	R5.L = __ZN12_GLOBAL__N_110read_chunkE;
.L858:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L1262 (bp);
.L843:
	R1 = P2;
	cc =R0==R1;
	if !cc jump 6 (bp); jump.l .L1263;
	P1 = P4 + P2;
	R2 = 93 (X);
	R0 = B [P1] (Z);
	cc =R0==R2;
	if cc jump .L863;
.L862:
	R5 = R6;
	P3.H = 36845;
	R7 = 19 (X);
	R5 += -1;
	P3.L = 1468;
	BITSET (R7, 23);
.L890:
	R1 = R5;
	R0 = P5;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L1236;
	P2 = [P5+4];
	R0 = [P5+8];
	R2 = R0;
	R1 = P2;
	cc =R1==R0;
	P1 = P2;
	if cc jump .L1264;
.L865:
	P1 = P4 + P2;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
.L882:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L1265 (bp);
.L868:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1266;
	nop;
	nop;
	P1 = P4 + P2;
	R6 = B [P1] (Z);
.L887:
	P2 += 1;
	[P5+4] = P2;
.L888:
	R0 = 93 (X);
	cc =R6==R0;
	if cc jump .L1238;
	R1 = 44 (X);
	cc =R6==R1;
	if cc jump .L890 (bp);
	FP = 0 (X);
	jump.s .L1267;
.L1255:
	R7 = 15 (X);
	R3 = 2048 (X);
	R7 = R5 & R7;
	[SP+24] = R3;
	R4 = 1 (X);
	jump.s .L610;
.L1265:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L868;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L1268;
.L869:
	P2 += 1;
	[P5+4] = P2;
.L876:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1269;
	nop;
	nop;
.L878:
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	jump.s .L882;
.L1268:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L870;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L875;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L869 (bp);
.L875:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L876;
.L1269:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1270;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L881;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L878 (bp);
.L881:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L868;
.L1262:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L843;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L1271;
.L844:
	P2 += 1;
	[P5+4] = P2;
.L851:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1272;
	nop;
	nop;
.L853:
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	jump.s .L858;
.L1271:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L845;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L850;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L844 (bp);
.L850:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L851;
.L1272:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L862;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L856;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L853 (bp);
.L856:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[P5+8] = R0;
	if cc jump .L862;
	nop;
	P1 = P4 + P2;
	R1 = 93 (X);
	R0 = B [P1] (Z);
	cc =R0==R1;
	if !cc jump .L862 (bp);
.L863:
	P2 += 1;
	[P5+4] = P2;
	FP = 1 (X);
	jump.s .L507;
.L1253:
	R0 = [P5+8];
	R2 = P2;
	cc =R2==R0;
	if !cc jump 4 (bp); jump.s .L1273;
.L551:
	P1 = P4 + P2;
	R1 = 117 (X);
	P2 += 1;
	R5 = B [P1] (X);
	R0 = R5.B (Z);
	cc =R0==R1;
	[P5+4] = P2;
	if !cc jump 4 (bp); jump.s .L907;
	R2 = 98 (X);
	cc =R0==R2;
	if !cc jump 6 (bp); jump.l .L1227;
	cc =R0<=R2 (iu);
	if cc jump .L1274;
	R3 = 110 (X);
	cc =R0==R3;
	if !cc jump 6 (bp); jump.l .L1229;
	cc =R0<=R3 (iu);
	if cc jump .L1275;
	R2 = 114 (X);
	cc =R0==R2;
	if !cc jump 6 (bp); jump.l .L1230;
	R3 = 116 (X);
	cc =R0==R3;
	if cc jump 4 (bp); jump.s .L1236;
.L1231:
	R5 = 9 (X);
	R2 = [SP+96];
	R0 = [P5+8];
	jump.s .L565;
.L1274:
	R3 = 47 (X);
	cc =R0==R3;
	if cc jump .L1226;
	R1 = 92 (X);
	cc =R0==R1;
	if cc jump .L1226;
	R2 = 34 (X);
	cc =R0==R2;
	if cc jump 4; jump.s .L1236;
.L1226:
	R2 = [SP+96];
	R0 = [P5+8];
	jump.s .L565;
.L1275:
	R1 = 102 (X);
	cc =R0==R1;
	if cc jump 4 (bp); jump.s .L1236;
.L1228:
	R5 = 12 (X);
	R2 = [SP+96];
	R0 = [P5+8];
	jump.s .L565;
.L1254:
	R7 = 31 (X);
	R3 = 128 (X);
	R7 = R5 & R7;
	[SP+24] = R3;
	R4 = 0 (X);
	jump.s .L610;
.L1256:
	R3 = [SP+24];
	cc =R7<R3 (iu);
	if !cc jump 4 (bp); jump.s .L1236;
	R0 = 65535 (Z);
	BITSET (R0, 20);
	cc =R7<=R0 (iu);
	if cc jump 4 (bp); jump.s .L1236;
	R0 = -27 (X);
	R0 <<= 11;
	R0 = R7 + R0;
	R1 = 2047 (X);
	cc =R0<=R1 (iu);
	if !cc jump 4 (bp); jump.s .L1236;
	R0 = [P5+8];
	R2 = [SP+96];
.L615:
	R1 = 2047 (X);
	cc =R7<=R1 (iu);
	if cc jump .L617;
.L902:
	R3 = 65535 (Z);
	cc =R7<=R3 (iu);
	if !cc jump 6 (bp); jump.l .L1276;
	R1 = R7 >> 18;
	R3 = -16 (X);
	P0 = 2 (X);
.L619:
	P1 = P0 + (P0 << 1);
	R1 = R1 | R3;
	R3 = P1;
	P1 = 29 (X);
	B [SP+28] = R1;
	R3 <<= 1;
	P1 = P1 + SP;
	R5 = 63 (X);
	R6 = -128 (X);
.L620:
	R1 = R7;
	R1 >>= R3;
	R1 = R1 & R5;
	R1 = R1 | R6;
	B [P1++] = R1;
	R3 += -6;
	R1 = -6 (X);
	cc =R3==R1;
	if !cc jump .L620 (bp);
	R7 = P0;
	R7 += 2;
	jump.s .L616;
.L617:
	R1 = R7 >> 6;
	R3 = -64 (X);
	P0 = 0 (X);
	jump.s .L619;
.L1266:
	R1 = B [P5+16] (Z);
.L870:
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1236;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P1 = [P5+4];
	if !cc jump 6 (bp); jump.l .L884;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = P1;
	if cc jump 6 (bp); jump.l .L884;
	R1 = P1;
	P0 = P4 + P1;
	cc =R0==R1;
	R6 = B [P0] (Z);
	if !cc jump .L887;
	nop;
	nop;
	nop;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L888;
.L901:
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L889;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L889;
	P2 = [P5+4];
	jump.s .L887;
.L1264:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L866;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L867;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L867;
	P2 = [P5+4];
	jump.s .L865;
.L1248:
	R2 = [P5+8];
	R3 = P2;
	cc =R2==R3;
	if !cc jump 4 (bp); jump.s .L1277;
.L646:
	R7 = 19 (X);
	P3.H = 36845;
	R5.H = __ZN12_GLOBAL__N_110read_chunkE;
	P2 = [P5+4];
	R0 = R2;
	BITSET (R7, 23);
	P3.L = 1468;
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	R5.L = __ZN12_GLOBAL__N_110read_chunkE;
.L665:
	R1 += -9;
	R3 = 23 (X);
	cc =R1<=R3 (iu);
	if cc jump .L1278 (bp);
.L649:
	R1 = P2;
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L651;
	P1 = P4 + P2;
	R3 = 123 (X);
	R1 = B [P1] (Z);
	cc =R1==R3;
	if cc jump 4; jump.s .L1236;
.L669:
	P2 += 1;
	R1 = P2;
	cc =R1==R0;
	[P5+4] = P2;
	if !cc jump 6 (bp); jump.l .L1279;
.L674:
	P1 = P4 + P2;
	R7 = 19 (X);
	P3.H = 36845;
	R5.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P3.L = 1468;
	R5.L = __ZN12_GLOBAL__N_110read_chunkE;
.L691:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L1280 (bp);
.L677:
	R1 = P2;
	cc =R1==R0;
	if !cc jump 6 (bp); jump.l .L1281;
.L690:
	P1 = P4 + P2;
	R1 = 125 (X);
	R0 = B [P1] (Z);
	cc =R0==R1;
	if !cc jump 6 (bp); jump.l .L1282;
.L693:
	R3 = P2;
	R1 = 0 (X);
	[SP+96] = R1;
	R0 = [P5+8];
	cc =R3==R0;
	R2 = R0;
	if !cc jump 4 (bp); jump.s .L1283;
.L694:
	P1 = P4 + P2;
	R7 = 19 (X);
	P3.H = 36845;
	R5.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P3.L = 1468;
	R5.L = __ZN12_GLOBAL__N_110read_chunkE;
.L712:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L1284 (bp);
.L697:
	R1 = P2;
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L699;
	P1 = P4 + P2;
	R2 = 34 (X);
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump 4; jump.s .L1236;
.L717:
	P2 += 1;
	[P5+4] = P2;
.L720:
	R1 = P2;
	cc =R1==R0;
	if !cc jump 4 (bp); jump.s .L1285;
.L721:
	P1 = P4 + P2;
	R0 = 31 (X);
	P2 += 1;
	R3 = B [P1] (X);
	R4 = R3.B (Z);
	cc =R4<=R0;
	[P5+4] = P2;
	if !cc jump 4 (bp); jump.s .L1236;
	R1 = 34 (X);
	cc =R4==R1;
	if cc jump .L723;
	R2 = 92 (X);
	cc =R4==R2;
	if !cc jump 4 (bp); jump.s .L1286;
	R1 = 127 (X);
	cc =R4<=R1;
	if !cc jump 4; jump.s .L771;
	R0 = -194 (X);
	R0 = R4 + R0;
	R2 = 29 (X);
	cc =R0<=R2 (iu);
	if !cc jump 4 (bp); jump.s .L1287;
	R0 = -224 (X);
	R0 = R4 + R0;
	R1 = 15 (X);
	cc =R0<=R1 (iu);
	if cc jump 4; jump.s .L774;
	R4 = 15 (X);
	R4 = R3 & R4;
	R7 = 2048 (X);
	R5 = 1 (X);
.L773:
	P3.H = 36845;
	P3.L = 1468;
	jump.s .L777;
.L775:
	P0 = P4 + P2;
	R0 = B [P0] (X);
	R1 = 192 (X);
	R1 = R0 & R1;
	R2 = 128 (X);
	P2 += 1;
	cc =R1==R2;
	[P5+4] = P2;
	if cc jump 4 (bp); jump.s .L1236;
	R1 = 63 (X);
	R0 = R0 & R1;
	R4 <<= 6;
	R4 = R4 | R0;
	cc =R5==0;
	R0 = R5;
	R0 += -1;
	if !cc jump 4 (bp); jump.s .L1288;
	R5 = R0;
.L777:
	R3 = P2;
	R2 = [P5+8];
	cc =R2==R3;
	if !cc jump .L775 (bp);
	R0 = B [P5+16] (X);
	FP = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1236;
	R2 = 0 (X);
	[P5+4] = R2;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L541;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if cc jump 6 (bp); jump.l .L541;
	P2 = [P5+4];
	jump.s .L775;
.L1284:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L697;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L1289;
.L698:
	P2 += 1;
	[P5+4] = P2;
.L705:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1290;
	nop;
	nop;
.L707:
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	jump.s .L712;
.L1278:
	R2 = R7;
	R2 >>= R1;
	cc = BITTST (R2,0);
	if !cc jump .L649;
	R3 = P2;
	cc =R0==R3;
	if cc jump .L1291;
.L650:
	P2 += 1;
	[P5+4] = P2;
.L657:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L1292;
	nop;
	nop;
.L659:
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	jump.s .L665;
.L1290:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1236;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L710;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L707 (bp);
.L710:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[P5+8] = R0;
	if !cc jump 4 (bp); jump.s .L1236;
	P1 = P4 + P2;
	R2 = 34 (X);
	R0 = B [P1] (Z);
	cc =R0==R2;
	if cc jump 4; jump.s .L1236;
	R0 = 0 (X);
	jump.s .L717;
.L1289:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L699;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L704;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L698 (bp);
.L704:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L705;
.L1292:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1236;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L662;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L659 (bp);
.L662:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[P5+8] = R0;
	if !cc jump 4 (bp); jump.s .L1236;
	P1 = P4 + P2;
	R1 = 123 (X);
	R0 = B [P1] (Z);
	cc =R0==R1;
	if cc jump 4; jump.s .L1236;
	R0 = 0 (X);
	jump.s .L669;
.L1291:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L651;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L656;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L650 (bp);
.L656:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L657;
.L1280:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L677;
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1293;
.L678:
	P2 += 1;
	[P5+4] = P2;
.L684:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1294;
	nop;
	nop;
.L686:
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	jump.s .L691;
.L723:
	R0 = [P5+8];
	R1 = P2;
	cc =R1==R0;
	R2 = R0;
	if cc jump .L1295;
.L786:
	P1 = P4 + P2;
	R7 = 19 (X);
	P3.H = 36845;
	R5.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P3.L = 1468;
	R5.L = __ZN12_GLOBAL__N_110read_chunkE;
.L803:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L1296 (bp);
.L789:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L791;
	nop;
	P1 = P4 + P2;
	R1 = 58 (X);
	R0 = B [P1] (Z);
	cc =R0==R1;
	if cc jump 4 (bp); jump.s .L1236;
.L807:
	P2 += 1;
	[P5+4] = P2;
.L808:
	R1 = R6;
	R1 += -1;
	R0 = P5;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	FP = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L1236;
	P2 = [P5+4];
	R0 = [P5+8];
	R2 = R0;
	R1 = P2;
	cc =R1==R0;
	P1 = P2;
	if !cc jump 4 (bp); jump.s .L1297;
.L810:
	P1 = P4 + P2;
	R7 = 19 (X);
	P3.H = 36845;
	R5.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P3.L = 1468;
	R5.L = __ZN12_GLOBAL__N_110read_chunkE;
.L827:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L1298 (bp);
.L813:
	R1 = P2;
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L1299;
	P1 = P4 + P2;
	R7 = B [P1] (Z);
.L832:
	P2 += 1;
	[P5+4] = P2;
.L833:
	R0 = 125 (X);
	cc =R7==R0;
	if !cc jump 4 (bp); jump.s .L507;
	R1 = 44 (X);
	cc =R7==R1;
	if cc jump 4 (bp); jump.s .L1236;
.L1233:
	P2 = [P5+4];
	jump.s .L693;
.L1296:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L789;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L1300;
.L790:
	P2 += 1;
	[P5+4] = P2;
.L796:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L1301;
	nop;
	nop;
.L798:
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	jump.s .L803;
.L1298:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L813;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L1302;
.L814:
	P2 += 1;
	[P5+4] = P2;
.L821:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1303;
	nop;
	nop;
.L823:
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	jump.s .L827;
.L1301:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1236;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L801;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L798 (bp);
.L801:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[P5+8] = R0;
	if !cc jump 4 (bp); jump.s .L1236;
	P1 = P4 + P2;
	R3 = 58 (X);
	R0 = B [P1] (Z);
	cc =R0==R3;
	if cc jump .L807 (bp);
	FP = 0 (X);
	jump.s .L1267;
.L1300:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L791;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L795;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L790 (bp);
.L795:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L796;
.L1303:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1304;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L826;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L823 (bp);
.L826:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L813;
.L1302:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L815;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L820;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L814 (bp);
.L820:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L821;
.L1294:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L1233;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L1305;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = [P5+4];
	P1 = P2;
	if cc jump .L686 (bp);
.L688:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = P1;
	if cc jump 4; jump.s .L690;
	jump.s .L693;
.L1293:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L679;
	R0 = 0 (X);
	[P5+4] = R0;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R5;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L1306;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = [P5+4];
	P1 = P2;
	if cc jump .L678 (bp);
.L683:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = P1;
	jump.s .L684;
.L771:
	R2 = 127 (X);
	cc =R4<=R2 (iu);
	if cc jump 4 (bp); jump.s .L780;
.L728:
	B [SP+28] = R3;
	R3 = 1 (X);
	R2 = [P5+8];
.L779:
	R7 = [SP+96];
	R3 = R3 + R7;
	R0 = R3 - R7;
	R1 = R7;
	P1 = R0;
	LSETUP (.L785, .L1333) LC1 = P1;
.L785:
	R0 = 63 (X);
	cc =R1<=R0 (iu);
	if !cc jump .L784 (bp);
	R0 = SP;
	R0 += 32;
	R5 = R0 + R1;
	R0 = R1 - R7;
	FP = R0;
	P3 = 28 (X);
	P3 = P3 + SP;
	P0 = P3 + FP;
	R0 = B [P0] (X);
	P0 = R5;
	B [P0] = R0;
.L784:
.L1333:
	R1 += 1;
	[SP+96] = R3;
	R0 = R2;
	jump.s .L720;
.L1295:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L787;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L788;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L788;
	P2 = [P5+4];
	jump.s .L786;
.L791:
	R2 = B [P5+16] (X);
	R0 = R2.B (Z);
	cc =R0==0;
	FP = R2;
	if cc jump 6 (bp); jump.l .L1236;
	R7 = 0 (X);
	P3.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	[P5+4] = R7;
	P3.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L541;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L541;
	R3 = 58 (X);
	P2 = [P5+4];
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	cc =R1==R3;
	if cc jump 6 (bp); jump.l .L1236;
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L807;
	nop;
	nop;
	nop;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L808;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L809;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L809;
	P2 = [P5+4];
	jump.s .L807;
.L1283:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L695;
	P2.H = 36845;
	[P5+4] = R1;
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L696;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L696;
	P2 = [P5+4];
	jump.s .L694;
.L1285:
	R2 = B [P5+16] (X);
	R0 = R2.B (Z);
	cc =R0==0;
	FP = R2;
	if cc jump 6 (bp); jump.l .L1236;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L722;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if !cc jump .L722;
	nop;
	nop;
	nop;
	P2 = [P5+4];
	jump.s .L721;
.L699:
	R2 = B [P5+16] (X);
	R0 = R2.B (Z);
	cc =R0==0;
	FP = R2;
	if cc jump 6 (bp); jump.l .L1236;
	R7 = 0 (X);
	P3.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	[P5+4] = R7;
	P3.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L541;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L541;
	R3 = 34 (X);
	P2 = [P5+4];
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	cc =R1==R3;
	if cc jump 6; jump.l .L1236;
	R1 = P2;
	cc =R0==R1;
	if cc jump 4 (bp); jump.s .L717;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L914;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L719;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L719;
	P2 = [P5+4];
	jump.s .L717;
.L1299:
	R1 = B [P5+16] (Z);
.L815:
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1236;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P1 = [P5+4];
	if !cc jump 4 (bp); jump.s .L884;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = P1;
	if cc jump 4 (bp); jump.s .L884;
	R1 = P1;
	P0 = P4 + P1;
	cc =R0==R1;
	R7 = B [P0] (Z);
	if cc jump 4 (bp); jump.s .L832;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L833;
.L899:
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L834;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L834;
	P2 = [P5+4];
	jump.s .L832;
.L1297:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L811;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L812;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L812;
	P2 = [P5+4];
	jump.s .L810;
.L1273:
	R3 = B [P5+16] (X);
	R0 = R3.B (Z);
	cc =R0==0;
	FP = R3;
	if cc jump 6 (bp); jump.l .L1236;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L726;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L726;
	P2 = [P5+4];
	jump.s .L551;
.L722:
	R2 = 1 (X);
	R0 = 1 (X);
	R2 <<= 16;
	B [P5+16] = R0;
	cc =R1<=R2 (iu);
.L1237:
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.l .L507;
.L1286:
	R2 = [P5+8];
	R3 = P2;
	cc =R3==R2;
	if !cc jump 4 (bp); jump.s .L1307;
.L725:
	P1 = P4 + P2;
	R1 = 117 (X);
	P2 += 1;
	R3 = B [P1] (X);
	R0 = R3.B (Z);
	cc =R0==R1;
	[P5+4] = P2;
	if !cc jump 4 (bp); jump.s .L915;
	R2 = 98 (X);
	cc =R0==R2;
	if !cc jump 4 (bp); jump.s .L916;
	cc =R0<=R2 (iu);
	if !cc jump 4 (bp); jump.s .L1308;
	R2 = 110 (X);
	cc =R0==R2;
	if !cc jump 4 (bp); jump.s .L917;
	cc =R0<=R2 (iu);
	if !cc jump 4 (bp); jump.s .L1309;
	R1 = 114 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L919;
	R2 = 116 (X);
	cc =R0==R2;
	if cc jump 6 (bp); jump.l .L1236;
	R3 = 9 (X);
	jump.s .L728;
.L907:
	P3.H = 36845;
	R4.H = __ZN12_GLOBAL__N_110read_chunkE;
	R6 = 4 (X);
	R7 = 0 (X);
	P3.L = 1468;
	R4.L = __ZN12_GLOBAL__N_110read_chunkE;
	R5 = -97 (X);
.L553:
	R1 = P2;
	R0 = [P5+8];
	cc =R0==R1;
	if cc jump .L1310;
.L566:
	P1 = P4 + P2;
	R2 = 9 (X);
	P2 += 1;
	R0 = B [P1] (Z);
	R1 = R0;
	R1 += -48;
	cc =R1<=R2 (iu);
	[P5+4] = P2;
	if !cc jump .L569 (bp);
	R0 = R1;
.L570:
	R6 += -1;
	R7 <<= 4;
	cc =R6==0;
	R7 = R7 | R0;
	if !cc jump .L553 (bp);
	R6 = -27 (X);
	R6 <<= 11;
	R6 = R7 + R6;
	R3 = 1023 (X);
	cc =R6<=R3 (iu);
	if cc jump 4 (bp); jump.s .L572;
.L606:
	R1 = P2;
	R0 = [P5+8];
	cc =R0==R1;
	if cc jump .L1311;
	nop;
	P1 = P4 + P2;
	R2 = 92 (X);
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump 4 (bp); jump.s .L1232;
.L579:
	P2 += 1;
	R1 = P2;
	cc =R1==R0;
	[P5+4] = P2;
	if cc jump .L1312;
.L584:
	P1 = P4 + P2;
	R0 = 117 (X);
	P2 += 1;
	R5 = B [P1] (X);
	R4 = R5.B (Z);
	cc =R4==R0;
	[P5+4] = P2;
	if cc jump 4 (bp); jump.s .L1313;
	P3.H = 36845;
	FP = 4 (X);
	R5 = 0 (X);
	P3.L = 1468;
	R4 = -97 (X);
.L587:
	R1 = P2;
	R0 = [P5+8];
	cc =R0==R1;
	if cc jump .L1314;
.L597:
	P1 = P4 + P2;
	R2 = 9 (X);
	P2 += 1;
	R1 = B [P1] (Z);
	R0 = R1;
	R0 += -48;
	cc =R0<=R2 (iu);
	[P5+4] = P2;
	if cc jump .L601 (bp);
	R0 = R1 + R4;
	cc =R0<=5 (iu);
	if !cc jump .L602;
	R0 = -87 (X);
	R0 = R1 + R0;
.L601:
	FP += -1;
	R5 <<= 4;
	cc =FP==0;
	R5 = R5 | R0;
	if !cc jump .L587 (bp);
	R0 = -55 (X);
	R0 <<= 10;
	R0 = R5 + R0;
	R2 = 1023 (X);
	cc =R0<=R2 (iu);
	if !cc jump 4 (bp); jump.s .L1315;
	R0 = -19 (X);
	B [SP+28] = R0;
	R1 = R7 >> 6;
	R0 = 63 (X);
	R2 = -128 (X);
	R1 = R1 & R0;
	R3 = [SP+96];
	R0 = R7 & R0;
	R0 = R0 | R2;
	R1 = R1 | R2;
	R2 = R3;
	B [SP+30] = R0;
	B [SP+29] = R1;
	R2 += 3;
	R0 = R3;
.L605:
	R1 = 63 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L604 (bp);
	P3 = R0;
	P1 = 32 (X);
	P1 = P1 + SP;
	R1 = R0 - R3;
	FP = 28 (X);
	P0 = P1 + P3;
	P3 = R1;
	FP = FP + SP;
	P1 = FP + P3;
	R1 = B [P1] (X);
	B [P0] = R1;
.L604:
	R0 += 1;
	cc =R2==R0;
	if !cc jump .L605 (bp);
	R6 = -27 (X);
	R6 <<= 11;
	R6 = R5 + R6;
	R0 = 1023 (X);
	cc =R6<=R0 (iu);
	[SP+96] = R2;
	R7 = R5;
	if cc jump .L606 (bp);
.L607:
	R3 = 127 (X);
	cc =R7<=R3 (iu);
	R0 = [P5+8];
	if cc jump 4 (bp); jump.s .L615;
	R5 = R7;
	jump.l .L565;
.L1314:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1236;
	[P5+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L763;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L763;
	P2 = [P5+4];
	jump.s .L597;
.L602:
	R0 = -65 (X);
	R0 = R1 + R0;
	cc =R0<=5 (iu);
	if cc jump 6 (bp); jump.l .L1236;
	R0 += 10;
	jump.s .L601;
.L1311:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L574;
	R5 = 0 (X);
	P3.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	[P5+4] = R5;
	P3.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L1316;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = [P5+4];
	P1 = P2;
	if cc jump 4 (bp); jump.s .L575;
	P1 = P4 + P2;
	R2 = 92 (X);
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump 4 (bp); jump.s .L1232;
	R3 = P2;
	cc =R0==R3;
	if !cc jump .L579;
	nop;
	nop;
	nop;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L580;
	[P5+4] = R5;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L1317;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = [P5+4];
	P1 = P2;
	if cc jump .L579 (bp);
.L583:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = P1;
	if !cc jump .L584 (bp);
.L580:
	R0 = SP;
	R1 = R7;
	R0 += 32;
	call __ZN12_GLOBAL__N_16Parser3putERNS_4TextEm;
	FP = 0 (X);
	jump.l .L1267;
.L1312:
	R0 = B [P5+16] (X);
	FP = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L580;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L586;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L586;
	P2 = [P5+4];
	jump.s .L584;
.L569:
	R1 = R0 + R5;
	cc =R1<=5 (iu);
	if !cc jump .L571 (bp);
	R1 = -87 (X);
	R0 = R0 + R1;
	jump.s .L570;
.L1310:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1236;
	[P5+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = R4;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L763;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L763;
	P2 = [P5+4];
	jump.s .L566;
.L1263:
	R1 = B [P5+16] (Z);
.L845:
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L862;
	R7 = 0 (X);
	P3.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	[P5+4] = R7;
	P3.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L860;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L860;
	R3 = 93 (X);
	P2 = [P5+4];
	P1 = P4 + P2;
	R1 = B [P1] (Z);
	cc =R1==R3;
	if cc jump 6; jump.l .L862;
	R1 = P2;
	cc =R1==R0;
	if cc jump 6 (bp); jump.l .L863;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1238;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 6 (bp); jump.l .L864;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L864;
	P2 = [P5+4];
	jump.l .L863;
.L1261:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1318;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L842;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L842;
	P2 = [P5+4];
	jump.l .L840;
.L1260:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1319;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P1 = [P5+4];
	if cc jump .L839;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = P1;
	if !cc jump 6; jump.l .L835;
.L839:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = P1;
	if !cc jump 4 (bp); jump.s .L1235;
	R0 = 0 (X);
	jump.l .L840;
.L780:
	R0 = R4 >> 6 ||
	R2 = [P5+8] ||
	nop;
	R1 = -64 (X);
	P1 = 0 (X);
.L782:
	P0 = P1 + (P1 << 1);
	R0 = R0 | R1;
	R1 = P0;
	P0 = 29 (X);
	B [SP+28] = R0;
	R1 <<= 1;
	P0 = P0 + SP;
	R7 = 63 (X);
	R3 = -128 (X);
.L783:
	R0 = R4;
	R0 >>= R1;
	R0 = R0 & R7;
	R0 = R0 | R3;
	B [P0++] = R0;
	R1 += -6;
	R0 = -6 (X);
	cc =R1==R0;
	if !cc jump .L783 (bp);
	R3 = P1;
	R3 += 2;
	jump.s .L779;
.L1277:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L647;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L648;
	R2 = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if !cc jump 4; jump.s .L646;
.L648:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R2 = 0 (X);
.L647:
	P2 = [P5+4];
	R0 = R2;
	jump.s .L649;
.L1309:
	R3 = 102 (X);
	cc =R0==R3;
	if cc jump 6 (bp); jump.l .L1236;
	R3 = 12 (X);
	jump.s .L728;
.L1308:
	R1 = 47 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L728;
	R2 = 92 (X);
	cc =R0==R2;
	if !cc jump 4 (bp); jump.s .L728;
	R1 = 34 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L728;
	FP = 0 (X);
	jump.l .L1267;
.L571:
	R1 = -65 (X);
	R1 = R0 + R1;
	cc =R1<=5 (iu);
	if cc jump 6 (bp); jump.l .L1236;
	R0 += -55;
	jump.s .L570;
.L651:
	R2 = B [P5+16] (X);
	R0 = R2.B (Z);
	cc =R0==0;
	FP = R2;
	if cc jump 6 (bp); jump.l .L1236;
	R7 = 0 (X);
	P3.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	[P5+4] = R7;
	P3.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L541;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L541;
	R3 = 123 (X);
	P1 = [P5+4];
	P0 = P4 + P1;
	R1 = B [P0] (Z);
	cc =R1==R3;
	P2 = P1;
	if cc jump 6; jump.l .L1236;
	R1 = P1;
	cc =R0==R1;
	if cc jump 6 (bp); jump.l .L669;
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L670;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P1 = [P5+4];
	if cc jump .L673;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = P1;
	if !cc jump 6; jump.l .L669;
.L673:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = P1;
	if cc jump 6; jump.l .L674;
.L670:
	P2 = P1;
	R0 = [P5+8];
	jump.l .L677;
.L774:
	R0 = -240 (X);
	R4 = R4 + R0;
	cc =R4<=4 (iu);
	if cc jump 6 (bp); jump.l .L1236;
	R4 = 7 (X);
	R7 = 1 (X);
	R4 = R3 & R4;
	R7 <<= 16;
	R5 = 2 (X);
	jump.s .L773;
.L1287:
	R4 = 31 (X);
	R4 = R3 & R4;
	R7 = 128 (X);
	R5 = 0 (X);
	jump.s .L773;
.L1288:
	cc =R4<R7 (iu);
	if !cc jump 6 (bp); jump.l .L1236;
	R3 = 65535 (Z);
	BITSET (R3, 20);
	cc =R4<=R3 (iu);
	if cc jump 6 (bp); jump.l .L1236;
	R0 = -27 (X);
	R0 <<= 11;
	R0 = R4 + R0;
	R1 = 2047 (X);
	cc =R0<=R1 (iu);
	if !cc jump 6 (bp); jump.l .L1236;
.L778:
	R3 = 2047 (X);
	cc =R4<=R3 (iu);
	if cc jump .L780;
	nop;
	nop;
	nop;
	R2 = [P5+8];
.L903:
	R0 = 65535 (Z);
	cc =R4<=R0 (iu);
	if !cc jump .L781 (bp);
	R0 = R4 >> 12;
	R1 = -32 (X);
	P1 = 1 (X);
	jump.s .L782;
.L919:
	R3 = 13 (X);
	jump.s .L728;
.L1307:
	R0 = B [P5+16] (X);
	FP = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1236;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L726;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L726;
	P2 = [P5+4];
	jump.s .L725;
.L1315:
	R7 = 9216 (X);
	R6 <<= 10;
	R7 = R5 + R7;
	R7 = R6 + R7;
	R0 = [P5+8];
.L1232:
	R2 = [SP+96];
	jump.l .L902;
.L781:
	R0 = R4 >> 18;
	R1 = -16 (X);
	P1 = 2 (X);
	jump.s .L782;
.L596:
	P2 = [P5+4];
.L1230:
	R2 = [SP+96];
	R0 = [P5+8];
	R5 = 13 (X);
	jump.l .L565;
.L630:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R0 = -1 (X);
	jump.l .L629;
.L588:
	P2 = [P5+4];
.L1227:
	R2 = [SP+96];
	R0 = [P5+8];
	R5 = 8 (X);
	jump.l .L565;
.L593:
	P2 = [P5+4];
.L1229:
	R2 = [SP+96];
	R0 = [P5+8];
	R5 = 10 (X);
	jump.l .L565;
.L1250:
	P2 = [P5+4];
	jump.l .L511;
.L529:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = 0 (X);
.L528:
	R0 = P2;
	P2 = [P5+4];
	jump.l .L531;
.L637:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R0 = -1 (X);
	jump.l .L636;
.L1281:
	R1 = B [P5+16] (Z);
.L679:
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1233;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L692;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L692;
	P2 = [P5+4];
	jump.l .L690;
.L763:
	R3 = 1 (X);
	R0 = 1 (X);
	R3 <<= 16;
	B [P5+16] = R0;
	cc =R1<=R3 (iu);
.L1234:
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	FP = 0 (X);
	jump.l .L1267;
.L915:
	FP.H = 36845;
	P3.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 4 (X);
	R4 = 0 (X);
	FP.L = 1468;
	P3.L = __ZN12_GLOBAL__N_110read_chunkE;
	R5 = -97 (X);
.L727:
	R3 = P2;
	R2 = [P5+8];
	cc =R2==R3;
	if cc jump .L1320;
.L732:
	P1 = P4 + P2;
	R3 = 9 (X);
	P2 += 1;
	R0 = B [P1] (Z);
	R1 = R0;
	R1 += -48;
	cc =R1<=R3 (iu);
	[P5+4] = P2;
	if !cc jump .L735 (bp);
	R0 = R1;
.L736:
	R7 += -1;
	R4 <<= 4;
	cc =R7==0;
	R4 = R4 | R0;
	if !cc jump .L727 (bp);
	R7 = -27 (X);
	R7 <<= 11;
	R7 = R4 + R7;
	R0 = 1023 (X);
	cc =R7<=R0 (iu);
	if !cc jump .L738;
	nop;
	R5 = R4;
.L770:
	R1 = P2;
	R0 = [P5+8];
	cc =R0==R1;
	R2 = R0;
	if cc jump .L1321;
	nop;
	P1 = P4 + P2;
	R3 = 92 (X);
	R1 = B [P1] (Z);
	cc =R1==R3;
	if cc jump 4 (bp); jump.s .L740;
.L743:
	P2 += 1;
	R1 = P2;
	cc =R1==R0;
	[P5+4] = P2;
	if cc jump .L1322;
.L748:
	P1 = P4 + P2;
	R0 = 117 (X);
	P2 += 1;
	R3 = B [P1] (X);
	R2 = R3.B (Z);
	cc =R2==R0;
	[P5+4] = P2;
	if cc jump 4 (bp); jump.s .L1323;
	P1.H = 36845;
	R3.H = __ZN12_GLOBAL__N_110read_chunkE;
	P3 = 4 (X);
	R4 = 0 (X);
	P1.L = 1468;
	R3.L = __ZN12_GLOBAL__N_110read_chunkE;
	FP = -97 (X);
.L751:
	R0 = P2;
	R2 = [P5+8];
	cc =R2==R0;
	if cc jump .L1324;
.L761:
	P0 = P4 + P2;
	R2 = 9 (X);
	P2 += 1;
	R0 = B [P0] (Z);
	R1 = R0;
	R1 += -48;
	cc =R1<=R2 (iu);
	[P5+4] = P2;
	if !cc jump .L764 (bp);
	R0 = R1;
.L765:
	P3 += -1;
	R4 <<= 4;
	cc =P3==0;
	R4 = R4 | R0;
	if !cc jump .L751 (bp);
	R0 = -55 (X);
	R0 <<= 10;
	R0 = R4 + R0;
	R1 = 1023 (X);
	cc =R0<=R1 (iu);
	if !cc jump 4 (bp); jump.s .L1325;
	R0 = -19 (X);
	B [SP+28] = R0;
	R1 = R5 >> 6;
	R0 = 63 (X);
	R1 = R1 & R0;
	R2 = -128 (X);
	R1 = R1 | R2;
	R3 = [SP+96];
	R0 = R5 & R0;
	R0 = R0 | R2;
	B [SP+29] = R1;
	R1 = R3;
	B [SP+30] = R0;
	R1 += 3;
	R0 = R3;
.L769:
	R2 = 63 (X);
	cc =R0<=R2 (iu);
	if !cc jump .L768 (bp);
	P3 = R0;
	P1 = 32 (X);
	P1 = P1 + SP;
	R2 = R0 - R3;
	FP = 28 (X);
	P0 = P1 + P3;
	P3 = R2;
	FP = FP + SP;
	P1 = FP + P3;
	R2 = B [P1] (X);
	B [P0] = R2;
.L768:
	R0 += 1;
	cc =R1==R0;
	if !cc jump .L769 (bp);
	R7 = -27 (X);
	R7 <<= 11;
	R7 = R4 + R7;
	R0 = 1023 (X);
	cc =R7<=R0 (iu);
	[SP+96] = R1;
	R5 = R4;
	if cc jump .L770 (bp);
.L738:
	R2 = 127 (X);
	cc =R4<=R2 (iu);
	P2 = [P5+4];
	if !cc jump .L778;
	R3 = R4;
	jump.s .L728;
.L764:
	R2 = FP;
	R1 = R0 + R2;
	cc =R1<=5 (iu);
	if !cc jump .L766 (bp);
	R1 = -87 (X);
	R0 = R0 + R1;
	jump.s .L765;
.L1324:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1236;
	[P5+4] = R0;
	R1 = 1 (X);
	[SP+16] = R3;
	R0 = [P5];
	[SP+12] = R0;
	[SP+20] = P1;
	R0 = R3;
	R2 = 4096 (X);
	call (P1);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	R3 = [SP+16];
	P1 = [SP+20];
	if cc jump .L763;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L763;
	nop;
	nop;
	nop;
	P2 = [P5+4];
	jump.s .L761;
.L766:
	R1 = -65 (X);
	R1 = R0 + R1;
	cc =R1<=5 (iu);
	if cc jump 6 (bp); jump.l .L1236;
	R0 += -55;
	jump.s .L765;
.L1322:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L744;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L750;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L750;
	P2 = [P5+4];
	jump.s .L748;
.L1321:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L740;
	FP = 0 (X);
	P3.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	[P5+4] = FP;
	P3.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L1326;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = [P5+4];
	P1 = P2;
	if cc jump 4 (bp); jump.s .L741;
	P1 = P4 + P2;
	R2 = 92 (X);
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump 4 (bp); jump.s .L1327;
	R3 = P2;
	cc =R0==R3;
	if !cc jump .L743;
	nop;
	nop;
	nop;
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L744;
	[P5+4] = FP;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L1328;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = [P5+4];
	P1 = P2;
	if cc jump .L743 (bp);
.L747:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = P1;
	if !cc jump .L748 (bp);
.L744:
	R0 = SP;
	R1 = R4;
	R0 += 32;
	call __ZN12_GLOBAL__N_16Parser3putERNS_4TextEm;
	FP = 0 (X);
	jump.l .L507;
.L735:
	R1 = R0 + R5;
	cc =R1<=5 (iu);
	if !cc jump .L737 (bp);
	R1 = -87 (X);
	R0 = R0 + R1;
	jump.s .L736;
.L1320:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1236;
	[P5+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = P3;
	call (FP);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if !cc jump 4 (bp); jump.s .L734;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L734;
	P2 = [P5+4];
	jump.s .L732;
.L737:
	R1 = -65 (X);
	R1 = R0 + R1;
	cc =R1<=5 (iu);
	if cc jump 6 (bp); jump.l .L1236;
	R0 += -55;
	jump.s .L736;
.L917:
	R3 = 10 (X);
	jump.s .L728;
.L541:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	jump.s .L1237;
.L643:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R0 = -1 (X);
	jump.l .L642;
.L1279:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	P1 = P2;
	if cc jump 4 (bp); jump.s .L670;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L676;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L676;
	nop;
	nop;
	nop;
	P2 = [P5+4];
	jump.l .L674;
.L1276:
	R1 = R7 >> 12;
	R3 = -32 (X);
	P0 = 1 (X);
	jump.l .L619;
.L1313:
	R0 = SP;
	R1 = R7;
	R0 += 32;
	call __ZN12_GLOBAL__N_16Parser3putERNS_4TextEm;
	R1 = 98 (X);
	cc =R4==R1;
	if !cc jump 4 (bp); jump.s .L588;
	cc =R4<=R1 (iu);
	if cc jump .L1329;
	R1 = 110 (X);
	cc =R4==R1;
	if !cc jump 4 (bp); jump.s .L593;
	cc =R4<=R1 (iu);
	if cc jump .L1330;
	R3 = 114 (X);
	cc =R4==R3;
	if !cc jump 4 (bp); jump.s .L596;
	R0 = 116 (X);
	cc =R4==R0;
	if cc jump 6 (bp); jump.l .L1236;
	P2 = [P5+4];
	jump.l .L1231;
.L1329:
	R2 = 47 (X);
	cc =R4==R2;
	if cc jump .L592;
	R3 = 92 (X);
	cc =R4==R3;
	if cc jump .L592;
	R0 = 34 (X);
	cc =R4==R0;
	if cc jump 6; jump.l .L1236;
.L592:
	P2 = [P5+4];
	jump.l .L1226;
.L1330:
	R2 = 102 (X);
	cc =R4==R2;
	if cc jump 6 (bp); jump.l .L1236;
	P2 = [P5+4];
	jump.l .L1228;
.L546:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P2 = [P5+4] ||
	nop;
	[P5+8] = R0;
	jump.l .L547;
.L905:
	R0 = P2;
	jump.l .L547;
.L1328:
	P1 = [P5+4];
	jump.s .L747;
.L916:
	R3 = 8 (X);
	jump.l .L728;
.L1306:
	P1 = [P5+4];
	jump.l .L683;
.L904:
	R1 = -1 (X);
	jump.l .L509;
.L842:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P1 = [P5+4] ||
	nop;
	[P5+8] = R0;
.L1235:
	R2 = 0 (X);
.L836:
	P2 = P1;
	R0 = R2;
	jump.l .L843;
.L1318:
	P1 = P2;
	R2 = [P5+8];
	jump.s .L836;
.L860:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.l .L862;
.L726:
	R3 = 1 (X);
	R0 = 1 (X);
	R3 <<= 16;
	B [P5+16] = R0;
	cc =R1<=R3 (iu);
	jump.s .L1237;
.L910:
	R0 = -1 (X);
	jump.l .L629;
.L719:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P2 = [P5+4] ||
	nop;
	[P5+8] = R0;
	jump.l .L720;
.L914:
	R0 = P2;
	jump.l .L720;
.L911:
	R0 = -1 (X);
	jump.l .L636;
.L1316:
	P1 = [P5+4];
.L575:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = P1;
	R2 = [SP+96];
	jump.l .L902;
.L586:
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R0 = SP;
	R1 = R7;
	R0 += 32;
	call __ZN12_GLOBAL__N_16Parser3putERNS_4TextEm;
	jump.l .L507;
.L692:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P2 = [P5+4] ||
	nop;
	[P5+8] = R0;
	jump.l .L693;
.L1270:
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1236;
	R6 = -1 (X);
	jump.l .L901;
.L676:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P1 = [P5+4] ||
	nop;
	[P5+8] = R0;
	jump.s .L670;
.L812:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P1 = [P5+4] ||
	nop;
	[P5+8] = R0;
	R2 = 0 (X);
.L811:
	R0 = R2;
	P2 = P1;
	jump.l .L813;
.L1282:
	R0 = P5;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	if !cc jump 6 (bp); jump.l .L1238;
	FP = 1 (X);
	R0 = [P5+4];
	R0 += 1;
	[P5+4] = R0;
	jump.l .L507;
.L809:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.l .L808;
.L1319:
	P1 = [P5+4];
	jump.s .L836;
.L1304:
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1236;
	R7 = -1 (X);
	jump.s .L899;
.L889:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.l .L888;
.L884:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P5+8] = R0;
	if !cc jump 6 (bp); jump.l .L1236;
	P1 += 1;
	[P5+4] = P1;
	FP = 0 (X);
	jump.l .L1267;
.L867:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = R0 -|- R0 ||
	P1 = [P5+4] ||
	nop;
	[P5+8] = R0;
	R2 = 0 (X);
.L866:
	R0 = R2;
	P2 = P1;
	jump.l .L868;
.L574:
	R2 = [SP+96];
	R0 = P2;
	jump.l .L902;
.L572:
	R2 = [SP+96];
	jump.s .L607;
.L1317:
	P1 = [P5+4];
	jump.s .L583;
.L912:
	R0 = -1 (X);
	jump.l .L642;
.L1305:
	P1 = [P5+4];
	jump.l .L688;
.L696:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R2 = 0 (X);
.L695:
	P2 = [P5+4];
	R0 = R2;
	jump.l .L697;
.L788:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R2 = 0 (X);
.L787:
	P2 = [P5+4];
	R0 = R2;
	jump.l .L789;
.L834:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.l .L833;
.L1326:
	P1 = [P5+4];
.L741:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	P2 = P1;
	R2 = 0 (X);
.L740:
	R4 = R5;
	jump.s .L903;
.L1325:
	R0 = 9216 (X);
	R7 <<= 10;
	R4 = R4 + R0;
	R5 = R7 + R4;
	R2 = [P5+8];
	jump.s .L740;
.L1327:
	R2 = R0;
	jump.s .L740;
.L1323:
	R0 = SP;
	R1 = ROT R4 BY 0 ||
	[SP+20] = R2 ||
	nop;
	R0 += 32;
	[SP+16] = R3;
	call __ZN12_GLOBAL__N_16Parser3putERNS_4TextEm;
	R2 = [SP+20];
	R1 = 98 (X);
	cc =R2==R1;
	R3 = [SP+16];
	if cc jump .L752;
	cc =R2<=R1 (iu);
	if cc jump .L1331;
	R1 = 110 (X);
	cc =R2==R1;
	if cc jump .L757;
	cc =R2<=R1 (iu);
	if cc jump .L1332;
	R0 = 114 (X);
	cc =R2==R0;
	if cc jump .L760;
	R1 = 116 (X);
	cc =R2==R1;
	if cc jump 6 (bp); jump.l .L1236;
	R3 = 9 (X);
	P2 = [P5+4];
	jump.l .L728;
.L750:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P5+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	jump.s .L744;
.L734:
	R2 = 1 (X);
	R0 = 1 (X);
	R2 <<= 16;
	B [P5+16] = R0;
	cc =R1<=R2 (iu);
	jump.s .L1234;
.L760:
	P2 = [P5+4];
	R3 = 13 (X);
	jump.l .L728;
.L1332:
	R3 = 102 (X);
	cc =R2==R3;
	if cc jump 6 (bp); jump.l .L1236;
	R3 = 12 (X);
	P2 = [P5+4];
	jump.l .L728;
.L757:
	P2 = [P5+4];
	R3 = 10 (X);
	jump.l .L728;
.L1331:
	R0 = 47 (X);
	cc =R2==R0;
	if cc jump .L756;
	R1 = 92 (X);
	cc =R2==R1;
	if cc jump .L756;
	R0 = 34 (X);
	cc =R2==R0;
	if cc jump 6; jump.l .L1236;
.L756:
	P2 = [P5+4];
	jump.l .L728;
.L752:
	P2 = [P5+4];
	R3 = 8 (X);
	jump.l .L728;
	.size	__ZN12_GLOBAL__N_16Parser4skipEm, .-__ZN12_GLOBAL__N_16Parser4skipEm
	.align 4
.type __ZN12_GLOBAL__N_16Parser7naturalERmRb, STT_FUNC;
__ZN12_GLOBAL__N_16Parser7naturalERmRb:
	[--sp] = ( r7:6, p5:3 );

	P5 = R0;
	P3 = R2;
	R0 = 0 (X);
	R6 = R1;
	LINK 24;
	P2 = [P5+4];
	B [P3] = R0;
	R0 = [P5+8];
	R1 = P2;
	cc =R1==R0;
	if cc jump .L1385;
.L1336:
	P1.H = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1 = P1 + P2;
	R1 = B [P1] (Z);
.L1337:
	P4.H = 36845;
	FP.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	P4.L = 1468;
	FP.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L1352;
.L1342:
	P2 += 1;
	[P5+4] = P2;
.L1346:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1386;
	nop;
	nop;
.L1347:
	P1 = FP + P2;
	R1 = B [P1] (Z);
.L1352:
	R2 = 32 (X);
	cc =R1==R2;
	if cc jump .L1340;
	R2 = 9 (X);
	cc =R1==R2;
	if cc jump .L1340;
	R2 = 10 (X);
	cc =R1==R2;
	if cc jump .L1340;
	R2 = 13 (X);
	cc =R1==R2;
	if !cc jump .L1341;
.L1340:
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L1342 (bp);
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L1355;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = FP;
	call (P4);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L1345;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1342 (bp);
.L1345:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	[P5+8] = R7;
	R0 = 0 (X);
	jump.s .L1346;
.L1386:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L1355;
	[P5+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0 = FP;
	call (P4);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L1351;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1347 (bp);
.L1351:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
.L1341:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L1387;
.L1353:
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1 = R0;
	R1 = 45 (X);
	P2 = P1 + P2;
	R0 = B [P2] (Z);
	cc =R0==R1;
	if cc jump .L1357;
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if !cc jump .L1355;
.L1357:
	R1 = SP;
	R1 += 16;
	R0 = P5;
	call __ZN12_GLOBAL__N_16Parser6numberERNS_6NumberE;
	R1 = R0.B (Z);
	cc =R1==0;
	if cc jump .L1335;
	R2 = [SP+20];
	R1 = B [SP+16] (X);
	R3 = R1.B (Z);
	cc =R3==0;
	if cc jump .L1359 (bp);
	R3 = B [SP+17] (Z);
	cc =R3==0;
	if !cc jump .L1388 (bp);
.L1359:
	P1 = R6;
	B [P3] = R1;
	[P1] = R2;
.L1335:
	SP += 24;
	FP = [SP++];
	RETS = [SP++];
	( r7:6, p5:3 ) = [sp++];

	rts;
.L1385:
	R1 = B [P5+16] (Z);
	cc =R1==0;
	if !cc jump .L1360;
	R0 = 0 (X);
	[P5+4] = R0;
	P2.H = 36845;
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P2.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	P2 = [P5+4];
	if cc jump .L1339;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1336 (bp);
.L1339:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
	R1 = -1 (X);
	jump.s .L1337;
.L1387:
	R0 = B [P5+16] (Z);
	cc =R0==0;
	if !cc jump .L1355;
	[P5+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P5];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P5+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P5+8] = R0;
	[P5+12] = R1;
	if cc jump .L1356;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L1356;
	nop;
	nop;
	nop;
	P2 = [P5+4];
	jump.s .L1353;
.L1356:
	R0 = 1 (X);
	B [P5+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P5+17] = R0;
	R0 = 0 (X);
	[P5+8] = R0;
.L1355:
	R0 = P5;
	R1 = 8 (X);
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	SP += 24;
	FP = [SP++];
	RETS = [SP++];
	( r7:6, p5:3 ) = [sp++];

	rts;
.L1388:
	P1 = R6;
	cc =R2==0;
	R1 = CC;
	B [P3] = R1;
	[P1] = R2;
	jump.s .L1335;
.L1360:
	R1 = -1 (X);
	jump.s .L1337;
	.size	__ZN12_GLOBAL__N_16Parser7naturalERmRb, .-__ZN12_GLOBAL__N_16Parser7naturalERmRb
	.section	.rodata.str1.4
	.align 4
.LC4:
	.string	"version"
	.align 4
.LC5:
	.string	"profile"
	.align 4
.LC6:
	.string	"opxy-1.2.1"
	.align 4
.LC7:
	.string	"machines"
	.align 4
.LC8:
	.string	"page"
	.align 4
.LC9:
	.string	"engine"
	.align 4
.LC10:
	.string	"effect"
.text;
	.align 4
.type __ZN12_GLOBAL__N_116machines_sectionERNS_6ParserERbS2_, STT_FUNC;
__ZN12_GLOBAL__N_116machines_sectionERNS_6ParserERbS2_:
	P0 = R2;
	P1 = R1;
	[--sp] = ( r7:4, p5:3 );

	P3 = R0;
	R4.H = __ZN12_GLOBAL__N_110engine_mapE;
	R0 = 0 (X);
	LINK 280;
	R4.L = __ZN12_GLOBAL__N_110engine_mapE;
	B [P0] = R0;
	B [P1] = R0;
	R0 = 1024 (X);
	R0 = R4 + R0;
	[SP+24] = R0;
	[SP+320] = R1;
	[SP+324] = R2;
	P0 = R4;
	R0 = -2 (X);
	P1 = 256 (X);
	LSETUP (.L1390, .L2416) LC1 = P1;
.L1390:
.L2416:
	[P0++] = R0;
	P2.H = __ZN12_GLOBAL__N_110effect_mapE;
	P2.L = __ZN12_GLOBAL__N_110effect_mapE;
	R0 = 252 (X);
	R3 = P2;
	R0 = R3 + R0;
	[SP+28] = R0;
	[SP+16] = P2;
	P0 = P2;
	R0 = -2 (X);
	P1 = 63 (X);
	LSETUP (.L1391, .L2415) LC1 = P1;
.L1391:
.L2415:
	[P0++] = R0;
	P1 = [P3+4];
	P0.H = __ZN12_GLOBAL__N_112listed_countE;
	R0 = [P3+8];
	R2 = 0 (X);
	R1 = P1;
	P0.L = __ZN12_GLOBAL__N_112listed_countE;
	cc =R1==R0;
	[P0] = R2;
	if cc jump .L2315;
.L1392:
	P0.H = __ZN12_GLOBAL__N_110read_chunkE;
	P0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P0 = P0 + P1;
	R1 = B [P0] (Z);
.L1393:
	P5.H = 36845;
	P4.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	P5.L = 1468;
	P4.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L1405;
.L1397:
	P1 += 1;
	[P3+4] = P1;
.L1401:
	R1 = P1;
	cc =R1==R0;
	if cc jump .L2316;
	nop;
	nop;
.L1402:
	P2 = P4 + P1;
	R1 = B [P2] (Z);
.L1405:
	R2 = 32 (X);
	cc =R1==R2;
	if cc jump .L1395;
	R3 = 9 (X);
	cc =R1==R3;
	if cc jump .L1395;
	R2 = 10 (X);
	cc =R1==R2;
	if cc jump .L1395;
	R3 = 13 (X);
	cc =R1==R3;
	if !cc jump .L1396;
.L1395:
	R1 = P1;
	cc =R0==R1;
	if !cc jump .L1397 (bp);
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1408;
	[P3+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = P4;
	call (P5);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P1 = [P3+4];
	if cc jump .L1400;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1397 (bp);
.L1400:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	[P3+8] = R7;
	R0 = 0 (X);
	jump.s .L1401;
.L2316:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1408;
	[P3+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = P4;
	call (P5);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P1 = [P3+4];
	if cc jump .L1404;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1402 (bp);
.L1404:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
.L1396:
	R7 = P1;
	cc =R0==R7;
	if cc jump .L2317;
.L1406:
	P5.H = __ZN12_GLOBAL__N_110read_chunkE;
	P5.L = __ZN12_GLOBAL__N_110read_chunkE;
	P0 = P5 + P1;
	R0 = B [P0] (Z);
	R3 = 123 (X);
	cc =R0==R3;
	if cc jump .L2204;
.L1408:
	R0 = P3;
	R1 = 8 (X);
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	B [SP+20] = R0;
.L1389:
	P1 = 280 (X);
	R0 = B [SP+20] (X);
	SP = SP + P1;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L2315:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1850;
	[P3+4] = R2;
	P1.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P0 = [P3+4];
	if cc jump .L1394;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P1 = P0;
	if cc jump .L1392 (bp);
.L1394:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	P1 = P0;
	R1 = -1 (X);
	jump.s .L1393;
.L2204:
	R0 = [P3+8];
	R7 = P1;
	cc =R0==R7;
	R2 = R0;
	if !cc jump 6 (bp); jump.l .L2318;
.L1412:
	P0 = P5 + P1;
	R2 = 123 (X);
	R1 = B [P0] (Z);
	cc =R1==R2;
	if cc jump .L1434;
.L1839:
	R3 = 0 (X);
	B [SP+20] = R3;
	jump.s .L1389;
.L2317:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1408;
	[P3+4] = R0;
	P1.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1409;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L1409;
	P1 = [P3+4];
	jump.s .L1406;
.L2383:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1839;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P1 = [P3+4];
	if cc jump .L1429;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump 6; jump.l .L1426;
.L1429:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P3+8] = R0;
	if cc jump .L1839;
	nop;
	P0 = P5 + P1;
	R1 = 123 (X);
	R0 = B [P0] (Z);
	cc =R0==R1;
	if !cc jump .L1839 (bp);
	R0 = 0 (X);
.L1434:
	P1 += 1;
	R7 = P1;
	cc =R7==R0;
	[P3+4] = P1;
	if !cc jump 6 (bp); jump.l .L2319;
.L1439:
	P0 = P5 + P1;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P0] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L1456:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L2320 (bp);
.L1442:
	R7 = P1;
	cc =R0==R7;
	if !cc jump 6 (bp); jump.l .L2321;
.L1455:
	P0 = P5 + P1;
	R3 = 125 (X);
	R1 = B [P0] (Z);
	cc =R1==R3;
	if !cc jump 6 (bp); jump.l .L1461;
.L1457:
	P0 = 212 (X);
	R7 = R7 -|- R7 ||
	[SP+48] = R4 ||
	nop;
	P0 = P0 + SP;
	R3 = 1 (X);
	[SP+44] = R7;
	B [SP+32] = R7;
	B [SP+42] = R7;
	R7 = P0;
	B [SP+41] = R3;
	R7 += 3;
	R3 = 0 (X);
	B [SP+43] = R3;
	B [SP+20] = R3;
	[SP+56] = R7;
.L1460:
	R1 = P1;
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L2322;
.L1465:
	P0 = P5 + P1;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P0] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L1476:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L2323 (bp);
.L1468:
	R7 = P1;
	cc =R7==R0;
	if !cc jump 4 (bp); jump.s .L2324;
	P0 = P5 + P1;
	R7 = 34 (X);
	R1 = B [P0] (Z);
	cc =R1==R7;
	if !cc jump .L1839 (bp);
.L1480:
	P0 = P1;
	P0 += 1;
	[P3+4] = P0;
.L1481:
	R7 = 0 (X);
	FP = R7;
	R5 = R0;
.L1483:
	R1 = P0;
	cc =R1==R5;
	if !cc jump 4 (bp); jump.s .L2325;
.L1484:
	P2 = P5 + P0;
	R7 = 31 (X);
	P0 += 1;
	R0 = B [P2] (X);
	R6 = R0.B (Z);
	cc =R6<=R7;
	[P3+4] = P0;
	if cc jump .L1839;
	R1 = 34 (X);
	cc =R6==R1;
	if cc jump .L1486;
	R2 = 92 (X);
	cc =R6==R2;
	if !cc jump 6 (bp); jump.l .L2326;
	R7 = 127 (X);
	cc =R6<=R7;
	if !cc jump 4; jump.s .L1532;
	R1 = -194 (X);
	R1 = R6 + R1;
	R2 = 29 (X);
	cc =R1<=R2 (iu);
	if !cc jump 6 (bp); jump.l .L2327;
	R1 = -224 (X);
	R1 = R6 + R1;
	R7 = 15 (X);
	cc =R1<=R7 (iu);
	if cc jump 6; jump.l .L1535;
	R6 = 15 (X);
	R3 = 2048 (X);
	R6 = R0 & R6;
	[SP+36] = R3;
	R5 = 1 (X);
.L1534:
	P4.H = 36845;
	R4 = 0 (X);
	P4.L = 1468;
	jump.s .L1538;
.L1536:
	P2 = P5 + P0;
	R0 = B [P2] (X);
	R1 = 192 (X);
	R1 = R0 & R1;
	R2 = 128 (X);
	P0 += 1;
	cc =R1==R2;
	[P3+4] = P0;
	if !cc jump .L1839;
	R1 = 63 (X);
	R0 = R0 & R1;
	R6 <<= 6;
	R6 = R6 | R0;
	cc =R5==0;
	R0 = R5;
	R0 += -1;
	if !cc jump 6 (bp); jump.l .L2328;
	R5 = R0;
.L1538:
	R1 = P0;
	R0 = [P3+8];
	cc =R0==R1;
	if !cc jump .L1536 (bp);
	R7 = B [P3+16] (X);
	R0 = R7.B (Z);
	cc =R0==0;
	if !cc jump .L1839;
	[P3+4] = R4;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1537;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1537;
	P0 = [P3+4];
	jump.s .L1536;
.L2323:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L1468;
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2329;
.L1469:
	P1 += 1;
	[P3+4] = P1;
.L1473:
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2330;
	nop;
	nop;
.L1474:
	P2 = P5 + P1;
	R1 = B [P2] (Z);
	jump.s .L1476;
.L2329:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1839;
	[P3+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P1 = [P3+4];
	if cc jump .L1472;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1469 (bp);
.L1472:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L1473;
.L2330:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1839;
	[P3+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1475;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1475;
	P1 = [P3+4];
	jump.s .L1474;
.L2320:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L1442;
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2331;
.L1443:
	P1 += 1;
	[P3+4] = P1;
.L1450:
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2332;
	nop;
	nop;
.L1452:
	P2 = P5 + P1;
	R1 = B [P2] (Z);
	jump.s .L1456;
.L2331:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1444;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P1 = [P3+4];
	if cc jump .L1449;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1443 (bp);
.L1449:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L1450;
.L2332:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2307;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1454;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1454;
	P1 = [P3+4];
	jump.s .L1452;
.L1486:
	R0 = [P3+8];
	R1 = P0;
	cc =R1==R0;
	R7 = FP;
	R2 = R0;
	if !cc jump 4 (bp); jump.s .L2333;
.L1545:
	P1 = P5 + P0;
	R6 = 19 (X);
	P4.H = 36845;
	R5.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R6, 23);
	P4.L = 1468;
	R5.L = __ZN12_GLOBAL__N_110read_chunkE;
.L1555:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if !cc jump 4; jump.s .L2334;
.L1548:
	R1 = P0;
	cc =R1==R0;
	if !cc jump 4 (bp); jump.s .L2335;
	P1 = P5 + P0;
	R1 = 58 (X);
	R0 = B [P1] (Z);
	cc =R0==R1;
	if !cc jump .L1839;
.L1559:
	P0 += 1;
	[P3+4] = P0;
.L1560:
	P0.H = .LC4+1;
	P0.L = .LC4+1;
	P1 = P0;
	R0 = 0 (X);
.L1562:
	R0 += 1;
	R1 = B [P1++] (X);
	cc =R1==0;
	if !cc jump .L1562 (bp);
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L2336;
.L1563:
	P0.H = .LC5+1;
	P0.L = .LC5+1;
	P1 = P0;
	R0 = 0 (X);
.L1593:
	R0 += 1;
	R1 = B [P1++] (X);
	cc =R1==0;
	if !cc jump .L1593 (bp);
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L2337;
.L1594:
	P0.H = .LC7+1;
	P0.L = .LC7+1;
	P1 = P0;
	R0 = 0 (X);
.L1624:
	R0 += 1;
	R1 = B [P1++] (X);
	cc =R1==0;
	if !cc jump .L1624 (bp);
	cc =R0==R7;
	if !cc jump .L1625;
	R7 = 109 (X);
	R1 = B [SP+76] (X);
	cc =R1==R7;
	if !cc jump .L1625;
	P1 = 76 (X);
	P4 = P1 + SP;
	P4 += 1;
	P1 = R0;
.L1626:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L2124;
	nop;
	nop;
	nop;
	P1 = [P3+4];
	R0 = [P3+8];
	P0.H = __ZN12_GLOBAL__N_112listed_countE;
	P0.L = __ZN12_GLOBAL__N_112listed_countE;
	R1 = P1;
	R3 = 0 (X);
	cc =R1==R0;
	[P0] = R3;
	R2 = R0;
	P0 = P1;
	if !cc jump 6 (bp); jump.l .L2338;
.L1830:
	P0 = P5 + P1;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P0] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L1648:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if !cc jump 4; jump.s .L2339;
.L1632:
	R7 = P1;
	cc =R0==R7;
	if !cc jump 6 (bp); jump.l .L2340;
.L1649:
	P0 = P5 + P1;
	R3 = 123 (X);
	R0 = B [P0] (Z);
	cc =R0==R3;
	if cc jump 6; jump.l .L1647;
	R2 = [P3+8];
	R7 = P1;
	cc =R2==R7;
	if !cc jump 6 (bp); jump.l .L2341;
.L1901:
	P0 = P5 + P1;
	R2 = 123 (X);
	R0 = B [P0] (Z);
	cc =R0==R2;
	if cc jump 4; jump.s .L1839;
.L1673:
	P1 += 1;
	[P3+4] = P1;
.L1674:
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R1 = 125 (X);
	R7 = 1 (X);
	cc =R0==R1;
	B [SP+41] = R7;
	if !cc jump .L1676 (bp);
	jump.l .L2409;
.L1681:
	R7 = P2;
	cc =R0==R7;
	if !cc jump 6 (bp); jump.l .L1683;
	P1 = P5 + P2;
	R3 = 58 (X);
	R0 = B [P1] (Z);
	cc =R0==R3;
	if cc jump 6 (bp); jump.l .L1896;
.L1700:
	P2 += 1;
	[P3+4] = P2;
.L1701:
	R7 = 14 (X);
	P2 = [SP+208];
	R1 = P2;
	R1 += -1;
	cc =R1<=R7 (iu);
	if cc jump 6 (bp); jump.l .L1703;
	R2 = -97 (X);
	R0 = 25 (X);
	R1 = B [SP+144] (X);
	R1 = R1 + R2;
	R1 = R1.B (Z);
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L1703;
	cc =P2==1;
	if cc jump .L1704;
	P0 = 144 (X);
	P1 = P0 + SP;
	P0 = P0 + SP;
	P1 += 1;
	P2 = P0 + P2;
	P2 -= P1;
.L1706:
	R3 = 25 (X);
	R0 = B [P1++] (X);
	R1 = R0 + R2;
	R1 = R1.B (Z);
	cc =R1<=R3 (iu);
	if cc jump .L1705 (bp);
	R1 = R0;
	R1 += -48;
	R1 = R1.B (Z);
	R7 = 9 (X);
	cc =R1<=R7 (iu);
	if cc jump .L1705 (bp);
	R0 = R0.B (X);
	R1 = 95 (X);
	cc =R0==R1;
	if cc jump 6 (bp); jump.l .L1703;
.L1705:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L1706;
.L1704:
	R0 = 0 (X);
	B [SP+62] = R0;
	B [SP+63] = R0;
	B [SP+64] = R0;
	B [SP+65] = R0;
	B [SP+66] = R0;
	B [SP+67] = R0;
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R2 = 123 (X);
	cc =R0==R2;
	if !cc jump 6 (bp); jump.l .L2343;
	R0 = P3;
	R1 = 8 (X);
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4; jump.s .L1839;
.L1708:
	R3 = 0 (X);
	R1 = 0 (X);
	R6 = 0 (X);
.L1748:
	P0.H = __ZN12_GLOBAL__N_112listed_countE;
	P0.L = __ZN12_GLOBAL__N_112listed_countE;
	P1 = [P0];
	P2 = [SP+208];
	R0 = P1;
	I0 = P1;
	cc =R0==0;
	P1.H = __ZN12_GLOBAL__N_16listedE;
	I1 = P2;
	P1.L = __ZN12_GLOBAL__N_16listedE;
	if cc jump .L1749;
	R2 = P2;
	cc =R2==0;
	R2 = CC;
	R7 = B [SP+144] (X);
	P0 = P1;
	R0 = 0 (X);
	I3 = R2;
	I2 = R7;
	FP = I0;
	R5 = P2;
	R4 = P3;
	I1 = P1;
	LSETUP (.L1754, .L2414) LC1 = FP;
.L1754:
	R2 = B [P0+15] (Z);
	cc =R2==R5;
	if !cc jump 6 (bp); jump.l .L2344;
.L1750:
	R0 += 1;
.L2414:
	P0 += 20;
	R7 = I0;
	R0 = 256 (X);
	cc =R7==R0;
	P1 = I1;
	P3 = R4;
	I1 = R5;
	if !cc jump 6 (bp); jump.l .L2345;
.L1749:
	R0 = I0;
	P0.H = __ZN12_GLOBAL__N_112listed_countE;
	R0 += 1;
	P0.L = __ZN12_GLOBAL__N_112listed_countE;
	[P0] = R0;
	R0 = I1;
	cc =R0==0;
	if !cc jump 6 (bp); jump.l .L2346;
	R2 = I0;
	R2 <<= 2;
	P2 = R2;
	P0 = 144 (X);
	FP = SP + P0;
	P0 = I0;
	P2 = (P2 + P0) << 2;
	P2 = P1 + P2;
	P0 = I1;
	LSETUP (.L1759, .L2413) LC1 = P0;
.L1759:
	R0 = B [FP++] (X);
.L2413:
	B [P2++] = R0;
.L1758:
	P2 = R2;
	P0 = I0;
	R0 = I1;
	P2 = (P2 + P0) << 2;
	P2 = P1 + P2;
	B [P2+15] = R0;
	R0 = I0;
.L1756:
	R2 = R0 << 2;
	P2 = R2;
	P0 = R0;
	P2 = (P2 + P0) << 2;
	P2 = P1 + P2;
	B [P2+19] = R1;
	R1 = 255 (X);
	cc =R6<=R1 (iu);
	B [P2+18] = R3;
	if cc jump .L1760 (bp);
	R6 = 256 (X);
.L1760:
	R0 = (R0 + R2) << 2;
	P0 = R0;
	P1 = P1 + P0;
	W [P1+16] = R6;
.L1707:
	P0 = [P3+4];
	R0 = [P3+8];
	R1 = R0;
	R2 = P0;
	cc =R2==R0;
	P2 = P0;
	if !cc jump 6 (bp); jump.l .L2347;
.L1761:
	P0 = P5 + P0;
	R7 = 19 (X);
	FP.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P0] (Z);
	BITSET (R7, 23);
	FP.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L1777:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if !cc jump 6; jump.l .L2348;
.L1764:
	R7 = P2;
	cc =R0==R7;
	if !cc jump 6 (bp); jump.l .L2349;
	P1 = P5 + P2;
	R7 = B [P1] (Z);
.L1783:
	P2 += 1;
	[P3+4] = P2;
.L1784:
	R0 = 125 (X);
	cc =R7==R0;
	if !cc jump 6 (bp); jump.l .L1891;
	R1 = 44 (X);
	cc =R7==R1;
	if cc jump 6 (bp); jump.l .L1896;
.L1676:
	P0 = 144 (X);
	P0 = P0 + SP;
	R1 = P0;
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser6stringERNS_4TextE;
	R5 = R0.B (Z);
	cc =R5==0;
	B [SP+32] = R0;
	if !cc jump 6 (bp); jump.l .L1677;
	P0 = [P3+4];
	R0 = [P3+8];
	R1 = R0;
	R2 = P0;
	cc =R2==R0;
	P2 = P0;
	if !cc jump 6 (bp); jump.l .L2350;
.L1678:
	P0 = P5 + P0;
	R7 = 19 (X);
	FP.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P0] (Z);
	BITSET (R7, 23);
	FP.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L1696:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if !cc jump .L1681 (bp);
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L1681;
	R1 = P2;
	cc =R1==R0;
	if !cc jump 6 (bp); jump.l .L2351;
.L1682:
	P2 += 1;
	[P3+4] = P2;
.L1689:
	R1 = P2;
	cc =R1==R0;
	if !cc jump 6 (bp); jump.l .L2352;
.L1691:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L1696;
.L2124:
	R1 = B [P4++] (X);
	R0 = B [P0++] (X);
	cc =R1==R0;
	if cc jump .L1626 (bp);
.L1625:
	R1 = 8 (X);
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R5 = R0.B (Z);
.L1618:
	cc =R5==0;
	if !cc jump 4 (bp); jump.s .L1839;
.L2310:
	nop;
	P0 = [P3+4];
.L1592:
	R0 = [P3+8];
	R1 = P0;
	cc =R1==R0;
	P1 = P0;
	R2 = R0;
	if !cc jump 4 (bp); jump.s .L2353;
.L1786:
	P0 = P5 + P1;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P0] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L1798:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L2354 (bp);
.L1789:
	R7 = P1;
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L2355;
	P0 = P5 + P1;
	R7 = B [P0] (Z);
.L1802:
	P1 += 1;
	[P3+4] = P1;
.L1803:
	R3 = 125 (X);
	cc =R7==R3;
	if !cc jump 4 (bp); jump.s .L1805;
	R0 = 44 (X);
	cc =R7==R0;
	if cc jump 4 (bp); jump.s .L1839;
	P1 = [P3+4];
	R0 = [P3+8];
	jump.s .L1460;
.L2334:
	R3 = R6;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if cc jump 4 (bp); jump.s .L1548;
	R1 = P0;
	cc =R1==R0;
	if cc jump .L2356;
.L1549:
	P0 += 1;
	[P3+4] = P0;
.L1552:
	R1 = P0;
	cc =R1==R0;
	if cc jump .L2357;
	nop;
	nop;
.L1553:
	P2 = P5 + P0;
	R1 = B [P2] (Z);
	jump.s .L1555;
.L2354:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L1789;
	R1 = P1;
	cc =R1==R0;
	if cc jump .L2358;
.L1790:
	P1 += 1;
	[P3+4] = P1;
.L1794:
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2359;
	nop;
	nop;
.L1795:
	P2 = P5 + P1;
	R1 = B [P2] (Z);
	jump.s .L1798;
.L2356:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1839;
	[P3+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = R5;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P0 = [P3+4];
	if cc jump .L1551;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1549 (bp);
.L1551:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L1552;
.L2357:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1839;
	[P3+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = R5;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1554;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1554;
	P0 = [P3+4];
	jump.s .L1553;
.L2359:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1796;
	[P3+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1797;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1797;
	P1 = [P3+4];
	jump.s .L1795;
.L2358:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1791;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P1 = [P3+4];
	if cc jump .L1793;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1790 (bp);
.L1793:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L1794;
.L2339:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if cc jump 4 (bp); jump.s .L1632;
	R1 = P1;
	cc =R1==R0;
	if cc jump .L2360;
.L1633:
	P1 += 1;
	[P3+4] = P1;
.L1640:
	R1 = P1;
	cc =R1==R0;
	if cc jump .L2361;
	nop;
	nop;
.L1642:
	P2 = P5 + P1;
	R1 = B [P2] (Z);
	jump.s .L1648;
.L2360:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1634;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P1 = [P3+4];
	if cc jump .L1639;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1633 (bp);
.L1639:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L1640;
.L2361:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1647;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P1 = [P3+4];
	if cc jump .L1645;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1642 (bp);
.L1645:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P3+8] = R0;
	if !cc jump 4 (bp); jump.s .L1647;
	P0 = P5 + P1;
	R2 = 123 (X);
	R0 = B [P0] (Z);
	cc =R0==R2;
	if cc jump 4; jump.s .L1647;
	R0 = 0 (X);
.L1658:
	R7 = P1;
	cc =R0==R7;
	if cc jump 4 (bp); jump.s .L1901;
	R1 = B [P3+16] (Z);
.L1660:
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1839;
	R7 = 0 (X);
	[P3+4] = R7;
	P4.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P4.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1671;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1671;
	R3 = 123 (X);
	P1 = [P3+4];
	P0 = P5 + P1;
	R1 = B [P0] (Z);
	cc =R1==R3;
	if cc jump 4 (bp); jump.s .L1839;
	R1 = P1;
	cc =R0==R1;
	if cc jump 4 (bp); jump.s .L1673;
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1674;
	[P3+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1675;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1675;
	P1 = [P3+4];
	jump.s .L1673;
.L1532:
	R2 = 127 (X);
	cc =R6<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2362;
.L1492:
	B [SP+212] = R0;
	R2 = FP;
	R1 = 1 (X);
	P0 = [P3+4];
	R5 = [P3+8];
.L1540:
	P1 = R1;
	P4 = R2;
	R0 = R2;
	R3 = P3;
	R7 = P0;
	FP = P1 + FP;
	P2 = FP;
	P2 -= P4;
	LSETUP (.L1544, .L2412) LC1 = P2;
.L1544:
	R1 = 63 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L1543 (bp);
	P1 = R0;
	P0 = 76 (X);
	P0 = P0 + SP;
	R1 = R0 - R2;
	P3 = 212 (X);
	P4 = P0 + P1;
	P0 = R1;
	P3 = P3 + SP;
	P1 = P3 + P0;
	R1 = B [P1] (X);
	B [P4] = R1;
.L1543:
.L2412:
	R0 += 1;
	P3 = R3;
	P0 = R7;
	jump.s .L1483;
.L2325:
	R6 = B [P3+16] (X);
	R0 = R6.B (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1839;
	[P3+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1557;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1557;
	P0 = [P3+4];
	jump.s .L1484;
.L2322:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1466;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1467;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1467;
	P1 = [P3+4];
	jump.s .L1465;
.L2333:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1546;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1547;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1547;
	P0 = [P3+4];
	jump.s .L1545;
.L2324:
	R7 = B [P3+16] (X);
	R0 = R7.B (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1839;
	R6 = 0 (X);
	[P3+4] = R6;
	P4.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R1 = 1 (X);
	P4.L = 1468;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	R2 = ROT R0 BY 0 ||
	[P3+8] = R0 ||
	nop;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1478;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L1478;
	R3 = 34 (X);
	R0 = [P3+4];
	P0 = R0;
	P1 = P5 + P0;
	R1 = B [P1] (Z);
	cc =R1==R3;
	if cc jump 4; jump.s .L1839;
	cc =R2==R0;
	if cc jump 6 (bp); jump.l .L1851;
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1481;
	[P3+4] = R6;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1482;
	R7 = 1 (X);
	R7 <<= 16;
	cc =R1<=R7 (iu);
	if cc jump 6 (bp); jump.l .L1482;
	P1 = [P3+4];
	jump.s .L1480;
.L2336:
	R1 = B [SP+76] (X);
	R3 = 118 (X);
	cc =R1==R3;
	if cc jump 4 (bp); jump.s .L1563;
	P1 = 76 (X);
	P4 = P1 + SP;
	P4 += 1;
	P1 = R0;
.L1564:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L2126;
	nop;
	nop;
	nop;
	P1 = [P3+4];
	R0 = [P3+8];
	R2 = R0;
	R3 = P1;
	cc =R3==R0;
	P0 = P1;
	if !cc jump 4 (bp); jump.s .L2363;
.L1826:
	P0 = P5 + P1;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P0] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L1583:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L2364 (bp);
.L1570:
	R7 = P1;
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L2365;
.L1582:
	P1 = P5 + P1;
	R3 = 45 (X);
	R0 = B [P1] (Z);
	cc =R0==R3;
	if cc jump .L1586;
	R0 += -48;
	R7 = 9 (X);
	cc =R0<=R7 (iu);
	if cc jump 4 (bp); jump.s .L1584;
.L1586:
	P0 = 212 (X);
	P0 = P0 + SP;
	R1 = P0;
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser6numberERNS_6NumberE;
	B [SP+20] = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L1389;
	R3 = B [SP+212] (X);
	R0 = R3.B (Z);
	R7 = [SP+216];
	cc =R0==0;
	B [SP+20] = R3;
	[SP+44] = R7;
	if !cc jump 4; jump.s .L2310;
	R0 = B [SP+213] (Z);
	cc =R0==0;
	if cc jump 6; jump.l .L1590;
	R3 = [SP+44];
	cc =R3==0;
	R4 = CC;
	BITTGL (R4, 0);
	B [SP+20] = R4;
	P0 = [P3+4];
	jump.s .L1592;
.L2126:
	R1 = B [P4++] (X);
	R0 = B [P0++] (X);
	cc =R1==R0;
	if cc jump .L1564 (bp);
	jump.s .L1563;
.L2364:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L1570;
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2366;
.L1571:
	P1 += 1;
	[P3+4] = P1;
.L1577:
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2367;
	nop;
	nop;
.L1579:
	P2 = P5 + P1;
	R1 = B [P2] (Z);
	jump.s .L1583;
.L2366:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1572;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L2368;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	P1 = [P3+4];
	R2 = P1;
	if cc jump .L1571 (bp);
.L1576:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	P1 = R2;
	jump.s .L1577;
.L2367:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1584;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1581;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1581;
	P1 = [P3+4];
	jump.s .L1579;
.L2335:
	R6 = B [P3+16] (X);
	R0 = R6.B (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1839;
	R5 = 0 (X);
	[P3+4] = R5;
	P4.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P4.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1557;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1557;
	R2 = 58 (X);
	P0 = [P3+4];
	P1 = P5 + P0;
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump 4 (bp); jump.s .L1839;
	R3 = P0;
	cc =R0==R3;
	if cc jump 4 (bp); jump.s .L1559;
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1560;
	[P3+4] = R5;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1561;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L1561;
	P0 = [P3+4];
	jump.s .L1559;
.L2353:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1787;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1788;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1788;
	P1 = [P3+4];
	jump.s .L1786;
.L1805:
	R0 = B [SP+20] (Z);
	cc =R0==0;
	R4 = [SP+48];
	if cc jump .L1464;
	R3 = [SP+44];
	cc =R3<=1 (iu);
	if !cc jump 4 (bp); jump.s .L1806;
	R0 = 1 (X);
	P0 = [SP+324];
	B [P0] = R0;
	jump.s .L1389;
.L2355:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1791;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1800;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1800;
	P1 = [P3+4];
	R3 = P1;
	P0 = P5 + P1;
	cc =R0==R3;
	R7 = B [P0] (Z);
	if cc jump 4 (bp); jump.s .L1802;
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1803;
.L1848:
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1804;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L1804;
	P1 = [P3+4];
	jump.s .L1802;
.L2337:
	R1 = B [SP+76] (X);
	R2 = 112 (X);
	cc =R1==R2;
	if cc jump 4 (bp); jump.s .L1594;
	P1 = 76 (X);
	P4 = P1 + SP;
	P4 += 1;
	P1 = R0;
.L1595:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L2125;
	nop;
	nop;
	nop;
	P1 = [P3+4];
	R0 = [P3+8];
	R2 = R0;
	R7 = P1;
	cc =R7==R0;
	P0 = P1;
	if !cc jump 6 (bp); jump.l .L2369;
.L1828:
	P0 = P5 + P1;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P0] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L1615:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L2370 (bp);
.L1601:
	R7 = P1;
	cc =R7==R0;
	if !cc jump 4 (bp); jump.s .L2371;
.L1613:
	P1 = P5 + P1;
	R3 = 34 (X);
	R0 = B [P1] (Z);
	cc =R0==R3;
	if !cc jump .L1614 (bp);
	P0 = 212 (X);
	P0 = P0 + SP;
	R1 = P0;
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser6stringERNS_4TextE;
	B [SP+42] = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 6; jump.l .L1619;
	P0.H = .LC6+1;
	P0.L = .LC6+1;
	P1 = P0;
	R0 = 0 (X);
.L1620:
	R0 += 1;
	R1 = B [P1++] (X);
	cc =R1==0;
	if !cc jump .L1620 (bp);
	R1 = [SP+276];
	cc =R0==R1;
	if !cc jump 6 (bp); jump.l .L2372;
.L1874:
	R7 = 0 (X);
	B [SP+43] = R7;
	P0 = [P3+4];
	jump.s .L1592;
.L2125:
	R1 = B [P4++] (X);
	R0 = B [P0++] (X);
	cc =R1==R0;
	if cc jump .L1595 (bp);
	jump.s .L1594;
.L2370:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L1601;
	R1 = P1;
	cc =R1==R0;
	if cc jump .L2373;
.L1602:
	P1 += 1;
	[P3+4] = P1;
.L1608:
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2374;
	nop;
	nop;
.L1610:
	P2 = P5 + P1;
	R1 = B [P2] (Z);
	jump.s .L1615;
.L2373:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1603;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L2375;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P1 = [P3+4];
	P0 = P1;
	if cc jump .L1602 (bp);
.L1607:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	P1 = P0;
	jump.s .L1608;
.L2374:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1614;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L2376;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P1 = [P3+4];
	P0 = P1;
	if cc jump .L1610 (bp);
.L1612:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P0==0;
	R0 = 0 (X);
	[P3+8] = R0;
	P1 = P0;
	if !cc jump .L1613 (bp);
.L1614:
	R0 = P3;
	R1 = 8 (X);
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R7 = 0 (X);
	B [SP+42] = R7;
	R5 = R0.B (Z);
	jump.s .L1618;
.L2321:
	R1 = B [P3+16] (Z);
.L1444:
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2307;
	R7 = 0 (X);
	[P3+4] = R7;
	P4.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P4.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L2377;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P1 = [P3+4];
	P0 = P1;
	if cc jump 6 (bp); jump.l .L1458;
	P0 = P5 + P1;
	R2 = 125 (X);
	R1 = B [P0] (Z);
	cc =R1==R2;
	if cc jump 6; jump.l .L1457;
	R3 = P1;
	cc =R0==R3;
	if !cc jump .L1461;
	nop;
	nop;
	nop;
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1464;
	[P3+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1463;
	R7 = 1 (X);
	R7 <<= 16;
	cc =R1<=R7 (iu);
	if cc jump 6 (bp); jump.l .L1463;
	P1 = [P3+4];
.L1461:
	P1 += 1;
	[P3+4] = P1;
.L1464:
	R7 = 1 (X);
	B [SP+20] = R7;
	jump.l .L1389;
.L2326:
	R5 = [P3+8];
	R3 = P0;
	cc =R3==R5;
	if !cc jump 4 (bp); jump.s .L2378;
.L1488:
	P2 = P5 + P0;
	R2 = 117 (X);
	P0 += 1;
	R0 = B [P2] (X);
	R1 = R0.B (Z);
	cc =R1==R2;
	[P3+4] = P0;
	if !cc jump 4 (bp); jump.s .L1853;
	R3 = 98 (X);
	cc =R1==R3;
	if !cc jump 6 (bp); jump.l .L1860;
	cc =R1<=R3 (iu);
	if cc jump .L2379;
	R7 = 110 (X);
	cc =R1==R7;
	if !cc jump 4 (bp); jump.s .L1864;
	cc =R1<=R7 (iu);
	if cc jump .L2380;
	R2 = 114 (X);
	cc =R1==R2;
	if !cc jump 4 (bp); jump.s .L1866;
	R3 = 116 (X);
	cc =R1==R3;
	if cc jump 6 (bp); jump.l .L1839;
	R0 = 9 (X);
	jump.s .L1492;
.L2380:
	R0 = 102 (X);
	cc =R1==R0;
	if cc jump 6 (bp); jump.l .L1839;
	R0 = 12 (X);
	jump.s .L1492;
.L2379:
	R7 = 47 (X);
	cc =R1==R7;
	if !cc jump 4 (bp); jump.s .L1492;
	R2 = 92 (X);
	cc =R1==R2;
	if !cc jump 4 (bp); jump.s .L1492;
	R3 = 34 (X);
	cc =R1==R3;
	if cc jump 6; jump.l .L1839;
	jump.s .L1492;
.L2318:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1413;
	R0 = 0 (X);
	[P3+4] = R0;
	P4.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R1 = 1 (X);
	P4.L = 1468;
	R2 = 4096 (X);
	R0 = P5;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1414;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1414;
	R7 = 19 (X);
	BITSET (R7, 23);
	R6 = P5;
	P1 = [P3+4];
	P0 = P5 + P1;
	R1 = B [P0] (Z);
.L1415:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L2381 (bp);
.L1416:
	R7 = P1;
	cc =R0==R7;
	if cc jump 6 (bp); jump.l .L1412;
	R1 = B [P3+16] (Z);
.L1418:
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1839;
	R7 = 0 (X);
	[P3+4] = R7;
	P4.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P4.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1671;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1671;
	R3 = 123 (X);
	P0 = [P3+4];
	P2 = P5 + P0;
	R1 = B [P2] (Z);
	cc =R1==R3;
	P1 = P0;
	if cc jump 6; jump.l .L1839;
	R1 = P0;
	cc =R0==R1;
	if cc jump 6 (bp); jump.l .L1434;
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if !cc jump .L1435;
	[P3+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P0 = [P3+4];
	if cc jump .L1438;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P1 = P0;
	if !cc jump 6; jump.l .L1434;
.L1438:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P0==0;
	R0 = 0 (X);
	[P3+8] = R0;
	P1 = P0;
	if cc jump 6; jump.l .L1439;
.L1435:
	R0 = [P3+8];
	P1 = P0;
	jump.l .L1442;
.L2381:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L1416;
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2382;
.L1417:
	P1 += 1;
	[P3+4] = P1;
.L1424:
	R1 = P1;
	cc =R0==R1;
	if !cc jump 6 (bp); jump.l .L2383;
.L1426:
	P2 = P5 + P1;
	R1 = B [P2] (Z);
	jump.s .L1415;
.L2382:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if !cc jump .L1418;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P1 = [P3+4];
	if cc jump .L1423;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1417 (bp);
.L1423:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L1424;
.L2327:
	R6 = 31 (X);
	R3 = 128 (X);
	R6 = R0 & R6;
	[SP+36] = R3;
	R5 = 0 (X);
	jump.l .L1534;
.L2328:
	R3 = [SP+36];
	cc =R6<R3 (iu);
	if !cc jump 6 (bp); jump.l .L1839;
	R7 = 65535 (Z);
	BITSET (R7, 20);
	cc =R6<=R7 (iu);
	if cc jump 6 (bp); jump.l .L1839;
	R0 = -27 (X);
	R0 <<= 11;
	R0 = R6 + R0;
	R1 = 2047 (X);
	cc =R0<=R1 (iu);
	if !cc jump 6 (bp); jump.l .L1839;
.L1539:
	R3 = 2047 (X);
	cc =R6<=R3 (iu);
	if !cc jump 6 (bp); jump.l .L1869;
	P0 = [P3+4];
	R5 = [P3+8];
.L1849:
	R7 = 1 (X);
	R7 <<= 16;
	cc =R6<R7 (iu);
	R1 = 1 (X);
	P2 = 2 (X);
	if cc P2 = R1;
	R0 = 18 (X);
	cc =R6<R7 (iu);
	R1 = 12 (X);
	if !cc R1 = R0;
	R3 = -16 (X);
	cc =R6<R7 (iu);
	R0 = -32 (X);
	R2 = FP;
	if !cc R0 = R3;
.L1541:
	R3 = R6;
	R3 >>= R1;
	P1 = P2 + (P2 << 1);
	P4 = 212 (X);
	R0 = R3 | R0;
	R1 = P1;
	P1 = P4 + SP;
	B [SP+212] = R0;
	R1 <<= 1;
	P1 += 1;
	R7 = 63 (X);
	R3 = -128 (X);
.L1542:
	R0 = R6;
	R0 >>= R1;
	R0 = R0 & R7;
	R0 = R0 | R3;
	B [P1++] = R0;
	R1 += -6;
	R0 = -6 (X);
	cc =R1==R0;
	if !cc jump .L1542 (bp);
	R1 = P2;
	R1 += 2;
	jump.s .L1540;
.L1535:
	R1 = -240 (X);
	R6 = R6 + R1;
	cc =R6<=4 (iu);
	if cc jump 6 (bp); jump.l .L1839;
	R7 = 1 (X);
	R6 = 7 (X);
	R7 <<= 16;
	R6 = R0 & R6;
	[SP+36] = R7;
	R5 = 2 (X);
	jump.l .L1534;
.L1475:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P1 = [P3+4] ||
	nop;
	[P3+8] = R0;
	jump.l .L1468;
.L2362:
	R2 = FP;
	P2 = 0 (X);
	R1 = 6 (X);
	R0 = -64 (X);
	R5 = [P3+8];
	jump.s .L1541;
.L1554:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P3+4] ||
	nop;
	[P3+8] = R0;
	jump.l .L1548;
.L1806:
	R0 = B [SP+41] (Z);
	cc =R0==0;
	if cc jump .L1464;
	P1.H = __ZN12_GLOBAL__N_112listed_countE;
	P1.L = __ZN12_GLOBAL__N_112listed_countE;
	P2 = [P1];
	cc =P2==0;
	if cc jump .L1807;
	P0.H = __ZN12_GLOBAL__N_16listedE;
	P0.L = __ZN12_GLOBAL__N_16listedE;
	P1 = P2;
	LSETUP (.L1808, .L2411) LC1 = P1;
.L1808:
	R0 = B [P0+19] (Z);
	cc =R0==0;
	if cc jump .L1464;
.L2411:
	P0 += 20;
.L1807:
	R0 = B [SP+42] (Z);
	cc =R0==0;
	if cc jump .L1464;
	R3 = B [SP+32] (X);
	cc = !BITTST (R3,0);
	if cc jump .L1464;
	R0 = 1 (X);
	P0 = [SP+324];
	R3 = B [SP+43] (X);
	B [P0] = R0;
	P0 = [SP+320];
	R0 = R3.B (Z);
	cc =R0==0;
	B [P0] = R3;
	if cc jump .L1464 (bp);
	R0 = -2 (X);
	P0 = [SP+24];
	P1 = R4;
.L1810:
	[P1++] = R0;
	cc =P0==P1;
	if !cc jump .L1810 (bp);
	R0 = -2 (X);
	P0 = [SP+28];
	P1 = [SP+16];
.L1811:
	[P1++] = R0;
	cc =P0==P1;
	if !cc jump .L1811 (bp);
	cc =P2==0;
	if cc jump .L1464;
	P2 = P2 + (P2 << 2);
	P2 = P2 << 2;
	R0 = P2;
	R0 += -20;
	R1.H = 3276;
	R1.L = 52429;
	R0 >>= 2;
	R0 *= R1;
	R1 = -1 (X);
	R1.H = 16383;
	R0 = R0 & R1;
	P2 = R0;
	P0.H = __ZN12_GLOBAL__N_16listedE;
	R6.H = _sdk_companion_machines;
	P0.L = __ZN12_GLOBAL__N_16listedE;
	R6.L = _sdk_companion_machines;
	P2 += 1;
	R4 = 18 (X);
	R5 = 0 (X);
	R7 = P2;
	LC1 = R7;
	LSETUP (.L1822, .L2410) LC1;
.L1822:
	R2 = B [P0+18] (Z);
	R0 = W [P0+16] (Z);
	cc =R2==0;
	P5 = R0;
	if !cc jump 4; jump.s .L2384;
	P1 = 62 (X);
	cc =P5<=P1 (iu);
	if !cc jump .L1835 (bp);
	P1.H = __ZN12_GLOBAL__N_110effect_mapE;
	P1.L = __ZN12_GLOBAL__N_110effect_mapE;
	P5 = P1 + (P5 << 2);
	R0 = [P5];
	cc =R0==-2;
	if !cc jump 6 (bp); jump.l .L1814;
	R0 = 0 (X);
.L1815:
	[P5] = R0;
.L1835:
.L2410:
	P0 += 20;
	jump.s .L1464;
.L1797:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P1 = [P3+4] ||
	nop;
	[P3+8] = R0;
	jump.s .L1789;
.L2378:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1839;
	[P3+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1489;
	R7 = 1 (X);
	R7 <<= 16;
	cc =R1<=R7 (iu);
	if cc jump 6 (bp); jump.l .L1489;
	P0 = [P3+4];
	jump.s .L1488;
.L1866:
	R0 = 13 (X);
	jump.s .L1492;
.L1650:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
.L1647:
	R0 = P3;
	R1 = 8 (X);
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R7 = 1 (X);
	R3 = 0 (X);
	B [SP+41] = R7;
	B [SP+32] = R3;
	R5 = R0.B (Z);
	jump.s .L1618;
.L1585:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
.L1584:
	R1 = 8 (X);
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 6; jump.l .L1839;
.L1871:
	R3 = 0 (X);
	B [SP+20] = R3;
	P0 = [P3+4];
	jump.s .L1592;
.L2371:
	R1 = B [P3+16] (Z);
.L1603:
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1614;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1616;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L1616;
	P1 = [P3+4];
	jump.s .L1613;
.L2365:
	R1 = B [P3+16] (Z);
.L1572:
	cc =R1==0;
	if !cc jump .L1584;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if cc jump .L1585;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if !cc jump .L1585;
	nop;
	nop;
	nop;
	P1 = [P3+4];
	jump.s .L1582;
.L2348:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if cc jump 6 (bp); jump.l .L1764;
	R1 = P2;
	cc =R0==R1;
	if cc jump .L2385;
.L1765:
	P2 += 1;
	[P3+4] = P2;
.L1772:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L2386;
	nop;
	nop;
.L1774:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.l .L1777;
.L2352:
	R5 = B [P3+16] (Z);
	cc =R5==0;
	if cc jump 6 (bp); jump.l .L1839;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (FP);
	P2 = [P3+4];
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P0 = P2;
	if cc jump .L1694;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump 6; jump.l .L1691;
.L1694:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P0==0;
	R0 = 0 (X);
	[P3+8] = R0;
	if cc jump .L1677;
	nop;
	P0 = P5 + P0;
	R7 = 58 (X);
	R0 = B [P0] (Z);
	cc =R0==R7;
	if !cc jump 6; jump.l .L1700;
.L1677:
	R3 = 1 (X);
	B [SP+32] = R3;
	jump.l .L1618;
.L2351:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1683;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (FP);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P2 = [P3+4];
	if cc jump .L1688;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump 6; jump.l .L1682;
.L1688:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1689;
.L2386:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2387;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (FP);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1776;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1776;
	P2 = [P3+4];
	jump.s .L1774;
.L2385:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1766;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (FP);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P2 = [P3+4];
	if cc jump .L1771;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L1765 (bp);
.L1771:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L1772;
.L2344:
	R2 = I3;
	CC = R2;
	if cc jump .L2297;
	nop;
	nop;
	R7 = I2;
	R2 = B [P0] (X);
	cc =R2==R7;
	if cc jump 6 (bp); jump.l .L1750;
	P1 = 144 (X);
	P3 = P1 + SP;
	P1 = P0;
	P3 += 1;
	P1 += 1;
	P2 = R5;
.L1752:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L2120;
.L2297:
	R2 = I0;
	cc =R2==R0;
	P1 = I1;
	P3 = R4;
	I1 = R5;
	if cc jump 6; jump.l .L1756;
	I0 = R0;
	jump.l .L1749;
.L2120:
	R7 = B [P1++] (X);
	R2 = B [P3++] (X);
	cc =R7==R2;
	if cc jump .L1752 (bp);
	jump.l .L1750;
.L1703:
	R1 = 8 (X);
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R5 = R0.B (Z);
	cc =R5==0;
	if !cc jump 4 (bp); jump.s .L2388;
	R7 = 0 (X);
	B [SP+41] = R7;
	jump.l .L1707;
.L2319:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	P0 = P1;
	if cc jump 4 (bp); jump.s .L1435;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 6 (bp); jump.l .L1441;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1441;
	P1 = [P3+4];
	jump.l .L1439;
.L2338:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1629;
	[P3+4] = R3;
	P1.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1630;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1630;
	P1 = [P3+4];
	jump.l .L1830;
.L2349:
	R0 = B [P3+16] (Z);
.L1766:
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1896;
	R0 = 0 (X);
	[P3+4] = R0;
	P2.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P0 = [P3+4];
	if !cc jump 4 (bp); jump.s .L1779;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = P0;
	if cc jump 4 (bp); jump.s .L1779;
	R1 = P0;
	P1 = P5 + P0;
	cc =R0==R1;
	R7 = B [P1] (Z);
	if cc jump 6 (bp); jump.l .L1783;
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1784;
.L1847:
	R0 = 0 (X);
	[P3+4] = R0;
	P2.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1785;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1785;
	P2 = [P3+4];
	jump.l .L1783;
.L1683:
	R5 = B [P3+16] (Z);
	cc =R5==0;
	if cc jump 4 (bp); jump.s .L1896;
	R7 = 0 (X);
	[P3+4] = R7;
	FP.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	FP.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (FP);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1671;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1671;
	R3 = 58 (X);
	P2 = [P3+4];
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	cc =R1==R3;
	if !cc jump .L1677;
	R1 = P2;
	cc =R1==R0;
	if cc jump 6 (bp); jump.l .L1700;
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1701;
	[P3+4] = R7;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (FP);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1702;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1702;
	P2 = [P3+4];
	jump.l .L1700;
.L2347:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L1762;
	[P3+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1763;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if cc jump 4 (bp); jump.s .L1763;
	P0 = [P3+4];
	P2 = P0;
	jump.l .L1761;
.L2350:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1679;
	[P3+4] = R0;
	P2.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	P0 = [P3+4];
	if cc jump .L1680;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	P2 = P0;
	if !cc jump 6; jump.l .L1678;
.L1680:
	R7 = 1 (X);
	R7 <<= 16;
	R0 = 1 (X);
	cc =R1<=R7 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	R1 = 0 (X);
.L1679:
	P2 = P0;
	R0 = R1;
	jump.l .L1681;
.L2363:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1567;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1568;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1568;
	P1 = [P3+4];
	jump.s .L1826;
.L2340:
	R1 = B [P3+16] (Z);
.L1634:
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1647;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1650;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L1650;
	P1 = [P3+4];
	jump.l .L1649;
.L1864:
	R0 = 10 (X);
	jump.l .L1492;
.L1853:
	R0 = [P3+8];
	R1 = P0;
	P4.H = 36845;
	R4.H = __ZN12_GLOBAL__N_110read_chunkE;
	cc =R0==R1;
	R7 = 4 (X);
	R6 = 0 (X);
	P4.L = 1468;
	R4.L = __ZN12_GLOBAL__N_110read_chunkE;
	R5 = -97 (X);
	if cc jump .L2389;
.L1496:
	P2 = P5 + P0;
	R2 = 9 (X);
	P0 += 1;
	R0 = B [P2] (Z);
	R1 = R0;
	R1 += -48;
	cc =R1<=R2 (iu);
	[P3+4] = P0;
	if !cc jump .L1499 (bp);
	R0 = R1;
.L1500:
	R7 += -1;
	R6 <<= 4;
	cc =R7==0;
	R6 = R6 | R0;
	if cc jump .L1502;
	nop;
	nop;
	nop;
	P0 = [P3+4];
	R0 = [P3+8];
	R1 = P0;
	cc =R0==R1;
	if !cc jump .L1496 (bp);
.L2389:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1839;
	[P3+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0 = R4;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1498;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1498;
	P0 = [P3+4];
	jump.s .L1496;
.L1499:
	R1 = R0 + R5;
	cc =R1<=5 (iu);
	if !cc jump .L1501 (bp);
	R1 = -87 (X);
	R0 = R0 + R1;
	jump.s .L1500;
.L1502:
	R7 = -27 (X);
	R7 <<= 11;
	R7 = R6 + R7;
	R3 = 1023 (X);
	cc =R7<=R3 (iu);
	if !cc jump .L1503;
	nop;
	FP += 3;
.L1531:
	R4 = FP;
	P0 = [P3+4];
	R1 = [P3+8];
	R4 += -3;
	R5 = R1;
	R0 = P0;
	cc =R0==R1;
	if cc jump .L2390;
	nop;
	P2 = P5 + P0;
	R2 = 92 (X);
	R0 = B [P2] (Z);
	cc =R0==R2;
	if !cc jump .L1505;
.L1508:
	P0 += 1;
	R0 = P0;
	cc =R0==R1;
	[P3+4] = P0;
	if cc jump .L2391;
.L1513:
	P2 = P5 + P0;
	R1 = 117 (X);
	P0 += 1;
	R0 = B [P2] (Z);
	cc =R0==R1;
	[P3+4] = P0;
	if !cc jump .L1514;
	R3 = R3 -|- R3 ||
	[SP+36] = R7 ||
	nop;
	P4 = 4 (X);
	R5 = -97 (X);
	R7 = R3;
.L1517:
	R1 = P0;
	R0 = [P3+8];
	cc =R0==R1;
	if cc jump .L2392;
.L1522:
	P2 = P5 + P0;
	R3 = 9 (X);
	P0 += 1;
	R1 = B [P2] (Z);
	R0 = R1;
	R0 += -48;
	cc =R0<=R3 (iu);
	[P3+4] = P0;
	if cc jump .L1526 (bp);
	R0 = R1 + R5;
	cc =R0<=5 (iu);
	if !cc jump .L1527;
	R0 = -87 (X);
	R0 = R1 + R0;
.L1526:
	P4 += -1;
	R7 <<= 4;
	cc =P4==0;
	R7 = R7 | R0;
	if !cc jump .L1517 (bp);
	R0 = -55 (X);
	R3 = ROT R7 BY 0 ||
	R7 = [SP+36] ||
	nop;
	R0 <<= 10;
	R0 = R3 + R0;
	R1 = 1023 (X);
	cc =R0<=R1 (iu);
	if !cc jump 4 (bp); jump.s .L2393;
	R0 = -19 (X);
	B [SP+212] = R0;
	R1 = R6 >> 6 ||
	R7 = [SP+56] ||
	nop;
	R0 = 63 (X);
	R1 = R1 & R0;
	R2 = -128 (X);
	R0 = R6 & R0;
	R0 = R0 | R2;
	R1 = R1 | R2;
	B [SP+214] = R0;
	R0 = FP;
	B [SP+213] = R1;
	R1 = R7 - R0;
.L1530:
	R2 = 63 (X);
	cc =R4<=R2 (iu);
	if !cc jump .L1529 (bp);
	P1 = R4;
	P0 = 76 (X);
	R2 = R1 + R4;
	P0 = P0 + SP;
	P2 = P0 + P1;
	P1 = R2;
	R2 = B [P1] (X);
	B [P2] = R2;
.L1529:
	R4 += 1;
	cc =R0==R4;
	if !cc jump .L1530 (bp);
	FP = R0;
	R7 = -27 (X);
	R7 <<= 11;
	R7 = R3 + R7;
	R6 = R3;
	R3 = 1023 (X);
	cc =R7<=R3 (iu);
	FP += 3;
	if cc jump .L1531 (bp);
	FP = R4;
.L1503:
	R2 = 127 (X);
	cc =R6<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1539;
	R0 = R6;
	jump.l .L1492;
.L2392:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1839;
	[P3+4] = R0;
	P0.H = 36845;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P0.L = 1468;
	call (P0);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1524;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L1524;
	P0 = [P3+4];
	jump.s .L1522;
.L1527:
	R0 = -65 (X);
	R0 = R1 + R0;
	cc =R0<=5 (iu);
	if cc jump 6 (bp); jump.l .L1839;
	R0 += 10;
	jump.s .L1526;
.L2391:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L2308;
	R0 = 0 (X);
	[P3+4] = R0;
	P2.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1516;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1516;
	P0 = [P3+4];
	jump.s .L1513;
.L2390:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1505;
	R5 = 0 (X);
	[P3+4] = R5;
	P4.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P4.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = ROT R0 BY 0 ||
	[P3+8] = R0 ||
	nop;
	R0 = [P3+12];
	R0 = R1 + R0;
	cc =R1==0;
	[P3+12] = R0;
	if cc jump .L1506;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R0<=R2 (iu);
	if !cc jump .L1506;
	nop;
	nop;
	R2 = 92 (X);
	P0 = [P3+4];
	P2 = P5 + P0;
	R0 = B [P2] (Z);
	cc =R0==R2;
	if cc jump 4 (bp); jump.s .L2394;
	R3 = P0;
	cc =R1==R3;
	if !cc jump .L1508;
	nop;
	nop;
	nop;
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L2308;
	[P3+4] = R5;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = ROT R0 BY 0 ||
	[P3+8] = R0 ||
	nop;
	R0 = [P3+12];
	R0 = R1 + R0;
	cc =R1==0;
	[P3+12] = R0;
	P0 = [P3+4];
	if cc jump .L1512;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R0<=R2 (iu);
	if cc jump .L1508 (bp);
.L1512:
	R3 = 1 (X);
	R3 <<= 16;
	cc =R0<=R3 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	R1 = 1 (X);
	B [P3+17] = R0;
	cc =P0==0;
	R0 = 0 (X);
	B [P3+16] = R1;
	[P3+8] = R0;
	if !cc jump .L1513 (bp);
.L2308:
	R0 = -1 (X);
.L1514:
	R1 = -19 (X);
	B [SP+212] = R1;
	R2 = R6 >> 6;
	R1 = 63 (X);
	R2 = R2 & R1;
	R7 = -128 (X);
	R1 = R6 & R1;
	R2 = R2 | R7;
	R1 = R1 | R7;
	B [SP+213] = R2;
	B [SP+214] = R1;
	R2 = FP;
	R1 = 3 (X);
	R1 = R1 - R2;
.L1519:
	R3 = 63 (X);
	cc =R4<=R3 (iu);
	if !cc jump .L1518 (bp);
	P2 = R4;
	P0 = 76 (X);
	P0 = P0 + SP;
	R3 = R1 + R4;
	P1 = P0 + P2;
	P2 = R3;
	P0 = 212 (X);
	P0 = P0 + SP;
	P2 = P0 + P2;
	R3 = B [P2] (X);
	B [P1] = R3;
.L1518:
	R4 += 1;
	cc =R2==R4;
	if !cc jump .L1519 (bp);
	R1 = 98 (X);
	cc =R0==R1;
	FP = R2;
	if !cc jump 4 (bp); jump.s .L1860;
	cc =R0<=R1;
	if cc jump .L2395;
	R1 = 110 (X);
	cc =R0==R1;
	if cc jump .L1864;
	cc =R0<=R1;
	if cc jump .L2396;
	R3 = 114 (X);
	cc =R0==R3;
	if !cc jump 4 (bp); jump.s .L1866;
	R7 = 116 (X);
	cc =R0==R7;
	if cc jump 6 (bp); jump.l .L1839;
	R0 = 9 (X);
	jump.l .L1492;
.L1501:
	R1 = -65 (X);
	R1 = R0 + R1;
	cc =R1<=5 (iu);
	if cc jump 6 (bp); jump.l .L1839;
	R0 += -55;
	jump.s .L1500;
.L1506:
	R3 = 1 (X);
	R3 <<= 16;
	cc =R0<=R3 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	R1 = 1 (X);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P3+4] ||
	nop;
	B [P3+16] = R1;
	[P3+8] = R0;
	R5 = 0 (X);
.L1505:
	FP = R4;
	jump.s .L1849;
.L2384:
	P2 = 255 (X);
	cc =P5<=P2 (iu);
	if cc jump 4 (bp); jump.s .L1835;
	P2.H = __ZN12_GLOBAL__N_110engine_mapE;
	P2.L = __ZN12_GLOBAL__N_110engine_mapE;
	P5 = P2 + (P5 << 2);
	R0 = [P5];
	cc =R0==-2;
	if !cc jump 4 (bp); jump.s .L1816;
.L1897:
	R0 = 18 (X);
	jump.s .L1815;
.L1619:
	R3 = B [SP+42] (X);
	B [SP+20] = R3;
	jump.l .L1389;
.L2369:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1598;
	R0 = 0 (X);
	[P3+4] = R0;
	P1.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P1.L = 1468;
	call (P1);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1599;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1599;
	P1 = [P3+4];
	jump.l .L1828;
.L2343:
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R2 = 123 (X);
	cc =R0==R2;
	if cc jump 6; jump.l .L1839;
	R0 = P3;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	if cc jump .L1710;
	nop;
	nop;
	nop;
	R0 = [P3+4];
	R0 += 1;
	[P3+4] = R0;
.L1710:
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R3 = 125 (X);
	cc =R0==R3;
	if !cc jump 4 (bp); jump.s .L2397;
	R6 = 0 (X);
	R7 = R7 -|- R7 ||
	[SP+52] = R6 ||
	nop;
	FP.H = 36845;
	[SP+36] = R7;
	R5 = 0 (X);
	FP.L = 1468;
.L1711:
	P0 = 212 (X);
	P0 = P0 + SP;
	R1 = P0;
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser6stringERNS_4TextE;
	R4 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 6 (bp); jump.l .L1839;
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R1 = 58 (X);
	cc =R0==R1;
	if cc jump 6 (bp); jump.l .L1839;
	R0 = [P3+4];
	R1 = [P3+8];
	cc =R0==R1;
	if cc jump .L2398;
.L1713:
	R0 += 1;
	[P3+4] = R0;
.L1714:
	P1.H = .LC8+1;
	P1.L = .LC8+1;
	P2 = P1;
	R0 = 0 (X);
.L1716:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L1716 (bp);
	R3 = [SP+276];
	cc =R0==R3;
	if cc jump .L2399;
.L1882:
	R1 = 0 (X);
.L1717:
	P1.H = .LC9+1;
	P1.L = .LC9+1;
	P2 = P1;
	R0 = 0 (X);
.L1721:
	R0 += 1;
	R2 = B [P2++] (X);
	cc =R2==0;
	if !cc jump .L1721 (bp);
	cc =R3==R0;
	if cc jump .L2400;
.L1722:
	R6 = R1.B (Z);
	cc =R6==0;
	if !cc jump .L1894 (bp);
	P1.H = .LC10+1;
	P1.L = .LC10+1;
	P2 = P1;
	R0 = 0 (X);
.L1728:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L1728 (bp);
	cc =R3==R0;
	if !cc jump .L1729;
	R2 = 101 (X);
	R1 = B [SP+212] (X);
	cc =R1==R2;
	if !cc jump .L1729;
	P2 = 212 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L1730:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L2121;
	P2 = SP;
	R2 = SP;
	R3 = 66 (X);
	R4 = 0 (X);
	P2 += 63;
	R7 = R2 + R3;
.L1731:
	P0 = R7;
	R0 = 1 (X);
	B [P2] = R0;
	R0 = 0 (X);
	B [P0] = R0;
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R1 = 45 (X);
	cc =R0==R1;
	if cc jump .L1734;
	R0 += -48;
	R2 = 9 (X);
	cc =R0<=R2 (iu);
	if !cc jump .L2401;
.L1734:
	P0 = 68 (X);
	P0 = P0 + SP;
	R1 = P0;
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser6numberERNS_6NumberE;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 6 (bp); jump.l .L1839;
	P1 = R7;
	cc =R6==0;
	R0 = B [SP+68] (X);
	B [P1] = R0;
	if !cc jump .L1739 (bp);
	R4 = R4.B (Z);
	R1 = B [SP+69] (X);
	cc =R4==0;
	R0 = [SP+72];
	R1 = R1.B (Z);
	if !cc jump 4; jump.s .L1737;
	cc =R1==0;
	if cc jump .L1738 (bp);
	cc =R0==0;
	if cc jump .L1738 (bp);
	R0 = 256 (X);
.L1738:
	[SP+36] = R0;
.L1739:
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R7 = ROT R0 BY 0 ||
	R1 = [P3+8] ||
	nop;
	R0 = [P3+4];
	cc =R0==R1;
	if cc jump .L2402;
.L1742:
	R0 += 1;
	[P3+4] = R0;
.L1743:
	R3 = 125 (X);
	cc =R7==R3;
	if cc jump .L1745;
	R0 = 44 (X);
	cc =R7==R0;
	if cc jump .L1711 (bp);
	jump.l .L1839;
.L2399:
	R1 = B [SP+212] (X);
	R7 = 112 (X);
	cc =R1==R7;
	if !cc jump .L1882;
	P2 = 212 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L1718:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L1720;
	R1 = R4;
	jump.s .L1717;
.L1720:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if cc jump .L1718 (bp);
	jump.s .L1882;
.L2398:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1714;
	[P3+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (FP);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1715;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1715;
	R0 = [P3+4];
	jump.s .L1713;
.L2121:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if cc jump .L1730 (bp);
.L1729:
	R1 = 8 (X);
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R5 = R4;
.L1733:
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L1739 (bp);
	jump.l .L1839;
.L2401:
	R1 = 8 (X);
	R0 = P3;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	jump.s .L1733;
.L2393:
	R6 = 9216 (X);
	R7 <<= 10;
	R6 = R3 + R6;
	R6 = R7 + R6;
	P0 = [P3+4];
	R5 = [P3+8];
	FP = R4;
	jump.s .L1849;
.L1524:
	R2 = 1 (X);
	R0 = 1 (X);
	R2 <<= 16;
	B [P3+16] = R0;
	cc =R1<=R2 (iu);
.L2309:
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1839;
.L2396:
	R2 = 102 (X);
	cc =R0==R2;
	if cc jump 6 (bp); jump.l .L1839;
	R0 = 12 (X);
	jump.l .L1492;
.L2395:
	R2 = 47 (X);
	cc =R0==R2;
	if !cc jump 4 (bp); jump.s .L1861;
	R3 = 92 (X);
	cc =R0==R3;
	if !cc jump 4 (bp); jump.s .L1862;
	R7 = 34 (X);
	cc =R0==R7;
	if cc jump 6; jump.l .L1839;
	R0 = 34 (X);
	jump.l .L1492;
.L2341:
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L1653;
	R0 = 0 (X);
	[P3+4] = R0;
	P4.H = 36845;
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	P4.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1654;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L1654;
	R7 = 19 (X);
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	BITSET (R7, 23);
	P1 = [P3+4];
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	P0 = P5 + P1;
	R1 = B [P0] (Z);
	jump.s .L1655;
.L1659:
	P1 += 1;
	[P3+4] = P1;
.L1664:
	R1 = P1;
	cc =R0==R1;
	if cc jump .L2403;
	nop;
	nop;
.L1666:
	P2 = P5 + P1;
	R1 = B [P2] (Z);
.L1655:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L1658;
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if cc jump 6 (bp); jump.l .L1658;
	R1 = P1;
	cc =R1==R0;
	if !cc jump .L1659 (bp);
	R1 = B [P3+16] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1660;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L2404;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P1 = [P3+4];
	P0 = P1;
	if cc jump .L1659 (bp);
.L1663:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	P1 = P0;
	jump.s .L1664;
.L2403:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L1839;
	R0 = 0 (X);
	[P3+4] = R0;
	R1 = 1 (X);
	R0 = [P3];
	[SP+12] = R0;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L2405;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P1 = [P3+4];
	P0 = P1;
	if cc jump .L1666 (bp);
.L1668:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P0==0;
	R0 = 0 (X);
	[P3+8] = R0;
	P1 = P0;
	if !cc jump 6 (bp); jump.l .L1839;
	P0 = P5 + P0;
	R3 = 123 (X);
	R0 = B [P0] (Z);
	cc =R0==R3;
	if cc jump 6; jump.l .L1839;
	jump.l .L1673;
.L1894:
	R4 = 0 (X);
.L1727:
	P0 = 64 (X);
	R0 = SP;
	R1 = 67 (X);
	P2 = P0 + SP;
	R7 = R0 + R1;
	jump.s .L1731;
.L1745:
	R5 = R5.B (Z);
	cc =R5==0;
	R6 = [SP+52];
	R3 = B [SP+63] (X);
	if !cc jump 4 (bp); jump.s .L2406;
.L1899:
	R0 = R3.B (Z);
	R1 = 0 (X);
.L1746:
	cc =R0==0;
	R7 = [SP+36];
	if cc R6 = R7;
	jump.l .L1748;
.L2402:
	R0 = B [P3+16] (Z);
	cc =R0==0;
	if !cc jump .L1743;
	[P3+4] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = [P3];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (FP);
	R1 = [P3+12];
	R1 = R0 + R1;
	cc =R0==0;
	[P3+8] = R0;
	[P3+12] = R1;
	if !cc jump 4 (bp); jump.s .L1744;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L1744;
	R0 = [P3+4];
	jump.s .L1742;
.L2400:
	R2 = B [SP+212] (X);
	R7 = 101 (X);
	cc =R2==R7;
	if !cc jump .L1722;
	P2 = 212 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L1724:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L2122;
	R6 = R1.B (Z);
	cc =R6==0;
	if !cc jump 4 (bp); jump.s .L2407;
	R4 = R1;
	jump.s .L1727;
.L2122:
	R2 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R2==R0;
	if cc jump .L1724 (bp);
	jump.s .L1722;
.L1581:
	R3 = 1 (X);
	R3 <<= 16;
	P1 = [P3+4];
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P3+8] = R0;
	if cc jump 6; jump.l .L1582;
	jump.s .L1584;
.L1557:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	B [SP+20] = R6;
	jump.l .L1389;
.L2372:
	R1 = B [SP+212] (X);
	R2 = 111 (X);
	cc =R1==R2;
	if !cc jump .L1873;
	P1 = 212 (X);
	P4 = P1 + SP;
	P4 += 1;
	P1 = R0;
.L1622:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L1623;
	nop;
	R3 = B [SP+42] (X);
	B [SP+43] = R3;
	P0 = [P3+4];
	jump.l .L1592;
.L1623:
	R1 = B [P4++] (X);
	R0 = B [P0++] (X);
	cc =R1==R0;
	if cc jump .L1622 (bp);
	jump.l .L1874;
.L1537:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	B [SP+20] = R7;
	jump.l .L1389;
.L2345:
	R3 = 0 (X);
	B [SP+41] = R3;
	jump.l .L1707;
.L1409:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1408;
.L1860:
	R0 = 8 (X);
	jump.l .L1492;
.L1590:
	R7 = [SP+44];
	cc =R7==0;
	if cc jump 4; jump.s .L1871;
	R7 = 0 (X);
	B [SP+20] = R7;
	P0 = [P3+4];
	jump.l .L1592;
.L1454:
	R3 = 1 (X);
	P1 = [P3+4];
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[P3+8] = R0;
	P0 = P1;
	if cc jump 6; jump.l .L1455;
.L1446:
	P1 = P0;
	R0 = [P3+8];
	jump.l .L1457;
.L1776:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P2 = [P3+4] ||
	nop;
	[P3+8] = R0;
	jump.l .L1764;
.L2387:
	cc =R0==0;
	if !cc jump .L1896;
	R7 = -1 (X);
	jump.s .L1847;
.L1671:
	R7 = 1 (X);
	R0 = 1 (X);
	R7 <<= 16;
	B [P3+16] = R0;
	cc =R1<=R7 (iu);
	jump.s .L2309;
.L1414:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	R2 = 0 (X);
.L1413:
	P1 = [P3+4];
	R0 = R2;
	jump.l .L1416;
.L1568:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P3+4] ||
	nop;
	[P3+8] = R0;
	R2 = 0 (X);
.L1567:
	R0 = R2;
	P1 = P0;
	jump.l .L1570;
.L1869:
	R2 = FP;
	P2 = 0 (X);
	R1 = 6 (X);
	R0 = -64 (X);
	P0 = [P3+4];
	R5 = [P3+8];
	jump.l .L1541;
.L1891:
	R5 = B [SP+32] (Z);
	jump.s .L1677;
.L1489:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	jump.s .L2309;
.L2307:
	P0 = [P3+4];
	jump.s .L1446;
.L1463:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1464;
.L2377:
	P0 = [P3+4];
.L1458:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	P1 = P0;
	jump.l .L1457;
.L1630:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P3+4] ||
	nop;
	[P3+8] = R0;
	R2 = 0 (X);
.L1629:
	P1 = P0;
	R0 = R2;
	jump.l .L1632;
.L1478:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	B [SP+20] = R7;
	jump.l .L1389;
.L1547:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	R2 = 0 (X);
.L1546:
	R0 = ROT R2 BY 0 ||
	P0 = [P3+4] ||
	nop;
	jump.l .L1548;
.L1467:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
.L1466:
	R0 = [P3+8];
	P1 = [P3+4];
	jump.l .L1468;
.L1675:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1674;
.L1763:
	R7 = 1 (X);
	R7 <<= 16;
	R0 = 1 (X);
	cc =R1<=R7 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P3+4] ||
	nop;
	[P3+8] = R0;
	R1 = 0 (X);
.L1762:
	R0 = R1;
	P2 = P0;
	jump.l .L1764;
.L1482:
	R0 = 1 (X);
	B [P3+16] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P3+4] ||
	nop;
	[P3+8] = R0;
	jump.l .L1481;
.L1851:
	P1 = R0;
	R0 = R2;
	jump.l .L1480;
.L1616:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1614;
.L2368:
	R2 = [P3+4];
	jump.l .L1576;
.L1873:
	R3 = 0 (X);
	B [SP+43] = R3;
	P0 = [P3+4];
	jump.l .L1592;
.L2388:
	B [SP+41] = R0;
	jump.l .L1677;
.L1896:
	R5 = 0 (X);
	jump.l .L1677;
.L1702:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1701;
.L1498:
	R3 = 1 (X);
	R0 = 1 (X);
	R3 <<= 16;
	B [P3+16] = R0;
	cc =R1<=R3 (iu);
	jump.s .L2309;
.L1516:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L2308;
.L2394:
	R5 = R1;
	FP = R4;
	jump.l .L1849;
.L2409:
	R0 = P3;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	if cc jump .L1876;
	nop;
	R3 = 1 (X);
	B [SP+32] = R3;
	P0 = [P3+4];
	P0 += 1;
	[P3+4] = P0;
	jump.l .L1592;
.L1785:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1784;
.L1779:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	cc =P0==0;
	R0 = 0 (X);
	[P3+8] = R0;
	if !cc jump 6 (bp); jump.l .L1839;
	P0 += 1;
	[P3+4] = P0;
	jump.l .L1839;
.L1876:
	R7 = 1 (X);
	B [SP+32] = R7;
	jump.l .L2310;
.L2406:
	R0 = B [SP+64] (Z);
	cc =R0==0;
	if !cc jump 4; jump.s .L1899;
	R0 = B [SP+67] (Z);
	cc =R0==0;
	if !cc jump 4; jump.s .L1899;
	R1 = B [SP+62] (Z);
	R0 = R3.B (Z);
	cc =R1==R0;
	if cc jump .L1888;
	cc =R1==0;
	if cc jump .L1747 (bp);
	R1 = B [SP+65] (X);
	jump.s .L1746;
.L2407:
	P2 = SP;
	R3 = SP;
	R0 = 65 (X);
	P2 += 62;
	R7 = R3 + R0;
	jump.s .L1731;
.L1747:
	R1 = B [SP+66] (X);
	jump.s .L1746;
.L1888:
	R1 = 0 (X);
	jump.s .L1746;
.L1788:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P3+4] ||
	nop;
	[P3+8] = R0;
	R2 = 0 (X);
.L1787:
	R0 = R2;
	P1 = P0;
	jump.l .L1789;
.L1561:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1560;
.L1804:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.l .L1803;
.L1800:
	R7 = 1 (X);
	R7 <<= 16;
	R0 = 1 (X);
	cc =R1<=R7 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	R0 = [P3+4];
	cc =R0==0;
	if !cc jump 6 (bp); jump.l .L1839;
	R0 += 1;
	[P3+4] = R0;
	jump.l .L1839;
.L2376:
	P0 = [P3+4];
	jump.l .L1612;
.L2375:
	P0 = [P3+4];
	jump.l .L1607;
.L1441:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P3+4] ||
	nop;
	[P3+8] = R0;
	jump.l .L1435;
.L1791:
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L1839;
.L2311:
	R7 = -1 (X);
	jump.l .L1848;
.L1850:
	R1 = -1 (X);
	jump.l .L1393;
.L1599:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = R0 -|- R0 ||
	P0 = [P3+4] ||
	nop;
	[P3+8] = R0;
	R2 = 0 (X);
.L1598:
	P1 = P0;
	R0 = R2;
	jump.l .L1601;
.L1862:
	R0 = 92 (X);
	jump.l .L1492;
.L1861:
	R0 = 47 (X);
	jump.l .L1492;
.L1737:
	cc =R1==0;
	if cc jump .L1740 (bp);
	cc =R0==0;
	if cc jump .L1740 (bp);
	R0 = 256 (X);
.L1740:
	[SP+52] = R0;
	jump.s .L1739;
.L1715:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L1714;
.L1796:
	cc =R0==0;
	if cc jump .L2311 (bp);
	jump.l .L1839;
.L2404:
	P0 = [P3+4];
	jump.s .L1663;
.L2397:
	R0 = P3;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	if !cc jump 6 (bp); jump.l .L1708;
	R0 = [P3+4];
	R0 += 1;
	[P3+4] = R0;
	jump.l .L1708;
.L2346:
	R2 = I0;
	R2 <<= 2;
	jump.l .L1758;
.L1816:
	P2 = R6;
	P1 = [P2];
	cc =P1==0;
	if !cc jump 4 (bp); jump.s .L1897;
.L1842:
	M0 = P0;
	P2.H = _sdk_companion_machines;
	P2.L = _sdk_companion_machines;
	R3 = B [P0+15] (Z);
	I0 = R3;
	cc =R3==0;
	R0 = CC;
	I1 = R0;
	I0 += M0;
	jump.s .L1821;
.L1818:
	P2 += 16;
	P1 = [P2];
	cc =P1==0;
	if cc jump .L2408;
.L1821:
	R0 = I1;
	CC = R0;
	if cc jump .L1817;
	nop;
	nop;
	nop;
	R1 = B [P1] (X);
	R0 = B [P0] (X);
	cc =R1==R0;
	if !cc jump .L1818;
	FP = P1;
	P3 = P0;
	P4 = I0;
	FP += 1;
	P3 += 1;
	P4 -= P0;
.L1819:
	P4 += -1;
	cc =P4==0;
	if !cc jump .L2118;
	nop;
.L1817:
	P3 = R3;
	P1 = P1 + P3;
	R0 = B [P1] (X);
	cc =R0==0;
	if !cc jump .L1818 (bp);
	R0 = B [P2+12] (Z);
	cc =R2==R0;
	if !cc jump .L1818 (bp);
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L1818 (bp);
	jump.l .L1815;
.L2118:
	R1 = B [P3++] (X);
	R0 = B [FP++] (X);
	cc =R1==R0;
	if cc jump .L1819 (bp);
	jump.s .L1818;
.L2408:
	cc =R2==0;
	if !cc R0 = R5; if cc R0 = R4;
	jump.l .L1815;
.L1814:
	P3 = R6;
	P1 = [P3];
	cc =P1==0;
	if !cc jump .L1842 (bp);
	R0 = 0 (X);
	jump.l .L1815;
.L1654:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	R2 = 0 (X);
.L1653:
	P1 = [P3+4];
	R0 = R2;
	jump.l .L1658;
.L2405:
	P0 = [P3+4];
	jump.s .L1668;
.L1744:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [P3+16] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [P3+17] = R0;
	R0 = 0 (X);
	[P3+8] = R0;
	jump.s .L1743;
	.size	__ZN12_GLOBAL__N_116machines_sectionERNS_6ParserERbS2_, .-__ZN12_GLOBAL__N_116machines_sectionERNS_6ParserERbS2_
	.section	.rodata.str1.4
	.align 4
.LC11:
	.string	"format"
	.align 4
.LC12:
	.string	"open-xy-project"
	.align 4
.LC13:
	.string	"project"
	.align 4
.LC14:
	.string	"bytes"
	.align 4
.LC15:
	.string	"crc32"
	.align 4
.LC16:
	.string	"sections"
	.align 4
.LC17:
	.string	"open-xy.machines"
.text;
	.align 4
.type __ZN12_GLOBAL__N_113read_documentEPvRmS1_.constprop.5, STT_FUNC;
__ZN12_GLOBAL__N_113read_documentEPvRmS1_.constprop.5:
	[--sp] = ( r7:4, p5:3 );

	LINK 276;
	[SP+316] = R1;
	P1.H = __ZN12_GLOBAL__N_110engine_mapE;
	R1 = R1 -|- R1 ||
	[SP+52] = R0 ||
	nop;
	[SP+56] = R1;
	[SP+60] = R1;
	[SP+64] = R1;
	W [SP+68] = R1;
	B [SP+41] = R1;
	[SP+320] = R2;
	P1.L = __ZN12_GLOBAL__N_110engine_mapE;
	R1 = -2 (X);
	P2 = 256 (X);
	LSETUP (.L2418, .L3377) LC1 = P2;
.L2418:
.L3377:
	[P1++] = R1;
	P1.H = __ZN12_GLOBAL__N_110effect_mapE;
	P1.L = __ZN12_GLOBAL__N_110effect_mapE;
	R1 = -2 (X);
	P2 = 63 (X);
	LSETUP (.L2419, .L3376) LC1 = P2;
.L2419:
.L3376:
	[P1++] = R1;
	P5.H = __ZN12_GLOBAL__N_110read_chunkE;
	P5.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.H = 36845;
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = P5;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L3281;
	P0 = [SP+56];
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	R2 = P0;
	if cc jump 6 (bp); jump.l .L2420;
	P1 = P5 + P0;
	R1 = B [P1] (Z);
.L2422:
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R7 = 0 (X);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2433:
	R2 = 32 (X);
	cc =R1==R2;
	if cc jump .L2423;
	R3 = 9 (X);
	cc =R1==R3;
	if cc jump .L2423;
	R2 = 10 (X);
	cc =R1==R2;
	if cc jump .L2423;
	R3 = 13 (X);
	cc =R1==R3;
	if !cc jump .L2424;
.L2423:
	R1 = P0;
	cc =R1==R0;
	if cc jump .L3282;
.L2425:
	P0 += 1;
.L2429:
	R1 = P0;
	cc =R0==R1;
	if cc jump .L3283;
	nop;
	nop;
.L2430:
	P2 = P5 + P0;
	R1 = B [P2] (Z);
	jump.s .L2433;
.L3282:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2616;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	[SP+56] = R7;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P0 = [SP+56];
	if cc jump .L2428;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2425 (bp);
.L2428:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	[SP+60] = R7;
	R0 = 0 (X);
	jump.s .L2429;
.L3283:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2616;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	[SP+56] = R7;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P0 = [SP+56];
	if cc jump .L2432;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2430 (bp);
.L2432:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
.L2424:
	R7 = P0;
	cc =R0==R7;
	if cc jump .L3284;
	nop;
	P1 = P5 + P0;
	R2 = 123 (X);
	R1 = B [P1] (Z);
	cc =R1==R2;
	if cc jump .L2439;
.L2616:
	R7 = 0 (X);
	B [SP+29] = R7;
.L2417:
	P1 = 276 (X);
	R0 = B [SP+29] (X);
	SP = SP + P1;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L3284:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2616;
	R0 = [SP+52];
	[SP+12] = R0;
	R7 = 0 (X);
	P4.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = R7;
	P4.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if cc jump .L2616;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L2616;
	P0 = [SP+56];
	R3 = 123 (X);
	P1 = P5 + P0;
	R1 = B [P1] (Z);
	cc =R1==R3;
	R2 = P0;
	if !cc jump .L2616 (bp);
	cc =R0==R2;
	if !cc jump .L2439;
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L2440;
	R0 = [SP+52];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = R7;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L3285;
	P0 = [SP+56];
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	R2 = P0;
	if cc jump 6 (bp); jump.l .L2443;
.L2439:
	P0 += 1;
	R1 = P0;
	cc =R1==R0;
	[SP+56] = P0;
	if !cc jump 6 (bp); jump.l .L3286;
.L2444:
	P1 = P5 + P0;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2461:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3287 (bp);
.L2447:
	R7 = P0;
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L3288;
.L2460:
	P1 = P5 + P0;
	R7 = 125 (X);
	R0 = B [P1] (Z);
	cc =R0==R7;
	if !cc jump 6 (bp); jump.l .L3289;
.L2463:
	P2 = 208 (X);
	R7 = 0 (X);
	R3 = 0 (X);
	P2 = SP + P2;
	[SP+20] = P2;
	B [SP+31] = R7;
	B [SP+32] = R3;
	B [SP+30] = R7;
	B [SP+36] = R3;
	B [SP+29] = R7;
	P2 = P0;
.L2808:
	R0 = [SP+60];
	R1 = P2;
	cc =R0==R1;
	if cc jump .L3290;
.L2466:
	P1 = P5 + P2;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2477:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3291 (bp);
.L2469:
	R7 = P2;
	cc =R7==R0;
	if cc jump .L3292;
	nop;
	P1 = P5 + P2;
	R3 = 34 (X);
	R1 = B [P1] (Z);
	cc =R1==R3;
	if cc jump .L2479;
.L2471:
	R3 = 0 (X);
	B [SP+29] = R3;
	jump.s .L2417;
.L3291:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L2469;
	R1 = P2;
	cc =R0==R1;
	if cc jump .L3293;
.L2470:
	P2 += 1;
.L2474:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L3294;
	nop;
	nop;
.L2475:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L2477;
.L3293:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2471;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2473;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2470 (bp);
.L2473:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2474;
.L3294:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2471;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2476;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2476;
	P2 = [SP+56];
	jump.s .L2475;
.L3287:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L2447;
	R1 = P0;
	cc =R0==R1;
	if cc jump .L3295;
.L2448:
	P0 += 1;
	[SP+56] = P0;
.L2455:
	R1 = P0;
	cc =R0==R1;
	if cc jump .L3296;
	nop;
	nop;
.L2457:
	P2 = P5 + P0;
	R1 = B [P2] (Z);
	jump.s .L2461;
.L3295:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2449;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P0 = [SP+56];
	if cc jump .L2454;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2448 (bp);
.L2454:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2455;
.L3296:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L3275;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2459;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2459;
	P0 = [SP+56];
	jump.s .L2457;
.L3290:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2467;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2468;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2468;
	P2 = [SP+56];
	jump.s .L2466;
.L3292:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2471;
	R0 = [SP+52];
	[SP+12] = R0;
	R7 = 0 (X);
	P4.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = R7;
	P4.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if cc jump .L2471;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L2471;
	P2 = [SP+56];
	R3 = 34 (X);
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	cc =R1==R3;
	if !cc jump .L2471 (bp);
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L2479;
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2857;
	R0 = [SP+52];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = R7;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2481;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2481;
	P2 = [SP+56];
.L2479:
	P2 += 1;
.L2480:
	R4 = 0 (X);
.L2539:
	R7 = P2;
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L3297;
.L2482:
	P1 = P5 + P2;
	R1 = 31 (X);
	P2 += 1;
	R0 = B [P1] (X);
	R7 = R0.B (Z);
	cc =R7<=R1;
	[SP+56] = P2;
	if cc jump .L2471;
	R2 = 34 (X);
	cc =R7==R2;
	if cc jump .L2483;
	R3 = 92 (X);
	cc =R7==R3;
	if !cc jump 4 (bp); jump.s .L3298;
	R1 = 127 (X);
	cc =R7<=R1;
	if !cc jump 4; jump.s .L2525;
	R1 = -194 (X);
	R1 = R7 + R1;
	R2 = 29 (X);
	cc =R1<=R2 (iu);
	if !cc jump 4 (bp); jump.s .L3299;
	R1 = -224 (X);
	R1 = R7 + R1;
	R3 = 15 (X);
	cc =R1<=R3 (iu);
	if cc jump 4; jump.s .L2528;
	R7 = 15 (X);
	R7 = R0 & R7;
	P3 = 2048 (X);
	FP = 1 (X);
.L2527:
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R5 = 0 (X);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	jump.s .L2530;
.L2529:
	P1 = P5 + P2;
	R0 = B [P1] (X);
	R1 = 192 (X);
	R1 = R0 & R1;
	R3 = 128 (X);
	P2 += 1;
	cc =R1==R3;
	[SP+56] = P2;
	if !cc jump .L2471;
	R1 = 63 (X);
	R0 = R0 & R1;
	R7 <<= 6;
	R7 = R7 | R0;
	cc =FP==0;
	R0 = FP;
	R0 += -1;
	if !cc jump 4 (bp); jump.s .L3300;
	FP = R0;
.L2530:
	R0 = [SP+60];
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L2529 (bp);
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2471;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	[SP+56] = R5;
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if cc jump .L2471;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L2471;
	P2 = [SP+56];
	jump.s .L2529;
.L2483:
	R0 = [SP+60];
	R1 = P2;
	cc =R1==R0;
	if !cc jump 4 (bp); jump.s .L3301;
.L2540:
	P1 = P5 + P2;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2550:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3302 (bp);
.L2543:
	R7 = P2;
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L3303;
	P1 = P5 + P2;
	R1 = 58 (X);
	R0 = B [P1] (Z);
	cc =R0==R1;
	if !cc jump .L2471;
.L2552:
	P2 += 1;
	[SP+56] = P2;
.L2553:
	P1.H = .LC11+1;
	P1.L = .LC11+1;
	P2 = P1;
	R0 = 0 (X);
.L2555:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L2555 (bp);
	cc =R0==R4;
	if !cc jump 4 (bp); jump.s .L3304;
.L2556:
	R5.H = .LC4+1;
	R5.L = .LC4+1;
	P2 = R5;
	R0 = 0 (X);
.L2589:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L2589 (bp);
	cc =R0==R4;
	if !cc jump 4 (bp); jump.s .L3305;
.L2590:
	P1.H = .LC13+1;
	P1.L = .LC13+1;
	P2 = P1;
	R0 = 0 (X);
.L2623:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L2623 (bp);
	cc =R0==R4;
	if !cc jump 4 (bp); jump.s .L3306;
.L2624:
	P1.H = .LC16+1;
	P1.L = .LC16+1;
	P2 = P1;
	R0 = 0 (X);
.L2657:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L2657 (bp);
	cc =R0==R4;
	if !cc jump .L2658;
	R2 = 115 (X);
	R1 = B [SP+72] (X);
	cc =R1==R2;
	if !cc jump .L2658;
	P2 = 72 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L2659:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3102;
	R0 = 0 (X);
	P0.H = __ZN12_GLOBAL__N_113invalid_countE;
	B [SP+41] = R0;
	P0.L = __ZN12_GLOBAL__N_113invalid_countE;
	R0 = 0 (X);
	P1.H = __ZN12_GLOBAL__N_110engine_mapE;
	[P0] = R0;
	P1.L = __ZN12_GLOBAL__N_110engine_mapE;
	R0 = -2 (X);
	P2 = 256 (X);
	LSETUP (.L2662, .L3375) LC1 = P2;
.L2662:
.L3375:
	[P1++] = R0;
	P1.H = __ZN12_GLOBAL__N_110effect_mapE;
	P1.L = __ZN12_GLOBAL__N_110effect_mapE;
	R0 = -2 (X);
	P2 = 63 (X);
	LSETUP (.L2663, .L3374) LC1 = P2;
.L2663:
.L3374:
	[P1++] = R0;
	P2 = [SP+56];
	R0 = [SP+60];
	R2 = R0;
	R1 = P2;
	cc =R1==R0;
	P1 = P2;
	if !cc jump 4 (bp); jump.s .L3307;
.L2664:
	P1 = P5 + P2;
	R7 = 19 (X);
	P3.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P3.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2683:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3308 (bp);
.L2667:
	R7 = P2;
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L3309;
.L2681:
	P2 = P5 + P2;
	R3 = 123 (X);
	R0 = B [P2] (Z);
	cc =R0==R3;
	if !cc jump .L2682 (bp);
	R0 = 1 (X);
	B [SP+42] = R0;
	R0 = SP;
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R7 = 123 (X);
	cc =R0==R7;
	if !cc jump 6 (bp); jump.l .L3310;
	R4 = 0 (X);
.L2686:
	R3 = B [SP+42] (X);
	R0 = R3.B (Z);
	cc =R0==0;
	B [SP+31] = R3;
	if !cc jump 4; jump.s .L2788;
	P0.H = __ZN12_GLOBAL__N_113invalid_countE;
	P0.L = __ZN12_GLOBAL__N_113invalid_countE;
	R0 = [P0];
	cc =R0==0;
	if cc jump 4; jump.s .L2788;
	R7 = 1 (X);
	B [SP+32] = R7;
	jump.s .L2582;
.L3102:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if cc jump .L2659 (bp);
.L2658:
	R0 = SP;
	R1 = 8 (X);
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R4 = R0;
.L2582:
	R4 = R4.B (Z);
	cc =R4==0;
	if !cc jump 4 (bp); jump.s .L2471;
.L2588:
	P2 = [SP+56];
	R0 = [SP+60];
	R1 = P2;
	cc =R1==R0;
	P1 = P2;
	if !cc jump 4 (bp); jump.s .L3311;
.L2790:
	P1 = P5 + P2;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2802:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3312 (bp);
.L2793:
	R7 = P2;
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L3313;
	P1 = P5 + P2;
	R7 = B [P1] (Z);
.L2804:
	P2 += 1;
	[SP+56] = P2;
.L2805:
	R3 = 125 (X);
	cc =R7==R3;
	if !cc jump 6 (bp); jump.l .L2807;
	R0 = 44 (X);
	cc =R7==R0;
	if cc jump 4 (bp); jump.s .L2471;
	P2 = [SP+56];
	jump.s .L2808;
.L3302:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L2543;
	R1 = P2;
	cc =R0==R1;
	if cc jump .L3314;
.L2544:
	P2 += 1;
.L2547:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L3315;
	nop;
	nop;
.L2548:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L2550;
.L3314:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2471;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2546;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2544 (bp);
.L2546:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2547;
.L3312:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L2793;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L3316;
.L2794:
	P2 += 1;
.L2798:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L3317;
	nop;
	nop;
.L2799:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L2802;
.L3316:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2795;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2797;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2794 (bp);
.L2797:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2798;
.L3315:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2471;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2549;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2549;
	P2 = [SP+56];
	jump.s .L2548;
.L3317:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L2800;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2801;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2801;
	P2 = [SP+56];
	jump.s .L2799;
.L3308:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L2667;
	R1 = P2;
	cc =R0==R1;
	if cc jump .L3318;
.L2668:
	P2 += 1;
	[SP+56] = P2;
.L2675:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L3319;
	nop;
	nop;
.L2677:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L2683;
.L3318:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L2669;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2674;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2668 (bp);
.L2674:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2675;
.L3319:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2682;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2680;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2677 (bp);
.L2680:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[SP+60] = R0;
	if !cc jump .L2681 (bp);
.L2682:
	R0 = SP;
	R1 = 8 (X);
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R7 = 1 (X);
	R3 = 0 (X);
	R4 = R0;
	B [SP+31] = R7;
	B [SP+32] = R3;
	jump.s .L2582;
.L2525:
	R2 = 127 (X);
	cc =R7<=R2 (iu);
	if cc jump 4 (bp); jump.s .L3320;
.L2487:
	B [SP+208] = R0;
	R3 = ROT R4 BY 0 ||
	P2 = [SP+56] ||
	nop;
	R1 = 1 (X);
	R0 = [SP+60];
.L2532:
	R4 = R1 + R4;
	R2 = R4 - R3;
	R1 = R3;
	P1 = R2;
	LSETUP (.L2538, .L3373) LC1 = P1;
.L2538:
	R7 = 63 (X);
	cc =R1<=R7 (iu);
	if !cc jump .L2537 (bp);
	P3 = R1;
	P0 = 72 (X);
	P0 = P0 + SP;
	R2 = R1 - R3;
	P4 = P0 + P3;
	P0 = R2;
	P3 = 208 (X);
	P3 = P3 + SP;
	P0 = P3 + P0;
	R2 = B [P0] (X);
	B [P4] = R2;
.L2537:
.L3373:
	R1 += 1;
	jump.s .L2539;
.L3297:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2471;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2471;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L2471;
	P2 = [SP+56];
	jump.s .L2482;
.L3301:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2541;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2542;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2542;
	P2 = [SP+56];
	jump.s .L2540;
.L3303:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2471;
	R0 = [SP+52];
	[SP+12] = R0;
	R7 = 0 (X);
	P4.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = R7;
	P4.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2471;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2471;
	P2 = [SP+56];
	R3 = 58 (X);
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	cc =R1==R3;
	if cc jump 4 (bp); jump.s .L2471;
	R1 = P2;
	cc =R0==R1;
	if cc jump 4 (bp); jump.s .L2552;
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L2553;
	R0 = [SP+52];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = R7;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2554;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2554;
	P2 = [SP+56];
	jump.s .L2552;
.L3304:
	R1 = B [SP+72] (X);
	R7 = 102 (X);
	cc =R1==R7;
	if cc jump 4 (bp); jump.s .L2556;
	P2 = 72 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L2557:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3108;
	P2 = [SP+56];
	R0 = [SP+60];
	R2 = R0;
	R3 = P2;
	cc =R3==R0;
	P1 = P2;
	if !cc jump 4 (bp); jump.s .L3321;
.L2832:
	P1 = P5 + P2;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2579:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3322 (bp);
.L2563:
	R7 = P2;
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L3323;
.L2577:
	P2 = P5 + P2;
	R3 = 34 (X);
	R0 = B [P2] (Z);
	cc =R0==R3;
	if !cc jump .L2578 (bp);
	P0 = 208 (X);
	P0 = P0 + SP;
	R0 = SP;
	R1 = P0;
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser6stringERNS_4TextE;
	B [SP+29] = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4; jump.s .L2417;
	P1.H = .LC12+1;
	P1.L = .LC12+1;
	P2 = P1;
	R0 = 0 (X);
.L2584:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L2584 (bp);
	R1 = [SP+272];
	cc =R0==R1;
	if !cc jump 6 (bp); jump.l .L3324;
.L2876:
	R3 = 0 (X);
	B [SP+29] = R3;
	jump.s .L2588;
.L3108:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if cc jump .L2557 (bp);
	jump.s .L2556;
.L3322:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L2563;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L3325;
.L2564:
	P2 += 1;
	[SP+56] = P2;
.L2571:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L3326;
	nop;
	nop;
.L2573:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L2579;
.L3325:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L2565;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2570;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2564 (bp);
.L2570:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2571;
.L3326:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2578;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2576;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2573 (bp);
.L2576:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[SP+60] = R0;
	if !cc jump .L2577 (bp);
.L2578:
	R0 = SP;
	R1 = 8 (X);
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R7 = 0 (X);
	R4 = R0;
	B [SP+29] = R7;
	jump.s .L2582;
.L3311:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2791;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2792;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2792;
	P2 = [SP+56];
	jump.s .L2790;
.L3313:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2795;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2471;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = [SP+56];
	if cc jump 4 (bp); jump.s .L2471;
	R3 = P2;
	P1 = P5 + P2;
	cc =R0==R3;
	R7 = B [P1] (Z);
	if cc jump 4 (bp); jump.s .L2804;
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L2805;
.L2855:
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2806;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L2806;
	P2 = [SP+56];
	jump.s .L2804;
.L3305:
	R1 = B [SP+72] (X);
	R7 = 118 (X);
	cc =R1==R7;
	if cc jump 4 (bp); jump.s .L2590;
	P2 = 72 (X);
	P1 = P2 + SP;
	P0.H = .LC4+1;
	P0.L = .LC4+1;
	P1 += 1;
	P2 = R0;
.L2591:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3107;
	P2 = [SP+56];
	R0 = [SP+60];
	R2 = R0;
	R7 = P2;
	cc =R7==R0;
	P1 = P2;
	if !cc jump 4 (bp); jump.s .L3327;
.L2834:
	P1 = P5 + P2;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2613:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3328 (bp);
.L2597:
	R7 = P2;
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L3329;
.L2611:
	P2 = P5 + P2;
	R3 = 45 (X);
	R0 = B [P2] (Z);
	cc =R0==R3;
	if cc jump .L2615;
	R0 += -48;
	R7 = 9 (X);
	cc =R0<=R7 (iu);
	if !cc jump .L2612;
.L2615:
	P0 = 208 (X);
	P0 = P0 + SP;
	R0 = SP;
	R1 = P0;
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser6numberERNS_6NumberE;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L2616;
	R1 = B [SP+208] (Z);
	cc =R1==0;
	R0 = [SP+212];
	if cc jump .L2622 (bp);
	R1 = B [SP+209] (Z);
	cc =R1==0;
	if cc jump .L2620 (bp);
	cc =R0==0;
	if !cc jump .L2622 (bp);
.L2620:
	cc =R0==1;
	R0 = CC;
	B [SP+36] = R0;
	jump.s .L2588;
.L3107:
	R1 = B [P1++] (X);
	R0 = B [P0++] (X);
	cc =R1==R0;
	if cc jump .L2591 (bp);
	jump.s .L2590;
.L3328:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L2597;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L3330;
.L2598:
	P2 += 1;
	[SP+56] = P2;
.L2605:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L3331;
	nop;
	nop;
.L2607:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L2613;
.L3330:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if !cc jump .L2599;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2604;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2598 (bp);
.L2604:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2605;
.L3331:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2612;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2610;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2607 (bp);
.L2610:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[SP+60] = R0;
	if !cc jump .L2611 (bp);
.L2612:
	R0 = SP;
	R1 = 8 (X);
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4; jump.s .L2616;
.L2622:
	R3 = 0 (X);
	B [SP+36] = R3;
	jump.s .L2588;
.L3306:
	R1 = B [SP+72] (X);
	R2 = 112 (X);
	cc =R1==R2;
	if cc jump 4 (bp); jump.s .L2624;
	P2 = 72 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L2625:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3106;
	R0 = 0 (X);
	B [SP+48] = R0;
	R0 = SP;
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R1 = 123 (X);
	cc =R0==R1;
	if cc jump .L3332;
	R0 = SP;
	R1 = 8 (X);
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R3 = 0 (X);
	R4 = R0;
	B [SP+30] = R3;
	jump.s .L2582;
.L3106:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if cc jump .L2625 (bp);
	jump.s .L2624;
.L3298:
	R0 = [SP+60];
	R7 = P2;
	cc =R7==R0;
	if cc jump .L3333;
.L2485:
	P1 = P5 + P2;
	R2 = 117 (X);
	P2 += 1;
	R0 = B [P1] (X);
	R1 = R0.B (Z);
	cc =R1==R2;
	[SP+56] = P2;
	if !cc jump 4 (bp); jump.s .L2858;
	R3 = 98 (X);
	cc =R1==R3;
	if !cc jump 6 (bp); jump.l .L2865;
	cc =R1<=R3 (iu);
	if cc jump .L3334;
	R7 = 110 (X);
	cc =R1==R7;
	if !cc jump 4 (bp); jump.s .L2869;
	cc =R1<=R7 (iu);
	if cc jump .L3335;
	R2 = 114 (X);
	cc =R1==R2;
	if cc jump .L2871;
	R3 = 116 (X);
	cc =R1==R3;
	if cc jump 4 (bp); jump.s .L2471;
	R0 = 9 (X);
	jump.s .L2487;
.L3334:
	R7 = 47 (X);
	cc =R1==R7;
	if !cc jump 4 (bp); jump.s .L2487;
	R2 = 92 (X);
	cc =R1==R2;
	if !cc jump 4 (bp); jump.s .L2487;
	R3 = 34 (X);
	cc =R1==R3;
	if cc jump 4; jump.s .L2471;
	jump.s .L2487;
.L3335:
	R0 = 102 (X);
	cc =R1==R0;
	if cc jump 4 (bp); jump.s .L2471;
	R0 = 12 (X);
	jump.s .L2487;
.L3300:
	R0 = P3;
	cc =R7<R0 (iu);
	if !cc jump 4 (bp); jump.s .L2471;
	R1 = 65535 (Z);
	BITSET (R1, 20);
	cc =R7<=R1 (iu);
	if cc jump 4 (bp); jump.s .L2471;
	R0 = -27 (X);
	R0 <<= 11;
	R0 = R7 + R0;
	R2 = 2047 (X);
	cc =R0<=R2 (iu);
	if !cc jump 4 (bp); jump.s .L2471;
.L2531:
	R0 = 2047 (X);
	cc =R7<=R0 (iu);
	if !cc jump 6 (bp); jump.l .L2533;
	P2 = [SP+56];
	R0 = [SP+60];
.L2856:
	R1 = 65535 (Z);
	cc =R7<=R1 (iu);
	if cc jump .L3336;
	R1 = R7 >> 18;
	R3 = R4;
	R2 = -16 (X);
	P0 = 2 (X);
	jump.s .L2535;
.L3299:
	R7 = 31 (X);
	R7 = R0 & R7;
	P3 = 128 (X);
	FP = 0 (X);
	jump.s .L2527;
.L2528:
	R1 = -240 (X);
	R7 = R7 + R1;
	cc =R7<=4 (iu);
	if cc jump 4 (bp); jump.s .L2471;
	R7 = 7 (X);
	P3.H = 1;
	R7 = R0 & R7;
	P3.L = 0;
	FP = 2 (X);
	jump.s .L2527;
.L3320:
	R1 = R7 >> 6 ||
	R0 = [SP+60] ||
	nop;
	R3 = R4;
	R2 = -64 (X);
	P0 = 0 (X);
.L2535:
	P1 = P0 + (P0 << 1);
	P3 = 208 (X);
	R1 = R1 | R2;
	R2 = P1;
	P1 = P3 + SP;
	B [SP+208] = R1;
	R2 <<= 1;
	P1 += 1;
	R5 = 63 (X);
	R6 = -128 (X);
.L2536:
	R1 = R7;
	R1 >>= R2;
	R1 = R1 & R5;
	R1 = R1 | R6;
	B [P1++] = R1;
	R2 += -6;
	R1 = -6 (X);
	cc =R2==R1;
	if !cc jump .L2536 (bp);
	R1 = P0;
	R1 += 2;
	jump.s .L2532;
.L2476:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P2 = [SP+56] ||
	nop;
	[SP+60] = R0;
	jump.s .L2469;
.L2549:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P2 = [SP+56] ||
	nop;
	[SP+60] = R0;
	jump.s .L2543;
.L2801:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P2 = [SP+56] ||
	nop;
	[SP+60] = R0;
	jump.s .L2793;
.L2871:
	R0 = 13 (X);
	jump.s .L2487;
.L3336:
	R1 = R7 >> 12;
	R3 = R4;
	R2 = -32 (X);
	P0 = 1 (X);
	jump.s .L2535;
.L3288:
	R0 = B [SP+68] (Z);
.L2449:
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L3275;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R1 = 1 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	R2 = [SP+56];
	if cc jump .L2462;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	P0 = R2;
	if !cc jump 4; jump.s .L2460;
.L2462:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	P0 = R2;
	jump.s .L2463;
.L3332:
	R0 = SP;
	R0 += 52;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R7 = 123 (X);
	cc =R0==R7;
	if !cc jump 4 (bp); jump.s .L3337;
	R4 = 0 (X);
.L2629:
	R0 = B [SP+48] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L3338;
.L2652:
	R3 = 0 (X);
	B [SP+30] = R3;
	jump.s .L2582;
.L3323:
	R1 = B [SP+68] (Z);
.L2565:
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L2578;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2580;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L2580;
	P2 = [SP+56];
	jump.s .L2577;
.L3329:
	R1 = B [SP+68] (Z);
.L2599:
	cc =R1==0;
	if !cc jump .L2612;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2614;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L2614;
	P2 = [SP+56];
	jump.s .L2611;
.L2733:
	R0 = 0 (X);
	B [SP+43] = R0;
	R0 = 0 (X);
	[SP+48] = R0;
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R1 = 123 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L3339;
.L2896:
	R4 = 0 (X);
.L2691:
	R0 = B [SP+31] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2686;
.L2788:
	R3 = 0 (X);
	R7 = 1 (X);
	B [SP+31] = R3;
	B [SP+32] = R7;
	jump.s .L2582;
.L3333:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L2471;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2471;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L2471;
	P2 = [SP+56];
	jump.s .L2485;
.L3309:
	R1 = B [SP+68] (Z);
.L2669:
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L2682;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2684;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 6 (bp); jump.l .L2684;
	P2 = [SP+56];
	jump.s .L2681;
.L3307:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2665;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2666;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2666;
	P2 = [SP+56];
	jump.s .L2664;
.L3286:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	R2 = P0;
	if cc jump 6 (bp); jump.l .L2440;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2446;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2446;
	P0 = [SP+56];
	jump.l .L2444;
.L2858:
	R0 = [SP+60];
	R1 = P2;
	P3.H = 36845;
	P4.H = __ZN12_GLOBAL__N_110read_chunkE;
	cc =R0==R1;
	R6 = 4 (X);
	R7 = 0 (X);
	P3.L = 1468;
	P4.L = __ZN12_GLOBAL__N_110read_chunkE;
	R5 = -97 (X);
	if cc jump .L3340;
.L2491:
	P1 = P5 + P2;
	R3 = 9 (X);
	P2 += 1;
	R0 = B [P1] (Z);
	R1 = R0;
	R1 += -48;
	cc =R1<=R3 (iu);
	[SP+56] = P2;
	if !cc jump .L2493 (bp);
	R0 = R1;
.L2494:
	R6 += -1;
	R7 <<= 4;
	cc =R6==0;
	R7 = R7 | R0;
	if cc jump .L2496;
	P2 = [SP+56];
	R0 = [SP+60];
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L2491 (bp);
.L3340:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L2471;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = P4;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2471;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2471;
	P2 = [SP+56];
	jump.s .L2491;
.L2493:
	R1 = R0 + R5;
	cc =R1<=5 (iu);
	if !cc jump .L2495 (bp);
	R1 = -87 (X);
	R0 = R0 + R1;
	jump.s .L2494;
.L2496:
	R6 = -27 (X);
	R6 <<= 11;
	R6 = R7 + R6;
	R0 = 1023 (X);
	cc =R6<=R0 (iu);
	[SP+24] = R6;
	if !cc jump .L2497;
	P0 = R4;
	P4 = SP;
	P4 += 44;
	P3.H = 36845;
	R4 += 3;
	P4 -= P0;
	P3.L = 1468;
.L2524:
	P2 = [SP+56];
	R1 = [SP+60];
	R5 = R4;
	R5 += -3;
	R2 = P2;
	cc =R2==R1;
	R0 = R1;
	if cc jump .L3341;
	nop;
	P1 = P5 + P2;
	R3 = 92 (X);
	R2 = B [P1] (Z);
	cc =R2==R3;
	if cc jump 4 (bp); jump.s .L2499;
.L2502:
	P2 += 1;
	R0 = P2;
	cc =R0==R1;
	[SP+56] = P2;
	if cc jump .L3342;
.L2507:
	P1 = P5 + P2;
	R1 = 117 (X);
	P2 += 1;
	R0 = B [P1] (Z);
	cc =R0==R1;
	[SP+56] = P2;
	if !cc jump .L2508;
	R6 = 4 (X);
	R3 = 0 (X);
	FP = -97 (X);
.L2511:
	R0 = [SP+60];
	R1 = P2;
	cc =R0==R1;
	if cc jump .L3343;
.L2516:
	P1 = P5 + P2;
	R2 = 9 (X);
	P2 += 1;
	R1 = B [P1] (Z);
	R0 = R1;
	R0 += -48;
	cc =R0<=R2 (iu);
	[SP+56] = P2;
	if cc jump .L2519 (bp);
	R2 = FP;
	R0 = R1 + R2;
	cc =R0<=5 (iu);
	if !cc jump .L2520;
	R0 = -87 (X);
	R0 = R1 + R0;
.L2519:
	R6 += -1;
	R3 <<= 4;
	cc =R6==0;
	R3 = R3 | R0;
	if !cc jump .L2511 (bp);
	R0 = -55 (X);
	R0 <<= 10;
	R0 = R3 + R0;
	R1 = 1023 (X);
	cc =R0<=R1 (iu);
	if !cc jump 4 (bp); jump.s .L3344;
	R0 = -19 (X);
	B [SP+44] = R0;
	R1 = R7 >> 6;
	R0 = 63 (X);
	R1 = R1 & R0;
	R2 = -128 (X);
	R0 = R7 & R0;
	R1 = R1 | R2;
	R0 = R0 | R2;
	B [SP+45] = R1;
	B [SP+46] = R0;
.L2523:
	R7 = 63 (X);
	cc =R5<=R7 (iu);
	if !cc jump .L2522 (bp);
	P1 = R5;
	P0 = 72 (X);
	P0 = P0 + SP;
	P2 = P0 + P1;
	P0 = P4 + P1;
	R0 = B [P0] (X);
	B [P2] = R0;
.L2522:
	R5 += 1;
	cc =R4==R5;
	if !cc jump .L2523 (bp);
	R6 = -27 (X);
	R6 <<= 11;
	R6 = R3 + R6;
	R0 = 1023 (X);
	cc =R6<=R0 (iu);
	[SP+24] = R6;
	R4 += 3;
	P4 += -3;
	R7 = R3;
	if cc jump .L2524 (bp);
	R4 = R5;
.L2497:
	R3 = 127 (X);
	cc =R7<=R3 (iu);
	if cc jump 4 (bp); jump.s .L2531;
	R0 = R7;
	jump.s .L2487;
.L3343:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L2471;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+16] = R3;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	R3 = [SP+16];
	if !cc jump 6 (bp); jump.l .L2471;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2471;
	P2 = [SP+56];
	jump.s .L2516;
.L2520:
	R0 = -65 (X);
	R0 = R1 + R0;
	cc =R0<=5 (iu);
	if cc jump 6 (bp); jump.l .L2471;
	R0 += 10;
	jump.s .L2519;
.L3341:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L2499;
	R0 = [SP+52];
	FP = 0 (X);
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = FP;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = ROT R0 BY 0 ||
	[SP+60] = R0 ||
	nop;
	R0 = [SP+64];
	R0 = R1 + R0;
	cc =R1==0;
	[SP+64] = R0;
	if !cc jump 4 (bp); jump.s .L2500;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R0<=R3 (iu);
	if cc jump 4 (bp); jump.s .L2500;
	P2 = [SP+56];
	R2 = 92 (X);
	P1 = P5 + P2;
	R0 = B [P1] (Z);
	cc =R0==R2;
	if cc jump 4 (bp); jump.s .L3345;
	R3 = P2;
	cc =R1==R3;
	if !cc jump .L2502;
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if !cc jump .L3276;
	R0 = [SP+52];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = FP;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = ROT R0 BY 0 ||
	[SP+60] = R0 ||
	nop;
	R0 = [SP+64];
	R0 = R1 + R0;
	cc =R1==0;
	[SP+64] = R0;
	P2 = [SP+56];
	if cc jump .L2506;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R0<=R2 (iu);
	if cc jump .L2502 (bp);
.L2506:
	R3 = 1 (X);
	R3 <<= 16;
	cc =R0<=R3 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	R1 = 1 (X);
	B [SP+69] = R0;
	cc =P2==0;
	R0 = 0 (X);
	B [SP+68] = R1;
	[SP+60] = R0;
	if !cc jump .L2507 (bp);
.L3276:
	R0 = -1 (X);
.L2508:
	R1 = -19 (X);
	B [SP+208] = R1;
	R2 = R7 >> 6;
	R1 = 63 (X);
	R2 = R2 & R1;
	R6 = -128 (X);
	R1 = R7 & R1;
	R1 = R1 | R6;
	R2 = R2 | R6;
	B [SP+210] = R1;
	R1 = 3 (X);
	B [SP+209] = R2;
	R1 = R1 - R4;
.L2513:
	R2 = 63 (X);
	cc =R5<=R2 (iu);
	if !cc jump .L2512 (bp);
	P2 = R5;
	P0 = 72 (X);
	P0 = P0 + SP;
	R2 = R1 + R5;
	P1 = P0 + P2;
	P2 = R2;
	P0 = 208 (X);
	P0 = P0 + SP;
	P2 = P0 + P2;
	R2 = B [P2] (X);
	B [P1] = R2;
.L2512:
	R5 += 1;
	cc =R4==R5;
	if !cc jump .L2513 (bp);
	R1 = 98 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L2865;
	cc =R0<=R1;
	if !cc jump 4 (bp); jump.s .L3346;
	R1 = 110 (X);
	cc =R0==R1;
	if cc jump .L2869;
	cc =R0<=R1;
	if !cc jump 4 (bp); jump.s .L3347;
	R3 = 114 (X);
	cc =R0==R3;
	if !cc jump 4 (bp); jump.s .L2871;
	R7 = 116 (X);
	cc =R0==R7;
	if cc jump 6 (bp); jump.l .L2471;
	R0 = 9 (X);
	jump.s .L2487;
.L3342:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if !cc jump .L3276;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 6 (bp); jump.l .L2510;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 6 (bp); jump.l .L2510;
	P2 = [SP+56];
	jump.s .L2507;
.L2495:
	R1 = -65 (X);
	R1 = R0 + R1;
	cc =R1<=5 (iu);
	if cc jump 6 (bp); jump.l .L2471;
	R0 += -55;
	jump.s .L2494;
.L2869:
	R0 = 10 (X);
	jump.s .L2487;
.L3321:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L2560;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2561;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2561;
	P2 = [SP+56];
	jump.s .L2832;
.L3327:
	R1 = B [SP+68] (Z);
	cc =R1==0;
	if cc jump 4 (bp); jump.s .L2594;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2595;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2595;
	P2 = [SP+56];
	jump.s .L2834;
.L3310:
	R0 = [SP+56];
	R1 = [SP+60];
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L3348;
.L2687:
	R0 += 1;
	[SP+56] = R0;
.L2688:
	R4 = SP;
	R4 += 52;
	R0 = R4;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R7 = 125 (X);
	R3 = 1 (X);
	cc =R0==R7;
	B [SP+31] = R3;
	if !cc jump 4 (bp); jump.s .L3212;
	P4 = R4;
.L2690:
	P0 = 140 (X);
	P0 = P0 + SP;
	R1 = P0;
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser6stringERNS_4TextE;
	B [SP+24] = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L2893;
	P1 = [SP+56];
	R0 = [SP+60];
	R1 = R0;
	R2 = P1;
	cc =R2==R0;
	P2 = P1;
	if !cc jump 4 (bp); jump.s .L3349;
.L2692:
	P1 = P5 + P1;
	R6 = 19 (X);
	P3.H = 36845;
	FP.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R6, 23);
	P3.L = 1468;
	FP.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2709:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3350 (bp);
.L2695:
	R7 = P2;
	cc =R7==R0;
	if !cc jump 4 (bp); jump.s .L2697;
	P1 = P5 + P2;
	R2 = 58 (X);
	R0 = B [P1] (Z);
	cc =R0==R2;
	if cc jump 4 (bp); jump.s .L2896;
.L2713:
	P2 += 1;
	[SP+56] = P2;
.L2714:
	R7 = 63 (X);
	R6 = [SP+204];
	R0 = R6;
	R0 += -1;
	cc =R0<=R7 (iu);
	if cc jump 4 (bp); jump.s .L2716;
	R4 = 0 (X);
	R2 = 0 (X);
	R3 = -97 (X);
.L2717:
	P1 = R2;
	P0 = 140 (X);
	P0 = P0 + SP;
	R7 = 25 (X);
	P2 = P0 + P1;
	R1 = B [P2] (X);
	R0 = R1 + R3;
	R0 = R0.B (Z);
	cc =R0<=R7 (iu);
	if cc jump .L2719 (bp);
	R0 = R1;
	R0 += -48;
	R0 = R0.B (Z);
	R7 = 9 (X);
	cc =R0<=R7 (iu);
	if cc jump 4 (bp); jump.s .L2716;
.L2719:
	cc =R6<=R2 (iu);
	if cc jump .L2720;
	P1 = R2;
	P0 = 140 (X);
	P0 = P0 + SP;
	R0 = R6 - R2;
	P2 = R0;
	P1 += 1;
	P1 = P0 + P1;
	LSETUP (.L3101, .L3372) LC1 = P2;
	jump.s .L2724;
.L3101:
	R1 = B [P1++] (X);
.L2724:
	R0 = R1 + R3;
	R0 = R0.B (Z);
	R7 = 25 (X);
	cc =R0<=R7 (iu);
	if cc jump .L2721 (bp);
	R0 = R1;
	R0 += -48;
	R0 = R0.B (Z);
	R7 = 9 (X);
	cc =R0<=R7 (iu);
	if cc jump .L2721 (bp);
	R1 = R1.B (X);
	R0 = 45 (X);
	cc =R1==R0;
	if !cc jump .L3351;
.L2721:
.L3372:
	R2 += 1;
.L2720:
	R4 += 1;
.L2718:
	cc =R4<=1 (iu);
	if !cc jump 4 (bp); jump.s .L2716;
	P1.H = .LC17+1;
	P1.L = .LC17+1;
	P2 = P1;
	R0 = 0 (X);
.L2728:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L2728 (bp);
	cc =R0==R6;
	if !cc jump .L2729;
	R7 = 111 (X);
	R1 = B [SP+140] (X);
	cc =R1==R7;
	if !cc jump .L2729;
	P2 = 140 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L2730:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3100;
	R2 = SP;
	R1 = SP;
	R2 += 42;
	R1 += 41;
	R0 = P4;
	call __ZN12_GLOBAL__N_116machines_sectionERNS_6ParserERbS2_;
	R4 = R0;
.L2727:
	R0 = R4.B (Z);
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L2691;
	P1 = [SP+56];
.L2762:
	R0 = [SP+60];
	R2 = P1;
	cc =R2==R0;
	P2 = P1;
	R1 = R0;
	if !cc jump 4 (bp); jump.s .L3352;
.L2764:
	P1 = P5 + P2;
	R6 = 19 (X);
	P3.H = 36845;
	R4.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R6, 23);
	P3.L = 1468;
	R4.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2780:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3353 (bp);
.L2767:
	R7 = P2;
	cc =R7==R0;
	if !cc jump 4 (bp); jump.s .L2769;
	P1 = P5 + P2;
	R6 = B [P1] (Z);
.L2785:
	P2 += 1;
	[SP+56] = P2;
.L2786:
	R3 = 125 (X);
	cc =R6==R3;
	if !cc jump 4 (bp); jump.s .L2893;
	R7 = 44 (X);
	cc =R6==R7;
	if cc jump .L2690 (bp);
	jump.s .L2896;
.L3100:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if cc jump .L2730 (bp);
.L2729:
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R1 = 123 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L2733;
	R0 = P4;
	R1 = 8 (X);
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R4 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L2691;
	P0.H = __ZN12_GLOBAL__N_113invalid_countE;
	P0.L = __ZN12_GLOBAL__N_113invalid_countE;
	R0 = [P0];
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L3278;
	P1 = [SP+56];
	R4 = 0 (X);
	R7 = 0 (X);
.L2734:
	P0 = R0;
	P2 = [SP+204];
	P3.H = __ZN12_GLOBAL__N_116invalid_sectionsE;
	R3 = B [SP+140] (X);
	P3.L = __ZN12_GLOBAL__N_116invalid_sectionsE;
	R2 = P2;
	cc =R2==0;
	R2 = CC;
	I3 = R2;
	cc =R0==0;
	R2 = 1 (X);
	R1 = 0 (X);
	B0 = R3;
	I1 = 68 (X);
	if cc P0 = R2;
	R6 = P2;
	I0 = P1;
	LSETUP (.L2759, .L3371) LC1 = P0;
.L2759:
	R2 = [P3+64];
	cc =R2==R6;
	if cc jump .L3354;
.L2755:
	P1 = I1;
	R1 += 1;
.L3371:
	P3 = P3 + P1;
	cc =R7==0;
	P1 = I0;
	if !cc jump .L2762 (bp);
	R1 = 4 (X);
	cc =R0==R1;
	if !cc jump 4 (bp); jump.s .L2891;
.L2763:
	R1 = R0;
	R1 += 1;
.L2843:
	P0.H = __ZN12_GLOBAL__N_113invalid_countE;
	P0.L = __ZN12_GLOBAL__N_113invalid_countE;
	[P0] = R1;
	R1 = R0 << 4;
	R0 = (R0 + R1) << 2;
	P0 = R0;
	P3.H = __ZN12_GLOBAL__N_116invalid_sectionsE;
	P3.L = __ZN12_GLOBAL__N_116invalid_sectionsE;
	I0 = SP;
	M0 = 140 (X);
	P2 = P3 + P0;
	I0 += M0;
	P0 = 16 (X);
	P3 = P2;
	R0 = [I0++]; lsetup (1f, 1f) LC1 = P0; 1: MNOP || [P3++] = R0 || R0 = [I0++]; [P3++] = R0;
	jump.s .L2762;
.L3350:
	R3 = R6;
	R3 >>= R1;
	R1 = ~R3;
	R2 = 1 (X);
	R1 = R1 & R2;
	cc = !BITTST (R1,0);
	R7 = R1;
	if !cc jump .L2695;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L3355;
.L2696:
	P2 += 1;
	[SP+56] = P2;
.L2702:
	R1 = P2;
	cc =R0==R1;
	if cc jump .L3356;
	nop;
	nop;
.L2704:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L2709;
.L3353:
	R3 = R6;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L2767;
	R7 = P2;
	cc =R7==R0;
	if cc jump .L3357;
.L2768:
	P2 += 1;
	[SP+56] = P2;
.L2775:
	R7 = P2;
	cc =R7==R0;
	if cc jump .L3358;
	nop;
	nop;
.L2777:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L2780;
.L3356:
	R4 = B [SP+68] (X);
	R0 = R4.B (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L3359;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = FP;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2707;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2704 (bp);
.L2707:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	cc =P2==0;
	R0 = 0 (X);
	[SP+60] = R0;
	if !cc jump 4 (bp); jump.s .L2691;
	P1 = P5 + P2;
	R7 = 58 (X);
	R0 = B [P1] (Z);
	cc =R0==R7;
	if cc jump .L2713 (bp);
	jump.s .L2691;
.L3355:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2697;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = FP;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2701;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2696 (bp);
.L2701:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2702;
.L3358:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L3360;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R4;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2779;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2779;
	P2 = [SP+56];
	jump.s .L2777;
.L3357:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2769;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R4;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2774;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2768 (bp);
.L2774:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2775;
.L3351:
	cc =R6<=R2 (iu);
	R4 += 1;
	if cc jump .L2718;
	R7 = 46 (X);
	cc =R1==R7;
	R2 += 1;
	if !cc jump .L2716;
	cc =R6==R2;
	if cc jump .L2716;
	cc =R6<=R2 (iu);
	if !cc jump .L2717 (bp);
	jump.s .L2718;
.L3354:
	R2 = I3;
	CC = R2;
	if cc jump .L3264;
	nop;
	nop;
	R3 = B0;
	R2 = B [P3] (X);
	cc =R2==R3;
	if !cc jump .L2755;
	P2 = 140 (X);
	P1 = P2 + SP;
	FP = P3;
	P1 += 1;
	FP += 1;
	P2 = R6;
.L2757:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3098;
.L3264:
	cc =R7==0;
	P1 = I0;
	if !cc jump 4 (bp); jump.s .L2761;
	cc =R1<R0 (iu);
	if !cc jump .L2762;
	R2 = R1 << 4;
	P2.H = __ZN12_GLOBAL__N_113invalid_countE;
	R0 += -1;
	P2.L = __ZN12_GLOBAL__N_113invalid_countE;
	R1 = (R1 + R2) << 2;
	[P2] = R0;
	P2 = R1;
	R1 = R0 << 4;
	R0 = (R0 + R1) << 2;
	M0 = R0;
	P3.H = __ZN12_GLOBAL__N_116invalid_sectionsE;
	P3.L = __ZN12_GLOBAL__N_116invalid_sectionsE;
	P0 = P3 + P2;
	I0 = P3;
	I0 += M0;
	P3 = 16 (X);
	P2 = P0;
	R0 = [I0++]; lsetup (1f, 1f) LC1 = P3; 1: MNOP || [P2++] = R0 || R0 = [I0++]; [P2++] = R0;
	jump.s .L2762;
.L3098:
	R3 = B [FP++] (X);
	R2 = B [P1++] (X);
	cc =R3==R2;
	if cc jump .L2757 (bp);
	jump.s .L2755;
.L2697:
	R4 = B [SP+68] (X);
	R0 = R4.B (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2896;
	R0 = [SP+52];
	[SP+12] = R0;
	R6 = 0 (X);
	P3.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = R6;
	P3.L = 1468;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2711;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2711;
	P2 = [SP+56];
	R3 = 58 (X);
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	cc =R1==R3;
	if cc jump 4 (bp); jump.s .L2691;
	R1 = P2;
	cc =R0==R1;
	if cc jump 4 (bp); jump.s .L2713;
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2714;
	R0 = [SP+52];
	[SP+12] = R0;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	[SP+56] = R6;
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2715;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2715;
	P2 = [SP+56];
	jump.s .L2713;
.L3349:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2693;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P1 = [SP+56];
	if cc jump .L2694;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	P2 = P1;
	if !cc jump 4; jump.s .L2692;
.L2694:
	R7 = 1 (X);
	R7 <<= 16;
	R0 = 1 (X);
	cc =R1<=R7 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	R1 = 0 (X);
.L2693:
	P2 = P1;
	R0 = R1;
	jump.s .L2695;
.L3352:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2765;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2766;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if cc jump 4 (bp); jump.s .L2766;
	P2 = [SP+56];
	jump.s .L2764;
.L2716:
	R1 = 8 (X);
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R3 = 0 (X);
	R4 = R0;
	B [SP+31] = R3;
	jump.s .L2727;
.L2769:
	R4 = B [SP+68] (X);
	R0 = R4.B (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2896;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P1 = [SP+56];
	if !cc jump 4 (bp); jump.s .L2782;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	P2 = P1;
	if cc jump 4 (bp); jump.s .L2782;
	R7 = P1;
	P0 = P5 + P1;
	cc =R7==R0;
	R6 = B [P0] (Z);
	if cc jump 4 (bp); jump.s .L2785;
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2786;
.L2854:
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2787;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L2787;
	P2 = [SP+56];
	jump.s .L2785;
.L2807:
	R2 = [SP+56];
	P2 = R2;
.L2465:
	R0 = [SP+60];
	R3 = P2;
	cc =R3==R0;
	R1 = R0;
	if cc jump .L3361;
.L2809:
	P1 = P5 + P2;
	R7 = 19 (X);
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = B [P1] (Z);
	BITSET (R7, 23);
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2827:
	R1 += -9;
	R2 = 23 (X);
	cc =R1<=R2 (iu);
	if cc jump .L3362 (bp);
.L2812:
	R7 = P2;
	cc =R7==R0;
	if cc jump 6; jump.l .L2616;
	R0 = B [SP+68] (Z);
.L2814:
	cc =R0==0;
	if !cc jump .L2826;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	cc =R0==0;
	R1 = [SP+64];
	R1 = R0 + R1;
	if cc jump .L2828;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if !cc jump 6; jump.l .L2616;
.L2828:
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
.L2826:
	R0 = B [SP+69] (Z);
	cc =R0==0;
	if cc jump 6; jump.l .L2616;
	R0 = B [SP+29] (Z);
	cc =R0==0;
	if !cc jump 6; jump.l .L2616;
	R3 = B [SP+36] (X);
	cc = !BITTST (R3,0);
	if !cc jump 6; jump.l .L2616;
	R0 = B [SP+30] (Z);
	cc =R0==0;
	if !cc jump 6; jump.l .L2616;
	R7 = B [SP+32] (X);
	cc = !BITTST (R7,0);
	if !cc jump 6; jump.l .L2616;
	R0 = B [SP+31] (Z);
	cc =R0==0;
	if !cc jump 6; jump.l .L2616;
	R3 = B [SP+41] (X);
	B [SP+29] = R3;
	jump.l .L2417;
.L3362:
	R3 = R7;
	R3 >>= R1;
	cc = BITTST (R3,0);
	if !cc jump .L2812;
	R1 = P2;
	cc =R1==R0;
	if cc jump .L3363;
.L2813:
	P2 += 1;
.L2820:
	R1 = P2;
	cc =R1==R0;
	if cc jump .L3364;
	nop;
	nop;
.L2822:
	P1 = P5 + P2;
	R1 = B [P1] (Z);
	jump.s .L2827;
.L3363:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2814;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2819;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2813 (bp);
.L2819:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2820;
.L3364:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2826;
	R0 = 0 (X);
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	P2 = [SP+56];
	if cc jump .L2825;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump .L2822 (bp);
.L2825:
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	cc =P2==0;
	B [SP+69] = R0;
	if cc jump 6; jump.l .L2616;
	jump.s .L2826;
.L3361:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2810;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R2 = 4096 (X);
	R1 = 1 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	R2 = [SP+56];
	if cc jump .L2811;
	R7 = 1 (X);
	R7 <<= 16;
	cc =R1<=R7 (iu);
	P2 = R2;
	if cc jump .L2809 (bp);
.L2811:
	R0 = 1 (X);
	B [SP+68] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	R1 = 0 (X);
.L2810:
	P2 = R2;
	R0 = R1;
	jump.s .L2812;
.L3324:
	R1 = B [SP+208] (X);
	R2 = 111 (X);
	cc =R1==R2;
	if cc jump 4 (bp); jump.s .L2875;
	P2 = 208 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L2586:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L2587;
	jump.l .L2588;
.L2587:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if cc jump .L2586 (bp);
	jump.l .L2876;
.L3337:
	R0 = SP;
	R0 += 52;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	if cc jump .L2630;
	R0 = [SP+56];
	R0 += 1;
	[SP+56] = R0;
.L2630:
	R7 = SP;
	R7 += 52;
	R0 = R7;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R1 = 125 (X);
	R3 = 0 (X);
	cc =R0==R1;
	B [SP+30] = R3;
	if !cc jump 4 (bp); jump.s .L3205;
	P4.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	P4.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
	R5 = R3;
	P3 = [SP+320];
.L2631:
	P0 = 140 (X);
	P0 = P0 + SP;
	R1 = P0;
	R0 = R7;
	call __ZN12_GLOBAL__N_16Parser6stringERNS_4TextE;
	R4 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L3256;
	R0 = R7;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R1 = 58 (X);
	cc =R0==R1;
	if !cc jump .L2880;
	R0 = [SP+56];
	R1 = [SP+60];
	cc =R0==R1;
	if cc jump .L3365;
.L2633:
	R0 += 1;
	[SP+56] = R0;
.L2634:
	P1.H = .LC14+1;
	P1.L = .LC14+1;
	P2 = P1;
	R0 = 0 (X);
.L2636:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L2636 (bp);
	R2 = [SP+204];
	cc =R0==R2;
	if cc jump .L3366;
.L2637:
	P1.H = .LC15+1;
	P1.L = .LC15+1;
	P2 = P1;
	R0 = 0 (X);
.L2641:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L2641 (bp);
	cc =R2==R0;
	if !cc jump .L2642;
	R2 = 99 (X);
	R1 = B [SP+140] (X);
	cc =R1==R2;
	if !cc jump .L2642;
	P2 = 140 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L2643:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3104;
	R0 = R7;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R2 = 34 (X);
	cc =R0==R2;
	if cc jump .L2839 (bp);
	R1 = 8 (X);
	R0 = R7;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	R5 = 0 (X);
.L2646:
	R1 = R0.B (Z);
	cc =R1==0;
	if !cc jump 4 (bp); jump.s .L2882;
.L2841:
	R0 = R7;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	FP = R0;
	R1 = [SP+60];
	R0 = [SP+56];
	cc =R0==R1;
	if cc jump .L3367;
.L2653:
	R0 += 1;
	[SP+56] = R0;
.L2654:
	P0 = 125 (X);
	cc =FP==P0;
	if !cc jump 4 (bp); jump.s .L3256;
	P1 = 44 (X);
	cc =FP==P1;
	if cc jump .L2631 (bp);
.L2880:
	B [SP+30] = R5;
	R4 = 0 (X);
.L2632:
	R0 = B [SP+48] (Z);
	cc =R0==0;
	if !cc jump 6 (bp); jump.l .L2652;
	R0 = B [SP+30] (Z);
	cc =R0==0;
	if cc jump 6; jump.l .L2582;
	jump.l .L2652;
.L3348:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if cc jump 4 (bp); jump.s .L2688;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	P2.H = 36845;
	R0.H = __ZN12_GLOBAL__N_110read_chunkE;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0.L = __ZN12_GLOBAL__N_110read_chunkE;
	P2.L = 1468;
	call (P2);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2689;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if cc jump 4 (bp); jump.s .L2689;
	R0 = [SP+56];
	jump.s .L2687;
.L3339:
	R0 = P4;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	if cc jump .L2737;
	R0 = [SP+56];
	R0 += 1;
	[SP+56] = R0;
.L2737:
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R2 = 125 (X);
	cc =R0==R2;
	if !cc jump 4 (bp); jump.s .L3222;
	P3.H = 36845;
	R6.H = __ZN12_GLOBAL__N_110read_chunkE;
	P3.L = 1468;
	R6.L = __ZN12_GLOBAL__N_110read_chunkE;
.L2738:
	P0 = 208 (X);
	P0 = P0 + SP;
	R1 = P0;
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser6stringERNS_4TextE;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L2896;
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R1 = 58 (X);
	cc =R0==R1;
	if cc jump 4 (bp); jump.s .L2896;
	R0 = [SP+56];
	R1 = [SP+60];
	cc =R0==R1;
	if cc jump .L3368;
.L2741:
	R0 += 1;
	[SP+56] = R0;
.L2742:
	P2 = R5;
	R0 = 0 (X);
.L2744:
	R0 += 1;
	R1 = B [P2++] (X);
	cc =R1==0;
	if !cc jump .L2744 (bp);
	R1 = [SP+272];
	cc =R0==R1;
	if !cc jump .L2745;
	R7 = 118 (X);
	R1 = B [SP+208] (X);
	cc =R1==R7;
	if !cc jump .L2745;
	P2 = 208 (X);
	P1 = P2 + SP;
	P0 = R5;
	P1 += 1;
	P2 = R0;
.L2746:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3099;
	R2 = SP;
	R1 = SP;
	R2 += 43;
	R1 += 48;
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser7naturalERmRb;
.L2842:
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump 6 (bp); jump.l .L2896;
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser4peekEv;
	R7 = ROT R0 BY 0 ||
	R1 = [SP+60] ||
	nop;
	R0 = [SP+56];
	cc =R0==R1;
	if cc jump .L3369;
.L2749:
	R0 += 1;
	[SP+56] = R0;
.L2750:
	R3 = 125 (X);
	cc =R7==R3;
	if !cc jump 4 (bp); jump.s .L2752;
	R0 = 44 (X);
	cc =R7==R0;
	if cc jump .L2738 (bp);
	jump.l .L2896;
.L3099:
	R1 = B [P1++] (X);
	R0 = B [P0++] (X);
	cc =R1==R0;
	if cc jump .L2746 (bp);
.L2745:
	R1 = 8 (X);
	R0 = P4;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	jump.s .L2842;
.L3104:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if cc jump .L2643 (bp);
.L2642:
	R1 = 8 (X);
	R0 = R7;
	call __ZN12_GLOBAL__N_16Parser4skipEm;
	jump.s .L2646;
.L3365:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2634;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if !cc jump 4 (bp); jump.s .L2635;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if cc jump 4 (bp); jump.s .L2635;
	R0 = [SP+56];
	jump.s .L2633;
.L3366:
	R1 = B [SP+140] (X);
	R3 = 98 (X);
	cc =R1==R3;
	if !cc jump .L2637;
	P2 = 140 (X);
	P0 = P2 + SP;
	P0 += 1;
	P2 = R0;
.L2638:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3105;
	R2 = SP;
	R2 += 48;
	R1 = [SP+316];
	R0 = R7;
	call __ZN12_GLOBAL__N_16Parser7naturalERmRb;
	jump.s .L2646;
.L3105:
	R1 = B [P0++] (X);
	R0 = B [P1++] (X);
	cc =R1==R0;
	if cc jump .L2638 (bp);
	jump.s .L2637;
.L3369:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2750;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if cc jump .L2751;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	if !cc jump .L2751;
	R0 = [SP+56];
	jump.s .L2749;
.L3367:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2654;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P4);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if cc jump .L2655;
	R3 = 1 (X);
	R3 <<= 16;
	cc =R1<=R3 (iu);
	if !cc jump .L2655;
	R0 = [SP+56];
	jump.s .L2653;
.L3368:
	R0 = B [SP+68] (Z);
	cc =R0==0;
	if !cc jump .L2742;
	[SP+56] = R0;
	R0 = [SP+52];
	[SP+12] = R0;
	R1 = 1 (X);
	R2 = 4096 (X);
	R0 = R6;
	call (P3);
	R1 = [SP+64];
	R1 = R0 + R1;
	cc =R0==0;
	[SP+60] = R0;
	[SP+64] = R1;
	if cc jump .L2743;
	R2 = 1 (X);
	R2 <<= 16;
	cc =R1<=R2 (iu);
	if !cc jump .L2743;
	R0 = [SP+56];
	jump.s .L2741;
.L2500:
	R1 = 1 (X);
	B [SP+68] = R1;
	R1 = 1 (X);
	R1 <<= 16;
	cc =R0<=R1 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P2 = [SP+56] ||
	nop;
	[SP+60] = R0;
.L2499:
	R4 = R5;
	jump.l .L2856;
.L2459:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	R2 = [SP+56];
	B [SP+69] = R0;
	cc =R2==0;
	R0 = 0 (X);
	[SP+60] = R0;
	P0 = R2;
	if cc jump 6; jump.l .L2460;
.L2451:
	P0 = R2;
	jump.l .L2463;
.L2865:
	R0 = 8 (X);
	jump.l .L2487;
.L3289:
	R0 = SP;
	R0 += 52;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	R2 = [SP+56];
	P2 = R2;
	if cc jump .L2464;
	P2 += 1;
	R3 = 0 (X);
	R7 = 0 (X);
	R2 = P2;
	B [SP+31] = R3;
	B [SP+32] = R7;
	B [SP+30] = R3;
	B [SP+36] = R7;
	B [SP+29] = R3;
	jump.s .L2465;
.L2779:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P2 = [SP+56] ||
	nop;
	[SP+60] = R0;
	jump.s .L2767;
.L2533:
	R1 = R7 >> 6 ||
	P2 = [SP+56] ||
	nop;
	R3 = ROT R4 BY 0 ||
	R0 = [SP+60] ||
	nop;
	R2 = -64 (X);
	P0 = 0 (X);
	jump.l .L2535;
.L2893:
	R4 = B [SP+24] (X);
	jump.l .L2691;
.L3344:
	R6 = [SP+24];
	R7 = 9216 (X);
	R6 <<= 10;
	R7 = R3 + R7;
	R7 = R6 + R7;
	P2 = [SP+56];
	R0 = [SP+60];
	R4 = R5;
	jump.l .L2856;
.L2761:
	cc =R1<R0 (iu);
	if !cc jump 4; jump.s .L2762;
	jump.s .L2763;
.L3347:
	R2 = 102 (X);
	cc =R0==R2;
	if cc jump 6 (bp); jump.l .L2471;
	R0 = 12 (X);
	jump.l .L2487;
.L3346:
	R2 = 47 (X);
	cc =R0==R2;
	if cc jump .L2866;
	R3 = 92 (X);
	cc =R0==R3;
	if cc jump .L2867;
	R7 = 34 (X);
	cc =R0==R7;
	if cc jump 6; jump.l .L2471;
	R0 = 34 (X);
	jump.l .L2487;
.L3278:
	P1 = [SP+56];
.L2735:
	R1 = 1 (X);
	R0 = 0 (X);
	jump.s .L2843;
.L3212:
	R0 = R4;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	if cc jump .L2886;
	R0 = [SP+56];
	R0 += 1;
	[SP+56] = R0;
	R4 = 1 (X);
	jump.l .L2686;
.L3345:
	R0 = R1;
	R4 = R5;
	jump.l .L2856;
.L3338:
	R7 = 0 (X);
	B [SP+30] = R7;
	jump.l .L2582;
.L2839:
	P0 = 208 (X);
	P0 = P0 + SP;
	R1 = P0;
	R0 = R7;
	call __ZN12_GLOBAL__N_16Parser6stringERNS_4TextE;
	R5 = R0;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L2647;
	R0 = 0 (X);
	[P3] = R0;
	R1 = 8 (X);
	R0 = [SP+272];
	cc =R0==R1;
	if !cc jump .L2881;
	R1 = SP;
	R3 = 216 (X);
	R0 = R1 + R3;
	P0 = 208 (X);
	P2 = R0;
	P1 = P0 + SP;
	P0 = [SP+20];
	R2 = 0 (X);
	FP = -87 (X);
	I0 = -97 (X);
	P2 -= P0;
	jump.s .L2649;
.L3103:
	R2 = [P3];
.L2649:
	R0 = B [P1++] (X);
	R1 = R0.B (X);
	R3 = R1;
	P0 = R0;
	R3 += -48;
	R0 = 9 (X);
	cc =R3<=R0 (iu);
	R2 <<= 4;
	if cc jump .L2650 (bp);
	R3 = FP;
	R1 = R1 + R3;
	R1 = R1 | R2;
	[P3] = R1;
	R2 = I0;
	R1 = P0;
	R0 = R1 + R2;
	R0 = R0.B (Z);
	cc =R0<=5 (iu);
	if !cc jump .L2881;
.L2651:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L3103;
	jump.s .L2841;
.L2650:
	R2 = R3 | R2;
	[P3] = R2;
	jump.s .L2651;
.L2891:
	B [SP+31] = R4;
	jump.s .L2762;
.L2464:
	R7 = 0 (X);
	R3 = 0 (X);
	B [SP+31] = R7;
	B [SP+32] = R3;
	B [SP+30] = R7;
	B [SP+36] = R3;
	B [SP+29] = R7;
	jump.s .L2465;
.L2867:
	R0 = 92 (X);
	jump.l .L2487;
.L2866:
	R0 = 47 (X);
	jump.l .L2487;
.L2468:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	P2 = 0 (X);
.L2467:
	R0 = P2;
	P2 = [SP+56];
	jump.l .L2469;
.L2792:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P1 = [SP+56] ||
	nop;
	[SP+60] = R0;
.L2791:
	P2 = P1;
	jump.l .L2793;
.L3281:
	R2 = [SP+56];
.L2420:
	R7 = 1 (X);
	R7 <<= 16;
	R0 = 1 (X);
	cc =R1<=R7 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	P0 = R2;
	R1 = -1 (X);
	jump.l .L2422;
.L2542:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
.L2541:
	P2 = [SP+56];
	jump.l .L2543;
.L2806:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.l .L2805;
.L2554:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.l .L2553;
.L2689:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2688;
.L2595:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P1 = [SP+56] ||
	nop;
	[SP+60] = R0;
	R2 = 0 (X);
.L2594:
	P2 = P1;
	R0 = R2;
	jump.l .L2597;
.L2886:
	R4 = 1 (X);
	jump.l .L2686;
.L2751:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2750;
.L2561:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P1 = [SP+56] ||
	nop;
	[SP+60] = R0;
	R2 = 0 (X);
.L2560:
	P2 = P1;
	R0 = R2;
	jump.l .L2563;
.L2510:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.l .L3276;
.L2743:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2742;
.L2655:
	R0 = 1 (X);
	B [SP+68] = R0;
	R0 = 1 (X);
	R0 <<= 16;
	cc =R1<=R0 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2654;
.L2715:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2714;
.L2711:
	R7 = 1 (X);
	R7 <<= 16;
	R0 = 1 (X);
	cc =R1<=R7 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.l .L2691;
.L2446:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	R2 = [SP+56] ||
	nop;
	[SP+60] = R0;
.L2440:
	R0 = [SP+60];
	P0 = R2;
	jump.l .L2447;
.L3360:
	cc =R0==0;
	if cc jump 6 (bp); jump.l .L2896;
	R6 = -1 (X);
	jump.s .L2854;
.L2795:
	cc =R1==0;
	if cc jump 6 (bp); jump.l .L2471;
.L3277:
	R7 = -1 (X);
	jump.l .L2855;
.L3359:
	R4 = R7;
	jump.l .L2691;
.L2766:
	R7 = 1 (X);
	R7 <<= 16;
	R0 = 1 (X);
	cc =R1<=R7 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P1 = [SP+56] ||
	nop;
	[SP+60] = R0;
	R1 = 0 (X);
.L2765:
	R0 = R1;
	P2 = P1;
	jump.s .L2767;
.L2881:
	R5 = 0 (X);
	jump.s .L2841;
.L2647:
	R4 = B [SP+48] (X);
	R0 = R4.B (Z);
	cc =R0==0;
	if cc jump 6; jump.l .L2471;
	jump.l .L2652;
.L2875:
	R7 = 0 (X);
	B [SP+29] = R7;
	jump.l .L2588;
.L2580:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.l .L2578;
.L3256:
	B [SP+30] = R5;
	jump.s .L2632;
.L3205:
	R0 = R7;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	if cc jump .L2879;
	R0 = [SP+56];
	R0 += 1;
	[SP+56] = R0;
	R4 = 1 (X);
	jump.l .L2629;
.L3285:
	R2 = [SP+56];
.L2443:
	R7 = 1 (X);
	P0 = R2;
	R7 <<= 16;
	R0 = 1 (X);
	cc =R1<=R7 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	cc =P0==0;
	R0 = 0 (X);
	[SP+60] = R0;
	if cc jump 6; jump.l .L2444;
	jump.s .L2440;
.L2879:
	R4 = 1 (X);
	jump.l .L2629;
.L2635:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.s .L2634;
.L2752:
	R4 = B [SP+43] (X);
	R7 = R4.B (Z);
	cc =R7==0;
	if cc jump .L3370 (bp);
	R0 = [SP+48];
	cc =R0==0;
	R4 = CC;
	BITTGL (R4, 0);
	P1 = [SP+56];
.L2753:
	P0.H = __ZN12_GLOBAL__N_113invalid_countE;
	P0.L = __ZN12_GLOBAL__N_113invalid_countE;
	R0 = [P0];
	cc =R0==0;
	if cc jump .L2754;
	R7 = R4.B (Z);
	jump.s .L2734;
.L3222:
	R0 = P4;
	call __ZN12_GLOBAL__N_16Source4peekEv;
	cc =R0<0;
	P1 = [SP+56];
	if cc jump .L2739;
	P1 += 1;
	[SP+56] = P1;
.L2739:
	P2.H = __ZN12_GLOBAL__N_113invalid_countE;
	R4 = B [SP+43] (X);
	R7 = R4.B (Z);
	P2.L = __ZN12_GLOBAL__N_113invalid_countE;
	cc =R7==0;
	R0 = [P2];
	if cc jump .L2844 (bp);
	R0 = [SP+48];
	cc =R0==0;
	R4 = CC;
	BITTGL (R4, 0);
	jump.s .L2753;
.L2844:
	cc =R0==0;
	if cc jump 4; jump.s .L2734;
	jump.s .L2735;
.L2754:
	R4 = R4.B (Z);
	cc =R4==0;
	if !cc jump 4; jump.s .L2735;
	jump.s .L2762;
.L3370:
	P0.H = __ZN12_GLOBAL__N_113invalid_countE;
	P0.L = __ZN12_GLOBAL__N_113invalid_countE;
	R0 = [P0];
	cc =R0==0;
	if !cc jump 4 (bp); jump.s .L3278;
	P1 = [SP+56];
	jump.s .L2734;
.L2666:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P1 = [SP+56] ||
	nop;
	[SP+60] = R0;
	R2 = 0 (X);
.L2665:
	P2 = P1;
	R0 = R2;
	jump.l .L2667;
.L2684:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.l .L2682;
.L2614:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.l .L2612;
.L2882:
	B [SP+30] = R5;
	R4 = R0;
	jump.s .L2632;
.L2787:
	R2 = 1 (X);
	R2 <<= 16;
	R0 = 1 (X);
	cc =R1<=R2 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = 0 (X);
	[SP+60] = R0;
	jump.l .L2786;
.L2782:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	cc =P1==0;
	R0 = 0 (X);
	[SP+60] = R0;
	if !cc jump 6 (bp); jump.l .L2691;
	P1 += 1;
	[SP+56] = P1;
	jump.l .L2691;
.L2800:
	cc =R0==0;
	if cc jump .L3277 (bp);
	jump.l .L2471;
.L2857:
	R0 = P2;
	jump.l .L2480;
.L2481:
	R3 = 1 (X);
	R3 <<= 16;
	R0 = 1 (X);
	cc =R1<=R3 (iu);
	B [SP+68] = R0;
	R0 = CC;
	BITTGL (R0, 0);
	B [SP+69] = R0;
	R0 = R0 -|- R0 ||
	P2 = [SP+56] ||
	nop;
	[SP+60] = R0;
	jump.l .L2480;
.L3275:
	R2 = [SP+56];
	jump.s .L2451;
	.size	__ZN12_GLOBAL__N_113read_documentEPvRmS1_.constprop.5, .-__ZN12_GLOBAL__N_113read_documentEPvRmS1_.constprop.5
	.section	.rodata.str1.4
	.align 4
.LC18:
	.string	",\n        \""
	.align 4
.LC19:
	.string	"\n        \""
	.align 4
.LC20:
	.string	"\": {\n          \"effect\": "
	.align 4
.LC21:
	.string	"\": {\n          \"engine\": "
	.align 4
.LC22:
	.string	"},\n"
	.align 4
.LC23:
	.string	"\n      },\n"
	.align 4
.LC24:
	.string	"wb"
	.align 4
.LC25:
	.string	"{\n  \"format\": \"open-xy-project\",\n  \"project\": {\n    \"bytes\": "
	.align 4
.LC26:
	.string	",\n    \"crc32\": \""
	.align 4
.LC28:
	.string	"\"\n  },\n  \"sections\": {\n    \"open-xy.machines\": {\n      \"machines\": {"
	.align 4
.LC29:
	.string	",\n          \"page\": "
	.align 4
.LC30:
	.string	"\n        }"
	.align 4
.LC31:
	.string	"      \"profile\": \"opxy-1.2.1\",\n      \"version\": 1\n    }\n  },\n  \"version\": 1\n}\n"
	.align 4
.LC27:
	.string	"0123456789abcdef"
.text;
	.align 4
.global sdk_project_save;
.type sdk_project_save, STT_FUNC;
sdk_project_save:
	[--sp] = ( r7:4, p5:3 );

	P2.H = 36185;
	LINK 48;
	P2.L = 36980;
	R7 = R1;
	call (P2);
	cc =R0==0;
	R5 = R0;
	if cc jump .L3378 (bp);
	cc =R7==0;
	if cc jump .L3378;
	R1.H = __ZN12_GLOBAL__N_19companionE;
	R1.L = __ZN12_GLOBAL__N_19companionE;
	R0 = R7;
	call __ZN12_GLOBAL__N_114companion_pathEPKcPc;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L3479;
.L3378:
	SP += 48;
	R0 = R5;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L3479:
	R0 = SP;
	R0 += 32;
	R2 = SP;
	R1.H = __ZN12_GLOBAL__N_15chunkE;
	[SP+12] = R0;
	R2 += 28;
	R1.L = __ZN12_GLOBAL__N_15chunkE;
	R0 = R7;
	call __ZN12_GLOBAL__N_17measureEPKcPhRmS3_;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L3378 (bp);
	R0 = [SP+32];
	[SP+20] = R0;
	R1.H = .LC24;
	R0.H = __ZN12_GLOBAL__N_19companionE;
	P2.H = 36845;
	R1.L = .LC24;
	R0.L = __ZN12_GLOBAL__N_19companionE;
	P2.L = 840;
	R7 = [SP+28];
	call (P2);
	cc =R0==0;
	R6 = R0;
	if cc jump .L3378;
	P5.H = __ZN12_GLOBAL__N_14textE;
	P4.H = .LC25+1;
	P5.L = __ZN12_GLOBAL__N_14textE;
	FP.H = 36845;
	P4.L = .LC25+1;
	R3 = 123 (X);
	P2 = 0 (X);
	FP.L = 1920;
	P3 = 1024 (X);
	R4 = P5;
.L3383:
	R1 = P2;
	P2 = P5 + P2;
	B [P2] = R3;
	R3 = B [P4++] (X);
	R0 = R3.B (X);
	cc =R0==0;
	R1 += 1;
	if cc jump .L3480;
.L3385:
	R2 = 1024 (X);
	cc =R1==R2;
	if cc jump 4 (bp); jump.s .L3442;
	R1 = P3;
	[SP+16] = R3;
	[SP+12] = R6;
	R2 = 1 (X);
	R0 = R4;
	call (FP);
	P2 = 0 (X);
	R3 = [SP+16];
	R1 = P2;
	P2 = P5 + P2;
	B [P2] = R3;
	R3 = B [P4++] (X);
	R0 = R3.B (X);
	cc =R0==0;
	R1 += 1;
	if !cc jump .L3385 (bp);
.L3480:
	P4 = SP;
	R0.H = 52428;
	P4 += 36;
	P0 = 0 (X);
	R0.L = 52429;
	jump.s .L3386;
.L3443:
	P0 = P3;
	R7 = P1;
.L3386:
	A1 = R7.L * R0.L (FU);
	A1 = A1 >> 16;
	A0 = R7.H * R0.H, A1 += R7.H * R0.L (FU);
	A1 += R0.H * R7.L (FU);
	A1 = A1 >> 16;
	A0 += A1;
	R2 = A0 (FU);
	R2 >>= 3;
	P1 = R2;
	R2 = 9 (X);
	P3 = P0;
	cc =R7<=R2 (iu);
	P3 += 1;
	P2 = P1 + (P1 << 2);
	R3 = P2;
	R3 <<= 1;
	R3 = R7 - R3;
	R3 += 48;
	B [P4++] = R3;
	if !cc jump .L3443 (bp);
	P1 = 36 (X);
	P1 = P1 + SP;
	P0 += -1;
	P4 = P1;
	FP.H = 36845;
	R7.H = __ZN12_GLOBAL__N_14textE;
	P3 = P1 + P0;
	P4 += -1;
	FP.L = 1920;
	R4 = 1024 (X);
	R7.L = __ZN12_GLOBAL__N_14textE;
	jump.s .L3390;
.L3387:
	R1 = ROT R4 BY 0 ||
	[SP+16] = R3 ||
	nop;
	[SP+12] = R6;
	R2 = 1 (X);
	R0 = R7;
	call (FP);
	R1 = 1 (X);
	P1 = 0 (X);
	R3 = [SP+16];
.L3388:
	P1 = P5 + P1;
	cc =P3==P4;
	B [P1] = R3;
	if cc jump .L3389;
	nop;
	nop;
	nop;
	R3 = B [P3--] (X);
.L3390:
	R0 = 1024 (X);
	cc =R1==R0;
	if cc jump .L3387 (bp);
	P1 = R1;
	R1 += 1;
	jump.s .L3388;
.L3389:
	P4.H = .LC26+1;
	P3.H = 36845;
	R7.H = __ZN12_GLOBAL__N_14textE;
	P4.L = .LC26+1;
	FP = 44 (X);
	P3.L = 1920;
	R4 = 1024 (X);
	R7.L = __ZN12_GLOBAL__N_14textE;
	jump.s .L3393;
.L3391:
	R1 = ROT R4 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R2 = 1 (X);
	R0 = R7;
	call (P3);
	R1 = 1 (X);
	P2 = 0 (X);
.L3392:
	R0 = FP;
	R2 = B [P4++] (X);
	P2 = P5 + P2;
	B [P2] = R0;
	R0 = R2.B (X);
	cc =R0==0;
	FP = R2;
	if cc jump .L3481;
.L3393:
	R2 = 1024 (X);
	cc =R1==R2;
	if cc jump .L3391 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3392;
.L3481:
	P4.H = .LC27;
	FP.H = 36845;
	P3.H = __ZN12_GLOBAL__N_14textE;
	R7 = 28 (X);
	P4.L = .LC27;
	FP.L = 1920;
	P3.L = __ZN12_GLOBAL__N_14textE;
	jump.s .L3397;
.L3394:
	[SP+12] = R6;
	R1 = 1024 (X);
	R2 = 1 (X);
	R0 = P3;
	call (FP);
	R1 = 1 (X);
	P2 = 0 (X);
.L3395:
	R7 += -4;
	P2 = P5 + P2;
	cc =R7==-4;
	B [P2] = R4;
	if cc jump .L3482;
.L3397:
	R0 = [SP+20];
	R0 >>= R7;
	R2 = 15 (X);
	R0 = R0 & R2;
	P1 = R0;
	R0 = 1024 (X);
	cc =R1==R0;
	P2 = P4 + P1;
	R4 = B [P2] (X);
	if cc jump .L3394 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3395;
.L3482:
	FP.H = .LC28+1;
	P4.H = 36845;
	R7.H = __ZN12_GLOBAL__N_14textE;
	FP.L = .LC28+1;
	P3 = 34 (X);
	P4.L = 1920;
	R4 = 1024 (X);
	R7.L = __ZN12_GLOBAL__N_14textE;
	jump.s .L3403;
.L3400:
	R1 = ROT R4 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R2 = 1 (X);
	R0 = R7;
	call (P4);
	R1 = 1 (X);
	P2 = 0 (X);
.L3401:
	R0 = P3;
	R2 = B [FP++] (X);
	P2 = P5 + P2;
	B [P2] = R0;
	R0 = R2.B (X);
	cc =R0==0;
	P3 = R2;
	if cc jump .L3483;
.L3403:
	R2 = 1024 (X);
	cc =R1==R2;
	if cc jump .L3400 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3401;
.L3483:
	P3.H = _sdk_companion_machines;
	P3.L = _sdk_companion_machines;
	R0 = [P3];
	cc =R0==0;
	if cc jump .L3398;
	P4.H = 36845;
	R4.H = __ZN12_GLOBAL__N_14textE;
	R0 = 0 (X);
	P4.L = 1920;
	R4.L = __ZN12_GLOBAL__N_14textE;
.L3399:
	nop;
	R7 = [P3+4];
	cc =R7==0;
	[SP+20] = R7;
	if cc jump .L3404;
	P1 = R0;
	FP.H = .LC19;
	P2.H = .LC18;
	cc =R0==0;
	FP.L = .LC19;
	P2.L = .LC18;
	P1 += 1;
	if !cc FP = P2;
	[SP+24] = P1;
	R7 = B [FP++] (X);
	jump.s .L3409;
.L3407:
	[SP+12] = R6;
	R1 = 1024 (X);
	R2 = 1 (X);
	R0 = R4;
	call (P4);
	R1 = 1 (X);
	P2 = 0 (X);
.L3408:
	P2 = P5 + P2;
	B [P2] = R7;
	R7 = B [FP++] (X);
	R0 = R7.B (X);
	cc =R0==0;
	if cc jump .L3484;
.L3409:
	R0 = 1024 (X);
	cc =R1==R0;
	if cc jump .L3407 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3408;
.L3488:
	R0 = [SP+24];
.L3404:
	P3 += 16;
	R2 = [P3];
	cc =R2==0;
	if !cc jump .L3399 (bp);
	cc =R0==0;
	if cc jump .L3398;
	FP.H = .LC23;
	FP.L = .LC23;
.L3434:
	P4.H = 36845;
	R7 = B [FP++] (X);
	P3 = R7;
	R7.H = __ZN12_GLOBAL__N_14textE;
	P4.L = 1920;
	R4 = 1024 (X);
	R7.L = __ZN12_GLOBAL__N_14textE;
	jump.s .L3437;
.L3435:
	R1 = ROT R4 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R2 = 1 (X);
	R0 = R7;
	call (P4);
	R1 = 1 (X);
	P2 = 0 (X);
.L3436:
	R0 = B [FP++] (X);
	R2 = P3;
	P3 = R0;
	R0 = R0.B (X);
	P2 = P5 + P2;
	cc =R0==0;
	B [P2] = R2;
	if cc jump .L3485;
.L3437:
	R0 = 1024 (X);
	cc =R1==R0;
	if cc jump .L3435 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3436;
.L3484:
	P1 = [P3];
	R3 = B [P1] (X);
	R0 = R3.B (X);
	cc =R0==0;
	if cc jump .L3410;
	R7 = P1;
	R7 += 1;
	FP = 1024 (X);
	jump.s .L3413;
.L3411:
	R1 = FP;
	[SP+16] = R3;
	[SP+12] = R6;
	R2 = 1 (X);
	R0 = R4;
	call (P4);
	R1 = 1 (X);
	P2 = 0 (X);
	R3 = [SP+16];
.L3412:
	P1 = R7;
	P2 = P5 + P2;
	B [P2] = R3;
	R3 = B [P1++] (X);
	R0 = R3.B (X);
	cc =R0==0;
	R7 = P1;
	if cc jump .L3410;
.L3413:
	R2 = 1024 (X);
	cc =R1==R2;
	if cc jump .L3411 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3412;
.L3410:
	R0 = B [P3+12] (Z);
	FP.H = .LC21;
	P2.H = .LC20;
	cc =R0==0;
	FP.L = .LC21;
	P2.L = .LC20;
	if !cc FP = P2;
	R7 = B [FP++] (X);
	jump.s .L3417;
.L3415:
	[SP+12] = R6;
	R1 = 1024 (X);
	R2 = 1 (X);
	R0 = R4;
	call (P4);
	R1 = 1 (X);
	P2 = 0 (X);
.L3416:
	P2 = P5 + P2;
	B [P2] = R7;
	R7 = B [FP++] (X);
	R0 = R7.B (X);
	cc =R0==0;
	if cc jump .L3486;
.L3417:
	R0 = 1024 (X);
	cc =R1==R0;
	if cc jump .L3415 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3416;
.L3486:
	FP = SP;
	R0.H = 52428;
	R7 = [SP+20];
	FP += 36;
	P0 = 0 (X);
	R0.L = 52429;
	jump.s .L3418;
.L3446:
	P0 = I0;
	R7 = P1;
.L3418:
	A1 = R7.L * R0.L (FU);
	A1 = A1 >> 16;
	A0 = R7.H * R0.H, A1 += R7.H * R0.L (FU);
	A1 += R0.H * R7.L (FU);
	A1 = A1 >> 16;
	A0 += A1;
	R2 = A0 (FU);
	R2 >>= 3;
	P1 = R2;
	R2 = 9 (X);
	I0 = P0;
	M0 = 1 (X);
	cc =R7<=R2 (iu);
	P2 = P1 + (P1 << 2);
	R3 = P2;
	R3 <<= 1;
	R3 = R7 - R3;
	R3 += 48;
	I0 += M0;
	B [FP++] = R3;
	if !cc jump .L3446 (bp);
	P1 = 36 (X);
	P1 = P1 + SP;
	P2 = P1;
	P0 += -1;
	P2 += -1;
	FP = P1 + P0;
	[SP+20] = P2;
	R7 = 1024 (X);
	jump.s .L3422;
.L3419:
	R1 = ROT R7 BY 0 ||
	[SP+16] = R3 ||
	nop;
	[SP+12] = R6;
	R2 = 1 (X);
	R0 = R4;
	call (P4);
	R1 = 1 (X);
	P1 = 0 (X);
	R3 = [SP+16];
.L3420:
	P1 = P5 + P1;
	B [P1] = R3;
	P1 = [SP+20];
	cc =FP==P1;
	if cc jump .L3421;
	nop;
	nop;
	nop;
	R3 = B [FP--] (X);
.L3422:
	R0 = 1024 (X);
	cc =R1==R0;
	if cc jump .L3419 (bp);
	P1 = R1;
	R1 += 1;
	jump.s .L3420;
.L3421:
	R7.H = .LC29+1;
	R7.L = .LC29+1;
	FP = 44 (X);
	jump.s .L3425;
.L3423:
	[SP+12] = R6;
	R1 = 1024 (X);
	R2 = 1 (X);
	R0 = R4;
	call (P4);
	R1 = 1 (X);
	P2 = 0 (X);
.L3424:
	P1 = R7;
	R2 = FP;
	P2 = P5 + P2;
	B [P2] = R2;
	R0 = B [P1++] (X);
	FP = R0;
	R0 = R0.B (X);
	cc =R0==0;
	R7 = P1;
	if cc jump .L3487;
.L3425:
	R0 = 1024 (X);
	cc =R1==R0;
	if cc jump .L3423 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3424;
.L3487:
	P0 = SP;
	R2.H = 52428;
	R0 = [P3+8];
	P0 += 36;
	I0 = 0 (X);
	R2.L = 52429;
	jump.s .L3426;
.L3447:
	I0 = FP;
	R0 = P1;
.L3426:
	A1 = R0.L * R2.L (FU);
	A1 = A1 >> 16;
	A0 = R0.H * R2.H, A1 += R0.H * R2.L (FU);
	A1 += R2.H * R0.L (FU);
	A1 = A1 >> 16;
	A0 += A1;
	A1 = A0;
	R3 = A1 (FU);
	R3 >>= 3;
	P1 = R3;
	R7 = 9 (X);
	FP = I0;
	cc =R0<=R7 (iu);
	FP += 1;
	P2 = P1 + (P1 << 2);
	R3 = P2;
	R3 <<= 1;
	R3 = R0 - R3;
	R3 += 48;
	B [P0++] = R3;
	if !cc jump .L3447 (bp);
	P1 = 36 (X);
	P1 = P1 + SP;
	P2 = P1;
	FP += -2;
	P2 += -1;
	FP = P1 + FP;
	[SP+20] = P2;
	R7 = 1024 (X);
	jump.s .L3430;
.L3427:
	R1 = ROT R7 BY 0 ||
	[SP+16] = R3 ||
	nop;
	[SP+12] = R6;
	R2 = 1 (X);
	R0 = R4;
	call (P4);
	R1 = 1 (X);
	P1 = 0 (X);
	R3 = [SP+16];
.L3428:
	P1 = P5 + P1;
	B [P1] = R3;
	P1 = [SP+20];
	cc =P1==FP;
	if cc jump .L3429;
	nop;
	nop;
	nop;
	R3 = B [FP--] (X);
.L3430:
	R0 = 1024 (X);
	cc =R1==R0;
	if cc jump .L3427 (bp);
	P1 = R1;
	R1 += 1;
	jump.s .L3428;
.L3429:
	R7.H = .LC30+1;
	R7.L = .LC30+1;
	FP = 10 (X);
	jump.s .L3433;
.L3431:
	[SP+12] = R6;
	R1 = 1024 (X);
	R2 = 1 (X);
	R0 = R4;
	call (P4);
	R1 = 1 (X);
	P2 = 0 (X);
.L3432:
	P1 = R7;
	R2 = FP;
	P2 = P5 + P2;
	B [P2] = R2;
	R0 = B [P1++] (X);
	FP = R0;
	R0 = R0.B (X);
	cc =R0==0;
	R7 = P1;
	if cc jump .L3488;
.L3433:
	R0 = 1024 (X);
	cc =R1==R0;
	if cc jump .L3431 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3432;
.L3485:
	FP.H = .LC31+1;
	P4.H = 36845;
	R7.H = __ZN12_GLOBAL__N_14textE;
	FP.L = .LC31+1;
	P3 = 32 (X);
	P4.L = 1920;
	R4 = 1024 (X);
	R7.L = __ZN12_GLOBAL__N_14textE;
	jump.s .L3440;
.L3438:
	R1 = ROT R4 BY 0 ||
	[SP+12] = R6 ||
	nop;
	R2 = 1 (X);
	R0 = R7;
	call (P4);
	R1 = 1 (X);
	P2 = 0 (X);
.L3439:
	R0 = B [FP++] (X);
	R2 = P3;
	P3 = R0;
	R0 = R0.B (X);
	P2 = P5 + P2;
	cc =R0==0;
	B [P2] = R2;
	if cc jump .L3489;
.L3440:
	R0 = 1024 (X);
	cc =R1==R0;
	if cc jump .L3438 (bp);
	P2 = R1;
	R1 += 1;
	jump.s .L3439;
.L3489:
	cc =R1==0;
	if cc jump .L3441;
	R0.H = __ZN12_GLOBAL__N_14textE;
	P2.H = 36845;
	[SP+12] = R6;
	R2 = 1 (X);
	R0.L = __ZN12_GLOBAL__N_14textE;
	P2.L = 1920;
	call (P2);
.L3441:
	P2.H = 36845;
	R0 = R6;
	P2.L = 174;
	call (P2);
	jump.s .L3378;
.L3442:
	P2 = R1;
	jump.s .L3383;
.L3398:
	FP.H = .LC22;
	FP.L = .LC22;
	jump.s .L3434;
	.size	sdk_project_save, .-sdk_project_save
	.align 4
.global sdk_project_load;
.type sdk_project_load, STT_FUNC;
sdk_project_load:
	[--sp] = ( r7:4, p5:3 );

	P2.H = 36185;
	LINK 32;
	P2.L = 39696;
	P5 = R0;
	R6 = R1;
	call (P2);
	cc =R0==0;
	R7 = R0;
	if cc jump .L3490 (bp);
	cc =P5==0;
	if cc jump .L3490;
	cc =R6==0;
	if cc jump .L3490;
	R1.H = __ZN12_GLOBAL__N_119read_companion_pathE;
	R1.L = __ZN12_GLOBAL__N_119read_companion_pathE;
	R0 = R6;
	call __ZN12_GLOBAL__N_114companion_pathEPKcPc;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L3490;
	R1.H = .LC0;
	R0.H = __ZN12_GLOBAL__N_119read_companion_pathE;
	P2.H = 36845;
	R1.L = .LC0;
	R0.L = __ZN12_GLOBAL__N_119read_companion_pathE;
	P2.L = 840;
	call (P2);
	cc =R0==0;
	R5 = R0;
	if cc jump .L3490;
	R2 = SP;
	R0 = 0 (X);
	R1 = SP;
	[SP+16] = R0;
	[SP+20] = R0;
	R2 += 20;
	R1 += 16;
	R0 = R5;
	call __ZN12_GLOBAL__N_113read_documentEPvRmS1_.constprop.5;
	R4 = R0;
	P2.H = 36845;
	R0 = R5;
	P2.L = 174;
	R4 = R4.B (Z);
	call (P2);
	cc =R4==0;
	if cc jump .L3490 (bp);
	R0 = SP;
	R0 += 28;
	R2 = SP;
	R1.H = __ZN12_GLOBAL__N_110read_chunkE;
	[SP+12] = R0;
	R2 += 24;
	R1.L = __ZN12_GLOBAL__N_110read_chunkE;
	R0 = R6;
	call __ZN12_GLOBAL__N_17measureEPKcPhRmS3_;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L3490;
	R1 = [SP+24];
	R0 = [SP+16];
	cc =R1==R0;
	if !cc jump .L3490 (bp);
	R1 = [SP+28];
	R0 = [SP+20];
	cc =R1==R0;
	if !cc jump .L3490 (bp);
	R0.H = 5;
	R0.L = 19644;
	P1 = R0;
	I1.H = __ZN12_GLOBAL__N_110engine_mapE;
	I0.H = __ZN12_GLOBAL__N_110effect_mapE;
	I2.H = 65530;
	R3.H = 5;
	P5 = P5 + P1;
	R1 = -8 (X);
	I1.L = __ZN12_GLOBAL__N_110engine_mapE;
	I0.L = __ZN12_GLOBAL__N_110effect_mapE;
	R4 = 256 (X);
	R5 = 63 (X);
	B0 = 16 (X);
	I2.L = 49368;
	FP = 21492 (X);
	R3.L = 16196;
	P0 = 16 (X);
	LSETUP (.L3497, .L3533) LC0 = P0;
.L3497:
	cc =R1<=5 (iu);
	if cc jump .L3493;
	R0 = R1;
	R0 += 8;
	R2 = 8 (X);
	cc =R0<R2 (iu);
	R6 = I0;
	R2 = I1;
	if !cc R2 = R6;
	R6 = 8 (X);
	cc =R0<R6 (iu);
	R0 = [P5];
	R6 = 16 (X);
	if cc P4 = R4; if !cc P4 = R5;
	P2 = B0;
	cc =R0<=R6 (iu);
	if cc P2 = R0;
	cc =R0==0;
	if cc jump .L3493;
	P1 = I2;
	cc =P2==0;
	P0 = P5 + P1;
	if cc jump .L3530;
	nop;
	nop;
.L3532:
	LSETUP (.L3496, .L3531) LC1 = P2;
.L3496:
	P1 = [P0];
	cc =P1<P4 (iu);
	if !cc jump .L3495 (bp);
	P3 = R2;
	P1 = P3 + (P1 << 2);
	R0 = [P1];
	cc =R0==-2;
	if cc jump .L3495;
	[P0] = R0;
.L3495:
.L3531:
	P0 = P0 + FP;
.L3493:
	P1 = R3;
	R1 += 1;
.L3533:
	P5 = P5 + P1;
.L3490:
	SP += 32;
	FP = [SP++];
	R0 = R7;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L3530:
	P2 = 1 (X);
	jump.s .L3532;
	.size	sdk_project_load, .-sdk_project_load
	.local	__ZN12_GLOBAL__N_113invalid_countE
	.comm	__ZN12_GLOBAL__N_113invalid_countE,4,4
	.local	__ZN12_GLOBAL__N_116invalid_sectionsE
	.comm	__ZN12_GLOBAL__N_116invalid_sectionsE,272,4
	.local	__ZN12_GLOBAL__N_112listed_countE
	.comm	__ZN12_GLOBAL__N_112listed_countE,4,4
	.local	__ZN12_GLOBAL__N_16listedE
	.comm	__ZN12_GLOBAL__N_16listedE,5120,2
	.local	__ZN12_GLOBAL__N_110effect_mapE
	.comm	__ZN12_GLOBAL__N_110effect_mapE,252,4
	.local	__ZN12_GLOBAL__N_110engine_mapE
	.comm	__ZN12_GLOBAL__N_110engine_mapE,1024,4
	.local	__ZN12_GLOBAL__N_19crc_tableE
	.comm	__ZN12_GLOBAL__N_19crc_tableE,1024,4
	.local	__ZN12_GLOBAL__N_119read_companion_pathE
	.comm	__ZN12_GLOBAL__N_119read_companion_pathE,256,1
	.local	__ZN12_GLOBAL__N_110read_chunkE
	.comm	__ZN12_GLOBAL__N_110read_chunkE,4096,1
	.local	__ZN12_GLOBAL__N_19companionE
	.comm	__ZN12_GLOBAL__N_19companionE,256,1
	.local	__ZN12_GLOBAL__N_14textE
	.comm	__ZN12_GLOBAL__N_14textE,1024,1
	.local	__ZN12_GLOBAL__N_15chunkE
	.comm	__ZN12_GLOBAL__N_15chunkE,4096,1
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
