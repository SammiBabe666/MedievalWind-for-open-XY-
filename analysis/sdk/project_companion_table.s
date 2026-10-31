.file "project_companion_table.cpp";
.global _sdk_companion_machines;
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC0:
	.string	"medievalwind"
	.section	.rodata
	.align 4
	.type	_sdk_companion_machines, @object
	.size	_sdk_companion_machines, 32
_sdk_companion_machines:
	.long	.LC0
	.long	medievalwind_engine_id
	.long	medievalwind_page_id
	.byte	0
	.zero	3
	.long	0
	.long	0
	.long	0
	.byte	0
	.zero	3
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
