.file "sdk/platform/opxy-1.2.1/synth_controls.cpp";
.text;
	.align 4
.type __ZN12_GLOBAL__N_17machineEmRPNS_5TrackE, STT_FUNC;
__ZN12_GLOBAL__N_17machineEmRPNS_5TrackE:
	[--sp] = ( r7:5, p5:5 );

	[--SP] = RETS;
	cc =R0<=7 (iu);
	SP += -12;
	R6 = R0;
	P5 = R1;
	if !cc jump .L8;
	P2.H = 36184;
	P2.L = 30748;
	call (P2);
	P2.H = sdk_synth_control_count;
	P2.L = sdk_synth_control_count;
	P1 = [P2];
	R7 = R0;
	cc =P1==0;
	if cc jump .L3;
	R2.H = sdk_synth_controls;
	R2.L = sdk_synth_controls;
	P2 = R2;
	R0 = 0 (X);
	LSETUP (.L6, .L18) LC1 = P1;
.L6:
	R5 = P2;
	R1 = [P2];
	cc =R1==R7;
	if cc jump .L17;
.L4:
	R0 += 1;
.L18:
	P2 += 36;
.L3:
	R5 = 0 (X);
	R7 = 0 (X);
.L5:
	R6 <<= 3;
	P1 = R6;
	P2.H = __ZN12_GLOBAL__N_16tracksE;
	P2.L = __ZN12_GLOBAL__N_16tracksE;
	P2 = P1 + P2;
	R0 = [P2];
	cc =R7==R0;
	if cc jump .L7;
	R0 = 0 (X);
	B [P2+4] = R0;
	R0 = 1 (X);
	B [P2+5] = R0;
	R0 = 2 (X);
	B [P2+6] = R0;
	R0 = 3 (X);
	[P2] = R7;
	B [P2+7] = R0;
.L7:
	[P5] = P2;
.L1:
	SP += 12;
	RETS = [SP++];
	R0 = R5;
	( r7:5, p5:5 ) = [sp++];

	rts;
.L17:
	R1 = B [P2+32] (Z);
	cc =R1==0;
	if !cc jump .L4 (bp);
	R1 = R0 << 3;
	R0 = (R0 + R1) << 2;
	R2 = R2 + R0;
	P2 = R2;
	P2 = [P2+4];
	call (P2);
	cc =R0==1;
	if !cc jump .L3 (bp);
	jump.s .L5;
.L8:
	R5 = 0 (X);
	jump.s .L1;
	.size	__ZN12_GLOBAL__N_17machineEmRPNS_5TrackE, .-__ZN12_GLOBAL__N_17machineEmRPNS_5TrackE
	.align 4
.type __ZN12_GLOBAL__N_111send_effectEmRPNS_5TrackE, STT_FUNC;
__ZN12_GLOBAL__N_111send_effectEmRPNS_5TrackE:
	[--sp] = ( r7:5, p5:5 );

	R5 = R0;
	R5 += -14;
	[--SP] = RETS;
	cc =R5<=1 (iu);
	SP += -12;
	P5 = R1;
	if !cc jump .L26;
	P2.H = 36184;
	P2.L = 30748;
	call (P2);
	P2.H = sdk_synth_control_count;
	P2.L = sdk_synth_control_count;
	P1 = [P2];
	R7 = R0;
	cc =P1==0;
	if cc jump .L21;
	R1.H = sdk_synth_controls;
	R1.L = sdk_synth_controls;
	P2 = R1;
	R0 = 0 (X);
	LSETUP (.L25, .L36) LC1 = P1;
.L25:
	R6 = P2;
	R2 = [P2];
	cc =R2==R7;
	if cc jump .L35;
.L22:
	R0 += 1;
.L36:
	P2 += 36;
.L21:
	R1.H = __ZN12_GLOBAL__N_15sendsE;
	R2 = R5 << 3;
	R1.L = __ZN12_GLOBAL__N_15sendsE;
	R0 = R1 + R2;
	P2 = R0;
	[P5] = R0;
	R0 = [P2];
.L34:
	R6 = 0 (X);
	R7 = 0 (X);
