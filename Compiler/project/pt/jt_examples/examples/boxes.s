	.data	
	.comm	u,3104
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$1,u+0
	movl	$2,u+4
	movl	$10,n
	pushl	u+4
	.data	
s22:	.asciz	"enter box width and height: "
	.text	
	lea	s22,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+3084,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	pushl	u+0
	lea	u+3080,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	incl	n
	pushl	u+4
	.data	
s93:	.asciz	"enter number of boxes across and down: "
	.text	
	lea	s93,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	incl	n
	pushl	u+0
	lea	u+3092,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	pushl	u+0
	lea	u+3088,%eax
	pushl	%eax
	call	pttrap10
	addl	$8,%esp
	movl	$16,n
	incl	u+3084
	incl	n
	incl	u+3080
	movl	$20,n
	.data	
s196:	.asciz	""
	.text	
	lea	s196,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2056,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	.data	
s202:	.asciz	""
	.text	
	lea	s202,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	.data	
s208:	.asciz	""
	.text	
	lea	s208,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	movl	$0,u+3100
b1:	movl	$22,n
	movl	u+3084,%eax
	imull	u+3092,%eax
	cmpl	%eax,u+3100
	jg	f2
	movl	$24,n
	movl	u+3084,%eax
	movl	%eax,%esi
	movl	u+3100,%eax
	movl	%eax,%edi
	pushl	%eax
	pushl	%edx
	movl	%edi,%edx
	movl	%edx,%eax
	sarl	$31,	%edx
	idivl	%esi
	movl	%edx,%esi
	popl	%edx
	popl	%eax
	movl	%esi,%eax
	cmpl	$0,%eax
	jne	f3
	incl	n
	.data	
s261:	.asciz	" "
	.text	
	lea	s261,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2056,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2056,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s274:	.asciz	"|"
	.text	
	lea	s274,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s287:	.asciz	"|"
	.text	
	lea	s287,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	jmp	f4
f3:	movl	$28,n
	incl	n
	.data	
s304:	.asciz	"_"
	.text	
	lea	s304,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2056,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+2056,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s317:	.asciz	" "
	.text	
	lea	s317,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+1032,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	incl	n
	.data	
s330:	.asciz	"_"
	.text	
	lea	s330,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8,%eax
	pushl	%eax
	call	pttrap103
	addl	$8,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	movl	%eax,%ebx
	pushl	%ebx
	lea	u+8,%eax
	pushl	%eax
	call	pttrap101
	addl	$8,%esp
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
f4:	movl	$33,n
	incl	u+3100
	jmp	b1
f2:	movl	$37,n
	pushl	u+4
	lea	u+2056,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	movl	$39,n
	movl	$1,u+3100
b5:	movl	$40,n
	movl	u+3088,%eax
	cmpl	%eax,u+3100
	jg	f6
	movl	$42,n
	movl	$1,u+3096
b7:	movl	$43,n
	movl	u+3080,%eax
	decl	%eax
	cmpl	u+3096,%eax
	jle	f8
	movl	$45,n
	pushl	u+4
	lea	u+1032,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	incl	u+3096
	jmp	b7
f8:	movl	$49,n
	pushl	u+4
	lea	u+8,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+4
	call	pttrap6
	addl	$4,%esp
	incl	n
	incl	u+3100
	jmp	b5
f6:	movl	$52,n
	call	pttrap0
	leave	
	ret	
