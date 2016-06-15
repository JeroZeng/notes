    .globl	_add
_add:
	sub	sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r1
	add	sp, #8
	bx	lr