.L24:
	cc =R7==R0;
	if cc jump .L19;
	R1 = R1 + R2;
	P2 = R1;
	R0 = 0 (X);
	P1 = R5;
	cc =R6==0;
	[P2] = R7;
	P2 = [P5];
	B [P2+4] = R0;
	P2 = [P5];
	R0 = 1 (X);
	B [P2+5] = R0;
	P2 = [P5];
	R0 = 2 (X);
	B [P2+6] = R0;
	P2 = [P5];
	R0 = 3 (X);
	B [P2+7] = R0;
	P2.H = __ZN12_GLOBAL__N_18unstoredE;
	P2.L = __ZN12_GLOBAL__N_18unstoredE;
	R0 = CC;
	P2 = P2 + P1;
	BITTGL (R0, 0);
	B [P2] = R0;
.L19:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:5, p5:5 ) = [sp++];

	rts;
.L35:
	R2 = B [P2+32] (Z);
	cc =R2==0;
	if cc jump .L22 (bp);
	R2 = R0 << 3;
	R0 = (R0 + R2) << 2;
	R1 = R1 + R0;
	P2 = R1;
	P2 = [P2+4];
	call (P2);
	R1.H = __ZN12_GLOBAL__N_15sendsE;
	R2 = R5 << 3;
	R1.L = __ZN12_GLOBAL__N_15sendsE;
	R3 = R1 + R2;
	P2 = R3;
	[P5] = R3;
	cc =R0==1;
	R0 = [P2];
	if !cc jump .L34 (bp);
	jump.s .L24;
.L26:
	R6 = 0 (X);
	jump.s .L19;
	.size	__ZN12_GLOBAL__N_111send_effectEmRPNS_5TrackE, .-__ZN12_GLOBAL__N_111send_effectEmRPNS_5TrackE
	.align 4
.global sdk_synth_shown;
.type sdk_synth_shown, STT_FUNC;
sdk_synth_shown:
	[--sp] = ( r7:7, p5:4 );

	[--SP] = RETS;
	SP += -16;
	R7 = R0;
	P4 = R1;
	P5 = 0 (X);
.L40:
	R1 = SP;
	R1 += 12;
	R0 = R7;
	call __ZN12_GLOBAL__N_17machineEmRPNS_5TrackE;
	cc =R0==0;
	if cc jump .L42;
	nop;
	P2 = [SP+12];
	P2 = P2 + P5;
	R0 = B [P2+4] (X);
.L39:
	P5 += 1;
	P2 = 4 (X);
	cc =P5==P2;
	B [P4++] = R0;
	if !cc jump .L40 (bp);
	SP += 16;
	RETS = [SP++];
	( r7:7, p5:4 ) = [sp++];

	rts;
.L42:
	R0 = P5;
	jump.s .L39;
	.size	sdk_synth_shown, .-sdk_synth_shown
	.align 4
.global sdk_synth_title_slot;
.type sdk_synth_title_slot, STT_FUNC;
sdk_synth_title_slot:
	P2.H = 33802;
	P2.L = 1332;
	R2 = B [P2] (X);
	R2 = R2.B (Z);
	cc =R2<=7 (iu);
	if !cc jump .L44;
	cc =R1<=3 (iu);
	if !cc jump .L44;
	cc =R0==0;
	if cc jump .L44;
	R2 <<= 3;
	P1 = R2;
	P2.H = __ZN12_GLOBAL__N_16tracksE;
	P2.L = __ZN12_GLOBAL__N_16tracksE;
	P2 = P2 + P1;
	R2 = [P2];
	cc =R2==R0;
	if cc jump .L48 (bp);
.L44:
	R0 = R1;
	rts;
.L48:
	P1 = R1;
	P2 = P2 + P1;
	R1 = B [P2+4] (Z);
	R0 = R1;
	rts;
	.size	sdk_synth_title_slot, .-sdk_synth_title_slot
	.align 4
.global sdk_synth_title;
.type sdk_synth_title, STT_FUNC;
sdk_synth_title:
	P2.H = 33802;
	P2.L = 1332;
	R2 = B [P2] (X);
	R2 = R2.B (Z);
	cc =R2<=7 (iu);
	if !cc jump .L50 (bp);
	cc =R1<=3 (iu);
	if cc jump .L54 (bp);
.L50:
	P2.H = 36176;
	P2.L = 27724;
	jump (P2);
