.file "screen.cpp";
.text;
	.align 4
.type __ZN4opxy6screen12_GLOBAL__N_17destroyINS1_7DrawingIN12_GLOBAL__N_17MachineEE6ObjectEEEvPT_, STT_FUNC;
__ZN4opxy6screen12_GLOBAL__N_17destroyINS1_7DrawingIN12_GLOBAL__N_17MachineEE6ObjectEEEvPT_:
	[--sp] = ( p5:5 );

	P5 = R0;
	[--SP] = RETS;
	P2.H = 36177;
	P2.L = 64952;
	SP += -12;
	call (P2);
	R0 = 0 (X);
	P1 = 76 (X);
	[P5+16] = R0;
	P1 = P5 + P1;
	P2 = 195 (X);
	LSETUP (.L2, .L5) LC1 = P2;
.L2:
.L5:
	[P1++] = R0;
	SP += 12;
	RETS = [SP++];
	( p5:5 ) = [sp++];

	rts;
	.size	__ZN4opxy6screen12_GLOBAL__N_17destroyINS1_7DrawingIN12_GLOBAL__N_17MachineEE6ObjectEEEvPT_, .-__ZN4opxy6screen12_GLOBAL__N_17destroyINS1_7DrawingIN12_GLOBAL__N_17MachineEE6ObjectEEEvPT_
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.long	1
	.long	3
	.long	4
	.long	6
	.long	7
.text;
	.align 4
.type __ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE5frameEPNS5_6ObjectEl, STT_FUNC;
__ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE5frameEPNS5_6ObjectEl:
	P0 = R0;
	[--sp] = ( r7:4, p5:3 );

	LINK 180;
	[SP+216] = R0;
	R0 = [P0+8];
	cc =R0==0;
	[P0+820] = R1;
	if cc jump .L6;
	P3 = P0;
	P3 += 24;
	R7 = P0;
	[SP+32] = P3;
	R7 += 40;
	P2 = P3;
	P1 = 4 (X);
	LSETUP (.L8, .L169) LC1 = P1;
.L8:
	R0 = [P2++];
	cc =R0==0;
	if cc jump .L6;
	nop;
	nop;
	nop;
	R0 = [P2+12];
	cc =R0==0;
	if cc jump .L6;
.L169:
	nop;
	P2.H = 36173;
	P2.L = 28436;
	call (P2);
	P1 = 125 (X);
	P1 = P1 + SP;
	R1 = P1;
	R6 = 0 (X);
	[SP+120] = R0;
	call sdk_synth_shown;
	P2.H = 36173;
	P2.L = 29352;
	[SP+132] = R6;
	[SP+136] = R6;
	[SP+140] = R6;
	[SP+144] = R6;
	[SP+148] = R6;
	[SP+152] = R6;
	[SP+156] = R6;
	[SP+160] = R6;
	[SP+164] = R6;
	[SP+168] = R6;
	[SP+172] = R6;
	[SP+176] = R6;
	R0 = [SP+120];
	call (P2);
	P1 = R0;
	P5 = 84 (X);
	R1 = SP;
	R2 = 116 (X);
	P2 = SP + P5;
	R0 = R1 + R2;
	cc =P1==0;
	[SP+36] = R6;
	[SP+40] = P2;
	[SP+44] = R0;
	if !cc jump 4 (bp); jump.s .L9;
	R0 = [P1+4];
	cc =R0==0;
	R1 = [SP+120];
	if cc jump .L10;
	nop;
	nop;
	nop;
	P0 = [P1+8];
	R3 = P0;
	cc =R0<=R3 (iu);
	if !cc jump .L10;
	P5 = R0;
	P0 -= P5;
	P5 = 15 (X);
	cc =P0<=P5 (iu);
	if cc jump .L10;
	R2 = 3 (X);
	R2 = R0 & R2;
	cc =R2==0;
	if !cc jump .L10;
	P1 = 31 (X);
	cc =P0<=P1 (iu);
	if cc jump 4; jump.s .L78;
	P0 = P0 >> 2;
.L14:
	P5 = 148 (X);
	P4 = SP + P5;
	R2 = P4;
	P1 = 0 (X);
	FP = 8 (X);
	LSETUP (.L16, .L168) LC1 = FP;
.L16:
	cc =P0<=P1 (iu);
	if !cc jump 4; jump.s .L79;
	P5 = R0;
	P5 = P5 + (P1 << 2);
	R3 = [P5];
.L15:
	P5 = R2;
	P1 += 1;
	[P5++] = R3;
.L168:
	R2 = P5;
	P1 = 180 (X);
	FP = P1 + SP;
	P1 = P2;
.L17:
	nop;
	R0 = [P4++];
	cc =P4==FP;
	[P1++] = R0;
	if !cc jump .L17 (bp);
	R2 = 132 (X);
	P5 = 125 (X);
	R0 = SP;
	R3 = R0 + R2;
	FP = P5 + SP;
	R2 = 0 (X);
	P4 = 4 (X);
	LSETUP (.L20, .L167) LC1 = P4;
.L20:
	R6 = P0;
	R0 = B [FP++] (Z);
	cc =R6<=R0 (iu);
	if !cc jump .L18 (bp);
	B [FP+-1] = R2;
	R0 = R2.B (Z);
.L18:
	P1 = R0;
	P5 = 180 (X);
	P5 = P5 + SP;
	R2 += 1;
	P1 = P5 + (P1 << 2);
	R0 = [P1+-32];
	P1 = R3;
	[P2++] = R0;
	[P1++] = R0;
