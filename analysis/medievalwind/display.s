.file "display_binding.cpp";
.global ___modsi3;
.global ___divsi3;
	.section	.rodata._ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE.str1.4,"aMS",@progbits,1
	.align 4
.LC12:
	.string	"off"
	.align 4
.LC0:
	.string	"Reed"
	.align 4
.LC1:
	.string	"Bore"
	.align 4
.LC2:
	.string	"Bell"
	.align 4
.LC3:
	.string	"Breath"
	.align 4
.LC4:
	.string	"Bend"
	.align 4
.LC5:
	.string	"Crum"
	.align 4
.LC6:
	.string	"Hall"
	.align 4
.LC7:
	.string	"Echo"
	.section	.rodata
	.align 4
.LC11:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.align 4
.LC10:
	.long	65536
	.long	60097
	.long	55109
	.long	50535
	.long	46341
	.long	42495
	.long	38968
	.long	35734
	.long	32768
	.section	.text._ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE,"axG",@progbits,_ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE,comdat
	.align 4
	.weak	__ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE
.type __ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE, STT_FUNC;
__ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE:
	[--sp] = ( r7:4, p5:3 );

	LINK 300;
	P0 = 168 (X);
	P2 = SP + P0;
	I0.H = .LC11;
	P0 = 236 (X);
	[SP+336] = R0;
	[SP+344] = R2;
	P1 = 7 (X);
	P0 = P0 + SP;
	I0.L = .LC11;
	R0 = [I0++]; lsetup (1f, 1f) LC1 = P1; 1: MNOP || [P2++] = R0 || R0 = [I0++]; [P2++] = R0;
	R7 = R1;
	R0 = P0;
	R2 = 64 (X);
	R1 = 0 (X);
	call _memset;
	P1 = R7;
	P2 = R7;
	P3 = 68 (X);
	P0 = 236 (X);
	FP = P0 + SP;
	P1 += 36;
	[SP+24] = P1;
	P5 = P1;
	P3 = P2 + P3;
	R6 = 49 (X);
	R5 = 0 (X);
.L10:
	nop;
	R0 = [P5++];
	cc =R0<0;
	if cc jump .L209;
	R0 >>= 10;
	P2 = R0;
	P1.H = 16;
	P1.L = 0;
	R0 = 100 (X);
	P2 = P2 + (P2 << 2);
	P2 = P2 + (P2 << 2);
	P2 = P1 + (P2 << 2);
	R4 = P2;
	R4 >>= 21;
	cc =R4==R0;
	if !cc jump .L3 (bp);
	B [SP+200] = R6;
	P4 = 48 (X);
	P2 = 3 (X);
	R0 = 48 (X);
	P1 = 2 (X);
	R1 = 1 (X);
.L4:
	P0 = 200 (X);
	P0 = P0 + SP;
	R2 = P0;
	R1 = R2 + R1;
	P0 = R1;
	B [P0] = R0;
.L2:
	P0 = 200 (X);
	P0 = P0 + SP;
	R0 = P4;
	P1 = P0 + P1;
	P2 = P0 + P2;
	B [P1] = R0;
	B [P2] = R5;
	R0 = B [SP+200] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L362;
	P1 = 200 (X);
	P2 = P1 + SP;
	P0 = FP;
	B [P0++] = R0;
	P2 += 1;
	P4 = 1 (X);
	P1 = 6 (X);
	LSETUP (.L8, .L414) LC1 = P1;
.L8:
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L5;
	B [P0++] = R0;
.L414:
	P4 += 1;
	B [FP+7] = R5;
.L195:
	cc =P3==P5;
	FP += 8;
	if !cc jump .L10 (bp);
	P0 = R7;
	R0 = [P0+60];
	cc =R0<=0;
	if cc jump .L363;
	R1 = R0 >> 28;
	P2 = R1;
	P1.H = __ZN12medievalwind12_GLOBAL__N_1L11hall_tenthsE;
	P1.L = __ZN12medievalwind12_GLOBAL__N_1L11hall_tenthsE;
	R0 <<= 4;
	R1 = R0 >> 19;
	P0 = P1 + (P2 << 2);
	R0 = [P0+4];
	R0 *= R1;
	R6 = 4096 (X);
	R0 = R0 + R6;
	R6 = 8192 (X);
	R6 = R6 - R1;
	R1 = [P0];
	R6 *= R1;
	R6 = R0 + R6;
	R6 >>= 13;
	R1 = 10 (X);
	R0 = R6;
	call ___divsi3;
	R5 = R0;
	R0 = 46 (X);
	R5 += 48;
	B [SP+201] = R0;
	R1 = 10 (X);
	R0 = R6;
	B [SP+200] = R5;
	call ___modsi3;
	R0 += 48;
	R4 = R5;
	B [SP+202] = R0;
	R5 = R5.B (X);
	R0 = 115 (X);
	B [SP+203] = R0;
	cc =R5==0;
	R0 = 0 (X);
	B [SP+204] = R0;
	if cc jump .L364;
	P5 = 300 (X);
	P2 = 285 (X);
	P1 = -99 (X);
	P5 = P5 + SP;
	P0 = SP + P2;
	B [SP+284] = R4;
	P1 = P5 + P1;
	R1 = 1 (X);
	P2 = 6 (X);
	LSETUP (.L19, .L413) LC1 = P2;
.L19:
	R0 = B [P1++] (X);
	R2 = R0.B (X);
	cc =R2==0;
	if cc jump .L17;
	B [P0++] = R0;
.L413:
	R1 += 1;
.L13:
	R0 = 0 (X);
	B [SP+291] = R0;
.L196:
	P1 = R7;
	R0.H = 770;
	P5 = [SP+24];
	R0.L = 256;
	[SP+160] = R0;
	R0.H = 1798;
	R0.L = 1284;
	P0 = 160 (X);
	P1 += 32;
	M2 = 0 (X);
	[SP+164] = R0;
	P2 = SP + P0;
	R0 = 4 (X);
	R2 = 1 (X);
	P5 -= P1;
	R3 = M2;
	LSETUP (.L316, .L412) LC1 = P5;
	jump.s .L16;
.L316:
	R0 = B [P2+4] (X);
.L16:
	R1 = B [P2++] (Z);
	R0 = R0.B (Z);
	cc =R1==R0;
	if cc jump .L22;
	nop;
	nop;
	nop;
	R1 = B [P1] (Z);
	cc =R1==R0;
	if cc R3 = R2;
.L22:
.L412:
	P1 += 1;
	P0 = [SP+336];
	cc =R3==0;
	R0 = 0 (X);
	R1 = 1024 (X);
	if cc R1 = R0;
	B0 = R1;
	R1 = [P0];
	cc =R1==0;
	M2 = R3;
	if cc jump .L25 (bp);
	P1 = R7;
	R2 = [P0+4];
	R1 = [P1+20];
	cc =R2==R1;
	if cc jump .L365;
.L25:
	P5 = B0;
	R0 = 154 (X);
	P2 = [SP+336];
	[P2+12] = P5;
	[P2+16] = R0;
.L27:
	P2 = [SP+336];
	P5 = R7;
	R0 = 1 (X);
	R1 = B0;
	[P2] = R0;
	R2 = 511 (X);
	R0 = [P5+20];
	P0 = [SP+344];
	cc =R1<=R2;
	[P2+4] = R0;
	R0 = M2;
	[P2+8] = R0;
	R3 = B0;
	R0 = CC;
	BITTGL (R0, 0);
	R3 <<= 3;
	P2 = 2176 (X);
	[SP+36] = R0;
	R3 = (R3 + R1) << 1;
	P2 = P0 + P2;
	R1 = 0 (X);
	R2 = 1024 (X);
	R0 = 0 (X);
	R6 = 61440 (Z);
	P1 = 8 (X);
	LSETUP (.L34, .L411) LC1 = P1;
.L34:
	[P2] = R1;
	[P2+4] = R3;
	[P2+8] = R2;
	[P2+12] = R2;
	[P2+16] = R0;
	[P2+20] = R0;
	[P2+24] = R0;
	R1 = R1 + R6;
.L411:
	P2 += 28;
	R1 = B0;
	R5 = B0;
	R1 <<= 20;
	R1 = R1 - R5;
	R1 <<= 2;
	R1 = R1 - R5;
	R1 <<= 10;
	[SP+28] = R1;
	R1 = 2458 (X);
	R4 = 1023 (X);
	R5 *= R1;
	R2 = R2 -|- R2 ||
	R1 = [SP+28] ||
	nop;
	P0 = B0;
	R3 = B0;
	R1 = R1 + R4;
	[SP+88] = R2;
	P0 = P0 + (P0 << 1);
	R2 = -4506 (X);
	P1 = 300 (X);
	R2 *= R3;
	[SP+48] = R1;
	R1 = P0;
	P2 = -139 (X);
	P1 = P1 + SP;
	R1 <<= 10;
	P1 = P1 + P2;
	R6 = R5 + R4;
	cc =R1<0;
	M3 = P1;
	R0 = 0 (X);
	R3 = R2 + R4;
	[SP+44] = R5;
	[SP+40] = R6;
	if !cc jump 6 (bp); jump.l .L366;
.L205:
	R1 >>>= 10;
	R6 = 10240 (X);
	R6 = R1 + R6;
	cc =R2<0;
	R1 = R2;
	if cc R1 = R3;
	cc =R2<0;
	I0 = R6;
	R1 >>>= 10;
	if cc jump .L367;
	R2 = 17818 (X);
	R2 = R1 + R2;
	I1 = R2;
.L208:
	R6 = B0;
	R3 = [SP+44];
	M1 = R7;
	R2 = -358 (X);
	R1 = 1024 (X);
	[SP+32] = R6;
	R7 = I1;
	B0 = R3;
	jump.s .L38;
.L362:
	P4 = 0 (X);
.L5:
	P2 = 8 (X);
	P1 = FP + P4;
	P2 -= P4;
	LSETUP (.L9, .L410) LC1 = P2;
.L9:
.L410:
	B [P1++] = R5;
	jump.s .L195;
.L209:
	P4 = 48 (X);
	P2 = 1 (X);
	P1 = 0 (X);
	jump.s .L2;
.L3:
	R0 = R4;
	R1 = 10 (X);
	call ___modsi3;
	P4 = R0;
	R1 = 9 (X);
	cc =R4<=R1 (iu);
	P4 += 48;
	if cc jump .L210 (bp);
	R1 = 10 (X);
	R0 = R4;
	call ___divsi3;
	R0 += 48;
	P2 = 2 (X);
	P1 = 1 (X);
	R1 = 0 (X);
	jump.s .L4;
.L210:
	P2 = 1 (X);
	P1 = 0 (X);
	jump.s .L2;
.L364:
	R1 = 0 (X);
.L17:
	P1 = R1;
	P0 = 236 (X);
	P0 = P0 + SP;
	P2 = P0;
	R1 += 1;
	P1 += 48;
	P1 = P0 + P1;
	P2 += 56;
	R3 = 9 (X);
	cc =R1<R3 (iu);
	P2 -= P1;
	R1 = 1 (X);
	R0 = 0 (X);
	if !cc P2 = R1;
	LSETUP (.L21, .L409) LC1 = P2;
.L21:
.L409:
	B [P1++] = R0;
	jump.s .L196;
.L363:
	P2 = 285 (X);
	R0 = 111 (X);
	P1.H = .LC12+1;
	P0 = SP + P2;
	B [SP+284] = R0;
	P1.L = .LC12+1;
	R1 = 1 (X);
	P2 = 6 (X);
	LSETUP (.L14, .L408) LC1 = P2;
.L14:
	R0 = B [P1++] (X);
	R2 = R0.B (X);
	cc =R2==0;
	if cc jump .L12;
	B [P0++] = R0;
.L408:
	R1 += 1;
	jump.s .L13;
.L365:
	R1 = [P1+28];
	cc =R1==0;
	if !cc jump .L25 (bp);
	P0 = [SP+336];
	P1 = R3;
	P2 = [P0+8];
	cc =P2==P1;
	if cc jump .L28;
	nop;
	nop;
	[P0+16] = R0;
	P2 = [P0+12];
	B0 = P2;
	jump.s .L27;
.L12:
	P1 = R1;
	P5 = 236 (X);
	P5 = P5 + SP;
	P2 = P5;
	R1 += 1;
	P1 += 48;
	P1 = P5 + P1;
	P2 += 56;
	R3 = 9 (X);
	cc =R1<R3 (iu);
	P2 -= P1;
	R1 = 1 (X);
	R0 = 0 (X);
	if !cc P2 = R1;
	LSETUP (.L15, .L407) LC1 = P2;
.L15:
.L407:
	B [P1++] = R0;
	jump.s .L196;
.L28:
	P5 = [SP+336];
	R1 = 153 (X);
	R0 = [P5+16];
	cc =R0<=R1;
	if !cc jump .L368 (bp);
	P0 = R7;
	R1 = [P0+16];
	cc =R1<0;
	if !cc jump 6 (bp); jump.l .L214;
	R2 = 154 (X);
	R1 = min(R1,R2);
	R0 = R0 + R1;
	P1 = [SP+336];
	R2 = 153 (X);
	cc =R0<=R2;
	[P1+16] = R0;
	if !cc jump .L31 (bp);