.L54:
	cc =R0==0;
	if cc jump .L50 (bp);
	R2 <<= 3;
	P1 = R2;
	P2.H = __ZN12_GLOBAL__N_16tracksE;
	P2.L = __ZN12_GLOBAL__N_16tracksE;
	P2 = P2 + P1;
	R2 = [P2];
	cc =R0==R2;
	if !cc jump .L50 (bp);
	P1 = R1;
	P2 = P2 + P1;
	R1 = B [P2+4] (Z);
	jump.s .L50;
	.size	sdk_synth_title, .-sdk_synth_title
	.align 4
.global sdk_synth_press;
.type sdk_synth_press, STT_FUNC;
sdk_synth_press:
	[--sp] = ( p5:3 );

	P5 = R0;
	P2.H = 36177;
	LINK 16;
	P2.L = 61948;
	call (P2);
	cc =P5<=3 (iu);
	if !cc jump .L55;
	P2.H = 35849;
	P2.L = 17584;
	call (P2);
	P2 = R0;
	R1.H = 33792;
	R1.L = 57336;
	R0 = [P2];
	cc =R0==R1;
	if cc jump .L75;
	R1.H = 2051;
	R1.L = 64364;
	cc =R0==R1;
	if !cc jump .L55;
	P2.H = 36173;
	P2.L = 28436;
	call (P2);
	R1 = SP;
	R1 += 12;
	call __ZN12_GLOBAL__N_111send_effectEmRPNS_5TrackE;
	cc =R0==0;
	if cc jump .L55;
	nop;
	P2 = [SP+12];
	P5 = P2 + P5;
	R1 = B [P5+4] (Z);
	R1 = R0 + R1;
	P2 = R1;
	R0 = B [P2+8] (X);
	R1 = R0.B (Z);
	cc =R1<=7 (iu);
	if !cc jump .L55 (bp);
	B [P5+4] = R0;
.L55:
	SP += 16;
	FP = [SP++];
	RETS = [SP++];
	( p5:3 ) = [sp++];

	rts;
.L75:
	P2.H = 2050;
	P2.L = 14524;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L55 (bp);
	P2.H = 33802;
	P2.L = 1332;
	R0 = B [P2] (X);
	R1 = SP;
	R0 = R0.B (Z);
	R1 += 12;
	call __ZN12_GLOBAL__N_17machineEmRPNS_5TrackE;
	P4 = R0;
	cc =P4==0;
	if cc jump .L55;
	FP = [SP+12];
	P2 = 0 (X);
	P1 = 4 (X);
	LSETUP (.L65, .L76) LC1 = P1;
.L65:
	cc =P5==P2;
	if cc jump .L63;
	nop;
	nop;
	nop;
	R0 = B [P4+33] (Z);
	cc =R0==0;
	if cc jump .L64;
	nop;
	nop;
.L63:
	P3 = FP + P2;
	R0 = B [P3+4] (Z);
	P0 = R0;
	P0 = P4 + P0;
	R0 = B [P0+8] (X);
	R1 = R0.B (Z);
	cc =R1<=7 (iu);
	if !cc jump .L64 (bp);
	B [P3+4] = R0;
.L64:
.L76:
	P2 += 1;
	jump.s .L55;
	.size	sdk_synth_press, .-sdk_synth_press
	.align 4
.global sdk_param_steps;
.type sdk_param_steps, STT_FUNC;
sdk_param_steps:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	cc =R1<=7 (iu);
	SP += -20;
	R7 = R0;
	if cc jump .L107;
.L78:
	SP += 20;
	P2.H = 35851;
	R0 = R7;
	RETS = [SP++];
	P2.L = 9320;
	( r7:5 ) = [sp++];

	jump (P2);
.L107:
	cc =R0<=7 (iu);
	if !cc jump .L79;
	P2.H = 36184;
	P2.L = 30748;
	[SP+16] = R1;
	[SP+12] = R2;
	call (P2);
	P2.H = sdk_synth_control_count;
	P2.L = sdk_synth_control_count;
	P1 = [P2];
	R1 = [SP+16];
	R2 = [SP+12];
	cc =P1==0;
	if cc jump .L78;
	I0.H = sdk_synth_controls;
	I0.L = sdk_synth_controls;
	P2 = I0;
	R3 = 0 (X);
	LSETUP (.L82, .L111) LC1 = P1;
.L82:
	R6 = P2;
	P0 = [P2];
	R5 = P0;
	cc =R5==R0;
	if cc jump .L108;
