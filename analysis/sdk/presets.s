.file "sdk/platform/opxy-1.2.1/presets.cpp";
.text;
	.align 4
.global sdk_preset_type;
.type sdk_preset_type, STT_FUNC;
sdk_preset_type:
	[--sp] = ( r7:7, p5:5 );

	[--SP] = RETS;
	P2.H = 36174;
	R7 = R2;
	SP += -12;
	P2.L = 60118;
	P5 = R0;
	call (P2);
	cc = !BITTST (R7,0);
	if cc jump .L1;
	nop;
	nop;
	nop;
	R0 = [P5+20];
	cc =R0==0;
	if !cc jump .L11;
.L1:
	SP += 12;
	RETS = [SP++];
	( r7:7, p5:5 ) = [sp++];

	rts;
.L11:
	R0 = P5;
	call sdk_engine_installed;
	cc =R0==0;
	if !cc jump .L1;
	nop;
	nop;
	R1 = 15 (X);
	R0 = [P5+24];
	cc =R0<=R1 (iu);
	if !cc jump .L12 (bp);
	P2 = P5;
	P2 += 4;
.L6:
	R0 = 0 (X);
	B [P2] = R0;
	SP += 12;
	RETS = [SP++];
	R0 = 0 (X);
	[P5+20] = R0;
	( r7:7, p5:5 ) = [sp++];

	rts;
.L12:
	nop;
	P2 = [P5+4];
	jump.s .L6;
	.size	sdk_preset_type, .-sdk_preset_type
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
