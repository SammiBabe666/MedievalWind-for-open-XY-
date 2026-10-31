.file "sdk/platform/opxy-1.2.1/registration.cpp";
.text;
	.align 4
.type __ZN4opxy8platform8registry12_GLOBAL__N_15ownedEPVKmRKNS0_6RecordEm, STT_FUNC;
__ZN4opxy8platform8registry12_GLOBAL__N_15ownedEPVKmRKNS0_6RecordEm:
	P2 = R0;
	P1 = R1;
	[--sp] = ( p5:4 );

	R0 = [P2];
	R1 = [P1];
	cc =R1==R0;
	if !cc jump .L12 (bp);
	R0 = [P2+4];
	R1 = [P1+4];
	cc =R1==R0;
	if cc jump .L19 (bp);
.L12:
	R0 = 0 (X);
.L1:
	( p5:4 ) = [sp++];

	rts;
.L19:
	nop;
	R1 = [P2+8];
	R0 = [P1+20];
	cc =R1==R0;
	if !cc jump .L12 (bp);
	R0 = [P2+12];
	cc =R0==R2;
	if !cc jump .L12 (bp);
	P4 = [P1+8];
	R1 = 0 (X);
	P1 = 16 (X);
	P0 = P4;
	LSETUP (.L4, .L21) LC1 = P1;
.L4:
	R0 = B [P0++] (X);
	cc =R0==0;
	if cc jump .L3;
.L21:
	R1 += 1;
	R1 = 0 (X);
.L3:
	P1 = 0 (X);
	P2 += 16;
	P0 = 32 (X);
	LSETUP (.L6, .L20) LC1 = P0;
.L6:
	P5 = P2 + P1;
	R2 = P1;
	R0 = B [P5] (X);
	cc =R1<=R2 (iu);
	R0 = R0.B (Z);
	if cc jump .L11 (bp);
	P5 = P4 + P1;
	R2 = B [P5] (Z);
.L5:
	cc =R0==R2;
	if !cc jump .L12;
.L20:
	P1 += 1;
	R0 = 1 (X);
	jump.s .L1;
.L11:
	R2 = 0 (X);
	jump.s .L5;
	.size	__ZN4opxy8platform8registry12_GLOBAL__N_15ownedEPVKmRKNS0_6RecordEm, .-__ZN4opxy8platform8registry12_GLOBAL__N_15ownedEPVKmRKNS0_6RecordEm
	.align 4
.global __ZN4opxy8platform8registry3addERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordE;
.type __ZN4opxy8platform8registry3addERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordE, STT_FUNC;
__ZN4opxy8platform8registry3addERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordE:
	[--sp] = ( r7:4, p5:3 );

	P4 = R2;
	[--SP] = RETS;
	SP += -40;
	P5 = R0;
	R7 = 0 (X);
	P3 = [P4+12];
	R4 = [P4+16];
	P1 = [P4+8];
	P2 = 16 (X);
	LSETUP (.L24, .L54) LC1 = P2;
.L24:
	R0 = B [P1++] (X);
	cc =R0==0;
	if cc jump .L23;
	nop;
.L54:
	R7 += 1;
	R7 = 0 (X);
.L23:
	P2 = [P5+4];
	cc =P2<=P3 (iu);
	if cc jump .L36;
	cc =R4==0;
	if cc jump .L36;
	nop;
	nop;
	P2 = R1;
	R0 = [P2];
	cc =R0<=R4 (iu);
	if cc jump .L36;
	cc =R7==0;
	if cc jump .L36;
	P2 = P3 + (P3 << 1);
	R6 = P2;
	R6 <<= 4;
	R0 = [P5];
	R6 = R6 + R0;
	P2 = R6;
	P1 = 12 (X);
	LSETUP (.L27, .L53) LC1 = P1;
.L27:
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L26;
	nop;
.L53:
	P2 += 4;
	R5 = 0 (X);
