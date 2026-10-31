.file "startup.cpp";
.text;
	.align 4
.global kit_absent;
.type kit_absent, STT_FUNC;
kit_absent:
	R0 = 0 (X);
	rts;
	.size	kit_absent, .-kit_absent
	.align 4
.global sdk_startup_synth;
.type sdk_startup_synth, STT_FUNC;
sdk_startup_synth:
	[--SP] = RETS;
	SP += -12;
	call stock_gui_role;
	cc =R0==0;
	if cc jump .L5;
	SP += 12;
	RETS = [SP++];
	rts;
.L5:
	SP += 12;
	RETS = [SP++];
	jump.l medievalwind_register;
	.size	sdk_startup_synth, .-sdk_startup_synth
	.align 4
.global sdk_startup_screen;
.type sdk_startup_screen, STT_FUNC;
sdk_startup_screen:
	[--SP] = RETS;
	SP += -12;
	call medievalwind_screen_register;
	cc =R0==1;
	if cc jump .L8;
	SP += 12;
	RETS = [SP++];
	rts;
.L8:
	SP += 12;
	RETS = [SP++];
	jump.l medievalwind_register;
	.size	sdk_startup_screen, .-sdk_startup_screen
	.align 4
.global extensions_catalog_checked;
.type extensions_catalog_checked, STT_FUNC;
extensions_catalog_checked:
	[--sp] = ( r7:5 );

	R5 = R0;
	R0 = 33 (X);
	[--SP] = RETS;
	cc =R2==R0;
	SP += -12;
	R6 = R1;
	R7 = R2;
	if cc jump .L11;
	R0 = R1;
	call medievalwind_name_matches;
	cc =R0==0;
	if cc jump .L12;
	R0.H = medievalwind_engine_id;
	R0.L = medievalwind_engine_id;
	cc =R7==R0;
	if cc jump .L14;
.L11:
	SP += 12;
	R0 = 0 (X);
	RETS = [SP++];
	( r7:5 ) = [sp++];

	rts;
.L14:
	call medievalwind_ready;
	cc =R0==1;
	if !cc jump .L11 (bp);
.L12:
	SP += 12;
	RETS = [SP++];
	R2 = R7;
	R1 = R6;
	R0 = R5;
	( r7:5 ) = [sp++];

	jump.l stock_catalog_insert;
	.size	extensions_catalog_checked, .-extensions_catalog_checked
	.align 4
.global sdk_screen_owned;
.type sdk_screen_owned, STT_FUNC;
sdk_screen_owned:
	R1.H = medievalwind_page_id;
	R1.L = medievalwind_page_id;
	[--SP] = RETS;
	cc =R0==R1;
	SP += -12;
	if cc jump .L18;
	SP += 12;
	R0 = 0 (X);
	RETS = [SP++];
	rts;
.L18:
	call medievalwind_ready;
	SP += 12;
	cc =R0==1;
	RETS = [SP++];
	R0 = CC;
	rts;
	.size	sdk_screen_owned, .-sdk_screen_owned
	.align 4
.global sdk_engine_installed;
.type sdk_engine_installed, STT_FUNC;
sdk_engine_installed:
	[--sp] = ( r7:7 );

	[--SP] = RETS;
	SP += -12;
	R7 = R0;
	call sdk_stock_engine_known;
	cc =R0==0;
	if cc jump .L22;
	SP += 12;
	R0 = 1 (X);
	RETS = [SP++];
	( r7:7 ) = [sp++];

	rts;
.L22:
	R0 = R7;
	call medievalwind_name_matches;
	cc =R0==0;
	SP += 12;
	RETS = [SP++];
	R0 = CC;
	BITTGL (R0, 0);
	( r7:7 ) = [sp++];

	rts;
	.size	sdk_engine_installed, .-sdk_engine_installed
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