.L167:
	R3 = P1;
	R0 = 1 (X);
	P1 = SP;
	B [SP+124] = R0;
	P1 += 36;
	jump.s .L21;
.L10:
	R0 = 0 (X);
	B [SP+124] = R0;
.L21:
	P2.H = 36180;
	R0 = P3;
	R2 = P1;
	P2.L = 26284;
	call (P2);
	R0 = B [SP+124] (Z);
	cc =R0==0;
	if cc jump .L26 (bp);
	P2 = 125 (X);
	R0 = SP;
	R1 = 132 (X);
	P4 = P2 + SP;
	R4 = R0 + R1;
	FP = SP;
	P5.H = 36192;
	R5 = R4;
	R6 = P4;
	FP += 60;
	P5.L = 4592;
.L25:
	P0 = R5;
	P1 = R6;
	R0 = [SP+120];
	R2 = [P0++];
	R1 = B [P1++] (Z);
	[SP+12] = FP;
	R5 = P0;
	R6 = P1;
	call sdk_synth_value;
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L23;
	nop;
	nop;
	R1 = FP;
	R0 = [P3];
	call (P5);
.L23:
	P3 += 4;
	R0 = P3;
	cc =R0==R7;
	if !cc jump .L25 (bp);
	R0 = B [SP+124] (Z);
	cc =R0==0;
	if cc jump .L26;
	nop;
	P0 = [SP+216];
	R1 = [SP+120];
	P0 = [P0+12];
	R0 = P0;
	call sdk_screen_activation;
	cc =R0==0;
	R6 = R0;
	if cc jump .L28 (bp);
	FP.H = __ZN4opxy6screen12_GLOBAL__N_118display_activationE;
	FP.L = __ZN4opxy6screen12_GLOBAL__N_118display_activationE;
	R0 = [FP];
	cc =R6==R0;
	if cc jump .L28 (bp);
	R1.H = __ZN4opxy6screen12_GLOBAL__N_113display_frameE;
	R0.H = __ZN4opxy6screen12_GLOBAL__N_113display_stateE;
	R0.L = __ZN4opxy6screen12_GLOBAL__N_113display_stateE;
	R1.L = __ZN4opxy6screen12_GLOBAL__N_113display_frameE;
	call _medievalwind_display_reset;
	P1 = [SP+216];
	R0 = R0 -|- R0 ||
	[FP] = R6 ||
	nop;
	[P1+840] = R0;
	[P1+844] = R0;
	[P1+848] = R0;
	[P1+852] = R0;
.L28:
	FP.H = __ZN4opxy6screen12_GLOBAL__N_113display_inputE;
	FP.L = __ZN4opxy6screen12_GLOBAL__N_113display_inputE;
	P1 = FP;
	P0 = FP;
	P1 += 32;
	P2 = 4 (X);
	LSETUP (.L29, .L166) LC1 = P2;
.L29:
	P5 = R4;
	R0 = [P5++];
	[P0++] = R0;
	R0 = B [P4++] (X);
	R4 = P5;
.L166:
	B [P1++] = R0;
	P1 = 148 (X);
	P0 = SP + P1;
	P1.H = __ZN4opxy6screen12_GLOBAL__N_113display_inputE+36;
	P1.L = __ZN4opxy6screen12_GLOBAL__N_113display_inputE+36;
	P2 = 8 (X);
	LSETUP (.L30, .L165) LC1 = P2;
.L30:
	R0 = [P0++];
.L165:
	[P1++] = R0;
	P2 = [SP+216];
	R0 = [P2+820];
	[FP+16] = R0;
	R0 = [SP+120];
	cc =R0<=7 (iu);
	[FP+20] = R0;
	if cc jump 4 (bp); jump.s .L80;
	P2.H = 36173;
	P2.L = 27656;
	call (P2);
	R1 = R0;
	R0 = [SP+120];
.L31:
	[FP+24] = R1;
	R1.H = __ZN4opxy6screen12_GLOBAL__N_113display_inputE;
	R1.L = __ZN4opxy6screen12_GLOBAL__N_113display_inputE;
	call sdk_display_note_activity;
	R5.H = __ZN4opxy6screen12_GLOBAL__N_113display_frameE;
	R0 = 0 (X);
	[FP+28] = R0;
	R5.L = __ZN4opxy6screen12_GLOBAL__N_113display_frameE;
	R1.H = __ZN4opxy6screen12_GLOBAL__N_113display_inputE;
	R0.H = __ZN4opxy6screen12_GLOBAL__N_113display_stateE;
	R2 = R5;
	R1.L = __ZN4opxy6screen12_GLOBAL__N_113display_inputE;
	R0.L = __ZN4opxy6screen12_GLOBAL__N_113display_stateE;
	call _medievalwind_display_render;
	R0 = R5;
	call _medievalwind_display_validate;
	cc =R0==0;
	if !cc jump .L150 (bp);
.L26:
	P2.H = 36177;
	R1 = 0 (X);
	R0 = [SP+216];
	P2.L = 65052;
	call (P2);
.L6:
	P1 = 180 (X);
	SP = SP + P1;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L150:
	P0 = R5;
	R2 = 76 (X);
	R3 = [SP+216];
	P3 = 516 (X);
	R4 = R3 + R2;
	P4 = P0 + P3;
	R6 = 2580 (X);
	P0.H = 36191;
	R6 = R5 + R6;
	FP = R4;
	R1 = -512 (X);
	P0.L = 43460;
