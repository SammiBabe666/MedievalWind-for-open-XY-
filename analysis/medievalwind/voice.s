.file "voice.cpp";
.text;
	.align 4
.type __ZL5beginR4SlotP6Handlem, STT_FUNC;
__ZL5beginR4SlotP6Handlem:
	[--sp] = ( r7:7, p5:5 );

	R7.H = __ZL7handles;
	R7.L = __ZL7handles;
	P5 = R0;
	R7 = R1 - R7;
	R0.H = 43690;
	R7 >>>= 2;
	R0.L = 43691;
	R7 *= R0;
	P2 = P5;
	R7 += 1;
	P0 = P5;
	R3 = 0 (X);
	P1 = 11860 (X);
	LSETUP (.L2, .L7) LC1 = P1;
.L2:
.L7:
	B [P0++] = R3;
	P1.H = __ZL6blocks;
	R0 = 0 (X);
	P1.L = __ZL6blocks;
	[P5+11868] = R0;
	R0 = W [P1] (X);
	W [P5+11872] = R0;
	R0.H = __ZL6voices;
	[P5+11864] = R2;
	R0.L = __ZL6voices;
	R2 = P5;
	R0 = R2 - R0;
	R2.H = 29490;
	P1 = R1;
	R0 >>>= 2;
	R2.L = 6313;
	R0 *= R2;
	R0 += 1;
	[P5+11860] = R7;
	B [P1+8] = R0;
	B [P1+9] = R3;
	P1 = 2048 (X);
	P1 = P5 + P1;
	R1 = 0 (X);
.L3:
	W [P2++] = R1;
	cc =P2==P1;
	if !cc jump .L3 (bp);
	R1.H = 40503;
	R1.L = 31153;
	R7 *= R1;
	R1.H = 40503;
	R1.L = 31161;
	R2.H = 42405;
	R1 = R7 + R1;
	R2.L = 42405;
	R0 = 0 (X);
	R2 = R1 ^ R2;
	[P5+11852] = R1;
	[P5+11672] = R0;
	[P5+11676] = R0;
	[P5+11680] = R0;
	[P5+11684] = R0;
	[P5+11688] = R0;
	[P5+11692] = R0;
	[P5+11696] = R0;
	[P5+11700] = R0;
	[P5+11704] = R0;
	[P5+11712] = R0;
	[P5+11708] = R0;
	[P5+11716] = R0;
	[P5+11728] = R0;
	[P5+11724] = R0;
	[P5+11720] = R0;
	[P5+11744] = R0;
	[P5+11740] = R0;
	[P5+11736] = R0;
	[P5+11732] = R0;
	[P5+11748] = R2;
	[P5+11752] = R0;
	[P5+11756] = R0;
	[P5+11760] = R0;
	[P5+11764] = R0;
	[P5+11768] = R0;
	[P5+11772] = R0;
	[P5+11776] = R0;
	[P5+11780] = R0;
	[P5+11784] = R0;
	[P5+11788] = R0;
	[P5+11792] = R0;
	[P5+11796] = R0;
	[P5+11820] = R1;
	R1 = 32767 (X);
	[P5+11800] = R0;
	[P5+11804] = R0;
	[P5+11812] = R0;
	[P5+11808] = R0;
	[P5+11816] = R0;
	[P5+11824] = R0;
	[P5+11828] = R1;
	[P5+11836] = R0;
	[P5+11832] = R0;
	[P5+11856] = R0;
	( r7:7, p5:5 ) = [sp++];

	rts;
	.size	__ZL5beginR4SlotP6Handlem, .-__ZL5beginR4SlotP6Handlem
	.align 4
.type _zero, STT_FUNC;
_zero:
	R0 = 0 (X);
	rts;
	.size	_zero, .-_zero
	.align 4
.type _noop, STT_FUNC;
_noop:
	rts;
	.size	_noop, .-_noop
	.align 4
.type _end, STT_FUNC;
_end:
	[--sp] = ( r7:7, p5:3 );

	P5 = R0;
	[--SP] = RETS;
	SP += -12;
	R0 = B [P5+8] (Z);
	cc =R0==0;
	if cc jump .L12 (bp);
	R1 = 11876 (X);
	R0 += -1;
	R0 *= R1;
	R7.H = __ZL7handles;
	P1 = R0;
	R1 = P5;
	R7.L = __ZL7handles;
	R2 = R1 - R7;
	R1.H = 43690;
	P4.H = __ZL6voices;
	R2 >>>= 2;
	R1.L = 43691;
	P4.L = __ZL6voices;
	R2 *= R1;
	P4 = P4 + P1;
	P3 = 11860 (X);
	P3 = P4 + P3;
	R0 = [P3];
	R2 += 1;
	cc =R0==R2;
	if cc jump .L21;
	cc =R0==0;
	if cc jump .L12 (bp);
	R0 = 11868 (X);
	P2 = R0;
	P4 = P4 + P2;
	R0 = [P4];
	cc =R2==R0;
	if cc jump .L22;
.L12:
	SP += 12;
	R0 = 0 (X);
	W [P5+8] = R0;
	RETS = [SP++];
	( r7:7, p5:3 ) = [sp++];

	rts;
.L21:
	call sdk_voice_ticks;
	P2 = [P4+11868];
	R1 = 0 (X);
	[P3] = R1;
	cc =P2==0;
	if cc jump .L12 (bp);
	P1 = R7;
	P2 += -1;
	P2 = P2 + (P2 << 1);
	R2 = R0;
	R0 = P4;
	P2 = P1 + (P2 << 2);
	R1 = P2;
	call __ZL5beginR4SlotP6Handlem;
	jump.s .L12;
.L22:
	R0 = 0 (X);
	[P4] = R0;
	jump.s .L12;
	.size	_end, .-_end
	.align 4
.global _medievalwind_destroy;
.type _medievalwind_destroy, STT_FUNC;
_medievalwind_destroy:
	[--SP] = RETS;
	SP += -12;
	call _end;
	SP += 12;
	RETS = [SP++];
	R0 = 0 (X);
	rts;
	.size	_medievalwind_destroy, .-_medievalwind_destroy
	.align 4
.type __ZL5endedR4Slotm, STT_FUNC;
__ZL5endedR4Slotm:
	P1 = R0;
	P2 = [P1+11868];
	cc =P2==0;
	if cc jump .L25 (bp);
	P0.H = __ZL6blocks;
	P0.L = __ZL6blocks;
	R0 = W [P0] (X);
	P2 += -1;
	P0.H = __ZL7handles;
	P2 = P2 + (P2 << 1);
	P0.L = __ZL7handles;
	P2 = P0 + (P2 << 2);
	R2 = W [P2+4] (X);
	R2 = R0 - R2;
	R2 = R2.L (Z);
	cc =R2<=2 (iu);
	if cc jump .L31 (bp);
	R2 = W [P2+6] (X);
	R0 = R0 - R2;
	R0 = R0.L (Z);
	cc =R0<=2 (iu);
	if cc jump .L31 (bp);
	R0 = 0 (X);
	[P1+11868] = R0;
.L25:
	P2.H = __ZL7counted;
	P2.L = __ZL7counted;
	R0 = [P2];
	R0 = R1 - R0;
	R2 = 60 (X);
	cc =R0<=R2 (iu);
	if cc jump .L27 (bp);
	R0 = [P1+11864];
	R1 = R1 - R0;
	cc =R1<=R2 (iu);
	if cc jump .L27 (bp);
	R0 = 1 (X);
	rts;
.L27:
	P2.H = __ZL6blocks;
	P2.L = __ZL6blocks;
	R1 = W [P2] (X);
	P2 = [P1+11860];
	P0.H = __ZL7handles;
	P0.L = __ZL7handles;
	P2 += -1;
	P2 = P2 + (P2 << 1);
	P2 = P0 + (P2 << 2);
	R0 = W [P2+4] (X);
	R0 = R1 - R0;
	R0 = R0.L (Z);
	cc =R0<=2 (iu);
	if !cc jump .L35 (bp);
.L31:
	R0 = 0 (X);
	rts;
.L35:
	nop;
	R0 = W [P1+11872] (X);
	R1 = R1 - R0;
	R1 = R1.L (X);
	cc =R1<=2 (iu);
	R0 = CC;
	BITTGL (R0, 0);
	rts;
	.size	__ZL5endedR4Slotm, .-__ZL5endedR4Slotm
	.align 4
.type __ZL5sweepm, STT_FUNC;
__ZL5sweepm:
	[--sp] = ( r7:6, p5:3 );

	P5.H = __ZL6voices;
	P4 = 26721 (X);
	P5.L = __ZL6voices;
	P4 = P4 << 2;
	P3.H = __ZL7handles;
	LINK 12;
	R7 = R0;
	P4 = P5 + P4;
	R6 = 0 (X);
	P3.L = __ZL7handles;
	FP = 11876 (X);
	jump.s .L40;
.L38:
	P5 = P5 + FP;
	cc =P5==P4;
	if cc jump .L48;
	nop;
	nop;
	nop;
.L40:
	R0 = [P5+11860];
	cc =R0==0;
	if cc jump .L38 (bp);
	R1 = R7;
	R0 = P5;
	call __ZL5endedR4Slotm;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L38 (bp);
	P2 = [P5+11868];
	[P5+11860] = R6;
	cc =P2==0;
	if cc jump .L38 (bp);
	P2 += -1;
	P2 = P2 + (P2 << 1);
	P2 = P3 + (P2 << 2);
	R2 = R7;
	R1 = P2;
	R0 = P5;
	call __ZL5beginR4SlotP6Handlem;
	jump.s .L38;
.L48:
	SP += 12;
	FP = [SP++];
	RETS = [SP++];
	( r7:6, p5:3 ) = [sp++];

	rts;
	.size	__ZL5sweepm, .-__ZL5sweepm
	.align 4
.type __ZL7acquireP6Handlemb, STT_FUNC;
__ZL7acquireP6Handlemb:
	[--sp] = ( r7:4, p5:3 );

	LINK 20;
	R6 = R2.B (Z);
	FP.H = __ZL6voices;
	P4 = 26721 (X);
	FP.L = __ZL6voices;
	P4 = P4 << 2;
	cc =R6==0;
	R4 = R0;
	R7 = R1;
	B [SP+19] = R2;
	P4 = FP + P4;
	P5 = 0 (X);
	R5 = 0 (X);
	R6 = CC;
	P3 = 11876 (X);
	jump.s .L56;
.L83:
	cc =R5==0;
	if cc jump .L81;
.L52:
	FP = FP + P3;
	cc =P4==FP;
	if cc jump .L82;
	nop;
	nop;
.L56:
	P1 = FP;
	R0 = [FP+11860];
	cc =R0==0;
	if cc jump .L50;
	R1 = R7;
	R0 = FP;
	call __ZL5endedR4Slotm;
	R0 = R0.B (Z);
	cc =R0==0;
	if !cc jump .L83 (bp);
	CC = R6;
	if cc jump .L52 (bp);
	cc =P5==0;
	if cc jump .L63;
	nop;
	nop;
	nop;
	R0 = [FP+11868];
	cc =R0==0;
	R2 = [P5+11868];
	R1 = CC;
	cc =R2==0;
	R2 = CC;
	cc =R1==R2;
	R0 = R1;
	if !cc jump .L53 (bp);
	P2.H = __ZL6blocks;
	P2.L = __ZL6blocks;
	R2 = W [P2] (X);
	R0 = W [FP+11872] (X);
	R0 = R2 - R0;
	R1 = W [P5+11872] (X);
	R0 = R0.L (Z);
	R1 = R2 - R1;
	cc =R0<=7 (iu);
	R1 = R1.L (Z);
	R3 = CC;
	cc =R1<=7 (iu);
	P1 = R3;
	R3 = CC;
	P2 = R3;
	cc =P1==P2;
	if cc jump .L54 (bp);
	R0 = P1;
	BITTGL (R0, 0);
.L53:
	cc = !BITTST (R0,0);
	if !cc P5 = FP;
	jump.s .L52;
.L81:
	R5 = FP;
	jump.s .L52;
.L82:
	cc =R5==0;
	if !cc jump .L84;
	P2 = R4;
	R1 = 256 (X);
	R0 = B [SP+19] (Z);
	cc =R0==0;
	W [P2+8] = R1;
	if cc jump .L49;
	nop;
	nop;
	nop;
	P2 = [P5+11868];
	cc =P2==0;
	if !cc jump .L85 (bp);
.L62:
	R0.H = __ZL7handles;
	R0.L = __ZL7handles;
	R0 = R4 - R0;
	R1.H = 43690;
	R1.L = 43691;
	R0 >>>= 2;
	R0 *= R1;
	R2.H = __ZL6voices;
	R0 += 1;
	R1 = P5;
	R2.L = __ZL6voices;
	[P5+11868] = R0;
	R0 = R1 - R2;
	R1.H = 29490;
	P2 = R4;
	R0 >>>= 2;
	R1.L = 6313;
	R0 *= R1;
	R0 += 1;
	B [P2+8] = R0;
	P2.H = __ZL6blocks;
	P2.L = __ZL6blocks;
	R0 = W [P2] (X);
	P2 = R4;
	W [P2+6] = R0;
	R0 = 0 (X);
	B [P2+9] = R0;
