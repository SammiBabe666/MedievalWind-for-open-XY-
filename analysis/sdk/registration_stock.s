.file "registration_stock.cpp";
	
    .pushsection .text
    .align 2
    .global sdk_engine_bound
    .type sdk_engine_bound, STT_FUNC
sdk_engine_bound:
    R1 = 256 (X);
    CC = R0 < R1;
    RTS;
    .size sdk_engine_bound, .-sdk_engine_bound
    .popsection

.text;
	.align 4
.type __ZN12_GLOBAL__N_110add_engineERKN4opxy8platform6RecordEmm, STT_FUNC;
__ZN12_GLOBAL__N_110add_engineERKN4opxy8platform6RecordEmm:
	P2 = R0;
	[--SP] = RETS;
	SP += -24;
	R0 = R1;
	R1 = [P2+8];
	[SP+20] = R2;
	R2 = [P2+20];
	[SP+16] = R2;
	R2 = [P2+4];
	[SP+12] = R2;
	R2 = [P2];
	P2.H = 36176;
	P2.L = 25884;
	call (P2);
	SP += 24;
	RETS = [SP++];
	rts;
	.size	__ZN12_GLOBAL__N_110add_engineERKN4opxy8platform6RecordEmm, .-__ZN12_GLOBAL__N_110add_engineERKN4opxy8platform6RecordEmm
	.align 4
.type __ZN12_GLOBAL__N_110add_effectERKN4opxy8platform6RecordEmm, STT_FUNC;
__ZN12_GLOBAL__N_110add_effectERKN4opxy8platform6RecordEmm:
	P2 = R0;
	[--SP] = RETS;
	SP += -20;
	R0 = R1;
	R1 = [P2+8];
	[SP+16] = R2;
	R2 = [P2+4];
	[SP+12] = R2;
	R2 = [P2];
	P2.H = 36176;
	P2.L = 26276;
	call (P2);
	SP += 20;
	RETS = [SP++];
	rts;
	.size	__ZN12_GLOBAL__N_110add_effectERKN4opxy8platform6RecordEmm, .-__ZN12_GLOBAL__N_110add_effectERKN4opxy8platform6RecordEmm
	.align 4
.global sdk_register_engine;
.type sdk_register_engine, STT_FUNC;
sdk_register_engine:
	R2 = R0;
	R1.H = __ZN12_GLOBAL__N_1L6kPagesE;
	R0.H = __ZN12_GLOBAL__N_1L8kEnginesE;
	R1.L = __ZN12_GLOBAL__N_1L6kPagesE;
	R0.L = __ZN12_GLOBAL__N_1L8kEnginesE;
	jump.l __ZN4opxy8platform8registry3addERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordE;
	.size	sdk_register_engine, .-sdk_register_engine
	.align 4
.global sdk_register_effect;
.type sdk_register_effect, STT_FUNC;
sdk_register_effect:
	R2 = R0;
	R1.H = __ZN12_GLOBAL__N_1L6kPagesE;
	R0.H = __ZN12_GLOBAL__N_1L8kEffectsE;
	R1.L = __ZN12_GLOBAL__N_1L6kPagesE;
	R0.L = __ZN12_GLOBAL__N_1L8kEffectsE;
	jump.l __ZN4opxy8platform8registry3addERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordE;
	.size	sdk_register_effect, .-sdk_register_effect
	.align 4
.global sdk_register_screen;
.type sdk_register_screen, STT_FUNC;
sdk_register_screen:
	R2 = R1;
	R1 = R0;
	R0.H = __ZN12_GLOBAL__N_1L6kPagesE;
	R0.L = __ZN12_GLOBAL__N_1L6kPagesE;
	jump.l __ZN4opxy8platform8registry10add_screenERKNS1_5PagesERKNS0_6RecordERKNS0_6ScreenE;
	.size	sdk_register_screen, .-sdk_register_screen
	.align 4
.global sdk_engine_ready;
.type sdk_engine_ready, STT_FUNC;
sdk_engine_ready:
	[--SP] = RETS;
	SP += -16;
	[SP+12] = R1;
	R2 = R0;
	R1.H = __ZN12_GLOBAL__N_1L6kPagesE;
	R0.H = __ZN12_GLOBAL__N_1L8kEnginesE;
	R1.L = __ZN12_GLOBAL__N_1L6kPagesE;
	R0.L = __ZN12_GLOBAL__N_1L8kEnginesE;
	call __ZN4opxy8platform8registry5readyERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordEPKNS0_6ScreenE;
	SP += 16;
	RETS = [SP++];
	rts;
	.size	sdk_engine_ready, .-sdk_engine_ready
	.align 4
.global sdk_effect_ready;
.type sdk_effect_ready, STT_FUNC;
sdk_effect_ready:
	[--SP] = RETS;
	SP += -16;
	R1 = 0 (X);
	[SP+12] = R1;
	R2 = R0;
	R1.H = __ZN12_GLOBAL__N_1L6kPagesE;
	R0.H = __ZN12_GLOBAL__N_1L8kEffectsE;
	R1.L = __ZN12_GLOBAL__N_1L6kPagesE;
	R0.L = __ZN12_GLOBAL__N_1L8kEffectsE;
	call __ZN4opxy8platform8registry5readyERKNS1_8RegistryERKNS1_5PagesERKNS0_6RecordEPKNS0_6ScreenE;
	SP += 16;
	RETS = [SP++];
	rts;
	.size	sdk_effect_ready, .-sdk_effect_ready
	.align 4
.global sdk_stock_engine_known;
.type sdk_stock_engine_known, STT_FUNC;
sdk_stock_engine_known:
	R1 = R0;
	R0.H = __ZN12_GLOBAL__N_1L8kEnginesE;
	R0.L = __ZN12_GLOBAL__N_1L8kEnginesE;
	jump.l __ZN4opxy8platform8registry5knownERKNS1_8RegistryEPKNS1_11StockStringE;
	.size	sdk_stock_engine_known, .-sdk_stock_engine_known
	.align 4
.global sdk_name_matches;
.type sdk_name_matches, STT_FUNC;
sdk_name_matches:
	jump.l __ZN4opxy8platform8registry12name_matchesERKNS0_6RecordEPKNS1_11StockStringE;
	.size	sdk_name_matches, .-sdk_name_matches
	.section	.rodata
	.align 4
	.type	__ZN12_GLOBAL__N_1L6kPagesE, @object
	.size	__ZN12_GLOBAL__N_1L6kPagesE, 16
__ZN12_GLOBAL__N_1L6kPagesE:
	.long	256
	.long	-1924003972
	.long	-1924333744
	.long	134463260
	.align 4
	.type	__ZN12_GLOBAL__N_1L8kEffectsE, @object
	.size	__ZN12_GLOBAL__N_1L8kEffectsE, 24
__ZN12_GLOBAL__N_1L8kEffectsE:
	.long	-1924349056
	.long	63
	.long	19
	.long	134451528
	.long	-1924108876
	.long	__ZN12_GLOBAL__N_110add_effectERKN4opxy8platform6RecordEmm
	.align 4
	.type	__ZN12_GLOBAL__N_1L8kEnginesE, @object
	.size	__ZN12_GLOBAL__N_1L8kEnginesE, 24
__ZN12_GLOBAL__N_1L8kEnginesE:
	.long	-1924346032
	.long	256
	.long	33
	.long	134451552
	.long	-1924109096
	.long	__ZN12_GLOBAL__N_110add_engineERKN4opxy8platform6RecordEmm
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
