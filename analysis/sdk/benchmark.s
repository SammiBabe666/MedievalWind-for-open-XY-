.file "benchmark.cpp";
.text;
	.align 4
.global __ZN4opxy9benchmark8allocateEm;
.type __ZN4opxy9benchmark8allocateEm, STT_FUNC;
__ZN4opxy9benchmark8allocateEm:
	R1 = -1 (X);
	[--sp] = ( r7:7, p5:5 );

	R1.H = 63;
	R7 = R0;
	R0 += -1;
	[--SP] = RETS;
	cc =R0<=R1 (iu);
	SP += -16;
	if !cc jump .L3;
	P5.H = 2051;
	P5.L = 27300;
	P2.H = 35843;
	R0 = [P5];
	R1 = -1 (X);
	P2.L = 59124;
	call (P2);
	P2.H = 2051;
	P2.L = 27304;
	R0 = [P2];
	P2.H = 35844;
	R1 = R7;
	P2.L = 34696;
	call (P2);
	R1 = 0 (X);
	P2.H = 35843;
	R7 = ROT R0 BY 0 ||
	R0 = [P5] ||
	nop;
	R2 = R2 -|- R2 ||
	[SP+12] = R1 ||
	nop;
	P2.L = 59848;
	call (P2);
.L1:
	SP += 16;
	RETS = [SP++];
	R0 = R7;
	( r7:7, p5:5 ) = [sp++];

	rts;
.L3:
	R7 = 0 (X);
	jump.s .L1;
	.size	__ZN4opxy9benchmark8allocateEm, .-__ZN4opxy9benchmark8allocateEm
	.align 4
.global __ZN4opxy9benchmark7releaseEPv;
.type __ZN4opxy9benchmark7releaseEPv, STT_FUNC;
__ZN4opxy9benchmark7releaseEPv:
	P2.H = 36173;
	P2.L = 10512;
	jump (P2);
	.size	__ZN4opxy9benchmark7releaseEPv, .-__ZN4opxy9benchmark7releaseEPv
.global ___udivsi3;
	.align 4
.global sdk_benchmark_run;
.type sdk_benchmark_run, STT_FUNC;
sdk_benchmark_run:
	[--sp] = ( r7:4, p5:3 );

	LINK 108;
	call medievalwind_ready;
	cc =R0==1;
	if cc jump .L47;
	R7 = 9 (X);
.L7:
	R6.H = 33801;
	P5.H = 36183;
	R5.H = 33990;
	R6.L = 62388;
	R4 = 0 (X);
	P5.L = 51272;
	R5.L = 38652;
.L12:
	R2 = ROT R4 BY 0 ||
	[SP+12] = R7 ||
	nop;
	R1 = R6;
	R0 = R5;
	call (P5);
	R4 += 1;
	R0 = 9 (X);
	cc =R4==R0;
	R6 += 16;
	if !cc jump .L12 (bp);
	P5.H = __ZN12_GLOBAL__N_1L8machinesE;
	P2.H = medievalwind_ready;
	R5 = 1 (X);
	P3.H = __ZZ17sdk_benchmark_runE8controls;
	P4.H = sdk_benchmark_parameters;
	P5.L = __ZN12_GLOBAL__N_1L8machinesE;
	R6 = 0 (X);
	P2.L = medievalwind_ready;
	R5 <<= 30;
	P3.L = __ZZ17sdk_benchmark_runE8controls;
	P4.L = sdk_benchmark_parameters;
.L27:
	call (P2);
	cc =R0==1;
	if !cc jump .L26;
	nop;
	R3 = R4;
	R3 += 1;
	P2 = [P5+12];
	cc =P2==0;
	if !cc jump .L48;
	R0 = 19 (X);
	[SP+36] = R0;
	P2.H = 36183;
	P1 = [P5+4];
	R0 = [P5];
	[SP+32] = R0;
	P2.L = 51272;
	R1 = SP;
	R0.H = 33990;
	[SP+28] = P1;
	[SP+20] = R3;
	[SP+16] = P1;
	[SP+40] = R5;
	[SP+12] = R7;
	R2 = R4;
	R1 += 28;
	R0.L = 38652;
	[SP+24] = P2;
	call (P2);
	cc =R6==0;
	R3 = [SP+20];
	P1 = [SP+16];
	if cc jump .L16;
	R4 = R3;