.L39:
	nop;
	R3 = [P4+-516];
	R0 = [FP+764];
	cc =R3==R0;
	if cc jump .L33;
	nop;
	nop;
	nop;
	P1 = [FP];
	cc =P1==0;
	if cc jump .L33;
	R2.H = 33804;
	R2.L = 19828;
	R0 = [P1];
	cc =R0==R2;
	if !cc jump .L33 (bp);
	P2 = [P1+120];
	cc =P2==0;
	if cc jump .L33;
	R3 = P2;
	R0 = 3 (X);
	R0 = R3 & R0;
	cc =R0==0;
	if !cc jump .L33;
	nop;
	nop;
	nop;
	P5 = [P1+124];
	cc =P2<=P5 (iu);
	if !cc jump .L33;
	nop;
	nop;
	nop;
	P1 = [P1+128];
	cc =P5<=P1 (iu);
	if !cc jump .L33;
	P5 -= P2;
	R0 = P5;
	R2 = 2080 (X);
	cc =R0==R2;
	if !cc jump .L33 (bp);
	P1 -= P2;
	P5 = 4096 (X);
	cc =P1<=P5 (iu);
	if !cc jump .L33;
	P1 = P2;
	R0 = 1 (X);
	jump.s .L34;
.L152:
	R2 = 64 (X);
	cc =R0==R2;
	if cc jump .L151;
.L36:
	P1 += 32;
	R0 += 1;
.L34:
	cc =R0==1;
	R3 = B [P1+24] (Z);
	if cc jump .L35;
	cc =R3==2;
	if cc jump .L152 (bp);
.L33:
	P4 = P4 + P3;
	R0 = P4;
	cc =R0==R6;
	FP += 4;
	if !cc jump .L39 (bp);
	FP.H = __ZN4opxy6screen12_GLOBAL__N_113display_frameE+2064;
	R6.H = .LC0;
	FP.L = __ZN4opxy6screen12_GLOBAL__N_113display_frameE+2064;
	R6.L = .LC0;
.L51:
	P1 = R4;
	R0 = [FP+24];
	cc =R0==0;
	P0 = [P1++];
	R4 = P1;
	if !cc jump .L153;
.L40:
	cc =P0==0;
	if cc jump .L42;
	nop;
	nop;
.L43:
	nop;
	R3 = [FP+8];
	R0 = [FP+12];
	R0 *= R3;
	cc =R0<0;
	R1 = R0;
	if !cc jump .L52 (bp);
	R1 = 1023 (X);
	R1 = R0 + R1;
.L52:
	cc =R0<0;
	R1 >>>= 10;
	if cc jump .L154;
	nop;
	nop;
.L53:
	nop;
	R0 = [FP+16];
	R3 *= R0;
	cc =R3<0;
	R0 = R3;
	if !cc jump .L54 (bp);
	R0 = 1023 (X);
	R0 = R3 + R0;
.L54:
	cc =R3<0;
	R0 >>>= 10;
	if cc jump .L155;
.L55:
	I0 = R6;
	P1 = SP;
	P1 += 36;
	P2 = 5 (X);
	P5 = SP;
	R2 = [I0++]; lsetup (1f, 1f) LC1 = P2; 1: MNOP || [P1++] = R2 || R2 = [I0++]; [P1++] = R2;
	P1 = 60 (X);
	P1 = P1 + SP;
	[SP+64] = R0;
	R0 = -R0;
	P5 += 36;
	I2 = P1;
	[SP+68] = R0;
	R0 = [FP];
	[SP+76] = R0;
	I2 += 4;
	R0 = [FP+4];
	R2 = P5;
	[SP+80] = R0;
	[SP+60] = R1;
	[SP+72] = R1;
	R2 += 24;
	B0 = I2;
	P4 = P5;
	R0 = R1;
	P1 = 6 (X);
	jump.s .L57;
.L129:
	P2 = B0;
	R0 = [P2++];
	B0 = P2;
.L57:
	P2 = [P4++];
	P2 = P0 + (P2 << 2);
	P2 = [P2+4];
	R3 = P2;
	cc =R3==R0;
	if cc jump .L156;
	P4 = P0;
	P2 = 84 (X);
	P1 = SP + P2;
	P4 += 4;
	P2 = 9 (X);
	LSETUP (.L58, .L164) LC1 = P2;
.L58:
	R0 = [P4++];
.L164:
	[P1++] = R0;
	jump.s .L60;
.L157:
	P1 = I2;
	R1 = [P1++];
	I2 = P1;
.L60:
	P2 = [P5++];
	P1 = 180 (X);
	P1 = P1 + SP;
	R0 = P5;
	P2 = P1 + (P2 << 2);
	cc =R2==R0;
	[P2+-96] = R1;
	if !cc jump .L157 (bp);
	P2 = 84 (X);
	P2 = P2 + SP;
	R1 = P2;
	P2.H = 36191;
	R0 = P0;
	P2.L = 1702;
	call (P2);
.L42:
	P2.H = __ZN4opxy6screen12_GLOBAL__N_113display_frameE+3688;
	FP += 28;
	P2.L = __ZN4opxy6screen12_GLOBAL__N_113display_frameE+3688;
	cc =P2==FP;
	if !cc jump .L51 (bp);
	P5 = [SP+216];
	P4 = 308 (X);
	P3.H = __ZN4opxy6screen12_GLOBAL__N_113display_frameE+3700;
	R3 = 396 (X);
	P4 = P5 + P4;
	R6 = P5;
	R0 = 4276 (X);
	[SP+28] = P4;
	P3.L = __ZN4opxy6screen12_GLOBAL__N_113display_frameE+3700;
	R4 = R6 + R3;
	R5 = R5 + R0;