.L30:
	P0 = [SP+336];
	I0.H = .LC10;
	R2 = B0;
	P1 = 8 (X);
	R0 = [P0+12];
	P0 = 200 (X);
	P2 = SP + P0;
	I0.L = .LC10;
	R3 = R0 - R2;
	R0 = [I0++]; lsetup (1f, 1f) LC1 = P1; 1: MNOP || [P2++] = R0 || R0 = [I0++]; [P2++] = R0;
	R0 = 1496 (X);
	R1 *= R0;
	R2 = 7 (X);
	R0 = R1 >> 12;
	R2 = R0 & R2;
	P2 = R2;
	P0 = 300 (X);
	P0 = P0 + SP;
	R6 = 4095 (X);
	R6 = R1 & R6;
	P1 = P0 + (P2 << 2);
	R0 = [P1+-100];
	R2 = [P1+-96];
	R2 = R0 - R2;
	R2 *= R6;
	R2 >>= 12;
	R1 >>= 15;
	R0 = R0 - R2;
	R0 >>= R1;
	R0 >>= 6;
	R0 *= R3;
	cc =R0<0;
	R1 = R0;
	if !cc jump .L32 (bp);
	R1 = 1023 (X);
	R1 = R0 + R1;
.L32:
	cc =R0<0;
	R1 >>>= 10;
	if !cc jump 6 (bp); jump.l .L369;
	R0 = 0 (X);
.L33:
	R0 = R0.B (Z);
	R0 = R1 - R0;
	R1 = B0;
	R1 = R1 + R0;
	B0 = R1;
.L31:
	P1 = B0;
	P0 = [SP+336];
	[P0+12] = P1;
	jump.s .L27;
.L368:
	nop;
	R2 = [P5+12];
	B0 = R2;
	jump.s .L27;
.L367:
	R3 = 17818 (X);
.L203:
	R4 = 1023 (X);
	R2 = R2 & R4;
	cc =R2==0;
	if cc jump .L37 (bp);
	R1 += -1;
.L37:
	R3 = R3 + R1;
	R5 = [SP+88];
	cc =R5==0;
	I1 = R3;
	if cc jump .L208;
	R4 = B0;
	R5 = [SP+44];
	M1 = R7;
	R2 = 358 (X);
	R1 = 666 (X);
	[SP+32] = R4;
	R7 = R3;
	B0 = R5;
.L38:
	R6 = [SP+32];
	R2 *= R6;
	cc =R2<0;
	R6 = R2;
	if !cc jump .L39 (bp);
	R3 = 1023 (X);
	R6 = R2 + R3;
.L39:
	cc =R2<0;
	R6 >>>= 10;
	if !cc jump 6 (bp); jump.l .L370;
.L40:
	R5 = [SP+36];
	R6 = R1 + R6;
	R2 = [SP+88];
	cc =R5==R2;
	if !cc jump 6 (bp); jump.l .L217;
	P0 = R6;
	P2 = P0 + (P0 << 2);
	P2 = P2 + (P2 << 2);
	R6 = P2;
	R1 = R6 << 6;
	R1 = R1 - R6;
	cc =R1<0;
	R6 = R1;
	if !cc jump .L42 (bp);
	R2 = 1023 (X);
	R6 = R1 + R2;
.L42:
	cc =R1<0;
	R6 >>>= 10;
	if !cc jump 6 (bp); jump.l .L371;
.L43:
	R3 = 12 (X);
	R2 = 8 (X);
.L41:
	R1 = R3 << 3;
	R1 = (R1 + R3) << 2;
	FP = R1;
	R1 = R2 << 3;
	R1 = (R1 + R2) << 2;
	P3 = R1;
	P0 = [SP+344];
	P1 = M3;
	B2.H = 1;
	B1.H = 1;
	R4 = 4 (X);
	[SP+24] = P1;
	FP = P0 + FP;
	P3 = P0 + P3;
	R5 = 0 (X);
	B3 = 1024 (X);
	I2 = 3700 (X);
	R3 = -65 (X);
	I3 = 3701 (X);
	B2.L = 1024;
	B1.L = 57344;
	R2 = I0;
	P1 = R4;
	LSETUP (.L312, .L406) LC0 = P1;
	jump.s .L63;
.L312:
	P0 = [SP+24];
	R0 = B [P0++] (X);
	[SP+24] = P0;
.L63:
	R1 = R0.B (Z);
	P2 = R1;
	P0 = 300 (X);
	P0 = P0 + SP;
	P2 = P0 + (P2 << 2);
	P5 = [P2+-132];
	R1 = B [P5] (X);
	R4 = R1.B (X);
	cc =R4==0;
	if cc jump .L372;
	P2 = 200 (X);
	P0 = P2 + SP;
	B [SP+200] = R1;
	P5 += 1;
	P0 += 1;
	P4 = 1 (X);
	P2 = 22 (X);
	LSETUP (.L47, .L405) LC1 = P2;
.L47:
	R1 = B [P5++] (X);
	R4 = R1.B (X);
	cc =R4==0;
	if cc jump .L44;
	B [P0++] = R1;
.L405:
	P4 += 1;
	R1 = 0 (X);
	B [SP+223] = R1;
.L197:
	R1 = B [SP+200] (X);
	R4 = R1.B (X);
	cc =R4==0;
	if cc jump .L49;
	P5 = 200 (X);
	P2 = P5 + SP;
	P2 += 1;
	P0 = R0;
.L51:
	R4 = R1 + R3;
	R4 = R4.B (Z);
	R0 = 25 (X);
	cc =R4<=R0 (iu);
	if !cc jump .L50 (bp);
	R1 += 32;
	B [P2+-1] = R1;
.L50:
	nop;
	R1 = B [P2++] (X);
	R4 = R1.B (X);
	cc =R4==0;
	if !cc jump .L51 (bp);
	R0 = P0;
	P0 = R5;
	R4 = B3;
	R1 = B [SP+200] (X);
	P5 = 5120 (X);
	[P3+3696] = R4;
	R4 = R1.B (X);
	P2 = P0 + P5;
	I1 = P3;
	M0 = I2;
	cc =R4==0;
	[P3+3688] = P2;
	[P3+3692] = R2;
	I1 += M0;
	if !cc jump 6 (bp); jump.l .L373;
	P0 = 200 (X);
	P4 = P0 + SP;
	P2 = I3;
	P0 = P3 + P2;
	B [P3+3700] = R1;
	P4 += 1;
	P5 = 1 (X);
	P2 = 22 (X);
	LSETUP (.L55, .L404) LC1 = P2;
.L55:
	R1 = B [P4++] (X);
	R4 = R1.B (X);
	cc =R4==0;
	if cc jump .L52;
	B [P0++] = R1;
.L404:
	P5 += 1;
	R1 = 0 (X);
	B [P3+3723] = R1;
.L198:
	R0 = R0.B (Z);
	R0 <<= 3;
	P0 = R0;
	P5 = 236 (X);
	R1 = B2;
	P5 = P5 + SP;
	R0 = R5 + R1;
	P2 = P5 + P0;
	[FP+3688] = R0;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	I0 = FP;
	M0 = I2;
	cc =R1==0;
	[FP+3692] = R7;
	[FP+3696] = R6;
	I0 += M0;
	if cc jump .L374;
	P5 = I3;
	P0 = FP + P5;
	B [FP+3700] = R0;
	P2 += 1;
	P4 = 1 (X);
	P5 = 22 (X);
	LSETUP (.L60, .L403) LC1 = P5;
.L60:
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L57;
	B [P0++] = R0;
.L403:
	P4 += 1;
	R0 = 0 (X);
	B [FP+3723] = R0;
.L199:
	R0 = B1;
	FP += 36;
	R5 = R5 + R0;
.L406:
	P3 += 36;
	P1 = M3;
	R2 = [SP+88];
	P1 += 4;
	cc =R2==1;
	M3 = P1;
	if cc jump .L64;
	R1 = [SP+28];
	cc =R1<0;
	R4 = [SP+48];
	if cc R1 = R4;
	R1 >>>= 10;
	R2 = 33792 (Z);
	R2 = R1 + R2;
	I0 = R2;
	R2 = B0;
	cc =R2<0;
	R1 = B0;
	R5 = [SP+40];
	if cc R1 = R5;
	R3 = 1 (X);
	cc =R2<0;
	R0 = B [P1+-1] (X);
	[SP+88] = R3;
	R1 >>>= 10;
	if !cc jump 6 (bp); jump.l .L375;
	R7 = 33792 (Z);
	R7 = R1 + R7;
	R2 = 358 (X);
	R1 = 666 (X);
	jump.s .L38;
.L374:
	P4 = 0 (X);
.L57:
	P0 = I0;
	P2 = 24 (X);
	P5 = P0 + P4;
	R0 = 0 (X);
	P2 -= P4;
	LSETUP (.L61, .L402) LC1 = P2;
.L61:
.L402:
	B [P5++] = R0;
	jump.s .L199;
.L49:
	R4 = 5120 (X);
	R1 = R5 + R4;
	P0 = B3;
	I1 = P3;
	M0 = I2;
	[P3+3688] = R1;
	[P3+3692] = R2;
	[P3+3696] = P0;
	I1 += M0;
	P5 = 0 (X);
.L52:
	P0 = I1;
	P2 = 24 (X);
	P4 = P0 + P5;
	R1 = 0 (X);
	P2 -= P5;
	LSETUP (.L56, .L401) LC1 = P2;
.L56:
.L401:
	B [P4++] = R1;
	jump.s .L198;
.L372:
	P4 = 0 (X);
.L44:
	P2 = 200 (X);
	P2 = P2 + SP;
	P5 = P2 + P4;
	P2 = 24 (X);
	R1 = 0 (X);
	P2 -= P4;
	LSETUP (.L48, .L400) LC1 = P2;
.L48:
.L400:
	B [P5++] = R1;
	jump.s .L197;
.L64:
	P2 = [SP+344];
	P1 = 160 (X);
	P0 = M2;
	P1 = P1 + SP;
	P4 = 4264 (X);
	R7 = M1;
	FP = P1 + (P0 << 2);
	P4 = P2 + P4;
	R2 = 0 (X);
	P3 = 4 (X);
	LSETUP (.L71, .L399) LC0 = P3;
.L71:
	P5 = 236 (X);
	R0 = B [FP++] (Z);
	R0 <<= 3;
	P0 = R0;
	P5 = P5 + SP;
	P2 = P5 + P0;
	R0 = B [P2] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if !cc jump 4 (bp); jump.s .L376;
	P0 = P4;
	B [P0++] = R0;
	P2 += 1;
	P5 = 1 (X);
	P1 = 6 (X);
	LSETUP (.L69, .L398) LC1 = P1;
.L69:
	R0 = B [P2++] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if !cc jump 4 (bp); jump.s .L66;
	B [P0++] = R0;
.L398:
	P5 += 1;
	B [P4+7] = R2;
.L200:
.L399:
	P4 += 8;
	P1 = R7;
	R0 = 0 (X);
	P0 = [SP+336];
	R1 = [P1+36];
	R1 = max(R0,R1) ||
	R5 = [P1+56] ||
	nop;
	[SP+132] = R1;
	R1 >>>= 21;
	[SP+156] = R1;
	R1 = [P1+40];
	R1 = max(R0,R1) ||
	R6 = [P1+16] ||
	nop;
	[SP+120] = R1;
	R1 >>>= 21;
	[SP+100] = R1;
	R1 = [P1+44];
	R1 = max(R0,R1) ||
	R3 = [P1+28] ||
	nop;
	[SP+28] = R1;
	R1 >>>= 21;
	[SP+76] = R1;
	R1 = [P1+48];
	R1 = max(R0,R1);
	R1 >>>= 21;
	[SP+80] = R1;
	R1 = [P1+52];
	R1 = max(R0,R1);
	R1 >>>= 21;
	[SP+152] = R1;
	R1 = [P1+60];
	R1 = max(R0,R1);
	[SP+124] = R1;
	R1 >>>= 21;
	[SP+104] = R1;
	R1 = [P1+64];
	R1 = max(R0,R1);
	R1 >>>= 21;
	[SP+92] = R1;
	R1 = 102 (X);
	R6 = min(R6,R1) ||
	R1 = [P0+28] ||
	nop;
	R5 = max(R0,R5);
	R2 = R5 >>> 21;
	cc =R1==0;
	[SP+84] = R2;
	[SP+112] = R3;
	R6 = max(R6,R0);
	if cc jump .L72 (bp);
	R2 = [P0+20];
	R1 = [P1+20];
	cc =R2==R1;
	if !cc jump 6 (bp); jump.l .L377;
.L72:
	P2 = R7;
	R0 = 4096 (X);
	P1 = [SP+336];
	[P1+32] = R0;
	R0 = [P2+24];
	[P1+24] = R0;
	R0 = [P2+20];
	[P1+20] = R0;
	R0 = 1 (X);
	[P1+28] = R0;
	R7 = [P2+68];
	R7 += -1;
	R0 = 127 (X);
	cc =R7<=R0 (iu);
	if !cc jump 6; jump.l .L75;
	R3 = [SP+112];
	R2 = 0 (X);
	cc =R3==0;
	[SP+96] = R2;
	if cc jump 6 (bp); jump.l .L223;
	R4 = [P1+36];
	R1 = [P1+44];
.L350:
	R2 = 127 (X);
	cc =R7<=R2 (iu);
	R0 = R4;
	if cc jump 6 (bp); jump.l .L224;
	P0 = [SP+336];
	R3 = [P0+40];
	[SP+136] = R3;
	R3 <<= 6;
	[SP+112] = R3;
.L81:
	[SP+68] = R1;
	R1 = 30 (X);
	call ___divsi3;
	R1 = R0 << 4;
	R1 = R1 - R0;
	R1 <<= 1;
	R0 <<= 24;
	[SP+64] = R1;
	[SP+148] = R0;
.L79:
	P0 = [SP+344];
	R0 = -16 (X);
	R2 = [SP+84];
	R5 >>>= 25;
	R0 = R2 & R0;
	[SP+108] = R5;
	[SP+56] = R0;
	R5 += 1;
	R0 = [P0];
	cc =R5==R0;
	[SP+24] = R5;
	if cc jump .L82;
	P4 = P0;
	P3 = 0 (X);
	P4 += 8;
	R0 = P3;
	FP = 508 (X);
	P5.H = 65535;
	P3 = P4;
	FP = P0 + FP;
	P5.L = 3584;
	R4 = 3072 (X);
	R5 = 614 (X);
	R6 = 4710 (X);
	R7 = 1024 (X);
	P4 = R0;