.L49:
	SP += 20;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L84:
	P1 = R5;
.L50:
	R0 = [P1+11860];
	cc =R0==0;
	if cc jump .L59 (bp);
	P2 = [P1+11868];
	R0 = 0 (X);
	[P1+11860] = R0;
	cc =P2==0;
	if !cc jump .L86;
.L59:
	SP += 20;
	R2 = R7;
	R1 = R4;
	FP = [SP++];
	R0 = P1;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	jump.l __ZL5beginR4SlotP6Handlem;
.L63:
	P5 = FP;
	jump.s .L52;
.L54:
	P2.H = __ZL7handles;
	P1 = [FP+11860];
	P2.L = __ZL7handles;
	P1 += -1;
	P1 = P1 + (P1 << 1);
	P1 = P2 + (P1 << 2);
	R3 = W [P1+4] (X);
	P1 = [P5+11860];
	R3 = R2 - R3;
	R3 = R3.L (Z);
	P0 = R3;
	P1 += -1;
	P1 = P1 + (P1 << 1);
	P1 = P2 + (P1 << 2);
	R3 = W [P1+4] (X);
	P1 = R3;
	R3 = P1;
	R2 = R2 - R3;
	R2 = R2.L (Z);
	R3 = P0;
	cc =R3==R2;
	if cc jump .L55 (bp);
	cc =R2<R3 (iu);
	R0 = CC;
	cc = !BITTST (R0,0);
	if !cc P5 = FP;
	jump.s .L52;
.L85:
	P2 += -1;
	P1.H = __ZL7handles+8;
	P2 = P2 + (P2 << 1);
	P1.L = __ZL7handles+8;
	P2 = P1 + (P2 << 2);
	W [P2] = R1;
	jump.s .L62;
.L55:
	cc =R1<R0 (iu);
	R0 = CC;
	cc = !BITTST (R0,0);
	if !cc P5 = FP;
	jump.s .L52;
.L86:
	P2 += -1;
	P0.H = __ZL7handles;
	P0.L = __ZL7handles;
	P2 = P2 + (P2 << 1);
	P2 = P0 + (P2 << 2);
	R0 = P1;
	R2 = R7;
	R1 = P2;
	[SP+12] = P1;
	call __ZL5beginR4SlotP6Handlem;
	P1 = [SP+12];
	jump.s .L59;
	.size	__ZL7acquireP6Handlemb, .-__ZL7acquireP6Handlemb
	.align 4
.global _medievalwind_start;
.type _medievalwind_start, STT_FUNC;
_medievalwind_start:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	call sdk_voice_ticks;
	P2.H = __ZL7counted;
	P2.L = __ZL7counted;
	R7 = ROT R0 BY 0 ||
	R0 = [P2] ||
	nop;
	R0 = R7 - R0;
	R1 = 60 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L99;
	nop;
	nop;
	nop;
.L88:
	R0 = B [P5+8] (Z);
	cc =R0==0;
	if cc jump .L89 (bp);
	R0 += -1;
	R1 = 11876 (X);
	R1 *= R0;
	R3.H = __ZL6voices;
	R3.L = __ZL6voices;
	R1 = R3 + R1;
	P2 = R1;
	R1.H = __ZL7handles;
	R6 = P5;
	R1.L = __ZL7handles;
	R2 = R6 - R1;
	P1 = [P2+11860];
	R6.H = 43690;
	R2 >>>= 2;
	R6.L = 43691;
	R2 *= R6;
	cc =P1==0;
	R2 += 1;
	if cc jump .L90 (bp);
	R6 = [P2+11868];
	cc =R6==R2;
	if cc jump .L91;
.L90:
	R6 = P1;
	cc =R6==R2;
	if cc jump .L100;
.L89:
	R1 = R7;
	R2 = 1 (X);
	R0 = P5;
	call __ZL7acquireP6Handlemb;
.L91:
	SP += 12;
	RETS = [SP++];
	R0 = 0 (X);
	( r7:6, p5:5 ) = [sp++];

	rts;
.L100:
	R2 = 11876 (X);
	R0 *= R2;
	R3 = R3 + R0;
	P2 = R3;
	R0 = [P2+11868];
	cc =R0==0;
	if cc jump .L101;
	P1 = 11860 (X);
	P1 = P2 + P1;
	R2 = 0 (X);
	[P1] = R2;
	P1 = R0;
	P0 = R1;
	R2 = R7;
	R0 = R3;
	P1 += -1;
	P1 = P1 + (P1 << 1);
	P1 = P0 + (P1 << 2);
	R1 = P1;
	call __ZL5beginR4SlotP6Handlem;
	jump.s .L89;
.L99:
	R0 = R7;
	call __ZL5sweepm;
	jump.s .L88;
.L101:
	P1.H = __ZL6blocks;
	P1.L = __ZL6blocks;
	R0 = W [P1] (X);
	W [P2+11872] = R0;
	R0 = 0 (X);
	[P2+11824] = R0;
	R0 = 32767 (X);
	[P2+11828] = R0;
	R0 = [P2+11852];
	[P2+11820] = R0;
	R0 = [P2+11728];
	R1 = R0 >>> 2;
	R0 = R0 - R1;
	[P2+11864] = R7;
	[P2+11728] = R0;
	jump.s .L91;
	.size	_medievalwind_start, .-_medievalwind_start
.global ___udivsi3;
	.align 4
.type __ZN12medievalwind6renderERNS_5VoiceERNS_6SharedEmPlPKlPKm.isra.7, STT_FUNC;
__ZN12medievalwind6renderERNS_5VoiceERNS_6SharedEmPlPKlPKm.isra.7:
	[--sp] = ( r7:4, p5:3 );

	P5 = R0;
	LINK 856;
	P2 = 11752 (X);
	P0 = R2;
	[SP+896] = R1;
	R0 = [P5+11856];
	cc =R0==0;
	R7 = [SP+904];
	P2 = P5 + P2;
	R6 = 0 (X);
	R2 = CC;
	P1 = 8 (X);
	LSETUP (.L106, .L306) LC1 = P1;
.L106:
	CC = R2;
	R0 = [P0++];
	R0 = max(R0,R6);
	R0 >>>= 16;
	if cc jump .L105 (bp);
	R3 = [P2];
	R1 = R0 - R3;
	R5 = R1;
	R5 += 3;
	cc =R5<=6 (iu);
	if cc jump .L105 (bp);
	R0 = R1 >>> 2;
	R0 = R0 + R3;
.L105:
	[P2] = R0;
.L306:
	P2 += 4;
	P4 = [P5+11824];
	P0 = 32767 (X);
	P0 = P0 + P0;
	R3 = [P5+11764];
	R2 = [P5+11760];
	cc =P4<=P0 (iu);
	[SP+36] = R3;
	R6 = [P5+11752];
	R4 = [P5+11756];
	[SP+48] = R2;
	R3 = [P5+11768];
	P3 = [P5+11772];
	if !cc jump .L107 (bp);
	R0 = P4;
	R0 += 1;
	[P5+11824] = R0;
	P4 = R0;
.L107:
	nop;
	R1 = [P5+11816];
	cc =R1==0;
	R0 = [P5+11852];
	if !cc jump .L108 (bp);
	R2.H = 25;
	R2.L = 26125;
	R0 *= R2;
	R5.H = 15470;
	R5.L = 62303;
	R0 = R0 + R5;
	R1 = R0 >> 26;
	R0 *= R2;
	R1 += 60;
	R0 = R0 + R5;
	[P5+11816] = R1;
	R5 = -16384 (X);
	R1 = R0 >> 17;
	R1 = R1 + R5;
	[P5+11852] = R0;
	[P5+11812] = R1;
.L109:
	R5 = [P5+11808];
	P2 = [P5+11820];
	R1 = R1 - R5;
	R1 >>>= 5;
	R1 = R1 + R5;
	FP = R1;
	[P5+11808] = R1;
	R1.H = 330;
	R2 = P2;
	R0 <<= 2;
	R1.L = 33120;
	R0 >>= 14;
	R1 = R2 + R1;
	P0 = 400 (X);
	R2 = R0 + R1;
	cc =P4<=P0 (iu);
	[P5+11820] = R2;
	if cc jump 4; jump.s .L215;
	P1 = P4 + (P4 << 2);
	R0 = P1;
	R0 <<= 4;
	R5 = P4;
	R5 = R0 + R5;
	[SP+28] = R5;
.L110:
	R0 = [P5+11828];
	R1 = R0 >>> 5;
	R1 = R0 - R1;
	P0 = 13107 (X);
	[P5+11828] = R1;
	P1 = R1;
	R1 = P0;
	R1 *= R6;
	R0 = 21299 (X);
	R1 >>>= 15;
	R0 = R0 - R1;
	R5 = P3;
	R1 = 1638 (X);
	R1 *= R5;
	R5 = 31130 (X);
	R5 *= R6;
	R1 >>>= 15;
	R1 = R0 - R1;
	[SP+64] = R1;
	R5 >>>= 15;
	R1 = P0;
	R0 = R5 + R1;
	R1 = P3;
	R5 = 4915 (X);
	R5 *= R1;
	R5 >>>= 15;
	R5 = R0 + R5;
	R1 = [SP+64];
	R0 = 31785 (X);
	R0 = R0 - R1;
	R0 <<= 14;
	R1 = ROT R5 BY 0 ||
	[SP+12] = R2 ||
	nop;
	[SP+16] = R3;
	[SP+20] = P1;
	call ___udivsi3;
	R3 = [SP+16];
	cc =R3==0;
	[SP+56] = R0;
	R2 = [SP+12];
	P1 = [SP+20];
	if cc jump .L216 (bp);
	cc =R2<0;
	if !cc jump 4 (bp); jump.s .L280;
	R0 = R2 >> 15;
	R1 = -32768 (X);
	R0 = R0 + R1;
.L113:
	R2 = [SP+28];
	R0 *= R2;
	R1 = R0 >>> 15;
	P0 = R1;
	P1 = P1 + (P1 << 1);
	R1 = P1;
	R2 = R1 << 4;
	R1 = R1 - R2;
	P2 = P0 + (P0 << 2);
	P2 = P0 + (P2 << 1);
	P0 = FP + (FP << 1);
	P0 = FP + (P0 << 2);
	P0 = P0 << 2;
	P2 = P0 + (P2 << 1);
	R2 = P2;
	R1 = R2 + R1;
	R1 >>>= 7;
	R1 *= R3;
	R1 >>>= 15;
	[SP+40] = R1;
	R1 = FP;
	R0 >>>= 19;
	R1 >>>= 3;
	R0 = R0 + R1;
	R0 *= R3;
	R3 = [SP+56];
	R0 >>>= 15;
	R0 *= R3;
	R0 >>>= 15;
	R0 = R0 + R3;
	[SP+68] = R0;
	jump.s .L111;
.L108:
	R1 += -1;
	[P5+11816] = R1;
	R1 = [P5+11812];
	jump.s .L109;
.L216:
	R2 = [SP+56];
	R3 = 0 (X);
	[SP+68] = R2;
	[SP+40] = R3;
.L111:
	R0 = 2000 (X);
	R1 = 5695 (X);
	cc =R7<R0 (iu);
	BITSET (R1, 22);
	if !cc R0 = R7;
	cc =R7<=R1 (iu);
	if !cc jump .L114;
.L115:
	R2 = 5695 (X);
	R0 <<= 1;
	BITSET (R2, 22);
	cc =R0<=R2 (iu);
	if cc jump .L115 (bp);
.L114:
	R3.H = 6103;
	R3.L = 33792;
	cc =R0<=R3 (iu);
	R7 = R3;
	R3 = R4 >>> 7;
	if cc R7 = R0;
	R0 = R3 << 4;
	R0 = R0 - R3;
	P2 = R0;
	R3 = [SP+48];
	P1 = 768 (X);
	R3 >>>= 7;
	R7 >>= 8;
	P0 = P2 + P1;
	P2 = R3;
	R2 = 201 (X);
	R2 *= R7;
	P2 = P2 + (P2 << 1);
	P0 = P0 + P2;
	P2 = P3 << 2;
	R0 = P2;
	R0 >>>= 7;
	P2 = R0;
	R1 = R2 >> 14 ||
	[SP+28] = R7 ||
	nop;
	R7 = R2 >> 5;
	P0 -= P2;
	P2 = 5400 (X);
	R3 = P2;
	R0 = P0;
	R0 = min(R0,R3);
	R3 = P1;
	R0 = max(R0,R3);
	R0 *= R1;
	P0 = R1;
	R0 >>= 8;
	[SP+52] = R0;
	R3 = [SP+52];
	R0 = 30000 (X);
	P2 = P0 + (P0 << 2);
	R3 = min(R3,R0);
	P2 = P2 << 2;
	[SP+52] = R3;
	R3 = P2;
	R0 = R3 - R1;
	R0 <<= 1;
	R0 >>= 8;
	[SP+60] = R0;
	R0 = [SP+52];
	R0 <<= 16;
	R3 = [SP+60];
	R0 = R0 | R3;
	[SP+32] = R0;
	R0 = [P5+11840];
	cc =R7<=R0 (iu);
	if !cc jump 4; jump.s .L116;
	R1 = R7 - R0;
	P2 = R1;