.L32:
	nop;
	P2 = [P5+12];
	R0 = [P2+4];
	cc =R0==0;
	if cc jump .L37;
	P1 = SP;
	R0 = 0 (X);
	[SP+12] = R0;
	[SP+16] = R0;
	[SP+20] = R0;
	[SP+24] = R0;
	[SP+28] = R0;
	[SP+32] = R0;
	[SP+36] = R0;
	P0 = [P4+8];
	P1 += 16;
	P2 = R7;
	LSETUP (.L28, .L52) LC1 = P2;
.L28:
	R0 = B [P0++] (X);
.L52:
	B [P1++] = R0;
	P2 = [P5+16];
	R0 = 15 (X);
	[SP+36] = R0;
	R0 = SP;
	[SP+32] = R7;
	R0 += 12;
	call (P2);
	R1 = P3;
	cc =R1==R0;
	if cc jump .L51;
	nop;
	nop;
	nop;
	R1 = [P5+8];
	cc =R1==R0;
	if !cc jump .L39;
	cc = !BITTST (R5,0);
	if !cc jump .L31;
.L30:
	R2 = R4;
	R1 = P3;
	R0 = P4;
	P2 = [P5+20];
	call (P2);
	R2 = R4;
	R1 = P4;
	R0 = R6;
	call __ZN4opxy8platform8registry12_GLOBAL__N_15ownedEPVKmRKNS0_6RecordEm;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L31;
	nop;
	R0 = SP;
	R0 += 12;
	P2 = [P5+16];
	call (P2);
	P2 = R0;
	R0 = 1 (X);
	cc =P3==P2;
	if !cc jump .L31;
.L22:
	SP += 40;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L26:
	R2 = R4;
	R1 = P4;
	R0 = R6;
	call __ZN4opxy8platform8registry12_GLOBAL__N_15ownedEPVKmRKNS0_6RecordEm;
	R0 = R0.B (Z);
	cc =R0==0;
	R5 = 1 (X);
	if !cc jump .L32 (bp);
	R0 = -2 (X);
	jump.s .L22;
.L51:
	cc = !BITTST (R5,0);
	if cc jump .L30 (bp);
	R0 = 2 (X);
	jump.s .L22;
.L31:
	R0 = -5 (X);
	jump.s .L22;
.L36:
	R0 = -1 (X);
	jump.s .L22;
.L39:
	R0 = -4 (X);
	jump.s .L22;
.L37:
	R0 = -3 (X);
	jump.s .L22;
	.size	__ZN4opxy8platform8registry3addERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordE, .-__ZN4opxy8platform8registry3addERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordE
	.align 4
.global __ZN4opxy8platform8registry10add_screenERKNS1_5PagesERKNS0_6RecordERKNS0_6ScreenE;
.type __ZN4opxy8platform8registry10add_screenERKNS1_5PagesERKNS0_6RecordERKNS0_6ScreenE, STT_FUNC;
__ZN4opxy8platform8registry10add_screenERKNS1_5PagesERKNS0_6RecordERKNS0_6ScreenE:
	P1 = R1;
	[--sp] = ( p5:3 );

	[--SP] = RETS;
	SP += -12;
	P2 = R0;
	P5 = [P1+16];
	P3 = R2;
	cc =P5==0;
	if cc jump .L66;
	nop;
	nop;
	nop;
	P1 = [P2];
	cc =P1<=P5 (iu);
	if cc jump .L66;
	nop;
	nop;
	nop;
	P2 = [P2+4];
	call (P2);
	P4 = R0;
	P0 = [P3];
	P4 = P4 + (P5 << 2);
	P2 = [P4];
	cc =P2==P0;
	if cc jump .L59;
	nop;
	nop;
	nop;
	R0 = [P4];
	cc =R0==0;
	if cc jump .L70;
.L66:
	R0 = 0 (X);
.L55:
	SP += 12;
	RETS = [SP++];
	( p5:3 ) = [sp++];

	rts;