.L83:
	R0 = P4;
	R1 = 31 (X);
	call ___divsi3;
	R1 = R0 << 4 ||
	R2 = [SP+56] ||
	nop;
	R1 = R1 - R0;
	R3 = R1 << 3;
	R3 = R3 + R0;
	R0 *= R5;
	R1 >>>= 1;
	R0 >>>= 10;
	R1 = R1 + R4;
	R0 = R0 + R6;
	R0 = R0 - R1;
	R0 *= R2;
	P1 = R3;
	P0 = R7;
	R0 >>>= 10;
	R0 = R0 + R1;
	R1 = R0 >> 31;
	P2 = P1 + P5;
	R0 = R1 + R0;
	P1.H = 0;
	R0 >>>= 1;
	P4 = P4 + P0;
	P1.L = 32768;
	R1 = -R0;
	cc =P4==P1;
	[P3+-4] = P2;
	[P3] = R1;
	FP += -8;
	[FP+8] = P2;
	[FP+12] = R0;
	P3 += 8;
	if !cc jump .L83 (bp);
	P0 = [SP+344];
	R2 = [SP+24];
	[P0] = R2;
.L82:
	R2 = [SP+84];
	R3 = 340 (X);
	cc =R2<=R3;
	if !cc jump 6; jump.l .L225;
	R4 = 682 (X);
	cc =R2<R4;
	R1 = 10 (X);
	R0 = 9 (X);
	if cc R0 = R1;
	[SP+116] = R0;
.L84:
	P0 = [SP+344];
	R0 = 169 (X);
	R0 <<= 10;
	R2 = [SP+28];
	[P0+2064] = R0;
	R0 = 7 (X);
	R0 <<= 14;
	[P0+2068] = R0;
	R0 = 2048 (X);
	[P0+2072] = R0;
	R0 = R0 -|- R0 ||
	R3 = [SP+24] ||
	nop;
	R2 >>>= 25;
	[P0+2080] = R0;
	R0 = 2 (X);
	[P0+2088] = R0;
	R0 = ROT R2 BY 0 ||
	R5 = [SP+56] ||
	nop;
	R0 <<= 6;
	R0 = R0 + R3;
	[SP+140] = R0;
	R4 = [SP+76];
	R0 = -16 (X);
	R0 = R4 & R0;
	R1 = R0 << 4;
	R0 = R1 - R0;
	R1 = 4096 (X);
	R1 = R0 + R1;
	R0 = 950 (X);
	R0 *= R5;
	P1 = [SP+116];
	R0 >>>= 10;
	[SP+60] = R0;
	R6 = [SP+140];
	R0 = [P0+516];
	P5 = 1024 (X);
	cc =R6==R0;
	[P0+2076] = P5;
	[P0+2084] = P1;
	[SP+128] = R2;
	[SP+72] = R1;
	if !cc jump 6 (bp); jump.l .L378;
	R2 = [SP+56];
	R2 <<= 1;
	R0 = ROT R2 BY 0 ||
	R3 = [SP+56] ||
	nop;
	R0 = (R0 + R3) << 1;
	R1 = 55296 (Z);
	R0 = R0 + R1;
	R1 = 31 (X);
	[SP+144] = R2;
	call ___divsi3;
	R4 = [SP+344];
	P0 = R4;
	[SP+24] = R0;
	R2 = [SP+60];
	R0 = 520 (X);
	R0 = R4 + R0;
	P5 = P0 + P5;
	R2 <<= 1;
	R3 = R3 -|- R3 ||
	[SP+40] = R0 ||
	nop;
	R4 = R4 -|- R4 ||
	[SP+44] = P5 ||
	nop;
	R6 = R6 -|- R6 ||
	[SP+36] = R2 ||
	nop;
	FP.H = __ZN12medievalwind12_GLOBAL__N_1L10sine_tableE;
	[SP+48] = R3;
	[SP+32] = R4;
	R5 = 0 (X);
	FP.L = __ZN12medievalwind12_GLOBAL__N_1L10sine_tableE;
	P3 = 1800 (X);
	P4 = R6;
.L86:
	R1 = 31 (X);
	R0 = [SP+48];
	call ___divsi3;
	R6 = ROT R0 BY 0 ||
	R0 = [SP+32] ||
	nop;
	R1 = 31 (X);
	R0 <<= 10;
	call ___divsi3;
	R4 = R0;
	R4 *= R0;
	R4 >>>= 10;
	R4 *= R0;
	R1 = [SP+72];
	R4 >>>= 10;
	R1 *= R4;
	R4 *= R0;
	R3 = 1229 (X);
	R4 >>>= 10;
	R4 *= R3;
	R2 = 10752 (X);
	R1 >>>= 10;
	R4 >>>= 10;
	R7 = 5325 (X);
	R1 = R1 + R2;
	R4 = R4 + R7;
	R4 = R4 - R1;
	R2 = [SP+56];
	R4 *= R2;
	R4 >>>= 10;
	R4 = R4 + R1;
	P5 = R4;
	R3 = [SP+48];
	R4 = 27930 (X);
	cc =R3<=R4;
	if cc jump .L229 (bp);
	R7 = P3;
	R2 = R7 - R6;
.L91:
	R1 = 10 (X);
	R0 = ROT R2 BY 0 ||
	[SP+16] = R2 ||
	nop;
	call ___divsi3;
	P0 = R0;
	R1 = 89 (X);
	R0 = min(R0,R1) ||
	R2 = [SP+16] ||
	nop;
	R1 = 10 (X);
	P2 = FP + (P0 << 1);
	P0 = R0;
	R7 = W [P2] (Z);
	R0 = R2;
	P2 = FP + (P0 << 1);
	R4 = W [P2+2] (Z);
	R4 = R4 - R7;
	call ___modsi3;
	R0 *= R4;
	R1 = 10 (X);
	call ___divsi3;
	R1 = 900 (X);
	R2 = 1799 (X);
	R7 = R0 + R7;
	R0 = R6 + R1;
	cc =R0<=R2;
	R3 = -1 (X);
	R4 = 1 (X);
	R1 = P3;
	if !cc R4 = R3;
	R6 = 900 (X);
	call ___modsi3;
	cc =R0<=R6;
	R7 = -R7;
	R2 = R0;
	if cc jump .L93 (bp);
	R0 = P3;
	R2 = R0 - R2;
.L93:
	R0 = ROT R2 BY 0 ||
	[SP+16] = R2 ||
	nop;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R1 = 89 (X);
	R0 = min(R0,R1) ||
	R2 = [SP+16] ||
	nop;
	R1 = 10 (X);
	P2 = FP + (P0 << 1);
	P0 = R0;
	R3 = W [P2] (Z);
	R0 = ROT R2 BY 0 ||
	[SP+20] = R3 ||
	nop;
	P2 = FP + (P0 << 1);
	R6 = W [P2+2] (Z);
	R6 = R6 - R3;
	call ___modsi3;
	R0 *= R6;
	R1 = 10 (X);
	call ___divsi3;
	R3 = [SP+20];
	R3 = R0 + R3;
	R0 = P5;
	R7 *= R0;
	P0 = [SP+40];
	R4 *= R3;
	R7 >>>= 10;
	R0 = R5 - R7;
	[P0] = R0;
	R0 = P5;
	R4 *= R0;
	P1 = [SP+32];
	R4 >>>= 10;
	R1 = P4;
	R0 = R1 - R4;
	[P0+4] = R0;
	P0 = [SP+44];
	P1 += 1;
	R2 = P1;
	R3 = 32 (X);
	R7 = R5 + R7;
	R4 = R1 + R4;
	cc =R2==R3;
	[P0] = R7;
	[P0+4] = R4;
	[SP+52] = P1;
	if cc jump .L379;
	P4 = 0 (X);
	P5 = [SP+60];
	R5 = 0 (X);
	R6 = 0 (X);
	R4 = P4;
	jump.s .L90;
.L228:
	R6 = R0;
.L90:
	R1 = 62 (X);
	R0 = P5;
	call ___divsi3;
	R1 = 900 (X);
	R2 = 1799 (X);
	R7 = R0;
	R0 = R0 + R1;
	cc =R0<=R2;
	P0 = -1 (X);
	R3 = 1 (X);
	if !cc R3 = P0;
	R1 = P3;
	[SP+28] = R3;
	call ___modsi3;
	P4 = R0;
	P1 = 900 (X);
	cc =P4<=P1;
	if cc jump .L88 (bp);
	P2 = P3;
	P2 -= P4;
	P4 = P2;
.L88:
	R0 = P4;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R1 = 89 (X);
	R0 = min(R0,R1);
	R1 = 10 (X);
	P2 = FP + (P0 << 1);
	P0 = R0;
	R3 = W [P2] (Z);
	R0 = P4;
	[SP+20] = R3;
	P2 = FP + (P0 << 1);
	R2 = W [P2+2] (Z);
	R2 = R2 - R3;
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R3 = [SP+20];
	R0 = R0 + R3;
	R2 = [SP+28];
	R0 *= R2;
	R3 = [SP+24];
	R0 *= R3;
	P0.H = 0;
	P0.L = 55861;
	R0 >>>= 10;
	cc =P5<=P0;
	R5 = R5 + R0;
	if cc jump .L89 (bp);
	R0 = P3;
	R7 = R0 - R7;
.L89:
	R0 = R7;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R2 = 89 (X);
	R0 = min(R0,R2);
	P2 = FP + (P0 << 1);
	P0 = R0;
	R1 = W [P2] (Z);
	P4 = R1;
	R0 = R7;
	P2 = FP + (P0 << 1);
	R2 = W [P2+2] (Z);
	R2 = R2 - R1;
	R1 = 10 (X);
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R1 = P4;
	R2 = [SP+24];
	R0 = R0 + R1;
	R0 *= R2;
	P0 = [SP+36];
	R0 >>>= 10;
	R2 = [SP+32];
	R4 = R4 + R0;
	cc =R6==R2;
	R0 = R6;
	R0 += 1;
	P5 = P5 + P0;
	if !cc jump .L228 (bp);
	P0 = [SP+40];
	P1 = [SP+44];
	P2 = [SP+52];
	R3 = [SP+48];
	P4 = R4;
	R4 = [SP+60];
	R3 = R3 + R4;
	P0 += 8;
	P1 += -8;
	[SP+48] = R3;
	[SP+40] = P0;
	[SP+44] = P1;
	[SP+32] = P2;
	jump.s .L86;
.L229:
	R2 = R6;
	jump.s .L91;
.L376:
	P5 = 0 (X);
.L66:
	P2 = 8 (X);
	P1 = P4 + P5;
	P2 -= P5;
	LSETUP (.L70, .L397) LC1 = P2;
.L70:
.L397:
	B [P1++] = R2;
	jump.s .L200;
.L379:
	P0 = [SP+344];
	R4 = [SP+140];
	[P0+516] = R4;
.L85:
	P1 = [SP+344];
	R0 = 145 (X);
	R0 <<= 11;
	P2 = [SP+116];
	[P1+2092] = R0;
	R0 = 7 (X);
	R0 <<= 14;
	[P1+2096] = R0;
	R0 = 1024 (X);
	[P1+2100] = R0;
	[P1+2104] = R0;
	R0 = R0 -|- R0 ||
	R2 = [SP+56] ||
	nop;
	[P1+2108] = R0;
	R0 = 2 (X);
	[P1+2116] = R0;
	R0 = [SP+144];
	R0 = (R0 + R2) << 1;
	R1 = 55296 (Z);
	R0 = R0 + R1;
	[P1+2112] = P2;
	R1 = 31 (X);
	call ___divsi3;
	[SP+24] = R0;
	R5 = [SP+60];
	R4 = 31 (X);
	P4 = 0 (X);
	P5 = 0 (X);
	P3 = 1800 (X);
.L97:
	R0 = R5;
	R1 = 62 (X);
	call ___divsi3;
	R3 = 900 (X);
	R6 = 1799 (X);
	R7 = R0;
	R0 = R0 + R3;
	cc =R0<=R6;
	R3 = -1 (X);
	R2 = 1 (X);
	if !cc R2 = R3;
	R1 = P3;
	[SP+28] = R2;
	call ___modsi3;
	R6 = R0;
	R0 = 900 (X);
	cc =R6<=R0;
	if cc jump .L95 (bp);
	R1 = P3;
	R6 = R1 - R6;
.L95:
	R0 = R6;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R1 = 89 (X);
	R0 = min(R0,R1);
	R1 = 10 (X);
	P2 = FP + (P0 << 1);
	P0 = R0;
	R3 = W [P2] (Z);
	R0 = ROT R6 BY 0 ||
	[SP+20] = R3 ||
	nop;
	P2 = FP + (P0 << 1);
	R2 = W [P2+2] (Z);
	R2 = R2 - R3;
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R3 = [SP+20];
	R0 = R0 + R3;
	R6 = [SP+28];
	R6 *= R0;
	R2 = [SP+24];
	R6 *= R2;
	R6 >>>= 10;
	P0 = R6;
	R0 = 55861 (Z);
	cc =R5<=R0;
	P5 = P5 + P0;
	if cc jump .L96 (bp);
	R1 = P3;
	R7 = R1 - R7;