.L26:
	P5 += 20;
	R6 += 1;
	P2 = [P5+8];
	cc =P2==0;
	if !cc jump .L27 (bp);
	SP += 60;
	SP += 48;
	FP = [SP++];
	RETS = [SP++];
	( r7:4, p5:3 ) = [sp++];

	rts;
.L47:
	P2.H = __ZN12_GLOBAL__N_1L8settingsE;
	R0 = 0 (X);
	P2.L = __ZN12_GLOBAL__N_1L8settingsE;
	R7 = 10 (X);
	R1 = 0 (X);
	jump.s .L8;
.L45:
	R1 = R0;
	R0 = [P2+12];
.L8:
	cc =R1==0;
	if !cc jump .L9 (bp);
	R7 += 1;
.L9:
	cc =R0==-1;
	P2 += 12;
	if !cc jump .L45 (bp);
	R7 += 1;
	jump.s .L7;
.L16:
	FP.H = sdk_benchmark_engine;
	FP.L = sdk_benchmark_engine;
	R0 = R0 -|- R0 ||
	[FP] = P1 ||
	nop;
	P1.H = __ZN12_GLOBAL__N_1L8settingsE;
	[SP+44] = R0;
	[SP+48] = R0;
	[SP+52] = R0;
	[SP+56] = R0;
	[SP+60] = R0;
	[SP+64] = R0;
	[SP+68] = R0;
	[SP+72] = R0;
	[SP+76] = R0;
	[SP+80] = R0;
	[SP+84] = R0;
	[SP+88] = R0;
	[SP+92] = R0;
	[SP+96] = R0;
	[SP+100] = R0;
	[SP+104] = R0;
	R4 = 0 (X);
	P1.L = __ZN12_GLOBAL__N_1L8settingsE;
	jump.s .L22;
.L17:
	P1 += 12;
	R4 = [P1];
	cc =R4==-1;
	if cc jump .L49;
.L22:
	cc =R4==0;
	if !cc jump .L17 (bp);
	FP.H = __ZN12_GLOBAL__N_1L8defaultsE+4;
	P0.H = __ZZ17sdk_benchmark_runE8controls;
	FP.L = __ZN12_GLOBAL__N_1L8defaultsE+4;
	P0.L = __ZZ17sdk_benchmark_runE8controls;
	P2 = 8 (X);
	LSETUP (.L18, .L51) LC1 = P2;
.L18:
	R2 = [FP++];
.L51:
	[P0++] = R2;
	P2 = [P1+4];
	FP = R3;
	R0 = [P1+8];
	R1 = SP;
	P2 = P3 + (P2 << 2);
	[P2] = R0;
	P0.H = 36183;
	R0.H = 33990;
	R1 += 28;
	R0.L = 38652;
	[SP+16] = P1;
	[P4] = P3;
	FP += 1;
	[SP+12] = R7;
	R2 = R3;
	P0.L = 51272;
	call (P0);
	R0 = R0 -|- R0 ||
	P1 = [SP+16] ||
	nop;
	P2.H = 2051;
	[P4] = R0;
	P2.L = 20544;
	R1 = [P2];
	cc =R1==0;
	if cc jump .L19 (bp);
	P2.H = 2051;
	P2.L = 20540;
	R0 = [P2];
	cc =R0==0;
	if !cc jump .L29 (bp);
	P2.H = 2051;
	P2.L = 20536;
	R0 = [P2];
	call ___udivsi3;
	R4 = ROT R0 BY 0 ||
	P1 = [SP+16] ||
	nop;
.L20:
	P2 = [P1+4];
	P0 = 108 (X);
	P0 = P0 + SP;
	R1 = P0;
	P2 = P2 << 2;
	R2 = P2;
	R0 = R1 + R2;
	P0 = R0;
	R1 = [P0+-64];
	cc =R1==0;
	if cc jump .L21;
	nop;
	nop;
	nop;
	R0 = [P0+-32];
	cc =R0<R4 (iu);
	if !cc jump .L30;
.L21:
	P0 = 108 (X);
	P0 = P0 + SP;
	P2 = P0 + P2;
	[P2+-64] = P1;
	[P2+-32] = R4;
	R3 = FP;
	jump.s .L17;
