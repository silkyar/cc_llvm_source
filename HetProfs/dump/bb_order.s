	.file	"bb_order.bc"
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
	movl	$0, 20(%rsp)
	movl	$10, 16(%rsp)
	movl	$0, 12(%rsp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_4:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	incl	12(%rsp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, 12(%rsp)
	jg	.LBB0_5
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	12(%rsp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	12(%rsp), %edi
	callq	let_us_print
	jmp	.LBB0_4
.LBB0_5:                                # %for.end
	xorl	%eax, %eax
	addq	$24, %rsp
	ret
.Ltmp2:
	.size	main, .Ltmp2-main
	.cfi_endproc

	.globl	let_us_print
	.align	16, 0x90
	.type	let_us_print,@function
let_us_print:                           # @let_us_print
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 16
	movl	%edi, %eax
	movl	%eax, 4(%rsp)
	movl	$.L.str, %edi
	movl	%eax, %esi
	xorb	%al, %al
	callq	printf
	popq	%rax
	ret
.Ltmp5:
	.size	let_us_print, .Ltmp5-let_us_print
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	 "%d \n"
	.size	.L.str, 5


	.section	".note.GNU-stack","",@progbits