.L96:
	R0 = R7;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R1 = 89 (X);
	R0 = min(R0,R1);
	R1 = 10 (X);
	R4 += -1;
	P2 = FP + (P0 << 1);
	P0 = R0;
	R6 = W [P2] (Z);
	R0 = R7;
	P2 = FP + (P0 << 1);
	R2 = W [P2+2] (Z);
	R2 = R2 - R6;
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R0 = R0 + R6;
	R2 = [SP+24];
	R0 *= R2;
	R0 >>>= 10;
	P0 = R0;
	R2 = [SP+36];
	cc =R4==0;
	R5 = R5 + R2;
	P4 = P4 + P0;
	if !cc jump .L97 (bp);
	R0 = 145 (X);
	R0 <<= 11;
	P0 = R0;
	R3 = [SP+72];
	R0 = 10752 (X);
	R0 = R3 + R0;
	R1 = 6554 (X);
	R1 = R1 - R0;
	R4 = [SP+56];
	R1 *= R4;
	R1 >>>= 10;
	P1 = [SP+336];
	R1 = R1 + R0;
	R5 = [SP+108];
	R6 = [SP+112];
	R0 = [SP+132];
	P2 = P5 + P0;
	[SP+44] = R1;
	R0 >>>= 25;
	R1 = R5 + R6;
	P0 = [SP+344];
	R1 <<= 6;
	R0 += 1;
	R0 = R1 + R0;
	R2 = [SP+60];
	[SP+28] = R0;
	[P1+52] = P2;
	P2.H = 1;
	P2.L = 49152;
	[P1+60] = R2;
	R0 = [P0+1548];
	R2 = [SP+28];
	P2 = P4 + P2;
	cc =R2==R0;
	[P1+56] = P2;
	if cc jump .L98;
	R0 = -16 (X);
	R2 = 18432 (X);
	R3 = [SP+156];
	R0 = R3 & R0;
	R1 = -R0;
	R1 <<= 3;
	R1 = R1 - R0;
	R2 = R1 + R2;
	R1 = -46 (X);
	R0 *= R1;
	R1 = 10 (X);
	[SP+24] = R2;
	call ___divsi3;
	R1 = 5632 (X);
	R7 = R0 + R1;
	R0 = R4;
	R1 = -10 (X);
	R0 <<= 3;
	call ___divsi3;
	R7 = R7 + R0;
	R0 = [SP+136];
	R0 <<= 4;
	R4 = [SP+136];
	R0 = R0 - R4;
	R1 = R0 << 4;
	R0 = R1 - R0;
	R1 = 3600 (X);
	call ___modsi3;
	cc =R0<0;
	if !cc jump .L99 (bp);
	R1 = 3600 (X);
	R0 = R0 + R1;
.L99:
	R5 = 1799 (X);
	cc =R0<=R5;
	R1 = 1 (X);
	R6 = -1 (X);
	if cc R6 = R1;
	R1 = 1800 (X);
	call ___modsi3;
	P5 = R0;
	P0 = 900 (X);
	cc =P5<=P0;
	if cc jump .L101 (bp);
	R0 = 1800 (X);
	P1 = R0;
	P1 -= P5;
	P5 = P1;
.L101:
	R0 = P5;
	R1 = 10 (X);
	call ___divsi3;
	R1 = 89 (X);
	P0 = R0;
	R0 = min(R0,R1);
	P1 = R0;
	R1 = 10 (X);
	R0 = P5;
	P2 = FP + (P0 << 1);
	R4 = W [P2] (Z);
	P2 = FP + (P1 << 1);
	R5 = W [P2+2] (Z);
	R5 = R5 - R4;
	call ___modsi3;
	R0 *= R5;
	R1 = 10 (X);
	call ___divsi3;
	R0 = R0 + R4;
	R6 *= R0;
	P2 = [SP+344];
	R0 = R6 >> 31;
	R6 = R0 + R6;
	R6 >>>= 1;
	R2 = R6 + R7;
	P5 = 2056 (X);
	P4 = 1552 (X);
	[SP+32] = FP;
	P5 = P2 + P5;
	P4 = P2 + P4;
	R6 = 0 (X);
	P3 = -203 (X);
	R7 = -1843 (X);
	FP = R2;
	jump.s .L106;
.L102:
	R2 = P3;
	R0 = R0 + R2;
	R1 = 821 (X);
	R0 <<= 10;
	call ___divsi3;
	R3 = [SP+24];
	R3 *= R0;
	R4 = -8192 (X);
	R3 >>>= 10;
	R2 = R0;
	R5 = FP;
	R0 = R4 - R3;
	R4 = 6144 (X);
	R1 = min(R5,R4);
	R5 = 820 (X);
	R1 = max(R1,R5);
	R1 = R1 + R7;
	R1 *= R2;
	R5 = 31 (X);
	R1 >>>= 10;
	R4 = 1843 (X);
	cc =R6==R5;
	R2 = R1 + R4;
	if !cc jump 6 (bp); jump.l .L380;
	R1 = R7 - R1;
	[P4] = R0;
	[P4+4] = R1;
.L103:
	[P5] = R0;
	R6 += 1;
	R0 = 32 (X);
	cc =R6==R0;
	[P5+4] = R2;
	P4 += 8;
	P5 += -8;
	if cc jump .L381;
.L106:
	R0 = R6 << 10;
	R1 = 31 (X);
	call ___divsi3;
	cc =R6<=5 (iu);
	if !cc jump .L102 (bp);
	R0 = R6 << 13;
	R1 = 6 (X);
	R0 = -R0;
	call ___divsi3;
	R1 = -1434 (X);
	[P4] = R0;
	[P4+4] = R1;
	R2 = 1434 (X);
	jump.s .L103;
.L381:
	FP = [SP+32];
.L105:
	P0 = [SP+344];
	R2 = [SP+28];
	[P0+1548] = R2;
.L98:
	P0 = [SP+344];
	R0 = 40960 (Z);
	R2 = [SP+84];
	R3 = 700 (X);
	[P0+2148] = R0;
	R0 = 7 (X);
	R0 <<= 14;
	cc =R2<=R3;
	[P0+2152] = R0;
	if cc jump 4; jump.s .L107;
	R2 = 2 (X);
	[P0+2172] = R2;
	R3 = 119 (X);
	R2 = [SP+84];
	R1 = 1024 (X);
	R0 = 0 (X);
	cc =R2<=R3;
	[P0+2156] = R1;
	[P0+2160] = R1;
	[P0+2164] = R0;
	[P0+2168] = R0;
	if cc jump 4 (bp); jump.s .L108;
	R2 = 5 (X);
	R2 <<= 17;
	[P0+2400] = R2;
	R2 = 5 (X);
	R2 <<= 16;
	[P0+2404] = R2;
	[P0+2408] = R1;
	[P0+2412] = R1;
	[P0+2416] = R0;
	[P0+2420] = R0;
	[P0+2424] = R0;
.L109:
	P1 = [SP+100];
	R0 = [SP+120];
	P5.H = __ZN12medievalwind12_GLOBAL__N_1L11ring_revealE+4;
	R0 >>>= 29;
	P2 = P1 + (P1 << 2);
	P2 = P1 + (P2 << 1);
	R1 = 6 (X);
	P5.L = __ZN12medievalwind12_GLOBAL__N_1L11ring_revealE+4;
	R1 = R1 - R0;
	R0 = P2;
	P2 = P5;
	R5 = 3072 (X);
	P2 += 52;
	R5 = R0 + R5;
	[SP+24] = FP;
	P3 = R1;
	R0 = 4 (X);
	P4 = 0 (X);
	R3 = 1024 (X);
	FP = P2;
	jump.s .L194;
.L383:
	cc =R5==0;
	if cc jump .L112;
	R1 = 1024 (X);
	cc =R5==R1;
	if cc jump .L238 (bp);
	R1 = R5 >>> 8;
	R7 = 6 (X);
	R7 = R7 - R1;
	R2 = P3;
	cc =R7<R2 (iu);
	if cc R7 = P3;
.L113:
	R0 <<= 11;
	R0 = R0 + R3;
	R1.H = 9362;
	R0 >>= 2;
	R1.L = 18725;
	A1 = R0.L * R1.L (FU);
	A1 = A1 >> 16;
	A0 = R0.H * R1.H, A1 += R0.H * R1.L (FU);
	A1 += R1.H * R0.L (FU);
	A1 = A1 >> 16;
	A0 += A1;
	R6 = A0 (FU);
	R0 = R6 << 4;
	R0 = R0 - R6;
	R0 >>>= 1;
	R1 = 3072 (X);
	R1 = R0 + R1;
	R0 = 614 (X);
	R0 *= R6;
	I0 = 4710 (X);
	R2 = I0;
	R0 >>>= 10;
	R0 = R0 + R2;
	R0 = R0 - R1;
	R2 = [SP+56];
	R0 *= R2;
	R0 >>>= 10;
	R0 = R0 + R1;
	R1 = 82 (X);
	R0 *= R1;
	R1.H = 3;
	R1.L = 3391;
	cc =R0<=R1;
	if cc jump .L239 (bp);
	R2.H = 31;
	R2.L = 17383;
	cc =R0<=R2;
	if !cc jump .L240 (bp);
	R1 = 1000 (X);
	[SP+20] = R3;
	call ___divsi3;
	R3 = [SP+20];
.L116:
	cc =P4<=2 (iu);
	R1 = 57 (X);
	if cc R7 = P3;
	cc =R4<=R1 (iu);
	if !cc jump .L115 (bp);
	R1 = R4 << 3;
	R4 = R1 - R4;
	P0 = R4;
	R1 = 242 (X);
	P1 = [SP+344];
	R6 *= R1;
	R1 = 49152 (Z);
	R6 = R6 + R1;
	R1 = 7 (X);
	P2 = P1 + (P0 << 2);
	R1 <<= 14;
	P1 = 2080 (X);
	[P2+2068] = R1;
	[P2+2072] = R0;
	P0 = P2 + P1;
	R1 = 0 (X);
	R0 = 1 (X);
	[P2+2064] = R6;
	[P2+2076] = R3;
	[P0] = R1;
	[P2+2084] = R7;
	[P2+2088] = R0;
.L115:
	cc =FP==P5;
	R0 = -1024 (X);
	P4 += 1;
	R5 = R5 + R0;
	if cc jump .L382;
	nop;
	nop;
	nop;
	R0 = [P5++];
.L194:
	R4 = R0;
	cc =R5<0;
	R4 += 13;
	if cc jump .L112;
	R1 = 1024 (X);
	cc =R5<=R1;
	if cc jump .L383 (bp);
.L238:
	R7 = P3;
	jump.s .L113;
.L112:
	R2 = 57 (X);
	cc =R4<=R2 (iu);
	if !cc jump .L115 (bp);
	R0 = R4 << 3;
	R0 = R0 - R4;
	P0 = R0;
	P1 = [SP+344];
	R1 = 5 (X);
	R1 <<= 16;
	R0 = 5 (X);
	P2 = P1 + (P0 << 2);
	P1 = 2080 (X);
	[P2+2068] = R1;
	P0 = P2 + P1;
	R1 = 0 (X);
	R0 <<= 17;
	P1 = 2084 (X);
	[P2+2064] = R0;
	[P2+2072] = R3;
	[P2+2076] = R3;
	[P0] = R1;
	P0 = P2 + P1;
	[P0] = R1;
	P0 = 2088 (X);
	P2 = P2 + P0;
	[P2] = R1;
	jump.s .L115;
.L239:
	R0 = 200 (X);
	jump.s .L116;
.L240:
	R0 = 2048 (X);
	jump.s .L116;
.L382:
	R2 = [SP+76];
	R0 = 1178 (X);
	R0 *= R2;
	R1 = 358 (X);
	R0 >>>= 10;
	R0 = R0 + R1;
	R3 = [SP+84];
	R1 = 460 (X);
	R1 *= R3;
	R2 = 1024 (X);
	R1 >>>= 10;
	P0 = [SP+76];
	R1 = R2 - R1;
	R0 *= R1;
	P0 = P0 + (P0 << 1);
	R1 = P0;
	R0 >>>= 10;
	P1 = [SP+344];
	[SP+32] = R0;
	R0 = R1 << 4;
	R0 = R0 - R1;
	R0 >>>= 10;
	R1 = 90 (X);
	P2 = 2820 (X);
	P3 = P1 + P2;
	R1 = R0 + R1;
	P4.H = __ZN12medievalwind12_GLOBAL__N_1L9ray_orderE;
	P5.H = __ZN12medievalwind12_GLOBAL__N_1L9ray_startE;
	FP = P3;
	[SP+36] = R1;
	P4.L = __ZN12medievalwind12_GLOBAL__N_1L9ray_orderE;
	P5.L = __ZN12medievalwind12_GLOBAL__N_1L9ray_startE;
	R5 = 0 (X);
	R4 = 3600 (X);
	P3 = [SP+336];
	jump.s .L129;
.L387:
	R6.H = 3;
	R6.L = 8191;
	cc =R0<=R6;
	if !cc jump 4 (bp); jump.s .L384;
	R0 = 1 (X);
.L119:
	R7 = [SP+32];
	P0 = 2 (X);
	R1 = [P3+56];
	R2 = [P3+52];
	[FP] = R2;
	[FP+4] = R1;
	[FP+20] = R0;
	[FP+8] = R7;
	[FP+24] = P0;
	R2 = [SP+36];
	R7 = [P4];
	R7 *= R2;
	R0 = [P3+60];
	R3 = 900 (X);
	R7 = R7 + R0;
	R0 = R7 + R3;
	R1 = R4;
	call ___modsi3;
	cc =R0<0;
	if !cc jump .L123 (bp);
	R0 = R0 + R4;
.L123:
	R6 = 1799 (X);
	cc =R0<=R6;
	R3 = -1 (X);
	R2 = 1 (X);
	if !cc R2 = R3;
	R1 = 1800 (X);
	[SP+28] = R2;
	R6 = 900 (X);
	call ___modsi3;
	cc =R0<=R6;
	R3 = R0;
	if cc jump .L125 (bp);
	R0 = 1800 (X);
	R3 = R0 - R3;