.L19:
	P0 = 108 (X);
	P2 = [P1+4];
	P0 = P0 + SP;
	R1 = P0;
	P2 = P2 << 2;
	R2 = P2;
	R0 = R1 + R2;
	P0 = R0;
	R0 = [P0+-64];
	cc =R0==0;
	if cc jump .L21;
.L30:
	R3 = FP;
	jump.s .L17;
.L49:
	R1 = SP;
	R0.H = __ZZ17sdk_benchmark_runE8controls;
	P0.H = __ZN12_GLOBAL__N_1L8defaultsE+4;
	R1 += 44;
	R0.L = __ZZ17sdk_benchmark_runE8controls;
	P0.L = __ZN12_GLOBAL__N_1L8defaultsE+4;
	P2 = 8 (X);
	LSETUP (.L25, .L50) LC1 = P2;
.L25:
	FP = R1;
	P1 = [FP++];
	cc =P1==0;
	R1 = FP;
	if cc jump .L23;
	R2 = [P1+8];
.L24:
	P1 = R0;
	P0 += 4;
	[P1++] = R2;
.L50:
	R0 = P1;
	R1 = SP;
	R0.H = 33990;
	P2.H = 36183;
	R0.L = 38652;
	P2.L = 51272;
	[P4] = P3;
	[SP+12] = R7;
	R2 = R3;
	R1 += 28;
	R4 = R3;
	call (P2);
	P2.H = sdk_benchmark_engine;
	R0 = 0 (X);
	P2.L = sdk_benchmark_engine;
	[P4] = R0;
	R4 += 1;
	[P2] = R0;
	jump.s .L26;
.L23:
	R2 = [P0];
	jump.s .L24;
.L29:
	R4 = -1 (X);
	jump.s .L20;
.L48:
	P1 = 76 (X);
	[SP+20] = R3;
	P0 = SP + P1;
	call (P2);
	P2.H = 35852;
	P2.L = 30984;
	R4 = [SP+92];
	call (P2);
	R0 = [SP+96];
	cc =R0==0;
	R3 = [SP+20];
	if cc jump .L15 (bp);
	R0 = 1500 (X);
	cc =R4==R0;
	if !cc jump .L15 (bp);
	P1 = [P5+16];
	R0 = [SP+76];
	R1 = [SP+80];
	P2 = P1 + (P1 << 2);
	P2 = P1 + (P2 << 1);
	P1.H = 2051;
	P1.L = 20284;
	P2 = P1 + (P2 << 2);
	[P2+16] = R0;
	R0 = 0 (X);
	[P2+20] = R0;
	[P2+24] = R1;
	[P2+28] = R0;
	R0 = [SP+84];
	[P2+32] = R0;
	R0 = [SP+88];
	[P2+36] = R0;
	R0 = 1500 (X);
	[P2+40] = R0;
.L15:
	P2.H = 35852;
	[SP+20] = R3;
	R0 = 1500 (X);
	P2.L = 31084;
	call (P2);
	R3 = [SP+20];
	R4 = R3;
	jump.s .L26;
	.size	sdk_benchmark_run, .-sdk_benchmark_run
	.local	__ZZ17sdk_benchmark_runE8controls
	.comm	__ZZ17sdk_benchmark_runE8controls,32,4
	.section	.rodata
	.align 4
	.type	__ZN12_GLOBAL__N_1L8defaultsE, @object
	.size	__ZN12_GLOBAL__N_1L8defaultsE, 72
__ZN12_GLOBAL__N_1L8defaultsE:
	.long	0
	.long	1181116006
	.long	1288490188
	.long	1503238553
	.long	214748365
	.long	0
	.long	0
	.long	0
	.long	0
	.long	-1
	.long	0
	.zero	28
	.align 4
	.type	__ZN12_GLOBAL__N_1L8settingsE, @object
	.size	__ZN12_GLOBAL__N_1L8settingsE, 876