.L117:
	R3 = [SP+32];
	R1 = [P5+11844];
	cc =R3==R1;
	FP = [P5+11856];
	if !cc jump .L118;
	cc =FP==0;
	if cc jump 4; jump.s .L281;
.L118:
	I0.H = 5461;
	R3 = R7 << 6;
	I0.L = 21845;
	P2 = R3;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R0 = R3 * R3 (T);
// 0 "" 2
	R0 <<= 1;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R1 = R0 * R0 (T);
// 0 "" 2
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R3 = R0 * R3 (T);
// 0 "" 2
	P1 = R1;
	R3 <<= 1;
	R1 = I0;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R1 = R3 * R1 (T);
// 0 "" 2
	I0 = R1;
	I1.H = 273;
	P0 = P1 + P1;
	I1.L = 4369;
	R1 = I1;
	P1 = I0;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R3 = R3 * R0 (T);
// 0 "" 2
	P2 -= P1;
	R3 <<= 1;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R3 = R3 * R1 (T);
// 0 "" 2
	P1 = R3;
	R3.H = 1365;
	R3.L = 21845;
	R1 = P0;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R1 = R1 * R3 (T);
// 0 "" 2
	I1 = R1;
	R1 = P0;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R3 = R1 * R0 (T);
// 0 "" 2
	P0 = R3;
	I0.H = 45;
	P2 = P2 + P1;
	I0.L = 33496;
	R3 = I0;
	P1 = P0 + P0;
	R1 = P1;
	R0 >>>= 1;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R1 = R1 * R3 (T);
// 0 "" 2
	P1 = R1;
	R1 = I1;
	R0 = R0 - R1;
	R3 = [SP+52];
	R1 = 32768 (Z);
	P0 = R0;
	R0 = R1 - R3;
	R0 <<= 16;
	I0 = R0;
	R3 = [SP+60];
	P1 = P0 + P1;
	R1 = R1 - R3;
	R3 = R1 << 16;
	R1 = P2;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R0 = R0 * R1 (T);
// 0 "" 2
	R1 = P1;
	I1 = R0;
	R0 = I0;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R0 = R0 * R1 (T);
// 0 "" 2
	I0 = R0;
	R0 = [SP+52];
	R0 <<= 15;
	M0 = R0;
	P0 = R2;
	R1 = I1;
	I0 += M0;
	R0 = I0;
	jump.s .L124;
.L122:
	R1 >>= 1;
	R0 >>= 1;
.L124:
	R2 = 65535 (Z);
	cc =R1<=R2 (iu);
	if !cc jump .L122 (bp);
	cc =R0<=R2 (iu);
	if !cc jump .L122 (bp);
	cc =R0==0;
	R2 = P0;
	if !cc jump 6 (bp); jump.l .L217;
	cc =R1<=R0 (iu);
	if !cc jump 4; jump.s .L282;
	R0 <<= 15;
	[SP+12] = P0;
	[SP+16] = R3;
	[SP+20] = P1;
	[SP+24] = P2;
	call ___udivsi3;
	R1 = 32768 (Z);
	R1 = R1 - R0;
	R1 *= R0;
	I0 = 2173 (X);
	R1 >>>= 15;
	I2 = R1;
	R1 = I0;
	R1 *= R0;
	R1 >>>= 15;
	I0 = R1;
	I1 = 8018 (X);
	M0 = I1;
	P0 = R0;
	R0 = I2;
	I0 += M0;
	R1 = I0;
	R0 *= R1;
	R0 >>>= 15;
	I1 = R0;
	I0 = 25736 (X);
	R1 = I0;
	R0 = P0;
	R0 *= R1;
	R1 = I1;
	R0 >>>= 15;
	R0 = R1 + R0;
	R1 = 51472 (Z);
	R1 = R1 - R0;
.L277:
	[SP+44] = R1;
	R2 = [SP+12];
	R3 = [SP+16];
	P1 = [SP+20];
	P2 = [SP+24];
.L125:
	R0 = R2 >> 15;
	R1 = 51472 (Z);
	R1 = R1 - R0;
	P0 = R1;
	R0 = P2;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R1 = R3 * R0 (T);
// 0 "" 2
	R0 = P1;
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R3 = R3 * R0 (T);
// 0 "" 2
	R0 = [SP+60];
	R0 <<= 15;
	R3 = R0 + R3;
	jump.s .L129;
.L127:
	R1 >>= 1;
	R3 >>= 1;
.L129:
	R0 = 65535 (Z);
	cc =R1<=R0 (iu);
	if !cc jump .L127 (bp);
	cc =R3<=R0 (iu);
	if !cc jump .L127 (bp);
	cc =R3==0;
	if !cc jump 4 (bp); jump.s .L218;
	cc =R1<=R3 (iu);
	if cc jump 4; jump.s .L131;
	R0 = R1 << 15 ||
	[SP+12] = R2 ||
	nop;
	R1 = R3;
	[SP+24] = P0;
	call ___udivsi3;
	R1 = 32768 (Z);
	R3 = 2173 (X);
	R1 = R1 - R0;
	R3 *= R0;
	R1 *= R0;
	R3 >>>= 15;
	R1 >>>= 15;
	P2 = R3;
	P1 = R1;
	R3 = 8018 (X);
	R2 = [SP+12];
	P0 = [SP+24];
	R1 = P2;
	R3 = R1 + R3;
	R1 = P1;
	R1 *= R3;
	R3 = 25736 (X);
	R0 *= R3;
	R1 >>>= 15;
	R0 >>>= 15;
	R0 = R1 + R0;
.L130:
	R1 = P0;
	R0 = R1 - R0;
	R1 = [SP+44];
	R3 = R1 - R0;
	R0 = abs R3 ||
	[SP+16] = R3 ||
	nop;
	R1 = R2 >> 6;
	R0 <<= 16;
	BITSET (R1, 0);
	call ___udivsi3;
	R3 = [SP+16];
	cc =R3<0;
	R2 = R0;
	if !cc jump .L132 (bp);
	R2 = -R0;
.L132:
	R3 = [SP+32];
	[P5+11848] = R2;
	[P5+11840] = R7;
	[P5+11844] = R3;
.L120:
	R1 = [SP+28];
	R0 = -1 (X);
	[SP+12] = R2;
	call ___udivsi3;
	P0 = R6;
	R7 = R0 << 8 ||
	R2 = [SP+12] ||
	nop;
	R0 = 1152 (X);
	cc =FP==0;
	P2 = P0 + (P0 << 1);
	P0 = P0 + (P2 << 2);
	R1 = P0;
	R1 <<= 8;
	R1 >>>= 15;
	R1 = R1 + R0;
	R1 *= R4;
	P2 = 32767 (X);
	R1 >>>= 15;
	P1 = R1;
	R0 = P2;
	R1 = P3;
	R3 = R0 - R1;
	R0 = P3;
	R0 *= R1;
	R0 >>>= 15;
	R0 *= R1;
	P0 = 21299 (X);
	R1 = P0;
	R0 >>>= 15;
	R0 *= R1;
	R1 = P1;
	R0 >>>= 15;
	R0 *= R1;
	P0 = 307 (X);
	R0 >>>= 15;
	P1 = P1 + P0;
	P0 = R0;
	R0 = [SP+48];
	R6 *= R0;
	R0 = P2;
	R1 = R6 >>> 15;
	R6 = R0 - R4;
	R1 *= R6;
	R1 >>>= 15;
	R1 *= R3;
	R1 >>>= 15;
	R6 = R1 << 4;
	P1 = P0 + P1;
	R1 = R6 - R1;
	R1 >>>= 8;
	R6 = P1;
	R0 = R6 + R1;
	R6 = [SP+40];
	R6 = R6 - R0;
	P0 = R6;
	R1 = R7 >>> 8;
	P2 = P0 + (P0 << 2);
	P2 = P2 << 2;
	P2 -= P0;
	R0 = P2;
	R0 >>>= 8;
	R0 *= R1;
	R0 >>>= 7;
	R0 = R0 + R7;
	R7 = R2 << 8;
	if cc jump .L133 (bp);
	R1 = [P5+11704];
	cc =R1==0;
	if !cc jump 4; jump.s .L134;
	R0 = R0 - R1;
	R0 >>>= 1;
	R0 = R0 + R1;
	R2 = R0 - R7;
	[SP+44] = R2;
	[P5+11704] = R0;
	R2 = 255 (X);
	R0 >>>= 1;
	R2 <<= 18;
	R6 = [SP+44];
	R1 = 1 (X);
	R0 = R0 - R7;
	R1 <<= 17;
	R6 = min(R6,R2);
	R0 = min(R0,R2);
	R6 = max(R6,R1);
	R0 = max(R0,R1) ||
	[SP+44] = R6 ||
	nop;
	[SP+40] = R0;
.L212:
	R2 = [P5+11708];
	cc =R2==0;
	if cc jump .L135 (bp);
	P1 = [P5+11712];
	R7 = [SP+44];
	R6 = R7 - R2;
	R6 >>>= 6;
	[SP+72] = R6;
	R0 = P1;
	R6 = [SP+40];
	R7 = R6 - R0;
	R7 >>>= 6;
	R0 = ROT R7 BY 0 ||
	[SP+44] = R2 ||
	nop;
	R6 = P1;
	R0 <<= 6;
	R1 = [SP+72];
	R0 = R0 + R6;
	R6 = [SP+72];
	[SP+80] = R7;
	R1 <<= 6;
	R7 = R6 | R7;
	R1 = R1 + R2;
	FP = R7;
	[SP+40] = P1;
.L136:
	[P5+11712] = R0;
	R0 = R4 << 6;
	R0 = R0 - R4;
	R0 <<= 2;
	R4 = R0 - R4;
	R0 = R4 << 2;
	R0 = R0 - R4;
	[P5+11708] = R1;
	R0 >>>= 15;
	R1 = 31949 (X);
	R0 = R0 + R1;
	R3 *= R0;
	R3 >>>= 15;
	[SP+32] = R3;
	R3 = P3;
	R0 *= R3;
	R0 >>>= 15;
	[SP+28] = R0;
	R6 = [SP+64];
	R0 = 32276 (X);
	R0 = R0 - R6;
	R4 = -R5;
	R1 = R5;
	R0 <<= 14;
	[SP+76] = R4;
	call ___udivsi3;
	P0 = 8 (X);
	R7 = [SP+68];
	cc =P4<=P0 (iu);
	R5 = min(R0,R7);
	if !cc jump .L137 (bp);
	R0 = 9830 (X);
	R2 = [SP+56];
	R0 *= R2;
	R0 >>>= 15;
	R5 = R0 + R5;
	R5 <<= 8;
	R6 = 6 (X);
.L211:
	R4 = 13107 (X);
	R0 = [SP+36];
	R1 = [SP+36];
	R0 *= R4;
	R1 *= R1;
	R0 >>>= 15;
	R1 >>>= 15;
	I1 = R0;
	R0 = R1 << 4 ||
	R3 = [SP+36] ||
	nop;
	R1 = R0 - R1;
	R0 = R1 << 4 ||
	R2 = [SP+48] ||
	nop;
	R0 = R0 - R1;
	R1 = [SP+36];
	R1 <<= 5;
	R1 = R1 - R3;
	P0 = R1;
	P1 = R3;
	R0 >>>= 13;
	R3 = 27197 (X);
	R7 = [SP+48];
	R4 *= R7;
	P4 = P1 + (P0 << 2);
	R1 = P4;
	R1 <<= 1;
	R1 >>>= 15;
	R0 = R0 + R1;
	R0 *= R3;
	R0 >>>= 15;
	M3 = R0;
	R0 = 31130 (X);
	R0 *= R2;
	R1 = P3;
	R2 = 1638 (X);
	R1 <<= 14;
	R0 >>>= 15;
	R1 >>>= 15;
	R0 = R0 + R2;
	R2 = 32768 (Z);
	R2 = R2 - R1;
	R0 *= R2;
	R0 >>>= 15;
	R0 *= R3;
	R0 >>>= 15;
	P2 = R0;
	R4 >>>= 15;
	R0 = 32767 (X);
	R4 = R0 - R4;
	R4 *= R3;
	R4 >>>= 15;
	R0 = P3;
	P0 = R4;
	R4 = 5530 (X);
	R4 *= R0;
	R0 = R4 >>> 15;
	R4 = 10690 (X);
	R2 = P3;
	R4 = R4 - R0;
	R0 = 6554 (X);
	R0 *= R2;
	R2 = R0 >>> 15;
	R0 = 16384 (X);
	R0 = R0 - R2;
	M2 = R0;
	R0 = 9830 (X);
	R1 = R1 + R0;
	R3 *= R1;
	R0 = 1 (X);
	R3 >>>= 15;
	[P5+11856] = R0;
	R0 = I1;
	P1 = R3;
	R7 = [P5+11780];
	R3 = [P5+11776];
	cc =R0==0;
	[SP+48] = R3;
	[SP+56] = R7;
	R2 = [P5+11728];
	if cc jump .L283;
	P4 = 600 (X);
	I3.H = 25;
	R7.H = 15470;
	P3 = SP + P4;
	I0 = R4;
	R3 = [P5+11748];
	R4 = R5;
	I3.L = 26125;
	R7.L = 62303;
	P4 = 64 (X);
	R5 = I1;
	LSETUP (.L141, .L305) LC1 = P4;