.L125:
	R0 = ROT R3 BY 0 ||
	[SP+20] = R3 ||
	nop;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	P2 = [SP+24];
	R1 = 89 (X);
	R0 = min(R0,R1) ||
	R3 = [SP+20] ||
	nop;
	R1 = 10 (X);
	P1 = P2 + (P0 << 1);
	R6 = W [P1] (Z);
	P1 = R0;
	R0 = R3;
	P0 = P2 + (P1 << 1);
	R2 = W [P0+2] (Z);
	R2 = R2 - R6;
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R0 = R0 + R6;
	R6 = [SP+28];
	R6 *= R0;
	R1 = R4;
	R0 = R7;
	call ___modsi3;
	cc =R0<0;
	if !cc jump .L126 (bp);
	R0 = R0 + R4;
.L126:
	R1 = 1799 (X);
	cc =R0<=R1;
	R3 = -1 (X);
	R2 = 1 (X);
	if !cc R2 = R3;
	R1 = 1800 (X);
	[SP+28] = R2;
	R7 = 900 (X);
	call ___modsi3;
	cc =R0<=R7;
	R3 = R0;
	if cc jump .L128 (bp);
	R0 = 1800 (X);
	R3 = R0 - R3;
.L128:
	R0 = ROT R3 BY 0 ||
	[SP+20] = R3 ||
	nop;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	P2 = [SP+24];
	R1 = 89 (X);
	R0 = min(R0,R1) ||
	R3 = [SP+20] ||
	nop;
	R1 = 10 (X);
	P1 = P2 + (P0 << 1);
	R7 = W [P1] (Z);
	P1 = R0;
	R0 = R3;
	P0 = P2 + (P1 << 1);
	R2 = W [P0+2] (Z);
	R2 = R2 - R7;
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R0 = R0 + R7;
	R7 = [SP+28];
	R7 *= R0;
	[FP+12] = R6;
	[FP+16] = R7;
.L121:
	R5 += 1;
	R0 = 9 (X);
	cc =R5==R0;
	FP += 28;
	P4 += 4;
	P5 += 4;
	if cc jump .L385;
.L129:
	cc =R5==0;
	if !cc jump 4 (bp); jump.s .L242;
	R0 = [P5];
	R2 = [SP+76];
	cc =R0<R2;
	if !cc jump .L386;
	R3 = -199 (X);
	R2 = [SP+76];
	R0 = R2 - R0;
	R0 <<= 10;
	cc =R0<R3;
	if !cc jump .L387 (bp);
	R0 = 6 (X);
	jump.s .L119;
.L386:
	R3 = 5 (X);
	R6 = 5 (X);
	R0 = 0 (X);
	R7 = 1024 (X);
	R3 <<= 17;
	R6 <<= 16;
	[FP] = R3;
	[FP+4] = R6;
	[FP+8] = R7;
	[FP+12] = R7;
	[FP+16] = R0;
	[FP+20] = R0;
	[FP+24] = R0;
	jump.s .L121;
.L385:
	R0 = -16 (X);
	R2 = [SP+152];
	R3 = [SP+80];
	R1 = R2 & R0;
	R0 = R3 & R0;
	R4 = [SP+44];
	[SP+60] = R0;
	R0 = 820 (X);
	R0 *= R4;
	R0 >>>= 10;
	[SP+44] = R0;
	R5 = [SP+44];
	R0 = 3072 (X);
	R5 = max(R5,R0) ||
	R0 = [SP+56] ||
	nop;
	R6 = [SP+56];
	R0 <<= 2;
	R0 = R6 - R0;
	P0 = R0;
	R2 = [SP+128];
	R0 = [SP+108];
	R2 <<= 18;
	R0 <<= 12;
	R0 = R0 + R2;
	P2 = 10240 (X);
	P0 = P2 + (P0 << 1);
	P2 = R0;
	R0 = R1 >>> 4 ||
	P5 = [SP+60] ||
	nop;
	P1 = R0;
	[SP+48] = P0;
	P0 = [SP+148];
	P2 += 1;
	FP = [SP+24];
	P2 = P2 + P1;
	P1 = R1;
	P2 = P2 + (P5 << 2);
	P2 = P2 + P0;
	[SP+56] = P2;
	R2 = [SP+56];
	P2 = P1 + (P1 << 2);
	P1 = 1229 (X);
	P1 = P1 + (P2 << 1);
	P2 = [SP+344];
	[SP+44] = R5;
	[SP+40] = P1;
	R0 = [P2+1032];
	cc =R2==R0;
	if cc jump .L130;
	R0 = P5;
	R3 = P5;
	R0 <<= 3;
	R0 = R0 - R3;
	R0 >>>= 1;
	[SP+28] = R0;
	R1 = 300 (X);
	R0 = [SP+64];
	call ___divsi3;
	R4 = [SP+60];
	R1 = 1280 (X);
	R1 = R4 + R1;
	[SP+52] = R1;
	R4.H = 63075;
	R1.H = 57698;
	R1.L = 49175;
	R4.L = 17811;
	R4 *= R0;
	P0 = [SP+344];
	R0 *= R1;
	R1.H = 5909;
	R1.L = 24693;
	R1 = R0 + R1;
	P4 = 1036 (X);
	P5 = 1540 (X);
	P4 = P0 + P4;
	P5 = P0 + P5;
	R5 = R5 -|- R5 ||
	[SP+24] = R1 ||
	nop;
	P3 = R4;
.L135:
	R0 = R5;
	R1 = 31 (X);
	call ___divsi3;
	R7 = R0 << 4;
	R4 = R0;
	R7 = R7 - R0;
	R0 = 5400 (X);
	R0 *= R4;
	R2 = -15 (X);
	R3 = [SP+64];
	R7 <<= 3;
	R2 <<= 12;
	R0 >>>= 10;
	R2 = R7 + R2;
	R0 = R0 + R3;
	R1 = 3600 (X);
	[SP+32] = R2;
	call ___modsi3;
	cc =R0<0;
	if !cc jump .L131 (bp);
	R6 = 3600 (X);
	R0 = R0 + R6;
.L131:
	R1 = 1799 (X);
	cc =R0<=R1;
	R6 = 1 (X);
	R2 = -1 (X);
	if cc R2 = R6;
	R1 = 1800 (X);
	[SP+36] = R2;
	call ___modsi3;
	P0 = R0;
	P1 = 900 (X);
	cc =P0<=P1;
	if cc jump .L133 (bp);
	R0 = 1800 (X);
	P2 = R0;
	P2 -= P0;
	P0 = P2;
.L133:
	R0 = P0;
	R1 = 10 (X);
	[SP+20] = P0;
	call ___divsi3;
	P1 = R0;
	R1 = 89 (X);
	R0 = min(R0,R1) ||
	P0 = [SP+20] ||
	nop;
	R2 = R4;
	R2 *= R4;
	P2 = FP + (P1 << 1);
	P1 = R0;
	R6 = W [P2] (Z);
	R2 >>>= 10;
	R1 = 10 (X);
	R0 = P0;
	P2 = FP + (P1 << 1);
	R3 = W [P2+2] (Z);
	R3 = R3 - R6;
	[SP+16] = R2;
	[SP+20] = R3;
	call ___modsi3;
	R3 = [SP+20];
	R0 *= R3;
	R1 = 10 (X);
	call ___divsi3;
	R1 = R0 + R6;
	R3 = [SP+36];
	R1 *= R3;
	R6 = [SP+40];
	R1 *= R6;
	R1 >>>= 10;
	R1 *= R4;
	R2 = [SP+16];
	R0 = R1 >>> 10;
	R1 = R2;
	R1 *= R2;
	R2 = [SP+48];
	R1 >>>= 10;
	R1 *= R2;
	R1 >>>= 10;
	R6 = 1024 (X);
	R1 = R0 - R1;
	R0 = [SP+52];
	R3 = R6 - R4;
	R2 = [SP+44];
	R0 *= R4;
	R3 *= R2;
	R0 <<= 1;
	R0 >>>= 10;
	R3 >>>= 10;
	R3 = R3 + R0;
	R0 = P3;
	R0 >>= 24;
	R2 = [SP+28];
	R0 *= R2;
	R0 >>>= 8;
	R0 *= R4;
	R6 = [SP+32];
	cc =R0<0;
	[P4] = R6;
	if !cc jump .L134 (bp);
	R6 = 1023 (X);
	R0 = R0 + R6;
.L134:
	R6 = R1 - R3;
	R0 >>>= 10;
	R0 = R6 - R0;
	[P4+4] = R0;
	R0 = -7655 (X);
	R0 <<= 3;
	R7 = R7 + R0;
	R0 = [SP+24];
	R2 = [SP+28];
	R0 >>= 24;
	R0 *= R2;
	R2 = R0 >>> 8 ||
	[P5] = R7 ||
	nop;
	R2 *= R4;
	R1 = R3 + R1;
	R3 = 1024 (X);
	R2 >>>= 10;
	R5 = R5 + R3;
	R3.H = 2257;
	R1 = R2 + R1;
	P0.H = 21380;
	R2 = [SP+24];
	R3.L = 11773;
	R4 = 32768 (Z);
	P0.L = 21463;
	R2 = R2 + R3;
	cc =R5==R4;
	[P5+4] = R1;
	P3 = P3 + P0;
	[SP+24] = R2;
	P4 += 8;
	P5 += -8;
	if !cc jump .L135 (bp);
	P1 = [SP+56];
	P0 = [SP+344];
	[P0+1032] = P1;
.L130:
	R2 = [SP+84];
	P0 = [SP+336];
	R0 = 614 (X);
	R0 *= R2;
	P5 = [P0+60];
	R0 >>>= 10;
	R1 = 1075 (X);
	R1 = R1 - R0;
	R7 = ROT R1 BY 0 ||
	[SP+24] = R1 ||
	nop;
	R7 <<= 4;
	R7 = R7 - R1;
	R0 = 900 (X);
	R1 = P5;
	R0 = R1 + R0;
	R1 = 3600 (X);
	call ___modsi3;
	cc =R0<0;
	R7 <<= 2;
	if !cc jump .L136 (bp);
	R1 = 3600 (X);
	R0 = R0 + R1;
.L136:
	R2 = 1799 (X);
	cc =R0<=R2;
	R1 = 1 (X);
	R6 = -1 (X);
	if cc R6 = R1;
	R1 = 1800 (X);
	call ___modsi3;
	R3 = 900 (X);
	cc =R0<=R3;
	R4 = R0;
	if cc jump .L138 (bp);
	R0 = 1800 (X);
	R4 = R0 - R4;
.L138:
	R0 = R4;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	P2 = FP + (P0 << 1);
	R1 = W [P2] (Z);
	P4 = R1;
	R1 = 89 (X);
	R0 = min(R0,R1);
	P0 = R0;
	R1 = 10 (X);
	R0 = P4;
	P2 = FP + (P0 << 1);
	R5 = W [P2+2] (Z);
	R5 = R5 - R0;
	R0 = R4;
	call ___modsi3;
	R0 *= R5;
	R1 = 10 (X);
	call ___divsi3;
	R1 = P4;
	R0 = R0 + R1;
	R6 *= R0;
	R1 = 3600 (X);
	R0 = P5;
	call ___modsi3;
	cc =R0<0;
	if !cc jump .L139 (bp);
	R1 = 3600 (X);
	R0 = R0 + R1;
.L139:
	R2 = 1799 (X);
	cc =R0<=R2;
	R1 = 1 (X);
	R5 = -1 (X);
	if cc R5 = R1;
	R1 = 1800 (X);
	call ___modsi3;
	P3 = R0;
	P0 = 900 (X);
	cc =P3<=P0;
	if cc jump .L141 (bp);
	R0 = 1800 (X);
	P1 = R0;
	P1 -= P3;
	P3 = P1;
.L141:
	R0 = P3;
	R1 = 10 (X);
	call ___divsi3;
	R4 = 89 (X);
	P5 = R0;
	R0 = min(R0,R4);
	P0 = R0;
	P2 = FP + (P5 << 1);
	R1 = W [P2] (Z);
	P2 = FP + (P0 << 1);
	R0 = W [P2+2] (Z);
	P4 = R1;
	P5 = R0;
	R1 = 10 (X);
	R0 = P3;
	call ___modsi3;
	P5 -= P4;
	R1 = P5;
	R0 *= R1;
	R1 = 10 (X);
	call ___divsi3;
	R2 = P4;
	R0 = R0 + R2;
	R5 *= R0;
	P0 = [SP+336];
	R2 = R7;
	R2 *= R6;
	R7 *= R5;
	R0 = [P0+52];
	R1 = [P0+56];
	P0 = [SP+344];
	R2 >>>= 10;
	R2 = R2 + R0;
	R0 = R7 >>> 10;
	R0 = R0 + R1;
	R3 = [SP+96];
	R7 = 400 (X);
	cc =R3<=R7;
	R1 = 12 (X);
	R3 = 11 (X);
	[P0+2124] = R0;
	R0 = 2 (X);
	if cc R1 = R3;
	[P0+2144] = R0;
	R3 = [SP+60];
	R0 = 1280 (X);
	[P0+2120] = R2;
	P2 = 3072 (X);
	R2 = [SP+24];
	P4 = 0 (X);
	R0 = R3 + R0;
	[P0+2136] = R5;
	[P0+2128] = R2;
	[P0+2140] = R1;
	[P0+2132] = R6;
	P3 = P0 + P2;
	[SP+52] = R0;
	R5 = P4;
	jump.s .L166;
