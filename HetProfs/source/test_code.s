	.file	"test_code.bc"
	.text
	.globl	concat_length
	.align	16, 0x90
	.type	concat_length,@function
concat_length:                          # @concat_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	testb	%al, %al
	je	.LBB0_2
# BB#1:                                 # %entry
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB0_2:                                # %entry
	movq	%r9, -184(%rbp)
	movq	%r8, -192(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rsi, -216(%rbp)
	movq	%rdi, -8(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$8, -48(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	callq	vconcat_length
	movq	%rax, -16(%rbp)
	addq	$224, %rsp
	popq	%rbp
	ret
.Ltmp5:
	.size	concat_length, .Ltmp5-concat_length
	.cfi_endproc

	.align	16, 0x90
	.type	vconcat_length,@function
vconcat_length:                         # @vconcat_length
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rax
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
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB1_6
# BB#2:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	strlen
	addq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
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
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.Ltmp11:
	.size	vconcat_length, .Ltmp11-vconcat_length
	.cfi_endproc

	.globl	concat_copy
	.align	16, 0x90
	.type	concat_copy,@function
concat_copy:                            # @concat_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	testb	%al, %al
	je	.LBB2_2
# BB#1:                                 # %entry
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB2_2:                                # %entry
	movq	%r9, -184(%rbp)
	movq	%r8, -192(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$48, -44(%rbp)
	movl	$16, -48(%rbp)
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	leaq	-48(%rbp), %rdx
	callq	vconcat_copy
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	addq	$224, %rsp
	popq	%rbp
	ret
.Ltmp17:
	.size	concat_copy, .Ltmp17-concat_copy
	.cfi_endproc

	.align	16, 0x90
	.type	vconcat_copy,@function
vconcat_copy:                           # @vconcat_copy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
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
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB3_6
# BB#2:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-40(%rbp), %rdi
	callq	strlen
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movq	%rax, %rdx
	callq	memcpy
	movq	-48(%rbp), %rax
	addq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
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
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	ret
.Ltmp23:
	.size	vconcat_copy, .Ltmp23-vconcat_copy
	.cfi_endproc

	.globl	concat_copy2
	.align	16, 0x90
	.type	concat_copy2,@function
concat_copy2:                           # @concat_copy2
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB4_2
# BB#1:                                 # %entry
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB4_2:                                # %entry
	movq	%r9, -168(%rbp)
	movq	%r8, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rsi, -200(%rbp)
	movq	%rdi, -8(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	libiberty_concat_ptr(%rip), %rdi
	leaq	-32(%rbp), %rdx
	callq	vconcat_copy
	movq	libiberty_concat_ptr(%rip), %rax
	addq	$208, %rsp
	popq	%rbp
	ret
.Ltmp29:
	.size	concat_copy2, .Ltmp29-concat_copy2
	.cfi_endproc

	.globl	concat
	.align	16, 0x90
	.type	concat,@function
concat:                                 # @concat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp36:
	.cfi_offset %rbx, -32
.Ltmp37:
	.cfi_offset %r14, -24
	testb	%al, %al
	je	.LBB5_2
# BB#1:                                 # %entry
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm1, -208(%rbp)
	movaps	%xmm2, -192(%rbp)
	movaps	%xmm3, -176(%rbp)
	movaps	%xmm4, -160(%rbp)
	movaps	%xmm5, -144(%rbp)
	movaps	%xmm6, -128(%rbp)
	movaps	%xmm7, -112(%rbp)
.LBB5_2:                                # %entry
	movq	%r9, -232(%rbp)
	movq	%r8, -240(%rbp)
	movq	%rcx, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rsi, -264(%rbp)
	movq	%rdi, -24(%rbp)
	leaq	-272(%rbp), %r14
	movq	%r14, -48(%rbp)
	leaq	16(%rbp), %rbx
	movq	%rbx, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$8, -64(%rbp)
	movq	-24(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	vconcat_length
	leaq	1(%rax), %rdi
	callq	xmalloc
	leaq	-96(%rbp), %rdx
	movq	%rax, -32(%rbp)
	movq	%r14, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movl	$48, -92(%rbp)
	movl	$8, -96(%rbp)
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdi
	callq	vconcat_copy
	movq	-32(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp38:
	.size	concat, .Ltmp38-concat
	.cfi_endproc

	.globl	reconcat
	.align	16, 0x90
	.type	reconcat,@function
reconcat:                               # @reconcat
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
.Ltmp45:
	.cfi_offset %rbx, -32
.Ltmp46:
	.cfi_offset %r14, -24
	testb	%al, %al
	je	.LBB6_2
# BB#1:                                 # %entry
	movaps	%xmm0, -224(%rbp)
	movaps	%xmm1, -208(%rbp)
	movaps	%xmm2, -192(%rbp)
	movaps	%xmm3, -176(%rbp)
	movaps	%xmm4, -160(%rbp)
	movaps	%xmm5, -144(%rbp)
	movaps	%xmm6, -128(%rbp)
	movaps	%xmm7, -112(%rbp)
.LBB6_2:                                # %entry
	movq	%r9, -232(%rbp)
	movq	%r8, -240(%rbp)
	movq	%rcx, -248(%rbp)
	movq	%rdx, -256(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	leaq	-272(%rbp), %r14
	movq	%r14, -48(%rbp)
	leaq	16(%rbp), %rbx
	movq	%rbx, -56(%rbp)
	movl	$48, -60(%rbp)
	movl	$16, -64(%rbp)
	movq	-32(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	vconcat_length
	leaq	1(%rax), %rdi
	callq	xmalloc
	leaq	-96(%rbp), %rdx
	movq	%rax, -40(%rbp)
	movq	%r14, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movl	$48, -92(%rbp)
	movl	$16, -96(%rbp)
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdi
	callq	vconcat_copy
	cmpq	$0, -24(%rbp)
	je	.LBB6_4
# BB#3:                                 # %if.then
	movq	-24(%rbp), %rdi
	callq	free
.LBB6_4:                                # %if.end
	movq	-40(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
.Ltmp47:
	.size	reconcat, .Ltmp47-reconcat
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	concat
	movl	$.L.str, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str2, %edi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	concat
	movl	$.L.str1, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str2, %edi
	movl	$.L.str4, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	concat
	movl	$.L.str3, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str2, %edi
	movl	$.L.str4, %esi
	movl	$.L.str6, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	concat
	movl	$.L.str5, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str8, %edi
	movl	$.L.str9, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	concat
	movl	$.L.str7, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str8, %edi
	movl	$.L.str6, %esi
	movl	$.L.str11, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	concat
	movl	$.L.str10, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str13, %edi
	movl	$.L.str2, %esi
	movl	$.L.str13, %edx
	movl	$.L.str14, %ecx
	movl	$.L.str15, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	concat
	movl	$.L.str12, %edi
	movq	%rax, %rsi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	popq	%rbp
	ret
.Ltmp53:
	.size	main, .Ltmp53-main
	.cfi_endproc

	.globl	xexit
	.align	16, 0x90
	.type	xexit,@function
xexit:                                  # @xexit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpq	$0, _xexit_cleanup(%rip)
	je	.LBB8_2
# BB#1:                                 # %if.then
	callq	*_xexit_cleanup(%rip)
.LBB8_2:                                # %if.end
	movl	-4(%rbp), %edi
	callq	exit
.Ltmp59:
	.size	xexit, .Ltmp59-xexit
	.cfi_endproc

	.globl	xmalloc_set_program_name
	.align	16, 0x90
	.type	xmalloc_set_program_name,@function
xmalloc_set_program_name:               # @xmalloc_set_program_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rdi, name(%rip)
	popq	%rbp
	ret
.Ltmp65:
	.size	xmalloc_set_program_name, .Ltmp65-xmalloc_set_program_name
	.cfi_endproc

	.globl	xmalloc_failed
	.align	16, 0x90
	.type	xmalloc_failed,@function
xmalloc_failed:                         # @xmalloc_failed
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movl	$.L.str117, %esi
	movl	$.L.str218, %ecx
	movq	name(%rip), %rdx
	movsbl	(%rdx), %edi
	testl	%edi, %edi
	cmovneq	%rsi, %rcx
	movq	stderr(%rip), %rdi
	movl	$.L.str16, %esi
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	xexit
.Ltmp71:
	.size	xmalloc_failed, .Ltmp71-xmalloc_failed
	.cfi_endproc

	.globl	xmalloc
	.align	16, 0x90
	.type	xmalloc,@function
xmalloc:                                # @xmalloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	testq	%rdi, %rdi
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	$1, -8(%rbp)
.LBB11_2:                               # %if.end
	movq	-8(%rbp), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	je	.LBB11_4
# BB#3:                                 # %if.end2
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
.LBB11_4:                               # %if.then1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	xmalloc_failed
.Ltmp77:
	.size	xmalloc, .Ltmp77-xmalloc
	.cfi_endproc

	.globl	xcalloc
	.align	16, 0x90
	.type	xcalloc,@function
xcalloc:                                # @xcalloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
.Ltmp81:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp82:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB12_2
# BB#1:                                 # %lor.lhs.false
	cmpq	$0, -16(%rbp)
	jne	.LBB12_3
.LBB12_2:                               # %if.then
	movq	$1, -16(%rbp)
	movq	$1, -8(%rbp)
.LBB12_3:                               # %if.end
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	calloc
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	je	.LBB12_5
# BB#4:                                 # %if.end3
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.LBB12_5:                               # %if.then2
	movq	-8(%rbp), %rax
	imulq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xmalloc_failed
.Ltmp83:
	.size	xcalloc, .Ltmp83-xcalloc
	.cfi_endproc

	.globl	xrealloc
	.align	16, 0x90
	.type	xrealloc,@function
xrealloc:                               # @xrealloc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	testq	%rsi, %rsi
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	$1, -16(%rbp)
.LBB13_2:                               # %if.end
	cmpq	$0, -8(%rbp)
	je	.LBB13_3
# BB#4:                                 # %if.else
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	realloc
	jmp	.LBB13_5
.LBB13_3:                               # %if.then1
	movq	-16(%rbp), %rdi
	callq	malloc
.LBB13_5:                               # %if.end3
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB13_7
# BB#6:                                 # %if.end6
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	ret
.LBB13_7:                               # %if.then5
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xmalloc_failed
.Ltmp89:
	.size	xrealloc, .Ltmp89-xrealloc
	.cfi_endproc

	.type	libiberty_concat_ptr,@object # @libiberty_concat_ptr
	.comm	libiberty_concat_ptr,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\"\" = \"%s\"\n"
	.size	.L.str, 11

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"\"a\" = \"%s\"\n"
	.size	.L.str1, 12

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"a"
	.size	.L.str2, 2

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"\"ab\" = \"%s\"\n"
	.size	.L.str3, 13

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"b"
	.size	.L.str4, 2

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"\"abc\" = \"%s\"\n"
	.size	.L.str5, 14

	.type	.L.str6,@object         # @.str6
.L.str6:
	.asciz	"c"
	.size	.L.str6, 2

	.type	.L.str7,@object         # @.str7
.L.str7:
	.asciz	"\"abcd\" = \"%s\"\n"
	.size	.L.str7, 15

	.type	.L.str8,@object         # @.str8
.L.str8:
	.asciz	"ab"
	.size	.L.str8, 3

	.type	.L.str9,@object         # @.str9
.L.str9:
	.asciz	"cd"
	.size	.L.str9, 3

	.type	.L.str10,@object        # @.str10
.L.str10:
	.asciz	"\"abcde\" = \"%s\"\n"
	.size	.L.str10, 16

	.type	.L.str11,@object        # @.str11
.L.str11:
	.asciz	"de"
	.size	.L.str11, 3

	.type	.L.str12,@object        # @.str12
.L.str12:
	.asciz	"\"abcdef\" = \"%s\"\n"
	.size	.L.str12, 17

	.type	.L.str13,@object        # @.str13
.L.str13:
	.zero	1
	.size	.L.str13, 1

	.type	.L.str14,@object        # @.str14
.L.str14:
	.asciz	"bcd"
	.size	.L.str14, 4

	.type	.L.str15,@object        # @.str15
.L.str15:
	.asciz	"ef"
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
	.asciz	"\n%s%sCannot allocate %lu bytes\n"
	.size	.L.str16, 32

	.type	.L.str117,@object       # @.str117
.L.str117:
	.asciz	": "
	.size	.L.str117, 3

	.type	.L.str218,@object       # @.str218
.L.str218:
	.zero	1
	.size	.L.str218, 1


	.section	".note.GNU-stack","",@progbits
