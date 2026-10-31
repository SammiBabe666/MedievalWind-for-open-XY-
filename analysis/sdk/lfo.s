.file "sdk/platform/opxy-1.2.1/lfo.cpp";
.text;
	.align 4
.type __ZN12_GLOBAL__N_17machineEm, STT_FUNC;
__ZN12_GLOBAL__N_17machineEm:
	P2.H = sdk_lfo_machine_count;
	P2.L = sdk_lfo_machine_count;
	P2 = [P2];
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	cc =P2==0;
	if cc jump .L2;
	nop;
	P0.H = sdk_lfo_machines;
	P0.L = sdk_lfo_machines;
	R1 = [P0];
	cc =R1==R0;
	if cc jump .L20;
	P1 = P0;
	R1 = 0 (X);
.L5:
	R1 += 1;
	P2 += -1;
	cc =P2==0;
	if !cc jump .L14;
.L2:
	SP += 12;
	R7 = 0 (X);
	RETS = [SP++];
	R0 = R7;
	( r7:7 ) = [sp++];

	rts;
.L14:
	P1 += 20;
	R2 = [P1];
	cc =R2==R0;
	if !cc jump .L5 (bp);
	R0 = R1 << 2;
	P2 = R0;
	P1 = R1;
	P2 = (P2 + P1) << 2;
	P2 = P2 + P0;
	R7 = P2;
.L3:
	R1 = (R1 + R0) << 2;
	P2 = R1;
	P0 = P0 + P2;
	R0 = [P0+8];
	R0 += -5;
	cc =R0<=3 (iu);
	if !cc jump .L2;
	nop;
	nop;
	nop;
	P2 = [P0+4];
	call (P2);
	cc =R0==1;
	if !cc jump .L2;
	SP += 12;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L20:
	R7 = P0;
	R1 = 0 (X);
	R0 = 0 (X);
	jump.s .L3;
	.size	__ZN12_GLOBAL__N_17machineEm, .-__ZN12_GLOBAL__N_17machineEm
	.align 4
.type __ZN12_GLOBAL__N_110extra_iconEmm.part.0, STT_FUNC;
__ZN12_GLOBAL__N_110extra_iconEmm.part.0:
	[--SP] = RETS;
	SP += -12;
	call __ZN4opxy8platform3lfo14selected_trackEv;
	cc =R0<=7 (iu);
	if cc jump .L22;
.L24:
	SP += 12;
	R0 = 0 (X);
	RETS = [SP++];
	rts;
.L22:
	call __ZN4opxy8platform3lfo10gui_engineEm;
	call __ZN12_GLOBAL__N_17machineEm;
	P2 = R0;
	cc =P2==0;
	if cc jump .L24;
	SP += 12;
	R0 = [P2+8];
	cc =R0==0;
	R0 = CC;
	RETS = [SP++];
	BITTGL (R0, 0);
	rts;
	.size	__ZN12_GLOBAL__N_110extra_iconEmm.part.0, .-__ZN12_GLOBAL__N_110extra_iconEmm.part.0
	.align 4
.type __ZN12_GLOBAL__N_112target_countEmm.part.1, STT_FUNC;
__ZN12_GLOBAL__N_112target_countEmm.part.1:
	[--sp] = ( r7:5 );

	[--SP] = RETS;
	SP += -12;
	R5 = R0;
	R6 = R1;
	call __ZN4opxy8platform3lfo4typeEm;
	R7 = R0;
	BITCLR (R0,1);
	cc =R0==1;
	if cc jump .L29;
	cc =R7==2;
	if !cc jump .L30;
	R0 = 31 (X);
	cc =R6==R0;
	if !cc jump .L30 (bp);
.L34:
	R0 = R5;
	call __ZN4opxy8platform3lfo10gui_engineEm;
	call __ZN12_GLOBAL__N_17machineEm;
	P2 = R0;
	cc =P2==0;
	if cc jump .L30;
	R6 = [P2+8];
	cc =R6==0;
	if !cc jump .L44;
.L30:
	R6 = 0 (X);
.L28:
	SP += 12;
	RETS = [SP++];
	R0 = R6;
	( r7:5 ) = [sp++];

	rts;
.L29:
	R0 = 27 (X);
	cc =R6==R0;
	if !cc jump .L30 (bp);
	jump.s .L34;
