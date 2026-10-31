.file "sdk/platform/blackfin/memory.cpp";
.text;
	.align 4
.global _memset;
.type _memset, STT_FUNC;
_memset:
	cc =R2==0;
	if cc jump .L6;
	P1 = R0;
	P2 = R2;
	LSETUP (.L3, .L8) LC1 = P2;
.L3:
.L8:
	B [P1++] = R1;
.L6:
	rts;
	.size	_memset, .-_memset
	.align 4
.global _memcpy;
.type _memcpy, STT_FUNC;
_memcpy:
	cc =R2==0;
	P1 = R1;
	if cc jump .L10;
	P0 = R0;
	P2 = R2;
	LSETUP (.L11, .L16) LC1 = P2;
.L11:
	R1 = B [P1++] (X);
.L16:
	B [P0++] = R1;
.L10:
	rts;
	.size	_memcpy, .-_memcpy
	.ident	"GCC: (GNU) 8.0.0 20171013 (experimental)"