.L141:
	R0 = R4 - R2;
	R0 >>>= R6;
	R2 = R2 + R0;
	R0 = I3;
	R3 *= R0;
	R3 = R3 + R7;
	R1 = R2 >>> 8;
	R0 = R3 >>> 17;
	R0 *= R1;
	R0 >>>= 15;
	R0 *= R5;
	R0 >>>= 15;
	R0 = R0 + R1;
.L305:
	[P3++] = R0;
	R4 = I0;
	[P5+11728] = R2;
	[P5+11748] = R3;
.L140:
	R1 = [P5+11672];
	R2 = [SP+28];
	R6 = ROT R1 BY 0 ||
	[SP+36] = R1 ||
	nop;
	cc =R2==0;
	R3 = [P5+11720];
	R5 = [P5+11724];
	R6 <<= 16;
	if cc jump .L284;
	R2 = [SP+40];
	R7 = R6 - R2;
	R0 = R7 >> 16;
	P4 = R0;
	R2 = R7 >> 1;
	R0 = 32767 (X);
	R2 = R2 & R0;
	B3 = R2;
	R2 = [SP+32];
	cc =R2==0;
	if !cc jump .L147 (bp);
	cc =FP==0;
	if !cc jump 4; jump.s .L148;
	R1 = 1 (X);
	R1 <<= 16;
	R2 = M3;
	R6 = [SP+80];
	R6 = R1 - R6;
	P3 = 600 (X);
	B1.H = 65535;
	[SP+32] = R2;
	M0 = R4;
	R2 = [SP+64];
	R4 = [SP+60];
	I1 = R6;
	P4 = SP + P3;
	[SP+40] = P2;
	R1 = [SP+36];
	P3 = 1023 (X);
	R6 = ROT R0 BY 0 ||
	P2 = [SP+52] ||
	nop;
	B2 = 40000 (Z);
	B1.L = 25536;
	B0 = -32768 (X);
	I3 = 31000 (X);
	I2 = -31000 (X);
	FP = 64 (X);
	[SP+68] = P0;
	[SP+44] = P1;
	I0 = R4;
	B3 = R2;
	LSETUP (.L149, .L304) LC1 = FP;
.L149:
	R0 = R7 >> 16;
	R4 = P3;
	R4 = R0 & R4;
	P1 = R4;
	R0 += 1;
	R4 = P3;
	R0 = R0 & R4;
	P0 = R0;
	P1 = P5 + (P1 << 1);
	R2 = W [P1] (X);
	R4 = R7 >> 1;
	R4 = R4 & R6;
	P1 = P5 + (P0 << 1);
	R0 = W [P1] (X);
	R0 = R0 - R2;
	R0 *= R4;
	R0 >>>= 15;
	R0 = R0 + R2;
	R2 = [SP+28];
	R0 *= R2;
	R0 >>>= 15;
	R0 = -R0;
	R0 = R0 - R3;
	R4 = P2;
	R0 *= R4;
	R0 >>>= 15;
	R3 = R3 + R0;
	R0 = R3 - R5;
	R2 = I0;
	R0 *= R2;
	P1 = [P4];
	R0 >>>= 15;
	R5 = R5 + R0;
	R2 = R3 - R5;
	R4 = P1;
	R2 = R2 - R4;
	R0 = B2;
	R2 = min(R2,R0);
	R4 = B1;
	R2 = max(R2,R4);
	R0 = [SP+76];
	R0 *= R2;
	R4 = B3;
	R0 >>>= 14;
	R0 = R0 + R4;
	R0 = min(R0,R6);
	R4 = B0;
	R0 = max(R0,R4);
	R0 *= R2;
	R2 = P1;
	R0 >>>= 15;
	R0 = R0 + R2;
	R4 = I3;
	R0 = min(R0,R4);
	R4 = P3;
	R4 = R1 & R4;
	P1 = R4;
	R2 = I2;
	R0 = max(R0,R2);
	R4 = I1;
	[P4++] = R0;
	P1 = P5 + (P1 << 1);
	W [P1] = R0;
	R1 += 1;
.L304:
	R7 = R7 + R4;
	R6 = [SP+32];
	M3 = R6;
	P2 = [SP+40];
	P0 = [SP+68];
	R4 = M0;
	P1 = [SP+44];
.L278:
	R7 = [SP+36];
	R0 = 64 (X);
	R0 = R7 + R0;
	R1 = P3;
	R0 = R0 & R1;
	[P5+11672] = R0;
	[P5+11720] = R3;
	[P5+11724] = R5;
	jump.s .L145;
.L116:
	R3 = R0 - R7;
	P2 = R3;
	jump.s .L117;
.L215:
	R5 = 32767 (X);
	[SP+28] = R5;
	jump.s .L110;
.L282:
	R1 <<= 15;
	P0 = R1;
	R1 = ROT R0 BY 0 ||
	[SP+12] = R2 ||
	nop;
	[SP+16] = R3;
	[SP+20] = P1;
	[SP+24] = P2;
	R0 = P0;
	call ___udivsi3;
	R1 = 32768 (Z);
	R1 = R1 - R0;
	R1 *= R0;
	I0 = 2173 (X);
	R1 >>>= 15;
	I2 = R1;
	R1 = I0;
	R1 *= R0;
	R1 >>>= 15;
	I0 = R1;
	I1 = 8018 (X);
	M0 = I1;
	P0 = R0;
	R0 = I2;
	I0 += M0;
	R1 = I0;
	R0 *= R1;
	R0 >>>= 15;
	I1 = R0;
	I0 = 25736 (X);
	R1 = I0;
	R0 = P0;
	R0 *= R1;
	R1 = I1;
	R0 >>>= 15;
	R1 = R1 + R0;
	jump.s .L277;
.L281:
	R0 >>= 5;
	R3 = P2;
	cc =R0<R3 (iu);
	if !cc jump 4; jump.s .L118;
	cc =P2==0;
	if cc jump .L121 (bp);
	R0 = 3 (X);
	R1 = P4;
	R0 = R1 & R0;
	cc =R0==0;
	if !cc jump 4; jump.s .L118;
.L121:
	nop;
	R2 = [P5+11848];
	jump.s .L120;
.L133:
	R2 = R0 - R7;
	[SP+44] = R2;
	[P5+11704] = R0;
	R2 = 255 (X);
	R0 >>>= 1;
	R2 <<= 18;
	R6 = [SP+44];
	R1 = 1 (X);
	R0 = R0 - R7;
	R1 <<= 17;
	R6 = min(R6,R2);
	R0 = min(R0,R2);
	R6 = max(R6,R1);
	R0 = max(R0,R1) ||
	[SP+44] = R6 ||
	nop;
	[SP+40] = R0;
.L135:
	R7 = R7 -|- R7 ||
	R0 = [SP+40] ||
	nop;
	R2 = R2 -|- R2 ||
	R1 = [SP+44] ||
	nop;
	FP = 0 (X);
	[SP+80] = R7;
	[SP+72] = R2;
	jump.s .L136;
.L137:
	P0 = 24 (X);
	cc =P4<P0 (iu);
	R1 = 8 (X);
	R6 = 10 (X);
	R5 <<= 8;
	if cc R6 = R1;
	jump.s .L211;
.L131:
	R0 = R3 << 15 ||
	[SP+12] = R2 ||
	nop;
	[SP+24] = P0;
	call ___udivsi3;
	P2 = 2173 (X);
	R3 = P2;
	R3 *= R0;
	R3 >>>= 15;
	P2 = R3;
	R1 = 32768 (Z);
	R1 = R1 - R0;
	R1 *= R0;
	P1 = 8018 (X);
	P2 = P2 + P1;
	R3 = P2;
	R1 >>>= 15;
	P2 = 25736 (X);
	R1 *= R3;
	R3 = P2;
	R0 *= R3;
	R1 >>>= 15;
	R0 >>>= 15;
	R1 = R1 + R0;
	R0 = 51472 (Z);
	R0 = R0 - R1;
	R2 = [SP+12];
	P0 = [SP+24];
	jump.s .L130;
.L283:
	P4 = 600 (X);
	P3 = SP + P4;
	P4 = 64 (X);
	LSETUP (.L139, .L303) LC1 = P4;
.L139:
	R0 = R5 - R2;
	R0 >>>= R6;
	R2 = R2 + R0;
	R0 = R2 >>> 8;
.L303:
	[P3++] = R0;
	[P5+11728] = R2;
	jump.s .L140;
.L147:
	cc =FP==0;
	if !cc jump 4; jump.s .L151;
	R2 = 1 (X);
	R2 <<= 16;
	R1 = [SP+72];
	R1 = R2 - R1;
	M1 = R1;
	R1 = [SP+44];
	R1 = R6 - R1;
	P4 = R1;
	R6 = [SP+80];
	FP = R7;
	R2 = R2 - R6;
	R6 = M3;
	[SP+40] = R6;
	R6 = [SP+60];
	R7 = M2;
	M0 = 600 (X);
	I0 = SP;
	I3 = R6;
	R6 = [SP+64];
	I0 += M0;
	I1 = 64 (X);
	R1 = [SP+36];
	B2.H = 65535;
	[SP+80] = R7;
	M3 = R6;
	R7 = [SP+76];
	R6 = [SP+52];
	[SP+44] = P2;
	[SP+72] = R4;
	[SP+84] = P1;
	P2 = I0;
	M2 = R2;
	I0 = R7;
	P1 = I1;
	P3 = 1023 (X);
	I2 = R0;
	B1 = 40000 (Z);
	B2.L = 25536;
	B3 = -32768 (X);
	M0 = 31000 (X);
	B0 = -31000 (X);
	[SP+68] = P0;
	R4 = R1;
	R2 = FP;
	R7 = P4;
	I1 = R6;
	LSETUP (.L152, .L302) LC1 = P1;
.L152:
	R0 = R7 >> 16;
	R1 = P3;
	R1 = R0 & R1;
	P0 = R1;
	R1 = R2 >> 16;
	R0 += 1;
	P0 = P5 + (P0 << 1);
	R6 = W [P0] (X);
	P4 = R6;
	R6 = P3;
	R6 = R1 & R6;
	P0 = R6;
	R1 += 1;
	P0 = P5 + (P0 << 1);
	R6 = W [P0] (X);
	P0 = R6;
	R6 = P3;
	R0 = R0 & R6;
	FP = R0;
	R6 = R7 >> 1;
	FP = P5 + (FP << 1);
	R0 = W [FP] (X);
	FP = R0;
	R0 = I2;
	R6 = R6 & R0;
	FP -= P4;
	R0 = FP;
	R0 *= R6;
	R6 = P4;
	R0 >>>= 15;
	R0 = R0 + R6;
	R6 = [SP+32];
	R0 *= R6;
	R0 >>>= 15;
	FP = R0;
	R0 = P3;
	R0 = R1 & R0;
	P4 = R0;
	R6 = P0;
	R0 = I2;
	P4 = P5 + (P4 << 1);
	R1 = W [P4] (X);
	R1 = R1 - R6;
	R6 = R2 >> 1;
	R6 = R6 & R0;
	R1 *= R6;
	R6 = P0;
	R1 >>>= 15;
	R1 = R1 + R6;
	R0 = [SP+28];
	R1 *= R0;
	R6 = FP;
	R1 >>>= 15;
	R0 = R6 - R1;
	R0 = R0 - R3;
	R1 = I1;
	R0 *= R1;
	R0 >>>= 15;
	R3 = R3 + R0;
	R0 = R3 - R5;
	R6 = I3;
	R0 *= R6;
	P0 = [P2];
	R0 >>>= 15;
	R5 = R5 + R0;
	R1 = R3 - R5;
	R0 = P0;
	R1 = R1 - R0;
	R6 = B1;
	R1 = min(R1,R6);
	R0 = B2;
	R1 = max(R1,R0);
	R0 = I0;
	R0 *= R1;
	R6 = M3;
	R0 >>>= 14;
	R0 = R0 + R6;
	R6 = I2;
	R0 = min(R0,R6);
	R6 = B3;
	R0 = max(R0,R6);
	R0 *= R1;
	R1 = P0;
	R0 >>>= 15;
	R0 = R0 + R1;
	R6 = M0;
	R0 = min(R0,R6);
	R6 = P3;
	R6 = R4 & R6;
	P0 = R6;
	R1 = B0;
	R0 = max(R0,R1);
	[P2++] = R0;
	R1 = M2;
	P0 = P5 + (P0 << 1);
	W [P0] = R0;
	R0 = M1;
	R4 += 1;
	R7 = R7 + R0;
