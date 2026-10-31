.file "sdk/platform/opxy-1.2.1/note_activity.cpp";
.text;
	.align 4
.global sdk_note_off;
.type sdk_note_off, STT_FUNC;
sdk_note_off:
	[--sp] = ( p5:5 );

	P5 = R0;
	[--SP] = RETS;
	SP += -12;
	cc =P5<=7 (iu);
	if !cc jump .L2 (bp);
	R0 = 127 (X);
	cc =R1<=R0 (iu);
	if !cc jump .L2 (bp);
	P2.H = 34493;
	P2.L = 41560;
	R2 = P2;
	R0 = R1 + R2;
	R2 = P5;
	R2 <<= 7;
	P1 = R0;
	P2 = R2;
	P2 = P2 + P1;
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L2 (bp);
	P2.H = 36187;
	R0 = P5;
	P2.L = 32044;
	call (P2);
	P2.H = __ZN12_GLOBAL__N_18releasesE;
	P2.L = __ZN12_GLOBAL__N_18releasesE;
	P5 = P2 + (P5 << 2);
	R1 = [P5];
	R1 += 1;
	[P5] = R1;
	SP += 12;
	RETS = [SP++];
	( p5:5 ) = [sp++];

	rts;
.L2:
	SP += 12;
	RETS = [SP++];
	P2.H = 36187;
	R0 = P5;
	P2.L = 32044;
	( p5:5 ) = [sp++];

	jump (P2);
	.size	sdk_note_off, .-sdk_note_off
	.align 4
.global sdk_display_note_activity;
.type sdk_display_note_activity, STT_FUNC;
sdk_display_note_activity:
	P0 = R1;
	cc =R0<=7 (iu);
	R1 = 0 (X);
	[P0+68] = R1;
	if cc jump .L18 (bp);
	[P0+72] = R1;
	rts;
.L18:
	P1 = R0;
	P2.H = __ZN12_GLOBAL__N_18releasesE;
	P2.L = __ZN12_GLOBAL__N_18releasesE;
	R0 <<= 7;
	P2 = P2 + (P1 << 2);
	P1 = R0;
	R1 = [P2];
	P2.H = 34493;
	P2.L = 41560;
	[P0+72] = R1;
	P2 = P1 + P2;
	P1 = 128 (X);
	LSETUP (.L12, .L19) LC1 = P1;
.L12:
	R0 = B [P2] (X);
	R0 = R0.B (Z);
	cc =R0==0;
	if cc jump .L11 (bp);
	R0 = [P0+68];
	R0 += 1;
	[P0+68] = R0;
.L11:
.L19:
	P2 += 1;
	rts;
	.size	sdk_display_note_activity, .-sdk_display_note_activity
	.local	__ZN12_GLOBAL__N_18releasesE
	.comm	__ZN12_GLOBAL__N_18releasesE,32,4
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