.L72:
	P1 = [SP+28];
	P0 = [P1++];
	cc =P0==0;
	[SP+28] = P1;
	if cc jump .L71;
	P1 = SP;
	I0.H = .LC0;
	P2 = 5 (X);
	P1 += 36;
	I0.L = .LC0;
	R0 = [I0++]; lsetup (1f, 1f) LC1 = P2; 1: MNOP || [P1++] = R0 || R0 = [I0++]; [P1++] = R0;
	P2 = 60 (X);
	R0 = 0 (X);
	P1 = SP;
	P2 = P2 + SP;
	P1 += 36;
	[SP+64] = R0;
	[SP+68] = R0;
	I2 = P2;
	R0 = [P3+-12];
	R3 = [P3+-4];
	[SP+76] = R0;
	I2 += 4;
	R0 = [P3+-8];
	R2 = P1;
	[SP+80] = R0;
	[SP+60] = R3;
	[SP+72] = R3;
	R2 += 24;
	B1 = I2;
	R0 = P1;
	FP = R3;
	P4 = 6 (X);
	jump.s .L64;
.L128:
	P2 = B1;
	FP = [P2++];
	B1 = P2;
.L64:
	P5 = R0;
	R6 = FP;
	P2 = [P5++];
	P2 = P0 + (P2 << 2);
	R1 = [P2+4];
	cc =R1==R6;
	R0 = P5;
	if cc jump .L158;
	FP = P0;
	P5 = 84 (X);
	FP += 4;
	P4 = SP + P5;
	P2 = 9 (X);
	LSETUP (.L65, .L163) LC1 = P2;
.L65:
	R0 = [FP++];
.L163:
	[P4++] = R0;
	jump.s .L67;
.L159:
	P2 = I2;
	R3 = [P2++];
	I2 = P2;
.L67:
	P2 = [P1++];
	P5 = 180 (X);
	P5 = P5 + SP;
	R0 = P1;
	P2 = P5 + (P2 << 2);
	cc =R0==R2;
	[P2+-96] = R3;
	if !cc jump .L159 (bp);
	P5 = 84 (X);
	P5 = P5 + SP;
	P2.H = 36191;
	R0 = P0;
	[SP+16] = P0;
	R1 = P5;
	P2.L = 1702;
	call (P2);
	P0 = [SP+16];
.L63:
	P1 = R4;
	P2 = R4;
	P4 = P3;
	P1 += -24;
	I2 = P1;
	FP = P1;
	P2 -= P1;
	LSETUP (.L69, .L162) LC1 = P2;
.L69:
	R1 = B [FP++] (X);
	R0 = B [P4++] (X);
	cc =R1==R0;
	if !cc jump .L81;
	cc =R0==0;
	if cc jump .L71;
.L162:
	nop;
.L81:
	P2 = R4;
	FP = P3;
	P2 -= P1;
	LSETUP (.L70, .L161) LC1 = P2;
.L70:
	R1 = B [FP++] (X);
.L161:
	B [P1++] = R1;
	P2.H = 36192;
	R1 = I2;
	R0 = P0;
	P2.L = 4592;
	call (P2);
.L71:
	P3 += 36;
	R0 = P3;
	cc =R0==R5;
	R4 += 24;
	if !cc jump .L72 (bp);
	P4.H = __ZN4opxy6screen12_GLOBAL__N_113display_frameE+4264;
	FP.H = 36192;
	P4.L = __ZN4opxy6screen12_GLOBAL__N_113display_frameE+4264;
	FP.L = 4592;
.L75:
	nop;
	R0 = B [P4] (X);
	cc =R0==0;
	if cc jump .L73 (bp);
	P0 = [SP+32];
	P2 = [P0];
	cc =P2==0;
	if cc jump .L73;
	R1.H = 33804;
	R1.L = 20824;
	R0 = [P2];
	cc =R0==R1;
	if !cc jump .L73;
	R1 = P4;
	R0 = P2;
	call (FP);
.L73:
	P0 = [SP+32];
	P4 += 8;
	P0 += 4;
	R3 = P0;
	cc =R3==R7;
	[SP+32] = P0;
	if !cc jump .L75 (bp);
	P2.H = 36177;
	R1 = 0 (X);
	R0 = [SP+216];
	P2.L = 65052;
	call (P2);
	jump.s .L6;
.L9:
	R0 = 0 (X);
	B [SP+124] = R0;
	R1 = [SP+120];
	jump.s .L21;
.L156:
	P1 += -1;
	cc =P1==0;
	if !cc jump .L129;
	jump.s .L42;
.L153:
	P2 = [FP+20];
	P5 = [SP+216];
	P2 = P5 + (P2 << 2);
	R1 = [P2+756];
	cc =R1==0;
	if cc jump .L40;
	cc =P0==0;
	if cc jump .L42;
	R2.H = 33804;
	R2.L = 19828;
	R3 = [P0];
	cc =R3==R2;
	if !cc jump .L43 (bp);
	cc =R0==2;
	R3 = R1 >> 16;
	if !cc jump .L44 (bp);
	R0 = W [P0+112] (Z);
	cc =R0==0;
	if cc jump .L44 (bp);
	R1 = R1.L (Z);
	cc =R1==R0;
	if cc jump .L44;
	P2.H = 36191;
	R0 = P0;
	[SP+20] = R3;
	[SP+16] = P0;
	P2.L = 43398;
	call (P2);
	P0 = [SP+16];
	R3 = [SP+20];
	R0 = W [P0+114] (Z);
	cc =R0==R3;
	if cc jump .L47;