.L80:
	R3 += 1;
.L111:
	P2 += 36;
	jump.s .L78;
.L108:
	R5 = B [P2+32] (Z);
	cc =R5==0;
	if !cc jump .L80 (bp);
.L106:
	R0 = R3 << 3;
	R3 = (R3 + R0) << 2;
	P1 = R3;
	P0 = I0;
	P2 = P0 + P1;
	P2 = [P2+4];
	[SP+16] = R1;
	[SP+12] = R2;
	call (P2);
	cc =R0==1;
	R1 = [SP+16];
	R2 = [SP+12];
	if !cc jump .L78;
	nop;
	R6 = R6 + R1;
	P2 = R6;
	R0 = B [P2+20] (Z);
	cc =R0==0;
	if cc jump .L78 (bp);
	P0 = R2;
	R0 = 1 (X);
	SP += 20;
	[P0] = R0;
	RETS = [SP++];
	R0 = B [P2+20] (Z);
	( r7:5 ) = [sp++];

	rts;
.L79:
	R0 += -14;
	cc =R0<=1 (iu);
	if !cc jump .L78;
	P2.H = 36184;
	P2.L = 30748;
	[SP+16] = R1;
	[SP+12] = R2;
	R0 = R7;
	call (P2);
	P2.H = sdk_synth_control_count;
	P2.L = sdk_synth_control_count;
	P1 = [P2];
	R1 = [SP+16];
	R2 = [SP+12];
	cc =P1==0;
	if cc jump .L78;
	I0.H = sdk_synth_controls;
	I0.L = sdk_synth_controls;
	P2 = I0;
	R3 = 0 (X);
	LSETUP (.L84, .L110) LC1 = P1;
.L84:
	R6 = P2;
	R5 = [P2];
	cc =R5==R0;
	if cc jump .L109;
.L83:
	R3 += 1;
.L110:
	P2 += 36;
	jump.s .L78;
.L109:
	R5 = B [P2+32] (Z);
	cc =R5==0;
	if cc jump .L83 (bp);
	jump.s .L106;
	.size	sdk_param_steps, .-sdk_param_steps
.global ___divsi3;
	.align 4
.global sdk_synth_turn;
.type sdk_synth_turn, STT_FUNC;
sdk_synth_turn:
	[--sp] = ( r7:4, p5:4 );

	P4 = R2;
	[--SP] = RETS;
	SP += -32;
	R5 = R0;
	R6 = R1;
	P4 += -4;
	cc =P4<=3 (iu);
	R7 = R2;
	P5 = [SP+72];
	if !cc jump .L113 (bp);
	P2.H = 2050;
	P2.L = 14524;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L116;
	P2.H = 36177;
	P2.L = 61828;
	call (P2);
	cc =R0==0;
	if cc jump .L116 (bp);
	R4 = 1 (X);
.L115:
	R1 = SP;
	R1 += 16;
	R0 = R6;
	call __ZN12_GLOBAL__N_17machineEmRPNS_5TrackE;
	P1 = R0;
	cc =P1==0;
	if cc jump .L116;
	P2 = [SP+16];
	cc =P5==0;
	P4 = P2 + P4;
	R7 = B [P4+4] (Z);
	if cc jump .L116 (bp);
	R0 = 1 (X);
	R0 <<= R7;
	R1 = [P1+16];
	R0 = R0 & R1;
	cc =R0==0;
	if cc jump .L116 (bp);
	cc = !BITTST (R4,0);
	if cc jump .L116;
	R1 = 10 (X);
	R0 = [P5];
	call ___divsi3;
	[SP+20] = R0;
	R0 = [P5+4];
	[SP+24] = R0;
	R0 = [P5+8];
	[SP+28] = R0;
	R0 = SP;
	R0 += 20;
	[SP+12] = R0;
	jump.s .L131;
.L113:
	cc =R2<=3 (iu);
	if cc jump .L132;
.L116:
	[SP+12] = P5;
.L131:
	P2.H = 36186;
	R2 = R7;
	R1 = R6;
	R0 = R5;
	P2.L = 54716;
	call (P2);
	SP += 32;
	RETS = [SP++];
	( r7:4, p5:4 ) = [sp++];

	rts;
.L132:
	P4 = R2;
	R4 = 0 (X);
	jump.s .L115;
	.size	sdk_synth_turn, .-sdk_synth_turn
	.align 4
