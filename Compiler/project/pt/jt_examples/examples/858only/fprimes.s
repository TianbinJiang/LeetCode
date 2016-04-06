	.data	
	.comm	u,140
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$1,u+4
	movl	$100,u+8
	jmp	f1
p23:	pushl	%ebp
	movl	%esp, %ebp	
	movb	8(%ebp),%al
	movb	%al,u+116
	movl	12(%ebp),%eax
	movl	%eax,u+112
	movl	$14,n
	movl	u+112,%eax
	cmpl	$100,%eax
	jle	f2
	cmpl	$1,%eax
	jge	f3
	pushl	n
	call	pttrap13
f3:f2:	decl	%eax
	lea	u+12,%ebx
	addl	%ebx,%eax
	movb	u+116,%bl
	movb	%bl,(%eax)
	leave	
	ret	
p51:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+120
	movl	u+120,%eax
	cmpl	$100,%eax
	jle	f4
	cmpl	$1,%eax
	jge	f5
	pushl	n
	call	pttrap13
f5:f4:	decl	%eax
	lea	u+12,%ebx
	addl	%ebx,%eax
	movb	(%eax),%al
	movb	%al,%al
	leave	
	ret	
f1:	movl	$23,n
	movl	$1,u+124
b6:	movl	$24,n
	cmpl	$100,u+124
	jg	f7
	movl	$26,n
	movl	u+124,%eax
	cmpl	$100,%eax
	jle	f8
	cmpl	$1,%eax
	jge	f9
	pushl	n
	call	pttrap13
f9:f8:	decl	%eax
	lea	u+12,%ebx
	addl	%ebx,%eax
	movb	$1,(%eax)
	incl	n
	incl	u+124
	jmp	b6
f7:	movl	$36,n
	movl	$2,u+136
	incl	n
	movl	$2,u+132
b10:	movl	$39,n
	cmpl	$50,u+132
	jg	f11
	movl	$43,n
	movl	u+132,%eax
	addl	u+132,%eax
	movl	%eax,u+136
b12:	movl	$44,n
	cmpl	$100,u+136
	jg	f13
	movl	$46,n
	pushl	u+136
	movb	$0,%al
	pushl	%eax
	call	p23
	addl	$8,%esp
	movl	$46,n
	incl	n
	movl	u+132,%eax
	addl	%eax,u+136
	jmp	b12
f13:	movl	$51,n
	movl	u+132,%eax
	incl	%eax
	movl	%eax,u+128
b14:	movl	$52,n
	cmpl	$100,u+128
	jg	f15
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+128
	call	p51
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$53,n
	cmpl	$0,%eax
	jne	f16
	incl	n
	incl	u+128
	jmp	b14
f16:f15:	movl	$56,n
	movl	u+128,%eax
	movl	%eax,u+132
	jmp	b10
f11:	movl	$60,n
	pushl	u+0
	.data	
s278:	.asciz	"The primes up to "
	.text	
	lea	s278,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	pushl	$100
	pushl	$1
	call	pttrap8
	addl	$12,%esp
	pushl	u+0
	.data	
s321:	.asciz	" are:"
	.text	
	lea	s321,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	movl	$2,u+128
b17:	movl	$62,n
	cmpl	$100,u+128
	jg	f18
	movl	$64,n
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	u+128
	call	p51
	addl	$4,%esp
	movl	%eax,%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	movl	%esi,%eax
	movl	$64,n
	cmpl	$0,%eax
	je	f19
	incl	n
	pushl	u+0
	pushl	u+128
	pushl	$5
	call	pttrap8
	addl	$12,%esp
f19:	movl	$65,n
	incl	n
	incl	u+128
	jmp	b17
f18:	movl	$68,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	call	pttrap0
	leave	
	ret	