.L302:
	R2 = R2 + R1;
	R2 = [SP+40];
	R6 = [SP+80];
	M3 = R2;
	P2 = [SP+44];
	P0 = [SP+68];
	R4 = [SP+72];
	M2 = R6;
	P1 = [SP+84];
	jump.s .L278;
.L284:
	cc =FP==0;
	if !cc jump 4; jump.s .L143;
	R0 = 1 (X);
	R2 = [SP+44];
	R0 <<= 16;
	R7 = [SP+72];
	M1 = R4;
	R4 = [SP+60];
	R7 = R0 - R7;
	P3 = 600 (X);
	R6 = R6 - R2;
	B1.H = 65535;
	R2 = [SP+32];
	R0 = M3;
	B3 = R4;
	R4 = [SP+64];
	I1 = R7;
	P4 = SP + P3;
	[SP+40] = P2;
	[SP+44] = R2;
	R7 = 1023 (X);
	I0 = 32767 (X);
	B2 = 40000 (Z);
	B1.L = 25536;
	B0 = -32768 (X);
	I3 = 31000 (X);
	I2 = -31000 (X);
	P3 = 64 (X);
	[SP+28] = R0;
	P2 = [SP+76];
	[SP+68] = P0;
	[SP+32] = P1;
	R2 = ROT R1 BY 0 ||
	FP = [SP+52] ||
	nop;
	M0 = R4;
	LSETUP (.L144, .L301) LC1 = P3;
.L144:
	R0 = R6 >> 16;
	R1 = R0 & R7;
	R0 += 1;
	P1 = R1;
	R0 = R0 & R7;
	P0 = R0;
	R1 = R6 >> 1;
	P1 = P5 + (P1 << 1);
	R4 = W [P1] (X);
	P1 = P5 + (P0 << 1);
	R0 = W [P1] (X);
	M3 = R4;
	R0 = R0 - R4;
	R4 = I0;
	R1 = R1 & R4;
	R0 *= R1;
	R1 = M3;
	R0 >>>= 15;
	R0 = R0 + R1;
	R4 = [SP+44];
	R0 *= R4;
	R0 >>>= 15;
	R0 = R0 - R3;
	R1 = FP;
	R0 *= R1;
	R0 >>>= 15;
	R3 = R3 + R0;
	R0 = R3 - R5;
	R4 = B3;
	R0 *= R4;
	P1 = [P4];
	R0 >>>= 15;
	R5 = R5 + R0;
	R1 = R3 - R5;
	R0 = P1;
	R1 = R1 - R0;
	R4 = B2;
	R1 = min(R1,R4);
	R0 = B1;
	R1 = max(R1,R0);
	R0 = P2;
	R0 *= R1;
	R4 = M0;
	R0 >>>= 14;
	R0 = R0 + R4;
	R4 = I0;
	R0 = min(R0,R4);
	R4 = B0;
	R0 = max(R0,R4);
	R0 *= R1;
	R1 = P1;
	R0 >>>= 15;
	R0 = R0 + R1;
	R4 = I3;
	R0 = min(R0,R4);
	R4 = R2 & R7;
	P1 = R4;
	R1 = I2;
	R0 = max(R0,R1);
	[P4++] = R0;
	R2 += 1;
	P1 = P5 + (P1 << 1);
	W [P1] = R0;
	R0 = I1;
.L301:
	R6 = R6 + R0;
	R1 = [SP+28];
	M3 = R1;
	P2 = [SP+40];
	P0 = [SP+68];
	R4 = M1;
	P1 = [SP+32];
.L279:
	R2 = [SP+36];
	R0 = 64 (X);
	R0 = R2 + R0;
	R7 = R0 & R7;
	[P5+11672] = R7;
	[P5+11720] = R3;
	[P5+11724] = R5;
	jump.s .L145;
.L134:
	P2.H = 1020;
	R2 = R0 - R7;
	[P5+11704] = R0;
	P2.L = 0;
	R0 >>>= 1;
	R6 = P2;
	R1 = 1 (X);
	R0 = R0 - R7;
	R1 <<= 17;
	R2 = min(R2,R6);
	R0 = min(R0,R6);
	R2 = max(R2,R1);
	R0 = max(R0,R1) ||
	[SP+44] = R2 ||
	nop;
	[SP+40] = R0;
	jump.s .L212;
.L280:
	R0 = ~R2;
	R0 >>= 15;
	R1 = -32768 (X);
	R0 = R0 + R1;
	jump.s .L113;
.L148:
	R6 = SP;
	R7 = 600 (X);
	R2 = R6 + R7;
	R1 = [SP+36];
	R7 = P4;
	R1 = R1 - R7;
	R6 = R0;
	R0 = M3;
	M3 = R4;
	R4 = [SP+60];
	I0 = 64 (X);
	B2 = R1;
	B0.H = 65535;
	R1 = [SP+28];
	M0 = R4;
	P3 = R2;
	R4 = [SP+52];
	R2 = [SP+64];
	[SP+40] = P2;
	FP = 1023 (X);
	P2 = I0;
	B1 = 40000 (Z);
	B0.L = 25536;
	I3 = -32768 (X);
	I2 = 31000 (X);
	I1 = -31000 (X);
	P4 = [SP+76];
	[SP+32] = R0;
	[SP+44] = P0;
	[SP+68] = R1;
	[SP+28] = P1;
	M1 = R2;
	I0 = R4;
	LSETUP (.L150, .L300) LC1 = P2;
.L150:
	R1 = FP;
	R1 = R7 & R1;
	P1 = R1;
	R0 = B2;
	R2 = R0 + R7;
	R4 = FP;
	R7 += 1;
	P1 = P5 + (P1 << 1);
	R4 = R7 & R4;
	R1 = W [P1] (X);
	P1 = R4;
	R4 = B3;
	P1 = P5 + (P1 << 1);
	R0 = W [P1] (X);
	R0 = R0 - R1;
	R0 *= R4;
	R0 >>>= 15;
	R0 = R0 + R1;
	R1 = [SP+68];
	R0 *= R1;
	R0 >>>= 15;
	R0 = -R0;
	R0 = R0 - R3;
	R4 = I0;
	R0 *= R4;
	R0 >>>= 15;
	R3 = R3 + R0;
	R0 = R3 - R5;
	R1 = M0;
	R0 *= R1;
	P1 = [P3];
	R0 >>>= 15;
	R5 = R5 + R0;
	R1 = R3 - R5;
	R4 = P1;
	R1 = R1 - R4;
	R0 = B1;
	R1 = min(R1,R0);
	R4 = B0;
	R1 = max(R1,R4);
	R0 = P4;
	R0 *= R1;
	R4 = M1;
	R0 >>>= 14;
	R0 = R0 + R4;
	R0 = min(R0,R6);
	R4 = I3;
	R0 = max(R0,R4);
	R0 *= R1;
	R1 = P1;
	R0 >>>= 15;
	R4 = R0 + R1;
	R0 = I2;
	R4 = min(R4,R0);
	R0 = FP;
	R2 = R2 & R0;
	P0 = R2;
	R1 = I1;
	R4 = max(R4,R1);
	[P3++] = R4;
	P1 = P5 + (P0 << 1);
.L300:
	W [P1] = R4;
	R0 = [SP+32];
	R1 = [SP+36];
	R4 = M3;
	M3 = R0;
	R0 = 64 (X);
	R0 = R1 + R0;
	R2 = FP;
	R0 = R0 & R2;
	P2 = [SP+40];
	P0 = [SP+44];
	P1 = [SP+28];
	[P5+11672] = R0;
	[P5+11720] = R3;
	[P5+11724] = R5;
.L145:
	P3 = 600 (X);
	R5 = M3;
	P4 = SP + P3;
	R1 = R4;
	P3 = 856 (X);
	R0 = [P5+11732];
	R3 = [P5+11716];
	cc =R5==0;
	FP = P3 + SP;
	R4 = P0;
	R6 = P2;
	R2 = R3 >>> 10;
	P3 = 64 (X);
	R7 = R0;
	P2 = P4;
	P0 = R1;
	if cc jump .L159 (bp);
	LSETUP (.L155, .L299) LC1 = P3;
.L155:
	R5 = [P2];
	R2 = R5 - R2;
	R3 = R3 + R2;
	R2 = R3 >>> 10;
	R0 = R5 - R2;
	R0 *= R4;
	R1 = R0 >>> 15;
	R0 = R5 - R7;
	R0 *= R6;
	R0 >>>= 12;
	R0 = R1 + R0;
	[P2++] = R0;
.L299:
	R7 = R5;
	R6 = -625 (X);
	[P5+11732] = R5;
	R4 = P0;
	[P5+11716] = R3;
	R7 = [P5+11736];
	R2 = [P5+11740];
	P2 = P4;
	R5 = 40000 (Z);
	R6 <<= 6;
.L156:
	R1 = R4;
	R1 *= R2;
	R1 >>>= 15;
	R7 = R7 + R1;
	R1 = M2;
	R1 *= R2;
	R3 = [P2];
	R0 = R3 >>> 1;
	R1 >>>= 15;
	R0 = R0 - R7;
	R1 <<= 1;
	R0 = R0 - R1;
	R0 *= R4;
	R0 >>>= 15;
	R2 = R2 + R0;
	R2 = min(R2,R5);
	R2 = max(R2,R6);
	R0 = P1;
	R0 *= R2;
	R0 >>>= 15;
	R0 = R0 + R3;
	[P2++] = R0;
	cc =FP==P2;
	if !cc jump .L156 (bp);
	[P5+11740] = R2;
	R2.H = 23505;
	R1 = [P5+11748];
	R2.L = 59797;
	R4.H = 25;
	R5.H = 15470;
	[P5+11736] = R7;
	R0 = [P5+11744];
	R2 = R1 ^ R2;
	R4.L = 26125;
	R5.L = 62303;
	R6 = 32768 (Z);
	R7 = -32768 (X);
.L157:
	R2 *= R4;
	R2 = R2 + R5;
	R3 = R2 >>> 18;
	R1 = M3;
	R0 = R3 - R0;
	R0 *= R1;
	R1 = [P4];
	R0 >>>= 15;
	R0 = R0 + R1;
	R0 >>>= 1;
	R0 = min(R0,R6);
	R0 = max(R0,R7);
	[P4++] = R0;
	cc =FP==P4;
	R0 = R3;
	if !cc jump .L157 (bp);
	[P5+11744] = R3;
	jump.s .L158;
.L159:
	nop;
	R5 = [P2];
	R2 = R5 - R2;
	R3 = R3 + R2;
	R2 = R3 >>> 10;
	R0 = R5 - R2;
	R0 *= R4;
	R1 = R0 >>> 15;
	R0 = R5 - R7;
	R0 *= R6;
	R0 >>>= 12;
	R0 = R1 + R0;
	[P2++] = R0;
	R7 = R5;
	P3 += -1;
	cc =P3==0;
	if !cc jump .L159;
	[P5+11732] = R5;
	P2.H = 0;
	R5 = -625 (X);
	[P5+11716] = R3;
	R2 = [P5+11740];
	R3 = [P5+11736];
	P2.L = 40000;
	R5 <<= 6;
	R6 = 32768 (Z);
	R7 = -32768 (X);
.L160:
	R1 = P0;
	P3 = [P4];
	R1 *= R2;
	R4 = M2;
	R4 *= R2;
	R1 >>>= 15;
	R3 = R3 + R1;
	R1 = P3;
	R1 >>>= 1;
	R4 >>>= 15;
	R4 <<= 1;
	R1 = R1 - R3;
	R1 = R1 - R4;
	R0 = P0;
	R1 *= R0;
	R1 >>>= 15;
	R2 = R2 + R1;
	R1 = P2;
	R2 = min(R2,R1);
	R2 = max(R2,R5);
	R0 = P1;
	R0 *= R2;
	R4 = P3;
	R0 >>>= 15;
	R0 = R0 + R4;
	R0 >>>= 1;
	R0 = min(R0,R6);
	R0 = max(R0,R7);
	[P4++] = R0;
	cc =FP==P4;
	if !cc jump .L160 (bp);
	[P5+11736] = R3;
	[P5+11740] = R2;
.L158:
	R5 = [SP+56];
	cc =R5<=0;
	if cc jump .L161;
	nop;
	nop;
	nop;
	R6 = [P5+11832];
	cc =R6<=7 (iu);
	if !cc jump .L162 (bp);
	P0 = R6;
	R0 = 384 (X);
	P0 = P0 + (P0 << 1);
	R2 = P0;
	R2 <<= 7;
	R3 = R2 + R0;
	cc =R3<=R2 (iu);
	if cc jump .L164;
	P2 = R2;
	P1 = 1024 (X);
	R2 += 1;
	cc =R2<=R3 (iu);
	R1 = 0 (X);
	P1 = (P1 + P2) << 1;
	P2 = R0;
	R0 = 1 (X);
	P1 = P5 + P1;
	if !cc P2 = R0;
	LSETUP (.L165, .L298) LC1 = P2;