.global sdk_effect_turn;
.type sdk_effect_turn, STT_FUNC;
sdk_effect_turn:
	[--sp] = ( r7:5, p5:5 );

	[--SP] = RETS;
	SP += -32;
	cc =R2<=3 (iu);
	R5 = R0;
	R6 = R1;
	R7 = R2;
	P5 = [SP+64];
	if cc jump .L149;
.L135:
	[SP+12] = P5;
.L148:
	P2.H = 36186;
	R2 = R7;
	R1 = R6;
	R0 = R5;
	P2.L = 54716;
	call (P2);
	SP += 32;
	RETS = [SP++];
	( r7:5, p5:5 ) = [sp++];

	rts;
.L149:
	R1 = SP;
	R1 += 16;
	R0 = R6;
	call __ZN12_GLOBAL__N_111send_effectEmRPNS_5TrackE;
	P1 = R0;
	cc =P1==0;
	if cc jump .L135;
	R2 = [SP+16];
	R2 = R2 + R7;
	P2 = R2;
	cc =P5==0;
	R7 = B [P2+4] (Z);
	if cc jump .L135 (bp);
	R1 = 1 (X);
	R1 <<= R7;
	R0 = [P1+16];
	R0 = R1 & R0;
	cc =R0==0;
	if cc jump .L135;
	P2.H = 36177;
	P2.L = 61828;
	call (P2);
	cc =R0==0;
	if cc jump .L135;
	R1 = 10 (X);
	R0 = [P5];
	call ___divsi3;
	[SP+20] = R0;
	R0 = [P5+4];
	[SP+24] = R0;
	R0 = [P5+8];
	[SP+28] = R0;
	R0 = SP;
	R0 += 20;
	[SP+12] = R0;
	jump.s .L148;
	.size	sdk_effect_turn, .-sdk_effect_turn
.global ___modsi3;
	.align 4
.global sdk_fx_value_text;
.type sdk_fx_value_text, STT_FUNC;
sdk_fx_value_text:
	[--sp] = ( r7:4, p5:3 );

	[--SP] = RETS;
	P2.H = 36173;
	R6 = R2;
	SP += -16;
	P2.L = 28436;
	R5 = R0;
	R7 = R1;
	call (P2);
	cc =R6<=3 (iu);
	P5 = R0;
	if cc jump .L161;
.L154:
	P2.H = 36192;
	R1 = R7;
	R0 = R5;
	P2.L = 4592;
	call (P2);
	SP += 16;
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L161:
	R1 = SP;
	R1 += 12;
	call __ZN12_GLOBAL__N_111send_effectEmRPNS_5TrackE;
	P4 = R0;
	cc =P4==0;
	if cc jump .L154;
	P1 = R6;
	P2 = [SP+12];
	P2 = P2 + P1;
	R4 = B [P2+4] (X);
	R0 = R4.B (Z);
	cc =R6==R0;
	P3 = R0;
	if cc jump .L152;
	P2.H = 36184;
	P2.L = 30472;
	R0 = P5;
	call (P2);
	P1 = 14436 (X);
	P2 = P1 + (P3 << 2);
	P1 = R0;
	R2.H = __ZZ17sdk_fx_value_textE7caption;
	R2.L = __ZZ17sdk_fx_value_textE7caption;
	R0 = P3;
	P2 = P2 + P1;
	R7 = [P2];
	P2 = [P4+28];
	R1 = R7;
	call (P2);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L153;
.L155:
	R7.H = __ZZ17sdk_fx_value_textE7caption;
	R7.L = __ZZ17sdk_fx_value_textE7caption;
	jump.s .L154;
.L153:
	cc =R7<0;
	if cc jump .L157;
	R7 >>= 8;
	P2 = R7;
	R1 = 10 (X);
	P2 = P2 + (P2 << 2);
	P2 = P2 + (P2 << 2);
	R7 = P2;
	R7 >>= 21;
	R0 = R7;
	call ___divsi3;
	R6 = R0;
	R1 = 10 (X);
	R0 = R7;
	call ___modsi3;
	R6 += 48;
	R0 += 48;
.L156:
	P2.H = __ZZ17sdk_fx_value_textE7caption;
	P2.L = __ZZ17sdk_fx_value_textE7caption;
	B [P2+1] = R0;
	R0 = 0 (X);
	B [P2] = R6;
	B [P2+2] = R0;
	R7 = P2;
	jump.s .L154;