.L44:
	R0 = R5;
	call __ZN4opxy8platform3lfo11group_valueEm;
	cc =R7==3;
	if cc jump .L45;
	R0 >>= 8;
	P2 = R0;
	P2 = P2 + (P2 << 1);
	R0 = P2;
	R0 >>= 23;
.L32:
	cc =R0==0;
	if cc jump .L28 (bp);
	jump.s .L30;
.L45:
	R0 >>= 29;
	jump.s .L32;
	.size	__ZN12_GLOBAL__N_112target_countEmm.part.1, .-__ZN12_GLOBAL__N_112target_countEmm.part.1
	.align 4
.type sdk_lfo_icon_slot.part.2, STT_FUNC;
sdk_lfo_icon_slot.part.2:
	[--sp] = ( p5:5 );

	[--SP] = RETS;
	SP += -12;
	P5 = R0;
	call __ZN4opxy8platform3lfo14selected_trackEv;
	cc =R0<=7 (iu);
	if cc jump .L47;
.L49:
	SP += 12;
	R0 = P5;
	RETS = [SP++];
	( p5:5 ) = [sp++];

	rts;
.L47:
	call __ZN4opxy8platform3lfo10gui_engineEm;
	call __ZN12_GLOBAL__N_17machineEm;
	P2 = R0;
	cc =P2==0;
	if cc jump .L49;
	R1 = P5;
	R0 = [P2+8];
	cc =R0<=R1 (iu);
	if !cc jump .L50 (bp);
	P5 = R0;
	P5 += -1;
.L50:
	SP += 12;
	P5 = P2 + P5;
	RETS = [SP++];
	R0 = B [P5+12] (Z);
	( p5:5 ) = [sp++];

	rts;
	.size	sdk_lfo_icon_slot.part.2, .-sdk_lfo_icon_slot.part.2
	.align 4
.global sdk_lfo_range;
.type sdk_lfo_range, STT_FUNC;
sdk_lfo_range:
	[--SP] = RETS;
	cc =R0<=7 (iu);
	SP += -12;
	if !cc jump .L57 (bp);
	cc =R1==0;
	if cc jump .L61;
.L57:
	SP += 12;
	R0 = 0 (X);
	RETS = [SP++];
	rts;
.L61:
	call __ZN4opxy8platform3lfo10gui_engineEm;
	call __ZN12_GLOBAL__N_17machineEm;
	P2 = R0;
	cc =P2==0;
	if cc jump .L57;
	SP += 12;
	R0 = [P2+8];
	cc =R0==0;
	R0 = CC;
	RETS = [SP++];
	BITTGL (R0, 0);
	rts;
	.size	sdk_lfo_range, .-sdk_lfo_range
.global ___divsi3;
	.align 4
.global sdk_lfo_icon_slide;
.type sdk_lfo_icon_slide, STT_FUNC;
sdk_lfo_icon_slide:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -16;
	R7 = ROT R0 BY 0 ||
	R0 = [SP+56] ||
	nop;
	cc =R0==0;
	R6 = ROT R1 BY 0 ||
	R5 = [SP+52] ||
	nop;
	R4 = [SP+60];
	if !cc jump .L64 (bp);
	R0 = R4;
	R0 += -4;
	cc =R0<=3 (iu);
	if cc jump .L69 (bp);
.L64:
	[SP+52] = R5;
	SP += 16;
	RETS = [SP++];
	R1 = R6;
	R0 = R7;
	( r7:4, p5:5 ) = [sp++];

	jump.l __ZN4opxy8platform3lfo7animateEmmlm;
.L69:
	[SP+12] = R2;
	call __ZN12_GLOBAL__N_110extra_iconEmm.part.0;
	R0 = R0.B (Z);
	cc =R0==0;
	R2 = [SP+12];
	if cc jump .L64 (bp);
	R0 = R2;
	R1 = R4;
	call ___divsi3;
	P5 = R0;
	R0 = R4;
	call sdk_lfo_icon_slot.part.2;
	R2 = P5;
	R2 *= R0;
	jump.s .L64;
	.size	sdk_lfo_icon_slide, .-sdk_lfo_icon_slide
	.align 4
