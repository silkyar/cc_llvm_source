	.syntax unified
	.eabi_attribute 6, 2
	.eabi_attribute 8, 1
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.file	"cacheSim.bc"
	.section	.text.startup,"ax",%progbits
	.align	2
	.type	__cxx_global_var_init,%function
__cxx_global_var_init:                  @ @__cxx_global_var_init
@ BB#0:                                 @ %entry
	push	{r4, lr}
	ldr	r4, .LCPI0_0
	mov	r0, r4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r0, .LCPI0_1
	ldr	r2, .LCPI0_2
	mov	r1, r4
	bl	__cxa_atexit
	pop	{r4, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI0_0:
	.long	_MergedGlobals
.LCPI0_1:
	.long	_ZNSt8ios_base4InitD1Ev
.LCPI0_2:
	.long	__dso_handle
.Ltmp0:
	.size	__cxx_global_var_init, .Ltmp0-__cxx_global_var_init

	.align	2
	.type	__cxx_global_var_init1,%function
__cxx_global_var_init1:                 @ @__cxx_global_var_init1
@ BB#0:                                 @ %entry
	push	{r11, lr}
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev
	ldr	r1, .LCPI1_0
	str	r0, [r1]
	add	sp, sp, #8
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI1_0:
	.long	bb_br_mispr_map
.Ltmp1:
	.size	__cxx_global_var_init1, .Ltmp1-__cxx_global_var_init1

	.section	.text._ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev,"axG",%progbits,_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev,comdat
	.weak	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev
	.align	2
	.type	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev,%function
_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev: @ @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp2:
	.size	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev, .Ltmp2-_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev

	.section	.text.startup,"ax",%progbits
	.align	2
	.type	__cxx_global_var_init2,%function
__cxx_global_var_init2:                 @ @__cxx_global_var_init2
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev
	ldr	r1, .LCPI3_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI3_0:
	.long	_ZN6dcache10mcache1MapE
.Ltmp3:
	.size	__cxx_global_var_init2, .Ltmp3-__cxx_global_var_init2

	.section	.text._ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev,"axG",%progbits,_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev,comdat
	.weak	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev
	.align	2
	.type	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev,%function
_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev: @ @_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp4:
	.size	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev, .Ltmp4-_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev

	.section	.text.startup,"ax",%progbits
	.align	2
	.type	__cxx_global_var_init3,%function
__cxx_global_var_init3:                 @ @__cxx_global_var_init3
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev
	ldr	r1, .LCPI5_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI5_0:
	.long	_ZN6dcache10mcache2MapE
.Ltmp5:
	.size	__cxx_global_var_init3, .Ltmp5-__cxx_global_var_init3

	.align	2
	.type	__cxx_global_var_init4,%function
__cxx_global_var_init4:                 @ @__cxx_global_var_init4
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #8
	bl	_Znwj
	bl	_ZNSt4listISt4pairIjjESaIS1_EEC1Ev
	ldr	r1, .LCPI6_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI6_0:
	.long	_ZN6dcache11mcache1ListE
.Ltmp6:
	.size	__cxx_global_var_init4, .Ltmp6-__cxx_global_var_init4

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EEC1Ev,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EEC1Ev,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EEC1Ev
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EEC1Ev,%function
_ZNSt4listISt4pairIjjESaIS1_EEC1Ev:     @ @_ZNSt4listISt4pairIjjESaIS1_EEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt4listISt4pairIjjESaIS1_EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp7:
	.size	_ZNSt4listISt4pairIjjESaIS1_EEC1Ev, .Ltmp7-_ZNSt4listISt4pairIjjESaIS1_EEC1Ev

	.section	.text.startup,"ax",%progbits
	.align	2
	.type	__cxx_global_var_init5,%function
__cxx_global_var_init5:                 @ @__cxx_global_var_init5
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #8
	bl	_Znwj
	bl	_ZNSt4listISt4pairIjjESaIS1_EEC1Ev
	ldr	r1, .LCPI8_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI8_0:
	.long	_ZN6dcache11mcache2ListE
.Ltmp8:
	.size	__cxx_global_var_init5, .Ltmp8-__cxx_global_var_init5

	.align	2
	.type	__cxx_global_var_init6,%function
__cxx_global_var_init6:                 @ @__cxx_global_var_init6
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev
	ldr	r1, .LCPI9_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI9_0:
	.long	_ZN6dcache10L1miss_mapE
.Ltmp9:
	.size	__cxx_global_var_init6, .Ltmp9-__cxx_global_var_init6

	.align	2
	.type	__cxx_global_var_init7,%function
__cxx_global_var_init7:                 @ @__cxx_global_var_init7
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev
	ldr	r1, .LCPI10_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI10_0:
	.long	_ZN6dcache10L2miss_mapE
.Ltmp10:
	.size	__cxx_global_var_init7, .Ltmp10-__cxx_global_var_init7

	.align	2
	.type	__cxx_global_var_init8,%function
__cxx_global_var_init8:                 @ @__cxx_global_var_init8
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC1Ev
	ldr	r1, .LCPI11_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI11_0:
	.long	_ZN6dcache10mlp_bufferE
.Ltmp11:
	.size	__cxx_global_var_init8, .Ltmp11-__cxx_global_var_init8

	.section	.text._ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC1Ev,"axG",%progbits,_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC1Ev,comdat
	.weak	_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC1Ev
	.align	2
	.type	_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC1Ev,%function
_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC1Ev: @ @_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp12:
	.size	_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC1Ev, .Ltmp12-_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC1Ev

	.section	.text.startup,"ax",%progbits
	.align	2
	.type	__cxx_global_var_init9,%function
__cxx_global_var_init9:                 @ @__cxx_global_var_init9
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev
	ldr	r1, .LCPI13_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI13_0:
	.long	_ZN6icache10mcache1MapE
.Ltmp13:
	.size	__cxx_global_var_init9, .Ltmp13-__cxx_global_var_init9

	.align	2
	.type	__cxx_global_var_init10,%function
__cxx_global_var_init10:                @ @__cxx_global_var_init10
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC1Ev
	ldr	r1, .LCPI14_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI14_0:
	.long	_ZN6icache10mcache2MapE
.Ltmp14:
	.size	__cxx_global_var_init10, .Ltmp14-__cxx_global_var_init10

	.align	2
	.type	__cxx_global_var_init11,%function
__cxx_global_var_init11:                @ @__cxx_global_var_init11
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #8
	bl	_Znwj
	bl	_ZNSt4listISt4pairIjjESaIS1_EEC1Ev
	ldr	r1, .LCPI15_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI15_0:
	.long	_ZN6icache11mcache1ListE
.Ltmp15:
	.size	__cxx_global_var_init11, .Ltmp15-__cxx_global_var_init11

	.align	2
	.type	__cxx_global_var_init12,%function
__cxx_global_var_init12:                @ @__cxx_global_var_init12
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #8
	bl	_Znwj
	bl	_ZNSt4listISt4pairIjjESaIS1_EEC1Ev
	ldr	r1, .LCPI16_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI16_0:
	.long	_ZN6icache11mcache2ListE
.Ltmp16:
	.size	__cxx_global_var_init12, .Ltmp16-__cxx_global_var_init12

	.align	2
	.type	__cxx_global_var_init13,%function
__cxx_global_var_init13:                @ @__cxx_global_var_init13
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev
	ldr	r1, .LCPI17_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI17_0:
	.long	_ZN6icache10L1miss_mapE
.Ltmp17:
	.size	__cxx_global_var_init13, .Ltmp17-__cxx_global_var_init13

	.align	2
	.type	__cxx_global_var_init14,%function
__cxx_global_var_init14:                @ @__cxx_global_var_init14
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev
	ldr	r1, .LCPI18_0
	str	r0, [r1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI18_0:
	.long	_ZN6icache10L2miss_mapE
.Ltmp18:
	.size	__cxx_global_var_init14, .Ltmp18-__cxx_global_var_init14

	.text
	.globl	dCacheCounter
	.align	2
	.type	dCacheCounter,%function
dCacheCounter:                          @ @dCacheCounter
@ BB#0:                                 @ %if.end
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #48
	str	r1, [r11, #-24]
	str	r0, [r11, #-20]
	ldr	r1, [r11, #12]
	ldr	r0, [r11, #8]
	str	r2, [r11, #-28]
	ldr	r12, .LCPI19_4
	ldr	lr, .LCPI19_5
	mov	r6, #1808
	mov	r7, #1000
	ldr	r4, [r11, #-24]
	orr	r6, r6, #8192
	str	r1, [sp, #28]
	str	r0, [sp, #24]
	ldr	r0, .LCPI19_0
	ldr	r12, [r12]
	ldr	lr, [lr]
	ldr	r5, [sp, #24]
	ldr	r3, [r0]
	ldr	r0, .LCPI19_1
	ldr	r2, [r0]
	ldr	r0, .LCPI19_2
	ldr	r1, [r0]
	ldr	r0, .LCPI19_3
	ldr	r0, [r0]
	stm	sp, {r12, lr}
	str	r7, [sp, #8]
	str	r6, [sp, #12]
	str	r4, [sp, #16]
	str	r5, [sp, #20]
	bl	_Z8do_cachePSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEESA_PSt4listIS2_SaIS2_EESE_PS_IjjS5_SaIS1_IS6_jEEESI_iijj
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
	.align	2
@ BB#1:
.LCPI19_0:
	.long	_ZN6dcache11mcache2ListE
.LCPI19_1:
	.long	_ZN6dcache11mcache1ListE
.LCPI19_2:
	.long	_ZN6dcache10mcache2MapE
.LCPI19_3:
	.long	_ZN6dcache10mcache1MapE
.LCPI19_4:
	.long	_ZN6dcache10L1miss_mapE
.LCPI19_5:
	.long	_ZN6dcache10L2miss_mapE
.Ltmp19:
	.size	dCacheCounter, .Ltmp19-dCacheCounter

	.globl	_Z8do_cachePSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEESA_PSt4listIS2_SaIS2_EESE_PS_IjjS5_SaIS1_IS6_jEEESI_iijj
	.align	2
	.type	_Z8do_cachePSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEESA_PSt4listIS2_SaIS2_EESE_PS_IjjS5_SaIS1_IS6_jEEESI_iijj,%function
_Z8do_cachePSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEESA_PSt4listIS2_SaIS2_EESE_PS_IjjS5_SaIS1_IS6_jEEESI_iijj: @ @_Z8do_cachePSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEESA_PSt4listIS2_SaIS2_EESE_PS_IjjS5_SaIS1_IS6_jEEESI_iijj
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #76
	str	r0, [r11, #-8]
	ldr	r0, [r11, #8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [r11, #-20]
	str	r0, [r11, #-24]
	ldr	r0, [r11, #12]
	str	r0, [r11, #-28]
	ldr	r0, [r11, #16]
	str	r0, [r11, #-32]
	ldr	r0, [r11, #20]
	str	r0, [r11, #-36]
	ldr	r0, [r11, #24]
	str	r0, [sp, #40]
	ldr	r0, [r11, #28]
	ldr	r2, [sp, #40]
	str	r0, [sp, #36]
	mov	r0, #1
	ldr	r1, [sp, #36]
	strb	r0, [sp, #35]
	add	r0, sp, #24
	bl	_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_
	ldr	r1, [sp, #36]
	ldr	r0, [r11, #-8]
	bl	_Z13is_cache_missPSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEj
	cmp	r0, #1
	bne	.LBB20_3
@ BB#1:                                 @ %if.then
	ldr	r0, .LCPI20_0
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	ldr	r1, [sp, #40]
	ldr	r0, [r11, #-24]
	bl	_Z15update_miss_mapPSt3mapIjjSt4lessIjESaISt4pairIKjjEEEj
	ldr	r1, [sp, #36]
	ldr	r0, [r11, #-12]
	bl	_Z13is_cache_missPSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEj
	cmp	r0, #1
	bne	.LBB20_4
@ BB#2:                                 @ %if.then2
	mov	r0, #0
	strb	r0, [sp, #35]
	ldr	r0, .LCPI20_1
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	ldr	r1, [sp, #40]
	ldr	r0, [r11, #-28]
	bl	_Z15update_miss_mapPSt3mapIjjSt4lessIjESaISt4pairIKjjEEEj
	ldr	r4, [sp, #36]
	ldr	r3, [sp, #40]
	ldr	r2, [r11, #-32]
	ldr	r1, [r11, #-16]
	ldr	r0, [r11, #-8]
	str	r4, [sp]
	bl	_Z10insertInL1PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj
	ldr	r4, [sp, #36]
	ldr	r3, [sp, #40]
	ldr	r2, [r11, #-36]
	ldr	r1, [r11, #-16]
	ldr	r0, [r11, #-8]
	str	r4, [sp]
	bl	_Z10insertInL2PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj
	b	.LBB20_5
.LBB20_3:                               @ %if.else6
	ldr	r0, [r11, #-16]
	add	r4, sp, #24
	mov	r1, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_
	ldr	r0, [r11, #-16]
	mov	r1, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_
	ldr	r0, [r11, #-8]
	add	r1, sp, #36
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_
	mov	r4, r0
	ldr	r0, [r11, #-16]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE5beginEv
	str	r0, [sp, #8]
	str	r0, [r4]
	b	.LBB20_5
.LBB20_4:                               @ %if.else
	ldr	r0, [r11, #-20]
	add	r4, sp, #24
	mov	r1, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_
	ldr	r0, [r11, #-20]
	mov	r1, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_
	ldr	r0, [r11, #-12]
	add	r1, sp, #36
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_
	mov	r4, r0
	ldr	r0, [r11, #-20]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE5beginEv
	str	r0, [sp, #16]
	str	r0, [r4]
	ldr	r4, [sp, #36]
	ldr	r3, [sp, #40]
	ldr	r2, [r11, #-32]
	ldr	r1, [r11, #-16]
	ldr	r0, [r11, #-8]
	str	r4, [sp]
	bl	_Z10insertInL1PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj
.LBB20_5:                               @ %if.end12
	ldrb	r0, [sp, #35]
	and	r0, r0, #1
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
	.align	2
@ BB#6:
.LCPI20_0:
	.long	l1miss
.LCPI20_1:
	.long	l2miss
.Ltmp20:
	.size	_Z8do_cachePSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEESA_PSt4listIS2_SaIS2_EESE_PS_IjjS5_SaIS1_IS6_jEEESI_iijj, .Ltmp20-_Z8do_cachePSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEESA_PSt4listIS2_SaIS2_EESE_PS_IjjS5_SaIS1_IS6_jEEESI_iijj

	.globl	MLPCounter
	.align	2
	.type	MLPCounter,%function
MLPCounter:                             @ @MLPCounter
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	add	sp, sp, #8
	bx	lr
.Ltmp21:
	.size	MLPCounter, .Ltmp21-MLPCounter

	.globl	iCacheCounter
	.align	2
	.type	iCacheCounter,%function
iCacheCounter:                          @ @iCacheCounter
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #36
	ldr	r10, .LCPI22_4
	ldr	r9, .LCPI22_5
	mov	r6, #1808
	mov	r8, #1000
	str	r0, [sp, #32]
	str	r1, [sp, #28]
	str	r1, [sp, #24]
	orr	r6, r6, #8192
	b	.LBB22_2
.LBB22_1:                               @ %for.body
                                        @   in Loop: Header=BB22_2 Depth=1
	ldr	r0, .LCPI22_0
	ldr	r7, [r10]
	ldr	r4, [r9]
	ldr	r5, [sp, #24]
	ldr	r3, [r0]
	ldr	r0, .LCPI22_1
	str	r7, [sp]
	ldr	r2, [r0]
	ldr	r0, .LCPI22_2
	ldr	r1, [r0]
	ldr	r0, .LCPI22_3
	ldr	r0, [r0]
	stmib	sp, {r4, r8}
	str	r6, [sp, #12]
	str	r5, [sp, #16]
	str	r5, [sp, #20]
	bl	_Z8do_cachePSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEESA_PSt4listIS2_SaIS2_EESE_PS_IjjS5_SaIS1_IS6_jEEESI_iijj
	ldr	r0, [sp, #24]
	add	r0, r0, #1
	str	r0, [sp, #24]
.LBB22_2:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #28]
	add	r0, r1, r0
	ldr	r1, [sp, #24]
	cmp	r1, r0
	bls	.LBB22_1
@ BB#3:                                 @ %for.end
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	bx	lr
	.align	2
@ BB#4:
.LCPI22_0:
	.long	_ZN6icache11mcache2ListE
.LCPI22_1:
	.long	_ZN6icache11mcache1ListE
.LCPI22_2:
	.long	_ZN6icache10mcache2MapE
.LCPI22_3:
	.long	_ZN6icache10mcache1MapE
.LCPI22_4:
	.long	_ZN6icache10L1miss_mapE
.LCPI22_5:
	.long	_ZN6icache10L2miss_mapE
.Ltmp22:
	.size	iCacheCounter, .Ltmp22-iCacheCounter

	.globl	branchCounter
	.align	2
	.type	branchCounter,%function
branchCounter:                          @ @branchCounter
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #132
	ldr	r6, .LCPI23_0
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	str	r2, [r11, #-24]
	ldrb	r0, [r6, #8]
	tst	r0, #1
	bne	.LBB23_3
@ BB#1:                                 @ %init.check
	add	r4, r6, #8
	mov	r0, r4
	bl	__cxa_guard_acquire
	cmp	r0, #0
	beq	.LBB23_3
@ BB#2:                                 @ %init
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC1Ev
	str	r0, [r6, #4]
	mov	r0, r4
	bl	__cxa_guard_release
.LBB23_3:                               @ %init.end
	ldrb	r0, [r6, #16]
	tst	r0, #1
	bne	.LBB23_6
@ BB#4:                                 @ %init.check5
	add	r4, r6, #16
	mov	r0, r4
	bl	__cxa_guard_acquire
	cmp	r0, #0
	beq	.LBB23_6
@ BB#5:                                 @ %init7
	mov	r0, #24
	bl	_Znwj
	bl	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC1Ev
	str	r0, [r6, #12]
	mov	r0, r4
	bl	__cxa_guard_release
.LBB23_6:                               @ %init.end16
	mov	r0, #0
	sub	r1, r11, #20
	strb	r0, [r11, #-33]
	ldr	r0, [r6, #12]
	bl	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE4findERS4_
	str	r0, [r11, #-40]
	ldr	r0, [r6, #12]
	bl	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE3endEv
	str	r0, [r11, #-48]
	sub	r0, r11, #40
	sub	r1, r11, #48
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_
	cmp	r0, #1
	bne	.LBB23_8
@ BB#7:                                 @ %if.then
	ldr	r1, [r11, #-24]
	sub	r4, r11, #64
	mov	r2, #1
	mov	r0, r4
	bl	_ZSt9make_pairIjiESt4pairIT_T0_ES1_S2_
	sub	r5, r11, #56
	mov	r1, r4
	mov	r0, r5
	bl	_ZNSt4pairIjjEC1IjiEERKS_IT_T0_E
	ldr	r4, [r6, #12]
	add	r6, sp, #48
	sub	r1, r11, #20
	mov	r2, r5
	mov	r0, r6
	bl	_ZNSt4pairIjS_IjjEEC1ERKjRKS0_
	add	r5, sp, #64
	mov	r1, r6
	mov	r0, r5
	bl	_ZNSt4pairIKjS_IjjEEC1IjS1_EERKS_IT_T0_E
	add	r0, sp, #40
	mov	r1, r4
	mov	r2, r5
	bl	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE6insertERKS5_
	b	.LBB23_24
.LBB23_8:                               @ %if.else
	sub	r0, r11, #40
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv
	ldr	r1, [r0, #4]
	ldr	r0, [r0, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	ldr	r0, [sp, #8]
	str	r0, [sp, #36]
	ldr	r0, [sp, #12]
	str	r0, [sp, #32]
	sub	r0, r0, #1
	cmp	r0, #3
	bls	.LBB23_10
@ BB#9:                                 @ %sw.default
	mov	r0, #1
	ldr	r1, .LCPI23_3
	str	r0, [sp, #24]
	ldr	r0, .LCPI23_2
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	b	.LBB23_23
.LBB23_10:                              @ %if.else
	lsl	r0, r0, #2
	adr	r1, .LJTI23_0_0
	ldr	pc, [r0, r1]
.LJTI23_0_0:
	.long	.LBB23_11
	.long	.LBB23_13
	.long	.LBB23_15
	.long	.LBB23_17
.LBB23_11:                              @ %sw.bb
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #36]
	cmp	r1, r0
	beq	.LBB23_14
@ BB#12:                                @ %if.else37
	mov	r0, #2
	b	.LBB23_22
.LBB23_13:                              @ %sw.bb38
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #36]
	cmp	r1, r0
	bne	.LBB23_19
.LBB23_14:                              @ %if.then36
	mov	r0, #1
	str	r0, [sp, #24]
	b	.LBB23_23
.LBB23_15:                              @ %sw.bb44
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #36]
	cmp	r1, r0
	beq	.LBB23_18
@ BB#16:                                @ %if.else47
	mov	r0, #2
	b	.LBB23_20
.LBB23_17:                              @ %sw.bb50
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #36]
	cmp	r1, r0
	bne	.LBB23_21
.LBB23_18:                              @ %if.then46
	mov	r0, #4
	str	r0, [sp, #24]
	b	.LBB23_23
.LBB23_19:                              @ %if.else41
	mov	r0, #3
.LBB23_20:                              @ %sw.epilog
	str	r0, [sp, #24]
	ldr	r0, [r6, #24]
	ldr	r1, [r6, #28]
	ldr	r3, [r11, #-20]
	ldr	r2, [r11, #-16]
	adds	r0, r0, #1
	str	r0, [r6, #24]
	ldr	r0, .LCPI23_1
	adc	r1, r1, #0
	str	r1, [r6, #28]
	ldr	r1, [r6, #4]
	ldr	r0, [r0]
	bl	_Z20update_br_mispredictPSt3mapIjjSt4lessIjESaISt4pairIKjjEEES7_jj
	mov	r0, #1
	strb	r0, [r11, #-33]
	b	.LBB23_23
.LBB23_21:                              @ %if.else53
	mov	r0, #3
.LBB23_22:                              @ %sw.epilog
	str	r0, [sp, #24]
	ldr	r0, .LCPI23_1
	ldr	r1, [r6, #4]
	ldr	r3, [r11, #-20]
	ldr	r2, [r11, #-16]
	ldr	r0, [r0]
	bl	_Z20update_br_mispredictPSt3mapIjjSt4lessIjESaISt4pairIKjjEEES7_jj
	ldr	r0, [r6, #24]
	ldr	r1, [r6, #28]
	adds	r0, r0, #1
	adc	r1, r1, #0
	str	r0, [r6, #24]
	str	r1, [r6, #28]
.LBB23_23:                              @ %sw.epilog
	ldrb	r0, [r11, #-33]
	ldr	r2, [sp, #24]
	tst	r0, #1
	ldreq	r0, [sp, #36]
	ldrne	r0, [r11, #-24]
	str	r0, [sp, #20]
	mov	r0, sp
	ldr	r1, [sp, #20]
	bl	_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_
	sub	r0, r11, #40
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv
	ldm	sp, {r1, r2}
	stmib	r0, {r1, r2}
.LBB23_24:                              @ %if.end64
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	bx	lr
	.align	2
@ BB#25:
.LCPI23_0:
	.long	_MergedGlobals
.LCPI23_1:
	.long	bb_br_mispr_map
.LCPI23_2:
	.long	_ZSt4cout
.LCPI23_3:
	.long	.L.str
.Ltmp23:
	.size	branchCounter, .Ltmp23-branchCounter

	.section	.text._ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC1Ev,"axG",%progbits,_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC1Ev,comdat
	.weak	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC1Ev
	.align	2
	.type	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC1Ev,%function
_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC1Ev: @ @_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp24:
	.size	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC1Ev, .Ltmp24-_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC1Ev

	.section	.text._ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE4findERS4_,"axG",%progbits,_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE4findERS4_,comdat
	.weak	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE4findERS4_
	.align	2
	.type	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE4findERS4_,%function
_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE4findERS4_: @ @_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE4findERS4_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE4findERS1_
	str	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp25:
	.size	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE4findERS4_, .Ltmp25-_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE4findERS4_

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_,"axG",%progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_
	.align	2
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_,%function
_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_: @ @_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r1]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r2, r1
	moveq	r0, #1
	add	sp, sp, #8
	bx	lr
.Ltmp26:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_, .Ltmp26-_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_

	.section	.text._ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE3endEv,"axG",%progbits,_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE3endEv,comdat
	.weak	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE3endEv
	.align	2
	.type	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE3endEv,%function
_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE3endEv: @ @_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE3endEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv
	str	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp27:
	.size	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE3endEv, .Ltmp27-_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE3endEv

	.section	.text._ZNSt4pairIjjEC1IjiEERKS_IT_T0_E,"axG",%progbits,_ZNSt4pairIjjEC1IjiEERKS_IT_T0_E,comdat
	.weak	_ZNSt4pairIjjEC1IjiEERKS_IT_T0_E
	.align	2
	.type	_ZNSt4pairIjjEC1IjiEERKS_IT_T0_E,%function
_ZNSt4pairIjjEC1IjiEERKS_IT_T0_E:       @ @_ZNSt4pairIjjEC1IjiEERKS_IT_T0_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt4pairIjjEC2IjiEERKS_IT_T0_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp28:
	.size	_ZNSt4pairIjjEC1IjiEERKS_IT_T0_E, .Ltmp28-_ZNSt4pairIjjEC1IjiEERKS_IT_T0_E

	.section	.text._ZSt9make_pairIjiESt4pairIT_T0_ES1_S2_,"axG",%progbits,_ZSt9make_pairIjiESt4pairIT_T0_ES1_S2_,comdat
	.weak	_ZSt9make_pairIjiESt4pairIT_T0_ES1_S2_
	.align	2
	.type	_ZSt9make_pairIjiESt4pairIT_T0_ES1_S2_,%function
_ZSt9make_pairIjiESt4pairIT_T0_ES1_S2_: @ @_ZSt9make_pairIjiESt4pairIT_T0_ES1_S2_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r1, sp, #4
	mov	r2, sp
	bl	_ZNSt4pairIjiEC1ERKjRKi
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp29:
	.size	_ZSt9make_pairIjiESt4pairIT_T0_ES1_S2_, .Ltmp29-_ZSt9make_pairIjiESt4pairIT_T0_ES1_S2_

	.section	.text._ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE6insertERKS5_,"axG",%progbits,_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE6insertERKS5_,comdat
	.weak	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE6insertERKS5_
	.align	2
	.type	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE6insertERKS5_,%function
_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE6insertERKS5_: @ @_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE6insertERKS5_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r1, [sp, #4]
	str	r2, [sp]
	ldr	r1, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE16_M_insert_uniqueERKS3_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp30:
	.size	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE6insertERKS5_, .Ltmp30-_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEE6insertERKS5_

	.section	.text._ZNSt4pairIKjS_IjjEEC1IjS1_EERKS_IT_T0_E,"axG",%progbits,_ZNSt4pairIKjS_IjjEEC1IjS1_EERKS_IT_T0_E,comdat
	.weak	_ZNSt4pairIKjS_IjjEEC1IjS1_EERKS_IT_T0_E
	.align	2
	.type	_ZNSt4pairIKjS_IjjEEC1IjS1_EERKS_IT_T0_E,%function
_ZNSt4pairIKjS_IjjEEC1IjS1_EERKS_IT_T0_E: @ @_ZNSt4pairIKjS_IjjEEC1IjS1_EERKS_IT_T0_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt4pairIKjS_IjjEEC2IjS1_EERKS_IT_T0_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp31:
	.size	_ZNSt4pairIKjS_IjjEEC1IjS1_EERKS_IT_T0_E, .Ltmp31-_ZNSt4pairIKjS_IjjEEC1IjS1_EERKS_IT_T0_E

	.section	.text._ZNSt4pairIjS_IjjEEC1ERKjRKS0_,"axG",%progbits,_ZNSt4pairIjS_IjjEEC1ERKjRKS0_,comdat
	.weak	_ZNSt4pairIjS_IjjEEC1ERKjRKS0_
	.align	2
	.type	_ZNSt4pairIjS_IjjEEC1ERKjRKS0_,%function
_ZNSt4pairIjS_IjjEEC1ERKjRKS0_:         @ @_ZNSt4pairIjS_IjjEEC1ERKjRKS0_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4pairIjS_IjjEEC2ERKjRKS0_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp32:
	.size	_ZNSt4pairIjS_IjjEEC1ERKjRKS0_, .Ltmp32-_ZNSt4pairIjS_IjjEEC1ERKjRKS0_

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv,"axG",%progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv
	.align	2
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv,%function
_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv: @ @_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0]
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp33:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv, .Ltmp33-_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEptEv

	.text
	.globl	_Z20update_br_mispredictPSt3mapIjjSt4lessIjESaISt4pairIKjjEEES7_jj
	.align	2
	.type	_Z20update_br_mispredictPSt3mapIjjSt4lessIjESaISt4pairIKjjEEES7_jj,%function
_Z20update_br_mispredictPSt3mapIjjSt4lessIjESaISt4pairIKjjEEES7_jj: @ @_Z20update_br_mispredictPSt3mapIjjSt4lessIjESaISt4pairIKjjEEES7_jj
@ BB#0:                                 @ %do.end
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	sub	r1, r11, #12
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	ldr	r0, [r11, #-4]
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_
	str	r0, [sp, #24]
	ldr	r0, [r11, #-4]
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv
	str	r0, [sp, #16]
	add	r0, sp, #24
	add	r1, sp, #16
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_
	cmp	r0, #1
	bne	.LBB34_2
@ BB#1:                                 @ %if.then
	ldr	r0, [r11, #-4]
	sub	r1, r11, #12
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_
	mov	r1, #1
	b	.LBB34_3
.LBB34_2:                               @ %if.else
	ldr	r0, [r11, #-4]
	sub	r1, r11, #12
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_
	ldr	r1, [r0]
	add	r1, r1, #1
.LBB34_3:                               @ %if.end
	str	r1, [r0]
	sub	r1, r11, #16
	ldr	r0, [r11, #-8]
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv
	str	r0, [sp]
	add	r0, sp, #8
	mov	r1, sp
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_
	cmp	r0, #1
	bne	.LBB34_5
@ BB#4:                                 @ %if.then16
	ldr	r0, [r11, #-8]
	sub	r1, r11, #16
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_
	mov	r1, #1
	b	.LBB34_6
.LBB34_5:                               @ %if.else18
	ldr	r0, [r11, #-8]
	sub	r1, r11, #16
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_
	ldr	r1, [r0]
	add	r1, r1, #1
.LBB34_6:                               @ %if.end21
	str	r1, [r0]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp34:
	.size	_Z20update_br_mispredictPSt3mapIjjSt4lessIjESaISt4pairIKjjEEES7_jj, .Ltmp34-_Z20update_br_mispredictPSt3mapIjjSt4lessIjESaISt4pairIKjjEEES7_jj

	.section	.text._ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_,"axG",%progbits,_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_,comdat
	.weak	_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_
	.align	2
	.type	_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_,%function
_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_: @ @_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r1, sp, #4
	mov	r2, sp
	bl	_ZNSt4pairIjjEC1ERKjS2_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp35:
	.size	_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_, .Ltmp35-_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_

	.section	.text._ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_,"axG",%progbits,_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_,comdat
	.weak	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_
	.align	2
	.type	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_,%function
_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_: @ @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4findERS1_
	str	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp36:
	.size	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_, .Ltmp36-_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_,"axG",%progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_
	.align	2
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_,%function
_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_: @ @_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r1]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r2, r1
	moveq	r0, #1
	add	sp, sp, #8
	bx	lr
.Ltmp37:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_, .Ltmp37-_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_

	.section	.text._ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv,"axG",%progbits,_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv,comdat
	.weak	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv
	.align	2
	.type	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv,%function
_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv: @ @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv
	str	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp38:
	.size	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv, .Ltmp38-_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv

	.section	.text._ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_,"axG",%progbits,_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_,comdat
	.weak	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_
	.align	2
	.type	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_,%function
_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_: @ @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #64
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	ldr	r4, [r11, #-12]
	mov	r0, r4
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_
	str	r0, [r11, #-24]
	mov	r0, r4
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv
	str	r0, [r11, #-32]
	sub	r0, r11, #24
	sub	r1, r11, #32
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_
	cmp	r0, #0
	bne	.LBB39_2
@ BB#1:                                 @ %lor.lhs.false
	mov	r0, r4
	bl	_ZNKSt3mapIjjSt4lessIjESaISt4pairIKjjEEE8key_compEv
	ldr	r5, [r11, #-16]
	sub	r0, r11, #24
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv
	mov	r2, r0
	add	r0, sp, #32
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB39_3
.LBB39_2:                               @ %if.then
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-16]
	add	r5, sp, #8
	add	r2, sp, #4
	str	r0, [sp, #16]
	mov	r0, #0
	str	r0, [sp, #4]
	mov	r0, r5
	bl	_ZNSt4pairIKjjEC1ERS0_S2_
	ldr	r1, [sp, #16]
	mov	r0, r4
	mov	r2, r5
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_
	str	r0, [sp, #24]
	str	r0, [r11, #-24]
.LBB39_3:                               @ %if.end
	sub	r0, r11, #24
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv
	add	r0, r0, #4
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp39:
	.size	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_, .Ltmp39-_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEixERS3_

	.text
	.globl	_Z13branchPrinterv
	.align	2
	.type	_Z13branchPrinterv,%function
_Z13branchPrinterv:                     @ @_Z13branchPrinterv
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #28
	sub	r4, r11, #16
	mov	r0, r4
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev
	ldr	r6, .LCPI40_0
	ldr	r0, [r6]
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE5beginEv
	add	r5, sp, #8
	str	r0, [sp, #16]
	str	r0, [r11, #-16]
	b	.LBB40_2
.LBB40_1:                               @ %for.inc
                                        @   in Loop: Header=BB40_2 Depth=1
	mov	r0, r4
	mov	r1, #0
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEppEi
	str	r0, [sp]
.LBB40_2:                               @ %for.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6]
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv
	str	r0, [sp, #8]
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEneERKS3_
	cmp	r0, #1
	beq	.LBB40_1
@ BB#3:                                 @ %for.end
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	bx	lr
	.align	2
@ BB#4:
.LCPI40_0:
	.long	bb_br_mispr_map
.Ltmp40:
	.size	_Z13branchPrinterv, .Ltmp40-_Z13branchPrinterv

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp41:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev, .Ltmp41-_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev

	.section	.text._ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE5beginEv,"axG",%progbits,_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE5beginEv,comdat
	.weak	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE5beginEv
	.align	2
	.type	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE5beginEv,%function
_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE5beginEv: @ @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE5beginEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv
	str	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp42:
	.size	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE5beginEv, .Ltmp42-_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE5beginEv

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEneERKS3_,"axG",%progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEneERKS3_,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEneERKS3_
	.align	2
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEneERKS3_,%function
_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEneERKS3_: @ @_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEneERKS3_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r1]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r2, r1
	movne	r0, #1
	add	sp, sp, #8
	bx	lr
.Ltmp43:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEneERKS3_, .Ltmp43-_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEneERKS3_

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjjEEppEi,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEppEi,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEppEi
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEppEi,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEppEi: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEppEi
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r4, [sp, #4]
	ldr	r0, [r4]
	str	r0, [sp, #8]
	ldr	r0, [r4]
	bl	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	str	r0, [r4]
	ldr	r0, [sp, #8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp44:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEppEi, .Ltmp44-_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEppEi

	.text
	.globl	_Z13is_cache_missPSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEj
	.align	2
	.type	_Z13is_cache_missPSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEj,%function
_Z13is_cache_missPSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEj: @ @_Z13is_cache_missPSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEj
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	str	r0, [r11, #-8]
	str	r1, [sp, #12]
	add	r1, sp, #12
	ldr	r0, [r11, #-8]
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE4findERS6_
	str	r0, [sp, #8]
	ldr	r0, [r11, #-8]
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv
	str	r0, [sp]
	add	r0, sp, #8
	mov	r1, sp
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_
	cmp	r0, #1
	movne	r0, #0
	moveq	r0, #1
	strb	r0, [r11, #-1]
	ldrb	r0, [r11, #-1]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp45:
	.size	_Z13is_cache_missPSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEj, .Ltmp45-_Z13is_cache_missPSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEj

	.globl	_Z15update_miss_mapPSt3mapIjjSt4lessIjESaISt4pairIKjjEEEj
	.align	2
	.type	_Z15update_miss_mapPSt3mapIjjSt4lessIjESaISt4pairIKjjEEEj,%function
_Z15update_miss_mapPSt3mapIjjSt4lessIjESaISt4pairIKjjEEEj: @ @_Z15update_miss_mapPSt3mapIjjSt4lessIjESaISt4pairIKjjEEEj
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #60
	sub	r4, r11, #24
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	mov	r0, r4
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1Ev
	ldr	r0, [r11, #-16]
	sub	r1, r11, #20
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE4findERS3_
	str	r0, [r11, #-32]
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-16]
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE3endEv
	str	r0, [sp, #32]
	add	r1, sp, #32
	mov	r0, r4
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_
	cmp	r0, #1
	bne	.LBB46_2
@ BB#1:                                 @ %if.then
	ldr	r4, [r11, #-16]
	mov	r0, #1
	add	r5, sp, #16
	sub	r1, r11, #20
	add	r2, sp, #12
	str	r0, [sp, #12]
	mov	r0, r5
	bl	_ZNSt4pairIjjEC1ERKjS2_
	add	r6, sp, #24
	mov	r1, r5
	mov	r0, r6
	bl	_ZNSt4pairIKjjEC1IjjEERKS_IT_T0_E
	mov	r0, sp
	mov	r1, r4
	mov	r2, r6
	bl	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertERKS4_
	b	.LBB46_3
.LBB46_2:                               @ %if.else
	sub	r0, r11, #24
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEptEv
	ldr	r1, [r0, #4]
	add	r1, r1, #1
	str	r1, [r0, #4]
.LBB46_3:                               @ %if.end
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	bx	lr
.Ltmp46:
	.size	_Z15update_miss_mapPSt3mapIjjSt4lessIjESaISt4pairIKjjEEEj, .Ltmp46-_Z15update_miss_mapPSt3mapIjjSt4lessIjESaISt4pairIKjjEEEj

	.globl	_Z10insertInL1PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj
	.align	2
	.type	_Z10insertInL1PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj,%function
_Z10insertInL1PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj: @ @_Z10insertInL1PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
	str	r3, [sp, #24]
	str	r1, [r11, #-16]
	str	r2, [r11, #-20]
	ldr	r1, [r11, #8]
	add	r4, sp, #8
	str	r0, [r11, #-12]
	ldr	r2, [sp, #24]
	mov	r0, r4
	str	r1, [sp, #20]
	bl	_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_
	ldr	r0, [r11, #-16]
	mov	r1, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_
	ldr	r0, [r11, #-12]
	add	r1, sp, #20
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_
	mov	r4, r0
	ldr	r0, [r11, #-16]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE5beginEv
	ldr	r5, .LCPI47_0
	str	r0, [sp]
	str	r0, [r4]
	ldr	r0, [r5]
	add	r0, r0, #1
	str	r0, [r5]
	ldr	r0, [r11, #-20]
	bl	_Z8isfullL1i
	cmp	r0, #1
	bne	.LBB47_2
@ BB#1:                                 @ %if.then
	ldr	r0, [r11, #-16]
	ldr	r4, [r11, #-12]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE4backEv
	mov	r1, r0
	mov	r0, r4
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_
	ldr	r0, [r11, #-16]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv
	ldr	r0, [r5]
	sub	r0, r0, #1
	str	r0, [r5]
.LBB47_2:                               @ %if.end
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
	.align	2
@ BB#3:
.LCPI47_0:
	.long	mcache1Size
.Ltmp47:
	.size	_Z10insertInL1PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj, .Ltmp47-_Z10insertInL1PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj

	.globl	_Z10insertInL2PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj
	.align	2
	.type	_Z10insertInL2PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj,%function
_Z10insertInL2PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj: @ @_Z10insertInL2PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
	str	r3, [sp, #24]
	str	r1, [r11, #-16]
	str	r2, [r11, #-20]
	ldr	r1, [r11, #8]
	add	r4, sp, #8
	str	r0, [r11, #-12]
	ldr	r2, [sp, #24]
	mov	r0, r4
	str	r1, [sp, #20]
	bl	_ZSt9make_pairIjjESt4pairIT_T0_ES1_S2_
	ldr	r0, [r11, #-16]
	mov	r1, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_
	ldr	r0, [r11, #-12]
	add	r1, sp, #20
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_
	mov	r4, r0
	ldr	r0, [r11, #-16]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE5beginEv
	ldr	r5, .LCPI48_0
	str	r0, [sp]
	str	r0, [r4]
	ldr	r0, [r5]
	add	r0, r0, #1
	str	r0, [r5]
	ldr	r0, [r11, #-20]
	bl	_Z8isfullL2i
	cmp	r0, #1
	bne	.LBB48_2
@ BB#1:                                 @ %if.then
	ldr	r0, [r11, #-16]
	ldr	r4, [r11, #-12]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE4backEv
	mov	r1, r0
	mov	r0, r4
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_
	ldr	r0, [r11, #-16]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv
	ldr	r0, [r5]
	sub	r0, r0, #1
	str	r0, [r5]
.LBB48_2:                               @ %if.end
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
	.align	2
@ BB#3:
.LCPI48_0:
	.long	mcache2Size
.Ltmp48:
	.size	_Z10insertInL2PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj, .Ltmp48-_Z10insertInL2PSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEPSt4listIS2_SaIS2_EEijj

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_,%function
_ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_: @ @_ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #56
	str	r0, [r11, #-20]
	str	r1, [r11, #-24]
	ldr	r4, [r11, #-20]
	mov	r0, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE5beginEv
	str	r0, [r11, #-32]
	mov	r0, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE3endEv
	sub	r5, r11, #32
	add	r6, sp, #32
	add	r7, sp, #16
	str	r0, [sp, #32]
	str	r0, [sp, #24]
	b	.LBB49_2
.LBB49_1:                               @ %if.end11
                                        @   in Loop: Header=BB49_2 Depth=1
	ldr	r0, [sp, #16]
	str	r0, [r11, #-32]
.LBB49_2:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	mov	r0, r5
	mov	r1, r6
	bl	_ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_
	cmp	r0, #1
	bne	.LBB49_7
@ BB#3:                                 @ %while.body
                                        @   in Loop: Header=BB49_2 Depth=1
	ldr	r0, [r11, #-32]
	str	r0, [sp, #16]
	mov	r0, r7
	bl	_ZNSt14_List_iteratorISt4pairIjjEEppEv
	mov	r0, r5
	bl	_ZNKSt14_List_iteratorISt4pairIjjEEdeEv
	ldr	r1, [r11, #-24]
	bl	_ZSteqIjjEbRKSt4pairIT_T0_ES5_
	cmp	r0, #1
	bne	.LBB49_1
@ BB#4:                                 @ %if.then
                                        @   in Loop: Header=BB49_2 Depth=1
	mov	r0, r5
	bl	_ZNKSt14_List_iteratorISt4pairIjjEEdeEv
	ldr	r1, [r11, #-24]
	cmp	r0, r1
	beq	.LBB49_6
@ BB#5:                                 @ %if.then10
                                        @   in Loop: Header=BB49_2 Depth=1
	ldr	r1, [r11, #-32]
	mov	r0, r4
	str	r1, [sp, #8]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E
	b	.LBB49_1
.LBB49_6:                               @ %if.else
                                        @   in Loop: Header=BB49_2 Depth=1
	ldr	r0, [r11, #-32]
	str	r0, [sp, #24]
	b	.LBB49_1
.LBB49_7:                               @ %while.end
	add	r0, sp, #24
	add	r1, sp, #32
	bl	_ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_
	cmp	r0, #1
	bne	.LBB49_9
@ BB#8:                                 @ %if.then13
	ldr	r1, [sp, #24]
	mov	r0, r4
	str	r1, [sp]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E
.LBB49_9:                               @ %if.end15
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp49:
	.size	_ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_, .Ltmp49-_ZNSt4listISt4pairIjjESaIS1_EE6removeERKS1_

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_,%function
_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_: @ @_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r4, [sp, #8]
	mov	r0, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE5beginEv
	ldr	r2, [sp, #4]
	mov	r1, r0
	mov	r0, r4
	str	r1, [sp]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE9_M_insertESt14_List_iteratorIS1_ERKS1_
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp50:
	.size	_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_, .Ltmp50-_ZNSt4listISt4pairIjjESaIS1_EE10push_frontERKS1_

	.section	.text._ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_,"axG",%progbits,_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_,comdat
	.weak	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_
	.align	2
	.type	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_,%function
_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_: @ @_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #64
	str	r0, [r11, #-20]
	str	r1, [r11, #-24]
	ldr	r4, [r11, #-20]
	mov	r0, r4
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE11lower_boundERS6_
	str	r0, [r11, #-32]
	mov	r0, r4
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv
	str	r0, [sp, #40]
	sub	r0, r11, #32
	add	r1, sp, #40
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_
	cmp	r0, #0
	bne	.LBB51_2
@ BB#1:                                 @ %lor.lhs.false
	mov	r0, r4
	bl	_ZNKSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE8key_compEv
	ldr	r5, [r11, #-24]
	sub	r0, r11, #32
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv
	mov	r2, r0
	add	r0, sp, #32
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB51_3
.LBB51_2:                               @ %if.then
	ldr	r0, [r11, #-32]
	ldr	r5, [r11, #-24]
	mov	r6, sp
	str	r0, [sp, #16]
	mov	r0, r6
	bl	_ZNSt14_List_iteratorISt4pairIjjEEC1Ev
	add	r7, sp, #8
	mov	r1, r5
	mov	r2, r6
	mov	r0, r7
	bl	_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC1ERS0_RKS3_
	ldr	r1, [sp, #16]
	mov	r0, r4
	mov	r2, r7
	bl	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE6insertESt17_Rb_tree_iteratorIS7_ERKS7_
	str	r0, [sp, #24]
	str	r0, [r11, #-32]
.LBB51_3:                               @ %if.end
	sub	r0, r11, #32
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv
	add	r0, r0, #4
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp51:
	.size	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_, .Ltmp51-_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEixERS6_

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EE5beginEv,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EE5beginEv,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EE5beginEv
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EE5beginEv,%function
_ZNSt4listISt4pairIjjESaIS1_EE5beginEv: @ @_ZNSt4listISt4pairIjjESaIS1_EE5beginEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r1, [r0]
	add	r0, sp, #8
	bl	_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp52:
	.size	_ZNSt4listISt4pairIjjESaIS1_EE5beginEv, .Ltmp52-_ZNSt4listISt4pairIjjESaIS1_EE5beginEv

	.section	.text._ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE4findERS6_,"axG",%progbits,_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE4findERS6_,comdat
	.weak	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE4findERS6_
	.align	2
	.type	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE4findERS6_,%function
_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE4findERS6_: @ @_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE4findERS6_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4findERS1_
	str	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp53:
	.size	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE4findERS6_, .Ltmp53-_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE4findERS6_

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_,"axG",%progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_
	.align	2
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_,%function
_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_: @ @_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r1]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r2, r1
	moveq	r0, #1
	add	sp, sp, #8
	bx	lr
.Ltmp54:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_, .Ltmp54-_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_

	.section	.text._ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv,"axG",%progbits,_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv,comdat
	.weak	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv
	.align	2
	.type	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv,%function
_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv: @ @_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv
	str	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp55:
	.size	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv, .Ltmp55-_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE3endEv

	.text
	.globl	_Z8isfullL1i
	.align	2
	.type	_Z8isfullL1i,%function
_Z8isfullL1i:                           @ @_Z8isfullL1i
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	ldr	r1, .LCPI56_0
	str	r0, [sp]
	ldr	r1, [r1]
	cmp	r1, r0
	movle	r0, #0
	movgt	r0, #1
	strb	r0, [sp, #7]
	ldrb	r0, [sp, #7]
	add	sp, sp, #8
	bx	lr
	.align	2
@ BB#1:
.LCPI56_0:
	.long	mcache1Size
.Ltmp56:
	.size	_Z8isfullL1i, .Ltmp56-_Z8isfullL1i

	.section	.text._ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_,"axG",%progbits,_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_,comdat
	.weak	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_
	.align	2
	.type	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_,%function
_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_: @ @_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseERS1_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp57:
	.size	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_, .Ltmp57-_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE5eraseERS6_

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EE4backEv,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EE4backEv,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EE4backEv
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EE4backEv,%function
_ZNSt4listISt4pairIjjESaIS1_EE4backEv:  @ @_ZNSt4listISt4pairIjjESaIS1_EE4backEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #8]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE3endEv
	mov	r4, sp
	str	r0, [sp]
	mov	r0, r4
	bl	_ZNSt14_List_iteratorISt4pairIjjEEmmEv
	mov	r0, r4
	bl	_ZNKSt14_List_iteratorISt4pairIjjEEdeEv
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp58:
	.size	_ZNSt4listISt4pairIjjESaIS1_EE4backEv, .Ltmp58-_ZNSt4listISt4pairIjjESaIS1_EE4backEv

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv,%function
_ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv: @ @_ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	mov	r4, r0
	mov	r0, sp
	str	r4, [sp, #8]
	ldr	r1, [r4, #4]
	bl	_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base
	ldr	r1, [sp]
	mov	r0, r4
	bl	_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp59:
	.size	_ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv, .Ltmp59-_ZNSt4listISt4pairIjjESaIS1_EE8pop_backEv

	.text
	.globl	_Z8isfullL2i
	.align	2
	.type	_Z8isfullL2i,%function
_Z8isfullL2i:                           @ @_Z8isfullL2i
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	ldr	r1, .LCPI60_0
	str	r0, [sp]
	ldr	r1, [r1]
	cmp	r1, r0
	movle	r0, #0
	movgt	r0, #1
	strb	r0, [sp, #7]
	ldrb	r0, [sp, #7]
	add	sp, sp, #8
	bx	lr
	.align	2
@ BB#1:
.LCPI60_0:
	.long	mcache2Size
.Ltmp60:
	.size	_Z8isfullL2i, .Ltmp60-_Z8isfullL2i

	.section	.text._ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertERKS4_,"axG",%progbits,_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertERKS4_,comdat
	.weak	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertERKS4_
	.align	2
	.type	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertERKS4_,%function
_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertERKS4_: @ @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertERKS4_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r1, [sp, #4]
	str	r2, [sp]
	ldr	r1, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp61:
	.size	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertERKS4_, .Ltmp61-_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertERKS4_

	.section	.text._ZNSt4pairIKjjEC1IjjEERKS_IT_T0_E,"axG",%progbits,_ZNSt4pairIKjjEC1IjjEERKS_IT_T0_E,comdat
	.weak	_ZNSt4pairIKjjEC1IjjEERKS_IT_T0_E
	.align	2
	.type	_ZNSt4pairIKjjEC1IjjEERKS_IT_T0_E,%function
_ZNSt4pairIKjjEC1IjjEERKS_IT_T0_E:      @ @_ZNSt4pairIKjjEC1IjjEERKS_IT_T0_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt4pairIKjjEC2IjjEERKS_IT_T0_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp62:
	.size	_ZNSt4pairIKjjEC1IjjEERKS_IT_T0_E, .Ltmp62-_ZNSt4pairIKjjEC1IjjEERKS_IT_T0_E

	.section	.text._ZNSt4pairIjjEC1ERKjS2_,"axG",%progbits,_ZNSt4pairIjjEC1ERKjS2_,comdat
	.weak	_ZNSt4pairIjjEC1ERKjS2_
	.align	2
	.type	_ZNSt4pairIjjEC1ERKjS2_,%function
_ZNSt4pairIjjEC1ERKjS2_:                @ @_ZNSt4pairIjjEC1ERKjS2_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4pairIjjEC2ERKjS2_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp63:
	.size	_ZNSt4pairIjjEC1ERKjS2_, .Ltmp63-_ZNSt4pairIjjEC1ERKjS2_

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEptEv,"axG",%progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEptEv,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEptEv
	.align	2
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEptEv,%function
_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEptEv: @ @_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEptEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0]
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp64:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEptEv, .Ltmp64-_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEptEv

	.section	.text._ZNSt4pairIKjjEC2IjjEERKS_IT_T0_E,"axG",%progbits,_ZNSt4pairIKjjEC2IjjEERKS_IT_T0_E,comdat
	.weak	_ZNSt4pairIKjjEC2IjjEERKS_IT_T0_E
	.align	2
	.type	_ZNSt4pairIKjjEC2IjjEERKS_IT_T0_E,%function
_ZNSt4pairIKjjEC2IjjEERKS_IT_T0_E:      @ @_ZNSt4pairIKjjEC2IjjEERKS_IT_T0_E
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r1, [r1]
	ldr	r0, [sp, #4]
	str	r1, [r0]
	ldr	r1, [sp]
	ldr	r1, [r1, #4]
	str	r1, [r0, #4]
	add	sp, sp, #8
	bx	lr
.Ltmp65:
	.size	_ZNSt4pairIKjjEC2IjjEERKS_IT_T0_E, .Ltmp65-_ZNSt4pairIKjjEC2IjjEERKS_IT_T0_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #72
	str	r1, [r11, #-20]
	mov	r4, r0
	str	r2, [r11, #-24]
	ldr	r5, [r11, #-20]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv
	str	r0, [r11, #-28]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv
	str	r0, [r11, #-32]
	mov	r0, #1
	sub	r6, r11, #40
	strb	r0, [r11, #-33]
	b	.LBB66_2
.LBB66_1:                               @ %cond.true
                                        @   in Loop: Header=BB66_2 Depth=1
	ldr	r0, [r11, #-28]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base
	str	r0, [r11, #-28]
.LBB66_2:                               @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-28]
	cmp	r0, #0
	beq	.LBB66_5
@ BB#3:                                 @ %while.body
                                        @   in Loop: Header=BB66_2 Depth=1
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-24]
	str	r0, [r11, #-32]
	mov	r0, r6
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	r7, r0
	ldr	r0, [r11, #-28]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	mov	r2, r0
	mov	r0, r5
	mov	r1, r7
	bl	_ZNKSt4lessIjEclERKjS2_
	strb	r0, [r11, #-33]
	cmp	r0, #0
	bne	.LBB66_1
@ BB#4:                                 @ %cond.false
                                        @   in Loop: Header=BB66_2 Depth=1
	ldr	r0, [r11, #-28]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
	str	r0, [r11, #-28]
	b	.LBB66_2
.LBB66_5:                               @ %while.end
	ldr	r1, [r11, #-32]
	add	r0, sp, #40
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E
	ldrb	r0, [r11, #-33]
	tst	r0, #1
	beq	.LBB66_9
@ BB#6:                                 @ %if.then
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv
	str	r0, [sp, #32]
	add	r0, sp, #40
	add	r1, sp, #32
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_
	cmp	r0, #1
	bne	.LBB66_8
@ BB#7:                                 @ %if.then13
	ldr	r3, [r11, #-24]
	ldr	r2, [r11, #-32]
	ldr	r1, [r11, #-28]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_
	str	r0, [sp, #24]
	mov	r0, #1
	add	r1, sp, #24
	add	r2, sp, #23
	strb	r0, [sp, #23]
	b	.LBB66_12
.LBB66_8:                               @ %if.else
	add	r0, sp, #40
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEmmEv
.LBB66_9:                               @ %if.end21
	ldr	r0, [sp, #40]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	r1, [r11, #-24]
	mov	r6, r0
	add	r0, sp, #16
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	r2, r0
	mov	r0, r5
	mov	r1, r6
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB66_11
@ BB#10:                                @ %if.then28
	ldr	r3, [r11, #-24]
	ldr	r2, [r11, #-32]
	ldr	r1, [r11, #-28]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_
	str	r0, [sp, #8]
	mov	r0, #1
	add	r1, sp, #8
	add	r2, sp, #7
	strb	r0, [sp, #7]
	b	.LBB66_12
.LBB66_11:                              @ %if.end35
	mov	r0, #0
	add	r1, sp, #40
	add	r2, sp, #6
	strb	r0, [sp, #6]
.LBB66_12:                              @ %return
	mov	r0, r4
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC1ERKS3_RKb
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp66:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_, .Ltmp66-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #8]
	add	sp, sp, #4
	bx	lr
.Ltmp67:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv, .Ltmp67-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #4
	add	sp, sp, #4
	bx	lr
.Ltmp68:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv, .Ltmp68-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv

	.section	.text._ZNKSt4lessIjEclERKjS2_,"axG",%progbits,_ZNKSt4lessIjEclERKjS2_,comdat
	.weak	_ZNKSt4lessIjEclERKjS2_
	.align	2
	.type	_ZNKSt4lessIjEclERKjS2_,%function
_ZNKSt4lessIjEclERKjS2_:                @ @_ZNKSt4lessIjEclERKjS2_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r2]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r2, r1
	movlo	r0, #1
	add	sp, sp, #12
	bx	lr
.Ltmp69:
	.size	_ZNKSt4lessIjEclERKjS2_, .Ltmp69-_ZNKSt4lessIjEclERKjS2_

	.section	.text._ZNKSt10_Select1stISt4pairIKjjEEclERKS2_,"axG",%progbits,_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_,comdat
	.weak	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	.align	2
	.type	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_,%function
_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_: @ @_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r0, r1
	add	sp, sp, #8
	bx	lr
.Ltmp70:
	.size	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_, .Ltmp70-_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E
	mov	r1, r0
	mov	r0, sp
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp71:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E, .Ltmp71-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #8]
	add	sp, sp, #4
	bx	lr
.Ltmp72:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base, .Ltmp72-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Ltmp73:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base, .Ltmp73-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2EPSt13_Rb_tree_nodeIS2_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp74:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E, .Ltmp74-_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r1, [r0, #12]
	add	r0, sp, #8
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp75:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv, .Ltmp75-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE5beginEv

	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC1ERKS3_RKb,"axG",%progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC1ERKS3_RKb,comdat
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC1ERKS3_RKb
	.align	2
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC1ERKS3_RKb,%function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC1ERKS3_RKb: @ @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC1ERKS3_RKb
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC2ERKS3_RKb
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp76:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC1ERKS3_RKb, .Ltmp76-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC1ERKS3_RKb

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #36
	str	r0, [r11, #-20]
	str	r1, [sp, #24]
	mov	r5, #1
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	ldr	r4, [r11, #-20]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	bne	.LBB77_3
@ BB#1:                                 @ %lor.lhs.false
	ldr	r6, [sp, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv
	cmp	r6, r0
	beq	.LBB77_3
@ BB#2:                                 @ %lor.rhs
	ldr	r1, [sp, #16]
	add	r0, sp, #8
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	r5, r0
	ldr	r0, [sp, #20]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	mov	r5, r0
.LBB77_3:                               @ %lor.end
	ldr	r1, [sp, #16]
	mov	r0, r4
	strb	r5, [sp, #15]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_create_nodeERKS2_
	mov	r1, r0
	ldrb	r0, [sp, #15]
	ldr	r2, [sp, #20]
	add	r3, r4, #4
	str	r1, [sp, #4]
	and	r0, r0, #1
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	r0, [r4, #20]
	add	r0, r0, #1
	str	r0, [r4, #20]
	sub	r0, r11, #16
	ldr	r1, [sp, #4]
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E
	ldr	r0, [r11, #-16]
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	bx	lr
.Ltmp77:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_, .Ltmp77-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjjEEmmEv,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEmmEv,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEmmEv
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEmmEv,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEmmEv: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEmmEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	str	r4, [sp]
	ldr	r0, [r4]
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	str	r0, [r4]
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp78:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEmmEv, .Ltmp78-_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEmmEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base
	mov	r1, r0
	mov	r0, sp
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp79:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base, .Ltmp79-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp80:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base, .Ltmp80-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt18_Rb_tree_node_base

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_create_nodeERKS2_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_create_nodeERKS2_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_create_nodeERKS2_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_create_nodeERKS2_,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_create_nodeERKS2_: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_create_nodeERKS2_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #28
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r4, [r11, #-8]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_get_nodeEv
	str	r0, [sp, #16]
	add	r0, sp, #8
	mov	r1, r4
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13get_allocatorEv
	ldr	r0, [sp, #16]
	ldr	r2, [r11, #-12]
	add	r1, r0, #16
	add	r0, sp, #8
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEE9constructEPS3_RKS3_
	add	r0, sp, #8
	bl	_ZNSaISt4pairIKjjEED1Ev
	ldr	r0, [sp, #16]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp81:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_create_nodeERKS2_, .Ltmp81-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_create_nodeERKS2_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_get_nodeEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_get_nodeEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_get_nodeEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_get_nodeEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_get_nodeEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_get_nodeEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r1, #1
	mov	r2, #0
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8allocateEjPKv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp82:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_get_nodeEv, .Ltmp82-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_get_nodeEv

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13get_allocatorEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13get_allocatorEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13get_allocatorEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13get_allocatorEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13get_allocatorEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13get_allocatorEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	mov	r0, r1
	str	r1, [sp]
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE21_M_get_Node_allocatorEv
	mov	r1, r0
	mov	r0, r4
	bl	_ZNSaISt4pairIKjjEEC1ISt13_Rb_tree_nodeIS1_EEERKSaIT_E
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp83:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13get_allocatorEv, .Ltmp83-_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13get_allocatorEv

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjjEE9constructEPS3_RKS3_,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEE9constructEPS3_RKS3_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEE9constructEPS3_RKS3_
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEE9constructEPS3_RKS3_,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEE9constructEPS3_RKS3_: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEE9constructEPS3_RKS3_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	ldrne	r1, [sp]
	ldrne	r2, [r1]
	ldrne	r1, [r1, #4]
	strne	r2, [r0]
	strne	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp84:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEE9constructEPS3_RKS3_, .Ltmp84-_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEE9constructEPS3_RKS3_

	.section	.text._ZNSaISt4pairIKjjEED1Ev,"axG",%progbits,_ZNSaISt4pairIKjjEED1Ev,comdat
	.weak	_ZNSaISt4pairIKjjEED1Ev
	.align	2
	.type	_ZNSaISt4pairIKjjEED1Ev,%function
_ZNSaISt4pairIKjjEED1Ev:                @ @_ZNSaISt4pairIKjjEED1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSaISt4pairIKjjEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp85:
	.size	_ZNSaISt4pairIKjjEED1Ev, .Ltmp85-_ZNSaISt4pairIKjjEED1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	mov	r2, #1
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE10deallocateEPS5_j
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp86:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E, .Ltmp86-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS2_E

	.section	.text.__clang_call_terminate,"axG",%progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate
	.weak	__clang_call_terminate
	.align	2
	.type	__clang_call_terminate,%function
__clang_call_terminate:                 @ @__clang_call_terminate
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	bl	__cxa_begin_catch
	bl	_ZSt9terminatev
.Ltmp87:
	.size	__clang_call_terminate, .Ltmp87-__clang_call_terminate

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE10deallocateEPS5_j,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE10deallocateEPS5_j,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE10deallocateEPS5_j
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE10deallocateEPS5_j,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE10deallocateEPS5_j: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE10deallocateEPS5_j
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r1, [sp, #8]
	str	r0, [r11, #-4]
	str	r2, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_ZdlPv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp88:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE10deallocateEPS5_j, .Ltmp88-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE10deallocateEPS5_j

	.section	.text._ZNSaISt4pairIKjjEED2Ev,"axG",%progbits,_ZNSaISt4pairIKjjEED2Ev,comdat
	.weak	_ZNSaISt4pairIKjjEED2Ev
	.align	2
	.type	_ZNSaISt4pairIKjjEED2Ev,%function
_ZNSaISt4pairIKjjEED2Ev:                @ @_ZNSaISt4pairIKjjEED2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp89:
	.size	_ZNSaISt4pairIKjjEED2Ev, .Ltmp89-_ZNSaISt4pairIKjjEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjjEED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEED2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEED2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEED2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEED2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp90:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEED2Ev, .Ltmp90-_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEED2Ev

	.section	.text._ZNSaISt4pairIKjjEEC1ISt13_Rb_tree_nodeIS1_EEERKSaIT_E,"axG",%progbits,_ZNSaISt4pairIKjjEEC1ISt13_Rb_tree_nodeIS1_EEERKSaIT_E,comdat
	.weak	_ZNSaISt4pairIKjjEEC1ISt13_Rb_tree_nodeIS1_EEERKSaIT_E
	.align	2
	.type	_ZNSaISt4pairIKjjEEC1ISt13_Rb_tree_nodeIS1_EEERKSaIT_E,%function
_ZNSaISt4pairIKjjEEC1ISt13_Rb_tree_nodeIS1_EEERKSaIT_E: @ @_ZNSaISt4pairIKjjEEC1ISt13_Rb_tree_nodeIS1_EEERKSaIT_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSaISt4pairIKjjEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp91:
	.size	_ZNSaISt4pairIKjjEEC1ISt13_Rb_tree_nodeIS1_EEERKSaIT_E, .Ltmp91-_ZNSaISt4pairIKjjEEC1ISt13_Rb_tree_nodeIS1_EEERKSaIT_E

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE21_M_get_Node_allocatorEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE21_M_get_Node_allocatorEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE21_M_get_Node_allocatorEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE21_M_get_Node_allocatorEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE21_M_get_Node_allocatorEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE21_M_get_Node_allocatorEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp92:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE21_M_get_Node_allocatorEv, .Ltmp92-_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE21_M_get_Node_allocatorEv

	.section	.text._ZNSaISt4pairIKjjEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E,"axG",%progbits,_ZNSaISt4pairIKjjEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E,comdat
	.weak	_ZNSaISt4pairIKjjEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E
	.align	2
	.type	_ZNSaISt4pairIKjjEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E,%function
_ZNSaISt4pairIKjjEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E: @ @_ZNSaISt4pairIKjjEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp93:
	.size	_ZNSaISt4pairIKjjEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E, .Ltmp93-_ZNSaISt4pairIKjjEEC2ISt13_Rb_tree_nodeIS1_EEERKSaIT_E

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjjEEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEEC2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEEC2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEEC2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp94:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEEC2Ev, .Ltmp94-_ZN9__gnu_cxx13new_allocatorISt4pairIKjjEEC2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8allocateEjPKv,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8allocateEjPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8allocateEjPKv
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8allocateEjPKv,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8allocateEjPKv: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8allocateEjPKv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	ldr	r0, [sp, #8]
	ldr	r4, [sp, #4]
	bl	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8max_sizeEv
	cmp	r4, r0
	bhi	.LBB95_2
@ BB#1:                                 @ %if.end
	ldr	r0, [sp, #4]
	add	r0, r0, r0, lsl #1
	lsl	r0, r0, #3
	bl	_Znwj
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.LBB95_2:                               @ %if.then
	bl	_ZSt17__throw_bad_allocv
.Ltmp95:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8allocateEjPKv, .Ltmp95-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8allocateEjPKv

	.section	.text._ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8max_sizeEv,"axG",%progbits,_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8max_sizeEv
	.align	2
	.type	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8max_sizeEv,%function
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8max_sizeEv: @ @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8max_sizeEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, .LCPI96_0
	add	sp, sp, #4
	bx	lr
	.align	2
@ BB#1:
.LCPI96_0:
	.long	178956970               @ 0xaaaaaaa
.Ltmp96:
	.size	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8max_sizeEv, .Ltmp96-_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEE8max_sizeEv

	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC2ERKS3_RKb,"axG",%progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC2ERKS3_RKb,comdat
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC2ERKS3_RKb
	.align	2
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC2ERKS3_RKb,%function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC2ERKS3_RKb: @ @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC2ERKS3_RKb
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [r1]
	str	r1, [r0]
	ldr	r1, [sp]
	ldrb	r1, [r1]
	and	r1, r1, #1
	strb	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp97:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC2ERKS3_RKb, .Ltmp97-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjjEEbEC2ERKS3_RKb

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2EPSt13_Rb_tree_nodeIS2_E,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2EPSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2EPSt13_Rb_tree_nodeIS2_E
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2EPSt13_Rb_tree_nodeIS2_E,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2EPSt13_Rb_tree_nodeIS2_E: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2EPSt13_Rb_tree_nodeIS2_E
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	str	r1, [r0]
	add	sp, sp, #8
	bx	lr
.Ltmp98:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2EPSt13_Rb_tree_nodeIS2_E, .Ltmp98-_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2EPSt13_Rb_tree_nodeIS2_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp99:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E, .Ltmp99-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_valueEPKSt13_Rb_tree_nodeIS2_E

	.section	.text._ZNSt4pairIjjEC2ERKjS2_,"axG",%progbits,_ZNSt4pairIjjEC2ERKjS2_,comdat
	.weak	_ZNSt4pairIjjEC2ERKjS2_
	.align	2
	.type	_ZNSt4pairIjjEC2ERKjS2_,%function
_ZNSt4pairIjjEC2ERKjS2_:                @ @_ZNSt4pairIjjEC2ERKjS2_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r0]
	ldr	r0, [sp, #8]
	str	r1, [r0]
	ldr	r1, [sp]
	ldr	r1, [r1]
	str	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp100:
	.size	_ZNSt4pairIjjEC2ERKjS2_, .Ltmp100-_ZNSt4pairIjjEC2ERKjS2_

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E,%function
_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E: @ @_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
	str	r0, [r11, #-12]
	mov	r0, r1
	str	r1, [sp, #16]
	ldr	r4, [r11, #-12]
	bl	_ZNSt15_List_node_base9_M_unhookEv
	ldr	r0, [sp, #16]
	add	r5, sp, #8
	mov	r1, r4
	str	r0, [sp, #12]
	mov	r0, r5
	bl	_ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv
	ldr	r0, [sp, #12]
	add	r1, r0, #8
	mov	r0, r5
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE7destroyEPS2_
	add	r0, sp, #8
	bl	_ZNSaISt4pairIjjEED1Ev
	ldr	r1, [sp, #12]
	mov	r0, r4
	bl	_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp101:
	.size	_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E, .Ltmp101-_ZNSt4listISt4pairIjjESaIS1_EE8_M_eraseESt14_List_iteratorIS1_E

	.section	.text._ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base,"axG",%progbits,_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base,comdat
	.weak	_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base
	.align	2
	.type	_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base,%function
_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base: @ @_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt14_List_iteratorISt4pairIjjEEC2EPSt15_List_node_base
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp102:
	.size	_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base, .Ltmp102-_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base

	.section	.text._ZNSt14_List_iteratorISt4pairIjjEEC2EPSt15_List_node_base,"axG",%progbits,_ZNSt14_List_iteratorISt4pairIjjEEC2EPSt15_List_node_base,comdat
	.weak	_ZNSt14_List_iteratorISt4pairIjjEEC2EPSt15_List_node_base
	.align	2
	.type	_ZNSt14_List_iteratorISt4pairIjjEEC2EPSt15_List_node_base,%function
_ZNSt14_List_iteratorISt4pairIjjEEC2EPSt15_List_node_base: @ @_ZNSt14_List_iteratorISt4pairIjjEEC2EPSt15_List_node_base
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	str	r1, [r0]
	add	sp, sp, #8
	bx	lr
.Ltmp103:
	.size	_ZNSt14_List_iteratorISt4pairIjjEEC2EPSt15_List_node_base, .Ltmp103-_ZNSt14_List_iteratorISt4pairIjjEEC2EPSt15_List_node_base

	.section	.text._ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv,"axG",%progbits,_ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.weak	_ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv
	.align	2
	.type	_ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv,%function
_ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv: @ @_ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	mov	r0, r1
	str	r1, [sp]
	bl	_ZNKSt10_List_baseISt4pairIjjESaIS1_EE21_M_get_Node_allocatorEv
	mov	r1, r0
	mov	r0, r4
	bl	_ZNSaISt4pairIjjEEC1ISt10_List_nodeIS0_EEERKSaIT_E
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp104:
	.size	_ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv, .Ltmp104-_ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIjjEE7destroyEPS2_,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE7destroyEPS2_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE7destroyEPS2_
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE7destroyEPS2_,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE7destroyEPS2_: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE7destroyEPS2_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	add	sp, sp, #8
	bx	lr
.Ltmp105:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE7destroyEPS2_, .Ltmp105-_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE7destroyEPS2_

	.section	.text._ZNSaISt4pairIjjEED1Ev,"axG",%progbits,_ZNSaISt4pairIjjEED1Ev,comdat
	.weak	_ZNSaISt4pairIjjEED1Ev
	.align	2
	.type	_ZNSaISt4pairIjjEED1Ev,%function
_ZNSaISt4pairIjjEED1Ev:                 @ @_ZNSaISt4pairIjjEED1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSaISt4pairIjjEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp106:
	.size	_ZNSaISt4pairIjjEED1Ev, .Ltmp106-_ZNSaISt4pairIjjEED1Ev

	.section	.text._ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E,"axG",%progbits,_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E,comdat
	.weak	_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E
	.align	2
	.type	_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E,%function
_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E: @ @_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	mov	r2, #1
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE10deallocateEPS4_j
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp107:
	.size	_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E, .Ltmp107-_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_put_nodeEPSt10_List_nodeIS1_E

	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE10deallocateEPS4_j,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE10deallocateEPS4_j,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE10deallocateEPS4_j
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE10deallocateEPS4_j,%function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE10deallocateEPS4_j: @ @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE10deallocateEPS4_j
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r1, [sp, #8]
	str	r0, [r11, #-4]
	str	r2, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_ZdlPv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp108:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE10deallocateEPS4_j, .Ltmp108-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE10deallocateEPS4_j

	.section	.text._ZNSaISt4pairIjjEED2Ev,"axG",%progbits,_ZNSaISt4pairIjjEED2Ev,comdat
	.weak	_ZNSaISt4pairIjjEED2Ev
	.align	2
	.type	_ZNSaISt4pairIjjEED2Ev,%function
_ZNSaISt4pairIjjEED2Ev:                 @ @_ZNSaISt4pairIjjEED2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp109:
	.size	_ZNSaISt4pairIjjEED2Ev, .Ltmp109-_ZNSaISt4pairIjjEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp110:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev, .Ltmp110-_ZN9__gnu_cxx13new_allocatorISt4pairIjjEED2Ev

	.section	.text._ZNSaISt4pairIjjEEC1ISt10_List_nodeIS0_EEERKSaIT_E,"axG",%progbits,_ZNSaISt4pairIjjEEC1ISt10_List_nodeIS0_EEERKSaIT_E,comdat
	.weak	_ZNSaISt4pairIjjEEC1ISt10_List_nodeIS0_EEERKSaIT_E
	.align	2
	.type	_ZNSaISt4pairIjjEEC1ISt10_List_nodeIS0_EEERKSaIT_E,%function
_ZNSaISt4pairIjjEEC1ISt10_List_nodeIS0_EEERKSaIT_E: @ @_ZNSaISt4pairIjjEEC1ISt10_List_nodeIS0_EEERKSaIT_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSaISt4pairIjjEEC2ISt10_List_nodeIS0_EEERKSaIT_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp111:
	.size	_ZNSaISt4pairIjjEEC1ISt10_List_nodeIS0_EEERKSaIT_E, .Ltmp111-_ZNSaISt4pairIjjEEC1ISt10_List_nodeIS0_EEERKSaIT_E

	.section	.text._ZNKSt10_List_baseISt4pairIjjESaIS1_EE21_M_get_Node_allocatorEv,"axG",%progbits,_ZNKSt10_List_baseISt4pairIjjESaIS1_EE21_M_get_Node_allocatorEv,comdat
	.weak	_ZNKSt10_List_baseISt4pairIjjESaIS1_EE21_M_get_Node_allocatorEv
	.align	2
	.type	_ZNKSt10_List_baseISt4pairIjjESaIS1_EE21_M_get_Node_allocatorEv,%function
_ZNKSt10_List_baseISt4pairIjjESaIS1_EE21_M_get_Node_allocatorEv: @ @_ZNKSt10_List_baseISt4pairIjjESaIS1_EE21_M_get_Node_allocatorEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp112:
	.size	_ZNKSt10_List_baseISt4pairIjjESaIS1_EE21_M_get_Node_allocatorEv, .Ltmp112-_ZNKSt10_List_baseISt4pairIjjESaIS1_EE21_M_get_Node_allocatorEv

	.section	.text._ZNSaISt4pairIjjEEC2ISt10_List_nodeIS0_EEERKSaIT_E,"axG",%progbits,_ZNSaISt4pairIjjEEC2ISt10_List_nodeIS0_EEERKSaIT_E,comdat
	.weak	_ZNSaISt4pairIjjEEC2ISt10_List_nodeIS0_EEERKSaIT_E
	.align	2
	.type	_ZNSaISt4pairIjjEEC2ISt10_List_nodeIS0_EEERKSaIT_E,%function
_ZNSaISt4pairIjjEEC2ISt10_List_nodeIS0_EEERKSaIT_E: @ @_ZNSaISt4pairIjjEEC2ISt10_List_nodeIS0_EEERKSaIT_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp113:
	.size	_ZNSaISt4pairIjjEEC2ISt10_List_nodeIS0_EEERKSaIT_E, .Ltmp113-_ZNSaISt4pairIjjEEC2ISt10_List_nodeIS0_EEERKSaIT_E

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp114:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev, .Ltmp114-_ZN9__gnu_cxx13new_allocatorISt4pairIjjEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseERS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseERS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseERS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseERS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseERS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseERS1_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
	str	r0, [r11, #-12]
	mov	r2, r1
	add	r0, sp, #16
	ldr	r4, [r11, #-12]
	str	r2, [r11, #-16]
	mov	r1, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11equal_rangeERS1_
	mov	r0, r4
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv
	str	r0, [sp, #12]
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #20]
	str	r0, [sp, #8]
	mov	r0, r4
	str	r2, [sp]
	ldr	r1, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_ESD_
	ldr	r5, [sp, #12]
	mov	r0, r4
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv
	sub	r0, r5, r0
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp115:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseERS1_, .Ltmp115-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseERS1_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11equal_rangeERS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11equal_rangeERS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11equal_rangeERS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11equal_rangeERS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11equal_rangeERS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11equal_rangeERS1_
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #52
	str	r1, [r11, #-16]
	mov	r4, r0
	str	r2, [r11, #-20]
	ldr	r5, [r11, #-16]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv
	str	r0, [r11, #-24]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
	str	r0, [r11, #-28]
	b	.LBB116_2
.LBB116_1:                              @ %if.then
                                        @   in Loop: Header=BB116_2 Depth=1
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base
	str	r0, [r11, #-24]
.LBB116_2:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #0
	beq	.LBB116_6
@ BB#3:                                 @ %while.body
                                        @   in Loop: Header=BB116_2 Depth=1
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E
	ldr	r2, [r11, #-20]
	mov	r1, r0
	mov	r0, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	beq	.LBB116_1
@ BB#4:                                 @ %if.else
                                        @   in Loop: Header=BB116_2 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r6, [r11, #-20]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E
	mov	r2, r0
	mov	r0, r5
	mov	r1, r6
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB116_7
@ BB#5:                                 @ %if.then10
                                        @   in Loop: Header=BB116_2 Depth=1
	ldr	r0, [r11, #-24]
	str	r0, [r11, #-28]
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base
	str	r0, [r11, #-24]
	b	.LBB116_2
.LBB116_6:                              @ %while.end
	ldr	r1, [r11, #-28]
	add	r5, sp, #8
	mov	r0, r5
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	ldr	r1, [r11, #-28]
	mov	r6, sp
	mov	r0, r6
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	mov	r0, r4
	mov	r1, r5
	mov	r2, r6
	b	.LBB116_8
.LBB116_7:                              @ %if.else12
	ldr	r0, [r11, #-24]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-28]
	str	r0, [sp, #28]
	ldr	r0, [r11, #-24]
	str	r0, [r11, #-28]
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base
	str	r0, [r11, #-24]
	ldr	r0, [sp, #32]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base
	ldr	r3, [r11, #-20]
	ldr	r2, [r11, #-28]
	ldr	r1, [r11, #-24]
	str	r0, [sp, #32]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_
	ldr	r3, [r11, #-20]
	ldr	r2, [sp, #28]
	ldr	r1, [sp, #32]
	str	r0, [sp, #24]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_
	str	r0, [sp, #16]
	add	r1, sp, #24
	add	r2, sp, #16
	mov	r0, r4
.LBB116_8:                              @ %return
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC1ERKS6_S9_
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	bx	lr
.Ltmp116:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11equal_rangeERS1_, .Ltmp116-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11equal_rangeERS1_

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #20]
	add	sp, sp, #4
	bx	lr
.Ltmp117:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv, .Ltmp117-_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_ESD_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_ESD_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_ESD_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_ESD_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_ESD_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_ESD_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #44
	str	r0, [r11, #-8]
	str	r1, [r11, #-16]
	str	r2, [sp, #24]
	ldr	r4, [r11, #-8]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv
	str	r0, [sp, #16]
	sub	r0, r11, #16
	add	r1, sp, #16
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_
	cmp	r0, #1
	bne	.LBB118_4
@ BB#1:                                 @ %land.lhs.true
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv
	str	r0, [sp, #8]
	add	r0, sp, #24
	add	r1, sp, #8
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_
	cmp	r0, #1
	bne	.LBB118_4
@ BB#2:                                 @ %if.then
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5clearEv
	b	.LBB118_5
.LBB118_3:                              @ %while.body
                                        @   in Loop: Header=BB118_4 Depth=1
	sub	r0, r11, #16
	mov	r1, #0
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEi
	mov	r1, r0
	mov	r0, r4
	str	r1, [sp]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_E
.LBB118_4:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	sub	r0, r11, #16
	add	r1, sp, #24
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEneERKS6_
	cmp	r0, #1
	beq	.LBB118_3
.LBB118_5:                              @ %if.end
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp118:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_ESD_, .Ltmp118-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_ESD_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r1, [r0, #12]
	add	r0, sp, #8
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp119:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv, .Ltmp119-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	add	r1, r0, #4
	add	r0, sp, #8
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp120:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv, .Ltmp120-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5clearEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5clearEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5clearEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5clearEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5clearEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5clearEv
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #4
	mov	r4, r0
	str	r4, [sp]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv
	mov	r1, r0
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
	mov	r5, r0
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv
	str	r5, [r0]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_rootEv
	mov	r6, #0
	str	r6, [r0]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
	mov	r5, r0
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv
	str	r5, [r0]
	str	r6, [r4, #20]
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	bx	lr
.Ltmp121:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5clearEv, .Ltmp121-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5clearEv

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEneERKS6_,"axG",%progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEneERKS6_,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEneERKS6_
	.align	2
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEneERKS6_,%function
_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEneERKS6_: @ @_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEneERKS6_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r1]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r2, r1
	movne	r0, #1
	add	sp, sp, #8
	bx	lr
.Ltmp122:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEneERKS6_, .Ltmp122-_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEneERKS6_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_E
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	str	r0, [r11, #-8]
	str	r1, [sp, #8]
	mov	r0, r1
	ldr	r4, [r11, #-8]
	add	r2, r4, #4
	mov	r1, r2
	bl	_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_
	mov	r1, r0
	mov	r0, r4
	str	r1, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E
	ldr	r0, [r4, #20]
	sub	r0, r0, #1
	str	r0, [r4, #20]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp123:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_E, .Ltmp123-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5eraseESt17_Rb_tree_iteratorIS5_E

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEi,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEi,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEi
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEi,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEi: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEi
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r4, [sp, #4]
	ldr	r0, [r4]
	str	r0, [sp, #8]
	ldr	r0, [r4]
	bl	_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base
	str	r0, [r4]
	ldr	r0, [sp, #8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp124:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEi, .Ltmp124-_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEi

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
	str	r0, [r11, #-12]
	add	r5, sp, #8
	str	r1, [sp, #16]
	ldr	r4, [r11, #-12]
	mov	r0, r5
	mov	r1, r4
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv
	ldr	r0, [sp, #16]
	add	r1, r0, #16
	mov	r0, r5
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE7destroyEPS6_
	add	r0, sp, #8
	bl	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev
	ldr	r1, [sp, #16]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp125:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E, .Ltmp125-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	mov	r0, r1
	str	r1, [sp]
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE21_M_get_Node_allocatorEv
	mov	r1, r0
	mov	r0, r4
	bl	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC1ISt13_Rb_tree_nodeIS4_EEERKSaIT_E
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp126:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv, .Ltmp126-_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE7destroyEPS6_,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE7destroyEPS6_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE7destroyEPS6_
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE7destroyEPS6_,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE7destroyEPS6_: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE7destroyEPS6_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	add	sp, sp, #8
	bx	lr
.Ltmp127:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE7destroyEPS6_, .Ltmp127-_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE7destroyEPS6_

	.section	.text._ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev,"axG",%progbits,_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev,comdat
	.weak	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev
	.align	2
	.type	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev,%function
_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev: @ @_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp128:
	.size	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev, .Ltmp128-_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	mov	r2, #1
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE10deallocateEPS8_j
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp129:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E, .Ltmp129-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS5_E

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE10deallocateEPS8_j,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE10deallocateEPS8_j,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE10deallocateEPS8_j
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE10deallocateEPS8_j,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE10deallocateEPS8_j: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE10deallocateEPS8_j
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r1, [sp, #8]
	str	r0, [r11, #-4]
	str	r2, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_ZdlPv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp130:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE10deallocateEPS8_j, .Ltmp130-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE10deallocateEPS8_j

	.section	.text._ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED2Ev,"axG",%progbits,_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED2Ev,comdat
	.weak	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED2Ev
	.align	2
	.type	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED2Ev,%function
_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED2Ev: @ @_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp131:
	.size	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED2Ev, .Ltmp131-_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEED2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEED2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEED2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEED2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp132:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEED2Ev, .Ltmp132-_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEED2Ev

	.section	.text._ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC1ISt13_Rb_tree_nodeIS4_EEERKSaIT_E,"axG",%progbits,_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC1ISt13_Rb_tree_nodeIS4_EEERKSaIT_E,comdat
	.weak	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC1ISt13_Rb_tree_nodeIS4_EEERKSaIT_E
	.align	2
	.type	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC1ISt13_Rb_tree_nodeIS4_EEERKSaIT_E,%function
_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC1ISt13_Rb_tree_nodeIS4_EEERKSaIT_E: @ @_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC1ISt13_Rb_tree_nodeIS4_EEERKSaIT_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC2ISt13_Rb_tree_nodeIS4_EEERKSaIT_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp133:
	.size	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC1ISt13_Rb_tree_nodeIS4_EEERKSaIT_E, .Ltmp133-_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC1ISt13_Rb_tree_nodeIS4_EEERKSaIT_E

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE21_M_get_Node_allocatorEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE21_M_get_Node_allocatorEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE21_M_get_Node_allocatorEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE21_M_get_Node_allocatorEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE21_M_get_Node_allocatorEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE21_M_get_Node_allocatorEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp134:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE21_M_get_Node_allocatorEv, .Ltmp134-_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE21_M_get_Node_allocatorEv

	.section	.text._ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC2ISt13_Rb_tree_nodeIS4_EEERKSaIT_E,"axG",%progbits,_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC2ISt13_Rb_tree_nodeIS4_EEERKSaIT_E,comdat
	.weak	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC2ISt13_Rb_tree_nodeIS4_EEERKSaIT_E
	.align	2
	.type	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC2ISt13_Rb_tree_nodeIS4_EEERKSaIT_E,%function
_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC2ISt13_Rb_tree_nodeIS4_EEERKSaIT_E: @ @_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC2ISt13_Rb_tree_nodeIS4_EEERKSaIT_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp135:
	.size	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC2ISt13_Rb_tree_nodeIS4_EEERKSaIT_E, .Ltmp135-_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEEC2ISt13_Rb_tree_nodeIS4_EEERKSaIT_E

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEEC2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEEC2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEEC2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp136:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEEC2Ev, .Ltmp136-_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	ldr	r4, [sp, #8]
	b	.LBB137_2
.LBB137_1:                              @ %while.body
                                        @   in Loop: Header=BB137_2 Depth=1
	ldr	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base
	mov	r1, r0
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E
	ldr	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base
	ldr	r1, [sp, #4]
	str	r0, [sp]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E
	ldr	r0, [sp]
	str	r0, [sp, #4]
.LBB137_2:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.LBB137_1
@ BB#3:                                 @ %while.end
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp137:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E, .Ltmp137-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #8]
	add	sp, sp, #4
	bx	lr
.Ltmp138:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv, .Ltmp138-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #4
	add	sp, sp, #4
	bx	lr
.Ltmp139:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv, .Ltmp139-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #12
	add	sp, sp, #4
	bx	lr
.Ltmp140:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv, .Ltmp140-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_rootEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_rootEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_rootEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_rootEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_rootEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_rootEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #8
	add	sp, sp, #4
	bx	lr
.Ltmp141:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_rootEv, .Ltmp141-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_M_rootEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp142:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv, .Ltmp142-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Ltmp143:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base, .Ltmp143-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #8]
	add	sp, sp, #4
	bx	lr
.Ltmp144:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base, .Ltmp144-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2EPSt13_Rb_tree_nodeIS5_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp145:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E, .Ltmp145-_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2EPSt13_Rb_tree_nodeIS5_E,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2EPSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2EPSt13_Rb_tree_nodeIS5_E
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2EPSt13_Rb_tree_nodeIS5_E,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2EPSt13_Rb_tree_nodeIS5_E: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2EPSt13_Rb_tree_nodeIS5_E
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	str	r1, [r0]
	add	sp, sp, #8
	bx	lr
.Ltmp146:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2EPSt13_Rb_tree_nodeIS5_E, .Ltmp146-_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2EPSt13_Rb_tree_nodeIS5_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E
	mov	r1, r0
	mov	r0, sp
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp147:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E, .Ltmp147-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E

	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC1ERKS6_S9_,"axG",%progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC1ERKS6_S9_,comdat
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC1ERKS6_S9_
	.align	2
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC1ERKS6_S9_,%function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC1ERKS6_S9_: @ @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC1ERKS6_S9_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC2ERKS6_S9_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp148:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC1ERKS6_S9_, .Ltmp148-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC1ERKS6_S9_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r4, [sp, #12]
	b	.LBB149_2
.LBB149_1:                              @ %if.then
                                        @   in Loop: Header=BB149_2 Depth=1
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base
	str	r0, [sp, #8]
.LBB149_2:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB149_5
@ BB#3:                                 @ %while.body
                                        @   in Loop: Header=BB149_2 Depth=1
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E
	ldr	r2, [sp]
	mov	r1, r0
	mov	r0, r4
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #0
	beq	.LBB149_1
@ BB#4:                                 @ %if.else
                                        @   in Loop: Header=BB149_2 Depth=1
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base
	str	r0, [sp, #8]
	b	.LBB149_2
.LBB149_5:                              @ %while.end
	ldr	r1, [sp, #4]
	sub	r0, r11, #8
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	ldr	r0, [r11, #-8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp149:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_, .Ltmp149-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r4, [sp, #12]
	b	.LBB150_2
.LBB150_1:                              @ %if.else
                                        @   in Loop: Header=BB150_2 Depth=1
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base
	str	r0, [sp, #8]
.LBB150_2:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB150_5
@ BB#3:                                 @ %while.body
                                        @   in Loop: Header=BB150_2 Depth=1
	ldr	r0, [sp, #8]
	ldr	r5, [sp]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB150_1
@ BB#4:                                 @ %if.then
                                        @   in Loop: Header=BB150_2 Depth=1
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base
	str	r0, [sp, #8]
	b	.LBB150_2
.LBB150_5:                              @ %while.end
	ldr	r1, [sp, #4]
	add	r0, sp, #16
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	ldr	r0, [sp, #16]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp150:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_, .Ltmp150-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_upper_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_

	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC2ERKS6_S9_,"axG",%progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC2ERKS6_S9_,comdat
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC2ERKS6_S9_
	.align	2
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC2ERKS6_S9_,%function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC2ERKS6_S9_: @ @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC2ERKS6_S9_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [r1]
	str	r1, [r0]
	ldr	r1, [sp]
	ldr	r1, [r1]
	str	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp151:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC2ERKS6_S9_, .Ltmp151-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEES6_EC2ERKS6_S9_

	.section	.text._ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_,"axG",%progbits,_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_,comdat
	.weak	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	.align	2
	.type	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_,%function
_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_: @ @_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r0, r1
	add	sp, sp, #8
	bx	lr
.Ltmp152:
	.size	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_, .Ltmp152-_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp153:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E, .Ltmp153-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt13_Rb_tree_nodeIS5_E

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EE3endEv,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EE3endEv,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EE3endEv
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EE3endEv,%function
_ZNSt4listISt4pairIjjESaIS1_EE3endEv:   @ @_ZNSt4listISt4pairIjjESaIS1_EE3endEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	mov	r1, r0
	add	r0, sp, #8
	str	r1, [sp, #4]
	bl	_ZNSt14_List_iteratorISt4pairIjjEEC1EPSt15_List_node_base
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp154:
	.size	_ZNSt4listISt4pairIjjESaIS1_EE3endEv, .Ltmp154-_ZNSt4listISt4pairIjjESaIS1_EE3endEv

	.section	.text._ZNSt14_List_iteratorISt4pairIjjEEmmEv,"axG",%progbits,_ZNSt14_List_iteratorISt4pairIjjEEmmEv,comdat
	.weak	_ZNSt14_List_iteratorISt4pairIjjEEmmEv
	.align	2
	.type	_ZNSt14_List_iteratorISt4pairIjjEEmmEv,%function
_ZNSt14_List_iteratorISt4pairIjjEEmmEv: @ @_ZNSt14_List_iteratorISt4pairIjjEEmmEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r1, [r0]
	ldr	r1, [r1, #4]
	str	r1, [r0]
	add	sp, sp, #4
	bx	lr
.Ltmp155:
	.size	_ZNSt14_List_iteratorISt4pairIjjEEmmEv, .Ltmp155-_ZNSt14_List_iteratorISt4pairIjjEEmmEv

	.section	.text._ZNKSt14_List_iteratorISt4pairIjjEEdeEv,"axG",%progbits,_ZNKSt14_List_iteratorISt4pairIjjEEdeEv,comdat
	.weak	_ZNKSt14_List_iteratorISt4pairIjjEEdeEv
	.align	2
	.type	_ZNKSt14_List_iteratorISt4pairIjjEEdeEv,%function
_ZNKSt14_List_iteratorISt4pairIjjEEdeEv: @ @_ZNKSt14_List_iteratorISt4pairIjjEEdeEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0]
	add	r0, r0, #8
	add	sp, sp, #4
	bx	lr
.Ltmp156:
	.size	_ZNKSt14_List_iteratorISt4pairIjjEEdeEv, .Ltmp156-_ZNKSt14_List_iteratorISt4pairIjjEEdeEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4findERS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4findERS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4findERS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4findERS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4findERS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4findERS1_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	ldr	r4, [sp, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv
	mov	r5, r0
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
	ldr	r3, [sp, #16]
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_
	str	r0, [sp, #8]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv
	str	r0, [sp]
	add	r0, sp, #8
	mov	r1, sp
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_
	cmp	r0, #0
	bne	.LBB157_2
@ BB#1:                                 @ %lor.lhs.false
	ldr	r0, [sp, #8]
	ldr	r5, [sp, #16]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB157_3
.LBB157_2:                              @ %cond.true
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE3endEv
	b	.LBB157_4
.LBB157_3:                              @ %cond.false
	ldr	r0, [sp, #8]
.LBB157_4:                              @ %cond.end
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp157:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4findERS1_, .Ltmp157-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4findERS1_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base
	mov	r1, r0
	mov	r0, sp
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp158:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base, .Ltmp158-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp159:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base, .Ltmp159-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_valueEPKSt18_Rb_tree_node_base

	.section	.text._ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE11lower_boundERS6_,"axG",%progbits,_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE11lower_boundERS6_,comdat
	.weak	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE11lower_boundERS6_
	.align	2
	.type	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE11lower_boundERS6_,%function
_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE11lower_boundERS6_: @ @_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE11lower_boundERS6_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11lower_boundERS1_
	str	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp160:
	.size	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE11lower_boundERS6_, .Ltmp160-_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE11lower_boundERS6_

	.section	.text._ZNKSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE8key_compEv,"axG",%progbits,_ZNKSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE8key_compEv,comdat
	.weak	_ZNKSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE8key_compEv
	.align	2
	.type	_ZNKSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE8key_compEv,%function
_ZNKSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE8key_compEv: @ @_ZNKSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE8key_compEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8key_compEv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp161:
	.size	_ZNKSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE8key_compEv, .Ltmp161-_ZNKSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE8key_compEv

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv,"axG",%progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv
	.align	2
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv,%function
_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv: @ @_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0]
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp162:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv, .Ltmp162-_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEdeEv

	.section	.text._ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE6insertESt17_Rb_tree_iteratorIS7_ERKS7_,"axG",%progbits,_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE6insertESt17_Rb_tree_iteratorIS7_ERKS7_,comdat
	.weak	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE6insertESt17_Rb_tree_iteratorIS7_ERKS7_
	.align	2
	.type	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE6insertESt17_Rb_tree_iteratorIS7_ERKS7_,%function
_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE6insertESt17_Rb_tree_iteratorIS7_ERKS7_: @ @_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE6insertESt17_Rb_tree_iteratorIS7_ERKS7_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r0, sp
	add	r1, sp, #8
	str	r2, [sp, #4]
	ldr	r4, [sp, #12]
	bl	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1ERKSt17_Rb_tree_iteratorIS5_E
	ldm	sp, {r1, r2}
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_
	str	r0, [r11, #-8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp163:
	.size	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE6insertESt17_Rb_tree_iteratorIS7_ERKS7_, .Ltmp163-_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEE6insertESt17_Rb_tree_iteratorIS7_ERKS7_

	.section	.text._ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC1ERS0_RKS3_,"axG",%progbits,_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC1ERS0_RKS3_,comdat
	.weak	_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC1ERS0_RKS3_
	.align	2
	.type	_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC1ERS0_RKS3_,%function
_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC1ERS0_RKS3_: @ @_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC1ERS0_RKS3_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC2ERS0_RKS3_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp164:
	.size	_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC1ERS0_RKS3_, .Ltmp164-_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC1ERS0_RKS3_

	.section	.text._ZNSt14_List_iteratorISt4pairIjjEEC1Ev,"axG",%progbits,_ZNSt14_List_iteratorISt4pairIjjEEC1Ev,comdat
	.weak	_ZNSt14_List_iteratorISt4pairIjjEEC1Ev
	.align	2
	.type	_ZNSt14_List_iteratorISt4pairIjjEEC1Ev,%function
_ZNSt14_List_iteratorISt4pairIjjEEC1Ev: @ @_ZNSt14_List_iteratorISt4pairIjjEEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt14_List_iteratorISt4pairIjjEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp165:
	.size	_ZNSt14_List_iteratorISt4pairIjjEEC1Ev, .Ltmp165-_ZNSt14_List_iteratorISt4pairIjjEEC1Ev

	.section	.text._ZNSt14_List_iteratorISt4pairIjjEEC2Ev,"axG",%progbits,_ZNSt14_List_iteratorISt4pairIjjEEC2Ev,comdat
	.weak	_ZNSt14_List_iteratorISt4pairIjjEEC2Ev
	.align	2
	.type	_ZNSt14_List_iteratorISt4pairIjjEEC2Ev,%function
_ZNSt14_List_iteratorISt4pairIjjEEC2Ev: @ @_ZNSt14_List_iteratorISt4pairIjjEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	mov	r1, #0
	str	r1, [r0]
	add	sp, sp, #4
	bx	lr
.Ltmp166:
	.size	_ZNSt14_List_iteratorISt4pairIjjEEC2Ev, .Ltmp166-_ZNSt14_List_iteratorISt4pairIjjEEC2Ev

	.section	.text._ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC2ERS0_RKS3_,"axG",%progbits,_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC2ERS0_RKS3_,comdat
	.weak	_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC2ERS0_RKS3_
	.align	2
	.type	_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC2ERS0_RKS3_,%function
_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC2ERS0_RKS3_: @ @_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC2ERS0_RKS3_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r0]
	ldr	r0, [sp, #8]
	str	r1, [r0]
	ldr	r1, [sp]
	ldr	r1, [r1]
	str	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp167:
	.size	_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC2ERS0_RKS3_, .Ltmp167-_ZNSt4pairIKjSt14_List_iteratorIS_IjjEEEC2ERS0_RKS3_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #96
	str	r0, [r11, #-20]
	str	r1, [r11, #-24]
	str	r2, [r11, #-28]
	ldr	r4, [r11, #-20]
	ldr	r5, [r11, #-24]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
	cmp	r5, r0
	beq	.LBB168_6
@ BB#1:                                 @ %if.else12
	ldr	r1, [r11, #-28]
	sub	r0, r11, #48
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	r5, r0
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB168_9
@ BB#2:                                 @ %if.then20
	ldr	r0, [r11, #-24]
	ldr	r5, [r11, #-24]
	str	r0, [sp, #48]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv
	ldr	r0, [r0]
	cmp	r5, r0
	beq	.LBB168_17
@ BB#3:                                 @ %if.else31
	add	r0, sp, #48
	bl	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv
	ldr	r0, [r0]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	r1, [r11, #-28]
	mov	r5, r0
	add	r0, sp, #40
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB168_18
@ BB#4:                                 @ %if.then40
	ldr	r0, [sp, #48]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base
	cmp	r0, #0
	beq	.LBB168_20
@ BB#5:                                 @ %if.else49
	ldr	r3, [r11, #-28]
	ldr	r1, [r11, #-24]
	b	.LBB168_14
.LBB168_6:                              @ %if.then
	mov	r0, r4
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE4sizeEv
	cmp	r0, #0
	beq	.LBB168_8
@ BB#7:                                 @ %land.lhs.true
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv
	ldr	r0, [r0]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	r1, [r11, #-28]
	mov	r5, r0
	sub	r0, r11, #32
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	beq	.LBB168_16
.LBB168_8:                              @ %if.else
	ldr	r2, [r11, #-28]
	sub	r0, r11, #40
	mov	r1, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_
	ldr	r0, [r11, #-40]
	str	r0, [r11, #-16]
	b	.LBB168_24
.LBB168_9:                              @ %if.else58
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	r1, [r11, #-28]
	mov	r5, r0
	add	r0, sp, #24
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB168_15
@ BB#10:                                @ %if.then66
	ldr	r0, [r11, #-24]
	ldr	r5, [r11, #-24]
	str	r0, [sp, #16]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv
	ldr	r0, [r0]
	cmp	r5, r0
	beq	.LBB168_16
@ BB#11:                                @ %if.else76
	ldr	r1, [r11, #-28]
	add	r0, sp, #8
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	r5, r0
	add	r0, sp, #16
	bl	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEv
	ldr	r0, [r0]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB168_19
@ BB#12:                                @ %if.then85
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base
	cmp	r0, #0
	beq	.LBB168_21
@ BB#13:                                @ %if.else94
	ldr	r3, [r11, #-28]
	ldr	r1, [sp, #16]
.LBB168_14:                             @ %return
	mov	r0, r4
	mov	r2, r1
	b	.LBB168_23
.LBB168_15:                             @ %if.else103
	ldr	r1, [r11, #-24]
	sub	r0, r11, #16
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	b	.LBB168_24
.LBB168_16:                             @ %if.then8
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_rightmostEv
	ldr	r2, [r0]
	ldr	r3, [r11, #-28]
	b	.LBB168_22
.LBB168_17:                             @ %if.then25
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv
	ldr	r5, [r0]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_leftmostEv
	ldr	r2, [r0]
	ldr	r3, [r11, #-28]
	mov	r0, r4
	mov	r1, r5
	b	.LBB168_23
.LBB168_18:                             @ %if.else55
	ldr	r2, [r11, #-28]
	add	r0, sp, #32
	mov	r1, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_
	ldr	r0, [sp, #32]
	str	r0, [r11, #-16]
	b	.LBB168_24
.LBB168_19:                             @ %if.else100
	ldr	r2, [r11, #-28]
	mov	r0, sp
	mov	r1, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_
	ldr	r0, [sp]
	str	r0, [r11, #-16]
	b	.LBB168_24
.LBB168_20:                             @ %if.then44
	ldr	r3, [r11, #-28]
	ldr	r2, [sp, #48]
	b	.LBB168_22
.LBB168_21:                             @ %if.then89
	ldr	r3, [r11, #-28]
	ldr	r2, [r11, #-24]
.LBB168_22:                             @ %return
	mov	r0, r4
	mov	r1, #0
.LBB168_23:                             @ %return
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_
	str	r0, [r11, #-16]
.LBB168_24:                             @ %return
	ldr	r0, [r11, #-16]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp168:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_, .Ltmp168-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS5_ERKS5_

	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1ERKSt17_Rb_tree_iteratorIS5_E,"axG",%progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1ERKSt17_Rb_tree_iteratorIS5_E,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1ERKSt17_Rb_tree_iteratorIS5_E
	.align	2
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1ERKSt17_Rb_tree_iteratorIS5_E,%function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1ERKSt17_Rb_tree_iteratorIS5_E: @ @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1ERKSt17_Rb_tree_iteratorIS5_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2ERKSt17_Rb_tree_iteratorIS5_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp169:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1ERKSt17_Rb_tree_iteratorIS5_E, .Ltmp169-_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1ERKSt17_Rb_tree_iteratorIS5_E

	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2ERKSt17_Rb_tree_iteratorIS5_E,"axG",%progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2ERKSt17_Rb_tree_iteratorIS5_E,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2ERKSt17_Rb_tree_iteratorIS5_E
	.align	2
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2ERKSt17_Rb_tree_iteratorIS5_E,%function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2ERKSt17_Rb_tree_iteratorIS5_E: @ @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2ERKSt17_Rb_tree_iteratorIS5_E
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r1, [r1]
	ldr	r0, [sp, #4]
	str	r1, [r0]
	add	sp, sp, #8
	bx	lr
.Ltmp170:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2ERKSt17_Rb_tree_iteratorIS5_E, .Ltmp170-_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC2ERKSt17_Rb_tree_iteratorIS5_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #36
	str	r0, [r11, #-20]
	str	r1, [sp, #24]
	mov	r5, #1
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	ldr	r4, [r11, #-20]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	bne	.LBB171_3
@ BB#1:                                 @ %lor.lhs.false
	ldr	r6, [sp, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
	cmp	r6, r0
	beq	.LBB171_3
@ BB#2:                                 @ %lor.rhs
	ldr	r1, [sp, #16]
	add	r0, sp, #8
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	r5, r0
	ldr	r0, [sp, #20]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	mov	r5, r0
.LBB171_3:                              @ %lor.end
	ldr	r1, [sp, #16]
	mov	r0, r4
	strb	r5, [sp, #15]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_create_nodeERKS5_
	mov	r1, r0
	ldrb	r0, [sp, #15]
	ldr	r2, [sp, #20]
	add	r3, r4, #4
	str	r1, [sp, #4]
	and	r0, r0, #1
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	r0, [r4, #20]
	add	r0, r0, #1
	str	r0, [r4, #20]
	sub	r0, r11, #16
	ldr	r1, [sp, #4]
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	ldr	r0, [r11, #-16]
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	bx	lr
.Ltmp171:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_, .Ltmp171-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #72
	str	r1, [r11, #-20]
	mov	r4, r0
	str	r2, [r11, #-24]
	ldr	r5, [r11, #-20]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv
	str	r0, [r11, #-28]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
	str	r0, [r11, #-32]
	mov	r0, #1
	sub	r6, r11, #40
	strb	r0, [r11, #-33]
	b	.LBB172_2
.LBB172_1:                              @ %cond.true
                                        @   in Loop: Header=BB172_2 Depth=1
	ldr	r0, [r11, #-28]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE7_S_leftEPSt18_Rb_tree_node_base
	str	r0, [r11, #-28]
.LBB172_2:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-28]
	cmp	r0, #0
	beq	.LBB172_5
@ BB#3:                                 @ %while.body
                                        @   in Loop: Header=BB172_2 Depth=1
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-24]
	str	r0, [r11, #-32]
	mov	r0, r6
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	r7, r0
	ldr	r0, [r11, #-28]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt13_Rb_tree_nodeIS5_E
	mov	r2, r0
	mov	r0, r5
	mov	r1, r7
	bl	_ZNKSt4lessIjEclERKjS2_
	strb	r0, [r11, #-33]
	cmp	r0, #0
	bne	.LBB172_1
@ BB#4:                                 @ %cond.false
                                        @   in Loop: Header=BB172_2 Depth=1
	ldr	r0, [r11, #-28]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPSt18_Rb_tree_node_base
	str	r0, [r11, #-28]
	b	.LBB172_2
.LBB172_5:                              @ %while.end
	ldr	r1, [r11, #-32]
	add	r0, sp, #40
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEC1EPSt13_Rb_tree_nodeIS5_E
	ldrb	r0, [r11, #-33]
	tst	r0, #1
	beq	.LBB172_9
@ BB#6:                                 @ %if.then
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE5beginEv
	str	r0, [sp, #32]
	add	r0, sp, #40
	add	r1, sp, #32
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEeqERKS6_
	cmp	r0, #1
	bne	.LBB172_8
@ BB#7:                                 @ %if.then13
	ldr	r3, [r11, #-24]
	ldr	r2, [r11, #-32]
	ldr	r1, [r11, #-28]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_
	str	r0, [sp, #24]
	mov	r0, #1
	add	r1, sp, #24
	add	r2, sp, #23
	strb	r0, [sp, #23]
	b	.LBB172_12
.LBB172_8:                              @ %if.else
	add	r0, sp, #40
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv
.LBB172_9:                              @ %if.end21
	ldr	r0, [sp, #40]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	r1, [r11, #-24]
	mov	r6, r0
	add	r0, sp, #16
	bl	_ZNKSt10_Select1stISt4pairIKjSt14_List_iteratorIS0_IjjEEEEclERKS5_
	mov	r2, r0
	mov	r0, r5
	mov	r1, r6
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB172_11
@ BB#10:                                @ %if.then28
	ldr	r3, [r11, #-24]
	ldr	r2, [r11, #-32]
	ldr	r1, [r11, #-28]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_M_insert_EPKSt18_Rb_tree_node_baseSE_RKS5_
	str	r0, [sp, #8]
	mov	r0, #1
	add	r1, sp, #8
	add	r2, sp, #7
	strb	r0, [sp, #7]
	b	.LBB172_12
.LBB172_11:                             @ %if.end35
	mov	r0, #0
	add	r1, sp, #40
	add	r2, sp, #6
	strb	r0, [sp, #6]
.LBB172_12:                             @ %return
	mov	r0, r4
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC1ERKS6_RKb
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp172:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_, .Ltmp172-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE16_M_insert_uniqueERKS5_

	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv,"axG",%progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv
	.align	2
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv,%function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv: @ @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	str	r4, [sp]
	ldr	r0, [r4]
	bl	_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base
	str	r0, [r4]
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp173:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv, .Ltmp173-_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Ltmp174:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base, .Ltmp174-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_S_rightEPKSt18_Rb_tree_node_base

	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEv,"axG",%progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEv,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEv
	.align	2
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEv,%function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEv: @ @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	str	r4, [sp]
	ldr	r0, [r4]
	bl	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
	str	r0, [r4]
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp175:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEv, .Ltmp175-_ZNSt23_Rb_tree_const_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEppEv

	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC1ERKS6_RKb,"axG",%progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC1ERKS6_RKb,comdat
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC1ERKS6_RKb
	.align	2
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC1ERKS6_RKb,%function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC1ERKS6_RKb: @ @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC1ERKS6_RKb
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC2ERKS6_RKb
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp176:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC1ERKS6_RKb, .Ltmp176-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC1ERKS6_RKb

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	str	r4, [sp]
	ldr	r0, [r4]
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	str	r0, [r4]
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp177:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv, .Ltmp177-_ZNSt17_Rb_tree_iteratorISt4pairIKjSt14_List_iteratorIS0_IjjEEEEmmEv

	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC2ERKS6_RKb,"axG",%progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC2ERKS6_RKb,comdat
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC2ERKS6_RKb
	.align	2
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC2ERKS6_RKb,%function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC2ERKS6_RKb: @ @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC2ERKS6_RKb
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [r1]
	str	r1, [r0]
	ldr	r1, [sp]
	ldrb	r1, [r1]
	and	r1, r1, #1
	strb	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp178:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC2ERKS6_RKb, .Ltmp178-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjSt14_List_iteratorIS_IjjEEEEbEC2ERKS6_RKb

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_create_nodeERKS5_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_create_nodeERKS5_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_create_nodeERKS5_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_create_nodeERKS5_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_create_nodeERKS5_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_create_nodeERKS5_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #28
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r4, [r11, #-8]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_get_nodeEv
	str	r0, [sp, #16]
	add	r0, sp, #8
	mov	r1, r4
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13get_allocatorEv
	ldr	r0, [sp, #16]
	ldr	r2, [r11, #-12]
	add	r1, r0, #16
	add	r0, sp, #8
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE9constructEPS6_RKS6_
	add	r0, sp, #8
	bl	_ZNSaISt4pairIKjSt14_List_iteratorIS_IjjEEEED1Ev
	ldr	r0, [sp, #16]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp179:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_create_nodeERKS5_, .Ltmp179-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_create_nodeERKS5_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_get_nodeEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_get_nodeEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_get_nodeEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_get_nodeEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_get_nodeEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_get_nodeEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r1, #1
	mov	r2, #0
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8allocateEjPKv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp180:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_get_nodeEv, .Ltmp180-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11_M_get_nodeEv

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE9constructEPS6_RKS6_,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE9constructEPS6_RKS6_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE9constructEPS6_RKS6_
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE9constructEPS6_RKS6_,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE9constructEPS6_RKS6_: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE9constructEPS6_RKS6_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	ldrne	r1, [sp]
	ldrne	r2, [r1]
	ldrne	r1, [r1, #4]
	strne	r2, [r0]
	strne	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp181:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE9constructEPS6_RKS6_, .Ltmp181-_ZN9__gnu_cxx13new_allocatorISt4pairIKjSt14_List_iteratorIS1_IjjEEEE9constructEPS6_RKS6_

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8allocateEjPKv,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8allocateEjPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8allocateEjPKv
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8allocateEjPKv,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8allocateEjPKv: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8allocateEjPKv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	ldr	r0, [sp, #8]
	ldr	r4, [sp, #4]
	bl	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8max_sizeEv
	cmp	r4, r0
	bhi	.LBB182_2
@ BB#1:                                 @ %if.end
	ldr	r0, [sp, #4]
	add	r0, r0, r0, lsl #1
	lsl	r0, r0, #3
	bl	_Znwj
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.LBB182_2:                              @ %if.then
	bl	_ZSt17__throw_bad_allocv
.Ltmp182:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8allocateEjPKv, .Ltmp182-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8allocateEjPKv

	.section	.text._ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8max_sizeEv,"axG",%progbits,_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8max_sizeEv
	.align	2
	.type	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8max_sizeEv,%function
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8max_sizeEv: @ @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8max_sizeEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, .LCPI183_0
	add	sp, sp, #4
	bx	lr
	.align	2
@ BB#1:
.LCPI183_0:
	.long	178956970               @ 0xaaaaaaa
.Ltmp183:
	.size	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8max_sizeEv, .Ltmp183-_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEE8max_sizeEv

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8key_compEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8key_compEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8key_compEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8key_compEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8key_compEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8key_compEv
@ BB#0:                                 @ %entry
	sub	sp, sp, #16
	str	r0, [sp, #4]
	add	sp, sp, #16
	bx	lr
.Ltmp184:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8key_compEv, .Ltmp184-_ZNKSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8key_compEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11lower_boundERS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11lower_boundERS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11lower_boundERS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11lower_boundERS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11lower_boundERS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11lower_boundERS1_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r4, [sp, #4]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE8_M_beginEv
	mov	r5, r0
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE6_M_endEv
	ldr	r3, [sp]
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_ESE_RS1_
	str	r0, [sp, #8]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp185:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11lower_boundERS1_, .Ltmp185-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE11lower_boundERS1_

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EE9_M_insertESt14_List_iteratorIS1_ERKS1_,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EE9_M_insertESt14_List_iteratorIS1_ERKS1_,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EE9_M_insertESt14_List_iteratorIS1_ERKS1_
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EE9_M_insertESt14_List_iteratorIS1_ERKS1_,%function
_ZNSt4listISt4pairIjjESaIS1_EE9_M_insertESt14_List_iteratorIS1_ERKS1_: @ @_ZNSt4listISt4pairIjjESaIS1_EE9_M_insertESt14_List_iteratorIS1_ERKS1_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	mov	r1, r2
	str	r2, [sp, #4]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4listISt4pairIjjESaIS1_EE14_M_create_nodeERKS1_
	ldr	r1, [sp, #8]
	str	r0, [sp]
	bl	_ZNSt15_List_node_base7_M_hookEPS_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp186:
	.size	_ZNSt4listISt4pairIjjESaIS1_EE9_M_insertESt14_List_iteratorIS1_ERKS1_, .Ltmp186-_ZNSt4listISt4pairIjjESaIS1_EE9_M_insertESt14_List_iteratorIS1_ERKS1_

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EE14_M_create_nodeERKS1_,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EE14_M_create_nodeERKS1_,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EE14_M_create_nodeERKS1_
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EE14_M_create_nodeERKS1_,%function
_ZNSt4listISt4pairIjjESaIS1_EE14_M_create_nodeERKS1_: @ @_ZNSt4listISt4pairIjjESaIS1_EE14_M_create_nodeERKS1_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #28
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r4, [r11, #-8]
	mov	r0, r4
	bl	_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_get_nodeEv
	str	r0, [sp, #16]
	add	r0, sp, #8
	mov	r1, r4
	bl	_ZNKSt10_List_baseISt4pairIjjESaIS1_EE19_M_get_Tp_allocatorEv
	ldr	r0, [sp, #16]
	ldr	r2, [r11, #-12]
	add	r1, r0, #8
	add	r0, sp, #8
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE9constructEPS2_RKS2_
	add	r0, sp, #8
	bl	_ZNSaISt4pairIjjEED1Ev
	ldr	r0, [sp, #16]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp187:
	.size	_ZNSt4listISt4pairIjjESaIS1_EE14_M_create_nodeERKS1_, .Ltmp187-_ZNSt4listISt4pairIjjESaIS1_EE14_M_create_nodeERKS1_

	.section	.text._ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_get_nodeEv,"axG",%progbits,_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_get_nodeEv,comdat
	.weak	_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_get_nodeEv
	.align	2
	.type	_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_get_nodeEv,%function
_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_get_nodeEv: @ @_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_get_nodeEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r1, #1
	mov	r2, #0
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8allocateEjPKv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp188:
	.size	_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_get_nodeEv, .Ltmp188-_ZNSt10_List_baseISt4pairIjjESaIS1_EE11_M_get_nodeEv

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIjjEE9constructEPS2_RKS2_,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE9constructEPS2_RKS2_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE9constructEPS2_RKS2_
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE9constructEPS2_RKS2_,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE9constructEPS2_RKS2_: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE9constructEPS2_RKS2_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	ldrne	r1, [sp]
	ldrne	r2, [r1]
	ldrne	r1, [r1, #4]
	strne	r2, [r0]
	strne	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp189:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE9constructEPS2_RKS2_, .Ltmp189-_ZN9__gnu_cxx13new_allocatorISt4pairIjjEE9constructEPS2_RKS2_

	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8allocateEjPKv,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8allocateEjPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8allocateEjPKv
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8allocateEjPKv,%function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8allocateEjPKv: @ @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8allocateEjPKv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	ldr	r0, [sp, #8]
	ldr	r4, [sp, #4]
	bl	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8max_sizeEv
	cmp	r4, r0
	bhi	.LBB190_2
@ BB#1:                                 @ %if.end
	ldr	r0, [sp, #4]
	lsl	r0, r0, #4
	bl	_Znwj
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.LBB190_2:                              @ %if.then
	bl	_ZSt17__throw_bad_allocv
.Ltmp190:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8allocateEjPKv, .Ltmp190-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8allocateEjPKv

	.section	.text._ZNK9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8max_sizeEv,"axG",%progbits,_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8max_sizeEv
	.align	2
	.type	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8max_sizeEv,%function
_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8max_sizeEv: @ @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8max_sizeEv
@ BB#0:                                 @ %entry
	push	{r0}
	mvn	r0, #-268435456
	add	sp, sp, #4
	bx	lr
.Ltmp191:
	.size	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8max_sizeEv, .Ltmp191-_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEE8max_sizeEv

	.section	.text._ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_,"axG",%progbits,_ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_,comdat
	.weak	_ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_
	.align	2
	.type	_ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_,%function
_ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_: @ @_ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r1]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r2, r1
	movne	r0, #1
	add	sp, sp, #8
	bx	lr
.Ltmp192:
	.size	_ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_, .Ltmp192-_ZNKSt14_List_iteratorISt4pairIjjEEneERKS2_

	.section	.text._ZNSt14_List_iteratorISt4pairIjjEEppEv,"axG",%progbits,_ZNSt14_List_iteratorISt4pairIjjEEppEv,comdat
	.weak	_ZNSt14_List_iteratorISt4pairIjjEEppEv
	.align	2
	.type	_ZNSt14_List_iteratorISt4pairIjjEEppEv,%function
_ZNSt14_List_iteratorISt4pairIjjEEppEv: @ @_ZNSt14_List_iteratorISt4pairIjjEEppEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r1, [r0]
	ldr	r1, [r1]
	str	r1, [r0]
	add	sp, sp, #4
	bx	lr
.Ltmp193:
	.size	_ZNSt14_List_iteratorISt4pairIjjEEppEv, .Ltmp193-_ZNSt14_List_iteratorISt4pairIjjEEppEv

	.section	.text._ZSteqIjjEbRKSt4pairIT_T0_ES5_,"axG",%progbits,_ZSteqIjjEbRKSt4pairIT_T0_ES5_,comdat
	.weak	_ZSteqIjjEbRKSt4pairIT_T0_ES5_
	.align	2
	.type	_ZSteqIjjEbRKSt4pairIT_T0_ES5_,%function
_ZSteqIjjEbRKSt4pairIT_T0_ES5_:         @ @_ZSteqIjjEbRKSt4pairIT_T0_ES5_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r1]
	ldr	r2, [r0]
	mov	r0, #0
	cmp	r2, r1
	bne	.LBB194_2
@ BB#1:                                 @ %land.rhs
	ldr	r0, [sp]
	ldr	r1, [r0, #4]
	ldr	r0, [sp, #4]
	ldr	r2, [r0, #4]
	mov	r0, #0
	cmp	r2, r1
	moveq	r0, #1
.LBB194_2:                              @ %land.end
	add	sp, sp, #8
	bx	lr
.Ltmp194:
	.size	_ZSteqIjjEbRKSt4pairIT_T0_ES5_, .Ltmp194-_ZSteqIjjEbRKSt4pairIT_T0_ES5_

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2Ev,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2Ev,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2Ev
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2Ev,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2Ev: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	mov	r1, #0
	str	r1, [r0]
	add	sp, sp, #4
	bx	lr
.Ltmp195:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2Ev, .Ltmp195-_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC2Ev

	.section	.text._ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_,"axG",%progbits,_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_,comdat
	.weak	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_
	.align	2
	.type	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_,%function
_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_: @ @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11lower_boundERS1_
	str	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp196:
	.size	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_, .Ltmp196-_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE11lower_boundERS3_

	.section	.text._ZNKSt3mapIjjSt4lessIjESaISt4pairIKjjEEE8key_compEv,"axG",%progbits,_ZNKSt3mapIjjSt4lessIjESaISt4pairIKjjEEE8key_compEv,comdat
	.weak	_ZNKSt3mapIjjSt4lessIjESaISt4pairIKjjEEE8key_compEv
	.align	2
	.type	_ZNKSt3mapIjjSt4lessIjESaISt4pairIKjjEEE8key_compEv,%function
_ZNKSt3mapIjjSt4lessIjESaISt4pairIKjjEEE8key_compEv: @ @_ZNKSt3mapIjjSt4lessIjESaISt4pairIKjjEEE8key_compEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8key_compEv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp197:
	.size	_ZNKSt3mapIjjSt4lessIjESaISt4pairIKjjEEE8key_compEv, .Ltmp197-_ZNKSt3mapIjjSt4lessIjESaISt4pairIKjjEEE8key_compEv

	.section	.text._ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv,"axG",%progbits,_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv,comdat
	.weak	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv
	.align	2
	.type	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv,%function
_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv: @ @_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0]
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp198:
	.size	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv, .Ltmp198-_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEdeEv

	.section	.text._ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_,"axG",%progbits,_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_,comdat
	.weak	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_
	.align	2
	.type	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_,%function
_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_: @ @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r0, sp
	add	r1, sp, #8
	str	r2, [sp, #4]
	ldr	r4, [sp, #12]
	bl	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC1ERKSt17_Rb_tree_iteratorIS2_E
	ldm	sp, {r1, r2}
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_
	str	r0, [r11, #-8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp199:
	.size	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_, .Ltmp199-_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEE6insertESt17_Rb_tree_iteratorIS4_ERKS4_

	.section	.text._ZNSt4pairIKjjEC1ERS0_S2_,"axG",%progbits,_ZNSt4pairIKjjEC1ERS0_S2_,comdat
	.weak	_ZNSt4pairIKjjEC1ERS0_S2_
	.align	2
	.type	_ZNSt4pairIKjjEC1ERS0_S2_,%function
_ZNSt4pairIKjjEC1ERS0_S2_:              @ @_ZNSt4pairIKjjEC1ERS0_S2_
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4pairIKjjEC2ERS0_S2_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp200:
	.size	_ZNSt4pairIKjjEC1ERS0_S2_, .Ltmp200-_ZNSt4pairIKjjEC1ERS0_S2_

	.section	.text._ZNSt4pairIKjjEC2ERS0_S2_,"axG",%progbits,_ZNSt4pairIKjjEC2ERS0_S2_,comdat
	.weak	_ZNSt4pairIKjjEC2ERS0_S2_
	.align	2
	.type	_ZNSt4pairIKjjEC2ERS0_S2_,%function
_ZNSt4pairIKjjEC2ERS0_S2_:              @ @_ZNSt4pairIKjjEC2ERS0_S2_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r0]
	ldr	r0, [sp, #8]
	str	r1, [r0]
	ldr	r1, [sp]
	ldr	r1, [r1]
	str	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp201:
	.size	_ZNSt4pairIKjjEC2ERS0_S2_, .Ltmp201-_ZNSt4pairIKjjEC2ERS0_S2_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #96
	str	r0, [r11, #-20]
	str	r1, [r11, #-24]
	str	r2, [r11, #-28]
	ldr	r4, [r11, #-20]
	ldr	r5, [r11, #-24]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv
	cmp	r5, r0
	beq	.LBB202_6
@ BB#1:                                 @ %if.else12
	ldr	r1, [r11, #-28]
	sub	r0, r11, #48
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	r5, r0
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB202_9
@ BB#2:                                 @ %if.then20
	ldr	r0, [r11, #-24]
	ldr	r5, [r11, #-24]
	str	r0, [sp, #48]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv
	ldr	r0, [r0]
	cmp	r5, r0
	beq	.LBB202_17
@ BB#3:                                 @ %if.else31
	add	r0, sp, #48
	bl	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEmmEv
	ldr	r0, [r0]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	r1, [r11, #-28]
	mov	r5, r0
	add	r0, sp, #40
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB202_18
@ BB#4:                                 @ %if.then40
	ldr	r0, [sp, #48]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base
	cmp	r0, #0
	beq	.LBB202_20
@ BB#5:                                 @ %if.else49
	ldr	r3, [r11, #-28]
	ldr	r1, [r11, #-24]
	b	.LBB202_14
.LBB202_6:                              @ %if.then
	mov	r0, r4
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4sizeEv
	cmp	r0, #0
	beq	.LBB202_8
@ BB#7:                                 @ %land.lhs.true
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv
	ldr	r0, [r0]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	r1, [r11, #-28]
	mov	r5, r0
	sub	r0, r11, #32
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	beq	.LBB202_16
.LBB202_8:                              @ %if.else
	ldr	r2, [r11, #-28]
	sub	r0, r11, #40
	mov	r1, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_
	ldr	r0, [r11, #-40]
	str	r0, [r11, #-16]
	b	.LBB202_24
.LBB202_9:                              @ %if.else58
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	r1, [r11, #-28]
	mov	r5, r0
	add	r0, sp, #24
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB202_15
@ BB#10:                                @ %if.then66
	ldr	r0, [r11, #-24]
	ldr	r5, [r11, #-24]
	str	r0, [sp, #16]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv
	ldr	r0, [r0]
	cmp	r5, r0
	beq	.LBB202_16
@ BB#11:                                @ %if.else76
	ldr	r1, [r11, #-28]
	add	r0, sp, #8
	bl	_ZNKSt10_Select1stISt4pairIKjjEEclERKS2_
	mov	r5, r0
	add	r0, sp, #16
	bl	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEppEv
	ldr	r0, [r0]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB202_19
@ BB#12:                                @ %if.then85
	ldr	r0, [r11, #-24]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base
	cmp	r0, #0
	beq	.LBB202_21
@ BB#13:                                @ %if.else94
	ldr	r3, [r11, #-28]
	ldr	r1, [sp, #16]
.LBB202_14:                             @ %return
	mov	r0, r4
	mov	r2, r1
	b	.LBB202_23
.LBB202_15:                             @ %if.else103
	ldr	r1, [r11, #-24]
	sub	r0, r11, #16
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E
	b	.LBB202_24
.LBB202_16:                             @ %if.then8
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv
	ldr	r2, [r0]
	ldr	r3, [r11, #-28]
	b	.LBB202_22
.LBB202_17:                             @ %if.then25
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv
	ldr	r5, [r0]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv
	ldr	r2, [r0]
	ldr	r3, [r11, #-28]
	mov	r0, r4
	mov	r1, r5
	b	.LBB202_23
.LBB202_18:                             @ %if.else55
	ldr	r2, [r11, #-28]
	add	r0, sp, #32
	mov	r1, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_
	ldr	r0, [sp, #32]
	str	r0, [r11, #-16]
	b	.LBB202_24
.LBB202_19:                             @ %if.else100
	ldr	r2, [r11, #-28]
	mov	r0, sp
	mov	r1, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE16_M_insert_uniqueERKS2_
	ldr	r0, [sp]
	str	r0, [r11, #-16]
	b	.LBB202_24
.LBB202_20:                             @ %if.then44
	ldr	r3, [r11, #-28]
	ldr	r2, [sp, #48]
	b	.LBB202_22
.LBB202_21:                             @ %if.then89
	ldr	r3, [r11, #-28]
	ldr	r2, [r11, #-24]
.LBB202_22:                             @ %return
	mov	r0, r4
	mov	r1, #0
.LBB202_23:                             @ %return
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE10_M_insert_EPKSt18_Rb_tree_node_baseSB_RKS2_
	str	r0, [r11, #-16]
.LBB202_24:                             @ %return
	ldr	r0, [r11, #-16]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp202:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_, .Ltmp202-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE17_M_insert_unique_ESt23_Rb_tree_const_iteratorIS2_ERKS2_

	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC1ERKSt17_Rb_tree_iteratorIS2_E,"axG",%progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC1ERKSt17_Rb_tree_iteratorIS2_E,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC1ERKSt17_Rb_tree_iteratorIS2_E
	.align	2
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC1ERKSt17_Rb_tree_iteratorIS2_E,%function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC1ERKSt17_Rb_tree_iteratorIS2_E: @ @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC1ERKSt17_Rb_tree_iteratorIS2_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC2ERKSt17_Rb_tree_iteratorIS2_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp203:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC1ERKSt17_Rb_tree_iteratorIS2_E, .Ltmp203-_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC1ERKSt17_Rb_tree_iteratorIS2_E

	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC2ERKSt17_Rb_tree_iteratorIS2_E,"axG",%progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC2ERKSt17_Rb_tree_iteratorIS2_E,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC2ERKSt17_Rb_tree_iteratorIS2_E
	.align	2
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC2ERKSt17_Rb_tree_iteratorIS2_E,%function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC2ERKSt17_Rb_tree_iteratorIS2_E: @ @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC2ERKSt17_Rb_tree_iteratorIS2_E
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r1, [r1]
	ldr	r0, [sp, #4]
	str	r1, [r0]
	add	sp, sp, #8
	bx	lr
.Ltmp204:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC2ERKSt17_Rb_tree_iteratorIS2_E, .Ltmp204-_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEC2ERKSt17_Rb_tree_iteratorIS2_E

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4sizeEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4sizeEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4sizeEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4sizeEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4sizeEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4sizeEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #20]
	add	sp, sp, #4
	bx	lr
.Ltmp205:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4sizeEv, .Ltmp205-_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4sizeEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp206:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv, .Ltmp206-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE12_M_rightmostEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #12
	add	sp, sp, #4
	bx	lr
.Ltmp207:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv, .Ltmp207-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11_M_leftmostEv

	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEmmEv,"axG",%progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEmmEv,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEmmEv
	.align	2
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEmmEv,%function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEmmEv: @ @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEmmEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	str	r4, [sp]
	ldr	r0, [r4]
	bl	_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base
	str	r0, [r4]
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp208:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEmmEv, .Ltmp208-_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEmmEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Ltmp209:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base, .Ltmp209-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPKSt18_Rb_tree_node_base

	.section	.text._ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEppEv,"axG",%progbits,_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEppEv,comdat
	.weak	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEppEv
	.align	2
	.type	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEppEv,%function
_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEppEv: @ @_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEppEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	str	r4, [sp]
	ldr	r0, [r4]
	bl	_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base
	str	r0, [r4]
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp210:
	.size	_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEppEv, .Ltmp210-_ZNSt23_Rb_tree_const_iteratorISt4pairIKjjEEppEv

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8key_compEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8key_compEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8key_compEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8key_compEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8key_compEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8key_compEv
@ BB#0:                                 @ %entry
	sub	sp, sp, #16
	str	r0, [sp, #4]
	add	sp, sp, #16
	bx	lr
.Ltmp211:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8key_compEv, .Ltmp211-_ZNKSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8key_compEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11lower_boundERS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11lower_boundERS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11lower_boundERS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11lower_boundERS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11lower_boundERS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11lower_boundERS1_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r4, [sp, #4]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv
	mov	r5, r0
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv
	ldr	r3, [sp]
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_
	str	r0, [sp, #8]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp212:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11lower_boundERS1_, .Ltmp212-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE11lower_boundERS1_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r4, [sp, #12]
	b	.LBB213_2
.LBB213_1:                              @ %if.then
                                        @   in Loop: Header=BB213_2 Depth=1
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE7_S_leftEPSt18_Rb_tree_node_base
	str	r0, [sp, #8]
.LBB213_2:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB213_5
@ BB#3:                                 @ %while.body
                                        @   in Loop: Header=BB213_2 Depth=1
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt13_Rb_tree_nodeIS2_E
	ldr	r2, [sp]
	mov	r1, r0
	mov	r0, r4
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #0
	beq	.LBB213_1
@ BB#4:                                 @ %if.else
                                        @   in Loop: Header=BB213_2 Depth=1
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_S_rightEPSt18_Rb_tree_node_base
	str	r0, [sp, #8]
	b	.LBB213_2
.LBB213_5:                              @ %while.end
	ldr	r1, [sp, #4]
	sub	r0, r11, #8
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E
	ldr	r0, [r11, #-8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp213:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_, .Ltmp213-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	add	r1, r0, #4
	add	r0, sp, #8
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjjEEC1EPSt13_Rb_tree_nodeIS2_E
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp214:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv, .Ltmp214-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4findERS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4findERS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4findERS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4findERS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4findERS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4findERS1_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	ldr	r4, [sp, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE8_M_beginEv
	mov	r5, r0
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_M_endEv
	ldr	r3, [sp, #16]
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS2_ESB_RS1_
	str	r0, [sp, #8]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv
	str	r0, [sp]
	add	r0, sp, #8
	mov	r1, sp
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjjEEeqERKS3_
	cmp	r0, #0
	bne	.LBB215_2
@ BB#1:                                 @ %lor.lhs.false
	ldr	r0, [sp, #8]
	ldr	r5, [sp, #16]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB215_3
.LBB215_2:                              @ %cond.true
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE3endEv
	b	.LBB215_4
.LBB215_3:                              @ %cond.false
	ldr	r0, [sp, #8]
.LBB215_4:                              @ %cond.end
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp215:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4findERS1_, .Ltmp215-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE4findERS1_

	.section	.text._ZNSt4pairIKjS_IjjEEC2IjS1_EERKS_IT_T0_E,"axG",%progbits,_ZNSt4pairIKjS_IjjEEC2IjS1_EERKS_IT_T0_E,comdat
	.weak	_ZNSt4pairIKjS_IjjEEC2IjS1_EERKS_IT_T0_E
	.align	2
	.type	_ZNSt4pairIKjS_IjjEEC2IjS1_EERKS_IT_T0_E,%function
_ZNSt4pairIKjS_IjjEEC2IjS1_EERKS_IT_T0_E: @ @_ZNSt4pairIKjS_IjjEEC2IjS1_EERKS_IT_T0_E
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r1, [r1]
	ldr	r0, [sp, #4]
	str	r1, [r0]
	ldr	r1, [sp]
	ldr	r2, [r1, #4]
	ldr	r1, [r1, #8]
	str	r1, [r0, #8]
	str	r2, [r0, #4]
	add	sp, sp, #8
	bx	lr
.Ltmp216:
	.size	_ZNSt4pairIKjS_IjjEEC2IjS1_EERKS_IT_T0_E, .Ltmp216-_ZNSt4pairIKjS_IjjEEC2IjS1_EERKS_IT_T0_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE16_M_insert_uniqueERKS3_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE16_M_insert_uniqueERKS3_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE16_M_insert_uniqueERKS3_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE16_M_insert_uniqueERKS3_,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE16_M_insert_uniqueERKS3_: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE16_M_insert_uniqueERKS3_
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #72
	str	r1, [r11, #-20]
	mov	r4, r0
	str	r2, [r11, #-24]
	ldr	r5, [r11, #-20]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv
	str	r0, [r11, #-28]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv
	str	r0, [r11, #-32]
	mov	r0, #1
	sub	r6, r11, #40
	strb	r0, [r11, #-33]
	b	.LBB217_2
.LBB217_1:                              @ %cond.true
                                        @   in Loop: Header=BB217_2 Depth=1
	ldr	r0, [r11, #-28]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base
	str	r0, [r11, #-28]
.LBB217_2:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-28]
	cmp	r0, #0
	beq	.LBB217_5
@ BB#3:                                 @ %while.body
                                        @   in Loop: Header=BB217_2 Depth=1
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-24]
	str	r0, [r11, #-32]
	mov	r0, r6
	bl	_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_
	mov	r7, r0
	ldr	r0, [r11, #-28]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E
	mov	r2, r0
	mov	r0, r5
	mov	r1, r7
	bl	_ZNKSt4lessIjEclERKjS2_
	strb	r0, [r11, #-33]
	cmp	r0, #0
	bne	.LBB217_1
@ BB#4:                                 @ %cond.false
                                        @   in Loop: Header=BB217_2 Depth=1
	ldr	r0, [r11, #-28]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base
	str	r0, [r11, #-28]
	b	.LBB217_2
.LBB217_5:                              @ %while.end
	ldr	r1, [r11, #-32]
	add	r0, sp, #40
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E
	ldrb	r0, [r11, #-33]
	tst	r0, #1
	beq	.LBB217_9
@ BB#6:                                 @ %if.then
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE5beginEv
	str	r0, [sp, #32]
	add	r0, sp, #40
	add	r1, sp, #32
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_
	cmp	r0, #1
	bne	.LBB217_8
@ BB#7:                                 @ %if.then13
	ldr	r3, [r11, #-24]
	ldr	r2, [r11, #-32]
	ldr	r1, [r11, #-28]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_
	str	r0, [sp, #24]
	mov	r0, #1
	add	r1, sp, #24
	add	r2, sp, #23
	strb	r0, [sp, #23]
	b	.LBB217_12
.LBB217_8:                              @ %if.else
	add	r0, sp, #40
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEmmEv
.LBB217_9:                              @ %if.end21
	ldr	r0, [sp, #40]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base
	ldr	r1, [r11, #-24]
	mov	r6, r0
	add	r0, sp, #16
	bl	_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_
	mov	r2, r0
	mov	r0, r5
	mov	r1, r6
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB217_11
@ BB#10:                                @ %if.then28
	ldr	r3, [r11, #-24]
	ldr	r2, [r11, #-32]
	ldr	r1, [r11, #-28]
	mov	r0, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_
	str	r0, [sp, #8]
	mov	r0, #1
	add	r1, sp, #8
	add	r2, sp, #7
	strb	r0, [sp, #7]
	b	.LBB217_12
.LBB217_11:                             @ %if.end35
	mov	r0, #0
	add	r1, sp, #40
	add	r2, sp, #6
	strb	r0, [sp, #6]
.LBB217_12:                             @ %return
	mov	r0, r4
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC1ERKS4_RKb
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, lr}
	bx	lr
.Ltmp217:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE16_M_insert_uniqueERKS3_, .Ltmp217-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE16_M_insert_uniqueERKS3_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #8]
	add	sp, sp, #4
	bx	lr
.Ltmp218:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv, .Ltmp218-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #4
	add	sp, sp, #4
	bx	lr
.Ltmp219:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv, .Ltmp219-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv

	.section	.text._ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_,"axG",%progbits,_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_,comdat
	.weak	_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_
	.align	2
	.type	_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_,%function
_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_: @ @_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r0, r1
	add	sp, sp, #8
	bx	lr
.Ltmp220:
	.size	_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_, .Ltmp220-_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt13_Rb_tree_nodeIS3_E
	mov	r1, r0
	mov	r0, sp
	bl	_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp221:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E, .Ltmp221-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #8]
	add	sp, sp, #4
	bx	lr
.Ltmp222:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base, .Ltmp222-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Ltmp223:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base, .Ltmp223-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC2EPSt13_Rb_tree_nodeIS3_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp224:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E, .Ltmp224-_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE5beginEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE5beginEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE5beginEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE5beginEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE5beginEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE5beginEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	ldr	r1, [r0, #12]
	add	r0, sp, #8
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp225:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE5beginEv, .Ltmp225-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE5beginEv

	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC1ERKS4_RKb,"axG",%progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC1ERKS4_RKb,comdat
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC1ERKS4_RKb
	.align	2
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC1ERKS4_RKb,%function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC1ERKS4_RKb: @ @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC1ERKS4_RKb
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC2ERKS4_RKb
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp226:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC1ERKS4_RKb, .Ltmp226-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC1ERKS4_RKb

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_
@ BB#0:                                 @ %entry
	push	{r4, r5, r6, r11, lr}
	add	r11, sp, #12
	sub	sp, sp, #36
	str	r0, [r11, #-20]
	str	r1, [sp, #24]
	mov	r5, #1
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	ldr	r4, [r11, #-20]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	bne	.LBB227_3
@ BB#1:                                 @ %lor.lhs.false
	ldr	r6, [sp, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv
	cmp	r6, r0
	beq	.LBB227_3
@ BB#2:                                 @ %lor.rhs
	ldr	r1, [sp, #16]
	add	r0, sp, #8
	bl	_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_
	mov	r5, r0
	ldr	r0, [sp, #20]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	mov	r5, r0
.LBB227_3:                              @ %lor.end
	ldr	r1, [sp, #16]
	mov	r0, r4
	strb	r5, [sp, #15]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_create_nodeERKS3_
	mov	r1, r0
	ldrb	r0, [sp, #15]
	ldr	r2, [sp, #20]
	add	r3, r4, #4
	str	r1, [sp, #4]
	and	r0, r0, #1
	bl	_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_
	ldr	r0, [r4, #20]
	add	r0, r0, #1
	str	r0, [r4, #20]
	sub	r0, r11, #16
	ldr	r1, [sp, #4]
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E
	ldr	r0, [r11, #-16]
	sub	sp, r11, #12
	pop	{r4, r5, r6, r11, lr}
	bx	lr
.Ltmp227:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_, .Ltmp227-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE10_M_insert_EPKSt18_Rb_tree_node_baseSC_RKS3_

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEmmEv,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEmmEv,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEmmEv
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEmmEv,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEmmEv: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEmmEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	str	r4, [sp]
	ldr	r0, [r4]
	bl	_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base
	str	r0, [r4]
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp228:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEmmEv, .Ltmp228-_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEmmEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt18_Rb_tree_node_base
	mov	r1, r0
	mov	r0, sp
	bl	_ZNKSt10_Select1stISt4pairIKjS0_IjjEEEclERKS3_
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp229:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base, .Ltmp229-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt18_Rb_tree_node_base,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt18_Rb_tree_node_base,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt18_Rb_tree_node_base
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt18_Rb_tree_node_base,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt18_Rb_tree_node_base: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt18_Rb_tree_node_base
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp230:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt18_Rb_tree_node_base, .Ltmp230-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt18_Rb_tree_node_base

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_create_nodeERKS3_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_create_nodeERKS3_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_create_nodeERKS3_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_create_nodeERKS3_,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_create_nodeERKS3_: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_create_nodeERKS3_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #28
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r4, [r11, #-8]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_get_nodeEv
	str	r0, [sp, #16]
	add	r0, sp, #8
	mov	r1, r4
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13get_allocatorEv
	ldr	r0, [sp, #16]
	ldr	r2, [r11, #-12]
	add	r1, r0, #16
	add	r0, sp, #8
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEE9constructEPS4_RKS4_
	add	r0, sp, #8
	bl	_ZNSaISt4pairIKjS_IjjEEED1Ev
	ldr	r0, [sp, #16]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp231:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_create_nodeERKS3_, .Ltmp231-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_create_nodeERKS3_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_get_nodeEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_get_nodeEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_get_nodeEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_get_nodeEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_get_nodeEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_get_nodeEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	mov	r1, #1
	mov	r2, #0
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8allocateEjPKv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp232:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_get_nodeEv, .Ltmp232-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_get_nodeEv

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13get_allocatorEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13get_allocatorEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13get_allocatorEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13get_allocatorEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13get_allocatorEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13get_allocatorEv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	mov	r0, r1
	str	r1, [sp]
	bl	_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE21_M_get_Node_allocatorEv
	mov	r1, r0
	mov	r0, r4
	bl	_ZNSaISt4pairIKjS_IjjEEEC1ISt13_Rb_tree_nodeIS2_EEERKSaIT_E
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp233:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13get_allocatorEv, .Ltmp233-_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13get_allocatorEv

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEE9constructEPS4_RKS4_,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEE9constructEPS4_RKS4_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEE9constructEPS4_RKS4_
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEE9constructEPS4_RKS4_,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEE9constructEPS4_RKS4_: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEE9constructEPS4_RKS4_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	ldrne	r1, [sp]
	ldmne	r1, {r2, r3}
	ldrne	r1, [r1, #8]
	stmne	r0, {r2, r3}
	strne	r1, [r0, #8]
	add	sp, sp, #12
	bx	lr
.Ltmp234:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEE9constructEPS4_RKS4_, .Ltmp234-_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEE9constructEPS4_RKS4_

	.section	.text._ZNSaISt4pairIKjS_IjjEEED1Ev,"axG",%progbits,_ZNSaISt4pairIKjS_IjjEEED1Ev,comdat
	.weak	_ZNSaISt4pairIKjS_IjjEEED1Ev
	.align	2
	.type	_ZNSaISt4pairIKjS_IjjEEED1Ev,%function
_ZNSaISt4pairIKjS_IjjEEED1Ev:           @ @_ZNSaISt4pairIKjS_IjjEEED1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSaISt4pairIKjS_IjjEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp235:
	.size	_ZNSaISt4pairIKjS_IjjEEED1Ev, .Ltmp235-_ZNSaISt4pairIKjS_IjjEEED1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	mov	r2, #1
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE10deallocateEPS6_j
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp236:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E, .Ltmp236-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE11_M_put_nodeEPSt13_Rb_tree_nodeIS3_E

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE10deallocateEPS6_j,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE10deallocateEPS6_j,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE10deallocateEPS6_j
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE10deallocateEPS6_j,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE10deallocateEPS6_j: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE10deallocateEPS6_j
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r1, [sp, #8]
	str	r0, [r11, #-4]
	str	r2, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_ZdlPv
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp237:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE10deallocateEPS6_j, .Ltmp237-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE10deallocateEPS6_j

	.section	.text._ZNSaISt4pairIKjS_IjjEEED2Ev,"axG",%progbits,_ZNSaISt4pairIKjS_IjjEEED2Ev,comdat
	.weak	_ZNSaISt4pairIKjS_IjjEEED2Ev
	.align	2
	.type	_ZNSaISt4pairIKjS_IjjEEED2Ev,%function
_ZNSaISt4pairIKjS_IjjEEED2Ev:           @ @_ZNSaISt4pairIKjS_IjjEEED2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp238:
	.size	_ZNSaISt4pairIKjS_IjjEEED2Ev, .Ltmp238-_ZNSaISt4pairIKjS_IjjEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEED2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEED2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEED2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEED2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp239:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEED2Ev, .Ltmp239-_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEED2Ev

	.section	.text._ZNSaISt4pairIKjS_IjjEEEC1ISt13_Rb_tree_nodeIS2_EEERKSaIT_E,"axG",%progbits,_ZNSaISt4pairIKjS_IjjEEEC1ISt13_Rb_tree_nodeIS2_EEERKSaIT_E,comdat
	.weak	_ZNSaISt4pairIKjS_IjjEEEC1ISt13_Rb_tree_nodeIS2_EEERKSaIT_E
	.align	2
	.type	_ZNSaISt4pairIKjS_IjjEEEC1ISt13_Rb_tree_nodeIS2_EEERKSaIT_E,%function
_ZNSaISt4pairIKjS_IjjEEEC1ISt13_Rb_tree_nodeIS2_EEERKSaIT_E: @ @_ZNSaISt4pairIKjS_IjjEEEC1ISt13_Rb_tree_nodeIS2_EEERKSaIT_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZNSaISt4pairIKjS_IjjEEEC2ISt13_Rb_tree_nodeIS2_EEERKSaIT_E
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp240:
	.size	_ZNSaISt4pairIKjS_IjjEEEC1ISt13_Rb_tree_nodeIS2_EEERKSaIT_E, .Ltmp240-_ZNSaISt4pairIKjS_IjjEEEC1ISt13_Rb_tree_nodeIS2_EEERKSaIT_E

	.section	.text._ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE21_M_get_Node_allocatorEv,"axG",%progbits,_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE21_M_get_Node_allocatorEv,comdat
	.weak	_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE21_M_get_Node_allocatorEv
	.align	2
	.type	_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE21_M_get_Node_allocatorEv,%function
_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE21_M_get_Node_allocatorEv: @ @_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE21_M_get_Node_allocatorEv
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp241:
	.size	_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE21_M_get_Node_allocatorEv, .Ltmp241-_ZNKSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE21_M_get_Node_allocatorEv

	.section	.text._ZNSaISt4pairIKjS_IjjEEEC2ISt13_Rb_tree_nodeIS2_EEERKSaIT_E,"axG",%progbits,_ZNSaISt4pairIKjS_IjjEEEC2ISt13_Rb_tree_nodeIS2_EEERKSaIT_E,comdat
	.weak	_ZNSaISt4pairIKjS_IjjEEEC2ISt13_Rb_tree_nodeIS2_EEERKSaIT_E
	.align	2
	.type	_ZNSaISt4pairIKjS_IjjEEEC2ISt13_Rb_tree_nodeIS2_EEERKSaIT_E,%function
_ZNSaISt4pairIKjS_IjjEEEC2ISt13_Rb_tree_nodeIS2_EEERKSaIT_E: @ @_ZNSaISt4pairIKjS_IjjEEEC2ISt13_Rb_tree_nodeIS2_EEERKSaIT_E
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp242:
	.size	_ZNSaISt4pairIKjS_IjjEEEC2ISt13_Rb_tree_nodeIS2_EEERKSaIT_E, .Ltmp242-_ZNSaISt4pairIKjS_IjjEEEC2ISt13_Rb_tree_nodeIS2_EEERKSaIT_E

	.section	.text._ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEEC2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEEC2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEEC2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp243:
	.size	_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEEC2Ev, .Ltmp243-_ZN9__gnu_cxx13new_allocatorISt4pairIKjS1_IjjEEEC2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8allocateEjPKv,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8allocateEjPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8allocateEjPKv
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8allocateEjPKv,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8allocateEjPKv: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8allocateEjPKv
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	ldr	r0, [sp, #8]
	ldr	r4, [sp, #4]
	bl	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8max_sizeEv
	cmp	r4, r0
	bhi	.LBB244_2
@ BB#1:                                 @ %if.end
	ldr	r0, [sp, #4]
	rsb	r0, r0, r0, lsl #3
	lsl	r0, r0, #2
	bl	_Znwj
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.LBB244_2:                              @ %if.then
	bl	_ZSt17__throw_bad_allocv
.Ltmp244:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8allocateEjPKv, .Ltmp244-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8allocateEjPKv

	.section	.text._ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8max_sizeEv,"axG",%progbits,_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8max_sizeEv
	.align	2
	.type	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8max_sizeEv,%function
_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8max_sizeEv: @ @_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8max_sizeEv
@ BB#0:                                 @ %entry
	push	{r0}
	ldr	r0, .LCPI245_0
	add	sp, sp, #4
	bx	lr
	.align	2
@ BB#1:
.LCPI245_0:
	.long	153391689               @ 0x9249249
.Ltmp245:
	.size	_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8max_sizeEv, .Ltmp245-_ZNK9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEE8max_sizeEv

	.section	.text._ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC2ERKS4_RKb,"axG",%progbits,_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC2ERKS4_RKb,comdat
	.weak	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC2ERKS4_RKb
	.align	2
	.type	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC2ERKS4_RKb,%function
_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC2ERKS4_RKb: @ @_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC2ERKS4_RKb
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [r1]
	str	r1, [r0]
	ldr	r1, [sp]
	ldrb	r1, [r1]
	and	r1, r1, #1
	strb	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp246:
	.size	_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC2ERKS4_RKb, .Ltmp246-_ZNSt4pairISt17_Rb_tree_iteratorIS_IKjS_IjjEEEbEC2ERKS4_RKb

	.section	.text._ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC2EPSt13_Rb_tree_nodeIS3_E,"axG",%progbits,_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC2EPSt13_Rb_tree_nodeIS3_E,comdat
	.weak	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC2EPSt13_Rb_tree_nodeIS3_E
	.align	2
	.type	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC2EPSt13_Rb_tree_nodeIS3_E,%function
_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC2EPSt13_Rb_tree_nodeIS3_E: @ @_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC2EPSt13_Rb_tree_nodeIS3_E
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	str	r1, [r0]
	add	sp, sp, #8
	bx	lr
.Ltmp247:
	.size	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC2EPSt13_Rb_tree_nodeIS3_E, .Ltmp247-_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC2EPSt13_Rb_tree_nodeIS3_E

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt13_Rb_tree_nodeIS3_E,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt13_Rb_tree_nodeIS3_E,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt13_Rb_tree_nodeIS3_E
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt13_Rb_tree_nodeIS3_E,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt13_Rb_tree_nodeIS3_E: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt13_Rb_tree_nodeIS3_E
@ BB#0:                                 @ %entry
	push	{r0}
	add	r0, r0, #16
	add	sp, sp, #4
	bx	lr
.Ltmp248:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt13_Rb_tree_nodeIS3_E, .Ltmp248-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_valueEPKSt13_Rb_tree_nodeIS3_E

	.section	.text._ZNSt4pairIjS_IjjEEC2ERKjRKS0_,"axG",%progbits,_ZNSt4pairIjS_IjjEEC2ERKjRKS0_,comdat
	.weak	_ZNSt4pairIjS_IjjEEC2ERKjRKS0_
	.align	2
	.type	_ZNSt4pairIjS_IjjEEC2ERKjRKS0_,%function
_ZNSt4pairIjS_IjjEEC2ERKjRKS0_:         @ @_ZNSt4pairIjS_IjjEEC2ERKjRKS0_
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r0]
	ldr	r0, [sp, #8]
	str	r1, [r0]
	ldr	r1, [sp]
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	str	r1, [r0, #8]
	str	r2, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp249:
	.size	_ZNSt4pairIjS_IjjEEC2ERKjRKS0_, .Ltmp249-_ZNSt4pairIjS_IjjEEC2ERKjRKS0_

	.section	.text._ZNSt4pairIjjEC2IjiEERKS_IT_T0_E,"axG",%progbits,_ZNSt4pairIjjEC2IjiEERKS_IT_T0_E,comdat
	.weak	_ZNSt4pairIjjEC2IjiEERKS_IT_T0_E
	.align	2
	.type	_ZNSt4pairIjjEC2IjiEERKS_IT_T0_E,%function
_ZNSt4pairIjjEC2IjiEERKS_IT_T0_E:       @ @_ZNSt4pairIjjEC2IjiEERKS_IT_T0_E
@ BB#0:                                 @ %entry
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r1, [r1]
	ldr	r0, [sp, #4]
	str	r1, [r0]
	ldr	r1, [sp]
	ldr	r1, [r1, #4]
	str	r1, [r0, #4]
	add	sp, sp, #8
	bx	lr
.Ltmp250:
	.size	_ZNSt4pairIjjEC2IjiEERKS_IT_T0_E, .Ltmp250-_ZNSt4pairIjjEC2IjiEERKS_IT_T0_E

	.section	.text._ZNSt4pairIjiEC1ERKjRKi,"axG",%progbits,_ZNSt4pairIjiEC1ERKjRKi,comdat
	.weak	_ZNSt4pairIjiEC1ERKjRKi
	.align	2
	.type	_ZNSt4pairIjiEC1ERKjRKi,%function
_ZNSt4pairIjiEC1ERKjRKi:                @ @_ZNSt4pairIjiEC1ERKjRKi
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	bl	_ZNSt4pairIjiEC2ERKjRKi
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp251:
	.size	_ZNSt4pairIjiEC1ERKjRKi, .Ltmp251-_ZNSt4pairIjiEC1ERKjRKi

	.section	.text._ZNSt4pairIjiEC2ERKjRKi,"axG",%progbits,_ZNSt4pairIjiEC2ERKjRKi,comdat
	.weak	_ZNSt4pairIjiEC2ERKjRKi
	.align	2
	.type	_ZNSt4pairIjiEC2ERKjRKi,%function
_ZNSt4pairIjiEC2ERKjRKi:                @ @_ZNSt4pairIjiEC2ERKjRKi
@ BB#0:                                 @ %entry
	sub	sp, sp, #12
	str	r1, [sp, #4]
	str	r0, [sp, #8]
	str	r2, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [r0]
	ldr	r0, [sp, #8]
	str	r1, [r0]
	ldr	r1, [sp]
	ldr	r1, [r1]
	str	r1, [r0, #4]
	add	sp, sp, #12
	bx	lr
.Ltmp252:
	.size	_ZNSt4pairIjiEC2ERKjRKi, .Ltmp252-_ZNSt4pairIjiEC2ERKjRKi

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [sp, #4]
	add	r1, r0, #4
	add	r0, sp, #8
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp253:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv, .Ltmp253-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE4findERS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE4findERS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE4findERS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE4findERS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE4findERS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE4findERS1_
@ BB#0:                                 @ %entry
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	ldr	r4, [sp, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_M_beginEv
	mov	r5, r0
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_M_endEv
	ldr	r3, [sp, #16]
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_ESC_RS1_
	str	r0, [sp, #8]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv
	str	r0, [sp]
	add	r0, sp, #8
	mov	r1, sp
	bl	_ZNKSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEeqERKS4_
	cmp	r0, #0
	bne	.LBB254_2
@ BB#1:                                 @ %lor.lhs.false
	ldr	r0, [sp, #8]
	ldr	r5, [sp, #16]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt18_Rb_tree_node_base
	mov	r2, r0
	mov	r0, r4
	mov	r1, r5
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #1
	bne	.LBB254_3
.LBB254_2:                              @ %cond.true
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE3endEv
	b	.LBB254_4
.LBB254_3:                              @ %cond.false
	ldr	r0, [sp, #8]
.LBB254_4:                              @ %cond.end
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	sub	sp, r11, #8
	pop	{r4, r5, r11, lr}
	bx	lr
.Ltmp254:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE4findERS1_, .Ltmp254-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE4findERS1_

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_ESC_RS1_,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_ESC_RS1_,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_ESC_RS1_
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_ESC_RS1_,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_ESC_RS1_: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_ESC_RS1_
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #20
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r4, [sp, #12]
	b	.LBB255_2
.LBB255_1:                              @ %if.then
                                        @   in Loop: Header=BB255_2 Depth=1
	ldr	r0, [sp, #8]
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE7_S_leftEPSt18_Rb_tree_node_base
	str	r0, [sp, #8]
.LBB255_2:                              @ %while.cond
                                        @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	beq	.LBB255_5
@ BB#3:                                 @ %while.body
                                        @   in Loop: Header=BB255_2 Depth=1
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE6_S_keyEPKSt13_Rb_tree_nodeIS3_E
	ldr	r2, [sp]
	mov	r1, r0
	mov	r0, r4
	bl	_ZNKSt4lessIjEclERKjS2_
	cmp	r0, #0
	beq	.LBB255_1
@ BB#4:                                 @ %if.else
                                        @   in Loop: Header=BB255_2 Depth=1
	ldr	r0, [sp, #8]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE8_S_rightEPSt18_Rb_tree_node_base
	str	r0, [sp, #8]
	b	.LBB255_2
.LBB255_5:                              @ %while.end
	ldr	r1, [sp, #4]
	sub	r0, r11, #8
	bl	_ZNSt17_Rb_tree_iteratorISt4pairIKjS0_IjjEEEC1EPSt13_Rb_tree_nodeIS3_E
	ldr	r0, [r11, #-8]
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp255:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_ESC_RS1_, .Ltmp255-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_ESC_RS1_

	.section	.text._ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC2Ev,"axG",%progbits,_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC2Ev,comdat
	.weak	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC2Ev
	.align	2
	.type	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC2Ev,%function
_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC2Ev: @ @_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC1Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp256:
	.size	_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC2Ev, .Ltmp256-_ZNSt3mapIjSt4pairIjjESt4lessIjESaIS0_IKjS1_EEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC1Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC1Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC1Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC1Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC1Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp257:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC1Ev, .Ltmp257-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC2Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC2Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC2Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC2Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC1Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp258:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC2Ev, .Ltmp258-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC1Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC1Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC1Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC1Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC1Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp259:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC1Ev, .Ltmp259-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC2Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC2Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC2Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC2Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC2Ev
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	mov	r4, r0
	str	r4, [sp, #8]
	bl	_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEEC2Ev
	mov	r0, #0
	str	r0, [r4, #4]
	str	r0, [r4, #8]
	str	r0, [r4, #12]
	str	r0, [r4, #16]
	str	r0, [r4, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EE13_M_initializeEv
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp260:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC2Ev, .Ltmp260-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EEC2Ev

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEEC2Ev,"axG",%progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEEC2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEEC2Ev
	.align	2
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEEC2Ev,%function
_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEEC2Ev: @ @_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp261:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEEC2Ev, .Ltmp261-_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EE13_M_initializeEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EE13_M_initializeEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EE13_M_initializeEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EE13_M_initializeEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EE13_M_initializeEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EE13_M_initializeEv
@ BB#0:                                 @ %entry
	push	{r0}
	mov	r1, #0
	str	r1, [r0, #4]!
	str	r1, [r0, #4]
	str	r0, [r0, #8]
	str	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Ltmp262:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EE13_M_initializeEv, .Ltmp262-_ZNSt8_Rb_treeIjSt4pairIKjS0_IjjEESt10_Select1stIS3_ESt4lessIjESaIS3_EE13_Rb_tree_implIS7_Lb0EE13_M_initializeEv

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEED2Ev,"axG",%progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEED2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEED2Ev
	.align	2
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEED2Ev,%function
_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEED2Ev: @ @_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEED2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp263:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEED2Ev, .Ltmp263-_ZNSaISt13_Rb_tree_nodeISt4pairIKjS0_IjjEEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEED2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEED2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEED2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEED2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp264:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEED2Ev, .Ltmp264-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEEC2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEEC2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEEC2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp265:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEEC2Ev, .Ltmp265-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjS2_IjjEEEEC2Ev

	.section	.text._ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC2Ev,"axG",%progbits,_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC2Ev,comdat
	.weak	_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC2Ev
	.align	2
	.type	_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC2Ev,%function
_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC2Ev: @ @_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC1Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp266:
	.size	_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC2Ev, .Ltmp266-_ZNSt3mapIjSt4listI8MLPTupleSaIS1_EESt4lessIjESaISt4pairIKjS3_EEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC1Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC1Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC1Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC1Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC1Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp267:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC1Ev, .Ltmp267-_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC2Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC2Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC2Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC2Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp268:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC2Ev, .Ltmp268-_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp269:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev, .Ltmp269-_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	mov	r4, r0
	str	r4, [sp, #8]
	bl	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEEC2Ev
	mov	r0, #0
	str	r0, [r4, #4]
	str	r0, [r4, #8]
	str	r0, [r4, #12]
	str	r0, [r4, #16]
	str	r0, [r4, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp270:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev, .Ltmp270-_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EEC2Ev

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEEC2Ev,"axG",%progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEEC2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEEC2Ev
	.align	2
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEEC2Ev,%function
_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEEC2Ev: @ @_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp271:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEEC2Ev, .Ltmp271-_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv
@ BB#0:                                 @ %entry
	push	{r0}
	mov	r1, #0
	str	r1, [r0, #4]!
	str	r1, [r0, #4]
	str	r0, [r0, #8]
	str	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Ltmp272:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv, .Ltmp272-_ZNSt8_Rb_treeIjSt4pairIKjSt4listI8MLPTupleSaIS3_EEESt10_Select1stIS6_ESt4lessIjESaIS6_EE13_Rb_tree_implISA_Lb0EE13_M_initializeEv

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEED2Ev,"axG",%progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEED2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEED2Ev
	.align	2
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEED2Ev,%function
_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEED2Ev: @ @_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEED2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp273:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEED2Ev, .Ltmp273-_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS3_EEEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEED2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEED2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEED2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEED2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp274:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEED2Ev, .Ltmp274-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEEC2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEEC2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEEC2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp275:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEEC2Ev, .Ltmp275-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt4listI8MLPTupleSaIS5_EEEEEC2Ev

	.section	.text._ZNSt4listISt4pairIjjESaIS1_EEC2Ev,"axG",%progbits,_ZNSt4listISt4pairIjjESaIS1_EEC2Ev,comdat
	.weak	_ZNSt4listISt4pairIjjESaIS1_EEC2Ev
	.align	2
	.type	_ZNSt4listISt4pairIjjESaIS1_EEC2Ev,%function
_ZNSt4listISt4pairIjjESaIS1_EEC2Ev:     @ @_ZNSt4listISt4pairIjjESaIS1_EEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt10_List_baseISt4pairIjjESaIS1_EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp276:
	.size	_ZNSt4listISt4pairIjjESaIS1_EEC2Ev, .Ltmp276-_ZNSt4listISt4pairIjjESaIS1_EEC2Ev

	.section	.text._ZNSt10_List_baseISt4pairIjjESaIS1_EEC2Ev,"axG",%progbits,_ZNSt10_List_baseISt4pairIjjESaIS1_EEC2Ev,comdat
	.weak	_ZNSt10_List_baseISt4pairIjjESaIS1_EEC2Ev
	.align	2
	.type	_ZNSt10_List_baseISt4pairIjjESaIS1_EEC2Ev,%function
_ZNSt10_List_baseISt4pairIjjESaIS1_EEC2Ev: @ @_ZNSt10_List_baseISt4pairIjjESaIS1_EEC2Ev
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	mov	r4, r0
	str	r4, [sp, #8]
	bl	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC1Ev
	mov	r0, r4
	bl	_ZNSt10_List_baseISt4pairIjjESaIS1_EE7_M_initEv
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp277:
	.size	_ZNSt10_List_baseISt4pairIjjESaIS1_EEC2Ev, .Ltmp277-_ZNSt10_List_baseISt4pairIjjESaIS1_EEC2Ev

	.section	.text._ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC1Ev,"axG",%progbits,_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC1Ev,comdat
	.weak	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC1Ev
	.align	2
	.type	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC1Ev,%function
_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC1Ev: @ @_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp278:
	.size	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC1Ev, .Ltmp278-_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC1Ev

	.section	.text._ZNSt10_List_baseISt4pairIjjESaIS1_EE7_M_initEv,"axG",%progbits,_ZNSt10_List_baseISt4pairIjjESaIS1_EE7_M_initEv,comdat
	.weak	_ZNSt10_List_baseISt4pairIjjESaIS1_EE7_M_initEv
	.align	2
	.type	_ZNSt10_List_baseISt4pairIjjESaIS1_EE7_M_initEv,%function
_ZNSt10_List_baseISt4pairIjjESaIS1_EE7_M_initEv: @ @_ZNSt10_List_baseISt4pairIjjESaIS1_EE7_M_initEv
@ BB#0:                                 @ %entry
	push	{r0}
	str	r0, [r0]
	str	r0, [r0, #4]
	add	sp, sp, #4
	bx	lr
.Ltmp279:
	.size	_ZNSt10_List_baseISt4pairIjjESaIS1_EE7_M_initEv, .Ltmp279-_ZNSt10_List_baseISt4pairIjjESaIS1_EE7_M_initEv

	.section	.text._ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD1Ev,"axG",%progbits,_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD1Ev,comdat
	.weak	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD1Ev
	.align	2
	.type	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD1Ev,%function
_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD1Ev: @ @_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp280:
	.size	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD1Ev, .Ltmp280-_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD1Ev

	.section	.text._ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD2Ev,"axG",%progbits,_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD2Ev,comdat
	.weak	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD2Ev
	.align	2
	.type	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD2Ev,%function
_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD2Ev: @ @_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSaISt10_List_nodeISt4pairIjjEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp281:
	.size	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD2Ev, .Ltmp281-_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implD2Ev

	.section	.text._ZNSaISt10_List_nodeISt4pairIjjEEED2Ev,"axG",%progbits,_ZNSaISt10_List_nodeISt4pairIjjEEED2Ev,comdat
	.weak	_ZNSaISt10_List_nodeISt4pairIjjEEED2Ev
	.align	2
	.type	_ZNSaISt10_List_nodeISt4pairIjjEEED2Ev,%function
_ZNSaISt10_List_nodeISt4pairIjjEEED2Ev: @ @_ZNSaISt10_List_nodeISt4pairIjjEEED2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp282:
	.size	_ZNSaISt10_List_nodeISt4pairIjjEEED2Ev, .Ltmp282-_ZNSaISt10_List_nodeISt4pairIjjEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEED2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEED2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEED2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEED2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp283:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEED2Ev, .Ltmp283-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEED2Ev

	.section	.text._ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC2Ev,"axG",%progbits,_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC2Ev,comdat
	.weak	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC2Ev
	.align	2
	.type	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC2Ev,%function
_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC2Ev: @ @_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSaISt10_List_nodeISt4pairIjjEEEC2Ev
	mov	r1, #0
	str	r1, [r0]
	str	r1, [r0, #4]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp284:
	.size	_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC2Ev, .Ltmp284-_ZNSt10_List_baseISt4pairIjjESaIS1_EE10_List_implC2Ev

	.section	.text._ZNSaISt10_List_nodeISt4pairIjjEEEC2Ev,"axG",%progbits,_ZNSaISt10_List_nodeISt4pairIjjEEEC2Ev,comdat
	.weak	_ZNSaISt10_List_nodeISt4pairIjjEEEC2Ev
	.align	2
	.type	_ZNSaISt10_List_nodeISt4pairIjjEEEC2Ev,%function
_ZNSaISt10_List_nodeISt4pairIjjEEEC2Ev: @ @_ZNSaISt10_List_nodeISt4pairIjjEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp285:
	.size	_ZNSaISt10_List_nodeISt4pairIjjEEEC2Ev, .Ltmp285-_ZNSaISt10_List_nodeISt4pairIjjEEEC2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEEC2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEEC2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEEC2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp286:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEEC2Ev, .Ltmp286-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeISt4pairIjjEEEC2Ev

	.section	.text._ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC2Ev,"axG",%progbits,_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC2Ev,comdat
	.weak	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC2Ev
	.align	2
	.type	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC2Ev,%function
_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC2Ev: @ @_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC1Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp287:
	.size	_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC2Ev, .Ltmp287-_ZNSt3mapIjSt14_List_iteratorISt4pairIjjEESt4lessIjESaIS1_IKjS3_EEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC1Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC1Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC1Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC1Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC1Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp288:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC1Ev, .Ltmp288-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC2Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC2Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC2Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC2Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC1Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp289:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC2Ev, .Ltmp289-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC1Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC1Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC1Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC1Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC1Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp290:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC1Ev, .Ltmp290-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC2Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC2Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC2Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC2Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC2Ev
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	mov	r4, r0
	str	r4, [sp, #8]
	bl	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEEC2Ev
	mov	r0, #0
	str	r0, [r4, #4]
	str	r0, [r4, #8]
	str	r0, [r4, #12]
	str	r0, [r4, #16]
	str	r0, [r4, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EE13_M_initializeEv
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp291:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC2Ev, .Ltmp291-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EEC2Ev

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEEC2Ev,"axG",%progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEEC2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEEC2Ev
	.align	2
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEEC2Ev,%function
_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEEC2Ev: @ @_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp292:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEEC2Ev, .Ltmp292-_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EE13_M_initializeEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EE13_M_initializeEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EE13_M_initializeEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EE13_M_initializeEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EE13_M_initializeEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EE13_M_initializeEv
@ BB#0:                                 @ %entry
	push	{r0}
	mov	r1, #0
	str	r1, [r0, #4]!
	str	r1, [r0, #4]
	str	r0, [r0, #8]
	str	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Ltmp293:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EE13_M_initializeEv, .Ltmp293-_ZNSt8_Rb_treeIjSt4pairIKjSt14_List_iteratorIS0_IjjEEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb0EE13_M_initializeEv

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEED2Ev,"axG",%progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEED2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEED2Ev
	.align	2
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEED2Ev,%function
_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEED2Ev: @ @_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEED2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp294:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEED2Ev, .Ltmp294-_ZNSaISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS0_IjjEEEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEED2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEED2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEED2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEED2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp295:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEED2Ev, .Ltmp295-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEEC2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEEC2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEEC2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp296:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEEC2Ev, .Ltmp296-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjSt14_List_iteratorIS2_IjjEEEEEC2Ev

	.section	.text._ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2Ev,"axG",%progbits,_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2Ev,comdat
	.weak	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2Ev
	.align	2
	.type	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2Ev,%function
_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2Ev: @ @_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC1Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp297:
	.size	_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2Ev, .Ltmp297-_ZNSt3mapIjjSt4lessIjESaISt4pairIKjjEEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC1Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC1Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC1Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC1Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC1Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp298:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC1Ev, .Ltmp298-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC2Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC2Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC2Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC2Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC1Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp299:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC2Ev, .Ltmp299-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC1Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC1Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC1Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC1Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC1Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC1Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp300:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC1Ev, .Ltmp300-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC1Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev
@ BB#0:                                 @ %entry
	push	{r4, r11, lr}
	add	r11, sp, #4
	sub	sp, sp, #12
	mov	r4, r0
	str	r4, [sp, #8]
	bl	_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev
	mov	r0, #0
	str	r0, [r4, #4]
	str	r0, [r4, #8]
	str	r0, [r4, #12]
	str	r0, [r4, #16]
	str	r0, [r4, #20]
	mov	r0, r4
	bl	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv
	mov	r0, r4
	sub	sp, r11, #4
	pop	{r4, r11, lr}
	bx	lr
.Ltmp301:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev, .Ltmp301-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EEC2Ev

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev,"axG",%progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev
	.align	2
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev,%function
_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev: @ @_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp302:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev, .Ltmp302-_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev

	.section	.text._ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv,"axG",%progbits,_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv,comdat
	.weak	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv
	.align	2
	.type	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv,%function
_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv: @ @_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv
@ BB#0:                                 @ %entry
	push	{r0}
	mov	r1, #0
	str	r1, [r0, #4]!
	str	r1, [r0, #4]
	str	r0, [r0, #8]
	str	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Ltmp303:
	.size	_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv, .Ltmp303-_ZNSt8_Rb_treeIjSt4pairIKjjESt10_Select1stIS2_ESt4lessIjESaIS2_EE13_Rb_tree_implIS6_Lb0EE13_M_initializeEv

	.section	.text._ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev,"axG",%progbits,_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev,comdat
	.weak	_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev
	.align	2
	.type	_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev,%function
_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev: @ @_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	bl	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Ltmp304:
	.size	_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev, .Ltmp304-_ZNSaISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp305:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev, .Ltmp305-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEED2Ev

	.section	.text._ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev,"axG",%progbits,_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev
	.align	2
	.type	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev,%function
_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev: @ @_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev
@ BB#0:                                 @ %entry
	push	{r0}
	add	sp, sp, #4
	bx	lr
.Ltmp306:
	.size	_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev, .Ltmp306-_ZN9__gnu_cxx13new_allocatorISt13_Rb_tree_nodeISt4pairIKjjEEEC2Ev

	.section	.text.startup,"ax",%progbits
	.align	2
	.type	_GLOBAL__I_a,%function
_GLOBAL__I_a:                           @ @_GLOBAL__I_a
@ BB#0:                                 @ %entry
	push	{r11, lr}
	mov	r11, sp
	bl	__cxx_global_var_init
	bl	__cxx_global_var_init1
	bl	__cxx_global_var_init2
	bl	__cxx_global_var_init3
	bl	__cxx_global_var_init4
	bl	__cxx_global_var_init5
	bl	__cxx_global_var_init6
	bl	__cxx_global_var_init7
	bl	__cxx_global_var_init8
	bl	__cxx_global_var_init9
	bl	__cxx_global_var_init10
	bl	__cxx_global_var_init11
	bl	__cxx_global_var_init12
	bl	__cxx_global_var_init13
	bl	__cxx_global_var_init14
	pop	{r11, lr}
	bx	lr
.Ltmp307:
	.size	_GLOBAL__I_a, .Ltmp307-_GLOBAL__I_a

	.type	bb_br_mispr_map,%object @ @bb_br_mispr_map
	.bss
	.globl	bb_br_mispr_map
	.align	2
bb_br_mispr_map:
	.long	0
	.size	bb_br_mispr_map, 4

	.type	mcache1Size,%object     @ @mcache1Size
	.globl	mcache1Size
	.align	2
mcache1Size:
	.long	0                       @ 0x0
	.size	mcache1Size, 4

	.type	mcache2Size,%object     @ @mcache2Size
	.globl	mcache2Size
	.align	2
mcache2Size:
	.long	0                       @ 0x0
	.size	mcache2Size, 4

	.type	l1miss,%object          @ @l1miss
	.globl	l1miss
	.align	2
l1miss:
	.long	0                       @ 0x0
	.size	l1miss, 4

	.type	l2miss,%object          @ @l2miss
	.globl	l2miss
	.align	2
l2miss:
	.long	0                       @ 0x0
	.size	l2miss, 4

	.type	_ZN6dcache10mcache1MapE,%object @ @_ZN6dcache10mcache1MapE
	.globl	_ZN6dcache10mcache1MapE
	.align	2
_ZN6dcache10mcache1MapE:
	.long	0
	.size	_ZN6dcache10mcache1MapE, 4

	.type	_ZN6dcache10mcache2MapE,%object @ @_ZN6dcache10mcache2MapE
	.globl	_ZN6dcache10mcache2MapE
	.align	2
_ZN6dcache10mcache2MapE:
	.long	0
	.size	_ZN6dcache10mcache2MapE, 4

	.type	_ZN6dcache11mcache1ListE,%object @ @_ZN6dcache11mcache1ListE
	.globl	_ZN6dcache11mcache1ListE
	.align	2
_ZN6dcache11mcache1ListE:
	.long	0
	.size	_ZN6dcache11mcache1ListE, 4

	.type	_ZN6dcache11mcache2ListE,%object @ @_ZN6dcache11mcache2ListE
	.globl	_ZN6dcache11mcache2ListE
	.align	2
_ZN6dcache11mcache2ListE:
	.long	0
	.size	_ZN6dcache11mcache2ListE, 4

	.type	_ZN6dcache10L1miss_mapE,%object @ @_ZN6dcache10L1miss_mapE
	.globl	_ZN6dcache10L1miss_mapE
	.align	2
_ZN6dcache10L1miss_mapE:
	.long	0
	.size	_ZN6dcache10L1miss_mapE, 4

	.type	_ZN6dcache10L2miss_mapE,%object @ @_ZN6dcache10L2miss_mapE
	.globl	_ZN6dcache10L2miss_mapE
	.align	2
_ZN6dcache10L2miss_mapE:
	.long	0
	.size	_ZN6dcache10L2miss_mapE, 4

	.type	_ZN6dcache10mlp_bufferE,%object @ @_ZN6dcache10mlp_bufferE
	.globl	_ZN6dcache10mlp_bufferE
	.align	2
_ZN6dcache10mlp_bufferE:
	.long	0
	.size	_ZN6dcache10mlp_bufferE, 4

	.type	_ZN6dcache12last_seq_numE,%object @ @_ZN6dcache12last_seq_numE
	.globl	_ZN6dcache12last_seq_numE
	.align	2
_ZN6dcache12last_seq_numE:
	.long	0                       @ 0x0
	.size	_ZN6dcache12last_seq_numE, 4

	.type	_ZN6icache10mcache1MapE,%object @ @_ZN6icache10mcache1MapE
	.globl	_ZN6icache10mcache1MapE
	.align	2
_ZN6icache10mcache1MapE:
	.long	0
	.size	_ZN6icache10mcache1MapE, 4

	.type	_ZN6icache10mcache2MapE,%object @ @_ZN6icache10mcache2MapE
	.globl	_ZN6icache10mcache2MapE
	.align	2
_ZN6icache10mcache2MapE:
	.long	0
	.size	_ZN6icache10mcache2MapE, 4

	.type	_ZN6icache11mcache1ListE,%object @ @_ZN6icache11mcache1ListE
	.globl	_ZN6icache11mcache1ListE
	.align	2
_ZN6icache11mcache1ListE:
	.long	0
	.size	_ZN6icache11mcache1ListE, 4

	.type	_ZN6icache11mcache2ListE,%object @ @_ZN6icache11mcache2ListE
	.globl	_ZN6icache11mcache2ListE
	.align	2
_ZN6icache11mcache2ListE:
	.long	0
	.size	_ZN6icache11mcache2ListE, 4

	.type	_ZN6icache10L1miss_mapE,%object @ @_ZN6icache10L1miss_mapE
	.globl	_ZN6icache10L1miss_mapE
	.align	2
_ZN6icache10L1miss_mapE:
	.long	0
	.size	_ZN6icache10L1miss_mapE, 4

	.type	_ZN6icache10L2miss_mapE,%object @ @_ZN6icache10L2miss_mapE
	.globl	_ZN6icache10L2miss_mapE
	.align	2
_ZN6icache10L2miss_mapE:
	.long	0
	.size	_ZN6icache10L2miss_mapE, 4

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Incorrect behavior in the branch predictor"
	.size	.L.str, 43

	.section	.init_array,"aw",%init_array
	.align	2
	.long	_GLOBAL__I_a(target1)
	.type	_MergedGlobals,%object  @ @_MergedGlobals
	.local	_MergedGlobals
	.comm	_MergedGlobals,32,16

