.file "synth_control_table.cpp";
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	""
.text;
	.align 4
.type __ZL19medievalwind_formatmlPc, STT_FUNC;
__ZL19medievalwind_formatmlPc:
	P2 = R0;
	[--SP] = RETS;
	SP += -12;
	R0 = R2;
	cc =P2<=7 (iu);
	if !cc jump .L20;
	P1.H = .L4;
	P1.L = .L4;
	P2 = P1 + (P2 << 2);
	P2 = [P2];
	cc =R1<0;
	jump (P2);
	.section	.rodata
	.align 4
	.align 4
.L4:
	.dd	.L3;
	.dd	.L3;
	.dd	.L3;
	.dd	.L3;
	.dd	.L3;
	.dd	.L3;
	.dd	.L3;
	.dd	.L3;
.text;
.L3:
	if cc jump .L28;
	R1 >>= 10;
	R2 = R1 << 5;
	R2 = R2 - R1;
	P1 = R2;
	P2 = R1;
	R2 = 1 (X);
	R2 <<= 20;
	P1 = P2 + (P1 << 2);
	R1 = P1;
	R1 <<= 3;
	R1 = R1 + R2;
	R1 >>= 21;
.L19:
	R2.H = .LC0;
	R2.L = .LC0;
	call __ZN4opxy8platform14control_tenthsEPcmPKc;
	R0 = 1 (X);
.L1:
	SP += 12;
	RETS = [SP++];
	rts;
.L28:
	R1 = 0 (X);
	jump.s .L19;
.L20:
	R0 = 0 (X);
	jump.s .L1;
	.size	__ZL19medievalwind_formatmlPc, .-__ZL19medievalwind_formatmlPc
.global sdk_lfo_machine_count;
	.section	.rodata
	.align 4
	.type	sdk_lfo_machine_count, @object
	.size	sdk_lfo_machine_count, 4
sdk_lfo_machine_count:
	.long	1
.global sdk_lfo_machines;
	.align 4
	.type	sdk_lfo_machines, @object
	.size	sdk_lfo_machines, 40
sdk_lfo_machines:
	.long	medievalwind_engine_id
	.long	medievalwind_record_ready
	.long	8
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.long	0
	.long	0
	.long	0
	.zero	8
.global sdk_synth_control_count;
	.align 4
	.type	sdk_synth_control_count, @object
	.size	sdk_synth_control_count, 4
sdk_synth_control_count:
	.long	1
.global sdk_synth_controls;
	.align 4
	.type	sdk_synth_controls, @object
	.size	sdk_synth_controls, 72
sdk_synth_controls:
	.long	medievalwind_engine_id
	.long	medievalwind_ready
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.long	255
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	__ZL19medievalwind_formatmlPc
	.byte	0
	.byte	1
	.zero	2
	.long	0
	.long	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.long	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.long	0
	.byte	0
	.byte	0
	.zero	2
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