.L48:
	P2.H = 36191;
	R0 = P0;
	[SP+16] = P0;
	R1 = R3;
	P2.L = 43366;
	call (P2);
	P0 = [SP+16];
.L47:
	P2.H = 36191;
	R0 = P0;
	P2.L = 43460;
	call (P2);
	P1 = R4;
	P0 = [P1+-4];
	jump.s .L40;
.L154:
	R2 = 1023 (X);
	R0 = R0 & R2;
	cc =R0==0;
	if cc jump .L53 (bp);
	R1 += -1;
	jump.s .L53;
.L155:
	R2 = 1023 (X);
	R3 = R3 & R2;
	cc =R3==0;
	if cc jump .L55 (bp);
	R0 += -1;
	jump.s .L55;
.L158:
	P4 += -1;
	cc =P4==0;
	if !cc jump .L128;
	jump.s .L63;
.L44:
	nop;
	R0 = W [P0+114] (Z);
	cc =R0==R3;
	if !cc jump .L48 (bp);
	jump.s .L43;
.L79:
	R3 = 0 (X);
	jump.s .L15;
.L78:
	P0 = 8 (X);
	jump.s .L14;
.L80:
	R1 = 0 (X);
	jump.s .L31;
.L35:
	cc =R3==1;
	if cc jump .L36 (bp);
	jump.s .L33;
.L151:
	R0 = B [P2+2072] (Z);
	R3 = 5 (X);
	cc =R0==R3;
	if !cc jump .L33 (bp);
	P1 = [FP+748];
	cc =P1==P2;
	if !cc jump .L33 (bp);
	P5 = R1;
	P1 = P4 + P5;
	P5 = 64 (X);
	LSETUP (.L38, .L160) LC1 = P5;
.L38:
	P1 += 8;
	R3 = [P1+-8];
	[P2] = R3;
	R3 = [P1+-4];
	[P2+4] = R3;
.L160:
	P2 += 32;
	R0 = [FP];
	[SP+20] = R1;
	[SP+16] = P0;
	call (P0);
	R0 = [P4+-516];
	[FP+764] = R0;
	P0 = [SP+16];
	R1 = [SP+20];
	jump.s .L33;
	.size	__ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE5frameEPNS5_6ObjectEl, .-__ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE5frameEPNS5_6ObjectEl
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC1:
	.string	"medievalwind_node_0"
	.align 4
.LC2:
	.string	"medievalwind_text_0"
	.align 4
.LC3:
	.string	"medievalwind_palette_0"
.text;
	.align 4
.type __ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE4initEPNS5_6ObjectE, STT_FUNC;
__ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE4initEPNS5_6ObjectE:
	[--sp] = ( r7:4, p5:3 );

	R7 = 76 (X);
	R7 = R0 + R7;
	P3 = R0;
	LINK 12;
	P1 = R7;
	R0 = 0 (X);
	P2 = 195 (X);
	LSETUP (.L171, .L216) LC1 = P2;
.L171:
.L216:
	[P1++] = R0;
	P2.H = __ZN4opxy6screen12_GLOBAL__N_118display_activationE;
	P2.L = __ZN4opxy6screen12_GLOBAL__N_118display_activationE;
	[P2] = R0;
	R1.H = __ZN4opxy6screen12_GLOBAL__N_113display_frameE;
	R0.H = __ZN4opxy6screen12_GLOBAL__N_113display_stateE;
	R0.L = __ZN4opxy6screen12_GLOBAL__N_113display_stateE;
	R1.L = __ZN4opxy6screen12_GLOBAL__N_113display_frameE;
	call _medievalwind_display_reset;
	R0 = [P3+8];
	cc =R0==0;
	if cc jump .L170;
	R0 = P3;
	P2.H = 36178;
	R1 = P3;
	R2 = 0 (X);
	R0 += 24;
	P2.L = 5892;
	call (P2);
	P5.H = __ZN12_GLOBAL__N_17Machine3idsE+4;
	R6.H = __ZN12_GLOBAL__N_17Machine3idsE+232;
	R1.H = .LC1;
	FP.H = 36178;
	P5.L = __ZN12_GLOBAL__N_17Machine3idsE+4;
	R6.L = __ZN12_GLOBAL__N_17Machine3idsE+232;
	P4 = R7;
	R1.L = .LC1;
	FP.L = 776;
	R5 = 0 (X);
	jump.s .L176;
.L210:
	R1.H = 33804;
	R0 = [P2];
	R1.L = 19828;
	cc =R0==R1;
	if !cc P2 = R5;
.L173:
	R2 = P5;
	cc =R2==R6;
	[P4++] = P2;
	if cc jump .L209;
	nop;
	nop;
	nop;
	R1 = [P5++];
.L176:
	R2 = 1 (X);
	R0 = P3;
	call (FP);
	P2 = R0;
	cc =P2==0;
	if !cc jump .L210 (bp);
	P2 = 0 (X);
	jump.s .L173;
.L181:
	R0 = 92 (X);
	P2 = R0;
	R3 = 3 (X);
	P3 = P3 + P2;
.L187:
	P1 = R7;
	P2 = [P1++];
	cc =P2==0;
	R7 = P1;
	if cc jump .L207;
	R1.H = 33804;
	R1.L = 19828;
	R0 = [P2];
	cc =R0==R1;
	if cc jump .L211;
.L207:
	R0 = 0 (X);
.L182:
	P1 = R7;
	[P1+744] = R0;
	R0 = P3;
	cc =R7==R0;
	if !cc jump .L187 (bp);