.global sdk_lfo_icon_slot;
.type sdk_lfo_icon_slot, STT_FUNC;
sdk_lfo_icon_slot:
	cc =R1==0;
	if cc jump .L71;
	R1 = R0;
	R1 += -4;
	cc =R1<=3 (iu);
	if !cc jump .L71;
	jump.l sdk_lfo_icon_slot.part.2;
.L71:
	rts;
	.size	sdk_lfo_icon_slot, .-sdk_lfo_icon_slot
	.align 4
.global sdk_lfo_label;
.type sdk_lfo_label, STT_FUNC;
sdk_lfo_label:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	cc =R0==0;
	SP += -20;
	R7 = R0;
	if !cc jump .L77 (bp);
	cc =R1<=7 (iu);
	if cc jump .L85;
.L77:
	SP += 20;
	R0 = R7;
	RETS = [SP++];
	( r7:7 ) = [sp++];

	jump.l __ZN4opxy8platform3lfo4nameEmmm;
.L85:
	[SP+16] = R1;
	[SP+12] = R2;
	call __ZN4opxy8platform3lfo14selected_trackEv;
	cc =R0<=7 (iu);
	R1 = [SP+16];
	R2 = [SP+12];
	if !cc jump .L77 (bp);
	call __ZN4opxy8platform3lfo10gui_engineEm;
	call __ZN12_GLOBAL__N_17machineEm;
	P2 = R0;
	R1 = [SP+16];
	R2 = [SP+12];
	cc =P2==0;
	if cc jump .L77;
	R0 = [P2+8];
	cc =R0==0;
	if cc jump .L77 (bp);
	cc =R1<R0 (iu);
	if cc jump .L77 (bp);
	R1 = R0;
	R1 += -1;
	jump.s .L77;
	.size	sdk_lfo_label, .-sdk_lfo_label
	.align 4
.global sdk_lfo_cycle;
.type sdk_lfo_cycle, STT_FUNC;
sdk_lfo_cycle:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -12;
	cc =R1<=7 (iu);
	R4 = ROT R0 BY 0 ||
	R5 = [SP+48] ||
	nop;
	R7 = R1;
	R6 = R2;
	if !cc jump .L88 (bp);
	R0 = R2;
	BITCLR (R0,2);
	R1 = 27 (X);
	cc =R0==R1;
	if cc jump .L97;
.L88:
	[SP+48] = R5;
	SP += 12;
	R2 = R6;
	RETS = [SP++];
	R1 = R7;
	R0 = R4;
	( r7:4, p5:5 ) = [sp++];

	jump.l __ZN4opxy8platform3lfo7publishEmmml;
.L97:
	R1 = R2;
	R0 = R7;
	call __ZN12_GLOBAL__N_112target_countEmm.part.1;
	P5 = R0;
	cc =P5==0;
	if cc jump .L88 (bp);
	R2 = R6;
	R1 = R7;
	R0 = R4;
	call __ZN4opxy8platform3lfo5valueEmmm;
	cc =R0<0;
	if cc jump .L92;
	R0 >>= 28;
	R0 += 1;
.L90:
	R1 = P5;
	cc =R1<=R0 (iu);
	if cc jump .L93 (bp);
	R5 = 1 (X);
	R0 <<= 28;
	R5 <<= 27;
	R5 = R0 + R5;
	jump.s .L88;
.L93:
	R5 = 1 (X);
	R5 <<= 27;
	jump.s .L88;
.L92:
	R0 = 1 (X);
	jump.s .L90;
	.size	sdk_lfo_cycle, .-sdk_lfo_cycle
	.align 4
.global sdk_lfo_element_label;
.type sdk_lfo_element_label, STT_FUNC;
sdk_lfo_element_label:
	[--sp] = ( r7:6 );

	[--SP] = RETS;
	SP += -20;
	cc =R0==0;
	R7 = ROT R0 BY 0 ||
	R6 = [SP+44] ||
	nop;
	if !cc jump .L100 (bp);
	R0 = R1;
	R0 += -4;
	cc =R0<=3 (iu);
	if cc jump .L105 (bp);
.L100:
	SP += 20;
	RETS = [SP++];
	R0 = R7;
	( r7:6 ) = [sp++];

	jump.l sdk_lfo_label;
