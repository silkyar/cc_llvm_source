	.file	"a.bc"
	.text
	.globl	concat_length
	.align	16, 0x90
	.type	concat_length,@function
concat_length:                          # @concat_length
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$216, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 224
	testb	%al, %al
	je	.LBB0_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB0_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdi, 208(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	movq	208(%rsp), %rdi
	leaq	176(%rsp), %rsi
	callq	vconcat_length
	movq	%rax, 200(%rsp)
	addq	$216, %rsp
	ret
.Ltmp2:
	.size	concat_length, .Ltmp2-concat_length
	.cfi_endproc

	.align	16, 0x90
	.type	vconcat_length,@function
vconcat_length:                         # @vconcat_length
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$40, %rsp
.Ltmp4:
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	$0, 16(%rsp)
	movq	32(%rsp), %rax
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_3:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	16(%rax), %rdx
	leal	8(%rcx), %esi
	movl	%esi, (%rax)
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	(%rcx), %rax
.LBB1_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 8(%rsp)
	cmpq	$0, 8(%rsp)
	je	.LBB1_6
# BB#2:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	8(%rsp), %rdi
	callq	strlen
	addq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	jbe	.LBB1_3
# BB#4:                                 # %vaarg.in_mem
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	8(%rax), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	(%rcx), %rax
	jmp	.LBB1_1
.LBB1_6:                                # %for.end
	movq	16(%rsp), %rax
	addq	$40, %rsp
	ret
.Ltmp5:
	.size	vconcat_length, .Ltmp5-vconcat_length
	.cfi_endproc

	.globl	concat_copy
	.align	16, 0x90
	.type	concat_copy,@function
concat_copy:                            # @concat_copy
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$232, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 240
	testb	%al, %al
	je	.LBB2_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB2_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rdi, 224(%rsp)
	movq	%rsi, 216(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	240(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	movq	216(%rsp), %rsi
	movq	224(%rsp), %rdi
	leaq	176(%rsp), %rdx
	callq	vconcat_copy
	movq	224(%rsp), %rax
	movq	%rax, 208(%rsp)
	addq	$232, %rsp
	ret
.Ltmp8:
	.size	concat_copy, .Ltmp8-concat_copy
	.cfi_endproc

	.align	16, 0x90
	.type	vconcat_copy,@function
vconcat_copy:                           # @vconcat_copy
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$56, %rsp
.Ltmp10:
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	%rsi, 40(%rsp)
	movq	%rdx, 32(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	40(%rsp), %rax
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_3:                                # %vaarg.in_reg
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	16(%rax), %rdx
	leal	8(%rcx), %esi
	movl	%esi, (%rax)
	movslq	%ecx, %rcx
	addq	%rdx, %rcx
	movq	(%rcx), %rax
.LBB3_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, 16(%rsp)
	cmpq	$0, 16(%rsp)
	je	.LBB3_6
# BB#2:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	16(%rsp), %rdi
	callq	strlen
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rdi
	movq	%rax, %rdx
	callq	memcpy
	movq	8(%rsp), %rax
	addq	%rax, 24(%rsp)
	movq	32(%rsp), %rax
	movl	(%rax), %ecx
	cmpl	$40, %ecx
	jbe	.LBB3_3
# BB#4:                                 # %vaarg.in_mem
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	8(%rax), %rcx
	leaq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	(%rcx), %rax
	jmp	.LBB3_1
.LBB3_6:                                # %for.end
	movq	24(%rsp), %rax
	movb	$0, (%rax)
	movq	48(%rsp), %rax
	addq	$56, %rsp
	ret
.Ltmp11:
	.size	vconcat_copy, .Ltmp11-vconcat_copy
	.cfi_endproc

	.globl	concat_copy2
	.align	16, 0x90
	.type	concat_copy2,@function
concat_copy2:                           # @concat_copy2
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$216, %rsp
.Ltmp13:
	.cfi_def_cfa_offset 224
	testb	%al, %al
	je	.LBB4_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB4_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdi, 208(%rsp)
	leaq	(%rsp), %rax
	movq	%rax, 192(%rsp)
	leaq	224(%rsp), %rax
	movq	%rax, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	movq	208(%rsp), %rsi
	movq	libiberty_concat_ptr(%rip), %rdi
	leaq	176(%rsp), %rdx
	callq	vconcat_copy
	movq	libiberty_concat_ptr(%rip), %rax
	addq	$216, %rsp
	ret
.Ltmp14:
	.size	concat_copy2, .Ltmp14-concat_copy2
	.cfi_endproc

	.globl	concat
	.align	16, 0x90
	.type	concat,@function
concat:                                 # @concat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp18:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp19:
	.cfi_def_cfa_offset 24
	subq	$248, %rsp
.Ltmp20:
	.cfi_def_cfa_offset 272
.Ltmp21:
	.cfi_offset %rbx, -24
.Ltmp22:
	.cfi_offset %r14, -16
	testb	%al, %al
	je	.LBB5_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB5_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdi, 240(%rsp)
	leaq	(%rsp), %r14
	movq	%r14, 224(%rsp)
	leaq	272(%rsp), %rbx
	movq	%rbx, 216(%rsp)
	movl	$48, 212(%rsp)
	movl	$8, 208(%rsp)
	movq	240(%rsp), %rdi
	leaq	208(%rsp), %rsi
	callq	vconcat_length
	leaq	1(%rax), %rdi
	callq	xmalloc
	leaq	176(%rsp), %rdx
	movq	%rax, 232(%rsp)
	movq	%r14, 192(%rsp)
	movq	%rbx, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$8, 176(%rsp)
	movq	240(%rsp), %rsi
	movq	232(%rsp), %rdi
	callq	vconcat_copy
	movq	232(%rsp), %rax
	addq	$248, %rsp
	popq	%rbx
	popq	%r14
	ret
.Ltmp23:
	.size	concat, .Ltmp23-concat
	.cfi_endproc

	.globl	reconcat
	.align	16, 0x90
	.type	reconcat,@function
reconcat:                               # @reconcat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp27:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 24
	subq	$264, %rsp              # imm = 0x108
.Ltmp29:
	.cfi_def_cfa_offset 288
.Ltmp30:
	.cfi_offset %rbx, -24
.Ltmp31:
	.cfi_offset %r14, -16
	testb	%al, %al
	je	.LBB6_2
# BB#1:                                 # %entry
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB6_2:                                # %entry
	movq	%r9, 40(%rsp)
	movq	%r8, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rdi, 256(%rsp)
	movq	%rsi, 248(%rsp)
	leaq	(%rsp), %r14
	movq	%r14, 224(%rsp)
	leaq	288(%rsp), %rbx
	movq	%rbx, 216(%rsp)
	movl	$48, 212(%rsp)
	movl	$16, 208(%rsp)
	movq	248(%rsp), %rdi
	leaq	208(%rsp), %rsi
	callq	vconcat_length
	leaq	1(%rax), %rdi
	callq	xmalloc
	leaq	176(%rsp), %rdx
	movq	%rax, 240(%rsp)
	movq	%r14, 192(%rsp)
	movq	%rbx, 184(%rsp)
	movl	$48, 180(%rsp)
	movl	$16, 176(%rsp)
	movq	248(%rsp), %rsi
	movq	240(%rsp), %rdi
	callq	vconcat_copy
	cmpq	$0, 256(%rsp)
	je	.LBB6_4
# BB#3:                                 # %if.then
	movq	256(%rsp), %rdi
	callq	free
.LBB6_4:                                # %if.end
	movq	240(%rsp), %rax
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	ret
.Ltmp32:
	.size	reconcat, .Ltmp32-reconcat
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp34:
	.cfi_def_cfa_offset 16
	movl	$0, 4(%rsp)
	xorl	%edi, %edi
	xorb	%al, %al
	callq	concat
	movl	$.L.str, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	movl	$.L.str2, %edi
	xorl	%esi, %esi
	xorb	%al, %al
	callq	concat
	movl	$.L.str1, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	movl	$.L.str2, %edi
	movl	$.L.str4, %esi
	xorl	%edx, %edx
	xorb	%al, %al
	callq	concat
	movl	$.L.str3, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	movl	$.L.str2, %edi
	movl	$.L.str4, %esi
	movl	$.L.str6, %edx
	xorl	%ecx, %ecx
	xorb	%al, %al
	callq	concat
	movl	$.L.str5, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	movl	$.L.str8, %edi
	movl	$.L.str9, %esi
	xorl	%edx, %edx
	xorb	%al, %al
	callq	concat
	movl	$.L.str7, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	movl	$.L.str8, %edi
	movl	$.L.str6, %esi
	movl	$.L.str11, %edx
	xorl	%ecx, %ecx
	xorb	%al, %al
	callq	concat
	movl	$.L.str10, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	movl	$.L.str13, %edi
	movl	$.L.str2, %esi
	movl	$.L.str13, %edx
	movl	$.L.str14, %ecx
	movl	$.L.str15, %r8d
	xorl	%r9d, %r9d
	xorb	%al, %al
	callq	concat
	movl	$.L.str12, %edi
	movq	%rax, %rsi
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	popq	%rdx
	ret
.Ltmp35:
	.size	main, .Ltmp35-main
	.cfi_endproc

	.globl	xexit
	.align	16, 0x90
	.type	xexit,@function
xexit:                                  # @xexit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp37:
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	cmpq	$0, _xexit_cleanup(%rip)
	je	.LBB8_2
# BB#1:                                 # %if.then
	callq	*_xexit_cleanup(%rip)
.LBB8_2:                                # %if.end
	movl	4(%rsp), %edi
	callq	exit
.Ltmp38:
	.size	xexit, .Ltmp38-xexit
	.cfi_endproc

	.globl	xmalloc_set_program_name
	.align	16, 0x90
	.type	xmalloc_set_program_name,@function
xmalloc_set_program_name:               # @xmalloc_set_program_name
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, -8(%rsp)
	movq	%rdi, name(%rip)
	ret
.Ltmp39:
	.size	xmalloc_set_program_name, .Ltmp39-xmalloc_set_program_name
	.cfi_endproc

	.globl	xmalloc_failed
	.align	16, 0x90
	.type	xmalloc_failed,@function
xmalloc_failed:                         # @xmalloc_failed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	%rax, (%rsp)
	movq	name(%rip), %rdx
	movsbl	(%rdx), %edi
	movl	$.L.str117, %esi
	movl	$.L.str218, %ecx
	testl	%edi, %edi
	cmovneq	%rsi, %rcx
	movq	stderr(%rip), %rdi
	movl	$.L.str16, %esi
	movq	%rax, %r8
	xorb	%al, %al
	callq	fprintf
	movl	$1, %edi
	callq	xexit
.Ltmp42:
	.size	xmalloc_failed, .Ltmp42-xmalloc_failed
	.cfi_endproc

	.globl	xmalloc
	.align	16, 0x90
	.type	xmalloc,@function
xmalloc:                                # @xmalloc
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp44:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	testq	%rdi, %rdi
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	$1, 16(%rsp)
.LBB11_2:                               # %if.end
	movq	16(%rsp), %rdi
	callq	malloc
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB11_4
# BB#3:                                 # %if.end2
	movq	8(%rsp), %rax
	addq	$24, %rsp
	ret
.LBB11_4:                               # %if.then1
	movq	16(%rsp), %rdi
	callq	xmalloc_failed
.Ltmp45:
	.size	xmalloc, .Ltmp45-xmalloc
	.cfi_endproc

	.globl	xcalloc
	.align	16, 0x90
	.type	xcalloc,@function
xcalloc:                                # @xcalloc
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp47:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	cmpq	$0, 16(%rsp)
	je	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, 8(%rsp)
	jne	.LBB12_3
.LBB12_2:                               # %if.then
	movq	$1, 8(%rsp)
	movq	$1, 16(%rsp)
.LBB12_3:                               # %if.end
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	callq	calloc
	movq	%rax, (%rsp)
	testq	%rax, %rax
	je	.LBB12_5
# BB#4:                                 # %if.end3
	movq	(%rsp), %rax
	addq	$24, %rsp
	ret
.LBB12_5:                               # %if.then2
	movq	16(%rsp), %rdi
	imulq	8(%rsp), %rdi
	callq	xmalloc_failed
.Ltmp48:
	.size	xcalloc, .Ltmp48-xcalloc
	.cfi_endproc

	.globl	xrealloc
	.align	16, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp50:
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	testq	%rsi, %rsi
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	$1, 8(%rsp)
.LBB13_2:                               # %if.end
	cmpq	$0, 16(%rsp)
	je	.LBB13_3
# BB#4:                                 # %if.else
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	callq	realloc
	jmp	.LBB13_5
.LBB13_3:                               # %if.then1
	movq	8(%rsp), %rdi
	callq	malloc
.LBB13_5:                               # %if.else
	movq	%rax, (%rsp)
	cmpq	$0, (%rsp)
	je	.LBB13_7
# BB#6:                                 # %if.end6
	movq	(%rsp), %rax
	addq	$24, %rsp
	ret
.LBB13_7:                               # %if.then5
	movq	8(%rsp), %rdi
	callq	xmalloc_failed
.Ltmp51:
	.size	xrealloc, .Ltmp51-xrealloc
	.cfi_endproc

	.type	libiberty_concat_ptr,@object # @libiberty_concat_ptr
	.comm	libiberty_concat_ptr,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "\"\" = \"%s\"\n"
	.size	.L.str, 11

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	 "\"a\" = \"%s\"\n"
	.size	.L.str1, 12

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	 "a"
	.size	.L.str2, 2

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	 "\"ab\" = \"%s\"\n"
	.size	.L.str3, 13

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	 "b"
	.size	.L.str4, 2

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	 "\"abc\" = \"%s\"\n"
	.size	.L.str5, 14

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	 "c"
	.size	.L.str6, 2

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	 "\"abcd\" = \"%s\"\n"
	.size	.L.str7, 15

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	 "ab"
	.size	.L.str8, 3

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	 "cd"
	.size	.L.str9, 3

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	 "\"abcde\" = \"%s\"\n"
	.size	.L.str10, 16

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	 "de"
	.size	.L.str11, 3

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	 "\"abcdef\" = \"%s\"\n"
	.size	.L.str12, 17

	.type	.L.str13,@object        # @.str13
.L.str13:
	.zero	1
	.size	.L.str13, 1

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	 "bcd"
	.size	.L.str14, 4

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	 "ef"
	.size	.L.str15, 3

	.type	_xexit_cleanup,@object  # @_xexit_cleanup
	.comm	_xexit_cleanup,8,8
	.type	name,@object            # @name
	.data
	.align	8
name:
	.quad	.L.str218
	.size	name, 8

	.type	.L.str16,@object        # @.str16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str16:
	.asciz	 "\n%s%sCannot allocate %lu bytes\n"
	.size	.L.str16, 32

	.type	.L.str117,@object       # @.str117
.L.str117:
	.asciz	 ": "
	.size	.L.str117, 3

	.type	.L.str218,@object       # @.str218
.L.str218:
	.zero	1
	.size	.L.str218, 1


	.section	".note.GNU-stack","",@progbits