.L70:
	P2 = [P3+4];
	P2 = P2 >> 2;
	cc =P2==0;
	if cc jump .L60;
	nop;
	nop;
	nop;
	R0 = [P0];
	cc =R0==0;
	if !cc jump .L66;
	P1 = P0;
	P1 += 4;
	P2 = P0 + (P2 << 2);
	P2 -= P1;
	P2 = P2 >> 2;
	P2 += 1;
.L61:
	P2 += -1;
	cc =P2==0;
	if !cc jump .L62;
	nop;
	nop;
	nop;
.L60:
	P2 = [P3+16];
	R1 = P5;
	R0 = P0;
	call (P2);
	P2 = [P3];
	R1 = P2;
	cc =R0==R1;
	if !cc jump .L66 (bp);
	P0 = [P4];
	cc =P2==P0;
	if !cc jump .L66 (bp);
.L59:
	R0 = [P0];
	R1 = [P3+8];
	cc =R1==R0;
	if !cc jump .L66 (bp);
	R0 = [P0+4];
	R1 = [P3+12];
	cc =R1==R0;
	if !cc jump .L66 (bp);
	P2 = [P0+12];
	cc =P5==P2;
	if !cc jump .L66 (bp);
	R0 = [P0+16];
	cc =R0==0;
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L55;
.L62:
	R0 = [P1++];
	cc =R0==0;
	if cc jump .L61 (bp);
	jump.s .L66;
	.size	__ZN4opxy8platform8registry10add_screenERKNS1_5PagesERKNS0_6RecordERKNS0_6ScreenE, .-__ZN4opxy8platform8registry10add_screenERKNS1_5PagesERKNS0_6RecordERKNS0_6ScreenE
	.align 4
.global __ZN4opxy8platform8registry5readyERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordEPKNS0_6ScreenE;
.type __ZN4opxy8platform8registry5readyERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordEPKNS0_6ScreenE, STT_FUNC;
__ZN4opxy8platform8registry5readyERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordEPKNS0_6ScreenE:
	P0 = R0;
	P1 = R2;
	[--sp] = ( p5:3 );

	[--SP] = RETS;
	SP += -12;
	P5 = [P0+4];
	P2 = [P1+12];
	P4 = R1;
	cc =P2<P5 (iu);
	if !cc jump .L80;
	nop;
	nop;
	nop;
	P5 = [P1+16];
	cc =P5==0;
	if cc jump .L80;
	P3 = [P4];
	cc =P5<P3 (iu);
	if cc jump .L90;
.L80:
	R0 = 0 (X);
.L71:
	SP += 12;
	RETS = [SP++];
	( p5:3 ) = [sp++];

	rts;
.L90:
	P2 = P2 + (P2 << 1);
	R2 = P2;
	R2 <<= 4;
	R0 = [P0];
	R0 = R2 + R0;
	R1 = P1;
	R2 = P5;
	call __ZN4opxy8platform8registry12_GLOBAL__N_15ownedEPVKmRKNS0_6RecordEm;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L80;
	R0 = [SP+40];
	cc =R0==0;
	if cc jump .L76;
	nop;
	nop;
	nop;
	P2 = [P4+12];
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L80;
	nop;
	nop;
	P0 = [SP+40];
	P2 = [P4+8];
	P2 = P2 + (P5 << 2);
	P1 = [P2];
	P2 = [P0];
	cc =P1==P2;
	if !cc jump .L80 (bp);
	R0 = [P2];
	R1 = [P0+8];
	cc =R1==R0;
	if !cc jump .L80 (bp);
	R0 = [P2+4];
	R1 = [P0+12];
	cc =R1==R0;
	if !cc jump .L80 (bp);
	P1 = [P2+12];
	cc =P5==P1;
	if !cc jump .L80 (bp);
	R0 = [P2+16];
	cc =R0==0;
	if cc jump .L80 (bp);
	R0 = [P2+8];
	cc =R0==0;
	R0 = CC;
	BITTGL (R0, 0);
	jump.s .L71;