.L390:
	R0 = R6;
	R1 = 120 (X);
	call ___divsi3;
	P5 = R0;
	R1 = 1024 (X);
	R1 = R1 - R0;
	R0 = [SP+52];
	R4 = [SP+64];
	R3 = P5;
	R0 *= R3;
	R2 = P5;
	R0 <<= 1;
	R2 *= R3;
	R0 >>>= 10;
	P2 = R0;
	R0 = 5400 (X);
	R0 *= R3;
	R2 >>>= 10;
	R2 *= R2;
	R0 >>>= 10;
	R0 = R0 + R4;
	R7 = [SP+48];
	R4 = R2 >>> 10;
	R4 *= R7;
	R4 >>>= 10;
.L145:
	R2 = [SP+44];
	R1 *= R2;
	cc = !BITTST (R5,0);
	R7 = 1 (X);
	R3 = -1 (X);
	if !cc R3 = R7;
	R1 >>>= 10;
	R7 = P2;
	R1 = R1 + R7;
	R2 = 3072 (X);
	R1 = R1 + R2;
	R7 = [SP+32];
	R2 = 7 (X);
	R2 = R7 & R2;
	R2 <<= 9;
	R7 = R1 + R2;
	R1 = 3600 (X);
	R7 *= R3;
	call ___modsi3;
	cc =R0<0;
	if !cc jump .L147 (bp);
	R1 = 3600 (X);
	R0 = R0 + R1;
.L147:
	R1 = 1799 (X);
	cc =R0<=R1;
	P4 = -1 (X);
	R1 = 1 (X);
	if !cc R1 = P4;
	[SP+36] = R1;
	R1 = 1800 (X);
	call ___modsi3;
	P4 = R0;
	P0 = 900 (X);
	cc =P4<=P0;
	if cc jump .L149 (bp);
	R0 = 1800 (X);
	P1 = R0;
	P1 -= P4;
	P4 = P1;
.L149:
	R0 = P4;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R1 = 89 (X);
	R0 = min(R0,R1) ||
	R2 = [SP+24] ||
	nop;
	R6 *= R2;
	P2 = FP + (P0 << 1);
	P0 = R0;
	R3 = W [P2] (Z);
	R1 = 10 (X);
	R0 = P4;
	[SP+20] = R3;
	P2 = FP + (P0 << 1);
	R2 = W [P2+2] (Z);
	R2 = R2 - R3;
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R3 = [SP+20];
	R0 = R0 + R3;
	R2 = [SP+36];
	R0 *= R2;
	R3 = [SP+40];
	R0 *= R3;
	P0 = [SP+336];
	R1 = P5;
	R0 >>>= 10;
	R0 *= R1;
	P4 = [P0+60];
	R0 >>>= 10;
	R4 = R0 - R4;
	R2 = [SP+24];
	R7 = R4 + R7;
	R7 *= R2;
	R1 = P4;
	R2 = 900 (X);
	R0 = R1 + R2;
	R1 = 3600 (X);
	call ___modsi3;
	cc =R0<0;
	R6 >>>= 10;
	R7 >>>= 10;
	if !cc jump .L150 (bp);
	R1 = 3600 (X);
	R0 = R0 + R1;
.L150:
	R3 = 1799 (X);
	cc =R0<=R3;
	R1 = 1 (X);
	R4 = -1 (X);
	if cc R4 = R1;
	R1 = 1800 (X);
	call ___modsi3;
	P5 = R0;
	P0 = 900 (X);
	cc =P5<=P0;
	if cc jump .L152 (bp);
	R0 = 1800 (X);
	P1 = R0;
	P1 -= P5;
	P5 = P1;
.L152:
	R0 = P5;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R1 = 89 (X);
	R0 = min(R0,R1);
	R1 = 10 (X);
	P2 = FP + (P0 << 1);
	P0 = R0;
	R3 = W [P2] (Z);
	[SP+20] = R3;
	P2 = FP + (P0 << 1);
	R0 = W [P2+2] (Z);
	R2 = R0 - R3;
	R0 = P5;
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R3 = [SP+20];
	R3 = R0 + R3;
	R1 = 3600 (X);
	R0 = P4;
	R4 *= R3;
	call ___modsi3;
	cc =R0<0;
	if !cc jump .L153 (bp);
	R1 = 3600 (X);
	R0 = R0 + R1;
.L153:
	R1 = 1799 (X);
	cc =R0<=R1;
	P5 = -1 (X);
	R1 = 1 (X);
	if !cc R1 = P5;
	[SP+36] = R1;
	R1 = 1800 (X);
	call ___modsi3;
	R2 = 900 (X);
	cc =R0<=R2;
	R3 = R0;
	if cc jump .L155 (bp);
	R0 = 1800 (X);
	R3 = R0 - R3;
.L155:
	R0 = ROT R3 BY 0 ||
	[SP+20] = R3 ||
	nop;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R2 = 89 (X);
	R0 = min(R0,R2) ||
	R3 = [SP+20] ||
	nop;
	P2 = FP + (P0 << 1);
	P0 = R0;
	R1 = W [P2] (Z);
	R0 = R3;
	P5 = R1;
	P2 = FP + (P0 << 1);
	R2 = W [P2+2] (Z);
	R2 = R2 - R1;
	R1 = 10 (X);
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R1 = P5;
	R0 = R0 + R1;
	R2 = [SP+36];
	R0 *= R2;
	R1 = R7;
	R2 = R6;
	R1 *= R0;
	R2 *= R4;
	P0 = [SP+336];
	R2 = R2 - R1;
	R2 >>>= 10;
	R3 = -10240 (X);
	R1 = [P0+52];
	R2 = R2 + R1;
	R1 = R2 + R3;
	R3 = 115 (X);
	R3 <<= 12;
	cc =R1<=R3 (iu);
	if !cc jump .L156;
	R6 *= R0;
	R7 *= R4;
	R7 = R6 + R7;
	R0 = [P0+56];
	R7 >>>= 10;
	R7 = R7 + R0;
	P0 = R7;
	P2.H = 65535;
	P2.L = 18432;
	P1.H = 2;
	P1.L = 38912;
	P2 = P0 + P2;
	cc =P2<=P1 (iu);
	if !cc jump .L156;
	R4 = [SP+28];
	R6 = -84 (X);
	R3 = [SP+80];
	R0 = R3 - R4;
	R0 <<= 10;
	cc =R0<R6;
	if !cc jump .L157 (bp);
	R0 = 6 (X);
.L159:
	[P3+20] = R0;
	R0 = 2 (X);
	[P3] = R2;
	[P3+24] = R0;
	R2 = [SP+32];
	R0 = 63 (X);
	R2 = R2 & R0;
	P2 = R2;
	R1 = 1024 (X);
	R0 = 600 (X);
	[P3+8] = R1;
	[P3+4] = R7;
	P2 = P2 + (P2 << 2);
	P4 = P4 + (P2 << 1);
	R3 = P4;
	R6 = -300 (X);
	R0 = R3 + R0;
	R1 = 3600 (X);
	R6 = R3 + R6;
	call ___modsi3;
	cc =R0<0;
	if !cc jump .L160 (bp);
	R1 = 3600 (X);
	R0 = R0 + R1;
.L160:
	R4 = 1799 (X);
	cc =R0<=R4;
	R1 = 1 (X);
	R7 = -1 (X);
	if cc R7 = R1;
	R1 = 1800 (X);
	call ___modsi3;
	P5 = R0;
	P0 = 900 (X);
	cc =P5<=P0;
	if cc jump .L162 (bp);
	R0 = 1800 (X);
	P1 = R0;
	P1 -= P5;
	P5 = P1;
.L162:
	R0 = P5;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R2 = 89 (X);
	R0 = min(R0,R2);
	P2 = FP + (P0 << 1);
	P0 = R0;
	R1 = W [P2] (Z);
	P4 = R1;
	R0 = P5;
	P2 = FP + (P0 << 1);
	R4 = W [P2+2] (Z);
	R4 = R4 - R1;
	R1 = 10 (X);
	call ___modsi3;
	R0 *= R4;
	R1 = 10 (X);
	call ___divsi3;
	R1 = P4;
	R0 = R0 + R1;
	R7 *= R0;
	R1 = 3600 (X);
	R0 = R6;
	call ___modsi3;
	cc =R0<0;
	if !cc jump .L163 (bp);
	R1 = 3600 (X);
	R0 = R0 + R1;
.L163:
	R2 = 1799 (X);
	cc =R0<=R2;
	R1 = 1 (X);
	R6 = -1 (X);
	if cc R6 = R1;
	R1 = 1800 (X);
	call ___modsi3;
	P5 = R0;
	P0 = 900 (X);
	cc =P5<=P0;
	if cc jump .L165 (bp);
	R0 = 1800 (X);
	P1 = R0;
	P1 -= P5;
	P5 = P1;
.L165:
	R0 = P5;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R2 = 89 (X);
	R0 = min(R0,R2);
	P2 = FP + (P0 << 1);
	P0 = R0;
	R1 = W [P2] (Z);
	P4 = R1;
	R0 = P5;
	P2 = FP + (P0 << 1);
	R4 = W [P2+2] (Z);
	R4 = R4 - R1;
	R1 = 10 (X);
	call ___modsi3;
	R0 *= R4;
	R1 = 10 (X);
	call ___divsi3;
	R1 = P4;
	R0 = R0 + R1;
	R6 *= R0;
	[P3+12] = R7;
	[P3+16] = R6;
.L144:
	R2 = [SP+68];
	R5 += 1;
	R0 = 9216 (X);
	R3 = 12 (X);
	R2 = R2 + R0;
	cc =R5==R3;
	P3 += 28;
	[SP+68] = R2;
	if cc jump .L388;
.L166:
	R0 = R5 << 10;
	R1 = 12 (X);
	call ___divsi3;
	R4 = [SP+80];
	cc =R0<R4;
	[SP+28] = R0;
	if !cc jump .L389;
	R0.H = 40503;
	R0.L = 31153;
	R0 *= R5;
	R7.H = 33199;
	R7.L = 5313;
	R0 = R0 + R7;
	R0 >>= 24;
	R1 = 27 (X);
	[SP+32] = R0;
	R1 <<= 12;
	R0 = [SP+68];
	call ___modsi3;
	R1 = 6144 (X);
	R6 = R0 + R1;
	R2 = -119 (X);
	cc =R6<R2;
	if !cc jump .L390 (bp);
	R0 = [SP+64];
	R4 = 0 (X);
	P2 = 0 (X);
	R1 = 1024 (X);
	P5 = 0 (X);
	jump.s .L145;
.L156:
	R7 = 5 (X);
	R7 <<= 17;
	[P3] = R7;
.L360:
	R0 = 5 (X);
	R0 <<= 16;
	[P3+4] = R0;
	R0 = 1024 (X);
	[P3+8] = R0;
	[P3+12] = R0;
	R0 = 0 (X);
	[P3+16] = R0;
	[P3+20] = R0;
	[P3+24] = R0;
	jump.s .L144;
.L389:
	R6 = 5 (X);
	R6 <<= 17;
	[P3] = R6;
	jump.s .L360;
.L157:
	R1 = 21503 (X);
	BITSET (R1, 16);
	cc =R0<=R1;
	if !cc jump 4 (bp); jump.s .L391;
	R0 = 1 (X);
	jump.s .L159;
.L388:
	P0 = [SP+344];
	R0 = 307 (X);
	R4 = [SP+92];
	P1 = [SP+24];
	P2 = 3408 (X);
	R0 *= R4;
	P5 = P0 + P2;
	P2 = [SP+24];
	R1 = 717 (X);
	R0 >>>= 10;
	P1 = P1 + (P1 << 1);
	R0 = R0 + R1;
	R1 = P1;
	R1 <<= 12;
	P2 = P2 + (P2 << 2);
	[SP+52] = R1;
	R1 = P2;
	R1 <<= 13;
	[SP+28] = R1;
	R1 = -82 (X);
	R1 *= R0;
	P3 = 0 (X);
	R0 <<= 10;
	[SP+48] = R1;
	[SP+32] = R0;
	R7 = P3;
	jump.s .L182;
.L167:
	R1 = R7 << 3;
	R1 = R1 - R7;
	cc = !BITTST (R7,0);
	R6 = 1 (X);
	R0 = R1;
	R2 = -1 (X);
	if !cc R2 = R6;
	P0 = [SP+336];
	R0 += 18;
	R0 *= R2;
	R2 = [SP+24];
	R0 *= R2;
	P3 = [P0+60];
	R0 <<= 10;
	R0 >>>= 10;
	R2 = 900 (X);
	R1 = P3;
	[SP+36] = R0;
	R0 = R1 + R2;
	R1 = 3600 (X);
	call ___modsi3;
	R6 = [SP+28];
	cc =R0<0;
	R6 >>>= 10;
	R5 = R0;
	if !cc jump .L170 (bp);
	R3 = 3600 (X);
	R5 = R0 + R3;
.L170:
	R0 = 1799 (X);
	cc =R5<=R0;
	R1 = -1 (X);
	P4 = 1 (X);
	if !cc P4 = R1;
	R0 = R5;
	R1 = 1800 (X);
	call ___modsi3;
	R2 = 900 (X);
	cc =R0<=R2;
	R3 = R0;
	if cc jump .L172 (bp);
	R0 = 1800 (X);
	R3 = R0 - R3;
.L172:
	R0 = ROT R3 BY 0 ||
	[SP+20] = R3 ||
	nop;
	R1 = 10 (X);
	call ___divsi3;
	P0 = R0;
	R2 = 89 (X);
	R0 = min(R0,R2) ||
	R3 = [SP+20] ||
	nop;
	P2 = R0;
	R0 = R3;
	P1 = FP + (P0 << 1);
	R1 = W [P1] (Z);
	P1 = R1;
	P0 = FP + (P2 << 1);
	R2 = W [P0+2] (Z);
	R2 = R2 - R1;
	R1 = 10 (X);
	[SP+20] = P1;
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	P1 = [SP+20];
	R3 = P4;
	R1 = 3600 (X);
	R2 = P1;
	R2 = R0 + R2;
	[SP+44] = R2;
	R2 *= R3;
	R0 = P3;
	P4 = R2;
	call ___modsi3;
	P3 = R0;
	cc =P3<0;
	if !cc jump .L173 (bp);
	P0 = 3600 (X);
	P3 = P3 + P0;