__ZN12_GLOBAL__N_1L8settingsE:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	268435455
	.long	0
	.long	0
	.long	536870911
	.long	0
	.long	0
	.long	805306367
	.long	0
	.long	0
	.long	1073741823
	.long	0
	.long	0
	.long	1342177279
	.long	0
	.long	0
	.long	1610612735
	.long	0
	.long	0
	.long	1879048191
	.long	0
	.long	0
	.long	2147483647
	.long	0
	.long	1
	.long	0
	.long	0
	.long	1
	.long	268435455
	.long	0
	.long	1
	.long	536870911
	.long	0
	.long	1
	.long	805306367
	.long	0
	.long	1
	.long	1073741823
	.long	0
	.long	1
	.long	1342177279
	.long	0
	.long	1
	.long	1610612735
	.long	0
	.long	1
	.long	1879048191
	.long	0
	.long	1
	.long	2147483647
	.long	0
	.long	2
	.long	0
	.long	0
	.long	2
	.long	268435455
	.long	0
	.long	2
	.long	536870911
	.long	0
	.long	2
	.long	805306367
	.long	0
	.long	2
	.long	1073741823
	.long	0
	.long	2
	.long	1342177279
	.long	0
	.long	2
	.long	1610612735
	.long	0
	.long	2
	.long	1879048191
	.long	0
	.long	2
	.long	2147483647
	.long	0
	.long	3
	.long	0
	.long	0
	.long	3
	.long	268435455
	.long	0
	.long	3
	.long	536870911
	.long	0
	.long	3
	.long	805306367
	.long	0
	.long	3
	.long	1073741823
	.long	0
	.long	3
	.long	1342177279
	.long	0
	.long	3
	.long	1610612735
	.long	0
	.long	3
	.long	1879048191
	.long	0
	.long	3
	.long	2147483647
	.long	0
	.long	4
	.long	0
	.long	0
	.long	4
	.long	268435455
	.long	0
	.long	4
	.long	536870911
	.long	0
	.long	4
	.long	805306367
	.long	0
	.long	4
	.long	1073741823
	.long	0
	.long	4
	.long	1342177279
	.long	0
	.long	4
	.long	1610612735
	.long	0
	.long	4
	.long	1879048191
	.long	0
	.long	4
	.long	2147483647
	.long	0
	.long	5
	.long	0
	.long	0
	.long	5
	.long	268435455
	.long	0
	.long	5
	.long	536870911
	.long	0
	.long	5
	.long	805306367
	.long	0
	.long	5
	.long	1073741823
	.long	0
	.long	5
	.long	1342177279
	.long	0
	.long	5
	.long	1610612735
	.long	0
	.long	5
	.long	1879048191
	.long	0
	.long	5
	.long	2147483647
	.long	0
	.long	6
	.long	0
	.long	0
	.long	6
	.long	268435455
	.long	0
	.long	6
	.long	536870911
	.long	0
	.long	6
	.long	805306367
	.long	0
	.long	6
	.long	1073741823
	.long	0
	.long	6
	.long	1342177279
	.long	0
	.long	6
	.long	1610612735
	.long	0
	.long	6
	.long	1879048191
	.long	0
	.long	6
	.long	2147483647
	.long	0
	.long	7
	.long	0
	.long	0
	.long	7
	.long	268435455
	.long	0
	.long	7
	.long	536870911
	.long	0
	.long	7
	.long	805306367
	.long	0
	.long	7
	.long	1073741823
	.long	0
	.long	7
	.long	1342177279
	.long	0
	.long	7
	.long	1610612735
	.long	0
	.long	7
	.long	1879048191
	.long	0
	.long	7
	.long	2147483647
	.long	-1
	.long	0
	.long	0
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"medievalwind"
	.section	.rodata
	.align 4
	.type	__ZN12_GLOBAL__N_1L8machinesE, @object
	.size	__ZN12_GLOBAL__N_1L8machinesE, 40
__ZN12_GLOBAL__N_1L8machinesE:
	.long	.LC0
	.long	medievalwind_engine_id
	.long	medievalwind_ready
	.long	0
	.long	5
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
.global sdk_benchmark_engine;
	.section	.bss,"aw",@nobits
	.align 4
	.type	sdk_benchmark_engine, @object
	.size	sdk_benchmark_engine, 4
sdk_benchmark_engine:
	.zero	4
.global sdk_benchmark_parameters;
	.align 4
	.type	sdk_benchmark_parameters, @object
	.size	sdk_benchmark_parameters, 4
sdk_benchmark_parameters:
	.zero	4
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