.L157:
	R0 = 48 (X);
	R6 = 48 (X);
	jump.s .L156;
.L152:
	P2 = [P4+28];
	R2.H = __ZZ17sdk_fx_value_textE7caption;
	R2.L = __ZZ17sdk_fx_value_textE7caption;
	R1 = [SP+60];
	call (P2);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L154 (bp);
	jump.s .L155;
	.size	sdk_fx_value_text, .-sdk_fx_value_text
	.align 4
.global sdk_fx_title;
.type sdk_fx_title, STT_FUNC;
sdk_fx_title:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	cc =R1<=3 (iu);
	SP += -16;
	R6 = R0;
	R7 = R1;
	if !cc jump .L164;
	P2.H = 36173;
	P2.L = 28436;
	call (P2);
	R1 = SP;
	R1 += 12;
	call __ZN12_GLOBAL__N_111send_effectEmRPNS_5TrackE;
	P2 = R0;
	cc =P2==0;
	if cc jump .L164;
	R0 = [P2];
	cc =R0==R6;
	if cc jump .L169;
.L164:
	P2.H = 36176;
	R1 = R7;
	R0 = R6;
	P2.L = 27792;
	call (P2);
	SP += 16;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L169:
	R0 = [SP+12];
	R0 = R0 + R7;
	P2 = R0;
	R7 = B [P2+4] (Z);
	jump.s .L164;
	.size	sdk_fx_title, .-sdk_fx_title
	.align 4
.global sdk_synth_value;
.type sdk_synth_value, STT_FUNC;
sdk_synth_value:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -16;
	R7 = R1;
	R1 = SP;
	R1 += 12;
	R6 = R2;
	call __ZN12_GLOBAL__N_17machineEmRPNS_5TrackE;
	P2 = R0;
	cc =P2==0;
	if cc jump .L172;
	R2 = [SP+40];
	R1 = R6;
	R0 = R7;
	P2 = [P2+28];
	call (P2);
.L170:
	SP += 16;
	RETS = [SP++];
	( r7:6 ) = [sp++];

	rts;
.L172:
	R0 = 0 (X);
	jump.s .L170;
	.size	sdk_synth_value, .-sdk_synth_value
	.align 4
.global sdk_send_refresh;
.type sdk_send_refresh, STT_FUNC;
sdk_send_refresh:
	[--sp] = ( r7:4, p5:3 );

	P4.H = __ZN12_GLOBAL__N_18unstoredE;
	R5.H = 34493;
	R6.H = 36186;
	LINK 20;
	P4.L = __ZN12_GLOBAL__N_18unstoredE;
	R7 = 14 (X);
	R5.L = 17164;
	R6.L = 53032;
.L177:
	R1 = SP;
	R1 += 16;
	R0 = R7;
	call __ZN12_GLOBAL__N_111send_effectEmRPNS_5TrackE;
	cc =R0==0;
	if cc jump .L174;
	nop;
	nop;
	nop;
	R0 = B [P4] (Z);
	cc =R0==0;
	if cc jump .L174;
	R0 = 0 (X);
	B [P4] = R0;
	R0 = R7 << 3;
	R0 = R0 - R7;
	P5 = R0;
	P1 = R7;
	FP.H = 36184;
	R4 = 4 (X);
	FP.L = 30472;
	P3 = 14436 (X);
	P5 = P1 + (P5 << 2);
	R0 = P5;
	R0 <<= 3;
	R0 = R0 + R5;
	P5 = R0;
.L175:
	R0 = R7;
	call (FP);
	P1 = R0;
	P2 = P1 + P3;
	P1 = R4;
	P2 = P2 + (P1 << 2);
	R0 = [P2];
	R1 = [P5];
	cc =R1==R0;
	if cc jump .L178;
	P2 = R6;
	[SP+12] = R0;
	R0.H = 34493;
	R2 = R4;
	R1 = R7;
	R0.L = 636;
	call (P2);
.L178:
	R4 += 1;
	R0 = 8 (X);
	cc =R4==R0;
	P5 += 4;
	if !cc jump .L175 (bp);
.L174:
	R0 = 15 (X);
	cc =R7==R0;
	P4 += 1;
	if cc jump .L173;
	R7 = 15 (X);
	jump.s .L177;