.L170:
	SP += 12;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L209:
	R4.H = __ZN12_GLOBAL__N_17Machine3idsE+236;
	P1 = 308 (X);
	P5 = 372 (X);
	R1.H = .LC2;
	P4.H = 36178;
	R4.L = __ZN12_GLOBAL__N_17Machine3idsE+236;
	FP = P3 + P1;
	P5 = P3 + P5;
	R1.L = .LC2;
	P4.L = 776;
	R5 = 0 (X);
	R6 = 1 (X);
	jump.s .L175;
.L213:
	R1.H = 33804;
	R0 = [P2];
	R1.L = 20824;
	cc =R0==R1;
	if !cc P2 = R5;
.L177:
	R2.H = __ZN12_GLOBAL__N_17Machine3idsE+296;
	R2.L = __ZN12_GLOBAL__N_17Machine3idsE+296;
	cc =R2==R4;
	[FP++] = P2;
	P5 += 24;
	B [P5+-24] = R6;
	if cc jump .L212;
	nop;
	nop;
	P1 = R4;
	R1 = [P1++];
	R4 = P1;
.L175:
	R2 = 1 (X);
	R0 = P3;
	call (P4);
	P2 = R0;
	cc =P2==0;
	if !cc jump .L213 (bp);
	P2 = 0 (X);
	jump.s .L177;
.L212:
	P5.H = __ZN12_GLOBAL__N_17Machine3idsE+300;
	P5.L = __ZN12_GLOBAL__N_17Machine3idsE+300;
	R5 = 756 (X);
	R6 = P3;
	FP = P5;
	R1.H = .LC3;
	P4.H = 36178;
	R5 = R6 + R5;
	FP += 60;
	R1.L = .LC3;
	P4.L = 776;
.L179:
	R2 = 1 (X);
	R0 = P3;
	call (P4);
	P2 = R0;
	cc =P2==0;
	if cc jump .L203;
	R1.H = 33804;
	R1.L = 19828;
	R0 = [P2];
	cc =R0==R1;
	if !cc jump .L203 (bp);
	R1 = W [P2+112] (X);
	R2 = W [P2+114] (X);
	cc =R1<=0;
	R0 = R2.L (Z);
	if cc jump .L203;
	cc =R0==0;
	if cc jump .L203;
	nop;
	nop;
	nop;
	P2 = [P3+8];
	R3 = [P2+100];
	cc =R3==0;
	if cc jump .L203;
	nop;
	nop;
	nop;
	R4 = [P2+104];
	cc =R3<=R4 (iu);
	if !cc jump .L203;
	nop;
	nop;
	nop;
	P1 = [P2+108];
	R6 = P1;
	cc =R4<=R6 (iu);
	if !cc jump .L203;
	R3 = R4 - R3;
	R4 = R1 << 2;
	cc =R3<R4 (iu);
	if cc jump .L203;
	nop;
	nop;
	nop;
	R3 = [P2+132];
	cc =R3==0;
	if cc jump .L203;
	nop;
	nop;
	nop;
	R4 = [P2+136];
	cc =R3<=R4 (iu);
	if !cc jump .L203;
	nop;
	nop;
	nop;
	P2 = [P2+140];
	R6 = P2;
	cc =R4<=R6 (iu);
	if !cc jump .L203;
	R6 = 20 (X);
	R3 = R4 - R3;
	R2 = R2.L * R6.L (FU);
	cc =R3<R2 (iu);
	if cc jump .L203;
	R0 <<= 16;
	R0 = R0 | R1;
	jump.s .L180;
.L203:
	R0 = 0 (X);
.L180:
	P1 = R5;
	cc =FP==P5;
	[P1++] = R0;
	R5 = P1;
	if cc jump .L181;
	nop;
	nop;
	nop;
	R1 = [P5++];
	jump.s .L179;
.L211:
	R1 = [P2+120];
	cc =R1==0;
	if cc jump .L207;
	R0 = R1 & R3;
	cc =R0==0;
	if !cc jump .L207;
	nop;
	nop;
	nop;
	R2 = [P2+124];
	cc =R1<=R2 (iu);
	if !cc jump .L182;
	nop;
	nop;
	nop;
	R6 = [P2+128];
	cc =R2<=R6 (iu);
	if !cc jump .L182;
	R2 = R2 - R1;
	R5 = 2080 (X);
	cc =R2==R5;
	if !cc jump .L182 (bp);
	R6 = R6 - R1;
	R2 = 4096 (X);
	cc =R6<=R2 (iu);
	if !cc jump .L182;
	P2 = R1;
	R2 = 1 (X);
	jump.s .L183;
.L215:
	cc =R6==2;
	if !cc jump .L182;
	R5 = 64 (X);
	cc =R2==R5;
	if cc jump .L214;
.L185:
	P2 += 32;
	R2 += 1;
.L183:
	cc =R2==1;
	R6 = B [P2+24] (Z);
	if !cc jump .L215 (bp);
	cc =R6==1;
	if cc jump .L185 (bp);
	jump.s .L182;
.L214:
	P1 = R1;
	R5 = 5 (X);
	R2 = B [P1+2072] (Z);
	cc =R2==R5;
	if cc R0 = R1;
	jump.s .L182;
	.size	__ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE4initEPNS5_6ObjectE, .-__ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE4initEPNS5_6ObjectE
	.align 4
