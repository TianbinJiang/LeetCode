	.data	
	.comm	u,76
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$1,u+4
	movl	$10,u+8
	jmp	f1
p23:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+60
	movl	12(%ebp),%eax
	movl	%eax,u+56
	movl	$9,n
	movl	u+56,%eax
	movl	%eax,u+64
	incl	n
	movl	u+60,%eax
	movl	%eax,u+56
	incl	n
	movl	u+64,%eax
	movl	%eax,u+60
	leave	
	ret	
p64:	pushl	%ebp
	movl	%esp, %ebp	
	movl	8(%ebp),%eax
	movl	%eax,u+68
	movl	$15,n
	pushl	u+0
	pushl	u+68
	pushl	$10
	call	pttrap8
	addl	$12,%esp
	incl	n
	pushl	u+0
	call	pttrap6
	addl	$4,%esp
	leave	
	ret	
f1:	leave	
	ret	
