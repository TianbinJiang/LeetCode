	.data	
	.comm	u,12
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$4,n
	movl	$1,u+4
	incl	n
	jmp	f1
v25:	movl	$6,n
	movl	$8,n
	movl	$2,%eax
	addl	%eax,u+8
	incl	n
	pushl	u+0
	.data	
s47:	.asciz	"I am in case 1, 2, 3"
	.text	
	lea	s47,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	jmp	m19
v78:	movl	$10,n
	movl	$12,n
	incl	u+8
	incl	n
	pushl	u+0
	.data	
s100:	.asciz	"I am in case 4"
	.text	
	lea	s100,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	jmp	m19
a19:b2:	movl	$16,n
	pushl	n
	call	pttrap14
f1:	movl	u+4,%eax
	decl	%eax
	cmpl	$3,%eax
	ja	b2
	shl	$2,%eax
	movl	c19(%eax),%eax
	jmp	*%eax
	.data	
c19:	.long	v25
	.long	v25
	.long	v25
	.long	v78
	.text	
m19:	movl	$16,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$18,n
	movl	$2,u+4
	incl	n
	cmpl	$1,u+4
	jne	f3
	incl	n
	pushl	u+0
	.data	
s170:	.asciz	"a equals to 1"
	.text	
	lea	s170,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	jmp	f4
f3:	movl	$21,n
	cmpl	$2,u+4
	jne	f5
	incl	n
	pushl	u+0
	.data	
s213:	.asciz	"a equals to 2"
	.text	
	lea	s213,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	jmp	f6
f5:	movl	$24,n
	pushl	u+0
	.data	
s245:	.asciz	"a neither equals to 1 or 2"
	.text	
	lea	s245,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
f6:f4:	movl	$26,n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	movl	$28,n
	cmpl	$1,u+4
	je	f7
	incl	n
	pushl	u+0
	.data	
s310:	.asciz	"a doesn't equal to 1"
	.text	
	lea	s310,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	jmp	f8
f7:	movl	$31,n
	pushl	u+0
	.data	
s349:	.asciz	"a equals to 1"
	.text	
	lea	s349,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
f8:	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	incl	n
	call	pttrap0
	leave	
	ret	
