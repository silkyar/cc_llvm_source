	.syntax unified
	.eabi_attribute 6, 2
	.eabi_attribute 8, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.file	"out.bc"
	.text
	.globl	concat_length
	.align	2
	.type	concat_length,%function
concat_length:                          @ @concat_length
@ BB#0:                                 @ %entry
	sub	sp, sp, #16
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #4
	add	r4, r11, #12
	mov	r5, r0
	add	r0, r11, #12
	stm	r4, {r1, r2, r3}
	mov	r4, #0
	str	r0, [sp]
	cmp	r5, #0
	beq	.LBB0_3
@ BB#1:                                 @ %for.body.lr.ph.i
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r4, #0
	bl	branchCounter
	ldr	r6, [sp]
.LBB0_2:                                @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #3
	mov	r1, #2
	mov	r2, #1
	bl	branchCounter
	mov	r0, r5
	bl	strlen
	ldr	r5, [r6], #4
	add	r4, r0, r4
	cmp	r5, #0
	bne	.LBB0_2
.LBB0_3:                                @ %vconcat_length.exit
	mov	r0, #3
	mov	r1, #2
	mov	r2, #0
	bl	branchCounter
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	branchCounter
	mov	r0, r4
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	add	sp, sp, #16
	bx	lr
.Ltmp0:
	.size	concat_length, .Ltmp0-concat_length

	.globl	concat_copy
	.align	2
	.type	concat_copy,%function