.global medievalwind_screen_ctor;
.type medievalwind_screen_ctor, STT_FUNC;
medievalwind_screen_ctor:
	[--sp] = ( p5:5 );

	P5 = R0;
	R0 = R1;
	R0 += -1;
	R2 = 254 (X);
	[--SP] = RETS;
	cc =R0<=R2 (iu);
	SP += -12;
	if !cc jump .L219;
	R2.H = medievalwind_screen_asset;
	P2.H = 36178;
	R0 = P5;
	R2.L = medievalwind_screen_asset;
	P2.L = 2116;
	call (P2);
	R0.H = medievalwind_screen_vtable;
	R0.L = medievalwind_screen_vtable;
	[P5] = R0;
	R0 = P5;
.L217:
	SP += 12;
	RETS = [SP++];
	( p5:5 ) = [sp++];

	rts;
.L219:
	R0 = 0 (X);
	jump.s .L217;
	.size	medievalwind_screen_ctor, .-medievalwind_screen_ctor
.global medievalwind_screen_vtable;
	.section	.rodata
	.align 4
	.type	medievalwind_screen_vtable, @object
	.size	medievalwind_screen_vtable, 24
medievalwind_screen_vtable:
	.long	__ZN4opxy6screen12_GLOBAL__N_17destroyINS1_7DrawingIN12_GLOBAL__N_17MachineEE6ObjectEEEvPT_
	.long	__ZN4opxy6screen12_GLOBAL__N_17destroyINS1_7DrawingIN12_GLOBAL__N_17MachineEE6ObjectEEEvPT_
	.long	-1924006700
	.long	__ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE5frameEPNS5_6ObjectEl
	.long	__ZN4opxy6screen12_GLOBAL__N_17DrawingIN12_GLOBAL__N_17MachineEE4initEPNS5_6ObjectE
	.long	-1945606160
.global medievalwind_screen_asset;
	.align 4
	.type	medievalwind_screen_asset, @object
	.size	medievalwind_screen_asset, 17
medievalwind_screen_asset:
	.string	"medievalwind.svg"
.global medievalwind_screen_state;
	.section	.bss,"aw",@nobits
	.align 4
	.type	medievalwind_screen_state, @object
	.size	medievalwind_screen_state, 856
medievalwind_screen_state:
	.zero	856
	.section	.rodata.str1.4
	.align 4
.LC4:
	.string	"medievalwind_node_1"
	.align 4
.LC5:
	.string	"medievalwind_node_2"
	.align 4
.LC6:
	.string	"medievalwind_node_3"
	.align 4
.LC7:
	.string	"medievalwind_node_4"
	.align 4
.LC8:
	.string	"medievalwind_node_5"
	.align 4
.LC9:
	.string	"medievalwind_node_6"
	.align 4
.LC10:
	.string	"medievalwind_node_7"
	.align 4
.LC11:
	.string	"medievalwind_node_8"
	.align 4
.LC12:
	.string	"medievalwind_node_9"
	.align 4
.LC13:
	.string	"medievalwind_node_10"
	.align 4
.LC14:
	.string	"medievalwind_node_11"
	.align 4
.LC15:
	.string	"medievalwind_node_12"
	.align 4
.LC16:
	.string	"medievalwind_node_13"
	.align 4
.LC17:
	.string	"medievalwind_node_14"
	.align 4
.LC18:
	.string	"medievalwind_node_15"
	.align 4
.LC19:
	.string	"medievalwind_node_16"
	.align 4
.LC20:
	.string	"medievalwind_node_17"
	.align 4
.LC21:
	.string	"medievalwind_node_18"
	.align 4
.LC22:
	.string	"medievalwind_node_19"
	.align 4
.LC23:
	.string	"medievalwind_node_20"
	.align 4
.LC24:
	.string	"medievalwind_node_21"
	.align 4
.LC25:
	.string	"medievalwind_node_22"
	.align 4
.LC26:
	.string	"medievalwind_node_23"
	.align 4
.LC27:
	.string	"medievalwind_node_24"
	.align 4
.LC28:
	.string	"medievalwind_node_25"
	.align 4
.LC29:
	.string	"medievalwind_node_26"
	.align 4
.LC30:
	.string	"medievalwind_node_27"
	.align 4
.LC31:
	.string	"medievalwind_node_28"
	.align 4
.LC32:
	.string	"medievalwind_node_29"
	.align 4
.LC33:
	.string	"medievalwind_node_30"
	.align 4
.LC34:
	.string	"medievalwind_node_31"
	.align 4
.LC35:
	.string	"medievalwind_node_32"
	.align 4
.LC36:
	.string	"medievalwind_node_33"
	.align 4
.LC37:
	.string	"medievalwind_node_34"
	.align 4
.LC38:
	.string	"medievalwind_node_35"
	.align 4
.LC39:
	.string	"medievalwind_node_36"
	.align 4
.LC40:
	.string	"medievalwind_node_37"
	.align 4
.LC41:
	.string	"medievalwind_node_38"
	.align 4
.LC42:
	.string	"medievalwind_node_39"
	.align 4
.LC43:
	.string	"medievalwind_node_40"
	.align 4
.LC44:
	.string	"medievalwind_node_41"
	.align 4
.LC45:
	.string	"medievalwind_node_42"
	.align 4
.LC46:
	.string	"medievalwind_node_43"
	.align 4
.LC47:
	.string	"medievalwind_node_44"
	.align 4
.LC48:
	.string	"medievalwind_node_45"
	.align 4
.LC49:
	.string	"medievalwind_node_46"
	.align 4
.LC50:
	.string	"medievalwind_node_47"
	.align 4
.LC51:
	.string	"medievalwind_node_48"
	.align 4
.LC52:
	.string	"medievalwind_node_49"
	.align 4