.L105:
	[SP+16] = R1;
	[SP+12] = R2;
	call __ZN12_GLOBAL__N_110extra_iconEmm.part.0;
	R0 = R0.B (Z);
	cc =R0==0;
	R1 = [SP+16];
	R2 = [SP+12];
	if cc jump .L100 (bp);
	R0 = R6;
	call __ZN4opxy8platform3lfo4showEm;
	R2 = [SP+12];
	R1 = [SP+16];
	jump.s .L100;
	.size	sdk_lfo_element_label, .-sdk_lfo_element_label
	.align 4
.global sdk_lfo_step;
.type sdk_lfo_step, STT_FUNC;
sdk_lfo_step:
	[--sp] = ( r7:6, p5:5 );

	[--SP] = RETS;
	SP += -16;
	P5 = [SP+44];
	R7 = R0;
	R6 = R1;
	cc =P5==0;
	if cc jump .L107;
	cc =R0<=7 (iu);
	if cc jump .L122 (bp);
.L107:
	[SP+44] = P5;
	SP += 16;
	RETS = [SP++];
	R1 = R6;
	R0 = R7;
	( r7:6, p5:5 ) = [sp++];

	jump.l __ZN4opxy8platform3lfo4stepEmmlPKl;
.L122:
	R0 = R1;
	BITCLR (R0,2);
	R1 = 27 (X);
	cc =R0==R1;
	if !cc jump .L107 (bp);
	R1 = ROT R6 BY 0 ||
	[SP+12] = R2 ||
	nop;
	R0 = R7;
	call __ZN12_GLOBAL__N_112target_countEmm.part.1;
	cc =R0==0;
	R2 = [SP+12];
	if cc jump .L107 (bp);
	cc =R2<0;
	if cc jump .L114;
	R2 >>= 28;
.L108:
	cc =R0<=R2;
	if !cc jump .L109 (bp);
	R2 = R0;
	R2 += -1;
.L109:
	R1 = -8 (X);
	R3 = [P5+4];
	R1 = max(R1,R3);
	R3 = 8 (X);
	R1 = min(R1,R3) ||
	R3 = [P5+8] ||
	nop;
	cc =R3<=0;
	if cc jump .L110;
	R1 <<= 1;
.L110:
	R2 = R2 + R1;
	R1 = 0 (X);
	R2 = max(R2,R1);
	cc =R0<=R2;
	if !cc jump .L112 (bp);
	R2 = R0;
	R2 += -1;
.L112:
	SP += 16;
	R0 = 1 (X);
	RETS = [SP++];
	R2 <<= 28;
	R0 <<= 27;
	R0 = R2 + R0;
	( r7:6, p5:5 ) = [sp++];

	rts;
.L114:
	R2 = 0 (X);
	jump.s .L108;
	.size	sdk_lfo_step, .-sdk_lfo_step
	.align 4
.global sdk_lfo_modulate;
.type sdk_lfo_modulate, STT_FUNC;
sdk_lfo_modulate:
	[--sp] = ( r7:4, p5:5 );

	[--SP] = RETS;
	SP += -12;
	cc =R1<=7 (iu);
	R5 = ROT R0 BY 0 ||
	R4 = [SP+48] ||
	nop;
	R7 = ROT R1 BY 0 ||
	P5 = [SP+52] ||
	nop;
	R6 = R2;
	if cc jump .L134;
.L125:
	[SP+48] = R4;
	SP += 12;
	R2 = R6;
	RETS = [SP++];
	R1 = R7;
	R0 = R5;
	( r7:4, p5:5 ) = [sp++];

	jump.l __ZN4opxy8platform3lfo8modulateEmmml;
.L134:
	R0 = R1;
	call __ZN4opxy8platform3lfo12audio_engineEm;
	call __ZN12_GLOBAL__N_17machineEm;
	P2 = R0;
	cc =P2==0;
	if cc jump .L125;
	R0 = [P2+8];
	cc =R0==0;
	if cc jump .L125 (bp);
	R6 = P5;
	R6 >>= 20;
	cc =R6<R0 (iu);
	if cc jump .L127 (bp);
	R6 = R0;
	R6 += -1;
.L127:
	R0 = R6;
	call __ZN4opxy8platform3lfo15modulation_slotEm;
	jump.s .L125;
	.size	sdk_lfo_modulate, .-sdk_lfo_modulate
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