concat_copy:                            @ @concat_copy
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	push	{r4, r5, r6, r7, r8, r11, lr}
	add	r11, sp, #20
	sub	sp, sp, #4
	mov	r8, r0
	mov	r6, r1
	add	r0, r11, #8
	str	r3, [r11, #12]
	str	r2, [r11, #8]
	mov	r5, r8
	str	r0, [sp]
	cmp	r6, #0
	beq	.LBB1_3
@ BB#1:                                 @ %for.body.lr.ph.i
	mov	r0, #5
	mov	r1, #3
	mov	r2, #1
	bl	branchCounter
	ldr	r4, [sp]
	mov	r5, r8
.LBB1_2:                                @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #7
	mov	r1, #5
	mov	r2, #1
	bl	branchCounter
	mov	r0, r6
	bl	strlen
	mov	r7, r0
	mov	r0, r5
	mov	r1, r6
	mov	r2, r7
	bl	__aeabi_memcpy
	ldr	r6, [r4], #4
	add	r5, r5, r7
	cmp	r6, #0
	bne	.LBB1_2
.LBB1_3:                                @ %vconcat_copy.exit
	mov	r0, #7
	mov	r1, #5
	mov	r2, #0
	mov	r4, #0
	bl	branchCounter
	mov	r0, #5
	mov	r1, #3
	mov	r2, #0
	bl	branchCounter
	strb	r4, [r5]
	mov	r0, r8
	sub	sp, r11, #20
	pop	{r4, r5, r6, r7, r8, r11, lr}
	add	sp, sp, #8
	bx	lr
.Ltmp1:
	.size	concat_copy, .Ltmp1-concat_copy

	.globl	concat_copy2
	.align	2
	.type	concat_copy2,%function
concat_copy2:                           @ @concat_copy2
@ BB#0:                                 @ %entry
	sub	sp, sp, #16
	push	{r4, r5, r6, r7, r8, r11, lr}
	add	r11, sp, #20
	sub	sp, sp, #4
	ldr	r8, .LCPI2_0
	add	r4, r11, #12
	mov	r5, r0
	add	r0, r11, #12
	stm	r4, {r1, r2, r3}
	str	r0, [sp]
	cmp	r5, #0
	ldr	r4, [r8]
	beq	.LBB2_3
@ BB#1:                                 @ %for.body.lr.ph.i
	mov	r0, #9
	mov	r1, #6
	mov	r2, #1
	bl	branchCounter
	ldr	r7, [sp]
.LBB2_2:                                @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #11
	mov	r1, #8
	mov	r2, #1
	bl	branchCounter
	mov	r0, r5
	bl	strlen
	mov	r6, r0
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	bl	__aeabi_memcpy
	ldr	r5, [r7], #4
	add	r4, r4, r6
	cmp	r5, #0
	bne	.LBB2_2
.LBB2_3:                                @ %vconcat_copy.exit
	mov	r0, #11
	mov	r1, #8
	mov	r2, #0
	mov	r5, #0
	bl	branchCounter
	mov	r0, #9
	mov	r1, #6
	mov	r2, #0
	bl	branchCounter
	strb	r5, [r4]
	ldr	r0, [r8]
	sub	sp, r11, #20
	pop	{r4, r5, r6, r7, r8, r11, lr}
	add	sp, sp, #16
	bx	lr
	.align	2
@ BB#4:
.LCPI2_0:
	.long	libiberty_concat_ptr
.Ltmp2:
	.size	concat_copy2, .Ltmp2-concat_copy2

	.globl	concat
	.align	2
	.type	concat,%function
concat:                                 @ @concat
@ BB#0:                                 @ %entry
	sub	sp, sp, #16
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #12
	add	r5, r11, #12
	mov	r4, r0
	add	r10, r11, #12
	stm	r5, {r1, r2, r3}
	mov	r5, #1
	str	r10, [sp, #8]
	cmp	r4, #0
	beq	.LBB3_4
@ BB#1:                                 @ %for.body.lr.ph.i
	mov	r0, #13
	mov	r1, #9
	mov	r2, #1
	bl	branchCounter
	ldr	r6, [sp, #8]
	mov	r7, #0
	mov	r5, r4
.LBB3_2:                                @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #15
	mov	r1, #11
	mov	r2, #1
	bl	branchCounter
	mov	r0, r5
	bl	strlen
	ldr	r5, [r6], #4
	add	r7, r0, r7
	cmp	r5, #0
	bne	.LBB3_2
@ BB#3:                                 @ %vconcat_length.exit.loopexit
	mov	r0, #15
	mov	r1, #11
	mov	r2, #0
	bl	branchCounter
	add	r5, r7, #1
.LBB3_4:                                @ %vconcat_length.exit
	mov	r0, #13
	mov	r1, #9
	mov	r2, #0
	mov	r8, #0
	bl	branchCounter
	mov	r0, r5
	bl	xmalloc
	mov	r9, r0
	str	r10, [sp]
	cmp	r4, #0
	mov	r6, r9
	beq	.LBB3_7
@ BB#5:                                 @ %for.body.lr.ph.i14
	mov	r0, #17
	mov	r1, #13
	mov	r2, #1
	bl	branchCounter
	ldr	r5, [sp]
	mov	r6, r9
.LBB3_6:                                @ %for.body.i19
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #19
	mov	r1, #15
	mov	r2, #1
	bl	branchCounter
	mov	r0, r4
	bl	strlen
	mov	r7, r0
	mov	r0, r6
	mov	r1, r4
	mov	r2, r7
	bl	__aeabi_memcpy
	ldr	r4, [r5], #4
	add	r6, r6, r7
	cmp	r4, #0
	bne	.LBB3_6
.LBB3_7:                                @ %vconcat_copy.exit
	mov	r0, #19
	mov	r1, #15
	mov	r2, #0
	bl	branchCounter
	mov	r0, #17
	mov	r1, #13
	mov	r2, #0
	bl	branchCounter
	strb	r8, [r6]
	mov	r0, r9
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	sp, sp, #16
	bx	lr
.Ltmp3:
	.size	concat, .Ltmp3-concat

	.globl	reconcat
	.align	2
	.type	reconcat,%function
reconcat:                               @ @reconcat
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #12
	mov	r5, r1
	add	r9, r11, #8
	mov	r8, r0
	mov	r6, #1
	str	r3, [r11, #12]
	str	r2, [r11, #8]
	str	r9, [sp, #8]
	cmp	r5, #0
	beq	.LBB4_4
@ BB#1:                                 @ %for.body.lr.ph.i
	mov	r0, #21
	mov	r1, #16
	mov	r2, #1
	bl	branchCounter
	ldr	r4, [sp, #8]
	mov	r7, #0
	mov	r6, r5
.LBB4_2:                                @ %for.body.i
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #23
	mov	r1, #18
	mov	r2, #1
	bl	branchCounter
	mov	r0, r6
	bl	strlen
	ldr	r6, [r4], #4
	add	r7, r0, r7
	cmp	r6, #0
	bne	.LBB4_2
@ BB#3:                                 @ %vconcat_length.exit.loopexit
	mov	r0, #23
	mov	r1, #18
	mov	r2, #0
	bl	branchCounter
	add	r6, r7, #1
.LBB4_4:                                @ %vconcat_length.exit
	mov	r0, #21
	mov	r1, #16
	mov	r2, #0
	bl	branchCounter
	mov	r0, r6
	bl	xmalloc
	mov	r10, r0
	str	r9, [sp]
	cmp	r5, #0
	mov	r7, r10
	beq	.LBB4_7
@ BB#5:                                 @ %for.body.lr.ph.i15
	mov	r0, #25
	mov	r1, #20
	mov	r2, #1
	bl	branchCounter
	ldr	r6, [sp]
	mov	r7, r10
.LBB4_6:                                @ %for.body.i20
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, #27
	mov	r1, #22
	mov	r2, #1
	bl	branchCounter
	mov	r0, r5
	bl	strlen
	mov	r4, r0
	mov	r0, r7
	mov	r1, r5
	mov	r2, r4
	bl	__aeabi_memcpy
	ldr	r5, [r6], #4
	add	r7, r7, r4
	cmp	r5, #0
	bne	.LBB4_6
.LBB4_7:                                @ %vconcat_copy.exit
	mov	r0, #27
	mov	r1, #22
	mov	r2, #0
	bl	branchCounter
	mov	r0, #25
	mov	r1, #20
	mov	r2, #0
	bl	branchCounter
	mov	r0, #0
	cmp	r8, #0
	strb	r0, [r7]
	beq	.LBB4_9
@ BB#8:                                 @ %if.then
	mov	r0, #28
	mov	r1, #23
	mov	r2, #1
	bl	branchCounter
	mov	r0, r8
	bl	free
.LBB4_9:                                @ %if.end
	mov	r0, #28
	mov	r1, #23
	mov	r2, #0
	bl	branchCounter
	mov	r0, r10
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	sp, sp, #8
	bx	lr
.Ltmp4:
	.size	reconcat, .Ltmp4-reconcat

	.globl	main
	.align	2
	.type	main,%function
main:                                   @ @main
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #8
	mov	r0, #0
	mov	r7, #0
	bl	concat
	mov	r1, r0
	ldr	r0, .LCPI5_0
	bl	printf
	ldr	r4, .LCPI5_1
	mov	r1, #0
	mov	r0, r4
	bl	concat
	mov	r1, r0
	ldr	r0, .LCPI5_2
	bl	printf
	ldr	r5, .LCPI5_3
	mov	r0, r4
	mov	r2, #0
	mov	r1, r5
	bl	concat
	mov	r1, r0
	ldr	r0, .LCPI5_4
	bl	printf
	ldr	r6, .LCPI5_5
	mov	r0, r4
	mov	r1, r5
	mov	r3, #0
	mov	r2, r6
	bl	concat
	mov	r1, r0
	ldr	r0, .LCPI5_6
	bl	printf
	ldr	r5, .LCPI5_7
	ldr	r1, .LCPI5_8
	mov	r2, #0
	mov	r0, r5
	bl	concat
	mov	r1, r0
	ldr	r0, .LCPI5_9
	bl	printf
	ldr	r2, .LCPI5_10
	mov	r0, r5
	mov	r1, r6
	mov	r3, #0
	bl	concat
	mov	r1, r0
	ldr	r0, .LCPI5_11
	bl	printf
	ldr	r0, .LCPI5_12
	str	r7, [sp, #4]
	ldr	r3, .LCPI5_14
	mov	r1, r4
	str	r0, [sp]
	ldr	r0, .LCPI5_13
	mov	r2, r0
	bl	concat
	mov	r1, r0
	ldr	r0, .LCPI5_15
	bl	printf
	mov	r0, #0
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI5_0:
	.long	.L.str
.LCPI5_1:
	.long	.L.str2
.LCPI5_2:
	.long	.L.str1
.LCPI5_3:
	.long	.L.str4
.LCPI5_4:
	.long	.L.str3
.LCPI5_5:
	.long	.L.str6
.LCPI5_6:
	.long	.L.str5
.LCPI5_7:
	.long	.L.str8
.LCPI5_8:
	.long	.L.str9
.LCPI5_9:
	.long	.L.str7
.LCPI5_10:
	.long	.L.str11
.LCPI5_11:
	.long	.L.str10
.LCPI5_12:
	.long	.L.str15
.LCPI5_13:
	.long	.L.str13
.LCPI5_14:
	.long	.L.str14
.LCPI5_15:
	.long	.L.str12
.Ltmp5:
	.size	main, .Ltmp5-main

	.globl	xexit
	.align	2
	.type	xexit,%function
xexit:                                  @ @xexit
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	mov	r4, r0
	ldr	r0, .LCPI6_0
	add	r11, sp, #8
	ldr	r5, [r0]
	cmp	r5, #0
	beq	.LBB6_2
@ BB#1:                                 @ %if.then
	mov	r0, #32
	mov	r1, #25
	mov	r2, #1
	bl	branchCounter
	mov	lr, pc
	bx	r5
.LBB6_2:                                @ %if.end
	mov	r0, #32
	mov	r1, #25
	mov	r2, #0
	bl	branchCounter
	mov	r0, r4
	bl	exit
	.align	2
@ BB#3:
.LCPI6_0:
	.long	_xexit_cleanup
.Ltmp6:
	.size	xexit, .Ltmp6-xexit

	.globl	xmalloc_set_program_name
	.align	2
	.type	xmalloc_set_program_name,%function
xmalloc_set_program_name:               @ @xmalloc_set_program_name
@ BB#0:                                 @ %entry
	ldr	r1, .LCPI7_0
	str	r0, [r1]
	bx	lr
	.align	2
@ BB#1:
.LCPI7_0:
	.long	name
.Ltmp7:
	.size	xmalloc_set_program_name, .Ltmp7-xmalloc_set_program_name

	.globl	xmalloc_failed
	.align	2
	.type	xmalloc_failed,%function
xmalloc_failed:                         @ @xmalloc_failed
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	ldr	r1, .LCPI8_0
	ldr	r3, .LCPI8_3
	ldr	r12, [r1]
	ldr	r1, .LCPI8_1
	ldr	r2, [r1]
	ldrb	r1, [r2]
	str	r0, [sp]
	ldr	r0, .LCPI8_2
	cmp	r1, #0
	ldr	r1, .LCPI8_4
	movne	r3, r0
	mov	r0, r12
	bl	fprintf
	mov	r0, #1
	bl	xexit
	.align	2
@ BB#1:
.LCPI8_0:
	.long	stderr
.LCPI8_1:
	.long	name
.LCPI8_2:
	.long	.L.str117
.LCPI8_3:
	.long	.L.str218
.LCPI8_4:
	.long	.L.str16
.Ltmp8:
	.size	xmalloc_failed, .Ltmp8-xmalloc_failed

	.globl	xmalloc
	.align	2
	.type	xmalloc,%function
xmalloc:                                @ @xmalloc
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	mov	r4, r0
	add	r11, sp, #8
	cmp	r4, #0
	moveq	r4, #1
	mov	r0, r4
	bl	malloc
	mov	r5, r0
	mov	r0, #37
	mov	r1, #27
	cmp	r5, #0
	beq	.LBB9_2
@ BB#1:                                 @ %if.end2
	mov	r2, #1
	bl	branchCounter
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	bx	lr
.LBB9_2:                                @ %if.then1
	mov	r2, #0
	bl	branchCounter
	mov	r0, r4
	bl	xmalloc_failed
.Ltmp9:
	.size	xmalloc, .Ltmp9-xmalloc

	.globl	xcalloc
	.align	2
	.type	xcalloc,%function
xcalloc:                                @ @xcalloc
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #4
	mov	r4, r1
	mov	r5, r0
	mov	r1, #0
	mov	r0, #0
	cmp	r4, #0
	moveq	r1, #1
	cmp	r5, #0
	moveq	r0, #1
	orrs	r0, r0, r1
	movne	r5, #1
	movne	r4, #1
	mov	r0, r5
	mov	r1, r4
	bl	calloc
	mov	r6, r0
	mov	r0, #40
	mov	r1, #28
	cmp	r6, #0
	beq	.LBB10_2
@ BB#1:                                 @ %if.end3
	mov	r2, #1
	bl	branchCounter
	mov	r0, r6
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	bx	lr
.LBB10_2:                               @ %if.then2
	mov	r2, #0
	bl	branchCounter
	mul	r0, r5, r4
	bl	xmalloc_failed
.Ltmp10:
	.size	xcalloc, .Ltmp10-xcalloc

	.globl	xrealloc
	.align	2
	.type	xrealloc,%function
xrealloc:                               @ @xrealloc
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	mov	r4, r1
	mov	r5, r0
	mov	r0, #43
	mov	r1, #29
	add	r11, sp, #8
	cmp	r4, #0
	moveq	r4, #1
	cmp	r5, #0
	beq	.LBB11_2
@ BB#1:                                 @ %if.else
	mov	r2, #1
	bl	branchCounter
	mov	r0, r5
	mov	r1, r4
	bl	realloc
	b	.LBB11_3
.LBB11_2:                               @ %if.then1
	mov	r2, #0
	bl	branchCounter
	mov	r0, r4
	bl	malloc
.LBB11_3:                               @ %if.end3
	mov	r5, r0
	mov	r0, #46
	mov	r1, #32
	cmp	r5, #0
	beq	.LBB11_5
@ BB#4:                                 @ %if.end6
	mov	r2, #1
	bl	branchCounter
	mov	r0, r5
	pop	{r4, r5, r11, lr}
	bx	lr
.LBB11_5:                               @ %if.then5
	mov	r2, #0
	bl	branchCounter
	mov	r0, r4
	bl	xmalloc_failed
.Ltmp11:
	.size	xrealloc, .Ltmp11-xrealloc

	.type	libiberty_concat_ptr,%object @ @libiberty_concat_ptr
	.comm	libiberty_concat_ptr,4,4
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"\"\" = \"%s\"\n"
	.size	.L.str, 11

	.type	.L.str1,%object         @ @.str1
.L.str1:
	.asciz	"\"a\" = \"%s\"\n"
	.size	.L.str1, 12

	.type	.L.str2,%object         @ @.str2
.L.str2:
	.asciz	"a"
	.size	.L.str2, 2

	.type	.L.str3,%object         @ @.str3
.L.str3:
	.asciz	"\"ab\" = \"%s\"\n"
	.size	.L.str3, 13

	.type	.L.str4,%object         @ @.str4
.L.str4:
	.asciz	"b"
	.size	.L.str4, 2

	.type	.L.str5,%object         @ @.str5
.L.str5:
	.asciz	"\"abc\" = \"%s\"\n"
	.size	.L.str5, 14

	.type	.L.str6,%object         @ @.str6
.L.str6:
	.asciz	"c"
	.size	.L.str6, 2

	.type	.L.str7,%object         @ @.str7
.L.str7:
	.asciz	"\"abcd\" = \"%s\"\n"
	.size	.L.str7, 15

	.type	.L.str8,%object         @ @.str8
.L.str8:
	.asciz	"ab"
	.size	.L.str8, 3

	.type	.L.str9,%object         @ @.str9
.L.str9:
	.asciz	"cd"
	.size	.L.str9, 3

	.type	.L.str10,%object        @ @.str10
.L.str10:
	.asciz	"\"abcde\" = \"%s\"\n"
	.size	.L.str10, 16

	.type	.L.str11,%object        @ @.str11
.L.str11:
	.asciz	"de"
	.size	.L.str11, 3

	.type	.L.str12,%object        @ @.str12
.L.str12:
	.asciz	"\"abcdef\" = \"%s\"\n"
	.size	.L.str12, 17

	.type	.L.str13,%object        @ @.str13
.L.str13:
	.zero	1
	.size	.L.str13, 1

	.type	.L.str14,%object        @ @.str14
.L.str14:
	.asciz	"bcd"
	.size	.L.str14, 4

	.type	.L.str15,%object        @ @.str15
.L.str15:
	.asciz	"ef"
	.size	.L.str15, 3

	.type	_xexit_cleanup,%object  @ @_xexit_cleanup
	.comm	_xexit_cleanup,4,4
	.type	name,%object            @ @name
	.section	.data.rel.local,"aw",%progbits
	.align	2
name:
	.long	.L.str218
	.size	name, 4

	.type	.L.str16,%object        @ @.str16
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str16:
	.asciz	"\n%s%sCannot allocate %lu bytes\n"
	.size	.L.str16, 32

	.type	.L.str117,%object       @ @.str117
.L.str117:
	.asciz	": "
	.size	.L.str117, 3

	.type	.L.str218,%object       @ @.str218
.L.str218:
	.zero	1
	.size	.L.str218, 1


