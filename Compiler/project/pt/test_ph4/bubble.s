	.data	
	.comm	u,162
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$1,u+4
	movl	$25,u+8
	jmp	f1
p23:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+132
	movl	12(%ebp),%eax
	movl	%eax,u+128
	movl	16(%ebp),%eax
	movl	%eax,u+124
	movl	$14,n
	movl	u+124,%eax
	movl	%eax,u+112
	incl	n
	movl	u+132,%eax
	movl	u+124,%ebx
	cmpl	$25,%ebx
	jle	f2
	cmpl	$1,%ebx
	jge	f3
	pushl	n
	call	pttrap13
f3:f2:	decl	%ebx
	shl	$2,%ebx
	lea	u+12,%ecx
	addl	%ecx,%ebx
	movl	u+128,%ecx
	cmpl	$25,%ecx
	jle	f4
	cmpl	$1,%ecx
	jge	f5
	pushl	n
	call	pttrap13
f5:f4:	decl	%ecx
	shl	$2,%ecx
	lea	u+12,%edx
	addl	%edx,%ecx
	movl	(%ebx),%ebx
	cmpl	%ebx,(%ecx)
	jle	f6
	movb	$1,%bl
	jmp	f7
f6:	movb	$0,%bl
f7:	movb	%bl,(%eax)
	leave	
	ret	
p75:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+140
	movl	12(%ebp),%eax
	movl	%eax,u+136
	movl	$21,n
	movl	u+140,%eax
	movl	%eax,u+112
	incl	n
	movl	u+136,%eax
	cmpl	$25,%eax
	jle	f8
	cmpl	$1,%eax
	jge	f9
	pushl	n
	call	pttrap13
f9:f8:	decl	%eax
	shl	$2,%eax
	lea	u+12,%ebx
	addl	%ebx,%eax
	movl	(%eax),%eax
	movl	%eax,u+144
	incl	n
	movl	u+136,%eax
	cmpl	$25,%eax
	jle	f10
	cmpl	$1,%eax
	jge	f11
	pushl	n
	call	pttrap13
f11:f10:	decl	%eax
	shl	$2,%eax
	lea	u+12,%ebx
	addl	%ebx,%eax
	movl	u+140,%ebx
	cmpl	$25,%ebx
	jle	f12
	cmpl	$1,%ebx
	jge	f13
	pushl	n
	call	pttrap13
f13:f12:	decl	%ebx
	shl	$2,%ebx
	lea	u+12,%ecx
	addl	%ecx,%ebx
	movl	(%ebx),%ebx
	movl	%ebx,(%eax)
	incl	n
	movl	u+140,%eax
	cmpl	$25,%eax
	jle	f14
	cmpl	$1,%eax
	jge	f15
	pushl	n
	call	pttrap13
f15:f14:	decl	%eax
	shl	$2,%eax
	lea	u+12,%ebx
	addl	%ebx,%eax
	movl	u+144,%ebx
	movl	%ebx,(%eax)
	leave	
	ret	
p147:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$30,n
	movl	$1,u+148
b16:	movl	$31,n
	incl	n
	pushl	u+0
	movl	u+148,%eax
	cmpl	$25,%eax
	jle	f17
	cmpl	$1,%eax
	jge	f18
	pushl	n
	call	pttrap13
f18:f17:	decl	%eax
	shl	$2,%eax
	lea	u+12,%ebx
	addl	%ebx,%eax
	pushl	(%eax)
	pushl	$4
	call	pttrap8
	addl	$12,%esp
	incl	n
	incl	u+148
	cmpl	$25,u+148
	jg	f19
	jmp	b16
f19:	movl	$36,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	leave	
	ret	
f1:	leave	
	ret	