.L173:
	P1 = 1799 (X);
	cc =P3<=P1;
	R3 = -1 (X);
	R2 = 1 (X);
	if !cc R2 = R3;
	R1 = 1800 (X);
	R0 = P3;
	[SP+40] = R2;
	call ___modsi3;
	P0 = R0;
	P1 = 900 (X);
	cc =P0<=P1;
	if cc jump .L175 (bp);
	R0 = 1800 (X);
	P2 = R0;
	P2 -= P0;
	P0 = P2;
.L175:
	R0 = P0;
	R1 = 10 (X);
	[SP+20] = P0;
	call ___divsi3;
	P2 = R0;
	R1 = 89 (X);
	R0 = min(R0,R1) ||
	P0 = [SP+20] ||
	nop;
	R1 = 10 (X);
	P1 = FP + (P2 << 1);
	R3 = W [P1] (Z);
	P1 = R0;
	R0 = P0;
	[SP+20] = R3;
	P2 = FP + (P1 << 1);
	R2 = W [P2+2] (Z);
	R2 = R2 - R3;
	[SP+16] = R2;
	call ___modsi3;
	R2 = [SP+16];
	R0 *= R2;
	R1 = 10 (X);
	call ___divsi3;
	R3 = [SP+20];
	R0 = R0 + R3;
	R1 = ROT R0 BY 0 ||
	R2 = [SP+40] ||
	nop;
	R1 *= R2;
	P1 = R0;
	R2 = P4;
	R0 = [SP+36];
	R0 *= R1;
	R2 *= R6;
	P0 = [SP+336];
	R2 = R2 - R0;
	R2 >>>= 10;
	R3 = -10240 (X);
	R0 = [P0+52];
	R2 = R2 + R0;
	R0 = R2 + R3;
	R3 = 115 (X);
	R3 <<= 12;
	cc =R0<=R3 (iu);
	if !cc jump .L176;
	R6 *= R1;
	R0 = [SP+36];
	R1 = P4;
	R0 *= R1;
	R6 = R6 + R0;
	R6 >>>= 10;
	R0 = [P0+56];
	R3 = -23 (X);
	R6 = R6 + R0;
	R3 <<= 11;
	R1 = 83 (X);
	R0 = R6 + R3;
	R1 <<= 11;
	cc =R0<=R1 (iu);
	if !cc jump .L176;
	P0 = R7;
	R1 = -204 (X);
	R3 = [SP+92];
	R0 = R3 - R4;
	R4 = [SP+32];
	R4 >>>= 10;
	R3 = [SP+24];
	R4 *= R3;
	P4 = P0 + (P0 << 1);
	R0 <<= 10;
	P4 = P4 >> 2;
	cc =R0<R1;
	P4 += 3;
	R4 >>>= 10;
	if !cc jump .L177 (bp);
	R0 = 6 (X);
.L178:
	R3 = P4;
	cc =R3<R0 (iu);
	if cc P4 = R0;
.L179:
	[P5+8] = R4;
	R4 = 1799 (X);
	R0 = 2 (X);
	cc =R5<=R4;
	[P5] = R2;
	[P5+4] = R6;
	[P5+20] = P4;
	[P5+24] = R0;
	if cc jump .L180 (bp);
	R5 = [SP+44];
	R5 = -R5;
	[SP+44] = R5;
.L180:
	P0 = 1799 (X);
	cc =P3<=P0;
	if cc jump .L181 (bp);
	R0 = P1;
	R0 = -R0;
	P1 = R0;
.L181:
	R2 = [SP+44];
	[P5+12] = R2;
	[P5+16] = P1;
.L168:
	R3 = [SP+28];
	R5 = [SP+32];
	R7 += 1;
	R4 = [SP+52];
	R6 = [SP+48];
	R0 = 5 (X);
	R3 = R3 + R4;
	R5 = R5 + R6;
	cc =R7==R0;
	P5 += 28;
	[SP+28] = R3;
	[SP+32] = R5;
	if cc jump .L392;
.L182:
	R0 = R7 << 10;
	R1 = 5 (X);
	call ___divsi3;
	R2 = [SP+92];
	cc =R0<R2;
	R4 = R0;
	if cc jump .L167 (bp);
	R3 = 5 (X);
	R4 = 5 (X);
	R0 = 0 (X);
	R5 = 1024 (X);
	R3 <<= 17;
	R4 <<= 16;
	[P5] = R3;
	[P5+4] = R4;
	[P5+8] = R5;
	[P5+12] = R5;
	[P5+16] = R0;
	[P5+20] = R0;
	[P5+24] = R0;
	jump.s .L168;
.L176:
	R2 = 5 (X);
	R3 = 5 (X);
	R0 = 0 (X);
	R4 = 1024 (X);
	R2 <<= 17;
	R3 <<= 16;
	[P5] = R2;
	[P5+4] = R3;
	[P5+8] = R4;
	[P5+12] = R4;
	[P5+16] = R0;
	[P5+20] = R0;
	[P5+24] = R0;
	jump.s .L168;
.L392:
	R2 = [SP+104];
	R3 = 204 (X);
	R3 *= R2;
	R0 = 820 (X);
	R3 >>>= 10;
	R1 = [SP+124];
	R3 = R3 + R0;
	R1 >>>= 29;
	R0 = 6 (X);
	R0 = R0 - R1;
	P3 = R0;
	P0 = [SP+344];
	P2 = 3548 (X);
	R1 = R2;
	P4.H = 3;
	P5.H = 3;
	I0.H = 10;
	FP.H = 5;
	R4 = -1 (X);
	P2 = P0 + P2;
	I3 = P3;
	R1 <<= 10;
	R0 = 0 (X);
	P4.L = 49152;
	P5.L = 11264;
	R6 = 1024 (X);
	R7 = 0 (X);
	P0 = 2 (X);
	I2 = 6 (X);
	I1 = 255 (X);
	I0.L = 0;
	FP.L = 0;
	R4 <<= 18;
	P1 = 4 (X);
	P3 = R3;
	B1 = R2;
	LSETUP (.L188, .L396) LC1 = P1;
.L188:
	cc =R0==0;
	if cc jump .L262;
	R2 = R0 << 8;
	R3 = B1;
	cc =R3<=R2;
	if cc jump .L393;
	R3 = -255 (X);
	R2 = R0;
	cc =R1<R3;
	R2 += 2;
	if cc jump .L263 (bp);
	R5 = -1 (X);
	R5.H = 3;
	cc =R1<=R5;
	if cc jump .L394;
.L183:
	[P2] = P4;
	[P2+4] = P5;
	[P2+8] = P3;
	[P2+12] = R6;
	[P2+16] = R7;
	[P2+20] = R2;
	[P2+24] = P0;
.L185:
	R0 += 1;
	P2 += 28;
.L396:
	R1 = R1 + R4;
	R6 = [SP+96];
	cc =R6==0;
	if cc jump .L189;
	R1 = 1024 (X);
	R0 = R1 - R6;
	R7 = 1434 (X);
	P0 = [SP+336];
	R0 *= R7;
	R3 = [P0+52];
	R2 = [P0+56];
	P0 = [SP+344];
	R7 = 512 (X);
	R0 >>>= 10;
	R0 = R0 + R7;
	[P0+3668] = R0;
	cc =R6<=R7;
	R4 = [SP+88];
	R7 = 5 (X);
	R0 = 0 (X);
	[P0+3676] = R0;
	if cc R4 = R7;
	R0 = 1 (X);
	P1 = 300 (X);
	[P0+3660] = R3;
	[P0+3664] = R2;
	[P0+3672] = R1;
	[P0+3680] = R4;
	[P0+3684] = R0;
	SP = SP + P1;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L263:
	B0 = 6 (X);
.L186:
	R5 = B0;
	cc =R2<R5 (iu);
	if cc R2 = R5;
	jump.s .L183;
.L393:
	R5 = I0;
	[P2] = R5;
	[P2+4] = FP;
	[P2+8] = R6;
	[P2+12] = R6;
	[P2+16] = R7;
	[P2+20] = R7;
	[P2+24] = R7;
	jump.s .L185;
.L384:
	R1 = 200 (X);
	call ___divsi3;
	R1 = R0 >>> 8;
	R0 = 6 (X);
	R0 = R0 - R1;
	jump.s .L119;
.L370:
	R4 = 1023 (X);
	R2 = R2 & R4;
	cc =R2==0;
	if !cc jump 6; jump.l .L40;
	R6 += -1;
	jump.l .L40;
.L371:
	R3 = 1023 (X);
	R1 = R1 & R3;
	cc =R1==0;
	if !cc jump 6; jump.l .L43;
	R6 += -1;
	jump.l .L43;
.L225:
	R5 = 8 (X);
	[SP+116] = R5;
	jump.l .L84;
.L107:
	R0 = 1024 (X);
	[P0+2156] = R0;
	[P0+2160] = R0;
	R0 = 0 (X);
	[P0+2164] = R0;
	R0 = 1 (X);
	[P0+2168] = R0;
	R0 = 2 (X);
	[P0+2172] = R0;
.L108:
	R0 = -120 (X);
	R4 = [SP+84];
	R0 = R4 + R0;
	R5 = 24855 (X);
	R0 <<= 10;
	BITSET (R5, 18);
	cc =R0<=R5;
	if !cc jump .L234 (bp);
	R1 = 280 (X);
	call ___divsi3;
	R0 >>>= 1;
	R1 = 512 (X);
	R1 = R0 + R1;
.L110:
	R0 = [SP+84];
	R6 = [SP+84];
	R0 <<= 3;
	R0 = R0 + R6;
	R7 = 399 (X);
	R0 >>>= 7;
	cc =R6<=R7;
	R0 = R0 + R1;
	if cc jump .L235 (bp);
	R1 = 750 (X);
	cc =R6<R1;
	R2 = 13 (X);
	R1 = 10 (X);
	if !cc R1 = R2;
.L111:
	P0 = [SP+344];
	R2 = 30720 (X);
	[P0+2408] = R0;
	R0 = 1024 (X);
	[P0+2400] = R2;
	[P0+2412] = R0;
	R2 = 7 (X);
	R0 = 0 (X);
	R2 <<= 14;
	[P0+2416] = R0;
	R0 = 2 (X);
	[P0+2404] = R2;
	[P0+2420] = R1;
	[P0+2424] = R0;
	jump.s .L109;
.L177:
	R1.H = 3;
	R1.L = 13311;
	cc =R0<=R1;
	if !cc jump .L179 (bp);
	R1 = 205 (X);
	[SP+16] = R2;
	[SP+20] = P1;
	call ___divsi3;
	R1 = R0 >>> 8 ||
	P1 = [SP+20] ||
	nop;
	R0 = 6 (X);
	R0 = R0 - R1;
	R2 = [SP+16];
	jump.s .L178;
.L75:
	R2 = 0 (X);
	R4 = [SP+112];
	cc =R4==0;
	if !cc jump .L359;
	[SP+96] = R2;
.L192:
	R1 = -1 (X);
	P0 = [SP+336];
	R1.H = 15;
	R0 = [P0+48];
	R0 = R6 + R0;
	R0 = R0 & R1;
	R1 = R6 << 4 ||
	[P0+48] = R0 ||
	nop;
	R1 = R1 - R6;
	R0 = R1 << 4 ||
	R4 = [P0+36] ||
	nop;
	R0 = R0 - R1;
	R0 <<= 1;
	R0 >>>= 10;
	R0 = R0 + R4;
	R1 = 3600 (X);
	call ___modsi3;
	P2 = R6;
	P1 = [SP+336];
	R4 = R0;
	P2 = P2 + (P2 << 2);
	[P1+36] = R0;
	R0 = P2;
	R0 <<= 4;
	R1 = [P1+40];
	R0 >>>= 10;
	R0 = R0 + R1;
	R1 = 15 (X);
	BITSET (R1, 31);
	R0 = R0 & R1;
	cc =R0<0;
	if !cc jump .L80 (bp);
	R0 += -1;
	R1 = -16 (X);
	R0 = R0 | R1;
	R0 += 1;
.L80:
	P0 = R6;
	P5 = [SP+336];
	P0 = P0 + (P0 << 1);
	R6 = P0;
	R1 = [P5+44];
	[P5+40] = R0;
	R0 = R6 << 3;
	R0 = R0 + R1;
	R1 = 27 (X);
	R1 <<= 12;
	call ___modsi3;
	R1 = ROT R0 BY 0 ||
	[P5+44] = R0 ||
	nop;
	jump.l .L350;
.L375:
	R7 = [SP+32];
	B0 = R7;
	R3 = 33792 (Z);
	R7 = M1;
	jump.l .L203;
.L189:
	P1 = [SP+344];
	R0 = 5 (X);
	R0 <<= 17;
	[P1+3660] = R0;
	R0 = 5 (X);
	R0 <<= 16;
	[P1+3664] = R0;
	R0 = 1024 (X);
	[P1+3668] = R0;
	[P1+3672] = R0;
	R0 = 0 (X);
	[P1+3676] = R0;
	[P1+3680] = R0;
	[P1+3684] = R0;
	P1 = 300 (X);
	SP = SP + P1;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L394:
	cc =R1<0;
	B0 = R1;
	if !cc jump .L187 (bp);
	R3 = I1;
	R3 = R1 + R3;
	B0 = R3;
