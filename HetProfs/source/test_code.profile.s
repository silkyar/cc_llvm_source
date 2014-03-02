	.file	"test_code.profile.bc"
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$EdgeProfCounters, %edx
	movl	$2, %ecx
	callq	llvm_start_edge_profiling
	incl	EdgeProfCounters(%rip)
	movl	$20, 20(%rsp)
	leaq	20(%rsp), %rdi
	movq	%rdi, 8(%rsp)
	callq	incr_a
	movl	20(%rsp), %esi
	movl	$.L.str, %edi
	xorb	%al, %al
	callq	printf
	xorl	%eax, %eax
	addq	$24, %rsp
	ret
.Ltmp2:
	.size	main, .Ltmp2-main
	.cfi_endproc

	.globl	incr_a
	.align	16, 0x90
	.type	incr_a,@function
incr_a:                                 # @incr_a
	.cfi_startproc
# BB#0:                                 # %entry
	incl	EdgeProfCounters+4(%rip)
	movq	%rdi, -8(%rsp)
	movl	$30, (%rdi)
	ret
.Ltmp3:
	.size	incr_a, .Ltmp3-incr_a
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d"
	.size	.L.str, 3

	.type	EdgeProfCounters,@object # @EdgeProfCounters
	.local	EdgeProfCounters
	.comm	EdgeProfCounters,8,4

	.section	".note.GNU-stack","",@progbits
