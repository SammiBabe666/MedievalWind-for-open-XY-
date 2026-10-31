.file "screen_order.cpp";
.text;
	.align 4
.global sdk_screen_next;
.type sdk_screen_next, STT_FUNC;
sdk_screen_next:
	[--sp] = ( r7:7, p5:4 );

	P5 = R0;
	[--SP] = RETS;
	SP += -12;
	P4 = R1;
	R7 = [P5];
	cc =R7==0;
	if cc jump .L20;
	P1 = R7;
.L2:
	P2.H = __ZN12_GLOBAL__N_15orderE;
	P2.L = __ZN12_GLOBAL__N_15orderE;
	P0 = [P2];
	R2 = P1;
	R2 += 1;
	cc =P0==0;
	if !cc jump .L12 (bp);
	R0 = 255 (X);
	cc =R2<=R0 (iu);
.L16:
	R1 = 1 (X);
	R1 <<= 30;
	P4 = R1;
	R0 = CC;
	P2 = P1 + P4;
.L6:
	P2 -= P1;
	P1 = [P5+4];
	cc =R7==0;
	[P5] = R2;
	P2 = P1 + (P2 << 2);
	[P5+4] = P2;
	if cc jump .L21;
.L1:
	SP += 12;
	RETS = [SP++];
	( r7:7, p5:4 ) = [sp++];

	rts;
.L12:
	cc =P1==P0;
	if cc jump .L14;
	R0 = P0;
	cc =R2==R0;
	if cc jump .L7;
	R1 = 255 (X);
	cc =R2<=R1 (iu);
	jump.s .L16;
.L20:
	call sdk_send_refresh;
	P1 = [P5];
	cc =P1==0;
	if !cc jump .L2;
	R0 = P4;
	R0 += -2;
	R1 = 253 (X);
	cc =R0<=R1 (iu);
	if !cc jump .L3;
	R0 = P4;
	call sdk_screen_owned;
	cc =R0==1;
	P2.H = __ZN12_GLOBAL__N_15orderE;
	P2.L = __ZN12_GLOBAL__N_15orderE;
	if cc jump .L4;
.L17:
	R0 = 0 (X);
	[P2] = R0;
	P2.H = 16384;
	P2.L = 0;
	P4 = 1 (X);
.L5:
	P1 = [P5+4];
	[P5] = P4;
	R0 = 1 (X);
	P2 = P1 + (P2 << 2);
	[P5+4] = P2;
.L8:
	P2.H = __ZN12_GLOBAL__N_110activationE;
	P2.L = __ZN12_GLOBAL__N_110activationE;
	R1 = [P2];
	cc =R1==R7;
	if cc jump .L1 (bp);
	R1 = R1 -|- R1 ||
	[P2] = R7 ||
	nop;
	[P2+12] = R1;
	R1 = [P2+8];
	R1 += 1;
	cc =R1==0;
	if !cc jump .L18 (bp);
	R1 = 1 (X);
.L18:
	[P2+8] = R1;
	SP += 12;
	RETS = [SP++];
	( r7:7, p5:4 ) = [sp++];

	rts;
.L4:
	[P2] = P4;
	P2.H = 16383;
	P2.L = 65535;
	P2 = P4 + P2;
	R7 = P4;
	jump.s .L5;
.L14:
	P2.H = 16384;
	P1 = P0;
	P2.L = 0;
	R0 = 1 (X);
	R2 = 1 (X);
	jump.s .L6;
.L3:
	P2.H = __ZN12_GLOBAL__N_15orderE;
	P2.L = __ZN12_GLOBAL__N_15orderE;
	jump.s .L17;
.L7:
	R1 = 1 (X);
	R1 <<= 30;
	P4 = R1;
	R2 = P0;
	R0 = 255 (X);
	R2 += 1;
	cc =R2<=R0 (iu);
	R0 = CC;
	P2 = P0 + P4;
	jump.s .L6;
.L21:
	R7 = P0;
	jump.s .L8;
	.size	sdk_screen_next, .-sdk_screen_next
	.align 4
.global sdk_screen_activation;
.type sdk_screen_activation, STT_FUNC;
sdk_screen_activation:
	P2.H = __ZN12_GLOBAL__N_110activationE;
	P2.L = __ZN12_GLOBAL__N_110activationE;
	R2 = [P2];
	cc =R2==0;
	if cc jump .L28 (bp);
	cc =R0==R2;
	if cc jump .L32;
.L28:
	R0 = 0 (X);
.L22:
	rts;
.L32:
	R2 = [P2+12];
	cc =R2==0;
	R0 = [P2+8];
	if cc jump .L24 (bp);
	R2 = [P2+4];
	cc =R1==R2;
	if cc jump .L22;
.L24:
	R0 += 1;
	[P2+4] = R1;
	cc =R0==0;
	R1 = 1 (X);
	[P2+12] = R1;
	if !cc jump .L33 (bp);
	[P2+8] = R1;
	R0 = 1 (X);
	rts;
.L33:
	[P2+8] = R0;
	rts;
	.size	sdk_screen_activation, .-sdk_screen_activation
	.local	__ZN12_GLOBAL__N_110activationE
	.comm	__ZN12_GLOBAL__N_110activationE,16,4
	.local	__ZN12_GLOBAL__N_15orderE
	.comm	__ZN12_GLOBAL__N_15orderE,4,4
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
