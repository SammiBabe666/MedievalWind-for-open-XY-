.file "registration.cpp";
.text;
	.align 4
.global medievalwind_screen_register;
.type medievalwind_screen_register, STT_FUNC;
medievalwind_screen_register:
	R1.H = __ZN12_GLOBAL__N_1L6screenE;
	R0.H = __ZN12_GLOBAL__N_1L6recordE;
	R1.L = __ZN12_GLOBAL__N_1L6screenE;
	R0.L = __ZN12_GLOBAL__N_1L6recordE;
	jump.l sdk_register_screen;
	.size	medievalwind_screen_register, .-medievalwind_screen_register
	.align 4
.global medievalwind_register;
.type medievalwind_register, STT_FUNC;
medievalwind_register:
	R0.H = __ZN12_GLOBAL__N_1L6recordE;
	R0.L = __ZN12_GLOBAL__N_1L6recordE;
	jump.l sdk_register_engine;
	.size	medievalwind_register, .-medievalwind_register
	.align 4
.global medievalwind_record_ready;
.type medievalwind_record_ready, STT_FUNC;
medievalwind_record_ready:
	R0.H = __ZN12_GLOBAL__N_1L6recordE;
	R1 = 0 (X);
	R0.L = __ZN12_GLOBAL__N_1L6recordE;
	jump.l sdk_engine_ready;
	.size	medievalwind_record_ready, .-medievalwind_record_ready
	.align 4
.global medievalwind_name_matches;
.type medievalwind_name_matches, STT_FUNC;
medievalwind_name_matches:
	R1 = R0;
	R0.H = __ZN12_GLOBAL__N_1L6recordE;
	R0.L = __ZN12_GLOBAL__N_1L6recordE;
	jump.l sdk_name_matches;
	.size	medievalwind_name_matches, .-medievalwind_name_matches
	.align 4
.global medievalwind_ready;
.type medievalwind_ready, STT_FUNC;
medievalwind_ready:
	R1.H = __ZN12_GLOBAL__N_1L6screenE;
	R0.H = __ZN12_GLOBAL__N_1L6recordE;
	R1.L = __ZN12_GLOBAL__N_1L6screenE;
	R0.L = __ZN12_GLOBAL__N_1L6recordE;
	jump.l sdk_engine_ready;
	.size	medievalwind_ready, .-medievalwind_ready
	.section	.rodata
	.align 4
	.type	__ZN12_GLOBAL__N_1L6screenE, @object
	.size	__ZN12_GLOBAL__N_1L6screenE, 20
__ZN12_GLOBAL__N_1L6screenE:
	.long	medievalwind_screen_state
	.long	856
	.long	medievalwind_screen_vtable
	.long	medievalwind_screen_asset
	.long	medievalwind_screen_ctor
	.align 4
	.type	__ZN12_GLOBAL__N_1L6recordE, @object
	.size	__ZN12_GLOBAL__N_1L6recordE, 24
__ZN12_GLOBAL__N_1L6recordE:
	.long	medievalwind_factory
	.long	medievalwind_parameter_name
	.long	medievalwind_name
	.long	medievalwind_engine_id
	.long	medievalwind_page_id
	.long	0
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