.L76:
	R0 = 1 (X);
	jump.s .L71;
	.size	__ZN4opxy8platform8registry5readyERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordEPKNS0_6ScreenE, .-__ZN4opxy8platform8registry5readyERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordEPKNS0_6ScreenE
	.align 4
.global __ZN4opxy8platform8registry5knownERKNS1_8RegistryEPKNS1_11StockStringE;
.type __ZN4opxy8platform8registry5knownERKNS1_8RegistryEPKNS1_11StockStringE, STT_FUNC;
__ZN4opxy8platform8registry5knownERKNS1_8RegistryEPKNS1_11StockStringE:
	[--sp] = ( p5:5 );

	P5 = R0;
	[--SP] = RETS;
	SP += -12;
	P2 = [P5+12];
	R2 = [P2+4];
	cc =R2==0;
	if cc jump .L93;
	nop;
	nop;
	R0 = R1;
	P2 = [P5+16];
	call (P2);
	R1 = [P5+8];
	cc =R0==R1;
	R0 = CC;
	BITTGL (R0, 0);
.L91:
	SP += 12;
	RETS = [SP++];
	( p5:5 ) = [sp++];

	rts;
.L93:
	R0 = 1 (X);
	jump.s .L91;
	.size	__ZN4opxy8platform8registry5knownERKNS1_8RegistryEPKNS1_11StockStringE, .-__ZN4opxy8platform8registry5knownERKNS1_8RegistryEPKNS1_11StockStringE
	.align 4
.global __ZN4opxy8platform8registry12name_matchesERKNS0_6RecordEPKNS1_11StockStringE;
.type __ZN4opxy8platform8registry12name_matchesERKNS0_6RecordEPKNS1_11StockStringE, STT_FUNC;
__ZN4opxy8platform8registry12name_matchesERKNS0_6RecordEPKNS1_11StockStringE:
	P2 = R0;
	[--sp] = ( p5:5 );

	SP += -4;
	P5 = R1;
	R0 = 0 (X);
	P0 = [P2+8];
	P2 = 16 (X);
	P1 = P0;
	LSETUP (.L96, .L111) LC1 = P2;
.L96:
	R2 = B [P1++] (X);
	cc =R2==0;
	if cc jump .L95;
.L111:
	R0 += 1;
.L98:
	SP += 4;
	R0 = 0 (X);
	( p5:5 ) = [sp++];

	rts;
.L95:
	cc =R0==0;
	if cc jump .L98;
	nop;
	nop;
	nop;
	R1 = [P5+20];
	cc =R1==R0;
	if !cc jump .L98 (bp);
	R1 = [P5+24];
	cc =R1<R0 (iu);
	if cc jump .L98;
	R2 = 15 (X);
	P1 = P5;
	cc =R1<=R2 (iu);
	P1 += 4;
	if !cc jump .L99;
	[SP] = P1;
.L100:
	P2 = R0;
	LSETUP (.L101, .L110) LC1 = P2;
.L101:
	R1 = B [P1++] (X);
	R0 = B [P0++] (X);
	cc =R1==R0;
	if !cc jump .L98;
.L110:
	nop;
	SP += 4;
	R0 = 1 (X);
	( p5:5 ) = [sp++];

	rts;
.L99:
	R1 = B [P5+4] (X);
	B [SP] = R1;
	R1 = B [P5+5] (X);
	B [SP+1] = R1;
	R1 = B [P5+6] (X);
	B [SP+2] = R1;
	R1 = B [P5+7] (X);
	B [SP+3] = R1;
	P1 = [SP];
	cc =P1==0;
	if !cc jump .L100 (bp);
	jump.s .L98;
	.size	__ZN4opxy8platform8registry12name_matchesERKNS0_6RecordEPKNS1_11StockStringE, .-__ZN4opxy8platform8registry12name_matchesERKNS0_6RecordEPKNS1_11StockStringE
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