.LC53:
	.string	"medievalwind_node_50"
	.align 4
.LC54:
	.string	"medievalwind_node_51"
	.align 4
.LC55:
	.string	"medievalwind_node_52"
	.align 4
.LC56:
	.string	"medievalwind_node_53"
	.align 4
.LC57:
	.string	"medievalwind_node_54"
	.align 4
.LC58:
	.string	"medievalwind_node_55"
	.align 4
.LC59:
	.string	"medievalwind_node_56"
	.align 4
.LC60:
	.string	"medievalwind_node_57"
	.align 4
.LC61:
	.string	"medievalwind_text_1"
	.align 4
.LC62:
	.string	"medievalwind_text_2"
	.align 4
.LC63:
	.string	"medievalwind_text_3"
	.align 4
.LC64:
	.string	"medievalwind_text_4"
	.align 4
.LC65:
	.string	"medievalwind_text_5"
	.align 4
.LC66:
	.string	"medievalwind_text_6"
	.align 4
.LC67:
	.string	"medievalwind_text_7"
	.align 4
.LC68:
	.string	"medievalwind_text_8"
	.align 4
.LC69:
	.string	"medievalwind_text_9"
	.align 4
.LC70:
	.string	"medievalwind_text_10"
	.align 4
.LC71:
	.string	"medievalwind_text_11"
	.align 4
.LC72:
	.string	"medievalwind_text_12"
	.align 4
.LC73:
	.string	"medievalwind_text_13"
	.align 4
.LC74:
	.string	"medievalwind_text_14"
	.align 4
.LC75:
	.string	"medievalwind_text_15"
	.align 4
.LC76:
	.string	"medievalwind_palette_1"
	.align 4
.LC77:
	.string	"medievalwind_palette_2"
	.align 4
.LC78:
	.string	"medievalwind_palette_3"
	.align 4
.LC79:
	.string	"medievalwind_palette_4"
	.align 4
.LC80:
	.string	"medievalwind_palette_5"
	.align 4
.LC81:
	.string	"medievalwind_palette_6"
	.align 4
.LC82:
	.string	"medievalwind_palette_7"
	.align 4
.LC83:
	.string	"medievalwind_palette_8"
	.align 4
.LC84:
	.string	"medievalwind_palette_9"
	.align 4
.LC85:
	.string	"medievalwind_palette_10"
	.align 4
.LC86:
	.string	"medievalwind_palette_11"
	.align 4
.LC87:
	.string	"medievalwind_palette_12"
	.align 4
.LC88:
	.string	"medievalwind_palette_13"
	.align 4
.LC89:
	.string	"medievalwind_palette_14"
	.align 4
.LC90:
	.string	"medievalwind_palette_15"
	.section	.rodata
	.align 4
	.type	__ZN12_GLOBAL__N_17Machine3idsE, @object
	.size	__ZN12_GLOBAL__N_17Machine3idsE, 360
__ZN12_GLOBAL__N_17Machine3idsE:
	.long	.LC1
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.long	.LC8
	.long	.LC9
	.long	.LC10
	.long	.LC11
	.long	.LC12
	.long	.LC13
	.long	.LC14
	.long	.LC15
	.long	.LC16
	.long	.LC17
	.long	.LC18
	.long	.LC19
	.long	.LC20
	.long	.LC21
	.long	.LC22
	.long	.LC23
	.long	.LC24
	.long	.LC25
	.long	.LC26
	.long	.LC27
	.long	.LC28
	.long	.LC29
	.long	.LC30
	.long	.LC31
	.long	.LC32
	.long	.LC33
	.long	.LC34
	.long	.LC35
	.long	.LC36
	.long	.LC37
	.long	.LC38
	.long	.LC39
	.long	.LC40
	.long	.LC41
	.long	.LC42
	.long	.LC43
	.long	.LC44
	.long	.LC45
	.long	.LC46
	.long	.LC47
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.long	.LC52
	.long	.LC53
	.long	.LC54
	.long	.LC55
	.long	.LC56
	.long	.LC57
	.long	.LC58
	.long	.LC59
	.long	.LC60
	.long	.LC2
	.long	.LC61
	.long	.LC62
	.long	.LC63
	.long	.LC64
	.long	.LC65
	.long	.LC66
	.long	.LC67
	.long	.LC68
	.long	.LC69
	.long	.LC70
	.long	.LC71
	.long	.LC72
	.long	.LC73
	.long	.LC74
	.long	.LC75
	.long	.LC3
	.long	.LC76
	.long	.LC77
	.long	.LC78
	.long	.LC79
	.long	.LC80
	.long	.LC81
	.long	.LC82
	.long	.LC83
	.long	.LC84
	.long	.LC85
	.long	.LC86
	.long	.LC87
	.long	.LC88
	.long	.LC89
	.long	.LC90
	.local	__ZN4opxy6screen12_GLOBAL__N_113display_frameE
	.comm	__ZN4opxy6screen12_GLOBAL__N_113display_frameE,4296,4
	.local	__ZN4opxy6screen12_GLOBAL__N_113display_inputE
	.comm	__ZN4opxy6screen12_GLOBAL__N_113display_inputE,76,4
	.local	__ZN4opxy6screen12_GLOBAL__N_118display_activationE
	.comm	__ZN4opxy6screen12_GLOBAL__N_118display_activationE,4,4
	.local	__ZN4opxy6screen12_GLOBAL__N_113display_stateE
	.comm	__ZN4opxy6screen12_GLOBAL__N_113display_stateE,64,4
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