.L187:
	R5 = B0;
	R5 >>>= 16;
	R3 = I2;
	R3 = R3 - R5;
	B0 = R3;
	jump.s .L186;
.L391:
	R1 = 85 (X);
	[SP+16] = R2;
	call ___divsi3;
	R1 = R0 >>> 8 ||
	R2 = [SP+16] ||
	nop;
	R0 = 6 (X);
	R0 = R0 - R1;
	jump.s .L159;
.L377:
	cc =R3==0;
	if cc jump .L395 (bp);
	P0 = [SP+336];
	R0 = 4096 (X);
	R2 = 0 (X);
	[P0+32] = R0;
	R0 = [P1+24];
	[P0+24] = R0;
	R0 = [P1+20];
	[P0+20] = R0;
	R0 = 1 (X);
	[P0+28] = R0;
.L359:
	R3 = 0 (X);
	R4 = 0 (X);
	R6 = 0 (X);
	R7 = 0 (X);
	P0 = 0 (X);
	[SP+112] = R2;
	[SP+148] = R3;
	[SP+64] = R4;
	[SP+96] = R6;
	[SP+136] = R7;
	[SP+68] = P0;
	jump.l .L79;
.L235:
	R1 = 8 (X);
	jump.s .L111;
.L234:
	R1 = 1024 (X);
	jump.s .L110;
.L380:
	[P4] = R0;
	R0 = -1433 (X);
	R0 = R0 - R1;
	[P4+4] = R0;
	R0 = -8492 (X);
	R3 = R0 - R3;
	R0 = 1433 (X);
	R1 = R1 + R0;
	FP = [SP+32];
	[P5] = R3;
	[P5+4] = R1;
	jump.l .L105;
.L224:
	R2 = 0 (X);
	[SP+136] = R2;
	jump.l .L81;
.L223:
	R2 = 0 (X);
	R3 = 0 (X);
	R4 = 0 (X);
	R6 = 0 (X);
	R7 = 0 (X);
	[SP+112] = R2;
	[SP+148] = R3;
	[SP+64] = R4;
	[SP+136] = R6;
	[SP+68] = R7;
	jump.l .L79;
.L378:
	R7 = [SP+60];
	R5 <<= 1;
	R7 <<= 1;
	FP.H = __ZN12medievalwind12_GLOBAL__N_1L10sine_tableE;
	[SP+144] = R5;
	[SP+36] = R7;
	FP.L = __ZN12medievalwind12_GLOBAL__N_1L10sine_tableE;
	jump.l .L85;
.L242:
	R0 = 0 (X);
	jump.s .L119;
.L262:
	R2 = I3;
	jump.s .L183;
.L395:
	R2 = 4096 (X);
	P0 = [SP+336];
	R1 = [P0+32];
	R1 = R6 + R1;
	R1 = min(R1,R2) ||
	R3 = [P0+24] ||
	nop;
	R1 = max(R1,R0);
	[P0+32] = R1;
	R2 = [P1+24];
	cc =R2==R3;
	if cc jump .L77;
	[P0+32] = R0;
	R3 = 1024 (X);
	[SP+96] = R3;
	R2 = [P1+24];
.L78:
	P2 = [SP+336];
	P5 = R7;
	[P2+24] = R2;
	R0 = [P5+20];
	[P2+20] = R0;
	R0 = 1 (X);
	[P2+28] = R0;
	R7 = [P5+68];
	R7 += -1;
	R0 = 127 (X);
	cc =R7<=R0 (iu);
	if cc jump .L192 (bp);
	P1 = [SP+336];
	R2 = 0 (X);
	[SP+136] = R2;
	R0 = [P1+36];
	R1 = [P1+44];
	jump.l .L81;
.L77:
	R3 = 512 (X);
	R1 = R3 - R1;
	R1 <<= 1;
	R1 = max(R1,R0);
	[SP+96] = R1;
	jump.s .L78;
.L366:
	R4 = 1023 (X);
	R1 = R1 + R4;
	jump.l .L205;
.L217:
	R3 = 4 (X);
	R2 = 0 (X);
	jump.l .L41;
.L373:
	P5 = 0 (X);
	jump.l .L52;
.L369:
	R2 = 1023 (X);
	R0 = R0 & R2;
	cc =R0==0;
	R0 = CC;
	BITTGL (R0, 0);
	jump.l .L33;
.L214:
	R1 = 0 (X);
	jump.l .L30;
	.size	__ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE, .-__ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE
.text;
	.align 4
.global _medievalwind_display_reset;
.type _medievalwind_display_reset, STT_FUNC;
_medievalwind_display_reset:
	P2 = R0;
	P1 = R1;
	R2 = 0 (X);
	R0 = 4096 (X);
	[P2] = R2;
	[P2+20] = R2;
	[P2+24] = R2;
	[P2+28] = R2;
	[P2+32] = R0;
	[P2+36] = R2;
	[P2+40] = R2;
	[P2+44] = R2;
	[P2+48] = R2;
	[P2+56] = R2;
	[P2+52] = R2;
	[P2+60] = R2;
	[P1] = R2;
	[P1+516] = R2;
	[P1+1032] = R2;
	[P1+1548] = R2;
	rts;
	.size	_medievalwind_display_reset, .-_medievalwind_display_reset
	.align 4
.global _medievalwind_display_render;
.type _medievalwind_display_render, STT_FUNC;
_medievalwind_display_render:
	P2.H = __ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE;
	P2.L = __ZN12medievalwind7displayERNS_12DisplayStateERKN4opxy4draw5InputERNS3_5FrameILm4ELm64ELm58ELm16ELm16EEE;
	jump (P2);
	.size	_medievalwind_display_render, .-_medievalwind_display_render
	.align 4
.global _medievalwind_display_validate;
.type _medievalwind_display_validate, STT_FUNC;
_medievalwind_display_validate:
	P2 = R0;
	P0 = 512 (X);
	R2 = 1 (X);
	[--sp] = ( r7:6, p5:3 );

	M0 = R0;
	P0 = P2 + P0;
	P5 = -512 (X);
	R2 <<= 16;
	P3 = 516 (X);
	P4 = 4 (X);
	LSETUP (.L420, .L463) LC0 = P4;
.L420:
	R0 = [P0+-512];
	cc =R0==0;
	if cc jump .L444;
	P2 = P0 + P5;
	P1 = 64 (X);
	LSETUP (.L419, .L462) LC1 = P1;
.L419:
	R0 = 1 (X);
	R1 = [P2+4];
	R1 = R1 + R2;
	R0 <<= 17;
	cc =R1<=R0 (iu);
	if !cc jump .L444;
	nop;
	nop;
	nop;
	R1 = [P2+8];
	R1 = R1 + R2;
	cc =R1<=R0 (iu);
	if !cc jump .L444;
.L462:
	P2 += 8;
.L463:
	P0 = P0 + P3;
	P2 = M0;
	P1 = 2064 (X);
	R0 = 1 (X);
	P5.H = 65521;
	P1 = P2 + P1;
	R0 <<= 16;
	R7 = 1024 (X);
	P5.L = 0;
	P0 = 58 (X);
	LSETUP (.L422, .L461) LC1 = P0;
.L422:
	R6 = 11 (X);
	R1 = [P1];
	R1 = R1 + R0;
	R6 <<= 16;
	cc =R1<=R6 (iu);
	R2 = [P1+4];
	R3 = [P1+8];
	if !cc jump .L444;
	R1 = 3 (X);
	R2 = R2 + R0;
	R1 <<= 17;
	cc =R2<=R1 (iu);
	if !cc jump .L444;
	R3 += -1;
	R2 = 2047 (X);
	cc =R3<=R2 (iu);
	if !cc jump .L444;
	nop;
	nop;
	R6 = 2048 (X);
	R1 = [P1+12];
	R3 = R1 + R7;
	cc =R3<=R6 (iu);
	R2 = [P1+16];
	if !cc jump .L444;
	R3 = R2 + R7;
	cc =R3<=R6 (iu);
	if !cc jump .L444;
	R1 *= R1;
	R2 *= R2;
	R1 = R1 + R2;
	P4 = R1;
	P2 = P4 + P5;
	P4.H = 2;
	P4.L = 0;
	cc =P2<=P4 (iu);
	if !cc jump .L444;
	nop;
	nop;
	R2 = 15 (X);
	R1 = [P1+20];
	cc =R1<=R2 (iu);
	if !cc jump .L444;
	nop;
	nop;
	nop;
	R1 = [P1+24];
	cc =R1<=2 (iu);
	if !cc jump .L444;
.L461:
	P1 += 28;
	P0 = 3724 (X);
	P4 = M0;
	R3 = 1 (X);
	P0 = P4 + P0;
	R3 <<= 16;
	P5 = 16 (X);
	LSETUP (.L429, .L460) LC0 = P5;
.L429:
	R6 = 11 (X);
	R1 = [P0+-36];
	R1 = R1 + R3;
	R6 <<= 16;
	cc =R1<=R6 (iu);
	R0 = [P0+-32];
	R2 = [P0+-28];
	if !cc jump .L444;
	R7 = 3 (X);
	R0 = R0 + R3;
	R7 <<= 17;
	cc =R0<=R7 (iu);
	if !cc jump .L444;
	R2 += -1;
	R0 = 2047 (X);
	cc =R2<=R0 (iu);
	if !cc jump .L444;
	P1 = P0;
	P1 += -24;
	P2 = P0;
	P2 -= P1;
	LSETUP (.L426, .L459) LC1 = P2;
.L426:
	R0 = B [P1++] (X);
	cc =R0==0;
	if cc jump .L425;
.L459:
	nop;
.L444:
	R0 = 0 (X);
.L417:
	( r7:6, p5:3 ) = [sp++];

	rts;
.L425:
.L460:
	P0 += 36;
	P0 = 4272 (X);
	P2 = M0;
	P0 = P2 + P0;
	P5 = 4 (X);
	LSETUP (.L427, .L458) LC0 = P5;
.L427:
	P1 = P0;
	P1 += -8;
	P2 = 8 (X);
	LSETUP (.L424, .L457) LC1 = P2;
.L424:
	R0 = B [P1++] (X);
	cc =R0==0;
	if cc jump .L423;
.L457:
	nop;
	jump.s .L444;
.L423:
.L458:
	P0 += 8;
	R0 = 1 (X);
	jump.s .L417;
	.size	_medievalwind_display_validate, .-_medievalwind_display_validate
	.section	.rodata
	.align 4
	.type	__ZN12medievalwind12_GLOBAL__N_1L11ring_revealE, @object
	.size	__ZN12medievalwind12_GLOBAL__N_1L11ring_revealE, 56
__ZN12medievalwind12_GLOBAL__N_1L11ring_revealE:
	.long	4
	.long	9
	.long	1
	.long	12
	.long	6
	.long	2
	.long	11
	.long	7
	.long	0
	.long	13
	.long	5
	.long	10
	.long	3
	.long	8
	.align 4
	.type	__ZN12medievalwind12_GLOBAL__N_1L9ray_startE, @object
	.size	__ZN12medievalwind12_GLOBAL__N_1L9ray_startE, 36
__ZN12medievalwind12_GLOBAL__N_1L9ray_startE:
	.long	0
	.long	80
	.long	80
	.long	330
	.long	330
	.long	580
	.long	580
	.long	830
	.long	830
	.align 4
	.type	__ZN12medievalwind12_GLOBAL__N_1L9ray_orderE, @object
	.size	__ZN12medievalwind12_GLOBAL__N_1L9ray_orderE, 36
__ZN12medievalwind12_GLOBAL__N_1L9ray_orderE:
	.long	0
	.long	-1
	.long	1
	.long	-2
	.long	2
	.long	-3
	.long	3
	.long	-4
	.long	4
	.align 4
	.type	__ZN12medievalwind12_GLOBAL__N_1L11hall_tenthsE, @object
	.size	__ZN12medievalwind12_GLOBAL__N_1L11hall_tenthsE, 36
__ZN12medievalwind12_GLOBAL__N_1L11hall_tenthsE:
	.long	7
	.long	8
	.long	9
	.long	10
	.long	12
	.long	14
	.long	17
	.long	22
	.long	30
	.align 2
	.type	__ZN12medievalwind12_GLOBAL__N_1L10sine_tableE, @object
	.size	__ZN12medievalwind12_GLOBAL__N_1L10sine_tableE, 182
__ZN12medievalwind12_GLOBAL__N_1L10sine_tableE:
	.short	0
	.short	18
	.short	36
	.short	54
	.short	71
	.short	89
	.short	107
	.short	125
	.short	143
	.short	160
	.short	178
	.short	195
	.short	213
	.short	230
	.short	248
	.short	265
	.short	282
	.short	299
	.short	316
	.short	333
	.short	350
	.short	367
	.short	384
	.short	400
	.short	416
	.short	433
	.short	449
	.short	465
	.short	481
	.short	496
	.short	512
	.short	527
	.short	543
	.short	558
	.short	573
	.short	587
	.short	602
	.short	616
	.short	630
	.short	644
	.short	658
	.short	672
	.short	685
	.short	698
	.short	711
	.short	724
	.short	737
	.short	749
	.short	761
	.short	773
	.short	784
	.short	796
	.short	807
	.short	818
	.short	828
	.short	839
	.short	849
	.short	859
	.short	868
	.short	878
	.short	887
	.short	896
	.short	904
	.short	912
	.short	920
	.short	928
	.short	935
	.short	943
	.short	949
	.short	956
	.short	962
	.short	968
	.short	974
	.short	979
	.short	984
	.short	989
	.short	994
	.short	998
	.short	1002
	.short	1005
	.short	1008
	.short	1011
	.short	1014
	.short	1016
	.short	1018
	.short	1020
	.short	1022
	.short	1023
	.short	1023
	.short	1024
	.short	1024
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