.L165:
.L298:
	W [P1++] = R1;
.L164:
	R0 = 0 (X);
	R6 += 1;
	[P5+11784] = R0;
	[P5+11832] = R6;
.L162:
	R2 = [SP+48];
	cc =R2<=0;
	if !cc jump 4 (bp); jump.s .L168;
	R3 = [P5+11836];
	cc =R3<=7 (iu);
	if !cc jump .L169 (bp);
.L213:
	R1 = R3 << 3;
	R1 = R1 - R3;
	R0 = R1 << 5;
	R0 = R0 - R1;
	R0 = R0 + R3;
	P1 = R0;
	P2 = 218 (X);
	P0 = 1740 (X);
	P2 = P1 + P2;
	cc =P2<=P0 (iu);
	if !cc P2 = P0;
	cc =P1<P2 (iu);
	if !cc jump .L171;
	R0 = 4096 (X);
	P3 = R0;
	P0 = 8192 (X);
	P0 = P5 + P0;
	P2 = P0 + (P2 << 1);
	R0 = 0 (X);
	P1 = (P1 + P3) << 1;
	P1 = P5 + P1;
	P2 -= P1;
	P2 += -2;
	P2 = P2 >> 1;
	P2 += 1;
	LSETUP (.L172, .L297) LC1 = P2;
.L172:
.L297:
	W [P1++] = R0;
.L171:
	R0 = 0 (X);
	R3 += 1;
	[P5+11788] = R0;
	[P5+11792] = R0;
	[P5+11796] = R0;
	[P5+11800] = R0;
	[P5+11836] = R3;
.L169:
	R0 = 8 (X);
	cc =R6==R0;
	if cc jump .L173;
.L214:
	R1 = 8 (X);
	cc =R3==R1;
	if !cc jump .L167;
.L173:
	P0 = 88 (X);
	P1 = 152 (X);
	P3 = SP + P0;
	P1 = SP + P1;
	P4 = 600 (X);
	P0 = P4 + SP;
	M3 = P1;
	P2 = P1;
	FP = P3;
	R7 = 0 (X);
	P4 = 16 (X);
	LSETUP (.L179, .L296) LC1 = P4;
.L179:
	[P2++] = R7;
	P1 = [P0+8];
	R1 = [P0];
	R2 = [P0+4];
	R0 = R1 + R2;
	R4 = P1;
	P1 = [P0+12];
	R0 = R0 + R4;
	P0 += 16;
	R5 = P1;
	R0 = R0 + R5;
	R0 >>>= 2;
.L296:
	[FP++] = R0;
	R7 = 8 (X);
	cc =R6==R7;
	if !cc jump 4 (bp); jump.s .L285;
.L180:
	R0 = 8 (X);
	cc =R3==R0;
	if cc jump .L286;
.L183:
	P0 = 600 (X);
	P0 = P0 + SP;
	R0 = P0;
	P4 = [SP+896];
	R0 += -16;
	R4 = [SP+896];
	R4 = R0 - R4;
	R3 = [P5+11804];
	I0 = R4;
	I1 = P5;
	P4 += 16;
	FP = -9830 (X);
	R4 = 9830 (X);
	I2 = 16383 (X);
	P3 = 16 (X);
	P5 = M3;
	LSETUP (.L210, .L295) LC0 = P3;
.L210:
	P1 = I0;
	R6 = [P5++];
	P0 = P1 + P4;
	R7 = R6 - R3;
	P1 = P4;
	P1 += -16;
	R2 = R7;
	P2 = 4 (X);
	LSETUP (.L209, .L294) LC1 = P2;
.L209:
	R0 = R2 >>> 2;
	R1 = [P0++];
	R1 = R1 + R3;
	R1 = R1 + R0;
	R0 = abs R1;
	R5 = 9830 (X);
	cc =R0<=R5;
	if cc jump .L206 (bp);
	R5 = FP;
	R0 = R0 + R5;
	R0 >>>= 2;
	R0 = R0 + R4;
	R5 = I2;
	R0 = min(R0,R5);
.L206:
	cc =R1<0;
	R0 <<= 16;
	if !cc jump .L208 (bp);
	R0 = -R0;
.L208:
	[P1++] = R0;
.L294:
	R2 = R2 + R7;
	P4 += 16;
.L295:
	R3 = R6;
	P5 = I1;
	P1 = 856 (X);
	[P5+11804] = R6;
	SP = SP + P1;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L143:
	R7 = [SP+44];
	R6 = R6 - R7;
	R1 = R6 >> 1;
	R0 = 32767 (X);
	R1 = R1 & R0;
	R2 = M3;
	R7 = R6 >> 16 ||
	[SP+28] = R2 ||
	nop;
	I1 = R1;
	R1 = [SP+36];
	P3 = 600 (X);
	R1 = R1 - R7;
	B1.H = 65535;
	R6 = [SP+60];
	R2 = [SP+64];
	P4 = SP + P3;
	[SP+44] = P0;
	M3 = R4;
	B3 = R1;
	R4 = [SP+32];
	P3 = 1023 (X);
	B2 = 40000 (Z);
	B1.L = 25536;
	I0 = R0;
	B0 = -32768 (X);
	I3 = 31000 (X);
	I2 = -31000 (X);
	FP = 64 (X);
	[SP+40] = P2;
	[SP+32] = P1;
	P0 = [SP+52];
	M0 = R6;
	M1 = R2;
	LSETUP (.L146, .L293) LC1 = FP;
.L146:
	R0 = P3;
	R0 = R7 & R0;
	P1 = R0;
	R6 = B3;
	R2 = R6 + R7;
	R7 += 1;
	R6 = P3;
	P1 = P5 + (P1 << 1);
	R6 = R7 & R6;
	R1 = W [P1] (X);
	P1 = R6;
	R6 = I1;
	P2 = [P4];
	P1 = P5 + (P1 << 1);
	R0 = W [P1] (X);
	R0 = R0 - R1;
	R0 *= R6;
	R0 >>>= 15;
	R0 = R0 + R1;
	R0 *= R4;
	R0 >>>= 15;
	R0 = R0 - R3;
	R1 = P0;
	R0 *= R1;
	R0 >>>= 15;
	R3 = R3 + R0;
	R0 = R3 - R5;
	R6 = M0;
	R0 *= R6;
	R0 >>>= 15;
	R5 = R5 + R0;
	R1 = R3 - R5;
	R0 = P2;
	R1 = R1 - R0;
	R6 = B2;
	R1 = min(R1,R6);
	R0 = B1;
	R1 = max(R1,R0);
	R0 = [SP+76];
	R0 *= R1;
	R6 = M1;
	R0 >>>= 14;
	R0 = R0 + R6;
	R6 = I0;
	R0 = min(R0,R6);
	R6 = B0;
	R0 = max(R0,R6);
	R0 *= R1;
	R1 = P2;
	R0 >>>= 15;
	R6 = R0 + R1;
	R0 = I3;
	R6 = min(R6,R0);
	R0 = P3;
	R2 = R2 & R0;
	P2 = R2;
	R1 = I2;
	R6 = max(R6,R1);
	[P4++] = R6;
	P1 = P5 + (P2 << 1);
.L293:
	W [P1] = R6;
	R0 = [SP+28];
	R1 = [SP+36];
	R4 = M3;
	M3 = R0;
	R0 = 64 (X);
	R0 = R1 + R0;
	R2 = P3;
	R0 = R0 & R2;
	P2 = [SP+40];
	P0 = [SP+44];
	P1 = [SP+32];
	[P5+11672] = R0;
	[P5+11720] = R3;
	[P5+11724] = R5;
	jump.s .L145;
.L151:
	R7 = [SP+44];
	R2 = R6 - R7;
	R1 = SP;
	R7 = 600 (X);
	R6 = R1 + R7;
	R1 = R2 >> 1;
	R1 = R1 & R0;
	B2 = R1;
	R2 >>= 16;
	R1 = [SP+36];
	R1 = R1 - R2;
	M0 = R1;
	R1 = [SP+32];
	[SP+32] = P0;
	P0 = [SP+76];
	[SP+76] = R4;
	R4 = M2;
	I0.H = 65535;
	M1 = R0;
	[SP+68] = R4;
	R0 = M3;
	R4 = [SP+60];
	P3 = R6;
	R6 = [SP+64];
	[SP+72] = P1;
	I3 = R4;
	R7 = 1023 (X);
	R4 = P4;
	I1 = 40000 (Z);
	I0.L = 25536;
	I2 = -32768 (X);
	B0 = 31000 (X);
	B1 = -31000 (X);
	FP = 64 (X);
	[SP+40] = R0;
	[SP+44] = P2;
	[SP+80] = R1;
	P1 = [SP+28];
	P4 = [SP+52];
	M2 = R6;
	LSETUP (.L153, .L292) LC1 = FP;
.L153:
	R0 = M0;
	R0 = R0 + R2;
	[SP+28] = R0;
	R0 = R2 & R7;
	P2 = R0;
	R0 = R4 & R7;
	R2 += 1;
	R6 = B2;
	R4 += 1;
	P2 = P5 + (P2 << 1);
	R1 = W [P2] (X);
	P2 = R0;
	P2 = P5 + (P2 << 1);
	R0 = W [P2] (X);
	M3 = R0;
	R0 = R2 & R7;
	P2 = R0;
	P2 = P5 + (P2 << 1);
	R0 = W [P2] (X);
	R0 = R0 - R1;
	R0 *= R6;
	R0 >>>= 15;
	R0 = R0 + R1;
	R1 = [SP+80];
	R0 *= R1;
	R1 = R4 & R7;
	P2 = R1;
	R6 = M3;
	R0 >>>= 15;
	P2 = P5 + (P2 << 1);
	R1 = W [P2] (X);
	R1 = R1 - R6;
	R6 = B3;
	R1 *= R6;
	R6 = M3;
	R1 >>>= 15;
	R1 = R1 + R6;
	R6 = P1;
	R1 *= R6;
	R1 >>>= 15;
	R0 = R0 - R1;
	R0 = R0 - R3;
	R1 = P4;
	R0 *= R1;
	R0 >>>= 15;
	R3 = R3 + R0;
	R0 = R3 - R5;
	R6 = I3;
	R0 *= R6;
	P2 = [P3];
	R0 >>>= 15;
	R5 = R5 + R0;
	R1 = R3 - R5;
	R0 = P2;
	R1 = R1 - R0;
	R6 = I1;
	R1 = min(R1,R6);
	R0 = I0;
	R1 = max(R1,R0);
	R0 = P0;
	R0 *= R1;
	R6 = M2;
	R0 >>>= 14;
	R0 = R0 + R6;
	R6 = M1;
	R0 = min(R0,R6);
	R6 = I2;
	R0 = max(R0,R6);
	R0 *= R1;
	R1 = P2;
	R0 >>>= 15;
	R0 = R0 + R1;
	R6 = B0;
	R0 = min(R0,R6);
	R1 = B1;
	R0 = max(R0,R1) ||
	R1 = [SP+28] ||
	nop;
	R6 = R1 & R7;
	P2 = R6;
	[P3++] = R0;
	P2 = P5 + (P2 << 1);
.L292:
	W [P2] = R0;
	R0 = [SP+40];
	R1 = [SP+68];
	M3 = R0;
	P2 = [SP+44];
	P0 = [SP+32];
	R4 = [SP+76];
	M2 = R1;
	P1 = [SP+72];
	jump.s .L279;
.L161:
	R1 = [SP+48];
	R0 = 0 (X);
	cc =R1<=0;
	[P5+11832] = R0;
	if cc jump .L287;
	nop;
	nop;
	R6 = 0 (X);
	R3 = [P5+11836];
	cc =R3<=7 (iu);
	if cc jump .L213 (bp);
	jump.s .L214;
.L287:
	[P5+11836] = R0;
.L167:
	P0 = 600 (X);
	R0 = 0 (X);
	P1 = SP + P0;
	[P5+11804] = R0;
	P0 = [SP+896];
	R7 = -9830 (X);
	R3 = 9830 (X);
	R2 = 16383 (X);
	P2 = 64 (X);
	LSETUP (.L174, .L291) LC1 = P2;
.L174:
	R4 = 9830 (X);
	R1 = [P1++];
	R0 = abs R1;
	cc =R0<=R4;
	if cc jump .L175 (bp);
	R0 = R0 + R7;
	R0 >>>= 2;
	R0 = R0 + R3;
	R0 = min(R0,R2);
.L175:
	cc =R1<0;
	R0 <<= 16;
	if !cc jump .L177 (bp);
	R0 = -R0;
.L177:
.L291:
	[P0++] = R0;
	P1 = 856 (X);
	SP = SP + P1;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L168:
	R0 = 0 (X);
	[P5+11836] = R0;
	R0 = 8 (X);
	cc =R6==R0;
	if !cc jump .L167;
	R3 = 0 (X);
	jump.s .L173;