.L173:
	SP += 20;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
	.size	sdk_send_refresh, .-sdk_send_refresh
	.align 4
.global __ZN4opxy8platform14control_tenthsEPcmPKc;
.type __ZN4opxy8platform14control_tenthsEPcmPKc, STT_FUNC;
__ZN4opxy8platform14control_tenthsEPcmPKc:
	[--sp] = ( r7:4, p5:3 );

	LINK 24;
	FP = R0;
	R0.H = 52428;
	R0.L = 52429;
	A1 = R1.L * R0.L (FU);
	A1 = A1 >> 16;
	A0 = R1.H * R0.H, A1 += R1.H * R0.L (FU);
	A1 += R0.H * R1.L (FU);
	A1 = A1 >> 16;
	A0 += A1;
	R0 = A0 (FU);
	P3 = SP;
	R6 = R1;
	P4 = R2;
	R5 = R0 >> 3;
	P3 += 12;
	R4 = 0 (X);
	jump.s .L189;
.L194:
	R5 = R0;
	R4 = P5;
.L189:
	R1 = 10 (X);
	R0 = R5;
	call ___modsi3;
	P5 = R4;
	R7 = R0;
	R1 = 10 (X);
	R7 += 48;
	R0 = ROT R5 BY 0 ||
	B [P3++] = R7 ||
	nop;
	call ___divsi3;
	R1 = 9 (X);
	cc =R5<=R1 (iu);
	P5 += 1;
	if !cc jump .L194 (bp);
	P1 = R4;
	P2 = 12 (X);
	P2 = P2 + SP;
	P5 = FP + P5;
	P1 += -1;
	P1 = P2 + P1;
	P2 = P5;
	P2 -= FP;
.L191:
	B [FP++] = R7;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L198;
	R0 = 46 (X);
	B [P5] = R0;
	R0.H = 52428;
	R0.L = 52429;
	A1 = R6.L * R0.L (FU);
	A1 = A1 >> 16;
	A0 = R6.H * R0.H, A1 += R6.H * R0.L (FU);
	A1 += R0.H * R6.L (FU);
	A1 = A1 >> 16;
	A0 += A1;
	R0 = A0 (FU);
	R0 >>= 3;
	P1 = R0;
	P2 = P5;
	P2 += 2;
	P1 = P1 + (P1 << 2);
	P1 = P1 + P1;
	R0 = P1;
	R6 = R6 - R0;
	R6 += 48;
	B [P5+1] = R6;
	R0 = B [P4] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if cc jump .L192;
	nop;
	P4 += 1;
.L193:
	B [P2++] = R0;
	R0 = B [P4++] (X);
	R1 = R0.B (X);
	cc =R1==0;
	if !cc jump .L193 (bp);
.L192:
	R0 = 0 (X);
	B [P2] = R0;
	SP += 24;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L198:
	R7 = B [P1--] (X);
	jump.s .L191;
	.size	__ZN4opxy8platform14control_tenthsEPcmPKc, .-__ZN4opxy8platform14control_tenthsEPcmPKc
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"1/32"
.text;
	.align 4
.global __ZN4opxy8platform16control_divisionEPcl;
.type __ZN4opxy8platform16control_divisionEPcl, STT_FUNC;
__ZN4opxy8platform16control_divisionEPcl:
	cc =R1<0;
	P2 = R0;
	if cc jump .L202;
	R1 >>= 28;
	P0 = R1;
	P1.H = __ZZN4opxy8platform16control_divisionEPclE5names;
	P1.L = __ZZN4opxy8platform16control_divisionEPclE5names;
	P1 = P1 + (P0 << 2);
	P1 = [P1];
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L201;
	nop;
.L205:
	P1 += 1;
	P2 += 1;
.L204:
	nop;
	R1 = B [P1++] (X);
	B [P2++] = R1;
	R1 = R1.B (X);
	cc =R1==0;
	if !cc jump .L204 (bp);
.L201:
	rts;
.L202:
	R0 = 49 (X);
	P1.H = .LC0;
	B [P2] = R0;
	P1.L = .LC0;
	jump.s .L205;
	.size	__ZN4opxy8platform16control_divisionEPcl, .-__ZN4opxy8platform16control_divisionEPcl
	.align 4
