	.data	
	.comm	u,8
n:	.long	0
	.text	
	.globl	ptmain
ptmain:	pushl	%ebp
	movl	%esp, %ebp	
	movl	$2,u+0
	movl	$3,n
	movl	$10,u+4
	incl	n
	pushl	u+0
	.data	
s25:	.asciz	"a value is :"
	.text	
	lea	s25,%eax
	pushl	%eax
	pushl	$1
	call	pttrap108
	addl	$12,%esp
	pushl	u+0
	pushl	u+4
	pushl	$10
	call	pttrap8
	addl	$12,%esp
	incl	n
	call	pttrap0
	leave	
	ret	