.L218:
	R0 = 51472 (Z);
	jump.s .L130;
.L217:
	R0 = 51472 (Z);
	[SP+44] = R0;
	jump.s .L125;
.L286:
	R1 = [SP+48];
	P0 = R1;
	R6 = 7209 (X);
	R6 *= R1;
	R0 = 22938 (X);
	P0 = P0 + (P0 << 1);
	R6 >>>= 15;
	R6 = R6 + R0;
	R0 = P0;
	R0 <<= 13;
	R0 >>>= 15;
	[SP+36] = R0;
	R0 = 6554 (X);
	R0 *= R1;
	R7 = 21299 (X);
	R0 >>>= 15;
	R7 = R7 - R0;
	R3 = 8192 (X);
	R0 = P5;
	R3 = R0 + R3;
	R0 = 9496 (X);
	P0 = R0;
	R0 = 10358 (X);
	P1 = R0;
	M0 = P5;
	I1 = 8778 (X);
	P0 = P5 + P0;
	R1 = 216 (X);
	I1 += M0;
	R0 = SP;
	I0 = SP;
	M0 = 280 (X);
	P1 = P5 + P1;
	R4 = R0 + R1;
	[SP+28] = P0;
	FP = 11356 (X);
	P0 = 11478 (X);
	I0 += M0;
	[SP+32] = P1;
	FP = P5 + FP;
	P0 = P5 + P0;
	P4 = I0;
	P1 = R4;
	R1 = 0 (X);
	P2 = 16 (X);
	LSETUP (.L184, .L290) LC1 = P2;
.L184:
	[P4++] = R1;
	R0 = [P3++];
	R0 >>>= 1;
.L290:
	[P1++] = R0;
	P1 = R4;
	P4 = 64 (X);
	P2 = [P5+11696];
	P3 = R4;
	I3 = 19661 (X);
	P4 = P1 + P4;
	I2 = 31000 (X);
	R5 = -31000 (X);
	R2 = 19661 (X);
	P1 = 16 (X);
	B0 = R3;
	B1 = P0;
.L186:
	P0 = FP + (P2 << 1);
	R1 = W [P0] (X);
	R3 = I3;
	R0 = R1.L * R3.L (IS) ||
	R3 = [P3] ||
	nop;
	R0 >>>= 15;
	R0 = R0 + R3;
	R3 = I2;
	R0 = min(R0,R3);
	R0 = max(R0,R5);
	W [P0] = R0;
	R0 *= R2;
	R1 = R1.L (X);
	R0 >>>= 15;
	P2 += 1;
	P0 = 61 (X);
	R0 = R1 - R0;
	cc =P2==P0;
	[P3++] = R0;
	if !cc jump .L185 (bp);
	P2 = 0 (X);
.L185:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L186;
	nop;
	[P5+11696] = P2;
	I3 = P5;
	P2 = [P5+11700];
	P1 = R4;
	P5 = P4;
	FP = 19661 (X);
	P3 = 31000 (X);
	R5 = -31000 (X);
	R2 = 19661 (X);
	I2 = B0;
	P4 = B1;
.L188:
	P0 = P4 + (P2 << 1);
	R1 = W [P0] (X);
	R3 = FP;
	R0 = R1.L * R3.L (IS) ||
	R3 = [P1] ||
	nop;
	R0 >>>= 15;
	R0 = R0 + R3;
	R3 = P3;
	R0 = min(R0,R3);
	R0 = max(R0,R5);
	W [P0] = R0;
	R0 *= R2;
	R1 = R1.L (X);
	R0 >>>= 15;
	P2 += 1;
	P0 = 97 (X);
	R0 = R1 - R0;
	cc =P2==P0;
	[P1++] = R0;
	if !cc jump .L187 (bp);
	P2 = 0 (X);
.L187:
	cc =P5==P1;
	if !cc jump .L188 (bp);
	P5 = I3;
	P1 = [P5+11788];
	R3 = I2;
	M0 = 344 (X);
	I2 = SP;
	R2 = [P5+11680];
	I2 += M0;
	R0 = SP;
	R1 = 408 (X);
	[P5+11700] = P2;
	FP = R3;
	P2 = R2;
	R3 = R2;
	R5 = R0 + R1;
	P4 = I0;
	P3 = I2;
	P0 = 16 (X);
	R2 = P1;
.L190:
	P1 = FP + (P2 << 1);
	R1 = W [P1] (X);
	R0 = R1 - R2;
	R0 *= R7;
	R0 >>>= 15;
	R2 = R2 + R0;
	P2 += 1;
	R0 = [P4];
	P1 = 293 (X);
	R1 = R1 + R0;
	cc =P2==P1;
	[P3++] = R2;
	[P4++] = R1;
	if !cc jump .L189 (bp);
	P2 = 0 (X);
.L189:
	P0 += -1;
	cc =P0==0;
	if !cc jump .L190;
	P1 = R2;
	R2 = R3;
	R3 = FP;
	FP = [P5+11684];
	I3 = SP;
	[P5+11788] = P1;
	P1 = [P5+11792];
	M0 = 408 (X);
	I3 += M0;
	B0 = P5;
	P4 = I0;
	P5 = I1;
	P3 = I3;
	I1 = R2;
	P2 = FP;
	P0 = 16 (X);
	R2 = P1;
.L192:
	P1 = P5 + (P2 << 1);
	R1 = W [P1] (X);
	R0 = R1 - R2;
	R0 *= R7;
	R0 >>>= 15;
	R2 = R2 + R0;
	P2 += 1;
	R0 = [P4];
	P1 = 359 (X);
	R1 = R1 + R0;
	cc =P2==P1;
	[P3++] = R2;
	[P4++] = R1;
	if !cc jump .L191 (bp);
	P2 = 0 (X);
.L191:
	P0 += -1;
	cc =P0==0;
	if !cc jump .L192;
	P1 = R2;
	R2 = I1;
	I1 = P5;
	P5 = B0;
	P3 = [P5+11688];
	[P5+11792] = P1;
	P1 = [P5+11796];
	P4 = 472 (X);
	P4 = SP + P4;
	B0 = P4;
	R1 = P1;
	B2 = P5;
	P4 = I0;
	P2 = P3;
	P0 = 16 (X);
	B3 = P3;
	P1 = B0;
	B1 = R2;
	P5 = [SP+28];
.L194:
	P3 = P5 + (P2 << 1);
	R2 = W [P3] (X);
	R0 = R2 - R1;
	R0 *= R7;
	R0 >>>= 15;
	R1 = R1 + R0;
	P2 += 1;
	R0 = [P4];
	P3 = 431 (X);
	R0 = R0 - R2;
	cc =P2==P3;
	[P1++] = R1;
	[P4++] = R0;
	if !cc jump .L193 (bp);
	P2 = 0 (X);
.L193:
	P0 += -1;
	cc =P0==0;
	if !cc jump .L194;
	nop;
	nop;
	P5 = B2;
	P4 = [P5+11692];
	P1 = [P5+11800];
	P0 = 536 (X);
	P0 = SP + P0;
	R2 = B1;
	P3 = B3;
	B1 = P0;
	[P5+11796] = R1;
	P2 = P4;
	M0 = P5;
	B3 = R2;
	B2 = P4;
	R2 = ROT R7 BY 0 ||
	P4 = [SP+32] ||
	nop;
	R7 = P1;
	P0 = 16 (X);
	M1 = P3;
	P5 = B1;
	P1 = I0;
.L196:
	P3 = P4 + (P2 << 1);
	R1 = W [P3] (X);
	R0 = R1 - R7;
	R0 *= R2;
	R0 >>>= 15;
	R7 = R7 + R0;
	P2 += 1;
	R0 = [P1];
	P3 = 499 (X);
	R1 = R1 + R0;
	cc =P2==P3;
	[P5++] = R7;
	[P1++] = R1;
	if !cc jump .L195 (bp);
	P2 = 0 (X);
.L195:
	P0 += -1;
	cc =P0==0;
	if !cc jump .L196;
	P5 = M0;
	P4 = B2;
	P3 = M1;
	R2 = B3;
	R1 = P5;
	[P5+11800] = R7;
	B3 = P4;
	M0 = P3;
	P2 = R2;
	[SP+40] = R4;
	M1 = FP;
	P1 = I2;
	M2 = R4;
	P5 = B1;
	P3 = I3;
	B2 = R1;
	P4 = B0;
.L198:
	P0 = [SP+40];
	R0 = [P1++];
	R4 = [P3++];
	R7 = [P4++];
	R0 = R0 + R4;
	R2 = [P5++];
	R0 = R0 + R7;
	R0 = R0 + R2;
	R1 = [P0++];
	R0 >>>= 1;
	[SP+40] = P0;
	R0 *= R6;
	P0 = R3;
	R0 >>>= 15;
	R0 = R0 + R1;
	R1 = 31000 (X);
	R0 = min(R0,R1);
	FP = P0 + (P2 << 1);
	R2 = -31000 (X);
	P2 += 1;
	P0 = 293 (X);
	R0 = max(R0,R2);
	cc =P2==P0;
	W [FP] = R0;
	if !cc jump .L197 (bp);
	P2 = 0 (X);
.L197:
	R0 = P1;
	cc =R5==R0;
	if !cc jump .L198 (bp);
	P5 = B2;
	P4 = B3;
	P3 = M0;
	R4 = M2;
	[P5+11680] = P2;
	FP = M1;
	M0 = P5;
	B2 = P4;
	P2 = I2;
	M2 = 31000 (X);
	M1 = -31000 (X);
	P5 = B0;
	P0 = B1;
	P4 = I3;
	[SP+40] = R4;
	B3 = P3;
.L200:
	P3 = [SP+40];
	R0 = [P2++];
	R3 = [P4++];
	R2 = [P5++];
	R0 = R0 - R3;
	R1 = [P0++];
	R0 = R0 + R2;
	R0 = R0 - R1;
	R0 >>>= 1;
	R0 *= R6;
	R7 = [P3++];
	R0 >>>= 15;
	P1 = I1;
	R0 = R0 + R7;
	R1 = M2;
	[SP+40] = P3;
	R0 = min(R0,R1);
	P3 = P1 + (FP << 1);
	R2 = M1;
	FP += 1;
	P1 = 359 (X);
	R0 = max(R0,R2);
	cc =FP==P1;
	W [P3] = R0;
	if !cc jump .L199 (bp);
	FP = 0 (X);
.L199:
	R0 = P2;
	cc =R5==R0;
	if !cc jump .L200 (bp);
	P5 = M0;
	P4 = B2;
	[P5+11684] = FP;
	P3 = B3;
	M1 = P5;
	FP = B1;
	P0 = B0;
	P2 = I2;
	M0 = 31000 (X);
	B3 = -31000 (X);
	R1 = [SP+28];
	B2 = R4;
	P5 = I3;
	M2 = R4;
	I1 = P4;
.L202:
	P1 = M2;
	R0 = [P2++];
	R4 = [P5++];
	R3 = [P0++];
	R0 = R0 + R4;
	R2 = [FP++];
	R0 = R0 - R3;
	R0 = R0 - R2;
	R7 = [P1++];
	R0 >>>= 1;
	M2 = P1;
	R0 *= R6;
	P1 = R1;
	R0 >>>= 15;
	R0 = R0 + R7;
	R2 = M0;
	R0 = min(R0,R2);
	P4 = P1 + (P3 << 1);
	R3 = B3;
	P3 += 1;
	P1 = 431 (X);
	R0 = max(R0,R3);
	cc =P3==P1;
	W [P4] = R0;
	if !cc jump .L201 (bp);
	P3 = 0 (X);
.L201:
	R0 = P2;
	cc =R5==R0;
	if !cc jump .L202 (bp);
	R4 = B2;
	P5 = M1;
	[P5+11688] = P3;
	P0 = R4;
	P2 = I2;
	P4 = I1;
	B2 = 31000 (X);
	B3 = -31000 (X);
	R4 = [SP+32];
	P3 = B1;
	FP = B0;
	I2 = M1;
	P5 = I3;
.L204:
	P1 = R4;
	R1 = [P5++];
	I3 = R1;
	R0 = [P2++];
	R3 = [FP++];
	R2 = [P3++];
	R1 = [P0++];
	R7 = I3;
	R0 = R0 - R7;
	R0 = R0 - R3;
	R0 = R0 + R2;
	R0 >>>= 1;
	R0 *= R6;
	R0 >>>= 15;
	R0 = R0 + R1;
	R1 = B2;
	R0 = min(R0,R1);
	R2 = B3;
	P1 = P1 + (P4 << 1);
	R0 = max(R0,R2);
	W [P1] = R0;
	P4 += 1;
	P1 = 499 (X);
	cc =P4==P1;
	if !cc jump .L203 (bp);
	P4 = 0 (X);
.L203:
	R0 = P2;
	cc =R5==R0;
	if !cc jump .L204 (bp);
	P5 = I2;
	[P5+11692] = P4;
	P1 = M3;
	P2 = 16 (X);
	R2 = [SP+36];
	P0 = I0;
	LSETUP (.L205, .L289) LC1 = P2;