.global __ZN4opxy8platform14control_choiceElm;
.type __ZN4opxy8platform14control_choiceElm, STT_FUNC;
__ZN4opxy8platform14control_choiceElm:
	cc =R0<0;
	if cc jump .L212;
	R0 >>= 16;
	R0 *= R1;
	R0 >>= 15;
	rts;
.L212:
	R0 = 0 (X);
	rts;
	.size	__ZN4opxy8platform14control_choiceElm, .-__ZN4opxy8platform14control_choiceElm
	.align 4
.global __ZN4opxy8platform13control_labelEPclPKPKcm;
.type __ZN4opxy8platform13control_labelEPclPKPKcm, STT_FUNC;
__ZN4opxy8platform13control_labelEPclPKPKcm:
	cc =R1<0;
	P2 = R0;
	P1 = R2;
	if cc jump .L214;
	R1 >>= 16;
	R0 = [SP+12];
	R1 *= R0;
	R1 >>= 15;
	P0 = R1;
	P1 = P1 + (P0 << 2);
.L214:
	P1 = [P1];
	R0 = B [P1] (X);
	B [P2] = R0;
	R0 = R0.B (X);
	cc =R0==0;
	if cc jump .L213;
	nop;
	P1 += 1;
	P2 += 1;
.L216:
	nop;
	R1 = B [P1++] (X);
	B [P2++] = R1;
	R1 = R1.B (X);
	cc =R1==0;
	if !cc jump .L216 (bp);
.L213:
	rts;
	.size	__ZN4opxy8platform13control_labelEPclPKPKcm, .-__ZN4opxy8platform13control_labelEPclPKPKcm
	.align 4
.global __ZN4opxy8platform13control_ratioElPKmm;
.type __ZN4opxy8platform13control_ratioElPKmm, STT_FUNC;
__ZN4opxy8platform13control_ratioElPKmm:
	cc =R0<0;
	[--sp] = ( r7:7 );

	P2 = R1;
	if cc jump .L221;
	R2 += -1;
	R0 >>= 16;
	R0 *= R2;
	R3 = R0 >> 15;
	R3 <<= 2;
	P0 = R3;
	R2 = 32767 (X);
	R3 += 4;
	R2 = R0 & R2;
	P1 = P2 + P0;
.L220:
	R7 = [P1];
	P1 = R3;
	R1 = 16384 (X);
	P2 = P2 + P1;
	R0 = [P2];
	R0 = R0 - R7;
	R0 *= R2;
	R0 = R0 + R1;
	R0 >>= 15;
	R0 = R0 + R7;
	( r7:7 ) = [sp++];

	rts;
.L221:
	P1 = R1;
	R2 = 0 (X);
	R3 = 4 (X);
	jump.s .L220;
	.size	__ZN4opxy8platform13control_ratioElPKmm, .-__ZN4opxy8platform13control_ratioElPKmm
	.section	.rodata.str1.4
	.align 4
.LC1:
	.string	"1/32 dotted"
	.align 4
.LC2:
	.string	"1/16"
	.align 4
.LC3:
	.string	"1/16 dotted"
	.align 4
.LC4:
	.string	"1/8"
	.align 4
.LC5:
	.string	"1/8 dotted"
	.align 4
.LC6:
	.string	"1/4"
	.align 4
.LC7:
	.string	"1/2"
	.section	.rodata
	.align 4
	.type	__ZZN4opxy8platform16control_divisionEPclE5names, @object
	.size	__ZZN4opxy8platform16control_divisionEPclE5names, 32
__ZZN4opxy8platform16control_divisionEPclE5names:
	.long	.LC0
	.long	.LC1
	.long	.LC2
	.long	.LC3
	.long	.LC4
	.long	.LC5
	.long	.LC6
	.long	.LC7
	.local	__ZZ17sdk_fx_value_textE7caption
	.comm	__ZZ17sdk_fx_value_textE7caption,16,1
	.local	__ZN12_GLOBAL__N_18unstoredE
	.comm	__ZN12_GLOBAL__N_18unstoredE,2,1
	.local	__ZN12_GLOBAL__N_15sendsE
	.comm	__ZN12_GLOBAL__N_15sendsE,16,4
	.local	__ZN12_GLOBAL__N_16tracksE
	.comm	__ZN12_GLOBAL__N_16tracksE,64,4
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