.L205:
	R0 = [P0++];
	R0 >>>= 1;
	R0 *= R2;
	R1 = [P1];
	R0 >>>= 15;
	R0 = R0 + R1;
.L289:
	[P1++] = R0;
	jump.s .L183;
.L285:
	R5 = [SP+56];
	R5 <<= 14;
	R0 = 6554 (X);
	R5 >>>= 15;
	R5 = R5 + R0;
	R6 = 18022 (X);
	R0 = [SP+56];
	R6 *= R0;
	FP = 2048 (X);
	R6 >>>= 15;
	FP = P5 + FP;
	P2 = [P5+11676];
	R7 = [P5+11784];
	P4 = M3;
	P0 = P3;
	I1 = 18000 (X);
	I0 = 31000 (X);
	R4 = -31000 (X);
	P1 = 16 (X);
	I3 = R3;
	I2 = P5;
	LSETUP (.L182, .L288) LC1 = P1;
.L182:
	P5 = FP + (P2 << 1);
	R1 = W [P5] (X);
	R0 = R1 - R7;
	R2 = I1;
	R0 *= R2;
	R0 >>>= 15;
	R7 = R7 + R0;
	R0 = ROT R5 BY 0 ||
	R2 = [P0++] ||
	nop;
	R0 *= R7;
	R0 >>>= 15;
	R0 = R0 + R2;
	R3 = I0;
	R0 = min(R0,R3);
	R0 = max(R0,R4);
	W [P5] = R0;
	P5 = 3071 (X);
	cc =P2==P5;
	if cc jump .L220;
	nop;
	P2 += 1;
.L181:
	R1 *= R6;
	R0 = R1 >>> 15 ||
	R1 = [P4] ||
	nop;
	R1 = R0 + R1;
	R0 = R2 + R0;
	[P4++] = R1;
.L288:
	[P0+-4] = R0;
	P5 = I2;
	R3 = I3;
	[P5+11676] = P2;
	[P5+11784] = R7;
	jump.s .L180;
.L220:
	P2 = 0 (X);
	jump.s .L181;
	.size	__ZN12medievalwind6renderERNS_5VoiceERNS_6SharedEmPlPKlPKm.isra.7, .-__ZN12medievalwind6renderERNS_5VoiceERNS_6SharedEmPlPKlPKm.isra.7
	.align 4
.global _medievalwind_render;
.type _medievalwind_render, STT_FUNC;
_medievalwind_render:
	[--sp] = ( r7:4, p5:3 );

	P5 = R0;
	P4.H = __ZL6blocks;
	LINK 16;
	P4.L = __ZL6blocks;
	R7 = ROT R1 BY 0 ||
	R1 = W [P4] (X) ||
	nop;
	P3 = R2;
	R0 = R1.L (Z);
	R2 = W [P5+4] (Z);
	cc =R2==R0;
	if cc jump .L308;
	P2.H = __ZL7counted;
	P2.L = __ZL7counted;
	R4 = [P2];
.L309:
	R6 = B [P5+8] (Z);
	cc =R6==0;
	W [P5+4] = R1;
	if cc jump .L310 (bp);
	R3 = R6;
	R3 += -1;
	R0 = 11876 (X);
	R0 *= R3;
	R5.H = __ZL6voices;
	R5.L = __ZL6voices;
	R0 = R5 + R0;
	P2 = R0;
	P1 = 11860 (X);
	P1 = P2 + P1;
	R0 = [P1];
	cc =R0==0;
	I0 = R0;
	if !cc jump .L347 (bp);
	P4.H = __ZL7handles;
	P4.L = __ZL7handles;
.L311:
	nop;
	R1 = B [P5+9] (Z);
	cc =R1==0;
	if cc jump .L324 (bp);
.L323:
	R0 = 11876 (X);
	R0 *= R3;
	R2 = P4;
	R0 = R5 + R0;
	R3 = P5;
	P2 = R0;
	R0 = R3 - R2;
	R2.H = 43690;
	R0 >>>= 2;
	R2.L = 43691;
	R0 *= R2;
	R1 = [P2+11860];
	R0 += 1;
	cc =R1==R0;
	if cc jump .L314;
	cc =R1==0;
	if !cc jump .L348 (bp);
.L315:
	R1 = R4;
	R2 = 0 (X);
	R0 = P5;
	call __ZL7acquireP6Handlemb;
	R6 = B [P5+8] (X);
.L312:
	R6 = R6.B (Z);
	cc =R6==0;
	if cc jump .L316;
	R5.H = __ZL6voices;
	P4.H = __ZL7handles;
	R5.L = __ZL6voices;
	P4.L = __ZL7handles;
.L324:
	P5 -= P4;
	R0 = P5;
	R1.H = 43690;
	R0 >>>= 2;
	R1.L = 43691;
	R0 *= R1;
	R0 += 1;
.L325:
	R6 += -1;
	R1 = 11876 (X);
	R1 *= R6;
	R1 = R5 + R1;
	P5 = R1;
	R1 = [P5+11860];
	cc =R1==R0;
	if cc jump .L349;
.L316:
	P1 = R7;
	R0 = 0 (X);
	P2 = 64 (X);
	LSETUP (.L322, .L352) LC1 = P2;
.L322:
.L352:
	[P1++] = R0;
.L333:
	SP += 16;
	FP = [SP++];
	R0 = 0 (X);
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L310:
	nop;
	R0 = B [P5+9] (Z);
	cc =R0==0;
	if cc jump .L316 (bp);
	jump.s .L315;
.L347:
	P4.H = __ZL7handles;
	P4.L = __ZL7handles;
	P0 = P5;
	P0 -= P4;
	R0 = P0;
	P0.H = 43690;
	P0.L = 43691;
	R2 = P0;
	FP = [P2+11868];
	R0 >>>= 2;
	R0 *= R2;
	R2 = FP;
	R0 += 1;
	cc =R2==R0;
	if !cc jump .L311 (bp);
	P0 = I0;
	P0 += -1;
	P0 = P0 + (P0 << 1);
	P0 = P4 + (P0 << 2);
	R0 = W [P0+4] (X);
	R0 = R1 - R0;
	R0 = R0.L (Z);
	cc =R0<=2 (iu);
	if cc jump .L311 (bp);
	R0 = W [P2+11872] (X);
	R1 = R1 - R0;
	R1 = R1.L (Z);
	cc =R1<=2 (iu);
	if cc jump .L311 (bp);
	R0 = 0 (X);
	cc =FP==0;
	[P1] = R0;
	if cc jump .L311 (bp);
	FP += -1;
	FP = FP + (FP << 1);
	FP = P4 + (FP << 2);
	R0 = P2;
	R2 = R4;
	R1 = FP;
	call __ZL5beginR4SlotP6Handlem;
	R0 = B [P5+9] (Z);
	cc =R0==0;
	R6 = B [P5+8] (X);
	if cc jump .L312;
	R6 = R6.B (Z);
	R3 = R6;
	cc =R6==0;
	R3 += -1;
	if !cc jump .L323 (bp);
	jump.s .L315;
.L308:
	R1 += 1;
	W [P4] = R1;
	call sdk_voice_ticks;
	P2.H = __ZL7counted;
	P2.L = __ZL7counted;
	R4 = ROT R0 BY 0 ||
	[P2] = R0 ||
	nop;
	call __ZL5sweepm;
	R1 = W [P4] (X);
	jump.s .L309;
.L349:
	P2.H = sdk_benchmark_engine;
	P2.L = sdk_benchmark_engine;
	R0.H = medievalwind_engine_id;
	R1 = [P2];
	R0.L = medievalwind_engine_id;
	cc =R1==R0;
	if cc jump .L350;
.L317:
	P2.H = 4496;
	P2.L = 11264;
	R2 = P3;
	R0 = [P2];
	[SP+12] = R0;
	R1 = R7;
	R0 = P5;
	call __ZN12medievalwind6renderERNS_5VoiceERNS_6SharedEmPlPKlPKm.isra.7;
	R0 = 11876 (X);
	R0 *= R6;
	R0 = R5 + R0;
	P2 = R0;
	R0 = [P2+11868];
	cc =R0==0;
	if cc jump .L333 (bp);
	R1 = -2 (X);
	R2.H = 65015;
	P1 = R7;
	R1.H = 32767;
	R2.L = 57214;
	P2 = 64 (X);
	LSETUP (.L320, .L351) LC1 = P2;
.L320:
	R0 = [P1];
// 12 "D:\a\MedievalWind-for-open-XY-\MedievalWind-for-open-XY-\sdk\sdk\include/opxy/q31.hpp" 1
	R0 = R0 * R1 (T);
// 0 "" 2
	R1 = R1 + R2;
.L351:
	[P1++] = R0;
	R0 = 11876 (X);
	R6 *= R0;
	R5 = R5 + R6;
	P2 = R5;
	P1 = 11860 (X);
	R0 = 0 (X);
	P1 = P2 + P1;
	P2 = [P2+11868];
	[P1] = R0;
	cc =P2==0;
	if cc jump .L333 (bp);
	P2 += -1;
	P2 = P2 + (P2 << 1);
	P4 = P4 + (P2 << 2);
	R2 = R4;
	R1 = P4;
	R0 = P5;
	call __ZL5beginR4SlotP6Handlem;
	jump.s .L333;
.L348:
	nop;
	R1 = [P2+11868];
	cc =R0==R1;
	if !cc jump .L315 (bp);
.L314:
	R6 = B [P5+8] (Z);
	jump.s .L325;
.L350:
	P2.H = sdk_benchmark_parameters;
	P2.L = sdk_benchmark_parameters;
	R0 = [P2];
	cc =R0==0;
	if !cc P3 = R0;
	jump.s .L317;
	.size	_medievalwind_render, .-_medievalwind_render
	.align 4
.global medievalwind_factory;
.type medievalwind_factory, STT_FUNC;
medievalwind_factory:
	P2 = R0;
	[--sp] = ( p5:5 );

	P1 = 255 (X);
	[--SP] = RETS;
	SP += -12;
	cc =P2<=P1 (iu);
	if !cc jump .L355;
	P5.H = __ZL7handles;
	P2 = P2 + (P2 << 1);
	P5.L = __ZL7handles;
	P5 = P5 + (P2 << 2);
	R0 = P5;
	call _end;
	R0.H = _medievalwind_vtable;
	R0.L = _medievalwind_vtable;
	[P5] = R0;
.L353:
	SP += 12;
	RETS = [SP++];
	R0 = P5;
	( p5:5 ) = [sp++];

	rts;
.L355:
	P5 = 0 (X);
	jump.s .L353;
	.size	medievalwind_factory, .-medievalwind_factory
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	""
.text;
	.align 4
.global medievalwind_parameter_name;
.type medievalwind_parameter_name, STT_FUNC;
medievalwind_parameter_name:
	P2 = R0;
	cc =P2<=7 (iu);
	if !cc jump .L358 (bp);
	P1.H = __ZZ27medievalwind_parameter_nameE6labels;
	P1.L = __ZZ27medievalwind_parameter_nameE6labels;
	P2 = P1 + (P2 << 2);
	R0 = [P2];
	rts;
.L358:
	R0.H = .LC0;
	R0.L = .LC0;
	rts;
	.size	medievalwind_parameter_name, .-medievalwind_parameter_name
.global _medievalwind_vtable;
	.section	.rodata
	.align 4
	.type	_medievalwind_vtable, @object
	.size	_medievalwind_vtable, 44
_medievalwind_vtable:
	.long	_medievalwind_destroy
	.long	_medievalwind_destroy
	.long	_medievalwind_render
	.long	_noop
	.long	_medievalwind_start
	.long	_noop
	.long	_zero
	.long	_noop
	.long	_zero
	.long	_zero
	.long	-1924116028
	.section	.rodata.str1.4
	.align 4
.LC1:
	.string	"reed"
	.align 4
.LC2:
	.string	"bore"
	.align 4
.LC3:
	.string	"bell"
	.align 4
.LC4:
	.string	"breath"
	.align 4
.LC5:
	.string	"bend"
	.align 4
.LC6:
	.string	"crum"
	.align 4
.LC7:
	.string	"hall"
	.align 4
.LC8:
	.string	"echo"
	.section	.rodata
	.align 4
	.type	__ZZ27medievalwind_parameter_nameE6labels, @object
	.size	__ZZ27medievalwind_parameter_nameE6labels, 32
__ZZ27medievalwind_parameter_nameE6labels:
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
.global medievalwind_name;
	.align 4
	.type	medievalwind_name, @object
	.size	medievalwind_name, 13
medievalwind_name:
	.string	"medievalwind"
	.local	__ZL7counted
	.comm	__ZL7counted,4,4
.data;
	.align 2
	.type	__ZL6blocks, @object
	.size	__ZL6blocks, 2
__ZL6blocks:
	.short	1
	.local	__ZL6voices
	.comm	__ZL6voices,106884,4
	.local	__ZL7handles
	.comm	__ZL7handles,3072,4
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
